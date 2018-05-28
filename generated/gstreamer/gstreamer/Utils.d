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


module gstreamer.Utils;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gobject.ValueArray;
private import gstreamer.Plugin;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/** */
public struct Utils
{

	/**
	 * Searches inside @array for @search_data by using the comparison function
	 * @search_func. @array must be sorted ascending.
	 *
	 * As @search_data is always passed as second argument to @search_func it's
	 * not required that @search_data has the same type as the array elements.
	 *
	 * The complexity of this search function is O(log (num_elements)).
	 *
	 * Params:
	 *     array = the sorted input array
	 *     numElements = number of elements in the array
	 *     elementSize = size of every element in bytes
	 *     searchFunc = function to compare two elements, @search_data will always be passed as second argument
	 *     mode = search mode that should be used
	 *     searchData = element that should be found
	 *     userData = data to pass to @search_func
	 *
	 * Returns: The address of the found
	 *     element or %NULL if nothing was found
	 */
	public static void* arrayBinarySearch(void* array, uint numElements, size_t elementSize, GCompareDataFunc searchFunc, GstSearchMode mode, void* searchData, void* userData)
	{
		return gst_util_array_binary_search(array, numElements, elementSize, searchFunc, mode, searchData, userData);
	}

	/**
	 * Transforms a #gdouble to a fraction and simplifies
	 * the result.
	 *
	 * Params:
	 *     src = #gdouble to transform
	 *     destN = pointer to a #gint to hold the result numerator
	 *     destD = pointer to a #gint to hold the result denominator
	 */
	public static void doubleToFraction(double src, out int destN, out int destD)
	{
		gst_util_double_to_fraction(src, &destN, &destD);
	}

	/**
	 * Dumps the memory block into a hex representation. Useful for debugging.
	 *
	 * Params:
	 *     mem = a pointer to the memory to dump
	 */
	public static void dumpMem(char[] mem)
	{
		gst_util_dump_mem(mem.ptr, cast(uint)mem.length);
	}

	/**
	 * Adds the fractions @a_n/@a_d and @b_n/@b_d and stores
	 * the result in @res_n and @res_d.
	 *
	 * Params:
	 *     aN = Numerator of first value
	 *     aD = Denominator of first value
	 *     bN = Numerator of second value
	 *     bD = Denominator of second value
	 *     resN = Pointer to #gint to hold the result numerator
	 *     resD = Pointer to #gint to hold the result denominator
	 *
	 * Returns: %FALSE on overflow, %TRUE otherwise.
	 */
	public static bool fractionAdd(int aN, int aD, int bN, int bD, out int resN, out int resD)
	{
		return gst_util_fraction_add(aN, aD, bN, bD, &resN, &resD) != 0;
	}

	/**
	 * Compares the fractions @a_n/@a_d and @b_n/@b_d and returns
	 * -1 if a < b, 0 if a = b and 1 if a > b.
	 *
	 * Params:
	 *     aN = Numerator of first value
	 *     aD = Denominator of first value
	 *     bN = Numerator of second value
	 *     bD = Denominator of second value
	 *
	 * Returns: -1 if a < b; 0 if a = b; 1 if a > b.
	 */
	public static int fractionCompare(int aN, int aD, int bN, int bD)
	{
		return gst_util_fraction_compare(aN, aD, bN, bD);
	}

	/**
	 * Multiplies the fractions @a_n/@a_d and @b_n/@b_d and stores
	 * the result in @res_n and @res_d.
	 *
	 * Params:
	 *     aN = Numerator of first value
	 *     aD = Denominator of first value
	 *     bN = Numerator of second value
	 *     bD = Denominator of second value
	 *     resN = Pointer to #gint to hold the result numerator
	 *     resD = Pointer to #gint to hold the result denominator
	 *
	 * Returns: %FALSE on overflow, %TRUE otherwise.
	 */
	public static bool fractionMultiply(int aN, int aD, int bN, int bD, out int resN, out int resD)
	{
		return gst_util_fraction_multiply(aN, aD, bN, bD, &resN, &resD) != 0;
	}

	/**
	 * Transforms a fraction to a #gdouble.
	 *
	 * Params:
	 *     srcN = Fraction numerator as #gint
	 *     srcD = Fraction denominator #gint
	 *     dest = pointer to a #gdouble for the result
	 */
	public static void fractionToDouble(int srcN, int srcD, out double dest)
	{
		gst_util_fraction_to_double(srcN, srcD, &dest);
	}

	/** */
	public static ulong gdoubleToGuint64(double value)
	{
		return gst_util_gdouble_to_guint64(value);
	}

	/**
	 * Get a timestamp as GstClockTime to be used for interval measurements.
	 * The timestamp should not be interpreted in any other way.
	 *
	 * Returns: the timestamp
	 */
	public static GstClockTime getTimestamp()
	{
		return gst_util_get_timestamp();
	}

	/**
	 * Calculates the greatest common divisor of @a
	 * and @b.
	 *
	 * Params:
	 *     a = First value as #gint
	 *     b = Second value as #gint
	 *
	 * Returns: Greatest common divisor of @a and @b
	 */
	public static int greatestCommonDivisor(int a, int b)
	{
		return gst_util_greatest_common_divisor(a, b);
	}

