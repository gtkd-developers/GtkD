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

/*
 * Conversion parameters:
 * inFile  = GTestDBus.html
 * outPack = gio
 * outFile = TestDBus
 * strct   = GTestDBus
 * realStrct=
 * ctorStrct=
 * clss    = TestDBus
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_test_dbus_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TestDBus;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * Helper to test D-Bus code wihtout messing up with user' session bus.
 */
public class TestDBus : ObjectG
{
	
	/** the main Gtk struct */
	protected GTestDBus* gTestDBus;
	
	
	public GTestDBus* getTestDBusStruct()
	{
		return gTestDBus;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTestDBus;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTestDBus* gTestDBus)
	{
		super(cast(GObject*)gTestDBus);
		this.gTestDBus = gTestDBus;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTestDBus = cast(GTestDBus*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new GTestDBus object.
	 * Params:
	 * flags = a GTestDBusFlags
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GTestDBusFlags flags)
	{
		// GTestDBus * g_test_dbus_new (GTestDBusFlags flags);
		auto p = g_test_dbus_new(flags);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_test_dbus_new(flags)");
		}
		this(cast(GTestDBus*) p);
	}
	
	/**
	 * Gets the flags of the GTestDBus object.
	 * Returns: the value of "flags" property
	 */
	public GTestDBusFlags getFlags()
	{
		// GTestDBusFlags g_test_dbus_get_flags (GTestDBus *self);
		return g_test_dbus_get_flags(gTestDBus);
	}
	
	/**
	 * Get the address on which dbus-daemon is running. if g_test_dbus_up() has not
	 * been called yet, NULL is returned. This can be used with
	 * g_dbus_connection_new_for_address()
	 * Returns: the address of the bus, or NULL.
	 */
	public string getBusAddress()
	{
		// const gchar * g_test_dbus_get_bus_address (GTestDBus *self);
		return Str.toString(g_test_dbus_get_bus_address(gTestDBus));
	}
	
	/**
	 * Add a path where dbus-daemon will lookup for .services files. This can't be
	 * called after g_test_dbus_up().
	 * Params:
	 * path = path to a directory containing .service files
	 */
	public void addServiceDir(string path)
	{
		// void g_test_dbus_add_service_dir (GTestDBus *self,  const gchar *path);
		g_test_dbus_add_service_dir(gTestDBus, Str.toStringz(path));
	}
	
	/**
	 * Start a dbus-daemon instance and set DBUS_SESSION_BUS_ADDRESS. After this
	 * call, it is safe for unit tests to start sending messages on the session bug.
	 * If this function is called from setup callback of g_test_add(),
	 * g_test_dbus_down() must be called in its teardown callback.
	 * If this function is called from unit test's main(), then g_test_dbus_down()
	 * must be called after g_test_run().
	 */
	public void up()
	{
		// void g_test_dbus_up (GTestDBus *self);
		g_test_dbus_up(gTestDBus);
	}
	
	/**
	 * Stop the session bus started by g_test_dbus_up().
	 * Unlike g_test_dbus_down(), this won't verify the GDBusConnection
	 * singleton returned by g_bus_get() or g_bus_get_sync() is destroyed. Unit
	 * tests wanting to verify behaviour after the session bus has been stopped
	 * can use this function but should still call g_test_dbus_down() when done.
	 */
	public void stop()
	{
		// void g_test_dbus_stop (GTestDBus *self);
		g_test_dbus_stop(gTestDBus);
	}
	
	/**
	 * Stop the session bus started by g_test_dbus_up().
	 * This will wait for the singleton returned by g_bus_get() or g_bus_get_sync()
	 * is destroyed. This is done to ensure that the next unit test won't get a
	 * leaked singleton from this test.
	 */
	public void down()
	{
		// void g_test_dbus_down (GTestDBus *self);
		g_test_dbus_down(gTestDBus);
	}
	
	/**
	 * Unset DISPLAY and DBUS_SESSION_BUS_ADDRESS env variables to ensure the test
	 * won't use user's session bus.
	 * This is useful for unit tests that want to verify behaviour when no session
	 * bus is running. It is not necessary to call this if unit test already calls
	 * g_test_dbus_up() before acquiring the session bus.
	 */
	public static void unset()
	{
		// void g_test_dbus_unset (void);
		g_test_dbus_unset();
	}
}
