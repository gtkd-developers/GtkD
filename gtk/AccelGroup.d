/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = AccelGroup
 * strct   = GtkAccelGroup
 * clss    = AccelGroup
 * prefixes:
 * 	- gtk_accel_group_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gobject.Closure
 * 	- gobject.ObjectG
 * 	- gtk.AccelGroup
 * 	- glib.ListSG
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GObject* -> ObjectG
 * 	- GSList* -> ListSG
 * 	- GtkAccelGroup* -> AccelGroup
 * local aliases:
 */

module gtk.AccelGroup;

private import gtk.typedefs;

private import lib.gtk;

private import gobject.Closure;private import gobject.ObjectG;private import gtk.AccelGroup;private import glib.ListSG;
/**
 * Description
 * A GtkAccelGroup represents a group of keyboard accelerators,
 * typically attached to a toplevel GtkWindow (with
 * gtk_window_add_accel_group()). Usually you won't need to create a
 * GtkAccelGroup directly; instead, when using GtkItemFactory, GTK+
 * automatically sets up the accelerators for your menus in the item
 * factory's GtkAccelGroup.
 * Note that accelerators are different from
 * mnemonics. Accelerators are shortcuts for
 * activating a menu item; they appear alongside the menu item they're a
 * shortcut for. For example "Ctrl+Q" might appear alongside the "Quit"
 * menu item. Mnemonics are shortcuts for GUI elements such as text
 * entries or buttons; they appear as underlined characters. See
 * gtk_label_new_with_mnemonic(). Menu items can have both accelerators
 * and mnemonics, of course.
 */
