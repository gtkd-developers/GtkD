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


module gobject.SignalGroup;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.c.functions;
public  import gobject.c.types;
private import std.algorithm;


/**
 * #GSignalGroup manages to simplify the process of connecting
 * many signals to a #GObject as a group. As such there is no API
 * to disconnect a signal from the group.
 * 
 * In particular, this allows you to:
 * 
 * - Change the target instance, which automatically causes disconnection
 * of the signals from the old instance and connecting to the new instance.
 * - Block and unblock signals as a group
 * - Ensuring that blocked state transfers across target instances.
 * 
 * One place you might want to use such a structure is with #GtkTextView and
 * #GtkTextBuffer. Often times, you'll need to connect to many signals on
 * #GtkTextBuffer from a #GtkTextView subclass. This allows you to create a
 * signal group during instance construction, simply bind the
 * #GtkTextView:buffer property to #GSignalGroup:target and connect
 * all the signals you need. When the #GtkTextView:buffer property changes
 * all of the signals will be transitioned correctly.
 *
 * Since: 2.72
 */
public class SignalGroup : ObjectG
{
	/** the main Gtk struct */
	protected GSignalGroup* gSignalGroup;

	/** Get the main Gtk struct */
	public GSignalGroup* getSignalGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSignalGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSignalGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSignalGroup* gSignalGroup, bool ownedRef = false)
	{
		this.gSignalGroup = gSignalGroup;
		super(cast(GObject*)gSignalGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_signal_group_get_type();
	}

	/**
	 * Creates a new #GSignalGroup for target instances of @target_type.
	 *
	 * Params:
	 *     targetType = the #GType of the target instance.
	 *
	 * Returns: a new #GSignalGroup
	 *
	 * Since: 2.72
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType targetType)
	{
		auto __p = g_signal_group_new(targetType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSignalGroup*) __p, true);
	}

	/**
	 * Blocks all signal handlers managed by @self so they will not
	 * be called during any signal emissions. Must be unblocked exactly
	 * the same number of times it has been blocked to become active again.
	 *
	 * This blocked state will be kept across changes of the target instance.
	 *
	 * Since: 2.72
	 */
	public void block()
	{
		g_signal_group_block(gSignalGroup);
	}

	/**
	 * Connects @c_handler to the signal @detailed_signal
	 * on the target instance of @self.
	 *
	 * You cannot connect a signal handler after #GSignalGroup:target has been set.
	 *
	 * Params:
	 *     detailedSignal = a string of the form "signal-name::detail"
	 *     cHandler = the #GCallback to connect
	 *     data = the data to pass to @c_handler calls
	 *
	 * Since: 2.72
	 */
	public void connect(string detailedSignal, GCallback cHandler, void* data)
	{
		g_signal_group_connect(gSignalGroup, Str.toStringz(detailedSignal), cHandler, data);
	}

	/**
	 * Connects @c_handler to the signal @detailed_signal
	 * on the target instance of @self.
	 *
	 * The @c_handler will be called after the default handler of the signal.
	 *
	 * You cannot connect a signal handler after #GSignalGroup:target has been set.
	 *
	 * Params:
	 *     detailedSignal = a string of the form "signal-name::detail"
	 *     cHandler = the #GCallback to connect
	 *     data = the data to pass to @c_handler calls
	 *
	 * Since: 2.72
	 */
	public void connectAfter(string detailedSignal, GCallback cHandler, void* data)
	{
		g_signal_group_connect_after(gSignalGroup, Str.toStringz(detailedSignal), cHandler, data);
	}

	/**
	 * Connects @c_handler to the signal @detailed_signal
	 * on the target instance of @self.
	 *
	 * You cannot connect a signal handler after #GSignalGroup:target has been set.
	 *
	 * Params:
	 *     detailedSignal = a string of the form "signal-name::detail"
	 *     cHandler = the #GCallback to connect
	 *     data = the data to pass to @c_handler calls
	 *     notify = function to be called when disposing of @self
	 *     flags = the flags used to create the signal connection
	 *
	 * Since: 2.72
	 */
	public void connectData(string detailedSignal, GCallback cHandler, void* data, GClosureNotify notify, GConnectFlags flags)
	{
		g_signal_group_connect_data(gSignalGroup, Str.toStringz(detailedSignal), cHandler, data, notify, flags);
	}

	/**
	 * Connects @c_handler to the signal @detailed_signal on #GSignalGroup:target.
	 *
	 * Ensures that the @object stays alive during the call to @c_handler
	 * by temporarily adding a reference count. When the @object is destroyed
	 * the signal handler will automatically be removed.
	 *
	 * You cannot connect a signal handler after #GSignalGroup:target has been set.
	 *
	 * Params:
	 *     detailedSignal = a string of the form `signal-name` with optional `::signal-detail`
	 *     cHandler = the #GCallback to connect
	 *     object = the #GObject to pass as data to @c_handler calls
	 *     flags = #GConnectFlags for the signal connection
	 *
	 * Since: 2.72
	 */
	public void connectObject(string detailedSignal, GCallback cHandler, void* object, GConnectFlags flags)
	{
		g_signal_group_connect_object(gSignalGroup, Str.toStringz(detailedSignal), cHandler, object, flags);
	}

	/**
	 * Connects @c_handler to the signal @detailed_signal
	 * on the target instance of @self.
	 *
	 * The instance on which the signal is emitted and @data
	 * will be swapped when calling @c_handler.
	 *
	 * You cannot connect a signal handler after #GSignalGroup:target has been set.
	 *
	 * Params:
	 *     detailedSignal = a string of the form "signal-name::detail"
	 *     cHandler = the #GCallback to connect
	 *     data = the data to pass to @c_handler calls
	 *
	 * Since: 2.72
	 */
	public void connectSwapped(string detailedSignal, GCallback cHandler, void* data)
	{
		g_signal_group_connect_swapped(gSignalGroup, Str.toStringz(detailedSignal), cHandler, data);
	}

	/**
	 * Gets the target instance used when connecting signals.
	 *
	 * Returns: The target instance
	 *
	 * Since: 2.72
	 */
	public ObjectG dupTarget()
	{
		auto __p = g_signal_group_dup_target(gSignalGroup);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Sets the target instance used when connecting signals. Any signal
	 * that has been registered with g_signal_group_connect_object() or
	 * similar functions will be connected to this object.
	 *
	 * If the target instance was previously set, signals will be
	 * disconnected from that object prior to connecting to @target.
	 *
	 * Params:
	 *     target = The target instance used
	 *         when connecting signals.
	 *
	 * Since: 2.72
	 */
	public void setTarget(ObjectG target)
	{
		g_signal_group_set_target(gSignalGroup, (target is null) ? null : target.getObjectGStruct());
	}

	/**
	 * Unblocks all signal handlers managed by @self so they will be
	 * called again during any signal emissions unless it is blocked
	 * again. Must be unblocked exactly the same number of times it
	 * has been blocked to become active again.
	 *
	 * Since: 2.72
	 */
	public void unblock()
	{
		g_signal_group_unblock(gSignalGroup);
	}

	/**
	 * This signal is emitted when #GSignalGroup:target is set to a new value
	 * other than %NULL. It is similar to #GObject::notify on `target` except it
	 * will not emit when #GSignalGroup:target is %NULL and also allows for
	 * receiving the #GObject without a data-race.
	 *
	 * Params:
	 *     instance_ = a #GObject containing the new value for #GSignalGroup:target
	 *
	 * Since: 2.72
	 */
	gulong addOnBind(void delegate(ObjectG, SignalGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "bind", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the target instance of @self is set to a
	 * new #GObject.
	 *
	 * This signal will only be emitted if the previous target of @self is
	 * non-%NULL.
	 *
	 * Since: 2.72
	 */
	gulong addOnUnbind(void delegate(SignalGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unbind", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
