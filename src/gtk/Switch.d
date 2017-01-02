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


module gtk.Switch;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableIF;
private import gtk.ActivatableT;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkSwitch is a widget that has two states: on or off. The user can control
 * which state should be active by clicking the empty area, or by dragging the
 * handle.
 * 
 * GtkSwitch can also handle situations where the underlying state changes with
 * a delay. See #GtkSwitch::state-set for details.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * switch
 * ╰── slider
 * ]|
 * 
 * GtkSwitch has two css nodes, the main node with the name switch and a subnode
 * named slider. Neither of them is using any style classes.
 */
public class Switch : Widget, ActionableIF, ActivatableIF
{
	/** the main Gtk struct */
	protected GtkSwitch* gtkSwitch;

	/** Get the main Gtk struct */
	public GtkSwitch* getSwitchStruct()
	{
		return gtkSwitch;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSwitch;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSwitch = cast(GtkSwitch*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSwitch* gtkSwitch, bool ownedRef = false)
	{
		this.gtkSwitch = gtkSwitch;
		super(cast(GtkWidget*)gtkSwitch, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkSwitch);

	// add the Activatable capabilities
	mixin ActivatableT!(GtkSwitch);


	/** */
	public static GType getType()
	{
		return gtk_switch_get_type();
	}

	/**
	 * Creates a new #GtkSwitch widget.
	 *
	 * Return: the newly created #GtkSwitch instance
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_switch_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkSwitch*) p);
	}

	/**
	 * Gets whether the #GtkSwitch is in its “on” or “off” state.
	 *
	 * Return: %TRUE if the #GtkSwitch is active, and %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public bool getActive()
	{
		return gtk_switch_get_active(gtkSwitch) != 0;
	}

	/**
	 * Gets the underlying state of the #GtkSwitch.
	 *
	 * Return: the underlying state
	 *
	 * Since: 3.14
	 */
	public bool getState()
	{
		return gtk_switch_get_state(gtkSwitch) != 0;
	}

	/**
	 * Changes the state of @sw to the desired one.
	 *
	 * Params:
	 *     isActive = %TRUE if @sw should be active, and %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public void setActive(bool isActive)
	{
		gtk_switch_set_active(gtkSwitch, isActive);
	}

	/**
	 * Sets the underlying state of the #GtkSwitch.
	 *
	 * Normally, this is the same as #GtkSwitch:active, unless the switch
	 * is set up for delayed state changes. This function is typically
	 * called from a #GtkSwitch::state-set signal handler.
	 *
	 * See #GtkSwitch::state-set for details.
	 *
	 * Params:
	 *     state = the new state
	 *
	 * Since: 3.14
	 */
	public void setState(bool state)
	{
		gtk_switch_set_state(gtkSwitch, state);
	}

	protected class OnActivateDelegateWrapper
	{
		void delegate(Switch) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Switch) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateDelegateWrapper[] onActivateListeners;

	/**
	 * The ::activate signal on GtkSwitch is an action signal and
	 * emitting it causes the switch to animate.
	 * Applications should never connect to this signal, but use the
	 * notify::active signal.
	 */
	gulong addOnActivate(void delegate(Switch) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateListeners ~= new OnActivateDelegateWrapper(dlg, 0, connectFlags);
		onActivateListeners[onActivateListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)onActivateListeners[onActivateListeners.length - 1],
			cast(GClosureNotify)&callBackActivateDestroy,
			connectFlags);
		return onActivateListeners[onActivateListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackActivate(GtkSwitch* switchStruct,OnActivateDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateDestroy(OnActivateDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivate(wrapper);
	}

	protected void internalRemoveOnActivate(OnActivateDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateListeners[index] = null;
				onActivateListeners = std.algorithm.remove(onActivateListeners, index);
				break;
			}
		}
	}
	

	protected class OnStateSetDelegateWrapper
	{
		bool delegate(bool, Switch) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(bool, Switch) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnStateSetDelegateWrapper[] onStateSetListeners;

	/**
	 * The ::state-set signal on GtkSwitch is emitted to change the underlying
	 * state. It is emitted when the user changes the switch position. The
	 * default handler keeps the state in sync with the #GtkSwitch:active
	 * property.
	 *
	 * To implement delayed state change, applications can connect to this signal,
	 * initiate the change of the underlying state, and call gtk_switch_set_state()
	 * when the underlying state change is complete. The signal handler should
	 * return %TRUE to prevent the default handler from running.
	 *
	 * Visually, the underlying state is represented by the trough color of
	 * the switch, while the #GtkSwitch:active property is represented by the
	 * position of the switch.
	 *
	 * Params:
	 *     state = the new state of the switch
	 *
	 * Return: %TRUE to stop the signal emission
	 *
	 * Since: 3.14
	 */
	gulong addOnStateSet(bool delegate(bool, Switch) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onStateSetListeners ~= new OnStateSetDelegateWrapper(dlg, 0, connectFlags);
		onStateSetListeners[onStateSetListeners.length - 1].handlerId = Signals.connectData(
			this,
			"state-set",
			cast(GCallback)&callBackStateSet,
			cast(void*)onStateSetListeners[onStateSetListeners.length - 1],
			cast(GClosureNotify)&callBackStateSetDestroy,
			connectFlags);
		return onStateSetListeners[onStateSetListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackStateSet(GtkSwitch* switchStruct, bool state,OnStateSetDelegateWrapper wrapper)
	{
		return wrapper.dlg(state, wrapper.outer);
	}
	
	extern(C) static void callBackStateSetDestroy(OnStateSetDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnStateSet(wrapper);
	}

	protected void internalRemoveOnStateSet(OnStateSetDelegateWrapper source)
	{
		foreach(index, wrapper; onStateSetListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onStateSetListeners[index] = null;
				onStateSetListeners = std.algorithm.remove(onStateSetListeners, index);
				break;
			}
		}
	}
	
}
