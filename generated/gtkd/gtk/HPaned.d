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


module gtk.HPaned;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Paned;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The HPaned widget is a container widget with two
 * children arranged horizontally. The division between
 * the two panes is adjustable by the user by dragging
 * a handle. See #GtkPaned for details.
 * 
 * GtkHPaned has been deprecated, use #GtkPaned instead.
 */
public class HPaned : Paned
{
	/** the main Gtk struct */
	protected GtkHPaned* gtkHPaned;

	/** Get the main Gtk struct */
	public GtkHPaned* getHPanedStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHPaned;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHPaned;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHPaned* gtkHPaned, bool ownedRef = false)
	{
		this.gtkHPaned = gtkHPaned;
		super(cast(GtkPaned*)gtkHPaned, ownedRef);
	}

	/**
	 * Creates a new HPaned and adds two widgets as it's children
	 * Params:
	 *  child1 =
	 *  child2 =
	 */
	this(Widget child1, Widget child2)
	{
		this();
		add1(child1);
		add2(child2);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_hpaned_get_type();
	}

	/**
	 * Create a new #GtkHPaned
	 *
	 * Deprecated: Use gtk_paned_new() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Returns: the new #GtkHPaned
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_hpaned_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHPaned*) p);
	}
}
