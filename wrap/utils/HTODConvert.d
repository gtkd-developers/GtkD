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

module utils.HTODConvert;

private import utils.DefReader;
private import utils.GtkWrapper;

private import std.stdio;
private import std.file;
import std.path;
private import std.string;
private import std.process;

static string htod_location = "wrap/utils/htod.exe";
static string wine_command = "wine";

// there is no longer a 'bit' type
alias bool bit;

//debug = flow;
//debug = processLine;
//debug = getDType;
//debug = functions;

public class Ranges
{

	private struct Range
	{
		int vStart;
		int vEnd;
		bool exclude = true;
		
		public bool contains(int pos)
		{
			return (pos>= vStart) && (pos<=vEnd);
		}
		
		public bool includes(int pos)
		{
			return contains(pos)
				? !exclude
				: exclude
				;
		}

		public bool matches(int start, int end)
		{
			return vStart == start 
				&& vEnd == end;
		}
	}
	
	private Range*[] ranges;
	
	public void addRange(int start, int end, bool exclude)
	{
		Range* range = new Range;
		range.vStart = start;
		range.vEnd = end;
		range.exclude = exclude;
		ranges ~= range;
	}
	
	/**
	 * Finds the last range that contains the position and returns it's include value
	 * Params:
	 *    	pos = 	
	 */
	public void include(int pos)
	{
		bool incl = true;
		Range* range;
		size_t i = ranges.length;
		while ( i > 0 )
		{
			range = ranges[--i];
			if ( range.contains(pos) )
			{
				i=0;
				incl = !range.exclude;
			}
		}
		//return incl;
	}
	
}

/**
 * This is used to post-process dm htod .d file for gtkD
 * to create the htod .d file:
 * - copy the original .h file to a working directory
 * - remove all unecessary definitions
 * - run `wine ~/dm/bin/htod.exe <file.h>`
 * - run this on the generated .d file
 */
public class HTODConvert
{
	string dText;
	
	DefReader defReader;

	/** the library id on the system (for instance GL for libGL.so) */
	string lib;
	/** the .h (or .h pos-processed) to convert to .d */
	string preFile;
	/** the package */
	string pack;
	string bindDir;
	string outputRoot;
	string inputRoot;
	/** convert to dynamic loading */
	bool dynLoad;
	/** mark when the header was already added to the text */
	bool dynLoadAlreadyOpen;
	/** mar when the module and license where already added to the text */
	bool headerAlreadyAdded;
	string[] functions;
	string[] comment;
	
	
	this(string htodFilename)
	{
		defReader = new DefReader(htodFilename);
		clearValues();
		process();
	}
	this(string htodFilename, string _outputRoot, string _inputRoot)
	{
		inputRoot = _inputRoot;
		outputRoot = _outputRoot;
		this(htodFilename);
	}	
	void process()
	{
		debug(flow)(writefln("HTODConvert.process 1"));
		while ( defReader.next().length > 0 )
		{
			switch ( defReader.getKey() )
			{
				case "prefile":
					debug(flow)(writefln("HTODConvert.process case prefile"));
					preFile = defReader.getValue();
					break;
				case "bindDir":
					bindDir = defReader.getValue();
				break;	
				case "pack":
					debug(flow)(writefln("HTODConvert.process case pack"));
					pack = defReader.getValue();
					break;
					
				case "lib":
					debug(flow)(writefln("HTODConvert.process case libe"));
					lib = defReader.getValue();
					break;
					
				case "file":
					debug(flow)(writefln("HTODConvert.process case file 1"));
					if ( preFile.length > 0 )
					{
						debug(flow)(writefln("HTODConvert.process case file 2"));
						processPreFile(preFile, defReader.getValue());
						debug(flow)(writefln("HTODConvert.process case file 3"));
					}
					debug(flow)(writefln("HTODConvert.process case file 4"));
					preFile.length = 0;
					debug(flow)(writefln("HTODConvert.process case file 5"));
					processFile(defReader.getValue());
					debug(flow)(writefln("HTODConvert.process case file 6 "));
					break;
				
				case "dynload":
					debug(flow)(writefln("HTODConvert.process case dynload"));
					dynLoadAlreadyOpen = false;
					headerAlreadyAdded = false;
					dynLoad = true;
					break;
					
				case "outfile":
					debug(flow)(writefln("HTODConvert.process case outfile"));
					writeFile(defReader.getValue());
					clearValues();
					break;
					
				default:
					debug(flow)(writefln("HTODConvert.process case default"));
					writefln("Unknown key/value = %s/%s", defReader.getKey(), defReader.getValue());
					break;
					
			}
		}
	}

