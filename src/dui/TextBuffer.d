/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.TextBuffer;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.ListG;
private import dui.SListG;
private import dui.TextChildAnchor;
private import dui.TextTag;
private import dui.TextTagTable;
private import dui.TextIter;
private import dui.TextMark;
private import dui.Clipboard;
private import ddi.Pixbuf;
private import ddi.Bitmap;

public:

alias int GtkWrapMode;
alias int GtkJustification;

private:

/* table is NULL to create a new one */
extern (C)
{
	GType gtk_text_buffer_get_type();
	extern (C) GtkTextBuffer * gtk_text_buffer_new(GtkTextTagTable * table);
	extern (C) gint gtk_text_buffer_get_line_count(GtkTextBuffer * buffer);
	extern (C) gint gtk_text_buffer_get_char_count(GtkTextBuffer * buffer);
	
	extern (C) GtkTextTagTable * gtk_text_buffer_get_tag_table(GtkTextBuffer * buffer);

	/* Delete whole buffer, then insert */
	void gtk_text_buffer_set_text(GtkTextBuffer * buffer, gchar * text, gint len);

	/* Insert into the buffer */
	extern (C) void gtk_text_buffer_insert(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len);
	extern (C) void gtk_text_buffer_insert_at_cursor(GtkTextBuffer * buffer, gchar * text, gint len);
	
	extern (C) gboolean gtk_text_buffer_insert_interactive(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, gboolean default_editable);
	extern (C) gboolean gtk_text_buffer_insert_interactive_at_cursor(GtkTextBuffer * buffer, gchar * text, gint len, gboolean default_editable);
	
	extern (C) void gtk_text_buffer_insert_range(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextIter * start, GtkTextIter * end);
	extern (C) gboolean gtk_text_buffer_insert_range_interactive(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextIter * start, GtkTextIter * end, gboolean default_editable);
	
	extern (C) void gtk_text_buffer_insert_with_tags(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, GtkTextTag * first_tag,...);
	
	extern (C) void gtk_text_buffer_insert_with_tags_by_name(GtkTextBuffer * buffer, GtkTextIter * iter, gchar * text, gint len, gchar * first_tag_name,...);

	/* Delete from the buffer */
	void gtk_text_buffer_delete(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end);
	gboolean gtk_text_buffer_delete_interactive(GtkTextBuffer * buffer, GtkTextIter * start_iter, GtkTextIter * end_iter, gboolean default_editable);

	/* Obtain strings from the buffer */
	extern (C) gchar * gtk_text_buffer_get_text(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end, gboolean include_hidden_chars);
	
	extern (C) gchar * gtk_text_buffer_get_slice(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end, gboolean include_hidden_chars);

	/* Insert a pixbuf */
	void gtk_text_buffer_insert_pixbuf(GtkTextBuffer * buffer, GtkTextIter * iter, GdkPixbuf * pixbuf);

	/* Insert a child anchor */
	void gtk_text_buffer_insert_child_anchor(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextChildAnchor * anchor);

	/* Convenience, create and insert a child anchor */
	GtkTextChildAnchor * gtk_text_buffer_create_child_anchor(GtkTextBuffer * buffer, GtkTextIter * iter);

	/* Mark manipulation */
	extern (C) GtkTextMark * gtk_text_buffer_create_mark(GtkTextBuffer * buffer, gchar * mark_name, GtkTextIter * where, gboolean left_gravity);
	extern (C) void gtk_text_buffer_move_mark(GtkTextBuffer * buffer, GtkTextMark * mark, GtkTextIter * where);
	extern (C) void gtk_text_buffer_delete_mark(GtkTextBuffer * buffer, GtkTextMark * mark);
	extern (C) GtkTextMark * gtk_text_buffer_get_mark(GtkTextBuffer * buffer, gchar * name);
	
	extern (C) void gtk_text_buffer_move_mark_by_name(GtkTextBuffer * buffer, gchar * name, GtkTextIter * where);
	extern (C) void gtk_text_buffer_delete_mark_by_name(GtkTextBuffer * buffer, gchar * name);
	
	extern (C) GtkTextMark * gtk_text_buffer_get_insert(GtkTextBuffer * buffer);
	extern (C) GtkTextMark * gtk_text_buffer_get_selection_bound(GtkTextBuffer * buffer);

	/* efficiently move insert and selection_bound to same location */
	void gtk_text_buffer_place_cursor(GtkTextBuffer * buffer, GtkTextIter * where);

	/* Tag manipulation */
	extern (C) void gtk_text_buffer_apply_tag(GtkTextBuffer * buffer, GtkTextTag * tag, GtkTextIter * start, GtkTextIter * end);
	extern (C) void gtk_text_buffer_remove_tag(GtkTextBuffer * buffer, GtkTextTag * tag, GtkTextIter * start, GtkTextIter * end);
	extern (C) void gtk_text_buffer_apply_tag_by_name(GtkTextBuffer * buffer, gchar * name, GtkTextIter * start, GtkTextIter * end);
	extern (C) void gtk_text_buffer_remove_tag_by_name(GtkTextBuffer * buffer, gchar * name, GtkTextIter * start, GtkTextIter * end);
	extern (C) void gtk_text_buffer_remove_all_tags(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end);

	/* You can either ignore the return value, or use it to
	 * set the attributes of the tag. tag_name can be NULL
	 */
	GtkTextTag * gtk_text_buffer_create_tag(GtkTextBuffer * buffer, gchar * tag_name, gchar * first_property_name,...);

	/* Obtain iterators pointed at various places, then you can move the
	 * iterator around using the GtkTextIter operators
	 */
	void gtk_text_buffer_get_iter_at_line_offset(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number, gint char_offset);
	void gtk_text_buffer_get_iter_at_line_index(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number, gint byte_index);
	void gtk_text_buffer_get_iter_at_offset(GtkTextBuffer * buffer, GtkTextIter * iter, gint char_offset);
	void gtk_text_buffer_get_iter_at_line(GtkTextBuffer * buffer, GtkTextIter * iter, gint line_number);
	void gtk_text_buffer_get_start_iter(GtkTextBuffer * buffer, GtkTextIter * iter);
	void gtk_text_buffer_get_end_iter(GtkTextBuffer * buffer, GtkTextIter * iter);
	void gtk_text_buffer_get_bounds(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end);
	void gtk_text_buffer_get_iter_at_mark(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextMark * mark);
	
	void gtk_text_buffer_get_iter_at_child_anchor(GtkTextBuffer * buffer, GtkTextIter * iter, GtkTextChildAnchor * anchor);
	
	/* There's no get_first_iter because you just get the iter for
	   line or char 0 */
	
	/* Used to keep track of whether the buffer needs saving; anytime the
	   buffer contents change, the modified flag is turned on. Whenever
	   you save, turn it off. Tags and marks do not affect the modified
	   flag, but if you would like them to you can connect a handler to
	   the tag/mark signals and call set_modified in your handler */
	
	gboolean gtk_text_buffer_get_modified(GtkTextBuffer * buffer);
	void gtk_text_buffer_set_modified(GtkTextBuffer * buffer, gboolean setting);
	
	void gtk_text_buffer_add_selection_clipboard(GtkTextBuffer * buffer, GtkClipboard * clipboard);
	void gtk_text_buffer_remove_selection_clipboard(GtkTextBuffer * buffer, GtkClipboard * clipboard);
	
	void gtk_text_buffer_cut_clipboard(GtkTextBuffer * buffer, GtkClipboard * clipboard, gboolean default_editable);
	void gtk_text_buffer_copy_clipboard(GtkTextBuffer * buffer, GtkClipboard * clipboard);
	void gtk_text_buffer_paste_clipboard(GtkTextBuffer * buffer, GtkClipboard * clipboard, GtkTextIter * override_location, gboolean default_editable);
	
	gboolean gtk_text_buffer_get_selection_bounds(GtkTextBuffer * buffer, GtkTextIter * start, GtkTextIter * end);
	gboolean gtk_text_buffer_delete_selection(GtkTextBuffer * buffer, gboolean interactive, gboolean default_editable);
	
	/* Called to specify atomic user actions, used to implement undo */
	void gtk_text_buffer_begin_user_action(GtkTextBuffer * buffer);
	void gtk_text_buffer_end_user_action(GtkTextBuffer * buffer);
}

