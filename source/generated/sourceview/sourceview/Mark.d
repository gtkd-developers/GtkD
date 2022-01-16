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


module sourceview.Mark;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.TextMark;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Mark object for [class@Buffer].
 * 
 * A `GtkSourceMark` marks a position in the text where you want to display
 * additional info. It is based on [class@Gtk.TextMark] and thus is still valid after
 * the text has changed though its position may change.
 * 
 * `GtkSourceMark`s are organized in categories which you have to set
 * when you create the mark. Each category can have a priority, a pixbuf and
 * other associated attributes. See [method@View.set_mark_attributes].
 * The pixbuf will be displayed in the margin at the line where the mark
 * residents if the [property@View:show-line-marks] property is set to %TRUE. If
 * there are multiple marks in the same line, the pixbufs will be drawn on top
 * of each other. The mark with the highest priority will be drawn on top.
 */
public class Mark : TextMark
{
	/** the main Gtk struct */
	protected GtkSourceMark* gtkSourceMark;

	/** Get the main Gtk struct */
	public GtkSourceMark* getMarkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceMark;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceMark;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceMark* gtkSourceMark, bool ownedRef = false)
	{
		this.gtkSourceMark = gtkSourceMark;
		super(cast(GtkTextMark*)gtkSourceMark, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_mark_get_type();
	}

	/**
	 * Creates a text mark.
	 *
	 * Add it to a buffer using [method@Gtk.TextBuffer.add_mark].
	 * If name is NULL, the mark is anonymous; otherwise, the mark can be retrieved
	 * by name using [method@Gtk.TextBuffer.get_mark].
	 * Normally marks are created using the utility function
	 * [method@Buffer.create_source_mark].
	 *
	 * Params:
	 *     name = Name of the #GtkSourceMark or %NULL
	 *     category = is used to classify marks according to common characteristics
	 *         (e.g. all the marks representing a bookmark could belong to the "bookmark"
	 *         category, or all the marks representing a compilation error could belong
	 *         to "error" category).
	 *
	 * Returns: a new #GtkSourceMark that can be added using [method@Gtk.TextBuffer.add_mark].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string category)
	{
		auto __p = gtk_source_mark_new(Str.toStringz(name), Str.toStringz(category));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceMark*) __p, true);
	}

	/**
	 * Returns the mark category.
	 *
	 * Returns: the category of the #GtkSourceMark.
	 */
	public string getCategory()
	{
		return Str.toString(gtk_source_mark_get_category(gtkSourceMark));
	}

	/**
	 * Returns the next `GtkSourceMark` in the buffer or %NULL if the mark
	 * was not added to a buffer.
	 *
	 * If there is no next mark, %NULL will be returned.
	 *
	 * If @category is %NULL, looks for marks of any category.
	 *
	 * Params:
	 *     category = a string specifying the mark category, or %NULL.
	 *
	 * Returns: the next #GtkSourceMark, or %NULL.
	 */
	public Mark next(string category)
	{
		auto __p = gtk_source_mark_next(gtkSourceMark, Str.toStringz(category));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Mark)(cast(GtkSourceMark*) __p);
	}

	/**
	 * Returns the previous `GtkSourceMark` in the buffer or %NULL if the mark
	 * was not added to a buffer.
	 *
	 * If there is no previous mark, %NULL is returned.
	 *
	 * If @category is %NULL, looks for marks of any category
	 *
	 * Params:
	 *     category = a string specifying the mark category, or %NULL.
	 *
	 * Returns: the previous #GtkSourceMark, or %NULL.
	 */
	public Mark prev(string category)
	{
		auto __p = gtk_source_mark_prev(gtkSourceMark, Str.toStringz(category));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Mark)(cast(GtkSourceMark*) __p);
	}
}
