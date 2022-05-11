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


module gtk.Expression;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.ExpressionWatch;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * `GtkExpression` provides a way to describe references to values.
 * 
 * An important aspect of expressions is that the value can be obtained
 * from a source that is several steps away. For example, an expression
 * may describe ‘the value of property A of `object1`, which is itself the
 * value of a property of `object2`’. And `object1` may not even exist yet
 * at the time that the expression is created. This is contrast to `GObject`
 * property bindings, which can only create direct connections between
 * the properties of two objects that must both exist for the duration
 * of the binding.
 * 
 * An expression needs to be "evaluated" to obtain the value that it currently
 * refers to. An evaluation always happens in the context of a current object
 * called `this` (it mirrors the behavior of object-oriented languages),
 * which may or may not influence the result of the evaluation. Use
 * [method@Gtk.Expression.evaluate] for evaluating an expression.
 * 
 * Various methods for defining expressions exist, from simple constants via
 * [ctor@Gtk.ConstantExpression.new] to looking up properties in a `GObject`
 * (even recursively) via [ctor@Gtk.PropertyExpression.new] or providing
 * custom functions to transform and combine expressions via
 * [ctor@Gtk.ClosureExpression.new].
 * 
 * Here is an example of a complex expression:
 * 
 * ```c
 * color_expr = gtk_property_expression_new (GTK_TYPE_LIST_ITEM,
 * NULL, "item");
 * expression = gtk_property_expression_new (GTK_TYPE_COLOR,
 * color_expr, "name");
 * ```
 * 
 * when evaluated with `this` being a `GtkListItem`, it will obtain the
 * "item" property from the `GtkListItem`, and then obtain the "name" property
 * from the resulting object (which is assumed to be of type `GTK_TYPE_COLOR`).
 * 
 * A more concise way to describe this would be
 * 
 * ```
 * this->item->name
 * ```
 * 
 * The most likely place where you will encounter expressions is in the context
 * of list models and list widgets using them. For example, `GtkDropDown` is
 * evaluating a `GtkExpression` to obtain strings from the items in its model
 * that it can then use to match against the contents of its search entry.
 * `GtkStringFilter` is using a `GtkExpression` for similar reasons.
 * 
 * By default, expressions are not paying attention to changes and evaluation is
 * just a snapshot of the current state at a given time. To get informed about
 * changes, an expression needs to be "watched" via a [struct@Gtk.ExpressionWatch],
 * which will cause a callback to be called whenever the value of the expression may
 * have changed; [method@Gtk.Expression.watch] starts watching an expression, and
 * [method@Gtk.ExpressionWatch.unwatch] stops.
 * 
 * Watches can be created for automatically updating the property of an object,
 * similar to GObject's `GBinding` mechanism, by using [method@Gtk.Expression.bind].
 * 
 * ## GtkExpression in GObject properties
 * 
 * In order to use a `GtkExpression` as a `GObject` property, you must use the
 * [id@gtk_param_spec_expression] when creating a `GParamSpec` to install in the
 * `GObject` class being defined; for instance:
 * 
 * ```c
 * obj_props[PROP_EXPRESSION] =
 * gtk_param_spec_expression ("expression",
 * "Expression",
 * "The expression used by the widget",
 * G_PARAM_READWRITE |
 * G_PARAM_STATIC_STRINGS |
 * G_PARAM_EXPLICIT_NOTIFY);
 * ```
 * 
 * When implementing the `GObjectClass.set_property` and `GObjectClass.get_property`
 * virtual functions, you must use [id@gtk_value_get_expression], to retrieve the
 * stored `GtkExpression` from the `GValue` container, and [id@gtk_value_set_expression],
 * to store the `GtkExpression` into the `GValue`; for instance:
 * 
 * ```c
 * // in set_property()...
 * case PROP_EXPRESSION:
 * foo_widget_set_expression (foo, gtk_value_get_expression (value));
 * break;
 * 
 * // in get_property()...
 * case PROP_EXPRESSION:
 * gtk_value_set_expression (value, foo->expression);
 * break;
 * ```
 * 
 * ## GtkExpression in .ui files
 * 
 * `GtkBuilder` has support for creating expressions. The syntax here can be used where
 * a `GtkExpression` object is needed like in a `<property>` tag for an expression
 * property, or in a `<binding name="property">` tag to bind a property to an expression.
 * 
 * To create a property expression, use the `<lookup>` element. It can have a `type`
 * attribute to specify the object type, and a `name` attribute to specify the property
 * to look up. The content of `<lookup>` can either be an element specfiying the expression
 * to use the object, or a string that specifies the name of the object to use.
 * 
 * Example:
 * 
 * ```xml
 * <lookup name='search'>string_filter</lookup>
 * ```
 * 
 * To create a constant expression, use the `<constant>` element. If the type attribute
 * is specified, the element content is interpreted as a value of that type. Otherwise,
 * it is assumed to be an object. For instance:
 * 
 * ```xml
 * <constant>string_filter</constant>
 * <constant type='gchararray'>Hello, world</constant>
 * ```
 * 
 * To create a closure expression, use the `<closure>` element. The `type` and `function`
 * attributes specify what function to use for the closure, the content of the element
 * contains the expressions for the parameters. For instance:
 * 
 * ```xml
 * <closure type='gchararray' function='combine_args_somehow'>
 * <constant type='gchararray'>File size:</constant>
 * <lookup type='GFile' name='size'>myfile</lookup>
 * </closure>
 * ```
 */