/**
 * A text buffer to be display and altered in a text view
 * @see TextView
 */
public:
class TextBuffer : ObjectG
{

	private import event.EventHandler;
	private import dool.String;

	debug(status)
	{
		int complete(){return 20;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A text buffer to be display and altered in a text view";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_buffer_get_type();
	}

	protected:

	alias SignalHandler!(TextBuffer) OnChanged;
	alias TextInsertHandler!(TextBuffer, TextIter, String, int) OnInsert;
	alias TextDeleteHandler!(TextBuffer, TextIter, TextIter) OnDelete;
	
	OnChanged onChanged;
	OnInsert onInsert;
	OnDelete onDelete;

	public void addOnChanged(void delegate() dlg)
	{
		if ( onChanged === null )
		{
			onChanged = new OnChanged(this, new String("changed"));
		}
		onChanged += dlg;
	}
	
	public void addOnInsert(void delegate(TextIter, String, int) dlg)
	{
		if ( onInsert === null )
		{
			onInsert = new OnInsert(this, new String("insert-text"));
		}
		onInsert += dlg;
	}

	public static void onInsertCallback()
	{
		
	}
	
	/**
	 * Creates a new text buffer from a gdkTextBuffer
	 * @param gObject the gdkTextBuffer
	 */
	package this(GObject * gObject)
	{
		super(gObject);
	}
	
	/**
	 * Creates a new text buffer from a gdkTextBuffer
	 * @param gtkTextBuffer the gdkTextBuffer
	 */
	public this(GtkTextBuffer * gtkTextBuffer)
	{
		this(cast(GObject*)gtkTextBuffer);
	}

	public:
	/**
	 * Sets the text for this text view
	 * @param text
	 */
	void setText(char[] text)
	{
		setText(new String(text));
	}
	void setText(String text)
	{
		gtk_text_buffer_set_text(cast(GtkTextBuffer*)obj(), text.toStringz(), -1);
	}

	/**
	 * Gets the GtkTextBuffer
	 * @return the GtkTextBuffer
	 */
	GtkTextBuffer * gtkO()
	{
		return cast(GtkTextBuffer*)gObject;
	}


	/**
	 * create a new TextBuffer with a TextTagTable
	 * @param textTagTable
	 */
	this(TextTagTable textTagTable)
	{
		this(gtk_text_buffer_new(textTagTable.obj()));
	}
	
	/**
	 * Create a new TextBuffer
	 */
	this()
	{
		this(gtk_text_buffer_new(null));
	}
	
	/**
	 * getLineCount
	 * @return 
	 */
	gint getLineCount()
	{
		return gtk_text_buffer_get_line_count(gtkO());
	}
	
	/**
	 * getCharCount
	 * @return 
	 */
	gint getCharCount()
	{
		return gtk_text_buffer_get_char_count(gtkO());
	}

	/**
	 * getTagTable
	 * @return a new TestTagTable or a existing one if found
	 */
	TextTagTable getTagTable()
	{

		GObject* tt = gtk_text_buffer_get_tag_table(gtkO());
		if ( tt === null )
		{
			return null;
		}
		return new TextTagTable(tt);
	}
	
	/* Delete whole buffer, then insert */
	// DONE void gtk_text_buffer_set_text(gtkO(), gchar * text, gint len);

	/* Insert into the buffer */
	/** 
	 * Insert test at the iter
	 * @param iter the TextIter
	 * @param text the text to insert
	 */
	void insert(TextIter iter, char[] text)
	{
		insert(iter, new String(text));
	}
	void insert(TextIter iter, String text)
	{
		gtk_text_buffer_insert(gtkO(), iter.getIter(), text.toStringz(), text.length);
	}
	
	/** 
	 * Insert test at the cursor position
	 * @param text the text to insert
	 */
	void insertAtCursor(String text)
	{
		gtk_text_buffer_insert_at_cursor(gtkO(), text.toStringz(), text.length);
	}

	/** 
	 * Insert test at the iter interactively ???
	 * @param iter the TextIter
	 * @param text the text to insert
	 * @param defaultEditable ???
	 * @return 
	 */
	bit insertInteractive(TextIter iter, String text, bit defaultEditable)
	{
		return gtk_text_buffer_insert_interactive(gtkO(), iter.getIter(), text.toStringz(), text.length, defaultEditable) == 0 ? false : true;
	}
	
	/**
	 * insertInteractiveAtCursor
	 * @param text
	 * @param defaultEditable
	 * @return 
	 */
	bit insertInteractiveAtCursor(String text, bit defaultEditable)
	{
		return gtk_text_buffer_insert_interactive_at_cursor(gtkO(), text.toStringz(),text.length, defaultEditable) == 0 ? false : true;
	}

	/**
	 * insertRange
	 * @param iter
	 * @param start
	 * @param end
	 */
	void insertRange(TextIter iter, TextIter start, TextIter end)
	{
		gtk_text_buffer_insert_range(gtkO(), iter.getIter(), start.getIter(), end.getIter());
	}
	
	/**
	 * insertRangeInteractive
	 * @param iter
	 * @param start
	 * @param end
	 * @param defaultEditable
	 * @return 
	 */
	bit insertRangeInteractive(TextIter iter, TextIter start, TextIter end, bit defaultEditable)
	{
		return gtk_text_buffer_insert_range_interactive(gtkO(), iter.getIter(), start.getIter(), end.getIter(), defaultEditable) == 0 ? false : true;
	}

	/**
	 * insertWithTags
	 * @param iter
	 * @param text
	 * @param firstTag
	 */
	void insertWithTags(TextIter iter, String text, TextTag firstTag)
	{
		gtk_text_buffer_insert_with_tags(gtkO(), iter.getIter(), text.toStringz(), text.length, firstTag.obj(),0);
	}

	/**
	 * insertWithTagsByName
	 * @param iter
	 * @param text
	 * @param tagName
	 */
	void insertWithTagsByName(TextIter iter, char[] text, char[] tagName)
	{
		insertWithTagsByName(iter, new String(text), new String(tagName));
	}
	void insertWithTagsByName(TextIter iter, String text, String tagName)
	{
		gtk_text_buffer_insert_with_tags_by_name(gtkO(), iter.getIter(), text.toStringz(), text.length, tagName.toStringz());
	}

	/**
	 * insertWithTagsByName
	 * @param iter
	 * @param text
	 * @param tagName
	 * @param tagName2
	 */
	void insertWithTagsByName(TextIter iter, char[] text, char[] tagName, char[] tagName2)
	{
		insertWithTagsByName(iter, new String(text), new String(tagName), new String(tagName2));
	}
	void insertWithTagsByName(TextIter iter, String text, String tagName, String tagName2)
	{
		gtk_text_buffer_insert_with_tags_by_name(gtkO(), iter.getIter(), text.toStringz(), text.length, tagName.toStringz(), tagName2.toStringz());
	}

	/**
	 * insertWithTagsByName
	 * @param iter
	 * @param text
	 * @param tagName
	 * @param tagName2
	 * @param tagName3
	 */
	void insertWithTagsByName(TextIter iter, char[] text, char[] tagName, char[] tagName2, char[] tagName3)
	{
		insertWithTagsByName(iter, new String(text), new String(tagName), new String(tagName2), new String(tagName3));
	}
	void insertWithTagsByName(TextIter iter, String text, String tagName, String tagName2, String tagName3)
	{
		gtk_text_buffer_insert_with_tags_by_name(gtkO(), iter.getIter(), text.toStringz(), text.length, tagName.toStringz(), tagName2.toStringz(), tagName3.toStringz());
	}

	/**
	 * insertWithTagsByName
	 * @param iter
	 * @param text
	 * @param tagName
	 * @param tagName2
	 * @param tagName3
	 * @param tagName4
	 */
	void insertWithTagsByName(TextIter iter, char[] text, char[] tagName, char[] tagName2, char[] tagName3, char[] tagName4)
	{
		insertWithTagsByName(iter, new String(text), new String(tagName), new String(tagName2), new String(tagName3), new String(tagName4));
	}
	void insertWithTagsByName(TextIter iter, String text, String tagName, String tagName2, String tagName3, String tagName4)
	{
		gtk_text_buffer_insert_with_tags_by_name(gtkO(), iter.getIter(), text.toStringz(), text.length, tagName.toStringz(), tagName2.toStringz(), tagName3.toStringz(), tagName4.toStringz());
	}

	/**
	 * insertWithTagsByName
	 * @param iter
	 * @param text
	 * @param tagName
	 * @param tagName2
	 * @param tagName3
	 * @param tagName4
	 * @param tagName5
	 */
	void insertWithTagsByName(TextIter iter, char[] text, char[] tagName, char[] tagName2, char[] tagName3, char[] tagName4, char[] tagName5)
	{
		insertWithTagsByName(iter, new String(text), new String(tagName), new String(tagName2), new String(tagName3), new String(tagName4), new String(tagName5));
	}
	void insertWithTagsByName(TextIter iter, String text, String tagName, String tagName2, String tagName3, String tagName4, String tagName5)
	{
		gtk_text_buffer_insert_with_tags_by_name(gtkO(), iter.getIter(), text.toStringz(), text.length, tagName.toStringz(), tagName2.toStringz(), tagName3.toStringz(), tagName4.toStringz(), tagName5.toStringz());
	}

	/* Delete from the buffer */
	/**
	 * deleteText
	 * @param start
	 * @param end
	 */
	void deleteText(TextIter start, TextIter end)
	{
		gtk_text_buffer_delete(gtkO(), start.getIter(), end.getIter());
	}
	
	/**
	 * deleteInteractive
	 * @param start
	 * @param end
	 * @param defaultEditable
	 * @return 
	 */
	bit deleteInteractive(TextIter start, TextIter end, bit defaultEditable)
	{
		return gtk_text_buffer_delete_interactive(gtkO(), start.getIter(), end.getIter(), defaultEditable) == 0 ? false : true;
	}

	/* Obtain strings from the buffer */
	/**
	 * Obtain strings from the buffer
	 * @param start the start iter
	 * @param end the end iter
	 * @param includeHiddenChars
	 * @return a string
	 */	
	String getText(TextIter start, TextIter end, bit includeHiddenChars)
	{
		return String.newz(gtk_text_buffer_get_text(gtkO(), start.getIter(), end.getIter(), includeHiddenChars));
	}

	/**
	 * Obtain strings from the buffer
	 * @param start the start iter
	 * @param end the end iter
	 * @param includeHiddenChars
	 * @return a string
	 */
	String getSlice(TextIter start, TextIter end, bit includeHiddenChars)
	{
		return String.newz(gtk_text_buffer_get_slice(gtkO(), start.getIter(), end.getIter(), includeHiddenChars));
	}

	/**
	 * Obtain the entire text 
	 * @return a string
	 */
	String getText()
	{
		TextIter start = new TextIter();
		TextIter end = new TextIter();
		getBounds(start,end);
		return String.newz(gtk_text_buffer_get_slice(gtkO(), start.getIter(), end.getIter(), true));
	}
	
	/**
	 * Insert a pixbuf
	 * @param iter
	 * @param pixbuf
	 */
	void insertPixbuf(TextIter iter, Pixbuf pixbuf)
	{
		gtk_text_buffer_insert_pixbuf(gtkO(), iter.getIter(), pixbuf.gdkP());
	}
	

	/**
	 * Insert a child anchor
	 * @param iter
	 * @param anchor
	 */
	void insertChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		gtk_text_buffer_insert_child_anchor(gtkO(), iter.getIter(), anchor.obj());
	}

