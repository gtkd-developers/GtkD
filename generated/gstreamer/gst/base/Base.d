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


module gst.base.Base;

private import glib.Str;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gstreamer.Caps;
private import gstreamer.ObjectGst;
private import gstreamer.Pad;


/** */
public struct Base
{

	/**
	 * Tries to find what type of data is flowing from the given source #GstPad.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     src = A source #GstPad
	 *     size = The length in bytes
	 *
	 * Returns: the #GstCaps corresponding to the data
	 *     stream.  Returns %NULL if no #GstCaps matches the data stream.
	 */
	public static Caps typeFindHelper(Pad src, ulong size)
	{
		auto __p = gst_type_find_helper((src is null) ? null : src.getPadStruct(), size);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Tries to find what type of data is contained in the given #GstBuffer, the
	 * assumption being that the buffer represents the beginning of the stream or
	 * file.
	 *
	 * All available typefinders will be called on the data in order of rank. If
	 * a typefinding function returns a probability of %GST_TYPE_FIND_MAXIMUM,
	 * typefinding is stopped immediately and the found caps will be returned
	 * right away. Otherwise, all available typefind functions will the tried,
	 * and the caps with the highest probability will be returned, or %NULL if
	 * the content of the buffer could not be identified.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = object doing the typefinding, or %NULL (used for logging)
	 *     buf = a #GstBuffer with data to typefind
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the #GstCaps corresponding to the data,
	 *     or %NULL if no type could be found. The caller should free the caps
	 *     returned with gst_caps_unref().
	 */
	public static Caps typeFindHelperForBuffer(ObjectGst obj, Buffer buf, out GstTypeFindProbability prob)
	{
		auto __p = gst_type_find_helper_for_buffer((obj is null) ? null : obj.getObjectGstStruct(), (buf is null) ? null : buf.getBufferStruct(), &prob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Tries to find what type of data is contained in the given @data, the
	 * assumption being that the data represents the beginning of the stream or
	 * file.
	 *
	 * All available typefinders will be called on the data in order of rank. If
	 * a typefinding function returns a probability of %GST_TYPE_FIND_MAXIMUM,
	 * typefinding is stopped immediately and the found caps will be returned
	 * right away. Otherwise, all available typefind functions will the tried,
	 * and the caps with the highest probability will be returned, or %NULL if
	 * the content of @data could not be identified.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = object doing the typefinding, or %NULL (used for logging)
	 *     data = * a pointer with data to typefind
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the #GstCaps corresponding to the data,
	 *     or %NULL if no type could be found. The caller should free the caps
	 *     returned with gst_caps_unref().
	 */
	public static Caps typeFindHelperForData(ObjectGst obj, ubyte[] data, out GstTypeFindProbability prob)
	{
		auto __p = gst_type_find_helper_for_data((obj is null) ? null : obj.getObjectGstStruct(), data.ptr, cast(size_t)data.length, &prob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Tries to find the best #GstCaps associated with @extension.
	 *
	 * All available typefinders will be checked against the extension in order
	 * of rank. The caps of the first typefinder that can handle @extension will be
	 * returned.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = object doing the typefinding, or %NULL (used for logging)
	 *     extension = an extension
	 *
	 * Returns: the #GstCaps corresponding to
	 *     @extension, or %NULL if no type could be found. The caller should free
	 *     the caps returned with gst_caps_unref().
	 */
	public static Caps typeFindHelperForExtension(ObjectGst obj, string extension)
	{
		auto __p = gst_type_find_helper_for_extension((obj is null) ? null : obj.getObjectGstStruct(), Str.toStringz(extension));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Utility function to do pull-based typefinding. Unlike gst_type_find_helper()
	 * however, this function will use the specified function @func to obtain the
	 * data needed by the typefind functions, rather than operating on a given
	 * source pad. This is useful mostly for elements like tag demuxers which
	 * strip off data at the beginning and/or end of a file and want to typefind
	 * the stripped data stream before adding their own source pad (the specified
	 * callback can then call the upstream peer pad with offsets adjusted for the
	 * tag size, for example).
	 *
	 * When @extension is not %NULL, this function will first try the typefind
	 * functions for the given extension, which might speed up the typefinding
	 * in many cases.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = A #GstObject that will be passed as first argument to @func
	 *     parent = the parent of @obj or %NULL
	 *     func = A generic #GstTypeFindHelperGetRangeFunction that will
	 *         be used to access data at random offsets when doing the typefinding
	 *     size = The length in bytes
	 *     extension = extension of the media, or %NULL
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the #GstCaps corresponding to the data
	 *     stream.  Returns %NULL if no #GstCaps matches the data stream.
	 */
	public static Caps typeFindHelperGetRange(ObjectGst obj, ObjectGst parent, GstTypeFindHelperGetRangeFunction func, ulong size, string extension, out GstTypeFindProbability prob)
	{
		auto __p = gst_type_find_helper_get_range((obj is null) ? null : obj.getObjectGstStruct(), (parent is null) ? null : parent.getObjectGstStruct(), func, size, Str.toStringz(extension), &prob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Tries to find what type of data is contained in the given #GstBuffer, the
	 * assumption being that the buffer represents the beginning of the stream or
	 * file.
	 *
	 * All available typefinders will be called on the data in order of rank. If
	 * a typefinding function returns a probability of %GST_TYPE_FIND_MAXIMUM,
	 * typefinding is stopped immediately and the found caps will be returned
	 * right away. Otherwise, all available typefind functions will the tried,
	 * and the caps with the highest probability will be returned, or %NULL if
	 * the content of the buffer could not be identified.
	 *
	 * When @extension is not %NULL, this function will first try the typefind
	 * functions for the given extension, which might speed up the typefinding
	 * in many cases.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = object doing the typefinding, or %NULL (used for logging)
	 *     buf = a #GstBuffer with data to typefind
	 *     extension = extension of the media, or %NULL
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the #GstCaps corresponding to the data,
	 *     or %NULL if no type could be found. The caller should free the caps
	 *     returned with gst_caps_unref().
	 *
	 * Since: 1.16
	 */
	public static Caps typeFindHelperForBufferWithExtension(ObjectGst obj, Buffer buf, string extension, out GstTypeFindProbability prob)
	{
		auto __p = gst_type_find_helper_for_buffer_with_extension((obj is null) ? null : obj.getObjectGstStruct(), (buf is null) ? null : buf.getBufferStruct(), Str.toStringz(extension), &prob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Tries to find what type of data is contained in the given @data, the
	 * assumption being that the data represents the beginning of the stream or
	 * file.
	 *
	 * All available typefinders will be called on the data in order of rank. If
	 * a typefinding function returns a probability of %GST_TYPE_FIND_MAXIMUM,
	 * typefinding is stopped immediately and the found caps will be returned
	 * right away. Otherwise, all available typefind functions will the tried,
	 * and the caps with the highest probability will be returned, or %NULL if
	 * the content of @data could not be identified.
	 *
	 * When @extension is not %NULL, this function will first try the typefind
	 * functions for the given extension, which might speed up the typefinding
	 * in many cases.
	 *
	 * Free-function: gst_caps_unref
	 *
	 * Params:
	 *     obj = object doing the typefinding, or %NULL (used for logging)
	 *     data = * a pointer with data to typefind
	 *     extension = extension of the media, or %NULL
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the #GstCaps corresponding to the data,
	 *     or %NULL if no type could be found. The caller should free the caps
	 *     returned with gst_caps_unref().
	 *
	 * Since: 1.16
	 */
	public static Caps typeFindHelperForDataWithExtension(ObjectGst obj, ubyte[] data, string extension, out GstTypeFindProbability prob)
	{
		auto __p = gst_type_find_helper_for_data_with_extension((obj is null) ? null : obj.getObjectGstStruct(), data.ptr, cast(size_t)data.length, Str.toStringz(extension), &prob);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Caps)(cast(GstCaps*) __p, true);
	}

	/**
	 * Utility function to do pull-based typefinding. Unlike gst_type_find_helper()
	 * however, this function will use the specified function @func to obtain the
	 * data needed by the typefind functions, rather than operating on a given
	 * source pad. This is useful mostly for elements like tag demuxers which
	 * strip off data at the beginning and/or end of a file and want to typefind
	 * the stripped data stream before adding their own source pad (the specified
	 * callback can then call the upstream peer pad with offsets adjusted for the
	 * tag size, for example).
	 *
	 * When @extension is not %NULL, this function will first try the typefind
	 * functions for the given extension, which might speed up the typefinding
	 * in many cases.
	 *
	 * Params:
	 *     obj = A #GstObject that will be passed as first argument to @func
	 *     parent = the parent of @obj or %NULL
	 *     func = A generic #GstTypeFindHelperGetRangeFunction that will
	 *         be used to access data at random offsets when doing the typefinding
	 *     size = The length in bytes
	 *     extension = extension of the media, or %NULL
	 *     caps = returned caps
	 *     prob = location to store the probability of the found
	 *         caps, or %NULL
	 *
	 * Returns: the last %GstFlowReturn from pulling a buffer or %GST_FLOW_OK if
	 *     typefinding was successful.
	 *
	 * Since: 1.14.3
	 */
	public static GstFlowReturn typeFindHelperGetRangeFull(ObjectGst obj, ObjectGst parent, GstTypeFindHelperGetRangeFunction func, ulong size, string extension, out Caps caps, out GstTypeFindProbability prob)
	{
		GstCaps* outcaps = null;

		auto __p = gst_type_find_helper_get_range_full((obj is null) ? null : obj.getObjectGstStruct(), (parent is null) ? null : parent.getObjectGstStruct(), func, size, Str.toStringz(extension), &outcaps, &prob);

		caps = ObjectG.getDObject!(Caps)(outcaps);

		return __p;
	}
}
