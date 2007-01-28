/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtk-Themeable-Stock-Images.html
 * outPack = gtk
 * outFile = IconSource
 * strct   = GtkIconSource
 * realStrct=
 * ctorStrct=
 * clss    = IconSource
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.Style
 * 	- gtk.Widget
 * 	- gtk.Settings
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkSettings* -> Settings
 * 	- GtkStyle* -> Style
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.IconSource;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gdk.Pixbuf;
private import gtk.Style;
private import gtk.Widget;
private import gtk.Settings;



/**
 * Description
 * Browse the available stock icons in the list of stock IDs found here. You can also use
 * the gtk-demo application for this purpose.
 *  An icon factory manages a collection of GtkIconSet; a GtkIconSet manages a
 *  set of variants of a particular icon (i.e. a GtkIconSet contains variants for
 *  different sizes and widget states). Icons in an icon factory are named by a
 *  stock ID, which is a simple string identifying the icon. Each GtkStyle has a
 *  list of GtkIconFactory derived from the current theme; those icon factories
 *  are consulted first when searching for an icon. If the theme doesn't set a
 *  particular icon, GTK+ looks for the icon in a list of default icon factories,
 *  maintained by gtk_icon_factory_add_default() and
 *  gtk_icon_factory_remove_default(). Applications with icons should add a default
 *  icon factory with their icons, which will allow themes to override the icons
 *  for the application.
 * To display an icon, always use gtk_style_lookup_icon_set() on the widget that
 * will display the icon, or the convenience function
 * gtk_widget_render_icon(). These functions take the theme into account when
 * looking up the icon to use for a given stock ID.
 */
public class IconSource
{
	
	/** the main Gtk struct */
	protected GtkIconSource* gtkIconSource;
	
	
	public GtkIconSource* getIconSourceStruct()
	{
		return gtkIconSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconSource* gtkIconSource)
	{
		this.gtkIconSource = gtkIconSource;
	}
	
	/**
	 */
	
	
	
	
	
	/**
	 * Creates a copy of source; mostly useful for language bindings.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  a new GtkIconSource
	 */
	public GtkIconSource* sourceCopy()
	{
		// GtkIconSource* gtk_icon_source_copy (const GtkIconSource *source);
		return gtk_icon_source_copy(gtkIconSource);
	}
	
	/**
	 * Frees a dynamically-allocated icon source, along with its
	 * filename, size, and pixbuf fields if those are not NULL.
	 * source:
	 *  a GtkIconSource
	 */
	public void sourceFree()
	{
		// void gtk_icon_source_free (GtkIconSource *source);
		gtk_icon_source_free(gtkIconSource);
	}
	
	/**
	 * Adds the given icon_set to the icon factory, under the name
	 * stock_id. stock_id should be namespaced for your application,
	 * e.g. "myapp-whatever-icon". Normally applications create a
	 * GtkIconFactory, then add it to the list of default factories with
	 * gtk_icon_factory_add_default(). Then they pass the stock_id to
	 * widgets such as GtkImage to display the icon. Themes can provide
	 * an icon with the same name (such as "myapp-whatever-icon") to
	 * override your application's default icons. If an icon already
	 * existed in factory for stock_id, it is unreferenced and replaced
	 * with the new icon_set.
	 * factory:
	 *  a GtkIconFactory
	 * stock_id:
	 *  icon name
	 * icon_set:
	 *  icon set
	 */
	public static void factoryAdd(GtkIconFactory* factory, char[] stockId, GtkIconSet* iconSet)
	{
		// void gtk_icon_factory_add (GtkIconFactory *factory,  const gchar *stock_id,  GtkIconSet *icon_set);
		gtk_icon_factory_add(factory, Str.toStringz(stockId), iconSet);
	}
	
