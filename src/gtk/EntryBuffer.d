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
 * inFile  = GtkEntryBuffer.html
 * outPack = gtk
 * outFile = EntryBuffer
 * strct   = GtkEntryBuffer
 * realStrct=
 * ctorStrct=
 * clss    = EntryBuffer
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_entry_buffer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.EntryBuffer;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gobject.ObjectG;

/**
 * The GtkEntryBuffer class contains the actual text displayed in a
 * GtkEntry widget.
 *
 * A single GtkEntryBuffer object can be shared by multiple GtkEntry
 * widgets which will then share the same text content, but not the cursor
 * position, visibility attributes, icon etc.
 *
 * GtkEntryBuffer may be derived from. Such a derived class might allow
 * text to be stored in an alternate location, such as non-pageable memory,
 * useful in the case of important passwords. Or a derived class could
 * integrate with an application's concept of undo/redo.
 */
public class EntryBuffer : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkEntryBuffer* gtkEntryBuffer;
	
	
	public GtkEntryBuffer* getEntryBufferStruct()
	{
		return gtkEntryBuffer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntryBuffer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkEntryBuffer* gtkEntryBuffer)
	{
		super(cast(GObject*)gtkEntryBuffer);
		this.gtkEntryBuffer = gtkEntryBuffer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkEntryBuffer = cast(GtkEntryBuffer*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(guint, guint, EntryBuffer)[] onDeletedTextListeners;
	/**
	 * This signal is emitted after text is deleted from the buffer.
	 * Since 2.18
	 */
	void addOnDeletedText(void delegate(guint, guint, EntryBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("deleted-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"deleted-text",
			cast(GCallback)&callBackDeletedText,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["deleted-text"] = 1;
		}
		onDeletedTextListeners ~= dlg;
	}
	extern(C) static void callBackDeletedText(GtkEntryBuffer* bufferStruct, guint position, guint nChars, EntryBuffer _entryBuffer)
	{
		foreach ( void delegate(guint, guint, EntryBuffer) dlg ; _entryBuffer.onDeletedTextListeners )
		{
			dlg(position, nChars, _entryBuffer);
		}
	}
	
	void delegate(guint, string, guint, EntryBuffer)[] onInsertedTextListeners;
	/**
	 * This signal is emitted after text is inserted into the buffer.
	 * Since 2.18
	 */
	void addOnInsertedText(void delegate(guint, string, guint, EntryBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("inserted-text" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"inserted-text",
			cast(GCallback)&callBackInsertedText,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["inserted-text"] = 1;
		}
		onInsertedTextListeners ~= dlg;
	}
	extern(C) static void callBackInsertedText(GtkEntryBuffer* bufferStruct, guint position, gchar* chars, guint nChars, EntryBuffer _entryBuffer)
	{
		foreach ( void delegate(guint, string, guint, EntryBuffer) dlg ; _entryBuffer.onInsertedTextListeners )
		{
			dlg(position, Str.toString(chars), nChars, _entryBuffer);
		}
	}
	
	
	/**
	 * Create a new GtkEntryBuffer object.
	 * Optionally, specify initial text to set in the buffer.
	 * Since 2.18
	 * Params:
	 * initialChars = initial buffer text, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string initialChars)
	{
		// GtkEntryBuffer * gtk_entry_buffer_new (const gchar *initial_chars,  gint n_initial_chars);
		auto p = gtk_entry_buffer_new(cast(char*)initialChars.ptr, cast(int) initialChars.length);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_entry_buffer_new(cast(char*)initialChars.ptr, cast(int) initialChars.length)");
		}
		this(cast(GtkEntryBuffer*) p);
	}
	
	/**
	 * Retrieves the contents of the buffer.
	 * The memory pointer returned by this call will not change
	 * unless this object emits a signal, or is finalized.
	 * Since 2.18
	 * Returns: a pointer to the contents of the widget as a string. This string points to internally allocated storage in the buffer and must not be freed, modified or stored.
	 */
	public string getText()
	{
		// const gchar * gtk_entry_buffer_get_text (GtkEntryBuffer *buffer);
		return Str.toString(gtk_entry_buffer_get_text(gtkEntryBuffer));
	}
	
	/**
	 * Sets the text in the buffer.
	 * This is roughly equivalent to calling gtk_entry_buffer_delete_text()
	 * and gtk_entry_buffer_insert_text().
	 * Note that n_chars is in characters, not in bytes.
	 * Since 2.18
	 * Params:
	 * chars = the new text
	 */
	public void setText(string chars)
	{
		// void gtk_entry_buffer_set_text (GtkEntryBuffer *buffer,  const gchar *chars,  gint n_chars);
		gtk_entry_buffer_set_text(gtkEntryBuffer, cast(char*)chars.ptr, cast(int) chars.length);
	}
	
	/**
	 * Retrieves the length in bytes of the buffer.
	 * See gtk_entry_buffer_get_length().
	 * Since 2.18
	 * Returns: The byte length of the buffer.
	 */
	public gsize getBytes()
	{
		// gsize gtk_entry_buffer_get_bytes (GtkEntryBuffer *buffer);
		return gtk_entry_buffer_get_bytes(gtkEntryBuffer);
	}
	
	/**
	 * Retrieves the length in characters of the buffer.
	 * Since 2.18
	 * Returns: The number of characters in the buffer.
	 */
	public uint getLength()
	{
		// guint gtk_entry_buffer_get_length (GtkEntryBuffer *buffer);
		return gtk_entry_buffer_get_length(gtkEntryBuffer);
	}
	
	/**
	 * Retrieves the maximum allowed length of the text in
	 * buffer. See gtk_entry_buffer_set_max_length().
	 * Since 2.18
	 * Returns: the maximum allowed number of characters in GtkEntryBuffer, or 0 if there is no maximum.
	 */
	public int getMaxLength()
	{
		// gint gtk_entry_buffer_get_max_length (GtkEntryBuffer *buffer);
		return gtk_entry_buffer_get_max_length(gtkEntryBuffer);
	}
	
	/**
	 * Sets the maximum allowed length of the contents of the buffer. If
	 * the current contents are longer than the given length, then they
	 * will be truncated to fit.
	 * Since 2.18
	 * Params:
	 * maxLength = the maximum length of the entry buffer, or 0 for no maximum.
	 * (other than the maximum length of entries.) The value passed in will
	 * be clamped to the range 0-65536.
	 */
	public void setMaxLength(int maxLength)
	{
		// void gtk_entry_buffer_set_max_length (GtkEntryBuffer *buffer,  gint max_length);
		gtk_entry_buffer_set_max_length(gtkEntryBuffer, maxLength);
	}
	
	/**
	 * Inserts n_chars characters of chars into the contents of the
	 * buffer, at position position.
	 * If n_chars is negative, then characters from chars will be inserted
	 * until a null-terminator is found. If position or n_chars are out of
	 * bounds, or the maximum buffer text length is exceeded, then they are
	 * coerced to sane values.
	 * Note that the position and length are in characters, not in bytes.
	 * Since 2.18
	 * Params:
	 * position = the position at which to insert text.
	 * chars = the text to insert into the buffer.
	 * Returns: The number of characters actually inserted.
	 */
	public uint insertText(uint position, string chars)
	{
		// guint gtk_entry_buffer_insert_text (GtkEntryBuffer *buffer,  guint position,  const gchar *chars,  gint n_chars);
		return gtk_entry_buffer_insert_text(gtkEntryBuffer, position, cast(char*)chars.ptr, cast(int) chars.length);
	}
	
	/**
	 * Deletes a sequence of characters from the buffer. n_chars characters are
	 * deleted starting at position. If n_chars is negative, then all characters
	 * until the end of the text are deleted.
	 * If position or n_chars are out of bounds, then they are coerced to sane
	 * values.
	 * Note that the positions are specified in characters, not bytes.
	 * Since 2.18
	 * Params:
	 * position = position at which to delete text
	 * nChars = number of characters to delete
	 * Returns: The number of characters deleted.
	 */
	public uint deleteText(uint position, int nChars)
	{
		// guint gtk_entry_buffer_delete_text (GtkEntryBuffer *buffer,  guint position,  gint n_chars);
		return gtk_entry_buffer_delete_text(gtkEntryBuffer, position, nChars);
	}
	
	/**
	 * Used when subclassing GtkEntryBuffer
	 * Since 2.18
	 * Params:
	 * position = position at which text was deleted
	 * nChars = number of characters deleted
	 */
	public void emitDeletedText(uint position, uint nChars)
	{
		// void gtk_entry_buffer_emit_deleted_text (GtkEntryBuffer *buffer,  guint position,  guint n_chars);
		gtk_entry_buffer_emit_deleted_text(gtkEntryBuffer, position, nChars);
	}
	
	/**
	 * Used when subclassing GtkEntryBuffer
	 * Since 2.18
	 * Params:
	 * position = position at which text was inserted
	 * chars = text that was inserted
	 */
	public void emitInsertedText(uint position, string chars)
	{
		// void gtk_entry_buffer_emit_inserted_text (GtkEntryBuffer *buffer,  guint position,  const gchar *chars,  guint n_chars);
		gtk_entry_buffer_emit_inserted_text(gtkEntryBuffer, position, cast(char*)chars.ptr, cast(int) chars.length);
	}
}
