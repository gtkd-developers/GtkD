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
 * inFile  = GtkColorChooserWidget.html
 * outPack = gtk
 * outFile = ColorChooserWidget
 * strct   = GtkColorChooserWidget
 * realStrct=
 * ctorStrct=
 * clss    = ColorChooserWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ColorChooserIF
 * prefixes:
 * 	- gtk_color_chooser_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.ColorChooserIF
 * 	- gtk.ColorChooserT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorChooserWidget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;



private import gtk.Box;

/**
 * The GtkColorChooserWidget widget lets the user select a
 * color. By default, the chooser presents a prefined palette
 * of colors, plus a small number of settable custom colors.
 * It is also possible to select a different color with the
 * single-color editor. To enter the single-color editing mode,
 * use the context menu of any color of the palette, or use the
 * '+' button to add a new custom color.
 *
 * The chooser automatically remembers the last selection, as well
 * as custom colors.
 *
 * To change the initially selected color, use gtk_color_chooser_set_rgba().
 * To get the selected font use gtk_color_chooser_get_rgba().
 *
 * The GtkColorChooserWidget is used in the GtkColorChooserDialog
 * to provide a dialog for selecting colors.
 */
public class ColorChooserWidget : Box, ColorChooserIF
{
	
	/** the main Gtk struct */
	protected GtkColorChooserWidget* gtkColorChooserWidget;
	
	
	public GtkColorChooserWidget* getColorChooserWidgetStruct()
	{
		return gtkColorChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorChooserWidget* gtkColorChooserWidget)
	{
		super(cast(GtkBox*)gtkColorChooserWidget);
		this.gtkColorChooserWidget = gtkColorChooserWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorChooserWidget = cast(GtkColorChooserWidget*)obj;
	}
	
	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorChooserWidget);
	
	/**
	 */
	
	/**
	 * Creates a new GtkColorChooserWidget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_color_chooser_widget_new (void);
		auto p = gtk_color_chooser_widget_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_chooser_widget_new()");
		}
		this(cast(GtkColorChooserWidget*) p);
	}
}
