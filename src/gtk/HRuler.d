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
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_hruler_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.HRuler;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Ruler;

/**
 * Description
 * Note
 *  This widget is considered too specialized/little-used for
 *  GTK+, and will in the future be moved to some other package. If
 *  your application needs this widget, feel free to use it, as the
 *  widget does work and is useful in some applications; it's just not
 *  of general interest. However, we are not accepting new features for
 *  the widget, and it will eventually move out of the GTK+
 *  distribution.
 * The HRuler widget is a widget arranged horizontally creating a ruler that is
 * utilized around other widgets such as a text widget. The ruler is used to show
 * the location of the mouse on the window and to show the size of the window in
 * specified units. The available units of measurement are GTK_PIXELS, GTK_INCHES
 * and GTK_CENTIMETERS. GTK_PIXELS is the default.
 * rulers.
 */
public class HRuler : Ruler, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkHRuler* gtkHRuler;
	
	
	public GtkHRuler* getHRulerStruct()
	{
		return gtkHRuler;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHRuler;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHRuler* gtkHRuler)
	{
		if(gtkHRuler is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkHRuler passed to constructor.");
			else return;
		}
		super(cast(GtkRuler*)gtkHRuler);
		this.gtkHRuler = gtkHRuler;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkHRuler);
	
	/**
	 */
	
	/**
	 * Creates a new horizontal ruler.
	 */
	public this ()
	{
		// GtkWidget* gtk_hruler_new (void);
		auto p = gtk_hruler_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkHRuler*) p);
	}
}
