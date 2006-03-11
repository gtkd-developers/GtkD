/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = CellRenderer
 * strct   = GtkCellRenderer
 * realStrct=
 * clss    = CellRenderer
 * extend  = 
 * prefixes:
 * 	- gtk_cell_renderer_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.string
 * 	- gtk.Widget
 * 	- gdk.Rectangle
 * 	- gdk.Window
 * 	- gdk.Event
 * 	- gtk.CellEditable
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * 	- GtkCellEditable* -> CellEditable
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.CellRenderer;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;
private import gtk.Widget;
private import gdk.Rectangle;
private import gdk.Window;
private import gdk.Event;
private import gtk.CellEditable;

/**
 * Description
 * The GtkCellRenderer is a base class of a set of objects used for
 * rendering a cell to a GdkDrawable. These objects are used primarily by
 * the GtkTreeView widget, though they aren't tied to them in any
 * specific way. It is worth noting that GtkCellRenderer is not a
 * GtkWidget and cannot be treated as such.
 * The primary use of a GtkCellRenderer is for drawing a certain graphical
 * elements on a GdkDrawable. Typically, one cell renderer is used to
 * draw many cells on the screen. To this extent, it isn't expected that a
 * CellRenderer keep any permanent state around. Instead, any state is set
 * just prior to use using GObjects property system. Then, the
 * cell is measured using gtk_cell_renderer_get_size(). Finally, the cell
 * is rendered in the correct location using gtk_cell_renderer_render().
 * There are a number of rules that must be followed when writing a new
 * GtkCellRenderer. First and formost, it's important that a certain set
 * of properties will always yield a cell renderer of the same size,
 * barring a GtkStyle change. The GtkCellRenderer also has a number of
 * generic properties that are expected to be honored by all children.
 * Beyond merely rendering a cell, cell renderers can optionally
 * provide active user interface elements. A cell renderer can be
 * activatable like GtkCellRendererToggle,
 * which toggles when it gets activated by a mouse click, or it can be
 * editable like GtkCellRendererText, which
 * allows the user to edit the text using a GtkEntry.
 * To make a cell renderer activatable or editable, you have to
 * implement the activate or start_editing virtual functions,
 * respectively.
 */
