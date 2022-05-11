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


module gdk.ContentFormats;

private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;


/**
 * The `GdkContentFormats` structure is used to advertise and negotiate the
 * format of content.
 * 
 * You will encounter `GdkContentFormats` when interacting with objects
 * controlling operations that pass data between different widgets, window
 * or application, like [class@Gdk.Drag], [class@Gdk.Drop],
 * [class@Gdk.Clipboard] or [class@Gdk.ContentProvider].
 * 
 * GDK supports content in 2 forms: `GType` and mime type.
 * Using `GTypes` is meant only for in-process content transfers. Mime types
 * are meant to be used for data passing both in-process and out-of-process.
 * The details of how data is passed is described in the documentation of
 * the actual implementations. To transform between the two forms,
 * [class@Gdk.ContentSerializer] and [class@Gdk.ContentDeserializer] are used.
 * 
 * A `GdkContentFormats` describes a set of possible formats content can be
 * exchanged in. It is assumed that this set is ordered. `GTypes` are more
 * important than mime types. Order between different `GTypes` or mime types
 * is the order they were added in, most important first. Functions that
 * care about order, such as [method@Gdk.ContentFormats.union], will describe
 * in their documentation how they interpret that order, though in general the
 * order of the first argument is considered the primary order of the result,
 * followed by the order of further arguments.
 * 
 * For debugging purposes, the function [method@Gdk.ContentFormats.to_string]
 * exists. It will print a comma-separated list of formats from most important
 * to least important.
 * 
 * `GdkContentFormats` is an immutable struct. After creation, you cannot change
 * the types it represents. Instead, new `GdkContentFormats` have to be created.
 * The [struct@Gdk.ContentFormatsBuilder] structure is meant to help in this
 * endeavor.
 */
