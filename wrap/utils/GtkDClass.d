/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
private import utils.convparms;
private import utils.funct;

private import std.ctype;
private import std.path;
private import std.stdio;
private import std.string;

public class GtkDClass
{
	private WrapperIF wrapper;
	private char[] inAPI;
	private char[][] inLines;
	int currLine;

	private int status = 0;
	private int countBlock = 0;

	ConvParms* convParms;

	char[] iFaceChar = "";

	private char[] parentName;				/// gtk parent struct
	private char[] gtkDParentName;			/// gtkD parent name
	private char[] gtkDParentNamePrefix;	/// gtkD parent name package

	private char[][] externalDeclarations;			/// the external definition to pass to  the wrapper

	private char[][] collectedAliases;	/// public, module level type aliases
	private char[][] collectedEnums;	/// public, module level definitions of enums
	private char[][] stockEnums;		/// special enums for the SotckID
	private char[][] gTypes;			/// special enums for G_TYPE_*
	private char[][] stockChars;		/// the char[] value for the stockIDs
	private char[][] collectedStructs;	/// public, module level definitions of structs
	private char[][] collectedTypes;	/// public, module level definitions of other types
	private char[][] collectedFuncts;	/// public, module level definitions of functions
	private char[][] collectedUnions;	/// public, module level definitions of unions
	private char[][] collectedConstants;/// public, module level constants


	private char[] gtkDText;

	private char[][] properties;
	private char[][] styleProperties;
	private char[][] signals;
	private char[][] description;
	char[][] members;

	int[char[]] functionSignatures;
	int[char[]] gtkStructs;


	private bool needSignalImports;

	private char[] tabs;	/// used for simple indentation

	public this (WrapperIF wrapper )
	{
		this.wrapper = wrapper;
	}

	public char[][] getExternalDeclarations()
	{
		return externalDeclarations;
	}

	public char[][] getAliases()
	{
		return collectedAliases;
	}

	public char[][] getConstants()
	{
		return collectedConstants;
	}

	public char[][] getEnums()
	{
		return collectedEnums;
	}
	public char[][] getStockEnums()
	{
		return stockEnums;
	}
	public char[][] getStockChars()
	{
		return stockChars;
	}

	public char[][] getGTypes()
	{
		return gTypes;
	}

	public char[][] getStructs()
	{
		return collectedStructs;
	}

	public char[][] getTypes()
	{
		return collectedTypes;
	}

	public char[][] getFuncts()
	{
		return collectedFuncts;
	}

	public char[][] getUnions()
	{
		return collectedUnions;
	}

	public int getError()
	{
		return status;
	}

	private int[char[]] getCleanSigns()
	{
		int[char[]] cleanSignature;
		return cleanSignature;
	}

	/** Construct the wrapped class according to all the collected
	 *  information.
	 */
	public void openGtkDClass(char[] inAPI, ConvParms* convParms)
	{
		//writefln("collectStructs %s", std.string.strip(inLines[currLine]));
		this.inAPI = inAPI;
		if ( convParms.isInterface ) iFaceChar = ";";
		else iFaceChar = "";
		HtmlStrip stripper = new HtmlStrip();
		inLines = std.string.splitlines(stripper.strip(inAPI));
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

		externalDeclarations ~= "";
		externalDeclarations ~= "// " ~ convParms.outPack ~ '.' ~ convParms.clss;
		externalDeclarations ~= "";

		gtkDText = wrapper.getLicense();

		convParms.appendAsComment(gtkDText);

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

		/* Deprecated */ /*
		gtkDText ~= getNoAssertVersion(); */

		/* Type information should be publicly imported by all modules. */
		gtkDText ~= "public  import " ~convParms.bindDir~ "." ~convParms.outPack~ "types;\n\n";
		gtkDText ~= "private import " ~convParms.bindDir~ "." ~convParms.outPack ~ ";\n";
		gtkDText ~= "private import glib.ConstructionException;\n\n";
		
		// move signal imports out of classes - JJR
		if (needSignalImports)
		{
			int i = moveToBlockStart("Signal Details", inLines);
			// if "Signal Details" exists in API Lines
			// than we know that we need signal imports.
			if (i < inLines.length)
			{
				gtkDText ~= "private import gobject.Signals;\n";
				gtkDText ~= "public  import gtkc.gdktypes;\n";
			}	
		}	
		
		// the use of phobs is limited, maybe we can get by with this...
		
		char[][][char[]] tangoImportConvs;
		tangoImportConvs["std.stdio"] = ["tango.io.Stdout"];
		tangoImportConvs["std.thread"] = ["tango.core.Thread"];
		tangoImportConvs["std.string"] = ["tango.text.Util"];
		tangoImportConvs["std.c.string"] = ["tango.stdc.string"];
		tangoImportConvs["std.c.stdio"] = ["tango.stdc.stdio"];
		tangoImportConvs["std.gc"] = ["tango.core.Memory"];
		tangoImportConvs["std.stdarg"] = ["tango.core.Vararg"];
		
		char[] importTango = "\nversion(Tango) {\n";
		char[] importElse = "} else {\n";
		char[] importCommon = "\n";
		
		int countTango;
		
		foreach( char[] imprt ; convParms.imprts )
		{
			if ( imprt in tangoImportConvs )
			{
				++countTango;
				foreach ( char[] tangoImp ; tangoImportConvs[imprt] )
				{ 
					importTango ~= "\tprivate import "~tangoImp~";\n";
				}
				importElse ~= "\tprivate import "~imprt~";\n";
			}
			else
			{
				importCommon ~= "private import "~imprt~";\n";
			}
		}
		
		gtkDText ~= importCommon~"\n";
		if ( countTango > 0 )
		{
			gtkDText ~= importTango;
			gtkDText ~= importElse~"}\n";
		}

		properties.length = 0;
		styleProperties.length = 0;
		signals.length = 0;

		readGtkDClass(convParms);

		/*
		// moved to GdkWrapper.d
		append(text, collectedAliases, tabs);
		append(text, collectedEnums, tabs);
		append(text, collectedStructs, tabs);
		append(text, collectedTypes, tabs);
		append(text, collectedFuncts, tabs);
		append(text, collectedUnions, tabs);
		*/

		gtkDText ~= "\n";

		foreach ( char[] key ; convParms.mAliases.keys.sort )
		{
			gtkDText ~= "public alias "~key~" "~convParms.mAliases[key]~";";
		}
		gtkDText ~= "\n";

		// reset the parent name
		parentName = null;
		gtkDParentName = "";

		char[][] classHead = openClass(convParms);
		append(gtkDText, classHead, tabs);

	}
	/* Deprecated */ /*
	private char[] getNoAssertVersion()
	{
		return 
			"version(noAssert)"
			"\n{"
			"\n	version(Tango)"
			"\n	{"
			"\n		import tango.io.Stdout;	// use the tango loging?"
			"\n	}"	
			"\n}"
			"\n"
			"\n"
			;
	}*/