	/**
	 * Convenience, create and insert a child anchor
	 * @param iter
	 */
	TextChildAnchor createChildAnchor(TextIter iter)
	{
		return new TextChildAnchor(gtk_text_buffer_create_child_anchor(gtkO(), iter.getIter()));
	}

	
	/* Mark manipulation */
	
	/** 
	 * Creates a mark at position where
	 * If mark_name is NULL (bug: cannot be null), the mark is anonymous; otherwise, the mark can be retrieved by name using gtk_text_buffer_get_mark(). If a mark has left gravity, and text is inserted at the mark's current location, the mark will be moved to the left of the newly-inserted text. If the mark has right gravity (left_gravity = FALSE), the mark will end up on the right of newly-inserted text. The standard left-to-right cursor is a mark with right gravity (when you type, the cursor stays on the right side of the text you're typing).
	 * @param mark_name name for mark, or null
	 * @param where
	 * @param left_gravity
	 * \bug mark_name CANNOT be null
	 */
	TextMark createMark(String mark_name, TextIter where, bit left_gravity)
	{
		return new TextMark(
			gtk_text_buffer_create_mark(gtkO(), 
			(mark_name===null) ? null : mark_name.toStringz(), 
			where.getIter(), 
			left_gravity));
	}
	
	/** 
	 * Moves mark to the new location where. Emits the "mark_set" signal as notification of the move.
	 * @param mark the mark
	 * @param where the new position
	 */
	void moveMark(TextMark mark, TextIter where)
	{
		gtk_text_buffer_move_mark(gtkO(), mark.gtkM(), where.getIter());
	}
	