public class ContentFormats
{
	/** the main Gtk struct */
	protected GdkContentFormats* gdkContentFormats;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkContentFormats* getContentFormatsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkContentFormats;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkContentFormats;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkContentFormats* gdkContentFormats, bool ownedRef = false)
	{
		this.gdkContentFormats = gdkContentFormats;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GDK[0]) && ownedRef )
			gdk_content_formats_unref(gdkContentFormats);
	}


	/** */
	public static GType getType()
	{
		return gdk_content_formats_get_type();
	}

	/**
	 * Creates a new `GdkContentFormats` from an array of mime types.
	 *
	 * The mime types must be valid and different from each other or the
	 * behavior of the return value is undefined. If you cannot guarantee
	 * this, use [struct@Gdk.ContentFormatsBuilder] instead.
	 *
	 * Params:
	 *     mimeTypes = Pointer to an
	 *         array of mime types
	 *
	 * Returns: the new `GdkContentFormats`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] mimeTypes)
	{
		auto __p = gdk_content_formats_new(Str.toStringzArray(mimeTypes), cast(uint)mimeTypes.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkContentFormats*) __p);
	}

	/**
	 * Creates a new `GdkContentFormats` for a given `GType`.
	 *
	 * Params:
	 *     type = a `GType`
	 *
	 * Returns: a new `GdkContentFormats`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType type)
	{
		auto __p = gdk_content_formats_new_for_gtype(type);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_gtype");
		}

		this(cast(GdkContentFormats*) __p);
	}

	/**
	 * Checks if a given `GType` is part of the given @formats.
	 *
	 * Params:
	 *     type = the `GType` to search for
	 *
	 * Returns: %TRUE if the `GType` was found
	 */
	public bool containGtype(GType type)
	{
		return gdk_content_formats_contain_gtype(gdkContentFormats, type) != 0;
	}

	/**
	 * Checks if a given mime type is part of the given @formats.
	 *
	 * Params:
	 *     mimeType = the mime type to search for
	 *
	 * Returns: %TRUE if the mime_type was found
	 */
	public bool containMimeType(string mimeType)
	{
		return gdk_content_formats_contain_mime_type(gdkContentFormats, Str.toStringz(mimeType)) != 0;
	}

	/**
	 * Gets the `GType`s included in @formats.
	 *
	 * Note that @formats may not contain any `GType`s, in particular when
	 * they are empty. In that case %NULL will be returned.
	 *
	 * Returns: %G_TYPE_INVALID-terminated array of types included in @formats
	 */
	public GType[] getGtypes()
	{
		size_t nGtypes;

		auto __p = gdk_content_formats_get_gtypes(gdkContentFormats, &nGtypes);

		return __p[0 .. nGtypes];
	}

	/**
	 * Gets the mime types included in @formats.
	 *
	 * Note that @formats may not contain any mime types, in particular
	 * when they are empty. In that case %NULL will be returned.
	 *
	 * Returns: %NULL-terminated array of interned strings of mime types included
	 *     in @formats
	 */
	public string[] getMimeTypes()
	{
		size_t nMimeTypes;

		return Str.toStringArray(gdk_content_formats_get_mime_types(gdkContentFormats, &nMimeTypes));
	}

	/**
	 * Checks if @first and @second have any matching formats.
	 *
	 * Params:
	 *     second = the `GdkContentFormats` to intersect with
	 *
	 * Returns: %TRUE if a matching format was found.
	 */
	public bool match(ContentFormats second)
	{
		return gdk_content_formats_match(gdkContentFormats, (second is null) ? null : second.getContentFormatsStruct()) != 0;
	}

	/**
	 * Finds the first `GType` from @first that is also contained
	 * in @second.
	 *
	 * If no matching `GType` is found, %G_TYPE_INVALID is returned.
	 *
	 * Params:
	 *     second = the `GdkContentFormats` to intersect with
	 *
	 * Returns: The first common `GType` or %G_TYPE_INVALID if none.
	 */
	public GType matchGtype(ContentFormats second)
	{
		return gdk_content_formats_match_gtype(gdkContentFormats, (second is null) ? null : second.getContentFormatsStruct());
	}

	/**
	 * Finds the first mime type from @first that is also contained
	 * in @second.
	 *
	 * If no matching mime type is found, %NULL is returned.
	 *
	 * Params:
	 *     second = the `GdkContentFormats` to intersect with
	 *
	 * Returns: The first common mime type or %NULL if none
	 */
	public string matchMimeType(ContentFormats second)
	{
		return Str.toString(gdk_content_formats_match_mime_type(gdkContentFormats, (second is null) ? null : second.getContentFormatsStruct()));
	}

	/**
	 * Prints the given @formats into a string for human consumption.
	 *
	 * The result of this function can later be parsed with
	 * [func@Gdk.ContentFormats.parse].
	 *
	 * Params:
	 *     string_ = a `GString` to print into
	 */
	public void print(StringG string_)
	{
		gdk_content_formats_print(gdkContentFormats, (string_ is null) ? null : string_.getStringGStruct());
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of a `GdkContentFormats` by one.
	 *
	 * Returns: the passed in `GdkContentFormats`.
	 */
	public ContentFormats ref_()
	{
		auto __p = gdk_content_formats_ref(gdkContentFormats);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Prints the given @formats into a human-readable string.
	 *
	 * The resulting string can be parsed with [func@Gdk.ContentFormats.parse].
	 *
	 * This is a small wrapper around [method@Gdk.ContentFormats.print]
	 * to help when debugging.
	 *
	 * Returns: a new string
	 */
	public override string toString()
	{
		auto retStr = gdk_content_formats_to_string(gdkContentFormats);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	alias unio = union_;
	/**
	 * Append all missing types from @second to @first, in the order
	 * they had in @second.
	 *
	 * Params:
	 *     second = the `GdkContentFormats` to merge from
	 *
	 * Returns: a new `GdkContentFormats`
	 */
	public ContentFormats union_(ContentFormats second)
	{
		auto __p = gdk_content_formats_union(gdkContentFormats, (second is null) ? null : second.getContentFormatsStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Add GTypes for mime types in @formats for which deserializers are
	 * registered.
	 *
	 * Returns: a new `GdkContentFormats`
	 */
	public ContentFormats unionDeserializeGtypes()
	{
		auto __p = gdk_content_formats_union_deserialize_gtypes(gdkContentFormats);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Add mime types for GTypes in @formats for which deserializers are
	 * registered.
	 *
	 * Returns: a new `GdkContentFormats`
	 */
	public ContentFormats unionDeserializeMimeTypes()
	{
		auto __p = gdk_content_formats_union_deserialize_mime_types(gdkContentFormats);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Add GTypes for the mime types in @formats for which serializers are
	 * registered.
	 *
	 * Returns: a new `GdkContentFormats`
	 */
	public ContentFormats unionSerializeGtypes()
	{
		auto __p = gdk_content_formats_union_serialize_gtypes(gdkContentFormats);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Add mime types for GTypes in @formats for which serializers are
	 * registered.
	 *
	 * Returns: a new `GdkContentFormats`
	 */
	public ContentFormats unionSerializeMimeTypes()
	{
		auto __p = gdk_content_formats_union_serialize_mime_types(gdkContentFormats);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Decreases the reference count of a `GdkContentFormats` by one.
	 *
	 * If the resulting reference count is zero, frees the formats.
	 */
	public void unref()
	{
		gdk_content_formats_unref(gdkContentFormats);
	}

	/**
	 * Parses the given @string into `GdkContentFormats` and
	 * returns the formats.
	 *
	 * Strings printed via [method@Gdk.ContentFormats.to_string]
	 * can be read in again successfully using this function.
	 *
	 * If @string does not describe valid content formats, %NULL
	 * is returned.
	 *
	 * Params:
	 *     string_ = the string to parse
	 *
	 * Returns: the content formats if @string is valid
	 *
	 * Since: 4.4
	 */
	public static ContentFormats parse(string string_)
	{
		auto __p = gdk_content_formats_parse(Str.toStringz(string_));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}
}
