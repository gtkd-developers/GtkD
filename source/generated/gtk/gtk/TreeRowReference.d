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


module gtk.TreeRowReference;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * A GtkTreeRowReference tracks model changes so that it always refers to the
 * same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
 * new GtkTreeRowReference with gtk_tree_row_reference_new().
 */
public class TreeRowReference
{
	/** the main Gtk struct */
	protected GtkTreeRowReference* gtkTreeRowReference;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkTreeRowReference* getTreeRowReferenceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeRowReference;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeRowReference;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeRowReference* gtkTreeRowReference, bool ownedRef = false)
	{
		this.gtkTreeRowReference = gtkTreeRowReference;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_tree_row_reference_free(gtkTreeRowReference);
	}


	/** */
	public static GType getType()
	{
		return gtk_tree_row_reference_get_type();
	}

	/**
	 * Creates a row reference based on @path.
	 *
	 * This reference will keep pointing to the node pointed to
	 * by @path, so long as it exists. Any changes that occur on @model are
	 * propagated, and the path is updated appropriately. If
	 * @path isn’t a valid path in @model, then %NULL is returned.
	 *
	 * Params:
	 *     model = a `GtkTreeModel`
	 *     path = a valid `GtkTreePath` to monitor
	 *
	 * Returns: a newly allocated `GtkTreeRowReference`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF model, TreePath path)
	{
		auto __p = gtk_tree_row_reference_new((model is null) ? null : model.getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTreeRowReference*) __p);
	}

	/**
	 * You do not need to use this function.
	 *
	 * Creates a row reference based on @path.
	 *
	 * This reference will keep pointing to the node pointed to
	 * by @path, so long as it exists. If @path isn’t a valid
	 * path in @model, then %NULL is returned. However, unlike
	 * references created with gtk_tree_row_reference_new(), it
	 * does not listen to the model for changes. The creator of
	 * the row reference must do this explicitly using
	 * gtk_tree_row_reference_inserted(), gtk_tree_row_reference_deleted(),
	 * gtk_tree_row_reference_reordered().
	 *
	 * These functions must be called exactly once per proxy when the
	 * corresponding signal on the model is emitted. This single call
	 * updates all row references for that proxy. Since built-in GTK
	 * objects like `GtkTreeView` already use this mechanism internally,
	 * using them as the proxy object will produce unpredictable results.
	 * Further more, passing the same object as @model and @proxy
	 * doesn’t work for reasons of internal implementation.
	 *
	 * This type of row reference is primarily meant by structures that
	 * need to carefully monitor exactly when a row reference updates
	 * itself, and is not generally needed by most applications.
	 *
	 * Params:
	 *     proxy = a proxy `GObject`
	 *     model = a `GtkTreeModel`
	 *     path = a valid `GtkTreePath` to monitor
	 *
	 * Returns: a newly allocated `GtkTreeRowReference`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG proxy, TreeModelIF model, TreePath path)
	{
		auto __p = gtk_tree_row_reference_new_proxy((proxy is null) ? null : proxy.getObjectGStruct(), (model is null) ? null : model.getTreeModelStruct(), (path is null) ? null : path.getTreePathStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_proxy");
		}

		this(cast(GtkTreeRowReference*) __p);
	}

	/**
	 * Copies a `GtkTreeRowReference`.
	 *
	 * Returns: a copy of @reference
	 */
	public TreeRowReference copy()
	{
		auto __p = gtk_tree_row_reference_copy(gtkTreeRowReference);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeRowReference)(cast(GtkTreeRowReference*) __p, true);
	}

	/**
	 * Free’s @reference. @reference may be %NULL
	 */
	public void free()
	{
		gtk_tree_row_reference_free(gtkTreeRowReference);
		ownedRef = false;
	}

	/**
	 * Returns the model that the row reference is monitoring.
	 *
	 * Returns: the model
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_tree_row_reference_get_model(gtkTreeRowReference);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Returns a path that the row reference currently points to,
	 * or %NULL if the path pointed to is no longer valid.
	 *
	 * Returns: a current path
	 */
	public TreePath getPath()
	{
		auto __p = gtk_tree_row_reference_get_path(gtkTreeRowReference);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Returns %TRUE if the @reference is non-%NULL and refers to
	 * a current valid path.
	 *
	 * Returns: %TRUE if @reference points to a valid path
	 */
	public bool valid()
	{
		return gtk_tree_row_reference_valid(gtkTreeRowReference) != 0;
	}

	/**
	 * Lets a set of row reference created by
	 * gtk_tree_row_reference_new_proxy() know that the
	 * model emitted the ::row-deleted signal.
	 *
	 * Params:
	 *     proxy = a `GObject`
	 *     path = the path position that was deleted
	 */
	public static void deleted(ObjectG proxy, TreePath path)
	{
		gtk_tree_row_reference_deleted((proxy is null) ? null : proxy.getObjectGStruct(), (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Lets a set of row reference created by
	 * gtk_tree_row_reference_new_proxy() know that the
	 * model emitted the ::row-inserted signal.
	 *
	 * Params:
	 *     proxy = a `GObject`
	 *     path = the row position that was inserted
	 */
	public static void inserted(ObjectG proxy, TreePath path)
	{
		gtk_tree_row_reference_inserted((proxy is null) ? null : proxy.getObjectGStruct(), (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Lets a set of row reference created by
	 * gtk_tree_row_reference_new_proxy() know that the
	 * model emitted the ::rows-reordered signal.
	 *
	 * Params:
	 *     proxy = a `GObject`
	 *     path = the parent path of the reordered signal
	 *     iter = the iter pointing to the parent of the reordered
	 *     newOrder = the new order of rows
	 */
	public static void reordered(ObjectG proxy, TreePath path, TreeIter iter, int[] newOrder)
	{
		gtk_tree_row_reference_reordered((proxy is null) ? null : proxy.getObjectGStruct(), (path is null) ? null : path.getTreePathStruct(), (iter is null) ? null : iter.getTreeIterStruct(), newOrder.ptr);
	}
}
