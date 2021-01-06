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


module gstreamer.PadProbeInfo;

private import gobject.ObjectG;
private import gstreamer.Buffer;
private import gstreamer.BufferList;
private import gstreamer.Event;
private import gstreamer.Query;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * Info passed in the #GstPadProbeCallback.
 */
public class PadProbeInfo
{
	/** the main Gtk struct */
	protected GstPadProbeInfo* gstPadProbeInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstPadProbeInfo* getPadProbeInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPadProbeInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPadProbeInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPadProbeInfo* gstPadProbeInfo, bool ownedRef = false)
	{
		this.gstPadProbeInfo = gstPadProbeInfo;
		this.ownedRef = ownedRef;
	}


	/**
	 * Returns: The #GstBuffer from the probe
	 */
	public Buffer getBuffer()
	{
		auto __p = gst_pad_probe_info_get_buffer(gstPadProbeInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) __p);
	}

	/**
	 * Returns: The #GstBufferList from the probe
	 */
	public BufferList getBufferList()
	{
		auto __p = gst_pad_probe_info_get_buffer_list(gstPadProbeInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BufferList)(cast(GstBufferList*) __p);
	}

	/**
	 * Returns: The #GstEvent from the probe
	 */
	public Event getEvent()
	{
		auto __p = gst_pad_probe_info_get_event(gstPadProbeInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GstEvent*) __p);
	}

	/**
	 * Returns: The #GstQuery from the probe
	 */
	public Query getQuery()
	{
		auto __p = gst_pad_probe_info_get_query(gstPadProbeInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Query)(cast(GstQuery*) __p);
	}
}
