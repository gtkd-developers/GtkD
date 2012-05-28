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
 * outFile = Border
 * strct   = GtkBorder
 * realStrct=
 * ctorStrct=
 * clss    = Border
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GBoxed
 * implements:
 * prefixes:
 * 	- gtk_border_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GtkBorder* -> Border
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Border;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtkc.paths;
private import gtkc.Loader;



private import gobject.Boxed;

/**
 * Description
 * GtkStyleContext is an object that stores styling information affecting
 * a widget defined by GtkWidgetPath.
 * In order to construct the final style information, GtkStyleContext
 * queries information from all attached GtkStyleProviders. Style providers
 * can be either attached explicitly to the context through
 * gtk_style_context_add_provider(), or to the screen through
 * gtk_style_context_add_provider_for_screen(). The resulting style is a
 * combination of all providers' information in priority order.
 * For GTK+ widgets, any GtkStyleContext returned by
 * gtk_widget_get_style_context() will already have a GtkWidgetPath, a
 * GdkScreen and RTL/LTR information set. The style context will be also
 * updated automatically if any of these settings change on the widget.
 * If you are using the theming layer standalone, you will need to set a
 * widget path and a screen yourself to the created style context through
 * gtk_style_context_set_path() and gtk_style_context_set_screen(), as well
 * as updating the context yourself using gtk_style_context_invalidate()
 * whenever any of the conditions change, such as a change in the
 * "gtk-theme-name" setting or a hierarchy change in the rendered
 * widget.
 * Transition animations
 * GtkStyleContext has built-in support for state change transitions.
 * Note that these animations respect the "gtk-enable-animations"
 * setting.
 * For simple widgets where state changes affect the whole widget area,
 * calling gtk_style_context_notify_state_change() with a NULL region
 * is sufficient to trigger the transition animation. And GTK+ already
 * does that when gtk_widget_set_state() or gtk_widget_set_state_flags()
 * are called.
 * If a widget needs to declare several animatable regions (i.e. not
 * affecting the whole widget area), its "draw" signal handler
 * needs to wrap the render operations for the different regions with
 * calls to gtk_style_context_push_animatable_region() and
 * gtk_style_context_pop_animatable_region(). These functions take an
 * identifier for the region which must be unique within the style context.
 * For simple widgets with a fixed set of animatable regions, using an
 * enumeration works well:
 * $(DDOC_COMMENT example)
 * For complex widgets with an arbitrary number of animatable regions, it
 * is up to the implementation to come up with a way to uniquely identify
 * each animatable region. Using pointers to internal structs is one way
 * to achieve this:
 * $(DDOC_COMMENT example)
 * The widget also needs to notify the style context about a state change
 * for a given animatable region so the animation is triggered.
 * $(DDOC_COMMENT example)
 * gtk_style_context_notify_state_change() accepts NULL region IDs as a
 * special value, in this case, the whole widget area will be updated
 * by the animation.
 * <hr>
 * Style classes and regions
 * Widgets can add style classes to their context, which can be used
 * to associate different styles by class (see the section called “Selectors”). Theme engines can also use style classes to vary their
 * rendering. GTK+ has a number of predefined style classes:
 * Style class
 * Macro
 * Used by
 * button
 * GTK_STYLE_CLASS_BUTTON
 * GtkButton, GtkToggleButton, GtkRadioButton, GtkCheckButton
 * default
 * GTK_STYLE_CLASS_DEFAULT
 * GtkButton
 * check
 * GTK_STYLE_CLASS_CHECK
 * GtkCheckButton, GtkCheckMenuItem, GtkCellRendererToggle
 * radio
 * GTK_STYLE_CLASS_RADIO
 * GtkRadioButton, GtkRadioMenuItem, GtkCellRendererToggle
 * arrow
 * GTK_STYLE_CLASS_ARROW
 * GtkArrow
 * calendar
 * GTK_STYLE_CLASS_CALENDAR
 * GtkCalendar
 * entry
 * GTK_STYLE_CLASS_ENTRY
 * GtkEntry
 * cell
 * GTK_STYLE_CLASS_CELL
 * GtkCellRendererToggle
 * menu
 * GTK_STYLE_CLASS_MENU
 * GtkMenu, GtkMenuItem, GtkCheckMenuItem, GtkRadioMenuItem
 * expander
 * GTK_STYLE_CLASS_EXPANDER
 * GtkExpander
 * tooltip
 * GTK_STYLE_CLASS_TOOLTIP
 * GtkTooltip
 * frame
 * GTK_STYLE_CLASS_FRAME
 * GtkFrame
 * scrolled-window
 * GtkScrolledWindow
 * viewport
 * GtkViewport
 * trough
 * GTK_STYLE_CLASS_TROUGH
 * GtkScrollbar, GtkProgressBar, GtkScale
 * progressbar
 * GTK_STYLE_CLASS_PROGRESSBAR
 * GtkProgressBar, GtkCellRendererProgress
 * slider
 * GTK_STYLE_CLASS_SLIDER
 * GtkScrollbar, GtkScale
 * menuitem
 * GTK_STYLE_CLASS_MENUITEM
 * GtkMenuItem
 * popup
 * GtkMenu
 * accelerator
 * GTK_STYLE_CLASS_ACCELERATOR
 * GtkAccelLabel
 * menubar
 * GTK_STYLE_CLASS_MENUBAR
 * GtkMenuBar
 * toolbar
 * GTK_STYLE_CLASS_TOOLBAR
 * GtkToolbar
 * dock
 * GTK_STYLE_CLASS_DOCK
 * GtkHandleBox
 * notebook
 * GtkNotebook
 * background
 * GTK_STYLE_CLASS_BACKGROUND
 * GtkWindow
 * rubberband
 * GTK_STYLE_CLASS_RUBBERBAND
 * header
 * GTK_STYLE_CLASS_HEADER
 * grip
 * GTK_STYLE_CLASS_GRIP
 * GtkWindow
 * spinner
 * GTK_STYLE_CLASS_SPINNER
 * GtkSpinner
 * Widgets can also add regions with flags to their context.
 * The regions used by GTK+ widgets are:
 * Region
 * Flags
 * Macro
 * Used by
 * row
 * even, odd
 * GTK_STYLE_REGION_ROW
 * GtkTreeView
 * column
 * first, last, sorted
 * GTK_STYLE_REGION_COLUMN
 * GtkTreeView
 * column-header
 * GTK_STYLE_REGION_COLUMN_HEADER
 * tab
 * even, odd, first, last
 * GTK_STYLE_REGION_TAB
 * GtkNotebook
 * <hr>
 * Custom styling in UI libraries and applications
 * If you are developing a library with custom GtkWidgets that
 * render differently than standard components, you may need to add a
 * GtkStyleProvider yourself with the GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
 * priority, either a GtkCssProvider or a custom object implementing the
 * GtkStyleProvider interface. This way theming engines may still attempt
 * to style your UI elements in a different way if needed so.
 * If you are using custom styling on an applications, you probably want then
 * to make your style information prevail to the theme's, so you must use
 * a GtkStyleProvider with the GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
 * priority, keep in mind that the user settings in
 * XDG_CONFIG_HOME/gtk-3.0/gtk.css will
 * still take precedence over your changes, as it uses the
 * GTK_STYLE_PROVIDER_PRIORITY_USER priority.
 * If a custom theming engine is needed, you probably want to implement a
 * GtkStyleProvider yourself so it points to your GtkThemingEngine
 * implementation, as GtkCssProvider uses gtk_theming_engine_load()
 * which loads the theming engine module from the standard paths.
 */
