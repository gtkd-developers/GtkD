/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = DragAndDrop
 * strct   = GdkDragContext
 * realStrct=
 * clss    = DragAndDrop
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_drag_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gdk.Window
 * 	- gdk.DragContext
 * 	- gdk.Event
 * 	- gdk.Colormap
 * 	- gdk.Pixmap
 * 	- gdk.Bitmap
 * 	- gdk.Pixbuf
 * 	- glib.Str
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColormap* -> Colormap
 * 	- GdkDragContext* -> DragContext
 * 	- GdkEvent* -> Event
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkWindow* -> Window
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.DragAndDrop;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Widget;
private import gdk.Window;
private import gdk.DragContext;
private import gdk.Event;
private import gdk.Colormap;
private import gdk.Pixmap;
private import gdk.Bitmap;
private import gdk.Pixbuf;
private import glib.Str;

/**
 * Description
 * GTK+ has a rich set of functions for doing inter-process
 * communication via the drag-and-drop metaphor. GTK+
 * can do drag-and-drop (DND) via multiple protocols.
 * The currently supported protocols are the Xdnd and
 * Motif protocols.
 * As well as the functions listed here, applications
 * may need to use some facilities provided for
 * Selections.
 * Also, the Drag and Drop API makes use of signals
 * in the GtkWidget class.
 */
public class DragAndDrop
{
	
	/** the main Gtk struct */
	protected GdkDragContext* gdkDragContext;
	
	
	public GdkDragContext* getDragAndDropStruct()
	{
		return gdkDragContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkDragContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDragContext* gdkDragContext)
	{
		this.gdkDragContext = gdkDragContext;
	}
	
	/**
	 */
	
	
	
