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

/*
 * Conversion parameters:
 * inFile  = gdk3-Keyboard-Handling.html
 * outPack = gdk
 * outFile = Keymap
 * strct   = GdkKeymap
 * realStrct=
 * ctorStrct=
 * clss    = Keymap
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_keymap_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkKeymap* -> Keymap
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Keymap;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Display;



private import gobject.ObjectG;

/**
 * Key values are the codes which are sent whenever a key is pressed or released.
 * They appear in the GdkEventKey.keyval field of the
 * GdkEventKey structure, which is passed to signal handlers for the
 * "key-press-event" and "key-release-event" signals.
 * The complete list of key values can be found in the
 * <gdk/gdkkeysyms.h> header file.
 *
 * Key values are regularly updated from the upstream X.org X11 implementation,
 * so new values are added regularly. They will be prefixed with GDK_KEY_ rather
 * than XF86XK_ or XK_ (for older symbols).
 *
 * Key values can be converted into a string representation using
 * gdk_keyval_name(). The reverse function, converting a string to a key value,
 * is provided by gdk_keyval_from_name().
 *
 * The case of key values can be determined using gdk_keyval_is_upper() and
 * gdk_keyval_is_lower(). Key values can be converted to upper or lower case
 * using gdk_keyval_to_upper() and gdk_keyval_to_lower().
 *
 * When it makes sense, key values can be converted to and from
 * Unicode characters with gdk_keyval_to_unicode() and gdk_unicode_to_keyval().
 *
 * One GdkKeymap object exists for each user display. gdk_keymap_get_default()
 * returns the GdkKeymap for the default display; to obtain keymaps for other
 * displays, use gdk_keymap_get_for_display(). A keymap
 * is a mapping from GdkKeymapKey to key values. You can think of a GdkKeymapKey
 * as a representation of a symbol printed on a physical keyboard key. That is, it
 * contains three pieces of information. First, it contains the hardware keycode;
 * this is an identifying number for a physical key. Second, it contains the
 * level of the key. The level indicates which symbol on the
 * key will be used, in a vertical direction. So on a standard US keyboard, the key
 * with the number "1" on it also has the exclamation point ("!") character on
 * it. The level indicates whether to use the "1" or the "!" symbol. The letter
 * keys are considered to have a lowercase letter at level 0, and an uppercase
 * letter at level 1, though only the uppercase letter is printed. Third, the
 * GdkKeymapKey contains a group; groups are not used on standard US keyboards,
 * but are used in many other countries. On a keyboard with groups, there can be 3
 * or 4 symbols printed on a single key. The group indicates movement in a
 * horizontal direction. Usually groups are used for two different languages. In
 * group 0, a key might have two English characters, and in group 1 it might have
 * two Hebrew characters. The Hebrew characters will be printed on the key next to
 * the English characters.
 *
 * In order to use a keymap to interpret a key event, it's necessary to first
 * convert the keyboard state into an effective group and level. This is done via a
 * set of rules that varies widely according to type of keyboard and user
 * configuration. The function gdk_keymap_translate_keyboard_state() accepts a
 * keyboard state -- consisting of hardware keycode pressed, active modifiers, and
 * active group -- applies the appropriate rules, and returns the group/level to be
 * used to index the keymap, along with the modifiers which did not affect the
 * group and level. i.e. it returns "unconsumed modifiers." The keyboard group may
 * differ from the effective group used for keymap lookups because some keys don't
 * have multiple groups - e.g. the Enter key is always in group 0 regardless of
 * keyboard state.
 *
 * Note that gdk_keymap_translate_keyboard_state() also returns the keyval, i.e. it
 * goes ahead and performs the keymap lookup in addition to telling you which
 * effective group/level values were used for the lookup. GdkEventKey already
 * contains this keyval, however, so you don't normally need to call
 * gdk_keymap_translate_keyboard_state() just to get the keyval.
 */
