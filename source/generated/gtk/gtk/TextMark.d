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


module gtk.TextMark;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.TextBuffer;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkTextMark` is a position in a `GtkTextbuffer` that is preserved
 * across modifications.
 * 
 * You may wish to begin by reading the
 * [text widget conceptual overview](section-text-widget.html),
 * which gives an overview of all the objects and data types
 * related to the text widget and how they work together.
 * 
 * A `GtkTextMark` is like a bookmark in a text buffer; it preserves
 * a position in the text. You can convert the mark to an iterator using
 * [method@Gtk.TextBuffer.get_iter_at_mark]. Unlike iterators, marks remain
 * valid across buffer mutations, because their behavior is defined when
 * text is inserted or deleted. When text containing a mark is deleted,
 * the mark remains in the position originally occupied by the deleted
 * text. When text is inserted at a mark, a mark with “left gravity” will
 * be moved to the beginning of the newly-inserted text, and a mark with
 * “right gravity” will be moved to the end.
 * 
 * Note that “left” and “right” here refer to logical direction (left
 * is the toward the start of the buffer); in some languages such as
 * Hebrew the logically-leftmost text is not actually on the left when
 * displayed.
 * 
 * Marks are reference counted, but the reference count only controls
 * the validity of the memory; marks can be deleted from the buffer at
 * any time with [method@Gtk.TextBuffer.delete_mark]. Once deleted from
 * the buffer, a mark is essentially useless.
 * 
 * Marks optionally have names; these can be convenient to avoid passing
 * the `GtkTextMark` object around.
 * 
 * Marks are typically created using the [method@Gtk.TextBuffer.create_mark]
 * function.
 */
public class TextMark : ObjectG
{
	/** the main Gtk struct */
	protected GtkTextMark* gtkTextMark;

	/** Get the main Gtk struct */
	public GtkTextMark* getTextMarkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextMark;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextMark;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextMark* gtkTextMark, bool ownedRef = false)
	{
		this.gtkTextMark = gtkTextMark;
		super(cast(GObject*)gtkTextMark, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_text_mark_get_type();
	}

	/**
	 * Creates a text mark.
	 *
	 * Add it to a buffer using [method@Gtk.TextBuffer.add_mark].
	 * If @name is %NULL, the mark is anonymous; otherwise, the mark can be
	 * retrieved by name using [method@Gtk.TextBuffer.get_mark]. If a mark
	 * has left gravity, and text is inserted at the mark’s current location,
	 * the mark will be moved to the left of the newly-inserted text. If the
	 * mark has right gravity (@left_gravity = %FALSE), the mark will end up
	 * on the right of newly-inserted text. The standard left-to-right cursor
	 * is a mark with right gravity (when you type, the cursor stays on the
	 * right side of the text you’re typing).
	 *
	 * Params:
	 *     name = mark name
	 *     leftGravity = whether the mark should have left gravity
	 *
	 * Returns: new `GtkTextMark`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, bool leftGravity)
	{
		auto __p = gtk_text_mark_new(Str.toStringz(name), leftGravity);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextMark*) __p, true);
	}

	/**
	 * Gets the buffer this mark is located inside.
	 *
	 * Returns %NULL if the mark is deleted.
	 *
	 * Returns: the mark’s `GtkTextBuffer`
	 */
	public TextBuffer getBuffer()
	{
		auto __p = gtk_text_mark_get_buffer(gtkTextMark);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextBuffer)(cast(GtkTextBuffer*) __p);
	}

	/**
	 * Returns %TRUE if the mark has been removed from its buffer.
	 *
	 * See [method@Gtk.TextBuffer.add_mark] for a way to add it
	 * to a buffer again.
	 *
	 * Returns: whether the mark is deleted
	 */
	public bool getDeleted()
	{
		return gtk_text_mark_get_deleted(gtkTextMark) != 0;
	}

	/**
	 * Determines whether the mark has left gravity.
	 *
	 * Returns: %TRUE if the mark has left gravity, %FALSE otherwise
	 */
	public bool getLeftGravity()
	{
		return gtk_text_mark_get_left_gravity(gtkTextMark) != 0;
	}

	/**
	 * Returns the mark name.
	 *
	 * Returns %NULL for anonymous marks.
	 *
	 * Returns: mark name
	 */
	public string getName()
	{
		return Str.toString(gtk_text_mark_get_name(gtkTextMark));
	}

	/**
	 * Returns %TRUE if the mark is visible.
	 *
	 * A cursor is displayed for visible marks.
	 *
	 * Returns: %TRUE if visible
	 */
	public bool getVisible()
	{
		return gtk_text_mark_get_visible(gtkTextMark) != 0;
	}

	/** */
	public void setVisible(bool setting)
	{
		gtk_text_mark_set_visible(gtkTextMark, setting);
	}
}
