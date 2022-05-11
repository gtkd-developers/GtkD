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


module sourceview.StyleSchemeChooserWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import sourceview.StyleSchemeChooserIF;
private import sourceview.StyleSchemeChooserT;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A widget for choosing style schemes.
 * 
 * The `GtkSourceStyleSchemeChooserWidget` widget lets the user select a
 * style scheme. By default, the chooser presents a predefined list
 * of style schemes.
 * 
 * To change the initially selected style scheme,
 * use [method@StyleSchemeChooser.set_style_scheme].
 * To get the selected style scheme
 * use [method@StyleSchemeChooser.get_style_scheme].
 */
public class StyleSchemeChooserWidget : Widget, StyleSchemeChooserIF
{
	/** the main Gtk struct */
	protected GtkSourceStyleSchemeChooserWidget* gtkSourceStyleSchemeChooserWidget;

	/** Get the main Gtk struct */
	public GtkSourceStyleSchemeChooserWidget* getStyleSchemeChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyleSchemeChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleSchemeChooserWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyleSchemeChooserWidget* gtkSourceStyleSchemeChooserWidget, bool ownedRef = false)
	{
		this.gtkSourceStyleSchemeChooserWidget = gtkSourceStyleSchemeChooserWidget;
		super(cast(GtkWidget*)gtkSourceStyleSchemeChooserWidget, ownedRef);
	}

	// add the StyleSchemeChooser capabilities
	mixin StyleSchemeChooserT!(GtkSourceStyleSchemeChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_source_style_scheme_chooser_widget_get_type();
	}

	/**
	 * Creates a new #GtkSourceStyleSchemeChooserWidget.
	 *
	 * Returns: a new  #GtkSourceStyleSchemeChooserWidget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_style_scheme_chooser_widget_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemeChooserWidget*) __p);
	}
}
