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
 * inFile  = GstObject.html
 * outPack = gstreamer
 * outFile = ObjectGst
 * strct   = GstObject
 * realStrct=
 * ctorStrct=
 * clss    = ObjectGst
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_object_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gst_object_save_thyself
 * 	- gst_object_restore_thyself
 * 	- gst_class_signal_emit_by_name
 * 	- gst_class_signal_connect
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- glib.ErrorG
 * 	- glib.ListG
 * 	- gobject.ParamSpec
 * structWrap:
 * 	- GError* -> ErrorG
 * 	- GList* -> ListG
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GstObject* -> ObjectGst
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ObjectGst;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gobject.ObjectG;
private import glib.ErrorG;
private import glib.ListG;
private import gobject.ParamSpec;



private import gobject.ObjectG;

/**
 * Description
 * GstObject provides a root for the object hierarchy tree filed in by the
 * GStreamer library. It is currently a thin wrapper on top of
 * GObject. It is an abstract class that is not very usable on its own.
 * GstObject gives us basic refcounting, parenting functionality and locking.
 * Most of the function are just extended for special GStreamer needs and can be
 * found under the same name in the base class of GstObject which is GObject
 * (e.g. g_object_ref() becomes gst_object_ref()).
 * The most interesting difference between GstObject and GObject is the
 * "floating" reference count. A GObject is created with a reference count of
 * 1, owned by the creator of the GObject. (The owner of a reference is the
 * code section that has the right to call gst_object_unref() in order to
 * remove that reference.) A GstObject is created with a reference count of 1
 * also, but it isn't owned by anyone; Instead, the initial reference count
 * of a GstObject is "floating". The floating reference can be removed by
 * anyone at any time, by calling gst_object_sink(). gst_object_sink() does
 * nothing if an object is already sunk (has no floating reference).
 * When you add a GstElement to its parent container, the parent container will
 * do this:
 * $(DDOC_COMMENT example)
 * This means that the container now owns a reference to the child element
 * (since it called gst_object_ref()), and the child element has no floating
 * reference.
 * The purpose of the floating reference is to keep the child element alive
 * until you add it to a parent container, which then manages the lifetime of
 * the object itself:
 * $(DDOC_COMMENT example)
 * Another effect of this is, that calling gst_object_unref() on a bin object,
 * will also destoy all the GstElement objects in it. The same is true for
 * calling gst_bin_remove().
 * Special care has to be taken for all methods that gst_object_sink() an object
 * since if the caller of those functions had a floating reference to the object,
 * the object reference is now invalid.
 * In contrast to GObject instances, GstObject adds a name property. The functions
 * gst_object_set_name() and gst_object_get_name() are used to set/get the name
 * of the object.
 * Last reviewed on 2005-11-09 (0.9.4)
 */
public class ObjectGst : ObjectG
{
	
