/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkCellArea.html
 * outPack = gtk
 * outFile = CellArea
 * strct   = GtkCellArea
 * realStrct=
 * ctorStrct=
 * clss    = CellArea
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * 	- CellLayoutIF
 * prefixes:
 * 	- gtk_cell_area_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdarg
 * 	- cairo.Context
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gdk.Event
 * 	- gtk.CellAreaContext
 * 	- gtk.CellEditable
 * 	- gtk.CellEditableIF
 * 	- gtk.CellRenderer
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.Widget
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * structWrap:
 * 	- GList* -> ListG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GdkEvent* -> Event
 * 	- GtkCellAreaContext* -> CellAreaContext
 * 	- GtkCellEditable* -> CellEditableIF
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkWidget* -> Widget
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellArea;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import cairo.Context;
private import glib.Str;
private import glib.ListG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gdk.Event;
private import gtk.CellAreaContext;
private import gtk.CellEditable;
private import gtk.CellEditableIF;
private import gtk.CellRenderer;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;


version(Tango) {
	private import tango.core.Vararg;

	version = druntime;
} else version(D_Version2) {
	private import core.vararg;

	version = druntime;
} else {
	private import std.stdarg;
}


private import gobject.ObjectG;

/**
 * The GtkCellArea is an abstract class for GtkCellLayout widgets
 * (also referred to as "layouting widgets") to interface with an
 * arbitrary number of GtkCellRenderers and interact with the user
 * for a given GtkTreeModel row.
 *
 * The cell area handles events, focus navigation, drawing and
 * size requests and allocations for a given row of data.
 *
 * Usually users dont have to interact with the GtkCellArea directly
 * unless they are implementing a cell-layouting widget themselves.
 *
 * Requesting area sizes
 *
 * As outlined in GtkWidget's
 * geometry management section, GTK+ uses a height-for-width
 * geometry management system to compute the sizes of widgets and user
 * interfaces. GtkCellArea uses the same semantics to calculate the
 * size of an area for an arbitrary number of GtkTreeModel rows.
 *
 * When requesting the size of a cell area one needs to calculate
 * the size for a handful of rows, and this will be done differently by
 * different layouting widgets. For instance a GtkTreeViewColumn
 * always lines up the areas from top to bottom while a GtkIconView
 * on the other hand might enforce that all areas received the same
 * width and wrap the areas around, requesting height for more cell
 * areas when allocated less width.
 *
 * It's also important for areas to maintain some cell
 * alignments with areas rendered for adjacent rows (cells can
 * appear "columnized" inside an area even when the size of
 * cells are different in each row). For this reason the GtkCellArea
 * uses a GtkCellAreaContext object to store the alignments
 * and sizes along the way (as well as the overall largest minimum
 * and natural size for all the rows which have been calculated
 * with the said context).
 *
 * The GtkCellAreaContext is an opaque object specific to the
 * GtkCellArea which created it (see gtk_cell_area_create_context()).
 * The owning cell-layouting widget can create as many contexts as
 * it wishes to calculate sizes of rows which should receive the
 * same size in at least one orientation (horizontally or vertically),
 * However, it's important that the same GtkCellAreaContext which
 * was used to request the sizes for a given GtkTreeModel row be
 * used when rendering or processing events for that row.
 *
 * In order to request the width of all the rows at the root level
 * of a GtkTreeModel one would do the following:
 *
 * $(DDOC_COMMENT example)
 *
 * Note that in this example it's not important to observe the
 * returned minimum and natural width of the area for each row
 * unless the cell-layouting object is actually interested in the
 * widths of individual rows. The overall width is however stored
 * in the accompanying GtkCellAreaContext object and can be consulted
 * at any time.
 *
 * This can be useful since GtkCellLayout widgets usually have to
 * support requesting and rendering rows in treemodels with an
 * exceedingly large amount of rows. The GtkCellLayout widget in
 * that case would calculate the required width of the rows in an
 * idle or timeout source (see g_timeout_add()) and when the widget
 * is requested its actual width in GtkWidgetClass.get_preferred_width()
 * it can simply consult the width accumulated so far in the
 * GtkCellAreaContext object.
 *
 * A simple example where rows are rendered from top to bottom and
 * take up the full width of the layouting widget would look like:
 *
 * $(DDOC_COMMENT example)
 *
 * In the above example the Foo widget has to make sure that some
 * row sizes have been calculated (the amount of rows that Foo judged
 * was appropriate to request space for in a single timeout iteration)
 * before simply returning the amount of space required by the area via
 * the GtkCellAreaContext.
 *
 * Requesting the height for width (or width for height) of an area is
 * a similar task except in this case the GtkCellAreaContext does not
 * store the data (actually, it does not know how much space the layouting
 * widget plans to allocate it for every row. It's up to the layouting
 * widget to render each row of data with the appropriate height and
 * width which was requested by the GtkCellArea).
 *
 * In order to request the height for width of all the rows at the
 * root level of a GtkTreeModel one would do the following:
 *
 * $(DDOC_COMMENT example)
 *
 * Note that in the above example we would need to cache the heights
 * returned for each row so that we would know what sizes to render the
 * areas for each row. However we would only want to really cache the
 * heights if the request is intended for the layouting widgets real
 * allocation.
 *
 * In some cases the layouting widget is requested the height for an
 * arbitrary for_width, this is a special case for layouting widgets
 * who need to request size for tens of thousands of rows. For this
 * case it's only important that the layouting widget calculate
 * one reasonably sized chunk of rows and return that height
 * synchronously. The reasoning here is that any layouting widget is
 * at least capable of synchronously calculating enough height to fill
 * the screen height (or scrolled window height) in response to a single
 * call to GtkWidgetClass.get_preferred_height_for_width(). Returning
 * a perfect height for width that is larger than the screen area is
 * inconsequential since after the layouting receives an allocation
 * from a scrolled window it simply continues to drive the scrollbar
 * values while more and more height is required for the row heights
 * that are calculated in the background.
 *
 * <hr>
 *
 * Rendering Areas
 *
 * Once area sizes have been aquired at least for the rows in the
 * visible area of the layouting widget they can be rendered at
 * GtkWidgetClass.draw() time.
 *
 * A crude example of how to render all the rows at the root level
 * runs as follows:
 *
 * $(DDOC_COMMENT example)
 *
 * Note that the cached height in this example really depends on how
 * the layouting widget works. The layouting widget might decide to
 * give every row its minimum or natural height or, if the model content
 * is expected to fit inside the layouting widget without scrolling, it
 * would make sense to calculate the allocation for each row at
 * "size-allocate" time using gtk_distribute_natural_allocation().
 *
 * <hr>
 *
 * Handling Events and Driving Keyboard Focus
 *
 * Passing events to the area is as simple as handling events on any
 * normal widget and then passing them to the gtk_cell_area_event()
 * API as they come in. Usually GtkCellArea is only interested in
 * button events, however some customized derived areas can be implemented
 * who are interested in handling other events. Handling an event can
 * trigger the "focus-changed" signal to fire; as well as
 * "add-editable" in the case that an editable cell was
 * clicked and needs to start editing. You can call
 * gtk_cell_area_stop_editing() at any time to cancel any cell editing
 * that is currently in progress.
 *
 * The GtkCellArea drives keyboard focus from cell to cell in a way
 * similar to GtkWidget. For layouting widgets that support giving
 * focus to cells it's important to remember to pass GTK_CELL_RENDERER_FOCUSED
 * to the area functions for the row that has focus and to tell the
 * area to paint the focus at render time.
 *
 * Layouting widgets that accept focus on cells should implement the
 * GtkWidgetClass.focus() virtual method. The layouting widget is always
 * responsible for knowing where GtkTreeModel rows are rendered inside
 * the widget, so at GtkWidgetClass.focus() time the layouting widget
 * should use the GtkCellArea methods to navigate focus inside the area
 * and then observe the GtkDirectionType to pass the focus to adjacent
 * rows and areas.
 *
 * A basic example of how the GtkWidgetClass.focus() virtual method
 * should be implemented:
 *
 * $(DDOC_COMMENT example)
 *
 * Note that the layouting widget is responsible for matching the
 * GtkDirectionType values to the way it lays out its cells.
 *
 * <hr>
 *
 * Cell Properties
 *
 * The GtkCellArea introduces cell properties
 * for GtkCellRenderers in very much the same way that GtkContainer
 * introduces child properties
 * for GtkWidgets. This provides some general interfaces for defining
 * the relationship cell areas have with their cells. For instance in a
 * GtkCellAreaBox a cell might "expand" and receive extra space when
 * the area is allocated more than its full natural request, or a cell
 * might be configured to "align" with adjacent rows which were requested
 * and rendered with the same GtkCellAreaContext.
 *
 * Use gtk_cell_area_class_install_cell_property() to install cell
 * properties for a cell area class and gtk_cell_area_class_find_cell_property()
 * or gtk_cell_area_class_list_cell_properties() to get information about
 * existing cell properties.
 *
 * To set the value of a cell property, use gtk_cell_area_cell_set_property(),
 * gtk_cell_area_cell_set() or gtk_cell_area_cell_set_valist(). To obtain
 * the value of a cell property, use gtk_cell_area_cell_get_property(),
 * gtk_cell_area_cell_get() or gtk_cell_area_cell_get_valist().
 */
