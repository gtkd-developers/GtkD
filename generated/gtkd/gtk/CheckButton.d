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


module gtk.CheckButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Button;
private import gtk.ToggleButton;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkCheckButton places a discrete #GtkToggleButton next to a widget,
 * (usually a #GtkLabel). See the section on #GtkToggleButton widgets for
 * more information about toggle/check buttons.
 * 
 * The important signal ( #GtkToggleButton::toggled ) is also inherited from
 * #GtkToggleButton.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * checkbutton
 * ├── check
 * ╰── <child>
 * ]|
 * 
 * A GtkCheckButton with indicator (see gtk_toggle_button_set_mode()) has a
 * main CSS node with name checkbutton and a subnode with name check.
 * 
 * |[<!-- language="plain" -->
 * button.check
 * ├── check
 * ╰── <child>
 * ]|
 * 
 * A GtkCheckButton without indicator changes the name of its main node
 * to button and adds a .check style class to it. The subnode is invisible
 * in this case.
 */
public class CheckButton : ToggleButton
{
	/** the main Gtk struct */
	protected GtkCheckButton* gtkCheckButton;

	/** Get the main Gtk struct */
	public GtkCheckButton* getCheckButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCheckButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCheckButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCheckButton* gtkCheckButton, bool ownedRef = false)
	{
		this.gtkCheckButton = gtkCheckButton;
		super(cast(GtkToggleButton*)gtkCheckButton, ownedRef);
	}

	/**
	 * Creates a new GtkCheckButton with a GtkLabel to the right of it.
	 * If mnemonic is true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the check button.
	 * Params:
	 *  label = The text of the button, with an underscore in front of the
	 *  mnemonic character
	 *  mnemonic = true if the button has an mnemnonic
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkCheckButton* p;

		if ( mnemonic )
		{
			// GtkWidget* gtk_check_button_new_with_mnemonic  (const gchar *label);
			p = cast(GtkCheckButton*)gtk_check_button_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_check_button_new_with_label (const gchar *label);
			p = cast(GtkCheckButton*)gtk_check_button_new_with_label(Str.toStringz(label));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_check_button_new_");
		}

		this(p);
	}

	/** */
	public this(string label, void delegate(CheckButton) onClicked, bool mnemonic=true)
	{
		this(label, mnemonic);
		addOnClicked(cast(void delegate(Button))onClicked);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_check_button_get_type();
	}

	/**
	 * Creates a new #GtkCheckButton.
	 *
	 * Returns: a #GtkWidget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_check_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCheckButton*) p);
	}
}
