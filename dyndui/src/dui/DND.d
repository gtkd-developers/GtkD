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

module dui.DND;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import event.Event;
private import ddi.WindowG;
private import ddi.Bitmap;
private import ddi.Pixmap;
private import ddi.Pixbuf;
private import dui.DUIObject;
private import dui.Selection;
private import dui.Widget;
private import lib.gtk;

/**
 * Functions for handling inter-process communication via selections
 */
public:
class DND
{

	GdkDragContext* gdkDragContext;

	public:
	
	/**
	 * Gets the GdkDragContext structure
	 */
	GdkDragContext* gdkD()
	{
		return gdkDragContext;
	}
	
	/**
	 * Creates a new DND from a GdkDragContext structure
	 * @param gdkDragContext
	 */
	this(GdkDragContext* gdkDragContext)
	{
		this.gdkDragContext = gdkDragContext;
	}

	/**
	 * Creates a new DND
	 * @param widget
	 * @param targets
	 * @param actions
	 * @param button
	 * @param event
	 */
	this(Widget widget, GtkTargetList * targets, GdkDragAction actions, gint button, Event event)
	{
		this(gtk_drag_begin(widget.gtkW(), targets, actions, button, event.getE()));
	}
	
	/* There probably should be functions for setting the targets
	 * as a GtkTargetList
	 */
	
	/**
	 * begin
	 * @param widget
	 * @param targets
	 * @param actions
	 * @param button
	 * @param event
	 * @return 
	 */
	static DND begin(Widget widget, GtkTargetList * targets, GdkDragAction actions, gint button, Event event)
	{
		return new DND(gtk_drag_begin(widget.gtkW(), targets, actions, button, event.getE()));
	}
	

	
	/* Destination side */
	
	/**
	 * getData
	 * @param widget
	 * @param target
	 * @param time_
	 */
	void getData(Widget widget, GdkAtom target, guint32 time_)
	{
		gtk_drag_get_data(widget.gtkW(), gdkD(), target, time_);
	}
	
	/**
	 * finish
	 * @param success
	 * @param del
	 * @param time_
	 */
	void finish(bit success, bit del, guint32 time_)
	{
		gtk_drag_finish(gdkD(), success, del, time_);
	}
	
	/**
	 * getSourceWidget
	 * @return 
	 */
	Widget getSourceWidget()
	{
		return new Widget(gtk_drag_get_source_widget(gdkD()));
	}
	
	/**
	 * highLight
	 * @param widget
	 */
	static void highLight(Widget widget)
	{
		gtk_drag_highlight(widget.gtkW());
	}
	
	/**
	 * unhighLight
	 * @param widget
	 */
	static void unhighLight(Widget widget)
	{
		gtk_drag_unhighlight(widget.gtkW());
	}
	
