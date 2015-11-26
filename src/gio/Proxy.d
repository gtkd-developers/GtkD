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


module gio.Proxy;

private import gio.ProxyIF;
private import gio.ProxyT;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/** */
public class Proxy : ObjectG, ProxyIF
{
	/** the main Gtk struct */
	protected GProxy* gProxy;

	/** Get the main Gtk struct */
	public GProxy* getProxyStruct()
	{
		return gProxy;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gProxy;
	}

	protected override void setStruct(GObject* obj)
	{
		gProxy = cast(GProxy*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GProxy* gProxy, bool ownedRef = false)
	{
		this.gProxy = gProxy;
		super(cast(GObject*)gProxy, ownedRef);
	}

	// add the Proxy capabilities
	mixin ProxyT!(GProxy);

}
