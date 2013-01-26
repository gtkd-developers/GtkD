/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module utils.GtkDClass;

//debug = getBlock;
//debug = getUntil;
//debug = Funct;
//debug = stringToGtkD;
//debug = tokenToGtkD;
//debug = endFunction;
//debug = defines;
//debug = functName;
//debug = noPrefixes;
//debug = functionType;
//debug = declaration;
//debug = structs;
//debug = enums;
//debug = enumPrefix;
//debug = unions;
//debug = parmType;
//debug = parmName;
//debug = enumToGtkD;
//debug = getParent;
//debug = getSignal;
//debug = signalFunction;
//debug = stockItems;
//debug = gTypes;
//debug = implements;
//debug = getMember;

//version = noGtkBody;

/**
 * Creates a GtkD class
 */

//Moved here because of dsss:
private import utils.HtmlStrip;
private import utils.WrapperIF;
private import utils.IndentedStringBuilder;
private import utils.convparms;
private import utils.funct;

private import std.ascii;
private import std.path;
private import std.stdio;
private import std.array;
private import std.string;
private import std.conv;

public class GtkDClass
{
	private WrapperIF wrapper;
	private string inAPI;
	private string[] inLines;
	int currLine;

	private int status = 0;
	private int countBlock = 0;

	ConvParms* convParms;

	string iFaceChar = "";

	private string parentName;				/// gtk parent struct
	private string gtkDParentName;			/// gtkD parent name
	private string gtkDParentNamePrefix;	/// gtkD parent name package

	private string[] externalDeclarations;			/// the external definition to pass to  the wrapper

	private string[] collectedAliases;	/// public, module level type aliases
	private string[] collectedEnums;	/// public, module level definitions of enums
	private string[] stockEnums;		/// special enums for the SotckID
	private string[] gTypes;			/// special enums for G_TYPE_*
	private string[] stockChars;		/// the string value for the stockIDs
	private string[] collectedStructs;	/// public, module level definitions of structs
	private string[] collectedTypes;	/// public, module level definitions of other types
	private string[] collectedFuncts;	/// public, module level definitions of functions
	private string[] collectedUnions;	/// public, module level definitions of unions
	private string[] collectedConstants;/// public, module level constants


	private string gtkDText;

	private string[] properties;
	private string[] styleProperties;
	private string[] signals;
	private string[] description;
	private IndentedStringBuilder indenter;

	string[] members;

	int[string] functionSignatures;
	int[string] gtkStructs;


	private bool needSignalImports;

	private string tabs;	/// used for simple indentation

	public this (WrapperIF wrapper )
	{
		this.wrapper = wrapper;
		indenter = new IndentedStringBuilder();
	}

	public string[] getExternalDeclarations()
	{
		return externalDeclarations;
	}

	public string[] getAliases()
	{
		return collectedAliases;
	}

	public string[] getConstants()
	{
		return collectedConstants;
	}

	public string[] getEnums()
	{
		return collectedEnums;
	}
	public string[] getStockEnums()
	{
		return stockEnums;
	}
	public string[] getStockChars()
	{
		return stockChars;
	}

	public string[] getGTypes()
	{
		return gTypes;
	}

	public string[] getStructs()
	{
		return collectedStructs;
	}

	public string[] getTypes()
	{
		return collectedTypes;
	}

	public string[] getFuncts()
	{
		return collectedFuncts;
	}

	public string[] getUnions()
	{
		return collectedUnions;
	}

	public int getError()
	{
		return status;
	}

	private int[string] getCleanSigns()
	{
		int[string] cleanSignature;
		return cleanSignature;
	}

	/** Construct the wrapped class according to all the collected
	 *  information.
	 */
	public void openGtkDClass(string inAPI, ConvParms* convParms)
	{
		//writefln("collectStructs %s", std.string.strip(inLines[currLine]));
		this.inAPI = inAPI;
		if ( convParms.isInterface ) iFaceChar = ";";
		else iFaceChar = "";
		HtmlStrip stripper = new HtmlStrip();
		inLines = std.string.splitLines(stripper.strip(inAPI));
		//writefln("new API\n%s",inAPI);

		functionSignatures = getCleanSigns();
		gtkStructs = getCleanSigns();

		this.convParms = convParms;

		collectedAliases.length = 0;
		collectedEnums.length = 0;
		stockEnums.length = 0;
		stockChars.length = 0;
		gTypes.length = 0;
		collectedStructs.length = 0;
		collectedUnions.length = 0;
		collectedTypes.length = 0;
		collectedFuncts.length = 0;
		collectedConstants.length = 0;

		needSignalImports = true;

		string privPub = ( convParms.templ.length > 0 ) ? "public" : "private";

		externalDeclarations ~= "";
		externalDeclarations ~= "// " ~ convParms.outPack ~ '.' ~ convParms.clss;
		externalDeclarations ~= "";

		gtkDText = wrapper.getLicense();

		gtkDText ~= convParms.toString();

		gtkDText ~= "module "~convParms.outPack~".";
		if ( convParms.clss.length > 0 )
		{
			gtkDText ~= convParms.outFile;
		}
		else if ( convParms.outFile.length > 0 )
		{
			gtkDText ~= convParms.outFile;
		}
		gtkDText ~= ";\n\n";

		/* Type information should be publicly imported by all modules. */
		gtkDText ~= "public  import " ~convParms.bindDir~ "." ~convParms.outPack~ "types;\n\n";
		gtkDText ~= privPub ~" import " ~convParms.bindDir~ "." ~convParms.outPack ~ ";\n";
		gtkDText ~= privPub ~" import glib.ConstructionException;\n";
		
		if ( convParms.outPack != "cairo" && convParms.outPack != "glib" && convParms.outPack != "gthread" )
			gtkDText ~= privPub ~" import gobject.ObjectG;\n";
			
		gtkDText ~= "\n";
		
		// move signal imports out of classes - JJR
		if (needSignalImports)
		{
			int i = moveToBlockStart("Signal Details", inLines);
			// if "Signal Details" exists in API Lines
			// than we know that we need signal imports.
			if (i < inLines.length)
			{
				gtkDText ~= privPub ~" import gobject.Signals;\n";
				gtkDText ~= "public  import gtkc.gdktypes;\n";
			}	
		}	
		
		// the use of phobs is limited, maybe we can get by with this...
		
		string[][string] tangoImportConvs;
		tangoImportConvs["std.stdio"] = ["tango.io.Stdout"];
		tangoImportConvs["std.thread"] = ["tango.core.Thread"];
		tangoImportConvs["std.string"] = ["tango.text.Util", "tango.text.Unicode"];
		tangoImportConvs["std.c.string"] = ["tango.stdc.string"];
		tangoImportConvs["std.c.stdio"] = ["tango.stdc.stdio"];
		tangoImportConvs["std.gc"] = ["tango.core.Memory"];
		tangoImportConvs["std.stdarg"] = ["tango.core.Vararg"];
		tangoImportConvs["std.conv"] = ["tango.text.convert.Integer"];

		string[][string] druntimeImportConvs;
		druntimeImportConvs["std.thread"] = ["core.thread"];
		druntimeImportConvs["std.c.string"] = ["core.stdc.string"];
		druntimeImportConvs["std.gc"] = ["core.memory"];
		druntimeImportConvs["std.stdarg"] = ["core.vararg"];

		string[][string] phobos2ImportConvs;
		phobos2ImportConvs["std.stdio"] = ["std.stdio"];
		phobos2ImportConvs["std.c.stdio"] = ["std.c.stdio"];
		phobos2ImportConvs["std.string"] = ["std.string"];
		phobos2ImportConvs["std.conv"] = ["std.conv"];
		
		string importTango = "\nversion(Tango) {\n";
		string importDruntime = "} else version(D_Version2) {\n";
		string importElse = "} else {\n";
		string importCommon = "\n";
		
		int countTango;
		int countDruntime;
		
		foreach( string imprt ; convParms.imprts )
		{
			if ( imprt in druntimeImportConvs )
			{
				++countDruntime;
				foreach ( string d2Imp ; druntimeImportConvs[imprt] )
				{ 
					importDruntime ~= "\t"~ privPub ~" import "~d2Imp~";\n";
				}
			}
			if ( imprt in phobos2ImportConvs )
			{
				foreach ( string phobos2Imp ; phobos2ImportConvs[imprt] )
				{ 
					importDruntime ~= "\t"~ privPub ~" import "~phobos2Imp~";\n";
				}
			}

			if ( imprt in tangoImportConvs )
			{
				++countTango;
				foreach ( string tangoImp ; tangoImportConvs[imprt] )
				{ 
					importTango ~= "\t"~ privPub ~" import "~tangoImp~";\n";
				}
				importElse ~= "\t"~ privPub ~" import "~imprt~";\n";
			}
			else
			{
				importCommon ~= privPub ~" import "~imprt~";\n";
			}
		}
		
		gtkDText ~= importCommon~"\n";
		if ( countTango > 0 )
		{
			gtkDText ~= importTango;
			
			if ( countDruntime > 0 )
			{
				gtkDText ~= "\n\tversion = druntime;\n";
				gtkDText ~= importDruntime;
				gtkDText ~= "\n\tversion = druntime;\n";
			}

			gtkDText ~= importElse~"}\n";
		}

		properties.length = 0;
		styleProperties.length = 0;
		signals.length = 0;

		readGtkDClass(convParms);

		gtkDText ~= "\n";

		foreach ( string key ; convParms.mAliases.keys.sort )
		{
			gtkDText ~= "public alias "~key~" "~convParms.mAliases[key]~";";
		}
		gtkDText ~= "\n";

		// reset the parent name
		parentName = null;
		gtkDParentName = "";

		string[] classHead = openClass(convParms);
		gtkDText ~= indenter.format(classHead);
	}

	private void readGtkDClass(ConvParms* convParms)
	{
		description = getDescription();
		properties ~= getProperties();
		styleProperties ~= getStyleProperties();
		signals ~= getSignals();

		members ~= getMembers(convParms);

	}

