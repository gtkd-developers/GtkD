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

module TestThemes;

private import gtk.Window;

private import gtk.Box;
private import gtk.ScrolledWindow;
private import gtk.Widget;
private import gtk.ComboBox;
private import gtk.Viewport;
// private import gtk.ButtonBox;
// private import gtk.HButtonBox;
private import gtk.Button;

debug import std.stdio;

class TestThemes : Box
{

	Window window;
	ScrolledWindow sw;
		
	this(Window window)
	{
		this.window = window;
		debug(1)
		{
			writeln("instantiating TestThemes");
		}

		super(GtkOrientation.VERTICAL, 8);

		setOrientation(GtkOrientation.VERTICAL);
		
		sw = new ScrolledWindow();

		auto vp = new Viewport(null, null);	
		vp.setChild(initTable());
		sw.setChild(vp);

		// auto hBox = HButtonBox.createActionBox();
		auto hBox = new Box(GtkOrientation.HORIZONTAL, 0);

		prepend(sw);
		prepend(hBox);

	}

	Widget initTable()
	{
		
		return new ComboBox();
	}
}