	/** 
	 * Deletes mark, so that it's no longer located anywhere in the buffer. Removes the reference the buffer holds to the mark, so if you haven't called g_object_ref() on the mark, it will be freed. Even if the mark isn't freed, most operations on mark become invalid. There is no way to undelete a mark. gtk_text_mark_get_deleted() will return TRUE after this function has been called on a mark; gtk_text_mark_get_deleted() indicates that a mark no longer belongs to a buffer. The "mark_deleted" signal will be emitted as notification after the mark is deleted.
	 */
	void deleteMark(TextMark mark)
	{
		gtk_text_buffer_delete_mark(gtkO(), mark.gtkM());
	}
	
	/** 
	 * Returns the mark named name in buffer buffer.
	 * @param name
	 * @return the mark or null if no such mark exists in the buffer.
	 */
	TextMark getMark(char[] name)
	{
		return getMark(new String(name));
	}
	TextMark getMark(String name)
	{
		return new TextMark(gtk_text_buffer_get_mark(gtkO(), name.toStringz()));
	}

	
	/** 
	 * move the mark by name
	 * @param name the mark name
	 * @param where
	 */
	void moveMark(String name, TextIter where)
	{
		gtk_text_buffer_move_mark_by_name(gtkO(), name.toStringz(), where.getIter());
	}
	
