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
 * inFile  = gstreamer-GstTagList.html
 * outPack = gstreamer
 * outFile = TagList
 * strct   = GstTagList
 * realStrct=
 * ctorStrct=
 * clss    = TagList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_tag_list_
 * 	- gst_tag_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Date
 * 	- gobject.Value
 * structWrap:
 * 	- GDate* -> Date
 * 	- GValue* -> Value
 * 	- GstTagList* -> TagList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TagList;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.Date;
private import gobject.Value;




/**
 * Description
 * List of tags and values used to describe media metadata.
 * Last reviewed on 2005-11-23 (0.9.5)
 */
public class TagList
{
	
	/** the main Gtk struct */
	protected GstTagList* gstTagList;
	
	
	public GstTagList* getTagListStruct()
	{
		return gstTagList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTagList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTagList* gstTagList)
	{
		this.gstTagList = gstTagList;
	}
	
	/**
	 */
	
	/**
	 * Registers a new tag type for the use with GStreamer's type system. If a type
	 * with that name is already registered, that one is used.
	 * The old registration may have used a different type however. So don't rely
	 * on your supplied values.
	 * Important: if you do not supply a merge function the implication will be
	 * that there can only be one single value for this tag in a tag list and
	 * any additional values will silenty be discarded when being added (unless
	 * GST_TAG_MERGE_REPLACE, GST_TAG_MERGE_REPLACE_ALL, or
	 * GST_TAG_MERGE_PREPEND is used as merge mode, in which case the new
	 * value will replace the old one in the list).
	 * The merge function will be called from gst_tag_list_copy_value() when
	 * it is required that one or more values for a tag be condensed into
	 * one single value. This may happen from gst_tag_list_get_string(),
	 * gst_tag_list_get_int(), gst_tag_list_get_double() etc. What will happen
	 * exactly in that case depends on how the tag was registered and if a
	 * merge function was supplied and if so which one.
	 * Two default merge functions are provided: gst_tag_merge_use_first() and
	 * gst_tag_merge_strings_with_commas().
	 * Params:
	 * name = the name or identifier string
	 * flag = a flag describing the type of tag info
	 * type = the type this data is in
	 * nick = human-readable name
	 * blurb = a human-readable description about this tag
	 * func = function for merging multiple values of this tag, or NULL
	 */
	public static void register(string name, GstTagFlag flag, GType type, string nick, string blurb, GstTagMergeFunc func)
	{
		// void gst_tag_register (const gchar *name,  GstTagFlag flag,  GType type,  const gchar *nick,  const gchar *blurb,  GstTagMergeFunc func);
		gst_tag_register(Str.toStringz(name), flag, type, Str.toStringz(nick), Str.toStringz(blurb), func);
	}
	
	/**
	 * This is a convenience function for the func argument of gst_tag_register().
	 * It creates a copy of the first value from the list.
	 * Params:
	 * dest = uninitialized GValue to store result in
	 * src = GValue to copy from
	 */
	public static void mergeUseFirst(Value dest, Value src)
	{
		// void gst_tag_merge_use_first (GValue *dest,  const GValue *src);
		gst_tag_merge_use_first((dest is null) ? null : dest.getValueStruct(), (src is null) ? null : src.getValueStruct());
	}
	
	/**
	 * This is a convenience function for the func argument of gst_tag_register().
	 * It concatenates all given strings using a comma. The tag must be registered
	 * as a G_TYPE_STRING or this function will fail.
	 * Params:
	 * dest = uninitialized GValue to store result in
	 * src = GValue to copy from
	 */
	public static void mergeStringsWithComma(Value dest, Value src)
	{
		// void gst_tag_merge_strings_with_comma (GValue *dest,  const GValue *src);
		gst_tag_merge_strings_with_comma((dest is null) ? null : dest.getValueStruct(), (src is null) ? null : src.getValueStruct());
	}
	
	/**
	 * Checks if the given type is already registered.
	 * Params:
	 * tag = name of the tag
	 * Returns: TRUE if the type is already registered
	 */
	public static int exists(string tag)
	{
		// gboolean gst_tag_exists (const gchar *tag);
		return gst_tag_exists(Str.toStringz(tag));
	}
	
