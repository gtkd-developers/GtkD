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


module gstreamer.ObjectGst;

private import glib.ErrorG;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.Value;
private import gstreamer.ControlBinding;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import std.algorithm;


/**
 * #GstObject provides a root for the object hierarchy tree filed in by the
 * GStreamer library.  It is currently a thin wrapper on top of
 * #GInitiallyUnowned. It is an abstract class that is not very usable on its own.
 * 
 * #GstObject gives us basic refcounting, parenting functionality and locking.
 * Most of the functions are just extended for special GStreamer needs and can be
 * found under the same name in the base class of #GstObject which is #GObject
 * (e.g. g_object_ref() becomes gst_object_ref()).
 * 
 * Since #GstObject derives from #GInitiallyUnowned, it also inherits the
 * floating reference. Be aware that functions such as gst_bin_add() and
 * gst_element_add_pad() take ownership of the floating reference.
 * 
 * In contrast to #GObject instances, #GstObject adds a name property. The functions
 * gst_object_set_name() and gst_object_get_name() are used to set/get the name
 * of the object.
 * 
 * ## controlled properties
 * 
 * Controlled properties offers a lightweight way to adjust gobject properties
 * over stream-time. It works by using time-stamped value pairs that are queued
 * for element-properties. At run-time the elements continuously pull value
 * changes for the current stream-time.
 * 
 * What needs to be changed in a #GstElement?
 * Very little - it is just two steps to make a plugin controllable!
 * 
 * * mark gobject-properties paramspecs that make sense to be controlled,
 * by GST_PARAM_CONTROLLABLE.
 * 
 * * when processing data (get, chain, loop function) at the beginning call
 * gst_object_sync_values(element,timestamp).
 * This will make the controller update all GObject properties that are
 * under its control with the current values based on the timestamp.
 * 
 * What needs to be done in applications? Again it's not a lot to change.
 * 
 * * create a #GstControlSource.
 * csource = gst_interpolation_control_source_new ();
 * g_object_set (csource, "mode", GST_INTERPOLATION_MODE_LINEAR, NULL);
 * 
 * * Attach the #GstControlSource on the controller to a property.
 * gst_object_add_control_binding (object, gst_direct_control_binding_new (object, "prop1", csource));
 * 
 * * Set the control values
 * gst_timed_value_control_source_set ((GstTimedValueControlSource *)csource,0 * GST_SECOND, value1);
 * gst_timed_value_control_source_set ((GstTimedValueControlSource *)csource,1 * GST_SECOND, value2);
 * 
 * * start your pipeline
 */
public class ObjectGst : ObjectG
{
	/** the main Gtk struct */
	protected GstObject* gstObject;