	/**
	 * destSet
	 * @param widget
	 * @param flags
	 * @param targets
	 * @param n_targets
	 * @param actions
	 */
	static void destSet(Widget widget, GtkDestDefaults flags, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
	{
		gtk_drag_dest_set(widget.gtkW(), flags, targets, n_targets, actions);
	}
	
	/**
	 * destSetProxy
	 * @param widget
	 * @param proxy_window
	 * @param protocol
	 * @param use_coordinates
	 */
	static void destSetProxy(Widget widget, WindowG proxy_window, GdkDragProtocol protocol, gboolean use_coordinates)
	{
		gtk_drag_dest_set_proxy(widget.gtkW(), proxy_window.gdkW(), protocol, use_coordinates);
	}
	
	/**
	 * destUnset
	 * @param widget
	 */
	static void destUnset(Widget widget)
	{
		gtk_drag_dest_unset(widget.gtkW());
	}
	
	/**
	 * destFindTarget
	 * @param widget
	 * @param target_list
	 * @return GdkAtom
	 */
	GdkAtom destFindTarget(Widget widget, GtkTargetList * target_list)
	{
		return gtk_drag_dest_find_target(widget.gtkW(), gdkD(), target_list);
	}
	
	/**
	 * destGetTargetList
	 * @param widget
	 * @return GtkTargetList
	 */
	static GtkTargetList * destGetTargetList(Widget widget)
	{
		return gtk_drag_dest_get_target_list(widget.gtkW());
	}
	
	/**
	 * destSetTargetList
	 * @param widget
	 * @param target_list
	 */
	static void destSetTargetList(Widget widget, GtkTargetList * target_list)
	{
		gtk_drag_dest_set_target_list(widget.gtkW(), target_list);
	}
	
	/* Source side */
	
	/**
	 * sourceSet
	 * @param widget
	 * @param start_button_mask
	 * @param targets
	 * @param n_targets
	 * @param actions
	 */
	static void sourceSet(Widget widget, ModifierType start_button_mask, GtkTargetEntry * targets, gint n_targets, GdkDragAction actions)
	{
		gtk_drag_source_set(widget.gtkW(), start_button_mask, targets, n_targets, actions);
	}
	
	/**
	 * sourceUnset
	 * @param widget
	 */
	static void sourceUnset(Widget widget)
	{
		gtk_drag_source_unset(widget.gtkW());
	}
	
	/**
	 * sourceSetIcon
	 * @param widget
	 * @param colormap
	 * @param pixmap
	 * @param mask
	 */
	static void sourceSetIcon(Widget widget, GdkColormap * colormap, Pixmap pixmap, Bitmap mask)
	{
		gtk_drag_source_set_icon(widget.gtkW(), colormap, pixmap.gdkP(), mask.gdkB());
	}

	/**
	 * sourceSetIconPixbuf
	 * @param widget
	 * @param pixbuf
	 */
	static void sourceSetIconPixbuf(Widget widget, Pixbuf pixbuf)
	{
		gtk_drag_source_set_icon_pixbuf(widget.gtkW(), pixbuf.gdkP());
	}

	/**
	 * sourceSetIconStock
	 * @param widget
	 * @param stockID
	 */
	static void sourceSetIconStock(Widget widget, Stock stockID)
	{
		gtk_drag_source_set_icon_stock(widget.gtkW(), cChar(StockDesc[stockID]));
	}
	
	/*
	 * Set the image being dragged around
	 */
	 
	/**
	 * setIconIwdget
	 * @param widget
	 * @param hot_x
	 * @param hot_y
	 */
	void setIconIwdget(Widget widget, gint hot_x, gint hot_y)
	{
		gtk_drag_set_icon_widget(gdkD(), widget.gtkW(), hot_x, hot_y);
	}

	/**
	 * setIconPixmap
	 * @param colormap
	 * @param pixmap
	 * @param mask
	 * @param hot_x
	 * @param hot_y
	 */
	void setIconPixmap(GdkColormap * colormap, Pixmap pixmap, Bitmap mask, gint hot_x, gint hot_y)
	{
		gtk_drag_set_icon_pixmap(gdkD(), colormap, pixmap.gdkP(), mask.gdkB(), hot_x, hot_y);
	}

	/**
	 * setIconPixbuf
	 * @param pixbuf
	 * @param hot_x
	 * @param hot_y
	 */
	void setIconPixbuf(Pixbuf pixbuf, gint hot_x, gint hot_y)
	{
		gtk_drag_set_icon_pixbuf(gdkD(), pixbuf.gdkP(), hot_x, hot_y);
	}
	
	/**
	 * setIconStock
	 * @param stockID
	 * @param hot_x
	 * @param hot_y
	 */
	void setIconStock(Stock stockID, gint hot_x, gint hot_y)
	{
		gtk_drag_set_icon_stock(gdkD(), cChar(StockDesc[stockID]), hot_x, hot_y);
	}
	
	/**
	 * setIconDefault
	 */
	void setIconDefault()
	{
		gtk_drag_set_icon_default(gdkD());
	}
	
	/**
	 * checkThreshold
	 * @param widget
	 * @param start_x
	 * @param start_y
	 * @param current_x
	 * @param gint current_y
	 * @return 
	 */
	static bit checkThreshold(Widget widget, gint start_x, gint start_y, gint current_x, gint current_y)
	{
		return gtk_drag_check_threshold(widget.gtkW(), start_x, start_y, current_x, current_y) == 0 ? false : true;
	}

}
