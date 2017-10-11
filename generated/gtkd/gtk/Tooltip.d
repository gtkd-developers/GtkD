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


module gtk.Tooltip;

private import gdk.Display;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * Basic tooltips can be realized simply by using gtk_widget_set_tooltip_text()
 * or gtk_widget_set_tooltip_markup() without any explicit tooltip object.
 * 
 * When you need a tooltip with a little more fancy contents, like adding an
 * image, or you want the tooltip to have different contents per #GtkTreeView
 * row or cell, you will have to do a little more work:
 * 
 * - Set the #GtkWidget:has-tooltip property to %TRUE, this will make GTK+
 * monitor the widget for motion and related events which are needed to
 * determine when and where to show a tooltip.
 * 
 * - Connect to the #GtkWidget::query-tooltip signal.  This signal will be
 * emitted when a tooltip is supposed to be shown. One of the arguments passed
 * to the signal handler is a GtkTooltip object. This is the object that we
 * are about to display as a tooltip, and can be manipulated in your callback
 * using functions like gtk_tooltip_set_icon(). There are functions for setting
 * the tooltip’s markup, setting an image from a named icon, or even putting in
 * a custom widget.
 * 
 * Return %TRUE from your query-tooltip handler. This causes the tooltip to be
 * show. If you return %FALSE, it will not be shown.
 * 
 * In the probably rare case where you want to have even more control over the
 * tooltip that is about to be shown, you can set your own #GtkWindow which
 * will be used as tooltip window.  This works as follows:
 * 
 * - Set #GtkWidget:has-tooltip and connect to #GtkWidget::query-tooltip as before.
 * Use gtk_widget_set_tooltip_window() to set a #GtkWindow created by you as
 * tooltip window.
 * 
 * - In the #GtkWidget::query-tooltip callback you can access your window using
 * gtk_widget_get_tooltip_window() and manipulate as you wish. The semantics of
 * the return value are exactly as before, return %TRUE to show the window,
 * %FALSE to not show it.
 */
public class Tooltip : ObjectG
{
	/** the main Gtk struct */
	protected GtkTooltip* gtkTooltip;

	/** Get the main Gtk struct */
	public GtkTooltip* getTooltipStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTooltip;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTooltip;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTooltip* gtkTooltip, bool ownedRef = false)
	{
		this.gtkTooltip = gtkTooltip;
		super(cast(GObject*)gtkTooltip, ownedRef);
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * the stock item indicated by stockID with the size indicated by size.
	 */
	void setIcon(StockID stockID, GtkIconSize size)
	{
		setIconFromStock(cast(string)stockID, size);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tooltip_get_type();
	}

	/**
	 * Triggers a new tooltip query on @display, in order to update the current
	 * visible tooltip, or to show/hide the current tooltip.  This function is
	 * useful to call when, for example, the state of the widget changed by a
	 * key press.
	 *
	 * Params:
	 *     display = a #GdkDisplay
	 *
	 * Since: 2.12
	 */
	public static void triggerTooltipQuery(Display display)
	{
		gtk_tooltip_trigger_tooltip_query((display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Replaces the widget packed into the tooltip with
	 * @custom_widget. @custom_widget does not get destroyed when the tooltip goes
	 * away.
	 * By default a box with a #GtkImage and #GtkLabel is embedded in
	 * the tooltip, which can be configured using gtk_tooltip_set_markup()
	 * and gtk_tooltip_set_icon().
	 *
	 * Params:
	 *     customWidget = a #GtkWidget, or %NULL to unset the old custom widget.
	 *
	 * Since: 2.12
	 */
	public void setCustom(Widget customWidget)
	{
		gtk_tooltip_set_custom(gtkTooltip, (customWidget is null) ? null : customWidget.getWidgetStruct());
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * @pixbuf.  If @pixbuf is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf, or %NULL
	 *
	 * Since: 2.12
	 */
	public void setIcon(Pixbuf pixbuf)
	{
		gtk_tooltip_set_icon(gtkTooltip, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text)
	 * to be the icon indicated by @gicon with the size indicated
	 * by @size. If @gicon is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     gicon = a #GIcon representing the icon, or %NULL
	 *     size = a stock icon size (#GtkIconSize)
	 *
	 * Since: 2.20
	 */
	public void setIconFromGicon(IconIF gicon, GtkIconSize size)
	{
		gtk_tooltip_set_icon_from_gicon(gtkTooltip, (gicon is null) ? null : gicon.getIconStruct(), size);
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * the icon indicated by @icon_name with the size indicated
	 * by @size.  If @icon_name is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     iconName = an icon name, or %NULL
	 *     size = a stock icon size (#GtkIconSize)
	 *
	 * Since: 2.14
	 */
	public void setIconFromIconName(string iconName, GtkIconSize size)
	{
		gtk_tooltip_set_icon_from_icon_name(gtkTooltip, Str.toStringz(iconName), size);
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * the stock item indicated by @stock_id with the size indicated
	 * by @size.  If @stock_id is %NULL, the image will be hidden.
	 *
	 * Deprecated: Use gtk_tooltip_set_icon_from_icon_name() instead.
	 *
	 * Params:
	 *     stockId = a stock id, or %NULL
	 *     size = a stock icon size (#GtkIconSize)
	 *
	 * Since: 2.12
	 */
	public void setIconFromStock(string stockId, GtkIconSize size)
	{
		gtk_tooltip_set_icon_from_stock(gtkTooltip, Str.toStringz(stockId), size);
	}

	/**
	 * Sets the text of the tooltip to be @markup, which is marked up
	 * with the [Pango text markup language][PangoMarkupFormat].
	 * If @markup is %NULL, the label will be hidden.
	 *
	 * Params:
	 *     markup = a markup string (see [Pango markup format][PangoMarkupFormat]) or %NULL
	 *
	 * Since: 2.12
	 */
	public void setMarkup(string markup)
	{
		gtk_tooltip_set_markup(gtkTooltip, Str.toStringz(markup));
	}

	/**
	 * Sets the text of the tooltip to be @text. If @text is %NULL, the label
	 * will be hidden. See also gtk_tooltip_set_markup().
	 *
	 * Params:
	 *     text = a text string or %NULL
	 *
	 * Since: 2.12
	 */
	public void setText(string text)
	{
		gtk_tooltip_set_text(gtkTooltip, Str.toStringz(text));
	}

	/**
	 * Sets the area of the widget, where the contents of this tooltip apply,
	 * to be @rect (in widget coordinates).  This is especially useful for
	 * properly setting tooltips on #GtkTreeView rows and cells, #GtkIconViews,
	 * etc.
	 *
	 * For setting tooltips on #GtkTreeView, please refer to the convenience
	 * functions for this: gtk_tree_view_set_tooltip_row() and
	 * gtk_tree_view_set_tooltip_cell().
	 *
	 * Params:
	 *     rect = a #GdkRectangle
	 *
	 * Since: 2.12
	 */
	public void setTipArea(GdkRectangle* rect)
	{
		gtk_tooltip_set_tip_area(gtkTooltip, rect);
	}
}
