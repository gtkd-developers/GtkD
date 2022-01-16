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


module gdk.Clipboard;

private import gdk.ContentFormats;
private import gdk.ContentProvider;
private import gdk.Display;
private import gdk.Texture;
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
private import gobject.Signals;
private import gobject.Value;
private import std.algorithm;


/**
 * The `GdkClipboard` object represents data shared between applications or
 * inside an application.
 * 
 * To get a `GdkClipboard` object, use [method@Gdk.Display.get_clipboard] or
 * [method@Gdk.Display.get_primary_clipboard]. You can find out about the data
 * that is currently available in a clipboard using
 * [method@Gdk.Clipboard.get_formats].
 * 
 * To make text or image data available in a clipboard, use
 * [method@Gdk.Clipboard.set_text] or [method@Gdk.Clipboard.set_texture].
 * For other data, you can use [method@Gdk.Clipboard.set_content], which
 * takes a [class@Gdk.ContentProvider] object.
 * 
 * To read textual or image data from a clipboard, use
 * [method@Gdk.Clipboard.read_text_async] or
 * [method@Gdk.Clipboard.read_texture_async]. For other data, use
 * [method@Gdk.Clipboard.read_async], which provides a `GInputStream` object.
 */
public class Clipboard : ObjectG
{
	/** the main Gtk struct */
	protected GdkClipboard* gdkClipboard;

