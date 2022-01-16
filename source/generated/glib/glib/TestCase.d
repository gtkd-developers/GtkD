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


module glib.TestCase;

private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * An opaque structure representing a test case.
 */
public class TestCase
{
	/** the main Gtk struct */
	protected GTestCase* gTestCase;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GTestCase* getTestCaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTestCase;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTestCase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTestCase* gTestCase, bool ownedRef = false)
	{
		this.gTestCase = gTestCase;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_test_case_free(gTestCase);
	}


	/**
	 * Free the @test_case.
	 *
	 * Since: 2.70
	 */
	public void free()
	{
		g_test_case_free(gTestCase);
		ownedRef = false;
	}
}
