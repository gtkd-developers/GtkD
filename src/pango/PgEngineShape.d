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
 * inFile  = PangoEngineShape.html
 * outPack = pango
 * outFile = PgEngineShape
 * strct   = PangoEngineShape
 * realStrct=
 * ctorStrct=
 * clss    = PgEngineShape
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- script_engine_shape_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgEngineShape;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import pango.PgEngine;

/**
 * Description
 * The shape engines are rendering-system dependent
 * engines that convert character strings into glyph strings.
 * These engines are used in pango_shape().
 */
public class PgEngineShape : PgEngine
{
	
	/** the main Gtk struct */
	protected PangoEngineShape* pangoEngineShape;
	
	
	public PangoEngineShape* getPgEngineShapeStruct()
	{
		return pangoEngineShape;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngineShape;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoEngineShape* pangoEngineShape)
	{
		super(cast(PangoEngine*)pangoEngineShape);
		this.pangoEngineShape = pangoEngineShape;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoEngineShape = cast(PangoEngineShape*)obj;
	}
	
	/**
	 */
}
