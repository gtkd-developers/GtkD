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
 * omit signals:
 * imports:
 * 	- gsv.SourceStyle
 * 	- glib.Str
 * structWrap:
 * 	- GtkSourceStyle* -> SourceStyle
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceStyleScheme;

public  import gsvc.gsvtypes;

private import gsvc.gsv;


private import gsv.SourceStyle;
private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * GtkSourceStyleScheme contains all the text styles to be used
 * in GtkSourceView and GtkSourceBuffer. For instance, it contains
 * text styles for syntax highlighting, it may contain foreground
 * and background color for non-highlighted text, etc.
 * Style schemes are stored in XML files. The format of scheme file is
 * the following.
 * The toplevel tag in a style scheme file is <style-scheme>.
 * It has the following attributes:
 * id (mandatory)
 * Identifier for the style scheme. This is must be unique among style schemes.
 * name (mandatory)
 * Name of the style scheme. This is the name of the scheme to display to user, e.g.
 * in a preferences dialog.
 * _name
 * This is the same as name attribute, except it will be translated.
 * name and _name may not be used simultaneously.
 * parent-scheme (optional)
 * Style schemes may have <em>parent</em> schemes: all styles but those specified
 * in the scheme will be taken from the parent scheme. In this way a scheme may
 * be customized without copying all its content.
 * version (mandatory)
 * Style scheme format identifier. At the moment it must be "1.0".
 * style-scheme tag may contain the following tags:
 * author
 * Name of the style scheme author.
 * description
 * Description of the style scheme.
 * _description
 * Same as description except it will be localized.
 * color tags
 * These define color names to be used in style tags.
 * It has two attributes: name and value.
 * value is the hexadecimal color specification like
 * "#000000" or named color understood by Gdk prefixed with "#",
 * e.g. "#beige".
 * style tags
 * See below for their format description.
 * Each style tag describes a single element of style scheme (it corresponds
 * to GtkSourceStyle object). It has the following attributes:
 * name (mandatory)
 * Name of the style. It can be anything, syntax highlighting uses <em>lang-id:style-id</em>,
 * and there are few special styles which are used to control general appearance
 * of the text. Style scheme may contain other names to be used in an application. For instance,
 * it may define color to highlight compilation errors in a build log or a color for
 * bookmarks.
 * foreground
 * Foreground color. It may be name defined in one of color tags, or value in
 * hexadecimal format, e.g. "#000000", or symbolic name understood
 * by Gdk, prefixed with "#", e.g. "#magenta" or "#darkred".
 * background
 * Background color.
 * italic
 * "true" or "false"
 * bold
 * "true" or "false"
 * underline
 * "true" or "false"
 * strikethrough
 * "true" or "false"
 * The following are names of styles which control GtkSourceView appearance:
 * text
 * Default style of text.
 * selection
 * Style of selected text.
 * selection-unfocused
 * Style of selected text when the widget doesn't have input focus.
 * cursor
 * Text cursor style. Only foreground attribute is used
 * for this style
 * secondary-cursor
 * Secondary cursor style (used in bidi text). Only foreground attribute
 * is used for this style. If this is not set while "cursor" is, then a color between text background
 * and cursor colors is chosen, so it is enough to use "cursor" style only.
 * current-line
 * Current line style. Only background attribute is used
 * line-numbers
 * Text and background colors for the left margin, on which line numbers are
 * drawn
 * bracket-match
 * Style to use for matching brackets.
 * bracket-mismatch
 * Style to use for mismatching brackets.
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
		if(gtkSourceStyleScheme is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkSourceStyleScheme passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSourceStyleScheme);
		if( ptr !is null )
		{
			this = cast(SourceStyleScheme)ptr;
			return;
		}
		super(cast(GObject*)gtkSourceStyleScheme);
		this.gtkSourceStyleScheme = gtkSourceStyleScheme;
	}
	
	/**
	 */
	
	/**
	 * Since 2.0
	 * Returns: scheme id.
	 */
	public string getId()
	{
		// const gchar* gtk_source_style_scheme_get_id (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_id(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme name.
	 */
	public string getName()
	{
		// const gchar* gtk_source_style_scheme_get_name (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_name(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme description (if defined) or NULL.
	 */
	public string getDescription()
	{
		// const gchar* gtk_source_style_scheme_get_description  (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_description(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Returns: a NULL-terminated array containing the scheme authors orNULL if no author is specified by the stylescheme.
	 */
	public char** getAuthors()
	{
		// const gchar* const * gtk_source_style_scheme_get_authors  (GtkSourceStyleScheme *scheme);
		return gtk_source_style_scheme_get_authors(gtkSourceStyleScheme);
	}
	
	/**
	 * Since 2.0
	 * Returns: scheme file name if the scheme was created parsing astyle scheme file or NULL in the other cases.
	 */
	public string getFilename()
	{
		// const gchar* gtk_source_style_scheme_get_filename  (GtkSourceStyleScheme *scheme);
		return Str.toString(gtk_source_style_scheme_get_filename(gtkSourceStyleScheme));
	}
	
	/**
	 * Since 2.0
	 * Params:
	 * styleId =  id of the style to retrieve.
	 * Returns: style which corresponds to style_id in the scheme,or NULL when no style with this name found. It is owned by schemeand may not be unref'ed.
	 */
	public SourceStyle getStyle(string styleId)
	{
		// GtkSourceStyle* gtk_source_style_scheme_get_style (GtkSourceStyleScheme *scheme,  const gchar *style_id);
		auto p = gtk_source_style_scheme_get_style(gtkSourceStyleScheme, Str.toStringz(styleId));
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new SourceStyle(cast(GtkSourceStyle*) p);
	}
}
