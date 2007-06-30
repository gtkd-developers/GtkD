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
 * inFile  = GtkArrow.html
 * outPack = gtk
 * outFile = Arrow
 * strct   = GtkArrow
 * realStrct=
 * ctorStrct=
 * clss    = Arrow
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_arrow_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Arrow;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;






/**
 * Description
 * GtkArrow should be used to draw simple arrows that need to point in
 * one of the four cardinal directions (up, down, left, or right). The
 * style of the arrow can be one of shadow in, shadow out, etched in, or
 * etched out. Note that these directions and style types may be
 * ammended in versions of Gtk to come.
 * GtkArrow will fill any space alloted to it, but since it is inherited
 * from GtkMisc, it can be padded and/or aligned, to fill exactly the
 * space the programmer desires.
 * Arrows are created with a call to gtk_arrow_new(). The direction or
 * style of an arrow can be changed after creation by using gtk_arrow_set().
 */
private import gtk.Misc;
public class Arrow : Misc
{
	
	/** the main Gtk struct */
	protected GtkArrow* gtkArrow;
	
	
	public GtkArrow* getArrowStruct()
	{
		return gtkArrow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkArrow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkArrow* gtkArrow)
	{
		version(noAssert)
		{
			if ( gtkArrow is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkArrow is null on constructor").newline;
				}
				else
				{
					printf("struct gtkArrow is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkArrow !is null, "struct gtkArrow is null on constructor");
		}
		super(cast(GtkMisc*)gtkArrow);
		this.gtkArrow = gtkArrow;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new arrow widget.
	 * arrow_type:
	 * a valid GtkArrowType.
	 * shadow_type:
	 * a valid GtkShadowType.
	 * Returns:
	 * the new GtkArrow widget.
	 */
	public this (GtkArrowType arrowType, GtkShadowType shadowType)
	{
		// GtkWidget* gtk_arrow_new (GtkArrowType arrow_type,  GtkShadowType shadow_type);
		this(cast(GtkArrow*)gtk_arrow_new(arrowType, shadowType) );
	}
	
	/**
	 * Sets the direction and style of the GtkArrow, arrow.
	 * arrow:
	 * a widget of type GtkArrow.
	 * arrow_type:
	 * a valid GtkArrowType.
	 * shadow_type:
	 * a valid GtkShadowType.
	 * Property Details
	 * The "arrow-type" property
	 *  "arrow-type" GtkArrowType : Read / Write
	 * The direction the arrow should point.
	 * Default value: GTK_ARROW_RIGHT
	 */
	public void set(GtkArrowType arrowType, GtkShadowType shadowType)
	{
		// void gtk_arrow_set (GtkArrow *arrow,  GtkArrowType arrow_type,  GtkShadowType shadow_type);
		gtk_arrow_set(gtkArrow, arrowType, shadowType);
	}
	
}
