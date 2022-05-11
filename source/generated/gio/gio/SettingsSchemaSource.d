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


module gio.SettingsSchemaSource;

private import gio.SettingsSchema;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * This is an opaque structure type.  You may not access it directly.
 *
 * Since: 2.32
 */
public class SettingsSchemaSource
{
	/** the main Gtk struct */
	protected GSettingsSchemaSource* gSettingsSchemaSource;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSettingsSchemaSource* getSettingsSchemaSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSettingsSchemaSource;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSettingsSchemaSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSettingsSchemaSource* gSettingsSchemaSource, bool ownedRef = false)
	{
		this.gSettingsSchemaSource = gSettingsSchemaSource;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_settings_schema_source_unref(gSettingsSchemaSource);
	}


	/** */
	public static GType getType()
	{
		return g_settings_schema_source_get_type();
	}

	/**
	 * Attempts to create a new schema source corresponding to the contents
	 * of the given directory.
	 *
	 * This function is not required for normal uses of #GSettings but it
	 * may be useful to authors of plugin management systems.
	 *
	 * The directory should contain a file called `gschemas.compiled` as
	 * produced by the [glib-compile-schemas][glib-compile-schemas] tool.
	 *
	 * If @trusted is %TRUE then `gschemas.compiled` is trusted not to be
	 * corrupted. This assumption has a performance advantage, but can result
	 * in crashes or inconsistent behaviour in the case of a corrupted file.
	 * Generally, you should set @trusted to %TRUE for files installed by the
	 * system and to %FALSE for files in the home directory.
	 *
	 * In either case, an empty file or some types of corruption in the file will
	 * result in %G_FILE_ERROR_INVAL being returned.
	 *
	 * If @parent is non-%NULL then there are two effects.
	 *
	 * First, if g_settings_schema_source_lookup() is called with the
	 * @recursive flag set to %TRUE and the schema can not be found in the
	 * source, the lookup will recurse to the parent.
	 *
	 * Second, any references to other schemas specified within this
	 * source (ie: `child` or `extends`) references may be resolved
	 * from the @parent.
	 *
	 * For this second reason, except in very unusual situations, the
	 * @parent should probably be given as the default schema source, as
	 * returned by g_settings_schema_source_get_default().
	 *
	 * Params:
	 *     directory = the filename of a directory
	 *     parent = a #GSettingsSchemaSource, or %NULL
	 *     trusted = %TRUE, if the directory is trusted
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string directory, SettingsSchemaSource parent, bool trusted)
	{
		GError* err = null;

		auto __p = g_settings_schema_source_new_from_directory(Str.toStringz(directory), (parent is null) ? null : parent.getSettingsSchemaSourceStruct(), trusted, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_directory");
		}

		this(cast(GSettingsSchemaSource*) __p);
	}

	/**
	 * Lists the schemas in a given source.
	 *
	 * If @recursive is %TRUE then include parent sources.  If %FALSE then
	 * only include the schemas from one source (ie: one directory).  You
	 * probably want %TRUE.
	 *
	 * Non-relocatable schemas are those for which you can call
	 * g_settings_new().  Relocatable schemas are those for which you must
	 * use g_settings_new_with_path().
	 *
	 * Do not call this function from normal programs.  This is designed for
	 * use by database editors, commandline tools, etc.
	 *
	 * Params:
	 *     recursive = if we should recurse
	 *     nonRelocatable = the
	 *         list of non-relocatable schemas, in no defined order
	 *     relocatable = the list
	 *         of relocatable schemas, in no defined order
	 *
	 * Since: 2.40
	 */
	public void listSchemas(bool recursive, out string[] nonRelocatable, out string[] relocatable)
	{
		char** outnonRelocatable = null;
		char** outrelocatable = null;

		g_settings_schema_source_list_schemas(gSettingsSchemaSource, recursive, &outnonRelocatable, &outrelocatable);

		nonRelocatable = Str.toStringArray(outnonRelocatable);
		relocatable = Str.toStringArray(outrelocatable);
	}

	/**
	 * Looks up a schema with the identifier @schema_id in @source.
	 *
	 * This function is not required for normal uses of #GSettings but it
	 * may be useful to authors of plugin management systems or to those who
	 * want to introspect the content of schemas.
	 *
	 * If the schema isn't found directly in @source and @recursive is %TRUE
	 * then the parent sources will also be checked.
	 *
	 * If the schema isn't found, %NULL is returned.
	 *
	 * Params:
	 *     schemaId = a schema ID
	 *     recursive = %TRUE if the lookup should be recursive
	 *
	 * Returns: a new #GSettingsSchema
	 *
	 * Since: 2.32
	 */
	public SettingsSchema lookup(string schemaId, bool recursive)
	{
		auto __p = g_settings_schema_source_lookup(gSettingsSchemaSource, Str.toStringz(schemaId), recursive);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchema)(cast(GSettingsSchema*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of @source, returning a new reference.
	 *
	 * Returns: a new reference to @source
	 *
	 * Since: 2.32
	 */
	public SettingsSchemaSource ref_()
	{
		auto __p = g_settings_schema_source_ref(gSettingsSchemaSource);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchemaSource)(cast(GSettingsSchemaSource*) __p, true);
	}

	/**
	 * Decrease the reference count of @source, possibly freeing it.
	 *
	 * Since: 2.32
	 */
	public void unref()
	{
		g_settings_schema_source_unref(gSettingsSchemaSource);
	}

	/**
	 * Gets the default system schema source.
	 *
	 * This function is not required for normal uses of #GSettings but it
	 * may be useful to authors of plugin management systems or to those who
	 * want to introspect the content of schemas.
	 *
	 * If no schemas are installed, %NULL will be returned.
	 *
	 * The returned source may actually consist of multiple schema sources
	 * from different directories, depending on which directories were given
	 * in `XDG_DATA_DIRS` and `GSETTINGS_SCHEMA_DIR`. For this reason, all
	 * lookups performed against the default source should probably be done
	 * recursively.
	 *
	 * Returns: the default schema source
	 *
	 * Since: 2.32
	 */
	public static SettingsSchemaSource getDefault()
	{
		auto __p = g_settings_schema_source_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchemaSource)(cast(GSettingsSchemaSource*) __p);
	}
}
