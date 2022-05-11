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


module sourceview.GutterRenderer;

private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.TextIter;
private import gtk.Widget;
private import sourceview.Buffer;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * Gutter cell renderer.
 * 
 * A `GtkSourceGutterRenderer` represents a column in a [class@Gutter]. The
 * column contains one cell for each visible line of the [class@Gtk.TextBuffer]. Due to
 * text wrapping, a cell can thus span multiple lines of the [class@Gtk.TextView]. In
 * this case, [enum@GutterRendererAlignmentMode] controls the alignment of
 * the cell.
 * 
 * The gutter renderer is a [class@Gtk.Widget] and is measured using the normal widget
 * measurement facilities. The width of the gutter will be determined by the
 * measurements of the gutter renderers.
 * 
 * The width of a gutter renderer generally takes into account the entire text
 * buffer. For instance, to display the line numbers, if the buffer contains 100
 * lines, the gutter renderer will always set its width such as three digits can
 * be printed, even if only the first 20 lines are shown. Another strategy is to
 * take into account only the visible lines.  In this case, only two digits are
 * necessary to display the line numbers of the first 20 lines. To take another
 * example, the gutter renderer for [class@Mark]s doesn't need to take
 * into account the text buffer to announce its width. It only depends on the
 * icons size displayed in the gutter column.
 * 
 * When the available size to render a cell is greater than the required size to
 * render the cell contents, the cell contents can be aligned horizontally and
 * vertically with [method@GutterRenderer.set_alignment_mode].
 * 
 * The cells rendering occurs using [vfunc@Gtk.Widget.snapshot]. Implementations
 * should use `gtk_source_gutter_renderer_get_lines()` to retrieve information
 * about the lines to be rendered. To help with aligning content which takes
 * into account the padding and alignment of a cell, implementations may call
 * [method@GutterRenderer.align_cell] for a given line number with the
 * width and height measurement of the content they width to render.
 */
public class GutterRenderer : Widget
{
	/** the main Gtk struct */
	protected GtkSourceGutterRenderer* gtkSourceGutterRenderer;

