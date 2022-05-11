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


module gtk.DropTargetAsync;

private import gdk.ContentFormats;
private import gdk.Drop;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EventController;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkDropTargetAsync` is an event controller to receive Drag-and-Drop
 * operations, asynchronously.
 * 
 * It is the more complete but also more complex method of handling drop
 * operations compared to [class@Gtk.DropTarget], and you should only use
 * it if `GtkDropTarget` doesn't provide all the features you need.
 * 
 * To use a `GtkDropTargetAsync` to receive drops on a widget, you create
 * a `GtkDropTargetAsync` object, configure which data formats and actions
 * you support, connect to its signals, and then attach it to the widget
 * with [method@Gtk.Widget.add_controller].
 * 
 * During a drag operation, the first signal that a `GtkDropTargetAsync`
 * emits is [signal@Gtk.DropTargetAsync::accept], which is meant to determine
 * whether the target is a possible drop site for the ongoing drop. The
 * default handler for the ::accept signal accepts the drop if it finds
 * a compatible data format and an action that is supported on both sides.
 * 
 * If it is, and the widget becomes a target, you will receive a
 * [signal@Gtk.DropTargetAsync::drag-enter] signal, followed by
 * [signal@Gtk.DropTargetAsync::drag-motion] signals as the pointer moves,
 * optionally a [signal@Gtk.DropTargetAsync::drop] signal when a drop happens,
 * and finally a [signal@Gtk.DropTargetAsync::drag-leave] signal when the
 * pointer moves off the widget.
 * 
 * The ::drag-enter and ::drag-motion handler return a `GdkDragAction`
 * to update the status of the ongoing operation. The ::drop handler
 * should decide if it ultimately accepts the drop and if it does, it
 * should initiate the data transfer and finish the operation by calling
 * [method@Gdk.Drop.finish].
 * 
 * Between the ::drag-enter and ::drag-leave signals the widget is a
 * current drop target, and will receive the %GTK_STATE_FLAG_DROP_ACTIVE
 * state, which can be used by themes to style the widget as a drop target.
 */
public class DropTargetAsync : EventController
{
	/** the main Gtk struct */
	protected GtkDropTargetAsync* gtkDropTargetAsync;

	/** Get the main Gtk struct */
	public GtkDropTargetAsync* getDropTargetAsyncStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDropTargetAsync;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDropTargetAsync;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDropTargetAsync* gtkDropTargetAsync, bool ownedRef = false)
	{
		this.gtkDropTargetAsync = gtkDropTargetAsync;
		super(cast(GtkEventController*)gtkDropTargetAsync, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drop_target_async_get_type();
	}

	/**
	 * Creates a new `GtkDropTargetAsync` object.
	 *
	 * Params:
	 *     formats = the supported data formats
	 *     actions = the supported actions
	 *
	 * Returns: the new `GtkDropTargetAsync`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ContentFormats formats, GdkDragAction actions)
	{
		auto __p = gtk_drop_target_async_new((formats is null) ? null : formats.getContentFormatsStruct(true), actions);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDropTargetAsync*) __p, true);
	}

	/**
	 * Gets the actions that this drop target supports.
	 *
	 * Returns: the actions that this drop target supports
	 */
	public GdkDragAction getActions()
	{
		return gtk_drop_target_async_get_actions(gtkDropTargetAsync);
	}

	/**
	 * Gets the data formats that this drop target accepts.
	 *
	 * If the result is %NULL, all formats are expected to be supported.
	 *
	 * Returns: the supported data formats
	 */
	public ContentFormats getFormats()
	{
		auto __p = gtk_drop_target_async_get_formats(gtkDropTargetAsync);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p, true);
	}

	/**
	 * Sets the @drop as not accepted on this drag site.
	 *
	 * This function should be used when delaying the decision
	 * on whether to accept a drag or not until after reading
	 * the data.
	 *
	 * Params:
	 *     drop = the `GdkDrop` of an ongoing drag operation
	 */
	public void rejectDrop(Drop drop)
	{
		gtk_drop_target_async_reject_drop(gtkDropTargetAsync, (drop is null) ? null : drop.getDropStruct());
	}

	/**
	 * Sets the actions that this drop target supports.
	 *
	 * Params:
	 *     actions = the supported actions
	 */
	public void setActions(GdkDragAction actions)
	{
		gtk_drop_target_async_set_actions(gtkDropTargetAsync, actions);
	}

	/**
	 * Sets the data formats that this drop target will accept.
	 *
	 * Params:
	 *     formats = the supported data formats or %NULL for any format
	 */
	public void setFormats(ContentFormats formats)
	{
		gtk_drop_target_async_set_formats(gtkDropTargetAsync, (formats is null) ? null : formats.getContentFormatsStruct());
	}

	/**
	 * Emitted on the drop site when a drop operation is about to begin.
	 *
	 * If the drop is not accepted, %FALSE will be returned and the drop target
	 * will ignore the drop. If %TRUE is returned, the drop is accepted for now
	 * but may be rejected later via a call to [method@Gtk.DropTargetAsync.reject_drop]
	 * or ultimately by returning %FALSE from a [signal@Gtk.DropTargetAsync::drop]
	 * handler.
	 *
	 * The default handler for this signal decides whether to accept the drop
	 * based on the formats provided by the @drop.
	 *
	 * If the decision whether the drop will be accepted or rejected needs
	 * further processing, such as inspecting the data, this function should
	 * return %TRUE and proceed as is @drop was accepted and if it decides to
	 * reject the drop later, it should call [method@Gtk.DropTargetAsync.reject_drop].
	 *
	 * Params:
	 *     drop = the `GdkDrop`
	 *
	 * Returns: %TRUE if @drop is accepted
	 */
	gulong addOnAccept(bool delegate(Drop, DropTargetAsync) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accept", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the drop site when the pointer enters the widget.
	 *
	 * It can be used to set up custom highlighting.
	 *
	 * Params:
	 *     drop = the `GdkDrop`
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: Preferred action for this drag operation.
	 */
	gulong addOnDragEnter(GdkDragAction delegate(Drop, double, double, DropTargetAsync) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the drop site when the pointer leaves the widget.
	 *
	 * Its main purpose it to undo things done in
	 * `GtkDropTargetAsync`::drag-enter.
	 *
	 * Params:
	 *     drop = the `GdkDrop`
	 */
	gulong addOnDragLeave(void delegate(Drop, DropTargetAsync) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted while the pointer is moving over the drop target.
	 *
	 * Params:
	 *     drop = the `GdkDrop`
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: Preferred action for this drag operation.
	 */
	gulong addOnDragMotion(GdkDragAction delegate(Drop, double, double, DropTargetAsync) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drag-motion", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on the drop site when the user drops the data onto the widget.
	 *
	 * The signal handler must determine whether the pointer position is in a
	 * drop zone or not. If it is not in a drop zone, it returns %FALSE and no
	 * further processing is necessary.
	 *
	 * Otherwise, the handler returns %TRUE. In this case, this handler will
	 * accept the drop. The handler must ensure that [method@Gdk.Drop.finish]
	 * is called to let the source know that the drop is done. The call to
	 * [method@Gdk.Drop.finish] must only be done when all data has been received.
	 *
	 * To receive the data, use one of the read functions provided by
	 * [class@Gdk.Drop] such as [method@Gdk.Drop.read_async] or
	 * [method@Gdk.Drop.read_value_async].
	 *
	 * Params:
	 *     drop = the `GdkDrop`
	 *     x = the x coordinate of the current pointer position
	 *     y = the y coordinate of the current pointer position
	 *
	 * Returns: whether the drop is accepted at the given pointer position
	 */
	gulong addOnDrop(bool delegate(Drop, double, double, DropTargetAsync) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "drop", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
