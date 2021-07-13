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


module gdk.KeyEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a key-based device.
 */
public class KeyEvent : Event
{
	/** the main Gtk struct */
	protected GdkKeyEvent* gdkKeyEvent;

	/** Get the main Gtk struct */
	public GdkKeyEvent* getKeyEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkKeyEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkKeyEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkKeyEvent* gdkKeyEvent, bool ownedRef = false)
	{
		this.gdkKeyEvent = gdkKeyEvent;
		super(cast(GdkEvent*)gdkKeyEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_key_event_get_type();
	}

	/**
	 * Extracts the consumed modifiers from a key event.
	 *
	 * Returns: the consumed modifiers or @event
	 */
	public GdkModifierType getConsumedModifiers()
	{
		return gdk_key_event_get_consumed_modifiers(cast(GdkEvent*)gdkKeyEvent);
	}

	/**
	 * Extracts the keycode from a key event.
	 *
	 * Returns: the keycode of @event
	 */
	public uint getKeycode()
	{
		return gdk_key_event_get_keycode(cast(GdkEvent*)gdkKeyEvent);
	}

	/**
	 * Extracts the keyval from a key event.
	 *
	 * Returns: the keyval of @event
	 */
	public uint getKeyval()
	{
		return gdk_key_event_get_keyval(cast(GdkEvent*)gdkKeyEvent);
	}

	/**
	 * Extracts the layout from a key event.
	 *
	 * Returns: the layout of @event
	 */
	public uint getLayout()
	{
		return gdk_key_event_get_layout(cast(GdkEvent*)gdkKeyEvent);
	}

	/**
	 * Extracts the shift level from a key event.
	 *
	 * Returns: the shift level of @event
	 */
	public uint getLevel()
	{
		return gdk_key_event_get_level(cast(GdkEvent*)gdkKeyEvent);
	}

	/**
	 * Gets a keyval and modifier combination that will match
	 * the event.
	 *
	 * See [method@Gdk.KeyEvent.matches].
	 *
	 * Params:
	 *     keyval = return location for a keyval
	 *     modifiers = return location for modifiers
	 *
	 * Returns: %TRUE on success
	 */
	public bool getMatch(out uint keyval, out GdkModifierType modifiers)
	{
		return gdk_key_event_get_match(cast(GdkEvent*)gdkKeyEvent, &keyval, &modifiers) != 0;
	}

	/**
	 * Extracts whether the key event is for a modifier key.
	 *
	 * Returns: %TRUE if the @event is for a modifier key
	 */
	public bool isModifier()
	{
		return gdk_key_event_is_modifier(cast(GdkEvent*)gdkKeyEvent) != 0;
	}

	/**
	 * Matches a key event against a keyval and modifiers.
	 *
	 * This is typically used to trigger keyboard shortcuts such as Ctrl-C.
	 *
	 * Partial matches are possible where the combination matches
	 * if the currently active group is ignored.
	 *
	 * Note that we ignore Caps Lock for matching.
	 *
	 * Params:
	 *     keyval = the keyval to match
	 *     modifiers = the modifiers to match
	 *
	 * Returns: a `GdkKeyMatch` value describing whether @event matches
	 */
	public GdkKeyMatch matches(uint keyval, GdkModifierType modifiers)
	{
		return gdk_key_event_matches(cast(GdkEvent*)gdkKeyEvent, keyval, modifiers);
	}
}