	/**
	 * Adds an icon factory to the list of icon factories searched by
	 * gtk_style_lookup_icon_set(). This means that, for example,
	 * gtk_image_new_from_stock() will be able to find icons in factory.
	 * There will normally be an icon factory added for each library or
	 * application that comes with icons. The default icon factories
	 * can be overridden by themes.
	 * factory:
	 *  a GtkIconFactory
	 */
	public static void factoryAddDefault(GtkIconFactory* factory)
	{
		// void gtk_icon_factory_add_default (GtkIconFactory *factory);
		gtk_icon_factory_add_default(factory);
	}
	
	/**
	 * Looks up stock_id in the icon factory, returning an icon set
	 * if found, otherwise NULL. For display to the user, you should
	 * use gtk_style_lookup_icon_set() on the GtkStyle for the
	 * widget that will display the icon, instead of using this
	 * function directly, so that themes are taken into account.
	 * factory:
	 *  a GtkIconFactory
	 * stock_id:
	 *  an icon name
	 * Returns:
	 *  icon set of stock_id.
	 */
	public static GtkIconSet* factoryLookup(GtkIconFactory* factory, char[] stockId)
	{
		// GtkIconSet* gtk_icon_factory_lookup (GtkIconFactory *factory,  const gchar *stock_id);
		return gtk_icon_factory_lookup(factory, Str.toStringz(stockId));
	}
	
	/**
	 * Looks for an icon in the list of default icon factories. For
	 * display to the user, you should use gtk_style_lookup_icon_set() on
	 * the GtkStyle for the widget that will display the icon, instead of
	 * using this function directly, so that themes are taken into
	 * account.
	 * stock_id:
	 *  an icon name
	 * Returns:
	 *  a GtkIconSet, or NULL
	 */
	public static GtkIconSet* factoryLookupDefault(char[] stockId)
	{
		// GtkIconSet* gtk_icon_factory_lookup_default (const gchar *stock_id);
		return gtk_icon_factory_lookup_default(Str.toStringz(stockId));
	}
	
	/**
	 * Creates a new GtkIconFactory. An icon factory manages a collection
	 * of GtkIconSets; a GtkIconSet manages a set of variants of a
	 * particular icon (i.e. a GtkIconSet contains variants for different
	 * sizes and widget states). Icons in an icon factory are named by a
	 * stock ID, which is a simple string identifying the icon. Each
	 * GtkStyle has a list of GtkIconFactorys derived from the current
	 * theme; those icon factories are consulted first when searching for
	 * an icon. If the theme doesn't set a particular icon, GTK+ looks for
	 * the icon in a list of default icon factories, maintained by
	 * gtk_icon_factory_add_default() and
	 * gtk_icon_factory_remove_default(). Applications with icons should
	 * add a default icon factory with their icons, which will allow
	 * themes to override the icons for the application.
	 * Returns:
	 *  a new GtkIconFactory
	 */
	public static GtkIconFactory* factoryNew()
	{
		// GtkIconFactory* gtk_icon_factory_new (void);
		return gtk_icon_factory_new();
	}
	
	/**
	 * Removes an icon factory from the list of default icon
	 * factories. Not normally used; you might use it for a library that
	 * can be unloaded or shut down.
	 * factory:
	 *  a GtkIconFactory previously added with gtk_icon_factory_add_default()
	 */
	public static void factoryRemoveDefault(GtkIconFactory* factory)
	{
		// void gtk_icon_factory_remove_default (GtkIconFactory *factory);
		gtk_icon_factory_remove_default(factory);
	}
	