	/** 
	 * move the mark by name using gtk function name.
	 * @param name the mark name
	 * @param where
	 */
	void moveMarkByName(String name, TextIter where)
	{
		gtk_text_buffer_move_mark_by_name(gtkO(), name.toStringz(), where.getIter());
	}
	
	/** 
	 * Deletes mark by name.
	 * @param name the mar name
	 */
	void deleteMark(String name)
	{
		gtk_text_buffer_delete_mark_by_name(gtkO(), name.toStringz());
	}

	/** 
	 * Deletes mark by name using the GTK functino name.
	 * @param name the mar name
	 */
	void deleteMarkByName(String name)
	{
		gtk_text_buffer_delete_mark_by_name(gtkO(), name.toStringz());
	}
	
	/** 
	 * Returns the mark that represents the cursor (insertion point). Equivalent to calling gtk_text_buffer_get_mark() to get the mark named "insert", but very slightly more efficient, and involves less typing.
	 * @return a new Mark for the current insert point
	 */
	TextMark getInsert()
	{
		return new TextMark(gtk_text_buffer_get_insert(gtkO()));
	}
	
	/** 
	 * Returns the mark that represents the selection bound. Equivalent to calling gtk_text_buffer_get_mark() to get the mark named "selection_bound", but very slightly more efficient, and involves less typing.
	 *
	 * The currently-selected text in buffer is the region between the "selection_bound" and "insert" marks. If "selection_bound" and "insert" are in the same place, then there is no current selection. gtk_text_buffer_get_selection_bounds() is another convenient function for handling the selection, if you just want to know whether there's a selection and what its bounds are.
	 * @return a new Mark
	 */
	TextMark getSelectionBound()
	{
		return new TextMark(gtk_text_buffer_get_selection_bound(gtkO()));
	}
	
	
	/* efficiently move insert and selection_bound to same location */

