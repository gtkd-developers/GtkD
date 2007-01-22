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
 
module ui.Installer;

private import ui.Main;
private import ui.Exec;
private import gtk.GtkD;
private import gtk.MainWindow;
private import gtk.Widget;
private import gtk.ProgressBar;
private import gtk.Label;
private import gtk.VBox;

private import gdk.Gdk;
private import gdk.Event;

private import compd.Compiler;

private import std.stdio;

private import std.path;
private import std.file;
private import std.process;

private import std.thread;
private import std.c.time;
	

/**
 * From the informatino collected from the UI this will install GtkD, GtkDgl and or leds
 */
class Installer : MainWindow
{
	InstallerUI installerUI;
	Label label;
	ProgressBar progressBar;
	
	bool cancel = false;
	
	this(InstallerUI installerUI)
	{
		super("Installing GtkD components");
		this.installerUI = installerUI;
		setDefaultSize(400,300);
		setup();
		showAll();
		install();
		progressBar.setFraction(1.0);
		progressBar.setText("");
	}
	
	private void setup()
	{
		VBox vbox = new VBox(false, 7);
		vbox.setBorderWidth(11);
		label = new Label("");
		vbox.packStart(new Label("Installing"), false, false, 14);
		vbox.packStart(label, false, false, 14);
		progressBar = new ProgressBar();
		progressBar.setPulseStep(0.01);
		vbox.packStart(progressBar, false, false, 14);
		add(vbox);
	}
	
	protected int windowDelete(Event event, Widget widget)
	{
		cancel = true;
		mainInstaller.show();
		return super.windowDelete(event, widget);
	}
	
	char[] dmdHome;
	char[] gtkDDevHome;
	char[] phobos;
	char[] compilerExec;

	int ccount;
		

	private void install()
	{
		bool ok = true;
		gtkDDevHome = installerUI.getDirectory("gtkDDevHome");
		dmdHome = installerUI.getDirectory("dmdHome");
		phobos = std.path.join(std.path.join(dmdHome,"src"),"phobos");
		compilerExec = std.path.join(installerUI.getDirectory("dmdHome"),"bin");
		version(Win32)
		{
			compilerExec = std.path.join(compilerExec,"dmd.exe");
		}
		else
		{
			compilerExec = std.path.join(compilerExec,"dmd");
		}
		
//		if ( ok && installerUI.getSelection("gtkD") )
//		{
//			label.setText("");
//			Gdk.flush();
//			ok = installGtkD();
//		}


		
		class CompileThread : Thread
		{
			bool delegate() compile;
			bool ok;
			
			this(char[] stepLabel, bool delegate() compile)
			{
				super(&run);
				this.compile = compile;
				label.setText(stepLabel);
				progressBar.setText(stepLabel);
				go();
				//ok = compile();
			}
			
			private void go()
			{
			std.gc.fullCollect();
				start();
				while ( !cancel && getState() != Thread.TS.TERMINATED )
				{
					progressBar.pulse();
					while ( GtkD.eventsPending() )
					{
						GtkD.mainIterationDo(false);
					}
					std.c.time.usleep(30000);
				}
			}
			
			int run()
			{
				ok = compile();
				return ok;
			}
			
		}
		
		if ( !cancel && ok && installerUI.getSelection("gtkDDev") )
		{
			ok = (new CompileThread("GtkD Development", &installGtkDDev)).ok;
		}

//		if ( ok && installerUI.getSelection("gtkDgl") )
//		{
//			label.setText("GtkDgl - openGL bindings");
//			Gdk.flush();
//			ok = installGtkDgl();
//		}

		if ( !cancel && ok && installerUI.getSelection("duiglDev") )
		{
			ok = (new CompileThread("GtkDgl Development", &installGtkDglDev)).ok;
		}

//		if ( !cancel && ok && installerUI.getSelection("leds") )
//		{
//			label.setText("leds");
//			Gdk.flush();
//			ok = installLeds();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("gtkDdi") )
//		{
//			label.setText("GtkD .di files");
//			Gdk.flush();
//			ok = installGtkDdi();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("gtkDSource") )
//		{
//			label.setText("GtkD source files");
//			Gdk.flush();
//			ok = installGtkDSource();
//		}
//
		if ( !cancel && ok && installerUI.getSelection("gtkDTests") )
		{
			ok = (new CompileThread("GtkD Test and demos programs", &installGtkDTests)).ok;
		}
		
		if ( !cancel && ok && installerUI.getSelection("gtkDglSimple") )
		{
			ok = (new CompileThread("GtkDgl SimpleGL demo program", &installGtkDglSimpleGL)).ok;
		}

		if ( !cancel && ok && installerUI.getSelection("gtkDglShapes") )
		{
			ok = (new CompileThread("GtkDgl ShapeGL and demo program", &installGtkDglShapesGL)).ok;
		}

//		if ( !cancel && ok && installerUI.getSelection("ledsGtkD") )
//		{
//			label.setText("Leds project for GtkD");
//			Gdk.flush();
//			ok = installLedsGtkD();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("ledsLeds") )
//		{
//			label.setText("Leds project for leds");
//			Gdk.flush();
//			ok = installLedsLeds();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("ledsDool") )
//		{
//			label.setText("Leds project for Dool");
//			Gdk.flush();
//			ok = installLedsDool();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("ledsDante") )
//		{
//			label.setText("Leds project for Dante");
//			Gdk.flush();
//			ok = installLedsDante();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("ledsPhobos") )
//		{
//			label.setText("Leds project for phobos");
//			Gdk.flush();
//			ok = installLedsPhobos();
//		}

	}
	
	
	private bool makeDirs(char[] dir)
	{
		bool ok = false;
		version(Win32)
		{
			system("md "~dir);
		}
		else
		{
			system("mkdir -p "~dir);
		}
		try
		{
			std.file.isdir(dir);
			ok = true;
		}
		catch ( FileException fe )
		{
			
		}
		return ok;
	}
	
