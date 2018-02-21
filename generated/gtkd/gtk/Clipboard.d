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


module gtk.Clipboard;

private import gdk.Display;
private import gdk.Event;
private import gdkpixbuf.Pixbuf;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.SelectionData;
private import gtk.TargetEntry;
private import gtk.TextBuffer;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkClipboard object represents a clipboard of data shared
 * between different processes or between different widgets in
 * the same process. Each clipboard is identified by a name encoded as a
 * #GdkAtom. (Conversion to and from strings can be done with
 * gdk_atom_intern() and gdk_atom_name().) The default clipboard
 * corresponds to the “CLIPBOARD” atom; another commonly used clipboard
 * is the “PRIMARY” clipboard, which, in X, traditionally contains
 * the currently selected text.
 * 
 * To support having a number of different formats on the clipboard
 * at the same time, the clipboard mechanism allows providing
 * callbacks instead of the actual data.  When you set the contents
 * of the clipboard, you can either supply the data directly (via
 * functions like gtk_clipboard_set_text()), or you can supply a
 * callback to be called at a later time when the data is needed (via
 * gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().)
 * Providing a callback also avoids having to make copies of the data
 * when it is not needed.
 * 
 * gtk_clipboard_set_with_data() and gtk_clipboard_set_with_owner()
 * are quite similar; the choice between the two depends mostly on
 * which is more convenient in a particular situation.
 * The former is most useful when you want to have a blob of data
 * with callbacks to convert it into the various data types that you
 * advertise. When the @clear_func you provided is called, you
 * simply free the data blob. The latter is more useful when the
 * contents of clipboard reflect the internal state of a #GObject
 * (As an example, for the PRIMARY clipboard, when an entry widget
 * provides the clipboard’s contents the contents are simply the
 * text within the selected region.) If the contents change, the
 * entry widget can call gtk_clipboard_set_with_owner() to update
 * the timestamp for clipboard ownership, without having to worry
 * about @clear_func being called.
 * 
 * Requesting the data from the clipboard is essentially
 * asynchronous. If the contents of the clipboard are provided within
 * the same process, then a direct function call will be made to
 * retrieve the data, but if they are provided by another process,
 * then the data needs to be retrieved from the other process, which
 * may take some time. To avoid blocking the user interface, the call
 * to request the selection, gtk_clipboard_request_contents() takes a
 * callback that will be called when the contents are received (or
 * when the request fails.) If you don’t want to deal with providing
 * a separate callback, you can also use gtk_clipboard_wait_for_contents().
 * What this does is run the GLib main loop recursively waiting for
 * the contents. This can simplify the code flow, but you still have
 * to be aware that other callbacks in your program can be called
 * while this recursive mainloop is running.
 * 
 * Along with the functions to get the clipboard contents as an
 * arbitrary data chunk, there are also functions to retrieve
 * it as text, gtk_clipboard_request_text() and
 * gtk_clipboard_wait_for_text(). These functions take care of
 * determining which formats are advertised by the clipboard
 * provider, asking for the clipboard in the best available format
 * and converting the results into the UTF-8 encoding. (The standard
 * form for representing strings in GTK+.)
 */
public class Clipboard : ObjectG
{
	/** the main Gtk struct */
	protected GtkClipboard* gtkClipboard;

