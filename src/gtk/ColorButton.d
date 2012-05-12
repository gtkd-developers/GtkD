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

module gtk.ColorButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Color;



private import gtk.Button;

/**
 * Description
 * The GtkColorButton is a button which displays the currently selected color
 * an allows to open a color selection dialog to change the color. It is suitable
 * widget for selecting a color in a preference dialog.
 */
public class ColorButton : Button
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
		if(gtkColorButton is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkColorButton);
		if( ptr !is null )
		{
			this = cast(ColorButton)ptr;
			return;
		}
		super(cast(GtkButton*)gtkColorButton);
		this.gtkColorButton = gtkColorButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorButton = cast(GtkColorButton*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ColorButton)[] onColorSetListeners;
	/**
	 * The ::color-set signal is emitted when the user selects a color.
	 * When handling this signal, use gtk_color_button_get_color() and
	 * gtk_color_button_get_alpha() to find out which color was just selected.
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
	extern(C) static void callBackColorSet(GtkColorButton* widgetStruct, ColorButton colorButton)
	{
		foreach ( void delegate(ColorButton) dlg ; colorButton.onColorSetListeners )
		{
			dlg(colorButton);
		}
	}
	
	
	/**
	 * Creates a new color button. This returns a widget in the form of
	 * a small button containing a swatch representing the current selected
	 * color. When the button is clicked, a color-selection dialog will open,
	 * allowing the user to select a color. The swatch will be updated to reflect
	 * the new color when the user finishes.
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
	 * Creates a new color button.
	 * Since 2.4
	 * Params:
	 * color = A GdkColor to set the current color with.
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
	 * Sets the current color to be color.
	 * Since 2.4
	 * Params:
	 * color = A GdkColor to set the current color with.
	 */
	public void setColor(Color color)
	{
		// void gtk_color_button_set_color (GtkColorButton *color_button,  const GdkColor *color);
		gtk_color_button_set_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets color to be the current color in the GtkColorButton widget.
	 * Since 2.4
	 * Params:
	 * color = a GdkColor to fill in with the current color.
	 */
	public void getColor(Color color)
	{
		// void gtk_color_button_get_color (GtkColorButton *color_button,  GdkColor *color);
		gtk_color_button_get_color(gtkColorButton, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the current opacity to be alpha.
	 * Since 2.4
	 * Params:
	 * alpha = an integer between 0 and 65535.
	 */
	public void setAlpha(ushort alpha)
	{
		// void gtk_color_button_set_alpha (GtkColorButton *color_button,  guint16 alpha);
		gtk_color_button_set_alpha(gtkColorButton, alpha);
	}
	
	/**
	 * Returns the current alpha value.
	 * Since 2.4
	 * Returns: an integer between 0 and 65535.
	 */
	public ushort getAlpha()
	{
		// guint16 gtk_color_button_get_alpha (GtkColorButton *color_button);
		return gtk_color_button_get_alpha(gtkColorButton);
	}
	
	/**
	 * Sets whether or not the color button should use the alpha channel.
	 * Since 2.4
	 * Params:
	 * useAlpha = TRUE if color button should use alpha channel, FALSE if not.
	 */
	public void setUseAlpha(int useAlpha)
	{
		// void gtk_color_button_set_use_alpha (GtkColorButton *color_button,  gboolean use_alpha);
		gtk_color_button_set_use_alpha(gtkColorButton, useAlpha);
	}
	
	/**
	 * Does the color selection dialog use the alpha channel?
	 * Since 2.4
	 * Returns: TRUE if the color sample uses alpha channel, FALSE if not.
	 */
	public int getUseAlpha()
	{
		// gboolean gtk_color_button_get_use_alpha (GtkColorButton *color_button);
		return gtk_color_button_get_use_alpha(gtkColorButton);
	}
	
	/**
	 * Sets the title for the color selection dialog.
	 * Since 2.4
	 * Params:
	 * title = String containing new window title.
	 */
	public void setTitle(string title)
	{
		// void gtk_color_button_set_title (GtkColorButton *color_button,  const gchar *title);
		gtk_color_button_set_title(gtkColorButton, Str.toStringz(title));
	}
	
	/**
	 * Gets the title of the color selection dialog.
	 * Since 2.4
	 * Returns: An internal string, do not free the return value
	 */
	public string getTitle()
	{
		// const gchar * gtk_color_button_get_title (GtkColorButton *color_button);
		return Str.toString(gtk_color_button_get_title(gtkColorButton));
	}
}
