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

module TestWindow;

//debug = 1;

//version=cairo;

version(cairo)private import cairo.clock;

private import gtk.Version;
private import gtk.Table;

version(Tango)
{
	private import tango.text.convert.Layout;
	private import tango.io.Stdout;
	private import tango.core.Thread;
	private import tango.math.random.Kiss;

	version = DRuntime;
}
else version(D_Version2)
{
	private import core.thread;
	private import std.random;

	version = DRuntime;
}
else
{
	private import std.thread;
	private import std.random;
}

import gdk.Threads;

private import gtk.Main;
private import gtk.MainWindow;
private import gtk.Adjustment;
private import gtk.AccelGroup;

private import TestEntries;

//private import gtkDTree;
private import TestStock;
private import TestDrawingArea;
private import TestScales;
private import TestText;
//private import TestTree;
private import TestTreeView;
private import TestTreeView1;
private import TestImage;
private import TestThemes;
private import TestAspectFrame;
private import TestIdle;
private import TTextView;
//private import TEditableCells;

private import gtk.MenuItem;
private import gtk.Widget;
private import gtk.MenuBar;
private import gtk.Notebook;
//private import gtk.ComboBoxTextEntry;
private import gtk.FileChooserDialog;
private import gtk.FileSelection;
private import gtk.FontSelectionDialog;
private import gtk.ColorSelectionDialog;
private import gtk.InputDialog;
private import gtk.Button;
private import gtk.VBox;
private import gtk.MessageDialog;
private import gtk.Frame;
private import gtk.ObjectGtk;
private import gtk.HButtonBox;
private import gtk.Statusbar;
private import gtk.Menu;
private import gtk.HandleBox;
private import gtk.Toolbar;
private import gtk.SeparatorToolItem;
private import gtk.ToolButton;
private import gtk.RadioButton;
private import gtk.CheckButton;
private import gtk.ToggleButton;
//private import gtk.ListItem;
private import gtk.HBox;
private import gtk.Arrow;
//private import gtk.ListG;
//private import gtk.OptionMenu;
private import gtk.ButtonBox;
private import gtk.Calendar;
private import gtk.VButtonBox;
private import gtk.SpinButton;
private import gtk.ListStore;
private import gtk.TreeIter;
private import gtk.TreeView;
private import gtk.TreeViewColumn;
private import gtk.CellRendererText;
//private import gtk.SListG;
//private import ddi.Drawable;
private import gtk.Window;

private import gtk.ScrolledWindow;
private import gtk.MessageDialog;



version(Tango) private import tango.core.Memory;
else version(D_Version2) private import core.memory;
else private import std.gc;

private import glib.ListSG;

private import glib.Str;
private import gtk.Label;
private import glib.ListG;
private import gtk.ComboBoxEntry;
private import gtk.Paned;
private import gtk.HPaned;
private import gtk.VPaned;

private import gtk.Calendar;
version(Tango) private import tango.io.Stdout;
else private import std.stdio;
private import gtk.VButtonBox;
private import gtk.FileChooserButton;
private import gdk.Drawable;

private import gtk.AboutDialog;
private import gtk.Dialog;

private import gtk.TreeStore;
private import gdk.Pixbuf;
private import gtk.ComboBox;

private import gtk.TreePath;
private import gtk.CellRenderer;
private import gtk.CellRendererPixbuf;

/**
 * This tests the DUI widgets
 */


class TestWindow : MainWindow
{
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	public: int windowDelete(GdkEvent* event, Widget widget)
	{

		debug(events) printf("TestWindow.widgetDelete : this and widget to delete %X %X\n",this,window);
		MessageDialog d = new MessageDialog(
										this,
										GtkDialogFlags.MODAL,
										MessageType.QUESTION,
										ButtonsType.YES_NO,
										"Are you sure you want' to exit these GtkDTests?");
		int responce = d.run();
		if ( responce == ResponseType.GTK_RESPONSE_YES )
		{
			Main.exit(0);
		}
		d.destroy();
		return true;
	}

	void anyButtonExits(Button button)
	{
			Main.exit(0);
	}

