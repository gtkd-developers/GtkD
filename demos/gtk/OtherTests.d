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

import glib.Timeout;
import gtk.AboutDialog;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.Box;
import gtk.Button;
import gtk.Dialog;
import gtk.GestureClick;
import gtk.Label;
import gtk.Window;

import std.stdio;

public class OtherTests : ApplicationWindow
{

	Label byeLabel;
	Timeout timeout;

	this(Application application)
	{
		super(application);
		setTitle("GtkD");
		
		Box box = new Box(GtkOrientation.VERTICAL, 2);
		box.setMarginStart(10);
		box.setMarginEnd(10);
		box.setMarginTop(10);
		box.setMarginBottom(10);

		box.append(new Label("Hello World"));
		
		Button button = new Button("About");
		button.addOnClicked(&onClicked);
		button.addOnClicked(&popupAbout);
		button.addOnClicked(delegate void(Button b){
			writefln("\nliterally clicked");
		});

		GestureClick gesture = new GestureClick();
		gesture.setPropagationPhase(PropagationPhase.CAPTURE);
		gesture.addOnPressed(&mousePressed);
		button.addController(gesture);

		box.append(button);

		byeLabel = new Label("Bye-bye World");
		box.append(byeLabel);
		setChild(box);

		addOnCloseRequest(&onCloseRequest);
		show();

		timeout = new Timeout(1000, &changeLabel);
	}

	void mousePressed(int nPress, double x, double y, GestureClick gesture)
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
			setLicenseType(License.LGPL_3_0);
			setWebsite("https://gtkd.org");
			show();
		}
	}

	bool onCloseRequest(Window window)
	{
		destroy();
		writefln("Exit by request from HelloWorld");
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
	application.addOnActivate(delegate void(_) { new OtherTests(application); });
	return application.run(args);
}

