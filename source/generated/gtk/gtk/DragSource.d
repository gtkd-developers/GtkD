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


module gtk.DragSource;

private import gdk.ContentProvider;
private import gdk.Drag;
private import gdk.PaintableIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.GestureSingle;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkDragSource` is an event controller to initiate Drag-And-Drop operations.
 * 
 * `GtkDragSource` can be set up with the necessary
 * ingredients for a DND operation ahead of time. This includes
 * the source for the data that is being transferred, in the form
 * of a [class@Gdk.ContentProvider], the desired action, and the icon to
 * use during the drag operation. After setting it up, the drag
 * source must be added to a widget as an event controller, using
 * [method@Gtk.Widget.add_controller].
 * 
 * ```c
 * static void
 * my_widget_init (MyWidget *self)
 * {
 * GtkDragSource *drag_source = gtk_drag_source_new ();
 * 
 * g_signal_connect (drag_source, "prepare", G_CALLBACK (on_drag_prepare), self);
 * g_signal_connect (drag_source, "drag-begin", G_CALLBACK (on_drag_begin), self);
 * 
 * gtk_widget_add_controller (GTK_WIDGET (self), GTK_EVENT_CONTROLLER (drag_source));
 * }
 * ```
 * 
 * Setting up the content provider and icon ahead of time only makes
 * sense when the data does not change. More commonly, you will want
 * to set them up just in time. To do so, `GtkDragSource` has
 * [signal@Gtk.DragSource::prepare] and [signal@Gtk.DragSource::drag-begin]
 * signals.
 * 
 * The ::prepare signal is emitted before a drag is started, and
 * can be used to set the content provider and actions that the
 * drag should be started with.
 * 
 * ```c
 * static GdkContentProvider *
 * on_drag_prepare (GtkDragSource *source,
 * double         x,
 * double         y,
 * MyWidget      *self)
 * {
 * // This widget supports two types of content: GFile objects
 * // and GdkPixbuf objects; GTK will handle the serialization
 * // of these types automatically
 * GFile *file = my_widget_get_file (self);
 * GdkPixbuf *pixbuf = my_widget_get_pixbuf (self);
 * 
 * return gdk_content_provider_new_union ((GdkContentProvider *[2]) {
 * gdk_content_provider_new_typed (G_TYPE_FILE, file),
 * gdk_content_provider_new_typed (GDK_TYPE_PIXBUF, pixbuf),
 * }, 2);
 * }
 * ```
 * 
 * The ::drag-begin signal is emitted after the `GdkDrag` object has
 * been created, and can be used to set up the drag icon.
 * 
 * ```c
 * static void
 * on_drag_begin (GtkDragSource *source,
 * GdkDrag       *drag,
 * MyWidget      *self)
 * {
 * // Set the widget as the drag icon
 * GdkPaintable *paintable = gtk_widget_paintable_new (GTK_WIDGET (self));
 * gtk_drag_source_set_icon (source, paintable, 0, 0);
 * g_object_unref (paintable);
 * }
 * ```
 * 
 * During the DND operation, `GtkDragSource` emits signals that
 * can be used to obtain updates about the status of the operation,
 * but it is not normally necessary to connect to any signals,
 * except for one case: when the supported actions include
 * %GDK_ACTION_MOVE, you need to listen for the
 * [signal@Gtk.DragSource::drag-end] signal and delete the
 * data after it has been transferred.
 */
public class DragSource : GestureSingle
{
	/** the main Gtk struct */
	protected GtkDragSource* gtkDragSource;

	/** Get the main Gtk struct */
	public GtkDragSource* getDragSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDragSource;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDragSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDragSource* gtkDragSource, bool ownedRef = false)
	{
		this.gtkDragSource = gtkDragSource;
		super(cast(GtkGestureSingle*)gtkDragSource, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drag_source_get_type();
	}

	/**
	 * Creates a new `GtkDragSource` object.
	 *
	 * Returns: the new `GtkDragSource`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_drag_source_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDragSource*) __p, true);
	}

	/**
	 * Cancels a currently ongoing drag operation.
	 */
	public void dragCancel()
	{
		gtk_drag_source_drag_cancel(gtkDragSource);
	}

	/**
	 * Gets the actions that are currently set on the `GtkDragSource`.
	 *
	 * Returns: the actions set on @source
	 */
	public GdkDragAction getActions()
	{
		return gtk_drag_source_get_actions(gtkDragSource);
	}

	/**
	 * Gets the current content provider of a `GtkDragSource`.
	 *
	 * Returns: the `GdkContentProvider` of @source
	 */
	public ContentProvider getContent()
	{
		auto __p = gtk_drag_source_get_content(gtkDragSource);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentProvider)(cast(GdkContentProvider*) __p);
	}

	/**
	 * Returns the underlying `GdkDrag` object for an ongoing drag.
	 *
	 * Returns: the `GdkDrag` of the current
	 *     drag operation
	 */
	public Drag getDrag()
	{
		auto __p = gtk_drag_source_get_drag(gtkDragSource);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drag)(cast(GdkDrag*) __p);
	}

	/**
	 * Sets the actions on the `GtkDragSource`.
	 *
	 * During a DND operation, the actions are offered to potential
	 * drop targets. If @actions include %GDK_ACTION_MOVE, you need
	 * to listen to the [signal@Gtk.DragSource::drag-end] signal and
	 * handle @delete_data being %TRUE.
	 *
	 * This function can be called before a drag is started,
	 * or in a handler for the [signal@Gtk.DragSource::prepare] signal.
	 *
	 * Params:
	 *     actions = the actions to offer
	 */
	public void setActions(GdkDragAction actions)
	{
		gtk_drag_source_set_actions(gtkDragSource, actions);
	}

	/**
	 * Sets a content provider on a `GtkDragSource`.
	 *
	 * When the data is requested in the cause of a DND operation,
	 * it will be obtained from the content provider.
	 *
	 * This function can be called before a drag is started,
	 * or in a handler for the [signal@Gtk.DragSource::prepare] signal.
	 *
	 * You may consider setting the content provider back to
	 * %NULL in a [signal@Gtk.DragSource::drag-end] signal handler.
	 *
	 * Params:
	 *     content = a `GdkContentProvider`
	 */
	public void setContent(ContentProvider content)
	{
		gtk_drag_source_set_content(gtkDragSource, (content is null) ? null : content.getContentProviderStruct());
	}

	/**
	 * Sets a paintable to use as icon during DND operations.
	 *
	 * The hotspot coordinates determine the point on the icon
	 * that gets aligned with the hotspot of the cursor.
	 *
	 * If @paintable is %NULL, a default icon is used.
	 *
	 * This function can be called before a drag is started, or in
	 * a [signal@Gtk.DragSource::prepare] or
	 * [signal@Gtk.DragSource::drag-begin] signal handler.
	 *
	 * Params:
	 *     paintable = the `GdkPaintable` to use as icon
	 *     hotX = the hotspot X coordinate on the icon
	 *     hotY = the hotspot Y coordinate on the icon
	 */
	public void setIcon(PaintableIF paintable, int hotX, int hotY)
	{
		gtk_drag_source_set_icon(gtkDragSource, (paintable is null) ? null : paintable.getPaintableStruct(), hotX, hotY);
	}

	/**
	 * Emitted on the drag source when a drag is started.
	 *
	 * It can be used to e.g. set a custom drag icon with
	 * [method@Gtk.DragSource.set_icon].
	 *
	 * Params:
	 *     drag = the `GdkDrag` object
	 */
	gulong addOnDragBegin(void delegate(Drag, DragSource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-begin", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the drag source when a drag has failed.
	 *
	 * The signal handler may handle a failed drag operation based on
	 * the type of error. It should return %TRUE if the failure has been handled
	 * and the default "drag operation failed" animation should not be shown.
	 *
	 * Params:
	 *     drag = the `GdkDrag` object
	 *     reason = information on why the drag failed
	 *
	 * Returns: %TRUE if the failed drag operation has been already handled
	 */
	gulong addOnDragCancel(bool delegate(Drag, GdkDragCancelReason, DragSource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-cancel", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the drag source when a drag is finished.
	 *
	 * A typical reason to connect to this signal is to undo
	 * things done in [signal@Gtk.DragSource::prepare] or
	 * [signal@Gtk.DragSource::drag-begin] handlers.
	 *
	 * Params:
	 *     drag = the `GdkDrag` object
	 *     deleteData = %TRUE if the drag was performing %GDK_ACTION_MOVE,
	 *         and the data should be deleted
	 */
	gulong addOnDragEnd(void delegate(Drag, bool, DragSource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-end", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a drag is about to be initiated.
	 *
	 * It returns the `GdkContentProvider` to use for the drag that is about
	 * to start. The default handler for this signal returns the value of
	 * the [property@Gtk.DragSource:content] property, so if you set up that
	 * property ahead of time, you don't need to connect to this signal.
	 *
	 * Params:
	 *     x = the X coordinate of the drag starting point
	 *     y = the Y coordinate fo the drag starting point
	 *
	 * Returns: a `GdkContentProvider`
	 */
	gulong addOnPrepare(ContentProvider delegate(double, double, DragSource) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prepare", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
