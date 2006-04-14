/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = HashTable
 * strct   = GHashTable
 * realStrct=
 * clss    = HashTable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_hash_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Dataset
 * structWrap:
 * 	- GHashTable* -> HashTable
 * local aliases:
 */

module glib.HashTable;

private import glib.typedefs;

private import lib.glib;

private import glib.Dataset;

/**
 * Description
 * A GHashTable provides associations between keys and values which
 * is optimized so that given a key, the associated value can be found
 * very quickly.
 * Note that neither keys nor values are copied when inserted into the
 * GHashTable, so they must exist for the lifetime of the GHashTable.
 * This means that the use of static strings is OK, but temporary
 * strings (i.e. those created in buffers and those returned by GTK+ widgets)
 * should be copied with g_strdup() before being inserted.
 * If keys or values are dynamically allocated, you must be careful to ensure
 * that they are freed when they are removed from the GHashTable, and also
 * when they are overwritten by new insertions into the GHashTable.
 * It is also not advisable to mix static strings and dynamically-allocated
 * strings in a GHashTable, because it then becomes difficult to determine
 * whether the string should be freed.
 * To create a GHashTable, use g_hash_table_new().
 * To insert a key and value into a GHashTable, use g_hash_table_insert().
 * To lookup a value corresponding to a given key, use g_hash_table_lookup()
 * and g_hash_table_lookup_extended().
 * To remove a key and value, use g_hash_table_remove().
 * To call a function for each key and value pair use g_hash_table_foreach().
 * To destroy a GHashTable use g_hash_table_destroy().
 */
public class HashTable
{
	
