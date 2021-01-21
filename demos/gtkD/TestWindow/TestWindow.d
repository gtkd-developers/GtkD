/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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

module TestWindow;

//debug = 1;

//version=cairo;

version(cairo)import cairo.clock;

// import gtk.Version;
// import gtk.Table;

import stdlib = core.stdc.stdlib : exit;
import core.thread;
import std.random;
import std.string;

// import gdk.Threads;

import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Adjustment;
import gtk.Grid;
import gtk.Viewport;
// import gtk.AccelGroup;

import TestEntries;

import TestStock;
import TestDrawingArea;
import TestScales;
import TestText;
import TestTreeView;
import TestImage;
import TestThemes;
import TestAspectFrame;
import TestIdle;
import TTextView;

// import gtk.MenuItem;
import gtk.Widget;
import gtk.PopoverMenuBar;
import gtk.Notebook;
import gtk.ComboBoxText;
import gtk.FileChooserDialog;
import gtk.FileChooserIF;
import gtk.ColorChooserDialog;
import gtk.FontChooserDialog;
// import gtk.FontSelectionDialog;
// import gtk.ColorSelectionDialog;
import gtk.Button;
import gobject.Value;
// import gtk.VBox;
import gtk.MessageDialog;
import gtk.Frame;
// import gtk.HButtonBox;
import gtk.Statusbar;
import gtk.Separator;
// import gtk.Menu;
// import gtk.HandleBox;
// import gtk.Toolbar;
// import gtk.SeparatorToolItem;
// import gtk.ToolButton;
// import gtk.RadioButton;
import gtk.CheckButton;
import gtk.ToggleButton;
// import gtk.HBox;
import gtk.Box;
// import gtk.Arrow;
// import gtk.ButtonBox;
import gtk.Calendar;
// import gtk.VButtonBox;
import gtk.SpinButton;
import gtk.ListStore;
import gtk.TreeIter;
import gtk.TreeView;
import gtk.TreeViewColumn;
import gtk.CellRendererText;
import gtk.Window;

import gtk.ScrolledWindow;
import gtk.MessageDialog;

import core.memory;

import glib.ListSG;

import glib.Str;
import gtk.Label;
import glib.ListG;
import gtk.Paned;
// import gtk.HPaned;
// import gtk.VPaned;
import gtk.Paned;

import gtk.Calendar;
import std.stdio;
// import gtk.VButtonBox;
// import gtk.FileChooserButton;

import gtk.AboutDialog;
import gtk.Dialog;

import gtk.TreeStore;
import gdkpixbuf.Pixbuf;
import gtk.ComboBox;

import gtk.TreePath;
import gtk.CellRenderer;
import gtk.CellRendererPixbuf;

/**
 * This tests the GtkD widgets
 */


class TestWindow : ApplicationWindow
{
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	int windowDelete(GdkEvent* event, Widget widget)
	{

		debug(events) writefln("TestWindow.widgetDelete : this and widget to delete %X %X",this,window);
		// MessageDialog d = new MessageDialog(
		// 								this,
		// 								GtkDialogFlags.MODAL,
		// 								MessageType.QUESTION,
		// 								ButtonsType.YES_NO,
		// 								"Are you sure you want' to exit these GtkDTests?");
		// TODO: MessageDIalog missing ctor
		// MessageDialog d = new MessageDialog();
		// int responce = d.run();
		// if ( responce == ResponseType.YES )
		// {
		// 	stdlib.exit(0);
		// }
		// d.destroy();
		return true;
	}

	void anyButtonExits(Button button)
	{
			stdlib.exit(0);
	}

	this(Application application)
	{
		super(application);
		setTitle("GtkD tests");
		setup();
		// showAll();
		show();

		// gtk.Version missing
		// string versionCompare = Version.checkVersion(3,0,0);

		// if ( versionCompare.length > 0 )
		// {
		// 	MessageDialog d = new MessageDialog(this,
		// 								GtkDialogFlags.MODAL,
		// 								MessageType.WARNING,
		// 								ButtonsType.OK,
		// 								"GtkD : Gtk+ version missmatch\n" ~ versionCompare ~
		// 								"\nYou might run into problems!"~
		// 								"\n\nPress OK to continue");
		// 	d.run();
		// 	d.destroy();
		// }
	}

