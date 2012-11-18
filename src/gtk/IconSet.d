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
 * outFile = IconSet
 * strct   = GtkIconSet
 * realStrct=
 * ctorStrct=
 * clss    = IconSet
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GBoxed
 * implements:
 * prefixes:
 * 	- gtk_icon_set_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gtk.IconSource
 * 	- gtk.Style
 * 	- gtk.StyleContext
 * 	- gtk.Widget
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkIconSet* -> IconSet
 * 	- GtkIconSource* -> IconSource
 * 	- GtkStyle* -> Style
 * 	- GtkStyleContext* -> StyleContext
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconSet;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Pixbuf;
private import gtk.IconSource;
private import gtk.Style;
private import gtk.StyleContext;
private import gtk.Widget;
private import gtkc.paths;
private import gtkc.Loader;



private import gobject.Boxed;

/**
 * Description
 * Browse the available stock icons in the list of stock IDs found here. You can also use
 * the gtk-demo application for this purpose.
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
 * To display an icon, always use gtk_style_lookup_icon_set() on the widget that
 * will display the icon, or the convenience function
 * gtk_widget_render_icon(). These functions take the theme into account when
 * looking up the icon to use for a given stock ID.
 * GtkIconFactory as GtkBuildable
 * GtkIconFactory supports a custom <sources> element, which can contain
 * multiple <source> elements.
 * The following attributes are allowed:
 * stock-id
 * The stock id of the source, a string.
 * This attribute is mandatory
 * filename
 * The filename of the source, a string.
 * This attribute is optional
 * icon-name
 * The icon name for the source, a string.
 * This attribute is optional.
 * size
 * Size of the icon, a GtkIconSize enum value.
 * This attribute is optional.
 * direction
 * Direction of the source, a GtkTextDirection enum value.
 * This attribute is optional.
 * state
 * State of the source, a GtkStateType enum value.
 * This attribute is optional.
 * $(DDOC_COMMENT example)
 */
public class IconSet : Boxed
{
	