public class Keymap : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkKeymap* gdkKeymap;
	
	
	public GdkKeymap* getKeymapStruct()
	{
		return gdkKeymap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkKeymap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkKeymap* gdkKeymap)
	{
		super(cast(GObject*)gdkKeymap);
		this.gdkKeymap = gdkKeymap;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkKeymap = cast(GdkKeymap*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Keymap)[] onDirectionChangedListeners;
	/**
	 * The ::direction-changed signal gets emitted when the direction of
	 * the keymap changes.
	 * Since 2.0
	 */
	void addOnDirectionChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("direction-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"direction-changed",
			cast(GCallback)&callBackDirectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["direction-changed"] = 1;
		}
		onDirectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackDirectionChanged(GdkKeymap* keymapStruct, Keymap _keymap)
	{
		foreach ( void delegate(Keymap) dlg ; _keymap.onDirectionChangedListeners )
		{
			dlg(_keymap);
		}
	}
	
	void delegate(Keymap)[] onKeysChangedListeners;
	/**
	 * The ::keys-changed signal is emitted when the mapping represented by
	 * keymap changes.
	 * Since 2.2
	 */
	void addOnKeysChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("keys-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"keys-changed",
			cast(GCallback)&callBackKeysChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["keys-changed"] = 1;
		}
		onKeysChangedListeners ~= dlg;
	}
	extern(C) static void callBackKeysChanged(GdkKeymap* keymapStruct, Keymap _keymap)
	{
		foreach ( void delegate(Keymap) dlg ; _keymap.onKeysChangedListeners )
		{
			dlg(_keymap);
		}
	}
	
	void delegate(Keymap)[] onStateChangedListeners;
	/**
	 * The ::state-changed signal is emitted when the state of the
	 * keyboard changes, e.g when Caps Lock is turned on or off.
	 * See gdk_keymap_get_caps_lock_state().
	 * Since 2.16
	 */
	void addOnStateChanged(void delegate(Keymap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("state-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"state-changed",
			cast(GCallback)&callBackStateChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["state-changed"] = 1;
		}
		onStateChangedListeners ~= dlg;
	}
	extern(C) static void callBackStateChanged(GdkKeymap* keymapStruct, Keymap _keymap)
	{
		foreach ( void delegate(Keymap) dlg ; _keymap.onStateChangedListeners )
		{
			dlg(_keymap);
		}
	}
	
	
	/**
	 * Returns the GdkKeymap attached to the default display.
	 * Returns: the GdkKeymap attached to the default display. [transfer none]
	 */
	public static Keymap getDefault()
	{
		// GdkKeymap * gdk_keymap_get_default (void);
		auto p = gdk_keymap_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Keymap)(cast(GdkKeymap*) p);
	}
	
	/**
	 * Returns the GdkKeymap attached to display.
	 * Since 2.2
	 * Params:
	 * display = the GdkDisplay.
	 * Returns: the GdkKeymap attached to display. [transfer none]
	 */
	public static Keymap getForDisplay(Display display)
	{
		// GdkKeymap * gdk_keymap_get_for_display (GdkDisplay *display);
		auto p = gdk_keymap_get_for_display((display is null) ? null : display.getDisplayStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Keymap)(cast(GdkKeymap*) p);
	}
	
	/**
	 * Looks up the keyval mapped to a keycode/group/level triplet.
	 * If no keyval is bound to key, returns 0. For normal user input,
	 * you want to use gdk_keymap_translate_keyboard_state() instead of
	 * this function, since the effective group/level may not be
	 * the same as the current keyboard state.
	 * Params:
	 * key = a GdkKeymapKey with keycode, group, and level initialized
	 * Returns: a keyval, or 0 if none was mapped to the given key
	 */
	public uint lookupKey(out GdkKeymapKey key)
	{
		// guint gdk_keymap_lookup_key (GdkKeymap *keymap,  const GdkKeymapKey *key);
		return gdk_keymap_lookup_key(gdkKeymap, &key);
	}
	
	/**
	 * Translates the contents of a GdkEventKey into a keyval, effective
	 * group, and level. Modifiers that affected the translation and
	 * are thus unavailable for application use are returned in
	 * consumed_modifiers.
	 * See the section called “Description” for an explanation of
	 * groups and levels. The effective_group is the group that was
	 * actually used for the translation; some keys such as Enter are not
	 * affected by the active keyboard group. The level is derived from
	 * state. For convenience, GdkEventKey already contains the translated
	 * keyval, so this function isn't as useful as you might think.
	 * Note
	 * consumed_modifiers gives modifiers that should be masked out
	 * from state when comparing this key press to a hot key. For
	 * instance, on a US keyboard, the plus
	 * symbol is shifted, so when comparing a key press to a
	 * <Control>plus accelerator <Shift> should
	 * be masked out.
	 * $(DDOC_COMMENT example)
	 * An older interpretation consumed_modifiers was that it contained
	 * all modifiers that might affect the translation of the key;
	 * this allowed accelerators to be stored with irrelevant consumed
	 * Params:
	 * hardwareKeycode = a keycode
	 * state = a modifier state
	 * group = active keyboard group
	 * keyval = return location for keyval, or NULL. [out][allow-none]
	 * effectiveGroup = return location for effective
	 * group, or NULL. [out][allow-none]
	 * level = return location for level, or NULL. [out][allow-none]
	 * consumedModifiers = return location for modifiers
	 * that were used to determine the group or level, or NULL. [out][allow-none]
	 * Returns: TRUE if there was a keyval bound to the keycode/state/group
	 */
	public int translateKeyboardState(uint hardwareKeycode, GdkModifierType state, int group, out uint keyval, out int effectiveGroup, out int level, out GdkModifierType consumedModifiers)
	{
		// gboolean gdk_keymap_translate_keyboard_state (GdkKeymap *keymap,  guint hardware_keycode,  GdkModifierType state,  gint group,  guint *keyval,  gint *effective_group,  gint *level,  GdkModifierType *consumed_modifiers);
		return gdk_keymap_translate_keyboard_state(gdkKeymap, hardwareKeycode, state, group, &keyval, &effectiveGroup, &level, &consumedModifiers);
	}
	
	/**
	 * Obtains a list of keycode/group/level combinations that will
	 * generate keyval. Groups and levels are two kinds of keyboard mode;
	 * in general, the level determines whether the top or bottom symbol
	 * on a key is used, and the group determines whether the left or
	 * right symbol is used. On US keyboards, the shift key changes the
	 * keyboard level, and there are no groups. A group switch key might
	 * convert a keyboard between Hebrew to English modes, for example.
	 * GdkEventKey contains a group field that indicates the active
	 * keyboard group. The level is computed from the modifier mask.
	 * The returned array should be freed
	 * with g_free().
	 * Params:
	 * keyval = a keyval, such as GDK_a, GDK_Up, GDK_Return, etc.
	 * keys = return location
	 * for an array of GdkKeymapKey. [out][array length=n_keys][transfer full]
	 * Returns: TRUE if keys were found and returned
	 */
	public int getEntriesForKeyval(uint keyval, out GdkKeymapKey[] keys)
	{
		// gboolean gdk_keymap_get_entries_for_keyval (GdkKeymap *keymap,  guint keyval,  GdkKeymapKey **keys,  gint *n_keys);
		GdkKeymapKey* outkeys = null;
		int nKeys;
		
		auto p = gdk_keymap_get_entries_for_keyval(gdkKeymap, keyval, &outkeys, &nKeys);
		
		keys = outkeys[0 .. nKeys];
		return p;
	}
	
	/**
	 * Returns the keyvals bound to hardware_keycode.
	 * The Nth GdkKeymapKey in keys is bound to the Nth
	 * keyval in keyvals. Free the returned arrays with g_free().
	 * When a keycode is pressed by the user, the keyval from
	 * this list of entries is selected by considering the effective
	 * keyboard group and level. See gdk_keymap_translate_keyboard_state().
	 * Params:
	 * hardwareKeycode = a keycode
	 * keys = return
	 * location for array of GdkKeymapKey, or NULL. [out][array length=n_entries][transfer full]
	 * keyvals = return
	 * location for array of keyvals, or NULL. [out][array length=n_entries][transfer full]
	 * Returns: TRUE if there were any entries
	 */
	public int getEntriesForKeycode(uint hardwareKeycode, out GdkKeymapKey[] keys, out uint[] keyvals)
	{
		// gboolean gdk_keymap_get_entries_for_keycode (GdkKeymap *keymap,  guint hardware_keycode,  GdkKeymapKey **keys,  guint **keyvals,  gint *n_entries);
		GdkKeymapKey* outkeys = null;
		guint* outkeyvals = null;
		int nEntries;
		
		auto p = gdk_keymap_get_entries_for_keycode(gdkKeymap, hardwareKeycode, &outkeys, &outkeyvals, &nEntries);
		
		keys = outkeys[0 .. nEntries];
		keyvals = outkeyvals[0 .. nEntries];
		return p;
	}
	
	/**
	 * Returns the direction of effective layout of the keymap.
	 * Returns: PANGO_DIRECTION_LTR or PANGO_DIRECTION_RTL if it can determine the direction. PANGO_DIRECTION_NEUTRAL otherwise.
	 */
	public PangoDirection getDirection()
	{
		// PangoDirection gdk_keymap_get_direction (GdkKeymap *keymap);
		return gdk_keymap_get_direction(gdkKeymap);
	}
	
	/**
	 * Determines if keyboard layouts for both right-to-left and left-to-right
	 * languages are in use.
	 * Since 2.12
	 * Returns: TRUE if there are layouts in both directions, FALSE otherwise
	 */
	public int haveBidiLayouts()
	{
		// gboolean gdk_keymap_have_bidi_layouts (GdkKeymap *keymap);
		return gdk_keymap_have_bidi_layouts(gdkKeymap);
	}
	
	/**
	 * Returns whether the Caps Lock modifer is locked.
	 * Since 2.16
	 * Returns: TRUE if Caps Lock is on
	 */
	public int getCapsLockState()
	{
		// gboolean gdk_keymap_get_caps_lock_state (GdkKeymap *keymap);
		return gdk_keymap_get_caps_lock_state(gdkKeymap);
	}
	
	/**
	 * Returns whether the Num Lock modifer is locked.
	 * Returns: TRUE if Num Lock is on Since 3.0
	 */
	public int getNumLockState()
	{
		// gboolean gdk_keymap_get_num_lock_state (GdkKeymap *keymap);
		return gdk_keymap_get_num_lock_state(gdkKeymap);
	}
	
	/**
	 * Returns the current modifier state.
	 * Returns: the current modifier state. Since 3.4
	 */
	public uint getModifierState()
	{
		// guint gdk_keymap_get_modifier_state (GdkKeymap *keymap);
		return gdk_keymap_get_modifier_state(gdkKeymap);
	}
	
	/**
	 * Maps the non-virtual modifiers (i.e Mod2, Mod3, ...) which are set
	 * in state to the virtual modifiers (i.e. Super, Hyper and Meta) and
	 * set the corresponding bits in state.
	 * GDK already does this before delivering key events, but for
	 * compatibility reasons, it only sets the first virtual modifier
	 * it finds, whereas this function sets all matching virtual modifiers.
	 * This function is useful when matching key events against
	 * accelerators.
	 * Since 2.20
	 * Params:
	 * state = pointer to the modifier mask to change. [inout]
	 */
	public void addVirtualModifiers(ref GdkModifierType state)
	{
		// void gdk_keymap_add_virtual_modifiers (GdkKeymap *keymap,  GdkModifierType *state);
		gdk_keymap_add_virtual_modifiers(gdkKeymap, &state);
	}
	
	/**
	 * Maps the virtual modifiers (i.e. Super, Hyper and Meta) which
	 * are set in state to their non-virtual counterparts (i.e. Mod2,
	 * Mod3,...) and set the corresponding bits in state.
	 * This function is useful when matching key events against
	 * accelerators.
	 * Since 2.20
	 * Params:
	 * state = pointer to the modifier state to map. [inout]
	 * Returns: TRUE if no virtual modifiers were mapped to the same non-virtual modifier. Note that FALSE is also returned if a virtual modifier is mapped to a non-virtual modifier that was already set in state.
	 */
	public int mapVirtualModifiers(ref GdkModifierType state)
	{
		// gboolean gdk_keymap_map_virtual_modifiers (GdkKeymap *keymap,  GdkModifierType *state);
		return gdk_keymap_map_virtual_modifiers(gdkKeymap, &state);
	}
	
	/**
	 * Returns the modifier mask the keymap's windowing system backend
	 * uses for a particular purpose.
	 * Note that this function always returns real hardware modifiers, not
	 * virtual ones (e.g. it will return GDK_MOD1_MASK rather than
	 * GDK_META_MASK if the backend maps MOD1 to META), so there are use
	 * cases where the return value of this function has to be transformed
	 * by gdk_keymap_add_virtual_modifiers() in order to contain the
	 * expected result.
	 * Params:
	 * intent = the use case for the modifier mask
	 * Returns: the modifier mask used for intent. Since 3.4
	 */
	public GdkModifierType getModifierMask(GdkModifierIntent intent)
	{
		// GdkModifierType gdk_keymap_get_modifier_mask (GdkKeymap *keymap,  GdkModifierIntent intent);
		return gdk_keymap_get_modifier_mask(gdkKeymap, intent);
	}
	
	/**
	 * Converts a key value into a symbolic name.
	 * The names are the same as those in the
	 * <gdk/gdkkeysyms.h> header file
	 * but without the leading "GDK_KEY_".
	 * Params:
	 * keyval = a key value
	 * Returns: a string containing the name of the key, or NULL if keyval is not a valid key. The string should not be modified. [transfer none]
	 */
	public static string gdkKeyvalName(uint keyval)
	{
		// gchar * gdk_keyval_name (guint keyval);
		return Str.toString(gdk_keyval_name(keyval));
	}
	
	/**
	 * Converts a key name to a key value.
	 * The names are the same as those in the
	 * <gdk/gdkkeysyms.h> header file
	 * but without the leading "GDK_KEY_".
	 * Params:
	 * keyvalName = a key name
	 * Returns: the corresponding key value, or GDK_KEY_VoidSymbol if the key name is not a valid key
	 */
	public static uint gdkKeyvalFromName(string keyvalName)
	{
		// guint gdk_keyval_from_name (const gchar *keyval_name);
		return gdk_keyval_from_name(Str.toStringz(keyvalName));
	}
	
	/**
	 * Obtains the upper- and lower-case versions of the keyval symbol.
	 * Examples of keyvals are GDK_KEY_a, GDK_KEY_Enter, GDK_KEY_F1, etc.
	 * Params:
	 * symbol = a keyval
	 * lower = return location for lowercase version of symbol. [out]
	 * upper = return location for uppercase version of symbol. [out]
	 */
	public static void gdkKeyvalConvertCase(uint symbol, out uint lower, out uint upper)
	{
		// void gdk_keyval_convert_case (guint symbol,  guint *lower,  guint *upper);
		gdk_keyval_convert_case(symbol, &lower, &upper);
	}
	
	/**
	 * Converts a key value to upper case, if applicable.
	 * Params:
	 * keyval = a key value.
	 * Returns: the upper case form of keyval, or keyval itself if it is already in upper case or it is not subject to case conversion.
	 */
	public static uint gdkKeyvalToUpper(uint keyval)
	{
		// guint gdk_keyval_to_upper (guint keyval);
		return gdk_keyval_to_upper(keyval);
	}
	
	/**
	 * Converts a key value to lower case, if applicable.
	 * Params:
	 * keyval = a key value.
	 * Returns: the lower case form of keyval, or keyval itself if it is already in lower case or it is not subject to case conversion.
	 */
	public static uint gdkKeyvalToLower(uint keyval)
	{
		// guint gdk_keyval_to_lower (guint keyval);
		return gdk_keyval_to_lower(keyval);
	}
	
	/**
	 * Returns TRUE if the given key value is in upper case.
	 * Params:
	 * keyval = a key value.
	 * Returns: TRUE if keyval is in upper case, or if keyval is not subject to case conversion.
	 */
	public static int gdkKeyvalIsUpper(uint keyval)
	{
		// gboolean gdk_keyval_is_upper (guint keyval);
		return gdk_keyval_is_upper(keyval);
	}
	
	/**
	 * Returns TRUE if the given key value is in lower case.
	 * Params:
	 * keyval = a key value.
	 * Returns: TRUE if keyval is in lower case, or if keyval is not subject to case conversion.
	 */
	public static int gdkKeyvalIsLower(uint keyval)
	{
		// gboolean gdk_keyval_is_lower (guint keyval);
		return gdk_keyval_is_lower(keyval);
	}
	
	/**
	 * Convert from a GDK key symbol to the corresponding ISO10646 (Unicode)
	 * character.
	 * Params:
	 * keyval = a GDK key symbol
	 * Returns: the corresponding unicode character, or 0 if there is no corresponding character.
	 */
	public static uint gdkKeyvalToUnicode(uint keyval)
	{
		// guint32 gdk_keyval_to_unicode (guint keyval);
		return gdk_keyval_to_unicode(keyval);
	}
	
	/**
	 * Convert from a ISO10646 character to a key symbol.
	 * Since 2.0
	 * Params:
	 * wc = a ISO10646 encoded character
	 * Returns: the corresponding GDK key symbol, if one exists. or, if there is no corresponding symbol, wc | 0x01000000 Signal Details The "direction-changed" signal void user_function (GdkKeymap *keymap, gpointer user_data) : Run Last The ::direction-changed signal gets emitted when the direction of the keymap changes.
	 */
	public static uint gdkUnicodeToKeyval(uint wc)
	{
		// guint gdk_unicode_to_keyval (guint32 wc);
		return gdk_unicode_to_keyval(wc);
	}
}
