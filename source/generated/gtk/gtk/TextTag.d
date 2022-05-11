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


module gtk.TextTag;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A tag that can be applied to text contained in a `GtkTextBuffer`.
 * 
 * You may wish to begin by reading the
 * [text widget conceptual overview](section-text-widget.html),
 * which gives an overview of all the objects and data types
 * related to the text widget and how they work together.
 * 
 * Tags should be in the [class@Gtk.TextTagTable] for a given
 * `GtkTextBuffer` before using them with that buffer.
 * 
 * [method@Gtk.TextBuffer.create_tag] is the best way to create tags.
 * See “gtk4-demo” for numerous examples.
 * 
 * For each property of `GtkTextTag`, there is a “set” property, e.g.
 * “font-set” corresponds to “font”. These “set” properties reflect
 * whether a property has been set or not.
 * 
 * They are maintained by GTK and you should not set them independently.
 */
public class TextTag : ObjectG
{
	/** the main Gtk struct */
	protected GtkTextTag* gtkTextTag;

	/** Get the main Gtk struct */
	public GtkTextTag* getTextTagStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextTag;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextTag;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextTag* gtkTextTag, bool ownedRef = false)
	{
		this.gtkTextTag = gtkTextTag;
		super(cast(GObject*)gtkTextTag, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_text_tag_get_type();
	}

	/**
	 * Creates a `GtkTextTag`.
	 *
	 * Params:
	 *     name = tag name
	 *
	 * Returns: a new `GtkTextTag`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto __p = gtk_text_tag_new(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextTag*) __p, true);
	}

	/**
	 * Emits the [signal@Gtk.TextTagTable::tag-changed] signal on the
	 * `GtkTextTagTable` where the tag is included.
	 *
	 * The signal is already emitted when setting a `GtkTextTag` property.
	 * This function is useful for a `GtkTextTag` subclass.
	 *
	 * Params:
	 *     sizeChanged = whether the change affects the `GtkTextView` layout
	 */
	public void changed(bool sizeChanged)
	{
		gtk_text_tag_changed(gtkTextTag, sizeChanged);
	}

	/**
	 * Get the tag priority.
	 *
	 * Returns: The tag’s priority.
	 */
	public int getPriority()
	{
		return gtk_text_tag_get_priority(gtkTextTag);
	}

	/**
	 * Sets the priority of a `GtkTextTag`.
	 *
	 * Valid priorities start at 0 and go to one less than
	 * [method@Gtk.TextTagTable.get_size]. Each tag in a table
	 * has a unique priority; setting the priority of one tag shifts
	 * the priorities of all the other tags in the table to maintain
	 * a unique priority for each tag.
	 *
	 * Higher priority tags “win” if two tags both set the same text
	 * attribute. When adding a tag to a tag table, it will be assigned
	 * the highest priority in the table by default; so normally the
	 * precedence of a set of tags is the order in which they were added
	 * to the table, or created with [method@Gtk.TextBuffer.create_tag],
	 * which adds the tag to the buffer’s table automatically.
	 *
	 * Params:
	 *     priority = the new priority
	 */
	public void setPriority(int priority)
	{
		gtk_text_tag_set_priority(gtkTextTag, priority);
	}
}
