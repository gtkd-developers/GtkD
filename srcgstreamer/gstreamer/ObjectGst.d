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
 * omit structs:
 * 	- GstObjectClass
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.ListG
 * 	- gobject.ObjectG
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gstreamer.ControlBinding
 * structWrap:
 * 	- GError* -> ErrorG
 * 	- GList* -> ListG
 * 	- GObject* -> ObjectG
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GstControlBinding* -> ControlBinding
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
private import glib.ErrorG;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gstreamer.ControlBinding;



private import gobject.ObjectG;

/**
 * GstObject provides a root for the object hierarchy tree filed in by the
 * GStreamer library. It is currently a thin wrapper on top of
 * GInitiallyUnowned. It is an abstract class that is not very usable on its own.
 *
 * GstObject gives us basic refcounting, parenting functionality and locking.
 * Most of the function are just extended for special GStreamer needs and can be
 * found under the same name in the base class of GstObject which is GObject
 * (e.g. g_object_ref() becomes gst_object_ref()).
 *
 * Since GstObject dereives from GInitiallyUnowned, it also inherits the
 * floating reference. Be aware that functions such as gst_bin_add() and
 * gst_element_add_pad() take ownership of the floating reference.
 *
 * In contrast to GObject instances, GstObject adds a name property. The functions
 * gst_object_set_name() and gst_object_get_name() are used to set/get the name
 * of the object.
 *
 * controlled properties
 *
 * Controlled properties offers a lightweight way to adjust gobject
 * properties over stream-time. It works by using time-stamped value pairs that
 * are queued for element-properties. At run-time the elements continously pull
 * values changes for the current stream-time.
 *
 * What needs to be changed in a GstElement?
 * Very little - it is just two steps to make a plugin controllable!
 *
 *  mark gobject-properties paramspecs that make sense to be controlled,
 *  by GST_PARAM_CONTROLLABLE.
 *
 *  when processing data (get, chain, loop function) at the beginning call
 *  gst_object_sync_values(element,timestamp).
 *  This will made the controller to update all gobject properties that are under
 *  control with the current values based on timestamp.
 *
 * What needs to be done in applications?
 * Again it's not a lot to change.
 *
 *  create a GstControlSource.
 *  csource = gst_interpolation_control_source_new();
 *  g_object_set (csource, "mode", GST_INTERPOLATION_MODE_LINEAR, NULL);
 *
 *  Attach the GstControlSource on the controller to a property.
 *  gst_object_add_control_binding (object, gst_direct_control_binding_new (object, "prop1", csource));
 *
 *  Set the control values
 *  gst_timed_value_control_source_set ((GstTimedValueControlSource *)csource,0 * GST_SECOND, value1);
 *  gst_timed_value_control_source_set ((GstTimedValueControlSource *)csource,1 * GST_SECOND, value2);
 *
 *  start your pipeline
 *
 * Last reviewed on 2012-03-29 (0.11.3)
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
	 * Free-function: g_free
	 * Returns: the name of object. g_free() after usage. MT safe. This function grabs and releases object's LOCK. [transfer full]
	 */
	public string getName()
	{
		// gchar * gst_object_get_name (GstObject *object);
		return Str.toString(gst_object_get_name(gstObject));
	}
	
	/**
	 * Sets the parent of object to parent. The object's reference count will
	 * be incremented, and any floating reference will be removed (see gst_object_ref_sink()).
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
	 * Returns: parent of object, this can be NULL if object has no parent. unref after usage. MT safe. Grabs and releases object's LOCK. [transfer full]
	 */
	public ObjectGst getParent()
	{
		// GstObject * gst_object_get_parent (GstObject *object);
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
	 * excludedProps = a set of user-specified properties to exclude or NULL to show
	 * all changes. [array zero-terminated=1][element-type gchar*][allow-none]
	 */
	public static void defaultDeepNotify(ObjectG object, ObjectGst orig, ParamSpec pspec, string[] excludedProps)
	{
		// void gst_object_default_deep_notify (GObject *object,  GstObject *orig,  GParamSpec *pspec,  gchar **excluded_props);
		gst_object_default_deep_notify((object is null) ? null : object.getObjectGStruct(), (orig is null) ? null : orig.getObjectGstStruct(), (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringzArray(excludedProps));
	}
	
	/**
	 * A default error function that uses g_printerr() to display the error message
	 * and the optional debug sting..
	 * The default handler will simply print the error string using g_print.
	 * Params:
	 * error = the GError. [in]
	 */
	public void defaultError(ErrorG error, ref char dbug)
	{
		// void gst_object_default_error (GstObject *source,  const GError *error,  const gchar *debug);
		gst_object_default_error(gstObject, (error is null) ? null : error.getErrorGStruct(), &dbug);
	}
	
	/**
	 * Checks to see if there is any object named name in list. This function
	 * does not do any locking of any kind. You might want to protect the
	 * provided list with the lock of the owner of the list. This function
	 * will lock each GstObject in the list to compare the name, so be
	 * carefull when passing a list with a locked object.
	 * Params:
	 * list = a list of GstObject to
	 * check through. [transfer none][element-type Gst.Object]
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
	 * the hierarchy. One can e.g. check if a GstElement is inside a GstPipeline.
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
	 * Increments the reference count on object. This function
	 * does not take the lock on object because it relies on
	 * atomic refcounting.
	 * This object returns the input parameter to ease writing
	 * Params:
	 * object = a GstObject to reference. [type Gst.Object]
	 * Returns: A pointer to object. [transfer full][type Gst.Object]
	 */
	public static void* doref(void* object)
	{
		// gpointer gst_object_ref (gpointer object);
		return gst_object_ref(object);
	}
	
	/**
	 * Decrements the reference count on object. If reference count hits
	 * zero, destroy object. This function does not take the lock
	 * on object as it relies on atomic refcounting.
	 * The unref method should never be called with the LOCK held since
	 * this might deadlock the dispose function.
	 * Params:
	 * object = a GstObject to unreference. [type Gst.Object]
	 */
	public static void unref(void* object)
	{
		// void gst_object_unref (gpointer object);
		gst_object_unref(object);
	}
	
	/**
	 * Increase the reference count of object, and possibly remove the floating
	 * reference, if object has a floating reference.
	 * In other words, if the object is floating, then this call "assumes ownership"
	 * of the floating reference, converting it to a normal reference by clearing
	 * the floating flag while leaving the reference count unchanged. If the object
	 * is not floating, then this call adds a new normal reference increasing the
	 * reference count by one.
	 * Params:
	 * object = a GstObject to sink
	 */
	public static void* refSink(void* object)
	{
		// gpointer gst_object_ref_sink (gpointer object);
		return gst_object_ref_sink(object);
	}
	
	/**
	 * Atomically modifies a pointer to point to a new object.
	 * The reference count of oldobj is decreased and the reference count of
	 * newobj is increased.
	 * Either newobj and the value pointed to by oldobj may be NULL.
	 * Params:
	 * oldobj = pointer to a place of a GstObject to
	 * replace. [inout][transfer full]
	 * newobj = a new GstObject. [transfer none]
	 * Returns: TRUE if newobj was different from oldobj
	 */
	public static int replace(ref ObjectGst oldobj, ObjectGst newobj)
	{
		// gboolean gst_object_replace (GstObject **oldobj,  GstObject *newobj);
		GstObject* outoldobj = (oldobj is null) ? null : oldobj.getObjectGstStruct();
		
		auto p = gst_object_replace(&outoldobj, (newobj is null) ? null : newobj.getObjectGstStruct());
		
		oldobj = ObjectG.getDObject!(ObjectGst)(outoldobj);
		return p;
	}
	
	/**
	 * Generates a string describing the path of object in
	 * the object hierarchy. Only useful (or used) for debugging.
	 * Free-function: g_free
	 * Returns: a string describing the path of object. You must g_free() the string after usage. MT safe. Grabs and releases the GstObject's LOCK for all objects in the hierarchy. [transfer full]
	 */
	public string getPathString()
	{
		// gchar * gst_object_get_path_string (GstObject *object);
		return Str.toString(gst_object_get_path_string(gstObject));
	}
	
	/**
	 * Returns a suggestion for timestamps where buffers should be split
	 * to get best controller results.
	 * Returns: Returns the suggested timestamp or GST_CLOCK_TIME_NONE if no control-rate was set.
	 */
	public GstClockTime suggestNextSync()
	{
		// GstClockTime gst_object_suggest_next_sync (GstObject *object);
		return gst_object_suggest_next_sync(gstObject);
	}
	
	/**
	 * Sets the properties of the object, according to the GstControlSources that
	 * (maybe) handle them and for the given timestamp.
	 * If this function fails, it is most likely the application developers fault.
	 * Most probably the control sources are not setup correctly.
	 * Params:
	 * timestamp = the time that should be processed
	 * Returns: TRUE if the controller values could be applied to the object properties, FALSE otherwise
	 */
	public int syncValues(GstClockTime timestamp)
	{
		// gboolean gst_object_sync_values (GstObject *object,  GstClockTime timestamp);
		return gst_object_sync_values(gstObject, timestamp);
	}
	
	/**
	 * Check if the object has an active controlled properties.
	 * Returns: TRUE if the object has active controlled properties
	 */
	public int hasActiveControlBindings()
	{
		// gboolean gst_object_has_active_control_bindings  (GstObject *object);
		return gst_object_has_active_control_bindings(gstObject);
	}
	
	/**
	 * This function is used to disable all controlled properties of the object for
	 * some time, i.e. gst_object_sync_values() will do nothing.
	 * Params:
	 * disabled = boolean that specifies whether to disable the controller
	 * or not.
	 */
	public void setControlBindingsDisabled(int disabled)
	{
		// void gst_object_set_control_bindings_disabled  (GstObject *object,  gboolean disabled);
		gst_object_set_control_bindings_disabled(gstObject, disabled);
	}
	
	/**
	 * This function is used to disable the GstController on a property for
	 * some time, i.e. gst_controller_sync_values() will do nothing for the
	 * property.
	 * Params:
	 * propertyName = property to disable
	 * disabled = boolean that specifies whether to disable the controller
	 * or not.
	 */
	public void setControlBindingDisabled(string propertyName, int disabled)
	{
		// void gst_object_set_control_binding_disabled  (GstObject *object,  const gchar *property_name,  gboolean disabled);
		gst_object_set_control_binding_disabled(gstObject, Str.toStringz(propertyName), disabled);
	}
	
	/**
	 * Sets the GstControlBinding. If there already was a GstControlBinding
	 * for this property it will be replaced.
	 * The object will take ownership of the binding.
	 * Params:
	 * binding = the GstControlBinding that should be used. [transfer full]
	 * Returns: FALSE if the given binding has not been setup for this object or TRUE otherwise.
	 */
	public int addControlBinding(ControlBinding binding)
	{
		// gboolean gst_object_add_control_binding (GstObject *object,  GstControlBinding *binding);
		return gst_object_add_control_binding(gstObject, (binding is null) ? null : binding.getControlBindingStruct());
	}
	
	/**
	 * Gets the corresponding GstControlBinding for the property. This should be
	 * unreferenced again after use.
	 * Params:
	 * propertyName = name of the property
	 * Returns: the GstControlBinding for property_name or NULL if the property is not controlled. [transfer full]
	 */
	public ControlBinding getControlBinding(string propertyName)
	{
		// GstControlBinding * gst_object_get_control_binding (GstObject *object,  const gchar *property_name);
		auto p = gst_object_get_control_binding(gstObject, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ControlBinding)(cast(GstControlBinding*) p);
	}
	
	/**
	 * Removes the corresponding GstControlBinding. If it was the
	 * last ref of the binding, it will be disposed.
	 * Params:
	 * binding = the binding
	 * Returns: TRUE if the binding could be removed.
	 */
	public int removeControlBinding(ControlBinding binding)
	{
		// gboolean gst_object_remove_control_binding (GstObject *object,  GstControlBinding *binding);
		return gst_object_remove_control_binding(gstObject, (binding is null) ? null : binding.getControlBindingStruct());
	}
	
	/**
	 * Gets the value for the given controlled property at the requested time.
	 * Params:
	 * propertyName = the name of the property to get
	 * timestamp = the time the control-change should be read from
	 * Returns: the GValue of the property at the given time, or NULL if the property isn't controlled.
	 */
	public Value getValue(string propertyName, GstClockTime timestamp)
	{
		// GValue * gst_object_get_value (GstObject *object,  const gchar *property_name,  GstClockTime timestamp);
		auto p = gst_object_get_value(gstObject, Str.toStringz(propertyName), timestamp);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Gets a number of values for the given controlled property starting at the
	 * requested time. The array values need to hold enough space for n_values of
	 * the same type as the objects property's type.
	 * This function is useful if one wants to e.g. draw a graph of the control
	 * curve or apply a control curve sample by sample.
	 * The values are unboxed and ready to be used. The similar function
	 * gst_object_get_g_value_array() returns the array as GValues and is
	 * better suites for bindings.
	 * Params:
	 * propertyName = the name of the property to get
	 * timestamp = the time that should be processed
	 * interval = the time spacing between subsequent values
	 * values = array to put control-values in
	 * Returns: TRUE if the given array could be filled, FALSE otherwise
	 */
	public int getValueArray(string propertyName, GstClockTime timestamp, GstClockTime interval, void[] values)
	{
		// gboolean gst_object_get_value_array (GstObject *object,  const gchar *property_name,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  gpointer values);
		return gst_object_get_value_array(gstObject, Str.toStringz(propertyName), timestamp, interval, cast(int) values.length, values.ptr);
	}
	
	/**
	 * Gets a number of GValues for the given controlled property starting at the
	 * requested time. The array values need to hold enough space for n_values of
	 * GValue.
	 * This function is useful if one wants to e.g. draw a graph of the control
	 * curve or apply a control curve sample by sample.
	 * Params:
	 * propertyName = the name of the property to get
	 * timestamp = the time that should be processed
	 * interval = the time spacing between subsequent values
	 * nValues = the number of values
	 * values = array to put control-values in
	 * Returns: TRUE if the given array could be filled, FALSE otherwise
	 */
	public int getGValueArray(string propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, Value values)
	{
		// gboolean gst_object_get_g_value_array (GstObject *object,  const gchar *property_name,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  GValue *values);
		return gst_object_get_g_value_array(gstObject, Str.toStringz(propertyName), timestamp, interval, nValues, (values is null) ? null : values.getValueStruct());
	}
	
	/**
	 * Obtain the control-rate for this object. Audio processing GstElement
	 * objects will use this rate to sub-divide their processing loop and call
	 * gst_object_sync_values() inbetween. The length of the processing segment
	 * should be up to control-rate nanoseconds.
	 * If the object is not under property control, this will return
	 * GST_CLOCK_TIME_NONE. This allows the element to avoid the sub-dividing.
	 * The control-rate is not expected to change if the element is in
	 * GST_STATE_PAUSED or GST_STATE_PLAYING.
	 * Returns: the control rate in nanoseconds
	 */
	public GstClockTime getControlRate()
	{
		// GstClockTime gst_object_get_control_rate (GstObject *object);
		return gst_object_get_control_rate(gstObject);
	}
	
	/**
	 * Change the control-rate for this object. Audio processing GstElement
	 * objects will use this rate to sub-divide their processing loop and call
	 * gst_object_sync_values() inbetween. The length of the processing segment
	 * should be up to control-rate nanoseconds.
	 * The control-rate should not change if the element is in GST_STATE_PAUSED or
	 * GST_STATE_PLAYING.
	 * Params:
	 * controlRate = the new control-rate in nanoseconds.
	 */
	public void setControlRate(GstClockTime controlRate)
	{
		// void gst_object_set_control_rate (GstObject *object,  GstClockTime control_rate);
		gst_object_set_control_rate(gstObject, controlRate);
	}
}
