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


module gio.Icon;

private import gio.IconIF;
private import gio.IconT;
private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;
public  import gtkc.giotypes;


/** */
public class Icon : ObjectG, IconIF
{
	/** the main Gtk struct */
	protected GIcon* gIcon;

	/** Get the main Gtk struct */
	public GIcon* getIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIcon;
	}

	protected override void setStruct(GObject* obj)
	{
		gIcon = cast(GIcon*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIcon* gIcon, bool ownedRef = false)
	{
		this.gIcon = gIcon;
		super(cast(GObject*)gIcon, ownedRef);
	}

	// add the Icon capabilities
	mixin IconT!(GIcon);

}