	/**
	 * Gets the GType used for this tag.
	 * Params:
	 * tag = the tag
	 * Returns: the GType of this tag
	 */
	public static GType getType(string tag)
	{
		// GType gst_tag_get_type (const gchar *tag);
		return gst_tag_get_type(Str.toStringz(tag));
	}
	
	/**
	 * Returns the human-readable name of this tag, You must not change or free
	 * this string.
	 * Params:
	 * tag = the tag
	 * Returns: the human-readable name of this tag
	 */
	public static string getNick(string tag)
	{
		// const gchar* gst_tag_get_nick (const gchar *tag);
		return Str.toString(gst_tag_get_nick(Str.toStringz(tag)));
	}
	
	/**
	 * Returns the human-readable description of this tag, You must not change or
	 * free this string.
	 * Params:
	 * tag = the tag
	 * Returns: the human-readable description of this tag
	 */
	public static string getDescription(string tag)
	{
		// const gchar* gst_tag_get_description (const gchar *tag);
		return Str.toString(gst_tag_get_description(Str.toStringz(tag)));
	}
	
	/**
	 * Gets the flag of tag.
	 * Params:
	 * tag = the tag
	 * Returns: the flag of this tag.
	 */
	public static GstTagFlag getFlag(string tag)
	{
		// GstTagFlag gst_tag_get_flag (const gchar *tag);
		return gst_tag_get_flag(Str.toStringz(tag));
	}
	
	/**
	 * Checks if the given tag is fixed. A fixed tag can only contain one value.
	 * Unfixed tags can contain lists of values.
	 * Params:
	 * tag = tag to check
	 * Returns: TRUE, if the given tag is fixed.
	 */
	public static int isFixed(string tag)
	{
		// gboolean gst_tag_is_fixed (const gchar *tag);
		return gst_tag_is_fixed(Str.toStringz(tag));
	}
	
	/**
	 * Creates a new empty GstTagList.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstTagList* gst_tag_list_new (void);
		auto p = gst_tag_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_tag_list_new()");
		}
		this(cast(GstTagList*) p);
	}
	
	/**
	 * Checks if the given pointer is a taglist.
	 * Params:
	 * p = Object that might be a taglist
	 * Returns: TRUE, if the given pointer is a taglist
	 */
	public static int gstIsTagList(void* p)
	{
		// gboolean gst_is_tag_list (gconstpointer p);
		return gst_is_tag_list(p);
	}
	
	/**
	 * Checks if the given taglist is empty.
	 * Returns: TRUE if the taglist is empty, otherwise FALSE. Since 0.10.11
	 */
	public int isEmpty()
	{
		// gboolean gst_tag_list_is_empty (const GstTagList *list);
		return gst_tag_list_is_empty(gstTagList);
	}
	
	/**
	 * Copies a given GstTagList.
	 * Returns: copy of the given list
	 */
	public TagList copy()
	{
		// GstTagList* gst_tag_list_copy (const GstTagList *list);
		auto p = gst_tag_list_copy(gstTagList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TagList)(cast(GstTagList*) p);
	}
	
	/**
	 * Inserts the tags of the second list into the first list using the given mode.
	 * Params:
	 * from = list to merge from
	 * mode = the mode to use
	 */
	public void insert(TagList from, GstTagMergeMode mode)
	{
		// void gst_tag_list_insert (GstTagList *into,  const GstTagList *from,  GstTagMergeMode mode);
		gst_tag_list_insert(gstTagList, (from is null) ? null : from.getTagListStruct(), mode);
	}
	
