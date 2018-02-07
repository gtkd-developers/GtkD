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


module gtk.AccelGroup;

private import gdk.Display;
private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkAccelGroup represents a group of keyboard accelerators,
 * typically attached to a toplevel #GtkWindow (with
 * gtk_window_add_accel_group()). Usually you won’t need to create a
 * #GtkAccelGroup directly; instead, when using #GtkUIManager, GTK+
 * automatically sets up the accelerators for your menus in the ui
 * manager’s #GtkAccelGroup.
 * 
 * Note that “accelerators” are different from
 * “mnemonics”. Accelerators are shortcuts for
 * activating a menu item; they appear alongside the menu item they’re a
 * shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
 * menu item. Mnemonics are shortcuts for GUI elements such as text
 * entries or buttons; they appear as underlined characters. See
 * gtk_label_new_with_mnemonic(). Menu items can have both accelerators
 * and mnemonics, of course.
 */
public class AccelGroup : ObjectG
{
	/** the main Gtk struct */
	protected GtkAccelGroup* gtkAccelGroup;

	/** Get the main Gtk struct */
	public GtkAccelGroup* getAccelGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAccelGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAccelGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAccelGroup* gtkAccelGroup, bool ownedRef = false)
	{
		this.gtkAccelGroup = gtkAccelGroup;
		super(cast(GObject*)gtkAccelGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_accel_group_get_type();
	}

	/**
	 * Creates a new #GtkAccelGroup.
	 *
	 * Returns: a new #GtkAccelGroup object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_accel_group_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAccelGroup*) p, true);
	}

	/**
	 * Finds the #GtkAccelGroup to which @closure is connected;
	 * see gtk_accel_group_connect().
	 *
	 * Params:
	 *     closure = a #GClosure
	 *
	 * Returns: the #GtkAccelGroup to which @closure
	 *     is connected, or %NULL
	 */
	public static AccelGroup fromAccelClosure(Closure closure)
	{
		auto p = gtk_accel_group_from_accel_closure((closure is null) ? null : closure.getClosureStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}

	/**
	 * Finds the first accelerator in @accel_group that matches
	 * @accel_key and @accel_mods, and activates it.
	 *
	 * Params:
	 *     accelQuark = the quark for the accelerator name
	 *     acceleratable = the #GObject, usually a #GtkWindow, on which
	 *         to activate the accelerator
	 *     accelKey = accelerator keyval from a key event
	 *     accelMods = keyboard state mask from a key event
	 *
	 * Returns: %TRUE if an accelerator was activated and handled
	 *     this keypress
	 */
	public bool activate(GQuark accelQuark, ObjectG acceleratable, uint accelKey, GdkModifierType accelMods)
	{
		return gtk_accel_group_activate(gtkAccelGroup, accelQuark, (acceleratable is null) ? null : acceleratable.getObjectGStruct(), accelKey, accelMods) != 0;
	}

	/**
	 * Installs an accelerator in this group. When @accel_group is being
	 * activated in response to a call to gtk_accel_groups_activate(),
	 * @closure will be invoked if the @accel_key and @accel_mods from
	 * gtk_accel_groups_activate() match those of this connection.
	 *
	 * The signature used for the @closure is that of #GtkAccelGroupActivate.
	 *
	 * Note that, due to implementation details, a single closure can
	 * only be connected to one accelerator group.
	 *
	 * Params:
	 *     accelKey = key value of the accelerator
	 *     accelMods = modifier combination of the accelerator
	 *     accelFlags = a flag mask to configure this accelerator
	 *     closure = closure to be executed upon accelerator activation
	 */
	public void connect(uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, Closure closure)
	{
		gtk_accel_group_connect(gtkAccelGroup, accelKey, accelMods, accelFlags, (closure is null) ? null : closure.getClosureStruct());
	}

	/**
	 * Installs an accelerator in this group, using an accelerator path
	 * to look up the appropriate key and modifiers (see
	 * gtk_accel_map_add_entry()). When @accel_group is being activated
	 * in response to a call to gtk_accel_groups_activate(), @closure will
	 * be invoked if the @accel_key and @accel_mods from
	 * gtk_accel_groups_activate() match the key and modifiers for the path.
	 *
	 * The signature used for the @closure is that of #GtkAccelGroupActivate.
	 *
	 * Note that @accel_path string will be stored in a #GQuark. Therefore,
	 * if you pass a static string, you can save some memory by interning it
	 * first with g_intern_static_string().
	 *
	 * Params:
	 *     accelPath = path used for determining key and modifiers
	 *     closure = closure to be executed upon accelerator activation
	 */
	public void connectByPath(string accelPath, Closure closure)
	{
		gtk_accel_group_connect_by_path(gtkAccelGroup, Str.toStringz(accelPath), (closure is null) ? null : closure.getClosureStruct());
	}

	/**
	 * Removes an accelerator previously installed through
	 * gtk_accel_group_connect().
	 *
	 * Since 2.20 @closure can be %NULL.
	 *
	 * Params:
	 *     closure = the closure to remove from this accelerator
	 *         group, or %NULL to remove all closures
	 *
	 * Returns: %TRUE if the closure was found and got disconnected
	 */
	public bool disconnect(Closure closure)
	{
		return gtk_accel_group_disconnect(gtkAccelGroup, (closure is null) ? null : closure.getClosureStruct()) != 0;
	}

	/**
	 * Removes an accelerator previously installed through
	 * gtk_accel_group_connect().
	 *
	 * Params:
	 *     accelKey = key value of the accelerator
	 *     accelMods = modifier combination of the accelerator
	 *
	 * Returns: %TRUE if there was an accelerator which could be
	 *     removed, %FALSE otherwise
	 */
	public bool disconnectKey(uint accelKey, GdkModifierType accelMods)
	{
		return gtk_accel_group_disconnect_key(gtkAccelGroup, accelKey, accelMods) != 0;
	}

	/**
	 * Finds the first entry in an accelerator group for which
	 * @find_func returns %TRUE and returns its #GtkAccelKey.
	 *
	 * Params:
	 *     findFunc = a function to filter the entries
	 *         of @accel_group with
	 *     data = data to pass to @find_func
	 *
	 * Returns: the key of the first entry passing
	 *     @find_func. The key is owned by GTK+ and must not be freed.
	 */
	public GtkAccelKey* find(GtkAccelGroupFindFunc findFunc, void* data)
	{
		return gtk_accel_group_find(gtkAccelGroup, findFunc, data);
	}

	/**
	 * Locks are added and removed using gtk_accel_group_lock() and
	 * gtk_accel_group_unlock().
	 *
	 * Returns: %TRUE if there are 1 or more locks on the @accel_group,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.14
	 */
	public bool getIsLocked()
	{
		return gtk_accel_group_get_is_locked(gtkAccelGroup) != 0;
	}

	/**
	 * Gets a #GdkModifierType representing the mask for this
	 * @accel_group. For example, #GDK_CONTROL_MASK, #GDK_SHIFT_MASK, etc.
	 *
	 * Returns: the modifier mask for this accel group.
	 *
	 * Since: 2.14
	 */
	public GdkModifierType getModifierMask()
	{
		return gtk_accel_group_get_modifier_mask(gtkAccelGroup);
	}

	/**
	 * Locks the given accelerator group.
	 *
	 * Locking an acelerator group prevents the accelerators contained
	 * within it to be changed during runtime. Refer to
	 * gtk_accel_map_change_entry() about runtime accelerator changes.
	 *
	 * If called more than once, @accel_group remains locked until
	 * gtk_accel_group_unlock() has been called an equivalent number
	 * of times.
	 */
	public void lock()
	{
		gtk_accel_group_lock(gtkAccelGroup);
	}

	/**
	 * Queries an accelerator group for all entries matching @accel_key
	 * and @accel_mods.
	 *
	 * Params:
	 *     accelKey = key value of the accelerator
	 *     accelMods = modifier combination of the accelerator
	 *
	 * Returns: an array of
	 *     @n_entries #GtkAccelGroupEntry elements, or %NULL. The array
	 *     is owned by GTK+ and must not be freed.
	 */
	public GtkAccelGroupEntry[] query(uint accelKey, GdkModifierType accelMods)
	{
		uint nEntries;

		auto p = gtk_accel_group_query(gtkAccelGroup, accelKey, accelMods, &nEntries);

		return p[0 .. nEntries];
	}

	/**
	 * Undoes the last call to gtk_accel_group_lock() on this @accel_group.
	 */
	public void unlock()
	{
		gtk_accel_group_unlock(gtkAccelGroup);
	}

	/**
	 * The accel-activate signal is an implementation detail of
	 * #GtkAccelGroup and not meant to be used by applications.
	 *
	 * Params:
	 *     acceleratable = the object on which the accelerator was activated
	 *     keyval = the accelerator keyval
	 *     modifier = the modifier combination of the accelerator
	 *
	 * Returns: %TRUE if the accelerator was activated
	 */
	gulong addOnAccelActivate(bool delegate(ObjectG, uint, GdkModifierType, AccelGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accel-activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The accel-changed signal is emitted when an entry
	 * is added to or removed from the accel group.
	 *
	 * Widgets like #GtkAccelLabel which display an associated
	 * accelerator should connect to this signal, and rebuild
	 * their visual representation if the @accel_closure is theirs.
	 *
	 * Params:
	 *     keyval = the accelerator keyval
	 *     modifier = the modifier combination of the accelerator
	 *     accelClosure = the #GClosure of the accelerator
	 */
	gulong addOnAccelChanged(void delegate(uint, GdkModifierType, Closure, AccelGroup) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accel-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Finds the first accelerator in any #GtkAccelGroup attached
	 * to @object that matches @accel_key and @accel_mods, and
	 * activates that accelerator.
	 *
	 * Params:
	 *     object = the #GObject, usually a #GtkWindow, on which
	 *         to activate the accelerator
	 *     accelKey = accelerator keyval from a key event
	 *     accelMods = keyboard state mask from a key event
	 *
	 * Returns: %TRUE if an accelerator was activated and handled
	 *     this keypress
	 */
	public static bool accelGroupsActivate(ObjectG object, uint accelKey, GdkModifierType accelMods)
	{
		return gtk_accel_groups_activate((object is null) ? null : object.getObjectGStruct(), accelKey, accelMods) != 0;
	}

	/**
	 * Gets a list of all accel groups which are attached to @object.
	 *
	 * Params:
	 *     object = a #GObject, usually a #GtkWindow
	 *
	 * Returns: a list of
	 *     all accel groups which are attached to @object
	 */
	public static ListSG accelGroupsFromObject(ObjectG object)
	{
		auto p = gtk_accel_groups_from_object((object is null) ? null : object.getObjectGStruct());

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Gets the modifier mask.
	 *
	 * The modifier mask determines which modifiers are considered significant
	 * for keyboard accelerators. See gtk_accelerator_set_default_mod_mask().
	 *
	 * Returns: the default accelerator modifier mask
	 */
	public static GdkModifierType acceleratorGetDefaultModMask()
	{
		return gtk_accelerator_get_default_mod_mask();
	}

	/**
	 * Converts an accelerator keyval and modifier mask into a string
	 * which can be used to represent the accelerator to the user.
	 *
	 * Params:
	 *     acceleratorKey = accelerator keyval
	 *     acceleratorMods = accelerator modifier mask
	 *
	 * Returns: a newly-allocated string representing the accelerator.
	 *
	 * Since: 2.6
	 */
	public static string acceleratorGetLabel(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		auto retStr = gtk_accelerator_get_label(acceleratorKey, acceleratorMods);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts an accelerator keyval and modifier mask
	 * into a (possibly translated) string that can be displayed to
	 * a user, similarly to gtk_accelerator_get_label(), but handling
	 * keycodes.
	 *
	 * This is only useful for system-level components, applications
	 * should use gtk_accelerator_parse() instead.
	 *
	 * Params:
	 *     display = a #GdkDisplay or %NULL to use the default display
	 *     acceleratorKey = accelerator keyval
	 *     keycode = accelerator keycode
	 *     acceleratorMods = accelerator modifier mask
	 *
	 * Returns: a newly-allocated string representing the accelerator.
	 *
	 * Since: 3.4
	 */
	public static string acceleratorGetLabelWithKeycode(Display display, uint acceleratorKey, uint keycode, GdkModifierType acceleratorMods)
	{
		auto retStr = gtk_accelerator_get_label_with_keycode((display is null) ? null : display.getDisplayStruct(), acceleratorKey, keycode, acceleratorMods);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts an accelerator keyval and modifier mask into a string
	 * parseable by gtk_accelerator_parse(). For example, if you pass in
	 * #GDK_KEY_q and #GDK_CONTROL_MASK, this function returns “<Control>q”.
	 *
	 * If you need to display accelerators in the user interface,
	 * see gtk_accelerator_get_label().
	 *
	 * Params:
	 *     acceleratorKey = accelerator keyval
	 *     acceleratorMods = accelerator modifier mask
	 *
	 * Returns: a newly-allocated accelerator name
	 */
	public static string acceleratorName(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		auto retStr = gtk_accelerator_name(acceleratorKey, acceleratorMods);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts an accelerator keyval and modifier mask
	 * into a string parseable by gtk_accelerator_parse_with_keycode(),
	 * similarly to gtk_accelerator_name() but handling keycodes.
	 * This is only useful for system-level components, applications
	 * should use gtk_accelerator_parse() instead.
	 *
	 * Params:
	 *     display = a #GdkDisplay or %NULL to use the default display
	 *     acceleratorKey = accelerator keyval
	 *     keycode = accelerator keycode
	 *     acceleratorMods = accelerator modifier mask
	 *
	 * Returns: a newly allocated accelerator name.
	 *
	 * Since: 3.4
	 */
	public static string acceleratorNameWithKeycode(Display display, uint acceleratorKey, uint keycode, GdkModifierType acceleratorMods)
	{
		auto retStr = gtk_accelerator_name_with_keycode((display is null) ? null : display.getDisplayStruct(), acceleratorKey, keycode, acceleratorMods);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Parses a string representing an accelerator. The format looks like
	 * “<Control>a” or “<Shift><Alt>F1” or “<Release>z” (the last one is
	 * for key release).
	 *
	 * The parser is fairly liberal and allows lower or upper case, and also
	 * abbreviations such as “<Ctl>” and “<Ctrl>”. Key names are parsed using
	 * gdk_keyval_from_name(). For character keys the name is not the symbol,
	 * but the lowercase name, e.g. one would use “<Ctrl>minus” instead of
	 * “<Ctrl>-”.
	 *
	 * If the parse fails, @accelerator_key and @accelerator_mods will
	 * be set to 0 (zero).
	 *
	 * Params:
	 *     accelerator = string representing an accelerator
	 *     acceleratorKey = return location for accelerator
	 *         keyval, or %NULL
	 *     acceleratorMods = return location for accelerator
	 *         modifier mask, %NULL
	 */
	public static void acceleratorParse(string accelerator, out uint acceleratorKey, out GdkModifierType acceleratorMods)
	{
		gtk_accelerator_parse(Str.toStringz(accelerator), &acceleratorKey, &acceleratorMods);
	}

	/**
	 * Parses a string representing an accelerator, similarly to
	 * gtk_accelerator_parse() but handles keycodes as well. This is only
	 * useful for system-level components, applications should use
	 * gtk_accelerator_parse() instead.
	 *
	 * If @accelerator_codes is given and the result stored in it is non-%NULL,
	 * the result must be freed with g_free().
	 *
	 * If a keycode is present in the accelerator and no @accelerator_codes
	 * is given, the parse will fail.
	 *
	 * If the parse fails, @accelerator_key, @accelerator_mods and
	 * @accelerator_codes will be set to 0 (zero).
	 *
	 * Params:
	 *     accelerator = string representing an accelerator
	 *     acceleratorKey = return location for accelerator
	 *         keyval, or %NULL
	 *     acceleratorCodes = return location for accelerator keycodes, or %NULL
	 *     acceleratorMods = return location for accelerator
	 *         modifier mask, %NULL
	 *
	 * Since: 3.4
	 */
	public static void acceleratorParseWithKeycode(string accelerator, out uint acceleratorKey, out uint[] acceleratorCodes, out GdkModifierType acceleratorMods)
	{
		uint* outacceleratorCodes = null;

		gtk_accelerator_parse_with_keycode(Str.toStringz(accelerator), &acceleratorKey, &outacceleratorCodes, &acceleratorMods);

		acceleratorCodes = outacceleratorCodes[0 .. getArrayLength(outacceleratorCodes)];
	}

	/**
	 * Sets the modifiers that will be considered significant for keyboard
	 * accelerators. The default mod mask depends on the GDK backend in use,
	 * but will typically include #GDK_CONTROL_MASK | #GDK_SHIFT_MASK |
	 * #GDK_MOD1_MASK | #GDK_SUPER_MASK | #GDK_HYPER_MASK | #GDK_META_MASK.
	 * In other words, Control, Shift, Alt, Super, Hyper and Meta. Other
	 * modifiers will by default be ignored by #GtkAccelGroup.
	 *
	 * You must include at least the three modifiers Control, Shift
	 * and Alt in any value you pass to this function.
	 *
	 * The default mod mask should be changed on application startup,
	 * before using any accelerator groups.
	 *
	 * Params:
	 *     defaultModMask = accelerator modifier mask
	 */
	public static void acceleratorSetDefaultModMask(GdkModifierType defaultModMask)
	{
		gtk_accelerator_set_default_mod_mask(defaultModMask);
	}

	/**
	 * Determines whether a given keyval and modifier mask constitute
	 * a valid keyboard accelerator. For example, the #GDK_KEY_a keyval
	 * plus #GDK_CONTROL_MASK is valid - this is a “Ctrl+a” accelerator.
	 * But, you can't, for instance, use the #GDK_KEY_Control_L keyval
	 * as an accelerator.
	 *
	 * Params:
	 *     keyval = a GDK keyval
	 *     modifiers = modifier mask
	 *
	 * Returns: %TRUE if the accelerator is valid
	 */
	public static bool acceleratorValid(uint keyval, GdkModifierType modifiers)
	{
		return gtk_accelerator_valid(keyval, modifiers) != 0;
	}
}
