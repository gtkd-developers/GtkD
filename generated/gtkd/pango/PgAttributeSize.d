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


module pango.PgAttributeSize;

private import glib.ConstructionException;
private import pango.PgAttribute;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The `PangoAttrSize` structure is used to represent attributes which
 * set font size.
 */
public class PgAttributeSize : PgAttribute
{
	/** the main Gtk struct */
	protected PangoAttrSize* pangoAttrSize;

	/** Get the main Gtk struct */
	public PangoAttrSize* getPgAttributeSizeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoAttrSize;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoAttrSize;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttrSize* pangoAttrSize, bool ownedRef = false)
	{
		this.pangoAttrSize = pangoAttrSize;
		super(cast(PangoAttribute*)pangoAttrSize, ownedRef);
	}

	/**
	 * Create a new font-size attribute in fractional points.
	 *
	 * Params:
	 *     size = the font size, in %PANGO_SCALE<!-- -->ths of a point.
	 *     absolute = true if the size represents an absolute size.
	 *
	 * Return: the newly allocated #PangoAttribute,
	 *     which should be freed with pango_attribute_destroy().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int size, bool absolute)
	{
		PangoAttribute* p;

		if ( absolute )
			p = pango_attr_size_new_absolute(size);
		else
			p = pango_attr_size_new(size);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoAttrSize*) p);
	}

	/**
	 */
}
