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


module gtk.ShortcutsGroup;

private import gtk.Box;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkShortcutsGroup` represents a group of related keyboard shortcuts
 * or gestures.
 * 
 * The group has a title. It may optionally be associated with a view
 * of the application, which can be used to show only relevant shortcuts
 * depending on the application context.
 * 
 * This widget is only meant to be used with [class@Gtk.ShortcutsWindow].
 */
public class ShortcutsGroup : Box
{
	/** the main Gtk struct */
	protected GtkShortcutsGroup* gtkShortcutsGroup;

	/** Get the main Gtk struct */
	public GtkShortcutsGroup* getShortcutsGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutsGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutsGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutsGroup* gtkShortcutsGroup, bool ownedRef = false)
	{
		this.gtkShortcutsGroup = gtkShortcutsGroup;
		super(cast(GtkBox*)gtkShortcutsGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcuts_group_get_type();
	}
}