	/**
	 * Icon sets have a list of GtkIconSource, which they use as base
	 * icons for rendering icons in different states and sizes. Icons are
	 * scaled, made to look insensitive, etc. in
	 * gtk_icon_set_render_icon(), but GtkIconSet needs base images to
	 * work with. The base images and when to use them are described by
	 * a GtkIconSource.
	 * This function copies source, so you can reuse the same source immediately
	 * without affecting the icon set.
	 * An example of when you'd use this function: a web browser's "Back
	 * to Previous Page" icon might point in a different direction in
	 * Hebrew and in English; it might look different when insensitive;
	 * and it might change size depending on toolbar mode (small/large
	 * icons). So a single icon set would contain all those variants of
	 * the icon, and you might add a separate source for each one.
	 * You should nearly always add a "default" icon source with all
	 * fields wildcarded, which will be used as a fallback if no more
	 * specific source matches. GtkIconSet always prefers more specific
	 * icon sources to more generic icon sources. The order in which you
	 * add the sources to the icon set does not matter.
	 * gtk_icon_set_new_from_pixbuf() creates a new icon set with a
	 * default icon source based on the given pixbuf.
	 * icon_set:
	 *  a GtkIconSet
	 * source:
	 *  a GtkIconSource
	 */
	public static void setAddSource(GtkIconSet* iconSet, GtkIconSource* source)
	{
		// void gtk_icon_set_add_source (GtkIconSet *icon_set,  const GtkIconSource *source);
		gtk_icon_set_add_source(iconSet, source);
	}
	
	/**
	 * Copies icon_set by value.
	 * icon_set:
	 *  a GtkIconSet
	 * Returns:
	 *  a new GtkIconSet identical to the first.
	 */
	public static GtkIconSet* setCopy(GtkIconSet* iconSet)
	{
		// GtkIconSet* gtk_icon_set_copy (GtkIconSet *icon_set);
		return gtk_icon_set_copy(iconSet);
	}
	
	/**
	 * Creates a new GtkIconSet. A GtkIconSet represents a single icon
	 * in various sizes and widget states. It can provide a GdkPixbuf
	 * for a given size and state on request, and automatically caches
	 * some of the rendered GdkPixbuf objects.
	 * Normally you would use gtk_widget_render_icon() instead of
	 * using GtkIconSet directly. The one case where you'd use
	 * GtkIconSet is to create application-specific icon sets to place in
	 * a GtkIconFactory.
	 * Returns:
	 *  a new GtkIconSet
	 */
	public static GtkIconSet* setNew()
	{
		// GtkIconSet* gtk_icon_set_new (void);
		return gtk_icon_set_new();
	}
	
	/**
	 * Creates a new GtkIconSet with pixbuf as the default/fallback
	 * source image. If you don't add any additional GtkIconSource to the
	 * icon set, all variants of the icon will be created from pixbuf,
	 * using scaling, pixelation, etc. as required to adjust the icon size
	 * or make the icon look insensitive/prelighted.
	 * pixbuf:
	 *  a GdkPixbuf
	 * Returns:
	 *  a new GtkIconSet
	 */
	public static GtkIconSet* setNewFromPixbuf(Pixbuf pixbuf)
	{
		// GtkIconSet* gtk_icon_set_new_from_pixbuf (GdkPixbuf *pixbuf);
		return gtk_icon_set_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Increments the reference count on icon_set.
	 * icon_set:
	 *  a GtkIconSet.
	 * Returns:
	 *  icon_set.
	 */
	public static GtkIconSet* setRef(GtkIconSet* iconSet)
	{
		// GtkIconSet* gtk_icon_set_ref (GtkIconSet *icon_set);
		return gtk_icon_set_ref(iconSet);
	}
	
	/**
	 * Renders an icon using gtk_style_render_icon(). In most cases,
	 * gtk_widget_render_icon() is better, since it automatically provides
	 * most of the arguments from the current widget settings. This
	 * function never returns NULL; if the icon can't be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 * icon_set:
	 *  a GtkIconSet
	 * style:
	 *  a GtkStyle associated with widget, or NULL
	 * direction:
	 *  text direction
	 * state:
	 *  widget state
	 * size:
	 *  icon size. A size of (GtkIconSize)-1
	 *  means render at the size of the source and don't scale.
	 * widget:
	 *  widget that will display the icon, or NULL.
	 *  The only use that is typically made of this
	 *  is to determine the appropriate GdkScreen.
	 * detail:
	 *  detail to pass to the theme engine, or NULL.
	 *  Note that passing a detail of anything but NULL
	 *  will disable caching.
	 * Returns:
	 *  a GdkPixbuf to be displayed
	 */
	public static Pixbuf setRenderIcon(GtkIconSet* iconSet, Style style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, char[] detail)
	{
		// GdkPixbuf* gtk_icon_set_render_icon (GtkIconSet *icon_set,  GtkStyle *style,  GtkTextDirection direction,  GtkStateType state,  GtkIconSize size,  GtkWidget *widget,  const char *detail);
		return new Pixbuf( gtk_icon_set_render_icon(iconSet, (style is null) ? null : style.getStyleStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail)) );
	}
	
