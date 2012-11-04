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
 * inFile  = GtkFontChooserWidget.html
 * outPack = gtk
 * outFile = FontChooserWidget
 * strct   = GtkFontChooserWidget
 * realStrct=
 * ctorStrct=
 * clss    = FontChooserWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- FontChooserIF
 * prefixes:
 * 	- gtk_font_chooser_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.FontChooserT
 * 	- gtk.FontChooserIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontChooserWidget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.FontChooserT;
private import gtk.FontChooserIF;



private import gtk.Box;

/**
 * Description
 * The GtkFontChooserWidget widget lists the available fonts,
 * styles and sizes, allowing the user to select a font. It is
 * used in the GtkFontChooserDialog widget to provide a
 * dialog box for selecting fonts.
 * To set the font which is initially selected, use
 * gtk_font_chooser_set_font() or gtk_font_chooser_set_font_desc().
 * To get the selected font use gtk_font_chooser_get_font() or
 * gtk_font_chooser_get_font_desc().
 * To change the text which is shown in the preview area, use
 * gtk_font_chooser_set_preview_text().
 */
public class FontChooserWidget : Box, FontChooserIF
{
	
	/** the main Gtk struct */
	protected GtkFontChooserWidget* gtkFontChooserWidget;
	
	
	public GtkFontChooserWidget* getFontChooserWidgetStruct()
	{
		return gtkFontChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontChooserWidget* gtkFontChooserWidget)
	{
		super(cast(GtkBox*)gtkFontChooserWidget);
		this.gtkFontChooserWidget = gtkFontChooserWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFontChooserWidget = cast(GtkFontChooserWidget*)obj;
	}
	
	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontChooserWidget);
	
	/**
	 */
	
	/**
	 * Creates a new GtkFontChooserWidget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_font_chooser_widget_new (void);
		auto p = gtk_font_chooser_widget_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_chooser_widget_new()");
		}
		this(cast(GtkFontChooserWidget*) p);
	}
}
