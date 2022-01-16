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


module gtk.FixedLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkFixedLayout` is a layout manager which can place child widgets
 * at fixed positions.
 * 
 * Most applications should never use this layout manager; fixed positioning
 * and sizing requires constant recalculations on where children need to be
 * positioned and sized. Other layout managers perform this kind of work
 * internally so that application developers don't need to do it. Specifically,
 * widgets positioned in a fixed layout manager will need to take into account:
 * 
 * - Themes, which may change widget sizes.
 * 
 * - Fonts other than the one you used to write the app will of course
 * change the size of widgets containing text; keep in mind that
 * users may use a larger font because of difficulty reading the
 * default, or they may be using a different OS that provides different
 * fonts.
 * 
 * - Translation of text into other languages changes its size. Also,
 * display of non-English text will use a different font in many
 * cases.
 * 
 * In addition, `GtkFixedLayout` does not pay attention to text direction and
 * thus may produce unwanted results if your app is run under right-to-left
 * languages such as Hebrew or Arabic. That is: normally GTK will order
 * containers appropriately depending on the text direction, e.g. to put labels
 * to the right of the thing they label when using an RTL language;
 * `GtkFixedLayout` won't be able to do that for you.
 * 
 * Finally, fixed positioning makes it kind of annoying to add/remove UI
 * elements, since you have to reposition all the other  elements. This is a
 * long-term maintenance problem for your application.
 */
public class FixedLayout : LayoutManager
{
	/** the main Gtk struct */
	protected GtkFixedLayout* gtkFixedLayout;

	/** Get the main Gtk struct */
	public GtkFixedLayout* getFixedLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFixedLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFixedLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFixedLayout* gtkFixedLayout, bool ownedRef = false)
	{
		this.gtkFixedLayout = gtkFixedLayout;
		super(cast(GtkLayoutManager*)gtkFixedLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_fixed_layout_get_type();
	}

	/**
	 * Creates a new `GtkFixedLayout`.
	 *
	 * Returns: the newly created `GtkFixedLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_fixed_layout_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFixedLayout*) __p, true);
	}
}
