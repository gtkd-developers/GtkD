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
 
module ui.Main;

//version = leds;
version = gtkDdev;
version = gtkDtest;
//version = difiles
//version = compiler;
version(linux)
{
	version = gtkDgl;
	version = gtkDgltest;
}
version = dmd;
//version = gdc;

private import ui.Installer;

private import ui.gtkDLogo;

private import gtk.GtkD;
private import gtk.Alignment;
private import gtk.MainWindow;
private import gtk.VBox;
private import gtk.HBox;
private import gtk.Button;
private import gtk.Label;
private import gtk.Frame;
private import gtk.ButtonBox;
private import gtk.HButtonBox;
private import gtk.Entry;
private import gtk.CheckButton;
private import gtk.Notebook;
private import gtk.Widget;
private import gtk.Image;
private import gtkc.gtktypes;
private import gtk.SizeGroup;
private import gtk.HSeparator;
private import gtk.PopupBox;
	

private import gdk.Event;
private import std.stdio;
private import std.process;
private import std.string;

private import std.c.stdlib;

interface InstallerUI
{
	void setUserPanel(UserPanel panel);
	void addSelection(char[] id, CheckButton check);
	CheckButton getSelectionButton(char[] id);
	bool getSelection(char[] id);
	void setSelection(char[] id, bool state);
	void setSensitive(char[] id, bool state);

	void addDirectory(char[] id, Entry entry);
	char[] getDirectory(char[] id);
	void setDirectory(char[] id, char[] value);
	
	//void nextPanel();
	//void prevPanel();
}

public class MainInstaller : MainWindow , InstallerUI
{
	
	HBox topBox;
	VBox leftBox;
	VBox tasksBox;
	VBox mainBox;
	Notebook notebook;
	ButtonBox buttonBox;

	Button backButton;
	Button nextButton;
	Button exitButton;
	Button installButton;

	UserPanel[] userPanels;
	UserPanel currentUserPanel;
	CheckButton[char[]] selections;
	Entry[char[]] directories;

	int movingDirection;	// going back or next, 0=don't know
	
	this()
	{
		version(leds)
		{
			super("GtkD and Leds installer");
		}
		else
		{
			super("GtkD installer");
		}
		setup();
		addPanels();
		setUserPanel(0);
		showAll();
	}
	
	public void addSelection(char[] id, CheckButton check)
	{
		selections[id] = check;
	}
	
	public CheckButton getSelectionButton(char[] id)
	{
		CheckButton check;
		if ( id in selections )
		{
			check = selections[id];
		}
		return check;
	}
	
	public bool getSelection(char[] id)
	{
		if ( id in selections )
		{
			return cast(bool)selections[id].getActive();
		}
		return false;
	}
	public void setSelection(char[] id, bool active)
	{
		if ( id in selections )
		{
			selections[id].setActive(active);
		}
	}
	public void setSensitive(char[] id, bool active)
	{
		if ( id in selections )
		{
			selections[id].setSensitive(active);
		}
	}

	public void addDirectory(char[] id, Entry entry)
	{
		directories[id] = entry;
	}
	public char[] getDirectory(char[] id)
	{
		if ( id in directories )
		{
			return directories[id].getText();
		}
		return null;
	}
	public void setDirectory(char[] id, char[] value)
	{
		if ( id in directories )
		{
			return directories[id].setText(value);
		}
	}

	public void nextPanel()
	{
		movingDirection = 1;
		notebook.nextPage();
		setUserPanel(notebook.getCurrentPage());
	}
	
	public void prevPanel()
	{
		movingDirection = -1;
		notebook.prevPage();
		setUserPanel(notebook.getCurrentPage());
	}
	
	private void setup()
	{
		topBox = new HBox(false, 2);
		leftBox = new VBox(false, 7);
		tasksBox = new VBox(false, 7);
		mainBox = new VBox(false, 2);
		notebook = new Notebook;
		notebook.setShowTabs(false);
		notebook.setSizeRequest(400,300);
		buttonBox = HButtonBox.createActionBox();
		
		exitButton = makeButton(null, StockID.QUIT, "Exit", "exit");
		buttonBox.packStart(Alignment.west(exitButton), true, true, 7);

		backButton = makeButton(buttonBox, StockID.GO_BACK, "Back", "back");
		nextButton = makeButton(buttonBox, StockID.GO_FORWARD, "Next", "next");
		installButton = makeButton(buttonBox, StockID.OK, "Install", "install");
		
//		Button logo = new Button();
//		logo.setImage(getGtkDLogo());
//		logo.addOnButtonPress(&logoClicked);
//		logo.setRelief(ReliefStyle.NONE);
//		logo.setFocusOnClick(false);
		
		mainBox.packStart(Alignment.west(getGtkDLogo()), false, false, 2);
		mainBox.packStart(notebook, true, true, 2);
		mainBox.packStart(buttonBox, false, false, 2);

		topBox.packStart(new Frame(tasksBox,""), false, false, 2);
		topBox.packStart(mainBox, true, true, 2);
		
		add(topBox);
	}

