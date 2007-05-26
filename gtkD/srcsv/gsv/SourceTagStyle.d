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
 * inFile  = gtksourceview-GtkSourceTagStyle.html
 * outPack = gsv
 * outFile = SourceTagStyle
 * strct   = GtkSourceTagStyle
 * realStrct=
 * ctorStrct=
 * clss    = SourceTagStyle
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_tag_style_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gsv.SourceTagStyle;

private import gsvc.gsvtypes;

private import gsvc.gsv;






/**
 * Description
 */
public class SourceTagStyle
{
	
	/** the main Gtk struct */
	protected GtkSourceTagStyle* gtkSourceTagStyle;
	
	
	public GtkSourceTagStyle* getSourceTagStyleStruct()
	{
		return gtkSourceTagStyle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceTagStyle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceTagStyle* gtkSourceTagStyle)
	{
		this.gtkSourceTagStyle = gtkSourceTagStyle;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Retrieves the GType object which is associated with the
	 * GtkSourceTagStyle class.
	 * Returns:
	 *  the GType associated with GtkSourceTagStyle.
	 */
	public static GType getType()
	{
		// GType gtk_source_tag_style_get_type (void);
		return gtk_source_tag_style_get_type();
	}
	
	/**
	 * Creates a new tag style object.
	 * Returns:
	 *  a new GtkSourceTagStyle.
	 */
	public this ()
	{
		// GtkSourceTagStyle* gtk_source_tag_style_new (void);
		this(cast(GtkSourceTagStyle*)gtk_source_tag_style_new() );
	}
	
	/**
	 * Makes a copy of the given style.
	 * style:
	 *  a GtkSourceTagStyle.
	 * Returns:
	 *  a new GtkSourceTagStyle.
	 */
	public GtkSourceTagStyle* copy()
	{
		// GtkSourceTagStyle* gtk_source_tag_style_copy  (const GtkSourceTagStyle *style);
		return gtk_source_tag_style_copy(gtkSourceTagStyle);
	}
	
	/**
	 * Frees the resources allocated by the given style.
	 * style:
	 *  a GtkSourceTagStyle.
	 */
	public void free()
	{
		// void gtk_source_tag_style_free (GtkSourceTagStyle *style);
		gtk_source_tag_style_free(gtkSourceTagStyle);
	}
}
