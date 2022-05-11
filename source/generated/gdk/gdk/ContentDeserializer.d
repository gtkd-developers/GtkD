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


module gdk.ContentDeserializer;

private import gdk.c.functions;
public  import gdk.c.types;
private import gio.AsyncResultIF;
private import gio.AsyncResultT;
private import gio.Cancellable;
private import gio.InputStream;
private import glib.ErrorG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/**
 * A `GdkContentDeserializer` is used to deserialize content received via
 * inter-application data transfers.
 * 
 * The `GdkContentDeserializer` transforms serialized content that is
 * identified by a mime type into an object identified by a GType.
 * 
 * GTK provides serializers and deserializers for common data types
 * such as text, colors, images or file lists. To register your own
 * deserialization functions, use [func@content_register_deserializer].
 * 
 * Also see [class@Gdk.ContentSerializer].
 */
public class ContentDeserializer : ObjectG, AsyncResultIF
{
	/** the main Gtk struct */
	protected GdkContentDeserializer* gdkContentDeserializer;

	/** Get the main Gtk struct */
	public GdkContentDeserializer* getContentDeserializerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkContentDeserializer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkContentDeserializer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkContentDeserializer* gdkContentDeserializer, bool ownedRef = false)
	{
		this.gdkContentDeserializer = gdkContentDeserializer;
		super(cast(GObject*)gdkContentDeserializer, ownedRef);
	}

	// add the AsyncResult capabilities
	mixin AsyncResultT!(GdkContentDeserializer);


	/** */
	public static GType getType()
	{
		return gdk_content_deserializer_get_type();
	}

	/**
	 * Gets the cancellable for the current operation.
	 *
	 * This is the `GCancellable` that was passed to [func@Gdk.content_deserialize_async].
	 *
	 * Returns: the cancellable for the current operation
	 */
	public Cancellable getCancellable()
	{
		auto __p = gdk_content_deserializer_get_cancellable(gdkContentDeserializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cancellable)(cast(GCancellable*) __p);
	}

	/**
	 * Gets the `GType` to create an instance of.
	 *
	 * Returns: the `GType` for the current operation
	 */
	public GType getGtype()
	{
		return gdk_content_deserializer_get_gtype(gdkContentDeserializer);
	}

	/**
	 * Gets the input stream for the current operation.
	 *
	 * This is the stream that was passed to [func@Gdk.content_deserialize_async].
	 *
	 * Returns: the input stream for the current operation
	 */
	public InputStream getInputStream()
	{
		auto __p = gdk_content_deserializer_get_input_stream(gdkContentDeserializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Gets the mime type to deserialize from.
	 *
	 * Returns: the mime type for the current operation
	 */
	public string getMimeType()
	{
		return Str.toString(gdk_content_deserializer_get_mime_type(gdkContentDeserializer));
	}

	/**
	 * Gets the I/O priority for the current operation.
	 *
	 * This is the priority that was passed to [func@Gdk.content_deserialize_async].
	 *
	 * Returns: the I/O priority for the current operation
	 */
	public int getPriority()
	{
		return gdk_content_deserializer_get_priority(gdkContentDeserializer);
	}

	/**
	 * Gets the data that was associated with the current operation.
	 *
	 * See [method@Gdk.ContentDeserializer.set_task_data].
	 *
	 * Returns: the task data for @deserializer
	 */
	public void* getTaskData()
	{
		return gdk_content_deserializer_get_task_data(gdkContentDeserializer);
	}

	/**
	 * Gets the user data that was passed when the deserializer was registered.
	 *
	 * Returns: the user data for this deserializer
	 */
	public void* getUserData()
	{
		return gdk_content_deserializer_get_user_data(gdkContentDeserializer);
	}

	/**
	 * Gets the `GValue` to store the deserialized object in.
	 *
	 * Returns: the `GValue` for the current operation
	 */
	public Value getValue()
	{
		auto __p = gdk_content_deserializer_get_value(gdkContentDeserializer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}

	/**
	 * Indicate that the deserialization has ended with an error.
	 *
	 * This function consumes @error.
	 *
	 * Params:
	 *     error = a `GError`
	 */
	public void returnError(ErrorG error)
	{
		gdk_content_deserializer_return_error(gdkContentDeserializer, (error is null) ? null : error.getErrorGStruct(true));
	}

	/**
	 * Indicate that the deserialization has been successfully completed.
	 */
	public void returnSuccess()
	{
		gdk_content_deserializer_return_success(gdkContentDeserializer);
	}

	/**
	 * Associate data with the current deserialization operation.
	 *
	 * Params:
	 *     data = data to associate with this operation
	 *     notify = destroy notify for @data
	 */
	public void setTaskData(void* data, GDestroyNotify notify)
	{
		gdk_content_deserializer_set_task_data(gdkContentDeserializer, data, notify);
	}
}