	private int logoClicked(GdkEventButton* event, Widget widget)
	{
		
		PopupBox.information(this, "Help with the graphics design is apreciated", "GtkDLogo");
		return false;
	}
	
	private Button makeButton(ButtonBox box,StockID id, char[] label, char[] action)
	{
		Button button = new Button();
		button.setActionName(action);
		button.removeAll();
		button.setImage(new Image(id, IconSize.BUTTON));
		button.setLabel(label);
		if ( box !is null )
		{
			box.packStart(button, false, false, 7);
		}
		button.addOnClicked(&userActions);
		return button;
	}
	
	private void addPanels()
	{
		addPanel(new SelectionsPanel(this));
		version(gtkDdev)addPanel(new DevPanel(this));
		version(leds)	addPanel(new LedsPanel(this));
		version(compiler)	addPanel(new MainCompilerPanel(this));
		addPanel(new LocalPanel(this));
		addPanel(new InstallPanel(this));
		addPanel(new TestPanel(this));
	}
	
	CheckButton[char[]] tasksList;
	
	private void addPanel(UserPanel userPanel)
	{
		notebook.appendPage(userPanel.getWidget(), userPanel.getName());
		
		if ( userPanel.getName().length > 0 )
		{
			HBox hbox = new HBox(false, 1);
			CheckButton check = new CheckButton();
			hbox.packStart(check, false, false, 4);
			hbox.packStart(Alignment.west(new Label(userPanel.getName())), false, false, 4);
			tasksBox.packStart(hbox, false, false, 4);
			tasksList[userPanel.getName()] = check;
			check.setSensitive(false);
		}
		userPanels ~= userPanel;
	}
	
	private void userActions(Button button)
	{
		char[] action = button.getActionName();
		switch ( action )
		{
			case "exit":
				GtkD.exit(0);
				break;
			
			case "back":
				prevPanel();
				break;
				
			case "next":
				nextPanel();
				break;
		
			case "install":
				hide();
				new Installer(this);
				nextPanel();
				break;
		
			default:
				writefln("userAction = %s", action);
				break;
			
		}
	}
	
	private void setUserPanel(uint number)
	{
		if ( number < userPanels.length )
		{
			UserPanel panel = userPanels[number];
			setUserPanel(panel);
		}
	}
	
	public void setUserPanel(UserPanel panel)
	{
		if ( currentUserPanel !is null )
		{
			currentUserPanel.exited();
		}
		while ( !panel.selected() 
				&& movingDirection != 0
				)
		{
			if ( movingDirection > 0 )
			{
				nextPanel();
			}
			else
			{
				prevPanel();
			}
			return;
		}
		backButton.setSensitive(panel.allowBack());
		nextButton.setSensitive(panel.allowNext());
		bool allowInstall = true;
		foreach ( UserPanel userPanel ; userPanels )
		{
			if ( !userPanel.complete() )
			{
				allowInstall = false;
			}
			if ( userPanel.getName in tasksList )
			{
				tasksList[userPanel.getName()].setActive(userPanel.complete());
			}
		}
		installButton.setSensitive(allowInstall);
		currentUserPanel = panel;
	}
}

class UserPanel
{
	InstallerUI installerUI;
	
	bool completed = false;

	
	
	abstract Widget getWidget();
	abstract char[] getName();
	public this(InstallerUI installerUI)
	{
		this.installerUI = installerUI;

	}
	public bool allowNext()
	{
		return true;
	}
	public bool allowBack()
	{
		return true;
	}
	public bool selected()
	{
		return true;
	}
	public bool exited()
	{
		return selected();
	}
	public bool complete()
	{
		return completed;
	}
	