	/** the main Gtk struct */
	protected GstObject* gstObject;
	
	
	public GstObject* getObjectGstStruct()
	{
		return gstObject;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstObject;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstObject* gstObject)
	{
		super(cast(GObject*)gstObject);
		this.gstObject = gstObject;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstObject = cast(GstObject*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ObjectGst, ParamSpec, ObjectGst)[] onDeepNotifyListeners;
	/**
	 * The deep notify signal is used to be notified of property changes. It is
	 * typically attached to the toplevel bin to receive notifications from all
	 * the elements contained in that bin.
	 */
	void addOnDeepNotify(void delegate(ObjectGst, ParamSpec, ObjectGst) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("deep-notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deep-notify",
			cast(GCallback)&callBackDeepNotify,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deep-notify"] = 1;
		}
		onDeepNotifyListeners ~= dlg;
	}
	extern(C) static void callBackDeepNotify(GstObject* gstobjectStruct, GstObject* propObject, GParamSpec* prop, ObjectGst _objectGst)
	{
		foreach ( void delegate(ObjectGst, ParamSpec, ObjectGst) dlg ; _objectGst.onDeepNotifyListeners )
		{
			dlg(ObjectG.getDObject!(ObjectGst)(propObject), ObjectG.getDObject!(ParamSpec)(prop), _objectGst);
		}
	}
	
	void delegate(void*, ObjectGst)[] onObjectSavedListeners;
	/**
	 * Trigered whenever a new object is saved to XML. You can connect to this
	 * signal to insert custom XML tags into the core XML.
	 */
	void addOnObjectSaved(void delegate(void*, ObjectGst) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("object-saved" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"object-saved",
			cast(GCallback)&callBackObjectSaved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["object-saved"] = 1;
		}
		onObjectSavedListeners ~= dlg;
	}
	extern(C) static void callBackObjectSaved(GstObject* gstobjectStruct, void* xmlNode, ObjectGst _objectGst)
	{
		foreach ( void delegate(void*, ObjectGst) dlg ; _objectGst.onObjectSavedListeners )
		{
			dlg(xmlNode, _objectGst);
		}
	}
	
	void delegate(ObjectG, ObjectGst)[] onParentSetListeners;
	/**
	 * Emitted when the parent of an object is set.
	 */
	void addOnParentSet(void delegate(ObjectG, ObjectGst) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("parent-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"parent-set",
			cast(GCallback)&callBackParentSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["parent-set"] = 1;
		}
		onParentSetListeners ~= dlg;
	}
	extern(C) static void callBackParentSet(GstObject* gstobjectStruct, GObject* parent, ObjectGst _objectGst)
	{
		foreach ( void delegate(ObjectG, ObjectGst) dlg ; _objectGst.onParentSetListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(parent), _objectGst);
		}
	}
	
	void delegate(ObjectG, ObjectGst)[] onParentUnsetListeners;
	/**
	 * Emitted when the parent of an object is unset.
	 */
	void addOnParentUnset(void delegate(ObjectG, ObjectGst) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("parent-unset" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"parent-unset",
			cast(GCallback)&callBackParentUnset,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["parent-unset"] = 1;
		}
		onParentUnsetListeners ~= dlg;
	}
	extern(C) static void callBackParentUnset(GstObject* gstobjectStruct, GObject* parent, ObjectGst _objectGst)
	{
		foreach ( void delegate(ObjectG, ObjectGst) dlg ; _objectGst.onParentUnsetListeners )
		{
			dlg(ObjectG.getDObject!(ObjectG)(parent), _objectGst);
		}
	}
	
	
	/**
	 * Sets the name of object, or gives object a guaranteed unique
	 * name (if name is NULL).
	 * This function makes a copy of the provided name, so the caller
	 * retains ownership of the name it sent.
	 * Params:
	 * name = new name of object
	 * Returns: TRUE if the name could be set. Since Objects that have a parent cannot be renamed, this function returns FALSE in those cases. MT safe. This function grabs and releases object's LOCK.
	 */
	public int setName(string name)
	{
		// gboolean gst_object_set_name (GstObject *object,  const gchar *name);
		return gst_object_set_name(gstObject, Str.toStringz(name));
	}
	
	/**
	 * Returns a copy of the name of object.
	 * Caller should g_free() the return value after usage.
	 * For a nameless object, this returns NULL, which you can safely g_free()
	 * as well.
	 * Returns: the name of object. g_free() after usage. MT safe. This function grabs and releases object's LOCK.
	 */
	public string getName()
	{
		// gchar* gst_object_get_name (GstObject *object);
		return Str.toString(gst_object_get_name(gstObject));
	}
	
	/**
	 * Sets the parent of object to parent. The object's reference count will
	 * be incremented, and any floating reference will be removed (see gst_object_sink()).
	 * This function causes the parent-set signal to be emitted when the parent
	 * was successfully set.
	 * Params:
	 * parent = new parent of object
	 * Returns: TRUE if parent could be set or FALSE when object already had a parent or object and parent are the same. MT safe. Grabs and releases object's LOCK.
	 */
	public int setParent(ObjectGst parent)
	{
		// gboolean gst_object_set_parent (GstObject *object,  GstObject *parent);
		return gst_object_set_parent(gstObject, (parent is null) ? null : parent.getObjectGstStruct());
	}
	
