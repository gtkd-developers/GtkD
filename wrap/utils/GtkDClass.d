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
private import utils.StringUtils;
private import utils.StringTemplate;

private import std.ascii;
private import std.path : buildPath;
private import std.stdio;
private import std.array;
private import std.algorithm : map, canFind, countUntil;
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
		//writefln("collectStructs %s", inLines[currLine].strip);
		this.inAPI = inAPI;
		if ( convParms.isInterface ) iFaceChar = ";";
		else iFaceChar = "";
		HtmlStrip stripper = new HtmlStrip();
		inLines = stripper.strip(inAPI).splitLines();
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
		gtkDText ~= privPub ~" import glib.ConstructionException;\n\n";
		
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
		
		// the use of phobos is limited, maybe we can get by with this...
		
		string[][string] tangoImportConvs = [
			"std.stdio" : ["tango.io.Stdout"],
			"std.thread" : ["tango.core.Thread"],
			"std.string" : ["tango.text.Util", "tango.text.Unicode"],
			"std.c.string" : ["tango.stdc.string"],
			"std.c.stdio" : ["tango.stdc.stdio"],
			"std.gc" : ["tango.core.Memory"],
			"std.stdarg" : ["tango.core.Vararg"],
			"std.conv" : ["tango.text.convert.Integer"]
		];

		string[][string] druntimeImportConvs = [
			"std.thread" : ["core.thread"],
			"std.c.string" : ["core.stdc.string"],
			"std.gc" : ["core.memory"],
			"std.stdarg" : ["core.vararg"]
		];

		string[][string] phobos2ImportConvs = [
			"std.stdio" : ["std.stdio"],
			"std.c.stdio" : ["std.c.stdio"],
			"std.string" : ["std.string"],
			"std.conv" : ["std.conv"]
		];
		
		string importTango = "\nversion(Tango) {\n";
		string importDruntime = "} else version(D_Version2) {\n";
		string importElse = "} else {\n";
		string importCommon = "\n";
		
		int countTango;
		int countDruntime;
		
		foreach( string imprt ; convParms.imprts )
		{
			string format(string a) { return "\t" ~ privPub ~ " import " ~ a ~ ";\n"; }

			string formats(string[] as) { return join(map!format(as)); }

			if ( imprt in druntimeImportConvs )
			{
				++countDruntime;
				importDruntime ~= formats(druntimeImportConvs[imprt]);
			}

			if ( imprt in phobos2ImportConvs )
			{
				importDruntime ~= formats(phobos2ImportConvs[imprt]);
			}

			if ( imprt in tangoImportConvs )
			{
				++countTango;
				importTango ~= formats(tangoImportConvs[imprt]);
				importElse ~= format(imprt);
			}
			else
			{
				importCommon ~= format(imprt).stripLeft;
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
		inLines = stripper.strip(inAPI).splitLines();
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
			h = "public interface " ~ convParms.interf;
		}
		else if ( convParms.templ.length == 0 )
		{
			h = "public class " ~ convParms.clss;
		}
		else
		{
			h = "public template " ~ convParms.clss ~ "(";
			h ~= std.array.join(convParms.templ, ", ");
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
				text ~= description;
			}

			text ~= getClassHeader(convParms, gtkDParentName)
				~ getImplements(convParms, gtkDParentName);
			text ~= "{";
		}

		if ( convParms.strct.length > 0 )
		{
			string gtkStruct = convParms.realStrct.length > 0
								? convParms.realStrct
								: convParms.strct;
			string var = toVar(gtkStruct);


			string getPrefix =
				gtkDParentName == "GioMountOperation" ? "getGtk" : "get";

			string overrideGetStruct =
					(gtkDParentName.length > 0 && gtkDParentName != "Boxed") ? "override " : "";

			bool notIF = !convParms.isInterface;
			bool hasClass = convParms.clss.length > 0;
			bool hasTempl = convParms.templ.length > 0;

			static immutable string tmplStruct = import("templates/struct.txt");
			mixin(formatTemplate("text", tmplStruct));

			// GObject has a specific constructor for the struct
			if ( hasClass && !hasTempl &&
					"GObject" != convParms.strct  &&
					!convParms.isInterface )
			{
				// template section guards
				bool notBoxed = parentName.length > 0 && gtkDParentName != "Boxed";

				bool notBoxedOrSurface = notBoxed && gtkDParentName != "Surface";

				bool notBoxedOrSurface_D =
					gtkDParentName.length > 0 && gtkDParentName != "Surface" && gtkDParentName != "Boxed";

				static immutable string tmpl = import("templates/struct_constructor.txt");
				mixin(formatTemplate("text", tmpl));
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
		string code = convParms.isInterface ?
			convParms.interfaceCode : convParms.classCode;

		if (!code.empty)
		{
			text ~= "";
			text ~= array(map!strip(code.splitLines()));
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
				while ( i < inLines.length && !startsWith(inLines[i].strip, "+----") )
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
					next = inLines[i-1].strip;	// many times "GObject"
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
						&& startsWith(inLines[i].strip, "+----")
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

		if ( startsWith(gName, "Gtk") )		prefix = "Gtk";
		else if ( startsWith(gName, "Gio") )	prefix = "";
		else if ( startsWith(gName, "Gdk") )	prefix = "Gdk";
		else if ( startsWith(gName, "Gst") )	prefix = "Gst";
		else if ( startsWith(gName, "Gda") )	prefix = "Gda";
		else if ( startsWith(gName, "Atk") )	prefix = "Atk";
		else if ( startsWith(gName, "G") )	prefix = "G";
		else if ( startsWith(gName, "Pango") )	prefix = "Pg";
		else if ( startsWith(gName, "cairo") )	prefix = "cairo";

		conv = gName[prefix.length..gName.length];

		if ( conv == "Object" ) conv ~= prefix;
		if ( prefix == "Pg" ) conv = "Pg" ~ gName[5 .. $];
		if ( prefix == "cairo") conv = gName[6..7].toUpper ~ gName[7 .. $ - 2];

		debug(getParent)writefln("convertClassName %s >>> %s", gName, conv);
		prefix = prefix.toLower;

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
				impls ~= "/+implements+/ ";
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

				Funct fun;
				fun.init(funct, convParms);

				string gtkDSignal = signalNameToGtkD(signalName);
				string delegateDeclaration = fun.getDelegateDeclaration(convParms, 1);

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
						~fun.getCallbackParameters(0, convParms, wrapper.getAliases())
						~")";
			}
			else
			{
				text ~= "extern(C) static void callBack"~gtkDSignal~"("
						~ std.array.replace(fun.getCallbackParameters(0, convParms, wrapper.getAliases()), "string", "str")
						~")";
			}
			text ~= "{";
			text ~= "	foreach ( "~dlg~" dlg ; "~getClassVar(convParms)~".on"~gtkDSignal~"Listeners )";
			text ~= "	{";
			if ( startsWith(dlg, "bool") )
			{
				text ~= "		if ( dlg("~fun.getCallbackVars(convParms, wrapper.getAliases())~") )";
				text ~= "		{";
				text ~= "			return 1;";
				text ~= "		}";
				text ~= "	}";
				text ~= "	";
				text ~= "	return 0;";
			}
			else
			{
				text ~= "		dlg("~ std.array.replace(fun.getCallbackVars(convParms, wrapper.getAliases()), "string", "str")~");";
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
				&& indexOf(lines[line], ")")<0
			)
		{
			funct ~= lines[line]~ " ";
			debug(endFunction)writefln("funct line = >>>%s<<< endWith(\");\") = ",
										lines[line],
										endsWith(lines[line], ");")
										);
			++line;
		}
		if ( line<lines.length && indexOf(lines[line], ")")>0 )
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
			&& indexOf(lines[defLine],"G_TYPE_MAKE_FUNDAMENTAL")>=0
			&& endsWith(lines[defLine],")")
			&& indexOf(lines[defLine],"<<") < 0
			)
		{
			sizediff_t pos = indexOf(lines[defLine], "(");
			if ( pos > 0 )
			{
				sizediff_t posf = indexOf(lines[defLine], ")");
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

			sizediff_t pos = indexOf(line[12..line.length],' ')+12;
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
					stockValue = line[pos+1..line.length].strip;
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
		string[] tokens = split(until(pos, lines[1], ';'));

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
				&& !endsWith(lines[pos].strip,'{')
				&& !startsWith(lines[pos].strip,'{')
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
			string enumPrefix = getEnumPrefix(enumName, lines[pos].strip);
			while ( pos<lines.length && lines[pos][0] != '}' )
			{
				debug(enums)writefln("\tenum line %s", lines[pos]);

				string value = lines[pos++].strip().chomp("\\");
				debug(enums)writefln("\traw       %s", value);
				value = enumToGtkD(enumName, value, convParms, wrapper);
				debug(enums)writefln("\tprocessed %s", value);

				//if ( indexOf(value, ":") >= 0 )
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
					if ( enumName == "cairo_ps_level_t" )
					{
						v = "LEVEL_"~v;
					}
					else if ( v.length > 2 )
					{
						switch (v[0..3])
						{
							case "2BI": v = "TOO_"~v[1..v.length]; break;
							case "2BU": v = "DOUBLE_"~v[1..v.length]; break;
							case "3BU": v = "TRIPLE_"~v[1..v.length]; break;
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
			string value = lines[pos++].strip;
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
				debug(structs)writefln("collectStructs %s",lines[pos].strip);
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
			string funct = split(def, ";")[0];
			string comment = split(def, ";")[1];

			string[] splitFunct = split(funct, "(");

			string name = (splitFunct[1][1..$-2] == "ref") ? "doref" : splitFunct[1][1..$-2];

			return splitFunct[0] ~ " function(" ~ ((splitFunct[2][0..$-1] == "void") ? ")" : splitFunct[2]) ~" "~ name ~";"~ comment;
		}

		bool bitField = false;	// if we are in a bit field
		int bitFieldNr; // Number apended to bit field
		int bits; // Bits used in the curent bit field

		for ( int i; i < structDef.length; i++ )
		{
			// Remove GSEAL macro
			if ( indexOf(structDef[i], "GSEAL (") > -1 )
			{
				structDef[i] = std.array.replace(structDef[i], "GSEAL (", "");
				structDef[i] = std.array.replace(structDef[i], ")", "");
			}

			string elem = stringToGtkD(structDef[i], convParms, wrapper.getAliases());

			if ( startsWith(elem, "*") && indexOf(elem, "+/") < elem.length - 2)
				elem = std.array.replace(elem, "/", "\\"); //Some comments are broken
		
			if ( indexOf(elem, "unsigned long") == 0)
				elem = "ulong"~ elem[13..$];  //TODO: posibly use fixtype

			if ( indexOf(structDef[i], ":") >= 0 && (indexOf(structDef[i], ":") <  indexOf(structDef[i], "/+*") ||  indexOf(structDef[i], "/+*") == -1) )
			//Bit fields.
			{
				if ( !bitField )
				{
					bitField = true;
					collectedStructs ~= "\tuint bitfield" ~ to!string(bitFieldNr) ~";";
				}
				if (indexOf(elem, "/+*") > 0 && indexOf(elem, "+/") < 0)
				{
					string[] parts = split(elem, "/+*");
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
			else if ( indexOf(elem, "#") > -1 && indexOf(elem, "#") < 2 )
			//Versions.
			{
				if ( indexOf(elem, "#if defined (G_OS_WIN32) GLIB_SIZEOF_VOID_P == 8") > -1 )
				{
					//GLIB_SIZEOF_VOID_P == 8 means 64 bit. assuming WIN32 is an bad name for just windows.
					collectedStructs ~= "version(Win64)";
					collectedStructs ~= "{";
				}
				if ( indexOf(elem, "#ifndef") == 0 )
				{
					collectedStructs ~= "version("~ elem[8..$] ~")";
					collectedStructs ~= "{";
				}
				else if ( indexOf(elem, "#else") == 0 )
				{
					collectedStructs ~= "}";
					collectedStructs ~= "else";
					collectedStructs ~= "{";
				}
				else if ( indexOf(elem, "#endif") == 0 )
				{
					collectedStructs ~= "}";
				}
			}
			else if ( indexOf(elem, "(") > 0 && !startsWith(elem, "* ") && !startsWith(elem, "/+*") )
			//Function Pointers.
			{
				string funct;
				for ( ; i < structDef.length; i++ )
				{
					funct ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());

					if ( indexOf(structDef[i], ");") > 0 )
						break;
				}

				collectedStructs ~= "extern(C) " ~ getFunctionPointer(funct, i);
			}
			else if( indexOf(elem, "{") > 0 )
			//Nested Structs and unions.
			{
				string structUnion = split(structDef[i])[0];
				int parentCount;
				string[] def;

				for ( i++; i < structDef.length; i++ )
				{
					if ( indexOf(structDef[i], "{") > -1 )
						parentCount++;

					if ( indexOf(structDef[i], "}") > -1 && parentCount-- == 0)
						break;

					def ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());
				}
				
				string varName = stringToGtkD(split(structDef[i])[1][0..$-1], convParms, wrapper.getAliases());
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

		Funct fun;
		fun.init(funct, convParms);

		/**
		 * Checks restrictions on the functions to include
		 * Params:
		 *    	lines =
		 *    	prefix =
		 * Returns:
		 */
		bool includeFunction(ConvParms* convParms)
		{
			bool inc = !canFind!"startsWith(b, a)"(convParms.noPrefixes, fun.name);

			inc = inc &&
				( convParms.containsPrefix(fun.name) ||
					!( convParms.strictPrefix && convParms.prefixes.length>0 ));

			return inc;
		}

		if ( !includeFunction(convParms) )
			return member;

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
					collectedTypes ~= array(lines[line .. $].map!q{" * " ~ a});
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
						collectedFuncts ~= getFunction(funct, convParms);
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
								if(indexOf(fun.declaration(convParms,wrapper.getAliases()), param) == -1)
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
								if(indexOf(fun.declaration(convParms,wrapper.getAliases()), "this (") > -1)
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

						if ( indexOf(fun.getExternal(convParms, wrapper.getAliases()), "GError**") > -1
								&& indexOf(fun.declaration(convParms,wrapper.getAliases()), "Error") == -1 )
						{
							description ~= "Throws: GException on failure.";
						}

						if ( indexOf(fun.declaration(convParms,wrapper.getAliases()), "this (") > -1 )
						{
							description ~= "Throws: ConstructionException GTK+ fails to create the object.";
						}

						return description;
					}

					if ( wrapper.includeComments() )
					{
						string[] comments = lines[line .. $].dup;
						comments = phraseParams(comments);

						member ~= "/**";
						member ~= array(map!q{" * " ~ a}(comments));
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
						string externalDeclaration = fun.getExternal(convParms, wrapper.getAliases());

						/* Don't add repeated declarations. */
						if ( !canFind(externalDeclarations, externalDeclaration) )
						{
							externalDeclarations ~= externalDeclaration;
						}
					}
					// body
					if ( !convParms.omitCode(fun.name) && indexOf(fun.declaration(convParms,wrapper.getAliases()), "...") < 0 )
					{
						string gtkDDeclaration = fun.declaration(convParms,wrapper.getAliases());
						//string gtkDDeclaration = stringToGtkD(rawDeclaration,convParms,wrapper.getAliases());
						debug(declaration) writefln("Declaration\n\t%s\n\t%s",rawDeclaration, gtkDDeclaration);
						addComments();
						member ~= gtkDDeclaration~iFaceChar;
						if ( !convParms.isInterface )
						{
							member ~= "{";
							member ~= "// "~funct;
							version( noGtkBody )
							{
								//									switch ( fun.typeWrap )
								//									{
								//										case "void": break;
								//										case "int", "uint", "bool", "long", "ulong"
								//											member ~= "return 0;";
								//											break;
								//
								//										case "int", "uint", "bool", "long", "ulong"
								//											member ~= "return 0;";
								//											break;
								//
								//										case "string": member ~= "return "";"; break;
								//										default: member ~= "return null;"; break;
								//									}
							}
							else
							{
								member ~= fun.bod(convParms, wrapper.getAliases());
							}
							member ~= "}";
						}
						/* Duplicated functions are omitted. */
						if(checkIfDupFunction(fun)) member.length = 0;
						checkIfGtkStructs(fun);
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
	static bool stilInParam(string comments)
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
		foreach ( int count , string parm ; fun.parmsWrap )
		{
			if ( count > 0 || parm != convParms.strct~'*' )
			{
				check(parm);
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



		string f = "public alias extern(C) ";
		int pos = 0;
		string type = until(pos, line, "(");
		until(pos, line, "*");
		skip(pos, line, '*');
		string name = until(pos, line, ")");
		if (convParms.omitCode(name)) {
			return "";
		}

		f ~= stringToGtkD(type, convParms, wrapper.getAliases());
		f ~= " function (";

		until(pos, line, "(");
		skip(pos, line, '(');
		skipBlank(pos, line);

		string sourceParms = until(pos, line, ")").strip;
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

				parms ~= tokenToGtkD(pType, convParms, wrapper.getAliases());
				++sPos;
			}
		}

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
				if ( inLines[currLine].strip.length > 0 )
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
				if ( lines[currLine].strip.length > 0 )
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
			if ( indexOf(seps,c) >= 0 )
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
		auto replace = [
			"alias"     : "alia",
			"class"     : "clss",
			"debug"     : "dbug",
			"in"        : "f_in",
			"inout"     : "f_inout",
			"interface" : "intrface",
			"out"       : "f_out",
			"version"   : "vrsion"
				];

		string converted = tokenToGtkD(gToken, convParms, aliases, caseConvert);
		return replace.get(converted, converted);
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

		sizediff_t pos = indexOf(converted, '=');
		debug(enumToGtkD)writefln("\t pos = %s", pos);
		if ( pos > 0 )
		{
			string refValue = converted[pos+1..converted.length].strip;
			converted = converted[0..pos+1]~ " ";

			debug(enumToGtkD)writefln("\t refValue = %s", refValue);
			bool needComa = false;
			if ( endsWith(refValue, ',') )
			{
				refValue = refValue[0..refValue.length-1].strip;
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

			if ( indexOf(refValue, ' ') > 0 && indexOf(refValue, '<') > 0 )
			{
				string[] parts = split(refValue);

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
					else if ( indexOf(part, "<<") > 0 )
					{
						string[] values = split(part, "<<");

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

			converted = converted.stripRight;

			if (needComa)
				converted ~= ",";
		}
		debug(enumToGtkD)writefln("enumLine (%s) AFTER  %s", enumType, converted);

		return converted;
	}

	/**
	 * Converts a GTK token to a gtkD token
	 * This removes the "_" and capitalises the next letter and converts the basic types.
	 * Doesn't do it if it's cairo name
	 * Params:
	 *    	gToken =
	 * Returns:
	 */
	public static string tokenToGtkD(string gToken, ConvParms* convParms, string[string] aliases, bool caseConvert=true)
	{
		bool match(string prefix, string suffix)
		{
			return gToken.startsWith(prefix) && gToken.endsWith(suffix);
		}

		bool isCairo()
		{
			return match("cairo_", "_t")
				|| match("cairo_", "_t*")
				|| match("cairo_", "_t**")
				|| match("f_", "_in")
				|| match("f_", "_out")
				|| match("f_", "_inout");
		}

		bool checkAlias(string[string] a)
		{
			return ((a !is null) && (gToken in a));
		}

		string converted;

		debug(tokenToGtkD) writefln("gToken=>>>%s<<<", gToken);

		if ( checkAlias(aliases) )
		{
			converted = aliases[gToken];
		}
		else if ( checkAlias(convParms.aliases) )
		{
			converted = convParms.aliases[gToken];
		}
		else if ( isCairo() )
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
		alias utils.StringUtils.removePrefix stripPrefix;
		debug(type)writefln("type before %s", type);
		debug(name)writefln("name before %s", name);
		name = name.strip;
		while ( name.length > 0 )
		{
			auto l = name.length;

			if ( name[0] == '*' )
				type = type ~ '*';

			name = stripPrefix(name, "*");
			name = stripPrefix(name, "const");
			name = stripPrefix(name, "G_GNUC_MAY_ALIAS");
			name = name.strip;
			if (l == name.length)
				break;
		}

		while ( name.endsWith("[]") )
		{
			type ~= "*";
			name = name[0 .. $ - 2].strip;
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
			skipBlank(p, text);
			type = untilBlank(p, text);
		}
		if ( type == "unsigned" )
		{
			skipBlank(p, text);
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
}
	
string removePrefix(string gToken, ConvParms* convParms)
{
	string prefix = convParms.getPrefix(gToken);
	return utils.StringUtils.removePrefix(gToken, prefix);
}
