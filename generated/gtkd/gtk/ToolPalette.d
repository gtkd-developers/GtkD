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


module gtk.ToolPalette;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Container;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.SelectionData;
private import gtk.TargetEntry;
private import gtk.ToolItem;
private import gtk.ToolItemGroup;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkToolPalette allows you to add #GtkToolItems to a palette-like
 * container with different categories and drag and drop support.
 * 
 * A #GtkToolPalette is created with a call to gtk_tool_palette_new().
 * 
 * #GtkToolItems cannot be added directly to a #GtkToolPalette -
 * instead they are added to a #GtkToolItemGroup which can than be added
 * to a #GtkToolPalette. To add a #GtkToolItemGroup to a #GtkToolPalette,
 * use gtk_container_add().
 * 
 * |[<!-- language="C" -->
 * GtkWidget *palette, *group;
 * GtkToolItem *item;
 * 
 * palette = gtk_tool_palette_new ();
 * group = gtk_tool_item_group_new (_("Test Category"));
 * gtk_container_add (GTK_CONTAINER (palette), group);
 * 
 * item = gtk_tool_button_new (NULL, _("_Open"));
 * gtk_tool_button_set_icon_name (GTK_TOOL_BUTTON (item), "document-open");
 * gtk_tool_item_group_insert (GTK_TOOL_ITEM_GROUP (group), item, -1);
 * ]|
 * 
 * The easiest way to use drag and drop with #GtkToolPalette is to call
 * gtk_tool_palette_add_drag_dest() with the desired drag source @palette
 * and the desired drag target @widget. Then gtk_tool_palette_get_drag_item()
 * can be used to get the dragged item in the #GtkWidget::drag-data-received
 * signal handler of the drag target.
 * 
 * |[<!-- language="C" -->
 * static void
 * passive_canvas_drag_data_received (GtkWidget        *widget,
 * GdkDragContext   *context,
 * gint              x,
 * gint              y,
 * GtkSelectionData *selection,
 * guint             info,
 * guint             time,
 * gpointer          data)
 * {
 * GtkWidget *palette;
 * GtkWidget *item;
 * 
 * // Get the dragged item
 * palette = gtk_widget_get_ancestor (gtk_drag_get_source_widget (context),
 * GTK_TYPE_TOOL_PALETTE);
 * if (palette != NULL)
 * item = gtk_tool_palette_get_drag_item (GTK_TOOL_PALETTE (palette),
 * selection);
 * 
 * // Do something with item
 * }
 * 
 * GtkWidget *target, palette;
 * 
 * palette = gtk_tool_palette_new ();
 * target = gtk_drawing_area_new ();
 * 
 * g_signal_connect (G_OBJECT (target), "drag-data-received",
 * G_CALLBACK (passive_canvas_drag_data_received), NULL);
 * gtk_tool_palette_add_drag_dest (GTK_TOOL_PALETTE (palette), target,
 * GTK_DEST_DEFAULT_ALL,
 * GTK_TOOL_PALETTE_DRAG_ITEMS,
 * GDK_ACTION_COPY);
 * ]|
 * 
 * # CSS nodes
 * 
 * GtkToolPalette has a single CSS node named toolpalette.
 */
