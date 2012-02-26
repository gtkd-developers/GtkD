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
 * inFile  = GtkVRuler.html
 * outPack = gtk
 * outFile = VRuler
 * strct   = GtkVRuler
 * realStrct=
 * ctorStrct=
 * clss    = VRuler
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vruler_
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

module gtk.VRuler;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;





private import gtk.Ruler;

/**
 * Description
 * Note
 *  This widget is considered too specialized/little-used for
 *  GTK+, and will be removed in GTK 3. If your application needs this widget,
 *  feel free to use it, as the widget is useful in some applications; it's just
 *  not of general interest. However, we are not accepting new features for the
 *  widget, and it will move out of the GTK+ distribution.
 * The VRuler widget is a widget arranged vertically creating a ruler that is
 * utilized around other widgets such as a text widget. The ruler is used to show
 * the location of the mouse on the window and to show the size of the window in
 * specified units. The available units of measurement are GTK_PIXELS, GTK_INCHES
 * and GTK_CENTIMETERS. GTK_PIXELS is the default unit of measurement.
 */
public class VRuler : Ruler
{
	
	/** the main Gtk struct */
	protected GtkVRuler* gtkVRuler;
	
	
	public GtkVRuler* getVRulerStruct()
	{
		return gtkVRuler;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVRuler;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVRuler* gtkVRuler)
	{
		if(gtkVRuler is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkVRuler);
		if( ptr !is null )
		{
			this = cast(VRuler)ptr;
			return;
		}
		super(cast(GtkRuler*)gtkVRuler);
		this.gtkVRuler = gtkVRuler;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkVRuler = cast(GtkVRuler*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_vruler_new is deprecated and should not be used in newly-written code.
	 * Creates a new vertical ruler
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_vruler_new (void);
		auto p = gtk_vruler_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vruler_new()");
		}
		this(cast(GtkVRuler*) p);
	}
}
