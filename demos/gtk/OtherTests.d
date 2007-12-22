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

module gtk.OtherTests;

private import gtk.AboutDialog;
private import gtk.Widget;
private import gtk.Window;
private import gtk.Label;
private import gtk.Button;
private import gtk.VBox;
private import gtk.GtkD;
private import std.stdio;
private import gtk.Image;

private import gtkc.gdktypes;
private import gobject.Signals;
private import gtk.Timeout;

private import gdk.Event;

public class OtherTests : Window
{

	Label byeLabel;
	Timeout timeout;

	this()
	{
		super("GtkD");
		setDecorated(true);
		VBox box = new VBox(false, 2);
		box.add(new Label("Hello World"));
		Button button = new Button("About");
		button.addOnClicked(&onClicked);
		button.addOnClicked(&popupAbout);
		button.addOnClicked(delegate void(Button b){
			writefln("\nliterally clicked");
		});
		
		button.addOnPressed(&mousePressed);
		//addOnButtonPress(&mousePressed);
		
		box.add(button);
		byeLabel = new Label("Bye-bye World");
		box.add(byeLabel);
		add(box);
		setBorderWidth(10);
		move(0,400);
		showAll();
		
		addOnDelete(&onDeleteEvent);
		
		timeout = new Timeout(1000, &changeLabel);
	}
	
	void mousePressed(Button widget)
	{
		writefln("mousePressed");
		return false;
	}
	
	bit changeLabel()
	{
		switch ( byeLabel.getText() )
		{
			case "Bye-bye World": byeLabel.setText("still here"); break;
			case "still here": byeLabel.setText("close window"); break;
			case "close window": byeLabel.setText("to terminate"); break;
			default : byeLabel.setText("Bye-bye World"); break;
		}
		return true;
	}
	
	void onClicked(Button button)
	{
		writefln("\nOn click from Hello World %s", button);
	}
	
	void popupAbout(Button button)
	{
		with (new AboutDialog())
		{
			
			char** names = (new char*[2]).ptr;
			int i = 0;
			names[i++] = cast(char*)"Antonio Monteiro (binding/wrapping/proxying/decorating for D)";
			names[i++] = cast(char*)"www.gtk.org (base C library)";
			setAuthors(names);
			setDocumenters(names);
			setArtists(names);
			setLicense("License is LGPL");
			setWebsite("http://lisdev.com");
			showAll();
		}
	}
	
	gboolean onDeleteEvent(Event event, Widget widget)
	{
		destroy();
		writefln("Exit by request from HelloWorld");
		GtkD.exit(0);
		return 0;
	}
	
	char[] toString()
	{
		return "I Am HelloWorld";
	}
	
}

void main(char[][] args)
{
	GtkD.init(args);
	new OtherTests();
	GtkD.main();
}

