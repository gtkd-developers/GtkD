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


module gsv.StyleSchemeChooserWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsv.StyleSchemeChooserIF;
private import gsv.StyleSchemeChooserT;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;


/** */
public class StyleSchemeChooserWidget : Bin, StyleSchemeChooserIF
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
		super(cast(GtkBin*)gtkSourceStyleSchemeChooserWidget, ownedRef);
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
	 * Since: 3.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_style_scheme_chooser_widget_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemeChooserWidget*) p);
	}
}
