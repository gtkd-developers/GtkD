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

module dui.Invisible;

private import def.Types;
private import dui.Widget;
private import ddi.Screen;
private import lib.gtk;

/**
 * An invisible widget
 */
public:
class Invisible :
		Widget
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "An invisible widget";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new invisible widget
	 */
	this()	
	{
		this(gtk_invisible_new());
	}
	
	/**
	 * Creates a new invisible widget for a screen
	 * @param screen the screen
	 */
	this(Screen screen)
	{
		this(gtk_invisible_new_for_screen(cast(GdkScreen*)screen.obj()));
	}
	
	/**
	 * Sets the screen for this invisible widget
	 * @param screen the screen
	 */
	void setScreen(Screen screen)
	{
		gtk_invisible_set_screen(gtkW(), cast(GdkScreen*)screen.obj());
	}
	
	/**
	 * Gets the screen of this invisible widget
	 * @return the screen of the widget
	 */
	Screen getScreen()
	{
		return new Screen(gtk_invisible_get_screen(gtkW()));
	}
	
	
}
