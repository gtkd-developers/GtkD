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

module ddi.Display;

private import dui.Utils;
private import def.Types;
private import ddi.Screen;
private import def.Constants;
private import dui.ObjectG;
private import event.Event;

public:

private:

extern (C)
{
GdkDisplay * gdk_display_open (gchar * display_name);

gchar * gdk_display_get_name (GdkDisplay * display);

gint gdk_display_get_n_screens (GdkDisplay * display);
GdkScreen * gdk_display_get_screen (GdkDisplay * display, gint screen_num);
GdkScreen * gdk_display_get_default_screen (GdkDisplay * display);
void gdk_display_pointer_ungrab (GdkDisplay * display, guint32 time_);
void gdk_display_keyboard_ungrab (GdkDisplay * display, guint32 time_);
gboolean gdk_display_pointer_is_grabbed (GdkDisplay * display);
void gdk_display_beep (GdkDisplay * display);
void gdk_display_sync (GdkDisplay * display);
void gdk_display_close (GdkDisplay * display);

GList * gdk_display_list_devices (GdkDisplay * display);

GdkEvent * gdk_display_get_event (GdkDisplay * display);
GdkEvent * gdk_display_peek_event (GdkDisplay * display);
void gdk_display_put_event (GdkDisplay * display, GdkEvent * event);

alias void * GdkFilterFunc;

void gdk_display_add_client_message_filter (GdkDisplay * display, GdkAtom message_type, GdkFilterFunc func, gpointer data);

void gdk_display_set_double_click_time (GdkDisplay * display, guint msec);

GdkDisplay * gdk_display_get_default ();

GdkDevice * gdk_display_get_core_pointer (GdkDisplay * display);

void gdk_display_get_pointer (GdkDisplay * display, GdkScreen * *screen, gint * x, gint * y, GdkModifierType * mask);
GdkWindow * gdk_display_get_window_at_pointer (GdkDisplay * display, gint * win_x, gint * win_y);

GdkDisplayPointerHooks * gdk_display_set_pointer_hooks (GdkDisplay * display, GdkDisplayPointerHooks * new_hooks);

GdkDisplay * gdk_display_open_default_libgtk_only ();
}

/**
 * Display
 */
public:
class Display :
		ObjectG
{

	private import dool.String;
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return "GdkDisplay";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}

	public:

	GdkDisplay* gdkD()
	{
		return cast(GdkDisplay*)gObject;
	}
	
	static GdkColormap * systemColormap;
	
	/**
	 * Creates a new Display from a GdkDisplay
	 */
	this(GdkDisplay* gObject)
	{
		super(cast(GObject*)gObject);
	}

	/**
	 * Opens a display by name
	 * @param displayName the display name
	 */
	static Display open(String displayName)
	{
		return new Display(gdk_display_open(displayName.toStringz()));
	}
	
	void* gtk()
	{
		return cast(void*)gObject;
	}
	/**
	 * Gets the name of this Display
	 * @return the name of this Display
	 */
	String getName()
	{
		return String.newz(gdk_display_get_name(cast(GdkDisplay*)obj()));
	}
	
	/**
	 *
	 */
	gint getNScreens()
	{
		return gdk_display_get_n_screens(cast(GdkDisplay*)obj());
	}
	
	/**
	 *
	 */
	Screen getScreen(gint screenNum)
	{
		return new Screen(gdk_display_get_screen (cast(GdkDisplay*)obj(), screenNum));
	}
	
	/**
	 *
	 */
	Screen getDefaultScreen()
	{
		return new Screen(gdk_display_get_default_screen (cast(GdkDisplay*)obj()));
	}
	
	/**
	 *
	 */
	void pointerUngrab(guint32 time)
	{
		gdk_display_pointer_ungrab(cast(GdkDisplay*)obj(), time);
	}
	
	/**
	 *
	 */
	void keyboardUngrab(guint32 time)
	{
		gdk_display_keyboard_ungrab(cast(GdkDisplay*)obj(), time);
	}
	
	/**
	 *
	 */
	bit pointerIsGrabbed()
	{
		return gdk_display_pointer_is_grabbed(cast(GdkDisplay*)obj())==0?false:true;
	}
			
	/**
	 *
	 */
	void beep()
	{
		gdk_display_beep(cast(GdkDisplay*)obj());
	}
	
	/**
	 *
	 */
	void sync()
	{
		gdk_display_sync(cast(GdkDisplay*)obj());
	}
	
	/**
	 *
	 */
	void close()
	{
		gdk_display_close(cast(GdkDisplay*)obj());
	}
	
	/** \todo GList * gdk_display_list_devices ((GdkDisplay*)obj()); */
	
	/** \todo GdkEvent * gdk_display_get_event ((GdkDisplay*)obj()); */
	/** \todo GdkEvent * gdk_display_peek_event ((GdkDisplay*)obj()); */
	/** \todo void gdk_display_put_event ((GdkDisplay*)obj(), GdkEvent * event); */
	
	/** \todo void gdk_display_add_client_message_filter ((GdkDisplay*)obj(), GdkAtom message_type, GdkFilterFunc func, gpointer data); */
	
	/**
	 *
	 */
	void setDoubleClickTime(guint msec)
	{
		gdk_display_set_double_click_time(cast(GdkDisplay*)obj(), msec);
	}
	
	/**
	 * Gets the default display
	 * @return the default display
	 */
	static Display getDefault()
	{
		return new Display(gdk_display_get_default());
	}
	
	/** \todo GdkDevice * gdk_display_get_core_pointer ((GdkDisplay*)obj()); */
	
	/** \todo void gdk_display_get_pointer ((GdkDisplay*)obj(), GdkScreen * *screen, gint * x, gint * y, GdkModifierType * mask); */
	/** \todo GdkWindow * gdk_display_get_window_at_pointer ((GdkDisplay*)obj(), gint * win_x, gint * win_y); */
	
	/** \todo GdkDisplayPointerHooks * gdk_display_set_pointer_hooks ((GdkDisplay*)obj(), GdkDisplayPointerHooks * new_hooks); /
	
	/** \todo GdkDisplay * gdk_display_open_default_libgtk_only (); */
	


}
