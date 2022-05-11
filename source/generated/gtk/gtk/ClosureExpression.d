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


module gtk.ClosureExpression;

private import glib.ConstructionException;
private import gobject.Closure;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * An expression using a custom `GClosure` to compute the value from
 * its parameters.
 */
public class ClosureExpression : Expression
{
	/** the main Gtk struct */
	protected GtkClosureExpression* gtkClosureExpression;

	/** Get the main Gtk struct */
	public GtkClosureExpression* getClosureExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkClosureExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkClosureExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkClosureExpression* gtkClosureExpression, bool ownedRef = false)
	{
		this.gtkClosureExpression = gtkClosureExpression;
		super(cast(GtkExpression*)gtkClosureExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_closure_expression_get_type();
	}

	/**
	 * Creates a `GtkExpression` that calls `closure` when it is evaluated.
	 *
	 * `closure` is called with the `this` object and the results of evaluating
	 * the `params` expressions.
	 *
	 * Params:
	 *     valueType = the type of the value that this expression evaluates to
	 *     closure = closure to call when evaluating this expression. If closure is floating, it is adopted
	 *     params = expressions for each parameter
	 *
	 * Returns: a new `GtkExpression`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType valueType, Closure closure, Expression[] params)
	{
		GtkExpression*[] paramsArray = new GtkExpression*[params.length];
		for ( int i = 0; i < params.length; i++ )
		{
			paramsArray[i] = params[i].getExpressionStruct();
		}

		auto __p = gtk_closure_expression_new(valueType, (closure is null) ? null : closure.getClosureStruct(), cast(uint)params.length, paramsArray.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkClosureExpression*) __p);
	}
}
