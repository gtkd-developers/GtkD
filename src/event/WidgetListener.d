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

// already moved to delegates
 
module event.WidgetListener;

private import def.Types;
private import dui.Widget;
private import ddi.Drawable;
private import event.Event;

struct GtkSelectionData;

public :

////////////////////////////// MOUSE LISTENER /////////////////////////
/**
 * Mouse button listener
 */
interface MouseButtonListener
{
	bit mouseButtonPressCallback(Widget widget, EventButton eventButton);
	bit mouseButtonReleaseCallback(Widget widget, EventButton eventButton);
};

/**
 * Mouse motion listener
 */
interface MouseMotionListener
{
	bit motionNotifyCallback(Widget widget, EventMotion eventMotion);
};

interface MouseEnterListener
{
	bit enterNotifyCallback(Widget widget, EventCrossing event);
	bit leaveNotifyCallback(Widget widget, EventCrossing event);
};

interface MouseListener : MouseButtonListener , MouseMotionListener , MouseEnterListener
{
	
};

class MouseAdapter : MouseListener
{
	bit mouseButtonPressCallback(Widget widget, EventButton eventButton){return true;}
	bit mouseButtonReleaseCallback(Widget widget, EventButton eventButton){return true;}
	bit motionNotifyCallback(Widget widget, EventMotion eventMotion){return true;}
	bit enterNotifyCallback(Widget widget, EventCrossing event){return true;}
	bit leaveNotifyCallback(Widget widget, EventCrossing event){return true;}
};

////////////////////////////// DELETE LISTENER ///////////////////////////////

interface DeleteListener
{
	bit deleteCallback(Widget widget, Event event);
	bit destroyCallback(Widget widget, Event event);
};

////////////////////////////// FOCUS LISTENER ///////////////////////////////

interface FocusListener
{
	bit focusInCallback(Widget widget, EventFocus event);
	bit focusOutCallback(Widget widget, EventFocus event);
};

////////////////////////////// KEY LISTENER ///////////////////////////////

interface KeyListener
{
	bit keyPressCallback(Widget widget, EventKey event);
	bit keyReleaseCallback(Widget widget, EventKey event);
};

///////////////////////////// EXPOSE LISTENER ////////////////////////////

interface ExposeListener
{
	bit exposeCallback(Widget widget);
	bit noExposeCallback(Widget widget);
}

///////////////////////////// CONFIGURE LISTENER ////////////////////////////

interface ConfigureListener
{
	bit configureCallback(Widget widget, EventConfigure e);
}

///////////////////////////// VISIBILITY LISTENER ////////////////////////////

interface VisibilityListener
{
	bit visibilityCallback(Widget widget, EventVisibility e);
}

///////////////////////////// MAP LISTENER ////////////////////////////

interface MapListener
{
	bit mapCallback(Drawable drawable);
	bit unmapCallback(Drawable drawable);
}

///////////////////////////// REALIZE LISTENER ////////////////////////////

interface RealizeListener
{
	bit realizeCallback(Widget widget);
	bit unrealizeCallback(Widget widget);
}
	//void realize(GtkWidget *, gpointer);
	//void unrealize(GtkWidget *, gpointer);
/**
 * Declares all the widget callback methods
 */
public :
interface WidgetListener :
MouseListener,
DeleteListener,
FocusListener,
KeyListener,
ExposeListener,
MapListener,
RealizeListener,
ConfigureListener,
VisibilityListener
{
	// events
	gboolean event(GtkWidget * widget, GdkEvent * event);
	
	// button
	//gboolean button_press_event(GtkWidget * widget, GdkEventButton * event);
	//gboolean button_release_event(GtkWidget * widget, GdkEventButton * event);
	
	// scroll
	gboolean scroll_event(GtkWidget * widget, GdkEventScroll * event);
	
	// motion
	//gboolean motion_notify_event(GtkWidget * widget, GdkEventMotion * event);
	
	//delete
	//gboolean delete_event(GtkWidget * widget, GdkEventAny * event);
	//gboolean destroy_event(GtkWidget * widget, GdkEventAny * event);
	
	//expose
	//gboolean expose_event(GtkWidget * widget, GdkEventExpose * event);
	
	// key
	//gboolean key_press_event(GtkWidget * widget, GdkEventKey * event);
	//gboolean key_release_event(GtkWidget * widget, GdkEventKey * event);
	
	// enter
	//gboolean enter_notify_event(GtkWidget * widget, GdkEventCrossing * event);
	//gboolean leave_notify_event(GtkWidget * widget, GdkEventCrossing * event);
	
	// configure
	//gboolean configure_event(GtkWidget * widget, GdkEventConfigure * event);
	
	// focus
	//gboolean focus_in_event(GtkWidget * widget, GdkEventFocus * event);
	//gboolean focus_out_event(GtkWidget * widget, GdkEventFocus * event);
	
	// map
	//gboolean map_event(GtkWidget * widget, GdkEventAny * event);
	//gboolean unmap_event(GtkWidget * widget, GdkEventAny * event);
	
	// realize
	//void realize(GtkWidget *, gpointer);
	//void unrealize(GtkWidget *, gpointer);
	
	// property
	gboolean property_notify_event(GtkWidget * widget, GdkEventProperty * event);
	
	// selection
	gboolean selection_clear_event(GtkWidget * widget, GdkEventSelection * event);
	gboolean selection_request_event(GtkWidget * widget, GdkEventSelection * event);
	gboolean selection_notify_event(GtkWidget * widget, GdkEventSelection * event);
	
	// proximity
	gboolean proximity_in_event(GtkWidget * widget, GdkEventProximity * event);
	gboolean proximity_out_event(GtkWidget * widget, GdkEventProximity * event);
	
	// visibility
	//gboolean visibility_notify_event(GtkWidget * widget, GdkEventVisibility * event);
	
	// cliente
	gboolean client_event(GtkWidget * widget, GdkEventClient * event);
	
	// no expose
	//gboolean no_expose_event(GtkWidget * widget, GdkEventAny * event);
	
	// window state
	gboolean window_state_event(GtkWidget * widget, GdkEventWindowState * event);

	/* selection */
	void  selection_get(GtkWidget * widget, GtkSelectionData * selection_data, guint info, guint time_);
	void  selection_received(GtkWidget * widget, GtkSelectionData * selection_data, guint time_);

	/* Source side drag signals */
	void  drag_begin(GtkWidget * widget, GdkDragContext * context);
	void  drag_end(GtkWidget * widget, GdkDragContext * context);
	void  drag_data_get(GtkWidget * widget, GdkDragContext * context, GtkSelectionData * selection_data, guint info, guint time_);
	void  drag_data_delete(GtkWidget * widget, GdkDragContext * context);

	/* Target side drag signals */
	void  drag_leave(GtkWidget * widget, GdkDragContext * context, guint time_);
	gboolean drag_motion(GtkWidget * widget, GdkDragContext * context, gint x, gint y, guint time_);
	gboolean drag_drop(GtkWidget * widget, GdkDragContext * context, gint x, gint y, guint time_);
	void  drag_data_received(GtkWidget * widget, GdkDragContext * context, gint x, gint y, GtkSelectionData * selection_data, guint info, guint time_);

};
