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


module gtk.ToolItemGroup;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Container;
private import gtk.ToolItem;
private import gtk.ToolShellIF;
private import gtk.ToolShellT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkToolItemGroup is used together with #GtkToolPalette to add
 * #GtkToolItems to a palette like container with different
 * categories and drag and drop support.
 * 
 * # CSS nodes
 * 
 * GtkToolItemGroup has a single CSS node named toolitemgroup.
 */
public class ToolItemGroup : Container, ToolShellIF
{
	/** the main Gtk struct */
	protected GtkToolItemGroup* gtkToolItemGroup;

	/** Get the main Gtk struct */
	public GtkToolItemGroup* getToolItemGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToolItemGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolItemGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToolItemGroup* gtkToolItemGroup, bool ownedRef = false)
	{
		this.gtkToolItemGroup = gtkToolItemGroup;
		super(cast(GtkContainer*)gtkToolItemGroup, ownedRef);
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
		return gtk_tool_shell_get_orientation(getToolShellStruct());
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tool_item_group_get_type();
	}

	/**
	 * Creates a new tool item group with label @label.
	 *
	 * Params:
	 *     label = the label of the new group
	 *
	 * Returns: a new #GtkToolItemGroup.
	 *
	 * Since: 2.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto p = gtk_tool_item_group_new(Str.toStringz(label));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolItemGroup*) p);
	}

	/**
	 * Gets whether @group is collapsed or expanded.
	 *
	 * Returns: %TRUE if @group is collapsed, %FALSE if it is expanded
	 *
	 * Since: 2.20
	 */
	public bool getCollapsed()
	{
		return gtk_tool_item_group_get_collapsed(gtkToolItemGroup) != 0;
	}

	/**
	 * Gets the tool item at position (x, y).
	 *
	 * Params:
	 *     x = the x position
	 *     y = the y position
	 *
	 * Returns: the #GtkToolItem at position (x, y)
	 *
	 * Since: 2.20
	 */
	public ToolItem getDropItem(int x, int y)
	{
		auto p = gtk_tool_item_group_get_drop_item(gtkToolItemGroup, x, y);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}

	/**
	 * Gets the ellipsization mode of @group.
	 *
	 * Returns: the #PangoEllipsizeMode of @group
	 *
	 * Since: 2.20
	 */
	public PangoEllipsizeMode getEllipsize()
	{
		return gtk_tool_item_group_get_ellipsize(gtkToolItemGroup);
	}

	/**
	 * Gets the relief mode of the header button of @group.
	 *
	 * Returns: the #GtkReliefStyle
	 *
	 * Since: 2.20
	 */
	public GtkReliefStyle getHeaderRelief()
	{
		return gtk_tool_item_group_get_header_relief(gtkToolItemGroup);
	}

	/**
	 * Gets the position of @item in @group as index.
	 *
	 * Params:
	 *     item = a #GtkToolItem
	 *
	 * Returns: the index of @item in @group or -1 if @item is no child of @group
	 *
	 * Since: 2.20
	 */
	public int getItemPosition(ToolItem item)
	{
		return gtk_tool_item_group_get_item_position(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct());
	}

	/**
	 * Gets the label of @group.
	 *
	 * Returns: the label of @group. The label is an internal string of @group
	 *     and must not be modified. Note that %NULL is returned if a custom
	 *     label has been set with gtk_tool_item_group_set_label_widget()
	 *
	 * Since: 2.20
	 */
	public string getLabel()
	{
		return Str.toString(gtk_tool_item_group_get_label(gtkToolItemGroup));
	}

	/**
	 * Gets the label widget of @group.
	 * See gtk_tool_item_group_set_label_widget().
	 *
	 * Returns: the label widget of @group
	 *
	 * Since: 2.20
	 */
	public Widget getLabelWidget()
	{
		auto p = gtk_tool_item_group_get_label_widget(gtkToolItemGroup);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the number of tool items in @group.
	 *
	 * Returns: the number of tool items in @group
	 *
	 * Since: 2.20
	 */
	public uint getNItems()
	{
		return gtk_tool_item_group_get_n_items(gtkToolItemGroup);
	}

	/**
	 * Gets the tool item at @index in group.
	 *
	 * Params:
	 *     index = the index
	 *
	 * Returns: the #GtkToolItem at index
	 *
	 * Since: 2.20
	 */
	public ToolItem getNthItem(uint index)
	{
		auto p = gtk_tool_item_group_get_nth_item(gtkToolItemGroup, index);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}

	/**
	 * Inserts @item at @position in the list of children of @group.
	 *
	 * Params:
	 *     item = the #GtkToolItem to insert into @group
	 *     position = the position of @item in @group, starting with 0.
	 *         The position -1 means end of list.
	 *
	 * Since: 2.20
	 */
	public void insert(ToolItem item, int position)
	{
		gtk_tool_item_group_insert(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct(), position);
	}

	/**
	 * Sets whether the @group should be collapsed or expanded.
	 *
	 * Params:
	 *     collapsed = whether the @group should be collapsed or expanded
	 *
	 * Since: 2.20
	 */
	public void setCollapsed(bool collapsed)
	{
		gtk_tool_item_group_set_collapsed(gtkToolItemGroup, collapsed);
	}

	/**
	 * Sets the ellipsization mode which should be used by labels in @group.
	 *
	 * Params:
	 *     ellipsize = the #PangoEllipsizeMode labels in @group should use
	 *
	 * Since: 2.20
	 */
	public void setEllipsize(PangoEllipsizeMode ellipsize)
	{
		gtk_tool_item_group_set_ellipsize(gtkToolItemGroup, ellipsize);
	}

	/**
	 * Set the button relief of the group header.
	 * See gtk_button_set_relief() for details.
	 *
	 * Params:
	 *     style = the #GtkReliefStyle
	 *
	 * Since: 2.20
	 */
	public void setHeaderRelief(GtkReliefStyle style)
	{
		gtk_tool_item_group_set_header_relief(gtkToolItemGroup, style);
	}

	/**
	 * Sets the position of @item in the list of children of @group.
	 *
	 * Params:
	 *     item = the #GtkToolItem to move to a new position, should
	 *         be a child of @group.
	 *     position = the new position of @item in @group, starting with 0.
	 *         The position -1 means end of list.
	 *
	 * Since: 2.20
	 */
	public void setItemPosition(ToolItem item, int position)
	{
		gtk_tool_item_group_set_item_position(gtkToolItemGroup, (item is null) ? null : item.getToolItemStruct(), position);
	}

	/**
	 * Sets the label of the tool item group. The label is displayed in the header
	 * of the group.
	 *
	 * Params:
	 *     label = the new human-readable label of of the group
	 *
	 * Since: 2.20
	 */
	public void setLabel(string label)
	{
		gtk_tool_item_group_set_label(gtkToolItemGroup, Str.toStringz(label));
	}

	/**
	 * Sets the label of the tool item group.
	 * The label widget is displayed in the header of the group, in place
	 * of the usual label.
	 *
	 * Params:
	 *     labelWidget = the widget to be displayed in place of the usual label
	 *
	 * Since: 2.20
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_tool_item_group_set_label_widget(gtkToolItemGroup, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
}