	protected HBox newSelection(char[] selection, char[] id)
	{
		HBox box = new HBox(false, 2);
		
		Button button = new Button(StockID.HELP, &userHelp, true);
		button.setActionName(id);
		button.setImage(new Image(StockID.HELP, IconSize.MENU));
		CheckButton check = new CheckButton(selection, &userSelection);
		check.setActionName(id);
		
		box.packStart(button, false, false, 2);
		box.packStart(check, false, false, 2);
		installerUI.addSelection(id, check);
		return box;
	}

	protected HBox newDirectory(char[] label, char[] id, SizeGroup sizeGroup)
	{
		HBox box = new HBox(false, 2);
		Button button = new Button(StockID.HELP, &userHelp, true);
		button.setActionName(id);
		button.setImage(new Image(StockID.HELP, IconSize.MENU));
		Entry entry = new Entry();

		box.packStart(button, false, false, 2);
		Label l = new Label(label);
		Alignment alig = Alignment.west(l);
		sizeGroup.addWidget(alig);
		box.packStart(alig, false, false, 2);
		box.packStart(entry, true, true, 2);
		button = new Button(StockID.INDEX, &userDirectory);
		button.setActionName(id);
		button.setLabel("Browse");
		button.setImage(new Image(StockID.INDEX, IconSize.MENU));
		box.packStart(button, false, false, 2);
		installerUI.addDirectory(id, entry);
		return box;
	}
	
	protected HBox newButton(Button actionButton, char[] id)
	{
		HBox box = new HBox(false, 2);
		
		Button button = new Button(StockID.HELP, &userHelp, true);
		button.setActionName(id);
		button.setImage(new Image(StockID.HELP, IconSize.MENU));
		
		box.packStart(button, false, false, 2);
		box.packStart(actionButton, false, false, 2);
		return box;
	}
	
	void userSelection(CheckButton check)
	{
		switch ( check.getActionName() )
		{
			
			case "leds":
				bool active = cast(bool)check.getActive();
				installerUI.setSensitive("ledsGtkD", active);
				installerUI.setSensitive("ledsLeds", active);
				installerUI.setSensitive("ledsDool", active);
				installerUI.setSensitive("ledsDante", active);
				installerUI.setSensitive("ledsPhobos", active);
				break;
			
			default:
				// nothing
				break;
		}
	}
	
	void userHelp(Button button)
	{
		
	}
private import gtk.FileChooserDialog;
private import gtk.FileChooser;
	void userDirectory(Button button)
	{
		char[] id = button.getActionName();
		char[] dir = installerUI.getDirectory(id);
		if ( dir != null )
		{
			FileChooserDialog chooserDialog = new FileChooserDialog(
						"Select directory",
						mainInstaller,
						FileChooserAction.SELECT_FOLDER
						);
			FileChooser chooser = chooserDialog.getFileChooser();
			chooser.setCurrentFolder(dir);
			ResponseType response = cast(ResponseType)chooserDialog.run();
			if ( response == ResponseType.GTK_RESPONSE_OK )
			{
				installerUI.setDirectory(id, chooser.getCurrentFolder());
			}
			chooserDialog.hide(); // is it released ?
		}
	}
}