public class Expression
{
	/** the main Gtk struct */
	protected GtkExpression* gtkExpression;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkExpression* getExpressionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkExpression;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkExpression;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkExpression* gtkExpression, bool ownedRef = false)
	{
		this.gtkExpression = gtkExpression;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_expression_unref(gtkExpression);
	}


	/** */
	public static GType getType()
	{
		return gtk_expression_get_type();
	}

	/**
	 * Bind `target`'s property named `property` to `self`.
	 *
	 * The value that `self` evaluates to is set via `g_object_set()` on
	 * `target`. This is repeated whenever `self` changes to ensure that
	 * the object's property stays synchronized with `self`.
	 *
	 * If `self`'s evaluation fails, `target`'s `property` is not updated.
	 * You can ensure that this doesn't happen by using a fallback
	 * expression.
	 *
	 * Note that this function takes ownership of `self`. If you want
	 * to keep it around, you should [method@Gtk.Expression.ref] it beforehand.
	 *
	 * Params:
	 *     target = the target object to bind to
	 *     property = name of the property on `target` to bind to
	 *     this_ = the this argument for
	 *         the evaluation of `self`
	 *
	 * Returns: a `GtkExpressionWatch`
	 */
	public ExpressionWatch bind(ObjectG target, string property, ObjectG this_)
	{
		auto __p = gtk_expression_bind(gtkExpression, (target is null) ? null : target.getObjectGStruct(), Str.toStringz(property), (this_ is null) ? null : this_.getObjectGStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExpressionWatch)(cast(GtkExpressionWatch*) __p);
	}

	/**
	 * Evaluates the given expression and on success stores the result
	 * in @value.
	 *
	 * The `GType` of `value` will be the type given by
	 * [method@Gtk.Expression.get_value_type].
	 *
	 * It is possible that expressions cannot be evaluated - for example
	 * when the expression references objects that have been destroyed or
	 * set to `NULL`. In that case `value` will remain empty and `FALSE`
	 * will be returned.
	 *
	 * Params:
	 *     this_ = the this argument for the evaluation
	 *     value = an empty `GValue`
	 *
	 * Returns: `TRUE` if the expression could be evaluated
	 */
	public bool evaluate(ObjectG this_, Value value)
	{
		return gtk_expression_evaluate(gtkExpression, (this_ is null) ? null : this_.getObjectGStruct(), (value is null) ? null : value.getValueStruct()) != 0;
	}

	/**
	 * Gets the `GType` that this expression evaluates to.
	 *
	 * This type is constant and will not change over the lifetime
	 * of this expression.
	 *
	 * Returns: The type returned from [method@Gtk.Expression.evaluate]
	 */
	public GType getValueType()
	{
		return gtk_expression_get_value_type(gtkExpression);
	}

	/**
	 * Checks if the expression is static.
	 *
	 * A static expression will never change its result when
	 * [method@Gtk.Expression.evaluate] is called on it with the same arguments.
	 *
	 * That means a call to [method@Gtk.Expression.watch] is not necessary because
	 * it will never trigger a notify.
	 *
	 * Returns: `TRUE` if the expression is static
	 */
	public bool isStatic()
	{
		return gtk_expression_is_static(gtkExpression) != 0;
	}

	alias doref = ref_;
	/**
	 * Acquires a reference on the given `GtkExpression`.
	 *
	 * Returns: the `GtkExpression` with an additional reference
	 */
	public Expression ref_()
	{
		auto __p = gtk_expression_ref(gtkExpression);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p, true);
	}

	/**
	 * Releases a reference on the given `GtkExpression`.
	 *
	 * If the reference was the last, the resources associated to the `self` are
	 * freed.
	 */
	public void unref()
	{
		gtk_expression_unref(gtkExpression);
	}

	/**
	 * Watch the given `expression` for changes.
	 *
	 * The @notify function will be called whenever the evaluation of `self`
	 * may have changed.
	 *
	 * GTK cannot guarantee that the evaluation did indeed change when the @notify
	 * gets invoked, but it guarantees the opposite: When it did in fact change,
	 * the @notify will be invoked.
	 *
	 * Params:
	 *     this_ = the `this` argument to
	 *         watch
	 *     notify = callback to invoke when the expression changes
	 *     userData = user data to pass to the `notify` callback
	 *     userDestroy = destroy notify for `user_data`
	 *
	 * Returns: The newly installed watch. Note that the only
	 *     reference held to the watch will be released when the watch is unwatched
	 *     which can happen automatically, and not just via
	 *     [method@Gtk.ExpressionWatch.unwatch]. You should call [method@Gtk.ExpressionWatch.ref]
	 *     if you want to keep the watch around.
	 */
	public ExpressionWatch watch(ObjectG this_, GtkExpressionNotify notify, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_expression_watch(gtkExpression, (this_ is null) ? null : this_.getObjectGStruct(), notify, userData, userDestroy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ExpressionWatch)(cast(GtkExpressionWatch*) __p);
	}
}
