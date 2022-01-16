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


module gtk.NumericSorter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkNumericSorter` is a `GtkSorter` that compares numbers.
 * 
 * To obtain the numbers to compare, this sorter evaluates a
 * [class@Gtk.Expression].
 */
public class NumericSorter : Sorter
{
	/** the main Gtk struct */
	protected GtkNumericSorter* gtkNumericSorter;

	/** Get the main Gtk struct */
	public GtkNumericSorter* getNumericSorterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNumericSorter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNumericSorter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNumericSorter* gtkNumericSorter, bool ownedRef = false)
	{
		this.gtkNumericSorter = gtkNumericSorter;
		super(cast(GtkSorter*)gtkNumericSorter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_numeric_sorter_get_type();
	}

	/**
	 * Creates a new numeric sorter using the given @expression.
	 *
	 * Smaller numbers will be sorted first. You can call
	 * [method@Gtk.NumericSorter.set_sort_order] to change this.
	 *
	 * Params:
	 *     expression = The expression to evaluate
	 *
	 * Returns: a new `GtkNumericSorter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Expression expression)
	{
		auto __p = gtk_numeric_sorter_new((expression is null) ? null : expression.getExpressionStruct(true));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkNumericSorter*) __p, true);
	}

	/**
	 * Gets the expression that is evaluated to obtain numbers from items.
	 *
	 * Returns: a `GtkExpression`
	 */
	public Expression getExpression()
	{
		auto __p = gtk_numeric_sorter_get_expression(gtkNumericSorter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Gets whether this sorter will sort smaller numbers first.
	 *
	 * Returns: the order of the numbers
	 */
	public GtkSortType getSortOrder()
	{
		return gtk_numeric_sorter_get_sort_order(gtkNumericSorter);
	}

	/**
	 * Sets the expression that is evaluated to obtain numbers from items.
	 *
	 * Unless an expression is set on @self, the sorter will always
	 * compare items as invalid.
	 *
	 * The expression must have a return type that can be compared
	 * numerically, such as %G_TYPE_INT or %G_TYPE_DOUBLE.
	 *
	 * Params:
	 *     expression = a `GtkExpression`
	 */
	public void setExpression(Expression expression)
	{
		gtk_numeric_sorter_set_expression(gtkNumericSorter, (expression is null) ? null : expression.getExpressionStruct());
	}

	/**
	 * Sets whether to sort smaller numbers before larger ones.
	 *
	 * Params:
	 *     sortOrder = whether to sort smaller numbers first
	 */
	public void setSortOrder(GtkSortType sortOrder)
	{
		gtk_numeric_sorter_set_sort_order(gtkNumericSorter, sortOrder);
	}
}
