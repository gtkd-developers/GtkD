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


module gtk.CssProvider;

private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CssSection;
private import gtk.StyleProviderIF;
private import gtk.StyleProviderT;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * GtkCssProvider is an object implementing the #GtkStyleProvider interface.
 * It is able to parse [CSS-like][css-overview] input in order to style widgets.
 * 
 * An application can make GTK+ parse a specific CSS style sheet by calling
 * gtk_css_provider_load_from_file() or gtk_css_provider_load_from_resouce()
 * and adding the provider with gtk_style_context_add_provider() or
 * gtk_style_context_add_provider_for_screen().
 * 
 * In addition, certain files will be read when GTK+ is initialized. First, the
 * file $XDG_CONFIG_HOME/gtk-3.0/gtk.css` is loaded if it exists. Then, GTK+
 * loads the first existing file among
 * `XDG_DATA_HOME/themes/theme-name/gtk-VERSION/gtk.css`,
 * `$HOME/.themes/theme-name/gtk-VERSION/gtk.css`,
 * `$XDG_DATA_DIRS/themes/theme-name/gtk-VERSION/gtk.css` and
 * `DATADIR/share/themes/THEME/gtk-VERSION/gtk.css`, where THEME is the name of
 * the current theme (see the #GtkSettings:gtk-theme-name setting), DATADIR
 * is the prefix configured when GTK+ was compiled (unless overridden by the
 * `GTK_DATA_PREFIX` environment variable), and VERSION is the GTK+ version number.
 * If no file is found for the current version, GTK+ tries older versions all the
 * way back to 3.0.
 * 
 * In the same way, GTK+ tries to load a gtk-keys.css file for the current
 * key theme, as defined by #GtkSettings:gtk-key-theme-name.
 */
public class CssProvider : ObjectG, StyleProviderIF
{
	/** the main Gtk struct */
	protected GtkCssProvider* gtkCssProvider;

	/** Get the main Gtk struct */
	public GtkCssProvider* getCssProviderStruct()
	{
		return gtkCssProvider;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCssProvider;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkCssProvider = cast(GtkCssProvider*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCssProvider* gtkCssProvider, bool ownedRef = false)
	{
		this.gtkCssProvider = gtkCssProvider;
		super(cast(GObject*)gtkCssProvider, ownedRef);
	}

	// add the StyleProvider capabilities
	mixin StyleProviderT!(GtkCssProvider);


	/** */
	public static GType getType()
	{
		return gtk_css_provider_get_type();
	}

	/**
	 * Returns a newly created #GtkCssProvider.
	 *
	 * Return: A new #GtkCssProvider
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_css_provider_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkCssProvider*) p, true);
	}

	/**
	 * Returns the provider containing the style settings used as a
	 * fallback for all widgets.
	 *
	 * Return: The provider used for fallback styling.
	 *     This memory is owned by GTK+, and you must not free it.
	 */
	public static CssProvider getDefault()
	{
		auto p = gtk_css_provider_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CssProvider)(cast(GtkCssProvider*) p);
	}

	/**
	 * Loads a theme from the usual theme paths
	 *
	 * Params:
	 *     name = A theme name
	 *     variant = variant to load, for example, "dark", or
	 *         %NULL for the default
	 *
	 * Return: a #GtkCssProvider with the theme loaded.
	 *     This memory is owned by GTK+, and you must not free it.
	 */
	public static CssProvider getNamed(string name, string variant)
	{
		auto p = gtk_css_provider_get_named(Str.toStringz(name), Str.toStringz(variant));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CssProvider)(cast(GtkCssProvider*) p);
	}

	/**
	 * Loads @data into @css_provider, and by doing so clears any previously loaded
	 * information.
	 *
	 * Params:
	 *     data = CSS data loaded in memory
	 *     length = the length of @data in bytes, or -1 for NUL terminated strings. If
	 *         @length is not -1, the code will assume it is not NUL terminated and will
	 *         potentially do a copy.
	 *
	 * Return: %TRUE. The return value is deprecated and %FALSE will only be
	 *     returned for backwards compatibility reasons if an @error is not
	 *     %NULL and a loading error occurred. To track errors while loading
	 *     CSS, connect to the #GtkCssProvider::parsing-error signal.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromData(string data)
	{
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_data(gtkCssProvider, Str.toStringz(data), cast(ptrdiff_t)data.length, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Loads the data contained in @file into @css_provider, making it
	 * clear any previously loaded information.
	 *
	 * Params:
	 *     file = #GFile pointing to a file to load
	 *
	 * Return: %TRUE. The return value is deprecated and %FALSE will only be
	 *     returned for backwards compatibility reasons if an @error is not
	 *     %NULL and a loading error occurred. To track errors while loading
	 *     CSS, connect to the #GtkCssProvider::parsing-error signal.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromFile(FileIF file)
	{
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_file(gtkCssProvider, (file is null) ? null : file.getFileStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Loads the data contained in @path into @css_provider, making it clear
	 * any previously loaded information.
	 *
	 * Params:
	 *     path = the path of a filename to load, in the GLib filename encoding
	 *
	 * Return: %TRUE. The return value is deprecated and %FALSE will only be
	 *     returned for backwards compatibility reasons if an @error is not
	 *     %NULL and a loading error occurred. To track errors while loading
	 *     CSS, connect to the #GtkCssProvider::parsing-error signal.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromPath(string path)
	{
		GError* err = null;
		
		auto p = gtk_css_provider_load_from_path(gtkCssProvider, Str.toStringz(path), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Loads the data contained in the resource at @resource_path into
	 * the #GtkCssProvider, clearing any previously loaded information.
	 *
	 * To track errors while loading CSS, connect to the
	 * #GtkCssProvider::parsing-error signal.
	 *
	 * Params:
	 *     resourcePath = a #GResource resource path
	 *
	 * Since: 3.16
	 */
	public void loadFromResource(string resourcePath)
	{
		gtk_css_provider_load_from_resource(gtkCssProvider, Str.toStringz(resourcePath));
	}

	/**
	 * Converts the @provider into a string representation in CSS
	 * format.
	 *
	 * Using gtk_css_provider_load_from_data() with the return value
	 * from this function on a new provider created with
	 * gtk_css_provider_new() will basically create a duplicate of
	 * this @provider.
	 *
	 * Return: a new string representing the @provider.
	 *
	 * Since: 3.2
	 */
	public override string toString()
	{
		auto retStr = gtk_css_provider_to_string(gtkCssProvider);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	int[string] connectedSignals;

	void delegate(CssSection, ErrorG, CssProvider)[] onParsingErrorListeners;
	/**
	 * Signals that a parsing error occurred. the @path, @line and @position
	 * describe the actual location of the error as accurately as possible.
	 *
	 * Parsing errors are never fatal, so the parsing will resume after
	 * the error. Errors may however cause parts of the given
	 * data or even all of it to not be parsed at all. So it is a useful idea
	 * to check that the parsing succeeds by connecting to this signal.
	 *
	 * Note that this signal may be emitted at any time as the css provider
	 * may opt to defer parsing parts or all of the input to a later time
	 * than when a loading function was called.
	 *
	 * Params:
	 *     section = section the error happened in
	 *     error = The parsing error
	 */
	void addOnParsingError(void delegate(CssSection, ErrorG, CssProvider) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "parsing-error" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"parsing-error",
				cast(GCallback)&callBackParsingError,
				cast(void*)this,
				null,
				connectFlags);
			connectedSignals["parsing-error"] = 1;
		}
		onParsingErrorListeners ~= dlg;
	}
	extern(C) static void callBackParsingError(GtkCssProvider* cssproviderStruct, GtkCssSection* section, GError* error, CssProvider _cssprovider)
	{
		foreach ( void delegate(CssSection, ErrorG, CssProvider) dlg; _cssprovider.onParsingErrorListeners )
		{
			dlg(ObjectG.getDObject!(CssSection)(section), new ErrorG(error), _cssprovider);
		}
	}
}
