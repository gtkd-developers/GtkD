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


module gtk.DropTarget;

private import gdk.ContentFormats;
private import gdk.Drop;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * GtkDropTarget is an event controller implementing a simple way to
 * receive Drag-and-Drop operations.
 * 
 * The most basic way to use a #GtkDropTarget to receive drops on a
 * widget is to create it via gtk_drop_target_new() passing in the
 * #GType of the data you want to receive and connect to the
 * GtkDropTarget::drop signal to receive the data.
 * 
 * #GtkDropTarget supports more options, such as:
 * 
 * * rejecting potential drops via the #GtkDropTarget::accept signal
 * and the gtk_drop_target_reject() function to let other drop
 * targets handle the drop
 * * tracking an ongoing drag operation before the drop via the
 * #GtkDropTarget::enter, #GtkDropTarget::motion and
 * #GtkDropTarget::leave signals
 * * configuring how to receive data by setting the
 * #GtkDropTarget:preload property and listening for its availability
 * via the #GtkDropTarget:value property
 * 
 * However, #GtkDropTarget is ultimately modeled in a synchronous way
 * and only supports data transferred via #GType.
 * If you want full control over an ongoing drop, the #GtkDropTargetAsync
 * object gives you this ability.
 * 
 * While a pointer is dragged over the drop target's widget and the drop
 * has not been rejected, that widget will receive the
 * %GTK_STATE_FLAG_DROP_ACTIVE state, which can be used to style the widget.
 */
public class DropTarget : EventController
{
	/** the main Gtk struct */
	protected GtkDropTarget* gtkDropTarget;

