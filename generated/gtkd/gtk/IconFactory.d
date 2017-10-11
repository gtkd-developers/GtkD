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


module gtk.IconFactory;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.IconSet;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * An icon factory manages a collection of #GtkIconSet; a #GtkIconSet manages a
 * set of variants of a particular icon (i.e. a #GtkIconSet contains variants for
 * different sizes and widget states). Icons in an icon factory are named by a
 * stock ID, which is a simple string identifying the icon. Each #GtkStyle has a
 * list of #GtkIconFactory derived from the current theme; those icon factories
 * are consulted first when searching for an icon. If the theme doesn’t set a
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
 * # GtkIconFactory as GtkBuildable # {#GtkIconFactory-BUILDER-UI}
 * 
 * GtkIconFactory supports a custom <sources> element, which can contain
 * multiple <source> elements. The following attributes are allowed:
 * 
 * - stock-id
 * 
 * The stock id of the source, a string. This attribute is
 * mandatory
 * 
 * - filename
 * 
 * The filename of the source, a string.  This attribute is
 * optional
 * 
 * - icon-name
 * 
 * The icon name for the source, a string.  This attribute is
 * optional.
 * 
 * - size
 * 
 * Size of the icon, a #GtkIconSize enum value.  This attribute is
 * optional.
 * 
 * - direction
 * 
 * Direction of the source, a #GtkTextDirection enum value.  This
 * attribute is optional.
 * 
 * - state
 * 
 * State of the source, a #GtkStateType enum value.  This
 * attribute is optional.
 * 
 * 
 * ## A #GtkIconFactory UI definition fragment. ##
 * 
 * |[
 * <object class="GtkIconFactory" id="iconfactory1">
 * <sources>
 * <source stock-id="apple-red" filename="apple-red.png"/>
 * </sources>
 * </object>
 * <object class="GtkWindow" id="window1">
 * <child>
 * <object class="GtkButton" id="apple_button">
 * <property name="label">apple-red</property>
 * <property name="use-stock">True</property>
 * </object>
 * </child>
 * </object>
 * ]|
 */
public class IconFactory : ObjectG, BuildableIF
{
	/** the main Gtk struct */
	protected GtkIconFactory* gtkIconFactory;

	/** Get the main Gtk struct */
	public GtkIconFactory* getIconFactoryStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconFactory;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIconFactory;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconFactory* gtkIconFactory, bool ownedRef = false)
	{
		this.gtkIconFactory = gtkIconFactory;
		super(cast(GObject*)gtkIconFactory, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkIconFactory);


	/** */
	public static GType getType()
	{
		return gtk_icon_factory_get_type();
	}

	/**
	 * Creates a new #GtkIconFactory. An icon factory manages a collection
	 * of #GtkIconSets; a #GtkIconSet manages a set of variants of a
	 * particular icon (i.e. a #GtkIconSet contains variants for different
	 * sizes and widget states). Icons in an icon factory are named by a
	 * stock ID, which is a simple string identifying the icon. Each
	 * #GtkStyle has a list of #GtkIconFactorys derived from the current
	 * theme; those icon factories are consulted first when searching for
	 * an icon. If the theme doesn’t set a particular icon, GTK+ looks for
	 * the icon in a list of default icon factories, maintained by
	 * gtk_icon_factory_add_default() and
	 * gtk_icon_factory_remove_default(). Applications with icons should
	 * add a default icon factory with their icons, which will allow
	 * themes to override the icons for the application.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: a new #GtkIconFactory
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_icon_factory_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconFactory*) p, true);
	}

	/**
	 * Looks for an icon in the list of default icon factories.  For
	 * display to the user, you should use gtk_style_lookup_icon_set() on
	 * the #GtkStyle for the widget that will display the icon, instead of
	 * using this function directly, so that themes are taken into
	 * account.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     stockId = an icon name
	 *
	 * Returns: a #GtkIconSet, or %NULL
	 */
	public static IconSet lookupDefault(string stockId)
	{
		auto p = gtk_icon_factory_lookup_default(Str.toStringz(stockId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}

	/**
	 * Adds the given @icon_set to the icon factory, under the name
	 * @stock_id.  @stock_id should be namespaced for your application,
	 * e.g. “myapp-whatever-icon”.  Normally applications create a
	 * #GtkIconFactory, then add it to the list of default factories with
	 * gtk_icon_factory_add_default(). Then they pass the @stock_id to
	 * widgets such as #GtkImage to display the icon. Themes can provide
	 * an icon with the same name (such as "myapp-whatever-icon") to
	 * override your application’s default icons. If an icon already
	 * existed in @factory for @stock_id, it is unreferenced and replaced
	 * with the new @icon_set.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     stockId = icon name
	 *     iconSet = icon set
	 */
	public void add(string stockId, IconSet iconSet)
	{
		gtk_icon_factory_add(gtkIconFactory, Str.toStringz(stockId), (iconSet is null) ? null : iconSet.getIconSetStruct());
	}

	/**
	 * Adds an icon factory to the list of icon factories searched by
	 * gtk_style_lookup_icon_set(). This means that, for example,
	 * gtk_image_new_from_stock() will be able to find icons in @factory.
	 * There will normally be an icon factory added for each library or
	 * application that comes with icons. The default icon factories
	 * can be overridden by themes.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 */
	public void addDefault()
	{
		gtk_icon_factory_add_default(gtkIconFactory);
	}

	/**
	 * Looks up @stock_id in the icon factory, returning an icon set
	 * if found, otherwise %NULL. For display to the user, you should
	 * use gtk_style_lookup_icon_set() on the #GtkStyle for the
	 * widget that will display the icon, instead of using this
	 * function directly, so that themes are taken into account.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     stockId = an icon name
	 *
	 * Returns: icon set of @stock_id.
	 */
	public IconSet lookup(string stockId)
	{
		auto p = gtk_icon_factory_lookup(gtkIconFactory, Str.toStringz(stockId));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}

	/**
	 * Removes an icon factory from the list of default icon
	 * factories. Not normally used; you might use it for a library that
	 * can be unloaded or shut down.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 */
	public void removeDefault()
	{
		gtk_icon_factory_remove_default(gtkIconFactory);
	}
}
