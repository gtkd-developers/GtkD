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
 * inFile  = glib-Balanced-Binary-Trees.html
 * outPack = glib
 * outFile = BBTree
 * strct   = GTree
 * realStrct=
 * ctorStrct=
 * clss    = BBTree
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tree_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * 	- glib.Dataset
 * structWrap:
 * 	- GDataset* -> Dataset
 * 	- GList* -> List*
 * local aliases:
 */

module glib.BBTree;

private import gtkc.glibtypes;

private import gtkc.glib;

private import glib.ListG;
private import glib.Dataset;

/**
 * Description
 * The GTree structure and its associated functions provide a sorted collection
 * of key/value pairs optimized for searching and traversing in order.
 * To create a new GTree use g_tree_new().
 * To insert a key/value pair into a GTree use g_tree_insert().
 * To lookup the value corresponding to a given key, use g_tree_lookup() and
 * g_tree_lookup_extended().
 * To find out the number of nodes in a GTree, use g_tree_nnodes().
 * To get the height of a GTree, use g_tree_height().
 * To traverse a GTree, calling a function for each node visited in the
 * traversal, use g_tree_foreach().
 * To remove a key/value pair use g_tree_remove().
 * To destroy a GTree, use g_tree_destroy().
 */
public class BBTree
{
	
	/** the main Gtk struct */
	protected GTree* gTree;
	
	
	public GTree* getBBTreeStruct()
	{
		return gTree;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTree;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTree* gTree)
	{
		this.gTree = gTree;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GTree.
	 * key_compare_func:
	 *  the function used to order the nodes in the GTree.
	 *  It should return values similar to the standard strcmp() function -
	 *  0 if the two arguments are equal, a negative value if the first argument
	 *  comes before the second, or a positive value if the first argument comes
	 *  after the second.
	 * Returns:
	 *  a new GTree.
	 */
	public this (GCompareFunc keyCompareFunc)
	{
		// GTree* g_tree_new (GCompareFunc key_compare_func);
		this(cast(GTree*)g_tree_new(keyCompareFunc) );
	}
	
	/**
	 * Creates a new GTree with a comparison function that accepts user data.
	 * See g_tree_new() for more details.
	 * key_compare_func:
	 *  qsort()-style comparison function.
	 * key_compare_data:
	 *  data to pass to comparison function.
	 * Returns:
	 *  a new GTree.
	 */
	public this (GCompareDataFunc keyCompareFunc, void* keyCompareData)
	{
		// GTree* g_tree_new_with_data (GCompareDataFunc key_compare_func,  gpointer key_compare_data);
		this(cast(GTree*)g_tree_new_with_data(keyCompareFunc, keyCompareData) );
	}
	
	/**
	 * Creates a new GTree like g_tree_new() and allows to specify functions
	 * to free the memory allocated for the key and value that get called when
	 * removing the entry from the GTree.
	 * key_compare_func:
	 *  qsort()-style comparison function.
	 * key_compare_data:
	 *  data to pass to comparison function.
	 * key_destroy_func:
	 *  a function to free the memory allocated for the key
	 *  used when removing the entry from the GTree or NULL if you don't
	 *  want to supply such a function.
	 * value_destroy_func:
	 *  a function to free the memory allocated for the
	 *  value used when removing the entry from the GTree or NULL if you
	 *  don't want to supply such a function.
	 * Returns:
	 *  a new GTree.
	 */
	public this (GCompareDataFunc keyCompareFunc, void* keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)
	{
		// GTree* g_tree_new_full (GCompareDataFunc key_compare_func,  gpointer key_compare_data,  GDestroyNotify key_destroy_func,  GDestroyNotify value_destroy_func);
		this(cast(GTree*)g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc) );
	}
	