	void setup()
	{
		//Frame.defaultBorder = 7;

		auto mainBox = new Box(GtkOrientation.VERTICAL, 0);
		// mainBox.prepend(getMenuBar());
		mainBox.prepend(getToolbar());

		Notebook notebook = setNotebook();
		// notebook.setBorderWidth(10);
		// mainBox.packStart(notebook,true,true,0);
		mainBox.prepend(notebook);

		// Button cancelButton = new Button(StockID.CANCEL, &anyButtonExits);
		auto cancelButton = new Button();
		cancelButton.setIconName("cancel");
		cancelButton.addOnClicked(&anyButtonExits);

		Button exitButton = new Button();
		cancelButton.setIconName("quit");
		exitButton.addOnClicked(&anyButtonExits);
		// kButton exitButton = new Button(StockID.QUIT, &anyButtonExits);

		// Button quitButton = new Button(StockID.OK, &anyButtonExits);
		Button quitButton = new Button();
		cancelButton.setIconName("ok");
		quitButton.addOnClicked(&anyButtonExits);

		// Box bBox = HButtonBox.createActionBox();
		Box bBox = new Box(GtkOrientation.HORIZONTAL, 0);

		bBox.append(exitButton);
		bBox.append(cancelButton);
		bBox.append(quitButton);
		mainBox.prepend(bBox);

		Statusbar statusbar = new Statusbar();

		mainBox.prepend(statusbar);
		setChild(mainBox);

		notebook.appendPage(new TestEntries, new Label("Entry"));
		testEventBox(notebook);

		testButtons(notebook);

		notebook.appendPage(new TestStock, new Label("Stock"));
		testLists(notebook);
		testNotebook(notebook);
		testPaned(notebook);
		testDialogs(notebook);
		testViewport(notebook);

		notebook.appendPage(new TestScales, new Label("Scales"));
			testSpinButton(notebook);

		notebook.appendPage(new TestTreeView, new Label("TreeView"));
//		notebook.appendPage(new TestTreeView1,"TreeView 1");
//			testList(notebook);

		version(linux) {
			// this block crashes gtk+ on win32 for some reason
			auto frm = new Frame("Drawing Area");
			frm.setChild(new TestDrawingArea);
			notebook.appendPage(frm, new Label("Drawing"));
			notebook.appendPage(new TestText, new Label("Text"));
			notebook.appendPage(new TestImage(this), new Label("Image"));
			//TestThemes seems to be unfinished.
			//notebook.appendPage(new TestThemes(this),"Themes");
			notebook.appendPage(new TestAspectFrame(), new Label("Aspect Frame"));
			notebook.appendPage(new TestIdle(), new Label("Idle"));
			version(cairo)notebook.appendPage(new Clock(),  new Label("Cairo"));
			gtkDemo(notebook);
		}
	}