private import gobject.ObjectG;
public class AccelGroup : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkAccelGroup* gtkAccelGroup;
	
	
	public GtkAccelGroup* getAccelGroupStruct()
	{
		return gtkAccelGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAccelGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAccelGroup* gtkAccelGroup)
	{
		super(cast(GObject*)gtkAccelGroup);
		this.gtkAccelGroup = gtkAccelGroup;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	gboolean delegate(ObjectG, guint, GdkModifierType, AccelGroup)[] onAccelActivateListeners;
	void addOnAccelActivate(gboolean delegate(ObjectG, guint, GdkModifierType, AccelGroup) dlg)
	{
		if ( !("accel-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-activate",
			cast(GCallback)&callBackAccelActivate,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["accel-activate"] = 1;
		}
		onAccelActivateListeners ~= dlg;
	}
	extern(C) static void callBackAccelActivate(GtkAccelGroup* accelGroupStruct, GObject* acceleratable, guint keyval, GdkModifierType modifier, AccelGroup accelGroup)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(ObjectG, guint, GdkModifierType, AccelGroup) dlg ; accelGroup.onAccelActivateListeners )
		{
			dlg(new ObjectG(acceleratable), keyval, modifier, accelGroup);
		}
		
		return consumed;
	}
	
	void delegate(guint, GdkModifierType, Closure, AccelGroup)[] onAccelChangedListeners;
	void addOnAccelChanged(void delegate(guint, GdkModifierType, Closure, AccelGroup) dlg)
	{
		if ( !("accel-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-changed",
			cast(GCallback)&callBackAccelChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["accel-changed"] = 1;
		}
		onAccelChangedListeners ~= dlg;
	}
	extern(C) static void callBackAccelChanged(GtkAccelGroup* accelGroupStruct, guint keyval, GdkModifierType modifier, GClosure* accelClosure, AccelGroup accelGroup)
	{
		bit consumed = false;
		
		foreach ( void delegate(guint, GdkModifierType, Closure, AccelGroup) dlg ; accelGroup.onAccelChangedListeners )
		{
			dlg(keyval, modifier, new Closure(accelClosure), accelGroup);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkAccelGroup.
	 * Returns:
	 *  a new GtkAccelGroup object
	 */
	public this ()
	{
		// GtkAccelGroup* gtk_accel_group_new (void);
		this(cast(GtkAccelGroup*)gtk_accel_group_new() );
	}
	
	
	
	/**
	 * Installs an accelerator in this group. When accel_group is being activated
	 * in response to a call to gtk_accel_groups_activate(), closure will be
	 * invoked if the accel_key and accel_mods from gtk_accel_groups_activate()
	 * match those of this connection.
	 * The signature used for the closure is that of GtkAccelGroupActivate.
	 * Note that, due to implementation details, a single closure can only be
	 * connected to one accelerator group.
	 * accel_group:
	 *  the accelerator group to install an accelerator in
	 * accel_key:
	 *  key value of the accelerator
	 * accel_mods:
	 *  modifier combination of the accelerator
	 * accel_flags:
	 *  a flag mask to configure this accelerator
	 * closure:
	 *  closure to be executed upon accelerator activation
	 */
	public void connect(uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, Closure closure)
	{
		// void gtk_accel_group_connect (GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods,  GtkAccelFlags accel_flags,  GClosure *closure);
		gtk_accel_group_connect(gtkAccelGroup, accelKey, accelMods, accelFlags, closure.getClosureStruct());
	}
	
	/**
	 * Installs an accelerator in this group, using an accelerator path to look
	 * up the appropriate key and modifiers (see gtk_accel_map_add_entry()).
	 * When accel_group is being activated in response to a call to
	 * gtk_accel_groups_activate(), closure will be invoked if the accel_key and
	 * accel_mods from gtk_accel_groups_activate() match the key and modifiers
	 * for the path.
	 * The signature used for the closure is that of GtkAccelGroupActivate.
	 * accel_group:
	 *  the accelerator group to install an accelerator in
	 * accel_path:
	 *  path used for determining key and modifiers.
	 * closure:
	 *  closure to be executed upon accelerator activation
	 */
	public void connectByPath(char[] accelPath, Closure closure)
	{
		// void gtk_accel_group_connect_by_path (GtkAccelGroup *accel_group,  const gchar *accel_path,  GClosure *closure);
		gtk_accel_group_connect_by_path(gtkAccelGroup, std.string.toStringz(accelPath), closure.getClosureStruct());
	}
	
	
	
	/**
	 * Removes an accelerator previously installed through
	 * gtk_accel_group_connect().
	 * accel_group:
	 *  the accelerator group to remove an accelerator from
	 * closure:
	 *  the closure to remove from this accelerator group
	 * Returns:
	 *  TRUE if the closure was found and got disconnected
	 */
	public int disconnect(Closure closure)
	{
		// gboolean gtk_accel_group_disconnect (GtkAccelGroup *accel_group,  GClosure *closure);
		return gtk_accel_group_disconnect(gtkAccelGroup, closure.getClosureStruct());
	}
	
	/**
	 * Removes an accelerator previously installed through
	 * gtk_accel_group_connect().
	 * accel_group:
	 *  the accelerator group to install an accelerator in
	 * accel_key:
	 *  key value of the accelerator
	 * accel_mods:
	 *  modifier combination of the accelerator
	 * Returns:
	 *  TRUE if there was an accelerator which could be
	 *  removed, FALSE otherwise
	 */
	public int disconnectKey(uint accelKey, GdkModifierType accelMods)
	{
		// gboolean gtk_accel_group_disconnect_key (GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods);
		return gtk_accel_group_disconnect_key(gtkAccelGroup, accelKey, accelMods);
	}
	
	/**
	 * Queries an accelerator group for all entries matching accel_key and
	 * accel_mods.
	 * accel_group:
	 *  the accelerator group to query
	 * accel_key:
	 *  key value of the accelerator
	 * accel_mods:
	 *  modifier combination of the accelerator
	 * n_entries:
	 *  location to return the number of entries found, or NULL
	 * Returns:
	 *  an array of n_entries GtkAccelGroupEntry elements, or NULL. The array is owned by GTK+ and must not be freed.
	 */
	public GtkAccelGroupEntry* query(uint accelKey, GdkModifierType accelMods, uint* nEntries)
	{
		// GtkAccelGroupEntry* gtk_accel_group_query (GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods,  guint *n_entries);
		return gtk_accel_group_query(gtkAccelGroup, accelKey, accelMods, nEntries);
	}
	
	/**
	 * accel_group:
	 * accel_quark:
	 * acceleratable:
	 * accel_key:
	 * accel_mods:
	 * Returns:
	 */
	public int activate(GQuark accelQuark, ObjectG acceleratable, uint accelKey, GdkModifierType accelMods)
	{
		// gboolean gtk_accel_group_activate (GtkAccelGroup *accel_group,  GQuark accel_quark,  GObject *acceleratable,  guint accel_key,  GdkModifierType accel_mods);
		return gtk_accel_group_activate(gtkAccelGroup, accelQuark, acceleratable.getObjectGStruct(), accelKey, accelMods);
	}
	
	/**
	 * Locks the given accelerator group.
	 * Locking an acelerator group prevents the accelerators contained
	 * within it to be changed during runtime. Refer to
	 * gtk_accel_map_change_entry() about runtime accelerator changes.
	 * If called more than once, accel_group remains locked until
	 * gtk_accel_group_unlock() has been called an equivalent number
	 * of times.
	 * accel_group:
	 *  a GtkAccelGroup
	 */
	public void lock()
	{
		// void gtk_accel_group_lock (GtkAccelGroup *accel_group);
		gtk_accel_group_lock(gtkAccelGroup);
	}
	
	/**
	 * Undoes the last call to gtk_accel_group_lock() on this accel_group.
	 * accel_group:
	 *  a GtkAccelGroup
	 */
	public void unlock()
	{
		// void gtk_accel_group_unlock (GtkAccelGroup *accel_group);
		gtk_accel_group_unlock(gtkAccelGroup);
	}
	
	/**
	 * Finds the GtkAccelGroup to which closure is connected;
	 * see gtk_accel_group_connect().
	 * closure:
	 *  a GClosure
	 * Returns:
	 *  the GtkAccelGroup to which closure is connected, or NULL.
	 */
	public static AccelGroup fromAccelClosure(Closure closure)
	{
		// GtkAccelGroup* gtk_accel_group_from_accel_closure  (GClosure *closure);
		return new AccelGroup( gtk_accel_group_from_accel_closure(closure.getClosureStruct()) );
	}
	
	/**
	 * Finds the first accelerator in any GtkAccelGroup attached
	 * to object that matches accel_key and accel_mods, and
	 * activates that accelerator.
	 * If an accelerator was activated and handled this keypress, TRUE
	 * is returned.
	 * object:
	 *  the GObject, usually a GtkWindow, on which
	 *  to activate the accelerator.
	 * accel_key:
	 *  accelerator keyval from a key event
	 * accel_mods:
	 *  keyboard state mask from a key event
	 * Returns:
	 *  TRUE if the accelerator was handled, FALSE otherwise
	 */
	public static int accelGroupsActivate(ObjectG object, uint accelKey, GdkModifierType accelMods)
	{
		// gboolean gtk_accel_groups_activate (GObject *object,  guint accel_key,  GdkModifierType accel_mods);
		return gtk_accel_groups_activate(object.getObjectGStruct(), accelKey, accelMods);
	}
	
	/**
	 * Gets a list of all accel groups which are attached to object.
	 * object:
	 *  a GObject, usually a GtkWindow
	 * Returns:
	 *  a list of all accel groups which are attached to object
	 */
	public static ListSG accelGroupsFromObject(ObjectG object)
	{
		// GSList* gtk_accel_groups_from_object (GObject *object);
		return new ListSG( gtk_accel_groups_from_object(object.getObjectGStruct()) );
	}
	
	/**
	 * Finds the first entry in an accelerator group for which
	 * find_func returns TRUE and returns its GtkAccelKey.
	 * accel_group:
	 *  a GtkAccelGroup
	 * find_func:
	 *  a function to filter the entries of accel_group with
	 * data:
	 *  data to pass to find_func
	 * Returns:
	 *  the key of the first entry passing find_func. The key is
	 * owned by GTK+ and must not be freed.
	 */
	public GtkAccelKey* find(GtkAccelGroupFindFunc findFunc, void* data)
	{
		// GtkAccelKey* gtk_accel_group_find (GtkAccelGroup *accel_group,  GtkAccelGroupFindFunc find_func,  gpointer data);
		return gtk_accel_group_find(gtkAccelGroup, findFunc, data);
	}
	
	
	/**
	 * Determines whether a given keyval and modifier mask constitute
	 * a valid keyboard accelerator. For example, the GDK_a keyval
	 * plus GDK_CONTROL_MASK is valid - this is a "Ctrl+a" accelerator.
	 * But, you can't, for instance, use the GDK_Control_L keyval
	 * as an accelerator.
	 * keyval:
	 *  a GDK keyval
	 * modifiers:
	 *  modifier mask
	 * Returns:
	 *  TRUE if the accelerator is valid
	 */
	public static int acceleratorValid(uint keyval, GdkModifierType modifiers)
	{
		// gboolean gtk_accelerator_valid (guint keyval,  GdkModifierType modifiers);
		return gtk_accelerator_valid(keyval, modifiers);
	}
	
	/**
	 * Parses a string representing an accelerator. The
	 * format looks like "<Control>a" or "<Shift><Alt>F1" or
	 * "<Release>z" (the last one is for key release).
	 * The parser is fairly liberal and allows lower or upper case,
	 * and also abbreviations such as "<Ctl>" and "<Ctrl>".
	 * If the parse fails, accelerator_key and accelerator_mods will
	 * be set to 0 (zero).
	 * accelerator:
	 *  string representing an accelerator
	 * accelerator_key:
	 *  return location for accelerator keyval
	 * accelerator_mods:
	 *  return location for accelerator modifier mask
	 */
	public static void acceleratorParse(char[] accelerator, uint* acceleratorKey, GdkModifierType* acceleratorMods)
	{
		// void gtk_accelerator_parse (const gchar *accelerator,  guint *accelerator_key,  GdkModifierType *accelerator_mods);
		gtk_accelerator_parse(std.string.toStringz(accelerator), acceleratorKey, acceleratorMods);
	}
	
	/**
	 * Converts an accelerator keyval and modifier mask
	 * into a string parseable by gtk_accelerator_parse().
	 * For example, if you pass in GDK_q and GDK_CONTROL_MASK,
	 * this function returns "<Control>q".
	 * If you need to display accelerators in the user interface,
	 * see gtk_accelerator_get_label().
	 * accelerator_key:
	 *  accelerator keyval
	 * accelerator_mods:
	 *  accelerator modifier mask
	 * Returns:
	 *  a newly-allocated accelerator name
	 */
	public static char[] acceleratorName(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		// gchar* gtk_accelerator_name (guint accelerator_key,  GdkModifierType accelerator_mods);
		return std.string.toString(gtk_accelerator_name(acceleratorKey, acceleratorMods) );
	}
	
	/**
	 * Converts an accelerator keyval and modifier mask into a string
	 * which can be used to represent the accelerator to the user.
	 * accelerator_key:
	 *  accelerator keyval
	 * accelerator_mods:
	 *  accelerator modifier mask
	 * Returns:
	 *  a newly-allocated string representing the accelerator.
	 * Since 2.6
	 */
	public static char[] acceleratorGetLabel(uint acceleratorKey, GdkModifierType acceleratorMods)
	{
		// gchar* gtk_accelerator_get_label (guint accelerator_key,  GdkModifierType accelerator_mods);
		return std.string.toString(gtk_accelerator_get_label(acceleratorKey, acceleratorMods) );
	}
	
	/**
	 * Sets the modifiers that will be considered significant for keyboard
	 * accelerators. The default mod mask is GDK_CONTROL_MASK |
	 * GDK_SHIFT_MASK | GDK_MOD1_MASK, that is, Control, Shift, and Alt.
	 * Other modifiers will by default be ignored by GtkAccelGroup.
	 * You must include at least the three default modifiers in any
	 * value you pass to this function.
	 * The default mod mask should be changed on application startup,
	 * before using any accelerator groups.
	 * default_mod_mask:
	 *  accelerator modifier mask
	 */
	public static void acceleratorSetDefaultModMask(GdkModifierType defaultModMask)
	{
		// void gtk_accelerator_set_default_mod_mask  (GdkModifierType default_mod_mask);
		gtk_accelerator_set_default_mod_mask(defaultModMask);
	}
	
	/**
	 * Gets the value set by gtk_accelerator_set_default_mod_mask().
	 * Returns:
	 *  the default accelerator modifier mask
	 * Signal Details
	 * The "accel-activate" signal
	 * gboolean user_function (GtkAccelGroup *accel_group,
	 *  GObject *acceleratable,
	 *  guint keyval,
	 *  GdkModifierType modifier,
	 *  gpointer user_data) : Has details
	 * The accel-activate signal is an implementation detail of
	 * GtkAccelGroup and not meant to be used by applications.
	 * accel_group:
	 *  the GtkAccelGroup which received the signal
	 * acceleratable:
	 *  the object on which the accelerator was activated
	 * keyval:
	 *  the accelerator keyval
	 * modifier:
	 *  the modifier combination of the accelerator
	 * user_data:
	 * user data set when the signal handler was connected.
	 * Returns:
	 *  TRUE if the accelerator was activated
	 */
	public static uint acceleratorGetDefaultModMask()
	{
		// guint gtk_accelerator_get_default_mod_mask  (void);
		return gtk_accelerator_get_default_mod_mask();
	}
	
}
