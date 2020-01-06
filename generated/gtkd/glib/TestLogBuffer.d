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


module glib.TestLogBuffer;

private import glib.ConstructionException;
private import glib.TestLogMsg;
private import glib.c.functions;
public  import glib.c.types;


/** */
public class TestLogBuffer
{
	/** the main Gtk struct */
	protected GTestLogBuffer* gTestLogBuffer;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTestLogBuffer* getTestLogBufferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTestLogBuffer;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTestLogBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTestLogBuffer* gTestLogBuffer, bool ownedRef = false)
	{
		this.gTestLogBuffer = gTestLogBuffer;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_test_log_buffer_free(gTestLogBuffer);
	}


	/**
	 * Internal function for gtester to free test log messages, no ABI guarantees provided.
	 */
	public void free()
	{
		g_test_log_buffer_free(gTestLogBuffer);
		ownedRef = false;
	}

	/**
	 * Internal function for gtester to retrieve test log messages, no ABI guarantees provided.
	 */
	public TestLogMsg pop()
	{
		auto __p = g_test_log_buffer_pop(gTestLogBuffer);

		if(__p is null)
		{
			return null;
		}

		return new TestLogMsg(cast(GTestLogMsg*) __p);
	}

	/**
	 * Internal function for gtester to decode test log messages, no ABI guarantees provided.
	 */
	public void push(uint nBytes, ubyte* bytes)
	{
		g_test_log_buffer_push(gTestLogBuffer, nBytes, bytes);
	}

	/**
	 * Internal function for gtester to decode test log messages, no ABI guarantees provided.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_test_log_buffer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GTestLogBuffer*) __p);
	}
}
