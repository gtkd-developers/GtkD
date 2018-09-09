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


module gstreamer.ValueGst;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gstreamer.Caps;
private import gstreamer.CapsFeatures;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/** */
public struct ValueGst
{

	/**
	 * Determines if @value1 and @value2 can be compared.
	 *
	 * Params:
	 *     value1 = a value to compare
	 *     value2 = another value to compare
	 *
	 * Returns: %TRUE if the values can be compared
	 */
	public static bool canCompare(Value value1, Value value2)
	{
		return gst_value_can_compare((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;
	}

	/**
	 * Determines if intersecting two values will produce a valid result.
	 * Two values will produce a valid intersection if they have the same
	 * type.
	 *
	 * Params:
	 *     value1 = a value to intersect
	 *     value2 = another value to intersect
	 *
	 * Returns: %TRUE if the values can intersect
	 */
	public static bool canIntersect(Value value1, Value value2)
	{
		return gst_value_can_intersect((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;
	}

	/**
	 * Checks if it's possible to subtract @subtrahend from @minuend.
	 *
	 * Params:
	 *     minuend = the value to subtract from
	 *     subtrahend = the value to subtract
	 *
	 * Returns: %TRUE if a subtraction is possible
	 */
	public static bool canSubtract(Value minuend, Value subtrahend)
	{
		return gst_value_can_subtract((minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct()) != 0;
	}

	/**
	 * Determines if @value1 and @value2 can be non-trivially unioned.
	 * Any two values can be trivially unioned by adding both of them
	 * to a GstValueList.  However, certain types have the possibility
	 * to be unioned in a simpler way.  For example, an integer range
	 * and an integer can be unioned if the integer is a subset of the
	 * integer range.  If there is the possibility that two values can
	 * be unioned, this function returns %TRUE.
	 *
	 * Params:
	 *     value1 = a value to union
	 *     value2 = another value to union
	 *
	 * Returns: %TRUE if there is a function allowing the two values to
	 *     be unioned.
	 */
	public static bool canUnion(Value value1, Value value2)
	{
		return gst_value_can_union((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;
	}

	/**
	 * Compares @value1 and @value2.  If @value1 and @value2 cannot be
	 * compared, the function returns GST_VALUE_UNORDERED.  Otherwise,
	 * if @value1 is greater than @value2, GST_VALUE_GREATER_THAN is returned.
	 * If @value1 is less than @value2, GST_VALUE_LESS_THAN is returned.
	 * If the values are equal, GST_VALUE_EQUAL is returned.
	 *
	 * Params:
	 *     value1 = a value to compare
	 *     value2 = another value to compare
	 *
	 * Returns: comparison result
	 */
	public static int compare(Value value1, Value value2)
	{
		return gst_value_compare((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct());
	}

	/**
	 * Tries to deserialize a string into the type specified by the given GValue.
	 * If the operation succeeds, %TRUE is returned, %FALSE otherwise.
	 *
	 * Params:
	 *     dest = #GValue to fill with contents of
	 *         deserialization
	 *     src = string to deserialize
	 *
	 * Returns: %TRUE on success
	 */
	public static bool deserialize(out Value dest, string src)
	{
		GValue* outdest = sliceNew!GValue();

		auto p = gst_value_deserialize(outdest, Str.toStringz(src)) != 0;

		dest = ObjectG.getDObject!(Value)(outdest, true);

		return p;
	}

	/**
	 * Fixate @src into a new value @dest.
	 * For ranges, the first element is taken. For lists and arrays, the
	 * first item is fixated and returned.
	 * If @src is already fixed, this function returns %FALSE.
	 *
	 * Params:
	 *     dest = the #GValue destination
	 *     src = the #GValue to fixate
	 *
	 * Returns: %TRUE if @dest contains a fixated version of @src.
	 */
	public static bool fixate(Value dest, Value src)
	{
		return gst_value_fixate((dest is null) ? null : dest.getValueStruct(), (src is null) ? null : src.getValueStruct()) != 0;
	}

	/**
	 * Multiplies the two #GValue items containing a #GST_TYPE_FRACTION and sets
	 * @product to the product of the two fractions.
	 *
	 * Params:
	 *     product = a GValue initialized to #GST_TYPE_FRACTION
	 *     factor1 = a GValue initialized to #GST_TYPE_FRACTION
	 *     factor2 = a GValue initialized to #GST_TYPE_FRACTION
	 *
	 * Returns: %FALSE in case of an error (like integer overflow), %TRUE otherwise.
	 */
	public static bool fractionMultiply(Value product, Value factor1, Value factor2)
	{
		return gst_value_fraction_multiply((product is null) ? null : product.getValueStruct(), (factor1 is null) ? null : factor1.getValueStruct(), (factor2 is null) ? null : factor2.getValueStruct()) != 0;
	}

	/**
	 * Subtracts the @subtrahend from the @minuend and sets @dest to the result.
	 *
	 * Params:
	 *     dest = a GValue initialized to #GST_TYPE_FRACTION
	 *     minuend = a GValue initialized to #GST_TYPE_FRACTION
	 *     subtrahend = a GValue initialized to #GST_TYPE_FRACTION
	 *
	 * Returns: %FALSE in case of an error (like integer overflow), %TRUE otherwise.
	 */
	public static bool fractionSubtract(Value dest, Value minuend, Value subtrahend)
	{
		return gst_value_fraction_subtract((dest is null) ? null : dest.getValueStruct(), (minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct()) != 0;
	}

	/**
	 * Gets the bitmask specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_BITMASK
	 *
	 * Returns: the bitmask.
	 */
	public static ulong getBitmask(Value value)
	{
		return gst_value_get_bitmask((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the contents of @value. The reference count of the returned
	 * #GstCaps will not be modified, therefore the caller must take one
	 * before getting rid of the @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_CAPS
	 *
	 * Returns: the contents of @value
	 */
	public static Caps getCaps(Value value)
	{
		auto p = gst_value_get_caps((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p);
	}

	/**
	 * Gets the contents of @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_CAPS_FEATURES
	 *
	 * Returns: the contents of @value
	 */
	public static CapsFeatures getCapsFeatures(Value value)
	{
		auto p = gst_value_get_caps_features((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CapsFeatures)(cast(GstCapsFeatures*) p);
	}

	/**
	 * Gets the maximum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 *
	 * Returns: the maximum of the range
	 */
	public static double getDoubleRangeMax(Value value)
	{
		return gst_value_get_double_range_max((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the minimum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 *
	 * Returns: the minimum of the range
	 */
	public static double getDoubleRangeMin(Value value)
	{
		return gst_value_get_double_range_min((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Retrieve the flags field of a GstFlagSet @value.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_FLAG_SET
	 *
	 * Returns: the flags field of the flagset instance.
	 *
	 * Since: 1.6
	 */
	public static uint getFlagsetFlags(Value value)
	{
		return gst_value_get_flagset_flags((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Retrieve the mask field of a GstFlagSet @value.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_FLAG_SET
	 *
	 * Returns: the mask field of the flagset instance.
	 *
	 * Since: 1.6
	 */
	public static uint getFlagsetMask(Value value)
	{
		return gst_value_get_flagset_mask((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets @value to the flags and mask values provided in @flags and @mask.
	 * The @flags value indicates the values of flags, the @mask represents
	 * which bits in the flag value have been set, and which are "don't care"
	 *
	 * Params:
	 *     value = a GValue initialized to %GST_TYPE_FLAG_SET
	 *     flags = The value of the flags set or unset
	 *     mask = The mask indicate which flags bits must match for comparisons
	 *
	 * Since: 1.6
	 */
	public static void setFlagset(Value value, uint flags, uint mask)
	{
		gst_value_set_flagset((value is null) ? null : value.getValueStruct(), flags, mask);
	}

	/**
	 * Gets the denominator of the fraction specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_FRACTION
	 *
	 * Returns: the denominator of the fraction.
	 */
	public static int getFractionDenominator(Value value)
	{
		return gst_value_get_fraction_denominator((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the numerator of the fraction specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_FRACTION
	 *
	 * Returns: the numerator of the fraction.
	 */
	public static int getFractionNumerator(Value value)
	{
		return gst_value_get_fraction_numerator((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the maximum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 *
	 * Returns: the maximum of the range
	 */
	public static Value getFractionRangeMax(Value value)
	{
		auto p = gst_value_get_fraction_range_max((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Gets the minimum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 *
	 * Returns: the minimum of the range
	 */
	public static Value getFractionRangeMin(Value value)
	{
		auto p = gst_value_get_fraction_range_min((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}

	/**
	 * Gets the maximum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT64_RANGE
	 *
	 * Returns: the maximum of the range
	 */
	public static long getInt64RangeMax(Value value)
	{
		return gst_value_get_int64_range_max((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the minimum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT64_RANGE
	 *
	 * Returns: the minimum of the range
	 */
	public static long getInt64RangeMin(Value value)
	{
		return gst_value_get_int64_range_min((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the step of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT64_RANGE
	 *
	 * Returns: the step of the range
	 */
	public static long getInt64RangeStep(Value value)
	{
		return gst_value_get_int64_range_step((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the maximum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT_RANGE
	 *
	 * Returns: the maximum of the range
	 */
	public static int getIntRangeMax(Value value)
	{
		return gst_value_get_int_range_max((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the minimum of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT_RANGE
	 *
	 * Returns: the minimum of the range
	 */
	public static int getIntRangeMin(Value value)
	{
		return gst_value_get_int_range_min((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the step of the range specified by @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT_RANGE
	 *
	 * Returns: the step of the range
	 */
	public static int getIntRangeStep(Value value)
	{
		return gst_value_get_int_range_step((value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the contents of @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_STRUCTURE
	 *
	 * Returns: the contents of @value
	 */
	public static Structure getStructure(Value value)
	{
		auto p = gst_value_get_structure((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Initialises the target value to be of the same type as source and then copies
	 * the contents from source to target.
	 *
	 * Params:
	 *     dest = the target value
	 *     src = the source value
	 */
	public static void initAndCopy(out Value dest, Value src)
	{
		GValue* outdest = sliceNew!GValue();

		gst_value_init_and_copy(outdest, (src is null) ? null : src.getValueStruct());

		dest = ObjectG.getDObject!(Value)(outdest, true);
	}

	/**
	 * Calculates the intersection of two values.  If the values have
	 * a non-empty intersection, the value representing the intersection
	 * is placed in @dest, unless %NULL.  If the intersection is non-empty,
	 * @dest is not modified.
	 *
	 * Params:
	 *     dest = a uninitialized #GValue that will hold the calculated
	 *         intersection value. May be %NULL if the resulting set if not
	 *         needed.
	 *     value1 = a value to intersect
	 *     value2 = another value to intersect
	 *
	 * Returns: %TRUE if the intersection is non-empty
	 */
	public static bool intersect(out Value dest, Value value1, Value value2)
	{
		GValue* outdest = sliceNew!GValue();

		auto p = gst_value_intersect(outdest, (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;

		dest = ObjectG.getDObject!(Value)(outdest, true);

		return p;
	}

	/**
	 * Tests if the given GValue, if available in a GstStructure (or any other
	 * container) contains a "fixed" (which means: one value) or an "unfixed"
	 * (which means: multiple possible values, such as data lists or data
	 * ranges) value.
	 *
	 * Params:
	 *     value = the #GValue to check
	 *
	 * Returns: true if the value is "fixed".
	 */
	public static bool isFixed(Value value)
	{
		return gst_value_is_fixed((value is null) ? null : value.getValueStruct()) != 0;
	}

	/**
	 * Check that @value1 is a subset of @value2.
	 *
	 * Params:
	 *     value1 = a #GValue
	 *     value2 = a #GValue
	 *
	 * Returns: %TRUE is @value1 is a subset of @value2
	 */
	public static bool isSubset(Value value1, Value value2)
	{
		return gst_value_is_subset((value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;
	}

	/**
	 * Registers functions to perform calculations on #GValue items of a given
	 * type. Each type can only be added once.
	 *
	 * Params:
	 *     table = structure containing functions to register
	 */
	public static void register(GstValueTable* table)
	{
		gst_value_register(table);
	}

	/**
	 * tries to transform the given @value into a string representation that allows
	 * getting back this string later on using gst_value_deserialize().
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     value = a #GValue to serialize
	 *
	 * Returns: the serialization for @value
	 *     or %NULL if none exists
	 */
	public static string serialize(Value value)
	{
		auto retStr = gst_value_serialize((value is null) ? null : value.getValueStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets @value to the bitmask specified by @bitmask.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_BITMASK
	 *     bitmask = the bitmask
	 */
	public static void setBitmask(Value value, ulong bitmask)
	{
		gst_value_set_bitmask((value is null) ? null : value.getValueStruct(), bitmask);
	}

	/**
	 * Sets the contents of @value to @caps. A reference to the
	 * provided @caps will be taken by the @value.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_CAPS
	 *     caps = the caps to set the value to
	 */
	public static void setCaps(Value value, Caps caps)
	{
		gst_value_set_caps((value is null) ? null : value.getValueStruct(), (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Sets the contents of @value to @features.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_CAPS_FEATURES
	 *     features = the features to set the value to
	 */
	public static void setCapsFeatures(Value value, CapsFeatures features)
	{
		gst_value_set_caps_features((value is null) ? null : value.getValueStruct(), (features is null) ? null : features.getCapsFeaturesStruct());
	}

	/**
	 * Sets @value to the range specified by @start and @end.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_DOUBLE_RANGE
	 *     start = the start of the range
	 *     end = the end of the range
	 */
	public static void setDoubleRange(Value value, double start, double end)
	{
		gst_value_set_double_range((value is null) ? null : value.getValueStruct(), start, end);
	}

	/**
	 * Sets @value to the fraction specified by @numerator over @denominator.
	 * The fraction gets reduced to the smallest numerator and denominator,
	 * and if necessary the sign is moved to the numerator.
	 *
	 * Params:
	 *     value = a GValue initialized to #GST_TYPE_FRACTION
	 *     numerator = the numerator of the fraction
	 *     denominator = the denominator of the fraction
	 */
	public static void setFraction(Value value, int numerator, int denominator)
	{
		gst_value_set_fraction((value is null) ? null : value.getValueStruct(), numerator, denominator);
	}

	/**
	 * Sets @value to the range specified by @start and @end.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 *     start = the start of the range (a GST_TYPE_FRACTION GValue)
	 *     end = the end of the range (a GST_TYPE_FRACTION GValue)
	 */
	public static void setFractionRange(Value value, Value start, Value end)
	{
		gst_value_set_fraction_range((value is null) ? null : value.getValueStruct(), (start is null) ? null : start.getValueStruct(), (end is null) ? null : end.getValueStruct());
	}

	/**
	 * Sets @value to the range specified by @numerator_start/@denominator_start
	 * and @numerator_end/@denominator_end.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_FRACTION_RANGE
	 *     numeratorStart = the numerator start of the range
	 *     denominatorStart = the denominator start of the range
	 *     numeratorEnd = the numerator end of the range
	 *     denominatorEnd = the denominator end of the range
	 */
	public static void setFractionRangeFull(Value value, int numeratorStart, int denominatorStart, int numeratorEnd, int denominatorEnd)
	{
		gst_value_set_fraction_range_full((value is null) ? null : value.getValueStruct(), numeratorStart, denominatorStart, numeratorEnd, denominatorEnd);
	}

	/**
	 * Sets @value to the range specified by @start and @end.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT64_RANGE
	 *     start = the start of the range
	 *     end = the end of the range
	 */
	public static void setInt64Range(Value value, long start, long end)
	{
		gst_value_set_int64_range((value is null) ? null : value.getValueStruct(), start, end);
	}

	/**
	 * Sets @value to the range specified by @start, @end and @step.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT64_RANGE
	 *     start = the start of the range
	 *     end = the end of the range
	 *     step = the step of the range
	 */
	public static void setInt64RangeStep(Value value, long start, long end, long step)
	{
		gst_value_set_int64_range_step((value is null) ? null : value.getValueStruct(), start, end, step);
	}

	/**
	 * Sets @value to the range specified by @start and @end.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT_RANGE
	 *     start = the start of the range
	 *     end = the end of the range
	 */
	public static void setIntRange(Value value, int start, int end)
	{
		gst_value_set_int_range((value is null) ? null : value.getValueStruct(), start, end);
	}

	/**
	 * Sets @value to the range specified by @start, @end and @step.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_INT_RANGE
	 *     start = the start of the range
	 *     end = the end of the range
	 *     step = the step of the range
	 */
	public static void setIntRangeStep(Value value, int start, int end, int step)
	{
		gst_value_set_int_range_step((value is null) ? null : value.getValueStruct(), start, end, step);
	}

	/**
	 * Sets the contents of @value to @structure.
	 *
	 * Params:
	 *     value = a GValue initialized to GST_TYPE_STRUCTURE
	 *     structure = the structure to set the value to
	 */
	public static void setStructure(Value value, Structure structure)
	{
		gst_value_set_structure((value is null) ? null : value.getValueStruct(), (structure is null) ? null : structure.getStructureStruct());
	}

	/**
	 * Subtracts @subtrahend from @minuend and stores the result in @dest.
	 * Note that this means subtraction as in sets, not as in mathematics.
	 *
	 * Params:
	 *     dest = the destination value
	 *         for the result if the subtraction is not empty. May be %NULL,
	 *         in which case the resulting set will not be computed, which can
	 *         give a fair speedup.
	 *     minuend = the value to subtract from
	 *     subtrahend = the value to subtract
	 *
	 * Returns: %TRUE if the subtraction is not empty
	 */
	public static bool subtract(out Value dest, Value minuend, Value subtrahend)
	{
		GValue* outdest = sliceNew!GValue();

		auto p = gst_value_subtract(outdest, (minuend is null) ? null : minuend.getValueStruct(), (subtrahend is null) ? null : subtrahend.getValueStruct()) != 0;

		dest = ObjectG.getDObject!(Value)(outdest, true);

		return p;
	}

	alias unio = union_;
	/**
	 * Creates a GValue corresponding to the union of @value1 and @value2.
	 *
	 * Params:
	 *     dest = the destination value
	 *     value1 = a value to union
	 *     value2 = another value to union
	 *
	 * Returns: %TRUE if the union succeeded.
	 */
	public static bool union_(out Value dest, Value value1, Value value2)
	{
		GValue* outdest = sliceNew!GValue();

		auto p = gst_value_union(outdest, (value1 is null) ? null : value1.getValueStruct(), (value2 is null) ? null : value2.getValueStruct()) != 0;

		dest = ObjectG.getDObject!(Value)(outdest, true);

		return p;
	}
}
