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


module gtk.EmojiChooser;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Popover;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * The `GtkEmojiChooser` is used by text widgets such as `GtkEntry` or
 * `GtkTextView` to let users insert Emoji characters.
 * 
 * ![An example GtkEmojiChooser](emojichooser.png)
 * 
 * `GtkEmojiChooser` emits the [signal@Gtk.EmojiChooser::emoji-picked]
 * signal when an Emoji is selected.
 * 
 * # CSS nodes
 * 
 * ```
 * popover
 * ├── box.emoji-searchbar
 * │   ╰── entry.search
 * ╰── box.emoji-toolbar
 * ├── button.image-button.emoji-section
 * ├── ...
 * ╰── button.image-button.emoji-section
 * ```
 * 
 * Every `GtkEmojiChooser` consists of a main node called popover.
 * The contents of the popover are largely implementation defined
 * and supposed to inherit general styles.
 * The top searchbar used to search emoji and gets the .emoji-searchbar
 * style class itself.
 * The bottom toolbar used to switch between different emoji categories
 * consists of buttons with the .emoji-section style class and gets the
 * .emoji-toolbar style class itself.
 */
public class EmojiChooser : Popover
{
	/** the main Gtk struct */
	protected GtkEmojiChooser* gtkEmojiChooser;

	/** Get the main Gtk struct */
	public GtkEmojiChooser* getEmojiChooserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEmojiChooser;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEmojiChooser;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEmojiChooser* gtkEmojiChooser, bool ownedRef = false)
	{
		this.gtkEmojiChooser = gtkEmojiChooser;
		super(cast(GtkPopover*)gtkEmojiChooser, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_emoji_chooser_get_type();
	}

	/**
	 * Creates a new `GtkEmojiChooser`.
	 *
	 * Returns: a new `GtkEmojiChooser`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_emoji_chooser_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEmojiChooser*) __p);
	}

	/**
	 * Emitted when the user selects an Emoji.
	 *
	 * Params:
	 *     text = the Unicode sequence for the picked Emoji, in UTF-8
	 */
	gulong addOnEmojiPicked(void delegate(string, EmojiChooser) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "emoji-picked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
