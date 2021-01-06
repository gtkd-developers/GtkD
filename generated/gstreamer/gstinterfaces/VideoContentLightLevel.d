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


module gstinterfaces.VideoContentLightLevel;

private import glib.Str;
private import gstinterfaces.c.functions;
public  import gstinterfaces.c.types;
private import gstreamer.Caps;


/**
 * Content light level information specified in CEA-861.3, Appendix A.
 *
 * Since: 1.18
 */
public class VideoContentLightLevel
{
	/** the main Gtk struct */
	protected GstVideoContentLightLevel* gstVideoContentLightLevel;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstVideoContentLightLevel* getVideoContentLightLevelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstVideoContentLightLevel;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstVideoContentLightLevel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstVideoContentLightLevel* gstVideoContentLightLevel, bool ownedRef = false)
	{
		this.gstVideoContentLightLevel = gstVideoContentLightLevel;
		this.ownedRef = ownedRef;
	}


	/**
	 * Parse @caps and update @linfo
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Returns: %TRUE if @linfo was successfully set to @caps
	 *
	 * Since: 1.18
	 */
	public bool addToCaps(Caps caps)
	{
		return gst_video_content_light_level_add_to_caps(gstVideoContentLightLevel, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Parse @caps and update @linfo
	 *
	 * Params:
	 *     caps = a #GstCaps
	 *
	 * Returns: if @caps has #GstVideoContentLightLevel and could be parsed
	 *
	 * Since: 1.18
	 */
	public bool fromCaps(Caps caps)
	{
		return gst_video_content_light_level_from_caps(gstVideoContentLightLevel, (caps is null) ? null : caps.getCapsStruct()) != 0;
	}

	/**
	 * Parse the value of content-light-level caps field and update @minfo
	 * with the parsed values.
	 *
	 * Params:
	 *     level = a content-light-level string from caps
	 *
	 * Returns: %TRUE if @linfo points to valid #GstVideoContentLightLevel.
	 *
	 * Since: 1.18
	 */
	public bool fromString(string level)
	{
		return gst_video_content_light_level_from_string(gstVideoContentLightLevel, Str.toStringz(level)) != 0;
	}

	/**
	 * Initialize @linfo
	 *
	 * Since: 1.18
	 */
	public void init()
	{
		gst_video_content_light_level_init(gstVideoContentLightLevel);
	}

	/**
	 * Convert @linfo to its string representation.
	 *
	 * Returns: a string representation of @linfo.
	 *
	 * Since: 1.18
	 */
	public override string toString()
	{
		auto retStr = gst_video_content_light_level_to_string(gstVideoContentLightLevel);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
