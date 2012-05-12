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
 * inFile  = GtkColorSelection.html
 * outPack = gtk
 * outFile = ColorSelection
 * strct   = GtkColorSelection
 * realStrct=
 * ctorStrct=
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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Color
 * structWrap:
 * 	- GdkColor* -> Color
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorSelection;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Color;



private import gtk.VBox;

/**
 * Description
 * The GtkColorSelection is a widget that is used to select
 * a color. It consists of a color wheel and number of sliders
 * and entry boxes for color parameters such as hue, saturation,
 * value, red, green, blue, and opacity. It is found on the standard
 * color selection dialog box GtkColorSelectionDialog.
 */
public class ColorSelection : VBox
{
	
	/** the main Gtk struct */
	protected GtkColorSelection* gtkColorSelection;
	
	
	public GtkColorSelection* getColorSelectionStruct()
	{
		return gtkColorSelection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorSelection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorSelection* gtkColorSelection)
	{
		if(gtkColorSelection is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkColorSelection);
		if( ptr !is null )
		{
			this = cast(ColorSelection)ptr;
			return;
		}
		super(cast(GtkVBox*)gtkColorSelection);
		this.gtkColorSelection = gtkColorSelection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorSelection = cast(GtkColorSelection*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ColorSelection)[] onColorChangedListeners;
	/**
	 * This signal is emitted when the color changes in the GtkColorSelection
	 * according to its update policy.
	 */
	void addOnColorChanged(void delegate(ColorSelection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("color-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"color-changed",
			cast(GCallback)&callBackColorChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["color-changed"] = 1;
		}
		onColorChangedListeners ~= dlg;
	}
	extern(C) static void callBackColorChanged(GtkColorSelection* colorselectionStruct, ColorSelection colorSelection)
	{
		foreach ( void delegate(ColorSelection) dlg ; colorSelection.onColorChangedListeners )
		{
			dlg(colorSelection);
		}
	}
	
	
	/**
	 * Creates a new GtkColorSelection.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_color_selection_new (void);
		auto p = gtk_color_selection_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_selection_new()");
		}
		this(cast(GtkColorSelection*) p);
	}
	
	/**
	 * Warning
	 * gtk_color_selection_set_update_policy is deprecated and should not be used in newly-written code.
	 * Sets the policy controlling when the color_changed signals are emitted.
	 * Params:
	 * policy = a GtkUpdateType value indicating the desired policy.
	 */
	public void setUpdatePolicy(GtkUpdateType policy)
	{
		// void gtk_color_selection_set_update_policy  (GtkColorSelection *colorsel,  GtkUpdateType policy);
		gtk_color_selection_set_update_policy(gtkColorSelection, policy);
	}
	
	/**
	 * Sets the colorsel to use or not use opacity.
	 * Params:
	 * hasOpacity = TRUE if colorsel can set the opacity, FALSE otherwise.
	 */
	public void setHasOpacityControl(int hasOpacity)
	{
		// void gtk_color_selection_set_has_opacity_control  (GtkColorSelection *colorsel,  gboolean has_opacity);
		gtk_color_selection_set_has_opacity_control(gtkColorSelection, hasOpacity);
	}
	
	/**
	 * Determines whether the colorsel has an opacity control.
	 * Returns: TRUE if the colorsel has an opacity control. FALSE if it does't.
	 */
	public int getHasOpacityControl()
	{
		// gboolean gtk_color_selection_get_has_opacity_control  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_has_opacity_control(gtkColorSelection);
	}
	
	/**
	 * Shows and hides the palette based upon the value of has_palette.
	 * Params:
	 * hasPalette = TRUE if palette is to be visible, FALSE otherwise.
	 */
	public void setHasPalette(int hasPalette)
	{
		// void gtk_color_selection_set_has_palette (GtkColorSelection *colorsel,  gboolean has_palette);
		gtk_color_selection_set_has_palette(gtkColorSelection, hasPalette);
	}
	
	/**
	 * Determines whether the color selector has a color palette.
	 * Returns: TRUE if the selector has a palette. FALSE if it hasn't.
	 */
	public int getHasPalette()
	{
		// gboolean gtk_color_selection_get_has_palette (GtkColorSelection *colorsel);
		return gtk_color_selection_get_has_palette(gtkColorSelection);
	}
	
	/**
	 * Returns the current alpha value.
	 * Returns: an integer between 0 and 65535.
	 */
	public ushort getCurrentAlpha()
	{
		// guint16 gtk_color_selection_get_current_alpha  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_current_alpha(gtkColorSelection);
	}
	
	/**
	 * Sets the current opacity to be alpha. The first time this is called, it will
	 * also set the original opacity to be alpha too.
	 * Params:
	 * alpha = an integer between 0 and 65535.
	 */
	public void setCurrentAlpha(ushort alpha)
	{
		// void gtk_color_selection_set_current_alpha  (GtkColorSelection *colorsel,  guint16 alpha);
		gtk_color_selection_set_current_alpha(gtkColorSelection, alpha);
	}
	
	/**
	 * Sets color to be the current color in the GtkColorSelection widget.
	 * Params:
	 * color = a GdkColor to fill in with the current color. [out]
	 */
	public void getCurrentColor(Color color)
	{
		// void gtk_color_selection_get_current_color  (GtkColorSelection *colorsel,  GdkColor *color);
		gtk_color_selection_get_current_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the current color to be color. The first time this is called, it will
	 * also set the original color to be color too.
	 * Params:
	 * color = A GdkColor to set the current color with.
	 */
	public void setCurrentColor(Color color)
	{
		// void gtk_color_selection_set_current_color  (GtkColorSelection *colorsel,  const GdkColor *color);
		gtk_color_selection_set_current_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Returns the previous alpha value.
	 * Returns: an integer between 0 and 65535.
	 */
	public ushort getPreviousAlpha()
	{
		// guint16 gtk_color_selection_get_previous_alpha  (GtkColorSelection *colorsel);
		return gtk_color_selection_get_previous_alpha(gtkColorSelection);
	}
	
	/**
	 * Sets the 'previous' alpha to be alpha. This function should be called with
	 * some hesitations, as it might seem confusing to have that alpha change.
	 * Params:
	 * alpha = an integer between 0 and 65535.
	 */
	public void setPreviousAlpha(ushort alpha)
	{
		// void gtk_color_selection_set_previous_alpha  (GtkColorSelection *colorsel,  guint16 alpha);
		gtk_color_selection_set_previous_alpha(gtkColorSelection, alpha);
	}
	
	/**
	 * Fills color in with the original color value.
	 * Params:
	 * color = a GdkColor to fill in with the original color value. [out]
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
	 * Params:
	 * color = a GdkColor to set the previous color with.
	 */
	public void setPreviousColor(Color color)
	{
		// void gtk_color_selection_set_previous_color  (GtkColorSelection *colorsel,  const GdkColor *color);
		gtk_color_selection_set_previous_color(gtkColorSelection, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Gets the current state of the colorsel.
	 * Returns: TRUE if the user is currently dragging a color around, and FALSE if the selection has stopped.
	 */
	public int isAdjusting()
	{
		// gboolean gtk_color_selection_is_adjusting (GtkColorSelection *colorsel);
		return gtk_color_selection_is_adjusting(gtkColorSelection);
	}
	
	/**
	 * Parses a color palette string; the string is a colon-separated
	 * list of color names readable by gdk_color_parse().
	 * Params:
	 * str = a string encoding a color palette.
	 * colors = return location for allocated
	 * array of GdkColor. [out][array length=n_colors]
	 * Returns: TRUE if a palette was successfully parsed.
	 */
	public static int paletteFromString(string str, out GdkColor[] colors)
	{
		// gboolean gtk_color_selection_palette_from_string  (const gchar *str,  GdkColor **colors,  gint *n_colors);
		GdkColor* outcolors = null;
		int nColors;
		
		auto p = gtk_color_selection_palette_from_string(Str.toStringz(str), &outcolors, &nColors);
		
		colors = outcolors[0 .. nColors];
		return p;
	}
	
	/**
	 * Encodes a palette as a string, useful for persistent storage.
	 * Params:
	 * colors = an array of colors. [array length=n_colors]
	 * nColors = length of the array.
	 * Returns: allocated string encoding the palette.
	 */
	public static string paletteToString(Color colors, int nColors)
	{
		// gchar * gtk_color_selection_palette_to_string  (const GdkColor *colors,  gint n_colors);
		return Str.toString(gtk_color_selection_palette_to_string((colors is null) ? null : colors.getColorStruct(), nColors));
	}
	
	/**
	 * Warning
	 * gtk_color_selection_set_change_palette_hook has been deprecated since version 2.4 and should not be used in newly-written code. This function does not work in multihead environments.
	 *  Use gtk_color_selection_set_change_palette_with_screen_hook() instead.
	 * Installs a global function to be called whenever the user tries to
	 * modify the palette in a color selection. This function should save
	 * the new palette contents, and update the GtkSettings property
	 * "gtk-color-palette" so all GtkColorSelection widgets will be modified.
	 * Params:
	 * func = a function to call when the custom palette needs saving.
	 * Returns: the previous change palette hook (that was replaced).
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
	 * Since 2.2
	 * Params:
	 * func = a function to call when the custom palette needs saving.
	 * Returns: the previous change palette hook (that was replaced).
	 */
	public static GtkColorSelectionChangePaletteWithScreenFunc setChangePaletteWithScreenHook(GtkColorSelectionChangePaletteWithScreenFunc func)
	{
		// GtkColorSelectionChangePaletteWithScreenFunc gtk_color_selection_set_change_palette_with_screen_hook  (GtkColorSelectionChangePaletteWithScreenFunc func);
		return gtk_color_selection_set_change_palette_with_screen_hook(func);
	}
	
	/**
	 * Warning
	 * gtk_color_selection_set_color has been deprecated since version 2.0 and should not be used in newly-written code. Use gtk_color_selection_set_current_color() instead.
	 * Sets the current color to be color. The first time this is called, it will
	 * also set the original color to be color too.
	 * Params:
	 * color = an array of 4 doubles specifying the red, green, blue and opacity
	 * to set the current color to.
	 */
	public void setColor(double[] color)
	{
		// void gtk_color_selection_set_color (GtkColorSelection *colorsel,  gdouble *color);
		gtk_color_selection_set_color(gtkColorSelection, color.ptr);
	}
	
	/**
	 * Warning
	 * gtk_color_selection_get_color has been deprecated since version 2.0 and should not be used in newly-written code. Use gtk_color_selection_get_current_color() instead.
	 * Sets color to be the current color in the GtkColorSelection widget.
	 * Params:
	 * color = an array of 4 gdouble to fill in with the current color.
	 */
	public void getColor(double[] color)
	{
		// void gtk_color_selection_get_color (GtkColorSelection *colorsel,  gdouble *color);
		gtk_color_selection_get_color(gtkColorSelection, color.ptr);
	}
}
