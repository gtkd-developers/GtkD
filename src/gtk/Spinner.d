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
 * inFile  = GtkSpinner.html
 * outPack = gtk
 * outFile = Spinner
 * strct   = GtkSpinner
 * realStrct=
 * ctorStrct=
 * clss    = Spinner
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_spinner_
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

module gtk.Spinner;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.Widget;

/**
 * A GtkSpinner widget displays an icon-size spinning animation.
 * It is often used as an alternative to a GtkProgressBar for
 * displaying indefinite activity, instead of actual progress.
 *
 * To start the animation, use gtk_spinner_start(), to stop it
 * use gtk_spinner_stop().
 */
public class Spinner : Widget
{
	
	/** the main Gtk struct */
	protected GtkSpinner* gtkSpinner;
	
	
	public GtkSpinner* getSpinnerStruct()
	{
		return gtkSpinner;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSpinner;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSpinner* gtkSpinner)
	{
		super(cast(GtkWidget*)gtkSpinner);
		this.gtkSpinner = gtkSpinner;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSpinner = cast(GtkSpinner*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns a new spinner widget. Not yet started.
	 * Since 2.20
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_spinner_new (void);
		auto p = gtk_spinner_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_spinner_new()");
		}
		this(cast(GtkSpinner*) p);
	}
	
	/**
	 * Starts the animation of the spinner.
	 * Since 2.20
	 */
	public void start()
	{
		// void gtk_spinner_start (GtkSpinner *spinner);
		gtk_spinner_start(gtkSpinner);
	}
	
	/**
	 * Stops the animation of the spinner.
	 * Since 2.20
	 */
	public void stop()
	{
		// void gtk_spinner_stop (GtkSpinner *spinner);
		gtk_spinner_stop(gtkSpinner);
	}
}
