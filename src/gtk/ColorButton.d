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
 * inFile  = GtkColorButton.html
 * outPack = gtk
 * outFile = ColorButton
 * strct   = GtkColorButton
 * realStrct=
 * ctorStrct=
 * clss    = ColorButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ColorChooserIF
 * prefixes:
 * 	- gtk_color_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_color_button_set_rgba
 * 	- gtk_color_button_get_rgba
 * 	- gtk_color_button_set_use_alpha
 * 	- gtk_color_button_get_use_alpha
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Color
 * 	- gdk.RGBA
 * 	- gtk.ColorChooserIF
 * 	- gtk.ColorChooserT
 * structWrap:
 * 	- GdkColor* -> Color
 * 	- GdkRGBA* -> RGBA
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Color;
private import gdk.RGBA;
private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;



private import gtk.Button;

/**
 * The GtkColorButton is a button which displays the currently selected
 * color an allows to open a color selection dialog to change the color.
 * It is suitable widget for selecting a color in a preference dialog.
 */
public class ColorButton : Button, ColorChooserIF
{
	
	/** the main Gtk struct */
	protected GtkColorButton* gtkColorButton;
	
	
	public GtkColorButton* getColorButtonStruct()
	{
		return gtkColorButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorButton = cast(GtkColorButton*)obj;
	}
	
	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorButton);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ColorButton)[] onColorSetListeners;
	/**
	 * The ::color-set signal is emitted when the user selects a color.
	 * When handling this signal, use gtk_color_button_get_rgba() to
	 * find out which color was just selected.
	 * Note that this signal is only emitted when the user
	 * changes the color. If you need to react to programmatic color changes
	 * as well, use the notify::color signal.
	 * Since 2.4
	 * See Also
	 * GtkColorSelectionDialog, GtkFontButton
	 */
	void addOnColorSet(void delegate(ColorButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("color-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"color-set",
			cast(GCallback)&callBackColorSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["color-set"] = 1;
		}
		onColorSetListeners ~= dlg;
	}
	extern(C) static void callBackColorSet(GtkColorButton* widgetStruct, ColorButton _colorButton)
	{
		foreach ( void delegate(ColorButton) dlg ; _colorButton.onColorSetListeners )
		{
			dlg(_colorButton);
		}
	}
	
	
	/**
	 * Creates a new color button.
	 * This returns a widget in the form of a small button containing
	 * a swatch representing the current selected color. When the button
	 * is clicked, a color-selection dialog will open, allowing the user
	 * to select a color. The swatch will be updated to reflect the new
	 * color when the user finishes.
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_color_button_new (void);
		auto p = gtk_color_button_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_button_new()");
		}
		this(cast(GtkColorButton*) p);
	}
	
	/**
	 * Warning
	 * gtk_color_button_new_with_color has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_color_button_new_with_rgba() instead.
	 * Creates a new color button.
	 * Since 2.4
	 * Params:
	 * color = A GdkColor to set the current color with
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Color color)
	{
		// GtkWidget * gtk_color_button_new_with_color (const GdkColor *color);
		auto p = gtk_color_button_new_with_color((color is null) ? null : color.getColorStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_button_new_with_color((color is null) ? null : color.getColorStruct())");
		}
		this(cast(GtkColorButton*) p);
	}
	
	/**
	 * Creates a new color button.
	 * Params:
	 * rgba = A GdkRGBA to set the current color with
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RGBA rgba)
	{
		// GtkWidget * gtk_color_button_new_with_rgba (const GdkRGBA *rgba);
		auto p = gtk_color_button_new_with_rgba((rgba is null) ? null : rgba.getRGBAStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_button_new_with_rgba((rgba is null) ? null : rgba.getRGBAStruct())");
		}
		this(cast(GtkColorButton*) p);
	}
	
	/**
	 * Warning
	 * gtk_color_button_set_color is deprecated and should not be used in newly-written code. Use gtk_color_chooser_set_rgba() instead.
	 * Sets the current color to be color.
	 * Since 2.4
	 * Params:
	 * color = A GdkColor to set the current color with
	 */
	public void setColor(Color color)
	{
		// void gtk_color_button_set_color (GtkColorButton *button,  const GdkColor *color);
		gtk_color_button_set_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_color_button_get_color has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_color_chooser_get_rgba() instead.
	 * Sets color to be the current color in the GtkColorButton widget.
	 * Since 2.4
	 * Params:
	 * color = a GdkColor to fill in with the current color. [out]
	 */
	public void getColor(Color color)
	{
		// void gtk_color_button_get_color (GtkColorButton *button,  GdkColor *color);
		gtk_color_button_get_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Warning
	 * gtk_color_button_set_alpha has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_color_chooser_set_rgba() instead.
	 * Sets the current opacity to be alpha.
	 * Since 2.4
	 * Params:
	 * alpha = an integer between 0 and 65535
	 */
	public void setAlpha(ushort alpha)
	{
		// void gtk_color_button_set_alpha (GtkColorButton *button,  guint16 alpha);
		gtk_color_button_set_alpha(gtkColorButton, alpha);
	}
	
	/**
	 * Warning
	 * gtk_color_button_get_alpha has been deprecated since version 3.4 and should not be used in newly-written code. Use gtk_color_chooser_get_rgba() instead.
	 * Returns the current alpha value.
	 * Since 2.4
	 * Returns: an integer between 0 and 65535
	 */
	public ushort getAlpha()
	{
		// guint16 gtk_color_button_get_alpha (GtkColorButton *button);
		return gtk_color_button_get_alpha(gtkColorButton);
	}
	
	/**
	 * Sets the title for the color selection dialog.
	 * Since 2.4
	 * Params:
	 * title = String containing new window title
	 */
	public void setTitle(string title)
	{
		// void gtk_color_button_set_title (GtkColorButton *button,  const gchar *title);
		gtk_color_button_set_title(gtkColorButton, Str.toStringz(title));
	}
	
	/**
	 * Gets the title of the color selection dialog.
	 * Since 2.4
	 * Returns: An internal string, do not free the return value
	 */
	public string getTitle()
	{
		// const gchar * gtk_color_button_get_title (GtkColorButton *button);
		return Str.toString(gtk_color_button_get_title(gtkColorButton));
	}
}
