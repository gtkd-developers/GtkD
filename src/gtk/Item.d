/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
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
 * inFile  = GtkItem.html
 * outPack = gtk
 * outFile = Item
 * strct   = GtkItem
 * realStrct=
 * ctorStrct=
 * clss    = Item
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Item;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.Bin;

/**
 * Description
 * The GtkItem widget is an abstract base class for GtkMenuItem, GtkListItem
 * and GtkTreeItem.
 * GtkItem is deprecated and will be removed in GTK+ 3.
 */
public class Item : Bin
{
	
	/** the main Gtk struct */
	protected GtkItem* gtkItem;
	
	
	public GtkItem* getItemStruct()
	{
		return gtkItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkItem* gtkItem)
	{
		if(gtkItem is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkItem);
		if( ptr !is null )
		{
			this = cast(Item)ptr;
			return;
		}
		super(cast(GtkBin*)gtkItem);
		this.gtkItem = gtkItem;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkItem = cast(GtkItem*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Item)[] onDeselectListeners;
	/**
	 * Emitted when the item is deselected.
	 */
	void addOnDeselect(void delegate(Item) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("deselect" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deselect",
			cast(GCallback)&callBackDeselect,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deselect"] = 1;
		}
		onDeselectListeners ~= dlg;
	}
	extern(C) static void callBackDeselect(GtkItem* itemStruct, Item item)
	{
		foreach ( void delegate(Item) dlg ; item.onDeselectListeners )
		{
			dlg(item);
		}
	}
	
	void delegate(Item)[] onSelectListeners;
	/**
	 * Emitted when the item is selected.
	 */
	void addOnSelect(void delegate(Item) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select",
			cast(GCallback)&callBackSelect,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select"] = 1;
		}
		onSelectListeners ~= dlg;
	}
	extern(C) static void callBackSelect(GtkItem* itemStruct, Item item)
	{
		foreach ( void delegate(Item) dlg ; item.onSelectListeners )
		{
			dlg(item);
		}
	}
	
	void delegate(Item)[] onToggleListeners;
	/**
	 * Emitted when the item is toggled.
	 */
	void addOnToggle(void delegate(Item) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle",
			cast(GCallback)&callBackToggle,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle"] = 1;
		}
		onToggleListeners ~= dlg;
	}
	extern(C) static void callBackToggle(GtkItem* itemStruct, Item item)
	{
		foreach ( void delegate(Item) dlg ; item.onToggleListeners )
		{
			dlg(item);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_item_select has been deprecated since version 2.22 and should not be used in newly-written code. Use gtk_menu_item_select() instead
	 * Emits the "select" signal on the given item.
	 */
	public void select()
	{
		// void gtk_item_select (GtkItem *item);
		gtk_item_select(gtkItem);
	}
	
	/**
	 * Warning
	 * gtk_item_deselect has been deprecated since version 2.22 and should not be used in newly-written code. Use gtk_menu_item_deselect() instead
	 * Emits the "deselect" signal on the given item.
	 */
	public void deselect()
	{
		// void gtk_item_deselect (GtkItem *item);
		gtk_item_deselect(gtkItem);
	}
	
	/**
	 * Warning
	 * gtk_item_toggle has been deprecated since version 2.22 and should not be used in newly-written code. This function will be removed in GTK+ 3
	 * Emits the "toggle" signal on the given item.
	 */
	public void toggle()
	{
		// void gtk_item_toggle (GtkItem *item);
		gtk_item_toggle(gtkItem);
	}
}
