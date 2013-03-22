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
 * inFile  = GtkVSeparator.html
 * outPack = gtk
 * outFile = VSeparator
 * strct   = GtkVSeparator
 * realStrct=
 * ctorStrct=
 * clss    = VSeparator
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vseparator_
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

module gtk.VSeparator;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.Separator;

/**
 * The GtkVSeparator widget is a vertical separator, used to group the
 * widgets within a window. It displays a vertical line with a shadow to
 * make it appear sunken into the interface.
 *
 * GtkVSeparator has been deprecated, use GtkSeparator instead.
 */
public class VSeparator : Separator
{
	
	/** the main Gtk struct */
	protected GtkVSeparator* gtkVSeparator;
	
	
	public GtkVSeparator* getVSeparatorStruct()
	{
		return gtkVSeparator;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVSeparator;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVSeparator* gtkVSeparator)
	{
		super(cast(GtkSeparator*)gtkVSeparator);
		this.gtkVSeparator = gtkVSeparator;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkVSeparator = cast(GtkVSeparator*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_vseparator_new has been deprecated since version 3.2 and should not be used in newly-written code. Use gtk_separator_new() with GTK_ORIENTATION_VERTICAL instead
	 * Creates a new GtkVSeparator.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_vseparator_new (void);
		auto p = gtk_vseparator_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vseparator_new()");
		}
		this(cast(GtkVSeparator*) p);
	}
}