	private bool installGtkDglSimpleGL()
	{
		bool ok = moveGtkDDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(gtkDDevHome);
			
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("-Isrcgl");
			compiler.addArg("-Idemos");
			compiler.addArg("demos/gl/SimpleGL.d");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-o SimpleGL");
			compiler.addArg("-L .");
			compiler.addArg("-lgtkD");
			compiler.addArg("-lgtkDgl");
			compiler.addArg("-lGL");
			compiler.addArg("-lGLU");
			version(linux)compiler.addArg("-ldl");
			
			compiler.addArg("-c");
			compiler.addArg("-op");
			
			version(Win32)
			{
				compiler.addArg("-lkernel32");
				compiler.addArg("-luser32");
			}
			else
			{
				compiler.addArg("-lpthread");
				compiler.addArg("-lm");
			}
			compiler.compile();
			if ( compiler.compileStatus == 0 
				&& compiler.linkStatus == 0
				)
			{
				ok = true;
			}
			else
			{
				ok = false;
			}
			
			std.file.chdir(cwd);
		}
		return ok;
	}

	private bool installGtkDglShapesGL()
	{
		bool ok = moveGtkDDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(gtkDDevHome);
			
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("-Isrcgl");
			compiler.addArg("demos/gl/TrackBall.d");
			compiler.addArg("demos/gl/ShapesGL.d");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-o ShapesGL");
			compiler.addArg("-L .");
			compiler.addArg("-lgtkD");
			compiler.addArg("-lgtkDgl");
			compiler.addArg("-lGL");
			compiler.addArg("-lGLU");
			version(linux)compiler.addArg("-ldl");
			
			compiler.addArg("-c");
			compiler.addArg("-op");
			
			version(Win32)
			{
				compiler.addArg("-lkernel32");
				compiler.addArg("-luser32");
			}
			else
			{
				compiler.addArg("-lpthread");
				compiler.addArg("-lm");
			}
			compiler.compile();
			if ( compiler.compileStatus == 0 
				&& compiler.linkStatus == 0
				)
			{
				ok = true;
			}
			else
			{
				ok = false;
			}
			
			std.file.chdir(cwd);
		}
		return ok;
	}

	private bool installGtkDglDev()
	{
		bool ok = true;
		
		Compiler compiler;
		
		char[] cwd = std.file.getcwd();
		
		
		
		version(Win32)
		{
			char[] libGtkDgl = "gtkDgl";
		}
		else
		{
			char[] libGtkDgl = "libgtkDgl";
		}
		
		
		
		ok = moveGtkDDev();
		if ( ok )
		{
			std.file.chdir(gtkDDevHome);
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("-Isrcgl");
			compiler.addArg("srcgl/glgdk");
			compiler.addArg("srcgl/glgtk");
			compiler.addArg("srcgl/lib");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-olib "~libGtkDgl);
			compiler.addArg("-L. ");
			compiler.addArg("-lgtkD ");
			compiler.addArg("-c");
			compiler.addArg("-op");
			
			version(Win32)
			{
				compiler.addArg("-lkernel32");
				compiler.addArg("-luser32");
			}
			else
			{
				compiler.addArg("-lpthread");
				compiler.addArg("-lm");
			}
			compiler.compile();
			if ( compiler.compileStatus == 0 
				&& compiler.linkStatus == 0
				)
			{
				ok = true;
			}
			else
			{
				ok = false;
			}
			
			std.file.chdir(cwd);
		}
		return ok;
	}

	
	private bool installGtkDTests()
	{
		bool ok = moveGtkDDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(gtkDDevHome);
			
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("-Idemos");
			compiler.addArg("demos/gtkD");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-o GtkDTests");
			compiler.addArg("-L .");
			compiler.addArg("-lgtkD");
			version(linux)compiler.addArg("-ldl");
			
			compiler.addArg("-c");
			compiler.addArg("-op");
			
			version(Win32)
			{
				compiler.addArg("-lkernel32");
				compiler.addArg("-luser32");
			}
			else
			{
				compiler.addArg("-lpthread");
				compiler.addArg("-lm");
			}
			compiler.compile();
			if ( compiler.compileStatus == 0 
				&& compiler.linkStatus == 0
				)
			{
				ok = true;
			}
			else
			{
				ok = false;
			}
			
			std.file.chdir(cwd);
		}
		return ok;
	}

	private bool movePackToDestiny(char[] from, char[] to)
	{
		int ok;
		version(Win32)
		{
			 ok = system("xcopy /s /Y /E /Q "~from~" "~to);
		}
		else
		{
			ok = system("cp -R "~from~" "~to);
		}
		return ok == 0;
	}

	bool gtkDDevMoved;
	
	private bool moveGtkDDev()
	{
		if ( !gtkDDevMoved )
		{
			if ( makeDirs(gtkDDevHome) )
			{
				gtkDDevMoved = movePackToDestiny("*", gtkDDevHome);
			}
		}
		return gtkDDevMoved;
	}
	
