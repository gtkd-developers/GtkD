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

module test.TestWindow;

private import dui.DUI;
private import dui.MainWindow;

private import test.DUITree;
private import test.TestEntries;
private import test.TestStock;
private import test.TestDrawingArea;
private import test.TestScales;
private import test.TestText;
private import test.TestTree;
private import test.TestTreeView;
private import test.TestTreeView1;
private import test.TestImage;
private import test.TestAspectFrame;
private import test.TestTimeout;
private import test.TTextView;
private import test.TEditableCells;
	
private import dui.MenuItem;
private import event.MenuItemListener;
private import event.Event;
private import dui.Widget;
private import dui.MenuBar;
private import dui.Notebook;
private import dui.ComboBoxTextEntry;
private import def.Constants;
private import def.Types;
private import dui.FileChooserDialog;
private import dui.FileSelection;
private import dui.FontSelectionDialog;
private import dui.ColorSelectionDialog;
private import dui.InputDialog;
private import dui.Button;
private import dui.VBox;
private import dui.MessageDialog;
private import dui.Frame;
private import dui.DUIObject;
private import dui.HButtonBox;
private import dui.Statusbar;
private import dui.Menu;
private import dui.HandleBox;
private import dui.Toolbar;
private import dui.RadioButton;
private import dui.CheckButton;
private import dui.ToggleButton;
private import dui.ListItem;
private import dui.HBox;
private import dui.Arrow;
private import dui.List;
private import dui.OptionMenu;
private import dui.ButtonBox;
private import dui.Calendar;
private import dui.VButtonBox;
private import dui.SpinButton;
private import dui.ListStore;
private import dui.TreeIter;
private import dui.TreeView;
private import dui.TreeViewColumn;
private import dui.CellRendererText;
private import dui.SListG;
private import ddi.Drawable;
private import dui.Window;

private import dool.String;

/**
 * This tests the DUI widgets
 */


class TestWindow : MainWindow
{
	/**
	 * Executed when the user tries to close the window
	 * @return true to refuse to close the window
	 */
	public: bit windowDelete(Window window, Event event)
	{
		
		debug(events) printf("TestWindow.widgetDelete : this and widget to delete %X %X\n",this,window);
		MessageDialog d = new MessageDialog(window, 0,
										DialogType.QUESTION,DialogButtons.YES_NO,
										"Are you sure you want' to exit these DUITests?");
		int responce = d.run();
		if ( responce == Response.YES )
		{
			DUI dui = DUI.dui();
			dui.stop();
		}
		d.destroy();
		return true;
	}

	void anyButtonExits()
	{
		DUI.dui.stop();
	}
	
