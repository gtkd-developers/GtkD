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


module sourceview.StyleScheme;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.Style;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Controls the appearance of [class@View].
 * 
 * #GtkSourceStyleScheme contains all the text styles to be used in
 * [class@View] and [class@Buffer]. For instance, it contains text styles
 * for syntax highlighting, it may contain foreground and background color for
 * non-highlighted text, color for the line numbers, current line highlighting,
 * bracket matching, etc.
 * 
 * Style schemes are stored in XML files. The format of a scheme file is
 * documented in the [style scheme reference](./style-reference.html).
 * 
 * The two style schemes with IDs "classic" and "tango" follow more closely the
 * GTK theme (for example for the background color).
 */
public class StyleScheme : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceStyleScheme* gtkSourceStyleScheme;

	/** Get the main Gtk struct */
	public GtkSourceStyleScheme* getStyleSchemeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyleScheme;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleScheme;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyleScheme* gtkSourceStyleScheme, bool ownedRef = false)
	{
		this.gtkSourceStyleScheme = gtkSourceStyleScheme;
		super(cast(GObject*)gtkSourceStyleScheme, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_style_scheme_get_type();
	}

	/**
	 * Returns: a
	 *     %NULL-terminated array containing the @scheme authors or %NULL if
	 *     no author is specified by the style scheme.
	 */
	public string[] getAuthors()
	{
		return Str.toStringArray(gtk_source_style_scheme_get_authors(gtkSourceStyleScheme));
	}

	/**
	 * Returns: @scheme description (if defined), or %NULL.
	 */
	public string getDescription()
	{
		return Str.toString(gtk_source_style_scheme_get_description(gtkSourceStyleScheme));
	}

	/**
	 * Returns: @scheme file name if the scheme was created
	 *     parsing a style scheme file or %NULL in the other cases.
	 */
	public string getFilename()
	{
		return Str.toString(gtk_source_style_scheme_get_filename(gtkSourceStyleScheme));
	}

	/**
	 * Returns: @scheme id.
	 */
	public string getId()
	{
		return Str.toString(gtk_source_style_scheme_get_id(gtkSourceStyleScheme));
	}

	/**
	 * Gets a metadata property from the style scheme.
	 *
	 * Params:
	 *     name = metadata property name.
	 *
	 * Returns: value of property @name stored in
	 *     the metadata of @scheme or %NULL if @scheme does not contain the
	 *     specified metadata property.
	 *
	 * Since: 5.4
	 */
	public string getMetadata(string name)
	{
		return Str.toString(gtk_source_style_scheme_get_metadata(gtkSourceStyleScheme, Str.toStringz(name)));
	}

	/**
	 * Returns: @scheme name.
	 */
	public string getName()
	{
		return Str.toString(gtk_source_style_scheme_get_name(gtkSourceStyleScheme));
	}

	/**
	 *
	 * Params:
	 *     styleId = id of the style to retrieve.
	 * Returns: style which corresponds to @style_id in
	 *     the @scheme, or %NULL when no style with this name found.  It is owned by
	 *     @scheme and may not be unref'ed.
	 */
	public Style getStyle(string styleId)
	{
		auto __p = gtk_source_style_scheme_get_style(gtkSourceStyleScheme, Str.toStringz(styleId));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Style)(cast(GtkSourceStyle*) __p);
	}
}
