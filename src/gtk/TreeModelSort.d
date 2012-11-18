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
 * inFile  = GtkTreeModelSort.html
 * outPack = gtk
 * outFile = TreeModelSort
 * strct   = GtkTreeModelSort
 * realStrct=
 * ctorStrct=GtkTreeModel
 * clss    = TreeModelSort
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- TreeModelIF
 * 	- TreeDragSourceIF
 * 	- TreeSortableIF
 * prefixes:
 * 	- gtk_tree_model_sort_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gtk.TreeModelT
 * 	- gtk.TreeDragSourceT
 * 	- gtk.TreeDragSourceIF
 * 	- gtk.TreeSortableT
 * 	- gtk.TreeSortableIF
 * structWrap:
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeModelSort;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.TreeModelT;
private import gtk.TreeDragSourceT;
private import gtk.TreeDragSourceIF;
private import gtk.TreeSortableT;
private import gtk.TreeSortableIF;



private import gobject.ObjectG;

/**
 * Description
 * The GtkTreeModelSort is a model which implements the GtkTreeSortable
 * interface. It does not hold any data itself, but rather is created with
 * a child model and proxies its data. It has identical column types to
 * this child model, and the changes in the child are propagated. The
 * primary purpose of this model is to provide a way to sort a different
 * model without modifying it. Note that the sort function used by
 * GtkTreeModelSort is not guaranteed to be stable.
 * The use of this is best demonstrated through an example. In the
 * following sample code we create two GtkTreeView widgets each with a
 * view of the same data. As the model is wrapped here by a
 * GtkTreeModelSort, the two GtkTreeViews can each sort their
 * view of the data without affecting the other. By contrast, if we
 * simply put the same model in each widget, then sorting the first would
 * sort the second.
 * $(DDOC_COMMENT example)
 * To demonstrate how to access the underlying child model from the sort
 * model, the next example will be a callback for the GtkTreeSelection
 * "changed" signal. In this callback, we get a string
 * from COLUMN_1 of the model. We then modify the string, find the same
 * selected row on the child model, and change the row there.
 * $(DDOC_COMMENT example)
 */
public class TreeModelSort : ObjectG, TreeModelIF, TreeDragSourceIF, TreeSortableIF
{
	
	/** the main Gtk struct */
	protected GtkTreeModelSort* gtkTreeModelSort;
	
	
	public GtkTreeModelSort* getTreeModelSortStruct()
	{
		return gtkTreeModelSort;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeModelSort;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeModelSort* gtkTreeModelSort)
	{
		super(cast(GObject*)gtkTreeModelSort);
		this.gtkTreeModelSort = gtkTreeModelSort;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTreeModelSort = cast(GtkTreeModelSort*)obj;
	}
	
	// add the TreeModel capabilities
	mixin TreeModelT!(GtkTreeModelSort);
	
	// add the TreeDragSource capabilities
	mixin TreeDragSourceT!(GtkTreeModelSort);
	
	// add the TreeSortable capabilities
	mixin TreeSortableT!(GtkTreeModelSort);
	
	/**
	 */
	
