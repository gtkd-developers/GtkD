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
 * inFile  = GtkSourceGutterRenderer.html
 * outPack = gsv
 * outFile = SourceGutterRenderer
 * strct   = GtkSourceGutterRenderer
 * realStrct=
 * ctorStrct=
 * clss    = SourceGutterRenderer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gtk_source_gutter_renderer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Context
 * 	- gdk.Event
 * 	- gdk.RGBA
 * 	- gtk.TextIter
 * 	- gtk.TextView
 * 	- gtk.Tooltip
 * structWrap:
 * 	- GdkEvent* -> Event
 * 	- GdkRGBA* -> RGBA
 * 	- GtkSourceGutterRenderer* -> SourceGutterRenderer
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextView* -> TextView
 * 	- GtkTooltip* -> Tooltip
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceGutterRenderer;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import cairo.Context;
private import gdk.Event;
private import gdk.RGBA;
private import gtk.TextIter;
private import gtk.TextView;
private import gtk.Tooltip;



private import gobject.ObjectG;

/**
 */
public class SourceGutterRenderer : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceGutterRenderer* gtkSourceGutterRenderer;
	
	
	public GtkSourceGutterRenderer* getSourceGutterRendererStruct()
	{
		return gtkSourceGutterRenderer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRenderer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceGutterRenderer* gtkSourceGutterRenderer)
	{
		super(cast(GObject*)gtkSourceGutterRenderer);
		this.gtkSourceGutterRenderer = gtkSourceGutterRenderer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceGutterRenderer = cast(GtkSourceGutterRenderer*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer)[] onActivateListeners;
	/**
	 * The ::activate signal is emitted when the renderer is
	 * activated.
	 */
	void addOnActivate(void delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkSourceGutterRenderer* rendererStruct, GtkTextIter* iter, GdkRectangle* area, GdkEvent* event, SourceGutterRenderer _sourceGutterRenderer)
	{
		foreach ( void delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer) dlg ; _sourceGutterRenderer.onActivateListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(iter), area, ObjectG.getDObject!(Event)(event), _sourceGutterRenderer);
		}
	}
	
	bool delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer)[] onQueryActivatableListeners;
	/**
	 * The ::query-activatable signal is emitted when the renderer
	 * can possibly be activated.
	 */
	void addOnQueryActivatable(bool delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-activatable" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-activatable",
			cast(GCallback)&callBackQueryActivatable,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-activatable"] = 1;
		}
		onQueryActivatableListeners ~= dlg;
	}
	extern(C) static gboolean callBackQueryActivatable(GtkSourceGutterRenderer* rendererStruct, GtkTextIter* iter, GdkRectangle* area, GdkEvent* event, SourceGutterRenderer _sourceGutterRenderer)
	{
		foreach ( bool delegate(TextIter, GdkRectangle*, Event, SourceGutterRenderer) dlg ; _sourceGutterRenderer.onQueryActivatableListeners )
		{
			if ( dlg(ObjectG.getDObject!(TextIter)(iter), area, ObjectG.getDObject!(Event)(event), _sourceGutterRenderer) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(TextIter, TextIter, GtkSourceGutterRendererState, SourceGutterRenderer)[] onQueryDataListeners;
	/**
	 * The ::query-data signal is emitted when the renderer needs
	 * to be filled with data just before a cell is drawn. This can
	 * be used by general renderer implementations to allow render
	 * data to be filled in externally.
	 */
	void addOnQueryData(void delegate(TextIter, TextIter, GtkSourceGutterRendererState, SourceGutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-data" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-data",
			cast(GCallback)&callBackQueryData,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-data"] = 1;
		}
		onQueryDataListeners ~= dlg;
	}
	extern(C) static void callBackQueryData(GtkSourceGutterRenderer* rendererStruct, GtkTextIter* start, GtkTextIter* end, GtkSourceGutterRendererState state, SourceGutterRenderer _sourceGutterRenderer)
	{
		foreach ( void delegate(TextIter, TextIter, GtkSourceGutterRendererState, SourceGutterRenderer) dlg ; _sourceGutterRenderer.onQueryDataListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(start), ObjectG.getDObject!(TextIter)(end), state, _sourceGutterRenderer);
		}
	}
	
	bool delegate(TextIter, GdkRectangle*, gint, gint, Tooltip, SourceGutterRenderer)[] onQueryTooltipListeners;
	/**
	 * The ::query-tooltip signal is emitted when the renderer can
	 * show a tooltip.
	 */
	void addOnQueryTooltip(bool delegate(TextIter, GdkRectangle*, gint, gint, Tooltip, SourceGutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip",
			cast(GCallback)&callBackQueryTooltip,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip"] = 1;
		}
		onQueryTooltipListeners ~= dlg;
	}
	extern(C) static gboolean callBackQueryTooltip(GtkSourceGutterRenderer* rendererStruct, GtkTextIter* iter, GdkRectangle* area, gint x, gint y, GtkTooltip* tooltip, SourceGutterRenderer _sourceGutterRenderer)
	{
		foreach ( bool delegate(TextIter, GdkRectangle*, gint, gint, Tooltip, SourceGutterRenderer) dlg ; _sourceGutterRenderer.onQueryTooltipListeners )
		{
			if ( dlg(ObjectG.getDObject!(TextIter)(iter), area, x, y, ObjectG.getDObject!(Tooltip)(tooltip), _sourceGutterRenderer) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(SourceGutterRenderer)[] onQueueDrawListeners;
	/**
	 * The ::queue-draw signal is emitted when the renderer needs
	 * to be redrawn. Use gtk_source_gutter_renderer_queue_draw()
	 * to emit this signal from an implementation of the
	 * GtkSourceGutterRenderer interface.
	 */
	void addOnQueueDraw(void delegate(SourceGutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("queue-draw" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"queue-draw",
			cast(GCallback)&callBackQueueDraw,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["queue-draw"] = 1;
		}
		onQueueDrawListeners ~= dlg;
	}
	extern(C) static void callBackQueueDraw(GtkSourceGutterRenderer* rendererStruct, SourceGutterRenderer _sourceGutterRenderer)
	{
		foreach ( void delegate(SourceGutterRenderer) dlg ; _sourceGutterRenderer.onQueueDrawListeners )
		{
			dlg(_sourceGutterRenderer);
		}
	}
	
	
	/**
	 * Called when drawing a region begins. The region to be drawn is indicated
	 * by start and end. The purpose is to allow the implementation to precompute
	 * some state before the ::draw method is called for each cell.
	 * Params:
	 * cr = a cairo_t
	 * backgroundArea = a GdkRectangle
	 * cellArea = a GdkRectangle
	 * start = a GtkTextIter
	 * end = a GtkTextIter
	 */
	public void begin(Context cr, ref Rectangle backgroundArea, ref Rectangle cellArea, TextIter start, TextIter end)
	{
		// void gtk_source_gutter_renderer_begin (GtkSourceGutterRenderer *renderer,  cairo_t *cr,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkTextIter *start,  GtkTextIter *end);
		gtk_source_gutter_renderer_begin(gtkSourceGutterRenderer, (cr is null) ? null : cr.getContextStruct(), &backgroundArea, &cellArea, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Main renderering method. Implementations should implement this method to
	 * draw onto the cairo context. The background_area indicates total area of
	 * the cell (without padding or margin) to be drawn. The cell_area indicates
	 * the area where content can be drawn (text, images, etc).
	 * The state argument indicates the current state of the renderer and should
	 * be taken into account to properly draw the different possible states
	 * (cursor, prelit, selected) if appropriate.
	 * Params:
	 * cr = the cairo render context
	 * backgroundArea = a GdkRectangle indicating the total area to be drawn
	 * cellArea = a GdkRectangle indicating the area to draw content
	 * start = a GtkTextIter
	 * end = a GtkTextIter
	 * state = a GtkSourceGutterRendererState
	 */
	public void draw(Context cr, ref Rectangle backgroundArea, ref Rectangle cellArea, TextIter start, TextIter end, GtkSourceGutterRendererState state)
	{
		// void gtk_source_gutter_renderer_draw (GtkSourceGutterRenderer *renderer,  cairo_t *cr,  GdkRectangle *background_area,  GdkRectangle *cell_area,  GtkTextIter *start,  GtkTextIter *end,  GtkSourceGutterRendererState state);
		gtk_source_gutter_renderer_draw(gtkSourceGutterRenderer, (cr is null) ? null : cr.getContextStruct(), &backgroundArea, &cellArea, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), state);
	}
	
	/**
	 * Called when drawing a region of lines has ended.
	 */
	public void end()
	{
		// void gtk_source_gutter_renderer_end (GtkSourceGutterRenderer *renderer);
		gtk_source_gutter_renderer_end(gtkSourceGutterRenderer);
	}
	
	/**
	 * Get the size of the renderer.
	 * Returns: the size of the renderer.
	 */
	public int getSize()
	{
		// gint gtk_source_gutter_renderer_get_size (GtkSourceGutterRenderer *renderer);
		return gtk_source_gutter_renderer_get_size(gtkSourceGutterRenderer);
	}
	
	/**
	 * Sets the size of the renderer. A value of -1 specifies that the size
	 * is to be determined dynamically.
	 * Params:
	 * size = the size
	 */
	public void setSize(int size)
	{
		// void gtk_source_gutter_renderer_set_size (GtkSourceGutterRenderer *renderer,  gint size);
		gtk_source_gutter_renderer_set_size(gtkSourceGutterRenderer, size);
	}
	
	/**
	 * Set whether the gutter renderer is visible.
	 * Params:
	 * visible = the visibility
	 */
	public void setVisible(int visible)
	{
		// void gtk_source_gutter_renderer_set_visible  (GtkSourceGutterRenderer *renderer,  gboolean visible);
		gtk_source_gutter_renderer_set_visible(gtkSourceGutterRenderer, visible);
	}
	
	/**
	 * Get whether the gutter renderer is visible.
	 * Returns: TRUE if the renderer is visible, FALSE otherwise
	 */
	public int getVisible()
	{
		// gboolean gtk_source_gutter_renderer_get_visible  (GtkSourceGutterRenderer *renderer);
		return gtk_source_gutter_renderer_get_visible(gtkSourceGutterRenderer);
	}
	
	/**
	 * Get the x-padding and y-padding of the gutter renderer.
	 * Params:
	 * xpad = return location for the x-padding (can be NULL). [out caller-allocates][allow-none]
	 * ypad = return location for the y-padding (can be NULL). [out caller-allocates][allow-none]
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		// void gtk_source_gutter_renderer_get_padding  (GtkSourceGutterRenderer *renderer,  gint *xpad,  gint *ypad);
		gtk_source_gutter_renderer_get_padding(gtkSourceGutterRenderer, &xpad, &ypad);
	}
	
	/**
	 * Set the padding of the gutter renderer. Both xpad and ypad can be
	 * -1, which means the values will not be changed (this allows changing only
	 * one of the values).
	 * Params:
	 * xpad = the x-padding
	 * ypad = the y-padding
	 */
	public void setPadding(int xpad, int ypad)
	{
		// void gtk_source_gutter_renderer_set_padding  (GtkSourceGutterRenderer *renderer,  gint xpad,  gint ypad);
		gtk_source_gutter_renderer_set_padding(gtkSourceGutterRenderer, xpad, ypad);
	}
	
	/**
	 * Get the x-alignment and y-alignment of the gutter renderer.
	 * Params:
	 * xalign = return location for the x-alignment (can be NULL). [out caller-allocates][allow-none]
	 * yalign = return location for the y-alignment (can be NULL). [out caller-allocates][allow-none]
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		// void gtk_source_gutter_renderer_get_alignment  (GtkSourceGutterRenderer *renderer,  gfloat *xalign,  gfloat *yalign);
		gtk_source_gutter_renderer_get_alignment(gtkSourceGutterRenderer, &xalign, &yalign);
	}
	
	/**
	 * Set the alignment of the gutter renderer. Both xalign and yalign can be
	 * -1, which means the values will not be changed (this allows changing only
	 * one of the values).
	 * Params:
	 * xalign = the x-alignment
	 * yalign = the y-alignment
	 */
	public void setAlignment(float xalign, float yalign)
	{
		// void gtk_source_gutter_renderer_set_alignment  (GtkSourceGutterRenderer *renderer,  gfloat xalign,  gfloat yalign);
		gtk_source_gutter_renderer_set_alignment(gtkSourceGutterRenderer, xalign, yalign);
	}
	
	/**
	 * Set the alignment mode. The alignment mode describes the manner in which the
	 * renderer is aligned (see :xalign and :yalign).
	 * Params:
	 * mode = a GtkSourceGutterRendererAlignmentMode
	 */
	public void setAlignmentMode(GtkSourceGutterRendererAlignmentMode mode)
	{
		// void gtk_source_gutter_renderer_set_alignment_mode  (GtkSourceGutterRenderer *renderer,  GtkSourceGutterRendererAlignmentMode mode);
		gtk_source_gutter_renderer_set_alignment_mode(gtkSourceGutterRenderer, mode);
	}
	
	/**
	 * Get the GtkTextWindowType associated with the gutter renderer.
	 * Returns: a GtkTextWindowType
	 */
	public GtkTextWindowType getWindowType()
	{
		// GtkTextWindowType gtk_source_gutter_renderer_get_window_type  (GtkSourceGutterRenderer *renderer);
		return gtk_source_gutter_renderer_get_window_type(gtkSourceGutterRenderer);
	}
	
	/**
	 * Get the view associated to the gutter renderer
	 * Returns: a GtkTextView. [transfer none]
	 */
	public TextView getView()
	{
		// GtkTextView * gtk_source_gutter_renderer_get_view (GtkSourceGutterRenderer *renderer);
		auto p = gtk_source_gutter_renderer_get_view(gtkSourceGutterRenderer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextView)(cast(GtkTextView*) p);
	}
	
	/**
	 * Get the alignment mode. The alignment mode describes the manner in which the
	 * renderer is aligned (see :xalign and :yalign).
	 * Returns: a GtkSourceGutterRendererAlignmentMode
	 */
	public GtkSourceGutterRendererAlignmentMode getAlignmentMode()
	{
		// GtkSourceGutterRendererAlignmentMode gtk_source_gutter_renderer_get_alignment_mode  (GtkSourceGutterRenderer *renderer);
		return gtk_source_gutter_renderer_get_alignment_mode(gtkSourceGutterRenderer);
	}
	
	/**
	 * Get the background color of the renderer.
	 * Params:
	 * color = return value for a GdkRGBA. [out caller-allocates][allow-none]
	 * Returns: TRUE if the background color is set, FALSE otherwise
	 */
	public int getBackground(RGBA color)
	{
		// gboolean gtk_source_gutter_renderer_get_background  (GtkSourceGutterRenderer *renderer,  GdkRGBA *color);
		return gtk_source_gutter_renderer_get_background(gtkSourceGutterRenderer, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Set the background color of the renderer. If color is set to NULL, the
	 * renderer will not have a background color.
	 * Params:
	 * color = a GdkRGBA or NULL. [allow-none]
	 */
	public void setBackground(RGBA color)
	{
		// void gtk_source_gutter_renderer_set_background  (GtkSourceGutterRenderer *renderer,  const GdkRGBA *color);
		gtk_source_gutter_renderer_set_background(gtkSourceGutterRenderer, (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Emits the ::activate signal of the renderer. This is called from
	 * GtkSourceGutter and should never have to be called manually.
	 * Params:
	 * iter = a GtkTextIter at the start of the line where the renderer is activated
	 * area = a GdkRectangle of the cell area where the renderer is activated
	 * event = the event that triggered the activation
	 */
	public void activate(TextIter iter, ref Rectangle area, Event event)
	{
		// void gtk_source_gutter_renderer_activate (GtkSourceGutterRenderer *renderer,  GtkTextIter *iter,  GdkRectangle *area,  GdkEvent *event);
		gtk_source_gutter_renderer_activate(gtkSourceGutterRenderer, (iter is null) ? null : iter.getTextIterStruct(), &area, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Get whether the renderer is activatable at the location in event. This is
	 * called from GtkSourceGutter to determine whether a renderer is activatable
	 * using the mouse pointer.
	 * Params:
	 * iter = a GtkTextIter at the start of the line to be activated
	 * area = a GdkRectangle of the cell area to be activated
	 * event = the event that triggered the query
	 * Returns: TRUE if the renderer can be activated, FALSE otherwise
	 */
	public int queryActivatable(TextIter iter, ref Rectangle area, Event event)
	{
		// gboolean gtk_source_gutter_renderer_query_activatable  (GtkSourceGutterRenderer *renderer,  GtkTextIter *iter,  GdkRectangle *area,  GdkEvent *event);
		return gtk_source_gutter_renderer_query_activatable(gtkSourceGutterRenderer, (iter is null) ? null : iter.getTextIterStruct(), &area, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Emits the ::queue-draw signal of the renderer. Call this from an
	 * implementation to inform that the renderer has changed such that it needs
	 * to redraw.
	 */
	public void queueDraw()
	{
		// void gtk_source_gutter_renderer_queue_draw  (GtkSourceGutterRenderer *renderer);
		gtk_source_gutter_renderer_queue_draw(gtkSourceGutterRenderer);
	}
	
	/**
	 * Emits the ::query-tooltip signal. This function is called from
	 * GtkSourceGutter. Implementations can override the default signal handler
	 * or can connect to the signal externally.
	 * Params:
	 * iter = a GtkTextIter.
	 * area = a GdkRectangle.
	 * x = The x position of the tooltip.
	 * y = The y position of the tooltip.
	 * tooltip = a GtkTooltip.
	 * Returns: TRUE if the tooltip has been set, FALSE otherwise
	 */
	public int queryTooltip(TextIter iter, ref Rectangle area, int x, int y, Tooltip tooltip)
	{
		// gboolean gtk_source_gutter_renderer_query_tooltip  (GtkSourceGutterRenderer *renderer,  GtkTextIter *iter,  GdkRectangle *area,  gint x,  gint y,  GtkTooltip *tooltip);
		return gtk_source_gutter_renderer_query_tooltip(gtkSourceGutterRenderer, (iter is null) ? null : iter.getTextIterStruct(), &area, x, y, (tooltip is null) ? null : tooltip.getTooltipStruct());
	}
	
	/**
	 * Emit the ::query-data signal. This function is called to query for data
	 * just before rendering a cell. This is called from the GtkSourceGutter.
	 * Implementations can override the default signal handler or can connect
	 * a signal handler externally to the ::query-data signal.
	 * Params:
	 * start = a GtkTextIter.
	 * end = a GtkTextIter.
	 * state = a GtkSourceGutterRendererState.
	 */
	public void queryData(TextIter start, TextIter end, GtkSourceGutterRendererState state)
	{
		// void gtk_source_gutter_renderer_query_data  (GtkSourceGutterRenderer *renderer,  GtkTextIter *start,  GtkTextIter *end,  GtkSourceGutterRendererState state);
		gtk_source_gutter_renderer_query_data(gtkSourceGutterRenderer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), state);
	}
}
