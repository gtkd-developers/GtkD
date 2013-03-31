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
 * inFile  = GtkSourceMarkAttributes.html
 * outPack = gsv
 * outFile = SourceMarkAttributes
 * strct   = GtkSourceMarkAttributes
 * realStrct=
 * ctorStrct=
 * clss    = SourceMarkAttributes
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_mark_attributes_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gsv.SourceMark
 * 	- gtk.Widget
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GtkSourceMark* -> SourceMark
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceMarkAttributes;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gsv.SourceMark;
private import gtk.Widget;



private import gobject.ObjectG;

/**
 * GtkSourceMarkAttributes is an object specifying attributes used by
 * a GtkSourceView to visually show lines marked with GtkSourceMarks
 * of a specific category. It allows you to define a background color of a line,
 * an icon shown in gutter and tooltips.
 *
 * The background color is used as a background of a line where a mark is placed
 * and it can be set with gtk_source_mark_attributes_set_background(). To check
 * if any custom background color was defined and what color it is, use
 * gtk_source_mark_attributes_get_background().
 *
 * An icon is a graphic element which is shown in the gutter of a view. An
 * example use is showing a red filled circle in a debugger to show that a
 * breakpoint was set in certain line. To get an icon that will be placed in
 * a gutter, first a base for it must be specified and then
 * gtk_source_mark_attributes_render_icon() must be called.
 * There are several ways to specify a base for an icon:
 *
 *  gtk_source_mark_attributes_set_icon_name()
 *
 *  gtk_source_mark_attributes_set_stock_id()
 *
 *  gtk_source_mark_attributes_set_gicon()
 *
 *  gtk_source_mark_attributes_set_pixbuf()
 *
 * Using any of the above functions overrides the one used earlier. But note
 * that a getter counterpart of earlier used function can still return some
 * value, but it is just not used when rendering the proper icon.
 *
 * To provide meaningful tooltips for a given mark of a category, you should
 * connect to "query-tooltip-text" or
 * "query-tooltip-markup" where the latter
 * takes precedence.
 */
