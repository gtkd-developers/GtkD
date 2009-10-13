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

module TestImage;

//debug = trace

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

version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;

private import glib.Str;

/**
 * This tests the GtkD loading and display and image file
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

		string[] pngs;

		pngs ~= "images/gtkD_bevel.png";
		pngs ~= "images/gtkDlogo_a.png";
		pngs ~= "images/gtkD_logo_plain.png";
		pngs ~= "images/gtkD_logo_small.png";
		pngs ~= "images/gtkD_icon_1.png";
		pngs ~= "images/gtkDlogo_a_small.png";
		pngs ~= "images/gtkD_logo.png";
		pngs ~= "images/gtkD_logo_too_small.png";


		return loadTable(pngs);
	}

	private Table loadTable(string[] imageFiles)
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
			string fileName = imageFiles[i];
			if ( fileName[0] != '/' )
			{
				fileName = fileName;
			}
			image = new Image(fileName);
			//image.addOnEnterNotify(&onEnter);
			//image.addOnLeaveNotify(&onLeave);
			debug(trace) version(Tango) Stdout.format("adding image {} to table at {},{}", fileName, col, row).newline;
			else writefln("adding image %s to table at %s,%s", fileName, col, row);
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
			string[] a;
			ResponseType[] r;
			a ~= "Lets go!";
			a ~= "Please don't";
			r ~= ResponseType.GTK_RESPONSE_ACCEPT;
			r ~= ResponseType.GTK_RESPONSE_CANCEL;
			fs = new FileChooserDialog("File Selection", window, FileChooserAction.OPEN, a, r);
		}
		fs.setSelectMultiple(true);
		ResponseType response = cast(ResponseType) fs.run();
		if ( response == ResponseType.GTK_RESPONSE_ACCEPT )
		{
			string[] fileNames;
			ListSG list = fs.getFilenames();


			for ( int i = 0; i<list.length() ; i++)
			{
				debug(trace) version(Tango) Stdout.format("Testmage.loadImages.File selected = {}",
						Str.toString(cast(char*)list.nthData(i))).newline;
				else writefln("Testmage.loadImages.File selected = %s",
						Str.toString(cast(char*)list.nthData(i)));
				fileNames ~= Str.toString(cast(char*)list.nthData(i));
			}

			loadTable(fileNames);
		}
		fs.hide();
	}

	void onEnter(Widget widget)
	{
		printf("TestImage.mouseEnterNotify\n");
		//return true;
	}
	void onLeave(Widget widget)
	{
		printf("TestImage.mouseLeaveNotify\n");
		//return true;
	}


}
