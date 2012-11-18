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
 * inFile  = gobject-The-Base-Object-Type.html
 * outPack = gobject
 * outFile = ObjectG
 * strct   = GObject
 * realStrct=
 * ctorStrct=
 * clss    = ObjectG
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_object_
 * 	- g_
 * omit structs:
 * 	- GObject
 * 	- GObjectClass
 * omit prefixes:
 * 	- g_weak_ref_
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gobject.Closure
 * 	- std.gc
 * 	- glib.Str
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gobject.ObjectG;

public  import gtkc.gobjecttypes;

private import gtkc.gobject;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gobject.Closure;
private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;


version(Tango) {
	private import tango.core.Memory;

	version = druntime;
} else version(D_Version2) {
	private import core.memory;

	version = druntime;
} else {
	private import std.gc;
}



/**
 * Description
 * GObject is the fundamental type providing the common attributes and
 * methods for all object types in GTK+, Pango and other libraries
 * based on GObject. The GObject class provides methods for object
 * construction and destruction, property access methods, and signal
 * support. Signals are described in detail in Signals(3).
 * GInitiallyUnowned is derived from GObject. The only difference between
 * the two is that the initial reference of a GInitiallyUnowned is flagged
 * as a floating reference.
 * This means that it is not specifically claimed to be "owned" by
 * any code portion. The main motivation for providing floating references is
 * C convenience. In particular, it allows code to be written as:
 * $(DDOC_COMMENT example)
 * If container_add_child() will g_object_ref_sink() the
 * passed in child, no reference of the newly created child is leaked.
 * Without floating references, container_add_child()
 * can only g_object_ref() the new child, so to implement this code without
 * reference leaks, it would have to be written as:
 * $(DDOC_COMMENT example)
 * The floating reference can be converted into
 * an ordinary reference by calling g_object_ref_sink().
 * For already sunken objects (objects that don't have a floating reference
 * anymore), g_object_ref_sink() is equivalent to g_object_ref() and returns
 * a new reference.
 * Since floating references are useful almost exclusively for C convenience,
 * language bindings that provide automated reference and memory ownership
 * maintenance (such as smart pointers or garbage collection) should not
 * expose floating references in their API.
 * Some object implementations may need to save an objects floating state
 * across certain code portions (an example is GtkMenu), to achieve this,
 * the following sequence can be used:
 * $(DDOC_COMMENT example)
 */
public class ObjectG
{
	
	/** the main Gtk struct */
	protected GObject* gObject;
	
	
	public GObject* getObjectGStruct()
	{
		return gObject;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gObject;
	}
	
	
	protected bool isGcRoot;
	
	/**
	 * Sets our main struct and passes store it on the gobject.
	 * Add a gabage collector root to the gtk+ struct so it doesn't get collect
	 */
	public this (GObject* gObject)
	{
		this.gObject = gObject;
		if ( gObject !is  null )
		{
			setDataFull("GObject", cast(void*)this, cast(GDestroyNotify)&destroyNotify);
			addToggleRef(cast(GToggleNotify)&toggleNotify, cast(void*)this);
			
			//If the refCount is largeer then 1 toggleNotify isn't called
			if (gObject.refCount > 1 && !isGcRoot)
			{
				version(druntime) GC.addRoot(cast(void*)this);
				else std.gc.addRoot(cast(void*)this);
				
				isGcRoot = true;
			}
			
			//Remove the floating reference if there is one.
			if (isFloating(gObject))
			{
				refSink(gObject);
				unref(gObject);
			}
			
			//When constructed via GtkBuilder set the structs.
			if ( getStruct() is null)
			{
				setStruct(gObject);
			}
		}
	}
	
	extern(C)
	{
		static void destroyNotify(ObjectG obj)
		{
			if ( obj.isGcRoot )
			{
				version(druntime) GC.removeRoot(cast(void*)obj);
				else std.gc.removeRoot(cast(void*)obj);
				
				obj.isGcRoot = false;
			}
			
			obj.gObject = null;
		}
		
		static void toggleNotify(ObjectG obj, GObject* object, int isLastRef)
		{
			if ( isLastRef && obj.isGcRoot )
			{
				version(druntime) GC.removeRoot(cast(void*)obj);
				else std.gc.removeRoot(cast(void*)obj);
				
				obj.isGcRoot = false;
			}
			else if ( !obj.isGcRoot )
			{
				version(druntime) GC.addRoot(cast(void*)obj);
				else std.gc.addRoot(cast(void*)obj);
				
				obj.isGcRoot = true;
			}
		}
	}
	
	~this()
	{
		if ( Linker.isLoaded(LIBRARY.GOBJECT) && gObject !is null )
		{
			unref();
		}
	}
	