class SelectionsPanel : UserPanel
{
	VBox vbox;
	
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public char[] getName()
	{
		return "Selections";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	public bool allowBack()
	{
		return false;
	}
	
	public bool selected()
	{
		completed = true;
		return true;
	}
	
	private void setup()
	{
		vbox.packStart(new Label("Select the components to install"), false, false, 14);
		vbox.packStart(newSelection("Install GtkD", "gtkD"), false, false, 2);
		version(gtkDdev) vbox.packStart(newSelection("Install GtkD for development", "gtkDDev"), false, false, 2);
		version(gtkDgl) vbox.packStart(newSelection("Install GtkDgl", "gtkDgl"), false, false, 2);
		version(gtkDdev) version(gtkDgl) vbox.packStart(newSelection("Install GtkDgl for development", "duiglDev"), false, false, 2);
		version(leds) vbox.packStart(newSelection("Install Leds", "leds"), false, false, 2);

		installerUI.setSelection("gtkD", true);
		version(gtkDdev) installerUI.setSelection("gtkDDev", true);
		version(gtkDgl) installerUI.setSelection("gtkDgl", true);
		version(gtkDdev) version(gtkDgl) installerUI.setSelection("duiglDev", true);
		version(leds) installerUI.setSelection("leds", true);

	}
	
}

class DevPanel : UserPanel
{
	VBox vbox;
	
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public char[] getName()
	{
		return "Development for GtkD";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	public bool selected()
	{
		completed = true;
		return installerUI.getSelection("gtkDDev")
				|| installerUI.getSelection("gtkDglDev");
	}
	
	private void setup()
	{
		vbox.packStart(new Label("Select GtkD modules"), false, false, 14);
		version(difiles) vbox.packStart(newSelection("GtkD .di files", "gtkDdi"), false, false, 2);
		vbox.packStart(newSelection("GtkD source files", "gtkDSource"), false, false, 2);
		vbox.packStart(newSelection("GtkDTests - general UI tests", "gtkDTests"), false, false, 2);
		version(gtkDgl) vbox.packStart(newSelection("SimpleGL - simplest GL test", "gtkDglSimple"), false, false, 2);
		version(gtkDgl) vbox.packStart(newSelection("ShapesGL - showing more of openGL integration", "gtkDglShapes"), false, false, 2);

		version(difiles) installerUI.setSelection("gtkDdi", true);
		installerUI.setSelection("gtkDSource", true);
		installerUI.setSelection("gtkDTests", true);
		version(gtkDgl) installerUI.setSelection("gtkDglSimple", true);
		version(gtkDgl) installerUI.setSelection("gtkDglShapes", true);

	}
	
}


class LedsPanel : UserPanel
{
	VBox vbox;
	
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public char[] getName()
	{
		return "Leds projects";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	public bool selected()
	{
		completed = true;
		return installerUI.getSelection("leds");
	}
	
	private void setup()
	{
		vbox.packStart(new Label("Select the leds projects to create"), false, false, 14);
		vbox.packStart(newSelection("Create a leds project for GtkD", "ledsGtkD"), false, false, 2);
		vbox.packStart(newSelection("Create a leds project for Leds", "ledsLeds"), false, false, 2);
		vbox.packStart(newSelection("Create a leds project for Dool", "ledsDool"), false, false, 2);
		vbox.packStart(newSelection("Create a leds project for Dante", "ledsDante"), false, false, 2);
		vbox.packStart(newSelection("Create a leds project for phobos", "ledsPhobos"), false, false, 2);

		installerUI.setSelection("ledsGtkD", true);
		installerUI.setSelection("ledsLeds", true);
		installerUI.setSelection("ledsDool", true);
		installerUI.setSelection("ledsDante", true);
		installerUI.setSelection("ledsPhobos", true);

	}
	
}


class MainCompilerPanel : UserPanel
{
	VBox vbox;
	
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public char[] getName()
	{
		return "D Compiler";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	public bool selected()
	{
		completed = true;
		return true;
	}
	
	private void setup()
	{
		vbox.packStart(new Label("Select your D compiler"), false, false, 14);
		
		vbox.packStart(new Label("For the installation"), false, false, 7);
		vbox.packStart(newSelection("Digital Mars DMD", "instalCompilerDMD"), false, false, 2);
		vbox.packStart(newSelection("gnu D GDC", "installCompilerGDC"), false, false, 2);

		vbox.packStart(new Label("For your leds projects"), false, false, 7);
		vbox.packStart(newSelection("Digital Mars DMD", "ledsCompilerDMD"), false, false, 2);
		vbox.packStart(newSelection("gnu D GDC", "ledsCompilerGDC"), false, false, 2);

		installerUI.setSelection("instalCompilerDMD", true);
		installerUI.setSelection("installCompilerGDC", false);
		version(leds) installerUI.setSelection("ledsCompilerDMD", true);
		version(leds) installerUI.setSelection("ledsCompilerGDC", false);
		
		installerUI.setSensitive("instalCompilerDMD", false);
		installerUI.setSensitive("installCompilerGDC", false);
		version(leds) installerUI.setSensitive("ledsCompilerDMD", false);
		version(leds) installerUI.setSensitive("ledsCompilerGDC", false);
	}
	
}



class LocalPanel : UserPanel
{
	VBox vbox;
	SizeGroup sizeGroup;
	
	char[] home;
	
	public this(InstallerUI installerUI)
	{
		super(installerUI);
		sizeGroup = new SizeGroup(SizeGroupMode.HORIZONTAL);
		version(Win32)
		{
			home = std.string.toString(getenv("HOMEPATH"));
		}
		else
		{
			home = std.string.toString(getenv("HOME"));
		}
			
	}
	public char[] getName()
	{
		return "Local";
	}
	
	private import std.path;
	private import std.file;
	
	private bool validDir(char[] dir)
	{
		bool valid = dir.length > 0;
		return valid;
	}
	
