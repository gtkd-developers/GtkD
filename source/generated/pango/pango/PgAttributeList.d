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
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.PgAttribute;
private import pango.PgAttributeIterator;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoAttrList` represents a list of attributes that apply to a section
 * of text.
 * 
 * The attributes in a `PangoAttrList` are, in general, allowed to overlap in
 * an arbitrary fashion. However, if the attributes are manipulated only through
 * [method@Pango.AttrList.change], the overlap between properties will meet
 * stricter criteria.
 * 
 * Since the `PangoAttrList` structure is stored as a linear list, it is not
 * suitable for storing attributes for large amounts of text. In general, you
 * should not use a single `PangoAttrList` for more than one paragraph of text.
 */
public class PgAttributeList
{
	/** the main Gtk struct */
	protected PangoAttrList* pangoAttrList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoAttrList* getPgAttributeListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_attr_list_unref(pangoAttrList);
	}


	/** */
	public static GType getType()
	{
		return pango_attr_list_get_type();
	}

	/**
	 * Create a new empty attribute list with a reference
	 * count of one.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttrList`, which should be freed with
	 *     [method@Pango.AttrList.unref]
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = pango_attr_list_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoAttrList*) __p);
	}

	/**
	 * Insert the given attribute into the `PangoAttrList`.
	 *
	 * It will replace any attributes of the same type
	 * on that segment and be merged with any adjoining
	 * attributes that are identical.
	 *
	 * This function is slower than [method@Pango.AttrList.insert]
	 * for creating an attribute list in order (potentially
	 * much slower for large lists). However,
	 * [method@Pango.AttrList.insert] is not suitable for
	 * continually changing a set of attributes since it
	 * never removes or combines existing attributes.
	 *
	 * Params:
	 *     attr = the attribute to insert
	 */
	public void change(PgAttribute attr)
	{
		pango_attr_list_change(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	/**
	 * Copy @list and return an identical new list.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttrList`, with a reference count of one,
	 *     which should be freed with [method@Pango.AttrList.unref].
	 *     Returns %NULL if @list was %NULL.
	 */
	public PgAttributeList copy()
	{
		auto __p = pango_attr_list_copy(pangoAttrList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/**
	 * Checks whether @list and @other_list contain the same
	 * attributes and whether those attributes apply to the
	 * same ranges.
	 *
	 * Beware that this will return wrong values if any list
	 * contains duplicates.
	 *
	 * Params:
	 *     otherList = the other `PangoAttrList`
	 *
	 * Returns: %TRUE if the lists are equal, %FALSE if
	 *     they aren't
	 *
	 * Since: 1.46
	 */
	public bool equal(PgAttributeList otherList)
	{
		return pango_attr_list_equal(pangoAttrList, (otherList is null) ? null : otherList.getPgAttributeListStruct()) != 0;
	}

	/**
	 * Given a `PangoAttrList` and callback function, removes
	 * any elements of @list for which @func returns %TRUE and
	 * inserts them into a new list.
	 *
	 * Params:
	 *     func = callback function;
	 *         returns %TRUE if an attribute should be filtered out
	 *     data = Data to be passed to @func
	 *
	 * Returns: the new
	 *     `PangoAttrList` or %NULL if no attributes of the
	 *     given types were found
	 *
	 * Since: 1.2
	 */
	public PgAttributeList filter(PangoAttrFilterFunc func, void* data)
	{
		auto __p = pango_attr_list_filter(pangoAttrList, func, data);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/**
	 * Gets a list of all attributes in @list.
	 *
	 * Returns: a list of all attributes in @list. To free this value,
	 *     call [method@Pango.Attribute.destroy] on each value and
	 *     g_slist_free() on the list.
	 *
	 * Since: 1.44
	 */
	public ListSG getAttributes()
	{
		auto __p = pango_attr_list_get_attributes(pangoAttrList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Create a iterator initialized to the beginning of the list.
	 *
	 * @list must not be modified until this iterator is freed.
	 *
	 * Returns: the newly allocated
	 *     `PangoAttrIterator`, which should be freed with
	 *     [method@Pango.AttrIterator.destroy]
	 */
	public PgAttributeIterator getIterator()
	{
		auto __p = pango_attr_list_get_iterator(pangoAttrList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeIterator)(cast(PangoAttrIterator*) __p, true);
	}

	/**
	 * Insert the given attribute into the `PangoAttrList`.
	 *
	 * It will be inserted after all other attributes with a
	 * matching @start_index.
	 *
	 * Params:
	 *     attr = the attribute to insert
	 */
	public void insert(PgAttribute attr)
	{
		pango_attr_list_insert(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	/**
	 * Insert the given attribute into the `PangoAttrList`.
	 *
	 * It will be inserted before all other attributes with a
	 * matching @start_index.
	 *
	 * Params:
	 *     attr = the attribute to insert
	 */
	public void insertBefore(PgAttribute attr)
	{
		pango_attr_list_insert_before(pangoAttrList, (attr is null) ? null : attr.getPgAttributeStruct());
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of the given attribute
	 * list by one.
	 *
	 * Returns: The attribute list passed in
	 *
	 * Since: 1.10
	 */
	public PgAttributeList ref_()
	{
		auto __p = pango_attr_list_ref(pangoAttrList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/**
	 * This function opens up a hole in @list, fills it
	 * in with attributes from the left, and then merges
	 * @other on top of the hole.
	 *
	 * This operation is equivalent to stretching every attribute
	 * that applies at position @pos in @list by an amount @len,
	 * and then calling [method@Pango.AttrList.change] with a copy
	 * of each attribute in @other in sequence (offset in position
	 * by @pos, and limited in length to @len).
	 *
	 * This operation proves useful for, for instance, inserting
	 * a pre-edit string in the middle of an edit buffer.
	 *
	 * For backwards compatibility, the function behaves differently
	 * when @len is 0. In this case, the attributes from @other are
	 * not imited to @len, and are just overlayed on top of @list.
	 *
	 * This mode is useful for merging two lists of attributes together.
	 *
	 * Params:
	 *     other = another `PangoAttrList`
	 *     pos = the position in @list at which to insert @other
	 *     len = the length of the spliced segment. (Note that this
	 *         must be specified since the attributes in @other may only
	 *         be present at some subsection of this range)
	 */
	public void splice(PgAttributeList other, int pos, int len)
	{
		pango_attr_list_splice(pangoAttrList, (other is null) ? null : other.getPgAttributeListStruct(), pos, len);
	}

	/**
	 * Serializes a `PangoAttrList` to a string.
	 *
	 * No guarantees are made about the format of the string,
	 * it may change between Pango versions.
	 *
	 * The intended use of this function is testing and
	 * debugging. The format is not meant as a permanent
	 * storage format.
	 *
	 * Returns: a newly allocated string
	 *
	 * Since: 1.50
	 */
	public override string toString()
	{
		auto retStr = pango_attr_list_to_string(pangoAttrList);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Decrease the reference count of the given attribute
	 * list by one.
	 *
	 * If the result is zero, free the attribute list
	 * and the attributes it contains.
	 */
	public void unref()
	{
		pango_attr_list_unref(pangoAttrList);
	}

	/**
	 * Update indices of attributes in @list for a change in the
	 * text they refer to.
	 *
	 * The change that this function applies is removing @remove
	 * bytes at position @pos and inserting @add bytes instead.
	 *
	 * Attributes that fall entirely in the (@pos, @pos + @remove)
	 * range are removed.
	 *
	 * Attributes that start or end inside the (@pos, @pos + @remove)
	 * range are shortened to reflect the removal.
	 *
	 * Attributes start and end positions are updated if they are
	 * behind @pos + @remove.
	 *
	 * Params:
	 *     pos = the position of the change
	 *     remove = the number of removed bytes
	 *     add = the number of added bytes
	 *
	 * Since: 1.44
	 */
	public void update(int pos, int remove, int add)
	{
		pango_attr_list_update(pangoAttrList, pos, remove, add);
	}

	/**
	 * Deserializes a `PangoAttrList` from a string.
	 *
	 * This is the counterpart to [method@Pango.AttrList.to_string].
	 * See that functions for details about the format.
	 *
	 * Params:
	 *     text = a string
	 *
	 * Returns: a new `PangoAttrList`
	 *
	 * Since: 1.50
	 */
	public static PgAttributeList fromString(string text)
	{
		auto __p = pango_attr_list_from_string(Str.toStringz(text));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}
}