	/**
	 * placeCursor
	 * @param where
	 */
	void placeCursor(TextIter where)
	{
		gtk_text_buffer_place_cursor(gtkO(), where.getIter());
	}

	/* Tag manipulation */
	
	/**
	 * applyTag
	 * @param tag
	 * @param start
	 * @param end
	 */
	void applyTag(TextTag tag, TextIter start, TextIter end)
	{
		gtk_text_buffer_apply_tag(gtkO(), tag.obj(), start.getIter(), end.getIter());
	}
	
	/**
	 * removeTag
	 * @param tag
	 * @param start
	 * @param end
	 */
	void removeTag(TextTag tag, TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_tag(gtkO(), tag.obj(), start.getIter(), end.getIter());
	}

	/**
	 * applyTagByName
	 * @param name
	 * @param start
	 * @param end
	 */
	void applyTagByName(char[] name, TextIter start, TextIter end)
	{
		applyTagByName(new String(name), start, end);
	}
	void applyTagByName(String name, TextIter start, TextIter end)
	{
		gtk_text_buffer_apply_tag_by_name(gtkO(), name.toStringz(), start.getIter(), end.getIter());
	}

	/**
	 * removeTag
	 * @param name
	 * @param start
	 * @param end
	 */
	void removeTag(String name, TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_tag_by_name(gtkO(), name.toStringz(), start.getIter(), end.getIter());
	}

	/**
	 * removeAllTags
	 * @param start
	 * @param end
	 */
	void removeAllTags(TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_all_tags(gtkO(), start.getIter(), end.getIter());
	}