	public bool validDMDHome()
	{
		bool valid = false;
		char[] dir = installerUI.getDirectory("dmdHome");
		valid = validDir(dir);
		if ( valid )
		{
			try
			{
				version(Win32) char[] dmd = std.path.join(std.path.join(dir ,"bin"), "dmd.exe");
				else  char[] dmd = std.path.join(std.path.join(dir ,"bin"), "dmd");
				std.file.isfile(dmd);
				version(Win32)
				{
					char[] dm = std.path.join(std.path.join(dir,"..\\dm"),"bin");
					char[] link = std.path.join(dm, "link.exe");
					std.file.isfile(link);
					char[] lib = std.path.join(dm, "lib.exe");
					std.file.isfile(lib);
				}
				else  char[] link = std.path.join(std.path.join(dir ,"bin"), "dmd");
				valid = true;
			}
			catch ( FileException pe )
			{
				valid = false;
			}
		}
		
		return valid;
	}
	
//	class GuessFile
//	{
//		char[] guess;
//		char[] fetch;
//		char[] userChoice;
//		bool create;
//		bool confirmed;
//		
//		bool isDir(char[] dir)
//		{
//			bool ok = false;
//			try
//			{
//				ok = cast(bool)std.file.isfile(dir);
//			}
//			catch ( FileException fe )
//			{
//				ok = false;
//			}
//			return ok;
//		}
//		
//		bool exists(char[] fileName)
//		{
//			bool ok = false;
//			try
//			{
//				ok = cast(bool)std.file.exists(fileName);
//			}
//			catch ( FileException fe )
//			{
//				ok = false;
//			}
//			return ok;
//		}
//	}

	public char[] guessDMDHome()
	{
		char[] guess;
		version(Win32)
		{
			guess = "\\dmd";
		}
		else
		{
			guess = std.path.join(home, "dmd");
		}
		return guess;
	}
	
	public char[] guessGtkHome()
	{
		char[] guess;
		version(Win32)
		{
			guess = "\\Program Files\\Common Files\\GTK\\2.0\\bin";
		}
		else
		{
			guess = "/usr/lib";
		}
		return guess;
	}
	
	public char[] guessGtkDLibHome()
	{
		char[] guess;
		version(Win32)
		{
			guess = "\\Program Files\\Common Files\\GTK\\2.0\\bin";
		}
		else
		{
			guess = "/home/ruimt/usr/lib";
		}
		return guess;
	}

	public char[] guessGtkDDevHome()
	{
		char[] guess;
		version(Win32)
		{
			guess = "\\testRelease";
		}
		else
		{
			guess = std.path.join(home, "devel/D/testInstall/GtkD1");
		}
		return guess;
	}

