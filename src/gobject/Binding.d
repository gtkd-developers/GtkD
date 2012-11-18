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

/*
 * Conversion parameters:
 * inFile  = GBinding.html
 * outPack = gobject
 * outFile = Binding
 * strct   = GBinding
 * realStrct=
 * ctorStrct=
 * clss    = Binding
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_binding_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Closure
 * 	- gobject.Value
 * structWrap:
 * 	- GBinding* -> Binding
 * 	- GClosure* -> Closure
 * 	- GObject* -> ObjectG
 * 	- GValue* -> Value
 * 	- gpointer -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.Binding;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Closure;
private import gobject.Value;



private import gobject.ObjectG;

/**
 * Description
 * GBinding is the representation of a binding between a property on a
 * GObject instance (or source) and another property on another GObject
 * instance (or target). Whenever the source property changes, the same
 * value is applied to the target property; for instance, the following
 * binding:
 * $(DDOC_COMMENT example)
 * will cause object2:property-b to be updated every
 * time g_object_set() or the specific accessor changes the value of
 * object1:property-a.
 * It is possible to create a bidirectional binding between two properties
 * of two GObject instances, so that if either property changes, the
 * other is updated as well, for instance:
 * $(DDOC_COMMENT example)
 * will keep the two properties in sync.
 * It is also possible to set a custom transformation function (in both
 * directions, in case of a bidirectional binding) to apply a custom
 * transformation from the source value to the target value before
 * applying it; for instance, the following binding:
 * $(DDOC_COMMENT example)
 * will keep the value property of the two adjustments
 * in sync; the celsius_to_fahrenheit function will be
 * called whenever the adjustment1:value property changes
 * and will transform the current value of the property before applying it
 * to the adjustment2:value property; vice versa, the
 * fahrenheit_to_celsius function will be called whenever
 * the adjustment2:value property changes, and will
 * transform the current value of the property before applying it to the
 * adjustment1:value.
 * Note that GBinding does not resolve cycles by itself; a cycle like
 * $(DDOC_COMMENT example)
 * might lead to an infinite loop. The loop, in this particular case,
 * can be avoided if the objects emit the "notify" signal only
 * if the value has effectively been changed. A binding is implemented
 * using the "notify" signal, so it is susceptible to all the
 * various ways of blocking a signal emission, like g_signal_stop_emission()
 * or g_signal_handler_block().
 * A binding will be severed, and the resources it allocates freed, whenever
 * either one of the GObject instances it refers to are finalized, or when
 * the GBinding instance loses its last reference.
 * GBinding is available since GObject 2.26
 */
public class Binding : ObjectG
{
	
	/** the main Gtk struct */
	protected GBinding* gBinding;
	
	
	public GBinding* getBindingStruct()
	{
		return gBinding;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gBinding;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBinding* gBinding)
	{
		super(cast(GObject*)gBinding);
		this.gBinding = gBinding;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gBinding = cast(GBinding*)obj;
	}
	
	/**
	 */
	
	/**
	 * Retrieves the GObject instance used as the source of the binding
	 * Since 2.26
	 * Returns: the source GObject. [transfer none]
	 */
	public ObjectG getSource()
	{
		// GObject * g_binding_get_source (GBinding *binding);
		auto p = g_binding_get_source(gBinding);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Retrieves the name of the property of "source" used as the source
	 * of the binding
	 * Since 2.26
	 * Returns: the name of the source property
	 */
	public string getSourceProperty()
	{
		// const gchar * g_binding_get_source_property (GBinding *binding);
		return Str.toString(g_binding_get_source_property(gBinding));
	}
	
	/**
	 * Retrieves the GObject instance used as the target of the binding
	 * Since 2.26
	 * Returns: the target GObject. [transfer none]
	 */
	public ObjectG getTarget()
	{
		// GObject * g_binding_get_target (GBinding *binding);
		auto p = g_binding_get_target(gBinding);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}
	
	/**
	 * Retrieves the name of the property of "target" used as the target
	 * of the binding
	 * Since 2.26
	 * Returns: the name of the target property
	 */
	public string getTargetProperty()
	{
		// const gchar * g_binding_get_target_property (GBinding *binding);
		return Str.toString(g_binding_get_target_property(gBinding));
	}
	
	/**
	 * Retrieves the flags passed when constructing the GBinding
	 * Since 2.26
	 * Returns: the GBindingFlags used by the GBinding
	 */
	public GBindingFlags getFlags()
	{
		// GBindingFlags g_binding_get_flags (GBinding *binding);
		return g_binding_get_flags(gBinding);
	}
	
	/**
	 * Creates a binding between source_property on source and target_property
	 * on target. Whenever the source_property is changed the target_property is
	 * Since 2.26
	 * Params:
	 * source = the source GObject. [type GObject.Object]
	 * sourceProperty = the property on source to bind
	 * target = the target GObject. [type GObject.Object]
	 * targetProperty = the property on target to bind
	 * flags = flags to pass to GBinding
	 * Returns: the GBinding instance representing the binding between the two GObject instances. The binding is released whenever the GBinding reference count reaches zero. [transfer none]
	 */
	public static Binding gObjectBindProperty(void* source, string sourceProperty, void* target, string targetProperty, GBindingFlags flags)
	{
		// GBinding * g_object_bind_property (gpointer source,  const gchar *source_property,  gpointer target,  const gchar *target_property,  GBindingFlags flags);
		auto p = g_object_bind_property(source, Str.toStringz(sourceProperty), target, Str.toStringz(targetProperty), flags);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Binding)(cast(GBinding*) p);
	}
	