	/** Get the main Gtk struct */
	public GstObject* getObjectGstStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstObject* gstObject, bool ownedRef = false)
	{
		this.gstObject = gstObject;
		super(cast(GObject*)gstObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_object_get_type();
	}

	/**
	 * Checks to see if there is any object named @name in @list. This function
	 * does not do any locking of any kind. You might want to protect the
	 * provided list with the lock of the owner of the list. This function
	 * will lock each #GstObject in the list to compare the name, so be
	 * careful when passing a list with a locked object.
	 *
	 * Params:
	 *     list = a list of #GstObject to
	 *         check through
	 *     name = the name to search for
	 *
	 * Returns: %TRUE if a #GstObject named @name does not appear in @list,
	 *     %FALSE if it does.
	 *
	 *     MT safe. Grabs and releases the LOCK of each object in the list.
	 */
	public static bool checkUniqueness(ListG list, string name)
	{
		return gst_object_check_uniqueness((list is null) ? null : list.getListGStruct(), Str.toStringz(name)) != 0;
	}

	/**
	 * A default deep_notify signal callback for an object. The user data
	 * should contain a pointer to an array of strings that should be excluded
	 * from the notify. The default handler will print the new value of the property
	 * using g_print.
	 *
	 * MT safe. This function grabs and releases @object's LOCK for getting its
	 * path string.
	 *
	 * Params:
	 *     object = the #GObject that signalled the notify.
	 *     orig = a #GstObject that initiated the notify.
	 *     pspec = a #GParamSpec of the property.
	 *     excludedProps = a set of user-specified properties to exclude or %NULL to show
	 *         all changes.
	 */
	public static void defaultDeepNotify(ObjectG object, ObjectGst orig, ParamSpec pspec, string[] excludedProps)
	{
		gst_object_default_deep_notify((object is null) ? null : object.getObjectGStruct(), (orig is null) ? null : orig.getObjectGstStruct(), (pspec is null) ? null : pspec.getParamSpecStruct(), Str.toStringzArray(excludedProps));
	}

	/**
	 * Increase the reference count of @object, and possibly remove the floating
	 * reference, if @object has a floating reference.
	 *
	 * In other words, if the object is floating, then this call "assumes ownership"
	 * of the floating reference, converting it to a normal reference by clearing
	 * the floating flag while leaving the reference count unchanged. If the object
	 * is not floating, then this call adds a new normal reference increasing the
	 * reference count by one.
	 *
	 * For more background on "floating references" please see the #GObject
	 * documentation.
	 *
	 * Params:
	 *     object = a #GstObject to sink
	 */
	public static void* refSink(void* object)
	{
		return gst_object_ref_sink(object);
	}

	/**
	 * Atomically modifies a pointer to point to a new object.
	 * The reference count of @oldobj is decreased and the reference count of
	 * @newobj is increased.
	 *
	 * Either @newobj and the value pointed to by @oldobj may be %NULL.
	 *
	 * Params:
	 *     oldobj = pointer to a place of
	 *         a #GstObject to replace
	 *     newobj = a new #GstObject
	 *
	 * Returns: %TRUE if @newobj was different from @oldobj
	 */
	public static bool replace(ref ObjectGst oldobj, ObjectGst newobj)
	{
		GstObject* outoldobj = oldobj.getObjectGstStruct();

		auto p = gst_object_replace(&outoldobj, (newobj is null) ? null : newobj.getObjectGstStruct()) != 0;

		oldobj = ObjectG.getDObject!(ObjectGst)(outoldobj);

		return p;
	}

	/**
	 * Attach the #GstControlBinding to the object. If there already was a
	 * #GstControlBinding for this property it will be replaced.
	 *
	 * The object's reference count will be incremented, and any floating
	 * reference will be removed (see gst_object_ref_sink())
	 *
	 * Params:
	 *     binding = the #GstControlBinding that should be used
	 *
	 * Returns: %FALSE if the given @binding has not been setup for this object or
	 *     has been setup for a non suitable property, %TRUE otherwise.
	 */
	public bool addControlBinding(ControlBinding binding)
	{
		return gst_object_add_control_binding(gstObject, (binding is null) ? null : binding.getControlBindingStruct()) != 0;
	}

	/**
	 * A default error function that uses g_printerr() to display the error message
	 * and the optional debug sting..
	 *
	 * The default handler will simply print the error string using g_print.
	 *
	 * Params:
	 *     error = the GError.
	 *     debug_ = an additional debug information string, or %NULL
	 */
	public void defaultError(ErrorG error, string debug_)
	{
		gst_object_default_error(gstObject, (error is null) ? null : error.getErrorGStruct(), Str.toStringz(debug_));
	}

	/**
	 * Gets the corresponding #GstControlBinding for the property. This should be
	 * unreferenced again after use.
	 *
	 * Params:
	 *     propertyName = name of the property
	 *
	 * Returns: the #GstControlBinding for
	 *     @property_name or %NULL if the property is not controlled.
	 */
	public ControlBinding getControlBinding(string propertyName)
	{
		auto p = gst_object_get_control_binding(gstObject, Str.toStringz(propertyName));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ControlBinding)(cast(GstControlBinding*) p, true);
	}

	/**
	 * Obtain the control-rate for this @object. Audio processing #GstElement
	 * objects will use this rate to sub-divide their processing loop and call
	 * gst_object_sync_values() inbetween. The length of the processing segment
	 * should be up to @control-rate nanoseconds.
	 *
	 * If the @object is not under property control, this will return
	 * %GST_CLOCK_TIME_NONE. This allows the element to avoid the sub-dividing.
	 *
	 * The control-rate is not expected to change if the element is in
	 * %GST_STATE_PAUSED or %GST_STATE_PLAYING.
	 *
	 * Returns: the control rate in nanoseconds
	 */
	public GstClockTime getControlRate()
	{
		return gst_object_get_control_rate(gstObject);
	}

	/**
	 * Gets a number of #GValues for the given controlled property starting at the
	 * requested time. The array @values need to hold enough space for @n_values of
	 * #GValue.
	 *
	 * This function is useful if one wants to e.g. draw a graph of the control
	 * curve or apply a control curve sample by sample.
	 *
	 * Params:
	 *     propertyName = the name of the property to get
	 *     timestamp = the time that should be processed
	 *     interval = the time spacing between subsequent values
	 *     values = array to put control-values in
	 *
	 * Returns: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	public bool getGValueArray(string propertyName, GstClockTime timestamp, GstClockTime interval, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for ( int i = 0; i < values.length; i++ )
		{
			valuesArray[i] = *(values[i].getValueStruct());
		}

		return gst_object_get_g_value_array(gstObject, Str.toStringz(propertyName), timestamp, interval, cast(uint)values.length, valuesArray.ptr) != 0;
	}

	/**
	 * Returns a copy of the name of @object.
	 * Caller should g_free() the return value after usage.
	 * For a nameless object, this returns %NULL, which you can safely g_free()
	 * as well.
	 *
	 * Free-function: g_free
	 *
	 * Returns: the name of @object. g_free()
	 *     after usage.
	 *
	 *     MT safe. This function grabs and releases @object's LOCK.
	 */
	public string getName()
	{
		auto retStr = gst_object_get_name(gstObject);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the parent of @object. This function increases the refcount
	 * of the parent object so you should gst_object_unref() it after usage.
	 *
	 * Returns: parent of @object, this can be
	 *     %NULL if @object has no parent. unref after usage.
	 *
	 *     MT safe. Grabs and releases @object's LOCK.
	 */
	public ObjectGst getParent()
	{
		auto p = gst_object_get_parent(gstObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectGst)(cast(GstObject*) p, true);
	}

	/**
	 * Generates a string describing the path of @object in
	 * the object hierarchy. Only useful (or used) for debugging.
	 *
	 * Free-function: g_free
	 *
	 * Returns: a string describing the path of @object. You must
	 *     g_free() the string after usage.
	 *
	 *     MT safe. Grabs and releases the #GstObject's LOCK for all objects
	 *     in the hierarchy.
	 */
	public string getPathString()
	{
		auto retStr = gst_object_get_path_string(gstObject);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the value for the given controlled property at the requested time.
	 *
	 * Params:
	 *     propertyName = the name of the property to get
	 *     timestamp = the time the control-change should be read from
	 *
	 * Returns: the GValue of the property at the given time,
	 *     or %NULL if the property isn't controlled.
	 */
	public Value getValue(string propertyName, GstClockTime timestamp)
	{
		auto p = gst_object_get_value(gstObject, Str.toStringz(propertyName), timestamp);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p, true);
	}

	/**
	 * Gets a number of values for the given controlled property starting at the
	 * requested time. The array @values need to hold enough space for @n_values of
	 * the same type as the objects property's type.
	 *
	 * This function is useful if one wants to e.g. draw a graph of the control
	 * curve or apply a control curve sample by sample.
	 *
	 * The values are unboxed and ready to be used. The similar function
	 * gst_object_get_g_value_array() returns the array as #GValues and is
	 * better suites for bindings.
	 *
	 * Params:
	 *     propertyName = the name of the property to get
	 *     timestamp = the time that should be processed
	 *     interval = the time spacing between subsequent values
	 *     nValues = the number of values
	 *     values = array to put control-values in
	 *
	 * Returns: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	public bool getValueArray(string propertyName, GstClockTime timestamp, GstClockTime interval, uint nValues, void* values)
	{
		return gst_object_get_value_array(gstObject, Str.toStringz(propertyName), timestamp, interval, nValues, values) != 0;
	}

	/**
	 * Check if the @object has active controlled properties.
	 *
	 * Returns: %TRUE if the object has active controlled properties
	 */
	public bool hasActiveControlBindings()
	{
		return gst_object_has_active_control_bindings(gstObject) != 0;
	}

	/**
	 * Check if @object has an ancestor @ancestor somewhere up in
	 * the hierarchy. One can e.g. check if a #GstElement is inside a #GstPipeline.
	 *
	 * Deprecated: Use gst_object_has_as_ancestor() instead.
	 *
	 * MT safe. Grabs and releases @object's locks.
	 *
	 * Params:
	 *     ancestor = a #GstObject to check as ancestor
	 *
	 * Returns: %TRUE if @ancestor is an ancestor of @object.
	 */
	public bool hasAncestor(ObjectGst ancestor)
	{
		return gst_object_has_ancestor(gstObject, (ancestor is null) ? null : ancestor.getObjectGstStruct()) != 0;
	}

	/**
	 * Check if @object has an ancestor @ancestor somewhere up in
	 * the hierarchy. One can e.g. check if a #GstElement is inside a #GstPipeline.
	 *
	 * Params:
	 *     ancestor = a #GstObject to check as ancestor
	 *
	 * Returns: %TRUE if @ancestor is an ancestor of @object.
	 *
	 *     MT safe. Grabs and releases @object's locks.
	 */
	public bool hasAsAncestor(ObjectGst ancestor)
	{
		return gst_object_has_as_ancestor(gstObject, (ancestor is null) ? null : ancestor.getObjectGstStruct()) != 0;
	}

	/**
	 * Check if @parent is the parent of @object.
	 * E.g. a #GstElement can check if it owns a given #GstPad.
	 *
	 * Params:
	 *     parent = a #GstObject to check as parent
	 *
	 * Returns: %FALSE if either @object or @parent is %NULL. %TRUE if @parent is
	 *     the parent of @object. Otherwise %FALSE.
	 *
	 *     MT safe. Grabs and releases @object's locks.
	 *
	 * Since: 1.6
	 */
	public bool hasAsParent(ObjectGst parent)
	{
		return gst_object_has_as_parent(gstObject, (parent is null) ? null : parent.getObjectGstStruct()) != 0;
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on @object. This function
	 * does not take the lock on @object because it relies on
	 * atomic refcounting.
	 *
	 * This object returns the input parameter to ease writing
	 * constructs like :
	 * result = gst_object_ref (object->parent);
	 *
	 * Returns: A pointer to @object
	 */
	public override ObjectGst ref_()
	{
		auto p = gst_object_ref(gstObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectGst)(cast(GstObject*) p, true);
	}

	/**
	 * Removes the corresponding #GstControlBinding. If it was the
	 * last ref of the binding, it will be disposed.
	 *
	 * Params:
	 *     binding = the binding
	 *
	 * Returns: %TRUE if the binding could be removed.
	 */
	public bool removeControlBinding(ControlBinding binding)
	{
		return gst_object_remove_control_binding(gstObject, (binding is null) ? null : binding.getControlBindingStruct()) != 0;
	}

	/**
	 * This function is used to disable the control bindings on a property for
	 * some time, i.e. gst_object_sync_values() will do nothing for the
	 * property.
	 *
	 * Params:
	 *     propertyName = property to disable
	 *     disabled = boolean that specifies whether to disable the controller
	 *         or not.
	 */
	public void setControlBindingDisabled(string propertyName, bool disabled)
	{
		gst_object_set_control_binding_disabled(gstObject, Str.toStringz(propertyName), disabled);
	}

	/**
	 * This function is used to disable all controlled properties of the @object for
	 * some time, i.e. gst_object_sync_values() will do nothing.
	 *
	 * Params:
	 *     disabled = boolean that specifies whether to disable the controller
	 *         or not.
	 */
	public void setControlBindingsDisabled(bool disabled)
	{
		gst_object_set_control_bindings_disabled(gstObject, disabled);
	}

	/**
	 * Change the control-rate for this @object. Audio processing #GstElement
	 * objects will use this rate to sub-divide their processing loop and call
	 * gst_object_sync_values() inbetween. The length of the processing segment
	 * should be up to @control-rate nanoseconds.
	 *
	 * The control-rate should not change if the element is in %GST_STATE_PAUSED or
	 * %GST_STATE_PLAYING.
	 *
	 * Params:
	 *     controlRate = the new control-rate in nanoseconds.
	 */
	public void setControlRate(GstClockTime controlRate)
	{
		gst_object_set_control_rate(gstObject, controlRate);
	}

	/**
	 * Sets the name of @object, or gives @object a guaranteed unique
	 * name (if @name is %NULL).
	 * This function makes a copy of the provided name, so the caller
	 * retains ownership of the name it sent.
	 *
	 * Params:
	 *     name = new name of object
	 *
	 * Returns: %TRUE if the name could be set. Since Objects that have
	 *     a parent cannot be renamed, this function returns %FALSE in those
	 *     cases.
	 *
	 *     MT safe.  This function grabs and releases @object's LOCK.
	 */
	public bool setName(string name)
	{
		return gst_object_set_name(gstObject, Str.toStringz(name)) != 0;
	}

	/**
	 * Sets the parent of @object to @parent. The object's reference count will
	 * be incremented, and any floating reference will be removed (see gst_object_ref_sink()).
	 *
	 * Params:
	 *     parent = new parent of object
	 *
	 * Returns: %TRUE if @parent could be set or %FALSE when @object
	 *     already had a parent or @object and @parent are the same.
	 *
	 *     MT safe. Grabs and releases @object's LOCK.
	 */
	public bool setParent(ObjectGst parent)
	{
		return gst_object_set_parent(gstObject, (parent is null) ? null : parent.getObjectGstStruct()) != 0;
	}

	/**
	 * Returns a suggestion for timestamps where buffers should be split
	 * to get best controller results.
	 *
	 * Returns: Returns the suggested timestamp or %GST_CLOCK_TIME_NONE
	 *     if no control-rate was set.
	 */
	public GstClockTime suggestNextSync()
	{
		return gst_object_suggest_next_sync(gstObject);
	}

	/**
	 * Sets the properties of the object, according to the #GstControlSources that
	 * (maybe) handle them and for the given timestamp.
	 *
	 * If this function fails, it is most likely the application developers fault.
	 * Most probably the control sources are not setup correctly.
	 *
	 * Params:
	 *     timestamp = the time that should be processed
	 *
	 * Returns: %TRUE if the controller values could be applied to the object
	 *     properties, %FALSE otherwise
	 */
	public bool syncValues(GstClockTime timestamp)
	{
		return gst_object_sync_values(gstObject, timestamp) != 0;
	}

	/**
	 * Clear the parent of @object, removing the associated reference.
	 * This function decreases the refcount of @object.
	 *
	 * MT safe. Grabs and releases @object's lock.
	 */
	public void unparent()
	{
		gst_object_unparent(gstObject);
	}

	/**
	 * Decrements the reference count on @object.  If reference count hits
	 * zero, destroy @object. This function does not take the lock
	 * on @object as it relies on atomic refcounting.
	 *
	 * The unref method should never be called with the LOCK held since
	 * this might deadlock the dispose function.
	 */
	public override void unref()
	{
		gst_object_unref(gstObject);
	}

	/**
	 * The deep notify signal is used to be notified of property changes. It is
	 * typically attached to the toplevel bin to receive notifications from all
	 * the elements contained in that bin.
	 *
	 * Params:
	 *     propObject = the object that originated the signal
	 *     prop = the property that changed
	 */
	gulong addOnDeepNotify(void delegate(ObjectGst, ParamSpec, ObjectGst) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "deep-notify", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
