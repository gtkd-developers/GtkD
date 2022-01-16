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


module gtk.ShortcutsSection;

private import gobject.Signals;
private import gtk.Box;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkShortcutsSection` collects all the keyboard shortcuts and gestures
 * for a major application mode.
 * 
 * If your application needs multiple sections, you should give each
 * section a unique [property@Gtk.ShortcutsSection:section-name] and
 * a [property@Gtk.ShortcutsSection:title] that can be shown in the
 * section selector of the [class@Gtk.ShortcutsWindow].
 * 
 * The [property@Gtk.ShortcutsSection:max-height] property can be used
 * to influence how the groups in the section are distributed over pages
 * and columns.
 * 
 * This widget is only meant to be used with [class@Gtk.ShortcutsWindow].
 */
public class ShortcutsSection : Box
{
	/** the main Gtk struct */
	protected GtkShortcutsSection* gtkShortcutsSection;

	/** Get the main Gtk struct */
	public GtkShortcutsSection* getShortcutsSectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkShortcutsSection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkShortcutsSection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkShortcutsSection* gtkShortcutsSection, bool ownedRef = false)
	{
		this.gtkShortcutsSection = gtkShortcutsSection;
		super(cast(GtkBox*)gtkShortcutsSection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_shortcuts_section_get_type();
	}

	/** */
	gulong addOnChangeCurrentPage(bool delegate(int, ShortcutsSection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-current-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
