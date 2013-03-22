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
 * inFile  = 
 * outPack = gtk
 * outFile = IconSize
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = IconSize
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_size_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Settings
 * structWrap:
 * 	- GtkSettings* -> Settings
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconSize;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Settings;




/**
 * Browse the available stock icons in the list of stock IDs found here. You can also use
 * the gtk-demo application for this purpose.
 *
 * An icon factory manages a collection of GtkIconSet; a GtkIconSet manages a
 * set of variants of a particular icon (i.e. a GtkIconSet contains variants for
 * different sizes and widget states). Icons in an icon factory are named by a
 * stock ID, which is a simple string identifying the icon. Each GtkStyle has a
 * list of GtkIconFactory derived from the current theme; those icon factories
 * are consulted first when searching for an icon. If the theme doesn't set a
 * particular icon, GTK+ looks for the icon in a list of default icon factories,
 * maintained by gtk_icon_factory_add_default() and
 * gtk_icon_factory_remove_default(). Applications with icons should add a default
 * icon factory with their icons, which will allow themes to override the icons
 * for the application.
 *
 * To display an icon, always use gtk_style_lookup_icon_set() on the widget that
 * will display the icon, or the convenience function
 * gtk_widget_render_icon(). These functions take the theme into account when
 * looking up the icon to use for a given stock ID.
 *
 * GtkIconFactory as GtkBuildable
 *
 * GtkIconFactory supports a custom <sources> element, which can contain
 * multiple <source> elements.
 * The following attributes are allowed:
 *
 * stock-id
 *
 * The stock id of the source, a string.
 * This attribute is mandatory
 *
 * filename
 *
 * The filename of the source, a string.
 * This attribute is optional
 *
 * icon-name
 *
 * The icon name for the source, a string.
 * This attribute is optional.
 *
 * size
 *
 * Size of the icon, a GtkIconSize enum value.
 * This attribute is optional.
 *
 * direction
 *
 * Direction of the source, a GtkTextDirection enum value.
 * This attribute is optional.
 *
 * state
 *
 * State of the source, a GtkStateType enum value.
 * This attribute is optional.
 *
 * $(DDOC_COMMENT example)
 */
public class IconSize
{
	
	/**
	 */
	
	/**
	 * Obtains the pixel size of a semantic icon size, possibly
	 * modified by user preferences for the default GtkSettings.
	 * (See gtk_icon_size_lookup_for_settings().)
	 * Normally size would be
	 * GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_BUTTON, etc. This function
	 * isn't normally needed, gtk_widget_render_icon_pixbuf() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 * Params:
	 * size = an icon size. [type int]
	 * width = location to store icon width. [out]
	 * height = location to store icon height. [out]
	 * Returns: TRUE if size was a valid size
	 */
	public static int lookup(GtkIconSize size, out int width, out int height)
	{
		// gboolean gtk_icon_size_lookup (GtkIconSize size,  gint *width,  gint *height);
		return gtk_icon_size_lookup(size, &width, &height);
	}
	
	/**
	 * Obtains the pixel size of a semantic icon size, possibly
	 * modified by user preferences for a particular
	 * GtkSettings. Normally size would be
	 * GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_BUTTON, etc. This function
	 * isn't normally needed, gtk_widget_render_icon_pixbuf() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 * Since 2.2
	 * Params:
	 * settings = a GtkSettings object, used to determine
	 * which set of user preferences to used.
	 * size = an icon size. [type int]
	 * width = location to store icon width. [out]
	 * height = location to store icon height. [out]
	 * Returns: TRUE if size was a valid size
	 */
	public static int lookupForSettings(Settings settings, GtkIconSize size, out int width, out int height)
	{
		// gboolean gtk_icon_size_lookup_for_settings (GtkSettings *settings,  GtkIconSize size,  gint *width,  gint *height);
		return gtk_icon_size_lookup_for_settings((settings is null) ? null : settings.getSettingsStruct(), size, &width, &height);
	}
	
	/**
	 * Registers a new icon size, along the same lines as GTK_ICON_SIZE_MENU,
	 * etc. Returns the integer value for the size.
	 * Params:
	 * name = name of the icon size
	 * width = the icon width
	 * height = the icon height
	 * Returns: integer value representing the size. [type int]
	 */
	public static GtkIconSize register(string name, int width, int height)
	{
		// GtkIconSize gtk_icon_size_register (const gchar *name,  gint width,  gint height);
		return gtk_icon_size_register(Str.toStringz(name), width, height);
	}
	
	/**
	 * Registers alias as another name for target.
	 * So calling gtk_icon_size_from_name() with alias as argument
	 * will return target.
	 * Params:
	 * target = an existing icon size. [type int]
	 */
	public static void registerAlias(string alia, GtkIconSize target)
	{
		// void gtk_icon_size_register_alias (const gchar *alias,  GtkIconSize target);
		gtk_icon_size_register_alias(Str.toStringz(alia), target);
	}
	
	/**
	 * Looks up the icon size associated with name.
	 * Params:
	 * name = the name to look up.
	 * Returns: the icon size. [type int]
	 */
	public static GtkIconSize fromName(string name)
	{
		// GtkIconSize gtk_icon_size_from_name (const gchar *name);
		return gtk_icon_size_from_name(Str.toStringz(name));
	}
	
	/**
	 * Gets the canonical name of the given icon size. The returned string
	 * is statically allocated and should not be freed.
	 * Params:
	 * size = a GtkIconSize. [type int]
	 * Returns: the name of the given icon size.
	 */
	public static string getName(GtkIconSize size)
	{
		// const gchar * gtk_icon_size_get_name (GtkIconSize size);
		return Str.toString(gtk_icon_size_get_name(size));
	}
}
