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

module dui.Paned;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;
private import lib.gtk;

/**
 * A container for two chidren that can be resized interactivly.
 */
public:
class Paned : Container
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container for two chidren that can be resized interactivly";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_paned_get_type();
	}
	
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
    public:

    /**
     * Sets the first child either to the left or on the top
     * @param child the widget to add
     */
	void add1(Widget child)
	{
		gtk_paned_add1(gtkW(), child.gtkW());
	}
    
    /**
     * Sets the second child either to the right or on the bottom
     * @param child the widget to add
     */
	void add2(Widget child)
	{
		gtk_paned_add2(gtkW(), child.gtkW());
	}
    
    /**
     * Sets the first and second childs
     * @param child1 the first child
     * @param child2 the second child
     */
    void add(Widget child1, Widget child2)
    {
    	add1(child1);
    	add2(child2);
    }

	/**
	 * Obtains the position of the divider between the two panes.
	 * @return the position of the divider between the two panes.
	 */
	gint getPosition()
	{
		return gtk_paned_get_position(gtkW());
	}
	
	/**
	 * Sets the position of the divider between the two panes.
	 * @param position in pixels
	 */
	void setPosition(gint position)
	{
		gtk_paned_set_position(gtkW(), position);
	}
    
}
