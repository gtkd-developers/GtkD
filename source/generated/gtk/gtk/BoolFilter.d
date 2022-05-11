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


module gtk.BoolFilter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.Filter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkBoolFilter` evaluates a boolean `GtkExpression`
 * to determine whether to include items.
 */
public class BoolFilter : Filter
{
	/** the main Gtk struct */
	protected GtkBoolFilter* gtkBoolFilter;

	/** Get the main Gtk struct */
	public GtkBoolFilter* getBoolFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBoolFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBoolFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBoolFilter* gtkBoolFilter, bool ownedRef = false)
	{
		this.gtkBoolFilter = gtkBoolFilter;
		super(cast(GtkFilter*)gtkBoolFilter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_bool_filter_get_type();
	}

	/**
	 * Creates a new bool filter.
	 *
	 * Params:
	 *     expression = The expression to evaluate
	 *
	 * Returns: a new `GtkBoolFilter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Expression expression)
	{
		auto __p = gtk_bool_filter_new((expression is null) ? null : expression.getExpressionStruct(true));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBoolFilter*) __p, true);
	}

	/**
	 * Gets the expression that the filter uses to evaluate if
	 * an item should be filtered.
	 *
	 * Returns: a `GtkExpression`
	 */
	public Expression getExpression()
	{
		auto __p = gtk_bool_filter_get_expression(gtkBoolFilter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Returns whether the filter inverts the expression.
	 *
	 * Returns: %TRUE if the filter inverts
	 */
	public bool getInvert()
	{
		return gtk_bool_filter_get_invert(gtkBoolFilter) != 0;
	}

	/**
	 * Sets the expression that the filter uses to check if items
	 * should be filtered.
	 *
	 * The expression must have a value type of %G_TYPE_BOOLEAN.
	 *
	 * Params:
	 *     expression = a `GtkExpression`
	 */
	public void setExpression(Expression expression)
	{
		gtk_bool_filter_set_expression(gtkBoolFilter, (expression is null) ? null : expression.getExpressionStruct());
	}

	/**
	 * Sets whether the filter should invert the expression.
	 *
	 * Params:
	 *     invert = %TRUE to invert
	 */
	public void setInvert(bool invert)
	{
		gtk_bool_filter_set_invert(gtkBoolFilter, invert);
	}
}