	/**
	 * Decrements the reference count on icon_set, and frees memory
	 * if the reference count reaches 0.
	 * icon_set:
	 *  a GtkIconSet
	 */
	public static void setUnref(GtkIconSet* iconSet)
	{
		// void gtk_icon_set_unref (GtkIconSet *icon_set);
		gtk_icon_set_unref(iconSet);
	}
	
	/**
	 * Obtains the pixel size of a semantic icon size, possibly
	 * modified by user preferences for the default GtkSettings.
	 * (See gtk_icon_size_lookup_for_settings().)
	 * Normally size would be
	 * GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_BUTTON, etc. This function
	 * isn't normally needed, gtk_widget_render_icon() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 * size:
	 *  an icon size
	 * width:
	 *  location to store icon width
	 * height:
	 *  location to store icon height
	 * Returns:
	 *  TRUE if size was a valid size
	 */
	public static int sizeLookup(GtkIconSize size, int* width, int* height)
	{
		// gboolean gtk_icon_size_lookup (GtkIconSize size,  gint *width,  gint *height);
		return gtk_icon_size_lookup(size, width, height);
	}
	
	/**
	 * Obtains the pixel size of a semantic icon size, possibly
	 * modified by user preferences for a particular
	 * GtkSettings. Normally size would be
	 * GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_BUTTON, etc. This function
	 * isn't normally needed, gtk_widget_render_icon() is the usual
	 * way to get an icon for rendering, then just look at the size of
	 * the rendered pixbuf. The rendered pixbuf may not even correspond to
	 * the width/height returned by gtk_icon_size_lookup(), because themes
	 * are free to render the pixbuf however they like, including changing
	 * the usual size.
	 * settings:
	 *  a GtkSettings object, used to determine
	 *  which set of user preferences to used.
	 * size:
	 *  an icon size
	 * width:
	 *  location to store icon width
	 * height:
	 *  location to store icon height
	 * Returns:
	 *  TRUE if size was a valid size
	 * Since 2.2
	 */
	public static int sizeLookupForSettings(Settings settings, GtkIconSize size, int* width, int* height)
	{
		// gboolean gtk_icon_size_lookup_for_settings  (GtkSettings *settings,  GtkIconSize size,  gint *width,  gint *height);
		return gtk_icon_size_lookup_for_settings((settings is null) ? null : settings.getSettingsStruct(), size, width, height);
	}
	
	/**
	 * Registers a new icon size, along the same lines as GTK_ICON_SIZE_MENU,
	 * etc. Returns the integer value for the size.
	 * name:
	 *  name of the icon size
	 * width:
	 *  the icon width
	 * height:
	 *  the icon height
	 * Returns:
	 *  integer value representing the size
	 */
	public static GtkIconSize sizeRegister(char[] name, int width, int height)
	{
		// GtkIconSize gtk_icon_size_register (const gchar *name,  gint width,  gint height);
		return gtk_icon_size_register(Str.toStringz(name), width, height);
	}
	
	/**
	 * Registers alias as another name for target.
	 * So calling gtk_icon_size_from_name() with alias as argument
	 * will return target.
	 * alias:
	 *  an alias for target
	 * target:
	 *  an existing icon size
	 */
	public static void sizeRegisterAlias(char[] alia, GtkIconSize target)
	{
		// void gtk_icon_size_register_alias (const gchar *alias,  GtkIconSize target);
		gtk_icon_size_register_alias(Str.toStringz(alia), target);
	}
	