//	private bool installGtkD()
//	{
//		// nothing
//		return true;
//	}
	
	private bool installGtkDDev()
	{
		bool ok = true;
		
		Compiler compiler;
		
		char[] cwd = std.file.getcwd();
		
		
		
		version(Win32)
		{
			char[] libGtkD = "gtkD";
		}
		else
		{
			char[] libGtkD = "libgtkD";
		}
		
		
		ok = moveGtkDDev();
		if ( ok )
		{
			std.file.chdir(gtkDDevHome);
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("src/atk");
			compiler.addArg("src/cairoLib");
			compiler.addArg("src/gdk");
			compiler.addArg("src/glib");
			compiler.addArg("src/gobject");
			compiler.addArg("src/gthread");
			compiler.addArg("src/gtk");
			compiler.addArg("src/lib");
			compiler.addArg("src/pango");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-olib "~libGtkD);
			compiler.addArg("-c");
			compiler.addArg("-op");
			
			version(Win32)
			{
				compiler.addArg("-lkernel32");
				compiler.addArg("-luser32");
			}
			else
			{
				compiler.addArg("-lpthread");
				compiler.addArg("-lm");
			}
			compiler.compile();
			if ( compiler.compileStatus == 0 
				&& compiler.linkStatus == 0
				)
			{
				ok = true;
			}
			else
			{
				ok = false;
			}
			
			std.file.chdir(cwd);
		}
		return ok;
	}

}