public class Border : Boxed
{
	
	/** the main Gtk struct */
	protected GtkBorder* gtkBorder;
	
	
	public GtkBorder* getBorderStruct()
	{
		return gtkBorder;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBorder;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBorder* gtkBorder)
	{
		if(gtkBorder is null)
		{
			this = null;
			return;
		}
		this.gtkBorder = gtkBorder;
	}
	
	~this ()
	{
		if ( importLibs[LIBRARY.GTK] in Linker.loadedLibraries && gtkBorder !is null )
		{
			gtk_border_free(gtkBorder);
		}
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Border)[] onChangedListeners;
	/**
	 */
	void addOnChanged(void delegate(Border) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackChanged(GtkStyleContext* stylecontextStruct, Border _border)
	{
		foreach ( void delegate(Border) dlg ; _border.onChangedListeners )
		{
			dlg(_border);
		}
	}
	
	
	/**
	 * Allocates a new GtkBorder structure and initializes its elements to zero.
	 * Since 2.14
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkBorder * gtk_border_new (void);
		auto p = gtk_border_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_border_new()");
		}
		this(cast(GtkBorder*) p);
	}
	
	/**
	 * Copies a GtkBorder structure.
	 * Returns: a copy of border_.
	 */
	public Border copy()
	{
		// GtkBorder * gtk_border_copy (const GtkBorder *border_);
		auto p = gtk_border_copy(gtkBorder);
		if(p is null)
		{
			return null;
		}
		return new Border(cast(GtkBorder*) p);
	}
	
	/**
	 * Frees a GtkBorder structure.
	 */
	public void free()
	{
		// void gtk_border_free (GtkBorder *border_);
		gtk_border_free(gtkBorder);
	}
}
