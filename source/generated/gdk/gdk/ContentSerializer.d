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


module gdk.ContentSerializer;

private import gdk.c.functions;
public  import gdk.c.types;
private import gio.AsyncResultIF;
private import gio.AsyncResultT;
private import gio.Cancellable;
private import gio.OutputStream;
private import glib.ErrorG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/**
 * A `GdkContentSerializer` is used to serialize content for
 * inter-application data transfers.
 * 
 * The `GdkContentSerializer` transforms an object that is identified
 * by a GType into a serialized form (i.e. a byte stream) that is
 * identified by a mime type.
 * 
 * GTK provides serializers and deserializers for common data types
 * such as text, colors, images or file lists. To register your own
 * serialization functions, use [func@Gdk.content_register_serializer].
 * 
 * Also see [class@Gdk.ContentDeserializer].
 */
public class ContentSerializer : ObjectG, AsyncResultIF
{
	/** the main Gtk struct */
	protected GdkContentSerializer* gdkContentSerializer;

	/** Get the main Gtk struct */
	public GdkContentSerializer* getContentSerializerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkContentSerializer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkContentSerializer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkContentSerializer* gdkContentSerializer, bool ownedRef = false)
	{
		this.gdkContentSerializer = gdkContentSerializer;
		super(cast(GObject*)gdkContentSerializer, ownedRef);
	}

	// add the AsyncResult capabilities
	mixin AsyncResultT!(GdkContentSerializer);


	/** */
	public static GType getType()
	{
		return gdk_content_serializer_get_type();
	}

	/**
	 * Gets the cancellable for the current operation.
	 *
	 * This is the `GCancellable` that was passed to [func@content_serialize_async].
	 *
	 * Returns: the cancellable for the current operation
	 */
	public Cancellable getCancellable()
	{
		auto __p = gdk_content_serializer_get_cancellable(gdkContentSerializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cancellable)(cast(GCancellable*) __p);
	}

	/**
	 * Gets the `GType` to of the object to serialize.
	 *
	 * Returns: the `GType` for the current operation
	 */
	public GType getGtype()
	{
		return gdk_content_serializer_get_gtype(gdkContentSerializer);
	}

	/**
	 * Gets the mime type to serialize to.
	 *
	 * Returns: the mime type for the current operation
	 */
	public string getMimeType()
	{
		return Str.toString(gdk_content_serializer_get_mime_type(gdkContentSerializer));
	}

	/**
	 * Gets the output stream for the current operation.
	 *
	 * This is the stream that was passed to [func@content_serialize_async].
	 *
	 * Returns: the output stream for the current operation
	 */
	public OutputStream getOutputStream()
	{
		auto __p = gdk_content_serializer_get_output_stream(gdkContentSerializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GOutputStream*) __p);
	}

	/**
	 * Gets the I/O priority for the current operation.
	 *
	 * This is the priority that was passed to [func@content_serialize_async].
	 *
	 * Returns: the I/O priority for the current operation
	 */
	public int getPriority()
	{
		return gdk_content_serializer_get_priority(gdkContentSerializer);
	}

	/**
	 * Gets the data that was associated with the current operation.
	 *
	 * See [method@Gdk.ContentSerializer.set_task_data].
	 *
	 * Returns: the task data for @serializer
	 */
	public void* getTaskData()
	{
		return gdk_content_serializer_get_task_data(gdkContentSerializer);
	}

	/**
	 * Gets the user data that was passed when the serializer was registered.
	 *
	 * Returns: the user data for this serializer
	 */
	public void* getUserData()
	{
		return gdk_content_serializer_get_user_data(gdkContentSerializer);
	}

	/**
	 * Gets the `GValue` to read the object to serialize from.
	 *
	 * Returns: the `GValue` for the current operation
	 */
	public Value getValue()
	{
		auto __p = gdk_content_serializer_get_value(gdkContentSerializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Indicate that the serialization has ended with an error.
	 *
	 * This function consumes @error.
	 *
	 * Params:
	 *     error = a `GError`
	 */
	public void returnError(ErrorG error)
	{
		gdk_content_serializer_return_error(gdkContentSerializer, (error is null) ? null : error.getErrorGStruct(true));
	}

	/**
	 * Indicate that the serialization has been successfully completed.
	 */
	public void returnSuccess()
	{
		gdk_content_serializer_return_success(gdkContentSerializer);
	}

	/**
	 * Associate data with the current serialization operation.
	 *
	 * Params:
	 *     data = data to associate with this operation
	 *     notify = destroy notify for @data
	 */
	public void setTaskData(void* data, GDestroyNotify notify)
	{
		gdk_content_serializer_set_task_data(gdkContentSerializer, data, notify);
	}
}
