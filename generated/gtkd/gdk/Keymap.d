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


module gdk.Keymap;

private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * A #GdkKeymap defines the translation from keyboard state
 * (including a hardware key, a modifier mask, and active keyboard group)
 * to a keyval. This translation has two phases. The first phase is
 * to determine the effective keyboard group and level for the keyboard
 * state; the second phase is to look up the keycode/group/level triplet
 * in the keymap and see what keyval it corresponds to.
 */
public class Keymap : ObjectG
{
	/** the main Gtk struct */
	protected GdkKeymap* gdkKeymap;

	/** Get the main Gtk struct */
	public GdkKeymap* getKeymapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkKeymap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkKeymap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkKeymap* gdkKeymap, bool ownedRef = false)
	{
		this.gdkKeymap = gdkKeymap;
		super(cast(GObject*)gdkKeymap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_keymap_get_type();
	}

	/**
	 * Returns the #GdkKeymap attached to the default display.
	 *
	 * Deprecated: Use gdk_keymap_get_for_display() instead
	 *
	 * Returns: the #GdkKeymap attached to the default display.
	 */
	public static Keymap getDefault()
	{
		auto p = gdk_keymap_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Keymap)(cast(GdkKeymap*) p);
	}

	/**
	 * Returns the #GdkKeymap attached to @display.
	 *
	 * Params:
	 *     display = the #GdkDisplay.
	 *
	 * Returns: the #GdkKeymap attached to @display.
	 *
	 * Since: 2.2
	 */
	public static Keymap getForDisplay(Display display)
	{
		auto p = gdk_keymap_get_for_display((display is null) ? null : display.getDisplayStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Keymap)(cast(GdkKeymap*) p);
	}

	/**
	 * Maps the non-virtual modifiers (i.e Mod2, Mod3, ...) which are set
	 * in @state to the virtual modifiers (i.e. Super, Hyper and Meta) and
	 * set the corresponding bits in @state.
	 *
	 * GDK already does this before delivering key events, but for
	 * compatibility reasons, it only sets the first virtual modifier
	 * it finds, whereas this function sets all matching virtual modifiers.
	 *
	 * This function is useful when matching key events against
	 * accelerators.
	 *
	 * Params:
	 *     state = pointer to the modifier mask to change
	 *
	 * Since: 2.20
	 */
	public void addVirtualModifiers(ref GdkModifierType state)
	{
		gdk_keymap_add_virtual_modifiers(gdkKeymap, &state);
	}

	/**
	 * Returns whether the Caps Lock modifer is locked.
	 *
	 * Returns: %TRUE if Caps Lock is on
	 *
	 * Since: 2.16
	 */
	public bool getCapsLockState()
	{
		return gdk_keymap_get_caps_lock_state(gdkKeymap) != 0;
	}

	/**
	 * Returns the direction of effective layout of the keymap.
	 *
	 * Returns: %PANGO_DIRECTION_LTR or %PANGO_DIRECTION_RTL
	 *     if it can determine the direction. %PANGO_DIRECTION_NEUTRAL
	 *     otherwise.
	 */
	public PangoDirection getDirection()
	{
		return gdk_keymap_get_direction(gdkKeymap);
	}

	/**
	 * Returns the keyvals bound to @hardware_keycode.
	 * The Nth #GdkKeymapKey in @keys is bound to the Nth
	 * keyval in @keyvals. Free the returned arrays with g_free().
	 * When a keycode is pressed by the user, the keyval from
	 * this list of entries is selected by considering the effective
	 * keyboard group and level. See gdk_keymap_translate_keyboard_state().
	 *
	 * Params:
	 *     hardwareKeycode = a keycode
	 *     keys = return
	 *         location for array of #GdkKeymapKey, or %NULL
	 *     keyvals = return
	 *         location for array of keyvals, or %NULL
	 *
	 * Returns: %TRUE if there were any entries
	 */
	public bool getEntriesForKeycode(uint hardwareKeycode, out GdkKeymapKey[] keys, out uint[] keyvals)
	{
		GdkKeymapKey* outkeys = null;
		uint* outkeyvals = null;
		int nEntries;

		auto p = gdk_keymap_get_entries_for_keycode(gdkKeymap, hardwareKeycode, &outkeys, &outkeyvals, &nEntries) != 0;

		keys = outkeys[0 .. nEntries];
		keyvals = outkeyvals[0 .. nEntries];

		return p;
	}

	/**
	 * Obtains a list of keycode/group/level combinations that will
	 * generate @keyval. Groups and levels are two kinds of keyboard mode;
	 * in general, the level determines whether the top or bottom symbol
	 * on a key is used, and the group determines whether the left or
	 * right symbol is used. On US keyboards, the shift key changes the
	 * keyboard level, and there are no groups. A group switch key might
	 * convert a keyboard between Hebrew to English modes, for example.
	 * #GdkEventKey contains a %group field that indicates the active
	 * keyboard group. The level is computed from the modifier mask.
	 * The returned array should be freed
	 * with g_free().
	 *
	 * Params:
	 *     keyval = a keyval, such as %GDK_KEY_a, %GDK_KEY_Up, %GDK_KEY_Return, etc.
	 *     keys = return location
	 *         for an array of #GdkKeymapKey
	 *
	 * Returns: %TRUE if keys were found and returned
	 */
	public bool getEntriesForKeyval(uint keyval, out GdkKeymapKey[] keys)
	{
		GdkKeymapKey* outkeys = null;
		int nKeys;

		auto p = gdk_keymap_get_entries_for_keyval(gdkKeymap, keyval, &outkeys, &nKeys) != 0;

		keys = outkeys[0 .. nKeys];

		return p;
	}

	/**
	 * Returns the modifier mask the @keymap’s windowing system backend
	 * uses for a particular purpose.
	 *
	 * Note that this function always returns real hardware modifiers, not
	 * virtual ones (e.g. it will return #GDK_MOD1_MASK rather than
	 * #GDK_META_MASK if the backend maps MOD1 to META), so there are use
	 * cases where the return value of this function has to be transformed
	 * by gdk_keymap_add_virtual_modifiers() in order to contain the
	 * expected result.
	 *
	 * Params:
	 *     intent = the use case for the modifier mask
	 *
	 * Returns: the modifier mask used for @intent.
	 *
	 * Since: 3.4
	 */
	public GdkModifierType getModifierMask(GdkModifierIntent intent)
	{
		return gdk_keymap_get_modifier_mask(gdkKeymap, intent);
	}

	/**
	 * Returns the current modifier state.
	 *
	 * Returns: the current modifier state.
	 *
	 * Since: 3.4
	 */
	public uint getModifierState()
	{
		return gdk_keymap_get_modifier_state(gdkKeymap);
	}

	/**
	 * Returns whether the Num Lock modifer is locked.
	 *
	 * Returns: %TRUE if Num Lock is on
	 *
	 * Since: 3.0
	 */
	public bool getNumLockState()
	{
		return gdk_keymap_get_num_lock_state(gdkKeymap) != 0;
	}

	/**
	 * Returns whether the Scroll Lock modifer is locked.
	 *
	 * Returns: %TRUE if Scroll Lock is on
	 *
	 * Since: 3.18
	 */
	public bool getScrollLockState()
	{
		return gdk_keymap_get_scroll_lock_state(gdkKeymap) != 0;
	}

	/**
	 * Determines if keyboard layouts for both right-to-left and left-to-right
	 * languages are in use.
	 *
	 * Returns: %TRUE if there are layouts in both directions, %FALSE otherwise
	 *
	 * Since: 2.12
	 */
	public bool haveBidiLayouts()
	{
		return gdk_keymap_have_bidi_layouts(gdkKeymap) != 0;
	}

	/**
	 * Looks up the keyval mapped to a keycode/group/level triplet.
	 * If no keyval is bound to @key, returns 0. For normal user input,
	 * you want to use gdk_keymap_translate_keyboard_state() instead of
	 * this function, since the effective group/level may not be
	 * the same as the current keyboard state.
	 *
	 * Params:
	 *     key = a #GdkKeymapKey with keycode, group, and level initialized
	 *
	 * Returns: a keyval, or 0 if none was mapped to the given @key
	 */
	public uint lookupKey(GdkKeymapKey* key)
	{
		return gdk_keymap_lookup_key(gdkKeymap, key);
	}

	/**
	 * Maps the virtual modifiers (i.e. Super, Hyper and Meta) which
	 * are set in @state to their non-virtual counterparts (i.e. Mod2,
	 * Mod3,...) and set the corresponding bits in @state.
	 *
	 * This function is useful when matching key events against
	 * accelerators.
	 *
	 * Params:
	 *     state = pointer to the modifier state to map
	 *
	 * Returns: %FALSE if two virtual modifiers were mapped to the
	 *     same non-virtual modifier. Note that %FALSE is also returned
	 *     if a virtual modifier is mapped to a non-virtual modifier that
	 *     was already set in @state.
	 *
	 * Since: 2.20
	 */
	public bool mapVirtualModifiers(ref GdkModifierType state)
	{
		return gdk_keymap_map_virtual_modifiers(gdkKeymap, &state) != 0;
	}

	/**
	 * Translates the contents of a #GdkEventKey into a keyval, effective
	 * group, and level. Modifiers that affected the translation and
	 * are thus unavailable for application use are returned in
	 * @consumed_modifiers.
	 * See [Groups][key-group-explanation] for an explanation of
	 * groups and levels. The @effective_group is the group that was
	 * actually used for the translation; some keys such as Enter are not
	 * affected by the active keyboard group. The @level is derived from
	 * @state. For convenience, #GdkEventKey already contains the translated
	 * keyval, so this function isn’t as useful as you might think.
	 *
	 * @consumed_modifiers gives modifiers that should be masked outfrom @state
	 * when comparing this key press to a hot key. For instance, on a US keyboard,
	 * the `plus` symbol is shifted, so when comparing a key press to a
	 * `<Control>plus` accelerator `<Shift>` should be masked out.
	 *
	 * |[<!-- language="C" -->
	 * // We want to ignore irrelevant modifiers like ScrollLock
	 * #define ALL_ACCELS_MASK (GDK_CONTROL_MASK | GDK_SHIFT_MASK | GDK_MOD1_MASK)
	 * gdk_keymap_translate_keyboard_state (keymap, event->hardware_keycode,
	 * event->state, event->group,
	 * &keyval, NULL, NULL, &consumed);
	 * if (keyval == GDK_PLUS &&
	 * (event->state & ~consumed & ALL_ACCELS_MASK) == GDK_CONTROL_MASK)
	 * // Control was pressed
	 * ]|
	 *
	 * An older interpretation @consumed_modifiers was that it contained
	 * all modifiers that might affect the translation of the key;
	 * this allowed accelerators to be stored with irrelevant consumed
	 * modifiers, by doing:
	 * |[<!-- language="C" -->
	 * // XXX Don’t do this XXX
	 * if (keyval == accel_keyval &&
	 * (event->state & ~consumed & ALL_ACCELS_MASK) == (accel_mods & ~consumed))
	 * // Accelerator was pressed
	 * ]|
	 *
	 * However, this did not work if multi-modifier combinations were
	 * used in the keymap, since, for instance, `<Control>` would be
	 * masked out even if only `<Control><Alt>` was used in the keymap.
	 * To support this usage as well as well as possible, all single
	 * modifier combinations that could affect the key for any combination
	 * of modifiers will be returned in @consumed_modifiers; multi-modifier
	 * combinations are returned only when actually found in @state. When
	 * you store accelerators, you should always store them with consumed
	 * modifiers removed. Store `<Control>plus`, not `<Control><Shift>plus`,
	 *
	 * Params:
	 *     hardwareKeycode = a keycode
	 *     state = a modifier state
	 *     group = active keyboard group
	 *     keyval = return location for keyval, or %NULL
	 *     effectiveGroup = return location for effective
	 *         group, or %NULL
	 *     level = return location for level, or %NULL
	 *     consumedModifiers = return location for modifiers
	 *         that were used to determine the group or level, or %NULL
	 *
	 * Returns: %TRUE if there was a keyval bound to the keycode/state/group
	 */
	public bool translateKeyboardState(uint hardwareKeycode, GdkModifierType state, int group, out uint keyval, out int effectiveGroup, out int level, out GdkModifierType consumedModifiers)
	{
		return gdk_keymap_translate_keyboard_state(gdkKeymap, hardwareKeycode, state, group, &keyval, &effectiveGroup, &level, &consumedModifiers) != 0;
	}

	/**
	 * The ::direction-changed signal gets emitted when the direction of
	 * the keymap changes.
	 *
	 * Since: 2.0
	 */
	gulong addOnDirectionChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "direction-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::keys-changed signal is emitted when the mapping represented by
	 * @keymap changes.
	 *
	 * Since: 2.2
	 */
	gulong addOnKeysChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "keys-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::state-changed signal is emitted when the state of the
	 * keyboard changes, e.g when Caps Lock is turned on or off.
	 * See gdk_keymap_get_caps_lock_state().
	 *
	 * Since: 2.16
	 */
	gulong addOnStateChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "state-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Obtains the upper- and lower-case versions of the keyval @symbol.
	 * Examples of keyvals are #GDK_KEY_a, #GDK_KEY_Enter, #GDK_KEY_F1, etc.
	 *
	 * Params:
	 *     symbol = a keyval
	 *     lower = return location for lowercase version of @symbol
	 *     upper = return location for uppercase version of @symbol
	 */
	public static void keyvalConvertCase(uint symbol, out uint lower, out uint upper)
	{
		gdk_keyval_convert_case(symbol, &lower, &upper);
	}

	/**
	 * Converts a key name to a key value.
	 *
	 * The names are the same as those in the
	 * `gdk/gdkkeysyms.h` header file
	 * but without the leading “GDK_KEY_”.
	 *
	 * Params:
	 *     keyvalName = a key name
	 *
	 * Returns: the corresponding key value, or %GDK_KEY_VoidSymbol
	 *     if the key name is not a valid key
	 */
	public static uint keyvalFromName(string keyvalName)
	{
		return gdk_keyval_from_name(Str.toStringz(keyvalName));
	}

	/**
	 * Returns %TRUE if the given key value is in lower case.
	 *
	 * Params:
	 *     keyval = a key value.
	 *
	 * Returns: %TRUE if @keyval is in lower case, or if @keyval is not
	 *     subject to case conversion.
	 */
	public static bool keyvalIsLower(uint keyval)
	{
		return gdk_keyval_is_lower(keyval) != 0;
	}

	/**
	 * Returns %TRUE if the given key value is in upper case.
	 *
	 * Params:
	 *     keyval = a key value.
	 *
	 * Returns: %TRUE if @keyval is in upper case, or if @keyval is not subject to
	 *     case conversion.
	 */
	public static bool keyvalIsUpper(uint keyval)
	{
		return gdk_keyval_is_upper(keyval) != 0;
	}

	/**
	 * Converts a key value into a symbolic name.
	 *
	 * The names are the same as those in the
	 * `gdk/gdkkeysyms.h` header file
	 * but without the leading “GDK_KEY_”.
	 *
	 * Params:
	 *     keyval = a key value
	 *
	 * Returns: a string containing the name
	 *     of the key, or %NULL if @keyval is not a valid key. The string
	 *     should not be modified.
	 */
	public static string keyvalName(uint keyval)
	{
		return Str.toString(gdk_keyval_name(keyval));
	}

	/**
	 * Converts a key value to lower case, if applicable.
	 *
	 * Params:
	 *     keyval = a key value.
	 *
	 * Returns: the lower case form of @keyval, or @keyval itself if it is already
	 *     in lower case or it is not subject to case conversion.
	 */
	public static uint keyvalToLower(uint keyval)
	{
		return gdk_keyval_to_lower(keyval);
	}

	/**
	 * Convert from a GDK key symbol to the corresponding ISO10646 (Unicode)
	 * character.
	 *
	 * Params:
	 *     keyval = a GDK key symbol
	 *
	 * Returns: the corresponding unicode character, or 0 if there
	 *     is no corresponding character.
	 */
	public static uint keyvalToUnicode(uint keyval)
	{
		return gdk_keyval_to_unicode(keyval);
	}

	/**
	 * Converts a key value to upper case, if applicable.
	 *
	 * Params:
	 *     keyval = a key value.
	 *
	 * Returns: the upper case form of @keyval, or @keyval itself if it is already
	 *     in upper case or it is not subject to case conversion.
	 */
	public static uint keyvalToUpper(uint keyval)
	{
		return gdk_keyval_to_upper(keyval);
	}

	/**
	 * Convert from a ISO10646 character to a key symbol.
	 *
	 * Params:
	 *     wc = a ISO10646 encoded character
	 *
	 * Returns: the corresponding GDK key symbol, if one exists.
	 *     or, if there is no corresponding symbol,
	 *     wc | 0x01000000
	 */
	public static uint unicodeToKeyval(uint wc)
	{
		return gdk_unicode_to_keyval(wc);
	}
}