	this()
	{
		super("GtkD tests");
		setup();
		showAll();

		string versionCompare = Version.checkVersion(2,8,0);

		if ( versionCompare.length > 0 )
		{
			MessageDialog d = new MessageDialog(this,
										GtkDialogFlags.MODAL,
										MessageType.WARNING,
										ButtonsType.OK,
										"GtkD : Gtk+ version missmatch\n" ~ versionCompare ~
										"\nYou might run into problems!"
										"\n\nPress OK to continue");
			d.run();
			d.destroy();
		}
	}

	void setup()
	{
		//Frame.defaultBorder = 7;

		VBox mainBox = new VBox(false,0);
		mainBox.packStart(getMenuBar(),false,false,0);
		mainBox.packStart(getToolbar(),false,false,0);

		Notebook notebook = setNotebook();
		notebook.setBorderWidth(10);
		mainBox.packStart(notebook,true,true,0);

		Button cancelButton = new Button(StockID.CANCEL, &anyButtonExits);
		Button exitButton = new Button(StockID.QUIT, &anyButtonExits);
		Button quitButton = new Button(StockID.OK, &anyButtonExits);

		ButtonBox bBox = HButtonBox.createActionBox();

		bBox.packEnd(exitButton,0,0,10);
		bBox.packEnd(cancelButton,0,0,10);
		bBox.packEnd(quitButton,0,0,10);
		mainBox.packStart(bBox,false,false,0);

		Statusbar statusbar = new Statusbar();

		mainBox.packStart(statusbar,false,true,0);
		add(mainBox);

		notebook.appendPage(new TestEntries,"Entry");
		testEventBox(notebook);

		testButtons(notebook);

		notebook.appendPage(new TestStock,"Stock");
		testLists(notebook);
		testNotebook(notebook);
		testPaned(notebook);
		testDialogs(notebook);
		testViewport(notebook);

		version(Win32)
		{
			// todo - threads are still broken on windows
		}
		else
		{
			testThreads(notebook);
		}

		notebook.appendPage(new TestScales,"Scales");
			testSpinButton(notebook);

		notebook.appendPage(new Label("Deprecated,\nuse TreeView\ninstead"),"Tree");
		notebook.appendPage(new TestTreeView,"TreeView");
		notebook.appendPage(new TestTreeView1,"TreeView 1");
			testList(notebook);

		version(linux) {
			// this block crashes gtk+ on win32 for some reason
			notebook.appendPage(new Frame(new TestDrawingArea,"Drawing Area"),"Drawing");
			notebook.appendPage(new TestText,"Text");
			notebook.appendPage(new TestImage(this),"Image");
			notebook.appendPage(new TestThemes(this),"Themes");
			notebook.appendPage(new TestAspectFrame(),"Aspect Frame");
			notebook.appendPage(new TestIdle(),"Idle");
			version(cairo)notebook.appendPage(new Clock(), "Cairo");
			gtkDemo(notebook);
		}
	}

