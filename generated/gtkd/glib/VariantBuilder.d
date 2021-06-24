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


module glib.VariantBuilder;

private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import glib.c.functions;
public  import glib.c.types;


/**
 * A utility type for constructing container-type #GVariant instances.
 * 
 * This is an opaque structure and may only be accessed using the
 * following functions.
 * 
 * #GVariantBuilder is not threadsafe in any way.  Do not attempt to
 * access it from more than one thread.
 */
public class VariantBuilder
{
	/** the main Gtk struct */
	protected GVariantBuilder* gVariantBuilder;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GVariantBuilder* getVariantBuilderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gVariantBuilder;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gVariantBuilder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GVariantBuilder* gVariantBuilder, bool ownedRef = false)
	{
		this.gVariantBuilder = gVariantBuilder;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_variant_builder_unref(gVariantBuilder);
	}


	/**
	 * Allocates and initialises a new #GVariantBuilder.
	 *
	 * You should call g_variant_builder_unref() on the return value when it
	 * is no longer needed.  The memory will not be automatically freed by
	 * any other call.
	 *
	 * In most cases it is easier to place a #GVariantBuilder directly on
	 * the stack of the calling function and initialise it with
	 * g_variant_builder_init().
	 *
	 * Params:
	 *     type = a container type
	 *
	 * Returns: a #GVariantBuilder
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VariantType type)
	{
		auto __p = g_variant_builder_new((type is null) ? null : type.getVariantTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GVariantBuilder*) __p);
	}

	/**
	 * Adds @value to @builder.
	 *
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed.  Some examples of this are
	 * putting different types of items into an array, putting the wrong
	 * types or number of items in a tuple, putting more than one value into
	 * a variant, etc.
	 *
	 * If @value is a floating reference (see g_variant_ref_sink()),
	 * the @builder instance takes ownership of @value.
	 *
	 * Params:
	 *     value = a #GVariant
	 *
	 * Since: 2.24
	 */
	public void addValue(Variant value)
	{
		g_variant_builder_add_value(gVariantBuilder, (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Releases all memory associated with a #GVariantBuilder without
	 * freeing the #GVariantBuilder structure itself.
	 *
	 * It typically only makes sense to do this on a stack-allocated
	 * #GVariantBuilder if you want to abort building the value part-way
	 * through.  This function need not be called if you call
	 * g_variant_builder_end() and it also doesn't need to be called on
	 * builders allocated with g_variant_builder_new() (see
	 * g_variant_builder_unref() for that).
	 *
	 * This function leaves the #GVariantBuilder structure set to all-zeros.
	 * It is valid to call this function on either an initialised
	 * #GVariantBuilder or one that is set to all-zeros but it is not valid
	 * to call this function on uninitialised memory.
	 *
	 * Since: 2.24
	 */
	public void clear()
	{
		g_variant_builder_clear(gVariantBuilder);
	}

	/**
	 * Closes the subcontainer inside the given @builder that was opened by
	 * the most recent call to g_variant_builder_open().
	 *
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed (ie: too few values added to the
	 * subcontainer).
	 *
	 * Since: 2.24
	 */
	public void close()
	{
		g_variant_builder_close(gVariantBuilder);
	}

	/**
	 * Ends the builder process and returns the constructed value.
	 *
	 * It is not permissible to use @builder in any way after this call
	 * except for reference counting operations (in the case of a
	 * heap-allocated #GVariantBuilder) or by reinitialising it with
	 * g_variant_builder_init() (in the case of stack-allocated). This
	 * means that for the stack-allocated builders there is no need to
	 * call g_variant_builder_clear() after the call to
	 * g_variant_builder_end().
	 *
	 * It is an error to call this function in any way that would create an
	 * inconsistent value to be constructed (ie: insufficient number of
	 * items added to a container with a specific number of children
	 * required).  It is also an error to call this function if the builder
	 * was created with an indefinite array or maybe type and no children
	 * have been added; in this case it is impossible to infer the type of
	 * the empty array.
	 *
	 * Returns: a new, floating, #GVariant
	 *
	 * Since: 2.24
	 */
	public Variant end()
	{
		auto __p = g_variant_builder_end(gVariantBuilder);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Initialises a #GVariantBuilder structure.
	 *
	 * @type must be non-%NULL.  It specifies the type of container to
	 * construct.  It can be an indefinite type such as
	 * %G_VARIANT_TYPE_ARRAY or a definite type such as "as" or "(ii)".
	 * Maybe, array, tuple, dictionary entry and variant-typed values may be
	 * constructed.
	 *
	 * After the builder is initialised, values are added using
	 * g_variant_builder_add_value() or g_variant_builder_add().
	 *
	 * After all the child values are added, g_variant_builder_end() frees
	 * the memory associated with the builder and returns the #GVariant that
	 * was created.
	 *
	 * This function completely ignores the previous contents of @builder.
	 * On one hand this means that it is valid to pass in completely
	 * uninitialised memory.  On the other hand, this means that if you are
	 * initialising over top of an existing #GVariantBuilder you need to
	 * first call g_variant_builder_clear() in order to avoid leaking
	 * memory.
	 *
	 * You must not call g_variant_builder_ref() or
	 * g_variant_builder_unref() on a #GVariantBuilder that was initialised
	 * with this function.  If you ever pass a reference to a
	 * #GVariantBuilder outside of the control of your own code then you
	 * should assume that the person receiving that reference may try to use
	 * reference counting; you should use g_variant_builder_new() instead of
	 * this function.
	 *
	 * Params:
	 *     type = a container type
	 *
	 * Since: 2.24
	 */
	public void init(VariantType type)
	{
		g_variant_builder_init(gVariantBuilder, (type is null) ? null : type.getVariantTypeStruct());
	}

	/**
	 * Opens a subcontainer inside the given @builder.  When done adding
	 * items to the subcontainer, g_variant_builder_close() must be called. @type
	 * is the type of the container: so to build a tuple of several values, @type
	 * must include the tuple itself.
	 *
	 * It is an error to call this function in any way that would cause an
	 * inconsistent value to be constructed (ie: adding too many values or
	 * a value of an incorrect type).
	 *
	 * Example of building a nested variant:
	 * |[<!-- language="C" -->
	 * GVariantBuilder builder;
	 * guint32 some_number = get_number ();
	 * g_autoptr (GHashTable) some_dict = get_dict ();
	 * GHashTableIter iter;
	 * const gchar *key;
	 * const GVariant *value;
	 * g_autoptr (GVariant) output = NULL;
	 *
	 * g_variant_builder_init (&builder, G_VARIANT_TYPE ("(ua{sv})"));
	 * g_variant_builder_add (&builder, "u", some_number);
	 * g_variant_builder_open (&builder, G_VARIANT_TYPE ("a{sv}"));
	 *
	 * g_hash_table_iter_init (&iter, some_dict);
	 * while (g_hash_table_iter_next (&iter, (gpointer *) &key, (gpointer *) &value))
	 * {
	 * g_variant_builder_open (&builder, G_VARIANT_TYPE ("{sv}"));
	 * g_variant_builder_add (&builder, "s", key);
	 * g_variant_builder_add (&builder, "v", value);
	 * g_variant_builder_close (&builder);
	 * }
	 *
	 * g_variant_builder_close (&builder);
	 *
	 * output = g_variant_builder_end (&builder);
	 * ]|
	 *
	 * Params:
	 *     type = the #GVariantType of the container
	 *
	 * Since: 2.24
	 */
	public void open(VariantType type)
	{
		g_variant_builder_open(gVariantBuilder, (type is null) ? null : type.getVariantTypeStruct());
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on @builder.
	 *
	 * Don't call this on stack-allocated #GVariantBuilder instances or bad
	 * things will happen.
	 *
	 * Returns: a new reference to @builder
	 *
	 * Since: 2.24
	 */
	public VariantBuilder ref_()
	{
		auto __p = g_variant_builder_ref(gVariantBuilder);

		if(__p is null)
		{
			return null;
		}

		return new VariantBuilder(cast(GVariantBuilder*) __p, true);
	}

	/**
	 * Decreases the reference count on @builder.
	 *
	 * In the event that there are no more references, releases all memory
	 * associated with the #GVariantBuilder.
	 *
	 * Don't call this on stack-allocated #GVariantBuilder instances or bad
	 * things will happen.
	 *
	 * Since: 2.24
	 */
	public void unref()
	{
		g_variant_builder_unref(gVariantBuilder);
	}
}
