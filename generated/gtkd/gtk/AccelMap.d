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


module gtk.AccelMap;

private import glib.ScannerG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Accelerator maps are used to define runtime configurable accelerators.
 * Functions for manipulating them are are usually used by higher level
 * convenience mechanisms like #GtkUIManager and are thus considered
 * “low-level”. You’ll want to use them if you’re manually creating menus that
 * should have user-configurable accelerators.
 * 
 * An accelerator is uniquely defined by:
 * - accelerator path
 * - accelerator key
 * - accelerator modifiers
 * 
 * The accelerator path must consist of
 * “<WINDOWTYPE>/Category1/Category2/.../Action”, where WINDOWTYPE
 * should be a unique application-specific identifier that corresponds
 * to the kind of window the accelerator is being used in, e.g.
 * “Gimp-Image”, “Abiword-Document” or “Gnumeric-Settings”.
 * The “Category1/.../Action” portion is most appropriately chosen by
 * the action the accelerator triggers, i.e. for accelerators on menu
 * items, choose the item’s menu path, e.g. “File/Save As”,
 * “Image/View/Zoom” or “Edit/Select All”. So a full valid accelerator
 * path may look like: “<Gimp-Toolbox>/File/Dialogs/Tool Options...”.
 * 
 * All accelerators are stored inside one global #GtkAccelMap that can
 * be obtained using gtk_accel_map_get(). See
 * [Monitoring changes][monitoring-changes] for additional
 * details.
 * 
 * # Manipulating accelerators
 * 
 * New accelerators can be added using gtk_accel_map_add_entry().
 * To search for specific accelerator, use gtk_accel_map_lookup_entry().
 * Modifications of existing accelerators should be done using
 * gtk_accel_map_change_entry().
 * 
 * In order to avoid having some accelerators changed, they can be
 * locked using gtk_accel_map_lock_path(). Unlocking is done using
 * gtk_accel_map_unlock_path().
 * 
 * # Saving and loading accelerator maps
 * 
 * Accelerator maps can be saved to and loaded from some external
 * resource. For simple saving and loading from file,
 * gtk_accel_map_save() and gtk_accel_map_load() are provided.
 * Saving and loading can also be done by providing file descriptor
 * to gtk_accel_map_save_fd() and gtk_accel_map_load_fd().
 * 
 * # Monitoring changes
 * 
 * #GtkAccelMap object is only useful for monitoring changes of
 * accelerators. By connecting to #GtkAccelMap::changed signal, one
 * can monitor changes of all accelerators. It is also possible to
 * monitor only single accelerator path by using it as a detail of
 * the #GtkAccelMap::changed signal.
 */
public class AccelMap : ObjectG
{
	/** the main Gtk struct */
	protected GtkAccelMap* gtkAccelMap;

