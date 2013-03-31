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
 * outFile = IconInfo
 * strct   = GtkIconInfo
 * realStrct=
 * ctorStrct=
 * clss    = IconInfo
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gdk.Pixbuf
 * 	- gdk.RGBA
 * 	- gtk.IconTheme
 * 	- gtk.Style
 * 	- gtk.StyleContext
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRGBA* -> RGBA
 * 	- GtkIconInfo* -> IconInfo
 * 	- GtkIconTheme* -> IconTheme
 * 	- GtkStyle* -> Style
 * 	- GtkStyleContext* -> StyleContext
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconInfo;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gdk.Pixbuf;
private import gdk.RGBA;
private import gtk.IconTheme;
private import gtk.Style;
private import gtk.StyleContext;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * GtkIconTheme provides a facility for looking up icons by name
 * and size. The main reason for using a name rather than simply
 * providing a filename is to allow different icons to be used
 * depending on what icon theme is selected
 * by the user. The operation of icon themes on Linux and Unix
 * follows the Icon
 * Theme Specification. There is a default icon theme,
 * named hicolor where applications should install
 * their icons, but more additional application themes can be
 * installed as operating system vendors and users choose.
 *
 * Named icons are similar to the Themeable Stock Images(3)
 * facility, and the distinction between the two may be a bit confusing.
 * A few things to keep in mind:
 *
 * Stock images usually are used in conjunction with
 * Stock Items(3), such as GTK_STOCK_OK or
 * GTK_STOCK_OPEN. Named icons are easier to set up and therefore
 * are more useful for new icons that an application wants to
 * add, such as application icons or window icons.
 *
 * Stock images can only be loaded at the symbolic sizes defined
 * by the GtkIconSize enumeration, or by custom sizes defined
 * by gtk_icon_size_register(), while named icons are more flexible
 * and any pixel size can be specified.
 *
 * Because stock images are closely tied to stock items, and thus
 * to actions in the user interface, stock images may come in
 * multiple variants for different widget states or writing
 * directions.
 *
 * A good rule of thumb is that if there is a stock image for what
 * you want to use, use it, otherwise use a named icon. It turns
 * out that internally stock images are generally defined in
 * terms of one or more named icons. (An example of the
 * more than one case is icons that depend on writing direction;
 * GTK_STOCK_GO_FORWARD uses the two themed icons
 * "gtk-stock-go-forward-ltr" and "gtk-stock-go-forward-rtl".)
 *
 * In many cases, named themes are used indirectly, via GtkImage
 * or stock items, rather than directly, but looking up icons
 * directly is also simple. The GtkIconTheme object acts
 * as a database of all the icons in the current theme. You
 * can create new GtkIconTheme objects, but it's much more
 * efficient to use the standard icon theme for the GdkScreen
 * so that the icon information is shared with other people
 * looking up icons. In the case where the default screen is
 * being used, looking up an icon can be as simple as:
 *
 * $(DDOC_COMMENT example)
 */
public class IconInfo
{
	
