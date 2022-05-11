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


module sourceview.Snippet;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.SnippetChunk;
private import sourceview.SnippetContext;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Quick insertion code snippets.
 * 
 * The `GtkSourceSnippet` represents a series of chunks that can quickly be
 * inserted into the [class@View].
 * 
 * Snippets are defined in XML files which are loaded by the
 * [class@SnippetManager]. Alternatively, applications can create snippets
 * on demand and insert them into the [class@View] using
 * [method@View.push_snippet].
 * 
 * Snippet chunks can reference other snippet chunks as well as post-process
 * the values from other chunks such as capitalization.
 */
public class Snippet : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSnippet* gtkSourceSnippet;

	/** Get the main Gtk struct */
	public GtkSourceSnippet* getSnippetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSnippet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSnippet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSnippet* gtkSourceSnippet, bool ownedRef = false)
	{
		this.gtkSourceSnippet = gtkSourceSnippet;
		super(cast(GObject*)gtkSourceSnippet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_snippet_get_type();
	}

	/**
	 * Creates a new #GtkSourceSnippet
	 *
	 * Params:
	 *     trigger = the trigger word
	 *     languageId = the source language
	 *
	 * Returns: A new #GtkSourceSnippet
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string trigger, string languageId)
	{
		auto __p = gtk_source_snippet_new(Str.toStringz(trigger), Str.toStringz(languageId));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSnippet*) __p, true);
	}

	/**
	 * Appends @chunk to the @snippet.
	 *
	 * This may only be called before the snippet has been expanded.
	 *
	 * Params:
	 *     chunk = a #GtkSourceSnippetChunk
	 */
	public void addChunk(SnippetChunk chunk)
	{
		gtk_source_snippet_add_chunk(gtkSourceSnippet, (chunk is null) ? null : chunk.getSnippetChunkStruct());
	}

	/**
	 * Does a deep copy of the snippet.
	 *
	 * Returns: A new #GtkSourceSnippet
	 */
	public Snippet copy()
	{
		auto __p = gtk_source_snippet_copy(gtkSourceSnippet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Snippet)(cast(GtkSourceSnippet*) __p, true);
	}

	/**
	 * Gets the context used for expanding the snippet.
	 *
	 * Returns: an #GtkSourceSnippetContext
	 */
	public SnippetContext getContext()
	{
		auto __p = gtk_source_snippet_get_context(gtkSourceSnippet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SnippetContext)(cast(GtkSourceSnippetContext*) __p);
	}

	/**
	 * Gets the description for the snippet.
	 */
	public string getDescription()
	{
		return Str.toString(gtk_source_snippet_get_description(gtkSourceSnippet));
	}

	/**
	 * Gets the current focus for the snippet.
	 *
	 * This is changed as the user tabs through focus locations.
	 *
	 * Returns: The focus position, or -1 if unset.
	 */
	public int getFocusPosition()
	{
		return gtk_source_snippet_get_focus_position(gtkSourceSnippet);
	}

	/**
	 * Gets the language-id used for the source snippet.
	 *
	 * The language identifier should be one that matches a
	 * source language [property@Language:id] property.
	 *
	 * Returns: the language identifier
	 */
	public string getLanguageId()
	{
		return Str.toString(gtk_source_snippet_get_language_id(gtkSourceSnippet));
	}

	/**
	 * Gets the number of chunks in the snippet.
	 *
	 * Note that not all chunks are editable.
	 *
	 * Returns: The number of chunks.
	 */
	public uint getNChunks()
	{
		return gtk_source_snippet_get_n_chunks(gtkSourceSnippet);
	}

	/**
	 * Gets the name for the snippet.
	 */
	public string getName()
	{
		return Str.toString(gtk_source_snippet_get_name(gtkSourceSnippet));
	}

	/**
	 * Gets the chunk at @nth.
	 *
	 * Params:
	 *     nth = the nth chunk to get
	 *
	 * Returns: an #GtkSourceSnippetChunk
	 */
	public SnippetChunk getNthChunk(uint nth)
	{
		auto __p = gtk_source_snippet_get_nth_chunk(gtkSourceSnippet, nth);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SnippetChunk)(cast(GtkSourceSnippetChunk*) __p);
	}

	/**
	 * Gets the trigger for the source snippet.
	 *
	 * A trigger is a word that can be expanded into the full snippet when
	 * the user presses Tab.
	 *
	 * Returns: A string or %NULL
	 */
	public string getTrigger()
	{
		return Str.toString(gtk_source_snippet_get_trigger(gtkSourceSnippet));
	}

	/**
	 * Sets the description for the snippet.
	 *
	 * Params:
	 *     description = the snippet description
	 */
	public void setDescription(string description)
	{
		gtk_source_snippet_set_description(gtkSourceSnippet, Str.toStringz(description));
	}

	/**
	 * Sets the language identifier for the snippet.
	 *
	 * This should match the [property@Language:id] identifier.
	 *
	 * Params:
	 *     languageId = the language identifier for the snippet
	 */
	public void setLanguageId(string languageId)
	{
		gtk_source_snippet_set_language_id(gtkSourceSnippet, Str.toStringz(languageId));
	}

	/**
	 * Sets the name for the snippet.
	 *
	 * Params:
	 *     name = the snippet name
	 */
	public void setName(string name)
	{
		gtk_source_snippet_set_name(gtkSourceSnippet, Str.toStringz(name));
	}

	/**
	 * Sets the trigger for the snippet.
	 *
	 * Params:
	 *     trigger = the trigger word
	 */
	public void setTrigger(string trigger)
	{
		gtk_source_snippet_set_trigger(gtkSourceSnippet, Str.toStringz(trigger));
	}
}
