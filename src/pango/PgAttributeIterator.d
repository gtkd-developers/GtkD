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

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = pango
 * outFile = PgAttributeIterator
 * strct   = PangoAttrIterator
 * realStrct=
 * ctorStrct=
 * clss    = PgAttributeIterator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_attr_iterator_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgAttribute
 * 	- pango.PgFontDescription
 * 	- pango.PgLanguage
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttrIterator* -> PgAttributeIterator
 * 	- PangoAttribute* -> PgAttribute
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLanguage* -> PgLanguage
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgAttributeIterator;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgAttribute;
private import pango.PgFontDescription;
private import pango.PgLanguage;
private import glib.ListSG;




/**
 * Description
 * Attributed text is used in a number of places in Pango. It
 * is used as the input to the itemization process and also when
 * creating a PangoLayout. The data types and functions in
 * this section are used to represent and manipulate sets
 * of attributes applied to a portion of text.
 */
public class PgAttributeIterator
{
	
	/** the main Gtk struct */
	protected PangoAttrIterator* pangoAttrIterator;
	
	
	public PangoAttrIterator* getPgAttributeIteratorStruct()
	{
		return pangoAttrIterator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoAttrIterator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoAttrIterator* pangoAttrIterator)
	{
		this.pangoAttrIterator = pangoAttrIterator;
	}
	
	/**
	 */
	
	/**
	 * Copy a PangoAttrIterator
	 * Returns: the newly allocated PangoAttrIterator, which should be freed with pango_attr_iterator_destroy(). [transfer full]
	 */
	public PgAttributeIterator copy()
	{
		// PangoAttrIterator * pango_attr_iterator_copy (PangoAttrIterator *iterator);
		auto p = pango_attr_iterator_copy(pangoAttrIterator);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttributeIterator)(cast(PangoAttrIterator*) p);
	}
	
	/**
	 * Advance the iterator until the next change of style.
	 * Returns: FALSE if the iterator is at the end of the list, otherwise TRUE
	 */
	public int next()
	{
		// gboolean pango_attr_iterator_next (PangoAttrIterator *iterator);
		return pango_attr_iterator_next(pangoAttrIterator);
	}
	
	/**
	 * Get the range of the current segment. Note that the
	 * stored return values are signed, not unsigned like
	 * the values in PangoAttribute. To deal with this API
	 * oversight, stored return values that wouldn't fit into
	 * a signed integer are clamped to G_MAXINT.
	 * Params:
	 * start = location to store the start of the range. [out]
	 * end = location to store the end of the range. [out]
	 */
	public void range(out int start, out int end)
	{
		// void pango_attr_iterator_range (PangoAttrIterator *iterator,  gint *start,  gint *end);
		pango_attr_iterator_range(pangoAttrIterator, &start, &end);
	}
	
	/**
	 * Find the current attribute of a particular type at the iterator
	 * location. When multiple attributes of the same type overlap,
	 * the attribute whose range starts closest to the current location
	 * is used.
	 * Params:
	 * type = the type of attribute to find.
	 * Returns: the current attribute of the given type, or NULL if no attribute of that type applies to the current location.
	 */
	public PgAttribute get(PangoAttrType type)
	{
		// PangoAttribute * pango_attr_iterator_get (PangoAttrIterator *iterator,  PangoAttrType type);
		auto p = pango_attr_iterator_get(pangoAttrIterator, type);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgAttribute)(cast(PangoAttribute*) p);
	}
	
	/**
	 * Get the font and other attributes at the current iterator position.
	 * Params:
	 * desc = a PangoFontDescription to fill in with the current values.
	 * The family name in this structure will be set using
	 * pango_font_description_set_family_static() using values from
	 * an attribute in the PangoAttrList associated with the iterator,
	 * language = if non-NULL, location to store language tag for item, or NULL
	 * if none is found. [allow-none]
	 * extraAttrs = if non-NULL,
	 * location in which to store a list of non-font
	 * attributes at the the current position; only the highest priority
	 * value of each attribute will be added to this list. In order
	 * to free this value, you must call pango_attribute_destroy() on
	 * each member. [allow-none][element-type Pango.Attribute][transfer full]
	 */
	public void getFont(PgFontDescription desc, out PgLanguage language, out ListSG extraAttrs)
	{
		// void pango_attr_iterator_get_font (PangoAttrIterator *iterator,  PangoFontDescription *desc,  PangoLanguage **language,  GSList **extra_attrs);
		PangoLanguage* outlanguage = null;
		GSList* outextraAttrs = null;
		
		pango_attr_iterator_get_font(pangoAttrIterator, (desc is null) ? null : desc.getPgFontDescriptionStruct(), &outlanguage, &outextraAttrs);
		
		language = ObjectG.getDObject!(PgLanguage)(outlanguage);
		extraAttrs = ObjectG.getDObject!(ListSG)(outextraAttrs);
	}
	
	/**
	 * Gets a list of all attributes at the current position of the
	 * iterator.
	 * Since 1.2
	 * Returns: a list of all attributes for the current range. To free this value, call pango_attribute_destroy() on each value and g_slist_free() on the list. [element-type Pango.Attribute][transfer full]
	 */
	public ListSG getAttrs()
	{
		// GSList * pango_attr_iterator_get_attrs (PangoAttrIterator *iterator);
		auto p = pango_attr_iterator_get_attrs(pangoAttrIterator);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Destroy a PangoAttrIterator and free all associated memory.
	 */
	public void destroy()
	{
		// void pango_attr_iterator_destroy (PangoAttrIterator *iterator);
		pango_attr_iterator_destroy(pangoAttrIterator);
	}
}
