/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = TextBuffer
 * strct   = GtkTextBuffer
 * realStrct=
 * clss    = TextBuffer
 * extend  = 
 * prefixes:
 * 	- gtk_text_buffer_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_text_buffer_set_text
 * 	- gtk_text_buffer_insert_with_tags
 * 	- gtk_text_buffer_insert_with_tags_by_name
 * 	- gtk_text_buffer_create_tag
 * imports:
 * 	- glib.Str
 * 	- gtk.TextBuffer
 * 	- gdk.Rectangle
 * 	- gtk.Widget
 * 	- pango.PgTabArray
 * 	- gtk.TextAttributes
 * 	- gtk.TextTagTable
 * 	- gtk.TextIter
 * 	- gtk.TextTag
 * 	- gdk.Pixbuf
 * 	- gtk.TextChildAnchor
 * 	- gtk.TextMark
 * 	- gtk.Clipboard
 * 	- gdk.Bitmap
 * 	- std.stdarg
 * structWrap:
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRectangle* -> Rectangle
 * 	- GtkClipboard* -> Clipboard
 * 	- GtkTextAttributes* -> TextAttributes
 * 	- GtkTextBuffer* -> TextBuffer
 * 	- GtkTextChildAnchor* -> TextChildAnchor
 * 	- GtkTextIter* -> TextIter
 * 	- GtkTextMark* -> TextMark
 * 	- GtkTextTag* -> TextTag
 * 	- GtkTextTagTable* -> TextTagTable
 * 	- GtkWidget* -> Widget
 * 	- PangoTabArray* -> PgTabArray
 * local aliases:
 */

