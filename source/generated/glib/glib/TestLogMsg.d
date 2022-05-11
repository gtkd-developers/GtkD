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


module glib.TestLogMsg;

private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/** */
public class TestLogMsg
{
	/** the main Gtk struct */
	protected GTestLogMsg* gTestLogMsg;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTestLogMsg* getTestLogMsgStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTestLogMsg;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTestLogMsg;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTestLogMsg* gTestLogMsg, bool ownedRef = false)
	{
		this.gTestLogMsg = gTestLogMsg;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_test_log_msg_free(gTestLogMsg);
	}


	/**
	 * Internal function for gtester to free test log messages, no ABI guarantees provided.
	 */
	public void free()
	{
		g_test_log_msg_free(gTestLogMsg);
		ownedRef = false;
	}
}
