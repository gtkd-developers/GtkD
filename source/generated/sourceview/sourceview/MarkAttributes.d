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


module sourceview.MarkAttributes;

private import gdk.PaintableIF;
private import gdk.RGBA;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import sourceview.Mark;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * The source mark attributes object.
 * 
 * `GtkSourceMarkAttributes` is an object specifying attributes used by
 * a [class@View] to visually show lines marked with [class@Mark]s
 * of a specific category. It allows you to define a background color of a line,
 * an icon shown in gutter and tooltips.
 * 
 * The background color is used as a background of a line where a mark is placed
 * and it can be set with [method@MarkAttributes.set_background]. To check
 * if any custom background color was defined and what color it is, use
 * [method@MarkAttributes.get_background].
 * 
 * An icon is a graphic element which is shown in the gutter of a view. An
 * example use is showing a red filled circle in a debugger to show that a
 * breakpoint was set in certain line. To get an icon that will be placed in
 * a gutter, first a base for it must be specified and then
 * [method@MarkAttributes.render_icon] must be called.
 * There are several ways to specify a base for an icon:
 * 
 * - [method@MarkAttributes.set_icon_name]
 * - [method@MarkAttributes.set_gicon]
 * - [method@MarkAttributes.set_pixbuf]
 * 
 * Using any of the above functions overrides the one used earlier. But note
 * that a getter counterpart of earlier used function can still return some
 * value, but it is just not used when rendering the proper icon.
 * 
 * To provide meaningful tooltips for a given mark of a category, you should
 * connect to [signal@MarkAttributes::query-tooltip-text] or
 * [signal@MarkAttributes::query-tooltip-markup] where the latter
 * takes precedence.
 */
