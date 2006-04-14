/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = ColorSelection
 * strct   = GtkColorSelection
 * realStrct=
 * clss    = ColorSelection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_color_selection_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Color
 * structWrap:
 * 	- GdkColor* -> Color
 * local aliases:
 */

module gtk.ColorSelection;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gdk.Color;

/**
 * Description
 * The GtkColorSelection is a widget that is used to select
 * a color. It consists of a color wheel and number of sliders
 * and entry boxes for color parameters such as hue, saturation,
 * value, red, green, blue, and opacity. It is found on the standard
 * color selection dialog box GtkColorSelectionDialog.
 */
private import gtk.VBox;
public class ColorSelection : VBox
{
	
	/** the main Gtk struct */
	protected GtkColorSelection* gtkColorSelection;
	
	
	public GtkColorSelection* getColorSelectionStruct()
	{
		return gtkColorSelection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkColorSelection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorSelection* gtkColorSelection)
	{
		super(cast(GtkVBox*)gtkColorSelection);
		this.gtkColorSelection = gtkColorSelection;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(ColorSelection)[] onColorChangedListeners;
	void addOnColorChanged(void delegate(ColorSelection) dlg)
	{
		if ( !("color-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"color-changed",
			cast(GCallback)&callBackColorChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["color-changed"] = 1;
		}
		onColorChangedListeners ~= dlg;
	}
	extern(C) static void callBackColorChanged(GtkColorSelection* colorselectionStruct, ColorSelection colorSelection)
	{
		bit consumed = false;
		
		foreach ( void delegate(ColorSelection) dlg ; colorSelection.onColorChangedListeners )
		{
			dlg(colorSelection);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkColorSelection.
	 * Returns:
	 *  a new GtkColorSelection
	 */
	public this ()
	{
		// GtkWidget* gtk_color_selection_new (void);
		this(cast(GtkColorSelection*)gtk_color_selection_new() );
	}
	
	/**
	 * Warning
	 * gtk_color_selection_set_update_policy is deprecated and should not be used in newly-written code.
	 * Sets the policy controlling when the color_changed signals are emitted.
	 * The available policies are:
	 * GTK_UPDATE_CONTINUOUS - signals are sent continuously as the color
	 * selection changes.
	 * GTK_UPDATE_DISCONTINUOUS - signals are sent only when the mouse
	 * button is released.
	 * GTK_UPDATE_DELAYED - signals are sent when the mouse button is
	 * released or when the mouse has been motionless for a period of
	 * time.
	 * colorsel:
	 * a GtkColorSelection.
	 * policy:
	 * a GtkUpdateType value indicating the desired policy.
	 */
	public void setUpdatePolicy(GtkUpdateType policy)
	{
		// void gtk_color_selection_set_update_policy  (GtkColorSelection *colorsel,  GtkUpdateType policy);
		gtk_color_selection_set_update_policy(gtkColorSelection, policy);
	}
	
	/**
	 * Sets the colorsel to use or not use opacity.
	 * colorsel:
	 *  a GtkColorSelection.
	 * has_opacity:
	 *  TRUE if colorsel can set the opacity, FALSE otherwise.
	 */
	public void setHasOpacityControl(int hasOpacity)
	{
		// void gtk_color_selection_set_has_opacity_control  (GtkColorSelection *colorsel,  gboolean has_opacity);
		gtk_color_selection_set_has_opacity_control(gtkColorSelection, hasOpacity);
	}
	
	/**
	 * Determines whether the colorsel has an opacity control.
	 * colorsel:
	 *  a GtkColorSelection.
	 * Returns:
	 *  TRUE if the colorsel has an opacity control. FALSE if it does't.
	 */
	public int getHasOpacityControl()
	{
		// gboolean gtk_color_selection_get_has_opacity_control  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_has_opacity_control(gtkColorSelection);
	}
	
	/**
	 * Shows and hides the palette based upon the value of has_palette.
	 * colorsel:
	 *  a GtkColorSelection.
	 * has_palette:
	 *  TRUE if palette is to be visible, FALSE otherwise.
	 */
	public void setHasPalette(int hasPalette)
	{
		// void gtk_color_selection_set_has_palette  (GtkColorSelection *colorsel,  gboolean has_palette);
		gtk_color_selection_set_has_palette(gtkColorSelection, hasPalette);
	}
	
	/**
	 * Determines whether the color selector has a color palette.
	 * colorsel:
	 *  a GtkColorSelection.
	 * Returns:
	 *  TRUE if the selector has a palette. FALSE if it hasn't.
	 */
	public int getHasPalette()
	{
		// gboolean gtk_color_selection_get_has_palette  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_has_palette(gtkColorSelection);
	}
	
	/**
	 * Returns the current alpha value.
	 * colorsel:
	 *  a GtkColorSelection.
	 * Returns:
	 *  an integer between 0 and 65535.
	 */
	public ushort getCurrentAlpha()
	{
		// guint16 gtk_color_selection_get_current_alpha  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_current_alpha(gtkColorSelection);
	}
	
	/**
	 * Sets the current opacity to be alpha. The first time this is called, it will
	 * also set the original opacity to be alpha too.
	 * colorsel:
	 *  a GtkColorSelection.
	 * alpha:
	 *  an integer between 0 and 65535.
	 */
	public void setCurrentAlpha(ushort alpha)
	{
		// void gtk_color_selection_set_current_alpha  (GtkColorSelection *colorsel,  guint16 alpha);
		gtk_color_selection_set_current_alpha(gtkColorSelection, alpha);
	}
	
	/**
	 * Sets color to be the current color in the GtkColorSelection widget.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  a GdkColor to fill in with the current color.
	 */
	public void getCurrentColor(Color color)
	{
		// void gtk_color_selection_get_current_color  (GtkColorSelection *colorsel,  GdkColor *color);
		gtk_color_selection_get_current_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the current color to be color. The first time this is called, it will
	 * also set the original color to be color too.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  A GdkColor to set the current color with.
	 */
	public void setCurrentColor(Color color)
	{
		// void gtk_color_selection_set_current_color  (GtkColorSelection *colorsel,  const GdkColor *color);
		gtk_color_selection_set_current_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Returns the previous alpha value.
	 * colorsel:
	 *  a GtkColorSelection.
	 * Returns:
	 *  an integer between 0 and 65535.
	 */
	public ushort getPreviousAlpha()
	{
		// guint16 gtk_color_selection_get_previous_alpha  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_previous_alpha(gtkColorSelection);
	}
	
	/**
	 * Sets the 'previous' alpha to be alpha. This function should be called with
	 * some hesitations, as it might seem confusing to have that alpha change.
	 * colorsel:
	 *  a GtkColorSelection.
	 * alpha:
	 *  an integer between 0 and 65535.
	 */
	public void setPreviousAlpha(ushort alpha)
	{
		// void gtk_color_selection_set_previous_alpha  (GtkColorSelection *colorsel,  guint16 alpha);
		gtk_color_selection_set_previous_alpha(gtkColorSelection, alpha);
	}
	
	/**
	 * Fills color in with the original color value.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  a GdkColor to fill in with the original color value.
	 */
	public void getPreviousColor(Color color)
	{
		// void gtk_color_selection_get_previous_color  (GtkColorSelection *colorsel,  GdkColor *color);
		gtk_color_selection_get_previous_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the 'previous' color to be color. This function should be called with
	 * some hesitations, as it might seem confusing to have that color change.
	 * Calling gtk_color_selection_set_current_color() will also set this color the first
	 * time it is called.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  a GdkColor to set the previous color with.
	 */
	public void setPreviousColor(Color color)
	{
		// void gtk_color_selection_set_previous_color  (GtkColorSelection *colorsel,  const GdkColor *color);
		gtk_color_selection_set_previous_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Gets the current state of the colorsel.
	 * colorsel:
	 *  a GtkColorSelection.
	 * Returns:
	 *  TRUE if the user is currently dragging a color around, and FALSE
	 * if the selection has stopped.
	 */
	public int isAdjusting()
	{
		// gboolean gtk_color_selection_is_adjusting  (GtkColorSelection *colorsel);
		return gtk_color_selection_is_adjusting(gtkColorSelection);
	}
	
	/**
	 * Parses a color palette string; the string is a colon-separated
	 * list of color names readable by gdk_color_parse().
	 * str:
	 *  a string encoding a color palette.
	 * colors:
	 *  return location for allocated array of GdkColor.
	 * n_colors:
	 *  return location for length of array.
	 * Returns:
	 *  TRUE if a palette was successfully parsed.
	 */
	public static int paletteFromString(char[] str, GdkColor** colors, int* nColors)
	{
		// gboolean gtk_color_selection_palette_from_string  (const gchar *str,  GdkColor **colors,  gint *n_colors);
		return gtk_color_selection_palette_from_string(Str.toStringz(str), colors, nColors);
	}
	
	/**
	 * Encodes a palette as a string, useful for persistent storage.
	 * colors:
	 *  an array of colors.
	 * n_colors:
	 *  length of the array.
	 * Returns:
	 *  allocated string encoding the palette.
	 */
	public static char[] paletteToString(Color colors, int nColors)
	{
		// gchar* gtk_color_selection_palette_to_string  (const GdkColor *colors,  gint n_colors);
		return Str.toString(gtk_color_selection_palette_to_string((colors is null) ? null : colors.getColorStruct(), nColors) );
	}
	
	/**
	 * Warning
	 * gtk_color_selection_set_change_palette_hook is deprecated and should not be used in newly-written code. This function is deprecated in favor of
	 * gtk_color_selection_set_change_palette_with_screen_hook(), and does
	 * not work in multihead environments.
	 * Installs a global function to be called whenever the user tries to
	 * modify the palette in a color selection. This function should save
	 * the new palette contents, and update the GtkSettings property
	 * "gtk-color-palette" so all GtkColorSelection widgets will be modified.
	 * func:
	 *  a function to call when the custom palette needs saving.
	 * Returns:
	 *  the previous change palette hook (that was replaced).
	 */
	public static GtkColorSelectionChangePaletteFunc setChangePaletteHook(GtkColorSelectionChangePaletteFunc func)
	{
		// GtkColorSelectionChangePaletteFunc gtk_color_selection_set_change_palette_hook  (GtkColorSelectionChangePaletteFunc func);
		return gtk_color_selection_set_change_palette_hook(func);
	}
	
	
	/**
	 * Installs a global function to be called whenever the user tries to
	 * modify the palette in a color selection. This function should save
	 * the new palette contents, and update the GtkSettings property
	 * "gtk-color-palette" so all GtkColorSelection widgets will be modified.
	 * func:
	 *  a function to call when the custom palette needs saving.
	 * Returns:
	 *  the previous change palette hook (that was replaced).
	 * Since 2.2
	 */
	public static GtkColorSelectionChangePaletteWithScreenFunc setChangePaletteWithScreenHook(GtkColorSelectionChangePaletteWithScreenFunc func)
	{
		// GtkColorSelectionChangePaletteWithScreenFunc gtk_color_selection_set_change_palette_with_screen_hook  (GtkColorSelectionChangePaletteWithScreenFunc func);
		return gtk_color_selection_set_change_palette_with_screen_hook(func);
	}
	
	
	/**
	 * Warning
	 * gtk_color_selection_set_color is deprecated and should not be used in newly-written code. Use gtk_color_selection_set_current_color() instead.
	 * Sets the current color to be color. The first time this is called, it will
	 * also set the original color to be color too.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  an array of 4 doubles specifying the red, green, blue and opacity
	 *  to set the current color to.
	 */
	public void setColor(double* color)
	{
		// void gtk_color_selection_set_color (GtkColorSelection *colorsel,  gdouble *color);
		gtk_color_selection_set_color(gtkColorSelection, color);
	}
	
	/**
	 * Warning
	 * gtk_color_selection_get_color is deprecated and should not be used in newly-written code.
	 * Sets color to be the current color in the GtkColorSelection widget.
	 * This function is deprecated, use gtk_color_selection_get_current_color() instead.
	 * colorsel:
	 *  a GtkColorSelection.
	 * color:
	 *  an array of 4 gdouble to fill in with the current color.
	 * Property Details
	 * The "current-alpha" property
	 *  "current-alpha" guint : Read / Write
	 * The current opacity value (0 fully transparent, 65535 fully opaque).
	 * Allowed values: <= 65535
	 * Default value: 65535
	 */
	public void getColor(double* color)
	{
		// void gtk_color_selection_get_color (GtkColorSelection *colorsel,  gdouble *color);
		gtk_color_selection_get_color(gtkColorSelection, color);
	}
	
	
	
}