	public void mergeGtkDClass(string inAPI, ConvParms* convParms)
	{
		this.inAPI = inAPI;
		HtmlStrip stripper = new HtmlStrip();
		inLines = std.string.splitLines(stripper.strip(inAPI));
		//writefln("new API\n%s",inAPI);

		this.convParms = convParms;

		readGtkDClass(convParms);

		if ( wrapper.includeComments() )
		{
			gtkDText ~= indenter.format(description);
		}

	}

	public string closeGtkDClass(string inAPI, ConvParms* convParms)
	{
		mergeGtkDClass(inAPI, convParms);

		gtkDText ~= indenter.format(properties);
		gtkDText ~= indenter.format(styleProperties);
		gtkDText ~= indenter.format(signals);
		gtkDText ~= indenter.format(members);
		gtkDText ~= closeClass(convParms);

		return gtkDText;
	}

	/**
	 * Gets the name to the output file
	 * Params:
	 *    	outputRoot =
	 * Returns:
	 */
	public string getOutFile(string outputRoot, string srcOut)
	{
		string outF = std.path.buildPath(outputRoot, srcOut);
		outF = std.path.buildPath(outF, convParms.outPack);
		outF = std.path.buildPath(outF, (convParms.clss.length>0 ? convParms.outFile : convParms.outFile));
		return outF~".d";
	}


	/**
	 * Checks if we are a template and if the parent name
	 * Params:
	 *    	parentName =
	 * Returns:
	 */
	private string getClassHeader(ConvParms* convParms, string parentName)
	{
		string h;
		if ( convParms.isInterface )
		{
			h = "public interface "~convParms.interf;
		}
		else if ( convParms.templ.length == 0 )
		{
			h = "public class "~convParms.clss;
		}
		else
		{
			h = "public template "~convParms.clss~"(";

			foreach ( int count, string tp ; convParms.templ )
			{
				if ( count > 0 )
				{
					h ~= ", ";
				}
				h ~= tp;
			}
			h ~= ")";
		}
		if ( parentName.length > 0 )
		{
			h ~= " : " ~ parentName;
		}
		return h;
	}

	/**
	 * Create the class header.
	 * If the class name is empty this is not a class so no header is created
	 * Params:
	 *    	clss = 	The class Name
	 * Returns:
	 */
	private string[] openClass(ConvParms* convParms)
	{
		string[] text;

		if ( convParms.clss.length > 0 )
		{
			getParent();
			if ( gtkDParentName.length > 0
				&& gtkDParentNamePrefix.length > 0
				)
			{
				text ~= "private import "~gtkDParentNamePrefix~"."~gtkDParentName~";";
			}

			if ( wrapper.includeComments() )
			{
				foreach(string line; description)
					text ~= line;
			}

			text ~= getClassHeader(convParms, gtkDParentName)
					~ getImplements(convParms, gtkDParentName);
//			string implements = getImplements(convParms, gtkDParentName);
//			if ( implements.length > 0 )
//			{
//				text ~= implements;
//			}
			text ~= "{";
		}

		// moved from module level
		//text ~= "private import "~convParms.outPack ~ "."~convParms.outPack~"types;\n\n";
		//text ~= "private import lib."~convParms.outPack ~ ";\n\n";

		// moved to module level - AND BACK AGAIN
		//foreach( string imprt ; convParms.imprts )
		//{
		//	text ~= "private import "~imprt~";";
		//}

		string flipG(string inStr)
		{
			if ( inStr[0] == 'G' )
			{
				return (inStr[1 .. $] ~ 'G');
			}

			return inStr;
		}

		if ( convParms.strct.length > 0 )
		{
			string gtkStruct = convParms.realStrct.length > 0
								? convParms.realStrct
								: convParms.strct;
			string var = toVar(gtkStruct);
			text ~= "";
			if ( !convParms.isInterface )
			{
				text ~= "/** the main Gtk struct */";
				text ~= "protected "~gtkStruct~"* "~var~";";
				text ~= "";
			}

			if ( convParms.clss.length > 0 )
			{
				text ~= "";

				if ( convParms.templ.length > 0 )
				{
					text ~= "public "~gtkStruct~"* get"~convParms.clss~"Struct()"~iFaceChar;
					if ( !convParms.isInterface )
					{
						text ~= "{";
						text ~= "return cast("~gtkStruct~"*)getStruct();";
						text ~= "}";
					}
					text ~= "";
				}
				else
				{
					if ( gtkDParentName == "GioMountOperation" || gtkDParentName == "GioApplication" )
						text ~= "public "~gtkStruct~"* getGtk"~convParms.clss~"Struct()"~iFaceChar;
					else if ( gtkDParentName == "GioAppLaunchContext" )
						text ~= "public "~gtkStruct~"* getGdk"~convParms.clss~"Struct()"~iFaceChar;
					else
						text ~= "public "~gtkStruct~"* get"~convParms.clss~"Struct()"~iFaceChar;
					if ( !convParms.isInterface )
					{
						text ~= "{";
						text ~= "return " ~ var ~ ';';
						text ~= "}";
						text ~= "";
					}
					text ~= "";
					text ~= "/** the main Gtk struct as a void* */";
					if ( gtkDParentName.length > 0 && gtkDParentName != "Boxed" )
						text ~= "protected override void* getStruct()"~iFaceChar;
					else
						text ~= "protected void* getStruct()"~iFaceChar;
					if ( !convParms.isInterface )
					{
						text ~= "{";
						text ~= "return cast(void*)" ~ var ~ ';';
						text ~= "}";
					}
					text ~= "";
					if ( "GObject" != convParms.strct && "cairo_t" != convParms.strct )
					{
						// GObject has a specific constructor for the struct
						if ( !convParms.isInterface )
						{
							text ~= "/**";
							text ~= " * Sets our main struct and passes it to the parent class";
							text ~= " */";
							text ~= "public this ("~gtkStruct~"* "~var~")"~iFaceChar;
							text ~= "{";

							if ( parentName.length > 0 && gtkDParentName != "Boxed" )
							{
								text ~= "super("~castToParent(var)~");";
							}
							text ~= "this."~var~" = "~var~";";
							text ~= "}";

							if ( parentName.length > 0 && convParms.outPack != "cairo" && gtkDParentName != "Boxed" )
							{
								text ~= "";
								text ~= "protected override void setStruct(GObject* obj)";
								text ~= "{";
								text ~= "	super.setStruct(obj);";
								text ~= "	"~var~" = cast("~gtkStruct~"*)obj;";
								text ~= "}";
							}
						}
					}
				}
			}
		}

		addStaticClassCode(convParms, text);

		return text;

	}
				
				/* Deprecated */ /*
	string[] assertStructNotNull = [
	]; 
	
	private string[] getAssertStructNotNull(string var)
	{
		string[] lines = [
			"version(noAssert)",
			"{",
			"	if ( "~var~" is null )",
			"	{",
			"		int zero = 0;",
			"		version(Tango)",
			"		{",
			"			Stdout(\"struct "~var~" is null on constructor\").newline;",
			"		}",
			"		else",
			"		{",
			"			printf(\"struct "~var~" is null on constructor\");",
			"		}",
			"		zero = zero / zero;",
			"	}",
			"}",
			"else",
			"{",
			"	assert("~var~" !is null, \"struct "~var~" is null on constructor\");",
			"}"
			]
			;
		return lines;
	}
				*/


	/**
	 * Adds the class code from the conversion parameters.
	 * If current output is a interface the body functions
	 * will be removed (at least we'll try to remove it)
	 * Params:
	 *    	convParms =
	 */
	private void addStaticClassCode(ConvParms* convParms, ref string[] text)
	{
		string code;

		if ( convParms.isInterface ) code = convParms.interfaceCode;
		else code = convParms.classCode;

		if ( code.length > 0 )
		{
			text ~= "";
			foreach ( string line ; std.string.splitLines(code))
			{
				text ~= std.string.strip(line);
			}
		}
	}

	private string castToParent(string var)
	{
		return "cast("~parentName~"*)"~var;
	}

	/**
	 * Converts a type to a var.
	 * lower case the first letter
	 * Params:
	 *    	type =
	 * Returns:
	 */
	public static string toVar(string type)
	{
		if (type.length == 0)
			return "";

		string p = to!string(toLower(type[0]));
		if ( type.endsWith("_t") )
		{
			return p ~ type[1 .. $ - 2];
		} else {
			return p ~ type[1 .. $];
		}
	}

	/**
	 * Close the class by adding the final brace
	 * If the class name is empty this is not a class so no closing is necessary
	 * Params:
	 *    	clss = 	The class name
	 * Returns:
	 */
	private string closeClass(ConvParms* convParms)
	{
		if ( tabs.length > 0 )
		{
			tabs.length = tabs.length -1;
		}
		return convParms.clss.length>0 ? "}\n" : "\n";
	}

	/**
	 * Read the parent class under "Object Hierarchy" section
	 * or get from the extend on the convParms
	 * Params:
	 *    	clss =
	 * Returns:
	 */
	private string getParent()
	{
		debug(getParent) writefln("getParent for %s ", convParms.outFile);

		if ( parentName is null )
		{
			if ( convParms.extend.length > 0 )
			{
				parentName = convParms.extend;
				gtkDParentName = convertClassName(convParms.extend);
			}
			else
			{
				int i = moveToBlockStart("Object Hierarchy", inLines);
				i += 2;
				while ( i < inLines.length && !startsWith(std.string.strip(inLines[i]), "+----") )
				{
					debug(getParent)writefln("\t skip line %s", inLines[i]);
					++i;
				}
				debug(getParent)
				{
					writefln("getParent 1 ");
					for ( int j=i-3 ;j<inLines.length && j<i+5 ; j++)
					{
						writefln("\t getParent line = %s", inLines[j]);
					}
					if ( i<inLines.length )	writefln("\t getParent first line = %s", inLines[i]);
				}
				string parent;
				string current;
				string next;

				if ( i < inLines.length )
				{
					next = std.string.strip(inLines[i-1]);	// many times "GObject"
					if ( next != "GInterface" )
					{
						current = next;
					}
				}
				string gtkStruct = convParms.strct;
				if ( convParms.realStrct.length > 0 )
				{
					gtkStruct = convParms.realStrct;
				}
				while ( i < inLines.length
						&& startsWith(std.string.strip(inLines[i]), "+----")
						&& current != gtkStruct
						)
				{
					parent = current;
					next = inLines[i][6..inLines[i].length];
					if ( "GInitiallyUnowned" != next )
					{
						current = next;
						debug(getParent) writefln("\t current = %s", current);
					}
					++i;
				}
				if ( gtkStruct ==  current && parent.length>0 )
				{
					parentName = parent;
					gtkDParentName = convertClassName(parentName);
				}
			}
		}
		return parentName;
	}

