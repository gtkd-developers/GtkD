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
 * outFile = CheckButton
 * strct   = GtkCheckButton
 * realStrct=
 * clss    = CheckButton
 * extend  = 
 * prefixes:
 * 	- gtk_check_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_check_button_new_with_label
 * 	- gtk_check_button_new_with_mnemonic
 * imports:
 * 	- std.string
 * 	- gtk.Button
 * 	- std.string
 * structWrap:
 * local aliases:
 */

module gtk.CheckButton;

private import gtk.typedefs;

private import lib.gtk;

private import std.string;
private import gtk.Button;
private import std.string;

/**
 * Description
 * A GtkCheckButton places a discrete GtkToggleButton next to a widget, (usually a GtkLabel). See the section on GtkToggleButton widgets for more information about toggle/check buttons.
 * The important signal ('toggled') is also inherited from GtkToggleButton.
 */
private import gtk.ToggleButton;
public class CheckButton : ToggleButton
{
	
	/** the main Gtk struct */
	protected GtkCheckButton* gtkCheckButton;
	
	
	public GtkCheckButton* getCheckButtonStruct()
	{
		return gtkCheckButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCheckButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCheckButton* gtkCheckButton)
	{
		super(cast(GtkToggleButton*)gtkCheckButton);
		this.gtkCheckButton = gtkCheckButton;
	}
	
	/**
	 * Creates a new GtkCheckButton with a GtkLabel to the right of it.
	 * If mnemonic is true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the check button.
	 * label:
	 *  The text of the button, with an underscore in front of the
	 *  mnemonic character
	 * label:
	 * the text for the check button.
	 * Returns:
	 * a GtkWidget.
	 */
	public this (char[] label, bool mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_check_button_new_with_mnemonic  (const gchar *label);
			this(cast(GtkCheckButton*)gtk_check_button_new_with_mnemonic(std.string.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_check_button_new_with_label (const gchar *label);
			this(cast(GtkCheckButton*)gtk_check_button_new_with_label(std.string.toStringz(label)) );
		}
	}
	
	public this(char[] label, void delegate(CheckButton) onClicked, bool mnemonic=true)
	{
		this(label, mnemonic);
		addOnClicked(cast(void delegate(Button))onClicked);
	}
	
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkCheckButton.
	 * Returns:
	 * a GtkWidget.
	 */
	public this ()
	{
		// GtkWidget* gtk_check_button_new (void);
		this(cast(GtkCheckButton*)gtk_check_button_new() );
	}
	
	
	
}
