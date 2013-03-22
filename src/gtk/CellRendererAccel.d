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

/*
 * Conversion parameters:
 * inFile  = GtkCellRendererAccel.html
 * outPack = gtk
 * outFile = CellRendererAccel
 * strct   = GtkCellRendererAccel
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererAccel
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_accel_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererAccel;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gtk.CellRendererText;

/**
 * GtkCellRendererAccel displays a keyboard accelerator (i.e. a
 * key combination like Control+a.
 * If the cell renderer is editable, the accelerator can be changed by
 * simply typing the new combination.
 *
 * The GtkCellRendererAccel cell renderer was added in GTK+ 2.10.
 */
public class CellRendererAccel : CellRendererText
{
	
	/** the main Gtk struct */
	protected GtkCellRendererAccel* gtkCellRendererAccel;
	
	
	public GtkCellRendererAccel* getCellRendererAccelStruct()
	{
		return gtkCellRendererAccel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererAccel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererAccel* gtkCellRendererAccel)
	{
		super(cast(GtkCellRendererText*)gtkCellRendererAccel);
		this.gtkCellRendererAccel = gtkCellRendererAccel;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererAccel = cast(GtkCellRendererAccel*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, CellRendererAccel)[] onAccelClearedListeners;
	/**
	 * Gets emitted when the user has removed the accelerator.
	 * Since 2.10
	 */
	void addOnAccelCleared(void delegate(string, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("accel-cleared" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-cleared",
			cast(GCallback)&callBackAccelCleared,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["accel-cleared"] = 1;
		}
		onAccelClearedListeners ~= dlg;
	}
	extern(C) static void callBackAccelCleared(GtkCellRendererAccel* accelStruct, gchar* pathString, CellRendererAccel _cellRendererAccel)
	{
		foreach ( void delegate(string, CellRendererAccel) dlg ; _cellRendererAccel.onAccelClearedListeners )
		{
			dlg(Str.toString(pathString), _cellRendererAccel);
		}
	}
	
	void delegate(string, guint, GdkModifierType, guint, CellRendererAccel)[] onAccelEditedListeners;
	/**
	 * Gets emitted when the user has selected a new accelerator.
	 * Since 2.10
	 */
	void addOnAccelEdited(void delegate(string, guint, GdkModifierType, guint, CellRendererAccel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("accel-edited" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-edited",
			cast(GCallback)&callBackAccelEdited,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["accel-edited"] = 1;
		}
		onAccelEditedListeners ~= dlg;
	}
	extern(C) static void callBackAccelEdited(GtkCellRendererAccel* accelStruct, gchar* pathString, guint accelKey, GdkModifierType accelMods, guint hardwareKeycode, CellRendererAccel _cellRendererAccel)
	{
		foreach ( void delegate(string, guint, GdkModifierType, guint, CellRendererAccel) dlg ; _cellRendererAccel.onAccelEditedListeners )
		{
			dlg(Str.toString(pathString), accelKey, accelMods, hardwareKeycode, _cellRendererAccel);
		}
	}
	
	
	/**
	 * Creates a new GtkCellRendererAccel.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_accel_new (void);
		auto p = gtk_cell_renderer_accel_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_accel_new()");
		}
		this(cast(GtkCellRendererAccel*) p);
	}
}
