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


module gtk.IMContextSimple;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.IMContext;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkIMContextSimple is a simple input method context supporting table-based
 * input methods. It has a built-in table of compose sequences that is derived
 * from the X11 Compose files.
 * 
 * GtkIMContextSimple reads additional compose sequences from the first of the
 * following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
 * /usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
 * Compose file). The syntax of these files is described in the Compose(5)
 * manual page.
 * 
 * ## Unicode characters
 * 
 * GtkIMContextSimple also supports numeric entry of Unicode characters
 * by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
 * For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
 * G WITH CEDILLA, i.e. ģ.
 * 
 * ## Emoji
 * 
 * GtkIMContextSimple also supports entry of Emoji by their name.
 * This works by first typing Ctrl-Shift-e, followed by an Emoji name.
 * 
 * The following names are supported:
 * - :-) 🙂
 * - 8-) 😍
 * - <3 ❤
 * - kiss 💋
 * - grin 😁
 * - joy 😂
 * - :-* 😚
 * - xD 😆
 * - like 👍
 * - dislike 👎
 * - up 👆
 * - v ✌
 * - ok 👌
 * - B-) 😎
 * - ;-) 😉
 * - ;-P 😜
 * - :-p 😋
 * - 3( 😔
 * - :-( 😞
 * - :] 😏
 * - :'( 😢
 * - :_( 😭
 * - :(( 😩
 * - :o 😨
 * - :| 😐
 * - 3-) 😌
 * - >( 😠
 * - >(( 😡
 * - O:) 😇
 * - ;o 😰
 * - 8| 😳
 * - 8o 😲
 * - :X 😷
 * - }:) 😈
 */
public class IMContextSimple : IMContext
{
	/** the main Gtk struct */
	protected GtkIMContextSimple* gtkIMContextSimple;

	/** Get the main Gtk struct */
	public GtkIMContextSimple* getIMContextSimpleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIMContextSimple;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIMContextSimple;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIMContextSimple* gtkIMContextSimple, bool ownedRef = false)
	{
		this.gtkIMContextSimple = gtkIMContextSimple;
		super(cast(GtkIMContext*)gtkIMContextSimple, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_im_context_simple_get_type();
	}

	/**
	 * Creates a new #GtkIMContextSimple.
	 *
	 * Returns: a new #GtkIMContextSimple.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_im_context_simple_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIMContextSimple*) p, true);
	}

	/** */
	public void addComposeFile(string composeFile)
	{
		gtk_im_context_simple_add_compose_file(gtkIMContextSimple, Str.toStringz(composeFile));
	}

	/**
	 * Adds an additional table to search to the input context.
	 * Each row of the table consists of @max_seq_len key symbols
	 * followed by two #guint16 interpreted as the high and low
	 * words of a #gunicode value. Tables are searched starting
	 * from the last added.
	 *
	 * The table must be sorted in dictionary order on the
	 * numeric value of the key symbol fields. (Values beyond
	 * the length of the sequence should be zero.)
	 *
	 * Params:
	 *     data = the table
	 *     maxSeqLen = Maximum length of a sequence in the table
	 *         (cannot be greater than #GTK_MAX_COMPOSE_LEN)
	 *     nSeqs = number of sequences in the table
	 */
	public void addTable(ushort[] data, int maxSeqLen, int nSeqs)
	{
		gtk_im_context_simple_add_table(gtkIMContextSimple, data.ptr, maxSeqLen, nSeqs);
	}
}