	/**
	 * Gets a D Object from the objects table of associations.
	 * Params:
	 *  obj = GObject containing the associations.
	 * Returns: the D Object if found, or a newly constructed object if no such Object exists.
	 */
	public static T getDObject(T, U)(U obj)
	{
		static if ( is(T : ObjectG) )
		{
			auto p = g_object_get_data(cast(GObject*)obj, Str.toStringz("GObject"));
			
			if ( p !is null )
			{
				return cast(T)p;
			}
			else
			{
				return new T(obj);
			}
		}
		else
		{
			return new T(obj);
		}
	}
	
	protected void setStruct(GObject* obj)
	{
		gObject = cast(GObject*)obj;
	}
	
	/** */
	public void setProperty(string propertyName, int value)
	{
		setProperty(propertyName, new Value(value));
	}
	
	/** */
	public void setProperty(string propertyName, string value)
	{
		setProperty(propertyName, new Value(value));
	}
	
	/** */
	public void setProperty(string propertyName, long value)
	{
		//We use g_object_set instead of g_object_set_property, because Value doesn't like longs and ulongs for some reason.
		g_object_set( gObject, Str.toStringz(propertyName), value, null);
	}
	
	/** */
	public void setProperty(string propertyName, ulong value)
	{
		g_object_set( gObject, Str.toStringz(propertyName), value, null);
	}
	
	public void unref()
	{
		unref(gObject);
	}
	
