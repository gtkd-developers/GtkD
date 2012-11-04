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
 * inFile  = glib-Caches.html
 * outPack = glib
 * outFile = Cache
 * strct   = GCache
 * realStrct=
 * ctorStrct=
 * clss    = Cache
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_cache_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Cache;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;






/**
 * Description
 * A GCache allows sharing of complex data structures, in order to
 * save system resources.
 * GCache uses keys and values. A GCache key describes the properties
 * of a particular resource. A GCache value is the actual resource.
 * GCache has been marked as deprecated, since this API is rarely
 * used and not very actively maintained.
 */
public class Cache
{
	
	/** the main Gtk struct */
	protected GCache* gCache;
	
	
	public GCache* getCacheStruct()
	{
		return gCache;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gCache;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCache* gCache)
	{
		this.gCache = gCache;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * g_cache_new has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
	 * Creates a new GCache.
	 * Params:
	 * valueNewFunc = a function to create a new object given a key.
	 * This is called by g_cache_insert() if an object
	 * with the given key does not already exist
	 * valueDestroyFunc = a function to destroy an object. It is called
	 * by g_cache_remove() when the object is no
	 * longer needed (i.e. its reference count drops
	 * to 0)
	 * keyDupFunc = a function to copy a key. It is called by
	 * g_cache_insert() if the key does not already exist in
	 * the GCache
	 * keyDestroyFunc = a function to destroy a key. It is called by
	 * g_cache_remove() when the object is no longer
	 * needed (i.e. its reference count drops to 0)
	 * hashKeyFunc = a function to create a hash value from a key
	 * hashValueFunc = a function to create a hash value from a value
	 * keyEqualFunc = a function to compare two keys. It should return
	 * TRUE if the two keys are equivalent
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCacheNewFunc valueNewFunc, GCacheDestroyFunc valueDestroyFunc, GCacheDupFunc keyDupFunc, GCacheDestroyFunc keyDestroyFunc, GHashFunc hashKeyFunc, GHashFunc hashValueFunc, GEqualFunc keyEqualFunc)
	{
		// GCache * g_cache_new (GCacheNewFunc value_new_func,  GCacheDestroyFunc value_destroy_func,  GCacheDupFunc key_dup_func,  GCacheDestroyFunc key_destroy_func,  GHashFunc hash_key_func,  GHashFunc hash_value_func,  GEqualFunc key_equal_func);
		auto p = g_cache_new(valueNewFunc, valueDestroyFunc, keyDupFunc, keyDestroyFunc, hashKeyFunc, hashValueFunc, keyEqualFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_cache_new(valueNewFunc, valueDestroyFunc, keyDupFunc, keyDestroyFunc, hashKeyFunc, hashValueFunc, keyEqualFunc)");
		}
		this(cast(GCache*) p);
	}
	
	/**
	 * Warning
	 * g_cache_insert has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
	 * Gets the value corresponding to the given key, creating it if
	 * necessary. It first checks if the value already exists in the
	 * GCache, by using the key_equal_func function passed to
	 * g_cache_new(). If it does already exist it is returned, and its
	 * reference count is increased by one. If the value does not currently
	 * exist, if is created by calling the value_new_func. The key is
	 * duplicated by calling key_dup_func and the duplicated key and value
	 * are inserted into the GCache.
	 * Params:
	 * key = a key describing a GCache object
	 * Returns: a pointer to a GCache value
	 */
	public void* insert(void* key)
	{
		// gpointer g_cache_insert (GCache *cache,  gpointer key);
		return g_cache_insert(gCache, key);
	}
	
	/**
	 * Warning
	 * g_cache_remove has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
	 * Decreases the reference count of the given value. If it drops to 0
	 * then the value and its corresponding key are destroyed, using the
	 * value_destroy_func and key_destroy_func passed to g_cache_new().
	 * Params:
	 * value = the value to remove
	 */
	public void remove(void* value)
	{
		// void g_cache_remove (GCache *cache,  gconstpointer value);
		g_cache_remove(gCache, value);
	}
	
	/**
	 * Warning
	 * g_cache_destroy has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
	 * Frees the memory allocated for the GCache.
	 * Note that it does not destroy the keys and values which were
	 * contained in the GCache.
	 */
	public void destroy()
	{
		// void g_cache_destroy (GCache *cache);
		g_cache_destroy(gCache);
	}
	
	/**
	 * Warning
	 * g_cache_key_foreach has been deprecated since version 2.32 and should not be used in newly-written code. Use a GHashTable instead
	 * Calls the given function for each of the keys in the GCache.
	 * NOTE func is passed three parameters, the value and key of a cache
	 * entry and the user_data. The order of value and key is different
	 * from the order in which g_hash_table_foreach() passes key-value
	 * pairs to its callback function !
	 * Params:
	 * func = the function to call with each GCache key
	 * userData = user data to pass to the function
	 */
	public void keyForeach(GHFunc func, void* userData)
	{
		// void g_cache_key_foreach (GCache *cache,  GHFunc func,  gpointer user_data);
		g_cache_key_foreach(gCache, func, userData);
	}
	
	/**
	 * Warning
	 * g_cache_value_foreach has been deprecated since version 2.10 and should not be used in newly-written code. The reason is that it passes pointers to internal
	 *  data structures to func; use g_cache_key_foreach() instead
	 * Calls the given function for each of the values in the GCache.
	 * Params:
	 * func = the function to call with each GCache value
	 * userData = user data to pass to the function
	 */
	public void valueForeach(GHFunc func, void* userData)
	{
		// void g_cache_value_foreach (GCache *cache,  GHFunc func,  gpointer user_data);
		g_cache_value_foreach(gCache, func, userData);
	}
}
