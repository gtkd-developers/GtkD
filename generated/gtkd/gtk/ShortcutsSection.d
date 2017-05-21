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
 * A GtkShortcutsSection collects all the keyboard shortcuts and gestures
 * for a major application mode. If your application needs multiple sections,
 * you should give each section a unique #GtkShortcutsSection:section-name and
 * a #GtkShortcutsSection:title that can be shown in the section selector of
 * the GtkShortcutsWindow.
 * 
 * The #GtkShortcutsSection:max-height property can be used to influence how
 * the groups in the section are distributed over pages and columns.
 * 
 * This widget is only meant to be used with #GtkShortcutsWindow.
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

	protected override void setStruct(GObject* obj)
	{
		gtkShortcutsSection = cast(GtkShortcutsSection*)obj;
		super.setStruct(obj);
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

	protected class OnChangeCurrentPageDelegateWrapper
	{
		static OnChangeCurrentPageDelegateWrapper[] listeners;
		bool delegate(int, ShortcutsSection) dlg;
		gulong handlerId;

		this(bool delegate(int, ShortcutsSection) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}

		void remove(OnChangeCurrentPageDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/** */
	gulong addOnChangeCurrentPage(bool delegate(int, ShortcutsSection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnChangeCurrentPageDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"change-current-page",
			cast(GCallback)&callBackChangeCurrentPage,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackChangeCurrentPageDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static int callBackChangeCurrentPage(GtkShortcutsSection* shortcutssectionStruct, int object, OnChangeCurrentPageDelegateWrapper wrapper)
	{
		return wrapper.dlg(object, wrapper.outer);
	}

	extern(C) static void callBackChangeCurrentPageDestroy(OnChangeCurrentPageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
