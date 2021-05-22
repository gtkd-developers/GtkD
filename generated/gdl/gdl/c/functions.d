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


module gdl.c.functions;

import std.stdio;
import gdl.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GDL = ["libgdl-3-5.dll;gdl-3-3.5.dll;gdl-3.dll"];
else version (OSX)
	static immutable LIBRARY_GDL = ["libgdl-3.5.dylib"];
else
	static immutable LIBRARY_GDL = ["libgdl-3.so.5"];

shared static this()
{
	// gdl.Dock

	Linker.link(gdl_dock_get_type, "gdl_dock_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_new, "gdl_dock_new", LIBRARY_GDL);
	Linker.link(gdl_dock_add_floating_item, "gdl_dock_add_floating_item", LIBRARY_GDL);
	Linker.link(gdl_dock_add_item, "gdl_dock_add_item", LIBRARY_GDL);
	Linker.link(gdl_dock_get_item_by_name, "gdl_dock_get_item_by_name", LIBRARY_GDL);
	Linker.link(gdl_dock_get_named_items, "gdl_dock_get_named_items", LIBRARY_GDL);
	Linker.link(gdl_dock_get_placeholder_by_name, "gdl_dock_get_placeholder_by_name", LIBRARY_GDL);
	Linker.link(gdl_dock_get_root, "gdl_dock_get_root", LIBRARY_GDL);
	Linker.link(gdl_dock_hide_preview, "gdl_dock_hide_preview", LIBRARY_GDL);
	Linker.link(gdl_dock_new_from, "gdl_dock_new_from", LIBRARY_GDL);
	Linker.link(gdl_dock_set_skip_taskbar, "gdl_dock_set_skip_taskbar", LIBRARY_GDL);
	Linker.link(gdl_dock_show_preview, "gdl_dock_show_preview", LIBRARY_GDL);
	Linker.link(gdl_dock_xor_rect, "gdl_dock_xor_rect", LIBRARY_GDL);
	Linker.link(gdl_dock_xor_rect_hide, "gdl_dock_xor_rect_hide", LIBRARY_GDL);

	// gdl.DockBar

	Linker.link(gdl_dock_bar_get_type, "gdl_dock_bar_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_bar_new, "gdl_dock_bar_new", LIBRARY_GDL);
	Linker.link(gdl_dock_bar_get_orientation, "gdl_dock_bar_get_orientation", LIBRARY_GDL);
	Linker.link(gdl_dock_bar_get_style, "gdl_dock_bar_get_style", LIBRARY_GDL);
	Linker.link(gdl_dock_bar_set_orientation, "gdl_dock_bar_set_orientation", LIBRARY_GDL);
	Linker.link(gdl_dock_bar_set_style, "gdl_dock_bar_set_style", LIBRARY_GDL);

	// gdl.DockItem

	Linker.link(gdl_dock_item_get_type, "gdl_dock_item_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_item_new, "gdl_dock_item_new", LIBRARY_GDL);
	Linker.link(gdl_dock_item_new_with_pixbuf_icon, "gdl_dock_item_new_with_pixbuf_icon", LIBRARY_GDL);
	Linker.link(gdl_dock_item_new_with_stock, "gdl_dock_item_new_with_stock", LIBRARY_GDL);
	Linker.link(gdl_dock_item_bind, "gdl_dock_item_bind", LIBRARY_GDL);
	Linker.link(gdl_dock_item_dock_to, "gdl_dock_item_dock_to", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_behavior_flags, "gdl_dock_item_get_behavior_flags", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_child, "gdl_dock_item_get_child", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_drag_area, "gdl_dock_item_get_drag_area", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_grip, "gdl_dock_item_get_grip", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_orientation, "gdl_dock_item_get_orientation", LIBRARY_GDL);
	Linker.link(gdl_dock_item_get_tablabel, "gdl_dock_item_get_tablabel", LIBRARY_GDL);
	Linker.link(gdl_dock_item_hide_grip, "gdl_dock_item_hide_grip", LIBRARY_GDL);
	Linker.link(gdl_dock_item_hide_item, "gdl_dock_item_hide_item", LIBRARY_GDL);
	Linker.link(gdl_dock_item_iconify_item, "gdl_dock_item_iconify_item", LIBRARY_GDL);
	Linker.link(gdl_dock_item_is_closed, "gdl_dock_item_is_closed", LIBRARY_GDL);
	Linker.link(gdl_dock_item_is_iconified, "gdl_dock_item_is_iconified", LIBRARY_GDL);
	Linker.link(gdl_dock_item_is_placeholder, "gdl_dock_item_is_placeholder", LIBRARY_GDL);
	Linker.link(gdl_dock_item_lock, "gdl_dock_item_lock", LIBRARY_GDL);
	Linker.link(gdl_dock_item_notify_deselected, "gdl_dock_item_notify_deselected", LIBRARY_GDL);
	Linker.link(gdl_dock_item_notify_selected, "gdl_dock_item_notify_selected", LIBRARY_GDL);
	Linker.link(gdl_dock_item_or_child_has_focus, "gdl_dock_item_or_child_has_focus", LIBRARY_GDL);
	Linker.link(gdl_dock_item_preferred_size, "gdl_dock_item_preferred_size", LIBRARY_GDL);
	Linker.link(gdl_dock_item_set_behavior_flags, "gdl_dock_item_set_behavior_flags", LIBRARY_GDL);
	Linker.link(gdl_dock_item_set_child, "gdl_dock_item_set_child", LIBRARY_GDL);
	Linker.link(gdl_dock_item_set_default_position, "gdl_dock_item_set_default_position", LIBRARY_GDL);
	Linker.link(gdl_dock_item_set_orientation, "gdl_dock_item_set_orientation", LIBRARY_GDL);
	Linker.link(gdl_dock_item_set_tablabel, "gdl_dock_item_set_tablabel", LIBRARY_GDL);
	Linker.link(gdl_dock_item_show_grip, "gdl_dock_item_show_grip", LIBRARY_GDL);
	Linker.link(gdl_dock_item_show_item, "gdl_dock_item_show_item", LIBRARY_GDL);
	Linker.link(gdl_dock_item_unbind, "gdl_dock_item_unbind", LIBRARY_GDL);
	Linker.link(gdl_dock_item_unlock, "gdl_dock_item_unlock", LIBRARY_GDL);
	Linker.link(gdl_dock_item_unset_behavior_flags, "gdl_dock_item_unset_behavior_flags", LIBRARY_GDL);

	// gdl.DockItemButtonImage

	Linker.link(gdl_dock_item_button_image_get_type, "gdl_dock_item_button_image_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_item_button_image_new, "gdl_dock_item_button_image_new", LIBRARY_GDL);

	// gdl.DockItemClass

	Linker.link(gdl_dock_item_class_set_has_grip, "gdl_dock_item_class_set_has_grip", LIBRARY_GDL);

	// gdl.DockItemGrip

	Linker.link(gdl_dock_item_grip_get_type, "gdl_dock_item_grip_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_new, "gdl_dock_item_grip_new", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_has_event, "gdl_dock_item_grip_has_event", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_hide_handle, "gdl_dock_item_grip_hide_handle", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_set_cursor, "gdl_dock_item_grip_set_cursor", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_set_label, "gdl_dock_item_grip_set_label", LIBRARY_GDL);
	Linker.link(gdl_dock_item_grip_show_handle, "gdl_dock_item_grip_show_handle", LIBRARY_GDL);

	// gdl.DockLayout

	Linker.link(gdl_dock_layout_get_type, "gdl_dock_layout_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_new, "gdl_dock_layout_new", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_attach, "gdl_dock_layout_attach", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_delete_layout, "gdl_dock_layout_delete_layout", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_get_layouts, "gdl_dock_layout_get_layouts", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_get_master, "gdl_dock_layout_get_master", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_is_dirty, "gdl_dock_layout_is_dirty", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_load_from_file, "gdl_dock_layout_load_from_file", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_load_layout, "gdl_dock_layout_load_layout", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_save_layout, "gdl_dock_layout_save_layout", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_save_to_file, "gdl_dock_layout_save_to_file", LIBRARY_GDL);
	Linker.link(gdl_dock_layout_set_master, "gdl_dock_layout_set_master", LIBRARY_GDL);

	// gdl.DockMaster

	Linker.link(gdl_dock_master_get_type, "gdl_dock_master_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_master_add, "gdl_dock_master_add", LIBRARY_GDL);
	Linker.link(gdl_dock_master_foreach, "gdl_dock_master_foreach", LIBRARY_GDL);
	Linker.link(gdl_dock_master_foreach_toplevel, "gdl_dock_master_foreach_toplevel", LIBRARY_GDL);
	Linker.link(gdl_dock_master_get_controller, "gdl_dock_master_get_controller", LIBRARY_GDL);
	Linker.link(gdl_dock_master_get_dock_name, "gdl_dock_master_get_dock_name", LIBRARY_GDL);
	Linker.link(gdl_dock_master_get_object, "gdl_dock_master_get_object", LIBRARY_GDL);
	Linker.link(gdl_dock_master_remove, "gdl_dock_master_remove", LIBRARY_GDL);
	Linker.link(gdl_dock_master_set_controller, "gdl_dock_master_set_controller", LIBRARY_GDL);

	// gdl.DockNotebook

	Linker.link(gdl_dock_notebook_get_type, "gdl_dock_notebook_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_notebook_new, "gdl_dock_notebook_new", LIBRARY_GDL);

	// gdl.DockObject

	Linker.link(gdl_dock_object_get_type, "gdl_dock_object_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_object_nick_from_type, "gdl_dock_object_nick_from_type", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_type_for_nick, "gdl_dock_object_set_type_for_nick", LIBRARY_GDL);
	Linker.link(gdl_dock_object_type_from_nick, "gdl_dock_object_type_from_nick", LIBRARY_GDL);
	Linker.link(gdl_dock_object_bind, "gdl_dock_object_bind", LIBRARY_GDL);
	Linker.link(gdl_dock_object_child_placement, "gdl_dock_object_child_placement", LIBRARY_GDL);
	Linker.link(gdl_dock_object_detach, "gdl_dock_object_detach", LIBRARY_GDL);
	Linker.link(gdl_dock_object_dock, "gdl_dock_object_dock", LIBRARY_GDL);
	Linker.link(gdl_dock_object_dock_request, "gdl_dock_object_dock_request", LIBRARY_GDL);
	Linker.link(gdl_dock_object_freeze, "gdl_dock_object_freeze", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_controller, "gdl_dock_object_get_controller", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_long_name, "gdl_dock_object_get_long_name", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_master, "gdl_dock_object_get_master", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_name, "gdl_dock_object_get_name", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_parent_object, "gdl_dock_object_get_parent_object", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_pixbuf, "gdl_dock_object_get_pixbuf", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_stock_id, "gdl_dock_object_get_stock_id", LIBRARY_GDL);
	Linker.link(gdl_dock_object_get_toplevel, "gdl_dock_object_get_toplevel", LIBRARY_GDL);
	Linker.link(gdl_dock_object_is_automatic, "gdl_dock_object_is_automatic", LIBRARY_GDL);
	Linker.link(gdl_dock_object_is_bound, "gdl_dock_object_is_bound", LIBRARY_GDL);
	Linker.link(gdl_dock_object_is_closed, "gdl_dock_object_is_closed", LIBRARY_GDL);
	Linker.link(gdl_dock_object_is_compound, "gdl_dock_object_is_compound", LIBRARY_GDL);
	Linker.link(gdl_dock_object_is_frozen, "gdl_dock_object_is_frozen", LIBRARY_GDL);
	Linker.link(gdl_dock_object_layout_changed_notify, "gdl_dock_object_layout_changed_notify", LIBRARY_GDL);
	Linker.link(gdl_dock_object_present, "gdl_dock_object_present", LIBRARY_GDL);
	Linker.link(gdl_dock_object_reduce, "gdl_dock_object_reduce", LIBRARY_GDL);
	Linker.link(gdl_dock_object_reorder, "gdl_dock_object_reorder", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_long_name, "gdl_dock_object_set_long_name", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_manual, "gdl_dock_object_set_manual", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_name, "gdl_dock_object_set_name", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_pixbuf, "gdl_dock_object_set_pixbuf", LIBRARY_GDL);
	Linker.link(gdl_dock_object_set_stock_id, "gdl_dock_object_set_stock_id", LIBRARY_GDL);
	Linker.link(gdl_dock_object_thaw, "gdl_dock_object_thaw", LIBRARY_GDL);
	Linker.link(gdl_dock_object_unbind, "gdl_dock_object_unbind", LIBRARY_GDL);

	// gdl.DockPaned

	Linker.link(gdl_dock_paned_get_type, "gdl_dock_paned_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_paned_new, "gdl_dock_paned_new", LIBRARY_GDL);

	// gdl.DockParam

	Linker.link(gdl_dock_param_get_type, "gdl_dock_param_get_type", LIBRARY_GDL);

	// gdl.DockPlaceholder

	Linker.link(gdl_dock_placeholder_get_type, "gdl_dock_placeholder_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_placeholder_new, "gdl_dock_placeholder_new", LIBRARY_GDL);
	Linker.link(gdl_dock_placeholder_attach, "gdl_dock_placeholder_attach", LIBRARY_GDL);

	// gdl.DockTablabel

	Linker.link(gdl_dock_tablabel_get_type, "gdl_dock_tablabel_get_type", LIBRARY_GDL);
	Linker.link(gdl_dock_tablabel_new, "gdl_dock_tablabel_new", LIBRARY_GDL);
	Linker.link(gdl_dock_tablabel_activate, "gdl_dock_tablabel_activate", LIBRARY_GDL);
	Linker.link(gdl_dock_tablabel_deactivate, "gdl_dock_tablabel_deactivate", LIBRARY_GDL);

	// gdl.PreviewWindow

	Linker.link(gdl_preview_window_get_type, "gdl_preview_window_get_type", LIBRARY_GDL);
	Linker.link(gdl_preview_window_new, "gdl_preview_window_new", LIBRARY_GDL);
	Linker.link(gdl_preview_window_update, "gdl_preview_window_update", LIBRARY_GDL);

	// gdl.Switcher

	Linker.link(gdl_switcher_get_type, "gdl_switcher_get_type", LIBRARY_GDL);
	Linker.link(gdl_switcher_new, "gdl_switcher_new", LIBRARY_GDL);
	Linker.link(gdl_switcher_insert_page, "gdl_switcher_insert_page", LIBRARY_GDL);
}

__gshared extern(C)
{

	// gdl.Dock

	GType function() c_gdl_dock_get_type;
	GtkWidget* function() c_gdl_dock_new;
	void function(GdlDock* dock, GdlDockItem* item, int x, int y, int width, int height) c_gdl_dock_add_floating_item;
	void function(GdlDock* dock, GdlDockItem* item, GdlDockPlacement placement) c_gdl_dock_add_item;
	GdlDockItem* function(GdlDock* dock, const(char)* name) c_gdl_dock_get_item_by_name;
	GList* function(GdlDock* dock) c_gdl_dock_get_named_items;
	GdlDockPlaceholder* function(GdlDock* dock, const(char)* name) c_gdl_dock_get_placeholder_by_name;
	GdlDockObject* function(GdlDock* dock) c_gdl_dock_get_root;
	void function(GdlDock* dock) c_gdl_dock_hide_preview;
	GtkWidget* function(GdlDock* original, int floating) c_gdl_dock_new_from;
	void function(GdlDock* dock, int skip) c_gdl_dock_set_skip_taskbar;
	void function(GdlDock* dock, GdkRectangle* rect) c_gdl_dock_show_preview;
	void function(GdlDock* dock, GdkRectangle* rect) c_gdl_dock_xor_rect;
	void function(GdlDock* dock) c_gdl_dock_xor_rect_hide;

	// gdl.DockBar

	GType function() c_gdl_dock_bar_get_type;
	GtkWidget* function(GObject* master) c_gdl_dock_bar_new;
	GtkOrientation function(GdlDockBar* dockbar) c_gdl_dock_bar_get_orientation;
	GdlDockBarStyle function(GdlDockBar* dockbar) c_gdl_dock_bar_get_style;
	void function(GdlDockBar* dockbar, GtkOrientation orientation) c_gdl_dock_bar_set_orientation;
	void function(GdlDockBar* dockbar, GdlDockBarStyle style) c_gdl_dock_bar_set_style;

	// gdl.DockItem

	GType function() c_gdl_dock_item_get_type;
	GtkWidget* function(const(char)* name, const(char)* longName, GdlDockItemBehavior behavior) c_gdl_dock_item_new;
	GtkWidget* function(const(char)* name, const(char)* longName, GdkPixbuf* pixbufIcon, GdlDockItemBehavior behavior) c_gdl_dock_item_new_with_pixbuf_icon;
	GtkWidget* function(const(char)* name, const(char)* longName, const(char)* stockId, GdlDockItemBehavior behavior) c_gdl_dock_item_new_with_stock;
	void function(GdlDockItem* item, GtkWidget* dock) c_gdl_dock_item_bind;
	void function(GdlDockItem* item, GdlDockItem* target, GdlDockPlacement position, int dockingParam) c_gdl_dock_item_dock_to;
	GdlDockItemBehavior function(GdlDockItem* item) c_gdl_dock_item_get_behavior_flags;
	GtkWidget* function(GdlDockItem* item) c_gdl_dock_item_get_child;
	void function(GdlDockItem* item, GdkRectangle* rect) c_gdl_dock_item_get_drag_area;
	GtkWidget* function(GdlDockItem* item) c_gdl_dock_item_get_grip;
	GtkOrientation function(GdlDockItem* item) c_gdl_dock_item_get_orientation;
	GtkWidget* function(GdlDockItem* item) c_gdl_dock_item_get_tablabel;
	void function(GdlDockItem* item) c_gdl_dock_item_hide_grip;
	void function(GdlDockItem* item) c_gdl_dock_item_hide_item;
	void function(GdlDockItem* item) c_gdl_dock_item_iconify_item;
	int function(GdlDockItem* item) c_gdl_dock_item_is_closed;
	int function(GdlDockItem* item) c_gdl_dock_item_is_iconified;
	int function(GdlDockItem* item) c_gdl_dock_item_is_placeholder;
	void function(GdlDockItem* item) c_gdl_dock_item_lock;
	void function(GdlDockItem* item) c_gdl_dock_item_notify_deselected;
	void function(GdlDockItem* item) c_gdl_dock_item_notify_selected;
	int function(GdlDockItem* item) c_gdl_dock_item_or_child_has_focus;
	void function(GdlDockItem* item, GtkRequisition* req) c_gdl_dock_item_preferred_size;
	void function(GdlDockItem* item, GdlDockItemBehavior behavior, int clear) c_gdl_dock_item_set_behavior_flags;
	void function(GdlDockItem* item, GtkWidget* child) c_gdl_dock_item_set_child;
	void function(GdlDockItem* item, GdlDockObject* reference) c_gdl_dock_item_set_default_position;
	void function(GdlDockItem* item, GtkOrientation orientation) c_gdl_dock_item_set_orientation;
	void function(GdlDockItem* item, GtkWidget* tablabel) c_gdl_dock_item_set_tablabel;
	void function(GdlDockItem* item) c_gdl_dock_item_show_grip;
	void function(GdlDockItem* item) c_gdl_dock_item_show_item;
	void function(GdlDockItem* item) c_gdl_dock_item_unbind;
	void function(GdlDockItem* item) c_gdl_dock_item_unlock;
	void function(GdlDockItem* item, GdlDockItemBehavior behavior) c_gdl_dock_item_unset_behavior_flags;

	// gdl.DockItemButtonImage

	GType function() c_gdl_dock_item_button_image_get_type;
	GtkWidget* function(GdlDockItemButtonImageType imageType) c_gdl_dock_item_button_image_new;

	// gdl.DockItemClass

	void function(GdlDockItemClass* itemClass, int hasGrip) c_gdl_dock_item_class_set_has_grip;

	// gdl.DockItemGrip

	GType function() c_gdl_dock_item_grip_get_type;
	GtkWidget* function(GdlDockItem* item) c_gdl_dock_item_grip_new;
	int function(GdlDockItemGrip* grip, GdkEvent* event) c_gdl_dock_item_grip_has_event;
	void function(GdlDockItemGrip* grip) c_gdl_dock_item_grip_hide_handle;
	void function(GdlDockItemGrip* grip, int inDrag) c_gdl_dock_item_grip_set_cursor;
	void function(GdlDockItemGrip* grip, GtkWidget* label) c_gdl_dock_item_grip_set_label;
	void function(GdlDockItemGrip* grip) c_gdl_dock_item_grip_show_handle;

	// gdl.DockLayout

	GType function() c_gdl_dock_layout_get_type;
	GdlDockLayout* function(GObject* master) c_gdl_dock_layout_new;
	void function(GdlDockLayout* layout, GdlDockMaster* master) c_gdl_dock_layout_attach;
	void function(GdlDockLayout* layout, const(char)* name) c_gdl_dock_layout_delete_layout;
	GList* function(GdlDockLayout* layout, int includeDefault) c_gdl_dock_layout_get_layouts;
	GObject* function(GdlDockLayout* layout) c_gdl_dock_layout_get_master;
	int function(GdlDockLayout* layout) c_gdl_dock_layout_is_dirty;
	int function(GdlDockLayout* layout, const(char)* filename) c_gdl_dock_layout_load_from_file;
	int function(GdlDockLayout* layout, const(char)* name) c_gdl_dock_layout_load_layout;
	void function(GdlDockLayout* layout, const(char)* name) c_gdl_dock_layout_save_layout;
	int function(GdlDockLayout* layout, const(char)* filename) c_gdl_dock_layout_save_to_file;
	void function(GdlDockLayout* layout, GObject* master) c_gdl_dock_layout_set_master;

	// gdl.DockMaster

	GType function() c_gdl_dock_master_get_type;
	void function(GdlDockMaster* master, GdlDockObject* object) c_gdl_dock_master_add;
	void function(GdlDockMaster* master, GFunc function_, void* userData) c_gdl_dock_master_foreach;
	void function(GdlDockMaster* master, int includeController, GFunc function_, void* userData) c_gdl_dock_master_foreach_toplevel;
	GdlDockObject* function(GdlDockMaster* master) c_gdl_dock_master_get_controller;
	char* function(GdlDockMaster* master) c_gdl_dock_master_get_dock_name;
	GdlDockObject* function(GdlDockMaster* master, const(char)* nickName) c_gdl_dock_master_get_object;
	void function(GdlDockMaster* master, GdlDockObject* object) c_gdl_dock_master_remove;
	void function(GdlDockMaster* master, GdlDockObject* newController) c_gdl_dock_master_set_controller;

	// gdl.DockNotebook

	GType function() c_gdl_dock_notebook_get_type;
	GtkWidget* function() c_gdl_dock_notebook_new;

	// gdl.DockObject

	GType function() c_gdl_dock_object_get_type;
	const(char)* function(GType type) c_gdl_dock_object_nick_from_type;
	GType function(const(char)* nick, GType type) c_gdl_dock_object_set_type_for_nick;
	GType function(const(char)* nick) c_gdl_dock_object_type_from_nick;
	void function(GdlDockObject* object, GObject* master) c_gdl_dock_object_bind;
	int function(GdlDockObject* object, GdlDockObject* child, GdlDockPlacement* placement) c_gdl_dock_object_child_placement;
	void function(GdlDockObject* object, int recursive) c_gdl_dock_object_detach;
	void function(GdlDockObject* object, GdlDockObject* requestor, GdlDockPlacement position, GValue* otherData) c_gdl_dock_object_dock;
	int function(GdlDockObject* object, int x, int y, GdlDockRequest* request) c_gdl_dock_object_dock_request;
	void function(GdlDockObject* object) c_gdl_dock_object_freeze;
	GdlDockObject* function(GdlDockObject* object) c_gdl_dock_object_get_controller;
	const(char)* function(GdlDockObject* object) c_gdl_dock_object_get_long_name;
	GObject* function(GdlDockObject* object) c_gdl_dock_object_get_master;
	const(char)* function(GdlDockObject* object) c_gdl_dock_object_get_name;
	GdlDockObject* function(GdlDockObject* object) c_gdl_dock_object_get_parent_object;
	GdkPixbuf* function(GdlDockObject* object) c_gdl_dock_object_get_pixbuf;
	const(char)* function(GdlDockObject* object) c_gdl_dock_object_get_stock_id;
	GdlDock* function(GdlDockObject* object) c_gdl_dock_object_get_toplevel;
	int function(GdlDockObject* object) c_gdl_dock_object_is_automatic;
	int function(GdlDockObject* object) c_gdl_dock_object_is_bound;
	int function(GdlDockObject* object) c_gdl_dock_object_is_closed;
	int function(GdlDockObject* object) c_gdl_dock_object_is_compound;
	int function(GdlDockObject* object) c_gdl_dock_object_is_frozen;
	void function(GdlDockObject* object) c_gdl_dock_object_layout_changed_notify;
	void function(GdlDockObject* object, GdlDockObject* child) c_gdl_dock_object_present;
	void function(GdlDockObject* object) c_gdl_dock_object_reduce;
	int function(GdlDockObject* object, GdlDockObject* child, GdlDockPlacement newPosition, GValue* otherData) c_gdl_dock_object_reorder;
	void function(GdlDockObject* object, const(char)* name) c_gdl_dock_object_set_long_name;
	void function(GdlDockObject* object) c_gdl_dock_object_set_manual;
	void function(GdlDockObject* object, const(char)* name) c_gdl_dock_object_set_name;
	void function(GdlDockObject* object, GdkPixbuf* icon) c_gdl_dock_object_set_pixbuf;
	void function(GdlDockObject* object, const(char)* stockId) c_gdl_dock_object_set_stock_id;
	void function(GdlDockObject* object) c_gdl_dock_object_thaw;
	void function(GdlDockObject* object) c_gdl_dock_object_unbind;

	// gdl.DockPaned

	GType function() c_gdl_dock_paned_get_type;
	GtkWidget* function(GtkOrientation orientation) c_gdl_dock_paned_new;

	// gdl.DockParam

	GType function() c_gdl_dock_param_get_type;

	// gdl.DockPlaceholder

	GType function() c_gdl_dock_placeholder_get_type;
	GtkWidget* function(const(char)* name, GdlDockObject* object, GdlDockPlacement position, int sticky) c_gdl_dock_placeholder_new;
	void function(GdlDockPlaceholder* ph, GdlDockObject* object) c_gdl_dock_placeholder_attach;

	// gdl.DockTablabel

	GType function() c_gdl_dock_tablabel_get_type;
	GtkWidget* function(GdlDockItem* item) c_gdl_dock_tablabel_new;
	void function(GdlDockTablabel* tablabel) c_gdl_dock_tablabel_activate;
	void function(GdlDockTablabel* tablabel) c_gdl_dock_tablabel_deactivate;

	// gdl.PreviewWindow

	GType function() c_gdl_preview_window_get_type;
	GtkWidget* function() c_gdl_preview_window_new;
	void function(GdlPreviewWindow* window, GdkRectangle* rect) c_gdl_preview_window_update;

	// gdl.Switcher

	GType function() c_gdl_switcher_get_type;
	GtkWidget* function() c_gdl_switcher_new;
	int function(GdlSwitcher* switcher, GtkWidget* page, GtkWidget* tabWidget, const(char)* label, const(char)* tooltips, const(char)* stockId, GdkPixbuf* pixbufIcon, int position) c_gdl_switcher_insert_page;
}


// gdl.Dock

alias c_gdl_dock_get_type gdl_dock_get_type;
alias c_gdl_dock_new gdl_dock_new;
alias c_gdl_dock_add_floating_item gdl_dock_add_floating_item;
alias c_gdl_dock_add_item gdl_dock_add_item;
alias c_gdl_dock_get_item_by_name gdl_dock_get_item_by_name;
alias c_gdl_dock_get_named_items gdl_dock_get_named_items;
alias c_gdl_dock_get_placeholder_by_name gdl_dock_get_placeholder_by_name;
alias c_gdl_dock_get_root gdl_dock_get_root;
alias c_gdl_dock_hide_preview gdl_dock_hide_preview;
alias c_gdl_dock_new_from gdl_dock_new_from;
alias c_gdl_dock_set_skip_taskbar gdl_dock_set_skip_taskbar;
alias c_gdl_dock_show_preview gdl_dock_show_preview;
alias c_gdl_dock_xor_rect gdl_dock_xor_rect;
alias c_gdl_dock_xor_rect_hide gdl_dock_xor_rect_hide;

// gdl.DockBar

alias c_gdl_dock_bar_get_type gdl_dock_bar_get_type;
alias c_gdl_dock_bar_new gdl_dock_bar_new;
alias c_gdl_dock_bar_get_orientation gdl_dock_bar_get_orientation;
alias c_gdl_dock_bar_get_style gdl_dock_bar_get_style;
alias c_gdl_dock_bar_set_orientation gdl_dock_bar_set_orientation;
alias c_gdl_dock_bar_set_style gdl_dock_bar_set_style;

// gdl.DockItem

alias c_gdl_dock_item_get_type gdl_dock_item_get_type;
alias c_gdl_dock_item_new gdl_dock_item_new;
alias c_gdl_dock_item_new_with_pixbuf_icon gdl_dock_item_new_with_pixbuf_icon;
alias c_gdl_dock_item_new_with_stock gdl_dock_item_new_with_stock;
alias c_gdl_dock_item_bind gdl_dock_item_bind;
alias c_gdl_dock_item_dock_to gdl_dock_item_dock_to;
alias c_gdl_dock_item_get_behavior_flags gdl_dock_item_get_behavior_flags;
alias c_gdl_dock_item_get_child gdl_dock_item_get_child;
alias c_gdl_dock_item_get_drag_area gdl_dock_item_get_drag_area;
alias c_gdl_dock_item_get_grip gdl_dock_item_get_grip;
alias c_gdl_dock_item_get_orientation gdl_dock_item_get_orientation;
alias c_gdl_dock_item_get_tablabel gdl_dock_item_get_tablabel;
alias c_gdl_dock_item_hide_grip gdl_dock_item_hide_grip;
alias c_gdl_dock_item_hide_item gdl_dock_item_hide_item;
alias c_gdl_dock_item_iconify_item gdl_dock_item_iconify_item;
alias c_gdl_dock_item_is_closed gdl_dock_item_is_closed;
alias c_gdl_dock_item_is_iconified gdl_dock_item_is_iconified;
alias c_gdl_dock_item_is_placeholder gdl_dock_item_is_placeholder;
alias c_gdl_dock_item_lock gdl_dock_item_lock;
alias c_gdl_dock_item_notify_deselected gdl_dock_item_notify_deselected;
alias c_gdl_dock_item_notify_selected gdl_dock_item_notify_selected;
alias c_gdl_dock_item_or_child_has_focus gdl_dock_item_or_child_has_focus;
alias c_gdl_dock_item_preferred_size gdl_dock_item_preferred_size;
alias c_gdl_dock_item_set_behavior_flags gdl_dock_item_set_behavior_flags;
alias c_gdl_dock_item_set_child gdl_dock_item_set_child;
alias c_gdl_dock_item_set_default_position gdl_dock_item_set_default_position;
alias c_gdl_dock_item_set_orientation gdl_dock_item_set_orientation;
alias c_gdl_dock_item_set_tablabel gdl_dock_item_set_tablabel;
alias c_gdl_dock_item_show_grip gdl_dock_item_show_grip;
alias c_gdl_dock_item_show_item gdl_dock_item_show_item;
alias c_gdl_dock_item_unbind gdl_dock_item_unbind;
alias c_gdl_dock_item_unlock gdl_dock_item_unlock;
alias c_gdl_dock_item_unset_behavior_flags gdl_dock_item_unset_behavior_flags;

// gdl.DockItemButtonImage

alias c_gdl_dock_item_button_image_get_type gdl_dock_item_button_image_get_type;
alias c_gdl_dock_item_button_image_new gdl_dock_item_button_image_new;

// gdl.DockItemClass

alias c_gdl_dock_item_class_set_has_grip gdl_dock_item_class_set_has_grip;

// gdl.DockItemGrip

alias c_gdl_dock_item_grip_get_type gdl_dock_item_grip_get_type;
alias c_gdl_dock_item_grip_new gdl_dock_item_grip_new;
alias c_gdl_dock_item_grip_has_event gdl_dock_item_grip_has_event;
alias c_gdl_dock_item_grip_hide_handle gdl_dock_item_grip_hide_handle;
alias c_gdl_dock_item_grip_set_cursor gdl_dock_item_grip_set_cursor;
alias c_gdl_dock_item_grip_set_label gdl_dock_item_grip_set_label;
alias c_gdl_dock_item_grip_show_handle gdl_dock_item_grip_show_handle;

// gdl.DockLayout

alias c_gdl_dock_layout_get_type gdl_dock_layout_get_type;
alias c_gdl_dock_layout_new gdl_dock_layout_new;
alias c_gdl_dock_layout_attach gdl_dock_layout_attach;
alias c_gdl_dock_layout_delete_layout gdl_dock_layout_delete_layout;
alias c_gdl_dock_layout_get_layouts gdl_dock_layout_get_layouts;
alias c_gdl_dock_layout_get_master gdl_dock_layout_get_master;
alias c_gdl_dock_layout_is_dirty gdl_dock_layout_is_dirty;
alias c_gdl_dock_layout_load_from_file gdl_dock_layout_load_from_file;
alias c_gdl_dock_layout_load_layout gdl_dock_layout_load_layout;
alias c_gdl_dock_layout_save_layout gdl_dock_layout_save_layout;
alias c_gdl_dock_layout_save_to_file gdl_dock_layout_save_to_file;
alias c_gdl_dock_layout_set_master gdl_dock_layout_set_master;

// gdl.DockMaster

alias c_gdl_dock_master_get_type gdl_dock_master_get_type;
alias c_gdl_dock_master_add gdl_dock_master_add;
alias c_gdl_dock_master_foreach gdl_dock_master_foreach;
alias c_gdl_dock_master_foreach_toplevel gdl_dock_master_foreach_toplevel;
alias c_gdl_dock_master_get_controller gdl_dock_master_get_controller;
alias c_gdl_dock_master_get_dock_name gdl_dock_master_get_dock_name;
alias c_gdl_dock_master_get_object gdl_dock_master_get_object;
alias c_gdl_dock_master_remove gdl_dock_master_remove;
alias c_gdl_dock_master_set_controller gdl_dock_master_set_controller;

// gdl.DockNotebook

alias c_gdl_dock_notebook_get_type gdl_dock_notebook_get_type;
alias c_gdl_dock_notebook_new gdl_dock_notebook_new;

// gdl.DockObject

alias c_gdl_dock_object_get_type gdl_dock_object_get_type;
alias c_gdl_dock_object_nick_from_type gdl_dock_object_nick_from_type;
alias c_gdl_dock_object_set_type_for_nick gdl_dock_object_set_type_for_nick;
alias c_gdl_dock_object_type_from_nick gdl_dock_object_type_from_nick;
alias c_gdl_dock_object_bind gdl_dock_object_bind;
alias c_gdl_dock_object_child_placement gdl_dock_object_child_placement;
alias c_gdl_dock_object_detach gdl_dock_object_detach;
alias c_gdl_dock_object_dock gdl_dock_object_dock;
alias c_gdl_dock_object_dock_request gdl_dock_object_dock_request;
alias c_gdl_dock_object_freeze gdl_dock_object_freeze;
alias c_gdl_dock_object_get_controller gdl_dock_object_get_controller;
alias c_gdl_dock_object_get_long_name gdl_dock_object_get_long_name;
alias c_gdl_dock_object_get_master gdl_dock_object_get_master;
alias c_gdl_dock_object_get_name gdl_dock_object_get_name;
alias c_gdl_dock_object_get_parent_object gdl_dock_object_get_parent_object;
alias c_gdl_dock_object_get_pixbuf gdl_dock_object_get_pixbuf;
alias c_gdl_dock_object_get_stock_id gdl_dock_object_get_stock_id;
alias c_gdl_dock_object_get_toplevel gdl_dock_object_get_toplevel;
alias c_gdl_dock_object_is_automatic gdl_dock_object_is_automatic;
alias c_gdl_dock_object_is_bound gdl_dock_object_is_bound;
alias c_gdl_dock_object_is_closed gdl_dock_object_is_closed;
alias c_gdl_dock_object_is_compound gdl_dock_object_is_compound;
alias c_gdl_dock_object_is_frozen gdl_dock_object_is_frozen;
alias c_gdl_dock_object_layout_changed_notify gdl_dock_object_layout_changed_notify;
alias c_gdl_dock_object_present gdl_dock_object_present;
alias c_gdl_dock_object_reduce gdl_dock_object_reduce;
alias c_gdl_dock_object_reorder gdl_dock_object_reorder;
alias c_gdl_dock_object_set_long_name gdl_dock_object_set_long_name;
alias c_gdl_dock_object_set_manual gdl_dock_object_set_manual;
alias c_gdl_dock_object_set_name gdl_dock_object_set_name;
alias c_gdl_dock_object_set_pixbuf gdl_dock_object_set_pixbuf;
alias c_gdl_dock_object_set_stock_id gdl_dock_object_set_stock_id;
alias c_gdl_dock_object_thaw gdl_dock_object_thaw;
alias c_gdl_dock_object_unbind gdl_dock_object_unbind;

// gdl.DockPaned

alias c_gdl_dock_paned_get_type gdl_dock_paned_get_type;
alias c_gdl_dock_paned_new gdl_dock_paned_new;

// gdl.DockParam

alias c_gdl_dock_param_get_type gdl_dock_param_get_type;

// gdl.DockPlaceholder

alias c_gdl_dock_placeholder_get_type gdl_dock_placeholder_get_type;
alias c_gdl_dock_placeholder_new gdl_dock_placeholder_new;
alias c_gdl_dock_placeholder_attach gdl_dock_placeholder_attach;

// gdl.DockTablabel

alias c_gdl_dock_tablabel_get_type gdl_dock_tablabel_get_type;
alias c_gdl_dock_tablabel_new gdl_dock_tablabel_new;
alias c_gdl_dock_tablabel_activate gdl_dock_tablabel_activate;
alias c_gdl_dock_tablabel_deactivate gdl_dock_tablabel_deactivate;

// gdl.PreviewWindow

alias c_gdl_preview_window_get_type gdl_preview_window_get_type;
alias c_gdl_preview_window_new gdl_preview_window_new;
alias c_gdl_preview_window_update gdl_preview_window_update;

// gdl.Switcher

alias c_gdl_switcher_get_type gdl_switcher_get_type;
alias c_gdl_switcher_new gdl_switcher_new;
alias c_gdl_switcher_insert_page gdl_switcher_insert_page;
