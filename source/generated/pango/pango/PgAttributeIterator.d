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


module pango.PgAttributeIterator;

private import glib.ListSG;
private import gobject.ObjectG;
private import pango.PgAttribute;
private import pango.PgFontDescription;
private import pango.PgLanguage;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
 * 
 * A new iterator is created with [method@Pango.AttrList.get_iterator].
 * Once the iterator is created, it can be advanced through the style
 * changes in the text using [method@Pango.AttrIterator.next]. At each
 * style change, the range of the current style segment and the attributes
 * currently in effect can be queried.
 */
public class PgAttributeIterator
{
	/** the main Gtk struct */
	protected PangoAttrIterator* pangoAttrIterator;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoAttrIterator* getPgAttributeIteratorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoAttrIterator;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoAttrIterator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttrIterator* pangoAttrIterator, bool ownedRef = false)
	{
		this.pangoAttrIterator = pangoAttrIterator;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return pango_attr_iterator_get_type();
	}

	/**
	 * Copy a `PangoAttrIterator`.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttrIterator`, which should be freed with
	 *     [method@Pango.AttrIterator.destroy]
	 */
	public PgAttributeIterator copy()
	{
		auto __p = pango_attr_iterator_copy(pangoAttrIterator);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeIterator)(cast(PangoAttrIterator*) __p, true);
	}

	/**
	 * Destroy a `PangoAttrIterator` and free all associated memory.
	 */
	public void destroy()
	{
		pango_attr_iterator_destroy(pangoAttrIterator);
	}

	/**
	 * Find the current attribute of a particular type
	 * at the iterator location.
	 *
	 * When multiple attributes of the same type overlap,
	 * the attribute whose range starts closest to the
	 * current location is used.
	 *
	 * Params:
	 *     type = the type of attribute to find
	 *
	 * Returns: the current
	 *     attribute of the given type, or %NULL if no attribute
	 *     of that type applies to the current location.
	 */
	public PgAttribute get(PangoAttrType type)
	{
		auto __p = pango_attr_iterator_get(pangoAttrIterator, type);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) __p);
	}

	/**
	 * Gets a list of all attributes at the current position of the
	 * iterator.
	 *
	 * Returns: a list of all attributes for the current range. To free
	 *     this value, call [method@Pango.Attribute.destroy] on each
	 *     value and g_slist_free() on the list.
	 *
	 * Since: 1.2
	 */
	public ListSG getAttrs()
	{
		auto __p = pango_attr_iterator_get_attrs(pangoAttrIterator);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Get the font and other attributes at the current
	 * iterator position.
	 *
	 * Params:
	 *     desc = a `PangoFontDescription` to fill in with the current
	 *         values. The family name in this structure will be set using
	 *         [method@Pango.FontDescription.set_family_static] using
	 *         values from an attribute in the `PangoAttrList` associated
	 *         with the iterator, so if you plan to keep it around, you
	 *         must call:
	 *         `pango_font_description_set_family (desc, pango_font_description_get_family (desc))`.
	 *     language = location to store language tag
	 *         for item, or %NULL if none is found.
	 *     extraAttrs = location in which to store a list of non-font attributes
	 *         at the the current position; only the highest priority
	 *         value of each attribute will be added to this list. In
	 *         order to free this value, you must call
	 *         [method@Pango.Attribute.destroy] on each member.
	 */
	public void getFont(PgFontDescription desc, out PgLanguage language, out ListSG extraAttrs)
	{
		PangoLanguage* outlanguage = null;
		GSList* outextraAttrs = null;

		pango_attr_iterator_get_font(pangoAttrIterator, (desc is null) ? null : desc.getPgFontDescriptionStruct(), &outlanguage, &outextraAttrs);

		language = ObjectG.getDObject!(PgLanguage)(outlanguage);
		extraAttrs = new ListSG(outextraAttrs);
	}

	/**
	 * Advance the iterator until the next change of style.
	 *
	 * Returns: %FALSE if the iterator is at the end
	 *     of the list, otherwise %TRUE
	 */
	public bool next()
	{
		return pango_attr_iterator_next(pangoAttrIterator) != 0;
	}

	/**
	 * Get the range of the current segment.
	 *
	 * Note that the stored return values are signed, not unsigned
	 * like the values in `PangoAttribute`. To deal with this API
	 * oversight, stored return values that wouldn't fit into
	 * a signed integer are clamped to %G_MAXINT.
	 *
	 * Params:
	 *     start = location to store the start of the range
	 *     end = location to store the end of the range
	 */
	public void range(out int start, out int end)
	{
		pango_attr_iterator_range(pangoAttrIterator, &start, &end);
	}
}