	/**
	 * Merges the two given lists into a new list. If one of the lists is NULL, a
	 * copy of the other is returned. If both lists are NULL, NULL is returned.
	 * Params:
	 * list2 = second list to merge
	 * mode = the mode to use
	 * Returns: the new list
	 */
	public TagList merge(TagList list2, GstTagMergeMode mode)
	{
		// GstTagList* gst_tag_list_merge (const GstTagList *list1,  const GstTagList *list2,  GstTagMergeMode mode);
		auto p = gst_tag_list_merge(gstTagList, (list2 is null) ? null : list2.getTagListStruct(), mode);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TagList)(cast(GstTagList*) p);
	}
	
	/**
	 * Frees the given list and all associated values.
	 */
	public void free()
	{
		// void gst_tag_list_free (GstTagList *list);
		gst_tag_list_free(gstTagList);
	}
	
	/**
	 * Checks how many value are stored in this tag list for the given tag.
	 * Params:
	 * tag = the tag to query
	 * Returns: The number of tags stored
	 */
	public uint getTagSize(string tag)
	{
		// guint gst_tag_list_get_tag_size (const GstTagList *list,  const gchar *tag);
		return gst_tag_list_get_tag_size(gstTagList, Str.toStringz(tag));
	}
	
	/**
	 * Sets the values for the given tags using the specified mode.
	 * Params:
	 * list = list to set tags in
	 * mode = the mode to use
	 * tag = tag
	 * varArgs = tag / value pairs to set
	 */
	public void addValist(GstTagMergeMode mode, string tag, void* varArgs)
	{
		// void gst_tag_list_add_valist (GstTagList *list,  GstTagMergeMode mode,  const gchar *tag,  va_list var_args);
		gst_tag_list_add_valist(gstTagList, mode, Str.toStringz(tag), varArgs);
	}
	
	/**
	 * Sets the GValues for the given tags using the specified mode.
	 * Params:
	 * list = list to set tags in
	 * mode = the mode to use
	 * tag = tag
	 * varArgs = tag / GValue pairs to set
	 */
	public void addValistValues(GstTagMergeMode mode, string tag, void* varArgs)
	{
		// void gst_tag_list_add_valist_values (GstTagList *list,  GstTagMergeMode mode,  const gchar *tag,  va_list var_args);
		gst_tag_list_add_valist_values(gstTagList, mode, Str.toStringz(tag), varArgs);
	}
	
	/**
	 * Removes the given tag from the taglist.
	 * Params:
	 * tag = tag to remove
	 */
	public void removeTag(string tag)
	{
		// void gst_tag_list_remove_tag (GstTagList *list,  const gchar *tag);
		gst_tag_list_remove_tag(gstTagList, Str.toStringz(tag));
	}
	
	/**
	 * Calls the given function for each tag inside the tag list. Note that if there
	 * is no tag, the function won't be called at all.
	 * Params:
	 * func = function to be called for each tag
	 * userData = user specified data
	 */
	public void foreac(GstTagForeachFunc func, void* userData)
	{
		// void gst_tag_list_foreach (const GstTagList *list,  GstTagForeachFunc func,  gpointer user_data);
		gst_tag_list_foreach(gstTagList, func, userData);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * Returns: The GValue for the specified entry or NULL if the tag wasn't available or the tag doesn't have as many entries
	 */
	public Value getValueIndex(string tag, uint index)
	{
		// const GValue* gst_tag_list_get_value_index (const GstTagList *list,  const gchar *tag,  guint index);
		auto p = gst_tag_list_get_value_index(gstTagList, Str.toStringz(tag), index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Copies the contents for the given tag into the value,
	 * merging multiple values into one if multiple values are associated
	 * with the tag.
	 * You must g_value_unset() the value after use.
	 * Params:
	 * dest = uninitialized GValue to copy into
	 * list = list to get the tag from
	 * tag = tag to read out
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public static int copyValue(Value dest, TagList list, string tag)
	{
		// gboolean gst_tag_list_copy_value (GValue *dest,  const GstTagList *list,  const gchar *tag);
		return gst_tag_list_copy_value((dest is null) ? null : dest.getValueStruct(), (list is null) ? null : list.getTagListStruct(), Str.toStringz(tag));
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getChar(string tag, string value)
	{
		// gboolean gst_tag_list_get_char (const GstTagList *list,  const gchar *tag,  gchar *value);
		return gst_tag_list_get_char(gstTagList, Str.toStringz(tag), Str.toStringz(value));
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getCharIndex(string tag, uint index, string value)
	{
		// gboolean gst_tag_list_get_char_index (const GstTagList *list,  const gchar *tag,  guint index,  gchar *value);
		return gst_tag_list_get_char_index(gstTagList, Str.toStringz(tag), index, Str.toStringz(value));
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUchar(string tag, ref char value)
	{
		// gboolean gst_tag_list_get_uchar (const GstTagList *list,  const gchar *tag,  guchar *value);
		return gst_tag_list_get_uchar(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUcharIndex(string tag, uint index, ref char value)
	{
		// gboolean gst_tag_list_get_uchar_index (const GstTagList *list,  const gchar *tag,  guint index,  guchar *value);
		return gst_tag_list_get_uchar_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getBoolean(string tag, ref int value)
	{
		// gboolean gst_tag_list_get_boolean (const GstTagList *list,  const gchar *tag,  gboolean *value);
		return gst_tag_list_get_boolean(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getBooleanIndex(string tag, uint index, ref int value)
	{
		// gboolean gst_tag_list_get_boolean_index (const GstTagList *list,  const gchar *tag,  guint index,  gboolean *value);
		return gst_tag_list_get_boolean_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getInt(string tag, ref int value)
	{
		// gboolean gst_tag_list_get_int (const GstTagList *list,  const gchar *tag,  gint *value);
		return gst_tag_list_get_int(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getIntIndex(string tag, uint index, ref int value)
	{
		// gboolean gst_tag_list_get_int_index (const GstTagList *list,  const gchar *tag,  guint index,  gint *value);
		return gst_tag_list_get_int_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUint(string tag, ref uint value)
	{
		// gboolean gst_tag_list_get_uint (const GstTagList *list,  const gchar *tag,  guint *value);
		return gst_tag_list_get_uint(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUintIndex(string tag, uint index, ref uint value)
	{
		// gboolean gst_tag_list_get_uint_index (const GstTagList *list,  const gchar *tag,  guint index,  guint *value);
		return gst_tag_list_get_uint_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getLong(string tag, ref glong value)
	{
		// gboolean gst_tag_list_get_long (const GstTagList *list,  const gchar *tag,  glong *value);
		return gst_tag_list_get_long(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getLongIndex(string tag, uint index, ref glong value)
	{
		// gboolean gst_tag_list_get_long_index (const GstTagList *list,  const gchar *tag,  guint index,  glong *value);
		return gst_tag_list_get_long_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUlong(string tag, ref gulong value)
	{
		// gboolean gst_tag_list_get_ulong (const GstTagList *list,  const gchar *tag,  gulong *value);
		return gst_tag_list_get_ulong(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUlongIndex(string tag, uint index, ref gulong value)
	{
		// gboolean gst_tag_list_get_ulong_index (const GstTagList *list,  const gchar *tag,  guint index,  gulong *value);
		return gst_tag_list_get_ulong_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getInt64(string tag, ref long value)
	{
		// gboolean gst_tag_list_get_int64 (const GstTagList *list,  const gchar *tag,  gint64 *value);
		return gst_tag_list_get_int64(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getInt64_Index(string tag, uint index, ref long value)
	{
		// gboolean gst_tag_list_get_int64_index (const GstTagList *list,  const gchar *tag,  guint index,  gint64 *value);
		return gst_tag_list_get_int64_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUint64(string tag, ref ulong value)
	{
		// gboolean gst_tag_list_get_uint64 (const GstTagList *list,  const gchar *tag,  guint64 *value);
		return gst_tag_list_get_uint64(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getUint64_Index(string tag, uint index, ref ulong value)
	{
		// gboolean gst_tag_list_get_uint64_index (const GstTagList *list,  const gchar *tag,  guint index,  guint64 *value);
		return gst_tag_list_get_uint64_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getFloat(string tag, ref float value)
	{
		// gboolean gst_tag_list_get_float (const GstTagList *list,  const gchar *tag,  gfloat *value);
		return gst_tag_list_get_float(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getFloatIndex(string tag, uint index, ref float value)
	{
		// gboolean gst_tag_list_get_float_index (const GstTagList *list,  const gchar *tag,  guint index,  gfloat *value);
		return gst_tag_list_get_float_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getDouble(string tag, ref double value)
	{
		// gboolean gst_tag_list_get_double (const GstTagList *list,  const gchar *tag,  gdouble *value);
		return gst_tag_list_get_double(gstTagList, Str.toStringz(tag), &value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getDoubleIndex(string tag, uint index, ref double value)
	{
		// gboolean gst_tag_list_get_double_index (const GstTagList *list,  const gchar *tag,  guint index,  gdouble *value);
		return gst_tag_list_get_double_index(gstTagList, Str.toStringz(tag), index, &value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, possibly merging
	 * multiple values into one if multiple values are associated with the tag.
	 * Use gst_tag_list_get_string_index (list, tag, 0, value) if you want
	 * to retrieve the first string associated with this tag unmodified.
	 * The resulting string in value should be freed by the caller using g_free
	 * when no longer needed
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getString(string tag, ref string value)
	{
		// gboolean gst_tag_list_get_string (const GstTagList *list,  const gchar *tag,  gchar **value);
		char* outvalue = Str.toStringz(value);
		
		auto p = gst_tag_list_get_string(gstTagList, Str.toStringz(tag), &outvalue);
		
		value = Str.toString(outvalue);
		return p;
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * The resulting string in value should be freed by the caller using g_free
	 * when no longer needed
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getStringIndex(string tag, uint index, ref string value)
	{
		// gboolean gst_tag_list_get_string_index (const GstTagList *list,  const gchar *tag,  guint index,  gchar **value);
		char* outvalue = Str.toStringz(value);
		
		auto p = gst_tag_list_get_string_index(gstTagList, Str.toStringz(tag), index, &outvalue);
		
		value = Str.toString(outvalue);
		return p;
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getPointer(string tag, void** value)
	{
		// gboolean gst_tag_list_get_pointer (const GstTagList *list,  const gchar *tag,  gpointer *value);
		return gst_tag_list_get_pointer(gstTagList, Str.toStringz(tag), value);
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list.
	 */
	public int getPointerIndex(string tag, uint index, void** value)
	{
		// gboolean gst_tag_list_get_pointer_index (const GstTagList *list,  const gchar *tag,  guint index,  gpointer *value);
		return gst_tag_list_get_pointer_index(gstTagList, Str.toStringz(tag), index, value);
	}
	
	/**
	 * Copies the contents for the given tag into the value, merging multiple values
	 * into one if multiple values are associated with the tag.
	 * Params:
	 * tag = tag to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list or if it was NULL.
	 */
	public int getDate(string tag, ref Date value)
	{
		// gboolean gst_tag_list_get_date (const GstTagList *list,  const gchar *tag,  GDate **value);
		GDate* outvalue = (value is null) ? null : value.getDateStruct();
		
		auto p = gst_tag_list_get_date(gstTagList, Str.toStringz(tag), &outvalue);
		
		value = ObjectG.getDObject!(Date)(outvalue);
		return p;
	}
	
	/**
	 * Gets the value that is at the given index for the given tag in the given
	 * list.
	 * Params:
	 * tag = tag to read out
	 * index = number of entry to read out
	 * value = location for the result
	 * Returns: TRUE, if a value was copied, FALSE if the tag didn't exist in the given list or if it was NULL.
	 */
	public int getDateIndex(string tag, uint index, ref Date value)
	{
		// gboolean gst_tag_list_get_date_index (const GstTagList *list,  const gchar *tag,  guint index,  GDate **value);
		GDate* outvalue = (value is null) ? null : value.getDateStruct();
		
		auto p = gst_tag_list_get_date_index(gstTagList, Str.toStringz(tag), index, &outvalue);
		
		value = ObjectG.getDObject!(Date)(outvalue);
		return p;
	}
}
