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


module gtk.NumerableIcon;

private import gio.EmblemedIcon;
private import gio.IconIF;
private import gio.IconT;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.StyleContext;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkNumerableIcon is a subclass of #GEmblemedIcon that can
 * show a number or short string as an emblem. The number can
 * be overlayed on top of another emblem, if desired.
 * 
 * It supports theming by taking font and color information
 * from a provided #GtkStyleContext; see
 * gtk_numerable_icon_set_style_context().
 * 
 * Typical numerable icons:
 * ![](numerableicon.png)
 * ![](numerableicon2.png)
 */
public class NumerableIcon : EmblemedIcon
{
	/** the main Gtk struct */
	protected GtkNumerableIcon* gtkNumerableIcon;

	/** Get the main Gtk struct */
	public GtkNumerableIcon* getNumerableIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkNumerableIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNumerableIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkNumerableIcon* gtkNumerableIcon, bool ownedRef = false)
	{
		this.gtkNumerableIcon = gtkNumerableIcon;
		super(cast(GEmblemedIcon*)gtkNumerableIcon, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_numerable_icon_get_type();
	}

	/**
	 * Creates a new unthemed #GtkNumerableIcon.
	 *
	 * Params:
	 *     baseIcon = a #GIcon to overlay on
	 *
	 * Returns: a new #GIcon
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IconIF baseIcon)
	{
		auto p = gtk_numerable_icon_new((baseIcon is null) ? null : baseIcon.getIconStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkNumerableIcon*) p, true);
	}

	/**
	 * Creates a new #GtkNumerableIcon which will themed according
	 * to the passed #GtkStyleContext. This is a convenience constructor
	 * that calls gtk_numerable_icon_set_style_context() internally.
	 *
	 * Params:
	 *     baseIcon = a #GIcon to overlay on
	 *     context = a #GtkStyleContext
	 *
	 * Returns: a new #GIcon
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IconIF baseIcon, StyleContext context)
	{
		auto p = gtk_numerable_icon_new_with_style_context((baseIcon is null) ? null : baseIcon.getIconStruct(), (context is null) ? null : context.getStyleContextStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_style_context");
		}

		this(cast(GtkNumerableIcon*) p, true);
	}

	/**
	 * Returns the #GIcon that was set as the base background image, or
	 * %NULL if there’s none. The caller of this function does not own
	 * a reference to the returned #GIcon.
	 *
	 * Returns: a #GIcon, or %NULL
	 *
	 * Since: 3.0
	 */
	public IconIF getBackgroundGicon()
	{
		auto p = gtk_numerable_icon_get_background_gicon(gtkNumerableIcon);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) p);
	}

	/**
	 * Returns the icon name used as the base background image,
	 * or %NULL if there’s none.
	 *
	 * Returns: an icon name, or %NULL
	 *
	 * Since: 3.0
	 */
	public string getBackgroundIconName()
	{
		return Str.toString(gtk_numerable_icon_get_background_icon_name(gtkNumerableIcon));
	}

	/**
	 * Returns the value currently displayed by @self.
	 *
	 * Returns: the currently displayed value
	 *
	 * Since: 3.0
	 */
	public int getCount()
	{
		return gtk_numerable_icon_get_count(gtkNumerableIcon);
	}

	/**
	 * Returns the currently displayed label of the icon, or %NULL.
	 *
	 * Returns: the currently displayed label
	 *
	 * Since: 3.0
	 */
	public string getLabel()
	{
		return Str.toString(gtk_numerable_icon_get_label(gtkNumerableIcon));
	}

	/**
	 * Returns the #GtkStyleContext used by the icon for theming,
	 * or %NULL if there’s none.
	 *
	 * Returns: a #GtkStyleContext, or %NULL.
	 *     This object is internal to GTK+ and should not be unreffed.
	 *     Use g_object_ref() if you want to keep it around
	 *
	 * Since: 3.0
	 */
	public StyleContext getStyleContext()
	{
		auto p = gtk_numerable_icon_get_style_context(gtkNumerableIcon);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
	}

	/**
	 * Updates the icon to use @icon as the base background image.
	 * If @icon is %NULL, @self will go back using style information
	 * or default theming for its background image.
	 *
	 * If this method is called and an icon name was already set as
	 * background for the icon, @icon will be used, i.e. the last method
	 * called between gtk_numerable_icon_set_background_gicon() and
	 * gtk_numerable_icon_set_background_icon_name() has always priority.
	 *
	 * Params:
	 *     icon = a #GIcon, or %NULL
	 *
	 * Since: 3.0
	 */
	public void setBackgroundGicon(IconIF icon)
	{
		gtk_numerable_icon_set_background_gicon(gtkNumerableIcon, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Updates the icon to use the icon named @icon_name from the
	 * current icon theme as the base background image. If @icon_name
	 * is %NULL, @self will go back using style information or default
	 * theming for its background image.
	 *
	 * If this method is called and a #GIcon was already set as
	 * background for the icon, @icon_name will be used, i.e. the
	 * last method called between gtk_numerable_icon_set_background_icon_name()
	 * and gtk_numerable_icon_set_background_gicon() has always priority.
	 *
	 * Params:
	 *     iconName = an icon name, or %NULL
	 *
	 * Since: 3.0
	 */
	public void setBackgroundIconName(string iconName)
	{
		gtk_numerable_icon_set_background_icon_name(gtkNumerableIcon, Str.toStringz(iconName));
	}

	/**
	 * Sets the currently displayed value of @self to @count.
	 *
	 * The numeric value is always clamped to make it two digits, i.e.
	 * between -99 and 99. Setting a count of zero removes the emblem.
	 * If this method is called, and a label was already set on the icon,
	 * it will automatically be reset to %NULL before rendering the number,
	 * i.e. the last method called between gtk_numerable_icon_set_count()
	 * and gtk_numerable_icon_set_label() has always priority.
	 *
	 * Params:
	 *     count = a number between -99 and 99
	 *
	 * Since: 3.0
	 */
	public void setCount(int count)
	{
		gtk_numerable_icon_set_count(gtkNumerableIcon, count);
	}

	/**
	 * Sets the currently displayed value of @self to the string
	 * in @label. Setting an empty label removes the emblem.
	 *
	 * Note that this is meant for displaying short labels, such as
	 * roman numbers, or single letters. For roman numbers, consider
	 * using the Unicode characters U+2160 - U+217F. Strings longer
	 * than two characters will likely not be rendered very well.
	 *
	 * If this method is called, and a number was already set on the
	 * icon, it will automatically be reset to zero before rendering
	 * the label, i.e. the last method called between
	 * gtk_numerable_icon_set_label() and gtk_numerable_icon_set_count()
	 * has always priority.
	 *
	 * Params:
	 *     label = a short label, or %NULL
	 *
	 * Since: 3.0
	 */
	public void setLabel(string label)
	{
		gtk_numerable_icon_set_label(gtkNumerableIcon, Str.toStringz(label));
	}

	/**
	 * Updates the icon to fetch theme information from the
	 * given #GtkStyleContext.
	 *
	 * Params:
	 *     style = a #GtkStyleContext
	 *
	 * Since: 3.0
	 */
	public void setStyleContext(StyleContext style)
	{
		gtk_numerable_icon_set_style_context(gtkNumerableIcon, (style is null) ? null : style.getStyleContextStruct());
	}
}