	/**
	 * Looks up the icon size associated with name.
	 * name:
	 *  the name to look up.
	 * Returns:
	 *  the icon size with the given name.
	 */
	public static GtkIconSize sizeFromName(char[] name)
	{
		// GtkIconSize gtk_icon_size_from_name (const gchar *name);
		return gtk_icon_size_from_name(Str.toStringz(name));
	}
	
	/**
	 * Gets the canonical name of the given icon size. The returned string
	 * is statically allocated and should not be freed.
	 * size:
	 *  a GtkIconSize.
	 * Returns:
	 *  the name of the given icon size.
	 */
	public static char[] sizeGetName(GtkIconSize size)
	{
		// const gchar* gtk_icon_size_get_name (GtkIconSize size);
		return Str.toString(gtk_icon_size_get_name(size) );
	}
	
	/**
	 * Obtains a list of icon sizes this icon set can render. The returned
	 * array must be freed with g_free().
	 * icon_set:
	 *  a GtkIconSet
	 * sizes:
	 *  return location for array of sizes
	 * n_sizes:
	 *  location to store number of elements in returned array
	 */
	public static void setGetSizes(GtkIconSet* iconSet, GtkIconSize** sizes, int* nSizes)
	{
		// void gtk_icon_set_get_sizes (GtkIconSet *icon_set,  GtkIconSize **sizes,  gint *n_sizes);
		gtk_icon_set_get_sizes(iconSet, sizes, nSizes);
	}
	
