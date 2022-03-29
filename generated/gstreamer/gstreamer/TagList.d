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


module gstreamer.TagList;

private import glib.ConstructionException;
private import glib.Date;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.DateTime;
private import gstreamer.Sample;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * List of tags and values used to describe media metadata.
 * 
 * Strings in structures must be ASCII or UTF-8 encoded. Other encodings are
 * not allowed. Strings must not be empty or %NULL.
 */
public class TagList
{
	/** the main Gtk struct */
	protected GstTagList* gstTagList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstTagList* getTagListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTagList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTagList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTagList* gstTagList, bool ownedRef = false)
	{
		this.gstTagList = gstTagList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_tag_list_unref(gstTagList);
	}


	/**
	 * Gets the #GType used for this tag.
	 *
	 * Params:
	 *     tag = the tag
	 *
	 * Returns: the #GType of this tag
	 */
	public static GType getType(string tag)
	{
		return gst_tag_get_type(Str.toStringz(tag));
	}

	/**
	 * Creates a new empty GstTagList.
	 *
	 * Free-function: gst_tag_list_unref
	 *
	 * Returns: An empty tag list
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_tag_list_new_empty();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_empty");
		}

		this(cast(GstTagList*) __p);
	}

	/**
	 * Deserializes a tag list.
	 *
	 * Params:
	 *     str = a string created with gst_tag_list_to_string()
	 *
	 * Returns: a new #GstTagList, or %NULL in case of an
	 *     error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string str)
	{
		auto __p = gst_tag_list_new_from_string(Str.toStringz(str));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}

		this(cast(GstTagList*) __p);
	}

	/**
	 * Just like gst_tag_list_new(), only that it takes a va_list argument.
	 * Useful mostly for language bindings.
	 *
	 * Free-function: gst_tag_list_unref
	 *
	 * Params:
	 *     varArgs = tag / value pairs to set
	 *
	 * Returns: a new #GstTagList. Free with gst_tag_list_unref()
	 *     when no longer needed.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(void* varArgs)
	{
		auto __p = gst_tag_list_new_valist(varArgs);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}

		this(cast(GstTagList*) __p);
	}

	/**
	 * Sets the values for the given tags using the specified mode.
	 *
	 * Params:
	 *     mode = the mode to use
	 *     tag = tag
	 *     varArgs = tag / value pairs to set
	 */
	public void addValist(GstTagMergeMode mode, string tag, void* varArgs)
	{
		gst_tag_list_add_valist(gstTagList, mode, Str.toStringz(tag), varArgs);
	}

	/**
	 * Sets the GValues for the given tags using the specified mode.
	 *
	 * Params:
	 *     mode = the mode to use
	 *     tag = tag
	 *     varArgs = tag / GValue pairs to set
	 */
	public void addValistValues(GstTagMergeMode mode, string tag, void* varArgs)
	{
		gst_tag_list_add_valist_values(gstTagList, mode, Str.toStringz(tag), varArgs);
	}

	/**
	 * Sets the GValue for a given tag using the specified mode.
	 *
	 * Params:
	 *     mode = the mode to use
	 *     tag = tag
	 *     value = GValue for this tag
	 */
	public void addValue(GstTagMergeMode mode, string tag, Value value)
	{
		gst_tag_list_add_value(gstTagList, mode, Str.toStringz(tag), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Creates a new #GstTagList as a copy of the old @taglist. The new taglist
	 * will have a refcount of 1, owned by the caller, and will be writable as
	 * a result.
	 *
	 * Note that this function is the semantic equivalent of a gst_tag_list_ref()
	 * followed by a gst_tag_list_make_writable(). If you only want to hold on to a
	 * reference to the data, you should use gst_tag_list_ref().
	 *
	 * When you are finished with the taglist, call gst_tag_list_unref() on it.
	 *
	 * Returns: the new #GstTagList
	 */
	public TagList copy()
	{
		auto __p = gst_tag_list_copy(gstTagList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p, true);
	}

	alias foreac = foreach_;
	/**
	 * Calls the given function for each tag inside the tag list. Note that if there
	 * is no tag, the function won't be called at all.
	 *
	 * Params:
	 *     func = function to be called for each tag
	 *     userData = user specified data
	 */
	public void foreach_(GstTagForeachFunc func, void* userData)
	{
		gst_tag_list_foreach(gstTagList, func, userData);
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getBoolean(string tag, out bool value)
	{
		int outvalue;

		auto __p = gst_tag_list_get_boolean(gstTagList, Str.toStringz(tag), &outvalue) != 0;

		value = (outvalue == 1);

		return __p;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getBooleanIndex(string tag, uint index, out bool value)
	{
		int outvalue;

		auto __p = gst_tag_list_get_boolean_index(gstTagList, Str.toStringz(tag), index, &outvalue) != 0;

		value = (outvalue == 1);

		return __p;
	}

	/**
	 * Copies the first date for the given tag in the taglist into the variable
	 * pointed to by @value. Free the date with g_date_free() when it is no longer
	 * needed.
	 *
	 * Free-function: g_date_free
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = address of a GDate pointer
	 *         variable to store the result into
	 *
	 * Returns: %TRUE, if a date was copied, %FALSE if the tag didn't exist in the
	 *     given list or if it was %NULL.
	 */
	public bool getDate(string tag, out Date value)
	{
		GDate* outvalue = null;

		auto __p = gst_tag_list_get_date(gstTagList, Str.toStringz(tag), &outvalue) != 0;

		value = new Date(outvalue);

		return __p;
	}

	/**
	 * Gets the date that is at the given index for the given tag in the given
	 * list and copies it into the variable pointed to by @value. Free the date
	 * with g_date_free() when it is no longer needed.
	 *
	 * Free-function: g_date_free
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list or if it was %NULL.
	 */
	public bool getDateIndex(string tag, uint index, out Date value)
	{
		GDate* outvalue = null;

		auto __p = gst_tag_list_get_date_index(gstTagList, Str.toStringz(tag), index, &outvalue) != 0;

		value = new Date(outvalue);

		return __p;
	}

	/**
	 * Copies the first datetime for the given tag in the taglist into the variable
	 * pointed to by @value. Unref the date with gst_date_time_unref() when
	 * it is no longer needed.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = address of a #GstDateTime
	 *         pointer variable to store the result into
	 *
	 * Returns: %TRUE, if a datetime was copied, %FALSE if the tag didn't exist in
	 *     the given list or if it was %NULL.
	 */
	public bool getDateTime(string tag, out DateTime value)
	{
		GstDateTime* outvalue = null;

		auto __p = gst_tag_list_get_date_time(gstTagList, Str.toStringz(tag), &outvalue) != 0;

		value = ObjectG.getDObject!(DateTime)(outvalue);

		return __p;
	}

	/**
	 * Gets the datetime that is at the given index for the given tag in the given
	 * list and copies it into the variable pointed to by @value. Unref the datetime
	 * with gst_date_time_unref() when it is no longer needed.
	 *
	 * Free-function: gst_date_time_unref
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list or if it was %NULL.
	 */
	public bool getDateTimeIndex(string tag, uint index, out DateTime value)
	{
		GstDateTime* outvalue = null;

		auto __p = gst_tag_list_get_date_time_index(gstTagList, Str.toStringz(tag), index, &outvalue) != 0;

		value = ObjectG.getDObject!(DateTime)(outvalue);

		return __p;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getDouble(string tag, out double value)
	{
		return gst_tag_list_get_double(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getDoubleIndex(string tag, uint index, out double value)
	{
		return gst_tag_list_get_double_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getFloat(string tag, out float value)
	{
		return gst_tag_list_get_float(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getFloatIndex(string tag, uint index, out float value)
	{
		return gst_tag_list_get_float_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getInt(string tag, out int value)
	{
		return gst_tag_list_get_int(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getInt64(string tag, out long value)
	{
		return gst_tag_list_get_int64(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getInt64Index(string tag, uint index, out long value)
	{
		return gst_tag_list_get_int64_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getIntIndex(string tag, uint index, out int value)
	{
		return gst_tag_list_get_int_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getPointer(string tag, out void* value)
	{
		return gst_tag_list_get_pointer(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getPointerIndex(string tag, uint index, out void* value)
	{
		return gst_tag_list_get_pointer_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Copies the first sample for the given tag in the taglist into the variable
	 * pointed to by @sample. Free the sample with gst_sample_unref() when it is
	 * no longer needed. You can retrieve the buffer from the sample using
	 * gst_sample_get_buffer() and the associated caps (if any) with
	 * gst_sample_get_caps().
	 *
	 * Free-function: gst_sample_unref
	 *
	 * Params:
	 *     tag = tag to read out
	 *     sample = address of a GstSample
	 *         pointer variable to store the result into
	 *
	 * Returns: %TRUE, if a sample was returned, %FALSE if the tag didn't exist in
	 *     the given list or if it was %NULL.
	 */
	public bool getSample(string tag, out Sample sample)
	{
		GstSample* outsample = null;

		auto __p = gst_tag_list_get_sample(gstTagList, Str.toStringz(tag), &outsample) != 0;

		sample = ObjectG.getDObject!(Sample)(outsample);

		return __p;
	}

	/**
	 * Gets the sample that is at the given index for the given tag in the given
	 * list and copies it into the variable pointed to by @sample. Free the sample
	 * with gst_sample_unref() when it is no longer needed. You can retrieve the
	 * buffer from the sample using gst_sample_get_buffer() and the associated
	 * caps (if any) with gst_sample_get_caps().
	 *
	 * Free-function: gst_sample_unref
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     sample = address of a GstSample
	 *         pointer variable to store the result into
	 *
	 * Returns: %TRUE, if a sample was copied, %FALSE if the tag didn't exist in the
	 *     given list or if it was %NULL.
	 */
	public bool getSampleIndex(string tag, uint index, out Sample sample)
	{
		GstSample* outsample = null;

		auto __p = gst_tag_list_get_sample_index(gstTagList, Str.toStringz(tag), index, &outsample) != 0;

		sample = ObjectG.getDObject!(Sample)(outsample);

		return __p;
	}

	/**
	 * Gets the scope of @list.
	 *
	 * Returns: The scope of @list
	 */
	public GstTagScope getScope()
	{
		return gst_tag_list_get_scope(gstTagList);
	}

	/**
	 * Copies the contents for the given tag into the value, possibly merging
	 * multiple values into one if multiple values are associated with the tag.
	 *
	 * Use gst_tag_list_get_string_index (list, tag, 0, value) if you want
	 * to retrieve the first string associated with this tag unmodified.
	 *
	 * The resulting string in @value will be in UTF-8 encoding and should be
	 * freed by the caller using g_free when no longer needed. The
	 * returned string is also guaranteed to be non-%NULL and non-empty.
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getString(string tag, out string value)
	{
		char* outvalue = null;

		auto __p = gst_tag_list_get_string(gstTagList, Str.toStringz(tag), &outvalue) != 0;

		value = Str.toString(outvalue);

		return __p;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * The resulting string in @value will be in UTF-8 encoding and should be
	 * freed by the caller using g_free when no longer needed. The
	 * returned string is also guaranteed to be non-%NULL and non-empty.
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getStringIndex(string tag, uint index, out string value)
	{
		char* outvalue = null;

		auto __p = gst_tag_list_get_string_index(gstTagList, Str.toStringz(tag), index, &outvalue) != 0;

		value = Str.toString(outvalue);

		return __p;
	}

	/**
	 * Checks how many value are stored in this tag list for the given tag.
	 *
	 * Params:
	 *     tag = the tag to query
	 *
	 * Returns: The number of tags stored
	 */
	public uint getTagSize(string tag)
	{
		return gst_tag_list_get_tag_size(gstTagList, Str.toStringz(tag));
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getUint(string tag, out uint value)
	{
		return gst_tag_list_get_uint(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getUint64(string tag, out ulong value)
	{
		return gst_tag_list_get_uint64(gstTagList, Str.toStringz(tag), &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getUint64Index(string tag, uint index, out ulong value)
	{
		return gst_tag_list_get_uint64_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool getUintIndex(string tag, uint index, out uint value)
	{
		return gst_tag_list_get_uint_index(gstTagList, Str.toStringz(tag), index, &value) != 0;
	}

	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *
	 * Returns: The GValue for the specified
	 *     entry or %NULL if the tag wasn't available or the tag
	 *     doesn't have as many entries
	 */
	public Value getValueIndex(string tag, uint index)
	{
		auto __p = gst_tag_list_get_value_index(gstTagList, Str.toStringz(tag), index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Inserts the tags of the @from list into the first list using the given mode.
	 *
	 * Params:
	 *     from = list to merge from
	 *     mode = the mode to use
	 */
	public void insert(TagList from, GstTagMergeMode mode)
	{
		gst_tag_list_insert(gstTagList, (from is null) ? null : from.getTagListStruct(), mode);
	}

	/**
	 * Checks if the given taglist is empty.
	 *
	 * Returns: %TRUE if the taglist is empty, otherwise %FALSE.
	 */
	public bool isEmpty()
	{
		return gst_tag_list_is_empty(gstTagList) != 0;
	}

	/**
	 * Checks if the two given taglists are equal.
	 *
	 * Params:
	 *     list2 = a #GstTagList.
	 *
	 * Returns: %TRUE if the taglists are equal, otherwise %FALSE
	 */
	public bool isEqual(TagList list2)
	{
		return gst_tag_list_is_equal(gstTagList, (list2 is null) ? null : list2.getTagListStruct()) != 0;
	}

	/**
	 * Merges the two given lists into a new list. If one of the lists is %NULL, a
	 * copy of the other is returned. If both lists are %NULL, %NULL is returned.
	 *
	 * Free-function: gst_tag_list_unref
	 *
	 * Params:
	 *     list2 = second list to merge
	 *     mode = the mode to use
	 *
	 * Returns: the new list
	 */
	public TagList merge(TagList list2, GstTagMergeMode mode)
	{
		auto __p = gst_tag_list_merge(gstTagList, (list2 is null) ? null : list2.getTagListStruct(), mode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p, true);
	}

	/**
	 * Get the number of tags in @list.
	 *
	 * Returns: The number of tags in @list.
	 */
	public int nTags()
	{
		return gst_tag_list_n_tags(gstTagList);
	}

	/**
	 * Get the name of the tag in @list at @index.
	 *
	 * Params:
	 *     index = the index
	 *
	 * Returns: The name of the tag at @index.
	 */
	public string nthTagName(uint index)
	{
		return Str.toString(gst_tag_list_nth_tag_name(gstTagList, index));
	}

	/**
	 * Peeks at the value that is at the given index for the given tag in the given
	 * list.
	 *
	 * The resulting string in @value will be in UTF-8 encoding and doesn't need
	 * to be freed by the caller. The returned string is also guaranteed to
	 * be non-%NULL and non-empty.
	 *
	 * Params:
	 *     tag = tag to read out
	 *     index = number of entry to read out
	 *     value = location for the result
	 *
	 * Returns: %TRUE, if a value was set, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public bool peekStringIndex(string tag, uint index, out string value)
	{
		char* outvalue = null;

		auto __p = gst_tag_list_peek_string_index(gstTagList, Str.toStringz(tag), index, &outvalue) != 0;

		value = Str.toString(outvalue);

		return __p;
	}

	alias doref = ref_;
	/**
	 * Add a reference to a #GstTagList mini object.
	 *
	 * From this point on, until the caller calls gst_tag_list_unref() or
	 * gst_tag_list_make_writable(), it is guaranteed that the taglist object will
	 * not change. To use a #GstTagList object, you must always have a refcount on
	 * it -- either the one made implicitly by e.g. gst_tag_list_new(), or via
	 * taking one explicitly with this function.
	 *
	 * Returns: the same #GstTagList mini object.
	 */
	public TagList ref_()
	{
		auto __p = gst_tag_list_ref(gstTagList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TagList)(cast(GstTagList*) __p, true);
	}

	/**
	 * Removes the given tag from the taglist.
	 *
	 * Params:
	 *     tag = tag to remove
	 */
	public void removeTag(string tag)
	{
		gst_tag_list_remove_tag(gstTagList, Str.toStringz(tag));
	}

	/**
	 * Sets the scope of @list to @scope. By default the scope
	 * of a taglist is stream scope.
	 *
	 * Params:
	 *     scope_ = new scope for @list
	 */
	public void setScope(GstTagScope scope_)
	{
		gst_tag_list_set_scope(gstTagList, scope_);
	}

	/**
	 * Serializes a tag list to a string.
	 *
	 * Returns: a newly-allocated string, or %NULL in case of
	 *     an error. The string must be freed with g_free() when no longer
	 *     needed.
	 */
	public override string toString()
	{
		auto retStr = gst_tag_list_to_string(gstTagList);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Unref a #GstTagList, and and free all its memory when the refcount reaches 0.
	 */
	public void unref()
	{
		gst_tag_list_unref(gstTagList);
	}

	/**
	 * Copies the contents for the given tag into the value,
	 * merging multiple values into one if multiple values are associated
	 * with the tag.
	 * You must g_value_unset() the value after use.
	 *
	 * Params:
	 *     dest = uninitialized #GValue to copy into
	 *     list = list to get the tag from
	 *     tag = tag to read out
	 *
	 * Returns: %TRUE, if a value was copied, %FALSE if the tag didn't exist in the
	 *     given list.
	 */
	public static bool copyValue(out Value dest, TagList list, string tag)
	{
		GValue* outdest = sliceNew!GValue();

		auto __p = gst_tag_list_copy_value(outdest, (list is null) ? null : list.getTagListStruct(), Str.toStringz(tag)) != 0;

		dest = ObjectG.getDObject!(Value)(outdest, true);

		return __p;
	}

	/**
	 * Modifies a pointer to a #GstTagList to point to a different #GstTagList. The
	 * modification is done atomically (so this is useful for ensuring thread
	 * safety in some cases), and the reference counts are updated appropriately
	 * (the old tag list is unreffed, the new is reffed).
	 *
	 * Either @new_taglist or the #GstTagList pointed to by @old_taglist may be
	 * %NULL.
	 *
	 * Params:
	 *     oldTaglist = pointer to a pointer to a
	 *         #GstTagList to be replaced.
	 *     newTaglist = pointer to a #GstTagList that
	 *         will replace the tag list pointed to by @old_taglist.
	 *
	 * Returns: %TRUE if @new_taglist was different from @old_taglist
	 *
	 * Since: 1.16
	 */
	public static bool replace(ref TagList oldTaglist, TagList newTaglist)
	{
		GstTagList* outoldTaglist = oldTaglist.getTagListStruct();

		auto __p = gst_tag_list_replace(&outoldTaglist, (newTaglist is null) ? null : newTaglist.getTagListStruct()) != 0;

		oldTaglist = ObjectG.getDObject!(TagList)(outoldTaglist);

		return __p;
	}

	/**
	 * Modifies a pointer to a #GstTagList to point to a different #GstTagList.
	 * This function is similar to gst_tag_list_replace() except that it takes
	 * ownership of @new_taglist.
	 *
	 * Params:
	 *     oldTaglist = pointer to a pointer to a #GstTagList
	 *         to be replaced.
	 *     newTaglist = pointer to a #GstTagList that
	 *         will replace the taglist pointed to by @old_taglist.
	 *
	 * Returns: %TRUE if @new_taglist was different from @old_taglist
	 *
	 * Since: 1.16
	 */
	public static bool take(ref TagList oldTaglist, TagList newTaglist)
	{
		GstTagList* outoldTaglist = oldTaglist.getTagListStruct();

		auto __p = gst_tag_list_take(&outoldTaglist, (newTaglist is null) ? null : newTaglist.getTagListStruct(true)) != 0;

		oldTaglist = ObjectG.getDObject!(TagList)(outoldTaglist);

		return __p;
	}

	/**
	 * Checks if the given type is already registered.
	 *
	 * Params:
	 *     tag = name of the tag
	 *
	 * Returns: %TRUE if the type is already registered
	 */
	public static bool exists(string tag)
	{
		return gst_tag_exists(Str.toStringz(tag)) != 0;
	}

	/**
	 * Returns the human-readable description of this tag, You must not change or
	 * free this string.
	 *
	 * Params:
	 *     tag = the tag
	 *
	 * Returns: the human-readable description of this tag
	 */
	public static string getDescription(string tag)
	{
		return Str.toString(gst_tag_get_description(Str.toStringz(tag)));
	}

	/**
	 * Gets the flag of @tag.
	 *
	 * Params:
	 *     tag = the tag
	 *
	 * Returns: the flag of this tag.
	 */
	public static GstTagFlag getFlag(string tag)
	{
		return gst_tag_get_flag(Str.toStringz(tag));
	}

	/**
	 * Returns the human-readable name of this tag, You must not change or free
	 * this string.
	 *
	 * Params:
	 *     tag = the tag
	 *
	 * Returns: the human-readable name of this tag
	 */
	public static string getNick(string tag)
	{
		return Str.toString(gst_tag_get_nick(Str.toStringz(tag)));
	}

	/**
	 * Checks if the given tag is fixed. A fixed tag can only contain one value.
	 * Unfixed tags can contain lists of values.
	 *
	 * Params:
	 *     tag = tag to check
	 *
	 * Returns: %TRUE, if the given tag is fixed.
	 */
	public static bool isFixed(string tag)
	{
		return gst_tag_is_fixed(Str.toStringz(tag)) != 0;
	}

	/**
	 * This is a convenience function for the func argument of gst_tag_register().
	 * It concatenates all given strings using a comma. The tag must be registered
	 * as a G_TYPE_STRING or this function will fail.
	 *
	 * Params:
	 *     dest = uninitialized GValue to store result in
	 *     src = GValue to copy from
	 */
	public static void mergeStringsWithComma(out Value dest, Value src)
	{
		GValue* outdest = sliceNew!GValue();

		gst_tag_merge_strings_with_comma(outdest, (src is null) ? null : src.getValueStruct());

		dest = ObjectG.getDObject!(Value)(outdest, true);
	}

	/**
	 * This is a convenience function for the func argument of gst_tag_register().
	 * It creates a copy of the first value from the list.
	 *
	 * Params:
	 *     dest = uninitialized GValue to store result in
	 *     src = GValue to copy from
	 */
	public static void mergeUseFirst(out Value dest, Value src)
	{
		GValue* outdest = sliceNew!GValue();

		gst_tag_merge_use_first(outdest, (src is null) ? null : src.getValueStruct());

		dest = ObjectG.getDObject!(Value)(outdest, true);
	}

	/**
	 * Registers a new tag type for the use with GStreamer's type system. If a type
	 * with that name is already registered, that one is used.
	 * The old registration may have used a different type however. So don't rely
	 * on your supplied values.
	 *
	 * Important: if you do not supply a merge function the implication will be
	 * that there can only be one single value for this tag in a tag list and
	 * any additional values will silently be discarded when being added (unless
	 * #GST_TAG_MERGE_REPLACE, #GST_TAG_MERGE_REPLACE_ALL, or
	 * #GST_TAG_MERGE_PREPEND is used as merge mode, in which case the new
	 * value will replace the old one in the list).
	 *
	 * The merge function will be called from gst_tag_list_copy_value() when
	 * it is required that one or more values for a tag be condensed into
	 * one single value. This may happen from gst_tag_list_get_string(),
	 * gst_tag_list_get_int(), gst_tag_list_get_double() etc. What will happen
	 * exactly in that case depends on how the tag was registered and if a
	 * merge function was supplied and if so which one.
	 *
	 * Two default merge functions are provided: gst_tag_merge_use_first() and
	 * gst_tag_merge_strings_with_comma().
	 *
	 * Params:
	 *     name = the name or identifier string
	 *     flag = a flag describing the type of tag info
	 *     type = the type this data is in
	 *     nick = human-readable name
	 *     blurb = a human-readable description about this tag
	 *     func = function for merging multiple values of this tag, or %NULL
	 */
	public static void register(string name, GstTagFlag flag, GType type, string nick, string blurb, GstTagMergeFunc func)
	{
		gst_tag_register(Str.toStringz(name), flag, type, Str.toStringz(nick), Str.toStringz(blurb), func);
	}

	/**
	 * Registers a new tag type for the use with GStreamer's type system.
	 *
	 * Same as gst_tag_register(), but @name, @nick, and @blurb must be
	 * static strings or inlined strings, as they will not be copied. (GStreamer
	 * plugins will be made resident once loaded, so this function can be used
	 * even from dynamically loaded plugins.)
	 *
	 * Params:
	 *     name = the name or identifier string (string constant)
	 *     flag = a flag describing the type of tag info
	 *     type = the type this data is in
	 *     nick = human-readable name or short description (string constant)
	 *     blurb = a human-readable description for this tag (string constant)
	 *     func = function for merging multiple values of this tag, or %NULL
	 */
	public static void registerStatic(string name, GstTagFlag flag, GType type, string nick, string blurb, GstTagMergeFunc func)
	{
		gst_tag_register_static(Str.toStringz(name), flag, type, Str.toStringz(nick), Str.toStringz(blurb), func);
	}
}
