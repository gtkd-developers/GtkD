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

module gtk.OtherTests;

private import gtk.AboutDialog;
private import gtk.Dialog;
private import gtk.Widget;
private import gtk.Window;
private import gtk.Label;
private import gtk.Button;
private import gtk.VBox;
private import gtk.Main;
private import gtk.Image;

private import glib.Timeout;
private import gdk.Event;

version(Tango){
    import tango.text.Util;
    import tango.io.Stdout;
	import tango.core.Vararg;

    void writefln( string frm, ... ){
        string frm2 = substitute( frm, "%s", "{}" );
        Stdout( Stdout.layout.convert( _arguments, _argptr, frm2 )).newline;
    }
}
else{
    import std.stdio;
}

version(Tango)
	private import tango.stdc.stdlib : exit;
else version(D_Version2)
	private import core.stdc.stdlib : exit;
else
	private import std.c.stdlib : exit;

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
	}

	bool changeLabel()
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

			string[] names;
			names ~= "Antonio Monteiro (binding/wrapping/proxying/decorating for D)";
			names ~= "www.gtk.org (base C library)";
			setAuthors(names);
			setDocumenters(names);
			setArtists(names);
			setLicense("License is LGPL");
			setWebsite("http://lisdev.com");
			addOnResponse(&onDialogResponse);
			showAll();
		}
	}

	void onDialogResponse(int response, Dialog dlg)
	{
		if(response == ResponseType.CANCEL)
			dlg.destroy();
	}

	bool onDeleteEvent(Event event, Widget widget)
	{
		destroy();
		writefln("Exit by request from HelloWorld");
		exit(0);
		return false;
	}

	string toString()
	{
		return "I Am HelloWorld";
	}

}

void main(string[] args)
{
	Main.init(args);
	new OtherTests();
	Main.run();
}

