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
 * inFile  = GtkTreeModelFilter.html
 * outPack = gtk
 * outFile = TreeModelFilter
 * strct   = GtkTreeModelFilter
 * realStrct=
 * ctorStrct=
 * clss    = TreeModelFilter
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_model_filter_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.TreeModel
 * 	- gtk.TreePath
 * 	- gtk.TreeIter
 * structWrap:
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkTreePath* -> TreePath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeModelFilter;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.TreeModel;
private import gtk.TreePath;
private import gtk.TreeIter;



private import gobject.ObjectG;

/**
 * Description
 * A GtkTreeModelFilter is a tree model which wraps another tree model,
 * and can do the following things:
 * Filter specific rows, based on data from a "visible column", a column
 * storing booleans indicating whether the row should be filtered or not,
 * or based on the return value of a "visible function", which gets a
 * model, iter and user_data and returns a boolean indicating whether the
 * row should be filtered or not.
 * Modify the "appearance" of the model, using a modify function.
 * This is extremely powerful and allows for just changing
 * some values and also for creating a completely different model based on
 * the given child model.
 * Set a different root node, also known as a "virtual root". You can pass in
 * a GtkTreePath indicating the root node for the filter at construction time.
 */
public class TreeModelFilter : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTreeModelFilter* gtkTreeModelFilter;
	
	
	public GtkTreeModelFilter* getTreeModelFilterStruct()
	{
		return gtkTreeModelFilter;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeModelFilter;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeModelFilter* gtkTreeModelFilter)
	{
		if(gtkTreeModelFilter is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkTreeModelFilter passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkTreeModelFilter);
		if( ptr !is null )
		{
			this = cast(TreeModelFilter)ptr;
			return;
		}
		super(cast(GObject*)gtkTreeModelFilter);
		this.gtkTreeModelFilter = gtkTreeModelFilter;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkTreeModel, with child_model as the child_model
	 * and root as the virtual root.
	 * Since 2.4
	 * Params:
	 * childModel =  A GtkTreeModel.
	 * root =  A GtkTreePath or NULL.
	 * Returns: A new GtkTreeModel.
	 */
	public static TreeModel newTreeModelFilter(TreeModel childModel, TreePath root)
	{
		// GtkTreeModel* gtk_tree_model_filter_new (GtkTreeModel *child_model,  GtkTreePath *root);
		auto p = gtk_tree_model_filter_new((childModel is null) ? null : childModel.getTreeModelStruct(), (root is null) ? null : root.getTreePathStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new TreeModel(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the visible function used when filtering the filter to be func. The
	 * function should return TRUE if the given row should be visible and
	 * FALSE otherwise.
	 * If the condition calculated by the function changes over time (e.g. because
	 * it depends on some global parameters), you must call
	 * gtk_tree_model_filter_refilter() to keep the visibility information of
	 * the model uptodate.
	 * Since 2.4
	 * Params:
	 * func =  A GtkTreeModelFilterVisibleFunc, the visible function.
	 * data =  User data to pass to the visible function, or NULL.
	 * destroy =  Destroy notifier of data, or NULL.
	 */
	public void setVisibleFunc(GtkTreeModelFilterVisibleFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_tree_model_filter_set_visible_func  (GtkTreeModelFilter *filter,  GtkTreeModelFilterVisibleFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_tree_model_filter_set_visible_func(gtkTreeModelFilter, func, data, destroy);
	}
	
	/**
	 * With the n_columns and types parameters, you give an array of column
	 * types for this model (which will be exposed to the parent model/view).
	 * The func, data and destroy parameters are for specifying the modify
	 * function. The modify function will get called for each
	 * data access, the goal of the modify function is to return the data which
	 * should be displayed at the location specified using the parameters of the
	 * modify function.
	 * Since 2.4
	 * Params:
	 * nColumns =  The number of columns in the filter model.
	 * types =  The GTypes of the columns.
	 * func =  A GtkTreeModelFilterModifyFunc
	 * data =  User data to pass to the modify function, or NULL.
	 * destroy =  Destroy notifier of data, or NULL.
	 */
	public void setModifyFunc(int nColumns, GType* types, GtkTreeModelFilterModifyFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_tree_model_filter_set_modify_func  (GtkTreeModelFilter *filter,  gint n_columns,  GType *types,  GtkTreeModelFilterModifyFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_tree_model_filter_set_modify_func(gtkTreeModelFilter, nColumns, types, func, data, destroy);
	}
	
	/**
	 * Sets column of the child_model to be the column where filter should
	 * look for visibility information. columns should be a column of type
	 * G_TYPE_BOOLEAN, where TRUE means that a row is visible, and FALSE
	 * if not.
	 * Since 2.4
	 * Params:
	 * column =  A gint which is the column containing the visible information.
	 */
	public void setVisibleColumn(int column)
	{
		// void gtk_tree_model_filter_set_visible_column  (GtkTreeModelFilter *filter,  gint column);
		gtk_tree_model_filter_set_visible_column(gtkTreeModelFilter, column);
	}
	
	/**
	 * Returns a pointer to the child model of filter.
	 * Since 2.4
	 * Returns: A pointer to a GtkTreeModel.
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_tree_model_filter_get_model (GtkTreeModelFilter *filter);
		auto p = gtk_tree_model_filter_get_model(gtkTreeModelFilter);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new TreeModel(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets filter_iter to point to the row in filter that corresponds to the
	 * row pointed at by child_iter. If filter_iter was not set, FALSE is
	 * returned.
	 * Since 2.4
	 * Params:
	 * filter =  A GtkTreeModelFilter.
	 * filterIter =  An uninitialized GtkTreeIter.
	 * childIter =  A valid GtkTreeIter pointing to a row on the child model.
	 * Returns: TRUE, if filter_iter was set, i.e. if child_iter is avalid iterator pointing to a visible row in child model.
	 */
	public int convertChildIterToIter(TreeIter filterIter, TreeIter childIter)
	{
		// gboolean gtk_tree_model_filter_convert_child_iter_to_iter  (GtkTreeModelFilter *filter,  GtkTreeIter *filter_iter,  GtkTreeIter *child_iter);
		return gtk_tree_model_filter_convert_child_iter_to_iter(gtkTreeModelFilter, (filterIter is null) ? null : filterIter.getTreeIterStruct(), (childIter is null) ? null : childIter.getTreeIterStruct());
	}
	
	/**
	 * Sets child_iter to point to the row pointed to by filter_iter.
	 * Since 2.4
	 * Params:
	 * filter =  A GtkTreeModelFilter.
	 * childIter =  An uninitialized GtkTreeIter.
	 * filterIter =  A valid GtkTreeIter pointing to a row on filter.
	 */
	public void convertIterToChildIter(TreeIter childIter, TreeIter filterIter)
	{
		// void gtk_tree_model_filter_convert_iter_to_child_iter  (GtkTreeModelFilter *filter,  GtkTreeIter *child_iter,  GtkTreeIter *filter_iter);
		gtk_tree_model_filter_convert_iter_to_child_iter(gtkTreeModelFilter, (childIter is null) ? null : childIter.getTreeIterStruct(), (filterIter is null) ? null : filterIter.getTreeIterStruct());
	}
	
	/**
	 * Converts child_path to a path relative to filter. That is, child_path
	 * points to a path in the child model. The rerturned path will point to the
	 * same row in the filtered model. If child_path isn't a valid path on the
	 * child model or points to a row which is not visible in filter, then NULL
	 * is returned.
	 * Since 2.4
	 * Params:
	 * childPath =  A GtkTreePath to convert.
	 * Returns: A newly allocated GtkTreePath, or NULL.
	 */
	public TreePath convertChildPathToPath(TreePath childPath)
	{
		// GtkTreePath* gtk_tree_model_filter_convert_child_path_to_path  (GtkTreeModelFilter *filter,  GtkTreePath *child_path);
		auto p = gtk_tree_model_filter_convert_child_path_to_path(gtkTreeModelFilter, (childPath is null) ? null : childPath.getTreePathStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new TreePath(cast(GtkTreePath*) p);
	}
	
	/**
	 * Converts filter_path to a path on the child model of filter. That is,
	 * filter_path points to a location in filter. The returned path will
	 * point to the same location in the model not being filtered. If filter_path
	 * does not point to a location in the child model, NULL is returned.
	 * Since 2.4
	 * Params:
	 * filter =  A GtkTreeModelFilter.
	 * filterPath =  A GtkTreePath to convert.
	 * Returns: A newly allocated GtkTreePath, or NULL.
	 */
	public TreePath convertPathToChildPath(TreePath filterPath)
	{
		// GtkTreePath* gtk_tree_model_filter_convert_path_to_child_path  (GtkTreeModelFilter *filter,  GtkTreePath *filter_path);
		auto p = gtk_tree_model_filter_convert_path_to_child_path(gtkTreeModelFilter, (filterPath is null) ? null : filterPath.getTreePathStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new TreePath(cast(GtkTreePath*) p);
	}
	
	/**
	 * Emits ::row_changed for each row in the child model, which causes
	 * the filter to re-evaluate whether a row is visible or not.
	 * Since 2.4
	 * Params:
	 * filter =  A GtkTreeModelFilter.
	 */
	public void refilter()
	{
		// void gtk_tree_model_filter_refilter (GtkTreeModelFilter *filter);
		gtk_tree_model_filter_refilter(gtkTreeModelFilter);
	}
	
	/**
	 * This function should almost never be called. It clears the filter
	 * of any cached iterators that haven't been reffed with
	 * gtk_tree_model_ref_node(). This might be useful if the child model
	 * being filtered is static (and doesn't change often) and there has been
	 * a lot of unreffed access to nodes. As a side effect of this function,
	 * all unreffed iters will be invalid.
	 * Since 2.4
	 */
	public void clearCache()
	{
		// void gtk_tree_model_filter_clear_cache (GtkTreeModelFilter *filter);
		gtk_tree_model_filter_clear_cache(gtkTreeModelFilter);
	}
}
