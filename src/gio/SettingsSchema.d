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
 * inFile  = gio-GSettingsSchema-GSettingsSchemaSource.html
 * outPack = gio
 * outFile = SettingsSchema
 * strct   = GSettingsSchema
 * realStrct=
 * ctorStrct=
 * clss    = SettingsSchema
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_settings_schema_
 * omit structs:
 * omit prefixes:
 * 	- g_settings_schema_source_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GSettingsSchema* -> SettingsSchema
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SettingsSchema;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;



private import gobject.Boxed;

/**
 * Description
 * The GSettingsSchemaSource and GSettingsSchema APIs provide a
 * mechanism for advanced control over the loading of schemas and a
 * mechanism for introspecting their content.
 * Plugin loading systems that wish to provide plugins a way to access
 * settings face the problem of how to make the schemas for these
 * settings visible to GSettings. Typically, a plugin will want to ship
 * the schema along with itself and it won't be installed into the
 * standard system directories for schemas.
 * GSettingsSchemaSource provides a mechanism for dealing with this by
 * allowing the creation of a new 'schema source' from which schemas can
 * be acquired. This schema source can then become part of the metadata
 * associated with the plugin and queried whenever the plugin requires
 * access to some settings.
 * Consider the following example:
 * $(DDOC_COMMENT example)
 * The code above shows how hooks should be added to the code that
 * initialises (or enables) the plugin to create the schema source and
 * how an API can be added to the plugin system to provide a convenient
 * way for the plugin to access its settings, using the schemas that it
 * ships.
 * From the standpoint of the plugin, it would need to ensure that it
 * ships a gschemas.compiled file as part of itself, and then simply do
 * the following:
 * $(DDOC_COMMENT example)
 * It's also possible that the plugin system expects the schema source
 * files (ie: .gschema.xml files) instead of a gschemas.compiled file.
 * In that case, the plugin loading system must compile the schemas for
 * itself before attempting to create the settings source.
 */
public class SettingsSchema : Boxed
{
	
	/** the main Gtk struct */
	protected GSettingsSchema* gSettingsSchema;
	
	
	public GSettingsSchema* getSettingsSchemaStruct()
	{
		return gSettingsSchema;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSettingsSchema;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSettingsSchema* gSettingsSchema)
	{
		this.gSettingsSchema = gSettingsSchema;
	}
	
	~this()
	{
		if ( Linker.isLoaded(LIBRARY.GIO) && gSettingsSchema != null)
		{
			g_settings_schema_unref(gSettingsSchema);
		}
	}
	
	/**
	 */
	
	/**
	 * Increase the reference count of schema, returning a new reference.
	 * Since 2.32
	 * Returns: a new reference to schema
	 */
	public SettingsSchema doref()
	{
		// GSettingsSchema * g_settings_schema_ref (GSettingsSchema *schema);
		auto p = g_settings_schema_ref(gSettingsSchema);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SettingsSchema)(cast(GSettingsSchema*) p);
	}
	
	/**
	 * Decrease the reference count of schema, possibly freeing it.
	 * Since 2.32
	 */
	public void unref()
	{
		// void g_settings_schema_unref (GSettingsSchema *schema);
		g_settings_schema_unref(gSettingsSchema);
	}
	
	/**
	 * Get the ID of schema.
	 * Returns: the ID. [transfer none]
	 */
	public string getId()
	{
		// const gchar * g_settings_schema_get_id (GSettingsSchema *schema);
		return Str.toString(g_settings_schema_get_id(gSettingsSchema));
	}
	
	/**
	 * Gets the path associated with schema, or NULL.
	 * Schemas may be single-instance or relocatable. Single-instance
	 * schemas correspond to exactly one set of keys in the backend
	 * database: those located at the path returned by this function.
	 * Relocatable schemas can be referenced by other schemas and can
	 * threfore describe multiple sets of keys at different locations. For
	 * relocatable schemas, this function will return NULL.
	 * Since 2.32
	 * Returns: the path of the schema, or NULL. [transfer none]
	 */
	public string getPath()
	{
		// const gchar * g_settings_schema_get_path (GSettingsSchema *schema);
		return Str.toString(g_settings_schema_get_path(gSettingsSchema));
	}
}