	/**
	 * Creates a new GtkTreeModel, with child_model as the child model.
	 * Params:
	 * childModel = A GtkTreeModel
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TreeModelIF childModel)
	{
		// GtkTreeModel * gtk_tree_model_sort_new_with_model (GtkTreeModel *child_model);
		auto p = gtk_tree_model_sort_new_with_model((childModel is null) ? null : childModel.getTreeModelTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_model_sort_new_with_model((childModel is null) ? null : childModel.getTreeModelTStruct())");
		}
		this(cast(GtkTreeModelSort*) p);
	}
	
	/**
	 * Returns the model the GtkTreeModelSort is sorting.
	 * Returns: the "child model" being sorted. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_tree_model_sort_get_model (GtkTreeModelSort *tree_model);
		auto p = gtk_tree_model_sort_get_model(gtkTreeModelSort);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Converts child_path to a path relative to tree_model_sort. That is,
	 * child_path points to a path in the child model. The returned path will
	 * point to the same row in the sorted model. If child_path isn't a valid
	 * path on the child model, then NULL is returned.
	 * Params:
	 * childPath = A GtkTreePath to convert
	 * Returns: A newly allocated GtkTreePath, or NULL
	 */
	public TreePath convertChildPathToPath(TreePath childPath)
	{
		// GtkTreePath * gtk_tree_model_sort_convert_child_path_to_path  (GtkTreeModelSort *tree_model_sort,  GtkTreePath *child_path);
		auto p = gtk_tree_model_sort_convert_child_path_to_path(gtkTreeModelSort, (childPath is null) ? null : childPath.getTreePathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) p);
	}
	
	/**
	 * Sets sort_iter to point to the row in tree_model_sort that corresponds to
	 * the row pointed at by child_iter. If sort_iter was not set, FALSE
	 * is returned. Note: a boolean is only returned since 2.14.
	 * Params:
	 * sortIter = An uninitialized GtkTreeIter. [out]
	 * childIter = A valid GtkTreeIter pointing to a row on the child model
	 * Returns: TRUE, if sort_iter was set, i.e. if sort_iter is a valid iterator pointer to a visible row in the child model.
	 */
	public int convertChildIterToIter(TreeIter sortIter, TreeIter childIter)
	{
		// gboolean gtk_tree_model_sort_convert_child_iter_to_iter  (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *sort_iter,  GtkTreeIter *child_iter);
		return gtk_tree_model_sort_convert_child_iter_to_iter(gtkTreeModelSort, (sortIter is null) ? null : sortIter.getTreeIterStruct(), (childIter is null) ? null : childIter.getTreeIterStruct());
	}
	
	/**
	 * Converts sorted_path to a path on the child model of tree_model_sort.
	 * That is, sorted_path points to a location in tree_model_sort. The
	 * returned path will point to the same location in the model not being
	 * sorted. If sorted_path does not point to a location in the child model,
	 * NULL is returned.
	 * Params:
	 * sortedPath = A GtkTreePath to convert
	 * Returns: A newly allocated GtkTreePath, or NULL
	 */
	public TreePath convertPathToChildPath(TreePath sortedPath)
	{
		// GtkTreePath * gtk_tree_model_sort_convert_path_to_child_path  (GtkTreeModelSort *tree_model_sort,  GtkTreePath *sorted_path);
		auto p = gtk_tree_model_sort_convert_path_to_child_path(gtkTreeModelSort, (sortedPath is null) ? null : sortedPath.getTreePathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) p);
	}
	
	/**
	 * Sets child_iter to point to the row pointed to by sorted_iter.
	 * Params:
	 * childIter = An uninitialized GtkTreeIter. [out]
	 * sortedIter = A valid GtkTreeIter pointing to a row on tree_model_sort.
	 */
	public void convertIterToChildIter(TreeIter childIter, TreeIter sortedIter)
	{
		// void gtk_tree_model_sort_convert_iter_to_child_iter  (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *child_iter,  GtkTreeIter *sorted_iter);
		gtk_tree_model_sort_convert_iter_to_child_iter(gtkTreeModelSort, (childIter is null) ? null : childIter.getTreeIterStruct(), (sortedIter is null) ? null : sortedIter.getTreeIterStruct());
	}
	
	/**
	 * This resets the default sort function to be in the 'unsorted' state. That
	 * is, it is in the same order as the child model. It will re-sort the model
	 * to be in the same order as the child model only if the GtkTreeModelSort
	 * is in 'unsorted' state.
	 */
	public void resetDefaultSortFunc()
	{
		// void gtk_tree_model_sort_reset_default_sort_func  (GtkTreeModelSort *tree_model_sort);
		gtk_tree_model_sort_reset_default_sort_func(gtkTreeModelSort);
	}
	
	/**
	 * This function should almost never be called. It clears the tree_model_sort
	 * of any cached iterators that haven't been reffed with
	 * gtk_tree_model_ref_node(). This might be useful if the child model being
	 * sorted is static (and doesn't change often) and there has been a lot of
	 * unreffed access to nodes. As a side effect of this function, all unreffed
	 * iters will be invalid.
	 */
	public void clearCache()
	{
		// void gtk_tree_model_sort_clear_cache (GtkTreeModelSort *tree_model_sort);
		gtk_tree_model_sort_clear_cache(gtkTreeModelSort);
	}
	
	/**
	 * Warning
	 * This function is slow. Only use it for debugging and/or testing purposes.
	 * Checks if the given iter is a valid iter for this GtkTreeModelSort.
	 * Since 2.2
	 * Params:
	 * iter = A GtkTreeIter.
	 * Returns: TRUE if the iter is valid, FALSE if the iter is invalid.
	 */
	public int iterIsValid(TreeIter iter)
	{
		// gboolean gtk_tree_model_sort_iter_is_valid (GtkTreeModelSort *tree_model_sort,  GtkTreeIter *iter);
		return gtk_tree_model_sort_iter_is_valid(gtkTreeModelSort, (iter is null) ? null : iter.getTreeIterStruct());
	}
}
