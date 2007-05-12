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

private import gtk.Dialog;
private import gtk.VBox;
private import gtk.HButtonBox;

private import std.stdio;

private import gtkc.gtktypes;

class HelloWorld : MainWindow
{
	this()
	{
		super("GtkD");
		setBorderWidth(10);
		add(new Label("Hello World"));
		showAll();
		
		Dialog dialog = new Dialog();
		dialog.showAll();
		VBox vbox = getVBox(dialog);
		dialog.showAll();
		
	}
	
	VBox getVBox(Dialog dialog)
	{
		void* pt = dialog.getDialogStruct();
		(pt) += 37;
		VBox vbox;
		
		vbox = new VBox(cast(GtkVBox*)(pt));
		vbox.packStart(new Label("Label test"), false, false, 2);
		vbox.showAll();
		
		return vbox;
	}

	
}

private import gtkc.Loader;

void main(char[][] args)
{
	
	Gtk.init(args);
	new HelloWorld();
	Gtk.main();

}