module gtk.TextBuffer;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.TextBuffer;
private import gdk.Rectangle;
private import gtk.Widget;
private import pango.PgTabArray;
private import gtk.TextAttributes;
private import gtk.TextTagTable;
private import gtk.TextIter;
private import gtk.TextTag;
private import gdk.Pixbuf;
private import gtk.TextChildAnchor;
private import gtk.TextMark;
private import gtk.Clipboard;
private import gdk.Bitmap;
private import std.stdarg;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
private import gobject.ObjectG;
public class TextBuffer : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextBuffer* gtkTextBuffer;
	
	
	public GtkTextBuffer* getTextBufferStruct()
	{
		return gtkTextBuffer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 * Deletes current contents of buffer, and inserts text instead. If
	 * len is -1, text must be nul-terminated. text must be valid UTF-8.
	 * buffer:
	 *  a GtkTextBuffer
	 * text:
	 *  UTF-8 text to insert
	 * len:
	 *  length of text in bytes
	 */
	public void setText(char[] text)
	{
		// void gtk_text_buffer_set_text (GtkTextBuffer *buffer,  const gchar *text,  gint len);
		gtk_text_buffer_set_text(gtkTextBuffer, Str.toStringz(text), text.length);
	}
	
	/**
	 * Inserts len bytes of text at position iter. If len is -1,
	 * text must be nul-terminated and will be inserted in its
	 * entirety. Emits the "insert_text" signal; insertion actually occurs
	 * in the default handler for the signal. iter is invalidated when
	 * insertion occurs (because the buffer contents change), but the
	 * default signal handler revalidates it to point to the end of the
	 * inserted text.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in the buffer
	 * text:
	 *  UTF-8 format text to insert
	 * len:
	 *  length of text in bytes, or -1
	 */
	public void insert(TextIter iter, char[] text)
	{
		// void gtk_text_buffer_insert (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len);
		gtk_text_buffer_insert(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), text.length);
	}
	
	/**
	 * Simply calls gtk_text_buffer_insert(), using the current
	 * cursor position as the insertion point.
	 * buffer:
	 *  a GtkTextBuffer
	 * text:
	 *  some text in UTF-8 format
	 * len:
	 *  length of text, in bytes
	 */
	public void insertAtCursor(char[] text)
	{
		// void gtk_text_buffer_insert_at_cursor  (GtkTextBuffer *buffer,  const gchar *text,  gint len);
		gtk_text_buffer_insert_at_cursor(gtkTextBuffer, Str.toStringz(text), text.length);
	}
	
	/**
	 * Like gtk_text_buffer_insert(), but the insertion will not occur if
	 * iter is at a non-editable location in the buffer. Usually you
	 * want to prevent insertions at ineditable locations if the insertion
	 * results from a user action (is interactive).
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in buffer
	 * text:
	 *  some UTF-8 text
	 * len:
	 *  length of text in bytes, or -1
	 * default_editable:
	 *  default editability of buffer
	 * Returns:
	 *  whether text was actually inserted
	 */
	public int insertInteractive(TextIter iter, char[] text, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), text.length, defaultEditable);
	}
	
	/**
	 * Calls gtk_text_buffer_insert_interactive() at the cursor
	 * position.
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * buffer:
	 *  a GtkTextBuffer
	 * text:
	 *  text in UTF-8 format
	 * len:
	 *  length of text in bytes, or -1
	 * default_editable:
	 *  default editability of buffer
	 * Returns:
	 *  whether text was actually inserted
	 */
	public int insertInteractiveAtCursor(char[] text, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive_at_cursor  (GtkTextBuffer *buffer,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive_at_cursor(gtkTextBuffer, Str.toStringz(text), text.length, defaultEditable);
	}
	
	/**
	 * Inserts text into buffer at iter, applying the list of tags to
	 * the newly-inserted text. The last tag specified must be NULL to
	 * terminate the list. Equivalent to calling gtk_text_buffer_insert(),
	 * then gtk_text_buffer_apply_tag() on the inserted text;
	 * gtk_text_buffer_insert_with_tags() is just a convenience function.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  an iterator in buffer
	 * text:
	 *  UTF-8 text
	 * len:
	 *  length of text, or -1
	 * first_tag:
	 *  first tag to apply to text
	 * ...:
	 *  NULL-terminated list of tags to apply
	 */
	public void insertWithTags(TextIter iter, char[] text, ... )
	{
		for (int i = 0; (i<_arguments.length) && (_arguments[i] == typeid(TextTag)); i++)
		{
			TextTag tag = va_arg!(TextTag)(_argptr);
			// void gtk_text_buffer_insert_with_tags  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len,  GtkTextTag *first_tag,  ...);
			gtk_text_buffer_insert_with_tags(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), text.length, (tag is null) ? null : tag.getTextTagStruct(), null);
		}
	}
	
	/**
	 * Same as gtk_text_buffer_insert_with_tags(), but allows you
	 * to pass in tag names instead of tag objects.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  position in buffer
	 * text:
	 *  UTF-8 text
	 * len:
	 *  length of text, or -1
	 * first_tag_name:
	 *  name of a tag to apply to text
	 * ...:
	 *  more tag names
	 */
	public void insertWithTagsByName(TextIter iter, char[] text, ... )
	{
		for (int i = 0; (i<_arguments.length) && (_arguments[i] == typeid(char[])); i++)
		{
			char[] tagName = va_arg!(char[])(_argptr);
			// void gtk_text_buffer_insert_with_tags_by_name  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len,  const gchar *first_tag_name,  ...);
			gtk_text_buffer_insert_with_tags_by_name(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), text.length, Str.toStringz(tagName), null);
		}
	}
	
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 */
	TextTag createTag(char[] tagName, char[] propertyName, int propertyValue,
	char[] propertyName1, char[] propertyValue1)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer,
		Str.toStringz(tagName),
		Str.toStringz(propertyName),propertyValue,
		Str.toStringz(propertyName1),
		Str.toStringz(propertyValue1),
		null)
		);
		
	}
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 */
	TextTag createTag(char[] tagName, char[] propertyName, int propertyValue)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer,
		Str.toStringz(tagName),
		Str.toStringz(propertyName),propertyValue,null)
		);
		
	}
	
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 */
	TextTag createTag(char[] tagName, char[] propertyName, double propertyValue)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), Str.toStringz(propertyName),propertyValue,null)
		);
		
	}
	
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 * @param propertyName2
	 * @param propertyValue2
	 */
	TextTag createTag(char[] tagName, char[] propertyName, int propertyValue, char[] propertyName2, int propertyValue2)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), Str.toStringz(propertyName), propertyValue, Str.toStringz(propertyName2), propertyValue2, null)
		);
	}
	
	TextTag createTag(char[] tagName, char[] propertyName, int propertyValue, char[] propertyName2, int propertyValue2, char[] propertyName3, int propertyValue3, char[] propertyName4, int propertyValue4, char[] propertyName5, int propertyValue5)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), Str.toStringz(propertyName), propertyValue, Str.toStringz(propertyName2), propertyValue2, Str.toStringz(propertyName3), propertyValue3, Str.toStringz(propertyName4), propertyValue4, Str.toStringz(propertyName5), propertyValue5, null)
		);
	}
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 */
	TextTag createTag(char[] tagName, char[] propertyName, char[] propertyValue)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), Str.toStringz(propertyName),Str.toStringz(propertyValue),null)
		);
		
	}
	
	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 * @return
	 */
	TextTag createTag(char[] tagName, char[] propertyName, Bitmap propertyValue)
	{
		return new TextTag(
		gtk_text_buffer_create_tag(gtkTextBuffer, Str.toStringz(tagName), Str.toStringz(propertyName),propertyValue.getBitmapStruct(),null)
		);
		
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(TextTag, TextIter, TextIter, TextBuffer)[] onApplyTagListeners;
	void addOnApplyTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg)
	{
		if ( !("apply-tag" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"apply-tag",
			cast(GCallback)&callBackApplyTag,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["apply-tag"] = 1;
		}
		onApplyTagListeners ~= dlg;
	}
	extern(C) static void callBackApplyTag(GtkTextBuffer* textbufferStruct, GtkTextTag* arg1, GtkTextIter* arg2, GtkTextIter* arg3, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg ; textBuffer.onApplyTagListeners )
		{
			dlg(new TextTag(arg1), new TextIter(arg2), new TextIter(arg3), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextBuffer)[] onBeginUserActionListeners;
	void addOnBeginUserAction(void delegate(TextBuffer) dlg)
	{
		if ( !("begin-user-action" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"begin-user-action",
			cast(GCallback)&callBackBeginUserAction,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["begin-user-action"] = 1;
		}
		onBeginUserActionListeners ~= dlg;
	}
	extern(C) static void callBackBeginUserAction(GtkTextBuffer* textbufferStruct, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextBuffer) dlg ; textBuffer.onBeginUserActionListeners )
		{
			dlg(textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextBuffer)[] onChangedListeners;
	void addOnChanged(void delegate(TextBuffer) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkTextBuffer* textbufferStruct, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextBuffer) dlg ; textBuffer.onChangedListeners )
		{
			dlg(textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, TextIter, TextBuffer)[] onDeleteRangeListeners;
	void addOnDeleteRange(void delegate(TextIter, TextIter, TextBuffer) dlg)
	{
		if ( !("delete-range" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-range",
			cast(GCallback)&callBackDeleteRange,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["delete-range"] = 1;
		}
		onDeleteRangeListeners ~= dlg;
	}
	extern(C) static void callBackDeleteRange(GtkTextBuffer* textbufferStruct, GtkTextIter* arg1, GtkTextIter* arg2, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextIter, TextIter, TextBuffer) dlg ; textBuffer.onDeleteRangeListeners )
		{
			dlg(new TextIter(arg1), new TextIter(arg2), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextBuffer)[] onEndUserActionListeners;
	void addOnEndUserAction(void delegate(TextBuffer) dlg)
	{
		if ( !("end-user-action" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"end-user-action",
			cast(GCallback)&callBackEndUserAction,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["end-user-action"] = 1;
		}
		onEndUserActionListeners ~= dlg;
	}
	extern(C) static void callBackEndUserAction(GtkTextBuffer* textbufferStruct, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextBuffer) dlg ; textBuffer.onEndUserActionListeners )
		{
			dlg(textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, TextChildAnchor, TextBuffer)[] onInsertChildAnchorListeners;
	void addOnInsertChildAnchor(void delegate(TextIter, TextChildAnchor, TextBuffer) dlg)
	{
		if ( !("insert-child-anchor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-child-anchor",
			cast(GCallback)&callBackInsertChildAnchor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["insert-child-anchor"] = 1;
		}
		onInsertChildAnchorListeners ~= dlg;
	}
	extern(C) static void callBackInsertChildAnchor(GtkTextBuffer* textbufferStruct, GtkTextIter* arg1, GtkTextChildAnchor* arg2, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextIter, TextChildAnchor, TextBuffer) dlg ; textBuffer.onInsertChildAnchorListeners )
		{
			dlg(new TextIter(arg1), new TextChildAnchor(arg2), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, Pixbuf, TextBuffer)[] onInsertPixbufListeners;
	void addOnInsertPixbuf(void delegate(TextIter, Pixbuf, TextBuffer) dlg)
	{
		if ( !("insert-pixbuf" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-pixbuf",
			cast(GCallback)&callBackInsertPixbuf,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["insert-pixbuf"] = 1;
		}
		onInsertPixbufListeners ~= dlg;
	}
	extern(C) static void callBackInsertPixbuf(GtkTextBuffer* textbufferStruct, GtkTextIter* arg1, GdkPixbuf* arg2, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextIter, Pixbuf, TextBuffer) dlg ; textBuffer.onInsertPixbufListeners )
		{
			dlg(new TextIter(arg1), new Pixbuf(arg2), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, char[], gint, TextBuffer)[] onInsertTextListeners;
	void addOnInsertText(void delegate(TextIter, char[], gint, TextBuffer) dlg)
	{
		if ( !("insert-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"insert-text",
			cast(GCallback)&callBackInsertText,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["insert-text"] = 1;
		}
		onInsertTextListeners ~= dlg;
	}
	extern(C) static void callBackInsertText(GtkTextBuffer* textbufferStruct, GtkTextIter* arg1, gchar* arg2, gint arg3, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextIter, char[], gint, TextBuffer) dlg ; textBuffer.onInsertTextListeners )
		{
			dlg(new TextIter(arg1), Str.toString(arg2), arg3, textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextMark, TextBuffer)[] onMarkDeletedListeners;
	void addOnMarkDeleted(void delegate(TextMark, TextBuffer) dlg)
	{
		if ( !("mark-deleted" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mark-deleted",
			cast(GCallback)&callBackMarkDeleted,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["mark-deleted"] = 1;
		}
		onMarkDeletedListeners ~= dlg;
	}
	extern(C) static void callBackMarkDeleted(GtkTextBuffer* textbufferStruct, GtkTextMark* arg1, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextMark, TextBuffer) dlg ; textBuffer.onMarkDeletedListeners )
		{
			dlg(new TextMark(arg1), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextIter, TextMark, TextBuffer)[] onMarkSetListeners;
	void addOnMarkSet(void delegate(TextIter, TextMark, TextBuffer) dlg)
	{
		if ( !("mark-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mark-set",
			cast(GCallback)&callBackMarkSet,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["mark-set"] = 1;
		}
		onMarkSetListeners ~= dlg;
	}
	extern(C) static void callBackMarkSet(GtkTextBuffer* textbufferStruct, GtkTextIter* arg1, GtkTextMark* arg2, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextIter, TextMark, TextBuffer) dlg ; textBuffer.onMarkSetListeners )
		{
			dlg(new TextIter(arg1), new TextMark(arg2), textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextBuffer)[] onModifiedChangedListeners;
	void addOnModifiedChanged(void delegate(TextBuffer) dlg)
	{
		if ( !("modified-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"modified-changed",
			cast(GCallback)&callBackModifiedChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["modified-changed"] = 1;
		}
		onModifiedChangedListeners ~= dlg;
	}
	extern(C) static void callBackModifiedChanged(GtkTextBuffer* textbufferStruct, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextBuffer) dlg ; textBuffer.onModifiedChangedListeners )
		{
			dlg(textBuffer);
		}
		
		return consumed;
	}
	
	void delegate(TextTag, TextIter, TextIter, TextBuffer)[] onRemoveTagListeners;
	void addOnRemoveTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg)
	{
		if ( !("remove-tag" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"remove-tag",
			cast(GCallback)&callBackRemoveTag,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["remove-tag"] = 1;
		}
		onRemoveTagListeners ~= dlg;
	}
	extern(C) static void callBackRemoveTag(GtkTextBuffer* textbufferStruct, GtkTextTag* arg1, GtkTextIter* arg2, GtkTextIter* arg3, TextBuffer textBuffer)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg ; textBuffer.onRemoveTagListeners )
		{
			dlg(new TextTag(arg1), new TextIter(arg2), new TextIter(arg3), textBuffer);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new text buffer.
	 * table:
	 *  a tag table, or NULL to create a new one
	 * Returns:
	 *  a new text buffer
	 */
	public this (TextTagTable table)
	{
		// GtkTextBuffer* gtk_text_buffer_new (GtkTextTagTable *table);
		this(cast(GtkTextBuffer*)gtk_text_buffer_new((table is null) ? null : table.getTextTagTableStruct()) );
	}
	
	/**
	 * Obtains the number of lines in the buffer. This value is cached, so
	 * the function is very fast.
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  number of lines in the buffer
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
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  number of characters in the buffer
	 */
	public int getCharCount()
	{
		// gint gtk_text_buffer_get_char_count (GtkTextBuffer *buffer);
		return gtk_text_buffer_get_char_count(gtkTextBuffer);
	}
	
	/**
	 * Get the GtkTextTagTable associated with this buffer.
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  the buffer's tag table
	 */
	public TextTagTable getTagTable()
	{
		// GtkTextTagTable* gtk_text_buffer_get_tag_table  (GtkTextBuffer *buffer);
		return new TextTagTable( gtk_text_buffer_get_tag_table(gtkTextBuffer) );
	}
	
	/**
	 * Inserts len bytes of text at position iter. If len is -1,
	 * text must be nul-terminated and will be inserted in its
	 * entirety. Emits the "insert_text" signal; insertion actually occurs
	 * in the default handler for the signal. iter is invalidated when
	 * insertion occurs (because the buffer contents change), but the
	 * default signal handler revalidates it to point to the end of the
	 * inserted text.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in the buffer
	 * text:
	 *  UTF-8 format text to insert
	 * len:
	 *  length of text in bytes, or -1
	 */
	public void insert(TextIter iter, char[] text, int len)
	{
		// void gtk_text_buffer_insert (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len);
		gtk_text_buffer_insert(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), len);
	}
	
	/**
	 * Simply calls gtk_text_buffer_insert(), using the current
	 * cursor position as the insertion point.
	 * buffer:
	 *  a GtkTextBuffer
	 * text:
	 *  some text in UTF-8 format
	 * len:
	 *  length of text, in bytes
	 */
	public void insertAtCursor(char[] text, int len)
	{
		// void gtk_text_buffer_insert_at_cursor  (GtkTextBuffer *buffer,  const gchar *text,  gint len);
		gtk_text_buffer_insert_at_cursor(gtkTextBuffer, Str.toStringz(text), len);
	}
	
	/**
	 * Like gtk_text_buffer_insert(), but the insertion will not occur if
	 * iter is at a non-editable location in the buffer. Usually you
	 * want to prevent insertions at ineditable locations if the insertion
	 * results from a user action (is interactive).
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in buffer
	 * text:
	 *  some UTF-8 text
	 * len:
	 *  length of text in bytes, or -1
	 * default_editable:
	 *  default editability of buffer
	 * Returns:
	 *  whether text was actually inserted
	 */
	public int insertInteractive(TextIter iter, char[] text, int len, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), len, defaultEditable);
	}
	
	/**
	 * Calls gtk_text_buffer_insert_interactive() at the cursor
	 * position.
	 * default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 * buffer:
	 *  a GtkTextBuffer
	 * text:
	 *  text in UTF-8 format
	 * len:
	 *  length of text in bytes, or -1
	 * default_editable:
	 *  default editability of buffer
	 * Returns:
	 *  whether text was actually inserted
	 */
	public int insertInteractiveAtCursor(char[] text, int len, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_interactive_at_cursor  (GtkTextBuffer *buffer,  const gchar *text,  gint len,  gboolean default_editable);
		return gtk_text_buffer_insert_interactive_at_cursor(gtkTextBuffer, Str.toStringz(text), len, defaultEditable);
	}
	
	/**
	 * Copies text, tags, and pixbufs between start and end (the order
	 * of start and end doesn't matter) and inserts the copy at iter.
	 * Used instead of simply getting/inserting text because it preserves
	 * images and tags. If start and end are in a different buffer from
	 * buffer, the two buffers must share the same tag table.
	 * Implemented via emissions of the insert_text and apply_tag signals,
	 * so expect those.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in buffer
	 * start:
	 *  a position in a GtkTextBuffer
	 * end:
	 *  another position in the same buffer as start
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in buffer
	 * start:
	 *  a position in a GtkTextBuffer
	 * end:
	 *  another position in the same buffer as start
	 * default_editable:
	 *  default editability of the buffer
	 * Returns:
	 *  whether an insertion was possible at iter
	 */
	public int insertRangeInteractive(TextIter iter, TextIter start, TextIter end, int defaultEditable)
	{
		// gboolean gtk_text_buffer_insert_range_interactive  (GtkTextBuffer *buffer,  GtkTextIter *iter,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean default_editable);
		return gtk_text_buffer_insert_range_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), defaultEditable);
	}
	
	
	
	/**
	 * Deletes text between start and end. The order of start and end
	 * is not actually relevant; gtk_text_buffer_delete() will reorder
	 * them. This function actually emits the "delete_range" signal, and
	 * the default handler of that signal deletes the text. Because the
	 * buffer is modified, all outstanding iterators become invalid after
	 * calling this function; however, the start and end will be
	 * re-initialized to point to the location where text was deleted.
	 * buffer:
	 *  a GtkTextBuffer
	 * start:
	 *  a position in buffer
	 * end:
	 *  another position in buffer
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
	 * buffer:
	 *  a GtkTextBuffer
	 * start_iter:
	 *  start of range to delete
	 * end_iter:
	 *  end of range
	 * default_editable:
	 *  whether the buffer is editable by default
	 * Returns:
	 *  whether some text was actually deleted
	 */
	public int deleteInteractive(TextIter startIter, TextIter endIter, int defaultEditable)
	{
		// gboolean gtk_text_buffer_delete_interactive  (GtkTextBuffer *buffer,  GtkTextIter *start_iter,  GtkTextIter *end_iter,  gboolean default_editable);
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  a position in buffer
	 * interactive:
	 *  whether the deletion is caused by user interaction
	 * default_editable:
	 *  whether the buffer is editable by default
	 * Returns:
	 *  TRUE if the buffer was modified
	 * Since 2.6
	 */
	public int backspace(TextIter iter, int interactive, int defaultEditable)
	{
		// gboolean gtk_text_buffer_backspace (GtkTextBuffer *buffer,  GtkTextIter *iter,  gboolean interactive,  gboolean default_editable);
		return gtk_text_buffer_backspace(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), interactive, defaultEditable);
	}
	
	
	/**
	 * Returns the text in the range [start,end). Excludes undisplayed
	 * text (text marked with tags that set the invisibility attribute) if
	 * include_hidden_chars is FALSE. Does not include characters
	 * representing embedded images, so byte and character indexes into
	 * the returned string do not correspond to byte
	 * and character indexes into the buffer. Contrast with
	 * gtk_text_buffer_get_slice().
	 * buffer:
	 *  a GtkTextBuffer
	 * start:
	 *  start of a range
	 * end:
	 *  end of a range
	 * include_hidden_chars:
	 *  whether to include invisible text
	 * Returns:
	 *  an allocated UTF-8 string
	 */
	public char[] getText(TextIter start, TextIter end, int includeHiddenChars)
	{
		// gchar* gtk_text_buffer_get_text (GtkTextBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean include_hidden_chars);
		return Str.toString(gtk_text_buffer_get_text(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars) );
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
	 * buffer:
	 *  a GtkTextBuffer
	 * start:
	 *  start of a range
	 * end:
	 *  end of a range
	 * include_hidden_chars:
	 *  whether to include invisible text
	 * Returns:
	 *  an allocated UTF-8 string
	 */
	public char[] getSlice(TextIter start, TextIter end, int includeHiddenChars)
	{
		// gchar* gtk_text_buffer_get_slice (GtkTextBuffer *buffer,  const GtkTextIter *start,  const GtkTextIter *end,  gboolean include_hidden_chars);
		return Str.toString(gtk_text_buffer_get_slice(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars) );
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  location to insert the pixbuf
	 * pixbuf:
	 *  a GdkPixbuf
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
	 * not. e.g. see gtk_text_buffer_get_slice() and
	 * gtk_text_buffer_get_text(). Consider
	 * gtk_text_buffer_create_child_anchor() as a more convenient
	 * alternative to this function. The buffer will add a reference to
	 * the anchor, so you can unref it after insertion.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  location to insert the anchor
	 * anchor:
	 *  a GtkTextChildAnchor
	 */
	public void insertChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		// void gtk_text_buffer_insert_child_anchor  (GtkTextBuffer *buffer,  GtkTextIter *iter,  GtkTextChildAnchor *anchor);
		gtk_text_buffer_insert_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}
	
	/**
	 * This is a convenience function which simply creates a child anchor
	 * with gtk_text_child_anchor_new() and inserts it into the buffer
	 * with gtk_text_buffer_insert_child_anchor(). The new anchor is
	 * owned by the buffer; no reference count is returned to
	 * the caller of gtk_text_buffer_create_child_anchor().
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  location in the buffer
	 * Returns:
	 *  the created child anchor
	 */
	public TextChildAnchor createChildAnchor(TextIter iter)
	{
		// GtkTextChildAnchor* gtk_text_buffer_create_child_anchor  (GtkTextBuffer *buffer,  GtkTextIter *iter);
		return new TextChildAnchor( gtk_text_buffer_create_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct()) );
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
	 * The caller of this function does not own a reference
	 * to the returned GtkTextMark, so you can ignore the return value
	 * if you like. Marks are owned by the buffer and go away when the
	 * buffer does.
	 * Emits the "mark_set" signal as notification of the mark's initial
	 * placement.
	 * buffer:
	 *  a GtkTextBuffer
	 * mark_name:
	 *  name for mark, or NULL
	 * where:
	 *  location to place mark
	 * left_gravity:
	 *  whether the mark has left gravity
	 * Returns:
	 *  the new GtkTextMark object
	 */
	public TextMark createMark(char[] markName, TextIter where, int leftGravity)
	{
		// GtkTextMark* gtk_text_buffer_create_mark (GtkTextBuffer *buffer,  const gchar *mark_name,  const GtkTextIter *where,  gboolean left_gravity);
		return new TextMark( gtk_text_buffer_create_mark(gtkTextBuffer, Str.toStringz(markName), (where is null) ? null : where.getTextIterStruct(), leftGravity) );
	}
	
	/**
	 * Moves mark to the new location where. Emits the "mark_set" signal
	 * as notification of the move.
	 * buffer:
	 *  a GtkTextBuffer
	 * mark:
	 *  a GtkTextMark
	 * where:
	 *  new location for mark in buffer
	 */
	public void moveMark(TextMark mark, TextIter where)
	{
		// void gtk_text_buffer_move_mark (GtkTextBuffer *buffer,  GtkTextMark *mark,  const GtkTextIter *where);
		gtk_text_buffer_move_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct(), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Moves the mark named name (which must exist) to location where.
	 * See gtk_text_buffer_move_mark() for details.
	 * buffer:
	 *  a GtkTextBuffer
	 * name:
	 *  name of a mark
	 * where:
	 *  new location for mark
	 */
	public void moveMarkByName(char[] name, TextIter where)
	{
		// void gtk_text_buffer_move_mark_by_name  (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *where);
		gtk_text_buffer_move_mark_by_name(gtkTextBuffer, Str.toStringz(name), (where is null) ? null : where.getTextIterStruct());
	}
	
	/**
	 * Deletes mark, so that it's no longer located anywhere in the
	 * buffer. Removes the reference the buffer holds to the mark, so if
	 * you haven't called g_object_ref() on the mark, it will be freed. Even
	 * if the mark isn't freed, most operations on mark become
	 * invalid. There is no way to undelete a
	 * mark. gtk_text_mark_get_deleted() will return TRUE after this
	 * function has been called on a mark; gtk_text_mark_get_deleted()
	 * indicates that a mark no longer belongs to a buffer. The "mark_deleted"
	 * signal will be emitted as notification after the mark is deleted.
	 * buffer:
	 *  a GtkTextBuffer
	 * mark:
	 *  a GtkTextMark in buffer
	 */
	public void deleteMark(TextMark mark)
	{
		// void gtk_text_buffer_delete_mark (GtkTextBuffer *buffer,  GtkTextMark *mark);
		gtk_text_buffer_delete_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Deletes the mark named name; the mark must exist. See
	 * gtk_text_buffer_delete_mark() for details.
	 * buffer:
	 *  a GtkTextBuffer
	 * name:
	 *  name of a mark in buffer
	 */
	public void deleteMarkByName(char[] name)
	{
		// void gtk_text_buffer_delete_mark_by_name  (GtkTextBuffer *buffer,  const gchar *name);
		gtk_text_buffer_delete_mark_by_name(gtkTextBuffer, Str.toStringz(name));
	}
	
	/**
	 * Returns the mark named name in buffer buffer, or NULL if no such
	 * mark exists in the buffer.
	 * buffer:
	 *  a GtkTextBuffer
	 * name:
	 *  a mark name
	 * Returns:
	 *  a GtkTextMark, or NULL
	 */
	public TextMark getMark(char[] name)
	{
		// GtkTextMark* gtk_text_buffer_get_mark (GtkTextBuffer *buffer,  const gchar *name);
		return new TextMark( gtk_text_buffer_get_mark(gtkTextBuffer, Str.toStringz(name)) );
	}
	
	/**
	 * Returns the mark that represents the cursor (insertion point).
	 * Equivalent to calling gtk_text_buffer_get_mark() to get the mark
	 * named "insert", but very slightly more efficient, and involves less
	 * typing.
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  insertion point mark
	 */
	public TextMark getInsert()
	{
		// GtkTextMark* gtk_text_buffer_get_insert (GtkTextBuffer *buffer);
		return new TextMark( gtk_text_buffer_get_insert(gtkTextBuffer) );
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
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  selection bound mark
	 */
	public TextMark getSelectionBound()
	{
		// GtkTextMark* gtk_text_buffer_get_selection_bound  (GtkTextBuffer *buffer);
		return new TextMark( gtk_text_buffer_get_selection_bound(gtkTextBuffer) );
	}
	
	/**
	 * This function moves the "insert" and "selection_bound" marks
	 * simultaneously. If you move them to the same place in two steps
	 * with gtk_text_buffer_move_mark(), you will temporarily select a
	 * region in between their old and new locations, which can be pretty
	 * inefficient since the temporarily-selected region will force stuff
	 * to be recalculated. This function moves them as a unit, which can
	 * be optimized.
	 * buffer:
	 *  a GtkTextBuffer
	 * where:
	 *  where to put the cursor
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
	 * buffer:
	 *  a GtkTextBuffer
	 * ins:
	 *  where to put the "insert" mark
	 * bound:
	 *  where to put the "selection_bound" mark
	 * Since 2.4
	 */
	public void selectRange(TextIter ins, TextIter bound)
	{
		// void gtk_text_buffer_select_range (GtkTextBuffer *buffer,  const GtkTextIter *ins,  const GtkTextIter *bound);
		gtk_text_buffer_select_range(gtkTextBuffer, (ins is null) ? null : ins.getTextIterStruct(), (bound is null) ? null : bound.getTextIterStruct());
	}
	
	/**
	 * Emits the "apply_tag" signal on buffer. The default
	 * handler for the signal applies tag to the given range.
	 * start and end do not have to be in order.
	 * buffer:
	 *  a GtkTextBuffer
	 * tag:
	 *  a GtkTextTag
	 * start:
	 *  one bound of range to be tagged
	 * end:
	 *  other bound of range to be tagged
	 */
	public void applyTag(TextTag tag, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_apply_tag (GtkTextBuffer *buffer,  GtkTextTag *tag,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_apply_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Emits the "remove_tag" signal. The default handler for the signal
	 * removes all occurrences of tag from the given range. start and
	 * end don't have to be in order.
	 * buffer:
	 *  a GtkTextBuffer
	 * tag:
	 *  a GtkTextTag
	 * start:
	 *  one bound of range to be untagged
	 * end:
	 *  other bound of range to be untagged
	 */
	public void removeTag(TextTag tag, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_remove_tag (GtkTextBuffer *buffer,  GtkTextTag *tag,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_remove_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer's tag table to
	 * get a GtkTextTag, then calls gtk_text_buffer_apply_tag().
	 * buffer:
	 *  a GtkTextBuffer
	 * name:
	 *  name of a named GtkTextTag
	 * start:
	 *  one bound of range to be tagged
	 * end:
	 *  other bound of range to be tagged
	 */
	public void applyTagByName(char[] name, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_apply_tag_by_name  (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_apply_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer's tag table to
	 * get a GtkTextTag, then calls gtk_text_buffer_remove_tag().
	 * buffer:
	 *  a GtkTextBuffer
	 * name:
	 *  name of a GtkTextTag
	 * start:
	 *  one bound of range to be untagged
	 * end:
	 *  other bound of range to be untagged
	 */
	public void removeTagByName(char[] name, TextIter start, TextIter end)
	{
		// void gtk_text_buffer_remove_tag_by_name  (GtkTextBuffer *buffer,  const gchar *name,  const GtkTextIter *start,  const GtkTextIter *end);
		gtk_text_buffer_remove_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}
	
	/**
	 * Removes all tags in the range between start and end. Be careful
	 * with this function; it could remove tags added in code unrelated to
	 * the code you're currently writing. That is, using this function is
	 * probably a bad idea if you have two or more unrelated code sections
	 * that add tags.
	 * buffer:
	 *  a GtkTextBuffer
	 * start:
	 *  one bound of range to be untagged
	 * end:
	 *  other bound of range to be untagged
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 * line_number:
	 *  line number counting from 0
	 * char_offset:
	 *  char offset from start of line
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 * char_offset:
	 *  char offset from start of buffer, counting from 0, or -1
	 */
	public void getIterAtOffset(TextIter iter, int charOffset)
	{
		// void gtk_text_buffer_get_iter_at_offset  (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint char_offset);
		gtk_text_buffer_get_iter_at_offset(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), charOffset);
	}
	
	/**
	 * Initializes iter to the start of the given line.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 * line_number:
	 *  line number counting from 0
	 */
	public void getIterAtLine(TextIter iter, int lineNumber)
	{
		// void gtk_text_buffer_get_iter_at_line  (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint line_number);
		gtk_text_buffer_get_iter_at_line(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), lineNumber);
	}
	
	/**
	 * Obtains an iterator pointing to byte_index within the given line.
	 * byte_index must be the start of a UTF-8 character, and must not be
	 * beyond the end of the line. Note bytes, not
	 * characters; UTF-8 may encode one character as multiple bytes.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 * line_number:
	 *  line number counting from 0
	 * byte_index:
	 *  byte index from start of line
	 */
	public void getIterAtLineIndex(TextIter iter, int lineNumber, int byteIndex)
	{
		// void gtk_text_buffer_get_iter_at_line_index  (GtkTextBuffer *buffer,  GtkTextIter *iter,  gint line_number,  gint byte_index);
		gtk_text_buffer_get_iter_at_line_index(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), lineNumber, byteIndex);
	}
	
	/**
	 * Initializes iter with the current position of mark.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 * mark:
	 *  a GtkTextMark in buffer
	 */
	public void getIterAtMark(TextIter iter, TextMark mark)
	{
		// void gtk_text_buffer_get_iter_at_mark  (GtkTextBuffer *buffer,  GtkTextIter *iter,  GtkTextMark *mark);
		gtk_text_buffer_get_iter_at_mark(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (mark is null) ? null : mark.getTextMarkStruct());
	}
	
	/**
	 * Obtains the location of anchor within buffer.
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  an iterator to be initialized
	 * anchor:
	 *  a child anchor that appears in buffer
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
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
	 * buffer:
	 *  a GtkTextBuffer
	 * iter:
	 *  iterator to initialize
	 */
	public void getEndIter(TextIter iter)
	{
		// void gtk_text_buffer_get_end_iter (GtkTextBuffer *buffer,  GtkTextIter *iter);
		gtk_text_buffer_get_end_iter(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct());
	}
	
	/**
	 * Retrieves the first and last iterators in the buffer, i.e. the
	 * entire buffer lies within the range [start,end).
	 * buffer:
	 *  a GtkTextBuffer
	 * start:
	 *  iterator to initialize with first position in the buffer
	 * end:
	 *  iterator to initialize with the end iterator
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
	 * buffer:
	 *  a GtkTextBuffer
	 * Returns:
	 *  TRUE if the buffer has been modified
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
	 * bit flips, the buffer emits a "modified_changed" signal.
	 * buffer:
	 *  a GtkTextBuffer
	 * setting:
	 *  modification flag setting
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
	 * buffer:
	 *  a GtkTextBuffer
	 * interactive:
	 *  whether the deletion is caused by user interaction
	 * default_editable:
	 *  whether the buffer is editable by default
	 * Returns:
	 *  whether there was a non-empty selection to delete
	 */
	public int deleteSelection(int interactive, int defaultEditable)
	{
		// gboolean gtk_text_buffer_delete_selection  (GtkTextBuffer *buffer,  gboolean interactive,  gboolean default_editable);
		return gtk_text_buffer_delete_selection(gtkTextBuffer, interactive, defaultEditable);
	}
	
	/**
	 * Pastes the contents of a clipboard at the insertion point, or at override_location.
	 * (Note: pasting is asynchronous, that is, we'll ask for the paste data and
	 * return, and at some point later after the main loop runs, the paste
	 * data will be inserted.)
	 * buffer:
	 *  a GtkTextBuffer
	 * clipboard:
	 *  the GtkClipboard to paste from
	 * override_location:
	 *  location to insert pasted text, or NULL for at the cursor
	 * default_editable:
	 *  whether the buffer is editable by default
	 */
	public void pasteClipboard(Clipboard clipboard, TextIter overrideLocation, int defaultEditable)
	{
		// void gtk_text_buffer_paste_clipboard (GtkTextBuffer *buffer,  GtkClipboard *clipboard,  GtkTextIter *override_location,  gboolean default_editable);
		gtk_text_buffer_paste_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct(), (overrideLocation is null) ? null : overrideLocation.getTextIterStruct(), defaultEditable);
	}
	
	/**
	 * Copies the currently-selected text to a clipboard.
	 * buffer:
	 *  a GtkTextBuffer
	 * clipboard:
	 *  the GtkClipboard object to copy to.
	 */
	public void copyClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_copy_clipboard (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_copy_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	/**
	 * Copies the currently-selected text to a clipboard, then deletes
	 * said text if it's editable.
	 * buffer:
	 *  a GtkTextBuffer
	 * clipboard:
	 *  the GtkClipboard object to cut to.
	 * default_editable:
	 *  default editability of the buffer
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
	 * buffer:
	 *  a GtkTextBuffer a GtkTextBuffer
	 * start:
	 *  iterator to initialize with selection start
	 * end:
	 *  iterator to initialize with selection end
	 * Returns:
	 *  whether the selection has nonzero length
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
	 * a call to gtk_text_buffer_end_user_action(), and emits the "begin_user_action"
	 * and "end_user_action" signals only for the outermost pair of calls.
	 * This allows you to build user actions from other user actions.
	 * The "interactive" buffer mutation functions, such as
	 * gtk_text_buffer_insert_interactive(), automatically call begin/end
	 * user action around the buffer operations they perform, so there's
	 * no need to add extra calls if you user action consists solely of a
	 * single call to one of those functions.
	 * buffer:
	 *  a GtkTextBuffer
	 */
	public void beginUserAction()
	{
		// void gtk_text_buffer_begin_user_action  (GtkTextBuffer *buffer);
		gtk_text_buffer_begin_user_action(gtkTextBuffer);
	}
	
	/**
	 * Should be paired with a call to gtk_text_buffer_begin_user_action().
	 * See that function for a full explanation.
	 * buffer:
	 *  a GtkTextBuffer
	 */
	public void endUserAction()
	{
		// void gtk_text_buffer_end_user_action (GtkTextBuffer *buffer);
		gtk_text_buffer_end_user_action(gtkTextBuffer);
	}
	
	/**
	 * Adds clipboard to the list of clipboards in which the selection contents
	 * of buffer are available. In most cases, clipboard will be the GtkClipboard
	 * of type GDK_SELECTION_PRIMARY for a view of buffer.
	 * buffer:
	 *  a GtkTextBuffer
	 * clipboard:
	 *  a GtkClipboard
	 */
	public void addSelectionClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_add_selection_clipboard  (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_add_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	/**
	 * Removes a GtkClipboard added with gtk_text_buffer_add_selection_clipboard()
	 * buffer:
	 *  a GtkTextBuffer
	 * clipboard:
	 *  a GtkClipboard added to buffer by gtk_text_buffer_add_selection_clipboard().
	 * Property Details
	 * The "tag-table" property
	 *  "tag-table" GtkTextTagTable : Read / Write / Construct Only
	 * Text Tag Table.
	 */
	public void removeSelectionClipboard(Clipboard clipboard)
	{
		// void gtk_text_buffer_remove_selection_clipboard  (GtkTextBuffer *buffer,  GtkClipboard *clipboard);
		gtk_text_buffer_remove_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
