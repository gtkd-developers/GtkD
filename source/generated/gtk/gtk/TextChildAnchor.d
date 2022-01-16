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


module gtk.TextChildAnchor;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkTextChildAnchor` is a spot in a `GtkTextBuffer` where child widgets can
 * be “anchored”.
 * 
 * The anchor can have multiple widgets anchored, to allow for multiple views.
 */
public class TextChildAnchor : ObjectG
{
	/** the main Gtk struct */
	protected GtkTextChildAnchor* gtkTextChildAnchor;

	/** Get the main Gtk struct */
	public GtkTextChildAnchor* getTextChildAnchorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTextChildAnchor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTextChildAnchor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTextChildAnchor* gtkTextChildAnchor, bool ownedRef = false)
	{
		this.gtkTextChildAnchor = gtkTextChildAnchor;
		super(cast(GObject*)gtkTextChildAnchor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_text_child_anchor_get_type();
	}

	/**
	 * Creates a new `GtkTextChildAnchor`.
	 *
	 * Usually you would then insert it into a `GtkTextBuffer` with
	 * [method@Gtk.TextBuffer.insert_child_anchor]. To perform the
	 * creation and insertion in one step, use the convenience
	 * function [method@Gtk.TextBuffer.create_child_anchor].
	 *
	 * Returns: a new `GtkTextChildAnchor`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_text_child_anchor_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTextChildAnchor*) __p, true);
	}

	/**
	 * Creates a new `GtkTextChildAnchor` with the given replacement character.
	 *
	 * Usually you would then insert it into a `GtkTextBuffer` with
	 * [method@Gtk.TextBuffer.insert_child_anchor].
	 *
	 * Returns: a new `GtkTextChildAnchor`
	 *
	 * Since: 4.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string character)
	{
		auto __p = gtk_text_child_anchor_new_with_replacement(Str.toStringz(character));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_replacement");
		}

		this(cast(GtkTextChildAnchor*) __p, true);
	}

	/**
	 * Determines whether a child anchor has been deleted from
	 * the buffer.
	 *
	 * Keep in mind that the child anchor will be unreferenced
	 * when removed from the buffer, so you need to hold your own
	 * reference (with g_object_ref()) if you plan to use this
	 * function — otherwise all deleted child anchors will also
	 * be finalized.
	 *
	 * Returns: %TRUE if the child anchor has been deleted from its buffer
	 */
	public bool getDeleted()
	{
		return gtk_text_child_anchor_get_deleted(gtkTextChildAnchor) != 0;
	}

	/**
	 * Gets a list of all widgets anchored at this child anchor.
	 *
	 * The order in which the widgets are returned is not defined.
	 *
	 * Returns: an
	 *     array of widgets anchored at @anchor
	 */
	public Widget[] getWidgets()
	{
		uint outLen;

		auto __p = gtk_text_child_anchor_get_widgets(gtkTextChildAnchor, &outLen);

		if(__p is null)
		{
			return null;
		}

		Widget[] arr = new Widget[outLen];
		for(int i = 0; i < outLen; i++)
		{
			arr[i] = ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p[i]);
		}

		return arr;
	}
}
