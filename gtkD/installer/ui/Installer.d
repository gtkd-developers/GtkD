/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
module ui.Installer;

private import ui.Main;
private import ui.Exec;
private import gtk.Duit;
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
 * From the informatino collected from the UI this will install Duit, Duitgl and or leds
 */
class Installer : MainWindow
{
	InstallerUI installerUI;
	Label label;
	ProgressBar progressBar;
	
	bool cancel = false;
	
	this(InstallerUI installerUI)
	{
		super("Installing Duit components");
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
	char[] duitDevHome;
	char[] phobos;
	char[] compilerExec;

	int ccount;
		

	private void install()
	{
		bool ok = true;
		duitDevHome = installerUI.getDirectory("duitDevHome");
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
		
//		if ( ok && installerUI.getSelection("duit") )
//		{
//			label.setText("");
//			Gdk.flush();
//			ok = installDuit();
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
					while ( Duit.eventsPending() )
					{
						Duit.mainIterationDo(false);
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
		
		if ( !cancel && ok && installerUI.getSelection("duitDev") )
		{
			ok = (new CompileThread("Duit Development", &installDuitDev)).ok;
		}

//		if ( ok && installerUI.getSelection("duitgl") )
//		{
//			label.setText("Duitgl - openGL bindings");
//			Gdk.flush();
//			ok = installDuitgl();
//		}

		if ( !cancel && ok && installerUI.getSelection("duiglDev") )
		{
			ok = (new CompileThread("Duitgl Development", &installDuitglDev)).ok;
		}

//		if ( !cancel && ok && installerUI.getSelection("leds") )
//		{
//			label.setText("leds");
//			Gdk.flush();
//			ok = installLeds();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("duitdi") )
//		{
//			label.setText("Duit .di files");
//			Gdk.flush();
//			ok = installDuitdi();
//		}
//
//		if ( !cancel && ok && installerUI.getSelection("duitSource") )
//		{
//			label.setText("Duit source files");
//			Gdk.flush();
//			ok = installDuitSource();
//		}
//
		if ( !cancel && ok && installerUI.getSelection("duitTests") )
		{
			ok = (new CompileThread("Duit Test and demos programs", &installDuitTests)).ok;
		}
		
		if ( !cancel && ok && installerUI.getSelection("duitglSimple") )
		{
			ok = (new CompileThread("Duitgl SimpleGL demo program", &installDuitglSimpleGL)).ok;
		}

		if ( !cancel && ok && installerUI.getSelection("duitglShapes") )
		{
			ok = (new CompileThread("Duitgl ShapeGL and demo program", &installDuitglShapesGL)).ok;
		}

//		if ( !cancel && ok && installerUI.getSelection("ledsDuit") )
//		{
//			label.setText("Leds project for Duit");
//			Gdk.flush();
//			ok = installLedsDuit();
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
	
	private bool installDuitglSimpleGL()
	{
		bool ok = moveDuitDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(duitDevHome);
			
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
			compiler.addArg("-lduit");
			compiler.addArg("-lduitgl");
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

	private bool installDuitglShapesGL()
	{
		bool ok = moveDuitDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(duitDevHome);
			
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
			compiler.addArg("-lduit");
			compiler.addArg("-lduitgl");
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

	private bool installDuitglDev()
	{
		bool ok = true;
		
		Compiler compiler;
		
		char[] cwd = std.file.getcwd();
		
		
		
		version(Win32)
		{
			char[] libDuitgl = "duitgl";
		}
		else
		{
			char[] libDuitgl = "libduitgl";
		}
		
		
		
		ok = moveDuitDev();
		if ( ok )
		{
			std.file.chdir(duitDevHome);
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
			compiler.addArg("-olib "~libDuitgl);
			compiler.addArg("-L. ");
			compiler.addArg("-lduit ");
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

	
	private bool installDuitTests()
	{
		bool ok = moveDuitDev();
		if ( ok )
		{
			char[] cwd = std.file.getcwd();
			Compiler compiler;
			std.file.chdir(duitDevHome);
			
			compiler = new Compiler();
			compiler.setExecutor(new Exec());
			compiler.setCompilerExec(compilerExec);
			
			compiler.addArg("-Isrc");
			compiler.addArg("-Idemos");
			compiler.addArg("demos/duit");
			compiler.addArg("-I"~phobos);
			compiler.addArg("-L"~std.path.join(dmdHome,"lib"));
			compiler.addArg("-o DuitTests");
			compiler.addArg("-L .");
			compiler.addArg("-lduit");
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

	bool duitDevMoved;
	
	private bool moveDuitDev()
	{
		if ( !duitDevMoved )
		{
			if ( makeDirs(duitDevHome) )
			{
				duitDevMoved = movePackToDestiny("*", duitDevHome);
			}
		}
		return duitDevMoved;
	}
	
//	private bool installDuit()
//	{
//		// nothing
//		return true;
//	}
	
	private bool installDuitDev()
	{
		bool ok = true;
		
		Compiler compiler;
		
		char[] cwd = std.file.getcwd();
		
		
		
		version(Win32)
		{
			char[] libDuit = "duit";
		}
		else
		{
			char[] libDuit = "libduit";
		}
		
		
		ok = moveDuitDev();
		if ( ok )
		{
			std.file.chdir(duitDevHome);
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
			compiler.addArg("-olib "~libDuit);
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
