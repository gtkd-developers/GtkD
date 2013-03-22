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
 * inFile  = GtkToolItemGroup.html
 * outPack = gtk
 * outFile = ToolItemGroup
 * strct   = GtkToolItemGroup
 * realStrct=
 * ctorStrct=GtkWidget
 * clss    = ToolItemGroup
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ToolShellIF
 * prefixes:
 * 	- gtk_tool_item_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * 	- gtk.Widget
 * 	- gtk.ToolShellIF
 * 	- gtk.ToolShellT
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ToolItemGroup;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.ToolItem;
private import gtk.Widget;
private import gtk.ToolShellIF;
private import gtk.ToolShellT;



private import gtk.Container;

/**
 * A GtkToolItemGroup is used together with GtkToolPalette to add
 * GtkToolItems to a palette like container with different
 * categories and drag and drop support.
 */
public class ToolItemGroup : Container, ToolShellIF
{
	
	/** the main Gtk struct */
	protected GtkToolItemGroup* gtkToolItemGroup;
	
	
	public GtkToolItemGroup* getToolItemGroupStruct()
	{
		return gtkToolItemGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolItemGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolItemGroup* gtkToolItemGroup)
	{
		super(cast(GtkContainer*)gtkToolItemGroup);
		this.gtkToolItemGroup = gtkToolItemGroup;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToolItemGroup = cast(GtkToolItemGroup*)obj;
	}
	
	// add the ToolShell capabilities
	mixin ToolShellT!(GtkToolItemGroup);
	
	/**
	 * Retrieves the current orientation for the tool shell. Tool items must not
	 * call this function directly, but rely on gtk_tool_item_get_orientation()
	 * instead.
	 * Since 2.14
	 * Returns: the current orientation of shell
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_tool_shell_get_orientation (GtkToolShell *shell);
		return gtk_tool_shell_get_orientation(getToolShellTStruct());
	}
	
	/**
	 */
	
	/**
	 * Gets whether group is collapsed or expanded.
	 * Since 2.20
	 * Returns: TRUE if group is collapsed, FALSE if it is expanded
	 */
	public int getCollapsed()
	{
		// gboolean gtk_tool_item_group_get_collapsed (GtkToolItemGroup *group);
		return gtk_tool_item_group_get_collapsed(gtkToolItemGroup);
	}
	
