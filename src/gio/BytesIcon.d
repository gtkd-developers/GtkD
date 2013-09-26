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
 * inFile  = gio-GBytesIcon.html
 * outPack = gio
 * outFile = BytesIcon
 * strct   = GBytesIcon
 * realStrct=
 * ctorStrct=GIcon
 * clss    = FileIcon
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- LoadableIconIF
 * prefixes:
 * 	- g_bytes_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Bytes
 * 	- gio.LoadableIconT
 * 	- gio.LoadableIconIF
 * structWrap:
 * 	- GBytes* -> Bytes
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.BytesIcon;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Bytes;
private import gio.LoadableIconT;
private import gio.LoadableIconIF;




/**
 * GBytesIcon specifies an image held in memory in a common format (usually
 * png) to be used as icon.
 */
public class FileIcon : LoadableIconIF
{
	
	/** the main Gtk struct */
	protected GBytesIcon* gBytesIcon;
	
	
	public GBytesIcon* getFileIconStruct()
	{
		return gBytesIcon;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gBytesIcon;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBytesIcon* gBytesIcon)
	{
		this.gBytesIcon = gBytesIcon;
	}
	
	// add the LoadableIcon capabilities
	mixin LoadableIconT!(GBytesIcon);
	
	/**
	 */
	
	/**
	 * Creates a new icon for a bytes.
	 * Since 2.38
	 * Params:
	 * bytes = a GBytes.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Bytes bytes)
	{
		// GIcon * g_bytes_icon_new (GBytes *bytes);
		auto p = g_bytes_icon_new((bytes is null) ? null : bytes.getBytesStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_bytes_icon_new((bytes is null) ? null : bytes.getBytesStruct())");
		}
		this(cast(GBytesIcon*) p);
	}
	
	/**
	 * Gets the GBytes associated with the given icon.
	 * Since 2.38
	 * Returns: a GBytes, or NULL. [transfer none]
	 */
	public Bytes getBytes()
	{
		// GBytes * g_bytes_icon_get_bytes (GBytesIcon *icon);
		auto p = g_bytes_icon_get_bytes(gBytesIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Bytes)(cast(GBytes*) p);
	}
}