	MenuBar getMenuBar()
	{

		AccelGroup accelGroup = new AccelGroup();

		addAccelGroup(accelGroup);


		MenuBar menuBar = new MenuBar();

		Menu menu = menuBar.append("_File");;

		MenuItem item = new MenuItem(&onMenuActivate, "_New","file.new", true, accelGroup, 'n');
		//item.addAccelerator("activate",accelGroup,'n',GdkModifierType.CONTROL_MASK,GtkAccelFlags.VISIBLE);

		menu.append(item);
		menu.append(new MenuItem(&onMenuActivate, "_Open","file.open", true, accelGroup, 'o'));
		menu.append(new MenuItem(&onMenuActivate, "_Close","file.close", true, accelGroup, 'c'));
		menu.append(new MenuItem(&onMenuActivate, "E_xit","file.exit", true, accelGroup, 'x'));


		menu = menuBar.append("_Edit");
		menu.append(new MenuItem(&onMenuActivate,"_Find","edit.find", true, accelGroup, 'f'));
		menu.append(new MenuItem(&onMenuActivate,"_Search","edit.search", true, accelGroup, 's'));

		menu = menuBar.append("_Help");
		menu.append(new MenuItem(&onMenuActivate,"_About","help.about", true, accelGroup, 'a',GdkModifierType.CONTROL_MASK|GdkModifierType.SHIFT_MASK));




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
			setDocumenters( names );
			setArtists( names );
			setLicense("License is LGPL");
			setWebsite("http://lisdev.com");
		}
	}

	void onMenuActivate(MenuItem menuItem)
	{
		string action = menuItem.getActionName();
		switch( action )
		{
			case "help.about":
				GtkDAbout dlg = new GtkDAbout();
				dlg.addOnResponse(&onDialogResponse);
				dlg.showAll();
				break;
			default:
				MessageDialog d = new MessageDialog(
					this,
					GtkDialogFlags.MODAL,
					MessageType.INFO,
					ButtonsType.OK,
					"You pressed menu item "~action);
				d.run();
				d.destroy();
			break;
		}

	}

	void onDialogResponse(int response, Dialog dlg)
	{
		if(response == GtkResponseType.GTK_RESPONSE_CANCEL)
			dlg.destroy();
	}

	Widget getToolbar()
	{
		HandleBox handleBox = new HandleBox();
		Toolbar toolbar = new Toolbar();
		toolbar.insert(new ToolButton(StockID.OPEN));
		toolbar.insert(new ToolButton(StockID.CLOSE));
		toolbar.insert(new SeparatorToolItem());
		toolbar.insert(new ToolButton(StockID.SAVE));
		toolbar.insert(new ToolButton(StockID.SAVE_AS));

		handleBox.add(toolbar);

		return handleBox;

	}

	Notebook setNotebook()
	{
		Notebook notebook = new Notebook();
		notebook.addOnSwitchPage(&onNotebookSwitchPage);
		notebook.setTabPos(PositionType.LEFT);
		return notebook;
	}

	void onNotebookSwitchPage(GtkNotebookPage *notePage, uint pageNumber, Notebook notebook)
	{
		//writefln("Notebook switch to page %s", pageNumber);
		// fullCollect helps finding objects that shouldn't have been collected
		version(Tango) GC.collect();
		else version(D_Version2) GC.collect();
		else std.gc.fullCollect();
		//writefln("exiting Notebook switch to page %s", pageNumber);
	}

	//private import EventBox;

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

		Table table = new Table(2,12,0);

		//ListSG listSG = new ListSG();

		RadioButton radio1Button = new RadioButton(cast(ListSG)null,"Option 1");
		RadioButton radio2Button = new RadioButton(radio1Button,"Option 2");
		RadioButton radio3Button = new RadioButton(radio2Button,"Option 3");
		RadioButton radio4Button = new RadioButton(radio3Button,"Option 4");
		RadioButton radio5Button = new RadioButton(radio4Button,"Option 5");
		RadioButton radio6Button = new RadioButton(radio5Button,"Option 6");
		RadioButton radio7Button = new RadioButton(radio6Button,"Option 7");
		RadioButton radio8Button = new RadioButton(radio7Button,"Option 8");
		RadioButton radio9Button = new RadioButton(radio8Button,"Option 9");
		table.attach(radio1Button,0,1,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio2Button,0,1,1,2,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio3Button,0,1,2,3,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio4Button,0,1,3,4,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio5Button,0,1,4,5,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio6Button,0,1,5,6,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio7Button,0,1,6,7,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio8Button,0,1,7,8,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(radio9Button,0,1,8,9,AttachOptions.FILL,AttachOptions.FILL,4,4);

		CheckButton editableButton = new CheckButton("editable");
		CheckButton visibleButton = new CheckButton("visible");
		table.attach(editableButton,0,1,9,10,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(visibleButton,0,1,10,11,AttachOptions.FILL,AttachOptions.FILL,4,4);

		ToggleButton toggleButton = new ToggleButton("Toggle this");
		table.attach(toggleButton,0,1,11,12,AttachOptions.FILL,AttachOptions.FILL,4,4);

		Button button = new Button("test events");
		table.attach(button,0,1,12,13,AttachOptions.FILL,AttachOptions.FILL,4,4);

		void bActivate(Button button)
		{
			version(Tango) Stdout("button Activate").newline;
			else printf("button Activate\n");
		}
		void bClicked(Button button)
		{
			version(Tango) Stdout("button Clicked").newline;
			else printf("button Clicked\n");
		}
		void bEnter(Button button)
		{
			version(Tango) Stdout("button Enter").newline;
			else printf("button Enter\n");
		}
		void bLeave(Button button)
		{
			version(Tango) Stdout("button Leave").newline;
			else printf("button Leave\n");
		}
		void bPressed(Button button)
		{
			version(Tango) Stdout("button Pressed").newline;
			else printf("button Pressed\n");
		}
		void bReleased(Button button)
		{
			version(Tango) Stdout("button Released").newline;
			else printf("button Released\n");
		}
		button.addOnActivate(&bActivate);
		button.addOnClicked(&bClicked);
		button.addOnEnter(&bEnter);
		button.addOnLeave(&bLeave);
		button.addOnPressed(&bPressed);
		button.addOnReleased(&bReleased);

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


		notebook.appendPage(new Frame(table,"Buttons"),"Buttons");

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
		VBox mainBox = new VBox(false,3);

		// comboBoxTextEntry from a list of strings
		mainBox.packStart(new Label("String combo"),false,true,0);
		static string[] cbList = ["item 1","item 2","item 3","item 4","item 5","item 6","item 7","item 8","item 9"];
		comboText = new ComboBoxEntry();
		string entry3 = "Combo box text entry 3";
		comboText.appendText("Combo box text entry 1");
		comboText.appendText("Combo box text entry 2");
		comboText.appendText(entry3);
		comboText.appendText("Combo box text entry 4");
		comboText.appendText("Combo box text entry 5");
		comboText.setActive(2);

		ButtonBox actionBox1 = HButtonBox.createActionBox();
		actionBox1.packStart(comboText,false,false,0);

		Button showCombo1 = new Button("ShowCombo", &showTextCombo);
		actionBox1.packStart(showCombo1,false,false,0);

		mainBox.packStart(new Frame(actionBox1, "Text entry ComboBox"),false,false,0);



		// TODO combo with widgets


		// new ComboBox + TreeModel

		ComboStore comboStore = new ComboStore();

		TreeIter iterFirst;	// to set the first active iter
		TreeIter iterChild;
		TreeIter iterTop = comboStore.append(null);
		comboStore.setValue(iterTop, 0, "Paganini" );
		iterFirst = comboStore.append(iterTop);
		comboStore.setValue(iterFirst, 0, "Nicolo" );

		iterTop = comboStore.append(null);
		comboStore.setValue(iterTop, 0, "List" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Franz" );

		iterTop = comboStore.append(null);
		comboStore.setValue(iterTop, 0, "Beethoven" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Ludwic" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Maria" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Van" );

		iterTop = comboStore.append(null);
		comboStore.setValue(iterTop, 0, "Bach" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Johann" );
		iterChild = comboStore.append(iterTop);
		comboStore.setValue(iterChild, 0, "Sebastian" );

		ComboBox treeCombo = new ComboBox(comboStore);
		treeCombo.setWrapWidth(1);
		CellRenderer renderer = new CellRendererText();
		treeCombo.packStart(renderer, true);
		treeCombo.addAttribute(renderer, "text",0);
		
		// TODO something is wrong gettign the ier from the path
		//TreePath path = new TreePath("0,0");
		//comboStore.getIter(iterChild, path);
		//treeCombo.setActiveIter(iterChild);
		// use a previously set iter
		treeCombo.setActiveIter(iterFirst);

		mainBox.packStart(new Frame(treeCombo,"Tree Combo box"),false,true,0);

		simpleCombo = new ComboBox();
		simpleCombo.appendText("Top");
		simpleCombo.appendText("Bottom");
		simpleCombo.appendText("Left");
		simpleCombo.appendText("Right");
		simpleCombo.setActive(0);

		// actions

		ButtonBox actionBox = HButtonBox.createActionBox();
		actionBox.packStart(simpleCombo,false,false,0);

		Button showCombo = new Button("ShowCombo", &showSimpleCombo);
		actionBox.packStart(showCombo,false,false,0);

		mainBox.packStart(new Frame(actionBox, "Simple text list"),false,false,0);

		notebook.appendPage(new Frame(mainBox,"Lists"),"Lists");

	}
	ComboBox simpleCombo;
	ComboBoxEntry comboText;

	void showTextCombo(Button button)
	{
		version(Tango) Stdout("Combo selected text = ")(comboText.getActiveText()).newline;
		else printf("Combo selected text = %.*s\n",comboText.getActiveText());
	}

	void showSimpleCombo(Button button)
	{
		version(Tango) Stdout("Combo selected text = ")(simpleCombo.getActiveText()).newline;
		else printf("Combo selected text = %.*s\n",simpleCombo.getActiveText());
	}

	class NB : Notebook
	{
		void itemActivated(MenuItem menu_item)
		{
			version(Tango) Stdout("NB.activateCallback").newline;
			else printf("NB.activateCallback\n");
		}
		void buttonClicked(Button button)
		{
			setCurrentPage(2);
		}

		void switchPage(Notebook notebook, /*NotebookPage page,*/ guint pageNumber)
		{
			version(Tango) Stdout("new page = ")(pageNumber).newline;
			else printf("new page = %d\n",pageNumber);
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
		nb.setBorderWidth(0);

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
      		Table table = new Table(2,2,true);
			Button left = new Button("Left "~ i);
			left.addOnClicked(&posLeft);
			Button right = new Button("Right "~ i);
			right.addOnClicked(&posRight);
			Button top = new Button("top "~ i);
			top.addOnClicked(&posTop);
			Button bottom = new Button("bottom "~ i);
			bottom.addOnClicked(&posBottom);

			table.attach(top,0,1,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
			table.attach(right,1,2,0,1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
			table.attach(left,0,1,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
			table.attach(bottom,1,2,1,2,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
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

				HBox box = new HBox(false,0);
				box.setBorderWidth(0);
				Button button = new Button("Page " ~ i ~ "\0");
				button.addOnClicked(&nb.buttonClicked);
				button.setBorderWidth(0);
				button.setRelief(ReliefStyle.NONE);
				CheckButton checkButton = new CheckButton();
				checkButton.setBorderWidth(0);
				box.packStart(checkButton,false,false,0);
				box.packStart(button,false,false,0);
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

		Paned mainPaned = new VPaned();
		Paned p0 = mainPaned;
		Button p1;
		Paned p2;

		bool h = true;
		for ( char c='1' ; c<='5' ; c++ )
		{
			p1 = new Button("Pane "~c);
			if ( h ) p2 = new HPaned();
			else p2 = new VPaned();

			p0.add1(p1);
			p0.add2(p2);
			p0 = p2;
			h = !h;
		}

		notebook.appendPage(mainPaned,new Label("Paned"));

	}

	FileChooserDialog fcd;
	FileSelection fs;
	FontSelectionDialog f;
	ColorSelectionDialog d;
	InputDialog id;

	void showFileChooser(Button button)
	{
		string[] a;
		ResponseType[] r;
		a ~= "Lets go!";
		a ~= "Please don't";
		r ~= ResponseType.GTK_RESPONSE_OK;
		r ~= ResponseType.GTK_RESPONSE_CANCEL;
		if ( fcd  is  null )
		{
			fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN, a, r);
		}

		fcd.setSelectMultiple(true);
		fcd.run();
//		writefln("file selected = %s",fcd.getFileName());
//
//		foreach ( int i, string selection ; fs.getSelections())
//		{
//			printf("File(s) selected [%d] %.*s\n",i,selection);
//		}
		fcd.hide();
	}



	void showFileSel(Button button)
	{
		if ( fs  is  null )
		{
			fs = new FileSelection("File Selection");
		}
		//fs.showAll();
		//fs.setMultiple(true);
		fs.run();
		//printf("file selected = %.*s\n",fs.getFileName());
//		string[] selections = fs.getSelections();
//		for ( int i=0 ;i<selections.length ; i++)
//		{
//			printf("File(s) selected [%d] %.*s\n",i,selections[i]);
//		}
		fs.hide();
	}

	void showColor(Button button)
	{
		if ( d  is  null )
		{
			d = new ColorSelectionDialog("Select the color");
		}
		d.run();
		d.hide();
	}

	void showInput(Button button)
	{
		if ( id  is  null )
		{
			id = new InputDialog();
			id.getCloseButton().addOnClicked(&CloseInputDialog);
		}
		id.run();
	}

	void CloseInputDialog(Button button)
	{
		id.hide();
	}

	void showCalendar(Button button)
	{
		Window calWin = new Window("Calendar");
		Calendar calendar = new Calendar();
		//calendar.setTitle("No Title");
		calWin.add(calendar);
		calWin.showAll();
	}

	void showFont(Button button)
	{
		if ( f  is  null )
		{
			f = new FontSelectionDialog("Select the font");
		}
		f.run();
		string fontName = f.getFontName();
		f.hide();
	}

	Button fontButton;

	void testDialogs(Notebook notebook)
	{

		ButtonBox bBox = VButtonBox.createActionBox();

		if ( fcd  is  null )
		{
			fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN);
		}


		Button fileChooser = new Button("File Chooser", &showFileChooser);
		FileChooserButton fcb = new FileChooserButton(fcd);

		Button fileSel = new Button("File Selection", &showFileSel);
		Button color = new Button("Color Dialog", &showColor);
		Button input = new Button("Input Dialog", &showInput);
		Button calendar = new Button("Calendar Dialog", &showCalendar);
		fontButton = new Button("Font Dialog", &showFont);
		//fontButton.modifyFont("[Newspaper][16]");

		bBox.packStart(fileChooser,0,0,10);
		bBox.packStart(fcb,0,0,10);
		bBox.packStart(fileSel,0,0,10);
		bBox.packStart(color,0,0,10);
		bBox.packStart(input,0,0,10);
		bBox.packStart(calendar,0,0,10);
		bBox.packStart(fontButton,0,0,10);

		notebook.appendPage(new Frame(bBox,"Dialogs"),new Label("Dialogs"));

	}

	version(D_Version2)
		mixin("__gshared Button[] threadTestButtons;");
	else
		Button[] threadTestButtons;

	static T1[] t1s;

	class T1 : Thread
	{
		int num;

		this(int num)
		{
			super(&run);
			this.num = num;
		}

		version(DRuntime) void run()
		{
			runCommon();
		}
		else override int run()
		{
			return runCommon();
		}


		int runCommon()
		{
			while(1)
			{
				version(Tango) int buttonNum = Kiss.instance.natural(threadTestButtons.length);
				else version(D_Version2) int buttonNum = uniform(0, threadTestButtons.length);
				else int buttonNum = rand()%threadTestButtons.length;
				Button button = threadTestButtons[buttonNum];

				gdkThreadsEnter();
				button.removeAll();
				version(Tango) button.setLabel( (new Layout!(char))("{}", num));
				else           button.setLabel(std.string.format("%s", num));
				gdkThreadsLeave();
				yield();
			}
			return 1;
		}
	}

	void testThreads(Notebook notebook)
	{

		Table grid = new Table(8,8,0);
		for ( int i = 0 ; i<8 ; i++)
		{
			for ( int j = 0 ; j<8; j++)
			{
				version(Tango) Button button = new Button((new Layout!(char))("{}",(j+8*i)));
				else Button button = new Button(std.string.format("%s",(j+8*i)));
				threadTestButtons ~= button;
				grid.attach( button,
							i,i+1,
							j,j+1,
							AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);

				t1s ~= new T1(j+8*i);
			}
		}

		void stop(Button button)
		{
			foreach ( T1 t ; t1s )
			{
				version(Tango)
				{
					if ( t.isRunning() )
					{
						t.sleep(100.0);
					}
				}
				else version(D_Version2)
				{
					if ( t.isRunning() )
					{
						t.sleep(100);
					}
				}
				else switch( t.getState() )
				{
					case Thread.TS.RUNNING:
						t.pause();
						break;

					default:
						break;
				}
			}
		}

		void go(Button button)
		{
			foreach ( T1 t ; t1s )
			{
				version(DRuntime)
				{
					if ( !t.isRunning() )
					{
						t.start();
					}
				}
				else switch( t.getState() )
				{
					case Thread.TS.INITIAL:
						t.start();
						break;

					default:
						t.resume();
						break;
				}
			}
		}

		VBox vbox = new VBox(false, 2);
		vbox.packStart(grid, true, true,2);
		ButtonBox actions = HButtonBox.createActionBox();

		Button button = new Button(StockID.STOP, &stop);
		actions.packStart(button, false, false, 7);
		button = new Button(StockID.OK, &go);
		actions.packStart(button, false, false, 7);

		vbox.packStart(actions, false, false, 2);

		notebook.appendPage(vbox,new Label("Threads"));
	}

	void testViewport(Notebook notebook)
	{

		Table grid = new Table(21,21,0);
		for ( int i = 0 ; i<21 ; i++)
		{
			for ( int j = 0 ; j<21; j++)
			{
				if ( (i == j) || (i+j==20) || (i==10) || (j==10))
				{
					grid.attach(
						new Button("Button"),
							i,i+1,
							j,j+1,
							AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
				}
			}
		}

		ScrolledWindow sw = new ScrolledWindow(null,null);
		sw.addWithViewport(grid);
		notebook.appendPage(sw,new Label("Viewport"));
	}

	void testSpinButton(Notebook notebook)
	{
		Table table = new Table(2,1,false);

		SpinButton spin = new SpinButton(new Adjustment(1.0, 0.0, 100.0, 1.0, 10.0, 0),1,0);
		table.attach(new Label("Spin this:"),0,1,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(spin,1,2,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);

		notebook.appendPage(table,"Spin Buttons");

	}

	void testList(Notebook notebook)
	{
		debug(Tango) Stdout("TestWindow.testList 1").newline;

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

		TreeIter iterTop = testListStore.createIter();

		static int [3] cols = [0,1,2];
		string[] vals;
		vals ~= "Antonio";
		vals ~= "Canada";
		vals ~= "Ontario";
		testListStore.set(iterTop,cols,vals);

		testListStore.append(iterTop);
		string[] vals1;
		vals1 ~= "John Reimer";
		vals1 ~= "Canada";
		vals1 ~= "BC";
		testListStore.set(iterTop,cols,vals1);

		testListStore.append(iterTop);
		string[] vals2;
		vals2 ~= "Friend of GtkD 2";
		vals2 ~= "Poland";
		vals2 ~= "Torun";
		testListStore.set(iterTop,cols,vals2);

		testListStore.append(iterTop);
		string[] vals3;
		vals3 ~= "Friend of GtkD 3";
		vals3 ~= "Norway";
		vals3 ~= "Norway";
		testListStore.set(iterTop,cols,vals3);

		TreeView treeView = new TreeView(testListStore);
		treeView.setHeadersClickable(true);
		treeView.setRulesHint(true);

		//CellRendererText cellText = new CellRendererText();
		TreeViewColumn column = new TreeViewColumn("Author",new CellRendererText(),"text", 0);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(0);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Country",new CellRendererText(),"text", 1);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(1);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Province",new CellRendererText(),"text", 2);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnId(2);
		column.setSortIndicator(true);

		//notebook.appendPage(treeView,"ListView");
		ScrolledWindow sw = new ScrolledWindow(null,null);
		sw.addWithViewport(treeView);
		notebook.appendPage(sw,"ListView");

		debug(Tango) Stdout("TestWindow.testList END").newline;
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
//			printf("testDelete count = %d\n\0",l*i);
//		}

	}

	void gtkDemo(Notebook notebook)
	{
		debug(Tango) Stdout("TestWindow.gtkDemo 1").newline;
		void showTTextView(Button button)
		{
			new TTextView();
		}

		debug(Tango) Stdout("TestWindow.gtkDemo 2").newline;
		void showTEditableCells(Button button)
		{
		//	new TEditableCells();
		}

		debug(Tango) Stdout("TestWindow.gtkDemo 3").newline;
		ButtonBox vBBox = VButtonBox.createActionBox();

		debug(Tango) Stdout("TestWindow.gtkDemo 4").newline;
		Button button = new Button("Text View");
		button.addOnClicked(&showTTextView);
		vBBox.packStart(button,false,false,4);

		debug(Tango) Stdout("TestWindow.gtkDemo 5").newline;
		button = new Button("Editable Cells");
		button.addOnClicked(&showTEditableCells);
		vBBox.packStart(button,false,false,4);

		debug(Tango) Stdout("TestWindow.gtkDemo 6").newline;
		notebook.appendPage(vBBox,"gtk-demo");

		debug(Tango) Stdout("TestWindow.gtkDemo 7").newline;

	}

}

private import gtkc.Loader;

void main(string[] args)
{
	Linker.dumpLoadLibraries();
	Linker.dumpFailedLoads();

	version(Win32)
	{
		// todo threads are still broken on windows...
		Main.init(args);
	}
	else
	{
		Main.initMultiThread(args);
	}

	TestWindow window = new TestWindow();

	debug(1)writefln("before Main.run");
	Main.run();
	debug(1)writefln("after Main.run");
}
