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


module gdk.ToplevelIF;

private import gdk.Device;
private import gdk.Event;
private import gdk.Surface;
private import gdk.Texture;
private import gdk.ToplevelLayout;
private import gdk.ToplevelSize;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListG;
private import glib.Str;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GdkToplevel is a freestanding toplevel surface.
 * 
 * The #GdkToplevel interface provides useful APIs for
 * interacting with the windowing system, such as controlling
 * maximization and size of the surface, setting icons and
 * transient parents for dialogs.
 */
public interface ToplevelIF{
	/** Get the main Gtk struct */
	public GdkToplevel* getToplevelStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gdk_toplevel_get_type();
	}

	/**
	 * Begins an interactive move operation (for a toplevel surface).
	 * You might use this function to implement draggable titlebars.
	 *
	 * Params:
	 *     device = the device used for the operation
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag
	 */
	public void beginMove(Device device, int button, double x, double y, uint timestamp);

	/**
	 * Begins an interactive resize operation (for a toplevel surface).
	 * You might use this function to implement a “window resize grip.”
	 *
	 * Params:
	 *     edge = the edge or corner from which the drag is started
	 *     device = the device used for the operation
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag (use gdk_event_get_time())
	 */
	public void beginResize(GdkSurfaceEdge edge, Device device, int button, double x, double y, uint timestamp);

	/**
	 * Sets keyboard focus to @surface.
	 *
	 * In most cases, gtk_window_present_with_time() should be used
	 * on a #GtkWindow, rather than calling this function.
	 *
	 * Params:
	 *     timestamp = timestamp of the event triggering the surface focus
	 */
	public void focus(uint timestamp);

	/**
	 * Gets the bitwise OR of the currently active surface state flags,
	 * from the #GdkToplevelState enumeration.
	 *
	 * Returns: surface state bitfield
	 */
	public GdkToplevelState getState();

	/**
	 * Requests that the @toplevel inhibit the system shortcuts, asking the
	 * desktop environment/windowing system to let all keyboard events reach
	 * the surface, as long as it is focused, instead of triggering system
	 * actions.
	 *
	 * If granted, the rerouting remains active until the default shortcuts
	 * processing is restored with gdk_toplevel_restore_system_shortcuts(),
	 * or the request is revoked by the desktop environment, windowing system
	 * or the user.
	 *
	 * A typical use case for this API is remote desktop or virtual machine
	 * viewers which need to inhibit the default system keyboard shortcuts
	 * so that the remote session or virtual host gets those instead of the
	 * local environment.
	 *
	 * The windowing system or desktop environment may ask the user to grant
	 * or deny the request or even choose to ignore the request entirely.
	 *
	 * The caller can be notified whenever the request is granted or revoked
	 * by listening to the GdkToplevel::shortcuts-inhibited property.
	 *
	 * Params:
	 *     event = the #GdkEvent that is triggering the inhibit
	 *         request, or %NULL if none is available.
	 */
	public void inhibitSystemShortcuts(Event event);

	/**
	 * Asks to lower the @toplevel below other windows.
	 *
	 * The windowing system may choose to ignore the request.
	 *
	 * Returns: %TRUE if the surface was lowered
	 */
	public bool lower();

	/**
	 * Asks to minimize the @toplevel.
	 *
	 * The windowing system may choose to ignore the request.
	 *
	 * Returns: %TRUE if the surface was minimized
	 */
	public bool minimize();

	/**
	 * Present @toplevel after having processed the #GdkToplevelLayout rules.
	 * If the toplevel was previously not showing, it will be showed,
	 * otherwise it will change layout according to @layout.
	 *
	 * GDK may emit the 'compute-size' signal to let the user of this toplevel
	 * compute the preferred size of the toplevel surface. See
	 * #GdkToplevel::compute-size for details.
	 *
	 * Presenting is asynchronous and the specified layout parameters are not
	 * guaranteed to be respected.
	 *
	 * Params:
	 *     layout = the #GdkToplevelLayout object used to layout
	 */
	public void present(ToplevelLayout layout);

	/**
	 * Restore default system keyboard shortcuts which were previously
	 * requested to be inhibited by gdk_toplevel_inhibit_system_shortcuts().
	 */
	public void restoreSystemShortcuts();

	/**
	 * Setting @decorated to %FALSE hints the desktop environment
	 * that the surface has its own, client-side decorations and
	 * does not need to have window decorations added.
	 *
	 * Params:
	 *     decorated = %TRUE to request decorations
	 */
	public void setDecorated(bool decorated);

	/**
	 * Setting @deletable to %TRUE hints the desktop environment
	 * that it should offer the user a way to close the surface.
	 *
	 * Params:
	 *     deletable = %TRUE to request a delete button
	 */
	public void setDeletable(bool deletable);

	/**
	 * Sets a list of icons for the surface.
	 *
	 * One of these will be used to represent the surface in iconic form.
	 * The icon may be shown in window lists or task bars. Which icon
	 * size is shown depends on the window manager. The window manager
	 * can scale the icon but setting several size icons can give better
	 * image quality.
	 *
	 * Note that some platforms don't support surface icons.
	 *
	 * Params:
	 *     surfaces = A list of textures to use as icon, of different sizes
	 */
	public void setIconList(ListG surfaces);

	/**
	 * The application can use this hint to tell the
	 * window manager that a certain surface has modal
	 * behaviour. The window manager can use this information
	 * to handle modal surfaces in a special way.
	 *
	 * You should only use this on surfaces for which you have
	 * previously called gdk_toplevel_set_transient_for().
	 *
	 * Params:
	 *     modal = %TRUE if the surface is modal, %FALSE otherwise.
	 */
	public void setModal(bool modal);

	/**
	 * When using GTK, typically you should use gtk_window_set_startup_id()
	 * instead of this low-level function.
	 *
	 * Params:
	 *     startupId = a string with startup-notification identifier
	 */
	public void setStartupId(string startupId);

	/**
	 * Sets the title of a toplevel surface, to be displayed in the titlebar,
	 * in lists of windows, etc.
	 *
	 * Params:
	 *     title = title of @surface
	 */
	public void setTitle(string title);

	/**
	 * Indicates to the window manager that @surface is a transient dialog
	 * associated with the application surface @parent. This allows the
	 * window manager to do things like center @surface on @parent and
	 * keep @surface above @parent.
	 *
	 * See gtk_window_set_transient_for() if you’re using #GtkWindow or
	 * #GtkDialog.
	 *
	 * Params:
	 *     parent = another toplevel #GdkSurface
	 */
	public void setTransientFor(Surface parent);

	/**
	 * Asks the windowing system to show the window menu.
	 *
	 * The window menu is the menu shown when right-clicking the titlebar
	 * on traditional windows managed by the window manager. This is useful
	 * for windows using client-side decorations, activating it with a
	 * right-click on the window decorations.
	 *
	 * Params:
	 *     event = a #GdkEvent to show the menu for
	 *
	 * Returns: %TRUE if the window menu was shown and %FALSE otherwise.
	 */
	public bool showWindowMenu(Event event);

	/**
	 * Returns whether the desktop environment supports
	 * tiled window states.
	 *
	 * Returns: %TRUE if the desktop environment supports
	 *     tiled window states
	 */
	public bool supportsEdgeConstraints();

	/**
	 * Compute the desired size of the toplevel, given the information passed via
	 * the #GdkToplevelSize object.
	 *
	 * It will normally be emitted during or after gdk_toplevel_present(),
	 * depending on the configuration received by the windowing system. It may
	 * also be emitted at any other point in time, in response to the windowing
	 * system spontaneously changing the configuration.
	 *
	 * It is the responsibility of the GdkToplevel user to handle this signal;
	 * failing to do so will result in an arbitrary size being used as a result.
	 *
	 * Params:
	 *     size = a #GdkToplevelSize
	 */
	gulong addOnComputeSize(void delegate(ToplevelSize, ToplevelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
