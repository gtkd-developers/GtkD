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


module glib.StrvBuilder;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * #GStrvBuilder is a method of easily building dynamically sized
 * NULL-terminated string arrays.
 * 
 * The following example shows how to build a two element array:
 * 
 * |[<!-- language="C" -->
 * g_autoptr(GStrvBuilder) builder = g_strv_builder_new ();
 * g_strv_builder_add (builder, "hello");
 * g_strv_builder_add (builder, "world");
 * g_auto(GStrv) array = g_strv_builder_end (builder);
 * ]|
 *
 * Since: 2.68
 */
public class StrvBuilder
{
	/** the main Gtk struct */
	protected GStrvBuilder* gStrvBuilder;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GStrvBuilder* getStrvBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gStrvBuilder;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gStrvBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GStrvBuilder* gStrvBuilder, bool ownedRef = false)
	{
		this.gStrvBuilder = gStrvBuilder;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_strv_builder_unref(gStrvBuilder);
	}


	/**
	 * Add a string to the end of the array.
	 *
	 * Since 2.68
	 *
	 * Params:
	 *     value = a string.
	 */
	public void add(string value)
	{
		g_strv_builder_add(gStrvBuilder, Str.toStringz(value));
	}

	/**
	 * Appends all the strings in the given vector to the builder.
	 *
	 * Since 2.70
	 *
	 * Params:
	 *     value = the vector of strings to add
	 */
	public void addv(string[] value)
	{
		g_strv_builder_addv(gStrvBuilder, Str.toStringzArray(value));
	}

	/**
	 * Ends the builder process and returns the constructed NULL-terminated string
	 * array. The returned value should be freed with g_strfreev() when no longer
	 * needed.
	 *
	 * Returns: the constructed string array.
	 *
	 *     Since 2.68
	 */
	public string[] end()
	{
		auto retStr = g_strv_builder_end(gStrvBuilder);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @builder by one.
	 * This function is thread-safe and may be called from any thread.
	 *
	 * Returns: The passed in #GStrvBuilder
	 *
	 * Since: 2.68
	 */
	public StrvBuilder ref_()
	{
		auto __p = g_strv_builder_ref(gStrvBuilder);

		if(__p is null)
		{
			return null;
		}

		return new StrvBuilder(cast(GStrvBuilder*) __p, true);
	}

	/**
	 * Decreases the reference count on @builder.
	 *
	 * In the event that there are no more references, releases all memory
	 * associated with the #GStrvBuilder.
	 *
	 * Since: 2.68
	 */
	public void unref()
	{
		g_strv_builder_unref(gStrvBuilder);
	}

	/**
	 * Creates a new #GStrvBuilder with a reference count of 1.
	 * Use g_strv_builder_unref() on the returned value when no longer needed.
	 *
	 * Returns: the new #GStrvBuilder
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_strv_builder_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GStrvBuilder*) __p);
	}
}
