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


module gtk.TextBuffer;

private import core.vararg;
private import gdk.Color;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.c.functions;
private import gtk.Clipboard;
private import gtk.TargetList;
private import gtk.TextChildAnchor;
private import gtk.TextIter;
private import gtk.TextMark;
private import gtk.TextTag;
private import gtk.TextTagTable;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgFontDescription;
private import pango.PgTabArray;
private import std.algorithm;
private import std.stdio;


/**
 * You may wish to begin by reading the
 * [text widget conceptual overview][TextWidget]
 * which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
public class TextBuffer : ObjectG
{
	/** the main Gtk struct */
	protected GtkTextBuffer* gtkTextBuffer;

	/** Get the main Gtk struct */
	public GtkTextBuffer* getTextBufferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextBuffer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextBuffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextBuffer* gtkTextBuffer, bool ownedRef = false)
	{
		this.gtkTextBuffer = gtkTextBuffer;
		super(cast(GObject*)gtkTextBuffer, ownedRef);
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
			else if ( _arguments[i+1] == typeid(const(double)) )
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
				stderr.writefln("TextBuffer.CreateTag: Unsupported type: \"%s\" for property: \"%s\"", _arguments[i+1], name);

				//TODO: throw segfaults, druntime bug?
				throw new Exception("TextBuffer.CreateTag: Unsupported type: \""~_arguments[i+1].toString()~"\" for property: \""~name~"\"");
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

	/** */
	public static GType getType()
	{
		return gtk_text_buffer_get_type();
	}

	/**
	 * Creates a new text buffer.
	 *
	 * Params:
	 *     table = a tag table, or %NULL to create a new one
	 *
	 * Returns: a new text buffer
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TextTagTable table)
	{
		auto p = gtk_text_buffer_new((table is null) ? null : table.getTextTagTableStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextBuffer*) p, true);
	}

	/**
	 * Adds the mark at position @where. The mark must not be added to
	 * another buffer, and if its name is not %NULL then there must not
	 * be another mark in the buffer with the same name.
	 *
	 * Emits the #GtkTextBuffer::mark-set signal as notification of the mark's
	 * initial placement.
	 *
	 * Params:
	 *     mark = the mark to add
	 *     where = location to place mark
	 *
	 * Since: 2.12
	 */
	public void addMark(TextMark mark, TextIter where)
	{
		gtk_text_buffer_add_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct(), (where is null) ? null : where.getTextIterStruct());
	}

	/**
	 * Adds @clipboard to the list of clipboards in which the selection
	 * contents of @buffer are available. In most cases, @clipboard will be
	 * the #GtkClipboard of type %GDK_SELECTION_PRIMARY for a view of @buffer.
	 *
	 * Params:
	 *     clipboard = a #GtkClipboard
	 */
	public void addSelectionClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_add_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}

	/**
	 * Emits the “apply-tag” signal on @buffer. The default
	 * handler for the signal applies @tag to the given range.
	 * @start and @end do not have to be in order.
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 *     start = one bound of range to be tagged
	 *     end = other bound of range to be tagged
	 */
	public void applyTag(TextTag tag, TextIter start, TextIter end)
	{
		gtk_text_buffer_apply_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer’s tag table to
	 * get a #GtkTextTag, then calls gtk_text_buffer_apply_tag().
	 *
	 * Params:
	 *     name = name of a named #GtkTextTag
	 *     start = one bound of range to be tagged
	 *     end = other bound of range to be tagged
	 */
	public void applyTagByName(string name, TextIter start, TextIter end)
	{
		gtk_text_buffer_apply_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Performs the appropriate action as if the user hit the delete
	 * key with the cursor at the position specified by @iter. In the
	 * normal case a single character will be deleted, but when
	 * combining accents are involved, more than one character can
	 * be deleted, and when precomposed character and accent combinations
	 * are involved, less than one character will be deleted.
	 *
	 * Because the buffer is modified, all outstanding iterators become
	 * invalid after calling this function; however, the @iter will be
	 * re-initialized to point to the location where text was deleted.
	 *
	 * Params:
	 *     iter = a position in @buffer
	 *     interactive = whether the deletion is caused by user interaction
	 *     defaultEditable = whether the buffer is editable by default
	 *
	 * Returns: %TRUE if the buffer was modified
	 *
	 * Since: 2.6
	 */
	public bool backspace(TextIter iter, bool interactive, bool defaultEditable)
	{
		return gtk_text_buffer_backspace(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), interactive, defaultEditable) != 0;
	}

	/**
	 * Called to indicate that the buffer operations between here and a
	 * call to gtk_text_buffer_end_user_action() are part of a single
	 * user-visible operation. The operations between
	 * gtk_text_buffer_begin_user_action() and
	 * gtk_text_buffer_end_user_action() can then be grouped when creating
	 * an undo stack. #GtkTextBuffer maintains a count of calls to
	 * gtk_text_buffer_begin_user_action() that have not been closed with
	 * a call to gtk_text_buffer_end_user_action(), and emits the
	 * “begin-user-action” and “end-user-action” signals only for the
	 * outermost pair of calls. This allows you to build user actions
	 * from other user actions.
	 *
	 * The “interactive” buffer mutation functions, such as
	 * gtk_text_buffer_insert_interactive(), automatically call begin/end
	 * user action around the buffer operations they perform, so there's
	 * no need to add extra calls if you user action consists solely of a
	 * single call to one of those functions.
	 */
	public void beginUserAction()
	{
		gtk_text_buffer_begin_user_action(gtkTextBuffer);
	}

	/**
	 * Copies the currently-selected text to a clipboard.
	 *
	 * Params:
	 *     clipboard = the #GtkClipboard object to copy to
	 */
	public void copyClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_copy_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}

	/**
	 * This is a convenience function which simply creates a child anchor
	 * with gtk_text_child_anchor_new() and inserts it into the buffer
	 * with gtk_text_buffer_insert_child_anchor(). The new anchor is
	 * owned by the buffer; no reference count is returned to
	 * the caller of gtk_text_buffer_create_child_anchor().
	 *
	 * Params:
	 *     iter = location in the buffer
	 *
	 * Returns: the created child anchor
	 */
	public TextChildAnchor createChildAnchor(TextIter iter)
	{
		auto p = gtk_text_buffer_create_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextChildAnchor)(cast(GtkTextChildAnchor*) p);
	}

	/**
	 * Creates a mark at position @where. If @mark_name is %NULL, the mark
	 * is anonymous; otherwise, the mark can be retrieved by name using
	 * gtk_text_buffer_get_mark(). If a mark has left gravity, and text is
	 * inserted at the mark’s current location, the mark will be moved to
	 * the left of the newly-inserted text. If the mark has right gravity
	 * (@left_gravity = %FALSE), the mark will end up on the right of
	 * newly-inserted text. The standard left-to-right cursor is a mark
	 * with right gravity (when you type, the cursor stays on the right
	 * side of the text you’re typing).
	 *
	 * The caller of this function does not own a
	 * reference to the returned #GtkTextMark, so you can ignore the
	 * return value if you like. Marks are owned by the buffer and go
	 * away when the buffer does.
	 *
	 * Emits the #GtkTextBuffer::mark-set signal as notification of the mark's
	 * initial placement.
	 *
	 * Params:
	 *     markName = name for mark, or %NULL
	 *     where = location to place mark
	 *     leftGravity = whether the mark has left gravity
	 *
	 * Returns: the new #GtkTextMark object
	 */
	public TextMark createMark(string markName, TextIter where, bool leftGravity)
	{
		auto p = gtk_text_buffer_create_mark(gtkTextBuffer, Str.toStringz(markName), (where is null) ? null : where.getTextIterStruct(), leftGravity);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}

	/**
	 * Copies the currently-selected text to a clipboard, then deletes
	 * said text if it’s editable.
	 *
	 * Params:
	 *     clipboard = the #GtkClipboard object to cut to
	 *     defaultEditable = default editability of the buffer
	 */
	public void cutClipboard(Clipboard clipboard, bool defaultEditable)
	{
		gtk_text_buffer_cut_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct(), defaultEditable);
	}

	alias delet = delete_;
	/**
	 * Deletes text between @start and @end. The order of @start and @end
	 * is not actually relevant; gtk_text_buffer_delete() will reorder
	 * them. This function actually emits the “delete-range” signal, and
	 * the default handler of that signal deletes the text. Because the
	 * buffer is modified, all outstanding iterators become invalid after
	 * calling this function; however, the @start and @end will be
	 * re-initialized to point to the location where text was deleted.
	 *
	 * Params:
	 *     start = a position in @buffer
	 *     end = another position in @buffer
	 */
	public void delete_(TextIter start, TextIter end)
	{
		gtk_text_buffer_delete(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Deletes all editable text in the given range.
	 * Calls gtk_text_buffer_delete() for each editable sub-range of
	 * [@start,@end). @start and @end are revalidated to point to
	 * the location of the last deleted range, or left untouched if
	 * no text was deleted.
	 *
	 * Params:
	 *     startIter = start of range to delete
	 *     endIter = end of range
	 *     defaultEditable = whether the buffer is editable by default
	 *
	 * Returns: whether some text was actually deleted
	 */
	public bool deleteInteractive(TextIter startIter, TextIter endIter, bool defaultEditable)
	{
		return gtk_text_buffer_delete_interactive(gtkTextBuffer, (startIter is null) ? null : startIter.getTextIterStruct(), (endIter is null) ? null : endIter.getTextIterStruct(), defaultEditable) != 0;
	}

	/**
	 * Deletes @mark, so that it’s no longer located anywhere in the
	 * buffer. Removes the reference the buffer holds to the mark, so if
	 * you haven’t called g_object_ref() on the mark, it will be freed. Even
	 * if the mark isn’t freed, most operations on @mark become
	 * invalid, until it gets added to a buffer again with
	 * gtk_text_buffer_add_mark(). Use gtk_text_mark_get_deleted() to
	 * find out if a mark has been removed from its buffer.
	 * The #GtkTextBuffer::mark-deleted signal will be emitted as notification after
	 * the mark is deleted.
	 *
	 * Params:
	 *     mark = a #GtkTextMark in @buffer
	 */
	public void deleteMark(TextMark mark)
	{
		gtk_text_buffer_delete_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct());
	}

	/**
	 * Deletes the mark named @name; the mark must exist. See
	 * gtk_text_buffer_delete_mark() for details.
	 *
	 * Params:
	 *     name = name of a mark in @buffer
	 */
	public void deleteMarkByName(string name)
	{
		gtk_text_buffer_delete_mark_by_name(gtkTextBuffer, Str.toStringz(name));
	}

	/**
	 * Deletes the range between the “insert” and “selection_bound” marks,
	 * that is, the currently-selected text. If @interactive is %TRUE,
	 * the editability of the selection will be considered (users can’t delete
	 * uneditable text).
	 *
	 * Params:
	 *     interactive = whether the deletion is caused by user interaction
	 *     defaultEditable = whether the buffer is editable by default
	 *
	 * Returns: whether there was a non-empty selection to delete
	 */
	public bool deleteSelection(bool interactive, bool defaultEditable)
	{
		return gtk_text_buffer_delete_selection(gtkTextBuffer, interactive, defaultEditable) != 0;
	}

	/**
	 * This function deserializes rich text in format @format and inserts
	 * it at @iter.
	 *
	 * @formats to be used must be registered using
	 * gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset() beforehand.
	 *
	 * Params:
	 *     contentBuffer = the #GtkTextBuffer to deserialize into
	 *     format = the rich text format to use for deserializing
	 *     iter = insertion point for the deserialized text
	 *     data = data to deserialize
	 *
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Since: 2.10
	 *
	 * Throws: GException on failure.
	 */
	public bool deserialize(TextBuffer contentBuffer, GdkAtom format, TextIter iter, ubyte[] data)
	{
		GError* err = null;

		auto p = gtk_text_buffer_deserialize(gtkTextBuffer, (contentBuffer is null) ? null : contentBuffer.getTextBufferStruct(), format, (iter is null) ? null : iter.getTextIterStruct(), data.ptr, cast(size_t)data.length, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * This functions returns the value set with
	 * gtk_text_buffer_deserialize_set_can_create_tags()
	 *
	 * Params:
	 *     format = a #GdkAtom representing a registered rich text format
	 *
	 * Returns: whether deserializing this format may create tags
	 *
	 * Since: 2.10
	 */
	public bool deserializeGetCanCreateTags(GdkAtom format)
	{
		return gtk_text_buffer_deserialize_get_can_create_tags(gtkTextBuffer, format) != 0;
	}

	/**
	 * Use this function to allow a rich text deserialization function to
	 * create new tags in the receiving buffer. Note that using this
	 * function is almost always a bad idea, because the rich text
	 * functions you register should know how to map the rich text format
	 * they handler to your text buffers set of tags.
	 *
	 * The ability of creating new (arbitrary!) tags in the receiving buffer
	 * is meant for special rich text formats like the internal one that
	 * is registered using gtk_text_buffer_register_deserialize_tagset(),
	 * because that format is essentially a dump of the internal structure
	 * of the source buffer, including its tag names.
	 *
	 * You should allow creation of tags only if you know what you are
	 * doing, e.g. if you defined a tagset name for your application
	 * suite’s text buffers and you know that it’s fine to receive new
	 * tags from these buffers, because you know that your application can
	 * handle the newly created tags.
	 *
	 * Params:
	 *     format = a #GdkAtom representing a registered rich text format
	 *     canCreateTags = whether deserializing this format may create tags
	 *
	 * Since: 2.10
	 */
	public void deserializeSetCanCreateTags(GdkAtom format, bool canCreateTags)
	{
		gtk_text_buffer_deserialize_set_can_create_tags(gtkTextBuffer, format, canCreateTags);
	}

	/**
	 * Should be paired with a call to gtk_text_buffer_begin_user_action().
	 * See that function for a full explanation.
	 */
	public void endUserAction()
	{
		gtk_text_buffer_end_user_action(gtkTextBuffer);
	}

	/**
	 * Retrieves the first and last iterators in the buffer, i.e. the
	 * entire buffer lies within the range [@start,@end).
	 *
	 * Params:
	 *     start = iterator to initialize with first position in the buffer
	 *     end = iterator to initialize with the end iterator
	 */
	public void getBounds(out TextIter start, out TextIter end)
	{
		GtkTextIter* outstart = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		gtk_text_buffer_get_bounds(gtkTextBuffer, outstart, outend);

		start = ObjectG.getDObject!(TextIter)(outstart, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);
	}

	/**
	 * Gets the number of characters in the buffer; note that characters
	 * and bytes are not the same, you can’t e.g. expect the contents of
	 * the buffer in string form to be this many bytes long. The character
	 * count is cached, so this function is very fast.
	 *
	 * Returns: number of characters in the buffer
	 */
	public int getCharCount()
	{
		return gtk_text_buffer_get_char_count(gtkTextBuffer);
	}

	/**
	 * This function returns the list of targets this text buffer can
	 * provide for copying and as DND source. The targets in the list are
	 * added with @info values from the #GtkTextBufferTargetInfo enum,
	 * using gtk_target_list_add_rich_text_targets() and
	 * gtk_target_list_add_text_targets().
	 *
	 * Returns: the #GtkTargetList
	 *
	 * Since: 2.10
	 */
	public TargetList getCopyTargetList()
	{
		auto p = gtk_text_buffer_get_copy_target_list(gtkTextBuffer);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
	}

	/**
	 * This function returns the rich text deserialize formats registered
	 * with @buffer using gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset()
	 *
	 * Returns: an array of
	 *     #GdkAtoms representing the registered formats.
	 *
	 * Since: 2.10
	 */
	public GdkAtom[] getDeserializeFormats()
	{
		int nFormats;

		auto p = gtk_text_buffer_get_deserialize_formats(gtkTextBuffer, &nFormats);

		return p[0 .. nFormats];
	}

	/**
	 * Initializes @iter with the “end iterator,” one past the last valid
	 * character in the text buffer. If dereferenced with
	 * gtk_text_iter_get_char(), the end iterator has a character value of 0.
	 * The entire buffer lies in the range from the first position in
	 * the buffer (call gtk_text_buffer_get_start_iter() to get
	 * character position 0) to the end iterator.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 */
	public void getEndIter(out TextIter iter)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_end_iter(gtkTextBuffer, outiter);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Indicates whether the buffer has some text currently selected.
	 *
	 * Returns: %TRUE if the there is text selected
	 *
	 * Since: 2.10
	 */
	public bool getHasSelection()
	{
		return gtk_text_buffer_get_has_selection(gtkTextBuffer) != 0;
	}

	/**
	 * Returns the mark that represents the cursor (insertion point).
	 * Equivalent to calling gtk_text_buffer_get_mark() to get the mark
	 * named “insert”, but very slightly more efficient, and involves less
	 * typing.
	 *
	 * Returns: insertion point mark
	 */
	public TextMark getInsert()
	{
		auto p = gtk_text_buffer_get_insert(gtkTextBuffer);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}

	/**
	 * Obtains the location of @anchor within @buffer.
	 *
	 * Params:
	 *     iter = an iterator to be initialized
	 *     anchor = a child anchor that appears in @buffer
	 */
	public void getIterAtChildAnchor(out TextIter iter, TextChildAnchor anchor)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_child_anchor(gtkTextBuffer, outiter, (anchor is null) ? null : anchor.getTextChildAnchorStruct());

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Initializes @iter to the start of the given line. If @line_number is greater
	 * than the number of lines in the @buffer, the end iterator is returned.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 *     lineNumber = line number counting from 0
	 */
	public void getIterAtLine(out TextIter iter, int lineNumber)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_line(gtkTextBuffer, outiter, lineNumber);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Obtains an iterator pointing to @byte_index within the given line.
	 * @byte_index must be the start of a UTF-8 character. Note bytes, not
	 * characters; UTF-8 may encode one character as multiple bytes.
	 *
	 * Before the 3.20 version, it was not allowed to pass an invalid location.
	 *
	 * Since the 3.20 version, if @line_number is greater than the number of lines
	 * in the @buffer, the end iterator is returned. And if @byte_index is off the
	 * end of the line, the iterator at the end of the line is returned.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 *     lineNumber = line number counting from 0
	 *     byteIndex = byte index from start of line
	 */
	public void getIterAtLineIndex(out TextIter iter, int lineNumber, int byteIndex)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_line_index(gtkTextBuffer, outiter, lineNumber, byteIndex);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Obtains an iterator pointing to @char_offset within the given line. Note
	 * characters, not bytes; UTF-8 may encode one character as multiple bytes.
	 *
	 * Before the 3.20 version, it was not allowed to pass an invalid location.
	 *
	 * Since the 3.20 version, if @line_number is greater than the number of lines
	 * in the @buffer, the end iterator is returned. And if @char_offset is off the
	 * end of the line, the iterator at the end of the line is returned.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 *     lineNumber = line number counting from 0
	 *     charOffset = char offset from start of line
	 */
	public void getIterAtLineOffset(out TextIter iter, int lineNumber, int charOffset)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_line_offset(gtkTextBuffer, outiter, lineNumber, charOffset);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Initializes @iter with the current position of @mark.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 *     mark = a #GtkTextMark in @buffer
	 */
	public void getIterAtMark(out TextIter iter, TextMark mark)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_mark(gtkTextBuffer, outiter, (mark is null) ? null : mark.getTextMarkStruct());

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Initializes @iter to a position @char_offset chars from the start
	 * of the entire buffer. If @char_offset is -1 or greater than the number
	 * of characters in the buffer, @iter is initialized to the end iterator,
	 * the iterator one past the last valid character in the buffer.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 *     charOffset = char offset from start of buffer, counting from 0, or -1
	 */
	public void getIterAtOffset(out TextIter iter, int charOffset)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_iter_at_offset(gtkTextBuffer, outiter, charOffset);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Obtains the number of lines in the buffer. This value is cached, so
	 * the function is very fast.
	 *
	 * Returns: number of lines in the buffer
	 */
	public int getLineCount()
	{
		return gtk_text_buffer_get_line_count(gtkTextBuffer);
	}

	/**
	 * Returns the mark named @name in buffer @buffer, or %NULL if no such
	 * mark exists in the buffer.
	 *
	 * Params:
	 *     name = a mark name
	 *
	 * Returns: a #GtkTextMark, or %NULL
	 */
	public TextMark getMark(string name)
	{
		auto p = gtk_text_buffer_get_mark(gtkTextBuffer, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}

	/**
	 * Indicates whether the buffer has been modified since the last call
	 * to gtk_text_buffer_set_modified() set the modification flag to
	 * %FALSE. Used for example to enable a “save” function in a text
	 * editor.
	 *
	 * Returns: %TRUE if the buffer has been modified
	 */
	public bool getModified()
	{
		return gtk_text_buffer_get_modified(gtkTextBuffer) != 0;
	}

	/**
	 * This function returns the list of targets this text buffer supports
	 * for pasting and as DND destination. The targets in the list are
	 * added with @info values from the #GtkTextBufferTargetInfo enum,
	 * using gtk_target_list_add_rich_text_targets() and
	 * gtk_target_list_add_text_targets().
	 *
	 * Returns: the #GtkTargetList
	 *
	 * Since: 2.10
	 */
	public TargetList getPasteTargetList()
	{
		auto p = gtk_text_buffer_get_paste_target_list(gtkTextBuffer);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetList)(cast(GtkTargetList*) p);
	}

	/**
	 * Returns the mark that represents the selection bound.  Equivalent
	 * to calling gtk_text_buffer_get_mark() to get the mark named
	 * “selection_bound”, but very slightly more efficient, and involves
	 * less typing.
	 *
	 * The currently-selected text in @buffer is the region between the
	 * “selection_bound” and “insert” marks. If “selection_bound” and
	 * “insert” are in the same place, then there is no current selection.
	 * gtk_text_buffer_get_selection_bounds() is another convenient function
	 * for handling the selection, if you just want to know whether there’s a
	 * selection and what its bounds are.
	 *
	 * Returns: selection bound mark
	 */
	public TextMark getSelectionBound()
	{
		auto p = gtk_text_buffer_get_selection_bound(gtkTextBuffer);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextMark)(cast(GtkTextMark*) p);
	}

	/**
	 * Returns %TRUE if some text is selected; places the bounds
	 * of the selection in @start and @end (if the selection has length 0,
	 * then @start and @end are filled in with the same value).
	 * @start and @end will be in ascending order. If @start and @end are
	 * NULL, then they are not filled in, but the return value still indicates
	 * whether text is selected.
	 *
	 * Params:
	 *     start = iterator to initialize with selection start
	 *     end = iterator to initialize with selection end
	 *
	 * Returns: whether the selection has nonzero length
	 */
	public bool getSelectionBounds(out TextIter start, out TextIter end)
	{
		GtkTextIter* outstart = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		auto p = gtk_text_buffer_get_selection_bounds(gtkTextBuffer, outstart, outend) != 0;

		start = ObjectG.getDObject!(TextIter)(outstart, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);

		return p;
	}

	/**
	 * This function returns the rich text serialize formats registered
	 * with @buffer using gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset()
	 *
	 * Returns: an array of
	 *     #GdkAtoms representing the registered formats.
	 *
	 * Since: 2.10
	 */
	public GdkAtom[] getSerializeFormats()
	{
		int nFormats;

		auto p = gtk_text_buffer_get_serialize_formats(gtkTextBuffer, &nFormats);

		return p[0 .. nFormats];
	}

	/**
	 * Returns the text in the range [@start,@end). Excludes undisplayed
	 * text (text marked with tags that set the invisibility attribute) if
	 * @include_hidden_chars is %FALSE. The returned string includes a
	 * 0xFFFC character whenever the buffer contains
	 * embedded images, so byte and character indexes into
	 * the returned string do correspond to byte
	 * and character indexes into the buffer. Contrast with
	 * gtk_text_buffer_get_text(). Note that 0xFFFC can occur in normal
	 * text as well, so it is not a reliable indicator that a pixbuf or
	 * widget is in the buffer.
	 *
	 * Params:
	 *     start = start of a range
	 *     end = end of a range
	 *     includeHiddenChars = whether to include invisible text
	 *
	 * Returns: an allocated UTF-8 string
	 */
	public string getSlice(TextIter start, TextIter end, bool includeHiddenChars)
	{
		auto retStr = gtk_text_buffer_get_slice(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Initialized @iter with the first position in the text buffer. This
	 * is the same as using gtk_text_buffer_get_iter_at_offset() to get
	 * the iter at character offset 0.
	 *
	 * Params:
	 *     iter = iterator to initialize
	 */
	public void getStartIter(out TextIter iter)
	{
		GtkTextIter* outiter = sliceNew!GtkTextIter();

		gtk_text_buffer_get_start_iter(gtkTextBuffer, outiter);

		iter = ObjectG.getDObject!(TextIter)(outiter, true);
	}

	/**
	 * Get the #GtkTextTagTable associated with this buffer.
	 *
	 * Returns: the buffer’s tag table
	 */
	public TextTagTable getTagTable()
	{
		auto p = gtk_text_buffer_get_tag_table(gtkTextBuffer);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextTagTable)(cast(GtkTextTagTable*) p);
	}

	/**
	 * Returns the text in the range [@start,@end). Excludes undisplayed
	 * text (text marked with tags that set the invisibility attribute) if
	 * @include_hidden_chars is %FALSE. Does not include characters
	 * representing embedded images, so byte and character indexes into
	 * the returned string do not correspond to byte
	 * and character indexes into the buffer. Contrast with
	 * gtk_text_buffer_get_slice().
	 *
	 * Params:
	 *     start = start of a range
	 *     end = end of a range
	 *     includeHiddenChars = whether to include invisible text
	 *
	 * Returns: an allocated UTF-8 string
	 */
	public string getText(TextIter start, TextIter end, bool includeHiddenChars)
	{
		auto retStr = gtk_text_buffer_get_text(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), includeHiddenChars);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Inserts @len bytes of @text at position @iter.  If @len is -1,
	 * @text must be nul-terminated and will be inserted in its
	 * entirety. Emits the “insert-text” signal; insertion actually occurs
	 * in the default handler for the signal. @iter is invalidated when
	 * insertion occurs (because the buffer contents change), but the
	 * default signal handler revalidates it to point to the end of the
	 * inserted text.
	 *
	 * Params:
	 *     iter = a position in the buffer
	 *     text = text in UTF-8 format
	 */
	public void insert(TextIter iter, string text)
	{
		gtk_text_buffer_insert(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), cast(int)text.length);
	}

	/**
	 * Simply calls gtk_text_buffer_insert(), using the current
	 * cursor position as the insertion point.
	 *
	 * Params:
	 *     text = text in UTF-8 format
	 */
	public void insertAtCursor(string text)
	{
		gtk_text_buffer_insert_at_cursor(gtkTextBuffer, Str.toStringz(text), cast(int)text.length);
	}

	/**
	 * Inserts a child widget anchor into the text buffer at @iter. The
	 * anchor will be counted as one character in character counts, and
	 * when obtaining the buffer contents as a string, will be represented
	 * by the Unicode “object replacement character” 0xFFFC. Note that the
	 * “slice” variants for obtaining portions of the buffer as a string
	 * include this character for child anchors, but the “text” variants do
	 * not. E.g. see gtk_text_buffer_get_slice() and
	 * gtk_text_buffer_get_text(). Consider
	 * gtk_text_buffer_create_child_anchor() as a more convenient
	 * alternative to this function. The buffer will add a reference to
	 * the anchor, so you can unref it after insertion.
	 *
	 * Params:
	 *     iter = location to insert the anchor
	 *     anchor = a #GtkTextChildAnchor
	 */
	public void insertChildAnchor(TextIter iter, TextChildAnchor anchor)
	{
		gtk_text_buffer_insert_child_anchor(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (anchor is null) ? null : anchor.getTextChildAnchorStruct());
	}

	/**
	 * Like gtk_text_buffer_insert(), but the insertion will not occur if
	 * @iter is at a non-editable location in the buffer. Usually you
	 * want to prevent insertions at ineditable locations if the insertion
	 * results from a user action (is interactive).
	 *
	 * @default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 *
	 * Params:
	 *     iter = a position in @buffer
	 *     text = some UTF-8 text
	 *     defaultEditable = default editability of buffer
	 *
	 * Returns: whether text was actually inserted
	 */
	public bool insertInteractive(TextIter iter, string text, bool defaultEditable)
	{
		return gtk_text_buffer_insert_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(text), cast(int)text.length, defaultEditable) != 0;
	}

	/**
	 * Calls gtk_text_buffer_insert_interactive() at the cursor
	 * position.
	 *
	 * @default_editable indicates the editability of text that doesn't
	 * have a tag affecting editability applied to it. Typically the
	 * result of gtk_text_view_get_editable() is appropriate here.
	 *
	 * Params:
	 *     text = text in UTF-8 format
	 *     defaultEditable = default editability of buffer
	 *
	 * Returns: whether text was actually inserted
	 */
	public bool insertInteractiveAtCursor(string text, bool defaultEditable)
	{
		return gtk_text_buffer_insert_interactive_at_cursor(gtkTextBuffer, Str.toStringz(text), cast(int)text.length, defaultEditable) != 0;
	}

	/**
	 * Inserts the text in @markup at position @iter. @markup will be inserted
	 * in its entirety and must be nul-terminated and valid UTF-8. Emits the
	 * #GtkTextBuffer::insert-text signal, possibly multiple times; insertion
	 * actually occurs in the default handler for the signal. @iter will point
	 * to the end of the inserted text on return.
	 *
	 * Params:
	 *     iter = location to insert the markup
	 *     markup = a nul-terminated UTF-8 string containing [Pango markup][PangoMarkupFormat]
	 *     len = length of @markup in bytes, or -1
	 *
	 * Since: 3.16
	 */
	public void insertMarkup(TextIter iter, string markup, int len)
	{
		gtk_text_buffer_insert_markup(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), Str.toStringz(markup), len);
	}

	/**
	 * Inserts an image into the text buffer at @iter. The image will be
	 * counted as one character in character counts, and when obtaining
	 * the buffer contents as a string, will be represented by the Unicode
	 * “object replacement character” 0xFFFC. Note that the “slice”
	 * variants for obtaining portions of the buffer as a string include
	 * this character for pixbufs, but the “text” variants do
	 * not. e.g. see gtk_text_buffer_get_slice() and
	 * gtk_text_buffer_get_text().
	 *
	 * Params:
	 *     iter = location to insert the pixbuf
	 *     pixbuf = a #GdkPixbuf
	 */
	public void insertPixbuf(TextIter iter, Pixbuf pixbuf)
	{
		gtk_text_buffer_insert_pixbuf(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Copies text, tags, and pixbufs between @start and @end (the order
	 * of @start and @end doesn’t matter) and inserts the copy at @iter.
	 * Used instead of simply getting/inserting text because it preserves
	 * images and tags. If @start and @end are in a different buffer from
	 * @buffer, the two buffers must share the same tag table.
	 *
	 * Implemented via emissions of the insert_text and apply_tag signals,
	 * so expect those.
	 *
	 * Params:
	 *     iter = a position in @buffer
	 *     start = a position in a #GtkTextBuffer
	 *     end = another position in the same buffer as @start
	 */
	public void insertRange(TextIter iter, TextIter start, TextIter end)
	{
		gtk_text_buffer_insert_range(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Same as gtk_text_buffer_insert_range(), but does nothing if the
	 * insertion point isn’t editable. The @default_editable parameter
	 * indicates whether the text is editable at @iter if no tags
	 * enclosing @iter affect editability. Typically the result of
	 * gtk_text_view_get_editable() is appropriate here.
	 *
	 * Params:
	 *     iter = a position in @buffer
	 *     start = a position in a #GtkTextBuffer
	 *     end = another position in the same buffer as @start
	 *     defaultEditable = default editability of the buffer
	 *
	 * Returns: whether an insertion was possible at @iter
	 */
	public bool insertRangeInteractive(TextIter iter, TextIter start, TextIter end, bool defaultEditable)
	{
		return gtk_text_buffer_insert_range_interactive(gtkTextBuffer, (iter is null) ? null : iter.getTextIterStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), defaultEditable) != 0;
	}

	/**
	 * Moves @mark to the new location @where. Emits the #GtkTextBuffer::mark-set
	 * signal as notification of the move.
	 *
	 * Params:
	 *     mark = a #GtkTextMark
	 *     where = new location for @mark in @buffer
	 */
	public void moveMark(TextMark mark, TextIter where)
	{
		gtk_text_buffer_move_mark(gtkTextBuffer, (mark is null) ? null : mark.getTextMarkStruct(), (where is null) ? null : where.getTextIterStruct());
	}

	/**
	 * Moves the mark named @name (which must exist) to location @where.
	 * See gtk_text_buffer_move_mark() for details.
	 *
	 * Params:
	 *     name = name of a mark
	 *     where = new location for mark
	 */
	public void moveMarkByName(string name, TextIter where)
	{
		gtk_text_buffer_move_mark_by_name(gtkTextBuffer, Str.toStringz(name), (where is null) ? null : where.getTextIterStruct());
	}

	/**
	 * Pastes the contents of a clipboard. If @override_location is %NULL, the
	 * pasted text will be inserted at the cursor position, or the buffer selection
	 * will be replaced if the selection is non-empty.
	 *
	 * Note: pasting is asynchronous, that is, we’ll ask for the paste data and
	 * return, and at some point later after the main loop runs, the paste data will
	 * be inserted.
	 *
	 * Params:
	 *     clipboard = the #GtkClipboard to paste from
	 *     overrideLocation = location to insert pasted text, or %NULL
	 *     defaultEditable = whether the buffer is editable by default
	 */
	public void pasteClipboard(Clipboard clipboard, TextIter overrideLocation, bool defaultEditable)
	{
		gtk_text_buffer_paste_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct(), (overrideLocation is null) ? null : overrideLocation.getTextIterStruct(), defaultEditable);
	}

	/**
	 * This function moves the “insert” and “selection_bound” marks
	 * simultaneously.  If you move them to the same place in two steps
	 * with gtk_text_buffer_move_mark(), you will temporarily select a
	 * region in between their old and new locations, which can be pretty
	 * inefficient since the temporarily-selected region will force stuff
	 * to be recalculated. This function moves them as a unit, which can
	 * be optimized.
	 *
	 * Params:
	 *     where = where to put the cursor
	 */
	public void placeCursor(TextIter where)
	{
		gtk_text_buffer_place_cursor(gtkTextBuffer, (where is null) ? null : where.getTextIterStruct());
	}

	/**
	 * This function registers a rich text deserialization @function along with
	 * its @mime_type with the passed @buffer.
	 *
	 * Params:
	 *     mimeType = the format’s mime-type
	 *     function_ = the deserialize function to register
	 *     userData = @function’s user_data
	 *     userDataDestroy = a function to call when @user_data is no longer needed
	 *
	 * Returns: the #GdkAtom that corresponds to the
	 *     newly registered format’s mime-type.
	 *
	 * Since: 2.10
	 */
	public GdkAtom registerDeserializeFormat(string mimeType, GtkTextBufferDeserializeFunc function_, void* userData, GDestroyNotify userDataDestroy)
	{
		return gtk_text_buffer_register_deserialize_format(gtkTextBuffer, Str.toStringz(mimeType), function_, userData, userDataDestroy);
	}

	/**
	 * This function registers GTK+’s internal rich text serialization
	 * format with the passed @buffer. See
	 * gtk_text_buffer_register_serialize_tagset() for details.
	 *
	 * Params:
	 *     tagsetName = an optional tagset name, on %NULL
	 *
	 * Returns: the #GdkAtom that corresponds to the
	 *     newly registered format’s mime-type.
	 *
	 * Since: 2.10
	 */
	public GdkAtom registerDeserializeTagset(string tagsetName)
	{
		return gtk_text_buffer_register_deserialize_tagset(gtkTextBuffer, Str.toStringz(tagsetName));
	}

	/**
	 * This function registers a rich text serialization @function along with
	 * its @mime_type with the passed @buffer.
	 *
	 * Params:
	 *     mimeType = the format’s mime-type
	 *     function_ = the serialize function to register
	 *     userData = @function’s user_data
	 *     userDataDestroy = a function to call when @user_data is no longer needed
	 *
	 * Returns: the #GdkAtom that corresponds to the
	 *     newly registered format’s mime-type.
	 *
	 * Since: 2.10
	 */
	public GdkAtom registerSerializeFormat(string mimeType, GtkTextBufferSerializeFunc function_, void* userData, GDestroyNotify userDataDestroy)
	{
		return gtk_text_buffer_register_serialize_format(gtkTextBuffer, Str.toStringz(mimeType), function_, userData, userDataDestroy);
	}

	/**
	 * This function registers GTK+’s internal rich text serialization
	 * format with the passed @buffer. The internal format does not comply
	 * to any standard rich text format and only works between #GtkTextBuffer
	 * instances. It is capable of serializing all of a text buffer’s tags
	 * and embedded pixbufs.
	 *
	 * This function is just a wrapper around
	 * gtk_text_buffer_register_serialize_format(). The mime type used
	 * for registering is “application/x-gtk-text-buffer-rich-text”, or
	 * “application/x-gtk-text-buffer-rich-text;format=@tagset_name” if a
	 * @tagset_name was passed.
	 *
	 * The @tagset_name can be used to restrict the transfer of rich text
	 * to buffers with compatible sets of tags, in order to avoid unknown
	 * tags from being pasted. It is probably the common case to pass an
	 * identifier != %NULL here, since the %NULL tagset requires the
	 * receiving buffer to deal with with pasting of arbitrary tags.
	 *
	 * Params:
	 *     tagsetName = an optional tagset name, on %NULL
	 *
	 * Returns: the #GdkAtom that corresponds to the
	 *     newly registered format’s mime-type.
	 *
	 * Since: 2.10
	 */
	public GdkAtom registerSerializeTagset(string tagsetName)
	{
		return gtk_text_buffer_register_serialize_tagset(gtkTextBuffer, Str.toStringz(tagsetName));
	}

	/**
	 * Removes all tags in the range between @start and @end.  Be careful
	 * with this function; it could remove tags added in code unrelated to
	 * the code you’re currently writing. That is, using this function is
	 * probably a bad idea if you have two or more unrelated code sections
	 * that add tags.
	 *
	 * Params:
	 *     start = one bound of range to be untagged
	 *     end = other bound of range to be untagged
	 */
	public void removeAllTags(TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_all_tags(gtkTextBuffer, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Removes a #GtkClipboard added with
	 * gtk_text_buffer_add_selection_clipboard().
	 *
	 * Params:
	 *     clipboard = a #GtkClipboard added to @buffer by
	 *         gtk_text_buffer_add_selection_clipboard()
	 */
	public void removeSelectionClipboard(Clipboard clipboard)
	{
		gtk_text_buffer_remove_selection_clipboard(gtkTextBuffer, (clipboard is null) ? null : clipboard.getClipboardStruct());
	}

	/**
	 * Emits the “remove-tag” signal. The default handler for the signal
	 * removes all occurrences of @tag from the given range. @start and
	 * @end don’t have to be in order.
	 *
	 * Params:
	 *     tag = a #GtkTextTag
	 *     start = one bound of range to be untagged
	 *     end = other bound of range to be untagged
	 */
	public void removeTag(TextTag tag, TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_tag(gtkTextBuffer, (tag is null) ? null : tag.getTextTagStruct(), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * Calls gtk_text_tag_table_lookup() on the buffer’s tag table to
	 * get a #GtkTextTag, then calls gtk_text_buffer_remove_tag().
	 *
	 * Params:
	 *     name = name of a #GtkTextTag
	 *     start = one bound of range to be untagged
	 *     end = other bound of range to be untagged
	 */
	public void removeTagByName(string name, TextIter start, TextIter end)
	{
		gtk_text_buffer_remove_tag_by_name(gtkTextBuffer, Str.toStringz(name), (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct());
	}

	/**
	 * This function moves the “insert” and “selection_bound” marks
	 * simultaneously.  If you move them in two steps
	 * with gtk_text_buffer_move_mark(), you will temporarily select a
	 * region in between their old and new locations, which can be pretty
	 * inefficient since the temporarily-selected region will force stuff
	 * to be recalculated. This function moves them as a unit, which can
	 * be optimized.
	 *
	 * Params:
	 *     ins = where to put the “insert” mark
	 *     bound = where to put the “selection_bound” mark
	 *
	 * Since: 2.4
	 */
	public void selectRange(TextIter ins, TextIter bound)
	{
		gtk_text_buffer_select_range(gtkTextBuffer, (ins is null) ? null : ins.getTextIterStruct(), (bound is null) ? null : bound.getTextIterStruct());
	}

	/**
	 * This function serializes the portion of text between @start
	 * and @end in the rich text format represented by @format.
	 *
	 * @formats to be used must be registered using
	 * gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset() beforehand.
	 *
	 * Params:
	 *     contentBuffer = the #GtkTextBuffer to serialize
	 *     format = the rich text format to use for serializing
	 *     start = start of block of text to serialize
	 *     end = end of block of test to serialize
	 *
	 * Returns: the serialized
	 *     data, encoded as @format
	 *
	 * Since: 2.10
	 */
	public ubyte[] serialize(TextBuffer contentBuffer, GdkAtom format, TextIter start, TextIter end)
	{
		size_t length;

		auto p = gtk_text_buffer_serialize(gtkTextBuffer, (contentBuffer is null) ? null : contentBuffer.getTextBufferStruct(), format, (start is null) ? null : start.getTextIterStruct(), (end is null) ? null : end.getTextIterStruct(), &length);

		return p[0 .. length];
	}

	/**
	 * Used to keep track of whether the buffer has been modified since the
	 * last time it was saved. Whenever the buffer is saved to disk, call
	 * gtk_text_buffer_set_modified (@buffer, FALSE). When the buffer is modified,
	 * it will automatically toggled on the modified bit again. When the modified
	 * bit flips, the buffer emits the #GtkTextBuffer::modified-changed signal.
	 *
	 * Params:
	 *     setting = modification flag setting
	 */
	public void setModified(bool setting)
	{
		gtk_text_buffer_set_modified(gtkTextBuffer, setting);
	}

	/**
	 * Deletes current contents of @buffer, and inserts @text instead. If
	 * @len is -1, @text must be nul-terminated. @text must be valid UTF-8.
	 *
	 * Params:
	 *     text = UTF-8 text to insert
	 */
	public void setText(string text)
	{
		gtk_text_buffer_set_text(gtkTextBuffer, Str.toStringz(text), cast(int)text.length);
	}

	/**
	 * This function unregisters a rich text format that was previously
	 * registered using gtk_text_buffer_register_deserialize_format() or
	 * gtk_text_buffer_register_deserialize_tagset().
	 *
	 * Params:
	 *     format = a #GdkAtom representing a registered rich text format.
	 *
	 * Since: 2.10
	 */
	public void unregisterDeserializeFormat(GdkAtom format)
	{
		gtk_text_buffer_unregister_deserialize_format(gtkTextBuffer, format);
	}

	/**
	 * This function unregisters a rich text format that was previously
	 * registered using gtk_text_buffer_register_serialize_format() or
	 * gtk_text_buffer_register_serialize_tagset()
	 *
	 * Params:
	 *     format = a #GdkAtom representing a registered rich text format.
	 *
	 * Since: 2.10
	 */
	public void unregisterSerializeFormat(GdkAtom format)
	{
		gtk_text_buffer_unregister_serialize_format(gtkTextBuffer, format);
	}

	/**
	 * The ::apply-tag signal is emitted to apply a tag to a
	 * range of text in a #GtkTextBuffer.
	 * Applying actually occurs in the default handler.
	 *
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the @start and @end iters (or has to revalidate them).
	 *
	 * See also:
	 * gtk_text_buffer_apply_tag(),
	 * gtk_text_buffer_insert_with_tags(),
	 * gtk_text_buffer_insert_range().
	 *
	 * Params:
	 *     tag = the applied tag
	 *     start = the start of the range the tag is applied to
	 *     end = the end of the range the tag is applied to
	 */
	gulong addOnApplyTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply-tag", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::begin-user-action signal is emitted at the beginning of a single
	 * user-visible operation on a #GtkTextBuffer.
	 *
	 * See also:
	 * gtk_text_buffer_begin_user_action(),
	 * gtk_text_buffer_insert_interactive(),
	 * gtk_text_buffer_insert_range_interactive(),
	 * gtk_text_buffer_delete_interactive(),
	 * gtk_text_buffer_backspace(),
	 * gtk_text_buffer_delete_selection().
	 */
	gulong addOnBeginUserAction(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin-user-action", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::changed signal is emitted when the content of a #GtkTextBuffer
	 * has changed.
	 */
	gulong addOnChanged(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::delete-range signal is emitted to delete a range
	 * from a #GtkTextBuffer.
	 *
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the @start and @end iters (or has to revalidate them).
	 * The default signal handler revalidates the @start and @end iters to
	 * both point to the location where text was deleted. Handlers
	 * which run after the default handler (see g_signal_connect_after())
	 * do not have access to the deleted text.
	 *
	 * See also: gtk_text_buffer_delete().
	 *
	 * Params:
	 *     start = the start of the range to be deleted
	 *     end = the end of the range to be deleted
	 */
	gulong addOnDeleteRange(void delegate(TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-range", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::end-user-action signal is emitted at the end of a single
	 * user-visible operation on the #GtkTextBuffer.
	 *
	 * See also:
	 * gtk_text_buffer_end_user_action(),
	 * gtk_text_buffer_insert_interactive(),
	 * gtk_text_buffer_insert_range_interactive(),
	 * gtk_text_buffer_delete_interactive(),
	 * gtk_text_buffer_backspace(),
	 * gtk_text_buffer_delete_selection(),
	 * gtk_text_buffer_backspace().
	 */
	gulong addOnEndUserAction(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end-user-action", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-child-anchor signal is emitted to insert a
	 * #GtkTextChildAnchor in a #GtkTextBuffer.
	 * Insertion actually occurs in the default handler.
	 *
	 * Note that if your handler runs before the default handler it must
	 * not invalidate the @location iter (or has to revalidate it).
	 * The default signal handler revalidates it to be placed after the
	 * inserted @anchor.
	 *
	 * See also: gtk_text_buffer_insert_child_anchor().
	 *
	 * Params:
	 *     location = position to insert @anchor in @textbuffer
	 *     anchor = the #GtkTextChildAnchor to be inserted
	 */
	gulong addOnInsertChildAnchor(void delegate(TextIter, TextChildAnchor, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-child-anchor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-pixbuf signal is emitted to insert a #GdkPixbuf
	 * in a #GtkTextBuffer. Insertion actually occurs in the default handler.
	 *
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the @location iter (or has to revalidate it).
	 * The default signal handler revalidates it to be placed after the
	 * inserted @pixbuf.
	 *
	 * See also: gtk_text_buffer_insert_pixbuf().
	 *
	 * Params:
	 *     location = position to insert @pixbuf in @textbuffer
	 *     pixbuf = the #GdkPixbuf to be inserted
	 */
	gulong addOnInsertPixbuf(void delegate(TextIter, Pixbuf, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-pixbuf", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::insert-text signal is emitted to insert text in a #GtkTextBuffer.
	 * Insertion actually occurs in the default handler.
	 *
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the @location iter (or has to revalidate it).
	 * The default signal handler revalidates it to point to the end of the
	 * inserted text.
	 *
	 * See also:
	 * gtk_text_buffer_insert(),
	 * gtk_text_buffer_insert_range().
	 *
	 * Params:
	 *     location = position to insert @text in @textbuffer
	 *     text = the UTF-8 text to be inserted
	 *     len = length of the inserted text in bytes
	 */
	gulong addOnInsertText(void delegate(TextIter, string, int, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insert-text", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::mark-deleted signal is emitted as notification
	 * after a #GtkTextMark is deleted.
	 *
	 * See also:
	 * gtk_text_buffer_delete_mark().
	 *
	 * Params:
	 *     mark = The mark that was deleted
	 */
	gulong addOnMarkDeleted(void delegate(TextMark, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mark-deleted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::mark-set signal is emitted as notification
	 * after a #GtkTextMark is set.
	 *
	 * See also:
	 * gtk_text_buffer_create_mark(),
	 * gtk_text_buffer_move_mark().
	 *
	 * Params:
	 *     location = The location of @mark in @textbuffer
	 *     mark = The mark that is set
	 */
	gulong addOnMarkSet(void delegate(TextIter, TextMark, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mark-set", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::modified-changed signal is emitted when the modified bit of a
	 * #GtkTextBuffer flips.
	 *
	 * See also:
	 * gtk_text_buffer_set_modified().
	 */
	gulong addOnModifiedChanged(void delegate(TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "modified-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The paste-done signal is emitted after paste operation has been completed.
	 * This is useful to properly scroll the view to the end of the pasted text.
	 * See gtk_text_buffer_paste_clipboard() for more details.
	 *
	 * Params:
	 *     clipboard = the #GtkClipboard pasted from
	 *
	 * Since: 2.16
	 */
	gulong addOnPasteDone(void delegate(Clipboard, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "paste-done", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::remove-tag signal is emitted to remove all occurrences of @tag from
	 * a range of text in a #GtkTextBuffer.
	 * Removal actually occurs in the default handler.
	 *
	 * Note that if your handler runs before the default handler it must not
	 * invalidate the @start and @end iters (or has to revalidate them).
	 *
	 * See also:
	 * gtk_text_buffer_remove_tag().
	 *
	 * Params:
	 *     tag = the tag to be removed
	 *     start = the start of the range the tag is removed from
	 *     end = the end of the range the tag is removed from
	 */
	gulong addOnRemoveTag(void delegate(TextTag, TextIter, TextIter, TextBuffer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "remove-tag", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