public class MarkAttributes : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceMarkAttributes* gtkSourceMarkAttributes;

	/** Get the main Gtk struct */
	public GtkSourceMarkAttributes* getMarkAttributesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceMarkAttributes;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMarkAttributes;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceMarkAttributes* gtkSourceMarkAttributes, bool ownedRef = false)
	{
		this.gtkSourceMarkAttributes = gtkSourceMarkAttributes;
		super(cast(GObject*)gtkSourceMarkAttributes, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_mark_attributes_get_type();
	}

	/**
	 * Creates a new source mark attributes.
	 *
	 * Returns: a new source mark attributes.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_mark_attributes_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceMarkAttributes*) __p, true);
	}

	/**
	 * Stores background color in @background.
	 *
	 * Params:
	 *     background = a #GdkRGBA.
	 *
	 * Returns: whether background color for @attributes was set.
	 */
	public bool getBackground(out RGBA background)
	{
		GdkRGBA* outbackground = sliceNew!GdkRGBA();

		auto __p = gtk_source_mark_attributes_get_background(gtkSourceMarkAttributes, outbackground) != 0;

		background = ObjectG.getDObject!(RGBA)(outbackground, true);

		return __p;
	}

	/**
	 * Gets a [iface@Gio.Icon] to be used as a base for rendered icon.
	 *
	 * Note that the icon can be %NULL if it wasn't set earlier.
	 *
	 * Returns: An icon. The icon belongs to @attributes and should
	 *     not be unreffed.
	 */
	public IconIF getGicon()
	{
		auto __p = gtk_source_mark_attributes_get_gicon(gtkSourceMarkAttributes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Gets a name of an icon to be used as a base for rendered icon.
	 *
	 * Note that the icon name can be %NULL if it wasn't set earlier.
	 *
	 * Returns: An icon name. The string belongs to @attributes and
	 *     should not be freed.
	 */
	public string getIconName()
	{
		return Str.toString(gtk_source_mark_attributes_get_icon_name(gtkSourceMarkAttributes));
	}

	/**
	 * Gets a [class@GdkPixbuf.Pixbuf] to be used as a base for rendered icon.
	 *
	 * Note that the pixbuf can be %NULL if it wasn't set earlier.
	 *
	 * Returns: A pixbuf. The pixbuf belongs to @attributes and
	 *     should not be unreffed.
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gtk_source_mark_attributes_get_pixbuf(gtkSourceMarkAttributes);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Queries for a tooltip by emitting a [signal@MarkAttributes::query-tooltip-markup] signal.
	 *
	 * The tooltip may contain a markup.
	 *
	 * Params:
	 *     mark = a #GtkSourceMark.
	 *
	 * Returns: A tooltip. The returned string should be freed by
	 *     using g_free() when done with it.
	 */
	public string getTooltipMarkup(Mark mark)
	{
		auto retStr = gtk_source_mark_attributes_get_tooltip_markup(gtkSourceMarkAttributes, (mark is null) ? null : mark.getMarkStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Queries for a tooltip by emitting a [signal@MarkAttributes::query-tooltip-text] signal.
	 *
	 * The tooltip is a plain text.
	 *
	 * Params:
	 *     mark = a #GtkSourceMark.
	 *
	 * Returns: A tooltip. The returned string should be freed by
	 *     using g_free() when done with it.
	 */
	public string getTooltipText(Mark mark)
	{
		auto retStr = gtk_source_mark_attributes_get_tooltip_text(gtkSourceMarkAttributes, (mark is null) ? null : mark.getMarkStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Renders an icon of given size.
	 *
	 * The base of the icon is set by the last call to one of:
	 *
	 * - [method@MarkAttributes.set_pixbuf]
	 * - [method@MarkAttributes.set_gicon]
	 * - [method@MarkAttributes.set_icon_name]
	 *
	 * @size cannot be lower than 1.
	 *
	 * Params:
	 *     widget = widget of which style settings may be used.
	 *     size = size of the rendered icon.
	 *
	 * Returns: A #GdkPaintable. The paintable belongs to @attributes
	 *     and should not be unreffed.
	 */
	public PaintableIF renderIcon(Widget widget, int size)
	{
		auto __p = gtk_source_mark_attributes_render_icon(gtkSourceMarkAttributes, (widget is null) ? null : widget.getWidgetStruct(), size);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Sets background color to the one given in @background.
	 *
	 * Params:
	 *     background = a #GdkRGBA.
	 */
	public void setBackground(RGBA background)
	{
		gtk_source_mark_attributes_set_background(gtkSourceMarkAttributes, (background is null) ? null : background.getRGBAStruct());
	}

	/**
	 * Sets an icon to be used as a base for rendered icon.
	 *
	 * Params:
	 *     gicon = a #GIcon to be used.
	 */
	public void setGicon(IconIF gicon)
	{
		gtk_source_mark_attributes_set_gicon(gtkSourceMarkAttributes, (gicon is null) ? null : gicon.getIconStruct());
	}

	/**
	 * Sets a name of an icon to be used as a base for rendered icon.
	 *
	 * Params:
	 *     iconName = name of an icon to be used.
	 */
	public void setIconName(string iconName)
	{
		gtk_source_mark_attributes_set_icon_name(gtkSourceMarkAttributes, Str.toStringz(iconName));
	}

	/**
	 * Sets a pixbuf to be used as a base for rendered icon.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf to be used.
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		gtk_source_mark_attributes_set_pixbuf(gtkSourceMarkAttributes, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * @mark. The tooltip can contain a markup.
	 *
	 * Params:
	 *     mark = The #GtkSourceMark.
	 *
	 * Returns: A tooltip. The string should be freed with
	 *     g_free() when done with it.
	 */
	gulong addOnQueryTooltipMarkup(string delegate(Mark, MarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-tooltip-markup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * @mark. The tooltip should be just a plain text.
	 *
	 * Params:
	 *     mark = The #GtkSourceMark.
	 *
	 * Returns: A tooltip. The string should be freed with
	 *     g_free() when done with it.
	 */
	gulong addOnQueryTooltipText(string delegate(Mark, MarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-tooltip-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