	/** Get the main Gtk struct */
	public GtkAccelMap* getAccelMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAccelMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAccelMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAccelMap* gtkAccelMap, bool ownedRef = false)
	{
		this.gtkAccelMap = gtkAccelMap;
		super(cast(GObject*)gtkAccelMap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_accel_map_get_type();
	}

	/**
	 * Registers a new accelerator with the global accelerator map.
	 * This function should only be called once per @accel_path
	 * with the canonical @accel_key and @accel_mods for this path.
	 * To change the accelerator during runtime programatically, use
	 * gtk_accel_map_change_entry().
	 *
	 * Set @accel_key and @accel_mods to 0 to request a removal of
	 * the accelerator.
	 *
	 * Note that @accel_path string will be stored in a #GQuark. Therefore, if you
	 * pass a static string, you can save some memory by interning it first with
	 * g_intern_static_string().
	 *
	 * Params:
	 *     accelPath = valid accelerator path
	 *     accelKey = the accelerator key
	 *     accelMods = the accelerator modifiers
	 */
	public static void addEntry(string accelPath, uint accelKey, GdkModifierType accelMods)
	{
		gtk_accel_map_add_entry(Str.toStringz(accelPath), accelKey, accelMods);
	}

	/**
	 * Adds a filter to the global list of accel path filters.
	 *
	 * Accel map entries whose accel path matches one of the filters
	 * are skipped by gtk_accel_map_foreach().
	 *
	 * This function is intended for GTK+ modules that create their own
	 * menus, but don’t want them to be saved into the applications accelerator
	 * map dump.
	 *
	 * Params:
	 *     filterPattern = a pattern (see #GPatternSpec)
	 */
	public static void addFilter(string filterPattern)
	{
		gtk_accel_map_add_filter(Str.toStringz(filterPattern));
	}

	/**
	 * Changes the @accel_key and @accel_mods currently associated with @accel_path.
	 * Due to conflicts with other accelerators, a change may not always be possible,
	 * @replace indicates whether other accelerators may be deleted to resolve such
	 * conflicts. A change will only occur if all conflicts could be resolved (which
	 * might not be the case if conflicting accelerators are locked). Successful
	 * changes are indicated by a %TRUE return value.
	 *
	 * Note that @accel_path string will be stored in a #GQuark. Therefore, if you
	 * pass a static string, you can save some memory by interning it first with
	 * g_intern_static_string().
	 *
	 * Params:
	 *     accelPath = a valid accelerator path
	 *     accelKey = the new accelerator key
	 *     accelMods = the new accelerator modifiers
	 *     replace = %TRUE if other accelerators may be deleted upon conflicts
	 *
	 * Returns: %TRUE if the accelerator could be changed, %FALSE otherwise
	 */
	public static bool changeEntry(string accelPath, uint accelKey, GdkModifierType accelMods, bool replace)
	{
		return gtk_accel_map_change_entry(Str.toStringz(accelPath), accelKey, accelMods, replace) != 0;
	}

	alias foreac = foreach_;
	/**
	 * Loops over the entries in the accelerator map whose accel path
	 * doesn’t match any of the filters added with gtk_accel_map_add_filter(),
	 * and execute @foreach_func on each. The signature of @foreach_func is
	 * that of #GtkAccelMapForeach, the @changed parameter indicates whether
	 * this accelerator was changed during runtime (thus, would need
	 * saving during an accelerator map dump).
	 *
	 * Params:
	 *     data = data to be passed into @foreach_func
	 *     foreachFunc = function to be executed for each accel
	 *         map entry which is not filtered out
	 */
	public static void foreach_(void* data, GtkAccelMapForeach foreachFunc)
	{
		gtk_accel_map_foreach(data, foreachFunc);
	}

	/**
	 * Loops over all entries in the accelerator map, and execute
	 * @foreach_func on each. The signature of @foreach_func is that of
	 * #GtkAccelMapForeach, the @changed parameter indicates whether
	 * this accelerator was changed during runtime (thus, would need
	 * saving during an accelerator map dump).
	 *
	 * Params:
	 *     data = data to be passed into @foreach_func
	 *     foreachFunc = function to be executed for each accel
	 *         map entry
	 */
	public static void foreachUnfiltered(void* data, GtkAccelMapForeach foreachFunc)
	{
		gtk_accel_map_foreach_unfiltered(data, foreachFunc);
	}

	/**
	 * Gets the singleton global #GtkAccelMap object. This object
	 * is useful only for notification of changes to the accelerator
	 * map via the ::changed signal; it isn’t a parameter to the
	 * other accelerator map functions.
	 *
	 * Returns: the global #GtkAccelMap object
	 *
	 * Since: 2.4
	 */
	public static AccelMap get()
	{
		auto p = gtk_accel_map_get();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AccelMap)(cast(GtkAccelMap*) p);
	}

	/**
	 * Parses a file previously saved with gtk_accel_map_save() for
	 * accelerator specifications, and propagates them accordingly.
	 *
	 * Params:
	 *     fileName = a file containing accelerator specifications,
	 *         in the GLib file name encoding
	 */
	public static void load(string fileName)
	{
		gtk_accel_map_load(Str.toStringz(fileName));
	}

	/**
	 * Filedescriptor variant of gtk_accel_map_load().
	 *
	 * Note that the file descriptor will not be closed by this function.
	 *
	 * Params:
	 *     fd = a valid readable file descriptor
	 */
	public static void loadFd(int fd)
	{
		gtk_accel_map_load_fd(fd);
	}

	/**
	 * #GScanner variant of gtk_accel_map_load().
	 *
	 * Params:
	 *     scanner = a #GScanner which has already been provided with an input file
	 */
	public static void loadScanner(ScannerG scanner)
	{
		gtk_accel_map_load_scanner((scanner is null) ? null : scanner.getScannerGStruct());
	}

	/**
	 * Locks the given accelerator path. If the accelerator map doesn’t yet contain
	 * an entry for @accel_path, a new one is created.
	 *
	 * Locking an accelerator path prevents its accelerator from being changed
	 * during runtime. A locked accelerator path can be unlocked by
	 * gtk_accel_map_unlock_path(). Refer to gtk_accel_map_change_entry()
	 * for information about runtime accelerator changes.
	 *
	 * If called more than once, @accel_path remains locked until
	 * gtk_accel_map_unlock_path() has been called an equivalent number
	 * of times.
	 *
	 * Note that locking of individual accelerator paths is independent from
	 * locking the #GtkAccelGroup containing them. For runtime accelerator
	 * changes to be possible, both the accelerator path and its #GtkAccelGroup
	 * have to be unlocked.
	 *
	 * Params:
	 *     accelPath = a valid accelerator path
	 *
	 * Since: 2.4
	 */
	public static void lockPath(string accelPath)
	{
		gtk_accel_map_lock_path(Str.toStringz(accelPath));
	}

	/**
	 * Looks up the accelerator entry for @accel_path and fills in @key.
	 *
	 * Params:
	 *     accelPath = a valid accelerator path
	 *     key = the accelerator key to be filled in (optional)
	 *
	 * Returns: %TRUE if @accel_path is known, %FALSE otherwise
	 */
	public static bool lookupEntry(string accelPath, out GtkAccelKey key)
	{
		return gtk_accel_map_lookup_entry(Str.toStringz(accelPath), &key) != 0;
	}

	/**
	 * Saves current accelerator specifications (accelerator path, key
	 * and modifiers) to @file_name.
	 * The file is written in a format suitable to be read back in by
	 * gtk_accel_map_load().
	 *
	 * Params:
	 *     fileName = the name of the file to contain
	 *         accelerator specifications, in the GLib file name encoding
	 */
	public static void save(string fileName)
	{
		gtk_accel_map_save(Str.toStringz(fileName));
	}

	/**
	 * Filedescriptor variant of gtk_accel_map_save().
	 *
	 * Note that the file descriptor will not be closed by this function.
	 *
	 * Params:
	 *     fd = a valid writable file descriptor
	 */
	public static void saveFd(int fd)
	{
		gtk_accel_map_save_fd(fd);
	}

	/**
	 * Undoes the last call to gtk_accel_map_lock_path() on this @accel_path.
	 * Refer to gtk_accel_map_lock_path() for information about accelerator path locking.
	 *
	 * Params:
	 *     accelPath = a valid accelerator path
	 *
	 * Since: 2.4
	 */
	public static void unlockPath(string accelPath)
	{
		gtk_accel_map_unlock_path(Str.toStringz(accelPath));
	}

	/**
	 * Notifies of a change in the global accelerator map.
	 * The path is also used as the detail for the signal,
	 * so it is possible to connect to
	 * changed::`accel_path`.
	 *
	 * Params:
	 *     accelPath = the path of the accelerator that changed
	 *     accelKey = the key value for the new accelerator
	 *     accelMods = the modifier mask for the new accelerator
	 *
	 * Since: 2.4
	 */
	gulong addOnChanged(void delegate(string, uint, GdkModifierType, AccelMap) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