public class CellArea : ObjectG, BuildableIF, CellLayoutIF
{
	
	/** the main Gtk struct */
	protected GtkCellArea* gtkCellArea;
	
	
	public GtkCellArea* getCellAreaStruct()
	{
		return gtkCellArea;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellArea;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellArea* gtkCellArea)
	{
		super(cast(GObject*)gtkCellArea);
		this.gtkCellArea = gtkCellArea;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellArea = cast(GtkCellArea*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkCellArea);
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkCellArea);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(CellRenderer, CellEditableIF, GdkRectangle*, string, CellArea)[] onAddEditableListeners;
	/**
	 * Indicates that editing has started on renderer and that editable
	 * should be added to the owning cell-layouting widget at cell_area.
	 * Since 3.0
	 */
	void addOnAddEditable(void delegate(CellRenderer, CellEditableIF, GdkRectangle*, string, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("add-editable" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"add-editable",
			cast(GCallback)&callBackAddEditable,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["add-editable"] = 1;
		}
		onAddEditableListeners ~= dlg;
	}
	extern(C) static void callBackAddEditable(GtkCellArea* areaStruct, GtkCellRenderer* renderer, GtkCellEditable* editable, GdkRectangle* cellArea, gchar* path, CellArea _cellArea)
	{
		foreach ( void delegate(CellRenderer, CellEditableIF, GdkRectangle*, string, CellArea) dlg ; _cellArea.onAddEditableListeners )
		{
			dlg(ObjectG.getDObject!(CellRenderer)(renderer), ObjectG.getDObject!(CellEditable)(editable), cellArea, Str.toString(path), _cellArea);
		}
	}
	
	void delegate(TreeModelIF, TreeIter, gboolean, gboolean, CellArea)[] onApplyAttributesListeners;
	/**
	 * This signal is emitted whenever applying attributes to area from model
	 * Since 3.0
	 */
	void addOnApplyAttributes(void delegate(TreeModelIF, TreeIter, gboolean, gboolean, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("apply-attributes" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"apply-attributes",
			cast(GCallback)&callBackApplyAttributes,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["apply-attributes"] = 1;
		}
		onApplyAttributesListeners ~= dlg;
	}
	extern(C) static void callBackApplyAttributes(GtkCellArea* areaStruct, GtkTreeModel* model, GtkTreeIter* iter, gboolean isExpander, gboolean isExpanded, CellArea _cellArea)
	{
		foreach ( void delegate(TreeModelIF, TreeIter, gboolean, gboolean, CellArea) dlg ; _cellArea.onApplyAttributesListeners )
		{
			dlg(ObjectG.getDObject!(TreeModel)(model), ObjectG.getDObject!(TreeIter)(iter), isExpander, isExpanded, _cellArea);
		}
	}
	
	void delegate(CellRenderer, string, CellArea)[] onFocusChangedListeners;
	/**
	 * Indicates that focus changed on this area. This signal
	 * is emitted either as a result of focus handling or event
	 * handling.
	 * It's possible that the signal is emitted even if the
	 * currently focused renderer did not change, this is
	 * because focus may change to the same renderer in the
	 * same cell area for a different row of data.
	 * Since 3.0
	 */
	void addOnFocusChanged(void delegate(CellRenderer, string, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-changed",
			cast(GCallback)&callBackFocusChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-changed"] = 1;
		}
		onFocusChangedListeners ~= dlg;
	}
	extern(C) static void callBackFocusChanged(GtkCellArea* areaStruct, GtkCellRenderer* renderer, gchar* path, CellArea _cellArea)
	{
		foreach ( void delegate(CellRenderer, string, CellArea) dlg ; _cellArea.onFocusChangedListeners )
		{
			dlg(ObjectG.getDObject!(CellRenderer)(renderer), Str.toString(path), _cellArea);
		}
	}
	
	void delegate(CellRenderer, CellEditableIF, CellArea)[] onRemoveEditableListeners;
	/**
	 * Indicates that editing finished on renderer and that editable
	 * should be removed from the owning cell-layouting widget.
	 * Since 3.0
	 */
	void addOnRemoveEditable(void delegate(CellRenderer, CellEditableIF, CellArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("remove-editable" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove-editable",
			cast(GCallback)&callBackRemoveEditable,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["remove-editable"] = 1;
		}
		onRemoveEditableListeners ~= dlg;
	}
	extern(C) static void callBackRemoveEditable(GtkCellArea* areaStruct, GtkCellRenderer* renderer, GtkCellEditable* editable, CellArea _cellArea)
	{
		foreach ( void delegate(CellRenderer, CellEditableIF, CellArea) dlg ; _cellArea.onRemoveEditableListeners )
		{
			dlg(ObjectG.getDObject!(CellRenderer)(renderer), ObjectG.getDObject!(CellEditable)(editable), _cellArea);
		}
	}
	
	
	/**
	 * Adds renderer to area with the default child cell properties.
	 * Params:
	 * renderer = the GtkCellRenderer to add to area
	 * Since 3.0
	 */
	public void add(CellRenderer renderer)
	{
		// void gtk_cell_area_add (GtkCellArea *area,  GtkCellRenderer *renderer);
		gtk_cell_area_add(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}
	
	/**
	 * Removes renderer from area.
	 * Params:
	 * renderer = the GtkCellRenderer to remove from area
	 * Since 3.0
	 */
	public void remove(CellRenderer renderer)
	{
		// void gtk_cell_area_remove (GtkCellArea *area,  GtkCellRenderer *renderer);
		gtk_cell_area_remove(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}
	
	/**
	 * Checks if area contains renderer.
	 * Params:
	 * renderer = the GtkCellRenderer to check
	 * Returns: TRUE if renderer is in the area. Since 3.0
	 */
	public int hasRenderer(CellRenderer renderer)
	{
		// gboolean gtk_cell_area_has_renderer (GtkCellArea *area,  GtkCellRenderer *renderer);
		return gtk_cell_area_has_renderer(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}
	
	/**
	 * Calls callback for every GtkCellRenderer in area.
	 * Params:
	 * callback = the GtkCellCallback to call. [scope call]
	 * callbackData = user provided data pointer
	 * Since 3.0
	 */
	public void foreac(GtkCellCallback callback, void* callbackData)
	{
		// void gtk_cell_area_foreach (GtkCellArea *area,  GtkCellCallback callback,  gpointer callback_data);
		gtk_cell_area_foreach(gtkCellArea, callback, callbackData);
	}
	
	/**
	 * Calls callback for every GtkCellRenderer in area with the
	 * allocated rectangle inside cell_area.
	 * Params:
	 * context = the GtkCellAreaContext for this row of data.
	 * widget = the GtkWidget that area is rendering to
	 * cellArea = the widget relative coordinates and size for area
	 * backgroundArea = the widget relative coordinates of the background area
	 * callback = the GtkCellAllocCallback to call. [scope call]
	 * callbackData = user provided data pointer
	 * Since 3.0
	 */
	public void foreachAlloc(CellAreaContext context, Widget widget, ref Rectangle cellArea, ref Rectangle backgroundArea, GtkCellAllocCallback callback, void* callbackData)
	{
		// void gtk_cell_area_foreach_alloc (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  const GdkRectangle *cell_area,  const GdkRectangle *background_area,  GtkCellAllocCallback callback,  gpointer callback_data);
		gtk_cell_area_foreach_alloc(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &cellArea, &backgroundArea, callback, callbackData);
	}
	
	/**
	 * Delegates event handling to a GtkCellArea.
	 * Params:
	 * context = the GtkCellAreaContext for this row of data.
	 * widget = the GtkWidget that area is rendering to
	 * event = the GdkEvent to handle
	 * cellArea = the widget relative coordinates for area
	 * flags = the GtkCellRendererState for area in this row.
	 * Returns: TRUE if the event was handled by area. Since 3.0
	 */
	public int event(CellAreaContext context, Widget widget, Event event, ref Rectangle cellArea, GtkCellRendererState flags)
	{
		// gint gtk_cell_area_event (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  GdkEvent *event,  const GdkRectangle *cell_area,  GtkCellRendererState flags);
		return gtk_cell_area_event(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (event is null) ? null : event.getEventStruct(), &cellArea, flags);
	}
	
	/**
	 * Renders area's cells according to area's layout onto widget at
	 * the given coordinates.
	 * Params:
	 * context = the GtkCellAreaContext for this row of data.
	 * widget = the GtkWidget that area is rendering to
	 * cr = the cairo_t to render with
	 * backgroundArea = the widget relative coordinates for area's background
	 * cellArea = the widget relative coordinates for area
	 * flags = the GtkCellRendererState for area in this row.
	 * paintFocus = whether area should paint focus on focused cells for focused rows or not.
	 * Since 3.0
	 */
	public void render(CellAreaContext context, Widget widget, Context cr, ref Rectangle backgroundArea, ref Rectangle cellArea, GtkCellRendererState flags, int paintFocus)
	{
		// void gtk_cell_area_render (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  cairo_t *cr,  const GdkRectangle *background_area,  const GdkRectangle *cell_area,  GtkCellRendererState flags,  gboolean paint_focus);
		gtk_cell_area_render(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (cr is null) ? null : cr.getContextStruct(), &backgroundArea, &cellArea, flags, paintFocus);
	}
	
	/**
	 * Derives the allocation of renderer inside area if area
	 * were to be renderered in cell_area.
	 * Params:
	 * context = the GtkCellAreaContext used to hold sizes for area.
	 * widget = the GtkWidget that area is rendering on
	 * renderer = the GtkCellRenderer to get the allocation for
	 * cellArea = the whole allocated area for area in widget
	 * for this row
	 * allocation = where to store the allocation for renderer. [out]
	 * Since 3.0
	 */
	public void getCellAllocation(CellAreaContext context, Widget widget, CellRenderer renderer, ref Rectangle cellArea, out Rectangle allocation)
	{
		// void gtk_cell_area_get_cell_allocation (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  GtkCellRenderer *renderer,  const GdkRectangle *cell_area,  GdkRectangle *allocation);
		gtk_cell_area_get_cell_allocation(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), (renderer is null) ? null : renderer.getCellRendererStruct(), &cellArea, &allocation);
	}
	
	/**
	 * Gets the GtkCellRenderer at x and y coordinates inside area and optionally
	 * returns the full cell allocation for it inside cell_area.
	 * Params:
	 * context = the GtkCellAreaContext used to hold sizes for area.
	 * widget = the GtkWidget that area is rendering on
	 * cellArea = the whole allocated area for area in widget
	 * for this row
	 * x = the x position
	 * y = the y position
	 * allocArea = where to store the inner allocated area of the
	 * returned cell renderer, or NULL. [out][allow-none]
	 * Returns: the GtkCellRenderer at x and y. [transfer none] Since 3.0
	 */
	public CellRenderer getCellAtPosition(CellAreaContext context, Widget widget, ref Rectangle cellArea, int x, int y, out Rectangle allocArea)
	{
		// GtkCellRenderer * gtk_cell_area_get_cell_at_position (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  const GdkRectangle *cell_area,  gint x,  gint y,  GdkRectangle *alloc_area);
		auto p = gtk_cell_area_get_cell_at_position(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &cellArea, x, y, &allocArea);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) p);
	}
	
	/**
	 * Creates a GtkCellAreaContext to be used with area for
	 * all purposes. GtkCellAreaContext stores geometry information
	 * for rows for which it was operated on, it is important to use
	 * the same context for the same row of data at all times (i.e.
	 * one should render and handle events with the same GtkCellAreaContext
	 * which was used to request the size of those rows of data).
	 * Returns: a newly created GtkCellAreaContext which can be used with area. [transfer full] Since 3.0
	 */
	public CellAreaContext createContext()
	{
		// GtkCellAreaContext * gtk_cell_area_create_context (GtkCellArea *area);
		auto p = gtk_cell_area_create_context(gtkCellArea);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellAreaContext)(cast(GtkCellAreaContext*) p);
	}
	
	/**
	 * This is sometimes needed for cases where rows need to share
	 * alignments in one orientation but may be separately grouped
	 * in the opposing orientation.
	 * For instance, GtkIconView creates all icons (rows) to have
	 * the same width and the cells theirin to have the same
	 * horizontal alignments. However each row of icons may have
	 * a separate collective height. GtkIconView uses this to
	 * request the heights of each row based on a context which
	 * was already used to request all the row widths that are
	 * to be displayed.
	 * Params:
	 * context = the GtkCellAreaContext to copy
	 * Returns: a newly created GtkCellAreaContext copy of context. [transfer full] Since 3.0
	 */
	public CellAreaContext copyContext(CellAreaContext context)
	{
		// GtkCellAreaContext * gtk_cell_area_copy_context (GtkCellArea *area,  GtkCellAreaContext *context);
		auto p = gtk_cell_area_copy_context(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellAreaContext)(cast(GtkCellAreaContext*) p);
	}
	
	/**
	 * Gets whether the area prefers a height-for-width layout
	 * or a width-for-height layout.
	 * Returns: The GtkSizeRequestMode preferred by area. Since 3.0
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		// GtkSizeRequestMode gtk_cell_area_get_request_mode (GtkCellArea *area);
		return gtk_cell_area_get_request_mode(gtkCellArea);
	}
	
	/**
	 * Retrieves a cell area's initial minimum and natural width.
	 * area will store some geometrical information in context along the way;
	 * when requesting sizes over an arbitrary number of rows, it's not important
	 * to check the minimum_width and natural_width of this call but rather to
	 * consult gtk_cell_area_context_get_preferred_width() after a series of
	 * requests.
	 * Params:
	 * context = the GtkCellAreaContext to perform this request with
	 * widget = the GtkWidget where area will be rendering
	 * minimumWidth = location to store the minimum width, or NULL. [out][allow-none]
	 * naturalWidth = location to store the natural width, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredWidth(CellAreaContext context, Widget widget, out int minimumWidth, out int naturalWidth)
	{
		// void gtk_cell_area_get_preferred_width (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  gint *minimum_width,  gint *natural_width);
		gtk_cell_area_get_preferred_width(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &minimumWidth, &naturalWidth);
	}
	
	/**
	 * Retrieves a cell area's minimum and natural height if it would be given
	 * the specified width.
	 * area stores some geometrical information in context along the way
	 * while calling gtk_cell_area_get_preferred_width(). It's important to
	 * perform a series of gtk_cell_area_get_preferred_width() requests with
	 * context first and then call gtk_cell_area_get_preferred_height_for_width()
	 * on each cell area individually to get the height for width of each
	 * fully requested row.
	 * If at some point, the width of a single row changes, it should be
	 * requested with gtk_cell_area_get_preferred_width() again and then
	 * the full width of the requested rows checked again with
	 * gtk_cell_area_context_get_preferred_width().
	 * Params:
	 * context = the GtkCellAreaContext which has already been requested for widths.
	 * widget = the GtkWidget where area will be rendering
	 * width = the width for which to check the height of this area
	 * minimumHeight = location to store the minimum height, or NULL. [out][allow-none]
	 * naturalHeight = location to store the natural height, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredHeightForWidth(CellAreaContext context, Widget widget, int width, out int minimumHeight, out int naturalHeight)
	{
		// void gtk_cell_area_get_preferred_height_for_width  (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  gint width,  gint *minimum_height,  gint *natural_height);
		gtk_cell_area_get_preferred_height_for_width(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), width, &minimumHeight, &naturalHeight);
	}
	
	/**
	 * Retrieves a cell area's initial minimum and natural height.
	 * area will store some geometrical information in context along the way;
	 * when requesting sizes over an arbitrary number of rows, it's not important
	 * to check the minimum_height and natural_height of this call but rather to
	 * consult gtk_cell_area_context_get_preferred_height() after a series of
	 * requests.
	 * Params:
	 * context = the GtkCellAreaContext to perform this request with
	 * widget = the GtkWidget where area will be rendering
	 * minimumHeight = location to store the minimum height, or NULL. [out][allow-none]
	 * naturalHeight = location to store the natural height, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredHeight(CellAreaContext context, Widget widget, out int minimumHeight, out int naturalHeight)
	{
		// void gtk_cell_area_get_preferred_height (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  gint *minimum_height,  gint *natural_height);
		gtk_cell_area_get_preferred_height(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &minimumHeight, &naturalHeight);
	}
	
	/**
	 * Retrieves a cell area's minimum and natural width if it would be given
	 * the specified height.
	 * area stores some geometrical information in context along the way
	 * while calling gtk_cell_area_get_preferred_height(). It's important to
	 * perform a series of gtk_cell_area_get_preferred_height() requests with
	 * context first and then call gtk_cell_area_get_preferred_width_for_height()
	 * on each cell area individually to get the height for width of each
	 * fully requested row.
	 * If at some point, the height of a single row changes, it should be
	 * requested with gtk_cell_area_get_preferred_height() again and then
	 * the full height of the requested rows checked again with
	 * gtk_cell_area_context_get_preferred_height().
	 * Params:
	 * context = the GtkCellAreaContext which has already been requested for widths.
	 * widget = the GtkWidget where area will be rendering
	 * height = the height for which to check the width of this area
	 * minimumWidth = location to store the minimum width, or NULL. [out][allow-none]
	 * naturalWidth = location to store the natural width, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPreferredWidthForHeight(CellAreaContext context, Widget widget, int height, out int minimumWidth, out int naturalWidth)
	{
		// void gtk_cell_area_get_preferred_width_for_height  (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  gint height,  gint *minimum_width,  gint *natural_width);
		gtk_cell_area_get_preferred_width_for_height(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), height, &minimumWidth, &naturalWidth);
	}
	
	/**
	 * Gets the current GtkTreePath string for the currently
	 * applied GtkTreeIter, this is implicitly updated when
	 * gtk_cell_area_apply_attributes() is called and can be
	 * used to interact with renderers from GtkCellArea
	 * subclasses.
	 * Returns: The current GtkTreePath string for the current attributes applied to area. This string belongs to the area and should not be freed. Since 3.0
	 */
	public string getCurrentPathString()
	{
		// const gchar * gtk_cell_area_get_current_path_string  (GtkCellArea *area);
		return Str.toString(gtk_cell_area_get_current_path_string(gtkCellArea));
	}
	
	/**
	 * Applies any connected attributes to the renderers in
	 * area by pulling the values from tree_model.
	 * Params:
	 * treeModel = the GtkTreeModel to pull values from
	 * iter = the GtkTreeIter in tree_model to apply values for
	 * isExpander = whether iter has children
	 * isExpanded = whether iter is expanded in the view and
	 * children are visible
	 * Since 3.0
	 */
	public void applyAttributes(TreeModelIF treeModel, TreeIter iter, int isExpander, int isExpanded)
	{
		// void gtk_cell_area_apply_attributes (GtkCellArea *area,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gboolean is_expander,  gboolean is_expanded);
		gtk_cell_area_apply_attributes(gtkCellArea, (treeModel is null) ? null : treeModel.getTreeModelTStruct(), (iter is null) ? null : iter.getTreeIterStruct(), isExpander, isExpanded);
	}
	
	/**
	 * Connects an attribute to apply values from column for the
	 * GtkTreeModel in use.
	 * Params:
	 * renderer = the GtkCellRenderer to connect an attribute for
	 * attribute = the attribute name
	 * column = the GtkTreeModel column to fetch attribute values from
	 * Since 3.0
	 */
	public void attributeConnect(CellRenderer renderer, string attribute, int column)
	{
		// void gtk_cell_area_attribute_connect (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *attribute,  gint column);
		gtk_cell_area_attribute_connect(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(attribute), column);
	}
	
	/**
	 * Disconnects attribute for the renderer in area so that
	 * attribute will no longer be updated with values from the
	 * model.
	 * Params:
	 * renderer = the GtkCellRenderer to disconnect an attribute for
	 * attribute = the attribute name
	 * Since 3.0
	 */
	public void attributeDisconnect(CellRenderer renderer, string attribute)
	{
		// void gtk_cell_area_attribute_disconnect (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *attribute);
		gtk_cell_area_attribute_disconnect(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(attribute));
	}
	
	/**
	 * Installs a cell property on a cell area class.
	 * Params:
	 * aclass = a GtkCellAreaClass
	 * propertyId = the id for the property
	 * pspec = the GParamSpec for the property
	 * Since 3.0
	 */
	public static void classInstallCellProperty(GtkCellAreaClass* aclass, uint propertyId, ParamSpec pspec)
	{
		// void gtk_cell_area_class_install_cell_property  (GtkCellAreaClass *aclass,  guint property_id,  GParamSpec *pspec);
		gtk_cell_area_class_install_cell_property(aclass, propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Finds a cell property of a cell area class by name.
	 * Params:
	 * aclass = a GtkCellAreaClass
	 * propertyName = the name of the child property to find
	 * Returns: the GParamSpec of the child property or NULL if aclass has no child property with that name. [transfer none] Since 3.0
	 */
	public static ParamSpec classFindCellProperty(GtkCellAreaClass* aclass, string propertyName)
	{
		// GParamSpec * gtk_cell_area_class_find_cell_property  (GtkCellAreaClass *aclass,  const gchar *property_name);
		auto p = gtk_cell_area_class_find_cell_property(aclass, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Returns all cell properties of a cell area class.
	 * Params:
	 * aclass = a GtkCellAreaClass
	 * Returns: a newly allocated NULL-terminated array of GParamSpec*. The array must be freed with g_free(). [array length=n_properties][transfer container] Since 3.0
	 */
	public static ParamSpec[] classListCellProperties(GtkCellAreaClass* aclass)
	{
		// GParamSpec ** gtk_cell_area_class_list_cell_properties  (GtkCellAreaClass *aclass,  guint *n_properties);
		uint nProperties;
		auto p = gtk_cell_area_class_list_cell_properties(aclass, &nProperties);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Sets one or more cell properties for renderer in area.
	 * Params:
	 * renderer = a GtkCellRenderer which inside area
	 * firstPropertyName = the name of the first cell property to set
	 * varArgs = a NULL-terminated list of property names and values, starting
	 * with first_prop_name
	 * Since 3.0
	 */
	public void cellSetValist(CellRenderer renderer, string firstPropertyName, void* varArgs)
	{
		// void gtk_cell_area_cell_set_valist (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *first_property_name,  va_list var_args);
		gtk_cell_area_cell_set_valist(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Gets the values of one or more cell properties for renderer in area.
	 * Params:
	 * renderer = a GtkCellRenderer inside area
	 * firstPropertyName = the name of the first property to get
	 * varArgs = return location for the first property, followed
	 * optionally by more name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void cellGetValist(CellRenderer renderer, string firstPropertyName, void* varArgs)
	{
		// void gtk_cell_area_cell_get_valist (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *first_property_name,  va_list var_args);
		gtk_cell_area_cell_get_valist(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Sets a cell property for renderer in area.
	 * Params:
	 * renderer = a GtkCellRenderer inside area
	 * propertyName = the name of the cell property to set
	 * value = the value to set the cell property to
	 * Since 3.0
	 */
	public void cellSetProperty(CellRenderer renderer, string propertyName, Value value)
	{
		// void gtk_cell_area_cell_set_property (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *property_name,  const GValue *value);
		gtk_cell_area_cell_set_property(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the value of a cell property for renderer in area.
	 * Params:
	 * renderer = a GtkCellRenderer inside area
	 * propertyName = the name of the property to get
	 * value = a location to return the value
	 * Since 3.0
	 */
	public void cellGetProperty(CellRenderer renderer, string propertyName, Value value)
	{
		// void gtk_cell_area_cell_get_property (GtkCellArea *area,  GtkCellRenderer *renderer,  const gchar *property_name,  GValue *value);
		gtk_cell_area_cell_get_property(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Returns whether the area can do anything when activated,
	 * after applying new attributes to area.
	 * Returns: whether area can do anything when activated. Since 3.0
	 */
	public int isActivatable()
	{
		// gboolean gtk_cell_area_is_activatable (GtkCellArea *area);
		return gtk_cell_area_is_activatable(gtkCellArea);
	}
	
	/**
	 * Activates area, usually by activating the currently focused
	 * cell, however some subclasses which embed widgets in the area
	 * can also activate a widget if it currently has the focus.
	 * Params:
	 * context = the GtkCellAreaContext in context with the current row data
	 * widget = the GtkWidget that area is rendering on
	 * cellArea = the size and location of area relative to widget's allocation
	 * flags = the GtkCellRendererState flags for area for this row of data.
	 * editOnly = if TRUE then only cell renderers that are GTK_CELL_RENDERER_MODE_EDITABLE
	 * will be activated.
	 * Returns: Whether area was successfully activated. Since 3.0
	 */
	public int activate(CellAreaContext context, Widget widget, ref Rectangle cellArea, GtkCellRendererState flags, int editOnly)
	{
		// gboolean gtk_cell_area_activate (GtkCellArea *area,  GtkCellAreaContext *context,  GtkWidget *widget,  const GdkRectangle *cell_area,  GtkCellRendererState flags,  gboolean edit_only);
		return gtk_cell_area_activate(gtkCellArea, (context is null) ? null : context.getCellAreaContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), &cellArea, flags, editOnly);
	}
	
	/**
	 * This should be called by the area's owning layout widget
	 * when focus is to be passed to area, or moved within area
	 * for a given direction and row data.
	 * Implementing GtkCellArea classes should implement this
	 * method to receive and navigate focus in its own way particular
	 * to how it lays out cells.
	 * Params:
	 * direction = the GtkDirectionType
	 * Returns: TRUE if focus remains inside area as a result of this call. Since 3.0
	 */
	public int focus(GtkDirectionType direction)
	{
		// gboolean gtk_cell_area_focus (GtkCellArea *area,  GtkDirectionType direction);
		return gtk_cell_area_focus(gtkCellArea, direction);
	}
	
	/**
	 * Explicitly sets the currently focused cell to renderer.
	 * This is generally called by implementations of
	 * GtkCellAreaClass.focus() or GtkCellAreaClass.event(),
	 * however it can also be used to implement functions such
	 * as gtk_tree_view_set_cursor_on_cell().
	 * Params:
	 * renderer = the GtkCellRenderer to give focus to
	 * Since 3.0
	 */
	public void setFocusCell(CellRenderer renderer)
	{
		// void gtk_cell_area_set_focus_cell (GtkCellArea *area,  GtkCellRenderer *renderer);
		gtk_cell_area_set_focus_cell(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
	}
	
	/**
	 * Retrieves the currently focused cell for area
	 * Returns: the currently focused cell in area. [transfer none] Since 3.0
	 */
	public CellRenderer getFocusCell()
	{
		// GtkCellRenderer * gtk_cell_area_get_focus_cell (GtkCellArea *area);
		auto p = gtk_cell_area_get_focus_cell(gtkCellArea);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) p);
	}
	
	/**
	 * Adds sibling to renderer's focusable area, focus will be drawn
	 * around renderer and all of its siblings if renderer can
	 * focus for a given row.
	 * Events handled by focus siblings can also activate the given
	 * focusable renderer.
	 * Params:
	 * renderer = the GtkCellRenderer expected to have focus
	 * sibling = the GtkCellRenderer to add to renderer's focus area
	 * Since 3.0
	 */
	public void addFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		// void gtk_cell_area_add_focus_sibling (GtkCellArea *area,  GtkCellRenderer *renderer,  GtkCellRenderer *sibling);
		gtk_cell_area_add_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct());
	}
	
	/**
	 * Removes sibling from renderer's focus sibling list
	 * (see gtk_cell_area_add_focus_sibling()).
	 * Params:
	 * renderer = the GtkCellRenderer expected to have focus
	 * sibling = the GtkCellRenderer to remove from renderer's focus area
	 * Since 3.0
	 */
	public void removeFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		// void gtk_cell_area_remove_focus_sibling (GtkCellArea *area,  GtkCellRenderer *renderer,  GtkCellRenderer *sibling);
		gtk_cell_area_remove_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct());
	}
	
	/**
	 * Returns whether sibling is one of renderer's focus siblings
	 * (see gtk_cell_area_add_focus_sibling()).
	 * Params:
	 * renderer = the GtkCellRenderer expected to have focus
	 * sibling = the GtkCellRenderer to check against renderer's sibling list
	 * Returns: TRUE if sibling is a focus sibling of renderer Since 3.0
	 */
	public int isFocusSibling(CellRenderer renderer, CellRenderer sibling)
	{
		// gboolean gtk_cell_area_is_focus_sibling (GtkCellArea *area,  GtkCellRenderer *renderer,  GtkCellRenderer *sibling);
		return gtk_cell_area_is_focus_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), (sibling is null) ? null : sibling.getCellRendererStruct());
	}
	
	/**
	 * Gets the focus sibling cell renderers for renderer.
	 * Params:
	 * renderer = the GtkCellRenderer expected to have focus
	 * Returns: A GList of GtkCellRenderers. The returned list is internal and should not be freed. [element-type GtkCellRenderer][transfer none] Since 3.0
	 */
	public ListG getFocusSiblings(CellRenderer renderer)
	{
		// const GList * gtk_cell_area_get_focus_siblings (GtkCellArea *area,  GtkCellRenderer *renderer);
		auto p = gtk_cell_area_get_focus_siblings(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the GtkCellRenderer which is expected to be focusable
	 * for which renderer is, or may be a sibling.
	 * This is handy for GtkCellArea subclasses when handling events,
	 * after determining the renderer at the event location it can
	 * then chose to activate the focus cell for which the event
	 * cell may have been a sibling.
	 * Params:
	 * renderer = the GtkCellRenderer
	 * Returns: the GtkCellRenderer for which renderer is a sibling, or NULL. [transfer none] Since 3.0
	 */
	public CellRenderer getFocusFromSibling(CellRenderer renderer)
	{
		// GtkCellRenderer * gtk_cell_area_get_focus_from_sibling  (GtkCellArea *area,  GtkCellRenderer *renderer);
		auto p = gtk_cell_area_get_focus_from_sibling(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) p);
	}
	
	/**
	 * Gets the GtkCellRenderer in area that is currently
	 * being edited.
	 * Returns: The currently edited GtkCellRenderer. [transfer none] Since 3.0
	 */
	public CellRenderer getEditedCell()
	{
		// GtkCellRenderer * gtk_cell_area_get_edited_cell (GtkCellArea *area);
		auto p = gtk_cell_area_get_edited_cell(gtkCellArea);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellRenderer)(cast(GtkCellRenderer*) p);
	}
	
	/**
	 * Gets the GtkCellEditable widget currently used
	 * to edit the currently edited cell.
	 * Returns: The currently active GtkCellEditable widget. [transfer none] Since 3.0
	 */
	public CellEditableIF getEditWidget()
	{
		// GtkCellEditable * gtk_cell_area_get_edit_widget (GtkCellArea *area);
		auto p = gtk_cell_area_get_edit_widget(gtkCellArea);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellEditable)(cast(GtkCellEditable*) p);
	}
	
	/**
	 * This is used by GtkCellArea subclasses when handling events
	 * to activate cells, the base GtkCellArea class activates cells
	 * for keyboard events for free in its own GtkCellArea->activate()
	 * implementation.
	 * Params:
	 * widget = the GtkWidget that area is rendering onto
	 * renderer = the GtkCellRenderer in area to activate
	 * event = the GdkEvent for which cell activation should occur
	 * cellArea = the GdkRectangle in widget relative coordinates
	 * of renderer for the current row.
	 * flags = the GtkCellRendererState for renderer
	 * Returns: whether cell activation was successful Since 3.0
	 */
	public int activateCell(Widget widget, CellRenderer renderer, Event event, ref Rectangle cellArea, GtkCellRendererState flags)
	{
		// gboolean gtk_cell_area_activate_cell (GtkCellArea *area,  GtkWidget *widget,  GtkCellRenderer *renderer,  GdkEvent *event,  const GdkRectangle *cell_area,  GtkCellRendererState flags);
		return gtk_cell_area_activate_cell(gtkCellArea, (widget is null) ? null : widget.getWidgetStruct(), (renderer is null) ? null : renderer.getCellRendererStruct(), (event is null) ? null : event.getEventStruct(), &cellArea, flags);
	}
	
	/**
	 * Explicitly stops the editing of the currently edited cell.
	 * If canceled is TRUE, the currently edited cell renderer
	 * will emit the ::editing-canceled signal, otherwise the
	 * the ::editing-done signal will be emitted on the current
	 * edit widget.
	 * See gtk_cell_area_get_edited_cell() and gtk_cell_area_get_edit_widget().
	 * Params:
	 * canceled = whether editing was canceled.
	 * Since 3.0
	 */
	public void stopEditing(int canceled)
	{
		// void gtk_cell_area_stop_editing (GtkCellArea *area,  gboolean canceled);
		gtk_cell_area_stop_editing(gtkCellArea, canceled);
	}
	
	/**
	 * This is a convenience function for GtkCellArea implementations
	 * to get the inner area where a given GtkCellRenderer will be
	 * rendered. It removes any padding previously added by gtk_cell_area_request_renderer().
	 * Params:
	 * widget = the GtkWidget that area is rendering onto
	 * cellArea = the widget relative coordinates where one of area's cells
	 * is to be placed
	 * innerArea = the return location for the inner cell area. [out]
	 * Since 3.0
	 */
	public void innerCellArea(Widget widget, ref Rectangle cellArea, out Rectangle innerArea)
	{
		// void gtk_cell_area_inner_cell_area (GtkCellArea *area,  GtkWidget *widget,  const GdkRectangle *cell_area,  GdkRectangle *inner_area);
		gtk_cell_area_inner_cell_area(gtkCellArea, (widget is null) ? null : widget.getWidgetStruct(), &cellArea, &innerArea);
	}
	
	/**
	 * This is a convenience function for GtkCellArea implementations
	 * to request size for cell renderers. It's important to use this
	 * function to request size and then use gtk_cell_area_inner_cell_area()
	 * at render and event time since this function will add padding
	 * around the cell for focus painting.
	 * Params:
	 * renderer = the GtkCellRenderer to request size for
	 * orientation = the GtkOrientation in which to request size
	 * widget = the GtkWidget that area is rendering onto
	 * forSize = the allocation contextual size to request for, or -1 if
	 * the base request for the orientation is to be returned.
	 * minimumSize = location to store the minimum size, or NULL. [out][allow-none]
	 * naturalSize = location to store the natural size, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void requestRenderer(CellRenderer renderer, GtkOrientation orientation, Widget widget, int forSize, out int minimumSize, out int naturalSize)
	{
		// void gtk_cell_area_request_renderer (GtkCellArea *area,  GtkCellRenderer *renderer,  GtkOrientation orientation,  GtkWidget *widget,  gint for_size,  gint *minimum_size,  gint *natural_size);
		gtk_cell_area_request_renderer(gtkCellArea, (renderer is null) ? null : renderer.getCellRendererStruct(), orientation, (widget is null) ? null : widget.getWidgetStruct(), forSize, &minimumSize, &naturalSize);
	}
}
