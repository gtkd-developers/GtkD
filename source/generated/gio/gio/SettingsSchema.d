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


module gio.SettingsSchema;

private import gio.SettingsSchemaKey;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * The #GSettingsSchemaSource and #GSettingsSchema APIs provide a
 * mechanism for advanced control over the loading of schemas and a
 * mechanism for introspecting their content.
 * 
 * Plugin loading systems that wish to provide plugins a way to access
 * settings face the problem of how to make the schemas for these
 * settings visible to GSettings.  Typically, a plugin will want to ship
 * the schema along with itself and it won't be installed into the
 * standard system directories for schemas.
 * 
 * #GSettingsSchemaSource provides a mechanism for dealing with this by
 * allowing the creation of a new 'schema source' from which schemas can
 * be acquired.  This schema source can then become part of the metadata
 * associated with the plugin and queried whenever the plugin requires
 * access to some settings.
 * 
 * Consider the following example:
 * 
 * |[<!-- language="C" -->
 * typedef struct
 * {
 * ...
 * GSettingsSchemaSource *schema_source;
 * ...
 * } Plugin;
 * 
 * Plugin *
 * initialise_plugin (const gchar *dir)
 * {
 * Plugin *plugin;
 * 
 * ...
 * 
 * plugin->schema_source =
 * g_settings_schema_source_new_from_directory (dir,
 * g_settings_schema_source_get_default (), FALSE, NULL);
 * 
 * ...
 * 
 * return plugin;
 * }
 * 
 * ...
 * 
 * GSettings *
 * plugin_get_settings (Plugin      *plugin,
 * const gchar *schema_id)
 * {
 * GSettingsSchema *schema;
 * 
 * if (schema_id == NULL)
 * schema_id = plugin->identifier;
 * 
 * schema = g_settings_schema_source_lookup (plugin->schema_source,
 * schema_id, FALSE);
 * 
 * if (schema == NULL)
 * {
 * ... disable the plugin or abort, etc ...
 * }
 * 
 * return g_settings_new_full (schema, NULL, NULL);
 * }
 * ]|
 * 
 * The code above shows how hooks should be added to the code that
 * initialises (or enables) the plugin to create the schema source and
 * how an API can be added to the plugin system to provide a convenient
 * way for the plugin to access its settings, using the schemas that it
 * ships.
 * 
 * From the standpoint of the plugin, it would need to ensure that it
 * ships a gschemas.compiled file as part of itself, and then simply do
 * the following:
 * 
 * |[<!-- language="C" -->
 * {
 * GSettings *settings;
 * gint some_value;
 * 
 * settings = plugin_get_settings (self, NULL);
 * some_value = g_settings_get_int (settings, "some-value");
 * ...
 * }
 * ]|
 * 
 * It's also possible that the plugin system expects the schema source
 * files (ie: .gschema.xml files) instead of a gschemas.compiled file.
 * In that case, the plugin loading system must compile the schemas for
 * itself before attempting to create the settings source.
 *
 * Since: 2.32
 */
public class SettingsSchema
{
	/** the main Gtk struct */
	protected GSettingsSchema* gSettingsSchema;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSettingsSchema* getSettingsSchemaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSettingsSchema;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSettingsSchema;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSettingsSchema* gSettingsSchema, bool ownedRef = false)
	{
		this.gSettingsSchema = gSettingsSchema;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_settings_schema_unref(gSettingsSchema);
	}


	/** */
	public static GType getType()
	{
		return g_settings_schema_get_type();
	}

	/**
	 * Get the ID of @schema.
	 *
	 * Returns: the ID
	 */
	public string getId()
	{
		return Str.toString(g_settings_schema_get_id(gSettingsSchema));
	}

	/**
	 * Gets the key named @name from @schema.
	 *
	 * It is a programmer error to request a key that does not exist.  See
	 * g_settings_schema_list_keys().
	 *
	 * Params:
	 *     name = the name of a key
	 *
	 * Returns: the #GSettingsSchemaKey for @name
	 *
	 * Since: 2.40
	 */
	public SettingsSchemaKey getKey(string name)
	{
		auto __p = g_settings_schema_get_key(gSettingsSchema, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchemaKey)(cast(GSettingsSchemaKey*) __p, true);
	}

	/**
	 * Gets the path associated with @schema, or %NULL.
	 *
	 * Schemas may be single-instance or relocatable.  Single-instance
	 * schemas correspond to exactly one set of keys in the backend
	 * database: those located at the path returned by this function.
	 *
	 * Relocatable schemas can be referenced by other schemas and can
	 * therefore describe multiple sets of keys at different locations.  For
	 * relocatable schemas, this function will return %NULL.
	 *
	 * Returns: the path of the schema, or %NULL
	 *
	 * Since: 2.32
	 */
	public string getPath()
	{
		return Str.toString(g_settings_schema_get_path(gSettingsSchema));
	}

	/**
	 * Checks if @schema has a key named @name.
	 *
	 * Params:
	 *     name = the name of a key
	 *
	 * Returns: %TRUE if such a key exists
	 *
	 * Since: 2.40
	 */
	public bool hasKey(string name)
	{
		return g_settings_schema_has_key(gSettingsSchema, Str.toStringz(name)) != 0;
	}

	/**
	 * Gets the list of children in @schema.
	 *
	 * You should free the return value with g_strfreev() when you are done
	 * with it.
	 *
	 * Returns: a list of
	 *     the children on @settings, in no defined order
	 *
	 * Since: 2.44
	 */
	public string[] listChildren()
	{
		auto retStr = g_settings_schema_list_children(gSettingsSchema);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Introspects the list of keys on @schema.
	 *
	 * You should probably not be calling this function from "normal" code
	 * (since you should already know what keys are in your schema).  This
	 * function is intended for introspection reasons.
	 *
	 * Returns: a list
	 *     of the keys on @schema, in no defined order
	 *
	 * Since: 2.46
	 */
	public string[] listKeys()
	{
		auto retStr = g_settings_schema_list_keys(gSettingsSchema);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of @schema, returning a new reference.
	 *
	 * Returns: a new reference to @schema
	 *
	 * Since: 2.32
	 */
	public SettingsSchema ref_()
	{
		auto __p = g_settings_schema_ref(gSettingsSchema);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchema)(cast(GSettingsSchema*) __p, true);
	}

	/**
	 * Decrease the reference count of @schema, possibly freeing it.
	 *
	 * Since: 2.32
	 */
	public void unref()
	{
		g_settings_schema_unref(gSettingsSchema);
	}
}