	PopoverMenuBar getMenuBar()
	{

		import gio.MenuModel;

		// THis probably won't work
		auto menuBarModel = new MenuModel(new GMenuModel());
		auto menuBar = new PopoverMenuBar(menuBarModel);

		// AccelGroup accelGroup = new AccelGroup();

		// addAccelGroup(accelGroup);

		// MenuBar menuBar = new MenuBar();

		// Menu menu = menuBar.append("_File");

		// MenuItem item = new MenuItem(&onMenuActivate, "_New","file.new", true, accelGroup, 'n');
		// //item.addAccelerator("activate",accelGroup,'n',GdkModifierType.CONTROL_MASK,GtkAccelFlags.VISIBLE);

		// menu.append(item);
		// menu.append(new MenuItem(&onMenuActivate, "_Open","file.open", true, accelGroup, 'o'));
		// menu.append(new MenuItem(&onMenuActivate, "_Close","file.close", true, accelGroup, 'c'));
		// menu.append(new MenuItem(&onMenuActivate, "E_xit","file.exit", true, accelGroup, 'x'));


		// menu = menuBar.append("_Edit");

		// menu.append(new MenuItem(&onMenuActivate,"_Find","edit.find", true, accelGroup, 'f'));
		// menu.append(new MenuItem(&onMenuActivate,"_Search","edit.search", true, accelGroup, 's'));

		// menu = menuBar.append("_Help");
		// menu.append(new MenuItem(&onMenuActivate,"_About","help.about", true, accelGroup, 'a',GdkModifierType.CONTROL_MASK|GdkModifierType.SHIFT_MASK));

		return menuBar;
	}

	class GtkDAbout : AboutDialog
	{
		this()
		{
			string[] names;
			names ~= "Antonio Monteiro (binding/wrapping/proxying/decorating for D)";
			names ~= "www.gtk.org (base C library)";

			setAuthors( names );
			setDocumenters(names);
			setArtists( names );
			setLicense("License is LGPL");
			setWebsite("http://lisdev.com");
		}
	}

	// void onMenuActivate(MenuItem menuItem)
	// {
	// 	string action = menuItem.getActionName();
	// 	switch( action )
	// 	{
	// 		case "help.about":
	// 			GtkDAbout dlg = new GtkDAbout();
	// 			dlg.addOnResponse(&onDialogResponse);
	// 			dlg.showAll();
	// 			break;
	// 		default:
	// 			MessageDialog d = new MessageDialog(
	// 				this,
	// 				GtkDialogFlags.MODAL,
	// 				MessageType.INFO,
	// 				ButtonsType.OK,
	// 				"You pressed menu item "~action);
	// 			d.run();
	// 			d.destroy();
	// 		break;
	// 	}
	// }

	void onDialogResponse(int response, Dialog dlg)
	{
		if(response == GtkResponseType.CANCEL)
			dlg.destroy();
	}

	Box getToolbar()
	{
		// HandleBox handleBox = new HandleBox();
		// Toolbar toolbar = new Toolbar();
		// auto handleBox = new Box(GtkOrientation.VERTICAL, 0);
		auto toolbar = new Box(GtkOrientation.HORIZONTAL, 3);

		auto toolbarLeft = new Box(GtkOrientation.HORIZONTAL, 3);

		Button btn;
		btn = new Button();
		btn.setIconName("open");
		toolbarLeft.append(btn);

		// toolbar.append(new ToolButton(StockID.CLOSE));
		btn = new Button();
		btn.setIconName("open");
		toolbarLeft.append(btn);

		toolbar.append(toolbarLeft);
		toolbar.append(new Separator(GtkOrientation.VERTICAL));

		// toolbar.append(new SeparatorToolItem());
		// btn = new Button();
		// btn.setIconName("");
		// toolbar.append(btn);

		// toolbar.append(new ToolButton(StockID.SAVE));
		auto toolbarRight = new Box(GtkOrientation.HORIZONTAL, 3);
		btn = new Button();
		btn.setIconName("save");
		toolbarRight.append(btn);

		// toolbar.append(new ToolButton(StockID.SAVE_AS));
		btn = new Button();
		btn.setIconName("save_as");
		toolbarRight.append(btn);

		toolbar.append(toolbarRight);

		return toolbar;
	}

	Notebook setNotebook()
	{
		Notebook notebook = new Notebook();
		notebook.setScrollable(true);
		notebook.addOnSwitchPage(&onNotebookSwitchPage);
		notebook.setTabPos(PositionType.LEFT);
		return notebook;
	}

	void onNotebookSwitchPage(Widget notePage, uint pageNumber, Notebook notebook)
	{
		//writefln("Notebook switch to page %s", pageNumber);
		// fullCollect helps finding objects that shouldn't have been collected
		GC.collect();
		//writefln("exiting Notebook switch to page %s", pageNumber);
	}