private import gtk.ObjectGtk;
public class CellRenderer : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkCellRenderer* gtkCellRenderer;
	
	
	public GtkCellRenderer* getCellRendererStruct()
	{
		return gtkCellRenderer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellRenderer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRenderer* gtkCellRenderer)
	{
		super(cast(GtkObject*)gtkCellRenderer);
		this.gtkCellRenderer = gtkCellRenderer;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(CellRenderer)[] onEditingCanceledListeners;
	void addOnEditingCanceled(void delegate(CellRenderer) dlg)
	{
		if ( !("editing-canceled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"editing-canceled",
			cast(GCallback)&callBackEditingCanceled,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["editing-canceled"] = 1;
		}
		onEditingCanceledListeners ~= dlg;
	}
	extern(C) static void callBackEditingCanceled(GtkCellRenderer* rendererStruct, CellRenderer cellRenderer)
	{
		bit consumed = false;
		
		foreach ( void delegate(CellRenderer) dlg ; cellRenderer.onEditingCanceledListeners )
		{
			dlg(cellRenderer);
		}
		
		return consumed;
	}
	
	void delegate(CellEditable, char[], CellRenderer)[] onEditingStartedListeners;
	void addOnEditingStarted(void delegate(CellEditable, char[], CellRenderer) dlg)
	{
		if ( !("editing-started" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"editing-started",
			cast(GCallback)&callBackEditingStarted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["editing-started"] = 1;
		}
		onEditingStartedListeners ~= dlg;
	}
	extern(C) static void callBackEditingStarted(GtkCellRenderer* rendererStruct, GtkCellEditable* editable, gchar* path, CellRenderer cellRenderer)
	{
		bit consumed = false;
		
		foreach ( void delegate(CellEditable, char[], CellRenderer) dlg ; cellRenderer.onEditingStartedListeners )
		{
			dlg(new CellEditable(editable), std.string.toString(path), cellRenderer);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Obtains the width and height needed to render the cell. Used by view widgets
	 * to determine the appropriate size for the cell_area passed to
	 * gtk_cell_renderer_render(). If cell_area is not NULL, fills in the x and y
	 * offsets (if set) of the cell relative to this location. Please note that the
	 * values set in width and height, as well as those in x_offset and y_offset
	 * are inclusive of the xpad and ypad properties.
	 * cell:
	 *  a GtkCellRenderer
	 * widget:
	 *  the widget the renderer is rendering to
	 * cell_area:
	 *  The area a cell will be allocated, or NULL
	 * x_offset:
	 *  location to return x offset of cell relative to cell_area, or NULL
	 * y_offset:
	 *  location to return y offset of cell relative to cell_area, or NULL
	 * width:
	 *  location to return width needed to render a cell, or NULL
	 * height:
	 *  location to return height needed to render a cell, or NULL
	 */
	public void getSize(Widget widget, Rectangle cellArea, int* xOffset, int* yOffset, int* width, int* height)
	{
		// void gtk_cell_renderer_get_size (GtkCellRenderer *cell,  GtkWidget *widget,  GdkRectangle *cell_area,  gint *x_offset,  gint *y_offset,  gint *width,  gint *height);
		gtk_cell_renderer_get_size(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), xOffset, yOffset, width, height);
	}
	
	/**
	 * Invokes the virtual render function of the GtkCellRenderer. The three
	 * passed-in rectangles are areas of window. Most renderers will draw within
	 * cell_area; the xalign, yalign, xpad, and ypad fields of the GtkCellRenderer
	 * should be honored with respect to cell_area. background_area includes the
	 * blank space around the cell, and also the area containing the tree expander;
	 * so the background_area rectangles for all cells tile to cover the entire
	 * window. expose_area is a clip rectangle.
	 * cell:
	 *  a GtkCellRenderer
	 * window:
	 *  a GdkDrawable to draw to
	 * widget:
	 *  the widget owning window
	 * background_area:
	 *  entire cell area (including tree expanders and maybe padding on the sides)
	 * cell_area:
	 *  area normally rendered by a cell renderer
	 * expose_area:
	 *  area that actually needs updating
	 * flags:
	 *  flags that affect rendering
	 */
	public void render(Window window, Widget widget, Rectangle backgroundArea, Rectangle cellArea, Rectangle exposeArea, GtkCellRendererState flags)
	{
		// void gtk_cell_renderer_render (GtkCellRenderer *cell,  GdkWindow *window,  GtkWidget *widget,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GdkRectangle *expose_area,  GtkCellRendererState flags);
		gtk_cell_renderer_render(gtkCellRenderer, (window is null) ? null : window.getWindowStruct(), (widget is null) ? null : widget.getWidgetStruct(), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), (exposeArea is null) ? null : exposeArea.getRectangleStruct(), flags);
	}
	
	/**
	 * Passes an activate event to the cell renderer for possible processing. Some
	 * cell renderers may use events; for example, GtkCellRendererToggle toggles
	 * when it gets a mouse click.
	 * cell:
	 *  a GtkCellRenderer
	 * event:
	 *  a GdkEvent
	 * widget:
	 *  widget that received the event
	 * path:
	 *  widget-dependent string representation of the event location; e.g. for GtkTreeView, a string representation of GtkTreePath
	 * background_area:
	 *  background area as passed to gtk_cell_renderer_render
	 * cell_area:
	 *  cell area as passed to gtk_cell_renderer_render
	 * flags:
	 *  render flags
	 * Returns:
	 *  TRUE if the event was consumed/handled
	 */
	public int activate(Event event, Widget widget, char[] path, Rectangle backgroundArea, Rectangle cellArea, GtkCellRendererState flags)
	{
		// gboolean gtk_cell_renderer_activate (GtkCellRenderer *cell,  GdkEvent *event,  GtkWidget *widget,  const gchar *path,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkCellRendererState flags);
		return gtk_cell_renderer_activate(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), std.string.toStringz(path), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), flags);
	}
	
	/**
	 * Passes an activate event to the cell renderer for possible processing.
	 * cell:
	 *  a GtkCellRenderer
	 * event:
	 *  a GdkEvent
	 * widget:
	 *  widget that received the event
	 * path:
	 *  widget-dependent string representation of the event location; e.g. for GtkTreeView, a string representation of GtkTreePath
	 * background_area:
	 *  background area as passed to gtk_cell_renderer_render
	 * cell_area:
	 *  cell area as passed to gtk_cell_renderer_render
	 * flags:
	 *  render flags
	 * Returns:
	 *  A new GtkCellEditable, or NULL
	 */
	public CellEditable startEditing(Event event, Widget widget, char[] path, Rectangle backgroundArea, Rectangle cellArea, GtkCellRendererState flags)
	{
		// GtkCellEditable* gtk_cell_renderer_start_editing  (GtkCellRenderer *cell,  GdkEvent *event,  GtkWidget *widget,  const gchar *path,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkCellRendererState flags);
		return new CellEditable( gtk_cell_renderer_start_editing(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), std.string.toStringz(path), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), flags) );
	}
	
	/**
	 * Warning
	 * gtk_cell_renderer_editing_canceled is deprecated and should not be used in newly-written code. Use gtk_cell_renderer_stop_editing() instead
	 * Causes the cell renderer to emit the "editing-canceled" signal. This
	 * function is for use only by implementations of cell renderers that need to
	 * notify the client program that an editing process was canceled and the
	 * changes were not committed.
	 * cell:
	 *  A GtkCellRenderer
	 * Since 2.4
	 */
	public void editingCanceled()
	{
		// void gtk_cell_renderer_editing_canceled  (GtkCellRenderer *cell);
		gtk_cell_renderer_editing_canceled(gtkCellRenderer);
	}
	
	/**
	 * Informs the cell renderer that the editing is stopped.
	 * If canceled is TRUE, the cell renderer will emit the "editing-canceled"
	 * signal. This function should be called by cell renderer implementations
	 * in response to the "editing-done" signal of GtkCellEditable.
	 * cell:
	 *  A GtkCellRenderer
	 * canceled:
	 *  TRUE if the editing has been canceled
	 * Since 2.6
	 */
	public void stopEditing(int canceled)
	{
		// void gtk_cell_renderer_stop_editing (GtkCellRenderer *cell,  gboolean canceled);
		gtk_cell_renderer_stop_editing(gtkCellRenderer, canceled);
	}
	
	/**
	 * Fills in width and height with the appropriate size of cell.
	 * cell:
	 *  A GtkCellRenderer
	 * width:
	 *  location to fill in with the fixed width of the widget, or NULL
	 * height:
	 *  location to fill in with the fixed height of the widget, or NULL
	 */
	public void getFixedSize(int* width, int* height)
	{
		// void gtk_cell_renderer_get_fixed_size  (GtkCellRenderer *cell,  gint *width,  gint *height);
		gtk_cell_renderer_get_fixed_size(gtkCellRenderer, width, height);
	}
	
	/**
	 * Sets the renderer size to be explicit, independent of the properties set.
	 * cell:
	 *  A GtkCellRenderer
	 * width:
	 *  the width of the cell renderer, or -1
	 * height:
	 *  the height of the cell renderer, or -1
	 * Property Details
	 * The "cell-background" property
	 *  "cell-background" gchararray : Write
	 * Cell background color as a string.
	 * Default value: NULL
	 */
	public void setFixedSize(int width, int height)
	{
		// void gtk_cell_renderer_set_fixed_size  (GtkCellRenderer *cell,  gint width,  gint height);
		gtk_cell_renderer_set_fixed_size(gtkCellRenderer, width, height);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
