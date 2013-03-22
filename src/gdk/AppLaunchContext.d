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
 * inFile  = gdk3-Application-launching.html
 * outPack = gdk
 * outFile = AppLaunchContext
 * strct   = GdkAppLaunchContext
 * realStrct=
 * ctorStrct=
 * clss    = AppLaunchContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GioAppLaunchContext
 * implements:
 * prefixes:
 * 	- gdk_app_launch_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.AppLaunchContext : GioAppLaunchContext = AppLaunchContext
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- gio.IconIF
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkDisplay* -> Display
 * 	- GdkScreen* -> Screen
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.AppLaunchContext;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.AppLaunchContext : GioAppLaunchContext = AppLaunchContext;
private import gdk.Display;
private import gdk.Screen;
private import gio.IconIF;




/**
 * GdkAppLaunchContext is an implementation of GAppLaunchContext that
 * handles launching an application in a graphical context. It provides
 * startup notification and allows to launch applications on a specific
 * screen or workspace.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 */
public class AppLaunchContext : GioAppLaunchContext
{
	
	/** the main Gtk struct */
	protected GdkAppLaunchContext* gdkAppLaunchContext;
	
	
	public GdkAppLaunchContext* getGdkAppLaunchContextStruct()
	{
		return gdkAppLaunchContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkAppLaunchContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkAppLaunchContext* gdkAppLaunchContext)
	{
		super(cast(GAppLaunchContext*)gdkAppLaunchContext);
		this.gdkAppLaunchContext = gdkAppLaunchContext;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkAppLaunchContext = cast(GdkAppLaunchContext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gdk_app_launch_context_new has been deprecated since version 3.0 and should not be used in newly-written code. Use gdk_display_get_app_launch_context() instead
	 * Creates a new GdkAppLaunchContext.
	 * Since 2.14
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdkAppLaunchContext * gdk_app_launch_context_new (void);
		auto p = gdk_app_launch_context_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_app_launch_context_new()");
		}
		this(cast(GdkAppLaunchContext*) p);
	}
	
	/**
	 * Warning
	 * gdk_app_launch_context_set_display has been deprecated since version 3.0 and should not be used in newly-written code. Use gdk_display_get_app_launch_context() instead
	 * Sets the display on which applications will be launched when
	 * using this context. See also gdk_app_launch_context_set_screen().
	 * Since 2.14
	 * Params:
	 * display = a GdkDisplay
	 */
	public void setDisplay(Display display)
	{
		// void gdk_app_launch_context_set_display (GdkAppLaunchContext *context,  GdkDisplay *display);
		gdk_app_launch_context_set_display(gdkAppLaunchContext, (display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Sets the screen on which applications will be launched when
	 * using this context. See also gdk_app_launch_context_set_display().
	 * If both screen and display are set, the screen takes priority.
	 * If neither screen or display are set, the default screen and
	 * display are used.
	 * Since 2.14
	 * Params:
	 * screen = a GdkScreen
	 */
	public void setScreen(Screen screen)
	{
		// void gdk_app_launch_context_set_screen (GdkAppLaunchContext *context,  GdkScreen *screen);
		gdk_app_launch_context_set_screen(gdkAppLaunchContext, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Sets the workspace on which applications will be launched when
	 * using this context when running under a window manager that
	 * supports multiple workspaces, as described in the
	 * Extended
	 * Window Manager Hints.
	 * When the workspace is not specified or desktop is set to -1,
	 * it is up to the window manager to pick one, typically it will
	 * be the current workspace.
	 * Since 2.14
	 * Params:
	 * desktop = the number of a workspace, or -1
	 */
	public void setDesktop(int desktop)
	{
		// void gdk_app_launch_context_set_desktop (GdkAppLaunchContext *context,  gint desktop);
		gdk_app_launch_context_set_desktop(gdkAppLaunchContext, desktop);
	}
	
	/**
	 * Sets the timestamp of context. The timestamp should ideally
	 * be taken from the event that triggered the launch.
	 * Window managers can use this information to avoid moving the
	 * focus to the newly launched application when the user is busy
	 * typing in another window. This is also known as 'focus stealing
	 * prevention'.
	 * Since 2.14
	 * Params:
	 * timestamp = a timestamp
	 */
	public void setTimestamp(uint timestamp)
	{
		// void gdk_app_launch_context_set_timestamp  (GdkAppLaunchContext *context,  guint32 timestamp);
		gdk_app_launch_context_set_timestamp(gdkAppLaunchContext, timestamp);
	}
	
	/**
	 * Sets the icon for applications that are launched with this
	 * context.
	 * Window Managers can use this information when displaying startup
	 * notification.
	 * See also gdk_app_launch_context_set_icon_name().
	 * Since 2.14
	 * Params:
	 * icon = a GIcon, or NULL. [allow-none]
	 */
	public void setIcon(IconIF icon)
	{
		// void gdk_app_launch_context_set_icon (GdkAppLaunchContext *context,  GIcon *icon);
		gdk_app_launch_context_set_icon(gdkAppLaunchContext, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Sets the icon for applications that are launched with this context.
	 * The icon_name will be interpreted in the same way as the Icon field
	 * in desktop files. See also gdk_app_launch_context_set_icon().
	 * If both icon and icon_name are set, the icon_name takes priority.
	 * If neither icon or icon_name is set, the icon is taken from either
	 * the file that is passed to launched application or from the GAppInfo
	 * for the launched application itself.
	 * Since 2.14
	 * Params:
	 * iconName = an icon name, or NULL. [allow-none]
	 */
	public void setIconName(string iconName)
	{
		// void gdk_app_launch_context_set_icon_name  (GdkAppLaunchContext *context,  const char *icon_name);
		gdk_app_launch_context_set_icon_name(gdkAppLaunchContext, Str.toStringz(iconName));
	}
}
