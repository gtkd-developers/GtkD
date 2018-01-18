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


module gsv.StyleSchemeChooserButton;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsv.StyleSchemeChooserIF;
private import gsv.StyleSchemeChooserT;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableIF;
private import gtk.ActivatableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Button;
private import gtk.Widget;


/** */
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
	 * Since: 3.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_source_style_scheme_chooser_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceStyleSchemeChooserButton*) p);
	}
}
