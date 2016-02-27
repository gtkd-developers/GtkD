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


module pango.PgAttributeList;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtkc.pango;
public  import gtkc.pangotypes;
private import pango.PgAttribute;
private import pango.PgAttributeIterator;


/**
 * The #PangoAttrList structure represents a list of attributes
 * that apply to a section of text. The attributes are, in general,
 * allowed to overlap in an arbitrary fashion, however, if the
 * attributes are manipulated only through pango_attr_list_change(),
 * the overlap between properties will meet stricter criteria.
 * 
 * Since the #PangoAttrList structure is stored as a linear list,
 * it is not suitable for storing attributes for large amounts
 * of text. In general, you should not use a single #PangoAttrList
 * for more than one paragraph of text.
 */
public class PgAttributeList
{
	/** the main Gtk struct */
	protected PangoAttrList* pangoAttrList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoAttrList* getPgAttributeListStruct()
	{
		return pangoAttrList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoAttrList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoAttrList* pangoAttrList, bool ownedRef = false)
	{
		this.pangoAttrList = pangoAttrList;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return pango_attr_list_get_type();
	}

	/**
	 * Create a new empty attribute list with a reference count of one.
	 *
	 * Return: the newly allocated #PangoAttrList,
	 *     which should be freed with pango_attr_list_unref().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = pango_attr_list_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(PangoAttrList*) p);
	}

	/**
	 * Insert the given attribute into the #PangoAttrList. It will
	 * replace any attributes of the same type on that segment
	 * and be merged with any adjoining attributes that are identical.
	 *
	 * This function is slower than pango_attr_list_insert() for
	 * creating a attribute list in order (potentially much slower
	 * for large lists). However, pango_attr_list_insert() is not
	 * suitable for continually changing a set of attributes
	 * since it never removes or combines existing attributes.
	 *
	 * Params:
	 *     attr = the attribute to insert. Ownership of this
	 *         value is assumed by the list.
	 */
	public void change(PgAttribute attr)
	{
		pango_attr_list_change(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	/**
	 * Copy @list and return an identical new list.
	 *
	 * Return: the newly allocated #PangoAttrList, with a
	 *     reference count of one, which should
	 *     be freed with pango_attr_list_unref().
	 *     Returns %NULL if @list was %NULL.
	 */
	public PgAttributeList copy()
	{
		auto p = pango_attr_list_copy(pangoAttrList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p, true);
	}

	/**
	 * Given a #PangoAttrList and callback function, removes any elements
	 * of @list for which @func returns %TRUE and inserts them into
	 * a new list.
	 *
	 * Params:
	 *     func = callback function; returns %TRUE
	 *         if an attribute should be filtered out.
	 *     data = Data to be passed to @func
	 *
	 * Return: the new #PangoAttrList or
	 *     %NULL if no attributes of the given types were found.
	 *
	 * Since: 1.2
	 */
	public PgAttributeList filter(PangoAttrFilterFunc func, void* data)
	{
		auto p = pango_attr_list_filter(pangoAttrList, func, data);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p, true);
	}

	/**
	 * Create a iterator initialized to the beginning of the list.
	 * @list must not be modified until this iterator is freed.
	 *
	 * Return: the newly allocated #PangoAttrIterator, which should
	 *     be freed with pango_attr_iterator_destroy().
	 */
	public PgAttributeIterator getIterator()
	{
		auto p = pango_attr_list_get_iterator(pangoAttrList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeIterator)(cast(PangoAttrIterator*) p, true);
	}

	/**
	 * Insert the given attribute into the #PangoAttrList. It will
	 * be inserted after all other attributes with a matching
	 * @start_index.
	 *
	 * Params:
	 *     attr = the attribute to insert. Ownership of this
	 *         value is assumed by the list.
	 */
	public void insert(PgAttribute attr)
	{
		pango_attr_list_insert(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	/**
	 * Insert the given attribute into the #PangoAttrList. It will
	 * be inserted before all other attributes with a matching
	 * @start_index.
	 *
	 * Params:
	 *     attr = the attribute to insert. Ownership of this
	 *         value is assumed by the list.
	 */
	public void insertBefore(PgAttribute attr)
	{
		pango_attr_list_insert_before(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	/**
	 * Increase the reference count of the given attribute list by one.
	 *
	 * Return: The attribute list passed in
	 *
	 * Since: 1.10
	 */
	public PgAttributeList doref()
	{
		auto p = pango_attr_list_ref(pangoAttrList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) p, true);
	}

	/**
	 * This function opens up a hole in @list, fills it in with attributes from
	 * the left, and then merges @other on top of the hole.
	 *
	 * This operation is equivalent to stretching every attribute
	 * that applies at position @pos in @list by an amount @len,
	 * and then calling pango_attr_list_change() with a copy
	 * of each attribute in @other in sequence (offset in position by @pos).
	 *
	 * This operation proves useful for, for instance, inserting
	 * a pre-edit string in the middle of an edit buffer.
	 *
	 * Params:
	 *     other = another #PangoAttrList
	 *     pos = the position in @list at which to insert @other
	 *     len = the length of the spliced segment. (Note that this
	 *         must be specified since the attributes in @other
	 *         may only be present at some subsection of this range)
	 */
	public void splice(PgAttributeList other, int pos, int len)
	{
		pango_attr_list_splice(pangoAttrList, (other is null) ? null : other.getPgAttributeListStruct(), pos, len);
	}

	/**
	 * Decrease the reference count of the given attribute list by one.
	 * If the result is zero, free the attribute list and the attributes
	 * it contains.
	 */
	public void unref()
	{
		pango_attr_list_unref(pangoAttrList);
	}
}