	/** the main Gtk struct */
	protected GHashTable* gHashTable;
	
	
	public GHashTable* getHashTableStruct()
	{
		return gHashTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHashTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GHashTable* gHashTable)
	{
		this.gHashTable = gHashTable;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GHashTable with a reference count of 1.
	 * hash_func:
	 *  a function to create a hash value from a key.
	 *  Hash values are used to determine where keys are stored within the
	 *  GHashTable data structure. The g_direct_hash(), g_int_hash() and
	 *  g_str_hash() functions are provided for some common types of keys.
	 *  If hash_func is NULL, g_direct_hash() is used.
	 * key_equal_func:
	 *  a function to check two keys for equality. This is
	 *  used when looking up keys in the GHashTable. The g_direct_equal(),
	 *  g_int_equal() and g_str_equal() functions are provided for the most
	 *  common types of keys. If key_equal_func is NULL, keys are compared
	 *  directly in a similar fashion to g_direct_equal(), but without the
	 *  overhead of a function call.
	 * Returns:
	 *  a new GHashTable.
	 */
	public this (GHashFunc hashFunc, GEqualFunc keyEqualFunc)
	{
		// GHashTable* g_hash_table_new (GHashFunc hash_func,  GEqualFunc key_equal_func);
		this(cast(GHashTable*)g_hash_table_new(hashFunc, keyEqualFunc) );
	}
	
	/**
	 * Creates a new GHashTable like g_hash_table_new() with a reference count
	 * of 1 and allows to specify functions to free the memory allocated for the
	 * key and value that get called when removing the entry from the GHashTable.
	 * hash_func:
	 *  a function to create a hash value from a key.
	 * key_equal_func:
	 *  a function to check two keys for equality.
	 * key_destroy_func:
	 *  a function to free the memory allocated for the key
	 *  used when removing the entry from the GHashTable or NULL if you
	 *  don't want to supply such a function.
	 * value_destroy_func:
	 *  a function to free the memory allocated for the
	 *  value used when removing the entry from the GHashTable or NULL if
	 *  you don't want to supply such a function.
	 * Returns:
	 *  a new GHashTable.
	 */
	public this (GHashFunc hashFunc, GEqualFunc keyEqualFunc, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)
	{
		// GHashTable* g_hash_table_new_full (GHashFunc hash_func,  GEqualFunc key_equal_func,  GDestroyNotify key_destroy_func,  GDestroyNotify value_destroy_func);
		this(cast(GHashTable*)g_hash_table_new_full(hashFunc, keyEqualFunc, keyDestroyFunc, valueDestroyFunc) );
	}
	
	
	
	/**
	 * Inserts a new key and value into a GHashTable.
	 * If the key already exists in the GHashTable its current value is replaced
	 * with the new value. If you supplied a value_destroy_func when creating the
	 * GHashTable, the old value is freed using that function. If you supplied
	 * a key_destroy_func when creating the GHashTable, the passed key is freed
	 * using that function.
	 * hash_table:
	 *  a GHashTable.
	 * key:
	 *  a key to insert.
	 * value:
	 *  the value to associate with the key.
	 */
	public void insert(void* key, void* value)
	{
		// void g_hash_table_insert (GHashTable *hash_table,  gpointer key,  gpointer value);
		g_hash_table_insert(gHashTable, key, value);
	}
	
	/**
	 * Inserts a new key and value into a GHashTable similar to
	 * g_hash_table_insert(). The difference is that if the key already exists
	 * in the GHashTable, it gets replaced by the new key. If you supplied a
	 * value_destroy_func when creating the GHashTable, the old value is freed
	 * using that function. If you supplied a key_destroy_func when creating the
	 * GHashTable, the old key is freed using that function.
	 * hash_table:
	 *  a GHashTable.
	 * key:
	 *  a key to insert.
	 * value:
	 *  the value to associate with the key.
	 */
	public void replace(void* key, void* value)
	{
		// void g_hash_table_replace (GHashTable *hash_table,  gpointer key,  gpointer value);
		g_hash_table_replace(gHashTable, key, value);
	}
	
	/**
	 * Returns the number of elements contained in the GHashTable.
	 * hash_table:
	 *  a GHashTable.
	 * Returns:
	 *  the number of key/value pairs in the GHashTable.
	 */
	public uint size()
	{
		// guint g_hash_table_size (GHashTable *hash_table);
		return g_hash_table_size(gHashTable);
	}
	
	/**
	 * Looks up a key in a GHashTable. Note that this function cannot
	 * distinguish between a key that is not present and one which is present
	 * and has the value NULL. If you need this distinction, use
	 * g_hash_table_lookup_extended().
	 * hash_table:
	 *  a GHashTable.
	 * key:
	 *  the key to look up.
	 * Returns:
	 *  the associated value, or NULL if the key is not found.
	 */
	public void* lookup(void* key)
	{
		// gpointer g_hash_table_lookup (GHashTable *hash_table,  gconstpointer key);
		return g_hash_table_lookup(gHashTable, key);
	}
	
	/**
	 * Looks up a key in the GHashTable, returning the original key and the
	 * associated value and a gboolean which is TRUE if the key was found. This
	 * is useful if you need to free the memory allocated for the original key,
	 * for example before calling g_hash_table_remove().
	 * hash_table:
	 *  a GHashTable.
	 * lookup_key:
	 *  the key to look up.
	 * orig_key:
	 *  returns the original key.
	 * value:
	 *  returns the value associated with the key.
	 * Returns:
	 *  TRUE if the key was found in the GHashTable.
	 */
	public int lookupExtended(void* lookupKey, void** origKey, void** value)
	{
		// gboolean g_hash_table_lookup_extended (GHashTable *hash_table,  gconstpointer lookup_key,  gpointer *orig_key,  gpointer *value);
		return g_hash_table_lookup_extended(gHashTable, lookupKey, origKey, value);
	}
	
	/**
	 * Calls the given function for each of the key/value pairs in the
	 * GHashTable. The function is passed the key and value of each
	 * pair, and the given user_data parameter. The hash table may not
	 * be modified while iterating over it (you can't add/remove
	 * items). To remove all items matching a predicate, use
	 * g_hash_table_foreach_remove().
	 * hash_table:
	 *  a GHashTable.
	 * func:
	 *  the function to call for each key/value pair.
	 * user_data:
	 *  user data to pass to the function.
	 */
	public void foreac(GHFunc func, void* userData)
	{
		// void g_hash_table_foreach (GHashTable *hash_table,  GHFunc func,  gpointer user_data);
		g_hash_table_foreach(gHashTable, func, userData);
	}
	
	/**
	 * Calls the given function for key/value pairs in the GHashTable until
	 * predicate returns TRUE. The function is passed the key and value of
	 * each pair, and the given user_data parameter. The hash table may not
	 * be modified while iterating over it (you can't add/remove items).
	 * hash_table:
	 *  a GHashTable.
	 * predicate:
	 *  function to test the key/value pairs for a certain property.
	 * user_data:
	 *  user data to pass to the function.
	 * Returns:
	 *  The value of the first key/value pair is returned, for which
	 * func evaluates to TRUE. If no pair with the requested property is found,
	 * NULL is returned.
	 * Since 2.4
	 */
	public void* find(GHRFunc predicate, void* userData)
	{
		// gpointer g_hash_table_find (GHashTable *hash_table,  GHRFunc predicate,  gpointer user_data);
		return g_hash_table_find(gHashTable, predicate, userData);
	}
	
	
	/**
	 * Removes a key and its associated value from a GHashTable.
	 * If the GHashTable was created using g_hash_table_new_full(), the
	 * key and value are freed using the supplied destroy functions, otherwise
	 * you have to make sure that any dynamically allocated values are freed
	 * yourself.
	 * hash_table:
	 *  a GHashTable.
	 * key:
	 *  the key to remove.
	 * Returns:
	 *  TRUE if the key was found and removed from the GHashTable.
	 */
	public int remove(void* key)
	{
		// gboolean g_hash_table_remove (GHashTable *hash_table,  gconstpointer key);
		return g_hash_table_remove(gHashTable, key);
	}
	
	/**
	 * Removes a key and its associated value from a GHashTable without
	 * calling the key and value destroy functions.
	 * hash_table:
	 *  a GHashTable.
	 * key:
	 *  the key to remove.
	 * Returns:
	 *  TRUE if the key was found and removed from the GHashTable.
	 */
	public int steal(void* key)
	{
		// gboolean g_hash_table_steal (GHashTable *hash_table,  gconstpointer key);
		return g_hash_table_steal(gHashTable, key);
	}
	
	/**
	 * Calls the given function for each key/value pair in the GHashTable.
	 * If the function returns TRUE, then the key/value pair is removed from the
	 * GHashTable. If you supplied key or value destroy functions when creating
	 * the GHashTable, they are used to free the memory allocated for the removed
	 * keys and values.
	 * hash_table:
	 *  a GHashTable.
	 * func:
	 *  the function to call for each key/value pair.
	 * user_data:
	 *  user data to pass to the function.
	 * Returns:
	 *  the number of key/value pairs removed.
	 */
	public uint foreachRemove(GHRFunc func, void* userData)
	{
		// guint g_hash_table_foreach_remove (GHashTable *hash_table,  GHRFunc func,  gpointer user_data);
		return g_hash_table_foreach_remove(gHashTable, func, userData);
	}
	
	/**
	 * Calls the given function for each key/value pair in the GHashTable.
	 * If the function returns TRUE, then the key/value pair is removed from the
	 * GHashTable, but no key or value destroy functions are called.
	 * hash_table:
	 *  a GHashTable.
	 * func:
	 *  the function to call for each key/value pair.
	 * user_data:
	 *  user data to pass to the function.
	 * Returns:
	 *  the number of key/value pairs removed.
	 */
	public uint foreachSteal(GHRFunc func, void* userData)
	{
		// guint g_hash_table_foreach_steal (GHashTable *hash_table,  GHRFunc func,  gpointer user_data);
		return g_hash_table_foreach_steal(gHashTable, func, userData);
	}
	
	
	
	
	/**
	 * Destroys all keys and values in the GHashTable and decrements its
	 * reference count by 1. If keys and/or values are dynamically allocated,
	 * you should either free them first or create the GHashTable with destroy
	 * notifiers using g_hash_table_new_full(). In the latter case the destroy
	 * functions you supplied will be called on all keys and values during the
	 * destruction phase.
	 * hash_table:
	 *  a GHashTable.
	 */
	public void destroy()
	{
		// void g_hash_table_destroy (GHashTable *hash_table);
		g_hash_table_destroy(gHashTable);
	}
	
	/**
	 * Atomically increments the reference count of hash_table by one.
	 * This function is MT-safe and may be called from any thread.
	 * hash_table:
	 *  a valid GHashTable.
	 * Returns:
	 *  the passed in GHashTable.
	 * Since 2.10
	 */
	public HashTable ref()
	{
		// GHashTable* g_hash_table_ref (GHashTable *hash_table);
		return new HashTable( g_hash_table_ref(gHashTable) );
	}
	
	/**
	 * Atomically decrements the reference count of hash_table by one.
	 * If the reference count drops to 0, all keys and values will be
	 * destroyed, and all memory allocated by the hash table is released.
	 * This function is MT-safe and may be called from any thread.
	 * hash_table:
	 *  a valid GHashTable.
	 * Since 2.10
	 */
	public void unref()
	{
		// void g_hash_table_unref (GHashTable *hash_table);
		g_hash_table_unref(gHashTable);
	}
	
	/**
	 * Compares two gpointer arguments and returns TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the key_equal_func
	 * parameter, when using pointers as keys in a GHashTable.
	 * v1:
	 *  a key.
	 * v2:
	 *  a key to compare with v1.
	 * Returns:
	 *  TRUE if the two keys match.
	 */
	public static int gDirectEqual(void* v1, void* v2)
	{
		// gboolean g_direct_equal (gconstpointer v1,  gconstpointer v2);
		return g_direct_equal(v1, v2);
	}
	
	/**
	 * Converts a gpointer to a hash value.
	 * It can be passed to g_hash_table_new() as the hash_func parameter,
	 * when using pointers as keys in a GHashTable.
	 * v:
	 *  a gpointer key
	 * Returns:
	 *  a hash value corresponding to the key.
	 */
	public static uint gDirectHash(void* v)
	{
		// guint g_direct_hash (gconstpointer v);
		return g_direct_hash(v);
	}
	
	/**
	 * Compares the two gint values being pointed to and returns
	 * TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the key_equal_func
	 * parameter, when using pointers to integers as keys in a GHashTable.
	 * v1:
	 *  a pointer to a gint key.
	 * v2:
	 *  a pointer to a gint key to compare with v1.
	 * Returns:
	 *  TRUE if the two keys match.
	 */
	public static int gIntEqual(void* v1, void* v2)
	{
		// gboolean g_int_equal (gconstpointer v1,  gconstpointer v2);
		return g_int_equal(v1, v2);
	}
	
	/**
	 * Converts a pointer to a gint to a hash value.
	 * It can be passed to g_hash_table_new() as the hash_func parameter,
	 * when using pointers to integers values as keys in a GHashTable.
	 * v:
	 *  a pointer to a gint key
	 * Returns:
	 *  a hash value corresponding to the key.
	 */
	public static uint gIntHash(void* v)
	{
		// guint g_int_hash (gconstpointer v);
		return g_int_hash(v);
	}
	
	/**
	 * Compares two strings and returns TRUE if they are equal.
	 * It can be passed to g_hash_table_new() as the key_equal_func
	 * parameter, when using strings as keys in a GHashTable.
	 * v1:
	 *  a key.
	 * v2:
	 *  a key to compare with v1.
	 * Returns:
	 *  TRUE if the two keys match.
	 */
	public static int gStrEqual(void* v1, void* v2)
	{
		// gboolean g_str_equal (gconstpointer v1,  gconstpointer v2);
		return g_str_equal(v1, v2);
	}
	
	/**
	 * Converts a string to a hash value.
	 * It can be passed to g_hash_table_new() as the hash_func parameter,
	 * when using strings as keys in a GHashTable.
	 * v:
	 *  a string key.
	 * Returns:
	 *  a hash value corresponding to the key.
	 */
	public static uint gStrHash(void* v)
	{
		// guint g_str_hash (gconstpointer v);
		return g_str_hash(v);
	}
}
