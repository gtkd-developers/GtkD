/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkColorButton.html
 * outPack = gtk
 * outFile = ColorButton
 * strct   = GtkColorButton
 * realStrct=
 * ctorStrct=
 * clss    = ColorButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_color_button_
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

module gtk.ColorButton;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gdk.Color;

/**
 * Description
 * The GtkColorButton is a button which displays the currently selected color
 * an allows to open a color selection dialog to change the color. It is suitable
 * widget for selecting a color in a preference dialog.
 */
private import gtk.Button;
public class ColorButton : Button
{
	
	/** the main Gtk struct */
	protected GtkColorButton* gtkColorButton;
	
	
	public GtkColorButton* getColorButtonStruct()
	{
		return gtkColorButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkColorButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorButton* gtkColorButton)
	{
		super(cast(GtkButton*)gtkColorButton);
		this.gtkColorButton = gtkColorButton;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(ColorButton)[] onColorSetListeners;
	void addOnColorSet(void delegate(ColorButton) dlg)
	{
		if ( !("color-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"color-set",
			cast(GCallback)&callBackColorSet,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["color-set"] = 1;
		}
		onColorSetListeners ~= dlg;
	}
	extern(C) static void callBackColorSet(GtkColorButton* widgetStruct, ColorButton colorButton)
	{
		bit consumed = false;
		
		foreach ( void delegate(ColorButton) dlg ; colorButton.onColorSetListeners )
		{
			dlg(colorButton);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new color button. This returns a widget in the form of
	 * a small button containing a swatch representing the current selected
	 * color. When the button is clicked, a color-selection dialog will open,
	 * allowing the user to select a color. The swatch will be updated to reflect
	 * the new color when the user finishes.
	 * Returns:
	 *  a new color button.
	 * Since 2.4
	 */
	public this ()
	{
		// GtkWidget* gtk_color_button_new (void);
		this(cast(GtkColorButton*)gtk_color_button_new() );
	}
	
	/**
	 * Creates a new color button.
	 * color:
	 *  A GdkColor to set the current color with.
	 * Returns:
	 *  a new color button.
	 * Since 2.4
	 */
	public this (Color color)
	{
		// GtkWidget* gtk_color_button_new_with_color (const GdkColor *color);
		this(cast(GtkColorButton*)gtk_color_button_new_with_color((color is null) ? null : color.getColorStruct()) );
	}
	
	/**
	 * Sets the current color to be color.
	 * color_button:
	 *  a GtkColorButton.
	 * color:
	 *  A GdkColor to set the current color with.
	 * Since 2.4
	 */
	public void setColor(Color color)
	{
		// void gtk_color_button_set_color (GtkColorButton *color_button,  const GdkColor *color);
		gtk_color_button_set_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets color to be the current color in the GtkColorButton widget.
	 * color_button:
	 *  a GtkColorButton.
	 * color:
	 *  a GdkColor to fill in with the current color.
	 * Since 2.4
	 */
	public void getColor(Color color)
	{
		// void gtk_color_button_get_color (GtkColorButton *color_button,  GdkColor *color);
		gtk_color_button_get_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the current opacity to be alpha.
	 * color_button:
	 *  a GtkColorButton.
	 * alpha:
	 *  an integer between 0 and 65535.
	 * Since 2.4
	 */
	public void setAlpha(ushort alpha)
	{
		// void gtk_color_button_set_alpha (GtkColorButton *color_button,  guint16 alpha);
		gtk_color_button_set_alpha(gtkColorButton, alpha);
	}
	
	/**
	 * Returns the current alpha value.
	 * color_button:
	 *  a GtkColorButton.
	 * Returns:
	 *  an integer between 0 and 65535.
	 * Since 2.4
	 */
	public ushort getAlpha()
	{
		// guint16 gtk_color_button_get_alpha (GtkColorButton *color_button);
		return gtk_color_button_get_alpha(gtkColorButton);
	}
	
	/**
	 * Sets whether or not the color button should use the alpha channel.
	 * color_button:
	 *  a GtkColorButton.
	 * use_alpha:
	 *  TRUE if color button should use alpha channel, FALSE if not.
	 * Since 2.4
	 */
	public void setUseAlpha(int useAlpha)
	{
		// void gtk_color_button_set_use_alpha (GtkColorButton *color_button,  gboolean use_alpha);
		gtk_color_button_set_use_alpha(gtkColorButton, useAlpha);
	}
	
	/**
	 * Does the color selection dialog use the alpha channel?
	 * color_button:
	 *  a GtkColorButton.
	 * Returns:
	 *  TRUE if the color sample uses alpha channel, FALSE if not.
	 * Since 2.4
	 */
	public int getUseAlpha()
	{
		// gboolean gtk_color_button_get_use_alpha (GtkColorButton *color_button);
		return gtk_color_button_get_use_alpha(gtkColorButton);
	}
	
	/**
	 * Sets the title for the color selection dialog.
	 * color_button:
	 *  a GtkColorButton
	 * title:
	 *  String containing new window title.
	 * Since 2.4
	 */
	public void setTitle(char[] title)
	{
		// void gtk_color_button_set_title (GtkColorButton *color_button,  const gchar *title);
		gtk_color_button_set_title(gtkColorButton, Str.toStringz(title));
	}
	
	/**
	 * Gets the title of the color selection dialog.
	 * color_button:
	 *  a GtkColorButton
	 * Returns:
	 *  An internal string, do not free the return value
	 * Since 2.4
	 * Property Details
	 * The "alpha" property
	 *  "alpha" guint : Read / Write
	 * The selected opacity value (0 fully transparent, 65535 fully opaque).
	 * Allowed values: <= 65535
	 * Default value: 65535
	 * Since 2.4
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_color_button_get_title (GtkColorButton *color_button);
		return Str.toString(gtk_color_button_get_title(gtkColorButton) );
	}
	
	
	
}
