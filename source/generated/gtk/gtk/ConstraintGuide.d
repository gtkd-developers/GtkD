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


module gtk.ConstraintGuide;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkConstraintGuide` is an invisible layout element in a
 * `GtkConstraintLayout`.
 * 
 * The `GtkConstraintLayout` treats guides like widgets. They
 * can be used as the source or target of a `GtkConstraint`.
 * 
 * Guides have a minimum, maximum and natural size. Depending
 * on the constraints that are applied, they can act like a
 * guideline that widgets can be aligned to, or like *flexible
 * space*.
 * 
 * Unlike a `GtkWidget`, a `GtkConstraintGuide` will not be drawn.
 */
public class ConstraintGuide : ObjectG, ConstraintTargetIF
{
	/** the main Gtk struct */
	protected GtkConstraintGuide* gtkConstraintGuide;

	/** Get the main Gtk struct */
	public GtkConstraintGuide* getConstraintGuideStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkConstraintGuide;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkConstraintGuide;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkConstraintGuide* gtkConstraintGuide, bool ownedRef = false)
	{
		this.gtkConstraintGuide = gtkConstraintGuide;
		super(cast(GObject*)gtkConstraintGuide, ownedRef);
	}

	// add the ConstraintTarget capabilities
	mixin ConstraintTargetT!(GtkConstraintGuide);


	/** */
	public static GType getType()
	{
		return gtk_constraint_guide_get_type();
	}

	/**
	 * Creates a new `GtkConstraintGuide` object.
	 *
	 * Returns: a new `GtkConstraintGuide` object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_constraint_guide_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkConstraintGuide*) __p, true);
	}

	/**
	 * Gets the maximum size of @guide.
	 *
	 * Params:
	 *     width = return location for the maximum width
	 *     height = return location for the maximum height
	 */
	public void getMaxSize(out int width, out int height)
	{
		gtk_constraint_guide_get_max_size(gtkConstraintGuide, &width, &height);
	}

	/**
	 * Gets the minimum size of @guide.
	 *
	 * Params:
	 *     width = return location for the minimum width
	 *     height = return location for the minimum height
	 */
	public void getMinSize(out int width, out int height)
	{
		gtk_constraint_guide_get_min_size(gtkConstraintGuide, &width, &height);
	}

	/**
	 * Retrieves the name set using gtk_constraint_guide_set_name().
	 *
	 * Returns: the name of the guide
	 */
	public string getName()
	{
		return Str.toString(gtk_constraint_guide_get_name(gtkConstraintGuide));
	}

	/**
	 * Gets the natural size of @guide.
	 *
	 * Params:
	 *     width = return location for the natural width
	 *     height = return location for the natural height
	 */
	public void getNatSize(out int width, out int height)
	{
		gtk_constraint_guide_get_nat_size(gtkConstraintGuide, &width, &height);
	}

	/**
	 * Retrieves the strength set using gtk_constraint_guide_set_strength().
	 *
	 * Returns: the strength of the constraint on the natural size
	 */
	public GtkConstraintStrength getStrength()
	{
		return gtk_constraint_guide_get_strength(gtkConstraintGuide);
	}

	/**
	 * Sets the maximum size of @guide.
	 *
	 * If @guide is attached to a `GtkConstraintLayout`,
	 * the constraints will be updated to reflect the new size.
	 *
	 * Params:
	 *     width = the new maximum width, or -1 to not change it
	 *     height = the new maximum height, or -1 to not change it
	 */
	public void setMaxSize(int width, int height)
	{
		gtk_constraint_guide_set_max_size(gtkConstraintGuide, width, height);
	}

	/**
	 * Sets the minimum size of @guide.
	 *
	 * If @guide is attached to a `GtkConstraintLayout`,
	 * the constraints will be updated to reflect the new size.
	 *
	 * Params:
	 *     width = the new minimum width, or -1 to not change it
	 *     height = the new minimum height, or -1 to not change it
	 */
	public void setMinSize(int width, int height)
	{
		gtk_constraint_guide_set_min_size(gtkConstraintGuide, width, height);
	}

	/**
	 * Sets a name for the given `GtkConstraintGuide`.
	 *
	 * The name is useful for debugging purposes.
	 *
	 * Params:
	 *     name = a name for the @guide
	 */
	public void setName(string name)
	{
		gtk_constraint_guide_set_name(gtkConstraintGuide, Str.toStringz(name));
	}

	/**
	 * Sets the natural size of @guide.
	 *
	 * If @guide is attached to a `GtkConstraintLayout`,
	 * the constraints will be updated to reflect the new size.
	 *
	 * Params:
	 *     width = the new natural width, or -1 to not change it
	 *     height = the new natural height, or -1 to not change it
	 */
	public void setNatSize(int width, int height)
	{
		gtk_constraint_guide_set_nat_size(gtkConstraintGuide, width, height);
	}

	/**
	 * Sets the strength of the constraint on the natural size of the
	 * given `GtkConstraintGuide`.
	 *
	 * Params:
	 *     strength = the strength of the constraint
	 */
	public void setStrength(GtkConstraintStrength strength)
	{
		gtk_constraint_guide_set_strength(gtkConstraintGuide, strength);
	}
}
