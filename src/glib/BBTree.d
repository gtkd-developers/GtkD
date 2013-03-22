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
 * inFile  = glib-Balanced-Binary-Trees.html
 * outPack = glib
 * outFile = BBTree
 * strct   = GTree
 * realStrct=
 * ctorStrct=
 * clss    = BBTree
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tree_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GTree* -> BBTree
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.BBTree;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import gtkc.paths;
private import gtkc.Loader;




/**
 * The GTree structure and its associated functions provide a sorted
 * collection of key/value pairs optimized for searching and traversing
 * in order.
 *
 * To create a new GTree use g_tree_new().
 *
 * To insert a key/value pair into a GTree use g_tree_insert().
 *
 * To lookup the value corresponding to a given key, use
 * g_tree_lookup() and g_tree_lookup_extended().
 *
 * To find out the number of nodes in a GTree, use g_tree_nnodes(). To
 * get the height of a GTree, use g_tree_height().
 *
 * To traverse a GTree, calling a function for each node visited in
 * the traversal, use g_tree_foreach().
 *
 * To remove a key/value pair use g_tree_remove().
 *
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
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gTree !is null )
		{
			g_tree_unref(gTree);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new GTree.
	 * Params:
	 * keyCompareFunc = the function used to order the nodes in the GTree.
	 * It should return values similar to the standard strcmp() function -
	 * 0 if the two arguments are equal, a negative value if the first argument
	 * comes before the second, or a positive value if the first argument comes
	 * after the second.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCompareFunc keyCompareFunc)
	{
		// GTree * g_tree_new (GCompareFunc key_compare_func);
		auto p = g_tree_new(keyCompareFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tree_new(keyCompareFunc)");
		}
		this(cast(GTree*) p);
	}
	
	/**
	 * Increments the reference count of tree by one. It is safe to call
	 * this function from any thread.
	 * Since 2.22
	 * Returns: the passed in GTree.
	 */
	public BBTree doref()
	{
		// GTree * g_tree_ref (GTree *tree);
		auto p = g_tree_ref(gTree);
		
		if(p is null)
		{
			return null;
		}
		
		return new BBTree(cast(GTree*) p);
	}
	
	/**
	 * Decrements the reference count of tree by one. If the reference count
	 * drops to 0, all keys and values will be destroyed (if destroy
	 * functions were specified) and all memory allocated by tree will be
	 * released.
	 * It is safe to call this function from any thread.
	 * Since 2.22
	 */
	public void unref()
	{
		// void g_tree_unref (GTree *tree);
		g_tree_unref(gTree);
	}
	
	/**
	 * Creates a new GTree with a comparison function that accepts user data.
	 * See g_tree_new() for more details.
	 * Params:
	 * keyCompareFunc = qsort()-style comparison function.
	 * keyCompareData = data to pass to comparison function.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCompareDataFunc keyCompareFunc, void* keyCompareData)
	{
		// GTree * g_tree_new_with_data (GCompareDataFunc key_compare_func,  gpointer key_compare_data);
		auto p = g_tree_new_with_data(keyCompareFunc, keyCompareData);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tree_new_with_data(keyCompareFunc, keyCompareData)");
		}
		this(cast(GTree*) p);
	}
	
	/**
	 * Creates a new GTree like g_tree_new() and allows to specify functions
	 * to free the memory allocated for the key and value that get called when
	 * removing the entry from the GTree.
	 * Params:
	 * keyCompareFunc = qsort()-style comparison function.
	 * keyCompareData = data to pass to comparison function.
	 * keyDestroyFunc = a function to free the memory allocated for the key
	 * used when removing the entry from the GTree or NULL if you don't
	 * want to supply such a function.
	 * valueDestroyFunc = a function to free the memory allocated for the
	 * value used when removing the entry from the GTree or NULL if you
	 * don't want to supply such a function.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GCompareDataFunc keyCompareFunc, void* keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)
	{
		// GTree * g_tree_new_full (GCompareDataFunc key_compare_func,  gpointer key_compare_data,  GDestroyNotify key_destroy_func,  GDestroyNotify value_destroy_func);
		auto p = g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc)");
		}
		this(cast(GTree*) p);
	}
	
	/**
	 * Inserts a key/value pair into a GTree. If the given key already exists
	 * in the GTree its corresponding value is set to the new value. If you
	 * supplied a value_destroy_func when creating the GTree, the old value is
	 * freed using that function. If you supplied a key_destroy_func when
	 * creating the GTree, the passed key is freed using that function.
	 * The tree is automatically 'balanced' as new key/value pairs are added,
	 * so that the distance from the root to every leaf is as small as possible.
	 * Params:
	 * key = the key to insert.
	 * value = the value corresponding to the key.
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
	 * Params:
	 * key = the key to insert.
	 * value = the value corresponding to the key.
	 */
	public void replace(void* key, void* value)
	{
		// void g_tree_replace (GTree *tree,  gpointer key,  gpointer value);
		g_tree_replace(gTree, key, value);
	}
	
	/**
	 * Gets the number of nodes in a GTree.
	 * Returns: the number of nodes in the GTree.
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
	 * Returns: the height of the GTree.
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
	 * Params:
	 * key = the key to look up.
	 * Returns: the value corresponding to the key, or NULL if the key was not found.
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
	 * Params:
	 * lookupKey = the key to look up.
	 * origKey = returns the original key.
	 * value = returns the value associated with the key.
	 * Returns: TRUE if the key was found in the GTree.
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
	 * Params:
	 * func = the function to call for each node visited.
	 * If this function returns TRUE, the traversal is stopped.
	 * userData = user data to pass to the function.
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
	 * Params:
	 * traverseFunc = the function to call for each node visited. If this
	 * function returns TRUE, the traversal is stopped.
	 * traverseType = the order in which nodes are visited, one of G_IN_ORDER,
	 * G_PRE_ORDER and G_POST_ORDER.
	 * userData = user data to pass to the function.
	 */
	public void traverse(GTraverseFunc traverseFunc, GTraverseType traverseType, void* userData)
	{
		// void g_tree_traverse (GTree *tree,  GTraverseFunc traverse_func,  GTraverseType traverse_type,  gpointer user_data);
		g_tree_traverse(gTree, traverseFunc, traverseType, userData);
	}
	
	/**
	 * Searches a GTree using search_func.
	 * The search_func is called with a pointer to the key of a key/value
	 * pair in the tree, and the passed in user_data. If search_func returns
	 * 0 for a key/value pair, then the corresponding value is returned as
	 * the result of g_tree_search(). If search_func returns -1, searching
	 * will proceed among the key/value pairs that have a smaller key; if
	 * search_func returns 1, searching will proceed among the key/value
	 * pairs that have a larger key.
	 * Params:
	 * searchFunc = a function used to search the GTree
	 * userData = the data passed as the second argument to search_func
	 * Returns: the value corresponding to the found key, or NULL if the key was not found.
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
	 * Params:
	 * key = the key to remove.
	 * Returns: TRUE if the key was found (prior to 2.8, this function returned nothing)
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
	 * Params:
	 * key = the key to remove.
	 * Returns: TRUE if the key was found (prior to 2.8, this function returned nothing)
	 */
	public int steal(void* key)
	{
		// gboolean g_tree_steal (GTree *tree,  gconstpointer key);
		return g_tree_steal(gTree, key);
	}
	
	/**
	 * Removes all keys and values from the GTree and decreases its
	 * reference count by one. If keys and/or values are dynamically
	 * allocated, you should either free them first or create the GTree
	 * using g_tree_new_full(). In the latter case the destroy functions
	 * you supplied will be called on all keys and values before destroying
	 * the GTree.
	 */
	public void destroy()
	{
		// void g_tree_destroy (GTree *tree);
		g_tree_destroy(gTree);
	}
}
