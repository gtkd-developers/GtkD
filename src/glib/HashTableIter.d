/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = glib
 * outFile = HashTableIter
 * strct   = GHashTableIter
 * realStrct=
 * ctorStrct=
 * clss    = HashTableIter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_hash_table_iter_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.HashTable
 * structWrap:
 * 	- GHashTable* -> HashTable
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.HashTableIter;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.HashTable;




/**
 * Description
 * A GHashTable provides associations between keys and values which is
 * optimized so that given a key, the associated value can be found
 * very quickly.
 * Note that neither keys nor values are copied when inserted into the
 * GHashTable, so they must exist for the lifetime of the GHashTable.
 * This means that the use of static strings is OK, but temporary
 * strings (i.e. those created in buffers and those returned by GTK+
 * widgets) should be copied with g_strdup() before being inserted.
 * If keys or values are dynamically allocated, you must be careful to
 * ensure that they are freed when they are removed from the
 * GHashTable, and also when they are overwritten by new insertions
 * into the GHashTable. It is also not advisable to mix static strings
 * and dynamically-allocated strings in a GHashTable, because it then
 * becomes difficult to determine whether the string should be freed.
 * To create a GHashTable, use g_hash_table_new().
 * To insert a key and value into a GHashTable, use
 * g_hash_table_insert().
 * To lookup a value corresponding to a given key, use
 * g_hash_table_lookup() and g_hash_table_lookup_extended().
 * To remove a key and value, use g_hash_table_remove().
 * To call a function for each key and value pair use
 * g_hash_table_foreach() or use a iterator to iterate over the
 * key/value pairs in the hash table, see GHashTableIter.
 * To destroy a GHashTable use g_hash_table_destroy().
 */
public class HashTableIter
{
	
	/** the main Gtk struct */
	protected GHashTableIter* gHashTableIter;
	
	
	public GHashTableIter* getHashTableIterStruct()
	{
		return gHashTableIter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gHashTableIter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GHashTableIter* gHashTableIter)
	{
		if(gHashTableIter is null)
		{
			this = null;
			return;
		}
		this.gHashTableIter = gHashTableIter;
	}
	
	/**
	 */
	
	/**
	 * Initializes a key/value pair iterator and associates it with
	 * hash_table. Modifying the hash table after calling this function
	 * invalidates the returned iterator.
	 * Since 2.16
	 * Params:
	 * hashTable = a GHashTable.
	 */
	public void init(HashTable hashTable)
	{
		// void g_hash_table_iter_init (GHashTableIter *iter,  GHashTable *hash_table);
		g_hash_table_iter_init(gHashTableIter, (hashTable is null) ? null : hashTable.getHashTableStruct());
	}
	
	/**
	 * Advances iter and retrieves the key and/or value that are now
	 * pointed to as a result of this advancement. If FALSE is returned,
	 * key and value are not set, and the iterator becomes invalid.
	 * Since 2.16
	 * Params:
	 * key = a location to store the key, or NULL.
	 * value = a location to store the value, or NULL.
	 * Returns: FALSE if the end of the GHashTable has been reached.
	 */
	public int next(void** key, void** value)
	{
		// gboolean g_hash_table_iter_next (GHashTableIter *iter,  gpointer *key,  gpointer *value);
		return g_hash_table_iter_next(gHashTableIter, key, value);
	}
	
	/**
	 * Returns the GHashTable associated with iter.
	 * Since 2.16
	 * Returns: the GHashTable associated with iter.
	 */
	public HashTable getHashTable()
	{
		// GHashTable* g_hash_table_iter_get_hash_table (GHashTableIter *iter);
		auto p = g_hash_table_iter_get_hash_table(gHashTableIter);
		if(p is null)
		{
			return null;
		}
		return new HashTable(cast(GHashTable*) p);
	}
	
	/**
	 * Removes the key/value pair currently pointed to by the iterator
	 * from its associated GHashTable. Can only be called after
	 * g_hash_table_iter_next() returned TRUE, and cannot be called more
	 * than once for the same key/value pair.
	 * If the GHashTable was created using g_hash_table_new_full(), the
	 * key and value are freed using the supplied destroy functions, otherwise
	 * you have to make sure that any dynamically allocated values are freed
	 * yourself.
	 * Since 2.16
	 */
	public void remove()
	{
		// void g_hash_table_iter_remove (GHashTableIter *iter);
		g_hash_table_iter_remove(gHashTableIter);
	}
	
	/**
	 * Removes the key/value pair currently pointed to by the iterator
	 * from its associated GHashTable, without calling the key and value
	 * destroy functions. Can only be called after
	 * g_hash_table_iter_next() returned TRUE, and cannot be called more
	 * than once for the same key/value pair.
	 * Since 2.16
	 */
	public void steal()
	{
		// void g_hash_table_iter_steal (GHashTableIter *iter);
		g_hash_table_iter_steal(gHashTableIter);
	}
}
