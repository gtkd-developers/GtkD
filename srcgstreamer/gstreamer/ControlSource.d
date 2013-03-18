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
 * inFile  = GstControlSource.html
 * outPack = gstreamer
 * outFile = ControlSource
 * strct   = GstControlSource
 * realStrct=
 * ctorStrct=
 * clss    = ControlSource
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_control_source_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.ControlSource;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gstreamer.ObjectGst;

/**
 * The GstControlSource is a base class for control value sources that could
 * be used by GstController to get timestamp-value pairs.
 *
 * A GstControlSource is used by first getting an instance, binding it to a
 * GParamSpec (for example by using gst_controller_set_control_source()) and
 * then by having it used by the GstController or calling
 * gst_control_source_get_value() or gst_control_source_get_value_array().
 *
 * For implementing a new GstControlSource one has to implement a
 * GstControlSourceBind method, which will depending on the GParamSpec set up
 * the control source for use and sets the GstControlSourceGetValue and
 * GstControlSourceGetValueArray functions. These are then used by
 * gst_control_source_get_value() or gst_control_source_get_value_array()
 * to get values for specific timestamps.
 */
public class ControlSource : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstControlSource* gstControlSource;
	
	
	public GstControlSource* getControlSourceStruct()
	{
		return gstControlSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstControlSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstControlSource* gstControlSource)
	{
		super(cast(GstObject*)gstControlSource);
		this.gstControlSource = gstControlSource;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstControlSource = cast(GstControlSource*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the value for this GstControlSource at a given timestamp.
	 * Params:
	 * timestamp = the time for which the value should be returned
	 * value = the value
	 * Returns: FALSE if the value couldn't be returned, TRUE otherwise.
	 */
	public int getValue(GstClockTime timestamp, out double value)
	{
		// gboolean gst_control_source_get_value (GstControlSource *self,  GstClockTime timestamp,  gdouble *value);
		return gst_control_source_get_value(gstControlSource, timestamp, &value);
	}
	
	/**
	 * Gets an array of values for for this GstControlSource. Values that are
	 * undefined contain NANs.
	 * Params:
	 * timestamp = the first timestamp
	 * interval = the time steps
	 * values = array to put control-values in
	 * Returns: TRUE if the given array could be filled, FALSE otherwise
	 */
	public int getValueArray(GstClockTime timestamp, GstClockTime interval, double[] values)
	{
		// gboolean gst_control_source_get_value_array (GstControlSource *self,  GstClockTime timestamp,  GstClockTime interval,  guint n_values,  gdouble *values);
		return gst_control_source_get_value_array(gstControlSource, timestamp, interval, cast(int) values.length, values.ptr);
	}
}
