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


module gdk.ContentFormatsBuilder;

private import gdk.ContentFormats;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A `GdkContentFormatsBuilder` is an auxiliary struct used to create
 * new `GdkContentFormats`, and should not be kept around.
 */
public class ContentFormatsBuilder
{
	/** the main Gtk struct */
	protected GdkContentFormatsBuilder* gdkContentFormatsBuilder;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkContentFormatsBuilder* getContentFormatsBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkContentFormatsBuilder;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkContentFormatsBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkContentFormatsBuilder* gdkContentFormatsBuilder, bool ownedRef = false)
	{
		this.gdkContentFormatsBuilder = gdkContentFormatsBuilder;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			gdk_content_formats_builder_unref(gdkContentFormatsBuilder);
	}


	/** */
	public static GType getType()
	{
		return gdk_content_formats_builder_get_type();
	}

	/**
	 * Create a new `GdkContentFormatsBuilder` object.
	 *
	 * The resulting builder would create an empty `GdkContentFormats`.
	 * Use addition functions to add types to it.
	 *
	 * Returns: a new `GdkContentFormatsBuilder`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gdk_content_formats_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkContentFormatsBuilder*) __p);
	}

	/**
	 * Appends all formats from @formats to @builder, skipping those that
	 * already exist.
	 *
	 * Params:
	 *     formats = the formats to add
	 */
	public void addFormats(ContentFormats formats)
	{
		gdk_content_formats_builder_add_formats(gdkContentFormatsBuilder, (formats is null) ? null : formats.getContentFormatsStruct());
	}

	/**
	 * Appends @type to @builder if it has not already been added.
	 *
	 * Params:
	 *     type = a `GType`
	 */
	public void addGtype(GType type)
	{
		gdk_content_formats_builder_add_gtype(gdkContentFormatsBuilder, type);
	}

	/**
	 * Appends @mime_type to @builder if it has not already been added.
	 *
	 * Params:
	 *     mimeType = a mime type
	 */
	public void addMimeType(string mimeType)
	{
		gdk_content_formats_builder_add_mime_type(gdkContentFormatsBuilder, Str.toStringz(mimeType));
	}

	/**
	 * Creates a new `GdkContentFormats` from the current state of the
	 * given @builder, and frees the @builder instance.
	 *
	 * Returns: the newly created `GdkContentFormats`
	 *     with all the formats added to @builder
	 */
	public ContentFormats freeToFormats()
	{
		auto __p = gdk_content_formats_builder_free_to_formats(gdkContentFormatsBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given @builder.
	 *
	 * This function is intended primarily for bindings.
	 * `GdkContentFormatsBuilder` objects should not be kept around.
	 *
	 * Returns: the given `GdkContentFormatsBuilder`
	 *     with its reference count increased
	 */
	public ContentFormatsBuilder ref_()
	{
		auto __p = gdk_content_formats_builder_ref(gdkContentFormatsBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormatsBuilder)(cast(GdkContentFormatsBuilder*) __p);
	}

	/**
	 * Creates a new `GdkContentFormats` from the given @builder.
	 *
	 * The given `GdkContentFormatsBuilder` is reset once this function returns;
	 * you cannot call this function multiple times on the same @builder instance.
	 *
	 * This function is intended primarily for bindings. C code should use
	 * [method@Gdk.ContentFormatsBuilder.free_to_formats].
	 *
	 * Returns: the newly created `GdkContentFormats`
	 *     with all the formats added to @builder
	 */
	public ContentFormats toFormats()
	{
		auto __p = gdk_content_formats_builder_to_formats(gdkContentFormatsBuilder);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Releases a reference on the given @builder.
	 */
	public void unref()
	{
		gdk_content_formats_builder_unref(gdkContentFormatsBuilder);
	}
}
