/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module installer.Installer;

private import dui.All;
 
private import dool.System;
private import dool.io.Path;
private import std.stdio;
private import dool.Process;
private import dool.util.Comd;
private import dool.String;
private import std.Thread;
	
private import installer.Manager;
//debug=debugCompileExe;

public class Installer : MainWindow
{
	Notebook pageHeader;
	Notebook pageMain;

	Button back;
	Button next;
	Button cancel;
	
	int panel = 0;
	int maxPanel = 1;
	
	VBox mainBox;
	
	Comd comd;
	Manager manager;
	
	public this()
	{
		super("DUI windows installer");
		comd = new Comd();
		manager = new Manager();

		setSizeRequest(500,300);

		mainBox = init();
		setPages();
		addPagesToNotebook();
		
		mainBox.packStart(pageHeader, false, false, 2);
		mainBox.packStart(pageMain, true, true, 2);
		mainBox.packStart(setButtons(), false, false, 0);
		
		HBox hbox = new HBox(0,false);
		
		Image image = new Image(new Pixbuf(duiLogo_xpm));
		
		VBox vbox = new VBox(0,false);
		vbox.packStart(image, false, false, 0);
		
		Alignment alig = new Alignment(0.5, 1.0, 0.0, 0.0);
		alig.add(new Label("DUI"));
		vbox.packStart(alig, false, false, 0);
		
		alig = new Alignment(0.5, 1.0, 0.0, 0.0);
		alig.add(new Label("installer"));
		vbox.packStart(alig, false, false, 0);
		
		vbox.packStart(new Label(""), true, true, 0); // just to space
		
		hbox.packStart(vbox, false, false, 0);
		hbox.packStart(mainBox, true, true, 0);
		
		add(hbox);
		show();
	}
	
	private VBox init()
	{
		VBox vbox = new VBox(false, 0);
		
		back = new Button("Back", &backAction);
		next = new Button("Next", &nextAction);
		cancel = new Button("Cancel", &cancelAction);
		
		back.setSensitive(false);
		
		return vbox;
		
	}
	
	private HButtonBox setButtons()
	{
		HButtonBox box = HButtonBox.createActionBox();
		box.packStart(back, false, false, 7);
		box.packStart(next, false, false, 7);
		box.packStart(cancel, false, false, 7);
		
		return box;
	}
	
	int exec(String command, String grabOutput, String grabError, out int exitStatus)//, ErrorG error)
	{

		version(Win32)
		{
//			command = String.join(command.split(),"' '").prepend("'").append("'");
		}

		printf("\nexecuting\n%s\n", command.toStringz());

		//Spawn.commandLineAsync(command);

		//Spawn.commandLineSync(command,grabOutput, grabError, exitStatus);
		Process.system(command);
		//printf("exitStatus = %d\n", exitStatus);
		//printf("stdput     = %s\n", grabOutput.toStringz());
		//printf("stderr     = %s\n", grabError.toStringz());

		return exitStatus;

	}


	void popupMessage(char[] message)
	{
		MessageDialog d = new MessageDialog(
				this, 0,
				DialogType.INFO,DialogButtons.OK,
				message
				);
		d.setTitle("DUI Installer");
		d.run();
		d.destroy();

	}
		

	abstract class Page
	{
		VBox headerBox;
		VBox mainBox; // most common
		Installer installer;
		
		bit firstShow = true;
		
		this(Installer installer)
		{
			this.installer = installer;
			headerBox = new VBox(false, 0);
			mainBox = new VBox(false, 0);
			setup();
		}
		
		Widget getHeader()
		{
			return headerBox;
		}
		
		Widget getWidget()
		{
			return mainBox;
		}
		
		abstract String getName();
		abstract void setup();
		
		/* don't override this */
		void show()
		{
			showPage();
			firstShow = false;
		}
		
		/* override this not show */
		void showPage()
		{
		}
		
		bit sensitiveBack()
		{
			return true;
		}
		
		bit sensitiveNext()
		{
			return true;
		}
		
		bit validate()
		{
			return true;
		}
		
		bit advance()
		{
			return true;
		}
		
		bit exitInstall()
		{
			return false;
		}
		String getBackLabel()
		{
			return new String("Back");
		}
		String getNextLabel()
		{
			return new String("Next");
		}
	}
	
	Page currPage;
	Page[] pages;
	
	/**
	 * Just a welcome message
	 */
	class PageWelcome : Page
	{
		this(Installer installer)
		{
			super(installer);
		}
		
		String getName()
		{
			return new String("Welcome");
		}
		
		void setup()
		{
			
			headerBox.packStart(new Label("Welcome to DUI"), true, true,0 );
			mainBox.packStart(new Label("This will install DUI on your system."
								"\nClick next to start the installation process or cancel to exit."), true, true,0 );
			mainBox.packStart(new Label("This installer is a DUI application"), true, true,0 );
			
		}
	}
	
	/**
	 * Shows the licenses and the agree/disagree buttons.
	 * Prevents from advancing until agree is set
	 */
	class PageLicense : Page
	{

		Label welcome;
		
		RadioButton lgplLicense;
		RadioButton artisticLicense;
		
		TextView licenseText;
		RadioButton agreeRadio;
		RadioButton disagreeRadio;

		this(Installer installer)
		{
			super(installer);
		}
		
		String getName()
		{
			return new String("License");
		}
		
		void setup()
		{
		
			welcome = new Label("Please choose your preferred DUI license");
			
			licenseText = new TextView();
			licenseText.setEditable(false);
			licenseText.getBuffer().setText(LGPLLicense);
			
			
			headerBox.packStart(welcome, true, true, 0);
			
			
			lgplLicense = new RadioButton(cast(SListG)null, "LGPL");
			artisticLicense = new RadioButton(lgplLicense, "Artistic");
			
			lgplLicense.addOnClick(&lgplClick);
			artisticLicense.addOnClick(&artisticClick);

			HButtonBox lbox = HButtonBox.createActionBox();
			lbox.packStart(lgplLicense, false, false, 7);
			//lbox.packStart(artisticLicense, false, false, 7);
		
			headerBox.packStart(lbox, false, false, 0);
			
			
			
			ScrolledWindow sw = new ScrolledWindow();
			sw.add(licenseText);
			mainBox.packStart(sw, true, true, 0);
			
			agreeRadio = new RadioButton(cast(SListG)null, "agree");
			disagreeRadio = new RadioButton(agreeRadio, "disagree");
			
			disagreeRadio.setActive(true);
			
			agreeRadio.addOnClick(&agreeClick);
			disagreeRadio.addOnClick(&disagreeClick);
			
			HButtonBox box = HButtonBox.createActionBox();
			box.packStart(agreeRadio, false, false, 7);
			box.packStart(disagreeRadio, false, false, 7);
	
			mainBox.packStart(box, false, false, 0);
			
		}
		
		void lgplClick()
		{
			licenseText.setWrapMode(WrapMode.NONE);
			licenseText.getBuffer().setText(LGPLLicense);
		}
		
		void artisticClick()
		{
			licenseText.setWrapMode(WrapMode.WORD);
			licenseText.getBuffer().setText(ArtisticLicense);
		}
		
		
		void agreeClick()
		{
			installer.setAllowNext(true);
		}
		
		void disagreeClick()
		{
			installer.setAllowNext(false);
		}
		
		bit sensitiveNext()
		{
			return agreeRadio.getActive();
		}
	}
	
	/**
	 * Set the locations of the exising modules and
	 * the destination of the libraries and applications
	 */
	class PageLocations : Page
	{
		
		Entry dmdLoc;
		Entry phobosLoc;
		Entry gtkLoc;
		Entry sqlite3Loc;
		
		Entry destLoc;
		Entry destGtk;
		Entry destSQLite3;
		
		private FileChooserDialog fcDmd;
		private FileChooserDialog fcPhobos;
		private FileChooserDialog fcGtk;
		private FileChooserDialog fcDest;
		private FileChooserDialog fcDestGtk;
		private FileChooserDialog fcDestSQLite3;
		
		String commonProgramFiles;
		String commonDante;
		String commonGtk;
		String commonSQLite3;

		String programFiles;
		String programFilesBin;

		String homePrograms;
		String dantePrograms;

		
		String getCommonProgramFiles()	{ return commonProgramFiles;}
		String getCommonDante()			{ return commonDante;}
		String getCommonGtk()			{ return commonGtk;}
		String getCommonSQLite3()		{ return commonSQLite3;}

		String getProgramFiles()		{ return programFiles;}
		String getProgramFilesBin()		{ return programFilesBin;}

		String getHomePrograms()		{ return homePrograms;}
		String getDantePrograms()		{ return dantePrograms;}

		Comd comd;
		
		this(Installer installer, Comd comd)
		{
			this.comd = comd;
			super(installer);
		}
		
		String getName()
		{
			return new String("Locations");
		}

		String getDestination()
		{
			return destLoc.getText();
		}
		
		String getDestinationGtk()
		{
			return destGtk.getText();
		}
		
		String getDMDLocation()
		{
			return comd.getDMDLocation();
		}
		
