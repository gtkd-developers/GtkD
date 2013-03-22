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
 * inFile  = 
 * outPack = gio
 * outFile = SettingsSchemaSource
 * strct   = GSettingsSchemaSource
 * realStrct=
 * ctorStrct=
 * clss    = SettingsSchemaSource
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_settings_schema_source_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.SettingsSchema
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GSettingsSchema* -> SettingsSchema
 * 	- GSettingsSchemaSource* -> SettingsSchemaSource
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SettingsSchemaSource;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.SettingsSchema;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * The GSettingsSchemaSource and GSettingsSchema APIs provide a
 * mechanism for advanced control over the loading of schemas and a
 * mechanism for introspecting their content.
 *
 * Plugin loading systems that wish to provide plugins a way to access
 * settings face the problem of how to make the schemas for these
 * settings visible to GSettings. Typically, a plugin will want to ship
 * the schema along with itself and it won't be installed into the
 * standard system directories for schemas.
 *
 * GSettingsSchemaSource provides a mechanism for dealing with this by
 * allowing the creation of a new 'schema source' from which schemas can
 * be acquired. This schema source can then become part of the metadata
 * associated with the plugin and queried whenever the plugin requires
 * access to some settings.
 *
 * Consider the following example:
 *
 * $(DDOC_COMMENT example)
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
 * $(DDOC_COMMENT example)
 *
 * It's also possible that the plugin system expects the schema source
 * files (ie: .gschema.xml files) instead of a gschemas.compiled file.
 * In that case, the plugin loading system must compile the schemas for
 * itself before attempting to create the settings source.
 */
public class SettingsSchemaSource
{
	
	/** the main Gtk struct */
	protected GSettingsSchemaSource* gSettingsSchemaSource;
	
	
	public GSettingsSchemaSource* getSettingsSchemaSourceStruct()
	{
		return gSettingsSchemaSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSettingsSchemaSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSettingsSchemaSource* gSettingsSchemaSource)
	{
		this.gSettingsSchemaSource = gSettingsSchemaSource;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GTK) && gSettingsSchemaSource !is null )
		{
			g_settings_schema_source_unref(gSettingsSchemaSource);
		}
	}
	
	/**
	 */
	
	/**
	 * Gets the default system schema source.
	 * This function is not required for normal uses of GSettings but it
	 * may be useful to authors of plugin management systems or to those who
	 * want to introspect the content of schemas.
	 * If no schemas are installed, NULL will be returned.
	 * The returned source may actually consist of multiple schema sources
	 * from different directories, depending on which directories were given
	 * in XDG_DATA_DIRS and
	 * GSETTINGS_SCHEMA_DIR. For this reason, all lookups
	 * performed against the default source should probably be done
	 * recursively.
	 * Since 2.32
	 * Returns: the default schema source. [transfer none]
	 */
	public static SettingsSchemaSource getDefault()
	{
		// GSettingsSchemaSource * g_settings_schema_source_get_default  (void);
		auto p = g_settings_schema_source_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SettingsSchemaSource)(cast(GSettingsSchemaSource*) p);
	}
	
	/**
	 * Increase the reference count of source, returning a new reference.
	 * Since 2.32
	 * Returns: a new reference to source
	 */
	public SettingsSchemaSource doref()
	{
		// GSettingsSchemaSource * g_settings_schema_source_ref (GSettingsSchemaSource *source);
		auto p = g_settings_schema_source_ref(gSettingsSchemaSource);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SettingsSchemaSource)(cast(GSettingsSchemaSource*) p);
	}
	
	/**
	 * Decrease the reference count of source, possibly freeing it.
	 * Since 2.32
	 */
	public void unref()
	{
		// void g_settings_schema_source_unref (GSettingsSchemaSource *source);
		g_settings_schema_source_unref(gSettingsSchemaSource);
	}
	
	/**
	 * Attempts to create a new schema source corresponding to the contents
	 * of the given directory.
	 * This function is not required for normal uses of GSettings but it
	 * may be useful to authors of plugin management systems.
	 * The directory should contain a file called
	 * gschemas.compiled as produced by
	 * glib-compile-schemas.
	 * If trusted is TRUE then gschemas.compiled is
	 * trusted not to be corrupted. This assumption has a performance
	 * advantage, but can result in crashes or inconsistent behaviour in the
	 * case of a corrupted file. Generally, you should set trusted to
	 * TRUE for files installed by the system and to FALSE for files in
	 * the home directory.
	 * If parent is non-NULL then there are two effects.
	 * First, if g_settings_schema_source_lookup() is called with the
	 * recursive flag set to TRUE and the schema can not be found in the
	 * source, the lookup will recurse to the parent.
	 * Second, any references to other schemas specified within this
	 * source (ie: child or extends)
	 * references may be resolved from the parent.
	 * For this second reason, except in very unusual situations, the
	 * parent should probably be given as the default schema source, as
	 * returned by g_settings_schema_source_get_default().
	 * Since 2.32
	 * Params:
	 * directory = the filename of a directory
	 * parent = a GSettingsSchemaSource, or NULL. [allow-none]
	 * trusted = TRUE, if the directory is trusted
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string directory, SettingsSchemaSource parent, int trusted)
	{
		// GSettingsSchemaSource * g_settings_schema_source_new_from_directory  (const gchar *directory,  GSettingsSchemaSource *parent,  gboolean trusted,  GError **error);
		GError* err = null;
		
		auto p = g_settings_schema_source_new_from_directory(Str.toStringz(directory), (parent is null) ? null : parent.getSettingsSchemaSourceStruct(), trusted, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_settings_schema_source_new_from_directory(Str.toStringz(directory), (parent is null) ? null : parent.getSettingsSchemaSourceStruct(), trusted, &err)");
		}
		this(cast(GSettingsSchemaSource*) p);
	}
	
	/**
	 * Looks up a schema with the identifier schema_id in source.
	 * This function is not required for normal uses of GSettings but it
	 * may be useful to authors of plugin management systems or to those who
	 * want to introspect the content of schemas.
	 * If the schema isn't found directly in source and recursive is TRUE
	 * then the parent sources will also be checked.
	 * If the schema isn't found, NULL is returned.
	 * Since 2.32
	 * Params:
	 * schemaId = a schema ID
	 * recursive = TRUE if the lookup should be recursive
	 * Returns: a new GSettingsSchema. [transfer full]
	 */
	public SettingsSchema lookup(string schemaId, int recursive)
	{
		// GSettingsSchema * g_settings_schema_source_lookup (GSettingsSchemaSource *source,  const gchar *schema_id,  gboolean recursive);
		auto p = g_settings_schema_source_lookup(gSettingsSchemaSource, Str.toStringz(schemaId), recursive);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SettingsSchema)(cast(GSettingsSchema*) p);
	}
}
