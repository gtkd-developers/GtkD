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
		printf("HelloWorld: super called\n");
		setBorderWidth(10);
		printf("HelloWorld: borderwidth set\n");
		new Label("Hello World");
		printf("HelloWorld: TESTTTT\n");
		add(new Label("Hello World"));
		printf("HelloWorld: new label added\n");
		show();
	}
	
}
 
void main(char[][] args)
{
	
	DUI dui = DUI.dui(args);	// GTK can receive and process it's own parameters
	printf("Main: doing new HelloWorld()\n");
	new HelloWorld();
	printf("Main: Here yet?\n");
	dui.go();					// start the main event loop
	
}
 
