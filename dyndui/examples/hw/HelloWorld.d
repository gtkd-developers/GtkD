/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
module hw.HelloWorld;

private import dui.MainWindow;
private import dui.DUI;

public:
class HelloWorld : MainWindow
{
	private import dui.Label;
	
	this()
	{
		super("DUI Hello World");
		setBorderWidth(10);
		new Label("Hello World");
		add(new Label("Hello World"));
		show();
	}
}
 
void main(char[][] args)
{
	DUI dui = DUI.dui(args);   // pass parameters to Gtk+
	new HelloWorld();
	dui.go();                  // start the main event loop	
}