	private string convertClassName(string gName)
	{
		string conv;
		string prefix;

		if ( startsWith(gName, "GtkSource") )   prefix = "Gsv";
		else if ( startsWith(gName, "Gtk") )    prefix = "Gtk";
		else if ( startsWith(gName, "Gio") )    prefix = "";
		else if ( startsWith(gName, "Gdk") )    prefix = "Gdk";
		else if ( startsWith(gName, "Gst") )    prefix = "Gst";
		else if ( startsWith(gName, "Gda") )    prefix = "Gda";
		else if ( startsWith(gName, "Atk") )    prefix = "Atk";
		else if ( startsWith(gName, "G") )      prefix = "G";
		else if ( startsWith(gName, "Pango") )  prefix = "Pg";
		else if ( startsWith(gName, "cairo") )  prefix = "cairo";

		conv = gName[prefix.length..gName.length];

		if ( conv == "Object" ) conv ~= prefix;
		if ( prefix == "Pg" ) conv = "Pg" ~ gName[5..gName.length];
		if ( prefix == "cairo") conv = std.string.toUpper(gName[6..7]) ~ gName[7..gName.length - 2];

		debug(getParent)writefln("convertClassName %s >>> %s", gName, conv);
		prefix = std.string.toLower(prefix);

		//TODO: better way to covert Gio names.
		if( prefix == "g" && convParms.outPack == "gio" && conv != "ObjectG" && conv != "TypeModule" && conv != "Boxed" )
			prefix = "gio";

		if( prefix == "gst") prefix = "gstreamer";
		if( prefix == "g")   prefix = "gobject";
		if( prefix == "pg" ) prefix = "pango";
		if ( startsWith(gName, "Gio") ) parentName = "G"~ gName[3 .. $];

		gtkDParentNamePrefix = prefix;
		return conv;
	}

	/**
	 * Under "Implemented Interfaces" section
	 * Params:
	 *    	clss =
	 * Returns:
	 */
	private string getImplements(ConvParms* convParms, string parentName)
	{
		string impls;
		foreach ( int count, string impl ; convParms.impl )
		{
			if ( count > 0 || parentName.length > 0)
			{
				impls ~= ", ";
			}
			else if ( count == 0 || parentName.length == 0)
			{
				impls ~= " : ";
			}
			impls ~= impl;
		}
		return impls;
	}

	/* TODO */
	private string[] getProperties()
	{
		string[] text;

		return text;
	}

	/* TODO */
	private string[] getStyleProperties()
	{
		string[] text;

		return text;
	}


	/**
	 * All the signals
	 * Returns:
	 */
	private string[] getSignals()
	{
		string[] text;
		debug(getSignal) writefln("\tgetSignals");

		int i = moveToBlockStart("Signal Details", inLines);
		
		i += 2;
		
		debug(getSignal)if(i<inLines.length)writefln("\t %s", inLines[i]);

		while ( i<inLines.length && startsWith(inLines[i], "The \"") )
		{
			text ~= getSignal(i, inLines);
			while ( i<inLines.length && !startsWith(inLines[i], "The \"") )
			{
				debug(getSignal) writefln("\tgoto next\t%s", inLines[i]);
				++i;
			}
		}

		return text;
	}

	private string[] getSignal(ref int i, string[] lines)
	{
		debug(getSignal) writefln("\tgetSignal %s", lines[i]);
		string[] text;
		sizediff_t endPos = std.string.lastIndexOf(lines[i], '"');
		if ( endPos > 5 )
		{
			string signalName = lines[i][5..endPos];

			++i;
			string funct = getSignalFunctionDeclaration(i, lines);

			if(!convParms.omitSignal(signalName))
			{
				string[] comments;
				if ( wrapper.includeComments )
				{
					comments ~= "/**";
					while ( i<lines.length && lines[i] != "<hr>" )
					{
						debug(getSignal) writefln("\t\t%s", lines[i]);

						if(lines[i].length == 0)
						{
							//Skip empty lines.
							++i;
						}
						else if(indexOf(lines[i], ":") == lines[i].length-1)
						{
							//Skip the parameters.
							++i;

							while(i<lines.length && stilInParam(lines[i]))
								++i;
						}
						else
						{
							comments ~= " * "~lines[i];
							++i;
						}
					}
					comments ~= "*/";
				}

				Funct fun = Funct(funct, convParms, wrapper.getAliases());

				string gtkDSignal = signalNameToGtkD(signalName);
				string delegateDeclaration = fun.getDelegateDeclaration(1);

				// Removed function "addSignalImports" and replaced it 
				// with simple "if" block to make sure class local imports
				// don't get added - JJR
			
				if ( needSignalImports )
				{
					if ( !convParms.isInterface )
					{
						text ~= "int[string] connectedSignals;";
					}
					text ~= "";

					needSignalImports = false;
				}

				if(convParms.isInterface)
				{
					text ~= delegateDeclaration ~ "[] on" ~ gtkDSignal~"Listeners();" ;
					text ~= comments;
				}
				else if(!convParms.isInterface && convParms.templ.length > 0)
				{
					text ~= delegateDeclaration ~ "[] _on" ~ gtkDSignal~"Listeners;";
					text ~= delegateDeclaration ~ "[] on" ~ gtkDSignal~"Listeners()";
					text ~= "{";
					text ~= "	return  _on" ~ gtkDSignal~"Listeners;";
					text ~= "}";
					text ~= comments;
				}
				else
				{
					text ~= delegateDeclaration ~ "[] on" ~ gtkDSignal~"Listeners;" ;
					text ~= comments;
				}

					addAddListener(text, signalName, gtkDSignal, delegateDeclaration);
					addExternCallback(text, fun, gtkDSignal, delegateDeclaration);
			}
		}
		return text;
	}

	/*
	 * Params:
	 * text = the string[] to append the function to.
	 * funct = the signal function
	 * gtkDSignal = the GtkD name for the signal
	 * dlg = the delegale for this signal
	 */
	void addExternCallback(ref string[] text, Funct fun, string gtkDSignal, string dlg)
	{
		if ( !convParms.isInterface )
		{
			if ( startsWith(dlg, "bool") )
			{
				text ~= "extern(C) static gboolean callBack"~gtkDSignal~"("
						~fun.getCallbackParameters()
						~")";
			}
			else
			{
				text ~= "extern(C) static void callBack"~gtkDSignal~"("
						~ std.array.replace(fun.getCallbackParameters(), "string", "str")
						~")";
			}
			text ~= "{";
			text ~= "	foreach ( "~dlg~" dlg ; _"~idsToGtkD(getClassVar(convParms), convParms, wrapper.getAliases())~".on"~gtkDSignal~"Listeners )";
			text ~= "	{";
			if ( startsWith(dlg, "bool") )
			{
				text ~= "		if ( dlg("~fun.getCallbackVars()~") )";
				text ~= "		{";
				text ~= "			return 1;";
				text ~= "		}";
				text ~= "	}";
				text ~= "	";
				text ~= "	return 0;";
			}
			else
			{
				text ~= "		dlg("~ std.array.replace(fun.getCallbackVars(), "string", "str")~");";
				text ~= "	}";
			}
			text ~= "}";
			text ~= "";
		}
	}

	void addAddListener(ref string[] text, string signalName, string gtkDSignalName, string dlg)
	{
		text ~= "void addOn"~gtkDSignalName~"("~dlg~" dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)"~iFaceChar;
		if ( !convParms.isInterface )
		{
			text ~= "{";
			text ~= "if ( !(\""~signalName~"\" in connectedSignals) )";
			text ~= "{";

			// TODO move this to the config files or read it from the Gtk docs (how?)
			if ( convParms.clss != "StatusIcon")
			{
				switch ( signalName )
				{
					case  "button-press-event": text ~= "addEvents(EventMask.BUTTON_PRESS_MASK);"; break;
					case  "button-release-event":
						text ~= "addEvents(EventMask.BUTTON_PRESS_MASK);";
						text ~= "addEvents(EventMask.BUTTON_RELEASE_MASK);";
						break;
					case  "motion-notify-event": text ~= "addEvents(EventMask.POINTER_MOTION_MASK);"; break;
					default:
						break;
				}
			}

			text ~= "	Signals.connectData(";
			text ~= "			getStruct(), ";
			text ~= "			\""~signalName~"\", ";
			text ~= "			cast(GCallback)&callBack"~gtkDSignalName~", ";

			if(convParms.templ.length > 0)
				text ~= "			cast(void*)cast("~ convParms.interf ~")this, ";
			else
				text ~= "			cast(void*)this, ";

			text ~= "			null, ";
			text ~= "			connectFlags);";
			text ~= "	connectedSignals[\""~signalName~"\"] = 1;";
			text ~= "}";

			if(convParms.templ.length > 0)
				text ~= "_on"~gtkDSignalName~"Listeners ~= dlg;";
			else
				text ~= "on"~gtkDSignalName~"Listeners ~= dlg;";

			text ~= "}";
		}
	}

	public static string getClassVar(ConvParms* convParms)
	{
		string cv;
		if ( convParms.interf.length > 0)
		{
			cv = convParms.interf;
		}
		else if ( convParms.clss.length > 0 )
		{
			cv = convParms.clss;
		}

		return (cv is null) ? null : (toLower(cv[0 .. 1]) ~ cv[1 .. $]);
	}

	private string signalNameToGtkD(string signalName)
	{
		string signalGtkD;

		char pc = ' ';
		foreach ( int count, char c ; signalName )
		{
			if ( count == 0 )
			{
				signalGtkD ~= std.ascii.toUpper(c);
			}
			else
			{
				if ( c!='-' && c!='_' )
				{
					if ( pc=='-' || pc=='_' )
					{
						signalGtkD ~= std.ascii.toUpper(c);
					}
					else
					{
						signalGtkD ~= c;
					}
				}
			}
			pc = c;
		}

		//writefln("signalGtkD = %s", signalGtkD);

		if ( "MapEvent" != signalGtkD
			&& "UnmapEvent" != signalGtkD
			&& "DestroyEvent" != signalGtkD
			&& endsWith(signalGtkD, "Event") )
		{
			signalGtkD = signalGtkD[0..signalGtkD.length-5];
		}

		return signalGtkD;
	}