	/** Get the main Gtk struct */
	public GtkSourceGutterRenderer* getGutterRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceGutterRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceGutterRenderer* gtkSourceGutterRenderer, bool ownedRef = false)
	{
		this.gtkSourceGutterRenderer = gtkSourceGutterRenderer;
		super(cast(GtkWidget*)gtkSourceGutterRenderer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_gutter_renderer_get_type();
	}

	/**
	 * Emits the [signal@GutterRenderer::activate] signal of the renderer. This is
	 * called from [class@Gutter] and should never have to be called manually.
	 *
	 * Params:
	 *     iter = a #GtkTextIter at the start of the line where the renderer is activated
	 *     area = a #GdkRectangle of the cell area where the renderer is activated
	 *     button = the button that was pressed
	 *     state = a #GdkModifierType
	 *     nPresses = the number of button presses
	 */
	public void activate(TextIter iter, GdkRectangle* area, uint button, GdkModifierType state, int nPresses)
	{
		gtk_source_gutter_renderer_activate(gtkSourceGutterRenderer, (iter is null) ? null : iter.getTextIterStruct(), area, button, state, nPresses);
	}

	/**
	 * Locates where to render content that is @width x @height based on
	 * the renderers alignment and padding.
	 *
	 * The location will be placed into @x and @y and is relative to the
	 * renderer's coordinates.
	 *
	 * It is encouraged that renderers use this function when snappshotting
	 * to ensure consistent placement of their contents.
	 *
	 * Params:
	 *     line = the line number for content
	 *     width = the width of the content to draw
	 *     height = the height of the content to draw
	 *     x = the X position to render the content
	 *     y = the Y position to render the content
	 */
	public void alignCell(uint line, float width, float height, out float x, out float y)
	{
		gtk_source_gutter_renderer_align_cell(gtkSourceGutterRenderer, line, width, height, &x, &y);
	}

	/**
	 * Get the alignment mode.
	 *
	 * The alignment mode describes the manner in which the
	 * renderer is aligned (see [property@GutterRenderer:xalign] and
	 * [property@GutterRenderer:yalign]).
	 *
	 * Returns: a #GtkSourceGutterRendererAlignmentMode
	 */
	public GtkSourceGutterRendererAlignmentMode getAlignmentMode()
	{
		return gtk_source_gutter_renderer_get_alignment_mode(gtkSourceGutterRenderer);
	}

	/**
	 * Gets the [class@Buffer] for which the gutter renderer is drawing.
	 *
	 * Returns: a #GtkTextBuffer or %NULL
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_gutter_renderer_get_buffer(gtkSourceGutterRenderer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/**
	 * Get the view associated to the gutter renderer
	 *
	 * Returns: a #GtkSourceView
	 */
	public View getView()
	{
		auto __p = gtk_source_gutter_renderer_get_view(gtkSourceGutterRenderer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}

	/**
	 * Gets the `xalign` property.
	 *
	 * This may be used to adjust where within the cell rectangle the renderer will draw.
	 */
	public float getXalign()
	{
		return gtk_source_gutter_renderer_get_xalign(gtkSourceGutterRenderer);
	}

	/**
	 * Gets the `xpad` property.
	 *
	 * This may be used to adjust the cell rectangle that the renderer will use to draw.
	 */
	public int getXpad()
	{
		return gtk_source_gutter_renderer_get_xpad(gtkSourceGutterRenderer);
	}

	/**
	 * Gets the `yalign` property.
	 *
	 * This may be used to adjust where within the cell rectangle the renderer will draw.
	 */
	public float getYalign()
	{
		return gtk_source_gutter_renderer_get_yalign(gtkSourceGutterRenderer);
	}

	/**
	 * Gets the `ypad` property.
	 *
	 * This may be used to adjust the cell rectangle that the renderer will use to draw.
	 */
	public int getYpad()
	{
		return gtk_source_gutter_renderer_get_ypad(gtkSourceGutterRenderer);
	}

	/**
	 * Get whether the renderer is activatable at the location provided. This is
	 * called from [class@Gutter] to determine whether a renderer is activatable
	 * using the mouse pointer.
	 *
	 * Params:
	 *     iter = a #GtkTextIter at the start of the line to be activated
	 *     area = a #GdkRectangle of the cell area to be activated
	 *
	 * Returns: %TRUE if the renderer can be activated, %FALSE otherwise
	 */
	public bool queryActivatable(TextIter iter, GdkRectangle* area)
	{
		return gtk_source_gutter_renderer_query_activatable(gtkSourceGutterRenderer, (iter is null) ? null : iter.getTextIterStruct(), area) != 0;
	}

	/**
	 * Set the alignment mode. The alignment mode describes the manner in which the
	 * renderer is aligned (see [property@GutterRenderer:xalign] and
	 * [property@GutterRenderer:yalign]).
	 *
	 * Params:
	 *     mode = a #GtkSourceGutterRendererAlignmentMode
	 */
	public void setAlignmentMode(GtkSourceGutterRendererAlignmentMode mode)
	{
		gtk_source_gutter_renderer_set_alignment_mode(gtkSourceGutterRenderer, mode);
	}

	/**
	 * Adjusts the `xalign` property.
	 *
	 * This may be used to adjust where within the cell rectangle the renderer will draw.
	 *
	 * Params:
	 *     xalign = the Y padding for the drawing cell
	 */
	public void setXalign(float xalign)
	{
		gtk_source_gutter_renderer_set_xalign(gtkSourceGutterRenderer, xalign);
	}

	/**
	 * Adjusts the `xpad` property.
	 *
	 * This may be used to adjust the cell rectangle that the renderer will use to draw.
	 *
	 * Params:
	 *     xpad = the Y padding for the drawing cell
	 */
	public void setXpad(int xpad)
	{
		gtk_source_gutter_renderer_set_xpad(gtkSourceGutterRenderer, xpad);
	}

	/**
	 * Adjusts the `yalign` property.
	 *
	 * This may be used to adjust where within the cell rectangle the renderer will draw.
	 *
	 * Params:
	 *     yalign = the Y padding for the drawing cell
	 */
	public void setYalign(float yalign)
	{
		gtk_source_gutter_renderer_set_yalign(gtkSourceGutterRenderer, yalign);
	}

	/**
	 * Adjusts the `ypad` property.
	 *
	 * This may be used to adjust the cell rectangle that the renderer will use to draw.
	 *
	 * Params:
	 *     ypad = the Y padding for the drawing cell
	 */
	public void setYpad(int ypad)
	{
		gtk_source_gutter_renderer_set_ypad(gtkSourceGutterRenderer, ypad);
	}

	/**
	 * The signal is emitted when the renderer is activated.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     area = a #GdkRectangle
	 *     button = the button that was pressed
	 *     state = a #GdkModifierType of state
	 *     nPresses = the number of button presses
	 */
	gulong addOnActivate(void delegate(TextIter, GdkRectangle*, uint, GdkModifierType, int, GutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is emitted when the renderer can possibly be activated.
	 *
	 * Params:
	 *     iter = a #GtkTextIter
	 *     area = a #GdkRectangle
	 */
	gulong addOnQueryActivatable(bool delegate(TextIter, GdkRectangle*, GutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-activatable", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnQueryData(void delegate(ObjectG, uint, GutterRenderer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