	/** the main Gtk struct */
	protected GtkIconSet* gtkIconSet;
	
	
	public GtkIconSet* getIconSetStruct()
	{
		return gtkIconSet;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconSet;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconSet* gtkIconSet)
	{
		this.gtkIconSet = gtkIconSet;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkIconSet !is null )
		{
			gtk_icon_set_unref(gtkIconSet);
		}
	}
	
	/**
	 */
	
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
	 * Params:
	 * source = a GtkIconSource
	 */
	public void addSource(IconSource source)
	{
		// void gtk_icon_set_add_source (GtkIconSet *icon_set,  const GtkIconSource *source);
		gtk_icon_set_add_source(gtkIconSet, (source is null) ? null : source.getIconSourceStruct());
	}
	
	/**
	 * Copies icon_set by value.
	 * Returns: a new GtkIconSet identical to the first.
	 */
	public IconSet copy()
	{
		// GtkIconSet * gtk_icon_set_copy (GtkIconSet *icon_set);
		auto p = gtk_icon_set_copy(gtkIconSet);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}
	
	/**
	 * Creates a new GtkIconSet. A GtkIconSet represents a single icon
	 * in various sizes and widget states. It can provide a GdkPixbuf
	 * for a given size and state on request, and automatically caches
	 * some of the rendered GdkPixbuf objects.
	 * Normally you would use gtk_widget_render_icon_pixbuf() instead of
	 * using GtkIconSet directly. The one case where you'd use
	 * GtkIconSet is to create application-specific icon sets to place in
	 * a GtkIconFactory.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkIconSet * gtk_icon_set_new (void);
		auto p = gtk_icon_set_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_set_new()");
		}
		this(cast(GtkIconSet*) p);
	}
	
	/**
	 * Creates a new GtkIconSet with pixbuf as the default/fallback
	 * source image. If you don't add any additional GtkIconSource to the
	 * icon set, all variants of the icon will be created from pixbuf,
	 * using scaling, pixelation, etc. as required to adjust the icon size
	 * or make the icon look insensitive/prelighted.
	 * Params:
	 * pixbuf = a GdkPixbuf
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkIconSet * gtk_icon_set_new_from_pixbuf (GdkPixbuf *pixbuf);
		auto p = gtk_icon_set_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_set_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkIconSet*) p);
	}
	
	/**
	 * Increments the reference count on icon_set.
	 * Returns: icon_set.
	 */
	public IconSet doref()
	{
		// GtkIconSet * gtk_icon_set_ref (GtkIconSet *icon_set);
		auto p = gtk_icon_set_ref(gtkIconSet);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p);
	}
	
	/**
	 * Warning
	 * gtk_icon_set_render_icon has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_icon_set_render_icon_pixbuf() instead
	 * Renders an icon using gtk_style_render_icon(). In most cases,
	 * gtk_widget_render_icon() is better, since it automatically provides
	 * most of the arguments from the current widget settings. This
	 * function never returns NULL; if the icon can't be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 * Params:
	 * style = a GtkStyle associated with widget, or NULL. [allow-none]
	 * direction = text direction
	 * state = widget state
	 * size = icon size. A size of (GtkIconSize)-1
	 * means render at the size of the source and don't scale. [type int]
	 * widget = widget that will display the icon, or NULL.
	 * The only use that is typically made of this
	 * is to determine the appropriate GdkScreen. [allow-none]
	 * detail = detail to pass to the theme engine, or NULL.
	 * Note that passing a detail of anything but NULL
	 * will disable caching. [allow-none]
	 * Returns: a GdkPixbuf to be displayed. [transfer full]
	 */
	public Pixbuf renderIcon(Style style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, string detail)
	{
		// GdkPixbuf * gtk_icon_set_render_icon (GtkIconSet *icon_set,  GtkStyle *style,  GtkTextDirection direction,  GtkStateType state,  GtkIconSize size,  GtkWidget *widget,  const gchar *detail);
		auto p = gtk_icon_set_render_icon(gtkIconSet, (style is null) ? null : style.getStyleStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Renders an icon using gtk_render_icon_pixbuf(). In most cases,
	 * gtk_widget_render_icon_pixbuf() is better, since it automatically provides
	 * most of the arguments from the current widget settings. This
	 * function never returns NULL; if the icon can't be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 * Params:
	 * context = a GtkStyleContext
	 * size = icon size. A size of (GtkIconSize)-1
	 * means render at the size of the source and don't scale. [type int]
	 * Returns: a GdkPixbuf to be displayed. [transfer full] Since 3.0
	 */
	public Pixbuf renderIconPixbuf(StyleContext context, GtkIconSize size)
	{
		// GdkPixbuf * gtk_icon_set_render_icon_pixbuf (GtkIconSet *icon_set,  GtkStyleContext *context,  GtkIconSize size);
		auto p = gtk_icon_set_render_icon_pixbuf(gtkIconSet, (context is null) ? null : context.getStyleContextStruct(), size);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Decrements the reference count on icon_set, and frees memory
	 * if the reference count reaches 0.
	 */
	public void unref()
	{
		// void gtk_icon_set_unref (GtkIconSet *icon_set);
		gtk_icon_set_unref(gtkIconSet);
	}
	
	/**
	 * Obtains a list of icon sizes this icon set can render. The returned
	 * array must be freed with g_free().
	 * Params:
	 * sizes = return location
	 * for array of sizes. [array length=n_sizes][out][type int]
	 */
	public void getSizes(out GtkIconSize[] sizes)
	{
		// void gtk_icon_set_get_sizes (GtkIconSet *icon_set,  GtkIconSize **sizes,  gint *n_sizes);
		GtkIconSize* outsizes = null;
		int nSizes;
		
		gtk_icon_set_get_sizes(gtkIconSet, &outsizes, &nSizes);
		
		sizes = outsizes[0 .. nSizes];
	}
}
