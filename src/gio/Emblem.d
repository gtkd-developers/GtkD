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
 * inFile  = GEmblem.html
 * outPack = gio
 * outFile = Emblem
 * strct   = GEmblem
 * realStrct=
 * ctorStrct=
 * clss    = Emblem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- IconIF
 * prefixes:
 * 	- g_emblem_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.IconT
 * structWrap:
 * 	- GIcon* -> IconIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Emblem;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.Icon;
private import gio.IconIF;
private import gio.IconT;



private import gobject.ObjectG;

/**
 * Description
 * GEmblem is an implementation of GIcon that supports
 * having an emblem, which is an icon with additional properties.
 * It can than be added to a GEmblemedIcon.
 * Currently, only metainformation about the emblem's origin is
 * supported. More may be added in the future.
 */
public class Emblem : ObjectG, IconIF
{
	
	/** the main Gtk struct */
	protected GEmblem* gEmblem;
	
	
	public GEmblem* getEmblemStruct()
	{
		return gEmblem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gEmblem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GEmblem* gEmblem)
	{
		super(cast(GObject*)gEmblem);
		this.gEmblem = gEmblem;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gEmblem = cast(GEmblem*)obj;
	}
	
	// add the Icon capabilities
	mixin IconT!(GEmblem);
	
	/**
	 */
	
	/**
	 * Creates a new emblem for icon.
	 * Since 2.18
	 * Params:
	 * icon = a GIcon containing the icon.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconIF icon)
	{
		// GEmblem * g_emblem_new (GIcon *icon);
		auto p = g_emblem_new((icon is null) ? null : icon.getIconTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_emblem_new((icon is null) ? null : icon.getIconTStruct())");
		}
		this(cast(GEmblem*) p);
	}
	
	/**
	 * Creates a new emblem for icon.
	 * Since 2.18
	 * Params:
	 * icon = a GIcon containing the icon.
	 * origin = a GEmblemOrigin enum defining the emblem's origin
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconIF icon, GEmblemOrigin origin)
	{
		// GEmblem * g_emblem_new_with_origin (GIcon *icon,  GEmblemOrigin origin);
		auto p = g_emblem_new_with_origin((icon is null) ? null : icon.getIconTStruct(), origin);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_emblem_new_with_origin((icon is null) ? null : icon.getIconTStruct(), origin)");
		}
		this(cast(GEmblem*) p);
	}
	
	/**
	 * Gives back the icon from emblem.
	 * Since 2.18
	 * Returns: a GIcon. The returned object belongs to the emblem and should not be modified or freed. [transfer none]
	 */
	public IconIF getIcon()
	{
		// GIcon * g_emblem_get_icon (GEmblem *emblem);
		auto p = g_emblem_get_icon(gEmblem);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the origin of the emblem.
	 * Since 2.18
	 * Returns: the origin of the emblem. [transfer none]
	 */
	public GEmblemOrigin getOrigin()
	{
		// GEmblemOrigin g_emblem_get_origin (GEmblem *emblem);
		return g_emblem_get_origin(gEmblem);
	}
}