	private string getSignalFunctionDeclaration(ref int line, string[] lines)
	{
		debug(signalFunction)writefln("getSignalFunctionDeclaration");
		string funct;
		while ( line<lines.length
				&& std.string.indexOf(lines[line], ")")<0
			)
		{
			funct ~= lines[line]~ " ";
			debug(endFunction)writefln("funct line = >>>%s<<< endWith(\");\") = ",
										lines[line],
										endsWith(lines[line], ");")
										);
			++line;
		}
		if ( line<lines.length && std.string.indexOf(lines[line], ")")>0 )
		{
			funct ~= lines[line++];
		}
		return funct;
	}



	private string[] getMembers(ConvParms* convParms)
	{
		currLine = 0;
		getUntil("Details");

		string[] text;

		while ( currLine < inLines.length )
		{
			string[] member = getMember(convParms.prefixes);

			//Don't add empty members.
			if(member.length > 1)
				text ~= member;
		}

		return text;
	}

	/** Searches for new members in the documentation. Starts from
	 *  the last kown position.
	 *  Params:
	 *   prefixes = a list of valid prefixes for new members 
	 *              (gtk_xxx_).
	 */
	private string[] getMember(string[] prefixes)
	{
		string[] lines;
		string[] member;

		if ( convParms.text.length > 0 )
		{
			lines = getUntil("<hr>", convParms.text);

			if ( lines.length != convParms.text.length )
				convParms.text = convParms.text[lines.length+1 .. $];
			else
				convParms.text.length = 0;
		}
		else
		{
			lines ~= getUntil("<hr>");
		}

		//debug(structs){
		//	writefln("lines[1] = %s", lines[1]);
		//}else debug(enums){
		//	writefln("lines[1] = %s", lines[1]);
		//}


		debug(getMember)
		{
			writefln("getMember:");
			foreach (string line ; lines )
			{
				writefln("\t%s", line);
			}
		}
		if ( lines.length < 2 )
		{
			return member;
		}


		member ~= "";
		if ( endsWith(lines[0],"()") )
		{
			member ~= getFunction(lines, prefixes);
		}
		else if ( startsWith(lines[1], "typedef enum") )
		{
			if ( !convParms.strictPrefix
				&& !convParms.isInterface
				)
			{
				collectEnums(lines, convParms);
			}
		}
		else if ( startsWith(lines[1], "typedef struct")
				|| startsWith(lines[1], "struct")
				)
		{
			if ( !convParms.strictPrefix
				&& !convParms.isInterface
				)
			{
				collectStructs(lines, convParms);
			}
		}
		else if ( startsWith(lines[0], "union") )
		{
			if ( !convParms.strictPrefix
				&& !convParms.isInterface
				)
			{
				collectUnions(lines, convParms);
			}
		}
		else if ( startsWith(lines[1], "typedef") )
		{
			if ( !convParms.strictPrefix
				&& !convParms.isInterface
				)
			{
				collectAliases(lines, convParms);
			}
		}
		else if ( startsWith(lines[0], "GTK_STOCK_") )
		{
			if ( !convParms.isInterface )
			{
				collectStockItems(lines, convParms);
			}
		}
		else if ( startsWith(lines[0], "G_TYPE_")
				&& convParms.outFile == "Type"
				)
		{
			if ( !convParms.isInterface )
			{
				collectGTypes(lines, convParms);
			}
		}

		return member;
	}


	private void collectGTypes(string[] lines, ConvParms* convParms)
	{
		debug(gTypes)writefln("gype lines\n\t%s\n\t%s\n\t%s",lines[0],lines[1],lines[2]);
		int defLine = 1;
		if ( lines.length > 0
			&& std.string.indexOf(lines[defLine],"G_TYPE_MAKE_FUNDAMENTAL")>=0
			&& endsWith(lines[defLine],")")
			&& std.string.indexOf(lines[defLine],"<<") < 0
			)
		{
			sizediff_t pos = std.string.indexOf(lines[defLine], "(");
			if ( pos > 0 )
			{
				sizediff_t posf = std.string.indexOf(lines[defLine], ")");
				if ( posf>pos )
				{
					gTypes ~= lines[0][7..lines[0].length]
							~ " = "~lines[defLine][pos+1..posf]~"<<2"
							~ ",";
				}
			}
		}
	}

	// we expect all stock constants to be defined in one file
	int stockCurrEnum;


	private void collectStockItems(string[] lines, ConvParms* convParms)
	{
		debug(stockItems)writefln("stock items lines\n\t%s\n\t%s\n\t%s",lines[0],lines[1],lines[2]);
		int defLine = 1;
		if ( lines.length > 0 && startsWith(lines[defLine],"#define GTK_") )
		{
			string line = lines[defLine];
			string stockID;
			string stockValue;

			sizediff_t pos = std.string.indexOf(line[12..line.length],' ')+12;
			debug(stockItems)writefln("pos=%s", pos);
			if ( pos > 12 )
			{
				stockID = line[12..pos];
				if ( startsWith(stockID, "STOCK_") )
				{
					stockID = stockID[6..stockID.length];
				}
				debug(stockItems)writefln("\t\tstockID = %s", stockID);
				if ( stockID.length>0 )
				{
					stockValue = std.string.strip(line[pos+1..line.length]);
					debug(stockItems)writefln("\t\tstockValue = %s", stockValue);
					if ( stockValue.length>2
						&& stockValue[0] == '"'
						&& endsWith(stockValue, '"')
						)
					{
						int ln = defLine+1;
						stockEnums ~= "";
						stockEnums ~= "/**";
						while ( ln < lines.length && lines[ln][0] > ' ' )
						{
							stockEnums ~= " * "~lines[ln++];
						}
						stockEnums ~= " */";
						stockEnums ~= stockID~",";
						stockChars ~= "\""~stockValue[1..stockValue.length-1]~"\",";
						//collectedConstants ~=
						//	"const StockID "~stockID
						//	~" = cast(StockID)\""~stockValue[1..stockValue.length-1]~"\";";
					}
				}
			}

		}

	}

	private void collectAliases(string[] lines, ConvParms* convParms)
	{
		int pos = 0;
		string[] tokens = std.string.split(until(pos, lines[1], ';'));

		if ( convParms.omitCode(tokens[2]) )
			return;

		string alis = "public alias " ~ tokens[1] ~ ' ' ~ tokens[2] ~ ';';

		collectedAliases ~= "";
		collectedAliases ~= "/**";
		int ln = 1;
		while ( ln < lines.length && lines[ln][0] > ' ' )
		{
			collectedAliases ~= " * "~lines[ln++];
		}
		collectedAliases ~= " */";
		collectedAliases ~= stringToGtkD(alis, convParms, wrapper.getAliases());

	}

	private string getEnumPrefix(string enumName, string enumEntry)
	{
		debug(enumPrefix)writefln("%s.%s", enumName, enumEntry);
		string prefix;
		string upper = std.string.toUpper(enumName);
		int n = 0;
		int e = 0;

		bool endOfStrings()
		{
			bool v = (n>=upper.length) || (e>=enumEntry.length);
			debug(enumPrefix) if (v) writefln("\t ended by endfStrings");
			return v;
		}

		bool isUnderscore()
		{
			bool v = enumEntry[e] == '_';
			return  v;
		}

		bool sameChar()
		{
			bool v = upper[n] == enumEntry[e];
			debug(enumPrefix) if (!v) writefln("\t ended by sameChar");
			return v;
		}

		bool isSuffix()
		{
			bool v = upper.length-n == 4
					&& ( upper[n..n+4]=="TYPE"
						 || upper[n..n+4]=="FLAG"
						 || upper[n..n+4]=="MODE"
						);
			debug(enumPrefix) if (v) writefln("\t ended by isSuffix");
			return v;
		}

		while ( !endOfStrings()
				&& ( isUnderscore()
					||
					( sameChar() && !isSuffix()	)
					)
			)
		{
			if ( upper[n] == enumEntry[e] )
			{
				++n;
				++e;
			}
			else
			{
				++e;
			}

		}

		if ( e < enumEntry.length )
		{
			while ( e >0 && enumEntry[e]!= '_' )
			{
				--e;
			}
		}


		if ( e<enumEntry.length && enumEntry[e] == '_' )
		{
			++e;
		}

		prefix = enumEntry[0..e];
		debug(enumPrefix) writefln("\t%s", prefix);
		return prefix;
	}

