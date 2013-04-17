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
		if ( !["gtkd", "gtkdgl", "sv", "gstreamer", "all"].canFind(arg) )
		{
			writefln("Unknown option: %s", arg);
			return 1;
		}
	}
	
	if ( args.length == 0 )
		args = ["gtkd", "gtkdgl", "sv"];
		
	if ( args.canFind("all") )
		args = ["gtkd", "gtkdgl", "sv", "gstreamer"];
	
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
		system("dmd @build.rf");
	}
	else
	{
		std.file.write("build.rf", format("-c %s -Isrc -of%s.o %s", dcflags, lib, dFiles(dir)));
		system("dmd @build.rf");
		system(format("lib -c %s %s.lib %s.o", ldflags, lib, lib));
		std.file.remove(lib ~".o");
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