	void processPreFile(string preFileName, string fileName)
	{
		//debug(flow)
		writefln("HTODConvert.processPreFile files: %s > %s", preFileName, fileName);
		string[] args;
		args ~= htod_location;
		args ~= htod_location;
		args ~= preFileName;
		args ~= std.path.buildPath(inputRoot,fileName);
		try
		{
			std.process.execvp(wine_command, args);
		}
		catch (Throwable e)
		{
			// ignore - it always fail - most of the time produces the file
		}
	}

	void processFile(string fileName)
	{
		debug(flow)(writefln("HTODConvert.processFile"));
		string hText = cast(string)std.file.read(fileName);
		string[] hLines = std.string.splitLines(hText);
		string line;

		int i = 0;
		while ( i < hLines.length )
		{
			line = hLines[i++];
			if ( std.string.indexOf(line,'(')>=0 )
			{
				int openBrace = 1;
				if ( std.string.indexOf(line,')')>=0 ) --openBrace;
				while ( openBrace > 0
					&&  i<hLines.length 
					)
				{
					string l = hLines[i++];
					if ( std.string.indexOf(l,')') >=0) --openBrace;
					line ~= " " ~ std.string.strip(l);
				}
			}
			addLine(line);
		}
		
		if ( dynLoad )
		{
			closeDynLoad();
		}
	}
	
	void addLine(string line)
	{
		if ( !startsWith(line, "//C") 
			&& line !="alias extern GLAPI;"
			&& line !="alias GLAPIENTRY APIENTRY;"
			)
		{
			if ( line == "alias sbyte GLbyte;" )
			{
				line = "alias byte GLbyte;";
			}
			if ( line == "module wrap/cHeaders/GL/gl;" )
			{
				line = "module "~bindDir~".gl;";
			}
			
			if ( line == "module wrap/cHeaders/GL/glu;" )
			{
				line = "module "~bindDir~".glu;";
			}

			if ( line == "import std.c.gl;" )
			{
				line = "import "~bindDir~".gl;";
			}

			if ( startsWith(line, "/* Converted to D from" ) )
			{
				line = GtkWrapper.license;
			}
			
			if ( dynLoad )
			{
				addLineDynLoad(line);
			}
			else
			{
				dText ~= line~"\n";
			}
			
		}
	}

	/**
	 * If the line is a function definition stores the line to include on the extern(C)
	 * and the symbols.
	 * for now a function is a line that ends with ");"
	 * Params:
	 *    	dText = 	
	 *    	line = 	
	 */
	void addLineDynLoad(string line)
	{
		//debug(flow)(writefln("HTODConvert.addLineDynLoad"));
		
		if ( headerAlreadyAdded
			&& !dynLoadAlreadyOpen 
			)
		{
			openDynLoad();
		}

		if ( endsWith(line, ");") )
		{
			int i=0;
			while ( i<comment.length )
			{
				functions ~= comment[i++];
			}
			comment.length = 0;
			functions ~= line;
			debug(functions)writefln("HTODConvert.addLineDynLoad function[%s] = %s",
								functions.length, line);
		}
		else if ( startsWith(line, "/*")
			|| startsWith(line, " *")
			|| startsWith(line, " */")
			|| line.length == 0
			)
		{
			comment ~= line;
		}
		else
		{
			if ( startsWith(line, "module") )
			{
				headerAlreadyAdded = true;
			}
			int i=0;
			while ( i<comment.length )
			{
				dText ~= comment[i++]~"\n";
			}
			comment.length = 0;
			dText ~= line~"\n";
		}
	}
	
