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


module gtk.StyleProviderIF;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.IconFactory;
private import gtk.StyleProperties;
private import gtk.WidgetPath;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkStyleProvider is an interface used to provide style information to a #GtkStyleContext.
 * See gtk_style_context_add_provider() and gtk_style_context_add_provider_for_screen().
 */
public interface StyleProviderIF{
	/** Get the main Gtk struct */
	public GtkStyleProvider* getStyleProviderStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_style_provider_get_type();
	}

	/**
	 * Returns the #GtkIconFactory defined to be in use for @path, or %NULL if none
	 * is defined.
	 *
	 * Deprecated: Will always return %NULL for all GTK-provided style providers.
	 *
	 * Params:
	 *     path = #GtkWidgetPath to query
	 *
	 * Returns: The icon factory to use for @path, or %NULL
	 *
	 * Since: 3.0
	 */
	public IconFactory getIconFactory(WidgetPath path);

	/**
	 * Returns the style settings affecting a widget defined by @path, or %NULL if
	 * @provider doesn’t contemplate styling @path.
	 *
	 * Deprecated: Will always return %NULL for all GTK-provided style providers
	 * as the interface cannot correctly work the way CSS is specified.
	 *
	 * Params:
	 *     path = #GtkWidgetPath to query
	 *
	 * Returns: a #GtkStyleProperties containing the
	 *     style settings affecting @path
	 *
	 * Since: 3.0
	 */
	public StyleProperties getStyle(WidgetPath path);

	/**
	 * Looks up a widget style property as defined by @provider for
	 * the widget represented by @path.
	 *
	 * Params:
	 *     path = #GtkWidgetPath to query
	 *     state = state to query the style property for
	 *     pspec = The #GParamSpec to query
	 *     value = return location for the property value
	 *
	 * Returns: %TRUE if the property was found and has a value, %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public bool getStyleProperty(WidgetPath path, GtkStateFlags state, ParamSpec pspec, out Value value);
}
