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
 * inFile  = gstreamer-GstValue.html
 * outPack = gstreamer
 * outFile = Value
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = ValueGst
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_value_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Value
 * 	- gstreamer.Caps
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GValue* -> Value
 * 	- GstCaps* -> Caps
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Value;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Value;
private import gstreamer.Caps;
private import gstreamer.Structure;




/**
 * GValue implementations specific to GStreamer.
 *
 * Note that operations on the same GValue from multiple threads may lead to
 * undefined behaviour.
 *
 * Last reviewed on 2008-03-11 (0.10.18)
 */
public class ValueGst
{
	
	/**
	 */
	
	/**
	 * Sets value to the range specified by start and end.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT_RANGE
	 * start = the start of the range
	 * end = the end of the range
	 */
	public static void setIntRange(Value value, int start, int end)
	{
		// void gst_value_set_int_range (GValue *value,  gint start,  gint end);
		gst_value_set_int_range((value is null) ? null : value.getValueStruct(), start, end);
	}
	
	/**
	 * Gets the minimum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT_RANGE
	 * Returns: the minimum of the range
	 */
	public static int getIntRangeMin(Value value)
	{
		// gint gst_value_get_int_range_min (const GValue *value);
		return gst_value_get_int_range_min((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the maximum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT_RANGE
	 * Returns: the maxumum of the range
	 */
	public static int getIntRangeMax(Value value)
	{
		// gint gst_value_get_int_range_max (const GValue *value);
		return gst_value_get_int_range_max((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets value to the range specified by start, end and step.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT_RANGE
	 * start = the start of the range
	 * end = the end of the range
	 * step = the step of the range
	 */
	public static void setIntRangeStep(Value value, int start, int end, int step)
	{
		// void gst_value_set_int_range_step (GValue *value,  gint start,  gint end,  gint step);
		gst_value_set_int_range_step((value is null) ? null : value.getValueStruct(), start, end, step);
	}
	
	/**
	 * Gets the step of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT_RANGE
	 * Returns: the step of the range
	 */
	public static int getIntRangeStep(Value value)
	{
		// gint gst_value_get_int_range_step (const GValue *value);
		return gst_value_get_int_range_step((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets value to the bitmask specified by bitmask.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION
	 * bitmask = the bitmask
	 */
	public static void setBitmask(Value value, ulong bitmask)
	{
		// void gst_value_set_bitmask (GValue *value,  guint64 bitmask);
		gst_value_set_bitmask((value is null) ? null : value.getValueStruct(), bitmask);
	}
	
	/**
	 * Gets the bitmask specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION
	 * Returns: the bitmask.
	 */
	public static ulong getBitmask(Value value)
	{
		// guint64 gst_value_get_bitmask (const GValue *value);
		return gst_value_get_bitmask((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets value to the range specified by start and end.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT64_RANGE
	 * start = the start of the range
	 * end = the end of the range
	 */
	public static void setInt64_Range(Value value, long start, long end)
	{
		// void gst_value_set_int64_range (GValue *value,  gint64 start,  gint64 end);
		gst_value_set_int64_range((value is null) ? null : value.getValueStruct(), start, end);
	}
	
	/**
	 * Gets the minimum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT64_RANGE
	 * Returns: the minimum of the range
	 */
	public static long getInt64_RangeMin(Value value)
	{
		// gint64 gst_value_get_int64_range_min (const GValue *value);
		return gst_value_get_int64_range_min((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the maximum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT64_RANGE
	 * Returns: the maxumum of the range
	 */
	public static long getInt64_RangeMax(Value value)
	{
		// gint64 gst_value_get_int64_range_max (const GValue *value);
		return gst_value_get_int64_range_max((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets value to the range specified by start, end and step.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT64_RANGE
	 * start = the start of the range
	 * end = the end of the range
	 * step = the step of the range
	 */
	public static void setInt64_RangeStep(Value value, long start, long end, long step)
	{
		// void gst_value_set_int64_range_step (GValue *value,  gint64 start,  gint64 end,  gint64 step);
		gst_value_set_int64_range_step((value is null) ? null : value.getValueStruct(), start, end, step);
	}
	
	/**
	 * Gets the step of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_INT64_RANGE
	 * Returns: the step of the range
	 */
	public static long getInt64_RangeStep(Value value)
	{
		// gint64 gst_value_get_int64_range_step (const GValue *value);
		return gst_value_get_int64_range_step((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets value to the range specified by start and end.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 * start = the start of the range
	 * end = the end of the range
	 */
	public static void setDoubleRange(Value value, double start, double end)
	{
		// void gst_value_set_double_range (GValue *value,  gdouble start,  gdouble end);
		gst_value_set_double_range((value is null) ? null : value.getValueStruct(), start, end);
	}
	
	/**
	 * Gets the minimum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 * Returns: the minimum of the range
	 */
	public static double getDoubleRangeMin(Value value)
	{
		// gdouble gst_value_get_double_range_min (const GValue *value);
		return gst_value_get_double_range_min((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the maximum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 * Returns: the maxumum of the range
	 */
	public static double getDoubleRangeMax(Value value)
	{
		// gdouble gst_value_get_double_range_max (const GValue *value);
		return gst_value_get_double_range_max((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Appends append_value to the GstValueList in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_LIST
	 * appendValue = the value to append
	 */
	public static void listAppendValue(Value value, Value appendValue)
	{
		// void gst_value_list_append_value (GValue *value,  const GValue *append_value);
		gst_value_list_append_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}
	
	/**
	 * Prepends prepend_value to the GstValueList in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_LIST
	 * prependValue = the value to prepend
	 */
	public static void listPrependValue(Value value, Value prependValue)
	{
		// void gst_value_list_prepend_value (GValue *value,  const GValue *prepend_value);
		gst_value_list_prepend_value((value is null) ? null : value.getValueStruct(), (prependValue is null) ? null : prependValue.getValueStruct());
	}
	
	/**
	 * Concatenates copies of value1 and value2 into a list. Values that are not
	 * of type GST_TYPE_LIST are treated as if they were lists of length 1.
	 * dest will be initialized to the type GST_TYPE_LIST.
	 * Params:
	 * dest = an uninitialized GValue to take the result. [out caller-allocates]
	 * value1 = a GValue
	 * value2 = a GValue
	 */
	public static void listConcat(Value dest, Value value1, Value value2)
	{
		// void gst_value_list_concat (GValue *dest,  const GValue *value1,  const GValue *value2);
		gst_value_list_concat((dest is null) ? null : dest.getValueStruct(), (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Merges copies of value1 and value2. Values that are not
	 * of type GST_TYPE_LIST are treated as if they were lists of length 1.
	 * The result will be put into dest and will either be a list that will not
	 * contain any duplicates, or a non-list type (if value1 and value2
	 * were equal).
	 * Params:
	 * dest = an uninitialized GValue to take the result. [out caller-allocates]
	 * value1 = a GValue
	 * value2 = a GValue
	 */
	public static void listMerge(Value dest, Value value1, Value value2)
	{
		// void gst_value_list_merge (GValue *dest,  const GValue *value1,  const GValue *value2);
		gst_value_list_merge((dest is null) ? null : dest.getValueStruct(), (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Gets the number of values contained in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_LIST
	 * Returns: the number of values
	 */
	public static uint listGetSize(Value value)
	{
		// guint gst_value_list_get_size (const GValue *value);
		return gst_value_list_get_size((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the value that is a member of the list contained in value and
	 * has the index index.
	 * Params:
	 * value = a GValue of type GST_TYPE_LIST
	 * index = index of value to get from the list
	 * Returns: the value at the given index. [transfer none]
	 */
	public static Value listGetValue(Value value, uint index)
	{
		// const GValue * gst_value_list_get_value (const GValue *value,  guint index);
		auto p = gst_value_list_get_value((value is null) ? null : value.getValueStruct(), index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Sets value to the fraction specified by numerator over denominator.
	 * The fraction gets reduced to the smallest numerator and denominator,
	 * and if necessary the sign is moved to the numerator.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION
	 * numerator = the numerator of the fraction
	 * denominator = the denominator of the fraction
	 */
	public static void setFraction(Value value, int numerator, int denominator)
	{
		// void gst_value_set_fraction (GValue *value,  gint numerator,  gint denominator);
		gst_value_set_fraction((value is null) ? null : value.getValueStruct(), numerator, denominator);
	}
	
	/**
	 * Gets the numerator of the fraction specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION
	 * Returns: the numerator of the fraction.
	 */
	public static int getFractionNumerator(Value value)
	{
		// gint gst_value_get_fraction_numerator (const GValue *value);
		return gst_value_get_fraction_numerator((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the denominator of the fraction specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION
	 * Returns: the denominator of the fraction.
	 */
	public static int getFractionDenominator(Value value)
	{
		// gint gst_value_get_fraction_denominator (const GValue *value);
		return gst_value_get_fraction_denominator((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Multiplies the two GValue items containing a GST_TYPE_FRACTION and sets
	 * product to the product of the two fractions.
	 * Params:
	 * product = a GValue initialized to GST_TYPE_FRACTION
	 * factor1 = a GValue initialized to GST_TYPE_FRACTION
	 * factor2 = a GValue initialized to GST_TYPE_FRACTION
	 * Returns: FALSE in case of an error (like integer overflow), TRUE otherwise.
	 */
	public static int fractionMultiply(Value product, Value factor1, Value factor2)
	{
		// gboolean gst_value_fraction_multiply (GValue *product,  const GValue *factor1,  const GValue *factor2);
		return gst_value_fraction_multiply((product is null) ? null : product.getValueStruct(), (factor1 is null) ? null : factor1.getValueStruct(), (factor2 is null) ? null : factor2.getValueStruct());
	}
	
	/**
	 * Subtracts the subtrahend from the minuend and sets dest to the result.
	 * Params:
	 * dest = a GValue initialized to GST_TYPE_FRACTION
	 * minuend = a GValue initialized to GST_TYPE_FRACTION
	 * subtrahend = a GValue initialized to GST_TYPE_FRACTION
	 * Returns: FALSE in case of an error (like integer overflow), TRUE otherwise.
	 */
	public static int fractionSubtract(Value dest, Value minuend, Value subtrahend)
	{
		// gboolean gst_value_fraction_subtract (GValue *dest,  const GValue *minuend,  const GValue *subtrahend);
		return gst_value_fraction_subtract((dest is null) ? null : dest.getValueStruct(), (minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct());
	}
	
	/**
	 * Sets value to the range specified by start and end.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 * start = the start of the range (a GST_TYPE_FRACTION GValue)
	 * end = the end of the range (a GST_TYPE_FRACTION GValue)
	 */
	public static void setFractionRange(Value value, Value start, Value end)
	{
		// void gst_value_set_fraction_range (GValue *value,  const GValue *start,  const GValue *end);
		gst_value_set_fraction_range((value is null) ? null : value.getValueStruct(), (start is null) ? null : start.getValueStruct(), (end is null) ? null : end.getValueStruct());
	}
	
	/**
	 * Gets the minimum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 * Returns: the minimum of the range
	 */
	public static Value getFractionRangeMin(Value value)
	{
		// const GValue * gst_value_get_fraction_range_min (const GValue *value);
		auto p = gst_value_get_fraction_range_min((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Gets the maximum of the range specified by value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 * Returns: the maximum of the range
	 */
	public static Value getFractionRangeMax(Value value)
	{
		// const GValue * gst_value_get_fraction_range_max (const GValue *value);
		auto p = gst_value_get_fraction_range_max((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Sets value to the range specified by numerator_start/denominator_start
	 * and numerator_end/denominator_end.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 * numeratorStart = the numerator start of the range
	 * denominatorStart = the denominator start of the range
	 * numeratorEnd = the numerator end of the range
	 * denominatorEnd = the denominator end of the range
	 */
	public static void setFractionRangeFull(Value value, int numeratorStart, int denominatorStart, int numeratorEnd, int denominatorEnd)
	{
		// void gst_value_set_fraction_range_full (GValue *value,  gint numerator_start,  gint denominator_start,  gint numerator_end,  gint denominator_end);
		gst_value_set_fraction_range_full((value is null) ? null : value.getValueStruct(), numeratorStart, denominatorStart, numeratorEnd, denominatorEnd);
	}
	
	/**
	 * Sets the contents of value to caps. A reference to the
	 * provided caps will be taken by the value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_CAPS
	 * caps = the caps to set the value to. [transfer none]
	 */
	public static void setCaps(Value value, Caps caps)
	{
		// void gst_value_set_caps (GValue *value,  const GstCaps *caps);
		gst_value_set_caps((value is null) ? null : value.getValueStruct(), (caps is null) ? null : caps.getCapsStruct());
	}
	
	/**
	 * Gets the contents of value. The reference count of the returned
	 * GstCaps will not be modified, therefore the caller must take one
	 * before getting rid of the value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_CAPS
	 * Returns: the contents of value. [transfer none]
	 */
	public static Caps getCaps(Value value)
	{
		// const GstCaps * gst_value_get_caps (const GValue *value);
		auto p = gst_value_get_caps((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}
	
	/**
	 * Sets the contents of value to structure. The actual
	 * Params:
	 * value = a GValue initialized to GST_TYPE_STRUCTURE
	 * structure = the structure to set the value to
	 */
	public static void setStructure(Value value, Structure structure)
	{
		// void gst_value_set_structure (GValue *value,  const GstStructure *structure);
		gst_value_set_structure((value is null) ? null : value.getValueStruct(), (structure is null) ? null : structure.getStructureStruct());
	}
	
	/**
	 * Gets the contents of value.
	 * Params:
	 * value = a GValue initialized to GST_TYPE_STRUCTURE
	 * Returns: the contents of value. [transfer none]
	 */
	public static Structure getStructure(Value value)
	{
		// const GstStructure * gst_value_get_structure (const GValue *value);
		auto p = gst_value_get_structure((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Tests if the given GValue, if available in a GstStructure (or any other
	 * container) contains a "fixed" (which means: one value) or an "unfixed"
	 * (which means: multiple possible values, such as data lists or data
	 * ranges) value.
	 * Params:
	 * value = the GValue to check
	 * Returns: true if the value is "fixed".
	 */
	public static int isFixed(Value value)
	{
		// gboolean gst_value_is_fixed (const GValue *value);
		return gst_value_is_fixed((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Registers functions to perform calculations on GValue items of a given
	 * type. Each type can only be added once.
	 * Params:
	 * table = structure containing functions to register
	 */
	public static void register(ref GstValueTable table)
	{
		// void gst_value_register (const GstValueTable *table);
		gst_value_register(&table);
	}
	
	/**
	 * Initialises the target value to be of the same type as source and then copies
	 * the contents from source to target.
	 * Params:
	 * dest = the target value. [out caller-allocates]
	 * src = the source value
	 */
	public static void initAndCopy(Value dest, Value src)
	{
		// void gst_value_init_and_copy (GValue *dest,  const GValue *src);
		gst_value_init_and_copy((dest is null) ? null : dest.getValueStruct(), (src is null) ? null : src.getValueStruct());
	}
	
	/**
	 * tries to transform the given value into a string representation that allows
	 * getting back this string later on using gst_value_deserialize().
	 * Free-function: g_free
	 * Params:
	 * value = a GValue to serialize
	 * Returns: the serialization for value or NULL if none exists. [transfer full]
	 */
	public static string serialize(Value value)
	{
		// gchar * gst_value_serialize (const GValue *value);
		return Str.toString(gst_value_serialize((value is null) ? null : value.getValueStruct()));
	}
	
	/**
	 * Tries to deserialize a string into the type specified by the given GValue.
	 * If the operation succeeds, TRUE is returned, FALSE otherwise.
	 * Params:
	 * dest = GValue to fill with contents of
	 * deserialization. [out caller-allocates]
	 * src = string to deserialize
	 * Returns: TRUE on success
	 */
	public static int deserialize(Value dest, string src)
	{
		// gboolean gst_value_deserialize (GValue *dest,  const gchar *src);
		return gst_value_deserialize((dest is null) ? null : dest.getValueStruct(), Str.toStringz(src));
	}
	
	/**
	 * Compares value1 and value2. If value1 and value2 cannot be
	 * compared, the function returns GST_VALUE_UNORDERED. Otherwise,
	 * if value1 is greater than value2, GST_VALUE_GREATER_THAN is returned.
	 * If value1 is less than value2, GST_VALUE_LESS_THAN is returned.
	 * If the values are equal, GST_VALUE_EQUAL is returned.
	 * Params:
	 * value1 = a value to compare
	 * value2 = another value to compare
	 * Returns: comparison result
	 */
	public static int compare(Value value1, Value value2)
	{
		// gint gst_value_compare (const GValue *value1,  const GValue *value2);
		return gst_value_compare((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Determines if value1 and value2 can be compared.
	 * Params:
	 * value1 = a value to compare
	 * value2 = another value to compare
	 * Returns: TRUE if the values can be compared
	 */
	public static int canCompare(Value value1, Value value2)
	{
		// gboolean gst_value_can_compare (const GValue *value1,  const GValue *value2);
		return gst_value_can_compare((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Creates a GValue corresponding to the union of value1 and value2.
	 * Params:
	 * dest = the destination value. [out caller-allocates]
	 * value1 = a value to union
	 * value2 = another value to union
	 * Returns: TRUE if the union suceeded.
	 */
	public static int unio(Value dest, Value value1, Value value2)
	{
		// gboolean gst_value_union (GValue *dest,  const GValue *value1,  const GValue *value2);
		return gst_value_union((dest is null) ? null : dest.getValueStruct(), (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Determines if value1 and value2 can be non-trivially unioned.
	 * Any two values can be trivially unioned by adding both of them
	 * to a GstValueList. However, certain types have the possibility
	 * to be unioned in a simpler way. For example, an integer range
	 * and an integer can be unioned if the integer is a subset of the
	 * integer range. If there is the possibility that two values can
	 * be unioned, this function returns TRUE.
	 * Params:
	 * value1 = a value to union
	 * value2 = another value to union
	 * Returns: TRUE if there is a function allowing the two values to be unioned.
	 */
	public static int canUnion(Value value1, Value value2)
	{
		// gboolean gst_value_can_union (const GValue *value1,  const GValue *value2);
		return gst_value_can_union((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Subtracts subtrahend from minuend and stores the result in dest.
	 * Note that this means subtraction as in sets, not as in mathematics.
	 * Params:
	 * dest = the destination value for the result if the
	 * subtraction is not empty. May be NULL, in which case the resulting set
	 * will not be computed, which can give a fair speedup. [out caller-allocates]
	 * minuend = the value to subtract from
	 * subtrahend = the value to subtract
	 * Returns: TRUE if the subtraction is not empty
	 */
	public static int subtract(Value dest, Value minuend, Value subtrahend)
	{
		// gboolean gst_value_subtract (GValue *dest,  const GValue *minuend,  const GValue *subtrahend);
		return gst_value_subtract((dest is null) ? null : dest.getValueStruct(), (minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct());
	}
	
	/**
	 * Checks if it's possible to subtract subtrahend from minuend.
	 * Params:
	 * minuend = the value to subtract from
	 * subtrahend = the value to subtract
	 * Returns: TRUE if a subtraction is possible
	 */
	public static int canSubtract(Value minuend, Value subtrahend)
	{
		// gboolean gst_value_can_subtract (const GValue *minuend,  const GValue *subtrahend);
		return gst_value_can_subtract((minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct());
	}
	
	/**
	 * Calculates the intersection of two values. If the values have
	 * a non-empty intersection, the value representing the intersection
	 * is placed in dest, unless NULL. If the intersection is non-empty,
	 * dest is not modified.
	 * Params:
	 * dest = a uninitialized GValue that will hold the calculated
	 * intersection value. May be NULL if the resulting set if not needed. [out caller-allocates][transfer full]
	 * value1 = a value to intersect
	 * value2 = another value to intersect
	 * Returns: TRUE if the intersection is non-empty
	 */
	public static int intersect(Value dest, Value value1, Value value2)
	{
		// gboolean gst_value_intersect (GValue *dest,  const GValue *value1,  const GValue *value2);
		return gst_value_intersect((dest is null) ? null : dest.getValueStruct(), (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Determines if intersecting two values will produce a valid result.
	 * Two values will produce a valid intersection if they have the same
	 * type, or if there is a method (registered by
	 * gst_value_register_intersect_func()) to calculate the intersection.
	 * Params:
	 * value1 = a value to intersect
	 * value2 = another value to intersect
	 * Returns: TRUE if the values can intersect
	 */
	public static int canIntersect(Value value1, Value value2)
	{
		// gboolean gst_value_can_intersect (const GValue *value1,  const GValue *value2);
		return gst_value_can_intersect((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Check that value1 is a subset of value2.
	 * Return: TRUE is value1 is a subset of value2
	 * Params:
	 * value1 = a GValue
	 * value2 = a GValue
	 */
	public static int isSubset(Value value1, Value value2)
	{
		// gboolean gst_value_is_subset (const GValue *value1,  const GValue *value2);
		return gst_value_is_subset((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}
	
	/**
	 * Appends append_value to the GstValueArray in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_ARRAY
	 * appendValue = the value to append
	 */
	public static void arrayAppendValue(Value value, Value appendValue)
	{
		// void gst_value_array_append_value (GValue *value,  const GValue *append_value);
		gst_value_array_append_value((value is null) ? null : value.getValueStruct(), (appendValue is null) ? null : appendValue.getValueStruct());
	}
	
	/**
	 * Gets the number of values contained in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_ARRAY
	 * Returns: the number of values
	 */
	public static uint arrayGetSize(Value value)
	{
		// guint gst_value_array_get_size (const GValue *value);
		return gst_value_array_get_size((value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the value that is a member of the array contained in value and
	 * has the index index.
	 * Params:
	 * value = a GValue of type GST_TYPE_ARRAY
	 * index = index of value to get from the array
	 * Returns: the value at the given index. [transfer none]
	 */
	public static Value arrayGetValue(Value value, uint index)
	{
		// const GValue * gst_value_array_get_value (const GValue *value,  guint index);
		auto p = gst_value_array_get_value((value is null) ? null : value.getValueStruct(), index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
	
	/**
	 * Prepends prepend_value to the GstValueArray in value.
	 * Params:
	 * value = a GValue of type GST_TYPE_ARRAY
	 * prependValue = the value to prepend
	 */
	public static void arrayPrependValue(Value value, Value prependValue)
	{
		// void gst_value_array_prepend_value (GValue *value,  const GValue *prepend_value);
		gst_value_array_prepend_value((value is null) ? null : value.getValueStruct(), (prependValue is null) ? null : prependValue.getValueStruct());
	}
	
	/**
	 * Fixate src into a new value dest.
	 * For ranges, the first element is taken. For lists and arrays, the
	 * first item is fixated and returned.
	 * If src is already fixed, this function returns FALSE.
	 * Params:
	 * dest = the GValue destination
	 * src = the GValue to fixate
	 * Returns: true if dest contains a fixated version of src.
	 */
	public static int fixate(Value dest, Value src)
	{
		// gboolean gst_value_fixate (GValue *dest,  const GValue *src);
		return gst_value_fixate((dest is null) ? null : dest.getValueStruct(), (src is null) ? null : src.getValueStruct());
	}
}
