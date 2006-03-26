/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Item
 * strct   = GtkItem
 * realStrct=
 * clss    = Item
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.Item;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * The GtkItem widget is an abstract base class for GtkMenuItem, GtkListItem
 * and GtkTreeItem.
 */
private import gtk.Bin;
public class Item : Bin
{
	
	/** the main Gtk struct */
	protected GtkItem* gtkItem;
	
	
	public GtkItem* getItemStruct()
	{
		return gtkItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkItem* gtkItem)
	{
		super(cast(GtkBin*)gtkItem);
		this.gtkItem = gtkItem;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Item)[] onDeselectListeners;
	void addOnDeselect(void delegate(Item) dlg)
	{
		if ( !("deselect" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deselect",
			cast(GCallback)&callBackDeselect,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["deselect"] = 1;
		}
		onDeselectListeners ~= dlg;
	}
	extern(C) static void callBackDeselect(GtkItem* itemStruct, Item item)
	{
		bit consumed = false;
		
		foreach ( void delegate(Item) dlg ; item.onDeselectListeners )
		{
			dlg(item);
		}
		
		return consumed;
	}
	
	void delegate(Item)[] onSelectListeners;
	void addOnSelect(void delegate(Item) dlg)
	{
		if ( !("select" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select",
			cast(GCallback)&callBackSelect,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["select"] = 1;
		}
		onSelectListeners ~= dlg;
	}
	extern(C) static void callBackSelect(GtkItem* itemStruct, Item item)
	{
		bit consumed = false;
		
		foreach ( void delegate(Item) dlg ; item.onSelectListeners )
		{
			dlg(item);
		}
		
		return consumed;
	}
	
	void delegate(Item)[] onToggleListeners;
	void addOnToggle(void delegate(Item) dlg)
	{
		if ( !("toggle" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle",
			cast(GCallback)&callBackToggle,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toggle"] = 1;
		}
		onToggleListeners ~= dlg;
	}
	extern(C) static void callBackToggle(GtkItem* itemStruct, Item item)
	{
		bit consumed = false;
		
		foreach ( void delegate(Item) dlg ; item.onToggleListeners )
		{
			dlg(item);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Emits the "select" signal on the given item.
	 * item:
	 * a GtkItem.
	 */
	public void select()
	{
		// void gtk_item_select (GtkItem *item);
		gtk_item_select(gtkItem);
	}
	
	/**
	 * Emits the "deselect" signal on the given item.
	 * item:
	 * a GtkItem.
	 */
	public void deselect()
	{
		// void gtk_item_deselect (GtkItem *item);
		gtk_item_deselect(gtkItem);
	}
	
	/**
	 * Emits the "toggle" signal on the given item.
	 * item:
	 * a GtkItem.
	 * Signal Details
	 * The "deselect" signal
	 * void user_function (GtkItem *item,
	 *  gpointer user_data) : Run first
	 * Emitted when the item is deselected.
	 * item:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public void toggle()
	{
		// void gtk_item_toggle (GtkItem *item);
		gtk_item_toggle(gtkItem);
	}
	
	
}
