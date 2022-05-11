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


module gobject.BindingGroup;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.c.functions;
public  import gobject.c.types;


/**
 * The #GBindingGroup can be used to bind multiple properties
 * from an object collectively.
 * 
 * Use the various methods to bind properties from a single source
 * object to multiple destination objects. Properties can be bound
 * bidirectionally and are connected when the source object is set
 * with g_binding_group_set_source().
 *
 * Since: 2.72
 */
public class BindingGroup : ObjectG
{
	/** the main Gtk struct */
	protected GBindingGroup* gBindingGroup;

	/** Get the main Gtk struct */
	public GBindingGroup* getBindingGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gBindingGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBindingGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GBindingGroup* gBindingGroup, bool ownedRef = false)
	{
		this.gBindingGroup = gBindingGroup;
		super(cast(GObject*)gBindingGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_binding_group_get_type();
	}

	/**
	 * Creates a new #GBindingGroup.
	 *
	 * Returns: a new #GBindingGroup
	 *
	 * Since: 2.72
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_binding_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GBindingGroup*) __p, true);
	}

	/**
	 * Creates a binding between @source_property on the source object
	 * and @target_property on @target. Whenever the @source_property
	 * is changed the @target_property is updated using the same value.
	 * The binding flag %G_BINDING_SYNC_CREATE is automatically specified.
	 *
	 * See g_object_bind_property() for more information.
	 *
	 * Params:
	 *     sourceProperty = the property on the source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = the flags used to create the #GBinding
	 *
	 * Since: 2.72
	 */
	public void bind(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags)
	{
		g_binding_group_bind(gBindingGroup, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags);
	}

	/**
	 * Creates a binding between @source_property on the source object and
	 * @target_property on @target, allowing you to set the transformation
	 * functions to be used by the binding. The binding flag
	 * %G_BINDING_SYNC_CREATE is automatically specified.
	 *
	 * See g_object_bind_property_full() for more information.
	 *
	 * Params:
	 *     sourceProperty = the property on the source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = the flags used to create the #GBinding
	 *     transformTo = the transformation function
	 *         from the source object to the @target, or %NULL to use the default
	 *     transformFrom = the transformation function
	 *         from the @target to the source object, or %NULL to use the default
	 *     userData = custom data to be passed to the transformation
	 *         functions, or %NULL
	 *     userDataDestroy = function to be called when disposing the binding,
	 *         to free the resources used by the transformation functions
	 *
	 * Since: 2.72
	 */
	public void bindFull(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify userDataDestroy)
	{
		g_binding_group_bind_full(gBindingGroup, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags, transformTo, transformFrom, userData, userDataDestroy);
	}

	/**
	 * Creates a binding between @source_property on the source object and
	 * @target_property on @target, allowing you to set the transformation
	 * functions to be used by the binding. The binding flag
	 * %G_BINDING_SYNC_CREATE is automatically specified.
	 *
	 * This function is the language bindings friendly version of
	 * g_binding_group_bind_property_full(), using #GClosures
	 * instead of function pointers.
	 *
	 * See g_object_bind_property_with_closures() for more information.
	 *
	 * Params:
	 *     sourceProperty = the property on the source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = the flags used to create the #GBinding
	 *     transformTo = a #GClosure wrapping the
	 *         transformation function from the source object to the @target,
	 *         or %NULL to use the default
	 *     transformFrom = a #GClosure wrapping the
	 *         transformation function from the @target to the source object,
	 *         or %NULL to use the default
	 *
	 * Since: 2.72
	 */
	public void bindWithClosures(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, Closure transformTo, Closure transformFrom)
	{
		g_binding_group_bind_with_closures(gBindingGroup, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags, (transformTo is null) ? null : transformTo.getClosureStruct(), (transformFrom is null) ? null : transformFrom.getClosureStruct());
	}

	/**
	 * Gets the source object used for binding properties.
	 *
	 * Returns: a #GObject or %NULL.
	 *
	 * Since: 2.72
	 */
	public ObjectG dupSource()
	{
		auto __p = g_binding_group_dup_source(gBindingGroup);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Sets @source as the source object used for creating property
	 * bindings. If there is already a source object all bindings from it
	 * will be removed.
	 *
	 * Note that all properties that have been bound must exist on @source.
	 *
	 * Params:
	 *     source = the source #GObject,
	 *         or %NULL to clear it
	 *
	 * Since: 2.72
	 */
	public void setSource(ObjectG source)
	{
		g_binding_group_set_source(gBindingGroup, (source is null) ? null : source.getObjectGStruct());
	}
}
