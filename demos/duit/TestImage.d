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

module duit.TestImage;

private import gtk.VBox;
	
private import gtk.Table;
private import gtk.FileChooserDialog;
private import gtk.Button;
private import gtk.Widget;
private import gtk.ScrolledWindow;
private import gtk.ButtonBox;
private import gtk.HButtonBox;
private import gtk.Image;

private import gtk.Window;

private import gtk.typedefs;

private import std.stdio;


/**
 * This tests the DUI loading and display and image file
 */
class TestImage : VBox
{
	Table table;
	FileChooserDialog fs;
	ScrolledWindow sw;
	
	Window window;
	
	this(Window window)
	{
		this.window = window;
		debug(1)
		{
			printf("instantiating TestImage\n");
		}

		super(false,8);
		
		sw = new ScrolledWindow(null,null);
		
		sw.addWithViewport(initTable());

		ButtonBox hBox = HButtonBox.createActionBox();
		Button loadDir = new Button("Load Files", &loadImages);
		hBox.packStart(loadDir,false,false,0);

		packStart(sw,true,true,0);
		packStart(hBox,false,false,0);

	}
	
	Table initTable()
	{

		// I don't think D can read the content of a directory yet
		// so here it is
		char[][] pngs;
		
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiIcon_t.xpm";
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiLogo.gif";
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiLogo.xpm";
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiLogo_2.xpm";
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiLogo_4.xpm";
		pngs ~= "/home/ruimt/devel/D1/DUI/images/duiLogo_8.xpm";

		return loadTable(pngs);
	}
	
	private Table loadTable(char[][] imageFiles)
	{
		//Table table = new Table(1,1,false);
		if ( table  is  null )
		{
			table = new Table(1,1,false);
		}
		else
		{
			table.removeAll();
		}
		

		int row = 0;
		int col = 0;

		Image image;
		
		
//		Window progressWindow = new Window();//WindowType.POPUP);
//		progressWindow.setBorderWidth(10);
//		ProgressBar progressBar = new ProgressBar();
//		progressWindow.add(progressBar);
//		progressWindow.show();
		

		for ( int i=0 ; i<imageFiles.length ;i++)
		{
			char[] fileName = imageFiles[i];
			if ( fileName[0] != '/' )
			{
				version(linux) fileName = fileName ~ "/usr/share/pixmaps/";
				version(Windows) fileName = fileName ~ "C:\\Projects\\D\\DynDUI\\dui\\images\\";
			}
			image = new Image(fileName);
			//image.addOnEnterNotify(&onEnter);
			//image.addOnLeaveNotify(&onLeave);
			writefln("adding image %s to table at %s,%s", fileName, col, row);
			table.resize(col+1, row+1);
			table.attach(image,col,col+1,row,row+1,AttachOptions.FILL,AttachOptions.FILL,4,4);
			++col;
			if ( col == 8 )
			{
				col = 0;
				++row;
			}
			
		}
		return table;
	}

private import glib.ListSG;
	
	void loadImages(Button button)
	{
		if ( fs  is  null )
		{
			char[][] a;
			ResponseType[] r;
			a ~= "Lets go!";
			a ~= "Please don't";
			r ~= ResponseType.GTK_RESPONSE_ACCEPT;
			r ~= ResponseType.GTK_RESPONSE_CANCEL;
			fs = new FileChooserDialog("File Selection", window, FileChooserAction.OPEN, a, r);
		}
		fs.getFileChooser().setSelectMultiple(true);
		ResponseType response = cast(ResponseType) fs.run();
		if ( response == ResponseType.GTK_RESPONSE_ACCEPT )
		{
			char[][] fileNames;
			ListSG list = fs.getFileChooser().getFilenames();
			
			
			for ( int i = 0; i<list.length() ; i++)
			{
				writefln("Testmage.loadImages.File selected = %s", 
						std.string.toString(cast(char*)list.nthData(i)));
				fileNames ~= std.string.toString(cast(char*)list.nthData(i)).dup;
			}
			
			loadTable(fileNames);
		}
		fs.hide();
	}

	void onEnter(Widget widget)
	{
		printf("TestImage.mouseEnterNotify\n");
		return true;
	}
	void onLeave(Widget widget)
	{
		printf("TestImage.mouseLeaveNotify\n");
		return true;
	}


}
