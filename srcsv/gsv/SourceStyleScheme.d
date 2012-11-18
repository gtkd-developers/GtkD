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
 * inFile  = GtkSourceStyleScheme.html
 * outPack = gsv
 * outFile = SourceStyleScheme
 * strct   = GtkSourceStyleScheme
 * realStrct=
 * ctorStrct=
 * clss    = SourceStyleScheme
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_style_scheme_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gsv.SourceStyle
 * structWrap:
 * 	- GtkSourceStyle* -> SourceStyle
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceStyleScheme;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gsv.SourceStyle;



private import gobject.ObjectG;

/**
 * Description
 * GtkSourceStyleScheme contains all the text styles to be used in
 * GtkSourceView and GtkSourceBuffer. For instance, it contains text styles
 * for syntax highlighting, it may contain foreground and background color for
 * non-highlighted text, color for the line numbers, etc.
 * Style schemes are stored in XML files. The format of a scheme file is
 * the documented in the
 * style scheme reference.
 */
public class SourceStyleScheme : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceStyleScheme* gtkSourceStyleScheme;
	
	
	public GtkSourceStyleScheme* getSourceStyleSchemeStruct()
	{
		return gtkSourceStyleScheme;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleScheme;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceStyleScheme* gtkSourceStyleScheme)
	{
		super(cast(GObject*)gtkSourceStyleScheme);
		this.gtkSourceStyleScheme = gtkSourceStyleScheme;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceStyleScheme = cast(GtkSourceStyleScheme*)obj;
	}
	
	/**
	 */
	
	/**
	 * Since 2.0
	 * Returns: scheme id.
	 */
	public string getId()
	{
		// const gchar * gtk_source_style_scheme_get_id (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_id(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme name.
	 */
	public string getName()
	{
		// const gchar * gtk_source_style_scheme_get_name (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_name(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme description (if defined), or NULL.
	 */
	public string getDescription()
	{
		// const gchar * gtk_source_style_scheme_get_description  (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_description(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: a NULL-terminated array containing the scheme authors or NULL if no author is specified by the style scheme. [array zero-terminated=1][transfer none]
	 */
	public string[] getAuthors()
	{
		// const gchar * const * gtk_source_style_scheme_get_authors  (GtkSourceStyleScheme *scheme);
		return Str.toStringArray(gtk_source_style_scheme_get_authors(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme file name if the scheme was created parsing a style scheme file or NULL in the other cases.
	 */
	public string getFilename()
	{
		// const gchar * gtk_source_style_scheme_get_filename  (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_filename(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Params:
	 * styleId = id of the style to retrieve.
	 * Returns: style which corresponds to style_id in the scheme, or NULL when no style with this name found. It is owned by scheme and may not be unref'ed. [transfer none]
	 */
	public SourceStyle getStyle(string styleId)
	{
		// GtkSourceStyle * gtk_source_style_scheme_get_style (GtkSourceStyleScheme *scheme,  const gchar *style_id);
		auto p = gtk_source_style_scheme_get_style(gtkSourceStyleScheme, Str.toStringz(styleId));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceStyle)(cast(GtkSourceStyle*) p);
	}
}