	void popupAbout(MenuItem item)
	{
		MessageDialog d = new MessageDialog(
				this, 0,
				DialogType.INFO,DialogButtons.OK,
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
	
	class MenuListener : MenuItemListener
	{
		Window window;
		this(Window window)
		{
			this.window = window;
		}
		void activateCallback(MenuItem menuItem, String action)
		{
			switch(action.toString())
			{
				case "help.about":
					MessageDialog d = new MessageDialog(
							window, 0,
							DialogType.INFO,DialogButtons.OK,
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
				break;
				default:
					MessageDialog d = new MessageDialog(window, 0,
					DialogType.INFO,DialogButtons.OK,"You pressed "~action.toString());
					d.run();
					d.destroy();
				break;
			}
		}
		void activateItemCallback(MenuItem menuItem, String action)
		{
			printf("TestWindow.MenuListener.ctivateItemCallback\n");
		}

	}

	this(DUI dui)
	{
		debug(1)
		{
			printf("instantiating TestWindow\n");
		}
		super(new String("DUI tests"));
		setup();
		show();
		
		String versionCompare = DUI.gtkCheckVersion();
		if ( versionCompare.length > 0 )
		{
			MessageDialog d = new MessageDialog(this, 0,
										DialogType.WARNING,DialogButtons.OK,
										"DUI : GTK+ version missmatch\n" ~ versionCompare.toString() ~
										"\nYou might run into problems!"
										"\n\nPres OK to continue");
			d.run();
			d.destroy();
		}

	}

	void setup()
	{
		
		Frame.defaultBorder = 7;

		VBox mainBox = new VBox(false,3);
		Table table = new Table(1,5,false);
		//table.attach(getMenuBar(),0,1,0,1,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);		// adding to the window
		mainBox.packStart(getMenuBar(),false,false,0);
		//table.attach(getToolbar(),0,1,1,2,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);
		mainBox.packStart(getToolbar(),false,false,0);

		Notebook notebook = setNotebook();
		notebook.setBorderWidth(10);
		//table.attach(notebook,0,1,2,3,AttachOptions.EXPAND,AttachOptions.FILL,4,4);
		mainBox.packStart(notebook,true,true,0);
		
		Button cancelButton = new Button(Stock.CANCEL, &anyButtonExits);
		Button exitButton = new Button(Stock.QUIT, &anyButtonExits);
		Button quitButton = new Button(Stock.OK, &anyButtonExits);
		
		HButtonBox bBox = HButtonBox.createActionBox();
		
		bBox.packEnd(exitButton,0,0,10);
		bBox.packEnd(cancelButton,0,0,10);
		bBox.packEnd(quitButton,0,0,10);
		//table.attach(bBox,0,1,3,4,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);
		mainBox.packStart(bBox,false,false,0);
		
		Statusbar statusbar = new Statusbar();
		
		//table.attach(statusbar,0,1,4,5,AttachOptions.EXPAND,AttachOptions.SHRINK,0,0);
		mainBox.packStart(statusbar,false,false,0);
		//add(table);
		add(mainBox);
		notebook.appendPage(new TestEntries,"Entry");
		testButtons(notebook);
		notebook.appendPage(new TestStock,"Stock");
		testLists(notebook);
		testNotebook(notebook);
		testPaned(notebook);
		testDialogs(notebook);
		testViewport(notebook);
		notebook.appendPage(new TestScales,"Scales");
		testSpinButton(notebook);
		printf("TestWindow.setup()... line 256\n");
		notebook.appendPage(new TestTree,"Tree");
		printf("TestWindow.setup()... line 258\n");
		notebook.appendPage(new TestTreeView,"TreeView");
		printf("TestWindow.setup()... line 260\n");
		notebook.appendPage(new TestTreeView1,"TreeView 1");
		printf("TestWindow.setup()... line 262\n");
		testList(notebook);
		notebook.appendPage(new Frame(new TestDrawingArea,"Drawing Area"),"Drawing");
		notebook.appendPage(new TestText,"Text");
		notebook.appendPage(new TestImage,"Image");
		notebook.appendPage(new TestAspectFrame(),"Aspect Frame");
		//notebook.appendPage(new TestTimeout(),"Idle");
		gtkDemo(notebook);
		
	}

	MenuListener ml;
	
	MenuBar getMenuBar()
	{
		ml = new MenuListener(this);
		MenuBar menuBar = new MenuBar();

		Menu menu = menuBar.append("_File");;
		menu.append(new MenuItem(ml, "_New","file.new"));
		menu.append(new MenuItem(ml, "_Open","file.open"));
		menu.append(new MenuItem(ml, "_Close","file.close"));
		menu.append(new MenuItem(ml, "E_xit","file.exit"));
		
		
		menu = menuBar.append("_Edit");
		menu.append(new MenuItem(ml,"_Find","edit.find"));
		menu.append(new MenuItem(ml,"_Search","edit.search"));

		menu = menuBar.append("_Help");
		menu.append(new MenuItem(ml,"_About","help.about"));
		
		return menuBar;
	}

	Widget getToolbar()
	{
		HandleBox handleBox = new HandleBox();
		Toolbar toolbar = new Toolbar();
		toolbar.appendWidget(new Button(Stock.OPEN),"Toolbar button 1","Private text 1");
		toolbar.appendWidget(new Button(Stock.CLOSE),"Toolbar button 2","Private text 2");
		toolbar.appendSpace();
		toolbar.appendWidget(new Button(Stock.SAVE),"Toolbar button 3","Private text 3");
		toolbar.appendWidget(new Button(Stock.SAVE_AS),"Toolbar button 4","Private text 4");
		
		handleBox.add(toolbar);
		
		return handleBox;
		
	}

	Notebook setNotebook()
	{	
		Notebook notebook = new Notebook();
		notebook.setTabPos(PositionType.LEFT);
		return notebook;
	}

	void testButtons(Notebook notebook)
	{

		Table table = new Table(2,12,0);

		RadioButton radio1Button = new RadioButton(cast(SListG)null,"Option 1");
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
		void bClicked()
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
		button.addOnButtonActivate(&bActivate);
		button.addOnClick(&bClicked);
		button.addOnButtonEnter(&bEnter);
		button.addOnButtonLeave(&bLeave);
		button.addOnButtonPressed(&bPressed);
		button.addOnButtonReleased(&bReleased);
		
		//for ( ShadowType shadow = 0; shadow<=ShadowType.max ; shadow ++)
		//{
		//	for ( DirectionType direction = 0 ; direction<=DirectionType.max ; direction++)
		//	{
		//		table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		//		table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		//		table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		//		table.attach(new Arrow(direction,shadow),direction+1,direction+2,shadow,shadow+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		//	}
		//}
		
		notebook.appendPage(new Frame(table,"Buttons"),"Buttons");

	}
	
	void testLists(Notebook notebook)
	{
		VBox mainBox = new VBox(false,3);
		
		// comboBoxTextEntry from a list of strings
		mainBox.packStart(new Label("String combo"),false,true,0);
		static char[][] cbList = ["item 1","item 2","item 3","item 4","item 5","item 6","item 7","item 8","item 9"];
		comboText = new ComboBoxTextEntry();
		String entry3 = new String("Combo box text entry 3");
		comboText.appendText("Combo box text entry 1");
		comboText.appendText("Combo box text entry 2");
		comboText.appendText(entry3);
		comboText.appendText("Combo box text entry 4");
		comboText.appendText("Combo box text entry 5");
		comboText.setActive(entry3);
		mainBox.packStart(comboText,false,false,0);

		// combo with widgets
		// TODO with the new ComboBox + TreeModel
		mainBox.packStart(new Label("Items combo"),false,true,0);
		mainBox.packStart(new Label("TODO with the new ComboBox + TreeModel"),false,true,0);

//printf("TestWindow.testLists 2\n");
//		ListItem getLItem(int number)
//		{
//			ListItem lItem = new ListItem();
//			HBox hBox = new HBox(false,3);
//			lItem.add(hBox);
//			Arrow arrow = new Arrow(ArrowType.RIGHT, ShadowType.OUT);
//			hBox.packStart(arrow,false,false,0);
//			Label label = new Label(new String("Item number for this item = ") ~ number);
//			hBox.packStart(label,false,false,0);
//			return lItem;
//		}
//printf("TestWindow.testLists 3\n");
//		Combo combo1 = new Combo();
//		combo1.addItem(getLItem(1),"1st item");
//		combo1.addItem(getLItem(2),"2nd item");
//		combo1.addItem(getLItem(3),"3rd item");
//printf("TestWindow.testLists 4\n");
//		for ( int li=4 ; li<=100 ; li++)
//		{
//			combo1.addItem(getLItem(li),(new String(li))~"th item");
//		}
//		combo1.setText("26th item");
//
//		mainBox.packStart(combo1,false,true,0);

		// list
		mainBox.packStart(new Label("List"),false,true,0);
		
		List list = new List();
		for (int i =1 ; i<=25 ; i++)
		{
			ListItem li = new ListItem();
			HBox liBox = new HBox(false,3);
			liBox.packStart(new Button(new String("list button ") ~ i),false,true,0);
			liBox.packStart(new CheckButton("check"),false,true,0);
			li.add(liBox);
			list.add(li);
		}
		ScrolledWindow sw = new ScrolledWindow();		
		sw.addWithViewport(list);
		sw.setSizeRequest(80,180);
		sw.setPolicy(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
		mainBox.packStart(sw,true,true,0);

		// option menu
		mainBox.packStart(new Label("Option menu"),false,true,0);
		
		OptionMenu opt = new OptionMenu();
		Menu menu = new Menu();

		MenuItem item = new MenuItem("Top");
		menu.append(item);
		item =new MenuItem("Bottom");
		menu.append(item);
		item = new MenuItem("Left");
		menu.append(item);
		item = new MenuItem("Right");
		menu.append(item);
		opt.setMenu(menu);
		mainBox.packStart(opt,false,false,0);
		
		// actions
		
		ButtonBox actionBox = HButtonBox.createActionBox();
		
		Button showCombo = new Button("ShowCombo", &showCombo);
		actionBox.packStart(showCombo,false,false,0);
		
		mainBox.packStart(actionBox,false,false,0);
		
		notebook.appendPage(new Frame(mainBox,"Lists"),"Lists");
		
	}

	ComboBoxTextEntry comboText;
	
	void showCombo()
	{
		printf("Combo selected text = %s\n",comboText.getText().toStringz());
	}

	class NB : Notebook
	{
		void itemActivated(MenuItem menu_item)
		{
			printf("NB.activateCallback\n");
		}
		void buttonClicked()
		{
			setCurrentPage(2);
		}
		
		void switchPage(Notebook notebook, /*NotebookPage page,*/ guint pageNumber)
		{
			printf("new page = %d\n",pageNumber);
		}
	}
		

	NB nb;

	void posLeft()
	{
		nb.setTabPos(PositionType.LEFT);
	}
	void posRight()
	{
		nb.setTabPos(PositionType.RIGHT);
	}
	void posTop()
	{
		nb.setTabPos(PositionType.TOP);
	}
	void posBottom()
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
      	nb.popupEnable(true);
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
      	
		
		notebook.appendPage(nb,"Notebook");
		
      	for( uint i = 1 ; i<5 ; i++ )
      	{
      		Table table = new Table(2,2,true);
			Button left = new Button(new String("Left ")~ i, &posLeft);
			Button right = new Button(new String("Right) ")~ i, &posRight);
			Button top = new Button(new String("top ")~ i, &posTop);
			Button bottom = new Button(new String("bottom ")~ i, &posBottom);

			table.attach(top);
			table.attach(right);
			table.attach(left);
			table.attach(bottom);
      		if ( i == 3 )
			{

				MenuItem menuItem = new MenuItem("menu page 3",&nb.itemActivated);
		
				Menu menu = new Menu();
				menu.append(new MenuItem("page 3.1",&nb.itemActivated));
				menu.append(new MenuItem("page 3.2",&nb.itemActivated));
				menu.append(new MenuItem("page 3.3",&nb.itemActivated));
				menu.append(new MenuItem("page 3.4",&nb.itemActivated));

				menuItem.setSubmenu(menu);
				
				HBox box = new HBox(false,0);
				box.setBorderWidth(0);
				Button button = new Button(new String("Page ") ~ i ~ "\0", &nb.buttonClicked);
				button.setBorderWidth(0);
				button.setRelief(ReliefStyle.NONE);
				CheckButton checkButton = new CheckButton();
				checkButton.setBorderWidth(0);
				box.packStart(checkButton,false,false,0);
				box.packStart(button,false,false,0);
				nb.appendPageMenu(table,box,menuItem);
				//nb.appendPage(table,box);
			}
			else
			{
				nb.appendPage(table,new String("Page ") ~ i ~ "\0");
			}
      	}
		nb.addOnSwitchPage(&nb.switchPage);
	}
	
	void testPaned(Notebook notebook)
	{

		HPaned hPaned = new HPaned();
		VPaned vPaned = new VPaned();
		
		hPaned.add1(vPaned);
		hPaned.add2(new Button("H Paned 2\0"));
		
		vPaned.add1(new Button("V Paned 1\0"));
		vPaned.add2(new Button("V Paned 2\0"));
		
		notebook.appendPage(hPaned,"Paned");
	}

	FileChooserDialog fcd;
	FileSelection fs;
	FontSelectionDialog f;
	ColorSelectionDialog d;
	InputDialog id;
	
	void showFileChooser()
	{
		String[] a;
		Response[] r;
		a ~= new String("OK");
		a ~= new String("Maybe");
		a ~= new String("Cancel");
		r ~= Response.OK;
		r ~= Response.OK;
		r ~= Response.CANCEL;
		if ( fcd === null )
		{
			fcd = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN, a , r);
		}
		
		//fs.showAll();
		//fs.setMultiple(true);
		fcd.run();
		//printf("file selected = %.*s\n",fcd.getFileName());
		//char [][] selections = fs.getSelections();
		//for ( int i=0 ;i<selections.length ; i++)
		//{
		//	printf("File(s) selected [%d] %.*s\n",i,selections[i]);
		//}
		fcd.hide();
	}

	

	void showFileSel()
	{
		if ( fs === null )
		{
			fs = new FileSelection("File Selection");
		}
		//fs.showAll();
		fs.setMultiple(true);
		fs.run();
		printf("file selected = %.*s\n",fs.getFileName());
		String[] selections = fs.getSelections();
		for ( int i=0 ;i<selections.length ; i++)
		{
			printf("File(s) selected [%d] %.*s\n",i,selections[i].toString());
		}
		fs.hide();
	}

	void showColor()
	{
		if ( d === null )
		{
			d = new ColorSelectionDialog("Select the color");
		}
		d.run();
		d.hide();
	}

	void showInput()	
	{
		if ( id === null )
		{
			id = new InputDialog();
		}
		id.run();
		id.hide();
	}
	void showCalendar()
	{
		Window calWin = new Window("Calendar");
		Calendar calendar = new Calendar("No Title");
		calWin.add(calendar);
		calWin.show();
	}
	
	void showFont()
	{
		if ( f === null )
		{
			f = new FontSelectionDialog("Select the font");
		}
		f.run();
		String fontName = f.getFontName();
		printf("TestWindow.showFont fontName = %.*s\n", fontName.toString());
		f.hide();
	}
	
	Button fontButton;

	void testDialogs(Notebook notebook)
	{

		VButtonBox bBox = VButtonBox.createActionBox();
		
		Button fileChooser = new Button("File Chooser", &showFileChooser);
		Button fileSel = new Button("File Selection", &showFileSel);
		Button color = new Button("Color Dialog", &showColor);
		Button input = new Button("Input Dialog", &showInput);
		Button calendar = new Button("Calendar Dialog", &showCalendar);
		fontButton = new Button("Font Dialog", &showFont);
		fontButton.modifyFont("[Newspaper][[16]");

		
		
		bBox.packStart(fileChooser,0,0,10);
		bBox.packStart(fileSel,0,0,10);
		bBox.packStart(color,0,0,10);
		bBox.packStart(input,0,0,10);
		bBox.packStart(calendar,0,0,10);
		bBox.packStart(fontButton,0,0,10);
		
		notebook.appendPage(new Frame(bBox,"Dialogs"),"Dialogs");
		
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
					grid.attach(new Button("Button"),i,i+1,j,j+1,AttachOptions.SHRINK,AttachOptions.SHRINK,4,4);
				}
			}
		}
			
