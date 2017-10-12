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


module gsv.SourceGutterRendererPixbuf;

private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.SourceGutterRenderer;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;


/** */
public class SourceGutterRendererPixbuf : SourceGutterRenderer
{
	/** the main Gtk struct */
	protected GtkSourceGutterRendererPixbuf* gtkSourceGutterRendererPixbuf;

	/** Get the main Gtk struct */
	public GtkSourceGutterRendererPixbuf* getSourceGutterRendererPixbufStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceGutterRendererPixbuf;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRendererPixbuf;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceGutterRendererPixbuf* gtkSourceGutterRendererPixbuf, bool ownedRef = false)
	{
		this.gtkSourceGutterRendererPixbuf = gtkSourceGutterRendererPixbuf;
		super(cast(GtkSourceGutterRenderer*)gtkSourceGutterRendererPixbuf, ownedRef);
	}

	/** */
	public void setStockId(StockID stockId)
	{
		setStockId(cast(string)stockId);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_source_gutter_renderer_pixbuf_get_type();
	}

	/**
	 * Create a new #GtkSourceGutterRendererPixbuf.
	 *
	 * Returns: A #GtkSourceGutterRenderer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_gutter_renderer_pixbuf_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceGutterRendererPixbuf*) p, true);
	}

	/**
	 * Get the gicon of the renderer
	 *
	 * Returns: a #GIcon
	 */
	public IconIF getGicon()
	{
		auto p = gtk_source_gutter_renderer_pixbuf_get_gicon(gtkSourceGutterRendererPixbuf);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) p);
	}

	/** */
	public string getIconName()
	{
		return Str.toString(gtk_source_gutter_renderer_pixbuf_get_icon_name(gtkSourceGutterRendererPixbuf));
	}

	/**
	 * Get the pixbuf of the renderer.
	 *
	 * Returns: a #GdkPixbuf
	 */
	public Pixbuf getPixbuf()
	{
		auto p = gtk_source_gutter_renderer_pixbuf_get_pixbuf(gtkSourceGutterRendererPixbuf);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 *
	 *
	 * Deprecated: Don't use this function.
	 *
	 * Returns: the stock id.
	 */
	public string getStockId()
	{
		return Str.toString(gtk_source_gutter_renderer_pixbuf_get_stock_id(gtkSourceGutterRendererPixbuf));
	}

	/** */
	public void setGicon(IconIF icon)
	{
		gtk_source_gutter_renderer_pixbuf_set_gicon(gtkSourceGutterRendererPixbuf, (icon is null) ? null : icon.getIconStruct());
	}

	/** */
	public void setIconName(string iconName)
	{
		gtk_source_gutter_renderer_pixbuf_set_icon_name(gtkSourceGutterRendererPixbuf, Str.toStringz(iconName));
	}

	/** */
	public void setPixbuf(Pixbuf pixbuf)
	{
		gtk_source_gutter_renderer_pixbuf_set_pixbuf(gtkSourceGutterRendererPixbuf, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Don't use this function.
	 *
	 * Params:
	 *     stockId = the stock id
	 */
	public void setStockId(string stockId)
	{
		gtk_source_gutter_renderer_pixbuf_set_stock_id(gtkSourceGutterRendererPixbuf, Str.toStringz(stockId));
	}
}
