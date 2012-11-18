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
 * inFile  = GtkSizeGroup.html
 * outPack = gtk
 * outFile = SizeGroup
 * strct   = GtkSizeGroup
 * realStrct=
 * ctorStrct=
 * clss    = SizeGroup
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_size_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListSG
 * 	- gtk.Widget
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.SizeGroup;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListSG;
private import gtk.Widget;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gobject.ObjectG;

/**
 * Description
 * GtkSizeGroup provides a mechanism for grouping a number of widgets
 * together so they all request the same amount of space. This is
 * typically useful when you want a column of widgets to have the same
 * size, but you can't use a GtkGrid widget.
 * In detail, the size requested for each widget in a GtkSizeGroup is
 * the maximum of the sizes that would have been requested for each
 * widget in the size group if they were not in the size group. The mode
 * of the size group (see gtk_size_group_set_mode()) determines whether
 * this applies to the horizontal size, the vertical size, or both sizes.
 * Note that size groups only affect the amount of space requested, not
 * the size that the widgets finally receive. If you want the widgets in
 * a GtkSizeGroup to actually be the same size, you need to pack them in
 * such a way that they get the size they request and not more. For
 * example, if you are packing your widgets into a table, you would not
 * include the GTK_FILL flag.
 * GtkSizeGroup objects are referenced by each widget in the size group,
 * so once you have added all widgets to a GtkSizeGroup, you can drop
 * the initial reference to the size group with g_object_unref(). If the
 * widgets in the size group are subsequently destroyed, then they will
 * be removed from the size group and drop their references on the size
 * group; when all widgets have been removed, the size group will be
 * freed.
 * Widgets can be part of multiple size groups; GTK+ will compute the
 * horizontal size of a widget from the horizontal requisition of all
 * widgets that can be reached from the widget by a chain of size groups
 * of type GTK_SIZE_GROUP_HORIZONTAL or GTK_SIZE_GROUP_BOTH, and the
 * vertical size from the vertical requisition of all widgets that can be
 * reached from the widget by a chain of size groups of type
 * GTK_SIZE_GROUP_VERTICAL or GTK_SIZE_GROUP_BOTH.
 * Note that only non-contextual sizes of every widget are ever consulted
 * by size groups (since size groups have no knowledge of what size a widget
 * will be allocated in one dimension, it cannot derive how much height
 * a widget will receive for a given width). When grouping widgets that
 * trade height for width in mode GTK_SIZE_GROUP_VERTICAL or GTK_SIZE_GROUP_BOTH:
 * the height for the minimum width will be the requested height for all
 * widgets in the group. The same is of course true when horizontally grouping
 * width for height widgets.
 * Widgets that trade height-for-width should set a reasonably large minimum width
 * by way of "width-chars" for instance. Widgets with static sizes as well
 * as widgets that grow (such as ellipsizing text) need no such considerations.
 * GtkSizeGroup as GtkBuildable
 * Size groups can be specified in a UI definition by placing an
 * <object> element with class="GtkSizeGroup"
 * somewhere in the UI definition. The widgets that belong to the
 * size group are specified by a <widgets> element that may
 * contain multiple <widget> elements, one for each member
 * of the size group. The name attribute gives the id of the widget.
 * $(DDOC_COMMENT example)
 */
public class SizeGroup : ObjectG, BuildableIF
{
	
	/** the main Gtk struct */
	protected GtkSizeGroup* gtkSizeGroup;
	
	
	public GtkSizeGroup* getSizeGroupStruct()
	{
		return gtkSizeGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSizeGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSizeGroup* gtkSizeGroup)
	{
		super(cast(GObject*)gtkSizeGroup);
		this.gtkSizeGroup = gtkSizeGroup;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSizeGroup = cast(GtkSizeGroup*)obj;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkSizeGroup);
	
	/**
	 */
	
	/**
	 * Create a new GtkSizeGroup.
	 * Params:
	 * mode = the mode for the new size group.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkSizeGroupMode mode)
	{
		// GtkSizeGroup * gtk_size_group_new (GtkSizeGroupMode mode);
		auto p = gtk_size_group_new(mode);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_size_group_new(mode)");
		}
		this(cast(GtkSizeGroup*) p);
	}
	
	/**
	 * Sets the GtkSizeGroupMode of the size group. The mode of the size
	 * group determines whether the widgets in the size group should
	 * all have the same horizontal requisition (GTK_SIZE_GROUP_HORIZONTAL)
	 * all have the same vertical requisition (GTK_SIZE_GROUP_VERTICAL),
	 * or should all have the same requisition in both directions
	 * (GTK_SIZE_GROUP_BOTH).
	 * Params:
	 * mode = the mode to set for the size group.
	 */
	public void setMode(GtkSizeGroupMode mode)
	{
		// void gtk_size_group_set_mode (GtkSizeGroup *size_group,  GtkSizeGroupMode mode);
		gtk_size_group_set_mode(gtkSizeGroup, mode);
	}
	
	/**
	 * Gets the current mode of the size group. See gtk_size_group_set_mode().
	 * Returns: the current mode of the size group.
	 */
	public GtkSizeGroupMode getMode()
	{
		// GtkSizeGroupMode gtk_size_group_get_mode (GtkSizeGroup *size_group);
		return gtk_size_group_get_mode(gtkSizeGroup);
	}
	
	/**
	 * Sets whether unmapped widgets should be ignored when
	 * calculating the size.
	 * Since 2.8
	 * Params:
	 * ignoreHidden = whether unmapped widgets should be ignored
	 * when calculating the size
	 */
	public void setIgnoreHidden(int ignoreHidden)
	{
		// void gtk_size_group_set_ignore_hidden (GtkSizeGroup *size_group,  gboolean ignore_hidden);
		gtk_size_group_set_ignore_hidden(gtkSizeGroup, ignoreHidden);
	}
	
	/**
	 * Returns if invisible widgets are ignored when calculating the size.
	 * Since 2.8
	 * Returns: TRUE if invisible widgets are ignored.
	 */
	public int getIgnoreHidden()
	{
		// gboolean gtk_size_group_get_ignore_hidden (GtkSizeGroup *size_group);
		return gtk_size_group_get_ignore_hidden(gtkSizeGroup);
	}
	
	/**
	 * Adds a widget to a GtkSizeGroup. In the future, the requisition
	 * of the widget will be determined as the maximum of its requisition
	 * and the requisition of the other widgets in the size group.
	 * Whether this applies horizontally, vertically, or in both directions
	 * depends on the mode of the size group. See gtk_size_group_set_mode().
	 * When the widget is destroyed or no longer referenced elsewhere, it will
	 * be removed from the size group.
	 * Params:
	 * widget = the GtkWidget to add
	 */
	public void addWidget(Widget widget)
	{
		// void gtk_size_group_add_widget (GtkSizeGroup *size_group,  GtkWidget *widget);
		gtk_size_group_add_widget(gtkSizeGroup, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Removes a widget from a GtkSizeGroup.
	 * Params:
	 * widget = the GtkWidget to remove
	 */
	public void removeWidget(Widget widget)
	{
		// void gtk_size_group_remove_widget (GtkSizeGroup *size_group,  GtkWidget *widget);
		gtk_size_group_remove_widget(gtkSizeGroup, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns the list of widgets associated with size_group.
	 * Since 2.10
	 * Returns: a GSList of widgets. The list is owned by GTK+ and should not be modified. [element-type GtkWidget][transfer none]
	 */
	public ListSG getWidgets()
	{
		// GSList * gtk_size_group_get_widgets (GtkSizeGroup *size_group);
		auto p = gtk_size_group_get_widgets(gtkSizeGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
}
