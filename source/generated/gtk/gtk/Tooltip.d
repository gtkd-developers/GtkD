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

private import gdk.PaintableIF;
private import gio.IconIF;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkTooltip` is an object representing a widget tooltip.
 * 
 * Basic tooltips can be realized simply by using
 * [method@Gtk.Widget.set_tooltip_text] or
 * [method@Gtk.Widget.set_tooltip_markup] without
 * any explicit tooltip object.
 * 
 * When you need a tooltip with a little more fancy contents,
 * like adding an image, or you want the tooltip to have different
 * contents per `GtkTreeView` row or cell, you will have to do a
 * little more work:
 * 
 * - Set the [property@Gtk.Widget:has-tooltip] property to %TRUE.
 * This will make GTK monitor the widget for motion and related events
 * which are needed to determine when and where to show a tooltip.
 * 
 * - Connect to the [signal@Gtk.Widget::query-tooltip] signal.
 * This signal will be emitted when a tooltip is supposed to be shown.
 * One of the arguments passed to the signal handler is a `GtkTooltip`
 * object. This is the object that we are about to display as a tooltip,
 * and can be manipulated in your callback using functions like
 * [method@Gtk.Tooltip.set_icon]. There are functions for setting
 * the tooltip’s markup, setting an image from a named icon, or even
 * putting in a custom widget.
 * 
 * - Return %TRUE from your ::query-tooltip handler. This causes the tooltip
 * to be show. If you return %FALSE, it will not be shown.
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


	/** */
	public static GType getType()
	{
		return gtk_tooltip_get_type();
	}

	/**
	 * Replaces the widget packed into the tooltip with
	 * @custom_widget. @custom_widget does not get destroyed when the tooltip goes
	 * away.
	 * By default a box with a `GtkImage` and `GtkLabel` is embedded in
	 * the tooltip, which can be configured using gtk_tooltip_set_markup()
	 * and gtk_tooltip_set_icon().
	 *
	 * Params:
	 *     customWidget = a `GtkWidget`, or %NULL to unset the old custom widget.
	 */
	public void setCustom(Widget customWidget)
	{
		gtk_tooltip_set_custom(gtkTooltip, (customWidget is null) ? null : customWidget.getWidgetStruct());
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * @paintable.  If @paintable is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 */
	public void setIcon(PaintableIF paintable)
	{
		gtk_tooltip_set_icon(gtkTooltip, (paintable is null) ? null : paintable.getPaintableStruct());
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text)
	 * to be the icon indicated by @gicon with the size indicated
	 * by @size. If @gicon is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     gicon = a `GIcon` representing the icon
	 */
	public void setIconFromGicon(IconIF gicon)
	{
		gtk_tooltip_set_icon_from_gicon(gtkTooltip, (gicon is null) ? null : gicon.getIconStruct());
	}

	/**
	 * Sets the icon of the tooltip (which is in front of the text) to be
	 * the icon indicated by @icon_name with the size indicated
	 * by @size.  If @icon_name is %NULL, the image will be hidden.
	 *
	 * Params:
	 *     iconName = an icon name
	 */
	public void setIconFromIconName(string iconName)
	{
		gtk_tooltip_set_icon_from_icon_name(gtkTooltip, Str.toStringz(iconName));
	}

	/**
	 * Sets the text of the tooltip to be @markup.
	 *
	 * The string must be marked up with Pango markup.
	 * If @markup is %NULL, the label will be hidden.
	 *
	 * Params:
	 *     markup = a string with Pango markup or %NLL
	 */
	public void setMarkup(string markup)
	{
		gtk_tooltip_set_markup(gtkTooltip, Str.toStringz(markup));
	}

	/**
	 * Sets the text of the tooltip to be @text.
	 *
	 * If @text is %NULL, the label will be hidden.
	 * See also [method@Gtk.Tooltip.set_markup].
	 *
	 * Params:
	 *     text = a text string
	 */
	public void setText(string text)
	{
		gtk_tooltip_set_text(gtkTooltip, Str.toStringz(text));
	}

	/**
	 * Sets the area of the widget, where the contents of this tooltip apply,
	 * to be @rect (in widget coordinates).  This is especially useful for
	 * properly setting tooltips on `GtkTreeView` rows and cells, `GtkIconViews`,
	 * etc.
	 *
	 * For setting tooltips on `GtkTreeView`, please refer to the convenience
	 * functions for this: gtk_tree_view_set_tooltip_row() and
	 * gtk_tree_view_set_tooltip_cell().
	 *
	 * Params:
	 *     rect = a `GdkRectangle`
	 */
	public void setTipArea(GdkRectangle* rect)
	{
		gtk_tooltip_set_tip_area(gtkTooltip, rect);
	}
}
