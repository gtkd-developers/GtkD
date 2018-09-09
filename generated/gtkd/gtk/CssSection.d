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
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * Defines a part of a CSS document. Because sections are nested into
 * one another, you can use gtk_css_section_get_parent() to get the
 * containing region.
 *
 * Since: 3.2
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
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_css_section_unref(gtkCssSection);
	}


	/** */
	public static GType getType()
	{
		return gtk_css_section_get_type();
	}

	/**
	 * Returns the line in the CSS document where this section end.
	 * The line number is 0-indexed, so the first line of the document
	 * will return 0.
	 * This value may change in future invocations of this function if
	 * @section is not yet parsed completely. This will for example
	 * happen in the GtkCssProvider::parsing-error signal.
	 * The end position and line may be identical to the start
	 * position and line for sections which failed to parse anything
	 * successfully.
	 *
	 * Returns: the line number
	 *
	 * Since: 3.2
	 */
	public uint getEndLine()
	{
		return gtk_css_section_get_end_line(gtkCssSection);
	}

	/**
	 * Returns the offset in bytes from the start of the current line
	 * returned via gtk_css_section_get_end_line().
	 * This value may change in future invocations of this function if
	 * @section is not yet parsed completely. This will for example
	 * happen in the GtkCssProvider::parsing-error signal.
	 * The end position and line may be identical to the start
	 * position and line for sections which failed to parse anything
	 * successfully.
	 *
	 * Returns: the offset in bytes from the start of the line.
	 *
	 * Since: 3.2
	 */
	public uint getEndPosition()
	{
		return gtk_css_section_get_end_position(gtkCssSection);
	}

	/**
	 * Gets the file that @section was parsed from. If no such file exists,
	 * for example because the CSS was loaded via
	 * @gtk_css_provider_load_from_data(), then %NULL is returned.
	 *
	 * Returns: the #GFile that @section was parsed from
	 *     or %NULL if @section was parsed from other data
	 *
	 * Since: 3.2
	 */
	public FileIF getFile()
	{
		auto p = gtk_css_section_get_file(gtkCssSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) p);
	}

	/**
	 * Gets the parent section for the given @section. The parent section is
	 * the section that contains this @section. A special case are sections of
	 * type #GTK_CSS_SECTION_DOCUMENT. Their parent will either be %NULL
	 * if they are the original CSS document that was loaded by
	 * gtk_css_provider_load_from_file() or a section of type
	 * #GTK_CSS_SECTION_IMPORT if it was loaded with an import rule from
	 * a different file.
	 *
	 * Returns: the parent section or %NULL if none
	 *
	 * Since: 3.2
	 */
	public CssSection getParent()
	{
		auto p = gtk_css_section_get_parent(gtkCssSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p);
	}

	/**
	 * Gets the type of information that @section describes.
	 *
	 * Returns: the type of @section
	 *
	 * Since: 3.2
	 */
	public GtkCssSectionType getSectionType()
	{
		return gtk_css_section_get_section_type(gtkCssSection);
	}

	/**
	 * Returns the line in the CSS document where this section starts.
	 * The line number is 0-indexed, so the first line of the document
	 * will return 0.
	 *
	 * Returns: the line number
	 *
	 * Since: 3.2
	 */
	public uint getStartLine()
	{
		return gtk_css_section_get_start_line(gtkCssSection);
	}

	/**
	 * Returns the offset in bytes from the start of the current line
	 * returned via gtk_css_section_get_start_line().
	 *
	 * Returns: the offset in bytes from the start of the line.
	 *
	 * Since: 3.2
	 */
	public uint getStartPosition()
	{
		return gtk_css_section_get_start_position(gtkCssSection);
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on @section.
	 *
	 * Returns: @section itself.
	 *
	 * Since: 3.2
	 */
	public CssSection ref_()
	{
		auto p = gtk_css_section_ref(gtkCssSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CssSection)(cast(GtkCssSection*) p, true);
	}

	/**
	 * Decrements the reference count on @section, freeing the
	 * structure if the reference count reaches 0.
	 *
	 * Since: 3.2
	 */
	public void unref()
	{
		gtk_css_section_unref(gtkCssSection);
	}
}
