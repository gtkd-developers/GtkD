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


module sourceview.StyleSchemeChooserT;

public  import gobject.ObjectG;
public  import sourceview.StyleScheme;
public  import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Interface implemented by widgets for choosing style schemes.
 * 
 * `GtkSourceStyleSchemeChooser` is an interface that is implemented by widgets
 * for choosing style schemes.
 * 
 * In GtkSourceView, the main widgets that implement this interface are
 * [class@StyleSchemeChooserWidget] and [class@StyleSchemeChooserButton].
 */
public template StyleSchemeChooserT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceStyleSchemeChooser* getStyleSchemeChooserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSourceStyleSchemeChooser*)getStruct();
	}


	/**
	 * Gets the currently-selected scheme.
	 *
	 * Returns: the currently-selected scheme.
	 */
	public StyleScheme getStyleScheme()
	{
		auto __p = gtk_source_style_scheme_chooser_get_style_scheme(getStyleSchemeChooserStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleScheme)(cast(GtkSourceStyleScheme*) __p);
	}

	/**
	 * Sets the scheme.
	 *
	 * Params:
	 *     scheme = a #GtkSourceStyleScheme
	 */
	public void setStyleScheme(StyleScheme scheme)
	{
		gtk_source_style_scheme_chooser_set_style_scheme(getStyleSchemeChooserStruct(), (scheme is null) ? null : scheme.getStyleSchemeStruct());
	}
}
