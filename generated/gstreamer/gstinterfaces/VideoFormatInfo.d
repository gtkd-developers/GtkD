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


module gstinterfaces.VideoFormatInfo;

private import gstinterfaces.c.functions;
public  import gstinterfaces.c.types;


/**
 * Information for a video format.
 */
public class VideoFormatInfo
{
	/** the main Gtk struct */
	protected GstVideoFormatInfo* gstVideoFormatInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstVideoFormatInfo* getVideoFormatInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstVideoFormatInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstVideoFormatInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstVideoFormatInfo* gstVideoFormatInfo, bool ownedRef = false)
	{
		this.gstVideoFormatInfo = gstVideoFormatInfo;
		this.ownedRef = ownedRef;
	}


	/**
	 * Fill @components with the number of all the components packed in plane @p
	 * for the format @info. A value of -1 in @components indicates that no more
	 * components are packed in the plane.
	 *
	 * Params:
	 *     plane = a plane number
	 *     components = array used to store component numbers
	 *
	 * Since: 1.18
	 */
	public void component(uint plane, out int components)
	{
		gst_video_format_info_component(gstVideoFormatInfo, plane, &components);
	}
}
