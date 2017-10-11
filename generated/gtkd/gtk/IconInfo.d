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


module gtk.IconInfo;

private import cairo.Surface;
private import gdk.RGBA;
private import gdk.Window;
private import gdkpixbuf.Pixbuf;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.IconTheme;
private import gtk.Style;
private import gtk.StyleContext;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * Contains information found when looking up an icon in
 * an icon theme.
 */
public class IconInfo : ObjectG
{
	/** the main Gtk struct */
	protected GtkIconInfo* gtkIconInfo;

	/** Get the main Gtk struct */
	public GtkIconInfo* getIconInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconInfo;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIconInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconInfo* gtkIconInfo, bool ownedRef = false)
	{
		this.gtkIconInfo = gtkIconInfo;
		super(cast(GObject*)gtkIconInfo, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_icon_info_get_type();
	}

	/**
	 * Creates a #GtkIconInfo for a #GdkPixbuf.
	 *
	 * Params:
	 *     iconTheme = a #GtkIconTheme
	 *     pixbuf = the pixbuf to wrap in a #GtkIconInfo
	 *
	 * Returns: a #GtkIconInfo
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IconTheme iconTheme, Pixbuf pixbuf)
	{
		auto p = gtk_icon_info_new_for_pixbuf((iconTheme is null) ? null : iconTheme.getIconThemeStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_pixbuf");
		}

		this(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Make a copy of a #GtkIconInfo.
	 *
	 * Deprecated: Use g_object_ref()
	 *
	 * Returns: the new GtkIconInfo
	 *
	 * Since: 2.4
	 */
	public IconInfo copy()
	{
		auto p = gtk_icon_info_copy(gtkIconInfo);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p, true);
	}

	/**
	 * Free a #GtkIconInfo and associated information
	 *
	 * Deprecated: Use g_object_unref()
	 *
	 * Since: 2.4
	 */
	public void free()
	{
		gtk_icon_info_free(gtkIconInfo);
	}

	/**
	 * This function is deprecated and always returns %FALSE.
	 *
	 * Deprecated: Attachment points are deprecated
	 *
	 * Params:
	 *     points = location to store pointer
	 *         to an array of points, or %NULL free the array of points with g_free().
	 *
	 * Returns: %FALSE
	 *
	 * Since: 2.4
	 */
	public bool getAttachPoints(out GdkPoint[] points)
	{
		GdkPoint* outpoints = null;
		int nPoints;

		auto p = gtk_icon_info_get_attach_points(gtkIconInfo, &outpoints, &nPoints) != 0;

		points = outpoints[0 .. nPoints];

		return p;
	}

	/**
	 * Gets the base scale for the icon. The base scale is a scale
	 * for the icon that was specified by the icon theme creator.
	 * For instance an icon drawn for a high-dpi screen with window
	 * scale 2 for a base size of 32 will be 64 pixels tall and have
	 * a base scale of 2.
	 *
	 * Returns: the base scale
	 *
	 * Since: 3.10
	 */
	public int getBaseScale()
	{
		return gtk_icon_info_get_base_scale(gtkIconInfo);
	}

	/**
	 * Gets the base size for the icon. The base size
	 * is a size for the icon that was specified by
	 * the icon theme creator. This may be different
	 * than the actual size of image; an example of
	 * this is small emblem icons that can be attached
	 * to a larger icon. These icons will be given
	 * the same base size as the larger icons to which
	 * they are attached.
	 *
	 * Note that for scaled icons the base size does
	 * not include the base scale.
	 *
	 * Returns: the base size, or 0, if no base
	 *     size is known for the icon.
	 *
	 * Since: 2.4
	 */
	public int getBaseSize()
	{
		return gtk_icon_info_get_base_size(gtkIconInfo);
	}

	/**
	 * Gets the built-in image for this icon, if any. To allow GTK+ to use
	 * built in icon images, you must pass the %GTK_ICON_LOOKUP_USE_BUILTIN
	 * to gtk_icon_theme_lookup_icon().
	 *
	 * Deprecated: This function is deprecated, use
	 * gtk_icon_theme_add_resource_path() instead of builtin icons.
	 *
	 * Returns: the built-in image pixbuf, or %NULL.
	 *     No extra reference is added to the returned pixbuf, so if
	 *     you want to keep it around, you must use g_object_ref().
	 *     The returned image must not be modified.
	 *
	 * Since: 2.4
	 */
	public Pixbuf getBuiltinPixbuf()
	{
		auto p = gtk_icon_info_get_builtin_pixbuf(gtkIconInfo);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * This function is deprecated and always returns %NULL.
	 *
	 * Deprecated: Display names are deprecated
	 *
	 * Returns: %NULL
	 *
	 * Since: 2.4
	 */
	public string getDisplayName()
	{
		return Str.toString(gtk_icon_info_get_display_name(gtkIconInfo));
	}

	/**
	 * This function is deprecated and always returns %FALSE.
	 *
	 * Deprecated: Embedded rectangles are deprecated
	 *
	 * Params:
	 *     rectangle = #GdkRectangle in which to store embedded
	 *         rectangle coordinates; coordinates are only stored
	 *         when this function returns %TRUE.
	 *
	 * Returns: %FALSE
	 *
	 * Since: 2.4
	 */
	public bool getEmbeddedRect(out GdkRectangle rectangle)
	{
		return gtk_icon_info_get_embedded_rect(gtkIconInfo, &rectangle) != 0;
	}

	/**
	 * Gets the filename for the icon. If the %GTK_ICON_LOOKUP_USE_BUILTIN
	 * flag was passed to gtk_icon_theme_lookup_icon(), there may be no
	 * filename if a builtin icon is returned; in this case, you should
	 * use gtk_icon_info_get_builtin_pixbuf().
	 *
	 * Returns: the filename for the icon, or %NULL
	 *     if gtk_icon_info_get_builtin_pixbuf() should be used instead.
	 *     The return value is owned by GTK+ and should not be modified
	 *     or freed.
	 *
	 * Since: 2.4
	 */
	public string getFilename()
	{
		return Str.toString(gtk_icon_info_get_filename(gtkIconInfo));
	}

	/**
	 * Checks if the icon is symbolic or not. This currently uses only
	 * the file name and not the file contents for determining this.
	 * This behaviour may change in the future.
	 *
	 * Returns: %TRUE if the icon is symbolic, %FALSE otherwise
	 *
	 * Since: 3.12
	 */
	public bool isSymbolic()
	{
		return gtk_icon_info_is_symbolic(gtkIconInfo) != 0;
	}

	/**
	 * Renders an icon previously looked up in an icon theme using
	 * gtk_icon_theme_lookup_icon(); the size will be based on the size
	 * passed to gtk_icon_theme_lookup_icon(). Note that the resulting
	 * pixbuf may not be exactly this size; an icon theme may have icons
	 * that differ slightly from their nominal sizes, and in addition GTK+
	 * will avoid scaling icons that it considers sufficiently close to the
	 * requested size or for which the source image would have to be scaled
	 * up too far. (This maintains sharpness.). This behaviour can be changed
	 * by passing the %GTK_ICON_LOOKUP_FORCE_SIZE flag when obtaining
	 * the #GtkIconInfo. If this flag has been specified, the pixbuf
	 * returned by this function will be scaled to the exact size.
	 *
	 * Returns: the rendered icon; this may be a newly
	 *     created icon or a new reference to an internal icon, so you must
	 *     not modify the icon. Use g_object_unref() to release your reference
	 *     to the icon.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIcon()
	{
		GError* err = null;

		auto p = gtk_icon_info_load_icon(gtkIconInfo, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Asynchronously load, render and scale an icon previously looked up
	 * from the icon theme using gtk_icon_theme_lookup_icon().
	 *
	 * For more details, see gtk_icon_info_load_icon() which is the synchronous
	 * version of this call.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 3.8
	 */
	public void loadIconAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_icon_info_load_icon_async(gtkIconInfo, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async icon load, see gtk_icon_info_load_icon_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Returns: the rendered icon; this may be a newly
	 *     created icon or a new reference to an internal icon, so you must
	 *     not modify the icon. Use g_object_unref() to release your reference
	 *     to the icon.
	 *
	 * Since: 3.8
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIconFinish(AsyncResultIF res)
	{
		GError* err = null;

		auto p = gtk_icon_info_load_icon_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Renders an icon previously looked up in an icon theme using
	 * gtk_icon_theme_lookup_icon(); the size will be based on the size
	 * passed to gtk_icon_theme_lookup_icon(). Note that the resulting
	 * surface may not be exactly this size; an icon theme may have icons
	 * that differ slightly from their nominal sizes, and in addition GTK+
	 * will avoid scaling icons that it considers sufficiently close to the
	 * requested size or for which the source image would have to be scaled
	 * up too far. (This maintains sharpness.). This behaviour can be changed
	 * by passing the %GTK_ICON_LOOKUP_FORCE_SIZE flag when obtaining
	 * the #GtkIconInfo. If this flag has been specified, the pixbuf
	 * returned by this function will be scaled to the exact size.
	 *
	 * Params:
	 *     forWindow = #GdkWindow to optimize drawing for, or %NULL
	 *
	 * Returns: the rendered icon; this may be a newly
	 *     created icon or a new reference to an internal icon, so you must
	 *     not modify the icon. Use cairo_surface_destroy() to release your
	 *     reference to the icon.
	 *
	 * Since: 3.10
	 *
	 * Throws: GException on failure.
	 */
	public Surface loadSurface(Window forWindow)
	{
		GError* err = null;

		auto p = gtk_icon_info_load_surface(gtkIconInfo, (forWindow is null) ? null : forWindow.getWindowStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) p);
	}

	/**
	 * Loads an icon, modifying it to match the system colours for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 *
	 * This allows loading symbolic icons that will match the system theme.
	 *
	 * Unless you are implementing a widget, you will want to use
	 * g_themed_icon_new_with_default_fallbacks() to load the icon.
	 *
	 * As implementation details, the icon loaded needs to be of SVG type,
	 * contain the “symbolic” term as the last component of the icon name,
	 * and use the “fg”, “success”, “warning” and “error” CSS styles in the
	 * SVG file itself.
	 *
	 * See the [Symbolic Icons Specification](http://www.freedesktop.org/wiki/SymbolicIcons)
	 * for more information about symbolic icons.
	 *
	 * Params:
	 *     fg = a #GdkRGBA representing the foreground color of the icon
	 *     successColor = a #GdkRGBA representing the warning color
	 *         of the icon or %NULL to use the default color
	 *     warningColor = a #GdkRGBA representing the warning color
	 *         of the icon or %NULL to use the default color
	 *     errorColor = a #GdkRGBA representing the error color
	 *         of the icon or %NULL to use the default color (allow-none)
	 *     wasSymbolic = a #gboolean, returns whether the
	 *         loaded icon was a symbolic one and whether the @fg color was
	 *         applied to it.
	 *
	 * Returns: a #GdkPixbuf representing the loaded icon
	 *
	 * Since: 3.0
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolic(RGBA fg, RGBA successColor, RGBA warningColor, RGBA errorColor, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto p = gtk_icon_info_load_symbolic(gtkIconInfo, (fg is null) ? null : fg.getRGBAStruct(), (successColor is null) ? null : successColor.getRGBAStruct(), (warningColor is null) ? null : warningColor.getRGBAStruct(), (errorColor is null) ? null : errorColor.getRGBAStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Asynchronously load, render and scale a symbolic icon previously looked up
	 * from the icon theme using gtk_icon_theme_lookup_icon().
	 *
	 * For more details, see gtk_icon_info_load_symbolic() which is the synchronous
	 * version of this call.
	 *
	 * Params:
	 *     fg = a #GdkRGBA representing the foreground color of the icon
	 *     successColor = a #GdkRGBA representing the warning color
	 *         of the icon or %NULL to use the default color
	 *     warningColor = a #GdkRGBA representing the warning color
	 *         of the icon or %NULL to use the default color
	 *     errorColor = a #GdkRGBA representing the error color
	 *         of the icon or %NULL to use the default color (allow-none)
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 3.8
	 */
	public void loadSymbolicAsync(RGBA fg, RGBA successColor, RGBA warningColor, RGBA errorColor, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_icon_info_load_symbolic_async(gtkIconInfo, (fg is null) ? null : fg.getRGBAStruct(), (successColor is null) ? null : successColor.getRGBAStruct(), (warningColor is null) ? null : warningColor.getRGBAStruct(), (errorColor is null) ? null : errorColor.getRGBAStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async icon load, see gtk_icon_info_load_symbolic_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     wasSymbolic = a #gboolean, returns whether the
	 *         loaded icon was a symbolic one and whether the @fg color was
	 *         applied to it.
	 *
	 * Returns: the rendered icon; this may be a newly
	 *     created icon or a new reference to an internal icon, so you must
	 *     not modify the icon. Use g_object_unref() to release your reference
	 *     to the icon.
	 *
	 * Since: 3.8
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicFinish(AsyncResultIF res, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto p = gtk_icon_info_load_symbolic_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Loads an icon, modifying it to match the system colors for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 * This function uses the regular foreground color and the symbolic colors
	 * with the names “success_color”, “warning_color” and “error_color” from
	 * the context.
	 *
	 * This allows loading symbolic icons that will match the system theme.
	 *
	 * See gtk_icon_info_load_symbolic() for more details.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     wasSymbolic = a #gboolean, returns whether the
	 *         loaded icon was a symbolic one and whether the @fg color was
	 *         applied to it.
	 *
	 * Returns: a #GdkPixbuf representing the loaded icon
	 *
	 * Since: 3.0
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForContext(StyleContext context, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto p = gtk_icon_info_load_symbolic_for_context(gtkIconInfo, (context is null) ? null : context.getStyleContextStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Asynchronously load, render and scale a symbolic icon previously
	 * looked up from the icon theme using gtk_icon_theme_lookup_icon().
	 *
	 * For more details, see gtk_icon_info_load_symbolic_for_context()
	 * which is the synchronous version of this call.
	 *
	 * Params:
	 *     context = a #GtkStyleContext
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 3.8
	 */
	public void loadSymbolicForContextAsync(StyleContext context, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_icon_info_load_symbolic_for_context_async(gtkIconInfo, (context is null) ? null : context.getStyleContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async icon load, see gtk_icon_info_load_symbolic_for_context_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     wasSymbolic = a #gboolean, returns whether the
	 *         loaded icon was a symbolic one and whether the @fg color was
	 *         applied to it.
	 *
	 * Returns: the rendered icon; this may be a newly
	 *     created icon or a new reference to an internal icon, so you must
	 *     not modify the icon. Use g_object_unref() to release your reference
	 *     to the icon.
	 *
	 * Since: 3.8
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForContextFinish(AsyncResultIF res, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto p = gtk_icon_info_load_symbolic_for_context_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Loads an icon, modifying it to match the system colours for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 *
	 * This allows loading symbolic icons that will match the system theme.
	 *
	 * See gtk_icon_info_load_symbolic() for more details.
	 *
	 * Deprecated: Use gtk_icon_info_load_symbolic_for_context() instead
	 *
	 * Params:
	 *     style = a #GtkStyle to take the colors from
	 *     state = the widget state to use for colors
	 *     wasSymbolic = a #gboolean, returns whether the
	 *         loaded icon was a symbolic one and whether the @fg color was
	 *         applied to it.
	 *
	 * Returns: a #GdkPixbuf representing the loaded icon
	 *
	 * Since: 3.0
	 *
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForStyle(Style style, GtkStateType state, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto p = gtk_icon_info_load_symbolic_for_style(gtkIconInfo, (style is null) ? null : style.getStyleStruct(), state, &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p, true);
	}

	/**
	 * Sets whether the coordinates returned by gtk_icon_info_get_embedded_rect()
	 * and gtk_icon_info_get_attach_points() should be returned in their
	 * original form as specified in the icon theme, instead of scaled
	 * appropriately for the pixbuf returned by gtk_icon_info_load_icon().
	 *
	 * Raw coordinates are somewhat strange; they are specified to be with
	 * respect to the unscaled pixmap for PNG and XPM icons, but for SVG
	 * icons, they are in a 1000x1000 coordinate space that is scaled
	 * to the final size of the icon.  You can determine if the icon is an SVG
	 * icon by using gtk_icon_info_get_filename(), and seeing if it is non-%NULL
	 * and ends in “.svg”.
	 *
	 * This function is provided primarily to allow compatibility wrappers
	 * for older API's, and is not expected to be useful for applications.
	 *
	 * Deprecated: Embedded rectangles and attachment points are deprecated
	 *
	 * Params:
	 *     rawCoordinates = whether the coordinates of embedded rectangles
	 *         and attached points should be returned in their original
	 *         (unscaled) form.
	 *
	 * Since: 2.4
	 */
	public void setRawCoordinates(bool rawCoordinates)
	{
		gtk_icon_info_set_raw_coordinates(gtkIconInfo, rawCoordinates);
	}
}
