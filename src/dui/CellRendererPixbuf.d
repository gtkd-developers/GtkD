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

module dui.CellRendererPixbuf;

private import def.Types;
private import def.Constants;
private import dui.DUIObject;
private import dui.CellRenderer;


alias GtkCellRenderer GtkCellRendererPixbuf;


private:
extern (C) GType            gtk_cell_renderer_pixbuf_get_type ();
extern (C) GtkCellRenderer *gtk_cell_renderer_pixbuf_new ();

/**
 * A pixbuf cell renderer
 */
public:
class CellRendererPixbuf : CellRenderer
{
    
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A pixbuf cell renderer";}
		char[] author(){return "Antonio";}
	}
	
    protected:
    this(GtkObject *gtkObject)
    {
        super(gtkObject);
    }
    
    public:

	/**
	 * Gets the type for this class
	 * @return the type for this class
	 */
	static GType getType()
	{
		return gtk_cell_renderer_pixbuf_get_type();
	}
	
	/**
	 * Creates a new pixbuf cell renderer
	 */
	this()
	{
		this(gtk_cell_renderer_pixbuf_new());
	}
    
}
