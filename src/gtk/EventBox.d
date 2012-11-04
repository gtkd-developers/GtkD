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
 * inFile  = GtkEventBox.html
 * outPack = gtk
 * outFile = EventBox
 * strct   = GtkEventBox
 * realStrct=
 * ctorStrct=
 * clss    = EventBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_event_box_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.EventBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.Bin;

/**
 * Description
 * The GtkEventBox widget is a subclass of GtkBin which also has its
 * own window. It is useful since it allows you to catch events for widgets
 * which do not have their own window.
 */
public class EventBox : Bin
{
	
	/** the main Gtk struct */
	protected GtkEventBox* gtkEventBox;
	
	
	public GtkEventBox* getEventBoxStruct()
	{
		return gtkEventBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEventBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEventBox* gtkEventBox)
	{
		super(cast(GtkBin*)gtkEventBox);
		this.gtkEventBox = gtkEventBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkEventBox = cast(GtkEventBox*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkEventBox.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_event_box_new (void);
		auto p = gtk_event_box_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_event_box_new()");
		}
		this(cast(GtkEventBox*) p);
	}
	
	/**
	 * Set whether the event box window is positioned above the windows
	 * of its child, as opposed to below it. If the window is above, all
	 * events inside the event box will go to the event box. If the window
	 * is below, events in windows of child widgets will first got to that
	 * widget, and then to its parents.
	 * The default is to keep the window below the child.
	 * Since 2.4
	 * Params:
	 * aboveChild = TRUE if the event box window is above its child
	 */
	public void setAboveChild(int aboveChild)
	{
		// void gtk_event_box_set_above_child (GtkEventBox *event_box,  gboolean above_child);
		gtk_event_box_set_above_child(gtkEventBox, aboveChild);
	}
	
	/**
	 * Returns whether the event box window is above or below the
	 * windows of its child. See gtk_event_box_set_above_child()
	 * for details.
	 * Since 2.4
	 * Returns: TRUE if the event box window is above the window of its child
	 */
	public int getAboveChild()
	{
		// gboolean gtk_event_box_get_above_child (GtkEventBox *event_box);
		return gtk_event_box_get_above_child(gtkEventBox);
	}
	
	/**
	 * Set whether the event box uses a visible or invisible child
	 * window. The default is to use visible windows.
	 * In an invisible window event box, the window that the
	 * event box creates is a GDK_INPUT_ONLY window, which
	 * means that it is invisible and only serves to receive
	 * events.
	 * A visible window event box creates a visible (GDK_INPUT_OUTPUT)
	 * window that acts as the parent window for all the widgets
	 * contained in the event box.
	 * You should generally make your event box invisible if
	 * you just want to trap events. Creating a visible window
	 * may cause artifacts that are visible to the user, especially
	 * if the user is using a theme with gradients or pixmaps.
	 * The main reason to create a non input-only event box is if
	 * you want to set the background to a different color or
	 * draw on it.
	 * Note
	 * There is one unexpected issue for an invisible event box that has its
	 * window below the child. (See gtk_event_box_set_above_child().)
	 * Since the input-only window is not an ancestor window of any windows
	 * that descendent widgets of the event box create, events on these
	 * windows aren't propagated up by the windowing system, but only by GTK+.
	 * The practical effect of this is if an event isn't in the event
	 * mask for the descendant window (see gtk_widget_add_events()),
	 * it won't be received by the event box.
	 * This problem doesn't occur for visible event boxes, because in
	 * that case, the event box window is actually the ancestor of the
	 * descendant windows, not just at the same place on the screen.
	 * Since 2.4
	 * Params:
	 * visibleWindow = TRUE to make the event box have a visible window
	 */
	public void setVisibleWindow(int visibleWindow)
	{
		// void gtk_event_box_set_visible_window (GtkEventBox *event_box,  gboolean visible_window);
		gtk_event_box_set_visible_window(gtkEventBox, visibleWindow);
	}
	
	/**
	 * Returns whether the event box has a visible window.
	 * See gtk_event_box_set_visible_window() for details.
	 * Since 2.4
	 * Returns: TRUE if the event box window is visible
	 */
	public int getVisibleWindow()
	{
		// gboolean gtk_event_box_get_visible_window (GtkEventBox *event_box);
		return gtk_event_box_get_visible_window(gtkEventBox);
	}
}
