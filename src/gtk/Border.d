/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
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
 * inFile  = 
 * outPack = gtk
 * outFile = Border
 * strct   = GtkBorder
 * realStrct=
 * ctorStrct=
 * clss    = Border
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_border_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GtkBorder* -> Border
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Border;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;





/**
 * Description
 */
public class Border
{
	
	/** the main Gtk struct */
	protected GtkBorder* gtkBorder;
	
	
	public GtkBorder* getBorderStruct()
	{
		return gtkBorder;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBorder;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBorder* gtkBorder)
	{
		if(gtkBorder is null)
		{
			this = null;
			return;
		}
		this.gtkBorder = gtkBorder;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Border)[] onRealizeListeners;
	/**
	 * Emitted when the style has been initialized for a particular
	 * colormap and depth. Connecting to this signal is probably seldom
	 * useful since most of the time applications and widgets only
	 * deal with styles that have been already realized.
	 * Since 2.4
	 */
	void addOnRealize(void delegate(Border) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("realize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"realize",
			cast(GCallback)&callBackRealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["realize"] = 1;
		}
		onRealizeListeners ~= dlg;
	}
	extern(C) static void callBackRealize(GtkStyle* styleStruct, Border border)
	{
		foreach ( void delegate(Border) dlg ; border.onRealizeListeners )
		{
			dlg(border);
		}
	}
	
	void delegate(Border)[] onUnrealizeListeners;
	/**
	 * Emitted when the aspects of the style specific to a particular colormap
	 * and depth are being cleaned up. A connection to this signal can be useful
	 * if a widget wants to cache objects like a GdkGC as object data on GtkStyle.
	 * This signal provides a convenient place to free such cached objects.
	 * Since 2.4
	 */
	void addOnUnrealize(void delegate(Border) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unrealize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unrealize",
			cast(GCallback)&callBackUnrealize,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unrealize"] = 1;
		}
		onUnrealizeListeners ~= dlg;
	}
	extern(C) static void callBackUnrealize(GtkStyle* styleStruct, Border border)
	{
		foreach ( void delegate(Border) dlg ; border.onUnrealizeListeners )
		{
			dlg(border);
		}
	}
	
	
	/**
	 * Allocates a new GtkBorder structure and initializes its elements to zero.
	 * Since 2.14
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkBorder * gtk_border_new (void);
		auto p = gtk_border_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_border_new()");
		}
		this(cast(GtkBorder*) p);
	}
	
	/**
	 * Copies a GtkBorder structure.
	 * Returns: a copy of border_.
	 */
	public Border copy()
	{
		// GtkBorder * gtk_border_copy (const GtkBorder *border_);
		auto p = gtk_border_copy(gtkBorder);
		if(p is null)
		{
			return null;
		}
		return new Border(cast(GtkBorder*) p);
	}
	
	/**
	 * Frees a GtkBorder structure.
	 */
	public void free()
	{
		// void gtk_border_free (GtkBorder *border_);
		gtk_border_free(gtkBorder);
	}
}
