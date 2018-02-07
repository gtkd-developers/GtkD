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


module gtk.ColorSelection;

private import gdk.Color;
private import gdk.RGBA;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Box;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/** */
public class ColorSelection : Box
{
	/** the main Gtk struct */
	protected GtkColorSelection* gtkColorSelection;

	/** Get the main Gtk struct */
	public GtkColorSelection* getColorSelectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColorSelection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorSelection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColorSelection* gtkColorSelection, bool ownedRef = false)
	{
		this.gtkColorSelection = gtkColorSelection;
		super(cast(GtkBox*)gtkColorSelection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_color_selection_get_type();
	}

	/**
	 * Creates a new GtkColorSelection.
	 *
	 * Returns: a new #GtkColorSelection
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_color_selection_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColorSelection*) p);
	}

	/**
	 * Parses a color palette string; the string is a colon-separated
	 * list of color names readable by gdk_color_parse().
	 *
	 * Params:
	 *     str = a string encoding a color palette
	 *     colors = return location for
	 *         allocated array of #GdkColor
	 *
	 * Returns: %TRUE if a palette was successfully parsed
	 */
	public static bool paletteFromString(string str, out Color[] colors)
	{
		GdkColor* outcolors = null;
		int nColors;

		auto p = gtk_color_selection_palette_from_string(Str.toStringz(str), &outcolors, &nColors) != 0;

		colors = new Color[nColors];
		for(size_t i = 0; i < nColors; i++)
		{
			colors[i] = ObjectG.getDObject!(Color)(cast(GdkColor*) &outcolors[i]);
		}

		return p;
	}

	/**
	 * Encodes a palette as a string, useful for persistent storage.
	 *
	 * Params:
	 *     colors = an array of colors
	 *
	 * Returns: allocated string encoding the palette
	 */
	public static string paletteToString(Color[] colors)
	{
		GdkColor[] colorsArray = new GdkColor[colors.length];
		for ( int i = 0; i < colors.length; i++ )
		{
			colorsArray[i] = *(colors[i].getColorStruct());
		}

		auto retStr = gtk_color_selection_palette_to_string(colorsArray.ptr, cast(int)colors.length);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Installs a global function to be called whenever the user
	 * tries to modify the palette in a color selection.
	 *
	 * This function should save the new palette contents, and update
	 * the #GtkSettings:gtk-color-palette GtkSettings property so all
	 * GtkColorSelection widgets will be modified.
	 *
	 * Params:
	 *     func = a function to call when the custom palette needs saving
	 *
	 * Returns: the previous change palette hook (that was replaced)
	 *
	 * Since: 2.2
	 */
	public static GtkColorSelectionChangePaletteWithScreenFunc setChangePaletteWithScreenHook(GtkColorSelectionChangePaletteWithScreenFunc func)
	{
		return gtk_color_selection_set_change_palette_with_screen_hook(func);
	}

	/**
	 * Returns the current alpha value.
	 *
	 * Returns: an integer between 0 and 65535
	 */
	public ushort getCurrentAlpha()
	{
		return gtk_color_selection_get_current_alpha(gtkColorSelection);
	}

	/**
	 * Sets @color to be the current color in the GtkColorSelection widget.
	 *
	 * Deprecated: Use gtk_color_selection_get_current_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor to fill in with the current color
	 */
	public void getCurrentColor(out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		gtk_color_selection_get_current_color(gtkColorSelection, outcolor);

		color = ObjectG.getDObject!(Color)(outcolor, true);
	}

	/**
	 * Sets @rgba to be the current color in the GtkColorSelection widget.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to fill in with the current color
	 *
	 * Since: 3.0
	 */
	public void getCurrentRgba(out RGBA rgba)
	{
		GdkRGBA* outrgba = sliceNew!GdkRGBA();

		gtk_color_selection_get_current_rgba(gtkColorSelection, outrgba);

		rgba = ObjectG.getDObject!(RGBA)(outrgba, true);
	}

	/**
	 * Determines whether the colorsel has an opacity control.
	 *
	 * Returns: %TRUE if the @colorsel has an opacity control,
	 *     %FALSE if it does't
	 */
	public bool getHasOpacityControl()
	{
		return gtk_color_selection_get_has_opacity_control(gtkColorSelection) != 0;
	}

	/**
	 * Determines whether the color selector has a color palette.
	 *
	 * Returns: %TRUE if the selector has a palette, %FALSE if it hasn't
	 */
	public bool getHasPalette()
	{
		return gtk_color_selection_get_has_palette(gtkColorSelection) != 0;
	}

	/**
	 * Returns the previous alpha value.
	 *
	 * Returns: an integer between 0 and 65535
	 */
	public ushort getPreviousAlpha()
	{
		return gtk_color_selection_get_previous_alpha(gtkColorSelection);
	}

	/**
	 * Fills @color in with the original color value.
	 *
	 * Deprecated: Use gtk_color_selection_get_previous_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor to fill in with the original color value
	 */
	public void getPreviousColor(out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		gtk_color_selection_get_previous_color(gtkColorSelection, outcolor);

		color = ObjectG.getDObject!(Color)(outcolor, true);
	}

	/**
	 * Fills @rgba in with the original color value.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to fill in with the original color value
	 *
	 * Since: 3.0
	 */
	public void getPreviousRgba(out RGBA rgba)
	{
		GdkRGBA* outrgba = sliceNew!GdkRGBA();

		gtk_color_selection_get_previous_rgba(gtkColorSelection, outrgba);

		rgba = ObjectG.getDObject!(RGBA)(outrgba, true);
	}

	/**
	 * Gets the current state of the @colorsel.
	 *
	 * Returns: %TRUE if the user is currently dragging
	 *     a color around, and %FALSE if the selection has stopped
	 */
	public bool isAdjusting()
	{
		return gtk_color_selection_is_adjusting(gtkColorSelection) != 0;
	}

	/**
	 * Sets the current opacity to be @alpha.
	 *
	 * The first time this is called, it will also set
	 * the original opacity to be @alpha too.
	 *
	 * Params:
	 *     alpha = an integer between 0 and 65535
	 */
	public void setCurrentAlpha(ushort alpha)
	{
		gtk_color_selection_set_current_alpha(gtkColorSelection, alpha);
	}

	/**
	 * Sets the current color to be @color.
	 *
	 * The first time this is called, it will also set
	 * the original color to be @color too.
	 *
	 * Deprecated: Use gtk_color_selection_set_current_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor to set the current color with
	 */
	public void setCurrentColor(Color color)
	{
		gtk_color_selection_set_current_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}

	/**
	 * Sets the current color to be @rgba.
	 *
	 * The first time this is called, it will also set
	 * the original color to be @rgba too.
	 *
	 * Params:
	 *     rgba = A #GdkRGBA to set the current color with
	 *
	 * Since: 3.0
	 */
	public void setCurrentRgba(RGBA rgba)
	{
		gtk_color_selection_set_current_rgba(gtkColorSelection, (rgba is null) ? null : rgba.getRGBAStruct());
	}

	/**
	 * Sets the @colorsel to use or not use opacity.
	 *
	 * Params:
	 *     hasOpacity = %TRUE if @colorsel can set the opacity, %FALSE otherwise
	 */
	public void setHasOpacityControl(bool hasOpacity)
	{
		gtk_color_selection_set_has_opacity_control(gtkColorSelection, hasOpacity);
	}

	/**
	 * Shows and hides the palette based upon the value of @has_palette.
	 *
	 * Params:
	 *     hasPalette = %TRUE if palette is to be visible, %FALSE otherwise
	 */
	public void setHasPalette(bool hasPalette)
	{
		gtk_color_selection_set_has_palette(gtkColorSelection, hasPalette);
	}

	/**
	 * Sets the “previous” alpha to be @alpha.
	 *
	 * This function should be called with some hesitations,
	 * as it might seem confusing to have that alpha change.
	 *
	 * Params:
	 *     alpha = an integer between 0 and 65535
	 */
	public void setPreviousAlpha(ushort alpha)
	{
		gtk_color_selection_set_previous_alpha(gtkColorSelection, alpha);
	}

	/**
	 * Sets the “previous” color to be @color.
	 *
	 * This function should be called with some hesitations,
	 * as it might seem confusing to have that color change.
	 * Calling gtk_color_selection_set_current_color() will also
	 * set this color the first time it is called.
	 *
	 * Deprecated: Use gtk_color_selection_set_previous_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor to set the previous color with
	 */
	public void setPreviousColor(Color color)
	{
		gtk_color_selection_set_previous_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}

	/**
	 * Sets the “previous” color to be @rgba.
	 *
	 * This function should be called with some hesitations,
	 * as it might seem confusing to have that color change.
	 * Calling gtk_color_selection_set_current_rgba() will also
	 * set this color the first time it is called.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to set the previous color with
	 *
	 * Since: 3.0
	 */
	public void setPreviousRgba(RGBA rgba)
	{
		gtk_color_selection_set_previous_rgba(gtkColorSelection, (rgba is null) ? null : rgba.getRGBAStruct());
	}

	/**
	 * This signal is emitted when the color changes in the #GtkColorSelection
	 * according to its update policy.
	 */
	gulong addOnColorChanged(void delegate(ColorSelection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "color-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
