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
 * outFile = ColorChooserIF
 * strct   = GtkColorChooser
 * realStrct=
 * ctorStrct=
 * clss    = ColorChooserT
 * interf  = ColorChooserIF
 * class Code: Yes
 * interface Code: Yes
 * template for:
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

module gtk.ColorChooserIF;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.RGBA;




/**
 * GtkColorChooser is an interface that is implemented by widgets
 * for choosing colors. Depending on the situation, colors may be
 * allowed to have alpha (translucency).
 *
 * In GTK+, the main widgets that implement this interface are
 * GtkColorChooserWidget, GtkColorChooserDialog and GtkColorButton.
 */
public interface ColorChooserIF
{
	
	
	public GtkColorChooser* getColorChooserTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
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
	public void addPalette(GtkOrientation orientation, int colorsPerLine, RGBA[] colors);
	
	/**
	 */
	
	void delegate(RGBA, ColorChooserIF)[] onColorActivatedListeners();
	/**
	 * Emitted when a color is activated from the color chooser.
	 * This usually happens when the user clicks a color swatch,
	 * or a color is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 * Since 3.4
	 * See Also
	 * GtkColorChooserDialog, GtkColorChooserWidget, GtkColorButton
	 */
	void addOnColorActivated(void delegate(RGBA, ColorChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Gets the currently-selected color.
	 * Params:
	 * color = a GdkRGBA to fill in with the current color. [out]
	 * Since 3.4
	 */
	public void getRgba(RGBA color);
	
	/**
	 * Sets the color.
	 * Params:
	 * color = the new color
	 * Since 3.4
	 */
	public void setRgba(RGBA color);
	
	/**
	 * Returns whether the color chooser shows the alpha channel.
	 * Returns: TRUE if the color chooser uses the alpha channel, FALSE if not Since 3.4
	 */
	public int getUseAlpha();
	
	/**
	 * Sets whether or not the color chooser should use the alpha channel.
	 * Params:
	 * useAlpha = TRUE if color chooser should use alpha channel, FALSE if not
	 * Since 3.4
	 */
	public void setUseAlpha(int useAlpha);
}
