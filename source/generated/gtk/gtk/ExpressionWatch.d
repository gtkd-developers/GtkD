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


module gtk.ExpressionWatch;

private import gobject.ObjectG;
private import gobject.Value;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * An opaque structure representing a watched `GtkExpression`.
 * 
 * The contents of `GtkExpressionWatch` should only be accessed through the
 * provided API.
 */
public class ExpressionWatch
{
	/** the main Gtk struct */
	protected GtkExpressionWatch* gtkExpressionWatch;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkExpressionWatch* getExpressionWatchStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkExpressionWatch;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkExpressionWatch;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkExpressionWatch* gtkExpressionWatch, bool ownedRef = false)
	{
		this.gtkExpressionWatch = gtkExpressionWatch;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_expression_watch_unref(gtkExpressionWatch);
	}


	/** */
	public static GType getType()
	{
		return gtk_expression_watch_get_type();
	}

	/**
	 * Evaluates the watched expression and on success stores the result
	 * in `value`.
	 *
	 * This is equivalent to calling [method@Gtk.Expression.evaluate] with the
	 * expression and this pointer originally used to create `watch`.
	 *
	 * Params:
	 *     value = an empty `GValue` to be set
	 *
	 * Returns: `TRUE` if the expression could be evaluated and `value` was set
	 */
	public bool evaluate(Value value)
	{
		return gtk_expression_watch_evaluate(gtkExpressionWatch, (value is null) ? null : value.getValueStruct()) != 0;
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given `GtkExpressionWatch`.
	 *
	 * Returns: the `GtkExpressionWatch` with an additional reference
	 */
	public ExpressionWatch ref_()
	{
		auto __p = gtk_expression_watch_ref(gtkExpressionWatch);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExpressionWatch)(cast(GtkExpressionWatch*) __p, true);
	}

	/**
	 * Releases a reference on the given `GtkExpressionWatch`.
	 *
	 * If the reference was the last, the resources associated to `self` are
	 * freed.
	 */
	public void unref()
	{
		gtk_expression_watch_unref(gtkExpressionWatch);
	}

	/**
	 * Stops watching an expression.
	 *
	 * See [method@Gtk.Expression.watch] for how the watch
	 * was established.
	 */
	public void unwatch()
	{
		gtk_expression_watch_unwatch(gtkExpressionWatch);
	}
}