	/**
	 * Returns the parent of object. This function increases the refcount
	 * of the parent object so you should gst_object_unref() it after usage.
	 * Returns: parent of object, this can be NULL if object has no parent. unref after usage. MT safe. Grabs and releases object's LOCK.
	 */
	public ObjectGst getParent()
	{
		// GstObject* gst_object_get_parent (GstObject *object);
		auto p = gst_object_get_parent(gstObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectGst)(cast(GstObject*) p);
	}
	
	/**
	 * Clear the parent of object, removing the associated reference.
	 * This function decreases the refcount of object.
	 * MT safe. Grabs and releases object's lock.
	 */
	public void unparent()
	{
		// void gst_object_unparent (GstObject *object);
		gst_object_unparent(gstObject);
	}
	
	/**
	 * Returns a copy of the name prefix of object.
	 * Caller should g_free() the return value after usage.
	 * For a prefixless object, this returns NULL, which you can safely g_free()
	 * as well.
	 * Returns: the name prefix of object. g_free() after usage. MT safe. This function grabs and releases object's LOCK.
	 */
	public string getNamePrefix()
	{
		// gchar* gst_object_get_name_prefix (GstObject *object);
		return Str.toString(gst_object_get_name_prefix(gstObject));
	}
	
	/**
	 * Sets the name prefix of object to name_prefix.
	 * This function makes a copy of the provided name prefix, so the caller
	 * retains ownership of the name prefix it sent.
	 * MT safe. This function grabs and releases object's LOCK.
	 * Params:
	 * namePrefix = new name prefix of object
	 */
	public void setNamePrefix(string namePrefix)
	{
		// void gst_object_set_name_prefix (GstObject *object,  const gchar *name_prefix);
		gst_object_set_name_prefix(gstObject, Str.toStringz(namePrefix));
	}
	
