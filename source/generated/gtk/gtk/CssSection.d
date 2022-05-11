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


module gtk.CssSection;

private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
private import linker.Loader;


/**
 * Defines a part of a CSS document.
 * 
 * Because sections are nested into one another, you can use
 * [method@CssSection.get_parent] to get the containing region.
 */
public class CssSection
{
	/** the main Gtk struct */
	protected GtkCssSection* gtkCssSection;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkCssSection* getCssSectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCssSection;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCssSection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCssSection* gtkCssSection, bool ownedRef = false)
	{
		this.gtkCssSection = gtkCssSection;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK[0]) && ownedRef )
			gtk_css_section_unref(gtkCssSection);
	}


	/** */
	public static GType getType()
	{
		return gtk_css_section_get_type();
	}

	/**
	 * Creates a new `GtkCssSection` referring to the section
	 * in the given `file` from the `start` location to the
	 * `end` location.
	 *
	 * Params:
	 *     file = The file this section refers to
	 *     start = The start location
	 *     end = The end location
	 *
	 * Returns: a new `GtkCssSection`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file, GtkCssLocation* start, GtkCssLocation* end)
	{
		auto __p = gtk_css_section_new((file is null) ? null : file.getFileStruct(), start, end);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCssSection*) __p);
	}

	/**
	 * Returns the location in the CSS document where this section ends.
	 *
	 * Returns: The end location of
	 *     this section
	 */
	public GtkCssLocation* getEndLocation()
	{
		return gtk_css_section_get_end_location(gtkCssSection);
	}

	/**
	 * Gets the file that @section was parsed from.
	 *
	 * If no such file exists, for example because the CSS was loaded via
	 * [method@Gtk.CssProvider.load_from_data], then `NULL` is returned.
	 *
	 * Returns: the `GFile` from which the `section`
	 *     was parsed
	 */
	public FileIF getFile()
	{
		auto __p = gtk_css_section_get_file(gtkCssSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Gets the parent section for the given `section`.
	 *
	 * The parent section is the section that contains this `section`. A special
	 * case are sections of  type `GTK_CSS_SECTION_DOCUMEN`T. Their parent will
	 * either be `NULL` if they are the original CSS document that was loaded by
	 * [method@Gtk.CssProvider.load_from_file] or a section of type
	 * `GTK_CSS_SECTION_IMPORT` if it was loaded with an `@import` rule from
	 * a different file.
	 *
	 * Returns: the parent section
	 */
	public CssSection getParent()
	{
		auto __p = gtk_css_section_get_parent(gtkCssSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) __p);
	}

	/**
	 * Returns the location in the CSS document where this section starts.
	 *
	 * Returns: The start location of
	 *     this section
	 */
	public GtkCssLocation* getStartLocation()
	{
		return gtk_css_section_get_start_location(gtkCssSection);
	}

	/**
	 * Prints the `section` into `string` in a human-readable form.
	 *
	 * This is a form like `gtk.css:32:1-23` to denote line 32, characters
	 * 1 to 23 in the file `gtk.css`.
	 *
	 * Params:
	 *     string_ = a `GString` to print to
	 */
	public void print(StringG string_)
	{
		gtk_css_section_print(gtkCssSection, (string_ is null) ? null : string_.getStringGStruct());
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on `section`.
	 *
	 * Returns: the CSS section itself.
	 */
	public CssSection ref_()
	{
		auto __p = gtk_css_section_ref(gtkCssSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) __p, true);
	}

	/**
	 * Prints the section into a human-readable text form using
	 * [method@Gtk.CssSection.print].
	 *
	 * Returns: A new string.
	 */
	public override string toString()
	{
		auto retStr = gtk_css_section_to_string(gtkCssSection);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Decrements the reference count on `section`, freeing the
	 * structure if the reference count reaches 0.
	 */
	public void unref()
	{
		gtk_css_section_unref(gtkCssSection);
	}
}
