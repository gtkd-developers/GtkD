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

module dui.CellRendererToggle;
/**
 *
 */

private import def.Types;
private import dui.DUIObject;
private import dui.CellRenderer;

alias GtkCellRenderer GtkCellRendererToggle;

private:

extern (C) GtkCellRenderer * gtk_cell_renderer_toggle_new();
extern (C) gboolean gtk_cell_renderer_toggle_get_radio(GtkCellRendererToggle * toggle);
extern (C) void gtk_cell_renderer_toggle_set_radio(GtkCellRendererToggle * toggle, gboolean radio);
extern (C) gboolean gtk_cell_renderer_toggle_get_active(GtkCellRendererToggle * toggle);
extern (C) void gtk_cell_renderer_toggle_set_active(GtkCellRendererToggle * toggle, gboolean setting);

/**
 * A Toggle Cell renderer
 */
public:
class CellRendererToggle : CellRenderer
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A toggle Cell renderer";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkObject * gtkObject)
	{
		super(gtkObject);
	}

	public:
	
	/**
	 * Creates a new CellRederer
	 */
	this()
	{
		this(gtk_cell_renderer_toggle_new());
	}
	
	/**
	 * get radio ???
	 * @return true if
	 */
	bit getRadio()
	{
		return gtk_cell_renderer_toggle_get_radio(gtkO())==0?false:true;
	}
	
	/**
	 * Sets radio ???
	 * @param radio
	 */
	void setRadio(bit radio)
	{
		gtk_cell_renderer_toggle_set_radio(gtkO(), radio);
	}
	
	/**
	 * get active
	 * @return true if active
	 */
	bit getActive()
	{
		return gtk_cell_renderer_toggle_get_active(gtkO())==0?false:true;
	}
	
	/**
	 * Sets active state
	 * @param setting the new active state
	 */
	void setActive(bit setting)
	{
		gtk_cell_renderer_toggle_set_active(gtkO(), setting);
	}

}
