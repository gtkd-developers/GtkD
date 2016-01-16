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


module gstreamer.FlagSet;

private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/** */
public class FlagSet
{

	/** */
	public static GType getType()
	{
		return gst_flagset_get_type();
	}

	/**
	 * Create a new sub-class of #GST_TYPE_FLAG_SET
	 * which will pretty-print the human-readable flags
	 * when serializing, for easier debugging.
	 *
	 * Params:
	 *     flagsType = a #GType of a #G_TYPE_FLAGS type.
	 *
	 * Since: 1.6
	 */
	public static GType register(GType flagsType)
	{
		return gst_flagset_register(flagsType);
	}
}
