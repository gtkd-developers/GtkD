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
 * outFile = Box
 * strct   = GtkBox
 * realStrct=
 * clss    = Box
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Box;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;

/**
 * Description
 * GtkBox is an abstract widget which encapsulates functionallity for a
 * particular kind of container, one that organizes a variable number of
 * widgets into a rectangular area. GtkBox currently has two derived
 * classes, GtkHBox and GtkVBox.
 * The rectangular area of a GtkBox is organized into either a single row
 * or a single column of child widgets depending upon whether the box is
 * of type GtkHBox or GtkVBox, respectively. Thus, all children of a
 * GtkBox are allocated one dimension in common, which is the height of a
 * row, or the width of a column.
 * GtkBox uses a notion of packing. Packing refers to
 * adding widgets with reference to a particular position in a
 * GtkContainer. For a GtkBox, there are two reference positions: the
 * start and the end of the box. For a
 * GtkVBox, the start is defined as the top of the box and the end is
 * defined as the bottom. For a GtkHBox the start is defined as the
 * left side and the end is defined as the right side.
 * Use repeated calls to gtk_box_pack_start() to pack widgets into a
 * GtkBox from start to end. Use gtk_box_pack_end() to add widgets from
 * end to start. You may intersperse these calls and add widgets from
 * both ends of the same GtkBox.
 * Use gtk_box_pack_start_defaults() or gtk_box_pack_end_defaults()
 * to pack widgets into a GtkBox if you do not need to specify the
 * expand, fill, or
 * padding attributes of the child to be
 * added.
 * Because GtkBox is a GtkContainer, you may also use
 * gtk_container_add() to insert widgets into the box, and they will be
 * packed as if with gtk_box_pack_start_defaults(). Use
 * gtk_container_remove() to remove widgets from the GtkBox.
 * Use gtk_box_set_homogeneous() to specify whether or not all children
 * of the GtkBox are forced to get the same amount of space.
 * Use gtk_box_set_spacing() to determine how much space will be
 * minimally placed between all children in the GtkBox.
 * Use gtk_box_reorder_child() to move a GtkBox child to a different
 * place in the box.
 * Use gtk_box_set_child_packing() to reset the
 * expand, fill,
 * and padding attributes of any GtkBox child.
 * Use gtk_box_query_child_packing() to query these fields.
 */
private import gtk.Container;
public class Box : Container
{
	
	/** the main Gtk struct */
	protected GtkBox* gtkBox;
	
	
	public GtkBox* getBoxStruct()
	{
		return gtkBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkBox* gtkBox)
	{
		super(cast(GtkContainer*)gtkBox);
		this.gtkBox = gtkBox;
	}
	
	/**
	 */
	
	
	
	/**
	 * Adds child to box, packed with reference to the start of box. The
	 * child is packed after any other child packed with reference to the
	 * start of box.
	 * box:
	 * a GtkBox.
	 * child:
	 * the GtkWidget to be added to box.
	 * expand:
	 * TRUE if the new child is to be given extra space allocated to
	 * box. The extra space will be divided evenly between all children of
	 * box that use this option.
	 * fill:
	 * TRUE if space given to child by the expand option is
	 * actually allocated to child, rather than just padding it. This
	 * parameter has no effect if expand is set to FALSE. A child is
	 * always allocated the full height of a GtkHBox and the full width of a
	 * GtkVBox. This option affects the other dimension.
	 * padding:
	 * extra space in pixels to put between this child and its
	 * neighbors, over and above the global amount specified by
	 * spacing in GtkBox-struct. If child is a
	 * widget at one of the reference ends of box, then padding pixels are also put
	 * between child and the reference edge of box.
	 */
	public void packStart(Widget child, int expand, int fill, uint padding)
	{
		// void gtk_box_pack_start (GtkBox *box,  GtkWidget *child,  gboolean expand,  gboolean fill,  guint padding);
		gtk_box_pack_start(gtkBox, (child is null) ? null : child.getWidgetStruct(), expand, fill, padding);
	}
	
	/**
	 * Adds child to box, packed with reference to the end of box. The
	 * child is packed after (away from end of) any other child packed with reference to the
	 * end of box.
	 * box:
	 * a GtkBox.
	 * child:
	 * the GtkWidget to be added to box.
	 * expand:
	 * TRUE if the new child is to be given extra space allocated to
	 * box. The extra space will be divided evenly between all children of
	 * box that use this option.
	 * fill:
	 * TRUE if space given to child by the expand option is
	 * actually allocated to child, rather than just padding it. This
	 * parameter has no effect if expand is set to FALSE. A child is
	 * always allocated the full height of a GtkHBox and the full width of a
	 * GtkVBox. This option affects the other dimension.
	 * padding:
	 * extra space in pixels to put between this child and its
	 * neighbors, over and above the global amount specified by
	 * spacing in GtkBox-struct. If child is a
	 * widget at one of the reference ends of box, then padding pixels are also put
	 * between child and the reference edge of box.
	 */
	public void packEnd(Widget child, int expand, int fill, uint padding)
	{
		// void gtk_box_pack_end (GtkBox *box,  GtkWidget *child,  gboolean expand,  gboolean fill,  guint padding);
		gtk_box_pack_end(gtkBox, (child is null) ? null : child.getWidgetStruct(), expand, fill, padding);
	}
	
