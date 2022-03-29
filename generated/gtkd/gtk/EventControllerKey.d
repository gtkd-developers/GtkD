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


module gtk.EventControllerKey;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.IMContext;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkEventControllerKey is an event controller meant for situations
 * where you need access to key events.
 * 
 * This object was added in 3.24.
 */
public class EventControllerKey : EventController
{
	/** the main Gtk struct */
	protected GtkEventControllerKey* gtkEventControllerKey;

	/** Get the main Gtk struct */
	public GtkEventControllerKey* getEventControllerKeyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEventControllerKey;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventControllerKey;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEventControllerKey* gtkEventControllerKey, bool ownedRef = false)
	{
		this.gtkEventControllerKey = gtkEventControllerKey;
		super(cast(GtkEventController*)gtkEventControllerKey, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_event_controller_key_get_type();
	}

	/** */
	public this(Widget widget)
	{
		auto __p = gtk_event_controller_key_new((widget is null) ? null : widget.getWidgetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerKey*) __p, true);
	}

	/** */
	public bool forward(Widget widget)
	{
		return gtk_event_controller_key_forward(gtkEventControllerKey, (widget is null) ? null : widget.getWidgetStruct()) != 0;
	}

	/** */
	public uint getGroup()
	{
		return gtk_event_controller_key_get_group(gtkEventControllerKey);
	}

	/**
	 * Gets the IM context of a key controller.
	 *
	 * Returns: the IM context
	 *
	 * Since: 3.24
	 */
	public IMContext getImContext()
	{
		auto __p = gtk_event_controller_key_get_im_context(gtkEventControllerKey);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IMContext)(cast(GtkIMContext*) __p);
	}

	/** */
	public void setImContext(IMContext imContext)
	{
		gtk_event_controller_key_set_im_context(gtkEventControllerKey, (imContext is null) ? null : imContext.getIMContextStruct());
	}

	/** */
	gulong addOnFocusIn(void delegate(EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-in", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnFocusOut(void delegate(EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-out", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnImUpdate(void delegate(EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "im-update", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever a key is pressed.
	 *
	 * Params:
	 *     keyval = the pressed key.
	 *     keycode = the raw code of the pressed key.
	 *     state = the bitmask, representing the state of modifier keys and pointer buttons. See #GdkModifierType.
	 *
	 * Returns: %TRUE if the key press was handled, %FALSE otherwise.
	 *
	 * Since: 3.24
	 */
	gulong addOnKeyPressed(bool delegate(uint, uint, GdkModifierType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "key-pressed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever a key is released.
	 *
	 * Params:
	 *     keyval = the released key.
	 *     keycode = the raw code of the released key.
	 *     state = the bitmask, representing the state of modifier keys and pointer buttons. See #GdkModifierType.
	 *
	 * Since: 3.24
	 */
	gulong addOnKeyReleased(void delegate(uint, uint, GdkModifierType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "key-released", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnModifiers(bool delegate(GdkModifierType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "modifiers", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
