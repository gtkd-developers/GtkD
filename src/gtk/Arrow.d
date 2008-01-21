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
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_arrow_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Arrow;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Misc;

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
public class Arrow : Misc, BuildableIF
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
		if(gtkArrow is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkArrow passed to constructor.");
			else return;
		}
		super(cast(GtkMisc*)gtkArrow);
		this.gtkArrow = gtkArrow;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkArrow);
	
	/**
	 */
	
	/**
	 * Creates a new arrow widget.
	 * Params:
	 * arrowType = a valid GtkArrowType.
	 * shadowType = a valid GtkShadowType.
	 */
	public this (GtkArrowType arrowType, GtkShadowType shadowType)
	{
		// GtkWidget* gtk_arrow_new (GtkArrowType arrow_type,  GtkShadowType shadow_type);
		auto p = gtk_arrow_new(arrowType, shadowType);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkArrow*) p);
	}
	
	/**
	 * Sets the direction and style of the GtkArrow, arrow.
	 * Params:
	 * arrow = a widget of type GtkArrow.
	 * arrowType = a valid GtkArrowType.
	 * shadowType = a valid GtkShadowType.
	 */
	public void set(GtkArrowType arrowType, GtkShadowType shadowType)
	{
		// void gtk_arrow_set (GtkArrow *arrow,  GtkArrowType arrow_type,  GtkShadowType shadow_type);
		gtk_arrow_set(gtkArrow, arrowType, shadowType);
	}
}
