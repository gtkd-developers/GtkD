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

module dui.CellRenderer;

private import dui.Utils;
private import def.Types;
private import ddi.WindowG;
private import dui.DUIObject;
private import dui.Widget;

private import event.Event;

alias GtkObject GtkCellRenderer;
alias void * CellRendererDataFunc;

alias int GtkCellRendererState;
alias int GtkCellEditable;

private:

extern (C) void gtk_cell_renderer_get_size(GtkCellRenderer * cell, GtkWidget * widget, GdkRectangle * cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height);
extern (C) void gtk_cell_renderer_render(GtkCellRenderer * cell, GdkWindow * window, GtkWidget * widget, GdkRectangle * background_area, GdkRectangle * cell_area, GdkRectangle * expose_area, GtkCellRendererState flags);
extern (C) gboolean gtk_cell_renderer_activate(GtkCellRenderer * cell, GdkEvent * event, GtkWidget * widget, gchar * path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags);
extern (C) GtkCellEditable * gtk_cell_renderer_start_editing(GtkCellRenderer * cell, GdkEvent * event, GtkWidget * widget, gchar * path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags);
extern (C) void gtk_cell_renderer_set_fixed_size(GtkCellRenderer * cell, gint width, gint height);
extern (C) void gtk_cell_renderer_get_fixed_size(GtkCellRenderer * cell, gint * width, gint * height);

/**
 * Cell renderer. Used on tree and list (TreeStore and ListStore tree types)
 */

public:
class CellRenderer : DUIObject
{

	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Cell renderer. Used on tree and list (TreeStore and ListStore tree types)";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkObject * gtkObject)
	{
		super(gtkObject);
	}

	/**
	 * get size
	 * @param widget
	 * @param cell_area
	 * @param x_offset
	 * @param y_offset
	 * @param width
	 * @param height
	 */
	void getSize(Widget widget, Rectangle* cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height)
	{
		gtk_cell_renderer_get_size(gtkO(), widget.gtkW(), cell_area, x_offset, y_offset, width, height);
	}

	
	/**
	 * render
	 * @param windowG
	 * @param widget
	 * @param background_area
	 * @param cell_area
	 * @param expose_area
	 * @param flags
	 */
	void render(WindowG windowG, Widget widget, Rectangle * background_area, Rectangle * cell_area, Rectangle * expose_area, GtkCellRendererState flags)
	{
		gtk_cell_renderer_render(gtkO(), cast(GdkWindow*)windowG.gdkO(), widget.gtkW(), background_area, cell_area, expose_area, flags);
	}
	
	/**
	 * Rederer Activate
	 */
	bit rendererActivate(Event event, Widget widget, char[] path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags)
	{
		return gtk_cell_renderer_activate(gtkO(), event.getE(), widget.gtkW(), cChar(path), background_area, cell_area, flags)
			== 0 ? false : true;
	}
	
	/**
	 * Start Editing
	 */
	GtkCellEditable * startEditing(Event event, Widget widget, char[] path, GdkRectangle * background_area, GdkRectangle * cell_area, GtkCellRendererState flags)
	{
		return gtk_cell_renderer_start_editing(gtkO(), event.getE(), widget.gtkW(), cChar(path), background_area, cell_area, flags);
	}
	
	/**
	 * Sets the cell Fixed size
	 * @param width
	 * @param heigth
	 */
	void setFixedSize(gint width, gint height)
	{
	   gtk_cell_renderer_set_fixed_size(gtkO(), width, height);
	}
	
	/**
	 * Gets the cell's fixed size
	 * @param width
	 * @param heigth
	 */
	void getFixedSize(gint * width, gint * height)
	{
		gtk_cell_renderer_get_fixed_size(gtkO(), width, height);
	}
}