	//import EventBox;

	void testEventBox(Notebook notebook)
	{

//		EventBox eventBox = new EventBox();
//		eventBox.add(new Label("label on event box"));
//		notebook.appendPage(eventBox,"Buttons");

		//EventBox eventBox = new EventBox();
		//eventBox.add(new Label("label on event box"));
		notebook.appendPage(new Label("just a simple label"),new Label("label"));

	}

	void testButtons(Notebook notebook)
	{

		auto table = new Grid();

		//ListSG listSG = new ListSG();

		auto radio1Button = new CheckButton("Option 1");
		auto radio2Button = new CheckButton("Option 2");
		radio2Button.setGroup(radio1Button);
		auto radio3Button = new CheckButton("Option 3");
		radio3Button.setGroup(radio2Button);
		auto radio4Button = new CheckButton("Option 4");
		radio4Button.setGroup(radio3Button);
		auto radio5Button = new CheckButton("Option 5");
		radio5Button.setGroup(radio4Button);
		auto radio6Button = new CheckButton("Option 6");
		radio6Button.setGroup(radio5Button);
		auto radio7Button = new CheckButton("Option 7");
		radio7Button.setGroup(radio6Button);
		auto radio8Button = new CheckButton("Option 8");
		radio8Button.setGroup(radio7Button);
		auto radio9Button = new CheckButton("Option 9");
		radio9Button.setGroup(radio8Button);

		table.attach(radio1Button,0,1,4,4);
		table.attach(radio2Button,1,2,4,4);
		table.attach(radio3Button,2,3,4,4);
		table.attach(radio4Button,3,4,4,4);
		table.attach(radio5Button,4,5,4,4);
		table.attach(radio6Button,5,6,4,4);
		table.attach(radio7Button,6,7,4,4);
		table.attach(radio8Button,7,8,4,4);
		table.attach(radio9Button,8,9,4,4);

		CheckButton editableButton = new CheckButton("editable");
		CheckButton visibleButton = new CheckButton("visible");
		table.attach(editableButton,9,10,4,4);
		table.attach(visibleButton,10,11,4,4);

		ToggleButton toggleButton = new ToggleButton("Toggle this");
		table.attach(toggleButton,11,12,4,4);

		Button button = new Button("test events");
		table.attach(button,12,13,4,4);

		void bActivate(Button button)
		{
			writeln("button Activate");
		}
		void bClicked(Button button)
		{
			writeln("button Clicked");
		}
		void bEnter(Button button)
		{
			writeln("button Enter");
		}
		void bLeave(Button button)
		{
			writeln("button Leave");
		}
		void bPressed(Button button)
		{
			writeln("button Pressed");
		}
		void bReleased(Button button)
		{
			writeln("button Released");
		}
		button.addOnActivate(&bActivate);
		button.addOnClicked(&bClicked);
		// button.addOnEnter(&bEnter);
		// button.addOnLeave(&bLeave);
		// button.addOnPressed(&bPressed);
		// button.addOnReleased(&bReleased);

//		for ( ShadowType shadow = 0; shadow<=ShadowType.max ; shadow ++)
//		{
//			for ( DirectionType direction = 0 ; direction<=DirectionType.max ; direction++)
//			{
//				table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
//				table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
//				table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
//				table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
//			}
//		}
		auto frm = new Frame("Buttons");
		frm.setChild(table);
		notebook.appendPage(frm, new Label("Buttons"));
	}

	class ComboStore : TreeStore
	{
		this()
		{
			//int* i = cast(int*)pixbufGetType();

			GType[] columns;
			columns ~= GType.STRING;
			columns ~= GType.STRING;
			super(columns);
		}

	}


