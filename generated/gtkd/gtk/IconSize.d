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


module gtk.IconSize;

private import glib.Str;
private import gtk.Settings;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public struct IconSize
{

	/**
	 * Looks up the icon size associated with @name.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     name = the name to look up.
	 *
	 * Returns: the icon size (#GtkIconSize)
	 */
	public static GtkIconSize fromName(string name)
	{
		return gtk_icon_size_from_name(Str.toStringz(name));
	}

	/**
	 * Gets the canonical name of the given icon size. The returned string
	 * is statically allocated and should not be freed.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     size = a #GtkIconSize.
	 *
	 * Returns: the name of the given icon size.
	 */
	public static string getName(GtkIconSize size)
	{
		return Str.toString(gtk_icon_size_get_name(size));
	}

	/**
	 * Obtains the pixel size of a semantic icon size @size:
	 * #GTK_ICON_SIZE_MENU, #GTK_ICON_SIZE_BUTTON, etc.  This function
	 * isn’t normally needed, gtk_icon_theme_load_icon() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 *
	 * Params:
	 *     size = an icon size (#GtkIconSize)
	 *     width = location to store icon width
	 *     height = location to store icon height
	 *
	 * Returns: %TRUE if @size was a valid size
	 */
	public static bool lookup(GtkIconSize size, out int width, out int height)
	{
		return gtk_icon_size_lookup(size, &width, &height) != 0;
	}

	/**
	 * Obtains the pixel size of a semantic icon size, possibly
	 * modified by user preferences for a particular
	 * #GtkSettings. Normally @size would be
	 * #GTK_ICON_SIZE_MENU, #GTK_ICON_SIZE_BUTTON, etc.  This function
	 * isn’t normally needed, gtk_widget_render_icon_pixbuf() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 *
	 * Deprecated: Use gtk_icon_size_lookup() instead.
	 *
	 * Params:
	 *     settings = a #GtkSettings object, used to determine
	 *         which set of user preferences to used.
	 *     size = an icon size (#GtkIconSize)
	 *     width = location to store icon width
	 *     height = location to store icon height
	 *
	 * Returns: %TRUE if @size was a valid size
	 *
	 * Since: 2.2
	 */
	public static bool lookupForSettings(Settings settings, GtkIconSize size, out int width, out int height)
	{
		return gtk_icon_size_lookup_for_settings((settings is null) ? null : settings.getSettingsStruct(), size, &width, &height) != 0;
	}

	/**
	 * Registers a new icon size, along the same lines as #GTK_ICON_SIZE_MENU,
	 * etc. Returns the integer value for the size.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     name = name of the icon size
	 *     width = the icon width
	 *     height = the icon height
	 *
	 * Returns: integer value representing the size (#GtkIconSize)
	 */
	public static GtkIconSize register(string name, int width, int height)
	{
		return gtk_icon_size_register(Str.toStringz(name), width, height);
	}

	/**
	 * Registers @alias as another name for @target.
	 * So calling gtk_icon_size_from_name() with @alias as argument
	 * will return @target.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     alias_ = an alias for @target
	 *     target = an existing icon size (#GtkIconSize)
	 */
	public static void registerAlias(string alias_, GtkIconSize target)
	{
		gtk_icon_size_register_alias(Str.toStringz(alias_), target);
	}
}
