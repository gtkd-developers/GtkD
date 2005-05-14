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

module dui.Plug;

private import def.Types;
private import def.Constants;
private import dui.Window;
private import ddi.Display;
private import lib.gtk;

/****************************
  This module is linux only 
  
  TODO: add version control
  to prevent invalid symbol
  function call on win32.
 ****************************/

/**
 * Plug - not implemented yet
 */

public:
class Plug :
		Window
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_plug_get_type();
	}
	
	/**
	 * Creates a new plug from a GtkPlug
	 * @param gtkWidget te GtkPlug
	 */
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * construct
	 * @param socketID a native window
	 */
	void construct(NativeWindow socketID)
	{
		gtk_plug_construct(cast(GtkWindow*)gtkW(), socketID);
	}

	/**
	 * Construc for display
	 * @param display
	 * @param socketID a native window
	 */
	void constructForDisplay(Display display, NativeWindow socketID)
	{
		gtk_plug_construct_for_display(cast(GtkWindow*)gtkW(), cast(GdkDisplay*)display.obj(), socketID);
	}
	
	/**
	 * Creates a new plugh
	 * @param socketID
	 */
	this(NativeWindow socketID)
	{
		this(gtk_plug_new(socketID));
	}
	
	/**
	 * Creates a new plug
	 * @param display
	 * @param socketID
	 */
	this(Display display, NativeWindow socketID)
	{
		this(gtk_plug_new_for_display(cast(GdkDisplay*)display.obj(), socketID));
	}
	
	/**
	 * Gets the native window id
	 * @return the native window id
	 */
	NativeWindow getID()
	{
		return gtk_plug_get_id(cast(GtkWindow*)gtkW());
	}
}