	/**
	 * Calculates the greatest common divisor of @a
	 * and @b.
	 *
	 * Params:
	 *     a = First value as #gint64
	 *     b = Second value as #gint64
	 *
	 * Returns: Greatest common divisor of @a and @b
	 */
	public static long greatestCommonDivisorInt64(long a, long b)
	{
		return gst_util_greatest_common_divisor_int64(a, b);
	}

	/**
	 * Return a constantly incrementing group id.
	 *
	 * This function is used to generate a new group-id for the
	 * stream-start event.
	 *
	 * This function never returns %GST_GROUP_ID_INVALID (which is 0)
	 *
	 * Returns: A constantly incrementing unsigned integer, which might
	 *     overflow back to 0 at some point.
	 */
	public static uint groupIdNext()
	{
		return gst_util_group_id_next();
	}

	/** */
	public static double guint64ToGdouble(ulong value)
	{
		return gst_util_guint64_to_gdouble(value);
	}

	/**
	 * Compare two sequence numbers, handling wraparound.
	 *
	 * The current implementation just returns (gint32)(@s1 - @s2).
	 *
	 * Params:
	 *     s1 = A sequence number.
	 *     s2 = Another sequence number.
	 *
	 * Returns: A negative number if @s1 is before @s2, 0 if they are equal, or a
	 *     positive number if @s1 is after @s2.
	 */
	public static int seqnumCompare(uint s1, uint s2)
	{
		return gst_util_seqnum_compare(s1, s2);
	}

	/**
	 * Return a constantly incrementing sequence number.
	 *
	 * This function is used internally to GStreamer to be able to determine which
	 * events and messages are "the same". For example, elements may set the seqnum
	 * on a segment-done message to be the same as that of the last seek event, to
	 * indicate that event and the message correspond to the same segment.
	 *
	 * This function never returns %GST_SEQNUM_INVALID (which is 0).
	 *
	 * Returns: A constantly incrementing 32-bit unsigned integer, which might
	 *     overflow at some point. Use gst_util_seqnum_compare() to make sure
	 *     you handle wraparound correctly.
	 */
	public static uint seqnumNext()
	{
		return gst_util_seqnum_next();
	}

	/**
	 * Converts the string value to the type of the objects argument and
	 * sets the argument with it.
	 *
	 * Note that this function silently returns if @object has no property named
	 * @name or when @value cannot be converted to the type of the property.
	 *
	 * Params:
	 *     object = the object to set the argument of
	 *     name = the name of the argument to set
	 *     value = the string value to set
	 */
	public static void setObjectArg(ObjectG object, string name, string value)
	{
		gst_util_set_object_arg((object is null) ? null : object.getObjectGStruct(), Str.toStringz(name), Str.toStringz(value));
	}

