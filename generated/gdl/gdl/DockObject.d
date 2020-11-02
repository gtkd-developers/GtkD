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


module gdl.DockObject;

private import gdkpixbuf.Pixbuf;
private import gdl.Dock;
private import gdl.c.functions;
public  import gdl.c.types;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import std.algorithm;


/** */
public class DockObject : Container
{
	/** the main Gtk struct */
	protected GdlDockObject* gdlDockObject;

	/** Get the main Gtk struct */
	public GdlDockObject* getDockObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdlDockObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdlDockObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdlDockObject* gdlDockObject, bool ownedRef = false)
	{
		this.gdlDockObject = gdlDockObject;
		super(cast(GtkContainer*)gdlDockObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdl_dock_object_get_type();
	}

	/**
	 * Finds the nickname for a given type
	 *
	 * Params:
	 *     type = The type for which to find the nickname
	 *
	 * Returns: If the object has a nickname, then it is returned.
	 *     Otherwise, the type name.
	 */
	public static string nickFromType(GType type)
	{
		return Str.toString(gdl_dock_object_nick_from_type(type));
	}

	/**
	 * Assigns an object type to a given nickname.  If the nickname already exists,
	 * then it reassigns it to a new object type.
	 *
	 * Params:
	 *     nick = The nickname for the object type
	 *     type = The object type
	 *
	 * Returns: If the nick was previously assigned, the old type is returned.
	 *     Otherwise, %G_TYPE_NONE.
	 */
	public static GType setTypeForNick(string nick, GType type)
	{
		return gdl_dock_object_set_type_for_nick(Str.toStringz(nick), type);
	}

	/**
	 * Finds the object type assigned to a given nickname.
	 *
	 * Params:
	 *     nick = The nickname for the object type
	 *
	 * Returns: If the nickname has previously been assigned, then the corresponding
	 *     object type is returned.  Otherwise, %G_TYPE_NONE.
	 */
	public static GType typeFromNick(string nick)
	{
		return gdl_dock_object_type_from_nick(Str.toStringz(nick));
	}

	/**
	 * Add a link between a #GdlDockObject and a master. It is normally not used
	 * directly because it is automatically called when a new object is docked.
	 *
	 * Params:
	 *     master = A #GdlDockMaster
	 */
	public void bind(ObjectG master)
	{
		gdl_dock_object_bind(gdlDockObject, (master is null) ? null : master.getObjectGStruct());
	}

	/**
	 * This function returns information about placement of a child dock
	 * object inside another dock object.  The function returns %TRUE if
	 * @child is effectively a child of @object.  @placement should
	 * normally be initially setup to %GDL_DOCK_NONE.  If it's set to some
	 * other value, this function will not touch the stored value if the
	 * specified placement is "compatible" with the actual placement of
	 * the child.
	 *
	 * @placement can be %NULL, in which case the function simply tells if
	 * @child is attached to @object.
	 *
	 * Params:
	 *     child = the child of the @object we want the placement for
	 *     placement = where to return the placement information
	 *
	 * Returns: %TRUE if @child is a child of @object.
	 */
	public bool childPlacement(DockObject child, GdlDockPlacement* placement)
	{
		return gdl_dock_object_child_placement(gdlDockObject, (child is null) ? null : child.getDockObjectStruct(), placement) != 0;
	}

	/**
	 * Dissociate a dock object from its parent, including or not its children.
	 *
	 * Params:
	 *     recursive = %TRUE to detach children
	 */
	public void detach(bool recursive)
	{
		gdl_dock_object_detach(gdlDockObject, recursive);
	}

	/**
	 * Dock a dock widget in @object at the defined position.
	 *
	 * Params:
	 *     requestor = The widget to dock
	 *     position = The position for the child
	 *     otherData = Optional data giving additional information
	 *         depending on the dock object.
	 */
	public void dock(DockObject requestor, GdlDockPlacement position, Value otherData)
	{
		gdl_dock_object_dock(gdlDockObject, (requestor is null) ? null : requestor.getDockObjectStruct(), position, (otherData is null) ? null : otherData.getValueStruct());
	}

	/**
	 * Dock a dock widget in @object at the defined position.
	 *
	 * Params:
	 *     x = X coordinate
	 *     y = Y coordinate
	 *     request = A #GdlDockRequest with information about the docking position
	 *
	 * Returns: %TRUE if @object has been docked.
	 */
	public bool dockRequest(int x, int y, GdlDockRequest* request)
	{
		return gdl_dock_object_dock_request(gdlDockObject, x, y, request) != 0;
	}

	/**
	 * Temporarily freezes a dock object, any call to reduce on the object has no
	 * immediate effect. If gdl_dock_object_freeze() has been called more than once,
	 * gdl_dock_object_thaw() must be called an equal number of times.
	 */
	public void freeze()
	{
		gdl_dock_object_freeze(gdlDockObject);
	}

	/**
	 * Retrieves the controller of the object.
	 *
	 * Returns: a #GdlDockObject object
	 *
	 * Since: 3.6
	 */
	public DockObject getController()
	{
		auto __p = gdl_dock_object_get_controller(gdlDockObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockObject)(cast(GdlDockObject*) __p);
	}

	/**
	 * Retrieves the long name of the object. This name is an human readable string
	 * which can be displayed in the user interface.
	 *
	 * Returns: the name of the object.
	 *
	 * Since: 3.6
	 */
	public string getLongName()
	{
		return Str.toString(gdl_dock_object_get_long_name(gdlDockObject));
	}

	/**
	 * Retrieves the master of the object.
	 *
	 * Returns: a #GdlDockMaster object
	 *
	 * Since: 3.6
	 */
	public ObjectG getMaster()
	{
		auto __p = gdl_dock_object_get_master(gdlDockObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Retrieves the name of the object. This name is used to identify the object.
	 *
	 * Returns: the name of the object.
	 *
	 * Since: 3.6
	 */
	public override string getName()
	{
		return Str.toString(gdl_dock_object_get_name(gdlDockObject));
	}

	/**
	 * Returns a parent #GdlDockObject if it exists.
	 *
	 * Returns: a #GdlDockObject or %NULL if such object does not exist.
	 */
	public DockObject getParentObject()
	{
		auto __p = gdl_dock_object_get_parent_object(gdlDockObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DockObject)(cast(GdlDockObject*) __p);
	}

	/**
	 * Retrieves a pixbuf used as the dock object icon.
	 *
	 * Returns: icon for dock object
	 *
	 * Since: 3.6
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gdl_dock_object_get_pixbuf(gdlDockObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Retrieves the a stock id used as the object icon.
	 *
	 * Returns: A stock id corresponding to the object icon.
	 *
	 * Since: 3.6
	 */
	public string getStockId()
	{
		return Str.toString(gdl_dock_object_get_stock_id(gdlDockObject));
	}

	/**
	 * Get the top level #GdlDock widget of @object or %NULL if cannot be found.
	 *
	 * Returns: A #GdlDock or %NULL.
	 */
	public override Dock getToplevel()
	{
		auto __p = gdl_dock_object_get_toplevel(gdlDockObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Dock)(cast(GdlDock*) __p);
	}

	/**
	 * Determine if an object is managed by the dock master, such object is
	 * destroyed automatically when it is not needed anymore.
	 *
	 * Returns: %TRUE if the object is managed automatically by the dock master.
	 *
	 * Since: 3.6
	 */
	public bool isAutomatic()
	{
		return gdl_dock_object_is_automatic(gdlDockObject) != 0;
	}

	/**
	 * Check if the object is bound to a master.
	 *
	 * Returns: %TRUE if @object has a master
	 */
	public bool isBound()
	{
		return gdl_dock_object_is_bound(gdlDockObject) != 0;
	}

	/**
	 * Checks whether a given #GdlDockObject is closed. It can be only hidden and
	 * still in the widget hierarchy or detached.
	 *
	 * Returns: %TRUE if the dock object is closed.
	 *
	 * Since: 3.6
	 */
	public bool isClosed()
	{
		return gdl_dock_object_is_closed(gdlDockObject) != 0;
	}

	/**
	 * Check if an object is a compound object, accepting children widget or not.
	 *
	 * Returns: %TRUE if @object is a compound object.
	 */
	public bool isCompound()
	{
		return gdl_dock_object_is_compound(gdlDockObject) != 0;
	}

	/**
	 * Determine if an object is frozen and is not removed immediately from the
	 * widget hierarchy when it is reduced.
	 *
	 * Returns: %TRUE if the object is frozen.
	 *
	 * Since: 3.6
	 */
	public bool isFrozen()
	{
		return gdl_dock_object_is_frozen(gdlDockObject) != 0;
	}

	/**
	 * Emits the #GdlDockMaster::layout-changed signal on the master of the object
	 * if existing.
	 *
	 * Since: 3.6
	 */
	public void layoutChangedNotify()
	{
		gdl_dock_object_layout_changed_notify(gdlDockObject);
	}

	/**
	 * Presents the GDL object to the user. By example, this will select the
	 * corresponding page if the object is in a notebook. If @child is missing,
	 * only the @object will be show.
	 *
	 * Params:
	 *     child = The child widget to present or %NULL
	 */
	public void present(DockObject child)
	{
		gdl_dock_object_present(gdlDockObject, (child is null) ? null : child.getDockObjectStruct());
	}

	/**
	 * Remove a compound object if it is not longer useful to hold the child. The
	 * object has to be removed and the child reattached to the parent.
	 */
	public void reduce()
	{
		gdl_dock_object_reduce(gdlDockObject);
	}

	/**
	 * Move the @child widget at another place.
	 *
	 * Params:
	 *     child = The child widget to reorder
	 *     newPosition = New position for the child
	 *     otherData = Optional data giving additional information
	 *         depending on the dock object.
	 *
	 * Returns: %TRUE if @child has been moved
	 */
	public bool reorder(DockObject child, GdlDockPlacement newPosition, Value otherData)
	{
		return gdl_dock_object_reorder(gdlDockObject, (child is null) ? null : child.getDockObjectStruct(), newPosition, (otherData is null) ? null : otherData.getValueStruct()) != 0;
	}

	/**
	 * Set the long name of the object. This name is an human readable string
	 * which can be displayed in the user interface.
	 *
	 * Params:
	 *     name = a name for the object
	 *
	 * Since: 3.6
	 */
	public void setLongName(string name)
	{
		gdl_dock_object_set_long_name(gdlDockObject, Str.toStringz(name));
	}

	/**
	 * A #GdlDockObject is managed by default by the dock master, use this function
	 * to make it a manual object if you want to manage the destruction of the
	 * object.
	 *
	 * Since: 3.6
	 */
	public void setManual()
	{
		gdl_dock_object_set_manual(gdlDockObject);
	}

	/**
	 * Set the name of the object used to identify it.
	 *
	 * Params:
	 *     name = a name for the object
	 *
	 * Since: 3.6
	 */
	public override void setName(string name)
	{
		gdl_dock_object_set_name(gdlDockObject, Str.toStringz(name));
	}

	/**
	 * Set a icon for a dock object using a #GdkPixbuf.
	 *
	 * Params:
	 *     icon = a icon or %NULL
	 *
	 * Since: 3.6
	 */
	public void setPixbuf(Pixbuf icon)
	{
		gdl_dock_object_set_pixbuf(gdlDockObject, (icon is null) ? null : icon.getPixbufStruct());
	}

	/**
	 * Set an icon for the dock object using a stock id.
	 *
	 * Params:
	 *     stockId = a stock id
	 *
	 * Since: 3.6
	 */
	public void setStockId(string stockId)
	{
		gdl_dock_object_set_stock_id(gdlDockObject, Str.toStringz(stockId));
	}

	/**
	 * Thaws a dock object frozen with gdl_dock_object_freeze().
	 * Any pending reduce calls are made, maybe leading to the destruction of
	 * the object.
	 */
	public void thaw()
	{
		gdl_dock_object_thaw(gdlDockObject);
	}

	/**
	 * This removes the link between an dock object and its master.
	 */
	public void unbind()
	{
		gdl_dock_object_unbind(gdlDockObject);
	}

	/**
	 * Signals that the #GdlDockObject is detached.
	 *
	 * Params:
	 *     recursive = %TRUE if children have to be detached too.
	 */
	gulong addOnDetach(void delegate(bool, DockObject) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "detach", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the #GdlDockObject has been docked.
	 *
	 * Params:
	 *     requestor = The widget to dock
	 *     position = The position for the child
	 *     otherData = Optional data giving additional information
	 */
	gulong addOnDock(void delegate(DockObject, GdlDockPlacement, Value, DockObject) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "dock", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
