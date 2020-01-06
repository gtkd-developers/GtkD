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

private import gdk.PaintableIF;
private import gdk.RGBA;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.StyleContext;
private import gtk.c.functions;
public  import gtk.c.types;


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
	 * Gets the base scale for the icon. The base scale is a scale
	 * for the icon that was specified by the icon theme creator.
	 * For instance an icon drawn for a high-dpi monitor with window
	 * scale 2 for a base size of 32 will be 64 pixels tall and have
	 * a base scale of 2.
	 *
	 * Returns: the base scale
	 */
	public int getBaseScale()
	{
		return gtk_icon_info_get_base_scale(gtkIconInfo);
	}

	/**
	 * Gets the base size for the icon. The base size
	 * is a size for the icon that was specified by
	 * the icon theme creator. This may be different
	 * than the actual size of image;
	 * These icons will be given
	 * the same base size as the larger icons to which
	 * they are attached.
	 *
	 * Note that for scaled icons the base size does
	 * not include the base scale.
	 *
	 * Returns: the base size, or 0, if no base
	 *     size is known for the icon.
	 */
	public int getBaseSize()
	{
		return gtk_icon_info_get_base_size(gtkIconInfo);
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
	 * Returns: the rendered icon.
	 *     Use g_object_unref() to release your reference to the icon.
	 *
	 * Throws: GException on failure.
	 */
	public PaintableIF loadIcon()
	{
		GError* err = null;

		auto __p = gtk_icon_info_load_icon(gtkIconInfo, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
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
	 * Throws: GException on failure.
	 */
	public PaintableIF loadIconFinish(AsyncResultIF res)
	{
		GError* err = null;

		auto __p = gtk_icon_info_load_icon_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
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
	 * Throws: GException on failure.
	 */
	public PaintableIF loadSymbolic(RGBA fg, RGBA successColor, RGBA warningColor, RGBA errorColor, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto __p = gtk_icon_info_load_symbolic(gtkIconInfo, (fg is null) ? null : fg.getRGBAStruct(), (successColor is null) ? null : successColor.getRGBAStruct(), (warningColor is null) ? null : warningColor.getRGBAStruct(), (errorColor is null) ? null : errorColor.getRGBAStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
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
	 * Returns: the rendered icon;
	 *     Use g_object_unref() to release your reference
	 *     to the icon.
	 *
	 * Throws: GException on failure.
	 */
	public PaintableIF loadSymbolicFinish(AsyncResultIF res, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto __p = gtk_icon_info_load_symbolic_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
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
	 *         loaded icon was a symbolic one and whether the foreground color was
	 *         applied to it.
	 *
	 * Returns: a #GdkPixbuf representing the loaded icon
	 *     or %NULL If the icon could not be loaded
	 *
	 * Throws: GException on failure.
	 */
	public PaintableIF loadSymbolicForContext(StyleContext context, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto __p = gtk_icon_info_load_symbolic_for_context(gtkIconInfo, (context is null) ? null : context.getStyleContextStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
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
	 * Throws: GException on failure.
	 */
	public PaintableIF loadSymbolicForContextFinish(AsyncResultIF res, out bool wasSymbolic)
	{
		int outwasSymbolic;
		GError* err = null;

		auto __p = gtk_icon_info_load_symbolic_for_context_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultStruct(), &outwasSymbolic, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		wasSymbolic = (outwasSymbolic == 1);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}
}