public class ToolPalette : Container, OrientableIF, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkToolPalette* gtkToolPalette;

	/** Get the main Gtk struct */
	public GtkToolPalette* getToolPaletteStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToolPalette;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolPalette;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToolPalette* gtkToolPalette, bool ownedRef = false)
	{
		this.gtkToolPalette = gtkToolPalette;
		super(cast(GtkContainer*)gtkToolPalette, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkToolPalette);

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkToolPalette);


	/** */
	public static GType getType()
	{
		return gtk_tool_palette_get_type();
	}

	/**
	 * Creates a new tool palette.
	 *
	 * Returns: a new #GtkToolPalette
	 *
	 * Since: 2.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_tool_palette_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolPalette*) p);
	}

	/**
	 * Get the target entry for a dragged #GtkToolItemGroup.
	 *
	 * Returns: the #GtkTargetEntry for a dragged group
	 *
	 * Since: 2.20
	 */
	public static TargetEntry getDragTargetGroup()
	{
		auto p = gtk_tool_palette_get_drag_target_group();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p);
	}

	/**
	 * Gets the target entry for a dragged #GtkToolItem.
	 *
	 * Returns: the #GtkTargetEntry for a dragged item.
	 *
	 * Since: 2.20
	 */
	public static TargetEntry getDragTargetItem()
	{
		auto p = gtk_tool_palette_get_drag_target_item();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p);
	}

	/**
	 * Sets @palette as drag source (see gtk_tool_palette_set_drag_source())
	 * and sets @widget as a drag destination for drags from @palette.
	 * See gtk_drag_dest_set().
	 *
	 * Params:
	 *     widget = a #GtkWidget which should be a drag destination for @palette
	 *     flags = the flags that specify what actions GTK+ should take for drops
	 *         on that widget
	 *     targets = the #GtkToolPaletteDragTargets which the widget
	 *         should support
	 *     actions = the #GdkDragActions which the widget should suppport
	 *
	 * Since: 2.20
	 */
	public void addDragDest(Widget widget, GtkDestDefaults flags, GtkToolPaletteDragTargets targets, GdkDragAction actions)
	{
		gtk_tool_palette_add_drag_dest(gtkToolPalette, (widget is null) ? null : widget.getWidgetStruct(), flags, targets, actions);
	}

	/**
	 * Get the dragged item from the selection.
	 * This could be a #GtkToolItem or a #GtkToolItemGroup.
	 *
	 * Params:
	 *     selection = a #GtkSelectionData
	 *
	 * Returns: the dragged item in selection
	 *
	 * Since: 2.20
	 */
	public Widget getDragItem(SelectionData selection)
	{
		auto p = gtk_tool_palette_get_drag_item(gtkToolPalette, (selection is null) ? null : selection.getSelectionDataStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the group at position (x, y).
	 *
	 * Params:
	 *     x = the x position
	 *     y = the y position
	 *
	 * Returns: the #GtkToolItemGroup at position
	 *     or %NULL if there is no such group
	 *
	 * Since: 2.20
	 */
	public ToolItemGroup getDropGroup(int x, int y)
	{
		auto p = gtk_tool_palette_get_drop_group(gtkToolPalette, x, y);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToolItemGroup)(cast(GtkToolItemGroup*) p);
	}

	/**
	 * Gets the item at position (x, y).
	 * See gtk_tool_palette_get_drop_group().
	 *
	 * Params:
	 *     x = the x position
	 *     y = the y position
	 *
	 * Returns: the #GtkToolItem at position or %NULL if there is no such item
	 *
	 * Since: 2.20
	 */
	public ToolItem getDropItem(int x, int y)
	{
		auto p = gtk_tool_palette_get_drop_item(gtkToolPalette, x, y);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}

	/**
	 * Gets whether @group is exclusive or not.
	 * See gtk_tool_palette_set_exclusive().
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup which is a child of palette
	 *
	 * Returns: %TRUE if @group is exclusive
	 *
	 * Since: 2.20
	 */
	public bool getExclusive(ToolItemGroup group)
	{
		return gtk_tool_palette_get_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct()) != 0;
	}

	/**
	 * Gets whether group should be given extra space.
	 * See gtk_tool_palette_set_expand().
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup which is a child of palette
	 *
	 * Returns: %TRUE if group should be given extra space, %FALSE otherwise
	 *
	 * Since: 2.20
	 */
	public bool getExpand(ToolItemGroup group)
	{
		return gtk_tool_palette_get_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct()) != 0;
	}

	/**
	 * Gets the position of @group in @palette as index.
	 * See gtk_tool_palette_set_group_position().
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup
	 *
	 * Returns: the index of group or -1 if @group is not a child of @palette
	 *
	 * Since: 2.20
	 */
	public int getGroupPosition(ToolItemGroup group)
	{
		return gtk_tool_palette_get_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}

	/**
	 * Gets the size of icons in the tool palette.
	 * See gtk_tool_palette_set_icon_size().
	 *
	 * Returns: the #GtkIconSize of icons in the tool palette
	 *
	 * Since: 2.20
	 */
	public GtkIconSize getIconSize()
	{
		return gtk_tool_palette_get_icon_size(gtkToolPalette);
	}

	/**
	 * Gets the style (icons, text or both) of items in the tool palette.
	 *
	 * Returns: the #GtkToolbarStyle of items in the tool palette.
	 *
	 * Since: 2.20
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		return gtk_tool_palette_get_style(gtkToolPalette);
	}

	/**
	 * Sets the tool palette as a drag source.
	 * Enables all groups and items in the tool palette as drag sources
	 * on button 1 and button 3 press with copy and move actions.
	 * See gtk_drag_source_set().
	 *
	 * Params:
	 *     targets = the #GtkToolPaletteDragTargets
	 *         which the widget should support
	 *
	 * Since: 2.20
	 */
	public void setDragSource(GtkToolPaletteDragTargets targets)
	{
		gtk_tool_palette_set_drag_source(gtkToolPalette, targets);
	}

	/**
	 * Sets whether the group should be exclusive or not.
	 * If an exclusive group is expanded all other groups are collapsed.
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup which is a child of palette
	 *     exclusive = whether the group should be exclusive or not
	 *
	 * Since: 2.20
	 */
	public void setExclusive(ToolItemGroup group, bool exclusive)
	{
		gtk_tool_palette_set_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), exclusive);
	}

	/**
	 * Sets whether the group should be given extra space.
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup which is a child of palette
	 *     expand = whether the group should be given extra space
	 *
	 * Since: 2.20
	 */
	public void setExpand(ToolItemGroup group, bool expand)
	{
		gtk_tool_palette_set_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), expand);
	}

	/**
	 * Sets the position of the group as an index of the tool palette.
	 * If position is 0 the group will become the first child, if position is
	 * -1 it will become the last child.
	 *
	 * Params:
	 *     group = a #GtkToolItemGroup which is a child of palette
	 *     position = a new index for group
	 *
	 * Since: 2.20
	 */
	public void setGroupPosition(ToolItemGroup group, int position)
	{
		gtk_tool_palette_set_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), position);
	}

	/**
	 * Sets the size of icons in the tool palette.
	 *
	 * Params:
	 *     iconSize = the #GtkIconSize that icons in the tool
	 *         palette shall have
	 *
	 * Since: 2.20
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		gtk_tool_palette_set_icon_size(gtkToolPalette, iconSize);
	}

	/**
	 * Sets the style (text, icons or both) of items in the tool palette.
	 *
	 * Params:
	 *     style = the #GtkToolbarStyle that items in the tool palette shall have
	 *
	 * Since: 2.20
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		gtk_tool_palette_set_style(gtkToolPalette, style);
	}

	/**
	 * Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
	 * so that user preferences will be used to determine the icon size.
	 *
	 * Since: 2.20
	 */
	public void unsetIconSize()
	{
		gtk_tool_palette_unset_icon_size(gtkToolPalette);
	}

	/**
	 * Unsets a toolbar style set with gtk_tool_palette_set_style(),
	 * so that user preferences will be used to determine the toolbar style.
	 *
	 * Since: 2.20
	 */
	public void unsetStyle()
	{
		gtk_tool_palette_unset_style(gtkToolPalette);
	}
}
