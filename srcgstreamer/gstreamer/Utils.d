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
 * inFile  = gstreamer-GstUtils.html
 * outPack = gstreamer
 * outFile = Utils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Utils
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_util_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Utils;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;




/**
 */
public class Utils
{
	
	/**
	 */
	
	/**
	 * Read a 32 bit float value in little endian format from the memory buffer.
	 * Params:
	 * data = memory location
	 * Returns: The floating point value read from data
	 */
	public static float GST_READ_FLOAT_LE(ubyte* data)
	{
		// gfloat GST_READ_FLOAT_LE (const guint8 *data);
		return GST_READ_FLOAT_LE(data);
	}
	
	/**
	 * Read a 32 bit float value in big endian format from the memory buffer.
	 * Params:
	 * data = memory location
	 * Returns: The floating point value read from data
	 */
	public static float GST_READ_FLOAT_BE(ubyte* data)
	{
		// gfloat GST_READ_FLOAT_BE (const guint8 *data);
		return GST_READ_FLOAT_BE(data);
	}
	
	/**
	 * Read a 64 bit double value in little endian format from the memory buffer.
	 * Params:
	 * data = memory location
	 * Returns: The double-precision floating point value read from data
	 */
	public static double GST_READ_DOUBLE_LE(ubyte* data)
	{
		// gdouble GST_READ_DOUBLE_LE (const guint8 *data);
		return GST_READ_DOUBLE_LE(data);
	}
	
	/**
	 * Read a 64 bit double value in big endian format from the memory buffer.
	 * Params:
	 * data = memory location
	 * Returns: The double-precision floating point value read from data
	 */
	public static double GST_READ_DOUBLE_BE(ubyte* data)
	{
		// gdouble GST_READ_DOUBLE_BE (const guint8 *data);
		return GST_READ_DOUBLE_BE(data);
	}
	
	/**
	 * Store a 32 bit float value in little endian format into the memory buffer.
	 * Params:
	 * data = memory location
	 * num = value to store
	 */
	public static void GST_WRITE_FLOAT_LE(ubyte* data, float num)
	{
		// void GST_WRITE_FLOAT_LE (guint8 *data,  gfloat num);
		GST_WRITE_FLOAT_LE(data, num);
	}
	
	/**
	 * Store a 32 bit float value in big endian format into the memory buffer.
	 * Params:
	 * data = memory location
	 * num = value to store
	 */
	public static void GST_WRITE_FLOAT_BE(ubyte* data, float num)
	{
		// void GST_WRITE_FLOAT_BE (guint8 *data,  gfloat num);
		GST_WRITE_FLOAT_BE(data, num);
	}
	
	/**
	 * Store a 64 bit double value in little endian format into the memory buffer.
	 * Params:
	 * data = memory location
	 * num = value to store
	 */
	public static void GST_WRITE_DOUBLE_LE(ubyte* data, double num)
	{
		// void GST_WRITE_DOUBLE_LE (guint8 *data,  gdouble num);
		GST_WRITE_DOUBLE_LE(data, num);
	}
	
	/**
	 * Store a 64 bit double value in big endian format into the memory buffer.
	 * Params:
	 * data = memory location
	 * num = value to store
	 */
	public static void GST_WRITE_DOUBLE_BE(ubyte* data, double num)
	{
		// void GST_WRITE_DOUBLE_BE (guint8 *data,  gdouble num);
		GST_WRITE_DOUBLE_BE(data, num);
	}
	
	/**
	 * Swap byte order of a 64-bit floating point value (double).
	 * Params:
	 * in = input value
	 * Returns: in byte-swapped.
	 */
	public static double GDOUBLE_SWAP_LE_BE(double inn)
	{
		// gdouble GDOUBLE_SWAP_LE_BE (gdouble in);
		return GDOUBLE_SWAP_LE_BE(inn);
	}
	
	/**
	 * Swap byte order of a 32-bit floating point value (float).
	 * Params:
	 * in = input value
	 * Returns: in byte-swapped.
	 */
	public static float GFLOAT_SWAP_LE_BE(float inn)
	{
		// gfloat GFLOAT_SWAP_LE_BE (gfloat in);
		return GFLOAT_SWAP_LE_BE(inn);
	}
	
