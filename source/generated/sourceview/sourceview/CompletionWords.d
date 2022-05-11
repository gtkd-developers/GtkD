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


module sourceview.CompletionWords;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.TextBuffer;
private import sourceview.CompletionProviderIF;
private import sourceview.CompletionProviderT;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A [iface@CompletionProvider] for the completion of words.
 * 
 * The `GtkSourceCompletionWords` is an example of an implementation of
 * the [iface@CompletionProvider] interface. The proposals are words
 * appearing in the registered [class@Gtk.TextBuffer]s.
 */
public class CompletionWords : ObjectG, CompletionProviderIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletionWords* gtkSourceCompletionWords;

	/** Get the main Gtk struct */
	public GtkSourceCompletionWords* getCompletionWordsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionWords;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionWords;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionWords* gtkSourceCompletionWords, bool ownedRef = false)
	{
		this.gtkSourceCompletionWords = gtkSourceCompletionWords;
		super(cast(GObject*)gtkSourceCompletionWords, ownedRef);
	}

	// add the CompletionProvider capabilities
	mixin CompletionProviderT!(GtkSourceCompletionWords);


	/** */
	public static GType getType()
	{
		return gtk_source_completion_words_get_type();
	}

	/**
	 *
	 * Params:
	 *     title = The title for the provider, or %NULL.
	 * Returns: a new #GtkSourceCompletionWords provider
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title)
	{
		auto __p = gtk_source_completion_words_new(Str.toStringz(title));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceCompletionWords*) __p, true);
	}

	/**
	 * Registers @buffer in the @words provider.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 */
	public void register(TextBuffer buffer)
	{
		gtk_source_completion_words_register(gtkSourceCompletionWords, (buffer is null) ? null : buffer.getTextBufferStruct());
	}

	/**
	 * Unregisters @buffer from the @words provider.
	 *
	 * Params:
	 *     buffer = a #GtkTextBuffer
	 */
	public void unregister(TextBuffer buffer)
	{
		gtk_source_completion_words_unregister(gtkSourceCompletionWords, (buffer is null) ? null : buffer.getTextBufferStruct());
	}
}