	/**
	 * Obtains the text direction this icon source applies to. The return
	 * value is only useful/meaningful if the text direction is not
	 * wildcarded.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  text direction this source matches
	 */
	public GtkTextDirection sourceGetDirection()
	{
		// GtkTextDirection gtk_icon_source_get_direction  (const GtkIconSource *source);
		return gtk_icon_source_get_direction(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_direction_wildcarded().
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  TRUE if this icon source is a base for any text direction variant
	 */
	public int sourceGetDirectionWildcarded()
	{
		// gboolean gtk_icon_source_get_direction_wildcarded  (const GtkIconSource *source);
		return gtk_icon_source_get_direction_wildcarded(gtkIconSource);
	}
	
	/**
	 * Retrieves the source filename, or NULL if none is set. The
	 * filename is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  image filename. This string must not be modified
	 * or freed.
	 */
	public char[] sourceGetFilename()
	{
		// const gchar* gtk_icon_source_get_filename (const GtkIconSource *source);
		return Str.toString(gtk_icon_source_get_filename(gtkIconSource) );
	}
	
	/**
	 * Retrieves the source pixbuf, or NULL if none is set.
	 * In addition, if a filename source is in use, this
	 * function in some cases will return the pixbuf from
	 * loaded from the filename. This is, for example, true
	 * for the GtkIconSource passed to the GtkStyle::render_icon()
	 * virtual function. The reference count on the pixbuf is
	 * not incremented.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  source pixbuf
	 */
	public Pixbuf sourceGetPixbuf()
	{
		// GdkPixbuf* gtk_icon_source_get_pixbuf (const GtkIconSource *source);
		return new Pixbuf( gtk_icon_source_get_pixbuf(gtkIconSource) );
	}
	
	/**
	 * Retrieves the source icon name, or NULL if none is set. The
	 * icon_name is not a copy, and should not be modified or expected to
	 * persist beyond the lifetime of the icon source.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  icon name. This string must not be modified or freed.
	 */
	public char[] sourceGetIconName()
	{
		// const gchar* gtk_icon_source_get_icon_name (const GtkIconSource *source);
		return Str.toString(gtk_icon_source_get_icon_name(gtkIconSource) );
	}
	
	/**
	 * Obtains the icon size this source applies to. The return value
	 * is only useful/meaningful if the icon size is not wildcarded.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  icon size this source matches.
	 */
	public GtkIconSize sourceGetSize()
	{
		// GtkIconSize gtk_icon_source_get_size (const GtkIconSource *source);
		return gtk_icon_source_get_size(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_size_wildcarded().
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  TRUE if this icon source is a base for any icon size variant
	 */
	public int sourceGetSizeWildcarded()
	{
		// gboolean gtk_icon_source_get_size_wildcarded  (const GtkIconSource *source);
		return gtk_icon_source_get_size_wildcarded(gtkIconSource);
	}
	
	/**
	 * Obtains the widget state this icon source applies to. The return
	 * value is only useful/meaningful if the widget state is not
	 * wildcarded.
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  widget state this source matches
	 */
	public GtkStateType sourceGetState()
	{
		// GtkStateType gtk_icon_source_get_state (const GtkIconSource *source);
		return gtk_icon_source_get_state(gtkIconSource);
	}
	
	/**
	 * Gets the value set by gtk_icon_source_set_state_wildcarded().
	 * source:
	 *  a GtkIconSource
	 * Returns:
	 *  TRUE if this icon source is a base for any widget state variant
	 */
	public int sourceGetStateWildcarded()
	{
		// gboolean gtk_icon_source_get_state_wildcarded  (const GtkIconSource *source);
		return gtk_icon_source_get_state_wildcarded(gtkIconSource);
	}
	
	/**
	 * Creates a new GtkIconSource. A GtkIconSource contains a GdkPixbuf (or
	 * image filename) that serves as the base image for one or more of the
	 * icons in a GtkIconSet, along with a specification for which icons in the
	 * icon set will be based on that pixbuf or image file. An icon set contains
	 * a set of icons that represent "the same" logical concept in different states,
	 * different global text directions, and different sizes.
	 * So for example a web browser's "Back to Previous Page" icon might
	 * point in a different direction in Hebrew and in English; it might
	 * look different when insensitive; and it might change size depending
	 * on toolbar mode (small/large icons). So a single icon set would
	 * contain all those variants of the icon. GtkIconSet contains a list
	 * of GtkIconSource from which it can derive specific icon variants in
	 * the set.
	 * In the simplest case, GtkIconSet contains one source pixbuf from
	 * which it derives all variants. The convenience function
	 * gtk_icon_set_new_from_pixbuf() handles this case; if you only have
	 * one source pixbuf, just use that function.
	 * If you want to use a different base pixbuf for different icon
	 * variants, you create multiple icon sources, mark which variants
	 * they'll be used to create, and add them to the icon set with
	 * gtk_icon_set_add_source().
	 * By default, the icon source has all parameters wildcarded. That is,
	 * the icon source will be used as the base icon for any desired text
	 * direction, widget state, or icon size.
	 * Returns:
	 *  a new GtkIconSource
	 */
	public static GtkIconSource* sourceNew()
	{
		// GtkIconSource* gtk_icon_source_new (void);
		return gtk_icon_source_new();
	}
	
	/**
	 * Sets the text direction this icon source is intended to be used
	 * with.
	 * Setting the text direction on an icon source makes no difference
	 * if the text direction is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_direction_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * source:
	 *  a GtkIconSource
	 * direction:
	 *  text direction this source applies to
	 */
	public void sourceSetDirection(GtkTextDirection direction)
	{
		// void gtk_icon_source_set_direction (GtkIconSource *source,  GtkTextDirection direction);
		gtk_icon_source_set_direction(gtkIconSource, direction);
	}
	
	/**
	 * If the text direction is wildcarded, this source can be used
	 * as the base image for an icon in any GtkTextDirection.
	 * If the text direction is not wildcarded, then the
	 * text direction the icon source applies to should be set
	 * with gtk_icon_source_set_direction(), and the icon source
	 * will only be used with that text direction.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * source:
	 *  a GtkIconSource
	 * setting:
	 *  TRUE to wildcard the text direction
	 */
	public void sourceSetDirectionWildcarded(int setting)
	{
		// void gtk_icon_source_set_direction_wildcarded  (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_direction_wildcarded(gtkIconSource, setting);
	}
	
	/**
	 * Sets the name of an image file to use as a base image when creating
	 * icon variants for GtkIconSet. The filename must be absolute.
	 * source:
	 *  a GtkIconSource
	 * filename:
	 *  image file to use
	 */
	public void sourceSetFilename(char[] filename)
	{
		// void gtk_icon_source_set_filename (GtkIconSource *source,  const gchar *filename);
		gtk_icon_source_set_filename(gtkIconSource, Str.toStringz(filename));
	}
	
	/**
	 * Sets a pixbuf to use as a base image when creating icon variants
	 * for GtkIconSet.
	 * source:
	 *  a GtkIconSource
	 * pixbuf:
	 *  pixbuf to use as a source
	 */
	public void sourceSetPixbuf(Pixbuf pixbuf)
	{
		// void gtk_icon_source_set_pixbuf (GtkIconSource *source,  GdkPixbuf *pixbuf);
		gtk_icon_source_set_pixbuf(gtkIconSource, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Sets the name of an icon to look up in the current icon theme
	 * to use as a base image when creating icon variants for GtkIconSet.
	 * source:
	 *  a GtkIconSource
	 * icon_name:
	 *  name of icon to use
	 */
	public void sourceSetIconName(char[] iconName)
	{
		// void gtk_icon_source_set_icon_name (GtkIconSource *source,  const gchar *icon_name);
		gtk_icon_source_set_icon_name(gtkIconSource, Str.toStringz(iconName));
	}
	
	/**
	 * Sets the icon size this icon source is intended to be used
	 * with.
	 * Setting the icon size on an icon source makes no difference
	 * if the size is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_size_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * source:
	 *  a GtkIconSource
	 * size:
	 *  icon size this source applies to
	 */
	public void sourceSetSize(GtkIconSize size)
	{
		// void gtk_icon_source_set_size (GtkIconSource *source,  GtkIconSize size);
		gtk_icon_source_set_size(gtkIconSource, size);
	}
	
	/**
	 * If the icon size is wildcarded, this source can be used as the base
	 * image for an icon of any size. If the size is not wildcarded, then
	 * the size the source applies to should be set with
	 * gtk_icon_source_set_size() and the icon source will only be used
	 * with that specific size.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * GtkIconSet will normally scale wildcarded source images to produce
	 * an appropriate icon at a given size, but will not change the size
	 * of source images that match exactly.
	 * source:
	 *  a GtkIconSource
	 * setting:
	 *  TRUE to wildcard the widget state
	 */
	public void sourceSetSizeWildcarded(int setting)
	{
		// void gtk_icon_source_set_size_wildcarded  (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_size_wildcarded(gtkIconSource, setting);
	}
	
	/**
	 * Sets the widget state this icon source is intended to be used
	 * with.
	 * Setting the widget state on an icon source makes no difference
	 * if the state is wildcarded. Therefore, you should usually
	 * call gtk_icon_source_set_state_wildcarded() to un-wildcard it
	 * in addition to calling this function.
	 * source:
	 *  a GtkIconSource
	 * state:
	 *  widget state this source applies to
	 */
	public void sourceSetState(GtkStateType state)
	{
		// void gtk_icon_source_set_state (GtkIconSource *source,  GtkStateType state);
		gtk_icon_source_set_state(gtkIconSource, state);
	}
	
	/**
	 * If the widget state is wildcarded, this source can be used as the
	 * base image for an icon in any GtkStateType. If the widget state
	 * is not wildcarded, then the state the source applies to should be
	 * set with gtk_icon_source_set_state() and the icon source will
	 * only be used with that specific state.
	 * GtkIconSet prefers non-wildcarded sources (exact matches) over
	 * wildcarded sources, and will use an exact match when possible.
	 * GtkIconSet will normally transform wildcarded source images to
	 * produce an appropriate icon for a given state, for example
	 * lightening an image on prelight, but will not modify source images
	 * that match exactly.
	 * source:
	 *  a GtkIconSource
	 * setting:
	 *  TRUE to wildcard the widget state
	 */
	public void sourceSetStateWildcarded(int setting)
	{
		// void gtk_icon_source_set_state_wildcarded  (GtkIconSource *source,  gboolean setting);
		gtk_icon_source_set_state_wildcarded(gtkIconSource, setting);
	}
}
