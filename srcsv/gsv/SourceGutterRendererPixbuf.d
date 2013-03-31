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
 * inFile  = GtkSourceGutterRendererPixbuf.html
 * outPack = gsv
 * outFile = SourceGutterRendererPixbuf
 * strct   = GtkSourceGutterRendererPixbuf
 * realStrct=
 * ctorStrct=GtkSourceGutterRenderer
 * clss    = SourceGutterRendererPixbuf
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GtkSourceGutterRenderer
 * implements:
 * prefixes:
 * 	- gtk_source_gutter_renderer_pixbuf_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceGutterRendererPixbuf;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;



private import gsv.SourceGutterRenderer;

/**
 */
public class SourceGutterRendererPixbuf : SourceGutterRenderer
{
	
	/** the main Gtk struct */
	protected GtkSourceGutterRendererPixbuf* gtkSourceGutterRendererPixbuf;
	
	
	public GtkSourceGutterRendererPixbuf* getSourceGutterRendererPixbufStruct()
	{
		return gtkSourceGutterRendererPixbuf;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceGutterRendererPixbuf;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceGutterRendererPixbuf* gtkSourceGutterRendererPixbuf)
	{
		super(cast(GtkSourceGutterRenderer*)gtkSourceGutterRendererPixbuf);
		this.gtkSourceGutterRendererPixbuf = gtkSourceGutterRendererPixbuf;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceGutterRendererPixbuf = cast(GtkSourceGutterRendererPixbuf*)obj;
	}
	
	/** */
	public void setStockId(StockID stockId)
	{
		setStockId(StockDesc[stockId]);
	}
	
	/**
	 */
	
	/**
	 * Create a new GtkSourceGutterRendererPixbuf.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceGutterRenderer * gtk_source_gutter_renderer_pixbuf_new  (void);
		auto p = gtk_source_gutter_renderer_pixbuf_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_gutter_renderer_pixbuf_new()");
		}
		this(cast(GtkSourceGutterRendererPixbuf*) p);
	}
	
	/**
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		// void gtk_source_gutter_renderer_pixbuf_set_pixbuf  (GtkSourceGutterRendererPixbuf *renderer,  GdkPixbuf *pixbuf);
		gtk_source_gutter_renderer_pixbuf_set_pixbuf(gtkSourceGutterRendererPixbuf, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Get the pixbuf of the renderer.
	 * Returns: a GdkPixbuf. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_source_gutter_renderer_pixbuf_get_pixbuf  (GtkSourceGutterRendererPixbuf *renderer);
		auto p = gtk_source_gutter_renderer_pixbuf_get_pixbuf(gtkSourceGutterRendererPixbuf);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 */
	public void setStockId(string stockId)
	{
		// void gtk_source_gutter_renderer_pixbuf_set_stock_id  (GtkSourceGutterRendererPixbuf *renderer,  const gchar *stock_id);
		gtk_source_gutter_renderer_pixbuf_set_stock_id(gtkSourceGutterRendererPixbuf, Str.toStringz(stockId));
	}
	
	/**
	 */
	public string getStockId()
	{
		// const gchar * gtk_source_gutter_renderer_pixbuf_get_stock_id  (GtkSourceGutterRendererPixbuf *renderer);
		return Str.toString(gtk_source_gutter_renderer_pixbuf_get_stock_id(gtkSourceGutterRendererPixbuf));
	}
	
	/**
	 */
	public void setGicon(IconIF icon)
	{
		// void gtk_source_gutter_renderer_pixbuf_set_gicon  (GtkSourceGutterRendererPixbuf *renderer,  GIcon *icon);
		gtk_source_gutter_renderer_pixbuf_set_gicon(gtkSourceGutterRendererPixbuf, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Get the gicon of the renderer
	 * Returns: a GIcon. [transfer none]
	 */
	public IconIF getGicon()
	{
		// GIcon * gtk_source_gutter_renderer_pixbuf_get_gicon  (GtkSourceGutterRendererPixbuf *renderer);
		auto p = gtk_source_gutter_renderer_pixbuf_get_gicon(gtkSourceGutterRendererPixbuf);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 */
	public void setIconName(string iconName)
	{
		// void gtk_source_gutter_renderer_pixbuf_set_icon_name  (GtkSourceGutterRendererPixbuf *renderer,  const gchar *icon_name);
		gtk_source_gutter_renderer_pixbuf_set_icon_name(gtkSourceGutterRendererPixbuf, Str.toStringz(iconName));
	}
	
	/**
	 */
	public string getIconName()
	{
		// const gchar * gtk_source_gutter_renderer_pixbuf_get_icon_name  (GtkSourceGutterRendererPixbuf *renderer);
		return Str.toString(gtk_source_gutter_renderer_pixbuf_get_icon_name(gtkSourceGutterRendererPixbuf));
	}
}
