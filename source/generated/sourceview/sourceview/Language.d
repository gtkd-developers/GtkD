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


module sourceview.Language;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Represents a syntax highlighted language.
 * 
 * A `GtkSourceLanguage` represents a programming or markup language, affecting
 * syntax highlighting and [context classes](./class.Buffer.html#context-classes).
 * 
 * Use [class@LanguageManager] to obtain a `GtkSourceLanguage` instance, and
 * [method@Buffer.set_language] to apply it to a [class@Buffer].
 */
public class Language : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceLanguage* gtkSourceLanguage;

	/** Get the main Gtk struct */
	public GtkSourceLanguage* getLanguageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceLanguage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceLanguage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceLanguage* gtkSourceLanguage, bool ownedRef = false)
	{
		this.gtkSourceLanguage = gtkSourceLanguage;
		super(cast(GObject*)gtkSourceLanguage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_language_get_type();
	}

	/**
	 * Returns the globs associated to this language.
	 *
	 * This is just an utility wrapper around [method@Language.get_metadata] to
	 * retrieve the "globs" metadata property and split it into an array.
	 *
	 * Returns: a newly-allocated %NULL terminated array containing the globs or %NULL
	 *     if no globs are found.
	 *     The returned array must be freed with g_strfreev().
	 */
	public string[] getGlobs()
	{
		auto retStr = gtk_source_language_get_globs(gtkSourceLanguage);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns whether the language should be hidden from the user.
	 *
	 * Returns: %TRUE if the language should be hidden, %FALSE otherwise.
	 */
	public bool getHidden()
	{
		return gtk_source_language_get_hidden(gtkSourceLanguage) != 0;
	}

	/**
	 * Returns the ID of the language.
	 *
	 * The ID is not locale-dependent.The returned string is owned by @language
	 * and should not be freed or modified.
	 *
	 * Returns: the ID of @language.
	 */
	public string getId()
	{
		return Str.toString(gtk_source_language_get_id(gtkSourceLanguage));
	}

	/**
	 *
	 * Params:
	 *     name = metadata property name.
	 * Returns: value of property @name stored in
	 *     the metadata of @language or %NULL if language does not contain the
	 *     specified metadata property.
	 *     The returned string is owned by @language and should not be freed
	 *     or modified.
	 */
	public string getMetadata(string name)
	{
		return Str.toString(gtk_source_language_get_metadata(gtkSourceLanguage, Str.toStringz(name)));
	}

	/**
	 * Returns the mime types associated to this language.
	 *
	 * This is just an utility wrapper around [method@Language.get_metadata] to
	 * retrieve the "mimetypes" metadata property and split it into an
	 * array.
	 *
	 * Returns: a newly-allocated %NULL terminated array containing the mime types
	 *     or %NULL if no mime types are found.
	 *     The returned array must be freed with g_strfreev().
	 */
	public string[] getMimeTypes()
	{
		auto retStr = gtk_source_language_get_mime_types(gtkSourceLanguage);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the localized name of the language.
	 *
	 * The returned string is owned by @language and should not be freed
	 * or modified.
	 *
	 * Returns: the name of @language.
	 */
	public string getName()
	{
		return Str.toString(gtk_source_language_get_name(gtkSourceLanguage));
	}

	/**
	 * Returns the localized section of the language.
	 *
	 * Each language belong to a section (ex. HTML belongs to the
	 * Markup section).
	 * The returned string is owned by @language and should not be freed
	 * or modified.
	 *
	 * Returns: the section of @language.
	 */
	public string getSection()
	{
		return Str.toString(gtk_source_language_get_section(gtkSourceLanguage));
	}

	/**
	 * Returns the ID of the style to use if the specified @style_id
	 * is not present in the current style scheme.
	 *
	 * Params:
	 *     styleId = a style ID.
	 *
	 * Returns: the ID of the style to use if the
	 *     specified @style_id is not present in the current style scheme or %NULL
	 *     if the style has no fallback defined.
	 *     The returned string is owned by the @language and must not be modified.
	 */
	public string getStyleFallback(string styleId)
	{
		return Str.toString(gtk_source_language_get_style_fallback(gtkSourceLanguage, Str.toStringz(styleId)));
	}

	/**
	 * Returns the ids of the styles defined by this @language.
	 *
	 * Returns: a newly-allocated %NULL terminated array containing ids of the
	 *     styles defined by this @language or %NULL if no style is defined.
	 *     The returned array must be freed with g_strfreev().
	 */
	public string[] getStyleIds()
	{
		auto retStr = gtk_source_language_get_style_ids(gtkSourceLanguage);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the name of the style with ID @style_id defined by this @language.
	 *
	 * Params:
	 *     styleId = a style ID.
	 *
	 * Returns: the name of the style with ID @style_id
	 *     defined by this @language or %NULL if the style has no name or there is no
	 *     style with ID @style_id defined by this @language.
	 *     The returned string is owned by the @language and must not be modified.
	 */
	public string getStyleName(string styleId)
	{
		return Str.toString(gtk_source_language_get_style_name(gtkSourceLanguage, Str.toStringz(styleId)));
	}
}
