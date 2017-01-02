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


module gsv.SourceMarkAttributes;

private import gdk.RGBA;
private import gdkpixbuf.Pixbuf;
private import gio.Icon;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gsv.SourceMark;
private import gsvc.gsv;
public  import gsvc.gsvtypes;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import std.algorithm;


/** */
public class SourceMarkAttributes : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceMarkAttributes* gtkSourceMarkAttributes;

	/** Get the main Gtk struct */
	public GtkSourceMarkAttributes* getSourceMarkAttributesStruct()
	{
		return gtkSourceMarkAttributes;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMarkAttributes;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSourceMarkAttributes = cast(GtkSourceMarkAttributes*)obj;
		super.setStruct(obj);
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
	public void setStockId(StockID stockId)
	{
		setStockId(cast(string)stockId);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_source_mark_attributes_get_type();
	}

	/**
	 * Creates a new source mark attributes.
	 *
	 * Return: a new source mark attributes.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_mark_attributes_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkSourceMarkAttributes*) p, true);
	}

	/**
	 * Stores background color in @background.
	 *
	 * Params:
	 *     background = a #GdkRGBA.
	 *
	 * Return: whether background color for @attributes was set.
	 */
	public bool getBackground(out RGBA background)
	{
		GdkRGBA* outbackground = gMalloc!GdkRGBA();
		
		auto p = gtk_source_mark_attributes_get_background(gtkSourceMarkAttributes, outbackground) != 0;
		
		background = ObjectG.getDObject!(RGBA)(outbackground, true);
		
		return p;
	}

	/**
	 * Gets a #GIcon to be used as a base for rendered icon. Note that the icon can
	 * be %NULL if it wasn't set earlier.
	 *
	 * Return: An icon. The icon belongs to @attributes and should
	 *     not be unreffed.
	 */
	public IconIF getGicon()
	{
		auto p = gtk_source_mark_attributes_get_gicon(gtkSourceMarkAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon, IconIF)(cast(GIcon*) p);
	}

	/**
	 * Gets a name of an icon to be used as a base for rendered icon. Note that the
	 * icon name can be %NULL if it wasn't set earlier.
	 *
	 * Return: An icon name. The string belongs to @attributes and
	 *     should not be freed.
	 */
	public string getIconName()
	{
		return Str.toString(gtk_source_mark_attributes_get_icon_name(gtkSourceMarkAttributes));
	}

	/**
	 * Gets a #GdkPixbuf to be used as a base for rendered icon. Note that the
	 * pixbuf can be %NULL if it wasn't set earlier.
	 *
	 * Return: A pixbuf. The pixbuf belongs to @attributes and
	 *     should not be unreffed.
	 */
	public Pixbuf getPixbuf()
	{
		auto p = gtk_source_mark_attributes_get_pixbuf(gtkSourceMarkAttributes);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Gets a stock id of an icon used by this attributes. Note that the stock id can
	 * be %NULL if it wasn't set earlier.
	 *
	 * Deprecated: Don't use this function.
	 *
	 * Return: Stock id. Returned string is owned by @attributes and
	 *     shouldn't be freed.
	 */
	public string getStockId()
	{
		return Str.toString(gtk_source_mark_attributes_get_stock_id(gtkSourceMarkAttributes));
	}

	/**
	 * Queries for a tooltip by emitting
	 * a #GtkSourceMarkAttributes::query-tooltip-markup signal. The tooltip may contain
	 * a markup.
	 *
	 * Params:
	 *     mark = a #GtkSourceMark.
	 *
	 * Return: A tooltip. The returned string should be freed by
	 *     using g_free() when done with it.
	 */
	public string getTooltipMarkup(SourceMark mark)
	{
		auto retStr = gtk_source_mark_attributes_get_tooltip_markup(gtkSourceMarkAttributes, (mark is null) ? null : mark.getSourceMarkStruct());
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Queries for a tooltip by emitting
	 * a #GtkSourceMarkAttributes::query-tooltip-text signal. The tooltip is a plain
	 * text.
	 *
	 * Params:
	 *     mark = a #GtkSourceMark.
	 *
	 * Return: A tooltip. The returned string should be freed by
	 *     using g_free() when done with it.
	 */
	public string getTooltipText(SourceMark mark)
	{
		auto retStr = gtk_source_mark_attributes_get_tooltip_text(gtkSourceMarkAttributes, (mark is null) ? null : mark.getSourceMarkStruct());
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Renders an icon of given size. The base of the icon is set by the last call
	 * to one of: gtk_source_mark_attributes_set_pixbuf(),
	 * gtk_source_mark_attributes_set_gicon(),
	 * gtk_source_mark_attributes_set_icon_name() or
	 * gtk_source_mark_attributes_set_stock_id(). @size cannot be lower than 1.
	 *
	 * Params:
	 *     widget = widget of which style settings may be used.
	 *     size = size of the rendered icon.
	 *
	 * Return: A rendered pixbuf. The pixbuf belongs to @attributes
	 *     and should not be unreffed.
	 */
	public Pixbuf renderIcon(Widget widget, int size)
	{
		auto p = gtk_source_mark_attributes_render_icon(gtkSourceMarkAttributes, (widget is null) ? null : widget.getWidgetStruct(), size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
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
	 * Sets stock id to be used as a base for rendered icon.
	 *
	 * Deprecated: Don't use this function.
	 *
	 * Params:
	 *     stockId = a stock id.
	 */
	public void setStockId(string stockId)
	{
		gtk_source_mark_attributes_set_stock_id(gtkSourceMarkAttributes, Str.toStringz(stockId));
	}

	protected class OnQueryTooltipMarkupDelegateWrapper
	{
		string delegate(SourceMark, SourceMarkAttributes) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(string delegate(SourceMark, SourceMarkAttributes) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnQueryTooltipMarkupDelegateWrapper[] onQueryTooltipMarkupListeners;

	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * @mark. The tooltip can contain a markup.
	 *
	 * Params:
	 *     mark = The #GtkSourceMark.
	 *
	 * Return: A tooltip. The string should be freed with
	 *     g_free() when done with it.
	 */
	gulong addOnQueryTooltipMarkup(string delegate(SourceMark, SourceMarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onQueryTooltipMarkupListeners ~= new OnQueryTooltipMarkupDelegateWrapper(dlg, 0, connectFlags);
		onQueryTooltipMarkupListeners[onQueryTooltipMarkupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"query-tooltip-markup",
			cast(GCallback)&callBackQueryTooltipMarkup,
			cast(void*)onQueryTooltipMarkupListeners[onQueryTooltipMarkupListeners.length - 1],
			cast(GClosureNotify)&callBackQueryTooltipMarkupDestroy,
			connectFlags);
		return onQueryTooltipMarkupListeners[onQueryTooltipMarkupListeners.length - 1].handlerId;
	}
	
	extern(C) static string callBackQueryTooltipMarkup(GtkSourceMarkAttributes* sourcemarkattributesStruct, GtkSourceMark* mark,OnQueryTooltipMarkupDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(SourceMark)(mark), wrapper.outer);
	}
	
	extern(C) static void callBackQueryTooltipMarkupDestroy(OnQueryTooltipMarkupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnQueryTooltipMarkup(wrapper);
	}

	protected void internalRemoveOnQueryTooltipMarkup(OnQueryTooltipMarkupDelegateWrapper source)
	{
		foreach(index, wrapper; onQueryTooltipMarkupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onQueryTooltipMarkupListeners[index] = null;
				onQueryTooltipMarkupListeners = std.algorithm.remove(onQueryTooltipMarkupListeners, index);
				break;
			}
		}
	}
	

	protected class OnQueryTooltipTextDelegateWrapper
	{
		string delegate(SourceMark, SourceMarkAttributes) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(string delegate(SourceMark, SourceMarkAttributes) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnQueryTooltipTextDelegateWrapper[] onQueryTooltipTextListeners;

	/**
	 * The code should connect to this signal to provide a tooltip for given
	 * @mark. The tooltip should be just a plain text.
	 *
	 * Params:
	 *     mark = The #GtkSourceMark.
	 *
	 * Return: A tooltip. The string should be freed with
	 *     g_free() when done with it.
	 */
	gulong addOnQueryTooltipText(string delegate(SourceMark, SourceMarkAttributes) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onQueryTooltipTextListeners ~= new OnQueryTooltipTextDelegateWrapper(dlg, 0, connectFlags);
		onQueryTooltipTextListeners[onQueryTooltipTextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"query-tooltip-text",
			cast(GCallback)&callBackQueryTooltipText,
			cast(void*)onQueryTooltipTextListeners[onQueryTooltipTextListeners.length - 1],
			cast(GClosureNotify)&callBackQueryTooltipTextDestroy,
			connectFlags);
		return onQueryTooltipTextListeners[onQueryTooltipTextListeners.length - 1].handlerId;
	}
	
	extern(C) static string callBackQueryTooltipText(GtkSourceMarkAttributes* sourcemarkattributesStruct, GtkSourceMark* mark,OnQueryTooltipTextDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(SourceMark)(mark), wrapper.outer);
	}
	
	extern(C) static void callBackQueryTooltipTextDestroy(OnQueryTooltipTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnQueryTooltipText(wrapper);
	}

	protected void internalRemoveOnQueryTooltipText(OnQueryTooltipTextDelegateWrapper source)
	{
		foreach(index, wrapper; onQueryTooltipTextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onQueryTooltipTextListeners[index] = null;
				onQueryTooltipTextListeners = std.algorithm.remove(onQueryTooltipTextListeners, index);
				break;
			}
		}
	}
	
}