	/** Get the main Gtk struct */
	public GtkDropTarget* getDropTargetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDropTarget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDropTarget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDropTarget* gtkDropTarget, bool ownedRef = false)
	{
		this.gtkDropTarget = gtkDropTarget;
		super(cast(GtkEventController*)gtkDropTarget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drop_target_get_type();
	}

	/**
	 * Creates a new #GtkDropTarget object.
	 *
	 * If the drop target should support more than 1 type, pass
	 * %G_TYPE_INVALID for @type and then call
	 * gtk_drop_target_set_gtypes().
	 *
	 * Params:
	 *     type = The supported type or %G_TYPE_INVALID
	 *     actions = the supported actions
	 *
	 * Returns: the new #GtkDropTarget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType type, GdkDragAction actions)
	{
		auto __p = gtk_drop_target_new(type, actions);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDropTarget*) __p, true);
	}

	/**
	 * Gets the actions that this drop target supports.
	 *
	 * Returns: the actions that this drop target supports
	 */
	public GdkDragAction getActions()
	{
		return gtk_drop_target_get_actions(gtkDropTarget);
	}

	/**
	 * Gets the currently handled drop operation.
	 *
	 * If no drop operation is going on, %NULL is returned.
	 *
	 * Returns: The current drop
	 */
	public Drop getDrop()
	{
		auto __p = gtk_drop_target_get_drop(gtkDropTarget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drop)(cast(GdkDrop*) __p);
	}

	/**
	 * Gets the data formats that this drop target accepts.
	 *
	 * If the result is %NULL, all formats are expected to be supported.
	 *
	 * Returns: the supported data formats
	 */
	public ContentFormats getFormats()
	{
		auto __p = gtk_drop_target_get_formats(gtkDropTarget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Gets the list of supported #GTypes for @self. If no type have been set,
	 * %NULL will be returned.
	 *
	 * Returns: %G_TYPE_INVALID-terminated array of types included in @formats or
	 *     %NULL if none.
	 */
	public GType[] getGtypes()
	{
		size_t nTypes;

		auto __p = gtk_drop_target_get_gtypes(gtkDropTarget, &nTypes);

		return __p[0 .. nTypes];
	}

	/**
	 * Gets the value of the GtkDropTarget:preload property.
	 *
	 * Returns: %TRUE if drop data should be preloaded
	 */
	public bool getPreload()
	{
		return gtk_drop_target_get_preload(gtkDropTarget) != 0;
	}

	/**
	 * Gets the value of the GtkDropTarget:value property.
	 *
	 * Returns: The current drop data
	 */
	public Value getValue()
	{
		auto __p = gtk_drop_target_get_value(gtkDropTarget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Rejects the ongoing drop operation.
	 *
	 * If no drop operation is ongoing - when GdkDropTarget:drop
	 * returns %NULL - this function does nothing.
	 *
	 * This function should be used when delaying the decision
	 * on whether to accept a drag or not until after reading
	 * the data.
	 */
	public void reject()
	{
		gtk_drop_target_reject(gtkDropTarget);
	}

	/**
	 * Sets the actions that this drop target supports.
	 *
	 * Params:
	 *     actions = the supported actions
	 */
	public void setActions(GdkDragAction actions)
	{
		gtk_drop_target_set_actions(gtkDropTarget, actions);
	}

	/**
	 * Sets the supported #GTypes for this drop target.
	 *
	 * The GtkDropTarget::drop signal will
	 *
	 * Params:
	 *     types = all supported #GTypes that can be dropped
	 */
	public void setGtypes(GType[] types)
	{
		gtk_drop_target_set_gtypes(gtkDropTarget, types.ptr, cast(size_t)types.length);
	}

	/**
	 * Sets the GtkDropTarget:preload property.
	 *
	 * Params:
	 *     preload = %TRUE to preload drop data
	 */
	public void setPreload(bool preload)
	{
		gtk_drop_target_set_preload(gtkDropTarget, preload);
	}

	/**
	 * The ::accept signal is emitted on the drop site when a drop operation
	 * is about to begin.
	 * If the drop is not accepted, %FALSE will be returned and the drop target
	 * will ignore the drop. If %TRUE is returned, the drop is accepted for now
	 * but may be rejected later via a call to gtk_drop_target_reject() or
	 * ultimately by returning %FALSE from GtkDropTarget::drop
	 *
	 * The default handler for this signal decides whether to accept the drop
	 * based on the formats provided by the @drop.
	 *
	 * If the decision whether the drop will be accepted or rejected needs
	 * inspecting the data, this function should return %TRUE, the
	 * GtkDropTarget:preload property should be set and the value
	 * should be inspected via the GObject::notify:value signal and then call
	 * gtk_drop_target_reject().
	 *
	 * Params:
	 *     drop = the #GdkDrop
	 *
	 * Returns: %TRUE if @drop is accepted
	 */
	gulong addOnAccept(bool delegate(Drop, DropTarget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accept", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::drop signal is emitted on the drop site when the user drops
	 * the data onto the widget. The signal handler must determine whether
	 * the pointer position is in a drop zone or not. If it is not in a drop
	 * zone, it returns %FALSE and no further processing is necessary.
	 *
	 * Otherwise, the handler returns %TRUE. In this case, this handler will
	 * accept the drop. The handler is responsible for rading the given @value
	 * and performing the drop operation.
	 *
	 * Params:
	 *     value = the #GValue being dropped
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: whether the drop was accepted at the given pointer position
	 */
	gulong addOnDrop(bool delegate(Value, double, double, DropTarget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drop", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::enter signal is emitted on the drop site when the pointer
	 * enters the widget. It can be used to set up custom highlighting.
	 *
	 * Params:
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: Preferred action for this drag operation or 0 if dropping is not
	 *     supported at the current @x,@y location.
	 */
	gulong addOnEnter(GdkDragAction delegate(double, double, DropTarget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::leave signal is emitted on the drop site when the pointer
	 * leaves the widget. Its main purpose it to undo things done in
	 * #GtkDropTarget::enter.
	 */
	gulong addOnLeave(void delegate(DropTarget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::motion signal is emitted while the pointer is moving
	 * over the drop target.
	 *
	 * Params:
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: Preferred action for this drag operation or 0 if dropping is not
	 *     supported at the current @x,@y location.
	 */
	gulong addOnMotion(GdkDragAction delegate(double, double, DropTarget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