	private void collectEnums(string[] lines, ConvParms* convParms)
	{
		string enumName = lines[0][5..lines[0].length];
		string gtkDEnumName;

		bool isGdkPrefix(string name)
		{
			return
				startsWith(enumName, "Gdk")
				;
		}

		//TODO: add an option for this to the APILookup files
		if ( enumName == "GstEventType" || enumName == "GstEventTypeFlags" )
			return;

		if ( startsWith(enumName, "Gtk")
			 || isGdkPrefix(enumName)
			)
		{
			gtkDEnumName = enumName[3..enumName.length];
			if ( gtkDEnumName == "Function" ) gtkDEnumName = "Funct";
		}
		else if ( startsWith(enumName, "Gst") )
		{
			gtkDEnumName = enumName[3..enumName.length];
			if ( gtkDEnumName == "Function" ) gtkDEnumName = "Funct";
		}
		else if ( startsWith(enumName, "G") )
		{
			gtkDEnumName = enumName[1..enumName.length];
		}
		else if ( startsWith(enumName, "cairo") )
		{
			gtkDEnumName = "C" ~ removeUnderscore(enumName[1 .. $-2]);
		}
		//string enumName = removeUnderscore(lines[0][5..lines[0].length]);
		debug(enums)writefln("enum %s", enumName);
		string[] values;
		// skipp until the start of the enumerations
		int pos = 1;
		while ( pos<lines.length
				&& !endsWith(std.string.strip(lines[pos]),'{')
				&& !startsWith(std.string.strip(lines[pos]),'{')
				&& !startsWith(lines[pos], "typedef enum {")
				)
		{
			debug(enums)writefln("\tskipp line: %s", lines[pos]);
			++pos;
		}
		++pos;
		bool invalidDEnum = false;
		if ( pos<lines.length && lines[pos][0] != '}' )
		{
			if ( lines[pos].strip.startsWith("/+") )
				pos++;
		
			string enumPrefix = getEnumPrefix(enumName, std.string.strip(lines[pos]));
			while ( pos<lines.length && lines[pos][0] != '}' )
			{
				debug(enums)writefln("\tenum line %s", lines[pos]);

				string value = lines[pos++].strip().chomp("\\");
				debug(enums)writefln("\traw       %s", value);
				value = enumToGtkD(enumName, value, convParms, wrapper);
				debug(enums)writefln("\tprocessed %s", value);

				//if ( std.string.indexOf(value, ":") >= 0 )
				//{
				//	invalidDEnum = true;
				//	debug(structs)writefln("- INVALID >>>%s<<<", value);
				//}
				//else
				if ( startsWith(value, '#') )
				{
					// ignore
					debug(enums)writefln("= IGNORED >>>%s<<<", value);
				}
				else
				{
					debug(enumPrefix)writefln("\t\t%s", value);
					string v = std.array.replace(value, enumPrefix, "");
					v = std.array.replace(v, "(int)", "cast(int)");
					if ( enumName == "cairo_ps_level_t" )
					{
						v = "LEVEL_"~v;
					}
					else if ( v.length > 2 )
					{
						switch (v[0..3])
						{
							case "2BI": v = ""; break;
							case "2BU": v = ""; break;
							case "3BU": v = ""; break;
							case "1_1": v = "VERSION_"~v; break;
							case "1_2": v = "VERSION_"~v; break;
							case "1_4": v = "VERSION_"~v; break;
							case "1_5": v = "VERSION_"~v; break;
							default:
								// nothing
								break;
						}
					}

					values ~= v;

					debug(enums)writefln("+ ADDED   >>>%s<<<", v);
				}
			}
		}
		++pos;
		if ( pos < lines.length )
		{
			collectedEnums ~= "/**";
			while ( pos < lines.length && lines[pos] != "<hr>" )
			{
				collectedEnums ~= " * "~lines[pos++];
			}
			collectedEnums ~= " */";
		}
		if ( invalidDEnum )
		{
			collectedEnums ~= "// TODO ";
			collectedEnums ~= "// public enum "~enumName;
		}
		else
		{
			collectedEnums ~= "public enum "~enumName;
			collectedEnums ~= "{";

			foreach ( string value ; values )
			{
				debug(enums)writefln("\t\t%s", value);
				collectedEnums ~= stringToGtkD(value, convParms, wrapper.getAliases());
			}
			
			//Private value in GTokenType.
			if ( enumName == "GTokenType")
				collectedEnums ~= "LAST";
			
			collectedEnums ~= "}";
			if ( gtkDEnumName.length > 0
				&& !startsWith(gtkDEnumName, "Gdk")
				)
			{
				collectedEnums ~= "alias "~enumName~" "~gtkDEnumName ~ ";";
				collectedEnums ~= "";
			}

		}
	}

	private void collectUnions(string[] lines, ConvParms* convParms)
	{
		string unionName = lines[0][6..lines[0].length];

		foreach ( name; convParms.noStructs )
		{
			if(name == unionName)
				return;
		}

		if ( unionName == "cairo_path_data_t" )
		{
			collectedUnions ~= "";
			collectedUnions ~= "// skipped union "~unionName;
			collectedUnions ~= "";
			return;
		}
		debug(unions)writefln("union %s", unionName);
		string[] values;
		int pos = 3;
		while ( pos<lines.length && lines[pos][0] != '}' )
		{
			debug(unions)writefln("\tunion line %s", lines[pos]);
			string value = std.string.strip(lines[pos++]);
			debug(unions)writefln("\traw       %s", value);
			value = stringToGtkD(value, convParms, wrapper.getAliases());
			debug(unions)writefln("\tprocessed %s", value);
			values ~= value;
		}
		++pos;
		if ( pos < lines.length )
		{
			collectedUnions ~= "/**";
			while ( pos < lines.length && lines[pos][0] > ' ' )
			{
				collectedUnions ~= " * "~lines[pos++];
			}
			collectedUnions ~= " */";
		}
		collectedUnions ~= "public struct "~unionName;
		collectedUnions ~= "{";
		collectedUnions ~= "union";
		collectedUnions ~= "{";
		foreach ( string value ; values )
		{
			debug(unions)writefln("\t\t%s", value);
			collectedUnions ~= value;
		}
		collectedUnions ~= "}";
		collectedUnions ~= "}";
	}

	private void collectStructs(string[] lines, ConvParms* convParms)
	{
		string structName = lines[0];
		if ( startsWith(structName, "struct ") )
		{
			structName = structName[7..structName.length];
		}

		debug(structs)writefln("found typdef struct = %s", structName);

		bool includeStruct = true;
		int nStructs = 0;
		while ( includeStruct && nStructs < convParms.noStructs.length )
		{
			includeStruct = ! (structName == convParms.noStructs[nStructs++]);
		}

		if ( includeStruct )
		{
			string[] structDef;	/// all elements of the struct
			int pos = 1;
			if ( lines[1][lines[1].length-1] == '{' )
			{
				++pos;
				debug(structs)writefln("collectStructs %s",std.string.strip(lines[pos]));
				while ( pos < lines.length && lines[pos][0] != '}' )
				{
					structDef ~= lines[pos];
					++pos;
				}
			}
			if ( pos < lines.length )
			{
				collectedStructs ~= "";
				string line = lines[pos];
				++pos;
				string gtkStruct = convParms.realStrct.length > 0
					? convParms.realStrct
					: convParms.strct;

				if ( pos < lines.length && lines[pos][0] > ' ' )
				{
					collectedStructs ~= "/**";
					if ( structName == gtkStruct )
					{
						collectedStructs ~= " * Main Gtk struct.";
					}
					while ( pos < lines.length && lines[pos][0] > ' ' )
					{
						collectedStructs ~= " * "~lines[pos++];
					}
					collectedStructs ~= " */";
				}
				else if ( structName == gtkStruct )
				{
					collectedStructs ~= "/**";
					collectedStructs ~= " * Main Gtk struct.";
					collectedStructs ~= " */";
				}
			}

			if ( structDef.length > 0 )
			{
				collectedStructs ~= "public struct "~structName~"\n{";
				getStructInternals(structDef, convParms);
				collectedStructs ~= "\n}";
			}
			else
			{
				collectedStructs ~= "public struct "~structName~"{}";
			}
			collectedStructs ~= "";
		}
	}

