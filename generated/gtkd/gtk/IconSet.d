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


module gtk.IconSet;

private import cairo.Surface;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.IconSource;
private import gtk.Style;
private import gtk.StyleContext;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/** */
public class IconSet
{
	/** the main Gtk struct */
	protected GtkIconSet* gtkIconSet;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkIconSet* getIconSetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconSet;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconSet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconSet* gtkIconSet, bool ownedRef = false)
	{
		this.gtkIconSet = gtkIconSet;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GTK) && ownedRef )
			gtk_icon_set_unref(gtkIconSet);
	}


	/** */
	public static GType getType()
	{
		return gtk_icon_set_get_type();
	}

	/**
	 * Creates a new #GtkIconSet. A #GtkIconSet represents a single icon
	 * in various sizes and widget states. It can provide a #GdkPixbuf
	 * for a given size and state on request, and automatically caches
	 * some of the rendered #GdkPixbuf objects.
	 *
	 * Normally you would use gtk_widget_render_icon_pixbuf() instead of
	 * using #GtkIconSet directly. The one case where you’d use
	 * #GtkIconSet is to create application-specific icon sets to place in
	 * a #GtkIconFactory.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: a new #GtkIconSet
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_icon_set_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconSet*) p);
	}

	/**
	 * Creates a new #GtkIconSet with @pixbuf as the default/fallback
	 * source image. If you don’t add any additional #GtkIconSource to the
	 * icon set, all variants of the icon will be created from @pixbuf,
	 * using scaling, pixelation, etc. as required to adjust the icon size
	 * or make the icon look insensitive/prelighted.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf
	 *
	 * Returns: a new #GtkIconSet
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto p = gtk_icon_set_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_pixbuf");
		}

		this(cast(GtkIconSet*) p);
	}

	/**
	 * Icon sets have a list of #GtkIconSource, which they use as base
	 * icons for rendering icons in different states and sizes. Icons are
	 * scaled, made to look insensitive, etc. in
	 * gtk_icon_set_render_icon(), but #GtkIconSet needs base images to
	 * work with. The base images and when to use them are described by
	 * a #GtkIconSource.
	 *
	 * This function copies @source, so you can reuse the same source immediately
	 * without affecting the icon set.
	 *
	 * An example of when you’d use this function: a web browser’s "Back
	 * to Previous Page" icon might point in a different direction in
	 * Hebrew and in English; it might look different when insensitive;
	 * and it might change size depending on toolbar mode (small/large
	 * icons). So a single icon set would contain all those variants of
	 * the icon, and you might add a separate source for each one.
	 *
	 * You should nearly always add a “default” icon source with all
	 * fields wildcarded, which will be used as a fallback if no more
	 * specific source matches. #GtkIconSet always prefers more specific
	 * icon sources to more generic icon sources. The order in which you
	 * add the sources to the icon set does not matter.
	 *
	 * gtk_icon_set_new_from_pixbuf() creates a new icon set with a
	 * default icon source based on the given pixbuf.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     source = a #GtkIconSource
	 */
	public void addSource(IconSource source)
	{
		gtk_icon_set_add_source(gtkIconSet, (source is null) ? null : source.getIconSourceStruct());
	}

	/**
	 * Copies @icon_set by value.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: a new #GtkIconSet identical to the first.
	 */
	public IconSet copy()
	{
		auto p = gtk_icon_set_copy(gtkIconSet);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p, true);
	}

	/**
	 * Obtains a list of icon sizes this icon set can render. The returned
	 * array must be freed with g_free().
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     sizes = return location
	 *         for array of sizes (#GtkIconSize)
	 */
	public void getSizes(out GtkIconSize[] sizes)
	{
		GtkIconSize* outsizes = null;
		int nSizes;

		gtk_icon_set_get_sizes(gtkIconSet, &outsizes, &nSizes);

		sizes = outsizes[0 .. nSizes];
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on @icon_set.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Returns: @icon_set.
	 */
	public IconSet ref_()
	{
		auto p = gtk_icon_set_ref(gtkIconSet);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconSet)(cast(GtkIconSet*) p, true);
	}

	/**
	 * Renders an icon using gtk_style_render_icon(). In most cases,
	 * gtk_widget_render_icon() is better, since it automatically provides
	 * most of the arguments from the current widget settings.  This
	 * function never returns %NULL; if the icon can’t be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 *
	 * Deprecated: Use gtk_icon_set_render_icon_pixbuf() instead
	 *
	 * Params:
	 *     style = a #GtkStyle associated with @widget, or %NULL
	 *     direction = text direction
	 *     state = widget state
	 *     size = icon size (#GtkIconSize). A size of `(GtkIconSize)-1`
	 *         means render at the size of the source and don’t scale.
	 *     widget = widget that will display the icon, or %NULL.
	 *         The only use that is typically made of this
	 *         is to determine the appropriate #GdkScreen.
	 *     detail = detail to pass to the theme engine, or %NULL.
	 *         Note that passing a detail of anything but %NULL
	 *         will disable caching.
	 *
	 * Returns: a #GdkPixbuf to be displayed
	 */
	public Pixbuf renderIcon(Style style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, Widget widget, string detail)
	{
		auto p = gtk_icon_set_render_icon(gtkIconSet, (style is null) ? null : style.getStyleStruct(), direction, state, size, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(detail));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Renders an icon using gtk_render_icon_pixbuf(). In most cases,
	 * gtk_widget_render_icon_pixbuf() is better, since it automatically provides
	 * most of the arguments from the current widget settings.  This
	 * function never returns %NULL; if the icon can’t be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     size = icon size (#GtkIconSize). A size of `(GtkIconSize)-1`
	 *         means render at the size of the source and don’t scale.
	 *
	 * Returns: a #GdkPixbuf to be displayed
	 *
	 * Since: 3.0
	 */
	public Pixbuf renderIconPixbuf(StyleContext context, GtkIconSize size)
	{
		auto p = gtk_icon_set_render_icon_pixbuf(gtkIconSet, (context is null) ? null : context.getStyleContextStruct(), size);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Renders an icon using gtk_render_icon_pixbuf() and converts it to a
	 * cairo surface.
	 *
	 * This function never returns %NULL; if the icon can’t be rendered
	 * (perhaps because an image file fails to load), a default "missing
	 * image" icon will be returned instead.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     size = icon size (#GtkIconSize). A size of `(GtkIconSize)-1`
	 *         means render at the size of the source and don’t scale.
	 *     scale = the window scale to render for
	 *     forWindow = #GdkWindow to optimize drawing for, or %NULL
	 *
	 * Returns: a #cairo_surface_t to be displayed
	 *
	 * Since: 3.10
	 */
	public Surface renderIconSurface(StyleContext context, GtkIconSize size, int scale, Window forWindow)
	{
		auto p = gtk_icon_set_render_icon_surface(gtkIconSet, (context is null) ? null : context.getStyleContextStruct(), size, scale, (forWindow is null) ? null : forWindow.getWindowStruct());

		if(p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) p);
	}

	/**
	 * Decrements the reference count on @icon_set, and frees memory
	 * if the reference count reaches 0.
	 *
	 * Deprecated: Use #GtkIconTheme instead.
	 */
	public void unref()
	{
		gtk_icon_set_unref(gtkIconSet);
	}
}