	/** the main Gtk struct */
	protected GtkIconInfo* gtkIconInfo;
	
	
	public GtkIconInfo* getIconInfoStruct()
	{
		return gtkIconInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconInfo* gtkIconInfo)
	{
		this.gtkIconInfo = gtkIconInfo;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GTK) && gtkIconInfo !is null )
		{
			gtk_icon_info_free(gtkIconInfo);
		}
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(IconInfo)[] onChangedListeners;
	/**
	 * Emitted when the current icon theme is switched or GTK+ detects
	 * that a change has occurred in the contents of the current
	 * icon theme.
	 */
	void addOnChanged(void delegate(IconInfo) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkIconTheme* iconThemeStruct, IconInfo _iconInfo)
	{
		foreach ( void delegate(IconInfo) dlg ; _iconInfo.onChangedListeners )
		{
			dlg(_iconInfo);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_icon_info_copy has been deprecated since version 3.8 and should not be used in newly-written code. Use g_object_ref()
	 * Make a copy of a GtkIconInfo.
	 * Since 2.4
	 * Returns: the new GtkIconInfo
	 */
	public IconInfo copy()
	{
		// GtkIconInfo * gtk_icon_info_copy (GtkIconInfo *icon_info);
		auto p = gtk_icon_info_copy(gtkIconInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconInfo)(cast(GtkIconInfo*) p);
	}
	
	/**
	 * Warning
	 * gtk_icon_info_free has been deprecated since version 3.8 and should not be used in newly-written code. Use g_object_unref()
	 * Free a GtkIconInfo and associated information
	 * Since 2.4
	 */
	public void free()
	{
		// void gtk_icon_info_free (GtkIconInfo *icon_info);
		gtk_icon_info_free(gtkIconInfo);
	}
	
	/**
	 * Creates a GtkIconInfo for a GdkPixbuf.
	 * Since 2.14
	 * Params:
	 * iconTheme = a GtkIconTheme
	 * pixbuf = the pixbuf to wrap in a GtkIconInfo
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconTheme iconTheme, Pixbuf pixbuf)
	{
		// GtkIconInfo * gtk_icon_info_new_for_pixbuf (GtkIconTheme *icon_theme,  GdkPixbuf *pixbuf);
		auto p = gtk_icon_info_new_for_pixbuf((iconTheme is null) ? null : iconTheme.getIconThemeStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_info_new_for_pixbuf((iconTheme is null) ? null : iconTheme.getIconThemeStruct(), (pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkIconInfo*) p);
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
	 * Since 2.4
	 * Returns: the base size, or 0, if no base size is known for the icon.
	 */
	public int getBaseSize()
	{
		// gint gtk_icon_info_get_base_size (GtkIconInfo *icon_info);
		return gtk_icon_info_get_base_size(gtkIconInfo);
	}
	
	/**
	 * Gets the filename for the icon. If the
	 * GTK_ICON_LOOKUP_USE_BUILTIN flag was passed
	 * to gtk_icon_theme_lookup_icon(), there may be
	 * no filename if a builtin icon is returned; in this
	 * case, you should use gtk_icon_info_get_builtin_pixbuf().
	 * Since 2.4
	 * Returns: the filename for the icon, or NULL if gtk_icon_info_get_builtin_pixbuf() should be used instead. The return value is owned by GTK+ and should not be modified or freed. [type filename]
	 */
	public string getFilename()
	{
		// const gchar * gtk_icon_info_get_filename (GtkIconInfo *icon_info);
		return Str.toString(gtk_icon_info_get_filename(gtkIconInfo));
	}
	
	/**
	 * Gets the built-in image for this icon, if any. To allow
	 * GTK+ to use built in icon images, you must pass the
	 * GTK_ICON_LOOKUP_USE_BUILTIN to
	 * gtk_icon_theme_lookup_icon().
	 * Since 2.4
	 * Returns: the built-in image pixbuf, or NULL. No extra reference is added to the returned pixbuf, so if you want to keep it around, you must use g_object_ref(). The returned image must not be modified. [transfer none]
	 */
	public Pixbuf getBuiltinPixbuf()
	{
		// GdkPixbuf * gtk_icon_info_get_builtin_pixbuf (GtkIconInfo *icon_info);
		auto p = gtk_icon_info_get_builtin_pixbuf(gtkIconInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
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
	 * by passing the GTK_ICON_LOOKUP_FORCE_SIZE flag when obtaining
	 * the GtkIconInfo. If this flag has been specified, the pixbuf
	 * returned by this function will be scaled to the exact size.
	 * Since 2.4
	 * Returns: the rendered icon; this may be a newly created icon or a new reference to an internal icon, so you must not modify the icon. Use g_object_unref() to release your reference to the icon. [transfer full]
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIcon()
	{
		// GdkPixbuf * gtk_icon_info_load_icon (GtkIconInfo *icon_info,  GError **error);
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
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Asynchronously load, render and scale an icon previously looked up
	 * from the icon theme using gtk_icon_theme_lookup_icon().
	 * For more details, see gtk_icon_info_load_icon() which is the synchronous
	 * version of this call.
	 * Params:
	 * cancellable = optional GCancellable object,
	 * NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the
	 * request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 * Since 3.8
	 */
	public void loadIconAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gtk_icon_info_load_icon_async (GtkIconInfo *icon_info,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gtk_icon_info_load_icon_async(gtkIconInfo, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async icon load, see gtk_icon_info_load_icon_async().
	 * Params:
	 * res = a GAsyncResult
	 * Returns: the rendered icon; this may be a newly created icon or a new reference to an internal icon, so you must not modify the icon. Use g_object_unref() to release your reference to the icon. [transfer full] Since 3.8
	 * Throws: GException on failure.
	 */
	public Pixbuf loadIconFinish(AsyncResultIF res)
	{
		// GdkPixbuf * gtk_icon_info_load_icon_finish (GtkIconInfo *icon_info,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_icon_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Loads an icon, modifying it to match the system colours for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 * This allows loading symbolic icons that will match the system theme.
	 * Unless you are implementing a widget, you will want to use
	 * g_themed_icon_new_with_default_fallbacks() to load the icon.
	 * As implementation details, the icon loaded needs to be of SVG type,
	 * contain the "symbolic" term as the last component of the icon name,
	 * and use the 'fg', 'success', 'warning' and 'error' CSS styles in the
	 * SVG file itself.
	 * See the Symbolic Icons spec
	 * for more information about symbolic icons.
	 * Params:
	 * fg = a GdkRGBA representing the foreground color of the icon
	 * successColor = a GdkRGBA representing the warning color
	 * of the icon or NULL to use the default color. [allow-none]
	 * warningColor = a GdkRGBA representing the warning color
	 * of the icon or NULL to use the default color. [allow-none]
	 * errorColor = a GdkRGBA representing the error color
	 * of the icon or NULL to use the default color (allow-none). [allow-none]
	 * wasSymbolic = a gboolean, returns whether the
	 * loaded icon was a symbolic one and whether the fg color was
	 * applied to it. [out][allow-none]
	 * error = location to store error information on failure,
	 * or NULL. [allow-none]
	 * Returns: a GdkPixbuf representing the loaded icon. [transfer full] Since 3.0
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolic(RGBA fg, RGBA successColor, RGBA warningColor, RGBA errorColor, out int wasSymbolic)
	{
		// GdkPixbuf * gtk_icon_info_load_symbolic (GtkIconInfo *icon_info,  const GdkRGBA *fg,  const GdkRGBA *success_color,  const GdkRGBA *warning_color,  const GdkRGBA *error_color,  gboolean *was_symbolic,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_symbolic(gtkIconInfo, (fg is null) ? null : fg.getRGBAStruct(), (successColor is null) ? null : successColor.getRGBAStruct(), (warningColor is null) ? null : warningColor.getRGBAStruct(), (errorColor is null) ? null : errorColor.getRGBAStruct(), &wasSymbolic, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Asynchronously load, render and scale a symbolic icon previously looked up
	 * from the icon theme using gtk_icon_theme_lookup_icon().
	 * For more details, see gtk_icon_info_load_symbolic() which is the synchronous
	 * version of this call.
	 * Params:
	 * fg = a GdkRGBA representing the foreground color of the icon
	 * successColor = a GdkRGBA representing the warning color
	 * of the icon or NULL to use the default color. [allow-none]
	 * warningColor = a GdkRGBA representing the warning color
	 * of the icon or NULL to use the default color. [allow-none]
	 * errorColor = a GdkRGBA representing the error color
	 * of the icon or NULL to use the default color (allow-none). [allow-none]
	 * cancellable = optional GCancellable object,
	 * NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the
	 * request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 * Since 3.8
	 */
	public void loadSymbolicAsync(RGBA fg, RGBA successColor, RGBA warningColor, RGBA errorColor, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gtk_icon_info_load_symbolic_async (GtkIconInfo *icon_info,  const GdkRGBA *fg,  const GdkRGBA *success_color,  const GdkRGBA *warning_color,  const GdkRGBA *error_color,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gtk_icon_info_load_symbolic_async(gtkIconInfo, (fg is null) ? null : fg.getRGBAStruct(), (successColor is null) ? null : successColor.getRGBAStruct(), (warningColor is null) ? null : warningColor.getRGBAStruct(), (errorColor is null) ? null : errorColor.getRGBAStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async icon load, see gtk_icon_info_load_symbolic_async().
	 * Params:
	 * res = a GAsyncResult
	 * wasSymbolic = a gboolean, returns whether the
	 * loaded icon was a symbolic one and whether the fg color was
	 * applied to it. [out][allow-none]
	 * Returns: the rendered icon; this may be a newly created icon or a new reference to an internal icon, so you must not modify the icon. Use g_object_unref() to release your reference to the icon. [transfer full] Since 3.8
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicFinish(AsyncResultIF res, out int wasSymbolic)
	{
		// GdkPixbuf * gtk_icon_info_load_symbolic_finish (GtkIconInfo *icon_info,  GAsyncResult *res,  gboolean *was_symbolic,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_symbolic_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultTStruct(), &wasSymbolic, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Warning
	 * gtk_icon_info_load_symbolic_for_style has been deprecated since version 3.0 and should not be used in newly-written code. Use gtk_icon_info_load_symbolic_for_context() instead
	 * Loads an icon, modifying it to match the system colours for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 * This allows loading symbolic icons that will match the system theme.
	 * See gtk_icon_info_load_symbolic() for more details.
	 * Params:
	 * style = a GtkStyle to take the colors from
	 * state = the widget state to use for colors
	 * wasSymbolic = a gboolean, returns whether the
	 * loaded icon was a symbolic one and whether the fg color was
	 * applied to it. [out][allow-none]
	 * Returns: a GdkPixbuf representing the loaded icon. [transfer full] Since 3.0
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForStyle(Style style, GtkStateType state, out int wasSymbolic)
	{
		// GdkPixbuf * gtk_icon_info_load_symbolic_for_style  (GtkIconInfo *icon_info,  GtkStyle *style,  GtkStateType state,  gboolean *was_symbolic,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_symbolic_for_style(gtkIconInfo, (style is null) ? null : style.getStyleStruct(), state, &wasSymbolic, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Loads an icon, modifying it to match the system colors for the foreground,
	 * success, warning and error colors provided. If the icon is not a symbolic
	 * one, the function will return the result from gtk_icon_info_load_icon().
	 * This function uses the regular foreground color and the symbolic colors
	 * with the names "success_color", "warning_color" and "error_color" from
	 * the context.
	 * This allows loading symbolic icons that will match the system theme.
	 * See gtk_icon_info_load_symbolic() for more details.
	 * Params:
	 * context = a GtkStyleContext
	 * wasSymbolic = a gboolean, returns whether the
	 * loaded icon was a symbolic one and whether the fg color was
	 * applied to it. [out][allow-none]
	 * Returns: a GdkPixbuf representing the loaded icon. [transfer full] Since 3.0
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForContext(StyleContext context, int* wasSymbolic)
	{
		// GdkPixbuf * gtk_icon_info_load_symbolic_for_context  (GtkIconInfo *icon_info,  GtkStyleContext *context,  gboolean *was_symbolic,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_symbolic_for_context(gtkIconInfo, (context is null) ? null : context.getStyleContextStruct(), wasSymbolic, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Asynchronously load, render and scale a symbolic icon previously looked up
	 * from the icon theme using gtk_icon_theme_lookup_icon().
	 * For more details, see gtk_icon_info_load_symbolic_for_context() which is the synchronous
	 * version of this call.
	 * Params:
	 * context = a GtkStyleContext
	 * cancellable = optional GCancellable object,
	 * NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback to call when the
	 * request is satisfied. [scope async]
	 * userData = the data to pass to callback function. [closure]
	 * Since 3.8
	 */
	public void loadSymbolicForContextAsync(StyleContext context, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void gtk_icon_info_load_symbolic_for_context_async  (GtkIconInfo *icon_info,  GtkStyleContext *context,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		gtk_icon_info_load_symbolic_for_context_async(gtkIconInfo, (context is null) ? null : context.getStyleContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async icon load, see gtk_icon_info_load_symbolic_for_context_async().
	 * Params:
	 * res = a GAsyncResult
	 * wasSymbolic = a gboolean, returns whether the
	 * loaded icon was a symbolic one and whether the fg color was
	 * applied to it. [out][allow-none]
	 * Returns: the rendered icon; this may be a newly created icon or a new reference to an internal icon, so you must not modify the icon. Use g_object_unref() to release your reference to the icon. [transfer full] Since 3.8
	 * Throws: GException on failure.
	 */
	public Pixbuf loadSymbolicForContextFinish(AsyncResultIF res, out int wasSymbolic)
	{
		// GdkPixbuf * gtk_icon_info_load_symbolic_for_context_finish  (GtkIconInfo *icon_info,  GAsyncResult *res,  gboolean *was_symbolic,  GError **error);
		GError* err = null;
		
		auto p = gtk_icon_info_load_symbolic_for_context_finish(gtkIconInfo, (res is null) ? null : res.getAsyncResultTStruct(), &wasSymbolic, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Sets whether the coordinates returned by gtk_icon_info_get_embedded_rect()
	 * and gtk_icon_info_get_attach_points() should be returned in their
	 * original form as specified in the icon theme, instead of scaled
	 * appropriately for the pixbuf returned by gtk_icon_info_load_icon().
	 * Raw coordinates are somewhat strange; they are specified to be with
	 * respect to the unscaled pixmap for PNG and XPM icons, but for SVG
	 * icons, they are in a 1000x1000 coordinate space that is scaled
	 * to the final size of the icon. You can determine if the icon is an SVG
	 * icon by using gtk_icon_info_get_filename(), and seeing if it is non-NULL
	 * and ends in '.svg'.
	 * This function is provided primarily to allow compatibility wrappers
	 * for older API's, and is not expected to be useful for applications.
	 * Since 2.4
	 * Params:
	 * rawCoordinates = whether the coordinates of embedded rectangles
	 * and attached points should be returned in their original
	 * (unscaled) form.
	 */
	public void setRawCoordinates(int rawCoordinates)
	{
		// void gtk_icon_info_set_raw_coordinates (GtkIconInfo *icon_info,  gboolean raw_coordinates);
		gtk_icon_info_set_raw_coordinates(gtkIconInfo, rawCoordinates);
	}
	
	/**
	 * Gets the coordinates of a rectangle within the icon
	 * that can be used for display of information such
	 * as a preview of the contents of a text file.
	 * See gtk_icon_info_set_raw_coordinates() for further
	 * information about the coordinate system.
	 * Since 2.4
	 * Params:
	 * rectangle = GdkRectangle in which to store embedded
	 * rectangle coordinates; coordinates are only stored
	 * when this function returns TRUE. [out]
	 * Returns: TRUE if the icon has an embedded rectangle
	 */
	public int getEmbeddedRect(out Rectangle rectangle)
	{
		// gboolean gtk_icon_info_get_embedded_rect (GtkIconInfo *icon_info,  GdkRectangle *rectangle);
		return gtk_icon_info_get_embedded_rect(gtkIconInfo, &rectangle);
	}
	
	/**
	 * Fetches the set of attach points for an icon. An attach point
	 * is a location in the icon that can be used as anchor points for attaching
	 * emblems or overlays to the icon.
	 * Since 2.4
	 * Params:
	 * points = location to store pointer to an array of points, or NULL
	 * free the array of points with g_free(). [allow-none][array length=n_points][out]
	 * Returns: TRUE if there are any attach points for the icon.
	 */
	public int getAttachPoints(out GdkPoint[] points)
	{
		// gboolean gtk_icon_info_get_attach_points (GtkIconInfo *icon_info,  GdkPoint **points,  gint *n_points);
		GdkPoint* outpoints = null;
		int nPoints;
		
		auto p = gtk_icon_info_get_attach_points(gtkIconInfo, &outpoints, &nPoints);
		
		points = outpoints[0 .. nPoints];
		return p;
	}
	
	/**
	 * Gets the display name for an icon. A display name is a
	 * string to be used in place of the icon name in a user
	 * visible context like a list of icons.
	 * Since 2.4
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkIconTheme *icon_theme,
	 *  gpointer user_data) : Run Last
	 * Emitted when the current icon theme is switched or GTK+ detects
	 * that a change has occurred in the contents of the current
	 * icon theme.
	 * Returns: the display name for the icon or NULL, if the icon doesn't have a specified display name. This value is owned icon_info and must not be modified or free.
	 */
	public string getDisplayName()
	{
		// const gchar * gtk_icon_info_get_display_name (GtkIconInfo *icon_info);
		return Str.toString(gtk_icon_info_get_display_name(gtkIconInfo));
	}
}
