/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Box;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Container;
private import dui.ListG;

private:
extern(C)
{
	GType gtk_box_get_type();
	void gtk_box_pack_start(GtkBox * box, GtkWidget * child, int expand, int fill, int padding);
	void gtk_box_pack_end(GtkBox * box, GtkWidget * child, int expand, int fill, int padding);
	void gtk_box_pack_start_defaults(GtkBox * box, GtkWidget * widget);
	void gtk_box_pack_end_defaults(GtkBox * box, GtkWidget * widget);
	void gtk_box_set_homogeneous(GtkBox * box, gboolean homogeneous);
	gboolean gtk_box_get_homogeneous(GtkBox * box);
	void gtk_box_set_spacing(GtkBox * box, int spacing);
	gint gtk_box_get_spacing(GtkBox * box);
	void gtk_box_reorder_child(GtkBox * box, GtkWidget * child, gint position);
	void gtk_box_query_child_packing(
				GtkBox * box,
				GtkWidget * child,
				gboolean * expand,
				gboolean * fill,
				guint * padding,
				GtkPackType * pack_type);
	void gtk_box_set_child_packing(
				GtkBox * box,
				GtkWidget * child,
				gboolean expand,
				gboolean fill,
				guint padding,
				GtkPackType pack_type);
}

/**
 * A container that lays it's children in a row 
 */
public:
class Box : Container
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A container that lays it's children in a row ";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	char [] toString()
	{
		return "Box";
	}

	void dump()
	{
		GtkBox* gtkBox = cast(GtkBox*)gtkW();
		super.dump();
		printf("\n\t### Box ###\n");
		printf("\tcontainer %X\n",gtkBox.container);
		printf("\t*children %X\n",gtkBox.children);
		printf("\tspacing %d\n",gtkBox.spacing);
		printf("\thomogeneous %d\n",gtkBox.homogeneous);
	}

	/**
	 * gets the type of the class Box
	 * @return the type of the class Box
	 */
	static GType getType()
	{
		return gtk_box_get_type();
	}

	/**
	 * Pack Start
	 * @param child the widget to add 
	 * @param expand
	 * @param fill
	 * @param padding 
	 */
	void packStart(Widget child, bit expand, bit fill, int padding)
	{
		gtk_box_pack_start(cast(GtkBox*)gtkW(), child.gtkW(), expand, fill,padding);
	}
	
	/**
	 * Pack End (what's the diference to packStart?)
	 * @param child the widget to add 
	 * @param expand
	 * @param fill
	 * @param padding 
	 */
	void packEnd(Widget child, bit expand, bit fill, int padding)
	{
		gtk_box_pack_end(cast(GtkBox*)gtkW(), child.gtkW(), expand, fill, padding);
	}
	
	/**
	 * Sets the pack start defaults
	 * @param def the default
	 */
	void packStartDefaults(Widget  def)
	{
		gtk_box_pack_start_defaults(cast(GtkBox*)gtkW(), def.gtkW());
	}
	
	/**
	 * Sets the pack end default ???
	 * @param def the default
	 */
	void packEndDefaults(Widget  def)
	{
		gtk_box_pack_end_defaults(cast(GtkBox*)gtkW(), def.gtkW());
	}
	
	/**
	 * Sets if the childrens size should be homogeneous
	 * @param homogeneous 
	 */
	void setHomogeneous(bit homogeneous)
	{
		gtk_box_set_homogeneous(cast(GtkBox*)gtkW(), homogeneous);
	}
	
	/**
	 * Gets if the childrens size is homogeneous
	 * @return true if the size is homogeneous
	 */
	bit getHomogeneous()
	{
		return gtk_box_get_homogeneous(cast(GtkBox*)gtkW())==0?false:true;
	}
	
	/**
	 * sets the space between the child widgets
	 * @param spacing the number of pixels between each child widget
	 */
	void setSpacing(int spacing)
	{
		gtk_box_set_spacing(cast(GtkBox*)gtkW(), spacing);
	}
	
	/**
	 * Gets the spacing between the widgets
	 * @return the number of pixels between the widgets 
	 */
	gint getSpacing()
	{
		return gtk_box_get_spacing(cast(GtkBox*)gtkW());
	}
	
	/**
	 * Reposition one child relative to the others
	 * @param child the widget to repostion
	 * @param position the new widget position
	 */
	void reorderChild(Widget child, gint position)
	{
		gtk_box_reorder_child(cast(GtkBox*)gtkW(),child.gtkW(), position);
	}
	
	/**
	 * Queries the packing settings for a child
	 * @param child
	 * @param expand
	 * @param fill
	 * @param padding
	 * @param pack_type
	 */
	void queryChildPacking(Widget child,
		gboolean * expand,
		gboolean * fill,
		guint * padding,
		PackType * pack_type)
	{
		gtk_box_query_child_packing(cast(GtkBox*)gtkW(),child.gtkW(),expand,fill,padding,pack_type);
	}
	
	/**
	 * Sets the pacjing values for a child
	 * @param child
	 * @param expand
	 * @param fill
	 * @param padding
	 * @param pack_type
	 */
	void setChildPacking(Widget child,
		gboolean expand,
		gboolean fill,
		guint padding,
		PackType pack_type)
	{
		gtk_box_set_child_packing(cast(GtkBox*)gtkW(),child.gtkW(),expand,fill,padding,pack_type);
	}

	
}
