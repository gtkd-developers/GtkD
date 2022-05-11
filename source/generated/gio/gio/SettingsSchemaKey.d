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


module gio.SettingsSchemaKey;

private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * #GSettingsSchemaKey is an opaque data structure and can only be accessed
 * using the following functions.
 */
public class SettingsSchemaKey
{
	/** the main Gtk struct */
	protected GSettingsSchemaKey* gSettingsSchemaKey;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSettingsSchemaKey* getSettingsSchemaKeyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSettingsSchemaKey;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSettingsSchemaKey;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSettingsSchemaKey* gSettingsSchemaKey, bool ownedRef = false)
	{
		this.gSettingsSchemaKey = gSettingsSchemaKey;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GIO[0]) && ownedRef )
			g_settings_schema_key_unref(gSettingsSchemaKey);
	}


	/** */
	public static GType getType()
	{
		return g_settings_schema_key_get_type();
	}

	/**
	 * Gets the default value for @key.
	 *
	 * Note that this is the default value according to the schema.  System
	 * administrator defaults and lockdown are not visible via this API.
	 *
	 * Returns: the default value for the key
	 *
	 * Since: 2.40
	 */
	public Variant getDefaultValue()
	{
		auto __p = g_settings_schema_key_get_default_value(gSettingsSchemaKey);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the description for @key.
	 *
	 * If no description has been provided in the schema for @key, returns
	 * %NULL.
	 *
	 * The description can be one sentence to several paragraphs in length.
	 * Paragraphs are delimited with a double newline.  Descriptions can be
	 * translated and the value returned from this function is is the
	 * current locale.
	 *
	 * This function is slow.  The summary and description information for
	 * the schemas is not stored in the compiled schema database so this
	 * function has to parse all of the source XML files in the schema
	 * directory.
	 *
	 * Returns: the description for @key, or %NULL
	 *
	 * Since: 2.34
	 */
	public string getDescription()
	{
		return Str.toString(g_settings_schema_key_get_description(gSettingsSchemaKey));
	}

	/**
	 * Gets the name of @key.
	 *
	 * Returns: the name of @key.
	 *
	 * Since: 2.44
	 */
	public string getName()
	{
		return Str.toString(g_settings_schema_key_get_name(gSettingsSchemaKey));
	}

	/**
	 * Queries the range of a key.
	 *
	 * This function will return a #GVariant that fully describes the range
	 * of values that are valid for @key.
	 *
	 * The type of #GVariant returned is `(sv)`. The string describes
	 * the type of range restriction in effect. The type and meaning of
	 * the value contained in the variant depends on the string.
	 *
	 * If the string is `'type'` then the variant contains an empty array.
	 * The element type of that empty array is the expected type of value
	 * and all values of that type are valid.
	 *
	 * If the string is `'enum'` then the variant contains an array
	 * enumerating the possible values. Each item in the array is
	 * a possible valid value and no other values are valid.
	 *
	 * If the string is `'flags'` then the variant contains an array. Each
	 * item in the array is a value that may appear zero or one times in an
	 * array to be used as the value for this key. For example, if the
	 * variant contained the array `['x', 'y']` then the valid values for
	 * the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
	 * `['y', 'x']`.
	 *
	 * Finally, if the string is `'range'` then the variant contains a pair
	 * of like-typed values -- the minimum and maximum permissible values
	 * for this key.
	 *
	 * This information should not be used by normal programs.  It is
	 * considered to be a hint for introspection purposes.  Normal programs
	 * should already know what is permitted by their own schema.  The
	 * format may change in any way in the future -- but particularly, new
	 * forms may be added to the possibilities described above.
	 *
	 * You should free the returned value with g_variant_unref() when it is
	 * no longer needed.
	 *
	 * Returns: a #GVariant describing the range
	 *
	 * Since: 2.40
	 */
	public Variant getRange()
	{
		auto __p = g_settings_schema_key_get_range(gSettingsSchemaKey);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the summary for @key.
	 *
	 * If no summary has been provided in the schema for @key, returns
	 * %NULL.
	 *
	 * The summary is a short description of the purpose of the key; usually
	 * one short sentence.  Summaries can be translated and the value
	 * returned from this function is is the current locale.
	 *
	 * This function is slow.  The summary and description information for
	 * the schemas is not stored in the compiled schema database so this
	 * function has to parse all of the source XML files in the schema
	 * directory.
	 *
	 * Returns: the summary for @key, or %NULL
	 *
	 * Since: 2.34
	 */
	public string getSummary()
	{
		return Str.toString(g_settings_schema_key_get_summary(gSettingsSchemaKey));
	}

	/**
	 * Gets the #GVariantType of @key.
	 *
	 * Returns: the type of @key
	 *
	 * Since: 2.40
	 */
	public VariantType getValueType()
	{
		auto __p = g_settings_schema_key_get_value_type(gSettingsSchemaKey);

		if(__p is null)
		{
			return null;
		}

		return new VariantType(cast(GVariantType*) __p);
	}

	/**
	 * Checks if the given @value is within the
	 * permitted range for @key.
	 *
	 * It is a programmer error if @value is not of the correct type — you
	 * must check for this first.
	 *
	 * Params:
	 *     value = the value to check
	 *
	 * Returns: %TRUE if @value is valid for @key
	 *
	 * Since: 2.40
	 */
	public bool rangeCheck(Variant value)
	{
		return g_settings_schema_key_range_check(gSettingsSchemaKey, (value is null) ? null : value.getVariantStruct()) != 0;
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of @key, returning a new reference.
	 *
	 * Returns: a new reference to @key
	 *
	 * Since: 2.40
	 */
	public SettingsSchemaKey ref_()
	{
		auto __p = g_settings_schema_key_ref(gSettingsSchemaKey);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SettingsSchemaKey)(cast(GSettingsSchemaKey*) __p, true);
	}

	/**
	 * Decrease the reference count of @key, possibly freeing it.
	 *
	 * Since: 2.40
	 */
	public void unref()
	{
		g_settings_schema_key_unref(gSettingsSchemaKey);
	}
}
