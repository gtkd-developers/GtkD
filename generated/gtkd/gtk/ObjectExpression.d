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


module gtk.ObjectExpression;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GObject` value in a `GtkExpression`.
 */
public class ObjectExpression : Expression
{
	/** the main Gtk struct */
	protected GtkObjectExpression* gtkObjectExpression;

	/** Get the main Gtk struct */
	public GtkObjectExpression* getObjectExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkObjectExpression;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkObjectExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkObjectExpression* gtkObjectExpression, bool ownedRef = false)
	{
		this.gtkObjectExpression = gtkObjectExpression;
		super(cast(GtkExpression*)gtkObjectExpression, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_object_expression_get_type();
	}

	/**
	 * Creates an expression evaluating to the given `object` with a weak reference.
	 *
	 * Once the `object` is disposed, it will fail to evaluate.
	 *
	 * This expression is meant to break reference cycles.
	 *
	 * If you want to keep a reference to `object`, use [ctor@Gtk.ConstantExpression.new].
	 *
	 * Params:
	 *     object = object to watch
	 *
	 * Returns: a new `GtkExpression`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG object)
	{
		auto __p = gtk_object_expression_new((object is null) ? null : object.getObjectGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkObjectExpression*) __p);
	}

	/**
	 * Gets the object that the expression evaluates to.
	 *
	 * Returns: the object, or `NULL`
	 */
	public ObjectG getObject()
	{
		auto __p = gtk_object_expression_get_object(cast(GtkExpression*)gtkObjectExpression);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}
}
