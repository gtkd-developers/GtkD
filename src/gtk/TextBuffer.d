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

/*
 * Conversion parameters:
 * inFile  = GtkTextBuffer.html
 * outPack = gtk
 * outFile = TextBuffer
 * strct   = GtkTextBuffer
 * realStrct=
 * ctorStrct=
 * clss    = TextBuffer
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_buffer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_text_buffer_insert_with_tags
 * 	- gtk_text_buffer_insert_with_tags_by_name
 * 	- gtk_text_buffer_create_tag
 * omit signals:
 * imports:
 * 	- std.stdio
 * 	- std.stdarg
 * 	- gtkc.gobject;
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gdk.Color
 * 	- gdk.Pixbuf
 * 	- gtk.Clipboard
 * 	- gtk.TargetList
 * 	- gtk.TextChildAnchor
 * 	- gtk.TextIter
 * 	- gtk.TextMark
 * 	- gtk.TextTag
 * 	- gtk.TextTagTable
 * 	- pango.PgFontDescription
 * 	- pango.PgTabArray
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkClipboard* -> Clipboard
 * 	- GtkTargetList* -> TargetList
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkTextChildAnchor* -> TextChildAnchor
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextMark* -> TextMark
 * 	- GtkTextTag* -> TextTag
 * 	- GtkTextTagTable* -> TextTagTable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TextBuffer;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtkc.gobject;;
private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gdk.Color;
private import gdk.Pixbuf;
private import gtk.Clipboard;
private import gtk.TargetList;
private import gtk.TextChildAnchor;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.TextTag;
private import gtk.TextTagTable;
private import pango.PgFontDescription;
private import pango.PgTabArray;


version(Tango) {
	private import tango.io.Stdout;
	private import tango.core.Vararg;

	version = druntime;
} else version(D_Version2) {
	private import std.stdio;
	private import core.vararg;

	version = druntime;
} else {
	private import std.stdio;
	private import std.stdarg;
}


private import gobject.ObjectG;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextBuffer : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextBuffer* gtkTextBuffer;
	
	
	public GtkTextBuffer* getTextBufferStruct()
	{
		return gtkTextBuffer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextBuffer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextBuffer* gtkTextBuffer)
	{
		super(cast(GObject*)gtkTextBuffer);
		this.gtkTextBuffer = gtkTextBuffer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTextBuffer = cast(GtkTextBuffer*)obj;
	}
	
	/**
	 * Inserts text into buffer at iter, applying the list of tags to
	 * the newly-inserted text. The last tag specified must be NULL to
	 * terminate the list. Equivalent to calling gtk_text_buffer_insert(),
	 * then gtk_text_buffer_apply_tag() on the inserted text;
	 * gtk_text_buffer_insert_with_tags() is just a convenience function.
	 * Params:
	 *  iter = an iterator in buffer
	 *  text = UTF-8 text
	 *  tags = list of tags to apply
	 */
	public void insertWithTags(TextIter iter, string text, TextTag[] tags ... )
	{
		int startOffset = iter.getOffset();
		
		insert(iter, text);
		
		if ( tags.length == 0 )
		return;
		
		TextIter start = new TextIter();
		getIterAtOffset(start, startOffset);
		
		foreach( tag; tags )
		{
			applyTag(tag, start, iter);
		}
	}
	
	/**
	 * Same as gtk_text_buffer_insert_with_tags(), but allows you
	 * to pass in tag names instead of tag objects.
	 * Params:
	 *  iter = position in buffer
	 *  text = UTF-8 text
	 *  tags = tag names
	 */
	public void insertWithTagsByName(TextIter iter, string text, string[] tags ... )
	{
		int startOffset = iter.getOffset();
		
		insert(iter, text);
		
		if ( tags.length == 0 )
		return;
		
		TextIter start = new TextIter();
		getIterAtOffset(start, startOffset);
		
		foreach( tag; tags )
		{
			applyTagByName(tag, start, iter);
		}
	}
	
	/**
	 * Creates a tag and adds it to the tag table for buffer. Equivalent to
	 * adding a new tag to the buffer's tag table.
	 *
	 * If tagName is null, the tag is anonymous.
	 *
	 * If tagName is non-NULL, a tag called tagName must not already exist
	 * in the tag table for this buffer.
	 *
	 * Params:
	 *     tagName = the name for the new tag.
	 *     ...     = A list of property names and there values.
	 */
	TextTag createTag(string tagName, ...)
	{
		TextTag tag = new TextTag(gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), null, null));
		
		for (size_t i = 0; i < _arguments.length; i+=2)
		{
			//TODO: Add a proper eception type for this.
			if ( _arguments[i] != typeid(string) )
			throw new Exception("TextBuffer.CreateTag: The property name must be a string.");
			
			string name = va_arg!(string)(_argptr);
			
			version(D_Version2)
			{
				mixin("if ( _arguments[i+1] == typeid(const(double)) )
				{
					g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(double)(_argptr), null);
					continue;
				}");
			}
			
			if ( _arguments[i+1] == typeid(bool) ||
			_arguments[i+1] == typeid(int) ||
			_arguments[i+1] == typeid(GtkJustification) ||
			_arguments[i+1] == typeid(GtkTextDirection) ||
			_arguments[i+1] == typeid(GtkWrapMode) ||
			_arguments[i+1] == typeid(PangoStretch) ||
			_arguments[i+1] == typeid(PangoStyle) ||
			_arguments[i+1] == typeid(PangoUnderline) ||
			_arguments[i+1] == typeid(PangoVariant) ||
			_arguments[i+1] == typeid(PangoWeight) )
			{
				
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(int)(_argptr), null);
			}
			else if ( _arguments[i+1] == typeid(Color) )
			{
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(Color)(_argptr).getColorStruct(), null);
			}
			else if ( _arguments[i+1] == typeid(double) )
			{
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(double)(_argptr), null);
			}
			else if ( _arguments[i+1] == typeid(PgFontDescription) )
			{
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(PgFontDescription)(_argptr).getPgFontDescriptionStruct(), null);
			}
			else if ( _arguments[i+1] == typeid(PgTabArray) )
			{
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), va_arg!(PgTabArray)(_argptr).getPgTabArrayStruct(), null);
			}
			else if ( _arguments[i+1] == typeid(string) )
			{
				g_object_set(tag.getObjectGStruct(), Str.toStringz(name), Str.toStringz(va_arg!(string)(_argptr)), null);
			}
			else
			{
				version(Tango)
				Stderr.formatln("TextBuffer.CreateTag: Unsuported type: \"{}\" for property: \"{}\"", _arguments[i+1], name);
				else version(D_Version2)
				stderr.writefln("TextBuffer.CreateTag: Unsuported type: \"%s\" for property: \"%s\"", _arguments[i+1], name);
				else
				fwritefln(stderr, "TextBuffer.CreateTag: Unsuported type: \"%s\" for property: \"%s\"", _arguments[i+1], name);
				
				//TODO: throw segfaults, druntime bug?
				throw new Exception("TextBuffer.CreateTag: Unsuported type: \""~_arguments[i+1].toString()~"\" for property: \""~name~"\"");
				
			}
		}
		
		return tag;
	}
	
	/**
	 * Obtain the entire text
	 * Returns: The text string
	 */
	string getText()
	{
		TextIter start = new TextIter();
		TextIter end = new TextIter();
		getBounds(start,end);
		return Str.toString(gtk_text_buffer_get_slice(gtkTextBuffer, start.getTextIterStruct(), end.getTextIterStruct(), true));
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TextTag, TextIter, TextIter, TextBuffer)[] onApplyTagListeners;
	/**
	 * The ::apply-tag signal is emitted to apply a tag to a
	 * range of text in a GtkTextBuffer.
	 * Applying actually occurs in the default handler.
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the start and end iters (or has to revalidate them).
	 * See also:
	 * gtk_text_buffer_apply_tag(),
	 * gtk_text_buffer_insert_with_tags(),
	 * gtk_text_buffer_insert_range().
	 */
	void addOnApplyTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("apply-tag" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"apply-tag",
			cast(GCallback)&callBackApplyTag,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["apply-tag"] = 1;
		}
		onApplyTagListeners ~= dlg;
	}
	extern(C) static void callBackApplyTag(GtkTextBuffer* textbufferStruct, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg ; _textBuffer.onApplyTagListeners )
		{
			dlg(ObjectG.getDObject!(TextTag)(tag), ObjectG.getDObject!(TextIter)(start), ObjectG.getDObject!(TextIter)(end), _textBuffer);
		}
	}
	
	void delegate(TextBuffer)[] onBeginUserActionListeners;
	/**
	 * The ::begin-user-action signal is emitted at the beginning of a single
	 * user-visible operation on a GtkTextBuffer.
	 * See also:
	 * gtk_text_buffer_begin_user_action(),
	 * gtk_text_buffer_insert_interactive(),
	 * gtk_text_buffer_insert_range_interactive(),
	 * gtk_text_buffer_delete_interactive(),
	 * gtk_text_buffer_backspace(),
	 * gtk_text_buffer_delete_selection().
	 */
	void addOnBeginUserAction(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("begin-user-action" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"begin-user-action",
			cast(GCallback)&callBackBeginUserAction,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["begin-user-action"] = 1;
		}
		onBeginUserActionListeners ~= dlg;
	}
	extern(C) static void callBackBeginUserAction(GtkTextBuffer* textbufferStruct, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextBuffer) dlg ; _textBuffer.onBeginUserActionListeners )
		{
			dlg(_textBuffer);
		}
	}
	
	void delegate(TextBuffer)[] onChangedListeners;
	/**
	 * The ::changed signal is emitted when the content of a GtkTextBuffer
	 * has changed.
	 */
	void addOnChanged(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkTextBuffer* textbufferStruct, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextBuffer) dlg ; _textBuffer.onChangedListeners )
		{
			dlg(_textBuffer);
		}
	}
	
	void delegate(TextIter, TextIter, TextBuffer)[] onDeleteRangeListeners;
	/**
	 * The ::delete-range signal is emitted to delete a range
	 * from a GtkTextBuffer.
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the start and end iters (or has to revalidate them).
	 * The default signal handler revalidates the start and end iters to
	 * both point point to the location where text was deleted. Handlers
	 * which run after the default handler (see g_signal_connect_after())
	 * do not have access to the deleted text.
	 * See also: gtk_text_buffer_delete().
	 */
	void addOnDeleteRange(void delegate(TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("delete-range" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-range",
			cast(GCallback)&callBackDeleteRange,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["delete-range"] = 1;
		}
		onDeleteRangeListeners ~= dlg;
	}
	extern(C) static void callBackDeleteRange(GtkTextBuffer* textbufferStruct, GtkTextIter* start, GtkTextIter* end, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextIter, TextIter, TextBuffer) dlg ; _textBuffer.onDeleteRangeListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(start), ObjectG.getDObject!(TextIter)(end), _textBuffer);
		}
	}
	
	void delegate(TextBuffer)[] onEndUserActionListeners;
	/**
	 * The ::end-user-action signal is emitted at the end of a single
	 * user-visible operation on the GtkTextBuffer.
	 * See also:
	 * gtk_text_buffer_end_user_action(),
	 * gtk_text_buffer_insert_interactive(),
	 * gtk_text_buffer_insert_range_interactive(),
	 * gtk_text_buffer_delete_interactive(),
	 * gtk_text_buffer_backspace(),
	 * gtk_text_buffer_delete_selection(),
	 * gtk_text_buffer_backspace().
	 */
	void addOnEndUserAction(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("end-user-action" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"end-user-action",
			cast(GCallback)&callBackEndUserAction,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["end-user-action"] = 1;
		}
		onEndUserActionListeners ~= dlg;
	}
	extern(C) static void callBackEndUserAction(GtkTextBuffer* textbufferStruct, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextBuffer) dlg ; _textBuffer.onEndUserActionListeners )
		{
			dlg(_textBuffer);
		}
	}
	
	void delegate(TextIter, TextChildAnchor, TextBuffer)[] onInsertChildAnchorListeners;
	/**
	 * The ::insert-child-anchor signal is emitted to insert a
	 * GtkTextChildAnchor in a GtkTextBuffer.
	 * Insertion actually occurs in the default handler.
	 * Note that if your handler runs before the default handler it must
	 * not invalidate the location iter (or has to revalidate it).
	 * The default signal handler revalidates it to be placed after the
	 * inserted anchor.
	 * See also: gtk_text_buffer_insert_child_anchor().
	 */
	void addOnInsertChildAnchor(void delegate(TextIter, TextChildAnchor, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-child-anchor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-child-anchor",
			cast(GCallback)&callBackInsertChildAnchor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["insert-child-anchor"] = 1;
		}
		onInsertChildAnchorListeners ~= dlg;
	}
	extern(C) static void callBackInsertChildAnchor(GtkTextBuffer* textbufferStruct, GtkTextIter* location, GtkTextChildAnchor* anchor, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextIter, TextChildAnchor, TextBuffer) dlg ; _textBuffer.onInsertChildAnchorListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(location), ObjectG.getDObject!(TextChildAnchor)(anchor), _textBuffer);
		}
	}
	
	void delegate(TextIter, Pixbuf, TextBuffer)[] onInsertPixbufListeners;
	/**
	 * The ::insert-pixbuf signal is emitted to insert a GdkPixbuf
	 * in a GtkTextBuffer. Insertion actually occurs in the default handler.
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the location iter (or has to revalidate it).
	 * The default signal handler revalidates it to be placed after the
	 * inserted pixbuf.
	 * See also: gtk_text_buffer_insert_pixbuf().
	 */
	void addOnInsertPixbuf(void delegate(TextIter, Pixbuf, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-pixbuf" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-pixbuf",
			cast(GCallback)&callBackInsertPixbuf,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["insert-pixbuf"] = 1;
		}
		onInsertPixbufListeners ~= dlg;
	}
	extern(C) static void callBackInsertPixbuf(GtkTextBuffer* textbufferStruct, GtkTextIter* location, GdkPixbuf* pixbuf, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextIter, Pixbuf, TextBuffer) dlg ; _textBuffer.onInsertPixbufListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(location), ObjectG.getDObject!(Pixbuf)(pixbuf), _textBuffer);
		}
	}
	
	void delegate(TextIter, string, gint, TextBuffer)[] onInsertTextListeners;
	/**
	 * The ::insert-text signal is emitted to insert text in a GtkTextBuffer.
	 * Insertion actually occurs in the default handler.
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the location iter (or has to revalidate it).
	 * The default signal handler revalidates it to point to the end of the
	 * inserted text.
	 * See also:
	 * gtk_text_buffer_insert(),
	 * gtk_text_buffer_insert_range().
	 */
	void addOnInsertText(void delegate(TextIter, string, gint, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("insert-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-text",
			cast(GCallback)&callBackInsertText,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["insert-text"] = 1;
		}
		onInsertTextListeners ~= dlg;
	}
	extern(C) static void callBackInsertText(GtkTextBuffer* textbufferStruct, GtkTextIter* location, gchar* text, gint len, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextIter, string, gint, TextBuffer) dlg ; _textBuffer.onInsertTextListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(location), Str.toString(text), len, _textBuffer);
		}
	}
	
	void delegate(TextMark, TextBuffer)[] onMarkDeletedListeners;
	/**
	 * The ::mark-deleted signal is emitted as notification
	 * after a GtkTextMark is deleted.
	 */
	void addOnMarkDeleted(void delegate(TextMark, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mark-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mark-deleted",
			cast(GCallback)&callBackMarkDeleted,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mark-deleted"] = 1;
		}
		onMarkDeletedListeners ~= dlg;
	}
	extern(C) static void callBackMarkDeleted(GtkTextBuffer* textbufferStruct, GtkTextMark* mark, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextMark, TextBuffer) dlg ; _textBuffer.onMarkDeletedListeners )
		{
			dlg(ObjectG.getDObject!(TextMark)(mark), _textBuffer);
		}
	}
	
	void delegate(TextIter, TextMark, TextBuffer)[] onMarkSetListeners;
	/**
	 * The ::mark-set signal is emitted as notification
	 * after a GtkTextMark is set.
	 * See also:
	 * gtk_text_buffer_create_mark(),
	 * gtk_text_buffer_move_mark().
	 */
	void addOnMarkSet(void delegate(TextIter, TextMark, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("mark-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mark-set",
			cast(GCallback)&callBackMarkSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["mark-set"] = 1;
		}
		onMarkSetListeners ~= dlg;
	}
	extern(C) static void callBackMarkSet(GtkTextBuffer* textbufferStruct, GtkTextIter* location, GtkTextMark* mark, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextIter, TextMark, TextBuffer) dlg ; _textBuffer.onMarkSetListeners )
		{
			dlg(ObjectG.getDObject!(TextIter)(location), ObjectG.getDObject!(TextMark)(mark), _textBuffer);
		}
	}
	
	void delegate(TextBuffer)[] onModifiedChangedListeners;
	/**
	 * The ::modified-changed signal is emitted when the modified bit of a
	 * GtkTextBuffer flips.
	 */
	void addOnModifiedChanged(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("modified-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"modified-changed",
			cast(GCallback)&callBackModifiedChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["modified-changed"] = 1;
		}
		onModifiedChangedListeners ~= dlg;
	}
	extern(C) static void callBackModifiedChanged(GtkTextBuffer* textbufferStruct, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextBuffer) dlg ; _textBuffer.onModifiedChangedListeners )
		{
			dlg(_textBuffer);
		}
	}
	
	void delegate(Clipboard, TextBuffer)[] onPasteDoneListeners;
	/**
	 * The paste-done signal is emitted after paste operation has been completed.
	 * This is useful to properly scroll the view to the end of the pasted text.
	 * See gtk_text_buffer_paste_clipboard() for more details.
	 * Since 2.16
	 */
	void addOnPasteDone(void delegate(Clipboard, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("paste-done" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"paste-done",
			cast(GCallback)&callBackPasteDone,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["paste-done"] = 1;
		}
		onPasteDoneListeners ~= dlg;
	}
	extern(C) static void callBackPasteDone(GtkTextBuffer* textbufferStruct, GtkClipboard* arg1, TextBuffer _textBuffer)
	{
		foreach ( void delegate(Clipboard, TextBuffer) dlg ; _textBuffer.onPasteDoneListeners )
		{
			dlg(ObjectG.getDObject!(Clipboard)(arg1), _textBuffer);
		}
	}
	
	void delegate(TextTag, TextIter, TextIter, TextBuffer)[] onRemoveTagListeners;
	/**
	 * The ::remove-tag signal is emitted to remove all occurrences of tag from
	 * a range of text in a GtkTextBuffer.
	 * Removal actually occurs in the default handler.
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the start and end iters (or has to revalidate them).
	 * See also:
	 * gtk_text_buffer_remove_tag().
	 * See Also
	 * GtkTextView, GtkTextIter, GtkTextMark
	 */
	void addOnRemoveTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("remove-tag" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove-tag",
			cast(GCallback)&callBackRemoveTag,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["remove-tag"] = 1;
		}
		onRemoveTagListeners ~= dlg;
	}
	extern(C) static void callBackRemoveTag(GtkTextBuffer* textbufferStruct, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end, TextBuffer _textBuffer)
	{
		foreach ( void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg ; _textBuffer.onRemoveTagListeners )
		{
			dlg(ObjectG.getDObject!(TextTag)(tag), ObjectG.getDObject!(TextIter)(start), ObjectG.getDObject!(TextIter)(end), _textBuffer);
		}
	}
	
	
	/**
	 * Creates a new text buffer.
	 * Params:
	 * table = a tag table, or NULL to create a new one. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TextTagTable table)
	{
		// GtkTextBuffer * gtk_text_buffer_new (GtkTextTagTable *table);
		auto p = gtk_text_buffer_new((table is null) ? null : table.getTextTagTableStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_text_buffer_new((table is null) ? null : table.getTextTagTableStruct())");
		}
		this(cast(GtkTextBuffer*) p);
	}
	
	/**
	 * Obtains the number of lines in the buffer. This value is cached, so
	 * the function is very fast.
	 * Returns: number of lines in the buffer
	 */
	public int getLineCount()
	{
		// gint gtk_text_buffer_get_line_count (GtkTextBuffer *buffer);
		return gtk_text_buffer_get_line_count(gtkTextBuffer);
	}
	
	/**
	 * Gets the number of characters in the buffer; note that characters
	 * and bytes are not the same, you can't e.g. expect the contents of
	 * the buffer in string form to be this many bytes long. The character
	 * count is cached, so this function is very fast.
	 * Returns: number of characters in the buffer
	 */
	public int getCharCount()
	{
		// gint gtk_text_buffer_get_char_count (GtkTextBuffer *buffer);
		return gtk_text_buffer_get_char_count(gtkTextBuffer);
	}
	
	/**
	 * Get the GtkTextTagTable associated with this buffer.
	 * Returns: the buffer's tag table. [transfer none]
	 */
	public TextTagTable getTagTable()
	{
		// GtkTextTagTable * gtk_text_buffer_get_tag_table (GtkTextBuffer *buffer);
		auto p = gtk_text_buffer_get_tag_table(gtkTextBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextTagTable)(cast(GtkTextTagTable*) p);
	}
	
	/**
	 * Inserts len bytes of text at position iter. If len is -1,
	 * text must be nul-terminated and will be inserted in its
	 * entirety. Emits the "insert-text" signal; insertion actually occurs
	 * in the default handler for the signal. iter is invalidated when
	 * insertion occurs (because the buffer contents change), but the
	 * default signal handler revalidates it to point to the end of the
	 * inserted text.
	 * Params:
	 * iter = a position in the buffer
	 * text = text in UTF-8 format
	 */
	public void insert(TextIter iter, string text)
	{
		// void gtk_text_buffer_insert (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len);
		gtk_text_buffer_insert(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), cast(char*)text.ptr, cast(int) text.length);
	}
	
	/**
	 * Simply calls gtk_text_buffer_insert(), using the current
	 * cursor position as the insertion point.
	 * Params:
	 * text = text in UTF-8 format
	 */
	public void insertAtCursor(string text)
	{
		// void gtk_text_buffer_insert_at_cursor (GtkTextBuffer *buffer,  const gchar *text,  gint len);
		gtk_text_buffer_insert_at_cursor(gtkTextBuffer, cast(char*)text.ptr, cast(int) text.length);
	}
	
	/**
	 * Like gtk_text_buffer_insert(), but the insertion will not occur if
	 * iter is at a non-editable location in the buffer. Usually you
	 * want to prevent insertions at ineditable locations if the insertion
	 * results from a user action (is interactive).
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * Params:
	 * iter = a position in buffer
	 * text = some UTF-8 text
	 * defaultEditable = default editability of buffer
	 * Returns: whether text was actually inserted
	 */
	public int insertInteractive(TextIter iter, string text, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), cast(char*)text.ptr, cast(int) text.length, defaultEditable);
	}
	
	/**
	 * Calls gtk_text_buffer_insert_interactive() at the cursor
	 * position.
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * Params:
	 * text = text in UTF-8 format
	 * defaultEditable = default editability of buffer
	 * Returns: whether text was actually inserted
	 */
	public int insertInteractiveAtCursor(string text, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive_at_cursor  (GtkTextBuffer *buffer,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive_at_cursor(gtkTextBuffer, cast(char*)text.ptr, cast(int) text.length, defaultEditable);
	}
	
	/**
	 * Copies text, tags, and pixbufs between start and end (the order
	 * of start and end doesn't matter) and inserts the copy at iter.
	 * Used instead of simply getting/inserting text because it preserves
	 * images and tags. If start and end are in a different buffer from
	 * buffer, the two buffers must share the same tag table.
	 * Implemented via emissions of the insert_text and apply_tag signals,
	 * so expect those.
	 * Params:
	 * iter = a position in buffer
	 * start = a position in a GtkTextBuffer
	 * end = another position in the same buffer as start
	 */
	public void insertRange(TextIter iter, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_insert_range (GtkTextBuffer *buffer,  GtkTextIter *iter,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_insert_range(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Same as gtk_text_buffer_insert_range(), but does nothing if the
	 * insertion point isn't editable. The default_editable parameter
	 * indicates whether the text is editable at iter if no tags
	 * enclosing iter affect editability. Typically the result of
	 * gtk_text_view_get_editable() is appropriate here.
	 * Params:
	 * iter = a position in buffer
	 * start = a position in a GtkTextBuffer
	 * end = another position in the same buffer as start
	 * defaultEditable = default editability of the buffer
	 * Returns: whether an insertion was possible at iter
	 */
	public int insertRangeInteractive(TextIter iter, TextIter start, TextIter end, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_range_interactive  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean default_editable);
		return gtk_text_buffer_insert_range_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), defaultEditable);
	}
	
	/**
	 * Deletes text between start and end. The order of start and end
	 * is not actually relevant; gtk_text_buffer_delete() will reorder
	 * them. This function actually emits the "delete-range" signal, and
	 * the default handler of that signal deletes the text. Because the
	 * buffer is modified, all outstanding iterators become invalid after
	 * calling this function; however, the start and end will be
	 * re-initialized to point to the location where text was deleted.
	 * Params:
	 * start = a position in buffer
	 * end = another position in buffer
	 */
	public void delet(TextIter start, TextIter end)
	{
		// void gtk_text_buffer_delete (GtkTextBuffer *buffer,  GtkTextIter *start,  GtkTextIter *end);
		gtk_text_buffer_delete(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Deletes all editable text in the given range.
	 * Calls gtk_text_buffer_delete() for each editable sub-range of
	 * [start,end). start and end are revalidated to point to
	 * the location of the last deleted range, or left untouched if
	 * no text was deleted.
	 * Params:
	 * startIter = start of range to delete
	 * endIter = end of range
	 * defaultEditable = whether the buffer is editable by default
	 * Returns: whether some text was actually deleted
	 */
	public int deleteInteractive(TextIter startIter, TextIter endIter, int defaultEditable)
	{
		// gboolean gtk_text_buffer_delete_interactive (GtkTextBuffer *buffer,  GtkTextIter *start_iter,  GtkTextIter *end_iter,  gboolean default_editable);
		return gtk_text_buffer_delete_interactive(gtkTextBuffer, (startIter is null) ? null : startIter.getTextIterStruct(), (endIter is null) ? null : endIter.getTextIterStruct(), defaultEditable);
	}
	
	/**
	 * Performs the appropriate action as if the user hit the delete
	 * key with the cursor at the position specified by iter. In the
	 * normal case a single character will be deleted, but when
	 * combining accents are involved, more than one character can
	 * be deleted, and when precomposed character and accent combinations
	 * are involved, less than one character will be deleted.
	 * Because the buffer is modified, all outstanding iterators become
	 * invalid after calling this function; however, the iter will be
	 * re-initialized to point to the location where text was deleted.
	 * Since 2.6
	 * Params:
	 * iter = a position in buffer
	 * interactive = whether the deletion is caused by user interaction
	 * defaultEditable = whether the buffer is editable by default
	 * Returns: TRUE if the buffer was modified
	 */
	public int backspace(TextIter iter, int interactive, int defaultEditable)
	{
		// gboolean gtk_text_buffer_backspace (GtkTextBuffer *buffer,  GtkTextIter *iter,  gboolean interactive,  gboolean default_editable);
		return gtk_text_buffer_backspace(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), interactive, defaultEditable);
	}
	
	/**
	 * Deletes current contents of buffer, and inserts text instead. If
	 * len is -1, text must be nul-terminated. text must be valid UTF-8.
	 * Params:
	 * text = UTF-8 text to insert
	 */
	public void setText(string text)
	{
		// void gtk_text_buffer_set_text (GtkTextBuffer *buffer,  const gchar *text,  gint len);
		gtk_text_buffer_set_text(gtkTextBuffer, cast(char*)text.ptr, cast(int) text.length);
	}
	
	/**
	 * Returns the text in the range [start,end). Excludes undisplayed
	 * text (text marked with tags that set the invisibility attribute) if
	 * include_hidden_chars is FALSE. Does not include characters
	 * representing embedded images, so byte and character indexes into
	 * the returned string do not correspond to byte
	 * and character indexes into the buffer. Contrast with
	 * gtk_text_buffer_get_slice().
	 * Params:
	 * start = start of a range
	 * end = end of a range
	 * includeHiddenChars = whether to include invisible text
	 * Returns: an allocated UTF-8 string
	 */
	public string getText(TextIter start, TextIter end, int includeHiddenChars)
	{
		// gchar * gtk_text_buffer_get_text (GtkTextBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean include_hidden_chars);
		return Str.toString(gtk_text_buffer_get_text(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars));
	}
	
	/**
	 * Returns the text in the range [start,end). Excludes undisplayed
	 * text (text marked with tags that set the invisibility attribute) if
	 * include_hidden_chars is FALSE. The returned string includes a
	 * 0xFFFC character whenever the buffer contains
	 * embedded images, so byte and character indexes into
	 * the returned string do correspond to byte
	 * and character indexes into the buffer. Contrast with
	 * gtk_text_buffer_get_text(). Note that 0xFFFC can occur in normal
	 * text as well, so it is not a reliable indicator that a pixbuf or
	 * widget is in the buffer.
	 * Params:
	 * start = start of a range
	 * end = end of a range
	 * includeHiddenChars = whether to include invisible text
	 * Returns: an allocated UTF-8 string
	 */
	public string getSlice(TextIter start, TextIter end, int includeHiddenChars)
	{
		// gchar * gtk_text_buffer_get_slice (GtkTextBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean include_hidden_chars);
		return Str.toString(gtk_text_buffer_get_slice(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars));
	}
	
	/**
	 * Inserts an image into the text buffer at iter. The image will be
	 * counted as one character in character counts, and when obtaining
	 * the buffer contents as a string, will be represented by the Unicode
	 * "object replacement character" 0xFFFC. Note that the "slice"
	 * variants for obtaining portions of the buffer as a string include
	 * this character for pixbufs, but the "text" variants do
	 * not. e.g. see gtk_text_buffer_get_slice() and
	 * gtk_text_buffer_get_text().
	 * Params:
	 * iter = location to insert the pixbuf
	 * pixbuf = a GdkPixbuf
	 */
	public void insertPixbuf(TextIter iter, Pixbuf pixbuf)
	{
		// void gtk_text_buffer_insert_pixbuf (GtkTextBuffer *buffer,  GtkTextIter *iter,  GdkPixbuf *pixbuf);
		gtk_text_buffer_insert_pixbuf(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Inserts a child widget anchor into the text buffer at iter. The
	 * anchor will be counted as one character in character counts, and
	 * when obtaining the buffer contents as a string, will be represented
	 * by the Unicode "object replacement character" 0xFFFC. Note that the
	 * "slice" variants for obtaining portions of the buffer as a string
	 * include this character for child anchors, but the "text" variants do
	 * not. E.g. see gtk_text_buffer_get_slice() and
	 * gtk_text_buffer_get_text(). Consider
	 * gtk_text_buffer_create_child_anchor() as a more convenient
	 * alternative to this function. The buffer will add a reference to
	 * the anchor, so you can unref it after insertion.
	 * Params:
	 * iter = location to insert the anchor
	 * anchor = a GtkTextChildAnchor
	 */
	public void insertChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		// void gtk_text_buffer_insert_child_anchor (GtkTextBuffer *buffer,  GtkTextIter *iter,  GtkTextChildAnchor *anchor);
		gtk_text_buffer_insert_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}
	
	/**
	 * This is a convenience function which simply creates a child anchor
	 * with gtk_text_child_anchor_new() and inserts it into the buffer
	 * with gtk_text_buffer_insert_child_anchor(). The new anchor is
	 * owned by the buffer; no reference count is returned to
	 * the caller of gtk_text_buffer_create_child_anchor().
	 * Params:
	 * iter = location in the buffer
	 * Returns: the created child anchor. [transfer none]
	 */
	public TextChildAnchor createChildAnchor(TextIter iter)
	{
		// GtkTextChildAnchor * gtk_text_buffer_create_child_anchor  (GtkTextBuffer *buffer,  GtkTextIter *iter);
		auto p = gtk_text_buffer_create_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextChildAnchor)(cast(GtkTextChildAnchor*) p);
	}
	
	/**
	 * Creates a mark at position where. If mark_name is NULL, the mark
	 * is anonymous; otherwise, the mark can be retrieved by name using
	 * gtk_text_buffer_get_mark(). If a mark has left gravity, and text is
	 * inserted at the mark's current location, the mark will be moved to
	 * the left of the newly-inserted text. If the mark has right gravity
	 * (left_gravity = FALSE), the mark will end up on the right of
	 * newly-inserted text. The standard left-to-right cursor is a mark
	 * with right gravity (when you type, the cursor stays on the right
	 * side of the text you're typing).
	 * The caller of this function does not own a
	 * reference to the returned GtkTextMark, so you can ignore the
	 * return value if you like. Marks are owned by the buffer and go
	 * away when the buffer does.
	 * Emits the "mark-set" signal as notification of the mark's initial
	 * placement.
	 * Params:
	 * markName = name for mark, or NULL. [allow-none]
	 * where = location to place mark
	 * leftGravity = whether the mark has left gravity
	 * Returns: the new GtkTextMark object. [transfer none]
	 */
	public TextMark createMark(string markName, TextIter where, int leftGravity)
	{
		// GtkTextMark * gtk_text_buffer_create_mark (GtkTextBuffer *buffer,  const gchar *mark_name,  const GtkTextIter *where,  gboolean left_gravity);
		auto p = gtk_text_buffer_create_mark(gtkTextBuffer, Str.toStringz(markName), (where is null) ? null : where.getTextIterStruct(), leftGravity);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}
	
	/**
	 * Moves mark to the new location where. Emits the "mark-set" signal
	 * as notification of the move.
	 * Params:
	 * mark = a GtkTextMark
	 * where = new location for mark in buffer
	 */
	public void moveMark(TextMark mark, TextIter where)
	{
		// void gtk_text_buffer_move_mark (GtkTextBuffer *buffer,  GtkTextMark *mark,  const GtkTextIter *where);
		gtk_text_buffer_move_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct(), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Moves the mark named name (which must exist) to location where.
	 * See gtk_text_buffer_move_mark() for details.
	 * Params:
	 * name = name of a mark
	 * where = new location for mark
	 */
	public void moveMarkByName(string name, TextIter where)
	{
		// void gtk_text_buffer_move_mark_by_name (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *where);
		gtk_text_buffer_move_mark_by_name(gtkTextBuffer, Str.toStringz(name), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Adds the mark at position where. The mark must not be added to
	 * another buffer, and if its name is not NULL then there must not
	 * be another mark in the buffer with the same name.
	 * Emits the "mark-set" signal as notification of the mark's initial
	 * placement.
	 * Since 2.12
	 * Params:
	 * mark = the mark to add
	 * where = location to place mark
	 */
	public void addMark(TextMark mark, TextIter where)
	{
		// void gtk_text_buffer_add_mark (GtkTextBuffer *buffer,  GtkTextMark *mark,  const GtkTextIter *where);
		gtk_text_buffer_add_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct(), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Deletes mark, so that it's no longer located anywhere in the
	 * buffer. Removes the reference the buffer holds to the mark, so if
	 * you haven't called g_object_ref() on the mark, it will be freed. Even
	 * if the mark isn't freed, most operations on mark become
	 * invalid, until it gets added to a buffer again with
	 * gtk_text_buffer_add_mark(). Use gtk_text_mark_get_deleted() to
	 * find out if a mark has been removed from its buffer.
	 * The "mark-deleted" signal will be emitted as notification after
	 * the mark is deleted.
	 * Params:
	 * mark = a GtkTextMark in buffer
	 */
	public void deleteMark(TextMark mark)
	{
		// void gtk_text_buffer_delete_mark (GtkTextBuffer *buffer,  GtkTextMark *mark);
		gtk_text_buffer_delete_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Deletes the mark named name; the mark must exist. See
	 * gtk_text_buffer_delete_mark() for details.
	 * Params:
	 * name = name of a mark in buffer
	 */
	public void deleteMarkByName(string name)
	{
		// void gtk_text_buffer_delete_mark_by_name (GtkTextBuffer *buffer,  const gchar *name);
		gtk_text_buffer_delete_mark_by_name(gtkTextBuffer, Str.toStringz(name));
	}
	
	/**
	 * Returns the mark named name in buffer buffer, or NULL if no such
	 * mark exists in the buffer.
	 * Params:
	 * name = a mark name
	 * Returns: a GtkTextMark, or NULL. [transfer none]
	 */
	public TextMark getMark(string name)
	{
		// GtkTextMark * gtk_text_buffer_get_mark (GtkTextBuffer *buffer,  const gchar *name);
		auto p = gtk_text_buffer_get_mark(gtkTextBuffer, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}
	
	/**
	 * Returns the mark that represents the cursor (insertion point).
	 * Equivalent to calling gtk_text_buffer_get_mark() to get the mark
	 * named "insert", but very slightly more efficient, and involves less
	 * typing.
	 * Returns: insertion point mark. [transfer none]
	 */
	public TextMark getInsert()
	{
		// GtkTextMark * gtk_text_buffer_get_insert (GtkTextBuffer *buffer);
		auto p = gtk_text_buffer_get_insert(gtkTextBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}
	
	/**
	 * Returns the mark that represents the selection bound. Equivalent
	 * to calling gtk_text_buffer_get_mark() to get the mark named
	 * "selection_bound", but very slightly more efficient, and involves
	 * less typing.
	 * The currently-selected text in buffer is the region between the
	 * "selection_bound" and "insert" marks. If "selection_bound" and
	 * "insert" are in the same place, then there is no current selection.
	 * gtk_text_buffer_get_selection_bounds() is another convenient function
	 * for handling the selection, if you just want to know whether there's a
	 * selection and what its bounds are.
	 * Returns: selection bound mark. [transfer none]
	 */
	public TextMark getSelectionBound()
	{
		// GtkTextMark * gtk_text_buffer_get_selection_bound (GtkTextBuffer *buffer);
		auto p = gtk_text_buffer_get_selection_bound(gtkTextBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}
	
	/**
	 * Indicates whether the buffer has some text currently selected.
	 * Since 2.10
	 * Returns: TRUE if the there is text selected
	 */
	public int getHasSelection()
	{
		// gboolean gtk_text_buffer_get_has_selection (GtkTextBuffer *buffer);
		return gtk_text_buffer_get_has_selection(gtkTextBuffer);
	}
	
	/**
	 * This function moves the "insert" and "selection_bound" marks
	 * simultaneously. If you move them to the same place in two steps
	 * with gtk_text_buffer_move_mark(), you will temporarily select a
	 * region in between their old and new locations, which can be pretty
	 * inefficient since the temporarily-selected region will force stuff
	 * to be recalculated. This function moves them as a unit, which can
	 * be optimized.
	 * Params:
	 * where = where to put the cursor
	 */
	public void placeCursor(TextIter where)
	{
		// void gtk_text_buffer_place_cursor (GtkTextBuffer *buffer,  const GtkTextIter *where);
		gtk_text_buffer_place_cursor(gtkTextBuffer, (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * This function moves the "insert" and "selection_bound" marks
	 * simultaneously. If you move them in two steps
	 * with gtk_text_buffer_move_mark(), you will temporarily select a
	 * region in between their old and new locations, which can be pretty
	 * inefficient since the temporarily-selected region will force stuff
	 * to be recalculated. This function moves them as a unit, which can
	 * be optimized.
	 * Since 2.4
	 * Params:
	 * ins = where to put the "insert" mark
	 * bound = where to put the "selection_bound" mark
	 */
	public void selectRange(TextIter ins, TextIter bound)
	{
		// void gtk_text_buffer_select_range (GtkTextBuffer *buffer,  const GtkTextIter *ins,  const GtkTextIter *bound);
		gtk_text_buffer_select_range(gtkTextBuffer, (ins is null) ? null : ins.getTextIterStruct(), (bound is null) ? null : bound.getTextIterStruct());
	}
	
	/**
	 * Emits the "apply-tag" signal on buffer. The default
	 * handler for the signal applies tag to the given range.
	 * start and end do not have to be in order.
	 * Params:
	 * tag = a GtkTextTag
	 * start = one bound of range to be tagged
	 * end = other bound of range to be tagged
	 */
	public void applyTag(TextTag tag, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_apply_tag (GtkTextBuffer *buffer,  GtkTextTag *tag,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_apply_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Emits the "remove-tag" signal. The default handler for the signal
	 * removes all occurrences of tag from the given range. start and
	 * end don't have to be in order.
	 * Params:
	 * tag = a GtkTextTag
	 * start = one bound of range to be untagged
	 * end = other bound of range to be untagged
	 */
	public void removeTag(TextTag tag, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_remove_tag (GtkTextBuffer *buffer,  GtkTextTag *tag,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_remove_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer's tag table to
	 * get a GtkTextTag, then calls gtk_text_buffer_apply_tag().
	 * Params:
	 * name = name of a named GtkTextTag
	 * start = one bound of range to be tagged
	 * end = other bound of range to be tagged
	 */
	public void applyTagByName(string name, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_apply_tag_by_name (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_apply_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer's tag table to
	 * get a GtkTextTag, then calls gtk_text_buffer_remove_tag().
	 * Params:
	 * name = name of a GtkTextTag
	 * start = one bound of range to be untagged
	 * end = other bound of range to be untagged
	 */
	public void removeTagByName(string name, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_remove_tag_by_name (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_remove_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Removes all tags in the range between start and end. Be careful
	 * with this function; it could remove tags added in code unrelated to
	 * the code you're currently writing. That is, using this function is
	 * probably a bad idea if you have two or more unrelated code sections
	 * that add tags.
	 * Params:
	 * start = one bound of range to be untagged
	 * end = other bound of range to be untagged
	 */
	public void removeAllTags(TextIter start, TextIter end)
	{
		// void gtk_text_buffer_remove_all_tags (GtkTextBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_remove_all_tags(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Obtains an iterator pointing to char_offset within the given
	 * line. The char_offset must exist, offsets off the end of the line
	 * are not allowed. Note characters, not bytes;
	 * UTF-8 may encode one character as multiple bytes.
	 * Params:
	 * iter = iterator to initialize. [out]
	 * lineNumber = line number counting from 0
	 * charOffset = char offset from start of line
	 */
	public void getIterAtLineOffset(TextIter iter, int lineNumber, int charOffset)
	{
		// void gtk_text_buffer_get_iter_at_line_offset  (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint line_number,  gint char_offset);
		gtk_text_buffer_get_iter_at_line_offset(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), lineNumber, charOffset);
	}
	
	/**
	 * Initializes iter to a position char_offset chars from the start
	 * of the entire buffer. If char_offset is -1 or greater than the number
	 * of characters in the buffer, iter is initialized to the end iterator,
	 * the iterator one past the last valid character in the buffer.
	 * Params:
	 * iter = iterator to initialize. [out]
	 * charOffset = char offset from start of buffer, counting from 0, or -1
	 */
	public void getIterAtOffset(TextIter iter, int charOffset)
	{
		// void gtk_text_buffer_get_iter_at_offset (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint char_offset);
		gtk_text_buffer_get_iter_at_offset(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), charOffset);
	}
	
	/**
	 * Initializes iter to the start of the given line.
	 * Params:
	 * iter = iterator to initialize. [out]
	 * lineNumber = line number counting from 0
	 */
	public void getIterAtLine(TextIter iter, int lineNumber)
	{
		// void gtk_text_buffer_get_iter_at_line (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint line_number);
		gtk_text_buffer_get_iter_at_line(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), lineNumber);
	}
	
	/**
	 * Obtains an iterator pointing to byte_index within the given line.
	 * byte_index must be the start of a UTF-8 character, and must not be
	 * beyond the end of the line. Note bytes, not
	 * characters; UTF-8 may encode one character as multiple bytes.
	 * Params:
	 * iter = iterator to initialize. [out]
	 * lineNumber = line number counting from 0
	 * byteIndex = byte index from start of line
	 */
	public void getIterAtLineIndex(TextIter iter, int lineNumber, int byteIndex)
	{
		// void gtk_text_buffer_get_iter_at_line_index  (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint line_number,  gint byte_index);
		gtk_text_buffer_get_iter_at_line_index(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), lineNumber, byteIndex);
	}
	
	/**
	 * Initializes iter with the current position of mark.
	 * Params:
	 * iter = iterator to initialize. [out]
	 * mark = a GtkTextMark in buffer
	 */
	public void getIterAtMark(TextIter iter, TextMark mark)
	{
		// void gtk_text_buffer_get_iter_at_mark (GtkTextBuffer *buffer,  GtkTextIter *iter,  GtkTextMark *mark);
		gtk_text_buffer_get_iter_at_mark(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Obtains the location of anchor within buffer.
	 * Params:
	 * iter = an iterator to be initialized. [out]
	 * anchor = a child anchor that appears in buffer
	 */
	public void getIterAtChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		// void gtk_text_buffer_get_iter_at_child_anchor  (GtkTextBuffer *buffer,  GtkTextIter *iter,  GtkTextChildAnchor *anchor);
		gtk_text_buffer_get_iter_at_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}
	
	/**
	 * Initialized iter with the first position in the text buffer. This
	 * is the same as using gtk_text_buffer_get_iter_at_offset() to get
	 * the iter at character offset 0.
	 * Params:
	 * iter = iterator to initialize. [out]
	 */
	public void getStartIter(TextIter iter)
	{
		// void gtk_text_buffer_get_start_iter (GtkTextBuffer *buffer,  GtkTextIter *iter);
		gtk_text_buffer_get_start_iter(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Initializes iter with the "end iterator," one past the last valid
	 * character in the text buffer. If dereferenced with
	 * gtk_text_iter_get_char(), the end iterator has a character value of
	 * 0. The entire buffer lies in the range from the first position in
	 * the buffer (call gtk_text_buffer_get_start_iter() to get
	 * character position 0) to the end iterator.
	 * Params:
	 * iter = iterator to initialize. [out]
	 */
	public void getEndIter(TextIter iter)
	{
		// void gtk_text_buffer_get_end_iter (GtkTextBuffer *buffer,  GtkTextIter *iter);
		gtk_text_buffer_get_end_iter(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Retrieves the first and last iterators in the buffer, i.e. the
	 * entire buffer lies within the range [start,end).
	 * Params:
	 * start = iterator to initialize with first position in the buffer. [out]
	 * end = iterator to initialize with the end iterator. [out]
	 */
	public void getBounds(TextIter start, TextIter end)
	{
		// void gtk_text_buffer_get_bounds (GtkTextBuffer *buffer,  GtkTextIter *start,  GtkTextIter *end);
		gtk_text_buffer_get_bounds(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Indicates whether the buffer has been modified since the last call
	 * to gtk_text_buffer_set_modified() set the modification flag to
	 * FALSE. Used for example to enable a "save" function in a text
	 * editor.
	 * Returns: TRUE if the buffer has been modified
	 */
	public int getModified()
	{
		// gboolean gtk_text_buffer_get_modified (GtkTextBuffer *buffer);
		return gtk_text_buffer_get_modified(gtkTextBuffer);
	}
	
	/**
	 * Used to keep track of whether the buffer has been modified since the
	 * last time it was saved. Whenever the buffer is saved to disk, call
	 * gtk_text_buffer_set_modified (buffer, FALSE). When the buffer is modified,
	 * it will automatically toggled on the modified bit again. When the modified
	 * bit flips, the buffer emits a "modified-changed" signal.
	 * Params:
	 * setting = modification flag setting
	 */
	public void setModified(int setting)
	{
		// void gtk_text_buffer_set_modified (GtkTextBuffer *buffer,  gboolean setting);
		gtk_text_buffer_set_modified(gtkTextBuffer, setting);
	}
	
	/**
	 * Deletes the range between the "insert" and "selection_bound" marks,
	 * that is, the currently-selected text. If interactive is TRUE,
	 * the editability of the selection will be considered (users can't delete
	 * uneditable text).
	 * Params:
	 * interactive = whether the deletion is caused by user interaction
	 * defaultEditable = whether the buffer is editable by default
	 * Returns: whether there was a non-empty selection to delete
	 */
	public int deleteSelection(int interactive, int defaultEditable)
	{
		// gboolean gtk_text_buffer_delete_selection (GtkTextBuffer *buffer,  gboolean interactive,  gboolean default_editable);
		return gtk_text_buffer_delete_selection(gtkTextBuffer, interactive, defaultEditable);
	}
	
	/**
	 * Pastes the contents of a clipboard at the insertion point, or
	 * at override_location. (Note: pasting is asynchronous, that is,
	 * we'll ask for the paste data and return, and at some point later
	 * after the main loop runs, the paste data will be inserted.)
	 * Params:
	 * clipboard = the GtkClipboard to paste from
	 * overrideLocation = location to insert pasted text, or NULL for
	 * at the cursor. [allow-none]
	 * defaultEditable = whether the buffer is editable by default
	 */
	public void pasteClipboard(Clipboard clipboard, TextIter overrideLocation, int defaultEditable)
	{
		// void gtk_text_buffer_paste_clipboard (GtkTextBuffer *buffer,  GtkClipboard *clipboard,  GtkTextIter *override_location,  gboolean default_editable);
		gtk_text_buffer_paste_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct(), (overrideLocation is null) ? null : overrideLocation.getTextIterStruct(), defaultEditable);
	}
	
	/**
	 * Copies the currently-selected text to a clipboard.
	 * Params:
	 * clipboard = the GtkClipboard object to copy to
	 */
	public void copyClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_copy_clipboard (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_copy_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	/**
	 * Copies the currently-selected text to a clipboard, then deletes
	 * said text if it's editable.
	 * Params:
	 * clipboard = the GtkClipboard object to cut to
	 * defaultEditable = default editability of the buffer
	 */
	public void cutClipboard(Clipboard clipboard, int defaultEditable)
	{
		// void gtk_text_buffer_cut_clipboard (GtkTextBuffer *buffer,  GtkClipboard *clipboard,  gboolean default_editable);
		gtk_text_buffer_cut_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct(), defaultEditable);
	}
	
	/**
	 * Returns TRUE if some text is selected; places the bounds
	 * of the selection in start and end (if the selection has length 0,
	 * then start and end are filled in with the same value).
	 * start and end will be in ascending order. If start and end are
	 * NULL, then they are not filled in, but the return value still indicates
	 * whether text is selected.
	 * Params:
	 * start = iterator to initialize with selection start. [out]
	 * end = iterator to initialize with selection end. [out]
	 * Returns: whether the selection has nonzero length
	 */
	public int getSelectionBounds(TextIter start, TextIter end)
	{
		// gboolean gtk_text_buffer_get_selection_bounds  (GtkTextBuffer *buffer,  GtkTextIter *start,  GtkTextIter *end);
		return gtk_text_buffer_get_selection_bounds(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Called to indicate that the buffer operations between here and a
	 * call to gtk_text_buffer_end_user_action() are part of a single
	 * user-visible operation. The operations between
	 * gtk_text_buffer_begin_user_action() and
	 * gtk_text_buffer_end_user_action() can then be grouped when creating
	 * an undo stack. GtkTextBuffer maintains a count of calls to
	 * gtk_text_buffer_begin_user_action() that have not been closed with
	 * a call to gtk_text_buffer_end_user_action(), and emits the
	 * "begin-user-action" and "end-user-action" signals only for the
	 * outermost pair of calls. This allows you to build user actions
	 * from other user actions.
	 * The "interactive" buffer mutation functions, such as
	 * gtk_text_buffer_insert_interactive(), automatically call begin/end
	 * user action around the buffer operations they perform, so there's
	 * no need to add extra calls if you user action consists solely of a
	 * single call to one of those functions.
	 */
	public void beginUserAction()
	{
		// void gtk_text_buffer_begin_user_action (GtkTextBuffer *buffer);
		gtk_text_buffer_begin_user_action(gtkTextBuffer);
	}
	
	/**
	 * Should be paired with a call to gtk_text_buffer_begin_user_action().
	 * See that function for a full explanation.
	 */
	public void endUserAction()
	{
		// void gtk_text_buffer_end_user_action (GtkTextBuffer *buffer);
		gtk_text_buffer_end_user_action(gtkTextBuffer);
	}
	
	/**
	 * Adds clipboard to the list of clipboards in which the selection
	 * contents of buffer are available. In most cases, clipboard will be
	 * the GtkClipboard of type GDK_SELECTION_PRIMARY for a view of buffer.
	 * Params:
	 * clipboard = a GtkClipboard
	 */
	public void addSelectionClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_add_selection_clipboard  (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_add_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	/**
	 * Removes a GtkClipboard added with
	 * gtk_text_buffer_add_selection_clipboard().
	 * Params:
	 * clipboard = a GtkClipboard added to buffer by
	 * gtk_text_buffer_add_selection_clipboard()
	 */
	public void removeSelectionClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_remove_selection_clipboard  (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_remove_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	/**
	 * This function deserializes rich text in format format and inserts
	 * it at iter.
	 * formats to be used must be registered using
	 * gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset() beforehand.
	 * Since 2.10
	 * Params:
	 * contentBuffer = the GtkTextBuffer to deserialize into
	 * format = the rich text format to use for deserializing
	 * iter = insertion point for the deserialized text
	 * data = data to deserialize. [array length=length]
	 * Returns: TRUE on success, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int deserialize(TextBuffer contentBuffer, GdkAtom format, TextIter iter, ubyte[] data)
	{
		// gboolean gtk_text_buffer_deserialize (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  GdkAtom format,  GtkTextIter *iter,  const guint8 *data,  gsize length,  GError **error);
		GError* err = null;
		
		auto p = gtk_text_buffer_deserialize(gtkTextBuffer, (contentBuffer is null) ? null : contentBuffer.getTextBufferStruct(), format, (iter is null) ? null : iter.getTextIterStruct(), data.ptr, cast(int) data.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This functions returns the value set with
	 * gtk_text_buffer_deserialize_set_can_create_tags()
	 * Since 2.10
	 * Params:
	 * format = a GdkAtom representing a registered rich text format
	 * Returns: whether deserializing this format may create tags
	 */
	public int deserializeGetCanCreateTags(GdkAtom format)
	{
		// gboolean gtk_text_buffer_deserialize_get_can_create_tags  (GtkTextBuffer *buffer,  GdkAtom format);
		return gtk_text_buffer_deserialize_get_can_create_tags(gtkTextBuffer, format);
	}
	
	/**
	 * Use this function to allow a rich text deserialization function to
	 * create new tags in the receiving buffer. Note that using this
	 * function is almost always a bad idea, because the rich text
	 * functions you register should know how to map the rich text format
	 * they handler to your text buffers set of tags.
	 * The ability of creating new (arbitrary!) tags in the receiving buffer
	 * is meant for special rich text formats like the internal one that
	 * is registered using gtk_text_buffer_register_deserialize_tagset(),
	 * because that format is essentially a dump of the internal structure
	 * of the source buffer, including its tag names.
	 * You should allow creation of tags only if you know what you are
	 * doing, e.g. if you defined a tagset name for your application
	 * suite's text buffers and you know that it's fine to receive new
	 * tags from these buffers, because you know that your application can
	 * handle the newly created tags.
	 * Since 2.10
	 * Params:
	 * format = a GdkAtom representing a registered rich text format
	 * canCreateTags = whether deserializing this format may create tags
	 */
	public void deserializeSetCanCreateTags(GdkAtom format, int canCreateTags)
	{
		// void gtk_text_buffer_deserialize_set_can_create_tags  (GtkTextBuffer *buffer,  GdkAtom format,  gboolean can_create_tags);
		gtk_text_buffer_deserialize_set_can_create_tags(gtkTextBuffer, format, canCreateTags);
	}
	
	/**
	 * This function returns the list of targets this text buffer can
	 * provide for copying and as DND source. The targets in the list are
	 * added with info values from the GtkTextBufferTargetInfo enum,
	 * using gtk_target_list_add_rich_text_targets() and
	 * gtk_target_list_add_text_targets().
	 * Since 2.10
	 * Returns: the GtkTargetList. [transfer none]
	 */
	public TargetList getCopyTargetList()
	{
		// GtkTargetList * gtk_text_buffer_get_copy_target_list  (GtkTextBuffer *buffer);
		auto p = gtk_text_buffer_get_copy_target_list(gtkTextBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
	}
	
	/**
	 * This function returns the rich text deserialize formats registered
	 * with buffer using gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset()
	 * Since 2.10
	 * Returns: an array of GdkAtoms representing the registered formats. [array length=n_formats][transfer container]
	 */
	public GdkAtom[] getDeserializeFormats()
	{
		// GdkAtom * gtk_text_buffer_get_deserialize_formats  (GtkTextBuffer *buffer,  gint *n_formats);
		int nFormats;
		auto p = gtk_text_buffer_get_deserialize_formats(gtkTextBuffer, &nFormats);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nFormats];
	}
	
	/**
	 * This function returns the list of targets this text buffer supports
	 * for pasting and as DND destination. The targets in the list are
	 * added with info values from the GtkTextBufferTargetInfo enum,
	 * using gtk_target_list_add_rich_text_targets() and
	 * gtk_target_list_add_text_targets().
	 * Since 2.10
	 * Returns: the GtkTargetList. [transfer none]
	 */
	public TargetList getPasteTargetList()
	{
		// GtkTargetList * gtk_text_buffer_get_paste_target_list  (GtkTextBuffer *buffer);
		auto p = gtk_text_buffer_get_paste_target_list(gtkTextBuffer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
	}
	
	/**
	 * This function returns the rich text serialize formats registered
	 * with buffer using gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset()
	 * Since 2.10
	 * Returns: an array of GdkAtoms representing the registered formats. [array length=n_formats][transfer container]
	 */
	public GdkAtom[] getSerializeFormats()
	{
		// GdkAtom * gtk_text_buffer_get_serialize_formats  (GtkTextBuffer *buffer,  gint *n_formats);
		int nFormats;
		auto p = gtk_text_buffer_get_serialize_formats(gtkTextBuffer, &nFormats);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. nFormats];
	}
	
	/**
	 * This function registers a rich text deserialization function along with
	 * its mime_type with the passed buffer.
	 * Since 2.10
	 * Params:
	 * mimeType = the format's mime-type
	 * userData = function's user_data
	 * userDataDestroy = a function to call when user_data is no longer needed
	 * Returns: the GdkAtom that corresponds to the newly registered format's mime-type. [transfer none]
	 */
	public GdkAtom registerDeserializeFormat(string mimeType, GtkTextBufferDeserializeFunc funct, void* userData, GDestroyNotify userDataDestroy)
	{
		// GdkAtom gtk_text_buffer_register_deserialize_format  (GtkTextBuffer *buffer,  const gchar *mime_type,  GtkTextBufferDeserializeFunc function,  gpointer user_data,  GDestroyNotify user_data_destroy);
		return gtk_text_buffer_register_deserialize_format(gtkTextBuffer, Str.toStringz(mimeType), funct, userData, userDataDestroy);
	}
	
	/**
	 * This function registers GTK+'s internal rich text serialization
	 * format with the passed buffer. See
	 * gtk_text_buffer_register_serialize_tagset() for details.
	 * Since 2.10
	 * Params:
	 * tagsetName = an optional tagset name, on NULL. [allow-none]
	 * Returns: the GdkAtom that corresponds to the newly registered format's mime-type. [transfer none]
	 */
	public GdkAtom registerDeserializeTagset(string tagsetName)
	{
		// GdkAtom gtk_text_buffer_register_deserialize_tagset  (GtkTextBuffer *buffer,  const gchar *tagset_name);
		return gtk_text_buffer_register_deserialize_tagset(gtkTextBuffer, Str.toStringz(tagsetName));
	}
	
	/**
	 * This function registers a rich text serialization function along with
	 * its mime_type with the passed buffer.
	 * Since 2.10
	 * Params:
	 * mimeType = the format's mime-type
	 * userData = function's user_data
	 * userDataDestroy = a function to call when user_data is no longer needed
	 * Returns: the GdkAtom that corresponds to the newly registered format's mime-type. [transfer none]
	 */
	public GdkAtom registerSerializeFormat(string mimeType, GtkTextBufferSerializeFunc funct, void* userData, GDestroyNotify userDataDestroy)
	{
		// GdkAtom gtk_text_buffer_register_serialize_format  (GtkTextBuffer *buffer,  const gchar *mime_type,  GtkTextBufferSerializeFunc function,  gpointer user_data,  GDestroyNotify user_data_destroy);
		return gtk_text_buffer_register_serialize_format(gtkTextBuffer, Str.toStringz(mimeType), funct, userData, userDataDestroy);
	}
	
	/**
	 * This function registers GTK+'s internal rich text serialization
	 * format with the passed buffer. The internal format does not comply
	 * to any standard rich text format and only works between GtkTextBuffer
	 * instances. It is capable of serializing all of a text buffer's tags
	 * and embedded pixbufs.
	 * This function is just a wrapper around
	 * gtk_text_buffer_register_serialize_format(). The mime type used
	 * for registering is "application/x-gtk-text-buffer-rich-text", or
	 * "application/x-gtk-text-buffer-rich-text;format=tagset_name" if a
	 * tagset_name was passed.
	 * The tagset_name can be used to restrict the transfer of rich text
	 * to buffers with compatible sets of tags, in order to avoid unknown
	 * tags from being pasted. It is probably the common case to pass an
	 * identifier != NULL here, since the NULL tagset requires the
	 * receiving buffer to deal with with pasting of arbitrary tags.
	 * Since 2.10
	 * Params:
	 * tagsetName = an optional tagset name, on NULL. [allow-none]
	 * Returns: the GdkAtom that corresponds to the newly registered format's mime-type. [transfer none]
	 */
	public GdkAtom registerSerializeTagset(string tagsetName)
	{
		// GdkAtom gtk_text_buffer_register_serialize_tagset  (GtkTextBuffer *buffer,  const gchar *tagset_name);
		return gtk_text_buffer_register_serialize_tagset(gtkTextBuffer, Str.toStringz(tagsetName));
	}
	
	/**
	 * This function serializes the portion of text between start
	 * and end in the rich text format represented by format.
	 * formats to be used must be registered using
	 * gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset() beforehand.
	 * Since 2.10
	 * Params:
	 * contentBuffer = the GtkTextBuffer to serialize
	 * format = the rich text format to use for serializing
	 * start = start of block of text to serialize
	 * end = end of block of test to serialize
	 * Returns: the serialized data, encoded as format. [array length=length][transfer full]
	 */
	public ubyte[] serialize(TextBuffer contentBuffer, GdkAtom format, TextIter start, TextIter end)
	{
		// guint8 * gtk_text_buffer_serialize (GtkTextBuffer *register_buffer,  GtkTextBuffer *content_buffer,  GdkAtom format,  const GtkTextIter *start,  const GtkTextIter *end,  gsize *length);
		gsize length;
		auto p = gtk_text_buffer_serialize(gtkTextBuffer, (contentBuffer is null) ? null : contentBuffer.getTextBufferStruct(), format, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), &length);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * This function unregisters a rich text format that was previously
	 * registered using gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset().
	 * Since 2.10
	 * Params:
	 * format = a GdkAtom representing a registered rich text format.
	 */
	public void unregisterDeserializeFormat(GdkAtom format)
	{
		// void gtk_text_buffer_unregister_deserialize_format  (GtkTextBuffer *buffer,  GdkAtom format);
		gtk_text_buffer_unregister_deserialize_format(gtkTextBuffer, format);
	}
	
	/**
	 * This function unregisters a rich text format that was previously
	 * registered using gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset()
	 * Since 2.10
	 * Params:
	 * format = a GdkAtom representing a registered rich text format.
	 */
	public void unregisterSerializeFormat(GdkAtom format)
	{
		// void gtk_text_buffer_unregister_serialize_format  (GtkTextBuffer *buffer,  GdkAtom format);
		gtk_text_buffer_unregister_serialize_format(gtkTextBuffer, format);
	}
}
