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


module pango.PgFontFace;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import pango.PgFontDescription;
private import pango.PgFontFamily;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoFontFace` is used to represent a group of fonts with
 * the same family, slant, weight, and width, but varying sizes.
 */
public class PgFontFace : ObjectG
{
	/** the main Gtk struct */
	protected PangoFontFace* pangoFontFace;

	/** Get the main Gtk struct */
	public PangoFontFace* getPgFontFaceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoFontFace;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoFontFace;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoFontFace* pangoFontFace, bool ownedRef = false)
	{
		this.pangoFontFace = pangoFontFace;
		super(cast(GObject*)pangoFontFace, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_font_face_get_type();
	}

	/**
	 * Returns a font description that matches the face.
	 *
	 * The resulting font description will have the family, style,
	 * variant, weight and stretch of the face, but its size field
	 * will be unset.
	 *
	 * Returns: a newly-created `PangoFontDescription` structure
	 *     holding the description of the face. Use [method@Pango.FontDescription.free]
	 *     to free the result.
	 */
	public PgFontDescription describe()
	{
		auto __p = pango_font_face_describe(pangoFontFace);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Gets a name representing the style of this face.
	 *
	 * Note that a font family may contain multiple faces
	 * with the same name (e.g. a variable and a non-variable
	 * face for the same style).
	 *
	 * Returns: the face name for the face. This string is
	 *     owned by the face object and must not be modified or freed.
	 */
	public string getFaceName()
	{
		return Str.toString(pango_font_face_get_face_name(pangoFontFace));
	}

	/**
	 * Gets the `PangoFontFamily` that @face belongs to.
	 *
	 * Returns: the `PangoFontFamily`
	 *
	 * Since: 1.46
	 */
	public PgFontFamily getFamily()
	{
		auto __p = pango_font_face_get_family(pangoFontFace);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) __p);
	}

	/**
	 * Returns whether a `PangoFontFace` is synthesized.
	 *
	 * This will be the case if the underlying font rendering engine
	 * creates this face from another face, by shearing, emboldening,
	 * lightening or modifying it in some other way.
	 *
	 * Returns: whether @face is synthesized
	 *
	 * Since: 1.18
	 */
	public bool isSynthesized()
	{
		return pango_font_face_is_synthesized(pangoFontFace) != 0;
	}

	/**
	 * List the available sizes for a font.
	 *
	 * This is only applicable to bitmap fonts. For scalable fonts, stores
	 * %NULL at the location pointed to by @sizes and 0 at the location pointed
	 * to by @n_sizes. The sizes returned are in Pango units and are sorted
	 * in ascending order.
	 *
	 * Params:
	 *     sizes = location to store a pointer to an array of int. This array
	 *         should be freed with g_free().
	 *
	 * Since: 1.4
	 */
	public void listSizes(out int[] sizes)
	{
		int* outsizes;
		int nSizes;

		pango_font_face_list_sizes(pangoFontFace, &outsizes, &nSizes);

		sizes = outsizes[0 .. nSizes];
	}
}
