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

private import gtk.VBox;
private import gtk.ScrolledWindow;
private import gtk.Widget;
private import gtk.ComboBox;
private import gtk.ButtonBox;
private import gtk.HButtonBox;
private import gtk.Button;

class TestThemes : VBox
{

	Window window;
	ScrolledWindow sw;
		
	this(Window window)
	{
		this.window = window;
		debug(1)
		{
			printf("instantiating TestThemes\n");
		}

		super(false,8);
		
		sw = new ScrolledWindow(null,null);
		
		sw.addWithViewport(initTable());

		ButtonBox hBox = HButtonBox.createActionBox();

		packStart(sw,true,true,0);
		packStart(hBox,false,false,0);

	}

	Widget initTable()
	{
		
		return new ComboBox();
	}
}