	/** Get the main Gtk struct */
	public GtkClipboard* getClipboardStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkClipboard;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkClipboard;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkClipboard* gtkClipboard, bool ownedRef = false)
	{
		this.gtkClipboard = gtkClipboard;
		super(cast(GObject*)gtkClipboard, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_clipboard_get_type();
	}

	/**
	 * Returns the clipboard object for the given selection.
	 * See gtk_clipboard_get_for_display() for complete details.
	 *
	 * Params:
	 *     selection = a #GdkAtom which identifies the clipboard to use
	 *
	 * Returns: the appropriate clipboard object. If no clipboard
	 *     already exists, a new one will be created. Once a clipboard
	 *     object has been created, it is persistent and, since it is
	 *     owned by GTK+, must not be freed or unreffed.
	 */
	public static Clipboard get(GdkAtom selection)
	{
		auto p = gtk_clipboard_get(selection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GtkClipboard*) p);
	}

	/**
	 * Returns the default clipboard object for use with cut/copy/paste menu items
	 * and keyboard shortcuts.
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the clipboard is to be retrieved.
	 *
	 * Returns: the default clipboard object.
	 *
	 * Since: 3.16
	 */
	public static Clipboard getDefault(Display display)
	{
		auto p = gtk_clipboard_get_default((display is null) ? null : display.getDisplayStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GtkClipboard*) p);
	}

	/**
	 * Returns the clipboard object for the given selection.
	 * Cut/copy/paste menu items and keyboard shortcuts should use
	 * the default clipboard, returned by passing %GDK_SELECTION_CLIPBOARD for @selection.
	 * (%GDK_NONE is supported as a synonym for GDK_SELECTION_CLIPBOARD
	 * for backwards compatibility reasons.)
	 * The currently-selected object or text should be provided on the clipboard
	 * identified by #GDK_SELECTION_PRIMARY. Cut/copy/paste menu items
	 * conceptually copy the contents of the #GDK_SELECTION_PRIMARY clipboard
	 * to the default clipboard, i.e. they copy the selection to what the
	 * user sees as the clipboard.
	 *
	 * (Passing #GDK_NONE is the same as using `gdk_atom_intern
	 * ("CLIPBOARD", FALSE)`.
	 *
	 * See the
	 * [FreeDesktop Clipboard Specification](http://www.freedesktop.org/Standards/clipboards-spec)
	 * for a detailed discussion of the “CLIPBOARD” vs. “PRIMARY”
	 * selections under the X window system. On Win32 the
	 * #GDK_SELECTION_PRIMARY clipboard is essentially ignored.)
	 *
	 * It’s possible to have arbitrary named clipboards; if you do invent
	 * new clipboards, you should prefix the selection name with an
	 * underscore (because the ICCCM requires that nonstandard atoms are
	 * underscore-prefixed), and namespace it as well. For example,
	 * if your application called “Foo” has a special-purpose
	 * clipboard, you might call it “_FOO_SPECIAL_CLIPBOARD”.
	 *
	 * Params:
	 *     display = the #GdkDisplay for which the clipboard is to be retrieved or created.
	 *     selection = a #GdkAtom which identifies the clipboard to use.
	 *
	 * Returns: the appropriate clipboard object. If no
	 *     clipboard already exists, a new one will be created. Once a clipboard
	 *     object has been created, it is persistent and, since it is owned by
	 *     GTK+, must not be freed or unrefd.
	 *
	 * Since: 2.2
	 */
	public static Clipboard getForDisplay(Display display, GdkAtom selection)
	{
		auto p = gtk_clipboard_get_for_display((display is null) ? null : display.getDisplayStruct(), selection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GtkClipboard*) p);
	}

	/**
	 * Clears the contents of the clipboard. Generally this should only
	 * be called between the time you call gtk_clipboard_set_with_owner()
	 * or gtk_clipboard_set_with_data(),
	 * and when the @clear_func you supplied is called. Otherwise, the
	 * clipboard may be owned by someone else.
	 */
	public void clear()
	{
		gtk_clipboard_clear(gtkClipboard);
	}

	/**
	 * Gets the #GdkDisplay associated with @clipboard
	 *
	 * Returns: the #GdkDisplay associated with @clipboard
	 *
	 * Since: 2.2
	 */
	public Display getDisplay()
	{
		auto p = gtk_clipboard_get_display(gtkClipboard);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * If the clipboard contents callbacks were set with
	 * gtk_clipboard_set_with_owner(), and the gtk_clipboard_set_with_data() or
	 * gtk_clipboard_clear() has not subsequently called, returns the owner set
	 * by gtk_clipboard_set_with_owner().
	 *
	 * Returns: the owner of the clipboard, if any;
	 *     otherwise %NULL.
	 */
	public ObjectG getOwner()
	{
		auto p = gtk_clipboard_get_owner(gtkClipboard);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) p);
	}

	/**
	 * Gets the selection that this clipboard is for.
	 *
	 * Returns: the selection
	 *
	 * Since: 3.22
	 */
	public GdkAtom getSelection()
	{
		return gtk_clipboard_get_selection(gtkClipboard);
	}

	/**
	 * Requests the contents of clipboard as the given target.
	 * When the results of the result are later received the supplied callback
	 * will be called.
	 *
	 * Params:
	 *     target = an atom representing the form into which the clipboard
	 *         owner should convert the selection.
	 *     callback = A function to call when the results are received
	 *         (or the retrieval fails). If the retrieval fails the length field of
	 *         @selection_data will be negative.
	 *     userData = user data to pass to @callback
	 */
	public void requestContents(GdkAtom target, GtkClipboardReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_contents(gtkClipboard, target, callback, userData);
	}

	/**
	 * Requests the contents of the clipboard as image. When the image is
	 * later received, it will be converted to a #GdkPixbuf, and
	 * @callback will be called.
	 *
	 * The @pixbuf parameter to @callback will contain the resulting
	 * #GdkPixbuf if the request succeeded, or %NULL if it failed. This
	 * could happen for various reasons, in particular if the clipboard
	 * was empty or if the contents of the clipboard could not be
	 * converted into an image.
	 *
	 * Params:
	 *     callback = a function to call when the image is received,
	 *         or the retrieval fails. (It will always be called one way or the other.)
	 *     userData = user data to pass to @callback.
	 *
	 * Since: 2.6
	 */
	public void requestImage(GtkClipboardImageReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_image(gtkClipboard, callback, userData);
	}

	/**
	 * Requests the contents of the clipboard as rich text. When the rich
	 * text is later received, @callback will be called.
	 *
	 * The @text parameter to @callback will contain the resulting rich
	 * text if the request succeeded, or %NULL if it failed. The @length
	 * parameter will contain @text’s length. This function can fail for
	 * various reasons, in particular if the clipboard was empty or if the
	 * contents of the clipboard could not be converted into rich text form.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 *     callback = a function to call when the text is received,
	 *         or the retrieval fails. (It will always be called one way or the other.)
	 *     userData = user data to pass to @callback.
	 *
	 * Since: 2.10
	 */
	public void requestRichText(TextBuffer buffer, GtkClipboardRichTextReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_rich_text(gtkClipboard, (buffer is null) ? null : buffer.getTextBufferStruct(), callback, userData);
	}

	/**
	 * Requests the contents of the clipboard as list of supported targets.
	 * When the list is later received, @callback will be called.
	 *
	 * The @targets parameter to @callback will contain the resulting targets if
	 * the request succeeded, or %NULL if it failed.
	 *
	 * Params:
	 *     callback = a function to call when the targets are
	 *         received, or the retrieval fails. (It will always be called
	 *         one way or the other.)
	 *     userData = user data to pass to @callback.
	 *
	 * Since: 2.4
	 */
	public void requestTargets(GtkClipboardTargetsReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_targets(gtkClipboard, callback, userData);
	}

	/**
	 * Requests the contents of the clipboard as text. When the text is
	 * later received, it will be converted to UTF-8 if necessary, and
	 * @callback will be called.
	 *
	 * The @text parameter to @callback will contain the resulting text if
	 * the request succeeded, or %NULL if it failed. This could happen for
	 * various reasons, in particular if the clipboard was empty or if the
	 * contents of the clipboard could not be converted into text form.
	 *
	 * Params:
	 *     callback = a function to call when the text is received,
	 *         or the retrieval fails. (It will always be called one way or the other.)
	 *     userData = user data to pass to @callback.
	 */
	public void requestText(GtkClipboardTextReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_text(gtkClipboard, callback, userData);
	}

	/**
	 * Requests the contents of the clipboard as URIs. When the URIs are
	 * later received @callback will be called.
	 *
	 * The @uris parameter to @callback will contain the resulting array of
	 * URIs if the request succeeded, or %NULL if it failed. This could happen
	 * for various reasons, in particular if the clipboard was empty or if the
	 * contents of the clipboard could not be converted into URI form.
	 *
	 * Params:
	 *     callback = a function to call when the URIs are received,
	 *         or the retrieval fails. (It will always be called one way or the other.)
	 *     userData = user data to pass to @callback.
	 *
	 * Since: 2.14
	 */
	public void requestUris(GtkClipboardURIReceivedFunc callback, void* userData)
	{
		gtk_clipboard_request_uris(gtkClipboard, callback, userData);
	}

	/**
	 * Hints that the clipboard data should be stored somewhere when the
	 * application exits or when gtk_clipboard_store () is called.
	 *
	 * This value is reset when the clipboard owner changes.
	 * Where the clipboard data is stored is platform dependent,
	 * see gdk_display_store_clipboard () for more information.
	 *
	 * Params:
	 *     targets = array containing
	 *         information about which forms should be stored or %NULL
	 *         to indicate that all forms should be stored.
	 *
	 * Since: 2.6
	 */
	public void setCanStore(TargetEntry[] targets)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		gtk_clipboard_set_can_store(gtkClipboard, targetsArray.ptr, cast(int)targets.length);
	}

	/**
	 * Sets the contents of the clipboard to the given #GdkPixbuf.
	 * GTK+ will take responsibility for responding for requests
	 * for the image, and for converting the image into the
	 * requested format.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf
	 *
	 * Since: 2.6
	 */
	public void setImage(Pixbuf pixbuf)
	{
		gtk_clipboard_set_image(gtkClipboard, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Sets the contents of the clipboard to the given UTF-8 string. GTK+ will
	 * make a copy of the text and take responsibility for responding
	 * for requests for the text, and for converting the text into
	 * the requested format.
	 *
	 * Params:
	 *     text = a UTF-8 string.
	 *     len = length of @text, in bytes, or -1, in which case
	 *         the length will be determined with strlen().
	 */
	public void setText(string text, int len)
	{
		gtk_clipboard_set_text(gtkClipboard, Str.toStringz(text), len);
	}

	/**
	 * Virtually sets the contents of the specified clipboard by providing
	 * a list of supported formats for the clipboard data and a function
	 * to call to get the actual data when it is requested.
	 *
	 * Params:
	 *     targets = array containing information
	 *         about the available forms for the clipboard data
	 *     getFunc = function to call to get the actual clipboard data
	 *     clearFunc = when the clipboard contents are set again,
	 *         this function will be called, and @get_func will not be subsequently
	 *         called.
	 *     userData = user data to pass to @get_func and @clear_func.
	 *
	 * Returns: %TRUE if setting the clipboard data succeeded.
	 *     If setting the clipboard data failed the provided callback
	 *     functions will be ignored.
	 */
	public bool setWithData(TargetEntry[] targets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, void* userData)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		return gtk_clipboard_set_with_data(gtkClipboard, targetsArray.ptr, cast(uint)targets.length, getFunc, clearFunc, userData) != 0;
	}

	/**
	 * Virtually sets the contents of the specified clipboard by providing
	 * a list of supported formats for the clipboard data and a function
	 * to call to get the actual data when it is requested.
	 *
	 * The difference between this function and gtk_clipboard_set_with_data()
	 * is that instead of an generic @user_data pointer, a #GObject is passed
	 * in.
	 *
	 * Params:
	 *     targets = array containing information
	 *         about the available forms for the clipboard data
	 *     getFunc = function to call to get the actual clipboard data
	 *     clearFunc = when the clipboard contents are set again,
	 *         this function will be called, and @get_func will not be subsequently
	 *         called
	 *     owner = an object that “owns” the data. This object will be passed
	 *         to the callbacks when called
	 *
	 * Returns: %TRUE if setting the clipboard data succeeded.
	 *     If setting the clipboard data failed the provided callback
	 *     functions will be ignored.
	 */
	public bool setWithOwner(TargetEntry[] targets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, ObjectG owner)
	{
		GtkTargetEntry[] targetsArray = new GtkTargetEntry[targets.length];
		for ( int i = 0; i < targets.length; i++ )
		{
			targetsArray[i] = *(targets[i].getTargetEntryStruct());
		}

		return gtk_clipboard_set_with_owner(gtkClipboard, targetsArray.ptr, cast(uint)targets.length, getFunc, clearFunc, (owner is null) ? null : owner.getObjectGStruct()) != 0;
	}

	/**
	 * Stores the current clipboard data somewhere so that it will stay
	 * around after the application has quit.
	 *
	 * Since: 2.6
	 */
	public void store()
	{
		gtk_clipboard_store(gtkClipboard);
	}

	/**
	 * Requests the contents of the clipboard using the given target.
	 * This function waits for the data to be received using the main
	 * loop, so events, timeouts, etc, may be dispatched during the wait.
	 *
	 * Params:
	 *     target = an atom representing the form into which the clipboard
	 *         owner should convert the selection.
	 *
	 * Returns: a newly-allocated #GtkSelectionData object or %NULL
	 *     if retrieving the given target failed. If non-%NULL,
	 *     this value must be freed with gtk_selection_data_free()
	 *     when you are finished with it.
	 */
	public SelectionData waitForContents(GdkAtom target)
	{
		auto p = gtk_clipboard_wait_for_contents(gtkClipboard, target);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionData)(cast(GtkSelectionData*) p, true);
	}

	/**
	 * Requests the contents of the clipboard as image and converts
	 * the result to a #GdkPixbuf. This function waits for
	 * the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * Returns: a newly-allocated #GdkPixbuf
	 *     object which must be disposed with g_object_unref(), or
	 *     %NULL if retrieving the selection data failed. (This could
	 *     happen for various reasons, in particular if the clipboard
	 *     was empty or if the contents of the clipboard could not be
	 *     converted into an image.)
	 *
	 * Since: 2.6
	 */
	public Pixbuf waitForImage()
	{
		auto p = gtk_clipboard_wait_for_image(gtkClipboard);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Requests the contents of the clipboard as rich text.  This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 *     format = return location for the format of the returned data
	 *
	 * Returns: a
	 *     newly-allocated binary block of data which must be
	 *     freed with g_free(), or %NULL if retrieving the
	 *     selection data failed. (This could happen for various
	 *     reasons, in particular if the clipboard was empty or
	 *     if the contents of the clipboard could not be
	 *     converted into text form.)
	 *
	 * Since: 2.10
	 */
	public ubyte[] waitForRichText(TextBuffer buffer, out GdkAtom format)
	{
		size_t length;

		auto p = gtk_clipboard_wait_for_rich_text(gtkClipboard, (buffer is null) ? null : buffer.getTextBufferStruct(), &format, &length);

		return p[0 .. length];
	}

	/**
	 * Returns a list of targets that are present on the clipboard, or %NULL
	 * if there aren’t any targets available. The returned list must be
	 * freed with g_free().
	 * This function waits for the data to be received using the main
	 * loop, so events, timeouts, etc, may be dispatched during the wait.
	 *
	 * Params:
	 *     targets = location
	 *         to store an array of targets. The result stored here must
	 *         be freed with g_free().
	 *
	 * Returns: %TRUE if any targets are present on the clipboard,
	 *     otherwise %FALSE.
	 *
	 * Since: 2.4
	 */
	public bool waitForTargets(out GdkAtom[] targets)
	{
		GdkAtom* outtargets = null;
		int nTargets;

		auto p = gtk_clipboard_wait_for_targets(gtkClipboard, &outtargets, &nTargets) != 0;

		targets = outtargets[0 .. nTargets];

		return p;
	}

	/**
	 * Requests the contents of the clipboard as text and converts
	 * the result to UTF-8 if necessary. This function waits for
	 * the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * Returns: a newly-allocated UTF-8 string which must
	 *     be freed with g_free(), or %NULL if retrieving
	 *     the selection data failed. (This could happen
	 *     for various reasons, in particular if the
	 *     clipboard was empty or if the contents of the
	 *     clipboard could not be converted into text form.)
	 */
	public string waitForText()
	{
		auto retStr = gtk_clipboard_wait_for_text(gtkClipboard);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Requests the contents of the clipboard as URIs. This function waits
	 * for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * Returns: a newly-allocated %NULL-terminated array of strings which must
	 *     be freed with g_strfreev(), or %NULL if retrieving the
	 *     selection data failed. (This could happen for various reasons,
	 *     in particular if the clipboard was empty or if the contents of
	 *     the clipboard could not be converted into URI form.)
	 *
	 * Since: 2.14
	 */
	public string[] waitForUris()
	{
		auto retStr = gtk_clipboard_wait_for_uris(gtkClipboard);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Test to see if there is an image available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported image targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_image() since it doesn’t need to retrieve
	 * the actual image data.
	 *
	 * Returns: %TRUE is there is an image available, %FALSE otherwise.
	 *
	 * Since: 2.6
	 */
	public bool waitIsImageAvailable()
	{
		return gtk_clipboard_wait_is_image_available(gtkClipboard) != 0;
	}

	/**
	 * Test to see if there is rich text available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported rich text targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_rich_text() since it doesn’t need to retrieve
	 * the actual text.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 *
	 * Returns: %TRUE is there is rich text available, %FALSE otherwise.
	 *
	 * Since: 2.10
	 */
	public bool waitIsRichTextAvailable(TextBuffer buffer)
	{
		return gtk_clipboard_wait_is_rich_text_available(gtkClipboard, (buffer is null) ? null : buffer.getTextBufferStruct()) != 0;
	}

	/**
	 * Checks if a clipboard supports pasting data of a given type. This
	 * function can be used to determine if a “Paste” menu item should be
	 * insensitive or not.
	 *
	 * If you want to see if there’s text available on the clipboard, use
	 * gtk_clipboard_wait_is_text_available () instead.
	 *
	 * Params:
	 *     target = A #GdkAtom indicating which target to look for.
	 *
	 * Returns: %TRUE if the target is available, %FALSE otherwise.
	 *
	 * Since: 2.6
	 */
	public bool waitIsTargetAvailable(GdkAtom target)
	{
		return gtk_clipboard_wait_is_target_available(gtkClipboard, target) != 0;
	}

	/**
	 * Test to see if there is text available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported text targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_text() since it doesn’t need to retrieve
	 * the actual text.
	 *
	 * Returns: %TRUE is there is text available, %FALSE otherwise.
	 */
	public bool waitIsTextAvailable()
	{
		return gtk_clipboard_wait_is_text_available(gtkClipboard) != 0;
	}

	/**
	 * Test to see if there is a list of URIs available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains the URI targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 *
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_uris() since it doesn’t need to retrieve
	 * the actual URI data.
	 *
	 * Returns: %TRUE is there is an URI list available, %FALSE otherwise.
	 *
	 * Since: 2.14
	 */
	public bool waitIsUrisAvailable()
	{
		return gtk_clipboard_wait_is_uris_available(gtkClipboard) != 0;
	}

	/**
	 * The ::owner-change signal is emitted when GTK+ receives an
	 * event that indicates that the ownership of the selection
	 * associated with @clipboard has changed.
	 *
	 * Params:
	 *     event = the @GdkEventOwnerChange event
	 *
	 * Since: 2.6
	 */
	gulong addOnOwnerChange(void delegate(GdkEventOwnerChange*, Clipboard) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "owner-change", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::owner-change signal is emitted when GTK+ receives an
	 * event that indicates that the ownership of the selection
	 * associated with @clipboard has changed.
	 *
	 * Params:
	 *     event = the @GdkEventOwnerChange event
	 *
	 * Since: 2.6
	 */
	gulong addOnOwnerChange(void delegate(Event, Clipboard) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "owner-change", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
