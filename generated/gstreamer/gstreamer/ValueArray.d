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


module gstreamer.ValueArray;

private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/** */
public class ValueArray
{
	/** the main Gtk struct */
	protected GstValueArray* gstValueArray;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstValueArray* getValueArrayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstValueArray;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstValueArray;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstValueArray* gstValueArray, bool ownedRef = false)
	{
		this.gstValueArray = gstValueArray;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_value_array_get_type();
	}

	/**
	 * Appends @append_value to the GstValueArray in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_ARRAY
	 *     appendValue = the value to append
	 *
	 * Since: 1.2
	 */
	public static void appendAndTakeValue(Value value, Value appendValue)
	{
		gst_value_array_append_and_take_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}

	/**
	 * Appends @append_value to the GstValueArray in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_ARRAY
	 *     appendValue = the value to append
	 */
	public static void appendValue(Value value, Value appendValue)
	{
		gst_value_array_append_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}

	/**
	 * Gets the number of values contained in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_ARRAY
	 *
	 * Returns: the number of values
	 */
	public static uint getSize(Value value)
	{
		return gst_value_array_get_size((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the value that is a member of the array contained in @value and
	 * has the index @index.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_ARRAY
	 *     index = index of value to get from the array
	 *
	 * Returns: the value at the given index
	 */
	public static Value getValue(Value value, uint index)
	{
		auto p = gst_value_array_get_value((value is null) ? null : value.getValueStruct(), index);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Prepends @prepend_value to the GstValueArray in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_ARRAY
	 *     prependValue = the value to prepend
	 */
	public static void prependValue(Value value, Value prependValue)
	{
		gst_value_array_prepend_value((value is null) ? null : value.getValueStruct(), (prependValue is null) ? null : prependValue.getValueStruct());
	}
}
