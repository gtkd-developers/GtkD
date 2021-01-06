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


module gst.base.BaseParseFrame;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gtkd.Loader;


/**
 * Frame (context) data passed to each frame parsing virtual methods.  In
 * addition to providing the data to be checked for a valid frame or an already
 * identified frame, it conveys additional metadata or control information
 * from and to the subclass w.r.t. the particular frame in question (rather
 * than global parameters).  Some of these may apply to each parsing stage, others
 * only to some a particular one.  These parameters are effectively zeroed at start
 * of each frame's processing, i.e. parsing virtual method invocation sequence.
 */
public class BaseParseFrame
{
	/** the main Gtk struct */
	protected GstBaseParseFrame* gstBaseParseFrame;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstBaseParseFrame* getBaseParseFrameStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstBaseParseFrame;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstBaseParseFrame;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstBaseParseFrame* gstBaseParseFrame, bool ownedRef = false)
	{
		this.gstBaseParseFrame = gstBaseParseFrame;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_base_parse_frame_free(gstBaseParseFrame);
	}


	/** */
	public static GType getType()
	{
		return gst_base_parse_frame_get_type();
	}

	/**
	 * Allocates a new #GstBaseParseFrame. This function is mainly for bindings,
	 * elements written in C should usually allocate the frame on the stack and
	 * then use gst_base_parse_frame_init() to initialise it.
	 *
	 * Params:
	 *     buffer = a #GstBuffer
	 *     flags = the flags
	 *     overhead = number of bytes in this frame which should be counted as
	 *         metadata overhead, ie. not used to calculate the average bitrate.
	 *         Set to -1 to mark the entire frame as metadata. If in doubt, set to 0.
	 *
	 * Returns: a newly-allocated #GstBaseParseFrame. Free with
	 *     gst_base_parse_frame_free() when no longer needed.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Buffer buffer, GstBaseParseFrameFlags flags, int overhead)
	{
		auto __p = gst_base_parse_frame_new((buffer is null) ? null : buffer.getBufferStruct(), flags, overhead);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstBaseParseFrame*) __p);
	}

	/**
	 * Copies a #GstBaseParseFrame.
	 *
	 * Returns: A copy of @frame
	 *
	 * Since: 1.12.1
	 */
	public BaseParseFrame copy()
	{
		auto __p = gst_base_parse_frame_copy(gstBaseParseFrame);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BaseParseFrame)(cast(GstBaseParseFrame*) __p, true);
	}

	/**
	 * Frees the provided @frame.
	 */
	public void free()
	{
		gst_base_parse_frame_free(gstBaseParseFrame);
		ownedRef = false;
	}

	/**
	 * Sets a #GstBaseParseFrame to initial state.  Currently this means
	 * all public fields are zero-ed and a private flag is set to make
	 * sure gst_base_parse_frame_free() only frees the contents but not
	 * the actual frame. Use this function to initialise a #GstBaseParseFrame
	 * allocated on the stack.
	 */
	public void init()
	{
		gst_base_parse_frame_init(gstBaseParseFrame);
	}
}
