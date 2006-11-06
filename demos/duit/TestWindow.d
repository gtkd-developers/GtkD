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

module duit.TestWindow;

private import gtk.Version;
private import gtk.Table;


private import gtk.typedefs;
private import gtk.Duit;
private import gtk.MainWindow;
private import gtk.Adjustment;
private import duit.TestEntries;

//private import duit.DUITree;
private import duit.TestStock;
private import duit.TestDrawingArea;
private import duit.TestScales;
private import duit.TestText;
//private import duit.TestTree;
private import duit.TestTreeView;
private import duit.TestTreeView1;
private import duit.TestImage;
private import duit.TestAspectFrame;
private import duit.TestIdle;
private import duit.TTextView;
//private import duit.TEditableCells;
	
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
	

private		import std.gc;
private import glib.ListSG;
	
private import gtk.Label;
private import glib.ListG;
private import gtk.ComboBoxEntry;
	private import gtk.Paned;
	private import gtk.HPaned;
	private import gtk.VPaned;
	
private import gtk.Calendar;
private import std.stdio;
private import gtk.VButtonBox;
private import gtk.FileChooserButton;
private import gdk.Drawable;

private import gtk.AboutDialog;

private import gtk.TreeStore;
private import gdk.Pixbuf;
private import gtk.ComboBox;

