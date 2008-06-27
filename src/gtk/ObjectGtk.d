/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkObject.html
 * outPack = gtk
 * outFile = ObjectGtk
 * strct   = GtkObject
 * realStrct=
 * ctorStrct=
 * clss    = ObjectGtk
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_object_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 * 	- setData
 * 	- getData
 */

module gtk.ObjectGtk;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * Description
 * GtkObject is the base class for all widgets, and for a few
 * non-widget objects such as GtkAdjustment. GtkObject predates
 * GObject; non-widgets that derive from GtkObject rather than
 * GObject do so for backward compatibility reasons.
 * GtkObjects are created with a "floating" reference count.
 * This means that the initial reference is not owned by anyone. Calling
 * g_object_unref() on a newly-created GtkObject is incorrect, the floating
 * reference has to be removed first. This can be done by anyone at any time,
 * by calling g_object_ref_sink() to convert the floating reference into a
 * regular reference. g_object_ref_sink() returns a new reference if an object
 * is already sunk (has no floating reference).
 * When you add a widget to its parent container, the parent container
 * will do this:
 *  g_object_ref_sink (G_OBJECT (child_widget));
 * This means that the container now owns a reference to the child widget
 * and the child widget has no floating reference.
 * The purpose of the floating reference is to keep the child widget alive
 * until you add it to a parent container:
 *  button = gtk_button_new ();
 *  /+* button has one floating reference to keep it alive +/
 *  gtk_container_add (GTK_CONTAINER (container), button);
 *  /+* button has one non-floating reference owned by the container +/
 * GtkWindow is a special case, because GTK+ itself will ref/sink it on creation.
 * That is, after calling gtk_window_new(), the GtkWindow will have one
 * reference which is owned by GTK+, and no floating references.
 * One more factor comes into play: the "destroy" signal, emitted by the
 * gtk_object_destroy() method. The "destroy" signal asks all code owning a
 * reference to an object to release said reference. So, for example, if you call
 * gtk_object_destroy() on a GtkWindow, GTK+ will release the reference count that
 * it owns; if you call gtk_object_destroy() on a GtkButton, then the button will
 * be removed from its parent container and the parent container will release its
 * reference to the button. Because these references are released, calling
 * gtk_object_destroy() should result in freeing all memory associated with an
 * object, unless some buggy code fails to release its references in response to
 * the "destroy" signal. Freeing memory (referred to as
 * finalization only happens if the reference count reaches
 * zero.
 * Some simple rules for handling ""
 * Never call g_object_unref() unless you have previously called g_object_ref(),
 * even if you created the GtkObject. (Note: this is not
 * true for GObject; for GObject, the creator of the object owns a reference.)
 * Call gtk_object_destroy() to get rid of most objects in most cases.
 * In particular, widgets are almost always destroyed in this way.
 *  Because of the floating reference count, you don't need to
 * worry about reference counting for widgets and toplevel windows, unless you
 * explicitly call g_object_ref() yourself.
 */
public class ObjectGtk : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkObject* gtkObject;
	
	
	public GtkObject* getObjectGtkStruct()
	{
		return gtkObject;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkObject* gtkObject)
	{
		if(gtkObject is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkObject passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkObject);
		if( ptr !is null )
		{
			this = cast(ObjectGtk)ptr;
			return;
		}
		super(cast(GObject*)gtkObject);
		this.gtkObject = gtkObject;
	}
	
	/** */
	public static string getId(StockID id)
	{
		return StockDesc[id];
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(ObjectGtk)[] onDestroyListeners;
	/**
	 * Signals that all holders of a reference to the GtkObject should release
	 * the reference that they hold. May result in finalization of the object
	 * if all references are released.
	 * See Also
	 * GObject
	 */
	void addOnDestroy(void delegate(ObjectGtk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("destroy" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"destroy",
			cast(GCallback)&callBackDestroy,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["destroy"] = 1;
		}
		onDestroyListeners ~= dlg;
	}
	extern(C) static void callBackDestroy(GtkObject* objectStruct, ObjectGtk objectGtk)
	{
		bool consumed = false;
		
		foreach ( void delegate(ObjectGtk) dlg ; objectGtk.onDestroyListeners )
		{
			dlg(objectGtk);
		}
		
		return consumed;
	}
	
	
	/**
	 * Warning
	 * gtk_object_new is deprecated and should not be used in newly-written code. Use g_object_new() instead.
	 * Constructs an object given its arguments, enumerated in the call to the
	 * function.
	 * Params:
	 * type = the type identifying this object. Returned by gtk_type_unique()
	 * (although for a properly-written object it should be accessible through
	 * a GTK_TYPE_FOO macro.)
	 * firstPropertyName = name of the first property to set when constructing
	 *  the object.
	 * ... = the first argument's value, followed by any number of
	 * name/argument-value pairs, terminated with NULL.
	 */
	public this (GtkType type, string firstPropertyName, ... )
	{
		// GtkObject* gtk_object_new (GtkType type,  const gchar *first_property_name,  ...);
		auto p = gtk_object_new(type, Str.toStringz(firstPropertyName));
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkObject*) p);
	}
	
	/**
	 * Warning
	 * gtk_object_sink has been deprecated since version 2.10 and should not be used in newly-written code. Use g_object_ref_sink() instead
	 * Removes the floating reference from a GtkObject, if it exists;
	 * otherwise does nothing. See the GtkObject overview documentation at
	 * the top of the page.
	 */
	public void sink()
	{
		// void gtk_object_sink (GtkObject *object);
		gtk_object_sink(gtkObject);
	}
	
	/**
	 * Warning
	 * gtk_object_ref is deprecated and should not be used in newly-written code. Use g_object_ref() instead.
	 * Increases the reference count of the object.
	 * Returns:object.
	 */
	public GtkObject* doref()
	{
		// GtkObject* gtk_object_ref (GtkObject *object);
		return gtk_object_ref(gtkObject);
	}
	
	/**
	 * Warning
	 * gtk_object_unref is deprecated and should not be used in newly-written code. Use g_object_unref() instead.
	 * Decreases the reference count of an object. When its reference count drops
	 * to 0, the object is finalized (i.e. its memory is freed).
	 */
	public void unref()
	{
		// void gtk_object_unref (GtkObject *object);
		gtk_object_unref(gtkObject);
	}
	
	/**
	 * Warning
	 * gtk_object_weakref is deprecated and should not be used in newly-written code. Use g_object_weak_ref() instead.
	 * Adds a weak reference callback to an object. Weak references are used for notification when an object is
	 * finalized. They are called "weak references" because they allow you to safely
	 * hold a pointer to an object without calling g_object_ref() (g_object_ref() adds
	 * a strong reference, that is, forces the object to stay alive).
	 * Params:
	 * notify = callback to invoke before the object is freed.
	 * data = extra data to pass to notify.
	 */
	public void weakref(GtkDestroyNotify notify, void* data)
	{
		// void gtk_object_weakref (GtkObject *object,  GtkDestroyNotify notify,  gpointer data);
		gtk_object_weakref(gtkObject, notify, data);
	}
	
	/**
	 * Warning
	 * gtk_object_weakunref is deprecated and should not be used in newly-written code. Use g_object_weak_unref() instead.
	 * Removes a weak reference callback to an object.
	 * Params:
	 * notify = callback to search for.
	 * data = data to search for.
	 */
	public void weakunref(GtkDestroyNotify notify, void* data)
	{
		// void gtk_object_weakunref (GtkObject *object,  GtkDestroyNotify notify,  gpointer data);
		gtk_object_weakunref(gtkObject, notify, data);
	}
	
	/**
	 * Emits the "destroy" signal notifying all reference holders that they should
	 * release the GtkObject. See the overview documentation at the top of the
	 * page for more details.
	 * The memory for the object itself won't be deleted until
	 * its reference count actually drops to 0; gtk_object_destroy() merely asks
	 * reference holders to release their references, it does not free the object.
	 */
	public void destroy()
	{
		// void gtk_object_destroy (GtkObject *object);
		gtk_object_destroy(gtkObject);
	}
	
	/**
	 * Warning
	 * gtk_object_get is deprecated and should not be used in newly-written code. Use g_object_get() instead.
	 * Gets properties of an object.
	 * Params:
	 * firstPropertyName = name of first property to get the value for.
	 * ... = NULL-terminated list of name-return location pairs.
	 */
	public void get(string firstPropertyName, ... )
	{
		// void gtk_object_get (GtkObject *object,  const gchar *first_property_name,  ...);
		gtk_object_get(gtkObject, Str.toStringz(firstPropertyName));
	}
	
	/**
	 * Warning
	 * gtk_object_set is deprecated and should not be used in newly-written code. Use g_object_set() instead.
	 * Sets properties on an object.
	 * void set_box_properties (GtkBox* box)
	 * {
		 *  gtk_object_set (GTK_OBJECT (box), "homogeneous", TRUE,
		 *  "spacing", 8,
		 * 				 NULL);
	 * }
	 * Params:
	 * firstPropertyName = name of the first property to set
	 * ... = the value of the first argument, followed optionally
	 * by more name/value pairs, followed by NULL.
	 */
	public void set(string firstPropertyName, ... )
	{
		// void gtk_object_set (GtkObject *object,  const gchar *first_property_name,  ...);
		gtk_object_set(gtkObject, Str.toStringz(firstPropertyName));
	}
	
	/**
	 * Warning
	 * gtk_object_set_data is deprecated and should not be used in newly-written code. Use g_object_set_data() instead.
	 * Each object carries around a table of associations from
	 * strings to pointers. This function lets you set an association.
	 * If the object already had an association with that name,
	 * the old association will be destroyed.
	 * Params:
	 * key = name of the key.
	 * data = data to associate with that key.
	 */
	public override void setData(string key, void* data)
	{
		// void gtk_object_set_data (GtkObject *object,  const gchar *key,  gpointer data);
		gtk_object_set_data(gtkObject, Str.toStringz(key), data);
	}
	
	/**
	 * Warning
	 * gtk_object_set_data_full is deprecated and should not be used in newly-written code. Use g_object_set_data_full() instead.
	 * Like gtk_object_set_data() except it adds notification
	 * for when the association is destroyed, either by
	 * gtk_object_remove_data() or when the object is destroyed.
	 * Params:
	 * key = name of the key.
	 * data = data to associate with that key.
	 * destroy = function to call when the association is destroyed.
	 */
	public void setDataFull(string key, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_object_set_data_full (GtkObject *object,  const gchar *key,  gpointer data,  GtkDestroyNotify destroy);
		gtk_object_set_data_full(gtkObject, Str.toStringz(key), data, destroy);
	}
	
	/**
	 * Warning
	 * gtk_object_remove_data is deprecated and should not be used in newly-written code. Use g_object_set_data() to set the object data to NULL instead.
	 * Removes a specified datum from the object's data associations (the object_data).
	 * Subsequent calls to gtk_object_get_data() will return NULL.
	 * If you specified a destroy handler with gtk_object_set_data_full(),
	 * it will be invoked.
	 * Params:
	 * key = name of the key for that association.
	 */
	public void removeData(string key)
	{
		// void gtk_object_remove_data (GtkObject *object,  const gchar *key);
		gtk_object_remove_data(gtkObject, Str.toStringz(key));
	}
	
	/**
	 * Warning
	 * gtk_object_get_data is deprecated and should not be used in newly-written code. Use g_object_get_data() instead.
	 * Get a named field from the object's table of associations (the object_data).
	 * Params:
	 * key = name of the key for that association.
	 * Returns:the data if found, or NULL if no such data exists.
	 */
	public override void* getData(string key)
	{
		// gpointer gtk_object_get_data (GtkObject *object,  const gchar *key);
		return gtk_object_get_data(gtkObject, Str.toStringz(key));
	}
	
	/**
	 * Warning
	 * gtk_object_remove_no_notify is deprecated and should not be used in newly-written code. Use g_object_steal_data() instead.
	 * Remove a specified datum from the object's data associations (the object_data),
	 * without invoking the association's destroy handler.
	 * Just like gtk_object_remove_data() except that any destroy handler
	 * will be ignored.
	 * Therefore this only affects data set using gtk_object_set_data_full().
	 * Params:
	 * key = name of the key for that association.
	 */
	public void removeNoNotify(string key)
	{
		// void gtk_object_remove_no_notify (GtkObject *object,  const gchar *key);
		gtk_object_remove_no_notify(gtkObject, Str.toStringz(key));
	}
	
	/**
	 * Warning
	 * gtk_object_set_user_data is deprecated and should not be used in newly-written code. Use g_object_set_data() instead.
	 * For convenience, every object offers a generic user data
	 * pointer. This function sets it.
	 * Params:
	 * data = the new value for the user data.
	 */
	public void setUserData(void* data)
	{
		// void gtk_object_set_user_data (GtkObject *object,  gpointer data);
		gtk_object_set_user_data(gtkObject, data);
	}
	
	/**
	 * Warning
	 * gtk_object_get_user_data is deprecated and should not be used in newly-written code. Use g_object_get_data() instead.
	 * Get the object's user data pointer.
	 * This is intended to be a pointer for your convenience in
	 * writing applications.
	 * Returns:the user data field for object.
	 */
	public void* getUserData()
	{
		// gpointer gtk_object_get_user_data (GtkObject *object);
		return gtk_object_get_user_data(gtkObject);
	}
	
	/**
	 * Warning
	 * gtk_object_add_arg_type is deprecated and should not be used in newly-written code.
	 * Deprecated in favor of the GObject property system including GParamSpec.
	 * Add a new type of argument to an object class.
	 * Usually this is called when registering a new type of object.
	 * Params:
	 * argName = fully qualify object name, for example GtkObject::user_data.
	 * argType = type of the argument.
	 * argFlags = bitwise-OR of the GtkArgFlags enum. (Whether the argument is
	 * settable or gettable, whether it is set when the object is constructed.)
	 * argId = an internal number, passed in from here to the "set_arg" and
	 * "get_arg" handlers of the object.
	 */
	public static void addArgType(string argName, GtkType argType, uint argFlags, uint argId)
	{
		// void gtk_object_add_arg_type (const gchar *arg_name,  GtkType arg_type,  guint arg_flags,  guint arg_id);
		gtk_object_add_arg_type(Str.toStringz(argName), argType, argFlags, argId);
	}
	
	/**
	 * Warning
	 * gtk_object_set_data_by_id is deprecated and should not be used in newly-written code. Use g_object_set_qdata() instead.
	 * Just like gtk_object_set_data() except that it takes
	 * a GQuark instead of a string, so it is slightly faster.
	 * Use gtk_object_data_try_key() and gtk_object_data_force_id()
	 * to get an id from a string.
	 * Params:
	 * dataId = quark of the key.
	 * data = data to associate with that key.
	 */
	public void setDataById(GQuark dataId, void* data)
	{
		// void gtk_object_set_data_by_id (GtkObject *object,  GQuark data_id,  gpointer data);
		gtk_object_set_data_by_id(gtkObject, dataId, data);
	}
	
	/**
	 * Warning
	 * gtk_object_set_data_by_id_full is deprecated and should not be used in newly-written code. Use g_object_set_qdata_full() instead.
	 * Just like gtk_object_set_data_full() except that it takes
	 * a GQuark instead of a string, so it is slightly faster.
	 * Use gtk_object_data_try_key() and gtk_object_data_force_id()
	 * to get an id from a string.
	 * Params:
	 * dataId = quark of the key.
	 * data = data to associate with that key.
	 * destroy = function to call when the association is destroyed.
	 */
	public void setDataByIdFull(GQuark dataId, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_object_set_data_by_id_full (GtkObject *object,  GQuark data_id,  gpointer data,  GtkDestroyNotify destroy);
		gtk_object_set_data_by_id_full(gtkObject, dataId, data, destroy);
	}
	
	/**
	 * Warning
	 * gtk_object_get_data_by_id is deprecated and should not be used in newly-written code. Use g_object_get_qdata() instead.
	 * Just like gtk_object_get_data() except that it takes
	 * a GQuark instead of a string, so it is slightly faster.
	 * Use gtk_object_data_try_key() and gtk_object_data_force_id()
	 * to get an id from a string.
	 * Params:
	 * dataId = quark of the key.
	 * Returns:the data if found, or NULL if no such data exists.
	 */
	public void* getDataById(GQuark dataId)
	{
		// gpointer gtk_object_get_data_by_id (GtkObject *object,  GQuark data_id);
		return gtk_object_get_data_by_id(gtkObject, dataId);
	}
	
	/**
	 * Warning
	 * gtk_object_remove_data_by_id is deprecated and should not be used in newly-written code. Use g_object_set_qdata() with data of NULL instead.
	 * Just like gtk_object_remove_data() except that it takes
	 * a GQuark instead of a string, so it is slightly faster.
	 * Remove a specified datum from the object's data associations.
	 * Subsequent calls to gtk_object_get_data() will return NULL.
	 * Use gtk_object_data_try_key() and gtk_object_data_force_id()
	 * to get an id from a string.
	 * Params:
	 * dataId = quark of the key.
	 */
	public void removeDataById(GQuark dataId)
	{
		// void gtk_object_remove_data_by_id (GtkObject *object,  GQuark data_id);
		gtk_object_remove_data_by_id(gtkObject, dataId);
	}
	
	/**
	 * Warning
	 * gtk_object_remove_no_notify_by_id is deprecated and should not be used in newly-written code. Use g_object_steal_qdata() instead.
	 * Just like gtk_object_remove_no_notify() except that it takes
	 * a GQuark instead of a string, so it is slightly faster.
	 * Use gtk_object_data_try_key() and gtk_object_data_force_id()
	 * to get an id from a string.
	 * Params:
	 * keyId = quark of the key.
	 */
	public void removeNoNotifyById(GQuark keyId)
	{
		// void gtk_object_remove_no_notify_by_id (GtkObject *object,  GQuark key_id);
		gtk_object_remove_no_notify_by_id(gtkObject, keyId);
	}
}