	void testLists(Notebook notebook)
	{
		Box mainBox = new Box(GtkOrientation.VERTICAL,3);

		// comboBoxTextEntry from a list of strings
		mainBox.prepend(new Label("String combo"));
		static string[] cbList = ["item 1","item 2","item 3","item 4","item 5","item 6","item 7","item 8","item 9"];
		comboText = new ComboBoxText();
		string entry3 = "Combo box text entry 3";
		comboText.appendText("Combo box text entry 1");
		comboText.appendText("Combo box text entry 2");
		comboText.appendText(entry3);
		comboText.appendText("Combo box text entry 4");
		comboText.appendText("Combo box text entry 5");
		comboText.setActive(2);

		Box actionBox1 = new Box(GtkOrientation.HORIZONTAL, 0);
		actionBox1.prepend(comboText);

		Button showCombo1 = new Button("ShowCombo");
		showCombo1.addOnClicked(&showTextCombo);
		actionBox1.prepend(showCombo1);

		auto frm = new Frame("Text entry ComboBox");
		frm.setChild(actionBox1);
		mainBox.prepend(frm);

		// TODO combo with widgets


		// new ComboBox + TreeModel

		ComboStore comboStore = new ComboStore();

		TreeIter iterFirst;	// to set the first active iter
		TreeIter iterChild;
		TreeIter iterTop;
		comboStore.append(iterTop, null);
		comboStore.setValue(iterTop, 0, new Value("Paganini"));

		comboStore.append(iterTop, iterTop);
		comboStore.setValue(iterTop, 0, new Value("Nicolo"));

		comboStore.append(iterTop, null);
		comboStore.setValue(iterTop, 0, new Value("List"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Franz"));

		comboStore.append(iterTop, null);
		comboStore.setValue(iterTop, 0, new Value("Beethoven"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Ludwic"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Maria"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Van"));

		comboStore.append(iterTop, null);
		comboStore.setValue(iterTop, 0, new Value("Bach"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Johann"));
		comboStore.append(iterChild, iterTop);
		comboStore.setValue(iterChild, 0, new Value("Sebastian"));

		ComboBox treeCombo = new ComboBox(comboStore);
		// treeCombo.setWrapWidth(1);
		treeCombo.setProperty("entry-text-column", 0);

		// TODO something is wrong gettign the ier from the path
		//TreePath path = new TreePath("0,0");
		//comboStore.getIter(iterChild, path);
		//treeCombo.setActiveIter(iterChild);
		// use a previously set iter
		treeCombo.setActiveIter(iterFirst);
		auto treeComboFrame = new Frame("Tree Combo box");
		treeComboFrame.setChild(treeCombo);
		mainBox.prepend(treeComboFrame);

		simpleCombo = new ComboBoxText();
		simpleCombo.appendText("Top");
		simpleCombo.appendText("Bottom");
		simpleCombo.appendText("Left");
		simpleCombo.appendText("Right");
		simpleCombo.setActive(0);

		// actions

		// ButtonBox actionBox = HButtonBox.createActionBox();
		Box actionBox = new Box(GtkOrientation.HORIZONTAL, 0);
		actionBox.prepend(simpleCombo);

		Button showCombo = new Button("ShowCombo");
		showCombo.addOnClicked(&showSimpleCombo);
		actionBox.prepend(showCombo);

		auto frame1 = new Frame("Simple text list");
		frm.setChild(actionBox);
		mainBox.prepend(frame1);

		auto frame2 = new Frame("Lists");
		frame2.setChild(mainBox);
		notebook.appendPage(frame2, new Label("Lists"));

	}
	ComboBoxText simpleCombo;
	ComboBoxText comboText;

	void showTextCombo(Button button)
	{
		writefln("Combo selected text = %s",comboText.getActiveText());
	}

	void showSimpleCombo(Button button)
	{
		writefln("Combo selected text = %s",simpleCombo.getActiveText());
	}

	class NB : Notebook
	{
		void itemActivated(Widget menu_item)
		{
			writeln("NB.activateCallback");
		}
		void buttonClicked(Button button)
		{
			setCurrentPage(2);
		}

		void switchPage(Notebook notebook, /*NotebookPage page,*/ uint pageNumber)
		{
			writefln("new page = %d",pageNumber);
		}
	}


	NB nb;

	void posLeft(Button button)
	{
		nb.setTabPos(PositionType.LEFT);
	}
	void posRight(Button button)
	{
		nb.setTabPos(PositionType.RIGHT);
	}
	void posTop(Button button)
	{
		nb.setTabPos(PositionType.TOP);
	}
	void posBottom(Button button)
	{
		nb.setTabPos(PositionType.BOTTOM);
	}

	/**
	 * tests notebook
	 * @param nodebook
	 */
	void testNotebook(Notebook notebook)
	{

      	nb = new NB();
      	nb.setTabPos(PositionType.min);
      	nb.popupEnable();
		nb.setShowBorder(false);
		// nb.setBorderWidth(0);

      	class PageMove
      	{
      		Notebook notebook;
      		PositionType toPos;
      		this(Notebook notebook,PositionType toPos)
      		{
      			this.notebook = notebook;
      			this.toPos = toPos;
      		}
      		void buttonClickedCallback()
      		{
      			notebook.setTabPos(toPos);
      		}
      	}

		PageMove toLeft = new PageMove(nb,PositionType.LEFT);
		PageMove toRight = new PageMove(nb,PositionType.RIGHT);
		PageMove toTop = new PageMove(nb,PositionType.TOP);
		PageMove toBottom = new PageMove(nb,PositionType.BOTTOM);


		notebook.appendPage(nb,new Label("Notebook"));

      	for( char i = '1' ; i<'5' ; i++ )
      	{
      		// Table table = new Table(2,2,true);
			Grid table = new Grid();
			Button left = new Button("Left "~ i);
			left.addOnClicked(&posLeft);
			Button right = new Button("Right "~ i);
			right.addOnClicked(&posRight);
			Button top = new Button("top "~ i);
			top.addOnClicked(&posTop);
			Button bottom = new Button("bottom "~ i);
			bottom.addOnClicked(&posBottom);

			table.attach(top,0,0,4,4);
			table.attach(right,1,0,4,4);
			table.attach(left,0,1,4,4);
			table.attach(bottom,1,1,4,4);
      		if ( i == 3 )
			{

//				MenuItem menuItem = new MenuItem("menu page 3",&nb.itemActivated);
//
//				Menu menu = new Menu();
//				menu.append(new MenuItem("page 3.1",&nb.itemActivated));
//				menu.append(new MenuItem("page 3.2",&nb.itemActivated));
//				menu.append(new MenuItem("page 3.3",&nb.itemActivated));
//				menu.append(new MenuItem("page 3.4",&nb.itemActivated));
//
//				menuItem.setSubmenu(menu);

				Box box = new Box(GtkOrientation.HORIZONTAL, 0);
				// box.setBorderWidth(0);
				Button button = new Button("Page " ~ i ~ "\0");
				button.addOnClicked(&nb.buttonClicked);
				// button.setBorderWidth(0);
				// button.setRelief(ReliefStyle.NONE);
				CheckButton checkButton = new CheckButton();
				// checkButton.setBorderWidth(0);
				box.prepend(checkButton);
				box.prepend(button);
				//nb.appendPageMenu(table,box,menuItem);
				//nb.appendPage(table,box);
			}
			else
			{
				nb.appendPage(table,new Label("Page " ~ i ~ "\0"));
			}
      	}
		//nb.addOnSwitchPage(&nb.switchPage);
	}

	void testPaned(Notebook notebook)
	{

		Paned mainPaned = new Paned(GtkOrientation.VERTICAL);
		Paned p0 = mainPaned;
		Button p1;
		Paned p2;

		bool h = true;
		for ( char c='1' ; c<='5' ; c++ )
		{
			p1 = new Button("Pane "~c);
			if ( h ) p2 = new Paned(GtkOrientation.HORIZONTAL);
			else p2 = new Paned(GtkOrientation.VERTICAL);

			p0.setStartChild(p1);
			p0.setEndChild(p2);
			p0 = p2;
			h = !h;
		}

		notebook.appendPage(mainPaned,new Label("Paned"));

	}

	FileChooserDialog fcd;
	FontChooserDialog f;
	ColorChooserDialog d;

	void showFileChooser(Button button)
	{
		string[] a;
		ResponseType[] r;
		a ~= "Lets go!";
		a ~= "Please don't";
		r ~= ResponseType.OK;
		r ~= ResponseType.CANCEL;
		if ( fcd  is  null )
		{
			// fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN, a, r);
			// fcd = new FileChooserDialog();
		}

		// fcd.setSelectMultiple(true);
		// fcd.run();

//		writefln("file selected = %s",fcd.getFileName());
//
//		foreach ( int i, string selection ; fs.getSelections())
//		{
//			writefln("File(s) selected [%d] %s",i,selection);
//		}
		// fcd.hide();
	}

	void showColor(Button button)
	{
		if ( d  is  null )
		{
			d = new ColorChooserDialog("Select the color", this);
		}
		d.show();
		// d.run();
		// d.hide();
	}

	void showCalendar(Button button)
	{
		Window calWin = new Window();
		calWin.setTitle("Calendar");
		Calendar calendar = new Calendar();
		//calendar.setTitle("No Title");
		calWin.setChild(calendar);
		calWin.show();
	}

	void showFont(Button button)
	{
		import gtk.FontChooserIF;

		if (f is null)
		{
			f = new FontChooserDialog("Select the font", this);
			f.addOnFontActivated(delegate(string font, FontChooserIF fc) {
				writeln("Selected font %s", font);
			});
		}
		f.show();
	}

	Button fontButton;

	void testDialogs(Notebook notebook)
	{
		// ButtonBox bBox = VButtonBox.createActionBox();
		auto bBox = new Box(GtkOrientation.VERTICAL, 0);

		// if ( fcd  is  null )
		// {
		// 	// fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN);
		// 	fcd = new FileChooserDialog();
		// }


		Button fileChooser = new Button("File Chooser");
		fileChooser.addOnClicked(&showFileChooser);

		Button color = new Button("Color Dialog");
		color.addOnClicked(&showColor);
		Button calendar = new Button("Calendar Dialog");
		calendar.addOnClicked(&showCalendar);
		fontButton = new Button("Font Dialog");
		fontButton.addOnClicked(&showFont);
		//fontButton.modifyFont("[Newspaper][16]");

		bBox.prepend(fileChooser);
		// bBox.prepend(fcb);
		bBox.prepend(color);
		bBox.prepend(calendar);
		bBox.prepend(fontButton);

		auto frm = new Frame("Dialogs");
		frm.setChild(bBox);
		notebook.appendPage(frm, new Label("Dialogs"));

	}

	void testViewport(Notebook notebook)
	{

		// Should we be using a GridView?
		Grid grid = new Grid();
		for ( int i = 0 ; i<21 ; i++)
		{
			for ( int j = 0 ; j<21; j++)
			{
				if ( (i == j) || (i+j==20) || (i==10) || (j==10))
				{
					grid.attach(
						new Button("Button"),
							i, j, 4,4);
				}
			}
		}

		ScrolledWindow sw = new ScrolledWindow();
		auto vp = new Viewport(null, null);
		sw.setChild(vp);
		vp.setChild(grid);
		// sw.addWithViewport(grid);
		notebook.appendPage(sw,new Label("Viewport"));
	}

	void testSpinButton(Notebook notebook)
	{
		auto table = new Grid();

		SpinButton spin = new SpinButton(new Adjustment(1.0, 0.0, 100.0, 1.0, 10.0, 0),1,0);
		table.attach(new Label("Spin this:"),0,0,4,4);
		table.attach(spin,1,0,4,4);

		notebook.appendPage(table, new Label("Spin Buttons"));
	}

	void testList(Notebook notebook)
	{
		class TestListStore : ListStore
		{
			this()
			{
				static GType [3] columns = [
								GType.STRING,
								GType.STRING,
								GType.STRING
								];
				super(columns);
			}
		}

		TestListStore testListStore = new TestListStore();

		TreeIter iterTop;
		testListStore.getIterFirst(iterTop);

		static int [3] cols = [0,1,2];
		Value[] vals;
		vals ~= new Value("Antonio");
		vals ~= new Value("Canada");
		vals ~= new Value("Ontario");
		testListStore.setValuesv(iterTop, cols, vals);
		// testListStore.set(iterTop,cols,vals);

		testListStore.append(iterTop);
		Value[] vals1;
		vals1 ~=  new Value("John Reimer");
		vals1 ~=  new Value("Canada");
		vals1 ~=  new Value("BC");
		testListStore.setValuesv(iterTop,cols,vals1);

		testListStore.append(iterTop);
		Value[] vals2;
		vals2 ~=  new Value("Friend of GtkD 2");
		vals2 ~= new Value( "Poland");
		vals2 ~=  new Value("Torun");
		testListStore.setValuesv(iterTop,cols,vals2);

		testListStore.append(iterTop);
		Value[] vals3;
		vals3 ~=  new Value("Friend of GtkD 3");
		vals3 ~=  new Value("Norway");
		vals3 ~=  new Value("Norway");
		testListStore.setValuesv(iterTop,cols,vals3);

		TreeView treeView = new TreeView(testListStore);
		treeView.setHeadersClickable(true);
		// treeView.setRulesHint(true);

		//CellRendererText cellText = new CellRendererText();
		// TreeViewColumn column = new TreeViewColumn("Author",new CellRendererText(),"text", 0);
		TreeViewColumn column = new TreeViewColumn();
		column.setTitle("Author");
		column.addAttribute(new CellRendererText(), "text", 0);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(0);
		column.setSortIndicator(true);

		column = new TreeViewColumn();
		column.setTitle("Country");
		column.addAttribute(new CellRendererText(), "text", 1);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(1);
		column.setSortIndicator(true);

		column = new TreeViewColumn();
		column.setTitle("Province");
		column.addAttribute(new CellRendererText(), "text", 2);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(2);
		column.setSortIndicator(true);

		//notebook.appendPage(treeView,"ListView");
		ScrolledWindow sw = new ScrolledWindow();
		auto vp = new Viewport(null, null);
		sw.setChild(vp);
		vp.setChild(treeView);
		// sw.addWithViewport(treeView);
		notebook.appendPage(sw, new Label("ListView"));
	}

	void testDelete(Notebook notebook)
	{
//		ulong l = 0;
//		while(true)
//		{
//			int i =0;
//			while(i<1 )
//			{
//				//Button b = new Button("Button");
//				Drawable d = getDrawable();
//				delete d;
//				++i;
//			}
//			++l;
//			write("testDelete count = %d\n\0",l*i);
//		}

	}

	void gtkDemo(Notebook notebook)
	{
		void showTTextView(Button button)
		{
			new TTextView();
		}

		void showTEditableCells(Button button)
		{
		//	new TEditableCells();
		}

		auto vBBox = new Box(GtkOrientation.VERTICAL, 0);

		Button button = new Button("Text View");
		button.addOnClicked(&showTTextView);
		vBBox.prepend(button);

		button = new Button("Editable Cells");
		button.addOnClicked(&showTEditableCells);
		vBBox.prepend(button);

		notebook.appendPage(vBBox, new Label("gtk-demo"));
	}
}

int main(string[] args)
{
	import gtkd.Loader;

	Linker.dumpLoadLibraries();
	Linker.dumpFailedLoads();

	auto application = new Application("org.gtkd.demo.TestWindow", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app) { new TestWindow(application); });
	return application.run(args);
}
