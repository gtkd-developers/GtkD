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
 * inFile  = GtkHRuler.html
 * outPack = gtk
 * outFile = HRuler
 * strct   = GtkHRuler
 * realStrct=
 * ctorStrct=
 * clss    = HRuler
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hruler_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.HRuler;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.Ruler;

/**
 * Description
 * Note
 *  This widget is considered too specialized/little-used for
 *  GTK+, and will be removed in GTK 3. If your application needs this widget,
 *  feel free to use it, as the widget is useful in some applications; it's just
 *  not of general interest. However, we are not accepting new features for the
 *  widget, and it will move out of the GTK+ distribution.
 * The HRuler widget is a widget arranged horizontally creating a ruler that is
 * utilized around other widgets such as a text widget. The ruler is used to show
 * the location of the mouse on the window and to show the size of the window in
 * specified units. The available units of measurement are GTK_PIXELS, GTK_INCHES
 * and GTK_CENTIMETERS. GTK_PIXELS is the default.
 * rulers.
 */
public class HRuler : Ruler
{
	
	/** the main Gtk struct */
	protected GtkHRuler* gtkHRuler;
	
	
	public GtkHRuler* getHRulerStruct()
	{
		return gtkHRuler;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHRuler;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHRuler* gtkHRuler)
	{
		super(cast(GtkRuler*)gtkHRuler);
		this.gtkHRuler = gtkHRuler;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHRuler = cast(GtkHRuler*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_hruler_new has been deprecated since version 2.24 and should not be used in newly-written code. GtkRuler has been removed from GTK 3 for being
	 *  unmaintained and too specialized. There is no replacement.
	 * Creates a new horizontal ruler.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_hruler_new (void);
		auto p = gtk_hruler_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_hruler_new()");
		}
		this(cast(GtkHRuler*) p);
	}
}
