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

import gtk.AboutDialog;
import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Dialog;
import gtk.Widget;
import gtk.Label;
import gtk.Button;
import gtk.VBox;
import gtk.Image;

import glib.Timeout;
import gdk.Event;

import std.stdio;
import core.stdc.stdlib : exit;

public class OtherTests : ApplicationWindow
{

	Label byeLabel;
	Timeout timeout;

	this(Application application)
	{
		super(application);
		setTitle("GtkD");
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

	override string toString()
	{
		return "I Am HelloWorld";
	}

}

int main(string[] args)
{
	auto application = new Application("org.gtkd.demo.othertests", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app) { new OtherTests(application); });
	return application.run(args);
}

