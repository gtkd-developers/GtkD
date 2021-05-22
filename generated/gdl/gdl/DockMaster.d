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


module gdl.DockMaster;

private import gdl.DockObject;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/** */
public class DockMaster : ObjectG
{
	/** the main Gtk struct */
	protected GdlDockMaster* gdlDockMaster;

	/** Get the main Gtk struct */
	public GdlDockMaster* getDockMasterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockMaster;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockMaster;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockMaster* gdlDockMaster, bool ownedRef = false)
	{
		this.gdlDockMaster = gdlDockMaster;
		super(cast(GObject*)gdlDockMaster, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_master_get_type();
	}

	/**
	 * Add a new dock widget to the master.
	 *
	 * Params:
	 *     object = a #GdlDockObject
	 */
	public void add(DockObject object)
	{
		gdl_dock_master_add(gdlDockMaster, (object is null) ? null : object.getDockObjectStruct());
	}

	alias foreac = foreach_;
	/**
	 * Call @function on each dock widget of the master.
	 *
	 * Params:
	 *     function_ = the function to call with each element's data
	 *     userData = user data to pass to the function
	 */
	public void foreach_(GFunc function_, void* userData)
	{
		gdl_dock_master_foreach(gdlDockMaster, function_, userData);
	}

	/**
	 * Call @function on each top level dock widget of the master, including or not
	 * the controller.
	 *
	 * Params:
	 *     includeController = %TRUE to include the controller
	 *     function_ = the function to call with each element's data
	 *     userData = user data to pass to the function
	 */
	public void foreachToplevel(bool includeController, GFunc function_, void* userData)
	{
		gdl_dock_master_foreach_toplevel(gdlDockMaster, includeController, function_, userData);
	}

	/**
	 * Retrieves the #GdlDockObject acting as the controller.
	 *
	 * Returns: A #GdlDockObject.
	 */
	public DockObject getController()
	{
		auto __p = gdl_dock_master_get_controller(gdlDockMaster);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockObject)(cast(GdlDockObject*) __p);
	}

	/**
	 * Return an unique translated dock name.
	 *
	 * Returns: a new translated name. The string has to be freed
	 *     with g_free().
	 *
	 * Since: 3.6
	 */
	public string getDockName()
	{
		auto retStr = gdl_dock_master_get_dock_name(gdlDockMaster);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks for a #GdlDockObject named @nick_name.
	 *
	 * Params:
	 *     nickName = the name of the dock widget.
	 *
	 * Returns: A #GdlDockObject named @nick_name or %NULL if it does not exist.
	 */
	public DockObject getObject(string nickName)
	{
		auto __p = gdl_dock_master_get_object(gdlDockMaster, Str.toStringz(nickName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockObject)(cast(GdlDockObject*) __p);
	}

	/**
	 * Remove one dock widget from the master.
	 *
	 * Params:
	 *     object = a #GdlDockObject
	 */
	public void remove(DockObject object)
	{
		gdl_dock_master_remove(gdlDockMaster, (object is null) ? null : object.getDockObjectStruct());
	}

	/**
	 * Set a new controller. The controller must be a top level #GdlDockObject.
	 *
	 * Params:
	 *     newController = a #GdlDockObject
	 */
	public void setController(DockObject newController)
	{
		gdl_dock_master_set_controller(gdlDockMaster, (newController is null) ? null : newController.getDockObjectStruct());
	}

	/**
	 * Signals that the layout has changed, one or more widgets have been moved,
	 * added or removed.
	 */
	gulong addOnLayoutChanged(void delegate(DockMaster) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "layout-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
