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


module gtk.StringSorter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkStringSorter` is a `GtkSorter` that compares strings.
 * 
 * It does the comparison in a linguistically correct way using the
 * current locale by normalizing Unicode strings and possibly case-folding
 * them before performing the comparison.
 * 
 * To obtain the strings to compare, this sorter evaluates a
 * [class@Gtk.Expression].
 */
public class StringSorter : Sorter
{
	/** the main Gtk struct */
	protected GtkStringSorter* gtkStringSorter;

	/** Get the main Gtk struct */
	public GtkStringSorter* getStringSorterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStringSorter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStringSorter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStringSorter* gtkStringSorter, bool ownedRef = false)
	{
		this.gtkStringSorter = gtkStringSorter;
		super(cast(GtkSorter*)gtkStringSorter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_string_sorter_get_type();
	}

	/**
	 * Creates a new string sorter that compares items using the given
	 * @expression.
	 *
	 * Unless an expression is set on it, this sorter will always
	 * compare items as invalid.
	 *
	 * Params:
	 *     expression = The expression to evaluate
	 *
	 * Returns: a new `GtkStringSorter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Expression expression)
	{
		auto __p = gtk_string_sorter_new((expression is null) ? null : expression.getExpressionStruct(true));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStringSorter*) __p, true);
	}

	/**
	 * Gets the expression that is evaluated to obtain strings from items.
	 *
	 * Returns: a `GtkExpression`
	 */
	public Expression getExpression()
	{
		auto __p = gtk_string_sorter_get_expression(gtkStringSorter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Gets whether the sorter ignores case differences.
	 *
	 * Returns: %TRUE if @self is ignoring case differences
	 */
	public bool getIgnoreCase()
	{
		return gtk_string_sorter_get_ignore_case(gtkStringSorter) != 0;
	}

	/**
	 * Sets the expression that is evaluated to obtain strings from items.
	 *
	 * The expression must have the type %G_TYPE_STRING.
	 *
	 * Params:
	 *     expression = a `GtkExpression`
	 */
	public void setExpression(Expression expression)
	{
		gtk_string_sorter_set_expression(gtkStringSorter, (expression is null) ? null : expression.getExpressionStruct());
	}

	/**
	 * Sets whether the sorter will ignore case differences.
	 *
	 * Params:
	 *     ignoreCase = %TRUE to ignore case differences
	 */
	public void setIgnoreCase(bool ignoreCase)
	{
		gtk_string_sorter_set_ignore_case(gtkStringSorter, ignoreCase);
	}
}