	void openDynLoad()
	{
		debug(flow)(writefln("HTODConvert.openDynLoad"));
		dynLoadAlreadyOpen = true;
		dText ~= 
"\n"
"\n"
"private import std.stdio;\n"
"private import "~bindDir~"."~pack~"types;\n"
"private import gtkc.Loader;\n"
"private import gtkc.paths;\n"
"\n"
;
		if ( lib == "GL"
			 || lib == "GLU" )
		{
			return;
		}
		dText ~= 
"private Linker "~lib~"_Linker;\n"
"\n"
"static this()\n"
"{\n"
"	"~lib~"_Linker = new Linker(libPath ~ importLibs[LIBRARY."~std.string.toUpper(lib)~"] );\n"
"	"~lib~"_Linker.link("~lib~"Links);\n"
"	debug writefln(\"* Finished static this(): "~lib~"\");\n"
"}\n"
"\n"
"static ~this()\n"
"{\n"
"	delete "~lib~"_Linker;\n"
"	debug writefln(\"* Finished static ~this(): "~lib~"\");\n"
"}\n\n"
;

	
	}
	
	void closeDynLoad()
	{
		debug(flow)(writefln("HTODConvert.closeDynLoad"));
		dText ~= "\n\nextern(C)\n{\n";
		foreach ( string line ; functions )
		{
			dText ~= "\t" ~ line ~"\n";
		}
		dText ~= "} // extern(C)\n";
		
		dText ~= "\n\nSymbol[] "~lib~"Links = \n";
		dText ~= "[\n";
		
		foreach ( string line ; functions )
		{
			if ( startsWith(line, "/*")
				|| startsWith(line, " *")
				|| startsWith(line, " */")
				|| line.length == 0
				)
			{
				dText ~= "\t"~line~"\n";
			}
			else
			{
				sizediff_t end = std.string.indexOf(line,'(');
				
				if ( end > 0 )
				{
					sizediff_t start = end;
					while ( start > 0 && line[start] > ' ' )
					{
						--start;
					}
					string functionName = line[start+1..end];
					if ( functionName.length>1)
					{
						dText ~= "\t{ \""
							~functionName
							~"\",  cast(void**)& "
							~functionName
							~"},\n"
							;
					}
				}
			}

		}
		
		dText ~= "];\n\n";
	}
	
	void clearValues()
	{
		debug(flow)(writefln("HTODConvert.clearValues"));
		dText.length = 0;
		dynLoad = false;
		lib.length = 0;
		preFile.length = 0;
		pack.length = 0;
		bool dynLoadAlreadyOpen = false;
		bool headerAlreadyAdded = false;
		functions.length = 0;
		comment.length = 0;
	
	}
	
	void writeFile(string fileName)
	{
		debug(flow)(writefln("HTODConvert.writeFile"));
		debug(flow)(writefln("HTODConvert.writeFile fileName = %s", fileName));
		std.file.write(std.path.buildPath(outputRoot,fileName), dText);
	}
	
	public static bit startsWith(string str, string prefix)
	{
		return str.length >= prefix.length 
				&& str[0..prefix.length] == prefix;
	}
	
	public static bit startsWith(string str, char prefix)
	{
		return str.length > 0
				&& str[0] == prefix;
	}
	
	public static bit endsWith(string str, string prefix)
	{
		return str.length >= prefix.length 
				&& str[str.length-prefix.length..str.length] == prefix;
	}
	
	public static bit endsWith(string str, char suffix)
	{
		return str.length >= 1
				&& str[str.length-1] == suffix;
	}
	
}