	void getStructInternals(string[] structDef, ConvParms* convParms)
	{
		string getFunctionPointer(string def, inout int i)
		{
		
			string funct = std.string.split(def, ";")[0];
			string comment = std.string.split(def, ";")[1];
			
			return getFunction(funct, convParms) ~ comment;
		}

		bool bitField = false;	// if we are in a bit field
		int bitFieldNr; // Number apended to bit field
		int bits; // Bits used in the curent bit field

		for ( int i; i < structDef.length; i++ )
		{
			// Remove GSEAL macro
			if ( std.string.indexOf(structDef[i], "GSEAL (") > -1 )
			{
				structDef[i] = std.array.replace(structDef[i], "GSEAL (", "");
				structDef[i] = std.array.replace(structDef[i], ")", "");
			}

			string elem = stringToGtkD(structDef[i], convParms, wrapper.getAliases());

			if ( startsWith(elem, "*") && std.string.indexOf(elem, "+/") < elem.length - 2)
				elem = std.array.replace(elem, "/", "\\"); //Some comments are broken
		
			if ( std.string.indexOf(elem, "unsigned long") == 0)
				elem = "ulong"~ elem[13..$];  //TODO: posibly use fixtype

			if ( std.string.indexOf(structDef[i], ":") >= 0 && (std.string.indexOf(structDef[i], ":") <  std.string.indexOf(structDef[i], "/+*") ||  std.string.indexOf(structDef[i], "/+*") == -1) )
			//Bit fields.
			{
				if ( !bitField )
				{
					bitField = true;
					collectedStructs ~= "\tuint bitfield" ~ to!string(bitFieldNr) ~";";
				}
				if (std.string.indexOf(elem, "/+*") > 0 && std.string.indexOf(elem, "+/") < 0)
				{
					string[] parts = std.string.split(elem, "/+*");
					collectedStructs ~= "//" ~ parts[0];
					collectedStructs ~= "/+*" ~ parts[1];
				}
				else
				{
					collectedStructs ~= "//" ~ elem;
				}

				auto b = split(elem, ":")[1];
				b = b[0 .. b.indexOf(";")].strip;
				bits += to!int(b);
				if ( bits >= 32)
				{
					bitField = false;
					bitFieldNr++;
					bits = 0;
				}
			}
			else if ( std.string.indexOf(elem, "#") > -1 && std.string.indexOf(elem, "#") < 2 )
			//Versions.
			{
				if ( std.string.indexOf(elem, "#if defined (G_OS_WIN32) GLIB_SIZEOF_VOID_P == 8") > -1 )
				{
					//GLIB_SIZEOF_VOID_P == 8 means 64 bit. assuming WIN32 is an bad name for just windows.
					collectedStructs ~= "version(Win64)";
					collectedStructs ~= "{";
				}
				if ( std.string.indexOf(elem, "#if __SIZEOF_INT__ == __SIZEOF_POINTER__") > -1  ||
				     std.string.indexOf(elem, "#if (defined(__SIZEOF_INT__) defined(__SIZEOF_POINTER__)) (__SIZEOF_INT__ == __SIZEOF_POINTER__)") > -1 )
				{
					collectedStructs ~= "static if (int.sizeof == ptrdiff_t.sizeof)";
					collectedStructs ~= "{";
				}
				if ( std.string.indexOf(elem, "#ifndef") == 0 )
				{
					collectedStructs ~= "version("~ elem[8..$] ~")";
					collectedStructs ~= "{";
				}
				else if ( std.string.indexOf(elem, "#else") == 0 )
				{
					collectedStructs ~= "}";
					collectedStructs ~= "else";
					collectedStructs ~= "{";
				}
				else if ( std.string.indexOf(elem, "#endif") == 0 )
				{
					collectedStructs ~= "}";
				}
			}
			else if ( std.string.indexOf(elem, "(") > 0 && !startsWith(elem, "* ") && !startsWith(elem, "/+*") )
			//Function Pointers.
			{
				string funct;
				for ( ; i < structDef.length; i++ )
				{
					funct ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());

					if ( std.string.indexOf(structDef[i], ");") > 0 )
						break;
				}

				collectedStructs ~= getFunctionPointer(funct, i);
			}
			else if( std.string.indexOf(elem, "{") > 0 )
			//Nested Structs and unions.
			{
				string structUnion = std.string.split(structDef[i])[0];
				int parentCount;
				string[] def;

				for ( i++; i < structDef.length; i++ )
				{
					if ( std.string.indexOf(structDef[i], "{") > -1 )
						parentCount++;

					if ( std.string.indexOf(structDef[i], "}") > -1 && parentCount-- == 0)
						break;

					def ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());
				}
				
				string varName = stringToGtkD(std.string.split(structDef[i])[1][0..$-1], convParms, wrapper.getAliases());
				string structName = std.string.toUpper(varName)[0..1] ~ varName[1..$];

				collectedStructs ~= structUnion ~" "~ structName;
				collectedStructs ~= "{";
				getStructInternals(def, convParms);
				collectedStructs ~= "}";
				collectedStructs ~= structName ~" "~ varName ~";";
			}
			else
			{
				collectedStructs ~= elem;
			}
		}
	}

	/// hack... we don't have all types (do we?)
	bool isEnum(string type)
	{
		if ( type == "GdkEventType" )
		{
			return true;
		}
		return false;
	}

	bool primitiveType(string line)
	{
		int p=0;
		skipBlank(p, line);
		string type = untilBlank(p, line);
		if ( isEnum(type) )
		{
			return true;
		}
		foreach(primitive; wrapper.getAliases())
		{
			if(primitive == type)
				return true;
		}
		return (type in wrapper.getAliases()) !is null;
	}

	public static void skipBlank(ref int p, string text)
	{
		while( p<text.length && text[p]<=' ' )
		{
			++p;
		}
	}

	public static void skip(ref int p, string text, char s)
	{
		while( p<text.length && text[p]==s)
		{
			++p;
		}
	}

	public static string untilBlank(ref int p, string text)
	{
		int start=p;
		while ( p<text.length && text[p]>' ')
		{
			++p;
		}
		return text[start..p];
	}

	public static string untilBlank(ref int p, string text, string s)
	{
		int start=p;
		while ( p<text.length && text[p]>' ' && std.string.indexOf(s,text[p])<0 )
		{
			++p;
		}
		return text[start..p];
	}

	public static string until(ref int p, string text, char s)
	{
		int start=p;
		while ( p<text.length && text[p]!=s)
		{
			++p;
		}
		return text[start..p];
	}

	public static string until(ref int p, string text, string s)
	{
		int start=p;
		while ( p<text.length && std.string.indexOf(s,text[p])<0 )
		{
			++p;
		}
		return text[start..p];
	}

	private string getFunctionDeclaration(ref int line, string[] lines)
	{
		string funct;
		while ( line<lines.length
				&& (!endsWith(lines[line], ");")
					&& !startsWith(funct, "#define"))
			)
		{
			funct ~= lines[line]~ " ";
			debug(endFunction)writefln("funct line = >>>%s<<< endWith(\");\") = ",
										lines[line],
										endsWith(lines[line], ");")
										);
			++line;
		}
		if ( line<lines.length && endsWith(lines[line], ");") )
		{
			funct ~= lines[line++];
		}

		return funct;
	}

	/** Builds the declaration of a new method for a class, according to
	 *  the information retrieved from the documentation.
	 *  Params:
	 *   lines = the lines containing the definition of the original GTK+
	 *			 function, extracted from the documentation.
	 *	 prefixes = a list of prefixes to look for in 'lines' (gtk_xxx).
	 */
	private string[] getFunction(string[] lines, string[] prefixes)
	{
		string[] member;

		int line = 1;

		string funct = getFunctionDeclaration(line, lines);

		Funct fun = Funct(funct, convParms, wrapper.getAliases());

		/**
		 * Checks restrictions on the functions to include
		 * Params:
		 *    	lines =
		 *    	prefix =
		 * Returns:
		 */
		bool includeFunction(ConvParms* convParms)
		{
			bool inc = true;

			int nPrefix = 0;
			while ( inc && nPrefix<convParms.noPrefixes.length )
			{
				debug(noPrefixes)writefln("\ttest noPrefix %s ?= %s", fun.name, convParms.noPrefixes[nPrefix]);
				inc = !startsWith(fun.name, convParms.noPrefixes[nPrefix++]);
			}
			if ( inc )
			{
				inc = false;

				if ( convParms.containsPrefix(fun.name) )
				{
					debug(noPrefixes)writefln("included  by name");
					inc = true;
				}
				else if ( convParms.strictPrefix && convParms.prefixes.length>0 )
				{
					debug(noPrefixes) writefln("dropped by strictPrefix");
					inc = false;
				}
				else
				{
					inc = true;
					debug(noPrefixes)if ( !inc) writefln("dropped by noPrefixes");
				}
			}
			//debug(noPrefixes)writefln("%s : %s (%s)", (inc?"included":"dropped"),fun.name, convParms.prefix);
			return inc;
		}

		if ( includeFunction(convParms) )
		{
			if ( funct[0] == '#' )
			{
				if ( !convParms.strictPrefix )
				{
					collectedTypes ~= "";
					debug(defines)writefln("it's define: %s",funct);
					// comment
					if ( wrapper.includeComments() )
					{
						collectedTypes ~= "/*";
						while ( line<lines.length )
						{
							collectedTypes ~= " * "~lines[line++];
						}
						collectedTypes ~= " */";
					}
					collectedTypes ~= "// TODO";
					// body
					collectedTypes ~= "// "~funct;
				}

			}
			else
			{
				debug(functName) writefln("funct name = %s", fun.name);
				if ( fun.name.length==0 || fun.name[0] == '(' )
				{
					if ( !convParms.isInterface )
					{
						if ( !convParms.strictPrefix )
						{
							collectedFuncts ~= "";
							// comment
							if ( wrapper.includeComments() )
							{
								collectedFuncts ~= "/*";
								while ( line<lines.length )
								{
									collectedFuncts ~= " * "~lines[line++];
								}
								collectedFuncts ~= " */";
								collectedFuncts ~= "// "~funct;
							}
							// body
							collectedFuncts ~= "public alias "~ getFunction(funct, convParms);
						}
					}
				}
				else // the regular function
				{
					bool tooSoon = false;	// reject for 2.10
					// comment
					void addComments()
					{
						string[] phraseParams(string[] comments)
						{
							string[] description;
							string[] params;
							string ret;
							
							for(int i; i < comments.length; i++)
							{
								if(indexOf(comments[i], ":") == comments[i].length-1 && comments[i].chomp(":").strip() != "Returns" )
								{
									//Get the GtkD name of the param
									string param = strip( idsToGtkD(comments[i][0 .. $-1], convParms, wrapper.getAliases()) );

									//If this param is not in the Gtkd Function Skip it.
									if(indexOf(fun.declaration(), param) == -1)
									{
										//Loop for multi line descriptons for this param.
										while(i+1 < comments.length && stilInParam(comments[i+1]))
											i++;
										continue;
									}

									if(params.length == 0)
										params ~= "Params:";

									//Loop for multi line descriptons for this param.
									bool firstRun = true;
									while(i+1 < comments.length && stilInParam(comments[i+1]))
									{
										i++;
										if(firstRun)
										{
											params ~= param ~" = "~ stripLeft(comments[i]);
											firstRun = false;
										}
										else
											params ~= comments[i];
									}
								}
								else if( comments[i].chomp(":").strip() == "Returns" )
								{
									//Skip return for Constructors.
									if(indexOf(fun.declaration(), "this (") > -1)
									{
										//Loop for multi line descriptons for this return.
										while(i+1 < comments.length && stilInParam(comments[i+1]))
											i++;
										continue;
									}

									ret ~= "Returns:";

									//Loop for multi line descriptons for this return.
									bool firstRun = true;
									while(i+1 < comments.length && stilInParam(comments[i+1]))
									{
										i++;
										ret ~= " " ~ comments[i].strip();
									}
								}
								else if(indexOf(comments[i], "See Also") == 0 || indexOf(comments[i], "Property Details") == 0)
								{
									//These sections get included with the last function.
									break;
								}
								else
								{
									//Add the rest to the description.
									description ~= comments[i];
								}
							}

							if(params.length > 0)
							{
								foreach(string line; params)
									description ~= line;
							}

							if(ret.length > 0)
								description ~= ret;

							if ( indexOf(fun.getExternal(), "GError**") > -1
								 && indexOf(fun.declaration(), "Error") == -1 )
							{
								description ~= "Throws: GException on failure.";
							}

							if ( indexOf(fun.declaration(), "this (") > -1 )
							{
								description ~= "Throws: ConstructionException GTK+ fails to create the object.";
							}

							return description;
						}

						if ( wrapper.includeComments() )
						{
							string[] comments;
							while ( line<lines.length )
							{
								//if ( !tooSoon )
								//{
								//	tooSoon = lines[line]=="Since 2.10";
								//}
								comments ~= lines[line++];
							}

							member ~= "/**";

							comments = phraseParams(comments);
							foreach(string line; comments)
								member ~= " * "~ line;

							member ~= " */";
						}
					}

					if ( tooSoon )
					{
						addComments();
						member ~= "// next release";
					}
					else
					{
						if ( !convParms.isInterface )
						{
							string externalDeclaration = fun.getExternal();
							
							/* Don't add repeated declarations. */
							bool addme = true;
												                
							foreach(ref string declaration; externalDeclarations)
							{
								if(externalDeclaration == declaration){ addme = false; break; }
							}

							if(addme) externalDeclarations ~= externalDeclaration;
						}
						// body
						if ( !convParms.omitCode(fun.name) && indexOf(fun.declaration(), "...") < 0 )
						{
							string gtkDDeclaration = fun.declaration();
							//string gtkDDeclaration = stringToGtkD(rawDeclaration,convParms,wrapper.getAliases());
							debug(declaration) writefln("Declaration\n\t%s\n\t%s",rawDeclaration, gtkDDeclaration);
							addComments();
							member ~= gtkDDeclaration~iFaceChar;
							if ( !convParms.isInterface )
							{
								member ~= "{";
								member ~= "// "~funct;
								member ~= fun.bod();
								member ~= "}";
							}
							/* Duplicated functions are omitted. */
							if(checkIfDupFunction(fun)) member.length = 0;
							checkIfGtkStructs(fun);
						}
					}
				}
			}
		}

		return member;
	}

	private bool checkIfDupFunction(Funct fun)
	{
		string signature = fun.convName~'('~fun.getWrapParametersType()~')';
		if ( signature in functionSignatures )
		{
			writefln("######################## duplicated function %s", signature);
			return true;
		}
		else
		{
			functionSignatures[signature] = 1;
			return false;
		}
	}

	/*
	 * Checks if the current line is still part of the param description.
	 * it does this by checking for things not normaly in the param description
	 * Params:
	 *  comments = Line to check.
	 * Returns: true if we are still in the description of the param.
	 */
	bool stilInParam(string comments)
	{
		return !(indexOf(comments, ":")  == comments.length-1 ||
						 comments.chomp(":").strip() == "Returns" ||
						 ( indexOf(comments, "Since 2.") == 0 || indexOf(comments, "Since 1.") == 0) ||
						 indexOf(comments, "See Also") == 0 ||
						 indexOf(comments, "Property Details") == 0 ||
						 comments == "<hr>");
	}

	/**
	 * Prints out the potential Gtk struct to be wrapped
	 * so that the wrap parameter can be set on the APILookupXXX.txt
	 * TODO assume all structs are to be wrapped an explicitly declare the ones not to be wrapped
	 * Params:
	 *    	fun =
	 */
	private void checkIfGtkStructs(Funct fun)
	{
		bool found = false;
		void check(string type)
		{
			if ( startsWith(type, 'G')
					&& endsWith(type, '*')
				)
			{
				if ( type in gtkStructs )
				{
					// nothing
				}
				else
				{
					found = true;
					gtkStructs[type] = 1;
					//writefln("######################## Gtk struct found %s\t\t%s",
					//		type,
					//		fun.convName~"("~fun.getWrapParametersType()~")"
					//		);

					string strct = type;
					string dName = "";
					string pack = "";
					if ( startsWith(strct, "Gtk") )
					{
						pack = "gtk";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ascii.toLower(dName[0]);
					}
					else if ( startsWith(strct, "Gdk") )
					{
						pack = "gdk";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ascii.toLower(dName[0]);
						if ( dName ==  "Pixbuf") pack = "gdkpixbuf";
					}
					else if ( startsWith(strct, "Gst") )
					{
						pack = "gstreamer";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ascii.toLower(dName[0]);
					}
					else if ( startsWith(strct, "G") )
					{
						dName = strct[1..strct.length-1];
						switch ( dName )
						{
							case "Object":

								if ( pack == "g" )
								{
									pack = "gobject"; dName = "ObjectG";
								}
								else if ( pack == "gdk" )
								{
									dName = "ObjectG";
								}
								else if ( pack == "gtk" )
								{
									dName = "ObjectGtk";
								}
								else if ( pack == "gstreamer" )
								{
									dName = "ObjectGst";
								}
								else if ( pack == "atk" )
								{
									dName = "ObjectAtk";
								}
								break;
							case "Closure": pack = "gobject"; break;
							case "Type": pack = "gobject"; break;
							case "Value": pack = "gobject"; break;
							case "List": pack = "glib"; dName = "ListG"; break;
							case "SList": pack = "glib"; dName = "ListSG"; break;
							case "String": pack = "glib"; dName = "StringG"; break;
							case "IOChannel": pack = "glib"; break;
							case "Quark": pack = "glib"; break;
							case "ParmSpec": pack = "gobject"; break;
							case "TypeModule": pack = "gobject"; break;
							case "Flags": pack = "gobject"; break;
							case "Enums": pack = "gobject"; break;
							default:
								pack = "g";
								break;
						}
					}
					debug(structs)writefln("import: %s.%s", pack, dName);
					debug(structs)writefln("structWrap: %s %s", strct, dName);
				}
			}
		}

		if ( !fun.ctor
			&& !endsWith(fun.convName, "Struct")
			)
		{
			check(fun.typeWrap);
		}
		foreach ( count , param ; fun.params )
		{
			if ( count > 0 || param.typeWrap != convParms.strct~'*' )
			{
				check(param.typeWrap);
			}
		}
	}

	/**
	 * Params:
	 *    	line = 	The API line of the function
	 *    	convParms = 	the Conversion parameters
	 * Returns:
	 */
	private string getFunction(string line, ConvParms* convParms)
	{
		debug(functionType) writefln("\ngetFunction line = %s", line);
		// void (*GChildWatchFunc) (GPid pid,  gint status,  gpointer data);
		// public typedef extern(C) void function(int, int, void*) GChildWatchFunc;



		string f = "extern(C) ";
		int pos = 0;
		string type = until(pos, line, "(");
		until(pos, line, "*");
		skip(pos, line, '*');
		string name = until(pos, line, ")");
		if (convParms.omitCode(name)) {
			return "";
		}

		f ~= stringToGtkD(type, convParms, wrapper.getAliases()).strip();
		f ~= " function(";

		until(pos, line, "(");
		skip(pos, line, '(');
		skipBlank(pos, line);

		string sourceParms = std.string.strip(until(pos, line, ")"));
		string parms;

		if ( sourceParms != "void" )
		{
			int sPos = 0;
			int count = 0;
			debug(functionType) writefln("sourceParms = %s", sourceParms);
			while ( sPos < sourceParms.length )
			{
				skipBlank(sPos, sourceParms);
				debug(functionType)writefln("parms sPos=%s [%s]",sPos, sourceParms[sPos..sourceParms.length]);
				if (count++ > 0 )
				{
					parms ~= ", ";
				}
				string pType = untilBlank(sPos, sourceParms);
				fixType(pType, sPos, sourceParms);

				string pName = until(sPos, sourceParms, ",)");

				debug(parmType)writefln("\tParameter type before = %s", pType);
				debug(parmName)writefln("\tParameter name before = %s", pName);
				adjustTypeName(pType, pName);
				debug(parmType)writefln("\tParameter type after = %s", pType);
				debug(parmName)writefln("\tParameter name after = %s", pName);

				parms ~= tokenToGtkD(pType, convParms, wrapper.getAliases()) ~" "~ idsToGtkD(pName, convParms, wrapper.getAliases());
				++sPos;
			}
		}

		if ( name == "ref" )
			 name = "doref";

		f ~= parms ~ ") " ~ name ~ ";";

		return f;
	}

	/**
	 * Wraps a set of lines in the block documentation comment
	 * Returns: The comment formated for D block documentation comment
	 */
	private string[] getDescription()
	{
		string[] desc;
		desc ~= "";
		desc ~= tabs ~ "/**";
		string[] block = getBlock ("Description", "Details");
		foreach ( string line; block )
		{
			if( startsWith(line, "--") && endsWith(line, "--") )
				line = std.array.replace(line, "-", "_");

			desc ~= " * " ~ line;
		}
		desc ~= tabs ~ " */";

		return desc;

	}

	/**
	 * Finds a block of lines delimited by the marker lines from the start of the text
	 * Params:
	 *    	startLine = 	The Start marker line
	 *    	endLine = 		The end marker line
	 * Returns: The block os lines
	 */
	private string[] getBlock(string startLine, string endLine)
	{
		currLine = 0;

		debug(getBlock) writefln("getBlock for ]%s,%s[", startLine, endLine);

		// TODO use slicing instead of this array
		string[] block;

		while ( currLine<inLines.length && inLines[currLine]!=startLine )
		{
			debug(getBlock) writefln("-\t\t[%s]%s",currLine,inLines[currLine]);
			++currLine;
		}

		return getUntil(endLine);
	}

	private int moveToBlockStart(string startLine, string[] inLines)
	{
		int startPos = 0;
		while ( startPos < inLines.length && inLines[startPos]!= startLine )
		{
			++startPos;
		}
		return startPos;
	}

	/**
	 * Gets all the non empty lines until a marker line
	 * Params:
	 *    	endLine = 	the marker line
	 * Returns:
	 */
	private string[] getUntil(string endLine)
	{
		bool end = false;

		string[] block;

		while ( currLine < inLines.length && !end )
		{
			if ( inLines[currLine] == endLine )
			{
				end = true;
				debug(getUntil) writefln("getBlock end at line %s",currLine,"\n");
			}
			else
			{
				if ( std.string.strip(inLines[currLine]).length > 0 )
				{
					block ~= inLines[currLine];
				}
				debug(getUntil) writefln("+[%s]%s",currLine,inLines[currLine]);
			}
			++currLine;
		}
		return block;
	}

	/**
	 * Gets all the non empty lines until a marker line
	 * Params:
	 *    	endLine = 	the marker line
	 * Returns:
	 */
	private string[] getUntil(string endLine, string[] lines)
	{
		bool end = false;
		int currLine;

		string[] block;

		while ( currLine < lines.length && !end )
		{
			if ( lines[currLine] == endLine )
			{
				end = true;
				debug(getUntil) writefln("getBlock end at line %s",currLine,"\n");
			}
			else
			{
				if ( std.string.strip(lines[currLine]).length > 0 )
				{
					block ~= lines[currLine];
				}
				debug(getUntil) writefln("+[%s]%s",currLine,lines[currLine]);
			}
			++currLine;
		}
		return block;
	}

	/**
	 * Converts a GTK strin to a GtkD string.
	 * This removes the "_" and capitalises the next letter and converts the basic types
	 * Params:
	 *    	gString =
	 * Returns:
	 */
	public static string stringToGtkD(string gString, ConvParms* convParms, string[string] aliases, bool caseConvert=true)
	{
		string converted;

		int pos = 0 ;
		string seps = " \n\r\t\f\v()[]*,;";

		char c = ' ';
		char pc;
		int start = 0;
		int end = 0;
		while ( pos < gString.length )
		{
			pc = c;
			c = gString[pos];
			if ( std.string.indexOf(seps,c) >= 0 )
			{
				end = pos;
				converted ~= tokenToGtkD(gString[start..end], convParms, aliases, caseConvert);
				if ( c=='*' )
				{
					//if ( pc==' ' )
					//{
					//	converted.length = converted.length-1;
					//}
					//converted ~= "[] ";
					converted ~= c;

				}
				else if ( c<=' ' )
				{
					if ( converted.length >0 && converted[converted.length-1] != ' ' )
					{
						converted ~= ' ';
					}
					c = ' ';
				}
				else
				{
					converted ~= c;
				}
				start = pos+1;
			}
			++pos;
		}
		if ( pos > start )
		{
			converted ~= tokenToGtkD(gString[start..pos], convParms, aliases, caseConvert);
		}
		return converted;
	}


	public static string idsToGtkD(string gToken, ConvParms* convParms, string[string] aliases, bool caseConvert=true)
	{
		string converted = tokenToGtkD(gToken, convParms, aliases, caseConvert);
		switch ( converted )
		{
			case "alias" : converted = "alia"; break;
			case "class" : converted = "clss"; break;
			case "interface" : converted = "intrface"; break;
			case "debug" : converted = "dbug"; break;
			case "version" : converted = "vrsion"; break;
			case "out" : converted = "f_out"; break;
			case "in" : converted = "f_in"; break;
			case "inout" : converted = "f_inout"; break;
			//case "ref" : converted = "doref"; break; // TODO why wasn't this converted from the alias on APILookup.txt
			default:
				// done
				break;
		}
		return converted;
	}

	/**
	 * Convert for normal GtkD conversion and after verifies if is necessary to use a enumType for references enum values
	 * Params:
	 *    	enumType =
	 *    	gToken =
	 *    	convParms =
	 *    	aliases =
	 *    	caseConvert =
	 * Returns:
	 */
	public static string enumToGtkD(string enumType, string gToken, ConvParms* convParms, WrapperIF wrapper, bool caseConvert=true)
	{
		debug(enumToGtkD)writefln("enumLine (%s) BEFORE %s", enumType, gToken);
		string converted = stringToGtkD(gToken, convParms, wrapper.getAliases());

		sizediff_t pos = std.string.indexOf(converted, '=');
		debug(enumToGtkD)writefln("\t pos = %s", pos);
		if ( pos > 0 )
		{
			string refValue = std.string.strip(converted[pos+1..converted.length]);
			converted = converted[0..pos+1]~ " ";

			debug(enumToGtkD)writefln("\t refValue = %s", refValue);
			bool needComa = false;
			if ( endsWith(refValue, ',') )
			{
				refValue = std.string.strip(refValue[0..refValue.length-1]);
				needComa = true;
			}

			debug(enumToGtkD)writefln("\t refValue = %s", refValue);

			debug(enumToGtkD)
			{
				foreach(string key ; wrapper.getEnumTypes().keys)
				{
					writefln("\t\t [%s] = %s", key, wrapper.getEnumTypes()[key]);
				}
			}

			if ( std.string.indexOf(refValue, ' ') > 0 && std.string.indexOf(refValue, '<') > 0 )
			{
				string[] parts = std.string.split(refValue);

				foreach ( part; parts )
				{
					if ( startsWith(part, "(") )
					{
						converted ~= "(";
						part = part[1 .. $];
					}

					if ( part in wrapper.getEnumTypes() )
					{
						part = wrapper.getEnumTypes()[part] ~" ";
					}
					else if ( std.string.indexOf(part, "<<") > 0 )
					{
						string[] values = std.string.split(part, "<<");

						if ( values[0] in wrapper.getEnumTypes() )
							values[0] = wrapper.getEnumTypes()[values[0]];
						if ( values[1] in wrapper.getEnumTypes() )
							values[1] = wrapper.getEnumTypes()[values[1]];

						part = values[0] ~" << "~ values[1] ~ " ";
					}

					converted ~= part ~" ";
				}
			}
			else if ( refValue in wrapper.getEnumTypes() )
			{
				converted ~= wrapper.getEnumTypes()[refValue];
			}
			else
			{
				converted ~= refValue;
			}

			converted = std.string.stripRight(converted);

			if (needComa)
				converted ~= ",";
		}
		debug(enumToGtkD)writefln("enumLine (%s) AFTER  %s", enumType, converted);

		return converted;
	}

	/**
	 * Converts a GTK token to a Dui token
	 * This removes the "_" and capitalises the next letter and converts the basic types.
	 * Doesn't do it if it's cairo name
	 * Params:
	 *    	gToken =
	 * Returns:
	 */
	public static string tokenToGtkD(string gToken, ConvParms* convParms, string[string] aliases, bool caseConvert=true)
	{
		string converted;

		debug(tokenToGtkD) writefln("gToken=>>>%s<<<", gToken);

		if ( (aliases !is null) && (gToken in aliases) )
		{
			converted = aliases[gToken];
		}
		else if ( (convParms.aliases !is null) && (gToken in convParms.aliases) )
		{
			converted = convParms.aliases[gToken];
		}
		else if ( endsWith(gToken, "_t") && startsWith(gToken,"cairo_") )
		{
			converted = gToken;
		}
		else if ( endsWith(gToken, "_t*") && startsWith(gToken,"cairo_") )
		{
			converted = gToken;
		}
		else if ( endsWith(gToken, "_t**") && startsWith(gToken,"cairo_") )
		{
			converted = gToken;
		}
		else if ( startsWith(gToken,"f_") && (endsWith(gToken,"_out") || endsWith(gToken,"_in") || endsWith(gToken,"_inout") ) )
		{
			converted = gToken;
		}
		else if ( caseConvert )
		{
			converted = gToken.removePrefix(convParms).removeUnderscore();
			// do it again after the gToken is converted
			if ( (aliases !is null) && (converted in aliases) )
			{
				converted = aliases[converted];
			}
		}
		else
		{
			converted = gToken;
		}

		debug(tokenToGtkD) writefln("converted=>>>%s<<<\n", converted);

		return converted;
	}



	/**
	 * Moves '*' and 'const' and trailing '[]' from the name to the type token
	 * Params:
	 *    	type =
	 *    	name =
	 */
	public static void adjustTypeName(ref string type, ref string name)
	{
		debug(type)writefln("type before %s", type);
		debug(name)writefln("name before %s", name);
		name = std.string.strip(name);
		while ( name.length > 0
				&& (GtkDClass.startsWith(name,"const") || name[0] == '*'
				|| GtkDClass.startsWith(name,"G_GNUC_MAY_ALIAS") )
				)
		{
			if ( name[0] == '*' )
			{
				type = type ~ '*';
				name = std.string.strip(name[1..name.length]);
			}
			else if (GtkDClass.startsWith(name,"const"))
			{
				name = std.string.strip(name[5..name.length]);
			}
			else
			{
				name = std.string.strip(name[16..name.length]);
			}
			name = std.string.strip(name);
		}
		while ( GtkDClass.endsWith(name, "[]") )
		{
			type ~= "*";
			name = std.string.strip(name[0..name.length-2]);
		}
		debug(type)writefln("type after %s", type);
		debug(name)writefln("name after %s", name);
	}

	/**
	 * Consumes "const" and "unsigned" adding "u" to the type when "unsigned" is found
	 * (? uchar will become just char)
	 * Params:
	 *    	type =
	 *    	p =
	 *    	text =
	 */
	public static void fixType(ref string type, ref int p, ref string text)
	{
		if ( type == "const" || type == "struct" )
		{
			GtkDClass.skipBlank(p, text);
			type = untilBlank(p, text);
		}
		if ( type == "unsigned" )
		{
			GtkDClass.skipBlank(p, text);
			type = "u" ~ untilBlank(p, text);
		}
		if ( startsWith(type, "_") )
		{
			type = type[1..$];
		}
//		if ( type == "uchar" )
//		{
//			type = "char";
//		}
	}




	public static bool startsWith(string str, string prefix)
	{
		return str.length >= prefix.length
				&& str[0..prefix.length] == prefix;
	}

	public static bool startsWith(string str, char prefix)
	{
		return str.length > 0
				&& str[0] == prefix;
	}

	public static bool endsWith(string str, string suffix)
	{
		return str.length >= suffix.length
				&& str[str.length-suffix.length..str.length] == suffix;
	}

	public static bool endsWith(string str, char suffix)
	{
		return str.length >= 1
				&& str[str.length-1] == suffix;
	}

}
	
