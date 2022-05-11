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


module gdk.Drop;

private import gdk.ContentFormats;
private import gdk.Device;
private import gdk.Display;
private import gdk.Drag;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InputStream;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/**
 * The `GdkDrop` object represents the target of an ongoing DND operation.
 * 
 * Possible drop sites get informed about the status of the ongoing drag
 * operation with events of type %GDK_DRAG_ENTER, %GDK_DRAG_LEAVE,
 * %GDK_DRAG_MOTION and %GDK_DROP_START. The `GdkDrop` object can be obtained
 * from these [class@Gdk.Event] types using [method@Gdk.DNDEvent.get_drop].
 * 
 * The actual data transfer is initiated from the target side via an async
 * read, using one of the `GdkDrop` methods for this purpose:
 * [method@Gdk.Drop.read_async] or [method@Gdk.Drop.read_value_async].
 * 
 * GTK provides a higher level abstraction based on top of these functions,
 * and so they are not normally needed in GTK applications. See the
 * "Drag and Drop" section of the GTK documentation for more information.
 */
public class Drop : ObjectG
{
	/** the main Gtk struct */
	protected GdkDrop* gdkDrop;

	/** Get the main Gtk struct */
	public GdkDrop* getDropStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDrop;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDrop;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDrop* gdkDrop, bool ownedRef = false)
	{
		this.gdkDrop = gdkDrop;
		super(cast(GObject*)gdkDrop, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_drop_get_type();
	}

	/**
	 * Ends the drag operation after a drop.
	 *
	 * The @action must be a single action selected from the actions
	 * available via [method@Gdk.Drop.get_actions].
	 *
	 * Params:
	 *     action = the action performed by the destination or 0 if the drop failed
	 */
	public void finish(GdkDragAction action)
	{
		gdk_drop_finish(gdkDrop, action);
	}

	/**
	 * Returns the possible actions for this `GdkDrop`.
	 *
	 * If this value contains multiple actions - i.e.
	 * [func@Gdk.DragAction.is_unique] returns %FALSE for the result -
	 * [method@Gdk.Drop.finish] must choose the action to use when
	 * accepting the drop. This will only happen if you passed
	 * %GDK_ACTION_ASK as one of the possible actions in
	 * [method@Gdk.Drop.status]. %GDK_ACTION_ASK itself will not
	 * be included in the actions returned by this function.
	 *
	 * This value may change over the lifetime of the [class@Gdk.Drop]
	 * both as a response to source side actions as well as to calls to
	 * [method@Gdk.Drop.status] or [method@Gdk.Drop.finish]. The source
	 * side will not change this value anymore once a drop has started.
	 *
	 * Returns: The possible `GdkDragActions`
	 */
	public GdkDragAction getActions()
	{
		return gdk_drop_get_actions(gdkDrop);
	}

	/**
	 * Returns the `GdkDevice` performing the drop.
	 *
	 * Returns: The `GdkDevice` performing the drop.
	 */
	public Device getDevice()
	{
		auto __p = gdk_drop_get_device(gdkDrop);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Gets the `GdkDisplay` that @self was created for.
	 *
	 * Returns: a `GdkDisplay`
	 */
	public Display getDisplay()
	{
		auto __p = gdk_drop_get_display(gdkDrop);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * If this is an in-app drag-and-drop operation, returns the `GdkDrag`
	 * that corresponds to this drop.
	 *
	 * If it is not, %NULL is returned.
	 *
	 * Returns: the corresponding `GdkDrag`
	 */
	public Drag getDrag()
	{
		auto __p = gdk_drop_get_drag(gdkDrop);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drag)(cast(GdkDrag*) __p);
	}

	/**
	 * Returns the `GdkContentFormats` that the drop offers the data
	 * to be read in.
	 *
	 * Returns: The possible `GdkContentFormats`
	 */
	public ContentFormats getFormats()
	{
		auto __p = gdk_drop_get_formats(gdkDrop);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p);
	}

	/**
	 * Returns the `GdkSurface` performing the drop.
	 *
	 * Returns: The `GdkSurface` performing the drop.
	 */
	public Surface getSurface()
	{
		auto __p = gdk_drop_get_surface(gdkDrop);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Asynchronously read the dropped data from a `GdkDrop`
	 * in a format that complies with one of the mime types.
	 *
	 * Params:
	 *     mimeTypes = pointer to an array of mime types
	 *     ioPriority = the I/O priority for the read operation
	 *     cancellable = optional `GCancellable` object
	 *     callback = a `GAsyncReadyCallback` to call when
	 *         the request is satisfied
	 *     userData = the data to pass to @callback
	 */
	public void readAsync(string[] mimeTypes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_drop_read_async(gdkDrop, Str.toStringzArray(mimeTypes), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async drop read operation.
	 *
	 * Note that you must not use blocking read calls on the returned stream
	 * in the GTK thread, since some platforms might require communication with
	 * GTK to complete the data transfer. You can use async APIs such as
	 * g_input_stream_read_bytes_async().
	 *
	 * See [method@Gdk.Drop.read_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *     outMimeType = return location for the used mime type
	 *
	 * Returns: the `GInputStream`
	 *
	 * Throws: GException on failure.
	 */
	public InputStream readFinish(AsyncResultIF result, out string outMimeType)
	{
		char* outoutMimeType = null;
		GError* err = null;

		auto __p = gdk_drop_read_finish(gdkDrop, (result is null) ? null : result.getAsyncResultStruct(), &outoutMimeType, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outMimeType = Str.toString(outoutMimeType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p, true);
	}

	/**
	 * Asynchronously request the drag operation's contents converted
	 * to the given @type.
	 *
	 * When the operation is finished @callback will be called. You must
	 * then call [method@Gdk.Drop.read_value_finish] to get the resulting
	 * `GValue`.
	 *
	 * For local drag-and-drop operations that are available in the given
	 * `GType`, the value will be copied directly. Otherwise, GDK will
	 * try to use [func@Gdk.content_deserialize_async] to convert the data.
	 *
	 * Params:
	 *     type = a `GType` to read
	 *     ioPriority = the I/O priority of the request.
	 *     cancellable = optional `GCancellable` object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readValueAsync(GType type, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_drop_read_value_async(gdkDrop, type, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async drop read.
	 *
	 * See [method@Gdk.Drop.read_value_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *
	 * Returns: a `GValue` containing the result.
	 *
	 * Throws: GException on failure.
	 */
	public Value readValueFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gdk_drop_read_value_finish(gdkDrop, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Selects all actions that are potentially supported by the destination.
	 *
	 * When calling this function, do not restrict the passed in actions to
	 * the ones provided by [method@Gdk.Drop.get_actions]. Those actions may
	 * change in the future, even depending on the actions you provide here.
	 *
	 * The @preferred action is a hint to the drag-and-drop mechanism about which
	 * action to use when multiple actions are possible.
	 *
	 * This function should be called by drag destinations in response to
	 * %GDK_DRAG_ENTER or %GDK_DRAG_MOTION events. If the destination does
	 * not yet know the exact actions it supports, it should set any possible
	 * actions first and then later call this function again.
	 *
	 * Params:
	 *     actions = Supported actions of the destination, or 0 to indicate
	 *         that a drop will not be accepted
	 *     preferred = A unique action that's a member of @actions indicating the
	 *         preferred action
	 */
	public void status(GdkDragAction actions, GdkDragAction preferred)
	{
		gdk_drop_status(gdkDrop, actions, preferred);
	}
}
