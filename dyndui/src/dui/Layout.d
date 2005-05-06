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

module dui.Layout;
private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;
private import dui.Adjustment;
private import lib.gtk;

/**
 * A container to layout widgets on view larger then the visible area.
 * This can be used to go beyond the limits on the  supporting layer of graphics environment.
 */
public:
class Layout : Container
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container to layout widgets on view larger then the visible area";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_layout_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new layout with vertical and horizontal adjustments
	 * @param hAdjustment
	 * @param vAdjustment
	 */
	this(Adjustment hAdjustment, Adjustment vAdjustment)
	{
		this(gtk_layout_new(hAdjustment.gtkO(), vAdjustment.gtkO()));
	}
	

	/**
	 * puts a widget to a new position
	 * @param child the widget to move
	 * @param x
	 * @param y
	 */
	void put(Widget child,gint x, gint y)
	{
		gtk_layout_put(cast(GtkLayout*)gtkW(), child.gtkW(), x, y);
	}

	/**
	 * Move a widget to a new position
	 * @param child the widget to move
	 * @param x
	 * @param y
	 */
	void move(Widget child,gint x, gint y)
	{
		gtk_layout_move(cast(GtkLayout*)gtkW(), child.gtkW(), x, y);
	}

	/**
	 * Sets the layout size
	 * @param width
	 * @param height
	 */
	void setSize(guint width, guint height)
	{
		gtk_layout_set_size(cast(GtkLayout*)gtkW(), width, height);
	}

	/**
	 * Gets the layout size
	 * @param width
	 * @param height
	 */
	void getSize(guint * width, guint * height)
	{
		gtk_layout_get_size(cast(GtkLayout*)gtkW(), width, height);
	}

	/**
	 * Gets the horizontal adjustment
	 * @return adjustment
	 */
	Adjustment getHAdjustment()
	{
		return new Adjustment(gtk_layout_get_hadjustment(cast(GtkLayout*)gtkW()));
	}

	/**
	 * Gets the vertical adjustment
	 * @return adjustment
	 */
	Adjustment getVAdjustment()
	{
		return new Adjustment(gtk_layout_get_vadjustment(cast(GtkLayout*)gtkW()));
	}

	/**
	 * Sets the horizontal adjustment
	 * @param adjustment
	 */
	void setHAdjustment (Adjustment adjustment)
	{
		gtk_layout_set_hadjustment(cast(GtkLayout*)gtkW(),adjustment.gtkO());
	}

	/**
	 * Sets the vertical adjustment
	 * @param adjustment
	 */
	void setVAdjustment (Adjustment adjustment)
	{
		gtk_layout_set_vadjustment(cast(GtkLayout*)gtkW(),adjustment.gtkO());
	}

}
