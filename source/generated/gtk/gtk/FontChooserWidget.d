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


module gtk.FontChooserWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.FontChooserIF;
private import gtk.FontChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkFontChooserWidget` widget lets the user select a font.
 * 
 * It is used in the `GtkFontChooserDialog` widget to provide a
 * dialog for selecting fonts.
 * 
 * To set the font which is initially selected, use
 * [method@Gtk.FontChooser.set_font] or [method@Gtk.FontChooser.set_font_desc].
 * 
 * To get the selected font use [method@Gtk.FontChooser.get_font] or
 * [method@Gtk.FontChooser.get_font_desc].
 * 
 * To change the text which is shown in the preview area, use
 * [method@Gtk.FontChooser.set_preview_text].
 * 
 * # CSS nodes
 * 
 * `GtkFontChooserWidget` has a single CSS node with name fontchooser.
 */
public class FontChooserWidget : Widget, FontChooserIF
{
	/** the main Gtk struct */
	protected GtkFontChooserWidget* gtkFontChooserWidget;

	/** Get the main Gtk struct */
	public GtkFontChooserWidget* getFontChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFontChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontChooserWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFontChooserWidget* gtkFontChooserWidget, bool ownedRef = false)
	{
		this.gtkFontChooserWidget = gtkFontChooserWidget;
		super(cast(GtkWidget*)gtkFontChooserWidget, ownedRef);
	}

	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_font_chooser_widget_get_type();
	}

	/**
	 * Creates a new `GtkFontChooserWidget`.
	 *
	 * Returns: a new `GtkFontChooserWidget`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_font_chooser_widget_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFontChooserWidget*) __p);
	}
}
