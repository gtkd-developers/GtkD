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
 * inFile  = gtk-Clipboards.html
 * outPack = gtk
 * outFile = Clipboard
 * strct   = GtkClipboard
 * realStrct=
 * ctorStrct=
 * clss    = Clipboard
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_clipboard_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Clipboard
 * 	- gdk.Display
 * 	- gobject.ObjectG
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GObject* -> ObjectG
 * 	- GdkDisplay* -> Display
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkClipboard* -> Clipboard
 * local aliases:
 */

module gtk.Clipboard;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;
private import gtk.Clipboard;
private import gdk.Display;
private import gobject.ObjectG;
private import gdk.Pixbuf;

/**
 * Description
 *  The GtkClipboard object represents a clipboard of data shared
 *  between different processes or between different widgets in
 *  the same process. Each clipboard is identified by a name encoded as a
 *  GdkAtom. (Conversion to and from strings can be done with
 *  gdk_atom_intern() and gdk_atom_name().) The default clipboard
 *  corresponds to the "CLIPBOARD" atom; another commonly used clipboard
 *  is the "PRIMARY" clipboard, which, in X, traditionally contains
 *  the currently selected text.
 *  To support having a number of different formats on the clipboard
 *  at the same time, the clipboard mechanism allows providing
 *  callbacks instead of the actual data. When you set the contents
 *  of the clipboard, you can either supply the data directly (via
 *  functions like gtk_clipboard_set_text()), or you can supply a
 *  callback to be called at a later time when the data is needed (via
 *  gtk_clipboard_set_with_data() or gtk_clipboard_set_with_owner().)
 *  Providing a callback also avoids having to make copies of the data
 *  when it is not needed.
 *  gtk_clipboard_set_with_data() and gtk_clipboard_set_with_owner()
 *  are quite similar; the choice between the two depends mostly on
 *  which is more convenient in a particular situation.
 *  The former is most useful when you want to have a blob of data
 *  with callbacks to convert it into the various data types that you
 *  advertise. When the clear_func you provided is called, you
 *  simply free the data blob. The latter is more useful when the
 *  contents of clipboard reflect the internal state of a GObject
 *  (As an example, for the PRIMARY clipboard, when an entry widget
 *  provides the clipboard's contents the contents are simply the
 *  text within the selected region.) If the contents change, the
 *  entry widget can call gtk_clipboard_set_with_owner() to update
 *  the timestamp for clipboard ownership, without having to worry
 *  about clear_func being called.
 *  Requesting the data from the clipboard is essentially
 *  asynchronous. If the contents of the clipboard are provided within
 *  the same process, then a direct function call will be made to
 *  retrieve the data, but if they are provided by another process,
 *  then the data needs to be retrieved from the other process, which
 *  may take some time. To avoid blocking the user interface, the call
 *  to request the selection, gtk_clipboard_request_contents() takes a
 *  callback that will be called when the contents are received (or
 *  when the request fails.) If you don't want to deal with providing
 *  a separate callback, you can also use gtk_clipboard_wait_for_contents().
 *  What this does is run the GLib main loop recursively waiting for
 *  the contents. This can simplify the code flow, but you still have
 *  to be aware that other callbacks in your program can be called
 *  while this recursive mainloop is running.
 *  Along with the functions to get the clipboard contents as an
 *  arbitrary data chunk, there are also functions to retrieve
 *  it as text, gtk_clipboard_request_text() and
 *  gtk_clipboard_wait_for_text(). These functions take care of
 *  determining which formats are advertised by the clipboard
 *  provider, asking for the clipboard in the best available format
 *  and converting the results into the UTF-8 encoding. (The standard
 *  form for representing strings in GTK+.)
 */
