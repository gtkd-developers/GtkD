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

module test.DUITreeWindow;

//private import string;

private import dui.Window;
	private import def.Types;
	private import dui.HPaned;
	private import dui.Button;
	private import test.DUITree;

	private import dui.DUI;

class DUITreeWindow : Window
{
	
	
	DUI dui;
	
	this(DUI dui)
	{
		super("DUI Objects Tree");
		this.dui = dui;
		setup();
		show();
	}
	
	void setup()
	{
		//HPaned paned = new HPaned();
		//paned.add(new Button("1"), new Button("2"));
		add(new DUITree());
	}

	void clickedPerformed(void * widget)
	{
		
	}

}

void main(char [][]args)
{
	DUI dui;

	int argc = args.length;

	for ( int i=1 ; i<args.length ; i++ )
	{
		printf("arg %d = %s\n\0",i,args[i]);
	}

	dui = DUI.dui(args);

	DUITreeWindow window = new DUITreeWindow(dui);

	//dui.thread.wait();
	dui.go();

}


