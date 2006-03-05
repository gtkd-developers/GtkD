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
 * outFile = Node
 * strct   = GNode
 * realStrct=
 * clss    = Node
 * extend  = 
 * prefixes:
 * 	- g_node_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.BBTree
 * structWrap:
 * 	- GNode* -> Node
 * 	- GTree* -> BBTree
 * local aliases:
 */

module glib.Node;

private import glib.typedefs;

private import lib.glib;

private import glib.BBTree;
/**
 * Description
 * The GNode struct and its associated functions provide a N-ary tree data
 * structure, where nodes in the tree can contain arbitrary data.
 * To create a new tree use g_node_new().
 * To insert a node into a tree use g_node_insert(), g_node_insert_before(),
 * g_node_append() and g_node_prepend().
 * To create a new node and insert it into a tree use g_node_insert_data(),
 * g_node_insert_data_before(), g_node_append_data() and g_node_prepend_data().
 * To reverse the children of a node use g_node_reverse_children().
 * To find a node use g_node_get_root(), g_node_find(), g_node_find_child(),
 * g_node_child_index(), g_node_child_position(),
 * g_node_first_child(), g_node_last_child(),
 * g_node_nth_child(), g_node_first_sibling(), g_node_prev_sibling(),
 * g_node_next_sibling() or g_node_last_sibling().
 * To get information about a node or tree use G_NODE_IS_LEAF(),
 * G_NODE_IS_ROOT(), g_node_depth(), g_node_n_nodes(), g_node_n_children(),
 * g_node_is_ancestor() or g_node_max_height().
 * To traverse a tree, calling a function for each node visited in the
 * traversal, use g_node_traverse() or g_node_children_foreach().
 * To remove a node or subtree from a tree use g_node_unlink() or
 * g_node_destroy().
 */
public class Node
{
	