	private void readGtkDClass(ConvParms* convParms)
	{
		description = getDescription();
		properties ~= getProperties();
		styleProperties ~= getStyleProperties();
		signals ~= getSignals();

		members ~= getMembers(convParms);

	}

	public void mergeGtkDClass(char[] inAPI, ConvParms* convParms)
	{
		this.inAPI = inAPI;
		HtmlStrip stripper = new HtmlStrip();
		inLines = std.string.splitlines(stripper.strip(inAPI));
		//writefln("new API\n%s",inAPI);

		this.convParms = convParms;

		readGtkDClass(convParms);

		if ( wrapper.includeComments() )
		{
			append(gtkDText, description, tabs);
		}

	}

	public char[] closeGtkDClass(char[] inAPI, ConvParms* convParms)
	{
		mergeGtkDClass(inAPI, convParms);

		append(gtkDText, properties, tabs);
		append(gtkDText, styleProperties, tabs);
		append(gtkDText, signals, tabs);

		append(gtkDText, members, tabs);

		gtkDText ~= closeClass(convParms);

		return gtkDText;
	}

	/**
	 * Gets the name to the output file
	 * Params:
	 *    	outputRoot =
	 * Returns:
	 */
	public char[] getOutFile(char[] outputRoot, char[] srcOut)
	{
		char[] outF = std.path.join(outputRoot, srcOut);
		outF = std.path.join(outF, convParms.outPack);
		outF = std.path.join(outF, (convParms.clss.length>0 ? convParms.outFile : convParms.outFile));
		return outF~".d";
	}

	/**
	 * Appends to the main text with the correct indentation
	 * Params:
	 *    	text = 	The main text
	 *    	lines = The lines to append
	 *    	tabs = 	The indentation to use
	 */
	public static void append(inout char[] text, char[][] lines, inout char[] tabs)
	{
		foreach(char[] line ; lines )
		{
			char[] ln = std.string.strip(line);
			if ( endsWith(ln, '}')
				|| endsWith(ln, "};")
				|| startsWith(ln, "}")
				|| startsWith(ln, "* }")
				|| startsWith(ln, "// }")
				)
			{
				if ( tabs.length > 0 ) tabs.length = tabs.length -1;
			}
			if ( startsWith(ln, '*') )
			{
				text ~= tabs ~" "~ ln ~ "\n";
			}
			else
			{
				text ~= tabs ~ ln ~ "\n";
			}
			if ( endsWith(ln,'{') )//&& !startsWith(line, " *") )
			{
				tabs ~= '\t';
			}
		}
	}