	/**
	 * Adds widget to box, packed with reference to the start of box. The
	 * child is packed after any other child packed with reference to the
	 * start of box.
	 * Parameters for how to pack the child widget,
	 * expand, fill,
	 * and padding in GtkBoxChild-struct, are given their default
	 * values, TRUE, TRUE, and 0, respectively.
	 * box:
	 * a GtkBox.
	 * widget:
	 * the GtkWidget to be added to box.
	 */
	public void packStartDefaults(Widget widget)
	{
		// void gtk_box_pack_start_defaults (GtkBox *box,  GtkWidget *widget);
		gtk_box_pack_start_defaults(gtkBox, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Adds widget to box, packed with reference to the end of box. The
	 * child is packed after (away from end of) any other child packed with
	 * reference to the end of box.
	 * Parameters for how to pack the child widget,
	 * expand, fill,
	 * and padding in GtkBoxChild-struct, are given their default
	 * values, TRUE, TRUE, and 0, respectively.
	 * box:
	 * a GtkBox.
	 * widget:
	 * the GtkWidget to be added to box.
	 */
	public void packEndDefaults(Widget widget)
	{
		// void gtk_box_pack_end_defaults (GtkBox *box,  GtkWidget *widget);
		gtk_box_pack_end_defaults(gtkBox, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns whether the box is homogeneous (all children are the
	 * same size). See gtk_box_set_homogeneous().
	 * box:
	 *  a GtkBox
	 * Returns:
	 *  TRUE if the box is homogeneous.
	 */
	public int getHomogeneous()
	{
		// gboolean gtk_box_get_homogeneous (GtkBox *box);
		return gtk_box_get_homogeneous(gtkBox);
	}
	
	/**
	 * Sets the homogeneous field of
	 * GtkBox-struct, controlling whether or not all children of box are
	 * given equal space in the box.
	 * box:
	 * a GtkBox.
	 * homogeneous:
	 * a boolean value, TRUE to create equal allotments,
	 * FALSE for variable allotments.
	 */
	public void setHomogeneous(int homogeneous)
	{
		// void gtk_box_set_homogeneous (GtkBox *box,  gboolean homogeneous);
		gtk_box_set_homogeneous(gtkBox, homogeneous);
	}
	
	/**
	 * Gets the value set by gtk_box_set_spacing().
	 * box:
	 *  a GtkBox
	 * Returns:
	 *  spacing between children
	 */
	public int getSpacing()
	{
		// gint gtk_box_get_spacing (GtkBox *box);
		return gtk_box_get_spacing(gtkBox);
	}
	
	/**
	 * Sets the spacing field of GtkBox-struct,
	 * which is the number of pixels to place between children of box.
	 * box:
	 * a GtkBox.
	 * spacing:
	 * the number of pixels to put between children.
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_box_set_spacing (GtkBox *box,  gint spacing);
		gtk_box_set_spacing(gtkBox, spacing);
	}
	
	/**
	 * Moves child to a new position in the list of box children. The
	 * list is the children field of
	 * GtkBox-struct, and contains both widgets packed GTK_PACK_START as
	 * well as widgets packed GTK_PACK_END, in the order that these widgets
	 * were added to box.
	 * A widget's position in the box children list determines where the
	 * widget is packed into box. A child widget at some position in the
	 * list will be packed just after all other widgets of the same packing
	 * type that appear earlier in the list.
	 * box:
	 * a GtkBox.
	 * child:
	 * the GtkWidget to move.
	 * position:
	 * the new position for child in the
	 * children list of GtkBox-struct, starting
	 * from 0. If negative, indicates the end of the list.
	 */
	public void reorderChild(Widget child, int position)
	{
		// void gtk_box_reorder_child (GtkBox *box,  GtkWidget *child,  gint position);
		gtk_box_reorder_child(gtkBox, (child is null) ? null : child.getWidgetStruct(), position);
	}
	
	/**
	 * Returns information about how child is packed into box.
	 * box:
	 * a GtkBox.
	 * child:
	 * the GtkWidget of the child to query.
	 * expand:
	 * the returned value of the expand
	 * field in GtkBoxChild-struct.
	 * fill:
	 * the returned value of the fill field
	 * in GtkBoxChild-struct.
	 * padding:
	 * the returned value of the padding
	 * field in GtkBoxChild-struct.
	 * pack_type:
	 * the returned value of the pack
	 * field in GtkBoxChild-struct.
	 */
	public void queryChildPacking(Widget child, int* expand, int* fill, uint* padding, GtkPackType* packType)
	{
		// void gtk_box_query_child_packing (GtkBox *box,  GtkWidget *child,  gboolean *expand,  gboolean *fill,  guint *padding,  GtkPackType *pack_type);
		gtk_box_query_child_packing(gtkBox, (child is null) ? null : child.getWidgetStruct(), expand, fill, padding, packType);
	}
	
	/**
	 * Sets the way child is packed into box.
	 * box:
	 * a GtkBox.
	 * child:
	 * the GtkWidget of the child to set.
	 * expand:
	 * the new value of the expand field
	 * in GtkBoxChild-struct.
	 * fill:
	 * the new value of the fill field in
	 * GtkBoxChild-struct.
	 * padding:
	 * the new value of the padding
	 * field in GtkBoxChild-struct.
	 * pack_type:
	 * the new value of the pack field
	 * in GtkBoxChild-struct.
	 * Property Details
	 * The "homogeneous" property
	 *  "homogeneous" gboolean : Read / Write
	 * Whether the children should all be the same size.
	 * Default value: FALSE
	 */
	public void setChildPacking(Widget child, int expand, int fill, uint padding, GtkPackType packType)
	{
		// void gtk_box_set_child_packing (GtkBox *box,  GtkWidget *child,  gboolean expand,  gboolean fill,  guint padding,  GtkPackType pack_type);
		gtk_box_set_child_packing(gtkBox, (child is null) ? null : child.getWidgetStruct(), expand, fill, padding, packType);
	}
	
	
	
	
	
}