	/**
	 * Sets a widget as a potential drop destination.
	 * widget:
	 * a GtkWidget
	 * flags:
	 * the flags that specify what actions GTK+ should take
	 *  on behalf of a widget for drops onto that widget. The targets
	 *  and actions fields only are used if GTK_DEST_DEFAULT_MOTION
	 *  or GTK_DEST_DEFAULT_DROP are given.
	 * targets:
	 * a pointer to an array of GtkTargetEntrys indicating
	 *  the drop types that this widget will accept.
	 * n_targets:
	 * the number of entries in targets.
	 * actions:
	 * a bitmask of possible actions for a drop onto this
	 *  widget.
	 */
	public static void destSet(Widget widget, GtkDestDefaults flags, GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_drag_dest_set (GtkWidget *widget,  GtkDestDefaults flags,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_drag_dest_set((widget is null) ? null : widget.getWidgetStruct(), flags, targets, nTargets, actions);
	}
	
	/**
	 * Sets this widget as a proxy for drops to another window.
	 * widget:
	 * a GtkWidget
	 * proxy_window:
	 * the window to which to forward drag events
	 * protocol:
	 * the drag protocol which the proxy_window accepts
	 *  (You can use gdk_drag_get_protocol() to determine this)
	 * use_coordinates:
	 * If TRUE, send the same coordinates to the
	 *  destination, because it is an embedded
	 *  subwindow.
	 */
	public static void destSetProxy(Widget widget, Window proxyWindow, GdkDragProtocol protocol, int useCoordinates)
	{
		// void gtk_drag_dest_set_proxy (GtkWidget *widget,  GdkWindow *proxy_window,  GdkDragProtocol protocol,  gboolean use_coordinates);
		gtk_drag_dest_set_proxy((widget is null) ? null : widget.getWidgetStruct(), (proxyWindow is null) ? null : proxyWindow.getWindowStruct(), protocol, useCoordinates);
	}
	
	/**
	 * Clears information about a drop destination set with
	 * gtk_drag_dest_set(). The widget will no longer receive
	 * notification of drags.
	 * widget:
	 * a GtkWidget
	 */
	public static void destUnset(Widget widget)
	{
		// void gtk_drag_dest_unset (GtkWidget *widget);
		gtk_drag_dest_unset((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Looks for a match between context->targets and the
	 * dest_target_list, returning the first matching target, otherwise
	 * returning GDK_NONE. dest_target_list should usually be the return
	 * value from gtk_drag_dest_get_target_list(), but some widgets may
	 * have different valid targets for different parts of the widget; in
	 * that case, they will have to implement a drag_motion handler that
	 * passes the correct target list to this function.
	 * widget:
	 *  drag destination widget
	 * context:
	 *  drag context
	 * target_list:
	 *  list of droppable targets, or NULL to use
	 *  gtk_drag_dest_get_target_list (widget).
	 * Returns:
	 *  first target that the source offers and the dest can accept, or GDK_NONE
	 */
	public static GdkAtom destFindTarget(Widget widget, DragContext context, GtkTargetList* targetList)
	{
		// GdkAtom gtk_drag_dest_find_target (GtkWidget *widget,  GdkDragContext *context,  GtkTargetList *target_list);
		return gtk_drag_dest_find_target((widget is null) ? null : widget.getWidgetStruct(), (context is null) ? null : context.getDragContextStruct(), targetList);
	}
	
	/**
	 * Returns the list of targets this widget can accept from
	 * drag-and-drop.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the GtkTargetList, or NULL if none
	 */
	public static GtkTargetList* destGetTargetList(Widget widget)
	{
		// GtkTargetList* gtk_drag_dest_get_target_list  (GtkWidget *widget);
		return gtk_drag_dest_get_target_list((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Sets the target types that this widget can accept from drag-and-drop.
	 * The widget must first be made into a drag destination with
	 * gtk_drag_dest_set().
	 * widget:
	 *  a GtkWidget that's a drag destination
	 * target_list:
	 *  list of droppable targets, or NULL for none
	 */
	public static void destSetTargetList(Widget widget, GtkTargetList* targetList)
	{
		// void gtk_drag_dest_set_target_list (GtkWidget *widget,  GtkTargetList *target_list);
		gtk_drag_dest_set_target_list((widget is null) ? null : widget.getWidgetStruct(), targetList);
	}
	
	/**
	 * Add the text targets supported by GtkSelection to
	 * the target list of the drag destination. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_text_targets() and
	 * gtk_drag_dest_set_target_list().
	 * widget:
	 *  a GtkWidget that's a drag destination
	 * Since 2.6
	 */
	public static void destAddTextTargets(Widget widget)
	{
		// void gtk_drag_dest_add_text_targets (GtkWidget *widget);
		gtk_drag_dest_add_text_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the image targets supported by GtkSelection to
	 * the target list of the drag destination. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_image_targets() and
	 * gtk_drag_dest_set_target_list().
	 * widget:
	 *  a GtkWidget that's a drag destination
	 * Since 2.6
	 */
	public static void destAddImageTargets(Widget widget)
	{
		// void gtk_drag_dest_add_image_targets (GtkWidget *widget);
		gtk_drag_dest_add_image_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the URI targets supported by GtkSelection to
	 * the target list of the drag destination. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_uri_targets() and
	 * gtk_drag_dest_set_target_list().
	 * widget:
	 *  a GtkWidget that's a drag destination
	 * Since 2.6
	 */
	public static void destAddUriTargets(Widget widget)
	{
		// void gtk_drag_dest_add_uri_targets (GtkWidget *widget);
		gtk_drag_dest_add_uri_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Informs the drag source that the drop is finished, and
	 * that the data of the drag will no longer be required.
	 * context:
	 * the drag context.
	 * success:
	 * a flag indicating whether the drop was successful
	 * del:
	 * a flag indicating whether the source should delete the
	 *  original data. (This should be TRUE for a move)
	 * time_:
	 * the timestamp from the "drag_data_drop" signal.
	 */
	public void finish(int success, int del, uint time)
	{
		// void gtk_drag_finish (GdkDragContext *context,  gboolean success,  gboolean del,  guint32 time_);
		gtk_drag_finish(gdkDragContext, success, del, time);
	}
	
	/**
	 * Gets the data associated with a drag. When the data
	 * is received or the retrieval fails, GTK+ will emit a
	 * "drag_data_received" signal. Failure of the retrieval
	 * is indicated by the length field of the selection_data
	 * signal parameter being negative. However, when gtk_drag_get_data()
	 * is called implicitely because the GTK_DEST_DEFAULT_DROP was set,
	 * then the widget will not receive notification of failed
	 * drops.
	 * widget:
	 * the widget that will receive the "drag_data_received"
	 *  signal.
	 * context:
	 * the drag context
	 * target:
	 * the target (form of the data) to retrieve.
	 * time_:
	 * a timestamp for retrieving the data. This will
	 *  generally be the time received in a "drag_data_motion"
	 *  or "drag_data_drop" signal.
	 */
	public static void getData(Widget widget, DragContext context, GdkAtom target, uint time)
	{
		// void gtk_drag_get_data (GtkWidget *widget,  GdkDragContext *context,  GdkAtom target,  guint32 time_);
		gtk_drag_get_data((widget is null) ? null : widget.getWidgetStruct(), (context is null) ? null : context.getDragContextStruct(), target, time);
	}
	
	/**
	 * Determines the source widget for a drag.
	 * context:
	 * a (destination side) drag context.
	 * Returns:
	 * if the drag is occurring within a single application,
	 *  a pointer to the source widget. Otherwise, NULL.
	 */
	public Widget getSourceWidget()
	{
		// GtkWidget* gtk_drag_get_source_widget (GdkDragContext *context);
		return new Widget( gtk_drag_get_source_widget(gdkDragContext) );
	}
	
	/**
	 * Draws a highlight around a widget. This will attach
	 * handlers to "expose_event" and "draw", so the highlight
	 * will continue to be displayed until gtk_drag_unhighlight()
	 * is called.
	 * widget:
	 * a widget to highlight
	 */
	public static void highlight(Widget widget)
	{
		// void gtk_drag_highlight (GtkWidget *widget);
		gtk_drag_highlight((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Removes a highlight set by gtk_drag_highlight() from
	 * a widget.
	 * widget:
	 * a widget to remove the highlight from.
	 */
	public static void unhighlight(Widget widget)
	{
		// void gtk_drag_unhighlight (GtkWidget *widget);
		gtk_drag_unhighlight((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Initiates a drag on the source side. The function
	 * only needs to be used when the application is
	 * starting drags itself, and is not needed when
	 * gtk_drag_source_set() is used.
	 * widget:
	 *  the source widget.
	 * targets:
	 *  The targets (data formats) in which the
	 *  source can provide the data.
	 * actions:
	 *  A bitmask of the allowed drag actions for this drag.
	 * button:
	 *  The button the user clicked to start the drag.
	 * event:
	 *  The event that triggered the start of the drag.
	 * Returns:
	 *  the context for this drag.
	 */
	public static DragContext begin(Widget widget, GtkTargetList* targets, GdkDragAction actions, int button, Event event)
	{
		// GdkDragContext* gtk_drag_begin (GtkWidget *widget,  GtkTargetList *targets,  GdkDragAction actions,  gint button,  GdkEvent *event);
		return new DragContext( gtk_drag_begin((widget is null) ? null : widget.getWidgetStruct(), targets, actions, button, (event is null) ? null : event.getEventStruct()) );
	}
	
	/**
	 * Changes the icon for a widget to a given widget. GTK+
	 * will not destroy the icon, so if you don't want
	 * it to persist, you should connect to the "drag_end"
	 * signal and destroy it yourself.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 * widget:
	 *  a toplevel window to use as an icon.
	 * hot_x:
	 *  the X offset within widget of the hotspot.
	 * hot_y:
	 *  the Y offset within widget of the hotspot.
	 */
	public void setIconWidget(Widget widget, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_widget (GdkDragContext *context,  GtkWidget *widget,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_widget(gdkDragContext, (widget is null) ? null : widget.getWidgetStruct(), hotX, hotY);
	}
	
	/**
	 * Sets pixmap as the icon for a given drag. GTK+ retains
	 * references for the arguments, and will release them when
	 * they are no longer needed. In general, gtk_drag_set_icon_pixbuf()
	 * will be more convenient to use.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 * colormap:
	 *  the colormap of the icon
	 * pixmap:
	 *  the image data for the icon
	 * mask:
	 *  the transparency mask for the icon
	 * hot_x:
	 *  the X offset within pixmap of the hotspot.
	 * hot_y:
	 *  the Y offset within pixmap of the hotspot.
	 */
	public void setIconPixmap(Colormap colormap, Pixmap pixmap, Bitmap mask, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_pixmap (GdkDragContext *context,  GdkColormap *colormap,  GdkPixmap *pixmap,  GdkBitmap *mask,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_pixmap(gdkDragContext, (colormap is null) ? null : colormap.getColormapStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), (mask is null) ? null : mask.getBitmapStruct(), hotX, hotY);
	}
	
	/**
	 * Sets pixbuf as the icon for a given drag.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 * pixbuf:
	 *  the GdkPixbuf to use as the drag icon.
	 * hot_x:
	 *  the X offset within widget of the hotspot.
	 * hot_y:
	 *  the Y offset within widget of the hotspot.
	 */
	public void setIconPixbuf(Pixbuf pixbuf, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_pixbuf (GdkDragContext *context,  GdkPixbuf *pixbuf,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_pixbuf(gdkDragContext, (pixbuf is null) ? null : pixbuf.getPixbufStruct(), hotX, hotY);
	}
	
	/**
	 * Sets the icon for a given drag from a stock ID.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 * stock_id:
	 *  the ID of the stock icon to use for the drag.
	 * hot_x:
	 *  the X offset within the icon of the hotspot.
	 * hot_y:
	 *  the Y offset within the icon of the hotspot.
	 */
	public void setIconStock(char[] stockId, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_stock (GdkDragContext *context,  const gchar *stock_id,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_stock(gdkDragContext, Str.toStringz(stockId), hotX, hotY);
	}
	
	/**
	 * Sets the icon for a given drag from a named themed icon. See
	 * the docs for GtkIconTheme for more details. Note that the
	 * size of the icon depends on the icon theme (the icon is
	 * loaded at the symbolic size GTK_ICON_SIZE_DND), thus
	 * hot_x and hot_y have to be used with care.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 * icon_name:
	 *  name of icon to use
	 * hot_x:
	 *  the X offset of the hotspot within the icon
	 * hot_y:
	 *  the Y offset of the hotspot within the icon
	 * Since 2.8
	 */
	public void setIconName(char[] iconName, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_name (GdkDragContext *context,  const gchar *icon_name,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_name(gdkDragContext, Str.toStringz(iconName), hotX, hotY);
	}
	
	/**
	 * Sets the icon for a particular drag to the default
	 * icon.
	 * context:
	 *  the context for a drag. (This must be called
	 *  with a context for the source side of a drag)
	 */
	public void setIconDefault()
	{
		// void gtk_drag_set_icon_default (GdkDragContext *context);
		gtk_drag_set_icon_default(gdkDragContext);
	}
	
	/**
	 * Warning
	 * gtk_drag_set_default_icon is deprecated and should not be used in newly-written code.
	 * Changes the default drag icon. GTK+ retains references for the
	 * arguments, and will release them when they are no longer needed.
	 * This function is obsolete. The default icon should now be changed
	 * via the stock system by changing the stock pixbuf for GTK_STOCK_DND.
	 * colormap:
	 *  the colormap of the icon
	 * pixmap:
	 *  the image data for the icon
	 * mask:
	 *  the transparency mask for an image.
	 * hot_x:
	 *  The X offset within widget of the hotspot.
	 * hot_y:
	 *  The Y offset within widget of the hotspot.
	 */
	public static void setDefaultIcon(Colormap colormap, Pixmap pixmap, Bitmap mask, int hotX, int hotY)
	{
		// void gtk_drag_set_default_icon (GdkColormap *colormap,  GdkPixmap *pixmap,  GdkBitmap *mask,  gint hot_x,  gint hot_y);
		gtk_drag_set_default_icon((colormap is null) ? null : colormap.getColormapStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), (mask is null) ? null : mask.getBitmapStruct(), hotX, hotY);
	}
	
	/**
	 * Checks to see if a mouse drag starting at (start_x, start_y) and ending
	 * at (current_x, current_y) has passed the GTK+ drag threshold, and thus
	 * should trigger the beginning of a drag-and-drop operation.
	 * widget:
	 *  a GtkWidget
	 * start_x:
	 *  X coordinate of start of drag
	 * start_y:
	 *  Y coordinate of start of drag
	 * current_x:
	 *  current X coordinate
	 * current_y:
	 *  current Y coordinate
	 * Returns:
	 *  TRUE if the drag threshold has been passed.
	 */
	public static int checkThreshold(Widget widget, int startX, int startY, int currentX, int currentY)
	{
		// gboolean gtk_drag_check_threshold (GtkWidget *widget,  gint start_x,  gint start_y,  gint current_x,  gint current_y);
		return gtk_drag_check_threshold((widget is null) ? null : widget.getWidgetStruct(), startX, startY, currentX, currentY);
	}
	
	/**
	 * Sets up a widget so that GTK+ will start a drag
	 * operation when the user clicks and drags on the
	 * widget. The widget must have a window.
	 * widget:
	 * a GtkWidget
	 * start_button_mask:
	 * the bitmask of buttons that can start the drag
	 * targets:
	 * the table of targets that the drag will support
	 * n_targets:
	 * the number of items in targets
	 * actions:
	 * the bitmask of possible actions for a drag from this
	 *  widget.
	 */
	public static void sourceSet(Widget widget, GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_drag_source_set (GtkWidget *widget,  GdkModifierType start_button_mask,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_drag_source_set((widget is null) ? null : widget.getWidgetStruct(), startButtonMask, targets, nTargets, actions);
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular widget
	 * from a pixmap/mask. GTK+ retains references for the arguments, and
	 * will release them when they are no longer needed.
	 * Use gtk_drag_source_set_icon_pixbuf() instead.
	 * widget:
	 *  a GtkWidget
	 * colormap:
	 *  the colormap of the icon
	 * pixmap:
	 *  the image data for the icon
	 * mask:
	 *  the transparency mask for an image.
	 */
	public static void sourceSetIcon(Widget widget, Colormap colormap, Pixmap pixmap, Bitmap mask)
	{
		// void gtk_drag_source_set_icon (GtkWidget *widget,  GdkColormap *colormap,  GdkPixmap *pixmap,  GdkBitmap *mask);
		gtk_drag_source_set_icon((widget is null) ? null : widget.getWidgetStruct(), (colormap is null) ? null : colormap.getColormapStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), (mask is null) ? null : mask.getBitmapStruct());
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular widget
	 * from a GdkPixbuf. GTK+ retains a reference for pixbuf and will
	 * release it when it is no longer needed.
	 * widget:
	 *  a GtkWidget
	 * pixbuf:
	 *  the GdkPixbuf for the drag icon
	 */
	public static void sourceSetIconPixbuf(Widget widget, Pixbuf pixbuf)
	{
		// void gtk_drag_source_set_icon_pixbuf (GtkWidget *widget,  GdkPixbuf *pixbuf);
		gtk_drag_source_set_icon_pixbuf((widget is null) ? null : widget.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular source
	 * to a stock icon.
	 * widget:
	 *  a GtkWidget
	 * stock_id:
	 *  the ID of the stock icon to use
	 */
	public static void sourceSetIconStock(Widget widget, char[] stockId)
	{
		// void gtk_drag_source_set_icon_stock (GtkWidget *widget,  const gchar *stock_id);
		gtk_drag_source_set_icon_stock((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(stockId));
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular source
	 * to a themed icon. See the docs for GtkIconTheme for more details.
	 * widget:
	 *  a GtkWidget
	 * icon_name:
	 *  name of icon to use
	 * Since 2.8
	 */
	public static void sourceSetIconName(Widget widget, char[] iconName)
	{
		// void gtk_drag_source_set_icon_name (GtkWidget *widget,  const gchar *icon_name);
		gtk_drag_source_set_icon_name((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(iconName));
	}
	
	/**
	 * Undoes the effects of gtk_drag_source_set().
	 * widget:
	 * a GtkWidget
	 */
	public static void sourceUnset(Widget widget)
	{
		// void gtk_drag_source_unset (GtkWidget *widget);
		gtk_drag_source_unset((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Changes the target types that this widget offers for drag-and-drop.
	 * The widget must first be made into a drag source with
	 * gtk_drag_source_set().
	 * widget:
	 *  a GtkWidget that's a drag source
	 * target_list:
	 *  list of draggable targets, or NULL for none
	 * Since 2.4
	 */
	public static void sourceSetTargetList(Widget widget, GtkTargetList* targetList)
	{
		// void gtk_drag_source_set_target_list (GtkWidget *widget,  GtkTargetList *target_list);
		gtk_drag_source_set_target_list((widget is null) ? null : widget.getWidgetStruct(), targetList);
	}
	
	/**
	 * Gets the list of targets this widget can provide for
	 * drag-and-drop.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the GtkTargetList, or NULL if none
	 * Since 2.4
	 */
	public static GtkTargetList* sourceGetTargetList(Widget widget)
	{
		// GtkTargetList* gtk_drag_source_get_target_list  (GtkWidget *widget);
		return gtk_drag_source_get_target_list((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the text targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_text_targets() and
	 * gtk_drag_source_set_target_list().
	 * widget:
	 *  a GtkWidget that's is a drag source
	 * Since 2.6
	 */
	public static void sourceAddTextTargets(Widget widget)
	{
		// void gtk_drag_source_add_text_targets  (GtkWidget *widget);
		gtk_drag_source_add_text_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the writable image targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_image_targets() and
	 * gtk_drag_source_set_target_list().
	 * widget:
	 *  a GtkWidget that's is a drag source
	 * Since 2.6
	 */
	public static void sourceAddImageTargets(Widget widget)
	{
		// void gtk_drag_source_add_image_targets  (GtkWidget *widget);
		gtk_drag_source_add_image_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the URI targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_uri_targets() and
	 * gtk_drag_source_set_target_list().
	 * widget:
	 *  a GtkWidget that's is a drag source
	 * Since 2.6
	 */
	public static void sourceAddUriTargets(Widget widget)
	{
		// void gtk_drag_source_add_uri_targets (GtkWidget *widget);
		gtk_drag_source_add_uri_targets((widget is null) ? null : widget.getWidgetStruct());
	}
}
