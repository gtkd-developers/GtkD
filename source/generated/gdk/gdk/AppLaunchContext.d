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


module gdk.AppLaunchContext;

private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import gio.AppLaunchContext : DGioAppLaunchContext = AppLaunchContext;
private import gio.IconIF;
private import glib.Str;
private import gobject.ObjectG;


/**
 * `GdkAppLaunchContext` handles launching an application in a graphical context.
 * 
 * It is an implementation of `GAppLaunchContext` that provides startup
 * notification and allows to launch applications on a specific workspace.
 * 
 * ## Launching an application
 * 
 * ```c
 * GdkAppLaunchContext *context;
 * 
 * context = gdk_display_get_app_launch_context (display);
 * 
 * gdk_app_launch_context_set_timestamp (gdk_event_get_time (event));
 * 
 * if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
 * g_warning ("Launching failed: %s\n", error->message);
 * 
 * g_object_unref (context);
 * ```
 */
public class AppLaunchContext : DGioAppLaunchContext
{
	/** the main Gtk struct */
	protected GdkAppLaunchContext* gdkAppLaunchContext;

	/** Get the main Gtk struct */
	public GdkAppLaunchContext* getGdkAppLaunchContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkAppLaunchContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkAppLaunchContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkAppLaunchContext* gdkAppLaunchContext, bool ownedRef = false)
	{
		this.gdkAppLaunchContext = gdkAppLaunchContext;
		super(cast(GAppLaunchContext*)gdkAppLaunchContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_app_launch_context_get_type();
	}

	/**
	 * Gets the `GdkDisplay` that @context is for.
	 *
	 * Returns: the display of @context
	 */
	public Display getDisplay()
	{
		auto __p = gdk_app_launch_context_get_display(gdkAppLaunchContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Sets the workspace on which applications will be launched.
	 *
	 * This only works when running under a window manager that
	 * supports multiple workspaces, as described in the
	 * [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
	 * Specifically this sets the `_NET_WM_DESKTOP` property described
	 * in that spec.
	 *
	 * This only works when using the X11 backend.
	 *
	 * When the workspace is not specified or @desktop is set to -1,
	 * it is up to the window manager to pick one, typically it will
	 * be the current workspace.
	 *
	 * Params:
	 *     desktop = the number of a workspace, or -1
	 */
	public void setDesktop(int desktop)
	{
		gdk_app_launch_context_set_desktop(gdkAppLaunchContext, desktop);
	}

	/**
	 * Sets the icon for applications that are launched with this
	 * context.
	 *
	 * Window Managers can use this information when displaying startup
	 * notification.
	 *
	 * See also [method@Gdk.AppLaunchContext.set_icon_name].
	 *
	 * Params:
	 *     icon = a `GIcon`
	 */
	public void setIcon(IconIF icon)
	{
		gdk_app_launch_context_set_icon(gdkAppLaunchContext, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets the icon for applications that are launched with this context.
	 *
	 * The @icon_name will be interpreted in the same way as the Icon field
	 * in desktop files. See also [method@Gdk.AppLaunchContext.set_icon].
	 *
	 * If both @icon and @icon_name are set, the @icon_name takes priority.
	 * If neither @icon or @icon_name is set, the icon is taken from either
	 * the file that is passed to launched application or from the `GAppInfo`
	 * for the launched application itself.
	 *
	 * Params:
	 *     iconName = an icon name
	 */
	public void setIconName(string iconName)
	{
		gdk_app_launch_context_set_icon_name(gdkAppLaunchContext, Str.toStringz(iconName));
	}

	/**
	 * Sets the timestamp of @context.
	 *
	 * The timestamp should ideally be taken from the event that
	 * triggered the launch.
	 *
	 * Window managers can use this information to avoid moving the
	 * focus to the newly launched application when the user is busy
	 * typing in another window. This is also known as 'focus stealing
	 * prevention'.
	 *
	 * Params:
	 *     timestamp = a timestamp
	 */
	public void setTimestamp(uint timestamp)
	{
		gdk_app_launch_context_set_timestamp(gdkAppLaunchContext, timestamp);
	}
}