string removePrefix(string gToken, string prefix)
{
	if ( startsWith(gToken, prefix) )
	{
		return gToken[prefix.length..gToken.length];
	}
	return gToken;
}

string removePrefix(string gToken, ConvParms* convParms)
{
	//debug(tokenToGtkD) writefln("gToken.length > prefix.length %s",gToken.length > convParms.prefix.length);
	string prefix = convParms.getPrefix(gToken);
	if ( prefix.length > 0 )
	{
		return gToken[prefix.length..gToken.length];
	}

	return gToken;

}

string removeUnderscore(string gToken)
{
	string converted;

	char c = ' ';
	char pc = ' ';
	char ppc = ' ';
	int pos = 0;
	while ( pos < gToken.length )
	{
		c = gToken[pos];
		if ( pc == '_' )
		{
			c = to!char(std.ascii.toUpper(c));
		}
		else if ( c == '_' && std.ascii.isLower(pc) )
		{
			pc = c;
			c = '\0';
		}

		if ( c > '\0' )
		{
			if ( ppc == '_'
					&& pc == 'g'
					&& c == 'l'
					&& gToken.length-1 > pos
					&& gToken[pos+1] == '_'
				 )
			{
				c = 'L';
			}
			ppc = pc;
			pc = gToken[pos];
			converted ~= c;
		}
		++pos;
	}
	return converted;
}

