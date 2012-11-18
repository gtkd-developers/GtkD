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
 * inFile  = GtkToolPalette.html
 * outPack = gtk
 * outFile = ToolPalette
 * strct   = GtkToolPalette
 * realStrct=
 * ctorStrct=GtkWidget
 * clss    = ToolPalette
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * 	- ScrollableIF
 * prefixes:
 * 	- gtk_tool_palette_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tool_palette_get_hadjustment
 * 	- gtk_tool_palette_get_vadjustment
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- gtk.SelectionData
 * 	- gtk.TargetEntry
 * 	- gtk.ToolItem
 * 	- gtk.ToolItemGroup
 * 	- gtk.Widget
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * 	- gtk.ScrollableIF
 * 	- gtk.ScrollableT
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkSelectionData* -> SelectionData
 * 	- GtkTargetEntry* -> TargetEntry
 * 	- GtkToolItem* -> ToolItem
 * 	- GtkToolItemGroup* -> ToolItemGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- getStyle -> getToolbarStyle
 * overrides:
 */

module gtk.ToolPalette;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Adjustment;
private import gtk.SelectionData;
private import gtk.TargetEntry;
private import gtk.ToolItem;
private import gtk.ToolItemGroup;
private import gtk.Widget;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;



private import gtk.Container;

/**
 * Description
 * A GtkToolPalette allows you to add GtkToolItems to a palette-like
 * container with different categories and drag and drop support.
 * A GtkToolPalette is created with a call to gtk_tool_palette_new().
 * GtkToolItems cannot be added directly to a GtkToolPalette -
 * instead they are added to a GtkToolItemGroup which can than be added
 * to a GtkToolPalette. To add a GtkToolItemGroup to a GtkToolPalette,
 * use gtk_container_add().
 * $(DDOC_COMMENT example)
 * The easiest way to use drag and drop with GtkToolPalette is to call
 * gtk_tool_palette_add_drag_dest() with the desired drag source palette
 * and the desired drag target widget. Then gtk_tool_palette_get_drag_item()
 * can be used to get the dragged item in the "drag-data-received"
 * signal handler of the drag target.
 * $(DDOC_COMMENT example)
 */
public class ToolPalette : Container, OrientableIF, ScrollableIF
{
	
	/** the main Gtk struct */
	protected GtkToolPalette* gtkToolPalette;
	
	
	public GtkToolPalette* getToolPaletteStruct()
	{
		return gtkToolPalette;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolPalette;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolPalette* gtkToolPalette)
	{
		super(cast(GtkContainer*)gtkToolPalette);
		this.gtkToolPalette = gtkToolPalette;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToolPalette = cast(GtkToolPalette*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkToolPalette);
	
	// add the Scrollable capabilities
	mixin ScrollableT!(GtkToolPalette);
	
	/**
	 */
	
	/**
	 * Creates a new tool palette.
	 * Since 2.20
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_tool_palette_new (void);
		auto p = gtk_tool_palette_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_palette_new()");
		}
		this(cast(GtkToolPalette*) p);
	}
	
	/**
	 * Gets whether group is exclusive or not.
	 * See gtk_tool_palette_set_exclusive().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * Returns: TRUE if group is exclusive
	 */
	public int getExclusive(ToolItemGroup group)
	{
		// gboolean gtk_tool_palette_get_exclusive (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets whether the group should be exclusive or not.
	 * If an exclusive group is expanded all other groups are collapsed.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * exclusive = whether the group should be exclusive or not
	 */
	public void setExclusive(ToolItemGroup group, int exclusive)
	{
		// void gtk_tool_palette_set_exclusive (GtkToolPalette *palette,  GtkToolItemGroup *group,  gboolean exclusive);
		gtk_tool_palette_set_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), exclusive);
	}
	
