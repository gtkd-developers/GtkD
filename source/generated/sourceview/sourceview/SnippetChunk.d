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


module sourceview.SnippetChunk;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.SnippetContext;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A chunk of text within the source snippet.
 * 
 * The `GtkSourceSnippetChunk` represents a single chunk of text that
 * may or may not be an edit point within the snippet. Chunks that are
 * an edit point (also called a tab stop) have the
 * [property@SnippetChunk:focus-position] property set.
 */
public class SnippetChunk : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSnippetChunk* gtkSourceSnippetChunk;

	/** Get the main Gtk struct */
	public GtkSourceSnippetChunk* getSnippetChunkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSnippetChunk;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSnippetChunk;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSnippetChunk* gtkSourceSnippetChunk, bool ownedRef = false)
	{
		this.gtkSourceSnippetChunk = gtkSourceSnippetChunk;
		super(cast(GObject*)gtkSourceSnippetChunk, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_snippet_chunk_get_type();
	}

	/**
	 * Create a new `GtkSourceSnippetChunk` that can be added to
	 * a [class@Snippet].
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_snippet_chunk_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSnippetChunk*) __p);
	}

	/**
	 * Copies the source snippet.
	 *
	 * Returns: A #GtkSourceSnippetChunk
	 */
	public SnippetChunk copy()
	{
		auto __p = gtk_source_snippet_chunk_copy(gtkSourceSnippetChunk);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SnippetChunk)(cast(GtkSourceSnippetChunk*) __p, true);
	}

	/**
	 * Gets the context for the snippet insertion.
	 *
	 * Returns: A #GtkSourceSnippetContext
	 */
	public SnippetContext getContext()
	{
		auto __p = gtk_source_snippet_chunk_get_context(gtkSourceSnippetChunk);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SnippetContext)(cast(GtkSourceSnippetContext*) __p);
	}

	/**
	 * Gets the [property@SnippetChunk:focus-position].
	 *
	 * The focus-position is used to determine how many tabs it takes for the
	 * snippet to advanced to this chunk.
	 *
	 * A focus-position of zero will be the last focus position of the snippet
	 * and snippet editing ends when it has been reached.
	 *
	 * A focus-position of -1 means the chunk cannot be focused by the user.
	 *
	 * Returns: the focus-position
	 */
	public int getFocusPosition()
	{
		return gtk_source_snippet_chunk_get_focus_position(gtkSourceSnippetChunk);
	}

	/**
	 * Gets the specification for the chunk.
	 *
	 * The specification is evaluated for variables when other chunks are edited
	 * within the snippet context. If the user has changed the text, the
	 * [property@SnippetChunk:text] and [property@SnippetChunk:text-set] properties
	 * are updated.
	 *
	 * Returns: the specification, if any
	 */
	public string getSpec()
	{
		return Str.toString(gtk_source_snippet_chunk_get_spec(gtkSourceSnippetChunk));
	}

	/**
	 * Gets the [property@SnippetChunk:text] property.
	 *
	 * The text property is updated when the user edits the text of the chunk.
	 * If it has not been edited, the [property@SnippetChunk:spec] property is
	 * returned.
	 *
	 * Returns: the text of the chunk
	 */
	public string getText()
	{
		return Str.toString(gtk_source_snippet_chunk_get_text(gtkSourceSnippetChunk));
	}

	/**
	 * Gets the [property@SnippetChunk:text-set] property.
	 *
	 * This is typically set when the user has edited a snippet chunk.
	 */
	public bool getTextSet()
	{
		return gtk_source_snippet_chunk_get_text_set(gtkSourceSnippetChunk) != 0;
	}

	/** */
	public string getTooltipText()
	{
		return Str.toString(gtk_source_snippet_chunk_get_tooltip_text(gtkSourceSnippetChunk));
	}

	/** */
	public void setContext(SnippetContext context)
	{
		gtk_source_snippet_chunk_set_context(gtkSourceSnippetChunk, (context is null) ? null : context.getSnippetContextStruct());
	}

	/**
	 * Sets the [property@SnippetChunk:focus-position] property.
	 *
	 * The focus-position is used to determine how many tabs it takes for the
	 * snippet to advanced to this chunk.
	 *
	 * A focus-position of zero will be the last focus position of the snippet
	 * and snippet editing ends when it has been reached.
	 *
	 * A focus-position of -1 means the chunk cannot be focused by the user.
	 *
	 * Params:
	 *     focusPosition = the focus-position
	 */
	public void setFocusPosition(int focusPosition)
	{
		gtk_source_snippet_chunk_set_focus_position(gtkSourceSnippetChunk, focusPosition);
	}

	/**
	 * Sets the specification for the chunk.
	 *
	 * The specification is evaluated for variables when other chunks are edited
	 * within the snippet context. If the user has changed the text, the
	 * [property@SnippetChunk:text and] [property@SnippetChunk:text-set] properties
	 * are updated.
	 *
	 * Params:
	 *     spec = the new specification for the chunk
	 */
	public void setSpec(string spec)
	{
		gtk_source_snippet_chunk_set_spec(gtkSourceSnippetChunk, Str.toStringz(spec));
	}

	/**
	 * Sets the text for the snippet chunk.
	 *
	 * This is usually used by the snippet engine to update the text, but may
	 * be useful when creating custom snippets to avoid expansion of any
	 * specification.
	 *
	 * Params:
	 *     text = the text of the property
	 */
	public void setText(string text)
	{
		gtk_source_snippet_chunk_set_text(gtkSourceSnippetChunk, Str.toStringz(text));
	}

	/**
	 * Sets the [property@SnippetChunk:text-set] property.
	 *
	 * This is typically set when the user has edited a snippet chunk by the
	 * snippet engine.
	 *
	 * Params:
	 *     textSet = the property value
	 */
	public void setTextSet(bool textSet)
	{
		gtk_source_snippet_chunk_set_text_set(gtkSourceSnippetChunk, textSet);
	}

	/** */
	public void setTooltipText(string tooltipText)
	{
		gtk_source_snippet_chunk_set_tooltip_text(gtkSourceSnippetChunk, Str.toStringz(tooltipText));
	}
}
