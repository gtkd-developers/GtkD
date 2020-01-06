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


module gtk.c.functions;

import std.stdio;
import gtk.c.types;
version (Windows)
	static immutable LIBRARY_GTK = ["libgdk-3-0.dll;gdk-3-3.0.dll;gdk-3.dll", "libgtk-3-0.dll;gtk-3-3.0.dll;gtk-3.dll"];
else version (OSX)
	static immutable LIBRARY_GTK = ["libgdk-3.0.dylib", "libgtk-3.0.dylib"];
else
	static immutable LIBRARY_GTK = ["libgdk-3.so.0", "libgtk-3.so.0"];

__gshared extern(C)
{

	// gtk.AboutDialog

	GType gtk_about_dialog_get_type();
	GtkWidget* gtk_about_dialog_new();
	void gtk_about_dialog_add_credit_section(GtkAboutDialog* about, const(char)* sectionName, char** people);
	char** gtk_about_dialog_get_artists(GtkAboutDialog* about);
	char** gtk_about_dialog_get_authors(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_comments(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_copyright(GtkAboutDialog* about);
	char** gtk_about_dialog_get_documenters(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_license(GtkAboutDialog* about);
	GtkLicense gtk_about_dialog_get_license_type(GtkAboutDialog* about);
	GdkPixbuf* gtk_about_dialog_get_logo(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_logo_icon_name(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_program_name(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_translator_credits(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_version(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_website(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_website_label(GtkAboutDialog* about);
	int gtk_about_dialog_get_wrap_license(GtkAboutDialog* about);
	void gtk_about_dialog_set_artists(GtkAboutDialog* about, char** artists);
	void gtk_about_dialog_set_authors(GtkAboutDialog* about, char** authors);
	void gtk_about_dialog_set_comments(GtkAboutDialog* about, const(char)* comments);
	void gtk_about_dialog_set_copyright(GtkAboutDialog* about, const(char)* copyright);
	void gtk_about_dialog_set_documenters(GtkAboutDialog* about, char** documenters);
	void gtk_about_dialog_set_license(GtkAboutDialog* about, const(char)* license);
	void gtk_about_dialog_set_license_type(GtkAboutDialog* about, GtkLicense licenseType);
	void gtk_about_dialog_set_logo(GtkAboutDialog* about, GdkPixbuf* logo);
	void gtk_about_dialog_set_logo_icon_name(GtkAboutDialog* about, const(char)* iconName);
	void gtk_about_dialog_set_program_name(GtkAboutDialog* about, const(char)* name);
	void gtk_about_dialog_set_translator_credits(GtkAboutDialog* about, const(char)* translatorCredits);
	void gtk_about_dialog_set_version(GtkAboutDialog* about, const(char)* version_);
	void gtk_about_dialog_set_website(GtkAboutDialog* about, const(char)* website);
	void gtk_about_dialog_set_website_label(GtkAboutDialog* about, const(char)* websiteLabel);
	void gtk_about_dialog_set_wrap_license(GtkAboutDialog* about, int wrapLicense);
	void gtk_show_about_dialog(GtkWindow* parent, const(char)* firstPropertyName, ... );

	// gtk.AccelGroup

	GType gtk_accel_group_get_type();
	GtkAccelGroup* gtk_accel_group_new();
	GtkAccelGroup* gtk_accel_group_from_accel_closure(GClosure* closure);
	int gtk_accel_group_activate(GtkAccelGroup* accelGroup, GQuark accelQuark, GObject* acceleratable, uint accelKey, GdkModifierType accelMods);
	void gtk_accel_group_connect(GtkAccelGroup* accelGroup, uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, GClosure* closure);
	void gtk_accel_group_connect_by_path(GtkAccelGroup* accelGroup, const(char)* accelPath, GClosure* closure);
	int gtk_accel_group_disconnect(GtkAccelGroup* accelGroup, GClosure* closure);
	int gtk_accel_group_disconnect_key(GtkAccelGroup* accelGroup, uint accelKey, GdkModifierType accelMods);
	GtkAccelKey* gtk_accel_group_find(GtkAccelGroup* accelGroup, GtkAccelGroupFindFunc findFunc, void* data);
	int gtk_accel_group_get_is_locked(GtkAccelGroup* accelGroup);
	GdkModifierType gtk_accel_group_get_modifier_mask(GtkAccelGroup* accelGroup);
	void gtk_accel_group_lock(GtkAccelGroup* accelGroup);
	GtkAccelGroupEntry* gtk_accel_group_query(GtkAccelGroup* accelGroup, uint accelKey, GdkModifierType accelMods, uint* nEntries);
	void gtk_accel_group_unlock(GtkAccelGroup* accelGroup);
	int gtk_accel_groups_activate(GObject* object, uint accelKey, GdkModifierType accelMods);
	GSList* gtk_accel_groups_from_object(GObject* object);
	GdkModifierType gtk_accelerator_get_default_mod_mask();
	char* gtk_accelerator_get_label(uint acceleratorKey, GdkModifierType acceleratorMods);
	char* gtk_accelerator_get_label_with_keycode(GdkDisplay* display, uint acceleratorKey, uint keycode, GdkModifierType acceleratorMods);
	char* gtk_accelerator_name(uint acceleratorKey, GdkModifierType acceleratorMods);
	char* gtk_accelerator_name_with_keycode(GdkDisplay* display, uint acceleratorKey, uint keycode, GdkModifierType acceleratorMods);
	void gtk_accelerator_parse(const(char)* accelerator, uint* acceleratorKey, GdkModifierType* acceleratorMods);
	void gtk_accelerator_parse_with_keycode(const(char)* accelerator, uint* acceleratorKey, uint** acceleratorCodes, GdkModifierType* acceleratorMods);
	void gtk_accelerator_set_default_mod_mask(GdkModifierType defaultModMask);
	int gtk_accelerator_valid(uint keyval, GdkModifierType modifiers);

	// gtk.AccelLabel

	GType gtk_accel_label_get_type();
	GtkWidget* gtk_accel_label_new(const(char)* string_);
	void gtk_accel_label_get_accel(GtkAccelLabel* accelLabel, uint* acceleratorKey, GdkModifierType* acceleratorMods);
	GtkWidget* gtk_accel_label_get_accel_widget(GtkAccelLabel* accelLabel);
	uint gtk_accel_label_get_accel_width(GtkAccelLabel* accelLabel);
	int gtk_accel_label_refetch(GtkAccelLabel* accelLabel);
	void gtk_accel_label_set_accel(GtkAccelLabel* accelLabel, uint acceleratorKey, GdkModifierType acceleratorMods);
	void gtk_accel_label_set_accel_closure(GtkAccelLabel* accelLabel, GClosure* accelClosure);
	void gtk_accel_label_set_accel_widget(GtkAccelLabel* accelLabel, GtkWidget* accelWidget);

	// gtk.AccelMap

	GType gtk_accel_map_get_type();
	void gtk_accel_map_add_entry(const(char)* accelPath, uint accelKey, GdkModifierType accelMods);
	void gtk_accel_map_add_filter(const(char)* filterPattern);
	int gtk_accel_map_change_entry(const(char)* accelPath, uint accelKey, GdkModifierType accelMods, int replace);
	void gtk_accel_map_foreach(void* data, GtkAccelMapForeach foreachFunc);
	void gtk_accel_map_foreach_unfiltered(void* data, GtkAccelMapForeach foreachFunc);
	GtkAccelMap* gtk_accel_map_get();
	void gtk_accel_map_load(char* fileName);
	void gtk_accel_map_load_fd(int fd);
	void gtk_accel_map_load_scanner(GScanner* scanner);
	void gtk_accel_map_lock_path(const(char)* accelPath);
	int gtk_accel_map_lookup_entry(const(char)* accelPath, GtkAccelKey* key);
	void gtk_accel_map_save(char* fileName);
	void gtk_accel_map_save_fd(int fd);
	void gtk_accel_map_unlock_path(const(char)* accelPath);

	// gtk.Accessible

	GType gtk_accessible_get_type();
	void gtk_accessible_connect_widget_destroyed(GtkAccessible* accessible);
	GtkWidget* gtk_accessible_get_widget(GtkAccessible* accessible);
	void gtk_accessible_set_widget(GtkAccessible* accessible, GtkWidget* widget);

	// gtk.Action

	GType gtk_action_get_type();
	GtkAction* gtk_action_new(const(char)* name, const(char)* label, const(char)* tooltip, const(char)* stockId);
	void gtk_action_activate(GtkAction* action);
	void gtk_action_block_activate(GtkAction* action);
	void gtk_action_connect_accelerator(GtkAction* action);
	GtkWidget* gtk_action_create_icon(GtkAction* action, GtkIconSize iconSize);
	GtkWidget* gtk_action_create_menu(GtkAction* action);
	GtkWidget* gtk_action_create_menu_item(GtkAction* action);
	GtkWidget* gtk_action_create_tool_item(GtkAction* action);
	void gtk_action_disconnect_accelerator(GtkAction* action);
	GClosure* gtk_action_get_accel_closure(GtkAction* action);
	const(char)* gtk_action_get_accel_path(GtkAction* action);
	int gtk_action_get_always_show_image(GtkAction* action);
	GIcon* gtk_action_get_gicon(GtkAction* action);
	const(char)* gtk_action_get_icon_name(GtkAction* action);
	int gtk_action_get_is_important(GtkAction* action);
	const(char)* gtk_action_get_label(GtkAction* action);
	const(char)* gtk_action_get_name(GtkAction* action);
	GSList* gtk_action_get_proxies(GtkAction* action);
	int gtk_action_get_sensitive(GtkAction* action);
	const(char)* gtk_action_get_short_label(GtkAction* action);
	const(char)* gtk_action_get_stock_id(GtkAction* action);
	const(char)* gtk_action_get_tooltip(GtkAction* action);
	int gtk_action_get_visible(GtkAction* action);
	int gtk_action_get_visible_horizontal(GtkAction* action);
	int gtk_action_get_visible_vertical(GtkAction* action);
	int gtk_action_is_sensitive(GtkAction* action);
	int gtk_action_is_visible(GtkAction* action);
	void gtk_action_set_accel_group(GtkAction* action, GtkAccelGroup* accelGroup);
	void gtk_action_set_accel_path(GtkAction* action, const(char)* accelPath);
	void gtk_action_set_always_show_image(GtkAction* action, int alwaysShow);
	void gtk_action_set_gicon(GtkAction* action, GIcon* icon);
	void gtk_action_set_icon_name(GtkAction* action, const(char)* iconName);
	void gtk_action_set_is_important(GtkAction* action, int isImportant);
	void gtk_action_set_label(GtkAction* action, const(char)* label);
	void gtk_action_set_sensitive(GtkAction* action, int sensitive);
	void gtk_action_set_short_label(GtkAction* action, const(char)* shortLabel);
	void gtk_action_set_stock_id(GtkAction* action, const(char)* stockId);
	void gtk_action_set_tooltip(GtkAction* action, const(char)* tooltip);
	void gtk_action_set_visible(GtkAction* action, int visible);
	void gtk_action_set_visible_horizontal(GtkAction* action, int visibleHorizontal);
	void gtk_action_set_visible_vertical(GtkAction* action, int visibleVertical);
	void gtk_action_unblock_activate(GtkAction* action);

	// gtk.ActionBar

	GType gtk_action_bar_get_type();
	GtkWidget* gtk_action_bar_new();
	GtkWidget* gtk_action_bar_get_center_widget(GtkActionBar* actionBar);
	void gtk_action_bar_pack_end(GtkActionBar* actionBar, GtkWidget* child);
	void gtk_action_bar_pack_start(GtkActionBar* actionBar, GtkWidget* child);
	void gtk_action_bar_set_center_widget(GtkActionBar* actionBar, GtkWidget* centerWidget);

	// gtk.ActionGroup

	GType gtk_action_group_get_type();
	GtkActionGroup* gtk_action_group_new(const(char)* name);
	void gtk_action_group_add_action(GtkActionGroup* actionGroup, GtkAction* action);
	void gtk_action_group_add_action_with_accel(GtkActionGroup* actionGroup, GtkAction* action, const(char)* accelerator);
	void gtk_action_group_add_actions(GtkActionGroup* actionGroup, GtkActionEntry* entries, uint nEntries, void* userData);
	void gtk_action_group_add_actions_full(GtkActionGroup* actionGroup, GtkActionEntry* entries, uint nEntries, void* userData, GDestroyNotify destroy);
	void gtk_action_group_add_radio_actions(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, uint nEntries, int value, GCallback onChange, void* userData);
	void gtk_action_group_add_radio_actions_full(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, uint nEntries, int value, GCallback onChange, void* userData, GDestroyNotify destroy);
	void gtk_action_group_add_toggle_actions(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, uint nEntries, void* userData);
	void gtk_action_group_add_toggle_actions_full(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, uint nEntries, void* userData, GDestroyNotify destroy);
	GtkAccelGroup* gtk_action_group_get_accel_group(GtkActionGroup* actionGroup);
	GtkAction* gtk_action_group_get_action(GtkActionGroup* actionGroup, const(char)* actionName);
	const(char)* gtk_action_group_get_name(GtkActionGroup* actionGroup);
	int gtk_action_group_get_sensitive(GtkActionGroup* actionGroup);
	int gtk_action_group_get_visible(GtkActionGroup* actionGroup);
	GList* gtk_action_group_list_actions(GtkActionGroup* actionGroup);
	void gtk_action_group_remove_action(GtkActionGroup* actionGroup, GtkAction* action);
	void gtk_action_group_set_accel_group(GtkActionGroup* actionGroup, GtkAccelGroup* accelGroup);
	void gtk_action_group_set_sensitive(GtkActionGroup* actionGroup, int sensitive);
	void gtk_action_group_set_translate_func(GtkActionGroup* actionGroup, GtkTranslateFunc func, void* data, GDestroyNotify notify);
	void gtk_action_group_set_translation_domain(GtkActionGroup* actionGroup, const(char)* domain);
	void gtk_action_group_set_visible(GtkActionGroup* actionGroup, int visible);
	const(char)* gtk_action_group_translate_string(GtkActionGroup* actionGroup, const(char)* string_);

	// gtk.Actionable

	GType gtk_actionable_get_type();
	const(char)* gtk_actionable_get_action_name(GtkActionable* actionable);
	GVariant* gtk_actionable_get_action_target_value(GtkActionable* actionable);
	void gtk_actionable_set_action_name(GtkActionable* actionable, const(char)* actionName);
	void gtk_actionable_set_action_target(GtkActionable* actionable, const(char)* formatString, ... );
	void gtk_actionable_set_action_target_value(GtkActionable* actionable, GVariant* targetValue);
	void gtk_actionable_set_detailed_action_name(GtkActionable* actionable, const(char)* detailedActionName);

	// gtk.Activatable

	GType gtk_activatable_get_type();
	void gtk_activatable_do_set_related_action(GtkActivatable* activatable, GtkAction* action);
	GtkAction* gtk_activatable_get_related_action(GtkActivatable* activatable);
	int gtk_activatable_get_use_action_appearance(GtkActivatable* activatable);
	void gtk_activatable_set_related_action(GtkActivatable* activatable, GtkAction* action);
	void gtk_activatable_set_use_action_appearance(GtkActivatable* activatable, int useAppearance);
	void gtk_activatable_sync_action_properties(GtkActivatable* activatable, GtkAction* action);

	// gtk.Adjustment

	GType gtk_adjustment_get_type();
	GtkAdjustment* gtk_adjustment_new(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize);
	void gtk_adjustment_changed(GtkAdjustment* adjustment);
	void gtk_adjustment_clamp_page(GtkAdjustment* adjustment, double lower, double upper);
	void gtk_adjustment_configure(GtkAdjustment* adjustment, double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize);
	double gtk_adjustment_get_lower(GtkAdjustment* adjustment);
	double gtk_adjustment_get_minimum_increment(GtkAdjustment* adjustment);
	double gtk_adjustment_get_page_increment(GtkAdjustment* adjustment);
	double gtk_adjustment_get_page_size(GtkAdjustment* adjustment);
	double gtk_adjustment_get_step_increment(GtkAdjustment* adjustment);
	double gtk_adjustment_get_upper(GtkAdjustment* adjustment);
	double gtk_adjustment_get_value(GtkAdjustment* adjustment);
	void gtk_adjustment_set_lower(GtkAdjustment* adjustment, double lower);
	void gtk_adjustment_set_page_increment(GtkAdjustment* adjustment, double pageIncrement);
	void gtk_adjustment_set_page_size(GtkAdjustment* adjustment, double pageSize);
	void gtk_adjustment_set_step_increment(GtkAdjustment* adjustment, double stepIncrement);
	void gtk_adjustment_set_upper(GtkAdjustment* adjustment, double upper);
	void gtk_adjustment_set_value(GtkAdjustment* adjustment, double value);
	void gtk_adjustment_value_changed(GtkAdjustment* adjustment);

	// gtk.Alignment

	GType gtk_alignment_get_type();
	GtkWidget* gtk_alignment_new(float xalign, float yalign, float xscale, float yscale);
	void gtk_alignment_get_padding(GtkAlignment* alignment, uint* paddingTop, uint* paddingBottom, uint* paddingLeft, uint* paddingRight);
	void gtk_alignment_set(GtkAlignment* alignment, float xalign, float yalign, float xscale, float yscale);
	void gtk_alignment_set_padding(GtkAlignment* alignment, uint paddingTop, uint paddingBottom, uint paddingLeft, uint paddingRight);

	// gtk.AppChooser

	GType gtk_app_chooser_get_type();
	GAppInfo* gtk_app_chooser_get_app_info(GtkAppChooser* self);
	char* gtk_app_chooser_get_content_type(GtkAppChooser* self);
	void gtk_app_chooser_refresh(GtkAppChooser* self);

	// gtk.AppChooserButton

	GType gtk_app_chooser_button_get_type();
	GtkWidget* gtk_app_chooser_button_new(const(char)* contentType);
	void gtk_app_chooser_button_append_custom_item(GtkAppChooserButton* self, const(char)* name, const(char)* label, GIcon* icon);
	void gtk_app_chooser_button_append_separator(GtkAppChooserButton* self);
	const(char)* gtk_app_chooser_button_get_heading(GtkAppChooserButton* self);
	int gtk_app_chooser_button_get_show_default_item(GtkAppChooserButton* self);
	int gtk_app_chooser_button_get_show_dialog_item(GtkAppChooserButton* self);
	void gtk_app_chooser_button_set_active_custom_item(GtkAppChooserButton* self, const(char)* name);
	void gtk_app_chooser_button_set_heading(GtkAppChooserButton* self, const(char)* heading);
	void gtk_app_chooser_button_set_show_default_item(GtkAppChooserButton* self, int setting);
	void gtk_app_chooser_button_set_show_dialog_item(GtkAppChooserButton* self, int setting);

	// gtk.AppChooserDialog

	GType gtk_app_chooser_dialog_get_type();
	GtkWidget* gtk_app_chooser_dialog_new(GtkWindow* parent, GtkDialogFlags flags, GFile* file);
	GtkWidget* gtk_app_chooser_dialog_new_for_content_type(GtkWindow* parent, GtkDialogFlags flags, const(char)* contentType);
	const(char)* gtk_app_chooser_dialog_get_heading(GtkAppChooserDialog* self);
	GtkWidget* gtk_app_chooser_dialog_get_widget(GtkAppChooserDialog* self);
	void gtk_app_chooser_dialog_set_heading(GtkAppChooserDialog* self, const(char)* heading);

	// gtk.AppChooserWidget

	GType gtk_app_chooser_widget_get_type();
	GtkWidget* gtk_app_chooser_widget_new(const(char)* contentType);
	const(char)* gtk_app_chooser_widget_get_default_text(GtkAppChooserWidget* self);
	int gtk_app_chooser_widget_get_show_all(GtkAppChooserWidget* self);
	int gtk_app_chooser_widget_get_show_default(GtkAppChooserWidget* self);
	int gtk_app_chooser_widget_get_show_fallback(GtkAppChooserWidget* self);
	int gtk_app_chooser_widget_get_show_other(GtkAppChooserWidget* self);
	int gtk_app_chooser_widget_get_show_recommended(GtkAppChooserWidget* self);
	void gtk_app_chooser_widget_set_default_text(GtkAppChooserWidget* self, const(char)* text);
	void gtk_app_chooser_widget_set_show_all(GtkAppChooserWidget* self, int setting);
	void gtk_app_chooser_widget_set_show_default(GtkAppChooserWidget* self, int setting);
	void gtk_app_chooser_widget_set_show_fallback(GtkAppChooserWidget* self, int setting);
	void gtk_app_chooser_widget_set_show_other(GtkAppChooserWidget* self, int setting);
	void gtk_app_chooser_widget_set_show_recommended(GtkAppChooserWidget* self, int setting);

	// gtk.Application

	GType gtk_application_get_type();
	GtkApplication* gtk_application_new(const(char)* applicationId, GApplicationFlags flags);
	void gtk_application_add_accelerator(GtkApplication* application, const(char)* accelerator, const(char)* actionName, GVariant* parameter);
	void gtk_application_add_window(GtkApplication* application, GtkWindow* window);
	char** gtk_application_get_accels_for_action(GtkApplication* application, const(char)* detailedActionName);
	char** gtk_application_get_actions_for_accel(GtkApplication* application, const(char)* accel);
	GtkWindow* gtk_application_get_active_window(GtkApplication* application);
	GMenuModel* gtk_application_get_app_menu(GtkApplication* application);
	GMenu* gtk_application_get_menu_by_id(GtkApplication* application, const(char)* id);
	GMenuModel* gtk_application_get_menubar(GtkApplication* application);
	GtkWindow* gtk_application_get_window_by_id(GtkApplication* application, uint id);
	GList* gtk_application_get_windows(GtkApplication* application);
	uint gtk_application_inhibit(GtkApplication* application, GtkWindow* window, GtkApplicationInhibitFlags flags, const(char)* reason);
	int gtk_application_is_inhibited(GtkApplication* application, GtkApplicationInhibitFlags flags);
	char** gtk_application_list_action_descriptions(GtkApplication* application);
	int gtk_application_prefers_app_menu(GtkApplication* application);
	void gtk_application_remove_accelerator(GtkApplication* application, const(char)* actionName, GVariant* parameter);
	void gtk_application_remove_window(GtkApplication* application, GtkWindow* window);
	void gtk_application_set_accels_for_action(GtkApplication* application, const(char)* detailedActionName, char** accels);
	void gtk_application_set_app_menu(GtkApplication* application, GMenuModel* appMenu);
	void gtk_application_set_menubar(GtkApplication* application, GMenuModel* menubar);
	void gtk_application_uninhibit(GtkApplication* application, uint cookie);

	// gtk.ApplicationWindow

	GType gtk_application_window_get_type();
	GtkWidget* gtk_application_window_new(GtkApplication* application);
	GtkShortcutsWindow* gtk_application_window_get_help_overlay(GtkApplicationWindow* window);
	uint gtk_application_window_get_id(GtkApplicationWindow* window);
	int gtk_application_window_get_show_menubar(GtkApplicationWindow* window);
	void gtk_application_window_set_help_overlay(GtkApplicationWindow* window, GtkShortcutsWindow* helpOverlay);
	void gtk_application_window_set_show_menubar(GtkApplicationWindow* window, int showMenubar);

	// gtk.Arrow

	GType gtk_arrow_get_type();
	GtkWidget* gtk_arrow_new(GtkArrowType arrowType, GtkShadowType shadowType);
	void gtk_arrow_set(GtkArrow* arrow, GtkArrowType arrowType, GtkShadowType shadowType);

	// gtk.ArrowAccessible

	GType gtk_arrow_accessible_get_type();

	// gtk.AspectFrame

	GType gtk_aspect_frame_get_type();
	GtkWidget* gtk_aspect_frame_new(const(char)* label, float xalign, float yalign, float ratio, int obeyChild);
	void gtk_aspect_frame_set(GtkAspectFrame* aspectFrame, float xalign, float yalign, float ratio, int obeyChild);

	// gtk.Assistant

	GType gtk_assistant_get_type();
	GtkWidget* gtk_assistant_new();
	void gtk_assistant_add_action_widget(GtkAssistant* assistant, GtkWidget* child);
	int gtk_assistant_append_page(GtkAssistant* assistant, GtkWidget* page);
	void gtk_assistant_commit(GtkAssistant* assistant);
	int gtk_assistant_get_current_page(GtkAssistant* assistant);
	int gtk_assistant_get_n_pages(GtkAssistant* assistant);
	GtkWidget* gtk_assistant_get_nth_page(GtkAssistant* assistant, int pageNum);
	int gtk_assistant_get_page_complete(GtkAssistant* assistant, GtkWidget* page);
	int gtk_assistant_get_page_has_padding(GtkAssistant* assistant, GtkWidget* page);
	GdkPixbuf* gtk_assistant_get_page_header_image(GtkAssistant* assistant, GtkWidget* page);
	GdkPixbuf* gtk_assistant_get_page_side_image(GtkAssistant* assistant, GtkWidget* page);
	const(char)* gtk_assistant_get_page_title(GtkAssistant* assistant, GtkWidget* page);
	GtkAssistantPageType gtk_assistant_get_page_type(GtkAssistant* assistant, GtkWidget* page);
	int gtk_assistant_insert_page(GtkAssistant* assistant, GtkWidget* page, int position);
	void gtk_assistant_next_page(GtkAssistant* assistant);
	int gtk_assistant_prepend_page(GtkAssistant* assistant, GtkWidget* page);
	void gtk_assistant_previous_page(GtkAssistant* assistant);
	void gtk_assistant_remove_action_widget(GtkAssistant* assistant, GtkWidget* child);
	void gtk_assistant_remove_page(GtkAssistant* assistant, int pageNum);
	void gtk_assistant_set_current_page(GtkAssistant* assistant, int pageNum);
	void gtk_assistant_set_forward_page_func(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy);
	void gtk_assistant_set_page_complete(GtkAssistant* assistant, GtkWidget* page, int complete);
	void gtk_assistant_set_page_has_padding(GtkAssistant* assistant, GtkWidget* page, int hasPadding);
	void gtk_assistant_set_page_header_image(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf);
	void gtk_assistant_set_page_side_image(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf);
	void gtk_assistant_set_page_title(GtkAssistant* assistant, GtkWidget* page, const(char)* title);
	void gtk_assistant_set_page_type(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type);
	void gtk_assistant_update_buttons_state(GtkAssistant* assistant);

	// gtk.Bin

	GType gtk_bin_get_type();
	GtkWidget* gtk_bin_get_child(GtkBin* bin);

	// gtk.BindingEntry

	void gtk_binding_entry_add_signal(GtkBindingSet* bindingSet, uint keyval, GdkModifierType modifiers, const(char)* signalName, uint nArgs, ... );
	GTokenType gtk_binding_entry_add_signal_from_string(GtkBindingSet* bindingSet, const(char)* signalDesc);
	void gtk_binding_entry_add_signall(GtkBindingSet* bindingSet, uint keyval, GdkModifierType modifiers, const(char)* signalName, GSList* bindingArgs);
	void gtk_binding_entry_remove(GtkBindingSet* bindingSet, uint keyval, GdkModifierType modifiers);
	void gtk_binding_entry_skip(GtkBindingSet* bindingSet, uint keyval, GdkModifierType modifiers);

	// gtk.BindingSet

	int gtk_binding_set_activate(GtkBindingSet* bindingSet, uint keyval, GdkModifierType modifiers, GObject* object);
	void gtk_binding_set_add_path(GtkBindingSet* bindingSet, GtkPathType pathType, const(char)* pathPattern, GtkPathPriorityType priority);
	GtkBindingSet* gtk_binding_set_by_class(void* objectClass);
	GtkBindingSet* gtk_binding_set_find(const(char)* setName);
	GtkBindingSet* gtk_binding_set_new(const(char)* setName);
	int gtk_bindings_activate(GObject* object, uint keyval, GdkModifierType modifiers);
	int gtk_bindings_activate_event(GObject* object, GdkEventKey* event);

	// gtk.BooleanCellAccessible

	GType gtk_boolean_cell_accessible_get_type();

	// gtk.Border

	GType gtk_border_get_type();
	GtkBorder* gtk_border_new();
	GtkBorder* gtk_border_copy(GtkBorder* border);
	void gtk_border_free(GtkBorder* border);

	// gtk.Box

	GType gtk_box_get_type();
	GtkWidget* gtk_box_new(GtkOrientation orientation, int spacing);
	GtkBaselinePosition gtk_box_get_baseline_position(GtkBox* box);
	GtkWidget* gtk_box_get_center_widget(GtkBox* box);
	int gtk_box_get_homogeneous(GtkBox* box);
	int gtk_box_get_spacing(GtkBox* box);
	void gtk_box_pack_end(GtkBox* box, GtkWidget* child, int expand, int fill, uint padding);
	void gtk_box_pack_start(GtkBox* box, GtkWidget* child, int expand, int fill, uint padding);
	void gtk_box_query_child_packing(GtkBox* box, GtkWidget* child, int* expand, int* fill, uint* padding, GtkPackType* packType);
	void gtk_box_reorder_child(GtkBox* box, GtkWidget* child, int position);
	void gtk_box_set_baseline_position(GtkBox* box, GtkBaselinePosition position);
	void gtk_box_set_center_widget(GtkBox* box, GtkWidget* widget);
	void gtk_box_set_child_packing(GtkBox* box, GtkWidget* child, int expand, int fill, uint padding, GtkPackType packType);
	void gtk_box_set_homogeneous(GtkBox* box, int homogeneous);
	void gtk_box_set_spacing(GtkBox* box, int spacing);

	// gtk.Buildable

	GType gtk_buildable_get_type();
	void gtk_buildable_add_child(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* type);
	GObject* gtk_buildable_construct_child(GtkBuildable* buildable, GtkBuilder* builder, const(char)* name);
	void gtk_buildable_custom_finished(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, void* data);
	void gtk_buildable_custom_tag_end(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, void** data);
	int gtk_buildable_custom_tag_start(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, const(char)* tagname, GMarkupParser* parser, void** data);
	GObject* gtk_buildable_get_internal_child(GtkBuildable* buildable, GtkBuilder* builder, const(char)* childname);
	const(char)* gtk_buildable_get_name(GtkBuildable* buildable);
	void gtk_buildable_parser_finished(GtkBuildable* buildable, GtkBuilder* builder);
	void gtk_buildable_set_buildable_property(GtkBuildable* buildable, GtkBuilder* builder, const(char)* name, GValue* value);
	void gtk_buildable_set_name(GtkBuildable* buildable, const(char)* name);

	// gtk.Builder

	GType gtk_builder_get_type();
	GtkBuilder* gtk_builder_new();
	GtkBuilder* gtk_builder_new_from_file(const(char)* filename);
	GtkBuilder* gtk_builder_new_from_resource(const(char)* resourcePath);
	GtkBuilder* gtk_builder_new_from_string(const(char)* string_, ptrdiff_t length);
	void gtk_builder_add_callback_symbol(GtkBuilder* builder, const(char)* callbackName, GCallback callbackSymbol);
	void gtk_builder_add_callback_symbols(GtkBuilder* builder, const(char)* firstCallbackName, GCallback firstCallbackSymbol, ... );
	uint gtk_builder_add_from_file(GtkBuilder* builder, const(char)* filename, GError** err);
	uint gtk_builder_add_from_resource(GtkBuilder* builder, const(char)* resourcePath, GError** err);
	uint gtk_builder_add_from_string(GtkBuilder* builder, const(char)* buffer, size_t length, GError** err);
	uint gtk_builder_add_objects_from_file(GtkBuilder* builder, const(char)* filename, char** objectIds, GError** err);
	uint gtk_builder_add_objects_from_resource(GtkBuilder* builder, const(char)* resourcePath, char** objectIds, GError** err);
	uint gtk_builder_add_objects_from_string(GtkBuilder* builder, const(char)* buffer, size_t length, char** objectIds, GError** err);
	void gtk_builder_connect_signals(GtkBuilder* builder, void* userData);
	void gtk_builder_connect_signals_full(GtkBuilder* builder, GtkBuilderConnectFunc func, void* userData);
	void gtk_builder_expose_object(GtkBuilder* builder, const(char)* name, GObject* object);
	uint gtk_builder_extend_with_template(GtkBuilder* builder, GtkWidget* widget, GType templateType, const(char)* buffer, size_t length, GError** err);
	GtkApplication* gtk_builder_get_application(GtkBuilder* builder);
	GObject* gtk_builder_get_object(GtkBuilder* builder, const(char)* name);
	GSList* gtk_builder_get_objects(GtkBuilder* builder);
	const(char)* gtk_builder_get_translation_domain(GtkBuilder* builder);
	GType gtk_builder_get_type_from_name(GtkBuilder* builder, const(char)* typeName);
	GCallback gtk_builder_lookup_callback_symbol(GtkBuilder* builder, const(char)* callbackName);
	void gtk_builder_set_application(GtkBuilder* builder, GtkApplication* application);
	void gtk_builder_set_translation_domain(GtkBuilder* builder, const(char)* domain);
	int gtk_builder_value_from_string(GtkBuilder* builder, GParamSpec* pspec, const(char)* string_, GValue* value, GError** err);
	int gtk_builder_value_from_string_type(GtkBuilder* builder, GType type, const(char)* string_, GValue* value, GError** err);

	// gtk.Button

	GType gtk_button_get_type();
	GtkWidget* gtk_button_new();
	GtkWidget* gtk_button_new_from_icon_name(const(char)* iconName, GtkIconSize size);
	GtkWidget* gtk_button_new_from_stock(const(char)* stockId);
	GtkWidget* gtk_button_new_with_label(const(char)* label);
	GtkWidget* gtk_button_new_with_mnemonic(const(char)* label);
	void gtk_button_clicked(GtkButton* button);
	void gtk_button_enter(GtkButton* button);
	void gtk_button_get_alignment(GtkButton* button, float* xalign, float* yalign);
	int gtk_button_get_always_show_image(GtkButton* button);
	GdkWindow* gtk_button_get_event_window(GtkButton* button);
	int gtk_button_get_focus_on_click(GtkButton* button);
	GtkWidget* gtk_button_get_image(GtkButton* button);
	GtkPositionType gtk_button_get_image_position(GtkButton* button);
	const(char)* gtk_button_get_label(GtkButton* button);
	GtkReliefStyle gtk_button_get_relief(GtkButton* button);
	int gtk_button_get_use_stock(GtkButton* button);
	int gtk_button_get_use_underline(GtkButton* button);
	void gtk_button_leave(GtkButton* button);
	void gtk_button_pressed(GtkButton* button);
	void gtk_button_released(GtkButton* button);
	void gtk_button_set_alignment(GtkButton* button, float xalign, float yalign);
	void gtk_button_set_always_show_image(GtkButton* button, int alwaysShow);
	void gtk_button_set_focus_on_click(GtkButton* button, int focusOnClick);
	void gtk_button_set_image(GtkButton* button, GtkWidget* image);
	void gtk_button_set_image_position(GtkButton* button, GtkPositionType position);
	void gtk_button_set_label(GtkButton* button, const(char)* label);
	void gtk_button_set_relief(GtkButton* button, GtkReliefStyle relief);
	void gtk_button_set_use_stock(GtkButton* button, int useStock);
	void gtk_button_set_use_underline(GtkButton* button, int useUnderline);

	// gtk.ButtonAccessible

	GType gtk_button_accessible_get_type();

	// gtk.ButtonBox

	GType gtk_button_box_get_type();
	GtkWidget* gtk_button_box_new(GtkOrientation orientation);
	int gtk_button_box_get_child_non_homogeneous(GtkButtonBox* widget, GtkWidget* child);
	int gtk_button_box_get_child_secondary(GtkButtonBox* widget, GtkWidget* child);
	GtkButtonBoxStyle gtk_button_box_get_layout(GtkButtonBox* widget);
	void gtk_button_box_set_child_non_homogeneous(GtkButtonBox* widget, GtkWidget* child, int nonHomogeneous);
	void gtk_button_box_set_child_secondary(GtkButtonBox* widget, GtkWidget* child, int isSecondary);
	void gtk_button_box_set_layout(GtkButtonBox* widget, GtkButtonBoxStyle layoutStyle);

	// gtk.Calendar

	GType gtk_calendar_get_type();
	GtkWidget* gtk_calendar_new();
	void gtk_calendar_clear_marks(GtkCalendar* calendar);
	void gtk_calendar_get_date(GtkCalendar* calendar, uint* year, uint* month, uint* day);
	int gtk_calendar_get_day_is_marked(GtkCalendar* calendar, uint day);
	int gtk_calendar_get_detail_height_rows(GtkCalendar* calendar);
	int gtk_calendar_get_detail_width_chars(GtkCalendar* calendar);
	GtkCalendarDisplayOptions gtk_calendar_get_display_options(GtkCalendar* calendar);
	void gtk_calendar_mark_day(GtkCalendar* calendar, uint day);
	void gtk_calendar_select_day(GtkCalendar* calendar, uint day);
	void gtk_calendar_select_month(GtkCalendar* calendar, uint month, uint year);
	void gtk_calendar_set_detail_func(GtkCalendar* calendar, GtkCalendarDetailFunc func, void* data, GDestroyNotify destroy);
	void gtk_calendar_set_detail_height_rows(GtkCalendar* calendar, int rows);
	void gtk_calendar_set_detail_width_chars(GtkCalendar* calendar, int chars);
	void gtk_calendar_set_display_options(GtkCalendar* calendar, GtkCalendarDisplayOptions flags);
	void gtk_calendar_unmark_day(GtkCalendar* calendar, uint day);

	// gtk.CellAccessible

	GType gtk_cell_accessible_get_type();

	// gtk.CellAccessibleParent

	GType gtk_cell_accessible_parent_get_type();
	void gtk_cell_accessible_parent_activate(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	void gtk_cell_accessible_parent_edit(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	void gtk_cell_accessible_parent_expand_collapse(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	void gtk_cell_accessible_parent_get_cell_area(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, GdkRectangle* cellRect);
	void gtk_cell_accessible_parent_get_cell_extents(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, int* x, int* y, int* width, int* height, AtkCoordType coordType);
	void gtk_cell_accessible_parent_get_cell_position(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, int* row, int* column);
	int gtk_cell_accessible_parent_get_child_index(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	GPtrArray* gtk_cell_accessible_parent_get_column_header_cells(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	GtkCellRendererState gtk_cell_accessible_parent_get_renderer_state(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	GPtrArray* gtk_cell_accessible_parent_get_row_header_cells(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	int gtk_cell_accessible_parent_grab_focus(GtkCellAccessibleParent* parent, GtkCellAccessible* cell);
	void gtk_cell_accessible_parent_update_relationset(GtkCellAccessibleParent* parent, GtkCellAccessible* cell, AtkRelationSet* relationset);

	// gtk.CellArea

	GType gtk_cell_area_get_type();
	int gtk_cell_area_activate(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GtkCellRendererState flags, int editOnly);
	int gtk_cell_area_activate_cell(GtkCellArea* area, GtkWidget* widget, GtkCellRenderer* renderer, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags);
	void gtk_cell_area_add(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_add_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	void gtk_cell_area_add_with_properties(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... );
	void gtk_cell_area_apply_attributes(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded);
	void gtk_cell_area_attribute_connect(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute, int column);
	void gtk_cell_area_attribute_disconnect(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute);
	int gtk_cell_area_attribute_get_column(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute);
	void gtk_cell_area_cell_get(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... );
	void gtk_cell_area_cell_get_property(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* propertyName, GValue* value);
	void gtk_cell_area_cell_get_valist(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropertyName, void* varArgs);
	void gtk_cell_area_cell_set(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... );
	void gtk_cell_area_cell_set_property(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* propertyName, GValue* value);
	void gtk_cell_area_cell_set_valist(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropertyName, void* varArgs);
	GtkCellAreaContext* gtk_cell_area_copy_context(GtkCellArea* area, GtkCellAreaContext* context);
	GtkCellAreaContext* gtk_cell_area_create_context(GtkCellArea* area);
	int gtk_cell_area_event(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags);
	int gtk_cell_area_focus(GtkCellArea* area, GtkDirectionType direction);
	void gtk_cell_area_foreach(GtkCellArea* area, GtkCellCallback callback, void* callbackData);
	void gtk_cell_area_foreach_alloc(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData);
	void gtk_cell_area_get_cell_allocation(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkCellRenderer* renderer, GdkRectangle* cellArea, GdkRectangle* allocation);
	GtkCellRenderer* gtk_cell_area_get_cell_at_position(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, int x, int y, GdkRectangle* allocArea);
	const(char)* gtk_cell_area_get_current_path_string(GtkCellArea* area);
	GtkCellEditable* gtk_cell_area_get_edit_widget(GtkCellArea* area);
	GtkCellRenderer* gtk_cell_area_get_edited_cell(GtkCellArea* area);
	GtkCellRenderer* gtk_cell_area_get_focus_cell(GtkCellArea* area);
	GtkCellRenderer* gtk_cell_area_get_focus_from_sibling(GtkCellArea* area, GtkCellRenderer* renderer);
	GList* gtk_cell_area_get_focus_siblings(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_get_preferred_height(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumHeight, int* naturalHeight);
	void gtk_cell_area_get_preferred_height_for_width(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight);
	void gtk_cell_area_get_preferred_width(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumWidth, int* naturalWidth);
	void gtk_cell_area_get_preferred_width_for_height(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth);
	GtkSizeRequestMode gtk_cell_area_get_request_mode(GtkCellArea* area);
	int gtk_cell_area_has_renderer(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_inner_cell_area(GtkCellArea* area, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* innerArea);
	int gtk_cell_area_is_activatable(GtkCellArea* area);
	int gtk_cell_area_is_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	void gtk_cell_area_remove(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_remove_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	void gtk_cell_area_render(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, cairo_t* cr, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, int paintFocus);
	void gtk_cell_area_request_renderer(GtkCellArea* area, GtkCellRenderer* renderer, GtkOrientation orientation, GtkWidget* widget, int forSize, int* minimumSize, int* naturalSize);
	void gtk_cell_area_set_focus_cell(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_stop_editing(GtkCellArea* area, int canceled);

	// gtk.CellAreaBox

	GType gtk_cell_area_box_get_type();
	GtkCellArea* gtk_cell_area_box_new();
	int gtk_cell_area_box_get_spacing(GtkCellAreaBox* box);
	void gtk_cell_area_box_pack_end(GtkCellAreaBox* box, GtkCellRenderer* renderer, int expand, int align_, int fixed);
	void gtk_cell_area_box_pack_start(GtkCellAreaBox* box, GtkCellRenderer* renderer, int expand, int align_, int fixed);
	void gtk_cell_area_box_set_spacing(GtkCellAreaBox* box, int spacing);

	// gtk.CellAreaClass

	GParamSpec* gtk_cell_area_class_find_cell_property(GtkCellAreaClass* aclass, const(char)* propertyName);
	void gtk_cell_area_class_install_cell_property(GtkCellAreaClass* aclass, uint propertyId, GParamSpec* pspec);
	GParamSpec** gtk_cell_area_class_list_cell_properties(GtkCellAreaClass* aclass, uint* nProperties);

	// gtk.CellAreaContext

	GType gtk_cell_area_context_get_type();
	void gtk_cell_area_context_allocate(GtkCellAreaContext* context, int width, int height);
	void gtk_cell_area_context_get_allocation(GtkCellAreaContext* context, int* width, int* height);
	GtkCellArea* gtk_cell_area_context_get_area(GtkCellAreaContext* context);
	void gtk_cell_area_context_get_preferred_height(GtkCellAreaContext* context, int* minimumHeight, int* naturalHeight);
	void gtk_cell_area_context_get_preferred_height_for_width(GtkCellAreaContext* context, int width, int* minimumHeight, int* naturalHeight);
	void gtk_cell_area_context_get_preferred_width(GtkCellAreaContext* context, int* minimumWidth, int* naturalWidth);
	void gtk_cell_area_context_get_preferred_width_for_height(GtkCellAreaContext* context, int height, int* minimumWidth, int* naturalWidth);
	void gtk_cell_area_context_push_preferred_height(GtkCellAreaContext* context, int minimumHeight, int naturalHeight);
	void gtk_cell_area_context_push_preferred_width(GtkCellAreaContext* context, int minimumWidth, int naturalWidth);
	void gtk_cell_area_context_reset(GtkCellAreaContext* context);

	// gtk.CellEditable

	GType gtk_cell_editable_get_type();
	void gtk_cell_editable_editing_done(GtkCellEditable* cellEditable);
	void gtk_cell_editable_remove_widget(GtkCellEditable* cellEditable);
	void gtk_cell_editable_start_editing(GtkCellEditable* cellEditable, GdkEvent* event);

	// gtk.CellLayout

	GType gtk_cell_layout_get_type();
	void gtk_cell_layout_add_attribute(GtkCellLayout* cellLayout, GtkCellRenderer* cell, const(char)* attribute, int column);
	void gtk_cell_layout_clear(GtkCellLayout* cellLayout);
	void gtk_cell_layout_clear_attributes(GtkCellLayout* cellLayout, GtkCellRenderer* cell);
	GtkCellArea* gtk_cell_layout_get_area(GtkCellLayout* cellLayout);
	GList* gtk_cell_layout_get_cells(GtkCellLayout* cellLayout);
	void gtk_cell_layout_pack_end(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand);
	void gtk_cell_layout_pack_start(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand);
	void gtk_cell_layout_reorder(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int position);
	void gtk_cell_layout_set_attributes(GtkCellLayout* cellLayout, GtkCellRenderer* cell, ... );
	void gtk_cell_layout_set_cell_data_func(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy);

	// gtk.CellRenderer

	GType gtk_cell_renderer_get_type();
	int gtk_cell_renderer_activate(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags);
	void gtk_cell_renderer_get_aligned_area(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags, GdkRectangle* cellArea, GdkRectangle* alignedArea);
	void gtk_cell_renderer_get_alignment(GtkCellRenderer* cell, float* xalign, float* yalign);
	void gtk_cell_renderer_get_fixed_size(GtkCellRenderer* cell, int* width, int* height);
	void gtk_cell_renderer_get_padding(GtkCellRenderer* cell, int* xpad, int* ypad);
	void gtk_cell_renderer_get_preferred_height(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize);
	void gtk_cell_renderer_get_preferred_height_for_width(GtkCellRenderer* cell, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight);
	void gtk_cell_renderer_get_preferred_size(GtkCellRenderer* cell, GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize);
	void gtk_cell_renderer_get_preferred_width(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize);
	void gtk_cell_renderer_get_preferred_width_for_height(GtkCellRenderer* cell, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth);
	GtkSizeRequestMode gtk_cell_renderer_get_request_mode(GtkCellRenderer* cell);
	int gtk_cell_renderer_get_sensitive(GtkCellRenderer* cell);
	void gtk_cell_renderer_get_size(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, int* xOffset, int* yOffset, int* width, int* height);
	GtkStateFlags gtk_cell_renderer_get_state(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState cellState);
	int gtk_cell_renderer_get_visible(GtkCellRenderer* cell);
	int gtk_cell_renderer_is_activatable(GtkCellRenderer* cell);
	void gtk_cell_renderer_render(GtkCellRenderer* cell, cairo_t* cr, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags);
	void gtk_cell_renderer_set_alignment(GtkCellRenderer* cell, float xalign, float yalign);
	void gtk_cell_renderer_set_fixed_size(GtkCellRenderer* cell, int width, int height);
	void gtk_cell_renderer_set_padding(GtkCellRenderer* cell, int xpad, int ypad);
	void gtk_cell_renderer_set_sensitive(GtkCellRenderer* cell, int sensitive);
	void gtk_cell_renderer_set_visible(GtkCellRenderer* cell, int visible);
	GtkCellEditable* gtk_cell_renderer_start_editing(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags);
	void gtk_cell_renderer_stop_editing(GtkCellRenderer* cell, int canceled);

	// gtk.CellRendererAccel

	GType gtk_cell_renderer_accel_get_type();
	GtkCellRenderer* gtk_cell_renderer_accel_new();

	// gtk.CellRendererClass

	void gtk_cell_renderer_class_set_accessible_type(GtkCellRendererClass* rendererClass, GType type);

	// gtk.CellRendererCombo

	GType gtk_cell_renderer_combo_get_type();
	GtkCellRenderer* gtk_cell_renderer_combo_new();

	// gtk.CellRendererPixbuf

	GType gtk_cell_renderer_pixbuf_get_type();
	GtkCellRenderer* gtk_cell_renderer_pixbuf_new();

	// gtk.CellRendererProgress

	GType gtk_cell_renderer_progress_get_type();
	GtkCellRenderer* gtk_cell_renderer_progress_new();

	// gtk.CellRendererSpin

	GType gtk_cell_renderer_spin_get_type();
	GtkCellRenderer* gtk_cell_renderer_spin_new();

	// gtk.CellRendererSpinner

	GType gtk_cell_renderer_spinner_get_type();
	GtkCellRenderer* gtk_cell_renderer_spinner_new();

	// gtk.CellRendererText

	GType gtk_cell_renderer_text_get_type();
	GtkCellRenderer* gtk_cell_renderer_text_new();
	void gtk_cell_renderer_text_set_fixed_height_from_font(GtkCellRendererText* renderer, int numberOfRows);

	// gtk.CellRendererToggle

	GType gtk_cell_renderer_toggle_get_type();
	GtkCellRenderer* gtk_cell_renderer_toggle_new();
	int gtk_cell_renderer_toggle_get_activatable(GtkCellRendererToggle* toggle);
	int gtk_cell_renderer_toggle_get_active(GtkCellRendererToggle* toggle);
	int gtk_cell_renderer_toggle_get_radio(GtkCellRendererToggle* toggle);
	void gtk_cell_renderer_toggle_set_activatable(GtkCellRendererToggle* toggle, int setting);
	void gtk_cell_renderer_toggle_set_active(GtkCellRendererToggle* toggle, int setting);
	void gtk_cell_renderer_toggle_set_radio(GtkCellRendererToggle* toggle, int radio);

	// gtk.CellView

	GType gtk_cell_view_get_type();
	GtkWidget* gtk_cell_view_new();
	GtkWidget* gtk_cell_view_new_with_context(GtkCellArea* area, GtkCellAreaContext* context);
	GtkWidget* gtk_cell_view_new_with_markup(const(char)* markup);
	GtkWidget* gtk_cell_view_new_with_pixbuf(GdkPixbuf* pixbuf);
	GtkWidget* gtk_cell_view_new_with_text(const(char)* text);
	GtkTreePath* gtk_cell_view_get_displayed_row(GtkCellView* cellView);
	int gtk_cell_view_get_draw_sensitive(GtkCellView* cellView);
	int gtk_cell_view_get_fit_model(GtkCellView* cellView);
	GtkTreeModel* gtk_cell_view_get_model(GtkCellView* cellView);
	int gtk_cell_view_get_size_of_row(GtkCellView* cellView, GtkTreePath* path, GtkRequisition* requisition);
	void gtk_cell_view_set_background_color(GtkCellView* cellView, GdkColor* color);
	void gtk_cell_view_set_background_rgba(GtkCellView* cellView, GdkRGBA* rgba);
	void gtk_cell_view_set_displayed_row(GtkCellView* cellView, GtkTreePath* path);
	void gtk_cell_view_set_draw_sensitive(GtkCellView* cellView, int drawSensitive);
	void gtk_cell_view_set_fit_model(GtkCellView* cellView, int fitModel);
	void gtk_cell_view_set_model(GtkCellView* cellView, GtkTreeModel* model);

	// gtk.CheckButton

	GType gtk_check_button_get_type();
	GtkWidget* gtk_check_button_new();
	GtkWidget* gtk_check_button_new_with_label(const(char)* label);
	GtkWidget* gtk_check_button_new_with_mnemonic(const(char)* label);

	// gtk.CheckMenuItem

	GType gtk_check_menu_item_get_type();
	GtkWidget* gtk_check_menu_item_new();
	GtkWidget* gtk_check_menu_item_new_with_label(const(char)* label);
	GtkWidget* gtk_check_menu_item_new_with_mnemonic(const(char)* label);
	int gtk_check_menu_item_get_active(GtkCheckMenuItem* checkMenuItem);
	int gtk_check_menu_item_get_draw_as_radio(GtkCheckMenuItem* checkMenuItem);
	int gtk_check_menu_item_get_inconsistent(GtkCheckMenuItem* checkMenuItem);
	void gtk_check_menu_item_set_active(GtkCheckMenuItem* checkMenuItem, int isActive);
	void gtk_check_menu_item_set_draw_as_radio(GtkCheckMenuItem* checkMenuItem, int drawAsRadio);
	void gtk_check_menu_item_set_inconsistent(GtkCheckMenuItem* checkMenuItem, int setting);
	void gtk_check_menu_item_toggled(GtkCheckMenuItem* checkMenuItem);

	// gtk.CheckMenuItemAccessible

	GType gtk_check_menu_item_accessible_get_type();

	// gtk.Clipboard

	GType gtk_clipboard_get_type();
	GtkClipboard* gtk_clipboard_get(GdkAtom selection);
	GtkClipboard* gtk_clipboard_get_default(GdkDisplay* display);
	GtkClipboard* gtk_clipboard_get_for_display(GdkDisplay* display, GdkAtom selection);
	void gtk_clipboard_clear(GtkClipboard* clipboard);
	GdkDisplay* gtk_clipboard_get_display(GtkClipboard* clipboard);
	GObject* gtk_clipboard_get_owner(GtkClipboard* clipboard);
	GdkAtom gtk_clipboard_get_selection(GtkClipboard* clipboard);
	void gtk_clipboard_request_contents(GtkClipboard* clipboard, GdkAtom target, GtkClipboardReceivedFunc callback, void* userData);
	void gtk_clipboard_request_image(GtkClipboard* clipboard, GtkClipboardImageReceivedFunc callback, void* userData);
	void gtk_clipboard_request_rich_text(GtkClipboard* clipboard, GtkTextBuffer* buffer, GtkClipboardRichTextReceivedFunc callback, void* userData);
	void gtk_clipboard_request_targets(GtkClipboard* clipboard, GtkClipboardTargetsReceivedFunc callback, void* userData);
	void gtk_clipboard_request_text(GtkClipboard* clipboard, GtkClipboardTextReceivedFunc callback, void* userData);
	void gtk_clipboard_request_uris(GtkClipboard* clipboard, GtkClipboardURIReceivedFunc callback, void* userData);
	void gtk_clipboard_set_can_store(GtkClipboard* clipboard, GtkTargetEntry* targets, int nTargets);
	void gtk_clipboard_set_image(GtkClipboard* clipboard, GdkPixbuf* pixbuf);
	void gtk_clipboard_set_text(GtkClipboard* clipboard, const(char)* text, int len);
	int gtk_clipboard_set_with_data(GtkClipboard* clipboard, GtkTargetEntry* targets, uint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, void* userData);
	int gtk_clipboard_set_with_owner(GtkClipboard* clipboard, GtkTargetEntry* targets, uint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, GObject* owner);
	void gtk_clipboard_store(GtkClipboard* clipboard);
	GtkSelectionData* gtk_clipboard_wait_for_contents(GtkClipboard* clipboard, GdkAtom target);
	GdkPixbuf* gtk_clipboard_wait_for_image(GtkClipboard* clipboard);
	ubyte* gtk_clipboard_wait_for_rich_text(GtkClipboard* clipboard, GtkTextBuffer* buffer, GdkAtom* format, size_t* length);
	int gtk_clipboard_wait_for_targets(GtkClipboard* clipboard, GdkAtom** targets, int* nTargets);
	char* gtk_clipboard_wait_for_text(GtkClipboard* clipboard);
	char** gtk_clipboard_wait_for_uris(GtkClipboard* clipboard);
	int gtk_clipboard_wait_is_image_available(GtkClipboard* clipboard);
	int gtk_clipboard_wait_is_rich_text_available(GtkClipboard* clipboard, GtkTextBuffer* buffer);
	int gtk_clipboard_wait_is_target_available(GtkClipboard* clipboard, GdkAtom target);
	int gtk_clipboard_wait_is_text_available(GtkClipboard* clipboard);
	int gtk_clipboard_wait_is_uris_available(GtkClipboard* clipboard);

	// gtk.ColorButton

	GType gtk_color_button_get_type();
	GtkWidget* gtk_color_button_new();
	GtkWidget* gtk_color_button_new_with_color(GdkColor* color);
	GtkWidget* gtk_color_button_new_with_rgba(GdkRGBA* rgba);
	ushort gtk_color_button_get_alpha(GtkColorButton* button);
	void gtk_color_button_get_color(GtkColorButton* button, GdkColor* color);
	void gtk_color_button_get_rgba(GtkColorButton* button, GdkRGBA* rgba);
	const(char)* gtk_color_button_get_title(GtkColorButton* button);
	int gtk_color_button_get_use_alpha(GtkColorButton* button);
	void gtk_color_button_set_alpha(GtkColorButton* button, ushort alpha);
	void gtk_color_button_set_color(GtkColorButton* button, GdkColor* color);
	void gtk_color_button_set_rgba(GtkColorButton* button, GdkRGBA* rgba);
	void gtk_color_button_set_title(GtkColorButton* button, const(char)* title);
	void gtk_color_button_set_use_alpha(GtkColorButton* button, int useAlpha);

	// gtk.ColorChooser

	GType gtk_color_chooser_get_type();
	void gtk_color_chooser_add_palette(GtkColorChooser* chooser, GtkOrientation orientation, int colorsPerLine, int nColors, GdkRGBA* colors);
	void gtk_color_chooser_get_rgba(GtkColorChooser* chooser, GdkRGBA* color);
	int gtk_color_chooser_get_use_alpha(GtkColorChooser* chooser);
	void gtk_color_chooser_set_rgba(GtkColorChooser* chooser, GdkRGBA* color);
	void gtk_color_chooser_set_use_alpha(GtkColorChooser* chooser, int useAlpha);

	// gtk.ColorChooserDialog

	GType gtk_color_chooser_dialog_get_type();
	GtkWidget* gtk_color_chooser_dialog_new(const(char)* title, GtkWindow* parent);

	// gtk.ColorChooserWidget

	GType gtk_color_chooser_widget_get_type();
	GtkWidget* gtk_color_chooser_widget_new();

	// gtk.ColorSelection

	GType gtk_color_selection_get_type();
	GtkWidget* gtk_color_selection_new();
	int gtk_color_selection_palette_from_string(const(char)* str, GdkColor** colors, int* nColors);
	char* gtk_color_selection_palette_to_string(GdkColor* colors, int nColors);
	GtkColorSelectionChangePaletteWithScreenFunc gtk_color_selection_set_change_palette_with_screen_hook(GtkColorSelectionChangePaletteWithScreenFunc func);
	ushort gtk_color_selection_get_current_alpha(GtkColorSelection* colorsel);
	void gtk_color_selection_get_current_color(GtkColorSelection* colorsel, GdkColor* color);
	void gtk_color_selection_get_current_rgba(GtkColorSelection* colorsel, GdkRGBA* rgba);
	int gtk_color_selection_get_has_opacity_control(GtkColorSelection* colorsel);
	int gtk_color_selection_get_has_palette(GtkColorSelection* colorsel);
	ushort gtk_color_selection_get_previous_alpha(GtkColorSelection* colorsel);
	void gtk_color_selection_get_previous_color(GtkColorSelection* colorsel, GdkColor* color);
	void gtk_color_selection_get_previous_rgba(GtkColorSelection* colorsel, GdkRGBA* rgba);
	int gtk_color_selection_is_adjusting(GtkColorSelection* colorsel);
	void gtk_color_selection_set_current_alpha(GtkColorSelection* colorsel, ushort alpha);
	void gtk_color_selection_set_current_color(GtkColorSelection* colorsel, GdkColor* color);
	void gtk_color_selection_set_current_rgba(GtkColorSelection* colorsel, GdkRGBA* rgba);
	void gtk_color_selection_set_has_opacity_control(GtkColorSelection* colorsel, int hasOpacity);
	void gtk_color_selection_set_has_palette(GtkColorSelection* colorsel, int hasPalette);
	void gtk_color_selection_set_previous_alpha(GtkColorSelection* colorsel, ushort alpha);
	void gtk_color_selection_set_previous_color(GtkColorSelection* colorsel, GdkColor* color);
	void gtk_color_selection_set_previous_rgba(GtkColorSelection* colorsel, GdkRGBA* rgba);

	// gtk.ColorSelectionDialog

	GType gtk_color_selection_dialog_get_type();
	GtkWidget* gtk_color_selection_dialog_new(const(char)* title);
	GtkWidget* gtk_color_selection_dialog_get_color_selection(GtkColorSelectionDialog* colorsel);

	// gtk.ComboBox

	GType gtk_combo_box_get_type();
	GtkWidget* gtk_combo_box_new();
	GtkWidget* gtk_combo_box_new_with_area(GtkCellArea* area);
	GtkWidget* gtk_combo_box_new_with_area_and_entry(GtkCellArea* area);
	GtkWidget* gtk_combo_box_new_with_entry();
	GtkWidget* gtk_combo_box_new_with_model(GtkTreeModel* model);
	GtkWidget* gtk_combo_box_new_with_model_and_entry(GtkTreeModel* model);
	int gtk_combo_box_get_active(GtkComboBox* comboBox);
	const(char)* gtk_combo_box_get_active_id(GtkComboBox* comboBox);
	int gtk_combo_box_get_active_iter(GtkComboBox* comboBox, GtkTreeIter* iter);
	int gtk_combo_box_get_add_tearoffs(GtkComboBox* comboBox);
	GtkSensitivityType gtk_combo_box_get_button_sensitivity(GtkComboBox* comboBox);
	int gtk_combo_box_get_column_span_column(GtkComboBox* comboBox);
	int gtk_combo_box_get_entry_text_column(GtkComboBox* comboBox);
	int gtk_combo_box_get_focus_on_click(GtkComboBox* combo);
	int gtk_combo_box_get_has_entry(GtkComboBox* comboBox);
	int gtk_combo_box_get_id_column(GtkComboBox* comboBox);
	GtkTreeModel* gtk_combo_box_get_model(GtkComboBox* comboBox);
	AtkObject* gtk_combo_box_get_popup_accessible(GtkComboBox* comboBox);
	int gtk_combo_box_get_popup_fixed_width(GtkComboBox* comboBox);
	GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func(GtkComboBox* comboBox);
	int gtk_combo_box_get_row_span_column(GtkComboBox* comboBox);
	const(char)* gtk_combo_box_get_title(GtkComboBox* comboBox);
	int gtk_combo_box_get_wrap_width(GtkComboBox* comboBox);
	void gtk_combo_box_popdown(GtkComboBox* comboBox);
	void gtk_combo_box_popup(GtkComboBox* comboBox);
	void gtk_combo_box_popup_for_device(GtkComboBox* comboBox, GdkDevice* device);
	void gtk_combo_box_set_active(GtkComboBox* comboBox, int index);
	int gtk_combo_box_set_active_id(GtkComboBox* comboBox, const(char)* activeId);
	void gtk_combo_box_set_active_iter(GtkComboBox* comboBox, GtkTreeIter* iter);
	void gtk_combo_box_set_add_tearoffs(GtkComboBox* comboBox, int addTearoffs);
	void gtk_combo_box_set_button_sensitivity(GtkComboBox* comboBox, GtkSensitivityType sensitivity);
	void gtk_combo_box_set_column_span_column(GtkComboBox* comboBox, int columnSpan);
	void gtk_combo_box_set_entry_text_column(GtkComboBox* comboBox, int textColumn);
	void gtk_combo_box_set_focus_on_click(GtkComboBox* combo, int focusOnClick);
	void gtk_combo_box_set_id_column(GtkComboBox* comboBox, int idColumn);
	void gtk_combo_box_set_model(GtkComboBox* comboBox, GtkTreeModel* model);
	void gtk_combo_box_set_popup_fixed_width(GtkComboBox* comboBox, int fixed);
	void gtk_combo_box_set_row_separator_func(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);
	void gtk_combo_box_set_row_span_column(GtkComboBox* comboBox, int rowSpan);
	void gtk_combo_box_set_title(GtkComboBox* comboBox, const(char)* title);
	void gtk_combo_box_set_wrap_width(GtkComboBox* comboBox, int width);

	// gtk.ComboBoxAccessible

	GType gtk_combo_box_accessible_get_type();

	// gtk.ComboBoxText

	GType gtk_combo_box_text_get_type();
	GtkWidget* gtk_combo_box_text_new();
	GtkWidget* gtk_combo_box_text_new_with_entry();
	void gtk_combo_box_text_append(GtkComboBoxText* comboBox, const(char)* id, const(char)* text);
	void gtk_combo_box_text_append_text(GtkComboBoxText* comboBox, const(char)* text);
	char* gtk_combo_box_text_get_active_text(GtkComboBoxText* comboBox);
	void gtk_combo_box_text_insert(GtkComboBoxText* comboBox, int position, const(char)* id, const(char)* text);
	void gtk_combo_box_text_insert_text(GtkComboBoxText* comboBox, int position, const(char)* text);
	void gtk_combo_box_text_prepend(GtkComboBoxText* comboBox, const(char)* id, const(char)* text);
	void gtk_combo_box_text_prepend_text(GtkComboBoxText* comboBox, const(char)* text);
	void gtk_combo_box_text_remove(GtkComboBoxText* comboBox, int position);
	void gtk_combo_box_text_remove_all(GtkComboBoxText* comboBox);

	// gtk.Container

	GType gtk_container_get_type();
	void gtk_container_add(GtkContainer* container, GtkWidget* widget);
	void gtk_container_add_with_properties(GtkContainer* container, GtkWidget* widget, const(char)* firstPropName, ... );
	void gtk_container_check_resize(GtkContainer* container);
	void gtk_container_child_get(GtkContainer* container, GtkWidget* child, const(char)* firstPropName, ... );
	void gtk_container_child_get_property(GtkContainer* container, GtkWidget* child, const(char)* propertyName, GValue* value);
	void gtk_container_child_get_valist(GtkContainer* container, GtkWidget* child, const(char)* firstPropertyName, void* varArgs);
	void gtk_container_child_notify(GtkContainer* container, GtkWidget* child, const(char)* childProperty);
	void gtk_container_child_notify_by_pspec(GtkContainer* container, GtkWidget* child, GParamSpec* pspec);
	void gtk_container_child_set(GtkContainer* container, GtkWidget* child, const(char)* firstPropName, ... );
	void gtk_container_child_set_property(GtkContainer* container, GtkWidget* child, const(char)* propertyName, GValue* value);
	void gtk_container_child_set_valist(GtkContainer* container, GtkWidget* child, const(char)* firstPropertyName, void* varArgs);
	GType gtk_container_child_type(GtkContainer* container);
	void gtk_container_forall(GtkContainer* container, GtkCallback callback, void* callbackData);
	void gtk_container_foreach(GtkContainer* container, GtkCallback callback, void* callbackData);
	uint gtk_container_get_border_width(GtkContainer* container);
	GList* gtk_container_get_children(GtkContainer* container);
	int gtk_container_get_focus_chain(GtkContainer* container, GList** focusableWidgets);
	GtkWidget* gtk_container_get_focus_child(GtkContainer* container);
	GtkAdjustment* gtk_container_get_focus_hadjustment(GtkContainer* container);
	GtkAdjustment* gtk_container_get_focus_vadjustment(GtkContainer* container);
	GtkWidgetPath* gtk_container_get_path_for_child(GtkContainer* container, GtkWidget* child);
	GtkResizeMode gtk_container_get_resize_mode(GtkContainer* container);
	void gtk_container_propagate_draw(GtkContainer* container, GtkWidget* child, cairo_t* cr);
	void gtk_container_remove(GtkContainer* container, GtkWidget* widget);
	void gtk_container_resize_children(GtkContainer* container);
	void gtk_container_set_border_width(GtkContainer* container, uint borderWidth);
	void gtk_container_set_focus_chain(GtkContainer* container, GList* focusableWidgets);
	void gtk_container_set_focus_child(GtkContainer* container, GtkWidget* child);
	void gtk_container_set_focus_hadjustment(GtkContainer* container, GtkAdjustment* adjustment);
	void gtk_container_set_focus_vadjustment(GtkContainer* container, GtkAdjustment* adjustment);
	void gtk_container_set_reallocate_redraws(GtkContainer* container, int needsRedraws);
	void gtk_container_set_resize_mode(GtkContainer* container, GtkResizeMode resizeMode);
	void gtk_container_unset_focus_chain(GtkContainer* container);

	// gtk.ContainerAccessible

	GType gtk_container_accessible_get_type();

	// gtk.ContainerCellAccessible

	GType gtk_container_cell_accessible_get_type();
	GtkContainerCellAccessible* gtk_container_cell_accessible_new();
	void gtk_container_cell_accessible_add_child(GtkContainerCellAccessible* container, GtkCellAccessible* child);
	GList* gtk_container_cell_accessible_get_children(GtkContainerCellAccessible* container);
	void gtk_container_cell_accessible_remove_child(GtkContainerCellAccessible* container, GtkCellAccessible* child);

	// gtk.ContainerClass

	GParamSpec* gtk_container_class_find_child_property(GObjectClass* cclass, const(char)* propertyName);
	void gtk_container_class_handle_border_width(GtkContainerClass* klass);
	void gtk_container_class_install_child_properties(GtkContainerClass* cclass, uint nPspecs, GParamSpec** pspecs);
	void gtk_container_class_install_child_property(GtkContainerClass* cclass, uint propertyId, GParamSpec* pspec);
	GParamSpec** gtk_container_class_list_child_properties(GObjectClass* cclass, uint* nProperties);

	// gtk.CssProvider

	GType gtk_css_provider_get_type();
	GtkCssProvider* gtk_css_provider_new();
	GtkCssProvider* gtk_css_provider_get_default();
	GtkCssProvider* gtk_css_provider_get_named(const(char)* name, const(char)* variant);
	int gtk_css_provider_load_from_data(GtkCssProvider* cssProvider, char* data, ptrdiff_t length, GError** err);
	int gtk_css_provider_load_from_file(GtkCssProvider* cssProvider, GFile* file, GError** err);
	int gtk_css_provider_load_from_path(GtkCssProvider* cssProvider, const(char)* path, GError** err);
	void gtk_css_provider_load_from_resource(GtkCssProvider* cssProvider, const(char)* resourcePath);
	char* gtk_css_provider_to_string(GtkCssProvider* provider);

	// gtk.CssSection

	GType gtk_css_section_get_type();
	uint gtk_css_section_get_end_line(GtkCssSection* section);
	uint gtk_css_section_get_end_position(GtkCssSection* section);
	GFile* gtk_css_section_get_file(GtkCssSection* section);
	GtkCssSection* gtk_css_section_get_parent(GtkCssSection* section);
	GtkCssSectionType gtk_css_section_get_section_type(GtkCssSection* section);
	uint gtk_css_section_get_start_line(GtkCssSection* section);
	uint gtk_css_section_get_start_position(GtkCssSection* section);
	GtkCssSection* gtk_css_section_ref(GtkCssSection* section);
	void gtk_css_section_unref(GtkCssSection* section);

	// gtk.Dialog

	GType gtk_dialog_get_type();
	GtkWidget* gtk_dialog_new();
	GtkWidget* gtk_dialog_new_with_buttons(const(char)* title, GtkWindow* parent, GtkDialogFlags flags, const(char)* firstButtonText, ... );
	void gtk_dialog_add_action_widget(GtkDialog* dialog, GtkWidget* child, int responseId);
	GtkWidget* gtk_dialog_add_button(GtkDialog* dialog, const(char)* buttonText, int responseId);
	void gtk_dialog_add_buttons(GtkDialog* dialog, const(char)* firstButtonText, ... );
	GtkWidget* gtk_dialog_get_action_area(GtkDialog* dialog);
	GtkWidget* gtk_dialog_get_content_area(GtkDialog* dialog);
	GtkWidget* gtk_dialog_get_header_bar(GtkDialog* dialog);
	int gtk_dialog_get_response_for_widget(GtkDialog* dialog, GtkWidget* widget);
	GtkWidget* gtk_dialog_get_widget_for_response(GtkDialog* dialog, int responseId);
	void gtk_dialog_response(GtkDialog* dialog, int responseId);
	int gtk_dialog_run(GtkDialog* dialog);
	void gtk_dialog_set_alternative_button_order(GtkDialog* dialog, int firstResponseId, ... );
	void gtk_dialog_set_alternative_button_order_from_array(GtkDialog* dialog, int nParams, int* newOrder);
	void gtk_dialog_set_default_response(GtkDialog* dialog, int responseId);
	void gtk_dialog_set_response_sensitive(GtkDialog* dialog, int responseId, int setting);
	int gtk_alternative_dialog_button_order(GdkScreen* screen);

	// gtk.DrawingArea

	GType gtk_drawing_area_get_type();
	GtkWidget* gtk_drawing_area_new();

	// gtk.Editable

	GType gtk_editable_get_type();
	void gtk_editable_copy_clipboard(GtkEditable* editable);
	void gtk_editable_cut_clipboard(GtkEditable* editable);
	void gtk_editable_delete_selection(GtkEditable* editable);
	void gtk_editable_delete_text(GtkEditable* editable, int startPos, int endPos);
	char* gtk_editable_get_chars(GtkEditable* editable, int startPos, int endPos);
	int gtk_editable_get_editable(GtkEditable* editable);
	int gtk_editable_get_position(GtkEditable* editable);
	int gtk_editable_get_selection_bounds(GtkEditable* editable, int* startPos, int* endPos);
	void gtk_editable_insert_text(GtkEditable* editable, const(char)* newText, int newTextLength, int* position);
	void gtk_editable_paste_clipboard(GtkEditable* editable);
	void gtk_editable_select_region(GtkEditable* editable, int startPos, int endPos);
	void gtk_editable_set_editable(GtkEditable* editable, int isEditable);
	void gtk_editable_set_position(GtkEditable* editable, int position);

	// gtk.Entry

	GType gtk_entry_get_type();
	GtkWidget* gtk_entry_new();
	GtkWidget* gtk_entry_new_with_buffer(GtkEntryBuffer* buffer);
	int gtk_entry_get_activates_default(GtkEntry* entry);
	float gtk_entry_get_alignment(GtkEntry* entry);
	PangoAttrList* gtk_entry_get_attributes(GtkEntry* entry);
	GtkEntryBuffer* gtk_entry_get_buffer(GtkEntry* entry);
	GtkEntryCompletion* gtk_entry_get_completion(GtkEntry* entry);
	int gtk_entry_get_current_icon_drag_source(GtkEntry* entry);
	GtkAdjustment* gtk_entry_get_cursor_hadjustment(GtkEntry* entry);
	int gtk_entry_get_has_frame(GtkEntry* entry);
	int gtk_entry_get_icon_activatable(GtkEntry* entry, GtkEntryIconPosition iconPos);
	void gtk_entry_get_icon_area(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkRectangle* iconArea);
	int gtk_entry_get_icon_at_pos(GtkEntry* entry, int x, int y);
	GIcon* gtk_entry_get_icon_gicon(GtkEntry* entry, GtkEntryIconPosition iconPos);
	const(char)* gtk_entry_get_icon_name(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GdkPixbuf* gtk_entry_get_icon_pixbuf(GtkEntry* entry, GtkEntryIconPosition iconPos);
	int gtk_entry_get_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition iconPos);
	const(char)* gtk_entry_get_icon_stock(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GtkImageType gtk_entry_get_icon_storage_type(GtkEntry* entry, GtkEntryIconPosition iconPos);
	char* gtk_entry_get_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition iconPos);
	char* gtk_entry_get_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GtkBorder* gtk_entry_get_inner_border(GtkEntry* entry);
	GtkInputHints gtk_entry_get_input_hints(GtkEntry* entry);
	GtkInputPurpose gtk_entry_get_input_purpose(GtkEntry* entry);
	dchar gtk_entry_get_invisible_char(GtkEntry* entry);
	PangoLayout* gtk_entry_get_layout(GtkEntry* entry);
	void gtk_entry_get_layout_offsets(GtkEntry* entry, int* x, int* y);
	int gtk_entry_get_max_length(GtkEntry* entry);
	int gtk_entry_get_max_width_chars(GtkEntry* entry);
	int gtk_entry_get_overwrite_mode(GtkEntry* entry);
	const(char)* gtk_entry_get_placeholder_text(GtkEntry* entry);
	double gtk_entry_get_progress_fraction(GtkEntry* entry);
	double gtk_entry_get_progress_pulse_step(GtkEntry* entry);
	PangoTabArray* gtk_entry_get_tabs(GtkEntry* entry);
	const(char)* gtk_entry_get_text(GtkEntry* entry);
	void gtk_entry_get_text_area(GtkEntry* entry, GdkRectangle* textArea);
	ushort gtk_entry_get_text_length(GtkEntry* entry);
	int gtk_entry_get_visibility(GtkEntry* entry);
	int gtk_entry_get_width_chars(GtkEntry* entry);
	void gtk_entry_grab_focus_without_selecting(GtkEntry* entry);
	int gtk_entry_im_context_filter_keypress(GtkEntry* entry, GdkEventKey* event);
	int gtk_entry_layout_index_to_text_index(GtkEntry* entry, int layoutIndex);
	void gtk_entry_progress_pulse(GtkEntry* entry);
	void gtk_entry_reset_im_context(GtkEntry* entry);
	void gtk_entry_set_activates_default(GtkEntry* entry, int setting);
	void gtk_entry_set_alignment(GtkEntry* entry, float xalign);
	void gtk_entry_set_attributes(GtkEntry* entry, PangoAttrList* attrs);
	void gtk_entry_set_buffer(GtkEntry* entry, GtkEntryBuffer* buffer);
	void gtk_entry_set_completion(GtkEntry* entry, GtkEntryCompletion* completion);
	void gtk_entry_set_cursor_hadjustment(GtkEntry* entry, GtkAdjustment* adjustment);
	void gtk_entry_set_has_frame(GtkEntry* entry, int setting);
	void gtk_entry_set_icon_activatable(GtkEntry* entry, GtkEntryIconPosition iconPos, int activatable);
	void gtk_entry_set_icon_drag_source(GtkEntry* entry, GtkEntryIconPosition iconPos, GtkTargetList* targetList, GdkDragAction actions);
	void gtk_entry_set_icon_from_gicon(GtkEntry* entry, GtkEntryIconPosition iconPos, GIcon* icon);
	void gtk_entry_set_icon_from_icon_name(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* iconName);
	void gtk_entry_set_icon_from_pixbuf(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkPixbuf* pixbuf);
	void gtk_entry_set_icon_from_stock(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* stockId);
	void gtk_entry_set_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition iconPos, int sensitive);
	void gtk_entry_set_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip);
	void gtk_entry_set_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip);
	void gtk_entry_set_inner_border(GtkEntry* entry, GtkBorder* border);
	void gtk_entry_set_input_hints(GtkEntry* entry, GtkInputHints hints);
	void gtk_entry_set_input_purpose(GtkEntry* entry, GtkInputPurpose purpose);
	void gtk_entry_set_invisible_char(GtkEntry* entry, dchar ch);
	void gtk_entry_set_max_length(GtkEntry* entry, int max);
	void gtk_entry_set_max_width_chars(GtkEntry* entry, int nChars);
	void gtk_entry_set_overwrite_mode(GtkEntry* entry, int overwrite);
	void gtk_entry_set_placeholder_text(GtkEntry* entry, const(char)* text);
	void gtk_entry_set_progress_fraction(GtkEntry* entry, double fraction);
	void gtk_entry_set_progress_pulse_step(GtkEntry* entry, double fraction);
	void gtk_entry_set_tabs(GtkEntry* entry, PangoTabArray* tabs);
	void gtk_entry_set_text(GtkEntry* entry, const(char)* text);
	void gtk_entry_set_visibility(GtkEntry* entry, int visible);
	void gtk_entry_set_width_chars(GtkEntry* entry, int nChars);
	int gtk_entry_text_index_to_layout_index(GtkEntry* entry, int textIndex);
	void gtk_entry_unset_invisible_char(GtkEntry* entry);

	// gtk.EntryAccessible

	GType gtk_entry_accessible_get_type();

	// gtk.EntryBuffer

	GType gtk_entry_buffer_get_type();
	GtkEntryBuffer* gtk_entry_buffer_new(const(char)* initialChars, int nInitialChars);
	uint gtk_entry_buffer_delete_text(GtkEntryBuffer* buffer, uint position, int nChars);
	void gtk_entry_buffer_emit_deleted_text(GtkEntryBuffer* buffer, uint position, uint nChars);
	void gtk_entry_buffer_emit_inserted_text(GtkEntryBuffer* buffer, uint position, const(char)* chars, uint nChars);
	size_t gtk_entry_buffer_get_bytes(GtkEntryBuffer* buffer);
	uint gtk_entry_buffer_get_length(GtkEntryBuffer* buffer);
	int gtk_entry_buffer_get_max_length(GtkEntryBuffer* buffer);
	const(char)* gtk_entry_buffer_get_text(GtkEntryBuffer* buffer);
	uint gtk_entry_buffer_insert_text(GtkEntryBuffer* buffer, uint position, const(char)* chars, int nChars);
	void gtk_entry_buffer_set_max_length(GtkEntryBuffer* buffer, int maxLength);
	void gtk_entry_buffer_set_text(GtkEntryBuffer* buffer, const(char)* chars, int nChars);

	// gtk.EntryCompletion

	GType gtk_entry_completion_get_type();
	GtkEntryCompletion* gtk_entry_completion_new();
	GtkEntryCompletion* gtk_entry_completion_new_with_area(GtkCellArea* area);
	void gtk_entry_completion_complete(GtkEntryCompletion* completion);
	char* gtk_entry_completion_compute_prefix(GtkEntryCompletion* completion, const(char)* key);
	void gtk_entry_completion_delete_action(GtkEntryCompletion* completion, int index);
	const(char)* gtk_entry_completion_get_completion_prefix(GtkEntryCompletion* completion);
	GtkWidget* gtk_entry_completion_get_entry(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_inline_completion(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_inline_selection(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_minimum_key_length(GtkEntryCompletion* completion);
	GtkTreeModel* gtk_entry_completion_get_model(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_popup_completion(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_popup_set_width(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_popup_single_match(GtkEntryCompletion* completion);
	int gtk_entry_completion_get_text_column(GtkEntryCompletion* completion);
	void gtk_entry_completion_insert_action_markup(GtkEntryCompletion* completion, int index, const(char)* markup);
	void gtk_entry_completion_insert_action_text(GtkEntryCompletion* completion, int index, const(char)* text);
	void gtk_entry_completion_insert_prefix(GtkEntryCompletion* completion);
	void gtk_entry_completion_set_inline_completion(GtkEntryCompletion* completion, int inlineCompletion);
	void gtk_entry_completion_set_inline_selection(GtkEntryCompletion* completion, int inlineSelection);
	void gtk_entry_completion_set_match_func(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, void* funcData, GDestroyNotify funcNotify);
	void gtk_entry_completion_set_minimum_key_length(GtkEntryCompletion* completion, int length);
	void gtk_entry_completion_set_model(GtkEntryCompletion* completion, GtkTreeModel* model);
	void gtk_entry_completion_set_popup_completion(GtkEntryCompletion* completion, int popupCompletion);
	void gtk_entry_completion_set_popup_set_width(GtkEntryCompletion* completion, int popupSetWidth);
	void gtk_entry_completion_set_popup_single_match(GtkEntryCompletion* completion, int popupSingleMatch);
	void gtk_entry_completion_set_text_column(GtkEntryCompletion* completion, int column);

	// gtk.EntryIconAccessible

	GType gtk_entry_icon_accessible_get_type();

	// gtk.EventBox

	GType gtk_event_box_get_type();
	GtkWidget* gtk_event_box_new();
	int gtk_event_box_get_above_child(GtkEventBox* eventBox);
	int gtk_event_box_get_visible_window(GtkEventBox* eventBox);
	void gtk_event_box_set_above_child(GtkEventBox* eventBox, int aboveChild);
	void gtk_event_box_set_visible_window(GtkEventBox* eventBox, int visibleWindow);

	// gtk.EventController

	GType gtk_event_controller_get_type();
	GtkPropagationPhase gtk_event_controller_get_propagation_phase(GtkEventController* controller);
	GtkWidget* gtk_event_controller_get_widget(GtkEventController* controller);
	int gtk_event_controller_handle_event(GtkEventController* controller, GdkEvent* event);
	void gtk_event_controller_reset(GtkEventController* controller);
	void gtk_event_controller_set_propagation_phase(GtkEventController* controller, GtkPropagationPhase phase);

	// gtk.EventControllerKey

	GType gtk_event_controller_key_get_type();
	GtkEventController* gtk_event_controller_key_new(GtkWidget* widget);
	int gtk_event_controller_key_forward(GtkEventControllerKey* controller, GtkWidget* widget);
	uint gtk_event_controller_key_get_group(GtkEventControllerKey* controller);
	GtkIMContext* gtk_event_controller_key_get_im_context(GtkEventControllerKey* controller);
	void gtk_event_controller_key_set_im_context(GtkEventControllerKey* controller, GtkIMContext* imContext);

	// gtk.EventControllerMotion

	GType gtk_event_controller_motion_get_type();
	GtkEventController* gtk_event_controller_motion_new(GtkWidget* widget);

	// gtk.EventControllerScroll

	GType gtk_event_controller_scroll_get_type();
	GtkEventController* gtk_event_controller_scroll_new(GtkWidget* widget, GtkEventControllerScrollFlags flags);
	GtkEventControllerScrollFlags gtk_event_controller_scroll_get_flags(GtkEventControllerScroll* controller);
	void gtk_event_controller_scroll_set_flags(GtkEventControllerScroll* controller, GtkEventControllerScrollFlags flags);

	// gtk.Expander

	GType gtk_expander_get_type();
	GtkWidget* gtk_expander_new(const(char)* label);
	GtkWidget* gtk_expander_new_with_mnemonic(const(char)* label);
	int gtk_expander_get_expanded(GtkExpander* expander);
	const(char)* gtk_expander_get_label(GtkExpander* expander);
	int gtk_expander_get_label_fill(GtkExpander* expander);
	GtkWidget* gtk_expander_get_label_widget(GtkExpander* expander);
	int gtk_expander_get_resize_toplevel(GtkExpander* expander);
	int gtk_expander_get_spacing(GtkExpander* expander);
	int gtk_expander_get_use_markup(GtkExpander* expander);
	int gtk_expander_get_use_underline(GtkExpander* expander);
	void gtk_expander_set_expanded(GtkExpander* expander, int expanded);
	void gtk_expander_set_label(GtkExpander* expander, const(char)* label);
	void gtk_expander_set_label_fill(GtkExpander* expander, int labelFill);
	void gtk_expander_set_label_widget(GtkExpander* expander, GtkWidget* labelWidget);
	void gtk_expander_set_resize_toplevel(GtkExpander* expander, int resizeToplevel);
	void gtk_expander_set_spacing(GtkExpander* expander, int spacing);
	void gtk_expander_set_use_markup(GtkExpander* expander, int useMarkup);
	void gtk_expander_set_use_underline(GtkExpander* expander, int useUnderline);

	// gtk.ExpanderAccessible

	GType gtk_expander_accessible_get_type();

	// gtk.FileChooser

	GType gtk_file_chooser_get_type();
	void gtk_file_chooser_add_choice(GtkFileChooser* chooser, const(char)* id, const(char)* label, char** options, char** optionLabels);
	void gtk_file_chooser_add_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	int gtk_file_chooser_add_shortcut_folder(GtkFileChooser* chooser, char* folder, GError** err);
	int gtk_file_chooser_add_shortcut_folder_uri(GtkFileChooser* chooser, const(char)* uri, GError** err);
	GtkFileChooserAction gtk_file_chooser_get_action(GtkFileChooser* chooser);
	const(char)* gtk_file_chooser_get_choice(GtkFileChooser* chooser, const(char)* id);
	int gtk_file_chooser_get_create_folders(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_current_folder(GtkFileChooser* chooser);
	GFile* gtk_file_chooser_get_current_folder_file(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_current_folder_uri(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_current_name(GtkFileChooser* chooser);
	int gtk_file_chooser_get_do_overwrite_confirmation(GtkFileChooser* chooser);
	GtkWidget* gtk_file_chooser_get_extra_widget(GtkFileChooser* chooser);
	GFile* gtk_file_chooser_get_file(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_filename(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_get_filenames(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_get_files(GtkFileChooser* chooser);
	GtkFileFilter* gtk_file_chooser_get_filter(GtkFileChooser* chooser);
	int gtk_file_chooser_get_local_only(GtkFileChooser* chooser);
	GFile* gtk_file_chooser_get_preview_file(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_preview_filename(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_preview_uri(GtkFileChooser* chooser);
	GtkWidget* gtk_file_chooser_get_preview_widget(GtkFileChooser* chooser);
	int gtk_file_chooser_get_preview_widget_active(GtkFileChooser* chooser);
	int gtk_file_chooser_get_select_multiple(GtkFileChooser* chooser);
	int gtk_file_chooser_get_show_hidden(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_uri(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_get_uris(GtkFileChooser* chooser);
	int gtk_file_chooser_get_use_preview_label(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_list_filters(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_list_shortcut_folder_uris(GtkFileChooser* chooser);
	GSList* gtk_file_chooser_list_shortcut_folders(GtkFileChooser* chooser);
	void gtk_file_chooser_remove_choice(GtkFileChooser* chooser, const(char)* id);
	void gtk_file_chooser_remove_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	int gtk_file_chooser_remove_shortcut_folder(GtkFileChooser* chooser, char* folder, GError** err);
	int gtk_file_chooser_remove_shortcut_folder_uri(GtkFileChooser* chooser, const(char)* uri, GError** err);
	void gtk_file_chooser_select_all(GtkFileChooser* chooser);
	int gtk_file_chooser_select_file(GtkFileChooser* chooser, GFile* file, GError** err);
	int gtk_file_chooser_select_filename(GtkFileChooser* chooser, char* filename);
	int gtk_file_chooser_select_uri(GtkFileChooser* chooser, const(char)* uri);
	void gtk_file_chooser_set_action(GtkFileChooser* chooser, GtkFileChooserAction action);
	void gtk_file_chooser_set_choice(GtkFileChooser* chooser, const(char)* id, const(char)* option);
	void gtk_file_chooser_set_create_folders(GtkFileChooser* chooser, int createFolders);
	int gtk_file_chooser_set_current_folder(GtkFileChooser* chooser, char* filename);
	int gtk_file_chooser_set_current_folder_file(GtkFileChooser* chooser, GFile* file, GError** err);
	int gtk_file_chooser_set_current_folder_uri(GtkFileChooser* chooser, const(char)* uri);
	void gtk_file_chooser_set_current_name(GtkFileChooser* chooser, char* name);
	void gtk_file_chooser_set_do_overwrite_confirmation(GtkFileChooser* chooser, int doOverwriteConfirmation);
	void gtk_file_chooser_set_extra_widget(GtkFileChooser* chooser, GtkWidget* extraWidget);
	int gtk_file_chooser_set_file(GtkFileChooser* chooser, GFile* file, GError** err);
	int gtk_file_chooser_set_filename(GtkFileChooser* chooser, char* filename);
	void gtk_file_chooser_set_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	void gtk_file_chooser_set_local_only(GtkFileChooser* chooser, int localOnly);
	void gtk_file_chooser_set_preview_widget(GtkFileChooser* chooser, GtkWidget* previewWidget);
	void gtk_file_chooser_set_preview_widget_active(GtkFileChooser* chooser, int active);
	void gtk_file_chooser_set_select_multiple(GtkFileChooser* chooser, int selectMultiple);
	void gtk_file_chooser_set_show_hidden(GtkFileChooser* chooser, int showHidden);
	int gtk_file_chooser_set_uri(GtkFileChooser* chooser, const(char)* uri);
	void gtk_file_chooser_set_use_preview_label(GtkFileChooser* chooser, int useLabel);
	void gtk_file_chooser_unselect_all(GtkFileChooser* chooser);
	void gtk_file_chooser_unselect_file(GtkFileChooser* chooser, GFile* file);
	void gtk_file_chooser_unselect_filename(GtkFileChooser* chooser, char* filename);
	void gtk_file_chooser_unselect_uri(GtkFileChooser* chooser, const(char)* uri);

	// gtk.FileChooserButton

	GType gtk_file_chooser_button_get_type();
	GtkWidget* gtk_file_chooser_button_new(const(char)* title, GtkFileChooserAction action);
	GtkWidget* gtk_file_chooser_button_new_with_dialog(GtkWidget* dialog);
	int gtk_file_chooser_button_get_focus_on_click(GtkFileChooserButton* button);
	const(char)* gtk_file_chooser_button_get_title(GtkFileChooserButton* button);
	int gtk_file_chooser_button_get_width_chars(GtkFileChooserButton* button);
	void gtk_file_chooser_button_set_focus_on_click(GtkFileChooserButton* button, int focusOnClick);
	void gtk_file_chooser_button_set_title(GtkFileChooserButton* button, const(char)* title);
	void gtk_file_chooser_button_set_width_chars(GtkFileChooserButton* button, int nChars);

	// gtk.FileChooserDialog

	GType gtk_file_chooser_dialog_get_type();
	GtkWidget* gtk_file_chooser_dialog_new(const(char)* title, GtkWindow* parent, GtkFileChooserAction action, const(char)* firstButtonText, ... );

	// gtk.FileChooserNative

	GType gtk_file_chooser_native_get_type();
	GtkFileChooserNative* gtk_file_chooser_native_new(const(char)* title, GtkWindow* parent, GtkFileChooserAction action, const(char)* acceptLabel, const(char)* cancelLabel);
	const(char)* gtk_file_chooser_native_get_accept_label(GtkFileChooserNative* self);
	const(char)* gtk_file_chooser_native_get_cancel_label(GtkFileChooserNative* self);
	void gtk_file_chooser_native_set_accept_label(GtkFileChooserNative* self, const(char)* acceptLabel);
	void gtk_file_chooser_native_set_cancel_label(GtkFileChooserNative* self, const(char)* cancelLabel);

	// gtk.FileChooserWidget

	GType gtk_file_chooser_widget_get_type();
	GtkWidget* gtk_file_chooser_widget_new(GtkFileChooserAction action);

	// gtk.FileFilter

	GType gtk_file_filter_get_type();
	GtkFileFilter* gtk_file_filter_new();
	GtkFileFilter* gtk_file_filter_new_from_gvariant(GVariant* variant);
	void gtk_file_filter_add_custom(GtkFileFilter* filter, GtkFileFilterFlags needed, GtkFileFilterFunc func, void* data, GDestroyNotify notify);
	void gtk_file_filter_add_mime_type(GtkFileFilter* filter, const(char)* mimeType);
	void gtk_file_filter_add_pattern(GtkFileFilter* filter, const(char)* pattern);
	void gtk_file_filter_add_pixbuf_formats(GtkFileFilter* filter);
	int gtk_file_filter_filter(GtkFileFilter* filter, GtkFileFilterInfo* filterInfo);
	const(char)* gtk_file_filter_get_name(GtkFileFilter* filter);
	GtkFileFilterFlags gtk_file_filter_get_needed(GtkFileFilter* filter);
	void gtk_file_filter_set_name(GtkFileFilter* filter, const(char)* name);
	GVariant* gtk_file_filter_to_gvariant(GtkFileFilter* filter);

	// gtk.Fixed

	GType gtk_fixed_get_type();
	GtkWidget* gtk_fixed_new();
	void gtk_fixed_move(GtkFixed* fixed, GtkWidget* widget, int x, int y);
	void gtk_fixed_put(GtkFixed* fixed, GtkWidget* widget, int x, int y);

	// gtk.FlowBox

	GType gtk_flow_box_get_type();
	GtkWidget* gtk_flow_box_new();
	void gtk_flow_box_bind_model(GtkFlowBox* box, GListModel* model, GtkFlowBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc);
	int gtk_flow_box_get_activate_on_single_click(GtkFlowBox* box);
	GtkFlowBoxChild* gtk_flow_box_get_child_at_index(GtkFlowBox* box, int idx);
	GtkFlowBoxChild* gtk_flow_box_get_child_at_pos(GtkFlowBox* box, int x, int y);
	uint gtk_flow_box_get_column_spacing(GtkFlowBox* box);
	int gtk_flow_box_get_homogeneous(GtkFlowBox* box);
	uint gtk_flow_box_get_max_children_per_line(GtkFlowBox* box);
	uint gtk_flow_box_get_min_children_per_line(GtkFlowBox* box);
	uint gtk_flow_box_get_row_spacing(GtkFlowBox* box);
	GList* gtk_flow_box_get_selected_children(GtkFlowBox* box);
	GtkSelectionMode gtk_flow_box_get_selection_mode(GtkFlowBox* box);
	void gtk_flow_box_insert(GtkFlowBox* box, GtkWidget* widget, int position);
	void gtk_flow_box_invalidate_filter(GtkFlowBox* box);
	void gtk_flow_box_invalidate_sort(GtkFlowBox* box);
	void gtk_flow_box_select_all(GtkFlowBox* box);
	void gtk_flow_box_select_child(GtkFlowBox* box, GtkFlowBoxChild* child);
	void gtk_flow_box_selected_foreach(GtkFlowBox* box, GtkFlowBoxForeachFunc func, void* data);
	void gtk_flow_box_set_activate_on_single_click(GtkFlowBox* box, int single);
	void gtk_flow_box_set_column_spacing(GtkFlowBox* box, uint spacing);
	void gtk_flow_box_set_filter_func(GtkFlowBox* box, GtkFlowBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy);
	void gtk_flow_box_set_hadjustment(GtkFlowBox* box, GtkAdjustment* adjustment);
	void gtk_flow_box_set_homogeneous(GtkFlowBox* box, int homogeneous);
	void gtk_flow_box_set_max_children_per_line(GtkFlowBox* box, uint nChildren);
	void gtk_flow_box_set_min_children_per_line(GtkFlowBox* box, uint nChildren);
	void gtk_flow_box_set_row_spacing(GtkFlowBox* box, uint spacing);
	void gtk_flow_box_set_selection_mode(GtkFlowBox* box, GtkSelectionMode mode);
	void gtk_flow_box_set_sort_func(GtkFlowBox* box, GtkFlowBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy);
	void gtk_flow_box_set_vadjustment(GtkFlowBox* box, GtkAdjustment* adjustment);
	void gtk_flow_box_unselect_all(GtkFlowBox* box);
	void gtk_flow_box_unselect_child(GtkFlowBox* box, GtkFlowBoxChild* child);

	// gtk.FlowBoxAccessible

	GType gtk_flow_box_accessible_get_type();

	// gtk.FlowBoxChild

	GType gtk_flow_box_child_get_type();
	GtkWidget* gtk_flow_box_child_new();
	void gtk_flow_box_child_changed(GtkFlowBoxChild* child);
	int gtk_flow_box_child_get_index(GtkFlowBoxChild* child);
	int gtk_flow_box_child_is_selected(GtkFlowBoxChild* child);

	// gtk.FlowBoxChildAccessible

	GType gtk_flow_box_child_accessible_get_type();

	// gtk.FontButton

	GType gtk_font_button_get_type();
	GtkWidget* gtk_font_button_new();
	GtkWidget* gtk_font_button_new_with_font(const(char)* fontname);
	const(char)* gtk_font_button_get_font_name(GtkFontButton* fontButton);
	int gtk_font_button_get_show_size(GtkFontButton* fontButton);
	int gtk_font_button_get_show_style(GtkFontButton* fontButton);
	const(char)* gtk_font_button_get_title(GtkFontButton* fontButton);
	int gtk_font_button_get_use_font(GtkFontButton* fontButton);
	int gtk_font_button_get_use_size(GtkFontButton* fontButton);
	int gtk_font_button_set_font_name(GtkFontButton* fontButton, const(char)* fontname);
	void gtk_font_button_set_show_size(GtkFontButton* fontButton, int showSize);
	void gtk_font_button_set_show_style(GtkFontButton* fontButton, int showStyle);
	void gtk_font_button_set_title(GtkFontButton* fontButton, const(char)* title);
	void gtk_font_button_set_use_font(GtkFontButton* fontButton, int useFont);
	void gtk_font_button_set_use_size(GtkFontButton* fontButton, int useSize);

	// gtk.FontChooser

	GType gtk_font_chooser_get_type();
	char* gtk_font_chooser_get_font(GtkFontChooser* fontchooser);
	PangoFontDescription* gtk_font_chooser_get_font_desc(GtkFontChooser* fontchooser);
	PangoFontFace* gtk_font_chooser_get_font_face(GtkFontChooser* fontchooser);
	PangoFontFamily* gtk_font_chooser_get_font_family(GtkFontChooser* fontchooser);
	char* gtk_font_chooser_get_font_features(GtkFontChooser* fontchooser);
	PangoFontMap* gtk_font_chooser_get_font_map(GtkFontChooser* fontchooser);
	int gtk_font_chooser_get_font_size(GtkFontChooser* fontchooser);
	char* gtk_font_chooser_get_language(GtkFontChooser* fontchooser);
	GtkFontChooserLevel gtk_font_chooser_get_level(GtkFontChooser* fontchooser);
	char* gtk_font_chooser_get_preview_text(GtkFontChooser* fontchooser);
	int gtk_font_chooser_get_show_preview_entry(GtkFontChooser* fontchooser);
	void gtk_font_chooser_set_filter_func(GtkFontChooser* fontchooser, GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy);
	void gtk_font_chooser_set_font(GtkFontChooser* fontchooser, const(char)* fontname);
	void gtk_font_chooser_set_font_desc(GtkFontChooser* fontchooser, PangoFontDescription* fontDesc);
	void gtk_font_chooser_set_font_map(GtkFontChooser* fontchooser, PangoFontMap* fontmap);
	void gtk_font_chooser_set_language(GtkFontChooser* fontchooser, const(char)* language);
	void gtk_font_chooser_set_level(GtkFontChooser* fontchooser, GtkFontChooserLevel level);
	void gtk_font_chooser_set_preview_text(GtkFontChooser* fontchooser, const(char)* text);
	void gtk_font_chooser_set_show_preview_entry(GtkFontChooser* fontchooser, int showPreviewEntry);

	// gtk.FontChooserDialog

	GType gtk_font_chooser_dialog_get_type();
	GtkWidget* gtk_font_chooser_dialog_new(const(char)* title, GtkWindow* parent);

	// gtk.FontChooserWidget

	GType gtk_font_chooser_widget_get_type();
	GtkWidget* gtk_font_chooser_widget_new();

	// gtk.FontSelection

	GType gtk_font_selection_get_type();
	GtkWidget* gtk_font_selection_new();
	PangoFontFace* gtk_font_selection_get_face(GtkFontSelection* fontsel);
	GtkWidget* gtk_font_selection_get_face_list(GtkFontSelection* fontsel);
	PangoFontFamily* gtk_font_selection_get_family(GtkFontSelection* fontsel);
	GtkWidget* gtk_font_selection_get_family_list(GtkFontSelection* fontsel);
	char* gtk_font_selection_get_font_name(GtkFontSelection* fontsel);
	GtkWidget* gtk_font_selection_get_preview_entry(GtkFontSelection* fontsel);
	const(char)* gtk_font_selection_get_preview_text(GtkFontSelection* fontsel);
	int gtk_font_selection_get_size(GtkFontSelection* fontsel);
	GtkWidget* gtk_font_selection_get_size_entry(GtkFontSelection* fontsel);
	GtkWidget* gtk_font_selection_get_size_list(GtkFontSelection* fontsel);
	int gtk_font_selection_set_font_name(GtkFontSelection* fontsel, const(char)* fontname);
	void gtk_font_selection_set_preview_text(GtkFontSelection* fontsel, const(char)* text);

	// gtk.FontSelectionDialog

	GType gtk_font_selection_dialog_get_type();
	GtkWidget* gtk_font_selection_dialog_new(const(char)* title);
	GtkWidget* gtk_font_selection_dialog_get_cancel_button(GtkFontSelectionDialog* fsd);
	char* gtk_font_selection_dialog_get_font_name(GtkFontSelectionDialog* fsd);
	GtkWidget* gtk_font_selection_dialog_get_font_selection(GtkFontSelectionDialog* fsd);
	GtkWidget* gtk_font_selection_dialog_get_ok_button(GtkFontSelectionDialog* fsd);
	const(char)* gtk_font_selection_dialog_get_preview_text(GtkFontSelectionDialog* fsd);
	int gtk_font_selection_dialog_set_font_name(GtkFontSelectionDialog* fsd, const(char)* fontname);
	void gtk_font_selection_dialog_set_preview_text(GtkFontSelectionDialog* fsd, const(char)* text);

	// gtk.Frame

	GType gtk_frame_get_type();
	GtkWidget* gtk_frame_new(const(char)* label);
	const(char)* gtk_frame_get_label(GtkFrame* frame);
	void gtk_frame_get_label_align(GtkFrame* frame, float* xalign, float* yalign);
	GtkWidget* gtk_frame_get_label_widget(GtkFrame* frame);
	GtkShadowType gtk_frame_get_shadow_type(GtkFrame* frame);
	void gtk_frame_set_label(GtkFrame* frame, const(char)* label);
	void gtk_frame_set_label_align(GtkFrame* frame, float xalign, float yalign);
	void gtk_frame_set_label_widget(GtkFrame* frame, GtkWidget* labelWidget);
	void gtk_frame_set_shadow_type(GtkFrame* frame, GtkShadowType type);

	// gtk.FrameAccessible

	GType gtk_frame_accessible_get_type();

	// gtk.GLArea

	GType gtk_gl_area_get_type();
	GtkWidget* gtk_gl_area_new();
	void gtk_gl_area_attach_buffers(GtkGLArea* area);
	int gtk_gl_area_get_auto_render(GtkGLArea* area);
	GdkGLContext* gtk_gl_area_get_context(GtkGLArea* area);
	GError* gtk_gl_area_get_error(GtkGLArea* area);
	int gtk_gl_area_get_has_alpha(GtkGLArea* area);
	int gtk_gl_area_get_has_depth_buffer(GtkGLArea* area);
	int gtk_gl_area_get_has_stencil_buffer(GtkGLArea* area);
	void gtk_gl_area_get_required_version(GtkGLArea* area, int* major, int* minor);
	int gtk_gl_area_get_use_es(GtkGLArea* area);
	void gtk_gl_area_make_current(GtkGLArea* area);
	void gtk_gl_area_queue_render(GtkGLArea* area);
	void gtk_gl_area_set_auto_render(GtkGLArea* area, int autoRender);
	void gtk_gl_area_set_error(GtkGLArea* area, GError* error);
	void gtk_gl_area_set_has_alpha(GtkGLArea* area, int hasAlpha);
	void gtk_gl_area_set_has_depth_buffer(GtkGLArea* area, int hasDepthBuffer);
	void gtk_gl_area_set_has_stencil_buffer(GtkGLArea* area, int hasStencilBuffer);
	void gtk_gl_area_set_required_version(GtkGLArea* area, int major, int minor);
	void gtk_gl_area_set_use_es(GtkGLArea* area, int useEs);

	// gtk.Gesture

	GType gtk_gesture_get_type();
	int gtk_gesture_get_bounding_box(GtkGesture* gesture, GdkRectangle* rect);
	int gtk_gesture_get_bounding_box_center(GtkGesture* gesture, double* x, double* y);
	GdkDevice* gtk_gesture_get_device(GtkGesture* gesture);
	GList* gtk_gesture_get_group(GtkGesture* gesture);
	GdkEvent* gtk_gesture_get_last_event(GtkGesture* gesture, GdkEventSequence* sequence);
	GdkEventSequence* gtk_gesture_get_last_updated_sequence(GtkGesture* gesture);
	int gtk_gesture_get_point(GtkGesture* gesture, GdkEventSequence* sequence, double* x, double* y);
	GtkEventSequenceState gtk_gesture_get_sequence_state(GtkGesture* gesture, GdkEventSequence* sequence);
	GList* gtk_gesture_get_sequences(GtkGesture* gesture);
	GdkWindow* gtk_gesture_get_window(GtkGesture* gesture);
	void gtk_gesture_group(GtkGesture* groupGesture, GtkGesture* gesture);
	int gtk_gesture_handles_sequence(GtkGesture* gesture, GdkEventSequence* sequence);
	int gtk_gesture_is_active(GtkGesture* gesture);
	int gtk_gesture_is_grouped_with(GtkGesture* gesture, GtkGesture* other);
	int gtk_gesture_is_recognized(GtkGesture* gesture);
	int gtk_gesture_set_sequence_state(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state);
	int gtk_gesture_set_state(GtkGesture* gesture, GtkEventSequenceState state);
	void gtk_gesture_set_window(GtkGesture* gesture, GdkWindow* window);
	void gtk_gesture_ungroup(GtkGesture* gesture);

	// gtk.GestureDrag

	GType gtk_gesture_drag_get_type();
	GtkGesture* gtk_gesture_drag_new(GtkWidget* widget);
	int gtk_gesture_drag_get_offset(GtkGestureDrag* gesture, double* x, double* y);
	int gtk_gesture_drag_get_start_point(GtkGestureDrag* gesture, double* x, double* y);

	// gtk.GestureLongPress

	GType gtk_gesture_long_press_get_type();
	GtkGesture* gtk_gesture_long_press_new(GtkWidget* widget);

	// gtk.GestureMultiPress

	GType gtk_gesture_multi_press_get_type();
	GtkGesture* gtk_gesture_multi_press_new(GtkWidget* widget);
	int gtk_gesture_multi_press_get_area(GtkGestureMultiPress* gesture, GdkRectangle* rect);
	void gtk_gesture_multi_press_set_area(GtkGestureMultiPress* gesture, GdkRectangle* rect);

	// gtk.GesturePan

	GType gtk_gesture_pan_get_type();
	GtkGesture* gtk_gesture_pan_new(GtkWidget* widget, GtkOrientation orientation);
	GtkOrientation gtk_gesture_pan_get_orientation(GtkGesturePan* gesture);
	void gtk_gesture_pan_set_orientation(GtkGesturePan* gesture, GtkOrientation orientation);

	// gtk.GestureRotate

	GType gtk_gesture_rotate_get_type();
	GtkGesture* gtk_gesture_rotate_new(GtkWidget* widget);
	double gtk_gesture_rotate_get_angle_delta(GtkGestureRotate* gesture);

	// gtk.GestureSingle

	GType gtk_gesture_single_get_type();
	uint gtk_gesture_single_get_button(GtkGestureSingle* gesture);
	uint gtk_gesture_single_get_current_button(GtkGestureSingle* gesture);
	GdkEventSequence* gtk_gesture_single_get_current_sequence(GtkGestureSingle* gesture);
	int gtk_gesture_single_get_exclusive(GtkGestureSingle* gesture);
	int gtk_gesture_single_get_touch_only(GtkGestureSingle* gesture);
	void gtk_gesture_single_set_button(GtkGestureSingle* gesture, uint button);
	void gtk_gesture_single_set_exclusive(GtkGestureSingle* gesture, int exclusive);
	void gtk_gesture_single_set_touch_only(GtkGestureSingle* gesture, int touchOnly);

	// gtk.GestureStylus

	GType gtk_gesture_stylus_get_type();
	GtkGesture* gtk_gesture_stylus_new(GtkWidget* widget);
	int gtk_gesture_stylus_get_axes(GtkGestureStylus* gesture, GdkAxisUse* axes, double** values);
	int gtk_gesture_stylus_get_axis(GtkGestureStylus* gesture, GdkAxisUse axis, double* value);
	GdkDeviceTool* gtk_gesture_stylus_get_device_tool(GtkGestureStylus* gesture);

	// gtk.GestureSwipe

	GType gtk_gesture_swipe_get_type();
	GtkGesture* gtk_gesture_swipe_new(GtkWidget* widget);
	int gtk_gesture_swipe_get_velocity(GtkGestureSwipe* gesture, double* velocityX, double* velocityY);

	// gtk.GestureZoom

	GType gtk_gesture_zoom_get_type();
	GtkGesture* gtk_gesture_zoom_new(GtkWidget* widget);
	double gtk_gesture_zoom_get_scale_delta(GtkGestureZoom* gesture);

	// gtk.Gradient

	GType gtk_gradient_get_type();
	GtkGradient* gtk_gradient_new_linear(double x0, double y0, double x1, double y1);
	GtkGradient* gtk_gradient_new_radial(double x0, double y0, double radius0, double x1, double y1, double radius1);
	void gtk_gradient_add_color_stop(GtkGradient* gradient, double offset, GtkSymbolicColor* color);
	GtkGradient* gtk_gradient_ref(GtkGradient* gradient);
	int gtk_gradient_resolve(GtkGradient* gradient, GtkStyleProperties* props, cairo_pattern_t** resolvedGradient);
	cairo_pattern_t* gtk_gradient_resolve_for_context(GtkGradient* gradient, GtkStyleContext* context);
	char* gtk_gradient_to_string(GtkGradient* gradient);
	void gtk_gradient_unref(GtkGradient* gradient);

	// gtk.Grid

	GType gtk_grid_get_type();
	GtkWidget* gtk_grid_new();
	void gtk_grid_attach(GtkGrid* grid, GtkWidget* child, int left, int top, int width, int height);
	void gtk_grid_attach_next_to(GtkGrid* grid, GtkWidget* child, GtkWidget* sibling, GtkPositionType side, int width, int height);
	int gtk_grid_get_baseline_row(GtkGrid* grid);
	GtkWidget* gtk_grid_get_child_at(GtkGrid* grid, int left, int top);
	int gtk_grid_get_column_homogeneous(GtkGrid* grid);
	uint gtk_grid_get_column_spacing(GtkGrid* grid);
	GtkBaselinePosition gtk_grid_get_row_baseline_position(GtkGrid* grid, int row);
	int gtk_grid_get_row_homogeneous(GtkGrid* grid);
	uint gtk_grid_get_row_spacing(GtkGrid* grid);
	void gtk_grid_insert_column(GtkGrid* grid, int position);
	void gtk_grid_insert_next_to(GtkGrid* grid, GtkWidget* sibling, GtkPositionType side);
	void gtk_grid_insert_row(GtkGrid* grid, int position);
	void gtk_grid_remove_column(GtkGrid* grid, int position);
	void gtk_grid_remove_row(GtkGrid* grid, int position);
	void gtk_grid_set_baseline_row(GtkGrid* grid, int row);
	void gtk_grid_set_column_homogeneous(GtkGrid* grid, int homogeneous);
	void gtk_grid_set_column_spacing(GtkGrid* grid, uint spacing);
	void gtk_grid_set_row_baseline_position(GtkGrid* grid, int row, GtkBaselinePosition pos);
	void gtk_grid_set_row_homogeneous(GtkGrid* grid, int homogeneous);
	void gtk_grid_set_row_spacing(GtkGrid* grid, uint spacing);

	// gtk.HBox

	GType gtk_hbox_get_type();
	GtkWidget* gtk_hbox_new(int homogeneous, int spacing);

	// gtk.HButtonBox

	GType gtk_hbutton_box_get_type();
	GtkWidget* gtk_hbutton_box_new();

	// gtk.HPaned

	GType gtk_hpaned_get_type();
	GtkWidget* gtk_hpaned_new();

	// gtk.HSV

	GType gtk_hsv_get_type();
	GtkWidget* gtk_hsv_new();
	void gtk_hsv_to_rgb(double h, double s, double v, double* r, double* g, double* b);
	void gtk_hsv_get_color(GtkHSV* hsv, double* h, double* s, double* v);
	void gtk_hsv_get_metrics(GtkHSV* hsv, int* size, int* ringWidth);
	int gtk_hsv_is_adjusting(GtkHSV* hsv);
	void gtk_hsv_set_color(GtkHSV* hsv, double h, double s, double v);
	void gtk_hsv_set_metrics(GtkHSV* hsv, int size, int ringWidth);
	void gtk_rgb_to_hsv(double r, double g, double b, double* h, double* s, double* v);

	// gtk.HScale

	GType gtk_hscale_get_type();
	GtkWidget* gtk_hscale_new(GtkAdjustment* adjustment);
	GtkWidget* gtk_hscale_new_with_range(double min, double max, double step);

	// gtk.HScrollbar

	GType gtk_hscrollbar_get_type();
	GtkWidget* gtk_hscrollbar_new(GtkAdjustment* adjustment);

	// gtk.HSeparator

	GType gtk_hseparator_get_type();
	GtkWidget* gtk_hseparator_new();

	// gtk.HandleBox

	GType gtk_handle_box_get_type();
	GtkWidget* gtk_handle_box_new();
	int gtk_handle_box_get_child_detached(GtkHandleBox* handleBox);
	GtkPositionType gtk_handle_box_get_handle_position(GtkHandleBox* handleBox);
	GtkShadowType gtk_handle_box_get_shadow_type(GtkHandleBox* handleBox);
	GtkPositionType gtk_handle_box_get_snap_edge(GtkHandleBox* handleBox);
	void gtk_handle_box_set_handle_position(GtkHandleBox* handleBox, GtkPositionType position);
	void gtk_handle_box_set_shadow_type(GtkHandleBox* handleBox, GtkShadowType type);
	void gtk_handle_box_set_snap_edge(GtkHandleBox* handleBox, GtkPositionType edge);

	// gtk.HeaderBar

	GType gtk_header_bar_get_type();
	GtkWidget* gtk_header_bar_new();
	GtkWidget* gtk_header_bar_get_custom_title(GtkHeaderBar* bar);
	const(char)* gtk_header_bar_get_decoration_layout(GtkHeaderBar* bar);
	int gtk_header_bar_get_has_subtitle(GtkHeaderBar* bar);
	int gtk_header_bar_get_show_close_button(GtkHeaderBar* bar);
	const(char)* gtk_header_bar_get_subtitle(GtkHeaderBar* bar);
	const(char)* gtk_header_bar_get_title(GtkHeaderBar* bar);
	void gtk_header_bar_pack_end(GtkHeaderBar* bar, GtkWidget* child);
	void gtk_header_bar_pack_start(GtkHeaderBar* bar, GtkWidget* child);
	void gtk_header_bar_set_custom_title(GtkHeaderBar* bar, GtkWidget* titleWidget);
	void gtk_header_bar_set_decoration_layout(GtkHeaderBar* bar, const(char)* layout);
	void gtk_header_bar_set_has_subtitle(GtkHeaderBar* bar, int setting);
	void gtk_header_bar_set_show_close_button(GtkHeaderBar* bar, int setting);
	void gtk_header_bar_set_subtitle(GtkHeaderBar* bar, const(char)* subtitle);
	void gtk_header_bar_set_title(GtkHeaderBar* bar, const(char)* title);

	// gtk.HeaderBarAccessible

	GType gtk_header_bar_accessible_get_type();

	// gtk.IMContext

	GType gtk_im_context_get_type();
	int gtk_im_context_delete_surrounding(GtkIMContext* context, int offset, int nChars);
	int gtk_im_context_filter_keypress(GtkIMContext* context, GdkEventKey* event);
	void gtk_im_context_focus_in(GtkIMContext* context);
	void gtk_im_context_focus_out(GtkIMContext* context);
	void gtk_im_context_get_preedit_string(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos);
	int gtk_im_context_get_surrounding(GtkIMContext* context, char** text, int* cursorIndex);
	void gtk_im_context_reset(GtkIMContext* context);
	void gtk_im_context_set_client_window(GtkIMContext* context, GdkWindow* window);
	void gtk_im_context_set_cursor_location(GtkIMContext* context, GdkRectangle* area);
	void gtk_im_context_set_surrounding(GtkIMContext* context, const(char)* text, int len, int cursorIndex);
	void gtk_im_context_set_use_preedit(GtkIMContext* context, int usePreedit);

	// gtk.IMContextSimple

	GType gtk_im_context_simple_get_type();
	GtkIMContext* gtk_im_context_simple_new();
	void gtk_im_context_simple_add_compose_file(GtkIMContextSimple* contextSimple, const(char)* composeFile);
	void gtk_im_context_simple_add_table(GtkIMContextSimple* contextSimple, ushort* data, int maxSeqLen, int nSeqs);

	// gtk.IMMulticontext

	GType gtk_im_multicontext_get_type();
	GtkIMContext* gtk_im_multicontext_new();
	void gtk_im_multicontext_append_menuitems(GtkIMMulticontext* context, GtkMenuShell* menushell);
	const(char)* gtk_im_multicontext_get_context_id(GtkIMMulticontext* context);
	void gtk_im_multicontext_set_context_id(GtkIMMulticontext* context, const(char)* contextId);

	// gtk.IconFactory

	GType gtk_icon_factory_get_type();
	GtkIconFactory* gtk_icon_factory_new();
	GtkIconSet* gtk_icon_factory_lookup_default(const(char)* stockId);
	void gtk_icon_factory_add(GtkIconFactory* factory, const(char)* stockId, GtkIconSet* iconSet);
	void gtk_icon_factory_add_default(GtkIconFactory* factory);
	GtkIconSet* gtk_icon_factory_lookup(GtkIconFactory* factory, const(char)* stockId);
	void gtk_icon_factory_remove_default(GtkIconFactory* factory);

	// gtk.IconInfo

	GType gtk_icon_info_get_type();
	GtkIconInfo* gtk_icon_info_new_for_pixbuf(GtkIconTheme* iconTheme, GdkPixbuf* pixbuf);
	GtkIconInfo* gtk_icon_info_copy(GtkIconInfo* iconInfo);
	void gtk_icon_info_free(GtkIconInfo* iconInfo);
	int gtk_icon_info_get_attach_points(GtkIconInfo* iconInfo, GdkPoint** points, int* nPoints);
	int gtk_icon_info_get_base_scale(GtkIconInfo* iconInfo);
	int gtk_icon_info_get_base_size(GtkIconInfo* iconInfo);
	GdkPixbuf* gtk_icon_info_get_builtin_pixbuf(GtkIconInfo* iconInfo);
	const(char)* gtk_icon_info_get_display_name(GtkIconInfo* iconInfo);
	int gtk_icon_info_get_embedded_rect(GtkIconInfo* iconInfo, GdkRectangle* rectangle);
	char* gtk_icon_info_get_filename(GtkIconInfo* iconInfo);
	int gtk_icon_info_is_symbolic(GtkIconInfo* iconInfo);
	GdkPixbuf* gtk_icon_info_load_icon(GtkIconInfo* iconInfo, GError** err);
	void gtk_icon_info_load_icon_async(GtkIconInfo* iconInfo, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GdkPixbuf* gtk_icon_info_load_icon_finish(GtkIconInfo* iconInfo, GAsyncResult* res, GError** err);
	cairo_surface_t* gtk_icon_info_load_surface(GtkIconInfo* iconInfo, GdkWindow* forWindow, GError** err);
	GdkPixbuf* gtk_icon_info_load_symbolic(GtkIconInfo* iconInfo, GdkRGBA* fg, GdkRGBA* successColor, GdkRGBA* warningColor, GdkRGBA* errorColor, int* wasSymbolic, GError** err);
	void gtk_icon_info_load_symbolic_async(GtkIconInfo* iconInfo, GdkRGBA* fg, GdkRGBA* successColor, GdkRGBA* warningColor, GdkRGBA* errorColor, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GdkPixbuf* gtk_icon_info_load_symbolic_finish(GtkIconInfo* iconInfo, GAsyncResult* res, int* wasSymbolic, GError** err);
	GdkPixbuf* gtk_icon_info_load_symbolic_for_context(GtkIconInfo* iconInfo, GtkStyleContext* context, int* wasSymbolic, GError** err);
	void gtk_icon_info_load_symbolic_for_context_async(GtkIconInfo* iconInfo, GtkStyleContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GdkPixbuf* gtk_icon_info_load_symbolic_for_context_finish(GtkIconInfo* iconInfo, GAsyncResult* res, int* wasSymbolic, GError** err);
	GdkPixbuf* gtk_icon_info_load_symbolic_for_style(GtkIconInfo* iconInfo, GtkStyle* style, GtkStateType state, int* wasSymbolic, GError** err);
	void gtk_icon_info_set_raw_coordinates(GtkIconInfo* iconInfo, int rawCoordinates);

	// gtk.IconSet

	GType gtk_icon_set_get_type();
	GtkIconSet* gtk_icon_set_new();
	GtkIconSet* gtk_icon_set_new_from_pixbuf(GdkPixbuf* pixbuf);
	void gtk_icon_set_add_source(GtkIconSet* iconSet, GtkIconSource* source);
	GtkIconSet* gtk_icon_set_copy(GtkIconSet* iconSet);
	void gtk_icon_set_get_sizes(GtkIconSet* iconSet, GtkIconSize** sizes, int* nSizes);
	GtkIconSet* gtk_icon_set_ref(GtkIconSet* iconSet);
	GdkPixbuf* gtk_icon_set_render_icon(GtkIconSet* iconSet, GtkStyle* style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, const(char)* detail);
	GdkPixbuf* gtk_icon_set_render_icon_pixbuf(GtkIconSet* iconSet, GtkStyleContext* context, GtkIconSize size);
	cairo_surface_t* gtk_icon_set_render_icon_surface(GtkIconSet* iconSet, GtkStyleContext* context, GtkIconSize size, int scale, GdkWindow* forWindow);
	void gtk_icon_set_unref(GtkIconSet* iconSet);

	// gtk.IconSource

	GType gtk_icon_source_get_type();
	GtkIconSource* gtk_icon_source_new();
	GtkIconSource* gtk_icon_source_copy(GtkIconSource* source);
	void gtk_icon_source_free(GtkIconSource* source);
	GtkTextDirection gtk_icon_source_get_direction(GtkIconSource* source);
	int gtk_icon_source_get_direction_wildcarded(GtkIconSource* source);
	char* gtk_icon_source_get_filename(GtkIconSource* source);
	const(char)* gtk_icon_source_get_icon_name(GtkIconSource* source);
	GdkPixbuf* gtk_icon_source_get_pixbuf(GtkIconSource* source);
	GtkIconSize gtk_icon_source_get_size(GtkIconSource* source);
	int gtk_icon_source_get_size_wildcarded(GtkIconSource* source);
	GtkStateType gtk_icon_source_get_state(GtkIconSource* source);
	int gtk_icon_source_get_state_wildcarded(GtkIconSource* source);
	void gtk_icon_source_set_direction(GtkIconSource* source, GtkTextDirection direction);
	void gtk_icon_source_set_direction_wildcarded(GtkIconSource* source, int setting);
	void gtk_icon_source_set_filename(GtkIconSource* source, char* filename);
	void gtk_icon_source_set_icon_name(GtkIconSource* source, const(char)* iconName);
	void gtk_icon_source_set_pixbuf(GtkIconSource* source, GdkPixbuf* pixbuf);
	void gtk_icon_source_set_size(GtkIconSource* source, GtkIconSize size);
	void gtk_icon_source_set_size_wildcarded(GtkIconSource* source, int setting);
	void gtk_icon_source_set_state(GtkIconSource* source, GtkStateType state);
	void gtk_icon_source_set_state_wildcarded(GtkIconSource* source, int setting);

	// gtk.IconTheme

	GType gtk_icon_theme_get_type();
	GtkIconTheme* gtk_icon_theme_new();
	void gtk_icon_theme_add_builtin_icon(const(char)* iconName, int size, GdkPixbuf* pixbuf);
	GtkIconTheme* gtk_icon_theme_get_default();
	GtkIconTheme* gtk_icon_theme_get_for_screen(GdkScreen* screen);
	void gtk_icon_theme_add_resource_path(GtkIconTheme* iconTheme, const(char)* path);
	void gtk_icon_theme_append_search_path(GtkIconTheme* iconTheme, char* path);
	GtkIconInfo* gtk_icon_theme_choose_icon(GtkIconTheme* iconTheme, char** iconNames, int size, GtkIconLookupFlags flags);
	GtkIconInfo* gtk_icon_theme_choose_icon_for_scale(GtkIconTheme* iconTheme, char** iconNames, int size, int scale, GtkIconLookupFlags flags);
	char* gtk_icon_theme_get_example_icon_name(GtkIconTheme* iconTheme);
	int* gtk_icon_theme_get_icon_sizes(GtkIconTheme* iconTheme, const(char)* iconName);
	void gtk_icon_theme_get_search_path(GtkIconTheme* iconTheme, char** path, int* nElements);
	int gtk_icon_theme_has_icon(GtkIconTheme* iconTheme, const(char)* iconName);
	GList* gtk_icon_theme_list_contexts(GtkIconTheme* iconTheme);
	GList* gtk_icon_theme_list_icons(GtkIconTheme* iconTheme, const(char)* context);
	GdkPixbuf* gtk_icon_theme_load_icon(GtkIconTheme* iconTheme, const(char)* iconName, int size, GtkIconLookupFlags flags, GError** err);
	GdkPixbuf* gtk_icon_theme_load_icon_for_scale(GtkIconTheme* iconTheme, const(char)* iconName, int size, int scale, GtkIconLookupFlags flags, GError** err);
	cairo_surface_t* gtk_icon_theme_load_surface(GtkIconTheme* iconTheme, const(char)* iconName, int size, int scale, GdkWindow* forWindow, GtkIconLookupFlags flags, GError** err);
	GtkIconInfo* gtk_icon_theme_lookup_by_gicon(GtkIconTheme* iconTheme, GIcon* icon, int size, GtkIconLookupFlags flags);
	GtkIconInfo* gtk_icon_theme_lookup_by_gicon_for_scale(GtkIconTheme* iconTheme, GIcon* icon, int size, int scale, GtkIconLookupFlags flags);
	GtkIconInfo* gtk_icon_theme_lookup_icon(GtkIconTheme* iconTheme, const(char)* iconName, int size, GtkIconLookupFlags flags);
	GtkIconInfo* gtk_icon_theme_lookup_icon_for_scale(GtkIconTheme* iconTheme, const(char)* iconName, int size, int scale, GtkIconLookupFlags flags);
	void gtk_icon_theme_prepend_search_path(GtkIconTheme* iconTheme, char* path);
	int gtk_icon_theme_rescan_if_needed(GtkIconTheme* iconTheme);
	void gtk_icon_theme_set_custom_theme(GtkIconTheme* iconTheme, const(char)* themeName);
	void gtk_icon_theme_set_screen(GtkIconTheme* iconTheme, GdkScreen* screen);
	void gtk_icon_theme_set_search_path(GtkIconTheme* iconTheme, char** path, int nElements);

	// gtk.IconView

	GType gtk_icon_view_get_type();
	GtkWidget* gtk_icon_view_new();
	GtkWidget* gtk_icon_view_new_with_area(GtkCellArea* area);
	GtkWidget* gtk_icon_view_new_with_model(GtkTreeModel* model);
	void gtk_icon_view_convert_widget_to_bin_window_coords(GtkIconView* iconView, int wx, int wy, int* bx, int* by);
	cairo_surface_t* gtk_icon_view_create_drag_icon(GtkIconView* iconView, GtkTreePath* path);
	void gtk_icon_view_enable_model_drag_dest(GtkIconView* iconView, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	void gtk_icon_view_enable_model_drag_source(GtkIconView* iconView, GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	int gtk_icon_view_get_activate_on_single_click(GtkIconView* iconView);
	int gtk_icon_view_get_cell_rect(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, GdkRectangle* rect);
	int gtk_icon_view_get_column_spacing(GtkIconView* iconView);
	int gtk_icon_view_get_columns(GtkIconView* iconView);
	int gtk_icon_view_get_cursor(GtkIconView* iconView, GtkTreePath** path, GtkCellRenderer** cell);
	int gtk_icon_view_get_dest_item_at_pos(GtkIconView* iconView, int dragX, int dragY, GtkTreePath** path, GtkIconViewDropPosition* pos);
	void gtk_icon_view_get_drag_dest_item(GtkIconView* iconView, GtkTreePath** path, GtkIconViewDropPosition* pos);
	int gtk_icon_view_get_item_at_pos(GtkIconView* iconView, int x, int y, GtkTreePath** path, GtkCellRenderer** cell);
	int gtk_icon_view_get_item_column(GtkIconView* iconView, GtkTreePath* path);
	GtkOrientation gtk_icon_view_get_item_orientation(GtkIconView* iconView);
	int gtk_icon_view_get_item_padding(GtkIconView* iconView);
	int gtk_icon_view_get_item_row(GtkIconView* iconView, GtkTreePath* path);
	int gtk_icon_view_get_item_width(GtkIconView* iconView);
	int gtk_icon_view_get_margin(GtkIconView* iconView);
	int gtk_icon_view_get_markup_column(GtkIconView* iconView);
	GtkTreeModel* gtk_icon_view_get_model(GtkIconView* iconView);
	GtkTreePath* gtk_icon_view_get_path_at_pos(GtkIconView* iconView, int x, int y);
	int gtk_icon_view_get_pixbuf_column(GtkIconView* iconView);
	int gtk_icon_view_get_reorderable(GtkIconView* iconView);
	int gtk_icon_view_get_row_spacing(GtkIconView* iconView);
	GList* gtk_icon_view_get_selected_items(GtkIconView* iconView);
	GtkSelectionMode gtk_icon_view_get_selection_mode(GtkIconView* iconView);
	int gtk_icon_view_get_spacing(GtkIconView* iconView);
	int gtk_icon_view_get_text_column(GtkIconView* iconView);
	int gtk_icon_view_get_tooltip_column(GtkIconView* iconView);
	int gtk_icon_view_get_tooltip_context(GtkIconView* iconView, int* x, int* y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
	int gtk_icon_view_get_visible_range(GtkIconView* iconView, GtkTreePath** startPath, GtkTreePath** endPath);
	void gtk_icon_view_item_activated(GtkIconView* iconView, GtkTreePath* path);
	int gtk_icon_view_path_is_selected(GtkIconView* iconView, GtkTreePath* path);
	void gtk_icon_view_scroll_to_path(GtkIconView* iconView, GtkTreePath* path, int useAlign, float rowAlign, float colAlign);
	void gtk_icon_view_select_all(GtkIconView* iconView);
	void gtk_icon_view_select_path(GtkIconView* iconView, GtkTreePath* path);
	void gtk_icon_view_selected_foreach(GtkIconView* iconView, GtkIconViewForeachFunc func, void* data);
	void gtk_icon_view_set_activate_on_single_click(GtkIconView* iconView, int single);
	void gtk_icon_view_set_column_spacing(GtkIconView* iconView, int columnSpacing);
	void gtk_icon_view_set_columns(GtkIconView* iconView, int columns);
	void gtk_icon_view_set_cursor(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, int startEditing);
	void gtk_icon_view_set_drag_dest_item(GtkIconView* iconView, GtkTreePath* path, GtkIconViewDropPosition pos);
	void gtk_icon_view_set_item_orientation(GtkIconView* iconView, GtkOrientation orientation);
	void gtk_icon_view_set_item_padding(GtkIconView* iconView, int itemPadding);
	void gtk_icon_view_set_item_width(GtkIconView* iconView, int itemWidth);
	void gtk_icon_view_set_margin(GtkIconView* iconView, int margin);
	void gtk_icon_view_set_markup_column(GtkIconView* iconView, int column);
	void gtk_icon_view_set_model(GtkIconView* iconView, GtkTreeModel* model);
	void gtk_icon_view_set_pixbuf_column(GtkIconView* iconView, int column);
	void gtk_icon_view_set_reorderable(GtkIconView* iconView, int reorderable);
	void gtk_icon_view_set_row_spacing(GtkIconView* iconView, int rowSpacing);
	void gtk_icon_view_set_selection_mode(GtkIconView* iconView, GtkSelectionMode mode);
	void gtk_icon_view_set_spacing(GtkIconView* iconView, int spacing);
	void gtk_icon_view_set_text_column(GtkIconView* iconView, int column);
	void gtk_icon_view_set_tooltip_cell(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell);
	void gtk_icon_view_set_tooltip_column(GtkIconView* iconView, int column);
	void gtk_icon_view_set_tooltip_item(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path);
	void gtk_icon_view_unselect_all(GtkIconView* iconView);
	void gtk_icon_view_unselect_path(GtkIconView* iconView, GtkTreePath* path);
	void gtk_icon_view_unset_model_drag_dest(GtkIconView* iconView);
	void gtk_icon_view_unset_model_drag_source(GtkIconView* iconView);

	// gtk.IconViewAccessible

	GType gtk_icon_view_accessible_get_type();

	// gtk.Image

	GType gtk_image_get_type();
	GtkWidget* gtk_image_new();
	GtkWidget* gtk_image_new_from_animation(GdkPixbufAnimation* animation);
	GtkWidget* gtk_image_new_from_file(char* filename);
	GtkWidget* gtk_image_new_from_gicon(GIcon* icon, GtkIconSize size);
	GtkWidget* gtk_image_new_from_icon_name(const(char)* iconName, GtkIconSize size);
	GtkWidget* gtk_image_new_from_icon_set(GtkIconSet* iconSet, GtkIconSize size);
	GtkWidget* gtk_image_new_from_pixbuf(GdkPixbuf* pixbuf);
	GtkWidget* gtk_image_new_from_resource(const(char)* resourcePath);
	GtkWidget* gtk_image_new_from_stock(const(char)* stockId, GtkIconSize size);
	GtkWidget* gtk_image_new_from_surface(cairo_surface_t* surface);
	void gtk_image_clear(GtkImage* image);
	GdkPixbufAnimation* gtk_image_get_animation(GtkImage* image);
	void gtk_image_get_gicon(GtkImage* image, GIcon** gicon, GtkIconSize* size);
	void gtk_image_get_icon_name(GtkImage* image, char** iconName, GtkIconSize* size);
	void gtk_image_get_icon_set(GtkImage* image, GtkIconSet** iconSet, GtkIconSize* size);
	GdkPixbuf* gtk_image_get_pixbuf(GtkImage* image);
	int gtk_image_get_pixel_size(GtkImage* image);
	void gtk_image_get_stock(GtkImage* image, char** stockId, GtkIconSize* size);
	GtkImageType gtk_image_get_storage_type(GtkImage* image);
	void gtk_image_set_from_animation(GtkImage* image, GdkPixbufAnimation* animation);
	void gtk_image_set_from_file(GtkImage* image, char* filename);
	void gtk_image_set_from_gicon(GtkImage* image, GIcon* icon, GtkIconSize size);
	void gtk_image_set_from_icon_name(GtkImage* image, const(char)* iconName, GtkIconSize size);
	void gtk_image_set_from_icon_set(GtkImage* image, GtkIconSet* iconSet, GtkIconSize size);
	void gtk_image_set_from_pixbuf(GtkImage* image, GdkPixbuf* pixbuf);
	void gtk_image_set_from_resource(GtkImage* image, const(char)* resourcePath);
	void gtk_image_set_from_stock(GtkImage* image, const(char)* stockId, GtkIconSize size);
	void gtk_image_set_from_surface(GtkImage* image, cairo_surface_t* surface);
	void gtk_image_set_pixel_size(GtkImage* image, int pixelSize);

	// gtk.ImageAccessible

	GType gtk_image_accessible_get_type();

	// gtk.ImageCellAccessible

	GType gtk_image_cell_accessible_get_type();

	// gtk.ImageMenuItem

	GType gtk_image_menu_item_get_type();
	GtkWidget* gtk_image_menu_item_new();
	GtkWidget* gtk_image_menu_item_new_from_stock(const(char)* stockId, GtkAccelGroup* accelGroup);
	GtkWidget* gtk_image_menu_item_new_with_label(const(char)* label);
	GtkWidget* gtk_image_menu_item_new_with_mnemonic(const(char)* label);
	int gtk_image_menu_item_get_always_show_image(GtkImageMenuItem* imageMenuItem);
	GtkWidget* gtk_image_menu_item_get_image(GtkImageMenuItem* imageMenuItem);
	int gtk_image_menu_item_get_use_stock(GtkImageMenuItem* imageMenuItem);
	void gtk_image_menu_item_set_accel_group(GtkImageMenuItem* imageMenuItem, GtkAccelGroup* accelGroup);
	void gtk_image_menu_item_set_always_show_image(GtkImageMenuItem* imageMenuItem, int alwaysShow);
	void gtk_image_menu_item_set_image(GtkImageMenuItem* imageMenuItem, GtkWidget* image);
	void gtk_image_menu_item_set_use_stock(GtkImageMenuItem* imageMenuItem, int useStock);

	// gtk.InfoBar

	GType gtk_info_bar_get_type();
	GtkWidget* gtk_info_bar_new();
	GtkWidget* gtk_info_bar_new_with_buttons(const(char)* firstButtonText, ... );
	void gtk_info_bar_add_action_widget(GtkInfoBar* infoBar, GtkWidget* child, int responseId);
	GtkWidget* gtk_info_bar_add_button(GtkInfoBar* infoBar, const(char)* buttonText, int responseId);
	void gtk_info_bar_add_buttons(GtkInfoBar* infoBar, const(char)* firstButtonText, ... );
	GtkWidget* gtk_info_bar_get_action_area(GtkInfoBar* infoBar);
	GtkWidget* gtk_info_bar_get_content_area(GtkInfoBar* infoBar);
	GtkMessageType gtk_info_bar_get_message_type(GtkInfoBar* infoBar);
	int gtk_info_bar_get_revealed(GtkInfoBar* infoBar);
	int gtk_info_bar_get_show_close_button(GtkInfoBar* infoBar);
	void gtk_info_bar_response(GtkInfoBar* infoBar, int responseId);
	void gtk_info_bar_set_default_response(GtkInfoBar* infoBar, int responseId);
	void gtk_info_bar_set_message_type(GtkInfoBar* infoBar, GtkMessageType messageType);
	void gtk_info_bar_set_response_sensitive(GtkInfoBar* infoBar, int responseId, int setting);
	void gtk_info_bar_set_revealed(GtkInfoBar* infoBar, int revealed);
	void gtk_info_bar_set_show_close_button(GtkInfoBar* infoBar, int setting);

	// gtk.Invisible

	GType gtk_invisible_get_type();
	GtkWidget* gtk_invisible_new();
	GtkWidget* gtk_invisible_new_for_screen(GdkScreen* screen);
	GdkScreen* gtk_invisible_get_screen(GtkInvisible* invisible);
	void gtk_invisible_set_screen(GtkInvisible* invisible, GdkScreen* screen);

	// gtk.Label

	GType gtk_label_get_type();
	GtkWidget* gtk_label_new(const(char)* str);
	GtkWidget* gtk_label_new_with_mnemonic(const(char)* str);
	double gtk_label_get_angle(GtkLabel* label);
	PangoAttrList* gtk_label_get_attributes(GtkLabel* label);
	const(char)* gtk_label_get_current_uri(GtkLabel* label);
	PangoEllipsizeMode gtk_label_get_ellipsize(GtkLabel* label);
	GtkJustification gtk_label_get_justify(GtkLabel* label);
	const(char)* gtk_label_get_label(GtkLabel* label);
	PangoLayout* gtk_label_get_layout(GtkLabel* label);
	void gtk_label_get_layout_offsets(GtkLabel* label, int* x, int* y);
	int gtk_label_get_line_wrap(GtkLabel* label);
	PangoWrapMode gtk_label_get_line_wrap_mode(GtkLabel* label);
	int gtk_label_get_lines(GtkLabel* label);
	int gtk_label_get_max_width_chars(GtkLabel* label);
	uint gtk_label_get_mnemonic_keyval(GtkLabel* label);
	GtkWidget* gtk_label_get_mnemonic_widget(GtkLabel* label);
	int gtk_label_get_selectable(GtkLabel* label);
	int gtk_label_get_selection_bounds(GtkLabel* label, int* start, int* end);
	int gtk_label_get_single_line_mode(GtkLabel* label);
	const(char)* gtk_label_get_text(GtkLabel* label);
	int gtk_label_get_track_visited_links(GtkLabel* label);
	int gtk_label_get_use_markup(GtkLabel* label);
	int gtk_label_get_use_underline(GtkLabel* label);
	int gtk_label_get_width_chars(GtkLabel* label);
	float gtk_label_get_xalign(GtkLabel* label);
	float gtk_label_get_yalign(GtkLabel* label);
	void gtk_label_select_region(GtkLabel* label, int startOffset, int endOffset);
	void gtk_label_set_angle(GtkLabel* label, double angle);
	void gtk_label_set_attributes(GtkLabel* label, PangoAttrList* attrs);
	void gtk_label_set_ellipsize(GtkLabel* label, PangoEllipsizeMode mode);
	void gtk_label_set_justify(GtkLabel* label, GtkJustification jtype);
	void gtk_label_set_label(GtkLabel* label, const(char)* str);
	void gtk_label_set_line_wrap(GtkLabel* label, int wrap);
	void gtk_label_set_line_wrap_mode(GtkLabel* label, PangoWrapMode wrapMode);
	void gtk_label_set_lines(GtkLabel* label, int lines);
	void gtk_label_set_markup(GtkLabel* label, const(char)* str);
	void gtk_label_set_markup_with_mnemonic(GtkLabel* label, const(char)* str);
	void gtk_label_set_max_width_chars(GtkLabel* label, int nChars);
	void gtk_label_set_mnemonic_widget(GtkLabel* label, GtkWidget* widget);
	void gtk_label_set_pattern(GtkLabel* label, const(char)* pattern);
	void gtk_label_set_selectable(GtkLabel* label, int setting);
	void gtk_label_set_single_line_mode(GtkLabel* label, int singleLineMode);
	void gtk_label_set_text(GtkLabel* label, const(char)* str);
	void gtk_label_set_text_with_mnemonic(GtkLabel* label, const(char)* str);
	void gtk_label_set_track_visited_links(GtkLabel* label, int trackLinks);
	void gtk_label_set_use_markup(GtkLabel* label, int setting);
	void gtk_label_set_use_underline(GtkLabel* label, int setting);
	void gtk_label_set_width_chars(GtkLabel* label, int nChars);
	void gtk_label_set_xalign(GtkLabel* label, float xalign);
	void gtk_label_set_yalign(GtkLabel* label, float yalign);

	// gtk.LabelAccessible

	GType gtk_label_accessible_get_type();

	// gtk.Layout

	GType gtk_layout_get_type();
	GtkWidget* gtk_layout_new(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment);
	GdkWindow* gtk_layout_get_bin_window(GtkLayout* layout);
	GtkAdjustment* gtk_layout_get_hadjustment(GtkLayout* layout);
	void gtk_layout_get_size(GtkLayout* layout, uint* width, uint* height);
	GtkAdjustment* gtk_layout_get_vadjustment(GtkLayout* layout);
	void gtk_layout_move(GtkLayout* layout, GtkWidget* childWidget, int x, int y);
	void gtk_layout_put(GtkLayout* layout, GtkWidget* childWidget, int x, int y);
	void gtk_layout_set_hadjustment(GtkLayout* layout, GtkAdjustment* adjustment);
	void gtk_layout_set_size(GtkLayout* layout, uint width, uint height);
	void gtk_layout_set_vadjustment(GtkLayout* layout, GtkAdjustment* adjustment);

	// gtk.LevelBar

	GType gtk_level_bar_get_type();
	GtkWidget* gtk_level_bar_new();
	GtkWidget* gtk_level_bar_new_for_interval(double minValue, double maxValue);
	void gtk_level_bar_add_offset_value(GtkLevelBar* self, const(char)* name, double value);
	int gtk_level_bar_get_inverted(GtkLevelBar* self);
	double gtk_level_bar_get_max_value(GtkLevelBar* self);
	double gtk_level_bar_get_min_value(GtkLevelBar* self);
	GtkLevelBarMode gtk_level_bar_get_mode(GtkLevelBar* self);
	int gtk_level_bar_get_offset_value(GtkLevelBar* self, const(char)* name, double* value);
	double gtk_level_bar_get_value(GtkLevelBar* self);
	void gtk_level_bar_remove_offset_value(GtkLevelBar* self, const(char)* name);
	void gtk_level_bar_set_inverted(GtkLevelBar* self, int inverted);
	void gtk_level_bar_set_max_value(GtkLevelBar* self, double value);
	void gtk_level_bar_set_min_value(GtkLevelBar* self, double value);
	void gtk_level_bar_set_mode(GtkLevelBar* self, GtkLevelBarMode mode);
	void gtk_level_bar_set_value(GtkLevelBar* self, double value);

	// gtk.LevelBarAccessible

	GType gtk_level_bar_accessible_get_type();

	// gtk.LinkButton

	GType gtk_link_button_get_type();
	GtkWidget* gtk_link_button_new(const(char)* uri);
	GtkWidget* gtk_link_button_new_with_label(const(char)* uri, const(char)* label);
	const(char)* gtk_link_button_get_uri(GtkLinkButton* linkButton);
	int gtk_link_button_get_visited(GtkLinkButton* linkButton);
	void gtk_link_button_set_uri(GtkLinkButton* linkButton, const(char)* uri);
	void gtk_link_button_set_visited(GtkLinkButton* linkButton, int visited);

	// gtk.LinkButtonAccessible

	GType gtk_link_button_accessible_get_type();

	// gtk.ListBox

	GType gtk_list_box_get_type();
	GtkWidget* gtk_list_box_new();
	void gtk_list_box_bind_model(GtkListBox* box, GListModel* model, GtkListBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc);
	void gtk_list_box_drag_highlight_row(GtkListBox* box, GtkListBoxRow* row);
	void gtk_list_box_drag_unhighlight_row(GtkListBox* box);
	int gtk_list_box_get_activate_on_single_click(GtkListBox* box);
	GtkAdjustment* gtk_list_box_get_adjustment(GtkListBox* box);
	GtkListBoxRow* gtk_list_box_get_row_at_index(GtkListBox* box, int index);
	GtkListBoxRow* gtk_list_box_get_row_at_y(GtkListBox* box, int y);
	GtkListBoxRow* gtk_list_box_get_selected_row(GtkListBox* box);
	GList* gtk_list_box_get_selected_rows(GtkListBox* box);
	GtkSelectionMode gtk_list_box_get_selection_mode(GtkListBox* box);
	void gtk_list_box_insert(GtkListBox* box, GtkWidget* child, int position);
	void gtk_list_box_invalidate_filter(GtkListBox* box);
	void gtk_list_box_invalidate_headers(GtkListBox* box);
	void gtk_list_box_invalidate_sort(GtkListBox* box);
	void gtk_list_box_prepend(GtkListBox* box, GtkWidget* child);
	void gtk_list_box_select_all(GtkListBox* box);
	void gtk_list_box_select_row(GtkListBox* box, GtkListBoxRow* row);
	void gtk_list_box_selected_foreach(GtkListBox* box, GtkListBoxForeachFunc func, void* data);
	void gtk_list_box_set_activate_on_single_click(GtkListBox* box, int single);
	void gtk_list_box_set_adjustment(GtkListBox* box, GtkAdjustment* adjustment);
	void gtk_list_box_set_filter_func(GtkListBox* box, GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy);
	void gtk_list_box_set_header_func(GtkListBox* box, GtkListBoxUpdateHeaderFunc updateHeader, void* userData, GDestroyNotify destroy);
	void gtk_list_box_set_placeholder(GtkListBox* box, GtkWidget* placeholder);
	void gtk_list_box_set_selection_mode(GtkListBox* box, GtkSelectionMode mode);
	void gtk_list_box_set_sort_func(GtkListBox* box, GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy);
	void gtk_list_box_unselect_all(GtkListBox* box);
	void gtk_list_box_unselect_row(GtkListBox* box, GtkListBoxRow* row);

	// gtk.ListBoxAccessible

	GType gtk_list_box_accessible_get_type();

	// gtk.ListBoxRow

	GType gtk_list_box_row_get_type();
	GtkWidget* gtk_list_box_row_new();
	void gtk_list_box_row_changed(GtkListBoxRow* row);
	int gtk_list_box_row_get_activatable(GtkListBoxRow* row);
	GtkWidget* gtk_list_box_row_get_header(GtkListBoxRow* row);
	int gtk_list_box_row_get_index(GtkListBoxRow* row);
	int gtk_list_box_row_get_selectable(GtkListBoxRow* row);
	int gtk_list_box_row_is_selected(GtkListBoxRow* row);
	void gtk_list_box_row_set_activatable(GtkListBoxRow* row, int activatable);
	void gtk_list_box_row_set_header(GtkListBoxRow* row, GtkWidget* header);
	void gtk_list_box_row_set_selectable(GtkListBoxRow* row, int selectable);

	// gtk.ListBoxRowAccessible

	GType gtk_list_box_row_accessible_get_type();

	// gtk.ListStore

	GType gtk_list_store_get_type();
	GtkListStore* gtk_list_store_new(int nColumns, ... );
	GtkListStore* gtk_list_store_newv(int nColumns, GType* types);
	void gtk_list_store_append(GtkListStore* listStore, GtkTreeIter* iter);
	void gtk_list_store_clear(GtkListStore* listStore);
	void gtk_list_store_insert(GtkListStore* listStore, GtkTreeIter* iter, int position);
	void gtk_list_store_insert_after(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling);
	void gtk_list_store_insert_before(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling);
	void gtk_list_store_insert_with_values(GtkListStore* listStore, GtkTreeIter* iter, int position, ... );
	void gtk_list_store_insert_with_valuesv(GtkListStore* listStore, GtkTreeIter* iter, int position, int* columns, GValue* values, int nValues);
	int gtk_list_store_iter_is_valid(GtkListStore* listStore, GtkTreeIter* iter);
	void gtk_list_store_move_after(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position);
	void gtk_list_store_move_before(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position);
	void gtk_list_store_prepend(GtkListStore* listStore, GtkTreeIter* iter);
	int gtk_list_store_remove(GtkListStore* listStore, GtkTreeIter* iter);
	void gtk_list_store_reorder(GtkListStore* store, int* newOrder);
	void gtk_list_store_set(GtkListStore* listStore, GtkTreeIter* iter, ... );
	void gtk_list_store_set_column_types(GtkListStore* listStore, int nColumns, GType* types);
	void gtk_list_store_set_valist(GtkListStore* listStore, GtkTreeIter* iter, void* varArgs);
	void gtk_list_store_set_value(GtkListStore* listStore, GtkTreeIter* iter, int column, GValue* value);
	void gtk_list_store_set_valuesv(GtkListStore* listStore, GtkTreeIter* iter, int* columns, GValue* values, int nValues);
	void gtk_list_store_swap(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b);

	// gtk.LockButton

	GType gtk_lock_button_get_type();
	GtkWidget* gtk_lock_button_new(GPermission* permission);
	GPermission* gtk_lock_button_get_permission(GtkLockButton* button);
	void gtk_lock_button_set_permission(GtkLockButton* button, GPermission* permission);

	// gtk.LockButtonAccessible

	GType gtk_lock_button_accessible_get_type();

	// gtk.Menu

	GType gtk_menu_get_type();
	GtkWidget* gtk_menu_new();
	GtkWidget* gtk_menu_new_from_model(GMenuModel* model);
	GList* gtk_menu_get_for_attach_widget(GtkWidget* widget);
	void gtk_menu_attach(GtkMenu* menu, GtkWidget* child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach);
	void gtk_menu_attach_to_widget(GtkMenu* menu, GtkWidget* attachWidget, GtkMenuDetachFunc detacher);
	void gtk_menu_detach(GtkMenu* menu);
	GtkAccelGroup* gtk_menu_get_accel_group(GtkMenu* menu);
	const(char)* gtk_menu_get_accel_path(GtkMenu* menu);
	GtkWidget* gtk_menu_get_active(GtkMenu* menu);
	GtkWidget* gtk_menu_get_attach_widget(GtkMenu* menu);
	int gtk_menu_get_monitor(GtkMenu* menu);
	int gtk_menu_get_reserve_toggle_size(GtkMenu* menu);
	int gtk_menu_get_tearoff_state(GtkMenu* menu);
	const(char)* gtk_menu_get_title(GtkMenu* menu);
	void gtk_menu_place_on_monitor(GtkMenu* menu, GdkMonitor* monitor);
	void gtk_menu_popdown(GtkMenu* menu);
	void gtk_menu_popup(GtkMenu* menu, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, void* data, uint button, uint activateTime);
	void gtk_menu_popup_at_pointer(GtkMenu* menu, GdkEvent* triggerEvent);
	void gtk_menu_popup_at_rect(GtkMenu* menu, GdkWindow* rectWindow, GdkRectangle* rect, GdkGravity rectAnchor, GdkGravity menuAnchor, GdkEvent* triggerEvent);
	void gtk_menu_popup_at_widget(GtkMenu* menu, GtkWidget* widget, GdkGravity widgetAnchor, GdkGravity menuAnchor, GdkEvent* triggerEvent);
	void gtk_menu_popup_for_device(GtkMenu* menu, GdkDevice* device, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, void* data, GDestroyNotify destroy, uint button, uint activateTime);
	void gtk_menu_reorder_child(GtkMenu* menu, GtkWidget* child, int position);
	void gtk_menu_reposition(GtkMenu* menu);
	void gtk_menu_set_accel_group(GtkMenu* menu, GtkAccelGroup* accelGroup);
	void gtk_menu_set_accel_path(GtkMenu* menu, const(char)* accelPath);
	void gtk_menu_set_active(GtkMenu* menu, uint index);
	void gtk_menu_set_monitor(GtkMenu* menu, int monitorNum);
	void gtk_menu_set_reserve_toggle_size(GtkMenu* menu, int reserveToggleSize);
	void gtk_menu_set_screen(GtkMenu* menu, GdkScreen* screen);
	void gtk_menu_set_tearoff_state(GtkMenu* menu, int tornOff);
	void gtk_menu_set_title(GtkMenu* menu, const(char)* title);

	// gtk.MenuAccessible

	GType gtk_menu_accessible_get_type();

	// gtk.MenuBar

	GType gtk_menu_bar_get_type();
	GtkWidget* gtk_menu_bar_new();
	GtkWidget* gtk_menu_bar_new_from_model(GMenuModel* model);
	GtkPackDirection gtk_menu_bar_get_child_pack_direction(GtkMenuBar* menubar);
	GtkPackDirection gtk_menu_bar_get_pack_direction(GtkMenuBar* menubar);
	void gtk_menu_bar_set_child_pack_direction(GtkMenuBar* menubar, GtkPackDirection childPackDir);
	void gtk_menu_bar_set_pack_direction(GtkMenuBar* menubar, GtkPackDirection packDir);

	// gtk.MenuButton

	GType gtk_menu_button_get_type();
	GtkWidget* gtk_menu_button_new();
	GtkWidget* gtk_menu_button_get_align_widget(GtkMenuButton* menuButton);
	GtkArrowType gtk_menu_button_get_direction(GtkMenuButton* menuButton);
	GMenuModel* gtk_menu_button_get_menu_model(GtkMenuButton* menuButton);
	GtkPopover* gtk_menu_button_get_popover(GtkMenuButton* menuButton);
	GtkMenu* gtk_menu_button_get_popup(GtkMenuButton* menuButton);
	int gtk_menu_button_get_use_popover(GtkMenuButton* menuButton);
	void gtk_menu_button_set_align_widget(GtkMenuButton* menuButton, GtkWidget* alignWidget);
	void gtk_menu_button_set_direction(GtkMenuButton* menuButton, GtkArrowType direction);
	void gtk_menu_button_set_menu_model(GtkMenuButton* menuButton, GMenuModel* menuModel);
	void gtk_menu_button_set_popover(GtkMenuButton* menuButton, GtkWidget* popover);
	void gtk_menu_button_set_popup(GtkMenuButton* menuButton, GtkWidget* menu);
	void gtk_menu_button_set_use_popover(GtkMenuButton* menuButton, int usePopover);

	// gtk.MenuButtonAccessible

	GType gtk_menu_button_accessible_get_type();

	// gtk.MenuItem

	GType gtk_menu_item_get_type();
	GtkWidget* gtk_menu_item_new();
	GtkWidget* gtk_menu_item_new_with_label(const(char)* label);
	GtkWidget* gtk_menu_item_new_with_mnemonic(const(char)* label);
	void gtk_menu_item_activate(GtkMenuItem* menuItem);
	void gtk_menu_item_deselect(GtkMenuItem* menuItem);
	const(char)* gtk_menu_item_get_accel_path(GtkMenuItem* menuItem);
	const(char)* gtk_menu_item_get_label(GtkMenuItem* menuItem);
	int gtk_menu_item_get_reserve_indicator(GtkMenuItem* menuItem);
	int gtk_menu_item_get_right_justified(GtkMenuItem* menuItem);
	GtkWidget* gtk_menu_item_get_submenu(GtkMenuItem* menuItem);
	int gtk_menu_item_get_use_underline(GtkMenuItem* menuItem);
	void gtk_menu_item_select(GtkMenuItem* menuItem);
	void gtk_menu_item_set_accel_path(GtkMenuItem* menuItem, const(char)* accelPath);
	void gtk_menu_item_set_label(GtkMenuItem* menuItem, const(char)* label);
	void gtk_menu_item_set_reserve_indicator(GtkMenuItem* menuItem, int reserve);
	void gtk_menu_item_set_right_justified(GtkMenuItem* menuItem, int rightJustified);
	void gtk_menu_item_set_submenu(GtkMenuItem* menuItem, GtkWidget* submenu);
	void gtk_menu_item_set_use_underline(GtkMenuItem* menuItem, int setting);
	void gtk_menu_item_toggle_size_allocate(GtkMenuItem* menuItem, int allocation);
	void gtk_menu_item_toggle_size_request(GtkMenuItem* menuItem, int* requisition);

	// gtk.MenuItemAccessible

	GType gtk_menu_item_accessible_get_type();

	// gtk.MenuShell

	GType gtk_menu_shell_get_type();
	void gtk_menu_shell_activate_item(GtkMenuShell* menuShell, GtkWidget* menuItem, int forceDeactivate);
	void gtk_menu_shell_append(GtkMenuShell* menuShell, GtkWidget* child);
	void gtk_menu_shell_bind_model(GtkMenuShell* menuShell, GMenuModel* model, const(char)* actionNamespace, int withSeparators);
	void gtk_menu_shell_cancel(GtkMenuShell* menuShell);
	void gtk_menu_shell_deactivate(GtkMenuShell* menuShell);
	void gtk_menu_shell_deselect(GtkMenuShell* menuShell);
	GtkWidget* gtk_menu_shell_get_parent_shell(GtkMenuShell* menuShell);
	GtkWidget* gtk_menu_shell_get_selected_item(GtkMenuShell* menuShell);
	int gtk_menu_shell_get_take_focus(GtkMenuShell* menuShell);
	void gtk_menu_shell_insert(GtkMenuShell* menuShell, GtkWidget* child, int position);
	void gtk_menu_shell_prepend(GtkMenuShell* menuShell, GtkWidget* child);
	void gtk_menu_shell_select_first(GtkMenuShell* menuShell, int searchSensitive);
	void gtk_menu_shell_select_item(GtkMenuShell* menuShell, GtkWidget* menuItem);
	void gtk_menu_shell_set_take_focus(GtkMenuShell* menuShell, int takeFocus);

	// gtk.MenuShellAccessible

	GType gtk_menu_shell_accessible_get_type();

	// gtk.MenuToolButton

	GType gtk_menu_tool_button_get_type();
	GtkToolItem* gtk_menu_tool_button_new(GtkWidget* iconWidget, const(char)* label);
	GtkToolItem* gtk_menu_tool_button_new_from_stock(const(char)* stockId);
	GtkWidget* gtk_menu_tool_button_get_menu(GtkMenuToolButton* button);
	void gtk_menu_tool_button_set_arrow_tooltip_markup(GtkMenuToolButton* button, const(char)* markup);
	void gtk_menu_tool_button_set_arrow_tooltip_text(GtkMenuToolButton* button, const(char)* text);
	void gtk_menu_tool_button_set_menu(GtkMenuToolButton* button, GtkWidget* menu);

	// gtk.MessageDialog

	GType gtk_message_dialog_get_type();
	GtkWidget* gtk_message_dialog_new(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... );
	GtkWidget* gtk_message_dialog_new_with_markup(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... );
	void gtk_message_dialog_format_secondary_markup(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... );
	void gtk_message_dialog_format_secondary_text(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... );
	GtkWidget* gtk_message_dialog_get_image(GtkMessageDialog* dialog);
	GtkWidget* gtk_message_dialog_get_message_area(GtkMessageDialog* messageDialog);
	void gtk_message_dialog_set_image(GtkMessageDialog* dialog, GtkWidget* image);
	void gtk_message_dialog_set_markup(GtkMessageDialog* messageDialog, const(char)* str);

	// gtk.Misc

	GType gtk_misc_get_type();
	void gtk_misc_get_alignment(GtkMisc* misc, float* xalign, float* yalign);
	void gtk_misc_get_padding(GtkMisc* misc, int* xpad, int* ypad);
	void gtk_misc_set_alignment(GtkMisc* misc, float xalign, float yalign);
	void gtk_misc_set_padding(GtkMisc* misc, int xpad, int ypad);

	// gtk.ModelButton

	GType gtk_model_button_get_type();
	GtkWidget* gtk_model_button_new();

	// gtk.MountOperation

	GType gtk_mount_operation_get_type();
	GMountOperation* gtk_mount_operation_new(GtkWindow* parent);
	GtkWindow* gtk_mount_operation_get_parent(GtkMountOperation* op);
	GdkScreen* gtk_mount_operation_get_screen(GtkMountOperation* op);
	int gtk_mount_operation_is_showing(GtkMountOperation* op);
	void gtk_mount_operation_set_parent(GtkMountOperation* op, GtkWindow* parent);
	void gtk_mount_operation_set_screen(GtkMountOperation* op, GdkScreen* screen);
	int gtk_show_uri(GdkScreen* screen, const(char)* uri, uint timestamp, GError** err);

	// gtk.NativeDialog

	GType gtk_native_dialog_get_type();
	void gtk_native_dialog_destroy(GtkNativeDialog* self);
	int gtk_native_dialog_get_modal(GtkNativeDialog* self);
	const(char)* gtk_native_dialog_get_title(GtkNativeDialog* self);
	GtkWindow* gtk_native_dialog_get_transient_for(GtkNativeDialog* self);
	int gtk_native_dialog_get_visible(GtkNativeDialog* self);
	void gtk_native_dialog_hide(GtkNativeDialog* self);
	int gtk_native_dialog_run(GtkNativeDialog* self);
	void gtk_native_dialog_set_modal(GtkNativeDialog* self, int modal);
	void gtk_native_dialog_set_title(GtkNativeDialog* self, const(char)* title);
	void gtk_native_dialog_set_transient_for(GtkNativeDialog* self, GtkWindow* parent);
	void gtk_native_dialog_show(GtkNativeDialog* self);

	// gtk.Notebook

	GType gtk_notebook_get_type();
	GtkWidget* gtk_notebook_new();
	int gtk_notebook_append_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel);
	int gtk_notebook_append_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel);
	void gtk_notebook_detach_tab(GtkNotebook* notebook, GtkWidget* child);
	GtkWidget* gtk_notebook_get_action_widget(GtkNotebook* notebook, GtkPackType packType);
	int gtk_notebook_get_current_page(GtkNotebook* notebook);
	const(char)* gtk_notebook_get_group_name(GtkNotebook* notebook);
	GtkWidget* gtk_notebook_get_menu_label(GtkNotebook* notebook, GtkWidget* child);
	const(char)* gtk_notebook_get_menu_label_text(GtkNotebook* notebook, GtkWidget* child);
	int gtk_notebook_get_n_pages(GtkNotebook* notebook);
	GtkWidget* gtk_notebook_get_nth_page(GtkNotebook* notebook, int pageNum);
	int gtk_notebook_get_scrollable(GtkNotebook* notebook);
	int gtk_notebook_get_show_border(GtkNotebook* notebook);
	int gtk_notebook_get_show_tabs(GtkNotebook* notebook);
	int gtk_notebook_get_tab_detachable(GtkNotebook* notebook, GtkWidget* child);
	ushort gtk_notebook_get_tab_hborder(GtkNotebook* notebook);
	GtkWidget* gtk_notebook_get_tab_label(GtkNotebook* notebook, GtkWidget* child);
	const(char)* gtk_notebook_get_tab_label_text(GtkNotebook* notebook, GtkWidget* child);
	GtkPositionType gtk_notebook_get_tab_pos(GtkNotebook* notebook);
	int gtk_notebook_get_tab_reorderable(GtkNotebook* notebook, GtkWidget* child);
	ushort gtk_notebook_get_tab_vborder(GtkNotebook* notebook);
	int gtk_notebook_insert_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, int position);
	int gtk_notebook_insert_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, int position);
	void gtk_notebook_next_page(GtkNotebook* notebook);
	int gtk_notebook_page_num(GtkNotebook* notebook, GtkWidget* child);
	void gtk_notebook_popup_disable(GtkNotebook* notebook);
	void gtk_notebook_popup_enable(GtkNotebook* notebook);
	int gtk_notebook_prepend_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel);
	int gtk_notebook_prepend_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel);
	void gtk_notebook_prev_page(GtkNotebook* notebook);
	void gtk_notebook_remove_page(GtkNotebook* notebook, int pageNum);
	void gtk_notebook_reorder_child(GtkNotebook* notebook, GtkWidget* child, int position);
	void gtk_notebook_set_action_widget(GtkNotebook* notebook, GtkWidget* widget, GtkPackType packType);
	void gtk_notebook_set_current_page(GtkNotebook* notebook, int pageNum);
	void gtk_notebook_set_group_name(GtkNotebook* notebook, const(char)* groupName);
	void gtk_notebook_set_menu_label(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menuLabel);
	void gtk_notebook_set_menu_label_text(GtkNotebook* notebook, GtkWidget* child, const(char)* menuText);
	void gtk_notebook_set_scrollable(GtkNotebook* notebook, int scrollable);
	void gtk_notebook_set_show_border(GtkNotebook* notebook, int showBorder);
	void gtk_notebook_set_show_tabs(GtkNotebook* notebook, int showTabs);
	void gtk_notebook_set_tab_detachable(GtkNotebook* notebook, GtkWidget* child, int detachable);
	void gtk_notebook_set_tab_label(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel);
	void gtk_notebook_set_tab_label_text(GtkNotebook* notebook, GtkWidget* child, const(char)* tabText);
	void gtk_notebook_set_tab_pos(GtkNotebook* notebook, GtkPositionType pos);
	void gtk_notebook_set_tab_reorderable(GtkNotebook* notebook, GtkWidget* child, int reorderable);

	// gtk.NotebookAccessible

	GType gtk_notebook_accessible_get_type();

	// gtk.NotebookPageAccessible

	GType gtk_notebook_page_accessible_get_type();
	AtkObject* gtk_notebook_page_accessible_new(GtkNotebookAccessible* notebook, GtkWidget* child);
	void gtk_notebook_page_accessible_invalidate(GtkNotebookPageAccessible* page);

	// gtk.NumerableIcon

	GType gtk_numerable_icon_get_type();
	GIcon* gtk_numerable_icon_new(GIcon* baseIcon);
	GIcon* gtk_numerable_icon_new_with_style_context(GIcon* baseIcon, GtkStyleContext* context);
	GIcon* gtk_numerable_icon_get_background_gicon(GtkNumerableIcon* self);
	const(char)* gtk_numerable_icon_get_background_icon_name(GtkNumerableIcon* self);
	int gtk_numerable_icon_get_count(GtkNumerableIcon* self);
	const(char)* gtk_numerable_icon_get_label(GtkNumerableIcon* self);
	GtkStyleContext* gtk_numerable_icon_get_style_context(GtkNumerableIcon* self);
	void gtk_numerable_icon_set_background_gicon(GtkNumerableIcon* self, GIcon* icon);
	void gtk_numerable_icon_set_background_icon_name(GtkNumerableIcon* self, const(char)* iconName);
	void gtk_numerable_icon_set_count(GtkNumerableIcon* self, int count);
	void gtk_numerable_icon_set_label(GtkNumerableIcon* self, const(char)* label);
	void gtk_numerable_icon_set_style_context(GtkNumerableIcon* self, GtkStyleContext* style);

	// gtk.OffscreenWindow

	GType gtk_offscreen_window_get_type();
	GtkWidget* gtk_offscreen_window_new();
	GdkPixbuf* gtk_offscreen_window_get_pixbuf(GtkOffscreenWindow* offscreen);
	cairo_surface_t* gtk_offscreen_window_get_surface(GtkOffscreenWindow* offscreen);

	// gtk.Orientable

	GType gtk_orientable_get_type();
	GtkOrientation gtk_orientable_get_orientation(GtkOrientable* orientable);
	void gtk_orientable_set_orientation(GtkOrientable* orientable, GtkOrientation orientation);

	// gtk.Overlay

	GType gtk_overlay_get_type();
	GtkWidget* gtk_overlay_new();
	void gtk_overlay_add_overlay(GtkOverlay* overlay, GtkWidget* widget);
	int gtk_overlay_get_overlay_pass_through(GtkOverlay* overlay, GtkWidget* widget);
	void gtk_overlay_reorder_overlay(GtkOverlay* overlay, GtkWidget* child, int index);
	void gtk_overlay_set_overlay_pass_through(GtkOverlay* overlay, GtkWidget* widget, int passThrough);

	// gtk.PadController

	GType gtk_pad_controller_get_type();
	GtkPadController* gtk_pad_controller_new(GtkWindow* window, GActionGroup* group, GdkDevice* pad);
	void gtk_pad_controller_set_action(GtkPadController* controller, GtkPadActionType type, int index, int mode, const(char)* label, const(char)* actionName);
	void gtk_pad_controller_set_action_entries(GtkPadController* controller, GtkPadActionEntry* entries, int nEntries);

	// gtk.PageSetup

	GType gtk_page_setup_get_type();
	GtkPageSetup* gtk_page_setup_new();
	GtkPageSetup* gtk_page_setup_new_from_file(char* fileName, GError** err);
	GtkPageSetup* gtk_page_setup_new_from_gvariant(GVariant* variant);
	GtkPageSetup* gtk_page_setup_new_from_key_file(GKeyFile* keyFile, const(char)* groupName, GError** err);
	GtkPageSetup* gtk_page_setup_copy(GtkPageSetup* other);
	double gtk_page_setup_get_bottom_margin(GtkPageSetup* setup, GtkUnit unit);
	double gtk_page_setup_get_left_margin(GtkPageSetup* setup, GtkUnit unit);
	GtkPageOrientation gtk_page_setup_get_orientation(GtkPageSetup* setup);
	double gtk_page_setup_get_page_height(GtkPageSetup* setup, GtkUnit unit);
	double gtk_page_setup_get_page_width(GtkPageSetup* setup, GtkUnit unit);
	double gtk_page_setup_get_paper_height(GtkPageSetup* setup, GtkUnit unit);
	GtkPaperSize* gtk_page_setup_get_paper_size(GtkPageSetup* setup);
	double gtk_page_setup_get_paper_width(GtkPageSetup* setup, GtkUnit unit);
	double gtk_page_setup_get_right_margin(GtkPageSetup* setup, GtkUnit unit);
	double gtk_page_setup_get_top_margin(GtkPageSetup* setup, GtkUnit unit);
	int gtk_page_setup_load_file(GtkPageSetup* setup, char* fileName, GError** err);
	int gtk_page_setup_load_key_file(GtkPageSetup* setup, GKeyFile* keyFile, const(char)* groupName, GError** err);
	void gtk_page_setup_set_bottom_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	void gtk_page_setup_set_left_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	void gtk_page_setup_set_orientation(GtkPageSetup* setup, GtkPageOrientation orientation);
	void gtk_page_setup_set_paper_size(GtkPageSetup* setup, GtkPaperSize* size);
	void gtk_page_setup_set_paper_size_and_default_margins(GtkPageSetup* setup, GtkPaperSize* size);
	void gtk_page_setup_set_right_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	void gtk_page_setup_set_top_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	int gtk_page_setup_to_file(GtkPageSetup* setup, char* fileName, GError** err);
	GVariant* gtk_page_setup_to_gvariant(GtkPageSetup* setup);
	void gtk_page_setup_to_key_file(GtkPageSetup* setup, GKeyFile* keyFile, const(char)* groupName);

	// gtk.Paned

	GType gtk_paned_get_type();
	GtkWidget* gtk_paned_new(GtkOrientation orientation);
	void gtk_paned_add1(GtkPaned* paned, GtkWidget* child);
	void gtk_paned_add2(GtkPaned* paned, GtkWidget* child);
	GtkWidget* gtk_paned_get_child1(GtkPaned* paned);
	GtkWidget* gtk_paned_get_child2(GtkPaned* paned);
	GdkWindow* gtk_paned_get_handle_window(GtkPaned* paned);
	int gtk_paned_get_position(GtkPaned* paned);
	int gtk_paned_get_wide_handle(GtkPaned* paned);
	void gtk_paned_pack1(GtkPaned* paned, GtkWidget* child, int resize, int shrink);
	void gtk_paned_pack2(GtkPaned* paned, GtkWidget* child, int resize, int shrink);
	void gtk_paned_set_position(GtkPaned* paned, int position);
	void gtk_paned_set_wide_handle(GtkPaned* paned, int wide);

	// gtk.PanedAccessible

	GType gtk_paned_accessible_get_type();

	// gtk.PaperSize

	GType gtk_paper_size_get_type();
	GtkPaperSize* gtk_paper_size_new(const(char)* name);
	GtkPaperSize* gtk_paper_size_new_custom(const(char)* name, const(char)* displayName, double width, double height, GtkUnit unit);
	GtkPaperSize* gtk_paper_size_new_from_gvariant(GVariant* variant);
	GtkPaperSize* gtk_paper_size_new_from_ipp(const(char)* ippName, double width, double height);
	GtkPaperSize* gtk_paper_size_new_from_key_file(GKeyFile* keyFile, const(char)* groupName, GError** err);
	GtkPaperSize* gtk_paper_size_new_from_ppd(const(char)* ppdName, const(char)* ppdDisplayName, double width, double height);
	GtkPaperSize* gtk_paper_size_copy(GtkPaperSize* other);
	void gtk_paper_size_free(GtkPaperSize* size);
	double gtk_paper_size_get_default_bottom_margin(GtkPaperSize* size, GtkUnit unit);
	double gtk_paper_size_get_default_left_margin(GtkPaperSize* size, GtkUnit unit);
	double gtk_paper_size_get_default_right_margin(GtkPaperSize* size, GtkUnit unit);
	double gtk_paper_size_get_default_top_margin(GtkPaperSize* size, GtkUnit unit);
	const(char)* gtk_paper_size_get_display_name(GtkPaperSize* size);
	double gtk_paper_size_get_height(GtkPaperSize* size, GtkUnit unit);
	const(char)* gtk_paper_size_get_name(GtkPaperSize* size);
	const(char)* gtk_paper_size_get_ppd_name(GtkPaperSize* size);
	double gtk_paper_size_get_width(GtkPaperSize* size, GtkUnit unit);
	int gtk_paper_size_is_custom(GtkPaperSize* size);
	int gtk_paper_size_is_equal(GtkPaperSize* size1, GtkPaperSize* size2);
	int gtk_paper_size_is_ipp(GtkPaperSize* size);
	void gtk_paper_size_set_size(GtkPaperSize* size, double width, double height, GtkUnit unit);
	GVariant* gtk_paper_size_to_gvariant(GtkPaperSize* paperSize);
	void gtk_paper_size_to_key_file(GtkPaperSize* size, GKeyFile* keyFile, const(char)* groupName);
	const(char)* gtk_paper_size_get_default();
	GList* gtk_paper_size_get_paper_sizes(int includeCustom);

	// gtk.PlacesSidebar

	GType gtk_places_sidebar_get_type();
	GtkWidget* gtk_places_sidebar_new();
	void gtk_places_sidebar_add_shortcut(GtkPlacesSidebar* sidebar, GFile* location);
	int gtk_places_sidebar_get_local_only(GtkPlacesSidebar* sidebar);
	GFile* gtk_places_sidebar_get_location(GtkPlacesSidebar* sidebar);
	GFile* gtk_places_sidebar_get_nth_bookmark(GtkPlacesSidebar* sidebar, int n);
	GtkPlacesOpenFlags gtk_places_sidebar_get_open_flags(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_connect_to_server(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_desktop(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_enter_location(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_other_locations(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_recent(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_starred_location(GtkPlacesSidebar* sidebar);
	int gtk_places_sidebar_get_show_trash(GtkPlacesSidebar* sidebar);
	GSList* gtk_places_sidebar_list_shortcuts(GtkPlacesSidebar* sidebar);
	void gtk_places_sidebar_remove_shortcut(GtkPlacesSidebar* sidebar, GFile* location);
	void gtk_places_sidebar_set_drop_targets_visible(GtkPlacesSidebar* sidebar, int visible, GdkDragContext* context);
	void gtk_places_sidebar_set_local_only(GtkPlacesSidebar* sidebar, int localOnly);
	void gtk_places_sidebar_set_location(GtkPlacesSidebar* sidebar, GFile* location);
	void gtk_places_sidebar_set_open_flags(GtkPlacesSidebar* sidebar, GtkPlacesOpenFlags flags);
	void gtk_places_sidebar_set_show_connect_to_server(GtkPlacesSidebar* sidebar, int showConnectToServer);
	void gtk_places_sidebar_set_show_desktop(GtkPlacesSidebar* sidebar, int showDesktop);
	void gtk_places_sidebar_set_show_enter_location(GtkPlacesSidebar* sidebar, int showEnterLocation);
	void gtk_places_sidebar_set_show_other_locations(GtkPlacesSidebar* sidebar, int showOtherLocations);
	void gtk_places_sidebar_set_show_recent(GtkPlacesSidebar* sidebar, int showRecent);
	void gtk_places_sidebar_set_show_starred_location(GtkPlacesSidebar* sidebar, int showStarredLocation);
	void gtk_places_sidebar_set_show_trash(GtkPlacesSidebar* sidebar, int showTrash);

	// gtk.Plug

	GType gtk_plug_get_type();
	GtkWidget* gtk_plug_new(ulong socketId);
	GtkWidget* gtk_plug_new_for_display(GdkDisplay* display, ulong socketId);
	void gtk_plug_construct(GtkPlug* plug, ulong socketId);
	void gtk_plug_construct_for_display(GtkPlug* plug, GdkDisplay* display, ulong socketId);
	int gtk_plug_get_embedded(GtkPlug* plug);
	ulong gtk_plug_get_id(GtkPlug* plug);
	GdkWindow* gtk_plug_get_socket_window(GtkPlug* plug);

	// gtk.Popover

	GType gtk_popover_get_type();
	GtkWidget* gtk_popover_new(GtkWidget* relativeTo);
	GtkWidget* gtk_popover_new_from_model(GtkWidget* relativeTo, GMenuModel* model);
	void gtk_popover_bind_model(GtkPopover* popover, GMenuModel* model, const(char)* actionNamespace);
	GtkPopoverConstraint gtk_popover_get_constrain_to(GtkPopover* popover);
	GtkWidget* gtk_popover_get_default_widget(GtkPopover* popover);
	int gtk_popover_get_modal(GtkPopover* popover);
	int gtk_popover_get_pointing_to(GtkPopover* popover, GdkRectangle* rect);
	GtkPositionType gtk_popover_get_position(GtkPopover* popover);
	GtkWidget* gtk_popover_get_relative_to(GtkPopover* popover);
	int gtk_popover_get_transitions_enabled(GtkPopover* popover);
	void gtk_popover_popdown(GtkPopover* popover);
	void gtk_popover_popup(GtkPopover* popover);
	void gtk_popover_set_constrain_to(GtkPopover* popover, GtkPopoverConstraint constraint);
	void gtk_popover_set_default_widget(GtkPopover* popover, GtkWidget* widget);
	void gtk_popover_set_modal(GtkPopover* popover, int modal);
	void gtk_popover_set_pointing_to(GtkPopover* popover, GdkRectangle* rect);
	void gtk_popover_set_position(GtkPopover* popover, GtkPositionType position);
	void gtk_popover_set_relative_to(GtkPopover* popover, GtkWidget* relativeTo);
	void gtk_popover_set_transitions_enabled(GtkPopover* popover, int transitionsEnabled);

	// gtk.PopoverAccessible

	GType gtk_popover_accessible_get_type();

	// gtk.PopoverMenu

	GType gtk_popover_menu_get_type();
	GtkWidget* gtk_popover_menu_new();
	void gtk_popover_menu_open_submenu(GtkPopoverMenu* popover, const(char)* name);

	// gtk.PrintContext

	GType gtk_print_context_get_type();
	PangoContext* gtk_print_context_create_pango_context(GtkPrintContext* context);
	PangoLayout* gtk_print_context_create_pango_layout(GtkPrintContext* context);
	cairo_t* gtk_print_context_get_cairo_context(GtkPrintContext* context);
	double gtk_print_context_get_dpi_x(GtkPrintContext* context);
	double gtk_print_context_get_dpi_y(GtkPrintContext* context);
	int gtk_print_context_get_hard_margins(GtkPrintContext* context, double* top, double* bottom, double* left, double* right);
	double gtk_print_context_get_height(GtkPrintContext* context);
	GtkPageSetup* gtk_print_context_get_page_setup(GtkPrintContext* context);
	PangoFontMap* gtk_print_context_get_pango_fontmap(GtkPrintContext* context);
	double gtk_print_context_get_width(GtkPrintContext* context);
	void gtk_print_context_set_cairo_context(GtkPrintContext* context, cairo_t* cr, double dpiX, double dpiY);

	// gtk.PrintOperation

	GType gtk_print_operation_get_type();
	GtkPrintOperation* gtk_print_operation_new();
	void gtk_print_operation_cancel(GtkPrintOperation* op);
	void gtk_print_operation_draw_page_finish(GtkPrintOperation* op);
	GtkPageSetup* gtk_print_operation_get_default_page_setup(GtkPrintOperation* op);
	int gtk_print_operation_get_embed_page_setup(GtkPrintOperation* op);
	void gtk_print_operation_get_error(GtkPrintOperation* op, GError** err);
	int gtk_print_operation_get_has_selection(GtkPrintOperation* op);
	int gtk_print_operation_get_n_pages_to_print(GtkPrintOperation* op);
	GtkPrintSettings* gtk_print_operation_get_print_settings(GtkPrintOperation* op);
	GtkPrintStatus gtk_print_operation_get_status(GtkPrintOperation* op);
	const(char)* gtk_print_operation_get_status_string(GtkPrintOperation* op);
	int gtk_print_operation_get_support_selection(GtkPrintOperation* op);
	int gtk_print_operation_is_finished(GtkPrintOperation* op);
	GtkPrintOperationResult gtk_print_operation_run(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent, GError** err);
	void gtk_print_operation_set_allow_async(GtkPrintOperation* op, int allowAsync);
	void gtk_print_operation_set_current_page(GtkPrintOperation* op, int currentPage);
	void gtk_print_operation_set_custom_tab_label(GtkPrintOperation* op, const(char)* label);
	void gtk_print_operation_set_default_page_setup(GtkPrintOperation* op, GtkPageSetup* defaultPageSetup);
	void gtk_print_operation_set_defer_drawing(GtkPrintOperation* op);
	void gtk_print_operation_set_embed_page_setup(GtkPrintOperation* op, int embed);
	void gtk_print_operation_set_export_filename(GtkPrintOperation* op, char* filename);
	void gtk_print_operation_set_has_selection(GtkPrintOperation* op, int hasSelection);
	void gtk_print_operation_set_job_name(GtkPrintOperation* op, const(char)* jobName);
	void gtk_print_operation_set_n_pages(GtkPrintOperation* op, int nPages);
	void gtk_print_operation_set_print_settings(GtkPrintOperation* op, GtkPrintSettings* printSettings);
	void gtk_print_operation_set_show_progress(GtkPrintOperation* op, int showProgress);
	void gtk_print_operation_set_support_selection(GtkPrintOperation* op, int supportSelection);
	void gtk_print_operation_set_track_print_status(GtkPrintOperation* op, int trackStatus);
	void gtk_print_operation_set_unit(GtkPrintOperation* op, GtkUnit unit);
	void gtk_print_operation_set_use_full_page(GtkPrintOperation* op, int fullPage);
	GtkPageSetup* gtk_print_run_page_setup_dialog(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings);
	void gtk_print_run_page_setup_dialog_async(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings, GtkPageSetupDoneFunc doneCb, void* data);

	// gtk.PrintOperationPreview

	GType gtk_print_operation_preview_get_type();
	void gtk_print_operation_preview_end_preview(GtkPrintOperationPreview* preview);
	int gtk_print_operation_preview_is_selected(GtkPrintOperationPreview* preview, int pageNr);
	void gtk_print_operation_preview_render_page(GtkPrintOperationPreview* preview, int pageNr);

	// gtk.PrintSettings

	GType gtk_print_settings_get_type();
	GtkPrintSettings* gtk_print_settings_new();
	GtkPrintSettings* gtk_print_settings_new_from_file(char* fileName, GError** err);
	GtkPrintSettings* gtk_print_settings_new_from_gvariant(GVariant* variant);
	GtkPrintSettings* gtk_print_settings_new_from_key_file(GKeyFile* keyFile, const(char)* groupName, GError** err);
	GtkPrintSettings* gtk_print_settings_copy(GtkPrintSettings* other);
	void gtk_print_settings_foreach(GtkPrintSettings* settings, GtkPrintSettingsFunc func, void* userData);
	const(char)* gtk_print_settings_get(GtkPrintSettings* settings, const(char)* key);
	int gtk_print_settings_get_bool(GtkPrintSettings* settings, const(char)* key);
	int gtk_print_settings_get_collate(GtkPrintSettings* settings);
	const(char)* gtk_print_settings_get_default_source(GtkPrintSettings* settings);
	const(char)* gtk_print_settings_get_dither(GtkPrintSettings* settings);
	double gtk_print_settings_get_double(GtkPrintSettings* settings, const(char)* key);
	double gtk_print_settings_get_double_with_default(GtkPrintSettings* settings, const(char)* key, double def);
	GtkPrintDuplex gtk_print_settings_get_duplex(GtkPrintSettings* settings);
	const(char)* gtk_print_settings_get_finishings(GtkPrintSettings* settings);
	int gtk_print_settings_get_int(GtkPrintSettings* settings, const(char)* key);
	int gtk_print_settings_get_int_with_default(GtkPrintSettings* settings, const(char)* key, int def);
	double gtk_print_settings_get_length(GtkPrintSettings* settings, const(char)* key, GtkUnit unit);
	const(char)* gtk_print_settings_get_media_type(GtkPrintSettings* settings);
	int gtk_print_settings_get_n_copies(GtkPrintSettings* settings);
	int gtk_print_settings_get_number_up(GtkPrintSettings* settings);
	GtkNumberUpLayout gtk_print_settings_get_number_up_layout(GtkPrintSettings* settings);
	GtkPageOrientation gtk_print_settings_get_orientation(GtkPrintSettings* settings);
	const(char)* gtk_print_settings_get_output_bin(GtkPrintSettings* settings);
	GtkPageRange* gtk_print_settings_get_page_ranges(GtkPrintSettings* settings, int* numRanges);
	GtkPageSet gtk_print_settings_get_page_set(GtkPrintSettings* settings);
	double gtk_print_settings_get_paper_height(GtkPrintSettings* settings, GtkUnit unit);
	GtkPaperSize* gtk_print_settings_get_paper_size(GtkPrintSettings* settings);
	double gtk_print_settings_get_paper_width(GtkPrintSettings* settings, GtkUnit unit);
	GtkPrintPages gtk_print_settings_get_print_pages(GtkPrintSettings* settings);
	const(char)* gtk_print_settings_get_printer(GtkPrintSettings* settings);
	double gtk_print_settings_get_printer_lpi(GtkPrintSettings* settings);
	GtkPrintQuality gtk_print_settings_get_quality(GtkPrintSettings* settings);
	int gtk_print_settings_get_resolution(GtkPrintSettings* settings);
	int gtk_print_settings_get_resolution_x(GtkPrintSettings* settings);
	int gtk_print_settings_get_resolution_y(GtkPrintSettings* settings);
	int gtk_print_settings_get_reverse(GtkPrintSettings* settings);
	double gtk_print_settings_get_scale(GtkPrintSettings* settings);
	int gtk_print_settings_get_use_color(GtkPrintSettings* settings);
	int gtk_print_settings_has_key(GtkPrintSettings* settings, const(char)* key);
	int gtk_print_settings_load_file(GtkPrintSettings* settings, char* fileName, GError** err);
	int gtk_print_settings_load_key_file(GtkPrintSettings* settings, GKeyFile* keyFile, const(char)* groupName, GError** err);
	void gtk_print_settings_set(GtkPrintSettings* settings, const(char)* key, const(char)* value);
	void gtk_print_settings_set_bool(GtkPrintSettings* settings, const(char)* key, int value);
	void gtk_print_settings_set_collate(GtkPrintSettings* settings, int collate);
	void gtk_print_settings_set_default_source(GtkPrintSettings* settings, const(char)* defaultSource);
	void gtk_print_settings_set_dither(GtkPrintSettings* settings, const(char)* dither);
	void gtk_print_settings_set_double(GtkPrintSettings* settings, const(char)* key, double value);
	void gtk_print_settings_set_duplex(GtkPrintSettings* settings, GtkPrintDuplex duplex);
	void gtk_print_settings_set_finishings(GtkPrintSettings* settings, const(char)* finishings);
	void gtk_print_settings_set_int(GtkPrintSettings* settings, const(char)* key, int value);
	void gtk_print_settings_set_length(GtkPrintSettings* settings, const(char)* key, double value, GtkUnit unit);
	void gtk_print_settings_set_media_type(GtkPrintSettings* settings, const(char)* mediaType);
	void gtk_print_settings_set_n_copies(GtkPrintSettings* settings, int numCopies);
	void gtk_print_settings_set_number_up(GtkPrintSettings* settings, int numberUp);
	void gtk_print_settings_set_number_up_layout(GtkPrintSettings* settings, GtkNumberUpLayout numberUpLayout);
	void gtk_print_settings_set_orientation(GtkPrintSettings* settings, GtkPageOrientation orientation);
	void gtk_print_settings_set_output_bin(GtkPrintSettings* settings, const(char)* outputBin);
	void gtk_print_settings_set_page_ranges(GtkPrintSettings* settings, GtkPageRange* pageRanges, int numRanges);
	void gtk_print_settings_set_page_set(GtkPrintSettings* settings, GtkPageSet pageSet);
	void gtk_print_settings_set_paper_height(GtkPrintSettings* settings, double height, GtkUnit unit);
	void gtk_print_settings_set_paper_size(GtkPrintSettings* settings, GtkPaperSize* paperSize);
	void gtk_print_settings_set_paper_width(GtkPrintSettings* settings, double width, GtkUnit unit);
	void gtk_print_settings_set_print_pages(GtkPrintSettings* settings, GtkPrintPages pages);
	void gtk_print_settings_set_printer(GtkPrintSettings* settings, const(char)* printer);
	void gtk_print_settings_set_printer_lpi(GtkPrintSettings* settings, double lpi);
	void gtk_print_settings_set_quality(GtkPrintSettings* settings, GtkPrintQuality quality);
	void gtk_print_settings_set_resolution(GtkPrintSettings* settings, int resolution);
	void gtk_print_settings_set_resolution_xy(GtkPrintSettings* settings, int resolutionX, int resolutionY);
	void gtk_print_settings_set_reverse(GtkPrintSettings* settings, int reverse);
	void gtk_print_settings_set_scale(GtkPrintSettings* settings, double scale);
	void gtk_print_settings_set_use_color(GtkPrintSettings* settings, int useColor);
	int gtk_print_settings_to_file(GtkPrintSettings* settings, char* fileName, GError** err);
	GVariant* gtk_print_settings_to_gvariant(GtkPrintSettings* settings);
	void gtk_print_settings_to_key_file(GtkPrintSettings* settings, GKeyFile* keyFile, const(char)* groupName);
	void gtk_print_settings_unset(GtkPrintSettings* settings, const(char)* key);

	// gtk.ProgressBar

	GType gtk_progress_bar_get_type();
	GtkWidget* gtk_progress_bar_new();
	PangoEllipsizeMode gtk_progress_bar_get_ellipsize(GtkProgressBar* pbar);
	double gtk_progress_bar_get_fraction(GtkProgressBar* pbar);
	int gtk_progress_bar_get_inverted(GtkProgressBar* pbar);
	double gtk_progress_bar_get_pulse_step(GtkProgressBar* pbar);
	int gtk_progress_bar_get_show_text(GtkProgressBar* pbar);
	const(char)* gtk_progress_bar_get_text(GtkProgressBar* pbar);
	void gtk_progress_bar_pulse(GtkProgressBar* pbar);
	void gtk_progress_bar_set_ellipsize(GtkProgressBar* pbar, PangoEllipsizeMode mode);
	void gtk_progress_bar_set_fraction(GtkProgressBar* pbar, double fraction);
	void gtk_progress_bar_set_inverted(GtkProgressBar* pbar, int inverted);
	void gtk_progress_bar_set_pulse_step(GtkProgressBar* pbar, double fraction);
	void gtk_progress_bar_set_show_text(GtkProgressBar* pbar, int showText);
	void gtk_progress_bar_set_text(GtkProgressBar* pbar, const(char)* text);

	// gtk.ProgressBarAccessible

	GType gtk_progress_bar_accessible_get_type();

	// gtk.RadioAction

	GType gtk_radio_action_get_type();
	GtkRadioAction* gtk_radio_action_new(const(char)* name, const(char)* label, const(char)* tooltip, const(char)* stockId, int value);
	int gtk_radio_action_get_current_value(GtkRadioAction* action);
	GSList* gtk_radio_action_get_group(GtkRadioAction* action);
	void gtk_radio_action_join_group(GtkRadioAction* action, GtkRadioAction* groupSource);
	void gtk_radio_action_set_current_value(GtkRadioAction* action, int currentValue);
	void gtk_radio_action_set_group(GtkRadioAction* action, GSList* group);

	// gtk.RadioButton

	GType gtk_radio_button_get_type();
	GtkWidget* gtk_radio_button_new(GSList* group);
	GtkWidget* gtk_radio_button_new_from_widget(GtkRadioButton* radioGroupMember);
	GtkWidget* gtk_radio_button_new_with_label(GSList* group, const(char)* label);
	GtkWidget* gtk_radio_button_new_with_label_from_widget(GtkRadioButton* radioGroupMember, const(char)* label);
	GtkWidget* gtk_radio_button_new_with_mnemonic(GSList* group, const(char)* label);
	GtkWidget* gtk_radio_button_new_with_mnemonic_from_widget(GtkRadioButton* radioGroupMember, const(char)* label);
	GSList* gtk_radio_button_get_group(GtkRadioButton* radioButton);
	void gtk_radio_button_join_group(GtkRadioButton* radioButton, GtkRadioButton* groupSource);
	void gtk_radio_button_set_group(GtkRadioButton* radioButton, GSList* group);

	// gtk.RadioButtonAccessible

	GType gtk_radio_button_accessible_get_type();

	// gtk.RadioMenuItem

	GType gtk_radio_menu_item_get_type();
	GtkWidget* gtk_radio_menu_item_new(GSList* group);
	GtkWidget* gtk_radio_menu_item_new_from_widget(GtkRadioMenuItem* group);
	GtkWidget* gtk_radio_menu_item_new_with_label(GSList* group, const(char)* label);
	GtkWidget* gtk_radio_menu_item_new_with_label_from_widget(GtkRadioMenuItem* group, const(char)* label);
	GtkWidget* gtk_radio_menu_item_new_with_mnemonic(GSList* group, const(char)* label);
	GtkWidget* gtk_radio_menu_item_new_with_mnemonic_from_widget(GtkRadioMenuItem* group, const(char)* label);
	GSList* gtk_radio_menu_item_get_group(GtkRadioMenuItem* radioMenuItem);
	void gtk_radio_menu_item_join_group(GtkRadioMenuItem* radioMenuItem, GtkRadioMenuItem* groupSource);
	void gtk_radio_menu_item_set_group(GtkRadioMenuItem* radioMenuItem, GSList* group);

	// gtk.RadioMenuItemAccessible

	GType gtk_radio_menu_item_accessible_get_type();

	// gtk.RadioToolButton

	GType gtk_radio_tool_button_get_type();
	GtkToolItem* gtk_radio_tool_button_new(GSList* group);
	GtkToolItem* gtk_radio_tool_button_new_from_stock(GSList* group, const(char)* stockId);
	GtkToolItem* gtk_radio_tool_button_new_from_widget(GtkRadioToolButton* group);
	GtkToolItem* gtk_radio_tool_button_new_with_stock_from_widget(GtkRadioToolButton* group, const(char)* stockId);
	GSList* gtk_radio_tool_button_get_group(GtkRadioToolButton* button);
	void gtk_radio_tool_button_set_group(GtkRadioToolButton* button, GSList* group);

	// gtk.Range

	GType gtk_range_get_type();
	GtkAdjustment* gtk_range_get_adjustment(GtkRange* range);
	double gtk_range_get_fill_level(GtkRange* range);
	int gtk_range_get_flippable(GtkRange* range);
	int gtk_range_get_inverted(GtkRange* range);
	GtkSensitivityType gtk_range_get_lower_stepper_sensitivity(GtkRange* range);
	int gtk_range_get_min_slider_size(GtkRange* range);
	void gtk_range_get_range_rect(GtkRange* range, GdkRectangle* rangeRect);
	int gtk_range_get_restrict_to_fill_level(GtkRange* range);
	int gtk_range_get_round_digits(GtkRange* range);
	int gtk_range_get_show_fill_level(GtkRange* range);
	void gtk_range_get_slider_range(GtkRange* range, int* sliderStart, int* sliderEnd);
	int gtk_range_get_slider_size_fixed(GtkRange* range);
	GtkSensitivityType gtk_range_get_upper_stepper_sensitivity(GtkRange* range);
	double gtk_range_get_value(GtkRange* range);
	void gtk_range_set_adjustment(GtkRange* range, GtkAdjustment* adjustment);
	void gtk_range_set_fill_level(GtkRange* range, double fillLevel);
	void gtk_range_set_flippable(GtkRange* range, int flippable);
	void gtk_range_set_increments(GtkRange* range, double step, double page);
	void gtk_range_set_inverted(GtkRange* range, int setting);
	void gtk_range_set_lower_stepper_sensitivity(GtkRange* range, GtkSensitivityType sensitivity);
	void gtk_range_set_min_slider_size(GtkRange* range, int minSize);
	void gtk_range_set_range(GtkRange* range, double min, double max);
	void gtk_range_set_restrict_to_fill_level(GtkRange* range, int restrictToFillLevel);
	void gtk_range_set_round_digits(GtkRange* range, int roundDigits);
	void gtk_range_set_show_fill_level(GtkRange* range, int showFillLevel);
	void gtk_range_set_slider_size_fixed(GtkRange* range, int sizeFixed);
	void gtk_range_set_upper_stepper_sensitivity(GtkRange* range, GtkSensitivityType sensitivity);
	void gtk_range_set_value(GtkRange* range, double value);

	// gtk.RangeAccessible

	GType gtk_range_accessible_get_type();

	// gtk.RcProperty

	int gtk_rc_property_parse_border(GParamSpec* pspec, GString* gstring, GValue* propertyValue);
	int gtk_rc_property_parse_color(GParamSpec* pspec, GString* gstring, GValue* propertyValue);
	int gtk_rc_property_parse_enum(GParamSpec* pspec, GString* gstring, GValue* propertyValue);
	int gtk_rc_property_parse_flags(GParamSpec* pspec, GString* gstring, GValue* propertyValue);
	int gtk_rc_property_parse_requisition(GParamSpec* pspec, GString* gstring, GValue* propertyValue);

	// gtk.RcStyle

	GType gtk_rc_style_get_type();
	GtkRcStyle* gtk_rc_style_new();
	GtkRcStyle* gtk_rc_style_copy(GtkRcStyle* orig);
	void gtk_rc_add_default_file(char* filename);
	char* gtk_rc_find_module_in_path(const(char)* moduleFile);
	char* gtk_rc_find_pixmap_in_path(GtkSettings* settings, GScanner* scanner, const(char)* pixmapFile);
	char** gtk_rc_get_default_files();
	char* gtk_rc_get_im_module_file();
	char* gtk_rc_get_im_module_path();
	char* gtk_rc_get_module_dir();
	GtkStyle* gtk_rc_get_style(GtkWidget* widget);
	GtkStyle* gtk_rc_get_style_by_paths(GtkSettings* settings, const(char)* widgetPath, const(char)* classPath, GType type);
	char* gtk_rc_get_theme_dir();
	void gtk_rc_parse(const(char)* filename);
	uint gtk_rc_parse_color(GScanner* scanner, GdkColor* color);
	uint gtk_rc_parse_color_full(GScanner* scanner, GtkRcStyle* style, GdkColor* color);
	uint gtk_rc_parse_priority(GScanner* scanner, GtkPathPriorityType* priority);
	uint gtk_rc_parse_state(GScanner* scanner, GtkStateType* state);
	void gtk_rc_parse_string(const(char)* rcString);
	int gtk_rc_reparse_all();
	int gtk_rc_reparse_all_for_settings(GtkSettings* settings, int forceLoad);
	void gtk_rc_reset_styles(GtkSettings* settings);
	GScanner* gtk_rc_scanner_new();
	void gtk_rc_set_default_files(char** filenames);

	// gtk.RecentAction

	GType gtk_recent_action_get_type();
	GtkAction* gtk_recent_action_new(const(char)* name, const(char)* label, const(char)* tooltip, const(char)* stockId);
	GtkAction* gtk_recent_action_new_for_manager(const(char)* name, const(char)* label, const(char)* tooltip, const(char)* stockId, GtkRecentManager* manager);
	int gtk_recent_action_get_show_numbers(GtkRecentAction* action);
	void gtk_recent_action_set_show_numbers(GtkRecentAction* action, int showNumbers);

	// gtk.RecentChooser

	GType gtk_recent_chooser_get_type();
	void gtk_recent_chooser_add_filter(GtkRecentChooser* chooser, GtkRecentFilter* filter);
	GtkRecentInfo* gtk_recent_chooser_get_current_item(GtkRecentChooser* chooser);
	char* gtk_recent_chooser_get_current_uri(GtkRecentChooser* chooser);
	GtkRecentFilter* gtk_recent_chooser_get_filter(GtkRecentChooser* chooser);
	GList* gtk_recent_chooser_get_items(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_limit(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_local_only(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_select_multiple(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_show_icons(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_show_not_found(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_show_private(GtkRecentChooser* chooser);
	int gtk_recent_chooser_get_show_tips(GtkRecentChooser* chooser);
	GtkRecentSortType gtk_recent_chooser_get_sort_type(GtkRecentChooser* chooser);
	char** gtk_recent_chooser_get_uris(GtkRecentChooser* chooser, size_t* length);
	GSList* gtk_recent_chooser_list_filters(GtkRecentChooser* chooser);
	void gtk_recent_chooser_remove_filter(GtkRecentChooser* chooser, GtkRecentFilter* filter);
	void gtk_recent_chooser_select_all(GtkRecentChooser* chooser);
	int gtk_recent_chooser_select_uri(GtkRecentChooser* chooser, const(char)* uri, GError** err);
	int gtk_recent_chooser_set_current_uri(GtkRecentChooser* chooser, const(char)* uri, GError** err);
	void gtk_recent_chooser_set_filter(GtkRecentChooser* chooser, GtkRecentFilter* filter);
	void gtk_recent_chooser_set_limit(GtkRecentChooser* chooser, int limit);
	void gtk_recent_chooser_set_local_only(GtkRecentChooser* chooser, int localOnly);
	void gtk_recent_chooser_set_select_multiple(GtkRecentChooser* chooser, int selectMultiple);
	void gtk_recent_chooser_set_show_icons(GtkRecentChooser* chooser, int showIcons);
	void gtk_recent_chooser_set_show_not_found(GtkRecentChooser* chooser, int showNotFound);
	void gtk_recent_chooser_set_show_private(GtkRecentChooser* chooser, int showPrivate);
	void gtk_recent_chooser_set_show_tips(GtkRecentChooser* chooser, int showTips);
	void gtk_recent_chooser_set_sort_func(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy);
	void gtk_recent_chooser_set_sort_type(GtkRecentChooser* chooser, GtkRecentSortType sortType);
	void gtk_recent_chooser_unselect_all(GtkRecentChooser* chooser);
	void gtk_recent_chooser_unselect_uri(GtkRecentChooser* chooser, const(char)* uri);

	// gtk.RecentChooserDialog

	GType gtk_recent_chooser_dialog_get_type();
	GtkWidget* gtk_recent_chooser_dialog_new(const(char)* title, GtkWindow* parent, const(char)* firstButtonText, ... );
	GtkWidget* gtk_recent_chooser_dialog_new_for_manager(const(char)* title, GtkWindow* parent, GtkRecentManager* manager, const(char)* firstButtonText, ... );

	// gtk.RecentChooserMenu

	GType gtk_recent_chooser_menu_get_type();
	GtkWidget* gtk_recent_chooser_menu_new();
	GtkWidget* gtk_recent_chooser_menu_new_for_manager(GtkRecentManager* manager);
	int gtk_recent_chooser_menu_get_show_numbers(GtkRecentChooserMenu* menu);
	void gtk_recent_chooser_menu_set_show_numbers(GtkRecentChooserMenu* menu, int showNumbers);

	// gtk.RecentChooserWidget

	GType gtk_recent_chooser_widget_get_type();
	GtkWidget* gtk_recent_chooser_widget_new();
	GtkWidget* gtk_recent_chooser_widget_new_for_manager(GtkRecentManager* manager);

	// gtk.RecentFilter

	GType gtk_recent_filter_get_type();
	GtkRecentFilter* gtk_recent_filter_new();
	void gtk_recent_filter_add_age(GtkRecentFilter* filter, int days);
	void gtk_recent_filter_add_application(GtkRecentFilter* filter, const(char)* application);
	void gtk_recent_filter_add_custom(GtkRecentFilter* filter, GtkRecentFilterFlags needed, GtkRecentFilterFunc func, void* data, GDestroyNotify dataDestroy);
	void gtk_recent_filter_add_group(GtkRecentFilter* filter, const(char)* group);
	void gtk_recent_filter_add_mime_type(GtkRecentFilter* filter, const(char)* mimeType);
	void gtk_recent_filter_add_pattern(GtkRecentFilter* filter, const(char)* pattern);
	void gtk_recent_filter_add_pixbuf_formats(GtkRecentFilter* filter);
	int gtk_recent_filter_filter(GtkRecentFilter* filter, GtkRecentFilterInfo* filterInfo);
	const(char)* gtk_recent_filter_get_name(GtkRecentFilter* filter);
	GtkRecentFilterFlags gtk_recent_filter_get_needed(GtkRecentFilter* filter);
	void gtk_recent_filter_set_name(GtkRecentFilter* filter, const(char)* name);

	// gtk.RecentInfo

	GType gtk_recent_info_get_type();
	GAppInfo* gtk_recent_info_create_app_info(GtkRecentInfo* info, const(char)* appName, GError** err);
	int gtk_recent_info_exists(GtkRecentInfo* info);
	uint gtk_recent_info_get_added(GtkRecentInfo* info);
	int gtk_recent_info_get_age(GtkRecentInfo* info);
	int gtk_recent_info_get_application_info(GtkRecentInfo* info, const(char)* appName, char** appExec, uint* count, uint* time);
	char** gtk_recent_info_get_applications(GtkRecentInfo* info, size_t* length);
	const(char)* gtk_recent_info_get_description(GtkRecentInfo* info);
	const(char)* gtk_recent_info_get_display_name(GtkRecentInfo* info);
	GIcon* gtk_recent_info_get_gicon(GtkRecentInfo* info);
	char** gtk_recent_info_get_groups(GtkRecentInfo* info, size_t* length);
	GdkPixbuf* gtk_recent_info_get_icon(GtkRecentInfo* info, int size);
	const(char)* gtk_recent_info_get_mime_type(GtkRecentInfo* info);
	uint gtk_recent_info_get_modified(GtkRecentInfo* info);
	int gtk_recent_info_get_private_hint(GtkRecentInfo* info);
	char* gtk_recent_info_get_short_name(GtkRecentInfo* info);
	const(char)* gtk_recent_info_get_uri(GtkRecentInfo* info);
	char* gtk_recent_info_get_uri_display(GtkRecentInfo* info);
	uint gtk_recent_info_get_visited(GtkRecentInfo* info);
	int gtk_recent_info_has_application(GtkRecentInfo* info, const(char)* appName);
	int gtk_recent_info_has_group(GtkRecentInfo* info, const(char)* groupName);
	int gtk_recent_info_is_local(GtkRecentInfo* info);
	char* gtk_recent_info_last_application(GtkRecentInfo* info);
	int gtk_recent_info_match(GtkRecentInfo* infoA, GtkRecentInfo* infoB);
	GtkRecentInfo* gtk_recent_info_ref(GtkRecentInfo* info);
	void gtk_recent_info_unref(GtkRecentInfo* info);

	// gtk.RecentManager

	GType gtk_recent_manager_get_type();
	GtkRecentManager* gtk_recent_manager_new();
	GtkRecentManager* gtk_recent_manager_get_default();
	int gtk_recent_manager_add_full(GtkRecentManager* manager, const(char)* uri, GtkRecentData* recentData);
	int gtk_recent_manager_add_item(GtkRecentManager* manager, const(char)* uri);
	GList* gtk_recent_manager_get_items(GtkRecentManager* manager);
	int gtk_recent_manager_has_item(GtkRecentManager* manager, const(char)* uri);
	GtkRecentInfo* gtk_recent_manager_lookup_item(GtkRecentManager* manager, const(char)* uri, GError** err);
	int gtk_recent_manager_move_item(GtkRecentManager* manager, const(char)* uri, const(char)* newUri, GError** err);
	int gtk_recent_manager_purge_items(GtkRecentManager* manager, GError** err);
	int gtk_recent_manager_remove_item(GtkRecentManager* manager, const(char)* uri, GError** err);

	// gtk.RendererCellAccessible

	GType gtk_renderer_cell_accessible_get_type();
	AtkObject* gtk_renderer_cell_accessible_new(GtkCellRenderer* renderer);

	// gtk.Requisition

	GType gtk_requisition_get_type();
	GtkRequisition* gtk_requisition_new();
	GtkRequisition* gtk_requisition_copy(GtkRequisition* requisition);
	void gtk_requisition_free(GtkRequisition* requisition);

	// gtk.Revealer

	GType gtk_revealer_get_type();
	GtkWidget* gtk_revealer_new();
	int gtk_revealer_get_child_revealed(GtkRevealer* revealer);
	int gtk_revealer_get_reveal_child(GtkRevealer* revealer);
	uint gtk_revealer_get_transition_duration(GtkRevealer* revealer);
	GtkRevealerTransitionType gtk_revealer_get_transition_type(GtkRevealer* revealer);
	void gtk_revealer_set_reveal_child(GtkRevealer* revealer, int revealChild);
	void gtk_revealer_set_transition_duration(GtkRevealer* revealer, uint duration);
	void gtk_revealer_set_transition_type(GtkRevealer* revealer, GtkRevealerTransitionType transition);

	// gtk.Scale

	GType gtk_scale_get_type();
	GtkWidget* gtk_scale_new(GtkOrientation orientation, GtkAdjustment* adjustment);
	GtkWidget* gtk_scale_new_with_range(GtkOrientation orientation, double min, double max, double step);
	void gtk_scale_add_mark(GtkScale* scale, double value, GtkPositionType position, const(char)* markup);
	void gtk_scale_clear_marks(GtkScale* scale);
	int gtk_scale_get_digits(GtkScale* scale);
	int gtk_scale_get_draw_value(GtkScale* scale);
	int gtk_scale_get_has_origin(GtkScale* scale);
	PangoLayout* gtk_scale_get_layout(GtkScale* scale);
	void gtk_scale_get_layout_offsets(GtkScale* scale, int* x, int* y);
	GtkPositionType gtk_scale_get_value_pos(GtkScale* scale);
	void gtk_scale_set_digits(GtkScale* scale, int digits);
	void gtk_scale_set_draw_value(GtkScale* scale, int drawValue);
	void gtk_scale_set_has_origin(GtkScale* scale, int hasOrigin);
	void gtk_scale_set_value_pos(GtkScale* scale, GtkPositionType pos);

	// gtk.ScaleAccessible

	GType gtk_scale_accessible_get_type();

	// gtk.ScaleButton

	GType gtk_scale_button_get_type();
	GtkWidget* gtk_scale_button_new(GtkIconSize size, double min, double max, double step, char** icons);
	GtkAdjustment* gtk_scale_button_get_adjustment(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_minus_button(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_plus_button(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_popup(GtkScaleButton* button);
	double gtk_scale_button_get_value(GtkScaleButton* button);
	void gtk_scale_button_set_adjustment(GtkScaleButton* button, GtkAdjustment* adjustment);
	void gtk_scale_button_set_icons(GtkScaleButton* button, char** icons);
	void gtk_scale_button_set_value(GtkScaleButton* button, double value);

	// gtk.ScaleButtonAccessible

	GType gtk_scale_button_accessible_get_type();

	// gtk.Scrollable

	GType gtk_scrollable_get_type();
	int gtk_scrollable_get_border(GtkScrollable* scrollable, GtkBorder* border);
	GtkAdjustment* gtk_scrollable_get_hadjustment(GtkScrollable* scrollable);
	GtkScrollablePolicy gtk_scrollable_get_hscroll_policy(GtkScrollable* scrollable);
	GtkAdjustment* gtk_scrollable_get_vadjustment(GtkScrollable* scrollable);
	GtkScrollablePolicy gtk_scrollable_get_vscroll_policy(GtkScrollable* scrollable);
	void gtk_scrollable_set_hadjustment(GtkScrollable* scrollable, GtkAdjustment* hadjustment);
	void gtk_scrollable_set_hscroll_policy(GtkScrollable* scrollable, GtkScrollablePolicy policy);
	void gtk_scrollable_set_vadjustment(GtkScrollable* scrollable, GtkAdjustment* vadjustment);
	void gtk_scrollable_set_vscroll_policy(GtkScrollable* scrollable, GtkScrollablePolicy policy);

	// gtk.Scrollbar

	GType gtk_scrollbar_get_type();
	GtkWidget* gtk_scrollbar_new(GtkOrientation orientation, GtkAdjustment* adjustment);

	// gtk.ScrolledWindow

	GType gtk_scrolled_window_get_type();
	GtkWidget* gtk_scrolled_window_new(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment);
	void gtk_scrolled_window_add_with_viewport(GtkScrolledWindow* scrolledWindow, GtkWidget* child);
	int gtk_scrolled_window_get_capture_button_press(GtkScrolledWindow* scrolledWindow);
	GtkAdjustment* gtk_scrolled_window_get_hadjustment(GtkScrolledWindow* scrolledWindow);
	GtkWidget* gtk_scrolled_window_get_hscrollbar(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_kinetic_scrolling(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_max_content_height(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_max_content_width(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_min_content_height(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_min_content_width(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_overlay_scrolling(GtkScrolledWindow* scrolledWindow);
	GtkCornerType gtk_scrolled_window_get_placement(GtkScrolledWindow* scrolledWindow);
	void gtk_scrolled_window_get_policy(GtkScrolledWindow* scrolledWindow, GtkPolicyType* hscrollbarPolicy, GtkPolicyType* vscrollbarPolicy);
	int gtk_scrolled_window_get_propagate_natural_height(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_propagate_natural_width(GtkScrolledWindow* scrolledWindow);
	GtkShadowType gtk_scrolled_window_get_shadow_type(GtkScrolledWindow* scrolledWindow);
	GtkAdjustment* gtk_scrolled_window_get_vadjustment(GtkScrolledWindow* scrolledWindow);
	GtkWidget* gtk_scrolled_window_get_vscrollbar(GtkScrolledWindow* scrolledWindow);
	void gtk_scrolled_window_set_capture_button_press(GtkScrolledWindow* scrolledWindow, int captureButtonPress);
	void gtk_scrolled_window_set_hadjustment(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment);
	void gtk_scrolled_window_set_kinetic_scrolling(GtkScrolledWindow* scrolledWindow, int kineticScrolling);
	void gtk_scrolled_window_set_max_content_height(GtkScrolledWindow* scrolledWindow, int height);
	void gtk_scrolled_window_set_max_content_width(GtkScrolledWindow* scrolledWindow, int width);
	void gtk_scrolled_window_set_min_content_height(GtkScrolledWindow* scrolledWindow, int height);
	void gtk_scrolled_window_set_min_content_width(GtkScrolledWindow* scrolledWindow, int width);
	void gtk_scrolled_window_set_overlay_scrolling(GtkScrolledWindow* scrolledWindow, int overlayScrolling);
	void gtk_scrolled_window_set_placement(GtkScrolledWindow* scrolledWindow, GtkCornerType windowPlacement);
	void gtk_scrolled_window_set_policy(GtkScrolledWindow* scrolledWindow, GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy);
	void gtk_scrolled_window_set_propagate_natural_height(GtkScrolledWindow* scrolledWindow, int propagate);
	void gtk_scrolled_window_set_propagate_natural_width(GtkScrolledWindow* scrolledWindow, int propagate);
	void gtk_scrolled_window_set_shadow_type(GtkScrolledWindow* scrolledWindow, GtkShadowType type);
	void gtk_scrolled_window_set_vadjustment(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment);
	void gtk_scrolled_window_unset_placement(GtkScrolledWindow* scrolledWindow);

	// gtk.ScrolledWindowAccessible

	GType gtk_scrolled_window_accessible_get_type();

	// gtk.SearchBar

	GType gtk_search_bar_get_type();
	GtkWidget* gtk_search_bar_new();
	void gtk_search_bar_connect_entry(GtkSearchBar* bar, GtkEntry* entry);
	int gtk_search_bar_get_search_mode(GtkSearchBar* bar);
	int gtk_search_bar_get_show_close_button(GtkSearchBar* bar);
	int gtk_search_bar_handle_event(GtkSearchBar* bar, GdkEvent* event);
	void gtk_search_bar_set_search_mode(GtkSearchBar* bar, int searchMode);
	void gtk_search_bar_set_show_close_button(GtkSearchBar* bar, int visible);

	// gtk.SearchEntry

	GType gtk_search_entry_get_type();
	GtkWidget* gtk_search_entry_new();
	int gtk_search_entry_handle_event(GtkSearchEntry* entry, GdkEvent* event);

	// gtk.SelectionData

	GType gtk_selection_data_get_type();
	GtkSelectionData* gtk_selection_data_copy(GtkSelectionData* data);
	void gtk_selection_data_free(GtkSelectionData* data);
	char* gtk_selection_data_get_data(GtkSelectionData* selectionData);
	GdkAtom gtk_selection_data_get_data_type(GtkSelectionData* selectionData);
	char* gtk_selection_data_get_data_with_length(GtkSelectionData* selectionData, int* length);
	GdkDisplay* gtk_selection_data_get_display(GtkSelectionData* selectionData);
	int gtk_selection_data_get_format(GtkSelectionData* selectionData);
	int gtk_selection_data_get_length(GtkSelectionData* selectionData);
	GdkPixbuf* gtk_selection_data_get_pixbuf(GtkSelectionData* selectionData);
	GdkAtom gtk_selection_data_get_selection(GtkSelectionData* selectionData);
	GdkAtom gtk_selection_data_get_target(GtkSelectionData* selectionData);
	int gtk_selection_data_get_targets(GtkSelectionData* selectionData, GdkAtom** targets, int* nAtoms);
	char* gtk_selection_data_get_text(GtkSelectionData* selectionData);
	char** gtk_selection_data_get_uris(GtkSelectionData* selectionData);
	void gtk_selection_data_set(GtkSelectionData* selectionData, GdkAtom type, int format, char* data, int length);
	int gtk_selection_data_set_pixbuf(GtkSelectionData* selectionData, GdkPixbuf* pixbuf);
	int gtk_selection_data_set_text(GtkSelectionData* selectionData, const(char)* str, int len);
	int gtk_selection_data_set_uris(GtkSelectionData* selectionData, char** uris);
	int gtk_selection_data_targets_include_image(GtkSelectionData* selectionData, int writable);
	int gtk_selection_data_targets_include_rich_text(GtkSelectionData* selectionData, GtkTextBuffer* buffer);
	int gtk_selection_data_targets_include_text(GtkSelectionData* selectionData);
	int gtk_selection_data_targets_include_uri(GtkSelectionData* selectionData);
	void gtk_selection_add_target(GtkWidget* widget, GdkAtom selection, GdkAtom target, uint info);
	void gtk_selection_add_targets(GtkWidget* widget, GdkAtom selection, GtkTargetEntry* targets, uint ntargets);
	void gtk_selection_clear_targets(GtkWidget* widget, GdkAtom selection);
	int gtk_selection_convert(GtkWidget* widget, GdkAtom selection, GdkAtom target, uint time);
	int gtk_selection_owner_set(GtkWidget* widget, GdkAtom selection, uint time);
	int gtk_selection_owner_set_for_display(GdkDisplay* display, GtkWidget* widget, GdkAtom selection, uint time);
	void gtk_selection_remove_all(GtkWidget* widget);

	// gtk.Separator

	GType gtk_separator_get_type();
	GtkWidget* gtk_separator_new(GtkOrientation orientation);

	// gtk.SeparatorMenuItem

	GType gtk_separator_menu_item_get_type();
	GtkWidget* gtk_separator_menu_item_new();

	// gtk.SeparatorToolItem

	GType gtk_separator_tool_item_get_type();
	GtkToolItem* gtk_separator_tool_item_new();
	int gtk_separator_tool_item_get_draw(GtkSeparatorToolItem* item);
	void gtk_separator_tool_item_set_draw(GtkSeparatorToolItem* item, int draw);

	// gtk.Settings

	GType gtk_settings_get_type();
	GtkSettings* gtk_settings_get_default();
	GtkSettings* gtk_settings_get_for_screen(GdkScreen* screen);
	void gtk_settings_install_property(GParamSpec* pspec);
	void gtk_settings_install_property_parser(GParamSpec* pspec, GtkRcPropertyParser parser);
	void gtk_settings_reset_property(GtkSettings* settings, const(char)* name);
	void gtk_settings_set_double_property(GtkSettings* settings, const(char)* name, double vDouble, const(char)* origin);
	void gtk_settings_set_long_property(GtkSettings* settings, const(char)* name, glong vLong, const(char)* origin);
	void gtk_settings_set_property_value(GtkSettings* settings, const(char)* name, GtkSettingsValue* svalue);
	void gtk_settings_set_string_property(GtkSettings* settings, const(char)* name, const(char)* vString, const(char)* origin);

	// gtk.ShortcutLabel

	GType gtk_shortcut_label_get_type();
	GtkWidget* gtk_shortcut_label_new(const(char)* accelerator);
	const(char)* gtk_shortcut_label_get_accelerator(GtkShortcutLabel* self);
	const(char)* gtk_shortcut_label_get_disabled_text(GtkShortcutLabel* self);
	void gtk_shortcut_label_set_accelerator(GtkShortcutLabel* self, const(char)* accelerator);
	void gtk_shortcut_label_set_disabled_text(GtkShortcutLabel* self, const(char)* disabledText);

	// gtk.ShortcutsGroup

	GType gtk_shortcuts_group_get_type();

	// gtk.ShortcutsSection

	GType gtk_shortcuts_section_get_type();

	// gtk.ShortcutsShortcut

	GType gtk_shortcuts_shortcut_get_type();

	// gtk.ShortcutsWindow

	GType gtk_shortcuts_window_get_type();

	// gtk.SizeGroup

	GType gtk_size_group_get_type();
	GtkSizeGroup* gtk_size_group_new(GtkSizeGroupMode mode);
	void gtk_size_group_add_widget(GtkSizeGroup* sizeGroup, GtkWidget* widget);
	int gtk_size_group_get_ignore_hidden(GtkSizeGroup* sizeGroup);
	GtkSizeGroupMode gtk_size_group_get_mode(GtkSizeGroup* sizeGroup);
	GSList* gtk_size_group_get_widgets(GtkSizeGroup* sizeGroup);
	void gtk_size_group_remove_widget(GtkSizeGroup* sizeGroup, GtkWidget* widget);
	void gtk_size_group_set_ignore_hidden(GtkSizeGroup* sizeGroup, int ignoreHidden);
	void gtk_size_group_set_mode(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode);

	// gtk.Socket

	GType gtk_socket_get_type();
	GtkWidget* gtk_socket_new();
	void gtk_socket_add_id(GtkSocket* socket, ulong window);
	ulong gtk_socket_get_id(GtkSocket* socket);
	GdkWindow* gtk_socket_get_plug_window(GtkSocket* socket);

	// gtk.SpinButton

	GType gtk_spin_button_get_type();
	GtkWidget* gtk_spin_button_new(GtkAdjustment* adjustment, double climbRate, uint digits);
	GtkWidget* gtk_spin_button_new_with_range(double min, double max, double step);
	void gtk_spin_button_configure(GtkSpinButton* spinButton, GtkAdjustment* adjustment, double climbRate, uint digits);
	GtkAdjustment* gtk_spin_button_get_adjustment(GtkSpinButton* spinButton);
	uint gtk_spin_button_get_digits(GtkSpinButton* spinButton);
	void gtk_spin_button_get_increments(GtkSpinButton* spinButton, double* step, double* page);
	int gtk_spin_button_get_numeric(GtkSpinButton* spinButton);
	void gtk_spin_button_get_range(GtkSpinButton* spinButton, double* min, double* max);
	int gtk_spin_button_get_snap_to_ticks(GtkSpinButton* spinButton);
	GtkSpinButtonUpdatePolicy gtk_spin_button_get_update_policy(GtkSpinButton* spinButton);
	double gtk_spin_button_get_value(GtkSpinButton* spinButton);
	int gtk_spin_button_get_value_as_int(GtkSpinButton* spinButton);
	int gtk_spin_button_get_wrap(GtkSpinButton* spinButton);
	void gtk_spin_button_set_adjustment(GtkSpinButton* spinButton, GtkAdjustment* adjustment);
	void gtk_spin_button_set_digits(GtkSpinButton* spinButton, uint digits);
	void gtk_spin_button_set_increments(GtkSpinButton* spinButton, double step, double page);
	void gtk_spin_button_set_numeric(GtkSpinButton* spinButton, int numeric);
	void gtk_spin_button_set_range(GtkSpinButton* spinButton, double min, double max);
	void gtk_spin_button_set_snap_to_ticks(GtkSpinButton* spinButton, int snapToTicks);
	void gtk_spin_button_set_update_policy(GtkSpinButton* spinButton, GtkSpinButtonUpdatePolicy policy);
	void gtk_spin_button_set_value(GtkSpinButton* spinButton, double value);
	void gtk_spin_button_set_wrap(GtkSpinButton* spinButton, int wrap);
	void gtk_spin_button_spin(GtkSpinButton* spinButton, GtkSpinType direction, double increment);
	void gtk_spin_button_update(GtkSpinButton* spinButton);

	// gtk.SpinButtonAccessible

	GType gtk_spin_button_accessible_get_type();

	// gtk.Spinner

	GType gtk_spinner_get_type();
	GtkWidget* gtk_spinner_new();
	void gtk_spinner_start(GtkSpinner* spinner);
	void gtk_spinner_stop(GtkSpinner* spinner);

	// gtk.SpinnerAccessible

	GType gtk_spinner_accessible_get_type();

	// gtk.Stack

	GType gtk_stack_get_type();
	GtkWidget* gtk_stack_new();
	void gtk_stack_add_named(GtkStack* stack, GtkWidget* child, const(char)* name);
	void gtk_stack_add_titled(GtkStack* stack, GtkWidget* child, const(char)* name, const(char)* title);
	GtkWidget* gtk_stack_get_child_by_name(GtkStack* stack, const(char)* name);
	int gtk_stack_get_hhomogeneous(GtkStack* stack);
	int gtk_stack_get_homogeneous(GtkStack* stack);
	int gtk_stack_get_interpolate_size(GtkStack* stack);
	uint gtk_stack_get_transition_duration(GtkStack* stack);
	int gtk_stack_get_transition_running(GtkStack* stack);
	GtkStackTransitionType gtk_stack_get_transition_type(GtkStack* stack);
	int gtk_stack_get_vhomogeneous(GtkStack* stack);
	GtkWidget* gtk_stack_get_visible_child(GtkStack* stack);
	const(char)* gtk_stack_get_visible_child_name(GtkStack* stack);
	void gtk_stack_set_hhomogeneous(GtkStack* stack, int hhomogeneous);
	void gtk_stack_set_homogeneous(GtkStack* stack, int homogeneous);
	void gtk_stack_set_interpolate_size(GtkStack* stack, int interpolateSize);
	void gtk_stack_set_transition_duration(GtkStack* stack, uint duration);
	void gtk_stack_set_transition_type(GtkStack* stack, GtkStackTransitionType transition);
	void gtk_stack_set_vhomogeneous(GtkStack* stack, int vhomogeneous);
	void gtk_stack_set_visible_child(GtkStack* stack, GtkWidget* child);
	void gtk_stack_set_visible_child_full(GtkStack* stack, const(char)* name, GtkStackTransitionType transition);
	void gtk_stack_set_visible_child_name(GtkStack* stack, const(char)* name);

	// gtk.StackAccessible

	GType gtk_stack_accessible_get_type();

	// gtk.StackSidebar

	GType gtk_stack_sidebar_get_type();
	GtkWidget* gtk_stack_sidebar_new();
	GtkStack* gtk_stack_sidebar_get_stack(GtkStackSidebar* sidebar);
	void gtk_stack_sidebar_set_stack(GtkStackSidebar* sidebar, GtkStack* stack);

	// gtk.StackSwitcher

	GType gtk_stack_switcher_get_type();
	GtkWidget* gtk_stack_switcher_new();
	GtkStack* gtk_stack_switcher_get_stack(GtkStackSwitcher* switcher);
	void gtk_stack_switcher_set_stack(GtkStackSwitcher* switcher, GtkStack* stack);

	// gtk.StatusIcon

	GType gtk_status_icon_get_type();
	GtkStatusIcon* gtk_status_icon_new();
	GtkStatusIcon* gtk_status_icon_new_from_file(char* filename);
	GtkStatusIcon* gtk_status_icon_new_from_gicon(GIcon* icon);
	GtkStatusIcon* gtk_status_icon_new_from_icon_name(const(char)* iconName);
	GtkStatusIcon* gtk_status_icon_new_from_pixbuf(GdkPixbuf* pixbuf);
	GtkStatusIcon* gtk_status_icon_new_from_stock(const(char)* stockId);
	void gtk_status_icon_position_menu(GtkMenu* menu, int* x, int* y, int* pushIn, void* userData);
	int gtk_status_icon_get_geometry(GtkStatusIcon* statusIcon, GdkScreen** screen, GdkRectangle* area, GtkOrientation* orientation);
	GIcon* gtk_status_icon_get_gicon(GtkStatusIcon* statusIcon);
	int gtk_status_icon_get_has_tooltip(GtkStatusIcon* statusIcon);
	const(char)* gtk_status_icon_get_icon_name(GtkStatusIcon* statusIcon);
	GdkPixbuf* gtk_status_icon_get_pixbuf(GtkStatusIcon* statusIcon);
	GdkScreen* gtk_status_icon_get_screen(GtkStatusIcon* statusIcon);
	int gtk_status_icon_get_size(GtkStatusIcon* statusIcon);
	const(char)* gtk_status_icon_get_stock(GtkStatusIcon* statusIcon);
	GtkImageType gtk_status_icon_get_storage_type(GtkStatusIcon* statusIcon);
	const(char)* gtk_status_icon_get_title(GtkStatusIcon* statusIcon);
	char* gtk_status_icon_get_tooltip_markup(GtkStatusIcon* statusIcon);
	char* gtk_status_icon_get_tooltip_text(GtkStatusIcon* statusIcon);
	int gtk_status_icon_get_visible(GtkStatusIcon* statusIcon);
	uint gtk_status_icon_get_x11_window_id(GtkStatusIcon* statusIcon);
	int gtk_status_icon_is_embedded(GtkStatusIcon* statusIcon);
	void gtk_status_icon_set_from_file(GtkStatusIcon* statusIcon, char* filename);
	void gtk_status_icon_set_from_gicon(GtkStatusIcon* statusIcon, GIcon* icon);
	void gtk_status_icon_set_from_icon_name(GtkStatusIcon* statusIcon, const(char)* iconName);
	void gtk_status_icon_set_from_pixbuf(GtkStatusIcon* statusIcon, GdkPixbuf* pixbuf);
	void gtk_status_icon_set_from_stock(GtkStatusIcon* statusIcon, const(char)* stockId);
	void gtk_status_icon_set_has_tooltip(GtkStatusIcon* statusIcon, int hasTooltip);
	void gtk_status_icon_set_name(GtkStatusIcon* statusIcon, const(char)* name);
	void gtk_status_icon_set_screen(GtkStatusIcon* statusIcon, GdkScreen* screen);
	void gtk_status_icon_set_title(GtkStatusIcon* statusIcon, const(char)* title);
	void gtk_status_icon_set_tooltip_markup(GtkStatusIcon* statusIcon, const(char)* markup);
	void gtk_status_icon_set_tooltip_text(GtkStatusIcon* statusIcon, const(char)* text);
	void gtk_status_icon_set_visible(GtkStatusIcon* statusIcon, int visible);

	// gtk.Statusbar

	GType gtk_statusbar_get_type();
	GtkWidget* gtk_statusbar_new();
	uint gtk_statusbar_get_context_id(GtkStatusbar* statusbar, const(char)* contextDescription);
	GtkWidget* gtk_statusbar_get_message_area(GtkStatusbar* statusbar);
	void gtk_statusbar_pop(GtkStatusbar* statusbar, uint contextId);
	uint gtk_statusbar_push(GtkStatusbar* statusbar, uint contextId, const(char)* text);
	void gtk_statusbar_remove(GtkStatusbar* statusbar, uint contextId, uint messageId);
	void gtk_statusbar_remove_all(GtkStatusbar* statusbar, uint contextId);

	// gtk.StatusbarAccessible

	GType gtk_statusbar_accessible_get_type();

	// gtk.StockItem

	GtkStockItem* gtk_stock_item_copy(GtkStockItem* item);
	void gtk_stock_item_free(GtkStockItem* item);
	void gtk_stock_add(GtkStockItem* items, uint nItems);
	void gtk_stock_add_static(GtkStockItem* items, uint nItems);
	GSList* gtk_stock_list_ids();
	int gtk_stock_lookup(const(char)* stockId, GtkStockItem* item);
	void gtk_stock_set_translate_func(const(char)* domain, GtkTranslateFunc func, void* data, GDestroyNotify notify);

	// gtk.Style

	GType gtk_style_get_type();
	GtkStyle* gtk_style_new();
	void gtk_style_apply_default_background(GtkStyle* style, cairo_t* cr, GdkWindow* window, GtkStateType stateType, int x, int y, int width, int height);
	GtkStyle* gtk_style_attach(GtkStyle* style, GdkWindow* window);
	GtkStyle* gtk_style_copy(GtkStyle* style);
	void gtk_style_detach(GtkStyle* style);
	void gtk_style_get(GtkStyle* style, GType widgetType, const(char)* firstPropertyName, ... );
	void gtk_style_get_style_property(GtkStyle* style, GType widgetType, const(char)* propertyName, GValue* value);
	void gtk_style_get_valist(GtkStyle* style, GType widgetType, const(char)* firstPropertyName, void* varArgs);
	int gtk_style_has_context(GtkStyle* style);
	int gtk_style_lookup_color(GtkStyle* style, const(char)* colorName, GdkColor* color);
	GtkIconSet* gtk_style_lookup_icon_set(GtkStyle* style, const(char)* stockId);
	GdkPixbuf* gtk_style_render_icon(GtkStyle* style, GtkIconSource* source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, const(char)* detail);
	void gtk_style_set_background(GtkStyle* style, GdkWindow* window, GtkStateType stateType);
	void gtk_paint_arrow(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, GtkArrowType arrowType, int fill, int x, int y, int width, int height);
	void gtk_paint_box(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_box_gap(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth);
	void gtk_paint_check(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_diamond(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_expander(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x, int y, GtkExpanderStyle expanderStyle);
	void gtk_paint_extension(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide);
	void gtk_paint_flat_box(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_focus(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_handle(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkOrientation orientation);
	void gtk_paint_hline(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int x1, int x2, int y);
	void gtk_paint_layout(GtkStyle* style, cairo_t* cr, GtkStateType stateType, int useText, GtkWidget* widget, const(char)* detail, int x, int y, PangoLayout* layout);
	void gtk_paint_option(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_resize_grip(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, GdkWindowEdge edge, int x, int y, int width, int height);
	void gtk_paint_shadow(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_shadow_gap(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkPositionType gapSide, int gapX, int gapWidth);
	void gtk_paint_slider(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height, GtkOrientation orientation);
	void gtk_paint_spinner(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, uint step, int x, int y, int width, int height);
	void gtk_paint_tab(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, const(char)* detail, int x, int y, int width, int height);
	void gtk_paint_vline(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, const(char)* detail, int y1, int y2, int x);

	// gtk.StyleContext

	GType gtk_style_context_get_type();
	GtkStyleContext* gtk_style_context_new();
	void gtk_style_context_add_provider_for_screen(GdkScreen* screen, GtkStyleProvider* provider, uint priority);
	void gtk_style_context_remove_provider_for_screen(GdkScreen* screen, GtkStyleProvider* provider);
	void gtk_style_context_reset_widgets(GdkScreen* screen);
	void gtk_style_context_add_class(GtkStyleContext* context, const(char)* className);
	void gtk_style_context_add_provider(GtkStyleContext* context, GtkStyleProvider* provider, uint priority);
	void gtk_style_context_add_region(GtkStyleContext* context, const(char)* regionName, GtkRegionFlags flags);
	void gtk_style_context_cancel_animations(GtkStyleContext* context, void* regionId);
	void gtk_style_context_get(GtkStyleContext* context, GtkStateFlags state, ... );
	void gtk_style_context_get_background_color(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color);
	void gtk_style_context_get_border(GtkStyleContext* context, GtkStateFlags state, GtkBorder* border);
	void gtk_style_context_get_border_color(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color);
	void gtk_style_context_get_color(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color);
	GtkTextDirection gtk_style_context_get_direction(GtkStyleContext* context);
	PangoFontDescription* gtk_style_context_get_font(GtkStyleContext* context, GtkStateFlags state);
	GdkFrameClock* gtk_style_context_get_frame_clock(GtkStyleContext* context);
	GtkJunctionSides gtk_style_context_get_junction_sides(GtkStyleContext* context);
	void gtk_style_context_get_margin(GtkStyleContext* context, GtkStateFlags state, GtkBorder* margin);
	void gtk_style_context_get_padding(GtkStyleContext* context, GtkStateFlags state, GtkBorder* padding);
	GtkStyleContext* gtk_style_context_get_parent(GtkStyleContext* context);
	GtkWidgetPath* gtk_style_context_get_path(GtkStyleContext* context);
	void gtk_style_context_get_property(GtkStyleContext* context, const(char)* property, GtkStateFlags state, GValue* value);
	int gtk_style_context_get_scale(GtkStyleContext* context);
	GdkScreen* gtk_style_context_get_screen(GtkStyleContext* context);
	GtkCssSection* gtk_style_context_get_section(GtkStyleContext* context, const(char)* property);
	GtkStateFlags gtk_style_context_get_state(GtkStyleContext* context);
	void gtk_style_context_get_style(GtkStyleContext* context, ... );
	void gtk_style_context_get_style_property(GtkStyleContext* context, const(char)* propertyName, GValue* value);
	void gtk_style_context_get_style_valist(GtkStyleContext* context, void* args);
	void gtk_style_context_get_valist(GtkStyleContext* context, GtkStateFlags state, void* args);
	int gtk_style_context_has_class(GtkStyleContext* context, const(char)* className);
	int gtk_style_context_has_region(GtkStyleContext* context, const(char)* regionName, GtkRegionFlags* flagsReturn);
	void gtk_style_context_invalidate(GtkStyleContext* context);
	GList* gtk_style_context_list_classes(GtkStyleContext* context);
	GList* gtk_style_context_list_regions(GtkStyleContext* context);
	int gtk_style_context_lookup_color(GtkStyleContext* context, const(char)* colorName, GdkRGBA* color);
	GtkIconSet* gtk_style_context_lookup_icon_set(GtkStyleContext* context, const(char)* stockId);
	void gtk_style_context_notify_state_change(GtkStyleContext* context, GdkWindow* window, void* regionId, GtkStateType state, int stateValue);
	void gtk_style_context_pop_animatable_region(GtkStyleContext* context);
	void gtk_style_context_push_animatable_region(GtkStyleContext* context, void* regionId);
	void gtk_style_context_remove_class(GtkStyleContext* context, const(char)* className);
	void gtk_style_context_remove_provider(GtkStyleContext* context, GtkStyleProvider* provider);
	void gtk_style_context_remove_region(GtkStyleContext* context, const(char)* regionName);
	void gtk_style_context_restore(GtkStyleContext* context);
	void gtk_style_context_save(GtkStyleContext* context);
	void gtk_style_context_scroll_animations(GtkStyleContext* context, GdkWindow* window, int dx, int dy);
	void gtk_style_context_set_background(GtkStyleContext* context, GdkWindow* window);
	void gtk_style_context_set_direction(GtkStyleContext* context, GtkTextDirection direction);
	void gtk_style_context_set_frame_clock(GtkStyleContext* context, GdkFrameClock* frameClock);
	void gtk_style_context_set_junction_sides(GtkStyleContext* context, GtkJunctionSides sides);
	void gtk_style_context_set_parent(GtkStyleContext* context, GtkStyleContext* parent);
	void gtk_style_context_set_path(GtkStyleContext* context, GtkWidgetPath* path);
	void gtk_style_context_set_scale(GtkStyleContext* context, int scale);
	void gtk_style_context_set_screen(GtkStyleContext* context, GdkScreen* screen);
	void gtk_style_context_set_state(GtkStyleContext* context, GtkStateFlags flags);
	int gtk_style_context_state_is_running(GtkStyleContext* context, GtkStateType state, double* progress);
	char* gtk_style_context_to_string(GtkStyleContext* context, GtkStyleContextPrintFlags flags);
	void gtk_render_activity(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_arrow(GtkStyleContext* context, cairo_t* cr, double angle, double x, double y, double size);
	void gtk_render_background(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_background_get_clip(GtkStyleContext* context, double x, double y, double width, double height, GdkRectangle* outClip);
	void gtk_render_check(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_expander(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_extension(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide);
	void gtk_render_focus(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_frame(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_frame_gap(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height, GtkPositionType gapSide, double xy0Gap, double xy1Gap);
	void gtk_render_handle(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_icon(GtkStyleContext* context, cairo_t* cr, GdkPixbuf* pixbuf, double x, double y);
	GdkPixbuf* gtk_render_icon_pixbuf(GtkStyleContext* context, GtkIconSource* source, GtkIconSize size);
	void gtk_render_icon_surface(GtkStyleContext* context, cairo_t* cr, cairo_surface_t* surface, double x, double y);
	void gtk_render_insertion_cursor(GtkStyleContext* context, cairo_t* cr, double x, double y, PangoLayout* layout, int index, PangoDirection direction);
	void gtk_render_layout(GtkStyleContext* context, cairo_t* cr, double x, double y, PangoLayout* layout);
	void gtk_render_line(GtkStyleContext* context, cairo_t* cr, double x0, double y0, double x1, double y1);
	void gtk_render_option(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height);
	void gtk_render_slider(GtkStyleContext* context, cairo_t* cr, double x, double y, double width, double height, GtkOrientation orientation);

	// gtk.StyleProperties

	GType gtk_style_properties_get_type();
	GtkStyleProperties* gtk_style_properties_new();
	int gtk_style_properties_lookup_property(const(char)* propertyName, GtkStylePropertyParser* parseFunc, GParamSpec** pspec);
	void gtk_style_properties_register_property(GtkStylePropertyParser parseFunc, GParamSpec* pspec);
	void gtk_style_properties_clear(GtkStyleProperties* props);
	void gtk_style_properties_get(GtkStyleProperties* props, GtkStateFlags state, ... );
	int gtk_style_properties_get_property(GtkStyleProperties* props, const(char)* property, GtkStateFlags state, GValue* value);
	void gtk_style_properties_get_valist(GtkStyleProperties* props, GtkStateFlags state, void* args);
	GtkSymbolicColor* gtk_style_properties_lookup_color(GtkStyleProperties* props, const(char)* name);
	void gtk_style_properties_map_color(GtkStyleProperties* props, const(char)* name, GtkSymbolicColor* color);
	void gtk_style_properties_merge(GtkStyleProperties* props, GtkStyleProperties* propsToMerge, int replace);
	void gtk_style_properties_set(GtkStyleProperties* props, GtkStateFlags state, ... );
	void gtk_style_properties_set_property(GtkStyleProperties* props, const(char)* property, GtkStateFlags state, GValue* value);
	void gtk_style_properties_set_valist(GtkStyleProperties* props, GtkStateFlags state, void* args);
	void gtk_style_properties_unset_property(GtkStyleProperties* props, const(char)* property, GtkStateFlags state);

	// gtk.StyleProvider

	GType gtk_style_provider_get_type();
	GtkIconFactory* gtk_style_provider_get_icon_factory(GtkStyleProvider* provider, GtkWidgetPath* path);
	GtkStyleProperties* gtk_style_provider_get_style(GtkStyleProvider* provider, GtkWidgetPath* path);
	int gtk_style_provider_get_style_property(GtkStyleProvider* provider, GtkWidgetPath* path, GtkStateFlags state, GParamSpec* pspec, GValue* value);

	// gtk.Switch

	GType gtk_switch_get_type();
	GtkWidget* gtk_switch_new();
	int gtk_switch_get_active(GtkSwitch* sw);
	int gtk_switch_get_state(GtkSwitch* sw);
	void gtk_switch_set_active(GtkSwitch* sw, int isActive);
	void gtk_switch_set_state(GtkSwitch* sw, int state);

	// gtk.SwitchAccessible

	GType gtk_switch_accessible_get_type();

	// gtk.SymbolicColor

	GType gtk_symbolic_color_get_type();
	GtkSymbolicColor* gtk_symbolic_color_new_alpha(GtkSymbolicColor* color, double factor);
	GtkSymbolicColor* gtk_symbolic_color_new_literal(GdkRGBA* color);
	GtkSymbolicColor* gtk_symbolic_color_new_mix(GtkSymbolicColor* color1, GtkSymbolicColor* color2, double factor);
	GtkSymbolicColor* gtk_symbolic_color_new_name(const(char)* name);
	GtkSymbolicColor* gtk_symbolic_color_new_shade(GtkSymbolicColor* color, double factor);
	GtkSymbolicColor* gtk_symbolic_color_new_win32(const(char)* themeClass, int id);
	GtkSymbolicColor* gtk_symbolic_color_ref(GtkSymbolicColor* color);
	int gtk_symbolic_color_resolve(GtkSymbolicColor* color, GtkStyleProperties* props, GdkRGBA* resolvedColor);
	char* gtk_symbolic_color_to_string(GtkSymbolicColor* color);
	void gtk_symbolic_color_unref(GtkSymbolicColor* color);

	// gtk.Table

	GType gtk_table_get_type();
	GtkWidget* gtk_table_new(uint rows, uint columns, int homogeneous);
	void gtk_table_attach(GtkTable* table, GtkWidget* child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, uint xpadding, uint ypadding);
	void gtk_table_attach_defaults(GtkTable* table, GtkWidget* widget, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach);
	uint gtk_table_get_col_spacing(GtkTable* table, uint column);
	uint gtk_table_get_default_col_spacing(GtkTable* table);
	uint gtk_table_get_default_row_spacing(GtkTable* table);
	int gtk_table_get_homogeneous(GtkTable* table);
	uint gtk_table_get_row_spacing(GtkTable* table, uint row);
	void gtk_table_get_size(GtkTable* table, uint* rows, uint* columns);
	void gtk_table_resize(GtkTable* table, uint rows, uint columns);
	void gtk_table_set_col_spacing(GtkTable* table, uint column, uint spacing);
	void gtk_table_set_col_spacings(GtkTable* table, uint spacing);
	void gtk_table_set_homogeneous(GtkTable* table, int homogeneous);
	void gtk_table_set_row_spacing(GtkTable* table, uint row, uint spacing);
	void gtk_table_set_row_spacings(GtkTable* table, uint spacing);

	// gtk.TargetEntry

	GType gtk_target_entry_get_type();
	GtkTargetEntry* gtk_target_entry_new(const(char)* target, uint flags, uint info);
	GtkTargetEntry* gtk_target_entry_copy(GtkTargetEntry* data);
	void gtk_target_entry_free(GtkTargetEntry* data);

	// gtk.TargetList

	GType gtk_target_list_get_type();
	GtkTargetList* gtk_target_list_new(GtkTargetEntry* targets, uint ntargets);
	void gtk_target_list_add(GtkTargetList* list, GdkAtom target, uint flags, uint info);
	void gtk_target_list_add_image_targets(GtkTargetList* list, uint info, int writable);
	void gtk_target_list_add_rich_text_targets(GtkTargetList* list, uint info, int deserializable, GtkTextBuffer* buffer);
	void gtk_target_list_add_table(GtkTargetList* list, GtkTargetEntry* targets, uint ntargets);
	void gtk_target_list_add_text_targets(GtkTargetList* list, uint info);
	void gtk_target_list_add_uri_targets(GtkTargetList* list, uint info);
	int gtk_target_list_find(GtkTargetList* list, GdkAtom target, uint* info);
	GtkTargetList* gtk_target_list_ref(GtkTargetList* list);
	void gtk_target_list_remove(GtkTargetList* list, GdkAtom target);
	void gtk_target_list_unref(GtkTargetList* list);
	void gtk_target_table_free(GtkTargetEntry* targets, int nTargets);
	GtkTargetEntry* gtk_target_table_new_from_list(GtkTargetList* list, int* nTargets);
	int gtk_targets_include_image(GdkAtom* targets, int nTargets, int writable);
	int gtk_targets_include_rich_text(GdkAtom* targets, int nTargets, GtkTextBuffer* buffer);
	int gtk_targets_include_text(GdkAtom* targets, int nTargets);
	int gtk_targets_include_uri(GdkAtom* targets, int nTargets);

	// gtk.TearoffMenuItem

	GType gtk_tearoff_menu_item_get_type();
	GtkWidget* gtk_tearoff_menu_item_new();

	// gtk.TextAttributes

	GType gtk_text_attributes_get_type();
	GtkTextAttributes* gtk_text_attributes_new();
	GtkTextAttributes* gtk_text_attributes_copy(GtkTextAttributes* src);
	void gtk_text_attributes_copy_values(GtkTextAttributes* src, GtkTextAttributes* dest);
	GtkTextAttributes* gtk_text_attributes_ref(GtkTextAttributes* values);
	void gtk_text_attributes_unref(GtkTextAttributes* values);

	// gtk.TextBuffer

	GType gtk_text_buffer_get_type();
	GtkTextBuffer* gtk_text_buffer_new(GtkTextTagTable* table);
	void gtk_text_buffer_add_mark(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where);
	void gtk_text_buffer_add_selection_clipboard(GtkTextBuffer* buffer, GtkClipboard* clipboard);
	void gtk_text_buffer_apply_tag(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_apply_tag_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_backspace(GtkTextBuffer* buffer, GtkTextIter* iter, int interactive, int defaultEditable);
	void gtk_text_buffer_begin_user_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_copy_clipboard(GtkTextBuffer* buffer, GtkClipboard* clipboard);
	GtkTextChildAnchor* gtk_text_buffer_create_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter);
	GtkTextMark* gtk_text_buffer_create_mark(GtkTextBuffer* buffer, const(char)* markName, GtkTextIter* where, int leftGravity);
	GtkTextTag* gtk_text_buffer_create_tag(GtkTextBuffer* buffer, const(char)* tagName, const(char)* firstPropertyName, ... );
	void gtk_text_buffer_cut_clipboard(GtkTextBuffer* buffer, GtkClipboard* clipboard, int defaultEditable);
	void gtk_text_buffer_delete(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_delete_interactive(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, int defaultEditable);
	void gtk_text_buffer_delete_mark(GtkTextBuffer* buffer, GtkTextMark* mark);
	void gtk_text_buffer_delete_mark_by_name(GtkTextBuffer* buffer, const(char)* name);
	int gtk_text_buffer_delete_selection(GtkTextBuffer* buffer, int interactive, int defaultEditable);
	int gtk_text_buffer_deserialize(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* iter, ubyte* data, size_t length, GError** err);
	int gtk_text_buffer_deserialize_get_can_create_tags(GtkTextBuffer* buffer, GdkAtom format);
	void gtk_text_buffer_deserialize_set_can_create_tags(GtkTextBuffer* buffer, GdkAtom format, int canCreateTags);
	void gtk_text_buffer_end_user_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_get_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_get_char_count(GtkTextBuffer* buffer);
	GtkTargetList* gtk_text_buffer_get_copy_target_list(GtkTextBuffer* buffer);
	GdkAtom* gtk_text_buffer_get_deserialize_formats(GtkTextBuffer* buffer, int* nFormats);
	void gtk_text_buffer_get_end_iter(GtkTextBuffer* buffer, GtkTextIter* iter);
	int gtk_text_buffer_get_has_selection(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_insert(GtkTextBuffer* buffer);
	void gtk_text_buffer_get_iter_at_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor);
	void gtk_text_buffer_get_iter_at_line(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber);
	void gtk_text_buffer_get_iter_at_line_index(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int byteIndex);
	void gtk_text_buffer_get_iter_at_line_offset(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int charOffset);
	void gtk_text_buffer_get_iter_at_mark(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark);
	void gtk_text_buffer_get_iter_at_offset(GtkTextBuffer* buffer, GtkTextIter* iter, int charOffset);
	int gtk_text_buffer_get_line_count(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_mark(GtkTextBuffer* buffer, const(char)* name);
	int gtk_text_buffer_get_modified(GtkTextBuffer* buffer);
	GtkTargetList* gtk_text_buffer_get_paste_target_list(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_selection_bound(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_selection_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	GdkAtom* gtk_text_buffer_get_serialize_formats(GtkTextBuffer* buffer, int* nFormats);
	char* gtk_text_buffer_get_slice(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, int includeHiddenChars);
	void gtk_text_buffer_get_start_iter(GtkTextBuffer* buffer, GtkTextIter* iter);
	GtkTextTagTable* gtk_text_buffer_get_tag_table(GtkTextBuffer* buffer);
	char* gtk_text_buffer_get_text(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, int includeHiddenChars);
	void gtk_text_buffer_insert(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len);
	void gtk_text_buffer_insert_at_cursor(GtkTextBuffer* buffer, const(char)* text, int len);
	void gtk_text_buffer_insert_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor);
	int gtk_text_buffer_insert_interactive(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, int defaultEditable);
	int gtk_text_buffer_insert_interactive_at_cursor(GtkTextBuffer* buffer, const(char)* text, int len, int defaultEditable);
	void gtk_text_buffer_insert_markup(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* markup, int len);
	void gtk_text_buffer_insert_pixbuf(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPixbuf* pixbuf);
	void gtk_text_buffer_insert_range(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_insert_range_interactive(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, int defaultEditable);
	void gtk_text_buffer_insert_with_tags(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, GtkTextTag* firstTag, ... );
	void gtk_text_buffer_insert_with_tags_by_name(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, const(char)* firstTagName, ... );
	void gtk_text_buffer_move_mark(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where);
	void gtk_text_buffer_move_mark_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* where);
	void gtk_text_buffer_paste_clipboard(GtkTextBuffer* buffer, GtkClipboard* clipboard, GtkTextIter* overrideLocation, int defaultEditable);
	void gtk_text_buffer_place_cursor(GtkTextBuffer* buffer, GtkTextIter* where);
	GdkAtom gtk_text_buffer_register_deserialize_format(GtkTextBuffer* buffer, const(char)* mimeType, GtkTextBufferDeserializeFunc function_, void* userData, GDestroyNotify userDataDestroy);
	GdkAtom gtk_text_buffer_register_deserialize_tagset(GtkTextBuffer* buffer, const(char)* tagsetName);
	GdkAtom gtk_text_buffer_register_serialize_format(GtkTextBuffer* buffer, const(char)* mimeType, GtkTextBufferSerializeFunc function_, void* userData, GDestroyNotify userDataDestroy);
	GdkAtom gtk_text_buffer_register_serialize_tagset(GtkTextBuffer* buffer, const(char)* tagsetName);
	void gtk_text_buffer_remove_all_tags(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_remove_selection_clipboard(GtkTextBuffer* buffer, GtkClipboard* clipboard);
	void gtk_text_buffer_remove_tag(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_remove_tag_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_select_range(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound);
	ubyte* gtk_text_buffer_serialize(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* start, GtkTextIter* end, size_t* length);
	void gtk_text_buffer_set_modified(GtkTextBuffer* buffer, int setting);
	void gtk_text_buffer_set_text(GtkTextBuffer* buffer, const(char)* text, int len);
	void gtk_text_buffer_unregister_deserialize_format(GtkTextBuffer* buffer, GdkAtom format);
	void gtk_text_buffer_unregister_serialize_format(GtkTextBuffer* buffer, GdkAtom format);

	// gtk.TextCellAccessible

	GType gtk_text_cell_accessible_get_type();

	// gtk.TextChildAnchor

	GType gtk_text_child_anchor_get_type();
	GtkTextChildAnchor* gtk_text_child_anchor_new();
	int gtk_text_child_anchor_get_deleted(GtkTextChildAnchor* anchor);
	GList* gtk_text_child_anchor_get_widgets(GtkTextChildAnchor* anchor);

	// gtk.TextIter

	GType gtk_text_iter_get_type();
	void gtk_text_iter_assign(GtkTextIter* iter, GtkTextIter* other);
	int gtk_text_iter_backward_char(GtkTextIter* iter);
	int gtk_text_iter_backward_chars(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_cursor_position(GtkTextIter* iter);
	int gtk_text_iter_backward_cursor_positions(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_find_char(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit);
	int gtk_text_iter_backward_line(GtkTextIter* iter);
	int gtk_text_iter_backward_lines(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_search(GtkTextIter* iter, const(char)* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit);
	int gtk_text_iter_backward_sentence_start(GtkTextIter* iter);
	int gtk_text_iter_backward_sentence_starts(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_to_tag_toggle(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_backward_visible_cursor_position(GtkTextIter* iter);
	int gtk_text_iter_backward_visible_cursor_positions(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_visible_line(GtkTextIter* iter);
	int gtk_text_iter_backward_visible_lines(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_visible_word_start(GtkTextIter* iter);
	int gtk_text_iter_backward_visible_word_starts(GtkTextIter* iter, int count);
	int gtk_text_iter_backward_word_start(GtkTextIter* iter);
	int gtk_text_iter_backward_word_starts(GtkTextIter* iter, int count);
	int gtk_text_iter_begins_tag(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_can_insert(GtkTextIter* iter, int defaultEditability);
	int gtk_text_iter_compare(GtkTextIter* lhs, GtkTextIter* rhs);
	GtkTextIter* gtk_text_iter_copy(GtkTextIter* iter);
	int gtk_text_iter_editable(GtkTextIter* iter, int defaultSetting);
	int gtk_text_iter_ends_line(GtkTextIter* iter);
	int gtk_text_iter_ends_sentence(GtkTextIter* iter);
	int gtk_text_iter_ends_tag(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_ends_word(GtkTextIter* iter);
	int gtk_text_iter_equal(GtkTextIter* lhs, GtkTextIter* rhs);
	int gtk_text_iter_forward_char(GtkTextIter* iter);
	int gtk_text_iter_forward_chars(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_cursor_position(GtkTextIter* iter);
	int gtk_text_iter_forward_cursor_positions(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_find_char(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit);
	int gtk_text_iter_forward_line(GtkTextIter* iter);
	int gtk_text_iter_forward_lines(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_search(GtkTextIter* iter, const(char)* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit);
	int gtk_text_iter_forward_sentence_end(GtkTextIter* iter);
	int gtk_text_iter_forward_sentence_ends(GtkTextIter* iter, int count);
	void gtk_text_iter_forward_to_end(GtkTextIter* iter);
	int gtk_text_iter_forward_to_line_end(GtkTextIter* iter);
	int gtk_text_iter_forward_to_tag_toggle(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_forward_visible_cursor_position(GtkTextIter* iter);
	int gtk_text_iter_forward_visible_cursor_positions(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_visible_line(GtkTextIter* iter);
	int gtk_text_iter_forward_visible_lines(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_visible_word_end(GtkTextIter* iter);
	int gtk_text_iter_forward_visible_word_ends(GtkTextIter* iter, int count);
	int gtk_text_iter_forward_word_end(GtkTextIter* iter);
	int gtk_text_iter_forward_word_ends(GtkTextIter* iter, int count);
	void gtk_text_iter_free(GtkTextIter* iter);
	int gtk_text_iter_get_attributes(GtkTextIter* iter, GtkTextAttributes* values);
	GtkTextBuffer* gtk_text_iter_get_buffer(GtkTextIter* iter);
	int gtk_text_iter_get_bytes_in_line(GtkTextIter* iter);
	dchar gtk_text_iter_get_char(GtkTextIter* iter);
	int gtk_text_iter_get_chars_in_line(GtkTextIter* iter);
	GtkTextChildAnchor* gtk_text_iter_get_child_anchor(GtkTextIter* iter);
	PangoLanguage* gtk_text_iter_get_language(GtkTextIter* iter);
	int gtk_text_iter_get_line(GtkTextIter* iter);
	int gtk_text_iter_get_line_index(GtkTextIter* iter);
	int gtk_text_iter_get_line_offset(GtkTextIter* iter);
	GSList* gtk_text_iter_get_marks(GtkTextIter* iter);
	int gtk_text_iter_get_offset(GtkTextIter* iter);
	GdkPixbuf* gtk_text_iter_get_pixbuf(GtkTextIter* iter);
	char* gtk_text_iter_get_slice(GtkTextIter* start, GtkTextIter* end);
	GSList* gtk_text_iter_get_tags(GtkTextIter* iter);
	char* gtk_text_iter_get_text(GtkTextIter* start, GtkTextIter* end);
	GSList* gtk_text_iter_get_toggled_tags(GtkTextIter* iter, int toggledOn);
	int gtk_text_iter_get_visible_line_index(GtkTextIter* iter);
	int gtk_text_iter_get_visible_line_offset(GtkTextIter* iter);
	char* gtk_text_iter_get_visible_slice(GtkTextIter* start, GtkTextIter* end);
	char* gtk_text_iter_get_visible_text(GtkTextIter* start, GtkTextIter* end);
	int gtk_text_iter_has_tag(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_in_range(GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_iter_inside_sentence(GtkTextIter* iter);
	int gtk_text_iter_inside_word(GtkTextIter* iter);
	int gtk_text_iter_is_cursor_position(GtkTextIter* iter);
	int gtk_text_iter_is_end(GtkTextIter* iter);
	int gtk_text_iter_is_start(GtkTextIter* iter);
	void gtk_text_iter_order(GtkTextIter* first, GtkTextIter* second);
	void gtk_text_iter_set_line(GtkTextIter* iter, int lineNumber);
	void gtk_text_iter_set_line_index(GtkTextIter* iter, int byteOnLine);
	void gtk_text_iter_set_line_offset(GtkTextIter* iter, int charOnLine);
	void gtk_text_iter_set_offset(GtkTextIter* iter, int charOffset);
	void gtk_text_iter_set_visible_line_index(GtkTextIter* iter, int byteOnLine);
	void gtk_text_iter_set_visible_line_offset(GtkTextIter* iter, int charOnLine);
	int gtk_text_iter_starts_line(GtkTextIter* iter);
	int gtk_text_iter_starts_sentence(GtkTextIter* iter);
	int gtk_text_iter_starts_tag(GtkTextIter* iter, GtkTextTag* tag);
	int gtk_text_iter_starts_word(GtkTextIter* iter);
	int gtk_text_iter_toggles_tag(GtkTextIter* iter, GtkTextTag* tag);

	// gtk.TextMark

	GType gtk_text_mark_get_type();
	GtkTextMark* gtk_text_mark_new(const(char)* name, int leftGravity);
	GtkTextBuffer* gtk_text_mark_get_buffer(GtkTextMark* mark);
	int gtk_text_mark_get_deleted(GtkTextMark* mark);
	int gtk_text_mark_get_left_gravity(GtkTextMark* mark);
	const(char)* gtk_text_mark_get_name(GtkTextMark* mark);
	int gtk_text_mark_get_visible(GtkTextMark* mark);
	void gtk_text_mark_set_visible(GtkTextMark* mark, int setting);

	// gtk.TextTag

	GType gtk_text_tag_get_type();
	GtkTextTag* gtk_text_tag_new(const(char)* name);
	void gtk_text_tag_changed(GtkTextTag* tag, int sizeChanged);
	int gtk_text_tag_event(GtkTextTag* tag, GObject* eventObject, GdkEvent* event, GtkTextIter* iter);
	int gtk_text_tag_get_priority(GtkTextTag* tag);
	void gtk_text_tag_set_priority(GtkTextTag* tag, int priority);

	// gtk.TextTagTable

	GType gtk_text_tag_table_get_type();
	GtkTextTagTable* gtk_text_tag_table_new();
	int gtk_text_tag_table_add(GtkTextTagTable* table, GtkTextTag* tag);
	void gtk_text_tag_table_foreach(GtkTextTagTable* table, GtkTextTagTableForeach func, void* data);
	int gtk_text_tag_table_get_size(GtkTextTagTable* table);
	GtkTextTag* gtk_text_tag_table_lookup(GtkTextTagTable* table, const(char)* name);
	void gtk_text_tag_table_remove(GtkTextTagTable* table, GtkTextTag* tag);

	// gtk.TextView

	GType gtk_text_view_get_type();
	GtkWidget* gtk_text_view_new();
	GtkWidget* gtk_text_view_new_with_buffer(GtkTextBuffer* buffer);
	void gtk_text_view_add_child_at_anchor(GtkTextView* textView, GtkWidget* child, GtkTextChildAnchor* anchor);
	void gtk_text_view_add_child_in_window(GtkTextView* textView, GtkWidget* child, GtkTextWindowType whichWindow, int xpos, int ypos);
	int gtk_text_view_backward_display_line(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_backward_display_line_start(GtkTextView* textView, GtkTextIter* iter);
	void gtk_text_view_buffer_to_window_coords(GtkTextView* textView, GtkTextWindowType win, int bufferX, int bufferY, int* windowX, int* windowY);
	int gtk_text_view_forward_display_line(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_forward_display_line_end(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_get_accepts_tab(GtkTextView* textView);
	int gtk_text_view_get_border_window_size(GtkTextView* textView, GtkTextWindowType type);
	int gtk_text_view_get_bottom_margin(GtkTextView* textView);
	GtkTextBuffer* gtk_text_view_get_buffer(GtkTextView* textView);
	void gtk_text_view_get_cursor_locations(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* strong, GdkRectangle* weak);
	int gtk_text_view_get_cursor_visible(GtkTextView* textView);
	GtkTextAttributes* gtk_text_view_get_default_attributes(GtkTextView* textView);
	int gtk_text_view_get_editable(GtkTextView* textView);
	GtkAdjustment* gtk_text_view_get_hadjustment(GtkTextView* textView);
	int gtk_text_view_get_indent(GtkTextView* textView);
	GtkInputHints gtk_text_view_get_input_hints(GtkTextView* textView);
	GtkInputPurpose gtk_text_view_get_input_purpose(GtkTextView* textView);
	int gtk_text_view_get_iter_at_location(GtkTextView* textView, GtkTextIter* iter, int x, int y);
	int gtk_text_view_get_iter_at_position(GtkTextView* textView, GtkTextIter* iter, int* trailing, int x, int y);
	void gtk_text_view_get_iter_location(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* location);
	GtkJustification gtk_text_view_get_justification(GtkTextView* textView);
	int gtk_text_view_get_left_margin(GtkTextView* textView);
	void gtk_text_view_get_line_at_y(GtkTextView* textView, GtkTextIter* targetIter, int y, int* lineTop);
	void gtk_text_view_get_line_yrange(GtkTextView* textView, GtkTextIter* iter, int* y, int* height);
	int gtk_text_view_get_monospace(GtkTextView* textView);
	int gtk_text_view_get_overwrite(GtkTextView* textView);
	int gtk_text_view_get_pixels_above_lines(GtkTextView* textView);
	int gtk_text_view_get_pixels_below_lines(GtkTextView* textView);
	int gtk_text_view_get_pixels_inside_wrap(GtkTextView* textView);
	int gtk_text_view_get_right_margin(GtkTextView* textView);
	PangoTabArray* gtk_text_view_get_tabs(GtkTextView* textView);
	int gtk_text_view_get_top_margin(GtkTextView* textView);
	GtkAdjustment* gtk_text_view_get_vadjustment(GtkTextView* textView);
	void gtk_text_view_get_visible_rect(GtkTextView* textView, GdkRectangle* visibleRect);
	GdkWindow* gtk_text_view_get_window(GtkTextView* textView, GtkTextWindowType win);
	GtkTextWindowType gtk_text_view_get_window_type(GtkTextView* textView, GdkWindow* window);
	GtkWrapMode gtk_text_view_get_wrap_mode(GtkTextView* textView);
	int gtk_text_view_im_context_filter_keypress(GtkTextView* textView, GdkEventKey* event);
	void gtk_text_view_move_child(GtkTextView* textView, GtkWidget* child, int xpos, int ypos);
	int gtk_text_view_move_mark_onscreen(GtkTextView* textView, GtkTextMark* mark);
	int gtk_text_view_move_visually(GtkTextView* textView, GtkTextIter* iter, int count);
	int gtk_text_view_place_cursor_onscreen(GtkTextView* textView);
	void gtk_text_view_reset_cursor_blink(GtkTextView* textView);
	void gtk_text_view_reset_im_context(GtkTextView* textView);
	void gtk_text_view_scroll_mark_onscreen(GtkTextView* textView, GtkTextMark* mark);
	int gtk_text_view_scroll_to_iter(GtkTextView* textView, GtkTextIter* iter, double withinMargin, int useAlign, double xalign, double yalign);
	void gtk_text_view_scroll_to_mark(GtkTextView* textView, GtkTextMark* mark, double withinMargin, int useAlign, double xalign, double yalign);
	void gtk_text_view_set_accepts_tab(GtkTextView* textView, int acceptsTab);
	void gtk_text_view_set_border_window_size(GtkTextView* textView, GtkTextWindowType type, int size);
	void gtk_text_view_set_bottom_margin(GtkTextView* textView, int bottomMargin);
	void gtk_text_view_set_buffer(GtkTextView* textView, GtkTextBuffer* buffer);
	void gtk_text_view_set_cursor_visible(GtkTextView* textView, int setting);
	void gtk_text_view_set_editable(GtkTextView* textView, int setting);
	void gtk_text_view_set_indent(GtkTextView* textView, int indent);
	void gtk_text_view_set_input_hints(GtkTextView* textView, GtkInputHints hints);
	void gtk_text_view_set_input_purpose(GtkTextView* textView, GtkInputPurpose purpose);
	void gtk_text_view_set_justification(GtkTextView* textView, GtkJustification justification);
	void gtk_text_view_set_left_margin(GtkTextView* textView, int leftMargin);
	void gtk_text_view_set_monospace(GtkTextView* textView, int monospace);
	void gtk_text_view_set_overwrite(GtkTextView* textView, int overwrite);
	void gtk_text_view_set_pixels_above_lines(GtkTextView* textView, int pixelsAboveLines);
	void gtk_text_view_set_pixels_below_lines(GtkTextView* textView, int pixelsBelowLines);
	void gtk_text_view_set_pixels_inside_wrap(GtkTextView* textView, int pixelsInsideWrap);
	void gtk_text_view_set_right_margin(GtkTextView* textView, int rightMargin);
	void gtk_text_view_set_tabs(GtkTextView* textView, PangoTabArray* tabs);
	void gtk_text_view_set_top_margin(GtkTextView* textView, int topMargin);
	void gtk_text_view_set_wrap_mode(GtkTextView* textView, GtkWrapMode wrapMode);
	int gtk_text_view_starts_display_line(GtkTextView* textView, GtkTextIter* iter);
	void gtk_text_view_window_to_buffer_coords(GtkTextView* textView, GtkTextWindowType win, int windowX, int windowY, int* bufferX, int* bufferY);

	// gtk.TextViewAccessible

	GType gtk_text_view_accessible_get_type();

	// gtk.ThemingEngine

	GType gtk_theming_engine_get_type();
	GtkThemingEngine* gtk_theming_engine_load(const(char)* name);
	void gtk_theming_engine_register_property(const(char)* nameSpace, GtkStylePropertyParser parseFunc, GParamSpec* pspec);
	void gtk_theming_engine_get(GtkThemingEngine* engine, GtkStateFlags state, ... );
	void gtk_theming_engine_get_background_color(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color);
	void gtk_theming_engine_get_border(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* border);
	void gtk_theming_engine_get_border_color(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color);
	void gtk_theming_engine_get_color(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color);
	GtkTextDirection gtk_theming_engine_get_direction(GtkThemingEngine* engine);
	PangoFontDescription* gtk_theming_engine_get_font(GtkThemingEngine* engine, GtkStateFlags state);
	GtkJunctionSides gtk_theming_engine_get_junction_sides(GtkThemingEngine* engine);
	void gtk_theming_engine_get_margin(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* margin);
	void gtk_theming_engine_get_padding(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* padding);
	GtkWidgetPath* gtk_theming_engine_get_path(GtkThemingEngine* engine);
	void gtk_theming_engine_get_property(GtkThemingEngine* engine, const(char)* property, GtkStateFlags state, GValue* value);
	GdkScreen* gtk_theming_engine_get_screen(GtkThemingEngine* engine);
	GtkStateFlags gtk_theming_engine_get_state(GtkThemingEngine* engine);
	void gtk_theming_engine_get_style(GtkThemingEngine* engine, ... );
	void gtk_theming_engine_get_style_property(GtkThemingEngine* engine, const(char)* propertyName, GValue* value);
	void gtk_theming_engine_get_style_valist(GtkThemingEngine* engine, void* args);
	void gtk_theming_engine_get_valist(GtkThemingEngine* engine, GtkStateFlags state, void* args);
	int gtk_theming_engine_has_class(GtkThemingEngine* engine, const(char)* styleClass);
	int gtk_theming_engine_has_region(GtkThemingEngine* engine, const(char)* styleRegion, GtkRegionFlags* flags);
	int gtk_theming_engine_lookup_color(GtkThemingEngine* engine, const(char)* colorName, GdkRGBA* color);
	int gtk_theming_engine_state_is_running(GtkThemingEngine* engine, GtkStateType state, double* progress);

	// gtk.ToggleAction

	GType gtk_toggle_action_get_type();
	GtkToggleAction* gtk_toggle_action_new(const(char)* name, const(char)* label, const(char)* tooltip, const(char)* stockId);
	int gtk_toggle_action_get_active(GtkToggleAction* action);
	int gtk_toggle_action_get_draw_as_radio(GtkToggleAction* action);
	void gtk_toggle_action_set_active(GtkToggleAction* action, int isActive);
	void gtk_toggle_action_set_draw_as_radio(GtkToggleAction* action, int drawAsRadio);
	void gtk_toggle_action_toggled(GtkToggleAction* action);

	// gtk.ToggleButton

	GType gtk_toggle_button_get_type();
	GtkWidget* gtk_toggle_button_new();
	GtkWidget* gtk_toggle_button_new_with_label(const(char)* label);
	GtkWidget* gtk_toggle_button_new_with_mnemonic(const(char)* label);
	int gtk_toggle_button_get_active(GtkToggleButton* toggleButton);
	int gtk_toggle_button_get_inconsistent(GtkToggleButton* toggleButton);
	int gtk_toggle_button_get_mode(GtkToggleButton* toggleButton);
	void gtk_toggle_button_set_active(GtkToggleButton* toggleButton, int isActive);
	void gtk_toggle_button_set_inconsistent(GtkToggleButton* toggleButton, int setting);
	void gtk_toggle_button_set_mode(GtkToggleButton* toggleButton, int drawIndicator);
	void gtk_toggle_button_toggled(GtkToggleButton* toggleButton);

	// gtk.ToggleButtonAccessible

	GType gtk_toggle_button_accessible_get_type();

	// gtk.ToggleToolButton

	GType gtk_toggle_tool_button_get_type();
	GtkToolItem* gtk_toggle_tool_button_new();
	GtkToolItem* gtk_toggle_tool_button_new_from_stock(const(char)* stockId);
	int gtk_toggle_tool_button_get_active(GtkToggleToolButton* button);
	void gtk_toggle_tool_button_set_active(GtkToggleToolButton* button, int isActive);

	// gtk.ToolButton

	GType gtk_tool_button_get_type();
	GtkToolItem* gtk_tool_button_new(GtkWidget* iconWidget, const(char)* label);
	GtkToolItem* gtk_tool_button_new_from_stock(const(char)* stockId);
	const(char)* gtk_tool_button_get_icon_name(GtkToolButton* button);
	GtkWidget* gtk_tool_button_get_icon_widget(GtkToolButton* button);
	const(char)* gtk_tool_button_get_label(GtkToolButton* button);
	GtkWidget* gtk_tool_button_get_label_widget(GtkToolButton* button);
	const(char)* gtk_tool_button_get_stock_id(GtkToolButton* button);
	int gtk_tool_button_get_use_underline(GtkToolButton* button);
	void gtk_tool_button_set_icon_name(GtkToolButton* button, const(char)* iconName);
	void gtk_tool_button_set_icon_widget(GtkToolButton* button, GtkWidget* iconWidget);
	void gtk_tool_button_set_label(GtkToolButton* button, const(char)* label);
	void gtk_tool_button_set_label_widget(GtkToolButton* button, GtkWidget* labelWidget);
	void gtk_tool_button_set_stock_id(GtkToolButton* button, const(char)* stockId);
	void gtk_tool_button_set_use_underline(GtkToolButton* button, int useUnderline);

	// gtk.ToolItem

	GType gtk_tool_item_get_type();
	GtkToolItem* gtk_tool_item_new();
	PangoEllipsizeMode gtk_tool_item_get_ellipsize_mode(GtkToolItem* toolItem);
	int gtk_tool_item_get_expand(GtkToolItem* toolItem);
	int gtk_tool_item_get_homogeneous(GtkToolItem* toolItem);
	GtkIconSize gtk_tool_item_get_icon_size(GtkToolItem* toolItem);
	int gtk_tool_item_get_is_important(GtkToolItem* toolItem);
	GtkOrientation gtk_tool_item_get_orientation(GtkToolItem* toolItem);
	GtkWidget* gtk_tool_item_get_proxy_menu_item(GtkToolItem* toolItem, const(char)* menuItemId);
	GtkReliefStyle gtk_tool_item_get_relief_style(GtkToolItem* toolItem);
	float gtk_tool_item_get_text_alignment(GtkToolItem* toolItem);
	GtkOrientation gtk_tool_item_get_text_orientation(GtkToolItem* toolItem);
	GtkSizeGroup* gtk_tool_item_get_text_size_group(GtkToolItem* toolItem);
	GtkToolbarStyle gtk_tool_item_get_toolbar_style(GtkToolItem* toolItem);
	int gtk_tool_item_get_use_drag_window(GtkToolItem* toolItem);
	int gtk_tool_item_get_visible_horizontal(GtkToolItem* toolItem);
	int gtk_tool_item_get_visible_vertical(GtkToolItem* toolItem);
	void gtk_tool_item_rebuild_menu(GtkToolItem* toolItem);
	GtkWidget* gtk_tool_item_retrieve_proxy_menu_item(GtkToolItem* toolItem);
	void gtk_tool_item_set_expand(GtkToolItem* toolItem, int expand);
	void gtk_tool_item_set_homogeneous(GtkToolItem* toolItem, int homogeneous);
	void gtk_tool_item_set_is_important(GtkToolItem* toolItem, int isImportant);
	void gtk_tool_item_set_proxy_menu_item(GtkToolItem* toolItem, const(char)* menuItemId, GtkWidget* menuItem);
	void gtk_tool_item_set_tooltip_markup(GtkToolItem* toolItem, const(char)* markup);
	void gtk_tool_item_set_tooltip_text(GtkToolItem* toolItem, const(char)* text);
	void gtk_tool_item_set_use_drag_window(GtkToolItem* toolItem, int useDragWindow);
	void gtk_tool_item_set_visible_horizontal(GtkToolItem* toolItem, int visibleHorizontal);
	void gtk_tool_item_set_visible_vertical(GtkToolItem* toolItem, int visibleVertical);
	void gtk_tool_item_toolbar_reconfigured(GtkToolItem* toolItem);

	// gtk.ToolItemGroup

	GType gtk_tool_item_group_get_type();
	GtkWidget* gtk_tool_item_group_new(const(char)* label);
	int gtk_tool_item_group_get_collapsed(GtkToolItemGroup* group);
	GtkToolItem* gtk_tool_item_group_get_drop_item(GtkToolItemGroup* group, int x, int y);
	PangoEllipsizeMode gtk_tool_item_group_get_ellipsize(GtkToolItemGroup* group);
	GtkReliefStyle gtk_tool_item_group_get_header_relief(GtkToolItemGroup* group);
	int gtk_tool_item_group_get_item_position(GtkToolItemGroup* group, GtkToolItem* item);
	const(char)* gtk_tool_item_group_get_label(GtkToolItemGroup* group);
	GtkWidget* gtk_tool_item_group_get_label_widget(GtkToolItemGroup* group);
	uint gtk_tool_item_group_get_n_items(GtkToolItemGroup* group);
	GtkToolItem* gtk_tool_item_group_get_nth_item(GtkToolItemGroup* group, uint index);
	void gtk_tool_item_group_insert(GtkToolItemGroup* group, GtkToolItem* item, int position);
	void gtk_tool_item_group_set_collapsed(GtkToolItemGroup* group, int collapsed);
	void gtk_tool_item_group_set_ellipsize(GtkToolItemGroup* group, PangoEllipsizeMode ellipsize);
	void gtk_tool_item_group_set_header_relief(GtkToolItemGroup* group, GtkReliefStyle style);
	void gtk_tool_item_group_set_item_position(GtkToolItemGroup* group, GtkToolItem* item, int position);
	void gtk_tool_item_group_set_label(GtkToolItemGroup* group, const(char)* label);
	void gtk_tool_item_group_set_label_widget(GtkToolItemGroup* group, GtkWidget* labelWidget);

	// gtk.ToolPalette

	GType gtk_tool_palette_get_type();
	GtkWidget* gtk_tool_palette_new();
	GtkTargetEntry* gtk_tool_palette_get_drag_target_group();
	GtkTargetEntry* gtk_tool_palette_get_drag_target_item();
	void gtk_tool_palette_add_drag_dest(GtkToolPalette* palette, GtkWidget* widget, GtkDestDefaults flags, GtkToolPaletteDragTargets targets, GdkDragAction actions);
	GtkWidget* gtk_tool_palette_get_drag_item(GtkToolPalette* palette, GtkSelectionData* selection);
	GtkToolItemGroup* gtk_tool_palette_get_drop_group(GtkToolPalette* palette, int x, int y);
	GtkToolItem* gtk_tool_palette_get_drop_item(GtkToolPalette* palette, int x, int y);
	int gtk_tool_palette_get_exclusive(GtkToolPalette* palette, GtkToolItemGroup* group);
	int gtk_tool_palette_get_expand(GtkToolPalette* palette, GtkToolItemGroup* group);
	int gtk_tool_palette_get_group_position(GtkToolPalette* palette, GtkToolItemGroup* group);
	GtkAdjustment* gtk_tool_palette_get_hadjustment(GtkToolPalette* palette);
	GtkIconSize gtk_tool_palette_get_icon_size(GtkToolPalette* palette);
	GtkToolbarStyle gtk_tool_palette_get_style(GtkToolPalette* palette);
	GtkAdjustment* gtk_tool_palette_get_vadjustment(GtkToolPalette* palette);
	void gtk_tool_palette_set_drag_source(GtkToolPalette* palette, GtkToolPaletteDragTargets targets);
	void gtk_tool_palette_set_exclusive(GtkToolPalette* palette, GtkToolItemGroup* group, int exclusive);
	void gtk_tool_palette_set_expand(GtkToolPalette* palette, GtkToolItemGroup* group, int expand);
	void gtk_tool_palette_set_group_position(GtkToolPalette* palette, GtkToolItemGroup* group, int position);
	void gtk_tool_palette_set_icon_size(GtkToolPalette* palette, GtkIconSize iconSize);
	void gtk_tool_palette_set_style(GtkToolPalette* palette, GtkToolbarStyle style);
	void gtk_tool_palette_unset_icon_size(GtkToolPalette* palette);
	void gtk_tool_palette_unset_style(GtkToolPalette* palette);

	// gtk.ToolShell

	GType gtk_tool_shell_get_type();
	PangoEllipsizeMode gtk_tool_shell_get_ellipsize_mode(GtkToolShell* shell);
	GtkIconSize gtk_tool_shell_get_icon_size(GtkToolShell* shell);
	GtkOrientation gtk_tool_shell_get_orientation(GtkToolShell* shell);
	GtkReliefStyle gtk_tool_shell_get_relief_style(GtkToolShell* shell);
	GtkToolbarStyle gtk_tool_shell_get_style(GtkToolShell* shell);
	float gtk_tool_shell_get_text_alignment(GtkToolShell* shell);
	GtkOrientation gtk_tool_shell_get_text_orientation(GtkToolShell* shell);
	GtkSizeGroup* gtk_tool_shell_get_text_size_group(GtkToolShell* shell);
	void gtk_tool_shell_rebuild_menu(GtkToolShell* shell);

	// gtk.Toolbar

	GType gtk_toolbar_get_type();
	GtkWidget* gtk_toolbar_new();
	int gtk_toolbar_get_drop_index(GtkToolbar* toolbar, int x, int y);
	GtkIconSize gtk_toolbar_get_icon_size(GtkToolbar* toolbar);
	int gtk_toolbar_get_item_index(GtkToolbar* toolbar, GtkToolItem* item);
	int gtk_toolbar_get_n_items(GtkToolbar* toolbar);
	GtkToolItem* gtk_toolbar_get_nth_item(GtkToolbar* toolbar, int n);
	GtkReliefStyle gtk_toolbar_get_relief_style(GtkToolbar* toolbar);
	int gtk_toolbar_get_show_arrow(GtkToolbar* toolbar);
	GtkToolbarStyle gtk_toolbar_get_style(GtkToolbar* toolbar);
	void gtk_toolbar_insert(GtkToolbar* toolbar, GtkToolItem* item, int pos);
	void gtk_toolbar_set_drop_highlight_item(GtkToolbar* toolbar, GtkToolItem* toolItem, int index);
	void gtk_toolbar_set_icon_size(GtkToolbar* toolbar, GtkIconSize iconSize);
	void gtk_toolbar_set_show_arrow(GtkToolbar* toolbar, int showArrow);
	void gtk_toolbar_set_style(GtkToolbar* toolbar, GtkToolbarStyle style);
	void gtk_toolbar_unset_icon_size(GtkToolbar* toolbar);
	void gtk_toolbar_unset_style(GtkToolbar* toolbar);

	// gtk.Tooltip

	GType gtk_tooltip_get_type();
	void gtk_tooltip_trigger_tooltip_query(GdkDisplay* display);
	void gtk_tooltip_set_custom(GtkTooltip* tooltip, GtkWidget* customWidget);
	void gtk_tooltip_set_icon(GtkTooltip* tooltip, GdkPixbuf* pixbuf);
	void gtk_tooltip_set_icon_from_gicon(GtkTooltip* tooltip, GIcon* gicon, GtkIconSize size);
	void gtk_tooltip_set_icon_from_icon_name(GtkTooltip* tooltip, const(char)* iconName, GtkIconSize size);
	void gtk_tooltip_set_icon_from_stock(GtkTooltip* tooltip, const(char)* stockId, GtkIconSize size);
	void gtk_tooltip_set_markup(GtkTooltip* tooltip, const(char)* markup);
	void gtk_tooltip_set_text(GtkTooltip* tooltip, const(char)* text);
	void gtk_tooltip_set_tip_area(GtkTooltip* tooltip, GdkRectangle* rect);

	// gtk.ToplevelAccessible

	GType gtk_toplevel_accessible_get_type();
	GList* gtk_toplevel_accessible_get_children(GtkToplevelAccessible* accessible);

	// gtk.TreeDragDest

	GType gtk_tree_drag_dest_get_type();
	int gtk_tree_drag_dest_drag_data_received(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData);
	int gtk_tree_drag_dest_row_drop_possible(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData);

	// gtk.TreeDragSource

	GType gtk_tree_drag_source_get_type();
	int gtk_tree_drag_source_drag_data_delete(GtkTreeDragSource* dragSource, GtkTreePath* path);
	int gtk_tree_drag_source_drag_data_get(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData);
	int gtk_tree_drag_source_row_draggable(GtkTreeDragSource* dragSource, GtkTreePath* path);
	int gtk_tree_get_row_drag_data(GtkSelectionData* selectionData, GtkTreeModel** treeModel, GtkTreePath** path);
	int gtk_tree_set_row_drag_data(GtkSelectionData* selectionData, GtkTreeModel* treeModel, GtkTreePath* path);

	// gtk.TreeIter

	GType gtk_tree_iter_get_type();
	GtkTreeIter* gtk_tree_iter_copy(GtkTreeIter* iter);
	void gtk_tree_iter_free(GtkTreeIter* iter);

	// gtk.TreeModel

	GType gtk_tree_model_get_type();
	void gtk_tree_model_foreach(GtkTreeModel* model, GtkTreeModelForeachFunc func, void* userData);
	void gtk_tree_model_get(GtkTreeModel* treeModel, GtkTreeIter* iter, ... );
	GType gtk_tree_model_get_column_type(GtkTreeModel* treeModel, int index);
	GtkTreeModelFlags gtk_tree_model_get_flags(GtkTreeModel* treeModel);
	int gtk_tree_model_get_iter(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path);
	int gtk_tree_model_get_iter_first(GtkTreeModel* treeModel, GtkTreeIter* iter);
	int gtk_tree_model_get_iter_from_string(GtkTreeModel* treeModel, GtkTreeIter* iter, const(char)* pathString);
	int gtk_tree_model_get_n_columns(GtkTreeModel* treeModel);
	GtkTreePath* gtk_tree_model_get_path(GtkTreeModel* treeModel, GtkTreeIter* iter);
	char* gtk_tree_model_get_string_from_iter(GtkTreeModel* treeModel, GtkTreeIter* iter);
	void gtk_tree_model_get_valist(GtkTreeModel* treeModel, GtkTreeIter* iter, void* varArgs);
	void gtk_tree_model_get_value(GtkTreeModel* treeModel, GtkTreeIter* iter, int column, GValue* value);
	int gtk_tree_model_iter_children(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent);
	int gtk_tree_model_iter_has_child(GtkTreeModel* treeModel, GtkTreeIter* iter);
	int gtk_tree_model_iter_n_children(GtkTreeModel* treeModel, GtkTreeIter* iter);
	int gtk_tree_model_iter_next(GtkTreeModel* treeModel, GtkTreeIter* iter);
	int gtk_tree_model_iter_nth_child(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, int n);
	int gtk_tree_model_iter_parent(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child);
	int gtk_tree_model_iter_previous(GtkTreeModel* treeModel, GtkTreeIter* iter);
	void gtk_tree_model_ref_node(GtkTreeModel* treeModel, GtkTreeIter* iter);
	void gtk_tree_model_row_changed(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter);
	void gtk_tree_model_row_deleted(GtkTreeModel* treeModel, GtkTreePath* path);
	void gtk_tree_model_row_has_child_toggled(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter);
	void gtk_tree_model_row_inserted(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter);
	void gtk_tree_model_rows_reordered(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder);
	void gtk_tree_model_rows_reordered_with_length(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder, int length);
	void gtk_tree_model_unref_node(GtkTreeModel* treeModel, GtkTreeIter* iter);

	// gtk.TreeModelFilter

	GType gtk_tree_model_filter_get_type();
	void gtk_tree_model_filter_clear_cache(GtkTreeModelFilter* filter);
	int gtk_tree_model_filter_convert_child_iter_to_iter(GtkTreeModelFilter* filter, GtkTreeIter* filterIter, GtkTreeIter* childIter);
	GtkTreePath* gtk_tree_model_filter_convert_child_path_to_path(GtkTreeModelFilter* filter, GtkTreePath* childPath);
	void gtk_tree_model_filter_convert_iter_to_child_iter(GtkTreeModelFilter* filter, GtkTreeIter* childIter, GtkTreeIter* filterIter);
	GtkTreePath* gtk_tree_model_filter_convert_path_to_child_path(GtkTreeModelFilter* filter, GtkTreePath* filterPath);
	GtkTreeModel* gtk_tree_model_filter_get_model(GtkTreeModelFilter* filter);
	void gtk_tree_model_filter_refilter(GtkTreeModelFilter* filter);
	void gtk_tree_model_filter_set_modify_func(GtkTreeModelFilter* filter, int nColumns, GType* types, GtkTreeModelFilterModifyFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_model_filter_set_visible_column(GtkTreeModelFilter* filter, int column);
	void gtk_tree_model_filter_set_visible_func(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, void* data, GDestroyNotify destroy);
	GtkTreeModel* gtk_tree_model_filter_new(GtkTreeModel* childModel, GtkTreePath* root);

	// gtk.TreeModelSort

	GType gtk_tree_model_sort_get_type();
	void gtk_tree_model_sort_clear_cache(GtkTreeModelSort* treeModelSort);
	int gtk_tree_model_sort_convert_child_iter_to_iter(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter);
	GtkTreePath* gtk_tree_model_sort_convert_child_path_to_path(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath);
	void gtk_tree_model_sort_convert_iter_to_child_iter(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter);
	GtkTreePath* gtk_tree_model_sort_convert_path_to_child_path(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath);
	GtkTreeModel* gtk_tree_model_sort_get_model(GtkTreeModelSort* treeModel);
	int gtk_tree_model_sort_iter_is_valid(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter);
	void gtk_tree_model_sort_reset_default_sort_func(GtkTreeModelSort* treeModelSort);
	GtkTreeModel* gtk_tree_model_sort_new_with_model(GtkTreeModel* childModel);

	// gtk.TreePath

	GType gtk_tree_path_get_type();
	GtkTreePath* gtk_tree_path_new();
	GtkTreePath* gtk_tree_path_new_first();
	GtkTreePath* gtk_tree_path_new_from_indices(int firstIndex, ... );
	GtkTreePath* gtk_tree_path_new_from_indicesv(int* indices, size_t length);
	GtkTreePath* gtk_tree_path_new_from_string(const(char)* path);
	void gtk_tree_path_append_index(GtkTreePath* path, int index);
	int gtk_tree_path_compare(GtkTreePath* a, GtkTreePath* b);
	GtkTreePath* gtk_tree_path_copy(GtkTreePath* path);
	void gtk_tree_path_down(GtkTreePath* path);
	void gtk_tree_path_free(GtkTreePath* path);
	int gtk_tree_path_get_depth(GtkTreePath* path);
	int* gtk_tree_path_get_indices(GtkTreePath* path);
	int* gtk_tree_path_get_indices_with_depth(GtkTreePath* path, int* depth);
	int gtk_tree_path_is_ancestor(GtkTreePath* path, GtkTreePath* descendant);
	int gtk_tree_path_is_descendant(GtkTreePath* path, GtkTreePath* ancestor);
	void gtk_tree_path_next(GtkTreePath* path);
	void gtk_tree_path_prepend_index(GtkTreePath* path, int index);
	int gtk_tree_path_prev(GtkTreePath* path);
	char* gtk_tree_path_to_string(GtkTreePath* path);
	int gtk_tree_path_up(GtkTreePath* path);

	// gtk.TreeRowReference

	GType gtk_tree_row_reference_get_type();
	GtkTreeRowReference* gtk_tree_row_reference_new(GtkTreeModel* model, GtkTreePath* path);
	GtkTreeRowReference* gtk_tree_row_reference_new_proxy(GObject* proxy, GtkTreeModel* model, GtkTreePath* path);
	GtkTreeRowReference* gtk_tree_row_reference_copy(GtkTreeRowReference* reference);
	void gtk_tree_row_reference_free(GtkTreeRowReference* reference);
	GtkTreeModel* gtk_tree_row_reference_get_model(GtkTreeRowReference* reference);
	GtkTreePath* gtk_tree_row_reference_get_path(GtkTreeRowReference* reference);
	int gtk_tree_row_reference_valid(GtkTreeRowReference* reference);
	void gtk_tree_row_reference_deleted(GObject* proxy, GtkTreePath* path);
	void gtk_tree_row_reference_inserted(GObject* proxy, GtkTreePath* path);
	void gtk_tree_row_reference_reordered(GObject* proxy, GtkTreePath* path, GtkTreeIter* iter, int* newOrder);

	// gtk.TreeSelection

	GType gtk_tree_selection_get_type();
	int gtk_tree_selection_count_selected_rows(GtkTreeSelection* selection);
	GtkSelectionMode gtk_tree_selection_get_mode(GtkTreeSelection* selection);
	GtkTreeSelectionFunc gtk_tree_selection_get_select_function(GtkTreeSelection* selection);
	int gtk_tree_selection_get_selected(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter);
	GList* gtk_tree_selection_get_selected_rows(GtkTreeSelection* selection, GtkTreeModel** model);
	GtkTreeView* gtk_tree_selection_get_tree_view(GtkTreeSelection* selection);
	void* gtk_tree_selection_get_user_data(GtkTreeSelection* selection);
	int gtk_tree_selection_iter_is_selected(GtkTreeSelection* selection, GtkTreeIter* iter);
	int gtk_tree_selection_path_is_selected(GtkTreeSelection* selection, GtkTreePath* path);
	void gtk_tree_selection_select_all(GtkTreeSelection* selection);
	void gtk_tree_selection_select_iter(GtkTreeSelection* selection, GtkTreeIter* iter);
	void gtk_tree_selection_select_path(GtkTreeSelection* selection, GtkTreePath* path);
	void gtk_tree_selection_select_range(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath);
	void gtk_tree_selection_selected_foreach(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, void* data);
	void gtk_tree_selection_set_mode(GtkTreeSelection* selection, GtkSelectionMode type);
	void gtk_tree_selection_set_select_function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_selection_unselect_all(GtkTreeSelection* selection);
	void gtk_tree_selection_unselect_iter(GtkTreeSelection* selection, GtkTreeIter* iter);
	void gtk_tree_selection_unselect_path(GtkTreeSelection* selection, GtkTreePath* path);
	void gtk_tree_selection_unselect_range(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath);

	// gtk.TreeSortable

	GType gtk_tree_sortable_get_type();
	int gtk_tree_sortable_get_sort_column_id(GtkTreeSortable* sortable, int* sortColumnId, GtkSortType* order);
	int gtk_tree_sortable_has_default_sort_func(GtkTreeSortable* sortable);
	void gtk_tree_sortable_set_default_sort_func(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy);
	void gtk_tree_sortable_set_sort_column_id(GtkTreeSortable* sortable, int sortColumnId, GtkSortType order);
	void gtk_tree_sortable_set_sort_func(GtkTreeSortable* sortable, int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy);
	void gtk_tree_sortable_sort_column_changed(GtkTreeSortable* sortable);

	// gtk.TreeStore

	GType gtk_tree_store_get_type();
	GtkTreeStore* gtk_tree_store_new(int nColumns, ... );
	GtkTreeStore* gtk_tree_store_newv(int nColumns, GType* types);
	void gtk_tree_store_append(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent);
	void gtk_tree_store_clear(GtkTreeStore* treeStore);
	void gtk_tree_store_insert(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position);
	void gtk_tree_store_insert_after(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling);
	void gtk_tree_store_insert_before(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling);
	void gtk_tree_store_insert_with_values(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position, ... );
	void gtk_tree_store_insert_with_valuesv(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position, int* columns, GValue* values, int nValues);
	int gtk_tree_store_is_ancestor(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* descendant);
	int gtk_tree_store_iter_depth(GtkTreeStore* treeStore, GtkTreeIter* iter);
	int gtk_tree_store_iter_is_valid(GtkTreeStore* treeStore, GtkTreeIter* iter);
	void gtk_tree_store_move_after(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position);
	void gtk_tree_store_move_before(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position);
	void gtk_tree_store_prepend(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent);
	int gtk_tree_store_remove(GtkTreeStore* treeStore, GtkTreeIter* iter);
	void gtk_tree_store_reorder(GtkTreeStore* treeStore, GtkTreeIter* parent, int* newOrder);
	void gtk_tree_store_set(GtkTreeStore* treeStore, GtkTreeIter* iter, ... );
	void gtk_tree_store_set_column_types(GtkTreeStore* treeStore, int nColumns, GType* types);
	void gtk_tree_store_set_valist(GtkTreeStore* treeStore, GtkTreeIter* iter, void* varArgs);
	void gtk_tree_store_set_value(GtkTreeStore* treeStore, GtkTreeIter* iter, int column, GValue* value);
	void gtk_tree_store_set_valuesv(GtkTreeStore* treeStore, GtkTreeIter* iter, int* columns, GValue* values, int nValues);
	void gtk_tree_store_swap(GtkTreeStore* treeStore, GtkTreeIter* a, GtkTreeIter* b);

	// gtk.TreeView

	GType gtk_tree_view_get_type();
	GtkWidget* gtk_tree_view_new();
	GtkWidget* gtk_tree_view_new_with_model(GtkTreeModel* model);
	int gtk_tree_view_append_column(GtkTreeView* treeView, GtkTreeViewColumn* column);
	void gtk_tree_view_collapse_all(GtkTreeView* treeView);
	int gtk_tree_view_collapse_row(GtkTreeView* treeView, GtkTreePath* path);
	void gtk_tree_view_columns_autosize(GtkTreeView* treeView);
	void gtk_tree_view_convert_bin_window_to_tree_coords(GtkTreeView* treeView, int bx, int by, int* tx, int* ty);
	void gtk_tree_view_convert_bin_window_to_widget_coords(GtkTreeView* treeView, int bx, int by, int* wx, int* wy);
	void gtk_tree_view_convert_tree_to_bin_window_coords(GtkTreeView* treeView, int tx, int ty, int* bx, int* by);
	void gtk_tree_view_convert_tree_to_widget_coords(GtkTreeView* treeView, int tx, int ty, int* wx, int* wy);
	void gtk_tree_view_convert_widget_to_bin_window_coords(GtkTreeView* treeView, int wx, int wy, int* bx, int* by);
	void gtk_tree_view_convert_widget_to_tree_coords(GtkTreeView* treeView, int wx, int wy, int* tx, int* ty);
	cairo_surface_t* gtk_tree_view_create_row_drag_icon(GtkTreeView* treeView, GtkTreePath* path);
	void gtk_tree_view_enable_model_drag_dest(GtkTreeView* treeView, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	void gtk_tree_view_enable_model_drag_source(GtkTreeView* treeView, GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	void gtk_tree_view_expand_all(GtkTreeView* treeView);
	int gtk_tree_view_expand_row(GtkTreeView* treeView, GtkTreePath* path, int openAll);
	void gtk_tree_view_expand_to_path(GtkTreeView* treeView, GtkTreePath* path);
	int gtk_tree_view_get_activate_on_single_click(GtkTreeView* treeView);
	void gtk_tree_view_get_background_area(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect);
	GdkWindow* gtk_tree_view_get_bin_window(GtkTreeView* treeView);
	void gtk_tree_view_get_cell_area(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect);
	GtkTreeViewColumn* gtk_tree_view_get_column(GtkTreeView* treeView, int n);
	GList* gtk_tree_view_get_columns(GtkTreeView* treeView);
	void gtk_tree_view_get_cursor(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewColumn** focusColumn);
	int gtk_tree_view_get_dest_row_at_pos(GtkTreeView* treeView, int dragX, int dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos);
	void gtk_tree_view_get_drag_dest_row(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewDropPosition* pos);
	int gtk_tree_view_get_enable_search(GtkTreeView* treeView);
	int gtk_tree_view_get_enable_tree_lines(GtkTreeView* treeView);
	GtkTreeViewColumn* gtk_tree_view_get_expander_column(GtkTreeView* treeView);
	int gtk_tree_view_get_fixed_height_mode(GtkTreeView* treeView);
	GtkTreeViewGridLines gtk_tree_view_get_grid_lines(GtkTreeView* treeView);
	GtkAdjustment* gtk_tree_view_get_hadjustment(GtkTreeView* treeView);
	int gtk_tree_view_get_headers_clickable(GtkTreeView* treeView);
	int gtk_tree_view_get_headers_visible(GtkTreeView* treeView);
	int gtk_tree_view_get_hover_expand(GtkTreeView* treeView);
	int gtk_tree_view_get_hover_selection(GtkTreeView* treeView);
	int gtk_tree_view_get_level_indentation(GtkTreeView* treeView);
	GtkTreeModel* gtk_tree_view_get_model(GtkTreeView* treeView);
	uint gtk_tree_view_get_n_columns(GtkTreeView* treeView);
	int gtk_tree_view_get_path_at_pos(GtkTreeView* treeView, int x, int y, GtkTreePath** path, GtkTreeViewColumn** column, int* cellX, int* cellY);
	int gtk_tree_view_get_reorderable(GtkTreeView* treeView);
	GtkTreeViewRowSeparatorFunc gtk_tree_view_get_row_separator_func(GtkTreeView* treeView);
	int gtk_tree_view_get_rubber_banding(GtkTreeView* treeView);
	int gtk_tree_view_get_rules_hint(GtkTreeView* treeView);
	int gtk_tree_view_get_search_column(GtkTreeView* treeView);
	GtkEntry* gtk_tree_view_get_search_entry(GtkTreeView* treeView);
	GtkTreeViewSearchEqualFunc gtk_tree_view_get_search_equal_func(GtkTreeView* treeView);
	GtkTreeViewSearchPositionFunc gtk_tree_view_get_search_position_func(GtkTreeView* treeView);
	GtkTreeSelection* gtk_tree_view_get_selection(GtkTreeView* treeView);
	int gtk_tree_view_get_show_expanders(GtkTreeView* treeView);
	int gtk_tree_view_get_tooltip_column(GtkTreeView* treeView);
	int gtk_tree_view_get_tooltip_context(GtkTreeView* treeView, int* x, int* y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
	GtkAdjustment* gtk_tree_view_get_vadjustment(GtkTreeView* treeView);
	int gtk_tree_view_get_visible_range(GtkTreeView* treeView, GtkTreePath** startPath, GtkTreePath** endPath);
	void gtk_tree_view_get_visible_rect(GtkTreeView* treeView, GdkRectangle* visibleRect);
	int gtk_tree_view_insert_column(GtkTreeView* treeView, GtkTreeViewColumn* column, int position);
	int gtk_tree_view_insert_column_with_attributes(GtkTreeView* treeView, int position, const(char)* title, GtkCellRenderer* cell, ... );
	int gtk_tree_view_insert_column_with_data_func(GtkTreeView* treeView, int position, const(char)* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify);
	int gtk_tree_view_is_blank_at_pos(GtkTreeView* treeView, int x, int y, GtkTreePath** path, GtkTreeViewColumn** column, int* cellX, int* cellY);
	int gtk_tree_view_is_rubber_banding_active(GtkTreeView* treeView);
	void gtk_tree_view_map_expanded_rows(GtkTreeView* treeView, GtkTreeViewMappingFunc func, void* data);
	void gtk_tree_view_move_column_after(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* baseColumn);
	int gtk_tree_view_remove_column(GtkTreeView* treeView, GtkTreeViewColumn* column);
	void gtk_tree_view_row_activated(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column);
	int gtk_tree_view_row_expanded(GtkTreeView* treeView, GtkTreePath* path);
	void gtk_tree_view_scroll_to_cell(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, int useAlign, float rowAlign, float colAlign);
	void gtk_tree_view_scroll_to_point(GtkTreeView* treeView, int treeX, int treeY);
	void gtk_tree_view_set_activate_on_single_click(GtkTreeView* treeView, int single);
	void gtk_tree_view_set_column_drag_function(GtkTreeView* treeView, GtkTreeViewColumnDropFunc func, void* userData, GDestroyNotify destroy);
	void gtk_tree_view_set_cursor(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, int startEditing);
	void gtk_tree_view_set_cursor_on_cell(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, GtkCellRenderer* focusCell, int startEditing);
	void gtk_tree_view_set_destroy_count_func(GtkTreeView* treeView, GtkTreeDestroyCountFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_view_set_drag_dest_row(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos);
	void gtk_tree_view_set_enable_search(GtkTreeView* treeView, int enableSearch);
	void gtk_tree_view_set_enable_tree_lines(GtkTreeView* treeView, int enabled);
	void gtk_tree_view_set_expander_column(GtkTreeView* treeView, GtkTreeViewColumn* column);
	void gtk_tree_view_set_fixed_height_mode(GtkTreeView* treeView, int enable);
	void gtk_tree_view_set_grid_lines(GtkTreeView* treeView, GtkTreeViewGridLines gridLines);
	void gtk_tree_view_set_hadjustment(GtkTreeView* treeView, GtkAdjustment* adjustment);
	void gtk_tree_view_set_headers_clickable(GtkTreeView* treeView, int setting);
	void gtk_tree_view_set_headers_visible(GtkTreeView* treeView, int headersVisible);
	void gtk_tree_view_set_hover_expand(GtkTreeView* treeView, int expand);
	void gtk_tree_view_set_hover_selection(GtkTreeView* treeView, int hover);
	void gtk_tree_view_set_level_indentation(GtkTreeView* treeView, int indentation);
	void gtk_tree_view_set_model(GtkTreeView* treeView, GtkTreeModel* model);
	void gtk_tree_view_set_reorderable(GtkTreeView* treeView, int reorderable);
	void gtk_tree_view_set_row_separator_func(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_view_set_rubber_banding(GtkTreeView* treeView, int enable);
	void gtk_tree_view_set_rules_hint(GtkTreeView* treeView, int setting);
	void gtk_tree_view_set_search_column(GtkTreeView* treeView, int column);
	void gtk_tree_view_set_search_entry(GtkTreeView* treeView, GtkEntry* entry);
	void gtk_tree_view_set_search_equal_func(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy);
	void gtk_tree_view_set_search_position_func(GtkTreeView* treeView, GtkTreeViewSearchPositionFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_view_set_show_expanders(GtkTreeView* treeView, int enabled);
	void gtk_tree_view_set_tooltip_cell(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell);
	void gtk_tree_view_set_tooltip_column(GtkTreeView* treeView, int column);
	void gtk_tree_view_set_tooltip_row(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path);
	void gtk_tree_view_set_vadjustment(GtkTreeView* treeView, GtkAdjustment* adjustment);
	void gtk_tree_view_unset_rows_drag_dest(GtkTreeView* treeView);
	void gtk_tree_view_unset_rows_drag_source(GtkTreeView* treeView);

	// gtk.TreeViewAccessible

	GType gtk_tree_view_accessible_get_type();

	// gtk.TreeViewColumn

	GType gtk_tree_view_column_get_type();
	GtkTreeViewColumn* gtk_tree_view_column_new();
	GtkTreeViewColumn* gtk_tree_view_column_new_with_area(GtkCellArea* area);
	GtkTreeViewColumn* gtk_tree_view_column_new_with_attributes(const(char)* title, GtkCellRenderer* cell, ... );
	void gtk_tree_view_column_add_attribute(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, const(char)* attribute, int column);
	int gtk_tree_view_column_cell_get_position(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, int* xOffset, int* width);
	void gtk_tree_view_column_cell_get_size(GtkTreeViewColumn* treeColumn, GdkRectangle* cellArea, int* xOffset, int* yOffset, int* width, int* height);
	int gtk_tree_view_column_cell_is_visible(GtkTreeViewColumn* treeColumn);
	void gtk_tree_view_column_cell_set_cell_data(GtkTreeViewColumn* treeColumn, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded);
	void gtk_tree_view_column_clear(GtkTreeViewColumn* treeColumn);
	void gtk_tree_view_column_clear_attributes(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer);
	void gtk_tree_view_column_clicked(GtkTreeViewColumn* treeColumn);
	void gtk_tree_view_column_focus_cell(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell);
	float gtk_tree_view_column_get_alignment(GtkTreeViewColumn* treeColumn);
	GtkWidget* gtk_tree_view_column_get_button(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_clickable(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_expand(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_fixed_width(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_max_width(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_min_width(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_reorderable(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_resizable(GtkTreeViewColumn* treeColumn);
	GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_sort_column_id(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_sort_indicator(GtkTreeViewColumn* treeColumn);
	GtkSortType gtk_tree_view_column_get_sort_order(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_spacing(GtkTreeViewColumn* treeColumn);
	const(char)* gtk_tree_view_column_get_title(GtkTreeViewColumn* treeColumn);
	GtkWidget* gtk_tree_view_column_get_tree_view(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_visible(GtkTreeViewColumn* treeColumn);
	GtkWidget* gtk_tree_view_column_get_widget(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_width(GtkTreeViewColumn* treeColumn);
	int gtk_tree_view_column_get_x_offset(GtkTreeViewColumn* treeColumn);
	void gtk_tree_view_column_pack_end(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, int expand);
	void gtk_tree_view_column_pack_start(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, int expand);
	void gtk_tree_view_column_queue_resize(GtkTreeViewColumn* treeColumn);
	void gtk_tree_view_column_set_alignment(GtkTreeViewColumn* treeColumn, float xalign);
	void gtk_tree_view_column_set_attributes(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, ... );
	void gtk_tree_view_column_set_cell_data_func(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, GtkTreeCellDataFunc func, void* funcData, GDestroyNotify destroy);
	void gtk_tree_view_column_set_clickable(GtkTreeViewColumn* treeColumn, int clickable);
	void gtk_tree_view_column_set_expand(GtkTreeViewColumn* treeColumn, int expand);
	void gtk_tree_view_column_set_fixed_width(GtkTreeViewColumn* treeColumn, int fixedWidth);
	void gtk_tree_view_column_set_max_width(GtkTreeViewColumn* treeColumn, int maxWidth);
	void gtk_tree_view_column_set_min_width(GtkTreeViewColumn* treeColumn, int minWidth);
	void gtk_tree_view_column_set_reorderable(GtkTreeViewColumn* treeColumn, int reorderable);
	void gtk_tree_view_column_set_resizable(GtkTreeViewColumn* treeColumn, int resizable);
	void gtk_tree_view_column_set_sizing(GtkTreeViewColumn* treeColumn, GtkTreeViewColumnSizing type);
	void gtk_tree_view_column_set_sort_column_id(GtkTreeViewColumn* treeColumn, int sortColumnId);
	void gtk_tree_view_column_set_sort_indicator(GtkTreeViewColumn* treeColumn, int setting);
	void gtk_tree_view_column_set_sort_order(GtkTreeViewColumn* treeColumn, GtkSortType order);
	void gtk_tree_view_column_set_spacing(GtkTreeViewColumn* treeColumn, int spacing);
	void gtk_tree_view_column_set_title(GtkTreeViewColumn* treeColumn, const(char)* title);
	void gtk_tree_view_column_set_visible(GtkTreeViewColumn* treeColumn, int visible);
	void gtk_tree_view_column_set_widget(GtkTreeViewColumn* treeColumn, GtkWidget* widget);

	// gtk.UIManager

	GType gtk_ui_manager_get_type();
	GtkUIManager* gtk_ui_manager_new();
	void gtk_ui_manager_add_ui(GtkUIManager* manager, uint mergeId, const(char)* path, const(char)* name, const(char)* action, GtkUIManagerItemType type, int top);
	uint gtk_ui_manager_add_ui_from_file(GtkUIManager* manager, char* filename, GError** err);
	uint gtk_ui_manager_add_ui_from_resource(GtkUIManager* manager, const(char)* resourcePath, GError** err);
	uint gtk_ui_manager_add_ui_from_string(GtkUIManager* manager, const(char)* buffer, ptrdiff_t length, GError** err);
	void gtk_ui_manager_ensure_update(GtkUIManager* manager);
	GtkAccelGroup* gtk_ui_manager_get_accel_group(GtkUIManager* manager);
	GtkAction* gtk_ui_manager_get_action(GtkUIManager* manager, const(char)* path);
	GList* gtk_ui_manager_get_action_groups(GtkUIManager* manager);
	int gtk_ui_manager_get_add_tearoffs(GtkUIManager* manager);
	GSList* gtk_ui_manager_get_toplevels(GtkUIManager* manager, GtkUIManagerItemType types);
	char* gtk_ui_manager_get_ui(GtkUIManager* manager);
	GtkWidget* gtk_ui_manager_get_widget(GtkUIManager* manager, const(char)* path);
	void gtk_ui_manager_insert_action_group(GtkUIManager* manager, GtkActionGroup* actionGroup, int pos);
	uint gtk_ui_manager_new_merge_id(GtkUIManager* manager);
	void gtk_ui_manager_remove_action_group(GtkUIManager* manager, GtkActionGroup* actionGroup);
	void gtk_ui_manager_remove_ui(GtkUIManager* manager, uint mergeId);
	void gtk_ui_manager_set_add_tearoffs(GtkUIManager* manager, int addTearoffs);

	// gtk.VBox

	GType gtk_vbox_get_type();
	GtkWidget* gtk_vbox_new(int homogeneous, int spacing);

	// gtk.VButtonBox

	GType gtk_vbutton_box_get_type();
	GtkWidget* gtk_vbutton_box_new();

	// gtk.VPaned

	GType gtk_vpaned_get_type();
	GtkWidget* gtk_vpaned_new();

	// gtk.VScale

	GType gtk_vscale_get_type();
	GtkWidget* gtk_vscale_new(GtkAdjustment* adjustment);
	GtkWidget* gtk_vscale_new_with_range(double min, double max, double step);

	// gtk.VScrollbar

	GType gtk_vscrollbar_get_type();
	GtkWidget* gtk_vscrollbar_new(GtkAdjustment* adjustment);

	// gtk.VSeparator

	GType gtk_vseparator_get_type();
	GtkWidget* gtk_vseparator_new();

	// gtk.Viewport

	GType gtk_viewport_get_type();
	GtkWidget* gtk_viewport_new(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment);
	GdkWindow* gtk_viewport_get_bin_window(GtkViewport* viewport);
	GtkAdjustment* gtk_viewport_get_hadjustment(GtkViewport* viewport);
	GtkShadowType gtk_viewport_get_shadow_type(GtkViewport* viewport);
	GtkAdjustment* gtk_viewport_get_vadjustment(GtkViewport* viewport);
	GdkWindow* gtk_viewport_get_view_window(GtkViewport* viewport);
	void gtk_viewport_set_hadjustment(GtkViewport* viewport, GtkAdjustment* adjustment);
	void gtk_viewport_set_shadow_type(GtkViewport* viewport, GtkShadowType type);
	void gtk_viewport_set_vadjustment(GtkViewport* viewport, GtkAdjustment* adjustment);

	// gtk.VolumeButton

	GType gtk_volume_button_get_type();
	GtkWidget* gtk_volume_button_new();

	// gtk.Widget

	GType gtk_widget_get_type();
	GtkWidget* gtk_widget_new(GType type, const(char)* firstPropertyName, ... );
	GtkTextDirection gtk_widget_get_default_direction();
	GtkStyle* gtk_widget_get_default_style();
	void gtk_widget_pop_composite_child();
	void gtk_widget_push_composite_child();
	void gtk_widget_set_default_direction(GtkTextDirection dir);
	int gtk_widget_activate(GtkWidget* widget);
	void gtk_widget_add_accelerator(GtkWidget* widget, const(char)* accelSignal, GtkAccelGroup* accelGroup, uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags);
	void gtk_widget_add_device_events(GtkWidget* widget, GdkDevice* device, GdkEventMask events);
	void gtk_widget_add_events(GtkWidget* widget, int events);
	void gtk_widget_add_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	uint gtk_widget_add_tick_callback(GtkWidget* widget, GtkTickCallback callback, void* userData, GDestroyNotify notify);
	int gtk_widget_can_activate_accel(GtkWidget* widget, uint signalId);
	int gtk_widget_child_focus(GtkWidget* widget, GtkDirectionType direction);
	void gtk_widget_child_notify(GtkWidget* widget, const(char)* childProperty);
	void gtk_widget_class_path(GtkWidget* widget, uint* pathLength, char** path, char** pathReversed);
	int gtk_widget_compute_expand(GtkWidget* widget, GtkOrientation orientation);
	PangoContext* gtk_widget_create_pango_context(GtkWidget* widget);
	PangoLayout* gtk_widget_create_pango_layout(GtkWidget* widget, const(char)* text);
	void gtk_widget_destroy(GtkWidget* widget);
	void gtk_widget_destroyed(GtkWidget* widget, GtkWidget** widgetPointer);
	int gtk_widget_device_is_shadowed(GtkWidget* widget, GdkDevice* device);
	GdkDragContext* gtk_drag_begin(GtkWidget* widget, GtkTargetList* targets, GdkDragAction actions, int button, GdkEvent* event);
	GdkDragContext* gtk_drag_begin_with_coordinates(GtkWidget* widget, GtkTargetList* targets, GdkDragAction actions, int button, GdkEvent* event, int x, int y);
	int gtk_drag_check_threshold(GtkWidget* widget, int startX, int startY, int currentX, int currentY);
	void gtk_drag_dest_add_image_targets(GtkWidget* widget);
	void gtk_drag_dest_add_text_targets(GtkWidget* widget);
	void gtk_drag_dest_add_uri_targets(GtkWidget* widget);
	GdkAtom gtk_drag_dest_find_target(GtkWidget* widget, GdkDragContext* context, GtkTargetList* targetList);
	GtkTargetList* gtk_drag_dest_get_target_list(GtkWidget* widget);
	int gtk_drag_dest_get_track_motion(GtkWidget* widget);
	void gtk_drag_dest_set(GtkWidget* widget, GtkDestDefaults flags, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	void gtk_drag_dest_set_proxy(GtkWidget* widget, GdkWindow* proxyWindow, GdkDragProtocol protocol, int useCoordinates);
	void gtk_drag_dest_set_target_list(GtkWidget* widget, GtkTargetList* targetList);
	void gtk_drag_dest_set_track_motion(GtkWidget* widget, int trackMotion);
	void gtk_drag_dest_unset(GtkWidget* widget);
	void gtk_drag_get_data(GtkWidget* widget, GdkDragContext* context, GdkAtom target, uint time);
	void gtk_drag_highlight(GtkWidget* widget);
	void gtk_drag_source_add_image_targets(GtkWidget* widget);
	void gtk_drag_source_add_text_targets(GtkWidget* widget);
	void gtk_drag_source_add_uri_targets(GtkWidget* widget);
	GtkTargetList* gtk_drag_source_get_target_list(GtkWidget* widget);
	void gtk_drag_source_set(GtkWidget* widget, GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions);
	void gtk_drag_source_set_icon_gicon(GtkWidget* widget, GIcon* icon);
	void gtk_drag_source_set_icon_name(GtkWidget* widget, const(char)* iconName);
	void gtk_drag_source_set_icon_pixbuf(GtkWidget* widget, GdkPixbuf* pixbuf);
	void gtk_drag_source_set_icon_stock(GtkWidget* widget, const(char)* stockId);
	void gtk_drag_source_set_target_list(GtkWidget* widget, GtkTargetList* targetList);
	void gtk_drag_source_unset(GtkWidget* widget);
	void gtk_drag_unhighlight(GtkWidget* widget);
	void gtk_widget_draw(GtkWidget* widget, cairo_t* cr);
	void gtk_widget_ensure_style(GtkWidget* widget);
	void gtk_widget_error_bell(GtkWidget* widget);
	int gtk_widget_event(GtkWidget* widget, GdkEvent* event);
	void gtk_widget_freeze_child_notify(GtkWidget* widget);
	AtkObject* gtk_widget_get_accessible(GtkWidget* widget);
	GActionGroup* gtk_widget_get_action_group(GtkWidget* widget, const(char)* prefix);
	int gtk_widget_get_allocated_baseline(GtkWidget* widget);
	int gtk_widget_get_allocated_height(GtkWidget* widget);
	void gtk_widget_get_allocated_size(GtkWidget* widget, GtkAllocation* allocation, int* baseline);
	int gtk_widget_get_allocated_width(GtkWidget* widget);
	void gtk_widget_get_allocation(GtkWidget* widget, GtkAllocation* allocation);
	GtkWidget* gtk_widget_get_ancestor(GtkWidget* widget, GType widgetType);
	int gtk_widget_get_app_paintable(GtkWidget* widget);
	int gtk_widget_get_can_default(GtkWidget* widget);
	int gtk_widget_get_can_focus(GtkWidget* widget);
	void gtk_widget_get_child_requisition(GtkWidget* widget, GtkRequisition* requisition);
	int gtk_widget_get_child_visible(GtkWidget* widget);
	void gtk_widget_get_clip(GtkWidget* widget, GtkAllocation* clip);
	GtkClipboard* gtk_widget_get_clipboard(GtkWidget* widget, GdkAtom selection);
	char* gtk_widget_get_composite_name(GtkWidget* widget);
	int gtk_widget_get_device_enabled(GtkWidget* widget, GdkDevice* device);
	GdkEventMask gtk_widget_get_device_events(GtkWidget* widget, GdkDevice* device);
	GtkTextDirection gtk_widget_get_direction(GtkWidget* widget);
	GdkDisplay* gtk_widget_get_display(GtkWidget* widget);
	int gtk_widget_get_double_buffered(GtkWidget* widget);
	int gtk_widget_get_events(GtkWidget* widget);
	int gtk_widget_get_focus_on_click(GtkWidget* widget);
	PangoFontMap* gtk_widget_get_font_map(GtkWidget* widget);
	cairo_font_options_t* gtk_widget_get_font_options(GtkWidget* widget);
	GdkFrameClock* gtk_widget_get_frame_clock(GtkWidget* widget);
	GtkAlign gtk_widget_get_halign(GtkWidget* widget);
	int gtk_widget_get_has_tooltip(GtkWidget* widget);
	int gtk_widget_get_has_window(GtkWidget* widget);
	int gtk_widget_get_hexpand(GtkWidget* widget);
	int gtk_widget_get_hexpand_set(GtkWidget* widget);
	int gtk_widget_get_mapped(GtkWidget* widget);
	int gtk_widget_get_margin_bottom(GtkWidget* widget);
	int gtk_widget_get_margin_end(GtkWidget* widget);
	int gtk_widget_get_margin_left(GtkWidget* widget);
	int gtk_widget_get_margin_right(GtkWidget* widget);
	int gtk_widget_get_margin_start(GtkWidget* widget);
	int gtk_widget_get_margin_top(GtkWidget* widget);
	GdkModifierType gtk_widget_get_modifier_mask(GtkWidget* widget, GdkModifierIntent intent);
	GtkRcStyle* gtk_widget_get_modifier_style(GtkWidget* widget);
	const(char)* gtk_widget_get_name(GtkWidget* widget);
	int gtk_widget_get_no_show_all(GtkWidget* widget);
	double gtk_widget_get_opacity(GtkWidget* widget);
	PangoContext* gtk_widget_get_pango_context(GtkWidget* widget);
	GtkWidget* gtk_widget_get_parent(GtkWidget* widget);
	GdkWindow* gtk_widget_get_parent_window(GtkWidget* widget);
	GtkWidgetPath* gtk_widget_get_path(GtkWidget* widget);
	void gtk_widget_get_pointer(GtkWidget* widget, int* x, int* y);
	void gtk_widget_get_preferred_height(GtkWidget* widget, int* minimumHeight, int* naturalHeight);
	void gtk_widget_get_preferred_height_and_baseline_for_width(GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight, int* minimumBaseline, int* naturalBaseline);
	void gtk_widget_get_preferred_height_for_width(GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight);
	void gtk_widget_get_preferred_size(GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize);
	void gtk_widget_get_preferred_width(GtkWidget* widget, int* minimumWidth, int* naturalWidth);
	void gtk_widget_get_preferred_width_for_height(GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth);
	int gtk_widget_get_realized(GtkWidget* widget);
	int gtk_widget_get_receives_default(GtkWidget* widget);
	GtkSizeRequestMode gtk_widget_get_request_mode(GtkWidget* widget);
	void gtk_widget_get_requisition(GtkWidget* widget, GtkRequisition* requisition);
	GdkWindow* gtk_widget_get_root_window(GtkWidget* widget);
	int gtk_widget_get_scale_factor(GtkWidget* widget);
	GdkScreen* gtk_widget_get_screen(GtkWidget* widget);
	int gtk_widget_get_sensitive(GtkWidget* widget);
	GtkSettings* gtk_widget_get_settings(GtkWidget* widget);
	void gtk_widget_get_size_request(GtkWidget* widget, int* width, int* height);
	GtkStateType gtk_widget_get_state(GtkWidget* widget);
	GtkStateFlags gtk_widget_get_state_flags(GtkWidget* widget);
	GtkStyle* gtk_widget_get_style(GtkWidget* widget);
	GtkStyleContext* gtk_widget_get_style_context(GtkWidget* widget);
	int gtk_widget_get_support_multidevice(GtkWidget* widget);
	GObject* gtk_widget_get_template_child(GtkWidget* widget, GType widgetType, const(char)* name);
	char* gtk_widget_get_tooltip_markup(GtkWidget* widget);
	char* gtk_widget_get_tooltip_text(GtkWidget* widget);
	GtkWindow* gtk_widget_get_tooltip_window(GtkWidget* widget);
	GtkWidget* gtk_widget_get_toplevel(GtkWidget* widget);
	GtkAlign gtk_widget_get_valign(GtkWidget* widget);
	GtkAlign gtk_widget_get_valign_with_baseline(GtkWidget* widget);
	int gtk_widget_get_vexpand(GtkWidget* widget);
	int gtk_widget_get_vexpand_set(GtkWidget* widget);
	int gtk_widget_get_visible(GtkWidget* widget);
	GdkVisual* gtk_widget_get_visual(GtkWidget* widget);
	GdkWindow* gtk_widget_get_window(GtkWidget* widget);
	void gtk_grab_add(GtkWidget* widget);
	void gtk_widget_grab_default(GtkWidget* widget);
	void gtk_widget_grab_focus(GtkWidget* widget);
	void gtk_grab_remove(GtkWidget* widget);
	int gtk_widget_has_default(GtkWidget* widget);
	int gtk_widget_has_focus(GtkWidget* widget);
	int gtk_widget_has_grab(GtkWidget* widget);
	int gtk_widget_has_rc_style(GtkWidget* widget);
	int gtk_widget_has_screen(GtkWidget* widget);
	int gtk_widget_has_visible_focus(GtkWidget* widget);
	void gtk_widget_hide(GtkWidget* widget);
	int gtk_widget_hide_on_delete(GtkWidget* widget);
	int gtk_widget_in_destruction(GtkWidget* widget);
	void gtk_widget_init_template(GtkWidget* widget);
	void gtk_widget_input_shape_combine_region(GtkWidget* widget, cairo_region_t* region);
	void gtk_widget_insert_action_group(GtkWidget* widget, const(char)* name, GActionGroup* group);
	int gtk_widget_intersect(GtkWidget* widget, GdkRectangle* area, GdkRectangle* intersection);
	int gtk_widget_is_ancestor(GtkWidget* widget, GtkWidget* ancestor);
	int gtk_widget_is_composited(GtkWidget* widget);
	int gtk_widget_is_drawable(GtkWidget* widget);
	int gtk_widget_is_focus(GtkWidget* widget);
	int gtk_widget_is_sensitive(GtkWidget* widget);
	int gtk_widget_is_toplevel(GtkWidget* widget);
	int gtk_widget_is_visible(GtkWidget* widget);
	int gtk_widget_keynav_failed(GtkWidget* widget, GtkDirectionType direction);
	GList* gtk_widget_list_accel_closures(GtkWidget* widget);
	char** gtk_widget_list_action_prefixes(GtkWidget* widget);
	GList* gtk_widget_list_mnemonic_labels(GtkWidget* widget);
	void gtk_widget_map(GtkWidget* widget);
	int gtk_widget_mnemonic_activate(GtkWidget* widget, int groupCycling);
	void gtk_widget_modify_base(GtkWidget* widget, GtkStateType state, GdkColor* color);
	void gtk_widget_modify_bg(GtkWidget* widget, GtkStateType state, GdkColor* color);
	void gtk_widget_modify_cursor(GtkWidget* widget, GdkColor* primary, GdkColor* secondary);
	void gtk_widget_modify_fg(GtkWidget* widget, GtkStateType state, GdkColor* color);
	void gtk_widget_modify_font(GtkWidget* widget, PangoFontDescription* fontDesc);
	void gtk_widget_modify_style(GtkWidget* widget, GtkRcStyle* style);
	void gtk_widget_modify_text(GtkWidget* widget, GtkStateType state, GdkColor* color);
	void gtk_widget_override_background_color(GtkWidget* widget, GtkStateFlags state, GdkRGBA* color);
	void gtk_widget_override_color(GtkWidget* widget, GtkStateFlags state, GdkRGBA* color);
	void gtk_widget_override_cursor(GtkWidget* widget, GdkRGBA* cursor, GdkRGBA* secondaryCursor);
	void gtk_widget_override_font(GtkWidget* widget, PangoFontDescription* fontDesc);
	void gtk_widget_override_symbolic_color(GtkWidget* widget, const(char)* name, GdkRGBA* color);
	void gtk_widget_path(GtkWidget* widget, uint* pathLength, char** path, char** pathReversed);
	void gtk_widget_queue_allocate(GtkWidget* widget);
	void gtk_widget_queue_compute_expand(GtkWidget* widget);
	void gtk_widget_queue_draw(GtkWidget* widget);
	void gtk_widget_queue_draw_area(GtkWidget* widget, int x, int y, int width, int height);
	void gtk_widget_queue_draw_region(GtkWidget* widget, cairo_region_t* region);
	void gtk_widget_queue_resize(GtkWidget* widget);
	void gtk_widget_queue_resize_no_redraw(GtkWidget* widget);
	void gtk_widget_realize(GtkWidget* widget);
	cairo_region_t* gtk_widget_region_intersect(GtkWidget* widget, cairo_region_t* region);
	void gtk_widget_register_window(GtkWidget* widget, GdkWindow* window);
	int gtk_widget_remove_accelerator(GtkWidget* widget, GtkAccelGroup* accelGroup, uint accelKey, GdkModifierType accelMods);
	void gtk_widget_remove_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	void gtk_widget_remove_tick_callback(GtkWidget* widget, uint id);
	GdkPixbuf* gtk_widget_render_icon(GtkWidget* widget, const(char)* stockId, GtkIconSize size, const(char)* detail);
	GdkPixbuf* gtk_widget_render_icon_pixbuf(GtkWidget* widget, const(char)* stockId, GtkIconSize size);
	void gtk_widget_reparent(GtkWidget* widget, GtkWidget* newParent);
	void gtk_widget_reset_rc_styles(GtkWidget* widget);
	void gtk_widget_reset_style(GtkWidget* widget);
	int gtk_widget_send_expose(GtkWidget* widget, GdkEvent* event);
	int gtk_widget_send_focus_change(GtkWidget* widget, GdkEvent* event);
	void gtk_widget_set_accel_path(GtkWidget* widget, const(char)* accelPath, GtkAccelGroup* accelGroup);
	void gtk_widget_set_allocation(GtkWidget* widget, GtkAllocation* allocation);
	void gtk_widget_set_app_paintable(GtkWidget* widget, int appPaintable);
	void gtk_widget_set_can_default(GtkWidget* widget, int canDefault);
	void gtk_widget_set_can_focus(GtkWidget* widget, int canFocus);
	void gtk_widget_set_child_visible(GtkWidget* widget, int isVisible);
	void gtk_widget_set_clip(GtkWidget* widget, GtkAllocation* clip);
	void gtk_widget_set_composite_name(GtkWidget* widget, const(char)* name);
	void gtk_widget_set_device_enabled(GtkWidget* widget, GdkDevice* device, int enabled);
	void gtk_widget_set_device_events(GtkWidget* widget, GdkDevice* device, GdkEventMask events);
	void gtk_widget_set_direction(GtkWidget* widget, GtkTextDirection dir);
	void gtk_widget_set_double_buffered(GtkWidget* widget, int doubleBuffered);
	void gtk_widget_set_events(GtkWidget* widget, int events);
	void gtk_widget_set_focus_on_click(GtkWidget* widget, int focusOnClick);
	void gtk_widget_set_font_map(GtkWidget* widget, PangoFontMap* fontMap);
	void gtk_widget_set_font_options(GtkWidget* widget, cairo_font_options_t* options);
	void gtk_widget_set_halign(GtkWidget* widget, GtkAlign align_);
	void gtk_widget_set_has_tooltip(GtkWidget* widget, int hasTooltip);
	void gtk_widget_set_has_window(GtkWidget* widget, int hasWindow);
	void gtk_widget_set_hexpand(GtkWidget* widget, int expand);
	void gtk_widget_set_hexpand_set(GtkWidget* widget, int set);
	void gtk_widget_set_mapped(GtkWidget* widget, int mapped);
	void gtk_widget_set_margin_bottom(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_end(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_left(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_right(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_start(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_top(GtkWidget* widget, int margin);
	void gtk_widget_set_name(GtkWidget* widget, const(char)* name);
	void gtk_widget_set_no_show_all(GtkWidget* widget, int noShowAll);
	void gtk_widget_set_opacity(GtkWidget* widget, double opacity);
	void gtk_widget_set_parent(GtkWidget* widget, GtkWidget* parent);
	void gtk_widget_set_parent_window(GtkWidget* widget, GdkWindow* parentWindow);
	void gtk_widget_set_realized(GtkWidget* widget, int realized);
	void gtk_widget_set_receives_default(GtkWidget* widget, int receivesDefault);
	void gtk_widget_set_redraw_on_allocate(GtkWidget* widget, int redrawOnAllocate);
	void gtk_widget_set_sensitive(GtkWidget* widget, int sensitive);
	void gtk_widget_set_size_request(GtkWidget* widget, int width, int height);
	void gtk_widget_set_state(GtkWidget* widget, GtkStateType state);
	void gtk_widget_set_state_flags(GtkWidget* widget, GtkStateFlags flags, int clear);
	void gtk_widget_set_style(GtkWidget* widget, GtkStyle* style);
	void gtk_widget_set_support_multidevice(GtkWidget* widget, int supportMultidevice);
	void gtk_widget_set_tooltip_markup(GtkWidget* widget, const(char)* markup);
	void gtk_widget_set_tooltip_text(GtkWidget* widget, const(char)* text);
	void gtk_widget_set_tooltip_window(GtkWidget* widget, GtkWindow* customWindow);
	void gtk_widget_set_valign(GtkWidget* widget, GtkAlign align_);
	void gtk_widget_set_vexpand(GtkWidget* widget, int expand);
	void gtk_widget_set_vexpand_set(GtkWidget* widget, int set);
	void gtk_widget_set_visible(GtkWidget* widget, int visible);
	void gtk_widget_set_visual(GtkWidget* widget, GdkVisual* visual);
	void gtk_widget_set_window(GtkWidget* widget, GdkWindow* window);
	void gtk_widget_shape_combine_region(GtkWidget* widget, cairo_region_t* region);
	void gtk_widget_show(GtkWidget* widget);
	void gtk_widget_show_all(GtkWidget* widget);
	void gtk_widget_show_now(GtkWidget* widget);
	void gtk_widget_size_allocate(GtkWidget* widget, GtkAllocation* allocation);
	void gtk_widget_size_allocate_with_baseline(GtkWidget* widget, GtkAllocation* allocation, int baseline);
	void gtk_widget_size_request(GtkWidget* widget, GtkRequisition* requisition);
	void gtk_widget_style_attach(GtkWidget* widget);
	void gtk_widget_style_get(GtkWidget* widget, const(char)* firstPropertyName, ... );
	void gtk_widget_style_get_property(GtkWidget* widget, const(char)* propertyName, GValue* value);
	void gtk_widget_style_get_valist(GtkWidget* widget, const(char)* firstPropertyName, void* varArgs);
	void gtk_widget_thaw_child_notify(GtkWidget* widget);
	int gtk_widget_translate_coordinates(GtkWidget* srcWidget, GtkWidget* destWidget, int srcX, int srcY, int* destX, int* destY);
	void gtk_widget_trigger_tooltip_query(GtkWidget* widget);
	void gtk_widget_unmap(GtkWidget* widget);
	void gtk_widget_unparent(GtkWidget* widget);
	void gtk_widget_unrealize(GtkWidget* widget);
	void gtk_widget_unregister_window(GtkWidget* widget, GdkWindow* window);
	void gtk_widget_unset_state_flags(GtkWidget* widget, GtkStateFlags flags);
	int gtk_cairo_should_draw_window(cairo_t* cr, GdkWindow* window);
	void gtk_cairo_transform_to_window(cairo_t* cr, GtkWidget* widget, GdkWindow* window);
	int gtk_distribute_natural_allocation(int extraSpace, uint nRequestedSizes, GtkRequestedSize* sizes);

	// gtk.WidgetAccessible

	GType gtk_widget_accessible_get_type();

	// gtk.WidgetClass

	void gtk_widget_class_bind_template_callback_full(GtkWidgetClass* widgetClass, const(char)* callbackName, GCallback callbackSymbol);
	void gtk_widget_class_bind_template_child_full(GtkWidgetClass* widgetClass, const(char)* name, int internalChild, ptrdiff_t structOffset);
	GParamSpec* gtk_widget_class_find_style_property(GtkWidgetClass* klass, const(char)* propertyName);
	const(char)* gtk_widget_class_get_css_name(GtkWidgetClass* widgetClass);
	void gtk_widget_class_install_style_property(GtkWidgetClass* klass, GParamSpec* pspec);
	void gtk_widget_class_install_style_property_parser(GtkWidgetClass* klass, GParamSpec* pspec, GtkRcPropertyParser parser);
	GParamSpec** gtk_widget_class_list_style_properties(GtkWidgetClass* klass, uint* nProperties);
	void gtk_widget_class_set_accessible_role(GtkWidgetClass* widgetClass, AtkRole role);
	void gtk_widget_class_set_accessible_type(GtkWidgetClass* widgetClass, GType type);
	void gtk_widget_class_set_connect_func(GtkWidgetClass* widgetClass, GtkBuilderConnectFunc connectFunc, void* connectData, GDestroyNotify connectDataDestroy);
	void gtk_widget_class_set_css_name(GtkWidgetClass* widgetClass, const(char)* name);
	void gtk_widget_class_set_template(GtkWidgetClass* widgetClass, GBytes* templateBytes);
	void gtk_widget_class_set_template_from_resource(GtkWidgetClass* widgetClass, const(char)* resourceName);

	// gtk.WidgetPath

	GType gtk_widget_path_get_type();
	GtkWidgetPath* gtk_widget_path_new();
	int gtk_widget_path_append_for_widget(GtkWidgetPath* path, GtkWidget* widget);
	int gtk_widget_path_append_type(GtkWidgetPath* path, GType type);
	int gtk_widget_path_append_with_siblings(GtkWidgetPath* path, GtkWidgetPath* siblings, uint siblingIndex);
	GtkWidgetPath* gtk_widget_path_copy(GtkWidgetPath* path);
	void gtk_widget_path_free(GtkWidgetPath* path);
	GType gtk_widget_path_get_object_type(GtkWidgetPath* path);
	int gtk_widget_path_has_parent(GtkWidgetPath* path, GType type);
	int gtk_widget_path_is_type(GtkWidgetPath* path, GType type);
	void gtk_widget_path_iter_add_class(GtkWidgetPath* path, int pos, const(char)* name);
	void gtk_widget_path_iter_add_region(GtkWidgetPath* path, int pos, const(char)* name, GtkRegionFlags flags);
	void gtk_widget_path_iter_clear_classes(GtkWidgetPath* path, int pos);
	void gtk_widget_path_iter_clear_regions(GtkWidgetPath* path, int pos);
	const(char)* gtk_widget_path_iter_get_name(GtkWidgetPath* path, int pos);
	const(char)* gtk_widget_path_iter_get_object_name(GtkWidgetPath* path, int pos);
	GType gtk_widget_path_iter_get_object_type(GtkWidgetPath* path, int pos);
	uint gtk_widget_path_iter_get_sibling_index(GtkWidgetPath* path, int pos);
	GtkWidgetPath* gtk_widget_path_iter_get_siblings(GtkWidgetPath* path, int pos);
	GtkStateFlags gtk_widget_path_iter_get_state(GtkWidgetPath* path, int pos);
	int gtk_widget_path_iter_has_class(GtkWidgetPath* path, int pos, const(char)* name);
	int gtk_widget_path_iter_has_name(GtkWidgetPath* path, int pos, const(char)* name);
	int gtk_widget_path_iter_has_qclass(GtkWidgetPath* path, int pos, GQuark qname);
	int gtk_widget_path_iter_has_qname(GtkWidgetPath* path, int pos, GQuark qname);
	int gtk_widget_path_iter_has_qregion(GtkWidgetPath* path, int pos, GQuark qname, GtkRegionFlags* flags);
	int gtk_widget_path_iter_has_region(GtkWidgetPath* path, int pos, const(char)* name, GtkRegionFlags* flags);
	GSList* gtk_widget_path_iter_list_classes(GtkWidgetPath* path, int pos);
	GSList* gtk_widget_path_iter_list_regions(GtkWidgetPath* path, int pos);
	void gtk_widget_path_iter_remove_class(GtkWidgetPath* path, int pos, const(char)* name);
	void gtk_widget_path_iter_remove_region(GtkWidgetPath* path, int pos, const(char)* name);
	void gtk_widget_path_iter_set_name(GtkWidgetPath* path, int pos, const(char)* name);
	void gtk_widget_path_iter_set_object_name(GtkWidgetPath* path, int pos, const(char)* name);
	void gtk_widget_path_iter_set_object_type(GtkWidgetPath* path, int pos, GType type);
	void gtk_widget_path_iter_set_state(GtkWidgetPath* path, int pos, GtkStateFlags state);
	int gtk_widget_path_length(GtkWidgetPath* path);
	void gtk_widget_path_prepend_type(GtkWidgetPath* path, GType type);
	GtkWidgetPath* gtk_widget_path_ref(GtkWidgetPath* path);
	char* gtk_widget_path_to_string(GtkWidgetPath* path);
	void gtk_widget_path_unref(GtkWidgetPath* path);

	// gtk.Window

	GType gtk_window_get_type();
	GtkWidget* gtk_window_new(GtkWindowType type);
	GList* gtk_window_get_default_icon_list();
	const(char)* gtk_window_get_default_icon_name();
	GList* gtk_window_list_toplevels();
	void gtk_window_set_auto_startup_notification(int setting);
	void gtk_window_set_default_icon(GdkPixbuf* icon);
	int gtk_window_set_default_icon_from_file(char* filename, GError** err);
	void gtk_window_set_default_icon_list(GList* list);
	void gtk_window_set_default_icon_name(const(char)* name);
	void gtk_window_set_interactive_debugging(int enable);
	int gtk_window_activate_default(GtkWindow* window);
	int gtk_window_activate_focus(GtkWindow* window);
	int gtk_window_activate_key(GtkWindow* window, GdkEventKey* event);
	void gtk_window_add_accel_group(GtkWindow* window, GtkAccelGroup* accelGroup);
	void gtk_window_add_mnemonic(GtkWindow* window, uint keyval, GtkWidget* target);
	void gtk_window_begin_move_drag(GtkWindow* window, int button, int rootX, int rootY, uint timestamp);
	void gtk_window_begin_resize_drag(GtkWindow* window, GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp);
	void gtk_window_close(GtkWindow* window);
	void gtk_window_deiconify(GtkWindow* window);
	void gtk_window_fullscreen(GtkWindow* window);
	void gtk_window_fullscreen_on_monitor(GtkWindow* window, GdkScreen* screen, int monitor);
	int gtk_window_get_accept_focus(GtkWindow* window);
	GtkApplication* gtk_window_get_application(GtkWindow* window);
	GtkWidget* gtk_window_get_attached_to(GtkWindow* window);
	int gtk_window_get_decorated(GtkWindow* window);
	void gtk_window_get_default_size(GtkWindow* window, int* width, int* height);
	GtkWidget* gtk_window_get_default_widget(GtkWindow* window);
	int gtk_window_get_deletable(GtkWindow* window);
	int gtk_window_get_destroy_with_parent(GtkWindow* window);
	GtkWidget* gtk_window_get_focus(GtkWindow* window);
	int gtk_window_get_focus_on_map(GtkWindow* window);
	int gtk_window_get_focus_visible(GtkWindow* window);
	GdkGravity gtk_window_get_gravity(GtkWindow* window);
	GtkWindowGroup* gtk_window_get_group(GtkWindow* window);
	int gtk_window_get_has_resize_grip(GtkWindow* window);
	int gtk_window_get_hide_titlebar_when_maximized(GtkWindow* window);
	GdkPixbuf* gtk_window_get_icon(GtkWindow* window);
	GList* gtk_window_get_icon_list(GtkWindow* window);
	const(char)* gtk_window_get_icon_name(GtkWindow* window);
	GdkModifierType gtk_window_get_mnemonic_modifier(GtkWindow* window);
	int gtk_window_get_mnemonics_visible(GtkWindow* window);
	int gtk_window_get_modal(GtkWindow* window);
	double gtk_window_get_opacity(GtkWindow* window);
	void gtk_window_get_position(GtkWindow* window, int* rootX, int* rootY);
	int gtk_window_get_resizable(GtkWindow* window);
	int gtk_window_get_resize_grip_area(GtkWindow* window, GdkRectangle* rect);
	const(char)* gtk_window_get_role(GtkWindow* window);
	GdkScreen* gtk_window_get_screen(GtkWindow* window);
	void gtk_window_get_size(GtkWindow* window, int* width, int* height);
	int gtk_window_get_skip_pager_hint(GtkWindow* window);
	int gtk_window_get_skip_taskbar_hint(GtkWindow* window);
	const(char)* gtk_window_get_title(GtkWindow* window);
	GtkWidget* gtk_window_get_titlebar(GtkWindow* window);
	GtkWindow* gtk_window_get_transient_for(GtkWindow* window);
	GdkWindowTypeHint gtk_window_get_type_hint(GtkWindow* window);
	int gtk_window_get_urgency_hint(GtkWindow* window);
	GtkWindowType gtk_window_get_window_type(GtkWindow* window);
	int gtk_window_has_group(GtkWindow* window);
	int gtk_window_has_toplevel_focus(GtkWindow* window);
	void gtk_window_iconify(GtkWindow* window);
	int gtk_window_is_active(GtkWindow* window);
	int gtk_window_is_maximized(GtkWindow* window);
	void gtk_window_maximize(GtkWindow* window);
	int gtk_window_mnemonic_activate(GtkWindow* window, uint keyval, GdkModifierType modifier);
	void gtk_window_move(GtkWindow* window, int x, int y);
	int gtk_window_parse_geometry(GtkWindow* window, const(char)* geometry);
	void gtk_window_present(GtkWindow* window);
	void gtk_window_present_with_time(GtkWindow* window, uint timestamp);
	int gtk_window_propagate_key_event(GtkWindow* window, GdkEventKey* event);
	void gtk_window_remove_accel_group(GtkWindow* window, GtkAccelGroup* accelGroup);
	void gtk_window_remove_mnemonic(GtkWindow* window, uint keyval, GtkWidget* target);
	void gtk_window_reshow_with_initial_size(GtkWindow* window);
	void gtk_window_resize(GtkWindow* window, int width, int height);
	int gtk_window_resize_grip_is_visible(GtkWindow* window);
	void gtk_window_resize_to_geometry(GtkWindow* window, int width, int height);
	void gtk_window_set_accept_focus(GtkWindow* window, int setting);
	void gtk_window_set_application(GtkWindow* window, GtkApplication* application);
	void gtk_window_set_attached_to(GtkWindow* window, GtkWidget* attachWidget);
	void gtk_window_set_decorated(GtkWindow* window, int setting);
	void gtk_window_set_default(GtkWindow* window, GtkWidget* defaultWidget);
	void gtk_window_set_default_geometry(GtkWindow* window, int width, int height);
	void gtk_window_set_default_size(GtkWindow* window, int width, int height);
	void gtk_window_set_deletable(GtkWindow* window, int setting);
	void gtk_window_set_destroy_with_parent(GtkWindow* window, int setting);
	void gtk_window_set_focus(GtkWindow* window, GtkWidget* focus);
	void gtk_window_set_focus_on_map(GtkWindow* window, int setting);
	void gtk_window_set_focus_visible(GtkWindow* window, int setting);
	void gtk_window_set_geometry_hints(GtkWindow* window, GtkWidget* geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask);
	void gtk_window_set_gravity(GtkWindow* window, GdkGravity gravity);
	void gtk_window_set_has_resize_grip(GtkWindow* window, int value);
	void gtk_window_set_has_user_ref_count(GtkWindow* window, int setting);
	void gtk_window_set_hide_titlebar_when_maximized(GtkWindow* window, int setting);
	void gtk_window_set_icon(GtkWindow* window, GdkPixbuf* icon);
	int gtk_window_set_icon_from_file(GtkWindow* window, char* filename, GError** err);
	void gtk_window_set_icon_list(GtkWindow* window, GList* list);
	void gtk_window_set_icon_name(GtkWindow* window, const(char)* name);
	void gtk_window_set_keep_above(GtkWindow* window, int setting);
	void gtk_window_set_keep_below(GtkWindow* window, int setting);
	void gtk_window_set_mnemonic_modifier(GtkWindow* window, GdkModifierType modifier);
	void gtk_window_set_mnemonics_visible(GtkWindow* window, int setting);
	void gtk_window_set_modal(GtkWindow* window, int modal);
	void gtk_window_set_opacity(GtkWindow* window, double opacity);
	void gtk_window_set_position(GtkWindow* window, GtkWindowPosition position);
	void gtk_window_set_resizable(GtkWindow* window, int resizable);
	void gtk_window_set_role(GtkWindow* window, const(char)* role);
	void gtk_window_set_screen(GtkWindow* window, GdkScreen* screen);
	void gtk_window_set_skip_pager_hint(GtkWindow* window, int setting);
	void gtk_window_set_skip_taskbar_hint(GtkWindow* window, int setting);
	void gtk_window_set_startup_id(GtkWindow* window, const(char)* startupId);
	void gtk_window_set_title(GtkWindow* window, const(char)* title);
	void gtk_window_set_titlebar(GtkWindow* window, GtkWidget* titlebar);
	void gtk_window_set_transient_for(GtkWindow* window, GtkWindow* parent);
	void gtk_window_set_type_hint(GtkWindow* window, GdkWindowTypeHint hint);
	void gtk_window_set_urgency_hint(GtkWindow* window, int setting);
	void gtk_window_set_wmclass(GtkWindow* window, const(char)* wmclassName, const(char)* wmclassClass);
	void gtk_window_stick(GtkWindow* window);
	void gtk_window_unfullscreen(GtkWindow* window);
	void gtk_window_unmaximize(GtkWindow* window);
	void gtk_window_unstick(GtkWindow* window);
	int gtk_show_uri_on_window(GtkWindow* parent, const(char)* uri, uint timestamp, GError** err);

	// gtk.WindowAccessible

	GType gtk_window_accessible_get_type();

	// gtk.WindowGroup

	GType gtk_window_group_get_type();
	GtkWindowGroup* gtk_window_group_new();
	void gtk_window_group_add_window(GtkWindowGroup* windowGroup, GtkWindow* window);
	GtkWidget* gtk_window_group_get_current_device_grab(GtkWindowGroup* windowGroup, GdkDevice* device);
	GtkWidget* gtk_window_group_get_current_grab(GtkWindowGroup* windowGroup);
	GList* gtk_window_group_list_windows(GtkWindowGroup* windowGroup);
	void gtk_window_group_remove_window(GtkWindowGroup* windowGroup, GtkWindow* window);

	// gtk.Main

	void gtk_device_grab_add(GtkWidget* widget, GdkDevice* device, int blockOthers);
	void gtk_device_grab_remove(GtkWidget* widget, GdkDevice* device);
	void gtk_disable_setlocale();
	int gtk_events_pending();
	GdkEvent* gtk_get_current_event();
	GdkDevice* gtk_get_current_event_device();
	int gtk_get_current_event_state(GdkModifierType* state);
	uint gtk_get_current_event_time();
	uint gtk_get_debug_flags();
	PangoLanguage* gtk_get_default_language();
	GtkWidget* gtk_get_event_widget(GdkEvent* event);
	GtkTextDirection gtk_get_locale_direction();
	GOptionGroup* gtk_get_option_group(int openDefaultDisplay);
	GtkWidget* gtk_grab_get_current();
	void gtk_init(int* argc, char*** argv);
	int gtk_init_check(int* argc, char*** argv);
	int gtk_init_with_args(int* argc, char*** argv, const(char)* parameterString, GOptionEntry* entries, const(char)* translationDomain, GError** err);
	uint gtk_key_snooper_install(GtkKeySnoopFunc snooper, void* funcData);
	void gtk_key_snooper_remove(uint snooperHandlerId);
	void gtk_main();
	void gtk_main_do_event(GdkEvent* event);
	int gtk_main_iteration();
	int gtk_main_iteration_do(int blocking);
	uint gtk_main_level();
	void gtk_main_quit();
	int gtk_parse_args(int* argc, char*** argv);
	void gtk_propagate_event(GtkWidget* widget, GdkEvent* event);
	void gtk_set_debug_flags(uint flags);

	// gtk.Testing

	GtkWidget* gtk_test_create_simple_window(const(char)* windowTitle, const(char)* dialogText);
	GtkWidget* gtk_test_create_widget(GType widgetType, const(char)* firstPropertyName, ... );
	GtkWidget* gtk_test_display_button_window(const(char)* windowTitle, const(char)* dialogText, ... );
	GtkWidget* gtk_test_find_label(GtkWidget* widget, const(char)* labelPattern);
	GtkWidget* gtk_test_find_sibling(GtkWidget* baseWidget, GType widgetType);
	GtkWidget* gtk_test_find_widget(GtkWidget* widget, const(char)* labelPattern, GType widgetType);
	void gtk_test_init(int* argcp, char*** argvp, ... );
	GType* gtk_test_list_all_types(uint* nTypes);
	void gtk_test_register_all_types();
	double gtk_test_slider_get_value(GtkWidget* widget);
	void gtk_test_slider_set_perc(GtkWidget* widget, double percentage);
	int gtk_test_spin_button_click(GtkSpinButton* spinner, uint button, int upwards);
	char* gtk_test_text_get(GtkWidget* widget);
	void gtk_test_text_set(GtkWidget* widget, const(char)* string_);
	int gtk_test_widget_click(GtkWidget* widget, uint button, GdkModifierType modifiers);
	int gtk_test_widget_send_key(GtkWidget* widget, uint keyval, GdkModifierType modifiers);
	void gtk_test_widget_wait_for_draw(GtkWidget* widget);

	// gtk.DragAndDrop

	void gtk_drag_cancel(GdkDragContext* context);
	void gtk_drag_finish(GdkDragContext* context, int success, int del, uint time);
	GtkWidget* gtk_drag_get_source_widget(GdkDragContext* context);
	void gtk_drag_set_icon_default(GdkDragContext* context);
	void gtk_drag_set_icon_gicon(GdkDragContext* context, GIcon* icon, int hotX, int hotY);
	void gtk_drag_set_icon_name(GdkDragContext* context, const(char)* iconName, int hotX, int hotY);
	void gtk_drag_set_icon_pixbuf(GdkDragContext* context, GdkPixbuf* pixbuf, int hotX, int hotY);
	void gtk_drag_set_icon_stock(GdkDragContext* context, const(char)* stockId, int hotX, int hotY);
	void gtk_drag_set_icon_surface(GdkDragContext* context, cairo_surface_t* surface);
	void gtk_drag_set_icon_widget(GdkDragContext* context, GtkWidget* widget, int hotX, int hotY);
	void gtk_draw_insertion_cursor(GtkWidget* widget, cairo_t* cr, GdkRectangle* location, int isPrimary, GtkTextDirection direction, int drawArrow);

	// gtk.IconSize

	GtkIconSize gtk_icon_size_from_name(const(char)* name);
	const(char)* gtk_icon_size_get_name(GtkIconSize size);
	int gtk_icon_size_lookup(GtkIconSize size, int* width, int* height);
	int gtk_icon_size_lookup_for_settings(GtkSettings* settings, GtkIconSize size, int* width, int* height);
	GtkIconSize gtk_icon_size_register(const(char)* name, int width, int height);
	void gtk_icon_size_register_alias(const(char)* alias_, GtkIconSize target);

	// gtk.Version

	const(char)* gtk_check_version(uint requiredMajor, uint requiredMinor, uint requiredMicro);
	uint gtk_get_binary_age();
	uint gtk_get_interface_age();
	uint gtk_get_major_version();
	uint gtk_get_micro_version();
	uint gtk_get_minor_version();
}