	/** Get the main Gtk struct */
	public GdkClipboard* getClipboardStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkClipboard;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkClipboard;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkClipboard* gdkClipboard, bool ownedRef = false)
	{
		this.gdkClipboard = gdkClipboard;
		super(cast(GObject*)gdkClipboard, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_clipboard_get_type();
	}

	/**
	 * Returns the `GdkContentProvider` currently set on @clipboard.
	 *
	 * If the @clipboard is empty or its contents are not owned by the
	 * current process, %NULL will be returned.
	 *
	 * Returns: The content of a clipboard
	 *     if the clipboard does not maintain any content
	 */
	public ContentProvider getContent()
	{
		auto __p = gdk_clipboard_get_content(gdkClipboard);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentProvider)(cast(GdkContentProvider*) __p);
	}

	/**
	 * Gets the `GdkDisplay` that the clipboard was created for.
	 *
	 * Returns: a `GdkDisplay`
	 */
	public Display getDisplay()
	{
		auto __p = gdk_clipboard_get_display(gdkClipboard);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets the formats that the clipboard can provide its current contents in.
	 *
	 * Returns: The formats of the clipboard
	 */
	public ContentFormats getFormats()
	{
		auto __p = gdk_clipboard_get_formats(gdkClipboard);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContentFormats)(cast(GdkContentFormats*) __p);
	}

	/**
	 * Returns if the clipboard is local.
	 *
	 * A clipboard is considered local if it was last claimed
	 * by the running application.
	 *
	 * Note that [method@Gdk.Clipboard.get_content] may return %NULL
	 * even on a local clipboard. In this case the clipboard is empty.
	 *
	 * Returns: %TRUE if the clipboard is local
	 */
	public bool isLocal()
	{
		return gdk_clipboard_is_local(gdkClipboard) != 0;
	}

	/**
	 * Asynchronously requests an input stream to read the @clipboard's
	 * contents from.
	 *
	 * When the operation is finished @callback will be called. You must then
	 * call [method@Gdk.Clipboard.read_finish] to get the result of the operation.
	 *
	 * The clipboard will choose the most suitable mime type from the given list
	 * to fulfill the request, preferring the ones listed first.
	 *
	 * Params:
	 *     mimeTypes = a %NULL-terminated array of mime types to choose from
	 *     ioPriority = the I/O priority of the request
	 *     cancellable = optional `GCancellable` object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readAsync(string[] mimeTypes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_clipboard_read_async(gdkClipboard, Str.toStringzArray(mimeTypes), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous clipboard read.
	 *
	 * See [method@Gdk.Clipboard.read_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *     outMimeType = location to store
	 *         the chosen mime type
	 *
	 * Returns: a `GInputStream`
	 *
	 * Throws: GException on failure.
	 */
	public InputStream readFinish(AsyncResultIF result, out string outMimeType)
	{
		char* outoutMimeType = null;
		GError* err = null;

		auto __p = gdk_clipboard_read_finish(gdkClipboard, (result is null) ? null : result.getAsyncResultStruct(), &outoutMimeType, &err);

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
	 * Asynchronously request the @clipboard contents converted to a string.
	 *
	 * When the operation is finished @callback will be called. You must then
	 * call [method@Gdk.Clipboard.read_text_finish] to get the result.
	 *
	 * This is a simple wrapper around [method@Gdk.Clipboard.read_value_async].
	 * Use that function or [method@Gdk.Clipboard.read_async] directly if you
	 * need more control over the operation.
	 *
	 * Params:
	 *     cancellable = optional `GCancellable` object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readTextAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_clipboard_read_text_async(gdkClipboard, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous clipboard read.
	 *
	 * See [method@Gdk.Clipboard.read_text_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *
	 * Returns: a new string
	 *
	 * Throws: GException on failure.
	 */
	public string readTextFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto retStr = gdk_clipboard_read_text_finish(gdkClipboard, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Asynchronously request the @clipboard contents converted to a `GdkPixbuf`.
	 *
	 * When the operation is finished @callback will be called. You must then
	 * call [method@Gdk.Clipboard.read_texture_finish] to get the result.
	 *
	 * This is a simple wrapper around [method@Gdk.Clipboard.read_value_async].
	 * Use that function or [method@Gdk.Clipboard.read_async] directly if you
	 * need more control over the operation.
	 *
	 * Params:
	 *     cancellable = optional `GCancellable` object, %NULL to ignore.
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readTextureAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_clipboard_read_texture_async(gdkClipboard, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous clipboard read.
	 *
	 * See [method@Gdk.Clipboard.read_texture_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *
	 * Returns: a new `GdkTexture`
	 *
	 * Throws: GException on failure.
	 */
	public Texture readTextureFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gdk_clipboard_read_texture_finish(gdkClipboard, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Texture)(cast(GdkTexture*) __p, true);
	}

	/**
	 * Asynchronously request the @clipboard contents converted to the given
	 * @type.
	 *
	 * When the operation is finished @callback will be called. You must then call
	 * [method@Gdk.Clipboard.read_value_finish] to get the resulting `GValue`.
	 *
	 * For local clipboard contents that are available in the given `GType`,
	 * the value will be copied directly. Otherwise, GDK will try to use
	 * [func@content_deserialize_async] to convert the clipboard's data.
	 *
	 * Params:
	 *     type = a `GType` to read
	 *     ioPriority = the I/O priority of the request
	 *     cancellable = optional `GCancellable` object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readValueAsync(GType type, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_clipboard_read_value_async(gdkClipboard, type, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous clipboard read.
	 *
	 * See [method@Gdk.Clipboard.read_value_async].
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

		auto __p = gdk_clipboard_read_value_finish(gdkClipboard, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Sets a new content provider on @clipboard.
	 *
	 * The clipboard will claim the `GdkDisplay`'s resources and advertise
	 * these new contents to other applications.
	 *
	 * In the rare case of a failure, this function will return %FALSE. The
	 * clipboard will then continue reporting its old contents and ignore
	 * @provider.
	 *
	 * If the contents are read by either an external application or the
	 * @clipboard's read functions, @clipboard will select the best format to
	 * transfer the contents and then request that format from @provider.
	 *
	 * Params:
	 *     provider = the new contents of @clipboard
	 *         or %NULL to clear the clipboard
	 *
	 * Returns: %TRUE if setting the clipboard succeeded
	 */
	public bool setContent(ContentProvider provider)
	{
		return gdk_clipboard_set_content(gdkClipboard, (provider is null) ? null : provider.getContentProviderStruct()) != 0;
	}

	/**
	 * Puts the given @text into the clipboard.
	 *
	 * Params:
	 *     text = Text to put into the clipboard
	 */
	public void setText(string text)
	{
		gdk_clipboard_set_text(gdkClipboard, Str.toStringz(text));
	}

	/**
	 * Puts the given @texture into the clipboard.
	 *
	 * Params:
	 *     texture = a `GdkTexture` to put into the clipboard
	 */
	public void setTexture(Texture texture)
	{
		gdk_clipboard_set_texture(gdkClipboard, (texture is null) ? null : texture.getTextureStruct());
	}

	/**
	 * Sets the clipboard to contain the value collected from the given @args.
	 *
	 * Params:
	 *     type = type of value to set
	 *     args = varargs containing the value of @type
	 */
	public void setValist(GType type, void* args)
	{
		gdk_clipboard_set_valist(gdkClipboard, type, args);
	}

	/**
	 * Sets the @clipboard to contain the given @value.
	 *
	 * Params:
	 *     value = a `GValue` to set
	 */
	public void setValue(Value value)
	{
		gdk_clipboard_set_value(gdkClipboard, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Asynchronously instructs the @clipboard to store its contents remotely.
	 *
	 * If the clipboard is not local, this function does nothing but report success.
	 *
	 * The @callback must call [method@Gdk.Clipboard.store_finish].
	 *
	 * The purpose of this call is to preserve clipboard contents beyond the
	 * lifetime of an application, so this function is typically called on
	 * exit. Depending on the platform, the functionality may not be available
	 * unless a "clipboard manager" is running.
	 *
	 * This function is called automatically when a [class@Gtk.Application] is
	 * shut down, so you likely don't need to call it.
	 *
	 * Params:
	 *     ioPriority = the I/O priority of the request
	 *     cancellable = optional `GCancellable` object
	 *     callback = callback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void storeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gdk_clipboard_store_async(gdkClipboard, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous clipboard store.
	 *
	 * See [method@Gdk.Clipboard.store_async].
	 *
	 * Params:
	 *     result = a `GAsyncResult`
	 *
	 * Returns: %TRUE if storing was successful.
	 *
	 * Throws: GException on failure.
	 */
	public bool storeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gdk_clipboard_store_finish(gdkClipboard, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Emitted when the clipboard changes ownership.
	 */
	gulong addOnChanged(void delegate(Clipboard) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
