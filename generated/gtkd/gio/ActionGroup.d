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


module gio.ActionGroup;

private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;


/** */
public class ActionGroup : ObjectG, ActionGroupIF
{
	/** the main Gtk struct */
	protected GActionGroup* gActionGroup;

	/** Get the main Gtk struct */
	public GActionGroup* getActionGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gActionGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gActionGroup;
	}

	protected override void setStruct(GObject* obj)
	{
		gActionGroup = cast(GActionGroup*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GActionGroup* gActionGroup, bool ownedRef = false)
	{
		this.gActionGroup = gActionGroup;
		super(cast(GObject*)gActionGroup, ownedRef);
	}

	// add the ActionGroup capabilities
	mixin ActionGroupT!(GActionGroup);

}
