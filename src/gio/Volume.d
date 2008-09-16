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
 * inFile  = 
 * outPack = gio
 * outFile = Volume
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Volume
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = ObjectG
 * implements:
 * 	- VolumeIF
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.Signals
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.Drive
 * 	- gio.DriveIF
 * 	- gio.File
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gio.Mount
 * 	- gio.MountIF
 * 	- gio.MountOperation
 * 	- gio.VolumeT
 * 	- gio.VolumeIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Volume;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import gobject.ObjectG;
private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gobject.Signals;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Drive;
private import gio.DriveIF;
private import gio.File;
private import gio.Icon;
private import gio.IconIF;
private import gio.Mount;
private import gio.MountIF;
private import gio.MountOperation;
private import gio.VolumeT;
private import gio.VolumeIF;




/**
 */
public class Volume : ObjectG, VolumeIF
{
	
	// Minimal implementation.
	mixin VolumeT!(GVolume);
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gVolume;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GVolume* gVolume)
	{
		if(gVolume is null)
		{
			this = null;
			return;
		}
		
		super(cast(GObject*)gVolume);
		this.gVolume = gVolume;
	}
	
	/**
	 */
}
