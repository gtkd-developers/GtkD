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


module gtk.StyleContext;

private import gdk.Display;
private import gdk.RGBA;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Border;
private import gtk.StyleProviderIF;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkStyleContext` stores styling information affecting a widget.
 * 
 * In order to construct the final style information, `GtkStyleContext`
 * queries information from all attached `GtkStyleProviders`. Style
 * providers can be either attached explicitly to the context through
 * [method@Gtk.StyleContext.add_provider], or to the display through
 * [func@Gtk.StyleContext.add_provider_for_display]. The resulting
 * style is a combination of all providers’ information in priority order.
 * 
 * For GTK widgets, any `GtkStyleContext` returned by
 * [method@Gtk.Widget.get_style_context] will already have a `GdkDisplay`
 * and RTL/LTR information set. The style context will also be updated
 * automatically if any of these settings change on the widget.
 * 
 * # Style Classes
 * 
 * Widgets can add style classes to their context, which can be used to associate
 * different styles by class. The documentation for individual widgets lists
 * which style classes it uses itself, and which style classes may be added by
 * applications to affect their appearance.
 * 
 * # Custom styling in UI libraries and applications
 * 
 * If you are developing a library with custom widgets that render differently
 * than standard components, you may need to add a `GtkStyleProvider` yourself
 * with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK priority, either a
 * `GtkCssProvider` or a custom object implementing the `GtkStyleProvider`
 * interface. This way themes may still attempt to style your UI elements in
 * a different way if needed so.
 * 
 * If you are using custom styling on an applications, you probably want then
 * to make your style information prevail to the theme’s, so you must use
 * a `GtkStyleProvider` with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
 * priority, keep in mind that the user settings in
 * `XDG_CONFIG_HOME/gtk-4.0/gtk.css` will
 * still take precedence over your changes, as it uses the
 * %GTK_STYLE_PROVIDER_PRIORITY_USER priority.
 */
public class StyleContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkStyleContext* gtkStyleContext;

	/** Get the main Gtk struct */
	public GtkStyleContext* getStyleContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStyleContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyleContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStyleContext* gtkStyleContext, bool ownedRef = false)
	{
		this.gtkStyleContext = gtkStyleContext;
		super(cast(GObject*)gtkStyleContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_style_context_get_type();
	}

	/**
	 * Adds a global style provider to @display, which will be used
	 * in style construction for all `GtkStyleContexts` under @display.
	 *
	 * GTK uses this to make styling information from `GtkSettings`
	 * available.
	 *
	 * Note: If both priorities are the same, A `GtkStyleProvider`
	 * added through [method@Gtk.StyleContext.add_provider] takes
	 * precedence over another added through this function.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 *     provider = a `GtkStyleProvider`
	 *     priority = the priority of the style provider. The lower
	 *         it is, the earlier it will be used in the style construction.
	 *         Typically this will be in the range between
	 *         %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 *         %GTK_STYLE_PROVIDER_PRIORITY_USER
	 */
	public static void addProviderForDisplay(Display display, StyleProviderIF provider, uint priority)
	{
		gtk_style_context_add_provider_for_display((display is null) ? null : display.getDisplayStruct(), (provider is null) ? null : provider.getStyleProviderStruct(), priority);
	}

	/**
	 * Removes @provider from the global style providers list in @display.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 *     provider = a `GtkStyleProvider`
	 */
	public static void removeProviderForDisplay(Display display, StyleProviderIF provider)
	{
		gtk_style_context_remove_provider_for_display((display is null) ? null : display.getDisplayStruct(), (provider is null) ? null : provider.getStyleProviderStruct());
	}

	/**
	 * Adds a style class to @context, so later uses of the
	 * style context will make use of this new class for styling.
	 *
	 * In the CSS file format, a `GtkEntry` defining a “search”
	 * class, would be matched by:
	 *
	 * ```css
	 * entry.search { ... }
	 * ```
	 *
	 * While any widget defining a “search” class would be
	 * matched by:
	 * ```css
	 * .search { ... }
	 * ```
	 *
	 * Params:
	 *     className = class name to use in styling
	 */
	public void addClass(string className)
	{
		gtk_style_context_add_class(gtkStyleContext, Str.toStringz(className));
	}

	/**
	 * Adds a style provider to @context, to be used in style construction.
	 *
	 * Note that a style provider added by this function only affects
	 * the style of the widget to which @context belongs. If you want
	 * to affect the style of all widgets, use
	 * [func@Gtk.StyleContext.add_provider_for_display].
	 *
	 * Note: If both priorities are the same, a `GtkStyleProvider`
	 * added through this function takes precedence over another added
	 * through [func@Gtk.StyleContext.add_provider_for_display].
	 *
	 * Params:
	 *     provider = a `GtkStyleProvider`
	 *     priority = the priority of the style provider. The lower
	 *         it is, the earlier it will be used in the style construction.
	 *         Typically this will be in the range between
	 *         %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK and
	 *         %GTK_STYLE_PROVIDER_PRIORITY_USER
	 */
	public void addProvider(StyleProviderIF provider, uint priority)
	{
		gtk_style_context_add_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderStruct(), priority);
	}

	/**
	 * Gets the border for a given state as a `GtkBorder`.
	 *
	 * Params:
	 *     border = return value for the border settings
	 */
	public void getBorder(out Border border)
	{
		GtkBorder* outborder = sliceNew!GtkBorder();

		gtk_style_context_get_border(gtkStyleContext, outborder);

		border = ObjectG.getDObject!(Border)(outborder, true);
	}

	/**
	 * Gets the foreground color for a given state.
	 *
	 * Params:
	 *     color = return value for the foreground color
	 */
	public void getColor(out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		gtk_style_context_get_color(gtkStyleContext, outcolor);

		color = ObjectG.getDObject!(RGBA)(outcolor, true);
	}

	/**
	 * Returns the `GdkDisplay` to which @context is attached.
	 *
	 * Returns: a `GdkDisplay`.
	 */
	public Display getDisplay()
	{
		auto __p = gtk_style_context_get_display(gtkStyleContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets the margin for a given state as a `GtkBorder`.
	 *
	 * Params:
	 *     margin = return value for the margin settings
	 */
	public void getMargin(out Border margin)
	{
		GtkBorder* outmargin = sliceNew!GtkBorder();

		gtk_style_context_get_margin(gtkStyleContext, outmargin);

		margin = ObjectG.getDObject!(Border)(outmargin, true);
	}

	/**
	 * Gets the padding for a given state as a `GtkBorder`.
	 *
	 * Params:
	 *     padding = return value for the padding settings
	 */
	public void getPadding(out Border padding)
	{
		GtkBorder* outpadding = sliceNew!GtkBorder();

		gtk_style_context_get_padding(gtkStyleContext, outpadding);

		padding = ObjectG.getDObject!(Border)(outpadding, true);
	}

	/**
	 * Returns the scale used for assets.
	 *
	 * Returns: the scale
	 */
	public int getScale()
	{
		return gtk_style_context_get_scale(gtkStyleContext);
	}

	/**
	 * Returns the state used for style matching.
	 *
	 * This method should only be used to retrieve the `GtkStateFlags`
	 * to pass to `GtkStyleContext` methods, like
	 * [method@Gtk.StyleContext.get_padding].
	 * If you need to retrieve the current state of a `GtkWidget`, use
	 * [method@Gtk.Widget.get_state_flags].
	 *
	 * Returns: the state flags
	 */
	public GtkStateFlags getState()
	{
		return gtk_style_context_get_state(gtkStyleContext);
	}

	/**
	 * Returns %TRUE if @context currently has defined the
	 * given class name.
	 *
	 * Params:
	 *     className = a class name
	 *
	 * Returns: %TRUE if @context has @class_name defined
	 */
	public bool hasClass(string className)
	{
		return gtk_style_context_has_class(gtkStyleContext, Str.toStringz(className)) != 0;
	}

	/**
	 * Looks up and resolves a color name in the @context color map.
	 *
	 * Params:
	 *     colorName = color name to lookup
	 *     color = Return location for the looked up color
	 *
	 * Returns: %TRUE if @color_name was found and resolved, %FALSE otherwise
	 */
	public bool lookupColor(string colorName, out RGBA color)
	{
		GdkRGBA* outcolor = sliceNew!GdkRGBA();

		auto __p = gtk_style_context_lookup_color(gtkStyleContext, Str.toStringz(colorName), outcolor) != 0;

		color = ObjectG.getDObject!(RGBA)(outcolor, true);

		return __p;
	}

	/**
	 * Removes @class_name from @context.
	 *
	 * Params:
	 *     className = class name to remove
	 */
	public void removeClass(string className)
	{
		gtk_style_context_remove_class(gtkStyleContext, Str.toStringz(className));
	}

	/**
	 * Removes @provider from the style providers list in @context.
	 *
	 * Params:
	 *     provider = a `GtkStyleProvider`
	 */
	public void removeProvider(StyleProviderIF provider)
	{
		gtk_style_context_remove_provider(gtkStyleContext, (provider is null) ? null : provider.getStyleProviderStruct());
	}

	/**
	 * Restores @context state to a previous stage.
	 *
	 * See [method@Gtk.StyleContext.save].
	 */
	public void restore()
	{
		gtk_style_context_restore(gtkStyleContext);
	}

	/**
	 * Saves the @context state.
	 *
	 * This allows temporary modifications done through
	 * [method@Gtk.StyleContext.add_class],
	 * [method@Gtk.StyleContext.remove_class],
	 * [method@Gtk.StyleContext.set_state] to be quickly
	 * reverted in one go through [method@Gtk.StyleContext.restore].
	 *
	 * The matching call to [method@Gtk.StyleContext.restore]
	 * must be done before GTK returns to the main loop.
	 */
	public void save()
	{
		gtk_style_context_save(gtkStyleContext);
	}

	/**
	 * Attaches @context to the given display.
	 *
	 * The display is used to add style information from “global”
	 * style providers, such as the display's `GtkSettings` instance.
	 *
	 * If you are using a `GtkStyleContext` returned from
	 * [method@Gtk.Widget.get_style_context], you do not need to
	 * call this yourself.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 */
	public void setDisplay(Display display)
	{
		gtk_style_context_set_display(gtkStyleContext, (display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Sets the scale to use when getting image assets for the style.
	 *
	 * Params:
	 *     scale = scale
	 */
	public void setScale(int scale)
	{
		gtk_style_context_set_scale(gtkStyleContext, scale);
	}

	/**
	 * Sets the state to be used for style matching.
	 *
	 * Params:
	 *     flags = state to represent
	 */
	public void setState(GtkStateFlags flags)
	{
		gtk_style_context_set_state(gtkStyleContext, flags);
	}

	/**
	 * Converts the style context into a string representation.
	 *
	 * The string representation always includes information about
	 * the name, state, id, visibility and style classes of the CSS
	 * node that is backing @context. Depending on the flags, more
	 * information may be included.
	 *
	 * This function is intended for testing and debugging of the
	 * CSS implementation in GTK. There are no guarantees about
	 * the format of the returned string, it may change.
	 *
	 * Params:
	 *     flags = Flags that determine what to print
	 *
	 * Returns: a newly allocated string representing @context
	 */
	public string toString(GtkStyleContextPrintFlags flags)
	{
		auto retStr = gtk_style_context_to_string(gtkStyleContext, flags);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
