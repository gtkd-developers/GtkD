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
 * inFile  = GtkSourceStyle.html
 * outPack = gsv
 * outFile = SourceStyle
 * strct   = GtkSourceStyle
 * realStrct=
 * ctorStrct=
 * clss    = SourceStyle
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_style_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GtkSourceStyle* -> SourceStyle
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.SourceStyle;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gobject.ObjectG;

/**
 * The GtkSourceStyle structure is used to describe text attributes
 * which are set when given style is used.
 */
public class SourceStyle : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSourceStyle* gtkSourceStyle;
	
	
	public GtkSourceStyle* getSourceStyleStruct()
	{
		return gtkSourceStyle;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyle;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSourceStyle* gtkSourceStyle)
	{
		super(cast(GObject*)gtkSourceStyle);
		this.gtkSourceStyle = gtkSourceStyle;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSourceStyle = cast(GtkSourceStyle*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a copy of style, that is a new GtkSourceStyle instance which
	 * has the same attributes set.
	 * Since 2.0
	 * Returns: copy of style, call g_object_unref() when you are done with it. [transfer full]
	 */
	public SourceStyle copy()
	{
		// GtkSourceStyle * gtk_source_style_copy (const GtkSourceStyle *style);
		auto p = gtk_source_style_copy(gtkSourceStyle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SourceStyle)(cast(GtkSourceStyle*) p);
	}
}