priv ate import gtk.TreePath;
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
										"Are you sure you want' to exit these DUITests?");
		int responce = d.run();
		if ( responce == ResponseType.GTK_RESPONSE_YES )
		{
			Duit.exit(0);
		}
		d.destroy();
		return true;
	}

	void anyButtonExits(Button button)
	{
			Duit.exit(0);
	}
	
	void popupAbout(MenuItem item)
	{
		MessageDialog d = new MessageDialog(
				this, 
				GtkDialogFlags.MODAL,
				MessageType.INFO,
				ButtonsType.OK,
				"DUI D (graphic) User Interface\n"
				"an implementation through GTK+\n"
				"by Antonio Monteiro.\n"
				"DUI is released under the LGPL license\n"
				"\n"
				"Send comments and suggestions to duitoolkit@yahoo.ca\n"
				"or go to the yahoo group\n"
				"http://groups.yahoo.com/group/duitoolkit\n"
				"(Group email: duitoolkit@yahoogroups.com)\n"
				"\n"
				"See detailed information at DUI home page\n"
				"http://ca.geocities.com/duitoolkit\n"
				);
		d.run();
		d.destroy();
	}
	
	
	this()
	{
		debug(1)
		{
			printf("instantiating TestWindow\n");
		}
		super("Duit tests");
		setup();
		showAll();
		
		char[] versionCompare = Version.checkVersion(2,8,0);
		if ( versionCompare.length > 0 )
		{
			MessageDialog d = new MessageDialog(this, 
										GtkDialogFlags.MODAL,
										MessageType.WARNING,
										ButtonsType.OK,
										"Duit : Gtk+ version missmatch\n" ~ versionCompare ~
										"\nYou might run into problems!"
										"\n\nPres OK to continue");
			d.run();
			d.destroy();
		}

	}
	
	void setup()
	{
		
		//Frame.defaultBorder = 7;

		VBox mainBox = new VBox(false,3);
		//Table table = new Table(1,5,false);
		//table.attach(getMenuBar(),0,1,0,1,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);		// adding to the window
		mainBox.packStart(getMenuBar(),false,false,0);
		//table.attach(getToolbar(),0,1,1,2,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);
		mainBox.packStart(getToolbar(),false,false,0);

		Notebook notebook = setNotebook();
		notebook.setBorderWidth(10);
		//table.attach(notebook,0,1,2,3,AttachOptions.EXPAND,AttachOptions.FILL,4,4);
		mainBox.packStart(notebook,true,true,0);
		
		Button cancelButton = new Button(StockID.CANCEL, &anyButtonExits);
		Button exitButton = new Button(StockID.QUIT, &anyButtonExits);
		Button quitButton = new Button(StockID.OK, &anyButtonExits);
		
		ButtonBox bBox = HButtonBox.createActionBox();
		
		bBox.packEnd(exitButton,0,0,10);
		bBox.packEnd(cancelButton,0,0,10);
		bBox.packEnd(quitButton,0,0,10);
		//table.attach(bBox,0,1,3,4,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);
		mainBox.packStart(bBox,false,false,0);
		
		Statusbar statusbar = new Statusbar();
		
		//table.attach(statusbar,0,1,4,5,AttachOptions.EXPAND,AttachOptions.EXPAND,0,0);
		//add(table);
		//mainBox.packStart(table,true,true,0);
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
		notebook.appendPage(new TestScales,"Scales");
		testSpinButton(notebook);
		notebook.appendPage(new Label("Deprecated,\nuse TreeView\ninstead"),"Tree");
		notebook.appendPage(new TestTreeView,"TreeView");
		notebook.appendPage(new TestTreeView1,"TreeView 1");
		testList(notebook);
		notebook.appendPage(new Frame(new TestDrawingArea,"Drawing Area"),"Drawing");
		notebook.appendPage(new TestText,"Text");
		notebook.appendPage(new TestImage(this),"Image");
		notebook.appendPage(new TestAspectFrame(),"Aspect Frame");
		notebook.appendPage(new TestIdle(),"Idle");
		gtkDemo(notebook);
		
	}

	MenuBar getMenuBar()
	{
		MenuBar menuBar = new MenuBar();

		Menu menu = menuBar.append("_File");;
		menu.append(new MenuItem(&onMenuActivate, "_New","file.new"));
		menu.append(new MenuItem(&onMenuActivate, "_Open","file.open"));
		menu.append(new MenuItem(&onMenuActivate, "_Close","file.close"));
		menu.append(new MenuItem(&onMenuActivate, "E_xit","file.exit"));
		
		
		menu = menuBar.append("_Edit");
		menu.append(new MenuItem(&onMenuActivate,"_Find","edit.find"));
		menu.append(new MenuItem(&onMenuActivate,"_Search","edit.search"));

		menu = menuBar.append("_Help");
		menu.append(new MenuItem(&onMenuActivate,"_About","help.about"));
		
		return menuBar;
	}

	class DuitAbout : AboutDialog
	{
		this()
		{
			char** names = new char*[2];
			int i = 0;
			names[i++] = cast(char*)"Antonio Monteiro (binding/wrapping/proxying/decorating for D)";
			names[i++] = cast(char*)"www.gtk.org (base C library)";
			setAuthors(names);
			setDocumenters(names);
			setArtists(names);
			setLicense("License is LGPL");
			setWebsite("http://lisdev.com");
		}
	}
	
	void onMenuActivate(MenuItem menuItem)
	{
		char[] action = menuItem.getAction();
		switch( action )
		{
			case "help.about":
				(new AboutDialog()).showAll();
//				MessageDialog d = new MessageDialog(
//						this,
//						GtkDialogFlags.MODAL,
//						MessageType.INFO,
//						ButtonsType.OK,
//						"DUI D (graphic) User Interface\n"
//						"an implementation through GTK+\n"
//						"by Antonio Monteiro.\n"
//						"DUI is released under the LGPL license\n"
//						"\n"
//						"Send comments and suggestions to duitoolkit@yahoo.ca\n"
//						"or go to the yahoo group\n"
//						"http://groups.yahoo.com/group/duitoolkit\n"
//						"(Group email: duitoolkit@yahoogroups.com)\n"
//						"\n"
//						"See detailed information at DUI home page\n"
//						"http://ca.geocities.com/duitoolkit\n"
//						);
//				d.run();
//				d.destroy();
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

	Widget getToolbar()
	{
		HandleBox handleBox = new HandleBox();
		Toolbar toolbar = new Toolbar();
		toolbar.appendWidget(new Button(StockID.OPEN, true),"Toolbar button 1","Private text 1");
		toolbar.appendWidget(new Button(StockID.CLOSE, true),"Toolbar button 2","Private text 2");
		toolbar.appendSpace();
		toolbar.appendWidget(new Button(StockID.SAVE, true),"Toolbar button 3","Private text 3");
		toolbar.appendWidget(new Button(StockID.SAVE_AS, true),"Toolbar button 4","Private text 4");
		
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
		std.gc.fullCollect();
		//writefln("exiting Notebook switch to page %s", pageNumber);
	}
	
	//private import dui.EventBox;
	
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
			printf("button Activate\n");
		}
		void bClicked(Button button)
		{
			printf("button Clicked\n");
		}
		void bEnter(Button button)
		{
			printf("button Enter\n");
		}
		void bLeave(Button button)
		{
			printf("button Leave\n");
		}
		void bPressed(Button button)
		{
			printf("button Pressed\n");
		}
		void bReleased(Button button)
		{
			printf("button Released\n");
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
			columns ~= 16<<2;
			columns ~= 16<<2;
			super(columns);
		}
		
	}


	void testLists(Notebook notebook)
	{
		VBox mainBox = new VBox(false,3);
		
		// comboBoxTextEntry from a list of strings
		mainBox.packStart(new Label("String combo"),false,true,0);
		static char[][] cbList = ["item 1","item 2","item 3","item 4","item 5","item 6","item 7","item 8","item 9"];
		comboText = new ComboBoxEntry();
		char[] entry3 = "Combo box text entry 3";
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
		printf("Combo selected text = %.*s\n",comboText.getActiveText());
	}

	void showSimpleCombo(Button button)
	{
		printf("Combo selected text = %.*s\n",simpleCombo.getActiveText());
	}

	class NB : Notebook
	{
		void itemActivated(MenuItem menu_item)
		{
			printf("NB.activateCallback\n");
		}
		void buttonClicked(Button button)
		{
			setCurrentPage(2);
		}
		
		void switchPage(Notebook notebook, /*NotebookPage page,*/ guint pageNumber)
		{
			printf("new page = %d\n",pageNumber);
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

		bit h = true;
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
		char[][] a;
		ResponseType[] r;
		a ~= "Lets go!";
		a ~= "Please don't";
		r ~= ResponseType.GTK_RESPONSE_OK;
		r ~= ResponseType.GTK_RESPONSE_CANCEL;
		if ( fcd  is  null )
		{
			fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN, a, r);
		}
		
		fcd.getFileChooser().setSelectMultiple(true);
		fcd.run();
//		writefln("file selected = %s",fcd.getFileName());
//
//		foreach ( int i, char[] selection ; fs.getSelections())
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
//		char[][] selections = fs.getSelections();
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
		}
		id.run();
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
		char[] fontName = f.getFontName();
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
		
		SpinButton spin = new SpinButton(new Adjustment(1.0, 0.0, 100.0, 1.0, 10.0, 10.0),1,0);
		table.attach(new Label("Sping this:"),0,1,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		table.attach(spin,1,2,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		
		notebook.appendPage(table,"Spin Buttons");
		
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

		TreeIter iterTop = testListStore.createIter();

		static int [3] cols = [0,1,2];
		char[][] vals;
		vals ~= "Antonio";
		vals ~= "Canada";
		vals ~= "Ontario";
		testListStore.set(iterTop,cols,vals);
		
		testListStore.append(iterTop);
		char[][] vals1;
		vals1 ~= "John Reimer";
		vals1 ~= "Canada";
		vals1 ~= "BC";
		testListStore.set(iterTop,cols,vals1);
		
		testListStore.append(iterTop);
		char[][] vals2;
		vals2 ~= "Friend of Duit 2";
		vals2 ~= "Poland";
		vals2 ~= "Torun";
		testListStore.set(iterTop,cols,vals2);

		testListStore.append(iterTop);
		char[][] vals3;
		vals3 ~= "Friend of Duit 3";
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
		void showTTextView(Button button)
		{
			new TTextView();
		}
		
		void showTEditableCells(Button button)
		{
		//	new TEditableCells();
		}
		
		ButtonBox vBBox = VButtonBox.createActionBox();

		Button button = new Button("Text View");
		button.addOnClicked(&showTTextView);
		vBBox.packStart(button,false,false,4);
		
		button = new Button("Editable Cells");
		button.addOnClicked(&showTEditableCells);
		vBBox.packStart(button,false,false,4);
		
		notebook.appendPage(vBBox,"gtk-demo");
		
	}
	
}

private import lib.Loader;

void main(char[][] args)
{

	Linker.dumpFailedLoads();
	
	Duit.init(args);

	TestWindow window = new TestWindow();

	Duit.main();
}
