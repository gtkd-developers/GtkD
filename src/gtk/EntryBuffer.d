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


module gtk.EntryBuffer;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkEntryBuffer class contains the actual text displayed in a
 * #GtkEntry widget.
 * 
 * A single #GtkEntryBuffer object can be shared by multiple #GtkEntry
 * widgets which will then share the same text content, but not the cursor
 * position, visibility attributes, icon etc.
 * 
 * #GtkEntryBuffer may be derived from. Such a derived class might allow
 * text to be stored in an alternate location, such as non-pageable memory,
 * useful in the case of important passwords. Or a derived class could
 * integrate with an application’s concept of undo/redo.
 */
public class EntryBuffer : ObjectG
{
	/** the main Gtk struct */
	protected GtkEntryBuffer* gtkEntryBuffer;

	/** Get the main Gtk struct */
	public GtkEntryBuffer* getEntryBufferStruct()
	{
		return gtkEntryBuffer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEntryBuffer;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkEntryBuffer = cast(GtkEntryBuffer*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEntryBuffer* gtkEntryBuffer, bool ownedRef = false)
	{
		this.gtkEntryBuffer = gtkEntryBuffer;
		super(cast(GObject*)gtkEntryBuffer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_entry_buffer_get_type();
	}

	/**
	 * Create a new GtkEntryBuffer object.
	 *
	 * Optionally, specify initial text to set in the buffer.
	 *
	 * Params:
	 *     initialChars = initial buffer text, or %NULL
	 *     nInitialChars = number of characters in @initial_chars, or -1
	 *
	 * Return: A new GtkEntryBuffer object.
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string initialChars, int nInitialChars)
	{
		auto p = gtk_entry_buffer_new(Str.toStringz(initialChars), nInitialChars);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkEntryBuffer*) p, true);
	}

	/**
	 * Deletes a sequence of characters from the buffer. @n_chars characters are
	 * deleted starting at @position. If @n_chars is negative, then all characters
	 * until the end of the text are deleted.
	 *
	 * If @position or @n_chars are out of bounds, then they are coerced to sane
	 * values.
	 *
	 * Note that the positions are specified in characters, not bytes.
	 *
	 * Params:
	 *     position = position at which to delete text
	 *     nChars = number of characters to delete
	 *
	 * Return: The number of characters deleted.
	 *
	 * Since: 2.18
	 */
	public uint deleteText(uint position, int nChars)
	{
		return gtk_entry_buffer_delete_text(gtkEntryBuffer, position, nChars);
	}

	/**
	 * Used when subclassing #GtkEntryBuffer
	 *
	 * Params:
	 *     position = position at which text was deleted
	 *     nChars = number of characters deleted
	 *
	 * Since: 2.18
	 */
	public void emitDeletedText(uint position, uint nChars)
	{
		gtk_entry_buffer_emit_deleted_text(gtkEntryBuffer, position, nChars);
	}

	/**
	 * Used when subclassing #GtkEntryBuffer
	 *
	 * Params:
	 *     position = position at which text was inserted
	 *     chars = text that was inserted
	 *     nChars = number of characters inserted
	 *
	 * Since: 2.18
	 */
	public void emitInsertedText(uint position, string chars, uint nChars)
	{
		gtk_entry_buffer_emit_inserted_text(gtkEntryBuffer, position, Str.toStringz(chars), nChars);
	}

	/**
	 * Retrieves the length in bytes of the buffer.
	 * See gtk_entry_buffer_get_length().
	 *
	 * Return: The byte length of the buffer.
	 *
	 * Since: 2.18
	 */
	public size_t getBytes()
	{
		return gtk_entry_buffer_get_bytes(gtkEntryBuffer);
	}

	/**
	 * Retrieves the length in characters of the buffer.
	 *
	 * Return: The number of characters in the buffer.
	 *
	 * Since: 2.18
	 */
	public uint getLength()
	{
		return gtk_entry_buffer_get_length(gtkEntryBuffer);
	}

	/**
	 * Retrieves the maximum allowed length of the text in
	 * @buffer. See gtk_entry_buffer_set_max_length().
	 *
	 * Return: the maximum allowed number of characters
	 *     in #GtkEntryBuffer, or 0 if there is no maximum.
	 *
	 * Since: 2.18
	 */
	public int getMaxLength()
	{
		return gtk_entry_buffer_get_max_length(gtkEntryBuffer);
	}

	/**
	 * Retrieves the contents of the buffer.
	 *
	 * The memory pointer returned by this call will not change
	 * unless this object emits a signal, or is finalized.
	 *
	 * Return: a pointer to the contents of the widget as a
	 *     string. This string points to internally allocated
	 *     storage in the buffer and must not be freed, modified or
	 *     stored.
	 *
	 * Since: 2.18
	 */
	public string getText()
	{
		return Str.toString(gtk_entry_buffer_get_text(gtkEntryBuffer));
	}

	/**
	 * Inserts @n_chars characters of @chars into the contents of the
	 * buffer, at position @position.
	 *
	 * If @n_chars is negative, then characters from chars will be inserted
	 * until a null-terminator is found. If @position or @n_chars are out of
	 * bounds, or the maximum buffer text length is exceeded, then they are
	 * coerced to sane values.
	 *
	 * Note that the position and length are in characters, not in bytes.
	 *
	 * Params:
	 *     position = the position at which to insert text.
	 *     chars = the text to insert into the buffer.
	 *     nChars = the length of the text in characters, or -1
	 *
	 * Return: The number of characters actually inserted.
	 *
	 * Since: 2.18
	 */
	public uint insertText(uint position, string chars, int nChars)
	{
		return gtk_entry_buffer_insert_text(gtkEntryBuffer, position, Str.toStringz(chars), nChars);
	}

	/**
	 * Sets the maximum allowed length of the contents of the buffer. If
	 * the current contents are longer than the given length, then they
	 * will be truncated to fit.
	 *
	 * Params:
	 *     maxLength = the maximum length of the entry buffer, or 0 for no maximum.
	 *         (other than the maximum length of entries.) The value passed in will
	 *         be clamped to the range 0-65536.
	 *
	 * Since: 2.18
	 */
	public void setMaxLength(int maxLength)
	{
		gtk_entry_buffer_set_max_length(gtkEntryBuffer, maxLength);
	}

	/**
	 * Sets the text in the buffer.
	 *
	 * This is roughly equivalent to calling gtk_entry_buffer_delete_text()
	 * and gtk_entry_buffer_insert_text().
	 *
	 * Note that @n_chars is in characters, not in bytes.
	 *
	 * Params:
	 *     chars = the new text
	 *     nChars = the number of characters in @text, or -1
	 *
	 * Since: 2.18
	 */
	public void setText(string chars, int nChars)
	{
		gtk_entry_buffer_set_text(gtkEntryBuffer, Str.toStringz(chars), nChars);
	}

	protected class OnDeletedTextDelegateWrapper
	{
		void delegate(uint, uint, EntryBuffer) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(uint, uint, EntryBuffer) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeletedTextDelegateWrapper[] onDeletedTextListeners;

	/**
	 * This signal is emitted after text is deleted from the buffer.
	 *
	 * Params:
	 *     position = the position the text was deleted at.
	 *     nChars = The number of characters that were deleted.
	 *
	 * Since: 2.18
	 */
	gulong addOnDeletedText(void delegate(uint, uint, EntryBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeletedTextListeners ~= new OnDeletedTextDelegateWrapper(dlg, 0, connectFlags);
		onDeletedTextListeners[onDeletedTextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"deleted-text",
			cast(GCallback)&callBackDeletedText,
			cast(void*)onDeletedTextListeners[onDeletedTextListeners.length - 1],
			cast(GClosureNotify)&callBackDeletedTextDestroy,
			connectFlags);
		return onDeletedTextListeners[onDeletedTextListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeletedText(GtkEntryBuffer* entrybufferStruct, uint position, uint nChars,OnDeletedTextDelegateWrapper wrapper)
	{
		wrapper.dlg(position, nChars, wrapper.outer);
	}
	
	extern(C) static void callBackDeletedTextDestroy(OnDeletedTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeletedText(wrapper);
	}

	protected void internalRemoveOnDeletedText(OnDeletedTextDelegateWrapper source)
	{
		foreach(index, wrapper; onDeletedTextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeletedTextListeners[index] = null;
				onDeletedTextListeners = std.algorithm.remove(onDeletedTextListeners, index);
				break;
			}
		}
	}
	

	protected class OnInsertedTextDelegateWrapper
	{
		void delegate(uint, string, uint, EntryBuffer) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(uint, string, uint, EntryBuffer) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnInsertedTextDelegateWrapper[] onInsertedTextListeners;

	/**
	 * This signal is emitted after text is inserted into the buffer.
	 *
	 * Params:
	 *     position = the position the text was inserted at.
	 *     chars = The text that was inserted.
	 *     nChars = The number of characters that were inserted.
	 *
	 * Since: 2.18
	 */
	gulong addOnInsertedText(void delegate(uint, string, uint, EntryBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onInsertedTextListeners ~= new OnInsertedTextDelegateWrapper(dlg, 0, connectFlags);
		onInsertedTextListeners[onInsertedTextListeners.length - 1].handlerId = Signals.connectData(
			this,
			"inserted-text",
			cast(GCallback)&callBackInsertedText,
			cast(void*)onInsertedTextListeners[onInsertedTextListeners.length - 1],
			cast(GClosureNotify)&callBackInsertedTextDestroy,
			connectFlags);
		return onInsertedTextListeners[onInsertedTextListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackInsertedText(GtkEntryBuffer* entrybufferStruct, uint position, char* chars, uint nChars,OnInsertedTextDelegateWrapper wrapper)
	{
		wrapper.dlg(position, Str.toString(chars), nChars, wrapper.outer);
	}
	
	extern(C) static void callBackInsertedTextDestroy(OnInsertedTextDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnInsertedText(wrapper);
	}

	protected void internalRemoveOnInsertedText(OnInsertedTextDelegateWrapper source)
	{
		foreach(index, wrapper; onInsertedTextListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onInsertedTextListeners[index] = null;
				onInsertedTextListeners = std.algorithm.remove(onInsertedTextListeners, index);
				break;
			}
		}
	}
	
}
