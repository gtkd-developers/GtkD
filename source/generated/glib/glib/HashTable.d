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


module glib.HashTable;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The #GHashTable struct is an opaque data structure to represent a
 * [Hash Table][glib-Hash-Tables]. It should only be accessed via the
 * following functions.
 */
public class HashTable
{
	/** the main Gtk struct */
	protected GHashTable* gHashTable;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GHashTable* getHashTableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gHashTable;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHashTable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GHashTable* gHashTable, bool ownedRef = false)
	{
		this.gHashTable = gHashTable;
		this.ownedRef = ownedRef;
	}


	/**
	 * This is a convenience function for using a #GHashTable as a set.  It
	 * is equivalent to calling g_hash_table_replace() with @key as both the
	 * key and the value.
	 *
	 * In particular, this means that if @key already exists in the hash table, then
	 * the old copy of @key in the hash table is freed and @key replaces it in the
	 * table.
	 *
	 * When a hash table only ever contains keys that have themselves as the
	 * corresponding value it is able to be stored more efficiently.  See
	 * the discussion in the section description.
	 *
	 * Starting from GLib 2.40, this function returns a boolean value to
	 * indicate whether the newly added value was already in the hash table
	 * or not.
	 *
	 * Params:
	 *     key = a key to insert
	 *
	 * Returns: %TRUE if the key did not exist yet
	 *
	 * Since: 2.32
	 */
	public bool add(void* key)
	{
		return g_hash_table_add(gHashTable, key) != 0;
	}

	/**
	 * Checks if @key is in @hash_table.
	 *
	 * Params:
	 *     key = a key to check
	 *
	 * Returns: %TRUE if @key is in @hash_table, %FALSE otherwise.
	 *
	 * Since: 2.32
	 */
	public bool contains(void* key)
	{
		return g_hash_table_contains(gHashTable, key) != 0;
	}

	/**
	 * Destroys all keys and values in the #GHashTable and decrements its
	 * reference count by 1. If keys and/or values are dynamically allocated,
	 * you should either free them first or create the #GHashTable with destroy
	 * notifiers using g_hash_table_new_full(). In the latter case the destroy
	 * functions you supplied will be called on all keys and values during the
	 * destruction phase.
	 */
	public void destroy()
	{
		g_hash_table_destroy(gHashTable);
	}

	/**
	 * Calls the given function for key/value pairs in the #GHashTable
	 * until @predicate returns %TRUE. The function is passed the key
	 * and value of each pair, and the given @user_data parameter. The
	 * hash table may not be modified while iterating over it (you can't
	 * add/remove items).
	 *
	 * Note, that hash tables are really only optimized for forward
	 * lookups, i.e. g_hash_table_lookup(). So code that frequently issues
	 * g_hash_table_find() or g_hash_table_foreach() (e.g. in the order of
	 * once per every entry in a hash table) should probably be reworked
	 * to use additional or different data structures for reverse lookups
	 * (keep in mind that an O(n) find/foreach operation issued for all n
	 * values in a hash table ends up needing O(n*n) operations).
	 *
	 * Params:
	 *     predicate = function to test the key/value pairs for a certain property
	 *     userData = user data to pass to the function
	 *
	 * Returns: The value of the first key/value pair is returned,
	 *     for which @predicate evaluates to %TRUE. If no pair with the
	 *     requested property is found, %NULL is returned.
	 *
	 * Since: 2.4
	 */
	public void* find(GHRFunc predicate, void* userData)
	{
		return g_hash_table_find(gHashTable, predicate, userData);
	}

	alias foreac = foreach_;
	/**
	 * Calls the given function for each of the key/value pairs in the
	 * #GHashTable.  The function is passed the key and value of each
	 * pair, and the given @user_data parameter.  The hash table may not
	 * be modified while iterating over it (you can't add/remove
	 * items). To remove all items matching a predicate, use
	 * g_hash_table_foreach_remove().
	 *
	 * The order in which g_hash_table_foreach() iterates over the keys/values in
	 * the hash table is not defined.
	 *
	 * See g_hash_table_find() for performance caveats for linear
	 * order searches in contrast to g_hash_table_lookup().
	 *
	 * Params:
	 *     func = the function to call for each key/value pair
	 *     userData = user data to pass to the function
	 */
	public void foreach_(GHFunc func, void* userData)
	{
		g_hash_table_foreach(gHashTable, func, userData);
	}

	/**
	 * Calls the given function for each key/value pair in the
	 * #GHashTable. If the function returns %TRUE, then the key/value
	 * pair is removed from the #GHashTable. If you supplied key or
	 * value destroy functions when creating the #GHashTable, they are
	 * used to free the memory allocated for the removed keys and values.
	 *
	 * See #GHashTableIter for an alternative way to loop over the
	 * key/value pairs in the hash table.
	 *
	 * Params:
	 *     func = the function to call for each key/value pair
	 *     userData = user data to pass to the function
	 *
	 * Returns: the number of key/value pairs removed
	 */
	public uint foreachRemove(GHRFunc func, void* userData)
	{
		return g_hash_table_foreach_remove(gHashTable, func, userData);
	}

	/**
	 * Calls the given function for each key/value pair in the
	 * #GHashTable. If the function returns %TRUE, then the key/value
	 * pair is removed from the #GHashTable, but no key or value
	 * destroy functions are called.
	 *
	 * See #GHashTableIter for an alternative way to loop over the
	 * key/value pairs in the hash table.
	 *
	 * Params:
	 *     func = the function to call for each key/value pair
	 *     userData = user data to pass to the function
	 *
	 * Returns: the number of key/value pairs removed.
	 */
	public uint foreachSteal(GHRFunc func, void* userData)
	{
		return g_hash_table_foreach_steal(gHashTable, func, userData);
	}

	/**
	 * Retrieves every key inside @hash_table. The returned data is valid
	 * until changes to the hash release those keys.
	 *
	 * This iterates over every entry in the hash table to build its return value.
	 * To iterate over the entries in a #GHashTable more efficiently, use a
	 * #GHashTableIter.
	 *
	 * Returns: a #GList containing all the keys
	 *     inside the hash table. The content of the list is owned by the
	 *     hash table and should not be modified or freed. Use g_list_free()
	 *     when done using the list.
	 *
	 * Since: 2.14
	 */
	public ListG getKeys()
	{
		auto __p = g_hash_table_get_keys(gHashTable);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Retrieves every key inside @hash_table, as an array.
	 *
	 * The returned array is %NULL-terminated but may contain %NULL as a
	 * key.  Use @length to determine the true length if it's possible that
	 * %NULL was used as the value for a key.
	 *
	 * Note: in the common case of a string-keyed #GHashTable, the return
	 * value of this function can be conveniently cast to (const gchar **).
	 *
	 * This iterates over every entry in the hash table to build its return value.
	 * To iterate over the entries in a #GHashTable more efficiently, use a
	 * #GHashTableIter.
	 *
	 * You should always free the return result with g_free().  In the
	 * above-mentioned case of a string-keyed hash table, it may be
	 * appropriate to use g_strfreev() if you call g_hash_table_steal_all()
	 * first to transfer ownership of the keys.
	 *
	 * Returns: a
	 *     %NULL-terminated array containing each key from the table.
	 *
	 * Since: 2.40
	 */
	public void*[] getKeysAsArray()
	{
		uint length;

		auto __p = g_hash_table_get_keys_as_array(gHashTable, &length);

		return __p[0 .. length];
	}

	/**
	 * Retrieves every value inside @hash_table. The returned data
	 * is valid until @hash_table is modified.
	 *
	 * This iterates over every entry in the hash table to build its return value.
	 * To iterate over the entries in a #GHashTable more efficiently, use a
	 * #GHashTableIter.
	 *
	 * Returns: a #GList containing all the values
	 *     inside the hash table. The content of the list is owned by the
	 *     hash table and should not be modified or freed. Use g_list_free()
	 *     when done using the list.
	 *
	 * Since: 2.14
	 */
	public ListG getValues()
	{
		auto __p = g_hash_table_get_values(gHashTable);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Inserts a new key and value into a #GHashTable.
	 *
	 * If the key already exists in the #GHashTable its current
	 * value is replaced with the new value. If you supplied a
	 * @value_destroy_func when creating the #GHashTable, the old
	 * value is freed using that function. If you supplied a
	 * @key_destroy_func when creating the #GHashTable, the passed
	 * key is freed using that function.
	 *
	 * Starting from GLib 2.40, this function returns a boolean value to
	 * indicate whether the newly added value was already in the hash table
	 * or not.
	 *
	 * Params:
	 *     key = a key to insert
	 *     value = the value to associate with the key
	 *
	 * Returns: %TRUE if the key did not exist yet
	 */
	public bool insert(void* key, void* value)
	{
		return g_hash_table_insert(gHashTable, key, value) != 0;
	}

	/**
	 * Looks up a key in a #GHashTable. Note that this function cannot
	 * distinguish between a key that is not present and one which is present
	 * and has the value %NULL. If you need this distinction, use
	 * g_hash_table_lookup_extended().
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Returns: the associated value, or %NULL if the key is not found
	 */
	public void* lookup(void* key)
	{
		return g_hash_table_lookup(gHashTable, key);
	}

	/**
	 * Looks up a key in the #GHashTable, returning the original key and the
	 * associated value and a #gboolean which is %TRUE if the key was found. This
	 * is useful if you need to free the memory allocated for the original key,
	 * for example before calling g_hash_table_remove().
	 *
	 * You can actually pass %NULL for @lookup_key to test
	 * whether the %NULL key exists, provided the hash and equal functions
	 * of @hash_table are %NULL-safe.
	 *
	 * Params:
	 *     lookupKey = the key to look up
	 *     origKey = return location for the original key
	 *     value = return location for the value associated
	 *         with the key
	 *
	 * Returns: %TRUE if the key was found in the #GHashTable
	 */
	public bool lookupExtended(void* lookupKey, out void* origKey, out void* value)
	{
		return g_hash_table_lookup_extended(gHashTable, lookupKey, &origKey, &value) != 0;
	}

	/**
	 * Creates a new #GHashTable with a reference count of 1.
	 *
	 * Hash values returned by @hash_func are used to determine where keys
	 * are stored within the #GHashTable data structure. The g_direct_hash(),
	 * g_int_hash(), g_int64_hash(), g_double_hash() and g_str_hash()
	 * functions are provided for some common types of keys.
	 * If @hash_func is %NULL, g_direct_hash() is used.
	 *
	 * @key_equal_func is used when looking up keys in the #GHashTable.
	 * The g_direct_equal(), g_int_equal(), g_int64_equal(), g_double_equal()
	 * and g_str_equal() functions are provided for the most common types
	 * of keys. If @key_equal_func is %NULL, keys are compared directly in
	 * a similar fashion to g_direct_equal(), but without the overhead of
	 * a function call. @key_equal_func is called with the key from the hash table
	 * as its first parameter, and the user-provided key to check against as
	 * its second.
	 *
	 * Params:
	 *     hashFunc = a function to create a hash value from a key
	 *     keyEqualFunc = a function to check two keys for equality
	 *
	 * Returns: a new #GHashTable
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GHashFunc hashFunc, GEqualFunc keyEqualFunc)
	{
		auto __p = g_hash_table_new(hashFunc, keyEqualFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GHashTable*) __p);
	}

	/**
	 * Creates a new #GHashTable like g_hash_table_new() with a reference
	 * count of 1 and allows to specify functions to free the memory
	 * allocated for the key and value that get called when removing the
	 * entry from the #GHashTable.
	 *
	 * Since version 2.42 it is permissible for destroy notify functions to
	 * recursively remove further items from the hash table. This is only
	 * permissible if the application still holds a reference to the hash table.
	 * This means that you may need to ensure that the hash table is empty by
	 * calling g_hash_table_remove_all() before releasing the last reference using
	 * g_hash_table_unref().
	 *
	 * Params:
	 *     hashFunc = a function to create a hash value from a key
	 *     keyEqualFunc = a function to check two keys for equality
	 *     keyDestroyFunc = a function to free the memory allocated for the key
	 *         used when removing the entry from the #GHashTable, or %NULL
	 *         if you don't want to supply such a function.
	 *     valueDestroyFunc = a function to free the memory allocated for the
	 *         value used when removing the entry from the #GHashTable, or %NULL
	 *         if you don't want to supply such a function.
	 *
	 * Returns: a new #GHashTable
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)
	{
		auto __p = g_hash_table_new_full(hashFunc, keyEqualFunc, keyDestroyFunc, valueDestroyFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GHashTable*) __p);
	}

	/**
	 * Creates a new #GHashTable like g_hash_table_new_full() with a reference
	 * count of 1.
	 *
	 * It inherits the hash function, the key equal function, the key destroy function,
	 * as well as the value destroy function, from @other_hash_table.
	 *
	 * The returned hash table will be empty; it will not contain the keys
	 * or values from @other_hash_table.
	 *
	 * Returns: a new #GHashTable
	 *
	 * Since: 2.72
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(HashTable otherHashTable)
	{
		auto __p = g_hash_table_new_similar((otherHashTable is null) ? null : otherHashTable.getHashTableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_similar");
		}

		this(cast(GHashTable*) __p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @hash_table by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: the passed in #GHashTable
	 *
	 * Since: 2.10
	 */
	public HashTable ref_()
	{
		auto __p = g_hash_table_ref(gHashTable);

		if(__p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) __p);
	}

	/**
	 * Removes a key and its associated value from a #GHashTable.
	 *
	 * If the #GHashTable was created using g_hash_table_new_full(), the
	 * key and value are freed using the supplied destroy functions, otherwise
	 * you have to make sure that any dynamically allocated values are freed
	 * yourself.
	 *
	 * Params:
	 *     key = the key to remove
	 *
	 * Returns: %TRUE if the key was found and removed from the #GHashTable
	 */
	public bool remove(void* key)
	{
		return g_hash_table_remove(gHashTable, key) != 0;
	}

	/**
	 * Removes all keys and their associated values from a #GHashTable.
	 *
	 * If the #GHashTable was created using g_hash_table_new_full(),
	 * the keys and values are freed using the supplied destroy functions,
	 * otherwise you have to make sure that any dynamically allocated
	 * values are freed yourself.
	 *
	 * Since: 2.12
	 */
	public void removeAll()
	{
		g_hash_table_remove_all(gHashTable);
	}

	/**
	 * Inserts a new key and value into a #GHashTable similar to
	 * g_hash_table_insert(). The difference is that if the key
	 * already exists in the #GHashTable, it gets replaced by the
	 * new key. If you supplied a @value_destroy_func when creating
	 * the #GHashTable, the old value is freed using that function.
	 * If you supplied a @key_destroy_func when creating the
	 * #GHashTable, the old key is freed using that function.
	 *
	 * Starting from GLib 2.40, this function returns a boolean value to
	 * indicate whether the newly added value was already in the hash table
	 * or not.
	 *
	 * Params:
	 *     key = a key to insert
	 *     value = the value to associate with the key
	 *
	 * Returns: %TRUE if the key did not exist yet
	 */
	public bool replace(void* key, void* value)
	{
		return g_hash_table_replace(gHashTable, key, value) != 0;
	}

	/**
	 * Returns the number of elements contained in the #GHashTable.
	 *
	 * Returns: the number of key/value pairs in the #GHashTable.
	 */
	public uint size()
	{
		return g_hash_table_size(gHashTable);
	}

	/**
	 * Removes a key and its associated value from a #GHashTable without
	 * calling the key and value destroy functions.
	 *
	 * Params:
	 *     key = the key to remove
	 *
	 * Returns: %TRUE if the key was found and removed from the #GHashTable
	 */
	public bool steal(void* key)
	{
		return g_hash_table_steal(gHashTable, key) != 0;
	}

	/**
	 * Removes all keys and their associated values from a #GHashTable
	 * without calling the key and value destroy functions.
	 *
	 * Since: 2.12
	 */
	public void stealAll()
	{
		g_hash_table_steal_all(gHashTable);
	}

	/**
	 * Looks up a key in the #GHashTable, stealing the original key and the
	 * associated value and returning %TRUE if the key was found. If the key was
	 * not found, %FALSE is returned.
	 *
	 * If found, the stolen key and value are removed from the hash table without
	 * calling the key and value destroy functions, and ownership is transferred to
	 * the caller of this method; as with g_hash_table_steal().
	 *
	 * You can pass %NULL for @lookup_key, provided the hash and equal functions
	 * of @hash_table are %NULL-safe.
	 *
	 * Params:
	 *     lookupKey = the key to look up
	 *     stolenKey = return location for the
	 *         original key
	 *     stolenValue = return location
	 *         for the value associated with the key
	 *
	 * Returns: %TRUE if the key was found in the #GHashTable
	 *
	 * Since: 2.58
	 */
	public bool stealExtended(void* lookupKey, out void* stolenKey, out void* stolenValue)
	{
		return g_hash_table_steal_extended(gHashTable, lookupKey, &stolenKey, &stolenValue) != 0;
	}

	/**
	 * Atomically decrements the reference count of @hash_table by one.
	 * If the reference count drops to 0, all keys and values will be
	 * destroyed, and all memory allocated by the hash table is released.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Since: 2.10
	 */
	public void unref()
	{
		g_hash_table_unref(gHashTable);
	}

	/**
	 * Compares two #gpointer arguments and returns %TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the @key_equal_func
	 * parameter, when using opaque pointers compared by pointer value as
	 * keys in a #GHashTable.
	 *
	 * This equality function is also appropriate for keys that are integers
	 * stored in pointers, such as `GINT_TO_POINTER (n)`.
	 *
	 * Params:
	 *     v1 = a key
	 *     v2 = a key to compare with @v1
	 *
	 * Returns: %TRUE if the two keys match.
	 */
	public static bool directEqual(void* v1, void* v2)
	{
		return g_direct_equal(v1, v2) != 0;
	}

	/**
	 * Converts a gpointer to a hash value.
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * when using opaque pointers compared by pointer value as keys in a
	 * #GHashTable.
	 *
	 * This hash function is also appropriate for keys that are integers
	 * stored in pointers, such as `GINT_TO_POINTER (n)`.
	 *
	 * Params:
	 *     v = a #gpointer key
	 *
	 * Returns: a hash value corresponding to the key.
	 */
	public static uint directHash(void* v)
	{
		return g_direct_hash(v);
	}

	/**
	 * Compares the two #gdouble values being pointed to and returns
	 * %TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the @key_equal_func
	 * parameter, when using non-%NULL pointers to doubles as keys in a
	 * #GHashTable.
	 *
	 * Params:
	 *     v1 = a pointer to a #gdouble key
	 *     v2 = a pointer to a #gdouble key to compare with @v1
	 *
	 * Returns: %TRUE if the two keys match.
	 *
	 * Since: 2.22
	 */
	public static bool doubleEqual(void* v1, void* v2)
	{
		return g_double_equal(v1, v2) != 0;
	}

	/**
	 * Converts a pointer to a #gdouble to a hash value.
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * when using non-%NULL pointers to doubles as keys in a #GHashTable.
	 *
	 * Params:
	 *     v = a pointer to a #gdouble key
	 *
	 * Returns: a hash value corresponding to the key.
	 *
	 * Since: 2.22
	 */
	public static uint doubleHash(void* v)
	{
		return g_double_hash(v);
	}

	/**
	 * Compares the two #gint64 values being pointed to and returns
	 * %TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the @key_equal_func
	 * parameter, when using non-%NULL pointers to 64-bit integers as keys in a
	 * #GHashTable.
	 *
	 * Params:
	 *     v1 = a pointer to a #gint64 key
	 *     v2 = a pointer to a #gint64 key to compare with @v1
	 *
	 * Returns: %TRUE if the two keys match.
	 *
	 * Since: 2.22
	 */
	public static bool int64Equal(void* v1, void* v2)
	{
		return g_int64_equal(v1, v2) != 0;
	}

	/**
	 * Converts a pointer to a #gint64 to a hash value.
	 *
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * when using non-%NULL pointers to 64-bit integer values as keys in a
	 * #GHashTable.
	 *
	 * Params:
	 *     v = a pointer to a #gint64 key
	 *
	 * Returns: a hash value corresponding to the key.
	 *
	 * Since: 2.22
	 */
	public static uint int64Hash(void* v)
	{
		return g_int64_hash(v);
	}

	/**
	 * Compares the two #gint values being pointed to and returns
	 * %TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the @key_equal_func
	 * parameter, when using non-%NULL pointers to integers as keys in a
	 * #GHashTable.
	 *
	 * Note that this function acts on pointers to #gint, not on #gint
	 * directly: if your hash table's keys are of the form
	 * `GINT_TO_POINTER (n)`, use g_direct_equal() instead.
	 *
	 * Params:
	 *     v1 = a pointer to a #gint key
	 *     v2 = a pointer to a #gint key to compare with @v1
	 *
	 * Returns: %TRUE if the two keys match.
	 */
	public static bool intEqual(void* v1, void* v2)
	{
		return g_int_equal(v1, v2) != 0;
	}

	/**
	 * Converts a pointer to a #gint to a hash value.
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * when using non-%NULL pointers to integer values as keys in a #GHashTable.
	 *
	 * Note that this function acts on pointers to #gint, not on #gint
	 * directly: if your hash table's keys are of the form
	 * `GINT_TO_POINTER (n)`, use g_direct_hash() instead.
	 *
	 * Params:
	 *     v = a pointer to a #gint key
	 *
	 * Returns: a hash value corresponding to the key.
	 */
	public static uint intHash(void* v)
	{
		return g_int_hash(v);
	}

	/**
	 * Compares two strings for byte-by-byte equality and returns %TRUE
	 * if they are equal. It can be passed to g_hash_table_new() as the
	 * @key_equal_func parameter, when using non-%NULL strings as keys in a
	 * #GHashTable.
	 *
	 * This function is typically used for hash table comparisons, but can be used
	 * for general purpose comparisons of non-%NULL strings. For a %NULL-safe string
	 * comparison function, see g_strcmp0().
	 *
	 * Params:
	 *     v1 = a key
	 *     v2 = a key to compare with @v1
	 *
	 * Returns: %TRUE if the two keys match
	 */
	public static bool strEqual(void* v1, void* v2)
	{
		return g_str_equal(v1, v2) != 0;
	}

	/**
	 * Converts a string to a hash value.
	 *
	 * This function implements the widely used "djb" hash apparently
	 * posted by Daniel Bernstein to comp.lang.c some time ago.  The 32
	 * bit unsigned hash value starts at 5381 and for each byte 'c' in
	 * the string, is updated: `hash = hash * 33 + c`. This function
	 * uses the signed value of each byte.
	 *
	 * It can be passed to g_hash_table_new() as the @hash_func parameter,
	 * when using non-%NULL strings as keys in a #GHashTable.
	 *
	 * Note that this function may not be a perfect fit for all use cases.
	 * For example, it produces some hash collisions with strings as short
	 * as 2.
	 *
	 * Params:
	 *     v = a string key
	 *
	 * Returns: a hash value corresponding to the key
	 */
	public static uint strHash(void* v)
	{
		return g_str_hash(v);
	}
}
