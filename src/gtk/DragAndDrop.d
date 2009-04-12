/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtk-Drag-and-Drop.html
 * outPack = gtk
 * outFile = DragAndDrop
 * strct   = GdkDragContext
 * realStrct=
 * ctorStrct=
 * clss    = DragAndDrop
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_drag_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gdk.Window
 * 	- gdk.DragContext
 * 	- gtk.TargetList
 * 	- gdk.Event
 * 	- gdk.Colormap
 * 	- gdk.Pixmap
 * 	- gdk.Bitmap
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColormap* -> Colormap
 * 	- GdkDragContext* -> DragContext
 * 	- GdkEvent* -> Event
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkWindow* -> Window
 * 	- GtkTargetList* -> TargetList
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.DragAndDrop;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtk.Widget;
private import gdk.Window;
private import gdk.DragContext;
private import gtk.TargetList;
private import gdk.Event;
private import gdk.Colormap;
private import gdk.Pixmap;
private import gdk.Bitmap;
private import gdk.Pixbuf;




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
		if(gdkDragContext is null)
		{
			this = null;
			return;
		}
		this.gdkDragContext = gdkDragContext;
	}
	
	/**
	 */
	
	/**
	 * Sets a widget as a potential drop destination, and adds default behaviors.
	 * The default behaviors listed in flags have an effect similar
	 * to installing default handlers for the widget's drag-and-drop signals
	 * ("drag-motion", "drag-drop", ...). They all exist
	 * for convenience. When passing GTK_DEST_DEFAULT_ALL for instance it is
	 * sufficient to connect to the widget's "drag-data-received"
	 * signal to get primitive, but consistent drag-and-drop support.
	 * Things become more complicated when you try to preview the dragged data,
	 * as described in the documentation for "drag-motion". The default
	 * behaviors described by flags make some assumptions, that can conflict
	 * with your own signal handlers. For instance GTK_DEST_DEFAULT_DROP causes
	 * invokations of gdk_drag_status() in the context of "drag-motion",
	 * and invokations of gtk_drag_finish() in "drag-data-received".
	 * Especially the later is dramatic, when your own "drag-motion"
	 * handler calls gtk_drag_get_data() to inspect the dragged data.
	 * Params:
	 * widget =  a GtkWidget
	 * flags =  which types of default drag behavior to use
	 * targets =  a pointer to an array of GtkTargetEntrys indicating
	 * the drop types that this widget will accept. Later you can access the list
	 * with gtk_drag_dest_get_target_list() and gtk_drag_dest_find_target().
	 * nTargets =  the number of entries in targets.
	 * actions =  a bitmask of possible actions for a drop onto this widget.
	 */
	public static void destSet(Widget widget, GtkDestDefaults flags, GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_drag_dest_set (GtkWidget *widget,  GtkDestDefaults flags,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_drag_dest_set((widget is null) ? null : widget.getWidgetStruct(), flags, targets, nTargets, actions);
	}
	
	/**
	 * Sets this widget as a proxy for drops to another window.
	 * Params:
	 * widget = a GtkWidget
	 * proxyWindow = the window to which to forward drag events
	 * protocol = the drag protocol which the proxy_window accepts
	 *  (You can use gdk_drag_get_protocol() to determine this)
	 * useCoordinates = If TRUE, send the same coordinates to the
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
	 * Params:
	 * widget = a GtkWidget
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
	 * Params:
	 * widget =  drag destination widget
	 * context =  drag context
	 * targetList =  list of droppable targets, or NULL to use
	 *  gtk_drag_dest_get_target_list (widget).
	 * Returns: first target that the source offers and the dest can accept, or GDK_NONE
	 */
	public static GdkAtom destFindTarget(Widget widget, DragContext context, TargetList targetList)
	{
		// GdkAtom gtk_drag_dest_find_target (GtkWidget *widget,  GdkDragContext *context,  GtkTargetList *target_list);
		return gtk_drag_dest_find_target((widget is null) ? null : widget.getWidgetStruct(), (context is null) ? null : context.getDragContextStruct(), (targetList is null) ? null : targetList.getTargetListStruct());
	}
	
	/**
	 * Returns the list of targets this widget can accept from
	 * drag-and-drop.
	 * Params:
	 * widget =  a GtkWidget
	 * Returns: the GtkTargetList, or NULL if none
	 */
	public static TargetList destGetTargetList(Widget widget)
	{
		// GtkTargetList* gtk_drag_dest_get_target_list (GtkWidget *widget);
		auto p = gtk_drag_dest_get_target_list((widget is null) ? null : widget.getWidgetStruct());
		if(p is null)
		{
			return null;
		}
		return new TargetList(cast(GtkTargetList*) p);
	}
	
	/**
	 * Sets the target types that this widget can accept from drag-and-drop.
	 * The widget must first be made into a drag destination with
	 * gtk_drag_dest_set().
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
	 * targetList =  list of droppable targets, or NULL for none
	 */
	public static void destSetTargetList(Widget widget, TargetList targetList)
	{
		// void gtk_drag_dest_set_target_list (GtkWidget *widget,  GtkTargetList *target_list);
		gtk_drag_dest_set_target_list((widget is null) ? null : widget.getWidgetStruct(), (targetList is null) ? null : targetList.getTargetListStruct());
	}
	
	/**
	 * Add the text targets supported by GtkSelection to
	 * the target list of the drag destination. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_text_targets() and
	 * gtk_drag_dest_set_target_list().
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
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
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
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
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
	 */
	public static void destAddUriTargets(Widget widget)
	{
		// void gtk_drag_dest_add_uri_targets (GtkWidget *widget);
		gtk_drag_dest_add_uri_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Tells the widget to emit ::drag-motion and ::drag-leave
	 * events regardless of the targets and the GTK_DEST_DEFAULT_MOTION
	 * flag.
	 * This may be used when a widget wants to do generic
	 * actions regardless of the targets that the source offers.
	 * Since 2.10
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
	 * trackMotion =  whether to accept all targets
	 */
	public static void destSetTrackMotion(Widget widget, int trackMotion)
	{
		// void gtk_drag_dest_set_track_motion (GtkWidget *widget,  gboolean track_motion);
		gtk_drag_dest_set_track_motion((widget is null) ? null : widget.getWidgetStruct(), trackMotion);
	}
	
	/**
	 * Returns whether the widget has been configured to always
	 * emit ::drag-motion signals.
	 * Since 2.10
	 * Params:
	 * widget =  a GtkWidget that's a drag destination
	 * Returns: TRUE if the widget always emits ::drag-motion events
	 */
	public static int destGetTrackMotion(Widget widget)
	{
		// gboolean gtk_drag_dest_get_track_motion (GtkWidget *widget);
		return gtk_drag_dest_get_track_motion((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Informs the drag source that the drop is finished, and
	 * that the data of the drag will no longer be required.
	 * Params:
	 * success = a flag indicating whether the drop was successful
	 * del = a flag indicating whether the source should delete the
	 *  original data. (This should be TRUE for a move)
	 * time = the timestamp from the "drag_data_drop" signal.
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
	 * Params:
	 * widget = the widget that will receive the "drag_data_received"
	 *  signal.
	 * context = the drag context
	 * target = the target (form of the data) to retrieve.
	 * time = a timestamp for retrieving the data. This will
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
	 * Returns:if the drag is occurring within a single application, a pointer to the source widget. Otherwise, NULL.
	 */
	public Widget getSourceWidget()
	{
		// GtkWidget * gtk_drag_get_source_widget (GdkDragContext *context);
		auto p = gtk_drag_get_source_widget(gdkDragContext);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Draws a highlight around a widget. This will attach
	 * handlers to "expose_event" and "draw", so the highlight
	 * will continue to be displayed until gtk_drag_unhighlight()
	 * is called.
	 * Params:
	 * widget = a widget to highlight
	 */
	public static void highlight(Widget widget)
	{
		// void gtk_drag_highlight (GtkWidget *widget);
		gtk_drag_highlight((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Removes a highlight set by gtk_drag_highlight() from
	 * a widget.
	 * Params:
	 * widget = a widget to remove the highlight from.
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
	 * Params:
	 * widget =  the source widget.
	 * targets =  The targets (data formats) in which the
	 *  source can provide the data.
	 * actions =  A bitmask of the allowed drag actions for this drag.
	 * button =  The button the user clicked to start the drag.
	 * event =  The event that triggered the start of the drag.
	 * Returns: the context for this drag.
	 */
	public static DragContext begin(Widget widget, TargetList targets, GdkDragAction actions, int button, Event event)
	{
		// GdkDragContext * gtk_drag_begin (GtkWidget *widget,  GtkTargetList *targets,  GdkDragAction actions,  gint button,  GdkEvent *event);
		auto p = gtk_drag_begin((widget is null) ? null : widget.getWidgetStruct(), (targets is null) ? null : targets.getTargetListStruct(), actions, button, (event is null) ? null : event.getEventStruct());
		if(p is null)
		{
			return null;
		}
		return new DragContext(cast(GdkDragContext*) p);
	}
	
	/**
	 * Changes the icon for a widget to a given widget. GTK+
	 * will not destroy the icon, so if you don't want
	 * it to persist, you should connect to the "drag-end"
	 * signal and destroy it yourself.
	 * Params:
	 * widget =  a toplevel window to use as an icon.
	 * hotX =  the X offset within widget of the hotspot.
	 * hotY =  the Y offset within widget of the hotspot.
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
	 * Params:
	 * colormap =  the colormap of the icon
	 * pixmap =  the image data for the icon
	 * mask =  the transparency mask for the icon
	 * hotX =  the X offset within pixmap of the hotspot.
	 * hotY =  the Y offset within pixmap of the hotspot.
	 */
	public void setIconPixmap(Colormap colormap, Pixmap pixmap, Bitmap mask, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_pixmap (GdkDragContext *context,  GdkColormap *colormap,  GdkPixmap *pixmap,  GdkBitmap *mask,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_pixmap(gdkDragContext, (colormap is null) ? null : colormap.getColormapStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), (mask is null) ? null : mask.getBitmapStruct(), hotX, hotY);
	}
	
	/**
	 * Sets pixbuf as the icon for a given drag.
	 * Params:
	 * pixbuf =  the GdkPixbuf to use as the drag icon.
	 * hotX =  the X offset within widget of the hotspot.
	 * hotY =  the Y offset within widget of the hotspot.
	 */
	public void setIconPixbuf(Pixbuf pixbuf, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_pixbuf (GdkDragContext *context,  GdkPixbuf *pixbuf,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_pixbuf(gdkDragContext, (pixbuf is null) ? null : pixbuf.getPixbufStruct(), hotX, hotY);
	}
	
	/**
	 * Sets the icon for a given drag from a stock ID.
	 * Params:
	 * stockId =  the ID of the stock icon to use for the drag.
	 * hotX =  the X offset within the icon of the hotspot.
	 * hotY =  the Y offset within the icon of the hotspot.
	 */
	public void setIconStock(string stockId, int hotX, int hotY)
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
	 * Since 2.8
	 * Params:
	 * iconName =  name of icon to use
	 * hotX =  the X offset of the hotspot within the icon
	 * hotY =  the Y offset of the hotspot within the icon
	 */
	public void setIconName(string iconName, int hotX, int hotY)
	{
		// void gtk_drag_set_icon_name (GdkDragContext *context,  const gchar *icon_name,  gint hot_x,  gint hot_y);
		gtk_drag_set_icon_name(gdkDragContext, Str.toStringz(iconName), hotX, hotY);
	}
	
	/**
	 * Sets the icon for a particular drag to the default
	 * icon.
	 */
	public void setIconDefault()
	{
		// void gtk_drag_set_icon_default (GdkDragContext *context);
		gtk_drag_set_icon_default(gdkDragContext);
	}
	
	/**
	 * Warning
	 * gtk_drag_set_default_icon is deprecated and should not be used in newly-written code. Change the default drag icon via the stock system by
	 *  changing the stock pixbuf for GTK_STOCK_DND instead.
	 * Changes the default drag icon. GTK+ retains references for the
	 * arguments, and will release them when they are no longer needed.
	 * Params:
	 * colormap =  the colormap of the icon
	 * pixmap =  the image data for the icon
	 * mask =  the transparency mask for an image.
	 * hotX =  The X offset within widget of the hotspot.
	 * hotY =  The Y offset within widget of the hotspot.
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
	 * Params:
	 * widget =  a GtkWidget
	 * startX =  X coordinate of start of drag
	 * startY =  Y coordinate of start of drag
	 * currentX =  current X coordinate
	 * currentY =  current Y coordinate
	 * Returns: TRUE if the drag threshold has been passed.
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
	 * Params:
	 * widget = a GtkWidget
	 * startButtonMask = the bitmask of buttons that can start the drag
	 * targets = the table of targets that the drag will support
	 * nTargets = the number of items in targets
	 * actions = the bitmask of possible actions for a drag from this
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
	 * Params:
	 * widget =  a GtkWidget
	 * colormap =  the colormap of the icon
	 * pixmap =  the image data for the icon
	 * mask =  the transparency mask for an image.
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
	 * Params:
	 * widget =  a GtkWidget
	 * pixbuf =  the GdkPixbuf for the drag icon
	 */
	public static void sourceSetIconPixbuf(Widget widget, Pixbuf pixbuf)
	{
		// void gtk_drag_source_set_icon_pixbuf (GtkWidget *widget,  GdkPixbuf *pixbuf);
		gtk_drag_source_set_icon_pixbuf((widget is null) ? null : widget.getWidgetStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular source
	 * to a stock icon.
	 * Params:
	 * widget =  a GtkWidget
	 * stockId =  the ID of the stock icon to use
	 */
	public static void sourceSetIconStock(Widget widget, string stockId)
	{
		// void gtk_drag_source_set_icon_stock (GtkWidget *widget,  const gchar *stock_id);
		gtk_drag_source_set_icon_stock((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(stockId));
	}
	
	/**
	 * Sets the icon that will be used for drags from a particular source
	 * to a themed icon. See the docs for GtkIconTheme for more details.
	 * Since 2.8
	 * Params:
	 * widget =  a GtkWidget
	 * iconName =  name of icon to use
	 */
	public static void sourceSetIconName(Widget widget, string iconName)
	{
		// void gtk_drag_source_set_icon_name (GtkWidget *widget,  const gchar *icon_name);
		gtk_drag_source_set_icon_name((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(iconName));
	}
	
	/**
	 * Undoes the effects of gtk_drag_source_set().
	 * Params:
	 * widget = a GtkWidget
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
	 * Since 2.4
	 * Params:
	 * widget =  a GtkWidget that's a drag source
	 * targetList =  list of draggable targets, or NULL for none
	 */
	public static void sourceSetTargetList(Widget widget, TargetList targetList)
	{
		// void gtk_drag_source_set_target_list (GtkWidget *widget,  GtkTargetList *target_list);
		gtk_drag_source_set_target_list((widget is null) ? null : widget.getWidgetStruct(), (targetList is null) ? null : targetList.getTargetListStruct());
	}
	
	/**
	 * Gets the list of targets this widget can provide for
	 * drag-and-drop.
	 * Since 2.4
	 * Params:
	 * widget =  a GtkWidget
	 * Returns: the GtkTargetList, or NULL if none
	 */
	public static TargetList sourceGetTargetList(Widget widget)
	{
		// GtkTargetList* gtk_drag_source_get_target_list (GtkWidget *widget);
		auto p = gtk_drag_source_get_target_list((widget is null) ? null : widget.getWidgetStruct());
		if(p is null)
		{
			return null;
		}
		return new TargetList(cast(GtkTargetList*) p);
	}
	
	/**
	 * Add the text targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_text_targets() and
	 * gtk_drag_source_set_target_list().
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's is a drag source
	 */
	public static void sourceAddTextTargets(Widget widget)
	{
		// void gtk_drag_source_add_text_targets (GtkWidget *widget);
		gtk_drag_source_add_text_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the writable image targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_image_targets() and
	 * gtk_drag_source_set_target_list().
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's is a drag source
	 */
	public static void sourceAddImageTargets(Widget widget)
	{
		// void gtk_drag_source_add_image_targets (GtkWidget *widget);
		gtk_drag_source_add_image_targets((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Add the URI targets supported by GtkSelection to
	 * the target list of the drag source. The targets
	 * are added with info = 0. If you need another value,
	 * use gtk_target_list_add_uri_targets() and
	 * gtk_drag_source_set_target_list().
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget that's is a drag source
	 */
	public static void sourceAddUriTargets(Widget widget)
	{
		// void gtk_drag_source_add_uri_targets (GtkWidget *widget);
		gtk_drag_source_add_uri_targets((widget is null) ? null : widget.getWidgetStruct());
	}
}
