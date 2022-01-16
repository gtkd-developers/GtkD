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


module gio.MenuAttributeIter;

private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GMenuAttributeIter is an opaque structure type.  You must access it
 * using the functions below.
 *
 * Since: 2.32
 */
public class MenuAttributeIter : ObjectG
{
	/** the main Gtk struct */
	protected GMenuAttributeIter* gMenuAttributeIter;

	/** Get the main Gtk struct */
	public GMenuAttributeIter* getMenuAttributeIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMenuAttributeIter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMenuAttributeIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMenuAttributeIter* gMenuAttributeIter, bool ownedRef = false)
	{
		this.gMenuAttributeIter = gMenuAttributeIter;
		super(cast(GObject*)gMenuAttributeIter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_menu_attribute_iter_get_type();
	}

	/**
	 * Gets the name of the attribute at the current iterator position, as
	 * a string.
	 *
	 * The iterator is not advanced.
	 *
	 * Returns: the name of the attribute
	 *
	 * Since: 2.32
	 */
	public string getName()
	{
		return Str.toString(g_menu_attribute_iter_get_name(gMenuAttributeIter));
	}

	/**
	 * This function combines g_menu_attribute_iter_next() with
	 * g_menu_attribute_iter_get_name() and g_menu_attribute_iter_get_value().
	 *
	 * First the iterator is advanced to the next (possibly first) attribute.
	 * If that fails, then %FALSE is returned and there are no other
	 * effects.
	 *
	 * If successful, @name and @value are set to the name and value of the
	 * attribute that has just been advanced to.  At this point,
	 * g_menu_attribute_iter_get_name() and g_menu_attribute_iter_get_value() will
	 * return the same values again.
	 *
	 * The value returned in @name remains valid for as long as the iterator
	 * remains at the current position.  The value returned in @value must
	 * be unreffed using g_variant_unref() when it is no longer in use.
	 *
	 * Params:
	 *     outName = the type of the attribute
	 *     value = the attribute value
	 *
	 * Returns: %TRUE on success, or %FALSE if there is no additional
	 *     attribute
	 *
	 * Since: 2.32
	 */
	public bool getNext(out string outName, out Variant value)
	{
		char* outoutName = null;
		GVariant* outvalue = null;

		auto __p = g_menu_attribute_iter_get_next(gMenuAttributeIter, &outoutName, &outvalue) != 0;

		outName = Str.toString(outoutName);
		value = new Variant(outvalue);

		return __p;
	}

	/**
	 * Gets the value of the attribute at the current iterator position.
	 *
	 * The iterator is not advanced.
	 *
	 * Returns: the value of the current attribute
	 *
	 * Since: 2.32
	 */
	public Variant getValue()
	{
		auto __p = g_menu_attribute_iter_get_value(gMenuAttributeIter);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Attempts to advance the iterator to the next (possibly first)
	 * attribute.
	 *
	 * %TRUE is returned on success, or %FALSE if there are no more
	 * attributes.
	 *
	 * You must call this function when you first acquire the iterator
	 * to advance it to the first attribute (and determine if the first
	 * attribute exists at all).
	 *
	 * Returns: %TRUE on success, or %FALSE when there are no more attributes
	 *
	 * Since: 2.32
	 */
	public bool next()
	{
		return g_menu_attribute_iter_next(gMenuAttributeIter) != 0;
	}
}