	public char[] guessLedsHome()
	{
		char[] guess;
		version(Win32)
		{
			guess = "\\Program Files\\Common Files\\org\\dsource\\leds";
		}
		else
		{
			guess = std.path.join(home, "devel/D/Leds1");
		}
		return guess;
	}

	
	public bool selected()
	{
		completed = true;
		version(dmd)
		{
			if ( completed )
			{
				completed = validDMDHome();
			}
		}
		version(gtkDdev)
		{
			if ( completed )
			{
				completed = installerUI.getDirectory("gtkDDevHome").length > 0;
			}
		}
		version(leds)
		{
			if ( completed )
			{
				completed = installerUI.getDirectory("ledsHome").length > 0;
			}
		}
		
		if ( completed )
		{
			completed = installerUI.getDirectory("gtkHome").length > 0;
		}
		if ( completed )
		{
			completed = installerUI.getDirectory("gtkDLibHome").length > 0;
		}
		
		return true;
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	private void setup()
	{
		vbox.packStart(new Label("Select the paths for installation"), false, false, 14);
		vbox.packStart(newDirectory("DMD home", "dmdHome", sizeGroup), false, false, 2);
		vbox.packStart(newDirectory("Gtk lib home", "gtkHome", sizeGroup), false, false, 2);
		vbox.packStart(newDirectory("GtkD lib home", "gtkDLibHome", sizeGroup), false, false, 2);
		version(gtkDdev) vbox.packStart(newDirectory("GtkD dev home", "gtkDDevHome", sizeGroup), false, false, 2);
		version(leds) vbox.packStart(newDirectory("leds home", "ledsHome", sizeGroup), false, false, 2);
		
		installerUI.setDirectory("dmdHome", guessDMDHome());
		installerUI.setDirectory("gtkHome", guessGtkHome());
		installerUI.setDirectory("gtkDLibHome", guessGtkDLibHome());
		version(gtkDdev) installerUI.setDirectory("gtkDDevHome", guessGtkDDevHome());
		version(leds) installerUI.setDirectory("ledsHome", guessLedsHome());
	}
}

class InstallPanel : UserPanel
{
	VBox vbox;
	//bool installed = false;
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public bool selected()
	{
		completed = true;
		return true;
	}
	public char[] getName()
	{
		return "Install";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	bool allowNext()
	{
		return false;
	}
	
	private void setup()
	{
		Label label = new Label(
			"Thank you for installing GtkD\n"
			~"press Install to continue"
		);
		vbox.packStart(label, true, true, 2);
		
		version(gtkDtest) vbox.packStart(newSelection("Create desktop icon for gtkD tests", "gtkDTestsIcon"), false, false, 2);
		version(leds) vbox.packStart(newSelection("Create desktop icon for leds", "ledsIcon"), false, false, 2);
		version(leds) vbox.packStart(newSelection("set leds as your D editor", "ledsDEditor"), false, false, 2);
		
		version(gtkDtest) installerUI.setSelection("gtkDTestsIcon", false);
		version(leds) installerUI.setSelection("ledsIcon", false);
		version(leds) installerUI.setSelection("ledsDEditor", false);

		version(gtkDtest) installerUI.setSensitive("gtkDTestsIcon", false);
		version(leds) installerUI.setSensitive("ledsIcon", false);
		version(leds) installerUI.setSensitive("ledsDEditor", false);
	}
}

class TestPanel : UserPanel
{
	VBox vbox;
	bool active;
	//bool installed = false;
	public this(InstallerUI installerUI)
	{
		super(installerUI);
	}
	public bool complete()
	{
		return !active;
	}
	public bool selected()
	{
		active = true;
		completed = true;
		return true;
	}
	public char[] getName()
	{
		return "";
	}
	public Widget getWidget()
	{
		if ( vbox is null )
		{
			vbox = new VBox(false, 2);
			setup();
		}
		return vbox;
	}
	
	bool allowNext()
	{
		return false;
	}
	
	bool allowBack()
	{
		return false;
	}

	private void testButtonAction(Button button)
	{
		switch ( button.getActionName() )
		{

			default:
				writefln("testButtonAction going for %s", button.getActionName());
				std.process.system(button.getActionName());
				break;
		}

	}
	
	private void setup()
	{
		Label label = new Label(
			"Installation is complete\n"
			~"press Exit to quit the installer\n"
			~"or execute the test programs"
		);
		vbox.packStart(label, false, false, 2);
		
		Button button;
		
		version(gtkDtest)
		{
			if ( installerUI.getSelection("gtkDTests") )
			{
				button = new Button("gtkD Tests");
				vbox.packStart(newButton(button, "helpGtkDTests"), false, false, 2);
				button.setActionName(installerUI.getDirectory("gtkDDevHome")~"/gtkDTests");
				button.addOnClicked(&testButtonAction);
			}
		}
		version(gtkDgltest)
		{
			if ( installerUI.getSelection("gtkDglSimple") )
			{
				button = new Button("SimpleGL test");
				button.setActionName(installerUI.getDirectory("gtkDDevHome")~"/SimpleGL");
				button.addOnClicked(&testButtonAction);
				vbox.packStart(newButton(button, "helpSimpleGLTest"), false, false, 2);
			}
			if ( installerUI.getSelection("gtkDglShapes") )
			{
				button = new Button("ShapesGL test");
				button.setActionName(installerUI.getDirectory("gtkDDevHome")~"/ShapesGL");
				button.addOnClicked(&testButtonAction);
				vbox.packStart(newButton(button, "helpShapesGLTest"), false, false, 2);
			}
		}
		version(leds)
		{
			if ( installerUI.getSelection("leds") )
			{
				button = new Button("Leds");
				button.setActionName(installerUI.getDirectory("ledsHome")~"/leds");
				button.addOnClicked(&testButtonAction);
				vbox.packStart(newButton(button, "helpLedsTest"), false, false, 2);
			}
		}
		
	}
}

MainInstaller mainInstaller;

int main(char[][] args)
{
	version(Win32)
	{
		GtkD.init(args);
	}
	else
	{
		GtkD.initMultiThread(args);
	}
	mainInstaller = new MainInstaller();
	GtkD.main();
	return 0;
}
