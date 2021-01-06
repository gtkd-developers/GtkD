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


module gstinterfaces.VideoBarMeta;

private import gstinterfaces.c.functions;
public  import gstinterfaces.c.types;


/**
 * Bar data should be included in video user data
 * whenever the rectangular picture area containing useful information
 * does not extend to the full height or width of the coded frame
 * and AFD alone is insufficient to describe the extent of the image.
 * 
 * Note: either vertical or horizontal bars are specified, but not both.
 * 
 * For more details, see:
 * 
 * https://www.atsc.org/wp-content/uploads/2015/03/a_53-Part-4-2009.pdf
 * 
 * and SMPTE ST2016-1
 *
 * Since: 1.18
 */
public struct VideoBarMeta
{

	/** */
	public static GstMetaInfo* getInfo()
	{
		return gst_video_bar_meta_get_info();
	}
}
