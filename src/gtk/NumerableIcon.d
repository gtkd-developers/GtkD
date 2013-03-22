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
 * inFile  = GtkNumerableIcon.html
 * outPack = gtk
 * outFile = NumerableIcon
 * strct   = GtkNumerableIcon
 * realStrct=
 * ctorStrct=
 * clss    = NumerableIcon
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GioEmblemedIcon
 * implements:
 * prefixes:
 * 	- gtk_numerable_icon_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.EmblemedIcon : GioEmblemedIcon = EmblemedIcon
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gtk.StyleContext
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GtkStyleContext* -> StyleContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.NumerableIcon;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.EmblemedIcon : GioEmblemedIcon = EmblemedIcon;
private import gio.Icon;
private import gio.IconIF;
private import gtk.StyleContext;




/**
 * GtkNumerableIcon is a subclass of GEmblemedIcon that can
 * show a number or short string as an emblem. The number can
 * be overlayed on top of another emblem, if desired.
 *
 * It supports theming by taking font and color information
 * from a provided GtkStyleContext; see
 * gtk_numerable_icon_set_style_context().
 *
 * $(DDOC_COMMENT example)
 */
public class NumerableIcon : GioEmblemedIcon
{
	
	/** the main Gtk struct */
	protected GtkNumerableIcon* gtkNumerableIcon;
	
	
	public GtkNumerableIcon* getNumerableIconStruct()
	{
		return gtkNumerableIcon;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkNumerableIcon;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkNumerableIcon* gtkNumerableIcon)
	{
		super(cast(GEmblemedIcon*)gtkNumerableIcon);
		this.gtkNumerableIcon = gtkNumerableIcon;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkNumerableIcon = cast(GtkNumerableIcon*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new unthemed GtkNumerableIcon.
	 * Params:
	 * baseIcon = a GIcon to overlay on
	 * Returns: a new GIcon. [transfer full] Since 3.0
	 */
	public static IconIF newNumerableIcon(IconIF baseIcon)
	{
		// GIcon * gtk_numerable_icon_new (GIcon *base_icon);
		auto p = gtk_numerable_icon_new((baseIcon is null) ? null : baseIcon.getIconTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Creates a new GtkNumerableIcon which will themed according
	 * to the passed GtkStyleContext. This is a convenience constructor
	 * that calls gtk_numerable_icon_set_style_context() internally.
	 * Params:
	 * baseIcon = a GIcon to overlay on
	 * context = a GtkStyleContext
	 * Returns: a new GIcon. [transfer full] Since 3.0
	 */
	public static IconIF newWithStyleContext(IconIF baseIcon, StyleContext context)
	{
		// GIcon * gtk_numerable_icon_new_with_style_context  (GIcon *base_icon,  GtkStyleContext *context);
		auto p = gtk_numerable_icon_new_with_style_context((baseIcon is null) ? null : baseIcon.getIconTStruct(), (context is null) ? null : context.getStyleContextStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Returns the GIcon that was set as the base background image, or
	 * NULL if there's none. The caller of this function does not own
	 * a reference to the returned GIcon.
	 * Returns: a GIcon, or NULL. [transfer none] Since 3.0
	 */
	public IconIF getBackgroundGicon()
	{
		// GIcon * gtk_numerable_icon_get_background_gicon  (GtkNumerableIcon *self);
		auto p = gtk_numerable_icon_get_background_gicon(gtkNumerableIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Updates the icon to use icon as the base background image.
	 * If icon is NULL, self will go back using style information
	 * or default theming for its background image.
	 * If this method is called and an icon name was already set as
	 * background for the icon, icon will be used, i.e. the last method
	 * called between gtk_numerable_icon_set_background_gicon() and
	 * gtk_numerable_icon_set_background_icon_name() has always priority.
	 * Params:
	 * icon = a GIcon, or NULL. [allow-none]
	 * Since 3.0
	 */
	public void setBackgroundGicon(IconIF icon)
	{
		// void gtk_numerable_icon_set_background_gicon  (GtkNumerableIcon *self,  GIcon *icon);
		gtk_numerable_icon_set_background_gicon(gtkNumerableIcon, (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Returns the icon name used as the base background image,
	 * or NULL if there's none.
	 * Returns: an icon name, or NULL Since 3.0
	 */
	public string getBackgroundIconName()
	{
		// const gchar * gtk_numerable_icon_get_background_icon_name  (GtkNumerableIcon *self);
		return Str.toString(gtk_numerable_icon_get_background_icon_name(gtkNumerableIcon));
	}
	
	/**
	 * Updates the icon to use the icon named icon_name from the
	 * current icon theme as the base background image. If icon_name
	 * is NULL, self will go back using style information or default
	 * theming for its background image.
	 * If this method is called and a GIcon was already set as
	 * background for the icon, icon_name will be used, i.e. the
	 * last method called between gtk_numerable_icon_set_background_icon_name()
	 * and gtk_numerable_icon_set_background_gicon() has always priority.
	 * Params:
	 * iconName = an icon name, or NULL. [allow-none]
	 * Since 3.0
	 */
	public void setBackgroundIconName(string iconName)
	{
		// void gtk_numerable_icon_set_background_icon_name  (GtkNumerableIcon *self,  const gchar *icon_name);
		gtk_numerable_icon_set_background_icon_name(gtkNumerableIcon, Str.toStringz(iconName));
	}
	
	/**
	 * Returns the value currently displayed by self.
	 * Returns: the currently displayed value Since 3.0
	 */
	public int getCount()
	{
		// gint gtk_numerable_icon_get_count (GtkNumerableIcon *self);
		return gtk_numerable_icon_get_count(gtkNumerableIcon);
	}
	
	/**
	 * Sets the currently displayed value of self to count.
	 * The numeric value is always clamped to make it two digits, i.e.
	 * between -99 and 99. Setting a count of zero removes the emblem.
	 * If this method is called, and a label was already set on the icon,
	 * it will automatically be reset to NULL before rendering the number,
	 * i.e. the last method called between gtk_numerable_icon_set_count()
	 * and gtk_numerable_icon_set_label() has always priority.
	 * Params:
	 * count = a number between -99 and 99
	 * Since 3.0
	 */
	public void setCount(int count)
	{
		// void gtk_numerable_icon_set_count (GtkNumerableIcon *self,  gint count);
		gtk_numerable_icon_set_count(gtkNumerableIcon, count);
	}
	
	/**
	 * Returns the currently displayed label of the icon, or NULL.
	 * Returns: the currently displayed label Since 3.0
	 */
	public string getLabel()
	{
		// const gchar * gtk_numerable_icon_get_label (GtkNumerableIcon *self);
		return Str.toString(gtk_numerable_icon_get_label(gtkNumerableIcon));
	}
	
	/**
	 * Sets the currently displayed value of self to the string
	 * in label. Setting an empty label removes the emblem.
	 * Note that this is meant for displaying short labels, such as
	 * roman numbers, or single letters. For roman numbers, consider
	 * using the Unicode characters U+2160 - U+217F. Strings longer
	 * than two characters will likely not be rendered very well.
	 * If this method is called, and a number was already set on the
	 * icon, it will automatically be reset to zero before rendering
	 * the label, i.e. the last method called between
	 * gtk_numerable_icon_set_label() and gtk_numerable_icon_set_count()
	 * has always priority.
	 * Params:
	 * label = a short label, or NULL. [allow-none]
	 * Since 3.0
	 */
	public void setLabel(string label)
	{
		// void gtk_numerable_icon_set_label (GtkNumerableIcon *self,  const gchar *label);
		gtk_numerable_icon_set_label(gtkNumerableIcon, Str.toStringz(label));
	}
	
	/**
	 * Returns the GtkStyleContext used by the icon for theming,
	 * or NULL if there's none.
	 * Returns: a GtkStyleContext, or NULL. This object is internal to GTK+ and should not be unreffed. Use g_object_ref() if you want to keep it around. [transfer none] Since 3.0
	 */
	public StyleContext getStyleContext()
	{
		// GtkStyleContext * gtk_numerable_icon_get_style_context  (GtkNumerableIcon *self);
		auto p = gtk_numerable_icon_get_style_context(gtkNumerableIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) p);
	}
	
	/**
	 * Updates the icon to fetch theme information from the
	 * given GtkStyleContext.
	 * Params:
	 * style = a GtkStyleContext
	 * Since 3.0
	 */
	public void setStyleContext(StyleContext style)
	{
		// void gtk_numerable_icon_set_style_context  (GtkNumerableIcon *self,  GtkStyleContext *style);
		gtk_numerable_icon_set_style_context(gtkNumerableIcon, (style is null) ? null : style.getStyleContextStruct());
	}
}
