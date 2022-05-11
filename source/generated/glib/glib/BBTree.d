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


module glib.BBTree;

private import glib.ConstructionException;
private import glib.TreeNode;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The GTree struct is an opaque data structure representing a
 * [balanced binary tree][glib-Balanced-Binary-Trees]. It should be
 * accessed only by using the following functions.
 */
public class BBTree
{
	/** the main Gtk struct */
	protected GTree* gTree;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTree* getBBTreeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTree;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTree;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTree* gTree, bool ownedRef = false)
	{
		this.gTree = gTree;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_tree_unref(gTree);
	}


	/**
	 * Creates a new #GTree.
	 *
	 * Params:
	 *     keyCompareFunc = the function used to order the nodes in the #GTree.
	 *         It should return values similar to the standard strcmp() function -
	 *         0 if the two arguments are equal, a negative value if the first argument
	 *         comes before the second, or a positive value if the first argument comes
	 *         after the second.
	 *
	 * Returns: a newly allocated #GTree
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GCompareFunc keyCompareFunc)
	{
		auto __p = g_tree_new(keyCompareFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GTree*) __p);
	}

	/**
	 * Creates a new #GTree like g_tree_new() and allows to specify functions
	 * to free the memory allocated for the key and value that get called when
	 * removing the entry from the #GTree.
	 *
	 * Params:
	 *     keyCompareFunc = qsort()-style comparison function
	 *     keyCompareData = data to pass to comparison function
	 *     keyDestroyFunc = a function to free the memory allocated for the key
	 *         used when removing the entry from the #GTree or %NULL if you don't
	 *         want to supply such a function
	 *     valueDestroyFunc = a function to free the memory allocated for the
	 *         value used when removing the entry from the #GTree or %NULL if you
	 *         don't want to supply such a function
	 *
	 * Returns: a newly allocated #GTree
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GCompareDataFunc keyCompareFunc, void* keyCompareData, GDestroyNotify keyDestroyFunc, GDestroyNotify valueDestroyFunc)
	{
		auto __p = g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(GTree*) __p);
	}

	/**
	 * Creates a new #GTree with a comparison function that accepts user data.
	 * See g_tree_new() for more details.
	 *
	 * Params:
	 *     keyCompareFunc = qsort()-style comparison function
	 *     keyCompareData = data to pass to comparison function
	 *
	 * Returns: a newly allocated #GTree
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GCompareDataFunc keyCompareFunc, void* keyCompareData)
	{
		auto __p = g_tree_new_with_data(keyCompareFunc, keyCompareData);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_data");
		}

		this(cast(GTree*) __p);
	}

	/**
	 * Removes all keys and values from the #GTree and decreases its
	 * reference count by one. If keys and/or values are dynamically
	 * allocated, you should either free them first or create the #GTree
	 * using g_tree_new_full(). In the latter case the destroy functions
	 * you supplied will be called on all keys and values before destroying
	 * the #GTree.
	 */
	public void destroy()
	{
		g_tree_destroy(gTree);
	}

	alias foreac = foreach_;
	/**
	 * Calls the given function for each of the key/value pairs in the #GTree.
	 * The function is passed the key and value of each pair, and the given
	 * @data parameter. The tree is traversed in sorted order.
	 *
	 * The tree may not be modified while iterating over it (you can't
	 * add/remove items). To remove all items matching a predicate, you need
	 * to add each item to a list in your #GTraverseFunc as you walk over
	 * the tree, then walk the list and remove each item.
	 *
	 * Params:
	 *     func = the function to call for each node visited.
	 *         If this function returns %TRUE, the traversal is stopped.
	 *     userData = user data to pass to the function
	 */
	public void foreach_(GTraverseFunc func, void* userData)
	{
		g_tree_foreach(gTree, func, userData);
	}

	/**
	 * Calls the given function for each of the nodes in the #GTree.
	 * The function is passed the pointer to the particular node, and the given
	 * @data parameter. The tree traversal happens in-order.
	 *
	 * The tree may not be modified while iterating over it (you can't
	 * add/remove items). To remove all items matching a predicate, you need
	 * to add each item to a list in your #GTraverseFunc as you walk over
	 * the tree, then walk the list and remove each item.
	 *
	 * Params:
	 *     func = the function to call for each node visited.
	 *         If this function returns %TRUE, the traversal is stopped.
	 *     userData = user data to pass to the function
	 *
	 * Since: 2.68
	 */
	public void foreachNode(GTraverseNodeFunc func, void* userData)
	{
		g_tree_foreach_node(gTree, func, userData);
	}

	/**
	 * Gets the height of a #GTree.
	 *
	 * If the #GTree contains no nodes, the height is 0.
	 * If the #GTree contains only one root node the height is 1.
	 * If the root node has children the height is 2, etc.
	 *
	 * Returns: the height of @tree
	 */
	public int height()
	{
		return g_tree_height(gTree);
	}

	/**
	 * Inserts a key/value pair into a #GTree.
	 *
	 * Inserts a new key and value into a #GTree as g_tree_insert_node() does,
	 * only this function does not return the inserted or set node.
	 *
	 * Params:
	 *     key = the key to insert
	 *     value = the value corresponding to the key
	 */
	public void insert(void* key, void* value)
	{
		g_tree_insert(gTree, key, value);
	}

	/**
	 * Inserts a key/value pair into a #GTree.
	 *
	 * If the given key already exists in the #GTree its corresponding value
	 * is set to the new value. If you supplied a @value_destroy_func when
	 * creating the #GTree, the old value is freed using that function. If
	 * you supplied a @key_destroy_func when creating the #GTree, the passed
	 * key is freed using that function.
	 *
	 * The tree is automatically 'balanced' as new key/value pairs are added,
	 * so that the distance from the root to every leaf is as small as possible.
	 * The cost of maintaining a balanced tree while inserting new key/value
	 * result in a O(n log(n)) operation where most of the other operations
	 * are O(log(n)).
	 *
	 * Params:
	 *     key = the key to insert
	 *     value = the value corresponding to the key
	 *
	 * Returns: the inserted (or set) node.
	 *
	 * Since: 2.68
	 */
	public TreeNode insertNode(void* key, void* value)
	{
		auto __p = g_tree_insert_node(gTree, key, value);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Gets the value corresponding to the given key. Since a #GTree is
	 * automatically balanced as key/value pairs are added, key lookup
	 * is O(log n) (where n is the number of key/value pairs in the tree).
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Returns: the value corresponding to the key, or %NULL
	 *     if the key was not found
	 */
	public void* lookup(void* key)
	{
		return g_tree_lookup(gTree, key);
	}

	/**
	 * Looks up a key in the #GTree, returning the original key and the
	 * associated value. This is useful if you need to free the memory
	 * allocated for the original key, for example before calling
	 * g_tree_remove().
	 *
	 * Params:
	 *     lookupKey = the key to look up
	 *     origKey = returns the original key
	 *     value = returns the value associated with the key
	 *
	 * Returns: %TRUE if the key was found in the #GTree
	 */
	public bool lookupExtended(void* lookupKey, out void* origKey, out void* value)
	{
		return g_tree_lookup_extended(gTree, lookupKey, &origKey, &value) != 0;
	}

	/**
	 * Gets the tree node corresponding to the given key. Since a #GTree is
	 * automatically balanced as key/value pairs are added, key lookup
	 * is O(log n) (where n is the number of key/value pairs in the tree).
	 *
	 * Params:
	 *     key = the key to look up
	 *
	 * Returns: the tree node corresponding to
	 *     the key, or %NULL if the key was not found
	 *
	 * Since: 2.68
	 */
	public TreeNode lookupNode(void* key)
	{
		auto __p = g_tree_lookup_node(gTree, key);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Gets the lower bound node corresponding to the given key,
	 * or %NULL if the tree is empty or all the nodes in the tree
	 * have keys that are strictly lower than the searched key.
	 *
	 * The lower bound is the first node that has its key greater
	 * than or equal to the searched key.
	 *
	 * Params:
	 *     key = the key to calculate the lower bound for
	 *
	 * Returns: the tree node corresponding to
	 *     the lower bound, or %NULL if the tree is empty or has only
	 *     keys strictly lower than the searched key.
	 *
	 * Since: 2.68
	 */
	public TreeNode lowerBound(void* key)
	{
		auto __p = g_tree_lower_bound(gTree, key);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Gets the number of nodes in a #GTree.
	 *
	 * Returns: the number of nodes in @tree
	 */
	public int nnodes()
	{
		return g_tree_nnodes(gTree);
	}

	/**
	 * Returns the first in-order node of the tree, or %NULL
	 * for an empty tree.
	 *
	 * Returns: the first node in the tree
	 *
	 * Since: 2.68
	 */
	public TreeNode nodeFirst()
	{
		auto __p = g_tree_node_first(gTree);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Returns the last in-order node of the tree, or %NULL
	 * for an empty tree.
	 *
	 * Returns: the last node in the tree
	 *
	 * Since: 2.68
	 */
	public TreeNode nodeLast()
	{
		auto __p = g_tree_node_last(gTree);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	alias doref = ref_;
	/**
	 * Increments the reference count of @tree by one.
	 *
	 * It is safe to call this function from any thread.
	 *
	 * Returns: the passed in #GTree
	 *
	 * Since: 2.22
	 */
	public BBTree ref_()
	{
		auto __p = g_tree_ref(gTree);

		if(__p is null)
		{
			return null;
		}

		return new BBTree(cast(GTree*) __p, true);
	}

	/**
	 * Removes a key/value pair from a #GTree.
	 *
	 * If the #GTree was created using g_tree_new_full(), the key and value
	 * are freed using the supplied destroy functions, otherwise you have to
	 * make sure that any dynamically allocated values are freed yourself.
	 * If the key does not exist in the #GTree, the function does nothing.
	 *
	 * The cost of maintaining a balanced tree while removing a key/value
	 * result in a O(n log(n)) operation where most of the other operations
	 * are O(log(n)).
	 *
	 * Params:
	 *     key = the key to remove
	 *
	 * Returns: %TRUE if the key was found (prior to 2.8, this function
	 *     returned nothing)
	 */
	public bool remove(void* key)
	{
		return g_tree_remove(gTree, key) != 0;
	}

	/**
	 * Removes all nodes from a #GTree and destroys their keys and values,
	 * then resets the #GTree’s root to %NULL.
	 *
	 * Since: 2.70
	 */
	public void removeAll()
	{
		g_tree_remove_all(gTree);
	}

	/**
	 * Inserts a new key and value into a #GTree as g_tree_replace_node() does,
	 * only this function does not return the inserted or set node.
	 *
	 * Params:
	 *     key = the key to insert
	 *     value = the value corresponding to the key
	 */
	public void replace(void* key, void* value)
	{
		g_tree_replace(gTree, key, value);
	}

	/**
	 * Inserts a new key and value into a #GTree similar to g_tree_insert_node().
	 * The difference is that if the key already exists in the #GTree, it gets
	 * replaced by the new key. If you supplied a @value_destroy_func when
	 * creating the #GTree, the old value is freed using that function. If you
	 * supplied a @key_destroy_func when creating the #GTree, the old key is
	 * freed using that function.
	 *
	 * The tree is automatically 'balanced' as new key/value pairs are added,
	 * so that the distance from the root to every leaf is as small as possible.
	 *
	 * Params:
	 *     key = the key to insert
	 *     value = the value corresponding to the key
	 *
	 * Returns: the inserted (or set) node.
	 *
	 * Since: 2.68
	 */
	public TreeNode replaceNode(void* key, void* value)
	{
		auto __p = g_tree_replace_node(gTree, key, value);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Searches a #GTree using @search_func.
	 *
	 * The @search_func is called with a pointer to the key of a key/value
	 * pair in the tree, and the passed in @user_data. If @search_func returns
	 * 0 for a key/value pair, then the corresponding value is returned as
	 * the result of g_tree_search(). If @search_func returns -1, searching
	 * will proceed among the key/value pairs that have a smaller key; if
	 * @search_func returns 1, searching will proceed among the key/value
	 * pairs that have a larger key.
	 *
	 * Params:
	 *     searchFunc = a function used to search the #GTree
	 *     userData = the data passed as the second argument to @search_func
	 *
	 * Returns: the value corresponding to the found key, or %NULL
	 *     if the key was not found
	 */
	public void* search(GCompareFunc searchFunc, void* userData)
	{
		return g_tree_search(gTree, searchFunc, userData);
	}

	/**
	 * Searches a #GTree using @search_func.
	 *
	 * The @search_func is called with a pointer to the key of a key/value
	 * pair in the tree, and the passed in @user_data. If @search_func returns
	 * 0 for a key/value pair, then the corresponding node is returned as
	 * the result of g_tree_search(). If @search_func returns -1, searching
	 * will proceed among the key/value pairs that have a smaller key; if
	 * @search_func returns 1, searching will proceed among the key/value
	 * pairs that have a larger key.
	 *
	 * Params:
	 *     searchFunc = a function used to search the #GTree
	 *     userData = the data passed as the second argument to @search_func
	 *
	 * Returns: the node corresponding to the
	 *     found key, or %NULL if the key was not found
	 *
	 * Since: 2.68
	 */
	public TreeNode searchNode(GCompareFunc searchFunc, void* userData)
	{
		auto __p = g_tree_search_node(gTree, searchFunc, userData);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}

	/**
	 * Removes a key and its associated value from a #GTree without calling
	 * the key and value destroy functions.
	 *
	 * If the key does not exist in the #GTree, the function does nothing.
	 *
	 * Params:
	 *     key = the key to remove
	 *
	 * Returns: %TRUE if the key was found (prior to 2.8, this function
	 *     returned nothing)
	 */
	public bool steal(void* key)
	{
		return g_tree_steal(gTree, key) != 0;
	}

	/**
	 * Calls the given function for each node in the #GTree.
	 *
	 * Deprecated: The order of a balanced tree is somewhat arbitrary.
	 * If you just want to visit all nodes in sorted order, use
	 * g_tree_foreach() instead. If you really need to visit nodes in
	 * a different order, consider using an [n-ary tree][glib-N-ary-Trees].
	 *
	 * Params:
	 *     traverseFunc = the function to call for each node visited. If this
	 *         function returns %TRUE, the traversal is stopped.
	 *     traverseType = the order in which nodes are visited, one of %G_IN_ORDER,
	 *         %G_PRE_ORDER and %G_POST_ORDER
	 *     userData = user data to pass to the function
	 */
	public void traverse(GTraverseFunc traverseFunc, GTraverseType traverseType, void* userData)
	{
		g_tree_traverse(gTree, traverseFunc, traverseType, userData);
	}

	/**
	 * Decrements the reference count of @tree by one.
	 * If the reference count drops to 0, all keys and values will
	 * be destroyed (if destroy functions were specified) and all
	 * memory allocated by @tree will be released.
	 *
	 * It is safe to call this function from any thread.
	 *
	 * Since: 2.22
	 */
	public void unref()
	{
		g_tree_unref(gTree);
	}

	/**
	 * Gets the upper bound node corresponding to the given key,
	 * or %NULL if the tree is empty or all the nodes in the tree
	 * have keys that are lower than or equal to the searched key.
	 *
	 * The upper bound is the first node that has its key strictly greater
	 * than the searched key.
	 *
	 * Params:
	 *     key = the key to calculate the upper bound for
	 *
	 * Returns: the tree node corresponding to the
	 *     upper bound, or %NULL if the tree is empty or has only keys
	 *     lower than or equal to the searched key.
	 *
	 * Since: 2.68
	 */
	public TreeNode upperBound(void* key)
	{
		auto __p = g_tree_upper_bound(gTree, key);

		if(__p is null)
		{
			return null;
		}

		return new TreeNode(cast(GTreeNode*) __p);
	}
}
