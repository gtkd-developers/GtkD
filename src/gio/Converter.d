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


module gio.Converter;

private import gio.ConverterIF;
private import gio.ConverterT;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


public class Converter : ObjectG, ConverterIF
{
	/** the main Gtk struct */
	protected GConverter* gConverter;

	/** Get the main Gtk struct */
	public GConverter* getConverterStruct()
	{
		return gConverter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gConverter;
	}

	protected override void setStruct(GObject* obj)
	{
		gConverter = cast(GConverter*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GConverter* gConverter, bool ownedRef = false)
	{
		this.gConverter = gConverter;
		super(cast(GObject*)gConverter, ownedRef);
	}

	// add the Converter capabilities
	mixin ConverterT!(GConverter);

	/**
	 */
}
