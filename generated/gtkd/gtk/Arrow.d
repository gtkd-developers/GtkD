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


module gtk.Arrow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Misc;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkArrow should be used to draw simple arrows that need to point in
 * one of the four cardinal directions (up, down, left, or right).  The
 * style of the arrow can be one of shadow in, shadow out, etched in, or
 * etched out.  Note that these directions and style types may be
 * amended in versions of GTK+ to come.
 * 
 * GtkArrow will fill any space alloted to it, but since it is inherited
 * from #GtkMisc, it can be padded and/or aligned, to fill exactly the
 * space the programmer desires.
 * 
 * Arrows are created with a call to gtk_arrow_new().  The direction or
 * style of an arrow can be changed after creation by using gtk_arrow_set().
 * 
 * GtkArrow has been deprecated; you can simply use a #GtkImage with a
 * suitable icon name, such as “pan-down-symbolic“. When replacing
 * GtkArrow by an image, pay attention to the fact that GtkArrow is
 * doing automatic flipping between #GTK_ARROW_LEFT and #GTK_ARROW_RIGHT,
 * depending on the text direction. To get the same effect with an image,
 * use the icon names “pan-start-symbolic“ and “pan-end-symbolic“, which
 * react to the text direction.
 */
public class Arrow : Misc
{
	/** the main Gtk struct */
	protected GtkArrow* gtkArrow;

	/** Get the main Gtk struct */
	public GtkArrow* getArrowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkArrow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkArrow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkArrow* gtkArrow, bool ownedRef = false)
	{
		this.gtkArrow = gtkArrow;
		super(cast(GtkMisc*)gtkArrow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_arrow_get_type();
	}

	/**
	 * Creates a new #GtkArrow widget.
	 *
	 * Deprecated: Use a #GtkImage with a suitable icon.
	 *
	 * Params:
	 *     arrowType = a valid #GtkArrowType.
	 *     shadowType = a valid #GtkShadowType.
	 *
	 * Returns: the new #GtkArrow widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkArrowType arrowType, GtkShadowType shadowType)
	{
		auto p = gtk_arrow_new(arrowType, shadowType);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkArrow*) p);
	}

	/**
	 * Sets the direction and style of the #GtkArrow, @arrow.
	 *
	 * Deprecated: Use a #GtkImage with a suitable icon.
	 *
	 * Params:
	 *     arrowType = a valid #GtkArrowType.
	 *     shadowType = a valid #GtkShadowType.
	 */
	public void set(GtkArrowType arrowType, GtkShadowType shadowType)
	{
		gtk_arrow_set(gtkArrow, arrowType, shadowType);
	}
}