		bit advance()
		{
			comd.setDMDLocation(dmdLoc.getText());
			comd.setPhobosLocation(phobosLoc.getText());
			comd.setGtkLocation(gtkLoc.getText());
			
			bit ok = comd.checkPaths();
			
			if ( !ok )
			{
				String paths = String.join(comd.getPathsErrors(),"\n");
				installer.popupMessage(
					"DMD home not found\n\n"
					~paths.toString()
					);
			}
			
			return ok;

		}
		

		
		void setup()
		{

			headerBox.packStart(
				new Label("Select existing applications directories\nand destination directories"),
				true, true, 0);

			dmdLoc = new Entry();
			phobosLoc = new Entry();
			gtkLoc = new Entry();
			sqlite3Loc = new Entry();
			
			destLoc = new Entry();
			destGtk = new Entry();
			destSQLite3 = new Entry();

			Table table;
			
			table = new Table(3,3,false);
			table.attach(new Label("dmd"), 0,1,0,1 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(dmdLoc, 1,2,0,1 ,AttachOptions.FILL | AttachOptions.EXPAND,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browseDmd), 2,3,0,1 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			table.attach(new Label("phobos"), 0,1,1,2 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(phobosLoc, 1,2,1,2 ,AttachOptions.FILL,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browsePhobos), 2,3,1,2 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			table.attach(new Label("GTK+"), 0,1,2,3 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(gtkLoc, 1,2,2,3 ,AttachOptions.FILL,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browseGtk), 2,3,2,3 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			Alignment alig = new Alignment(0,.5,0,0);
			alig.add(new Label("Destination directories"));
			table.attach(alig, 0,3,3,4, AttachOptions.FILL,AttachOptions.SHRINK, 4,2);
			
			table.attach(new Label("dool/DUI"), 0,1,4,5 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(destLoc, 1,2,4,5 ,AttachOptions.FILL,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browseDest), 2,3,4,5 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			table.attach(new Label("Gtk"), 0,1,5,6 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(destGtk, 1,2,5,6 ,AttachOptions.FILL,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browseDestGtk), 2,3,5,6 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			table.attach(new Label("SQLite3"), 0,1,6,7 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(destSQLite3, 1,2,6,7 ,AttachOptions.FILL,AttachOptions.FILL, 4,2);
			table.attach(new Button("browse", &browseDestSQLite3), 2,3,6,7 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			mainBox.packStart(table, false, false, 0);
		}
		
		void showPage()
		{
			printf("################### Location. showPage %d\n", firstShow);
			if ( firstShow )
			{
				findLocations();
			}
		}
		
		private void findLocations()
		{
			commonProgramFiles = System.getEnv("CommonProgramFiles");
			commonDante = new String("\\dantfw");
			commonGtk =  Path.join(commonProgramFiles, "GTK\\2.4");
			commonSQLite3 =  Path.join(commonProgramFiles, "sqlite3");

			programFiles = Path.join(System.getEnv("ProgramFiles"),"dantfw");
			programFilesBin = Path.join(programFiles, "bin");

			homePrograms = Path.join(System.getEnv("HOMEPATH"),"Start Menu\\Programs");
			homePrograms = Path.join(System.getEnv("HOMEDRIVE"),homePrograms);
			dantePrograms = Path.join(homePrograms,"dantfw");

			destLoc.setText(commonDante);
			destGtk.setText(commonGtk);
			destSQLite3.setText(commonSQLite3);

			dmdLoc.setText(comd.getDMDLocation());
			phobosLoc.setText(comd.getPhobosLocation());
			gtkLoc.setText(comd.getGtkLocation());

		}

		private void browseDmd()
		{
			if ( fcDmd === null )
			{
				fcDmd = new FileChooserDialog("Select dmd home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcDmd.run();
			fcDmd.hide();
			if ( response == Response.OK )
			{
				dmdLoc.setText(fcDmd.getFilename());
			}
		}
		
		private void browsePhobos()
		{
			if ( fcPhobos === null )
			{
				fcPhobos = new FileChooserDialog("Select phobos home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcPhobos.run();
			fcPhobos.hide();
			if ( response == Response.OK )
			{
				phobosLoc.setText(fcPhobos.getFilename());
			}
		}
		
		private void browseGtk()
		{
			if ( fcGtk === null )
			{
				fcGtk = new FileChooserDialog("Select Gtk home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcGtk.run();
			fcGtk.hide();
			if ( response == Response.OK )
			{
				gtkLoc.setText(fcGtk.getFilename());
			}
		}
		
		private void browseDest()
		{
			if ( fcDest === null )
			{
				fcDest = new FileChooserDialog("Select Destination home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcDest.run();
			fcDest.hide();
			if ( response == Response.OK )
			{
				destLoc.setText(fcDest.getFilename());
			}
		}
		
		private void browseDestGtk()
		{
			if ( fcDestGtk === null )
			{
				fcDestGtk = new FileChooserDialog("Select Destination home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcDestGtk.run();
			fcDestGtk.hide();
			if ( response == Response.OK )
			{
				destGtk.setText(fcDestGtk.getFilename());
			}
		}
		
		private void browseDestSQLite3()
		{
			if ( fcDestSQLite3 === null )
			{
				fcDestSQLite3 = new FileChooserDialog("Select Destination home", installer, FileChooserAction.SELECT_FOLDER);
			}
			Response response = fcDestSQLite3.run();
			fcDestSQLite3.hide();
			if ( response == Response.OK )
			{
				destSQLite3.setText(fcDestSQLite3.getFilename());
			}
		}
		
	}
	
	/**
	 * Selects the modules to create
	 */
	class PageModules : Page
	{

		CheckButton doGTK;
		CheckButton doDant;
		CheckButton doDantSrc;
		CheckButton doDUITests;
		CheckButton doDUIGL;
		CheckButton doDUIGLTests;
		CheckButton doLeds;
		
		CheckButton doSQLite3;
	
		this(Installer installer)
		{
			super(installer);
		}
		
		String getName()
		{
			return new String("Modules");
		}
		
		void setup()
		{

			headerBox.packStart(new Label("Select the modules to install"), true, true, 0);
			bit installGTK = Path.exists("usr\\bin\\libgtk-win32-2.0-0.dll")!=0;
			doGTK = new CheckButton("Install GTK+");
			doGTK.setSensitive(installGTK);
			doDant = new CheckButton("Install dant");
			doDantSrc = new CheckButton("Install dant sources");
			doDUITests = new CheckButton("Create DUI tests");
			doDUIGL = new CheckButton("Install DUI openGL extensions");
			doDUIGLTests = new CheckButton("Create DUI openGL extension tests");
			doLeds = new CheckButton("Install Leds");
			doLeds.setSensitive(false);
			doSQLite3 = new CheckButton("Install sqlite3");
			
			doGTK.setActive(installGTK);
			doDant.setActive(true);
			doDantSrc.setActive(true);
			doDUITests.setActive(true);
			doDUIGL.setActive(true);
			doDUIGLTests.setActive(true);
			doLeds.setActive(false);
			doSQLite3.setActive(true);
				
			mainBox.packStart(doGTK, false, false, 0);
			mainBox.packStart(doDant, false, false, 0);
			mainBox.packStart(doDantSrc, false, false, 0);
			mainBox.packStart(doDUITests, false, false, 0);
			mainBox.packStart(doDUIGL, false, false, 0);
			mainBox.packStart(doDUIGLTests, false, false, 0);
			mainBox.packStart(doLeds, false, false, 0);
			mainBox.packStart(doSQLite3, false, false, 0);
			
			doDant.setActive(true);
			doDantSrc.setActive(true);
			doDUITests.setActive(true);
			
			doLeds.setSensitive(false);
		}
		
		bit isCompileGTK()
		{
			return doGTK.getActive();
		}
		bit isCompileDant()
		{
			return doDant.getActive();
		}
		bit isCompileDantSrc()
		{
			return doDantSrc.getActive();
		}
		bit isCompileDUITests()
		{
			return doDUITests.getActive();
		}
		bit isCompileDUIGL()
		{
			return doDUIGL.getActive();
		}
		bit isCompileDUIGLTests()
		{
			return doDUIGLTests.getActive();
		}
		bit isCompileSimpleGL()
		{
			return doDUIGLTests.getActive();
		}
		bit isCompileLeds()
		{
			return doLeds.getActive();
		}
		bit isCompileSQLite3()
		{
			return doSQLite3.getActive();
		}

	}
	
	/**
	 * Askes for confirmation and compiles the libs
	 */
	class PageCompile : Page
	{
		
		Comd comd;
		Manager manager;
		
		ProgressBar progressBar;
		
		/** when true the compilation is done */
		bit compiled = false;
		
		this(Installer installer, Comd comd, Manager manager)
		{
			this.manager = manager;
			this.comd = comd;
			super(installer);
		}
		
		/**
		 * Resets the compiled flag
		 */
		void showPage()
		{
			compiled = false;
		}
		
		String getNextLabel()
		{
			return new String("Install");
		}

		String getName()
		{
			return new String("Install");
		}
		
		void setup()
		{
			headerBox.packStart(new Label("Install DUI"), true, true, 0);
			
			mainBox.packStart(new Label("Press install to procede"), true, false, 0);
			
			progressBar = new ProgressBar();
			//progressBar.setBorderWidth(7);
			
			mainBox.packStart(new Label("Progress"), true, false, 0);
			mainBox.packStart(progressBar, true, false, 0);
		}

		bit advance()
		{
			if ( !compiled )
			{
	    		installer.setAllowNext(false);
	    		installer.setAllowBack(false);
				bit ok = compileSelected();
				compiled = true;
				return false;
			}
			return true;
		}
		
		bit compileSelected()
		{
			progressBar.setText("Setting DUI manager");
			DUI.dui.processPendingEvents();

			writefln("#############################");
			writefln("#############################");
			writefln("### start dui install     ###");
			writefln("#############################");
			writefln("#############################");


			writefln("dantfwPrograms to : %s",installer.pageLocations.getDantePrograms());
			writefln("programFiles to : %s",installer.pageLocations.getProgramFiles());
			writefln("programFilesBin to : %s",installer.pageLocations.getProgramFilesBin());
			writefln("common Gtk to : %s",installer.pageLocations.getCommonGtk());
			writefln("common Dante to : %s",installer.pageLocations.getCommonDante());
			writefln();
			
			int countSteps = 1 + 
					  (installer.pageModules.isCompileGTK() ? 1 : 0)
					+ (installer.pageModules.isCompileDant() ? 1 : 0)
					+ (installer.pageModules.isCompileDantSrc() ? 1 : 0)
					+ (installer.pageModules.isCompileDUITests() ? 1 : 0)
					+ (installer.pageModules.isCompileDUIGL() ? 1 : 0)
					+ (installer.pageModules.isCompileDUIGLTests() ? 1 : 0)
					+ (installer.pageModules.isCompileSimpleGL() ? 1 : 0)
					+ (installer.pageModules.isCompileLeds() ? 1 : 0)
					+ (installer.pageModules.isCompileSQLite3() ? 1 : 0)
					;
			
			float step = 1.0 / cast(float)countSteps;
			float currStep = 0;
			
			void copy(char[] fileName, String location, char[] manKey=null)
			{
				writefln("copy ", fileName, " >to> ", location);
				DUI.dui.processPendingEvents();
				writefln("..copy %s %s %s",fileName, location, manKey);
				if ( !Path.exists(location) )
				{
					writefln("need to create location ",location);
					Path.mkdirs(location);
				}
				String dest = Path.join(location,Path.getBaseName(fileName));
				int exitCode = Process.system(
					new String("copy "~fileName)
					~" \""~dest~"\"");
					
				if ( exitCode == 0)
				{
					if ( manKey != null )
					{
						manager.set(manKey,location);
					}
				}
				else
				{
					writef("\nError: unable to copy %s to %s\n\n", 
						Path.join(Path.getcwd(),fileName), dest);
				}
				DUI.dui.processPendingEvents();
			}
			
			void xcopy(char[] fileName, String location, char[] manKey=null)
			{
				writefln("xcopy ", fileName, " >to> ", location);
				DUI.dui.processPendingEvents();
				if ( !Path.exists(location) ) Path.mkdirs(location);
				String dest = Path.join(location,Path.getBaseName(fileName));

				int exitCode = Process.system(
					new String("xcopy "~fileName)
					~" \"" ~ dest ~"\" /S /E /I /Q /R /K /Y");
					
				if ( exitCode == 0)
				{
					if ( manKey != null )
					{
						manager.set(manKey,location);
					}
				}
				else
				{
					writef("\nError: unable to xcopy %s to %s\n\n",
						Path.join(Path.getcwd(),fileName), dest);
				}
				DUI.dui.processPendingEvents();
			}
			
			
			// first of all make the directories
			
			writefln("create install directory : ",installer.pageLocations.getDantePrograms());
			writefln("create install directory : ",installer.pageLocations.getProgramFiles());
			writefln("create install directory : ",installer.pageLocations.getProgramFilesBin());
			writefln("create install directory : ",installer.pageLocations.getCommonDante());
			
			Path.mkdirs(installer.pageLocations.getDantePrograms());
			Path.mkdirs(installer.pageLocations.getProgramFiles());
			Path.mkdirs(installer.pageLocations.getProgramFilesBin());
			Path.mkdirs(installer.pageLocations.getCommonDante());
			
			manager.set("dantePrograms", installer.pageLocations.getDantePrograms());
			manager.set("programFiles", installer.pageLocations.getProgramFiles());
			manager.set("dmd", installer.pageLocations.getDMDLocation());
			manager.set("dmd.exe",Path.join(installer.pageLocations.getDMDLocation(),"bin\\dmd.exe"));
			manager.set("link.exe",Path.join(
					Path.getDirName(installer.pageLocations.getDMDLocation()),"dm\\bin\\link.exe"));
			manager.set("lib.exe",Path.join(
					Path.getDirName(installer.pageLocations.getDMDLocation()),"dm\\bin\\lib.exe"));
			manager.set("linkOptions","/DELEXECUTABLE /NODET /NOI");
			manager.set("importPhobos",Path.join(installer.pageLocations.getDMDLocation(),"src\\phobos"));
			manager.set("importDool",manager.get("importPhobos")~";"~Path.join(installer.pageLocations.getCommonDante(),"doolD\\src"));
			manager.set("importDUI",manager.get("importDool")~";"~Path.join(installer.pageLocations.getCommonDante(),"duiD\\src"));
			manager.set("importOpenGL",manager.get("importDUI")~";"~Path.join(installer.pageLocations.getCommonDante(),"duiD\\src"));
			
			manager.set("libsPhobos","phobos");
			manager.set("libsDool","phobos;dool");
			manager.set("libsDUI","phobos;dool;dui;charset;iconv;intl;jpeg62;libatk-1.lib;libgdk-win32-2.lib;libgdk_pixbuf-2.lib;libglib-2.lib;libgmodule-2.lib;libgobject-2.lib;libgthread-2.lib;libgtk-win32-2.lib;libpango-1.lib;libpangoft2-1.lib;libpangowin32-1.lib;zlib1");
			manager.set("libsOpenGL","phobos;dool;dui;duigl;charset;iconv;intl;jpeg62;libatk-1.lib;libgdk-win32-2.lib;libgdk_pixbuf-2.lib;libglib-2.lib;libgmodule-2.lib;libgobject-2.lib;libgthread-2.lib;libgtk-win32-2.lib;libpango-1.lib;libpangoft2-1.lib;libpangowin32-1.lib;zlib1;libgdkglext-win32-1.lib;libgtkglext-win32-1.lib;opengl32;glu32");
			
			manager.set("locPhobos",Path.join(installer.pageLocations.getDMDLocation(),"lib"));
			manager.set("locDool",manager.get("locPhobos")~";"~installer.pageLocations.getCommonDante());
			manager.set("locDUI",manager.get("locDool")~";"~Path.join(installer.pageLocations.getCommonDante(),"GTK\\lib"));
			manager.set("locOpenGL",manager.get("locDUI")~";"~Path.join(System.getEnv("SystemRoot"), "system32"));

			bit ok = true;
			
			copy("dantfw\\dantCompile.exe", installer.pageLocations.getProgramFilesBin());
			copy("dantfw\\dantCompile.exe", installer.pageLocations.getDantePrograms());
			if ( ok && installer.pageModules.isCompileGTK() )
			{
				progressBar.setText("Installing GTK");
				progressBar.setFraction(currStep += step);
				String location = installer.pageLocations.getCommonGtk();
				manager.set("GTK2.4", location);
				xcopy("usr\\bin", location);
				xcopy("usr\\etc", location);
				xcopy("usr\\lib", location);
				xcopy("usr\\share", location);
				
				location = Path.join(installer.pageLocations.getCommonDante(),"GTK");
				
				xcopy(Path.join("dantfw","GTK").toString(), location,"GTKlib");
				comd.setGtkLocation(Path.join(location,"lib"));
				
				writefln("set comd.setGtkLocation to : ", Path.join(location,"lib"));
				if ( !installer.pageModules.isCompileSQLite3() )
				{
					String sqlite = Path.join(installer.pageLocations.getCommonDante(),"GTK\\lib\\sqlite3.lib")	;				
					Path.remove(sqlite);
					sqlite = Path.join(installer.pageLocations.getCommonGtk(),"bin\\sqlite3.lib");	
					Path.remove(sqlite);
				}
			}

			if ( ok && installer.pageModules.isCompileDant() )
			{
				progressBar.setText("Installing dantfw");
				progressBar.setFraction(currStep += step);
				xcopy("dantfw\\contrib ", installer.pageLocations.getCommonDante(), "dantfw");
				xcopy("dantfw\\examples ", installer.pageLocations.getCommonDante());
				xcopy("dantfw\\GTK ", installer.pageLocations.getCommonDante());
				copy("dantfw\\dool.lib",installer.pageLocations.getCommonDante());
				copy("dantfw\\dui.lib",installer.pageLocations.getCommonDante());
				copy("dantfw\\duigl.lib",installer.pageLocations.getCommonDante());
				
				comd.setDAntFWocation(installer.pageLocations.getCommonDante());
			}
			
			if ( ok && installer.pageModules.isCompileDantSrc() )
			{
				progressBar.setText("Installing dantfw Source");
				progressBar.setFraction(currStep += step);
				xcopy("dantfw\\doolD ", installer.pageLocations.getCommonDante());
				xcopy("dantfw\\duiD ", installer.pageLocations.getCommonDante());
				xcopy("dantfw\\ledsD ", installer.pageLocations.getCommonDante());
			}
			
			if ( ok && installer.pageModules.isCompileDantSrc() )
			{
				if ( compileDoolTest() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\doolD\\doolTest.exe", installer.pageLocations.getProgramFilesBin(), "doolTest");
					copy("dantfw\\doolD\\doolTest.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling dool tests");
				}
			}
//			if ( ok && installer.pageModules.isCompileDUI() )
//			{
//				progressBar.setText("Installing DUI");
//				progressBar.setFraction(currStep += step);
//				if ( compileDUI() )
//				{
//					copy("dui\\dui.lib", installer.pageLocations.getCommonDante(), "dui");
//				}
//				else
//				{
//					ok = false;
//					installer.popupMessage("Error compiling DUI");
//				}
//			}
			if ( ok && installer.pageModules.isCompileDantSrc() )
			{
				if ( compileHelloWorld() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\duiD\\HelloWorld.exe", installer.pageLocations.getProgramFilesBin(), "HelloWorld");
					copy("dantfw\\duiD\\HelloWorld.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling DUI HelloWorld");
				}
			}
			if ( ok && installer.pageModules.isCompileDUITests() )
			{
				progressBar.setText("Installing DUITests");
				progressBar.setFraction(currStep += step);
				if ( compileDUITest() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\duiD\\DUITests.exe", installer.pageLocations.getProgramFilesBin(), "DUITests");
					copy("dantfw\\duiD\\DUITests.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling DUI Tests");
				}
			}
			if ( ok && installer.pageModules.isCompileDantSrc() )
			{
				if ( compileWHMoving() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\duiD\\HelloWorldTimeout.exe", installer.pageLocations.getProgramFilesBin(), "HelloWorldTimeout");
					copy("dantfw\\duiD\\HelloWorldTimeout.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling DUI HelloWorldTimeout");
				}
			}
//			if ( ok && installer.pageModules.isCompileDUIGL() )
//			{
//				progressBar.setText("Installing DUIGL");
//				progressBar.setFraction(currStep += step);
//				if ( compileDUIGL() )
//				{
//					String location = installer.pageLocations.getCommonDante();
//					copy("dui\\duigl.lib", installer.pageLocations.getCommonDante(), "duigl");
//				}
//				else
//				{
//					ok = false;
//					installer.popupMessage("Error compiling DUI OpenGL");
//				}
//			}
			//if ( ok && installer.pageModules.isCompileDUIGLTests() )
			if ( ok && installer.pageModules.isCompileDUIGLTests() )
			{
				progressBar.setText("Installing DUITestsGL");
				progressBar.setFraction(currStep += step);
				if ( compileDUIGLTest() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\duiD\\DUITestsGL.exe", installer.pageLocations.getProgramFilesBin(), "DUITestsGL");
					copy("dantfw\\duiD\\DUITestsGL.exe", installer.pageLocations.getDantePrograms());
					copy("dantfw\\duiD\\DUIShapesGL.exe", installer.pageLocations.getProgramFilesBin(), "DUIShapesGL");
					copy("dantfw\\duiD\\DUIShapesGL.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling DUI OpenGL tests");
				}
			}
			if ( ok && installer.pageModules.isCompileDUIGLTests() )
			{
				progressBar.setText("Installing SimpleGL");
				progressBar.setFraction(currStep += step);
				if ( compileSimpleGL() )
				{
					String location = installer.pageLocations.getProgramFilesBin();
					copy("dantfw\\duiD\\simpleGL.exe", installer.pageLocations.getProgramFilesBin(), "simpleGL");
					copy("dantfw\\duiD\\simpleGL.exe", installer.pageLocations.getDantePrograms());
				}
				else
				{
					ok = false;
					installer.popupMessage("Error compiling DUI SimpleGL test");
				}
			}

			createExampleTargets(manager.getDirName(), manager.get("dantfw"));

			progressBar.setText("Finished");
			progressBar.setFraction(1.0);
			
			manager.writeMap();
			installer.setNextLabel(new String("Next"));

    		installer.setAllowNext(true);
    		installer.setAllowBack(true);

			
			return ok;
		}

		void createExampleTargets(String targetLoc, String dantLoc)
		{
			String loc = Path.join(targetLoc,"Targets");
			Path.mkdirs(loc);
			createExampleTarget(loc, new String("dui"),
				"#"
				~"\r\n# DUI compile configuration"
				~"\r\n#"
				~"\r\n"
				~"\r\nname:dui"
				~"\r\nscopePhobos:NO"
				~"\r\nscopeDool:YES"
				~"\r\nscopeDUI:NO"
				~"\r\nscopeOpenGL:NO"
				~"\r\ntypeExe:NO"
				~"\r\ntypeLib:YES"
				~"\r\ncompiler:"
				~"\r\noutName:dui"
				~"\r\nwrkDir:"~dantLoc.toString()~"\\duiD"
				~"\r\nsrcDirs:dango;ddi;dglib;dui;event"
				~"\r\nobjDir:obj"
				~"\r\nextraImports:"
				~"\r\nextraLibs:"
				~"\r\nflagC:YES"
				~"\r\nflagD:NO"
				~"\r\nflagG:NO"
				~"\r\nflagGT:NO"
				~"\r\nflagV:NO"
				~"\r\nflagDebug:NO"
				~"\r\nflagInline:NO"
				~"\r\nflagRelease:YES"
				~"\r\nflagUnittest:NO"
				~"\r\nversionLevel:"
				~"\r\nversionIdent:"
				~"\r\ndebugLevel:"
				~"\r\ndebugIdent:"
				~"\r\nflagOP:YES"
				~"\r\notherComp:"
				~"\r\notherLink:"
			);
			createExampleTarget(loc, new String("duigl"),
				"#"
				~"\r\n# DUI compile configuration"
				~"\r\n#"
				~"\r\n"
				~"\r\nname:duigl"
				~"\r\nscopePhobos:NO"
				~"\r\nscopeDool:NO"
				~"\r\nscopeDUI:YES"
				~"\r\nscopeOpenGL:NO"
				~"\r\ntypeExe:NO"
				~"\r\ntypeLib:YES"
				~"\r\ncompiler:"
				~"\r\noutName:duigl"
				~"\r\nwrkDir:"~dantLoc.toString()~"\\duiD"
				~"\r\nsrcDirs:ggl"
				~"\r\nobjDir:obj"
				~"\r\nextraImports:"
				~"\r\nextraLibs:"
				~"\r\nflagC:YES"
				~"\r\nflagD:NO"
				~"\r\nflagG:NO"
				~"\r\nflagGT:NO"
				~"\r\nflagV:NO"
				~"\r\nflagDebug:NO"
				~"\r\nflagInline:NO"
				~"\r\nflagRelease:YES"
				~"\r\nflagUnittest:NO"
				~"\r\nversionLevel:"
				~"\r\nversionIdent:"
				~"\r\ndebugLevel:"
				~"\r\ndebugIdent:"
				~"\r\nflagOP:YES"
				~"\r\notherComp:"
				~"\r\notherLink:"
			);
			createExampleTarget(loc, new String("HelloWorld"),
				"#"
				~"\r\n# DUI compile configuration"
				~"\r\n#"
				~"\r\n"
				~"\r\nname:HelloWorld"
				~"\r\nscopePhobos:NO"
				~"\r\nscopeDool:NO"
				~"\r\nscopeDUI:YES"
				~"\r\nscopeOpenGL:NO"
				~"\r\ntypeExe:YES"
				~"\r\ntypeLib:NO"
				~"\r\ncompiler:"
				~"\r\noutName:..\\HelloWorld"
				~"\r\nwrkDir:"~dantLoc.toString()~"\\duiD"
				~"\r\nsrcDirs:hw"
				~"\r\nobjDir:obj"
				~"\r\nextraImports:"
				~"\r\nextraLibs:"
				~"\r\nflagC:YES"
				~"\r\nflagD:NO"
				~"\r\nflagG:NO"
				~"\r\nflagGT:NO"
				~"\r\nflagV:NO"
				~"\r\nflagDebug:NO"
				~"\r\nflagInline:NO"
				~"\r\nflagRelease:YES"
				~"\r\nflagUnittest:NO"
				~"\r\nversionLevel:"
				~"\r\nversionIdent:"
				~"\r\ndebugLevel:"
				~"\r\ndebugIdent:"
				~"\r\nflagOP:YES"
				~"\r\notherComp:"
				~"\r\notherLink:"
			);
			createExampleTarget(loc, new String("DUITests"),
				"#"
				~"\r\n# DUI compile configuration"
				~"\r\n#"
				~"\r\n"
				~"\r\nname:DUITests"
				~"\r\nscopePhobos:NO"
				~"\r\nscopeDool:NO"
				~"\r\nscopeDUI:YES"
				~"\r\nscopeOpenGL:NO"
				~"\r\ntypeExe:YES"
				~"\r\ntypeLib:NO"
				~"\r\ncompiler:"
				~"\r\noutName:..\\DUITests"
				~"\r\nwrkDir:"~dantLoc.toString()~"\\duiD"
				~"\r\nsrcDirs:test"
				~"\r\nobjDir:obj"
				~"\r\nextraImports:"
				~"\r\nextraLibs:"
				~"\r\nflagC:YES"
				~"\r\nflagD:NO"
				~"\r\nflagG:NO"
				~"\r\nflagGT:NO"
				~"\r\nflagV:NO"
				~"\r\nflagDebug:NO"
				~"\r\nflagInline:NO"
				~"\r\nflagRelease:YES"
				~"\r\nflagUnittest:NO"
				~"\r\nversionLevel:"
				~"\r\nversionIdent:"
				~"\r\ndebugLevel:"
				~"\r\ndebugIdent:"
				~"\r\nflagOP:YES"
				~"\r\notherComp:"
				~"\r\notherLink:"
			);
		}

		private import dool.io.OutBuffer;
		private import dool.io.FileBuffer;

		void createExampleTarget(String loc, String name, char[] parms)
		{
			OutBuffer outBuffer = new OutBuffer();
			outBuffer.write(parms);
			try
			{
				FileBuffer.write(Path.join(loc,name), outBuffer);
			}
			catch ( FileException fe)
			{
				writefln("Error creating example ",name);
			}
		}

		bit compileDool()
		{
			String currDir = Path.getcwd();
			Path.chdir("dool");
			int ok = comd.parseAndCompile("-lib dool -src dool -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}

		bit compileDoolTest()
		{
			writefln("compileDoolTest 1");
			String currDir = Path.getcwd();
			writefln("compileDoolTest 2");
			Path.chdir("dantfw\\doolD");
			writefln("compileDoolTest 3");
			int ok = comd.parseAndCompile("-exe doolTest -src test -obj obj");
			writefln("compileDoolTest 4");
			Path.chdir(currDir);
			writefln("compileDoolTest 5");
			return ok==ComdError.OK;
		}

		bit compileDUI()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile(
				"-lib dui -src dango;ddi;dglib;def;dui;event -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}
		
		bit compileDUIGL()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-lib duigl -src ggl -obj obj");
			Path.chdir(currDir);
			return ok==0;
		}
		
		bit compileDUITest()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-exe DUITests -src test -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}
		
		bit compileHelloWorld()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-exe HelloWorld -src hw -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}
		
		bit compileWHMoving()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-exe HelloWorldTimeout -src hwMoving -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}
		
		bit compileDUIGLTest()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-exe DUITestsGL -src testGL;openGL -obj obj");
			Path.chdir(currDir);
			//return ok==ComdError.OK;
			
			currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			ok = comd.parseAndCompile("-exe DUIShapesGL -src shapesGL;openGL -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
			
			
		}

		bit compileSimpleGL()
		{
			String currDir = Path.getcwd();
			Path.chdir("dantfw\\duiD");
			int ok = comd.parseAndCompile("-exe SimpleGL -src simpleGL -obj obj");
			Path.chdir(currDir);
			return ok==ComdError.OK;
		}

	}

	/**
	 * Askes the user to add the new lib path to the environment variable
	 */
	class PageSetPath : Page
	{
		
		Button destLabel;
		
		this(Installer installer)
		{
			super(installer);
		}
		
		String getName()
		{
			return new String("");
		}
		
		void showPage()
		{
			destLabel.setLabel("Add the following to your environment path:\n"
					~Path.join(installer.pageLocations.getCommonGtk(), "bin").toString());
		}
		
		
		void setup()
		{
			destLabel = new Button("");
			headerBox.packStart(new Label("DUI is installed"), true, true, 0);
			mainBox.packStart(destLabel,true, true, 0);
			
			
			mainBox.packStart(new Label("then Go to Start/Programs/dantfw and try the examples"),
				true, true, 0);
			
			
		}

	}
	

	
	/**
	 * Askes for confirmation to exit or to run selected examples or tests.
	 * 
	 */
	class PageDone : Page
	{
		this(Installer installer)
		{
			super(installer);
		}
		
		String getName()
		{
			return new String("Done");
		}
		
		void setup()
		{
			headerBox.packStart(new Label("DUI is installed"), true, true, 0);
			mainBox.packStart(new Label("Press finish to close\nor select a test to run"), false, false, 0);
			
			Table table = new Table(2,2,false);
			
			table.attach(new Label("DUITests"), 0,1,0,1 ,AttachOptions.SHRINK,AttachOptions.FILL, 4,2);
			table.attach(new Button("Run", &runDUITests), 1,2,0,1 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(new Label("HelloWorld"), 0,1,1,2 ,AttachOptions.SHRINK,AttachOptions.FILL, 4,2);
			table.attach(new Button("Run", &runHelloWorld), 1,2,1,2 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(new Label("HelloWorld timeout"), 0,1,2,3 ,AttachOptions.SHRINK,AttachOptions.FILL, 4,2);
			table.attach(new Button("Run", &runHelloWorldTimeout), 1,2,2,3 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			table.attach(new Label("SimpleGL"), 0,1,3,4 ,AttachOptions.SHRINK,AttachOptions.FILL, 4,2);
			table.attach(new Button("Run", &runSimpleGL), 1,2,3,4 ,AttachOptions.SHRINK,AttachOptions.SHRINK, 4,2);
			
			mainBox.packStart(table, false, false, 0);
			
		}

		void runDUITests()
		{
			Process.system("DUI\\DUITests");
		}
		
		void runHelloWorld()
		{
			Process.system("DUI\\HelloWorld");
		}
		
		void runHelloWorldTimeout()
		{
			Process.system("DUI\\HelloWorldTimeout");
		}
		
		void runSimpleGL()
		{
			Process.system("DUI\\SimpleGL");
		}
		
		bit exitInstall()
		{
			return true;
		}
		
		String getNextLabel()
		{
			return new String("Finish");
		}
	}
	
	private void addPagesToNotebook()
	{
		if ( pageMain === null )
		{
			pageHeader = new Notebook();
			pageHeader.setShowTabs(false);
			
			pageMain = new Notebook();
			pageMain.setShowTabs(false);
			
			foreach(Page page ; pages)
			{
				pageHeader.appendPage(page.getHeader(), page.getName());
				pageMain.appendPage(page.getWidget(), page.getName());
			}
		}
	}
	
	PageLocations pageLocations;
	PageModules pageModules;
	
	private void setPages()
	{
		pages ~= new PageWelcome(this);
		pages ~= new PageLicense(this);
		pages ~= pageLocations = new PageLocations(this, comd);
		pages ~= pageModules = new PageModules(this);
		pages ~= new PageCompile(this, comd, manager);
		pages ~= new PageSetPath(this);
		//pages ~= new PageDone(this);

	}
	
	
	public void setBackLabel(String label)
	{
		back.setLabel(label);
	}
	
	public void setNextLabel(String label)
	{
		next.setLabel(label);
	}
	
	public void setAllowBack(bit allowBack)
	{
		if ( allowBack && pageMain.getCurrentPage()>0 )
		{
			back.setSensitive(true);
		}
		else
		{
			back.setSensitive(false);
		}
	}
	
	public void setAllowNext(bit allowNext)
	{
		if ( allowNext && pageMain.getCurrentPage() < pageMain.getNPages() )
		{
			next.setSensitive(true);
		}
		else
		{
			next.setSensitive(false);
		}
	}
	
	/**
	 * Called when the user clicks on the back button 
	 */
	private void backAction()
	{
		
		panel = pageMain.getCurrentPage();
		if ( panel > 0 )
		{
			--panel;
			pageHeader.setCurrentPage(panel);
			pageMain.setCurrentPage(panel);
			pages[panel].show();
			next.setSensitive(true);
			if ( panel == 0 )
			{
				back.setSensitive(false);
			}
			else
			{
				next.setSensitive(pages[panel].sensitiveBack());
			}
			next.setLabel(pages[panel].getNextLabel());
			back.setLabel(pages[panel].getBackLabel());
		}
	}
	
	/**
	 * Called when the users click the next button
	 */
	private void nextAction()
	{
		if ( pages[pageMain.getCurrentPage()].exitInstall() )
		{
			exitInstall();
		}
		panel = pageMain.getCurrentPage();
		if ( panel < -1+pageMain.getNPages() )
		{
			if ( pages[panel].advance() )
			{
				++panel;
				pageHeader.setCurrentPage(panel);
				pageMain.setCurrentPage(panel);
				pages[panel].show();
				back.setSensitive(true);
				//if ( panel == -1+pageMain.getNPages() )
				//{
				//	next.setSensitive(false);
				//}
				//else
				//{
					next.setSensitive(pages[panel].sensitiveNext());
				//}
				next.setLabel(pages[panel].getNextLabel());
				back.setLabel(pages[panel].getBackLabel());
			}
		}
	}
	
	private void cancelAction()
	{
		exitInstall();
	}

	void exitInstall()
	{
		DUI.dui.stop();
	}
	
}

private import dool.System;

void main(char[][] args)
{
	DUI dui;
	dui = DUI.dui(args);

	Installer installer = new Installer();

	dui.go();
}

/* XPM */
static char ** duiLogo_xpm = [
"107 140 253 2",
"  	c None",
". 	c None",
"+ 	c #EFFBF5",
"@ 	c #EFF4F3",
"# 	c #AAABB9",
"$ 	c #D4C4E8",
"% 	c #D4DCD4",
"& 	c #8F8D98",
"* 	c #B8ADC6",
"= 	c #B9C5C4",
"- 	c #2F4C94",
"; 	c #5C6CC0",
"> 	c #759278",
", 	c #0B1434",
"' 	c #17231B",
") 	c #070C22",
"! 	c #151437",
"~ 	c #E8D5EF",
"{ 	c #8478A4",
"] 	c #3A5AAC",
"^ 	c #183564",
"/ 	c #0B1559",
"( 	c #16245D",
"_ 	c #272B34",
": 	c #0C0308",
"< 	c #2E2264",
"[ 	c #AAA2DC",
"} 	c #BBD2BC",
"| 	c #2D4537",
"1 	c #171B36",
"2 	c #16141C",
"3 	c #5A376E",
"4 	c #4E646C",
"5 	c #47375D",
"6 	c #393C45",
"7 	c #242E98",
"8 	c #182C64",
"9 	c #040B08",
"0 	c #030306",
"a 	c #606A6E",
"b 	c #272432",
"c 	c #482A58",
"d 	c #444D4D",
"e 	c #372C3E",
"f 	c #172437",
"g 	c #0E1C4C",
"h 	c #0B1B35",
"i 	c #283485",
"j 	c #1C3D60",
"k 	c #DBEBE0",
"l 	c #2D4C45",
"m 	c #171C1D",
"n 	c #2A3438",
"o 	c #0C0C0E",
"p 	c #0C0D3B",
"q 	c #051409",
"r 	c #07051F",
"s 	c #264D96",
"t 	c #3D72E1",
"u 	c #3266C6",
"v 	c #70887A",
"w 	c #24144C",
"x 	c #2D4DB8",
"y 	c #3E76E2",
"z 	c #214382",
"A 	c #CCE5DA",
"B 	c #0C1413",
"C 	c #253C92",
"D 	c #2F65AE",
"E 	c #6F7B81",
"F 	c #2C44B4",
"G 	c #394D47",
"H 	c #160D20",
"I 	c #271419",
"J 	c #DEF5E7",
"K 	c #3D5757",
"L 	c #0C1C16",
"M 	c #2B549B",
"N 	c #2C5B9F",
"O 	c #92AAAC",
"P 	c #16341D",
"Q 	c #335CC7",
"R 	c #182C20",
"S 	c #180B0D",
"T 	c #3767D3",
"U 	c #4F6B77",
"V 	c #3155BB",
"W 	c #A0C3B8",
"X 	c #1E4456",
"Y 	c #72A694",
"Z 	c #051C0A",
"` 	c #82A48C",
" .	c #193D21",
"..	c #326B46",
"+.	c #161A5A",
"@.	c #FBEEFA",
"#.	c #26526C",
"$.	c #0A2316",
"%.	c #0E0534",
"&.	c #54645C",
"*.	c #DABED8",
"=.	c #8DB398",
"-.	c #4A6DCD",
";.	c #0A2C12",
">.	c #9A7EAC",
",.	c #D5CCE2",
"'.	c #281C24",
").	c #1B0510",
"!.	c #3B444C",
"~.	c #260511",
"{.	c #701C2C",
"].	c #58251E",
"^.	c #491320",
"/.	c #352769",
"(.	c #551321",
"_.	c #A4293A",
":.	c #C94641",
"<.	c #391C16",
"[.	c #47446A",
"}.	c #D3D4D6",
"|.	c #D53C48",
"1.	c #F54E4C",
"2.	c #973931",
"3.	c #3E65B2",
"4.	c #293C39",
"5.	c #14050C",
"6.	c #480C1C",
"7.	c #D84645",
"8.	c #822C29",
"9.	c #370B18",
"0.	c #EB494B",
"a.	c #6A2925",
"b.	c #362326",
"c.	c #A83839",
"d.	c #3B3450",
"e.	c #0A340E",
"f.	c #1B4526",
"g.	c #B6403C",
"h.	c #475B9E",
"i.	c #1A4C25",
"j.	c #371419",
"k.	c #295C34",
"l.	c #1E542A",
"m.	c #2A6234",
"n.	c #F65E64",
"o.	c #226629",
"p.	c #471B23",
"q.	c #581C24",
"r.	c #2A1C54",
"s.	c #0F4C15",
"t.	c #1F5A27",
"u.	c #270D12",
"v.	c #C53943",
"w.	c #AA4135",
"x.	c #DF3F4A",
"y.	c #6F3326",
"z.	c #6F1227",
"A.	c #093C0E",
"B.	c #2C5432",
"C.	c #B6353C",
"D.	c #1E565C",
"E.	c #2B7D2F",
"F.	c #1B0939",
"G.	c #C6B3D4",
"H.	c #917CAD",
"I.	c #9686CC",
"J.	c #260A48",
"K.	c #EAE3F2",
"L.	c #BAA5D7",
"M.	c #A296BC",
"N.	c #C9BBE1",
"O.	c #EDECEF",
"P.	c #EFDBF7",
"Q.	c #856F9F",
"R.	c #36127C",
"S.	c #828EAC",
"T.	c #A687B9",
"U.	c #42085C",
"V.	c #5683E0",
"W.	c #728AAC",
"X.	c #370557",
"Y.	c #4F78D0",
"Z.	c #678E74",
"`.	c #5C1884",
" +	c #4E7294",
".+	c #4F545E",
"++	c #A242AC",
"@+	c #5A595F",
"#+	c #2DAC31",
"$+	c #9E3AAC",
"%+	c #41D140",
"&+	c #249C2C",
"*+	c #DA92DC",
"=+	c #47C646",
"-+	c #3BE03C",
";+	c #0E5812",
">+	c #D5AAE1",
",+	c #3CE83C",
"'+	c #E4C8ED",
")+	c #35B939",
"!+	c #0A440E",
"~+	c #317234",
"{+	c #D6B5DC",
"]+	c #35D338",
"^+	c #2B8A2E",
"/+	c #28B82C",
"(+	c #461664",
"_+	c #26952B",
":+	c #722B87",
"<+	c #3BA73F",
"[+	c #9A5DB6",
"}+	c #7A3C9C",
"|+	c #399A3C",
"1+	c #5C4A68",
"2+	c #4EA654",
"3+	c #BB9CCA",
"4+	c #4A6C48",
"5+	c #328234",
"6+	c #26A42A",
"7+	c #BB94C6",
"8+	c #88342C",
"9+	c #83192F",
"0+	c #33C637",
"a+	c #1D7422",
"b+	c #46241C",
"c+	c #742A25",
"d+	c #1C7C21",
"e+	c #931D34",
"f+	c #B42C3C",
"g+	c #580C22",
"h+	c #483838",
"i+	c #136917",
"j+	c #922737",
"k+	c #398D3C",
"l+	c #9ED29C",
"m+	c #527458",
"n+	c #1B8A1F",
"o+	c #567E3C",
"p+	c #828488",
"q+	c #875D8F",
"r+	c #8A988C",
"s+	c #621E84",
"t+	c #5B2B61",
"u+	c #EC7880",
"v+	c #5E364C",
"w+	c #8E469C",
"x+	c #A674AC",
"y+	c #8853A0",
"z+	c #6A3979",
"A+	c #7A5E84",
"B+	c #6E4674",
"C+	c #966EA4",
"D+	c #6E8A4C",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . @ . . @ . . . @ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . @ . . . . . + # $ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + % & * . + . . . = - ; > , * @ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . % ' ) ! ~ . . = { ] ^ / ( ( _ : < [ @ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . } | 1 2 3 4 5 6 7 8 ( 8 9 , ) 9 0 0 0 p *.@.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . = a b b c d 8 e f g g h / ( i j f , 0 0 0 0 0 /.~ . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . k l f m e n 2 o ) p g q r , ( s g / t u f ) 0 0 0 0 F.{ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + v m o w 6 2 o ) ) , p ) r , , / p x y t y t z q r 0 0 0 : r.~ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + . A j B o 2 2 q ) ) g , 9 r r 9 r , C y t t t y t t D f 9 0 0 0 0 0 /.. . . . . . @ . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + E ' 2 m 2 ) r , p ) g f ) ) p , F t t t t y t t y t t t M q 0 0 0 0 0 %.G.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . A G 0 H I H B ) ) , ( f ) r r p s t y y t t t t 0 0 0 0 0 t t T h r 0 0 0 0 0 H.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + + G 9 o 0 9 r 0 r r , ) ) 0 r ( F t t t t t y y t 0 0 0 0 0 0 0 t y y ^ 9 0 0 0 : 0 /.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . J K L r 9 o 0 0 r 0 r ) ) r r g M z N t t t t t t y 0 0 0 0 0 0 0 0 0 t t y X , 0 0 0 0 0 %.,.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . O P o 0 0 0 0 0 r ) ) ) ) ) , Q u t y t t y t y t 0 0 0 0 0 0 0 0 0 0 0 0 t y t D f ) 0 0 0 0 : I.. . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . + J R S : 0 0 0 r 0 p ) ) ) ) t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t u j q r 0 0 0 0 J.K.. . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . J U ) 0 o 0 0 0 0 r ) r r p M t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t y y t s h r 0 0 0 0 r L.. . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . + . . W L 0 9 9 0 0 r r ) p ) , C t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t y y D f , r 0 0 0 0 /.. . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . J X 9 0 0 0 0 r 0 r ) 0 t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t y t ^ , , 0 0 0 0 r M.. . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . Y Z o 9 0 0 0 0 r r 0 ) t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 y t t y t t N 8 , r 0 0 0 0 < . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . k | o 0 0 0 0 0 r 0 r ! t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t y t y y t y ^ h 9 0 0 0 0 %.* . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . ` h : 0 0 0 0 r 0 r ) i T t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t 0 0 0 0 0 0 0 0 0 0 t t t t t t y t M h B 0 0 0 0 0 /.. . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . @  .9 0 0 0 0 0 0 0 ) ( T t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t 0 0 0 0 0 0 0 0 0 0 t t t y t t t y t s ( B 0 0 0 0 %.N.. . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . + W B r 0 0 0 0 0 ) p p M t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t 0 0 0 0 0 0 0 0 0 t t t y t t y t t t t s , 0 0 0 0 r H.O.. . . . . . . . . . . . . . ",
". . . . . . . . . . . . . + J ..0 0 0 0 0 0 r 8 N C t t t y t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t y y t y t t y y t j 9 0 0 0 0 J.K.. . . . . . . . . . . . . ",
". . . . . . @.. . . . . . W L 0 0 0 0 0 0 p T t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 t t t t y t y y t t t t t D h 0 0 0 0 0 H.. . . . . . . . . . . . ",
". . . . # . . . @ . + A R 0 r 0 0 0 0 r C t t t t t t t y t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t t t t t t t t y t t t j r 0 0 0 0 F.P.. . . . . . . . . . ",
". . . . & @ . . . . E 9 ) 0 0 0 0 0 p T t t t y t y t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t y y t t y t t y t t t y D.9 0 0 0 0 r L.. . . . . . . . . ",
". . . . &.*.. . =.q r 0 0 0 0 0 r p -.t t t y t y t y t y t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 p t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t t t y y t y t t y y y t y t h 0 0 0 0 r Q.. . . . . . . . ",
". . . . &.>.,.. > q 0 0 r r r , u T t t t t t t y t t t y t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t y t t t y t y y t t t y y y y t #.) 0 0 0 0 R.. . . . . . . ",
". . . . K 6 b k '.0 0 r p F T T t y t y y t y t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t y y y t y t t y y y t t t t t t t L r 0 0 0 ) S.T.@ . . . ",
". . . . O n b ! 0 0 0 S < i t t t y t t y t y t t y t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 t t t t t t y t y y t t t y y y y y t t y t D B 0 0 0 0 U.@ + @ . ",
". . . . ` n m H : : : ).1 _ C t y t y y t t t y t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 t t t y y y t y t t y y y t t t t t y t t t y V.W.R 0 0 X.. . . . ",
". . . . =.!._ '.: ~.{.].^.2 /.] Q t t t t y t y y y t 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 t t t t t t y t y y t t t y y y t t t y y y t Y.Q V.Z.!.: `.. . . . ",
". . . . W n m 0 ).(._.:.<.~.S < [.u y t t t y t t t t 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 t t t y y y t y t t y y y t t t y y y T u  +.+n 6 m l l 5.++. . . . ",
". . . . }.P m B : ~.|.1.2.S : : ! 5 3.t t t t t y y y y 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 t t t t t t y t y y t t t y y y t t y y t U !.^ m e @+#+B.0 $+. . . . ",
". . . . A 4.b o 5.6.7.1.1.8.5.0 0 5.w M t t t y t t t t y 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t y y y t y t t y y y t t t y y V.Y.- ' H '.[.=.%+&+q : *+. . . . ",
". . . . A  .H o : 9.0.1.1.1.a.S : 0 : H [.u t y t t y t y t p 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t y t t t t t y T u Y.D a K m '.b =+-+-+-+;+9 : >+. + . . ",
". . . . k l b.o 5.9.1.1.1.1.0.c.S 0 : : p d.t t y y t t t y t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 t t t t y y y y t t t y t y t y y y Y.4 _ h m b E.-+-+-+,+,+;+r ).'+. . . . ",
". . . . + f.'.H 5.9.0.1.1.1.1.1.g.S : : 0 5.e h.t t t y t y y t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t y t t t t y y t t y t y t u t X f L ) '.R )+-+,+,+,+,+,+s.0 J.~ . . . . ",
". . . . @ f.1 o : 6.1.1.1.1.1.1.1.7.I : 0 : : ! 6 Q u t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t y t t t t t t t t t t 3.z f B : o _ =+,+-+,+,+,+-+,+,+!+0 ~.N.. . . . ",
". . . . @ i.b 2 : 6.7.1.1.1.1.1.1.1.7.j.5.0 : : H < M T t t y t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t y t t t t t t t t y t t s V X 9 H r H ~+,+,+,+,+,+,+,+,+-+-+e.0 : {+. . . . ",
". . . . . k.2 5.5.6.0.1.1.1.1.1.1.1.1.0.j.: : : 0 S '.i u t t y t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t y t y y y t t t t N z .+m o 0 0 '.)+,+-+,+,+,+,+-+,+,+,+]+$.0 ).P.. . . . ",
". . . . . l.! o 5.6.0.1.1.1.1.1.1.1.1.1.0.I 5.0 : 0 ).H b T t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t y y t t t t t y y y u 4.f m ) 0 0 2 ^+-+,+,+,+,+,+-+,+,+-+,+,+/+q 0 J.. . . . . ",
". . . . + i.B 5.: 9.1.1.1.1.1.1.1.1.1.1.1.0.].: : ~.).).5.'.-.u t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t t t t y t t y t t y U G L B 9 : ' B.-+-+,+,+,+,+-+,+,+,+,+,+,+,+/+B 0 (+. . . . . ",
". . . . + m.! : 0 ~.1.1.1.n.1.1.1.1.1.1.1.1.1.<.o : ~.S 5.5.H /.Q t y t t t t t t t t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t t t t t y y y t y y t y u  +G m 9 0 0 r R )+,+,+,+,+,+,+,+,+,+,+-+,+,+,+,+_+9 0 :+. . . . . ",
". . . . . o.H 0 5.9.1.1.1.1.1.1.1.1.1.1.1.1.1.0.p.S S ~.5.: ).o +.N t y t t y t t t t t t 0 0 0 0 0 0 t t t t t t t t t t t t t t t t t t t y u 3.4.' r 0 : ).m <+-+,+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+;+0 0 [+. . . + . ",
". . . . . o.2 S 0 9.1.1.1.1.1.n.1.0 1.1.1.1.1.1.0.<.S ~.q.I 0 5.5.r.h.T y t t y y y y y t t t t t t t t t t t t t t t t t t t t t t t t t z $.^ ' L 0 0 5.4.=+,+,+,+,+,+,+,+-+,+,+-+,+,+,+,+,+,+,+,+!+0 0 }+O.. . . . ",
". . . . + s.r 0 5.~.0.1.1.1.1.1.1.0 0 1.1.1.1.1.1.0.I o ~._.q.j.5.0 S 8 V t t t t t t y y t y t t t t t t t t t t t t t t t t t y t D ^ h 1 2 0 0 : r S |+-+,+,+,+,+,+,+,+,+,+,+-+,+,+,+-+,+,+,+,+,+;.0 0 [+. . . . . ",
". . . . + t.o 0 5.~.0.1.1.1.1.1.1.0 0 0 1.1.1.1.1.1.7.<.S u.|.8.u.: 0 5.r.V t t y y t y t y y t y t t t t t t t t t t y t t y t D 8 , q _ L ) 0 0 S 4.%+-+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+,+,+,+,+-+;.0 0 >+. . . . . ",
". . . . . m.9 0 5.9.0.1.1.1.1.1.1.0 0 0 0 1.1.1.1.1.1.7.j.).9.v.w.j.).0 0 : i t t t t t y t t t t t y t t t t t t y t t t y u 8 q , R '.L 9 0 5.1+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+]+$.0 0 '+. . . . . ",
". . . . @ f.B 0 5.).x.1.1.n.1.1.1.0 0 0 0 0 1.1.1.1.1.1.:.S S 6.v.1.2.u.0 : : < -.y t t y y y y t t t t t t y t t t y y u ^ , , m ! B 0 r 0 '.2+,+-+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+-+,+/+q 0 : 3+@ . . . . ",
". . . . + t.2 0 5.~.0.1.1.1.1.1.1.0 0 0 0 0 0 1.1.1.1.1.1.0.S : 9.0.1.1.8.: 0 0 ) 3.t t t t t t y t y y t y t y y t t N h , ) B m o r 0 S 4+-+,+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+/+s.0 0 : H.@ + . . . ",
". . . . . k.) 0 5.~.x.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.7.9.5.~.7.1.1.1.].0 0 : w Q y t y t t t t y t t t t u N ^ h _ 4.d.m r 0 0 b =+-+-+,+,+,+,+,+,+,+,+,+0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+/+e.0 0 `.,.@ . . . . ",
". . . . . l.o 0 : u.|.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.7.u.).~.x.1.1.1.w.5.5.0 9 7 t t y t t t t t t y A.0 p H F / L 9 0 0 o 5+=+-+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+/+$.0 0 [+. . . . . . ",
". . . . + B.2 0 ).u.C.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.:.I 5.u.C.1.1.1.:.I : S 0 p Q y t y y y t t t D., '.6 , ) 0 0 0 f.)+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+6+Z 0 0 [+@ . . . . . ",
". . . . @ i.2 0 ~.9._.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.7.j.~.S _.1.1.1.7.^.u.5.S r M t t t t u x T l L B q 9 0 0 B E.-+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+&+Z 0 r 7+. . . . . . ",
". . . . @ l o 0 6.u.{.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.7.9.S o 9+0.1.1.0.].u.u.: H M T M t y Q ..q 9 9 0 0 9 t.0+-+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+-+,+,+d+q 0 r 3+. . . . . . ",
". . . . J l B 0 ^.u.(.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.1.0.p.u.S 9+1.1.1.1.a.^.u.u.5.) / x D &+!+9 0 0 9 L #+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+;+9 0 F.~ @ . . . . . ",
". . . . J 4.o 0 (.u.z.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.1.1.1.<.5.S (.1.1.1.7.8+j.9.0 0 : L s.a+q 0 9 9 L <+-+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+-+!+0 0 F.P.. . . . . . ",
". . . . J 4.B : z.<.(.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.1.1.1.1.].S 5.6.1.1.1.0.:.q.u.).9 e.$.A.q i.#+0+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+-+]+e.0 0 J.. . . . . . . ",
". . . . k !.q 0 z.<.6.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.c+o ).~.v.1.1.1.1.b.u.q ' -+-+]+)+,+,+,+,+-+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+0+Z 0 0 U.. . . . . . . ",
". . . . J n B 0 z.I 9.0.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.8+o 5.).c.1.1.1.b+9.q l.-+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+/+9 0 0 `.. . . . . . . ",
". . . . J P B 0 9+<.9.0.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 1.1.1.1.1.:.c.j.5.5.9+1.1.b+j.q P _+,+,+-+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+&+9 0 0 s+. . . . . . . ",
". . . . k 4.9 0 z.b+~.0.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 1.1.1.8+c.v.c+u.S 9+1.b+b.9 B f.-+,+-+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+d+9 0 0 :+. . . . . . . ",
". . . . k | o : 9+].5.x.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 1.1.1.1.7.7.c+u.9.7.b+'.q 9  .)+,+-+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 ,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+!+9 0 : [+. . . . . . . ",
". . . . J | o : e+].u.x.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 1.1.1.7.1.<.z.1.b+b.9 9 B a+-+,+-+,+,+,+,+,+,+,+,+,+,+0 0 0 ,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+e.q 0 0 *+@ . . . . . . ",
". . . . k 4.o 5.9+y.).f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 1.1.1.1.1.1.0.1.b+b.Z 9 0 i.-+,+,+,+,+,+,+,+,+,+,+,+,+0 0 ,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+]+$.9 0 5.{+@ . . . . . . ",
". . . . A 4.: 5.z.y.)._.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.q.h+q 0 0 f.,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+]+q 0 0 ).P.+ . . . . . . ",
". . . . A R 0 : z.8+5.9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.]._ $.q 9 $.,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+]+Z 0 0 F.O.. . . . . . . ",
". . . . } b 0 0 g+'.5.6.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b+b.9 0 0 P ,+,+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+6+9 0 : j.O.. . . . . . . ",
". . . . = R : 0 6.a.S f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.a.' 9 0 9 f.-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+-+d+q 0 0 (+O.. . . . . . . ",
". . . . k P : : z.2.u.9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.a.L q 0 q f.-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+-+;+9 9 0 :+@ . . . . . . . ",
". . . . k 4.o : z.8+u.f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.].m 9 0 9 i.-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+-+e.0 0 0 w+@ . . . . . . . ",
". . . . J R : 0 z.8+u.e+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b+' 9 0 r d+,+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+]+$.9 0 : x+. . . . . . . . ",
". . . . J  .0 : z.2.u.9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.p.P 9 0 0 E.,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+/+9 9 0 : 7+@ . . . . . . . ",
". . . . + i.S 0 g+8.j.9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.].$.9 0 0  .,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+n+9 r 0 H '+@ . . . . . . . ",
". . . . @ i.0 5.g+2.u.9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b+R 9 0 0 ;.-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+i+q 0 0 F.@ . . . . . . . . ",
". . . . . t.: : g+8+u.z.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b.q 0 0 0 r -+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+-+,+]+!+Z 9 0 J.. . . . . . . . . ",
". . . . @ t.5.: 6.8.).9+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.<.Z 0 0 0 0 0+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+]+A.q 0 0 (+. . . . . . . . . ",
". . . . . t.: : 6.8.u.e+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b+Z 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+/+$.9 0 0 (+. . . . . . . . . ",
". . . . . t.r : 6.j+I e+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.b+Z 0 0 q ^+-+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+#+;. .9 0 y+. . . . . . . . . ",
". . . . + k.S 0 ~.8.9._.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.0.<.q 0 0 9 ^+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+&+$.$.0 r 7+. . . . . . . . . ",
". . . . @ l.S : ~.8.u.f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.'.q 0 0 9 #+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+a+Z q 0 %.G.O.. . . . . . . . ",
". . . . @ f.5.: ~.j+u.f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.<.Z 0 0 r a+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+i+q q 0 F.T.@ . . . . . . . . ",
". . . . + i.).: ~.{.S f+1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.<.q 0 0 0 #+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+,+,+,+,+;+Z q 0 X.O.. . . . . . . . . ",
". . . . . !+: : ).{.u.v.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.0.'.q 0 0 ) #+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 ,+,+,+0 0 ,+,+,+,+,+,+,+,+;+$.0 0 X.. . . . . . . . . . ",
". . . . . ..5.).S q.u.v.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.'.q 0 0 9 )+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+0+A.: 0 `.. . + . @ . . . . . ",
". . . . . o.: ).).u.9.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.'.9 0 0 ) 0+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+/+$.: 0 }+@ ,.f.w . . . + . . ",
". . . . + a+5.9.u.5.~.|.1.1.1.1.1.1.0 0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.'.q 0 0 9 0+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+/+e.: 0 z+G 9 0 : y+. . . . . ",
". . . . . E.u.u.u.~.u.|.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.m 9 0 0 r 0+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+-+a+Z 0 0 r 9 0 0 F.@.. . . . . ",
". . . . . k+~.9.j.j.u.x.1.1.1.1.1.1.1.0 0 0 0 0 0 0 0 1.1.1.1.1.1.1.0 0 0 0 0 0 0 1.n.1.1.1.1.1.'.q 0 0 9 0+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+;+Z 5.0 0 0 : 5.L.. . . . . . ",
". . . . . l+u.(.C.b+6.0.1.1.1.1.1.1.1.0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.B 9 0 0 ) ]+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+0+s.9 0 0 0 ! ^.. . . . + . . . ",
". . . . + + n 6.v.b+9.x.1.1.1.1.1.1.1.1.0 0 0 0 0 0 0 0 0 1.1.1.1.1.0 0 0 0 0 0 0 1.1.1.1.1.1.1.B 0 0 0 H ,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+-+,+,+,+&+e.9 0 5.Q.# W.F.$ . . . . . . ",
". . . . . . m+'.p.j.u.9.C.1.1.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 1.1.1.0 0 0 0 0 0 0 0 1.1.1.1.1.1.0.o 0 0 0 h ,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+-+,+,+-+]+;.q 9 0 ).& L 0 J.@.. @ . . . . ",
". . . + . + S.&.m 2 S 5.5.6.1.1.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.7.q 0 0 0 R -+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+-+,+-+,+-+n+$.q 9 r 0 0 0 0 5.M.@ . . . . . . ",
". . . . . . . . ` L ) : ).5.).^.v.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.n.1.1.1.1.7.9 0 0 0  .,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 0 ,+,+-+,+,+-+,+,+,+]+i+$.' 6 o 0 0 0 : 5 { @.. . . . . . . ",
". . . . . . . . + f.H B 5.: 5.5.u._.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.7.q 0 0 9 ..,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+]+e.$.m A+P 0 0 0 5.>+@ . . . . . . . . . ",
". . . . . . . . + 4+B H 1 H 0 5.5.u.{.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.:.9 0 0 0 a+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 0 0 0 ,+,+,+,+,+,+,+,+,+d+$.B '.[.0 9 0 0 w {+. . . . . . . . . . . ",
". . . . . . . . . o+'.'.d.!.o : 0 : ~.{.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.n.1.1.1.g.9 0 0 0 ..,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 0 0 0 ,+,+,+,+,+,+,+-+,+,+]+;+$.2 e 0 0 0 0 0 r '+@ . . . . . . . . . . . ",
". . . . . + . . + } d N.d 6 d m r 0 : 5.{.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.1.w.0 0 0 0 &+,+,+,+,+,+,+,+,+,+,+,+,+,+0 0 0 0 ,+,+,+,+,+,+,+-+,+,+,+,+6+A.L H o 0 0 0 0 9.{++ . . . . . . . . . . . . . ",
". . . . . . . . . . . . @ d d.p+| 0 0 0 5.^.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.8+0 0 0 : )+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+-+,+-+s.$.h 0 0 0 0 0 : q+. . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . 4+e H.` 2 0 0 5.6.1.1.1.1.1.0 0 0 0 0 0 0 0 0 0 1.1.1.1.1.1.1.1.1.a.0 0 0 r 0+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+,+0+e.L ) o 0 0 0 0 9.P.. . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . v !.q+> B r 0 0 ~.|.1.1.1.1.0 0 0 0 0 0 0 0 1.1.1.n.1.1.1.1.1.1.y.9 0 0 0 #+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+-+-+,+,+,+]+i+q , 0 0 0 0 0 5.7+. . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . = G 1+r+m : r : 5.|.1.1.1.1.1.1.1.0 1.0 1.1.1.1.1.1.1.1.1.1.1.<.0 0 0 ) -+-+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+,+/+e.9 0 0 0 0 0 0 c ~ . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . + @+.+v m o : 0 u.v.1.1.1.1.1.1.1.1.1.n.1.1.1.1.1.n.1.1.1.1.<.0 0 0 S -+-+,+,+,+-+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+,+i+q ) 0 9 0 : 0 u.}.K.@.. . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . O.p+_ E ' H r 0 5.9+1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.'.0 0 0 ) ]+,+,+,+,+,+-+,+,+,+,+,+,+,+,+,+-+,+-+,+,+]+e.B 0 0 0 0 0 0 B+@.. . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . @ . + . @.. . # @+!.' H 0 0 5.^.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.0.B 9 0 0 2 -+,+-+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+,+a+q 9 0 0 0 0 0 u.~ . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . } !._ B ) 0 : 5.(.1.1.1.1.1.1.1.n.1.1.1.1.1.1.1.1.7.o 0 0 0 ) -+,+,+,+,+,+,+,+,+,+,+,+,+-+,+,+,+,+]+e.q 9 0 0 0 0 5.C+. . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . O.a _ o B ) 0 : 9.0.1.1.1.1.1.1.1.1.1.1.1.1.1.1.w.I q 0 0 m -+,+,+,+,+,+-+,+,+,+,+,+,+-+,+,+,+/+$.9 0 0 0 0 : b.@.. . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . p+n b m r 0 0 9.1.1.1.1.1.1.1.1.1.n.1.1.1.1.2.S 9 0 0 P -+,+,+,+-+,+,+-+,+,+,+-+-+,+,+]+A.9 0 0 0 0 0 : * . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . % !.b  .2 r 0 ~.x.1.1.1.1.1.1.1.1.1.1.1.1.2.o q 9 9 B.-+,+,+,+-+,+,+,+,+,+,+,+,+-+&+Z r 0 r 0 : 0 t+. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . @ > '.m m r 0 F.v.1.1.1.1.1.1.1.1.1.1.1.c+: q 0 0 R ,+,+-+,+,+,+,+,+,+-+,+,+/+;.0 0 0 0 0 0 ).>+. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . } m 1 ) 9 9 5._.1.1.1.1.1.1.1.1.1.1.b+: q 0 0  .,+,+,+,+,+,+,+,+,+-+-+;+Z ) 9 : 0 0 : t+. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . } b _ m 0 r : s+1.1.1.1.1.1.1.1.1.<.o q 0 0 ^+,+,+,+-+,+,+,+,+,+/+Z o 9 0 r 0 0 j.@.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + | '.'.9 o 0 (+1.1.1.1.1.1.1.0.I 0 0 0 0 ^+,+,+,+-+,+,+,+-+;+q , 0 0 0 0 : 3+. . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ` _ m 9 : : t+n.1.1.1.1.1.7.'.0 q 0 0 E.,+,+,+,+-+,+,+;+9 0 0 0 0 0 p.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . % .+R 2 9 0 < u+1.1.1.1.:.I : q 0 0 #+,+-+,+,+,+,+<+$.) 0 0 0 ~.7+@ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . = P 5.o 0 H q+1.1.1.:.S o Z 0 0 )+,+-+,+-+i+H B 0 0 0 0 s++ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + . . . Z.o : o 9 /.u+1.g.I S Z 0 9 )+,+-+s.Z B %.9 : 0 : T.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . Z.2 o : 5.B v+c+u.S Z 0 ) _+i+Z , : r ) 0 0 t+@.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . o+2 o 0 o : q 0 0 0 0 0 ;+| h ) H 0 : 0 C+. . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . o+2 2 o 0 9 0 0 0 0 r e 1+H.i.o 0 z+@.. . . . . . . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4+2 ) 2 9 0 0 0 0 u.Q.& G B : z+. . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + . . . . . . =.b m 0 ! 9 9 %.c O l : %.w+. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . }._ ' r o r r w n 0 ).'+. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . J _ m 9 0 : : 3 G.. + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . % R q 0 : : y+@.. + . . + . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . D+0 0 5.H.@.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + . + q 0 3 @.+ . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . + K.. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ",
". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . "]
;

char[] LGPLLicense = 
"
		  GNU LESSER GENERAL PUBLIC LICENSE
		       Version 2.1, February 1999

 Copyright (C) 1991, 1999 Free Software Foundation, Inc.
     59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

[This is the first released version of the Lesser GPL.  It also counts
 as the successor of the GNU Library Public License, version 2, hence
 the version number 2.1.]

			    Preamble

  The licenses for most software are designed to take away your
freedom to share and change it.  By contrast, the GNU General Public
Licenses are intended to guarantee your freedom to share and change
free software--to make sure the software is free for all its users.

  This license, the Lesser General Public License, applies to some
specially designated software packages--typically libraries--of the
Free Software Foundation and other authors who decide to use it.  You
can use it too, but we suggest you first think carefully about whether
this license or the ordinary General Public License is the better
strategy to use in any particular case, based on the explanations below.

  When we speak of free software, we are referring to freedom of use,
not price.  Our General Public Licenses are designed to make sure that
you have the freedom to distribute copies of free software (and charge
for this service if you wish); that you receive source code or can get
it if you want it; that you can change the software and use pieces of
it in new free programs; and that you are informed that you can do
these things.

  To protect your rights, we need to make restrictions that forbid
distributors to deny you these rights or to ask you to surrender these
rights.  These restrictions translate to certain responsibilities for
you if you distribute copies of the library or if you modify it.

  For example, if you distribute copies of the library, whether gratis
or for a fee, you must give the recipients all the rights that we gave
you.  You must make sure that they, too, receive or can get the source
code.  If you link other code with the library, you must provide
complete object files to the recipients, so that they can relink them
with the library after making changes to the library and recompiling
it.  And you must show them these terms so they know their rights.

  We protect your rights with a two-step method: (1) we copyright the
library, and (2) we offer you this license, which gives you legal
permission to copy, distribute and/or modify the library.

  To protect each distributor, we want to make it very clear that
there is no warranty for the free library.  Also, if the library is
modified by someone else and passed on, the recipients should know
that what they have is not the original version, so that the original
author's reputation will not be affected by problems that might be
introduced by others.

  Finally, software patents pose a constant threat to the existence of
any free program.  We wish to make sure that a company cannot
effectively restrict the users of a free program by obtaining a
restrictive license from a patent holder.  Therefore, we insist that
any patent license obtained for a version of the library must be
consistent with the full freedom of use specified in this license.

  Most GNU software, including some libraries, is covered by the
ordinary GNU General Public License.  This license, the GNU Lesser
General Public License, applies to certain designated libraries, and
is quite different from the ordinary General Public License.  We use
this license for certain libraries in order to permit linking those
libraries into non-free programs.

  When a program is linked with a library, whether statically or using
a shared library, the combination of the two is legally speaking a
combined work, a derivative of the original library.  The ordinary
General Public License therefore permits such linking only if the
entire combination fits its criteria of freedom.  The Lesser General
Public License permits more lax criteria for linking other code with
the library.

  We call this license the \"Lesser\" General Public License because it
does Less to protect the user's freedom than the ordinary General
Public License.  It also provides other free software developers Less
of an advantage over competing non-free programs.  These disadvantages
are the reason we use the ordinary General Public License for many
libraries.  However, the Lesser license provides advantages in certain
special circumstances.

  For example, on rare occasions, there may be a special need to
encourage the widest possible use of a certain library, so that it becomes
a de-facto standard.  To achieve this, non-free programs must be
allowed to use the library.  A more frequent case is that a free
library does the same job as widely used non-free libraries.  In this
case, there is little to gain by limiting the free library to free
software only, so we use the Lesser General Public License.

  In other cases, permission to use a particular library in non-free
programs enables a greater number of people to use a large body of
free software.  For example, permission to use the GNU C Library in
non-free programs enables many more people to use the whole GNU
operating system, as well as its variant, the GNU/Linux operating
system.

  Although the Lesser General Public License is Less protective of the
users' freedom, it does ensure that the user of a program that is
linked with the Library has the freedom and the wherewithal to run
that program using a modified version of the Library.

  The precise terms and conditions for copying, distribution and
modification follow.  Pay close attention to the difference between a
\"work based on the library\" and a \"work that uses the library\".  The
former contains code derived from the library, whereas the latter must
be combined with the library in order to run.

		  GNU LESSER GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License Agreement applies to any software library or other
program which contains a notice placed by the copyright holder or
other authorized party saying it may be distributed under the terms of
this Lesser General Public License (also called \"this License\").
Each licensee is addressed as \"you\".

  A \"library\" means a collection of software functions and/or data
prepared so as to be conveniently linked with application programs
(which use some of those functions and data) to form executables.

  The \"Library\", below, refers to any such software library or work
which has been distributed under these terms.  A \"work based on the
Library\" means either the Library or any derivative work under
copyright law: that is to say, a work containing the Library or a
portion of it, either verbatim or with modifications and/or translated
straightforwardly into another language.  (Hereinafter, translation is
included without limitation in the term \"modification\".)

  \"Source code\" for a work means the preferred form of the work for
making modifications to it.  For a library, complete source code means
all the source code for all modules it contains, plus any associated
interface definition files, plus the scripts used to control compilation
and installation of the library.

  Activities other than copying, distribution and modification are not
covered by this License; they are outside its scope.  The act of
running a program using the Library is not restricted, and output from
such a program is covered only if its contents constitute a work based
on the Library (independent of the use of the Library in a tool for
writing it).  Whether that is true depends on what the Library does
and what the program that uses the Library does.
  
  1. You may copy and distribute verbatim copies of the Library's
complete source code as you receive it, in any medium, provided that
you conspicuously and appropriately publish on each copy an
appropriate copyright notice and disclaimer of warranty; keep intact
all the notices that refer to this License and to the absence of any
warranty; and distribute a copy of this License along with the
Library.

  You may charge a fee for the physical act of transferring a copy,
and you may at your option offer warranty protection in exchange for a
fee.

  2. You may modify your copy or copies of the Library or any portion
of it, thus forming a work based on the Library, and copy and
distribute such modifications or work under the terms of Section 1
above, provided that you also meet all of these conditions:

    a) The modified work must itself be a software library.

    b) You must cause the files modified to carry prominent notices
    stating that you changed the files and the date of any change.

    c) You must cause the whole of the work to be licensed at no
    charge to all third parties under the terms of this License.

    d) If a facility in the modified Library refers to a function or a
    table of data to be supplied by an application program that uses
    the facility, other than as an argument passed when the facility
    is invoked, then you must make a good faith effort to ensure that,
    in the event an application does not supply such function or
    table, the facility still operates, and performs whatever part of
    its purpose remains meaningful.

    (For example, a function in a library to compute square roots has
    a purpose that is entirely well-defined independent of the
    application.  Therefore, Subsection 2d requires that any
    application-supplied function or table used by this function must
    be optional: if the application does not supply it, the square
    root function must still compute square roots.)

These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Library,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Library, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote
it.

Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Library.

In addition, mere aggregation of another work not based on the Library
with the Library (or with a work based on the Library) on a volume of
a storage or distribution medium does not bring the other work under
the scope of this License.

  3. You may opt to apply the terms of the ordinary GNU General Public
License instead of this License to a given copy of the Library.  To do
this, you must alter all the notices that refer to this License, so
that they refer to the ordinary GNU General Public License, version 2,
instead of to this License.  (If a newer version than version 2 of the
ordinary GNU General Public License has appeared, then you can specify
that version instead if you wish.)  Do not make any other change in
these notices.

  Once this change is made in a given copy, it is irreversible for
that copy, so the ordinary GNU General Public License applies to all
subsequent copies and derivative works made from that copy.

  This option is useful when you wish to copy part of the code of
the Library into a program that is not a library.

  4. You may copy and distribute the Library (or a portion or
derivative of it, under Section 2) in object code or executable form
under the terms of Sections 1 and 2 above provided that you accompany
it with the complete corresponding machine-readable source code, which
must be distributed under the terms of Sections 1 and 2 above on a
medium customarily used for software interchange.

  If distribution of object code is made by offering access to copy
from a designated place, then offering equivalent access to copy the
source code from the same place satisfies the requirement to
distribute the source code, even though third parties are not
compelled to copy the source along with the object code.

  5. A program that contains no derivative of any portion of the
Library, but is designed to work with the Library by being compiled or
linked with it, is called a \"work that uses the Library\".  Such a
work, in isolation, is not a derivative work of the Library, and
therefore falls outside the scope of this License.

  However, linking a \"work that uses the Library\" with the Library
creates an executable that is a derivative of the Library (because it
contains portions of the Library), rather than a \"work that uses the
library\".  The executable is therefore covered by this License.
Section 6 states terms for distribution of such executables.

  When a \"work that uses the Library\" uses material from a header file
that is part of the Library, the object code for the work may be a
derivative work of the Library even though the source code is not.
Whether this is true is especially significant if the work can be
linked without the Library, or if the work is itself a library.  The
threshold for this to be true is not precisely defined by law.

  If such an object file uses only numerical parameters, data
structure layouts and accessors, and small macros and small inline
functions (ten lines or less in length), then the use of the object
file is unrestricted, regardless of whether it is legally a derivative
work.  (Executables containing this object code plus portions of the
Library will still fall under Section 6.)

  Otherwise, if the work is a derivative of the Library, you may
distribute the object code for the work under the terms of Section 6.
Any executables containing that work also fall under Section 6,
whether or not they are linked directly with the Library itself.

  6. As an exception to the Sections above, you may also combine or
link a \"work that uses the Library\" with the Library to produce a
work containing portions of the Library, and distribute that work
under terms of your choice, provided that the terms permit
modification of the work for the customer's own use and reverse
engineering for debugging such modifications.

  You must give prominent notice with each copy of the work that the
Library is used in it and that the Library and its use are covered by
this License.  You must supply a copy of this License.  If the work
during execution displays copyright notices, you must include the
copyright notice for the Library among them, as well as a reference
directing the user to the copy of this License.  Also, you must do one
of these things:

    a) Accompany the work with the complete corresponding
    machine-readable source code for the Library including whatever
    changes were used in the work (which must be distributed under
    Sections 1 and 2 above); and, if the work is an executable linked
    with the Library, with the complete machine-readable \"work that
    uses the Library\", as object code and/or source code, so that the
    user can modify the Library and then relink to produce a modified
    executable containing the modified Library.  (It is understood
    that the user who changes the contents of definitions files in the
    Library will not necessarily be able to recompile the application
    to use the modified definitions.)

    b) Use a suitable shared library mechanism for linking with the
    Library.  A suitable mechanism is one that (1) uses at run time a
    copy of the library already present on the user's computer system,
    rather than copying library functions into the executable, and (2)
    will operate properly with a modified version of the library, if
    the user installs one, as long as the modified version is
    interface-compatible with the version that the work was made with.

    c) Accompany the work with a written offer, valid for at
    least three years, to give the same user the materials
    specified in Subsection 6a, above, for a charge no more
    than the cost of performing this distribution.

    d) If distribution of the work is made by offering access to copy
    from a designated place, offer equivalent access to copy the above
    specified materials from the same place.

    e) Verify that the user has already received a copy of these
    materials or that you have already sent this user a copy.

  For an executable, the required form of the \"work that uses the
Library\" must include any data and utility programs needed for
reproducing the executable from it.  However, as a special exception,
the materials to be distributed need not include anything that is
normally distributed (in either source or binary form) with the major
components (compiler, kernel, and so on) of the operating system on
which the executable runs, unless that component itself accompanies
the executable.

  It may happen that this requirement contradicts the license
restrictions of other proprietary libraries that do not normally
accompany the operating system.  Such a contradiction means you cannot
use both them and the Library together in an executable that you
distribute.

  7. You may place library facilities that are a work based on the
Library side-by-side in a single library together with other library
facilities not covered by this License, and distribute such a combined
library, provided that the separate distribution of the work based on
the Library and of the other library facilities is otherwise
permitted, and provided that you do these two things:

    a) Accompany the combined library with a copy of the same work
    based on the Library, uncombined with any other library
    facilities.  This must be distributed under the terms of the
    Sections above.

    b) Give prominent notice with the combined library of the fact
    that part of it is a work based on the Library, and explaining
    where to find the accompanying uncombined form of the same work.

  8. You may not copy, modify, sublicense, link with, or distribute
the Library except as expressly provided under this License.  Any
attempt otherwise to copy, modify, sublicense, link with, or
distribute the Library is void, and will automatically terminate your
rights under this License.  However, parties who have received copies,
or rights, from you under this License will not have their licenses
terminated so long as such parties remain in full compliance.

  9. You are not required to accept this License, since you have not
signed it.  However, nothing else grants you permission to modify or
distribute the Library or its derivative works.  These actions are
prohibited by law if you do not accept this License.  Therefore, by
modifying or distributing the Library (or any work based on the
Library), you indicate your acceptance of this License to do so, and
all its terms and conditions for copying, distributing or modifying
the Library or works based on it.

  10. Each time you redistribute the Library (or any work based on the
Library), the recipient automatically receives a license from the
original licensor to copy, distribute, link with or modify the Library
subject to these terms and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights granted herein.
You are not responsible for enforcing compliance by third parties with
this License.

  11. If, as a consequence of a court judgment or allegation of patent
infringement or for any other reason (not limited to patent issues),
conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot
distribute so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not distribute the Library at all.  For example, if a patent
license would not permit royalty-free redistribution of the Library by
all those who receive copies directly or indirectly through you, then
the only way you could satisfy both it and this License would be to
refrain entirely from distribution of the Library.

If any portion of this section is held invalid or unenforceable under any
particular circumstance, the balance of the section is intended to apply,
and the section as a whole is intended to apply in other circumstances.

It is not the purpose of this section to induce you to infringe any
patents or other property right claims or to contest validity of any
such claims; this section has the sole purpose of protecting the
integrity of the free software distribution system which is
implemented by public license practices.  Many people have made
generous contributions to the wide range of software distributed
through that system in reliance on consistent application of that
system; it is up to the author/donor to decide if he or she is willing
to distribute software through any other system and a licensee cannot
impose that choice.

This section is intended to make thoroughly clear what is believed to
be a consequence of the rest of this License.

  12. If the distribution and/or use of the Library is restricted in
certain countries either by patents or by copyrighted interfaces, the
original copyright holder who places the Library under this License may add
an explicit geographical distribution limitation excluding those countries,
so that distribution is permitted only in or among countries not thus
excluded.  In such case, this License incorporates the limitation as if
written in the body of this License.

  13. The Free Software Foundation may publish revised and/or new
versions of the Lesser General Public License from time to time.
Such new versions will be similar in spirit to the present version,
but may differ in detail to address new problems or concerns.

Each version is given a distinguishing version number.  If the Library
specifies a version number of this License which applies to it and
\"any later version\", you have the option of following the terms and
conditions either of that version or of any later version published by
the Free Software Foundation.  If the Library does not specify a
license version number, you may choose any version ever published by
the Free Software Foundation.

  14. If you wish to incorporate parts of the Library into other free
programs whose distribution conditions are incompatible with these,
write to the author to ask for permission.  For software which is
copyrighted by the Free Software Foundation, write to the Free
Software Foundation; we sometimes make exceptions for this.  Our
decision will be guided by the two goals of preserving the free status
of all derivatives of our free software and of promoting the sharing
and reuse of software generally.

			    NO WARRANTY

  15. BECAUSE THE LIBRARY IS LICENSED FREE OF CHARGE, THERE IS NO
WARRANTY FOR THE LIBRARY, TO THE EXTENT PERMITTED BY APPLICABLE LAW.
EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR
OTHER PARTIES PROVIDE THE LIBRARY \"AS IS\" WITHOUT WARRANTY OF ANY
KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
LIBRARY IS WITH YOU.  SHOULD THE LIBRARY PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

  16. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN
WRITING WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY
AND/OR REDISTRIBUTE THE LIBRARY AS PERMITTED ABOVE, BE LIABLE TO YOU
FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE
LIBRARY (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE LIBRARY TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

		     END OF TERMS AND CONDITIONS
";

////////////////////////////////////////////////////////////////

char[] ArtisticLicense =
"
The Artistic License

Preamble

The intent of this document is to state the conditions under which a Package may be copied, such that the Copyright Holder maintains some semblance of artistic control over the development of the package, while giving the users of the package the right to use and distribute the Package in a more-or-less customary fashion, plus the right to make reasonable modifications.

Definitions:

    * \"Package\" refers to the collection of files distributed by the Copyright Holder, and derivatives of that collection of files created through textual modification.
    * \"Standard Version\" refers to such a Package if it has not been modified, or has been modified in accordance with the wishes of the Copyright Holder.
    * \"Copyright Holder\" is whoever is named in the copyright or copyrights for the package.
    * \"You\" is you, if you're thinking about copying or distributing this Package.
    * \"Reasonable copying fee\" is whatever you can justify on the basis of media cost, duplication charges, time of people involved, and so on. (You will not be required to justify it to the Copyright Holder, but only to the computing community at large as a market that must bear the fee.)
    * \"Freely Available\" means that no fee is charged for the item itself, though there may be fees involved in handling the item. It also means that recipients of the item may redistribute it under the same conditions they received it.

1. You may make and give away verbatim copies of the source form of the Standard Version of this Package without restriction, provided that you duplicate all of the original copyright notices and associated disclaimers.

2. You may apply bug fixes, portability fixes and other modifications derived from the Public Domain or from the Copyright Holder. A Package modified in such a way shall still be considered the Standard Version.

3. You may otherwise modify your copy of this Package in any way, provided that you insert a prominent notice in each changed file stating how and when you changed that file, and provided that you do at least ONE of the following:

    a) place your modifications in the Public Domain or otherwise make them Freely Available, such as by posting said modifications to Usenet or an equivalent medium, or placing the modifications on a major archive site such as ftp.uu.net, or by allowing the Copyright Holder to include your modifications in the Standard Version of the Package.

    b) use the modified Package only within your corporation or organization.

    c) rename any non-standard executables so the names do not conflict with standard executables, which must also be provided, and provide a separate manual page for each non-standard executable that clearly documents how it differs from the Standard Version.

    d) make other distribution arrangements with the Copyright Holder.

4. You may distribute the programs of this Package in object code or executable form, provided that you do at least ONE of the following:

    a) distribute a Standard Version of the executables and library files, together with instructions (in the manual page or equivalent) on where to get the Standard Version.

    b) accompany the distribution with the machine-readable source of the Package with your modifications.

    c) accompany any non-standard executables with their corresponding Standard Version executables, giving the non-standard executables non-standard names, and clearly documenting the differences in manual pages (or equivalent), together with instructions on where to get the Standard Version.

    d) make other distribution arrangements with the Copyright Holder.

5. You may charge a reasonable copying fee for any distribution of this Package. You may charge any fee you choose for support of this Package. You may not charge a fee for this Package itself. However, you may distribute this Package in aggregate with other (possibly commercial) programs as part of a larger (possibly commercial) software distribution provided that you do not advertise this Package as a product of your own.

6. The scripts and library files supplied as input to or produced as output from the programs of this Package do not automatically fall under the copyright of this Package, but belong to whomever generated them, and may be sold commercially, and may be aggregated with this Package.

7. C or perl subroutines supplied by you and linked into this Package shall not be considered part of this Package.

8. The name of the Copyright Holder may not be used to endorse or promote products derived from this software without specific prior written permission.

9. THIS PACKAGE IS PROVIDED \"AS IS\" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

The End
";