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
 * A helper class for testing code which uses D-Bus without touching the user's
 * session bus.
 *
 * Creating unit tests using GTestDBus
 *
 *  Testing of D-Bus services can be tricky because normally we only ever run
 *  D-Bus services over an existing instance of the D-Bus daemon thus we
 *  usually don't activate D-Bus services that are not yet installed into the
 *  target system. The GTestDBus object makes this easier for us by taking care
 *  of the lower level tasks such as running a private D-Bus daemon and looking
 *  up uninstalled services in customizable locations, typically in your source code tree.
 *
 *  The first thing you will need is a separate service description file for the
 *  D-Bus daemon. Typically a 'services' subdirectory of your 'tests' directory
 *  is a good place to put this file.
 *
 *  The service file should list your service along with an absolute path to the
 *  uninstalled service executable in your source tree. Using autotools we would
 *  achieve this by adding a file such as 'my-server.service.in' in the services
 *  directory and have it processed by configure.
 *
 * $(DDOC_COMMENT example)
 *
 *  You will also need to indicate this service directory in your test
 *  fixtures, so you will need to pass the path while compiling your
 *  test cases. Typically this is done with autotools with an added
 *  preprocessor flag specified to compile your tests such as:
 *
 * $(DDOC_COMMENT example)
 *
 *  Once you have a service definition file which is local to your source tree,
 *  you can proceed to setup a GTest fixture using the GTestDBus scaffolding.
 *
 * $(DDOC_COMMENT example)
 *
 *  Note that these examples only deal with isolating the D-Bus aspect of your
 *  service. To successfully run isolated unit tests on your service you may need
 *  some additional modifications to your test case fixture. For example; if your
 *  service uses GSettings and installs a schema then it is important that your test service
 *  not load the schema in the ordinary installed location (chances are that your service
 *  and schema files are not yet installed, or worse; there is an older version of the
 *  schema file sitting in the install location).
 *
 *  Most of the time we can work around these obstacles using the environment. Since the
 *  environment is inherited by the D-Bus daemon created by GTestDBus and then in turn
 *  inherited by any services the D-Bus daemon activates, using the setup routine for your
 *  fixture is a practical place to help sandbox your runtime environment. For the rather
 *  typical GSettings case we can work around this by setting GSETTINGS_SCHEMA_DIR to the
 *  in tree directory holding your schemas in the above fixture_setup() routine.
 *
 *  The GSettings schemas need to be locally pre-compiled for this to work. This can be achieved
 *  by compiling the schemas locally as a step before running test cases, an autotools setup might
 *  do the following in the directory holding schemas:
 *
 * $(DDOC_COMMENT example)
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
	 * call, it is safe for unit tests to start sending messages on the session bus.
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