private import gobject.ObjectG;
public class Clipboard : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkClipboard* gtkClipboard;
	
	
	public GtkClipboard* getClipboardStruct()
	{
		return gtkClipboard;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkClipboard;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkClipboard* gtkClipboard)
	{
		super(cast(GObject*)gtkClipboard);
		this.gtkClipboard = gtkClipboard;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(GdkEvent*, Clipboard)[] onOwnerChangeListeners;
	void addOnOwnerChange(void delegate(GdkEvent*, Clipboard) dlg)
	{
		if ( !("owner-change" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"owner-change",
			cast(GCallback)&callBackOwnerChange,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["owner-change"] = 1;
		}
		onOwnerChangeListeners ~= dlg;
	}
	extern(C) static void callBackOwnerChange(GtkClipboard* clipboardStruct, GdkEvent* event, Clipboard clipboard)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkEvent*, Clipboard) dlg ; clipboard.onOwnerChangeListeners )
		{
			dlg(event, clipboard);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * Returns the clipboard object for the given selection.
	 * See gtk_clipboard_get_for_display() for complete details.
	 * selection:
	 *  a GdkAtom which identifies the clipboard
	 *  to use.
	 * Returns:
	 *  the appropriate clipboard object. If no
	 *  clipboard already exists, a new one will
	 *  be created. Once a clipboard object has
	 *  been created, it is persistent and, since
	 *  it is owned by GTK+, must not be freed or
	 *  unrefd.
	 */
	public static Clipboard get(GdkAtom selection)
	{
		// GtkClipboard* gtk_clipboard_get (GdkAtom selection);
		return new Clipboard( gtk_clipboard_get(selection) );
	}
	
	/**
	 * Returns the clipboard object for the given selection.
	 * Cut/copy/paste menu items and keyboard shortcuts should use
	 * the default clipboard, returned by passing GDK_SELECTION_CLIPBOARD for selection.
	 * (GDK_NONE is supported as a synonym for GDK_SELECTION_CLIPBOARD
	 * for backwards compatibility reasons.)
	 * The currently-selected object or text should be provided on the clipboard
	 * identified by GDK_SELECTION_PRIMARY. Cut/copy/paste menu items
	 * conceptually copy the contents of the GDK_SELECTION_PRIMARY clipboard
	 * to the default clipboard, i.e. they copy the selection to what the
	 * user sees as the clipboard.
	 * (Passing GDK_NONE is the same as using gdk_atom_intern
	 * ("CLIPBOARD", FALSE). See
	 * http://www.freedesktop.org/Standards/clipboards-spec
	 * for a detailed discussion of the "CLIPBOARD" vs. "PRIMARY"
	 * selections under the X window system. On Win32 the
	 * GDK_SELECTION_PRIMARY clipboard is essentially ignored.)
	 * It's possible to have arbitrary named clipboards; if you do invent
	 * new clipboards, you should prefix the selection name with an
	 * underscore (because the ICCCM requires that nonstandard atoms are
	 * underscore-prefixed), and namespace it as well. For example,
	 * if your application called "Foo" has a special-purpose
	 * clipboard, you might call it "_FOO_SPECIAL_CLIPBOARD".
	 * display:
	 *  the display for which the clipboard is to be retrieved or created
	 * selection:
	 *  a GdkAtom which identifies the clipboard
	 *  to use.
	 * Returns:
	 *  the appropriate clipboard object. If no
	 *  clipboard already exists, a new one will
	 *  be created. Once a clipboard object has
	 *  been created, it is persistent and, since
	 *  it is owned by GTK+, must not be freed or
	 *  unrefd.
	 * Since 2.2
	 */
	public static Clipboard getForDisplay(Display display, GdkAtom selection)
	{
		// GtkClipboard* gtk_clipboard_get_for_display (GdkDisplay *display,  GdkAtom selection);
		return new Clipboard( gtk_clipboard_get_for_display((display is null) ? null : display.getDisplayStruct(), selection) );
	}
	
	/**
	 * Gets the GdkDisplay associated with clipboard
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  the GdkDisplay associated with clipboard
	 * Since 2.2
	 */
	public Display getDisplay()
	{
		// GdkDisplay* gtk_clipboard_get_display (GtkClipboard *clipboard);
		return new Display( gtk_clipboard_get_display(gtkClipboard) );
	}
	
	/**
	 * Virtually sets the contents of the specified clipboard by providing
	 * a list of supported formats for the clipboard data and a function
	 * to call to get the actual data when it is requested.
	 * clipboard:
	 *  a GtkClipboard
	 * targets:
	 *  array containing information about the available forms for the
	 *  clipboard data
	 * n_targets:
	 *  number of elements in targets
	 * get_func:
	 *  function to call to get the actual clipboard data
	 * clear_func:
	 *  when the clipboard contents are set again, this function will
	 *  be called, and get_func will not be subsequently called.
	 * user_data:
	 *  user data to pass to get_func and clear_func.
	 * Returns:
	 *  TRUE if setting the clipboard data succeeded. If setting
	 *  the clipboard data failed the provided callback functions
	 *  will be ignored.
	 */
	public int setWithData(GtkTargetEntry* targets, uint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, void* userData)
	{
		// gboolean gtk_clipboard_set_with_data (GtkClipboard *clipboard,  const GtkTargetEntry *targets,  guint n_targets,  GtkClipboardGetFunc get_func,  GtkClipboardClearFunc clear_func,  gpointer user_data);
		return gtk_clipboard_set_with_data(gtkClipboard, targets, nTargets, getFunc, clearFunc, userData);
	}
	
	/**
	 * Virtually sets the contents of the specified clipboard by providing
	 * a list of supported formats for the clipboard data and a function
	 * to call to get the actual data when it is requested.
	 * The difference between this function and gtk_clipboard_set_with_data()
	 * is that instead of an generic user_data pointer, a GObject is passed
	 * in.
	 * clipboard:
	 *  a GtkClipboard
	 * targets:
	 *  array containing information about the available forms for the
	 *  clipboard data
	 * n_targets:
	 *  number of elements in targets
	 * get_func:
	 *  function to call to get the actual clipboard data
	 * clear_func:
	 *  when the clipboard contents are set again, this function will
	 *  be called, and get_func will not be subsequently called.
	 * owner:
	 *  an object that "owns" the data. This object will be passed
	 *  to the callbacks when called.
	 * Returns:
	 *  TRUE if setting the clipboard data succeeded. If setting
	 *  the clipboard data failed the provided callback functions
	 *  will be ignored.
	 */
	public int setWithOwner(GtkTargetEntry* targets, uint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, ObjectG owner)
	{
		// gboolean gtk_clipboard_set_with_owner (GtkClipboard *clipboard,  const GtkTargetEntry *targets,  guint n_targets,  GtkClipboardGetFunc get_func,  GtkClipboardClearFunc clear_func,  GObject *owner);
		return gtk_clipboard_set_with_owner(gtkClipboard, targets, nTargets, getFunc, clearFunc, (owner is null) ? null : owner.getObjectGStruct());
	}
	
	/**
	 * If the clipboard contents callbacks were set with
	 * gtk_clipboard_set_with_owner(), and the gtk_clipboard_set_with_data() or
	 * gtk_clipboard_clear() has not subsequently called, returns the owner set
	 * by gtk_clipboard_set_with_owner().
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  the owner of the clipboard, if any; otherwise NULL.
	 */
	public ObjectG getOwner()
	{
		// GObject* gtk_clipboard_get_owner (GtkClipboard *clipboard);
		return new ObjectG( gtk_clipboard_get_owner(gtkClipboard) );
	}
	
	/**
	 * Clears the contents of the clipboard. Generally this should only
	 * be called between the time you call gtk_clipboard_set_with_owner()
	 * or gtk_clipboard_set_with_data(),
	 * and when the clear_func you supplied is called. Otherwise, the
	 * clipboard may be owned by someone else.
	 * clipboard:
	 *  a GtkClipboard
	 */
	public void clear()
	{
		// void gtk_clipboard_clear (GtkClipboard *clipboard);
		gtk_clipboard_clear(gtkClipboard);
	}
	
	/**
	 * Sets the contents of the clipboard to the given UTF-8 string. GTK+ will
	 * make a copy of the text and take responsibility for responding
	 * for requests for the text, and for converting the text into
	 * the requested format.
	 * clipboard:
	 *  a GtkClipboard object
	 * text:
	 *  a UTF-8 string.
	 * len:
	 *  length of text, in bytes, or -1, in which case
	 *  the length will be determined with strlen().
	 */
	public void setText(char[] text, int len)
	{
		// void gtk_clipboard_set_text (GtkClipboard *clipboard,  const gchar *text,  gint len);
		gtk_clipboard_set_text(gtkClipboard, Str.toStringz(text), len);
	}
	
	/**
	 * Sets the contents of the clipboard to the given GdkPixbuf.
	 * GTK+ will take responsibility for responding for requests
	 * for the image, and for converting the image into the
	 * requested format.
	 * clipboard:
	 *  a GtkClipboard object
	 * pixbuf:
	 *  a GdkPixbuf
	 * Since 2.6
	 */
	public void setImage(Pixbuf pixbuf)
	{
		// void gtk_clipboard_set_image (GtkClipboard *clipboard,  GdkPixbuf *pixbuf);
		gtk_clipboard_set_image(gtkClipboard, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Requests the contents of clipboard as the given target.
	 * When the results of the result are later received the supplied callback
	 * will be called.
	 * clipboard:
	 *  a GtkClipboard
	 * target:
	 *  an atom representing the form into which the clipboard
	 *  owner should convert the selection.
	 * callback:
	 *  A function to call when the results are received
	 *  (or the retrieval fails). If the retrieval fails
	 *  the length field of selection_data will be
	 *  negative.
	 * user_data:
	 *  user data to pass to callback
	 */
	public void requestContents(GdkAtom target, GtkClipboardReceivedFunc callback, void* userData)
	{
		// void gtk_clipboard_request_contents (GtkClipboard *clipboard,  GdkAtom target,  GtkClipboardReceivedFunc callback,  gpointer user_data);
		gtk_clipboard_request_contents(gtkClipboard, target, callback, userData);
	}
	
	/**
	 * Requests the contents of the clipboard as text. When the text is
	 * later received, it will be converted to UTF-8 if necessary, and
	 * callback will be called.
	 * The text parameter to callback will contain the resulting text if
	 * the request succeeded, or NULL if it failed. This could happen for
	 * various reasons, in particular if the clipboard was empty or if the
	 * contents of the clipboard could not be converted into text form.
	 * clipboard:
	 *  a GtkClipboard
	 * callback:
	 *  a function to call when the text is received,
	 *  or the retrieval fails. (It will always be called
	 *  one way or the other.)
	 * user_data:
	 *  user data to pass to callback.
	 */
	public void requestText(GtkClipboardTextReceivedFunc callback, void* userData)
	{
		// void gtk_clipboard_request_text (GtkClipboard *clipboard,  GtkClipboardTextReceivedFunc callback,  gpointer user_data);
		gtk_clipboard_request_text(gtkClipboard, callback, userData);
	}
	
	/**
	 * Requests the contents of the clipboard as image. When the image is
	 * later received, it will be converted to a GdkPixbuf, and
	 * callback will be called.
	 * The pixbuf parameter to callback will contain the resulting
	 * GdkPixbuf if the request succeeded, or NULL if it failed. This
	 * could happen for various reasons, in particular if the clipboard
	 * was empty or if the contents of the clipboard could not be
	 * converted into an image.
	 * clipboard:
	 *  a GtkClipboard
	 * callback:
	 *  a function to call when the image is received,
	 *  or the retrieval fails. (It will always be called
	 *  one way or the other.)
	 * user_data:
	 *  user data to pass to callback.
	 * Since 2.6
	 */
	public void requestImage(GtkClipboardImageReceivedFunc callback, void* userData)
	{
		// void gtk_clipboard_request_image (GtkClipboard *clipboard,  GtkClipboardImageReceivedFunc callback,  gpointer user_data);
		gtk_clipboard_request_image(gtkClipboard, callback, userData);
	}
	
	/**
	 * Requests the contents of the clipboard as list of supported targets.
	 * When the list is later received, callback will be called.
	 * The targets parameter to callback will contain the resulting targets if
	 * the request succeeded, or NULL if it failed.
	 * clipboard:
	 *  a GtkClipboard
	 * callback:
	 *  a function to call when the targets are received,
	 *  or the retrieval fails. (It will always be called
	 *  one way or the other.)
	 * user_data:
	 *  user data to pass to callback.
	 * Since 2.4
	 */
	public void requestTargets(GtkClipboardTargetsReceivedFunc callback, void* userData)
	{
		// void gtk_clipboard_request_targets (GtkClipboard *clipboard,  GtkClipboardTargetsReceivedFunc callback,  gpointer user_data);
		gtk_clipboard_request_targets(gtkClipboard, callback, userData);
	}
	
	/**
	 * Requests the contents of the clipboard as rich text. When the rich
	 * text is later received, callback will be called.
	 * The text parameter to callback will contain the resulting rich
	 * text if the request succeeded, or NULL if it failed. The length
	 * parameter will contain text's length. This function can fail for
	 * various reasons, in particular if the clipboard was empty or if the
	 * contents of the clipboard could not be converted into rich text form.
	 * clipboard:
	 *  a GtkClipboard
	 * buffer:
	 *  a GtkTextBuffer
	 * callback:
	 *  a function to call when the text is received,
	 *  or the retrieval fails. (It will always be called
	 *  one way or the other.)
	 * user_data:
	 *  user data to pass to callback.
	 * Since 2.10
	 */
	public void requestRichText(GtkTextBuffer* buffer, GtkClipboardRichTextReceivedFunc callback, void* userData)
	{
		// void gtk_clipboard_request_rich_text (GtkClipboard *clipboard,  GtkTextBuffer *buffer,  GtkClipboardRichTextReceivedFunc callback,  gpointer user_data);
		gtk_clipboard_request_rich_text(gtkClipboard, buffer, callback, userData);
	}
	
	/**
	 * Requests the contents of the clipboard using the given target.
	 * This function waits for the data to be received using the main
	 * loop, so events, timeouts, etc, may be dispatched during the wait.
	 * clipboard:
	 *  a GtkClipboard
	 * target:
	 *  an atom representing the form into which the clipboard
	 *  owner should convert the selection.
	 * Returns:
	 *  a newly-allocated GtkSelectionData object or NULL
	 *  if retrieving the given target failed. If non-NULL,
	 *  this value must be freed with gtk_selection_data_free()
	 *  when you are finished with it.
	 */
	public GtkSelectionData* waitForContents(GdkAtom target)
	{
		// GtkSelectionData* gtk_clipboard_wait_for_contents  (GtkClipboard *clipboard,  GdkAtom target);
		return gtk_clipboard_wait_for_contents(gtkClipboard, target);
	}
	
	/**
	 * Requests the contents of the clipboard as text and converts
	 * the result to UTF-8 if necessary. This function waits for
	 * the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  a newly-allocated UTF-8 string which must
	 *  be freed with g_free(), or NULL if retrieving
	 *  the selection data failed. (This could happen
	 *  for various reasons, in particular if the
	 *  clipboard was empty or if the contents of the
	 *  clipboard could not be converted into text form.)
	 */
	public char[] waitForText()
	{
		// gchar* gtk_clipboard_wait_for_text (GtkClipboard *clipboard);
		return Str.toString(gtk_clipboard_wait_for_text(gtkClipboard) );
	}
	
	/**
	 * Requests the contents of the clipboard as image and converts
	 * the result to a GdkPixbuf. This function waits for
	 * the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  a newly-allocated GdkPixbuf object which must
	 *  be disposed with g_object_unref(), or NULL if
	 *  retrieving the selection data failed. (This
	 *  could happen for various reasons, in particular
	 *  if the clipboard was empty or if the contents of
	 *  the clipboard could not be converted into an image.)
	 * Since 2.6
	 */
	public Pixbuf waitForImage()
	{
		// GdkPixbuf* gtk_clipboard_wait_for_image (GtkClipboard *clipboard);
		return new Pixbuf( gtk_clipboard_wait_for_image(gtkClipboard) );
	}
	
	/**
	 * Requests the contents of the clipboard as rich text. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * clipboard:
	 *  a GtkClipboard
	 * buffer:
	 *  a GtkTextBuffer
	 * format:
	 *  return location for the format of the returned data
	 * length:
	 *  return location for the length of the returned data
	 * Returns:
	 *  a newly-allocated binary block of data which must
	 *  be freed with g_free(), or NULL if retrieving
	 *  the selection data failed. (This could happen
	 *  for various reasons, in particular if the
	 *  clipboard was empty or if the contents of the
	 *  clipboard could not be converted into text form.)
	 * Since 2.10
	 */
	public byte* waitForRichText(GtkTextBuffer* buffer, GdkAtom* format, uint* length)
	{
		// guint8* gtk_clipboard_wait_for_rich_text  (GtkClipboard *clipboard,  GtkTextBuffer *buffer,  GdkAtom *format,  gsize *length);
		return gtk_clipboard_wait_for_rich_text(gtkClipboard, buffer, format, length);
	}
	
	/**
	 * Test to see if there is text available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported text targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_text() since it doesn't need to retrieve
	 * the actual text.
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  TRUE is there is text available, FALSE otherwise.
	 */
	public int waitIsTextAvailable()
	{
		// gboolean gtk_clipboard_wait_is_text_available  (GtkClipboard *clipboard);
		return gtk_clipboard_wait_is_text_available(gtkClipboard);
	}
	
	/**
	 * Test to see if there is an image available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported image targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_image() since it doesn't need to retrieve
	 * the actual image data.
	 * clipboard:
	 *  a GtkClipboard
	 * Returns:
	 *  TRUE is there is an image available, FALSE otherwise.
	 * Since 2.6
	 */
	public int waitIsImageAvailable()
	{
		// gboolean gtk_clipboard_wait_is_image_available  (GtkClipboard *clipboard);
		return gtk_clipboard_wait_is_image_available(gtkClipboard);
	}
	
	/**
	 * Test to see if there is rich text available to be pasted
	 * This is done by requesting the TARGETS atom and checking
	 * if it contains any of the supported rich text targets. This function
	 * waits for the data to be received using the main loop, so events,
	 * timeouts, etc, may be dispatched during the wait.
	 * This function is a little faster than calling
	 * gtk_clipboard_wait_for_rich_text() since it doesn't need to retrieve
	 * the actual text.
	 * clipboard:
	 *  a GtkClipboard
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  TRUE is there is rich text available, FALSE otherwise.
	 * Since 2.10
	 */
	public int waitIsRichTextAvailable(GtkTextBuffer* buffer)
	{
		// gboolean gtk_clipboard_wait_is_rich_text_available  (GtkClipboard *clipboard,  GtkTextBuffer *buffer);
		return gtk_clipboard_wait_is_rich_text_available(gtkClipboard, buffer);
	}
	
	/**
	 * Returns a list of targets that are present on the clipboard, or NULL
	 * if there aren't any targets available. The returned list must be
	 * freed with g_free().
	 * This function waits for the data to be received using the main
	 * loop, so events, timeouts, etc, may be dispatched during the wait.
	 * clipboard:
	 *  a GtkClipboard
	 * targets:
	 *  location to store an array of targets. The result
	 *  stored here must be freed with g_free().
	 * n_targets:
	 *  location to store number of items in targets.
	 * Returns:
	 *  TRUE if any targets are present on the clipboard,
	 *  otherwise FALSE.
	 * Since 2.4
	 */
	public int waitForTargets(GdkAtom** targets, int* nTargets)
	{
		// gboolean gtk_clipboard_wait_for_targets (GtkClipboard *clipboard,  GdkAtom **targets,  gint *n_targets);
		return gtk_clipboard_wait_for_targets(gtkClipboard, targets, nTargets);
	}
	
	/**
	 * Checks if a clipboard supports pasting data of a given type. This
	 * function can be used to determine if a "Paste" menu item should be
	 * insensitive or not.
	 * If you want to see if there's text available on the clipboard, use
	 * gtk_clipboard_wait_is_text_available() instead.
	 * clipboard:
	 *  a GtkClipboard
	 * target:
	 *  A GdkAtom indicating which target to look for.
	 * Returns:
	 *  TRUE if the target is available, FALSE otherwise.
	 * Since 2.6
	 */
	public int waitIsTargetAvailable(GdkAtom target)
	{
		// gboolean gtk_clipboard_wait_is_target_available  (GtkClipboard *clipboard,  GdkAtom target);
		return gtk_clipboard_wait_is_target_available(gtkClipboard, target);
	}
	
	/**
	 * Hints that the clipboard data should be stored somewhere when the
	 * application exits or when gtk_clipboard_store() is called.
	 * This value is reset when the clipboard owner changes.
	 * Where the clipboard data is stored is platform dependent,
	 * see gdk_display_store_clipboard() for more information.
	 * clipboard:
	 *  a GtkClipboard
	 * targets:
	 *  array containing information about which forms should be stored
	 *  or NULL to indicate that all forms should be stored.
	 * n_targets:
	 *  number of elements in targets
	 * Since 2.6
	 */
	public void setCanStore(GtkTargetEntry* targets, int nTargets)
	{
		// void gtk_clipboard_set_can_store (GtkClipboard *clipboard,  const GtkTargetEntry *targets,  gint n_targets);
		gtk_clipboard_set_can_store(gtkClipboard, targets, nTargets);
	}
	
	/**
	 * Stores the current clipboard data somewhere so that it will stay
	 * around after the application has quit.
	 * clipboard:
	 *  a GtkClipboard
	 * Since 2.6
	 * Signal Details
	 * The "owner-change" signal
	 * void user_function (GtkClipboard *clipboard,
	 *  GdkEvent *event,
	 *  gpointer user_data) : Run first
	 * clipboard:
	 * the object which received the signal.
	 * event:
	 * user_data:
	 * user data set when the signal handler was connected.
	 * See Also
	 * GtkSelection
	 * GtkClipboard provides a high-level wrapper around the
	 * 	 lower level routines that deal with X selections. It is
	 * 	 also possibly to directly manipulate the X selections,
	 * 	 though it is seldom necessary to do so.
	 */
	public void store()
	{
		// void gtk_clipboard_store (GtkClipboard *clipboard);
		gtk_clipboard_store(gtkClipboard);
	}
}