	/**
	 * Create a new tag for this buffer
	 * @param tagName can be null for no name
	 * @param propertyName
	 * @param propertyValue
	 */
	TextTag createTag(char[] tagName, char[] propertyName, char[] propertyValue, 
									   char[] propertyName1, int propertyValue1)
	{
		return createTag(new String(tagName), new String(propertyName), new String(propertyValue), 
											new String(propertyName1), propertyValue1);
	}
	TextTag createTag(String tagName, String propertyName, String propertyValue, 
									  String propertyName1, int propertyValue1)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), 
					propertyName.toStringz(),propertyValue.toStringz(),
					propertyName1.toStringz(),propertyValue1,
					null)
		);
			
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
		return createTag(new String(tagName), new String(propertyName), propertyValue, 
											new String(propertyName1), new String(propertyValue1));
	}
	TextTag createTag(String tagName, String propertyName, int propertyValue, 
									  String propertyName1, String propertyValue1)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), 
					propertyName.toStringz(),propertyValue,
					propertyName1.toStringz(),propertyValue1.toStringz(),
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
		return createTag(new String(tagName), new String(propertyName), propertyValue);
	}
	TextTag createTag(String tagName, String propertyName, int propertyValue)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(),propertyValue,null)
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
		return createTag(new String(tagName), new String(propertyName), propertyValue);
	}
	TextTag createTag(String tagName, String propertyName, double propertyValue)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(),propertyValue,null)
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
		return createTag(new String(tagName), new String(propertyName), propertyValue, new String(propertyName2), propertyValue2);
	}
	TextTag createTag(String tagName, String propertyName, int propertyValue, String propertyName2, int propertyValue2)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(), propertyValue, propertyName2.toStringz(), propertyValue2, null)
		);
	}

	TextTag createTag(char[] tagName, char[] propertyName, int propertyValue, char[] propertyName2, int propertyValue2, char[] propertyName3, int propertyValue3, char[] propertyName4, int propertyValue4, char[] propertyName5, int propertyValue5)
	{
		return createTag(new String(tagName), new String(propertyName), propertyValue, new String(propertyName2), propertyValue2, new String(propertyName3), propertyValue3, new String(propertyName4), propertyValue4, new String(propertyName5), propertyValue5);
	}
	TextTag createTag(String tagName, String propertyName, int propertyValue, String propertyName2, int propertyValue2, String propertyName3, int propertyValue3, String propertyName4, int propertyValue4, String propertyName5, int propertyValue5)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(), propertyValue, propertyName2.toStringz(), propertyValue2, propertyName3.toStringz(), propertyValue3, propertyName4.toStringz(), propertyValue4, propertyName5.toStringz(), propertyValue5, null)
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
		return createTag(new String(tagName), new String(propertyName), new String(propertyValue));
	}
	TextTag createTag(String tagName, String propertyName, String propertyValue)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(),propertyValue.toStringz(),null)
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
		return createTag(new String(tagName), new String(propertyName), propertyValue);
	}
	TextTag createTag(String tagName, String propertyName, Bitmap propertyValue)
	{
		return new TextTag(
			gtk_text_buffer_create_tag(gtkO(), tagName.toStringz(), propertyName.toStringz(),propertyValue.gdkB(),null)
		);
			
	}
	
	/* Obtain iterators pointed at various places, then you can move the
	 * iterator around using the GtkTextIter operators
	 * @param 
	 * @param 
	 * @param 
	 */
	void getIterAtLineOffset(TextIter iter, gint lineNumber, gint charOffset)
	{
		gtk_text_buffer_get_iter_at_line_offset(gtkO(), iter.getIter(), lineNumber, charOffset);
	}
	
	/**
	 * getIterAtLineIndex
	 * @param iter
	 * @param line_number
	 * @param byte_index
	 */
	void getIterAtLineIndex(TextIter iter, gint line_number, gint byte_index)
	{
		gtk_text_buffer_get_iter_at_line_index(gtkO(), iter.getIter(), line_number, byte_index);
	}
	
	/**
	 * getIterAtOffset
	 * @param iter
	 * @param char_offset
	 */
	void getIterAtOffset(TextIter iter, gint char_offset)
	{
		gtk_text_buffer_get_iter_at_offset(gtkO(), iter.getIter(), char_offset);
	}
	
	/**
	 * getIterAtLine
	 * @param iter
	 * @param line_number
	 */
	void getIterAtLine(TextIter iter, gint line_number)
	{
		gtk_text_buffer_get_iter_at_line(gtkO(), iter.getIter(), line_number);
	}

	/**
	 * getStartIter
	 * @param iter
	 */
	void getStartIter(TextIter iter)
	{
		gtk_text_buffer_get_start_iter(gtkO(), iter.getIter());
	}

	/**
	 * getEndIter
	 * @param iter
	 */
	void getEndIter(TextIter iter)
	{
		gtk_text_buffer_get_end_iter(gtkO(), iter.getIter());
	}

	/**
	 * getBounds
	 * @param start
	 * @param end
	 */
	void getBounds(TextIter start, TextIter end)
	{
		gtk_text_buffer_get_bounds(gtkO(), start.getIter(), end.getIter());
	}
	
	/**
	 * Sets an iter to the mark
	 * @param iter the iter to set
	 * @param mark the mark
	 */
	void getIterAtMark(TextIter iter, TextMark mark)
	{
		gtk_text_buffer_get_iter_at_mark(gtkO(), iter.getIter(), mark.gtkM());
	}
	
	
	/**
	 * Set an iter to the child anchor
	 * @param iter the iter to set
	 * @param anchor the child anchor
	 */
	void getIterAtChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		gtk_text_buffer_get_iter_at_child_anchor(gtkO(), iter.getIter(), anchor.obj());
	}
	
	/* There's no get_first_iter because you just get the iter for
	   line or char 0 */

	/* Used to keep track of whether the buffer needs saving; anytime the
	   buffer contents change, the modified flag is turned on. Whenever
	   you save, turn it off. Tags and marks do not affect the modified
	   flag, but if you would like them to you can connect a handler to
	   the tag/mark signals and call set_modified in your handler */

	/**
	 * Indicates whether the buffer has been modified since the last call to gtk_text_buffer_set_modified()
	 * set the modification flag to false
	 * @return 
	 */
	bit getModified()
	{
		return gtk_text_buffer_get_modified(gtkO()) == 0 ? false : true;
	}
	
	/**
	 * Used to keep track of whether the buffer has been modified since the last time it was saved.
	 * @param setting
	 */
	void setModified(bit setting)
	{
		gtk_text_buffer_set_modified(gtkO(), setting);
	}

	/**
	 * addSelectionClipboard
	 * @param clipboard
	 */
	void addSelectionClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_add_selection_clipboard(gtkO(), clipboard.gtkC());
	}

	/**
	 * removeSelectionClipboard
	 * @param clipboard
	 */
	void removeSelectionClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_remove_selection_clipboard(gtkO(), clipboard.gtkC());
	}

	/**
	 * cutClipboard
	 * @param clipboard
	 * @param default_editable
	 */
	void cutClipboard(Clipboard clipboard, bit default_editable)
	{
		gtk_text_buffer_cut_clipboard(gtkO(), clipboard.gtkC(), default_editable);
	}
	
	/**
	 * copyClipboard
	 * @param clipboard
	 */
	void copyClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_copy_clipboard(gtkO(), clipboard.gtkC());
	}

	/**
	 * pastClipboard
	 * @param clipboard
	 * @param override_location
	 * @param default_editable
	 */
	void pastClipboard(Clipboard clipboard, TextIter override_location, bit default_editable)
	{
		gtk_text_buffer_paste_clipboard(gtkO(), clipboard.gtkC(), override_location.getIter(), default_editable);
	}

	/**
	 * getSelectionBounds
	 * @param start
	 * @param end
	 */
	bit getSelectionBounds(TextIter start, TextIter end)
	{
		return gtk_text_buffer_get_selection_bounds(gtkO(), start.getIter(), end.getIter()) == 0 ? false : true;
	}
	
	/**
	 * deleteSelection
	 * @param interactive
	 * @param defaultEditable
	 */
	bit deleteSelection(bit interactive, bit defaultEditable)
	{
		return gtk_text_buffer_delete_selection(gtkO(), interactive, defaultEditable) == 0 ? false : true;
	}

	/*
	 * Called to specify atomic user actions, used to implement undo
	 */
	/**
	 * beginUserAction
	 */
	void beginUserAction()
	{
		gtk_text_buffer_begin_user_action(gtkO());
	}
	/**
	 * endUserAction
	 */
	void endUserAction()
	{
		gtk_text_buffer_end_user_action(gtkO());
	}
}
