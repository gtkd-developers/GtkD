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


module gtk.DragAndDrop;

private import cairo.Context;
private import cairo.Surface;
private import gdk.DragContext;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public struct DragAndDrop
{

	/**
	 * Cancels an ongoing drag operation on the source side.
	 *
	 * If you want to be able to cancel a drag operation in this way,
	 * you need to keep a pointer to the drag context, either from an
	 * explicit call to gtk_drag_begin_with_coordinates(), or by
	 * connecting to #GtkWidget::drag-begin.
	 *
	 * If @context does not refer to an ongoing drag operation, this
	 * function does nothing.
	 *
	 * If a drag is cancelled in this way, the @result argument of
	 * #GtkWidget::drag-failed is set to @GTK_DRAG_RESULT_ERROR.
	 *
	 * Params:
	 *     context = a #GdkDragContext, as e.g. returned by gtk_drag_begin_with_coordinates()
	 *
	 * Since: 3.16
	 */
	public static void dragCancel(DragContext context)
	{
		gtk_drag_cancel((context is null) ? null : context.getDragContextStruct());
	}

	/**
	 * Informs the drag source that the drop is finished, and
	 * that the data of the drag will no longer be required.
	 *
	 * Params:
	 *     context = the drag context
	 *     success = a flag indicating whether the drop was successful
	 *     del = a flag indicating whether the source should delete the
	 *         original data. (This should be %TRUE for a move)
	 *     time = the timestamp from the #GtkWidget::drag-drop signal
	 */
	public static void dragFinish(DragContext context, bool success, bool del, uint time)
	{
		gtk_drag_finish((context is null) ? null : context.getDragContextStruct(), success, del, time);
	}

	/**
	 * Determines the source widget for a drag.
	 *
	 * Params:
	 *     context = a (destination side) drag context
	 *
	 * Returns: if the drag is occurring
	 *     within a single application, a pointer to the source widget.
	 *     Otherwise, %NULL.
	 */
	public static Widget dragGetSourceWidget(DragContext context)
	{
		auto p = gtk_drag_get_source_widget((context is null) ? null : context.getDragContextStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Sets the icon for a particular drag to the default
	 * icon.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a  context for the source side of a drag)
	 */
	public static void dragSetIconDefault(DragContext context)
	{
		gtk_drag_set_icon_default((context is null) ? null : context.getDragContextStruct());
	}

	/**
	 * Sets the icon for a given drag from the given @icon.
	 * See the documentation for gtk_drag_set_icon_name()
	 * for more details about using icons in drag and drop.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a context for the source side of a drag)
	 *     icon = a #GIcon
	 *     hotX = the X offset of the hotspot within the icon
	 *     hotY = the Y offset of the hotspot within the icon
	 *
	 * Since: 3.2
	 */
	public static void dragSetIconGicon(DragContext context, IconIF icon, int hotX, int hotY)
	{
		gtk_drag_set_icon_gicon((context is null) ? null : context.getDragContextStruct(), (icon is null) ? null : icon.getIconStruct(), hotX, hotY);
	}

	/**
	 * Sets the icon for a given drag from a named themed icon. See
	 * the docs for #GtkIconTheme for more details. Note that the
	 * size of the icon depends on the icon theme (the icon is
	 * loaded at the symbolic size #GTK_ICON_SIZE_DND), thus
	 * @hot_x and @hot_y have to be used with care.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a context for the source side of a drag)
	 *     iconName = name of icon to use
	 *     hotX = the X offset of the hotspot within the icon
	 *     hotY = the Y offset of the hotspot within the icon
	 *
	 * Since: 2.8
	 */
	public static void dragSetIconName(DragContext context, string iconName, int hotX, int hotY)
	{
		gtk_drag_set_icon_name((context is null) ? null : context.getDragContextStruct(), Str.toStringz(iconName), hotX, hotY);
	}

	/**
	 * Sets @pixbuf as the icon for a given drag.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a  context for the source side of a drag)
	 *     pixbuf = the #GdkPixbuf to use as the drag icon
	 *     hotX = the X offset within @widget of the hotspot
	 *     hotY = the Y offset within @widget of the hotspot
	 */
	public static void dragSetIconPixbuf(DragContext context, Pixbuf pixbuf, int hotX, int hotY)
	{
		gtk_drag_set_icon_pixbuf((context is null) ? null : context.getDragContextStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct(), hotX, hotY);
	}

	/**
	 * Sets the icon for a given drag from a stock ID.
	 *
	 * Deprecated: Use gtk_drag_set_icon_name() instead.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a  context for the source side of a drag)
	 *     stockId = the ID of the stock icon to use for the drag
	 *     hotX = the X offset within the icon of the hotspot
	 *     hotY = the Y offset within the icon of the hotspot
	 */
	public static void dragSetIconStock(DragContext context, string stockId, int hotX, int hotY)
	{
		gtk_drag_set_icon_stock((context is null) ? null : context.getDragContextStruct(), Str.toStringz(stockId), hotX, hotY);
	}

	/**
	 * Sets @surface as the icon for a given drag. GTK+ retains
	 * references for the arguments, and will release them when
	 * they are no longer needed.
	 *
	 * To position the surface relative to the mouse, use
	 * cairo_surface_set_device_offset() on @surface. The mouse
	 * cursor will be positioned at the (0,0) coordinate of the
	 * surface.
	 *
	 * Params:
	 *     context = the context for a drag (This must be called
	 *         with a context for the source side of a drag)
	 *     surface = the surface to use as icon
	 */
	public static void dragSetIconSurface(DragContext context, Surface surface)
	{
		gtk_drag_set_icon_surface((context is null) ? null : context.getDragContextStruct(), (surface is null) ? null : surface.getSurfaceStruct());
	}

	/**
	 * Changes the icon for drag operation to a given widget.
	 * GTK+ will not destroy the widget, so if you don’t want
	 * it to persist, you should connect to the “drag-end”
	 * signal and destroy it yourself.
	 *
	 * Params:
	 *     context = the context for a drag. (This must be called
	 *         with a context for the source side of a drag)
	 *     widget = a widget to use as an icon
	 *     hotX = the X offset within @widget of the hotspot
	 *     hotY = the Y offset within @widget of the hotspot
	 */
	public static void dragSetIconWidget(DragContext context, Widget widget, int hotX, int hotY)
	{
		gtk_drag_set_icon_widget((context is null) ? null : context.getDragContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), hotX, hotY);
	}

	/**
	 * Draws a text caret on @cr at @location. This is not a style function
	 * but merely a convenience function for drawing the standard cursor shape.
	 *
	 * Deprecated: Use gtk_render_insertion_cursor() instead.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     cr = cairo context to draw to
	 *     location = location where to draw the cursor (@location->width is ignored)
	 *     isPrimary = if the cursor should be the primary cursor color.
	 *     direction = whether the cursor is left-to-right or
	 *         right-to-left. Should never be #GTK_TEXT_DIR_NONE
	 *     drawArrow = %TRUE to draw a directional arrow on the
	 *         cursor. Should be %FALSE unless the cursor is split.
	 *
	 * Since: 3.0
	 */
	public static void drawInsertionCursor(Widget widget, Context cr, GdkRectangle* location, bool isPrimary, GtkTextDirection direction, bool drawArrow)
	{
		gtk_draw_insertion_cursor((widget is null) ? null : widget.getWidgetStruct(), (cr is null) ? null : cr.getContextStruct(), location, isPrimary, direction, drawArrow);
	}
}
