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


module gstreamer.PollFD;

private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * A file descriptor object.
 */
public class PollFD
{
	/** the main Gtk struct */
	protected GstPollFD* gstPollFD;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstPollFD* getPollFDStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstPollFD;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPollFD;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPollFD* gstPollFD, bool ownedRef = false)
	{
		this.gstPollFD = gstPollFD;
		this.ownedRef = ownedRef;
	}


	/**
	 * Initializes @fd. Alternatively you can initialize it with
	 * #GST_POLL_FD_INIT.
	 */
	public void init()
	{
		gst_poll_fd_init(gstPollFD);
	}
}
