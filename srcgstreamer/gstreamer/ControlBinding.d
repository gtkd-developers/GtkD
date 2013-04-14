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
 * inFile  = GstControlBinding.html
 * outPack = gstreamer
 * outFile = ControlBinding
 * strct   = GstControlBinding
 * realStrct=
 * ctorStrct=
 * clss    = ControlBinding
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_control_binding_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.Value
 * 	- gstreamer.ObjectGst
 * structWrap:
 * 	- GValue* -> Value
 * 	- GstObject* -> ObjectGst
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ControlBinding;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.Value;
private import gstreamer.ObjectGst;



private import gstreamer.ObjectGst;

/**
 * A value mapping object that attaches control sources to gobject properties.
 */
public class ControlBinding : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstControlBinding* gstControlBinding;
	
	
	public GstControlBinding* getControlBindingStruct()
	{
		return gstControlBinding;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstControlBinding;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstControlBinding* gstControlBinding)
	{
		super(cast(GstObject*)gstControlBinding);
		this.gstControlBinding = gstControlBinding;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstControlBinding = cast(GstControlBinding*)obj;
	}
	
	/**
	 */
	
	/**
	 * Sets the property of the object, according to the GstControlSources that
	 * handle them and for the given timestamp.
	 * If this function fails, it is most likely the application developers fault.
	 * Most probably the control sources are not setup correctly.
	 * Params:
	 * object = the object that has controlled properties
	 * timestamp = the time that should be processed
	 * lastSync = the last time this was called
	 * Returns: TRUE if the controller value could be applied to the object property, FALSE otherwise
	 */
	public int syncValues(ObjectGst object, GstClockTime timestamp, GstClockTime lastSync)
	{
		// gboolean gst_control_binding_sync_values (GstControlBinding *binding,  GstObject *object,  GstClockTime timestamp,  GstClockTime last_sync);
		return gst_control_binding_sync_values(gstControlBinding, (object is null) ? null : object.getObjectGstStruct(), timestamp, lastSync);
	}
	
	/**
	 * Gets the value for the given controlled property at the requested time.
	 * Params:
	 * timestamp = the time the control-change should be read from
	 * Returns: the GValue of the property at the given time, or NULL if the property isn't controlled.
	 */
	public Value getValue(GstClockTime timestamp)
	{
		// GValue * gst_control_binding_get_value (GstControlBinding *binding,  GstClockTime timestamp);
		auto p = gst_control_binding_get_value(gstControlBinding, timestamp);
		
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
	 * gst_control_binding_get_g_value_array() returns the array as GValues and is
	 * better suites for bindings.
	 * Params:
	 * timestamp = the time that should be processed
	 * interval = the time spacing between subsequent values
	 * values = array to put control-values in
	 * Returns: TRUE if the given array could be filled, FALSE otherwise
	 */
	public int getValueArray(GstClockTime timestamp, GstClockTime interval, void[] values)
	{
		// gboolean gst_control_binding_get_value_array (GstControlBinding *binding,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  gpointer values);
		return gst_control_binding_get_value_array(gstControlBinding, timestamp, interval, cast(int) values.length, values.ptr);
	}
	
	/**
	 * Gets a number of GValues for the given controlled property starting at the
	 * requested time. The array values need to hold enough space for n_values of
	 * GValue.
	 * This function is useful if one wants to e.g. draw a graph of the control
	 * curve or apply a control curve sample by sample.
	 * Params:
	 * timestamp = the time that should be processed
	 * interval = the time spacing between subsequent values
	 * values = array to put control-values in
	 * Returns: TRUE if the given array could be filled, FALSE otherwise
	 */
	public int getGValueArray(GstClockTime timestamp, GstClockTime interval, GValue[] values)
	{
		// gboolean gst_control_binding_get_g_value_array  (GstControlBinding *binding,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  GValue *values);
		return gst_control_binding_get_g_value_array(gstControlBinding, timestamp, interval, cast(int) values.length, values.ptr);
	}
	
	/**
	 * This function is used to disable a control binding for some time, i.e.
	 * gst_object_sync_values() will do nothing.
	 * Params:
	 * disabled = boolean that specifies whether to disable the controller
	 * or not.
	 */
	public void setDisabled(int disabled)
	{
		// void gst_control_binding_set_disabled (GstControlBinding *binding,  gboolean disabled);
		gst_control_binding_set_disabled(gstControlBinding, disabled);
	}
	
	/**
	 * Check if the control binding is disabled.
	 * Returns: TRUE if the binding is inactive
	 */
	public int isDisabled()
	{
		// gboolean gst_control_binding_is_disabled (GstControlBinding *binding);
		return gst_control_binding_is_disabled(gstControlBinding);
	}
}
