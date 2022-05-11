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


module gtk.DropControllerMotion;

private import gdk.Drop;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkDropControllerMotion` is an event controller tracking
 * the pointer during Drag-and-Drop operations.
 * 
 * It is modeled after [class@Gtk.EventControllerMotion] so if you
 * have used that, this should feel really familiar.
 * 
 * This controller is not able to accept drops, use [class@Gtk.DropTarget]
 * for that purpose.
 */
public class DropControllerMotion : EventController
{
	/** the main Gtk struct */
	protected GtkDropControllerMotion* gtkDropControllerMotion;

	/** Get the main Gtk struct */
	public GtkDropControllerMotion* getDropControllerMotionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDropControllerMotion;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDropControllerMotion;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDropControllerMotion* gtkDropControllerMotion, bool ownedRef = false)
	{
		this.gtkDropControllerMotion = gtkDropControllerMotion;
		super(cast(GtkEventController*)gtkDropControllerMotion, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drop_controller_motion_get_type();
	}

	/**
	 * Creates a new event controller that will handle pointer motion
	 * events during drag and drop.
	 *
	 * Returns: a new `GtkDropControllerMotion`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_drop_controller_motion_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDropControllerMotion*) __p, true);
	}

	/**
	 * Returns if a Drag-and-Drop operation is within the widget
	 * @self or one of its children.
	 *
	 * Returns: %TRUE if a dragging pointer is within @self or one of its children.
	 */
	public bool containsPointer()
	{
		return gtk_drop_controller_motion_contains_pointer(gtkDropControllerMotion) != 0;
	}

	/**
	 * Returns the `GdkDrop` of a current Drag-and-Drop operation
	 * over the widget of @self.
	 *
	 * Returns: The `GdkDrop` currently
	 *     happening within @self
	 */
	public Drop getDrop()
	{
		auto __p = gtk_drop_controller_motion_get_drop(gtkDropControllerMotion);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drop)(cast(GdkDrop*) __p);
	}

	/**
	 * Returns if a Drag-and-Drop operation is within the widget
	 * @self, not one of its children.
	 *
	 * Returns: %TRUE if a dragging pointer is within @self but
	 *     not one of its children
	 */
	public bool isPointer()
	{
		return gtk_drop_controller_motion_is_pointer(gtkDropControllerMotion) != 0;
	}

	/**
	 * Signals that the pointer has entered the widget.
	 *
	 * Params:
	 *     x = coordinates of pointer location
	 *     y = coordinates of pointer location
	 */
	gulong addOnEnter(void delegate(double, double, DropControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the pointer has left the widget.
	 */
	gulong addOnLeave(void delegate(DropControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the pointer moves inside the widget.
	 *
	 * Params:
	 *     x = the x coordinate
	 *     y = the y coordinate
	 */
	gulong addOnMotion(void delegate(double, double, DropControllerMotion) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
