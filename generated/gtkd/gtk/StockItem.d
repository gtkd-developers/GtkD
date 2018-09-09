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


module gtk.StockItem;

private import glib.ListSG;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/** */
public final class StockItem
{
	/** the main Gtk struct */
	protected GtkStockItem* gtkStockItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkStockItem* getStockItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStockItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkStockItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStockItem* gtkStockItem, bool ownedRef = false)
	{
		this.gtkStockItem = gtkStockItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_stock_item_free(gtkStockItem);
	}


	/**
	 * Identifier.
	 */
	public @property string stockId()
	{
		return Str.toString(gtkStockItem.stockId);
	}

	/** Ditto */
	public @property void stockId(string value)
	{
		gtkStockItem.stockId = Str.toStringz(value);
	}

	/**
	 * User visible label.
	 */
	public @property string label()
	{
		return Str.toString(gtkStockItem.label);
	}

	/** Ditto */
	public @property void label(string value)
	{
		gtkStockItem.label = Str.toStringz(value);
	}

	/**
	 * Modifier type for keyboard accelerator
	 */
	public @property GdkModifierType modifier()
	{
		return gtkStockItem.modifier;
	}

	/** Ditto */
	public @property void modifier(GdkModifierType value)
	{
		gtkStockItem.modifier = value;
	}

	/**
	 * Keyboard accelerator
	 */
	public @property uint keyval()
	{
		return gtkStockItem.keyval;
	}

	/** Ditto */
	public @property void keyval(uint value)
	{
		gtkStockItem.keyval = value;
	}

	/**
	 * Translation domain of the menu or toolbar item
	 */
	public @property string translationDomain()
	{
		return Str.toString(gtkStockItem.translationDomain);
	}

	/** Ditto */
	public @property void translationDomain(string value)
	{
		gtkStockItem.translationDomain = Str.toStringz(value);
	}

	/**
	 * Copies a stock item, mostly useful for language bindings and not in applications.
	 *
	 * Returns: a new #GtkStockItem
	 */
	public StockItem copy()
	{
		auto p = gtk_stock_item_copy(gtkStockItem);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StockItem)(cast(GtkStockItem*) p);
	}

	/**
	 * Frees a stock item allocated on the heap, such as one returned by
	 * gtk_stock_item_copy(). Also frees the fields inside the stock item,
	 * if they are not %NULL.
	 */
	public void free()
	{
		gtk_stock_item_free(gtkStockItem);
		ownedRef = false;
	}

	/**
	 * Registers each of the stock items in @items. If an item already
	 * exists with the same stock ID as one of the @items, the old item
	 * gets replaced. The stock items are copied, so GTK+ does not hold
	 * any pointer into @items and @items can be freed. Use
	 * gtk_stock_add_static() if @items is persistent and GTK+ need not
	 * copy the array.
	 *
	 * Params:
	 *     items = a #GtkStockItem or array of items
	 */
	public static void stockAdd(StockItem[] items)
	{
		GtkStockItem[] itemsArray = new GtkStockItem[items.length];
		for ( int i = 0; i < items.length; i++ )
		{
			itemsArray[i] = *(items[i].getStockItemStruct());
		}

		gtk_stock_add(itemsArray.ptr, cast(uint)items.length);
	}

	/**
	 * Same as gtk_stock_add(), but doesn’t copy @items, so
	 * @items must persist until application exit.
	 *
	 * Params:
	 *     items = a #GtkStockItem or array of #GtkStockItem
	 */
	public static void stockAddStatic(StockItem[] items)
	{
		GtkStockItem[] itemsArray = new GtkStockItem[items.length];
		for ( int i = 0; i < items.length; i++ )
		{
			itemsArray[i] = *(items[i].getStockItemStruct());
		}

		gtk_stock_add_static(itemsArray.ptr, cast(uint)items.length);
	}

	/**
	 * Retrieves a list of all known stock IDs added to a #GtkIconFactory
	 * or registered with gtk_stock_add(). The list must be freed with g_slist_free(),
	 * and each string in the list must be freed with g_free().
	 *
	 * Returns: a list of known stock IDs
	 */
	public static ListSG stockListIds()
	{
		auto p = gtk_stock_list_ids();

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p, true);
	}

	/**
	 * Fills @item with the registered values for @stock_id, returning %TRUE
	 * if @stock_id was known.
	 *
	 * Params:
	 *     stockId = a stock item name
	 *     item = stock item to initialize with values
	 *
	 * Returns: %TRUE if @item was initialized
	 */
	public static bool stockLookup(string stockId, out StockItem item)
	{
		GtkStockItem* outitem = sliceNew!GtkStockItem();

		auto p = gtk_stock_lookup(Str.toStringz(stockId), outitem) != 0;

		item = ObjectG.getDObject!(StockItem)(outitem, true);

		return p;
	}

	/**
	 * Sets a function to be used for translating the @label of
	 * a stock item.
	 *
	 * If no function is registered for a translation domain,
	 * g_dgettext() is used.
	 *
	 * The function is used for all stock items whose
	 * @translation_domain matches @domain. Note that it is possible
	 * to use strings different from the actual gettext translation domain
	 * of your application for this, as long as your #GtkTranslateFunc uses
	 * the correct domain when calling dgettext(). This can be useful, e.g.
	 * when dealing with message contexts:
	 *
	 * |[<!-- language="C" -->
	 * GtkStockItem items[] = {
	 * { MY_ITEM1, NC_("odd items", "Item 1"), 0, 0, "odd-item-domain" },
	 * { MY_ITEM2, NC_("even items", "Item 2"), 0, 0, "even-item-domain" },
	 * };
	 *
	 * gchar *
	 * my_translate_func (const gchar *msgid,
	 * gpointer     data)
	 * {
	 * gchar *msgctxt = data;
	 *
	 * return (gchar*)g_dpgettext2 (GETTEXT_PACKAGE, msgctxt, msgid);
	 * }
	 *
	 * ...
	 *
	 * gtk_stock_add (items, G_N_ELEMENTS (items));
	 * gtk_stock_set_translate_func ("odd-item-domain", my_translate_func, "odd items");
	 * gtk_stock_set_translate_func ("even-item-domain", my_translate_func, "even items");
	 * ]|
	 *
	 * Params:
	 *     domain = the translation domain for which @func shall be used
	 *     func = a #GtkTranslateFunc
	 *     data = data to pass to @func
	 *     notify = a #GDestroyNotify that is called when @data is
	 *         no longer needed
	 *
	 * Since: 2.8
	 */
	public static void stockSetTranslateFunc(string domain, GtkTranslateFunc func, void* data, GDestroyNotify notify)
	{
		gtk_stock_set_translate_func(Str.toStringz(domain), func, data, notify);
	}
}
