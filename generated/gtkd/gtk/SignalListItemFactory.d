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


module gtk.SignalListItemFactory;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ListItem;
private import gtk.ListItemFactory;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * #GtkSignalListItemFactory is a #GtkListItemFactory that provides signals
 * that user code can connect to to manage listitems.
 * Signals are emitted for every listitem in the same order:
 * 
 * 1. #GtkSignalListItemFactory::setup is emitted to set up permanent things
 * on the listitem. This usually means constructing the widgets used in the
 * row and adding them to the listitem.
 * 
 * 2. #GtkSignalListItemFactory::bind is emitted to bind the item passed via
 * #GtkListItem:item to the widgets that have been created in step 1 or to
 * add item-specific widgets. Signals are connected to listen to changes -
 * both to changes in the item to update the widgets or to changes in the
 * widgets to update the item. After this signal has been called, the
 * listitem may be shown in a list widget.
 * 
 * 3. #GtkSignalListItemFactory::unbind is emitted to undo everything done
 * in step 2. Usually this means disconnecting signal handlers. Once this
 * signal has been called, the listitem will no longer be used in a list
 * widget.
 * 
 * 4. #GtkSignalListItemFactory::bind and #GtkSignalListItemFactory::unbind
 * may be emitted multiple times again to bind the listitem for use with
 * new items. By reusing listitems, potentially costly setup can be
 * avoided. However, it means code needs to make sure to properly clean
 * up the listitem in step 3 so that no information from the previous
 * use leaks into the next use.
 * 
 * 5. #GtkSignalListItemFactory::teardown is emitted to allow undoing the
 * effects of #GtkSignalListItemFactory::setup. After this signal was emitted
 * on a listitem, the listitem will be destroyed and not be used again.
 * 
 * Note that during the signal emissions, changing properties on the
 * #GtkListItems passed will not trigger notify signals as the listitem's
 * notifications are frozen. See g_object_freeze_notify() for details.
 * 
 * For tracking changes in other properties in the #GtkListItem, the
 * #GtkListItem::notify signal is recommended. The signal can be connected
 * in the #GtkSignalListItemFactory::setup signal and removed again during
 * #GtkSignalListItemFactory::teardown.
 */
public class SignalListItemFactory : ListItemFactory
{
	/** the main Gtk struct */
	protected GtkSignalListItemFactory* gtkSignalListItemFactory;

	/** Get the main Gtk struct */
	public GtkSignalListItemFactory* getSignalListItemFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSignalListItemFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSignalListItemFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSignalListItemFactory* gtkSignalListItemFactory, bool ownedRef = false)
	{
		this.gtkSignalListItemFactory = gtkSignalListItemFactory;
		super(cast(GtkListItemFactory*)gtkSignalListItemFactory, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_signal_list_item_factory_get_type();
	}

	/**
	 * Creates a new #GtkSignalListItemFactory. You need to connect signal
	 * handlers before you use it.
	 *
	 * Returns: a new #GtkSignalListItemFactory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_signal_list_item_factory_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSignalListItemFactory*) __p, true);
	}

	/**
	 * The ::bind signal is emitted when a new #GtkListItem:item has been set
	 * on the @listitem and should be bound for use.
	 *
	 * After this signal was emitted, the listitem might be shown in a #GtkListView
	 * or other list widget.
	 *
	 * The #GtkSignalListItemFactory::unbind signal is the opposite of this signal
	 * and can be used to undo everything done in this signal.
	 *
	 * Params:
	 *     listitem = The #GtkListItem to bind
	 */
	gulong addOnBind(void delegate(ListItem, SignalListItemFactory) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "bind", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::setup signal is emitted when a new listitem has been created and
	 * needs to be setup for use. It is the first signal emitted for every listitem.
	 *
	 * The #GtkSignalListItemFactory::teardown signal is the opposite of this signal
	 * and can be used to undo everything done in this signal.
	 *
	 * Params:
	 *     listitem = The #GtkListItem to set up
	 */
	gulong addOnSetup(void delegate(ListItem, SignalListItemFactory) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "setup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::teardown signal is emitted when a listitem is about to be destroyed.
	 * It is the last signal ever emitted for this @listitem.
	 *
	 * This signal is the opposite of the #GtkSignalListItemFactory::setup signal
	 * and should be used to undo everything done in that signal.
	 *
	 * Params:
	 *     listitem = The #GtkListItem to teardown
	 */
	gulong addOnTeardown(void delegate(ListItem, SignalListItemFactory) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "teardown", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::unbind signal is emitted when a listitem has been removed from use
	 * in a list widget and its new #GtkListItem:item is about to be unset.
	 *
	 * This signal is the opposite of the #GtkSignalListItemFactory::bind signal
	 * and should be used to undo everything done in that signal.
	 *
	 * Params:
	 *     listitem = The #GtkListItem to unbind
	 */
	gulong addOnUnbind(void delegate(ListItem, SignalListItemFactory) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unbind", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
