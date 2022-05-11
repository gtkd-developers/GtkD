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


module gtk.PropertyExpression;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gtk.Expression;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GObject` property value in a `GtkExpression`.
 */
public class PropertyExpression : Expression
{
	/** the main Gtk struct */
	protected GtkPropertyExpression* gtkPropertyExpression;

	/** Get the main Gtk struct */
	public GtkPropertyExpression* getPropertyExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPropertyExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPropertyExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPropertyExpression* gtkPropertyExpression, bool ownedRef = false)
	{
		this.gtkPropertyExpression = gtkPropertyExpression;
		super(cast(GtkExpression*)gtkPropertyExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_property_expression_get_type();
	}

	/**
	 * Creates an expression that looks up a property.
	 *
	 * The object to use is found by evaluating the `expression`,
	 * or using the `this` argument when `expression` is `NULL`.
	 *
	 * If the resulting object conforms to `this_type`, its property named
	 * `property_name` will be queried. Otherwise, this expression's
	 * evaluation will fail.
	 *
	 * The given `this_type` must have a property with `property_name`.
	 *
	 * Params:
	 *     thisType = The type to expect for the this type
	 *     expression = Expression to
	 *         evaluate to get the object to query or `NULL` to
	 *         query the `this` object
	 *     propertyName = name of the property
	 *
	 * Returns: a new `GtkExpression`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType thisType, Expression expression, string propertyName)
	{
		auto __p = gtk_property_expression_new(thisType, (expression is null) ? null : expression.getExpressionStruct(true), Str.toStringz(propertyName));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPropertyExpression*) __p);
	}

	/**
	 * Creates an expression that looks up a property.
	 *
	 * The object to use is found by evaluating the `expression`,
	 * or using the `this` argument when `expression` is `NULL`.
	 *
	 * If the resulting object conforms to `this_type`, its
	 * property specified by `pspec` will be queried.
	 * Otherwise, this expression's evaluation will fail.
	 *
	 * Params:
	 *     expression = Expression to
	 *         evaluate to get the object to query or `NULL` to
	 *         query the `this` object
	 *     pspec = the `GParamSpec` for the property to query
	 *
	 * Returns: a new `GtkExpression`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Expression expression, ParamSpec pspec)
	{
		auto __p = gtk_property_expression_new_for_pspec((expression is null) ? null : expression.getExpressionStruct(true), (pspec is null) ? null : pspec.getParamSpecStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_pspec");
		}

		this(cast(GtkPropertyExpression*) __p);
	}

	/**
	 * Gets the expression specifying the object of
	 * a property expression.
	 *
	 * Returns: the object expression
	 */
	public Expression getExpression()
	{
		auto __p = gtk_property_expression_get_expression(cast(GtkExpression*)gtkPropertyExpression);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Gets the `GParamSpec` specifying the property of
	 * a property expression.
	 *
	 * Returns: the `GParamSpec` for the property
	 */
	public ParamSpec getPspec()
	{
		auto __p = gtk_property_expression_get_pspec(cast(GtkExpression*)gtkPropertyExpression);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p);
	}
}
