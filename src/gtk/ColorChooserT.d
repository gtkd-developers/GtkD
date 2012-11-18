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
 * inFile  = GtkColorChooser.html
 * outPack = gtk
 * outFile = ColorChooserT
 * strct   = GtkColorChooser
 * realStrct=
 * ctorStrct=
 * clss    = ColorChooserT
 * interf  = ColorChooserIF
 * class Code: Yes
 * interface Code: Yes
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_color_chooser_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_color_chooser_add_palette
 * omit signals:
 * imports:
 * 	- gdk.RGBA
 * structWrap:
 * 	- GdkRGBA* -> RGBA
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorChooserT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import gdk.RGBA;




/**
 * Description
 * GtkColorChooser is an interface that is implemented by widgets
 * for choosing colors. Depending on the situation, colors may be
 * allowed to have alpha (translucency).
 * In GTK+, the main widgets that implement this interface are
 * GtkColorChooserWidget, GtkColorChooserDialog and GtkColorButton.
 */
public template ColorChooserT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkColorChooser* gtkColorChooser;
	
	
	public GtkColorChooser* getColorChooserTStruct()
	{
		return cast(GtkColorChooser*)getStruct();
	}
	
	
	/**
	 * Adds a palette to the color chooser. If orientation is horizontal,
	 * the colors are grouped in rows, with colorsPerPine colors
	 * in each row. If horizontal is false, the colors are grouped
	 * in columns instead.
	 *
	 * The default color palette of ColorChooserWidget has
	 * 27 colors, organized in columns of 3 colors. The default gray
	 * palette has 9 grays in a single row.
	 *
	 * The layout of the color chooser widget works best when the
	 * palettes have 9-10 columns.
	 *
	 * Calling this function for the first time has the
	 * side effect of removing the default color and gray palettes
	 * from the color chooser.
	 *
	 * If colors is null, removes all previously added palettes.
	 *
	 * Params:
	 *     orientation   = Orientation.HORIZONTAL if the palette should
	 *                     be displayed in rows, Orientation.VERTICAL for columns
	 *     colorsPerLine = the number of colors to show in each row/column
	 *     colors        = the colors of the palette, or null.
	 * Since 3.4
	 */
	public void addPalette(GtkOrientation orientation, int colorsPerLine, RGBA[] colors)
	{
		GdkRGBA*[] cColors = new GdkRGBA*[colors.length];
		
		foreach( i, color; colors )
		{
			cColors[i] = color.getRGBAStruct();
		}
		
		// void gtk_color_chooser_add_palette (GtkColorChooser *chooser,  GtkOrientation orientation,  gint colors_per_line,  gint n_colors,  GdkRGBA *colors);
		gtk_color_chooser_add_palette(getColorChooserTStruct(), orientation, colorsPerLine, cast(int) colors.length, cColors[0]);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(RGBA, ColorChooserIF)[] _onColorActivatedListeners;
	void delegate(RGBA, ColorChooserIF)[] onColorActivatedListeners()
	{
		return  _onColorActivatedListeners;
	}
	/**
	 * Emitted when a color is activated from the color chooser.
	 * This usually happens when the user clicks a color swatch,
	 * or a color is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 * Since 3.4
	 * See Also
	 * GtkColorChooserDialog, GtkColorChooserWidget, GtkColorButton
	 */
	void addOnColorActivated(void delegate(RGBA, ColorChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("color-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"color-activated",
			cast(GCallback)&callBackColorActivated,
			cast(void*)cast(ColorChooserIF)this,
			null,
			connectFlags);
			connectedSignals["color-activated"] = 1;
		}
		_onColorActivatedListeners ~= dlg;
	}
	extern(C) static void callBackColorActivated(GtkColorChooser* chooserStruct, GdkRGBA* color, ColorChooserIF _colorChooserIF)
	{
		foreach ( void delegate(RGBA, ColorChooserIF) dlg ; _colorChooserIF.onColorActivatedListeners )
		{
			dlg(ObjectG.getDObject!(RGBA)(color), _colorChooserIF);
		}
	}
	
	
	/**
	 * Gets the currently-selected color.
	 * Params:
	 * color = return location for the color
	 * Since 3.4
	 */
	public void getRgba(RGBA color)
	{
		// void gtk_color_chooser_get_rgba (GtkColorChooser *chooser,  GdkRGBA *color);
		gtk_color_chooser_get_rgba(getColorChooserTStruct(), (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Sets the color.
	 * Params:
	 * color = the new color
	 * Since 3.4
	 */
	public void setRgba(RGBA color)
	{
		// void gtk_color_chooser_set_rgba (GtkColorChooser *chooser,  const GdkRGBA *color);
		gtk_color_chooser_set_rgba(getColorChooserTStruct(), (color is null) ? null : color.getRGBAStruct());
	}
	
	/**
	 * Returns whether the color chooser shows the alpha channel.
	 * Returns: TRUE if the color chooser uses the alpha channel, FALSE if not Since 3.4
	 */
	public int getUseAlpha()
	{
		// gboolean gtk_color_chooser_get_use_alpha (GtkColorChooser *chooser);
		return gtk_color_chooser_get_use_alpha(getColorChooserTStruct());
	}
	
	/**
	 * Sets whether or not the color chooser should use the alpha channel.
	 * Params:
	 * useAlpha = TRUE if color chooser should use alpha channel, FALSE if not
	 * Since 3.4
	 */
	public void setUseAlpha(int useAlpha)
	{
		// void gtk_color_chooser_set_use_alpha (GtkColorChooser *chooser,  gboolean use_alpha);
		gtk_color_chooser_set_use_alpha(getColorChooserTStruct(), useAlpha);
	}
}
