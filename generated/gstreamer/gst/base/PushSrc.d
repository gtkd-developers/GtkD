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


module gst.base.PushSrc;

private import gst.base.BaseSrc;
private import gst.base.c.functions;
public  import gst.base.c.types;


/**
 * This class is mostly useful for elements that cannot do
 * random access, or at least very slowly. The source usually
 * prefers to push out a fixed size buffer.
 * 
 * Subclasses usually operate in a format that is different from the
 * default GST_FORMAT_BYTES format of #GstBaseSrc.
 * 
 * Classes extending this base class will usually be scheduled
 * in a push based mode. If the peer accepts to operate without
 * offsets and within the limits of the allowed block size, this
 * class can operate in getrange based mode automatically. To make
 * this possible, the subclass should implement and override the
 * SCHEDULING query.
 * 
 * The subclass should extend the methods from the baseclass in
 * addition to the ::create method.
 * 
 * Seeking, flushing, scheduling and sync is all handled by this
 * base class.
 */
public class PushSrc : BaseSrc
{
	/** the main Gtk struct */
	protected GstPushSrc* gstPushSrc;

	/** Get the main Gtk struct */
	public GstPushSrc* getPushSrcStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPushSrc;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstPushSrc;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPushSrc* gstPushSrc, bool ownedRef = false)
	{
		this.gstPushSrc = gstPushSrc;
		super(cast(GstBaseSrc*)gstPushSrc, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_push_src_get_type();
	}
}