	/** the main Gtk struct */
	protected GNode* gNode;
	
	
	public GNode* getNodeStruct()
	{
		return gNode;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gNode;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GNode* gNode)
	{
		this.gNode = gNode;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GNode containing the given data.
	 * Used to create the first node in a tree.
	 * data:
	 * the data of the new node.
	 * Returns:
	 * a new GNode.
	 */
	public this (void* data)
	{
		// GNode* g_node_new (gpointer data);
		this(cast(GNode*)g_node_new(data) );
	}
	
	/**
	 * Recursively copies a GNode (but does not deep-copy the data inside the nodes,
	 * see g_node_copy_deep() if you need that).
	 * node:
	 * a GNode.
	 * Returns:
	 * a new GNode containing the same data pointers.
	 */
	public Node copy()
	{
		// GNode* g_node_copy (GNode *node);
		return new Node( g_node_copy(gNode) );
	}
	
	
	/**
	 * Recursively copies a GNode and its data.
	 * node:
	 *  a GNode
	 * copy_func:
	 *  the function which is called to copy the data inside each node,
	 *  or NULL to use the original data.
	 * data:
	 *  data to pass to copy_func
	 * Returns:
	 *  a new GNode containing copies of the data in node.
	 * Since 2.4
	 */
	public Node copyDeep(GCopyFunc copyFunc, void* data)
	{
		// GNode* g_node_copy_deep (GNode *node,  GCopyFunc copy_func,  gpointer data);
		return new Node( g_node_copy_deep(gNode, copyFunc, data) );
	}
	
	/**
	 * Inserts a GNode beneath the parent at the given position.
	 * parent:
	 * the GNode to place node under.
	 * position:
	 * the position to place node at, with respect to its siblings.
	 * If position is -1, node is inserted as the last child of parent.
	 * node:
	 * the GNode to insert.
	 * Returns:
	 * the inserted GNode.
	 */
	public Node insert(int position, Node node)
	{
		// GNode* g_node_insert (GNode *parent,  gint position,  GNode *node);
		return new Node( g_node_insert(gNode, position, (node is null) ? null : node.getNodeStruct()) );
	}
	
	/**
	 * Inserts a GNode beneath the parent before the given sibling.
	 * parent:
	 * the GNode to place node under.
	 * sibling:
	 * the sibling GNode to place node before. If sibling is NULL,
	 * the node is inserted as the last child of parent.
	 * node:
	 * the GNode to insert.
	 * Returns:
	 * the inserted GNode.
	 */
	public Node insertBefore(Node sibling, Node node)
	{
		// GNode* g_node_insert_before (GNode *parent,  GNode *sibling,  GNode *node);
		return new Node( g_node_insert_before(gNode, (sibling is null) ? null : sibling.getNodeStruct(), (node is null) ? null : node.getNodeStruct()) );
	}
	
	/**
	 * Inserts a GNode beneath the parent after the given sibling.
	 * parent:
	 * the GNode to place node under.
	 * sibling:
	 * the sibling GNode to place node after. If sibling is NULL,
	 * the node is inserted as the first child of parent.
	 * node:
	 * the GNode to insert.
	 * Returns:
	 * the inserted GNode.
	 */
	public Node insertAfter(Node sibling, Node node)
	{
		// GNode* g_node_insert_after (GNode *parent,  GNode *sibling,  GNode *node);
		return new Node( g_node_insert_after(gNode, (sibling is null) ? null : sibling.getNodeStruct(), (node is null) ? null : node.getNodeStruct()) );
	}
	
	
	/**
	 * Inserts a GNode as the first child of the given parent.
	 * parent:
	 * the GNode to place the new GNode under.
	 * node:
	 * the GNode to insert.
	 * Returns:
	 * the inserted GNode.
	 */
	public Node prepend(Node node)
	{
		// GNode* g_node_prepend (GNode *parent,  GNode *node);
		return new Node( g_node_prepend(gNode, (node is null) ? null : node.getNodeStruct()) );
	}
	
	
	
	
	
	/**
	 * Reverses the order of the children of a GNode.
	 * (It doesn't change the order of the grandchildren.)
	 * node:
	 * a GNode.
	 */
	public void reverseChildren()
	{
		// void g_node_reverse_children (GNode *node);
		g_node_reverse_children(gNode);
	}
	
	/**
	 * Traverses a tree starting at the given root GNode.
	 * It calls the given function for each node visited.
	 * The traversal can be halted at any point by returning TRUE from func.
	 * root:
	 * the root GNode of the tree to traverse.
	 * order:
	 * the order in which nodes are visited - G_IN_ORDER, G_PRE_ORDER,
	 * G_POST_ORDER, or G_LEVEL_ORDER.
	 * flags:
	 * which types of children are to be visited, one of G_TRAVERSE_ALL,
	 * G_TRAVERSE_LEAVES and G_TRAVERSE_NON_LEAVES.
	 * max_depth:
	 * the maximum depth of the traversal. Nodes below this
	 * depth will not be visited. If max_depth is -1 all nodes in the tree are
	 * visited. If depth is 1, only the root is visited. If depth is 2, the root
	 * and its children are visited. And so on.
	 * func:
	 * the function to call for each visited GNode.
	 * data:
	 * user data to pass to the function.
	 */
	public void traverse(GTraverseType order, GTraverseFlags flags, int maxDepth, GNodeTraverseFunc func, void* data)
	{
		// void g_node_traverse (GNode *root,  GTraverseType order,  GTraverseFlags flags,  gint max_depth,  GNodeTraverseFunc func,  gpointer data);
		g_node_traverse(gNode, order, flags, maxDepth, func, data);
	}
	
	
	
	/**
	 * Calls a function for each of the children of a GNode.
	 * Note that it doesn't descend beneath the child nodes.
	 * node:
	 * a GNode.
	 * flags:
	 * which types of children are to be visited, one of G_TRAVERSE_ALL,
	 * G_TRAVERSE_LEAVES and G_TRAVERSE_NON_LEAVES.
	 * func:
	 * the function to call for each visited node.
	 * data:
	 * user data to pass to the function.
	 */
	public void childrenForeach(GTraverseFlags flags, GNodeForeachFunc func, void* data)
	{
		// void g_node_children_foreach (GNode *node,  GTraverseFlags flags,  GNodeForeachFunc func,  gpointer data);
		g_node_children_foreach(gNode, flags, func, data);
	}
	
	
	/**
	 * Gets the root of a tree.
	 * node:
	 * a GNode.
	 * Returns:
	 * the root of the tree.
	 */
	public Node getRoot()
	{
		// GNode* g_node_get_root (GNode *node);
		return new Node( g_node_get_root(gNode) );
	}
	
	/**
	 * Finds a GNode in a tree.
	 * root:
	 * the root GNode of the tree to search.
	 * order:
	 * the order in which nodes are visited - G_IN_ORDER, G_PRE_ORDER,
	 * G_POST_ORDER, or G_LEVEL_ORDER.
	 * flags:
	 * which types of children are to be searched, one of G_TRAVERSE_ALL,
	 * G_TRAVERSE_LEAVES and G_TRAVERSE_NON_LEAVES.
	 * data:
	 * the data to find.
	 * Returns:
	 * the found GNode, or NULL if the data is not found.
	 */
	public Node find(GTraverseType order, GTraverseFlags flags, void* data)
	{
		// GNode* g_node_find (GNode *root,  GTraverseType order,  GTraverseFlags flags,  gpointer data);
		return new Node( g_node_find(gNode, order, flags, data) );
	}
	
	/**
	 * Finds the first child of a GNode with the given data.
	 * node:
	 * a GNode.
	 * flags:
	 * which types of children are to be searched, one of G_TRAVERSE_ALL,
	 * G_TRAVERSE_LEAVES and G_TRAVERSE_NON_LEAVES.
	 * data:
	 * the data to find.
	 * Returns:
	 * the found child GNode, or NULL if the data is not found.
	 */
	public Node findChild(GTraverseFlags flags, void* data)
	{
		// GNode* g_node_find_child (GNode *node,  GTraverseFlags flags,  gpointer data);
		return new Node( g_node_find_child(gNode, flags, data) );
	}
	
	/**
	 * Gets the position of the first child of a GNode which contains the given data.
	 * node:
	 * a GNode.
	 * data:
	 * the data to find.
	 * Returns:
	 * the index of the child of node which contains data, or -1
	 * if the data is not found.
	 */
	public int childIndex(void* data)
	{
		// gint g_node_child_index (GNode *node,  gpointer data);
		return g_node_child_index(gNode, data);
	}
	
	/**
	 * Gets the position of a GNode with respect to its siblings.
	 * child must be a child of node.
	 * The first child is numbered 0, the second 1, and so on.
	 * node:
	 * a GNode.
	 * child:
	 * a child of node.
	 * Returns:
	 * the position of child with respect to its siblings.
	 */
	public int childPosition(Node child)
	{
		// gint g_node_child_position (GNode *node,  GNode *child);
		return g_node_child_position(gNode, (child is null) ? null : child.getNodeStruct());
	}
	
	
	/**
	 * Gets the last child of a GNode.
	 * node:
	 * a GNode (must not be NULL).
	 * Returns:
	 * the last child of node, or NULL if node has no children.
	 */
	public Node lastChild()
	{
		// GNode* g_node_last_child (GNode *node);
		return new Node( g_node_last_child(gNode) );
	}
	
	/**
	 * Gets a child of a GNode, using the given index.
	 * The first child is at index 0. If the index is too big, NULL is returned.
	 * node:
	 * a GNode.
	 * n:
	 * the index of the desired child.
	 * Returns:
	 * the child of node at index n.
	 */
	public Node nthChild(uint n)
	{
		// GNode* g_node_nth_child (GNode *node,  guint n);
		return new Node( g_node_nth_child(gNode, n) );
	}
	
	/**
	 * Gets the first sibling of a GNode.
	 * This could possibly be the node itself.
	 * node:
	 * a GNode.
	 * Returns:
	 * the first sibling of node.
	 */
	public Node firstSibling()
	{
		// GNode* g_node_first_sibling (GNode *node);
		return new Node( g_node_first_sibling(gNode) );
	}
	
	
	
	/**
	 * Gets the last sibling of a GNode.
	 * This could possibly be the node itself.
	 * node:
	 * a GNode.
	 * Returns:
	 * the last sibling of node.
	 */
	public Node lastSibling()
	{
		// GNode* g_node_last_sibling (GNode *node);
		return new Node( g_node_last_sibling(gNode) );
	}
	
	
	
	/**
	 * Gets the depth of a GNode.
	 * If node is NULL the depth is 0.
	 * The root node has a depth of 1.
	 * For the children of the root node the depth is 2. And so on.
	 * node:
	 * a GNode.
	 * Returns:
	 * the depth of the GNode.
	 */
	public uint depth()
	{
		// guint g_node_depth (GNode *node);
		return g_node_depth(gNode);
	}
	
	/**
	 * Gets the number of nodes in a tree.
	 * root:
	 * a GNode.
	 * flags:
	 * which types of children are to be counted, one of G_TRAVERSE_ALL,
	 * G_TRAVERSE_LEAVES and G_TRAVERSE_NON_LEAVES.
	 * Returns:
	 * the number of nodes in the tree.
	 */
	public uint nNodes(GTraverseFlags flags)
	{
		// guint g_node_n_nodes (GNode *root,  GTraverseFlags flags);
		return g_node_n_nodes(gNode, flags);
	}
	
	/**
	 * Gets the number of children of a GNode.
	 * node:
	 * a GNode.
	 * Returns:
	 * the number of children of node.
	 */
	public uint nChildren()
	{
		// guint g_node_n_children (GNode *node);
		return g_node_n_children(gNode);
	}
	
	/**
	 * Returns TRUE if node is an ancestor of descendant.
	 * This is true if node is the parent of descendant, or if node is the
	 * grandparent of descendant etc.
	 * node:
	 * a GNode.
	 * descendant:
	 * a GNode.
	 * Returns:
	 * TRUE if node is an ancestor of descendant.
	 */
	public int isAncestor(Node descendant)
	{
		// gboolean g_node_is_ancestor (GNode *node,  GNode *descendant);
		return g_node_is_ancestor(gNode, (descendant is null) ? null : descendant.getNodeStruct());
	}
	
	/**
	 * Gets the maximum height of all branches beneath a GNode.
	 * This is the maximum distance from the GNode to all leaf nodes.
	 * If root is NULL, 0 is returned. If root has no children, 1 is returned.
	 * If root has children, 2 is returned. And so on.
	 * root:
	 * a GNode.
	 * Returns:
	 * the maximum height of the tree beneath root.
	 */
	public uint maxHeight()
	{
		// guint g_node_max_height (GNode *root);
		return g_node_max_height(gNode);
	}
	
	/**
	 * Unlinks a GNode from a tree, resulting in two separate trees.
	 * node:
	 * the GNode to unlink, which becomes the root of a new tree.
	 */
	public void unlink()
	{
		// void g_node_unlink (GNode *node);
		g_node_unlink(gNode);
	}
	
	/**
	 * Removes the GNode and its children from the tree, freeing any memory
	 * allocated.
	 * root:
	 * the root of the tree/subtree to destroy.
	 */
	public void destroy()
	{
		// void g_node_destroy (GNode *root);
		g_node_destroy(gNode);
	}
	
	/**
	 * Warning
	 * g_node_push_allocator has been deprecated since version 2.10 and should not be used in newly-written code. It does nothing, since GNode has been converted
	 *  to the slice allocator
	 * Sets the allocator to use to allocate GNode elements.
	 * Use g_node_pop_allocator() to restore the previous allocator.
	 * Note that this function is not available if GLib has been compiled
	 * with --disable-mem-pools
	 * dummy:
	 * the GAllocator to use when allocating GNode elements.
	 */
	public static void pushAllocator(void* dummy)
	{
		// void g_node_push_allocator (gpointer dummy);
		g_node_push_allocator(dummy);
	}
	
	/**
	 * Warning
	 * g_node_pop_allocator has been deprecated since version 2.10 and should not be used in newly-written code. It does nothing, since GNode has been converted
	 *  to the slice allocator
	 * Restores the previous GAllocator, used when allocating GNode elements.
	 * Note that this function is not available if GLib has been compiled
	 * with --disable-mem-pools
	 */
	public static void popAllocator()
	{
		// void g_node_pop_allocator (void);
		g_node_pop_allocator();
	}
}
