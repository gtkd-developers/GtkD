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


module gio.DebugControllerIF;

private import gio.c.functions;
public  import gio.c.types;


/**
 * #GDebugController is an interface to expose control of debugging features and
 * debug output.
 * 
 * It is implemented on Linux using #GDebugControllerDBus, which exposes a D-Bus
 * interface to allow authenticated peers to control debug features in this
 * process.
 * 
 * Whether debug output is enabled is exposed as
 * #GDebugController:debug-enabled. This controls g_log_set_debug_enabled() by
 * default. Application code may connect to the #GObject::notify signal for it
 * to control other parts of its debug infrastructure as necessary.
 * 
 * If your application or service is using the default GLib log writer function,
 * creating one of the built-in implementations of #GDebugController should be
 * all that’s needed to dynamically enable or disable debug output.
 *
 * Since: 2.72
 */
public interface DebugControllerIF{
	/** Get the main Gtk struct */
	public GDebugController* getDebugControllerStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_debug_controller_get_type();
	}

	/**
	 * Get the value of #GDebugController:debug-enabled.
	 *
	 * Returns: %TRUE if debug output should be exposed, %FALSE otherwise
	 *
	 * Since: 2.72
	 */
	public bool getDebugEnabled();

	/**
	 * Set the value of #GDebugController:debug-enabled.
	 *
	 * Params:
	 *     debugEnabled = %TRUE if debug output should be exposed, %FALSE otherwise
	 *
	 * Since: 2.72
	 */
	public void setDebugEnabled(bool debugEnabled);
}