	/**
	 * Dumps the memory block into a hex representation. Useful for debugging.
	 * Params:
	 * mem = a pointer to the memory to dump
	 * size = the size of the memory block to dump
	 */
	public static void dumpMem(char* mem, uint size)
	{
		// void gst_util_dump_mem (const guchar *mem,  guint size);
		gst_util_dump_mem(mem, size);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision.
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 * Params:
	 * val = the number to scale
	 * num = the numerator of the scale ratio
	 * denom = the denominator of the scale ratio
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer it is truncated. See also gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil(), gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64_Scale(ulong val, ulong num, ulong denom)
	{
		// guint64 gst_util_uint64_scale (guint64 val,  guint64 num,  guint64 denom);
		return gst_util_uint64_scale(val, num, denom);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision.
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 * Params:
	 * val = the number to scale
	 * num = the numerator of the scale ratio
	 * denom = the denominator of the scale ratio
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer, it is rounded to the nearest integer (half-way cases are rounded up). See also gst_util_uint64_scale(), gst_util_uint64_scale_ceil(), gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64_ScaleRound(ulong val, ulong num, ulong denom)
	{
		// guint64 gst_util_uint64_scale_round (guint64 val,  guint64 num,  guint64 denom);
		return gst_util_uint64_scale_round(val, num, denom);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision.
	 * This function can potentially be very slow if val and num are both
	 * greater than G_MAXUINT32.
	 * Params:
	 * val = the number to scale
	 * num = the numerator of the scale ratio
	 * denom = the denominator of the scale ratio
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer, it is rounded up. See also gst_util_uint64_scale(), gst_util_uint64_scale_round(), gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil().
	 */
	public static ulong uint64_ScaleCeil(ulong val, ulong num, ulong denom)
	{
		// guint64 gst_util_uint64_scale_ceil (guint64 val,  guint64 num,  guint64 denom);
		return gst_util_uint64_scale_ceil(val, num, denom);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision. num must be non-negative and
	 * denom must be positive.
	 * Params:
	 * val = guint64 (such as a GstClockTime) to scale.
	 * num = numerator of the scale factor.
	 * denom = denominator of the scale factor.
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer, it is truncated. See also gst_util_uint64_scale_int_round(), gst_util_uint64_scale_int_ceil(), gst_util_uint64_scale(), gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64_ScaleInt(ulong val, int num, int denom)
	{
		// guint64 gst_util_uint64_scale_int (guint64 val,  gint num,  gint denom);
		return gst_util_uint64_scale_int(val, num, denom);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision. num must be non-negative and
	 * denom must be positive.
	 * Params:
	 * val = guint64 (such as a GstClockTime) to scale.
	 * num = numerator of the scale factor.
	 * denom = denominator of the scale factor.
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer, it is rounded to the nearest integer (half-way cases are rounded up). See also gst_util_uint64_scale_int(), gst_util_uint64_scale_int_ceil(), gst_util_uint64_scale(), gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64_ScaleIntRound(ulong val, int num, int denom)
	{
		// guint64 gst_util_uint64_scale_int_round (guint64 val,  gint num,  gint denom);
		return gst_util_uint64_scale_int_round(val, num, denom);
	}
	
	/**
	 * Scale val by the rational number num / denom, avoiding overflows and
	 * underflows and without loss of precision. num must be non-negative and
	 * denom must be positive.
	 * Params:
	 * val = guint64 (such as a GstClockTime) to scale.
	 * num = numerator of the scale factor.
	 * denom = denominator of the scale factor.
	 * Returns: val * num / denom. In the case of an overflow, this function returns G_MAXUINT64. If the result is not exactly representable as an integer, it is rounded up. See also gst_util_uint64_scale_int(), gst_util_uint64_scale_int_round(), gst_util_uint64_scale(), gst_util_uint64_scale_round(), gst_util_uint64_scale_ceil().
	 */
	public static ulong uint64_ScaleIntCeil(ulong val, int num, int denom)
	{
		// guint64 gst_util_uint64_scale_int_ceil (guint64 val,  gint num,  gint denom);
		return gst_util_uint64_scale_int_ceil(val, num, denom);
	}
	
	/**
	 * Calculates the greatest common divisor of a
	 * and b.
	 * Params:
	 * a = First value as gint
	 * b = Second value as gint
	 * Returns: Greatest common divisor of a and b
	 */
	public static int greatestCommonDivisor(int a, int b)
	{
		// gint gst_util_greatest_common_divisor (gint a,  gint b);
		return gst_util_greatest_common_divisor(a, b);
	}
	
	/**
	 * Calculates the greatest common divisor of a
	 * and b.
	 * Params:
	 * a = First value as gint64
	 * b = Second value as gint64
	 * Returns: Greatest common divisor of a and b
	 */
	public static long greatestCommonDivisorInt64(long a, long b)
	{
		// gint64 gst_util_greatest_common_divisor_int64  (gint64 a,  gint64 b);
		return gst_util_greatest_common_divisor_int64(a, b);
	}
	
	/**
	 * Transforms a fraction to a gdouble.
	 * Params:
	 * srcN = Fraction numerator as gint
	 * srcD = Fraction denominator gint
	 * dest = pointer to a gdouble for the result. [out]
	 */
	public static void fractionToDouble(int srcN, int srcD, out double dest)
	{
		// void gst_util_fraction_to_double (gint src_n,  gint src_d,  gdouble *dest);
		gst_util_fraction_to_double(srcN, srcD, &dest);
	}
	
	/**
	 * Transforms a gdouble to a fraction and simplifies
	 * the result.
	 * Params:
	 * src = gdouble to transform
	 * destN = pointer to a gint to hold the result numerator. [out]
	 * destD = pointer to a gint to hold the result denominator. [out]
	 */
	public static void doubleToFraction(double src, out int destN, out int destD)
	{
		// void gst_util_double_to_fraction (gdouble src,  gint *dest_n,  gint *dest_d);
		gst_util_double_to_fraction(src, &destN, &destD);
	}
	
	/**
	 * Multiplies the fractions a_n/a_d and b_n/b_d and stores
	 * the result in res_n and res_d.
	 * Params:
	 * aN = Numerator of first value
	 * aD = Denominator of first value
	 * bN = Numerator of second value
	 * bD = Denominator of second value
	 * resN = Pointer to gint to hold the result numerator. [out]
	 * resD = Pointer to gint to hold the result denominator. [out]
	 * Returns: FALSE on overflow, TRUE otherwise.
	 */
	public static int fractionMultiply(int aN, int aD, int bN, int bD, out int resN, out int resD)
	{
		// gboolean gst_util_fraction_multiply (gint a_n,  gint a_d,  gint b_n,  gint b_d,  gint *res_n,  gint *res_d);
		return gst_util_fraction_multiply(aN, aD, bN, bD, &resN, &resD);
	}
	
	/**
	 * Adds the fractions a_n/a_d and b_n/b_d and stores
	 * the result in res_n and res_d.
	 * Params:
	 * aN = Numerator of first value
	 * aD = Denominator of first value
	 * bN = Numerator of second value
	 * bD = Denominator of second value
	 * resN = Pointer to gint to hold the result numerator. [out]
	 * resD = Pointer to gint to hold the result denominator. [out]
	 * Returns: FALSE on overflow, TRUE otherwise.
	 */
	public static int fractionAdd(int aN, int aD, int bN, int bD, out int resN, out int resD)
	{
		// gboolean gst_util_fraction_add (gint a_n,  gint a_d,  gint b_n,  gint b_d,  gint *res_n,  gint *res_d);
		return gst_util_fraction_add(aN, aD, bN, bD, &resN, &resD);
	}
	
	/**
	 * Compares the fractions a_n/a_d and b_n/b_d and returns
	 * -1 if a < b, 0 if a = b and 1 if a > b.
	 * Params:
	 * aN = Numerator of first value
	 * aD = Denominator of first value
	 * bN = Numerator of second value
	 * bD = Denominator of second value
	 * Returns: -1 if a < b; 0 if a = b; 1 if a > b.
	 */
	public static int fractionCompare(int aN, int aD, int bN, int bD)
	{
		// gint gst_util_fraction_compare (gint a_n,  gint a_d,  gint b_n,  gint b_d);
		return gst_util_fraction_compare(aN, aD, bN, bD);
	}
	
	/**
	 * Return a constantly incrementing sequence number.
	 * This function is used internally to GStreamer to be able to determine which
	 * events and messages are "the same". For example, elements may set the seqnum
	 * on a segment-done message to be the same as that of the last seek event, to
	 * indicate that event and the message correspond to the same segment.
	 * Returns: A constantly incrementing 32-bit unsigned integer, which might overflow back to 0 at some point. Use gst_util_seqnum_compare() to make sure you handle wraparound correctly.
	 */
	public static uint seqnumNext()
	{
		// guint32 gst_util_seqnum_next (void);
		return gst_util_seqnum_next();
	}
	
	/**
	 * Compare two sequence numbers, handling wraparound.
	 * The current implementation just returns (gint32)(s1 - s2).
	 * Params:
	 * s1 = A sequence number.
	 * s2 = Another sequence number.
	 * Returns: A negative number if s1 is before s2, 0 if they are equal, or a positive number if s1 is after s2.
	 */
	public static int seqnumCompare(uint s1, uint s2)
	{
		// gint32 gst_util_seqnum_compare (guint32 s1,  guint32 s2);
		return gst_util_seqnum_compare(s1, s2);
	}
	
	/**
	 * Convertes the string value to the type of the objects argument and
	 * sets the argument with it.
	 * Note that this function silently returns if object has no property named
	 * name or when value cannot be converted to the type of the property.
	 * Params:
	 * object = the object to set the argument of
	 * name = the name of the argument to set
	 * value = the string value to set
	 */
	public static void setObjectArg(ObjectG object, string name, string value)
	{
		// void gst_util_set_object_arg (GObject *object,  const gchar *name,  const gchar *value);
		gst_util_set_object_arg((object is null) ? null : object.getObjectGStruct(), Str.toStringz(name), Str.toStringz(value));
	}
	
	/**
	 * Converts the string to the type of the value and
	 * sets the value with it.
	 * Note that this function is dangerous as it does not return any indication
	 * if the conversion worked or not.
	 * Params:
	 * value = the value to set. [out caller-allocates]
	 * valueStr = the string to get the value from
	 */
	public static void setValueFromString(Value value, string valueStr)
	{
		// void gst_util_set_value_from_string (GValue *value,  const gchar *value_str);
		gst_util_set_value_from_string((value is null) ? null : value.getValueStruct(), Str.toStringz(valueStr));
	}
	
	/**
	 * Get a timestamp as GstClockTime to be used for interval measurements.
	 * The timestamp should not be interpreted in any other way.
	 * Returns: the timestamp
	 */
	public static GstClockTime getTimestamp()
	{
		// GstClockTime gst_util_get_timestamp (void);
		return gst_util_get_timestamp();
	}
	
	/**
	 * Searches inside array for search_data by using the comparison function
	 * search_func. array must be sorted ascending.
	 * As search_data is always passed as second argument to search_func it's
	 * not required that search_data has the same type as the array elements.
	 * The complexity of this search function is O(log (num_elements)).
	 * Params:
	 * array = the sorted input array
	 * numElements = number of elements in the array
	 * elementSize = size of every element in bytes
	 * searchFunc = function to compare two elements, search_data will always be passed as second argument. [scope call]
	 * mode = search mode that should be used
	 * searchData = element that should be found
	 * userData = data to pass to search_func. [closure]
	 * Returns: The address of the found element or NULL if nothing was found. [transfer none]
	 */
	public static void* arrayBinarySearch(void* array, uint numElements, gsize elementSize, GCompareDataFunc searchFunc, GstSearchMode mode, void* searchData, void* userData)
	{
		// gpointer gst_util_array_binary_search (gpointer array,  guint num_elements,  gsize element_size,  GCompareDataFunc search_func,  GstSearchMode mode,  gconstpointer search_data,  gpointer user_data);
		return gst_util_array_binary_search(array, numElements, elementSize, searchFunc, mode, searchData, userData);
	}
}
