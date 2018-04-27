module Build;

import core.stdc.stdlib: exit;

import std.algorithm;
import std.array;
import std.conv;
import std.file;
import std.getopt;
import std.path;
import std.process;
import std.range;
import std.stdio;
import std.string;

string dcflags;
string ldflags;

version(DigitalMars)
{
	string DC = "dmd";
	string OUTPUT = "-of";

	version(Win32) version = DMD32;
}
else version(LDC)
{
	string DC = "ldc2";
	string OUTPUT = "-od=objects -oq -of";
}
else version(GNU)
{
	string DC = "gdc";
	string OUTPUT = "-o ";
}
else
{
	static assert(false, "Unsupported compiler");
}

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
		args = ["gtkd", "sv"];
		
	if ( args.canFind("all") )
		args = ["gtkd", "sv", "gstreamer", "peas"];
	
	foreach ( arg; args )
	{
		switch ( arg )
		{
			case "gtkd":
				build("generated\\gtkd", "gtkd");
				break;
			case "gtkdgl":
				build("generated\\gtkdgl", "gtkdgl");
				break;
			case "sv":
				build("generated\\sourceview", "gtkdsv");
				break;
			case "gstreamer":
				build("generated\\gstreamer", "gstreamerd");
				break;
			case "peas":
				build("generated\\peas", "peasd");
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
	version(DMD32)
	{
		if (lib == "gtkd")
		{
			string[] subDirs = ["atk", "cairo", "gdk", "gdkpixbuf", "gio", "glib", "gobject", "gthread", "gtkc", "gtkd", "pango", "rsvg"];

			foreach(directory; subDirs)
				buildObj(dFiles("generated\\gtkd\\"~ directory), directory);

			string[] files = dFiles("generated\\gtkd\\gtk").split();
			files.chunks((files.length / 4) + 1).enumerate(1).each!((index, value){buildObj(value.join(' '), "gtk"~to!string(index));});

			string objects;
			foreach(directory; subDirs)
				objects ~= directory ~".obj ";
			objects ~= "gtk1.obj gtk2.obj gtk3.obj gtk4.obj";

			executeShell(format("%s -lib %s %s%s.lib %s", DC, ldflags, OUTPUT, lib, objects));

			foreach(string obj; objects.split())
				std.file.remove(obj);
		}
		else
		{
			buildObj(dFiles(dir), lib);
			executeShell(format("%s -lib %s %s%s.lib %s.obj", DC, ldflags, OUTPUT, lib, lib));
			std.file.remove(lib ~".obj");
		}
	}
	else
	{
		std.file.write("build.rf", format("-m64 -c -lib %s %s -Igenerated/gtkd %s%s.lib %s", dcflags, ldflags, OUTPUT ,lib, dFiles(dir)));
		auto pid = spawnProcess([DC, "@build.rf"]);

		if ( wait(pid) != 0 )
			exit(1);
	}
	
	version(LDC)std.file.rmdirRecurse("objects");
	std.file.remove("build.rf");
}

void buildObj(string files, string objName)
{
	std.file.write("build.rf", format("-c %s -Igenerated/gtkd %s%s.obj %s", dcflags, OUTPUT, objName, files));
	auto pid = spawnProcess(["dmd", "@build.rf"]);
	if ( wait(pid) != 0 )
		exit(1);
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