	/**
	 * Complete version of g_object_bind_property().
	 * Creates a binding between source_property on source and target_property
	 * on target, allowing you to set the transformation functions to be used by
	 * the binding.
	 * Since 2.26
	 * Params:
	 * source = the source GObject. [type GObject.Object]
	 * sourceProperty = the property on source to bind
	 * target = the target GObject. [type GObject.Object]
	 * targetProperty = the property on target to bind
	 * flags = flags to pass to GBinding
	 * transformTo = the transformation function
	 * from the source to the target, or NULL to use the default. [scope notified][allow-none]
	 * transformFrom = the transformation function
	 * from the target to the source, or NULL to use the default. [scope notified][allow-none]
	 * userData = custom data to be passed to the transformation functions,
	 * or NULL
	 * notify = function to be called when disposing the binding, to free the
	 * resources used by the transformation functions
	 * Returns: the GBinding instance representing the binding between the two GObject instances. The binding is released whenever the GBinding reference count reaches zero. [transfer none]
	 */
	public static Binding gObjectBindPropertyFull(void* source, string sourceProperty, void* target, string targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify)
	{
		// GBinding * g_object_bind_property_full (gpointer source,  const gchar *source_property,  gpointer target,  const gchar *target_property,  GBindingFlags flags,  GBindingTransformFunc transform_to,  GBindingTransformFunc transform_from,  gpointer user_data,  GDestroyNotify notify);
		auto p = g_object_bind_property_full(source, Str.toStringz(sourceProperty), target, Str.toStringz(targetProperty), flags, transformTo, transformFrom, userData, notify);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Binding)(cast(GBinding*) p);
	}
	
	/**
	 * Creates a binding between source_property on source and target_property
	 * on target, allowing you to set the transformation functions to be used by
	 * the binding.
	 * This function is the language bindings friendly version of
	 * g_object_bind_property_full(), using GClosures instead of
	 * function pointers.
	 * Rename to: g_object_bind_property_full
	 * Since 2.26
	 * Params:
	 * source = the source GObject. [type GObject.Object]
	 * sourceProperty = the property on source to bind
	 * target = the target GObject. [type GObject.Object]
	 * targetProperty = the property on target to bind
	 * flags = flags to pass to GBinding
	 * transformTo = a GClosure wrapping the transformation function
	 * from the source to the target, or NULL to use the default
	 * transformFrom = a GClosure wrapping the transformation function
	 * from the target to the source, or NULL to use the default
	 * Returns: the GBinding instance representing the binding between the two GObject instances. The binding is released whenever the GBinding reference count reaches zero. [transfer none]
	 */
	public static Binding gObjectBindPropertyWithClosures(void* source, string sourceProperty, void* target, string targetProperty, GBindingFlags flags, Closure transformTo, Closure transformFrom)
	{
		// GBinding * g_object_bind_property_with_closures  (gpointer source,  const gchar *source_property,  gpointer target,  const gchar *target_property,  GBindingFlags flags,  GClosure *transform_to,  GClosure *transform_from);
		auto p = g_object_bind_property_with_closures(source, Str.toStringz(sourceProperty), target, Str.toStringz(targetProperty), flags, (transformTo is null) ? null : transformTo.getClosureStruct(), (transformFrom is null) ? null : transformFrom.getClosureStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Binding)(cast(GBinding*) p);
	}
}
