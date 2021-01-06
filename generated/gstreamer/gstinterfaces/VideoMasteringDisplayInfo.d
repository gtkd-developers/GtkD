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


module gstinterfaces.VideoMasteringDisplayInfo;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gstinterfaces.c.functions;
public  import gstinterfaces.c.types;
private import gstreamer.Caps;


/**
 * Mastering display color volume information defined by SMPTE ST 2086
 * (a.k.a static HDR metadata).
 *
 * Since: 1.18
 */
public class VideoMasteringDisplayInfo
{
	/** the main Gtk struct */
	protected GstVideoMasteringDisplayInfo* gstVideoMasteringDisplayInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstVideoMasteringDisplayInfo* getVideoMasteringDisplayInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstVideoMasteringDisplayInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstVideoMasteringDisplayInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstVideoMasteringDisplayInfo* gstVideoMasteringDisplayInfo, bool ownedRef = false)
	{
		this.gstVideoMasteringDisplayInfo = gstVideoMasteringDisplayInfo;
		this.ownedRef = ownedRef;
	}


	/**
	 * Set string representation of @minfo to @caps
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Returns: %TRUE if @minfo was successfully set to @caps
	 *
	 * Since: 1.18
	 */
	public bool addToCaps(Caps caps)
	{
		return gst_video_mastering_display_info_add_to_caps(gstVideoMasteringDisplayInfo, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Parse @caps and update @minfo
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Returns: %TRUE if @caps has #GstVideoMasteringDisplayInfo and could be parsed
	 *
	 * Since: 1.18
	 */
	public bool fromCaps(Caps caps)
	{
		return gst_video_mastering_display_info_from_caps(gstVideoMasteringDisplayInfo, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Initialize @minfo
	 *
	 * Since: 1.18
	 */
	public void init()
	{
		gst_video_mastering_display_info_init(gstVideoMasteringDisplayInfo);
	}

	/**
	 * Checks equality between @minfo and @other.
	 *
	 * Params:
	 *     other = a #GstVideoMasteringDisplayInfo
	 *
	 * Returns: %TRUE if @minfo and @other are equal.
	 *
	 * Since: 1.18
	 */
	public bool isEqual(VideoMasteringDisplayInfo other)
	{
		return gst_video_mastering_display_info_is_equal(gstVideoMasteringDisplayInfo, (other is null) ? null : other.getVideoMasteringDisplayInfoStruct()) != 0;
	}

	/**
	 * Convert @minfo to its string representation
	 *
	 * Returns: a string representation of @minfo
	 *
	 * Since: 1.18
	 */
	public override string toString()
	{
		auto retStr = gst_video_mastering_display_info_to_string(gstVideoMasteringDisplayInfo);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Extract #GstVideoMasteringDisplayInfo from @mastering
	 *
	 * Params:
	 *     minfo = a #GstVideoMasteringDisplayInfo
	 *     mastering = a #GstStructure representing #GstVideoMasteringDisplayInfo
	 *
	 * Returns: %TRUE if @minfo was filled with @mastering
	 *
	 * Since: 1.18
	 */
	public static bool fromString(out VideoMasteringDisplayInfo minfo, string mastering)
	{
		GstVideoMasteringDisplayInfo* outminfo = sliceNew!GstVideoMasteringDisplayInfo();

		auto __p = gst_video_mastering_display_info_from_string(outminfo, Str.toStringz(mastering)) != 0;

		minfo = ObjectG.getDObject!(VideoMasteringDisplayInfo)(outminfo, true);

		return __p;
	}
}
