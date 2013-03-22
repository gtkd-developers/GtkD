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
 * inFile  = GtkVButtonBox.html
 * outPack = gtk
 * outFile = VButtonBox
 * strct   = GtkVButtonBox
 * realStrct=
 * ctorStrct=
 * clss    = VButtonBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vbutton_box_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.VButtonBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.ButtonBox;

/**
 * A button box should be used to provide a consistent layout of buttons
 * throughout your application. The layout/spacing can be altered by the
 * programmer, or if desired, by the user to alter the 'feel' of a
 * program to a small degree.
 *
 * A GtkVButtonBox is created with gtk_vbutton_box_new(). Buttons are
 * packed into a button box the same way widgets are added to any other
 * container, using gtk_container_add(). You can also use
 * gtk_box_pack_start() or gtk_box_pack_end(), but for button boxes both
 * these functions work just like gtk_container_add(), ie., they pack the
 * button in a way that depends on the current layout style and on
 * whether the button has had gtk_button_box_set_child_secondary() called
 * on it.
 *
 * The spacing between buttons can be set with gtk_box_set_spacing(). The
 * arrangement and layout of the buttons can be changed with
 * gtk_button_box_set_layout().
 *
 * GtkVButtonBox has been deprecated, use GtkButtonBox instead.
 */
public class VButtonBox : ButtonBox
{
	
	/** the main Gtk struct */
	protected GtkVButtonBox* gtkVButtonBox;
	
	
	public GtkVButtonBox* getVButtonBoxStruct()
	{
		return gtkVButtonBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVButtonBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVButtonBox* gtkVButtonBox)
	{
		super(cast(GtkButtonBox*)gtkVButtonBox);
		this.gtkVButtonBox = gtkVButtonBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkVButtonBox = cast(GtkVButtonBox*)obj;
	}
	
	/**
	 * Creates a new vertical button box and sets standart values for it's comon parameters
	 * Returns: a new vertical button box
	 */
	static VButtonBox createActionBox()
	{
		VButtonBox bBox = new VButtonBox();
		bBox.setLayout(ButtonBoxStyle.START);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_vbutton_box_new has been deprecated since version 3.2 and should not be used in newly-written code. Use gtk_button_box_new() with GTK_ORIENTATION_VERTICAL instead
	 * Creates a new vertical button box.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_vbutton_box_new (void);
		auto p = gtk_vbutton_box_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vbutton_box_new()");
		}
		this(cast(GtkVButtonBox*) p);
	}
}
