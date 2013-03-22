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
 * inFile  = GEmblemedIcon.html
 * outPack = gio
 * outFile = EmblemedIcon
 * strct   = GEmblemedIcon
 * realStrct=
 * ctorStrct=GIcon
 * clss    = EmblemedIcon
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- IconIF
 * prefixes:
 * 	- g_emblemed_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gio.Emblem
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.IconT
 * structWrap:
 * 	- GEmblem* -> Emblem
 * 	- GIcon* -> IconIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.EmblemedIcon;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import gio.Emblem;
private import gio.Icon;
private import gio.IconIF;
private import gio.IconT;



private import gobject.ObjectG;

/**
 * GEmblemedIcon is an implementation of GIcon that supports
 * adding an emblem to an icon. Adding multiple emblems to an
 * icon is ensured via g_emblemed_icon_add_emblem().
 *
 * Note that GEmblemedIcon allows no control over the position
 * of the emblems. See also GEmblem for more information.
 */
public class EmblemedIcon : ObjectG, IconIF
{
	
	/** the main Gtk struct */
	protected GEmblemedIcon* gEmblemedIcon;
	
	
	public GEmblemedIcon* getEmblemedIconStruct()
	{
		return gEmblemedIcon;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gEmblemedIcon;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GEmblemedIcon* gEmblemedIcon)
	{
		super(cast(GObject*)gEmblemedIcon);
		this.gEmblemedIcon = gEmblemedIcon;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gEmblemedIcon = cast(GEmblemedIcon*)obj;
	}
	
	// add the Icon capabilities
	mixin IconT!(GEmblemedIcon);
	
	/**
	 */
	
	/**
	 * Creates a new emblemed icon for icon with the emblem emblem.
	 * Since 2.18
	 * Params:
	 * icon = a GIcon
	 * emblem = a GEmblem, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconIF icon, Emblem emblem)
	{
		// GIcon * g_emblemed_icon_new (GIcon *icon,  GEmblem *emblem);
		auto p = g_emblemed_icon_new((icon is null) ? null : icon.getIconTStruct(), (emblem is null) ? null : emblem.getEmblemStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_emblemed_icon_new((icon is null) ? null : icon.getIconTStruct(), (emblem is null) ? null : emblem.getEmblemStruct())");
		}
		this(cast(GEmblemedIcon*) p);
	}
	
	/**
	 * Gets the main icon for emblemed.
	 * Since 2.18
	 * Returns: a GIcon that is owned by emblemed. [transfer none]
	 */
	public IconIF getIcon()
	{
		// GIcon * g_emblemed_icon_get_icon (GEmblemedIcon *emblemed);
		auto p = g_emblemed_icon_get_icon(gEmblemedIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the list of emblems for the icon.
	 * Since 2.18
	 * Returns: a GList of GEmblem s that is owned by emblemed. [element-type Gio.Emblem][transfer none]
	 */
	public ListG getEmblems()
	{
		// GList * g_emblemed_icon_get_emblems (GEmblemedIcon *emblemed);
		auto p = g_emblemed_icon_get_emblems(gEmblemedIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Adds emblem to the GList of GEmblem s.
	 * Since 2.18
	 * Params:
	 * emblem = a GEmblem
	 */
	public void addEmblem(Emblem emblem)
	{
		// void g_emblemed_icon_add_emblem (GEmblemedIcon *emblemed,  GEmblem *emblem);
		g_emblemed_icon_add_emblem(gEmblemedIcon, (emblem is null) ? null : emblem.getEmblemStruct());
	}
	
	/**
	 * Removes all the emblems from icon.
	 * Since 2.28
	 */
	public void clearEmblems()
	{
		// void g_emblemed_icon_clear_emblems (GEmblemedIcon *emblemed);
		g_emblemed_icon_clear_emblems(gEmblemedIcon);
	}
}