	/**
	 * Converts the string to the type of the value and
	 * sets the value with it.
	 *
	 * Note that this function is dangerous as it does not return any indication
	 * if the conversion worked or not.
	 *
	 * Params:
	 *     value = the value to set
	 *     valueStr = the string to get the value from
	 */
	public static void setValueFromString(out Value value, string valueStr)
	{
		GValue* outvalue = sliceNew!GValue();

		gst_util_set_value_from_string(outvalue, Str.toStringz(valueStr));

		value = ObjectG.getDObject!(Value)(outvalue, true);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.
	 *
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 *
	 * Params:
	 *     val = the number to scale
	 *     num = the numerator of the scale ratio
	 *     denom = the denominator of the scale ratio
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer it is truncated.  See also
	 *     gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil(),
	 *     gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(),
	 *     gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64Scale(ulong val, ulong num, ulong denom)
	{
		return gst_util_uint64_scale(val, num, denom);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.
	 *
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 *
	 * Params:
	 *     val = the number to scale
	 *     num = the numerator of the scale ratio
	 *     denom = the denominator of the scale ratio
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer, it is rounded up.  See also
	 *     gst_util_uint64_scale(), gst_util_uint64_scale_round(),
	 *     gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(),
	 *     gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64ScaleCeil(ulong val, ulong num, ulong denom)
	{
		return gst_util_uint64_scale_ceil(val, num, denom);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.  @num must be non-negative and
	 * @denom must be positive.
	 *
	 * Params:
	 *     val = guint64 (such as a #GstClockTime) to scale.
	 *     num = numerator of the scale factor.
	 *     denom = denominator of the scale factor.
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer, it is truncated.  See also
	 *     gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil(),
	 *     gst_util_uint64_scale(), gst_util_uint64_scale_round(),
	 *     gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64ScaleInt(ulong val, int num, int denom)
	{
		return gst_util_uint64_scale_int(val, num, denom);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.  @num must be non-negative and
	 * @denom must be positive.
	 *
	 * Params:
	 *     val = guint64 (such as a #GstClockTime) to scale.
	 *     num = numerator of the scale factor.
	 *     denom = denominator of the scale factor.
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer, it is rounded up.  See also
	 *     gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(),
	 *     gst_util_uint64_scale(), gst_util_uint64_scale_round(),
	 *     gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64ScaleIntCeil(ulong val, int num, int denom)
	{
		return gst_util_uint64_scale_int_ceil(val, num, denom);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.  @num must be non-negative and
	 * @denom must be positive.
	 *
	 * Params:
	 *     val = guint64 (such as a #GstClockTime) to scale.
	 *     num = numerator of the scale factor.
	 *     denom = denominator of the scale factor.
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer, it is rounded to the nearest integer
	 *     (half-way cases are rounded up).  See also gst_util_uint64_scale_int(),
	 *     gst_util_uint64_scale_int_ceil(), gst_util_uint64_scale(),
	 *     gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64ScaleIntRound(ulong val, int num, int denom)
	{
		return gst_util_uint64_scale_int_round(val, num, denom);
	}

	/**
	 * Scale @val by the rational number @num / @denom, avoiding overflows and
	 * underflows and without loss of precision.
	 *
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 *
	 * Params:
	 *     val = the number to scale
	 *     num = the numerator of the scale ratio
	 *     denom = the denominator of the scale ratio
	 *
	 * Returns: @val * @num / @denom.  In the case of an overflow, this
	 *     function returns G_MAXUINT64.  If the result is not exactly
	 *     representable as an integer, it is rounded to the nearest integer
	 *     (half-way cases are rounded up).  See also gst_util_uint64_scale(),
	 *     gst_util_uint64_scale_ceil(), gst_util_uint64_scale_int(),
	 *     gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64ScaleRound(ulong val, ulong num, ulong denom)
	{
		return gst_util_uint64_scale_round(val, num, denom);
	}

	/**
	 * Calculates the linear regression of the values @xy and places the
	 * result in @m_num, @m_denom, @b and @xbase, representing the function
	 * y(x) = m_num/m_denom * (x - xbase) + b
	 * that has the least-square distance from all points @x and @y.
	 *
	 * @r_squared will contain the remaining error.
	 *
	 * If @temp is not %NULL, it will be used as temporary space for the function,
	 * in which case the function works without any allocation at all. If @temp is
	 * %NULL, an allocation will take place. @temp should have at least the same
	 * amount of memory allocated as @xy, i.e. 2*n*sizeof(GstClockTime).
	 *
	 * > This function assumes (x,y) values with reasonable large differences
	 * > between them. It will not calculate the exact results if the differences
	 * > between neighbouring values are too small due to not being able to
	 * > represent sub-integer values during the calculations.
	 *
	 * Params:
	 *     xy = Pairs of (x,y) values
	 *     temp = Temporary scratch space used by the function
	 *     n = number of (x,y) pairs
	 *     mNum = numerator of calculated slope
	 *     mDenom = denominator of calculated slope
	 *     b = Offset at Y-axis
	 *     xbase = Offset at X-axis
	 *     rSquared = R-squared
	 *
	 * Returns: %TRUE if the linear regression was successfully calculated
	 *
	 * Since: 1.12
	 */
	public static bool calculateLinearRegression(GstClockTime* xy, GstClockTime* temp, uint n, out GstClockTime mNum, out GstClockTime mDenom, out GstClockTime b, out GstClockTime xbase, out double rSquared)
	{
		return gst_calculate_linear_regression(xy, temp, n, &mNum, &mDenom, &b, &xbase, &rSquared) != 0;
	}

	/** */
	public static bool dynamicTypeRegister(Plugin plugin, GType type)
	{
		return gst_dynamic_type_register((plugin is null) ? null : plugin.getPluginStruct(), type) != 0;
	}

	/**
	 * Get a property of type %GST_TYPE_ARRAY and transform it into a
	 * #GValueArray. This allow language bindings to get GST_TYPE_ARRAY
	 * properties which are otherwise not an accessible type.
	 *
	 * Params:
	 *     object = the object to set the array to
	 *     name = the name of the property to set
	 *     array = a return #GValueArray
	 *
	 * Since: 1.12
	 */
	public static bool getObjectArray(ObjectG object, string name, out ValueArray array)
	{
		GValueArray* outarray = null;

		auto p = gst_util_get_object_array((object is null) ? null : object.getObjectGStruct(), Str.toStringz(name), &outarray) != 0;

		array = ObjectG.getDObject!(ValueArray)(outarray);

		return p;
	}

	/**
	 * Transfer a #GValueArray to %GST_TYPE_ARRAY and set this value on the
	 * specified property name. This allow language bindings to set GST_TYPE_ARRAY
	 * properties which are otherwise not an accessible type.
	 *
	 * Params:
	 *     object = the object to set the array to
	 *     name = the name of the property to set
	 *     array = a #GValueArray containing the values
	 *
	 * Since: 1.12
	 */
	public static bool setObjectArray(ObjectG object, string name, ValueArray array)
	{
		return gst_util_set_object_array((object is null) ? null : object.getObjectGStruct(), Str.toStringz(name), (array is null) ? null : array.getValueArrayStruct()) != 0;
	}
}
