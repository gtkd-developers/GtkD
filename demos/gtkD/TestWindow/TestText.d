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

module TestText;

private import gtk.VBox;

private import gtk.ScrolledWindow;
private import gtk.TextView;
private import gtk.TextBuffer;

debug import std.stdio;

/**
 * This tests the GtkD text widget
 */

class TestText : VBox
{

	private import gtk.ScrolledWindow;

	this()
	{

		super(false,0);

		debug(1)
		{
			writeln("instantiating TestText");
		}

		ScrolledWindow sw = new ScrolledWindow(null, null);
		sw.setPolicy(PolicyType.AUTOMATIC,PolicyType.AUTOMATIC);

		TextView textView = new TextView();
		TextBuffer textBuffer = textView.getBuffer();
		textBuffer.setText(

"\nGktD

Introduction
GtkD is a D language graphical user interface based on GKT+ graphical toolkit
GtkD is released under the GPL license
To discuss about GtkD:

    * if it's D related or can have interest to other D user please use the D discussion group at
      Digital Mars D news group
    * if it's a GtkD issue with no insterest to other D user please use the GtkD forum
      on gtkd.org

Objectives
The main goal of GtkD is to enable the creation of D GUI applications under Linux.
GtkD should be simple and straightforward to use.
D can interface with C so any graphics toolkit with a C API can be used directly from D, this include GTK+."

		);

		sw.add(textView);
		packStart(sw,true,true,0);

	}

}