	/**
	 * Gets the tool item at position (x, y).
	 * Since 2.20
	 * Params:
	 * x = the x position
	 * y = the y position
	 * Returns: the GtkToolItem at position (x, y). [transfer none]
	 */
	public ToolItem getDropItem(int x, int y)
	{
		// GtkToolItem * gtk_tool_item_group_get_drop_item (GtkToolItemGroup *group,  gint x,  gint y);
		auto p = gtk_tool_item_group_get_drop_item(gtkToolItemGroup, x, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}
	
	/**
	 * Gets the ellipsization mode of group.
	 * Since 2.20
	 * Returns: the PangoEllipsizeMode of group
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		// PangoEllipsizeMode gtk_tool_item_group_get_ellipsize (GtkToolItemGroup *group);
		return gtk_tool_item_group_get_ellipsize(gtkToolItemGroup);
	}
	
	/**
	 * Gets the position of item in group as index.
	 * Since 2.20
	 * Params:
	 * item = a GtkToolItem
	 * Returns: the index of item in group or -1 if item is no child of group
	 */
	public int getItemPosition(ToolItem item)
	{
		// gint gtk_tool_item_group_get_item_position  (GtkToolItemGroup *group,  GtkToolItem *item);
		return gtk_tool_item_group_get_item_position(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct());
	}
	
	/**
	 * Gets the number of tool items in group.
	 * Since 2.20
	 * Returns: the number of tool items in group
	 */
	public uint getNItems()
	{
		// guint gtk_tool_item_group_get_n_items (GtkToolItemGroup *group);
		return gtk_tool_item_group_get_n_items(gtkToolItemGroup);
	}
	
	/**
	 * Gets the label of group.
	 * Since 2.20
	 * Returns: the label of group. The label is an internal string of group and must not be modified. Note that NULL is returned if a custom label has been set with gtk_tool_item_group_set_label_widget()
	 */
	public string getLabel()
	{
		// const gchar * gtk_tool_item_group_get_label (GtkToolItemGroup *group);
		return Str.toString(gtk_tool_item_group_get_label(gtkToolItemGroup));
	}
	
	/**
	 * Gets the label widget of group.
	 * See gtk_tool_item_group_set_label_widget().
	 * Since 2.20
	 * Returns: the label widget of group. [transfer none]
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget * gtk_tool_item_group_get_label_widget  (GtkToolItemGroup *group);
		auto p = gtk_tool_item_group_get_label_widget(gtkToolItemGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the tool item at index in group.
	 * Since 2.20
	 * Params:
	 * index = the index
	 * Returns: the GtkToolItem at index. [transfer none]
	 */
	public ToolItem getNthItem(uint index)
	{
		// GtkToolItem * gtk_tool_item_group_get_nth_item (GtkToolItemGroup *group,  guint index);
		auto p = gtk_tool_item_group_get_nth_item(gtkToolItemGroup, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}
	
	/**
	 * Gets the relief mode of the header button of group.
	 * Since 2.20
	 * Returns: the GtkReliefStyle
	 */
	public GtkReliefStyle getHeaderRelief()
	{
		// GtkReliefStyle gtk_tool_item_group_get_header_relief  (GtkToolItemGroup *group);
		return gtk_tool_item_group_get_header_relief(gtkToolItemGroup);
	}
	
	/**
	 * Inserts item at position in the list of children of group.
	 * Since 2.20
	 * Params:
	 * item = the GtkToolItem to insert into group
	 * position = the position of item in group, starting with 0.
	 * The position -1 means end of list.
	 */
	public void insert(ToolItem item, int position)
	{
		// void gtk_tool_item_group_insert (GtkToolItemGroup *group,  GtkToolItem *item,  gint position);
		gtk_tool_item_group_insert(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct(), position);
	}
	
	/**
	 * Creates a new tool item group with label label.
	 * Since 2.20
	 * Params:
	 * label = the label of the new group
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label)
	{
		// GtkWidget * gtk_tool_item_group_new (const gchar *label);
		auto p = gtk_tool_item_group_new(Str.toStringz(label));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_item_group_new(Str.toStringz(label))");
		}
		this(cast(GtkToolItemGroup*) p);
	}
	
	/**
	 * Sets whether the group should be collapsed or expanded.
	 * Since 2.20
	 * Params:
	 * collapsed = whether the group should be collapsed or expanded
	 */
	public void setCollapsed(int collapsed)
	{
		// void gtk_tool_item_group_set_collapsed (GtkToolItemGroup *group,  gboolean collapsed);
		gtk_tool_item_group_set_collapsed(gtkToolItemGroup, collapsed);
	}
	
	/**
	 * Sets the ellipsization mode which should be used by labels in group.
	 * Since 2.20
	 * Params:
	 * ellipsize = the PangoEllipsizeMode labels in group should use
	 */
	public void setEllipsize(PangoEllipsizeMode ellipsize)
	{
		// void gtk_tool_item_group_set_ellipsize (GtkToolItemGroup *group,  PangoEllipsizeMode ellipsize);
		gtk_tool_item_group_set_ellipsize(gtkToolItemGroup, ellipsize);
	}
	
	/**
	 * Sets the position of item in the list of children of group.
	 * Since 2.20
	 * Params:
	 * item = the GtkToolItem to move to a new position, should
	 * be a child of group.
	 * position = the new position of item in group, starting with 0.
	 * The position -1 means end of list.
	 */
	public void setItemPosition(ToolItem item, int position)
	{
		// void gtk_tool_item_group_set_item_position  (GtkToolItemGroup *group,  GtkToolItem *item,  gint position);
		gtk_tool_item_group_set_item_position(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct(), position);
	}
	
	/**
	 * Sets the label of the tool item group. The label is displayed in the header
	 * of the group.
	 * Since 2.20
	 * Params:
	 * label = the new human-readable label of of the group
	 */
	public void setLabel(string label)
	{
		// void gtk_tool_item_group_set_label (GtkToolItemGroup *group,  const gchar *label);
		gtk_tool_item_group_set_label(gtkToolItemGroup, Str.toStringz(label));
	}
	
	/**
	 * Sets the label of the tool item group.
	 * The label widget is displayed in the header of the group, in place
	 * of the usual label.
	 * Since 2.20
	 * Params:
	 * labelWidget = the widget to be displayed in place of the usual label
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_tool_item_group_set_label_widget  (GtkToolItemGroup *group,  GtkWidget *label_widget);
		gtk_tool_item_group_set_label_widget(gtkToolItemGroup, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Set the button relief of the group header.
	 * See gtk_button_set_relief() for details.
	 * Since 2.20
	 * Params:
	 * style = the GtkReliefStyle
	 */
	public void setHeaderRelief(GtkReliefStyle style)
	{
		// void gtk_tool_item_group_set_header_relief  (GtkToolItemGroup *group,  GtkReliefStyle style);
		gtk_tool_item_group_set_header_relief(gtkToolItemGroup, style);
	}
}
