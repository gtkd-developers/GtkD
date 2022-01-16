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


module gtk.ColorChooserIF;

private import gdk.RGBA;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkColorChooser` is an interface that is implemented by widgets
 * for choosing colors.
 * 
 * Depending on the situation, colors may be allowed to have alpha (translucency).
 * 
 * In GTK, the main widgets that implement this interface are
 * [class@Gtk.ColorChooserWidget], [class@Gtk.ColorChooserDialog] and
 * [class@Gtk.ColorButton].
 */
public interface ColorChooserIF{
	/** Get the main Gtk struct */
	public GtkColorChooser* getColorChooserStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_color_chooser_get_type();
	}

	/**
	 * Adds a palette to the color chooser.
	 *
	 * If @orientation is horizontal, the colors are grouped in rows,
	 * with @colors_per_line colors in each row. If @horizontal is %FALSE,
	 * the colors are grouped in columns instead.
	 *
	 * The default color palette of [class@Gtk.ColorChooserWidget] has
	 * 45 colors, organized in columns of 5 colors (this includes some
	 * grays).
	 *
	 * The layout of the color chooser widget works best when the
	 * palettes have 9-10 columns.
	 *
	 * Calling this function for the first time has the side effect
	 * of removing the default color palette from the color chooser.
	 *
	 * If @colors is %NULL, removes all previously added palettes.
	 *
	 * Params:
	 *     orientation = %GTK_ORIENTATION_HORIZONTAL if the palette should
	 *         be displayed in rows, %GTK_ORIENTATION_VERTICAL for columns
	 *     colorsPerLine = the number of colors to show in each row/column
	 *     colors = the colors of the palette
	 */
	public void addPalette(GtkOrientation orientation, int colorsPerLine, RGBA[] colors);

	/**
	 * Gets the currently-selected color.
	 *
	 * Params:
	 *     color = a `GdkRGBA` to fill in with the current color
	 */
	public void getRgba(out RGBA color);

	/**
	 * Returns whether the color chooser shows the alpha channel.
	 *
	 * Returns: %TRUE if the color chooser uses the alpha channel,
	 *     %FALSE if not
	 */
	public bool getUseAlpha();

	/**
	 * Sets the color.
	 *
	 * Params:
	 *     color = the new color
	 */
	public void setRgba(RGBA color);

	/**
	 * Sets whether or not the color chooser should use the alpha channel.
	 *
	 * Params:
	 *     useAlpha = %TRUE if color chooser should use alpha channel, %FALSE if not
	 */
	public void setUseAlpha(bool useAlpha);

	/**
	 * Emitted when a color is activated from the color chooser.
	 *
	 * This usually happens when the user clicks a color swatch,
	 * or a color is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 *
	 * Params:
	 *     color = the color
	 */
	gulong addOnColorActivated(void delegate(RGBA, ColorChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
