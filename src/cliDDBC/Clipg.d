/*
 * This file is part of dpq.
 * 
 * dpq is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dpq is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dpq; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module cliDDBC.Clipg;


private import dui.All;
private import cliDDBC.ConnectDialog;


class Clipg : MainWindow
, ConnectHolder
{

	private import dui.InputStringDialog;
	private import dui.FileSelection;
	private import dui.FileChooserDialog;
	private import def.Constants;
	private import def.Types;
	
	private import dsqlite.DSQLite;
	
	private import dool.sql.all;

	private import dool.io.OutBuffer;
	private import dool.io.FileBuffer;
	private import dool.io.Path;
	private import dool.System;
	
	private import cliDDBC.PostGTree;
	private import cliDDBC.SQLView;

	PostGTree postGTree;
	Widget mainView;
	TextView mainText;
	ScrolledWindow leftScroll;
	ScrolledWindow rightScroll;
	
	SQLView sqlView;
	
	FontSelectionDialog fontSelectionDialog;
	
	Connection connect;	
	public Connection getConnect()
	{
		return connect;
	}

	public void setConnect(Connection newConnect)
	{
		if ( newConnect !== null )
		{
			if ( connect !== null )
			{
				connect.close();
			}
			connect = newConnect;
		}
		connect.dump();
		
		if ( sqlView !== null )
		{
			sqlView.setConnect(connect);
		}
	}

	
	this(String[] commandLine)
	{
		super("ddbc client");
		setSizeRequest(800,700);
		
		//printf("command line = %s\n", String.join(commandLine," + ").toStringz());
		
		if ( commandLine.length == 2 )
		{
			connect = new DSQLite(commandLine[1]);
		}
		else
		{
			connect = new DSQLite("sqliteTest.db");
		}
		setup();
		sqlView.setConnect(connect);
		show();
	}
	
	void setup()
	{
		VBox box = new VBox(false,0);
		
		// menu 
		
		box.packStart(getMenuBar(),false,false,0);
		
		// toolbar
		
		box.packStart(getToolbar(),false,false,0);
		
		// main panels
		
		box.packStart(getMainPane(),true,true,0);
		
		// status bar
		box.packStart(new Statusbar(),false,false,0);
		
		add(box);
	}
	
	private:

	SQLView getSQLView()
	{
		if ( sqlView === null )
		{
			sqlView = new SQLView();
		}
		return sqlView;
	}
	
	Widget getMainPane()
	{
		if ( mainView === null )
		{
			postGTree = new PostGTree(connect);
			mainText = new TextView();
			
			leftScroll = new ScrolledWindow(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
			rightScroll = new ScrolledWindow(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);
			leftScroll.addWithViewport(postGTree);
			rightScroll.add(mainText);
			
			Notebook book = new Notebook();
			book.appendPage(getSQLView(),"SQL");
			book.appendPage(rightScroll,"Main");
			HPaned hPaned = new HPaned(leftScroll,book);
			hPaned.setPosition(180);
			mainView = hPaned;

		}
		return mainView;
	}
	
	CheckMenuItem viewAsColumns;
	
	MenuBar getMenuBar()
	{
		
		Dispatcher dispatcher = Dispatcher.getDispatcher();
		MenuBar menuBar = new MenuBar();

		Menu menu = menuBar.append("_File");
		menu.append(new MenuItem("connect", &activateItemCallback, "file.connect"));
		menu.append(new SeparatorMenuItem());
		menu.append(new MenuItem("_Open", &activateItemCallback, "file.open"));
		menu.append(new MenuItem("_Save", &activateItemCallback, "file.save"));
		menu.append(new MenuItem("Save _As", &activateItemCallback, "file.saveAs"));
		menu.append(new SeparatorMenuItem());
		menu.append(new MenuItem("Print", &activateItemCallback, "file.printResult"));
		menu.append(new SeparatorMenuItem());
		menu.append(new MenuItem("exit", &activateItemCallback, "file.exit"));

		
		menu = menuBar.append("View");
		viewAsColumns = new CheckMenuItem("As Columns", &activateItemCallback, "view.asColumns");
		viewAsColumns.setActive(true);
		menu.append(viewAsColumns);
		menu.append(new MenuItem("Set entry text font", &activateItemCallback, "view.statmentFont"));
		menu.append(new MenuItem("Set grid view font", &activateItemCallback, "view.columnsFont"));
		menu.append(new MenuItem("Set plain view font", &activateItemCallback, "view.plainFont"));
		
		menu = menuBar.append("Help");
		menu.append(new MenuItem("About", &activateItemCallback, "help.about"));
		
		return menuBar;

	}

	public void activateCallback(MenuItem menuItem, char [] action)
	{
		//printf("activateCallback\n");
	}

	void printResult()
	{
		InputStringDialog isd = new InputStringDialog(
			this,
			"ddbc - Save SQL result to File",
			"File Name");
		isd.show("", &printResultCallback);
	}
	
	void printResultCallback(String filename)
	{
		String statement = sqlView.getLastSQLStatment();
		if ( statement.length > 0 )
		{
			ResultSet result = sqlView.runSQLStatment(connect, statement);
			if ( result !== null )
			{
//				(new DPQPrint()).print(filename, result);
			}
		}
	}

	private String lastOpenStatementsName;
	
	private void openSavedStatements()
	{
		String fileName = selectFile(FileChooserAction.OPEN, lastOpenStatementsName);
		if ( fileName !== null  && fileName.length > 0 )
		{
			try
			{
				sqlView.setStatementText(new String(FileBuffer.read(fileName)));
				lastOpenStatementsName = fileName;
			}
			catch ( Exception e)
			{
				MessageDialog.popupError(
					this,
					"unable to read file "- fileName.toString(),
					"Save Error");
			}
		}
	}
	
	private void saveStatements(String fileName=null)
	{
		if( fileName === null )
		{
			fileName = selectFile(FileChooserAction.SAVE, lastOpenStatementsName);
		}
		if( fileName !== null && fileName.length > 0 )
		{
			OutBuffer ob = new OutBuffer();
			
			ob.write(sqlView.getStatementText());
			try
			{
				FileBuffer.write(fileName, ob);
				lastOpenStatementsName = fileName;
			}
			catch ( Exception e)
			{
				MessageDialog.popupError(
					this,
					"unable to save to file "- fileName.toString(),
					"Save Error");
			}
		}
	}

	FileChooserDialog fileChooseDialog;
	
	String selectFile(FileChooserAction action, String fileName)
	{
		String[] a;
		Response[] r;
		a ~= new String("OK");
		//a ~= new String("Maybe");
		a ~= new String("Cancel");
		r ~= Response.OK;
		//r ~= Response.OK;
		r ~= Response.CANCEL;
		if ( fileChooseDialog === null )
		{
			fileChooseDialog = new FileChooserDialog("File Chooser", this, FileChooserAction.OPEN, a , r);
			String cliDDBCHome = Path.join(System.getUserHome(),".cliDDBC");
			if ( !Path.exists(cliDDBCHome)  )
			{
				Path.mkdir(cliDDBCHome);
			}
			fileChooseDialog.setProperty("show-hidden", true);
			fileChooseDialog.setCurrentFolder(cliDDBCHome);
		}
		fileChooseDialog.setAction(action);
		if ( fileName !== null )
		{
			fileChooseDialog.setFilename(fileName);
		}
		Response responce =  fileChooseDialog.run();
		String selectedFileName = new String();
		if ( responce == Response.OK )
		{
			selectedFileName.set(fileChooseDialog.getFilename());
		}
		else
		{
			selectedFileName.set("");
		}
		fileChooseDialog.hide();
		return selectedFileName;
	}


	FileSelection fileSelection;
	
	String showFileSelection()
	{
		if ( fileSelection === null )
		{
			fileSelection = new FileSelection("File Selection");
			String cliDDBCHome = Path.join(System.getUserHome(),".cliDDBC");
			if ( !Path.exists(cliDDBCHome)  )
			{
				Path.mkdir(cliDDBCHome);
			}
			fileSelection.setFileName(cliDDBCHome~Path.pathsep);
		}
		
		fileSelection.complete("*.sql");
		fileSelection.setMultiple(true);
		fileSelection.setTitle("Open file");

		if ( fileSelection.run() == Response.OK )
		{
			fileSelection.hide();
			return fileSelection.getFileName();
			//String[] selections = fileSelection.getSelections();
			//for ( int i=0 ;i<selections.length ; i++)
			//{
			//	FileView fileView = new fileView(this,selections[i]);
			//	dockCode.dock(fileView,fileView);
			//}
			//closeIfEmpty();
		}
		fileSelection.hide();
		return new String();
//
//		
//		//fileSelection.showAll();
//		fileSelection.setMultiple(false);
//		fileSelection.run();
////		printf("file selected = %.*s\n",fileSelection.getFileName());
////		String[] selections = fileSelection.getSelections();
////		for ( int i=0 ;i<selections.length ; i++)
////		{
////			printf("File(s) selected [%d] %.*s\n",i,selections[i].toString());
////		}
////		fileSelection.hide();
	}


	
	public void activateItemCallback(MenuItem menuItem)
	{
		String action = menuItem.getActionCommand();
		switch(action.toString())
		{
			case "file.connect":
				printf("\n\n\nnew connection to call\n\n\n");
				newConnection();
				break;

			case "file.printResult":
				printResult();
				break;
				
			case "file.exit":
				DUI.dui().stop();
				break;

			case "file.open": openSavedStatements(); break;
			case "file.save": saveStatements(lastOpenStatementsName); break;
			case "file.saveAs": saveStatements(); break;
				
			case "view.asColumns":
				if ( sqlView !== null )
				{
					sqlView.setViewAsColumns(viewAsColumns.getActive());
				}
				break;
				
			case "view.statmentFont":
				sqlView.setStatmentFont(getFont("Select Text Entry font",sqlView.getStatmentFont()));
				break;
				
			case "view.columnsFont":
				sqlView.setColumnsFont(getFont("Select Columns View Font",sqlView.getColumnsFont()));
				break;

			case "view.plainFont":
				sqlView.setPlainFont(getFont("Select Plain View Font",sqlView.getPlainFont()));
				break;

			default:
				break;
		}
	}

	String getFont(char[] title, char[] fontName)
	{
		return getFont(new String(title), new String(fontName));
	}
	String getFont(char[] title, String fontName)
	{
		return getFont(new String(title), fontName);
	}
	String getFont(String title, String fontName)
	{
		if ( fontSelectionDialog === null)
		{
			fontSelectionDialog = new FontSelectionDialog(title);
		}
		fontSelectionDialog.setTitle(title);
		if ( fontName.length > 0 )
		{
			fontSelectionDialog.setFontName(new String(fontName));
		}
		if ( fontSelectionDialog.run() == Response.OK)
		{
			fontSelectionDialog.hide();
			printf("font selected = %.*s\n",fontSelectionDialog.getFontName());
			return fontSelectionDialog.getFontName();
		}
		fontSelectionDialog.hide();
		return null;
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

	public void buttonClickedCallback(Button button, char [] action)
	{
		switch(action)
		{
			case "connect":
				newConnection();
				break;
				
			default:
				break;
		}
	}
	
	void newConnection()
	{
		printf("\n\nin new connection\n\n");
		connect.dump();
		new ConnectDialog(this);
	}

}

private import dool.util.CommandLineParser;

void main(char [][]args)
{

	DUI dui = DUI.dui(args);	
	Dispatcher.getDispatcher(); // init the event dispatcher
	new Clipg(CommandLineParser.getDoolCommandLine(args));

	dui.go();

}