	/**
	 * A default deep_notify signal callback for an object. The user data
	 * should contain a pointer to an array of strings that should be excluded
	 * from the notify. The default handler will print the new value of the property
	 * using g_print.
	 * MT safe. This function grabs and releases object's LOCK for getting its
	 *  path string.
	 * Params:
	 * object = the GObject that signalled the notify.
	 * orig = a GstObject that initiated the notify.
	 * pspec = a GParamSpec of the property.
	 * excludedProps = a set of user-specified properties to exclude or
	 *  NULL to show all changes.
	 */
	public static void defaultDeepNotify(ObjectG object, ObjectGst orig, ParamSpec pspec, string[] excludedProps)
	{
		// void gst_object_default_deep_notify (GObject *object,  GstObject *orig,  GParamSpec *pspec,  gchar **excluded_props);
		gst_object_default_deep_notify((object is null) ? null : object.getObjectGStruct(), (orig is null) ? null : orig.getObjectGstStruct(), (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringzArray(excludedProps));
	}
	
	/**
	 * A default error function.
	 * The default handler will simply print the error string using g_print.
	 * Params:
	 * error = the GError.
	 * dbug = an additional debug information string, or NULL.
	 */
	public void defaultError(ErrorG error, string dbug)
	{
		// void gst_object_default_error (GstObject *source,  GError *error,  gchar *debug);
		gst_object_default_error(gstObject, (error is null) ? null : error.getErrorGStruct(), Str.toStringz(dbug));
	}
	
	/**
	 * Checks to see if there is any object named name in list. This function
	 * does not do any locking of any kind. You might want to protect the
	 * provided list with the lock of the owner of the list. This function
	 * will lock each GstObject in the list to compare the name, so be
	 * carefull when passing a list with a locked object.
	 * Params:
	 * list = a list of GstObject to check through
	 * name = the name to search for
	 * Returns: TRUE if a GstObject named name does not appear in list, FALSE if it does. MT safe. Grabs and releases the LOCK of each object in the list.
	 */
	public static int checkUniqueness(ListG list, string name)
	{
		// gboolean gst_object_check_uniqueness (GList *list,  const gchar *name);
		return gst_object_check_uniqueness((list is null) ? null : list.getListGStruct(), Str.toStringz(name));
	}
	
	/**
	 * Check if object has an ancestor ancestor somewhere up in
	 * the hierarchy.
	 * Params:
	 * ancestor = a GstObject to check as ancestor
	 * Returns: TRUE if ancestor is an ancestor of object. MT safe. Grabs and releases object's locks.
	 */
	public int hasAncestor(ObjectGst ancestor)
	{
		// gboolean gst_object_has_ancestor (GstObject *object,  GstObject *ancestor);
		return gst_object_has_ancestor(gstObject, (ancestor is null) ? null : ancestor.getObjectGstStruct());
	}
	
	/**
	 * Increments the refence count on object. This function
	 * does not take the lock on object because it relies on
	 * atomic refcounting.
	 * This object returns the input parameter to ease writing
	 * Params:
	 * object = a GstObject to reference
	 * Returns: A pointer to object
	 */
	public static void* doref(void* object)
	{
		// gpointer gst_object_ref (gpointer object);
		return gst_object_ref(object);
	}
	
	/**
	 * Decrements the refence count on object. If reference count hits
	 * zero, destroy object. This function does not take the lock
	 * on object as it relies on atomic refcounting.
	 * The unref method should never be called with the LOCK held since
	 * this might deadlock the dispose function.
	 * Params:
	 * object = a GstObject to unreference
	 */
	public static void unref(void* object)
	{
		// void gst_object_unref (gpointer object);
		gst_object_unref(object);
	}
	
	/**
	 * If object was floating, the GST_OBJECT_FLOATING flag is removed
	 * and object is unreffed. When object was not floating,
	 * this function does nothing.
	 * Any newly created object has a refcount of 1 and is floating.
	 * This function should be used when creating a new object to
	 * symbolically 'take ownership' of object. This done by first doing a
	 * gst_object_ref() to keep a reference to object and then gst_object_sink()
	 * to remove and unref any floating references to object.
	 * Use gst_object_set_parent() to have this done for you.
	 * MT safe. This function grabs and releases object lock.
	 * Params:
	 * object = a GstObject to sink
	 */
	public static void sink(void* object)
	{
		// void gst_object_sink (gpointer object);
		gst_object_sink(object);
	}
	
	/**
	 * Unrefs the GstObject pointed to by oldobj, refs newobj and
	 * puts newobj in *oldobj. Be carefull when calling this
	 * function, it does not take any locks. You might want to lock
	 * the object owning oldobj pointer before calling this
	 * function.
	 * Make sure not to LOCK oldobj because it might be unreffed
	 * which could cause a deadlock when it is disposed.
	 * Params:
	 * oldobj = pointer to a place of a GstObject to replace
	 * newobj = a new GstObject
	 */
	public static void replace(ref ObjectGst oldobj, ObjectGst newobj)
	{
		// void gst_object_replace (GstObject **oldobj,  GstObject *newobj);
		GstObject* outoldobj = (oldobj is null) ? null : oldobj.getObjectGstStruct();
		
		gst_object_replace(&outoldobj, (newobj is null) ? null : newobj.getObjectGstStruct());
		
		oldobj = ObjectG.getDObject!(ObjectGst)(outoldobj);
	}
	
	/**
	 * Generates a string describing the path of object in
	 * the object hierarchy. Only useful (or used) for debugging.
	 * Returns: a string describing the path of object. You must g_free() the string after usage. MT safe. Grabs and releases the GstObject's LOCK for all objects in the hierarchy.
	 */
	public string getPathString()
	{
		// gchar* gst_object_get_path_string (GstObject *object);
		return Str.toString(gst_object_get_path_string(gstObject));
	}
}