	/**
	 * Gets whether group should be given extra space.
	 * See gtk_tool_palette_set_expand().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * Returns: TRUE if group should be given extra space, FALSE otherwise
	 */
	public int getExpand(ToolItemGroup group)
	{
		// gboolean gtk_tool_palette_get_expand (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets whether the group should be given extra space.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * expand = whether the group should be given extra space
	 */
	public void setExpand(ToolItemGroup group, int expand)
	{
		// void gtk_tool_palette_set_expand (GtkToolPalette *palette,  GtkToolItemGroup *group,  gboolean expand);
		gtk_tool_palette_set_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), expand);
	}
	
	/**
	 * Gets the position of group in palette as index.
	 * See gtk_tool_palette_set_group_position().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup
	 * Returns: the index of group or -1 if group is not a child of palette
	 */
	public int getGroupPosition(ToolItemGroup group)
	{
		// gint gtk_tool_palette_get_group_position (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets the position of the group as an index of the tool palette.
	 * If position is 0 the group will become the first child, if position is
	 * -1 it will become the last child.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * position = a new index for group
	 */
	public void setGroupPosition(ToolItemGroup group, int position)
	{
		// void gtk_tool_palette_set_group_position (GtkToolPalette *palette,  GtkToolItemGroup *group,  gint position);
		gtk_tool_palette_set_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), position);
	}
	
	/**
	 * Gets the size of icons in the tool palette.
	 * See gtk_tool_palette_set_icon_size().
	 * Since 2.20
	 * Returns: the GtkIconSize of icons in the tool palette. [type int]
	 */
	public GtkIconSize getIconSize()
	{
		// GtkIconSize gtk_tool_palette_get_icon_size (GtkToolPalette *palette);
		return gtk_tool_palette_get_icon_size(gtkToolPalette);
	}
	
	/**
	 * Sets the size of icons in the tool palette.
	 * Since 2.20
	 * Params:
	 * iconSize = the GtkIconSize that icons in the tool
	 * palette shall have. [type int]
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		// void gtk_tool_palette_set_icon_size (GtkToolPalette *palette,  GtkIconSize icon_size);
		gtk_tool_palette_set_icon_size(gtkToolPalette, iconSize);
	}
	
	/**
	 * Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
	 * so that user preferences will be used to determine the icon size.
	 * Since 2.20
	 */
	public void unsetIconSize()
	{
		// void gtk_tool_palette_unset_icon_size (GtkToolPalette *palette);
		gtk_tool_palette_unset_icon_size(gtkToolPalette);
	}
	
	/**
	 * Gets the style (icons, text or both) of items in the tool palette.
	 * Since 2.20
	 * Returns: the GtkToolbarStyle of items in the tool palette.
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		// GtkToolbarStyle gtk_tool_palette_get_style (GtkToolPalette *palette);
		return gtk_tool_palette_get_style(gtkToolPalette);
	}
	
	/**
	 * Sets the style (text, icons or both) of items in the tool palette.
	 * Since 2.20
	 * Params:
	 * style = the GtkToolbarStyle that items in the tool palette shall have
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		// void gtk_tool_palette_set_style (GtkToolPalette *palette,  GtkToolbarStyle style);
		gtk_tool_palette_set_style(gtkToolPalette, style);
	}
	
	/**
	 * Unsets a toolbar style set with gtk_tool_palette_set_style(),
	 * so that user preferences will be used to determine the toolbar style.
	 * Since 2.20
	 */
	public void unsetStyle()
	{
		// void gtk_tool_palette_unset_style (GtkToolPalette *palette);
		gtk_tool_palette_unset_style(gtkToolPalette);
	}
	
	/**
	 * Sets palette as drag source (see gtk_tool_palette_set_drag_source())
	 * and sets widget as a drag destination for drags from palette.
	 * See gtk_drag_dest_set().
	 * Since 2.20
	 * Params:
	 * widget = a GtkWidget which should be a drag destination for palette
	 * flags = the flags that specify what actions GTK+ should take for drops
	 * on that widget
	 * targets = the GtkToolPaletteDragTargets which the widget
	 * should support
	 * actions = the GdkDragActions which the widget should suppport
	 */
	public void addDragDest(Widget widget, GtkDestDefaults flags, GtkToolPaletteDragTargets targets, GdkDragAction actions)
	{
		// void gtk_tool_palette_add_drag_dest (GtkToolPalette *palette,  GtkWidget *widget,  GtkDestDefaults flags,  GtkToolPaletteDragTargets targets,  GdkDragAction actions);
		gtk_tool_palette_add_drag_dest(gtkToolPalette, (widget is null) ? null : widget.getWidgetStruct(), flags, targets, actions);
	}
	
	/**
	 * Get the dragged item from the selection.
	 * This could be a GtkToolItem or a GtkToolItemGroup.
	 * Since 2.20
	 * Params:
	 * selection = a GtkSelectionData
	 * Returns: the dragged item in selection. [transfer none]
	 */
	public Widget getDragItem(SelectionData selection)
	{
		// GtkWidget * gtk_tool_palette_get_drag_item (GtkToolPalette *palette,  const GtkSelectionData *selection);
		auto p = gtk_tool_palette_get_drag_item(gtkToolPalette, (selection is null) ? null : selection.getSelectionDataStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Get the target entry for a dragged GtkToolItemGroup.
	 * Since 2.20
	 * Returns: the GtkTargetEntry for a dragged group. [transfer none]
	 */
	public static TargetEntry getDragTargetGroup()
	{
		// const GtkTargetEntry * gtk_tool_palette_get_drag_target_group  (void);
		auto p = gtk_tool_palette_get_drag_target_group();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p);
	}
	
	/**
	 * Gets the target entry for a dragged GtkToolItem.
	 * Since 2.20
	 * Returns: the GtkTargetEntry for a dragged item. [transfer none]
	 */
	public static TargetEntry getDragTargetItem()
	{
		// const GtkTargetEntry * gtk_tool_palette_get_drag_target_item  (void);
		auto p = gtk_tool_palette_get_drag_target_item();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TargetEntry)(cast(GtkTargetEntry*) p);
	}
	
	/**
	 * Gets the group at position (x, y).
	 * Since 2.20
	 * Params:
	 * x = the x position
	 * y = the y position
	 * Returns: the GtkToolItemGroup at position or NULL if there is no such group. [transfer none]
	 */
	public ToolItemGroup getDropGroup(int x, int y)
	{
		// GtkToolItemGroup * gtk_tool_palette_get_drop_group (GtkToolPalette *palette,  gint x,  gint y);
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
	 * Since 2.20
	 * Params:
	 * x = the x position
	 * y = the y position
	 * Returns: the GtkToolItem at position or NULL if there is no such item. [transfer none]
	 */
	public ToolItem getDropItem(int x, int y)
	{
		// GtkToolItem * gtk_tool_palette_get_drop_item (GtkToolPalette *palette,  gint x,  gint y);
		auto p = gtk_tool_palette_get_drop_item(gtkToolPalette, x, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
	}
	
	/**
	 * Sets the tool palette as a drag source.
	 * Enables all groups and items in the tool palette as drag sources
	 * on button 1 and button 3 press with copy and move actions.
	 * See gtk_drag_source_set().
	 * Since 2.20
	 * Params:
	 * targets = the GtkToolPaletteDragTargets
	 * which the widget should support
	 */
	public void setDragSource(GtkToolPaletteDragTargets targets)
	{
		// void gtk_tool_palette_set_drag_source (GtkToolPalette *palette,  GtkToolPaletteDragTargets targets);
		gtk_tool_palette_set_drag_source(gtkToolPalette, targets);
	}
}
