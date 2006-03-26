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
 * outFile = AccelMap
 * strct   = GtkAccelMap
 * realStrct=
 * clss    = AccelMap
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_accel_map_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.AccelMap
 * structWrap:
 * 	- GtkAccelMap* -> AccelMap
 * local aliases:
 */

module gtk.AccelMap;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.AccelMap;

/**
 * Description
 */
private import gobject.ObjectG;
public class AccelMap : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkAccelMap* gtkAccelMap;
	
	
	public GtkAccelMap* getAccelMapStruct()
	{
		return gtkAccelMap;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAccelMap;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAccelMap* gtkAccelMap)
	{
		super(cast(GObject*)gtkAccelMap);
		this.gtkAccelMap = gtkAccelMap;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(char[], guint, GdkModifierType, AccelMap)[] onChangedListeners;
	void addOnChanged(void delegate(char[], guint, GdkModifierType, AccelMap) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkAccelMap* objectStruct, gchar* accelPath, guint accelKey, GdkModifierType accelMods, AccelMap accelMap)
	{
		bit consumed = false;
		
		foreach ( void delegate(char[], guint, GdkModifierType, AccelMap) dlg ; accelMap.onChangedListeners )
		{
			dlg(Str.toString(accelPath), accelKey, accelMods, accelMap);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Registers a new accelerator with the global accelerator map.
	 * This function should only be called once per accel_path
	 * with the canonical accel_key and accel_mods for this path.
	 * To change the accelerator during runtime programatically, use
	 * gtk_accel_map_change_entry().
	 * The accelerator path must consist of "<WINDOWTYPE>/Category1/Category2/.../Action",
	 * where <WINDOWTYPE> should be a unique application-specific identifier, that
	 * corresponds to the kind of window the accelerator is being used in, e.g. "Gimp-Image",
	 * "Abiword-Document" or "Gnumeric-Settings".
	 * The Category1/.../Action portion is most appropriately chosen by the action the
	 * accelerator triggers, i.e. for accelerators on menu items, choose the item's menu path,
	 * e.g. "File/Save As", "Image/View/Zoom" or "Edit/Select All".
	 * So a full valid accelerator path may look like:
	 * "<Gimp-Toolbox>/File/Dialogs/Tool Options...".
	 * accel_path:
	 *  valid accelerator path
	 * accel_key:
	 *  the accelerator key
	 * accel_mods:
	 *  the accelerator modifiers
	 */
	public static void addEntry(char[] accelPath, uint accelKey, GdkModifierType accelMods)
	{
		// void gtk_accel_map_add_entry (const gchar *accel_path,  guint accel_key,  GdkModifierType accel_mods);
		gtk_accel_map_add_entry(Str.toStringz(accelPath), accelKey, accelMods);
	}
	
	/**
	 * Looks up the accelerator entry for accel_path and fills in key.
	 * accel_path:
	 *  a valid accelerator path
	 * key:
	 *  the accelerator key to be filled in (optional)
	 * Returns:
	 *  TRUE if accel_path is known, FALSE otherwise
	 */
	public static int lookupEntry(char[] accelPath, GtkAccelKey* key)
	{
		// gboolean gtk_accel_map_lookup_entry (const gchar *accel_path,  GtkAccelKey *key);
		return gtk_accel_map_lookup_entry(Str.toStringz(accelPath), key);
	}
	
	/**
	 * Changes the accel_key and accel_mods currently associated with accel_path.
	 * Due to conflicts with other accelerators, a change may not always be possible,
	 * replace indicates whether other accelerators may be deleted to resolve such
	 * conflicts. A change will only occur if all conflicts could be resolved (which
	 * might not be the case if conflicting accelerators are locked). Successful
	 * changes are indicated by a TRUE return value.
	 * accel_path:
	 *  a valid accelerator path
	 * accel_key:
	 *  the new accelerator key
	 * accel_mods:
	 *  the new accelerator modifiers
	 * replace:
	 *  TRUE if other accelerators may be deleted upon conflicts
	 * Returns:
	 *  TRUE if the accelerator could be changed, FALSE otherwise
	 */
	public static int changeEntry(char[] accelPath, uint accelKey, GdkModifierType accelMods, int replace)
	{
		// gboolean gtk_accel_map_change_entry (const gchar *accel_path,  guint accel_key,  GdkModifierType accel_mods,  gboolean replace);
		return gtk_accel_map_change_entry(Str.toStringz(accelPath), accelKey, accelMods, replace);
	}
	
	/**
	 * Parses a file previously saved with gtk_accel_map_save() for
	 * accelerator specifications, and propagates them accordingly.
	 * file_name:
	 *  a file containing accelerator specifications,
	 *  in the GLib file name encoding
	 */
	public static void load(char[] fileName)
	{
		// void gtk_accel_map_load (const gchar *file_name);
		gtk_accel_map_load(Str.toStringz(fileName));
	}
	
	/**
	 * Saves current accelerator specifications (accelerator path, key
	 * and modifiers) to file_name.
	 * The file is written in a format suitable to be read back in by
	 * gtk_accel_map_load().
	 * file_name:
	 *  the name of the file to contain accelerator specifications,
	 *  in the GLib file name encoding
	 */
	public static void save(char[] fileName)
	{
		// void gtk_accel_map_save (const gchar *file_name);
		gtk_accel_map_save(Str.toStringz(fileName));
	}
	
	/**
	 * Loops over the entries in the accelerator map whose accel path
	 * doesn't match any of the filters added with gtk_accel_map_add_filter(),
	 * and execute foreach_func on each. The signature of foreach_func is
	 * that of GtkAccelMapForeach, the changed parameter indicates whether
	 * this accelerator was changed during runtime (thus, would need
	 * saving during an accelerator map dump).
	 * data:
	 *  data to be passed into foreach_func
	 * foreach_func:
	 *  function to be executed for each accel map entry which
	 *  is not filtered out
	 */
	public static void foreac(void* data, GtkAccelMapForeach foreachFunc)
	{
		// void gtk_accel_map_foreach (gpointer data,  GtkAccelMapForeach foreach_func);
		gtk_accel_map_foreach(data, foreachFunc);
	}
	
	/**
	 * Filedescriptor variant of gtk_accel_map_load().
	 * Note that the file descriptor will not be closed by this function.
	 * fd:
	 *  a valid readable file descriptor
	 */
	public static void loadFd(int fd)
	{
		// void gtk_accel_map_load_fd (gint fd);
		gtk_accel_map_load_fd(fd);
	}
	
	/**
	 * Filedescriptor variant of gtk_accel_map_save().
	 * Note that the file descriptor will not be closed by this function.
	 * fd:
	 *  a valid writable file descriptor
	 */
	public static void saveFd(int fd)
	{
		// void gtk_accel_map_save_fd (gint fd);
		gtk_accel_map_save_fd(fd);
	}
	
	/**
	 * GScanner variant of gtk_accel_map_load().
	 * scanner:
	 *  a GScanner which has already been provided with an input file
	 */
	public static void loadScanner(GScanner* scanner)
	{
		// void gtk_accel_map_load_scanner (GScanner *scanner);
		gtk_accel_map_load_scanner(scanner);
	}
	
	/**
	 * Adds a filter to the global list of accel path filters.
	 * Accel map entries whose accel path matches one of the filters
	 * are skipped by gtk_accel_map_foreach().
	 * This function is intended for GTK+ modules that create their own
	 * menus, but don't want them to be saved into the applications accelerator
	 * map dump.
	 * filter_pattern:
	 *  a pattern (see GPatternSpec)
	 */
	public static void addFilter(char[] filterPattern)
	{
		// void gtk_accel_map_add_filter (const gchar *filter_pattern);
		gtk_accel_map_add_filter(Str.toStringz(filterPattern));
	}
	
	/**
	 * Loops over all entries in the accelerator map, and execute
	 * foreach_func on each. The signature of foreach_func is that of
	 * GtkAccelMapForeach, the changed parameter indicates whether
	 * this accelerator was changed during runtime (thus, would need
	 * saving during an accelerator map dump).
	 * data:
	 *  data to be passed into foreach_func
	 * foreach_func:
	 *  function to be executed for each accel map entry
	 */
	public static void foreachUnfiltered(void* data, GtkAccelMapForeach foreachFunc)
	{
		// void gtk_accel_map_foreach_unfiltered  (gpointer data,  GtkAccelMapForeach foreach_func);
		gtk_accel_map_foreach_unfiltered(data, foreachFunc);
	}
	
	/**
	 * Gets the singleton global GtkAccelMap object. This object
	 * is useful only for notification of changes to the accelerator
	 * map via the ::changed signal; it isn't a parameter to the
	 * other accelerator map functions.
	 * Returns:
	 *  the global GtkAccelMap object
	 * Since 2.4
	 */
	public static AccelMap get()
	{
		// GtkAccelMap* gtk_accel_map_get (void);
		return new AccelMap( gtk_accel_map_get() );
	}
	
	/**
	 * Locks the given accelerator path. If the accelerator map doesn't yet contain
	 * an entry for accel_path, a new one is created.
	 * Locking an accelerator path prevents its accelerator from being changed
	 * during runtime. A locked accelerator path can be unlocked by
	 * gtk_accel_map_unlock_path(). Refer to gtk_accel_map_change_entry()
	 * for information about runtime accelerator changes.
	 * If called more than once, accel_path remains locked until
	 * gtk_accel_map_unlock_path() has been called an equivalent number
	 * of times.
	 * Note that locking of individual accelerator paths is independent from
	 * locking the GtkAccelGroup containing them. For runtime accelerator
	 * changes to be possible both the accelerator path and its GtkAccelGroup
	 * have to be unlocked.
	 * accel_path:
	 *  a valid accelerator path
	 * Since 2.4
	 */
	public static void lockPath(char[] accelPath)
	{
		// void gtk_accel_map_lock_path (const gchar *accel_path);
		gtk_accel_map_lock_path(Str.toStringz(accelPath));
	}
	
	/**
	 * Undoes the last call to gtk_accel_map_lock_path() on this accel_path.
	 * Refer to gtk_accel_map_lock_path() for information about accelerator path locking.
	 * accel_path:
	 *  a valid accelerator path
	 * Since 2.4
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkAccelMap *object,
	 *  gchar *accel_path,
	 *  guint accel_key,
	 *  GdkModifierType accel_mods,
	 *  gpointer user_data) : Run last / Has details
	 * Notifies of a change in the global accelerator map.
	 * The path is also used as the detail for the signal,
	 * so it is possible to connect to
	 * changed::accel_path.
	 * object:
	 *  the global accel map object
	 * accel_path:
	 *  the path of the accelerator that changed
	 * accel_key:
	 *  the key value for the new accelerator
	 * accel_mods:
	 *  the modifier mask for the new accelerator
	 * user_data:
	 * user data set when the signal handler was connected.
	 * Since 2.4
	 */
	public static void unlockPath(char[] accelPath)
	{
		// void gtk_accel_map_unlock_path (const gchar *accel_path);
		gtk_accel_map_unlock_path(Str.toStringz(accelPath));
	}
}
