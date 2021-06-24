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
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CssSection;
private import gtk.StyleProviderIF;
private import gtk.StyleProviderT;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkCssProvider` is an object implementing the `GtkStyleProvider` interface
 * for CSS.
 * 
 * It is able to parse CSS-like input in order to style widgets.
 * 
 * An application can make GTK parse a specific CSS style sheet by calling
 * [method@Gtk.CssProvider.load_from_file] or
 * [method@Gtk.CssProvider.load_from_resource]
 * and adding the provider with [method@Gtk.StyleContext.add_provider] or
 * [func@Gtk.StyleContext.add_provider_for_display].
 * 
 * In addition, certain files will be read when GTK is initialized.
 * First, the file `$XDG_CONFIG_HOME/gtk-4.0/gtk.css` is loaded if it
 * exists. Then, GTK loads the first existing file among
 * `XDG_DATA_HOME/themes/THEME/gtk-VERSION/gtk-VARIANT.css`,
 * `$HOME/.themes/THEME/gtk-VERSION/gtk-VARIANT.css`,
 * `$XDG_DATA_DIRS/themes/THEME/gtk-VERSION/gtk-VARIANT.css` and
 * `DATADIR/share/themes/THEME/gtk-VERSION/gtk-VARIANT.css`,
 * where `THEME` is the name of the current theme (see the
 * [property@Gtk.Settings:gtk-theme-name] setting), `VARIANT` is the
 * variant to load (see the
 * [property@Gtk.Settings:gtk-application-prefer-dark-theme] setting),
 * `DATADIR` is the prefix configured when GTK was compiled (unless
 * overridden by the `GTK_DATA_PREFIX` environment variable), and
 * `VERSION` is the GTK version number. If no file is found for the
 * current version, GTK tries older versions all the way back to 4.0.
 * 
 * To track errors while loading CSS, connect to the
 * [signal@Gtk.CssProvider::parsing-error] signal.
 */
public class CssProvider : ObjectG, StyleProviderIF
{
	/** the main Gtk struct */
	protected GtkCssProvider* gtkCssProvider;

	/** Get the main Gtk struct */
	public GtkCssProvider* getCssProviderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCssProvider;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCssProvider;
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
	 * Returns a newly created `GtkCssProvider`.
	 *
	 * Returns: A new `GtkCssProvider`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_css_provider_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCssProvider*) __p, true);
	}

	/**
	 * Loads @data into @css_provider.
	 *
	 * This clears any previously loaded information.
	 *
	 * Params:
	 *     data = CSS data loaded in memory
	 */
	public void loadFromData(string data)
	{
		gtk_css_provider_load_from_data(gtkCssProvider, Str.toStringz(data), cast(ptrdiff_t)data.length);
	}

	/**
	 * Loads the data contained in @file into @css_provider.
	 *
	 * This clears any previously loaded information.
	 *
	 * Params:
	 *     file = `GFile` pointing to a file to load
	 */
	public void loadFromFile(FileIF file)
	{
		gtk_css_provider_load_from_file(gtkCssProvider, (file is null) ? null : file.getFileStruct());
	}

	/**
	 * Loads the data contained in @path into @css_provider.
	 *
	 * This clears any previously loaded information.
	 *
	 * Params:
	 *     path = the path of a filename to load, in the GLib filename encoding
	 */
	public void loadFromPath(string path)
	{
		gtk_css_provider_load_from_path(gtkCssProvider, Str.toStringz(path));
	}

	/**
	 * Loads the data contained in the resource at @resource_path into
	 * the @css_provider.
	 *
	 * This clears any previously loaded information.
	 *
	 * Params:
	 *     resourcePath = a `GResource` resource path
	 */
	public void loadFromResource(string resourcePath)
	{
		gtk_css_provider_load_from_resource(gtkCssProvider, Str.toStringz(resourcePath));
	}

	/**
	 * Loads a theme from the usual theme paths.
	 *
	 * The actual process of finding the theme might change between
	 * releases, but it is guaranteed that this function uses the same
	 * mechanism to load the theme that GTK uses for loading its own theme.
	 *
	 * Params:
	 *     name = A theme name
	 *     variant = variant to load, for example, "dark", or
	 *         %NULL for the default
	 */
	public void loadNamed(string name, string variant)
	{
		gtk_css_provider_load_named(gtkCssProvider, Str.toStringz(name), Str.toStringz(variant));
	}

	/**
	 * Converts the @provider into a string representation in CSS
	 * format.
	 *
	 * Using [method@Gtk.CssProvider.load_from_data] with the return
	 * value from this function on a new provider created with
	 * [ctor@Gtk.CssProvider.new] will basically create a duplicate
	 * of this @provider.
	 *
	 * Returns: a new string representing the @provider.
	 */
	public override string toString()
	{
		auto retStr = gtk_css_provider_to_string(gtkCssProvider);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Signals that a parsing error occurred.
	 *
	 * The @path, @line and @position describe the actual location of
	 * the error as accurately as possible.
	 *
	 * Parsing errors are never fatal, so the parsing will resume after
	 * the error. Errors may however cause parts of the given data or
	 * even all of it to not be parsed at all. So it is a useful idea
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
	gulong addOnParsingError(void delegate(CssSection, ErrorG, CssProvider) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "parsing-error", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
