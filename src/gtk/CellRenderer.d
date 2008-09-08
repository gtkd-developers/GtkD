/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkCellRenderer.html
 * outPack = gtk
 * outFile = CellRenderer
 * strct   = GtkCellRenderer
 * realStrct=
 * ctorStrct=
 * clss    = CellRenderer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gdk.Rectangle
 * 	- gdk.Window
 * 	- gdk.Event
 * 	- gtk.CellEditable
 * 	- gtk.CellEditableIF
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * 	- GtkCellEditable* -> CellEditableIF
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRenderer;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import gdk.Rectangle;
private import gdk.Window;
private import gdk.Event;
private import gtk.CellEditable;
private import gtk.CellEditableIF;



private import gtk.ObjectGtk;

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
public class CellRenderer : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkCellRenderer* gtkCellRenderer;
	
	
	public GtkCellRenderer* getCellRendererStruct()
	{
		return gtkCellRenderer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRenderer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRenderer* gtkCellRenderer)
	{
		if(gtkCellRenderer is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCellRenderer);
		if( ptr !is null )
		{
			this = cast(CellRenderer)ptr;
			return;
		}
		super(cast(GtkObject*)gtkCellRenderer);
		this.gtkCellRenderer = gtkCellRenderer;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(CellRenderer)[] onEditingCanceledListeners;
	/**
	 * This signal gets emitted when the user cancels the process of editing a
	 * cell. For example, an editable cell renderer could be written to cancel
	 * editing when the user presses Escape.
	 * See also: gtk_cell_renderer_stop_editing().
	 * Since 2.4
	 */
	void addOnEditingCanceled(void delegate(CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("editing-canceled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"editing-canceled",
			cast(GCallback)&callBackEditingCanceled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["editing-canceled"] = 1;
		}
		onEditingCanceledListeners ~= dlg;
	}
	extern(C) static void callBackEditingCanceled(GtkCellRenderer* rendererStruct, CellRenderer cellRenderer)
	{
		foreach ( void delegate(CellRenderer) dlg ; cellRenderer.onEditingCanceledListeners )
		{
			dlg(cellRenderer);
		}
	}
	
	void delegate(CellEditableIF, string, CellRenderer)[] onEditingStartedListeners;
	/**
	 * This signal gets emitted when a cell starts to be edited.
	 * The indended use of this signal is to do special setup
	 * on editable, e.g. adding a GtkEntryCompletion or setting
	 * up additional columns in a GtkComboBox.
	 * Note that GTK+ doesn't guarantee that cell renderers will
	 * continue to use the same kind of widget for editing in future
	 * releases, therefore you should check the type of editable
	 * static void
	 * text_editing_started (GtkCellRenderer *cell,
	 *  GtkCellEditable *editable,
	 *  const gchar *path,
	 *  gpointer data)
	 * {
		 *  if (GTK_IS_ENTRY (editable))
		 *  {
			 *  GtkEntry *entry = GTK_ENTRY (editable);
			 *
			 *  /+* ... create a GtkEntryCompletion +/
			 *
			 *  gtk_entry_set_completion (entry, completion);
		 *  }
	 * }
	 * Since 2.6
	 * See Also
	 * GtkCellRendererText,GtkCellRendererPixbuf,GtkCellRendererToggle
	 */
	void addOnEditingStarted(void delegate(CellEditableIF, string, CellRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("editing-started" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"editing-started",
			cast(GCallback)&callBackEditingStarted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["editing-started"] = 1;
		}
		onEditingStartedListeners ~= dlg;
	}
	extern(C) static void callBackEditingStarted(GtkCellRenderer* rendererStruct, GtkCellEditable* editable, gchar* path, CellRenderer cellRenderer)
	{
		foreach ( void delegate(CellEditableIF, string, CellRenderer) dlg ; cellRenderer.onEditingStartedListeners )
		{
			dlg(new CellEditable(editable), Str.toString(path), cellRenderer);
		}
	}
	
	
	/**
	 * Obtains the width and height needed to render the cell. Used by view
	 * widgets to determine the appropriate size for the cell_area passed to
	 * gtk_cell_renderer_render(). If cell_area is not NULL, fills in the
	 * x and y offsets (if set) of the cell relative to this location.
	 * Please note that the values set in width and height, as well as those
	 * in x_offset and y_offset are inclusive of the xpad and ypad properties.
	 * Params:
	 * cell =  a GtkCellRenderer
	 * widget =  the widget the renderer is rendering to
	 * cellArea =  The area a cell will be allocated, or NULL
	 * xOffset =  location to return x offset of cell relative to cell_area, or NULL
	 * yOffset =  location to return y offset of cell relative to cell_area, or NULL
	 * width =  location to return width needed to render a cell, or NULL
	 * height =  location to return height needed to render a cell, or NULL
	 */
	public void getSize(Widget widget, Rectangle cellArea, out int xOffset, out int yOffset, out int width, out int height)
	{
		// void gtk_cell_renderer_get_size (GtkCellRenderer *cell,  GtkWidget *widget,  GdkRectangle *cell_area,  gint *x_offset,  gint *y_offset,  gint *width,  gint *height);
		gtk_cell_renderer_get_size(gtkCellRenderer, (widget is null) ? null : widget.getWidgetStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), &xOffset, &yOffset, &width, &height);
	}
	
	/**
	 * Invokes the virtual render function of the GtkCellRenderer. The three
	 * passed-in rectangles are areas of window. Most renderers will draw within
	 * cell_area; the xalign, yalign, xpad, and ypad fields of the GtkCellRenderer
	 * should be honored with respect to cell_area. background_area includes the
	 * blank space around the cell, and also the area containing the tree expander;
	 * so the background_area rectangles for all cells tile to cover the entire
	 * window. expose_area is a clip rectangle.
	 * Params:
	 * cell =  a GtkCellRenderer
	 * window =  a GdkDrawable to draw to
	 * widget =  the widget owning window
	 * backgroundArea =  entire cell area (including tree expanders and maybe
	 *  padding on the sides)
	 * cellArea =  area normally rendered by a cell renderer
	 * exposeArea =  area that actually needs updating
	 * flags =  flags that affect rendering
	 */
	public void render(Window window, Widget widget, Rectangle backgroundArea, Rectangle cellArea, Rectangle exposeArea, GtkCellRendererState flags)
	{
		// void gtk_cell_renderer_render (GtkCellRenderer *cell,  GdkWindow *window,  GtkWidget *widget,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GdkRectangle *expose_area,  GtkCellRendererState flags);
		gtk_cell_renderer_render(gtkCellRenderer, (window is null) ? null : window.getWindowStruct(), (widget is null) ? null : widget.getWidgetStruct(), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), (exposeArea is null) ? null : exposeArea.getRectangleStruct(), flags);
	}
	
	/**
	 * Passes an activate event to the cell renderer for possible processing.
	 * Some cell renderers may use events; for example, GtkCellRendererToggle
	 * toggles when it gets a mouse click.
	 * Params:
	 * cell =  a GtkCellRenderer
	 * event =  a GdkEvent
	 * widget =  widget that received the event
	 * path =  widget-dependent string representation of the event location;
	 *  e.g. for GtkTreeView, a string representation of GtkTreePath
	 * backgroundArea =  background area as passed to gtk_cell_renderer_render()
	 * cellArea =  cell area as passed to gtk_cell_renderer_render()
	 * flags =  render flags
	 * Returns: TRUE if the event was consumed/handled
	 */
	public int activate(Event event, Widget widget, string path, Rectangle backgroundArea, Rectangle cellArea, GtkCellRendererState flags)
	{
		// gboolean gtk_cell_renderer_activate (GtkCellRenderer *cell,  GdkEvent *event,  GtkWidget *widget,  const gchar *path,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkCellRendererState flags);
		return gtk_cell_renderer_activate(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(path), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), flags);
	}
	
	/**
	 * Passes an activate event to the cell renderer for possible processing.
	 * Params:
	 * cell =  a GtkCellRenderer
	 * event =  a GdkEvent
	 * widget =  widget that received the event
	 * path =  widget-dependent string representation of the event location;
	 *  e.g. for GtkTreeView, a string representation of GtkTreePath
	 * backgroundArea =  background area as passed to gtk_cell_renderer_render()
	 * cellArea =  cell area as passed to gtk_cell_renderer_render()
	 * flags =  render flags
	 * Returns: A new GtkCellEditable, or NULL
	 */
	public CellEditableIF startEditing(Event event, Widget widget, string path, Rectangle backgroundArea, Rectangle cellArea, GtkCellRendererState flags)
	{
		// GtkCellEditable* gtk_cell_renderer_start_editing (GtkCellRenderer *cell,  GdkEvent *event,  GtkWidget *widget,  const gchar *path,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkCellRendererState flags);
		auto p = gtk_cell_renderer_start_editing(gtkCellRenderer, (event is null) ? null : event.getEventStruct(), (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(path), (backgroundArea is null) ? null : backgroundArea.getRectangleStruct(), (cellArea is null) ? null : cellArea.getRectangleStruct(), flags);
		if(p is null)
		{
			return null;
		}
		return new CellEditable(cast(GtkCellEditable*) p);
	}
	
	/**
	 * Warning
	 * gtk_cell_renderer_editing_canceled has been deprecated since version 2.6 and should not be used in newly-written code. Use gtk_cell_renderer_stop_editing() instead
	 * Causes the cell renderer to emit the "editing-canceled"
	 * signal.
	 * This function is for use only by implementations of cell renderers that
	 * need to notify the client program that an editing process was canceled
	 * and the changes were not committed.
	 * Since 2.4
	 */
	public void editingCanceled()
	{
		// void gtk_cell_renderer_editing_canceled (GtkCellRenderer *cell);
		gtk_cell_renderer_editing_canceled(gtkCellRenderer);
	}
	
	/**
	 * Informs the cell renderer that the editing is stopped.
	 * If canceled is TRUE, the cell renderer will emit the
	 * "editing-canceled" signal.
	 * This function should be called by cell renderer implementations
	 * in response to the "editing-done" signal of
	 * GtkCellEditable.
	 * Since 2.6
	 * Params:
	 * canceled =  TRUE if the editing has been canceled
	 */
	public void stopEditing(int canceled)
	{
		// void gtk_cell_renderer_stop_editing (GtkCellRenderer *cell,  gboolean canceled);
		gtk_cell_renderer_stop_editing(gtkCellRenderer, canceled);
	}
	
	/**
	 * Fills in width and height with the appropriate size of cell.
	 * Params:
	 * width =  location to fill in with the fixed width of the widget, or NULL
	 * height =  location to fill in with the fixed height of the widget, or NULL
	 */
	public void getFixedSize(out int width, out int height)
	{
		// void gtk_cell_renderer_get_fixed_size (GtkCellRenderer *cell,  gint *width,  gint *height);
		gtk_cell_renderer_get_fixed_size(gtkCellRenderer, &width, &height);
	}
	
	/**
	 * Sets the renderer size to be explicit, independent of the properties set.
	 * Params:
	 * width =  the width of the cell renderer, or -1
	 * height =  the height of the cell renderer, or -1
	 */
	public void setFixedSize(int width, int height)
	{
		// void gtk_cell_renderer_set_fixed_size (GtkCellRenderer *cell,  gint width,  gint height);
		gtk_cell_renderer_set_fixed_size(gtkCellRenderer, width, height);
	}
}
