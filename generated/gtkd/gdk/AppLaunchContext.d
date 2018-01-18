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
private import gdk.Screen;
private import gdk.c.functions;
public  import gdk.c.types;
private import gio.AppLaunchContext : GioAppLaunchContext = AppLaunchContext;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.gdktypes;


/**
 * GdkAppLaunchContext is an implementation of #GAppLaunchContext that
 * handles launching an application in a graphical context. It provides
 * startup notification and allows to launch applications on a specific
 * screen or workspace.
 * 
 * ## Launching an application
 * 
 * |[<!-- language="C" -->
 * GdkAppLaunchContext *context;
 * 
 * context = gdk_display_get_app_launch_context (display);
 * 
 * gdk_app_launch_context_set_screen (screen);
 * gdk_app_launch_context_set_timestamp (event->time);
 * 
 * if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
 * g_warning ("Launching failed: %s\n", error->message);
 * 
 * g_object_unref (context);
 * ]|
 */
public class AppLaunchContext : GioAppLaunchContext
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
	 * Creates a new #GdkAppLaunchContext.
	 *
	 * Deprecated: Use gdk_display_get_app_launch_context() instead
	 *
	 * Returns: a new #GdkAppLaunchContext
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gdk_app_launch_context_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkAppLaunchContext*) p, true);
	}

	/**
	 * Sets the workspace on which applications will be launched when
	 * using this context when running under a window manager that
	 * supports multiple workspaces, as described in the
	 * [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
	 *
	 * When the workspace is not specified or @desktop is set to -1,
	 * it is up to the window manager to pick one, typically it will
	 * be the current workspace.
	 *
	 * Params:
	 *     desktop = the number of a workspace, or -1
	 *
	 * Since: 2.14
	 */
	public void setDesktop(int desktop)
	{
		gdk_app_launch_context_set_desktop(gdkAppLaunchContext, desktop);
	}

	/**
	 * Sets the display on which applications will be launched when
	 * using this context. See also gdk_app_launch_context_set_screen().
	 *
	 * Deprecated: Use gdk_display_get_app_launch_context() instead
	 *
	 * Params:
	 *     display = a #GdkDisplay
	 *
	 * Since: 2.14
	 */
	public void setDisplay(Display display)
	{
		gdk_app_launch_context_set_display(gdkAppLaunchContext, (display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Sets the icon for applications that are launched with this
	 * context.
	 *
	 * Window Managers can use this information when displaying startup
	 * notification.
	 *
	 * See also gdk_app_launch_context_set_icon_name().
	 *
	 * Params:
	 *     icon = a #GIcon, or %NULL
	 *
	 * Since: 2.14
	 */
	public void setIcon(IconIF icon)
	{
		gdk_app_launch_context_set_icon(gdkAppLaunchContext, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets the icon for applications that are launched with this context.
	 * The @icon_name will be interpreted in the same way as the Icon field
	 * in desktop files. See also gdk_app_launch_context_set_icon().
	 *
	 * If both @icon and @icon_name are set, the @icon_name takes priority.
	 * If neither @icon or @icon_name is set, the icon is taken from either
	 * the file that is passed to launched application or from the #GAppInfo
	 * for the launched application itself.
	 *
	 * Params:
	 *     iconName = an icon name, or %NULL
	 *
	 * Since: 2.14
	 */
	public void setIconName(string iconName)
	{
		gdk_app_launch_context_set_icon_name(gdkAppLaunchContext, Str.toStringz(iconName));
	}

	/**
	 * Sets the screen on which applications will be launched when
	 * using this context. See also gdk_app_launch_context_set_display().
	 *
	 * If both @screen and @display are set, the @screen takes priority.
	 * If neither @screen or @display are set, the default screen and
	 * display are used.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 2.14
	 */
	public void setScreen(Screen screen)
	{
		gdk_app_launch_context_set_screen(gdkAppLaunchContext, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Sets the timestamp of @context. The timestamp should ideally
	 * be taken from the event that triggered the launch.
	 *
	 * Window managers can use this information to avoid moving the
	 * focus to the newly launched application when the user is busy
	 * typing in another window. This is also known as 'focus stealing
	 * prevention'.
	 *
	 * Params:
	 *     timestamp = a timestamp
	 *
	 * Since: 2.14
	 */
	public void setTimestamp(uint timestamp)
	{
		gdk_app_launch_context_set_timestamp(gdkAppLaunchContext, timestamp);
	}
}
