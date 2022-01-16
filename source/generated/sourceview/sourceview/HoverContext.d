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


module sourceview.HoverContext;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.TextIter;
private import sourceview.Buffer;
private import sourceview.View;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Context for populating [class@HoverDisplay] contents.
 * 
 * `GtkSourceHoverContext` contains information about the request to populate
 * contents for a [class@HoverDisplay].
 * 
 * It can be used to retrieve the [class@View], [class@Buffer], and
 * [struct@Gtk.TextIter] for the regions of text which are being displayed.
 * 
 * Use [method@HoverContext.get_bounds] to get the word that was
 * requested. [method@HoverContext.get_iter] will get you the location
 * of the pointer when the request was made.
 */
public class HoverContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceHoverContext* gtkSourceHoverContext;

	/** Get the main Gtk struct */
	public GtkSourceHoverContext* getHoverContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceHoverContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceHoverContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceHoverContext* gtkSourceHoverContext, bool ownedRef = false)
	{
		this.gtkSourceHoverContext = gtkSourceHoverContext;
		super(cast(GObject*)gtkSourceHoverContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_hover_context_get_type();
	}

	/**
	 * Gets the current word bounds of the hover.
	 *
	 * If @begin is non-%NULL, it will be set to the start position of the
	 * current word being hovered.
	 *
	 * If @end is non-%NULL, it will be set to the end position for the
	 * current word being hovered.
	 *
	 * Params:
	 *     begin = a #GtkTextIter
	 *     end = a #GtkTextIter
	 *
	 * Returns: %TRUE if the marks are still valid and @begin or @end was set.
	 */
	public bool getBounds(out TextIter begin, out TextIter end)
	{
		GtkTextIter* outbegin = sliceNew!GtkTextIter();
		GtkTextIter* outend = sliceNew!GtkTextIter();

		auto __p = gtk_source_hover_context_get_bounds(gtkSourceHoverContext, outbegin, outend) != 0;

		begin = ObjectG.getDObject!(TextIter)(outbegin, true);
		end = ObjectG.getDObject!(TextIter)(outend, true);

		return __p;
	}

	/**
	 * A convenience function to get the buffer.
	 *
	 * Returns: The #GtkSourceBuffer for the view
	 */
	public Buffer getBuffer()
	{
		auto __p = gtk_source_hover_context_get_buffer(gtkSourceHoverContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GtkSourceBuffer*) __p);
	}

	/** */
	public bool getIter(TextIter iter)
	{
		return gtk_source_hover_context_get_iter(gtkSourceHoverContext, (iter is null) ? null : iter.getTextIterStruct()) != 0;
	}

	/**
	 * Returns: the #GtkSourceView that owns the context
	 */
	public View getView()
	{
		auto __p = gtk_source_hover_context_get_view(gtkSourceHoverContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(View)(cast(GtkSourceView*) __p);
	}
}
