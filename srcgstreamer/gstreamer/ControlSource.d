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


module gstreamer.ControlSource;

private import gstreamer.ObjectGst;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * The #GstControlSource is a base class for control value sources that could
 * be used to get timestamp-value pairs. A control source essentially is a
 * function over time, returning float values between 0.0 and 1.0.
 * 
 * A #GstControlSource is used by first getting an instance of a specific
 * control-source, creating a binding for the control-source to the target property
 * of the element and then adding the binding to the element. The binding will
 * convert the data types and value range to fit to the bound property.
 * 
 * For implementing a new #GstControlSource one has to implement
 * #GstControlSourceGetValue and #GstControlSourceGetValueArray functions.
 * These are then used by gst_control_source_get_value() and
 * gst_control_source_get_value_array() to get values for specific timestamps.
 */
public class ControlSource : ObjectGst
{
	/** the main Gtk struct */
	protected GstControlSource* gstControlSource;

	/** Get the main Gtk struct */
	public GstControlSource* getControlSourceStruct()
	{
		return gstControlSource;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstControlSource;
	}

	protected override void setStruct(GObject* obj)
	{
		gstControlSource = cast(GstControlSource*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstControlSource* gstControlSource, bool ownedRef = false)
	{
		this.gstControlSource = gstControlSource;
		super(cast(GstObject*)gstControlSource, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_control_source_get_type();
	}

	/**
	 * Gets the value for this #GstControlSource at a given timestamp.
	 *
	 * Params:
	 *     timestamp = the time for which the value should be returned
	 *     value = the value
	 *
	 * Return: %FALSE if the value couldn't be returned, %TRUE otherwise.
	 */
	public bool getValue(GstClockTime timestamp, out double value)
	{
		return gst_control_source_get_value(gstControlSource, timestamp, &value) != 0;
	}

	/**
	 * Gets an array of values for for this #GstControlSource. Values that are
	 * undefined contain NANs.
	 *
	 * Params:
	 *     timestamp = the first timestamp
	 *     interval = the time steps
	 *     nValues = the number of values to fetch
	 *     values = array to put control-values in
	 *
	 * Return: %TRUE if the given array could be filled, %FALSE otherwise
	 */
	public bool getValueArray(GstClockTime timestamp, GstClockTime interval, double[] values)
	{
		return gst_control_source_get_value_array(gstControlSource, timestamp, interval, cast(uint)values.length, values.ptr) != 0;
	}
}
