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

module dui.Fixed;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;

alias GtkContainer GtkFixed;

private :
extern(C)
{
	GType gtk_fixed_get_type();
	GtkWidget * gtk_fixed_new();
	void gtk_fixed_put(GtkFixed * fixed, GtkWidget * widget, gint x, gint y);
	void gtk_fixed_move(GtkFixed * fixed, GtkWidget * widget, gint x, gint y);
	void gtk_fixed_set_has_window(GtkFixed * fixed, gboolean has_window);
	gboolean gtk_fixed_get_has_window(GtkFixed * fixed);
};

/**
 * A container that lays out it children on a fixed postion
 */
public
class Fixed : Container
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container that lays out it children on a fixed postion";}
		char[] author(){return "Antonio";}
	}
	

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Gets this class type
	 */
	static GType getType()
	{
		return gtk_fixed_get_type();
	}
	
	/**
	 * Creates a new Fixed container
	 */
	this()
	{
		this(gtk_fixed_new());
	}
	
	/**
	 * Puts a new child widget in a fixed postion
	 * @param child the widget
	 * @param x the horizontal position
	 * @param y the vertical position
	 */
	void put(Widget child, gint x, gint y)
	{
		gtk_fixed_put(cast(GtkFixed*)gtkW(), child.gtkW(), x, y);
	}
	
	/**
	 * Move a child widget to a new position
	 * @param child the widget to move
	 * @param x the new horizontal position
	 * @param y the new vertical position
	 */
	void move(Widget child, gint x, gint y)
	{
		gtk_fixed_move(cast(GtkFixed*)gtkW(), child.gtkW(), x, y);
	}
	
	/**
	 * Sets has window flag
	 * @param hasWindow
	 */
	void setHasWindon(bit hasWindow)
	{
		gtk_fixed_set_has_window(cast(GtkFixed*)gtkW(), hasWindow);
	}
	
	/**
	 * Gets has window flag
	 * @return true if has window
	 */
	bit getHasWindow()
	{
		return gtk_fixed_get_has_window(cast(GtkFixed*)gtkW()) == 0 ? false : true;
	}


}
