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


module glib.VariantDict;

private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import glib.c.functions;
public  import glib.c.types;


/**
 * #GVariantDict is a mutable interface to #GVariant dictionaries.
 * 
 * It can be used for doing a sequence of dictionary lookups in an
 * efficient way on an existing #GVariant dictionary or it can be used
 * to construct new dictionaries with a hashtable-like interface.  It
 * can also be used for taking existing dictionaries and modifying them
 * in order to create new ones.
 * 
 * #GVariantDict can only be used with %G_VARIANT_TYPE_VARDICT
 * dictionaries.
 * 
 * It is possible to use #GVariantDict allocated on the stack or on the
 * heap.  When using a stack-allocated #GVariantDict, you begin with a
 * call to g_variant_dict_init() and free the resources with a call to
 * g_variant_dict_clear().
 * 
 * Heap-allocated #GVariantDict follows normal refcounting rules: you
 * allocate it with g_variant_dict_new() and use g_variant_dict_ref()
 * and g_variant_dict_unref().
 * 
 * g_variant_dict_end() is used to convert the #GVariantDict back into a
 * dictionary-type #GVariant.  When used with stack-allocated instances,
 * this also implicitly frees all associated memory, but for
 * heap-allocated instances, you must still call g_variant_dict_unref()
 * afterwards.
 * 
 * You will typically want to use a heap-allocated #GVariantDict when
 * you expose it as part of an API.  For most other uses, the
 * stack-allocated form will be more convenient.
 * 
 * Consider the following two examples that do the same thing in each
 * style: take an existing dictionary and look up the "count" uint32
 * key, adding 1 to it if it is found, or returning an error if the
 * key is not found.  Each returns the new dictionary as a floating
 * #GVariant.
 * 
 * ## Using a stack-allocated GVariantDict
 * 
 * |[<!-- language="C" -->
 * GVariant *
 * add_to_count (GVariant  *orig,
 * GError   **error)
 * {
 * GVariantDict dict;
 * guint32 count;
 * 
 * g_variant_dict_init (&dict, orig);
 * if (!g_variant_dict_lookup (&dict, "count", "u", &count))
 * {
 * g_set_error (...);
 * g_variant_dict_clear (&dict);
 * return NULL;
 * }
 * 
 * g_variant_dict_insert (&dict, "count", "u", count + 1);
 * 
 * return g_variant_dict_end (&dict);
 * }
 * ]|
 * 
 * ## Using heap-allocated GVariantDict
 * 
 * |[<!-- language="C" -->
 * GVariant *
 * add_to_count (GVariant  *orig,
 * GError   **error)
 * {
 * GVariantDict *dict;
 * GVariant *result;
 * guint32 count;
 * 
 * dict = g_variant_dict_new (orig);
 * 
 * if (g_variant_dict_lookup (dict, "count", "u", &count))
 * {
 * g_variant_dict_insert (dict, "count", "u", count + 1);
 * result = g_variant_dict_end (dict);
 * }
 * else
 * {
 * g_set_error (...);
 * result = NULL;
 * }
 * 
 * g_variant_dict_unref (dict);
 * 
 * return result;
 * }
 * ]|
 *
 * Since: 2.40
 */
