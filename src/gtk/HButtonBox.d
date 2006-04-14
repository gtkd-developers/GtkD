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
 * outFile = HButtonBox
 * strct   = GtkHButtonBox
 * realStrct=
 * clss    = HButtonBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hbutton_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.HButtonBox;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * A button box should be used to provide a consistent layout of buttons
 * throughout your application. The layout/spacing can be altered by the
 * programmer, or if desired, by the user to alter the 'feel' of a
 * program to a small degree.
 * A GtkHButtonBox is created with gtk_hbutton_box_new(). Buttons are
 * packed into a button box the same way widgets are added to any other
 * container, using gtk_container_add(). You can also use
 * gtk_box_pack_start() or gtk_box_pack_end(), but for button boxes both
 * these functions work just like gtk_container_add(), ie., they pack the
 * button in a way that depends on the current layout style and on
 * whether the button has had gtk_button_box_set_child_secondary() called
 * on it.
 * The spacing between buttons can be set with gtk_box_set_spacing(). The
 * arrangement and layout of the buttons can be changed with
 * gtk_button_box_set_layout().
 */
private import gtk.ButtonBox;
public class HButtonBox : ButtonBox
{
	
	/** the main Gtk struct */
	protected GtkHButtonBox* gtkHButtonBox;
	
	
	public GtkHButtonBox* getHButtonBoxStruct()
	{
		return gtkHButtonBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkHButtonBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHButtonBox* gtkHButtonBox)
	{
		super(cast(GtkButtonBox*)gtkHButtonBox);
		this.gtkHButtonBox = gtkHButtonBox;
	}
	
	/**
	 * Creates a new HButtonBox and sets comon parameters
	 */
	static ButtonBox createActionBox()
	{
		ButtonBox bBox = new HButtonBox();
		bBox.setLayout(ButtonBoxStyle.END);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}
	
	
	/**
	 */
	
	
	/**
	 * Creates a new horizontal button box.
	 * Returns:
	 * a new button box GtkWidget.
	 */
	public this ()
	{
		// GtkWidget* gtk_hbutton_box_new (void);
		this(cast(GtkHButtonBox*)gtk_hbutton_box_new() );
	}
	
	/**
	 * Warning
	 * gtk_hbutton_box_get_spacing_default is deprecated and should not be used in newly-written code.
	 * Retrieves the current default spacing for horizontal button boxes. This is the number of pixels
	 * to be placed between the buttons when they are arranged.
	 * Returns:
	 * the default number of pixels between buttons.
	 */
	public static int getSpacingDefault()
	{
		// gint gtk_hbutton_box_get_spacing_default  (void);
		return gtk_hbutton_box_get_spacing_default();
	}
	
	/**
	 * Warning
	 * gtk_hbutton_box_get_layout_default is deprecated and should not be used in newly-written code.
	 * Retrieves the current layout used to arrange buttons in button box widgets.
	 * Returns:
	 * the current GtkButtonBoxStyle.
	 */
	public static GtkButtonBoxStyle getLayoutDefault()
	{
		// GtkButtonBoxStyle gtk_hbutton_box_get_layout_default  (void);
		return gtk_hbutton_box_get_layout_default();
	}
	
	/**
	 * Warning
	 * gtk_hbutton_box_set_spacing_default is deprecated and should not be used in newly-written code.
	 * Changes the default spacing that is placed between widgets in an
	 * horizontal button box.
	 * spacing:
	 * an integer value.
	 */
	public static void setSpacingDefault(int spacing)
	{
		// void gtk_hbutton_box_set_spacing_default  (gint spacing);
		gtk_hbutton_box_set_spacing_default(spacing);
	}
	
	/**
	 * Warning
	 * gtk_hbutton_box_set_layout_default is deprecated and should not be used in newly-written code.
	 * Sets a new layout mode that will be used by all button boxes.
	 * layout:
	 * a new GtkButtonBoxStyle.
	 * See Also
	 * GtkBox
	 * Used to pack widgets into button boxes.
	 * GtkButtonBox
	 * Provides functions for controlling button boxes.
	 * GtkVButtonBox
	 * Pack buttons vertically
	 */
	public static void setLayoutDefault(GtkButtonBoxStyle layout)
	{
		// void gtk_hbutton_box_set_layout_default  (GtkButtonBoxStyle layout);
		gtk_hbutton_box_set_layout_default(layout);
	}
}
