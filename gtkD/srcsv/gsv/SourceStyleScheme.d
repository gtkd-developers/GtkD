/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gsv.SourceStyleScheme;

private import gsvc.gsvtypes;

private import gsvc.gsv;


private import glib.Str;




/**
 * Description
 */
public class SourceStyleScheme
{
	
	/** the main Gtk struct */
	protected GtkSourceStyleScheme* gtkSourceStyleScheme;
	
	
	public GtkSourceStyleScheme* getSourceStyleSchemeStruct()
	{
		return gtkSourceStyleScheme;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceStyleScheme;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceStyleScheme* gtkSourceStyleScheme)
	{
		this.gtkSourceStyleScheme = gtkSourceStyleScheme;
	}
	
	/**
	 */
	
	
	
	/**
	 * Gets the tag associated with the given style_name in the style scheme.
	 * scheme:
	 *  a GtkSourceStyleScheme.
	 * style_name:
	 *  the name of a style.
	 * Returns:
	 *  a GtkSourceTagStyle.
	 */
	public GtkSourceTagStyle* getTagStyle(char[] styleName)
	{
		// GtkSourceTagStyle* gtk_source_style_scheme_get_tag_style  (GtkSourceStyleScheme *scheme,  const gchar *style_name);
		return gtk_source_style_scheme_get_tag_style(gtkSourceStyleScheme, Str.toStringz(styleName));
	}
	
	/**
	 * Gets the name of the given style scheme.
	 * scheme:
	 *  a GtkSourceStyleScheme.
	 * Returns:
	 *  the name of the style scheme.
	 */
	public char[] getName()
	{
		// const gchar* gtk_source_style_scheme_get_name  (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_name(gtkSourceStyleScheme) );
	}
	
	/**
	 * Gets the default style scheme.
	 * Returns:
	 *  a GtkSourceStyleScheme.
	 */
	public static GtkSourceStyleScheme* getDefault()
	{
		// GtkSourceStyleScheme* gtk_source_style_scheme_get_default  (void);
		return gtk_source_style_scheme_get_default();
	}
}
