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


module gobject.ObjectG;

private import core.memory;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions : g_datalist_get_flags;
private import gobject.Binding;
private import gobject.Closure;
private import gobject.DClosure;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.TypeInterface;
private import gobject.Value;
private import gobject.c.functions;
public  import gobject.c.types;
private import linker.Loader;
private import std.traits;


/**
 * The base object type.
 * 
 * All the fields in the `GObject` structure are private to the implementation
 * and should never be accessed directly.
 * 
 * Since GLib 2.72, all #GObjects are guaranteed to be aligned to at least the
 * alignment of the largest basic GLib type (typically this is #guint64 or
 * #gdouble). If you need larger alignment for an element in a #GObject, you
 * should allocate it on the heap (aligned), or arrange for your #GObject to be
 * appropriately padded. This guarantee applies to the #GObject (or derived)
 * struct, the #GObjectClass (or derived) struct, and any private data allocated
 * by G_ADD_PRIVATE().
 */
public class ObjectG
{
	/** the main Gtk struct */
	protected GObject* gObject;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GObject* getObjectGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gObject;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gObject;
	}

	protected bool isGcRoot;
	package DClosure[gulong] signals;

	/**
	 * Sets our main struct and passes store it on the gobject.
	 * Add a gabage collector root to the gtk+ struct so it doesn't get collect
	 */
	public this (GObject* gObject, bool ownedRef = false)
	{
		this.gObject = gObject;
		if ( gObject !is  null )
		{
			setDataFull("GObject", cast(void*)this, cast(GDestroyNotify)&destroyNotify);
			addToggleRef(cast(GToggleNotify)&toggleNotify, cast(void*)this);

			//If the refCount is larger then 1 toggleNotify isn't called
			if (gObject.refCount > 1 && !isGcRoot)
			{
				GC.addRoot(cast(void*)this);
				isGcRoot = true;
			}

			//Remove the floating reference if there is one.
			if ( isFloating() )
			{
				refSink();
				unref();
			}
			//If we already owned this reference remove the one added by addToggleRef.
			else if ( ownedRef )
			{
				unref();
			}
		}
	}

	extern(C)
	{
		static void destroyNotify(ObjectG obj)
		{
			if ( obj.isGcRoot )
			{
				GC.removeRoot(cast(void*)obj);
				obj.isGcRoot = false;
			}

			if ( obj.hasToggleRef() )
				obj.removeToggleRef(cast(GToggleNotify)&toggleNotify, cast(void*)obj);

			obj.gObject = null;
		}

		static void toggleNotify(ObjectG obj, GObject* object, int isLastRef)
		{
			if ( isLastRef && obj.isGcRoot )
			{
				GC.removeRoot(cast(void*)obj);
				obj.isGcRoot = false;
			}
			else if ( !obj.isGcRoot )
			{
				GC.addRoot(cast(void*)obj);
				obj.isGcRoot = true;
			}
		}
	}

	~this()
	{
		static if ( isPointer!(typeof(g_object_steal_data)) )
			bool libLoaded = Linker.isLoaded(LIBRARY_GOBJECT[0]);
		else
			enum libLoaded = true;

		if ( libLoaded && gObject !is null )
		{
			// Remove the GDestroyNotify callback,
			// for when the D object is destroyed before the C one.
			g_object_steal_data(gObject, cast(char*)"GObject");

			if ( isGcRoot )
			{
				GC.removeRoot(cast(void*)this);
				isGcRoot = false;
			}

			if ( hasToggleRef() )
				g_object_remove_toggle_ref(gObject, cast(GToggleNotify)&toggleNotify, cast(void*)this);
			else
				g_object_unref(gObject);
		}
	}

	/** */
	T opCast(T)()
	{
		if ( !this )
			return null;

		static if ( is(T : ObjectG)
			&& !is(T == interface)
			&& is(typeof(new T(cast(typeof(T.tupleof[0]))gObject, false))) )
		{
			//If a regular cast works, return the result.
			if ( auto r = cast(T)super )
				return r;

			//Prints a warning if the cast is invalid.
			//g_type_check_instance_cast(cast(GTypeInstance*)gObject, T.getType());

			//Can we cast this type to T.
			if ( !g_type_is_a(gObject.gTypeInstance.gClass.gType, T.getType()) )
				return null;

			//Remove the GDestroyNotify callback for the original d object.
			g_object_steal_data(gObject, "GObject");
			//Remove the original object as a GC root if needed.
			if ( isGcRoot )
			{
				GC.removeRoot(cast(void*)this);
				isGcRoot = false;
			}

			if ( hasToggleRef() )
			{
				//Add a reference for the original D object before we remove the toggle reference.
				g_object_ref(gObject);
				g_object_remove_toggle_ref(gObject, cast(GToggleNotify)&toggleNotify, cast(void*)this);
			}

			//The new object handles the memory management.
			return new T(cast(typeof(T.tupleof[0]))gObject, false);
		}
		else static if ( is(T == interface)
			&& hasStaticMember!(T, "getType")
			&& is(ReturnType!(T.getType) == GType) )
		{
			//If a regular cast works, return the result.
			if ( auto r = cast(T)super )
				return r;

			//Do we implement interface T.
			if ( !g_type_is_a(gObject.gTypeInstance.gClass.gType, T.getType()) )
				return null;

			return getInterfaceInstance!T(gObject);
		}
		else
			return cast(T)super;
	}

	unittest
	{
		ObjectG obj = null;

		assert( (cast(Binding)obj) is null );
	}

	/**
	 * Gets a D Object from the objects table of associations.
	 * Params:
	 *  obj = GObject containing the associations.
	 * Returns: the D Object if found, or a newly constructed object if no such Object exists.
	 */
	public static RT getDObject(T, RT=T, U)(U obj, bool ownedRef = false)
	{
		if ( obj is null )
		{
			return null;
		}

		static if ( is(T : ObjectG) && !is(RT == interface) )
		{
			auto p = g_object_get_data(cast(GObject*)obj, Str.toStringz("GObject"));

			if ( p !is null )
				return cast(RT)cast(ObjectG)p;
			else
				return new T(obj, ownedRef);
		}
		else static if ( is(RT == interface) && hasMember!(RT, "getType") && is(ReturnType!(RT.getType) == GType) )
		{
			auto p = g_object_get_data(cast(GObject*)obj, Str.toStringz("GObject"));

			if ( p !is null )
				return cast(RT)cast(ObjectG)p;
			else
				return getInterfaceInstance!RT(cast(GObject*)obj);
		}
		else static if ( is(typeof(new T(obj, ownedRef))) )
		{
			return new T(obj, ownedRef);
		}
		else
		{
			return new T(obj);
		}
	}

	private static I getInterfaceInstance(I)(GObject* instance)
	{
		static class Impl: ObjectG, I
		{
			public this (GObject* gObject, bool ownedRef = false)
			{
				super(gObject, ownedRef);
			}

			/** the main Gtk struct as a void* */
			protected override void* getStruct()
			{
				return cast(void*)gObject;
			}

			// add the interface capabilities
			mixin("import "~ moduleName!I[0..$-2] ~"T;import "~ moduleName!I ~"; mixin "~ __traits(identifier, I)[0..$-2] ~"T!("~__traits(identifier, Impl)~");");
		}

		ClassInfo ci = Impl.classinfo;
		Impl iface;
		void* p;

		//Skip all the setup for the memory management,
		//and only add an extra reference for the instance returned.
		p = GC.malloc(ci.initializer.length, GC.BlkAttr.FINALIZE, ci);
		p[0..ci.initializer.length] = ci.initializer;
		iface = cast(Impl)p;
		iface.gObject = instance;
		iface.doref();

		return iface;
	}

	/**
	 * Is there a toggle ref connected to this object.
	 */
	private bool hasToggleRef()
	{
		enum TOGGLE_REF_FLAG = 0x1;

		if ( (g_datalist_get_flags(&gObject.qdata) & TOGGLE_REF_FLAG) != 0 )
			//TODO: Assumes we always have the gObject data set if the toggleRef is connected to this instance.
		return (g_object_get_data(gObject, cast(char*)"GObject") is cast(void*)this);
		else
			return false;
	}

	public void removeGcRoot()
	{
		if ( hasToggleRef() )
		{
			g_object_ref(gObject);
			g_object_remove_toggle_ref(gObject, cast(GToggleNotify)&toggleNotify, cast(void*)this);
		}

		if ( isGcRoot )
		{
			GC.removeRoot(cast(void*)this);
			isGcRoot = false;
		}
	}

	/** */
	public void setProperty(T)(string propertyName, T value)
	{
		setProperty(propertyName, new Value(value));
	}

	deprecated("Use the member function")
	public static void unref(ObjectG obj)
	{
		obj.unref();
	}

	deprecated("Use the member function")
	public static ObjectG doref(ObjectG obj)
	{
		return obj.doref();
	}

	/**
	 * The notify signal is emitted on an object when one of its
	 * properties has been changed. Note that getting this signal
	 * doesn't guarantee that the value of the property has actually
	 * changed, it may also be emitted when the setter for the property
	 * is called to reinstate the previous value.
	 *
	 * This signal is typically used to obtain change notification for a
	 * single property.
	 *
	 * It is important to note that you must use
	 * canonical parameter names for the property.
	 *
	 * Params:
	 *     dlg          = The callback.
	 *     property     = Set this if you only want to receive the signal for a specific property.
	 *     connectFlags = The behavior of the signal's connection.
	 */
	gulong addOnNotify(void delegate(ParamSpec, ObjectG) dlg, string property = "", ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		string signalName;

		if ( property == "" )
			signalName = "notify";
		else
			signalName = "notify::"~ property;

		return Signals.connect(this, signalName, dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_initially_unowned_get_type();
	}

	/**
	 * Creates a new instance of a #GObject subtype and sets its properties.
	 *
	 * Construction parameters (see %G_PARAM_CONSTRUCT, %G_PARAM_CONSTRUCT_ONLY)
	 * which are not explicitly specified are set to their default values.
	 *
	 * Params:
	 *     objectType = the type id of the #GObject subtype to instantiate
	 *     firstPropertyName = the name of the first property
	 *     varArgs = the value of the first property, followed optionally by more
	 *         name/value pairs, followed by %NULL
	 *
	 * Returns: a new instance of @object_type
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType objectType, string firstPropertyName, void* varArgs)
	{
		auto __p = g_object_new_valist(objectType, Str.toStringz(firstPropertyName), varArgs);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}

		this(cast(GObject*) __p, true);
	}

	/**
	 * Creates a new instance of a #GObject subtype and sets its properties using
	 * the provided arrays. Both arrays must have exactly @n_properties elements,
	 * and the names and values correspond by index.
	 *
	 * Construction parameters (see %G_PARAM_CONSTRUCT, %G_PARAM_CONSTRUCT_ONLY)
	 * which are not explicitly specified are set to their default values.
	 *
	 * Params:
	 *     objectType = the object type to instantiate
	 *     names = the names of each property to be set
	 *     values = the values of each property to be set
	 *
	 * Returns: a new instance of
	 *     @object_type
	 *
	 * Since: 2.54
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType objectType, string[] names, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		auto __p = g_object_new_with_properties(objectType, cast(uint)values.length, Str.toStringzArray(names), valuesArray.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_properties");
		}

		this(cast(GObject*) __p, true);
	}

	/**
	 * Creates a new instance of a #GObject subtype and sets its properties.
	 *
	 * Construction parameters (see %G_PARAM_CONSTRUCT, %G_PARAM_CONSTRUCT_ONLY)
	 * which are not explicitly specified are set to their default values.
	 *
	 * Deprecated: Use g_object_new_with_properties() instead.
	 * deprecated. See #GParameter for more information.
	 *
	 * Params:
	 *     objectType = the type id of the #GObject subtype to instantiate
	 *     parameters = an array of #GParameter
	 *
	 * Returns: a new instance of
	 *     @object_type
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType objectType, GParameter[] parameters)
	{
		auto __p = g_object_newv(objectType, cast(uint)parameters.length, parameters.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by newv");
		}

		this(cast(GObject*) __p, true);
	}

	/** */
	public static size_t compatControl(size_t what, void* data)
	{
		return g_object_compat_control(what, data);
	}

	/**
	 * Find the #GParamSpec with the given name for an
	 * interface. Generally, the interface vtable passed in as @g_iface
	 * will be the default vtable from g_type_default_interface_ref(), or,
	 * if you know the interface has already been loaded,
	 * g_type_default_interface_peek().
	 *
	 * Params:
	 *     gIface = any interface vtable for the
	 *         interface, or the default vtable for the interface
	 *     propertyName = name of a property to look up.
	 *
	 * Returns: the #GParamSpec for the property of the
	 *     interface with the name @property_name, or %NULL if no
	 *     such property exists.
	 *
	 * Since: 2.4
	 */
	public static ParamSpec interfaceFindProperty(TypeInterface gIface, string propertyName)
	{
		auto __p = g_object_interface_find_property((gIface is null) ? null : gIface.getTypeInterfaceStruct(), Str.toStringz(propertyName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p);
	}

	/**
	 * Add a property to an interface; this is only useful for interfaces
	 * that are added to GObject-derived types. Adding a property to an
	 * interface forces all objects classes with that interface to have a
	 * compatible property. The compatible property could be a newly
	 * created #GParamSpec, but normally
	 * g_object_class_override_property() will be used so that the object
	 * class only needs to provide an implementation and inherits the
	 * property description, default value, bounds, and so forth from the
	 * interface property.
	 *
	 * This function is meant to be called from the interface's default
	 * vtable initialization function (the @class_init member of
	 * #GTypeInfo.) It must not be called after after @class_init has
	 * been called for any object types implementing this interface.
	 *
	 * If @pspec is a floating reference, it will be consumed.
	 *
	 * Params:
	 *     gIface = any interface vtable for the
	 *         interface, or the default
	 *         vtable for the interface.
	 *     pspec = the #GParamSpec for the new property
	 *
	 * Since: 2.4
	 */
	public static void interfaceInstallProperty(TypeInterface gIface, ParamSpec pspec)
	{
		g_object_interface_install_property((gIface is null) ? null : gIface.getTypeInterfaceStruct(), (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Lists the properties of an interface.Generally, the interface
	 * vtable passed in as @g_iface will be the default vtable from
	 * g_type_default_interface_ref(), or, if you know the interface has
	 * already been loaded, g_type_default_interface_peek().
	 *
	 * Params:
	 *     gIface = any interface vtable for the
	 *         interface, or the default vtable for the interface
	 *
	 * Returns: a
	 *     pointer to an array of pointers to #GParamSpec
	 *     structures. The paramspecs are owned by GLib, but the
	 *     array should be freed with g_free() when you are done with
	 *     it.
	 *
	 * Since: 2.4
	 */
	public static ParamSpec[] interfaceListProperties(TypeInterface gIface)
	{
		uint nPropertiesP;

		auto __p = g_object_interface_list_properties((gIface is null) ? null : gIface.getTypeInterfaceStruct(), &nPropertiesP);

		if(__p is null)
		{
			return null;
		}

		ParamSpec[] arr = new ParamSpec[nPropertiesP];
		for(int i = 0; i < nPropertiesP; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p[i]);
		}

		return arr;
	}

	/**
	 * Increases the reference count of the object by one and sets a
	 * callback to be called when all other references to the object are
	 * dropped, or when this is already the last reference to the object
	 * and another reference is established.
	 *
	 * This functionality is intended for binding @object to a proxy
	 * object managed by another memory manager. This is done with two
	 * paired references: the strong reference added by
	 * g_object_add_toggle_ref() and a reverse reference to the proxy
	 * object which is either a strong reference or weak reference.
	 *
	 * The setup is that when there are no other references to @object,
	 * only a weak reference is held in the reverse direction from @object
	 * to the proxy object, but when there are other references held to
	 * @object, a strong reference is held. The @notify callback is called
	 * when the reference from @object to the proxy object should be
	 * "toggled" from strong to weak (@is_last_ref true) or weak to strong
	 * (@is_last_ref false).
	 *
	 * Since a (normal) reference must be held to the object before
	 * calling g_object_add_toggle_ref(), the initial state of the reverse
	 * link is always strong.
	 *
	 * Multiple toggle references may be added to the same gobject,
	 * however if there are multiple toggle references to an object, none
	 * of them will ever be notified until all but one are removed.  For
	 * this reason, you should only ever use a toggle reference if there
	 * is important state in the proxy object.
	 *
	 * Params:
	 *     notify = a function to call when this reference is the
	 *         last reference to the object, or is no longer
	 *         the last reference.
	 *     data = data to pass to @notify
	 *
	 * Since: 2.8
	 */
	public void addToggleRef(GToggleNotify notify, void* data)
	{
		g_object_add_toggle_ref(gObject, notify, data);
	}

	/**
	 * Adds a weak reference from weak_pointer to @object to indicate that
	 * the pointer located at @weak_pointer_location is only valid during
	 * the lifetime of @object. When the @object is finalized,
	 * @weak_pointer will be set to %NULL.
	 *
	 * Note that as with g_object_weak_ref(), the weak references created by
	 * this method are not thread-safe: they cannot safely be used in one
	 * thread if the object's last g_object_unref() might happen in another
	 * thread. Use #GWeakRef if thread-safety is required.
	 *
	 * Params:
	 *     weakPointerLocation = The memory address
	 *         of a pointer.
	 */
	public void addWeakPointer(ref void* weakPointerLocation)
	{
		g_object_add_weak_pointer(gObject, &weakPointerLocation);
	}

	/**
	 * Creates a binding between @source_property on @source and @target_property
	 * on @target.
	 *
	 * Whenever the @source_property is changed the @target_property is
	 * updated using the same value. For instance:
	 *
	 * |[<!-- language="C" -->
	 * g_object_bind_property (action, "active", widget, "sensitive", 0);
	 * ]|
	 *
	 * Will result in the "sensitive" property of the widget #GObject instance to be
	 * updated with the same value of the "active" property of the action #GObject
	 * instance.
	 *
	 * If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
	 * if @target_property on @target changes then the @source_property on @source
	 * will be updated as well.
	 *
	 * The binding will automatically be removed when either the @source or the
	 * @target instances are finalized. To remove the binding without affecting the
	 * @source and the @target you can just call g_object_unref() on the returned
	 * #GBinding instance.
	 *
	 * Removing the binding by calling g_object_unref() on it must only be done if
	 * the binding, @source and @target are only used from a single thread and it
	 * is clear that both @source and @target outlive the binding. Especially it
	 * is not safe to rely on this if the binding, @source or @target can be
	 * finalized from different threads. Keep another reference to the binding and
	 * use g_binding_unbind() instead to be on the safe side.
	 *
	 * A #GObject can have multiple bindings.
	 *
	 * Params:
	 *     sourceProperty = the property on @source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = flags to pass to #GBinding
	 *
	 * Returns: the #GBinding instance representing the
	 *     binding between the two #GObject instances. The binding is released
	 *     whenever the #GBinding reference count reaches zero.
	 *
	 * Since: 2.26
	 */
	public Binding bindProperty(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags)
	{
		auto __p = g_object_bind_property(gObject, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Binding)(cast(GBinding*) __p);
	}

	/**
	 * Complete version of g_object_bind_property().
	 *
	 * Creates a binding between @source_property on @source and @target_property
	 * on @target, allowing you to set the transformation functions to be used by
	 * the binding.
	 *
	 * If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
	 * if @target_property on @target changes then the @source_property on @source
	 * will be updated as well. The @transform_from function is only used in case
	 * of bidirectional bindings, otherwise it will be ignored
	 *
	 * The binding will automatically be removed when either the @source or the
	 * @target instances are finalized. This will release the reference that is
	 * being held on the #GBinding instance; if you want to hold on to the
	 * #GBinding instance, you will need to hold a reference to it.
	 *
	 * To remove the binding, call g_binding_unbind().
	 *
	 * A #GObject can have multiple bindings.
	 *
	 * The same @user_data parameter will be used for both @transform_to
	 * and @transform_from transformation functions; the @notify function will
	 * be called once, when the binding is removed. If you need different data
	 * for each transformation function, please use
	 * g_object_bind_property_with_closures() instead.
	 *
	 * Params:
	 *     sourceProperty = the property on @source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = flags to pass to #GBinding
	 *     transformTo = the transformation function
	 *         from the @source to the @target, or %NULL to use the default
	 *     transformFrom = the transformation function
	 *         from the @target to the @source, or %NULL to use the default
	 *     userData = custom data to be passed to the transformation functions,
	 *         or %NULL
	 *     notify = a function to call when disposing the binding, to free
	 *         resources used by the transformation functions, or %NULL if not required
	 *
	 * Returns: the #GBinding instance representing the
	 *     binding between the two #GObject instances. The binding is released
	 *     whenever the #GBinding reference count reaches zero.
	 *
	 * Since: 2.26
	 */
	public Binding bindPropertyFull(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify)
	{
		auto __p = g_object_bind_property_full(gObject, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags, transformTo, transformFrom, userData, notify);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Binding)(cast(GBinding*) __p);
	}

	/**
	 * Creates a binding between @source_property on @source and @target_property
	 * on @target, allowing you to set the transformation functions to be used by
	 * the binding.
	 *
	 * This function is the language bindings friendly version of
	 * g_object_bind_property_full(), using #GClosures instead of
	 * function pointers.
	 *
	 * Params:
	 *     sourceProperty = the property on @source to bind
	 *     target = the target #GObject
	 *     targetProperty = the property on @target to bind
	 *     flags = flags to pass to #GBinding
	 *     transformTo = a #GClosure wrapping the transformation function
	 *         from the @source to the @target, or %NULL to use the default
	 *     transformFrom = a #GClosure wrapping the transformation function
	 *         from the @target to the @source, or %NULL to use the default
	 *
	 * Returns: the #GBinding instance representing the
	 *     binding between the two #GObject instances. The binding is released
	 *     whenever the #GBinding reference count reaches zero.
	 *
	 * Since: 2.26
	 */
	public Binding bindPropertyWithClosures(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, Closure transformTo, Closure transformFrom)
	{
		auto __p = g_object_bind_property_with_closures(gObject, Str.toStringz(sourceProperty), (target is null) ? null : target.getObjectGStruct(), Str.toStringz(targetProperty), flags, (transformTo is null) ? null : transformTo.getClosureStruct(), (transformFrom is null) ? null : transformFrom.getClosureStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Binding)(cast(GBinding*) __p);
	}

	/**
	 * This is a variant of g_object_get_data() which returns
	 * a 'duplicate' of the value. @dup_func defines the
	 * meaning of 'duplicate' in this context, it could e.g.
	 * take a reference on a ref-counted object.
	 *
	 * If the @key is not set on the object then @dup_func
	 * will be called with a %NULL argument.
	 *
	 * Note that @dup_func is called while user data of @object
	 * is locked.
	 *
	 * This function can be useful to avoid races when multiple
	 * threads are using object data on the same key on the same
	 * object.
	 *
	 * Params:
	 *     key = a string, naming the user data pointer
	 *     dupFunc = function to dup the value
	 *     userData = passed as user_data to @dup_func
	 *
	 * Returns: the result of calling @dup_func on the value
	 *     associated with @key on @object, or %NULL if not set.
	 *     If @dup_func is %NULL, the value is returned
	 *     unmodified.
	 *
	 * Since: 2.34
	 */
	public void* dupData(string key, GDuplicateFunc dupFunc, void* userData)
	{
		return g_object_dup_data(gObject, Str.toStringz(key), dupFunc, userData);
	}

	/**
	 * This is a variant of g_object_get_qdata() which returns
	 * a 'duplicate' of the value. @dup_func defines the
	 * meaning of 'duplicate' in this context, it could e.g.
	 * take a reference on a ref-counted object.
	 *
	 * If the @quark is not set on the object then @dup_func
	 * will be called with a %NULL argument.
	 *
	 * Note that @dup_func is called while user data of @object
	 * is locked.
	 *
	 * This function can be useful to avoid races when multiple
	 * threads are using object data on the same key on the same
	 * object.
	 *
	 * Params:
	 *     quark = a #GQuark, naming the user data pointer
	 *     dupFunc = function to dup the value
	 *     userData = passed as user_data to @dup_func
	 *
	 * Returns: the result of calling @dup_func on the value
	 *     associated with @quark on @object, or %NULL if not set.
	 *     If @dup_func is %NULL, the value is returned
	 *     unmodified.
	 *
	 * Since: 2.34
	 */
	public void* dupQdata(GQuark quark, GDuplicateFunc dupFunc, void* userData)
	{
		return g_object_dup_qdata(gObject, quark, dupFunc, userData);
	}

	/**
	 * This function is intended for #GObject implementations to re-enforce
	 * a [floating][floating-ref] object reference. Doing this is seldom
	 * required: all #GInitiallyUnowneds are created with a floating reference
	 * which usually just needs to be sunken by calling g_object_ref_sink().
	 *
	 * Since: 2.10
	 */
	public void forceFloating()
	{
		g_object_force_floating(gObject);
	}

	/**
	 * Increases the freeze count on @object. If the freeze count is
	 * non-zero, the emission of "notify" signals on @object is
	 * stopped. The signals are queued until the freeze count is decreased
	 * to zero. Duplicate notifications are squashed so that at most one
	 * #GObject::notify signal is emitted for each property modified while the
	 * object is frozen.
	 *
	 * This is necessary for accessors that modify multiple properties to prevent
	 * premature notification while the object is still being modified.
	 */
	public void freezeNotify()
	{
		g_object_freeze_notify(gObject);
	}

	/**
	 * Gets a named field from the objects table of associations (see g_object_set_data()).
	 *
	 * Params:
	 *     key = name of the key for that association
	 *
	 * Returns: the data if found,
	 *     or %NULL if no such data exists.
	 */
	public void* getData(string key)
	{
		return g_object_get_data(gObject, Str.toStringz(key));
	}

	/**
	 * Gets a property of an object.
	 *
	 * The @value can be:
	 *
	 * - an empty #GValue initialized by %G_VALUE_INIT, which will be
	 * automatically initialized with the expected type of the property
	 * (since GLib 2.60)
	 * - a #GValue initialized with the expected type of the property
	 * - a #GValue initialized with a type to which the expected type
	 * of the property can be transformed
	 *
	 * In general, a copy is made of the property contents and the caller is
	 * responsible for freeing the memory by calling g_value_unset().
	 *
	 * Note that g_object_get_property() is really intended for language
	 * bindings, g_object_get() is much more convenient for C programming.
	 *
	 * Params:
	 *     propertyName = the name of the property to get
	 *     value = return location for the property value
	 */
	public void getProperty(string propertyName, Value value)
	{
		g_object_get_property(gObject, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * This function gets back user data pointers stored via
	 * g_object_set_qdata().
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *
	 * Returns: The user data pointer set, or %NULL
	 */
	public void* getQdata(GQuark quark)
	{
		return g_object_get_qdata(gObject, quark);
	}

	/**
	 * Gets properties of an object.
	 *
	 * In general, a copy is made of the property contents and the caller
	 * is responsible for freeing the memory in the appropriate manner for
	 * the type, for instance by calling g_free() or g_object_unref().
	 *
	 * See g_object_get().
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to get
	 *     varArgs = return location for the first property, followed optionally by more
	 *         name/return location pairs, followed by %NULL
	 */
	public void getValist(string firstPropertyName, void* varArgs)
	{
		g_object_get_valist(gObject, Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Gets @n_properties properties for an @object.
	 * Obtained properties will be set to @values. All properties must be valid.
	 * Warnings will be emitted and undefined behaviour may result if invalid
	 * properties are passed in.
	 *
	 * Params:
	 *     names = the names of each property to get
	 *     values = the values of each property to get
	 *
	 * Since: 2.54
	 */
	public void getv(string[] names, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		g_object_getv(gObject, cast(uint)values.length, Str.toStringzArray(names), valuesArray.ptr);
	}

	/**
	 * Checks whether @object has a [floating][floating-ref] reference.
	 *
	 * Returns: %TRUE if @object has a floating reference
	 *
	 * Since: 2.10
	 */
	public bool isFloating()
	{
		return g_object_is_floating(gObject) != 0;
	}

	/**
	 * Emits a "notify" signal for the property @property_name on @object.
	 *
	 * When possible, eg. when signaling a property change from within the class
	 * that registered the property, you should use g_object_notify_by_pspec()
	 * instead.
	 *
	 * Note that emission of the notify signal may be blocked with
	 * g_object_freeze_notify(). In this case, the signal emissions are queued
	 * and will be emitted (in reverse order) when g_object_thaw_notify() is
	 * called.
	 *
	 * Params:
	 *     propertyName = the name of a property installed on the class of @object.
	 */
	public void notify(string propertyName)
	{
		g_object_notify(gObject, Str.toStringz(propertyName));
	}

	/**
	 * Emits a "notify" signal for the property specified by @pspec on @object.
	 *
	 * This function omits the property name lookup, hence it is faster than
	 * g_object_notify().
	 *
	 * One way to avoid using g_object_notify() from within the
	 * class that registered the properties, and using g_object_notify_by_pspec()
	 * instead, is to store the GParamSpec used with
	 * g_object_class_install_property() inside a static array, e.g.:
	 *
	 * |[<!-- language="C" -->
	 * enum
	 * {
	 * PROP_0,
	 * PROP_FOO,
	 * PROP_LAST
	 * };
	 *
	 * static GParamSpec *properties[PROP_LAST];
	 *
	 * static void
	 * my_object_class_init (MyObjectClass *klass)
	 * {
	 * properties[PROP_FOO] = g_param_spec_int ("foo", "Foo", "The foo",
	 * 0, 100,
	 * 50,
	 * G_PARAM_READWRITE);
	 * g_object_class_install_property (gobject_class,
	 * PROP_FOO,
	 * properties[PROP_FOO]);
	 * }
	 * ]|
	 *
	 * and then notify a change on the "foo" property with:
	 *
	 * |[<!-- language="C" -->
	 * g_object_notify_by_pspec (self, properties[PROP_FOO]);
	 * ]|
	 *
	 * Params:
	 *     pspec = the #GParamSpec of a property installed on the class of @object.
	 *
	 * Since: 2.26
	 */
	public void notifyByPspec(ParamSpec pspec)
	{
		g_object_notify_by_pspec(gObject, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @object.
	 *
	 * Since GLib 2.56, if `GLIB_VERSION_MAX_ALLOWED` is 2.56 or greater, the type
	 * of @object will be propagated to the return type (using the GCC typeof()
	 * extension), so any casting the caller needs to do on the return type must be
	 * explicit.
	 *
	 * Returns: the same @object
	 */
	public ObjectG ref_()
	{
		auto __p = g_object_ref(gObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Increase the reference count of @object, and possibly remove the
	 * [floating][floating-ref] reference, if @object has a floating reference.
	 *
	 * In other words, if the object is floating, then this call "assumes
	 * ownership" of the floating reference, converting it to a normal
	 * reference by clearing the floating flag while leaving the reference
	 * count unchanged.  If the object is not floating, then this call
	 * adds a new normal reference increasing the reference count by one.
	 *
	 * Since GLib 2.56, the type of @object will be propagated to the return type
	 * under the same conditions as for g_object_ref().
	 *
	 * Returns: @object
	 *
	 * Since: 2.10
	 */
	public ObjectG refSink()
	{
		auto __p = g_object_ref_sink(gObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Removes a reference added with g_object_add_toggle_ref(). The
	 * reference count of the object is decreased by one.
	 *
	 * Params:
	 *     notify = a function to call when this reference is the
	 *         last reference to the object, or is no longer
	 *         the last reference.
	 *     data = data to pass to @notify, or %NULL to
	 *         match any toggle refs with the @notify argument.
	 *
	 * Since: 2.8
	 */
	public void removeToggleRef(GToggleNotify notify, void* data)
	{
		g_object_remove_toggle_ref(gObject, notify, data);
	}

	/**
	 * Removes a weak reference from @object that was previously added
	 * using g_object_add_weak_pointer(). The @weak_pointer_location has
	 * to match the one used with g_object_add_weak_pointer().
	 *
	 * Params:
	 *     weakPointerLocation = The memory address
	 *         of a pointer.
	 */
	public void removeWeakPointer(ref void* weakPointerLocation)
	{
		g_object_remove_weak_pointer(gObject, &weakPointerLocation);
	}

	/**
	 * Compares the user data for the key @key on @object with
	 * @oldval, and if they are the same, replaces @oldval with
	 * @newval.
	 *
	 * This is like a typical atomic compare-and-exchange
	 * operation, for user data on an object.
	 *
	 * If the previous value was replaced then ownership of the
	 * old value (@oldval) is passed to the caller, including
	 * the registered destroy notify for it (passed out in @old_destroy).
	 * It’s up to the caller to free this as needed, which may
	 * or may not include using @old_destroy as sometimes replacement
	 * should not destroy the object in the normal way.
	 *
	 * See g_object_set_data() for guidance on using a small, bounded set of values
	 * for @key.
	 *
	 * Params:
	 *     key = a string, naming the user data pointer
	 *     oldval = the old value to compare against
	 *     newval = the new value
	 *     destroy = a destroy notify for the new value
	 *     oldDestroy = destroy notify for the existing value
	 *
	 * Returns: %TRUE if the existing value for @key was replaced
	 *     by @newval, %FALSE otherwise.
	 *
	 * Since: 2.34
	 */
	public bool replaceData(string key, void* oldval, void* newval, GDestroyNotify destroy, out GDestroyNotify oldDestroy)
	{
		return g_object_replace_data(gObject, Str.toStringz(key), oldval, newval, destroy, &oldDestroy) != 0;
	}

	/**
	 * Compares the user data for the key @quark on @object with
	 * @oldval, and if they are the same, replaces @oldval with
	 * @newval.
	 *
	 * This is like a typical atomic compare-and-exchange
	 * operation, for user data on an object.
	 *
	 * If the previous value was replaced then ownership of the
	 * old value (@oldval) is passed to the caller, including
	 * the registered destroy notify for it (passed out in @old_destroy).
	 * It’s up to the caller to free this as needed, which may
	 * or may not include using @old_destroy as sometimes replacement
	 * should not destroy the object in the normal way.
	 *
	 * Params:
	 *     quark = a #GQuark, naming the user data pointer
	 *     oldval = the old value to compare against
	 *     newval = the new value
	 *     destroy = a destroy notify for the new value
	 *     oldDestroy = destroy notify for the existing value
	 *
	 * Returns: %TRUE if the existing value for @quark was replaced
	 *     by @newval, %FALSE otherwise.
	 *
	 * Since: 2.34
	 */
	public bool replaceQdata(GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, out GDestroyNotify oldDestroy)
	{
		return g_object_replace_qdata(gObject, quark, oldval, newval, destroy, &oldDestroy) != 0;
	}

	/**
	 * Releases all references to other objects. This can be used to break
	 * reference cycles.
	 *
	 * This function should only be called from object system implementations.
	 */
	public void runDispose()
	{
		g_object_run_dispose(gObject);
	}

	/**
	 * Each object carries around a table of associations from
	 * strings to pointers.  This function lets you set an association.
	 *
	 * If the object already had an association with that name,
	 * the old association will be destroyed.
	 *
	 * Internally, the @key is converted to a #GQuark using g_quark_from_string().
	 * This means a copy of @key is kept permanently (even after @object has been
	 * finalized) — so it is recommended to only use a small, bounded set of values
	 * for @key in your program, to avoid the #GQuark storage growing unbounded.
	 *
	 * Params:
	 *     key = name of the key
	 *     data = data to associate with that key
	 */
	public void setData(string key, void* data)
	{
		g_object_set_data(gObject, Str.toStringz(key), data);
	}

	/**
	 * Like g_object_set_data() except it adds notification
	 * for when the association is destroyed, either by setting it
	 * to a different value or when the object is destroyed.
	 *
	 * Note that the @destroy callback is not called if @data is %NULL.
	 *
	 * Params:
	 *     key = name of the key
	 *     data = data to associate with that key
	 *     destroy = function to call when the association is destroyed
	 */
	public void setDataFull(string key, void* data, GDestroyNotify destroy)
	{
		g_object_set_data_full(gObject, Str.toStringz(key), data, destroy);
	}

	/**
	 * Sets a property on an object.
	 *
	 * Params:
	 *     propertyName = the name of the property to set
	 *     value = the value
	 */
	public void setProperty(string propertyName, Value value)
	{
		g_object_set_property(gObject, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * This sets an opaque, named pointer on an object.
	 * The name is specified through a #GQuark (retrieved e.g. via
	 * g_quark_from_static_string()), and the pointer
	 * can be gotten back from the @object with g_object_get_qdata()
	 * until the @object is finalized.
	 * Setting a previously set user data pointer, overrides (frees)
	 * the old pointer set, using #NULL as pointer essentially
	 * removes the data stored.
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *     data = An opaque user data pointer
	 */
	public void setQdata(GQuark quark, void* data)
	{
		g_object_set_qdata(gObject, quark, data);
	}

	/**
	 * This function works like g_object_set_qdata(), but in addition,
	 * a void (*destroy) (gpointer) function may be specified which is
	 * called with @data as argument when the @object is finalized, or
	 * the data is being overwritten by a call to g_object_set_qdata()
	 * with the same @quark.
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *     data = An opaque user data pointer
	 *     destroy = Function to invoke with @data as argument, when @data
	 *         needs to be freed
	 */
	public void setQdataFull(GQuark quark, void* data, GDestroyNotify destroy)
	{
		g_object_set_qdata_full(gObject, quark, data, destroy);
	}

	/**
	 * Sets properties on an object.
	 *
	 * Params:
	 *     firstPropertyName = name of the first property to set
	 *     varArgs = value for the first property, followed optionally by more
	 *         name/value pairs, followed by %NULL
	 */
	public void setValist(string firstPropertyName, void* varArgs)
	{
		g_object_set_valist(gObject, Str.toStringz(firstPropertyName), varArgs);
	}

	/**
	 * Sets @n_properties properties for an @object.
	 * Properties to be set will be taken from @values. All properties must be
	 * valid. Warnings will be emitted and undefined behaviour may result if invalid
	 * properties are passed in.
	 *
	 * Params:
	 *     names = the names of each property to be set
	 *     values = the values of each property to be set
	 *
	 * Since: 2.54
	 */
	public void setv(string[] names, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		g_object_setv(gObject, cast(uint)values.length, Str.toStringzArray(names), valuesArray.ptr);
	}

	/**
	 * Remove a specified datum from the object's data associations,
	 * without invoking the association's destroy handler.
	 *
	 * Params:
	 *     key = name of the key
	 *
	 * Returns: the data if found, or %NULL
	 *     if no such data exists.
	 */
	public void* stealData(string key)
	{
		return g_object_steal_data(gObject, Str.toStringz(key));
	}

	/**
	 * This function gets back user data pointers stored via
	 * g_object_set_qdata() and removes the @data from object
	 * without invoking its destroy() function (if any was
	 * set).
	 * Usually, calling this function is only required to update
	 * user data pointers with a destroy notifier, for example:
	 * |[<!-- language="C" -->
	 * void
	 * object_add_to_user_list (GObject     *object,
	 * const gchar *new_string)
	 * {
	 * // the quark, naming the object data
	 * GQuark quark_string_list = g_quark_from_static_string ("my-string-list");
	 * // retrieve the old string list
	 * GList *list = g_object_steal_qdata (object, quark_string_list);
	 *
	 * // prepend new string
	 * list = g_list_prepend (list, g_strdup (new_string));
	 * // this changed 'list', so we need to set it again
	 * g_object_set_qdata_full (object, quark_string_list, list, free_string_list);
	 * }
	 * static void
	 * free_string_list (gpointer data)
	 * {
	 * GList *node, *list = data;
	 *
	 * for (node = list; node; node = node->next)
	 * g_free (node->data);
	 * g_list_free (list);
	 * }
	 * ]|
	 * Using g_object_get_qdata() in the above example, instead of
	 * g_object_steal_qdata() would have left the destroy function set,
	 * and thus the partial string list would have been freed upon
	 * g_object_set_qdata_full().
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *
	 * Returns: The user data pointer set, or %NULL
	 */
	public void* stealQdata(GQuark quark)
	{
		return g_object_steal_qdata(gObject, quark);
	}

	/**
	 * If @object is floating, sink it.  Otherwise, do nothing.
	 *
	 * In other words, this function will convert a floating reference (if
	 * present) into a full reference.
	 *
	 * Typically you want to use g_object_ref_sink() in order to
	 * automatically do the correct thing with respect to floating or
	 * non-floating references, but there is one specific scenario where
	 * this function is helpful.
	 *
	 * The situation where this function is helpful is when creating an API
	 * that allows the user to provide a callback function that returns a
	 * GObject. We certainly want to allow the user the flexibility to
	 * return a non-floating reference from this callback (for the case
	 * where the object that is being returned already exists).
	 *
	 * At the same time, the API style of some popular GObject-based
	 * libraries (such as Gtk) make it likely that for newly-created GObject
	 * instances, the user can be saved some typing if they are allowed to
	 * return a floating reference.
	 *
	 * Using this function on the return value of the user's callback allows
	 * the user to do whichever is more convenient for them. The caller will
	 * alway receives exactly one full reference to the value: either the
	 * one that was returned in the first place, or a floating reference
	 * that has been converted to a full reference.
	 *
	 * This function has an odd interaction when combined with
	 * g_object_ref_sink() running at the same time in another thread on
	 * the same #GObject instance. If g_object_ref_sink() runs first then
	 * the result will be that the floating reference is converted to a hard
	 * reference. If g_object_take_ref() runs first then the result will be
	 * that the floating reference is converted to a hard reference and an
	 * additional reference on top of that one is added. It is best to avoid
	 * this situation.
	 *
	 * Returns: @object
	 *
	 * Since: 2.70
	 */
	public ObjectG takeRef()
	{
		auto __p = g_object_take_ref(gObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Reverts the effect of a previous call to
	 * g_object_freeze_notify(). The freeze count is decreased on @object
	 * and when it reaches zero, queued "notify" signals are emitted.
	 *
	 * Duplicate notifications for each property are squashed so that at most one
	 * #GObject::notify signal is emitted for each property, in the reverse order
	 * in which they have been queued.
	 *
	 * It is an error to call this function when the freeze count is zero.
	 */
	public void thawNotify()
	{
		g_object_thaw_notify(gObject);
	}

	/**
	 * Decreases the reference count of @object. When its reference count
	 * drops to 0, the object is finalized (i.e. its memory is freed).
	 *
	 * If the pointer to the #GObject may be reused in future (for example, if it is
	 * an instance variable of another object), it is recommended to clear the
	 * pointer to %NULL rather than retain a dangling pointer to a potentially
	 * invalid #GObject instance. Use g_clear_object() for this.
	 */
	public void unref()
	{
		g_object_unref(gObject);
	}

	/**
	 * This function essentially limits the life time of the @closure to
	 * the life time of the object. That is, when the object is finalized,
	 * the @closure is invalidated by calling g_closure_invalidate() on
	 * it, in order to prevent invocations of the closure with a finalized
	 * (nonexisting) object. Also, g_object_ref() and g_object_unref() are
	 * added as marshal guards to the @closure, to ensure that an extra
	 * reference count is held on @object during invocation of the
	 * @closure.  Usually, this function will be called on closures that
	 * use this @object as closure data.
	 *
	 * Params:
	 *     closure = #GClosure to watch
	 */
	public void watchClosure(Closure closure)
	{
		g_object_watch_closure(gObject, (closure is null) ? null : closure.getClosureStruct());
	}

	/**
	 * Adds a weak reference callback to an object. Weak references are
	 * used for notification when an object is disposed. They are called
	 * "weak references" because they allow you to safely hold a pointer
	 * to an object without calling g_object_ref() (g_object_ref() adds a
	 * strong reference, that is, forces the object to stay alive).
	 *
	 * Note that the weak references created by this method are not
	 * thread-safe: they cannot safely be used in one thread if the
	 * object's last g_object_unref() might happen in another thread.
	 * Use #GWeakRef if thread-safety is required.
	 *
	 * Params:
	 *     notify = callback to invoke before the object is freed
	 *     data = extra data to pass to notify
	 */
	public void weakRef(GWeakNotify notify, void* data)
	{
		g_object_weak_ref(gObject, notify, data);
	}

	/**
	 * Removes a weak reference callback to an object.
	 *
	 * Params:
	 *     notify = callback to search for
	 *     data = data to search for
	 */
	public void weakUnref(GWeakNotify notify, void* data)
	{
		g_object_weak_unref(gObject, notify, data);
	}

	/**
	 * Clears a reference to a #GObject.
	 *
	 * @object_ptr must not be %NULL.
	 *
	 * If the reference is %NULL then this function does nothing.
	 * Otherwise, the reference count of the object is decreased and the
	 * pointer is set to %NULL.
	 *
	 * A macro is also included that allows this function to be used without
	 * pointer casts.
	 *
	 * Params:
	 *     objectPtr = a pointer to a #GObject reference
	 *
	 * Since: 2.28
	 */
	public static void clearObject(ref ObjectG objectPtr)
	{
		GObject* outobjectPtr = objectPtr.getObjectGStruct();

		g_clear_object(&outobjectPtr);

		objectPtr = ObjectG.getDObject!(ObjectG)(outobjectPtr);
	}
}
