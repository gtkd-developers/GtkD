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

debug {} else string DEBUG = "";

version(DigitalMars)
{
	string DC = "dmd";
	string OUTPUT = "-of";

	debug string DEBUG = "-debug -g";

	version(CRuntime_DigitalMars)
		string PLATFORM = "-m32";
	else version(X86)
		string PLATFORM = "-m32mscoff";
	else version(X86_64)
		string PLATFORM = "-m64";

	version(CRuntime_DigitalMars) version = DMD32;
}
else version(LDC)
{
	string DC = "ldc2";
	string OUTPUT = "-od=objects -oq -of";

	debug string DEBUG = "-d-debug -g";

	version(X86)
		string PLATFORM = "-m32";
	else version(X86_64)
		string PLATFORM = "-m64";
}
else version(GNU)
{
	string DC = "gdc";
	string OUTPUT = "-o ";

	debug string DEBUG = "-fdebug -g";

	version(X86)
		string PLATFORM = "-m32";
	else version(X86_64)
		string PLATFORM = "-m64";
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
		if ( !["gtkd", "gstreamer", "vte", "peas", "all"].canFind(arg) )
		{
			writefln("Unknown option: %s", arg);
			return 1;
		}
	}
	
	if ( args.length == 0 )
		args = ["gtkd"];
		
	if ( args.canFind("all") )
		args = ["gtkd", "gstreamer", "peas"];
	
	foreach ( arg; args )
	{
		switch ( arg )
		{
			case "gtkd":
				build("generated\\gtkd", "gtkd");
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
			string[] subDirs = ["atk", "cairo", "gdk", "gdkpixbuf", "gio", "glib", "gobject", "gthread", "graphene", "gtkd", "pango", "harfbuzz", "rsvg"];

			foreach(directory; subDirs)
				buildObj(dFiles("generated\\gtkd\\"~ directory), directory);

			string[] files = dFiles("generated\\gtkd\\gtk").split();
			files.chunks((files.length / 4) + 1).enumerate(1).each!((index, value){buildObj(value.join(' '), "gtk"~to!string(index));});

			string objects;
			foreach(directory; subDirs)
				objects ~= directory ~".obj ";
			objects ~= "gtk1.obj gtk2.obj gtk3.obj gtk4.obj";

			executeShell(format("dmd -lib %s %s%s.lib %s", ldflags, OUTPUT, lib, objects));

			foreach(string obj; objects.split())
				std.file.remove(obj);
		}
		else
		{
			buildObj(dFiles(dir), lib);
			executeShell(format("dmd -lib %s %s%s.lib %s.obj", ldflags, OUTPUT, lib, lib));
			std.file.remove(lib ~".obj");
		}
	}
	else
	{
		std.file.write("build.rf", format("%s -c -lib %s %s %s -Igenerated/gtkd %s%s.lib %s", PLATFORM, dcflags, ldflags, DEBUG, OUTPUT ,lib, dFiles(dir)));
		auto pid = spawnProcess([DC, "@build.rf"]);

		if ( wait(pid) != 0 )
			exit(1);
	}
	
	version(LDC)std.file.rmdirRecurse("objects");
//	std.file.remove("build.rf");
}

void buildObj(string files, string objName)
{
	std.file.write("build.rf", format("-c %s %s -Igenerated/gtkd %s%s.obj %s", dcflags, DEBUG, OUTPUT, objName, files));
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
