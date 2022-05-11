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


module gtk.TreePath;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * An opaque structure representing a path to a row in a model.
 */
public class TreePath
{
	/** the main Gtk struct */
	protected GtkTreePath* gtkTreePath;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTreePath* getTreePathStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreePath;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreePath;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreePath* gtkTreePath, bool ownedRef = false)
	{
		this.gtkTreePath = gtkTreePath;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_tree_path_free(gtkTreePath);
	}

	/**
	 * Creates a new GtkTreePath. This structure refers to a row.
	 * Params:
	 * firstRow = if true this is the string representation of this path is "0"
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (bool firstRow=false)
	{
		GtkTreePath* __p;

		if ( firstRow )
		{
			// GtkTreePath* gtk_tree_path_new_first (void);
			__p = cast(GtkTreePath*)gtk_tree_path_new_first();
		}
		else
		{
			// GtkTreePath* gtk_tree_path_new (void);
			__p = cast(GtkTreePath*)gtk_tree_path_new();
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_path_new()");
		}

		this(__p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tree_path_get_type();
	}

	/**
	 * Creates a new path with the given @indices array of @length.
	 *
	 * Params:
	 *     indices = array of indices
	 *
	 * Returns: A newly created `GtkTreePath`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int[] indices)
	{
		auto __p = gtk_tree_path_new_from_indicesv(indices.ptr, cast(size_t)indices.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_indicesv");
		}

		this(cast(GtkTreePath*) __p);
	}

	/**
	 * Creates a new `GtkTreePath` initialized to @path.
	 *
	 * @path is expected to be a colon separated list of numbers.
	 * For example, the string “10:4:0” would create a path of depth
	 * 3 pointing to the 11th child of the root node, the 5th
	 * child of that 11th child, and the 1st child of that 5th child.
	 * If an invalid path string is passed in, %NULL is returned.
	 *
	 * Params:
	 *     path = The string representation of a path
	 *
	 * Returns: A newly-created `GtkTreePath`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path)
	{
		auto __p = gtk_tree_path_new_from_string(Str.toStringz(path));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}

		this(cast(GtkTreePath*) __p);
	}

	/**
	 * Appends a new index to a path.
	 *
	 * As a result, the depth of the path is increased.
	 *
	 * Params:
	 *     index = the index
	 */
	public void appendIndex(int index)
	{
		gtk_tree_path_append_index(gtkTreePath, index);
	}

	/**
	 * Compares two paths.
	 *
	 * If @a appears before @b in a tree, then -1 is returned.
	 * If @b appears before @a, then 1 is returned.
	 * If the two nodes are equal, then 0 is returned.
	 *
	 * Params:
	 *     b = a `GtkTreePath` to compare with
	 *
	 * Returns: the relative positions of @a and @b
	 */
	public int compare(TreePath b)
	{
		return gtk_tree_path_compare(gtkTreePath, (b is null) ? null : b.getTreePathStruct());
	}

	/**
	 * Creates a new `GtkTreePath` as a copy of @path.
	 *
	 * Returns: a new `GtkTreePath`
	 */
	public TreePath copy()
	{
		auto __p = gtk_tree_path_copy(gtkTreePath);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Moves @path to point to the first child of the current path.
	 */
	public void down()
	{
		gtk_tree_path_down(gtkTreePath);
	}

	/**
	 * Frees @path. If @path is %NULL, it simply returns.
	 */
	public void free()
	{
		gtk_tree_path_free(gtkTreePath);
		ownedRef = false;
	}

	/**
	 * Returns the current depth of @path.
	 *
	 * Returns: The depth of @path
	 */
	public int getDepth()
	{
		return gtk_tree_path_get_depth(gtkTreePath);
	}

	/**
	 * Returns the current indices of @path.
	 *
	 * This is an array of integers, each representing a node in a tree.
	 * This value should not be freed.
	 *
	 * The length of the array can be obtained with gtk_tree_path_get_depth().
	 *
	 * Returns: The current indices
	 */
	public int* getIndices()
	{
		return gtk_tree_path_get_indices(gtkTreePath);
	}

	/**
	 * Returns the current indices of @path.
	 *
	 * This is an array of integers, each representing a node in a tree.
	 * It also returns the number of elements in the array.
	 * The array should not be freed.
	 *
	 * Returns: The current
	 *     indices
	 */
	public int[] getIndicesWithDepth()
	{
		int depth;

		auto __p = gtk_tree_path_get_indices_with_depth(gtkTreePath, &depth);

		return __p[0 .. depth];
	}

	/**
	 * Returns %TRUE if @descendant is a descendant of @path.
	 *
	 * Params:
	 *     descendant = another `GtkTreePath`
	 *
	 * Returns: %TRUE if @descendant is contained inside @path
	 */
	public bool isAncestor(TreePath descendant)
	{
		return gtk_tree_path_is_ancestor(gtkTreePath, (descendant is null) ? null : descendant.getTreePathStruct()) != 0;
	}

	/**
	 * Returns %TRUE if @path is a descendant of @ancestor.
	 *
	 * Params:
	 *     ancestor = another `GtkTreePath`
	 *
	 * Returns: %TRUE if @ancestor contains @path somewhere below it
	 */
	public bool isDescendant(TreePath ancestor)
	{
		return gtk_tree_path_is_descendant(gtkTreePath, (ancestor is null) ? null : ancestor.getTreePathStruct()) != 0;
	}

	/**
	 * Moves the @path to point to the next node at the current depth.
	 */
	public void next()
	{
		gtk_tree_path_next(gtkTreePath);
	}

	/**
	 * Prepends a new index to a path.
	 *
	 * As a result, the depth of the path is increased.
	 *
	 * Params:
	 *     index = the index
	 */
	public void prependIndex(int index)
	{
		gtk_tree_path_prepend_index(gtkTreePath, index);
	}

	/**
	 * Moves the @path to point to the previous node at the
	 * current depth, if it exists.
	 *
	 * Returns: %TRUE if @path has a previous node, and
	 *     the move was made
	 */
	public bool prev()
	{
		return gtk_tree_path_prev(gtkTreePath) != 0;
	}

	/**
	 * Generates a string representation of the path.
	 *
	 * This string is a “:” separated list of numbers.
	 * For example, “4:10:0:3” would be an acceptable
	 * return value for this string. If the path has
	 * depth 0, %NULL is returned.
	 *
	 * Returns: A newly-allocated string
	 */
	public override string toString()
	{
		auto retStr = gtk_tree_path_to_string(gtkTreePath);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Moves the @path to point to its parent node, if it has a parent.
	 *
	 * Returns: %TRUE if @path has a parent, and the move was made
	 */
	public bool up()
	{
		return gtk_tree_path_up(gtkTreePath) != 0;
	}
}