		ScrolledWindow sw = new ScrolledWindow(null,null);
		sw.addWithViewport(grid);
		notebook.appendPage(sw,"Viewport");
	}
	
	void testSpinButton(Notebook notebook)
	{
		Table table = new Table(2,1,false);
		
		SpinButton spin = new SpinButton(new Adjustment(1, 0, 100, 1, 10, 10),1,0);
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
				static GType [3] columns = [DUIType.STRING,DUIType.STRING,DUIType.STRING]; 
				super(columns);
			}
		}
		
		TestListStore testListStore = new TestListStore();

		TreeIter iterTop = testListStore.createIter();

		static int [3] cols = [0,1,2];
		void*[] vals;
		vals.length = 3;
		vals[0] = (new String("a list 1,1")).toStringz();
		vals[1] = (new String("b list 1,2")).toStringz();
		vals[2] = (new String("c list 1,3")).toStringz();
		testListStore.set(iterTop,cols,vals);
		
		testListStore.append(iterTop);
		void*[] vals1;
		vals1.length = 3;
		vals1[0] = (new String("c list 2,1")).toStringz();
		vals1[1] = (new String("b list 2,2")).toStringz();
		vals1[2] = (new String("a list 2,3")).toStringz();
		testListStore.set(iterTop,cols,vals1);
		
		testListStore.append(iterTop);
		void*[] vals2;
		vals2.length = 3;
		vals2[0] = (new String("b list 3,1")).toStringz();
		vals2[1] = (new String("a list 3,2")).toStringz();
		vals2[2] = (new String("c list 3,3")).toStringz();
		testListStore.set(iterTop,cols,vals2);

		TreeView treeView = new TreeView(testListStore);
		treeView.setHeadersClickable(true);
		treeView.setRulesHint(true);
		
		//CellRendererText cellText = new CellRendererText();
		TreeViewColumn column = new TreeViewColumn("Author",new CellRendererText(),"text", 0);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnID(0);
		column.setSortIndicator(true);
		
		column = new TreeViewColumn("Title",new CellRendererText(),"text", 1);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnID(1);
		column.setSortIndicator(true);

		column = new TreeViewColumn("Category",new CellRendererText(),"text", 2);
		treeView.appendColumn(column);
		column.setResizable(true);
		column.setReorderable(true);
		column.setSortColumnID(2);
		column.setSortIndicator(true);
		
		//notebook.appendPage(treeView,"ListView");
		ScrolledWindow sw = new ScrolledWindow(null,null);
		sw.addWithViewport(treeView);
		notebook.appendPage(sw,"ListView");
		
	}
	
	void testDelete(Notebook notebook)
	{
		ulong l = 0;
		while(true)
		{
			int i =0;
			while(i<1 )
			{
				//Button b = new Button("Button");
				Drawable d = getDrawable();
				delete d;
				++i;
			}
			++l;
			printf("testDelete count = %d\n\0",l*i);
		}
		
	}

	void gtkDemo(Notebook notebook)
	{
		void showTTextView()
		{
			new TTextView();
		}
		
		void showTEditableCells()
		{
			new TEditableCells();
		}
		
		VButtonBox vBBox = VButtonBox.createActionBox();

		Button button = new Button("Text View", &showTTextView);
		vBBox.packStart(button,false,false,4);
		
		button = new Button("Editable Cells", &showTEditableCells);
		vBBox.packStart(button,false,false,4);
		
		notebook.appendPage(vBBox,"gtk-demo");
		
	}
	
}

void main(char [][]args)
{
	DUI dui;

	
	int argc = args.length;

	for ( int i=0 ; i<args.length ; i++ )
	{
		printf("arg %d = %.*s\n\0",i,args[i]);
	}

	dui = DUI.dui(args);

	TestWindow window = new TestWindow(dui);

	//dui.thread.wait();
	dui.go();
}
