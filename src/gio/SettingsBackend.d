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


module gio.SettingsBackend;

private import glib.BBTree;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * The #GSettingsBackend interface defines a generic interface for
 * non-strictly-typed data that is stored in a hierarchy. To implement
 * an alternative storage backend for #GSettings, you need to implement
 * the #GSettingsBackend interface and then make it implement the
 * extension point #G_SETTINGS_BACKEND_EXTENSION_POINT_NAME.
 * 
 * The interface defines methods for reading and writing values, a
 * method for determining if writing of certain values will fail
 * (lockdown) and a change notification mechanism.
 * 
 * The semantics of the interface are very precisely defined and
 * implementations must carefully adhere to the expectations of
 * callers that are documented on each of the interface methods.
 * 
 * Some of the GSettingsBackend functions accept or return a #GTree.
 * These trees always have strings as keys and #GVariant as values.
 * g_settings_backend_create_tree() is a convenience function to create
 * suitable trees.
 * 
 * The GSettingsBackend API is exported to allow third-party
 * implementations, but does not carry the same stability guarantees
 * as the public GIO API. For this reason, you have to define the
 * C preprocessor symbol %G_SETTINGS_ENABLE_BACKEND before including
 * `gio/gsettingsbackend.h`.
 */
public class SettingsBackend : ObjectG
{
	/** the main Gtk struct */
	protected GSettingsBackend* gSettingsBackend;

	/** Get the main Gtk struct */
	public GSettingsBackend* getSettingsBackendStruct()
	{
		return gSettingsBackend;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSettingsBackend;
	}

