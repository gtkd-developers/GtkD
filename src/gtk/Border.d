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
 * A GtkStyle object encapsulates the information that provides the look and
 * feel for a widget.
 * Warning
 * In GTK+ 3.0, GtkStyle has been deprecated and replaced by GtkStyleContext.
 * Each GtkWidget has an associated GtkStyle object that is used when
 * rendering that widget. Also, a GtkStyle holds information for the five
 * possible widget states though not every widget supports all five
 * states; see GtkStateType.
 * Usually the GtkStyle for a widget is the same as the default style that
 * is set by GTK+ and modified the theme engine.
 * Usually applications should not need to use or modify the GtkStyle of
 * their widgets.
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
	 * visual. Connecting to this signal is probably seldom
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
	 * Emitted when the aspects of the style specific to a particular visual
	 * is being cleaned up. A connection to this signal can be useful
	 * if a widget wants to cache objects as object data on GtkStyle.
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
	
}
