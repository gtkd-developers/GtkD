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


module gtk.GestureLongPress;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureSingle;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * #GtkGestureLongPress is a #GtkGesture implementation able to recognize
 * long presses, triggering the #GtkGestureLongPress::pressed after the
 * timeout is exceeded.
 * 
 * If the touchpoint is lifted before the timeout passes, or if it drifts
 * too far of the initial press point, the #GtkGestureLongPress::cancelled
 * signal will be emitted.
 */
public class GestureLongPress : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureLongPress* gtkGestureLongPress;

	/** Get the main Gtk struct */
	public GtkGestureLongPress* getGestureLongPressStruct()
	{
		return gtkGestureLongPress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureLongPress;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkGestureLongPress = cast(GtkGestureLongPress*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureLongPress* gtkGestureLongPress, bool ownedRef = false)
	{
		this.gtkGestureLongPress = gtkGestureLongPress;
		super(cast(GtkGestureSingle*)gtkGestureLongPress, ownedRef);
	}


	public static GType getType()
	{
		return gtk_gesture_long_press_get_type();
	}

	/**
	 * Returns a newly created #GtkGesture that recognizes long presses.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Return: a newly created #GtkGestureLongPress
	 *
	 * Since: 3.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget)
	{
		auto p = gtk_gesture_long_press_new((widget is null) ? null : widget.getWidgetStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkGestureLongPress*) p, true);
	}

	int[string] connectedSignals;

	void delegate(GestureLongPress)[] onCancelledListeners;
	/**
	 * This signal is emitted whenever a press moved too far, or was released
	 * before #GtkGestureLongPress:pressed happened.
	 *
	 * Since: 3.14
	 */
	void addOnCancelled(void delegate(GestureLongPress) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "cancelled" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"cancelled",
				cast(GCallback)&callBackCancelled,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["cancelled"] = 1;
		}
		onCancelledListeners ~= dlg;
	}
	extern(C) static void callBackCancelled(GtkGestureLongPress* gesturelongpressStruct, GestureLongPress _gesturelongpress)
	{
		foreach ( void delegate(GestureLongPress) dlg; _gesturelongpress.onCancelledListeners )
		{
			dlg(_gesturelongpress);
		}
	}

	void delegate(double, double, GestureLongPress)[] onPressedListeners;
	/**
	 * This signal is emitted whenever a press goes unmoved/unreleased longer than
	 * what the GTK+ defaults tell.
	 *
	 * Params:
	 *     x = the X coordinate where the press happened, relative to the widget allocation
	 *     y = the Y coordinate where the press happened, relative to the widget allocation
	 *
	 * Since: 3.14
	 */
	void addOnPressed(void delegate(double, double, GestureLongPress) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "pressed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"pressed",
				cast(GCallback)&callBackPressed,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["pressed"] = 1;
		}
		onPressedListeners ~= dlg;
	}
	extern(C) static void callBackPressed(GtkGestureLongPress* gesturelongpressStruct, double x, double y, GestureLongPress _gesturelongpress)
	{
		foreach ( void delegate(double, double, GestureLongPress) dlg; _gesturelongpress.onPressedListeners )
		{
			dlg(x, y, _gesturelongpress);
		}
	}
}
