/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ddi.Screen;

private import dui.DUI;
private import dui.ObjectG;

private import lib.gdk;
private import ddi.Color;
private import event.Event;
private import dui.ListG;
private import def.Types;

/**
 * The representation of the screen
 */
public:
class Screen : ObjectG
{

	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkScreen";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}
	public:
	this(GdkScreen * gdkScreen)
	{
		super(cast(GdkObject*)gdkScreen);
	}

	public:
	void* gtk()
	{
		return cast(void*)gObject;
	}

	/**
	 * Gets the default screen
	 */
	static Screen getDefault()
	{
		Screen screen = new Screen( gdk_screen_get_default());
		return screen;
	}

	/**
	 * Gets the GdkScreen
	 * @return the GdkScreen
	 */
	GdkScreen * gdkScreen()
	{
		return cast(GdkScreen *) gObject;
	}

	//GdkColormap * gdk_screen_get_default_colormap(gdkScreen());
	//void gdk_screen_set_default_colormap(gdkScreen(), GdkColormap * colormap);
	//GdkColormap * gdk_screen_get_system_colormap(gdkScreen());
	//GdkVisual * gdk_screen_get_system_visual(gdkScreen());
	//GdkColormap * gdk_screen_get_rgb_colormap(gdkScreen());
	//GdkVisual * gdk_screen_get_rgb_visual(gdkScreen());

	//GdkWindow * gdk_screen_get_root_window(gdkScreen());
	//GdkDisplay * gdk_screen_get_display(gdkScreen());
	
	/**
	 * Gets the screen number
	 * @return the screen number
	 */
	gint getNumber()
	{
		return gdk_screen_get_number(gdkScreen());
	}

	/**
	 * Gets the screen width
	 * @return the screen width
	 */
	gint getWidth()
	{
		return gdk_screen_get_width(gdkScreen());
	}

	/**
	 * Gets the screen height
	 * @return the screen height
	 */
	gint getHeight()
	{
		return gdk_screen_get_height(gdkScreen());
	}
	
	//gint gdk_screen_get_width_mm(gdkScreen());
	//gint gdk_screen_get_height_mm(gdkScreen());

	//GList * gdk_screen_list_visuals(gdkScreen());
	//GList * gdk_screen_get_toplevel_windows(gdkScreen());
	//gchar * gdk_screen_make_display_name(gdkScreen());

	//gint gdk_screen_get_n_monitors(gdkScreen());
	//void gdk_screen_get_monitor_geometry(gdkScreen(), gint monitor_num, GdkRectangle * dest);
	//gint gdk_screen_get_monitor_at_point(gdkScreen(), gint x, gint y);
	//gint gdk_screen_get_monitor_at_window(gdkScreen(), GdkWindow * window);

	//void gdk_screen_broadcast_client_message(gdkScreen(), GdkEvent * event);

	//gboolean gdk_screen_get_setting(gdkScreen(), gchar * name, GValue * value);

}
