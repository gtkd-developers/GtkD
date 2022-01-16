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


module gtk.TextTagTable;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.TextTag;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * The collection of tags in a `GtkTextBuffer`
 * 
 * You may wish to begin by reading the
 * [text widget conceptual overview](section-text-widget.html),
 * which gives an overview of all the objects and data types
 * related to the text widget and how they work together.
 * 
 * # GtkTextTagTables as GtkBuildable
 * 
 * The `GtkTextTagTable` implementation of the `GtkBuildable` interface
 * supports adding tags by specifying “tag” as the “type” attribute
 * of a <child> element.
 * 
 * An example of a UI definition fragment specifying tags:
 * ```xml
 * <object class="GtkTextTagTable">
 * <child type="tag">
 * <object class="GtkTextTag"/>
 * </child>
 * </object>
 * ```
 */
public class TextTagTable : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkTextTagTable* gtkTextTagTable;

	/** Get the main Gtk struct */
	public GtkTextTagTable* getTextTagTableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextTagTable;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextTagTable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextTagTable* gtkTextTagTable, bool ownedRef = false)
	{
		this.gtkTextTagTable = gtkTextTagTable;
		super(cast(GObject*)gtkTextTagTable, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkTextTagTable);


	/** */
	public static GType getType()
	{
		return gtk_text_tag_table_get_type();
	}

	/**
	 * Creates a new `GtkTextTagTable`.
	 *
	 * The table contains no tags by default.
	 *
	 * Returns: a new `GtkTextTagTable`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_text_tag_table_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextTagTable*) __p, true);
	}

	/**
	 * Add a tag to the table.
	 *
	 * The tag is assigned the highest priority in the table.
	 *
	 * @tag must not be in a tag table already, and may not have
	 * the same name as an already-added tag.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 *
	 * Returns: %TRUE on success.
	 */
	public bool add(TextTag tag)
	{
		return gtk_text_tag_table_add(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct()) != 0;
	}

	alias foreac = foreach_;
	/**
	 * Calls @func on each tag in @table, with user data @data.
	 *
	 * Note that the table may not be modified while iterating
	 * over it (you can’t add/remove tags).
	 *
	 * Params:
	 *     func = a function to call on each tag
	 *     data = user data
	 */
	public void foreach_(GtkTextTagTableForeach func, void* data)
	{
		gtk_text_tag_table_foreach(gtkTextTagTable, func, data);
	}

	/**
	 * Returns the size of the table (number of tags)
	 *
	 * Returns: number of tags in @table
	 */
	public int getSize()
	{
		return gtk_text_tag_table_get_size(gtkTextTagTable);
	}

	/**
	 * Look up a named tag.
	 *
	 * Params:
	 *     name = name of a tag
	 *
	 * Returns: The tag
	 */
	public TextTag lookup(string name)
	{
		auto __p = gtk_text_tag_table_lookup(gtkTextTagTable, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TextTag)(cast(GtkTextTag*) __p);
	}

	/**
	 * Remove a tag from the table.
	 *
	 * If a `GtkTextBuffer` has @table as its tag table, the tag is
	 * removed from the buffer. The table’s reference to the tag is
	 * removed, so the tag will end up destroyed if you don’t have
	 * a reference to it.
	 *
	 * Params:
	 *     tag = a `GtkTextTag`
	 */
	public void remove(TextTag tag)
	{
		gtk_text_tag_table_remove(gtkTextTagTable, (tag is null) ? null : tag.getTextTagStruct());
	}

	/**
	 * Emitted every time a new tag is added in the `GtkTextTagTable`.
	 *
	 * Params:
	 *     tag = the added tag.
	 */
	gulong addOnTagAdded(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tag-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted every time a tag in the `GtkTextTagTable` changes.
	 *
	 * Params:
	 *     tag = the changed tag.
	 *     sizeChanged = whether the change affects the `GtkTextView` layout.
	 */
	gulong addOnTagChanged(void delegate(TextTag, bool, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tag-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted every time a tag is removed from the `GtkTextTagTable`.
	 *
	 * The @tag is still valid by the time the signal is emitted, but
	 * it is not associated with a tag table any more.
	 *
	 * Params:
	 *     tag = the removed tag.
	 */
	gulong addOnTagRemoved(void delegate(TextTag, TextTagTable) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tag-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
