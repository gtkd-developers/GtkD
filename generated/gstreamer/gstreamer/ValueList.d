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


module gstreamer.ValueList;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/** */
public class ValueList
{
	/** the main Gtk struct */
	protected GstValueList* gstValueList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstValueList* getValueListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstValueList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstValueList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstValueList* gstValueList, bool ownedRef = false)
	{
		this.gstValueList = gstValueList;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_value_list_get_type();
	}

	/**
	 * Appends @append_value to the GstValueList in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_LIST
	 *     appendValue = the value to append
	 *
	 * Since: 1.2
	 */
	public static void appendAndTakeValue(Value value, Value appendValue)
	{
		gst_value_list_append_and_take_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}

	/**
	 * Appends @append_value to the GstValueList in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_LIST
	 *     appendValue = the value to append
	 */
	public static void appendValue(Value value, Value appendValue)
	{
		gst_value_list_append_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}

	/**
	 * Concatenates copies of @value1 and @value2 into a list.  Values that are not
	 * of type #GST_TYPE_LIST are treated as if they were lists of length 1.
	 * @dest will be initialized to the type #GST_TYPE_LIST.
	 *
	 * Params:
	 *     dest = an uninitialized #GValue to take the result
	 *     value1 = a #GValue
	 *     value2 = a #GValue
	 */
	public static void concat(out Value dest, Value value1, Value value2)
	{
		GValue* outdest = sliceNew!GValue();

		gst_value_list_concat(outdest, (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());

		dest = ObjectG.getDObject!(Value)(outdest, true);
	}

	/**
	 * Gets the number of values contained in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_LIST
	 *
	 * Returns: the number of values
	 */
	public static uint getSize(Value value)
	{
		return gst_value_list_get_size((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the value that is a member of the list contained in @value and
	 * has the index @index.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_LIST
	 *     index = index of value to get from the list
	 *
	 * Returns: the value at the given index
	 */
	public static Value getValue(Value value, uint index)
	{
		auto p = gst_value_list_get_value((value is null) ? null : value.getValueStruct(), index);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Merges copies of @value1 and @value2.  Values that are not
	 * of type #GST_TYPE_LIST are treated as if they were lists of length 1.
	 *
	 * The result will be put into @dest and will either be a list that will not
	 * contain any duplicates, or a non-list type (if @value1 and @value2
	 * were equal).
	 *
	 * Params:
	 *     dest = an uninitialized #GValue to take the result
	 *     value1 = a #GValue
	 *     value2 = a #GValue
	 */
	public static void merge(out Value dest, Value value1, Value value2)
	{
		GValue* outdest = sliceNew!GValue();

		gst_value_list_merge(outdest, (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());

		dest = ObjectG.getDObject!(Value)(outdest, true);
	}

	/**
	 * Prepends @prepend_value to the GstValueList in @value.
	 *
	 * Params:
	 *     value = a #GValue of type #GST_TYPE_LIST
	 *     prependValue = the value to prepend
	 */
	public static void prependValue(Value value, Value prependValue)
	{
		gst_value_list_prepend_value((value is null) ? null : value.getValueStruct(), (prependValue is null) ? null : prependValue.getValueStruct());
	}
}