	public ObjectG doref()
	{
		doref(gObject);
		
		return this;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ParamSpec, ObjectG)[] onNotifyListeners;
	/**
	 * The notify signal is emitted on an object when one of its
	 * properties has been changed. Note that getting this signal
	 * doesn't guarantee that the value of the property has actually
	 * changed, it may also be emitted when the setter for the property
	 * is called to reinstate the previous value.
	 * This signal is typically used to obtain change notification for a
	 * single property, by specifying the property name as a detail in the
	 * $(DDOC_COMMENT example)
	 * It is important to note that you must use
	 * canonical parameter names as
	 * detail strings for the notify signal.
	 * See Also
	 * GParamSpecObject, g_param_spec_object()
	 */
	void addOnNotify(void delegate(ParamSpec, ObjectG) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"notify",
			cast(GCallback)&callBackNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["notify"] = 1;
		}
		onNotifyListeners ~= dlg;
	}
	extern(C) static void callBackNotify(GObject* gobjectStruct, GParamSpec* pspec, ObjectG _objectG)
	{
		foreach ( void delegate(ParamSpec, ObjectG) dlg ; _objectG.onNotifyListeners )
		{
			dlg(ObjectG.getDObject!(ParamSpec)(pspec), _objectG);
		}
	}
	
	
	/**
	 * Installs a new property. This is usually done in the class initializer.
	 * Note that it is possible to redefine a property in a derived class,
	 * by installing a property with the same name. This can be useful at times,
	 * e.g. to change the range of allowed values or the default value.
	 * Params:
	 * oclass = a GObjectClass
	 * propertyId = the id for the new property
	 * pspec = the GParamSpec for the new property
	 */
	public static void classInstallProperty(GObjectClass* oclass, uint propertyId, ParamSpec pspec)
	{
		// void g_object_class_install_property (GObjectClass *oclass,  guint property_id,  GParamSpec *pspec);
		g_object_class_install_property(oclass, propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Installs new properties from an array of GParamSpecs. This is
	 * usually done in the class initializer.
	 * The property id of each property is the index of each GParamSpec in
	 * the pspecs array.
	 * The property id of 0 is treated specially by GObject and it should not
	 * be used to store a GParamSpec.
	 * This function should be used if you plan to use a static array of
	 * GParamSpecs and g_object_notify_by_pspec(). For instance, this
	 * Since 2.26
	 * Params:
	 * oclass = a GObjectClass
	 * pspecs = the GParamSpecs array
	 * defining the new properties. [array length=n_pspecs]
	 */
	public static void classInstallProperties(GObjectClass* oclass, ParamSpec[] pspecs)
	{
		// void g_object_class_install_properties (GObjectClass *oclass,  guint n_pspecs,  GParamSpec **pspecs);
		
		GParamSpec*[] pspecsArray = new GParamSpec*[pspecs.length];
		for ( int i = 0; i < pspecs.length ; i++ )
		{
			pspecsArray[i] = pspecs[i].getParamSpecStruct();
		}
		
		g_object_class_install_properties(oclass, cast(int) pspecs.length, pspecsArray.ptr);
	}
	
	/**
	 * Looks up the GParamSpec for a property of a class.
	 * Params:
	 * oclass = a GObjectClass
	 * propertyName = the name of the property to look up
	 * Returns: the GParamSpec for the property, or NULL if the class doesn't have a property of that name. [transfer none]
	 */
	public static ParamSpec classFindProperty(GObjectClass* oclass, string propertyName)
	{
		// GParamSpec * g_object_class_find_property (GObjectClass *oclass,  const gchar *property_name);
		auto p = g_object_class_find_property(oclass, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Get an array of GParamSpec* for all properties of a class.
	 * Params:
	 * oclass = a GObjectClass
	 * Returns: an array of GParamSpec* which should be freed after use. [array length=n_properties][transfer container]
	 */
	public static ParamSpec[] classListProperties(GObjectClass* oclass)
	{
		// GParamSpec ** g_object_class_list_properties (GObjectClass *oclass,  guint *n_properties);
		uint nProperties;
		auto p = g_object_class_list_properties(oclass, &nProperties);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Registers property_id as referring to a property with the
	 * name name in a parent class or in an interface implemented
	 * by oclass. This allows this class to override
	 * a property implementation in a parent class or to provide
	 * the implementation of a property from an interface.
	 * Note
	 * Internally, overriding is implemented by creating a property of type
	 * GParamSpecOverride; generally operations that query the properties of
	 * the object class, such as g_object_class_find_property() or
	 * g_object_class_list_properties() will return the overridden
	 * property. However, in one case, the construct_properties argument of
	 * the constructor virtual function, the GParamSpecOverride is passed
	 * instead, so that the param_id field of the GParamSpec will be
	 * correct. For virtually all uses, this makes no difference. If you
	 * need to get the overridden property, you can call
	 * g_param_spec_get_redirect_target().
	 * Since 2.4
	 * Params:
	 * oclass = a GObjectClass
	 * propertyId = the new property ID
	 * name = the name of a property registered in a parent class or
	 * in an interface of this class.
	 */
	public static void classOverrideProperty(GObjectClass* oclass, uint propertyId, string name)
	{
		// void g_object_class_override_property (GObjectClass *oclass,  guint property_id,  const gchar *name);
		g_object_class_override_property(oclass, propertyId, Str.toStringz(name));
	}
	
	/**
	 * Add a property to an interface; this is only useful for interfaces
	 * that are added to GObject-derived types. Adding a property to an
	 * interface forces all objects classes with that interface to have a
	 * compatible property. The compatible property could be a newly
	 * created GParamSpec, but normally
	 * g_object_class_override_property() will be used so that the object
	 * class only needs to provide an implementation and inherits the
	 * property description, default value, bounds, and so forth from the
	 * interface property.
	 * This function is meant to be called from the interface's default
	 * vtable initialization function (the class_init member of
	 * GTypeInfo.) It must not be called after after class_init has
	 * been called for any object types implementing this interface.
	 * Since 2.4
	 * Params:
	 * iface = any interface vtable for the interface, or the default
	 * vtable for the interface.
	 * pspec = the GParamSpec for the new property
	 */
	public static void interfaceInstallProperty(void* iface, ParamSpec pspec)
	{
		// void g_object_interface_install_property (gpointer g_iface,  GParamSpec *pspec);
		g_object_interface_install_property(iface, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Find the GParamSpec with the given name for an
	 * interface. Generally, the interface vtable passed in as g_iface
	 * will be the default vtable from g_type_default_interface_ref(), or,
	 * if you know the interface has already been loaded,
	 * g_type_default_interface_peek().
	 * Since 2.4
	 * Params:
	 * iface = any interface vtable for the interface, or the default
	 * vtable for the interface
	 * propertyName = name of a property to lookup.
	 * Returns: the GParamSpec for the property of the interface with the name property_name, or NULL if no such property exists. [transfer none]
	 */
	public static ParamSpec interfaceFindProperty(void* iface, string propertyName)
	{
		// GParamSpec * g_object_interface_find_property (gpointer g_iface,  const gchar *property_name);
		auto p = g_object_interface_find_property(iface, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}
	
	/**
	 * Lists the properties of an interface.Generally, the interface
	 * vtable passed in as g_iface will be the default vtable from
	 * g_type_default_interface_ref(), or, if you know the interface has
	 * already been loaded, g_type_default_interface_peek().
	 * Since 2.4
	 * Params:
	 * iface = any interface vtable for the interface, or the default
	 * vtable for the interface
	 * Returns: a pointer to an array of pointers to GParamSpec structures. The paramspecs are owned by GLib, but the array should be freed with g_free() when you are done with it. [array length=n_properties_p][transfer container]
	 */
	public static ParamSpec[] interfaceListProperties(void* iface)
	{
		// GParamSpec ** g_object_interface_list_properties (gpointer g_iface,  guint *n_properties_p);
		uint nPropertiesP;
		auto p = g_object_interface_list_properties(iface, &nPropertiesP);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nPropertiesP];
		for(int i = 0; i < nPropertiesP; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}
	
	/**
	 * Creates a new instance of a GObject subtype and sets its properties.
	 * Construction parameters (see G_PARAM_CONSTRUCT, G_PARAM_CONSTRUCT_ONLY)
	 * which are not explicitly specified are set to their default values.
	 * Rename to: g_object_new
	 * Params:
	 * objectType = the type id of the GObject subtype to instantiate
	 * parameters = an array of GParameter. [array length=n_parameters]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType objectType, GParameter[] parameters)
	{
		// gpointer g_object_newv (GType object_type,  guint n_parameters,  GParameter *parameters);
		auto p = g_object_newv(objectType, cast(int) parameters.length, parameters.ptr);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_object_newv(objectType, cast(int) parameters.length, parameters.ptr)");
		}
		this(cast(GObject*) p);
	}
	
	/**
	 * Increases the reference count of object.
	 * Params:
	 * object = a GObject. [type GObject.Object]
	 * Returns: the same object. [type GObject.Object][transfer none]
	 */
	public static void* doref(void* object)
	{
		// gpointer g_object_ref (gpointer object);
		return g_object_ref(object);
	}
	
	/**
	 * Decreases the reference count of object. When its reference count
	 * drops to 0, the object is finalized (i.e. its memory is freed).
	 * Params:
	 * object = a GObject. [type GObject.Object]
	 */
	public static void unref(void* object)
	{
		// void g_object_unref (gpointer object);
		g_object_unref(object);
	}
	
	/**
	 * Increase the reference count of object, and possibly remove the
	 * floating reference, if object
	 * has a floating reference.
	 * In other words, if the object is floating, then this call "assumes
	 * ownership" of the floating reference, converting it to a normal
	 * reference by clearing the floating flag while leaving the reference
	 * count unchanged. If the object is not floating, then this call
	 * adds a new normal reference increasing the reference count by one.
	 * Since 2.10
	 * Params:
	 * object = a GObject. [type GObject.Object]
	 * Returns: object. [type GObject.Object][transfer none]
	 */
	public static void* refSink(void* object)
	{
		// gpointer g_object_ref_sink (gpointer object);
		return g_object_ref_sink(object);
	}
	
	/**
	 * Clears a reference to a GObject.
	 * object_ptr must not be NULL.
	 * If the reference is NULL then this function does nothing.
	 * Otherwise, the reference count of the object is decreased and the
	 * pointer is set to NULL.
	 * This function is threadsafe and modifies the pointer atomically,
	 * using memory barriers where needed.
	 * A macro is also included that allows this function to be used without
	 * pointer casts.
	 * Since 2.28
	 * Params:
	 * objectPtr = a pointer to a GObject reference
	 */
	public static void clearObject(ref ObjectG objectPtr)
	{
		// void g_clear_object (volatile GObject **object_ptr);
		GObject* outobjectPtr = (objectPtr is null) ? null : objectPtr.getObjectGStruct();
		
		g_clear_object(&outobjectPtr);
		
		objectPtr = ObjectG.getDObject!(ObjectG)(outobjectPtr);
	}
	
	/**
	 * Checks whether object has a floating
	 * reference.
	 * Since 2.10
	 * Params:
	 * object = a GObject. [type GObject.Object]
	 * Returns: TRUE if object has a floating reference
	 */
	public static int isFloating(void* object)
	{
		// gboolean g_object_is_floating (gpointer object);
		return g_object_is_floating(object);
	}
	
	/**
	 * This function is intended for GObject implementations to re-enforce a
	 * floating object reference.
	 * Doing this is seldom required: all
	 * GInitiallyUnowneds are created with a floating reference which
	 * usually just needs to be sunken by calling g_object_ref_sink().
	 * Since 2.10
	 */
	public void forceFloating()
	{
		// void g_object_force_floating (GObject *object);
		g_object_force_floating(gObject);
	}
	
	/**
	 * Adds a weak reference callback to an object. Weak references are
	 * used for notification when an object is finalized. They are called
	 * "weak references" because they allow you to safely hold a pointer
	 * to an object without calling g_object_ref() (g_object_ref() adds a
	 * strong reference, that is, forces the object to stay alive).
	 * Note that the weak references created by this method are not
	 * thread-safe: they cannot safely be used in one thread if the
	 * object's last g_object_unref() might happen in another thread.
	 * Use GWeakRef if thread-safety is required.
	 * Params:
	 * notify = callback to invoke before the object is freed
	 * data = extra data to pass to notify
	 */
	public void weakRef(GWeakNotify notify, void* data)
	{
		// void g_object_weak_ref (GObject *object,  GWeakNotify notify,  gpointer data);
		g_object_weak_ref(gObject, notify, data);
	}
	
	/**
	 * Removes a weak reference callback to an object.
	 * Params:
	 * notify = callback to search for
	 * data = data to search for
	 */
	public void weakUnref(GWeakNotify notify, void* data)
	{
		// void g_object_weak_unref (GObject *object,  GWeakNotify notify,  gpointer data);
		g_object_weak_unref(gObject, notify, data);
	}
	
	/**
	 * Adds a weak reference from weak_pointer to object to indicate that
	 * the pointer located at weak_pointer_location is only valid during
	 * the lifetime of object. When the object is finalized,
	 * weak_pointer will be set to NULL.
	 * Note that as with g_object_weak_ref(), the weak references created by
	 * this method are not thread-safe: they cannot safely be used in one
	 * thread if the object's last g_object_unref() might happen in another
	 * thread. Use GWeakRef if thread-safety is required.
	 * Params:
	 * weakPointerLocation = The memory address of a pointer. [inout]
	 */
	public void addWeakPointer(void** weakPointerLocation)
	{
		// void g_object_add_weak_pointer (GObject *object,  gpointer *weak_pointer_location);
		g_object_add_weak_pointer(gObject, weakPointerLocation);
	}
	
	/**
	 * Removes a weak reference from object that was previously added
	 * using g_object_add_weak_pointer(). The weak_pointer_location has
	 * to match the one used with g_object_add_weak_pointer().
	 * Params:
	 * weakPointerLocation = The memory address of a pointer. [inout]
	 */
	public void removeWeakPointer(void** weakPointerLocation)
	{
		// void g_object_remove_weak_pointer (GObject *object,  gpointer *weak_pointer_location);
		g_object_remove_weak_pointer(gObject, weakPointerLocation);
	}
	
	/**
	 * Increases the reference count of the object by one and sets a
	 * callback to be called when all other references to the object are
	 * dropped, or when this is already the last reference to the object
	 * and another reference is established.
	 * This functionality is intended for binding object to a proxy
	 * object managed by another memory manager. This is done with two
	 * paired references: the strong reference added by
	 * g_object_add_toggle_ref() and a reverse reference to the proxy
	 * object which is either a strong reference or weak reference.
	 * The setup is that when there are no other references to object,
	 * only a weak reference is held in the reverse direction from object
	 * to the proxy object, but when there are other references held to
	 * object, a strong reference is held. The notify callback is called
	 * when the reference from object to the proxy object should be
	 * toggled from strong to weak (is_last_ref
	 * true) or weak to strong (is_last_ref false).
	 * Since a (normal) reference must be held to the object before
	 * calling g_object_add_toggle_ref(), the initial state of the reverse
	 * link is always strong.
	 * Multiple toggle references may be added to the same gobject,
	 * however if there are multiple toggle references to an object, none
	 * of them will ever be notified until all but one are removed. For
	 * this reason, you should only ever use a toggle reference if there
	 * is important state in the proxy object.
	 * Since 2.8
	 * Params:
	 * notify = a function to call when this reference is the
	 * last reference to the object, or is no longer
	 * the last reference.
	 * data = data to pass to notify
	 */
	public void addToggleRef(GToggleNotify notify, void* data)
	{
		// void g_object_add_toggle_ref (GObject *object,  GToggleNotify notify,  gpointer data);
		g_object_add_toggle_ref(gObject, notify, data);
	}
	
	/**
	 * Removes a reference added with g_object_add_toggle_ref(). The
	 * reference count of the object is decreased by one.
	 * Since 2.8
	 * Params:
	 * notify = a function to call when this reference is the
	 * last reference to the object, or is no longer
	 * the last reference.
	 * data = data to pass to notify
	 */
	public void removeToggleRef(GToggleNotify notify, void* data)
	{
		// void g_object_remove_toggle_ref (GObject *object,  GToggleNotify notify,  gpointer data);
		g_object_remove_toggle_ref(gObject, notify, data);
	}
	
	/**
	 * Emits a "notify" signal for the property property_name on object.
	 * When possible, eg. when signaling a property change from within the class
	 * that registered the property, you should use g_object_notify_by_pspec()
	 * instead.
	 * Params:
	 * propertyName = the name of a property installed on the class of object.
	 */
	public void notify(string propertyName)
	{
		// void g_object_notify (GObject *object,  const gchar *property_name);
		g_object_notify(gObject, Str.toStringz(propertyName));
	}
	
	/**
	 * Emits a "notify" signal for the property specified by pspec on object.
	 * This function omits the property name lookup, hence it is faster than
	 * g_object_notify().
	 * One way to avoid using g_object_notify() from within the
	 * class that registered the properties, and using g_object_notify_by_pspec()
	 * instead, is to store the GParamSpec used with
	 * Since 2.26
	 * Params:
	 * pspec = the GParamSpec of a property installed on the class of object.
	 */
	public void notifyByPspec(ParamSpec pspec)
	{
		// void g_object_notify_by_pspec (GObject *object,  GParamSpec *pspec);
		g_object_notify_by_pspec(gObject, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Increases the freeze count on object. If the freeze count is
	 * non-zero, the emission of "notify" signals on object is
	 * stopped. The signals are queued until the freeze count is decreased
	 * to zero. Duplicate notifications are squashed so that at most one
	 * "notify" signal is emitted for each property modified while the
	 * object is frozen.
	 * This is necessary for accessors that modify multiple properties to prevent
	 * premature notification while the object is still being modified.
	 */
	public void freezeNotify()
	{
		// void g_object_freeze_notify (GObject *object);
		g_object_freeze_notify(gObject);
	}
	
	/**
	 * Reverts the effect of a previous call to
	 * g_object_freeze_notify(). The freeze count is decreased on object
	 * and when it reaches zero, queued "notify" signals are emitted.
	 * Duplicate notifications for each property are squashed so that at most one
	 * "notify" signal is emitted for each property.
	 * It is an error to call this function when the freeze count is zero.
	 */
	public void thawNotify()
	{
		// void g_object_thaw_notify (GObject *object);
		g_object_thaw_notify(gObject);
	}
	
	/**
	 * Gets a named field from the objects table of associations (see g_object_set_data()).
	 * Params:
	 * key = name of the key for that association
	 * Returns: the data if found, or NULL if no such data exists. [transfer none]
	 */
	public void* getData(string key)
	{
		// gpointer g_object_get_data (GObject *object,  const gchar *key);
		return g_object_get_data(gObject, Str.toStringz(key));
	}
	
	/**
	 * Each object carries around a table of associations from
	 * strings to pointers. This function lets you set an association.
	 * If the object already had an association with that name,
	 * the old association will be destroyed.
	 * Params:
	 * key = name of the key
	 * data = data to associate with that key
	 */
	public void setData(string key, void* data)
	{
		// void g_object_set_data (GObject *object,  const gchar *key,  gpointer data);
		g_object_set_data(gObject, Str.toStringz(key), data);
	}
	
	/**
	 * Like g_object_set_data() except it adds notification
	 * for when the association is destroyed, either by setting it
	 * to a different value or when the object is destroyed.
	 * Note that the destroy callback is not called if data is NULL.
	 * Params:
	 * key = name of the key
	 * data = data to associate with that key
	 * destroy = function to call when the association is destroyed
	 */
	public void setDataFull(string key, void* data, GDestroyNotify destroy)
	{
		// void g_object_set_data_full (GObject *object,  const gchar *key,  gpointer data,  GDestroyNotify destroy);
		g_object_set_data_full(gObject, Str.toStringz(key), data, destroy);
	}
	
	/**
	 * Remove a specified datum from the object's data associations,
	 * without invoking the association's destroy handler.
	 * Params:
	 * key = name of the key
	 * Returns: the data if found, or NULL if no such data exists. [transfer full]
	 */
	public void* stealData(string key)
	{
		// gpointer g_object_steal_data (GObject *object,  const gchar *key);
		return g_object_steal_data(gObject, Str.toStringz(key));
	}
	
	/**
	 * This is a variant of g_object_get_data() which returns
	 * a 'duplicate' of the value. dup_func defines the
	 * meaning of 'duplicate' in this context, it could e.g.
	 * take a reference on a ref-counted object.
	 * If the key is not set on the object then dup_func
	 * will be called with a NULL argument.
	 * Note that dup_func is called while user data of object
	 * is locked.
	 * This function can be useful to avoid races when multiple
	 * threads are using object data on the same key on the same
	 * object.
	 * Since 2.34
	 * Params:
	 * key = a string, naming the user data pointer
	 * dupFunc = function to dup the value. [allow-none]
	 * userData = passed as user_data to dup_func. [allow-none]
	 * Returns: the result of calling dup_func on the value associated with key on object, or NULL if not set. If dup_func is NULL, the value is returned unmodified.
	 */
	public void* dupData(string key, GDuplicateFunc dupFunc, void* userData)
	{
		// gpointer g_object_dup_data (GObject *object,  const gchar *key,  GDuplicateFunc dup_func,  gpointer user_data);
		return g_object_dup_data(gObject, Str.toStringz(key), dupFunc, userData);
	}
	
	/**
	 * Compares the user data for the key key on object with
	 * oldval, and if they are the same, replaces oldval with
	 * newval.
	 * This is like a typical atomic compare-and-exchange
	 * operation, for user data on an object.
	 * If the previous value was replaced then ownership of the
	 * old value (oldval) is passed to the caller, including
	 * the registred destroy notify for it (passed out in old_destroy).
	 * Its up to the caller to free this as he wishes, which may
	 * or may not include using old_destroy as sometimes replacement
	 * should not destroy the object in the normal way.
	 * Return: TRUE if the existing value for key was replaced
	 *  by newval, FALSE otherwise.
	 * Since 2.34
	 * Params:
	 * key = a string, naming the user data pointer
	 * oldval = the old value to compare against. [allow-none]
	 * newval = the new value. [allow-none]
	 * destroy = a destroy notify for the new value. [allow-none]
	 * oldDestroy = destroy notify for the existing value. [allow-none]
	 */
	public int replaceData(string key, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy)
	{
		// gboolean g_object_replace_data (GObject *object,  const gchar *key,  gpointer oldval,  gpointer newval,  GDestroyNotify destroy,  GDestroyNotify *old_destroy);
		return g_object_replace_data(gObject, Str.toStringz(key), oldval, newval, destroy, oldDestroy);
	}
	
	/**
	 * This function gets back user data pointers stored via
	 * g_object_set_qdata().
	 * Params:
	 * quark = A GQuark, naming the user data pointer
	 * Returns: The user data pointer set, or NULL. [transfer none]
	 */
	public void* getQdata(GQuark quark)
	{
		// gpointer g_object_get_qdata (GObject *object,  GQuark quark);
		return g_object_get_qdata(gObject, quark);
	}
	
	/**
	 * This sets an opaque, named pointer on an object.
	 * The name is specified through a GQuark (retrived e.g. via
	 * g_quark_from_static_string()), and the pointer
	 * can be gotten back from the object with g_object_get_qdata()
	 * until the object is finalized.
	 * Setting a previously set user data pointer, overrides (frees)
	 * the old pointer set, using NULL as pointer essentially
	 * removes the data stored.
	 * Params:
	 * quark = A GQuark, naming the user data pointer
	 * data = An opaque user data pointer
	 */
	public void setQdata(GQuark quark, void* data)
	{
		// void g_object_set_qdata (GObject *object,  GQuark quark,  gpointer data);
		g_object_set_qdata(gObject, quark, data);
	}
	
	/**
	 * This function works like g_object_set_qdata(), but in addition,
	 * a void (*destroy) (gpointer) function may be specified which is
	 * called with data as argument when the object is finalized, or
	 * the data is being overwritten by a call to g_object_set_qdata()
	 * with the same quark.
	 * Params:
	 * quark = A GQuark, naming the user data pointer
	 * data = An opaque user data pointer
	 * destroy = Function to invoke with data as argument, when data
	 * needs to be freed
	 */
	public void setQdataFull(GQuark quark, void* data, GDestroyNotify destroy)
	{
		// void g_object_set_qdata_full (GObject *object,  GQuark quark,  gpointer data,  GDestroyNotify destroy);
		g_object_set_qdata_full(gObject, quark, data, destroy);
	}
	
	/**
	 * This function gets back user data pointers stored via
	 * g_object_set_qdata() and removes the data from object
	 * without invoking its destroy() function (if any was
	 * set).
	 * Usually, calling this function is only required to update
	 * Params:
	 * quark = A GQuark, naming the user data pointer
	 * Returns: The user data pointer set, or NULL. [transfer full]
	 */
	public void* stealQdata(GQuark quark)
	{
		// gpointer g_object_steal_qdata (GObject *object,  GQuark quark);
		return g_object_steal_qdata(gObject, quark);
	}
	
	/**
	 * This is a variant of g_object_get_qdata() which returns
	 * a 'duplicate' of the value. dup_func defines the
	 * meaning of 'duplicate' in this context, it could e.g.
	 * take a reference on a ref-counted object.
	 * If the quark is not set on the object then dup_func
	 * will be called with a NULL argument.
	 * Note that dup_func is called while user data of object
	 * is locked.
	 * This function can be useful to avoid races when multiple
	 * threads are using object data on the same key on the same
	 * object.
	 * Since 2.34
	 * Params:
	 * quark = a GQuark, naming the user data pointer
	 * dupFunc = function to dup the value. [allow-none]
	 * userData = passed as user_data to dup_func. [allow-none]
	 * Returns: the result of calling dup_func on the value associated with quark on object, or NULL if not set. If dup_func is NULL, the value is returned unmodified.
	 */
	public void* dupQdata(GQuark quark, GDuplicateFunc dupFunc, void* userData)
	{
		// gpointer g_object_dup_qdata (GObject *object,  GQuark quark,  GDuplicateFunc dup_func,  gpointer user_data);
		return g_object_dup_qdata(gObject, quark, dupFunc, userData);
	}
	
	/**
	 * Compares the user data for the key quark on object with
	 * oldval, and if they are the same, replaces oldval with
	 * newval.
	 * This is like a typical atomic compare-and-exchange
	 * operation, for user data on an object.
	 * If the previous value was replaced then ownership of the
	 * old value (oldval) is passed to the caller, including
	 * the registred destroy notify for it (passed out in old_destroy).
	 * Its up to the caller to free this as he wishes, which may
	 * or may not include using old_destroy as sometimes replacement
	 * should not destroy the object in the normal way.
	 * Return: TRUE if the existing value for quark was replaced
	 *  by newval, FALSE otherwise.
	 * Since 2.34
	 * Params:
	 * quark = a GQuark, naming the user data pointer
	 * oldval = the old value to compare against. [allow-none]
	 * newval = the new value. [allow-none]
	 * destroy = a destroy notify for the new value. [allow-none]
	 * oldDestroy = destroy notify for the existing value. [allow-none]
	 */
	public int replaceQdata(GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* oldDestroy)
	{
		// gboolean g_object_replace_qdata (GObject *object,  GQuark quark,  gpointer oldval,  gpointer newval,  GDestroyNotify destroy,  GDestroyNotify *old_destroy);
		return g_object_replace_qdata(gObject, quark, oldval, newval, destroy, oldDestroy);
	}
	
	/**
	 * Sets a property on an object.
	 * Params:
	 * propertyName = the name of the property to set
	 * value = the value
	 */
	public void setProperty(string propertyName, Value value)
	{
		// void g_object_set_property (GObject *object,  const gchar *property_name,  const GValue *value);
		g_object_set_property(gObject, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets a property of an object. value must have been initialized to the
	 * expected type of the property (or a type to which the expected type can be
	 * transformed) using g_value_init().
	 * In general, a copy is made of the property contents and the caller is
	 * responsible for freeing the memory by calling g_value_unset().
	 * Note that g_object_get_property() is really intended for language
	 * bindings, g_object_get() is much more convenient for C programming.
	 * Params:
	 * propertyName = the name of the property to get
	 * value = return location for the property value
	 */
	public void getProperty(string propertyName, Value value)
	{
		// void g_object_get_property (GObject *object,  const gchar *property_name,  GValue *value);
		g_object_get_property(gObject, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Creates a new instance of a GObject subtype and sets its properties.
	 * Construction parameters (see G_PARAM_CONSTRUCT, G_PARAM_CONSTRUCT_ONLY)
	 * which are not explicitly specified are set to their default values.
	 * Params:
	 * objectType = the type id of the GObject subtype to instantiate
	 * firstPropertyName = the name of the first property
	 * varArgs = the value of the first property, followed optionally by more
	 * name/value pairs, followed by NULL
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GType objectType, string firstPropertyName, void* varArgs)
	{
		// GObject * g_object_new_valist (GType object_type,  const gchar *first_property_name,  va_list var_args);
		auto p = g_object_new_valist(objectType, Str.toStringz(firstPropertyName), varArgs);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_object_new_valist(objectType, Str.toStringz(firstPropertyName), varArgs)");
		}
		this(cast(GObject*) p);
	}
	
	/**
	 * Sets properties on an object.
	 * Params:
	 * firstPropertyName = name of the first property to set
	 * varArgs = value for the first property, followed optionally by more
	 * name/value pairs, followed by NULL
	 */
	public void setValist(string firstPropertyName, void* varArgs)
	{
		// void g_object_set_valist (GObject *object,  const gchar *first_property_name,  va_list var_args);
		g_object_set_valist(gObject, Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Gets properties of an object.
	 * In general, a copy is made of the property contents and the caller
	 * is responsible for freeing the memory in the appropriate manner for
	 * the type, for instance by calling g_free() or g_object_unref().
	 * See g_object_get().
	 * Params:
	 * firstPropertyName = name of the first property to get
	 * varArgs = return location for the first property, followed optionally by more
	 * name/return location pairs, followed by NULL
	 */
	public void getValist(string firstPropertyName, void* varArgs)
	{
		// void g_object_get_valist (GObject *object,  const gchar *first_property_name,  va_list var_args);
		g_object_get_valist(gObject, Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * This function essentially limits the life time of the closure to
	 * the life time of the object. That is, when the object is finalized,
	 * the closure is invalidated by calling g_closure_invalidate() on
	 * it, in order to prevent invocations of the closure with a finalized
	 * (nonexisting) object. Also, g_object_ref() and g_object_unref() are
	 * added as marshal guards to the closure, to ensure that an extra
	 * reference count is held on object during invocation of the
	 * closure. Usually, this function will be called on closures that
	 * use this object as closure data.
	 * Params:
	 * closure = GClosure to watch
	 */
	public void watchClosure(Closure closure)
	{
		// void g_object_watch_closure (GObject *object,  GClosure *closure);
		g_object_watch_closure(gObject, (closure is null) ? null : closure.getClosureStruct());
	}
	
	/**
	 * Releases all references to other objects. This can be used to break
	 * reference cycles.
	 * This functions should only be called from object system implementations.
	 */
	public void runDispose()
	{
		// void g_object_run_dispose (GObject *object);
		g_object_run_dispose(gObject);
	}
}
