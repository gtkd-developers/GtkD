module Build;

import std.algorithm;
import std.array;
import std.file;
import std.getopt;
import std.path;
import std.process;
import std.stdio;
import std.string;

string dcflags;
string ldflags;

int main(string[] args)
{
	version(Posix)
	{
		writeln("This build script is currently Windows only.");
		return(1);
	}

	getopt(args, "dcflags", &dcflags, "ldflags", &ldflags);
	args.popFront();
	
	foreach ( arg; args )
	{
		if ( !["gtkd", "gtkdgl", "sv", "gstreamer", "vte", "peas", "all"].canFind(arg) )
		{
			writefln("Unknown option: %s", arg);
			return 1;
		}
	}
	
	if ( args.length == 0 )
		args = ["gtkd", "gtkdgl", "sv"];
		
	if ( args.canFind("all") )
		args = ["gtkd", "gtkdgl", "sv", "gstreamer", "vte"];
	
	foreach ( arg; args )
	{
		switch ( arg )
		{
			case "gtkd":
				build("src", "gtkd");
				break;
			case "gtkdgl":
				build("srcgl", "gtkdgl");
				break;
			case "sv":
				build("srcsv", "gtkdsv");
				break;
			case "gstreamer":
				build("srcgstreamer", "gstreamerd");
				break;
			case "vte":
				build("srcvte", "vted");
				break;
			case "peas":
				build("srcpeas", "peasd");
				break;
			default:
				assert(false);
				break;
		}
	}
	
	return(0);
}

void build(string dir, string lib)
{
	version(Win64)
	{
		std.file.write("build.rf", format("-m64 -c -lib %s %s -Isrc -of%s.lib %s", dcflags, ldflags, lib, dFiles(dir)));
		executeShell("dmd @build.rf");
	}
	else
	{
		std.file.write("build.rf", format("-c %s -Isrc -of%s.obj %s", dcflags, lib, dFiles(dir)));
		executeShell("dmd @build.rf");
		executeShell(format("dmd -lib %s -of%s.lib %s.obj", ldflags, lib, lib));
		std.file.remove(lib ~".obj");
	}
	
	std.file.remove("build.rf");
}

string dFiles(string sourceDir)
{
	string files;
	auto entries = dirEntries(sourceDir, SpanMode.breadth);
	
	foreach ( DirEntry entry; entries )
	{
		if ( entry.isDir == false && entry.name.extension == ".d" )
		{
			files ~= entry.name ~ " ";
		}
	}
	
	return files;
}