public class SourceMarkAttributes : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceMarkAttributes* gtkSourceMarkAttributes;
	
	
	public GtkSourceMarkAttributes* getSourceMarkAttributesStruct()
	{
		return gtkSourceMarkAttributes;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMarkAttributes;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceMarkAttributes* gtkSourceMarkAttributes)
	{
		super(cast(GObject*)gtkSourceMarkAttributes);
		this.gtkSourceMarkAttributes = gtkSourceMarkAttributes;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceMarkAttributes = cast(GtkSourceMarkAttributes*)obj;
	}
	
	/** */
	public void setStockId(StockID stockId)
	{
		setStockId(StockDesc[stockId]);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	string delegate(SourceMark, SourceMarkAttributes)[] onQueryTooltipMarkupListeners;
	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * mark. The tooltip can contain a markup.
	 */
	void addOnQueryTooltipMarkup(string delegate(SourceMark, SourceMarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip-markup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip-markup",
			cast(GCallback)&callBackQueryTooltipMarkup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip-markup"] = 1;
		}
		onQueryTooltipMarkupListeners ~= dlg;
	}
	extern(C) static void callBackQueryTooltipMarkup(GtkSourceMarkAttributes* attributesStruct, GtkSourceMark* mark, SourceMarkAttributes _sourceMarkAttributes)
	{
		foreach ( string delegate(SourceMark, SourceMarkAttributes) dlg ; _sourceMarkAttributes.onQueryTooltipMarkupListeners )
		{
			dlg(ObjectG.getDObject!(SourceMark)(mark), _sourceMarkAttributes);
		}
	}
	
	string delegate(SourceMark, SourceMarkAttributes)[] onQueryTooltipTextListeners;
	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * mark. The tooltip should be just a plain text.
	 * See Also
	 * GtkSourceMark
	 */
	void addOnQueryTooltipText(string delegate(SourceMark, SourceMarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip-text",
			cast(GCallback)&callBackQueryTooltipText,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip-text"] = 1;
		}
		onQueryTooltipTextListeners ~= dlg;
	}
	extern(C) static void callBackQueryTooltipText(GtkSourceMarkAttributes* attributesStruct, GtkSourceMark* mark, SourceMarkAttributes _sourceMarkAttributes)
	{
		foreach ( string delegate(SourceMark, SourceMarkAttributes) dlg ; _sourceMarkAttributes.onQueryTooltipTextListeners )
		{
			dlg(ObjectG.getDObject!(SourceMark)(mark), _sourceMarkAttributes);
		}
	}
	
	
	/**
	 * Creates a new source mark attributes.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkSourceMarkAttributes * gtk_source_mark_attributes_new  (void);
		auto p = gtk_source_mark_attributes_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_source_mark_attributes_new()");
		}
		this(cast(GtkSourceMarkAttributes*) p);
	}
	
	/**
	 * Sets background color to the one given in background.
	 * Params:
	 * background = a GdkRGBA.
	 */
	public void setBackground(RGBA background)
	{
		// void gtk_source_mark_attributes_set_background  (GtkSourceMarkAttributes *attributes,  const GdkRGBA *background);
		gtk_source_mark_attributes_set_background(gtkSourceMarkAttributes, (background is null) ? null : background.getRGBAStruct());
	}
	
	/**
	 * Stores background color in background.
	 * Params:
	 * background = a GdkRGBA. [out caller-allocates]
	 * Returns: whether background color for attributes was set.
	 */
	public int getBackground(RGBA background)
	{
		// gboolean gtk_source_mark_attributes_get_background  (GtkSourceMarkAttributes *attributes,  GdkRGBA *background);
		return gtk_source_mark_attributes_get_background(gtkSourceMarkAttributes, (background is null) ? null : background.getRGBAStruct());
	}
	
	/**
	 * Sets stock id to be used as a base for rendered icon.
	 * Params:
	 * stockId = a stock id.
	 */
	public void setStockId(string stockId)
	{
		// void gtk_source_mark_attributes_set_stock_id  (GtkSourceMarkAttributes *attributes,  const gchar *stock_id);
		gtk_source_mark_attributes_set_stock_id(gtkSourceMarkAttributes, Str.toStringz(stockId));
	}
	
	/**
	 * Gets a stock id of an icon used by this attributes. Note that the stock id can
	 * be NULL if it wasn't set earlier.
	 * Returns: Stock id. Returned string is owned by attributes and shouldn't be freed. [transfer none]
	 */
	public string getStockId()
	{
		// const gchar * gtk_source_mark_attributes_get_stock_id  (GtkSourceMarkAttributes *attributes);
		return Str.toString(gtk_source_mark_attributes_get_stock_id(gtkSourceMarkAttributes));
	}
	
	/**
	 * Sets a name of an icon to be used as a base for rendered icon.
	 * Params:
	 * iconName = name of an icon to be used.
	 */
	public void setIconName(string iconName)
	{
		// void gtk_source_mark_attributes_set_icon_name  (GtkSourceMarkAttributes *attributes,  const gchar *icon_name);
		gtk_source_mark_attributes_set_icon_name(gtkSourceMarkAttributes, Str.toStringz(iconName));
	}
	
	/**
	 * Gets a name of an icon to be used as a base for rendered icon. Note that the
	 * icon name can be NULL if it wasn't set earlier.
	 * Returns: An icon name. The string belongs to attributes and should not be freed. [transfer none]
	 */
	public string getIconName()
	{
		// const gchar * gtk_source_mark_attributes_get_icon_name  (GtkSourceMarkAttributes *attributes);
		return Str.toString(gtk_source_mark_attributes_get_icon_name(gtkSourceMarkAttributes));
	}
	
	/**
	 * Sets an icon to be used as a base for rendered icon.
	 * Params:
	 * gicon = a GIcon to be used.
	 */
	public void setGicon(IconIF gicon)
	{
		// void gtk_source_mark_attributes_set_gicon  (GtkSourceMarkAttributes *attributes,  GIcon *gicon);
		gtk_source_mark_attributes_set_gicon(gtkSourceMarkAttributes, (gicon is null) ? null : gicon.getIconTStruct());
	}
	
	/**
	 * Gets a GIcon to be used as a base for rendered icon. Note that the icon can
	 * be NULL if it wasn't set earlier.
	 * Returns: An icon. The icon belongs to attributes and should not be unreffed. [transfer none]
	 */
	public IconIF getGicon()
	{
		// GIcon * gtk_source_mark_attributes_get_gicon  (GtkSourceMarkAttributes *attributes);
		auto p = gtk_source_mark_attributes_get_gicon(gtkSourceMarkAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Sets a pixbuf to be used as a base for rendered icon.
	 * Params:
	 * pixbuf = a GdkPixbuf to be used.
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		// void gtk_source_mark_attributes_set_pixbuf  (GtkSourceMarkAttributes *attributes,  const GdkPixbuf *pixbuf);
		gtk_source_mark_attributes_set_pixbuf(gtkSourceMarkAttributes, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Gets a GdkPixbuf to be used as a base for rendered icon. Note that the
	 * pixbuf can be NULL if it wasn't set earlier.
	 * Returns: A pixbuf. The pixbuf belongs to attributes and should not be unreffed. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// const GdkPixbuf * gtk_source_mark_attributes_get_pixbuf  (GtkSourceMarkAttributes *attributes);
		auto p = gtk_source_mark_attributes_get_pixbuf(gtkSourceMarkAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Renders an icon of given size. The base of the icon is set by the last call
	 * to one of: gtk_source_mark_attributes_set_pixbuf(),
	 * gtk_source_mark_attributes_set_gicon(),
	 * gtk_source_mark_attributes_set_icon_name() or
	 * gtk_source_mark_attributes_set_stock_id(). size cannot be lower than 1.
	 * Params:
	 * widget = widget of which style settings may be used.
	 * size = size of the rendered icon.
	 * Returns: A rendered pixbuf. The pixbuf belongs to attributes and should not be unreffed. [transfer none]
	 */
	public Pixbuf renderIcon(Widget widget, int size)
	{
		// const GdkPixbuf * gtk_source_mark_attributes_render_icon  (GtkSourceMarkAttributes *attributes,  GtkWidget *widget,  gint size);
		auto p = gtk_source_mark_attributes_render_icon(gtkSourceMarkAttributes, (widget is null) ? null : widget.getWidgetStruct(), size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Queries for a tooltip by emitting
	 * a GtkSourceMarkAttributes::query-tooltip-text signal. The tooltip is a plain
	 * text.
	 * Params:
	 * mark = a GtkSourceMark.
	 * Returns: A tooltip. The returned string should be freed by using g_free() when done with it. [transfer full]
	 */
	public string getTooltipText(SourceMark mark)
	{
		// gchar * gtk_source_mark_attributes_get_tooltip_text  (GtkSourceMarkAttributes *attributes,  GtkSourceMark *mark);
		return Str.toString(gtk_source_mark_attributes_get_tooltip_text(gtkSourceMarkAttributes, (mark is null) ? null : mark.getSourceMarkStruct()));
	}
	
	/**
	 * Queries for a tooltip by emitting
	 * a GtkSourceMarkAttributes::query-tooltip-markup signal. The tooltip may contain
	 * a markup.
	 * Params:
	 * mark = a GtkSourceMark.
	 * Returns: A tooltip. The returned string should be freed by using g_free() when done with it. [transfer full]
	 */
	public string getTooltipMarkup(SourceMark mark)
	{
		// gchar * gtk_source_mark_attributes_get_tooltip_markup  (GtkSourceMarkAttributes *attributes,  GtkSourceMark *mark);
		return Str.toString(gtk_source_mark_attributes_get_tooltip_markup(gtkSourceMarkAttributes, (mark is null) ? null : mark.getSourceMarkStruct()));
	}
}