public class VariantDict
{
	/** the main Gtk struct */
	protected GVariantDict* gVariantDict;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GVariantDict* getVariantDictStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gVariantDict;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gVariantDict;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GVariantDict* gVariantDict, bool ownedRef = false)
	{
		this.gVariantDict = gVariantDict;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_variant_dict_unref(gVariantDict);
	}


	/**
	 * Allocates and initialises a new #GVariantDict.
	 *
	 * You should call g_variant_dict_unref() on the return value when it
	 * is no longer needed.  The memory will not be automatically freed by
	 * any other call.
	 *
	 * In some cases it may be easier to place a #GVariantDict directly on
	 * the stack of the calling function and initialise it with
	 * g_variant_dict_init().  This is particularly useful when you are
	 * using #GVariantDict to construct a #GVariant.
	 *
	 * Params:
	 *     fromAsv = the #GVariant with which to initialise the
	 *         dictionary
	 *
	 * Returns: a #GVariantDict
	 *
	 * Since: 2.40
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Variant fromAsv)
	{
		auto __p = g_variant_dict_new((fromAsv is null) ? null : fromAsv.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GVariantDict*) __p);
	}

	/**
	 * Releases all memory associated with a #GVariantDict without freeing
	 * the #GVariantDict structure itself.
	 *
	 * It typically only makes sense to do this on a stack-allocated
	 * #GVariantDict if you want to abort building the value part-way
	 * through.  This function need not be called if you call
	 * g_variant_dict_end() and it also doesn't need to be called on dicts
	 * allocated with g_variant_dict_new (see g_variant_dict_unref() for
	 * that).
	 *
	 * It is valid to call this function on either an initialised
	 * #GVariantDict or one that was previously cleared by an earlier call
	 * to g_variant_dict_clear() but it is not valid to call this function
	 * on uninitialised memory.
	 *
	 * Since: 2.40
	 */
	public void clear()
	{
		g_variant_dict_clear(gVariantDict);
	}

	/**
	 * Checks if @key exists in @dict.
	 *
	 * Params:
	 *     key = the key to look up in the dictionary
	 *
	 * Returns: %TRUE if @key is in @dict
	 *
	 * Since: 2.40
	 */
	public bool contains(string key)
	{
		return g_variant_dict_contains(gVariantDict, Str.toStringz(key)) != 0;
	}

	/**
	 * Returns the current value of @dict as a #GVariant of type
	 * %G_VARIANT_TYPE_VARDICT, clearing it in the process.
	 *
	 * It is not permissible to use @dict in any way after this call except
	 * for reference counting operations (in the case of a heap-allocated
	 * #GVariantDict) or by reinitialising it with g_variant_dict_init() (in
	 * the case of stack-allocated).
	 *
	 * Returns: a new, floating, #GVariant
	 *
	 * Since: 2.40
	 */
	public Variant end()
	{
		auto __p = g_variant_dict_end(gVariantDict);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Initialises a #GVariantDict structure.
	 *
	 * If @from_asv is given, it is used to initialise the dictionary.
	 *
	 * This function completely ignores the previous contents of @dict.  On
	 * one hand this means that it is valid to pass in completely
	 * uninitialised memory.  On the other hand, this means that if you are
	 * initialising over top of an existing #GVariantDict you need to first
	 * call g_variant_dict_clear() in order to avoid leaking memory.
	 *
	 * You must not call g_variant_dict_ref() or g_variant_dict_unref() on a
	 * #GVariantDict that was initialised with this function.  If you ever
	 * pass a reference to a #GVariantDict outside of the control of your
	 * own code then you should assume that the person receiving that
	 * reference may try to use reference counting; you should use
	 * g_variant_dict_new() instead of this function.
	 *
	 * Params:
	 *     fromAsv = the initial value for @dict
	 *
	 * Since: 2.40
	 */
	public void init(Variant fromAsv)
	{
		g_variant_dict_init(gVariantDict, (fromAsv is null) ? null : fromAsv.getVariantStruct());
	}

	/**
	 * Inserts (or replaces) a key in a #GVariantDict.
	 *
	 * @value is consumed if it is floating.
	 *
	 * Params:
	 *     key = the key to insert a value for
	 *     value = the value to insert
	 *
	 * Since: 2.40
	 */
	public void insertValue(string key, Variant value)
	{
		g_variant_dict_insert_value(gVariantDict, Str.toStringz(key), (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Looks up a value in a #GVariantDict.
	 *
	 * If @key is not found in @dictionary, %NULL is returned.
	 *
	 * The @expected_type string specifies what type of value is expected.
	 * If the value associated with @key has a different type then %NULL is
	 * returned.
	 *
	 * If the key is found and the value has the correct type, it is
	 * returned.  If @expected_type was specified then any non-%NULL return
	 * value will have this type.
	 *
	 * Params:
	 *     key = the key to look up in the dictionary
	 *     expectedType = a #GVariantType, or %NULL
	 *
	 * Returns: the value of the dictionary key, or %NULL
	 *
	 * Since: 2.40
	 */
	public Variant lookupValue(string key, VariantType expectedType)
	{
		auto __p = g_variant_dict_lookup_value(gVariantDict, Str.toStringz(key), (expectedType is null) ? null : expectedType.getVariantTypeStruct());

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on @dict.
	 *
	 * Don't call this on stack-allocated #GVariantDict instances or bad
	 * things will happen.
	 *
	 * Returns: a new reference to @dict
	 *
	 * Since: 2.40
	 */
	public VariantDict ref_()
	{
		auto __p = g_variant_dict_ref(gVariantDict);

		if(__p is null)
		{
			return null;
		}

		return new VariantDict(cast(GVariantDict*) __p, true);
	}

	/**
	 * Removes a key and its associated value from a #GVariantDict.
	 *
	 * Params:
	 *     key = the key to remove
	 *
	 * Returns: %TRUE if the key was found and removed
	 *
	 * Since: 2.40
	 */
	public bool remove(string key)
	{
		return g_variant_dict_remove(gVariantDict, Str.toStringz(key)) != 0;
	}

	/**
	 * Decreases the reference count on @dict.
	 *
	 * In the event that there are no more references, releases all memory
	 * associated with the #GVariantDict.
	 *
	 * Don't call this on stack-allocated #GVariantDict instances or bad
	 * things will happen.
	 *
	 * Since: 2.40
	 */
	public void unref()
	{
		g_variant_dict_unref(gVariantDict);
	}
}