	/**
	 * Checks if we are a template and if the parent name
	 * Params:
	 *    	parentName =
	 * Returns:
	 */
	private char[] getClassHeader(ConvParms* convParms, char[] parentName)
	{
		char[] h;
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

			foreach ( int count, char[] tp ; convParms.templ )
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
	private char[][] openClass(ConvParms* convParms)
	{
		char[][] text;

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
				foreach(char[] line; description)
					text ~= line;
			}

			text ~= getClassHeader(convParms, gtkDParentName)
					~ getImplements(convParms, gtkDParentName);
//			char[] implements = getImplements(convParms, gtkDParentName);
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
		//foreach( char[] imprt ; convParms.imprts )
		//{
		//	text ~= "private import "~imprt~";";
		//}

		char[] flipG(char[] inStr)
		{
			char[] flipped = inStr.dup;

			if ( flipped[0] == 'G' )
			{
				flipped = flipped[1..flipped.length] ~ 'G';
			}

			return flipped;
		}

		if ( convParms.strct.length > 0 )
		{
			char[] gtkStruct = convParms.realStrct.length > 0
								? convParms.realStrct
								: convParms.strct;
			char[] var = toVar(gtkStruct.dup);
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
					if ( gtkDParentName.length > 0)
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
					if ( "GObject" != convParms.strct )
					{
						// GObject has a specific constructor for the struct
						if ( !convParms.isInterface )
						{
							text ~= "/**";
							text ~= " * Sets our main struct and passes it to the parent class";
							text ~= " */";
							text ~= "public this ("~gtkStruct~"* "~var~")"~iFaceChar;
							text ~= "{";

							char[][] checkIfNull = [
                            	"if("~var~" is null)",
                                "{",
                                "	this = null;",
								"	return;",
								"}" ];

                            char[][] checkObject = [
								""
								"//Check if there already is a D object for this gtk struct",
								"void* ptr = getDObject(cast(GObject*)"~var~");",
								"if( ptr !is null )",
								"{",
								"	this = cast("~convParms.clss~")ptr;",
								"	return;",
								"}" ];

							text ~= checkIfNull;
							if ( gtkDParentName.length > 0 && gtkDParentName != "Surface" )
								text ~= checkObject;

							if ( parentName.length > 0 )
							{
								text ~= "super("~castToParent(var)~");";
							}
							text ~= "this."~var~" = "~var~";";
							text ~= "}";


						}
					}
				}
			}
		}

		addStaticClassCode(convParms, text);

		return text;

	}
        
        /* Deprecated */ /*
	char[][] assertStructNotNull = [
	]; 
	
	private char[][] getAssertStructNotNull(char[] var)
	{
		char[][] lines = [
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
	private void addStaticClassCode(ConvParms* convParms, inout char[][] text)
	{
		char[] code;

		if ( convParms.isInterface ) code = convParms.interfaceCode;
		else code = convParms.classCode;

		if ( code.length > 0 )
		{
			text ~= "";
			foreach ( char[] line ; std.string.splitlines(code))
			{
				text ~= std.string.strip(line);
			}
		}
	}

	private char[] castToParent(char[] var)
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
	public static char[] toVar(char[] type)
	{
		if ( type.length > 0 )
		{
			type[0] = std.ctype.tolower(type[0]);
		}
		if ( type.endsWith("_t") )
		{
			type = type[0..type.length-2];
		}
		return type;
	}

	/**
	 * Close the class by adding the final brace
	 * If the class name is empty this is not a class so no closing is necessary
	 * Params:
	 *    	clss = 	The class name
	 * Returns:
	 */
	private char[] closeClass(ConvParms* convParms)
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
	private char[] getParent()
	{
		debug(getParent) writefln("getParent for %s ", convParms.outFile);

		if ( parentName is null )
		{
			if ( convParms.extend.length > 0 )
			{
				parentName = convParms.extend.dup;
				gtkDParentName = convertClassName(convParms.extend, gtkDParentNamePrefix);
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
				char[] parent;
				char[] current;
				char[] next;

				if ( i < inLines.length )
				{
					next = std.string.strip(inLines[i-1]);	// many times "GObject"
					if ( next != "GInterface" )
					{
						current = next;
					}
				}
				char[] gtkStruct = convParms.strct;
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
						current = next.dup;
						debug(getParent) writefln("\t current = %s", current);
					}
					++i;
				}
				if ( gtkStruct ==  current && parent.length>0 )
				{
					parentName = parent.dup;
					gtkDParentName = convertClassName(parentName, gtkDParentNamePrefix);
				}
			}
		}
		return parentName;
	}

	private char[] convertClassName(char[] gName, inout char[] prefix)
	{
		char[] conv;
		if ( startsWith(gName, "Gtk") )		prefix = "Gtk";
		else if ( startsWith(gName, "Gdk") )	prefix = "Gdk";
		else if ( startsWith(gName, "Gst") )	prefix = "Gst";
		else if ( startsWith(gName, "Gda") )	prefix = "Gda";
		else if ( startsWith(gName, "Atk") )	prefix = "Atk";
		else if ( startsWith(gName, "G") )	prefix = "G";
		else if ( startsWith(gName, "Pango") )	prefix = "Pg";
		else if ( startsWith(gName, "cairo") )	prefix = "cairo";

		conv = gName[prefix.length..gName.length];

		if ( conv == "Object" ) conv ~= prefix;
		if ( prefix == "Pg" ) conv = "Pg" ~ gName[5..gName.length];
		if ( prefix == "cairo") conv = std.string.toupper(gName[6..7]) ~ gName[7..gName.length - 2];

		debug(getParent)writefln("convertClassName %s >>> %s", gName, conv);
		prefix = std.string.tolower(prefix);

		if( prefix == "gst") prefix = "gstreamer";
		if( prefix == "g")   prefix = "gobject";
		if( prefix == "pg" ) prefix = "pango";

		return conv;
	}

	/**
	 * Under "Implemented Interfaces" section
	 * Params:
	 *    	clss =
	 * Returns:
	 */
	private char[] getImplements(ConvParms* convParms, char[] parentName)
	{
		char[] impls;
		foreach ( int count, char[] impl ; convParms.impl )
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
	private char[][] getProperties()
	{
		char[][] text;

		return text;
	}

	/* TODO */
	private char[][] getStyleProperties()
	{
		char[][] text;

		return text;
	}


	/**
	 * All the signals
	 * Returns:
	 */
	private char[][] getSignals()
	{
		char[][] text;
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

	private char[][] getSignal(inout int i, char[][] lines)
	{
		debug(getSignal) writefln("\tgetSignal %s", lines[i]);
		char[][] text;
		int endPos = std.string.rfind(lines[i], '"');
		if ( endPos > 5 )
		{
			char[] signalName = lines[i][5..endPos];

			++i;
			char[] funct = getSignalFunctionDeclaration(i, lines);

			if(!convParms.omitSignal(signalName))
			{
				char[][] comments;
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
						else if(find(lines[i], ":") == lines[i].length-1)
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

				char[] gtkDSignal = signalNameToGtkD(signalName);
				char[] delegateDeclaration = fun.getDelegateDeclaration(convParms, 1);

				// Removed function "addSignalImports" and replaced it 
				// with simple "if" block to make sure class local imports
				// don't get added - JJR
			
				if ( needSignalImports )
				{
					if ( !convParms.isInterface )
					{
						text ~= "int[char[]] connectedSignals;";
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
	 * text = the char[][] to append the function to.
	 * funct = the signal function
	 * gtkDSignal = the GtkD name for the signal
	 * dlg = the delegale for this signal
	 */
	void addExternCallback(inout char[][] text, Funct fun, char[] gtkDSignal, char[] dlg)
	{
		if ( !convParms.isInterface )
		{
			text ~= "extern(C) static void callBack"~gtkDSignal~"("
					~fun.getCallbackParameters(0, convParms, wrapper.getAliases())
					~")";
			text ~= "{";
			text ~= "	bool consumed = false;";
			text ~= "";
			text ~= "	foreach ( "~dlg~" dlg ; "~getClassVar(convParms)~".on"~gtkDSignal~"Listeners )";
			text ~= "	{";
			char[] dlgCall = "dlg("~fun.getCallbackVars(convParms, wrapper.getAliases())~");";
			text ~= "		"~dlgCall;
			text ~= "	}";
			text ~= "	";
			text ~= "	return consumed;";
			text ~= "}";
			text ~= "";
		}
	}

	void addAddListener(inout char[][] text, char[] signalName, char[] gtkDSignalName, char[] dlg)
	{
		text ~= "void addOn"~gtkDSignalName~"("~dlg~" dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)"~iFaceChar;
		if ( !convParms.isInterface )
		{
			text ~= "{";
			text ~= "if ( !(\""~signalName~"\" in connectedSignals) )";
			text ~= "{";

			// TODO move this to the config files or read it from the Gtk docs (how?)
			switch ( signalName )
			{
				case  "button-press-event": text ~= "addEvents(EventMask.BUTTON_PRESS_MASK);"; break;
				case  "button-release-event": text ~= "addEvents(EventMask.BUTTON_RELEASE_MASK);"; break;
				case  "motion-notify-event": text ~= "addEvents(EventMask.POINTER_MOTION_MASK);"; break;
				default:
					break;
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

	public static char[] getClassVar(ConvParms* convParms)
	{
		char[] cv;

		if ( convParms.interf.length > 0)
		{
			cv = convParms.interf.dup;
			cv[0] = std.ctype.tolower(cv[0]);
		}
		else if ( convParms.clss.length > 0 )
		{
			cv = convParms.clss.dup;
			cv[0] = std.ctype.tolower(cv[0]);
		}

		return cv;
	}

	private char[] signalNameToGtkD(char[] signalName)
	{
		char[] signalGtkD;

		char pc = ' ';
		foreach ( int count, char c ; signalName )
		{
			if ( count == 0 )
			{
				signalGtkD ~= std.ctype.toupper(c);
			}
			else
			{
				if ( c!='-' && c!='_' )
				{
					if ( pc=='-' || pc=='_' )
					{
						signalGtkD ~= std.ctype.toupper(c);
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


	private char[] getSignalFunctionDeclaration(inout int line, char[][] lines)
	{
		debug(signalFunction)writefln("getSignalFunctionDeclaration");
		char[] funct;
		while ( line<lines.length
				&& std.string.find(lines[line], ")")<0
			)
		{
			funct ~= lines[line]~ " ";
			debug(endFunction)writefln("funct line = >>>%s<<< endWith(\");\") = ",
										lines[line],
										endsWith(lines[line], ");")
										);
			++line;
		}
		if ( line<lines.length && std.string.find(lines[line], ")")>0 )
		{
			funct ~= lines[line++];
		}
		return funct;
	}



	private char[][] getMembers(ConvParms* convParms)
	{
		currLine = 0;
		getUntil("Details");

		char[][] text;

		while ( currLine < inLines.length )
		{
			char[][] member = getMember(convParms.prefixes);

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
	private char[][] getMember(char[][] prefixes)
	{
		char[][] lines = convParms.text.dup;
		convParms.text.length = 0;
		lines ~= getUntil("<hr>");
		char[][] member;

		//debug(structs){
		//	writefln("lines[1] = %s", lines[1]);
		//}else debug(enums){
		//	writefln("lines[1] = %s", lines[1]);
		//}


		debug(getMember)
		{
			writefln("getMember:");
			foreach (char[] line ; lines )
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


	private void collectGTypes(char[][] lines, ConvParms* convParms)
	{
		debug(gTypes)writefln("gype lines\n\t%s\n\t%s\n\t%s",lines[0],lines[1],lines[2]);
		int defLine = 1;
		if ( lines.length > 0
			&& std.string.find(lines[defLine],"G_TYPE_MAKE_FUNDAMENTAL")>=0
			&& endsWith(lines[defLine],")")
			&& std.string.find(lines[defLine],"<<") < 0
			)
		{
			int pos = std.string.find(lines[defLine], "(");
			if ( pos > 0 )
			{
				int posf = std.string.find(lines[defLine], ")");
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


	private void collectStockItems(char[][] lines, ConvParms* convParms)
	{
		debug(stockItems)writefln("stock items lines\n\t%s\n\t%s\n\t%s",lines[0],lines[1],lines[2]);
		int defLine = 1;
		if ( lines.length > 0 && startsWith(lines[defLine],"#define GTK_") )
		{
			char[] line = lines[defLine];
			char[] stockID;
			char[] stockValue;

			int pos = std.string.find(line[12..line.length],' ')+12;
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
							stockEnums ~= " * "~lines[ln++].dup;
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

	private void collectAliases(char[][] lines, ConvParms* convParms)
	{
		int pos = 0;
		char[][] tokens = std.string.split(until(pos, lines[1], ';'));

		char[] alis = "public alias " ~ tokens[1] ~ ' ' ~ tokens[2] ~ ';';

		collectedAliases ~= "";
		collectedAliases ~= "/**";
		int ln = 1;
		while ( ln < lines.length && lines[ln][0] > ' ' )
		{
			collectedAliases ~= " * "~lines[ln++].dup;
		}
		collectedAliases ~= " */";
		collectedAliases ~= stringToGtkD(alis, convParms, wrapper.getAliases());

	}

	private char[] getEnumPrefix(char[] enumName, char[] enumEntry)
	{
		debug(enumPrefix)writefln("%s.%s", enumName, enumEntry);
		char[] prefix;
		char[] upper = std.string.toupper(enumName.dup);
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

	private void collectEnums(char[][] lines, ConvParms* convParms)
	{
		char[] enumName = lines[0][5..lines[0].length];
		char[] gtkDEnumName;

		bool isGdkPrefix(char[] name)
		{
			return
				startsWith(enumName, "Gdk")
				;
		}


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
		//char[] enumName = removeUnderscore(lines[0][5..lines[0].length]);
		debug(enums)writefln("enum %s", enumName);
		char[][] values;
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
			char[] enumPrefix = getEnumPrefix(enumName, std.string.strip(lines[pos].dup));
			int prefixLength = enumPrefix.length;
			while ( pos<lines.length && lines[pos][0] != '}' )
			{
				debug(enums)writefln("\tenum line %s", lines[pos]);

				char[] value = std.string.strip(lines[pos++].dup);
				debug(enums)writefln("\traw       %s", value);
				value = enumToGtkD(enumName, value, convParms, wrapper);
				debug(enums)writefln("\tprocessed %s", value);

				//if ( std.string.find(value, ":") >= 0 )
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


					char[] replace(char[] s, char[] from, char[] to)
					{
						char[] p;
						if ( from.length == 0 )
						{
							p = s.dup;
						}
						else
						{
							int i;
							int istart;

							istart = 0;
							while (istart < s.length)
							{
								i = std.string.find(s[istart .. s.length], from);
								if (i == -1)
								{
									p ~= s[istart .. s.length];
									break;
								}
								p ~= s[istart .. istart + i];
								p ~= to;
								istart += i + from.length;
							}
						}
						return p;
					}


					debug(enumPrefix)writefln("\t\t%s", value);
					char[] v = replace(value, enumPrefix, "");
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
							default:
								// nothing
								break;
						}
					}

					values ~= v;

					//debug(enumPrefix)writefln("-> %s", value[prefixLength..value.length]);
//					if ( startsWith(value, enumPrefix) )
//					{
//						values ~= value[prefixLength..value.length];
//					}
//					else
//					{
//						values ~= value;
//						debug(enumPrefix)writefln();
//					}
					debug(enums)writefln("+ ADDED   >>>%s<<<", v);
				}
			}
		}
		++pos;
		if ( pos < lines.length )
		{
			collectedEnums ~= "/**";
			while ( pos < lines.length && lines[pos][0] > ' ' )
			{
				collectedEnums ~= " * "~lines[pos++].dup;
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
			foreach ( char[] value ; values )
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

	private void collectUnions(char[][] lines, ConvParms* convParms)
	{
		char[] unionName = lines[0][6..lines[0].length];
		if ( unionName == "cairo_path_data_t" )
		{
			collectedUnions ~= "";
			collectedUnions ~= "// skipped union "~unionName;
			collectedUnions ~= "";
			return;
		}
		debug(unions)writefln("union %s", unionName);
		char[][] values;
		int pos = 3;
		while ( pos<lines.length && lines[pos][0] != '}' )
		{
			debug(unions)writefln("\tunion line %s", lines[pos]);
			char[] value = std.string.strip(lines[pos++].dup);
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
				collectedUnions ~= " * "~lines[pos++].dup;
			}
			collectedUnions ~= " */";
		}
		collectedUnions ~= "public struct "~unionName;
		collectedUnions ~= "{";
		collectedUnions ~= "union";
		collectedUnions ~= "{";
		foreach ( char[] value ; values )
		{
			debug(unions)writefln("\t\t%s", value);
			collectedUnions ~= value;
		}
		collectedUnions ~= "}";
		collectedUnions ~= "}";
	}

	private void collectStructs(char[][] lines, ConvParms* convParms)
	{
		char[] structName = lines[0].dup;
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
			char[][] structDef;	/// all elements of the struct
			int pos = 1;
			if ( lines[1][lines[1].length-1] == '{' )
			{
				++pos;
				debug(structs)writefln("collectStructs %s",std.string.strip(lines[pos]));
				while ( pos < lines.length && lines[pos][0] != '}' )
				{
					structDef ~= lines[pos].dup;
					++pos;
				}
			}

			if ( pos < lines.length )
			{
				collectedStructs ~= "";
				char[] line = lines[pos];
				++pos;
				char[] gtkStruct = convParms.realStrct.length > 0
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
						collectedStructs ~= " * "~lines[pos++].dup;
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

	void getStructInternals(char[][] structDef, ConvParms* convParms)
	{
		char[] getFunctionPointer(char[] def, inout int i)
		{
			char[] funct = std.string.split(def, ";")[0];
			char[] comment = std.string.split(def, ";")[1];

			char[][] splitFunct = std.string.split(funct, "(");

			return splitFunct[0] ~ " function(" ~ ((splitFunct[2][0..$-1] == "void") ? ")" : splitFunct[2]) ~" "~ splitFunct[1][1..$-2] ~";"~ comment;
		}

		bool bitField = false;	// if we are in a bit field
		int bitFieldNr; // Number apended to bit field
		int bits; // Bits used in the curent bit field

		for ( int i; i < structDef.length; i++ )
		{
			char[] elem = stringToGtkD(structDef[i], convParms, wrapper.getAliases());

			if ( startsWith(elem, "*") && std.string.find(elem, "+/") < elem.length - 2)
				elem = std.string.replace(elem, "/", "\\"); //Some comments are broken
		
			if ( std.string.find(elem, "unsigned long") == 0)
				elem = "ulong"~ elem[13..$];  //TODO: posibly use fixtype

			if ( std.string.find(structDef[i], ":") >= 0 && (std.string.find(structDef[i], ":") <  std.string.find(structDef[i], "/+*") ||  std.string.find(structDef[i], "/+*") == -1) )
			//Bit fields.
			{
				if ( !bitField )
				{
					bitField = true;
					collectedStructs ~= "\tuint bitfield"~ std.string.toString(bitFieldNr) ~";";
				}
				if (std.string.find(elem, "/+*") > 0 && std.string.find(elem, "+/") < 0)
				{
					char[][] parts = std.string.split(elem, "/+*");
					collectedStructs ~= "//" ~ parts[0];
					collectedStructs ~= "/+*" ~ parts[1];
				}
				else
				{
					collectedStructs ~= "//" ~ elem;
				}

				bits += std.string.atoi(std.string.split(elem, ":")[1]);
				if ( bits >= 32)
				{
					bitField = false;
					bitFieldNr++;
					bits = 0;
				}
			}
			else if ( std.string.find(elem, "#") > -1 && std.string.find(elem, "#") < 2 )
			//Versions.
			{
				if ( std.string.find(elem, "#if defined (G_OS_WIN32) GLIB_SIZEOF_VOID_P == 8") > -1 )
				{
					//GLIB_SIZEOF_VOID_P == 8 means 64 bit. assuming WIN32 is an bad name for just windows.
					collectedStructs ~= "version(Win64)";
					collectedStructs ~= "{";
				}
				if ( std.string.find(elem, "#ifndef") == 0 )
				{
					collectedStructs ~= "version("~ elem[8..$] ~")";
					collectedStructs ~= "{";
				}
				else if ( std.string.find(elem, "#else") == 0 )
				{
					collectedStructs ~= "}";
					collectedStructs ~= "else";
					collectedStructs ~= "{";
				}
				else if ( std.string.find(elem, "#endif") == 0 )
				{
					collectedStructs ~= "}";
				}
			}
			else if ( std.string.find(elem, "(") > 0 && !startsWith(elem, "* ") && !startsWith(elem, "/+*") )
			//Function Pointers.
			{
				char[] funct;
				for ( ; i < structDef.length; i++ )
				{
					funct ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());

					if ( std.string.find(structDef[i], ");") > 0 )
						break;
				}

				collectedStructs ~= "extern(C) " ~ getFunctionPointer(funct, i);
			}
			else if( std.string.find(elem, "{") > 0 )
			//Nested Structs and unions.
			{
				char[] structUnion = std.string.split(structDef[i])[0];
				int parentCount;
				char[][] def;

				for ( i++; i < structDef.length; i++ )
				{
					if ( std.string.find(structDef[i], "{") > -1 )
						parentCount++;

					if ( std.string.find(structDef[i], "}") > -1 && parentCount-- == 0)
						break;

					def ~= stringToGtkD(structDef[i], convParms, wrapper.getAliases());
				}
				
				char[] varName = stringToGtkD(std.string.split(structDef[i])[1][0..$-1], convParms, wrapper.getAliases());
				char[] structName = std.string.toupper(varName)[0..1] ~ varName[1..$];

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
	bool isEnum(char[] type)
	{
		if ( type == "GdkEventType" )
		{
			return true;
		}
		return false;
	}

	bool primitiveType(char[] line)
	{
		int p=0;
		skipBlank(p, line);
		char[] type = untilBlank(p, line);
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

	public static void skipBlank(inout int p, char[] text)
	{
		while( p<text.length && text[p]<=' ' )
		{
			++p;
		}
	}

	public static void skip(inout int p, char[] text, char s)
	{
		while( p<text.length && text[p]==s)
		{
			++p;
		}
	}

	public static char[] untilBlank(inout int p, char[] text)
	{
		int start=p;
		while ( p<text.length && text[p]>' ')
		{
			++p;
		}
		return text[start..p];
	}

	public static char[] untilBlank(inout int p, char[] text, char[] s)
	{
		int start=p;
		while ( p<text.length && text[p]>' ' && std.string.find(s,text[p])<0 )
		{
			++p;
		}
		return text[start..p];
	}

	public static char[] until(inout int p, char[] text, char s)
	{
		int start=p;
		while ( p<text.length && text[p]!=s)
		{
			++p;
		}
		return text[start..p];
	}

	public static char[] until(inout int p, char[] text, char[] s)
	{
		int start=p;
		while ( p<text.length && std.string.find(s,text[p])<0 )
		{
			++p;
		}
		return text[start..p];
	}

	private char[] getFunctionDeclaration(inout int line, char[][] lines)
	{
		char[] funct;
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
	private char[][] getFunction(char[][] lines, char[][] prefixes)
	{
		char[][] member;

		int line = 1;

		char[] funct = getFunctionDeclaration(line, lines);

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
						char[][] phraseParams(char[][] comments)
						{
							char[][] description;
							char[][] params;
							char[] ret;
							
							for(int i; i < comments.length; i++)
							{
								comments[i] = replace(comments[i], \u00A0, " "); //White space used in some of the documentation.

								if(find(comments[i], ":") == comments[i].length-1 && find(comments[i], "Returns:") == -1 && find(comments[i], "Returns :") == -1 )
								{
									//Get the GtkD name of the param
									char[] param = chomp(idsToGtkD(comments[i][0 .. $-1], convParms, wrapper.getAliases()), " ");

									//If this param is not in the Gtkd Function Skip it.
									if(find(fun.declaration(convParms,wrapper.getAliases()), param) == -1)
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
											params ~= param ~" = "~ comments[i];
											firstRun = false;
										}
										else
											params ~= comments[i];
									}
								}
								else if(find(comments[i], "Returns:") > -1 || find(comments[i], "Returns :") > -1)
								{
									//Skip return for Constructors.
									if(find(fun.declaration(convParms,wrapper.getAliases()), "this (") > -1)
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
										ret ~= comments[i];
									}
								}
								else if(find(comments[i], "See Also") == 0 || find(comments[i], "Property Details") == 0)
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
								foreach(char[] line; params)
									description ~= line;
							}

							if(ret.length > 0)
								description ~= ret;

							if ( find(fun.getExternal(convParms, wrapper.getAliases()), "GError**") > -1
							   && find(fun.declaration(convParms,wrapper.getAliases()), "GError**") == -1 )
							{
								description ~= "Throws: GException on failure.";
							}

							if ( find(fun.declaration(convParms,wrapper.getAliases()), "this (") > -1 )
							{
								description ~= "Throws: ConstructionException GTK+ fails to create the object.";
							}

							return description;
						}

						if ( wrapper.includeComments() )
						{
							char[][] comments;
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
							foreach(char[] line; comments)
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
							char[] externalDeclaration = fun.getExternal(convParms, wrapper.getAliases());
							
							/* Don't add repeated declarations. */
							bool addme = true;
                                        
							foreach(ref char[] declaration; externalDeclarations)
							{
								if(externalDeclaration == declaration){ addme = false; break; }
							}

							if(addme) externalDeclarations ~= externalDeclaration;
						}
						// body
						if ( !convParms.omitCode(fun.name) && find(fun.declaration(convParms,wrapper.getAliases()), "...") < 0 )
						{
							char[] rawDeclaration = fun.declaration(convParms,wrapper.getAliases());
							char[] gtkDDeclaration = stringToGtkD(rawDeclaration,convParms,wrapper.getAliases());
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
//										case "char[]": member ~= "return "";"; break;
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
		}

		return member;
	}

	private bool checkIfDupFunction(Funct fun)
	{
		char[] signature = fun.convName~'('~fun.getWrapParametersType()~')';
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
	bool stilInParam(char[] comments)
	{
		return !(find(comments, ":")  == comments.length-1 ||
		         ( find(comments, "Returns:") == 0 || find(comments, "Returns"~\u00A0~":") == 0 || find(comments, "Returns :") == 0) ||
		         ( find(comments, "Since 2.") == 0 || find(comments, "Since 1.") == 0) ||
		         find(comments, "See Also") == 0 ||
		         find(comments, "Property Details") == 0 ||
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
		void check(char[] type)
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

					char[] strct = type.dup;
					char[] dName = "";
					char[] pack = "";
					if ( startsWith(strct, "Gtk") )
					{
						pack = "gtk";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ctype.tolower(dName[0]);
					}
					else if ( startsWith(strct, "Gdk") )
					{
						pack = "gdk";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ctype.tolower(dName[0]);
						if ( dName ==  "Pixbuf") pack = "gdkpixbuf";
					}
					else if ( startsWith(strct, "Gst") )
					{
						pack = "gstreamer";
						dName = strct[3..strct.length-1];
						//dName[0] = std.ctype.tolower(dName[0]);
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
		foreach ( int count , char[] parm ; fun.parmsWrap )
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
	private char[] getFunction(char[] line, ConvParms* convParms)
	{
		debug(functionType) writefln("\ngetFunction line = %s", line);
		// void (*GChildWatchFunc) (GPid pid,  gint status,  gpointer data);
		// public typedef extern(C) void function(int, int, void*) GChildWatchFunc;



		char[] f = "public typedef extern(C) ";
		int pos = 0;
		char[] type = until(pos, line, "(");
		until(pos, line, "*");
		skip(pos, line, '*');
		char[] name = until(pos, line, ")");
		if (convParms.omitCode(name)) {
			return "";
		}
		//adjustTypeName(type, name);

		f ~= stringToGtkD(type, convParms, wrapper.getAliases());
		f ~= " function (";

		until(pos, line, "(");
		skip(pos, line, '(');
		skipBlank(pos, line);

		char[] sourceParms = std.string.strip(until(pos, line, ")"));
		char[] parms;

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
				char[] pType = untilBlank(sPos, sourceParms);
				fixType(pType, sPos, sourceParms);

				char[] pName = until(sPos, sourceParms, ",)");

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
	private char[][] getDescription()
	{
		char[][] desc;
		desc ~= "";
		desc ~= tabs ~ "/**";
		char[][] block = getBlock ("Description", "Details");
		foreach ( char[] line; block )
		{
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
	private char[][] getBlock(char[] startLine, char[] endLine)
	{
		currLine = 0;

		debug(getBlock) writefln("getBlock for ]%s,%s[", startLine, endLine);

		// TODO use slicing instead of this array
		char[][] block;

		while ( currLine<inLines.length && inLines[currLine]!=startLine )
		{
			debug(getBlock) writefln("-\t\t[%s]%s",currLine,inLines[currLine]);
			++currLine;
		}

		return getUntil(endLine);
	}

	private int moveToBlockStart(char[] startLine, char[][] inLines)
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
	private char[][] getUntil(char[] endLine)
	{
		bool end = false;

		char[][] block;

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
	 * Converts a GTK strin to a GtkD string.
	 * This removes the "_" and capitalises the next letter and converts the basic types
	 * Params:
	 *    	gString =
	 * Returns:
	 */
	public static char[] stringToGtkD(char[] gString, ConvParms* convParms, char[][char[]] aliases, bool caseConvert=true)
	{
		char[] converted;

		int pos = 0 ;
		char[] seps = " \n\r\t\f\v()[]*,;";

		char c = ' ';
		char pc;
		int start = 0;
		int end = 0;
		while ( pos < gString.length )
		{
			pc = c;
			c = gString[pos];
			if ( std.string.find(seps,c) >= 0 )
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


	public static char[] idsToGtkD(char[] gToken, ConvParms* convParms, char[][char[]] aliases, bool caseConvert=true)
	{
		char[] converted = tokenToGtkD(gToken, convParms, aliases, caseConvert);
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
	public static char[] enumToGtkD(char[] enumType, char[] gToken, ConvParms* convParms, WrapperIF wrapper, bool caseConvert=true)
	{
		debug(enumToGtkD)writefln("enumLine (%s) BEFORE %s", enumType, gToken);
		char[] converted = stringToGtkD(gToken, convParms, wrapper.getAliases());

		int pos = std.string.find(converted, '=');
		debug(enumToGtkD)writefln("\t pos = %s", pos);
		if ( pos > 0 )
		{
			char[] refValue = std.string.strip(converted.dup[pos+1..converted.length]);
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
				foreach(char[] key ; wrapper.getEnumTypes().keys)
				{
					writefln("\t\t [%s] = %s", key, wrapper.getEnumTypes()[key]);
				}
			}

			if ( refValue in wrapper.getEnumTypes() )
			{
				converted = converted[0..pos+1]
							~ " "
							~ wrapper.getEnumTypes()[refValue]
							//~ "."
							//~ refValue
							~ (needComa ? "," : "" )
							;
			}
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
	public static char[] tokenToGtkD(char[] gToken, ConvParms* convParms, char[][char[]] aliases, bool caseConvert=true)
	{
		char[] converted;

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
			converted = gToken.dup;
		}
		else if ( endsWith(gToken, "_t*") && startsWith(gToken,"cairo_") )
		{
			converted = gToken.dup;
		}
		else if ( startsWith(gToken,"f_") && (endsWith(gToken,"_out") || endsWith(gToken,"_in") || endsWith(gToken,"_inout") ) )
		{
			converted = gToken.dup;
		}
		else if ( caseConvert )
		{
			removePrefix(gToken, convParms);
			converted = removeUnderscore(gToken);
			// do it again after the gToken is converted
			if ( (aliases !is null) && (gToken in aliases) )
			{
				converted = aliases[gToken];
			}
		}
		else
		{
			converted = gToken.dup;
		}

		debug(tokenToGtkD) writefln("converted=>>>%s<<<\n", converted);

		return converted;
	}


	public static char[] removePrefix(inout char[] gToken, char[] prefix)
	{
		if ( startsWith(gToken, prefix) )
		{
			gToken = gToken[prefix.length..gToken.length];
		}
		return gToken;
	}

	public static char[] removePrefix(inout char[] gToken, ConvParms* convParms)
	{
		//debug(tokenToGtkD) writefln("gToken.length > prefix.length %s",gToken.length > convParms.prefix.length);
		char[] prefix = convParms.getPrefix(gToken);
		if ( prefix.length > 0 )
		{
			gToken = gToken[prefix.length..gToken.length];
		}
		debug(tokenToGtkD) writefln("gToken after prefix = %s",gToken);

		return gToken;

	}

	public static char[] removeUnderscore(char[] gToken)
	{
		char[] converted;

		char c = ' ';
		char pc = ' ';
		char ppc = ' ';
		int pos = 0;
		while ( pos < gToken.length )
		{
			c = gToken[pos];
			if ( pc == '_' )
			{
				c = std.ctype.toupper(c);
			}
			else if ( c == '_' && std.ctype.islower(pc) )
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


	/**
	 * Moves '*' and 'const' and trailing '[]' from the name to the type token
	 * Params:
	 *    	type =
	 *    	name =
	 */
	public static void adjustTypeName(inout char[] type, inout char[] name)
	{
		debug(type)writefln("type before %s", type);
		debug(name)writefln("name before %s", name);
		name = std.string.strip(name);
		while ( name.length > 0
				&& (GtkDClass.startsWith(name,"const") || name[0] == '*' )
			  )
		{
			if ( name[0] == '*' )
			{
				type ~= '*';
				name = std.string.strip(name[1..name.length]);
			}
			else
			{
				name = std.string.strip(name[5..name.length]);
			}
			name = std.string.strip(name);
		}
		while ( GtkDClass.endsWith(name, "[]") )
		{
			type ~= "[]";
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
	public static void fixType(inout char[] type, inout int p, inout char[] text)
	{
		if ( type == "const" )
		{
			GtkDClass.skipBlank(p, text);
			type = untilBlank(p, text);
		}
		if ( type == "unsigned" )
		{
			GtkDClass.skipBlank(p, text);
			type = "u" ~ untilBlank(p, text);
		}
//		if ( type == "uchar" )
//		{
//			type = "char";
//		}
	}




	public static bool startsWith(char[] str, char[] prefix)
	{
		return str.length >= prefix.length
				&& str[0..prefix.length] == prefix;
	}

	public static bool startsWith(char[] str, char prefix)
	{
		return str.length > 0
				&& str[0] == prefix;
	}

	public static bool endsWith(char[] str, char[] suffix)
	{
		return str.length >= suffix.length
				&& str[str.length-suffix.length..str.length] == suffix;
	}

	public static bool endsWith(char[] str, char suffix)
	{
		return str.length >= 1
				&& str[str.length-1] == suffix;
	}

}
