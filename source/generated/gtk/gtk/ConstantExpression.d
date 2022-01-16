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


module gtk.ConstantExpression;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Expression;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A constant value in a `GtkExpression`.
 */
public class ConstantExpression : Expression
{
	/** the main Gtk struct */
	protected GtkConstantExpression* gtkConstantExpression;

	/** Get the main Gtk struct */
	public GtkConstantExpression* getConstantExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkConstantExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkConstantExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkConstantExpression* gtkConstantExpression, bool ownedRef = false)
	{
		this.gtkConstantExpression = gtkConstantExpression;
		super(cast(GtkExpression*)gtkConstantExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_constant_expression_get_type();
	}

	/**
	 * Creates an expression that always evaluates to the given `value`.
	 *
	 * Params:
	 *     value = a `GValue`
	 *
	 * Returns: a new `GtkExpression`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Value value)
	{
		auto __p = gtk_constant_expression_new_for_value((value is null) ? null : value.getValueStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_value");
		}

		this(cast(GtkConstantExpression*) __p);
	}

	/**
	 * Gets the value that a constant expression evaluates to.
	 *
	 * Returns: the value
	 */
	public Value getValue()
	{
		auto __p = gtk_constant_expression_get_value(cast(GtkExpression*)gtkConstantExpression);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}
}
