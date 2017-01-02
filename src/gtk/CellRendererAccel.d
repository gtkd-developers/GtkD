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


module gtk.CellRendererAccel;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.CellRendererText;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkCellRendererAccel displays a keyboard accelerator (i.e. a key
 * combination like `Control + a`). If the cell renderer is editable,
 * the accelerator can be changed by simply typing the new combination.
 * 
 * The #GtkCellRendererAccel cell renderer was added in GTK+ 2.10.
 */
public class CellRendererAccel : CellRendererText
{
	/** the main Gtk struct */
	protected GtkCellRendererAccel* gtkCellRendererAccel;

	/** Get the main Gtk struct */
	public GtkCellRendererAccel* getCellRendererAccelStruct()
	{
		return gtkCellRendererAccel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererAccel;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkCellRendererAccel = cast(GtkCellRendererAccel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCellRendererAccel* gtkCellRendererAccel, bool ownedRef = false)
	{
		this.gtkCellRendererAccel = gtkCellRendererAccel;
		super(cast(GtkCellRendererText*)gtkCellRendererAccel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_cell_renderer_accel_get_type();
	}

	/**
	 * Creates a new #GtkCellRendererAccel.
	 *
	 * Return: the new cell renderer
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_cell_renderer_accel_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkCellRendererAccel*) p);
	}

	protected class OnAccelClearedDelegateWrapper
	{
		void delegate(string, CellRendererAccel) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, CellRendererAccel) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAccelClearedDelegateWrapper[] onAccelClearedListeners;

	/**
	 * Gets emitted when the user has removed the accelerator.
	 *
	 * Params:
	 *     pathString = the path identifying the row of the edited cell
	 *
	 * Since: 2.10
	 */
	gulong addOnAccelCleared(void delegate(string, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onAccelClearedListeners ~= new OnAccelClearedDelegateWrapper(dlg, 0, connectFlags);
		onAccelClearedListeners[onAccelClearedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"accel-cleared",
			cast(GCallback)&callBackAccelCleared,
			cast(void*)onAccelClearedListeners[onAccelClearedListeners.length - 1],
			cast(GClosureNotify)&callBackAccelClearedDestroy,
			connectFlags);
		return onAccelClearedListeners[onAccelClearedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackAccelCleared(GtkCellRendererAccel* cellrendereraccelStruct, char* pathString,OnAccelClearedDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(pathString), wrapper.outer);
	}
	
	extern(C) static void callBackAccelClearedDestroy(OnAccelClearedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnAccelCleared(wrapper);
	}

	protected void internalRemoveOnAccelCleared(OnAccelClearedDelegateWrapper source)
	{
		foreach(index, wrapper; onAccelClearedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onAccelClearedListeners[index] = null;
				onAccelClearedListeners = std.algorithm.remove(onAccelClearedListeners, index);
				break;
			}
		}
	}
	

	protected class OnAccelEditedDelegateWrapper
	{
		void delegate(string, uint, GdkModifierType, uint, CellRendererAccel) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, uint, GdkModifierType, uint, CellRendererAccel) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAccelEditedDelegateWrapper[] onAccelEditedListeners;

	/**
	 * Gets emitted when the user has selected a new accelerator.
	 *
	 * Params:
	 *     pathString = the path identifying the row of the edited cell
	 *     accelKey = the new accelerator keyval
	 *     accelMods = the new acclerator modifier mask
	 *     hardwareKeycode = the keycode of the new accelerator
	 *
	 * Since: 2.10
	 */
	gulong addOnAccelEdited(void delegate(string, uint, GdkModifierType, uint, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onAccelEditedListeners ~= new OnAccelEditedDelegateWrapper(dlg, 0, connectFlags);
		onAccelEditedListeners[onAccelEditedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"accel-edited",
			cast(GCallback)&callBackAccelEdited,
			cast(void*)onAccelEditedListeners[onAccelEditedListeners.length - 1],
			cast(GClosureNotify)&callBackAccelEditedDestroy,
			connectFlags);
		return onAccelEditedListeners[onAccelEditedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackAccelEdited(GtkCellRendererAccel* cellrendereraccelStruct, char* pathString, uint accelKey, GdkModifierType accelMods, uint hardwareKeycode,OnAccelEditedDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(pathString), accelKey, accelMods, hardwareKeycode, wrapper.outer);
	}
	
	extern(C) static void callBackAccelEditedDestroy(OnAccelEditedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnAccelEdited(wrapper);
	}

	protected void internalRemoveOnAccelEdited(OnAccelEditedDelegateWrapper source)
	{
		foreach(index, wrapper; onAccelEditedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onAccelEditedListeners[index] = null;
				onAccelEditedListeners = std.algorithm.remove(onAccelEditedListeners, index);
				break;
			}
		}
	}
	
}
