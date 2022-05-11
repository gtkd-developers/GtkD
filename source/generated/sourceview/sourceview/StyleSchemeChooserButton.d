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


module sourceview.StyleSchemeChooserButton;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Button;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;
private import sourceview.StyleSchemeChooserIF;
private import sourceview.StyleSchemeChooserT;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A button to launch a style scheme selection dialog.
 * 
 * The `GtkSourceStyleSchemeChooserButton` is a button which displays
 * the currently selected style scheme and allows to open a style scheme
 * selection dialog to change the style scheme.
 * It is suitable widget for selecting a style scheme in a preference dialog.
 * 
 * In `GtkSourceStyleSchemeChooserButton`, a [class@StyleSchemeChooserWidget]
 * is used to provide a dialog for selecting style schemes.
 */
public class StyleSchemeChooserButton : Button, StyleSchemeChooserIF
{
	/** the main Gtk struct */
	protected GtkSourceStyleSchemeChooserButton* gtkSourceStyleSchemeChooserButton;

	/** Get the main Gtk struct */
	public GtkSourceStyleSchemeChooserButton* getStyleSchemeChooserButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceStyleSchemeChooserButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceStyleSchemeChooserButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceStyleSchemeChooserButton* gtkSourceStyleSchemeChooserButton, bool ownedRef = false)
	{
		this.gtkSourceStyleSchemeChooserButton = gtkSourceStyleSchemeChooserButton;
		super(cast(GtkButton*)gtkSourceStyleSchemeChooserButton, ownedRef);
	}

	// add the StyleSchemeChooser capabilities
	mixin StyleSchemeChooserT!(GtkSourceStyleSchemeChooserButton);


	/** */
	public static GType getType()
	{
		return gtk_source_style_scheme_chooser_button_get_type();
	}

	/**
	 * Creates a new #GtkSourceStyleSchemeChooserButton.
	 *
	 * Returns: a new #GtkSourceStyleSchemeChooserButton.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_style_scheme_chooser_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemeChooserButton*) __p);
	}
}
