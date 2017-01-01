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
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
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
	public GtkShortcutsSection* getShortcutsSectionStruct()
	{
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
		bool delegate(int, ShortcutsSection) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(int, ShortcutsSection) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChangeCurrentPageDelegateWrapper[] onChangeCurrentPageListeners;

	/** */
	gulong addOnChangeCurrentPage(bool delegate(int, ShortcutsSection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChangeCurrentPageListeners ~= new OnChangeCurrentPageDelegateWrapper(dlg, 0, connectFlags);
		onChangeCurrentPageListeners[onChangeCurrentPageListeners.length - 1].handlerId = Signals.connectData(
			this,
			"change-current-page",
			cast(GCallback)&callBackChangeCurrentPage,
			cast(void*)onChangeCurrentPageListeners[onChangeCurrentPageListeners.length - 1],
			cast(GClosureNotify)&callBackChangeCurrentPageDestroy,
			connectFlags);
		return onChangeCurrentPageListeners[onChangeCurrentPageListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackChangeCurrentPage(GtkShortcutsSection* shortcutssectionStruct, int object,OnChangeCurrentPageDelegateWrapper wrapper)
	{
		return wrapper.dlg(object, wrapper.outer);
	}
	
	extern(C) static void callBackChangeCurrentPageDestroy(OnChangeCurrentPageDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChangeCurrentPage(wrapper);
	}

	protected void internalRemoveOnChangeCurrentPage(OnChangeCurrentPageDelegateWrapper source)
	{
		foreach(index, wrapper; onChangeCurrentPageListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChangeCurrentPageListeners[index] = null;
				onChangeCurrentPageListeners = std.algorithm.remove(onChangeCurrentPageListeners, index);
				break;
			}
		}
	}
	
}
