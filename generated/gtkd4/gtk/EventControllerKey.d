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
private import std.algorithm;


/**
 * #GtkEventControllerKey is an event controller meant for situations
 * where you need access to key events.
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

	/**
	 * Creates a new event controller that will handle key events.
	 *
	 * Returns: a new #GtkEventControllerKey
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_event_controller_key_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEventControllerKey*) __p, true);
	}

	/**
	 * Returns the value of the GtkEventControllerKey:contains-focus property.
	 *
	 * Returns: %TRUE if focus is within @self or one of its children
	 */
	public bool containsFocus()
	{
		return gtk_event_controller_key_contains_focus(gtkEventControllerKey) != 0;
	}

	/**
	 * Forwards the current event of this @controller to a @widget.
	 *
	 * This function can only be used in handlers for the
	 * #GtkEventControllerKey::key-pressed,
	 * #GtkEventControllerKey::key-released
	 * or
	 * #GtkEventControllerKey::modifiers
	 * signals.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: whether the @widget handled the event
	 */
	public bool forward(Widget widget)
	{
		return gtk_event_controller_key_forward(gtkEventControllerKey, (widget is null) ? null : widget.getWidgetStruct()) != 0;
	}

	/**
	 * Returns the widget that was holding focus before.
	 *
	 * This function can only be used in handlers for the
	 * #GtkEventControllerKey::focus-in and
	 * #GtkEventControllerKey::focus-out signals.
	 *
	 * Returns: the previous focus
	 */
	public Widget getFocusOrigin()
	{
		auto __p = gtk_event_controller_key_get_focus_origin(gtkEventControllerKey);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the widget that will be holding focus afterwards.
	 *
	 * This function can only be used in handlers for the
	 * #GtkEventControllerKey::focus-in and
	 * #GtkEventControllerKey::focus-out signals.
	 *
	 * Returns: the next focus
	 */
	public Widget getFocusTarget()
	{
		auto __p = gtk_event_controller_key_get_focus_target(gtkEventControllerKey);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the key group of the current event of this @controller.
	 * See gdk_event_get_key_group().
	 *
	 * Returns: the key group
	 */
	public uint getGroup()
	{
		return gtk_event_controller_key_get_group(gtkEventControllerKey);
	}

	/**
	 * Gets the input method context of the key @controller.
	 *
	 * Returns: the #GtkIMContext
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

	/**
	 * Returns the value of the GtkEventControllerKey:is-focus property.
	 *
	 * Returns: %TRUE if focus is within @self but not one of its children
	 */
	public bool isFocus()
	{
		return gtk_event_controller_key_is_focus(gtkEventControllerKey) != 0;
	}

	/**
	 * Sets the input method context of the key @controller.
	 *
	 * Params:
	 *     imContext = a #GtkIMContext
	 */
	public void setImContext(IMContext imContext)
	{
		gtk_event_controller_key_set_im_context(gtkEventControllerKey, (imContext is null) ? null : imContext.getIMContextStruct());
	}

	/**
	 * This signal is emitted whenever the widget controlled
	 * by the @controller or one of its descendants) is given
	 * the keyboard focus.
	 *
	 * Params:
	 *     mode = crossing mode indicating what caused this change
	 *     detail = detail indication where the focus is coming from
	 */
	gulong addOnFocusIn(void delegate(GdkCrossingMode, GdkNotifyType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-in", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever the widget controlled
	 * by the @controller (or one of its descendants) loses
	 * the keyboard focus.
	 *
	 * Params:
	 *     mode = crossing mode indicating what caused this change
	 *     detail = detail indication where the focus is going
	 */
	gulong addOnFocusOut(void delegate(GdkCrossingMode, GdkNotifyType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "focus-out", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever the input method context filters away a
	 * keypress and prevents the @controller receiving it. See
	 * gtk_event_controller_key_set_im_context() and
	 * gtk_im_context_filter_keypress().
	 */
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
	 */
	gulong addOnKeyReleased(void delegate(uint, uint, GdkModifierType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "key-released", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted whenever the state of modifier keys and pointer
	 * buttons change.
	 *
	 * Params:
	 *     keyval = the released key.
	 */
	gulong addOnModifiers(bool delegate(GdkModifierType, EventControllerKey) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "modifiers", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
