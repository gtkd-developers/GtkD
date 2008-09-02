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

// Adapted from John Reimer's DUI loader modules


module gtkc.gtk;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkc.gtktypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gtk_Linker;

static this()
{
 gtk_Linker = new Linker(libPath ~ importLibs[LIBRARY.GTK] );
 gtk_Linker.link(gtkLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): gtk").newline;
 	else writefln("* Finished static this(): gtk");
 }
}

static ~this()
{
 delete gtk_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): gtk").newline;
 	else writefln("* Finished static ~this(): gtk");
 }
}

extern(C) 
{	
	// gtk.Main
	
	gchar* function()gtk_set_locale;
	void function()gtk_disable_setlocale;
	PangoLanguage* function()gtk_get_default_language;
	gboolean function(int* argc, char*** argv)gtk_parse_args;
	void function(int* argc, char*** argv)gtk_init;
	gboolean function(int* argc, char*** argv)gtk_init_check;
	gboolean function(int* argc, char*** argv, char* parameterString, GOptionEntry* entries, char* translationDomain, GError** error)gtk_init_with_args;
	GOptionGroup* function(gboolean openDefaultDisplay)gtk_get_option_group;
	void function(gint errorCode)gtk_exit;
	gboolean function()gtk_events_pending;
	void function()gtk_main;
	guint function()gtk_main_level;
	void function()gtk_main_quit;
	gboolean function()gtk_main_iteration;
	gboolean function(gboolean blocking)gtk_main_iteration_do;
	void function(GdkEvent* event)gtk_main_do_event;
	void function(GtkWidget* widget)gtk_grab_add;
	GtkWidget* function()gtk_grab_get_current;
	void function(GtkWidget* widget)gtk_grab_remove;
	void function(GtkFunction funct, gpointer data)gtk_init_add;
	void function(guint mainLevel, GtkObject* object)gtk_quit_add_destroy;
	guint function(guint mainLevel, GtkFunction funct, gpointer data)gtk_quit_add;
	guint function(guint mainLevel, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy)gtk_quit_add_full;
	void function(guint quitHandlerId)gtk_quit_remove;
	void function(gpointer data)gtk_quit_remove_by_data;
	guint function(gint source, GdkInputCondition condition, GdkInputFunction funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy)gtk_input_add_full;
	void function(guint inputHandlerId)gtk_input_remove;
	guint function(GtkKeySnoopFunc snooper, gpointer funcData)gtk_key_snooper_install;
	void function(guint snooperHandlerId)gtk_key_snooper_remove;
	GdkEvent* function()gtk_get_current_event;
	guint32 function()gtk_get_current_event_time;
	gboolean function(GdkModifierType* state)gtk_get_current_event_state;
	GtkWidget* function(GdkEvent* event)gtk_get_event_widget;
	void function(GtkWidget* widget, GdkEvent* event)gtk_propagate_event;
	
	// gtk.Timeout
	
	guint function(guint32 interval, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy)gtk_timeout_add_full;
	guint function(guint32 interval, GtkFunction funct, gpointer data)gtk_timeout_add;
	void function(guint timeoutHandlerId)gtk_timeout_remove;
	
	// gtk.Idle
	
	guint function(GtkFunction funct, gpointer data)gtk_idle_add;
	guint function(gint priority, GtkFunction funct, gpointer data)gtk_idle_add_priority;
	guint function(gint priority, GtkFunction funct, GtkCallbackMarshal marshal, gpointer data, GtkDestroyNotify destroy)gtk_idle_add_full;
	void function(guint idleHandlerId)gtk_idle_remove;
	void function(gpointer data)gtk_idle_remove_by_data;
	
	// gtk.AccelGroup
	
	GtkAccelGroup* function()gtk_accel_group_new;
	void function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, GClosure* closure)gtk_accel_group_connect;
	void function(GtkAccelGroup* accelGroup, gchar* accelPath, GClosure* closure)gtk_accel_group_connect_by_path;
	gboolean function(GtkAccelGroup* accelGroup, GClosure* closure)gtk_accel_group_disconnect;
	gboolean function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods)gtk_accel_group_disconnect_key;
	GtkAccelGroupEntry* function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, guint* nEntries)gtk_accel_group_query;
	gboolean function(GtkAccelGroup* accelGroup, GQuark accelQuark, GObject* acceleratable, guint accelKey, GdkModifierType accelMods)gtk_accel_group_activate;
	void function(GtkAccelGroup* accelGroup)gtk_accel_group_lock;
	void function(GtkAccelGroup* accelGroup)gtk_accel_group_unlock;
	GtkAccelGroup* function(GClosure* closure)gtk_accel_group_from_accel_closure;
	gboolean function(GObject* object, guint accelKey, GdkModifierType accelMods)gtk_accel_groups_activate;
	GSList* function(GObject* object)gtk_accel_groups_from_object;
	GtkAccelKey* function(GtkAccelGroup* accelGroup, GtkAccelGroupFindFunc findFunc, gpointer data)gtk_accel_group_find;
	gboolean function(guint keyval, GdkModifierType modifiers)gtk_accelerator_valid;
	void function(gchar* accelerator, guint* acceleratorKey, GdkModifierType* acceleratorMods)gtk_accelerator_parse;
	gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods)gtk_accelerator_name;
	gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods)gtk_accelerator_get_label;
	void function(GdkModifierType defaultModMask)gtk_accelerator_set_default_mod_mask;
	guint function()gtk_accelerator_get_default_mod_mask;
	
	// gtk.AccelMap
	
	void function(gchar* accelPath, guint accelKey, GdkModifierType accelMods)gtk_accel_map_add_entry;
	gboolean function(gchar* accelPath, GtkAccelKey* key)gtk_accel_map_lookup_entry;
	gboolean function(gchar* accelPath, guint accelKey, GdkModifierType accelMods, gboolean replace)gtk_accel_map_change_entry;
	void function(gchar* fileName)gtk_accel_map_load;
	void function(gchar* fileName)gtk_accel_map_save;
	void function(gpointer data, GtkAccelMapForeach foreachFunc)gtk_accel_map_foreach;
	void function(gint fd)gtk_accel_map_load_fd;
	void function(gint fd)gtk_accel_map_save_fd;
	void function(GScanner* scanner)gtk_accel_map_load_scanner;
	void function(gchar* filterPattern)gtk_accel_map_add_filter;
	void function(gpointer data, GtkAccelMapForeach foreachFunc)gtk_accel_map_foreach_unfiltered;
	GtkAccelMap* function()gtk_accel_map_get;
	void function(gchar* accelPath)gtk_accel_map_lock_path;
	void function(gchar* accelPath)gtk_accel_map_unlock_path;
	
	// gtk.Clipboard
	
	GtkClipboard* function(GdkAtom selection)gtk_clipboard_get;
	GtkClipboard* function(GdkDisplay* display, GdkAtom selection)gtk_clipboard_get_for_display;
	GdkDisplay* function(GtkClipboard* clipboard)gtk_clipboard_get_display;
	gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, gpointer userData)gtk_clipboard_set_with_data;
	gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, GObject* owner)gtk_clipboard_set_with_owner;
	GObject* function(GtkClipboard* clipboard)gtk_clipboard_get_owner;
	void function(GtkClipboard* clipboard)gtk_clipboard_clear;
	void function(GtkClipboard* clipboard, gchar* text, gint len)gtk_clipboard_set_text;
	void function(GtkClipboard* clipboard, GdkPixbuf* pixbuf)gtk_clipboard_set_image;
	void function(GtkClipboard* clipboard, GdkAtom target, GtkClipboardReceivedFunc callback, gpointer userData)gtk_clipboard_request_contents;
	void function(GtkClipboard* clipboard, GtkClipboardTextReceivedFunc callback, gpointer userData)gtk_clipboard_request_text;
	void function(GtkClipboard* clipboard, GtkClipboardImageReceivedFunc callback, gpointer userData)gtk_clipboard_request_image;
	void function(GtkClipboard* clipboard, GtkClipboardTargetsReceivedFunc callback, gpointer userData)gtk_clipboard_request_targets;
	void function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GtkClipboardRichTextReceivedFunc callback, gpointer userData)gtk_clipboard_request_rich_text;
	GtkSelectionData* function(GtkClipboard* clipboard, GdkAtom target)gtk_clipboard_wait_for_contents;
	gchar* function(GtkClipboard* clipboard)gtk_clipboard_wait_for_text;
	GdkPixbuf* function(GtkClipboard* clipboard)gtk_clipboard_wait_for_image;
	guint8* function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GdkAtom* format, gsize* length)gtk_clipboard_wait_for_rich_text;
	gboolean function(GtkClipboard* clipboard)gtk_clipboard_wait_is_text_available;
	gboolean function(GtkClipboard* clipboard)gtk_clipboard_wait_is_image_available;
	gboolean function(GtkClipboard* clipboard, GtkTextBuffer* buffer)gtk_clipboard_wait_is_rich_text_available;
	gboolean function(GtkClipboard* clipboard, GdkAtom** targets, gint* nTargets)gtk_clipboard_wait_for_targets;
	gboolean function(GtkClipboard* clipboard, GdkAtom target)gtk_clipboard_wait_is_target_available;
	void function(GtkClipboard* clipboard, GtkTargetEntry* targets, gint nTargets)gtk_clipboard_set_can_store;
	void function(GtkClipboard* clipboard)gtk_clipboard_store;
	
	// gtk.DragAndDrop
	
	void function(GtkWidget* widget, GtkDestDefaults flags, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_drag_dest_set;
	void function(GtkWidget* widget, GdkWindow* proxyWindow, GdkDragProtocol protocol, gboolean useCoordinates)gtk_drag_dest_set_proxy;
	void function(GtkWidget* widget)gtk_drag_dest_unset;
	GdkAtom function(GtkWidget* widget, GdkDragContext* context, GtkTargetList* targetList)gtk_drag_dest_find_target;
	GtkTargetList* function(GtkWidget* widget)gtk_drag_dest_get_target_list;
	void function(GtkWidget* widget, GtkTargetList* targetList)gtk_drag_dest_set_target_list;
	void function(GtkWidget* widget)gtk_drag_dest_add_text_targets;
	void function(GtkWidget* widget)gtk_drag_dest_add_image_targets;
	void function(GtkWidget* widget)gtk_drag_dest_add_uri_targets;
	void function(GtkWidget* widget, gboolean trackMotion)gtk_drag_dest_set_track_motion;
	gboolean function(GtkWidget* widget)gtk_drag_dest_get_track_motion;
	void function(GdkDragContext* context, gboolean success, gboolean del, guint32 time)gtk_drag_finish;
	void function(GtkWidget* widget, GdkDragContext* context, GdkAtom target, guint32 time)gtk_drag_get_data;
	GtkWidget* function(GdkDragContext* context)gtk_drag_get_source_widget;
	void function(GtkWidget* widget)gtk_drag_highlight;
	void function(GtkWidget* widget)gtk_drag_unhighlight;
	GdkDragContext* function(GtkWidget* widget, GtkTargetList* targets, GdkDragAction actions, gint button, GdkEvent* event)gtk_drag_begin;
	void function(GdkDragContext* context, GtkWidget* widget, gint hotX, gint hotY)gtk_drag_set_icon_widget;
	void function(GdkDragContext* context, GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask, gint hotX, gint hotY)gtk_drag_set_icon_pixmap;
	void function(GdkDragContext* context, GdkPixbuf* pixbuf, gint hotX, gint hotY)gtk_drag_set_icon_pixbuf;
	void function(GdkDragContext* context, gchar* stockId, gint hotX, gint hotY)gtk_drag_set_icon_stock;
	void function(GdkDragContext* context, gchar* iconName, gint hotX, gint hotY)gtk_drag_set_icon_name;
	void function(GdkDragContext* context)gtk_drag_set_icon_default;
	void function(GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask, gint hotX, gint hotY)gtk_drag_set_default_icon;
	gboolean function(GtkWidget* widget, gint startX, gint startY, gint currentX, gint currentY)gtk_drag_check_threshold;
	void function(GtkWidget* widget, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_drag_source_set;
	void function(GtkWidget* widget, GdkColormap* colormap, GdkPixmap* pixmap, GdkBitmap* mask)gtk_drag_source_set_icon;
	void function(GtkWidget* widget, GdkPixbuf* pixbuf)gtk_drag_source_set_icon_pixbuf;
	void function(GtkWidget* widget, gchar* stockId)gtk_drag_source_set_icon_stock;
	void function(GtkWidget* widget, gchar* iconName)gtk_drag_source_set_icon_name;
	void function(GtkWidget* widget)gtk_drag_source_unset;
	void function(GtkWidget* widget, GtkTargetList* targetList)gtk_drag_source_set_target_list;
	GtkTargetList* function(GtkWidget* widget)gtk_drag_source_get_target_list;
	void function(GtkWidget* widget)gtk_drag_source_add_text_targets;
	void function(GtkWidget* widget)gtk_drag_source_add_image_targets;
	void function(GtkWidget* widget)gtk_drag_source_add_uri_targets;
	
	// gtk.IconTheme
	
	GtkIconTheme* function()gtk_icon_theme_new;
	GtkIconTheme* function()gtk_icon_theme_get_default;
	GtkIconTheme* function(GdkScreen* screen)gtk_icon_theme_get_for_screen;
	void function(GtkIconTheme* iconTheme, GdkScreen* screen)gtk_icon_theme_set_screen;
	void function(GtkIconTheme* iconTheme, gchar*[] path, gint nElements)gtk_icon_theme_set_search_path;
	void function(GtkIconTheme* iconTheme, gchar**[] path, gint* nElements)gtk_icon_theme_get_search_path;
	void function(GtkIconTheme* iconTheme, gchar* path)gtk_icon_theme_append_search_path;
	void function(GtkIconTheme* iconTheme, gchar* path)gtk_icon_theme_prepend_search_path;
	void function(GtkIconTheme* iconTheme, gchar* themeName)gtk_icon_theme_set_custom_theme;
	gboolean function(GtkIconTheme* iconTheme, gchar* iconName)gtk_icon_theme_has_icon;
	GtkIconInfo* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags)gtk_icon_theme_lookup_icon;
	GtkIconInfo* function(GtkIconTheme* iconTheme, gchar*[] iconNames, gint size, GtkIconLookupFlags flags)gtk_icon_theme_choose_icon;
	GdkPixbuf* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags, GError** error)gtk_icon_theme_load_icon;
	GList* function(GtkIconTheme* iconTheme)gtk_icon_theme_list_contexts;
	GList* function(GtkIconTheme* iconTheme, gchar* context)gtk_icon_theme_list_icons;
	gint* function(GtkIconTheme* iconTheme, gchar* iconName)gtk_icon_theme_get_icon_sizes;
	char* function(GtkIconTheme* iconTheme)gtk_icon_theme_get_example_icon_name;
	gboolean function(GtkIconTheme* iconTheme)gtk_icon_theme_rescan_if_needed;
	void function(gchar* iconName, gint size, GdkPixbuf* pixbuf)gtk_icon_theme_add_builtin_icon;
	
	// gtk.IconInfo
	
	GtkIconInfo* function(GtkIconInfo* iconInfo)gtk_icon_info_copy;
	void function(GtkIconInfo* iconInfo)gtk_icon_info_free;
	gint function(GtkIconInfo* iconInfo)gtk_icon_info_get_base_size;
	gchar* function(GtkIconInfo* iconInfo)gtk_icon_info_get_filename;
	GdkPixbuf* function(GtkIconInfo* iconInfo)gtk_icon_info_get_builtin_pixbuf;
	GdkPixbuf* function(GtkIconInfo* iconInfo, GError** error)gtk_icon_info_load_icon;
	void function(GtkIconInfo* iconInfo, gboolean rawCoordinates)gtk_icon_info_set_raw_coordinates;
	gboolean function(GtkIconInfo* iconInfo, GdkRectangle* rectangle)gtk_icon_info_get_embedded_rect;
	gboolean function(GtkIconInfo* iconInfo, GdkPoint** points, gint* nPoints)gtk_icon_info_get_attach_points;
	gchar* function(GtkIconInfo* iconInfo)gtk_icon_info_get_display_name;
	
	// gtk.StockItem
	
	void function(GtkStockItem* items, guint nItems)gtk_stock_add;
	void function(GtkStockItem* items, guint nItems)gtk_stock_add_static;
	GtkStockItem* function(GtkStockItem* item)gtk_stock_item_copy;
	void function(GtkStockItem* item)gtk_stock_item_free;
	GSList* function()gtk_stock_list_ids;
	gboolean function(gchar* stockId, GtkStockItem* item)gtk_stock_lookup;
	void function(gchar* domain, GtkTranslateFunc func, gpointer data, GtkDestroyNotify notify)gtk_stock_set_translate_func;
	
	// gtk.IconSource
	
	GtkIconSource* function(GtkIconSource* source)gtk_icon_source_copy;
	void function(GtkIconSource* source)gtk_icon_source_free;
	GtkTextDirection function(GtkIconSource* source)gtk_icon_source_get_direction;
	gboolean function(GtkIconSource* source)gtk_icon_source_get_direction_wildcarded;
	gchar* function(GtkIconSource* source)gtk_icon_source_get_filename;
	GdkPixbuf* function(GtkIconSource* source)gtk_icon_source_get_pixbuf;
	gchar* function(GtkIconSource* source)gtk_icon_source_get_icon_name;
	GtkIconSize function(GtkIconSource* source)gtk_icon_source_get_size;
	gboolean function(GtkIconSource* source)gtk_icon_source_get_size_wildcarded;
	GtkStateType function(GtkIconSource* source)gtk_icon_source_get_state;
	gboolean function(GtkIconSource* source)gtk_icon_source_get_state_wildcarded;
	GtkIconSource* function()gtk_icon_source_new;
	void function(GtkIconSource* source, GtkTextDirection direction)gtk_icon_source_set_direction;
	void function(GtkIconSource* source, gboolean setting)gtk_icon_source_set_direction_wildcarded;
	void function(GtkIconSource* source, gchar* filename)gtk_icon_source_set_filename;
	void function(GtkIconSource* source, GdkPixbuf* pixbuf)gtk_icon_source_set_pixbuf;
	void function(GtkIconSource* source, gchar* iconName)gtk_icon_source_set_icon_name;
	void function(GtkIconSource* source, GtkIconSize size)gtk_icon_source_set_size;
	void function(GtkIconSource* source, gboolean setting)gtk_icon_source_set_size_wildcarded;
	void function(GtkIconSource* source, GtkStateType state)gtk_icon_source_set_state;
	void function(GtkIconSource* source, gboolean setting)gtk_icon_source_set_state_wildcarded;
	
	// gtk.IconFactory
	
	void function(GtkIconFactory* factory, gchar* stockId, GtkIconSet* iconSet)gtk_icon_factory_add;
	void function(GtkIconFactory* factory)gtk_icon_factory_add_default;
	GtkIconSet* function(GtkIconFactory* factory, gchar* stockId)gtk_icon_factory_lookup;
	GtkIconSet* function(gchar* stockId)gtk_icon_factory_lookup_default;
	GtkIconFactory* function()gtk_icon_factory_new;
	void function(GtkIconFactory* factory)gtk_icon_factory_remove_default;
	
	// gtk.IconSet
	
	void function(GtkIconSet* iconSet, GtkIconSource* source)gtk_icon_set_add_source;
	GtkIconSet* function(GtkIconSet* iconSet)gtk_icon_set_copy;
	GtkIconSet* function()gtk_icon_set_new;
	GtkIconSet* function(GdkPixbuf* pixbuf)gtk_icon_set_new_from_pixbuf;
	GtkIconSet* function(GtkIconSet* iconSet)gtk_icon_set_ref;
	GdkPixbuf* function(GtkIconSet* iconSet, GtkStyle* style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, char* detail)gtk_icon_set_render_icon;
	void function(GtkIconSet* iconSet)gtk_icon_set_unref;
	void function(GtkIconSet* iconSet, GtkIconSize** sizes, gint* nSizes)gtk_icon_set_get_sizes;
	
	// gtk.IconSize
	
	gboolean function(GtkIconSize size, gint* width, gint* height)gtk_icon_size_lookup;
	gboolean function(GtkSettings* settings, GtkIconSize size, gint* width, gint* height)gtk_icon_size_lookup_for_settings;
	GtkIconSize function(gchar* name, gint width, gint height)gtk_icon_size_register;
	void function(gchar* alia, GtkIconSize target)gtk_icon_size_register_alias;
	GtkIconSize function(gchar* name)gtk_icon_size_from_name;
	gchar* function(GtkIconSize size)gtk_icon_size_get_name;
	
	// gtk.RcStyle
	
	GScanner* function()gtk_rc_scanner_new;
	GtkStyle* function(GtkWidget* widget)gtk_rc_get_style;
	GtkStyle* function(GtkSettings* settings, char* widgetPath, char* classPath, GType type)gtk_rc_get_style_by_paths;
	void function(GtkRcStyle* rcStyle, gchar* pattern)gtk_rc_add_widget_name_style;
	void function(GtkRcStyle* rcStyle, gchar* pattern)gtk_rc_add_widget_class_style;
	void function(GtkRcStyle* rcStyle, gchar* pattern)gtk_rc_add_class_style;
	void function(gchar* filename)gtk_rc_parse;
	void function(gchar* rcString)gtk_rc_parse_string;
	gboolean function()gtk_rc_reparse_all;
	gboolean function(GtkSettings* settings, gboolean forceLoad)gtk_rc_reparse_all_for_settings;
	void function(GtkSettings* settings)gtk_rc_reset_styles;
	void function(gchar* filename)gtk_rc_add_default_file;
	gchar** function()gtk_rc_get_default_files;
	void function(gchar** filenames)gtk_rc_set_default_files;
	guint function(GScanner* scanner, GdkColor* color)gtk_rc_parse_color;
	guint function(GScanner* scanner, GtkRcStyle* style, GdkColor* color)gtk_rc_parse_color_full;
	guint function(GScanner* scanner, GtkStateType* state)gtk_rc_parse_state;
	guint function(GScanner* scanner, GtkPathPriorityType* priority)gtk_rc_parse_priority;
	gchar* function(gchar* moduleFile)gtk_rc_find_module_in_path;
	gchar* function(GtkSettings* settings, GScanner* scanner, gchar* pixmapFile)gtk_rc_find_pixmap_in_path;
	gchar* function()gtk_rc_get_module_dir;
	gchar* function()gtk_rc_get_im_module_path;
	gchar* function()gtk_rc_get_im_module_file;
	gchar* function()gtk_rc_get_theme_dir;
	GtkRcStyle* function()gtk_rc_style_new;
	GtkRcStyle* function(GtkRcStyle* orig)gtk_rc_style_copy;
	void function(GtkRcStyle* rcStyle)gtk_rc_style_ref;
	void function(GtkRcStyle* rcStyle)gtk_rc_style_unref;
	
	// gtk.Settings
	
	GtkSettings* function()gtk_settings_get_default;
	GtkSettings* function(GdkScreen* screen)gtk_settings_get_for_screen;
	void function(GParamSpec* pspec)gtk_settings_install_property;
	void function(GParamSpec* pspec, GtkRcPropertyParser parser)gtk_settings_install_property_parser;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue)gtk_rc_property_parse_color;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue)gtk_rc_property_parse_enum;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue)gtk_rc_property_parse_flags;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue)gtk_rc_property_parse_requisition;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue)gtk_rc_property_parse_border;
	void function(GtkSettings* settings, gchar* name, GtkSettingsValue* svalue)gtk_settings_set_property_value;
	void function(GtkSettings* settings, gchar* name, gchar* vString, gchar* origin)gtk_settings_set_string_property;
	void function(GtkSettings* settings, gchar* name, glong vLong, gchar* origin)gtk_settings_set_long_property;
	void function(GtkSettings* settings, gchar* name, gdouble vDouble, gchar* origin)gtk_settings_set_double_property;
	
	// gtk.BindingSet
	
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, GSList* bindingArgs)gtk_binding_entry_add_signall;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers)gtk_binding_entry_clear;
	guint function(GScanner* scanner)gtk_binding_parse_binding;
	GtkBindingSet* function(gchar* setName)gtk_binding_set_new;
	GtkBindingSet* function(gpointer objectClass)gtk_binding_set_by_class;
	GtkBindingSet* function(gchar* setName)gtk_binding_set_find;
	gboolean function(GtkObject* object, guint keyval, GdkModifierType modifiers)gtk_bindings_activate;
	gboolean function(GtkObject* object, GdkEventKey* event)gtk_bindings_activate_event;
	gboolean function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, GtkObject* object)gtk_binding_set_activate;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, guint nArgs, ... )gtk_binding_entry_add_signal;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers)gtk_binding_entry_skip;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers)gtk_binding_entry_remove;
	void function(GtkBindingSet* bindingSet, GtkPathType pathType, gchar* pathPattern, GtkPathPriorityType priority)gtk_binding_set_add_path;
	
	// gtk.StandardEnumerations
	
	
	// gtk.GCs
	
	GdkGC* function(gint depth, GdkColormap* colormap, GdkGCValues* values, GdkGCValuesMask valuesMask)gtk_gc_get;
	void function(GdkGC* gc)gtk_gc_release;
	
	// gtk.Style
	
	GtkStyle* function()gtk_style_new;
	GtkStyle* function(GtkStyle* style)gtk_style_copy;
	GtkStyle* function(GtkStyle* style, GdkWindow* window)gtk_style_attach;
	void function(GtkStyle* style)gtk_style_detach;
	GtkStyle* function(GtkStyle* style)gtk_style_ref;
	void function(GtkStyle* style)gtk_style_unref;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType)gtk_style_set_background;
	void function(GtkStyle* style, GdkWindow* window, gboolean setBg, GtkStateType stateType, GdkRectangle* area, gint x, gint y, gint width, gint height)gtk_style_apply_default_background;
	gboolean function(GtkStyle* style, gchar* colorName, GdkColor* color)gtk_style_lookup_color;
	GtkIconSet* function(GtkStyle* style, gchar* stockId)gtk_style_lookup_icon_set;
	GdkPixbuf* function(GtkStyle* style, GtkIconSource* source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, gchar* detail)gtk_style_render_icon;
	GdkFont* function(GtkStyle* style)gtk_style_get_font;
	void function(GtkStyle* style, GdkFont* font)gtk_style_set_font;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x1, gint x2, gint y)gtk_draw_hline;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint y1_, gint y2_, gint x)gtk_draw_vline;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_shadow;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkPoint* points, gint npoints, gboolean fill)gtk_draw_polygon;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GtkArrowType arrowType, gboolean fill, gint x, gint y, gint width, gint height)gtk_draw_arrow;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_diamond;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x, gint y, gchar* string)gtk_draw_string;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_box;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth)gtk_draw_box_gap;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_check;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide)gtk_draw_extension;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_flat_box;
	void function(GtkStyle* style, GdkWindow* window, gint x, gint y, gint width, gint height)gtk_draw_focus;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkOrientation orientation)gtk_draw_handle;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_option;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth)gtk_draw_shadow_gap;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height, GtkOrientation orientation)gtk_draw_slider;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, gint x, gint y, gint width, gint height)gtk_draw_tab;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gint x, gint y, GtkExpanderStyle expanderStyle)gtk_draw_expander;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gboolean useText, gint x, gint y, PangoLayout* layout)gtk_draw_layout;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkWindowEdge edge, gint x, gint y, gint width, gint height)gtk_draw_resize_grip;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GtkArrowType arrowType, gboolean fill, gint x, gint y, gint width, gint height)gtk_paint_arrow;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_box;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth)gtk_paint_box_gap;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_check;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_diamond;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide)gtk_paint_extension;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_flat_box;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_focus;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation)gtk_paint_handle;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x1, gint x2, gint y)gtk_paint_hline;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_option;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GdkPoint* points, gint npoints, gboolean fill)gtk_paint_polygon;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_shadow;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth)gtk_paint_shadow_gap;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation)gtk_paint_slider;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gchar* string)gtk_paint_string;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GtkShadowType shadowType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height)gtk_paint_tab;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint y1_, gint y2_, gint x)gtk_paint_vline;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, GtkExpanderStyle expanderStyle)gtk_paint_expander;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, gboolean useText, GdkRectangle* area, GtkWidget* widget, gchar* detail, gint x, gint y, PangoLayout* layout)gtk_paint_layout;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType, GdkRectangle* area, GtkWidget* widget, gchar* detail, GdkWindowEdge edge, gint x, gint y, gint width, gint height)gtk_paint_resize_grip;
	void function(GtkWidget* widget, GdkDrawable* drawable, GdkRectangle* area, GdkRectangle* location, gboolean isPrimary, GtkTextDirection direction, gboolean drawArrow)gtk_draw_insertion_cursor;
	GtkBorder* function(GtkBorder* border)gtk_border_copy;
	void function(GtkBorder* border)gtk_border_free;
	
	// gtk.TargetList
	
	GtkTargetList* function(GtkTargetEntry* targets, guint ntargets)gtk_target_list_new;
	GtkTargetList* function(GtkTargetList* list)gtk_target_list_ref;
	void function(GtkTargetList* list)gtk_target_list_unref;
	void function(GtkTargetList* list, GdkAtom target, guint flags, guint info)gtk_target_list_add;
	void function(GtkTargetList* list, GtkTargetEntry* targets, guint ntargets)gtk_target_list_add_table;
	void function(GtkTargetList* list, guint info)gtk_target_list_add_text_targets;
	void function(GtkTargetList* list, guint info, gboolean writable)gtk_target_list_add_image_targets;
	void function(GtkTargetList* list, guint info)gtk_target_list_add_uri_targets;
	void function(GtkTargetList* list, guint info, gboolean deserializable, GtkTextBuffer* buffer)gtk_target_list_add_rich_text_targets;
	void function(GtkTargetList* list, GdkAtom target)gtk_target_list_remove;
	gboolean function(GtkTargetList* list, GdkAtom target, guint* info)gtk_target_list_find;
	void function(GtkTargetEntry* targets, gint nTargets)gtk_target_table_free;
	GtkTargetEntry* function(GtkTargetList* list, gint* nTargets)gtk_target_table_new_from_list;
	gboolean function(GdkAtom* targets, gint nTargets, gboolean writable)gtk_targets_include_image;
	gboolean function(GdkAtom* targets, gint nTargets)gtk_targets_include_text;
	gboolean function(GdkAtom* targets, gint nTargets)gtk_targets_include_uri;
	gboolean function(GdkAtom* targets, gint nTargets, GtkTextBuffer* buffer)gtk_targets_include_rich_text;
	
	// gtk.Selections
	
	gboolean function(GtkWidget* widget, GdkAtom selection, guint32 time)gtk_selection_owner_set;
	gboolean function(GdkDisplay* display, GtkWidget* widget, GdkAtom selection, guint32 time)gtk_selection_owner_set_for_display;
	void function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint info)gtk_selection_add_target;
	void function(GtkWidget* widget, GdkAtom selection, GtkTargetEntry* targets, guint ntargets)gtk_selection_add_targets;
	void function(GtkWidget* widget, GdkAtom selection)gtk_selection_clear_targets;
	gboolean function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint32 time)gtk_selection_convert;
	void function(GtkSelectionData* selectionData, GdkAtom type, gint format, guchar* data, gint length)gtk_selection_data_set;
	gboolean function(GtkSelectionData* selectionData, gchar* str, gint len)gtk_selection_data_set_text;
	guchar* function(GtkSelectionData* selectionData)gtk_selection_data_get_text;
	gboolean function(GtkSelectionData* selectionData, GdkPixbuf* pixbuf)gtk_selection_data_set_pixbuf;
	GdkPixbuf* function(GtkSelectionData* selectionData)gtk_selection_data_get_pixbuf;
	gboolean function(GtkSelectionData* selectionData, gchar** uris)gtk_selection_data_set_uris;
	gchar** function(GtkSelectionData* selectionData)gtk_selection_data_get_uris;
	gboolean function(GtkSelectionData* selectionData, GdkAtom** targets, gint* nAtoms)gtk_selection_data_get_targets;
	gboolean function(GtkSelectionData* selectionData, gboolean writable)gtk_selection_data_targets_include_image;
	gboolean function(GtkSelectionData* selectionData)gtk_selection_data_targets_include_text;
	gboolean function(GtkSelectionData* selectionData)gtk_selection_data_targets_include_uri;
	gboolean function(GtkSelectionData* selectionData, GtkTextBuffer* buffer)gtk_selection_data_targets_include_rich_text;
	void function(GtkWidget* widget)gtk_selection_remove_all;
	gboolean function(GtkWidget* widget, GdkEventSelection* event)gtk_selection_clear;
	GtkSelectionData* function(GtkSelectionData* data)gtk_selection_data_copy;
	void function(GtkSelectionData* data)gtk_selection_data_free;
	
	// gtk.Version
	
	gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro)gtk_check_version;
	
	// gtk.Signals
	
	guint function(gchar* name, GtkSignalRunType signalFlags, GtkType objectType, guint functionOffset, GtkSignalMarshaller marshaller, GtkType returnVal, guint nArgs, ... )gtk_signal_new;
	guint function(gchar* name, GtkSignalRunType signalFlags, GtkType objectType, guint functionOffset, GtkSignalMarshaller marshaller, GtkType returnVal, guint nArgs, GtkType* args)gtk_signal_newv;
	void function(GtkObject* object, guint signalId, ... )gtk_signal_emit;
	void function(GtkObject* object, gchar* name, ... )gtk_signal_emit_by_name;
	void function(GtkObject* object, guint signalId, GtkArg* args)gtk_signal_emitv;
	void function(GtkObject* object, gchar* name, GtkArg* args)gtk_signal_emitv_by_name;
	void function(GtkObject* object, gchar* name)gtk_signal_emit_stop_by_name;
	gulong function(GtkObject* object, gchar* name, GtkSignalFunc func, GtkCallbackMarshal unsupported, gpointer data, GtkDestroyNotify destroyFunc, gint objectSignal, gint after)gtk_signal_connect_full;
	void function(GtkObject* object, gchar* name, GtkSignalFunc func, gpointer funcData, GtkObject* aliveObject)gtk_signal_connect_while_alive;
	void function(GtkObject* object, gchar* name, GtkSignalFunc func, GtkObject* aliveObject)gtk_signal_connect_object_while_alive;
	
	// gtk.Types
	
	void function(GTypeDebugFlags debugFlags)gtk_type_init;
	GtkType function(GtkType parentType, GtkTypeInfo* gtkinfo)gtk_type_unique;
	gpointer function(GtkType type)gtk_type_class;
	gpointer function(GtkType type)gtk_type_new;
	GtkEnumValue* function(GtkType enumType)gtk_type_enum_get_values;
	GtkFlagValue* function(GtkType flagsType)gtk_type_flags_get_values;
	GtkEnumValue* function(GtkType enumType, gchar* valueName)gtk_type_enum_find_value;
	GtkFlagValue* function(GtkType flagsType, gchar* valueName)gtk_type_flags_find_value;
	
	// gtk.Dialog
	
	GtkWidget* function()gtk_dialog_new;
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkDialogFlags flags, gchar* firstButtonText, ... )gtk_dialog_new_with_buttons;
	gint function(GtkDialog* dialog)gtk_dialog_run;
	void function(GtkDialog* dialog, gint responseId)gtk_dialog_response;
	GtkWidget* function(GtkDialog* dialog, gchar* buttonText, gint responseId)gtk_dialog_add_button;
	void function(GtkDialog* dialog, gchar* firstButtonText, ... )gtk_dialog_add_buttons;
	void function(GtkDialog* dialog, GtkWidget* child, gint responseId)gtk_dialog_add_action_widget;
	gboolean function(GtkDialog* dialog)gtk_dialog_get_has_separator;
	void function(GtkDialog* dialog, gint responseId)gtk_dialog_set_default_response;
	void function(GtkDialog* dialog, gboolean setting)gtk_dialog_set_has_separator;
	void function(GtkDialog* dialog, gint responseId, gboolean setting)gtk_dialog_set_response_sensitive;
	gint function(GtkDialog* dialog, GtkWidget* widget)gtk_dialog_get_response_for_widget;
	gboolean function(GdkScreen* screen)gtk_alternative_dialog_button_order;
	void function(GtkDialog* dialog, gint firstResponseId, ... )gtk_dialog_set_alternative_button_order;
	void function(GtkDialog* dialog, gint nParams, gint* newOrder)gtk_dialog_set_alternative_button_order_from_array;
	
	// gtk.Invisible
	
	GtkWidget* function()gtk_invisible_new;
	GtkWidget* function(GdkScreen* screen)gtk_invisible_new_for_screen;
	void function(GtkInvisible* invisible, GdkScreen* screen)gtk_invisible_set_screen;
	GdkScreen* function(GtkInvisible* invisible)gtk_invisible_get_screen;
	
	// gtk.MessageDialog
	
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... )gtk_message_dialog_new;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... )gtk_message_dialog_new_with_markup;
	void function(GtkMessageDialog* messageDialog, gchar* str)gtk_message_dialog_set_markup;
	void function(GtkMessageDialog* dialog, GtkWidget* image)gtk_message_dialog_set_image;
	void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... )gtk_message_dialog_format_secondary_text;
	void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... )gtk_message_dialog_format_secondary_markup;
	
	// gtk.PopupBox
	
	
	// gtk.Window
	
	GtkWidget* function(GtkWindowType type)gtk_window_new;
	void function(GtkWindow* window, gchar* title)gtk_window_set_title;
	void function(GtkWindow* window, gchar* wmclassName, gchar* wmclassClass)gtk_window_set_wmclass;
	void function(GtkWindow* window, gint allowShrink, gint allowGrow, gint autoShrink)gtk_window_set_policy;
	void function(GtkWindow* window, gboolean resizable)gtk_window_set_resizable;
	gboolean function(GtkWindow* window)gtk_window_get_resizable;
	void function(GtkWindow* window, GtkAccelGroup* accelGroup)gtk_window_add_accel_group;
	void function(GtkWindow* window, GtkAccelGroup* accelGroup)gtk_window_remove_accel_group;
	gboolean function(GtkWindow* window)gtk_window_activate_focus;
	gboolean function(GtkWindow* window)gtk_window_activate_default;
	void function(GtkWindow* window, gboolean modal)gtk_window_set_modal;
	void function(GtkWindow* window, gint width, gint height)gtk_window_set_default_size;
	void function(GtkWindow* window, GtkWidget* geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask)gtk_window_set_geometry_hints;
	void function(GtkWindow* window, GdkGravity gravity)gtk_window_set_gravity;
	GdkGravity function(GtkWindow* window)gtk_window_get_gravity;
	void function(GtkWindow* window, GtkWindowPosition position)gtk_window_set_position;
	void function(GtkWindow* window, GtkWindow* parent)gtk_window_set_transient_for;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_destroy_with_parent;
	void function(GtkWindow* window, GdkScreen* screen)gtk_window_set_screen;
	GdkScreen* function(GtkWindow* window)gtk_window_get_screen;
	gboolean function(GtkWindow* window)gtk_window_is_active;
	gboolean function(GtkWindow* window)gtk_window_has_toplevel_focus;
	GList* function()gtk_window_list_toplevels;
	void function(GtkWindow* window, guint keyval, GtkWidget* target)gtk_window_add_mnemonic;
	void function(GtkWindow* window, guint keyval, GtkWidget* target)gtk_window_remove_mnemonic;
	gboolean function(GtkWindow* window, guint keyval, GdkModifierType modifier)gtk_window_mnemonic_activate;
	gboolean function(GtkWindow* window, GdkEventKey* event)gtk_window_activate_key;
	gboolean function(GtkWindow* window, GdkEventKey* event)gtk_window_propagate_key_event;
	GtkWidget* function(GtkWindow* window)gtk_window_get_focus;
	void function(GtkWindow* window, GtkWidget* focus)gtk_window_set_focus;
	void function(GtkWindow* window, GtkWidget* defaultWidget)gtk_window_set_default;
	void function(GtkWindow* window)gtk_window_present;
	void function(GtkWindow* window, guint32 timestamp)gtk_window_present_with_time;
	void function(GtkWindow* window)gtk_window_iconify;
	void function(GtkWindow* window)gtk_window_deiconify;
	void function(GtkWindow* window)gtk_window_stick;
	void function(GtkWindow* window)gtk_window_unstick;
	void function(GtkWindow* window)gtk_window_maximize;
	void function(GtkWindow* window)gtk_window_unmaximize;
	void function(GtkWindow* window)gtk_window_fullscreen;
	void function(GtkWindow* window)gtk_window_unfullscreen;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_keep_above;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_keep_below;
	void function(GtkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp)gtk_window_begin_resize_drag;
	void function(GtkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp)gtk_window_begin_move_drag;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_decorated;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_deletable;
	void function(GtkWindow* window, gint left, gint top, gint right, gint bottom)gtk_window_set_frame_dimensions;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_has_frame;
	void function(GtkWindow* window, GdkModifierType modifier)gtk_window_set_mnemonic_modifier;
	void function(GtkWindow* window, gchar* role)gtk_window_set_role;
	void function(GtkWindow* window, GdkWindowTypeHint hint)gtk_window_set_type_hint;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_skip_taskbar_hint;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_skip_pager_hint;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_urgency_hint;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_accept_focus;
	void function(GtkWindow* window, gboolean setting)gtk_window_set_focus_on_map;
	void function(GtkWindow* window, gchar* startupId)gtk_window_set_startup_id;
	gboolean function(GtkWindow* window)gtk_window_get_decorated;
	gboolean function(GtkWindow* window)gtk_window_get_deletable;
	GList* function()gtk_window_get_default_icon_list;
	void function(GtkWindow* window, gint* width, gint* height)gtk_window_get_default_size;
	gboolean function(GtkWindow* window)gtk_window_get_destroy_with_parent;
	void function(GtkWindow* window, gint* left, gint* top, gint* right, gint* bottom)gtk_window_get_frame_dimensions;
	gboolean function(GtkWindow* window)gtk_window_get_has_frame;
	GdkPixbuf* function(GtkWindow* window)gtk_window_get_icon;
	GList* function(GtkWindow* window)gtk_window_get_icon_list;
	gchar* function(GtkWindow* window)gtk_window_get_icon_name;
	GdkModifierType function(GtkWindow* window)gtk_window_get_mnemonic_modifier;
	gboolean function(GtkWindow* window)gtk_window_get_modal;
	void function(GtkWindow* window, gint* rootX, gint* rootY)gtk_window_get_position;
	gchar* function(GtkWindow* window)gtk_window_get_role;
	void function(GtkWindow* window, gint* width, gint* height)gtk_window_get_size;
	gchar* function(GtkWindow* window)gtk_window_get_title;
	GtkWindow* function(GtkWindow* window)gtk_window_get_transient_for;
	GdkWindowTypeHint function(GtkWindow* window)gtk_window_get_type_hint;
	gboolean function(GtkWindow* window)gtk_window_get_skip_taskbar_hint;
	gboolean function(GtkWindow* window)gtk_window_get_skip_pager_hint;
	gboolean function(GtkWindow* window)gtk_window_get_urgency_hint;
	gboolean function(GtkWindow* window)gtk_window_get_accept_focus;
	gboolean function(GtkWindow* window)gtk_window_get_focus_on_map;
	GtkWindowGroup* function(GtkWindow* window)gtk_window_get_group;
	void function(GtkWindow* window, gint x, gint y)gtk_window_move;
	gboolean function(GtkWindow* window, gchar* geometry)gtk_window_parse_geometry;
	void function(GtkWindow* window)gtk_window_reshow_with_initial_size;
	void function(GtkWindow* window, gint width, gint height)gtk_window_resize;
	void function(GList* list)gtk_window_set_default_icon_list;
	void function(GdkPixbuf* icon)gtk_window_set_default_icon;
	gboolean function(gchar* filename, GError** err)gtk_window_set_default_icon_from_file;
	void function(gchar* name)gtk_window_set_default_icon_name;
	void function(GtkWindow* window, GdkPixbuf* icon)gtk_window_set_icon;
	void function(GtkWindow* window, GList* list)gtk_window_set_icon_list;
	gboolean function(GtkWindow* window, gchar* filename, GError** err)gtk_window_set_icon_from_file;
	void function(GtkWindow* window, gchar* name)gtk_window_set_icon_name;
	void function(gboolean setting)gtk_window_set_auto_startup_notification;
	gdouble function(GtkWindow* window)gtk_window_get_opacity;
	void function(GtkWindow* window, gdouble opacity)gtk_window_set_opacity;
	
	// gtk.
	
	
	// gtk.WindowGroup
	
	GtkWindowGroup* function()gtk_window_group_new;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window)gtk_window_group_add_window;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window)gtk_window_group_remove_window;
	
	// gtk.AboutDialog
	
	GtkWidget* function()gtk_about_dialog_new;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_name;
	void function(GtkAboutDialog* about, gchar* name)gtk_about_dialog_set_name;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_program_name;
	void function(GtkAboutDialog* about, gchar* name)gtk_about_dialog_set_program_name;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_version;
	void function(GtkAboutDialog* about, gchar* versio)gtk_about_dialog_set_version;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_copyright;
	void function(GtkAboutDialog* about, gchar* copyright)gtk_about_dialog_set_copyright;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_comments;
	void function(GtkAboutDialog* about, gchar* comments)gtk_about_dialog_set_comments;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_license;
	void function(GtkAboutDialog* about, gchar* license)gtk_about_dialog_set_license;
	gboolean function(GtkAboutDialog* about)gtk_about_dialog_get_wrap_license;
	void function(GtkAboutDialog* about, gboolean wrapLicense)gtk_about_dialog_set_wrap_license;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_website;
	void function(GtkAboutDialog* about, gchar* website)gtk_about_dialog_set_website;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_website_label;
	void function(GtkAboutDialog* about, gchar* websiteLabel)gtk_about_dialog_set_website_label;
	gchar** function(GtkAboutDialog* about)gtk_about_dialog_get_authors;
	void function(GtkAboutDialog* about, gchar** authors)gtk_about_dialog_set_authors;
	gchar** function(GtkAboutDialog* about)gtk_about_dialog_get_artists;
	void function(GtkAboutDialog* about, gchar** artists)gtk_about_dialog_set_artists;
	gchar** function(GtkAboutDialog* about)gtk_about_dialog_get_documenters;
	void function(GtkAboutDialog* about, gchar** documenters)gtk_about_dialog_set_documenters;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_translator_credits;
	void function(GtkAboutDialog* about, gchar* translatorCredits)gtk_about_dialog_set_translator_credits;
	GdkPixbuf* function(GtkAboutDialog* about)gtk_about_dialog_get_logo;
	void function(GtkAboutDialog* about, GdkPixbuf* logo)gtk_about_dialog_set_logo;
	gchar* function(GtkAboutDialog* about)gtk_about_dialog_get_logo_icon_name;
	void function(GtkAboutDialog* about, gchar* iconName)gtk_about_dialog_set_logo_icon_name;
	GtkAboutDialogActivateLinkFunc function(GtkAboutDialogActivateLinkFunc func, gpointer data, GDestroyNotify destroy)gtk_about_dialog_set_email_hook;
	GtkAboutDialogActivateLinkFunc function(GtkAboutDialogActivateLinkFunc func, gpointer data, GDestroyNotify destroy)gtk_about_dialog_set_url_hook;
	void function(GtkWindow* parent, gchar* firstPropertyName, ... )gtk_show_about_dialog;
	
	// gtk.Assistant
	
	GtkWidget* function()gtk_assistant_new;
	gint function(GtkAssistant* assistant)gtk_assistant_get_current_page;
	void function(GtkAssistant* assistant, gint pageNum)gtk_assistant_set_current_page;
	gint function(GtkAssistant* assistant)gtk_assistant_get_n_pages;
	GtkWidget* function(GtkAssistant* assistant, gint pageNum)gtk_assistant_get_nth_page;
	gint function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_prepend_page;
	gint function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_append_page;
	gint function(GtkAssistant* assistant, GtkWidget* page, gint position)gtk_assistant_insert_page;
	void function(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, gpointer data, GDestroyNotify destroy)gtk_assistant_set_forward_page_func;
	void function(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type)gtk_assistant_set_page_type;
	GtkAssistantPageType function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_get_page_type;
	void function(GtkAssistant* assistant, GtkWidget* page, gchar* title)gtk_assistant_set_page_title;
	gchar* function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_get_page_title;
	void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf)gtk_assistant_set_page_header_image;
	GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_get_page_header_image;
	void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf)gtk_assistant_set_page_side_image;
	GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_get_page_side_image;
	void function(GtkAssistant* assistant, GtkWidget* page, gboolean complete)gtk_assistant_set_page_complete;
	gboolean function(GtkAssistant* assistant, GtkWidget* page)gtk_assistant_get_page_complete;
	void function(GtkAssistant* assistant, GtkWidget* child)gtk_assistant_add_action_widget;
	void function(GtkAssistant* assistant, GtkWidget* child)gtk_assistant_remove_action_widget;
	void function(GtkAssistant* assistant)gtk_assistant_update_buttons_state;
	
	// gtk.AccelLabel
	
	GtkWidget* function(gchar* string)gtk_accel_label_new;
	void function(GtkAccelLabel* accelLabel, GClosure* accelClosure)gtk_accel_label_set_accel_closure;
	GtkWidget* function(GtkAccelLabel* accelLabel)gtk_accel_label_get_accel_widget;
	void function(GtkAccelLabel* accelLabel, GtkWidget* accelWidget)gtk_accel_label_set_accel_widget;
	guint function(GtkAccelLabel* accelLabel)gtk_accel_label_get_accel_width;
	gboolean function(GtkAccelLabel* accelLabel)gtk_accel_label_refetch;
	
	// gtk.Image
	
	void function(GtkImage* image, GtkIconSet** iconSet, GtkIconSize* size)gtk_image_get_icon_set;
	void function(GtkImage* image, GdkImage** gdkImage, GdkBitmap** mask)gtk_image_get_image;
	GdkPixbuf* function(GtkImage* image)gtk_image_get_pixbuf;
	void function(GtkImage* image, GdkPixmap** pixmap, GdkBitmap** mask)gtk_image_get_pixmap;
	void function(GtkImage* image, gchar** stockId, GtkIconSize* size)gtk_image_get_stock;
	GdkPixbufAnimation* function(GtkImage* image)gtk_image_get_animation;
	void function(GtkImage* image, gchar** iconName, GtkIconSize* size)gtk_image_get_icon_name;
	GtkImageType function(GtkImage* image)gtk_image_get_storage_type;
	GtkWidget* function(gchar* filename)gtk_image_new_from_file;
	GtkWidget* function(GtkIconSet* iconSet, GtkIconSize size)gtk_image_new_from_icon_set;
	GtkWidget* function(GdkImage* image, GdkBitmap* mask)gtk_image_new_from_image;
	GtkWidget* function(GdkPixbuf* pixbuf)gtk_image_new_from_pixbuf;
	GtkWidget* function(GdkPixmap* pixmap, GdkBitmap* mask)gtk_image_new_from_pixmap;
	GtkWidget* function(gchar* stockId, GtkIconSize size)gtk_image_new_from_stock;
	GtkWidget* function(GdkPixbufAnimation* animation)gtk_image_new_from_animation;
	GtkWidget* function(gchar* iconName, GtkIconSize size)gtk_image_new_from_icon_name;
	void function(GtkImage* image, gchar* filename)gtk_image_set_from_file;
	void function(GtkImage* image, GtkIconSet* iconSet, GtkIconSize size)gtk_image_set_from_icon_set;
	void function(GtkImage* image, GdkImage* gdkImage, GdkBitmap* mask)gtk_image_set_from_image;
	void function(GtkImage* image, GdkPixbuf* pixbuf)gtk_image_set_from_pixbuf;
	void function(GtkImage* image, GdkPixmap* pixmap, GdkBitmap* mask)gtk_image_set_from_pixmap;
	void function(GtkImage* image, gchar* stockId, GtkIconSize size)gtk_image_set_from_stock;
	void function(GtkImage* image, GdkPixbufAnimation* animation)gtk_image_set_from_animation;
	void function(GtkImage* image, gchar* iconName, GtkIconSize size)gtk_image_set_from_icon_name;
	void function(GtkImage* image)gtk_image_clear;
	GtkWidget* function()gtk_image_new;
	void function(GtkImage* image, GdkImage* val, GdkBitmap* mask)gtk_image_set;
	void function(GtkImage* image, GdkImage** val, GdkBitmap** mask)gtk_image_get;
	void function(GtkImage* image, gint pixelSize)gtk_image_set_pixel_size;
	gint function(GtkImage* image)gtk_image_get_pixel_size;
	
	// gtk.Label
	
	GtkWidget* function(gchar* str)gtk_label_new;
	void function(GtkLabel* label, gchar* str)gtk_label_set_text;
	void function(GtkLabel* label, PangoAttrList* attrs)gtk_label_set_attributes;
	void function(GtkLabel* label, gchar* str)gtk_label_set_markup;
	void function(GtkLabel* label, gchar* str)gtk_label_set_markup_with_mnemonic;
	void function(GtkLabel* label, gchar* pattern)gtk_label_set_pattern;
	void function(GtkLabel* label, GtkJustification jtype)gtk_label_set_justify;
	void function(GtkLabel* label, PangoEllipsizeMode mode)gtk_label_set_ellipsize;
	void function(GtkLabel* label, gint nChars)gtk_label_set_width_chars;
	void function(GtkLabel* label, gint nChars)gtk_label_set_max_width_chars;
	void function(GtkLabel* label, gchar** str)gtk_label_get;
	guint function(GtkLabel* label, gchar* string)gtk_label_parse_uline;
	void function(GtkLabel* label, gboolean wrap)gtk_label_set_line_wrap;
	void function(GtkLabel* label, PangoWrapMode wrapMode)gtk_label_set_line_wrap_mode;
	void function(GtkLabel* label, gint* x, gint* y)gtk_label_get_layout_offsets;
	guint function(GtkLabel* label)gtk_label_get_mnemonic_keyval;
	gboolean function(GtkLabel* label)gtk_label_get_selectable;
	gchar* function(GtkLabel* label)gtk_label_get_text;
	GtkWidget* function(gchar* str)gtk_label_new_with_mnemonic;
	void function(GtkLabel* label, gint startOffset, gint endOffset)gtk_label_select_region;
	void function(GtkLabel* label, GtkWidget* widget)gtk_label_set_mnemonic_widget;
	void function(GtkLabel* label, gboolean setting)gtk_label_set_selectable;
	void function(GtkLabel* label, gchar* str)gtk_label_set_text_with_mnemonic;
	PangoAttrList* function(GtkLabel* label)gtk_label_get_attributes;
	GtkJustification function(GtkLabel* label)gtk_label_get_justify;
	PangoEllipsizeMode function(GtkLabel* label)gtk_label_get_ellipsize;
	gint function(GtkLabel* label)gtk_label_get_width_chars;
	gint function(GtkLabel* label)gtk_label_get_max_width_chars;
	gchar* function(GtkLabel* label)gtk_label_get_label;
	PangoLayout* function(GtkLabel* label)gtk_label_get_layout;
	gboolean function(GtkLabel* label)gtk_label_get_line_wrap;
	PangoWrapMode function(GtkLabel* label)gtk_label_get_line_wrap_mode;
	GtkWidget* function(GtkLabel* label)gtk_label_get_mnemonic_widget;
	gboolean function(GtkLabel* label, gint* start, gint* end)gtk_label_get_selection_bounds;
	gboolean function(GtkLabel* label)gtk_label_get_use_markup;
	gboolean function(GtkLabel* label)gtk_label_get_use_underline;
	gboolean function(GtkLabel* label)gtk_label_get_single_line_mode;
	gdouble function(GtkLabel* label)gtk_label_get_angle;
	void function(GtkLabel* label, gchar* str)gtk_label_set_label;
	void function(GtkLabel* label, gboolean setting)gtk_label_set_use_markup;
	void function(GtkLabel* label, gboolean setting)gtk_label_set_use_underline;
	void function(GtkLabel* label, gboolean singleLineMode)gtk_label_set_single_line_mode;
	void function(GtkLabel* label, gdouble angle)gtk_label_set_angle;
	
	// gtk.ProgressBar
	
	GtkWidget* function()gtk_progress_bar_new;
	void function(GtkProgressBar* pbar)gtk_progress_bar_pulse;
	void function(GtkProgressBar* pbar, gchar* text)gtk_progress_bar_set_text;
	void function(GtkProgressBar* pbar, gdouble fraction)gtk_progress_bar_set_fraction;
	void function(GtkProgressBar* pbar, gdouble fraction)gtk_progress_bar_set_pulse_step;
	void function(GtkProgressBar* pbar, GtkProgressBarOrientation orientation)gtk_progress_bar_set_orientation;
	void function(GtkProgressBar* pbar, PangoEllipsizeMode mode)gtk_progress_bar_set_ellipsize;
	gchar* function(GtkProgressBar* pbar)gtk_progress_bar_get_text;
	gdouble function(GtkProgressBar* pbar)gtk_progress_bar_get_fraction;
	gdouble function(GtkProgressBar* pbar)gtk_progress_bar_get_pulse_step;
	GtkProgressBarOrientation function(GtkProgressBar* pbar)gtk_progress_bar_get_orientation;
	PangoEllipsizeMode function(GtkProgressBar* pbar)gtk_progress_bar_get_ellipsize;
	GtkWidget* function(GtkAdjustment* adjustment)gtk_progress_bar_new_with_adjustment;
	void function(GtkProgressBar* pbar, GtkProgressBarStyle style)gtk_progress_bar_set_bar_style;
	void function(GtkProgressBar* pbar, guint blocks)gtk_progress_bar_set_discrete_blocks;
	void function(GtkProgressBar* pbar, guint step)gtk_progress_bar_set_activity_step;
	void function(GtkProgressBar* pbar, guint blocks)gtk_progress_bar_set_activity_blocks;
	void function(GtkProgressBar* pbar, gdouble percentage)gtk_progress_bar_update;
	
	// gtk.Statusbar
	
	GtkWidget* function()gtk_statusbar_new;
	guint function(GtkStatusbar* statusbar, gchar* contextDescription)gtk_statusbar_get_context_id;
	guint function(GtkStatusbar* statusbar, guint contextId, gchar* text)gtk_statusbar_push;
	void function(GtkStatusbar* statusbar, guint contextId)gtk_statusbar_pop;
	void function(GtkStatusbar* statusbar, guint contextId, guint messageId)gtk_statusbar_remove;
	void function(GtkStatusbar* statusbar, gboolean setting)gtk_statusbar_set_has_resize_grip;
	gboolean function(GtkStatusbar* statusbar)gtk_statusbar_get_has_resize_grip;
	
	// gtk.StatusIcon
	
	GtkStatusIcon* function()gtk_status_icon_new;
	GtkStatusIcon* function(GdkPixbuf* pixbuf)gtk_status_icon_new_from_pixbuf;
	GtkStatusIcon* function(gchar* filename)gtk_status_icon_new_from_file;
	GtkStatusIcon* function(gchar* stockId)gtk_status_icon_new_from_stock;
	GtkStatusIcon* function(gchar* iconName)gtk_status_icon_new_from_icon_name;
	void function(GtkStatusIcon* statusIcon, GdkPixbuf* pixbuf)gtk_status_icon_set_from_pixbuf;
	void function(GtkStatusIcon* statusIcon, gchar* filename)gtk_status_icon_set_from_file;
	void function(GtkStatusIcon* statusIcon, gchar* stockId)gtk_status_icon_set_from_stock;
	void function(GtkStatusIcon* statusIcon, gchar* iconName)gtk_status_icon_set_from_icon_name;
	GtkImageType function(GtkStatusIcon* statusIcon)gtk_status_icon_get_storage_type;
	GdkPixbuf* function(GtkStatusIcon* statusIcon)gtk_status_icon_get_pixbuf;
	gchar* function(GtkStatusIcon* statusIcon)gtk_status_icon_get_stock;
	gchar* function(GtkStatusIcon* statusIcon)gtk_status_icon_get_icon_name;
	gint function(GtkStatusIcon* statusIcon)gtk_status_icon_get_size;
	void function(GtkStatusIcon* statusIcon, GdkScreen* screen)gtk_status_icon_set_screen;
	GdkScreen* function(GtkStatusIcon* statusIcon)gtk_status_icon_get_screen;
	void function(GtkStatusIcon* statusIcon, gchar* tooltipText)gtk_status_icon_set_tooltip;
	void function(GtkStatusIcon* statusIcon, gboolean visible)gtk_status_icon_set_visible;
	gboolean function(GtkStatusIcon* statusIcon)gtk_status_icon_get_visible;
	void function(GtkStatusIcon* statusIcon, gboolean blinking)gtk_status_icon_set_blinking;
	gboolean function(GtkStatusIcon* statusIcon)gtk_status_icon_get_blinking;
	gboolean function(GtkStatusIcon* statusIcon)gtk_status_icon_is_embedded;
	void function(GtkMenu* menu, gint* x, gint* y, gboolean* pushIn, gpointer userData)gtk_status_icon_position_menu;
	gboolean function(GtkStatusIcon* statusIcon, GdkScreen** screen, GdkRectangle* area, GtkOrientation* orientation)gtk_status_icon_get_geometry;
	
	// gtk.Button
	
	GtkWidget* function()gtk_button_new;
	GtkWidget* function(gchar* label)gtk_button_new_with_label;
	GtkWidget* function(gchar* label)gtk_button_new_with_mnemonic;
	GtkWidget* function(gchar* stockId)gtk_button_new_from_stock;
	void function(GtkButton* button)gtk_button_pressed;
	void function(GtkButton* button)gtk_button_released;
	void function(GtkButton* button)gtk_button_clicked;
	void function(GtkButton* button)gtk_button_enter;
	void function(GtkButton* button)gtk_button_leave;
	void function(GtkButton* button, GtkReliefStyle newstyle)gtk_button_set_relief;
	GtkReliefStyle function(GtkButton* button)gtk_button_get_relief;
	gchar* function(GtkButton* button)gtk_button_get_label;
	void function(GtkButton* button, gchar* label)gtk_button_set_label;
	gboolean function(GtkButton* button)gtk_button_get_use_stock;
	void function(GtkButton* button, gboolean useStock)gtk_button_set_use_stock;
	gboolean function(GtkButton* button)gtk_button_get_use_underline;
	void function(GtkButton* button, gboolean useUnderline)gtk_button_set_use_underline;
	void function(GtkButton* button, gboolean focusOnClick)gtk_button_set_focus_on_click;
	gboolean function(GtkButton* button)gtk_button_get_focus_on_click;
	void function(GtkButton* button, gfloat xalign, gfloat yalign)gtk_button_set_alignment;
	void function(GtkButton* button, gfloat* xalign, gfloat* yalign)gtk_button_get_alignment;
	void function(GtkButton* button, GtkWidget* image)gtk_button_set_image;
	GtkWidget* function(GtkButton* button)gtk_button_get_image;
	void function(GtkButton* button, GtkPositionType position)gtk_button_set_image_position;
	GtkPositionType function(GtkButton* button)gtk_button_get_image_position;
	
	// gtk.CheckButton
	
	GtkWidget* function()gtk_check_button_new;
	GtkWidget* function(gchar* label)gtk_check_button_new_with_label;
	GtkWidget* function(gchar* label)gtk_check_button_new_with_mnemonic;
	
	// gtk.RadioButton
	
	GtkWidget* function(GSList* group)gtk_radio_button_new;
	GtkWidget* function(GtkRadioButton* radioGroupMember)gtk_radio_button_new_from_widget;
	GtkWidget* function(GSList* group, gchar* label)gtk_radio_button_new_with_label;
	GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label)gtk_radio_button_new_with_label_from_widget;
	GtkWidget* function(GSList* group, gchar* label)gtk_radio_button_new_with_mnemonic;
	GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label)gtk_radio_button_new_with_mnemonic_from_widget;
	void function(GtkRadioButton* radioButton, GSList* group)gtk_radio_button_set_group;
	GSList* function(GtkRadioButton* radioButton)gtk_radio_button_get_group;
	
	// gtk.ToggleButton
	
	GtkWidget* function()gtk_toggle_button_new;
	GtkWidget* function(gchar* label)gtk_toggle_button_new_with_label;
	GtkWidget* function(gchar* label)gtk_toggle_button_new_with_mnemonic;
	void function(GtkToggleButton* toggleButton, gboolean drawIndicator)gtk_toggle_button_set_mode;
	gboolean function(GtkToggleButton* toggleButton)gtk_toggle_button_get_mode;
	void function(GtkToggleButton* toggleButton)gtk_toggle_button_toggled;
	gboolean function(GtkToggleButton* toggleButton)gtk_toggle_button_get_active;
	void function(GtkToggleButton* toggleButton, gboolean isActive)gtk_toggle_button_set_active;
	gboolean function(GtkToggleButton* toggleButton)gtk_toggle_button_get_inconsistent;
	void function(GtkToggleButton* toggleButton, gboolean setting)gtk_toggle_button_set_inconsistent;
	
	// gtk.LinkButton
	
	GtkWidget* function(gchar* uri)gtk_link_button_new;
	GtkWidget* function(gchar* uri, gchar* label)gtk_link_button_new_with_label;
	gchar* function(GtkLinkButton* linkButton)gtk_link_button_get_uri;
	void function(GtkLinkButton* linkButton, gchar* uri)gtk_link_button_set_uri;
	GtkLinkButtonUriFunc function(GtkLinkButtonUriFunc func, gpointer data, GDestroyNotify destroy)gtk_link_button_set_uri_hook;
	
	// gtk.ScaleButton
	
	GtkWidget* function(GtkIconSize size, gdouble min, gdouble max, gdouble step, gchar** icons)gtk_scale_button_new;
	void function(GtkScaleButton* button, GtkAdjustment* adjustment)gtk_scale_button_set_adjustment;
	void function(GtkScaleButton* button, gchar** icons)gtk_scale_button_set_icons;
	void function(GtkScaleButton* button, gdouble value)gtk_scale_button_set_value;
	GtkAdjustment* function(GtkScaleButton* button)gtk_scale_button_get_adjustment;
	gdouble function(GtkScaleButton* button)gtk_scale_button_get_value;
	
	// gtk.VolumeButton
	
	GtkWidget* function()gtk_volume_button_new;
	
	// gtk.Entry
	
	GtkWidget* function()gtk_entry_new;
	GtkWidget* function(gint max)gtk_entry_new_with_max_length;
	void function(GtkEntry* entry, gchar* text)gtk_entry_set_text;
	void function(GtkEntry* entry, gchar* text)gtk_entry_append_text;
	void function(GtkEntry* entry, gchar* text)gtk_entry_prepend_text;
	void function(GtkEntry* entry, gint position)gtk_entry_set_position;
	gchar* function(GtkEntry* entry)gtk_entry_get_text;
	void function(GtkEntry* entry, gint start, gint end)gtk_entry_select_region;
	void function(GtkEntry* entry, gboolean visible)gtk_entry_set_visibility;
	void function(GtkEntry* entry, gunichar ch)gtk_entry_set_invisible_char;
	void function(GtkEntry* entry, gboolean editable)gtk_entry_set_editable;
	void function(GtkEntry* entry, gint max)gtk_entry_set_max_length;
	gboolean function(GtkEntry* entry)gtk_entry_get_activates_default;
	gboolean function(GtkEntry* entry)gtk_entry_get_has_frame;
	GtkBorder* function(GtkEntry* entry)gtk_entry_get_inner_border;
	gint function(GtkEntry* entry)gtk_entry_get_width_chars;
	void function(GtkEntry* entry, gboolean setting)gtk_entry_set_activates_default;
	void function(GtkEntry* entry, gboolean setting)gtk_entry_set_has_frame;
	void function(GtkEntry* entry, GtkBorder* border)gtk_entry_set_inner_border;
	void function(GtkEntry* entry, gint nChars)gtk_entry_set_width_chars;
	gunichar function(GtkEntry* entry)gtk_entry_get_invisible_char;
	void function(GtkEntry* entry, gfloat xalign)gtk_entry_set_alignment;
	gfloat function(GtkEntry* entry)gtk_entry_get_alignment;
	PangoLayout* function(GtkEntry* entry)gtk_entry_get_layout;
	void function(GtkEntry* entry, gint* x, gint* y)gtk_entry_get_layout_offsets;
	gint function(GtkEntry* entry, gint layoutIndex)gtk_entry_layout_index_to_text_index;
	gint function(GtkEntry* entry, gint textIndex)gtk_entry_text_index_to_layout_index;
	gint function(GtkEntry* entry)gtk_entry_get_max_length;
	gboolean function(GtkEntry* entry)gtk_entry_get_visibility;
	void function(GtkEntry* entry, GtkEntryCompletion* completion)gtk_entry_set_completion;
	GtkEntryCompletion* function(GtkEntry* entry)gtk_entry_get_completion;
	void function(GtkEntry* entry, GtkAdjustment* adjustment)gtk_entry_set_cursor_hadjustment;
	GtkAdjustment* function(GtkEntry* entry)gtk_entry_get_cursor_hadjustment;
	
	// gtk.EntryCompletion
	
	GtkEntryCompletion* function()gtk_entry_completion_new;
	GtkWidget* function(GtkEntryCompletion* completion)gtk_entry_completion_get_entry;
	void function(GtkEntryCompletion* completion, GtkTreeModel* model)gtk_entry_completion_set_model;
	GtkTreeModel* function(GtkEntryCompletion* completion)gtk_entry_completion_get_model;
	void function(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, gpointer funcData, GDestroyNotify funcNotify)gtk_entry_completion_set_match_func;
	void function(GtkEntryCompletion* completion, gint length)gtk_entry_completion_set_minimum_key_length;
	gint function(GtkEntryCompletion* completion)gtk_entry_completion_get_minimum_key_length;
	void function(GtkEntryCompletion* completion)gtk_entry_completion_complete;
	gchar* function(GtkEntryCompletion* completion)gtk_entry_completion_get_completion_prefix;
	void function(GtkEntryCompletion* completion)gtk_entry_completion_insert_prefix;
	void function(GtkEntryCompletion* completion, gint index, gchar* text)gtk_entry_completion_insert_action_text;
	void function(GtkEntryCompletion* completion, gint index, gchar* markup)gtk_entry_completion_insert_action_markup;
	void function(GtkEntryCompletion* completion, gint index)gtk_entry_completion_delete_action;
	void function(GtkEntryCompletion* completion, gint column)gtk_entry_completion_set_text_column;
	gint function(GtkEntryCompletion* completion)gtk_entry_completion_get_text_column;
	void function(GtkEntryCompletion* completion, gboolean inlineCompletion)gtk_entry_completion_set_inline_completion;
	gboolean function(GtkEntryCompletion* completion)gtk_entry_completion_get_inline_completion;
	void function(GtkEntryCompletion* completion, gboolean inlineSelection)gtk_entry_completion_set_inline_selection;
	gboolean function(GtkEntryCompletion* completion)gtk_entry_completion_get_inline_selection;
	void function(GtkEntryCompletion* completion, gboolean popupCompletion)gtk_entry_completion_set_popup_completion;
	gboolean function(GtkEntryCompletion* completion)gtk_entry_completion_get_popup_completion;
	void function(GtkEntryCompletion* completion, gboolean popupSetWidth)gtk_entry_completion_set_popup_set_width;
	gboolean function(GtkEntryCompletion* completion)gtk_entry_completion_get_popup_set_width;
	void function(GtkEntryCompletion* completion, gboolean popupSingleMatch)gtk_entry_completion_set_popup_single_match;
	gboolean function(GtkEntryCompletion* completion)gtk_entry_completion_get_popup_single_match;
	
	// gtk.HScale
	
	GtkWidget* function(GtkAdjustment* adjustment)gtk_hscale_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step)gtk_hscale_new_with_range;
	
	// gtk.VScale
	
	GtkWidget* function(GtkAdjustment* adjustment)gtk_vscale_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step)gtk_vscale_new_with_range;
	
	// gtk.SpinButton
	
	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment, gdouble climbRate, guint digits)gtk_spin_button_configure;
	GtkWidget* function(GtkAdjustment* adjustment, gdouble climbRate, guint digits)gtk_spin_button_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step)gtk_spin_button_new_with_range;
	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment)gtk_spin_button_set_adjustment;
	GtkAdjustment* function(GtkSpinButton* spinButton)gtk_spin_button_get_adjustment;
	void function(GtkSpinButton* spinButton, guint digits)gtk_spin_button_set_digits;
	void function(GtkSpinButton* spinButton, gdouble step, gdouble page)gtk_spin_button_set_increments;
	void function(GtkSpinButton* spinButton, gdouble min, gdouble max)gtk_spin_button_set_range;
	gint function(GtkSpinButton* spinButton)gtk_spin_button_get_value_as_int;
	void function(GtkSpinButton* spinButton, gdouble value)gtk_spin_button_set_value;
	void function(GtkSpinButton* spinButton, GtkSpinButtonUpdatePolicy policy)gtk_spin_button_set_update_policy;
	void function(GtkSpinButton* spinButton, gboolean numeric)gtk_spin_button_set_numeric;
	void function(GtkSpinButton* spinButton, GtkSpinType direction, gdouble increment)gtk_spin_button_spin;
	void function(GtkSpinButton* spinButton, gboolean wrap)gtk_spin_button_set_wrap;
	void function(GtkSpinButton* spinButton, gboolean snapToTicks)gtk_spin_button_set_snap_to_ticks;
	void function(GtkSpinButton* spinButton)gtk_spin_button_update;
	guint function(GtkSpinButton* spinButton)gtk_spin_button_get_digits;
	void function(GtkSpinButton* spinButton, gdouble* step, gdouble* page)gtk_spin_button_get_increments;
	gboolean function(GtkSpinButton* spinButton)gtk_spin_button_get_numeric;
	void function(GtkSpinButton* spinButton, gdouble* min, gdouble* max)gtk_spin_button_get_range;
	gboolean function(GtkSpinButton* spinButton)gtk_spin_button_get_snap_to_ticks;
	GtkSpinButtonUpdatePolicy function(GtkSpinButton* spinButton)gtk_spin_button_get_update_policy;
	gdouble function(GtkSpinButton* spinButton)gtk_spin_button_get_value;
	gboolean function(GtkSpinButton* spinButton)gtk_spin_button_get_wrap;
	
	// gtk.EditableT
	
	
	// gtk.EditableT
	
	void function(GtkEditable* editable, gint start, gint end)gtk_editable_select_region;
	gboolean function(GtkEditable* editable, gint* start, gint* end)gtk_editable_get_selection_bounds;
	void function(GtkEditable* editable, gchar* newText, gint newTextLength, gint* position)gtk_editable_insert_text;
	void function(GtkEditable* editable, gint startPos, gint endPos)gtk_editable_delete_text;
	gchar* function(GtkEditable* editable, gint startPos, gint endPos)gtk_editable_get_chars;
	void function(GtkEditable* editable)gtk_editable_cut_clipboard;
	void function(GtkEditable* editable)gtk_editable_copy_clipboard;
	void function(GtkEditable* editable)gtk_editable_paste_clipboard;
	void function(GtkEditable* editable)gtk_editable_delete_selection;
	void function(GtkEditable* editable, gint position)gtk_editable_set_position;
	gint function(GtkEditable* editable)gtk_editable_get_position;
	void function(GtkEditable* editable, gboolean isEditable)gtk_editable_set_editable;
	gboolean function(GtkEditable* editable)gtk_editable_get_editable;
	
	// gtk.TextIter
	
	GtkTextBuffer* function(GtkTextIter* iter)gtk_text_iter_get_buffer;
	GtkTextIter* function(GtkTextIter* iter)gtk_text_iter_copy;
	void function(GtkTextIter* iter)gtk_text_iter_free;
	gint function(GtkTextIter* iter)gtk_text_iter_get_offset;
	gint function(GtkTextIter* iter)gtk_text_iter_get_line;
	gint function(GtkTextIter* iter)gtk_text_iter_get_line_offset;
	gint function(GtkTextIter* iter)gtk_text_iter_get_line_index;
	gint function(GtkTextIter* iter)gtk_text_iter_get_visible_line_index;
	gint function(GtkTextIter* iter)gtk_text_iter_get_visible_line_offset;
	gunichar function(GtkTextIter* iter)gtk_text_iter_get_char;
	gchar* function(GtkTextIter* start, GtkTextIter* end)gtk_text_iter_get_slice;
	gchar* function(GtkTextIter* start, GtkTextIter* end)gtk_text_iter_get_text;
	gchar* function(GtkTextIter* start, GtkTextIter* end)gtk_text_iter_get_visible_slice;
	gchar* function(GtkTextIter* start, GtkTextIter* end)gtk_text_iter_get_visible_text;
	GdkPixbuf* function(GtkTextIter* iter)gtk_text_iter_get_pixbuf;
	GSList* function(GtkTextIter* iter)gtk_text_iter_get_marks;
	GSList* function(GtkTextIter* iter, gboolean toggledOn)gtk_text_iter_get_toggled_tags;
	GtkTextChildAnchor* function(GtkTextIter* iter)gtk_text_iter_get_child_anchor;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_begins_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_ends_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_toggles_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_has_tag;
	GSList* function(GtkTextIter* iter)gtk_text_iter_get_tags;
	gboolean function(GtkTextIter* iter, gboolean defaultSetting)gtk_text_iter_editable;
	gboolean function(GtkTextIter* iter, gboolean defaultEditability)gtk_text_iter_can_insert;
	gboolean function(GtkTextIter* iter)gtk_text_iter_starts_word;
	gboolean function(GtkTextIter* iter)gtk_text_iter_ends_word;
	gboolean function(GtkTextIter* iter)gtk_text_iter_inside_word;
	gboolean function(GtkTextIter* iter)gtk_text_iter_starts_line;
	gboolean function(GtkTextIter* iter)gtk_text_iter_ends_line;
	gboolean function(GtkTextIter* iter)gtk_text_iter_starts_sentence;
	gboolean function(GtkTextIter* iter)gtk_text_iter_ends_sentence;
	gboolean function(GtkTextIter* iter)gtk_text_iter_inside_sentence;
	gboolean function(GtkTextIter* iter)gtk_text_iter_is_cursor_position;
	gint function(GtkTextIter* iter)gtk_text_iter_get_chars_in_line;
	gint function(GtkTextIter* iter)gtk_text_iter_get_bytes_in_line;
	gboolean function(GtkTextIter* iter, GtkTextAttributes* values)gtk_text_iter_get_attributes;
	PangoLanguage* function(GtkTextIter* iter)gtk_text_iter_get_language;
	gboolean function(GtkTextIter* iter)gtk_text_iter_is_end;
	gboolean function(GtkTextIter* iter)gtk_text_iter_is_start;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_char;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_char;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_chars;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_chars;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_line;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_line;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_lines;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_lines;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_word_ends;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_word_starts;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_word_end;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_word_start;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_cursor_position;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_cursor_position;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_cursor_positions;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_cursor_positions;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_sentence_start;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_sentence_starts;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_sentence_end;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_sentence_ends;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_visible_word_ends;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_visible_word_starts;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_visible_word_end;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_visible_word_start;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_visible_cursor_position;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_visible_cursor_position;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_visible_cursor_positions;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_visible_cursor_positions;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_visible_line;
	gboolean function(GtkTextIter* iter)gtk_text_iter_backward_visible_line;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_forward_visible_lines;
	gboolean function(GtkTextIter* iter, gint count)gtk_text_iter_backward_visible_lines;
	void function(GtkTextIter* iter, gint charOffset)gtk_text_iter_set_offset;
	void function(GtkTextIter* iter, gint lineNumber)gtk_text_iter_set_line;
	void function(GtkTextIter* iter, gint charOnLine)gtk_text_iter_set_line_offset;
	void function(GtkTextIter* iter, gint byteOnLine)gtk_text_iter_set_line_index;
	void function(GtkTextIter* iter, gint byteOnLine)gtk_text_iter_set_visible_line_index;
	void function(GtkTextIter* iter, gint charOnLine)gtk_text_iter_set_visible_line_offset;
	void function(GtkTextIter* iter)gtk_text_iter_forward_to_end;
	gboolean function(GtkTextIter* iter)gtk_text_iter_forward_to_line_end;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_forward_to_tag_toggle;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag)gtk_text_iter_backward_to_tag_toggle;
	gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, gpointer userData, GtkTextIter* limit)gtk_text_iter_forward_find_char;
	gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, gpointer userData, GtkTextIter* limit)gtk_text_iter_backward_find_char;
	gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_text_iter_forward_search;
	gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_text_iter_backward_search;
	gboolean function(GtkTextIter* lhs, GtkTextIter* rhs)gtk_text_iter_equal;
	gint function(GtkTextIter* lhs, GtkTextIter* rhs)gtk_text_iter_compare;
	gboolean function(GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end)gtk_text_iter_in_range;
	void function(GtkTextIter* first, GtkTextIter* second)gtk_text_iter_order;
	
	// gtk.TextMark
	
	GtkTextMark* function(gchar* name, gboolean leftGravity)gtk_text_mark_new;
	void function(GtkTextMark* mark, gboolean setting)gtk_text_mark_set_visible;
	gboolean function(GtkTextMark* mark)gtk_text_mark_get_visible;
	gboolean function(GtkTextMark* mark)gtk_text_mark_get_deleted;
	gchar* function(GtkTextMark* mark)gtk_text_mark_get_name;
	GtkTextBuffer* function(GtkTextMark* mark)gtk_text_mark_get_buffer;
	gboolean function(GtkTextMark* mark)gtk_text_mark_get_left_gravity;
	
	// gtk.TextBuffer
	
	GtkTextBuffer* function(GtkTextTagTable* table)gtk_text_buffer_new;
	gint function(GtkTextBuffer* buffer)gtk_text_buffer_get_line_count;
	gint function(GtkTextBuffer* buffer)gtk_text_buffer_get_char_count;
	GtkTextTagTable* function(GtkTextBuffer* buffer)gtk_text_buffer_get_tag_table;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len)gtk_text_buffer_insert;
	void function(GtkTextBuffer* buffer, gchar* text, gint len)gtk_text_buffer_insert_at_cursor;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gboolean defaultEditable)gtk_text_buffer_insert_interactive;
	gboolean function(GtkTextBuffer* buffer, gchar* text, gint len, gboolean defaultEditable)gtk_text_buffer_insert_interactive_at_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_insert_range;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, gboolean defaultEditable)gtk_text_buffer_insert_range_interactive;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, GtkTextTag* firstTag, ... )gtk_text_buffer_insert_with_tags;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gchar* firstTagName, ... )gtk_text_buffer_insert_with_tags_by_name;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_delete;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, gboolean defaultEditable)gtk_text_buffer_delete_interactive;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gboolean interactive, gboolean defaultEditable)gtk_text_buffer_backspace;
	void function(GtkTextBuffer* buffer, gchar* text, gint len)gtk_text_buffer_set_text;
	gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars)gtk_text_buffer_get_text;
	gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars)gtk_text_buffer_get_slice;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPixbuf* pixbuf)gtk_text_buffer_insert_pixbuf;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor)gtk_text_buffer_insert_child_anchor;
	GtkTextChildAnchor* function(GtkTextBuffer* buffer, GtkTextIter* iter)gtk_text_buffer_create_child_anchor;
	GtkTextMark* function(GtkTextBuffer* buffer, gchar* markName, GtkTextIter* where, gboolean leftGravity)gtk_text_buffer_create_mark;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where)gtk_text_buffer_move_mark;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* where)gtk_text_buffer_move_mark_by_name;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where)gtk_text_buffer_add_mark;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark)gtk_text_buffer_delete_mark;
	void function(GtkTextBuffer* buffer, gchar* name)gtk_text_buffer_delete_mark_by_name;
	GtkTextMark* function(GtkTextBuffer* buffer, gchar* name)gtk_text_buffer_get_mark;
	GtkTextMark* function(GtkTextBuffer* buffer)gtk_text_buffer_get_insert;
	GtkTextMark* function(GtkTextBuffer* buffer)gtk_text_buffer_get_selection_bound;
	gboolean function(GtkTextBuffer* buffer)gtk_text_buffer_get_has_selection;
	void function(GtkTextBuffer* buffer, GtkTextIter* where)gtk_text_buffer_place_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound)gtk_text_buffer_select_range;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_apply_tag;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_remove_tag;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_apply_tag_by_name;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_remove_tag_by_name;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_remove_all_tags;
	GtkTextTag* function(GtkTextBuffer* buffer, gchar* tagName, gchar* firstPropertyName, ... )gtk_text_buffer_create_tag;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint charOffset)gtk_text_buffer_get_iter_at_line_offset;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint charOffset)gtk_text_buffer_get_iter_at_offset;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber)gtk_text_buffer_get_iter_at_line;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint byteIndex)gtk_text_buffer_get_iter_at_line_index;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark)gtk_text_buffer_get_iter_at_mark;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor)gtk_text_buffer_get_iter_at_child_anchor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter)gtk_text_buffer_get_start_iter;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter)gtk_text_buffer_get_end_iter;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_get_bounds;
	gboolean function(GtkTextBuffer* buffer)gtk_text_buffer_get_modified;
	void function(GtkTextBuffer* buffer, gboolean setting)gtk_text_buffer_set_modified;
	gboolean function(GtkTextBuffer* buffer, gboolean interactive, gboolean defaultEditable)gtk_text_buffer_delete_selection;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, GtkTextIter* overrideLocation, gboolean defaultEditable)gtk_text_buffer_paste_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard)gtk_text_buffer_copy_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, gboolean defaultEditable)gtk_text_buffer_cut_clipboard;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end)gtk_text_buffer_get_selection_bounds;
	void function(GtkTextBuffer* buffer)gtk_text_buffer_begin_user_action;
	void function(GtkTextBuffer* buffer)gtk_text_buffer_end_user_action;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard)gtk_text_buffer_add_selection_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard)gtk_text_buffer_remove_selection_clipboard;
	gboolean function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* iter, guint8* data, gsize length, GError** error)gtk_text_buffer_deserialize;
	gboolean function(GtkTextBuffer* buffer, GdkAtom format)gtk_text_buffer_deserialize_get_can_create_tags;
	void function(GtkTextBuffer* buffer, GdkAtom format, gboolean canCreateTags)gtk_text_buffer_deserialize_set_can_create_tags;
	GtkTargetList* function(GtkTextBuffer* buffer)gtk_text_buffer_get_copy_target_list;
	GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats)gtk_text_buffer_get_deserialize_formats;
	GtkTargetList* function(GtkTextBuffer* buffer)gtk_text_buffer_get_paste_target_list;
	GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats)gtk_text_buffer_get_serialize_formats;
	GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferDeserializeFunc funct, gpointer userData, GDestroyNotify userDataDestroy)gtk_text_buffer_register_deserialize_format;
	GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName)gtk_text_buffer_register_deserialize_tagset;
	GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferSerializeFunc funct, gpointer userData, GDestroyNotify userDataDestroy)gtk_text_buffer_register_serialize_format;
	GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName)gtk_text_buffer_register_serialize_tagset;
	guint8* function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* start, GtkTextIter* end, gsize* length)gtk_text_buffer_serialize;
	void function(GtkTextBuffer* buffer, GdkAtom format)gtk_text_buffer_unregister_deserialize_format;
	void function(GtkTextBuffer* buffer, GdkAtom format)gtk_text_buffer_unregister_serialize_format;
	
	// gtk.TextTag
	
	GtkTextTag* function(gchar* name)gtk_text_tag_new;
	gint function(GtkTextTag* tag)gtk_text_tag_get_priority;
	void function(GtkTextTag* tag, gint priority)gtk_text_tag_set_priority;
	gboolean function(GtkTextTag* tag, GObject* eventObject, GdkEvent* event, GtkTextIter* iter)gtk_text_tag_event;
	
	// gtk.TextAttributes
	
	GtkTextAttributes* function()gtk_text_attributes_new;
	GtkTextAttributes* function(GtkTextAttributes* src)gtk_text_attributes_copy;
	void function(GtkTextAttributes* src, GtkTextAttributes* dest)gtk_text_attributes_copy_values;
	void function(GtkTextAttributes* values)gtk_text_attributes_unref;
	GtkTextAttributes* function(GtkTextAttributes* values)gtk_text_attributes_ref;
	
	// gtk.TextTagTable
	
	GtkTextTagTable* function()gtk_text_tag_table_new;
	void function(GtkTextTagTable* table, GtkTextTag* tag)gtk_text_tag_table_add;
	void function(GtkTextTagTable* table, GtkTextTag* tag)gtk_text_tag_table_remove;
	GtkTextTag* function(GtkTextTagTable* table, gchar* name)gtk_text_tag_table_lookup;
	void function(GtkTextTagTable* table, GtkTextTagTableForeach func, gpointer data)gtk_text_tag_table_foreach;
	gint function(GtkTextTagTable* table)gtk_text_tag_table_get_size;
	
	// gtk.TextView
	
	GtkWidget* function()gtk_text_view_new;
	GtkWidget* function(GtkTextBuffer* buffer)gtk_text_view_new_with_buffer;
	void function(GtkTextView* textView, GtkTextBuffer* buffer)gtk_text_view_set_buffer;
	GtkTextBuffer* function(GtkTextView* textView)gtk_text_view_get_buffer;
	void function(GtkTextView* textView, GtkTextMark* mark, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign)gtk_text_view_scroll_to_mark;
	gboolean function(GtkTextView* textView, GtkTextIter* iter, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign)gtk_text_view_scroll_to_iter;
	void function(GtkTextView* textView, GtkTextMark* mark)gtk_text_view_scroll_mark_onscreen;
	gboolean function(GtkTextView* textView, GtkTextMark* mark)gtk_text_view_move_mark_onscreen;
	gboolean function(GtkTextView* textView)gtk_text_view_place_cursor_onscreen;
	void function(GtkTextView* textView, GdkRectangle* visibleRect)gtk_text_view_get_visible_rect;
	void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* location)gtk_text_view_get_iter_location;
	void function(GtkTextView* textView, GtkTextIter* targetIter, gint y, gint* lineTop)gtk_text_view_get_line_at_y;
	void function(GtkTextView* textView, GtkTextIter* iter, gint* y, gint* height)gtk_text_view_get_line_yrange;
	void function(GtkTextView* textView, GtkTextIter* iter, gint x, gint y)gtk_text_view_get_iter_at_location;
	void function(GtkTextView* textView, GtkTextIter* iter, gint* trailing, gint x, gint y)gtk_text_view_get_iter_at_position;
	void function(GtkTextView* textView, GtkTextWindowType win, gint bufferX, gint bufferY, gint* windowX, gint* windowY)gtk_text_view_buffer_to_window_coords;
	void function(GtkTextView* textView, GtkTextWindowType win, gint windowX, gint windowY, gint* bufferX, gint* bufferY)gtk_text_view_window_to_buffer_coords;
	GdkWindow* function(GtkTextView* textView, GtkTextWindowType win)gtk_text_view_get_window;
	GtkTextWindowType function(GtkTextView* textView, GdkWindow* window)gtk_text_view_get_window_type;
	void function(GtkTextView* textView, GtkTextWindowType type, gint size)gtk_text_view_set_border_window_size;
	gint function(GtkTextView* textView, GtkTextWindowType type)gtk_text_view_get_border_window_size;
	gboolean function(GtkTextView* textView, GtkTextIter* iter)gtk_text_view_forward_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter)gtk_text_view_backward_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter)gtk_text_view_forward_display_line_end;
	gboolean function(GtkTextView* textView, GtkTextIter* iter)gtk_text_view_backward_display_line_start;
	gboolean function(GtkTextView* textView, GtkTextIter* iter)gtk_text_view_starts_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter, gint count)gtk_text_view_move_visually;
	void function(GtkTextView* textView, GtkWidget* child, GtkTextChildAnchor* anchor)gtk_text_view_add_child_at_anchor;
	void function(GtkTextView* textView, GtkWidget* child, GtkTextWindowType whichWindow, gint xpos, gint ypos)gtk_text_view_add_child_in_window;
	void function(GtkTextView* textView, GtkWidget* child, gint xpos, gint ypos)gtk_text_view_move_child;
	void function(GtkTextView* textView, GtkWrapMode wrapMode)gtk_text_view_set_wrap_mode;
	GtkWrapMode function(GtkTextView* textView)gtk_text_view_get_wrap_mode;
	void function(GtkTextView* textView, gboolean setting)gtk_text_view_set_editable;
	gboolean function(GtkTextView* textView)gtk_text_view_get_editable;
	void function(GtkTextView* textView, gboolean setting)gtk_text_view_set_cursor_visible;
	gboolean function(GtkTextView* textView)gtk_text_view_get_cursor_visible;
	void function(GtkTextView* textView, gboolean overwrite)gtk_text_view_set_overwrite;
	gboolean function(GtkTextView* textView)gtk_text_view_get_overwrite;
	void function(GtkTextView* textView, gint pixelsAboveLines)gtk_text_view_set_pixels_above_lines;
	gint function(GtkTextView* textView)gtk_text_view_get_pixels_above_lines;
	void function(GtkTextView* textView, gint pixelsBelowLines)gtk_text_view_set_pixels_below_lines;
	gint function(GtkTextView* textView)gtk_text_view_get_pixels_below_lines;
	void function(GtkTextView* textView, gint pixelsInsideWrap)gtk_text_view_set_pixels_inside_wrap;
	gint function(GtkTextView* textView)gtk_text_view_get_pixels_inside_wrap;
	void function(GtkTextView* textView, GtkJustification justification)gtk_text_view_set_justification;
	GtkJustification function(GtkTextView* textView)gtk_text_view_get_justification;
	void function(GtkTextView* textView, gint leftMargin)gtk_text_view_set_left_margin;
	gint function(GtkTextView* textView)gtk_text_view_get_left_margin;
	void function(GtkTextView* textView, gint rightMargin)gtk_text_view_set_right_margin;
	gint function(GtkTextView* textView)gtk_text_view_get_right_margin;
	void function(GtkTextView* textView, gint indent)gtk_text_view_set_indent;
	gint function(GtkTextView* textView)gtk_text_view_get_indent;
	void function(GtkTextView* textView, PangoTabArray* tabs)gtk_text_view_set_tabs;
	PangoTabArray* function(GtkTextView* textView)gtk_text_view_get_tabs;
	void function(GtkTextView* textView, gboolean acceptsTab)gtk_text_view_set_accepts_tab;
	gboolean function(GtkTextView* textView)gtk_text_view_get_accepts_tab;
	GtkTextAttributes* function(GtkTextView* textView)gtk_text_view_get_default_attributes;
	
	// gtk.TextChildAnchor
	
	GtkTextChildAnchor* function()gtk_text_child_anchor_new;
	GList* function(GtkTextChildAnchor* anchor)gtk_text_child_anchor_get_widgets;
	gboolean function(GtkTextChildAnchor* anchor)gtk_text_child_anchor_get_deleted;
	
	// gtk.TreePath
	
	GtkTreePath* function()gtk_tree_path_new;
	GtkTreePath* function(gchar* path)gtk_tree_path_new_from_string;
	GtkTreePath* function(gint firstIndex, ... )gtk_tree_path_new_from_indices;
	gchar* function(GtkTreePath* path)gtk_tree_path_to_string;
	GtkTreePath* function()gtk_tree_path_new_first;
	void function(GtkTreePath* path, gint index)gtk_tree_path_append_index;
	void function(GtkTreePath* path, gint index)gtk_tree_path_prepend_index;
	gint function(GtkTreePath* path)gtk_tree_path_get_depth;
	gint* function(GtkTreePath* path)gtk_tree_path_get_indices;
	void function(GtkTreePath* path)gtk_tree_path_free;
	GtkTreePath* function(GtkTreePath* path)gtk_tree_path_copy;
	gint function(GtkTreePath* a, GtkTreePath* b)gtk_tree_path_compare;
	void function(GtkTreePath* path)gtk_tree_path_next;
	gboolean function(GtkTreePath* path)gtk_tree_path_prev;
	gboolean function(GtkTreePath* path)gtk_tree_path_up;
	void function(GtkTreePath* path)gtk_tree_path_down;
	gboolean function(GtkTreePath* path, GtkTreePath* descendant)gtk_tree_path_is_ancestor;
	gboolean function(GtkTreePath* path, GtkTreePath* ancestor)gtk_tree_path_is_descendant;
	
	// gtk.TreeModelT
	
	
	// gtk.TreeModelT
	
	GtkTreeModelFlags function(GtkTreeModel* treeModel)gtk_tree_model_get_flags;
	gint function(GtkTreeModel* treeModel)gtk_tree_model_get_n_columns;
	GType function(GtkTreeModel* treeModel, gint index)gtk_tree_model_get_column_type;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path)gtk_tree_model_get_iter;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, gchar* pathString)gtk_tree_model_get_iter_from_string;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_get_iter_first;
	GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_get_path;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, gint column, GValue* value)gtk_tree_model_get_value;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_iter_next;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent)gtk_tree_model_iter_children;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_iter_has_child;
	gint function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_iter_n_children;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, gint n)gtk_tree_model_iter_nth_child;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child)gtk_tree_model_iter_parent;
	gchar* function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_get_string_from_iter;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_ref_node;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter)gtk_tree_model_unref_node;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, ... )gtk_tree_model_get;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, va_list varArgs)gtk_tree_model_get_valist;
	void function(GtkTreeModel* model, GtkTreeModelForeachFunc func, gpointer userData)gtk_tree_model_foreach;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)gtk_tree_model_row_changed;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)gtk_tree_model_row_inserted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter)gtk_tree_model_row_has_child_toggled;
	void function(GtkTreeModel* treeModel, GtkTreePath* path)gtk_tree_model_row_deleted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder)gtk_tree_model_rows_reordered;
	
	// gtk.TreeIter
	
	GtkTreeIter* function(GtkTreeIter* iter)gtk_tree_iter_copy;
	void function(GtkTreeIter* iter)gtk_tree_iter_free;
	
	// gtk.TreeRowReference
	
	GtkTreeRowReference* function(GtkTreeModel* model, GtkTreePath* path)gtk_tree_row_reference_new;
	GtkTreeRowReference* function(GObject* proxy, GtkTreeModel* model, GtkTreePath* path)gtk_tree_row_reference_new_proxy;
	GtkTreeModel* function(GtkTreeRowReference* reference)gtk_tree_row_reference_get_model;
	GtkTreePath* function(GtkTreeRowReference* reference)gtk_tree_row_reference_get_path;
	gboolean function(GtkTreeRowReference* reference)gtk_tree_row_reference_valid;
	void function(GtkTreeRowReference* reference)gtk_tree_row_reference_free;
	GtkTreeRowReference* function(GtkTreeRowReference* reference)gtk_tree_row_reference_copy;
	void function(GObject* proxy, GtkTreePath* path)gtk_tree_row_reference_inserted;
	void function(GObject* proxy, GtkTreePath* path)gtk_tree_row_reference_deleted;
	void function(GObject* proxy, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder)gtk_tree_row_reference_reordered;
	
	// gtk.TreeIterError
	
	
	// gtk.
	
	
	// gtk.TreeSelection
	
	void function(GtkTreeSelection* selection, GtkSelectionMode type)gtk_tree_selection_set_mode;
	GtkSelectionMode function(GtkTreeSelection* selection)gtk_tree_selection_get_mode;
	void function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, gpointer data, GtkDestroyNotify destroy)gtk_tree_selection_set_select_function;
	gpointer function(GtkTreeSelection* selection)gtk_tree_selection_get_user_data;
	GtkTreeView* function(GtkTreeSelection* selection)gtk_tree_selection_get_tree_view;
	gboolean function(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter)gtk_tree_selection_get_selected;
	void function(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, gpointer data)gtk_tree_selection_selected_foreach;
	GList* function(GtkTreeSelection* selection, GtkTreeModel** model)gtk_tree_selection_get_selected_rows;
	gint function(GtkTreeSelection* selection)gtk_tree_selection_count_selected_rows;
	void function(GtkTreeSelection* selection, GtkTreePath* path)gtk_tree_selection_select_path;
	void function(GtkTreeSelection* selection, GtkTreePath* path)gtk_tree_selection_unselect_path;
	gboolean function(GtkTreeSelection* selection, GtkTreePath* path)gtk_tree_selection_path_is_selected;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter)gtk_tree_selection_select_iter;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter)gtk_tree_selection_unselect_iter;
	gboolean function(GtkTreeSelection* selection, GtkTreeIter* iter)gtk_tree_selection_iter_is_selected;
	void function(GtkTreeSelection* selection)gtk_tree_selection_select_all;
	void function(GtkTreeSelection* selection)gtk_tree_selection_unselect_all;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath)gtk_tree_selection_select_range;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath)gtk_tree_selection_unselect_range;
	
	// gtk.TreeViewColumn
	
	GtkTreeViewColumn* function()gtk_tree_view_column_new;
	GtkTreeViewColumn* function(gchar* title, GtkCellRenderer* cell, ... )gtk_tree_view_column_new_with_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand)gtk_tree_view_column_pack_start;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand)gtk_tree_view_column_pack_end;
	void function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_clear;
	GList* function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_cell_renderers;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gchar* attribute, gint column)gtk_tree_view_column_add_attribute;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, ... )gtk_tree_view_column_set_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, GtkTreeCellDataFunc func, gpointer funcData, GtkDestroyNotify destroy)gtk_tree_view_column_set_cell_data_func;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer)gtk_tree_view_column_clear_attributes;
	void function(GtkTreeViewColumn* treeColumn, gint spacing)gtk_tree_view_column_set_spacing;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_spacing;
	void function(GtkTreeViewColumn* treeColumn, gboolean visible)gtk_tree_view_column_set_visible;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_visible;
	void function(GtkTreeViewColumn* treeColumn, gboolean resizable)gtk_tree_view_column_set_resizable;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_resizable;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeViewColumnSizing type)gtk_tree_view_column_set_sizing;
	GtkTreeViewColumnSizing function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_sizing;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_width;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_fixed_width;
	void function(GtkTreeViewColumn* treeColumn, gint fixedWidth)gtk_tree_view_column_set_fixed_width;
	void function(GtkTreeViewColumn* treeColumn, gint minWidth)gtk_tree_view_column_set_min_width;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_min_width;
	void function(GtkTreeViewColumn* treeColumn, gint maxWidth)gtk_tree_view_column_set_max_width;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_max_width;
	void function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_clicked;
	void function(GtkTreeViewColumn* treeColumn, gchar* title)gtk_tree_view_column_set_title;
	gchar* function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_title;
	void function(GtkTreeViewColumn* treeColumn, gboolean expand)gtk_tree_view_column_set_expand;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_expand;
	void function(GtkTreeViewColumn* treeColumn, gboolean clickable)gtk_tree_view_column_set_clickable;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_clickable;
	void function(GtkTreeViewColumn* treeColumn, GtkWidget* widget)gtk_tree_view_column_set_widget;
	GtkWidget* function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_widget;
	void function(GtkTreeViewColumn* treeColumn, gfloat xalign)gtk_tree_view_column_set_alignment;
	gfloat function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_alignment;
	void function(GtkTreeViewColumn* treeColumn, gboolean reorderable)gtk_tree_view_column_set_reorderable;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_reorderable;
	void function(GtkTreeViewColumn* treeColumn, gint sortColumnId)gtk_tree_view_column_set_sort_column_id;
	gint function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_sort_column_id;
	void function(GtkTreeViewColumn* treeColumn, gboolean setting)gtk_tree_view_column_set_sort_indicator;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_sort_indicator;
	void function(GtkTreeViewColumn* treeColumn, GtkSortType order)gtk_tree_view_column_set_sort_order;
	GtkSortType function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_sort_order;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeModel* treeModel, GtkTreeIter* iter, gboolean isExpander, gboolean isExpanded)gtk_tree_view_column_cell_set_cell_data;
	void function(GtkTreeViewColumn* treeColumn, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height)gtk_tree_view_column_cell_get_size;
	gboolean function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gint* startPos, gint* width)gtk_tree_view_column_cell_get_position;
	gboolean function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_cell_is_visible;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell)gtk_tree_view_column_focus_cell;
	void function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_queue_resize;
	GtkWidget* function(GtkTreeViewColumn* treeColumn)gtk_tree_view_column_get_tree_view;
	
	// gtk.TreeView
	
	GtkWidget* function()gtk_tree_view_new;
	gint function(GtkTreeView* treeView)gtk_tree_view_get_level_indentation;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_show_expanders;
	void function(GtkTreeView* treeView, gint indentation)gtk_tree_view_set_level_indentation;
	void function(GtkTreeView* treeView, gboolean enabled)gtk_tree_view_set_show_expanders;
	GtkWidget* function(GtkTreeModel* model)gtk_tree_view_new_with_model;
	GtkTreeModel* function(GtkTreeView* treeView)gtk_tree_view_get_model;
	void function(GtkTreeView* treeView, GtkTreeModel* model)gtk_tree_view_set_model;
	GtkTreeSelection* function(GtkTreeView* treeView)gtk_tree_view_get_selection;
	GtkAdjustment* function(GtkTreeView* treeView)gtk_tree_view_get_hadjustment;
	void function(GtkTreeView* treeView, GtkAdjustment* adjustment)gtk_tree_view_set_hadjustment;
	GtkAdjustment* function(GtkTreeView* treeView)gtk_tree_view_get_vadjustment;
	void function(GtkTreeView* treeView, GtkAdjustment* adjustment)gtk_tree_view_set_vadjustment;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_headers_visible;
	void function(GtkTreeView* treeView, gboolean headersVisible)gtk_tree_view_set_headers_visible;
	void function(GtkTreeView* treeView)gtk_tree_view_columns_autosize;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_headers_clickable;
	void function(GtkTreeView* treeView, gboolean setting)gtk_tree_view_set_headers_clickable;
	void function(GtkTreeView* treeView, gboolean setting)gtk_tree_view_set_rules_hint;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_rules_hint;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column)gtk_tree_view_append_column;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column)gtk_tree_view_remove_column;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column, gint position)gtk_tree_view_insert_column;
	gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, ... )gtk_tree_view_insert_column_with_attributes;
	gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, gpointer data, GDestroyNotify dnotify)gtk_tree_view_insert_column_with_data_func;
	GtkTreeViewColumn* function(GtkTreeView* treeView, gint n)gtk_tree_view_get_column;
	GList* function(GtkTreeView* treeView)gtk_tree_view_get_columns;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* baseColumn)gtk_tree_view_move_column_after;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column)gtk_tree_view_set_expander_column;
	GtkTreeViewColumn* function(GtkTreeView* treeView)gtk_tree_view_get_expander_column;
	void function(GtkTreeView* treeView, GtkTreeViewColumnDropFunc func, gpointer userData, GtkDestroyNotify destroy)gtk_tree_view_set_column_drag_function;
	void function(GtkTreeView* treeView, gint treeX, gint treeY)gtk_tree_view_scroll_to_point;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, gboolean useAlign, gfloat rowAlign, gfloat colAlign)gtk_tree_view_scroll_to_cell;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, gboolean startEditing)gtk_tree_view_set_cursor;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, GtkCellRenderer* focusCell, gboolean startEditing)gtk_tree_view_set_cursor_on_cell;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewColumn** focusColumn)gtk_tree_view_get_cursor;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column)gtk_tree_view_row_activated;
	void function(GtkTreeView* treeView)gtk_tree_view_expand_all;
	void function(GtkTreeView* treeView)gtk_tree_view_collapse_all;
	void function(GtkTreeView* treeView, GtkTreePath* path)gtk_tree_view_expand_to_path;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path, gboolean openAll)gtk_tree_view_expand_row;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path)gtk_tree_view_collapse_row;
	void function(GtkTreeView* treeView, GtkTreeViewMappingFunc func, gpointer data)gtk_tree_view_map_expanded_rows;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path)gtk_tree_view_row_expanded;
	void function(GtkTreeView* treeView, gboolean reorderable)gtk_tree_view_set_reorderable;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_reorderable;
	gboolean function(GtkTreeView* treeView, gint x, gint y, GtkTreePath** path, GtkTreeViewColumn** column, gint* cellX, gint* cellY)gtk_tree_view_get_path_at_pos;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect)gtk_tree_view_get_cell_area;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect)gtk_tree_view_get_background_area;
	void function(GtkTreeView* treeView, GdkRectangle* visibleRect)gtk_tree_view_get_visible_rect;
	gboolean function(GtkTreeView* treeView, GtkTreePath** startPath, GtkTreePath** endPath)gtk_tree_view_get_visible_range;
	GdkWindow* function(GtkTreeView* treeView)gtk_tree_view_get_bin_window;
	void function(GtkTreeView* treeView, gint wx, gint wy, gint* tx, gint* ty)gtk_tree_view_widget_to_tree_coords;
	void function(GtkTreeView* treeView, gint tx, gint ty, gint* wx, gint* wy)gtk_tree_view_tree_to_widget_coords;
	void function(GtkTreeView* treeView, gint bx, gint by, gint* tx, gint* ty)gtk_tree_view_convert_bin_window_to_tree_coords;
	void function(GtkTreeView* treeView, gint bx, gint by, gint* wx, gint* wy)gtk_tree_view_convert_bin_window_to_widget_coords;
	void function(GtkTreeView* treeView, gint tx, gint ty, gint* bx, gint* by)gtk_tree_view_convert_tree_to_bin_window_coords;
	void function(GtkTreeView* treeView, gint tx, gint ty, gint* wx, gint* wy)gtk_tree_view_convert_tree_to_widget_coords;
	void function(GtkTreeView* treeView, gint wx, gint wy, gint* bx, gint* by)gtk_tree_view_convert_widget_to_bin_window_coords;
	void function(GtkTreeView* treeView, gint wx, gint wy, gint* tx, gint* ty)gtk_tree_view_convert_widget_to_tree_coords;
	void function(GtkTreeView* treeView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_tree_view_enable_model_drag_dest;
	void function(GtkTreeView* treeView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_tree_view_enable_model_drag_source;
	void function(GtkTreeView* treeView)gtk_tree_view_unset_rows_drag_source;
	void function(GtkTreeView* treeView)gtk_tree_view_unset_rows_drag_dest;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos)gtk_tree_view_set_drag_dest_row;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewDropPosition* pos)gtk_tree_view_get_drag_dest_row;
	gboolean function(GtkTreeView* treeView, gint dragX, gint dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos)gtk_tree_view_get_dest_row_at_pos;
	GdkPixmap* function(GtkTreeView* treeView, GtkTreePath* path)gtk_tree_view_create_row_drag_icon;
	void function(GtkTreeView* treeView, gboolean enableSearch)gtk_tree_view_set_enable_search;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_enable_search;
	gint function(GtkTreeView* treeView)gtk_tree_view_get_search_column;
	void function(GtkTreeView* treeView, gint column)gtk_tree_view_set_search_column;
	GtkTreeViewSearchEqualFunc function(GtkTreeView* treeView)gtk_tree_view_get_search_equal_func;
	void function(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, gpointer searchUserData, GtkDestroyNotify searchDestroy)gtk_tree_view_set_search_equal_func;
	GtkEntry* function(GtkTreeView* treeView)gtk_tree_view_get_search_entry;
	void function(GtkTreeView* treeView, GtkEntry* entry)gtk_tree_view_set_search_entry;
	GtkTreeViewSearchPositionFunc function(GtkTreeView* treeView)gtk_tree_view_get_search_position_func;
	void function(GtkTreeView* treeView, GtkTreeViewSearchPositionFunc func, gpointer data, GDestroyNotify destroy)gtk_tree_view_set_search_position_func;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_fixed_height_mode;
	void function(GtkTreeView* treeView, gboolean enable)gtk_tree_view_set_fixed_height_mode;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_hover_selection;
	void function(GtkTreeView* treeView, gboolean hover)gtk_tree_view_set_hover_selection;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_hover_expand;
	void function(GtkTreeView* treeView, gboolean expand)gtk_tree_view_set_hover_expand;
	void function(GtkTreeView* treeView, GtkTreeDestroyCountFunc func, gpointer data, GtkDestroyNotify destroy)gtk_tree_view_set_destroy_count_func;
	GtkTreeViewRowSeparatorFunc function(GtkTreeView* treeView)gtk_tree_view_get_row_separator_func;
	void function(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, gpointer data, GtkDestroyNotify destroy)gtk_tree_view_set_row_separator_func;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_rubber_banding;
	void function(GtkTreeView* treeView, gboolean enable)gtk_tree_view_set_rubber_banding;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_is_rubber_banding_active;
	gboolean function(GtkTreeView* treeView)gtk_tree_view_get_enable_tree_lines;
	void function(GtkTreeView* treeView, gboolean enabled)gtk_tree_view_set_enable_tree_lines;
	GtkTreeViewGridLines function(GtkTreeView* treeView)gtk_tree_view_get_grid_lines;
	void function(GtkTreeView* treeView, GtkTreeViewGridLines gridLines)gtk_tree_view_set_grid_lines;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path)gtk_tree_view_set_tooltip_row;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell)gtk_tree_view_set_tooltip_cell;
	gboolean function(GtkTreeView* treeView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter)gtk_tree_view_get_tooltip_context;
	gint function(GtkTreeView* treeView)gtk_tree_view_get_tooltip_column;
	void function(GtkTreeView* treeView, gint column)gtk_tree_view_set_tooltip_column;
	
	// gtk.TreeDragSourceT
	
	
	// gtk.TreeDragSourceT
	
	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path)gtk_tree_drag_source_drag_data_delete;
	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData)gtk_tree_drag_source_drag_data_get;
	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path)gtk_tree_drag_source_row_draggable;
	gboolean function(GtkSelectionData* selectionData, GtkTreeModel* treeModel, GtkTreePath* path)gtk_tree_set_row_drag_data;
	gboolean function(GtkSelectionData* selectionData, GtkTreeModel** treeModel, GtkTreePath** path)gtk_tree_get_row_drag_data;
	
	// gtk.TreeDragDestT
	
	
	// gtk.TreeDragDestT
	
	gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData)gtk_tree_drag_dest_drag_data_received;
	gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData)gtk_tree_drag_dest_row_drop_possible;
	
	// gtk.CellView
	
	GtkWidget* function()gtk_cell_view_new;
	GtkWidget* function(gchar* text)gtk_cell_view_new_with_text;
	GtkWidget* function(gchar* markup)gtk_cell_view_new_with_markup;
	GtkWidget* function(GdkPixbuf* pixbuf)gtk_cell_view_new_with_pixbuf;
	void function(GtkCellView* cellView, GtkTreeModel* model)gtk_cell_view_set_model;
	void function(GtkCellView* cellView, GtkTreePath* path)gtk_cell_view_set_displayed_row;
	GtkTreePath* function(GtkCellView* cellView)gtk_cell_view_get_displayed_row;
	gboolean function(GtkCellView* cellView, GtkTreePath* path, GtkRequisition* requisition)gtk_cell_view_get_size_of_row;
	void function(GtkCellView* cellView, GdkColor* color)gtk_cell_view_set_background_color;
	GList* function(GtkCellView* cellView)gtk_cell_view_get_cell_renderers;
	
	// gtk.IconView
	
	GtkWidget* function()gtk_icon_view_new;
	GtkWidget* function(GtkTreeModel* model)gtk_icon_view_new_with_model;
	void function(GtkIconView* iconView, GtkTreeModel* model)gtk_icon_view_set_model;
	GtkTreeModel* function(GtkIconView* iconView)gtk_icon_view_get_model;
	void function(GtkIconView* iconView, gint column)gtk_icon_view_set_text_column;
	gint function(GtkIconView* iconView)gtk_icon_view_get_text_column;
	void function(GtkIconView* iconView, gint column)gtk_icon_view_set_markup_column;
	gint function(GtkIconView* iconView)gtk_icon_view_get_markup_column;
	void function(GtkIconView* iconView, gint column)gtk_icon_view_set_pixbuf_column;
	gint function(GtkIconView* iconView)gtk_icon_view_get_pixbuf_column;
	GtkTreePath* function(GtkIconView* iconView, gint x, gint y)gtk_icon_view_get_path_at_pos;
	gboolean function(GtkIconView* iconView, gint x, gint y, GtkTreePath** path, GtkCellRenderer** cell)gtk_icon_view_get_item_at_pos;
	void function(GtkIconView* iconView, gint wx, gint wy, gint* bx, gint* by)gtk_icon_view_convert_widget_to_bin_window_coords;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, gboolean startEditing)gtk_icon_view_set_cursor;
	gboolean function(GtkIconView* iconView, GtkTreePath** path, GtkCellRenderer** cell)gtk_icon_view_get_cursor;
	void function(GtkIconView* iconView, GtkIconViewForeachFunc func, gpointer data)gtk_icon_view_selected_foreach;
	void function(GtkIconView* iconView, GtkSelectionMode mode)gtk_icon_view_set_selection_mode;
	GtkSelectionMode function(GtkIconView* iconView)gtk_icon_view_get_selection_mode;
	void function(GtkIconView* iconView, GtkOrientation orientation)gtk_icon_view_set_orientation;
	GtkOrientation function(GtkIconView* iconView)gtk_icon_view_get_orientation;
	void function(GtkIconView* iconView, gint columns)gtk_icon_view_set_columns;
	gint function(GtkIconView* iconView)gtk_icon_view_get_columns;
	void function(GtkIconView* iconView, gint itemWidth)gtk_icon_view_set_item_width;
	gint function(GtkIconView* iconView)gtk_icon_view_get_item_width;
	void function(GtkIconView* iconView, gint spacing)gtk_icon_view_set_spacing;
	gint function(GtkIconView* iconView)gtk_icon_view_get_spacing;
	void function(GtkIconView* iconView, gint rowSpacing)gtk_icon_view_set_row_spacing;
	gint function(GtkIconView* iconView)gtk_icon_view_get_row_spacing;
	void function(GtkIconView* iconView, gint columnSpacing)gtk_icon_view_set_column_spacing;
	gint function(GtkIconView* iconView)gtk_icon_view_get_column_spacing;
	void function(GtkIconView* iconView, gint margin)gtk_icon_view_set_margin;
	gint function(GtkIconView* iconView)gtk_icon_view_get_margin;
	void function(GtkIconView* iconView, GtkTreePath* path)gtk_icon_view_select_path;
	void function(GtkIconView* iconView, GtkTreePath* path)gtk_icon_view_unselect_path;
	gboolean function(GtkIconView* iconView, GtkTreePath* path)gtk_icon_view_path_is_selected;
	GList* function(GtkIconView* iconView)gtk_icon_view_get_selected_items;
	void function(GtkIconView* iconView)gtk_icon_view_select_all;
	void function(GtkIconView* iconView)gtk_icon_view_unselect_all;
	void function(GtkIconView* iconView, GtkTreePath* path)gtk_icon_view_item_activated;
	void function(GtkIconView* iconView, GtkTreePath* path, gboolean useAlign, gfloat rowAlign, gfloat colAlign)gtk_icon_view_scroll_to_path;
	gboolean function(GtkIconView* iconView, GtkTreePath** startPath, GtkTreePath** endPath)gtk_icon_view_get_visible_range;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path)gtk_icon_view_set_tooltip_item;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell)gtk_icon_view_set_tooltip_cell;
	gboolean function(GtkIconView* iconView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter)gtk_icon_view_get_tooltip_context;
	void function(GtkIconView* iconView, gint column)gtk_icon_view_set_tooltip_column;
	gint function(GtkIconView* iconView)gtk_icon_view_get_tooltip_column;
	void function(GtkIconView* iconView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_icon_view_enable_model_drag_source;
	void function(GtkIconView* iconView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions)gtk_icon_view_enable_model_drag_dest;
	void function(GtkIconView* iconView)gtk_icon_view_unset_model_drag_source;
	void function(GtkIconView* iconView)gtk_icon_view_unset_model_drag_dest;
	void function(GtkIconView* iconView, gboolean reorderable)gtk_icon_view_set_reorderable;
	gboolean function(GtkIconView* iconView)gtk_icon_view_get_reorderable;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkIconViewDropPosition pos)gtk_icon_view_set_drag_dest_item;
	void function(GtkIconView* iconView, GtkTreePath** path, GtkIconViewDropPosition* pos)gtk_icon_view_get_drag_dest_item;
	gboolean function(GtkIconView* iconView, gint dragX, gint dragY, GtkTreePath** path, GtkIconViewDropPosition* pos)gtk_icon_view_get_dest_item_at_pos;
	GdkPixmap* function(GtkIconView* iconView, GtkTreePath* path)gtk_icon_view_create_drag_icon;
	
	// gtk.TreeSortableT
	
	
	// gtk.TreeSortableT
	
	void function(GtkTreeSortable* sortable)gtk_tree_sortable_sort_column_changed;
	gboolean function(GtkTreeSortable* sortable, gint* sortColumnId, GtkSortType* order)gtk_tree_sortable_get_sort_column_id;
	void function(GtkTreeSortable* sortable, gint sortColumnId, GtkSortType order)gtk_tree_sortable_set_sort_column_id;
	void function(GtkTreeSortable* sortable, gint sortColumnId, GtkTreeIterCompareFunc sortFunc, gpointer userData, GtkDestroyNotify destroy)gtk_tree_sortable_set_sort_func;
	void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, gpointer userData, GtkDestroyNotify destroy)gtk_tree_sortable_set_default_sort_func;
	gboolean function(GtkTreeSortable* sortable)gtk_tree_sortable_has_default_sort_func;
	
	// gtk.TreeModelSort
	
	GtkTreeModel* function(GtkTreeModel* childModel)gtk_tree_model_sort_new_with_model;
	GtkTreeModel* function(GtkTreeModelSort* treeModel)gtk_tree_model_sort_get_model;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath)gtk_tree_model_sort_convert_child_path_to_path;
	void function(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter)gtk_tree_model_sort_convert_child_iter_to_iter;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath)gtk_tree_model_sort_convert_path_to_child_path;
	void function(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter)gtk_tree_model_sort_convert_iter_to_child_iter;
	void function(GtkTreeModelSort* treeModelSort)gtk_tree_model_sort_reset_default_sort_func;
	void function(GtkTreeModelSort* treeModelSort)gtk_tree_model_sort_clear_cache;
	gboolean function(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter)gtk_tree_model_sort_iter_is_valid;
	
	// gtk.TreeModelFilter
	
	GtkTreeModel* function(GtkTreeModel* childModel, GtkTreePath* root)gtk_tree_model_filter_new;
	void function(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, gpointer data, GtkDestroyNotify destroy)gtk_tree_model_filter_set_visible_func;
	void function(GtkTreeModelFilter* filter, gint nColumns, GType* types, GtkTreeModelFilterModifyFunc func, gpointer data, GtkDestroyNotify destroy)gtk_tree_model_filter_set_modify_func;
	void function(GtkTreeModelFilter* filter, gint column)gtk_tree_model_filter_set_visible_column;
	GtkTreeModel* function(GtkTreeModelFilter* filter)gtk_tree_model_filter_get_model;
	gboolean function(GtkTreeModelFilter* filter, GtkTreeIter* filterIter, GtkTreeIter* childIter)gtk_tree_model_filter_convert_child_iter_to_iter;
	void function(GtkTreeModelFilter* filter, GtkTreeIter* childIter, GtkTreeIter* filterIter)gtk_tree_model_filter_convert_iter_to_child_iter;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* childPath)gtk_tree_model_filter_convert_child_path_to_path;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* filterPath)gtk_tree_model_filter_convert_path_to_child_path;
	void function(GtkTreeModelFilter* filter)gtk_tree_model_filter_refilter;
	void function(GtkTreeModelFilter* filter)gtk_tree_model_filter_clear_cache;
	
	// gtk.CellLayoutT
	
	
	// gtk.CellLayoutT
	
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand)gtk_cell_layout_pack_start;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand)gtk_cell_layout_pack_end;
	GList* function(GtkCellLayout* cellLayout)gtk_cell_layout_get_cells;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gint position)gtk_cell_layout_reorder;
	void function(GtkCellLayout* cellLayout)gtk_cell_layout_clear;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, ... )gtk_cell_layout_set_attributes;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gchar* attribute, gint column)gtk_cell_layout_add_attribute;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, gpointer funcData, GDestroyNotify destroy)gtk_cell_layout_set_cell_data_func;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell)gtk_cell_layout_clear_attributes;
	
	// gtk.CellRenderer
	
	void function(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height)gtk_cell_renderer_get_size;
	void function(GtkCellRenderer* cell, GdkWindow* window, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GdkRectangle* exposeArea, GtkCellRendererState flags)gtk_cell_renderer_render;
	gboolean function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)gtk_cell_renderer_activate;
	GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags)gtk_cell_renderer_start_editing;
	void function(GtkCellRenderer* cell)gtk_cell_renderer_editing_canceled;
	void function(GtkCellRenderer* cell, gboolean canceled)gtk_cell_renderer_stop_editing;
	void function(GtkCellRenderer* cell, gint* width, gint* height)gtk_cell_renderer_get_fixed_size;
	void function(GtkCellRenderer* cell, gint width, gint height)gtk_cell_renderer_set_fixed_size;
	
	// gtk.CellEditableT
	
	
	// gtk.CellEditableT
	
	void function(GtkCellEditable* cellEditable, GdkEvent* event)gtk_cell_editable_start_editing;
	void function(GtkCellEditable* cellEditable)gtk_cell_editable_editing_done;
	void function(GtkCellEditable* cellEditable)gtk_cell_editable_remove_widget;
	
	// gtk.CellEditable
	
	
	// gtk.CellRendererAccel
	
	GtkCellRenderer* function()gtk_cell_renderer_accel_new;
	
	// gtk.CellRendererCombo
	
	GtkCellRenderer* function()gtk_cell_renderer_combo_new;
	
	// gtk.CellRendererPixbuf
	
	GtkCellRenderer* function()gtk_cell_renderer_pixbuf_new;
	
	// gtk.CellRendererProgress
	
	GtkCellRenderer* function()gtk_cell_renderer_progress_new;
	
	// gtk.CellRendererSpin
	
	GtkCellRenderer* function()gtk_cell_renderer_spin_new;
	
	// gtk.CellRendererText
	
	GtkCellRenderer* function()gtk_cell_renderer_text_new;
	void function(GtkCellRendererText* renderer, gint numberOfRows)gtk_cell_renderer_text_set_fixed_height_from_font;
	
	// gtk.CellRendererToggle
	
	GtkCellRenderer* function()gtk_cell_renderer_toggle_new;
	gboolean function(GtkCellRendererToggle* toggle)gtk_cell_renderer_toggle_get_radio;
	void function(GtkCellRendererToggle* toggle, gboolean radio)gtk_cell_renderer_toggle_set_radio;
	gboolean function(GtkCellRendererToggle* toggle)gtk_cell_renderer_toggle_get_active;
	void function(GtkCellRendererToggle* toggle, gboolean setting)gtk_cell_renderer_toggle_set_active;
	
	// gtk.
	
	
	// gtk.ListStore
	
	GtkListStore* function(gint nColumns, ... )gtk_list_store_new;
	GtkListStore* function(gint nColumns, GType* types)gtk_list_store_newv;
	void function(GtkListStore* listStore, gint nColumns, GType* types)gtk_list_store_set_column_types;
	void function(GtkListStore* listStore, GtkTreeIter* iter, ... )gtk_list_store_set;
	void function(GtkListStore* listStore, GtkTreeIter* iter, va_list varArgs)gtk_list_store_set_valist;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint column, GValue* value)gtk_list_store_set_value;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues)gtk_list_store_set_valuesv;
	gboolean function(GtkListStore* listStore, GtkTreeIter* iter)gtk_list_store_remove;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position)gtk_list_store_insert;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling)gtk_list_store_insert_before;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling)gtk_list_store_insert_after;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, ... )gtk_list_store_insert_with_values;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, gint* columns, GValue* values, gint nValues)gtk_list_store_insert_with_valuesv;
	void function(GtkListStore* listStore, GtkTreeIter* iter)gtk_list_store_prepend;
	void function(GtkListStore* listStore, GtkTreeIter* iter)gtk_list_store_append;
	void function(GtkListStore* listStore)gtk_list_store_clear;
	gboolean function(GtkListStore* listStore, GtkTreeIter* iter)gtk_list_store_iter_is_valid;
	void function(GtkListStore* store, gint* newOrder)gtk_list_store_reorder;
	void function(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b)gtk_list_store_swap;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position)gtk_list_store_move_before;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position)gtk_list_store_move_after;
	
	// gtk.TreeStore
	
	GtkTreeStore* function(gint nColumns, ... )gtk_tree_store_new;
	GtkTreeStore* function(gint nColumns, GType* types)gtk_tree_store_newv;
	void function(GtkTreeStore* treeStore, gint nColumns, GType* types)gtk_tree_store_set_column_types;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint column, GValue* value)gtk_tree_store_set_value;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, ... )gtk_tree_store_set;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, va_list varArgs)gtk_tree_store_set_valist;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues)gtk_tree_store_set_valuesv;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter)gtk_tree_store_remove;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position)gtk_tree_store_insert;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling)gtk_tree_store_insert_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling)gtk_tree_store_insert_after;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, ... )gtk_tree_store_insert_with_values;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, gint* columns, GValue* values, gint nValues)gtk_tree_store_insert_with_valuesv;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent)gtk_tree_store_prepend;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent)gtk_tree_store_append;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* descendant)gtk_tree_store_is_ancestor;
	gint function(GtkTreeStore* treeStore, GtkTreeIter* iter)gtk_tree_store_iter_depth;
	void function(GtkTreeStore* treeStore)gtk_tree_store_clear;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter)gtk_tree_store_iter_is_valid;
	void function(GtkTreeStore* treeStore, GtkTreeIter* parent, gint* newOrder)gtk_tree_store_reorder;
	void function(GtkTreeStore* treeStore, GtkTreeIter* a, GtkTreeIter* b)gtk_tree_store_swap;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position)gtk_tree_store_move_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position)gtk_tree_store_move_after;
	
	// gtk.ComboBox
	
	GtkWidget* function()gtk_combo_box_new;
	GtkWidget* function(GtkTreeModel* model)gtk_combo_box_new_with_model;
	gint function(GtkComboBox* comboBox)gtk_combo_box_get_wrap_width;
	void function(GtkComboBox* comboBox, gint width)gtk_combo_box_set_wrap_width;
	gint function(GtkComboBox* comboBox)gtk_combo_box_get_row_span_column;
	void function(GtkComboBox* comboBox, gint rowSpan)gtk_combo_box_set_row_span_column;
	gint function(GtkComboBox* comboBox)gtk_combo_box_get_column_span_column;
	void function(GtkComboBox* comboBox, gint columnSpan)gtk_combo_box_set_column_span_column;
	gint function(GtkComboBox* comboBox)gtk_combo_box_get_active;
	void function(GtkComboBox* comboBox, gint index)gtk_combo_box_set_active;
	gboolean function(GtkComboBox* comboBox, GtkTreeIter* iter)gtk_combo_box_get_active_iter;
	void function(GtkComboBox* comboBox, GtkTreeIter* iter)gtk_combo_box_set_active_iter;
	GtkTreeModel* function(GtkComboBox* comboBox)gtk_combo_box_get_model;
	void function(GtkComboBox* comboBox, GtkTreeModel* model)gtk_combo_box_set_model;
	GtkWidget* function()gtk_combo_box_new_text;
	void function(GtkComboBox* comboBox, gchar* text)gtk_combo_box_append_text;
	void function(GtkComboBox* comboBox, gint position, gchar* text)gtk_combo_box_insert_text;
	void function(GtkComboBox* comboBox, gchar* text)gtk_combo_box_prepend_text;
	void function(GtkComboBox* comboBox, gint position)gtk_combo_box_remove_text;
	gchar* function(GtkComboBox* comboBox)gtk_combo_box_get_active_text;
	void function(GtkComboBox* comboBox)gtk_combo_box_popup;
	void function(GtkComboBox* comboBox)gtk_combo_box_popdown;
	AtkObject* function(GtkComboBox* comboBox)gtk_combo_box_get_popup_accessible;
	GtkTreeViewRowSeparatorFunc function(GtkComboBox* comboBox)gtk_combo_box_get_row_separator_func;
	void function(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, gpointer data, GtkDestroyNotify destroy)gtk_combo_box_set_row_separator_func;
	void function(GtkComboBox* comboBox, gboolean addTearoffs)gtk_combo_box_set_add_tearoffs;
	gboolean function(GtkComboBox* comboBox)gtk_combo_box_get_add_tearoffs;
	void function(GtkComboBox* comboBox, gchar* title)gtk_combo_box_set_title;
	gchar* function(GtkComboBox* comboBox)gtk_combo_box_get_title;
	void function(GtkComboBox* combo, gboolean focusOnClick)gtk_combo_box_set_focus_on_click;
	gboolean function(GtkComboBox* combo)gtk_combo_box_get_focus_on_click;
	
	// gtk.ComboBoxEntry
	
	GtkWidget* function()gtk_combo_box_entry_new;
	GtkWidget* function(GtkTreeModel* model, gint textColumn)gtk_combo_box_entry_new_with_model;
	GtkWidget* function()gtk_combo_box_entry_new_text;
	void function(GtkComboBoxEntry* entryBox, gint textColumn)gtk_combo_box_entry_set_text_column;
	gint function(GtkComboBoxEntry* entryBox)gtk_combo_box_entry_get_text_column;
	
	// gtk.Menu
	
	GtkWidget* function()gtk_menu_new;
	void function(GtkMenu* menu, GdkScreen* screen)gtk_menu_set_screen;
	void function(GtkMenu* menu, GtkWidget* child, gint position)gtk_menu_reorder_child;
	void function(GtkMenu* menu, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach)gtk_menu_attach;
	void function(GtkMenu* menu, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, gpointer data, guint button, guint32 activateTime)gtk_menu_popup;
	void function(GtkMenu* menu, GtkAccelGroup* accelGroup)gtk_menu_set_accel_group;
	GtkAccelGroup* function(GtkMenu* menu)gtk_menu_get_accel_group;
	void function(GtkMenu* menu, gchar* accelPath)gtk_menu_set_accel_path;
	void function(GtkMenu* menu, gchar* title)gtk_menu_set_title;
	gboolean function(GtkMenu* menu)gtk_menu_get_tearoff_state;
	gchar* function(GtkMenu* menu)gtk_menu_get_title;
	void function(GtkMenu* menu)gtk_menu_popdown;
	void function(GtkMenu* menu)gtk_menu_reposition;
	GtkWidget* function(GtkMenu* menu)gtk_menu_get_active;
	void function(GtkMenu* menu, guint index)gtk_menu_set_active;
	void function(GtkMenu* menu, gboolean tornOff)gtk_menu_set_tearoff_state;
	void function(GtkMenu* menu, GtkWidget* attachWidget, GtkMenuDetachFunc detacher)gtk_menu_attach_to_widget;
	void function(GtkMenu* menu)gtk_menu_detach;
	GtkWidget* function(GtkMenu* menu)gtk_menu_get_attach_widget;
	GList* function(GtkWidget* widget)gtk_menu_get_for_attach_widget;
	void function(GtkMenu* menu, gint monitorNum)gtk_menu_set_monitor;
	
	// gtk.MenuBar
	
	GtkWidget* function()gtk_menu_bar_new;
	void function(GtkMenuBar* menubar, GtkPackDirection packDir)gtk_menu_bar_set_pack_direction;
	GtkPackDirection function(GtkMenuBar* menubar)gtk_menu_bar_get_pack_direction;
	void function(GtkMenuBar* menubar, GtkPackDirection childPackDir)gtk_menu_bar_set_child_pack_direction;
	GtkPackDirection function(GtkMenuBar* menubar)gtk_menu_bar_get_child_pack_direction;
	
	// gtk.MenuItem
	
	GtkWidget* function()gtk_menu_item_new;
	GtkWidget* function(gchar* label)gtk_menu_item_new_with_label;
	GtkWidget* function(gchar* label)gtk_menu_item_new_with_mnemonic;
	void function(GtkMenuItem* menuItem, gboolean rightJustified)gtk_menu_item_set_right_justified;
	void function(GtkMenuItem* menuItem, GtkWidget* submenu)gtk_menu_item_set_submenu;
	void function(GtkMenuItem* menuItem, gchar* accelPath)gtk_menu_item_set_accel_path;
	void function(GtkMenuItem* menuItem)gtk_menu_item_remove_submenu;
	void function(GtkMenuItem* menuItem)gtk_menu_item_select;
	void function(GtkMenuItem* menuItem)gtk_menu_item_deselect;
	void function(GtkMenuItem* menuItem)gtk_menu_item_activate;
	void function(GtkMenuItem* menuItem, gint* requisition)gtk_menu_item_toggle_size_request;
	void function(GtkMenuItem* menuItem, gint allocation)gtk_menu_item_toggle_size_allocate;
	gboolean function(GtkMenuItem* menuItem)gtk_menu_item_get_right_justified;
	GtkWidget* function(GtkMenuItem* menuItem)gtk_menu_item_get_submenu;
	
	// gtk.ImageMenuItem
	
	void function(GtkImageMenuItem* imageMenuItem, GtkWidget* image)gtk_image_menu_item_set_image;
	GtkWidget* function(GtkImageMenuItem* imageMenuItem)gtk_image_menu_item_get_image;
	GtkWidget* function()gtk_image_menu_item_new;
	GtkWidget* function(gchar* stockId, GtkAccelGroup* accelGroup)gtk_image_menu_item_new_from_stock;
	GtkWidget* function(gchar* label)gtk_image_menu_item_new_with_label;
	GtkWidget* function(gchar* label)gtk_image_menu_item_new_with_mnemonic;
	
	// gtk.RadioMenuItem
	
	GtkWidget* function(GSList* group)gtk_radio_menu_item_new;
	GtkWidget* function(GSList* group, gchar* label)gtk_radio_menu_item_new_with_label;
	GtkWidget* function(GSList* group, gchar* label)gtk_radio_menu_item_new_with_mnemonic;
	GtkWidget* function(GtkRadioMenuItem* group)gtk_radio_menu_item_new_from_widget;
	GtkWidget* function(GtkRadioMenuItem* group, gchar* label)gtk_radio_menu_item_new_with_label_from_widget;
	GtkWidget* function(GtkRadioMenuItem* group, gchar* label)gtk_radio_menu_item_new_with_mnemonic_from_widget;
	void function(GtkRadioMenuItem* radioMenuItem, GSList* group)gtk_radio_menu_item_set_group;
	GSList* function(GtkRadioMenuItem* radioMenuItem)gtk_radio_menu_item_get_group;
	
	// gtk.CheckMenuItem
	
	GtkWidget* function()gtk_check_menu_item_new;
	GtkWidget* function(gchar* label)gtk_check_menu_item_new_with_label;
	GtkWidget* function(gchar* label)gtk_check_menu_item_new_with_mnemonic;
	gboolean function(GtkCheckMenuItem* checkMenuItem)gtk_check_menu_item_get_active;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean isActive)gtk_check_menu_item_set_active;
	void function(GtkCheckMenuItem* menuItem, gboolean always)gtk_check_menu_item_set_show_toggle;
	void function(GtkCheckMenuItem* checkMenuItem)gtk_check_menu_item_toggled;
	gboolean function(GtkCheckMenuItem* checkMenuItem)gtk_check_menu_item_get_inconsistent;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean setting)gtk_check_menu_item_set_inconsistent;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean drawAsRadio)gtk_check_menu_item_set_draw_as_radio;
	gboolean function(GtkCheckMenuItem* checkMenuItem)gtk_check_menu_item_get_draw_as_radio;
	
	// gtk.SeparatorMenuItem
	
	GtkWidget* function()gtk_separator_menu_item_new;
	
	// gtk.TearoffMenuItem
	
	GtkWidget* function()gtk_tearoff_menu_item_new;
	
	// gtk.Toolbar
	
	GtkWidget* function()gtk_toolbar_new;
	void function(GtkToolbar* toolbar, GtkToolItem* item, gint pos)gtk_toolbar_insert;
	gint function(GtkToolbar* toolbar, GtkToolItem* item)gtk_toolbar_get_item_index;
	gint function(GtkToolbar* toolbar)gtk_toolbar_get_n_items;
	GtkToolItem* function(GtkToolbar* toolbar, gint n)gtk_toolbar_get_nth_item;
	gint function(GtkToolbar* toolbar, gint x, gint y)gtk_toolbar_get_drop_index;
	void function(GtkToolbar* toolbar, GtkToolItem* toolItem, gint index)gtk_toolbar_set_drop_highlight_item;
	void function(GtkToolbar* toolbar, gboolean showArrow)gtk_toolbar_set_show_arrow;
	void function(GtkToolbar* toolbar, GtkOrientation orientation)gtk_toolbar_set_orientation;
	void function(GtkToolbar* toolbar, gboolean enable)gtk_toolbar_set_tooltips;
	void function(GtkToolbar* toolbar)gtk_toolbar_unset_icon_size;
	gboolean function(GtkToolbar* toolbar)gtk_toolbar_get_show_arrow;
	GtkOrientation function(GtkToolbar* toolbar)gtk_toolbar_get_orientation;
	GtkToolbarStyle function(GtkToolbar* toolbar)gtk_toolbar_get_style;
	GtkIconSize function(GtkToolbar* toolbar)gtk_toolbar_get_icon_size;
	gboolean function(GtkToolbar* toolbar)gtk_toolbar_get_tooltips;
	GtkReliefStyle function(GtkToolbar* toolbar)gtk_toolbar_get_relief_style;
	GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData)gtk_toolbar_append_item;
	GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData)gtk_toolbar_prepend_item;
	GtkWidget* function(GtkToolbar* toolbar, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData, gint position)gtk_toolbar_insert_item;
	void function(GtkToolbar* toolbar)gtk_toolbar_append_space;
	void function(GtkToolbar* toolbar)gtk_toolbar_prepend_space;
	void function(GtkToolbar* toolbar, gint position)gtk_toolbar_insert_space;
	GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData)gtk_toolbar_append_element;
	GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData)gtk_toolbar_prepend_element;
	GtkWidget* function(GtkToolbar* toolbar, GtkToolbarChildType type, GtkWidget* widget, char* text, char* tooltipText, char* tooltipPrivateText, GtkWidget* icon, GtkSignalFunc callback, gpointer userData, gint position)gtk_toolbar_insert_element;
	void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText)gtk_toolbar_append_widget;
	void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText)gtk_toolbar_prepend_widget;
	void function(GtkToolbar* toolbar, GtkWidget* widget, char* tooltipText, char* tooltipPrivateText, gint position)gtk_toolbar_insert_widget;
	void function(GtkToolbar* toolbar, GtkToolbarStyle style)gtk_toolbar_set_style;
	GtkWidget* function(GtkToolbar* toolbar, gchar* stockId, char* tooltipText, char* tooltipPrivateText, GtkSignalFunc callback, gpointer userData, gint position)gtk_toolbar_insert_stock;
	void function(GtkToolbar* toolbar, GtkIconSize iconSize)gtk_toolbar_set_icon_size;
	void function(GtkToolbar* toolbar, gint position)gtk_toolbar_remove_space;
	void function(GtkToolbar* toolbar)gtk_toolbar_unset_style;
	
	// gtk.ToolItem
	
	GtkToolItem* function()gtk_tool_item_new;
	void function(GtkToolItem* toolItem, gboolean homogeneous)gtk_tool_item_set_homogeneous;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_homogeneous;
	void function(GtkToolItem* toolItem, gboolean expand)gtk_tool_item_set_expand;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_expand;
	void function(GtkToolItem* toolItem, GtkTooltips* tooltips, gchar* tipText, gchar* tipPrivate)gtk_tool_item_set_tooltip;
	void function(GtkToolItem* toolItem, gchar* text)gtk_tool_item_set_tooltip_text;
	void function(GtkToolItem* toolItem, gchar* markup)gtk_tool_item_set_tooltip_markup;
	void function(GtkToolItem* toolItem, gboolean useDragWindow)gtk_tool_item_set_use_drag_window;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_use_drag_window;
	void function(GtkToolItem* toolItem, gboolean visibleHorizontal)gtk_tool_item_set_visible_horizontal;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_visible_horizontal;
	void function(GtkToolItem* toolItem, gboolean visibleVertical)gtk_tool_item_set_visible_vertical;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_visible_vertical;
	void function(GtkToolItem* toolItem, gboolean isImportant)gtk_tool_item_set_is_important;
	gboolean function(GtkToolItem* toolItem)gtk_tool_item_get_is_important;
	GtkIconSize function(GtkToolItem* toolItem)gtk_tool_item_get_icon_size;
	GtkOrientation function(GtkToolItem* toolItem)gtk_tool_item_get_orientation;
	GtkToolbarStyle function(GtkToolItem* toolItem)gtk_tool_item_get_toolbar_style;
	GtkReliefStyle function(GtkToolItem* toolItem)gtk_tool_item_get_relief_style;
	GtkWidget* function(GtkToolItem* toolItem)gtk_tool_item_retrieve_proxy_menu_item;
	GtkWidget* function(GtkToolItem* toolItem, gchar* menuItemId)gtk_tool_item_get_proxy_menu_item;
	void function(GtkToolItem* toolItem, gchar* menuItemId, GtkWidget* menuItem)gtk_tool_item_set_proxy_menu_item;
	void function(GtkToolItem* toolItem)gtk_tool_item_rebuild_menu;
	
	// gtk.SeparatorToolItem
	
	GtkToolItem* function()gtk_separator_tool_item_new;
	void function(GtkSeparatorToolItem* item, gboolean draw)gtk_separator_tool_item_set_draw;
	gboolean function(GtkSeparatorToolItem* item)gtk_separator_tool_item_get_draw;
	
	// gtk.ToolButton
	
	GtkToolItem* function(GtkWidget* iconWidget, gchar* label)gtk_tool_button_new;
	GtkToolItem* function(gchar* stockId)gtk_tool_button_new_from_stock;
	void function(GtkToolButton* button, gchar* label)gtk_tool_button_set_label;
	gchar* function(GtkToolButton* button)gtk_tool_button_get_label;
	void function(GtkToolButton* button, gboolean useUnderline)gtk_tool_button_set_use_underline;
	gboolean function(GtkToolButton* button)gtk_tool_button_get_use_underline;
	void function(GtkToolButton* button, gchar* stockId)gtk_tool_button_set_stock_id;
	gchar* function(GtkToolButton* button)gtk_tool_button_get_stock_id;
	void function(GtkToolButton* button, gchar* iconName)gtk_tool_button_set_icon_name;
	gchar* function(GtkToolButton* button)gtk_tool_button_get_icon_name;
	void function(GtkToolButton* button, GtkWidget* iconWidget)gtk_tool_button_set_icon_widget;
	GtkWidget* function(GtkToolButton* button)gtk_tool_button_get_icon_widget;
	void function(GtkToolButton* button, GtkWidget* labelWidget)gtk_tool_button_set_label_widget;
	GtkWidget* function(GtkToolButton* button)gtk_tool_button_get_label_widget;
	
	// gtk.MenuToolButton
	
	GtkToolItem* function(GtkWidget* iconWidget, gchar* label)gtk_menu_tool_button_new;
	GtkToolItem* function(gchar* stockId)gtk_menu_tool_button_new_from_stock;
	void function(GtkMenuToolButton* button, GtkWidget* menu)gtk_menu_tool_button_set_menu;
	GtkWidget* function(GtkMenuToolButton* button)gtk_menu_tool_button_get_menu;
	void function(GtkMenuToolButton* button, GtkTooltips* tooltips, gchar* tipText, gchar* tipPrivate)gtk_menu_tool_button_set_arrow_tooltip;
	void function(GtkMenuToolButton* button, gchar* text)gtk_menu_tool_button_set_arrow_tooltip_text;
	void function(GtkMenuToolButton* button, gchar* markup)gtk_menu_tool_button_set_arrow_tooltip_markup;
	
	// gtk.ToggleToolButton
	
	GtkToolItem* function()gtk_toggle_tool_button_new;
	GtkToolItem* function(gchar* stockId)gtk_toggle_tool_button_new_from_stock;
	void function(GtkToggleToolButton* button, gboolean isActive)gtk_toggle_tool_button_set_active;
	gboolean function(GtkToggleToolButton* button)gtk_toggle_tool_button_get_active;
	
	// gtk.RadioToolButton
	
	GtkToolItem* function(GSList* group)gtk_radio_tool_button_new;
	GtkToolItem* function(GSList* group, gchar* stockId)gtk_radio_tool_button_new_from_stock;
	GtkToolItem* function(GtkRadioToolButton* group)gtk_radio_tool_button_new_from_widget;
	GtkToolItem* function(GtkRadioToolButton* group, gchar* stockId)gtk_radio_tool_button_new_with_stock_from_widget;
	GSList* function(GtkRadioToolButton* button)gtk_radio_tool_button_get_group;
	void function(GtkRadioToolButton* button, GSList* group)gtk_radio_tool_button_set_group;
	
	// gtk.UIManager
	
	GtkUIManager* function()gtk_ui_manager_new;
	void function(GtkUIManager* self, gboolean addTearoffs)gtk_ui_manager_set_add_tearoffs;
	gboolean function(GtkUIManager* self)gtk_ui_manager_get_add_tearoffs;
	void function(GtkUIManager* self, GtkActionGroup* actionGroup, gint pos)gtk_ui_manager_insert_action_group;
	void function(GtkUIManager* self, GtkActionGroup* actionGroup)gtk_ui_manager_remove_action_group;
	GList* function(GtkUIManager* self)gtk_ui_manager_get_action_groups;
	GtkAccelGroup* function(GtkUIManager* self)gtk_ui_manager_get_accel_group;
	GtkWidget* function(GtkUIManager* self, gchar* path)gtk_ui_manager_get_widget;
	GSList* function(GtkUIManager* self, GtkUIManagerItemType types)gtk_ui_manager_get_toplevels;
	GtkAction* function(GtkUIManager* self, gchar* path)gtk_ui_manager_get_action;
	guint function(GtkUIManager* self, gchar* buffer, gssize length, GError** error)gtk_ui_manager_add_ui_from_string;
	guint function(GtkUIManager* self, gchar* filename, GError** error)gtk_ui_manager_add_ui_from_file;
	guint function(GtkUIManager* self)gtk_ui_manager_new_merge_id;
	void function(GtkUIManager* self, guint mergeId, gchar* path, gchar* name, gchar* action, GtkUIManagerItemType type, gboolean top)gtk_ui_manager_add_ui;
	void function(GtkUIManager* self, guint mergeId)gtk_ui_manager_remove_ui;
	gchar* function(GtkUIManager* self)gtk_ui_manager_get_ui;
	void function(GtkUIManager* self)gtk_ui_manager_ensure_update;
	
	// gtk.ActionGroup
	
	GtkActionGroup* function(gchar* name)gtk_action_group_new;
	gchar* function(GtkActionGroup* actionGroup)gtk_action_group_get_name;
	gboolean function(GtkActionGroup* actionGroup)gtk_action_group_get_sensitive;
	void function(GtkActionGroup* actionGroup, gboolean sensitive)gtk_action_group_set_sensitive;
	gboolean function(GtkActionGroup* actionGroup)gtk_action_group_get_visible;
	void function(GtkActionGroup* actionGroup, gboolean visible)gtk_action_group_set_visible;
	GtkAction* function(GtkActionGroup* actionGroup, gchar* actionName)gtk_action_group_get_action;
	GList* function(GtkActionGroup* actionGroup)gtk_action_group_list_actions;
	void function(GtkActionGroup* actionGroup, GtkAction* action)gtk_action_group_add_action;
	void function(GtkActionGroup* actionGroup, GtkAction* action, gchar* accelerator)gtk_action_group_add_action_with_accel;
	void function(GtkActionGroup* actionGroup, GtkAction* action)gtk_action_group_remove_action;
	void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, gpointer userData)gtk_action_group_add_actions;
	void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, gpointer userData, GDestroyNotify destroy)gtk_action_group_add_actions_full;
	void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, gpointer userData)gtk_action_group_add_toggle_actions;
	void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, gpointer userData, GDestroyNotify destroy)gtk_action_group_add_toggle_actions_full;
	void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, gpointer userData)gtk_action_group_add_radio_actions;
	void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, gpointer userData, GDestroyNotify destroy)gtk_action_group_add_radio_actions_full;
	void function(GtkActionGroup* actionGroup, GtkTranslateFunc func, gpointer data, GtkDestroyNotify notify)gtk_action_group_set_translate_func;
	void function(GtkActionGroup* actionGroup, gchar* domain)gtk_action_group_set_translation_domain;
	gchar* function(GtkActionGroup* actionGroup, gchar* string)gtk_action_group_translate_string;
	
	// gtk.Action
	
	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId)gtk_action_new;
	gchar* function(GtkAction* action)gtk_action_get_name;
	gboolean function(GtkAction* action)gtk_action_is_sensitive;
	gboolean function(GtkAction* action)gtk_action_get_sensitive;
	void function(GtkAction* action, gboolean sensitive)gtk_action_set_sensitive;
	gboolean function(GtkAction* action)gtk_action_is_visible;
	gboolean function(GtkAction* action)gtk_action_get_visible;
	void function(GtkAction* action, gboolean visible)gtk_action_set_visible;
	void function(GtkAction* action)gtk_action_activate;
	GtkWidget* function(GtkAction* action, GtkIconSize iconSize)gtk_action_create_icon;
	GtkWidget* function(GtkAction* action)gtk_action_create_menu_item;
	GtkWidget* function(GtkAction* action)gtk_action_create_tool_item;
	GtkWidget* function(GtkAction* action)gtk_action_create_menu;
	void function(GtkAction* action, GtkWidget* proxy)gtk_action_connect_proxy;
	void function(GtkAction* action, GtkWidget* proxy)gtk_action_disconnect_proxy;
	GSList* function(GtkAction* action)gtk_action_get_proxies;
	void function(GtkAction* action)gtk_action_connect_accelerator;
	void function(GtkAction* action)gtk_action_disconnect_accelerator;
	void function(GtkAction* action, GtkWidget* proxy)gtk_action_block_activate_from;
	void function(GtkAction* action, GtkWidget* proxy)gtk_action_unblock_activate_from;
	gchar* function(GtkAction* action)gtk_action_get_accel_path;
	void function(GtkAction* action, gchar* accelPath)gtk_action_set_accel_path;
	GClosure* function(GtkAction* action)gtk_action_get_accel_closure;
	void function(GtkAction* action, GtkAccelGroup* accelGroup)gtk_action_set_accel_group;
	
	// gtk.ToggleAction
	
	GtkToggleAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId)gtk_toggle_action_new;
	void function(GtkToggleAction* action)gtk_toggle_action_toggled;
	void function(GtkToggleAction* action, gboolean isActive)gtk_toggle_action_set_active;
	gboolean function(GtkToggleAction* action)gtk_toggle_action_get_active;
	void function(GtkToggleAction* action, gboolean drawAsRadio)gtk_toggle_action_set_draw_as_radio;
	gboolean function(GtkToggleAction* action)gtk_toggle_action_get_draw_as_radio;
	
	// gtk.RadioAction
	
	GtkRadioAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, gint value)gtk_radio_action_new;
	GSList* function(GtkRadioAction* action)gtk_radio_action_get_group;
	void function(GtkRadioAction* action, GSList* group)gtk_radio_action_set_group;
	gint function(GtkRadioAction* action)gtk_radio_action_get_current_value;
	void function(GtkRadioAction* action, gint currentValue)gtk_radio_action_set_current_value;
	
	// gtk.RecentAction
	
	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId)gtk_recent_action_new;
	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, GtkRecentManager* manager)gtk_recent_action_new_for_manager;
	gboolean function(GtkRecentAction* action)gtk_recent_action_get_show_numbers;
	void function(GtkRecentAction* action, gboolean showNumbers)gtk_recent_action_set_show_numbers;
	
	// gtk.ColorButton
	
	GtkWidget* function()gtk_color_button_new;
	GtkWidget* function(GdkColor* color)gtk_color_button_new_with_color;
	void function(GtkColorButton* colorButton, GdkColor* color)gtk_color_button_set_color;
	void function(GtkColorButton* colorButton, GdkColor* color)gtk_color_button_get_color;
	void function(GtkColorButton* colorButton, guint16 alpha)gtk_color_button_set_alpha;
	guint16 function(GtkColorButton* colorButton)gtk_color_button_get_alpha;
	void function(GtkColorButton* colorButton, gboolean useAlpha)gtk_color_button_set_use_alpha;
	gboolean function(GtkColorButton* colorButton)gtk_color_button_get_use_alpha;
	void function(GtkColorButton* colorButton, gchar* title)gtk_color_button_set_title;
	gchar* function(GtkColorButton* colorButton)gtk_color_button_get_title;
	
	// gtk.ColorSelection
	
	GtkWidget* function()gtk_color_selection_new;
	void function(GtkColorSelection* colorsel, GtkUpdateType policy)gtk_color_selection_set_update_policy;
	void function(GtkColorSelection* colorsel, gboolean hasOpacity)gtk_color_selection_set_has_opacity_control;
	gboolean function(GtkColorSelection* colorsel)gtk_color_selection_get_has_opacity_control;
	void function(GtkColorSelection* colorsel, gboolean hasPalette)gtk_color_selection_set_has_palette;
	gboolean function(GtkColorSelection* colorsel)gtk_color_selection_get_has_palette;
	guint16 function(GtkColorSelection* colorsel)gtk_color_selection_get_current_alpha;
	void function(GtkColorSelection* colorsel, guint16 alpha)gtk_color_selection_set_current_alpha;
	void function(GtkColorSelection* colorsel, GdkColor* color)gtk_color_selection_get_current_color;
	void function(GtkColorSelection* colorsel, GdkColor* color)gtk_color_selection_set_current_color;
	guint16 function(GtkColorSelection* colorsel)gtk_color_selection_get_previous_alpha;
	void function(GtkColorSelection* colorsel, guint16 alpha)gtk_color_selection_set_previous_alpha;
	void function(GtkColorSelection* colorsel, GdkColor* color)gtk_color_selection_get_previous_color;
	void function(GtkColorSelection* colorsel, GdkColor* color)gtk_color_selection_set_previous_color;
	gboolean function(GtkColorSelection* colorsel)gtk_color_selection_is_adjusting;
	gboolean function(gchar* str, GdkColor** colors, gint* nColors)gtk_color_selection_palette_from_string;
	gchar* function(GdkColor* colors, gint nColors)gtk_color_selection_palette_to_string;
	GtkColorSelectionChangePaletteFunc function(GtkColorSelectionChangePaletteFunc func)gtk_color_selection_set_change_palette_hook;
	GtkColorSelectionChangePaletteWithScreenFunc function(GtkColorSelectionChangePaletteWithScreenFunc func)gtk_color_selection_set_change_palette_with_screen_hook;
	void function(GtkColorSelection* colorsel, gdouble* color)gtk_color_selection_set_color;
	void function(GtkColorSelection* colorsel, gdouble* color)gtk_color_selection_get_color;
	
	// gtk.ColorSelectionDialog
	
	GtkWidget* function(gchar* title)gtk_color_selection_dialog_new;
	
	// gtk.FileChooserT
	
	
	// gtk.FileChooserT
	
	void function(GtkFileChooser* chooser, GtkFileChooserAction action)gtk_file_chooser_set_action;
	GtkFileChooserAction function(GtkFileChooser* chooser)gtk_file_chooser_get_action;
	void function(GtkFileChooser* chooser, gboolean localOnly)gtk_file_chooser_set_local_only;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_local_only;
	void function(GtkFileChooser* chooser, gboolean selectMultiple)gtk_file_chooser_set_select_multiple;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_select_multiple;
	void function(GtkFileChooser* chooser, gboolean showHidden)gtk_file_chooser_set_show_hidden;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_show_hidden;
	void function(GtkFileChooser* chooser, gboolean doOverwriteConfirmation)gtk_file_chooser_set_do_overwrite_confirmation;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_do_overwrite_confirmation;
	void function(GtkFileChooser* chooser, gchar* name)gtk_file_chooser_set_current_name;
	gchar* function(GtkFileChooser* chooser)gtk_file_chooser_get_filename;
	gboolean function(GtkFileChooser* chooser, char* filename)gtk_file_chooser_set_filename;
	gboolean function(GtkFileChooser* chooser, char* filename)gtk_file_chooser_select_filename;
	void function(GtkFileChooser* chooser, char* filename)gtk_file_chooser_unselect_filename;
	void function(GtkFileChooser* chooser)gtk_file_chooser_select_all;
	void function(GtkFileChooser* chooser)gtk_file_chooser_unselect_all;
	GSList* function(GtkFileChooser* chooser)gtk_file_chooser_get_filenames;
	gboolean function(GtkFileChooser* chooser, gchar* filename)gtk_file_chooser_set_current_folder;
	gchar* function(GtkFileChooser* chooser)gtk_file_chooser_get_current_folder;
	gchar* function(GtkFileChooser* chooser)gtk_file_chooser_get_uri;
	gboolean function(GtkFileChooser* chooser, char* uri)gtk_file_chooser_set_uri;
	gboolean function(GtkFileChooser* chooser, char* uri)gtk_file_chooser_select_uri;
	void function(GtkFileChooser* chooser, char* uri)gtk_file_chooser_unselect_uri;
	GSList* function(GtkFileChooser* chooser)gtk_file_chooser_get_uris;
	gboolean function(GtkFileChooser* chooser, gchar* uri)gtk_file_chooser_set_current_folder_uri;
	gchar* function(GtkFileChooser* chooser)gtk_file_chooser_get_current_folder_uri;
	void function(GtkFileChooser* chooser, GtkWidget* previewWidget)gtk_file_chooser_set_preview_widget;
	GtkWidget* function(GtkFileChooser* chooser)gtk_file_chooser_get_preview_widget;
	void function(GtkFileChooser* chooser, gboolean active)gtk_file_chooser_set_preview_widget_active;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_preview_widget_active;
	void function(GtkFileChooser* chooser, gboolean useLabel)gtk_file_chooser_set_use_preview_label;
	gboolean function(GtkFileChooser* chooser)gtk_file_chooser_get_use_preview_label;
	char* function(GtkFileChooser* chooser)gtk_file_chooser_get_preview_filename;
	char* function(GtkFileChooser* chooser)gtk_file_chooser_get_preview_uri;
	void function(GtkFileChooser* chooser, GtkWidget* extraWidget)gtk_file_chooser_set_extra_widget;
	GtkWidget* function(GtkFileChooser* chooser)gtk_file_chooser_get_extra_widget;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter)gtk_file_chooser_add_filter;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter)gtk_file_chooser_remove_filter;
	GSList* function(GtkFileChooser* chooser)gtk_file_chooser_list_filters;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter)gtk_file_chooser_set_filter;
	GtkFileFilter* function(GtkFileChooser* chooser)gtk_file_chooser_get_filter;
	gboolean function(GtkFileChooser* chooser, char* folder, GError** error)gtk_file_chooser_add_shortcut_folder;
	gboolean function(GtkFileChooser* chooser, char* folder, GError** error)gtk_file_chooser_remove_shortcut_folder;
	GSList* function(GtkFileChooser* chooser)gtk_file_chooser_list_shortcut_folders;
	gboolean function(GtkFileChooser* chooser, char* uri, GError** error)gtk_file_chooser_add_shortcut_folder_uri;
	gboolean function(GtkFileChooser* chooser, char* uri, GError** error)gtk_file_chooser_remove_shortcut_folder_uri;
	GSList* function(GtkFileChooser* chooser)gtk_file_chooser_list_shortcut_folder_uris;
	
	// gtk.FileChooserButton
	
	GtkWidget* function(gchar* title, GtkFileChooserAction action)gtk_file_chooser_button_new;
	GtkWidget* function(gchar* title, GtkFileChooserAction action, gchar* backend)gtk_file_chooser_button_new_with_backend;
	GtkWidget* function(GtkWidget* dialog)gtk_file_chooser_button_new_with_dialog;
	gchar* function(GtkFileChooserButton* button)gtk_file_chooser_button_get_title;
	void function(GtkFileChooserButton* button, gchar* title)gtk_file_chooser_button_set_title;
	gint function(GtkFileChooserButton* button)gtk_file_chooser_button_get_width_chars;
	void function(GtkFileChooserButton* button, gint nChars)gtk_file_chooser_button_set_width_chars;
	gboolean function(GtkFileChooserButton* button)gtk_file_chooser_button_get_focus_on_click;
	void function(GtkFileChooserButton* button, gboolean focusOnClick)gtk_file_chooser_button_set_focus_on_click;
	
	// gtk.FileChooserDialog
	
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkFileChooserAction action, gchar* firstButtonText, ... )gtk_file_chooser_dialog_new;
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkFileChooserAction action, gchar* backend, gchar* firstButtonText, ... )gtk_file_chooser_dialog_new_with_backend;
	
	// gtk.FileChooserWidget
	
	GtkWidget* function(GtkFileChooserAction action)gtk_file_chooser_widget_new;
	GtkWidget* function(GtkFileChooserAction action, gchar* backend)gtk_file_chooser_widget_new_with_backend;
	
	// gtk.FileFilter
	
	GtkFileFilter* function()gtk_file_filter_new;
	void function(GtkFileFilter* filter, gchar* name)gtk_file_filter_set_name;
	gchar* function(GtkFileFilter* filter)gtk_file_filter_get_name;
	void function(GtkFileFilter* filter, gchar* mimeType)gtk_file_filter_add_mime_type;
	void function(GtkFileFilter* filter, gchar* pattern)gtk_file_filter_add_pattern;
	void function(GtkFileFilter* filter)gtk_file_filter_add_pixbuf_formats;
	void function(GtkFileFilter* filter, GtkFileFilterFlags needed, GtkFileFilterFunc func, gpointer data, GDestroyNotify notify)gtk_file_filter_add_custom;
	GtkFileFilterFlags function(GtkFileFilter* filter)gtk_file_filter_get_needed;
	gboolean function(GtkFileFilter* filter, GtkFileFilterInfo* filterInfo)gtk_file_filter_filter;
	
	// gtk.FontButton
	
	GtkWidget* function()gtk_font_button_new;
	GtkWidget* function(gchar* fontname)gtk_font_button_new_with_font;
	gboolean function(GtkFontButton* fontButton, gchar* fontname)gtk_font_button_set_font_name;
	gchar* function(GtkFontButton* fontButton)gtk_font_button_get_font_name;
	void function(GtkFontButton* fontButton, gboolean showStyle)gtk_font_button_set_show_style;
	gboolean function(GtkFontButton* fontButton)gtk_font_button_get_show_style;
	void function(GtkFontButton* fontButton, gboolean showSize)gtk_font_button_set_show_size;
	gboolean function(GtkFontButton* fontButton)gtk_font_button_get_show_size;
	void function(GtkFontButton* fontButton, gboolean useFont)gtk_font_button_set_use_font;
	gboolean function(GtkFontButton* fontButton)gtk_font_button_get_use_font;
	void function(GtkFontButton* fontButton, gboolean useSize)gtk_font_button_set_use_size;
	gboolean function(GtkFontButton* fontButton)gtk_font_button_get_use_size;
	void function(GtkFontButton* fontButton, gchar* title)gtk_font_button_set_title;
	gchar* function(GtkFontButton* fontButton)gtk_font_button_get_title;
	
	// gtk.FontSelection
	
	GtkWidget* function()gtk_font_selection_new;
	GdkFont* function(GtkFontSelection* fontsel)gtk_font_selection_get_font;
	gchar* function(GtkFontSelection* fontsel)gtk_font_selection_get_font_name;
	gboolean function(GtkFontSelection* fontsel, gchar* fontname)gtk_font_selection_set_font_name;
	gchar* function(GtkFontSelection* fontsel)gtk_font_selection_get_preview_text;
	void function(GtkFontSelection* fontsel, gchar* text)gtk_font_selection_set_preview_text;
	
	// gtk.FontSelectionDialog
	
	GtkWidget* function(gchar* title)gtk_font_selection_dialog_new;
	GdkFont* function(GtkFontSelectionDialog* fsd)gtk_font_selection_dialog_get_font;
	gchar* function(GtkFontSelectionDialog* fsd)gtk_font_selection_dialog_get_font_name;
	gboolean function(GtkFontSelectionDialog* fsd, gchar* fontname)gtk_font_selection_dialog_set_font_name;
	gchar* function(GtkFontSelectionDialog* fsd)gtk_font_selection_dialog_get_preview_text;
	void function(GtkFontSelectionDialog* fsd, gchar* text)gtk_font_selection_dialog_set_preview_text;
	
	// gtk.InputDialog
	
	GtkWidget* function()gtk_input_dialog_new;
	
	// gtk.Alignment
	
	GtkWidget* function(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)gtk_alignment_new;
	void function(GtkAlignment* alignment, gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale)gtk_alignment_set;
	void function(GtkAlignment* alignment, guint* paddingTop, guint* paddingBottom, guint* paddingLeft, guint* paddingRight)gtk_alignment_get_padding;
	void function(GtkAlignment* alignment, guint paddingTop, guint paddingBottom, guint paddingLeft, guint paddingRight)gtk_alignment_set_padding;
	
	// gtk.AspectFrame
	
	GtkWidget* function(gchar* label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild)gtk_aspect_frame_new;
	void function(GtkAspectFrame* aspectFrame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild)gtk_aspect_frame_set;
	
	// gtk.HBox
	
	GtkWidget* function(gboolean homogeneous, gint spacing)gtk_hbox_new;
	
	// gtk.VBox
	
	GtkWidget* function(gboolean homogeneous, gint spacing)gtk_vbox_new;
	
	// gtk.HButtonBox
	
	GtkWidget* function()gtk_hbutton_box_new;
	gint function()gtk_hbutton_box_get_spacing_default;
	GtkButtonBoxStyle function()gtk_hbutton_box_get_layout_default;
	void function(gint spacing)gtk_hbutton_box_set_spacing_default;
	void function(GtkButtonBoxStyle layout)gtk_hbutton_box_set_layout_default;
	
	// gtk.VButtonBox
	
	GtkWidget* function()gtk_vbutton_box_new;
	gint function()gtk_vbutton_box_get_spacing_default;
	void function(gint spacing)gtk_vbutton_box_set_spacing_default;
	GtkButtonBoxStyle function()gtk_vbutton_box_get_layout_default;
	void function(GtkButtonBoxStyle layout)gtk_vbutton_box_set_layout_default;
	
	// gtk.Fixed
	
	GtkWidget* function()gtk_fixed_new;
	void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y)gtk_fixed_put;
	void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y)gtk_fixed_move;
	gboolean function(GtkFixed* fixed)gtk_fixed_get_has_window;
	void function(GtkFixed* fixed, gboolean hasWindow)gtk_fixed_set_has_window;
	
	// gtk.HPaned
	
	GtkWidget* function()gtk_hpaned_new;
	
	// gtk.VPaned
	
	GtkWidget* function()gtk_vpaned_new;
	
	// gtk.Layout
	
	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment)gtk_layout_new;
	void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y)gtk_layout_put;
	void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y)gtk_layout_move;
	void function(GtkLayout* layout, guint width, guint height)gtk_layout_set_size;
	void function(GtkLayout* layout, guint* width, guint* height)gtk_layout_get_size;
	void function(GtkLayout* layout)gtk_layout_freeze;
	void function(GtkLayout* layout)gtk_layout_thaw;
	GtkAdjustment* function(GtkLayout* layout)gtk_layout_get_hadjustment;
	GtkAdjustment* function(GtkLayout* layout)gtk_layout_get_vadjustment;
	void function(GtkLayout* layout, GtkAdjustment* adjustment)gtk_layout_set_hadjustment;
	void function(GtkLayout* layout, GtkAdjustment* adjustment)gtk_layout_set_vadjustment;
	
	// gtk.Notebook
	
	GtkWidget* function()gtk_notebook_new;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel)gtk_notebook_append_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel)gtk_notebook_append_page_menu;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel)gtk_notebook_prepend_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel)gtk_notebook_prepend_page_menu;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, gint position)gtk_notebook_insert_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, gint position)gtk_notebook_insert_page_menu;
	void function(GtkNotebook* notebook, gint pageNum)gtk_notebook_remove_page;
	gint function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_page_num;
	void function(GtkNotebook* notebook)gtk_notebook_next_page;
	void function(GtkNotebook* notebook)gtk_notebook_prev_page;
	void function(GtkNotebook* notebook, GtkWidget* child, gint position)gtk_notebook_reorder_child;
	void function(GtkNotebook* notebook, GtkPositionType pos)gtk_notebook_set_tab_pos;
	void function(GtkNotebook* notebook, gboolean showTabs)gtk_notebook_set_show_tabs;
	void function(GtkNotebook* notebook, gboolean showBorder)gtk_notebook_set_show_border;
	void function(GtkNotebook* notebook, gboolean scrollable)gtk_notebook_set_scrollable;
	void function(GtkNotebook* notebook, guint borderWidth)gtk_notebook_set_tab_border;
	void function(GtkNotebook* notebook)gtk_notebook_popup_enable;
	void function(GtkNotebook* notebook)gtk_notebook_popup_disable;
	gint function(GtkNotebook* notebook)gtk_notebook_get_current_page;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_menu_label;
	GtkWidget* function(GtkNotebook* notebook, gint pageNum)gtk_notebook_get_nth_page;
	gint function(GtkNotebook* notebook)gtk_notebook_get_n_pages;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_tab_label;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean* expand, gboolean* fill, GtkPackType* packType)gtk_notebook_query_tab_label_packing;
	void function(GtkNotebook* notebook, gboolean homogeneous)gtk_notebook_set_homogeneous_tabs;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menuLabel)gtk_notebook_set_menu_label;
	void function(GtkNotebook* notebook, GtkWidget* child, gchar* menuText)gtk_notebook_set_menu_label_text;
	void function(GtkNotebook* notebook, guint tabHborder)gtk_notebook_set_tab_hborder;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel)gtk_notebook_set_tab_label;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean expand, gboolean fill, GtkPackType packType)gtk_notebook_set_tab_label_packing;
	void function(GtkNotebook* notebook, GtkWidget* child, gchar* tabText)gtk_notebook_set_tab_label_text;
	void function(GtkNotebook* notebook, guint tabVborder)gtk_notebook_set_tab_vborder;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean reorderable)gtk_notebook_set_tab_reorderable;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean detachable)gtk_notebook_set_tab_detachable;
	gchar* function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_menu_label_text;
	gboolean function(GtkNotebook* notebook)gtk_notebook_get_scrollable;
	gboolean function(GtkNotebook* notebook)gtk_notebook_get_show_border;
	gboolean function(GtkNotebook* notebook)gtk_notebook_get_show_tabs;
	gchar* function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_tab_label_text;
	GtkPositionType function(GtkNotebook* notebook)gtk_notebook_get_tab_pos;
	gboolean function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_tab_reorderable;
	gboolean function(GtkNotebook* notebook, GtkWidget* child)gtk_notebook_get_tab_detachable;
	void function(GtkNotebook* notebook, gint pageNum)gtk_notebook_set_current_page;
	void function(GtkNotebook* notebook, gint groupId)gtk_notebook_set_group_id;
	gint function(GtkNotebook* notebook)gtk_notebook_get_group_id;
	void function(GtkNotebook* notebook, gpointer group)gtk_notebook_set_group;
	gpointer function(GtkNotebook* notebook)gtk_notebook_get_group;
	void function(GtkNotebookWindowCreationFunc func, gpointer data, GDestroyNotify destroy)gtk_notebook_set_window_creation_hook;
	
	// gtk.Table
	
	GtkWidget* function(guint rows, guint columns, gboolean homogeneous)gtk_table_new;
	void function(GtkTable* table, guint rows, guint columns)gtk_table_resize;
	void function(GtkTable* table, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, guint xpadding, guint ypadding)gtk_table_attach;
	void function(GtkTable* table, GtkWidget* widget, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach)gtk_table_attach_defaults;
	void function(GtkTable* table, guint row, guint spacing)gtk_table_set_row_spacing;
	void function(GtkTable* table, guint column, guint spacing)gtk_table_set_col_spacing;
	void function(GtkTable* table, guint spacing)gtk_table_set_row_spacings;
	void function(GtkTable* table, guint spacing)gtk_table_set_col_spacings;
	void function(GtkTable* table, gboolean homogeneous)gtk_table_set_homogeneous;
	guint function(GtkTable* table)gtk_table_get_default_row_spacing;
	gboolean function(GtkTable* table)gtk_table_get_homogeneous;
	guint function(GtkTable* table, guint row)gtk_table_get_row_spacing;
	guint function(GtkTable* table, guint column)gtk_table_get_col_spacing;
	guint function(GtkTable* table)gtk_table_get_default_col_spacing;
	
	// gtk.Expander
	
	GtkWidget* function(gchar* label)gtk_expander_new;
	GtkWidget* function(gchar* label)gtk_expander_new_with_mnemonic;
	void function(GtkExpander* expander, gboolean expanded)gtk_expander_set_expanded;
	gboolean function(GtkExpander* expander)gtk_expander_get_expanded;
	void function(GtkExpander* expander, gint spacing)gtk_expander_set_spacing;
	gint function(GtkExpander* expander)gtk_expander_get_spacing;
	void function(GtkExpander* expander, gchar* label)gtk_expander_set_label;
	gchar* function(GtkExpander* expander)gtk_expander_get_label;
	void function(GtkExpander* expander, gboolean useUnderline)gtk_expander_set_use_underline;
	gboolean function(GtkExpander* expander)gtk_expander_get_use_underline;
	void function(GtkExpander* expander, gboolean useMarkup)gtk_expander_set_use_markup;
	gboolean function(GtkExpander* expander)gtk_expander_get_use_markup;
	void function(GtkExpander* expander, GtkWidget* labelWidget)gtk_expander_set_label_widget;
	GtkWidget* function(GtkExpander* expander)gtk_expander_get_label_widget;
	
	// gtk.Frame
	
	GtkWidget* function(gchar* label)gtk_frame_new;
	void function(GtkFrame* frame, gchar* label)gtk_frame_set_label;
	void function(GtkFrame* frame, GtkWidget* labelWidget)gtk_frame_set_label_widget;
	void function(GtkFrame* frame, gfloat xalign, gfloat yalign)gtk_frame_set_label_align;
	void function(GtkFrame* frame, GtkShadowType type)gtk_frame_set_shadow_type;
	gchar* function(GtkFrame* frame)gtk_frame_get_label;
	void function(GtkFrame* frame, gfloat* xalign, gfloat* yalign)gtk_frame_get_label_align;
	GtkWidget* function(GtkFrame* frame)gtk_frame_get_label_widget;
	GtkShadowType function(GtkFrame* frame)gtk_frame_get_shadow_type;
	
	// gtk.HSeparator
	
	GtkWidget* function()gtk_hseparator_new;
	
	// gtk.VSeparator
	
	GtkWidget* function()gtk_vseparator_new;
	
	// gtk.HScrollbar
	
	GtkWidget* function(GtkAdjustment* adjustment)gtk_hscrollbar_new;
	
	// gtk.VScrollbar
	
	GtkWidget* function(GtkAdjustment* adjustment)gtk_vscrollbar_new;
	
	// gtk.ScrolledWindow
	
	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment)gtk_scrolled_window_new;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_hadjustment;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_vadjustment;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_hscrollbar;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_vscrollbar;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy)gtk_scrolled_window_set_policy;
	void function(GtkScrolledWindow* scrolledWindow, GtkWidget* child)gtk_scrolled_window_add_with_viewport;
	void function(GtkScrolledWindow* scrolledWindow, GtkCornerType windowPlacement)gtk_scrolled_window_set_placement;
	void function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_unset_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkShadowType type)gtk_scrolled_window_set_shadow_type;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment)gtk_scrolled_window_set_hadjustment;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment)gtk_scrolled_window_set_vadjustment;
	GtkCornerType function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType* hscrollbarPolicy, GtkPolicyType* vscrollbarPolicy)gtk_scrolled_window_get_policy;
	GtkShadowType function(GtkScrolledWindow* scrolledWindow)gtk_scrolled_window_get_shadow_type;
	
	// gtk.PrintOperation
	
	GtkPrintOperation* function()gtk_print_operation_new;
	void function(GtkPrintOperation* op, gboolean allowAsync)gtk_print_operation_set_allow_async;
	void function(GtkPrintOperation* op, GError** error)gtk_print_operation_get_error;
	void function(GtkPrintOperation* op, GtkPageSetup* defaultPageSetup)gtk_print_operation_set_default_page_setup;
	GtkPageSetup* function(GtkPrintOperation* op)gtk_print_operation_get_default_page_setup;
	void function(GtkPrintOperation* op, GtkPrintSettings* printSettings)gtk_print_operation_set_print_settings;
	GtkPrintSettings* function(GtkPrintOperation* op)gtk_print_operation_get_print_settings;
	void function(GtkPrintOperation* op, gchar* jobName)gtk_print_operation_set_job_name;
	void function(GtkPrintOperation* op, gint nPages)gtk_print_operation_set_n_pages;
	void function(GtkPrintOperation* op, gint currentPage)gtk_print_operation_set_current_page;
	void function(GtkPrintOperation* op, gboolean fullPage)gtk_print_operation_set_use_full_page;
	void function(GtkPrintOperation* op, GtkUnit unit)gtk_print_operation_set_unit;
	void function(GtkPrintOperation* op, gchar* filename)gtk_print_operation_set_export_filename;
	void function(GtkPrintOperation* op, gboolean showProgress)gtk_print_operation_set_show_progress;
	void function(GtkPrintOperation* op, gboolean trackStatus)gtk_print_operation_set_track_print_status;
	void function(GtkPrintOperation* op, gchar* label)gtk_print_operation_set_custom_tab_label;
	GtkPrintOperationResult function(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent, GError** error)gtk_print_operation_run;
	void function(GtkPrintOperation* op)gtk_print_operation_cancel;
	GtkPrintStatus function(GtkPrintOperation* op)gtk_print_operation_get_status;
	gchar* function(GtkPrintOperation* op)gtk_print_operation_get_status_string;
	gboolean function(GtkPrintOperation* op)gtk_print_operation_is_finished;
	GtkPageSetup* function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings)gtk_print_run_page_setup_dialog;
	void function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings, GtkPageSetupDoneFunc doneCb, gpointer data)gtk_print_run_page_setup_dialog_async;
	
	// gtk.PrintOperationPreviewT
	
	
	// gtk.PrintOperationPreviewT
	
	void function(GtkPrintOperationPreview* preview)gtk_print_operation_preview_end_preview;
	gboolean function(GtkPrintOperationPreview* preview, gint pageNr)gtk_print_operation_preview_is_selected;
	void function(GtkPrintOperationPreview* preview, gint pageNr)gtk_print_operation_preview_render_page;
	
	// gtk.PrintContext
	
	cairo_t* function(GtkPrintContext* context)gtk_print_context_get_cairo_context;
	void function(GtkPrintContext* context, cairo_t* cr, double dpiX, double dpiY)gtk_print_context_set_cairo_context;
	GtkPageSetup* function(GtkPrintContext* context)gtk_print_context_get_page_setup;
	gdouble function(GtkPrintContext* context)gtk_print_context_get_width;
	gdouble function(GtkPrintContext* context)gtk_print_context_get_height;
	gdouble function(GtkPrintContext* context)gtk_print_context_get_dpi_x;
	gdouble function(GtkPrintContext* context)gtk_print_context_get_dpi_y;
	PangoFontMap* function(GtkPrintContext* context)gtk_print_context_get_pango_fontmap;
	PangoContext* function(GtkPrintContext* context)gtk_print_context_create_pango_context;
	PangoLayout* function(GtkPrintContext* context)gtk_print_context_create_pango_layout;
	
	// gtk.PrintSettings
	
	GtkPrintSettings* function()gtk_print_settings_new;
	GtkPrintSettings* function(GtkPrintSettings* other)gtk_print_settings_copy;
	gboolean function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_has_key;
	gchar* function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_get;
	void function(GtkPrintSettings* settings, gchar* key, gchar* value)gtk_print_settings_set;
	void function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_unset;
	void function(GtkPrintSettings* settings, GtkPrintSettingsFunc func, gpointer userData)gtk_print_settings_foreach;
	gboolean function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_get_bool;
	void function(GtkPrintSettings* settings, gchar* key, gboolean value)gtk_print_settings_set_bool;
	gdouble function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_get_double;
	gdouble function(GtkPrintSettings* settings, gchar* key, gdouble def)gtk_print_settings_get_double_with_default;
	void function(GtkPrintSettings* settings, gchar* key, gdouble value)gtk_print_settings_set_double;
	gdouble function(GtkPrintSettings* settings, gchar* key, GtkUnit unit)gtk_print_settings_get_length;
	void function(GtkPrintSettings* settings, gchar* key, gdouble value, GtkUnit unit)gtk_print_settings_set_length;
	gint function(GtkPrintSettings* settings, gchar* key)gtk_print_settings_get_int;
	gint function(GtkPrintSettings* settings, gchar* key, gint def)gtk_print_settings_get_int_with_default;
	void function(GtkPrintSettings* settings, gchar* key, gint value)gtk_print_settings_set_int;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_printer;
	void function(GtkPrintSettings* settings, gchar* printer)gtk_print_settings_set_printer;
	GtkPageOrientation function(GtkPrintSettings* settings)gtk_print_settings_get_orientation;
	void function(GtkPrintSettings* settings, GtkPageOrientation orientation)gtk_print_settings_set_orientation;
	GtkPaperSize* function(GtkPrintSettings* settings)gtk_print_settings_get_paper_size;
	void function(GtkPrintSettings* settings, GtkPaperSize* paperSize)gtk_print_settings_set_paper_size;
	gdouble function(GtkPrintSettings* settings, GtkUnit unit)gtk_print_settings_get_paper_width;
	void function(GtkPrintSettings* settings, gdouble width, GtkUnit unit)gtk_print_settings_set_paper_width;
	gdouble function(GtkPrintSettings* settings, GtkUnit unit)gtk_print_settings_get_paper_height;
	void function(GtkPrintSettings* settings, gdouble height, GtkUnit unit)gtk_print_settings_set_paper_height;
	gboolean function(GtkPrintSettings* settings)gtk_print_settings_get_use_color;
	void function(GtkPrintSettings* settings, gboolean useColor)gtk_print_settings_set_use_color;
	gboolean function(GtkPrintSettings* settings)gtk_print_settings_get_collate;
	void function(GtkPrintSettings* settings, gboolean collate)gtk_print_settings_set_collate;
	gboolean function(GtkPrintSettings* settings)gtk_print_settings_get_reverse;
	void function(GtkPrintSettings* settings, gboolean reverse)gtk_print_settings_set_reverse;
	GtkPrintDuplex function(GtkPrintSettings* settings)gtk_print_settings_get_duplex;
	void function(GtkPrintSettings* settings, GtkPrintDuplex duplex)gtk_print_settings_set_duplex;
	GtkPrintQuality function(GtkPrintSettings* settings)gtk_print_settings_get_quality;
	void function(GtkPrintSettings* settings, GtkPrintQuality quality)gtk_print_settings_set_quality;
	gint function(GtkPrintSettings* settings)gtk_print_settings_get_n_copies;
	void function(GtkPrintSettings* settings, gint numCopies)gtk_print_settings_set_n_copies;
	gint function(GtkPrintSettings* settings)gtk_print_settings_get_number_up;
	void function(GtkPrintSettings* settings, gint numberUp)gtk_print_settings_set_number_up;
	gint function(GtkPrintSettings* settings)gtk_print_settings_get_resolution;
	void function(GtkPrintSettings* settings, gint resolution)gtk_print_settings_set_resolution;
	gdouble function(GtkPrintSettings* settings)gtk_print_settings_get_scale;
	void function(GtkPrintSettings* settings, gdouble scale)gtk_print_settings_set_scale;
	GtkPrintPages function(GtkPrintSettings* settings)gtk_print_settings_get_print_pages;
	void function(GtkPrintSettings* settings, GtkPrintPages pages)gtk_print_settings_set_print_pages;
	GtkPageRange* function(GtkPrintSettings* settings, gint* numRanges)gtk_print_settings_get_page_ranges;
	void function(GtkPrintSettings* settings, GtkPageRange* pageRanges, gint numRanges)gtk_print_settings_set_page_ranges;
	GtkPageSet function(GtkPrintSettings* settings)gtk_print_settings_get_page_set;
	void function(GtkPrintSettings* settings, GtkPageSet pageSet)gtk_print_settings_set_page_set;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_default_source;
	void function(GtkPrintSettings* settings, gchar* defaultSource)gtk_print_settings_set_default_source;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_media_type;
	void function(GtkPrintSettings* settings, gchar* mediaType)gtk_print_settings_set_media_type;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_dither;
	void function(GtkPrintSettings* settings, gchar* dither)gtk_print_settings_set_dither;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_finishings;
	void function(GtkPrintSettings* settings, gchar* finishings)gtk_print_settings_set_finishings;
	gchar* function(GtkPrintSettings* settings)gtk_print_settings_get_output_bin;
	void function(GtkPrintSettings* settings, gchar* outputBin)gtk_print_settings_set_output_bin;
	GtkPrintSettings* function(gchar* fileName, GError** error)gtk_print_settings_new_from_file;
	GtkPrintSettings* function(GKeyFile* keyFile, gchar* groupName, GError** error)gtk_print_settings_new_from_key_file;
	gboolean function(GtkPrintSettings* settings, gchar* fileName, GError** error)gtk_print_settings_to_file;
	void function(GtkPrintSettings* settings, GKeyFile* keyFile, gchar* groupName)gtk_print_settings_to_key_file;
	
	// gtk.PageSetup
	
	GtkPageSetup* function()gtk_page_setup_new;
	GtkPageSetup* function(GtkPageSetup* other)gtk_page_setup_copy;
	GtkPageOrientation function(GtkPageSetup* setup)gtk_page_setup_get_orientation;
	void function(GtkPageSetup* setup, GtkPageOrientation orientation)gtk_page_setup_set_orientation;
	GtkPaperSize* function(GtkPageSetup* setup)gtk_page_setup_get_paper_size;
	void function(GtkPageSetup* setup, GtkPaperSize* size)gtk_page_setup_set_paper_size;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_top_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit)gtk_page_setup_set_top_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_bottom_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit)gtk_page_setup_set_bottom_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_left_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit)gtk_page_setup_set_left_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_right_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit)gtk_page_setup_set_right_margin;
	void function(GtkPageSetup* setup, GtkPaperSize* size)gtk_page_setup_set_paper_size_and_default_margins;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_paper_width;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_paper_height;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_page_width;
	gdouble function(GtkPageSetup* setup, GtkUnit unit)gtk_page_setup_get_page_height;
	GtkPageSetup* function(gchar* fileName, GError** error)gtk_page_setup_new_from_file;
	GtkPageSetup* function(GKeyFile* keyFile, gchar* groupName, GError** error)gtk_page_setup_new_from_key_file;
	gboolean function(GtkPageSetup* setup, char* fileName, GError** error)gtk_page_setup_to_file;
	void function(GtkPageSetup* setup, GKeyFile* keyFile, gchar* groupName)gtk_page_setup_to_key_file;
	
	// gtk.PaperSize
	
	GtkPaperSize* function(gchar* name)gtk_paper_size_new;
	GtkPaperSize* function(gchar* ppdName, gchar* ppdDisplayName, gdouble width, gdouble height)gtk_paper_size_new_from_ppd;
	GtkPaperSize* function(gchar* name, gchar* displayName, gdouble width, gdouble height, GtkUnit unit)gtk_paper_size_new_custom;
	GtkPaperSize* function(GtkPaperSize* other)gtk_paper_size_copy;
	void function(GtkPaperSize* size)gtk_paper_size_free;
	gboolean function(GtkPaperSize* size1, GtkPaperSize* size2)gtk_paper_size_is_equal;
	GList* function(gboolean includeCustom)gtk_paper_size_get_paper_sizes;
	gchar* function(GtkPaperSize* size)gtk_paper_size_get_name;
	gchar* function(GtkPaperSize* size)gtk_paper_size_get_display_name;
	gchar* function(GtkPaperSize* size)gtk_paper_size_get_ppd_name;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_width;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_height;
	gboolean function(GtkPaperSize* size)gtk_paper_size_is_custom;
	void function(GtkPaperSize* size, gdouble width, gdouble height, GtkUnit unit)gtk_paper_size_set_size;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_default_top_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_default_bottom_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_default_left_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit)gtk_paper_size_get_default_right_margin;
	gchar* function()gtk_paper_size_get_default;
	GtkPaperSize* function(GKeyFile* keyFile, gchar* groupName, GError** error)gtk_paper_size_new_from_key_file;
	void function(GtkPaperSize* size, GKeyFile* keyFile, gchar* groupName)gtk_paper_size_to_key_file;
	
	// gtk.Printer
	
	GtkPrinter* function(gchar* name, GtkPrintBackend* backend, gboolean virtual)gtk_printer_new;
	GtkPrintBackend* function(GtkPrinter* printer)gtk_printer_get_backend;
	gchar* function(GtkPrinter* printer)gtk_printer_get_name;
	gchar* function(GtkPrinter* printer)gtk_printer_get_state_message;
	gchar* function(GtkPrinter* printer)gtk_printer_get_description;
	gchar* function(GtkPrinter* printer)gtk_printer_get_location;
	gchar* function(GtkPrinter* printer)gtk_printer_get_icon_name;
	gint function(GtkPrinter* printer)gtk_printer_get_job_count;
	gboolean function(GtkPrinter* printer)gtk_printer_is_active;
	gboolean function(GtkPrinter* printer)gtk_printer_is_virtual;
	gboolean function(GtkPrinter* printer)gtk_printer_is_default;
	gboolean function(GtkPrinter* printer)gtk_printer_accepts_ps;
	gboolean function(GtkPrinter* printer)gtk_printer_accepts_pdf;
	GList* function(GtkPrinter* printer)gtk_printer_list_papers;
	gint function(GtkPrinter* a, GtkPrinter* b)gtk_printer_compare;
	gboolean function(GtkPrinter* printer)gtk_printer_has_details;
	void function(GtkPrinter* printer)gtk_printer_request_details;
	GtkPrintCapabilities function(GtkPrinter* printer)gtk_printer_get_capabilities;
	void function(GtkPrinterFunc func, gpointer data, GDestroyNotify destroy, gboolean wait)gtk_enumerate_printers;
	
	// gtk.PrintJob
	
	GtkPrintJob* function(gchar* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* pageSetup)gtk_print_job_new;
	GtkPrintSettings* function(GtkPrintJob* job)gtk_print_job_get_settings;
	GtkPrinter* function(GtkPrintJob* job)gtk_print_job_get_printer;
	gchar* function(GtkPrintJob* job)gtk_print_job_get_title;
	GtkPrintStatus function(GtkPrintJob* job)gtk_print_job_get_status;
	gboolean function(GtkPrintJob* job, gchar* filename, GError** error)gtk_print_job_set_source_file;
	cairo_surface_t* function(GtkPrintJob* job, GError** error)gtk_print_job_get_surface;
	void function(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, gpointer userData, GDestroyNotify dnotify)gtk_print_job_send;
	void function(GtkPrintJob* job, gboolean trackStatus)gtk_print_job_set_track_print_status;
	gboolean function(GtkPrintJob* job)gtk_print_job_get_track_print_status;
	
	// gtk.PrintUnixDialog
	
	GtkWidget* function(gchar* title, GtkWindow* parent)gtk_print_unix_dialog_new;
	void function(GtkPrintUnixDialog* dialog, GtkPageSetup* pageSetup)gtk_print_unix_dialog_set_page_setup;
	GtkPageSetup* function(GtkPrintUnixDialog* dialog)gtk_print_unix_dialog_get_page_setup;
	void function(GtkPrintUnixDialog* dialog, gint currentPage)gtk_print_unix_dialog_set_current_page;
	gint function(GtkPrintUnixDialog* dialog)gtk_print_unix_dialog_get_current_page;
	void function(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings)gtk_print_unix_dialog_set_settings;
	GtkPrintSettings* function(GtkPrintUnixDialog* dialog)gtk_print_unix_dialog_get_settings;
	GtkPrinter* function(GtkPrintUnixDialog* dialog)gtk_print_unix_dialog_get_selected_printer;
	void function(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tabLabel)gtk_print_unix_dialog_add_custom_tab;
	void function(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities)gtk_print_unix_dialog_set_manual_capabilities;
	
	// gtk.PageSetupUnixDialog
	
	GtkWidget* function(gchar* title, GtkWindow* parent)gtk_page_setup_unix_dialog_new;
	void function(GtkPageSetupUnixDialog* dialog, GtkPageSetup* pageSetup)gtk_page_setup_unix_dialog_set_page_setup;
	GtkPageSetup* function(GtkPageSetupUnixDialog* dialog)gtk_page_setup_unix_dialog_get_page_setup;
	void function(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* printSettings)gtk_page_setup_unix_dialog_set_print_settings;
	GtkPrintSettings* function(GtkPageSetupUnixDialog* dialog)gtk_page_setup_unix_dialog_get_print_settings;
	
	// gtk.Adjustment
	
	GtkObject* function(gdouble value, gdouble lower, gdouble upper, gdouble stepIncrement, gdouble pageIncrement, gdouble pageSize)gtk_adjustment_new;
	gdouble function(GtkAdjustment* adjustment)gtk_adjustment_get_value;
	void function(GtkAdjustment* adjustment, gdouble value)gtk_adjustment_set_value;
	void function(GtkAdjustment* adjustment, gdouble lower, gdouble upper)gtk_adjustment_clamp_page;
	void function(GtkAdjustment* adjustment)gtk_adjustment_changed;
	void function(GtkAdjustment* adjustment)gtk_adjustment_value_changed;
	
	// gtk.Arrow
	
	GtkWidget* function(GtkArrowType arrowType, GtkShadowType shadowType)gtk_arrow_new;
	void function(GtkArrow* arrow, GtkArrowType arrowType, GtkShadowType shadowType)gtk_arrow_set;
	
	// gtk.Calendar
	
	GtkWidget* function()gtk_calendar_new;
	gboolean function(GtkCalendar* calendar, guint month, guint year)gtk_calendar_select_month;
	void function(GtkCalendar* calendar, guint day)gtk_calendar_select_day;
	gboolean function(GtkCalendar* calendar, guint day)gtk_calendar_mark_day;
	gboolean function(GtkCalendar* calendar, guint day)gtk_calendar_unmark_day;
	void function(GtkCalendar* calendar)gtk_calendar_clear_marks;
	GtkCalendarDisplayOptions function(GtkCalendar* calendar)gtk_calendar_get_display_options;
	void function(GtkCalendar* calendar, GtkCalendarDisplayOptions flags)gtk_calendar_set_display_options;
	void function(GtkCalendar* calendar, GtkCalendarDisplayOptions flags)gtk_calendar_display_options;
	void function(GtkCalendar* calendar, guint* year, guint* month, guint* day)gtk_calendar_get_date;
	void function(GtkCalendar* calendar)gtk_calendar_freeze;
	void function(GtkCalendar* calendar)gtk_calendar_thaw;
	
	// gtk.DrawingArea
	
	GtkWidget* function()gtk_drawing_area_new;
	void function(GtkDrawingArea* darea, gint width, gint height)gtk_drawing_area_size;
	
	// gtk.EventBox
	
	GtkWidget* function()gtk_event_box_new;
	void function(GtkEventBox* eventBox, gboolean aboveChild)gtk_event_box_set_above_child;
	gboolean function(GtkEventBox* eventBox)gtk_event_box_get_above_child;
	void function(GtkEventBox* eventBox, gboolean visibleWindow)gtk_event_box_set_visible_window;
	gboolean function(GtkEventBox* eventBox)gtk_event_box_get_visible_window;
	
	// gtk.HandleBox
	
	GtkWidget* function()gtk_handle_box_new;
	void function(GtkHandleBox* handleBox, GtkShadowType type)gtk_handle_box_set_shadow_type;
	void function(GtkHandleBox* handleBox, GtkPositionType position)gtk_handle_box_set_handle_position;
	void function(GtkHandleBox* handleBox, GtkPositionType edge)gtk_handle_box_set_snap_edge;
	GtkPositionType function(GtkHandleBox* handleBox)gtk_handle_box_get_handle_position;
	GtkShadowType function(GtkHandleBox* handleBox)gtk_handle_box_get_shadow_type;
	GtkPositionType function(GtkHandleBox* handleBox)gtk_handle_box_get_snap_edge;
	
	// gtk.IMContextSimple
	
	GtkIMContext* function()gtk_im_context_simple_new;
	void function(GtkIMContextSimple* contextSimple, guint16* data, gint maxSeqLen, gint nSeqs)gtk_im_context_simple_add_table;
	
	// gtk.IMMulticontext
	
	GtkIMContext* function()gtk_im_multicontext_new;
	void function(GtkIMMulticontext* context, GtkMenuShell* menushell)gtk_im_multicontext_append_menuitems;
	
	// gtk.SizeGroup
	
	GtkSizeGroup* function(GtkSizeGroupMode mode)gtk_size_group_new;
	void function(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode)gtk_size_group_set_mode;
	GtkSizeGroupMode function(GtkSizeGroup* sizeGroup)gtk_size_group_get_mode;
	void function(GtkSizeGroup* sizeGroup, gboolean ignoreHidden)gtk_size_group_set_ignore_hidden;
	gboolean function(GtkSizeGroup* sizeGroup)gtk_size_group_get_ignore_hidden;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget)gtk_size_group_add_widget;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget)gtk_size_group_remove_widget;
	GSList* function(GtkSizeGroup* sizeGroup)gtk_size_group_get_widgets;
	
	// gtk.Tooltip
	
	void function(GtkTooltip* tooltip, gchar* markup)gtk_tooltip_set_markup;
	void function(GtkTooltip* tooltip, gchar* text)gtk_tooltip_set_text;
	void function(GtkTooltip* tooltip, GdkPixbuf* pixbuf)gtk_tooltip_set_icon;
	void function(GtkTooltip* tooltip, gchar* stockId, GtkIconSize size)gtk_tooltip_set_icon_from_stock;
	void function(GtkTooltip* tooltip, GtkWidget* customWidget)gtk_tooltip_set_custom;
	void function(GdkDisplay* display)gtk_tooltip_trigger_tooltip_query;
	void function(GtkTooltip* tooltip, GdkRectangle* rect)gtk_tooltip_set_tip_area;
	
	// gtk.Viewport
	
	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment)gtk_viewport_new;
	GtkAdjustment* function(GtkViewport* viewport)gtk_viewport_get_hadjustment;
	GtkAdjustment* function(GtkViewport* viewport)gtk_viewport_get_vadjustment;
	void function(GtkViewport* viewport, GtkAdjustment* adjustment)gtk_viewport_set_hadjustment;
	void function(GtkViewport* viewport, GtkAdjustment* adjustment)gtk_viewport_set_vadjustment;
	void function(GtkViewport* viewport, GtkShadowType type)gtk_viewport_set_shadow_type;
	GtkShadowType function(GtkViewport* viewport)gtk_viewport_get_shadow_type;
	
	// gtk.Accessible
	
	void function(GtkAccessible* accessible)gtk_accessible_connect_widget_destroyed;
	
	// gtk.Bin
	
	GtkWidget* function(GtkBin* bin)gtk_bin_get_child;
	
	// gtk.Box
	
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding)gtk_box_pack_start;
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding)gtk_box_pack_end;
	void function(GtkBox* box, GtkWidget* widget)gtk_box_pack_start_defaults;
	void function(GtkBox* box, GtkWidget* widget)gtk_box_pack_end_defaults;
	gboolean function(GtkBox* box)gtk_box_get_homogeneous;
	void function(GtkBox* box, gboolean homogeneous)gtk_box_set_homogeneous;
	gint function(GtkBox* box)gtk_box_get_spacing;
	void function(GtkBox* box, gint spacing)gtk_box_set_spacing;
	void function(GtkBox* box, GtkWidget* child, gint position)gtk_box_reorder_child;
	void function(GtkBox* box, GtkWidget* child, gboolean* expand, gboolean* fill, guint* padding, GtkPackType* packType)gtk_box_query_child_packing;
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding, GtkPackType packType)gtk_box_set_child_packing;
	
	// gtk.ButtonBox
	
	GtkButtonBoxStyle function(GtkButtonBox* widget)gtk_button_box_get_layout;
	void function(GtkButtonBox* widget, gint* minWidth, gint* minHeight)gtk_button_box_get_child_size;
	void function(GtkButtonBox* widget, gint* ipadX, gint* ipadY)gtk_button_box_get_child_ipadding;
	gboolean function(GtkButtonBox* widget, GtkWidget* child)gtk_button_box_get_child_secondary;
	void function(GtkButtonBox* widget, GtkButtonBoxStyle layoutStyle)gtk_button_box_set_layout;
	void function(GtkButtonBox* widget, gint minWidth, gint minHeight)gtk_button_box_set_child_size;
	void function(GtkButtonBox* widget, gint ipadX, gint ipadY)gtk_button_box_set_child_ipadding;
	void function(GtkButtonBox* widget, GtkWidget* child, gboolean isSecondary)gtk_button_box_set_child_secondary;
	
	// gtk.Container
	
	void function(GtkContainer* container, GtkWidget* widget)gtk_container_add;
	void function(GtkContainer* container, GtkWidget* widget)gtk_container_remove;
	void function(GtkContainer* container, GtkWidget* widget, gchar* firstPropName, ... )gtk_container_add_with_properties;
	GtkResizeMode function(GtkContainer* container)gtk_container_get_resize_mode;
	void function(GtkContainer* container, GtkResizeMode resizeMode)gtk_container_set_resize_mode;
	void function(GtkContainer* container)gtk_container_check_resize;
	void function(GtkContainer* container, GtkCallback callback, gpointer callbackData)gtk_container_foreach;
	void function(GtkContainer* container, GtkCallback callback, GtkCallbackMarshal marshal, gpointer callbackData, GtkDestroyNotify notify)gtk_container_foreach_full;
	GList* function(GtkContainer* container)gtk_container_get_children;
	void function(GtkContainer* container, gboolean needsRedraws)gtk_container_set_reallocate_redraws;
	void function(GtkContainer* container, GtkWidget* child)gtk_container_set_focus_child;
	GtkAdjustment* function(GtkContainer* container)gtk_container_get_focus_vadjustment;
	void function(GtkContainer* container, GtkAdjustment* adjustment)gtk_container_set_focus_vadjustment;
	GtkAdjustment* function(GtkContainer* container)gtk_container_get_focus_hadjustment;
	void function(GtkContainer* container, GtkAdjustment* adjustment)gtk_container_set_focus_hadjustment;
	void function(GtkContainer* container)gtk_container_resize_children;
	GType function(GtkContainer* container)gtk_container_child_type;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... )gtk_container_child_get;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... )gtk_container_child_set;
	void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value)gtk_container_child_get_property;
	void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value)gtk_container_child_set_property;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs)gtk_container_child_get_valist;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs)gtk_container_child_set_valist;
	void function(GtkContainer* container, GtkCallback callback, gpointer callbackData)gtk_container_forall;
	guint function(GtkContainer* container)gtk_container_get_border_width;
	void function(GtkContainer* container, guint borderWidth)gtk_container_set_border_width;
	void function(GtkContainer* container, GtkWidget* child, GdkEventExpose* event)gtk_container_propagate_expose;
	gboolean function(GtkContainer* container, GList** focusableWidgets)gtk_container_get_focus_chain;
	void function(GtkContainer* container, GList* focusableWidgets)gtk_container_set_focus_chain;
	void function(GtkContainer* container)gtk_container_unset_focus_chain;
	GParamSpec* function(GObjectClass* cclass, gchar* propertyName)gtk_container_class_find_child_property;
	void function(GtkContainerClass* cclass, guint propertyId, GParamSpec* pspec)gtk_container_class_install_child_property;
	GParamSpec** function(GObjectClass* cclass, guint* nProperties)gtk_container_class_list_child_properties;
	
	// gtk.Item
	
	void function(GtkItem* item)gtk_item_select;
	void function(GtkItem* item)gtk_item_deselect;
	void function(GtkItem* item)gtk_item_toggle;
	
	// gtk.MenuShell
	
	void function(GtkMenuShell* menuShell, GtkWidget* child)gtk_menu_shell_append;
	void function(GtkMenuShell* menuShell, GtkWidget* child)gtk_menu_shell_prepend;
	void function(GtkMenuShell* menuShell, GtkWidget* child, gint position)gtk_menu_shell_insert;
	void function(GtkMenuShell* menuShell)gtk_menu_shell_deactivate;
	void function(GtkMenuShell* menuShell, GtkWidget* menuItem)gtk_menu_shell_select_item;
	void function(GtkMenuShell* menuShell, gboolean searchSensitive)gtk_menu_shell_select_first;
	void function(GtkMenuShell* menuShell)gtk_menu_shell_deselect;
	void function(GtkMenuShell* menuShell, GtkWidget* menuItem, gboolean forceDeactivate)gtk_menu_shell_activate_item;
	void function(GtkMenuShell* menuShell)gtk_menu_shell_cancel;
	void function(GtkMenuShell* menuShell, gboolean takeFocus)gtk_menu_shell_set_take_focus;
	gboolean function(GtkMenuShell* menuShell)gtk_menu_shell_get_take_focus;
	
	// gtk.Misc
	
	void function(GtkMisc* misc, gfloat xalign, gfloat yalign)gtk_misc_set_alignment;
	void function(GtkMisc* misc, gint xpad, gint ypad)gtk_misc_set_padding;
	void function(GtkMisc* misc, gfloat* xalign, gfloat* yalign)gtk_misc_get_alignment;
	void function(GtkMisc* misc, gint* xpad, gint* ypad)gtk_misc_get_padding;
	
	// gtk.ObjectGtk
	
	GtkObject* function(GtkType type, gchar* firstPropertyName, ... )gtk_object_new;
	void function(GtkObject* object)gtk_object_sink;
	GtkObject* function(GtkObject* object)gtk_object_ref;
	void function(GtkObject* object)gtk_object_unref;
	void function(GtkObject* object, GtkDestroyNotify notify, gpointer data)gtk_object_weakref;
	void function(GtkObject* object, GtkDestroyNotify notify, gpointer data)gtk_object_weakunref;
	void function(GtkObject* object)gtk_object_destroy;
	void function(GtkObject* object, gchar* firstPropertyName, ... )gtk_object_get;
	void function(GtkObject* object, gchar* firstPropertyName, ... )gtk_object_set;
	void function(GtkObject* object, gchar* key, gpointer data)gtk_object_set_data;
	void function(GtkObject* object, gchar* key, gpointer data, GtkDestroyNotify destroy)gtk_object_set_data_full;
	void function(GtkObject* object, gchar* key)gtk_object_remove_data;
	gpointer function(GtkObject* object, gchar* key)gtk_object_get_data;
	void function(GtkObject* object, gchar* key)gtk_object_remove_no_notify;
	void function(GtkObject* object, gpointer data)gtk_object_set_user_data;
	gpointer function(GtkObject* object)gtk_object_get_user_data;
	void function(gchar* argName, GtkType argType, guint argFlags, guint argId)gtk_object_add_arg_type;
	void function(GtkObject* object, GQuark dataId, gpointer data)gtk_object_set_data_by_id;
	void function(GtkObject* object, GQuark dataId, gpointer data, GtkDestroyNotify destroy)gtk_object_set_data_by_id_full;
	gpointer function(GtkObject* object, GQuark dataId)gtk_object_get_data_by_id;
	void function(GtkObject* object, GQuark dataId)gtk_object_remove_data_by_id;
	void function(GtkObject* object, GQuark keyId)gtk_object_remove_no_notify_by_id;
	
	// gtk.Paned
	
	void function(GtkPaned* paned, GtkWidget* child)gtk_paned_add1;
	void function(GtkPaned* paned, GtkWidget* child)gtk_paned_add2;
	void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink)gtk_paned_pack1;
	void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink)gtk_paned_pack2;
	GtkWidget* function(GtkPaned* paned)gtk_paned_get_child1;
	GtkWidget* function(GtkPaned* paned)gtk_paned_get_child2;
	void function(GtkPaned* paned, gint position)gtk_paned_set_position;
	gint function(GtkPaned* paned)gtk_paned_get_position;
	
	// gtk.Range
	
	gdouble function(GtkRange* range)gtk_range_get_fill_level;
	gboolean function(GtkRange* range)gtk_range_get_restrict_to_fill_level;
	gboolean function(GtkRange* range)gtk_range_get_show_fill_level;
	void function(GtkRange* range, gdouble fillLevel)gtk_range_set_fill_level;
	void function(GtkRange* range, gboolean restrictToFillLevel)gtk_range_set_restrict_to_fill_level;
	void function(GtkRange* range, gboolean showFillLevel)gtk_range_set_show_fill_level;
	GtkAdjustment* function(GtkRange* range)gtk_range_get_adjustment;
	void function(GtkRange* range, GtkUpdateType policy)gtk_range_set_update_policy;
	void function(GtkRange* range, GtkAdjustment* adjustment)gtk_range_set_adjustment;
	gboolean function(GtkRange* range)gtk_range_get_inverted;
	void function(GtkRange* range, gboolean setting)gtk_range_set_inverted;
	GtkUpdateType function(GtkRange* range)gtk_range_get_update_policy;
	gdouble function(GtkRange* range)gtk_range_get_value;
	void function(GtkRange* range, gdouble step, gdouble page)gtk_range_set_increments;
	void function(GtkRange* range, gdouble min, gdouble max)gtk_range_set_range;
	void function(GtkRange* range, gdouble value)gtk_range_set_value;
	void function(GtkRange* range, GtkSensitivityType sensitivity)gtk_range_set_lower_stepper_sensitivity;
	GtkSensitivityType function(GtkRange* range)gtk_range_get_lower_stepper_sensitivity;
	void function(GtkRange* range, GtkSensitivityType sensitivity)gtk_range_set_upper_stepper_sensitivity;
	GtkSensitivityType function(GtkRange* range)gtk_range_get_upper_stepper_sensitivity;
	
	// gtk.Scale
	
	void function(GtkScale* scale, gint digits)gtk_scale_set_digits;
	void function(GtkScale* scale, gboolean drawValue)gtk_scale_set_draw_value;
	void function(GtkScale* scale, GtkPositionType pos)gtk_scale_set_value_pos;
	gint function(GtkScale* scale)gtk_scale_get_digits;
	gboolean function(GtkScale* scale)gtk_scale_get_draw_value;
	GtkPositionType function(GtkScale* scale)gtk_scale_get_value_pos;
	PangoLayout* function(GtkScale* scale)gtk_scale_get_layout;
	void function(GtkScale* scale, gint* x, gint* y)gtk_scale_get_layout_offsets;
	
	// gtk.Scrollbar
	
	
	// gtk.Separator
	
	
	// gtk.Widget
	
	GtkWidget* function(GType type, gchar* firstPropertyName, ... )gtk_widget_new;
	void function(GtkWidget* widget)gtk_widget_unref;
	void function(GtkWidget* widget)gtk_widget_destroy;
	void function(GtkWidget* widget, GtkWidget** widgetPointer)gtk_widget_destroyed;
	void function(GtkWidget* widget, gchar* firstPropertyName, ... )gtk_widget_set;
	void function(GtkWidget* widget)gtk_widget_unparent;
	void function(GtkWidget* widget)gtk_widget_show;
	void function(GtkWidget* widget)gtk_widget_show_now;
	void function(GtkWidget* widget)gtk_widget_hide;
	void function(GtkWidget* widget)gtk_widget_show_all;
	void function(GtkWidget* widget)gtk_widget_hide_all;
	void function(GtkWidget* widget)gtk_widget_map;
	void function(GtkWidget* widget)gtk_widget_unmap;
	void function(GtkWidget* widget)gtk_widget_realize;
	void function(GtkWidget* widget)gtk_widget_unrealize;
	void function(GtkWidget* widget)gtk_widget_queue_draw;
	void function(GtkWidget* widget)gtk_widget_queue_resize;
	void function(GtkWidget* widget)gtk_widget_queue_resize_no_redraw;
	void function(GtkWidget* widget, GdkRectangle* area)gtk_widget_draw;
	void function(GtkWidget* widget, GtkRequisition* requisition)gtk_widget_size_request;
	void function(GtkWidget* widget, GtkRequisition* requisition)gtk_widget_get_child_requisition;
	void function(GtkWidget* widget, GtkAllocation* allocation)gtk_widget_size_allocate;
	void function(GtkWidget* widget, gchar* accelSignal, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags)gtk_widget_add_accelerator;
	gboolean function(GtkWidget* widget, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods)gtk_widget_remove_accelerator;
	void function(GtkWidget* widget, gchar* accelPath, GtkAccelGroup* accelGroup)gtk_widget_set_accel_path;
	GList* function(GtkWidget* widget)gtk_widget_list_accel_closures;
	gboolean function(GtkWidget* widget, guint signalId)gtk_widget_can_activate_accel;
	gboolean function(GtkWidget* widget, GdkEvent* event)gtk_widget_event;
	gboolean function(GtkWidget* widget)gtk_widget_activate;
	void function(GtkWidget* widget, GtkWidget* newParent)gtk_widget_reparent;
	gboolean function(GtkWidget* widget, GdkRectangle* area, GdkRectangle* intersection)gtk_widget_intersect;
	gboolean function(GtkWidget* widget)gtk_widget_is_focus;
	void function(GtkWidget* widget)gtk_widget_grab_focus;
	void function(GtkWidget* widget)gtk_widget_grab_default;
	void function(GtkWidget* widget, gchar* name)gtk_widget_set_name;
	gchar* function(GtkWidget* widget)gtk_widget_get_name;
	void function(GtkWidget* widget, GtkStateType state)gtk_widget_set_state;
	void function(GtkWidget* widget, gboolean sensitive)gtk_widget_set_sensitive;
	void function(GtkWidget* widget, GtkWidget* parent)gtk_widget_set_parent;
	void function(GtkWidget* widget, GdkWindow* parentWindow)gtk_widget_set_parent_window;
	GdkWindow* function(GtkWidget* widget)gtk_widget_get_parent_window;
	void function(GtkWidget* widget, gint x, gint y)gtk_widget_set_uposition;
	void function(GtkWidget* widget, gint width, gint height)gtk_widget_set_usize;
	void function(GtkWidget* widget, gint events)gtk_widget_set_events;
	void function(GtkWidget* widget, gint events)gtk_widget_add_events;
	void function(GtkWidget* widget, GdkExtensionMode mode)gtk_widget_set_extension_events;
	GdkExtensionMode function(GtkWidget* widget)gtk_widget_get_extension_events;
	GtkWidget* function(GtkWidget* widget)gtk_widget_get_toplevel;
	GtkWidget* function(GtkWidget* widget, GType widgetType)gtk_widget_get_ancestor;
	GdkColormap* function(GtkWidget* widget)gtk_widget_get_colormap;
	void function(GtkWidget* widget, GdkColormap* colormap)gtk_widget_set_colormap;
	GdkVisual* function(GtkWidget* widget)gtk_widget_get_visual;
	gint function(GtkWidget* widget)gtk_widget_get_events;
	void function(GtkWidget* widget, gint* x, gint* y)gtk_widget_get_pointer;
	gboolean function(GtkWidget* widget, GtkWidget* ancestor)gtk_widget_is_ancestor;
	gboolean function(GtkWidget* srcWidget, GtkWidget* destWidget, gint srcX, gint srcY, gint* destX, gint* destY)gtk_widget_translate_coordinates;
	gboolean function(GtkWidget* widget)gtk_widget_hide_on_delete;
	void function(GtkWidget* widget, GtkStyle* style)gtk_widget_set_style;
	void function(GtkWidget* widget)gtk_widget_ensure_style;
	GtkStyle* function(GtkWidget* widget)gtk_widget_get_style;
	void function(GtkWidget* widget)gtk_widget_reset_rc_styles;
	void function(GdkColormap* cmap)gtk_widget_push_colormap;
	void function()gtk_widget_pop_colormap;
	void function(GdkColormap* colormap)gtk_widget_set_default_colormap;
	GtkStyle* function()gtk_widget_get_default_style;
	GdkColormap* function()gtk_widget_get_default_colormap;
	GdkVisual* function()gtk_widget_get_default_visual;
	void function(GtkWidget* widget, GtkTextDirection dir)gtk_widget_set_direction;
	GtkTextDirection function(GtkWidget* widget)gtk_widget_get_direction;
	void function(GtkTextDirection dir)gtk_widget_set_default_direction;
	GtkTextDirection function()gtk_widget_get_default_direction;
	void function(GtkWidget* widget, GdkBitmap* shapeMask, gint offsetX, gint offsetY)gtk_widget_shape_combine_mask;
	void function(GtkWidget* widget, GdkBitmap* shapeMask, gint offsetX, gint offsetY)gtk_widget_input_shape_combine_mask;
	void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed)gtk_widget_path;
	void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed)gtk_widget_class_path;
	gchar* function(GtkWidget* widget)gtk_widget_get_composite_name;
	void function(GtkWidget* widget, GtkRcStyle* style)gtk_widget_modify_style;
	GtkRcStyle* function(GtkWidget* widget)gtk_widget_get_modifier_style;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color)gtk_widget_modify_fg;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color)gtk_widget_modify_bg;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color)gtk_widget_modify_text;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color)gtk_widget_modify_base;
	void function(GtkWidget* widget, PangoFontDescription* fontDesc)gtk_widget_modify_font;
	void function(GtkWidget* widget, GdkColor* primary, GdkColor* secondary)gtk_widget_modify_cursor;
	PangoContext* function(GtkWidget* widget)gtk_widget_create_pango_context;
	PangoContext* function(GtkWidget* widget)gtk_widget_get_pango_context;
	PangoLayout* function(GtkWidget* widget, gchar* text)gtk_widget_create_pango_layout;
	GdkPixbuf* function(GtkWidget* widget, gchar* stockId, GtkIconSize size, gchar* detail)gtk_widget_render_icon;
	void function()gtk_widget_pop_composite_child;
	void function()gtk_widget_push_composite_child;
	void function(GtkWidget* widget)gtk_widget_queue_clear;
	void function(GtkWidget* widget, gint x, gint y, gint width, gint height)gtk_widget_queue_clear_area;
	void function(GtkWidget* widget, gint x, gint y, gint width, gint height)gtk_widget_queue_draw_area;
	void function(GtkWidget* widget)gtk_widget_reset_shapes;
	void function(GtkWidget* widget, gboolean appPaintable)gtk_widget_set_app_paintable;
	void function(GtkWidget* widget, gboolean doubleBuffered)gtk_widget_set_double_buffered;
	void function(GtkWidget* widget, gboolean redrawOnAllocate)gtk_widget_set_redraw_on_allocate;
	void function(GtkWidget* widget, gchar* name)gtk_widget_set_composite_name;
	gboolean function(GtkWidget* widget, GtkAdjustment* hadjustment, GtkAdjustment* vadjustment)gtk_widget_set_scroll_adjustments;
	gboolean function(GtkWidget* widget, gboolean groupCycling)gtk_widget_mnemonic_activate;
	void function(GtkWidgetClass* klass, GParamSpec* pspec)gtk_widget_class_install_style_property;
	void function(GtkWidgetClass* klass, GParamSpec* pspec, GtkRcPropertyParser parser)gtk_widget_class_install_style_property_parser;
	GParamSpec* function(GtkWidgetClass* klass, gchar* propertyName)gtk_widget_class_find_style_property;
	GParamSpec** function(GtkWidgetClass* klass, guint* nProperties)gtk_widget_class_list_style_properties;
	GdkRegion* function(GtkWidget* widget, GdkRegion* region)gtk_widget_region_intersect;
	gint function(GtkWidget* widget, GdkEvent* event)gtk_widget_send_expose;
	void function(GtkWidget* widget, gchar* firstPropertyName, ... )gtk_widget_style_get;
	void function(GtkWidget* widget, gchar* propertyName, GValue* value)gtk_widget_style_get_property;
	void function(GtkWidget* widget, gchar* firstPropertyName, va_list varArgs)gtk_widget_style_get_valist;
	AtkObject* function(GtkWidget* widget)gtk_widget_get_accessible;
	gboolean function(GtkWidget* widget, GtkDirectionType direction)gtk_widget_child_focus;
	void function(GtkWidget* widget, gchar* childProperty)gtk_widget_child_notify;
	void function(GtkWidget* widget)gtk_widget_freeze_child_notify;
	gboolean function(GtkWidget* widget)gtk_widget_get_child_visible;
	GtkWidget* function(GtkWidget* widget)gtk_widget_get_parent;
	GtkSettings* function(GtkWidget* widget)gtk_widget_get_settings;
	GtkClipboard* function(GtkWidget* widget, GdkAtom selection)gtk_widget_get_clipboard;
	GdkDisplay* function(GtkWidget* widget)gtk_widget_get_display;
	GdkWindow* function(GtkWidget* widget)gtk_widget_get_root_window;
	GdkScreen* function(GtkWidget* widget)gtk_widget_get_screen;
	gboolean function(GtkWidget* widget)gtk_widget_has_screen;
	void function(GtkWidget* widget, gint* width, gint* height)gtk_widget_get_size_request;
	void function(GtkWidget* widget, gboolean isVisible)gtk_widget_set_child_visible;
	void function(GtkWidget* widget, gint width, gint height)gtk_widget_set_size_request;
	void function(GtkWidget* widget)gtk_widget_thaw_child_notify;
	void function(GtkWidget* widget, gboolean noShowAll)gtk_widget_set_no_show_all;
	gboolean function(GtkWidget* widget)gtk_widget_get_no_show_all;
	GList* function(GtkWidget* widget)gtk_widget_list_mnemonic_labels;
	void function(GtkWidget* widget, GtkWidget* label)gtk_widget_add_mnemonic_label;
	void function(GtkWidget* widget, GtkWidget* label)gtk_widget_remove_mnemonic_label;
	GtkAction* function(GtkWidget* widget)gtk_widget_get_action;
	gboolean function(GtkWidget* widget)gtk_widget_is_composited;
	void function(GtkWidget* widget)gtk_widget_error_bell;
	gboolean function(GtkWidget* widget, GtkDirectionType direction)gtk_widget_keynav_failed;
	gchar* function(GtkWidget* widget)gtk_widget_get_tooltip_markup;
	void function(GtkWidget* widget, gchar* markup)gtk_widget_set_tooltip_markup;
	gchar* function(GtkWidget* widget)gtk_widget_get_tooltip_text;
	void function(GtkWidget* widget, gchar* text)gtk_widget_set_tooltip_text;
	GtkWindow* function(GtkWidget* widget)gtk_widget_get_tooltip_window;
	void function(GtkWidget* widget, GtkWindow* customWindow)gtk_widget_set_tooltip_window;
	gboolean function(GtkWidget* widget)gtk_widget_get_has_tooltip;
	void function(GtkWidget* widget, gboolean hasTooltip)gtk_widget_set_has_tooltip;
	void function(GtkWidget* widget)gtk_widget_trigger_tooltip_query;
	GtkRequisition* function(GtkRequisition* requisition)gtk_requisition_copy;
	void function(GtkRequisition* requisition)gtk_requisition_free;
	
	// gtk.IMContext
	
	void function(GtkIMContext* context, GdkWindow* window)gtk_im_context_set_client_window;
	void function(GtkIMContext* context, gchar** str, PangoAttrList** attrs, gint* cursorPos)gtk_im_context_get_preedit_string;
	gboolean function(GtkIMContext* context, GdkEventKey* event)gtk_im_context_filter_keypress;
	void function(GtkIMContext* context)gtk_im_context_focus_in;
	void function(GtkIMContext* context)gtk_im_context_focus_out;
	void function(GtkIMContext* context)gtk_im_context_reset;
	void function(GtkIMContext* context, GdkRectangle* area)gtk_im_context_set_cursor_location;
	void function(GtkIMContext* context, gboolean usePreedit)gtk_im_context_set_use_preedit;
	void function(GtkIMContext* context, gchar* text, gint len, gint cursorIndex)gtk_im_context_set_surrounding;
	gboolean function(GtkIMContext* context, gchar** text, gint* cursorIndex)gtk_im_context_get_surrounding;
	gboolean function(GtkIMContext* context, gint offset, gint nChars)gtk_im_context_delete_surrounding;
	
	// gtk.Plug
	
	void function(GtkPlug* plug, GdkNativeWindow socketId)gtk_plug_construct;
	void function(GtkPlug* plug, GdkDisplay* display, GdkNativeWindow socketId)gtk_plug_construct_for_display;
	GtkWidget* function(GdkNativeWindow socketId)gtk_plug_new;
	GtkWidget* function(GdkDisplay* display, GdkNativeWindow socketId)gtk_plug_new_for_display;
	GdkNativeWindow function(GtkPlug* plug)gtk_plug_get_id;
	
	// gtk.Socket
	
	GtkWidget* function()gtk_socket_new;
	void function(GtkSocket* socket, GdkNativeWindow wid)gtk_socket_steal;
	void function(GtkSocket* socket, GdkNativeWindow windowId)gtk_socket_add_id;
	GdkNativeWindow function(GtkSocket* socket)gtk_socket_get_id;
	
	// gtk.Curve
	
	GtkWidget* function()gtk_curve_new;
	void function(GtkCurve* curve)gtk_curve_reset;
	void function(GtkCurve* curve, gfloat gamma)gtk_curve_set_gamma;
	void function(GtkCurve* curve, gfloat minX, gfloat maxX, gfloat minY, gfloat maxY)gtk_curve_set_range;
	void function(GtkCurve* curve, int veclen, gfloat[] vector)gtk_curve_get_vector;
	void function(GtkCurve* curve, int veclen, gfloat[] vector)gtk_curve_set_vector;
	void function(GtkCurve* curve, GtkCurveType type)gtk_curve_set_curve_type;
	
	// gtk.GammaCurve
	
	GtkWidget* function()gtk_gamma_curve_new;
	
	// gtk.Ruler
	
	void function(GtkRuler* ruler, GtkMetricType metric)gtk_ruler_set_metric;
	void function(GtkRuler* ruler, gdouble lower, gdouble upper, gdouble position, gdouble maxSize)gtk_ruler_set_range;
	GtkMetricType function(GtkRuler* ruler)gtk_ruler_get_metric;
	void function(GtkRuler* ruler, gdouble* lower, gdouble* upper, gdouble* position, gdouble* maxSize)gtk_ruler_get_range;
	
	// gtk.HRuler
	
	GtkWidget* function()gtk_hruler_new;
	
	// gtk.VRuler
	
	GtkWidget* function()gtk_vruler_new;
	
	// gtk.RecentManager
	
	GtkRecentManager* function()gtk_recent_manager_new;
	GtkRecentManager* function()gtk_recent_manager_get_default;
	GtkRecentManager* function(GdkScreen* screen)gtk_recent_manager_get_for_screen;
	void function(GtkRecentManager* manager, GdkScreen* screen)gtk_recent_manager_set_screen;
	gboolean function(GtkRecentManager* manager, gchar* uri)gtk_recent_manager_add_item;
	gboolean function(GtkRecentManager* manager, gchar* uri, GtkRecentData* recentData)gtk_recent_manager_add_full;
	gboolean function(GtkRecentManager* manager, gchar* uri, GError** error)gtk_recent_manager_remove_item;
	GtkRecentInfo* function(GtkRecentManager* manager, gchar* uri, GError** error)gtk_recent_manager_lookup_item;
	gboolean function(GtkRecentManager* manager, gchar* uri)gtk_recent_manager_has_item;
	gboolean function(GtkRecentManager* manager, gchar* uri, gchar* newUri, GError** error)gtk_recent_manager_move_item;
	gint function(GtkRecentManager* manager)gtk_recent_manager_get_limit;
	void function(GtkRecentManager* manager, gint limit)gtk_recent_manager_set_limit;
	GList* function(GtkRecentManager* manager)gtk_recent_manager_get_items;
	gint function(GtkRecentManager* manager, GError** error)gtk_recent_manager_purge_items;
	
	// gtk.RecentInfo
	
	GtkRecentInfo* function(GtkRecentInfo* info)gtk_recent_info_ref;
	void function(GtkRecentInfo* info)gtk_recent_info_unref;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_uri;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_display_name;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_description;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_mime_type;
	time_t function(GtkRecentInfo* info)gtk_recent_info_get_added;
	time_t function(GtkRecentInfo* info)gtk_recent_info_get_modified;
	time_t function(GtkRecentInfo* info)gtk_recent_info_get_visited;
	gboolean function(GtkRecentInfo* info)gtk_recent_info_get_private_hint;
	gboolean function(GtkRecentInfo* info, gchar* appName, gchar** appExec, guint* count, time_t* time)gtk_recent_info_get_application_info;
	gchar** function(GtkRecentInfo* info, gsize* length)gtk_recent_info_get_applications;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_last_application;
	gchar** function(GtkRecentInfo* info, gsize* length)gtk_recent_info_get_groups;
	gboolean function(GtkRecentInfo* info, gchar* groupName)gtk_recent_info_has_group;
	gboolean function(GtkRecentInfo* info, gchar* appName)gtk_recent_info_has_application;
	GdkPixbuf* function(GtkRecentInfo* info, gint size)gtk_recent_info_get_icon;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_short_name;
	gchar* function(GtkRecentInfo* info)gtk_recent_info_get_uri_display;
	gint function(GtkRecentInfo* info)gtk_recent_info_get_age;
	gboolean function(GtkRecentInfo* info)gtk_recent_info_is_local;
	gboolean function(GtkRecentInfo* info)gtk_recent_info_exists;
	gboolean function(GtkRecentInfo* infoA, GtkRecentInfo* infoB)gtk_recent_info_match;
	
	// gtk.RecentChooserT
	
	
	// gtk.RecentChooserT
	
	void function(GtkRecentChooser* chooser, gboolean showPrivate)gtk_recent_chooser_set_show_private;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_show_private;
	void function(GtkRecentChooser* chooser, gboolean showNotFound)gtk_recent_chooser_set_show_not_found;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_show_not_found;
	void function(GtkRecentChooser* chooser, gboolean showIcons)gtk_recent_chooser_set_show_icons;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_show_icons;
	void function(GtkRecentChooser* chooser, gboolean selectMultiple)gtk_recent_chooser_set_select_multiple;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_select_multiple;
	void function(GtkRecentChooser* chooser, gboolean localOnly)gtk_recent_chooser_set_local_only;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_local_only;
	void function(GtkRecentChooser* chooser, gint limit)gtk_recent_chooser_set_limit;
	gint function(GtkRecentChooser* chooser)gtk_recent_chooser_get_limit;
	void function(GtkRecentChooser* chooser, gboolean showTips)gtk_recent_chooser_set_show_tips;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_show_tips;
	void function(GtkRecentChooser* chooser, gboolean showNumbers)gtk_recent_chooser_set_show_numbers;
	gboolean function(GtkRecentChooser* chooser)gtk_recent_chooser_get_show_numbers;
	void function(GtkRecentChooser* chooser, GtkRecentSortType sortType)gtk_recent_chooser_set_sort_type;
	GtkRecentSortType function(GtkRecentChooser* chooser)gtk_recent_chooser_get_sort_type;
	void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, gpointer sortData, GDestroyNotify dataDestroy)gtk_recent_chooser_set_sort_func;
	gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error)gtk_recent_chooser_set_current_uri;
	gchar* function(GtkRecentChooser* chooser)gtk_recent_chooser_get_current_uri;
	GtkRecentInfo* function(GtkRecentChooser* chooser)gtk_recent_chooser_get_current_item;
	gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error)gtk_recent_chooser_select_uri;
	void function(GtkRecentChooser* chooser, gchar* uri)gtk_recent_chooser_unselect_uri;
	void function(GtkRecentChooser* chooser)gtk_recent_chooser_select_all;
	void function(GtkRecentChooser* chooser)gtk_recent_chooser_unselect_all;
	GList* function(GtkRecentChooser* chooser)gtk_recent_chooser_get_items;
	gchar** function(GtkRecentChooser* chooser, gsize* length)gtk_recent_chooser_get_uris;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter)gtk_recent_chooser_add_filter;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter)gtk_recent_chooser_remove_filter;
	GSList* function(GtkRecentChooser* chooser)gtk_recent_chooser_list_filters;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter)gtk_recent_chooser_set_filter;
	GtkRecentFilter* function(GtkRecentChooser* chooser)gtk_recent_chooser_get_filter;
	
	// gtk.RecentChooserDialog
	
	GtkWidget* function(gchar* title, GtkWindow* parent, gchar* firstButtonText, ... )gtk_recent_chooser_dialog_new;
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkRecentManager* manager, gchar* firstButtonText, ... )gtk_recent_chooser_dialog_new_for_manager;
	
	// gtk.RecentChooserMenu
	
	GtkWidget* function()gtk_recent_chooser_menu_new;
	GtkWidget* function(GtkRecentManager* manager)gtk_recent_chooser_menu_new_for_manager;
	gboolean function(GtkRecentChooserMenu* menu)gtk_recent_chooser_menu_get_show_numbers;
	void function(GtkRecentChooserMenu* menu, gboolean showNumbers)gtk_recent_chooser_menu_set_show_numbers;
	
	// gtk.RecentChooserWidget
	
	GtkWidget* function()gtk_recent_chooser_widget_new;
	GtkWidget* function(GtkRecentManager* manager)gtk_recent_chooser_widget_new_for_manager;
	
	// gtk.RecentFilter
	
	GtkRecentFilter* function()gtk_recent_filter_new;
	gchar* function(GtkRecentFilter* filter)gtk_recent_filter_get_name;
	void function(GtkRecentFilter* filter, gchar* name)gtk_recent_filter_set_name;
	void function(GtkRecentFilter* filter, gchar* mimeType)gtk_recent_filter_add_mime_type;
	void function(GtkRecentFilter* filter, gchar* pattern)gtk_recent_filter_add_pattern;
	void function(GtkRecentFilter* filter)gtk_recent_filter_add_pixbuf_formats;
	void function(GtkRecentFilter* filter, gchar* application)gtk_recent_filter_add_application;
	void function(GtkRecentFilter* filter, gchar* group)gtk_recent_filter_add_group;
	void function(GtkRecentFilter* filter, gint days)gtk_recent_filter_add_age;
	void function(GtkRecentFilter* filter, GtkRecentFilterFlags needed, GtkRecentFilterFunc func, gpointer data, GDestroyNotify dataDestroy)gtk_recent_filter_add_custom;
	GtkRecentFilterFlags function(GtkRecentFilter* filter)gtk_recent_filter_get_needed;
	gboolean function(GtkRecentFilter* filter, GtkRecentFilterInfo* filterInfo)gtk_recent_filter_filter;
	
	// gtk.BuildableT
	
	
	// gtk.BuildableT
	
	void function(GtkBuildable* buildable, gchar* name)gtk_buildable_set_name;
	gchar* function(GtkBuildable* buildable)gtk_buildable_get_name;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* type)gtk_buildable_add_child;
	void function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name, GValue* value)gtk_buildable_set_buildable_property;
	GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name)gtk_buildable_construct_child;
	gboolean function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, GMarkupParser* parser, gpointer* data)gtk_buildable_custom_tag_start;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, gpointer* data)gtk_buildable_custom_tag_end;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, gpointer data)gtk_buildable_custom_finished;
	void function(GtkBuildable* buildable, GtkBuilder* builder)gtk_buildable_parser_finished;
	GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* childname)gtk_buildable_get_internal_child;
	
	// gtk.Builder
	
	GtkBuilder* function()gtk_builder_new;
	guint function(GtkBuilder* builder, gchar* filename, GError** error)gtk_builder_add_from_file;
	guint function(GtkBuilder* builder, gchar* buffer, gsize length, GError** error)gtk_builder_add_from_string;
	GObject* function(GtkBuilder* builder, gchar* name)gtk_builder_get_object;
	GSList* function(GtkBuilder* builder)gtk_builder_get_objects;
	void function(GtkBuilder* builder, gpointer userData)gtk_builder_connect_signals;
	void function(GtkBuilder* builder, GtkBuilderConnectFunc func, gpointer userData)gtk_builder_connect_signals_full;
	void function(GtkBuilder* builder, gchar* domain)gtk_builder_set_translation_domain;
	gchar* function(GtkBuilder* builder)gtk_builder_get_translation_domain;
	GType function(GtkBuilder* builder, char* typeName)gtk_builder_get_type_from_name;
	gboolean function(GtkBuilder* builder, GParamSpec* pspec, gchar* string, GValue* value, GError** error)gtk_builder_value_from_string;
	gboolean function(GtkBuilder* builder, GType type, gchar* string, GValue* value, GError** error)gtk_builder_value_from_string_type;
	
	// gtk.FileSelection
	
	GtkWidget* function(gchar* title)gtk_file_selection_new;
	void function(GtkFileSelection* filesel, gchar* filename)gtk_file_selection_set_filename;
	gchar* function(GtkFileSelection* filesel)gtk_file_selection_get_filename;
	void function(GtkFileSelection* filesel, gchar* pattern)gtk_file_selection_complete;
	void function(GtkFileSelection* filesel)gtk_file_selection_show_fileop_buttons;
	void function(GtkFileSelection* filesel)gtk_file_selection_hide_fileop_buttons;
	gchar** function(GtkFileSelection* filesel)gtk_file_selection_get_selections;
	void function(GtkFileSelection* filesel, gboolean selectMultiple)gtk_file_selection_set_select_multiple;
	gboolean function(GtkFileSelection* filesel)gtk_file_selection_get_select_multiple;
	
	// gtk.ItemFactory
	
	GtkItemFactory* function(GType containerType, gchar* path, GtkAccelGroup* accelGroup)gtk_item_factory_new;
	void function(GtkItemFactory* ifactory, GType containerType, gchar* path, GtkAccelGroup* accelGroup)gtk_item_factory_construct;
	void function(GtkWidget* accelWidget, gchar* fullPath, GtkAccelGroup* accelGroup, guint keyval, GdkModifierType modifiers)gtk_item_factory_add_foreign;
	GtkItemFactory* function(GtkWidget* widget)gtk_item_factory_from_widget;
	gchar* function(GtkWidget* widget)gtk_item_factory_path_from_widget;
	GtkWidget* function(GtkItemFactory* ifactory, gchar* path)gtk_item_factory_get_item;
	GtkWidget* function(GtkItemFactory* ifactory, gchar* path)gtk_item_factory_get_widget;
	GtkWidget* function(GtkItemFactory* ifactory, guint action)gtk_item_factory_get_widget_by_action;
	GtkWidget* function(GtkItemFactory* ifactory, guint action)gtk_item_factory_get_item_by_action;
	void function(GtkItemFactory* ifactory, GtkItemFactoryEntry* entry, gpointer callbackData, guint callbackType)gtk_item_factory_create_item;
	void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries, gpointer callbackData)gtk_item_factory_create_items;
	void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries, gpointer callbackData, guint callbackType)gtk_item_factory_create_items_ac;
	void function(GtkItemFactory* ifactory, gchar* path)gtk_item_factory_delete_item;
	void function(GtkItemFactory* ifactory, GtkItemFactoryEntry* entry)gtk_item_factory_delete_entry;
	void function(GtkItemFactory* ifactory, guint nEntries, GtkItemFactoryEntry* entries)gtk_item_factory_delete_entries;
	void function(GtkItemFactory* ifactory, guint x, guint y, guint mouseButton, guint32 time)gtk_item_factory_popup;
	void function(GtkItemFactory* ifactory, gpointer popupData, GtkDestroyNotify destroy, guint x, guint y, guint mouseButton, guint32 time)gtk_item_factory_popup_with_data;
	gpointer function(GtkItemFactory* ifactory)gtk_item_factory_popup_data;
	gpointer function(GtkWidget* widget)gtk_item_factory_popup_data_from_widget;
	GtkItemFactory* function(gchar* path)gtk_item_factory_from_path;
	void function(gchar* ifactoryPath, gchar* path)gtk_item_factories_path_delete;
	void function(GtkItemFactory* ifactory, GtkTranslateFunc func, gpointer data, GtkDestroyNotify notify)gtk_item_factory_set_translate_func;
	
	// gtk.Tooltips
	
	GtkTooltips* function()gtk_tooltips_new;
	void function(GtkTooltips* tooltips)gtk_tooltips_enable;
	void function(GtkTooltips* tooltips)gtk_tooltips_disable;
	void function(GtkTooltips* tooltips, guint delay)gtk_tooltips_set_delay;
	void function(GtkTooltips* tooltips, GtkWidget* widget, gchar* tipText, gchar* tipPrivate)gtk_tooltips_set_tip;
	GtkTooltipsData* function(GtkWidget* widget)gtk_tooltips_data_get;
	void function(GtkTooltips* tooltips)gtk_tooltips_force_window;
	gboolean function(GtkWindow* tipWindow, GtkTooltips** tooltips, GtkWidget** currentWidget)gtk_tooltips_get_info_from_tip_window;
	
	// gtk.Progress
	
	void function(GtkProgress* progress, gboolean showText)gtk_progress_set_show_text;
	void function(GtkProgress* progress, gfloat xAlign, gfloat yAlign)gtk_progress_set_text_alignment;
	void function(GtkProgress* progress, gchar* format)gtk_progress_set_format_string;
	void function(GtkProgress* progress, GtkAdjustment* adjustment)gtk_progress_set_adjustment;
	void function(GtkProgress* progress, gdouble percentage)gtk_progress_set_percentage;
	void function(GtkProgress* progress, gdouble value)gtk_progress_set_value;
	gdouble function(GtkProgress* progress)gtk_progress_get_value;
	void function(GtkProgress* progress, gboolean activityMode)gtk_progress_set_activity_mode;
	gchar* function(GtkProgress* progress)gtk_progress_get_current_text;
	gchar* function(GtkProgress* progress, gdouble value)gtk_progress_get_text_from_value;
	gdouble function(GtkProgress* progress)gtk_progress_get_current_percentage;
	gdouble function(GtkProgress* progress, gdouble value)gtk_progress_get_percentage_from_value;
	void function(GtkProgress* progress, gdouble value, gdouble hmin, gdouble max)gtk_progress_configure;


}

Symbol[] gtkLinks = 
[

	{ "gtk_set_locale",  cast(void**)& gtk_set_locale},
	{ "gtk_disable_setlocale",  cast(void**)& gtk_disable_setlocale},
	{ "gtk_get_default_language",  cast(void**)& gtk_get_default_language},
	{ "gtk_parse_args",  cast(void**)& gtk_parse_args},
	{ "gtk_init",  cast(void**)& gtk_init},
	{ "gtk_init_check",  cast(void**)& gtk_init_check},
	{ "gtk_init_with_args",  cast(void**)& gtk_init_with_args},
	{ "gtk_get_option_group",  cast(void**)& gtk_get_option_group},
	{ "gtk_exit",  cast(void**)& gtk_exit},
	{ "gtk_events_pending",  cast(void**)& gtk_events_pending},
	{ "gtk_main",  cast(void**)& gtk_main},
	{ "gtk_main_level",  cast(void**)& gtk_main_level},
	{ "gtk_main_quit",  cast(void**)& gtk_main_quit},
	{ "gtk_main_iteration",  cast(void**)& gtk_main_iteration},
	{ "gtk_main_iteration_do",  cast(void**)& gtk_main_iteration_do},
	{ "gtk_main_do_event",  cast(void**)& gtk_main_do_event},
	{ "gtk_grab_add",  cast(void**)& gtk_grab_add},
	{ "gtk_grab_get_current",  cast(void**)& gtk_grab_get_current},
	{ "gtk_grab_remove",  cast(void**)& gtk_grab_remove},
	{ "gtk_init_add",  cast(void**)& gtk_init_add},
	{ "gtk_quit_add_destroy",  cast(void**)& gtk_quit_add_destroy},
	{ "gtk_quit_add",  cast(void**)& gtk_quit_add},
	{ "gtk_quit_add_full",  cast(void**)& gtk_quit_add_full},
	{ "gtk_quit_remove",  cast(void**)& gtk_quit_remove},
	{ "gtk_quit_remove_by_data",  cast(void**)& gtk_quit_remove_by_data},
	{ "gtk_input_add_full",  cast(void**)& gtk_input_add_full},
	{ "gtk_input_remove",  cast(void**)& gtk_input_remove},
	{ "gtk_key_snooper_install",  cast(void**)& gtk_key_snooper_install},
	{ "gtk_key_snooper_remove",  cast(void**)& gtk_key_snooper_remove},
	{ "gtk_get_current_event",  cast(void**)& gtk_get_current_event},
	{ "gtk_get_current_event_time",  cast(void**)& gtk_get_current_event_time},
	{ "gtk_get_current_event_state",  cast(void**)& gtk_get_current_event_state},
	{ "gtk_get_event_widget",  cast(void**)& gtk_get_event_widget},
	{ "gtk_propagate_event",  cast(void**)& gtk_propagate_event},
	{ "gtk_timeout_add_full",  cast(void**)& gtk_timeout_add_full},
	{ "gtk_timeout_add",  cast(void**)& gtk_timeout_add},
	{ "gtk_timeout_remove",  cast(void**)& gtk_timeout_remove},
	{ "gtk_idle_add",  cast(void**)& gtk_idle_add},
	{ "gtk_idle_add_priority",  cast(void**)& gtk_idle_add_priority},
	{ "gtk_idle_add_full",  cast(void**)& gtk_idle_add_full},
	{ "gtk_idle_remove",  cast(void**)& gtk_idle_remove},
	{ "gtk_idle_remove_by_data",  cast(void**)& gtk_idle_remove_by_data},
	{ "gtk_accel_group_new",  cast(void**)& gtk_accel_group_new},
	{ "gtk_accel_group_connect",  cast(void**)& gtk_accel_group_connect},
	{ "gtk_accel_group_connect_by_path",  cast(void**)& gtk_accel_group_connect_by_path},
	{ "gtk_accel_group_disconnect",  cast(void**)& gtk_accel_group_disconnect},
	{ "gtk_accel_group_disconnect_key",  cast(void**)& gtk_accel_group_disconnect_key},
	{ "gtk_accel_group_query",  cast(void**)& gtk_accel_group_query},
	{ "gtk_accel_group_activate",  cast(void**)& gtk_accel_group_activate},
	{ "gtk_accel_group_lock",  cast(void**)& gtk_accel_group_lock},
	{ "gtk_accel_group_unlock",  cast(void**)& gtk_accel_group_unlock},
	{ "gtk_accel_group_from_accel_closure",  cast(void**)& gtk_accel_group_from_accel_closure},
	{ "gtk_accel_groups_activate",  cast(void**)& gtk_accel_groups_activate},
	{ "gtk_accel_groups_from_object",  cast(void**)& gtk_accel_groups_from_object},
	{ "gtk_accel_group_find",  cast(void**)& gtk_accel_group_find},
	{ "gtk_accelerator_valid",  cast(void**)& gtk_accelerator_valid},
	{ "gtk_accelerator_parse",  cast(void**)& gtk_accelerator_parse},
	{ "gtk_accelerator_name",  cast(void**)& gtk_accelerator_name},
	{ "gtk_accelerator_get_label",  cast(void**)& gtk_accelerator_get_label},
	{ "gtk_accelerator_set_default_mod_mask",  cast(void**)& gtk_accelerator_set_default_mod_mask},
	{ "gtk_accelerator_get_default_mod_mask",  cast(void**)& gtk_accelerator_get_default_mod_mask},
	{ "gtk_accel_map_add_entry",  cast(void**)& gtk_accel_map_add_entry},
	{ "gtk_accel_map_lookup_entry",  cast(void**)& gtk_accel_map_lookup_entry},
	{ "gtk_accel_map_change_entry",  cast(void**)& gtk_accel_map_change_entry},
	{ "gtk_accel_map_load",  cast(void**)& gtk_accel_map_load},
	{ "gtk_accel_map_save",  cast(void**)& gtk_accel_map_save},
	{ "gtk_accel_map_foreach",  cast(void**)& gtk_accel_map_foreach},
	{ "gtk_accel_map_load_fd",  cast(void**)& gtk_accel_map_load_fd},
	{ "gtk_accel_map_save_fd",  cast(void**)& gtk_accel_map_save_fd},
	{ "gtk_accel_map_load_scanner",  cast(void**)& gtk_accel_map_load_scanner},
	{ "gtk_accel_map_add_filter",  cast(void**)& gtk_accel_map_add_filter},
	{ "gtk_accel_map_foreach_unfiltered",  cast(void**)& gtk_accel_map_foreach_unfiltered},
	{ "gtk_accel_map_get",  cast(void**)& gtk_accel_map_get},
	{ "gtk_accel_map_lock_path",  cast(void**)& gtk_accel_map_lock_path},
	{ "gtk_accel_map_unlock_path",  cast(void**)& gtk_accel_map_unlock_path},
	{ "gtk_clipboard_get",  cast(void**)& gtk_clipboard_get},
	{ "gtk_clipboard_get_for_display",  cast(void**)& gtk_clipboard_get_for_display},
	{ "gtk_clipboard_get_display",  cast(void**)& gtk_clipboard_get_display},
	{ "gtk_clipboard_set_with_data",  cast(void**)& gtk_clipboard_set_with_data},
	{ "gtk_clipboard_set_with_owner",  cast(void**)& gtk_clipboard_set_with_owner},
	{ "gtk_clipboard_get_owner",  cast(void**)& gtk_clipboard_get_owner},
	{ "gtk_clipboard_clear",  cast(void**)& gtk_clipboard_clear},
	{ "gtk_clipboard_set_text",  cast(void**)& gtk_clipboard_set_text},
	{ "gtk_clipboard_set_image",  cast(void**)& gtk_clipboard_set_image},
	{ "gtk_clipboard_request_contents",  cast(void**)& gtk_clipboard_request_contents},
	{ "gtk_clipboard_request_text",  cast(void**)& gtk_clipboard_request_text},
	{ "gtk_clipboard_request_image",  cast(void**)& gtk_clipboard_request_image},
	{ "gtk_clipboard_request_targets",  cast(void**)& gtk_clipboard_request_targets},
	{ "gtk_clipboard_request_rich_text",  cast(void**)& gtk_clipboard_request_rich_text},
	{ "gtk_clipboard_wait_for_contents",  cast(void**)& gtk_clipboard_wait_for_contents},
	{ "gtk_clipboard_wait_for_text",  cast(void**)& gtk_clipboard_wait_for_text},
	{ "gtk_clipboard_wait_for_image",  cast(void**)& gtk_clipboard_wait_for_image},
	{ "gtk_clipboard_wait_for_rich_text",  cast(void**)& gtk_clipboard_wait_for_rich_text},
	{ "gtk_clipboard_wait_is_text_available",  cast(void**)& gtk_clipboard_wait_is_text_available},
	{ "gtk_clipboard_wait_is_image_available",  cast(void**)& gtk_clipboard_wait_is_image_available},
	{ "gtk_clipboard_wait_is_rich_text_available",  cast(void**)& gtk_clipboard_wait_is_rich_text_available},
	{ "gtk_clipboard_wait_for_targets",  cast(void**)& gtk_clipboard_wait_for_targets},
	{ "gtk_clipboard_wait_is_target_available",  cast(void**)& gtk_clipboard_wait_is_target_available},
	{ "gtk_clipboard_set_can_store",  cast(void**)& gtk_clipboard_set_can_store},
	{ "gtk_clipboard_store",  cast(void**)& gtk_clipboard_store},
	{ "gtk_drag_dest_set",  cast(void**)& gtk_drag_dest_set},
	{ "gtk_drag_dest_set_proxy",  cast(void**)& gtk_drag_dest_set_proxy},
	{ "gtk_drag_dest_unset",  cast(void**)& gtk_drag_dest_unset},
	{ "gtk_drag_dest_find_target",  cast(void**)& gtk_drag_dest_find_target},
	{ "gtk_drag_dest_get_target_list",  cast(void**)& gtk_drag_dest_get_target_list},
	{ "gtk_drag_dest_set_target_list",  cast(void**)& gtk_drag_dest_set_target_list},
	{ "gtk_drag_dest_add_text_targets",  cast(void**)& gtk_drag_dest_add_text_targets},
	{ "gtk_drag_dest_add_image_targets",  cast(void**)& gtk_drag_dest_add_image_targets},
	{ "gtk_drag_dest_add_uri_targets",  cast(void**)& gtk_drag_dest_add_uri_targets},
	{ "gtk_drag_dest_set_track_motion",  cast(void**)& gtk_drag_dest_set_track_motion},
	{ "gtk_drag_dest_get_track_motion",  cast(void**)& gtk_drag_dest_get_track_motion},
	{ "gtk_drag_finish",  cast(void**)& gtk_drag_finish},
	{ "gtk_drag_get_data",  cast(void**)& gtk_drag_get_data},
	{ "gtk_drag_get_source_widget",  cast(void**)& gtk_drag_get_source_widget},
	{ "gtk_drag_highlight",  cast(void**)& gtk_drag_highlight},
	{ "gtk_drag_unhighlight",  cast(void**)& gtk_drag_unhighlight},
	{ "gtk_drag_begin",  cast(void**)& gtk_drag_begin},
	{ "gtk_drag_set_icon_widget",  cast(void**)& gtk_drag_set_icon_widget},
	{ "gtk_drag_set_icon_pixmap",  cast(void**)& gtk_drag_set_icon_pixmap},
	{ "gtk_drag_set_icon_pixbuf",  cast(void**)& gtk_drag_set_icon_pixbuf},
	{ "gtk_drag_set_icon_stock",  cast(void**)& gtk_drag_set_icon_stock},
	{ "gtk_drag_set_icon_name",  cast(void**)& gtk_drag_set_icon_name},
	{ "gtk_drag_set_icon_default",  cast(void**)& gtk_drag_set_icon_default},
	{ "gtk_drag_set_default_icon",  cast(void**)& gtk_drag_set_default_icon},
	{ "gtk_drag_check_threshold",  cast(void**)& gtk_drag_check_threshold},
	{ "gtk_drag_source_set",  cast(void**)& gtk_drag_source_set},
	{ "gtk_drag_source_set_icon",  cast(void**)& gtk_drag_source_set_icon},
	{ "gtk_drag_source_set_icon_pixbuf",  cast(void**)& gtk_drag_source_set_icon_pixbuf},
	{ "gtk_drag_source_set_icon_stock",  cast(void**)& gtk_drag_source_set_icon_stock},
	{ "gtk_drag_source_set_icon_name",  cast(void**)& gtk_drag_source_set_icon_name},
	{ "gtk_drag_source_unset",  cast(void**)& gtk_drag_source_unset},
	{ "gtk_drag_source_set_target_list",  cast(void**)& gtk_drag_source_set_target_list},
	{ "gtk_drag_source_get_target_list",  cast(void**)& gtk_drag_source_get_target_list},
	{ "gtk_drag_source_add_text_targets",  cast(void**)& gtk_drag_source_add_text_targets},
	{ "gtk_drag_source_add_image_targets",  cast(void**)& gtk_drag_source_add_image_targets},
	{ "gtk_drag_source_add_uri_targets",  cast(void**)& gtk_drag_source_add_uri_targets},
	{ "gtk_icon_theme_new",  cast(void**)& gtk_icon_theme_new},
	{ "gtk_icon_theme_get_default",  cast(void**)& gtk_icon_theme_get_default},
	{ "gtk_icon_theme_get_for_screen",  cast(void**)& gtk_icon_theme_get_for_screen},
	{ "gtk_icon_theme_set_screen",  cast(void**)& gtk_icon_theme_set_screen},
	{ "gtk_icon_theme_set_search_path",  cast(void**)& gtk_icon_theme_set_search_path},
	{ "gtk_icon_theme_get_search_path",  cast(void**)& gtk_icon_theme_get_search_path},
	{ "gtk_icon_theme_append_search_path",  cast(void**)& gtk_icon_theme_append_search_path},
	{ "gtk_icon_theme_prepend_search_path",  cast(void**)& gtk_icon_theme_prepend_search_path},
	{ "gtk_icon_theme_set_custom_theme",  cast(void**)& gtk_icon_theme_set_custom_theme},
	{ "gtk_icon_theme_has_icon",  cast(void**)& gtk_icon_theme_has_icon},
	{ "gtk_icon_theme_lookup_icon",  cast(void**)& gtk_icon_theme_lookup_icon},
	{ "gtk_icon_theme_choose_icon",  cast(void**)& gtk_icon_theme_choose_icon},
	{ "gtk_icon_theme_load_icon",  cast(void**)& gtk_icon_theme_load_icon},
	{ "gtk_icon_theme_list_contexts",  cast(void**)& gtk_icon_theme_list_contexts},
	{ "gtk_icon_theme_list_icons",  cast(void**)& gtk_icon_theme_list_icons},
	{ "gtk_icon_theme_get_icon_sizes",  cast(void**)& gtk_icon_theme_get_icon_sizes},
	{ "gtk_icon_theme_get_example_icon_name",  cast(void**)& gtk_icon_theme_get_example_icon_name},
	{ "gtk_icon_theme_rescan_if_needed",  cast(void**)& gtk_icon_theme_rescan_if_needed},
	{ "gtk_icon_theme_add_builtin_icon",  cast(void**)& gtk_icon_theme_add_builtin_icon},
	{ "gtk_icon_info_copy",  cast(void**)& gtk_icon_info_copy},
	{ "gtk_icon_info_free",  cast(void**)& gtk_icon_info_free},
	{ "gtk_icon_info_get_base_size",  cast(void**)& gtk_icon_info_get_base_size},
	{ "gtk_icon_info_get_filename",  cast(void**)& gtk_icon_info_get_filename},
	{ "gtk_icon_info_get_builtin_pixbuf",  cast(void**)& gtk_icon_info_get_builtin_pixbuf},
	{ "gtk_icon_info_load_icon",  cast(void**)& gtk_icon_info_load_icon},
	{ "gtk_icon_info_set_raw_coordinates",  cast(void**)& gtk_icon_info_set_raw_coordinates},
	{ "gtk_icon_info_get_embedded_rect",  cast(void**)& gtk_icon_info_get_embedded_rect},
	{ "gtk_icon_info_get_attach_points",  cast(void**)& gtk_icon_info_get_attach_points},
	{ "gtk_icon_info_get_display_name",  cast(void**)& gtk_icon_info_get_display_name},
	{ "gtk_stock_add",  cast(void**)& gtk_stock_add},
	{ "gtk_stock_add_static",  cast(void**)& gtk_stock_add_static},
	{ "gtk_stock_item_copy",  cast(void**)& gtk_stock_item_copy},
	{ "gtk_stock_item_free",  cast(void**)& gtk_stock_item_free},
	{ "gtk_stock_list_ids",  cast(void**)& gtk_stock_list_ids},
	{ "gtk_stock_lookup",  cast(void**)& gtk_stock_lookup},
	{ "gtk_stock_set_translate_func",  cast(void**)& gtk_stock_set_translate_func},
	{ "gtk_icon_source_copy",  cast(void**)& gtk_icon_source_copy},
	{ "gtk_icon_source_free",  cast(void**)& gtk_icon_source_free},
	{ "gtk_icon_source_get_direction",  cast(void**)& gtk_icon_source_get_direction},
	{ "gtk_icon_source_get_direction_wildcarded",  cast(void**)& gtk_icon_source_get_direction_wildcarded},
	{ "gtk_icon_source_get_filename",  cast(void**)& gtk_icon_source_get_filename},
	{ "gtk_icon_source_get_pixbuf",  cast(void**)& gtk_icon_source_get_pixbuf},
	{ "gtk_icon_source_get_icon_name",  cast(void**)& gtk_icon_source_get_icon_name},
	{ "gtk_icon_source_get_size",  cast(void**)& gtk_icon_source_get_size},
	{ "gtk_icon_source_get_size_wildcarded",  cast(void**)& gtk_icon_source_get_size_wildcarded},
	{ "gtk_icon_source_get_state",  cast(void**)& gtk_icon_source_get_state},
	{ "gtk_icon_source_get_state_wildcarded",  cast(void**)& gtk_icon_source_get_state_wildcarded},
	{ "gtk_icon_source_new",  cast(void**)& gtk_icon_source_new},
	{ "gtk_icon_source_set_direction",  cast(void**)& gtk_icon_source_set_direction},
	{ "gtk_icon_source_set_direction_wildcarded",  cast(void**)& gtk_icon_source_set_direction_wildcarded},
	{ "gtk_icon_source_set_filename",  cast(void**)& gtk_icon_source_set_filename},
	{ "gtk_icon_source_set_pixbuf",  cast(void**)& gtk_icon_source_set_pixbuf},
	{ "gtk_icon_source_set_icon_name",  cast(void**)& gtk_icon_source_set_icon_name},
	{ "gtk_icon_source_set_size",  cast(void**)& gtk_icon_source_set_size},
	{ "gtk_icon_source_set_size_wildcarded",  cast(void**)& gtk_icon_source_set_size_wildcarded},
	{ "gtk_icon_source_set_state",  cast(void**)& gtk_icon_source_set_state},
	{ "gtk_icon_source_set_state_wildcarded",  cast(void**)& gtk_icon_source_set_state_wildcarded},
	{ "gtk_icon_factory_add",  cast(void**)& gtk_icon_factory_add},
	{ "gtk_icon_factory_add_default",  cast(void**)& gtk_icon_factory_add_default},
	{ "gtk_icon_factory_lookup",  cast(void**)& gtk_icon_factory_lookup},
	{ "gtk_icon_factory_lookup_default",  cast(void**)& gtk_icon_factory_lookup_default},
	{ "gtk_icon_factory_new",  cast(void**)& gtk_icon_factory_new},
	{ "gtk_icon_factory_remove_default",  cast(void**)& gtk_icon_factory_remove_default},
	{ "gtk_icon_set_add_source",  cast(void**)& gtk_icon_set_add_source},
	{ "gtk_icon_set_copy",  cast(void**)& gtk_icon_set_copy},
	{ "gtk_icon_set_new",  cast(void**)& gtk_icon_set_new},
	{ "gtk_icon_set_new_from_pixbuf",  cast(void**)& gtk_icon_set_new_from_pixbuf},
	{ "gtk_icon_set_ref",  cast(void**)& gtk_icon_set_ref},
	{ "gtk_icon_set_render_icon",  cast(void**)& gtk_icon_set_render_icon},
	{ "gtk_icon_set_unref",  cast(void**)& gtk_icon_set_unref},
	{ "gtk_icon_set_get_sizes",  cast(void**)& gtk_icon_set_get_sizes},
	{ "gtk_icon_size_lookup",  cast(void**)& gtk_icon_size_lookup},
	{ "gtk_icon_size_lookup_for_settings",  cast(void**)& gtk_icon_size_lookup_for_settings},
	{ "gtk_icon_size_register",  cast(void**)& gtk_icon_size_register},
	{ "gtk_icon_size_register_alias",  cast(void**)& gtk_icon_size_register_alias},
	{ "gtk_icon_size_from_name",  cast(void**)& gtk_icon_size_from_name},
	{ "gtk_icon_size_get_name",  cast(void**)& gtk_icon_size_get_name},
	{ "gtk_rc_scanner_new",  cast(void**)& gtk_rc_scanner_new},
	{ "gtk_rc_get_style",  cast(void**)& gtk_rc_get_style},
	{ "gtk_rc_get_style_by_paths",  cast(void**)& gtk_rc_get_style_by_paths},
	{ "gtk_rc_add_widget_name_style",  cast(void**)& gtk_rc_add_widget_name_style},
	{ "gtk_rc_add_widget_class_style",  cast(void**)& gtk_rc_add_widget_class_style},
	{ "gtk_rc_add_class_style",  cast(void**)& gtk_rc_add_class_style},
	{ "gtk_rc_parse",  cast(void**)& gtk_rc_parse},
	{ "gtk_rc_parse_string",  cast(void**)& gtk_rc_parse_string},
	{ "gtk_rc_reparse_all",  cast(void**)& gtk_rc_reparse_all},
	{ "gtk_rc_reparse_all_for_settings",  cast(void**)& gtk_rc_reparse_all_for_settings},
	{ "gtk_rc_reset_styles",  cast(void**)& gtk_rc_reset_styles},
	{ "gtk_rc_add_default_file",  cast(void**)& gtk_rc_add_default_file},
	{ "gtk_rc_get_default_files",  cast(void**)& gtk_rc_get_default_files},
	{ "gtk_rc_set_default_files",  cast(void**)& gtk_rc_set_default_files},
	{ "gtk_rc_parse_color",  cast(void**)& gtk_rc_parse_color},
	{ "gtk_rc_parse_color_full",  cast(void**)& gtk_rc_parse_color_full},
	{ "gtk_rc_parse_state",  cast(void**)& gtk_rc_parse_state},
	{ "gtk_rc_parse_priority",  cast(void**)& gtk_rc_parse_priority},
	{ "gtk_rc_find_module_in_path",  cast(void**)& gtk_rc_find_module_in_path},
	{ "gtk_rc_find_pixmap_in_path",  cast(void**)& gtk_rc_find_pixmap_in_path},
	{ "gtk_rc_get_module_dir",  cast(void**)& gtk_rc_get_module_dir},
	{ "gtk_rc_get_im_module_path",  cast(void**)& gtk_rc_get_im_module_path},
	{ "gtk_rc_get_im_module_file",  cast(void**)& gtk_rc_get_im_module_file},
	{ "gtk_rc_get_theme_dir",  cast(void**)& gtk_rc_get_theme_dir},
	{ "gtk_rc_style_new",  cast(void**)& gtk_rc_style_new},
	{ "gtk_rc_style_copy",  cast(void**)& gtk_rc_style_copy},
	{ "gtk_rc_style_ref",  cast(void**)& gtk_rc_style_ref},
	{ "gtk_rc_style_unref",  cast(void**)& gtk_rc_style_unref},
	{ "gtk_settings_get_default",  cast(void**)& gtk_settings_get_default},
	{ "gtk_settings_get_for_screen",  cast(void**)& gtk_settings_get_for_screen},
	{ "gtk_settings_install_property",  cast(void**)& gtk_settings_install_property},
	{ "gtk_settings_install_property_parser",  cast(void**)& gtk_settings_install_property_parser},
	{ "gtk_rc_property_parse_color",  cast(void**)& gtk_rc_property_parse_color},
	{ "gtk_rc_property_parse_enum",  cast(void**)& gtk_rc_property_parse_enum},
	{ "gtk_rc_property_parse_flags",  cast(void**)& gtk_rc_property_parse_flags},
	{ "gtk_rc_property_parse_requisition",  cast(void**)& gtk_rc_property_parse_requisition},
	{ "gtk_rc_property_parse_border",  cast(void**)& gtk_rc_property_parse_border},
	{ "gtk_settings_set_property_value",  cast(void**)& gtk_settings_set_property_value},
	{ "gtk_settings_set_string_property",  cast(void**)& gtk_settings_set_string_property},
	{ "gtk_settings_set_long_property",  cast(void**)& gtk_settings_set_long_property},
	{ "gtk_settings_set_double_property",  cast(void**)& gtk_settings_set_double_property},
	{ "gtk_binding_entry_add_signall",  cast(void**)& gtk_binding_entry_add_signall},
	{ "gtk_binding_entry_clear",  cast(void**)& gtk_binding_entry_clear},
	{ "gtk_binding_parse_binding",  cast(void**)& gtk_binding_parse_binding},
	{ "gtk_binding_set_new",  cast(void**)& gtk_binding_set_new},
	{ "gtk_binding_set_by_class",  cast(void**)& gtk_binding_set_by_class},
	{ "gtk_binding_set_find",  cast(void**)& gtk_binding_set_find},
	{ "gtk_bindings_activate",  cast(void**)& gtk_bindings_activate},
	{ "gtk_bindings_activate_event",  cast(void**)& gtk_bindings_activate_event},
	{ "gtk_binding_set_activate",  cast(void**)& gtk_binding_set_activate},
	{ "gtk_binding_entry_add_signal",  cast(void**)& gtk_binding_entry_add_signal},
	{ "gtk_binding_entry_skip",  cast(void**)& gtk_binding_entry_skip},
	{ "gtk_binding_entry_remove",  cast(void**)& gtk_binding_entry_remove},
	{ "gtk_binding_set_add_path",  cast(void**)& gtk_binding_set_add_path},
	{ "gtk_gc_get",  cast(void**)& gtk_gc_get},
	{ "gtk_gc_release",  cast(void**)& gtk_gc_release},
	{ "gtk_style_new",  cast(void**)& gtk_style_new},
	{ "gtk_style_copy",  cast(void**)& gtk_style_copy},
	{ "gtk_style_attach",  cast(void**)& gtk_style_attach},
	{ "gtk_style_detach",  cast(void**)& gtk_style_detach},
	{ "gtk_style_ref",  cast(void**)& gtk_style_ref},
	{ "gtk_style_unref",  cast(void**)& gtk_style_unref},
	{ "gtk_style_set_background",  cast(void**)& gtk_style_set_background},
	{ "gtk_style_apply_default_background",  cast(void**)& gtk_style_apply_default_background},
	{ "gtk_style_lookup_color",  cast(void**)& gtk_style_lookup_color},
	{ "gtk_style_lookup_icon_set",  cast(void**)& gtk_style_lookup_icon_set},
	{ "gtk_style_render_icon",  cast(void**)& gtk_style_render_icon},
	{ "gtk_style_get_font",  cast(void**)& gtk_style_get_font},
	{ "gtk_style_set_font",  cast(void**)& gtk_style_set_font},
	{ "gtk_draw_hline",  cast(void**)& gtk_draw_hline},
	{ "gtk_draw_vline",  cast(void**)& gtk_draw_vline},
	{ "gtk_draw_shadow",  cast(void**)& gtk_draw_shadow},
	{ "gtk_draw_polygon",  cast(void**)& gtk_draw_polygon},
	{ "gtk_draw_arrow",  cast(void**)& gtk_draw_arrow},
	{ "gtk_draw_diamond",  cast(void**)& gtk_draw_diamond},
	{ "gtk_draw_string",  cast(void**)& gtk_draw_string},
	{ "gtk_draw_box",  cast(void**)& gtk_draw_box},
	{ "gtk_draw_box_gap",  cast(void**)& gtk_draw_box_gap},
	{ "gtk_draw_check",  cast(void**)& gtk_draw_check},
	{ "gtk_draw_extension",  cast(void**)& gtk_draw_extension},
	{ "gtk_draw_flat_box",  cast(void**)& gtk_draw_flat_box},
	{ "gtk_draw_focus",  cast(void**)& gtk_draw_focus},
	{ "gtk_draw_handle",  cast(void**)& gtk_draw_handle},
	{ "gtk_draw_option",  cast(void**)& gtk_draw_option},
	{ "gtk_draw_shadow_gap",  cast(void**)& gtk_draw_shadow_gap},
	{ "gtk_draw_slider",  cast(void**)& gtk_draw_slider},
	{ "gtk_draw_tab",  cast(void**)& gtk_draw_tab},
	{ "gtk_draw_expander",  cast(void**)& gtk_draw_expander},
	{ "gtk_draw_layout",  cast(void**)& gtk_draw_layout},
	{ "gtk_draw_resize_grip",  cast(void**)& gtk_draw_resize_grip},
	{ "gtk_paint_arrow",  cast(void**)& gtk_paint_arrow},
	{ "gtk_paint_box",  cast(void**)& gtk_paint_box},
	{ "gtk_paint_box_gap",  cast(void**)& gtk_paint_box_gap},
	{ "gtk_paint_check",  cast(void**)& gtk_paint_check},
	{ "gtk_paint_diamond",  cast(void**)& gtk_paint_diamond},
	{ "gtk_paint_extension",  cast(void**)& gtk_paint_extension},
	{ "gtk_paint_flat_box",  cast(void**)& gtk_paint_flat_box},
	{ "gtk_paint_focus",  cast(void**)& gtk_paint_focus},
	{ "gtk_paint_handle",  cast(void**)& gtk_paint_handle},
	{ "gtk_paint_hline",  cast(void**)& gtk_paint_hline},
	{ "gtk_paint_option",  cast(void**)& gtk_paint_option},
	{ "gtk_paint_polygon",  cast(void**)& gtk_paint_polygon},
	{ "gtk_paint_shadow",  cast(void**)& gtk_paint_shadow},
	{ "gtk_paint_shadow_gap",  cast(void**)& gtk_paint_shadow_gap},
	{ "gtk_paint_slider",  cast(void**)& gtk_paint_slider},
	{ "gtk_paint_string",  cast(void**)& gtk_paint_string},
	{ "gtk_paint_tab",  cast(void**)& gtk_paint_tab},
	{ "gtk_paint_vline",  cast(void**)& gtk_paint_vline},
	{ "gtk_paint_expander",  cast(void**)& gtk_paint_expander},
	{ "gtk_paint_layout",  cast(void**)& gtk_paint_layout},
	{ "gtk_paint_resize_grip",  cast(void**)& gtk_paint_resize_grip},
	{ "gtk_draw_insertion_cursor",  cast(void**)& gtk_draw_insertion_cursor},
	{ "gtk_border_copy",  cast(void**)& gtk_border_copy},
	{ "gtk_border_free",  cast(void**)& gtk_border_free},
	{ "gtk_target_list_new",  cast(void**)& gtk_target_list_new},
	{ "gtk_target_list_ref",  cast(void**)& gtk_target_list_ref},
	{ "gtk_target_list_unref",  cast(void**)& gtk_target_list_unref},
	{ "gtk_target_list_add",  cast(void**)& gtk_target_list_add},
	{ "gtk_target_list_add_table",  cast(void**)& gtk_target_list_add_table},
	{ "gtk_target_list_add_text_targets",  cast(void**)& gtk_target_list_add_text_targets},
	{ "gtk_target_list_add_image_targets",  cast(void**)& gtk_target_list_add_image_targets},
	{ "gtk_target_list_add_uri_targets",  cast(void**)& gtk_target_list_add_uri_targets},
	{ "gtk_target_list_add_rich_text_targets",  cast(void**)& gtk_target_list_add_rich_text_targets},
	{ "gtk_target_list_remove",  cast(void**)& gtk_target_list_remove},
	{ "gtk_target_list_find",  cast(void**)& gtk_target_list_find},
	{ "gtk_target_table_free",  cast(void**)& gtk_target_table_free},
	{ "gtk_target_table_new_from_list",  cast(void**)& gtk_target_table_new_from_list},
	{ "gtk_targets_include_image",  cast(void**)& gtk_targets_include_image},
	{ "gtk_targets_include_text",  cast(void**)& gtk_targets_include_text},
	{ "gtk_targets_include_uri",  cast(void**)& gtk_targets_include_uri},
	{ "gtk_targets_include_rich_text",  cast(void**)& gtk_targets_include_rich_text},
	{ "gtk_selection_owner_set",  cast(void**)& gtk_selection_owner_set},
	{ "gtk_selection_owner_set_for_display",  cast(void**)& gtk_selection_owner_set_for_display},
	{ "gtk_selection_add_target",  cast(void**)& gtk_selection_add_target},
	{ "gtk_selection_add_targets",  cast(void**)& gtk_selection_add_targets},
	{ "gtk_selection_clear_targets",  cast(void**)& gtk_selection_clear_targets},
	{ "gtk_selection_convert",  cast(void**)& gtk_selection_convert},
	{ "gtk_selection_data_set",  cast(void**)& gtk_selection_data_set},
	{ "gtk_selection_data_set_text",  cast(void**)& gtk_selection_data_set_text},
	{ "gtk_selection_data_get_text",  cast(void**)& gtk_selection_data_get_text},
	{ "gtk_selection_data_set_pixbuf",  cast(void**)& gtk_selection_data_set_pixbuf},
	{ "gtk_selection_data_get_pixbuf",  cast(void**)& gtk_selection_data_get_pixbuf},
	{ "gtk_selection_data_set_uris",  cast(void**)& gtk_selection_data_set_uris},
	{ "gtk_selection_data_get_uris",  cast(void**)& gtk_selection_data_get_uris},
	{ "gtk_selection_data_get_targets",  cast(void**)& gtk_selection_data_get_targets},
	{ "gtk_selection_data_targets_include_image",  cast(void**)& gtk_selection_data_targets_include_image},
	{ "gtk_selection_data_targets_include_text",  cast(void**)& gtk_selection_data_targets_include_text},
	{ "gtk_selection_data_targets_include_uri",  cast(void**)& gtk_selection_data_targets_include_uri},
	{ "gtk_selection_data_targets_include_rich_text",  cast(void**)& gtk_selection_data_targets_include_rich_text},
	{ "gtk_selection_remove_all",  cast(void**)& gtk_selection_remove_all},
	{ "gtk_selection_clear",  cast(void**)& gtk_selection_clear},
	{ "gtk_selection_data_copy",  cast(void**)& gtk_selection_data_copy},
	{ "gtk_selection_data_free",  cast(void**)& gtk_selection_data_free},
	{ "gtk_check_version",  cast(void**)& gtk_check_version},
	{ "gtk_signal_new",  cast(void**)& gtk_signal_new},
	{ "gtk_signal_newv",  cast(void**)& gtk_signal_newv},
	{ "gtk_signal_emit",  cast(void**)& gtk_signal_emit},
	{ "gtk_signal_emit_by_name",  cast(void**)& gtk_signal_emit_by_name},
	{ "gtk_signal_emitv",  cast(void**)& gtk_signal_emitv},
	{ "gtk_signal_emitv_by_name",  cast(void**)& gtk_signal_emitv_by_name},
	{ "gtk_signal_emit_stop_by_name",  cast(void**)& gtk_signal_emit_stop_by_name},
	{ "gtk_signal_connect_full",  cast(void**)& gtk_signal_connect_full},
	{ "gtk_signal_connect_while_alive",  cast(void**)& gtk_signal_connect_while_alive},
	{ "gtk_signal_connect_object_while_alive",  cast(void**)& gtk_signal_connect_object_while_alive},
	{ "gtk_type_init",  cast(void**)& gtk_type_init},
	{ "gtk_type_unique",  cast(void**)& gtk_type_unique},
	{ "gtk_type_class",  cast(void**)& gtk_type_class},
	{ "gtk_type_new",  cast(void**)& gtk_type_new},
	{ "gtk_type_enum_get_values",  cast(void**)& gtk_type_enum_get_values},
	{ "gtk_type_flags_get_values",  cast(void**)& gtk_type_flags_get_values},
	{ "gtk_type_enum_find_value",  cast(void**)& gtk_type_enum_find_value},
	{ "gtk_type_flags_find_value",  cast(void**)& gtk_type_flags_find_value},
	{ "gtk_dialog_new",  cast(void**)& gtk_dialog_new},
	{ "gtk_dialog_new_with_buttons",  cast(void**)& gtk_dialog_new_with_buttons},
	{ "gtk_dialog_run",  cast(void**)& gtk_dialog_run},
	{ "gtk_dialog_response",  cast(void**)& gtk_dialog_response},
	{ "gtk_dialog_add_button",  cast(void**)& gtk_dialog_add_button},
	{ "gtk_dialog_add_buttons",  cast(void**)& gtk_dialog_add_buttons},
	{ "gtk_dialog_add_action_widget",  cast(void**)& gtk_dialog_add_action_widget},
	{ "gtk_dialog_get_has_separator",  cast(void**)& gtk_dialog_get_has_separator},
	{ "gtk_dialog_set_default_response",  cast(void**)& gtk_dialog_set_default_response},
	{ "gtk_dialog_set_has_separator",  cast(void**)& gtk_dialog_set_has_separator},
	{ "gtk_dialog_set_response_sensitive",  cast(void**)& gtk_dialog_set_response_sensitive},
	{ "gtk_dialog_get_response_for_widget",  cast(void**)& gtk_dialog_get_response_for_widget},
	{ "gtk_alternative_dialog_button_order",  cast(void**)& gtk_alternative_dialog_button_order},
	{ "gtk_dialog_set_alternative_button_order",  cast(void**)& gtk_dialog_set_alternative_button_order},
	{ "gtk_dialog_set_alternative_button_order_from_array",  cast(void**)& gtk_dialog_set_alternative_button_order_from_array},
	{ "gtk_invisible_new",  cast(void**)& gtk_invisible_new},
	{ "gtk_invisible_new_for_screen",  cast(void**)& gtk_invisible_new_for_screen},
	{ "gtk_invisible_set_screen",  cast(void**)& gtk_invisible_set_screen},
	{ "gtk_invisible_get_screen",  cast(void**)& gtk_invisible_get_screen},
	{ "gtk_message_dialog_new",  cast(void**)& gtk_message_dialog_new},
	{ "gtk_message_dialog_new_with_markup",  cast(void**)& gtk_message_dialog_new_with_markup},
	{ "gtk_message_dialog_set_markup",  cast(void**)& gtk_message_dialog_set_markup},
	{ "gtk_message_dialog_set_image",  cast(void**)& gtk_message_dialog_set_image},
	{ "gtk_message_dialog_format_secondary_text",  cast(void**)& gtk_message_dialog_format_secondary_text},
	{ "gtk_message_dialog_format_secondary_markup",  cast(void**)& gtk_message_dialog_format_secondary_markup},
	{ "gtk_window_new",  cast(void**)& gtk_window_new},
	{ "gtk_window_set_title",  cast(void**)& gtk_window_set_title},
	{ "gtk_window_set_wmclass",  cast(void**)& gtk_window_set_wmclass},
	{ "gtk_window_set_policy",  cast(void**)& gtk_window_set_policy},
	{ "gtk_window_set_resizable",  cast(void**)& gtk_window_set_resizable},
	{ "gtk_window_get_resizable",  cast(void**)& gtk_window_get_resizable},
	{ "gtk_window_add_accel_group",  cast(void**)& gtk_window_add_accel_group},
	{ "gtk_window_remove_accel_group",  cast(void**)& gtk_window_remove_accel_group},
	{ "gtk_window_activate_focus",  cast(void**)& gtk_window_activate_focus},
	{ "gtk_window_activate_default",  cast(void**)& gtk_window_activate_default},
	{ "gtk_window_set_modal",  cast(void**)& gtk_window_set_modal},
	{ "gtk_window_set_default_size",  cast(void**)& gtk_window_set_default_size},
	{ "gtk_window_set_geometry_hints",  cast(void**)& gtk_window_set_geometry_hints},
	{ "gtk_window_set_gravity",  cast(void**)& gtk_window_set_gravity},
	{ "gtk_window_get_gravity",  cast(void**)& gtk_window_get_gravity},
	{ "gtk_window_set_position",  cast(void**)& gtk_window_set_position},
	{ "gtk_window_set_transient_for",  cast(void**)& gtk_window_set_transient_for},
	{ "gtk_window_set_destroy_with_parent",  cast(void**)& gtk_window_set_destroy_with_parent},
	{ "gtk_window_set_screen",  cast(void**)& gtk_window_set_screen},
	{ "gtk_window_get_screen",  cast(void**)& gtk_window_get_screen},
	{ "gtk_window_is_active",  cast(void**)& gtk_window_is_active},
	{ "gtk_window_has_toplevel_focus",  cast(void**)& gtk_window_has_toplevel_focus},
	{ "gtk_window_list_toplevels",  cast(void**)& gtk_window_list_toplevels},
	{ "gtk_window_add_mnemonic",  cast(void**)& gtk_window_add_mnemonic},
	{ "gtk_window_remove_mnemonic",  cast(void**)& gtk_window_remove_mnemonic},
	{ "gtk_window_mnemonic_activate",  cast(void**)& gtk_window_mnemonic_activate},
	{ "gtk_window_activate_key",  cast(void**)& gtk_window_activate_key},
	{ "gtk_window_propagate_key_event",  cast(void**)& gtk_window_propagate_key_event},
	{ "gtk_window_get_focus",  cast(void**)& gtk_window_get_focus},
	{ "gtk_window_set_focus",  cast(void**)& gtk_window_set_focus},
	{ "gtk_window_set_default",  cast(void**)& gtk_window_set_default},
	{ "gtk_window_present",  cast(void**)& gtk_window_present},
	{ "gtk_window_present_with_time",  cast(void**)& gtk_window_present_with_time},
	{ "gtk_window_iconify",  cast(void**)& gtk_window_iconify},
	{ "gtk_window_deiconify",  cast(void**)& gtk_window_deiconify},
	{ "gtk_window_stick",  cast(void**)& gtk_window_stick},
	{ "gtk_window_unstick",  cast(void**)& gtk_window_unstick},
	{ "gtk_window_maximize",  cast(void**)& gtk_window_maximize},
	{ "gtk_window_unmaximize",  cast(void**)& gtk_window_unmaximize},
	{ "gtk_window_fullscreen",  cast(void**)& gtk_window_fullscreen},
	{ "gtk_window_unfullscreen",  cast(void**)& gtk_window_unfullscreen},
	{ "gtk_window_set_keep_above",  cast(void**)& gtk_window_set_keep_above},
	{ "gtk_window_set_keep_below",  cast(void**)& gtk_window_set_keep_below},
	{ "gtk_window_begin_resize_drag",  cast(void**)& gtk_window_begin_resize_drag},
	{ "gtk_window_begin_move_drag",  cast(void**)& gtk_window_begin_move_drag},
	{ "gtk_window_set_decorated",  cast(void**)& gtk_window_set_decorated},
	{ "gtk_window_set_deletable",  cast(void**)& gtk_window_set_deletable},
	{ "gtk_window_set_frame_dimensions",  cast(void**)& gtk_window_set_frame_dimensions},
	{ "gtk_window_set_has_frame",  cast(void**)& gtk_window_set_has_frame},
	{ "gtk_window_set_mnemonic_modifier",  cast(void**)& gtk_window_set_mnemonic_modifier},
	{ "gtk_window_set_role",  cast(void**)& gtk_window_set_role},
	{ "gtk_window_set_type_hint",  cast(void**)& gtk_window_set_type_hint},
	{ "gtk_window_set_skip_taskbar_hint",  cast(void**)& gtk_window_set_skip_taskbar_hint},
	{ "gtk_window_set_skip_pager_hint",  cast(void**)& gtk_window_set_skip_pager_hint},
	{ "gtk_window_set_urgency_hint",  cast(void**)& gtk_window_set_urgency_hint},
	{ "gtk_window_set_accept_focus",  cast(void**)& gtk_window_set_accept_focus},
	{ "gtk_window_set_focus_on_map",  cast(void**)& gtk_window_set_focus_on_map},
	{ "gtk_window_set_startup_id",  cast(void**)& gtk_window_set_startup_id},
	{ "gtk_window_get_decorated",  cast(void**)& gtk_window_get_decorated},
	{ "gtk_window_get_deletable",  cast(void**)& gtk_window_get_deletable},
	{ "gtk_window_get_default_icon_list",  cast(void**)& gtk_window_get_default_icon_list},
	{ "gtk_window_get_default_size",  cast(void**)& gtk_window_get_default_size},
	{ "gtk_window_get_destroy_with_parent",  cast(void**)& gtk_window_get_destroy_with_parent},
	{ "gtk_window_get_frame_dimensions",  cast(void**)& gtk_window_get_frame_dimensions},
	{ "gtk_window_get_has_frame",  cast(void**)& gtk_window_get_has_frame},
	{ "gtk_window_get_icon",  cast(void**)& gtk_window_get_icon},
	{ "gtk_window_get_icon_list",  cast(void**)& gtk_window_get_icon_list},
	{ "gtk_window_get_icon_name",  cast(void**)& gtk_window_get_icon_name},
	{ "gtk_window_get_mnemonic_modifier",  cast(void**)& gtk_window_get_mnemonic_modifier},
	{ "gtk_window_get_modal",  cast(void**)& gtk_window_get_modal},
	{ "gtk_window_get_position",  cast(void**)& gtk_window_get_position},
	{ "gtk_window_get_role",  cast(void**)& gtk_window_get_role},
	{ "gtk_window_get_size",  cast(void**)& gtk_window_get_size},
	{ "gtk_window_get_title",  cast(void**)& gtk_window_get_title},
	{ "gtk_window_get_transient_for",  cast(void**)& gtk_window_get_transient_for},
	{ "gtk_window_get_type_hint",  cast(void**)& gtk_window_get_type_hint},
	{ "gtk_window_get_skip_taskbar_hint",  cast(void**)& gtk_window_get_skip_taskbar_hint},
	{ "gtk_window_get_skip_pager_hint",  cast(void**)& gtk_window_get_skip_pager_hint},
	{ "gtk_window_get_urgency_hint",  cast(void**)& gtk_window_get_urgency_hint},
	{ "gtk_window_get_accept_focus",  cast(void**)& gtk_window_get_accept_focus},
	{ "gtk_window_get_focus_on_map",  cast(void**)& gtk_window_get_focus_on_map},
	{ "gtk_window_get_group",  cast(void**)& gtk_window_get_group},
	{ "gtk_window_move",  cast(void**)& gtk_window_move},
	{ "gtk_window_parse_geometry",  cast(void**)& gtk_window_parse_geometry},
	{ "gtk_window_reshow_with_initial_size",  cast(void**)& gtk_window_reshow_with_initial_size},
	{ "gtk_window_resize",  cast(void**)& gtk_window_resize},
	{ "gtk_window_set_default_icon_list",  cast(void**)& gtk_window_set_default_icon_list},
	{ "gtk_window_set_default_icon",  cast(void**)& gtk_window_set_default_icon},
	{ "gtk_window_set_default_icon_from_file",  cast(void**)& gtk_window_set_default_icon_from_file},
	{ "gtk_window_set_default_icon_name",  cast(void**)& gtk_window_set_default_icon_name},
	{ "gtk_window_set_icon",  cast(void**)& gtk_window_set_icon},
	{ "gtk_window_set_icon_list",  cast(void**)& gtk_window_set_icon_list},
	{ "gtk_window_set_icon_from_file",  cast(void**)& gtk_window_set_icon_from_file},
	{ "gtk_window_set_icon_name",  cast(void**)& gtk_window_set_icon_name},
	{ "gtk_window_set_auto_startup_notification",  cast(void**)& gtk_window_set_auto_startup_notification},
	{ "gtk_window_get_opacity",  cast(void**)& gtk_window_get_opacity},
	{ "gtk_window_set_opacity",  cast(void**)& gtk_window_set_opacity},
	{ "gtk_window_group_new",  cast(void**)& gtk_window_group_new},
	{ "gtk_window_group_add_window",  cast(void**)& gtk_window_group_add_window},
	{ "gtk_window_group_remove_window",  cast(void**)& gtk_window_group_remove_window},
	{ "gtk_about_dialog_new",  cast(void**)& gtk_about_dialog_new},
	{ "gtk_about_dialog_get_name",  cast(void**)& gtk_about_dialog_get_name},
	{ "gtk_about_dialog_set_name",  cast(void**)& gtk_about_dialog_set_name},
	{ "gtk_about_dialog_get_program_name",  cast(void**)& gtk_about_dialog_get_program_name},
	{ "gtk_about_dialog_set_program_name",  cast(void**)& gtk_about_dialog_set_program_name},
	{ "gtk_about_dialog_get_version",  cast(void**)& gtk_about_dialog_get_version},
	{ "gtk_about_dialog_set_version",  cast(void**)& gtk_about_dialog_set_version},
	{ "gtk_about_dialog_get_copyright",  cast(void**)& gtk_about_dialog_get_copyright},
	{ "gtk_about_dialog_set_copyright",  cast(void**)& gtk_about_dialog_set_copyright},
	{ "gtk_about_dialog_get_comments",  cast(void**)& gtk_about_dialog_get_comments},
	{ "gtk_about_dialog_set_comments",  cast(void**)& gtk_about_dialog_set_comments},
	{ "gtk_about_dialog_get_license",  cast(void**)& gtk_about_dialog_get_license},
	{ "gtk_about_dialog_set_license",  cast(void**)& gtk_about_dialog_set_license},
	{ "gtk_about_dialog_get_wrap_license",  cast(void**)& gtk_about_dialog_get_wrap_license},
	{ "gtk_about_dialog_set_wrap_license",  cast(void**)& gtk_about_dialog_set_wrap_license},
	{ "gtk_about_dialog_get_website",  cast(void**)& gtk_about_dialog_get_website},
	{ "gtk_about_dialog_set_website",  cast(void**)& gtk_about_dialog_set_website},
	{ "gtk_about_dialog_get_website_label",  cast(void**)& gtk_about_dialog_get_website_label},
	{ "gtk_about_dialog_set_website_label",  cast(void**)& gtk_about_dialog_set_website_label},
	{ "gtk_about_dialog_get_authors",  cast(void**)& gtk_about_dialog_get_authors},
	{ "gtk_about_dialog_set_authors",  cast(void**)& gtk_about_dialog_set_authors},
	{ "gtk_about_dialog_get_artists",  cast(void**)& gtk_about_dialog_get_artists},
	{ "gtk_about_dialog_set_artists",  cast(void**)& gtk_about_dialog_set_artists},
	{ "gtk_about_dialog_get_documenters",  cast(void**)& gtk_about_dialog_get_documenters},
	{ "gtk_about_dialog_set_documenters",  cast(void**)& gtk_about_dialog_set_documenters},
	{ "gtk_about_dialog_get_translator_credits",  cast(void**)& gtk_about_dialog_get_translator_credits},
	{ "gtk_about_dialog_set_translator_credits",  cast(void**)& gtk_about_dialog_set_translator_credits},
	{ "gtk_about_dialog_get_logo",  cast(void**)& gtk_about_dialog_get_logo},
	{ "gtk_about_dialog_set_logo",  cast(void**)& gtk_about_dialog_set_logo},
	{ "gtk_about_dialog_get_logo_icon_name",  cast(void**)& gtk_about_dialog_get_logo_icon_name},
	{ "gtk_about_dialog_set_logo_icon_name",  cast(void**)& gtk_about_dialog_set_logo_icon_name},
	{ "gtk_about_dialog_set_email_hook",  cast(void**)& gtk_about_dialog_set_email_hook},
	{ "gtk_about_dialog_set_url_hook",  cast(void**)& gtk_about_dialog_set_url_hook},
	{ "gtk_show_about_dialog",  cast(void**)& gtk_show_about_dialog},
	{ "gtk_assistant_new",  cast(void**)& gtk_assistant_new},
	{ "gtk_assistant_get_current_page",  cast(void**)& gtk_assistant_get_current_page},
	{ "gtk_assistant_set_current_page",  cast(void**)& gtk_assistant_set_current_page},
	{ "gtk_assistant_get_n_pages",  cast(void**)& gtk_assistant_get_n_pages},
	{ "gtk_assistant_get_nth_page",  cast(void**)& gtk_assistant_get_nth_page},
	{ "gtk_assistant_prepend_page",  cast(void**)& gtk_assistant_prepend_page},
	{ "gtk_assistant_append_page",  cast(void**)& gtk_assistant_append_page},
	{ "gtk_assistant_insert_page",  cast(void**)& gtk_assistant_insert_page},
	{ "gtk_assistant_set_forward_page_func",  cast(void**)& gtk_assistant_set_forward_page_func},
	{ "gtk_assistant_set_page_type",  cast(void**)& gtk_assistant_set_page_type},
	{ "gtk_assistant_get_page_type",  cast(void**)& gtk_assistant_get_page_type},
	{ "gtk_assistant_set_page_title",  cast(void**)& gtk_assistant_set_page_title},
	{ "gtk_assistant_get_page_title",  cast(void**)& gtk_assistant_get_page_title},
	{ "gtk_assistant_set_page_header_image",  cast(void**)& gtk_assistant_set_page_header_image},
	{ "gtk_assistant_get_page_header_image",  cast(void**)& gtk_assistant_get_page_header_image},
	{ "gtk_assistant_set_page_side_image",  cast(void**)& gtk_assistant_set_page_side_image},
	{ "gtk_assistant_get_page_side_image",  cast(void**)& gtk_assistant_get_page_side_image},
	{ "gtk_assistant_set_page_complete",  cast(void**)& gtk_assistant_set_page_complete},
	{ "gtk_assistant_get_page_complete",  cast(void**)& gtk_assistant_get_page_complete},
	{ "gtk_assistant_add_action_widget",  cast(void**)& gtk_assistant_add_action_widget},
	{ "gtk_assistant_remove_action_widget",  cast(void**)& gtk_assistant_remove_action_widget},
	{ "gtk_assistant_update_buttons_state",  cast(void**)& gtk_assistant_update_buttons_state},
	{ "gtk_accel_label_new",  cast(void**)& gtk_accel_label_new},
	{ "gtk_accel_label_set_accel_closure",  cast(void**)& gtk_accel_label_set_accel_closure},
	{ "gtk_accel_label_get_accel_widget",  cast(void**)& gtk_accel_label_get_accel_widget},
	{ "gtk_accel_label_set_accel_widget",  cast(void**)& gtk_accel_label_set_accel_widget},
	{ "gtk_accel_label_get_accel_width",  cast(void**)& gtk_accel_label_get_accel_width},
	{ "gtk_accel_label_refetch",  cast(void**)& gtk_accel_label_refetch},
	{ "gtk_image_get_icon_set",  cast(void**)& gtk_image_get_icon_set},
	{ "gtk_image_get_image",  cast(void**)& gtk_image_get_image},
	{ "gtk_image_get_pixbuf",  cast(void**)& gtk_image_get_pixbuf},
	{ "gtk_image_get_pixmap",  cast(void**)& gtk_image_get_pixmap},
	{ "gtk_image_get_stock",  cast(void**)& gtk_image_get_stock},
	{ "gtk_image_get_animation",  cast(void**)& gtk_image_get_animation},
	{ "gtk_image_get_icon_name",  cast(void**)& gtk_image_get_icon_name},
	{ "gtk_image_get_storage_type",  cast(void**)& gtk_image_get_storage_type},
	{ "gtk_image_new_from_file",  cast(void**)& gtk_image_new_from_file},
	{ "gtk_image_new_from_icon_set",  cast(void**)& gtk_image_new_from_icon_set},
	{ "gtk_image_new_from_image",  cast(void**)& gtk_image_new_from_image},
	{ "gtk_image_new_from_pixbuf",  cast(void**)& gtk_image_new_from_pixbuf},
	{ "gtk_image_new_from_pixmap",  cast(void**)& gtk_image_new_from_pixmap},
	{ "gtk_image_new_from_stock",  cast(void**)& gtk_image_new_from_stock},
	{ "gtk_image_new_from_animation",  cast(void**)& gtk_image_new_from_animation},
	{ "gtk_image_new_from_icon_name",  cast(void**)& gtk_image_new_from_icon_name},
	{ "gtk_image_set_from_file",  cast(void**)& gtk_image_set_from_file},
	{ "gtk_image_set_from_icon_set",  cast(void**)& gtk_image_set_from_icon_set},
	{ "gtk_image_set_from_image",  cast(void**)& gtk_image_set_from_image},
	{ "gtk_image_set_from_pixbuf",  cast(void**)& gtk_image_set_from_pixbuf},
	{ "gtk_image_set_from_pixmap",  cast(void**)& gtk_image_set_from_pixmap},
	{ "gtk_image_set_from_stock",  cast(void**)& gtk_image_set_from_stock},
	{ "gtk_image_set_from_animation",  cast(void**)& gtk_image_set_from_animation},
	{ "gtk_image_set_from_icon_name",  cast(void**)& gtk_image_set_from_icon_name},
	{ "gtk_image_clear",  cast(void**)& gtk_image_clear},
	{ "gtk_image_new",  cast(void**)& gtk_image_new},
	{ "gtk_image_set",  cast(void**)& gtk_image_set},
	{ "gtk_image_get",  cast(void**)& gtk_image_get},
	{ "gtk_image_set_pixel_size",  cast(void**)& gtk_image_set_pixel_size},
	{ "gtk_image_get_pixel_size",  cast(void**)& gtk_image_get_pixel_size},
	{ "gtk_label_new",  cast(void**)& gtk_label_new},
	{ "gtk_label_set_text",  cast(void**)& gtk_label_set_text},
	{ "gtk_label_set_attributes",  cast(void**)& gtk_label_set_attributes},
	{ "gtk_label_set_markup",  cast(void**)& gtk_label_set_markup},
	{ "gtk_label_set_markup_with_mnemonic",  cast(void**)& gtk_label_set_markup_with_mnemonic},
	{ "gtk_label_set_pattern",  cast(void**)& gtk_label_set_pattern},
	{ "gtk_label_set_justify",  cast(void**)& gtk_label_set_justify},
	{ "gtk_label_set_ellipsize",  cast(void**)& gtk_label_set_ellipsize},
	{ "gtk_label_set_width_chars",  cast(void**)& gtk_label_set_width_chars},
	{ "gtk_label_set_max_width_chars",  cast(void**)& gtk_label_set_max_width_chars},
	{ "gtk_label_get",  cast(void**)& gtk_label_get},
	{ "gtk_label_parse_uline",  cast(void**)& gtk_label_parse_uline},
	{ "gtk_label_set_line_wrap",  cast(void**)& gtk_label_set_line_wrap},
	{ "gtk_label_set_line_wrap_mode",  cast(void**)& gtk_label_set_line_wrap_mode},
	{ "gtk_label_get_layout_offsets",  cast(void**)& gtk_label_get_layout_offsets},
	{ "gtk_label_get_mnemonic_keyval",  cast(void**)& gtk_label_get_mnemonic_keyval},
	{ "gtk_label_get_selectable",  cast(void**)& gtk_label_get_selectable},
	{ "gtk_label_get_text",  cast(void**)& gtk_label_get_text},
	{ "gtk_label_new_with_mnemonic",  cast(void**)& gtk_label_new_with_mnemonic},
	{ "gtk_label_select_region",  cast(void**)& gtk_label_select_region},
	{ "gtk_label_set_mnemonic_widget",  cast(void**)& gtk_label_set_mnemonic_widget},
	{ "gtk_label_set_selectable",  cast(void**)& gtk_label_set_selectable},
	{ "gtk_label_set_text_with_mnemonic",  cast(void**)& gtk_label_set_text_with_mnemonic},
	{ "gtk_label_get_attributes",  cast(void**)& gtk_label_get_attributes},
	{ "gtk_label_get_justify",  cast(void**)& gtk_label_get_justify},
	{ "gtk_label_get_ellipsize",  cast(void**)& gtk_label_get_ellipsize},
	{ "gtk_label_get_width_chars",  cast(void**)& gtk_label_get_width_chars},
	{ "gtk_label_get_max_width_chars",  cast(void**)& gtk_label_get_max_width_chars},
	{ "gtk_label_get_label",  cast(void**)& gtk_label_get_label},
	{ "gtk_label_get_layout",  cast(void**)& gtk_label_get_layout},
	{ "gtk_label_get_line_wrap",  cast(void**)& gtk_label_get_line_wrap},
	{ "gtk_label_get_line_wrap_mode",  cast(void**)& gtk_label_get_line_wrap_mode},
	{ "gtk_label_get_mnemonic_widget",  cast(void**)& gtk_label_get_mnemonic_widget},
	{ "gtk_label_get_selection_bounds",  cast(void**)& gtk_label_get_selection_bounds},
	{ "gtk_label_get_use_markup",  cast(void**)& gtk_label_get_use_markup},
	{ "gtk_label_get_use_underline",  cast(void**)& gtk_label_get_use_underline},
	{ "gtk_label_get_single_line_mode",  cast(void**)& gtk_label_get_single_line_mode},
	{ "gtk_label_get_angle",  cast(void**)& gtk_label_get_angle},
	{ "gtk_label_set_label",  cast(void**)& gtk_label_set_label},
	{ "gtk_label_set_use_markup",  cast(void**)& gtk_label_set_use_markup},
	{ "gtk_label_set_use_underline",  cast(void**)& gtk_label_set_use_underline},
	{ "gtk_label_set_single_line_mode",  cast(void**)& gtk_label_set_single_line_mode},
	{ "gtk_label_set_angle",  cast(void**)& gtk_label_set_angle},
	{ "gtk_progress_bar_new",  cast(void**)& gtk_progress_bar_new},
	{ "gtk_progress_bar_pulse",  cast(void**)& gtk_progress_bar_pulse},
	{ "gtk_progress_bar_set_text",  cast(void**)& gtk_progress_bar_set_text},
	{ "gtk_progress_bar_set_fraction",  cast(void**)& gtk_progress_bar_set_fraction},
	{ "gtk_progress_bar_set_pulse_step",  cast(void**)& gtk_progress_bar_set_pulse_step},
	{ "gtk_progress_bar_set_orientation",  cast(void**)& gtk_progress_bar_set_orientation},
	{ "gtk_progress_bar_set_ellipsize",  cast(void**)& gtk_progress_bar_set_ellipsize},
	{ "gtk_progress_bar_get_text",  cast(void**)& gtk_progress_bar_get_text},
	{ "gtk_progress_bar_get_fraction",  cast(void**)& gtk_progress_bar_get_fraction},
	{ "gtk_progress_bar_get_pulse_step",  cast(void**)& gtk_progress_bar_get_pulse_step},
	{ "gtk_progress_bar_get_orientation",  cast(void**)& gtk_progress_bar_get_orientation},
	{ "gtk_progress_bar_get_ellipsize",  cast(void**)& gtk_progress_bar_get_ellipsize},
	{ "gtk_progress_bar_new_with_adjustment",  cast(void**)& gtk_progress_bar_new_with_adjustment},
	{ "gtk_progress_bar_set_bar_style",  cast(void**)& gtk_progress_bar_set_bar_style},
	{ "gtk_progress_bar_set_discrete_blocks",  cast(void**)& gtk_progress_bar_set_discrete_blocks},
	{ "gtk_progress_bar_set_activity_step",  cast(void**)& gtk_progress_bar_set_activity_step},
	{ "gtk_progress_bar_set_activity_blocks",  cast(void**)& gtk_progress_bar_set_activity_blocks},
	{ "gtk_progress_bar_update",  cast(void**)& gtk_progress_bar_update},
	{ "gtk_statusbar_new",  cast(void**)& gtk_statusbar_new},
	{ "gtk_statusbar_get_context_id",  cast(void**)& gtk_statusbar_get_context_id},
	{ "gtk_statusbar_push",  cast(void**)& gtk_statusbar_push},
	{ "gtk_statusbar_pop",  cast(void**)& gtk_statusbar_pop},
	{ "gtk_statusbar_remove",  cast(void**)& gtk_statusbar_remove},
	{ "gtk_statusbar_set_has_resize_grip",  cast(void**)& gtk_statusbar_set_has_resize_grip},
	{ "gtk_statusbar_get_has_resize_grip",  cast(void**)& gtk_statusbar_get_has_resize_grip},
	{ "gtk_status_icon_new",  cast(void**)& gtk_status_icon_new},
	{ "gtk_status_icon_new_from_pixbuf",  cast(void**)& gtk_status_icon_new_from_pixbuf},
	{ "gtk_status_icon_new_from_file",  cast(void**)& gtk_status_icon_new_from_file},
	{ "gtk_status_icon_new_from_stock",  cast(void**)& gtk_status_icon_new_from_stock},
	{ "gtk_status_icon_new_from_icon_name",  cast(void**)& gtk_status_icon_new_from_icon_name},
	{ "gtk_status_icon_set_from_pixbuf",  cast(void**)& gtk_status_icon_set_from_pixbuf},
	{ "gtk_status_icon_set_from_file",  cast(void**)& gtk_status_icon_set_from_file},
	{ "gtk_status_icon_set_from_stock",  cast(void**)& gtk_status_icon_set_from_stock},
	{ "gtk_status_icon_set_from_icon_name",  cast(void**)& gtk_status_icon_set_from_icon_name},
	{ "gtk_status_icon_get_storage_type",  cast(void**)& gtk_status_icon_get_storage_type},
	{ "gtk_status_icon_get_pixbuf",  cast(void**)& gtk_status_icon_get_pixbuf},
	{ "gtk_status_icon_get_stock",  cast(void**)& gtk_status_icon_get_stock},
	{ "gtk_status_icon_get_icon_name",  cast(void**)& gtk_status_icon_get_icon_name},
	{ "gtk_status_icon_get_size",  cast(void**)& gtk_status_icon_get_size},
	{ "gtk_status_icon_set_screen",  cast(void**)& gtk_status_icon_set_screen},
	{ "gtk_status_icon_get_screen",  cast(void**)& gtk_status_icon_get_screen},
	{ "gtk_status_icon_set_tooltip",  cast(void**)& gtk_status_icon_set_tooltip},
	{ "gtk_status_icon_set_visible",  cast(void**)& gtk_status_icon_set_visible},
	{ "gtk_status_icon_get_visible",  cast(void**)& gtk_status_icon_get_visible},
	{ "gtk_status_icon_set_blinking",  cast(void**)& gtk_status_icon_set_blinking},
	{ "gtk_status_icon_get_blinking",  cast(void**)& gtk_status_icon_get_blinking},
	{ "gtk_status_icon_is_embedded",  cast(void**)& gtk_status_icon_is_embedded},
	{ "gtk_status_icon_position_menu",  cast(void**)& gtk_status_icon_position_menu},
	{ "gtk_status_icon_get_geometry",  cast(void**)& gtk_status_icon_get_geometry},
	{ "gtk_button_new",  cast(void**)& gtk_button_new},
	{ "gtk_button_new_with_label",  cast(void**)& gtk_button_new_with_label},
	{ "gtk_button_new_with_mnemonic",  cast(void**)& gtk_button_new_with_mnemonic},
	{ "gtk_button_new_from_stock",  cast(void**)& gtk_button_new_from_stock},
	{ "gtk_button_pressed",  cast(void**)& gtk_button_pressed},
	{ "gtk_button_released",  cast(void**)& gtk_button_released},
	{ "gtk_button_clicked",  cast(void**)& gtk_button_clicked},
	{ "gtk_button_enter",  cast(void**)& gtk_button_enter},
	{ "gtk_button_leave",  cast(void**)& gtk_button_leave},
	{ "gtk_button_set_relief",  cast(void**)& gtk_button_set_relief},
	{ "gtk_button_get_relief",  cast(void**)& gtk_button_get_relief},
	{ "gtk_button_get_label",  cast(void**)& gtk_button_get_label},
	{ "gtk_button_set_label",  cast(void**)& gtk_button_set_label},
	{ "gtk_button_get_use_stock",  cast(void**)& gtk_button_get_use_stock},
	{ "gtk_button_set_use_stock",  cast(void**)& gtk_button_set_use_stock},
	{ "gtk_button_get_use_underline",  cast(void**)& gtk_button_get_use_underline},
	{ "gtk_button_set_use_underline",  cast(void**)& gtk_button_set_use_underline},
	{ "gtk_button_set_focus_on_click",  cast(void**)& gtk_button_set_focus_on_click},
	{ "gtk_button_get_focus_on_click",  cast(void**)& gtk_button_get_focus_on_click},
	{ "gtk_button_set_alignment",  cast(void**)& gtk_button_set_alignment},
	{ "gtk_button_get_alignment",  cast(void**)& gtk_button_get_alignment},
	{ "gtk_button_set_image",  cast(void**)& gtk_button_set_image},
	{ "gtk_button_get_image",  cast(void**)& gtk_button_get_image},
	{ "gtk_button_set_image_position",  cast(void**)& gtk_button_set_image_position},
	{ "gtk_button_get_image_position",  cast(void**)& gtk_button_get_image_position},
	{ "gtk_check_button_new",  cast(void**)& gtk_check_button_new},
	{ "gtk_check_button_new_with_label",  cast(void**)& gtk_check_button_new_with_label},
	{ "gtk_check_button_new_with_mnemonic",  cast(void**)& gtk_check_button_new_with_mnemonic},
	{ "gtk_radio_button_new",  cast(void**)& gtk_radio_button_new},
	{ "gtk_radio_button_new_from_widget",  cast(void**)& gtk_radio_button_new_from_widget},
	{ "gtk_radio_button_new_with_label",  cast(void**)& gtk_radio_button_new_with_label},
	{ "gtk_radio_button_new_with_label_from_widget",  cast(void**)& gtk_radio_button_new_with_label_from_widget},
	{ "gtk_radio_button_new_with_mnemonic",  cast(void**)& gtk_radio_button_new_with_mnemonic},
	{ "gtk_radio_button_new_with_mnemonic_from_widget",  cast(void**)& gtk_radio_button_new_with_mnemonic_from_widget},
	{ "gtk_radio_button_set_group",  cast(void**)& gtk_radio_button_set_group},
	{ "gtk_radio_button_get_group",  cast(void**)& gtk_radio_button_get_group},
	{ "gtk_toggle_button_new",  cast(void**)& gtk_toggle_button_new},
	{ "gtk_toggle_button_new_with_label",  cast(void**)& gtk_toggle_button_new_with_label},
	{ "gtk_toggle_button_new_with_mnemonic",  cast(void**)& gtk_toggle_button_new_with_mnemonic},
	{ "gtk_toggle_button_set_mode",  cast(void**)& gtk_toggle_button_set_mode},
	{ "gtk_toggle_button_get_mode",  cast(void**)& gtk_toggle_button_get_mode},
	{ "gtk_toggle_button_toggled",  cast(void**)& gtk_toggle_button_toggled},
	{ "gtk_toggle_button_get_active",  cast(void**)& gtk_toggle_button_get_active},
	{ "gtk_toggle_button_set_active",  cast(void**)& gtk_toggle_button_set_active},
	{ "gtk_toggle_button_get_inconsistent",  cast(void**)& gtk_toggle_button_get_inconsistent},
	{ "gtk_toggle_button_set_inconsistent",  cast(void**)& gtk_toggle_button_set_inconsistent},
	{ "gtk_link_button_new",  cast(void**)& gtk_link_button_new},
	{ "gtk_link_button_new_with_label",  cast(void**)& gtk_link_button_new_with_label},
	{ "gtk_link_button_get_uri",  cast(void**)& gtk_link_button_get_uri},
	{ "gtk_link_button_set_uri",  cast(void**)& gtk_link_button_set_uri},
	{ "gtk_link_button_set_uri_hook",  cast(void**)& gtk_link_button_set_uri_hook},
	{ "gtk_scale_button_new",  cast(void**)& gtk_scale_button_new},
	{ "gtk_scale_button_set_adjustment",  cast(void**)& gtk_scale_button_set_adjustment},
	{ "gtk_scale_button_set_icons",  cast(void**)& gtk_scale_button_set_icons},
	{ "gtk_scale_button_set_value",  cast(void**)& gtk_scale_button_set_value},
	{ "gtk_scale_button_get_adjustment",  cast(void**)& gtk_scale_button_get_adjustment},
	{ "gtk_scale_button_get_value",  cast(void**)& gtk_scale_button_get_value},
	{ "gtk_volume_button_new",  cast(void**)& gtk_volume_button_new},
	{ "gtk_entry_new",  cast(void**)& gtk_entry_new},
	{ "gtk_entry_new_with_max_length",  cast(void**)& gtk_entry_new_with_max_length},
	{ "gtk_entry_set_text",  cast(void**)& gtk_entry_set_text},
	{ "gtk_entry_append_text",  cast(void**)& gtk_entry_append_text},
	{ "gtk_entry_prepend_text",  cast(void**)& gtk_entry_prepend_text},
	{ "gtk_entry_set_position",  cast(void**)& gtk_entry_set_position},
	{ "gtk_entry_get_text",  cast(void**)& gtk_entry_get_text},
	{ "gtk_entry_select_region",  cast(void**)& gtk_entry_select_region},
	{ "gtk_entry_set_visibility",  cast(void**)& gtk_entry_set_visibility},
	{ "gtk_entry_set_invisible_char",  cast(void**)& gtk_entry_set_invisible_char},
	{ "gtk_entry_set_editable",  cast(void**)& gtk_entry_set_editable},
	{ "gtk_entry_set_max_length",  cast(void**)& gtk_entry_set_max_length},
	{ "gtk_entry_get_activates_default",  cast(void**)& gtk_entry_get_activates_default},
	{ "gtk_entry_get_has_frame",  cast(void**)& gtk_entry_get_has_frame},
	{ "gtk_entry_get_inner_border",  cast(void**)& gtk_entry_get_inner_border},
	{ "gtk_entry_get_width_chars",  cast(void**)& gtk_entry_get_width_chars},
	{ "gtk_entry_set_activates_default",  cast(void**)& gtk_entry_set_activates_default},
	{ "gtk_entry_set_has_frame",  cast(void**)& gtk_entry_set_has_frame},
	{ "gtk_entry_set_inner_border",  cast(void**)& gtk_entry_set_inner_border},
	{ "gtk_entry_set_width_chars",  cast(void**)& gtk_entry_set_width_chars},
	{ "gtk_entry_get_invisible_char",  cast(void**)& gtk_entry_get_invisible_char},
	{ "gtk_entry_set_alignment",  cast(void**)& gtk_entry_set_alignment},
	{ "gtk_entry_get_alignment",  cast(void**)& gtk_entry_get_alignment},
	{ "gtk_entry_get_layout",  cast(void**)& gtk_entry_get_layout},
	{ "gtk_entry_get_layout_offsets",  cast(void**)& gtk_entry_get_layout_offsets},
	{ "gtk_entry_layout_index_to_text_index",  cast(void**)& gtk_entry_layout_index_to_text_index},
	{ "gtk_entry_text_index_to_layout_index",  cast(void**)& gtk_entry_text_index_to_layout_index},
	{ "gtk_entry_get_max_length",  cast(void**)& gtk_entry_get_max_length},
	{ "gtk_entry_get_visibility",  cast(void**)& gtk_entry_get_visibility},
	{ "gtk_entry_set_completion",  cast(void**)& gtk_entry_set_completion},
	{ "gtk_entry_get_completion",  cast(void**)& gtk_entry_get_completion},
	{ "gtk_entry_set_cursor_hadjustment",  cast(void**)& gtk_entry_set_cursor_hadjustment},
	{ "gtk_entry_get_cursor_hadjustment",  cast(void**)& gtk_entry_get_cursor_hadjustment},
	{ "gtk_entry_completion_new",  cast(void**)& gtk_entry_completion_new},
	{ "gtk_entry_completion_get_entry",  cast(void**)& gtk_entry_completion_get_entry},
	{ "gtk_entry_completion_set_model",  cast(void**)& gtk_entry_completion_set_model},
	{ "gtk_entry_completion_get_model",  cast(void**)& gtk_entry_completion_get_model},
	{ "gtk_entry_completion_set_match_func",  cast(void**)& gtk_entry_completion_set_match_func},
	{ "gtk_entry_completion_set_minimum_key_length",  cast(void**)& gtk_entry_completion_set_minimum_key_length},
	{ "gtk_entry_completion_get_minimum_key_length",  cast(void**)& gtk_entry_completion_get_minimum_key_length},
	{ "gtk_entry_completion_complete",  cast(void**)& gtk_entry_completion_complete},
	{ "gtk_entry_completion_get_completion_prefix",  cast(void**)& gtk_entry_completion_get_completion_prefix},
	{ "gtk_entry_completion_insert_prefix",  cast(void**)& gtk_entry_completion_insert_prefix},
	{ "gtk_entry_completion_insert_action_text",  cast(void**)& gtk_entry_completion_insert_action_text},
	{ "gtk_entry_completion_insert_action_markup",  cast(void**)& gtk_entry_completion_insert_action_markup},
	{ "gtk_entry_completion_delete_action",  cast(void**)& gtk_entry_completion_delete_action},
	{ "gtk_entry_completion_set_text_column",  cast(void**)& gtk_entry_completion_set_text_column},
	{ "gtk_entry_completion_get_text_column",  cast(void**)& gtk_entry_completion_get_text_column},
	{ "gtk_entry_completion_set_inline_completion",  cast(void**)& gtk_entry_completion_set_inline_completion},
	{ "gtk_entry_completion_get_inline_completion",  cast(void**)& gtk_entry_completion_get_inline_completion},
	{ "gtk_entry_completion_set_inline_selection",  cast(void**)& gtk_entry_completion_set_inline_selection},
	{ "gtk_entry_completion_get_inline_selection",  cast(void**)& gtk_entry_completion_get_inline_selection},
	{ "gtk_entry_completion_set_popup_completion",  cast(void**)& gtk_entry_completion_set_popup_completion},
	{ "gtk_entry_completion_get_popup_completion",  cast(void**)& gtk_entry_completion_get_popup_completion},
	{ "gtk_entry_completion_set_popup_set_width",  cast(void**)& gtk_entry_completion_set_popup_set_width},
	{ "gtk_entry_completion_get_popup_set_width",  cast(void**)& gtk_entry_completion_get_popup_set_width},
	{ "gtk_entry_completion_set_popup_single_match",  cast(void**)& gtk_entry_completion_set_popup_single_match},
	{ "gtk_entry_completion_get_popup_single_match",  cast(void**)& gtk_entry_completion_get_popup_single_match},
	{ "gtk_hscale_new",  cast(void**)& gtk_hscale_new},
	{ "gtk_hscale_new_with_range",  cast(void**)& gtk_hscale_new_with_range},
	{ "gtk_vscale_new",  cast(void**)& gtk_vscale_new},
	{ "gtk_vscale_new_with_range",  cast(void**)& gtk_vscale_new_with_range},
	{ "gtk_spin_button_configure",  cast(void**)& gtk_spin_button_configure},
	{ "gtk_spin_button_new",  cast(void**)& gtk_spin_button_new},
	{ "gtk_spin_button_new_with_range",  cast(void**)& gtk_spin_button_new_with_range},
	{ "gtk_spin_button_set_adjustment",  cast(void**)& gtk_spin_button_set_adjustment},
	{ "gtk_spin_button_get_adjustment",  cast(void**)& gtk_spin_button_get_adjustment},
	{ "gtk_spin_button_set_digits",  cast(void**)& gtk_spin_button_set_digits},
	{ "gtk_spin_button_set_increments",  cast(void**)& gtk_spin_button_set_increments},
	{ "gtk_spin_button_set_range",  cast(void**)& gtk_spin_button_set_range},
	{ "gtk_spin_button_get_value_as_int",  cast(void**)& gtk_spin_button_get_value_as_int},
	{ "gtk_spin_button_set_value",  cast(void**)& gtk_spin_button_set_value},
	{ "gtk_spin_button_set_update_policy",  cast(void**)& gtk_spin_button_set_update_policy},
	{ "gtk_spin_button_set_numeric",  cast(void**)& gtk_spin_button_set_numeric},
	{ "gtk_spin_button_spin",  cast(void**)& gtk_spin_button_spin},
	{ "gtk_spin_button_set_wrap",  cast(void**)& gtk_spin_button_set_wrap},
	{ "gtk_spin_button_set_snap_to_ticks",  cast(void**)& gtk_spin_button_set_snap_to_ticks},
	{ "gtk_spin_button_update",  cast(void**)& gtk_spin_button_update},
	{ "gtk_spin_button_get_digits",  cast(void**)& gtk_spin_button_get_digits},
	{ "gtk_spin_button_get_increments",  cast(void**)& gtk_spin_button_get_increments},
	{ "gtk_spin_button_get_numeric",  cast(void**)& gtk_spin_button_get_numeric},
	{ "gtk_spin_button_get_range",  cast(void**)& gtk_spin_button_get_range},
	{ "gtk_spin_button_get_snap_to_ticks",  cast(void**)& gtk_spin_button_get_snap_to_ticks},
	{ "gtk_spin_button_get_update_policy",  cast(void**)& gtk_spin_button_get_update_policy},
	{ "gtk_spin_button_get_value",  cast(void**)& gtk_spin_button_get_value},
	{ "gtk_spin_button_get_wrap",  cast(void**)& gtk_spin_button_get_wrap},
	{ "gtk_editable_select_region",  cast(void**)& gtk_editable_select_region},
	{ "gtk_editable_get_selection_bounds",  cast(void**)& gtk_editable_get_selection_bounds},
	{ "gtk_editable_insert_text",  cast(void**)& gtk_editable_insert_text},
	{ "gtk_editable_delete_text",  cast(void**)& gtk_editable_delete_text},
	{ "gtk_editable_get_chars",  cast(void**)& gtk_editable_get_chars},
	{ "gtk_editable_cut_clipboard",  cast(void**)& gtk_editable_cut_clipboard},
	{ "gtk_editable_copy_clipboard",  cast(void**)& gtk_editable_copy_clipboard},
	{ "gtk_editable_paste_clipboard",  cast(void**)& gtk_editable_paste_clipboard},
	{ "gtk_editable_delete_selection",  cast(void**)& gtk_editable_delete_selection},
	{ "gtk_editable_set_position",  cast(void**)& gtk_editable_set_position},
	{ "gtk_editable_get_position",  cast(void**)& gtk_editable_get_position},
	{ "gtk_editable_set_editable",  cast(void**)& gtk_editable_set_editable},
	{ "gtk_editable_get_editable",  cast(void**)& gtk_editable_get_editable},
	{ "gtk_text_iter_get_buffer",  cast(void**)& gtk_text_iter_get_buffer},
	{ "gtk_text_iter_copy",  cast(void**)& gtk_text_iter_copy},
	{ "gtk_text_iter_free",  cast(void**)& gtk_text_iter_free},
	{ "gtk_text_iter_get_offset",  cast(void**)& gtk_text_iter_get_offset},
	{ "gtk_text_iter_get_line",  cast(void**)& gtk_text_iter_get_line},
	{ "gtk_text_iter_get_line_offset",  cast(void**)& gtk_text_iter_get_line_offset},
	{ "gtk_text_iter_get_line_index",  cast(void**)& gtk_text_iter_get_line_index},
	{ "gtk_text_iter_get_visible_line_index",  cast(void**)& gtk_text_iter_get_visible_line_index},
	{ "gtk_text_iter_get_visible_line_offset",  cast(void**)& gtk_text_iter_get_visible_line_offset},
	{ "gtk_text_iter_get_char",  cast(void**)& gtk_text_iter_get_char},
	{ "gtk_text_iter_get_slice",  cast(void**)& gtk_text_iter_get_slice},
	{ "gtk_text_iter_get_text",  cast(void**)& gtk_text_iter_get_text},
	{ "gtk_text_iter_get_visible_slice",  cast(void**)& gtk_text_iter_get_visible_slice},
	{ "gtk_text_iter_get_visible_text",  cast(void**)& gtk_text_iter_get_visible_text},
	{ "gtk_text_iter_get_pixbuf",  cast(void**)& gtk_text_iter_get_pixbuf},
	{ "gtk_text_iter_get_marks",  cast(void**)& gtk_text_iter_get_marks},
	{ "gtk_text_iter_get_toggled_tags",  cast(void**)& gtk_text_iter_get_toggled_tags},
	{ "gtk_text_iter_get_child_anchor",  cast(void**)& gtk_text_iter_get_child_anchor},
	{ "gtk_text_iter_begins_tag",  cast(void**)& gtk_text_iter_begins_tag},
	{ "gtk_text_iter_ends_tag",  cast(void**)& gtk_text_iter_ends_tag},
	{ "gtk_text_iter_toggles_tag",  cast(void**)& gtk_text_iter_toggles_tag},
	{ "gtk_text_iter_has_tag",  cast(void**)& gtk_text_iter_has_tag},
	{ "gtk_text_iter_get_tags",  cast(void**)& gtk_text_iter_get_tags},
	{ "gtk_text_iter_editable",  cast(void**)& gtk_text_iter_editable},
	{ "gtk_text_iter_can_insert",  cast(void**)& gtk_text_iter_can_insert},
	{ "gtk_text_iter_starts_word",  cast(void**)& gtk_text_iter_starts_word},
	{ "gtk_text_iter_ends_word",  cast(void**)& gtk_text_iter_ends_word},
	{ "gtk_text_iter_inside_word",  cast(void**)& gtk_text_iter_inside_word},
	{ "gtk_text_iter_starts_line",  cast(void**)& gtk_text_iter_starts_line},
	{ "gtk_text_iter_ends_line",  cast(void**)& gtk_text_iter_ends_line},
	{ "gtk_text_iter_starts_sentence",  cast(void**)& gtk_text_iter_starts_sentence},
	{ "gtk_text_iter_ends_sentence",  cast(void**)& gtk_text_iter_ends_sentence},
	{ "gtk_text_iter_inside_sentence",  cast(void**)& gtk_text_iter_inside_sentence},
	{ "gtk_text_iter_is_cursor_position",  cast(void**)& gtk_text_iter_is_cursor_position},
	{ "gtk_text_iter_get_chars_in_line",  cast(void**)& gtk_text_iter_get_chars_in_line},
	{ "gtk_text_iter_get_bytes_in_line",  cast(void**)& gtk_text_iter_get_bytes_in_line},
	{ "gtk_text_iter_get_attributes",  cast(void**)& gtk_text_iter_get_attributes},
	{ "gtk_text_iter_get_language",  cast(void**)& gtk_text_iter_get_language},
	{ "gtk_text_iter_is_end",  cast(void**)& gtk_text_iter_is_end},
	{ "gtk_text_iter_is_start",  cast(void**)& gtk_text_iter_is_start},
	{ "gtk_text_iter_forward_char",  cast(void**)& gtk_text_iter_forward_char},
	{ "gtk_text_iter_backward_char",  cast(void**)& gtk_text_iter_backward_char},
	{ "gtk_text_iter_forward_chars",  cast(void**)& gtk_text_iter_forward_chars},
	{ "gtk_text_iter_backward_chars",  cast(void**)& gtk_text_iter_backward_chars},
	{ "gtk_text_iter_forward_line",  cast(void**)& gtk_text_iter_forward_line},
	{ "gtk_text_iter_backward_line",  cast(void**)& gtk_text_iter_backward_line},
	{ "gtk_text_iter_forward_lines",  cast(void**)& gtk_text_iter_forward_lines},
	{ "gtk_text_iter_backward_lines",  cast(void**)& gtk_text_iter_backward_lines},
	{ "gtk_text_iter_forward_word_ends",  cast(void**)& gtk_text_iter_forward_word_ends},
	{ "gtk_text_iter_backward_word_starts",  cast(void**)& gtk_text_iter_backward_word_starts},
	{ "gtk_text_iter_forward_word_end",  cast(void**)& gtk_text_iter_forward_word_end},
	{ "gtk_text_iter_backward_word_start",  cast(void**)& gtk_text_iter_backward_word_start},
	{ "gtk_text_iter_forward_cursor_position",  cast(void**)& gtk_text_iter_forward_cursor_position},
	{ "gtk_text_iter_backward_cursor_position",  cast(void**)& gtk_text_iter_backward_cursor_position},
	{ "gtk_text_iter_forward_cursor_positions",  cast(void**)& gtk_text_iter_forward_cursor_positions},
	{ "gtk_text_iter_backward_cursor_positions",  cast(void**)& gtk_text_iter_backward_cursor_positions},
	{ "gtk_text_iter_backward_sentence_start",  cast(void**)& gtk_text_iter_backward_sentence_start},
	{ "gtk_text_iter_backward_sentence_starts",  cast(void**)& gtk_text_iter_backward_sentence_starts},
	{ "gtk_text_iter_forward_sentence_end",  cast(void**)& gtk_text_iter_forward_sentence_end},
	{ "gtk_text_iter_forward_sentence_ends",  cast(void**)& gtk_text_iter_forward_sentence_ends},
	{ "gtk_text_iter_forward_visible_word_ends",  cast(void**)& gtk_text_iter_forward_visible_word_ends},
	{ "gtk_text_iter_backward_visible_word_starts",  cast(void**)& gtk_text_iter_backward_visible_word_starts},
	{ "gtk_text_iter_forward_visible_word_end",  cast(void**)& gtk_text_iter_forward_visible_word_end},
	{ "gtk_text_iter_backward_visible_word_start",  cast(void**)& gtk_text_iter_backward_visible_word_start},
	{ "gtk_text_iter_forward_visible_cursor_position",  cast(void**)& gtk_text_iter_forward_visible_cursor_position},
	{ "gtk_text_iter_backward_visible_cursor_position",  cast(void**)& gtk_text_iter_backward_visible_cursor_position},
	{ "gtk_text_iter_forward_visible_cursor_positions",  cast(void**)& gtk_text_iter_forward_visible_cursor_positions},
	{ "gtk_text_iter_backward_visible_cursor_positions",  cast(void**)& gtk_text_iter_backward_visible_cursor_positions},
	{ "gtk_text_iter_forward_visible_line",  cast(void**)& gtk_text_iter_forward_visible_line},
	{ "gtk_text_iter_backward_visible_line",  cast(void**)& gtk_text_iter_backward_visible_line},
	{ "gtk_text_iter_forward_visible_lines",  cast(void**)& gtk_text_iter_forward_visible_lines},
	{ "gtk_text_iter_backward_visible_lines",  cast(void**)& gtk_text_iter_backward_visible_lines},
	{ "gtk_text_iter_set_offset",  cast(void**)& gtk_text_iter_set_offset},
	{ "gtk_text_iter_set_line",  cast(void**)& gtk_text_iter_set_line},
	{ "gtk_text_iter_set_line_offset",  cast(void**)& gtk_text_iter_set_line_offset},
	{ "gtk_text_iter_set_line_index",  cast(void**)& gtk_text_iter_set_line_index},
	{ "gtk_text_iter_set_visible_line_index",  cast(void**)& gtk_text_iter_set_visible_line_index},
	{ "gtk_text_iter_set_visible_line_offset",  cast(void**)& gtk_text_iter_set_visible_line_offset},
	{ "gtk_text_iter_forward_to_end",  cast(void**)& gtk_text_iter_forward_to_end},
	{ "gtk_text_iter_forward_to_line_end",  cast(void**)& gtk_text_iter_forward_to_line_end},
	{ "gtk_text_iter_forward_to_tag_toggle",  cast(void**)& gtk_text_iter_forward_to_tag_toggle},
	{ "gtk_text_iter_backward_to_tag_toggle",  cast(void**)& gtk_text_iter_backward_to_tag_toggle},
	{ "gtk_text_iter_forward_find_char",  cast(void**)& gtk_text_iter_forward_find_char},
	{ "gtk_text_iter_backward_find_char",  cast(void**)& gtk_text_iter_backward_find_char},
	{ "gtk_text_iter_forward_search",  cast(void**)& gtk_text_iter_forward_search},
	{ "gtk_text_iter_backward_search",  cast(void**)& gtk_text_iter_backward_search},
	{ "gtk_text_iter_equal",  cast(void**)& gtk_text_iter_equal},
	{ "gtk_text_iter_compare",  cast(void**)& gtk_text_iter_compare},
	{ "gtk_text_iter_in_range",  cast(void**)& gtk_text_iter_in_range},
	{ "gtk_text_iter_order",  cast(void**)& gtk_text_iter_order},
	{ "gtk_text_mark_new",  cast(void**)& gtk_text_mark_new},
	{ "gtk_text_mark_set_visible",  cast(void**)& gtk_text_mark_set_visible},
	{ "gtk_text_mark_get_visible",  cast(void**)& gtk_text_mark_get_visible},
	{ "gtk_text_mark_get_deleted",  cast(void**)& gtk_text_mark_get_deleted},
	{ "gtk_text_mark_get_name",  cast(void**)& gtk_text_mark_get_name},
	{ "gtk_text_mark_get_buffer",  cast(void**)& gtk_text_mark_get_buffer},
	{ "gtk_text_mark_get_left_gravity",  cast(void**)& gtk_text_mark_get_left_gravity},
	{ "gtk_text_buffer_new",  cast(void**)& gtk_text_buffer_new},
	{ "gtk_text_buffer_get_line_count",  cast(void**)& gtk_text_buffer_get_line_count},
	{ "gtk_text_buffer_get_char_count",  cast(void**)& gtk_text_buffer_get_char_count},
	{ "gtk_text_buffer_get_tag_table",  cast(void**)& gtk_text_buffer_get_tag_table},
	{ "gtk_text_buffer_insert",  cast(void**)& gtk_text_buffer_insert},
	{ "gtk_text_buffer_insert_at_cursor",  cast(void**)& gtk_text_buffer_insert_at_cursor},
	{ "gtk_text_buffer_insert_interactive",  cast(void**)& gtk_text_buffer_insert_interactive},
	{ "gtk_text_buffer_insert_interactive_at_cursor",  cast(void**)& gtk_text_buffer_insert_interactive_at_cursor},
	{ "gtk_text_buffer_insert_range",  cast(void**)& gtk_text_buffer_insert_range},
	{ "gtk_text_buffer_insert_range_interactive",  cast(void**)& gtk_text_buffer_insert_range_interactive},
	{ "gtk_text_buffer_insert_with_tags",  cast(void**)& gtk_text_buffer_insert_with_tags},
	{ "gtk_text_buffer_insert_with_tags_by_name",  cast(void**)& gtk_text_buffer_insert_with_tags_by_name},
	{ "gtk_text_buffer_delete",  cast(void**)& gtk_text_buffer_delete},
	{ "gtk_text_buffer_delete_interactive",  cast(void**)& gtk_text_buffer_delete_interactive},
	{ "gtk_text_buffer_backspace",  cast(void**)& gtk_text_buffer_backspace},
	{ "gtk_text_buffer_set_text",  cast(void**)& gtk_text_buffer_set_text},
	{ "gtk_text_buffer_get_text",  cast(void**)& gtk_text_buffer_get_text},
	{ "gtk_text_buffer_get_slice",  cast(void**)& gtk_text_buffer_get_slice},
	{ "gtk_text_buffer_insert_pixbuf",  cast(void**)& gtk_text_buffer_insert_pixbuf},
	{ "gtk_text_buffer_insert_child_anchor",  cast(void**)& gtk_text_buffer_insert_child_anchor},
	{ "gtk_text_buffer_create_child_anchor",  cast(void**)& gtk_text_buffer_create_child_anchor},
	{ "gtk_text_buffer_create_mark",  cast(void**)& gtk_text_buffer_create_mark},
	{ "gtk_text_buffer_move_mark",  cast(void**)& gtk_text_buffer_move_mark},
	{ "gtk_text_buffer_move_mark_by_name",  cast(void**)& gtk_text_buffer_move_mark_by_name},
	{ "gtk_text_buffer_add_mark",  cast(void**)& gtk_text_buffer_add_mark},
	{ "gtk_text_buffer_delete_mark",  cast(void**)& gtk_text_buffer_delete_mark},
	{ "gtk_text_buffer_delete_mark_by_name",  cast(void**)& gtk_text_buffer_delete_mark_by_name},
	{ "gtk_text_buffer_get_mark",  cast(void**)& gtk_text_buffer_get_mark},
	{ "gtk_text_buffer_get_insert",  cast(void**)& gtk_text_buffer_get_insert},
	{ "gtk_text_buffer_get_selection_bound",  cast(void**)& gtk_text_buffer_get_selection_bound},
	{ "gtk_text_buffer_get_has_selection",  cast(void**)& gtk_text_buffer_get_has_selection},
	{ "gtk_text_buffer_place_cursor",  cast(void**)& gtk_text_buffer_place_cursor},
	{ "gtk_text_buffer_select_range",  cast(void**)& gtk_text_buffer_select_range},
	{ "gtk_text_buffer_apply_tag",  cast(void**)& gtk_text_buffer_apply_tag},
	{ "gtk_text_buffer_remove_tag",  cast(void**)& gtk_text_buffer_remove_tag},
	{ "gtk_text_buffer_apply_tag_by_name",  cast(void**)& gtk_text_buffer_apply_tag_by_name},
	{ "gtk_text_buffer_remove_tag_by_name",  cast(void**)& gtk_text_buffer_remove_tag_by_name},
	{ "gtk_text_buffer_remove_all_tags",  cast(void**)& gtk_text_buffer_remove_all_tags},
	{ "gtk_text_buffer_create_tag",  cast(void**)& gtk_text_buffer_create_tag},
	{ "gtk_text_buffer_get_iter_at_line_offset",  cast(void**)& gtk_text_buffer_get_iter_at_line_offset},
	{ "gtk_text_buffer_get_iter_at_offset",  cast(void**)& gtk_text_buffer_get_iter_at_offset},
	{ "gtk_text_buffer_get_iter_at_line",  cast(void**)& gtk_text_buffer_get_iter_at_line},
	{ "gtk_text_buffer_get_iter_at_line_index",  cast(void**)& gtk_text_buffer_get_iter_at_line_index},
	{ "gtk_text_buffer_get_iter_at_mark",  cast(void**)& gtk_text_buffer_get_iter_at_mark},
	{ "gtk_text_buffer_get_iter_at_child_anchor",  cast(void**)& gtk_text_buffer_get_iter_at_child_anchor},
	{ "gtk_text_buffer_get_start_iter",  cast(void**)& gtk_text_buffer_get_start_iter},
	{ "gtk_text_buffer_get_end_iter",  cast(void**)& gtk_text_buffer_get_end_iter},
	{ "gtk_text_buffer_get_bounds",  cast(void**)& gtk_text_buffer_get_bounds},
	{ "gtk_text_buffer_get_modified",  cast(void**)& gtk_text_buffer_get_modified},
	{ "gtk_text_buffer_set_modified",  cast(void**)& gtk_text_buffer_set_modified},
	{ "gtk_text_buffer_delete_selection",  cast(void**)& gtk_text_buffer_delete_selection},
	{ "gtk_text_buffer_paste_clipboard",  cast(void**)& gtk_text_buffer_paste_clipboard},
	{ "gtk_text_buffer_copy_clipboard",  cast(void**)& gtk_text_buffer_copy_clipboard},
	{ "gtk_text_buffer_cut_clipboard",  cast(void**)& gtk_text_buffer_cut_clipboard},
	{ "gtk_text_buffer_get_selection_bounds",  cast(void**)& gtk_text_buffer_get_selection_bounds},
	{ "gtk_text_buffer_begin_user_action",  cast(void**)& gtk_text_buffer_begin_user_action},
	{ "gtk_text_buffer_end_user_action",  cast(void**)& gtk_text_buffer_end_user_action},
	{ "gtk_text_buffer_add_selection_clipboard",  cast(void**)& gtk_text_buffer_add_selection_clipboard},
	{ "gtk_text_buffer_remove_selection_clipboard",  cast(void**)& gtk_text_buffer_remove_selection_clipboard},
	{ "gtk_text_buffer_deserialize",  cast(void**)& gtk_text_buffer_deserialize},
	{ "gtk_text_buffer_deserialize_get_can_create_tags",  cast(void**)& gtk_text_buffer_deserialize_get_can_create_tags},
	{ "gtk_text_buffer_deserialize_set_can_create_tags",  cast(void**)& gtk_text_buffer_deserialize_set_can_create_tags},
	{ "gtk_text_buffer_get_copy_target_list",  cast(void**)& gtk_text_buffer_get_copy_target_list},
	{ "gtk_text_buffer_get_deserialize_formats",  cast(void**)& gtk_text_buffer_get_deserialize_formats},
	{ "gtk_text_buffer_get_paste_target_list",  cast(void**)& gtk_text_buffer_get_paste_target_list},
	{ "gtk_text_buffer_get_serialize_formats",  cast(void**)& gtk_text_buffer_get_serialize_formats},
	{ "gtk_text_buffer_register_deserialize_format",  cast(void**)& gtk_text_buffer_register_deserialize_format},
	{ "gtk_text_buffer_register_deserialize_tagset",  cast(void**)& gtk_text_buffer_register_deserialize_tagset},
	{ "gtk_text_buffer_register_serialize_format",  cast(void**)& gtk_text_buffer_register_serialize_format},
	{ "gtk_text_buffer_register_serialize_tagset",  cast(void**)& gtk_text_buffer_register_serialize_tagset},
	{ "gtk_text_buffer_serialize",  cast(void**)& gtk_text_buffer_serialize},
	{ "gtk_text_buffer_unregister_deserialize_format",  cast(void**)& gtk_text_buffer_unregister_deserialize_format},
	{ "gtk_text_buffer_unregister_serialize_format",  cast(void**)& gtk_text_buffer_unregister_serialize_format},
	{ "gtk_text_tag_new",  cast(void**)& gtk_text_tag_new},
	{ "gtk_text_tag_get_priority",  cast(void**)& gtk_text_tag_get_priority},
	{ "gtk_text_tag_set_priority",  cast(void**)& gtk_text_tag_set_priority},
	{ "gtk_text_tag_event",  cast(void**)& gtk_text_tag_event},
	{ "gtk_text_attributes_new",  cast(void**)& gtk_text_attributes_new},
	{ "gtk_text_attributes_copy",  cast(void**)& gtk_text_attributes_copy},
	{ "gtk_text_attributes_copy_values",  cast(void**)& gtk_text_attributes_copy_values},
	{ "gtk_text_attributes_unref",  cast(void**)& gtk_text_attributes_unref},
	{ "gtk_text_attributes_ref",  cast(void**)& gtk_text_attributes_ref},
	{ "gtk_text_tag_table_new",  cast(void**)& gtk_text_tag_table_new},
	{ "gtk_text_tag_table_add",  cast(void**)& gtk_text_tag_table_add},
	{ "gtk_text_tag_table_remove",  cast(void**)& gtk_text_tag_table_remove},
	{ "gtk_text_tag_table_lookup",  cast(void**)& gtk_text_tag_table_lookup},
	{ "gtk_text_tag_table_foreach",  cast(void**)& gtk_text_tag_table_foreach},
	{ "gtk_text_tag_table_get_size",  cast(void**)& gtk_text_tag_table_get_size},
	{ "gtk_text_view_new",  cast(void**)& gtk_text_view_new},
	{ "gtk_text_view_new_with_buffer",  cast(void**)& gtk_text_view_new_with_buffer},
	{ "gtk_text_view_set_buffer",  cast(void**)& gtk_text_view_set_buffer},
	{ "gtk_text_view_get_buffer",  cast(void**)& gtk_text_view_get_buffer},
	{ "gtk_text_view_scroll_to_mark",  cast(void**)& gtk_text_view_scroll_to_mark},
	{ "gtk_text_view_scroll_to_iter",  cast(void**)& gtk_text_view_scroll_to_iter},
	{ "gtk_text_view_scroll_mark_onscreen",  cast(void**)& gtk_text_view_scroll_mark_onscreen},
	{ "gtk_text_view_move_mark_onscreen",  cast(void**)& gtk_text_view_move_mark_onscreen},
	{ "gtk_text_view_place_cursor_onscreen",  cast(void**)& gtk_text_view_place_cursor_onscreen},
	{ "gtk_text_view_get_visible_rect",  cast(void**)& gtk_text_view_get_visible_rect},
	{ "gtk_text_view_get_iter_location",  cast(void**)& gtk_text_view_get_iter_location},
	{ "gtk_text_view_get_line_at_y",  cast(void**)& gtk_text_view_get_line_at_y},
	{ "gtk_text_view_get_line_yrange",  cast(void**)& gtk_text_view_get_line_yrange},
	{ "gtk_text_view_get_iter_at_location",  cast(void**)& gtk_text_view_get_iter_at_location},
	{ "gtk_text_view_get_iter_at_position",  cast(void**)& gtk_text_view_get_iter_at_position},
	{ "gtk_text_view_buffer_to_window_coords",  cast(void**)& gtk_text_view_buffer_to_window_coords},
	{ "gtk_text_view_window_to_buffer_coords",  cast(void**)& gtk_text_view_window_to_buffer_coords},
	{ "gtk_text_view_get_window",  cast(void**)& gtk_text_view_get_window},
	{ "gtk_text_view_get_window_type",  cast(void**)& gtk_text_view_get_window_type},
	{ "gtk_text_view_set_border_window_size",  cast(void**)& gtk_text_view_set_border_window_size},
	{ "gtk_text_view_get_border_window_size",  cast(void**)& gtk_text_view_get_border_window_size},
	{ "gtk_text_view_forward_display_line",  cast(void**)& gtk_text_view_forward_display_line},
	{ "gtk_text_view_backward_display_line",  cast(void**)& gtk_text_view_backward_display_line},
	{ "gtk_text_view_forward_display_line_end",  cast(void**)& gtk_text_view_forward_display_line_end},
	{ "gtk_text_view_backward_display_line_start",  cast(void**)& gtk_text_view_backward_display_line_start},
	{ "gtk_text_view_starts_display_line",  cast(void**)& gtk_text_view_starts_display_line},
	{ "gtk_text_view_move_visually",  cast(void**)& gtk_text_view_move_visually},
	{ "gtk_text_view_add_child_at_anchor",  cast(void**)& gtk_text_view_add_child_at_anchor},
	{ "gtk_text_view_add_child_in_window",  cast(void**)& gtk_text_view_add_child_in_window},
	{ "gtk_text_view_move_child",  cast(void**)& gtk_text_view_move_child},
	{ "gtk_text_view_set_wrap_mode",  cast(void**)& gtk_text_view_set_wrap_mode},
	{ "gtk_text_view_get_wrap_mode",  cast(void**)& gtk_text_view_get_wrap_mode},
	{ "gtk_text_view_set_editable",  cast(void**)& gtk_text_view_set_editable},
	{ "gtk_text_view_get_editable",  cast(void**)& gtk_text_view_get_editable},
	{ "gtk_text_view_set_cursor_visible",  cast(void**)& gtk_text_view_set_cursor_visible},
	{ "gtk_text_view_get_cursor_visible",  cast(void**)& gtk_text_view_get_cursor_visible},
	{ "gtk_text_view_set_overwrite",  cast(void**)& gtk_text_view_set_overwrite},
	{ "gtk_text_view_get_overwrite",  cast(void**)& gtk_text_view_get_overwrite},
	{ "gtk_text_view_set_pixels_above_lines",  cast(void**)& gtk_text_view_set_pixels_above_lines},
	{ "gtk_text_view_get_pixels_above_lines",  cast(void**)& gtk_text_view_get_pixels_above_lines},
	{ "gtk_text_view_set_pixels_below_lines",  cast(void**)& gtk_text_view_set_pixels_below_lines},
	{ "gtk_text_view_get_pixels_below_lines",  cast(void**)& gtk_text_view_get_pixels_below_lines},
	{ "gtk_text_view_set_pixels_inside_wrap",  cast(void**)& gtk_text_view_set_pixels_inside_wrap},
	{ "gtk_text_view_get_pixels_inside_wrap",  cast(void**)& gtk_text_view_get_pixels_inside_wrap},
	{ "gtk_text_view_set_justification",  cast(void**)& gtk_text_view_set_justification},
	{ "gtk_text_view_get_justification",  cast(void**)& gtk_text_view_get_justification},
	{ "gtk_text_view_set_left_margin",  cast(void**)& gtk_text_view_set_left_margin},
	{ "gtk_text_view_get_left_margin",  cast(void**)& gtk_text_view_get_left_margin},
	{ "gtk_text_view_set_right_margin",  cast(void**)& gtk_text_view_set_right_margin},
	{ "gtk_text_view_get_right_margin",  cast(void**)& gtk_text_view_get_right_margin},
	{ "gtk_text_view_set_indent",  cast(void**)& gtk_text_view_set_indent},
	{ "gtk_text_view_get_indent",  cast(void**)& gtk_text_view_get_indent},
	{ "gtk_text_view_set_tabs",  cast(void**)& gtk_text_view_set_tabs},
	{ "gtk_text_view_get_tabs",  cast(void**)& gtk_text_view_get_tabs},
	{ "gtk_text_view_set_accepts_tab",  cast(void**)& gtk_text_view_set_accepts_tab},
	{ "gtk_text_view_get_accepts_tab",  cast(void**)& gtk_text_view_get_accepts_tab},
	{ "gtk_text_view_get_default_attributes",  cast(void**)& gtk_text_view_get_default_attributes},
	{ "gtk_text_child_anchor_new",  cast(void**)& gtk_text_child_anchor_new},
	{ "gtk_text_child_anchor_get_widgets",  cast(void**)& gtk_text_child_anchor_get_widgets},
	{ "gtk_text_child_anchor_get_deleted",  cast(void**)& gtk_text_child_anchor_get_deleted},
	{ "gtk_tree_path_new",  cast(void**)& gtk_tree_path_new},
	{ "gtk_tree_path_new_from_string",  cast(void**)& gtk_tree_path_new_from_string},
	{ "gtk_tree_path_new_from_indices",  cast(void**)& gtk_tree_path_new_from_indices},
	{ "gtk_tree_path_to_string",  cast(void**)& gtk_tree_path_to_string},
	{ "gtk_tree_path_new_first",  cast(void**)& gtk_tree_path_new_first},
	{ "gtk_tree_path_append_index",  cast(void**)& gtk_tree_path_append_index},
	{ "gtk_tree_path_prepend_index",  cast(void**)& gtk_tree_path_prepend_index},
	{ "gtk_tree_path_get_depth",  cast(void**)& gtk_tree_path_get_depth},
	{ "gtk_tree_path_get_indices",  cast(void**)& gtk_tree_path_get_indices},
	{ "gtk_tree_path_free",  cast(void**)& gtk_tree_path_free},
	{ "gtk_tree_path_copy",  cast(void**)& gtk_tree_path_copy},
	{ "gtk_tree_path_compare",  cast(void**)& gtk_tree_path_compare},
	{ "gtk_tree_path_next",  cast(void**)& gtk_tree_path_next},
	{ "gtk_tree_path_prev",  cast(void**)& gtk_tree_path_prev},
	{ "gtk_tree_path_up",  cast(void**)& gtk_tree_path_up},
	{ "gtk_tree_path_down",  cast(void**)& gtk_tree_path_down},
	{ "gtk_tree_path_is_ancestor",  cast(void**)& gtk_tree_path_is_ancestor},
	{ "gtk_tree_path_is_descendant",  cast(void**)& gtk_tree_path_is_descendant},
	{ "gtk_tree_model_get_flags",  cast(void**)& gtk_tree_model_get_flags},
	{ "gtk_tree_model_get_n_columns",  cast(void**)& gtk_tree_model_get_n_columns},
	{ "gtk_tree_model_get_column_type",  cast(void**)& gtk_tree_model_get_column_type},
	{ "gtk_tree_model_get_iter",  cast(void**)& gtk_tree_model_get_iter},
	{ "gtk_tree_model_get_iter_from_string",  cast(void**)& gtk_tree_model_get_iter_from_string},
	{ "gtk_tree_model_get_iter_first",  cast(void**)& gtk_tree_model_get_iter_first},
	{ "gtk_tree_model_get_path",  cast(void**)& gtk_tree_model_get_path},
	{ "gtk_tree_model_get_value",  cast(void**)& gtk_tree_model_get_value},
	{ "gtk_tree_model_iter_next",  cast(void**)& gtk_tree_model_iter_next},
	{ "gtk_tree_model_iter_children",  cast(void**)& gtk_tree_model_iter_children},
	{ "gtk_tree_model_iter_has_child",  cast(void**)& gtk_tree_model_iter_has_child},
	{ "gtk_tree_model_iter_n_children",  cast(void**)& gtk_tree_model_iter_n_children},
	{ "gtk_tree_model_iter_nth_child",  cast(void**)& gtk_tree_model_iter_nth_child},
	{ "gtk_tree_model_iter_parent",  cast(void**)& gtk_tree_model_iter_parent},
	{ "gtk_tree_model_get_string_from_iter",  cast(void**)& gtk_tree_model_get_string_from_iter},
	{ "gtk_tree_model_ref_node",  cast(void**)& gtk_tree_model_ref_node},
	{ "gtk_tree_model_unref_node",  cast(void**)& gtk_tree_model_unref_node},
	{ "gtk_tree_model_get",  cast(void**)& gtk_tree_model_get},
	{ "gtk_tree_model_get_valist",  cast(void**)& gtk_tree_model_get_valist},
	{ "gtk_tree_model_foreach",  cast(void**)& gtk_tree_model_foreach},
	{ "gtk_tree_model_row_changed",  cast(void**)& gtk_tree_model_row_changed},
	{ "gtk_tree_model_row_inserted",  cast(void**)& gtk_tree_model_row_inserted},
	{ "gtk_tree_model_row_has_child_toggled",  cast(void**)& gtk_tree_model_row_has_child_toggled},
	{ "gtk_tree_model_row_deleted",  cast(void**)& gtk_tree_model_row_deleted},
	{ "gtk_tree_model_rows_reordered",  cast(void**)& gtk_tree_model_rows_reordered},
	{ "gtk_tree_iter_copy",  cast(void**)& gtk_tree_iter_copy},
	{ "gtk_tree_iter_free",  cast(void**)& gtk_tree_iter_free},
	{ "gtk_tree_row_reference_new",  cast(void**)& gtk_tree_row_reference_new},
	{ "gtk_tree_row_reference_new_proxy",  cast(void**)& gtk_tree_row_reference_new_proxy},
	{ "gtk_tree_row_reference_get_model",  cast(void**)& gtk_tree_row_reference_get_model},
	{ "gtk_tree_row_reference_get_path",  cast(void**)& gtk_tree_row_reference_get_path},
	{ "gtk_tree_row_reference_valid",  cast(void**)& gtk_tree_row_reference_valid},
	{ "gtk_tree_row_reference_free",  cast(void**)& gtk_tree_row_reference_free},
	{ "gtk_tree_row_reference_copy",  cast(void**)& gtk_tree_row_reference_copy},
	{ "gtk_tree_row_reference_inserted",  cast(void**)& gtk_tree_row_reference_inserted},
	{ "gtk_tree_row_reference_deleted",  cast(void**)& gtk_tree_row_reference_deleted},
	{ "gtk_tree_row_reference_reordered",  cast(void**)& gtk_tree_row_reference_reordered},
	{ "gtk_tree_selection_set_mode",  cast(void**)& gtk_tree_selection_set_mode},
	{ "gtk_tree_selection_get_mode",  cast(void**)& gtk_tree_selection_get_mode},
	{ "gtk_tree_selection_set_select_function",  cast(void**)& gtk_tree_selection_set_select_function},
	{ "gtk_tree_selection_get_user_data",  cast(void**)& gtk_tree_selection_get_user_data},
	{ "gtk_tree_selection_get_tree_view",  cast(void**)& gtk_tree_selection_get_tree_view},
	{ "gtk_tree_selection_get_selected",  cast(void**)& gtk_tree_selection_get_selected},
	{ "gtk_tree_selection_selected_foreach",  cast(void**)& gtk_tree_selection_selected_foreach},
	{ "gtk_tree_selection_get_selected_rows",  cast(void**)& gtk_tree_selection_get_selected_rows},
	{ "gtk_tree_selection_count_selected_rows",  cast(void**)& gtk_tree_selection_count_selected_rows},
	{ "gtk_tree_selection_select_path",  cast(void**)& gtk_tree_selection_select_path},
	{ "gtk_tree_selection_unselect_path",  cast(void**)& gtk_tree_selection_unselect_path},
	{ "gtk_tree_selection_path_is_selected",  cast(void**)& gtk_tree_selection_path_is_selected},
	{ "gtk_tree_selection_select_iter",  cast(void**)& gtk_tree_selection_select_iter},
	{ "gtk_tree_selection_unselect_iter",  cast(void**)& gtk_tree_selection_unselect_iter},
	{ "gtk_tree_selection_iter_is_selected",  cast(void**)& gtk_tree_selection_iter_is_selected},
	{ "gtk_tree_selection_select_all",  cast(void**)& gtk_tree_selection_select_all},
	{ "gtk_tree_selection_unselect_all",  cast(void**)& gtk_tree_selection_unselect_all},
	{ "gtk_tree_selection_select_range",  cast(void**)& gtk_tree_selection_select_range},
	{ "gtk_tree_selection_unselect_range",  cast(void**)& gtk_tree_selection_unselect_range},
	{ "gtk_tree_view_column_new",  cast(void**)& gtk_tree_view_column_new},
	{ "gtk_tree_view_column_new_with_attributes",  cast(void**)& gtk_tree_view_column_new_with_attributes},
	{ "gtk_tree_view_column_pack_start",  cast(void**)& gtk_tree_view_column_pack_start},
	{ "gtk_tree_view_column_pack_end",  cast(void**)& gtk_tree_view_column_pack_end},
	{ "gtk_tree_view_column_clear",  cast(void**)& gtk_tree_view_column_clear},
	{ "gtk_tree_view_column_get_cell_renderers",  cast(void**)& gtk_tree_view_column_get_cell_renderers},
	{ "gtk_tree_view_column_add_attribute",  cast(void**)& gtk_tree_view_column_add_attribute},
	{ "gtk_tree_view_column_set_attributes",  cast(void**)& gtk_tree_view_column_set_attributes},
	{ "gtk_tree_view_column_set_cell_data_func",  cast(void**)& gtk_tree_view_column_set_cell_data_func},
	{ "gtk_tree_view_column_clear_attributes",  cast(void**)& gtk_tree_view_column_clear_attributes},
	{ "gtk_tree_view_column_set_spacing",  cast(void**)& gtk_tree_view_column_set_spacing},
	{ "gtk_tree_view_column_get_spacing",  cast(void**)& gtk_tree_view_column_get_spacing},
	{ "gtk_tree_view_column_set_visible",  cast(void**)& gtk_tree_view_column_set_visible},
	{ "gtk_tree_view_column_get_visible",  cast(void**)& gtk_tree_view_column_get_visible},
	{ "gtk_tree_view_column_set_resizable",  cast(void**)& gtk_tree_view_column_set_resizable},
	{ "gtk_tree_view_column_get_resizable",  cast(void**)& gtk_tree_view_column_get_resizable},
	{ "gtk_tree_view_column_set_sizing",  cast(void**)& gtk_tree_view_column_set_sizing},
	{ "gtk_tree_view_column_get_sizing",  cast(void**)& gtk_tree_view_column_get_sizing},
	{ "gtk_tree_view_column_get_width",  cast(void**)& gtk_tree_view_column_get_width},
	{ "gtk_tree_view_column_get_fixed_width",  cast(void**)& gtk_tree_view_column_get_fixed_width},
	{ "gtk_tree_view_column_set_fixed_width",  cast(void**)& gtk_tree_view_column_set_fixed_width},
	{ "gtk_tree_view_column_set_min_width",  cast(void**)& gtk_tree_view_column_set_min_width},
	{ "gtk_tree_view_column_get_min_width",  cast(void**)& gtk_tree_view_column_get_min_width},
	{ "gtk_tree_view_column_set_max_width",  cast(void**)& gtk_tree_view_column_set_max_width},
	{ "gtk_tree_view_column_get_max_width",  cast(void**)& gtk_tree_view_column_get_max_width},
	{ "gtk_tree_view_column_clicked",  cast(void**)& gtk_tree_view_column_clicked},
	{ "gtk_tree_view_column_set_title",  cast(void**)& gtk_tree_view_column_set_title},
	{ "gtk_tree_view_column_get_title",  cast(void**)& gtk_tree_view_column_get_title},
	{ "gtk_tree_view_column_set_expand",  cast(void**)& gtk_tree_view_column_set_expand},
	{ "gtk_tree_view_column_get_expand",  cast(void**)& gtk_tree_view_column_get_expand},
	{ "gtk_tree_view_column_set_clickable",  cast(void**)& gtk_tree_view_column_set_clickable},
	{ "gtk_tree_view_column_get_clickable",  cast(void**)& gtk_tree_view_column_get_clickable},
	{ "gtk_tree_view_column_set_widget",  cast(void**)& gtk_tree_view_column_set_widget},
	{ "gtk_tree_view_column_get_widget",  cast(void**)& gtk_tree_view_column_get_widget},
	{ "gtk_tree_view_column_set_alignment",  cast(void**)& gtk_tree_view_column_set_alignment},
	{ "gtk_tree_view_column_get_alignment",  cast(void**)& gtk_tree_view_column_get_alignment},
	{ "gtk_tree_view_column_set_reorderable",  cast(void**)& gtk_tree_view_column_set_reorderable},
	{ "gtk_tree_view_column_get_reorderable",  cast(void**)& gtk_tree_view_column_get_reorderable},
	{ "gtk_tree_view_column_set_sort_column_id",  cast(void**)& gtk_tree_view_column_set_sort_column_id},
	{ "gtk_tree_view_column_get_sort_column_id",  cast(void**)& gtk_tree_view_column_get_sort_column_id},
	{ "gtk_tree_view_column_set_sort_indicator",  cast(void**)& gtk_tree_view_column_set_sort_indicator},
	{ "gtk_tree_view_column_get_sort_indicator",  cast(void**)& gtk_tree_view_column_get_sort_indicator},
	{ "gtk_tree_view_column_set_sort_order",  cast(void**)& gtk_tree_view_column_set_sort_order},
	{ "gtk_tree_view_column_get_sort_order",  cast(void**)& gtk_tree_view_column_get_sort_order},
	{ "gtk_tree_view_column_cell_set_cell_data",  cast(void**)& gtk_tree_view_column_cell_set_cell_data},
	{ "gtk_tree_view_column_cell_get_size",  cast(void**)& gtk_tree_view_column_cell_get_size},
	{ "gtk_tree_view_column_cell_get_position",  cast(void**)& gtk_tree_view_column_cell_get_position},
	{ "gtk_tree_view_column_cell_is_visible",  cast(void**)& gtk_tree_view_column_cell_is_visible},
	{ "gtk_tree_view_column_focus_cell",  cast(void**)& gtk_tree_view_column_focus_cell},
	{ "gtk_tree_view_column_queue_resize",  cast(void**)& gtk_tree_view_column_queue_resize},
	{ "gtk_tree_view_column_get_tree_view",  cast(void**)& gtk_tree_view_column_get_tree_view},
	{ "gtk_tree_view_new",  cast(void**)& gtk_tree_view_new},
	{ "gtk_tree_view_get_level_indentation",  cast(void**)& gtk_tree_view_get_level_indentation},
	{ "gtk_tree_view_get_show_expanders",  cast(void**)& gtk_tree_view_get_show_expanders},
	{ "gtk_tree_view_set_level_indentation",  cast(void**)& gtk_tree_view_set_level_indentation},
	{ "gtk_tree_view_set_show_expanders",  cast(void**)& gtk_tree_view_set_show_expanders},
	{ "gtk_tree_view_new_with_model",  cast(void**)& gtk_tree_view_new_with_model},
	{ "gtk_tree_view_get_model",  cast(void**)& gtk_tree_view_get_model},
	{ "gtk_tree_view_set_model",  cast(void**)& gtk_tree_view_set_model},
	{ "gtk_tree_view_get_selection",  cast(void**)& gtk_tree_view_get_selection},
	{ "gtk_tree_view_get_hadjustment",  cast(void**)& gtk_tree_view_get_hadjustment},
	{ "gtk_tree_view_set_hadjustment",  cast(void**)& gtk_tree_view_set_hadjustment},
	{ "gtk_tree_view_get_vadjustment",  cast(void**)& gtk_tree_view_get_vadjustment},
	{ "gtk_tree_view_set_vadjustment",  cast(void**)& gtk_tree_view_set_vadjustment},
	{ "gtk_tree_view_get_headers_visible",  cast(void**)& gtk_tree_view_get_headers_visible},
	{ "gtk_tree_view_set_headers_visible",  cast(void**)& gtk_tree_view_set_headers_visible},
	{ "gtk_tree_view_columns_autosize",  cast(void**)& gtk_tree_view_columns_autosize},
	{ "gtk_tree_view_get_headers_clickable",  cast(void**)& gtk_tree_view_get_headers_clickable},
	{ "gtk_tree_view_set_headers_clickable",  cast(void**)& gtk_tree_view_set_headers_clickable},
	{ "gtk_tree_view_set_rules_hint",  cast(void**)& gtk_tree_view_set_rules_hint},
	{ "gtk_tree_view_get_rules_hint",  cast(void**)& gtk_tree_view_get_rules_hint},
	{ "gtk_tree_view_append_column",  cast(void**)& gtk_tree_view_append_column},
	{ "gtk_tree_view_remove_column",  cast(void**)& gtk_tree_view_remove_column},
	{ "gtk_tree_view_insert_column",  cast(void**)& gtk_tree_view_insert_column},
	{ "gtk_tree_view_insert_column_with_attributes",  cast(void**)& gtk_tree_view_insert_column_with_attributes},
	{ "gtk_tree_view_insert_column_with_data_func",  cast(void**)& gtk_tree_view_insert_column_with_data_func},
	{ "gtk_tree_view_get_column",  cast(void**)& gtk_tree_view_get_column},
	{ "gtk_tree_view_get_columns",  cast(void**)& gtk_tree_view_get_columns},
	{ "gtk_tree_view_move_column_after",  cast(void**)& gtk_tree_view_move_column_after},
	{ "gtk_tree_view_set_expander_column",  cast(void**)& gtk_tree_view_set_expander_column},
	{ "gtk_tree_view_get_expander_column",  cast(void**)& gtk_tree_view_get_expander_column},
	{ "gtk_tree_view_set_column_drag_function",  cast(void**)& gtk_tree_view_set_column_drag_function},
	{ "gtk_tree_view_scroll_to_point",  cast(void**)& gtk_tree_view_scroll_to_point},
	{ "gtk_tree_view_scroll_to_cell",  cast(void**)& gtk_tree_view_scroll_to_cell},
	{ "gtk_tree_view_set_cursor",  cast(void**)& gtk_tree_view_set_cursor},
	{ "gtk_tree_view_set_cursor_on_cell",  cast(void**)& gtk_tree_view_set_cursor_on_cell},
	{ "gtk_tree_view_get_cursor",  cast(void**)& gtk_tree_view_get_cursor},
	{ "gtk_tree_view_row_activated",  cast(void**)& gtk_tree_view_row_activated},
	{ "gtk_tree_view_expand_all",  cast(void**)& gtk_tree_view_expand_all},
	{ "gtk_tree_view_collapse_all",  cast(void**)& gtk_tree_view_collapse_all},
	{ "gtk_tree_view_expand_to_path",  cast(void**)& gtk_tree_view_expand_to_path},
	{ "gtk_tree_view_expand_row",  cast(void**)& gtk_tree_view_expand_row},
	{ "gtk_tree_view_collapse_row",  cast(void**)& gtk_tree_view_collapse_row},
	{ "gtk_tree_view_map_expanded_rows",  cast(void**)& gtk_tree_view_map_expanded_rows},
	{ "gtk_tree_view_row_expanded",  cast(void**)& gtk_tree_view_row_expanded},
	{ "gtk_tree_view_set_reorderable",  cast(void**)& gtk_tree_view_set_reorderable},
	{ "gtk_tree_view_get_reorderable",  cast(void**)& gtk_tree_view_get_reorderable},
	{ "gtk_tree_view_get_path_at_pos",  cast(void**)& gtk_tree_view_get_path_at_pos},
	{ "gtk_tree_view_get_cell_area",  cast(void**)& gtk_tree_view_get_cell_area},
	{ "gtk_tree_view_get_background_area",  cast(void**)& gtk_tree_view_get_background_area},
	{ "gtk_tree_view_get_visible_rect",  cast(void**)& gtk_tree_view_get_visible_rect},
	{ "gtk_tree_view_get_visible_range",  cast(void**)& gtk_tree_view_get_visible_range},
	{ "gtk_tree_view_get_bin_window",  cast(void**)& gtk_tree_view_get_bin_window},
	{ "gtk_tree_view_widget_to_tree_coords",  cast(void**)& gtk_tree_view_widget_to_tree_coords},
	{ "gtk_tree_view_tree_to_widget_coords",  cast(void**)& gtk_tree_view_tree_to_widget_coords},
	{ "gtk_tree_view_convert_bin_window_to_tree_coords",  cast(void**)& gtk_tree_view_convert_bin_window_to_tree_coords},
	{ "gtk_tree_view_convert_bin_window_to_widget_coords",  cast(void**)& gtk_tree_view_convert_bin_window_to_widget_coords},
	{ "gtk_tree_view_convert_tree_to_bin_window_coords",  cast(void**)& gtk_tree_view_convert_tree_to_bin_window_coords},
	{ "gtk_tree_view_convert_tree_to_widget_coords",  cast(void**)& gtk_tree_view_convert_tree_to_widget_coords},
	{ "gtk_tree_view_convert_widget_to_bin_window_coords",  cast(void**)& gtk_tree_view_convert_widget_to_bin_window_coords},
	{ "gtk_tree_view_convert_widget_to_tree_coords",  cast(void**)& gtk_tree_view_convert_widget_to_tree_coords},
	{ "gtk_tree_view_enable_model_drag_dest",  cast(void**)& gtk_tree_view_enable_model_drag_dest},
	{ "gtk_tree_view_enable_model_drag_source",  cast(void**)& gtk_tree_view_enable_model_drag_source},
	{ "gtk_tree_view_unset_rows_drag_source",  cast(void**)& gtk_tree_view_unset_rows_drag_source},
	{ "gtk_tree_view_unset_rows_drag_dest",  cast(void**)& gtk_tree_view_unset_rows_drag_dest},
	{ "gtk_tree_view_set_drag_dest_row",  cast(void**)& gtk_tree_view_set_drag_dest_row},
	{ "gtk_tree_view_get_drag_dest_row",  cast(void**)& gtk_tree_view_get_drag_dest_row},
	{ "gtk_tree_view_get_dest_row_at_pos",  cast(void**)& gtk_tree_view_get_dest_row_at_pos},
	{ "gtk_tree_view_create_row_drag_icon",  cast(void**)& gtk_tree_view_create_row_drag_icon},
	{ "gtk_tree_view_set_enable_search",  cast(void**)& gtk_tree_view_set_enable_search},
	{ "gtk_tree_view_get_enable_search",  cast(void**)& gtk_tree_view_get_enable_search},
	{ "gtk_tree_view_get_search_column",  cast(void**)& gtk_tree_view_get_search_column},
	{ "gtk_tree_view_set_search_column",  cast(void**)& gtk_tree_view_set_search_column},
	{ "gtk_tree_view_get_search_equal_func",  cast(void**)& gtk_tree_view_get_search_equal_func},
	{ "gtk_tree_view_set_search_equal_func",  cast(void**)& gtk_tree_view_set_search_equal_func},
	{ "gtk_tree_view_get_search_entry",  cast(void**)& gtk_tree_view_get_search_entry},
	{ "gtk_tree_view_set_search_entry",  cast(void**)& gtk_tree_view_set_search_entry},
	{ "gtk_tree_view_get_search_position_func",  cast(void**)& gtk_tree_view_get_search_position_func},
	{ "gtk_tree_view_set_search_position_func",  cast(void**)& gtk_tree_view_set_search_position_func},
	{ "gtk_tree_view_get_fixed_height_mode",  cast(void**)& gtk_tree_view_get_fixed_height_mode},
	{ "gtk_tree_view_set_fixed_height_mode",  cast(void**)& gtk_tree_view_set_fixed_height_mode},
	{ "gtk_tree_view_get_hover_selection",  cast(void**)& gtk_tree_view_get_hover_selection},
	{ "gtk_tree_view_set_hover_selection",  cast(void**)& gtk_tree_view_set_hover_selection},
	{ "gtk_tree_view_get_hover_expand",  cast(void**)& gtk_tree_view_get_hover_expand},
	{ "gtk_tree_view_set_hover_expand",  cast(void**)& gtk_tree_view_set_hover_expand},
	{ "gtk_tree_view_set_destroy_count_func",  cast(void**)& gtk_tree_view_set_destroy_count_func},
	{ "gtk_tree_view_get_row_separator_func",  cast(void**)& gtk_tree_view_get_row_separator_func},
	{ "gtk_tree_view_set_row_separator_func",  cast(void**)& gtk_tree_view_set_row_separator_func},
	{ "gtk_tree_view_get_rubber_banding",  cast(void**)& gtk_tree_view_get_rubber_banding},
	{ "gtk_tree_view_set_rubber_banding",  cast(void**)& gtk_tree_view_set_rubber_banding},
	{ "gtk_tree_view_is_rubber_banding_active",  cast(void**)& gtk_tree_view_is_rubber_banding_active},
	{ "gtk_tree_view_get_enable_tree_lines",  cast(void**)& gtk_tree_view_get_enable_tree_lines},
	{ "gtk_tree_view_set_enable_tree_lines",  cast(void**)& gtk_tree_view_set_enable_tree_lines},
	{ "gtk_tree_view_get_grid_lines",  cast(void**)& gtk_tree_view_get_grid_lines},
	{ "gtk_tree_view_set_grid_lines",  cast(void**)& gtk_tree_view_set_grid_lines},
	{ "gtk_tree_view_set_tooltip_row",  cast(void**)& gtk_tree_view_set_tooltip_row},
	{ "gtk_tree_view_set_tooltip_cell",  cast(void**)& gtk_tree_view_set_tooltip_cell},
	{ "gtk_tree_view_get_tooltip_context",  cast(void**)& gtk_tree_view_get_tooltip_context},
	{ "gtk_tree_view_get_tooltip_column",  cast(void**)& gtk_tree_view_get_tooltip_column},
	{ "gtk_tree_view_set_tooltip_column",  cast(void**)& gtk_tree_view_set_tooltip_column},
	{ "gtk_tree_drag_source_drag_data_delete",  cast(void**)& gtk_tree_drag_source_drag_data_delete},
	{ "gtk_tree_drag_source_drag_data_get",  cast(void**)& gtk_tree_drag_source_drag_data_get},
	{ "gtk_tree_drag_source_row_draggable",  cast(void**)& gtk_tree_drag_source_row_draggable},
	{ "gtk_tree_set_row_drag_data",  cast(void**)& gtk_tree_set_row_drag_data},
	{ "gtk_tree_get_row_drag_data",  cast(void**)& gtk_tree_get_row_drag_data},
	{ "gtk_tree_drag_dest_drag_data_received",  cast(void**)& gtk_tree_drag_dest_drag_data_received},
	{ "gtk_tree_drag_dest_row_drop_possible",  cast(void**)& gtk_tree_drag_dest_row_drop_possible},
	{ "gtk_cell_view_new",  cast(void**)& gtk_cell_view_new},
	{ "gtk_cell_view_new_with_text",  cast(void**)& gtk_cell_view_new_with_text},
	{ "gtk_cell_view_new_with_markup",  cast(void**)& gtk_cell_view_new_with_markup},
	{ "gtk_cell_view_new_with_pixbuf",  cast(void**)& gtk_cell_view_new_with_pixbuf},
	{ "gtk_cell_view_set_model",  cast(void**)& gtk_cell_view_set_model},
	{ "gtk_cell_view_set_displayed_row",  cast(void**)& gtk_cell_view_set_displayed_row},
	{ "gtk_cell_view_get_displayed_row",  cast(void**)& gtk_cell_view_get_displayed_row},
	{ "gtk_cell_view_get_size_of_row",  cast(void**)& gtk_cell_view_get_size_of_row},
	{ "gtk_cell_view_set_background_color",  cast(void**)& gtk_cell_view_set_background_color},
	{ "gtk_cell_view_get_cell_renderers",  cast(void**)& gtk_cell_view_get_cell_renderers},
	{ "gtk_icon_view_new",  cast(void**)& gtk_icon_view_new},
	{ "gtk_icon_view_new_with_model",  cast(void**)& gtk_icon_view_new_with_model},
	{ "gtk_icon_view_set_model",  cast(void**)& gtk_icon_view_set_model},
	{ "gtk_icon_view_get_model",  cast(void**)& gtk_icon_view_get_model},
	{ "gtk_icon_view_set_text_column",  cast(void**)& gtk_icon_view_set_text_column},
	{ "gtk_icon_view_get_text_column",  cast(void**)& gtk_icon_view_get_text_column},
	{ "gtk_icon_view_set_markup_column",  cast(void**)& gtk_icon_view_set_markup_column},
	{ "gtk_icon_view_get_markup_column",  cast(void**)& gtk_icon_view_get_markup_column},
	{ "gtk_icon_view_set_pixbuf_column",  cast(void**)& gtk_icon_view_set_pixbuf_column},
	{ "gtk_icon_view_get_pixbuf_column",  cast(void**)& gtk_icon_view_get_pixbuf_column},
	{ "gtk_icon_view_get_path_at_pos",  cast(void**)& gtk_icon_view_get_path_at_pos},
	{ "gtk_icon_view_get_item_at_pos",  cast(void**)& gtk_icon_view_get_item_at_pos},
	{ "gtk_icon_view_convert_widget_to_bin_window_coords",  cast(void**)& gtk_icon_view_convert_widget_to_bin_window_coords},
	{ "gtk_icon_view_set_cursor",  cast(void**)& gtk_icon_view_set_cursor},
	{ "gtk_icon_view_get_cursor",  cast(void**)& gtk_icon_view_get_cursor},
	{ "gtk_icon_view_selected_foreach",  cast(void**)& gtk_icon_view_selected_foreach},
	{ "gtk_icon_view_set_selection_mode",  cast(void**)& gtk_icon_view_set_selection_mode},
	{ "gtk_icon_view_get_selection_mode",  cast(void**)& gtk_icon_view_get_selection_mode},
	{ "gtk_icon_view_set_orientation",  cast(void**)& gtk_icon_view_set_orientation},
	{ "gtk_icon_view_get_orientation",  cast(void**)& gtk_icon_view_get_orientation},
	{ "gtk_icon_view_set_columns",  cast(void**)& gtk_icon_view_set_columns},
	{ "gtk_icon_view_get_columns",  cast(void**)& gtk_icon_view_get_columns},
	{ "gtk_icon_view_set_item_width",  cast(void**)& gtk_icon_view_set_item_width},
	{ "gtk_icon_view_get_item_width",  cast(void**)& gtk_icon_view_get_item_width},
	{ "gtk_icon_view_set_spacing",  cast(void**)& gtk_icon_view_set_spacing},
	{ "gtk_icon_view_get_spacing",  cast(void**)& gtk_icon_view_get_spacing},
	{ "gtk_icon_view_set_row_spacing",  cast(void**)& gtk_icon_view_set_row_spacing},
	{ "gtk_icon_view_get_row_spacing",  cast(void**)& gtk_icon_view_get_row_spacing},
	{ "gtk_icon_view_set_column_spacing",  cast(void**)& gtk_icon_view_set_column_spacing},
	{ "gtk_icon_view_get_column_spacing",  cast(void**)& gtk_icon_view_get_column_spacing},
	{ "gtk_icon_view_set_margin",  cast(void**)& gtk_icon_view_set_margin},
	{ "gtk_icon_view_get_margin",  cast(void**)& gtk_icon_view_get_margin},
	{ "gtk_icon_view_select_path",  cast(void**)& gtk_icon_view_select_path},
	{ "gtk_icon_view_unselect_path",  cast(void**)& gtk_icon_view_unselect_path},
	{ "gtk_icon_view_path_is_selected",  cast(void**)& gtk_icon_view_path_is_selected},
	{ "gtk_icon_view_get_selected_items",  cast(void**)& gtk_icon_view_get_selected_items},
	{ "gtk_icon_view_select_all",  cast(void**)& gtk_icon_view_select_all},
	{ "gtk_icon_view_unselect_all",  cast(void**)& gtk_icon_view_unselect_all},
	{ "gtk_icon_view_item_activated",  cast(void**)& gtk_icon_view_item_activated},
	{ "gtk_icon_view_scroll_to_path",  cast(void**)& gtk_icon_view_scroll_to_path},
	{ "gtk_icon_view_get_visible_range",  cast(void**)& gtk_icon_view_get_visible_range},
	{ "gtk_icon_view_set_tooltip_item",  cast(void**)& gtk_icon_view_set_tooltip_item},
	{ "gtk_icon_view_set_tooltip_cell",  cast(void**)& gtk_icon_view_set_tooltip_cell},
	{ "gtk_icon_view_get_tooltip_context",  cast(void**)& gtk_icon_view_get_tooltip_context},
	{ "gtk_icon_view_set_tooltip_column",  cast(void**)& gtk_icon_view_set_tooltip_column},
	{ "gtk_icon_view_get_tooltip_column",  cast(void**)& gtk_icon_view_get_tooltip_column},
	{ "gtk_icon_view_enable_model_drag_source",  cast(void**)& gtk_icon_view_enable_model_drag_source},
	{ "gtk_icon_view_enable_model_drag_dest",  cast(void**)& gtk_icon_view_enable_model_drag_dest},
	{ "gtk_icon_view_unset_model_drag_source",  cast(void**)& gtk_icon_view_unset_model_drag_source},
	{ "gtk_icon_view_unset_model_drag_dest",  cast(void**)& gtk_icon_view_unset_model_drag_dest},
	{ "gtk_icon_view_set_reorderable",  cast(void**)& gtk_icon_view_set_reorderable},
	{ "gtk_icon_view_get_reorderable",  cast(void**)& gtk_icon_view_get_reorderable},
	{ "gtk_icon_view_set_drag_dest_item",  cast(void**)& gtk_icon_view_set_drag_dest_item},
	{ "gtk_icon_view_get_drag_dest_item",  cast(void**)& gtk_icon_view_get_drag_dest_item},
	{ "gtk_icon_view_get_dest_item_at_pos",  cast(void**)& gtk_icon_view_get_dest_item_at_pos},
	{ "gtk_icon_view_create_drag_icon",  cast(void**)& gtk_icon_view_create_drag_icon},
	{ "gtk_tree_sortable_sort_column_changed",  cast(void**)& gtk_tree_sortable_sort_column_changed},
	{ "gtk_tree_sortable_get_sort_column_id",  cast(void**)& gtk_tree_sortable_get_sort_column_id},
	{ "gtk_tree_sortable_set_sort_column_id",  cast(void**)& gtk_tree_sortable_set_sort_column_id},
	{ "gtk_tree_sortable_set_sort_func",  cast(void**)& gtk_tree_sortable_set_sort_func},
	{ "gtk_tree_sortable_set_default_sort_func",  cast(void**)& gtk_tree_sortable_set_default_sort_func},
	{ "gtk_tree_sortable_has_default_sort_func",  cast(void**)& gtk_tree_sortable_has_default_sort_func},
	{ "gtk_tree_model_sort_new_with_model",  cast(void**)& gtk_tree_model_sort_new_with_model},
	{ "gtk_tree_model_sort_get_model",  cast(void**)& gtk_tree_model_sort_get_model},
	{ "gtk_tree_model_sort_convert_child_path_to_path",  cast(void**)& gtk_tree_model_sort_convert_child_path_to_path},
	{ "gtk_tree_model_sort_convert_child_iter_to_iter",  cast(void**)& gtk_tree_model_sort_convert_child_iter_to_iter},
	{ "gtk_tree_model_sort_convert_path_to_child_path",  cast(void**)& gtk_tree_model_sort_convert_path_to_child_path},
	{ "gtk_tree_model_sort_convert_iter_to_child_iter",  cast(void**)& gtk_tree_model_sort_convert_iter_to_child_iter},
	{ "gtk_tree_model_sort_reset_default_sort_func",  cast(void**)& gtk_tree_model_sort_reset_default_sort_func},
	{ "gtk_tree_model_sort_clear_cache",  cast(void**)& gtk_tree_model_sort_clear_cache},
	{ "gtk_tree_model_sort_iter_is_valid",  cast(void**)& gtk_tree_model_sort_iter_is_valid},
	{ "gtk_tree_model_filter_new",  cast(void**)& gtk_tree_model_filter_new},
	{ "gtk_tree_model_filter_set_visible_func",  cast(void**)& gtk_tree_model_filter_set_visible_func},
	{ "gtk_tree_model_filter_set_modify_func",  cast(void**)& gtk_tree_model_filter_set_modify_func},
	{ "gtk_tree_model_filter_set_visible_column",  cast(void**)& gtk_tree_model_filter_set_visible_column},
	{ "gtk_tree_model_filter_get_model",  cast(void**)& gtk_tree_model_filter_get_model},
	{ "gtk_tree_model_filter_convert_child_iter_to_iter",  cast(void**)& gtk_tree_model_filter_convert_child_iter_to_iter},
	{ "gtk_tree_model_filter_convert_iter_to_child_iter",  cast(void**)& gtk_tree_model_filter_convert_iter_to_child_iter},
	{ "gtk_tree_model_filter_convert_child_path_to_path",  cast(void**)& gtk_tree_model_filter_convert_child_path_to_path},
	{ "gtk_tree_model_filter_convert_path_to_child_path",  cast(void**)& gtk_tree_model_filter_convert_path_to_child_path},
	{ "gtk_tree_model_filter_refilter",  cast(void**)& gtk_tree_model_filter_refilter},
	{ "gtk_tree_model_filter_clear_cache",  cast(void**)& gtk_tree_model_filter_clear_cache},
	{ "gtk_cell_layout_pack_start",  cast(void**)& gtk_cell_layout_pack_start},
	{ "gtk_cell_layout_pack_end",  cast(void**)& gtk_cell_layout_pack_end},
	{ "gtk_cell_layout_get_cells",  cast(void**)& gtk_cell_layout_get_cells},
	{ "gtk_cell_layout_reorder",  cast(void**)& gtk_cell_layout_reorder},
	{ "gtk_cell_layout_clear",  cast(void**)& gtk_cell_layout_clear},
	{ "gtk_cell_layout_set_attributes",  cast(void**)& gtk_cell_layout_set_attributes},
	{ "gtk_cell_layout_add_attribute",  cast(void**)& gtk_cell_layout_add_attribute},
	{ "gtk_cell_layout_set_cell_data_func",  cast(void**)& gtk_cell_layout_set_cell_data_func},
	{ "gtk_cell_layout_clear_attributes",  cast(void**)& gtk_cell_layout_clear_attributes},
	{ "gtk_cell_renderer_get_size",  cast(void**)& gtk_cell_renderer_get_size},
	{ "gtk_cell_renderer_render",  cast(void**)& gtk_cell_renderer_render},
	{ "gtk_cell_renderer_activate",  cast(void**)& gtk_cell_renderer_activate},
	{ "gtk_cell_renderer_start_editing",  cast(void**)& gtk_cell_renderer_start_editing},
	{ "gtk_cell_renderer_editing_canceled",  cast(void**)& gtk_cell_renderer_editing_canceled},
	{ "gtk_cell_renderer_stop_editing",  cast(void**)& gtk_cell_renderer_stop_editing},
	{ "gtk_cell_renderer_get_fixed_size",  cast(void**)& gtk_cell_renderer_get_fixed_size},
	{ "gtk_cell_renderer_set_fixed_size",  cast(void**)& gtk_cell_renderer_set_fixed_size},
	{ "gtk_cell_editable_start_editing",  cast(void**)& gtk_cell_editable_start_editing},
	{ "gtk_cell_editable_editing_done",  cast(void**)& gtk_cell_editable_editing_done},
	{ "gtk_cell_editable_remove_widget",  cast(void**)& gtk_cell_editable_remove_widget},
	{ "gtk_cell_renderer_accel_new",  cast(void**)& gtk_cell_renderer_accel_new},
	{ "gtk_cell_renderer_combo_new",  cast(void**)& gtk_cell_renderer_combo_new},
	{ "gtk_cell_renderer_pixbuf_new",  cast(void**)& gtk_cell_renderer_pixbuf_new},
	{ "gtk_cell_renderer_progress_new",  cast(void**)& gtk_cell_renderer_progress_new},
	{ "gtk_cell_renderer_spin_new",  cast(void**)& gtk_cell_renderer_spin_new},
	{ "gtk_cell_renderer_text_new",  cast(void**)& gtk_cell_renderer_text_new},
	{ "gtk_cell_renderer_text_set_fixed_height_from_font",  cast(void**)& gtk_cell_renderer_text_set_fixed_height_from_font},
	{ "gtk_cell_renderer_toggle_new",  cast(void**)& gtk_cell_renderer_toggle_new},
	{ "gtk_cell_renderer_toggle_get_radio",  cast(void**)& gtk_cell_renderer_toggle_get_radio},
	{ "gtk_cell_renderer_toggle_set_radio",  cast(void**)& gtk_cell_renderer_toggle_set_radio},
	{ "gtk_cell_renderer_toggle_get_active",  cast(void**)& gtk_cell_renderer_toggle_get_active},
	{ "gtk_cell_renderer_toggle_set_active",  cast(void**)& gtk_cell_renderer_toggle_set_active},
	{ "gtk_list_store_new",  cast(void**)& gtk_list_store_new},
	{ "gtk_list_store_newv",  cast(void**)& gtk_list_store_newv},
	{ "gtk_list_store_set_column_types",  cast(void**)& gtk_list_store_set_column_types},
	{ "gtk_list_store_set",  cast(void**)& gtk_list_store_set},
	{ "gtk_list_store_set_valist",  cast(void**)& gtk_list_store_set_valist},
	{ "gtk_list_store_set_value",  cast(void**)& gtk_list_store_set_value},
	{ "gtk_list_store_set_valuesv",  cast(void**)& gtk_list_store_set_valuesv},
	{ "gtk_list_store_remove",  cast(void**)& gtk_list_store_remove},
	{ "gtk_list_store_insert",  cast(void**)& gtk_list_store_insert},
	{ "gtk_list_store_insert_before",  cast(void**)& gtk_list_store_insert_before},
	{ "gtk_list_store_insert_after",  cast(void**)& gtk_list_store_insert_after},
	{ "gtk_list_store_insert_with_values",  cast(void**)& gtk_list_store_insert_with_values},
	{ "gtk_list_store_insert_with_valuesv",  cast(void**)& gtk_list_store_insert_with_valuesv},
	{ "gtk_list_store_prepend",  cast(void**)& gtk_list_store_prepend},
	{ "gtk_list_store_append",  cast(void**)& gtk_list_store_append},
	{ "gtk_list_store_clear",  cast(void**)& gtk_list_store_clear},
	{ "gtk_list_store_iter_is_valid",  cast(void**)& gtk_list_store_iter_is_valid},
	{ "gtk_list_store_reorder",  cast(void**)& gtk_list_store_reorder},
	{ "gtk_list_store_swap",  cast(void**)& gtk_list_store_swap},
	{ "gtk_list_store_move_before",  cast(void**)& gtk_list_store_move_before},
	{ "gtk_list_store_move_after",  cast(void**)& gtk_list_store_move_after},
	{ "gtk_tree_store_new",  cast(void**)& gtk_tree_store_new},
	{ "gtk_tree_store_newv",  cast(void**)& gtk_tree_store_newv},
	{ "gtk_tree_store_set_column_types",  cast(void**)& gtk_tree_store_set_column_types},
	{ "gtk_tree_store_set_value",  cast(void**)& gtk_tree_store_set_value},
	{ "gtk_tree_store_set",  cast(void**)& gtk_tree_store_set},
	{ "gtk_tree_store_set_valist",  cast(void**)& gtk_tree_store_set_valist},
	{ "gtk_tree_store_set_valuesv",  cast(void**)& gtk_tree_store_set_valuesv},
	{ "gtk_tree_store_remove",  cast(void**)& gtk_tree_store_remove},
	{ "gtk_tree_store_insert",  cast(void**)& gtk_tree_store_insert},
	{ "gtk_tree_store_insert_before",  cast(void**)& gtk_tree_store_insert_before},
	{ "gtk_tree_store_insert_after",  cast(void**)& gtk_tree_store_insert_after},
	{ "gtk_tree_store_insert_with_values",  cast(void**)& gtk_tree_store_insert_with_values},
	{ "gtk_tree_store_insert_with_valuesv",  cast(void**)& gtk_tree_store_insert_with_valuesv},
	{ "gtk_tree_store_prepend",  cast(void**)& gtk_tree_store_prepend},
	{ "gtk_tree_store_append",  cast(void**)& gtk_tree_store_append},
	{ "gtk_tree_store_is_ancestor",  cast(void**)& gtk_tree_store_is_ancestor},
	{ "gtk_tree_store_iter_depth",  cast(void**)& gtk_tree_store_iter_depth},
	{ "gtk_tree_store_clear",  cast(void**)& gtk_tree_store_clear},
	{ "gtk_tree_store_iter_is_valid",  cast(void**)& gtk_tree_store_iter_is_valid},
	{ "gtk_tree_store_reorder",  cast(void**)& gtk_tree_store_reorder},
	{ "gtk_tree_store_swap",  cast(void**)& gtk_tree_store_swap},
	{ "gtk_tree_store_move_before",  cast(void**)& gtk_tree_store_move_before},
	{ "gtk_tree_store_move_after",  cast(void**)& gtk_tree_store_move_after},
	{ "gtk_combo_box_new",  cast(void**)& gtk_combo_box_new},
	{ "gtk_combo_box_new_with_model",  cast(void**)& gtk_combo_box_new_with_model},
	{ "gtk_combo_box_get_wrap_width",  cast(void**)& gtk_combo_box_get_wrap_width},
	{ "gtk_combo_box_set_wrap_width",  cast(void**)& gtk_combo_box_set_wrap_width},
	{ "gtk_combo_box_get_row_span_column",  cast(void**)& gtk_combo_box_get_row_span_column},
	{ "gtk_combo_box_set_row_span_column",  cast(void**)& gtk_combo_box_set_row_span_column},
	{ "gtk_combo_box_get_column_span_column",  cast(void**)& gtk_combo_box_get_column_span_column},
	{ "gtk_combo_box_set_column_span_column",  cast(void**)& gtk_combo_box_set_column_span_column},
	{ "gtk_combo_box_get_active",  cast(void**)& gtk_combo_box_get_active},
	{ "gtk_combo_box_set_active",  cast(void**)& gtk_combo_box_set_active},
	{ "gtk_combo_box_get_active_iter",  cast(void**)& gtk_combo_box_get_active_iter},
	{ "gtk_combo_box_set_active_iter",  cast(void**)& gtk_combo_box_set_active_iter},
	{ "gtk_combo_box_get_model",  cast(void**)& gtk_combo_box_get_model},
	{ "gtk_combo_box_set_model",  cast(void**)& gtk_combo_box_set_model},
	{ "gtk_combo_box_new_text",  cast(void**)& gtk_combo_box_new_text},
	{ "gtk_combo_box_append_text",  cast(void**)& gtk_combo_box_append_text},
	{ "gtk_combo_box_insert_text",  cast(void**)& gtk_combo_box_insert_text},
	{ "gtk_combo_box_prepend_text",  cast(void**)& gtk_combo_box_prepend_text},
	{ "gtk_combo_box_remove_text",  cast(void**)& gtk_combo_box_remove_text},
	{ "gtk_combo_box_get_active_text",  cast(void**)& gtk_combo_box_get_active_text},
	{ "gtk_combo_box_popup",  cast(void**)& gtk_combo_box_popup},
	{ "gtk_combo_box_popdown",  cast(void**)& gtk_combo_box_popdown},
	{ "gtk_combo_box_get_popup_accessible",  cast(void**)& gtk_combo_box_get_popup_accessible},
	{ "gtk_combo_box_get_row_separator_func",  cast(void**)& gtk_combo_box_get_row_separator_func},
	{ "gtk_combo_box_set_row_separator_func",  cast(void**)& gtk_combo_box_set_row_separator_func},
	{ "gtk_combo_box_set_add_tearoffs",  cast(void**)& gtk_combo_box_set_add_tearoffs},
	{ "gtk_combo_box_get_add_tearoffs",  cast(void**)& gtk_combo_box_get_add_tearoffs},
	{ "gtk_combo_box_set_title",  cast(void**)& gtk_combo_box_set_title},
	{ "gtk_combo_box_get_title",  cast(void**)& gtk_combo_box_get_title},
	{ "gtk_combo_box_set_focus_on_click",  cast(void**)& gtk_combo_box_set_focus_on_click},
	{ "gtk_combo_box_get_focus_on_click",  cast(void**)& gtk_combo_box_get_focus_on_click},
	{ "gtk_combo_box_entry_new",  cast(void**)& gtk_combo_box_entry_new},
	{ "gtk_combo_box_entry_new_with_model",  cast(void**)& gtk_combo_box_entry_new_with_model},
	{ "gtk_combo_box_entry_new_text",  cast(void**)& gtk_combo_box_entry_new_text},
	{ "gtk_combo_box_entry_set_text_column",  cast(void**)& gtk_combo_box_entry_set_text_column},
	{ "gtk_combo_box_entry_get_text_column",  cast(void**)& gtk_combo_box_entry_get_text_column},
	{ "gtk_menu_new",  cast(void**)& gtk_menu_new},
	{ "gtk_menu_set_screen",  cast(void**)& gtk_menu_set_screen},
	{ "gtk_menu_reorder_child",  cast(void**)& gtk_menu_reorder_child},
	{ "gtk_menu_attach",  cast(void**)& gtk_menu_attach},
	{ "gtk_menu_popup",  cast(void**)& gtk_menu_popup},
	{ "gtk_menu_set_accel_group",  cast(void**)& gtk_menu_set_accel_group},
	{ "gtk_menu_get_accel_group",  cast(void**)& gtk_menu_get_accel_group},
	{ "gtk_menu_set_accel_path",  cast(void**)& gtk_menu_set_accel_path},
	{ "gtk_menu_set_title",  cast(void**)& gtk_menu_set_title},
	{ "gtk_menu_get_tearoff_state",  cast(void**)& gtk_menu_get_tearoff_state},
	{ "gtk_menu_get_title",  cast(void**)& gtk_menu_get_title},
	{ "gtk_menu_popdown",  cast(void**)& gtk_menu_popdown},
	{ "gtk_menu_reposition",  cast(void**)& gtk_menu_reposition},
	{ "gtk_menu_get_active",  cast(void**)& gtk_menu_get_active},
	{ "gtk_menu_set_active",  cast(void**)& gtk_menu_set_active},
	{ "gtk_menu_set_tearoff_state",  cast(void**)& gtk_menu_set_tearoff_state},
	{ "gtk_menu_attach_to_widget",  cast(void**)& gtk_menu_attach_to_widget},
	{ "gtk_menu_detach",  cast(void**)& gtk_menu_detach},
	{ "gtk_menu_get_attach_widget",  cast(void**)& gtk_menu_get_attach_widget},
	{ "gtk_menu_get_for_attach_widget",  cast(void**)& gtk_menu_get_for_attach_widget},
	{ "gtk_menu_set_monitor",  cast(void**)& gtk_menu_set_monitor},
	{ "gtk_menu_bar_new",  cast(void**)& gtk_menu_bar_new},
	{ "gtk_menu_bar_set_pack_direction",  cast(void**)& gtk_menu_bar_set_pack_direction},
	{ "gtk_menu_bar_get_pack_direction",  cast(void**)& gtk_menu_bar_get_pack_direction},
	{ "gtk_menu_bar_set_child_pack_direction",  cast(void**)& gtk_menu_bar_set_child_pack_direction},
	{ "gtk_menu_bar_get_child_pack_direction",  cast(void**)& gtk_menu_bar_get_child_pack_direction},
	{ "gtk_menu_item_new",  cast(void**)& gtk_menu_item_new},
	{ "gtk_menu_item_new_with_label",  cast(void**)& gtk_menu_item_new_with_label},
	{ "gtk_menu_item_new_with_mnemonic",  cast(void**)& gtk_menu_item_new_with_mnemonic},
	{ "gtk_menu_item_set_right_justified",  cast(void**)& gtk_menu_item_set_right_justified},
	{ "gtk_menu_item_set_submenu",  cast(void**)& gtk_menu_item_set_submenu},
	{ "gtk_menu_item_set_accel_path",  cast(void**)& gtk_menu_item_set_accel_path},
	{ "gtk_menu_item_remove_submenu",  cast(void**)& gtk_menu_item_remove_submenu},
	{ "gtk_menu_item_select",  cast(void**)& gtk_menu_item_select},
	{ "gtk_menu_item_deselect",  cast(void**)& gtk_menu_item_deselect},
	{ "gtk_menu_item_activate",  cast(void**)& gtk_menu_item_activate},
	{ "gtk_menu_item_toggle_size_request",  cast(void**)& gtk_menu_item_toggle_size_request},
	{ "gtk_menu_item_toggle_size_allocate",  cast(void**)& gtk_menu_item_toggle_size_allocate},
	{ "gtk_menu_item_get_right_justified",  cast(void**)& gtk_menu_item_get_right_justified},
	{ "gtk_menu_item_get_submenu",  cast(void**)& gtk_menu_item_get_submenu},
	{ "gtk_image_menu_item_set_image",  cast(void**)& gtk_image_menu_item_set_image},
	{ "gtk_image_menu_item_get_image",  cast(void**)& gtk_image_menu_item_get_image},
	{ "gtk_image_menu_item_new",  cast(void**)& gtk_image_menu_item_new},
	{ "gtk_image_menu_item_new_from_stock",  cast(void**)& gtk_image_menu_item_new_from_stock},
	{ "gtk_image_menu_item_new_with_label",  cast(void**)& gtk_image_menu_item_new_with_label},
	{ "gtk_image_menu_item_new_with_mnemonic",  cast(void**)& gtk_image_menu_item_new_with_mnemonic},
	{ "gtk_radio_menu_item_new",  cast(void**)& gtk_radio_menu_item_new},
	{ "gtk_radio_menu_item_new_with_label",  cast(void**)& gtk_radio_menu_item_new_with_label},
	{ "gtk_radio_menu_item_new_with_mnemonic",  cast(void**)& gtk_radio_menu_item_new_with_mnemonic},
	{ "gtk_radio_menu_item_new_from_widget",  cast(void**)& gtk_radio_menu_item_new_from_widget},
	{ "gtk_radio_menu_item_new_with_label_from_widget",  cast(void**)& gtk_radio_menu_item_new_with_label_from_widget},
	{ "gtk_radio_menu_item_new_with_mnemonic_from_widget",  cast(void**)& gtk_radio_menu_item_new_with_mnemonic_from_widget},
	{ "gtk_radio_menu_item_set_group",  cast(void**)& gtk_radio_menu_item_set_group},
	{ "gtk_radio_menu_item_get_group",  cast(void**)& gtk_radio_menu_item_get_group},
	{ "gtk_check_menu_item_new",  cast(void**)& gtk_check_menu_item_new},
	{ "gtk_check_menu_item_new_with_label",  cast(void**)& gtk_check_menu_item_new_with_label},
	{ "gtk_check_menu_item_new_with_mnemonic",  cast(void**)& gtk_check_menu_item_new_with_mnemonic},
	{ "gtk_check_menu_item_get_active",  cast(void**)& gtk_check_menu_item_get_active},
	{ "gtk_check_menu_item_set_active",  cast(void**)& gtk_check_menu_item_set_active},
	{ "gtk_check_menu_item_set_show_toggle",  cast(void**)& gtk_check_menu_item_set_show_toggle},
	{ "gtk_check_menu_item_toggled",  cast(void**)& gtk_check_menu_item_toggled},
	{ "gtk_check_menu_item_get_inconsistent",  cast(void**)& gtk_check_menu_item_get_inconsistent},
	{ "gtk_check_menu_item_set_inconsistent",  cast(void**)& gtk_check_menu_item_set_inconsistent},
	{ "gtk_check_menu_item_set_draw_as_radio",  cast(void**)& gtk_check_menu_item_set_draw_as_radio},
	{ "gtk_check_menu_item_get_draw_as_radio",  cast(void**)& gtk_check_menu_item_get_draw_as_radio},
	{ "gtk_separator_menu_item_new",  cast(void**)& gtk_separator_menu_item_new},
	{ "gtk_tearoff_menu_item_new",  cast(void**)& gtk_tearoff_menu_item_new},
	{ "gtk_toolbar_new",  cast(void**)& gtk_toolbar_new},
	{ "gtk_toolbar_insert",  cast(void**)& gtk_toolbar_insert},
	{ "gtk_toolbar_get_item_index",  cast(void**)& gtk_toolbar_get_item_index},
	{ "gtk_toolbar_get_n_items",  cast(void**)& gtk_toolbar_get_n_items},
	{ "gtk_toolbar_get_nth_item",  cast(void**)& gtk_toolbar_get_nth_item},
	{ "gtk_toolbar_get_drop_index",  cast(void**)& gtk_toolbar_get_drop_index},
	{ "gtk_toolbar_set_drop_highlight_item",  cast(void**)& gtk_toolbar_set_drop_highlight_item},
	{ "gtk_toolbar_set_show_arrow",  cast(void**)& gtk_toolbar_set_show_arrow},
	{ "gtk_toolbar_set_orientation",  cast(void**)& gtk_toolbar_set_orientation},
	{ "gtk_toolbar_set_tooltips",  cast(void**)& gtk_toolbar_set_tooltips},
	{ "gtk_toolbar_unset_icon_size",  cast(void**)& gtk_toolbar_unset_icon_size},
	{ "gtk_toolbar_get_show_arrow",  cast(void**)& gtk_toolbar_get_show_arrow},
	{ "gtk_toolbar_get_orientation",  cast(void**)& gtk_toolbar_get_orientation},
	{ "gtk_toolbar_get_style",  cast(void**)& gtk_toolbar_get_style},
	{ "gtk_toolbar_get_icon_size",  cast(void**)& gtk_toolbar_get_icon_size},
	{ "gtk_toolbar_get_tooltips",  cast(void**)& gtk_toolbar_get_tooltips},
	{ "gtk_toolbar_get_relief_style",  cast(void**)& gtk_toolbar_get_relief_style},
	{ "gtk_toolbar_append_item",  cast(void**)& gtk_toolbar_append_item},
	{ "gtk_toolbar_prepend_item",  cast(void**)& gtk_toolbar_prepend_item},
	{ "gtk_toolbar_insert_item",  cast(void**)& gtk_toolbar_insert_item},
	{ "gtk_toolbar_append_space",  cast(void**)& gtk_toolbar_append_space},
	{ "gtk_toolbar_prepend_space",  cast(void**)& gtk_toolbar_prepend_space},
	{ "gtk_toolbar_insert_space",  cast(void**)& gtk_toolbar_insert_space},
	{ "gtk_toolbar_append_element",  cast(void**)& gtk_toolbar_append_element},
	{ "gtk_toolbar_prepend_element",  cast(void**)& gtk_toolbar_prepend_element},
	{ "gtk_toolbar_insert_element",  cast(void**)& gtk_toolbar_insert_element},
	{ "gtk_toolbar_append_widget",  cast(void**)& gtk_toolbar_append_widget},
	{ "gtk_toolbar_prepend_widget",  cast(void**)& gtk_toolbar_prepend_widget},
	{ "gtk_toolbar_insert_widget",  cast(void**)& gtk_toolbar_insert_widget},
	{ "gtk_toolbar_set_style",  cast(void**)& gtk_toolbar_set_style},
	{ "gtk_toolbar_insert_stock",  cast(void**)& gtk_toolbar_insert_stock},
	{ "gtk_toolbar_set_icon_size",  cast(void**)& gtk_toolbar_set_icon_size},
	{ "gtk_toolbar_remove_space",  cast(void**)& gtk_toolbar_remove_space},
	{ "gtk_toolbar_unset_style",  cast(void**)& gtk_toolbar_unset_style},
	{ "gtk_tool_item_new",  cast(void**)& gtk_tool_item_new},
	{ "gtk_tool_item_set_homogeneous",  cast(void**)& gtk_tool_item_set_homogeneous},
	{ "gtk_tool_item_get_homogeneous",  cast(void**)& gtk_tool_item_get_homogeneous},
	{ "gtk_tool_item_set_expand",  cast(void**)& gtk_tool_item_set_expand},
	{ "gtk_tool_item_get_expand",  cast(void**)& gtk_tool_item_get_expand},
	{ "gtk_tool_item_set_tooltip",  cast(void**)& gtk_tool_item_set_tooltip},
	{ "gtk_tool_item_set_tooltip_text",  cast(void**)& gtk_tool_item_set_tooltip_text},
	{ "gtk_tool_item_set_tooltip_markup",  cast(void**)& gtk_tool_item_set_tooltip_markup},
	{ "gtk_tool_item_set_use_drag_window",  cast(void**)& gtk_tool_item_set_use_drag_window},
	{ "gtk_tool_item_get_use_drag_window",  cast(void**)& gtk_tool_item_get_use_drag_window},
	{ "gtk_tool_item_set_visible_horizontal",  cast(void**)& gtk_tool_item_set_visible_horizontal},
	{ "gtk_tool_item_get_visible_horizontal",  cast(void**)& gtk_tool_item_get_visible_horizontal},
	{ "gtk_tool_item_set_visible_vertical",  cast(void**)& gtk_tool_item_set_visible_vertical},
	{ "gtk_tool_item_get_visible_vertical",  cast(void**)& gtk_tool_item_get_visible_vertical},
	{ "gtk_tool_item_set_is_important",  cast(void**)& gtk_tool_item_set_is_important},
	{ "gtk_tool_item_get_is_important",  cast(void**)& gtk_tool_item_get_is_important},
	{ "gtk_tool_item_get_icon_size",  cast(void**)& gtk_tool_item_get_icon_size},
	{ "gtk_tool_item_get_orientation",  cast(void**)& gtk_tool_item_get_orientation},
	{ "gtk_tool_item_get_toolbar_style",  cast(void**)& gtk_tool_item_get_toolbar_style},
	{ "gtk_tool_item_get_relief_style",  cast(void**)& gtk_tool_item_get_relief_style},
	{ "gtk_tool_item_retrieve_proxy_menu_item",  cast(void**)& gtk_tool_item_retrieve_proxy_menu_item},
	{ "gtk_tool_item_get_proxy_menu_item",  cast(void**)& gtk_tool_item_get_proxy_menu_item},
	{ "gtk_tool_item_set_proxy_menu_item",  cast(void**)& gtk_tool_item_set_proxy_menu_item},
	{ "gtk_tool_item_rebuild_menu",  cast(void**)& gtk_tool_item_rebuild_menu},
	{ "gtk_separator_tool_item_new",  cast(void**)& gtk_separator_tool_item_new},
	{ "gtk_separator_tool_item_set_draw",  cast(void**)& gtk_separator_tool_item_set_draw},
	{ "gtk_separator_tool_item_get_draw",  cast(void**)& gtk_separator_tool_item_get_draw},
	{ "gtk_tool_button_new",  cast(void**)& gtk_tool_button_new},
	{ "gtk_tool_button_new_from_stock",  cast(void**)& gtk_tool_button_new_from_stock},
	{ "gtk_tool_button_set_label",  cast(void**)& gtk_tool_button_set_label},
	{ "gtk_tool_button_get_label",  cast(void**)& gtk_tool_button_get_label},
	{ "gtk_tool_button_set_use_underline",  cast(void**)& gtk_tool_button_set_use_underline},
	{ "gtk_tool_button_get_use_underline",  cast(void**)& gtk_tool_button_get_use_underline},
	{ "gtk_tool_button_set_stock_id",  cast(void**)& gtk_tool_button_set_stock_id},
	{ "gtk_tool_button_get_stock_id",  cast(void**)& gtk_tool_button_get_stock_id},
	{ "gtk_tool_button_set_icon_name",  cast(void**)& gtk_tool_button_set_icon_name},
	{ "gtk_tool_button_get_icon_name",  cast(void**)& gtk_tool_button_get_icon_name},
	{ "gtk_tool_button_set_icon_widget",  cast(void**)& gtk_tool_button_set_icon_widget},
	{ "gtk_tool_button_get_icon_widget",  cast(void**)& gtk_tool_button_get_icon_widget},
	{ "gtk_tool_button_set_label_widget",  cast(void**)& gtk_tool_button_set_label_widget},
	{ "gtk_tool_button_get_label_widget",  cast(void**)& gtk_tool_button_get_label_widget},
	{ "gtk_menu_tool_button_new",  cast(void**)& gtk_menu_tool_button_new},
	{ "gtk_menu_tool_button_new_from_stock",  cast(void**)& gtk_menu_tool_button_new_from_stock},
	{ "gtk_menu_tool_button_set_menu",  cast(void**)& gtk_menu_tool_button_set_menu},
	{ "gtk_menu_tool_button_get_menu",  cast(void**)& gtk_menu_tool_button_get_menu},
	{ "gtk_menu_tool_button_set_arrow_tooltip",  cast(void**)& gtk_menu_tool_button_set_arrow_tooltip},
	{ "gtk_menu_tool_button_set_arrow_tooltip_text",  cast(void**)& gtk_menu_tool_button_set_arrow_tooltip_text},
	{ "gtk_menu_tool_button_set_arrow_tooltip_markup",  cast(void**)& gtk_menu_tool_button_set_arrow_tooltip_markup},
	{ "gtk_toggle_tool_button_new",  cast(void**)& gtk_toggle_tool_button_new},
	{ "gtk_toggle_tool_button_new_from_stock",  cast(void**)& gtk_toggle_tool_button_new_from_stock},
	{ "gtk_toggle_tool_button_set_active",  cast(void**)& gtk_toggle_tool_button_set_active},
	{ "gtk_toggle_tool_button_get_active",  cast(void**)& gtk_toggle_tool_button_get_active},
	{ "gtk_radio_tool_button_new",  cast(void**)& gtk_radio_tool_button_new},
	{ "gtk_radio_tool_button_new_from_stock",  cast(void**)& gtk_radio_tool_button_new_from_stock},
	{ "gtk_radio_tool_button_new_from_widget",  cast(void**)& gtk_radio_tool_button_new_from_widget},
	{ "gtk_radio_tool_button_new_with_stock_from_widget",  cast(void**)& gtk_radio_tool_button_new_with_stock_from_widget},
	{ "gtk_radio_tool_button_get_group",  cast(void**)& gtk_radio_tool_button_get_group},
	{ "gtk_radio_tool_button_set_group",  cast(void**)& gtk_radio_tool_button_set_group},
	{ "gtk_ui_manager_new",  cast(void**)& gtk_ui_manager_new},
	{ "gtk_ui_manager_set_add_tearoffs",  cast(void**)& gtk_ui_manager_set_add_tearoffs},
	{ "gtk_ui_manager_get_add_tearoffs",  cast(void**)& gtk_ui_manager_get_add_tearoffs},
	{ "gtk_ui_manager_insert_action_group",  cast(void**)& gtk_ui_manager_insert_action_group},
	{ "gtk_ui_manager_remove_action_group",  cast(void**)& gtk_ui_manager_remove_action_group},
	{ "gtk_ui_manager_get_action_groups",  cast(void**)& gtk_ui_manager_get_action_groups},
	{ "gtk_ui_manager_get_accel_group",  cast(void**)& gtk_ui_manager_get_accel_group},
	{ "gtk_ui_manager_get_widget",  cast(void**)& gtk_ui_manager_get_widget},
	{ "gtk_ui_manager_get_toplevels",  cast(void**)& gtk_ui_manager_get_toplevels},
	{ "gtk_ui_manager_get_action",  cast(void**)& gtk_ui_manager_get_action},
	{ "gtk_ui_manager_add_ui_from_string",  cast(void**)& gtk_ui_manager_add_ui_from_string},
	{ "gtk_ui_manager_add_ui_from_file",  cast(void**)& gtk_ui_manager_add_ui_from_file},
	{ "gtk_ui_manager_new_merge_id",  cast(void**)& gtk_ui_manager_new_merge_id},
	{ "gtk_ui_manager_add_ui",  cast(void**)& gtk_ui_manager_add_ui},
	{ "gtk_ui_manager_remove_ui",  cast(void**)& gtk_ui_manager_remove_ui},
	{ "gtk_ui_manager_get_ui",  cast(void**)& gtk_ui_manager_get_ui},
	{ "gtk_ui_manager_ensure_update",  cast(void**)& gtk_ui_manager_ensure_update},
	{ "gtk_action_group_new",  cast(void**)& gtk_action_group_new},
	{ "gtk_action_group_get_name",  cast(void**)& gtk_action_group_get_name},
	{ "gtk_action_group_get_sensitive",  cast(void**)& gtk_action_group_get_sensitive},
	{ "gtk_action_group_set_sensitive",  cast(void**)& gtk_action_group_set_sensitive},
	{ "gtk_action_group_get_visible",  cast(void**)& gtk_action_group_get_visible},
	{ "gtk_action_group_set_visible",  cast(void**)& gtk_action_group_set_visible},
	{ "gtk_action_group_get_action",  cast(void**)& gtk_action_group_get_action},
	{ "gtk_action_group_list_actions",  cast(void**)& gtk_action_group_list_actions},
	{ "gtk_action_group_add_action",  cast(void**)& gtk_action_group_add_action},
	{ "gtk_action_group_add_action_with_accel",  cast(void**)& gtk_action_group_add_action_with_accel},
	{ "gtk_action_group_remove_action",  cast(void**)& gtk_action_group_remove_action},
	{ "gtk_action_group_add_actions",  cast(void**)& gtk_action_group_add_actions},
	{ "gtk_action_group_add_actions_full",  cast(void**)& gtk_action_group_add_actions_full},
	{ "gtk_action_group_add_toggle_actions",  cast(void**)& gtk_action_group_add_toggle_actions},
	{ "gtk_action_group_add_toggle_actions_full",  cast(void**)& gtk_action_group_add_toggle_actions_full},
	{ "gtk_action_group_add_radio_actions",  cast(void**)& gtk_action_group_add_radio_actions},
	{ "gtk_action_group_add_radio_actions_full",  cast(void**)& gtk_action_group_add_radio_actions_full},
	{ "gtk_action_group_set_translate_func",  cast(void**)& gtk_action_group_set_translate_func},
	{ "gtk_action_group_set_translation_domain",  cast(void**)& gtk_action_group_set_translation_domain},
	{ "gtk_action_group_translate_string",  cast(void**)& gtk_action_group_translate_string},
	{ "gtk_action_new",  cast(void**)& gtk_action_new},
	{ "gtk_action_get_name",  cast(void**)& gtk_action_get_name},
	{ "gtk_action_is_sensitive",  cast(void**)& gtk_action_is_sensitive},
	{ "gtk_action_get_sensitive",  cast(void**)& gtk_action_get_sensitive},
	{ "gtk_action_set_sensitive",  cast(void**)& gtk_action_set_sensitive},
	{ "gtk_action_is_visible",  cast(void**)& gtk_action_is_visible},
	{ "gtk_action_get_visible",  cast(void**)& gtk_action_get_visible},
	{ "gtk_action_set_visible",  cast(void**)& gtk_action_set_visible},
	{ "gtk_action_activate",  cast(void**)& gtk_action_activate},
	{ "gtk_action_create_icon",  cast(void**)& gtk_action_create_icon},
	{ "gtk_action_create_menu_item",  cast(void**)& gtk_action_create_menu_item},
	{ "gtk_action_create_tool_item",  cast(void**)& gtk_action_create_tool_item},
	{ "gtk_action_create_menu",  cast(void**)& gtk_action_create_menu},
	{ "gtk_action_connect_proxy",  cast(void**)& gtk_action_connect_proxy},
	{ "gtk_action_disconnect_proxy",  cast(void**)& gtk_action_disconnect_proxy},
	{ "gtk_action_get_proxies",  cast(void**)& gtk_action_get_proxies},
	{ "gtk_action_connect_accelerator",  cast(void**)& gtk_action_connect_accelerator},
	{ "gtk_action_disconnect_accelerator",  cast(void**)& gtk_action_disconnect_accelerator},
	{ "gtk_action_block_activate_from",  cast(void**)& gtk_action_block_activate_from},
	{ "gtk_action_unblock_activate_from",  cast(void**)& gtk_action_unblock_activate_from},
	{ "gtk_action_get_accel_path",  cast(void**)& gtk_action_get_accel_path},
	{ "gtk_action_set_accel_path",  cast(void**)& gtk_action_set_accel_path},
	{ "gtk_action_get_accel_closure",  cast(void**)& gtk_action_get_accel_closure},
	{ "gtk_action_set_accel_group",  cast(void**)& gtk_action_set_accel_group},
	{ "gtk_toggle_action_new",  cast(void**)& gtk_toggle_action_new},
	{ "gtk_toggle_action_toggled",  cast(void**)& gtk_toggle_action_toggled},
	{ "gtk_toggle_action_set_active",  cast(void**)& gtk_toggle_action_set_active},
	{ "gtk_toggle_action_get_active",  cast(void**)& gtk_toggle_action_get_active},
	{ "gtk_toggle_action_set_draw_as_radio",  cast(void**)& gtk_toggle_action_set_draw_as_radio},
	{ "gtk_toggle_action_get_draw_as_radio",  cast(void**)& gtk_toggle_action_get_draw_as_radio},
	{ "gtk_radio_action_new",  cast(void**)& gtk_radio_action_new},
	{ "gtk_radio_action_get_group",  cast(void**)& gtk_radio_action_get_group},
	{ "gtk_radio_action_set_group",  cast(void**)& gtk_radio_action_set_group},
	{ "gtk_radio_action_get_current_value",  cast(void**)& gtk_radio_action_get_current_value},
	{ "gtk_radio_action_set_current_value",  cast(void**)& gtk_radio_action_set_current_value},
	{ "gtk_recent_action_new",  cast(void**)& gtk_recent_action_new},
	{ "gtk_recent_action_new_for_manager",  cast(void**)& gtk_recent_action_new_for_manager},
	{ "gtk_recent_action_get_show_numbers",  cast(void**)& gtk_recent_action_get_show_numbers},
	{ "gtk_recent_action_set_show_numbers",  cast(void**)& gtk_recent_action_set_show_numbers},
	{ "gtk_color_button_new",  cast(void**)& gtk_color_button_new},
	{ "gtk_color_button_new_with_color",  cast(void**)& gtk_color_button_new_with_color},
	{ "gtk_color_button_set_color",  cast(void**)& gtk_color_button_set_color},
	{ "gtk_color_button_get_color",  cast(void**)& gtk_color_button_get_color},
	{ "gtk_color_button_set_alpha",  cast(void**)& gtk_color_button_set_alpha},
	{ "gtk_color_button_get_alpha",  cast(void**)& gtk_color_button_get_alpha},
	{ "gtk_color_button_set_use_alpha",  cast(void**)& gtk_color_button_set_use_alpha},
	{ "gtk_color_button_get_use_alpha",  cast(void**)& gtk_color_button_get_use_alpha},
	{ "gtk_color_button_set_title",  cast(void**)& gtk_color_button_set_title},
	{ "gtk_color_button_get_title",  cast(void**)& gtk_color_button_get_title},
	{ "gtk_color_selection_new",  cast(void**)& gtk_color_selection_new},
	{ "gtk_color_selection_set_update_policy",  cast(void**)& gtk_color_selection_set_update_policy},
	{ "gtk_color_selection_set_has_opacity_control",  cast(void**)& gtk_color_selection_set_has_opacity_control},
	{ "gtk_color_selection_get_has_opacity_control",  cast(void**)& gtk_color_selection_get_has_opacity_control},
	{ "gtk_color_selection_set_has_palette",  cast(void**)& gtk_color_selection_set_has_palette},
	{ "gtk_color_selection_get_has_palette",  cast(void**)& gtk_color_selection_get_has_palette},
	{ "gtk_color_selection_get_current_alpha",  cast(void**)& gtk_color_selection_get_current_alpha},
	{ "gtk_color_selection_set_current_alpha",  cast(void**)& gtk_color_selection_set_current_alpha},
	{ "gtk_color_selection_get_current_color",  cast(void**)& gtk_color_selection_get_current_color},
	{ "gtk_color_selection_set_current_color",  cast(void**)& gtk_color_selection_set_current_color},
	{ "gtk_color_selection_get_previous_alpha",  cast(void**)& gtk_color_selection_get_previous_alpha},
	{ "gtk_color_selection_set_previous_alpha",  cast(void**)& gtk_color_selection_set_previous_alpha},
	{ "gtk_color_selection_get_previous_color",  cast(void**)& gtk_color_selection_get_previous_color},
	{ "gtk_color_selection_set_previous_color",  cast(void**)& gtk_color_selection_set_previous_color},
	{ "gtk_color_selection_is_adjusting",  cast(void**)& gtk_color_selection_is_adjusting},
	{ "gtk_color_selection_palette_from_string",  cast(void**)& gtk_color_selection_palette_from_string},
	{ "gtk_color_selection_palette_to_string",  cast(void**)& gtk_color_selection_palette_to_string},
	{ "gtk_color_selection_set_change_palette_hook",  cast(void**)& gtk_color_selection_set_change_palette_hook},
	{ "gtk_color_selection_set_change_palette_with_screen_hook",  cast(void**)& gtk_color_selection_set_change_palette_with_screen_hook},
	{ "gtk_color_selection_set_color",  cast(void**)& gtk_color_selection_set_color},
	{ "gtk_color_selection_get_color",  cast(void**)& gtk_color_selection_get_color},
	{ "gtk_color_selection_dialog_new",  cast(void**)& gtk_color_selection_dialog_new},
	{ "gtk_file_chooser_set_action",  cast(void**)& gtk_file_chooser_set_action},
	{ "gtk_file_chooser_get_action",  cast(void**)& gtk_file_chooser_get_action},
	{ "gtk_file_chooser_set_local_only",  cast(void**)& gtk_file_chooser_set_local_only},
	{ "gtk_file_chooser_get_local_only",  cast(void**)& gtk_file_chooser_get_local_only},
	{ "gtk_file_chooser_set_select_multiple",  cast(void**)& gtk_file_chooser_set_select_multiple},
	{ "gtk_file_chooser_get_select_multiple",  cast(void**)& gtk_file_chooser_get_select_multiple},
	{ "gtk_file_chooser_set_show_hidden",  cast(void**)& gtk_file_chooser_set_show_hidden},
	{ "gtk_file_chooser_get_show_hidden",  cast(void**)& gtk_file_chooser_get_show_hidden},
	{ "gtk_file_chooser_set_do_overwrite_confirmation",  cast(void**)& gtk_file_chooser_set_do_overwrite_confirmation},
	{ "gtk_file_chooser_get_do_overwrite_confirmation",  cast(void**)& gtk_file_chooser_get_do_overwrite_confirmation},
	{ "gtk_file_chooser_set_current_name",  cast(void**)& gtk_file_chooser_set_current_name},
	{ "gtk_file_chooser_get_filename",  cast(void**)& gtk_file_chooser_get_filename},
	{ "gtk_file_chooser_set_filename",  cast(void**)& gtk_file_chooser_set_filename},
	{ "gtk_file_chooser_select_filename",  cast(void**)& gtk_file_chooser_select_filename},
	{ "gtk_file_chooser_unselect_filename",  cast(void**)& gtk_file_chooser_unselect_filename},
	{ "gtk_file_chooser_select_all",  cast(void**)& gtk_file_chooser_select_all},
	{ "gtk_file_chooser_unselect_all",  cast(void**)& gtk_file_chooser_unselect_all},
	{ "gtk_file_chooser_get_filenames",  cast(void**)& gtk_file_chooser_get_filenames},
	{ "gtk_file_chooser_set_current_folder",  cast(void**)& gtk_file_chooser_set_current_folder},
	{ "gtk_file_chooser_get_current_folder",  cast(void**)& gtk_file_chooser_get_current_folder},
	{ "gtk_file_chooser_get_uri",  cast(void**)& gtk_file_chooser_get_uri},
	{ "gtk_file_chooser_set_uri",  cast(void**)& gtk_file_chooser_set_uri},
	{ "gtk_file_chooser_select_uri",  cast(void**)& gtk_file_chooser_select_uri},
	{ "gtk_file_chooser_unselect_uri",  cast(void**)& gtk_file_chooser_unselect_uri},
	{ "gtk_file_chooser_get_uris",  cast(void**)& gtk_file_chooser_get_uris},
	{ "gtk_file_chooser_set_current_folder_uri",  cast(void**)& gtk_file_chooser_set_current_folder_uri},
	{ "gtk_file_chooser_get_current_folder_uri",  cast(void**)& gtk_file_chooser_get_current_folder_uri},
	{ "gtk_file_chooser_set_preview_widget",  cast(void**)& gtk_file_chooser_set_preview_widget},
	{ "gtk_file_chooser_get_preview_widget",  cast(void**)& gtk_file_chooser_get_preview_widget},
	{ "gtk_file_chooser_set_preview_widget_active",  cast(void**)& gtk_file_chooser_set_preview_widget_active},
	{ "gtk_file_chooser_get_preview_widget_active",  cast(void**)& gtk_file_chooser_get_preview_widget_active},
	{ "gtk_file_chooser_set_use_preview_label",  cast(void**)& gtk_file_chooser_set_use_preview_label},
	{ "gtk_file_chooser_get_use_preview_label",  cast(void**)& gtk_file_chooser_get_use_preview_label},
	{ "gtk_file_chooser_get_preview_filename",  cast(void**)& gtk_file_chooser_get_preview_filename},
	{ "gtk_file_chooser_get_preview_uri",  cast(void**)& gtk_file_chooser_get_preview_uri},
	{ "gtk_file_chooser_set_extra_widget",  cast(void**)& gtk_file_chooser_set_extra_widget},
	{ "gtk_file_chooser_get_extra_widget",  cast(void**)& gtk_file_chooser_get_extra_widget},
	{ "gtk_file_chooser_add_filter",  cast(void**)& gtk_file_chooser_add_filter},
	{ "gtk_file_chooser_remove_filter",  cast(void**)& gtk_file_chooser_remove_filter},
	{ "gtk_file_chooser_list_filters",  cast(void**)& gtk_file_chooser_list_filters},
	{ "gtk_file_chooser_set_filter",  cast(void**)& gtk_file_chooser_set_filter},
	{ "gtk_file_chooser_get_filter",  cast(void**)& gtk_file_chooser_get_filter},
	{ "gtk_file_chooser_add_shortcut_folder",  cast(void**)& gtk_file_chooser_add_shortcut_folder},
	{ "gtk_file_chooser_remove_shortcut_folder",  cast(void**)& gtk_file_chooser_remove_shortcut_folder},
	{ "gtk_file_chooser_list_shortcut_folders",  cast(void**)& gtk_file_chooser_list_shortcut_folders},
	{ "gtk_file_chooser_add_shortcut_folder_uri",  cast(void**)& gtk_file_chooser_add_shortcut_folder_uri},
	{ "gtk_file_chooser_remove_shortcut_folder_uri",  cast(void**)& gtk_file_chooser_remove_shortcut_folder_uri},
	{ "gtk_file_chooser_list_shortcut_folder_uris",  cast(void**)& gtk_file_chooser_list_shortcut_folder_uris},
	{ "gtk_file_chooser_button_new",  cast(void**)& gtk_file_chooser_button_new},
	{ "gtk_file_chooser_button_new_with_backend",  cast(void**)& gtk_file_chooser_button_new_with_backend},
	{ "gtk_file_chooser_button_new_with_dialog",  cast(void**)& gtk_file_chooser_button_new_with_dialog},
	{ "gtk_file_chooser_button_get_title",  cast(void**)& gtk_file_chooser_button_get_title},
	{ "gtk_file_chooser_button_set_title",  cast(void**)& gtk_file_chooser_button_set_title},
	{ "gtk_file_chooser_button_get_width_chars",  cast(void**)& gtk_file_chooser_button_get_width_chars},
	{ "gtk_file_chooser_button_set_width_chars",  cast(void**)& gtk_file_chooser_button_set_width_chars},
	{ "gtk_file_chooser_button_get_focus_on_click",  cast(void**)& gtk_file_chooser_button_get_focus_on_click},
	{ "gtk_file_chooser_button_set_focus_on_click",  cast(void**)& gtk_file_chooser_button_set_focus_on_click},
	{ "gtk_file_chooser_dialog_new",  cast(void**)& gtk_file_chooser_dialog_new},
	{ "gtk_file_chooser_dialog_new_with_backend",  cast(void**)& gtk_file_chooser_dialog_new_with_backend},
	{ "gtk_file_chooser_widget_new",  cast(void**)& gtk_file_chooser_widget_new},
	{ "gtk_file_chooser_widget_new_with_backend",  cast(void**)& gtk_file_chooser_widget_new_with_backend},
	{ "gtk_file_filter_new",  cast(void**)& gtk_file_filter_new},
	{ "gtk_file_filter_set_name",  cast(void**)& gtk_file_filter_set_name},
	{ "gtk_file_filter_get_name",  cast(void**)& gtk_file_filter_get_name},
	{ "gtk_file_filter_add_mime_type",  cast(void**)& gtk_file_filter_add_mime_type},
	{ "gtk_file_filter_add_pattern",  cast(void**)& gtk_file_filter_add_pattern},
	{ "gtk_file_filter_add_pixbuf_formats",  cast(void**)& gtk_file_filter_add_pixbuf_formats},
	{ "gtk_file_filter_add_custom",  cast(void**)& gtk_file_filter_add_custom},
	{ "gtk_file_filter_get_needed",  cast(void**)& gtk_file_filter_get_needed},
	{ "gtk_file_filter_filter",  cast(void**)& gtk_file_filter_filter},
	{ "gtk_font_button_new",  cast(void**)& gtk_font_button_new},
	{ "gtk_font_button_new_with_font",  cast(void**)& gtk_font_button_new_with_font},
	{ "gtk_font_button_set_font_name",  cast(void**)& gtk_font_button_set_font_name},
	{ "gtk_font_button_get_font_name",  cast(void**)& gtk_font_button_get_font_name},
	{ "gtk_font_button_set_show_style",  cast(void**)& gtk_font_button_set_show_style},
	{ "gtk_font_button_get_show_style",  cast(void**)& gtk_font_button_get_show_style},
	{ "gtk_font_button_set_show_size",  cast(void**)& gtk_font_button_set_show_size},
	{ "gtk_font_button_get_show_size",  cast(void**)& gtk_font_button_get_show_size},
	{ "gtk_font_button_set_use_font",  cast(void**)& gtk_font_button_set_use_font},
	{ "gtk_font_button_get_use_font",  cast(void**)& gtk_font_button_get_use_font},
	{ "gtk_font_button_set_use_size",  cast(void**)& gtk_font_button_set_use_size},
	{ "gtk_font_button_get_use_size",  cast(void**)& gtk_font_button_get_use_size},
	{ "gtk_font_button_set_title",  cast(void**)& gtk_font_button_set_title},
	{ "gtk_font_button_get_title",  cast(void**)& gtk_font_button_get_title},
	{ "gtk_font_selection_new",  cast(void**)& gtk_font_selection_new},
	{ "gtk_font_selection_get_font",  cast(void**)& gtk_font_selection_get_font},
	{ "gtk_font_selection_get_font_name",  cast(void**)& gtk_font_selection_get_font_name},
	{ "gtk_font_selection_set_font_name",  cast(void**)& gtk_font_selection_set_font_name},
	{ "gtk_font_selection_get_preview_text",  cast(void**)& gtk_font_selection_get_preview_text},
	{ "gtk_font_selection_set_preview_text",  cast(void**)& gtk_font_selection_set_preview_text},
	{ "gtk_font_selection_dialog_new",  cast(void**)& gtk_font_selection_dialog_new},
	{ "gtk_font_selection_dialog_get_font",  cast(void**)& gtk_font_selection_dialog_get_font},
	{ "gtk_font_selection_dialog_get_font_name",  cast(void**)& gtk_font_selection_dialog_get_font_name},
	{ "gtk_font_selection_dialog_set_font_name",  cast(void**)& gtk_font_selection_dialog_set_font_name},
	{ "gtk_font_selection_dialog_get_preview_text",  cast(void**)& gtk_font_selection_dialog_get_preview_text},
	{ "gtk_font_selection_dialog_set_preview_text",  cast(void**)& gtk_font_selection_dialog_set_preview_text},
	{ "gtk_input_dialog_new",  cast(void**)& gtk_input_dialog_new},
	{ "gtk_alignment_new",  cast(void**)& gtk_alignment_new},
	{ "gtk_alignment_set",  cast(void**)& gtk_alignment_set},
	{ "gtk_alignment_get_padding",  cast(void**)& gtk_alignment_get_padding},
	{ "gtk_alignment_set_padding",  cast(void**)& gtk_alignment_set_padding},
	{ "gtk_aspect_frame_new",  cast(void**)& gtk_aspect_frame_new},
	{ "gtk_aspect_frame_set",  cast(void**)& gtk_aspect_frame_set},
	{ "gtk_hbox_new",  cast(void**)& gtk_hbox_new},
	{ "gtk_vbox_new",  cast(void**)& gtk_vbox_new},
	{ "gtk_hbutton_box_new",  cast(void**)& gtk_hbutton_box_new},
	{ "gtk_hbutton_box_get_spacing_default",  cast(void**)& gtk_hbutton_box_get_spacing_default},
	{ "gtk_hbutton_box_get_layout_default",  cast(void**)& gtk_hbutton_box_get_layout_default},
	{ "gtk_hbutton_box_set_spacing_default",  cast(void**)& gtk_hbutton_box_set_spacing_default},
	{ "gtk_hbutton_box_set_layout_default",  cast(void**)& gtk_hbutton_box_set_layout_default},
	{ "gtk_vbutton_box_new",  cast(void**)& gtk_vbutton_box_new},
	{ "gtk_vbutton_box_get_spacing_default",  cast(void**)& gtk_vbutton_box_get_spacing_default},
	{ "gtk_vbutton_box_set_spacing_default",  cast(void**)& gtk_vbutton_box_set_spacing_default},
	{ "gtk_vbutton_box_get_layout_default",  cast(void**)& gtk_vbutton_box_get_layout_default},
	{ "gtk_vbutton_box_set_layout_default",  cast(void**)& gtk_vbutton_box_set_layout_default},
	{ "gtk_fixed_new",  cast(void**)& gtk_fixed_new},
	{ "gtk_fixed_put",  cast(void**)& gtk_fixed_put},
	{ "gtk_fixed_move",  cast(void**)& gtk_fixed_move},
	{ "gtk_fixed_get_has_window",  cast(void**)& gtk_fixed_get_has_window},
	{ "gtk_fixed_set_has_window",  cast(void**)& gtk_fixed_set_has_window},
	{ "gtk_hpaned_new",  cast(void**)& gtk_hpaned_new},
	{ "gtk_vpaned_new",  cast(void**)& gtk_vpaned_new},
	{ "gtk_layout_new",  cast(void**)& gtk_layout_new},
	{ "gtk_layout_put",  cast(void**)& gtk_layout_put},
	{ "gtk_layout_move",  cast(void**)& gtk_layout_move},
	{ "gtk_layout_set_size",  cast(void**)& gtk_layout_set_size},
	{ "gtk_layout_get_size",  cast(void**)& gtk_layout_get_size},
	{ "gtk_layout_freeze",  cast(void**)& gtk_layout_freeze},
	{ "gtk_layout_thaw",  cast(void**)& gtk_layout_thaw},
	{ "gtk_layout_get_hadjustment",  cast(void**)& gtk_layout_get_hadjustment},
	{ "gtk_layout_get_vadjustment",  cast(void**)& gtk_layout_get_vadjustment},
	{ "gtk_layout_set_hadjustment",  cast(void**)& gtk_layout_set_hadjustment},
	{ "gtk_layout_set_vadjustment",  cast(void**)& gtk_layout_set_vadjustment},
	{ "gtk_notebook_new",  cast(void**)& gtk_notebook_new},
	{ "gtk_notebook_append_page",  cast(void**)& gtk_notebook_append_page},
	{ "gtk_notebook_append_page_menu",  cast(void**)& gtk_notebook_append_page_menu},
	{ "gtk_notebook_prepend_page",  cast(void**)& gtk_notebook_prepend_page},
	{ "gtk_notebook_prepend_page_menu",  cast(void**)& gtk_notebook_prepend_page_menu},
	{ "gtk_notebook_insert_page",  cast(void**)& gtk_notebook_insert_page},
	{ "gtk_notebook_insert_page_menu",  cast(void**)& gtk_notebook_insert_page_menu},
	{ "gtk_notebook_remove_page",  cast(void**)& gtk_notebook_remove_page},
	{ "gtk_notebook_page_num",  cast(void**)& gtk_notebook_page_num},
	{ "gtk_notebook_next_page",  cast(void**)& gtk_notebook_next_page},
	{ "gtk_notebook_prev_page",  cast(void**)& gtk_notebook_prev_page},
	{ "gtk_notebook_reorder_child",  cast(void**)& gtk_notebook_reorder_child},
	{ "gtk_notebook_set_tab_pos",  cast(void**)& gtk_notebook_set_tab_pos},
	{ "gtk_notebook_set_show_tabs",  cast(void**)& gtk_notebook_set_show_tabs},
	{ "gtk_notebook_set_show_border",  cast(void**)& gtk_notebook_set_show_border},
	{ "gtk_notebook_set_scrollable",  cast(void**)& gtk_notebook_set_scrollable},
	{ "gtk_notebook_set_tab_border",  cast(void**)& gtk_notebook_set_tab_border},
	{ "gtk_notebook_popup_enable",  cast(void**)& gtk_notebook_popup_enable},
	{ "gtk_notebook_popup_disable",  cast(void**)& gtk_notebook_popup_disable},
	{ "gtk_notebook_get_current_page",  cast(void**)& gtk_notebook_get_current_page},
	{ "gtk_notebook_get_menu_label",  cast(void**)& gtk_notebook_get_menu_label},
	{ "gtk_notebook_get_nth_page",  cast(void**)& gtk_notebook_get_nth_page},
	{ "gtk_notebook_get_n_pages",  cast(void**)& gtk_notebook_get_n_pages},
	{ "gtk_notebook_get_tab_label",  cast(void**)& gtk_notebook_get_tab_label},
	{ "gtk_notebook_query_tab_label_packing",  cast(void**)& gtk_notebook_query_tab_label_packing},
	{ "gtk_notebook_set_homogeneous_tabs",  cast(void**)& gtk_notebook_set_homogeneous_tabs},
	{ "gtk_notebook_set_menu_label",  cast(void**)& gtk_notebook_set_menu_label},
	{ "gtk_notebook_set_menu_label_text",  cast(void**)& gtk_notebook_set_menu_label_text},
	{ "gtk_notebook_set_tab_hborder",  cast(void**)& gtk_notebook_set_tab_hborder},
	{ "gtk_notebook_set_tab_label",  cast(void**)& gtk_notebook_set_tab_label},
	{ "gtk_notebook_set_tab_label_packing",  cast(void**)& gtk_notebook_set_tab_label_packing},
	{ "gtk_notebook_set_tab_label_text",  cast(void**)& gtk_notebook_set_tab_label_text},
	{ "gtk_notebook_set_tab_vborder",  cast(void**)& gtk_notebook_set_tab_vborder},
	{ "gtk_notebook_set_tab_reorderable",  cast(void**)& gtk_notebook_set_tab_reorderable},
	{ "gtk_notebook_set_tab_detachable",  cast(void**)& gtk_notebook_set_tab_detachable},
	{ "gtk_notebook_get_menu_label_text",  cast(void**)& gtk_notebook_get_menu_label_text},
	{ "gtk_notebook_get_scrollable",  cast(void**)& gtk_notebook_get_scrollable},
	{ "gtk_notebook_get_show_border",  cast(void**)& gtk_notebook_get_show_border},
	{ "gtk_notebook_get_show_tabs",  cast(void**)& gtk_notebook_get_show_tabs},
	{ "gtk_notebook_get_tab_label_text",  cast(void**)& gtk_notebook_get_tab_label_text},
	{ "gtk_notebook_get_tab_pos",  cast(void**)& gtk_notebook_get_tab_pos},
	{ "gtk_notebook_get_tab_reorderable",  cast(void**)& gtk_notebook_get_tab_reorderable},
	{ "gtk_notebook_get_tab_detachable",  cast(void**)& gtk_notebook_get_tab_detachable},
	{ "gtk_notebook_set_current_page",  cast(void**)& gtk_notebook_set_current_page},
	{ "gtk_notebook_set_group_id",  cast(void**)& gtk_notebook_set_group_id},
	{ "gtk_notebook_get_group_id",  cast(void**)& gtk_notebook_get_group_id},
	{ "gtk_notebook_set_group",  cast(void**)& gtk_notebook_set_group},
	{ "gtk_notebook_get_group",  cast(void**)& gtk_notebook_get_group},
	{ "gtk_notebook_set_window_creation_hook",  cast(void**)& gtk_notebook_set_window_creation_hook},
	{ "gtk_table_new",  cast(void**)& gtk_table_new},
	{ "gtk_table_resize",  cast(void**)& gtk_table_resize},
	{ "gtk_table_attach",  cast(void**)& gtk_table_attach},
	{ "gtk_table_attach_defaults",  cast(void**)& gtk_table_attach_defaults},
	{ "gtk_table_set_row_spacing",  cast(void**)& gtk_table_set_row_spacing},
	{ "gtk_table_set_col_spacing",  cast(void**)& gtk_table_set_col_spacing},
	{ "gtk_table_set_row_spacings",  cast(void**)& gtk_table_set_row_spacings},
	{ "gtk_table_set_col_spacings",  cast(void**)& gtk_table_set_col_spacings},
	{ "gtk_table_set_homogeneous",  cast(void**)& gtk_table_set_homogeneous},
	{ "gtk_table_get_default_row_spacing",  cast(void**)& gtk_table_get_default_row_spacing},
	{ "gtk_table_get_homogeneous",  cast(void**)& gtk_table_get_homogeneous},
	{ "gtk_table_get_row_spacing",  cast(void**)& gtk_table_get_row_spacing},
	{ "gtk_table_get_col_spacing",  cast(void**)& gtk_table_get_col_spacing},
	{ "gtk_table_get_default_col_spacing",  cast(void**)& gtk_table_get_default_col_spacing},
	{ "gtk_expander_new",  cast(void**)& gtk_expander_new},
	{ "gtk_expander_new_with_mnemonic",  cast(void**)& gtk_expander_new_with_mnemonic},
	{ "gtk_expander_set_expanded",  cast(void**)& gtk_expander_set_expanded},
	{ "gtk_expander_get_expanded",  cast(void**)& gtk_expander_get_expanded},
	{ "gtk_expander_set_spacing",  cast(void**)& gtk_expander_set_spacing},
	{ "gtk_expander_get_spacing",  cast(void**)& gtk_expander_get_spacing},
	{ "gtk_expander_set_label",  cast(void**)& gtk_expander_set_label},
	{ "gtk_expander_get_label",  cast(void**)& gtk_expander_get_label},
	{ "gtk_expander_set_use_underline",  cast(void**)& gtk_expander_set_use_underline},
	{ "gtk_expander_get_use_underline",  cast(void**)& gtk_expander_get_use_underline},
	{ "gtk_expander_set_use_markup",  cast(void**)& gtk_expander_set_use_markup},
	{ "gtk_expander_get_use_markup",  cast(void**)& gtk_expander_get_use_markup},
	{ "gtk_expander_set_label_widget",  cast(void**)& gtk_expander_set_label_widget},
	{ "gtk_expander_get_label_widget",  cast(void**)& gtk_expander_get_label_widget},
	{ "gtk_frame_new",  cast(void**)& gtk_frame_new},
	{ "gtk_frame_set_label",  cast(void**)& gtk_frame_set_label},
	{ "gtk_frame_set_label_widget",  cast(void**)& gtk_frame_set_label_widget},
	{ "gtk_frame_set_label_align",  cast(void**)& gtk_frame_set_label_align},
	{ "gtk_frame_set_shadow_type",  cast(void**)& gtk_frame_set_shadow_type},
	{ "gtk_frame_get_label",  cast(void**)& gtk_frame_get_label},
	{ "gtk_frame_get_label_align",  cast(void**)& gtk_frame_get_label_align},
	{ "gtk_frame_get_label_widget",  cast(void**)& gtk_frame_get_label_widget},
	{ "gtk_frame_get_shadow_type",  cast(void**)& gtk_frame_get_shadow_type},
	{ "gtk_hseparator_new",  cast(void**)& gtk_hseparator_new},
	{ "gtk_vseparator_new",  cast(void**)& gtk_vseparator_new},
	{ "gtk_hscrollbar_new",  cast(void**)& gtk_hscrollbar_new},
	{ "gtk_vscrollbar_new",  cast(void**)& gtk_vscrollbar_new},
	{ "gtk_scrolled_window_new",  cast(void**)& gtk_scrolled_window_new},
	{ "gtk_scrolled_window_get_hadjustment",  cast(void**)& gtk_scrolled_window_get_hadjustment},
	{ "gtk_scrolled_window_get_vadjustment",  cast(void**)& gtk_scrolled_window_get_vadjustment},
	{ "gtk_scrolled_window_get_hscrollbar",  cast(void**)& gtk_scrolled_window_get_hscrollbar},
	{ "gtk_scrolled_window_get_vscrollbar",  cast(void**)& gtk_scrolled_window_get_vscrollbar},
	{ "gtk_scrolled_window_set_policy",  cast(void**)& gtk_scrolled_window_set_policy},
	{ "gtk_scrolled_window_add_with_viewport",  cast(void**)& gtk_scrolled_window_add_with_viewport},
	{ "gtk_scrolled_window_set_placement",  cast(void**)& gtk_scrolled_window_set_placement},
	{ "gtk_scrolled_window_unset_placement",  cast(void**)& gtk_scrolled_window_unset_placement},
	{ "gtk_scrolled_window_set_shadow_type",  cast(void**)& gtk_scrolled_window_set_shadow_type},
	{ "gtk_scrolled_window_set_hadjustment",  cast(void**)& gtk_scrolled_window_set_hadjustment},
	{ "gtk_scrolled_window_set_vadjustment",  cast(void**)& gtk_scrolled_window_set_vadjustment},
	{ "gtk_scrolled_window_get_placement",  cast(void**)& gtk_scrolled_window_get_placement},
	{ "gtk_scrolled_window_get_policy",  cast(void**)& gtk_scrolled_window_get_policy},
	{ "gtk_scrolled_window_get_shadow_type",  cast(void**)& gtk_scrolled_window_get_shadow_type},
	{ "gtk_print_operation_new",  cast(void**)& gtk_print_operation_new},
	{ "gtk_print_operation_set_allow_async",  cast(void**)& gtk_print_operation_set_allow_async},
	{ "gtk_print_operation_get_error",  cast(void**)& gtk_print_operation_get_error},
	{ "gtk_print_operation_set_default_page_setup",  cast(void**)& gtk_print_operation_set_default_page_setup},
	{ "gtk_print_operation_get_default_page_setup",  cast(void**)& gtk_print_operation_get_default_page_setup},
	{ "gtk_print_operation_set_print_settings",  cast(void**)& gtk_print_operation_set_print_settings},
	{ "gtk_print_operation_get_print_settings",  cast(void**)& gtk_print_operation_get_print_settings},
	{ "gtk_print_operation_set_job_name",  cast(void**)& gtk_print_operation_set_job_name},
	{ "gtk_print_operation_set_n_pages",  cast(void**)& gtk_print_operation_set_n_pages},
	{ "gtk_print_operation_set_current_page",  cast(void**)& gtk_print_operation_set_current_page},
	{ "gtk_print_operation_set_use_full_page",  cast(void**)& gtk_print_operation_set_use_full_page},
	{ "gtk_print_operation_set_unit",  cast(void**)& gtk_print_operation_set_unit},
	{ "gtk_print_operation_set_export_filename",  cast(void**)& gtk_print_operation_set_export_filename},
	{ "gtk_print_operation_set_show_progress",  cast(void**)& gtk_print_operation_set_show_progress},
	{ "gtk_print_operation_set_track_print_status",  cast(void**)& gtk_print_operation_set_track_print_status},
	{ "gtk_print_operation_set_custom_tab_label",  cast(void**)& gtk_print_operation_set_custom_tab_label},
	{ "gtk_print_operation_run",  cast(void**)& gtk_print_operation_run},
	{ "gtk_print_operation_cancel",  cast(void**)& gtk_print_operation_cancel},
	{ "gtk_print_operation_get_status",  cast(void**)& gtk_print_operation_get_status},
	{ "gtk_print_operation_get_status_string",  cast(void**)& gtk_print_operation_get_status_string},
	{ "gtk_print_operation_is_finished",  cast(void**)& gtk_print_operation_is_finished},
	{ "gtk_print_run_page_setup_dialog",  cast(void**)& gtk_print_run_page_setup_dialog},
	{ "gtk_print_run_page_setup_dialog_async",  cast(void**)& gtk_print_run_page_setup_dialog_async},
	{ "gtk_print_operation_preview_end_preview",  cast(void**)& gtk_print_operation_preview_end_preview},
	{ "gtk_print_operation_preview_is_selected",  cast(void**)& gtk_print_operation_preview_is_selected},
	{ "gtk_print_operation_preview_render_page",  cast(void**)& gtk_print_operation_preview_render_page},
	{ "gtk_print_context_get_cairo_context",  cast(void**)& gtk_print_context_get_cairo_context},
	{ "gtk_print_context_set_cairo_context",  cast(void**)& gtk_print_context_set_cairo_context},
	{ "gtk_print_context_get_page_setup",  cast(void**)& gtk_print_context_get_page_setup},
	{ "gtk_print_context_get_width",  cast(void**)& gtk_print_context_get_width},
	{ "gtk_print_context_get_height",  cast(void**)& gtk_print_context_get_height},
	{ "gtk_print_context_get_dpi_x",  cast(void**)& gtk_print_context_get_dpi_x},
	{ "gtk_print_context_get_dpi_y",  cast(void**)& gtk_print_context_get_dpi_y},
	{ "gtk_print_context_get_pango_fontmap",  cast(void**)& gtk_print_context_get_pango_fontmap},
	{ "gtk_print_context_create_pango_context",  cast(void**)& gtk_print_context_create_pango_context},
	{ "gtk_print_context_create_pango_layout",  cast(void**)& gtk_print_context_create_pango_layout},
	{ "gtk_print_settings_new",  cast(void**)& gtk_print_settings_new},
	{ "gtk_print_settings_copy",  cast(void**)& gtk_print_settings_copy},
	{ "gtk_print_settings_has_key",  cast(void**)& gtk_print_settings_has_key},
	{ "gtk_print_settings_get",  cast(void**)& gtk_print_settings_get},
	{ "gtk_print_settings_set",  cast(void**)& gtk_print_settings_set},
	{ "gtk_print_settings_unset",  cast(void**)& gtk_print_settings_unset},
	{ "gtk_print_settings_foreach",  cast(void**)& gtk_print_settings_foreach},
	{ "gtk_print_settings_get_bool",  cast(void**)& gtk_print_settings_get_bool},
	{ "gtk_print_settings_set_bool",  cast(void**)& gtk_print_settings_set_bool},
	{ "gtk_print_settings_get_double",  cast(void**)& gtk_print_settings_get_double},
	{ "gtk_print_settings_get_double_with_default",  cast(void**)& gtk_print_settings_get_double_with_default},
	{ "gtk_print_settings_set_double",  cast(void**)& gtk_print_settings_set_double},
	{ "gtk_print_settings_get_length",  cast(void**)& gtk_print_settings_get_length},
	{ "gtk_print_settings_set_length",  cast(void**)& gtk_print_settings_set_length},
	{ "gtk_print_settings_get_int",  cast(void**)& gtk_print_settings_get_int},
	{ "gtk_print_settings_get_int_with_default",  cast(void**)& gtk_print_settings_get_int_with_default},
	{ "gtk_print_settings_set_int",  cast(void**)& gtk_print_settings_set_int},
	{ "gtk_print_settings_get_printer",  cast(void**)& gtk_print_settings_get_printer},
	{ "gtk_print_settings_set_printer",  cast(void**)& gtk_print_settings_set_printer},
	{ "gtk_print_settings_get_orientation",  cast(void**)& gtk_print_settings_get_orientation},
	{ "gtk_print_settings_set_orientation",  cast(void**)& gtk_print_settings_set_orientation},
	{ "gtk_print_settings_get_paper_size",  cast(void**)& gtk_print_settings_get_paper_size},
	{ "gtk_print_settings_set_paper_size",  cast(void**)& gtk_print_settings_set_paper_size},
	{ "gtk_print_settings_get_paper_width",  cast(void**)& gtk_print_settings_get_paper_width},
	{ "gtk_print_settings_set_paper_width",  cast(void**)& gtk_print_settings_set_paper_width},
	{ "gtk_print_settings_get_paper_height",  cast(void**)& gtk_print_settings_get_paper_height},
	{ "gtk_print_settings_set_paper_height",  cast(void**)& gtk_print_settings_set_paper_height},
	{ "gtk_print_settings_get_use_color",  cast(void**)& gtk_print_settings_get_use_color},
	{ "gtk_print_settings_set_use_color",  cast(void**)& gtk_print_settings_set_use_color},
	{ "gtk_print_settings_get_collate",  cast(void**)& gtk_print_settings_get_collate},
	{ "gtk_print_settings_set_collate",  cast(void**)& gtk_print_settings_set_collate},
	{ "gtk_print_settings_get_reverse",  cast(void**)& gtk_print_settings_get_reverse},
	{ "gtk_print_settings_set_reverse",  cast(void**)& gtk_print_settings_set_reverse},
	{ "gtk_print_settings_get_duplex",  cast(void**)& gtk_print_settings_get_duplex},
	{ "gtk_print_settings_set_duplex",  cast(void**)& gtk_print_settings_set_duplex},
	{ "gtk_print_settings_get_quality",  cast(void**)& gtk_print_settings_get_quality},
	{ "gtk_print_settings_set_quality",  cast(void**)& gtk_print_settings_set_quality},
	{ "gtk_print_settings_get_n_copies",  cast(void**)& gtk_print_settings_get_n_copies},
	{ "gtk_print_settings_set_n_copies",  cast(void**)& gtk_print_settings_set_n_copies},
	{ "gtk_print_settings_get_number_up",  cast(void**)& gtk_print_settings_get_number_up},
	{ "gtk_print_settings_set_number_up",  cast(void**)& gtk_print_settings_set_number_up},
	{ "gtk_print_settings_get_resolution",  cast(void**)& gtk_print_settings_get_resolution},
	{ "gtk_print_settings_set_resolution",  cast(void**)& gtk_print_settings_set_resolution},
	{ "gtk_print_settings_get_scale",  cast(void**)& gtk_print_settings_get_scale},
	{ "gtk_print_settings_set_scale",  cast(void**)& gtk_print_settings_set_scale},
	{ "gtk_print_settings_get_print_pages",  cast(void**)& gtk_print_settings_get_print_pages},
	{ "gtk_print_settings_set_print_pages",  cast(void**)& gtk_print_settings_set_print_pages},
	{ "gtk_print_settings_get_page_ranges",  cast(void**)& gtk_print_settings_get_page_ranges},
	{ "gtk_print_settings_set_page_ranges",  cast(void**)& gtk_print_settings_set_page_ranges},
	{ "gtk_print_settings_get_page_set",  cast(void**)& gtk_print_settings_get_page_set},
	{ "gtk_print_settings_set_page_set",  cast(void**)& gtk_print_settings_set_page_set},
	{ "gtk_print_settings_get_default_source",  cast(void**)& gtk_print_settings_get_default_source},
	{ "gtk_print_settings_set_default_source",  cast(void**)& gtk_print_settings_set_default_source},
	{ "gtk_print_settings_get_media_type",  cast(void**)& gtk_print_settings_get_media_type},
	{ "gtk_print_settings_set_media_type",  cast(void**)& gtk_print_settings_set_media_type},
	{ "gtk_print_settings_get_dither",  cast(void**)& gtk_print_settings_get_dither},
	{ "gtk_print_settings_set_dither",  cast(void**)& gtk_print_settings_set_dither},
	{ "gtk_print_settings_get_finishings",  cast(void**)& gtk_print_settings_get_finishings},
	{ "gtk_print_settings_set_finishings",  cast(void**)& gtk_print_settings_set_finishings},
	{ "gtk_print_settings_get_output_bin",  cast(void**)& gtk_print_settings_get_output_bin},
	{ "gtk_print_settings_set_output_bin",  cast(void**)& gtk_print_settings_set_output_bin},
	{ "gtk_print_settings_new_from_file",  cast(void**)& gtk_print_settings_new_from_file},
	{ "gtk_print_settings_new_from_key_file",  cast(void**)& gtk_print_settings_new_from_key_file},
	{ "gtk_print_settings_to_file",  cast(void**)& gtk_print_settings_to_file},
	{ "gtk_print_settings_to_key_file",  cast(void**)& gtk_print_settings_to_key_file},
	{ "gtk_page_setup_new",  cast(void**)& gtk_page_setup_new},
	{ "gtk_page_setup_copy",  cast(void**)& gtk_page_setup_copy},
	{ "gtk_page_setup_get_orientation",  cast(void**)& gtk_page_setup_get_orientation},
	{ "gtk_page_setup_set_orientation",  cast(void**)& gtk_page_setup_set_orientation},
	{ "gtk_page_setup_get_paper_size",  cast(void**)& gtk_page_setup_get_paper_size},
	{ "gtk_page_setup_set_paper_size",  cast(void**)& gtk_page_setup_set_paper_size},
	{ "gtk_page_setup_get_top_margin",  cast(void**)& gtk_page_setup_get_top_margin},
	{ "gtk_page_setup_set_top_margin",  cast(void**)& gtk_page_setup_set_top_margin},
	{ "gtk_page_setup_get_bottom_margin",  cast(void**)& gtk_page_setup_get_bottom_margin},
	{ "gtk_page_setup_set_bottom_margin",  cast(void**)& gtk_page_setup_set_bottom_margin},
	{ "gtk_page_setup_get_left_margin",  cast(void**)& gtk_page_setup_get_left_margin},
	{ "gtk_page_setup_set_left_margin",  cast(void**)& gtk_page_setup_set_left_margin},
	{ "gtk_page_setup_get_right_margin",  cast(void**)& gtk_page_setup_get_right_margin},
	{ "gtk_page_setup_set_right_margin",  cast(void**)& gtk_page_setup_set_right_margin},
	{ "gtk_page_setup_set_paper_size_and_default_margins",  cast(void**)& gtk_page_setup_set_paper_size_and_default_margins},
	{ "gtk_page_setup_get_paper_width",  cast(void**)& gtk_page_setup_get_paper_width},
	{ "gtk_page_setup_get_paper_height",  cast(void**)& gtk_page_setup_get_paper_height},
	{ "gtk_page_setup_get_page_width",  cast(void**)& gtk_page_setup_get_page_width},
	{ "gtk_page_setup_get_page_height",  cast(void**)& gtk_page_setup_get_page_height},
	{ "gtk_page_setup_new_from_file",  cast(void**)& gtk_page_setup_new_from_file},
	{ "gtk_page_setup_new_from_key_file",  cast(void**)& gtk_page_setup_new_from_key_file},
	{ "gtk_page_setup_to_file",  cast(void**)& gtk_page_setup_to_file},
	{ "gtk_page_setup_to_key_file",  cast(void**)& gtk_page_setup_to_key_file},
	{ "gtk_paper_size_new",  cast(void**)& gtk_paper_size_new},
	{ "gtk_paper_size_new_from_ppd",  cast(void**)& gtk_paper_size_new_from_ppd},
	{ "gtk_paper_size_new_custom",  cast(void**)& gtk_paper_size_new_custom},
	{ "gtk_paper_size_copy",  cast(void**)& gtk_paper_size_copy},
	{ "gtk_paper_size_free",  cast(void**)& gtk_paper_size_free},
	{ "gtk_paper_size_is_equal",  cast(void**)& gtk_paper_size_is_equal},
	{ "gtk_paper_size_get_paper_sizes",  cast(void**)& gtk_paper_size_get_paper_sizes},
	{ "gtk_paper_size_get_name",  cast(void**)& gtk_paper_size_get_name},
	{ "gtk_paper_size_get_display_name",  cast(void**)& gtk_paper_size_get_display_name},
	{ "gtk_paper_size_get_ppd_name",  cast(void**)& gtk_paper_size_get_ppd_name},
	{ "gtk_paper_size_get_width",  cast(void**)& gtk_paper_size_get_width},
	{ "gtk_paper_size_get_height",  cast(void**)& gtk_paper_size_get_height},
	{ "gtk_paper_size_is_custom",  cast(void**)& gtk_paper_size_is_custom},
	{ "gtk_paper_size_set_size",  cast(void**)& gtk_paper_size_set_size},
	{ "gtk_paper_size_get_default_top_margin",  cast(void**)& gtk_paper_size_get_default_top_margin},
	{ "gtk_paper_size_get_default_bottom_margin",  cast(void**)& gtk_paper_size_get_default_bottom_margin},
	{ "gtk_paper_size_get_default_left_margin",  cast(void**)& gtk_paper_size_get_default_left_margin},
	{ "gtk_paper_size_get_default_right_margin",  cast(void**)& gtk_paper_size_get_default_right_margin},
	{ "gtk_paper_size_get_default",  cast(void**)& gtk_paper_size_get_default},
	{ "gtk_paper_size_new_from_key_file",  cast(void**)& gtk_paper_size_new_from_key_file},
	{ "gtk_paper_size_to_key_file",  cast(void**)& gtk_paper_size_to_key_file},
	{ "gtk_printer_new",  cast(void**)& gtk_printer_new},
	{ "gtk_printer_get_backend",  cast(void**)& gtk_printer_get_backend},
	{ "gtk_printer_get_name",  cast(void**)& gtk_printer_get_name},
	{ "gtk_printer_get_state_message",  cast(void**)& gtk_printer_get_state_message},
	{ "gtk_printer_get_description",  cast(void**)& gtk_printer_get_description},
	{ "gtk_printer_get_location",  cast(void**)& gtk_printer_get_location},
	{ "gtk_printer_get_icon_name",  cast(void**)& gtk_printer_get_icon_name},
	{ "gtk_printer_get_job_count",  cast(void**)& gtk_printer_get_job_count},
	{ "gtk_printer_is_active",  cast(void**)& gtk_printer_is_active},
	{ "gtk_printer_is_virtual",  cast(void**)& gtk_printer_is_virtual},
	{ "gtk_printer_is_default",  cast(void**)& gtk_printer_is_default},
	{ "gtk_printer_accepts_ps",  cast(void**)& gtk_printer_accepts_ps},
	{ "gtk_printer_accepts_pdf",  cast(void**)& gtk_printer_accepts_pdf},
	{ "gtk_printer_list_papers",  cast(void**)& gtk_printer_list_papers},
	{ "gtk_printer_compare",  cast(void**)& gtk_printer_compare},
	{ "gtk_printer_has_details",  cast(void**)& gtk_printer_has_details},
	{ "gtk_printer_request_details",  cast(void**)& gtk_printer_request_details},
	{ "gtk_printer_get_capabilities",  cast(void**)& gtk_printer_get_capabilities},
	{ "gtk_enumerate_printers",  cast(void**)& gtk_enumerate_printers},
	{ "gtk_print_job_new",  cast(void**)& gtk_print_job_new},
	{ "gtk_print_job_get_settings",  cast(void**)& gtk_print_job_get_settings},
	{ "gtk_print_job_get_printer",  cast(void**)& gtk_print_job_get_printer},
	{ "gtk_print_job_get_title",  cast(void**)& gtk_print_job_get_title},
	{ "gtk_print_job_get_status",  cast(void**)& gtk_print_job_get_status},
	{ "gtk_print_job_set_source_file",  cast(void**)& gtk_print_job_set_source_file},
	{ "gtk_print_job_get_surface",  cast(void**)& gtk_print_job_get_surface},
	{ "gtk_print_job_send",  cast(void**)& gtk_print_job_send},
	{ "gtk_print_job_set_track_print_status",  cast(void**)& gtk_print_job_set_track_print_status},
	{ "gtk_print_job_get_track_print_status",  cast(void**)& gtk_print_job_get_track_print_status},
	{ "gtk_print_unix_dialog_new",  cast(void**)& gtk_print_unix_dialog_new},
	{ "gtk_print_unix_dialog_set_page_setup",  cast(void**)& gtk_print_unix_dialog_set_page_setup},
	{ "gtk_print_unix_dialog_get_page_setup",  cast(void**)& gtk_print_unix_dialog_get_page_setup},
	{ "gtk_print_unix_dialog_set_current_page",  cast(void**)& gtk_print_unix_dialog_set_current_page},
	{ "gtk_print_unix_dialog_get_current_page",  cast(void**)& gtk_print_unix_dialog_get_current_page},
	{ "gtk_print_unix_dialog_set_settings",  cast(void**)& gtk_print_unix_dialog_set_settings},
	{ "gtk_print_unix_dialog_get_settings",  cast(void**)& gtk_print_unix_dialog_get_settings},
	{ "gtk_print_unix_dialog_get_selected_printer",  cast(void**)& gtk_print_unix_dialog_get_selected_printer},
	{ "gtk_print_unix_dialog_add_custom_tab",  cast(void**)& gtk_print_unix_dialog_add_custom_tab},
	{ "gtk_print_unix_dialog_set_manual_capabilities",  cast(void**)& gtk_print_unix_dialog_set_manual_capabilities},
	{ "gtk_page_setup_unix_dialog_new",  cast(void**)& gtk_page_setup_unix_dialog_new},
	{ "gtk_page_setup_unix_dialog_set_page_setup",  cast(void**)& gtk_page_setup_unix_dialog_set_page_setup},
	{ "gtk_page_setup_unix_dialog_get_page_setup",  cast(void**)& gtk_page_setup_unix_dialog_get_page_setup},
	{ "gtk_page_setup_unix_dialog_set_print_settings",  cast(void**)& gtk_page_setup_unix_dialog_set_print_settings},
	{ "gtk_page_setup_unix_dialog_get_print_settings",  cast(void**)& gtk_page_setup_unix_dialog_get_print_settings},
	{ "gtk_adjustment_new",  cast(void**)& gtk_adjustment_new},
	{ "gtk_adjustment_get_value",  cast(void**)& gtk_adjustment_get_value},
	{ "gtk_adjustment_set_value",  cast(void**)& gtk_adjustment_set_value},
	{ "gtk_adjustment_clamp_page",  cast(void**)& gtk_adjustment_clamp_page},
	{ "gtk_adjustment_changed",  cast(void**)& gtk_adjustment_changed},
	{ "gtk_adjustment_value_changed",  cast(void**)& gtk_adjustment_value_changed},
	{ "gtk_arrow_new",  cast(void**)& gtk_arrow_new},
	{ "gtk_arrow_set",  cast(void**)& gtk_arrow_set},
	{ "gtk_calendar_new",  cast(void**)& gtk_calendar_new},
	{ "gtk_calendar_select_month",  cast(void**)& gtk_calendar_select_month},
	{ "gtk_calendar_select_day",  cast(void**)& gtk_calendar_select_day},
	{ "gtk_calendar_mark_day",  cast(void**)& gtk_calendar_mark_day},
	{ "gtk_calendar_unmark_day",  cast(void**)& gtk_calendar_unmark_day},
	{ "gtk_calendar_clear_marks",  cast(void**)& gtk_calendar_clear_marks},
	{ "gtk_calendar_get_display_options",  cast(void**)& gtk_calendar_get_display_options},
	{ "gtk_calendar_set_display_options",  cast(void**)& gtk_calendar_set_display_options},
	{ "gtk_calendar_display_options",  cast(void**)& gtk_calendar_display_options},
	{ "gtk_calendar_get_date",  cast(void**)& gtk_calendar_get_date},
	{ "gtk_calendar_freeze",  cast(void**)& gtk_calendar_freeze},
	{ "gtk_calendar_thaw",  cast(void**)& gtk_calendar_thaw},
	{ "gtk_drawing_area_new",  cast(void**)& gtk_drawing_area_new},
	{ "gtk_drawing_area_size",  cast(void**)& gtk_drawing_area_size},
	{ "gtk_event_box_new",  cast(void**)& gtk_event_box_new},
	{ "gtk_event_box_set_above_child",  cast(void**)& gtk_event_box_set_above_child},
	{ "gtk_event_box_get_above_child",  cast(void**)& gtk_event_box_get_above_child},
	{ "gtk_event_box_set_visible_window",  cast(void**)& gtk_event_box_set_visible_window},
	{ "gtk_event_box_get_visible_window",  cast(void**)& gtk_event_box_get_visible_window},
	{ "gtk_handle_box_new",  cast(void**)& gtk_handle_box_new},
	{ "gtk_handle_box_set_shadow_type",  cast(void**)& gtk_handle_box_set_shadow_type},
	{ "gtk_handle_box_set_handle_position",  cast(void**)& gtk_handle_box_set_handle_position},
	{ "gtk_handle_box_set_snap_edge",  cast(void**)& gtk_handle_box_set_snap_edge},
	{ "gtk_handle_box_get_handle_position",  cast(void**)& gtk_handle_box_get_handle_position},
	{ "gtk_handle_box_get_shadow_type",  cast(void**)& gtk_handle_box_get_shadow_type},
	{ "gtk_handle_box_get_snap_edge",  cast(void**)& gtk_handle_box_get_snap_edge},
	{ "gtk_im_context_simple_new",  cast(void**)& gtk_im_context_simple_new},
	{ "gtk_im_context_simple_add_table",  cast(void**)& gtk_im_context_simple_add_table},
	{ "gtk_im_multicontext_new",  cast(void**)& gtk_im_multicontext_new},
	{ "gtk_im_multicontext_append_menuitems",  cast(void**)& gtk_im_multicontext_append_menuitems},
	{ "gtk_size_group_new",  cast(void**)& gtk_size_group_new},
	{ "gtk_size_group_set_mode",  cast(void**)& gtk_size_group_set_mode},
	{ "gtk_size_group_get_mode",  cast(void**)& gtk_size_group_get_mode},
	{ "gtk_size_group_set_ignore_hidden",  cast(void**)& gtk_size_group_set_ignore_hidden},
	{ "gtk_size_group_get_ignore_hidden",  cast(void**)& gtk_size_group_get_ignore_hidden},
	{ "gtk_size_group_add_widget",  cast(void**)& gtk_size_group_add_widget},
	{ "gtk_size_group_remove_widget",  cast(void**)& gtk_size_group_remove_widget},
	{ "gtk_size_group_get_widgets",  cast(void**)& gtk_size_group_get_widgets},
	{ "gtk_tooltip_set_markup",  cast(void**)& gtk_tooltip_set_markup},
	{ "gtk_tooltip_set_text",  cast(void**)& gtk_tooltip_set_text},
	{ "gtk_tooltip_set_icon",  cast(void**)& gtk_tooltip_set_icon},
	{ "gtk_tooltip_set_icon_from_stock",  cast(void**)& gtk_tooltip_set_icon_from_stock},
	{ "gtk_tooltip_set_custom",  cast(void**)& gtk_tooltip_set_custom},
	{ "gtk_tooltip_trigger_tooltip_query",  cast(void**)& gtk_tooltip_trigger_tooltip_query},
	{ "gtk_tooltip_set_tip_area",  cast(void**)& gtk_tooltip_set_tip_area},
	{ "gtk_viewport_new",  cast(void**)& gtk_viewport_new},
	{ "gtk_viewport_get_hadjustment",  cast(void**)& gtk_viewport_get_hadjustment},
	{ "gtk_viewport_get_vadjustment",  cast(void**)& gtk_viewport_get_vadjustment},
	{ "gtk_viewport_set_hadjustment",  cast(void**)& gtk_viewport_set_hadjustment},
	{ "gtk_viewport_set_vadjustment",  cast(void**)& gtk_viewport_set_vadjustment},
	{ "gtk_viewport_set_shadow_type",  cast(void**)& gtk_viewport_set_shadow_type},
	{ "gtk_viewport_get_shadow_type",  cast(void**)& gtk_viewport_get_shadow_type},
	{ "gtk_accessible_connect_widget_destroyed",  cast(void**)& gtk_accessible_connect_widget_destroyed},
	{ "gtk_bin_get_child",  cast(void**)& gtk_bin_get_child},
	{ "gtk_box_pack_start",  cast(void**)& gtk_box_pack_start},
	{ "gtk_box_pack_end",  cast(void**)& gtk_box_pack_end},
	{ "gtk_box_pack_start_defaults",  cast(void**)& gtk_box_pack_start_defaults},
	{ "gtk_box_pack_end_defaults",  cast(void**)& gtk_box_pack_end_defaults},
	{ "gtk_box_get_homogeneous",  cast(void**)& gtk_box_get_homogeneous},
	{ "gtk_box_set_homogeneous",  cast(void**)& gtk_box_set_homogeneous},
	{ "gtk_box_get_spacing",  cast(void**)& gtk_box_get_spacing},
	{ "gtk_box_set_spacing",  cast(void**)& gtk_box_set_spacing},
	{ "gtk_box_reorder_child",  cast(void**)& gtk_box_reorder_child},
	{ "gtk_box_query_child_packing",  cast(void**)& gtk_box_query_child_packing},
	{ "gtk_box_set_child_packing",  cast(void**)& gtk_box_set_child_packing},
	{ "gtk_button_box_get_layout",  cast(void**)& gtk_button_box_get_layout},
	{ "gtk_button_box_get_child_size",  cast(void**)& gtk_button_box_get_child_size},
	{ "gtk_button_box_get_child_ipadding",  cast(void**)& gtk_button_box_get_child_ipadding},
	{ "gtk_button_box_get_child_secondary",  cast(void**)& gtk_button_box_get_child_secondary},
	{ "gtk_button_box_set_layout",  cast(void**)& gtk_button_box_set_layout},
	{ "gtk_button_box_set_child_size",  cast(void**)& gtk_button_box_set_child_size},
	{ "gtk_button_box_set_child_ipadding",  cast(void**)& gtk_button_box_set_child_ipadding},
	{ "gtk_button_box_set_child_secondary",  cast(void**)& gtk_button_box_set_child_secondary},
	{ "gtk_container_add",  cast(void**)& gtk_container_add},
	{ "gtk_container_remove",  cast(void**)& gtk_container_remove},
	{ "gtk_container_add_with_properties",  cast(void**)& gtk_container_add_with_properties},
	{ "gtk_container_get_resize_mode",  cast(void**)& gtk_container_get_resize_mode},
	{ "gtk_container_set_resize_mode",  cast(void**)& gtk_container_set_resize_mode},
	{ "gtk_container_check_resize",  cast(void**)& gtk_container_check_resize},
	{ "gtk_container_foreach",  cast(void**)& gtk_container_foreach},
	{ "gtk_container_foreach_full",  cast(void**)& gtk_container_foreach_full},
	{ "gtk_container_get_children",  cast(void**)& gtk_container_get_children},
	{ "gtk_container_set_reallocate_redraws",  cast(void**)& gtk_container_set_reallocate_redraws},
	{ "gtk_container_set_focus_child",  cast(void**)& gtk_container_set_focus_child},
	{ "gtk_container_get_focus_vadjustment",  cast(void**)& gtk_container_get_focus_vadjustment},
	{ "gtk_container_set_focus_vadjustment",  cast(void**)& gtk_container_set_focus_vadjustment},
	{ "gtk_container_get_focus_hadjustment",  cast(void**)& gtk_container_get_focus_hadjustment},
	{ "gtk_container_set_focus_hadjustment",  cast(void**)& gtk_container_set_focus_hadjustment},
	{ "gtk_container_resize_children",  cast(void**)& gtk_container_resize_children},
	{ "gtk_container_child_type",  cast(void**)& gtk_container_child_type},
	{ "gtk_container_child_get",  cast(void**)& gtk_container_child_get},
	{ "gtk_container_child_set",  cast(void**)& gtk_container_child_set},
	{ "gtk_container_child_get_property",  cast(void**)& gtk_container_child_get_property},
	{ "gtk_container_child_set_property",  cast(void**)& gtk_container_child_set_property},
	{ "gtk_container_child_get_valist",  cast(void**)& gtk_container_child_get_valist},
	{ "gtk_container_child_set_valist",  cast(void**)& gtk_container_child_set_valist},
	{ "gtk_container_forall",  cast(void**)& gtk_container_forall},
	{ "gtk_container_get_border_width",  cast(void**)& gtk_container_get_border_width},
	{ "gtk_container_set_border_width",  cast(void**)& gtk_container_set_border_width},
	{ "gtk_container_propagate_expose",  cast(void**)& gtk_container_propagate_expose},
	{ "gtk_container_get_focus_chain",  cast(void**)& gtk_container_get_focus_chain},
	{ "gtk_container_set_focus_chain",  cast(void**)& gtk_container_set_focus_chain},
	{ "gtk_container_unset_focus_chain",  cast(void**)& gtk_container_unset_focus_chain},
	{ "gtk_container_class_find_child_property",  cast(void**)& gtk_container_class_find_child_property},
	{ "gtk_container_class_install_child_property",  cast(void**)& gtk_container_class_install_child_property},
	{ "gtk_container_class_list_child_properties",  cast(void**)& gtk_container_class_list_child_properties},
	{ "gtk_item_select",  cast(void**)& gtk_item_select},
	{ "gtk_item_deselect",  cast(void**)& gtk_item_deselect},
	{ "gtk_item_toggle",  cast(void**)& gtk_item_toggle},
	{ "gtk_menu_shell_append",  cast(void**)& gtk_menu_shell_append},
	{ "gtk_menu_shell_prepend",  cast(void**)& gtk_menu_shell_prepend},
	{ "gtk_menu_shell_insert",  cast(void**)& gtk_menu_shell_insert},
	{ "gtk_menu_shell_deactivate",  cast(void**)& gtk_menu_shell_deactivate},
	{ "gtk_menu_shell_select_item",  cast(void**)& gtk_menu_shell_select_item},
	{ "gtk_menu_shell_select_first",  cast(void**)& gtk_menu_shell_select_first},
	{ "gtk_menu_shell_deselect",  cast(void**)& gtk_menu_shell_deselect},
	{ "gtk_menu_shell_activate_item",  cast(void**)& gtk_menu_shell_activate_item},
	{ "gtk_menu_shell_cancel",  cast(void**)& gtk_menu_shell_cancel},
	{ "gtk_menu_shell_set_take_focus",  cast(void**)& gtk_menu_shell_set_take_focus},
	{ "gtk_menu_shell_get_take_focus",  cast(void**)& gtk_menu_shell_get_take_focus},
	{ "gtk_misc_set_alignment",  cast(void**)& gtk_misc_set_alignment},
	{ "gtk_misc_set_padding",  cast(void**)& gtk_misc_set_padding},
	{ "gtk_misc_get_alignment",  cast(void**)& gtk_misc_get_alignment},
	{ "gtk_misc_get_padding",  cast(void**)& gtk_misc_get_padding},
	{ "gtk_object_new",  cast(void**)& gtk_object_new},
	{ "gtk_object_sink",  cast(void**)& gtk_object_sink},
	{ "gtk_object_ref",  cast(void**)& gtk_object_ref},
	{ "gtk_object_unref",  cast(void**)& gtk_object_unref},
	{ "gtk_object_weakref",  cast(void**)& gtk_object_weakref},
	{ "gtk_object_weakunref",  cast(void**)& gtk_object_weakunref},
	{ "gtk_object_destroy",  cast(void**)& gtk_object_destroy},
	{ "gtk_object_get",  cast(void**)& gtk_object_get},
	{ "gtk_object_set",  cast(void**)& gtk_object_set},
	{ "gtk_object_set_data",  cast(void**)& gtk_object_set_data},
	{ "gtk_object_set_data_full",  cast(void**)& gtk_object_set_data_full},
	{ "gtk_object_remove_data",  cast(void**)& gtk_object_remove_data},
	{ "gtk_object_get_data",  cast(void**)& gtk_object_get_data},
	{ "gtk_object_remove_no_notify",  cast(void**)& gtk_object_remove_no_notify},
	{ "gtk_object_set_user_data",  cast(void**)& gtk_object_set_user_data},
	{ "gtk_object_get_user_data",  cast(void**)& gtk_object_get_user_data},
	{ "gtk_object_add_arg_type",  cast(void**)& gtk_object_add_arg_type},
	{ "gtk_object_set_data_by_id",  cast(void**)& gtk_object_set_data_by_id},
	{ "gtk_object_set_data_by_id_full",  cast(void**)& gtk_object_set_data_by_id_full},
	{ "gtk_object_get_data_by_id",  cast(void**)& gtk_object_get_data_by_id},
	{ "gtk_object_remove_data_by_id",  cast(void**)& gtk_object_remove_data_by_id},
	{ "gtk_object_remove_no_notify_by_id",  cast(void**)& gtk_object_remove_no_notify_by_id},
	{ "gtk_paned_add1",  cast(void**)& gtk_paned_add1},
	{ "gtk_paned_add2",  cast(void**)& gtk_paned_add2},
	{ "gtk_paned_pack1",  cast(void**)& gtk_paned_pack1},
	{ "gtk_paned_pack2",  cast(void**)& gtk_paned_pack2},
	{ "gtk_paned_get_child1",  cast(void**)& gtk_paned_get_child1},
	{ "gtk_paned_get_child2",  cast(void**)& gtk_paned_get_child2},
	{ "gtk_paned_set_position",  cast(void**)& gtk_paned_set_position},
	{ "gtk_paned_get_position",  cast(void**)& gtk_paned_get_position},
	{ "gtk_range_get_fill_level",  cast(void**)& gtk_range_get_fill_level},
	{ "gtk_range_get_restrict_to_fill_level",  cast(void**)& gtk_range_get_restrict_to_fill_level},
	{ "gtk_range_get_show_fill_level",  cast(void**)& gtk_range_get_show_fill_level},
	{ "gtk_range_set_fill_level",  cast(void**)& gtk_range_set_fill_level},
	{ "gtk_range_set_restrict_to_fill_level",  cast(void**)& gtk_range_set_restrict_to_fill_level},
	{ "gtk_range_set_show_fill_level",  cast(void**)& gtk_range_set_show_fill_level},
	{ "gtk_range_get_adjustment",  cast(void**)& gtk_range_get_adjustment},
	{ "gtk_range_set_update_policy",  cast(void**)& gtk_range_set_update_policy},
	{ "gtk_range_set_adjustment",  cast(void**)& gtk_range_set_adjustment},
	{ "gtk_range_get_inverted",  cast(void**)& gtk_range_get_inverted},
	{ "gtk_range_set_inverted",  cast(void**)& gtk_range_set_inverted},
	{ "gtk_range_get_update_policy",  cast(void**)& gtk_range_get_update_policy},
	{ "gtk_range_get_value",  cast(void**)& gtk_range_get_value},
	{ "gtk_range_set_increments",  cast(void**)& gtk_range_set_increments},
	{ "gtk_range_set_range",  cast(void**)& gtk_range_set_range},
	{ "gtk_range_set_value",  cast(void**)& gtk_range_set_value},
	{ "gtk_range_set_lower_stepper_sensitivity",  cast(void**)& gtk_range_set_lower_stepper_sensitivity},
	{ "gtk_range_get_lower_stepper_sensitivity",  cast(void**)& gtk_range_get_lower_stepper_sensitivity},
	{ "gtk_range_set_upper_stepper_sensitivity",  cast(void**)& gtk_range_set_upper_stepper_sensitivity},
	{ "gtk_range_get_upper_stepper_sensitivity",  cast(void**)& gtk_range_get_upper_stepper_sensitivity},
	{ "gtk_scale_set_digits",  cast(void**)& gtk_scale_set_digits},
	{ "gtk_scale_set_draw_value",  cast(void**)& gtk_scale_set_draw_value},
	{ "gtk_scale_set_value_pos",  cast(void**)& gtk_scale_set_value_pos},
	{ "gtk_scale_get_digits",  cast(void**)& gtk_scale_get_digits},
	{ "gtk_scale_get_draw_value",  cast(void**)& gtk_scale_get_draw_value},
	{ "gtk_scale_get_value_pos",  cast(void**)& gtk_scale_get_value_pos},
	{ "gtk_scale_get_layout",  cast(void**)& gtk_scale_get_layout},
	{ "gtk_scale_get_layout_offsets",  cast(void**)& gtk_scale_get_layout_offsets},
	{ "gtk_widget_new",  cast(void**)& gtk_widget_new},
	{ "gtk_widget_unref",  cast(void**)& gtk_widget_unref},
	{ "gtk_widget_destroy",  cast(void**)& gtk_widget_destroy},
	{ "gtk_widget_destroyed",  cast(void**)& gtk_widget_destroyed},
	{ "gtk_widget_set",  cast(void**)& gtk_widget_set},
	{ "gtk_widget_unparent",  cast(void**)& gtk_widget_unparent},
	{ "gtk_widget_show",  cast(void**)& gtk_widget_show},
	{ "gtk_widget_show_now",  cast(void**)& gtk_widget_show_now},
	{ "gtk_widget_hide",  cast(void**)& gtk_widget_hide},
	{ "gtk_widget_show_all",  cast(void**)& gtk_widget_show_all},
	{ "gtk_widget_hide_all",  cast(void**)& gtk_widget_hide_all},
	{ "gtk_widget_map",  cast(void**)& gtk_widget_map},
	{ "gtk_widget_unmap",  cast(void**)& gtk_widget_unmap},
	{ "gtk_widget_realize",  cast(void**)& gtk_widget_realize},
	{ "gtk_widget_unrealize",  cast(void**)& gtk_widget_unrealize},
	{ "gtk_widget_queue_draw",  cast(void**)& gtk_widget_queue_draw},
	{ "gtk_widget_queue_resize",  cast(void**)& gtk_widget_queue_resize},
	{ "gtk_widget_queue_resize_no_redraw",  cast(void**)& gtk_widget_queue_resize_no_redraw},
	{ "gtk_widget_draw",  cast(void**)& gtk_widget_draw},
	{ "gtk_widget_size_request",  cast(void**)& gtk_widget_size_request},
	{ "gtk_widget_get_child_requisition",  cast(void**)& gtk_widget_get_child_requisition},
	{ "gtk_widget_size_allocate",  cast(void**)& gtk_widget_size_allocate},
	{ "gtk_widget_add_accelerator",  cast(void**)& gtk_widget_add_accelerator},
	{ "gtk_widget_remove_accelerator",  cast(void**)& gtk_widget_remove_accelerator},
	{ "gtk_widget_set_accel_path",  cast(void**)& gtk_widget_set_accel_path},
	{ "gtk_widget_list_accel_closures",  cast(void**)& gtk_widget_list_accel_closures},
	{ "gtk_widget_can_activate_accel",  cast(void**)& gtk_widget_can_activate_accel},
	{ "gtk_widget_event",  cast(void**)& gtk_widget_event},
	{ "gtk_widget_activate",  cast(void**)& gtk_widget_activate},
	{ "gtk_widget_reparent",  cast(void**)& gtk_widget_reparent},
	{ "gtk_widget_intersect",  cast(void**)& gtk_widget_intersect},
	{ "gtk_widget_is_focus",  cast(void**)& gtk_widget_is_focus},
	{ "gtk_widget_grab_focus",  cast(void**)& gtk_widget_grab_focus},
	{ "gtk_widget_grab_default",  cast(void**)& gtk_widget_grab_default},
	{ "gtk_widget_set_name",  cast(void**)& gtk_widget_set_name},
	{ "gtk_widget_get_name",  cast(void**)& gtk_widget_get_name},
	{ "gtk_widget_set_state",  cast(void**)& gtk_widget_set_state},
	{ "gtk_widget_set_sensitive",  cast(void**)& gtk_widget_set_sensitive},
	{ "gtk_widget_set_parent",  cast(void**)& gtk_widget_set_parent},
	{ "gtk_widget_set_parent_window",  cast(void**)& gtk_widget_set_parent_window},
	{ "gtk_widget_get_parent_window",  cast(void**)& gtk_widget_get_parent_window},
	{ "gtk_widget_set_uposition",  cast(void**)& gtk_widget_set_uposition},
	{ "gtk_widget_set_usize",  cast(void**)& gtk_widget_set_usize},
	{ "gtk_widget_set_events",  cast(void**)& gtk_widget_set_events},
	{ "gtk_widget_add_events",  cast(void**)& gtk_widget_add_events},
	{ "gtk_widget_set_extension_events",  cast(void**)& gtk_widget_set_extension_events},
	{ "gtk_widget_get_extension_events",  cast(void**)& gtk_widget_get_extension_events},
	{ "gtk_widget_get_toplevel",  cast(void**)& gtk_widget_get_toplevel},
	{ "gtk_widget_get_ancestor",  cast(void**)& gtk_widget_get_ancestor},
	{ "gtk_widget_get_colormap",  cast(void**)& gtk_widget_get_colormap},
	{ "gtk_widget_set_colormap",  cast(void**)& gtk_widget_set_colormap},
	{ "gtk_widget_get_visual",  cast(void**)& gtk_widget_get_visual},
	{ "gtk_widget_get_events",  cast(void**)& gtk_widget_get_events},
	{ "gtk_widget_get_pointer",  cast(void**)& gtk_widget_get_pointer},
	{ "gtk_widget_is_ancestor",  cast(void**)& gtk_widget_is_ancestor},
	{ "gtk_widget_translate_coordinates",  cast(void**)& gtk_widget_translate_coordinates},
	{ "gtk_widget_hide_on_delete",  cast(void**)& gtk_widget_hide_on_delete},
	{ "gtk_widget_set_style",  cast(void**)& gtk_widget_set_style},
	{ "gtk_widget_ensure_style",  cast(void**)& gtk_widget_ensure_style},
	{ "gtk_widget_get_style",  cast(void**)& gtk_widget_get_style},
	{ "gtk_widget_reset_rc_styles",  cast(void**)& gtk_widget_reset_rc_styles},
	{ "gtk_widget_push_colormap",  cast(void**)& gtk_widget_push_colormap},
	{ "gtk_widget_pop_colormap",  cast(void**)& gtk_widget_pop_colormap},
	{ "gtk_widget_set_default_colormap",  cast(void**)& gtk_widget_set_default_colormap},
	{ "gtk_widget_get_default_style",  cast(void**)& gtk_widget_get_default_style},
	{ "gtk_widget_get_default_colormap",  cast(void**)& gtk_widget_get_default_colormap},
	{ "gtk_widget_get_default_visual",  cast(void**)& gtk_widget_get_default_visual},
	{ "gtk_widget_set_direction",  cast(void**)& gtk_widget_set_direction},
	{ "gtk_widget_get_direction",  cast(void**)& gtk_widget_get_direction},
	{ "gtk_widget_set_default_direction",  cast(void**)& gtk_widget_set_default_direction},
	{ "gtk_widget_get_default_direction",  cast(void**)& gtk_widget_get_default_direction},
	{ "gtk_widget_shape_combine_mask",  cast(void**)& gtk_widget_shape_combine_mask},
	{ "gtk_widget_input_shape_combine_mask",  cast(void**)& gtk_widget_input_shape_combine_mask},
	{ "gtk_widget_path",  cast(void**)& gtk_widget_path},
	{ "gtk_widget_class_path",  cast(void**)& gtk_widget_class_path},
	{ "gtk_widget_get_composite_name",  cast(void**)& gtk_widget_get_composite_name},
	{ "gtk_widget_modify_style",  cast(void**)& gtk_widget_modify_style},
	{ "gtk_widget_get_modifier_style",  cast(void**)& gtk_widget_get_modifier_style},
	{ "gtk_widget_modify_fg",  cast(void**)& gtk_widget_modify_fg},
	{ "gtk_widget_modify_bg",  cast(void**)& gtk_widget_modify_bg},
	{ "gtk_widget_modify_text",  cast(void**)& gtk_widget_modify_text},
	{ "gtk_widget_modify_base",  cast(void**)& gtk_widget_modify_base},
	{ "gtk_widget_modify_font",  cast(void**)& gtk_widget_modify_font},
	{ "gtk_widget_modify_cursor",  cast(void**)& gtk_widget_modify_cursor},
	{ "gtk_widget_create_pango_context",  cast(void**)& gtk_widget_create_pango_context},
	{ "gtk_widget_get_pango_context",  cast(void**)& gtk_widget_get_pango_context},
	{ "gtk_widget_create_pango_layout",  cast(void**)& gtk_widget_create_pango_layout},
	{ "gtk_widget_render_icon",  cast(void**)& gtk_widget_render_icon},
	{ "gtk_widget_pop_composite_child",  cast(void**)& gtk_widget_pop_composite_child},
	{ "gtk_widget_push_composite_child",  cast(void**)& gtk_widget_push_composite_child},
	{ "gtk_widget_queue_clear",  cast(void**)& gtk_widget_queue_clear},
	{ "gtk_widget_queue_clear_area",  cast(void**)& gtk_widget_queue_clear_area},
	{ "gtk_widget_queue_draw_area",  cast(void**)& gtk_widget_queue_draw_area},
	{ "gtk_widget_reset_shapes",  cast(void**)& gtk_widget_reset_shapes},
	{ "gtk_widget_set_app_paintable",  cast(void**)& gtk_widget_set_app_paintable},
	{ "gtk_widget_set_double_buffered",  cast(void**)& gtk_widget_set_double_buffered},
	{ "gtk_widget_set_redraw_on_allocate",  cast(void**)& gtk_widget_set_redraw_on_allocate},
	{ "gtk_widget_set_composite_name",  cast(void**)& gtk_widget_set_composite_name},
	{ "gtk_widget_set_scroll_adjustments",  cast(void**)& gtk_widget_set_scroll_adjustments},
	{ "gtk_widget_mnemonic_activate",  cast(void**)& gtk_widget_mnemonic_activate},
	{ "gtk_widget_class_install_style_property",  cast(void**)& gtk_widget_class_install_style_property},
	{ "gtk_widget_class_install_style_property_parser",  cast(void**)& gtk_widget_class_install_style_property_parser},
	{ "gtk_widget_class_find_style_property",  cast(void**)& gtk_widget_class_find_style_property},
	{ "gtk_widget_class_list_style_properties",  cast(void**)& gtk_widget_class_list_style_properties},
	{ "gtk_widget_region_intersect",  cast(void**)& gtk_widget_region_intersect},
	{ "gtk_widget_send_expose",  cast(void**)& gtk_widget_send_expose},
	{ "gtk_widget_style_get",  cast(void**)& gtk_widget_style_get},
	{ "gtk_widget_style_get_property",  cast(void**)& gtk_widget_style_get_property},
	{ "gtk_widget_style_get_valist",  cast(void**)& gtk_widget_style_get_valist},
	{ "gtk_widget_get_accessible",  cast(void**)& gtk_widget_get_accessible},
	{ "gtk_widget_child_focus",  cast(void**)& gtk_widget_child_focus},
	{ "gtk_widget_child_notify",  cast(void**)& gtk_widget_child_notify},
	{ "gtk_widget_freeze_child_notify",  cast(void**)& gtk_widget_freeze_child_notify},
	{ "gtk_widget_get_child_visible",  cast(void**)& gtk_widget_get_child_visible},
	{ "gtk_widget_get_parent",  cast(void**)& gtk_widget_get_parent},
	{ "gtk_widget_get_settings",  cast(void**)& gtk_widget_get_settings},
	{ "gtk_widget_get_clipboard",  cast(void**)& gtk_widget_get_clipboard},
	{ "gtk_widget_get_display",  cast(void**)& gtk_widget_get_display},
	{ "gtk_widget_get_root_window",  cast(void**)& gtk_widget_get_root_window},
	{ "gtk_widget_get_screen",  cast(void**)& gtk_widget_get_screen},
	{ "gtk_widget_has_screen",  cast(void**)& gtk_widget_has_screen},
	{ "gtk_widget_get_size_request",  cast(void**)& gtk_widget_get_size_request},
	{ "gtk_widget_set_child_visible",  cast(void**)& gtk_widget_set_child_visible},
	{ "gtk_widget_set_size_request",  cast(void**)& gtk_widget_set_size_request},
	{ "gtk_widget_thaw_child_notify",  cast(void**)& gtk_widget_thaw_child_notify},
	{ "gtk_widget_set_no_show_all",  cast(void**)& gtk_widget_set_no_show_all},
	{ "gtk_widget_get_no_show_all",  cast(void**)& gtk_widget_get_no_show_all},
	{ "gtk_widget_list_mnemonic_labels",  cast(void**)& gtk_widget_list_mnemonic_labels},
	{ "gtk_widget_add_mnemonic_label",  cast(void**)& gtk_widget_add_mnemonic_label},
	{ "gtk_widget_remove_mnemonic_label",  cast(void**)& gtk_widget_remove_mnemonic_label},
	{ "gtk_widget_get_action",  cast(void**)& gtk_widget_get_action},
	{ "gtk_widget_is_composited",  cast(void**)& gtk_widget_is_composited},
	{ "gtk_widget_error_bell",  cast(void**)& gtk_widget_error_bell},
	{ "gtk_widget_keynav_failed",  cast(void**)& gtk_widget_keynav_failed},
	{ "gtk_widget_get_tooltip_markup",  cast(void**)& gtk_widget_get_tooltip_markup},
	{ "gtk_widget_set_tooltip_markup",  cast(void**)& gtk_widget_set_tooltip_markup},
	{ "gtk_widget_get_tooltip_text",  cast(void**)& gtk_widget_get_tooltip_text},
	{ "gtk_widget_set_tooltip_text",  cast(void**)& gtk_widget_set_tooltip_text},
	{ "gtk_widget_get_tooltip_window",  cast(void**)& gtk_widget_get_tooltip_window},
	{ "gtk_widget_set_tooltip_window",  cast(void**)& gtk_widget_set_tooltip_window},
	{ "gtk_widget_get_has_tooltip",  cast(void**)& gtk_widget_get_has_tooltip},
	{ "gtk_widget_set_has_tooltip",  cast(void**)& gtk_widget_set_has_tooltip},
	{ "gtk_widget_trigger_tooltip_query",  cast(void**)& gtk_widget_trigger_tooltip_query},
	{ "gtk_requisition_copy",  cast(void**)& gtk_requisition_copy},
	{ "gtk_requisition_free",  cast(void**)& gtk_requisition_free},
	{ "gtk_im_context_set_client_window",  cast(void**)& gtk_im_context_set_client_window},
	{ "gtk_im_context_get_preedit_string",  cast(void**)& gtk_im_context_get_preedit_string},
	{ "gtk_im_context_filter_keypress",  cast(void**)& gtk_im_context_filter_keypress},
	{ "gtk_im_context_focus_in",  cast(void**)& gtk_im_context_focus_in},
	{ "gtk_im_context_focus_out",  cast(void**)& gtk_im_context_focus_out},
	{ "gtk_im_context_reset",  cast(void**)& gtk_im_context_reset},
	{ "gtk_im_context_set_cursor_location",  cast(void**)& gtk_im_context_set_cursor_location},
	{ "gtk_im_context_set_use_preedit",  cast(void**)& gtk_im_context_set_use_preedit},
	{ "gtk_im_context_set_surrounding",  cast(void**)& gtk_im_context_set_surrounding},
	{ "gtk_im_context_get_surrounding",  cast(void**)& gtk_im_context_get_surrounding},
	{ "gtk_im_context_delete_surrounding",  cast(void**)& gtk_im_context_delete_surrounding},
	{ "gtk_plug_construct",  cast(void**)& gtk_plug_construct},
	{ "gtk_plug_construct_for_display",  cast(void**)& gtk_plug_construct_for_display},
	{ "gtk_plug_new",  cast(void**)& gtk_plug_new},
	{ "gtk_plug_new_for_display",  cast(void**)& gtk_plug_new_for_display},
	{ "gtk_plug_get_id",  cast(void**)& gtk_plug_get_id},
	{ "gtk_socket_new",  cast(void**)& gtk_socket_new},
	{ "gtk_socket_steal",  cast(void**)& gtk_socket_steal},
	{ "gtk_socket_add_id",  cast(void**)& gtk_socket_add_id},
	{ "gtk_socket_get_id",  cast(void**)& gtk_socket_get_id},
	{ "gtk_curve_new",  cast(void**)& gtk_curve_new},
	{ "gtk_curve_reset",  cast(void**)& gtk_curve_reset},
	{ "gtk_curve_set_gamma",  cast(void**)& gtk_curve_set_gamma},
	{ "gtk_curve_set_range",  cast(void**)& gtk_curve_set_range},
	{ "gtk_curve_get_vector",  cast(void**)& gtk_curve_get_vector},
	{ "gtk_curve_set_vector",  cast(void**)& gtk_curve_set_vector},
	{ "gtk_curve_set_curve_type",  cast(void**)& gtk_curve_set_curve_type},
	{ "gtk_gamma_curve_new",  cast(void**)& gtk_gamma_curve_new},
	{ "gtk_ruler_set_metric",  cast(void**)& gtk_ruler_set_metric},
	{ "gtk_ruler_set_range",  cast(void**)& gtk_ruler_set_range},
	{ "gtk_ruler_get_metric",  cast(void**)& gtk_ruler_get_metric},
	{ "gtk_ruler_get_range",  cast(void**)& gtk_ruler_get_range},
	{ "gtk_hruler_new",  cast(void**)& gtk_hruler_new},
	{ "gtk_vruler_new",  cast(void**)& gtk_vruler_new},
	{ "gtk_recent_manager_new",  cast(void**)& gtk_recent_manager_new},
	{ "gtk_recent_manager_get_default",  cast(void**)& gtk_recent_manager_get_default},
	{ "gtk_recent_manager_get_for_screen",  cast(void**)& gtk_recent_manager_get_for_screen},
	{ "gtk_recent_manager_set_screen",  cast(void**)& gtk_recent_manager_set_screen},
	{ "gtk_recent_manager_add_item",  cast(void**)& gtk_recent_manager_add_item},
	{ "gtk_recent_manager_add_full",  cast(void**)& gtk_recent_manager_add_full},
	{ "gtk_recent_manager_remove_item",  cast(void**)& gtk_recent_manager_remove_item},
	{ "gtk_recent_manager_lookup_item",  cast(void**)& gtk_recent_manager_lookup_item},
	{ "gtk_recent_manager_has_item",  cast(void**)& gtk_recent_manager_has_item},
	{ "gtk_recent_manager_move_item",  cast(void**)& gtk_recent_manager_move_item},
	{ "gtk_recent_manager_get_limit",  cast(void**)& gtk_recent_manager_get_limit},
	{ "gtk_recent_manager_set_limit",  cast(void**)& gtk_recent_manager_set_limit},
	{ "gtk_recent_manager_get_items",  cast(void**)& gtk_recent_manager_get_items},
	{ "gtk_recent_manager_purge_items",  cast(void**)& gtk_recent_manager_purge_items},
	{ "gtk_recent_info_ref",  cast(void**)& gtk_recent_info_ref},
	{ "gtk_recent_info_unref",  cast(void**)& gtk_recent_info_unref},
	{ "gtk_recent_info_get_uri",  cast(void**)& gtk_recent_info_get_uri},
	{ "gtk_recent_info_get_display_name",  cast(void**)& gtk_recent_info_get_display_name},
	{ "gtk_recent_info_get_description",  cast(void**)& gtk_recent_info_get_description},
	{ "gtk_recent_info_get_mime_type",  cast(void**)& gtk_recent_info_get_mime_type},
	{ "gtk_recent_info_get_added",  cast(void**)& gtk_recent_info_get_added},
	{ "gtk_recent_info_get_modified",  cast(void**)& gtk_recent_info_get_modified},
	{ "gtk_recent_info_get_visited",  cast(void**)& gtk_recent_info_get_visited},
	{ "gtk_recent_info_get_private_hint",  cast(void**)& gtk_recent_info_get_private_hint},
	{ "gtk_recent_info_get_application_info",  cast(void**)& gtk_recent_info_get_application_info},
	{ "gtk_recent_info_get_applications",  cast(void**)& gtk_recent_info_get_applications},
	{ "gtk_recent_info_last_application",  cast(void**)& gtk_recent_info_last_application},
	{ "gtk_recent_info_get_groups",  cast(void**)& gtk_recent_info_get_groups},
	{ "gtk_recent_info_has_group",  cast(void**)& gtk_recent_info_has_group},
	{ "gtk_recent_info_has_application",  cast(void**)& gtk_recent_info_has_application},
	{ "gtk_recent_info_get_icon",  cast(void**)& gtk_recent_info_get_icon},
	{ "gtk_recent_info_get_short_name",  cast(void**)& gtk_recent_info_get_short_name},
	{ "gtk_recent_info_get_uri_display",  cast(void**)& gtk_recent_info_get_uri_display},
	{ "gtk_recent_info_get_age",  cast(void**)& gtk_recent_info_get_age},
	{ "gtk_recent_info_is_local",  cast(void**)& gtk_recent_info_is_local},
	{ "gtk_recent_info_exists",  cast(void**)& gtk_recent_info_exists},
	{ "gtk_recent_info_match",  cast(void**)& gtk_recent_info_match},
	{ "gtk_recent_chooser_set_show_private",  cast(void**)& gtk_recent_chooser_set_show_private},
	{ "gtk_recent_chooser_get_show_private",  cast(void**)& gtk_recent_chooser_get_show_private},
	{ "gtk_recent_chooser_set_show_not_found",  cast(void**)& gtk_recent_chooser_set_show_not_found},
	{ "gtk_recent_chooser_get_show_not_found",  cast(void**)& gtk_recent_chooser_get_show_not_found},
	{ "gtk_recent_chooser_set_show_icons",  cast(void**)& gtk_recent_chooser_set_show_icons},
	{ "gtk_recent_chooser_get_show_icons",  cast(void**)& gtk_recent_chooser_get_show_icons},
	{ "gtk_recent_chooser_set_select_multiple",  cast(void**)& gtk_recent_chooser_set_select_multiple},
	{ "gtk_recent_chooser_get_select_multiple",  cast(void**)& gtk_recent_chooser_get_select_multiple},
	{ "gtk_recent_chooser_set_local_only",  cast(void**)& gtk_recent_chooser_set_local_only},
	{ "gtk_recent_chooser_get_local_only",  cast(void**)& gtk_recent_chooser_get_local_only},
	{ "gtk_recent_chooser_set_limit",  cast(void**)& gtk_recent_chooser_set_limit},
	{ "gtk_recent_chooser_get_limit",  cast(void**)& gtk_recent_chooser_get_limit},
	{ "gtk_recent_chooser_set_show_tips",  cast(void**)& gtk_recent_chooser_set_show_tips},
	{ "gtk_recent_chooser_get_show_tips",  cast(void**)& gtk_recent_chooser_get_show_tips},
	{ "gtk_recent_chooser_set_show_numbers",  cast(void**)& gtk_recent_chooser_set_show_numbers},
	{ "gtk_recent_chooser_get_show_numbers",  cast(void**)& gtk_recent_chooser_get_show_numbers},
	{ "gtk_recent_chooser_set_sort_type",  cast(void**)& gtk_recent_chooser_set_sort_type},
	{ "gtk_recent_chooser_get_sort_type",  cast(void**)& gtk_recent_chooser_get_sort_type},
	{ "gtk_recent_chooser_set_sort_func",  cast(void**)& gtk_recent_chooser_set_sort_func},
	{ "gtk_recent_chooser_set_current_uri",  cast(void**)& gtk_recent_chooser_set_current_uri},
	{ "gtk_recent_chooser_get_current_uri",  cast(void**)& gtk_recent_chooser_get_current_uri},
	{ "gtk_recent_chooser_get_current_item",  cast(void**)& gtk_recent_chooser_get_current_item},
	{ "gtk_recent_chooser_select_uri",  cast(void**)& gtk_recent_chooser_select_uri},
	{ "gtk_recent_chooser_unselect_uri",  cast(void**)& gtk_recent_chooser_unselect_uri},
	{ "gtk_recent_chooser_select_all",  cast(void**)& gtk_recent_chooser_select_all},
	{ "gtk_recent_chooser_unselect_all",  cast(void**)& gtk_recent_chooser_unselect_all},
	{ "gtk_recent_chooser_get_items",  cast(void**)& gtk_recent_chooser_get_items},
	{ "gtk_recent_chooser_get_uris",  cast(void**)& gtk_recent_chooser_get_uris},
	{ "gtk_recent_chooser_add_filter",  cast(void**)& gtk_recent_chooser_add_filter},
	{ "gtk_recent_chooser_remove_filter",  cast(void**)& gtk_recent_chooser_remove_filter},
	{ "gtk_recent_chooser_list_filters",  cast(void**)& gtk_recent_chooser_list_filters},
	{ "gtk_recent_chooser_set_filter",  cast(void**)& gtk_recent_chooser_set_filter},
	{ "gtk_recent_chooser_get_filter",  cast(void**)& gtk_recent_chooser_get_filter},
	{ "gtk_recent_chooser_dialog_new",  cast(void**)& gtk_recent_chooser_dialog_new},
	{ "gtk_recent_chooser_dialog_new_for_manager",  cast(void**)& gtk_recent_chooser_dialog_new_for_manager},
	{ "gtk_recent_chooser_menu_new",  cast(void**)& gtk_recent_chooser_menu_new},
	{ "gtk_recent_chooser_menu_new_for_manager",  cast(void**)& gtk_recent_chooser_menu_new_for_manager},
	{ "gtk_recent_chooser_menu_get_show_numbers",  cast(void**)& gtk_recent_chooser_menu_get_show_numbers},
	{ "gtk_recent_chooser_menu_set_show_numbers",  cast(void**)& gtk_recent_chooser_menu_set_show_numbers},
	{ "gtk_recent_chooser_widget_new",  cast(void**)& gtk_recent_chooser_widget_new},
	{ "gtk_recent_chooser_widget_new_for_manager",  cast(void**)& gtk_recent_chooser_widget_new_for_manager},
	{ "gtk_recent_filter_new",  cast(void**)& gtk_recent_filter_new},
	{ "gtk_recent_filter_get_name",  cast(void**)& gtk_recent_filter_get_name},
	{ "gtk_recent_filter_set_name",  cast(void**)& gtk_recent_filter_set_name},
	{ "gtk_recent_filter_add_mime_type",  cast(void**)& gtk_recent_filter_add_mime_type},
	{ "gtk_recent_filter_add_pattern",  cast(void**)& gtk_recent_filter_add_pattern},
	{ "gtk_recent_filter_add_pixbuf_formats",  cast(void**)& gtk_recent_filter_add_pixbuf_formats},
	{ "gtk_recent_filter_add_application",  cast(void**)& gtk_recent_filter_add_application},
	{ "gtk_recent_filter_add_group",  cast(void**)& gtk_recent_filter_add_group},
	{ "gtk_recent_filter_add_age",  cast(void**)& gtk_recent_filter_add_age},
	{ "gtk_recent_filter_add_custom",  cast(void**)& gtk_recent_filter_add_custom},
	{ "gtk_recent_filter_get_needed",  cast(void**)& gtk_recent_filter_get_needed},
	{ "gtk_recent_filter_filter",  cast(void**)& gtk_recent_filter_filter},
	{ "gtk_buildable_set_name",  cast(void**)& gtk_buildable_set_name},
	{ "gtk_buildable_get_name",  cast(void**)& gtk_buildable_get_name},
	{ "gtk_buildable_add_child",  cast(void**)& gtk_buildable_add_child},
	{ "gtk_buildable_set_buildable_property",  cast(void**)& gtk_buildable_set_buildable_property},
	{ "gtk_buildable_construct_child",  cast(void**)& gtk_buildable_construct_child},
	{ "gtk_buildable_custom_tag_start",  cast(void**)& gtk_buildable_custom_tag_start},
	{ "gtk_buildable_custom_tag_end",  cast(void**)& gtk_buildable_custom_tag_end},
	{ "gtk_buildable_custom_finished",  cast(void**)& gtk_buildable_custom_finished},
	{ "gtk_buildable_parser_finished",  cast(void**)& gtk_buildable_parser_finished},
	{ "gtk_buildable_get_internal_child",  cast(void**)& gtk_buildable_get_internal_child},
	{ "gtk_builder_new",  cast(void**)& gtk_builder_new},
	{ "gtk_builder_add_from_file",  cast(void**)& gtk_builder_add_from_file},
	{ "gtk_builder_add_from_string",  cast(void**)& gtk_builder_add_from_string},
	{ "gtk_builder_get_object",  cast(void**)& gtk_builder_get_object},
	{ "gtk_builder_get_objects",  cast(void**)& gtk_builder_get_objects},
	{ "gtk_builder_connect_signals",  cast(void**)& gtk_builder_connect_signals},
	{ "gtk_builder_connect_signals_full",  cast(void**)& gtk_builder_connect_signals_full},
	{ "gtk_builder_set_translation_domain",  cast(void**)& gtk_builder_set_translation_domain},
	{ "gtk_builder_get_translation_domain",  cast(void**)& gtk_builder_get_translation_domain},
	{ "gtk_builder_get_type_from_name",  cast(void**)& gtk_builder_get_type_from_name},
	{ "gtk_builder_value_from_string",  cast(void**)& gtk_builder_value_from_string},
	{ "gtk_builder_value_from_string_type",  cast(void**)& gtk_builder_value_from_string_type},
	{ "gtk_file_selection_new",  cast(void**)& gtk_file_selection_new},
	{ "gtk_file_selection_set_filename",  cast(void**)& gtk_file_selection_set_filename},
	{ "gtk_file_selection_get_filename",  cast(void**)& gtk_file_selection_get_filename},
	{ "gtk_file_selection_complete",  cast(void**)& gtk_file_selection_complete},
	{ "gtk_file_selection_show_fileop_buttons",  cast(void**)& gtk_file_selection_show_fileop_buttons},
	{ "gtk_file_selection_hide_fileop_buttons",  cast(void**)& gtk_file_selection_hide_fileop_buttons},
	{ "gtk_file_selection_get_selections",  cast(void**)& gtk_file_selection_get_selections},
	{ "gtk_file_selection_set_select_multiple",  cast(void**)& gtk_file_selection_set_select_multiple},
	{ "gtk_file_selection_get_select_multiple",  cast(void**)& gtk_file_selection_get_select_multiple},
	{ "gtk_item_factory_new",  cast(void**)& gtk_item_factory_new},
	{ "gtk_item_factory_construct",  cast(void**)& gtk_item_factory_construct},
	{ "gtk_item_factory_add_foreign",  cast(void**)& gtk_item_factory_add_foreign},
	{ "gtk_item_factory_from_widget",  cast(void**)& gtk_item_factory_from_widget},
	{ "gtk_item_factory_path_from_widget",  cast(void**)& gtk_item_factory_path_from_widget},
	{ "gtk_item_factory_get_item",  cast(void**)& gtk_item_factory_get_item},
	{ "gtk_item_factory_get_widget",  cast(void**)& gtk_item_factory_get_widget},
	{ "gtk_item_factory_get_widget_by_action",  cast(void**)& gtk_item_factory_get_widget_by_action},
	{ "gtk_item_factory_get_item_by_action",  cast(void**)& gtk_item_factory_get_item_by_action},
	{ "gtk_item_factory_create_item",  cast(void**)& gtk_item_factory_create_item},
	{ "gtk_item_factory_create_items",  cast(void**)& gtk_item_factory_create_items},
	{ "gtk_item_factory_create_items_ac",  cast(void**)& gtk_item_factory_create_items_ac},
	{ "gtk_item_factory_delete_item",  cast(void**)& gtk_item_factory_delete_item},
	{ "gtk_item_factory_delete_entry",  cast(void**)& gtk_item_factory_delete_entry},
	{ "gtk_item_factory_delete_entries",  cast(void**)& gtk_item_factory_delete_entries},
	{ "gtk_item_factory_popup",  cast(void**)& gtk_item_factory_popup},
	{ "gtk_item_factory_popup_with_data",  cast(void**)& gtk_item_factory_popup_with_data},
	{ "gtk_item_factory_popup_data",  cast(void**)& gtk_item_factory_popup_data},
	{ "gtk_item_factory_popup_data_from_widget",  cast(void**)& gtk_item_factory_popup_data_from_widget},
	{ "gtk_item_factory_from_path",  cast(void**)& gtk_item_factory_from_path},
	{ "gtk_item_factories_path_delete",  cast(void**)& gtk_item_factories_path_delete},
	{ "gtk_item_factory_set_translate_func",  cast(void**)& gtk_item_factory_set_translate_func},
	{ "gtk_tooltips_new",  cast(void**)& gtk_tooltips_new},
	{ "gtk_tooltips_enable",  cast(void**)& gtk_tooltips_enable},
	{ "gtk_tooltips_disable",  cast(void**)& gtk_tooltips_disable},
	{ "gtk_tooltips_set_delay",  cast(void**)& gtk_tooltips_set_delay},
	{ "gtk_tooltips_set_tip",  cast(void**)& gtk_tooltips_set_tip},
	{ "gtk_tooltips_data_get",  cast(void**)& gtk_tooltips_data_get},
	{ "gtk_tooltips_force_window",  cast(void**)& gtk_tooltips_force_window},
	{ "gtk_tooltips_get_info_from_tip_window",  cast(void**)& gtk_tooltips_get_info_from_tip_window},
	{ "gtk_progress_set_show_text",  cast(void**)& gtk_progress_set_show_text},
	{ "gtk_progress_set_text_alignment",  cast(void**)& gtk_progress_set_text_alignment},
	{ "gtk_progress_set_format_string",  cast(void**)& gtk_progress_set_format_string},
	{ "gtk_progress_set_adjustment",  cast(void**)& gtk_progress_set_adjustment},
	{ "gtk_progress_set_percentage",  cast(void**)& gtk_progress_set_percentage},
	{ "gtk_progress_set_value",  cast(void**)& gtk_progress_set_value},
	{ "gtk_progress_get_value",  cast(void**)& gtk_progress_get_value},
	{ "gtk_progress_set_activity_mode",  cast(void**)& gtk_progress_set_activity_mode},
	{ "gtk_progress_get_current_text",  cast(void**)& gtk_progress_get_current_text},
	{ "gtk_progress_get_text_from_value",  cast(void**)& gtk_progress_get_text_from_value},
	{ "gtk_progress_get_current_percentage",  cast(void**)& gtk_progress_get_current_percentage},
	{ "gtk_progress_get_percentage_from_value",  cast(void**)& gtk_progress_get_percentage_from_value},
	{ "gtk_progress_configure",  cast(void**)& gtk_progress_configure},

];