	/**
	 * Inserts a key/value pair into a GTree. If the given key already exists
	 * in the GTree its corresponding value is set to the new value. If you
	 * supplied a value_destroy_func when creating the GTree, the old value is
	 * freed using that function. If you supplied a key_destroy_func when
	 * creating the GTree, the passed key is freed using that function.
	 * The tree is automatically 'balanced' as new key/value pairs are added,
	 * so that the distance from the root to every leaf is as small as possible.
	 * tree:
	 *  a GTree.
	 * key:
	 *  the key to insert.
	 * value:
	 *  the value corresponding to the key.
	 */
	public void insert(void* key, void* value)
	{
		// void g_tree_insert (GTree *tree,  gpointer key,  gpointer value);
		g_tree_insert(gTree, key, value);
	}
	
	/**
	 * Inserts a new key and value into a GTree similar to g_tree_insert().
	 * The difference is that if the key already exists in the GTree, it gets
	 * replaced by the new key. If you supplied a value_destroy_func when
	 * creating the GTree, the old value is freed using that function. If you
	 * supplied a key_destroy_func when creating the GTree, the old key is
	 * freed using that function.
	 * The tree is automatically 'balanced' as new key/value pairs are added,
	 * so that the distance from the root to every leaf is as small as possible.
	 * tree:
	 *  a GTree.
	 * key:
	 *  the key to insert.
	 * value:
	 *  the value corresponding to the key.
	 */
	public void replace(void* key, void* value)
	{
		// void g_tree_replace (GTree *tree,  gpointer key,  gpointer value);
		g_tree_replace(gTree, key, value);
	}
	
	/**
	 * Gets the number of nodes in a GTree.
	 * tree:
	 *  a GTree.
	 * Returns:
	 *  the number of nodes in the GTree.
	 */
	public int nnodes()
	{
		// gint g_tree_nnodes (GTree *tree);
		return g_tree_nnodes(gTree);
	}
	
	/**
	 * Gets the height of a GTree.
	 * If the GTree contains no nodes, the height is 0.
	 * If the GTree contains only one root node the height is 1.
	 * If the root node has children the height is 2, etc.
	 * tree:
	 *  a GTree.
	 * Returns:
	 *  the height of the GTree.
	 */
	public int height()
	{
		// gint g_tree_height (GTree *tree);
		return g_tree_height(gTree);
	}
	
	/**
	 * Gets the value corresponding to the given key. Since a GTree is
	 * automatically balanced as key/value pairs are added, key lookup is very
	 * fast.
	 * tree:
	 *  a GTree.
	 * key:
	 *  the key to look up.
	 * Returns:
	 *  the value corresponding to the key, or NULL if the key was
	 * not found.
	 */
	public void* lookup(void* key)
	{
		// gpointer g_tree_lookup (GTree *tree,  gconstpointer key);
		return g_tree_lookup(gTree, key);
	}
	
	/**
	 * Looks up a key in the GTree, returning the original key and the
	 * associated value and a gboolean which is TRUE if the key was found. This
	 * is useful if you need to free the memory allocated for the original key,
	 * for example before calling g_tree_remove().
	 * tree:
	 *  a GTree.
	 * lookup_key:
	 *  the key to look up.
	 * orig_key:
	 *  returns the original key.
	 * value:
	 *  returns the value associated with the key.
	 * Returns:
	 *  TRUE if the key was found in the GTree.
	 */
	public int lookupExtended(void* lookupKey, void** origKey, void** value)
	{
		// gboolean g_tree_lookup_extended (GTree *tree,  gconstpointer lookup_key,  gpointer *orig_key,  gpointer *value);
		return g_tree_lookup_extended(gTree, lookupKey, origKey, value);
	}
	
	/**
	 * Calls the given function for each of the key/value pairs in the GTree.
	 * The function is passed the key and value of each pair, and the given
	 * data parameter. The tree is traversed in sorted order.
	 * The tree may not be modified while iterating over it (you can't
	 * add/remove items). To remove all items matching a predicate, you need
	 * to add each item to a list in your GTraverseFunc as you walk over
	 * the tree, then walk the list and remove each item.
	 * tree:
	 *  a GTree.
	 * func:
	 *  the function to call for each node visited. If this function
	 *  returns TRUE, the traversal is stopped.
	 * user_data:
	 *  user data to pass to the function.
	 */
	public void foreac(GTraverseFunc func, void* userData)
	{
		// void g_tree_foreach (GTree *tree,  GTraverseFunc func,  gpointer user_data);
		g_tree_foreach(gTree, func, userData);
	}
	
