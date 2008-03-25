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

module gtk.HelloWorld;

private import gtk.MainWindow;
private import gtk.Label;
private import gtk.GtkD;

class HelloWorld : MainWindow
{
	this()
	{
		super("GtkD");
		setBorderWidth(10);
		add(new Label("Hello World"));

		showAll();
	}

}

void main(string[] args)
{

	Gtk.init(args);
	new HelloWorld();
	Gtk.main();

}