	protected override void setStruct(GObject* obj)
	{
		gSettingsBackend = cast(GSettingsBackend*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSettingsBackend* gSettingsBackend, bool ownedRef = false)
	{
		this.gSettingsBackend = gSettingsBackend;
		super(cast(GObject*)gSettingsBackend, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_settings_backend_get_type();
	}

	/**
	 * Calculate the longest common prefix of all keys in a tree and write
	 * out an array of the key names relative to that prefix and,
	 * optionally, the value to store at each of those keys.
	 *
	 * You must free the value returned in @path, @keys and @values using
	 * g_free().  You should not attempt to free or unref the contents of
	 * @keys or @values.
	 *
	 * Params:
	 *     tree = a #GTree containing the changes
	 *     path = the location to save the path
	 *     keys = the
	 *         location to save the relative keys
	 *     values = the location to save the values, or %NULL
	 *
	 * Since: 2.26
	 */
	public static void flattenTree(BBTree tree, out string path, out string[] keys, out Variant[] values)
	{
		char* outpath = null;
		char** outkeys = null;
		GVariant** outvalues = null;
		
		g_settings_backend_flatten_tree((tree is null) ? null : tree.getBBTreeStruct(), &outpath, &outkeys, &outvalues);
		
		path = Str.toString(outpath);
		keys = Str.toStringArray(outkeys);
		
		values = new Variant[getArrayLength(outvalues)];
		for(size_t i = 0; i < getArrayLength(outvalues); i++)
		{
			values[i] = new Variant(cast(GVariant*) outvalues[i]);
		}
	}

	/**
	 * Returns the default #GSettingsBackend. It is possible to override
	 * the default by setting the `GSETTINGS_BACKEND` environment variable
	 * to the name of a settings backend.
	 *
	 * The user gets a reference to the backend.
	 *
	 * Return: the default #GSettingsBackend
	 *
	 * Since: 2.28
	 */
	public static SettingsBackend getDefault()
	{
		auto p = g_settings_backend_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SettingsBackend)(cast(GSettingsBackend*) p, true);
	}

	/**
	 * Signals that a single key has possibly changed.  Backend
	 * implementations should call this if a key has possibly changed its
	 * value.
	 *
	 * @key must be a valid key (ie starting with a slash, not containing
	 * '//', and not ending with a slash).
	 *
	 * The implementation must call this function during any call to
	 * g_settings_backend_write(), before the call returns (except in the
	 * case that no keys are actually changed and it cares to detect this
	 * fact).  It may not rely on the existence of a mainloop for
	 * dispatching the signal later.
	 *
	 * The implementation may call this function at any other time it likes
	 * in response to other events (such as changes occurring outside of the
	 * program).  These calls may originate from a mainloop or may originate
	 * in response to any other action (including from calls to
	 * g_settings_backend_write()).
	 *
	 * In the case that this call is in response to a call to
	 * g_settings_backend_write() then @origin_tag must be set to the same
	 * value that was passed to that call.
	 *
	 * Params:
	 *     key = the name of the key
	 *     originTag = the origin tag
	 *
	 * Since: 2.26
	 */
	public void changed(string key, void* originTag)
	{
		g_settings_backend_changed(gSettingsBackend, Str.toStringz(key), originTag);
	}

	/**
	 * This call is a convenience wrapper.  It gets the list of changes from
	 * @tree, computes the longest common prefix and calls
	 * g_settings_backend_changed().
	 *
	 * Params:
	 *     tree = a #GTree containing the changes
	 *     originTag = the origin tag
	 *
	 * Since: 2.26
	 */
	public void changedTree(BBTree tree, void* originTag)
	{
		g_settings_backend_changed_tree(gSettingsBackend, (tree is null) ? null : tree.getBBTreeStruct(), originTag);
	}

	/**
	 * Signals that a list of keys have possibly changed.  Backend
	 * implementations should call this if keys have possibly changed their
	 * values.
	 *
	 * @path must be a valid path (ie starting and ending with a slash and
	 * not containing '//').  Each string in @items must form a valid key
	 * name when @path is prefixed to it (ie: each item must not start or
	 * end with '/' and must not contain '//').
	 *
	 * The meaning of this signal is that any of the key names resulting
	 * from the contatenation of @path with each item in @items may have
	 * changed.
	 *
	 * The same rules for when notifications must occur apply as per
	 * g_settings_backend_changed().  These two calls can be used
	 * interchangeably if exactly one item has changed (although in that
	 * case g_settings_backend_changed() is definitely preferred).
	 *
	 * For efficiency reasons, the implementation should strive for @path to
	 * be as long as possible (ie: the longest common prefix of all of the
	 * keys that were changed) but this is not strictly required.
	 *
	 * Params:
	 *     path = the path containing the changes
	 *     items = the %NULL-terminated list of changed keys
	 *     originTag = the origin tag
	 *
	 * Since: 2.26
	 */
	public void keysChanged(string path, string[] items, void* originTag)
	{
		g_settings_backend_keys_changed(gSettingsBackend, Str.toStringz(path), Str.toStringzArray(items), originTag);
	}

	/**
	 * Signals that all keys below a given path may have possibly changed.
	 * Backend implementations should call this if an entire path of keys
	 * have possibly changed their values.
	 *
	 * @path must be a valid path (ie starting and ending with a slash and
	 * not containing '//').
	 *
	 * The meaning of this signal is that any of the key which has a name
	 * starting with @path may have changed.
	 *
	 * The same rules for when notifications must occur apply as per
	 * g_settings_backend_changed().  This call might be an appropriate
	 * reasponse to a 'reset' call but implementations are also free to
	 * explicitly list the keys that were affected by that call if they can
	 * easily do so.
	 *
	 * For efficiency reasons, the implementation should strive for @path to
	 * be as long as possible (ie: the longest common prefix of all of the
	 * keys that were changed) but this is not strictly required.  As an
	 * example, if this function is called with the path of "/" then every
	 * single key in the application will be notified of a possible change.
	 *
	 * Params:
	 *     path = the path containing the changes
	 *     originTag = the origin tag
	 *
	 * Since: 2.26
	 */
	public void pathChanged(string path, void* originTag)
	{
		g_settings_backend_path_changed(gSettingsBackend, Str.toStringz(path), originTag);
	}

	/**
	 * Signals that the writability of all keys below a given path may have
	 * changed.
	 *
	 * Since GSettings performs no locking operations for itself, this call
	 * will always be made in response to external events.
	 *
	 * Params:
	 *     path = the name of the path
	 *
	 * Since: 2.26
	 */
	public void pathWritableChanged(string path)
	{
		g_settings_backend_path_writable_changed(gSettingsBackend, Str.toStringz(path));
	}

	/**
	 * Signals that the writability of a single key has possibly changed.
	 *
	 * Since GSettings performs no locking operations for itself, this call
	 * will always be made in response to external events.
	 *
	 * Params:
	 *     key = the name of the key
	 *
	 * Since: 2.26
	 */
	public void writableChanged(string key)
	{
		g_settings_backend_writable_changed(gSettingsBackend, Str.toStringz(key));
	}
}