	/**
	 * Warning
	 * g_tree_traverse has been deprecated since version 2.2 and should not be used in newly-written code. The order of a balanced tree is somewhat arbitrary. If you
	 * just want to visit all nodes in sorted order, use g_tree_foreach()
	 * instead. If you really need to visit nodes in a different order, consider
	 * using an N-ary Tree.
	 * Calls the given function for each node in the GTree.
	 * tree:
	 *  a GTree.
	 * traverse_func:
	 *  the function to call for each node visited. If this
	 *  function returns TRUE, the traversal is stopped.
	 * traverse_type:
	 *  the order in which nodes are visited, one of G_IN_ORDER,
	 *  G_PRE_ORDER and G_POST_ORDER.
	 * user_data:
	 *  user data to pass to the function.
	 */
	public void traverse(GTraverseFunc traverseFunc, GTraverseType traverseType, void* userData)
	{
		// void g_tree_traverse (GTree *tree,  GTraverseFunc traverse_func,  GTraverseType traverse_type,  gpointer user_data);
		g_tree_traverse(gTree, traverseFunc, traverseType, userData);
	}
	
	
	
	/**
	 * Searches a GTree using search_func.
	 * The search_func is called with a pointer to the key of a key/value pair in
	 * the tree, and the passed in user_data. If search_func returns 0 for a
	 * key/value pair, then g_tree_search_func() will return the value of that
	 * pair. If search_func returns -1, searching will proceed among the
	 * key/value pairs that have a smaller key; if search_func returns 1,
	 * searching will proceed among the key/value pairs that have a larger key.
	 * tree:
	 *  a GTree.
	 * search_func:
	 *  a function used to search the GTree.
	 * user_data:
	 *  the data passed as the second argument to the search_func
	 * function.
	 * Returns:
	 *  the value corresponding to the found key, or NULL if the key
	 * was not found.
	 */
	public void* search(GCompareFunc searchFunc, void* userData)
	{
		// gpointer g_tree_search (GTree *tree,  GCompareFunc search_func,  gconstpointer user_data);
		return g_tree_search(gTree, searchFunc, userData);
	}
	
	/**
	 * Removes a key/value pair from a GTree.
	 * If the GTree was created using g_tree_new_full(), the key and value
	 * are freed using the supplied destroy functions, otherwise you have to
	 * make sure that any dynamically allocated values are freed yourself.
	 * If the key does not exist in the GTree, the function does nothing.
	 * tree:
	 *  a GTree.
	 * key:
	 *  the key to remove.
	 * Returns:
	 *  TRUE if the key was found (prior to 2.8, this function returned
	 *  nothing)
	 */
	public int remove(void* key)
	{
		// gboolean g_tree_remove (GTree *tree,  gconstpointer key);
		return g_tree_remove(gTree, key);
	}
	
	/**
	 * Removes a key and its associated value from a GTree without calling
	 * the key and value destroy functions.
	 * If the key does not exist in the GTree, the function does nothing.
	 * tree:
	 *  a GTree.
	 * key:
	 *  the key to remove.
	 * Returns:
	 *  TRUE if the key was found (prior to 2.8, this function returned
	 *  nothing)
	 */
	public int steal(void* key)
	{
		// gboolean g_tree_steal (GTree *tree,  gconstpointer key);
		return g_tree_steal(gTree, key);
	}
	
	/**
	 * Destroys the GTree. If keys and/or values are dynamically allocated, you
	 * should either free them first or create the GTree using g_tree_new_full().
	 * In the latter case the destroy functions you supplied will be called on
	 * all keys and values before destroying the GTree.
	 * tree:
	 *  a GTree.
	 */
	public void destroy()
	{
		// void g_tree_destroy (GTree *tree);
		g_tree_destroy(gTree);
	}
}
