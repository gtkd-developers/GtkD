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
 * inFile  = GtkMisc.html
 * outPack = gtk
 * outFile = Misc
 * strct   = GtkMisc
 * realStrct=
 * ctorStrct=
 * clss    = Misc
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_misc_
 * 	- gtk_
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

module gtk.Misc;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;





private import gtk.Widget;

/**
 * Description
 * The GtkMisc widget is an abstract widget which is not useful itself, but
 * is used to derive subclasses which have alignment and padding attributes.
 * The horizontal and vertical padding attributes allows extra space to be
 * added around the widget.
 * The horizontal and vertical alignment attributes enable the widget to be
 * positioned within its allocated area. Note that if the widget is added to
 * a container in such a way that it expands automatically to fill its
 * allocated area, the alignment settings will not alter the widgets position.
 */
public class Misc : Widget
{
	
	/** the main Gtk struct */
	protected GtkMisc* gtkMisc;
	
	
	public GtkMisc* getMiscStruct()
	{
		return gtkMisc;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMisc;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMisc* gtkMisc)
	{
		if(gtkMisc is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkMisc);
		if( ptr !is null )
		{
			this = cast(Misc)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkMisc);
		this.gtkMisc = gtkMisc;
	}
	
	/**
	 */
	
	/**
	 * Sets the alignment of the widget.
	 * Params:
	 * xalign = the horizontal alignment, from 0 (left) to 1 (right).
	 * yalign = the vertical alignment, from 0 (top) to 1 (bottom).
	 */
	public void setAlignment(float xalign, float yalign)
	{
		// void gtk_misc_set_alignment (GtkMisc *misc,  gfloat xalign,  gfloat yalign);
		gtk_misc_set_alignment(gtkMisc, xalign, yalign);
	}
	
	/**
	 * Sets the amount of space to add around the widget.
	 * Params:
	 * xpad = the amount of space to add on the left and right of the widget,
	 * in pixels.
	 * ypad = the amount of space to add on the top and bottom of the widget,
	 * in pixels.
	 */
	public void setPadding(int xpad, int ypad)
	{
		// void gtk_misc_set_padding (GtkMisc *misc,  gint xpad,  gint ypad);
		gtk_misc_set_padding(gtkMisc, xpad, ypad);
	}
	
	/**
	 * Gets the X and Y alignment of the widget within its allocation.
	 * See gtk_misc_set_alignment().
	 * Params:
	 * xalign =  location to store X alignment of misc, or NULL
	 * yalign =  location to store Y alignment of misc, or NULL
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		// void gtk_misc_get_alignment (GtkMisc *misc,  gfloat *xalign,  gfloat *yalign);
		gtk_misc_get_alignment(gtkMisc, &xalign, &yalign);
	}
	
	/**
	 * Gets the padding in the X and Y directions of the widget.
	 * See gtk_misc_set_padding().
	 * Params:
	 * xpad =  location to store padding in the X direction, or NULL
	 * ypad =  location to store padding in the Y direction, or NULL
	 */
	public void getPadding(out int xpad, out int ypad)
	{
		// void gtk_misc_get_padding (GtkMisc *misc,  gint *xpad,  gint *ypad);
		gtk_misc_get_padding(gtkMisc, &xpad, &ypad);
	}
}
