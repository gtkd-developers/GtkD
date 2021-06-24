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
	static immutable LIBRARY_GTK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GTK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GTK = ["libgtk-4.so.1"];

__gshared extern(C)
{

	// gtk.ATContext

	GType gtk_at_context_get_type();
	GtkATContext* gtk_at_context_create(GtkAccessibleRole accessibleRole, GtkAccessible* accessible, GdkDisplay* display);
	GtkAccessible* gtk_at_context_get_accessible(GtkATContext* self);
	GtkAccessibleRole gtk_at_context_get_accessible_role(GtkATContext* self);

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
	GdkPaintable* gtk_about_dialog_get_logo(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_logo_icon_name(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_program_name(GtkAboutDialog* about);
	const(char)* gtk_about_dialog_get_system_information(GtkAboutDialog* about);
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
	void gtk_about_dialog_set_logo(GtkAboutDialog* about, GdkPaintable* logo);
	void gtk_about_dialog_set_logo_icon_name(GtkAboutDialog* about, const(char)* iconName);
	void gtk_about_dialog_set_program_name(GtkAboutDialog* about, const(char)* name);
	void gtk_about_dialog_set_system_information(GtkAboutDialog* about, const(char)* systemInformation);
	void gtk_about_dialog_set_translator_credits(GtkAboutDialog* about, const(char)* translatorCredits);
	void gtk_about_dialog_set_version(GtkAboutDialog* about, const(char)* version_);
	void gtk_about_dialog_set_website(GtkAboutDialog* about, const(char)* website);
	void gtk_about_dialog_set_website_label(GtkAboutDialog* about, const(char)* websiteLabel);
	void gtk_about_dialog_set_wrap_license(GtkAboutDialog* about, int wrapLicense);

	// gtk.Accessible

	GType gtk_accessible_get_type();
	GtkAccessibleRole gtk_accessible_get_accessible_role(GtkAccessible* self);
	void gtk_accessible_reset_property(GtkAccessible* self, GtkAccessibleProperty property);
	void gtk_accessible_reset_relation(GtkAccessible* self, GtkAccessibleRelation relation);
	void gtk_accessible_reset_state(GtkAccessible* self, GtkAccessibleState state);
	void gtk_accessible_update_property(GtkAccessible* self, GtkAccessibleProperty firstProperty, ... );
	void gtk_accessible_update_property_value(GtkAccessible* self, int nProperties, GtkAccessibleProperty* properties, GValue* values);
	void gtk_accessible_update_relation(GtkAccessible* self, GtkAccessibleRelation firstRelation, ... );
	void gtk_accessible_update_relation_value(GtkAccessible* self, int nRelations, GtkAccessibleRelation* relations, GValue* values);
	void gtk_accessible_update_state(GtkAccessible* self, GtkAccessibleState firstState, ... );
	void gtk_accessible_update_state_value(GtkAccessible* self, int nStates, GtkAccessibleState* states, GValue* values);

	// gtk.ActionBar

	GType gtk_action_bar_get_type();
	GtkWidget* gtk_action_bar_new();
	GtkWidget* gtk_action_bar_get_center_widget(GtkActionBar* actionBar);
	int gtk_action_bar_get_revealed(GtkActionBar* actionBar);
	void gtk_action_bar_pack_end(GtkActionBar* actionBar, GtkWidget* child);
	void gtk_action_bar_pack_start(GtkActionBar* actionBar, GtkWidget* child);
	void gtk_action_bar_remove(GtkActionBar* actionBar, GtkWidget* child);
	void gtk_action_bar_set_center_widget(GtkActionBar* actionBar, GtkWidget* centerWidget);
	void gtk_action_bar_set_revealed(GtkActionBar* actionBar, int revealed);

	// gtk.Actionable

	GType gtk_actionable_get_type();
	const(char)* gtk_actionable_get_action_name(GtkActionable* actionable);
	GVariant* gtk_actionable_get_action_target_value(GtkActionable* actionable);
	void gtk_actionable_set_action_name(GtkActionable* actionable, const(char)* actionName);
	void gtk_actionable_set_action_target(GtkActionable* actionable, const(char)* formatString, ... );
	void gtk_actionable_set_action_target_value(GtkActionable* actionable, GVariant* targetValue);
	void gtk_actionable_set_detailed_action_name(GtkActionable* actionable, const(char)* detailedActionName);

	// gtk.ActivateAction

	GType gtk_activate_action_get_type();
	GtkShortcutAction* gtk_activate_action_get();

	// gtk.Adjustment

	GType gtk_adjustment_get_type();
	GtkAdjustment* gtk_adjustment_new(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize);
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

	// gtk.AlternativeTrigger

	GType gtk_alternative_trigger_get_type();
	GtkShortcutTrigger* gtk_alternative_trigger_new(GtkShortcutTrigger* first, GtkShortcutTrigger* second);
	GtkShortcutTrigger* gtk_alternative_trigger_get_first(GtkAlternativeTrigger* self);
	GtkShortcutTrigger* gtk_alternative_trigger_get_second(GtkAlternativeTrigger* self);

	// gtk.AnyFilter

	GType gtk_any_filter_get_type();
	GtkAnyFilter* gtk_any_filter_new();

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
	int gtk_app_chooser_button_get_modal(GtkAppChooserButton* self);
	int gtk_app_chooser_button_get_show_default_item(GtkAppChooserButton* self);
	int gtk_app_chooser_button_get_show_dialog_item(GtkAppChooserButton* self);
	void gtk_app_chooser_button_set_active_custom_item(GtkAppChooserButton* self, const(char)* name);
	void gtk_app_chooser_button_set_heading(GtkAppChooserButton* self, const(char)* heading);
	void gtk_app_chooser_button_set_modal(GtkAppChooserButton* self, int modal);
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
	void gtk_application_add_window(GtkApplication* application, GtkWindow* window);
	char** gtk_application_get_accels_for_action(GtkApplication* application, const(char)* detailedActionName);
	char** gtk_application_get_actions_for_accel(GtkApplication* application, const(char)* accel);
	GtkWindow* gtk_application_get_active_window(GtkApplication* application);
	GMenu* gtk_application_get_menu_by_id(GtkApplication* application, const(char)* id);
	GMenuModel* gtk_application_get_menubar(GtkApplication* application);
	GtkWindow* gtk_application_get_window_by_id(GtkApplication* application, uint id);
	GList* gtk_application_get_windows(GtkApplication* application);
	uint gtk_application_inhibit(GtkApplication* application, GtkWindow* window, GtkApplicationInhibitFlags flags, const(char)* reason);
	char** gtk_application_list_action_descriptions(GtkApplication* application);
	void gtk_application_remove_window(GtkApplication* application, GtkWindow* window);
	void gtk_application_set_accels_for_action(GtkApplication* application, const(char)* detailedActionName, char** accels);
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

	// gtk.AspectFrame

	GType gtk_aspect_frame_get_type();
	GtkWidget* gtk_aspect_frame_new(float xalign, float yalign, float ratio, int obeyChild);
	GtkWidget* gtk_aspect_frame_get_child(GtkAspectFrame* self);
	int gtk_aspect_frame_get_obey_child(GtkAspectFrame* self);
	float gtk_aspect_frame_get_ratio(GtkAspectFrame* self);
	float gtk_aspect_frame_get_xalign(GtkAspectFrame* self);
	float gtk_aspect_frame_get_yalign(GtkAspectFrame* self);
	void gtk_aspect_frame_set_child(GtkAspectFrame* self, GtkWidget* child);
	void gtk_aspect_frame_set_obey_child(GtkAspectFrame* self, int obeyChild);
	void gtk_aspect_frame_set_ratio(GtkAspectFrame* self, float ratio);
	void gtk_aspect_frame_set_xalign(GtkAspectFrame* self, float xalign);
	void gtk_aspect_frame_set_yalign(GtkAspectFrame* self, float yalign);

	// gtk.Assistant

	GType gtk_assistant_get_type();
	GtkWidget* gtk_assistant_new();
	void gtk_assistant_add_action_widget(GtkAssistant* assistant, GtkWidget* child);
	int gtk_assistant_append_page(GtkAssistant* assistant, GtkWidget* page);
	void gtk_assistant_commit(GtkAssistant* assistant);
	int gtk_assistant_get_current_page(GtkAssistant* assistant);
	int gtk_assistant_get_n_pages(GtkAssistant* assistant);
	GtkWidget* gtk_assistant_get_nth_page(GtkAssistant* assistant, int pageNum);
	GtkAssistantPage* gtk_assistant_get_page(GtkAssistant* assistant, GtkWidget* child);
	int gtk_assistant_get_page_complete(GtkAssistant* assistant, GtkWidget* page);
	const(char)* gtk_assistant_get_page_title(GtkAssistant* assistant, GtkWidget* page);
	GtkAssistantPageType gtk_assistant_get_page_type(GtkAssistant* assistant, GtkWidget* page);
	GListModel* gtk_assistant_get_pages(GtkAssistant* assistant);
	int gtk_assistant_insert_page(GtkAssistant* assistant, GtkWidget* page, int position);
	void gtk_assistant_next_page(GtkAssistant* assistant);
	int gtk_assistant_prepend_page(GtkAssistant* assistant, GtkWidget* page);
	void gtk_assistant_previous_page(GtkAssistant* assistant);
	void gtk_assistant_remove_action_widget(GtkAssistant* assistant, GtkWidget* child);
	void gtk_assistant_remove_page(GtkAssistant* assistant, int pageNum);
	void gtk_assistant_set_current_page(GtkAssistant* assistant, int pageNum);
	void gtk_assistant_set_forward_page_func(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy);
	void gtk_assistant_set_page_complete(GtkAssistant* assistant, GtkWidget* page, int complete);
	void gtk_assistant_set_page_title(GtkAssistant* assistant, GtkWidget* page, const(char)* title);
	void gtk_assistant_set_page_type(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type);
	void gtk_assistant_update_buttons_state(GtkAssistant* assistant);

	// gtk.AssistantPage

	GType gtk_assistant_page_get_type();
	GtkWidget* gtk_assistant_page_get_child(GtkAssistantPage* page);

	// gtk.BinLayout

	GType gtk_bin_layout_get_type();
	GtkLayoutManager* gtk_bin_layout_new();

	// gtk.Bitset

	GType gtk_bitset_get_type();
	GtkBitset* gtk_bitset_new_empty();
	GtkBitset* gtk_bitset_new_range(uint start, uint nItems);
	int gtk_bitset_add(GtkBitset* self, uint value);
	void gtk_bitset_add_range(GtkBitset* self, uint start, uint nItems);
	void gtk_bitset_add_range_closed(GtkBitset* self, uint first, uint last);
	void gtk_bitset_add_rectangle(GtkBitset* self, uint start, uint width, uint height, uint stride);
	int gtk_bitset_contains(GtkBitset* self, uint value);
	GtkBitset* gtk_bitset_copy(GtkBitset* self);
	void gtk_bitset_difference(GtkBitset* self, GtkBitset* other);
	int gtk_bitset_equals(GtkBitset* self, GtkBitset* other);
	uint gtk_bitset_get_maximum(GtkBitset* self);
	uint gtk_bitset_get_minimum(GtkBitset* self);
	uint gtk_bitset_get_nth(GtkBitset* self, uint nth);
	ulong gtk_bitset_get_size(GtkBitset* self);
	ulong gtk_bitset_get_size_in_range(GtkBitset* self, uint first, uint last);
	void gtk_bitset_intersect(GtkBitset* self, GtkBitset* other);
	int gtk_bitset_is_empty(GtkBitset* self);
	GtkBitset* gtk_bitset_ref(GtkBitset* self);
	int gtk_bitset_remove(GtkBitset* self, uint value);
	void gtk_bitset_remove_all(GtkBitset* self);
	void gtk_bitset_remove_range(GtkBitset* self, uint start, uint nItems);
	void gtk_bitset_remove_range_closed(GtkBitset* self, uint first, uint last);
	void gtk_bitset_remove_rectangle(GtkBitset* self, uint start, uint width, uint height, uint stride);
	void gtk_bitset_shift_left(GtkBitset* self, uint amount);
	void gtk_bitset_shift_right(GtkBitset* self, uint amount);
	void gtk_bitset_splice(GtkBitset* self, uint position, uint removed, uint added);
	void gtk_bitset_subtract(GtkBitset* self, GtkBitset* other);
	void gtk_bitset_union(GtkBitset* self, GtkBitset* other);
	void gtk_bitset_unref(GtkBitset* self);

	// gtk.BitsetIter

	uint gtk_bitset_iter_get_value(GtkBitsetIter* iter);
	int gtk_bitset_iter_is_valid(GtkBitsetIter* iter);
	int gtk_bitset_iter_next(GtkBitsetIter* iter, uint* value);
	int gtk_bitset_iter_previous(GtkBitsetIter* iter, uint* value);
	int gtk_bitset_iter_init_at(GtkBitsetIter* iter, GtkBitset* set, uint target, uint* value);
	int gtk_bitset_iter_init_first(GtkBitsetIter* iter, GtkBitset* set, uint* value);
	int gtk_bitset_iter_init_last(GtkBitsetIter* iter, GtkBitset* set, uint* value);

	// gtk.BookmarkList

	GType gtk_bookmark_list_get_type();
	GtkBookmarkList* gtk_bookmark_list_new(const(char)* filename, const(char)* attributes);
	const(char)* gtk_bookmark_list_get_attributes(GtkBookmarkList* self);
	const(char)* gtk_bookmark_list_get_filename(GtkBookmarkList* self);
	int gtk_bookmark_list_get_io_priority(GtkBookmarkList* self);
	int gtk_bookmark_list_is_loading(GtkBookmarkList* self);
	void gtk_bookmark_list_set_attributes(GtkBookmarkList* self, const(char)* attributes);
	void gtk_bookmark_list_set_io_priority(GtkBookmarkList* self, int ioPriority);

	// gtk.BoolFilter

	GType gtk_bool_filter_get_type();
	GtkBoolFilter* gtk_bool_filter_new(GtkExpression* expression);
	GtkExpression* gtk_bool_filter_get_expression(GtkBoolFilter* self);
	int gtk_bool_filter_get_invert(GtkBoolFilter* self);
	void gtk_bool_filter_set_expression(GtkBoolFilter* self, GtkExpression* expression);
	void gtk_bool_filter_set_invert(GtkBoolFilter* self, int invert);

	// gtk.Border

	GType gtk_border_get_type();
	GtkBorder* gtk_border_new();
	GtkBorder* gtk_border_copy(GtkBorder* border);
	void gtk_border_free(GtkBorder* border);

	// gtk.Box

	GType gtk_box_get_type();
	GtkWidget* gtk_box_new(GtkOrientation orientation, int spacing);
	void gtk_box_append(GtkBox* box, GtkWidget* child);
	GtkBaselinePosition gtk_box_get_baseline_position(GtkBox* box);
	int gtk_box_get_homogeneous(GtkBox* box);
	int gtk_box_get_spacing(GtkBox* box);
	void gtk_box_insert_child_after(GtkBox* box, GtkWidget* child, GtkWidget* sibling);
	void gtk_box_prepend(GtkBox* box, GtkWidget* child);
	void gtk_box_remove(GtkBox* box, GtkWidget* child);
	void gtk_box_reorder_child_after(GtkBox* box, GtkWidget* child, GtkWidget* sibling);
	void gtk_box_set_baseline_position(GtkBox* box, GtkBaselinePosition position);
	void gtk_box_set_homogeneous(GtkBox* box, int homogeneous);
	void gtk_box_set_spacing(GtkBox* box, int spacing);

	// gtk.BoxLayout

	GType gtk_box_layout_get_type();
	GtkLayoutManager* gtk_box_layout_new(GtkOrientation orientation);
	GtkBaselinePosition gtk_box_layout_get_baseline_position(GtkBoxLayout* boxLayout);
	int gtk_box_layout_get_homogeneous(GtkBoxLayout* boxLayout);
	uint gtk_box_layout_get_spacing(GtkBoxLayout* boxLayout);
	void gtk_box_layout_set_baseline_position(GtkBoxLayout* boxLayout, GtkBaselinePosition position);
	void gtk_box_layout_set_homogeneous(GtkBoxLayout* boxLayout, int homogeneous);
	void gtk_box_layout_set_spacing(GtkBoxLayout* boxLayout, uint spacing);

	// gtk.Buildable

	GType gtk_buildable_get_type();
	const(char)* gtk_buildable_get_buildable_id(GtkBuildable* buildable);

	// gtk.BuildableParseContext

	const(char)* gtk_buildable_parse_context_get_element(GtkBuildableParseContext* context);
	GPtrArray* gtk_buildable_parse_context_get_element_stack(GtkBuildableParseContext* context);
	void gtk_buildable_parse_context_get_position(GtkBuildableParseContext* context, int* lineNumber, int* charNumber);
	void* gtk_buildable_parse_context_pop(GtkBuildableParseContext* context);
	void gtk_buildable_parse_context_push(GtkBuildableParseContext* context, GtkBuildableParser* parser, void* userData);

	// gtk.Builder

	GType gtk_builder_get_type();
	GtkBuilder* gtk_builder_new();
	GtkBuilder* gtk_builder_new_from_file(const(char)* filename);
	GtkBuilder* gtk_builder_new_from_resource(const(char)* resourcePath);
	GtkBuilder* gtk_builder_new_from_string(const(char)* string_, ptrdiff_t length);
	int gtk_builder_add_from_file(GtkBuilder* builder, const(char)* filename, GError** err);
	int gtk_builder_add_from_resource(GtkBuilder* builder, const(char)* resourcePath, GError** err);
	int gtk_builder_add_from_string(GtkBuilder* builder, const(char)* buffer, ptrdiff_t length, GError** err);
	int gtk_builder_add_objects_from_file(GtkBuilder* builder, const(char)* filename, char** objectIds, GError** err);
	int gtk_builder_add_objects_from_resource(GtkBuilder* builder, const(char)* resourcePath, char** objectIds, GError** err);
	int gtk_builder_add_objects_from_string(GtkBuilder* builder, const(char)* buffer, ptrdiff_t length, char** objectIds, GError** err);
	GClosure* gtk_builder_create_closure(GtkBuilder* builder, const(char)* functionName, GtkBuilderClosureFlags flags, GObject* object, GError** err);
	void gtk_builder_expose_object(GtkBuilder* builder, const(char)* name, GObject* object);
	int gtk_builder_extend_with_template(GtkBuilder* builder, GObject* object, GType templateType, const(char)* buffer, ptrdiff_t length, GError** err);
	GObject* gtk_builder_get_current_object(GtkBuilder* builder);
	GObject* gtk_builder_get_object(GtkBuilder* builder, const(char)* name);
	GSList* gtk_builder_get_objects(GtkBuilder* builder);
	GtkBuilderScope* gtk_builder_get_scope(GtkBuilder* builder);
	const(char)* gtk_builder_get_translation_domain(GtkBuilder* builder);
	GType gtk_builder_get_type_from_name(GtkBuilder* builder, const(char)* typeName);
	void gtk_builder_set_current_object(GtkBuilder* builder, GObject* currentObject);
	void gtk_builder_set_scope(GtkBuilder* builder, GtkBuilderScope* scope_);
	void gtk_builder_set_translation_domain(GtkBuilder* builder, const(char)* domain);
	int gtk_builder_value_from_string(GtkBuilder* builder, GParamSpec* pspec, const(char)* string_, GValue* value, GError** err);
	int gtk_builder_value_from_string_type(GtkBuilder* builder, GType type, const(char)* string_, GValue* value, GError** err);

	// gtk.BuilderCScope

	GType gtk_builder_cscope_get_type();
	GtkBuilderScope* gtk_builder_cscope_new();
	void gtk_builder_cscope_add_callback_symbol(GtkBuilderCScope* self, const(char)* callbackName, GCallback callbackSymbol);
	void gtk_builder_cscope_add_callback_symbols(GtkBuilderCScope* self, const(char)* firstCallbackName, GCallback firstCallbackSymbol, ... );
	GCallback gtk_builder_cscope_lookup_callback_symbol(GtkBuilderCScope* self, const(char)* callbackName);

	// gtk.BuilderListItemFactory

	GType gtk_builder_list_item_factory_get_type();
	GtkListItemFactory* gtk_builder_list_item_factory_new_from_bytes(GtkBuilderScope* scope_, GBytes* bytes);
	GtkListItemFactory* gtk_builder_list_item_factory_new_from_resource(GtkBuilderScope* scope_, const(char)* resourcePath);
	GBytes* gtk_builder_list_item_factory_get_bytes(GtkBuilderListItemFactory* self);
	const(char)* gtk_builder_list_item_factory_get_resource(GtkBuilderListItemFactory* self);
	GtkBuilderScope* gtk_builder_list_item_factory_get_scope(GtkBuilderListItemFactory* self);

	// gtk.BuilderScope

	GType gtk_builder_scope_get_type();

	// gtk.Button

	GType gtk_button_get_type();
	GtkWidget* gtk_button_new();
	GtkWidget* gtk_button_new_from_icon_name(const(char)* iconName);
	GtkWidget* gtk_button_new_with_label(const(char)* label);
	GtkWidget* gtk_button_new_with_mnemonic(const(char)* label);
	GtkWidget* gtk_button_get_child(GtkButton* button);
	int gtk_button_get_has_frame(GtkButton* button);
	const(char)* gtk_button_get_icon_name(GtkButton* button);
	const(char)* gtk_button_get_label(GtkButton* button);
	int gtk_button_get_use_underline(GtkButton* button);
	void gtk_button_set_child(GtkButton* button, GtkWidget* child);
	void gtk_button_set_has_frame(GtkButton* button, int hasFrame);
	void gtk_button_set_icon_name(GtkButton* button, const(char)* iconName);
	void gtk_button_set_label(GtkButton* button, const(char)* label);
	void gtk_button_set_use_underline(GtkButton* button, int useUnderline);

	// gtk.CClosureExpression

	GType gtk_cclosure_expression_get_type();
	GtkExpression* gtk_cclosure_expression_new(GType valueType, GClosureMarshal marshal, uint nParams, GtkExpression** params, GCallback callbackFunc, void* userData, GClosureNotify userDestroy);

	// gtk.Calendar

	GType gtk_calendar_get_type();
	GtkWidget* gtk_calendar_new();
	void gtk_calendar_clear_marks(GtkCalendar* calendar);
	GDateTime* gtk_calendar_get_date(GtkCalendar* self);
	int gtk_calendar_get_day_is_marked(GtkCalendar* calendar, uint day);
	int gtk_calendar_get_show_day_names(GtkCalendar* self);
	int gtk_calendar_get_show_heading(GtkCalendar* self);
	int gtk_calendar_get_show_week_numbers(GtkCalendar* self);
	void gtk_calendar_mark_day(GtkCalendar* calendar, uint day);
	void gtk_calendar_select_day(GtkCalendar* self, GDateTime* date);
	void gtk_calendar_set_show_day_names(GtkCalendar* self, int value);
	void gtk_calendar_set_show_heading(GtkCalendar* self, int value);
	void gtk_calendar_set_show_week_numbers(GtkCalendar* self, int value);
	void gtk_calendar_unmark_day(GtkCalendar* calendar, uint day);

	// gtk.CallbackAction

	GType gtk_callback_action_get_type();
	GtkShortcutAction* gtk_callback_action_new(GtkShortcutFunc callback, void* data, GDestroyNotify destroy);

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
	void gtk_cell_area_request_renderer(GtkCellArea* area, GtkCellRenderer* renderer, GtkOrientation orientation, GtkWidget* widget, int forSize, int* minimumSize, int* naturalSize);
	void gtk_cell_area_set_focus_cell(GtkCellArea* area, GtkCellRenderer* renderer);
	void gtk_cell_area_snapshot(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkSnapshot* snapshot, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, int paintFocus);
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
	int gtk_cell_renderer_get_is_expanded(GtkCellRenderer* cell);
	int gtk_cell_renderer_get_is_expander(GtkCellRenderer* cell);
	void gtk_cell_renderer_get_padding(GtkCellRenderer* cell, int* xpad, int* ypad);
	void gtk_cell_renderer_get_preferred_height(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize);
	void gtk_cell_renderer_get_preferred_height_for_width(GtkCellRenderer* cell, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight);
	void gtk_cell_renderer_get_preferred_size(GtkCellRenderer* cell, GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize);
	void gtk_cell_renderer_get_preferred_width(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize);
	void gtk_cell_renderer_get_preferred_width_for_height(GtkCellRenderer* cell, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth);
	GtkSizeRequestMode gtk_cell_renderer_get_request_mode(GtkCellRenderer* cell);
	int gtk_cell_renderer_get_sensitive(GtkCellRenderer* cell);
	GtkStateFlags gtk_cell_renderer_get_state(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState cellState);
	int gtk_cell_renderer_get_visible(GtkCellRenderer* cell);
	int gtk_cell_renderer_is_activatable(GtkCellRenderer* cell);
	void gtk_cell_renderer_set_alignment(GtkCellRenderer* cell, float xalign, float yalign);
	void gtk_cell_renderer_set_fixed_size(GtkCellRenderer* cell, int width, int height);
	void gtk_cell_renderer_set_is_expanded(GtkCellRenderer* cell, int isExpanded);
	void gtk_cell_renderer_set_is_expander(GtkCellRenderer* cell, int isExpander);
	void gtk_cell_renderer_set_padding(GtkCellRenderer* cell, int xpad, int ypad);
	void gtk_cell_renderer_set_sensitive(GtkCellRenderer* cell, int sensitive);
	void gtk_cell_renderer_set_visible(GtkCellRenderer* cell, int visible);
	void gtk_cell_renderer_snapshot(GtkCellRenderer* cell, GtkSnapshot* snapshot, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags);
	GtkCellEditable* gtk_cell_renderer_start_editing(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags);
	void gtk_cell_renderer_stop_editing(GtkCellRenderer* cell, int canceled);

	// gtk.CellRendererAccel

	GType gtk_cell_renderer_accel_get_type();
	GtkCellRenderer* gtk_cell_renderer_accel_new();

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
	GtkWidget* gtk_cell_view_new_with_text(const(char)* text);
	GtkWidget* gtk_cell_view_new_with_texture(GdkTexture* texture);
	GtkTreePath* gtk_cell_view_get_displayed_row(GtkCellView* cellView);
	int gtk_cell_view_get_draw_sensitive(GtkCellView* cellView);
	int gtk_cell_view_get_fit_model(GtkCellView* cellView);
	GtkTreeModel* gtk_cell_view_get_model(GtkCellView* cellView);
	void gtk_cell_view_set_displayed_row(GtkCellView* cellView, GtkTreePath* path);
	void gtk_cell_view_set_draw_sensitive(GtkCellView* cellView, int drawSensitive);
	void gtk_cell_view_set_fit_model(GtkCellView* cellView, int fitModel);
	void gtk_cell_view_set_model(GtkCellView* cellView, GtkTreeModel* model);

	// gtk.CenterBox

	GType gtk_center_box_get_type();
	GtkWidget* gtk_center_box_new();
	GtkBaselinePosition gtk_center_box_get_baseline_position(GtkCenterBox* self);
	GtkWidget* gtk_center_box_get_center_widget(GtkCenterBox* self);
	GtkWidget* gtk_center_box_get_end_widget(GtkCenterBox* self);
	GtkWidget* gtk_center_box_get_start_widget(GtkCenterBox* self);
	void gtk_center_box_set_baseline_position(GtkCenterBox* self, GtkBaselinePosition position);
	void gtk_center_box_set_center_widget(GtkCenterBox* self, GtkWidget* child);
	void gtk_center_box_set_end_widget(GtkCenterBox* self, GtkWidget* child);
	void gtk_center_box_set_start_widget(GtkCenterBox* self, GtkWidget* child);

	// gtk.CenterLayout

	GType gtk_center_layout_get_type();
	GtkLayoutManager* gtk_center_layout_new();
	GtkBaselinePosition gtk_center_layout_get_baseline_position(GtkCenterLayout* self);
	GtkWidget* gtk_center_layout_get_center_widget(GtkCenterLayout* self);
	GtkWidget* gtk_center_layout_get_end_widget(GtkCenterLayout* self);
	GtkOrientation gtk_center_layout_get_orientation(GtkCenterLayout* self);
	GtkWidget* gtk_center_layout_get_start_widget(GtkCenterLayout* self);
	void gtk_center_layout_set_baseline_position(GtkCenterLayout* self, GtkBaselinePosition baselinePosition);
	void gtk_center_layout_set_center_widget(GtkCenterLayout* self, GtkWidget* widget);
	void gtk_center_layout_set_end_widget(GtkCenterLayout* self, GtkWidget* widget);
	void gtk_center_layout_set_orientation(GtkCenterLayout* self, GtkOrientation orientation);
	void gtk_center_layout_set_start_widget(GtkCenterLayout* self, GtkWidget* widget);

	// gtk.CheckButton

	GType gtk_check_button_get_type();
	GtkWidget* gtk_check_button_new();
	GtkWidget* gtk_check_button_new_with_label(const(char)* label);
	GtkWidget* gtk_check_button_new_with_mnemonic(const(char)* label);
	int gtk_check_button_get_active(GtkCheckButton* self);
	int gtk_check_button_get_inconsistent(GtkCheckButton* checkButton);
	const(char)* gtk_check_button_get_label(GtkCheckButton* self);
	int gtk_check_button_get_use_underline(GtkCheckButton* self);
	void gtk_check_button_set_active(GtkCheckButton* self, int setting);
	void gtk_check_button_set_group(GtkCheckButton* self, GtkCheckButton* group);
	void gtk_check_button_set_inconsistent(GtkCheckButton* checkButton, int inconsistent);
	void gtk_check_button_set_label(GtkCheckButton* self, const(char)* label);
	void gtk_check_button_set_use_underline(GtkCheckButton* self, int setting);

	// gtk.ClosureExpression

	GType gtk_closure_expression_get_type();
	GtkExpression* gtk_closure_expression_new(GType valueType, GClosure* closure, uint nParams, GtkExpression** params);

	// gtk.ColorButton

	GType gtk_color_button_get_type();
	GtkWidget* gtk_color_button_new();
	GtkWidget* gtk_color_button_new_with_rgba(GdkRGBA* rgba);
	int gtk_color_button_get_modal(GtkColorButton* button);
	const(char)* gtk_color_button_get_title(GtkColorButton* button);
	void gtk_color_button_set_modal(GtkColorButton* button, int modal);
	void gtk_color_button_set_title(GtkColorButton* button, const(char)* title);

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

	// gtk.ColumnView

	GType gtk_column_view_get_type();
	GtkWidget* gtk_column_view_new(GtkSelectionModel* model);
	void gtk_column_view_append_column(GtkColumnView* self, GtkColumnViewColumn* column);
	GListModel* gtk_column_view_get_columns(GtkColumnView* self);
	int gtk_column_view_get_enable_rubberband(GtkColumnView* self);
	GtkSelectionModel* gtk_column_view_get_model(GtkColumnView* self);
	int gtk_column_view_get_reorderable(GtkColumnView* self);
	int gtk_column_view_get_show_column_separators(GtkColumnView* self);
	int gtk_column_view_get_show_row_separators(GtkColumnView* self);
	int gtk_column_view_get_single_click_activate(GtkColumnView* self);
	GtkSorter* gtk_column_view_get_sorter(GtkColumnView* self);
	void gtk_column_view_insert_column(GtkColumnView* self, uint position, GtkColumnViewColumn* column);
	void gtk_column_view_remove_column(GtkColumnView* self, GtkColumnViewColumn* column);
	void gtk_column_view_set_enable_rubberband(GtkColumnView* self, int enableRubberband);
	void gtk_column_view_set_model(GtkColumnView* self, GtkSelectionModel* model);
	void gtk_column_view_set_reorderable(GtkColumnView* self, int reorderable);
	void gtk_column_view_set_show_column_separators(GtkColumnView* self, int showColumnSeparators);
	void gtk_column_view_set_show_row_separators(GtkColumnView* self, int showRowSeparators);
	void gtk_column_view_set_single_click_activate(GtkColumnView* self, int singleClickActivate);
	void gtk_column_view_sort_by_column(GtkColumnView* self, GtkColumnViewColumn* column, GtkSortType direction);

	// gtk.ColumnViewColumn

	GType gtk_column_view_column_get_type();
	GtkColumnViewColumn* gtk_column_view_column_new(const(char)* title, GtkListItemFactory* factory);
	GtkColumnView* gtk_column_view_column_get_column_view(GtkColumnViewColumn* self);
	int gtk_column_view_column_get_expand(GtkColumnViewColumn* self);
	GtkListItemFactory* gtk_column_view_column_get_factory(GtkColumnViewColumn* self);
	int gtk_column_view_column_get_fixed_width(GtkColumnViewColumn* self);
	GMenuModel* gtk_column_view_column_get_header_menu(GtkColumnViewColumn* self);
	int gtk_column_view_column_get_resizable(GtkColumnViewColumn* self);
	GtkSorter* gtk_column_view_column_get_sorter(GtkColumnViewColumn* self);
	const(char)* gtk_column_view_column_get_title(GtkColumnViewColumn* self);
	int gtk_column_view_column_get_visible(GtkColumnViewColumn* self);
	void gtk_column_view_column_set_expand(GtkColumnViewColumn* self, int expand);
	void gtk_column_view_column_set_factory(GtkColumnViewColumn* self, GtkListItemFactory* factory);
	void gtk_column_view_column_set_fixed_width(GtkColumnViewColumn* self, int fixedWidth);
	void gtk_column_view_column_set_header_menu(GtkColumnViewColumn* self, GMenuModel* menu);
	void gtk_column_view_column_set_resizable(GtkColumnViewColumn* self, int resizable);
	void gtk_column_view_column_set_sorter(GtkColumnViewColumn* self, GtkSorter* sorter);
	void gtk_column_view_column_set_title(GtkColumnViewColumn* self, const(char)* title);
	void gtk_column_view_column_set_visible(GtkColumnViewColumn* self, int visible);

	// gtk.ComboBox

	GType gtk_combo_box_get_type();
	GtkWidget* gtk_combo_box_new();
	GtkWidget* gtk_combo_box_new_with_entry();
	GtkWidget* gtk_combo_box_new_with_model(GtkTreeModel* model);
	GtkWidget* gtk_combo_box_new_with_model_and_entry(GtkTreeModel* model);
	int gtk_combo_box_get_active(GtkComboBox* comboBox);
	const(char)* gtk_combo_box_get_active_id(GtkComboBox* comboBox);
	int gtk_combo_box_get_active_iter(GtkComboBox* comboBox, GtkTreeIter* iter);
	GtkSensitivityType gtk_combo_box_get_button_sensitivity(GtkComboBox* comboBox);
	GtkWidget* gtk_combo_box_get_child(GtkComboBox* comboBox);
	int gtk_combo_box_get_entry_text_column(GtkComboBox* comboBox);
	int gtk_combo_box_get_has_entry(GtkComboBox* comboBox);
	int gtk_combo_box_get_id_column(GtkComboBox* comboBox);
	GtkTreeModel* gtk_combo_box_get_model(GtkComboBox* comboBox);
	int gtk_combo_box_get_popup_fixed_width(GtkComboBox* comboBox);
	GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func(GtkComboBox* comboBox);
	void gtk_combo_box_popdown(GtkComboBox* comboBox);
	void gtk_combo_box_popup(GtkComboBox* comboBox);
	void gtk_combo_box_popup_for_device(GtkComboBox* comboBox, GdkDevice* device);
	void gtk_combo_box_set_active(GtkComboBox* comboBox, int index);
	int gtk_combo_box_set_active_id(GtkComboBox* comboBox, const(char)* activeId);
	void gtk_combo_box_set_active_iter(GtkComboBox* comboBox, GtkTreeIter* iter);
	void gtk_combo_box_set_button_sensitivity(GtkComboBox* comboBox, GtkSensitivityType sensitivity);
	void gtk_combo_box_set_child(GtkComboBox* comboBox, GtkWidget* child);
	void gtk_combo_box_set_entry_text_column(GtkComboBox* comboBox, int textColumn);
	void gtk_combo_box_set_id_column(GtkComboBox* comboBox, int idColumn);
	void gtk_combo_box_set_model(GtkComboBox* comboBox, GtkTreeModel* model);
	void gtk_combo_box_set_popup_fixed_width(GtkComboBox* comboBox, int fixed);
	void gtk_combo_box_set_row_separator_func(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);

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

	// gtk.ConstantExpression

	GType gtk_constant_expression_get_type();
	GtkExpression* gtk_constant_expression_new(GType valueType, ... );
	GtkExpression* gtk_constant_expression_new_for_value(GValue* value);
	GValue* gtk_constant_expression_get_value(GtkExpression* expression);

	// gtk.Constraint

	GType gtk_constraint_get_type();
	GtkConstraint* gtk_constraint_new(void* target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, void* source, GtkConstraintAttribute sourceAttribute, double multiplier, double constant, int strength);
	GtkConstraint* gtk_constraint_new_constant(void* target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, double constant, int strength);
	double gtk_constraint_get_constant(GtkConstraint* constraint);
	double gtk_constraint_get_multiplier(GtkConstraint* constraint);
	GtkConstraintRelation gtk_constraint_get_relation(GtkConstraint* constraint);
	GtkConstraintTarget* gtk_constraint_get_source(GtkConstraint* constraint);
	GtkConstraintAttribute gtk_constraint_get_source_attribute(GtkConstraint* constraint);
	int gtk_constraint_get_strength(GtkConstraint* constraint);
	GtkConstraintTarget* gtk_constraint_get_target(GtkConstraint* constraint);
	GtkConstraintAttribute gtk_constraint_get_target_attribute(GtkConstraint* constraint);
	int gtk_constraint_is_attached(GtkConstraint* constraint);
	int gtk_constraint_is_constant(GtkConstraint* constraint);
	int gtk_constraint_is_required(GtkConstraint* constraint);

	// gtk.ConstraintGuide

	GType gtk_constraint_guide_get_type();
	GtkConstraintGuide* gtk_constraint_guide_new();
	void gtk_constraint_guide_get_max_size(GtkConstraintGuide* guide, int* width, int* height);
	void gtk_constraint_guide_get_min_size(GtkConstraintGuide* guide, int* width, int* height);
	const(char)* gtk_constraint_guide_get_name(GtkConstraintGuide* guide);
	void gtk_constraint_guide_get_nat_size(GtkConstraintGuide* guide, int* width, int* height);
	GtkConstraintStrength gtk_constraint_guide_get_strength(GtkConstraintGuide* guide);
	void gtk_constraint_guide_set_max_size(GtkConstraintGuide* guide, int width, int height);
	void gtk_constraint_guide_set_min_size(GtkConstraintGuide* guide, int width, int height);
	void gtk_constraint_guide_set_name(GtkConstraintGuide* guide, const(char)* name);
	void gtk_constraint_guide_set_nat_size(GtkConstraintGuide* guide, int width, int height);
	void gtk_constraint_guide_set_strength(GtkConstraintGuide* guide, GtkConstraintStrength strength);

	// gtk.ConstraintLayout

	GType gtk_constraint_layout_get_type();
	GtkLayoutManager* gtk_constraint_layout_new();
	void gtk_constraint_layout_add_constraint(GtkConstraintLayout* layout, GtkConstraint* constraint);
	GList* gtk_constraint_layout_add_constraints_from_description(GtkConstraintLayout* layout, char** lines, size_t nLines, int hspacing, int vspacing, GError** error, const(char)* firstView, ... );
	GList* gtk_constraint_layout_add_constraints_from_descriptionv(GtkConstraintLayout* layout, char** lines, size_t nLines, int hspacing, int vspacing, GHashTable* views, GError** err);
	void gtk_constraint_layout_add_guide(GtkConstraintLayout* layout, GtkConstraintGuide* guide);
	GListModel* gtk_constraint_layout_observe_constraints(GtkConstraintLayout* layout);
	GListModel* gtk_constraint_layout_observe_guides(GtkConstraintLayout* layout);
	void gtk_constraint_layout_remove_all_constraints(GtkConstraintLayout* layout);
	void gtk_constraint_layout_remove_constraint(GtkConstraintLayout* layout, GtkConstraint* constraint);
	void gtk_constraint_layout_remove_guide(GtkConstraintLayout* layout, GtkConstraintGuide* guide);

	// gtk.ConstraintLayoutChild

	GType gtk_constraint_layout_child_get_type();

	// gtk.ConstraintTarget

	GType gtk_constraint_target_get_type();

	// gtk.CssProvider

	GType gtk_css_provider_get_type();
	GtkCssProvider* gtk_css_provider_new();
	void gtk_css_provider_load_from_data(GtkCssProvider* cssProvider, char* data, ptrdiff_t length);
	void gtk_css_provider_load_from_file(GtkCssProvider* cssProvider, GFile* file);
	void gtk_css_provider_load_from_path(GtkCssProvider* cssProvider, const(char)* path);
	void gtk_css_provider_load_from_resource(GtkCssProvider* cssProvider, const(char)* resourcePath);
	void gtk_css_provider_load_named(GtkCssProvider* provider, const(char)* name, const(char)* variant);
	char* gtk_css_provider_to_string(GtkCssProvider* provider);

	// gtk.CssSection

	GType gtk_css_section_get_type();
	GtkCssSection* gtk_css_section_new(GFile* file, GtkCssLocation* start, GtkCssLocation* end);
	GtkCssLocation* gtk_css_section_get_end_location(GtkCssSection* section);
	GFile* gtk_css_section_get_file(GtkCssSection* section);
	GtkCssSection* gtk_css_section_get_parent(GtkCssSection* section);
	GtkCssLocation* gtk_css_section_get_start_location(GtkCssSection* section);
	void gtk_css_section_print(GtkCssSection* section, GString* string_);
	GtkCssSection* gtk_css_section_ref(GtkCssSection* section);
	char* gtk_css_section_to_string(GtkCssSection* section);
	void gtk_css_section_unref(GtkCssSection* section);

	// gtk.CustomFilter

	GType gtk_custom_filter_get_type();
	GtkCustomFilter* gtk_custom_filter_new(GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy);
	void gtk_custom_filter_set_filter_func(GtkCustomFilter* self, GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy);

	// gtk.CustomLayout

	GType gtk_custom_layout_get_type();
	GtkLayoutManager* gtk_custom_layout_new(GtkCustomRequestModeFunc requestMode, GtkCustomMeasureFunc measure, GtkCustomAllocateFunc allocate);

	// gtk.CustomSorter

	GType gtk_custom_sorter_get_type();
	GtkCustomSorter* gtk_custom_sorter_new(GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy);
	void gtk_custom_sorter_set_sort_func(GtkCustomSorter* self, GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy);

	// gtk.Dialog

	GType gtk_dialog_get_type();
	GtkWidget* gtk_dialog_new();
	GtkWidget* gtk_dialog_new_with_buttons(const(char)* title, GtkWindow* parent, GtkDialogFlags flags, const(char)* firstButtonText, ... );
	void gtk_dialog_add_action_widget(GtkDialog* dialog, GtkWidget* child, int responseId);
	GtkWidget* gtk_dialog_add_button(GtkDialog* dialog, const(char)* buttonText, int responseId);
	void gtk_dialog_add_buttons(GtkDialog* dialog, const(char)* firstButtonText, ... );
	GtkWidget* gtk_dialog_get_content_area(GtkDialog* dialog);
	GtkWidget* gtk_dialog_get_header_bar(GtkDialog* dialog);
	int gtk_dialog_get_response_for_widget(GtkDialog* dialog, GtkWidget* widget);
	GtkWidget* gtk_dialog_get_widget_for_response(GtkDialog* dialog, int responseId);
	void gtk_dialog_response(GtkDialog* dialog, int responseId);
	void gtk_dialog_set_default_response(GtkDialog* dialog, int responseId);
	void gtk_dialog_set_response_sensitive(GtkDialog* dialog, int responseId, int setting);

	// gtk.DirectoryList

	GType gtk_directory_list_get_type();
	GtkDirectoryList* gtk_directory_list_new(const(char)* attributes, GFile* file);
	const(char)* gtk_directory_list_get_attributes(GtkDirectoryList* self);
	GError* gtk_directory_list_get_error(GtkDirectoryList* self);
	GFile* gtk_directory_list_get_file(GtkDirectoryList* self);
	int gtk_directory_list_get_io_priority(GtkDirectoryList* self);
	int gtk_directory_list_get_monitored(GtkDirectoryList* self);
	int gtk_directory_list_is_loading(GtkDirectoryList* self);
	void gtk_directory_list_set_attributes(GtkDirectoryList* self, const(char)* attributes);
	void gtk_directory_list_set_file(GtkDirectoryList* self, GFile* file);
	void gtk_directory_list_set_io_priority(GtkDirectoryList* self, int ioPriority);
	void gtk_directory_list_set_monitored(GtkDirectoryList* self, int monitored);

	// gtk.DragIcon

	GType gtk_drag_icon_get_type();
	GtkWidget* gtk_drag_icon_create_widget_for_value(GValue* value);
	GtkWidget* gtk_drag_icon_get_for_drag(GdkDrag* drag);
	void gtk_drag_icon_set_from_paintable(GdkDrag* drag, GdkPaintable* paintable, int hotX, int hotY);
	GtkWidget* gtk_drag_icon_get_child(GtkDragIcon* self);
	void gtk_drag_icon_set_child(GtkDragIcon* self, GtkWidget* child);

	// gtk.DragSource

	GType gtk_drag_source_get_type();
	GtkDragSource* gtk_drag_source_new();
	void gtk_drag_source_drag_cancel(GtkDragSource* source);
	GdkDragAction gtk_drag_source_get_actions(GtkDragSource* source);
	GdkContentProvider* gtk_drag_source_get_content(GtkDragSource* source);
	GdkDrag* gtk_drag_source_get_drag(GtkDragSource* source);
	void gtk_drag_source_set_actions(GtkDragSource* source, GdkDragAction actions);
	void gtk_drag_source_set_content(GtkDragSource* source, GdkContentProvider* content);
	void gtk_drag_source_set_icon(GtkDragSource* source, GdkPaintable* paintable, int hotX, int hotY);

	// gtk.DrawingArea

	GType gtk_drawing_area_get_type();
	GtkWidget* gtk_drawing_area_new();
	int gtk_drawing_area_get_content_height(GtkDrawingArea* self);
	int gtk_drawing_area_get_content_width(GtkDrawingArea* self);
	void gtk_drawing_area_set_content_height(GtkDrawingArea* self, int height);
	void gtk_drawing_area_set_content_width(GtkDrawingArea* self, int width);
	void gtk_drawing_area_set_draw_func(GtkDrawingArea* self, GtkDrawingAreaDrawFunc drawFunc, void* userData, GDestroyNotify destroy);

	// gtk.DropControllerMotion

	GType gtk_drop_controller_motion_get_type();
	GtkEventController* gtk_drop_controller_motion_new();
	int gtk_drop_controller_motion_contains_pointer(GtkDropControllerMotion* self);
	GdkDrop* gtk_drop_controller_motion_get_drop(GtkDropControllerMotion* self);
	int gtk_drop_controller_motion_is_pointer(GtkDropControllerMotion* self);

	// gtk.DropDown

	GType gtk_drop_down_get_type();
	GtkWidget* gtk_drop_down_new(GListModel* model, GtkExpression* expression);
	GtkWidget* gtk_drop_down_new_from_strings(char** strings);
	int gtk_drop_down_get_enable_search(GtkDropDown* self);
	GtkExpression* gtk_drop_down_get_expression(GtkDropDown* self);
	GtkListItemFactory* gtk_drop_down_get_factory(GtkDropDown* self);
	GtkListItemFactory* gtk_drop_down_get_list_factory(GtkDropDown* self);
	GListModel* gtk_drop_down_get_model(GtkDropDown* self);
	uint gtk_drop_down_get_selected(GtkDropDown* self);
	void* gtk_drop_down_get_selected_item(GtkDropDown* self);
	void gtk_drop_down_set_enable_search(GtkDropDown* self, int enableSearch);
	void gtk_drop_down_set_expression(GtkDropDown* self, GtkExpression* expression);
	void gtk_drop_down_set_factory(GtkDropDown* self, GtkListItemFactory* factory);
	void gtk_drop_down_set_list_factory(GtkDropDown* self, GtkListItemFactory* factory);
	void gtk_drop_down_set_model(GtkDropDown* self, GListModel* model);
	void gtk_drop_down_set_selected(GtkDropDown* self, uint position);

	// gtk.DropTarget

	GType gtk_drop_target_get_type();
	GtkDropTarget* gtk_drop_target_new(GType type, GdkDragAction actions);
	GdkDragAction gtk_drop_target_get_actions(GtkDropTarget* self);
	GdkDrop* gtk_drop_target_get_drop(GtkDropTarget* self);
	GdkContentFormats* gtk_drop_target_get_formats(GtkDropTarget* self);
	GType* gtk_drop_target_get_gtypes(GtkDropTarget* self, size_t* nTypes);
	int gtk_drop_target_get_preload(GtkDropTarget* self);
	GValue* gtk_drop_target_get_value(GtkDropTarget* self);
	void gtk_drop_target_reject(GtkDropTarget* self);
	void gtk_drop_target_set_actions(GtkDropTarget* self, GdkDragAction actions);
	void gtk_drop_target_set_gtypes(GtkDropTarget* self, GType* types, size_t nTypes);
	void gtk_drop_target_set_preload(GtkDropTarget* self, int preload);

	// gtk.DropTargetAsync

	GType gtk_drop_target_async_get_type();
	GtkDropTargetAsync* gtk_drop_target_async_new(GdkContentFormats* formats, GdkDragAction actions);
	GdkDragAction gtk_drop_target_async_get_actions(GtkDropTargetAsync* self);
	GdkContentFormats* gtk_drop_target_async_get_formats(GtkDropTargetAsync* self);
	void gtk_drop_target_async_reject_drop(GtkDropTargetAsync* self, GdkDrop* drop);
	void gtk_drop_target_async_set_actions(GtkDropTargetAsync* self, GdkDragAction actions);
	void gtk_drop_target_async_set_formats(GtkDropTargetAsync* self, GdkContentFormats* formats);

	// gtk.Editable

	GType gtk_editable_get_type();
	int gtk_editable_delegate_get_property(GObject* object, uint propId, GValue* value, GParamSpec* pspec);
	int gtk_editable_delegate_set_property(GObject* object, uint propId, GValue* value, GParamSpec* pspec);
	uint gtk_editable_install_properties(GObjectClass* objectClass, uint firstProp);
	void gtk_editable_delete_selection(GtkEditable* editable);
	void gtk_editable_delete_text(GtkEditable* editable, int startPos, int endPos);
	void gtk_editable_finish_delegate(GtkEditable* editable);
	float gtk_editable_get_alignment(GtkEditable* editable);
	char* gtk_editable_get_chars(GtkEditable* editable, int startPos, int endPos);
	GtkEditable* gtk_editable_get_delegate(GtkEditable* editable);
	int gtk_editable_get_editable(GtkEditable* editable);
	int gtk_editable_get_enable_undo(GtkEditable* editable);
	int gtk_editable_get_max_width_chars(GtkEditable* editable);
	int gtk_editable_get_position(GtkEditable* editable);
	int gtk_editable_get_selection_bounds(GtkEditable* editable, int* startPos, int* endPos);
	const(char)* gtk_editable_get_text(GtkEditable* editable);
	int gtk_editable_get_width_chars(GtkEditable* editable);
	void gtk_editable_init_delegate(GtkEditable* editable);
	void gtk_editable_insert_text(GtkEditable* editable, const(char)* text, int length, int* position);
	void gtk_editable_select_region(GtkEditable* editable, int startPos, int endPos);
	void gtk_editable_set_alignment(GtkEditable* editable, float xalign);
	void gtk_editable_set_editable(GtkEditable* editable, int isEditable);
	void gtk_editable_set_enable_undo(GtkEditable* editable, int enableUndo);
	void gtk_editable_set_max_width_chars(GtkEditable* editable, int nChars);
	void gtk_editable_set_position(GtkEditable* editable, int position);
	void gtk_editable_set_text(GtkEditable* editable, const(char)* text);
	void gtk_editable_set_width_chars(GtkEditable* editable, int nChars);

	// gtk.EditableLabel

	GType gtk_editable_label_get_type();
	GtkWidget* gtk_editable_label_new(const(char)* str);
	int gtk_editable_label_get_editing(GtkEditableLabel* self);
	void gtk_editable_label_start_editing(GtkEditableLabel* self);
	void gtk_editable_label_stop_editing(GtkEditableLabel* self, int commit);

	// gtk.EmojiChooser

	GType gtk_emoji_chooser_get_type();
	GtkWidget* gtk_emoji_chooser_new();

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
	GMenuModel* gtk_entry_get_extra_menu(GtkEntry* entry);
	int gtk_entry_get_has_frame(GtkEntry* entry);
	int gtk_entry_get_icon_activatable(GtkEntry* entry, GtkEntryIconPosition iconPos);
	void gtk_entry_get_icon_area(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkRectangle* iconArea);
	int gtk_entry_get_icon_at_pos(GtkEntry* entry, int x, int y);
	GIcon* gtk_entry_get_icon_gicon(GtkEntry* entry, GtkEntryIconPosition iconPos);
	const(char)* gtk_entry_get_icon_name(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GdkPaintable* gtk_entry_get_icon_paintable(GtkEntry* entry, GtkEntryIconPosition iconPos);
	int gtk_entry_get_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GtkImageType gtk_entry_get_icon_storage_type(GtkEntry* entry, GtkEntryIconPosition iconPos);
	char* gtk_entry_get_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition iconPos);
	char* gtk_entry_get_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition iconPos);
	GtkInputHints gtk_entry_get_input_hints(GtkEntry* entry);
	GtkInputPurpose gtk_entry_get_input_purpose(GtkEntry* entry);
	dchar gtk_entry_get_invisible_char(GtkEntry* entry);
	int gtk_entry_get_max_length(GtkEntry* entry);
	int gtk_entry_get_overwrite_mode(GtkEntry* entry);
	const(char)* gtk_entry_get_placeholder_text(GtkEntry* entry);
	double gtk_entry_get_progress_fraction(GtkEntry* entry);
	double gtk_entry_get_progress_pulse_step(GtkEntry* entry);
	PangoTabArray* gtk_entry_get_tabs(GtkEntry* entry);
	ushort gtk_entry_get_text_length(GtkEntry* entry);
	int gtk_entry_get_visibility(GtkEntry* entry);
	int gtk_entry_grab_focus_without_selecting(GtkEntry* entry);
	void gtk_entry_progress_pulse(GtkEntry* entry);
	void gtk_entry_reset_im_context(GtkEntry* entry);
	void gtk_entry_set_activates_default(GtkEntry* entry, int setting);
	void gtk_entry_set_alignment(GtkEntry* entry, float xalign);
	void gtk_entry_set_attributes(GtkEntry* entry, PangoAttrList* attrs);
	void gtk_entry_set_buffer(GtkEntry* entry, GtkEntryBuffer* buffer);
	void gtk_entry_set_completion(GtkEntry* entry, GtkEntryCompletion* completion);
	void gtk_entry_set_extra_menu(GtkEntry* entry, GMenuModel* model);
	void gtk_entry_set_has_frame(GtkEntry* entry, int setting);
	void gtk_entry_set_icon_activatable(GtkEntry* entry, GtkEntryIconPosition iconPos, int activatable);
	void gtk_entry_set_icon_drag_source(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkContentProvider* provider, GdkDragAction actions);
	void gtk_entry_set_icon_from_gicon(GtkEntry* entry, GtkEntryIconPosition iconPos, GIcon* icon);
	void gtk_entry_set_icon_from_icon_name(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* iconName);
	void gtk_entry_set_icon_from_paintable(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkPaintable* paintable);
	void gtk_entry_set_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition iconPos, int sensitive);
	void gtk_entry_set_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip);
	void gtk_entry_set_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip);
	void gtk_entry_set_input_hints(GtkEntry* entry, GtkInputHints hints);
	void gtk_entry_set_input_purpose(GtkEntry* entry, GtkInputPurpose purpose);
	void gtk_entry_set_invisible_char(GtkEntry* entry, dchar ch);
	void gtk_entry_set_max_length(GtkEntry* entry, int max);
	void gtk_entry_set_overwrite_mode(GtkEntry* entry, int overwrite);
	void gtk_entry_set_placeholder_text(GtkEntry* entry, const(char)* text);
	void gtk_entry_set_progress_fraction(GtkEntry* entry, double fraction);
	void gtk_entry_set_progress_pulse_step(GtkEntry* entry, double fraction);
	void gtk_entry_set_tabs(GtkEntry* entry, PangoTabArray* tabs);
	void gtk_entry_set_visibility(GtkEntry* entry, int visible);
	void gtk_entry_unset_invisible_char(GtkEntry* entry);

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

	// gtk.EventController

	GType gtk_event_controller_get_type();
	GdkEvent* gtk_event_controller_get_current_event(GtkEventController* controller);
	GdkDevice* gtk_event_controller_get_current_event_device(GtkEventController* controller);
	GdkModifierType gtk_event_controller_get_current_event_state(GtkEventController* controller);
	uint gtk_event_controller_get_current_event_time(GtkEventController* controller);
	const(char)* gtk_event_controller_get_name(GtkEventController* controller);
	GtkPropagationLimit gtk_event_controller_get_propagation_limit(GtkEventController* controller);
	GtkPropagationPhase gtk_event_controller_get_propagation_phase(GtkEventController* controller);
	GtkWidget* gtk_event_controller_get_widget(GtkEventController* controller);
	void gtk_event_controller_reset(GtkEventController* controller);
	void gtk_event_controller_set_name(GtkEventController* controller, const(char)* name);
	void gtk_event_controller_set_propagation_limit(GtkEventController* controller, GtkPropagationLimit limit);
	void gtk_event_controller_set_propagation_phase(GtkEventController* controller, GtkPropagationPhase phase);

	// gtk.EventControllerFocus

	GType gtk_event_controller_focus_get_type();
	GtkEventController* gtk_event_controller_focus_new();
	int gtk_event_controller_focus_contains_focus(GtkEventControllerFocus* self);
	int gtk_event_controller_focus_is_focus(GtkEventControllerFocus* self);

	// gtk.EventControllerKey

	GType gtk_event_controller_key_get_type();
	GtkEventController* gtk_event_controller_key_new();
	int gtk_event_controller_key_forward(GtkEventControllerKey* controller, GtkWidget* widget);
	uint gtk_event_controller_key_get_group(GtkEventControllerKey* controller);
	GtkIMContext* gtk_event_controller_key_get_im_context(GtkEventControllerKey* controller);
	void gtk_event_controller_key_set_im_context(GtkEventControllerKey* controller, GtkIMContext* imContext);

	// gtk.EventControllerLegacy

	GType gtk_event_controller_legacy_get_type();
	GtkEventController* gtk_event_controller_legacy_new();

	// gtk.EventControllerMotion

	GType gtk_event_controller_motion_get_type();
	GtkEventController* gtk_event_controller_motion_new();
	int gtk_event_controller_motion_contains_pointer(GtkEventControllerMotion* self);
	int gtk_event_controller_motion_is_pointer(GtkEventControllerMotion* self);

	// gtk.EventControllerScroll

	GType gtk_event_controller_scroll_get_type();
	GtkEventController* gtk_event_controller_scroll_new(GtkEventControllerScrollFlags flags);
	GtkEventControllerScrollFlags gtk_event_controller_scroll_get_flags(GtkEventControllerScroll* scroll);
	void gtk_event_controller_scroll_set_flags(GtkEventControllerScroll* scroll, GtkEventControllerScrollFlags flags);

	// gtk.EveryFilter

	GType gtk_every_filter_get_type();
	GtkEveryFilter* gtk_every_filter_new();

	// gtk.Expander

	GType gtk_expander_get_type();
	GtkWidget* gtk_expander_new(const(char)* label);
	GtkWidget* gtk_expander_new_with_mnemonic(const(char)* label);
	GtkWidget* gtk_expander_get_child(GtkExpander* expander);
	int gtk_expander_get_expanded(GtkExpander* expander);
	const(char)* gtk_expander_get_label(GtkExpander* expander);
	GtkWidget* gtk_expander_get_label_widget(GtkExpander* expander);
	int gtk_expander_get_resize_toplevel(GtkExpander* expander);
	int gtk_expander_get_use_markup(GtkExpander* expander);
	int gtk_expander_get_use_underline(GtkExpander* expander);
	void gtk_expander_set_child(GtkExpander* expander, GtkWidget* child);
	void gtk_expander_set_expanded(GtkExpander* expander, int expanded);
	void gtk_expander_set_label(GtkExpander* expander, const(char)* label);
	void gtk_expander_set_label_widget(GtkExpander* expander, GtkWidget* labelWidget);
	void gtk_expander_set_resize_toplevel(GtkExpander* expander, int resizeToplevel);
	void gtk_expander_set_use_markup(GtkExpander* expander, int useMarkup);
	void gtk_expander_set_use_underline(GtkExpander* expander, int useUnderline);

	// gtk.Expression

	GType gtk_expression_get_type();
	GtkExpressionWatch* gtk_expression_bind(GtkExpression* self, void* target, const(char)* property, void* this_);
	int gtk_expression_evaluate(GtkExpression* self, void* this_, GValue* value);
	GType gtk_expression_get_value_type(GtkExpression* self);
	int gtk_expression_is_static(GtkExpression* self);
	GtkExpression* gtk_expression_ref(GtkExpression* self);
	void gtk_expression_unref(GtkExpression* self);
	GtkExpressionWatch* gtk_expression_watch(GtkExpression* self, void* this_, GtkExpressionNotify notify, void* userData, GDestroyNotify userDestroy);

	// gtk.ExpressionWatch

	GType gtk_expression_watch_get_type();
	int gtk_expression_watch_evaluate(GtkExpressionWatch* watch, GValue* value);
	GtkExpressionWatch* gtk_expression_watch_ref(GtkExpressionWatch* watch);
	void gtk_expression_watch_unref(GtkExpressionWatch* watch);
	void gtk_expression_watch_unwatch(GtkExpressionWatch* watch);

	// gtk.FileChooser

	GType gtk_file_chooser_get_type();
	void gtk_file_chooser_add_choice(GtkFileChooser* chooser, const(char)* id, const(char)* label, char** options, char** optionLabels);
	void gtk_file_chooser_add_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	int gtk_file_chooser_add_shortcut_folder(GtkFileChooser* chooser, GFile* folder, GError** err);
	GtkFileChooserAction gtk_file_chooser_get_action(GtkFileChooser* chooser);
	const(char)* gtk_file_chooser_get_choice(GtkFileChooser* chooser, const(char)* id);
	int gtk_file_chooser_get_create_folders(GtkFileChooser* chooser);
	GFile* gtk_file_chooser_get_current_folder(GtkFileChooser* chooser);
	char* gtk_file_chooser_get_current_name(GtkFileChooser* chooser);
	GFile* gtk_file_chooser_get_file(GtkFileChooser* chooser);
	GListModel* gtk_file_chooser_get_files(GtkFileChooser* chooser);
	GtkFileFilter* gtk_file_chooser_get_filter(GtkFileChooser* chooser);
	GListModel* gtk_file_chooser_get_filters(GtkFileChooser* chooser);
	int gtk_file_chooser_get_select_multiple(GtkFileChooser* chooser);
	GListModel* gtk_file_chooser_get_shortcut_folders(GtkFileChooser* chooser);
	void gtk_file_chooser_remove_choice(GtkFileChooser* chooser, const(char)* id);
	void gtk_file_chooser_remove_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	int gtk_file_chooser_remove_shortcut_folder(GtkFileChooser* chooser, GFile* folder, GError** err);
	void gtk_file_chooser_set_action(GtkFileChooser* chooser, GtkFileChooserAction action);
	void gtk_file_chooser_set_choice(GtkFileChooser* chooser, const(char)* id, const(char)* option);
	void gtk_file_chooser_set_create_folders(GtkFileChooser* chooser, int createFolders);
	int gtk_file_chooser_set_current_folder(GtkFileChooser* chooser, GFile* file, GError** err);
	void gtk_file_chooser_set_current_name(GtkFileChooser* chooser, const(char)* name);
	int gtk_file_chooser_set_file(GtkFileChooser* chooser, GFile* file, GError** err);
	void gtk_file_chooser_set_filter(GtkFileChooser* chooser, GtkFileFilter* filter);
	void gtk_file_chooser_set_select_multiple(GtkFileChooser* chooser, int selectMultiple);

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
	void gtk_file_filter_add_mime_type(GtkFileFilter* filter, const(char)* mimeType);
	void gtk_file_filter_add_pattern(GtkFileFilter* filter, const(char)* pattern);
	void gtk_file_filter_add_pixbuf_formats(GtkFileFilter* filter);
	char** gtk_file_filter_get_attributes(GtkFileFilter* filter);
	const(char)* gtk_file_filter_get_name(GtkFileFilter* filter);
	void gtk_file_filter_set_name(GtkFileFilter* filter, const(char)* name);
	GVariant* gtk_file_filter_to_gvariant(GtkFileFilter* filter);

	// gtk.Filter

	GType gtk_filter_get_type();
	void gtk_filter_changed(GtkFilter* self, GtkFilterChange change);
	GtkFilterMatch gtk_filter_get_strictness(GtkFilter* self);
	int gtk_filter_match(GtkFilter* self, void* item);

	// gtk.FilterListModel

	GType gtk_filter_list_model_get_type();
	GtkFilterListModel* gtk_filter_list_model_new(GListModel* model, GtkFilter* filter);
	GtkFilter* gtk_filter_list_model_get_filter(GtkFilterListModel* self);
	int gtk_filter_list_model_get_incremental(GtkFilterListModel* self);
	GListModel* gtk_filter_list_model_get_model(GtkFilterListModel* self);
	uint gtk_filter_list_model_get_pending(GtkFilterListModel* self);
	void gtk_filter_list_model_set_filter(GtkFilterListModel* self, GtkFilter* filter);
	void gtk_filter_list_model_set_incremental(GtkFilterListModel* self, int incremental);
	void gtk_filter_list_model_set_model(GtkFilterListModel* self, GListModel* model);

	// gtk.Fixed

	GType gtk_fixed_get_type();
	GtkWidget* gtk_fixed_new();
	void gtk_fixed_get_child_position(GtkFixed* fixed, GtkWidget* widget, double* x, double* y);
	GskTransform* gtk_fixed_get_child_transform(GtkFixed* fixed, GtkWidget* widget);
	void gtk_fixed_move(GtkFixed* fixed, GtkWidget* widget, double x, double y);
	void gtk_fixed_put(GtkFixed* fixed, GtkWidget* widget, double x, double y);
	void gtk_fixed_remove(GtkFixed* fixed, GtkWidget* widget);
	void gtk_fixed_set_child_transform(GtkFixed* fixed, GtkWidget* widget, GskTransform* transform);

	// gtk.FixedLayout

	GType gtk_fixed_layout_get_type();
	GtkLayoutManager* gtk_fixed_layout_new();

	// gtk.FixedLayoutChild

	GType gtk_fixed_layout_child_get_type();
	GskTransform* gtk_fixed_layout_child_get_transform(GtkFixedLayoutChild* child);
	void gtk_fixed_layout_child_set_transform(GtkFixedLayoutChild* child, GskTransform* transform);

	// gtk.FlattenListModel

	GType gtk_flatten_list_model_get_type();
	GtkFlattenListModel* gtk_flatten_list_model_new(GListModel* model);
	GListModel* gtk_flatten_list_model_get_model(GtkFlattenListModel* self);
	GListModel* gtk_flatten_list_model_get_model_for_item(GtkFlattenListModel* self, uint position);
	void gtk_flatten_list_model_set_model(GtkFlattenListModel* self, GListModel* model);

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
	void gtk_flow_box_remove(GtkFlowBox* box, GtkWidget* widget);
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

	// gtk.FlowBoxChild

	GType gtk_flow_box_child_get_type();
	GtkWidget* gtk_flow_box_child_new();
	void gtk_flow_box_child_changed(GtkFlowBoxChild* child);
	GtkWidget* gtk_flow_box_child_get_child(GtkFlowBoxChild* self);
	int gtk_flow_box_child_get_index(GtkFlowBoxChild* child);
	int gtk_flow_box_child_is_selected(GtkFlowBoxChild* child);
	void gtk_flow_box_child_set_child(GtkFlowBoxChild* self, GtkWidget* child);

	// gtk.FontButton

	GType gtk_font_button_get_type();
	GtkWidget* gtk_font_button_new();
	GtkWidget* gtk_font_button_new_with_font(const(char)* fontname);
	int gtk_font_button_get_modal(GtkFontButton* fontButton);
	const(char)* gtk_font_button_get_title(GtkFontButton* fontButton);
	int gtk_font_button_get_use_font(GtkFontButton* fontButton);
	int gtk_font_button_get_use_size(GtkFontButton* fontButton);
	void gtk_font_button_set_modal(GtkFontButton* fontButton, int modal);
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

	// gtk.Frame

	GType gtk_frame_get_type();
	GtkWidget* gtk_frame_new(const(char)* label);
	GtkWidget* gtk_frame_get_child(GtkFrame* frame);
	const(char)* gtk_frame_get_label(GtkFrame* frame);
	float gtk_frame_get_label_align(GtkFrame* frame);
	GtkWidget* gtk_frame_get_label_widget(GtkFrame* frame);
	void gtk_frame_set_child(GtkFrame* frame, GtkWidget* child);
	void gtk_frame_set_label(GtkFrame* frame, const(char)* label);
	void gtk_frame_set_label_align(GtkFrame* frame, float xalign);
	void gtk_frame_set_label_widget(GtkFrame* frame, GtkWidget* labelWidget);

	// gtk.GLArea

	GType gtk_gl_area_get_type();
	GtkWidget* gtk_gl_area_new();
	void gtk_gl_area_attach_buffers(GtkGLArea* area);
	int gtk_gl_area_get_auto_render(GtkGLArea* area);
	GdkGLContext* gtk_gl_area_get_context(GtkGLArea* area);
	GError* gtk_gl_area_get_error(GtkGLArea* area);
	int gtk_gl_area_get_has_depth_buffer(GtkGLArea* area);
	int gtk_gl_area_get_has_stencil_buffer(GtkGLArea* area);
	void gtk_gl_area_get_required_version(GtkGLArea* area, int* major, int* minor);
	int gtk_gl_area_get_use_es(GtkGLArea* area);
	void gtk_gl_area_make_current(GtkGLArea* area);
	void gtk_gl_area_queue_render(GtkGLArea* area);
	void gtk_gl_area_set_auto_render(GtkGLArea* area, int autoRender);
	void gtk_gl_area_set_error(GtkGLArea* area, GError* error);
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
	void gtk_gesture_group(GtkGesture* groupGesture, GtkGesture* gesture);
	int gtk_gesture_handles_sequence(GtkGesture* gesture, GdkEventSequence* sequence);
	int gtk_gesture_is_active(GtkGesture* gesture);
	int gtk_gesture_is_grouped_with(GtkGesture* gesture, GtkGesture* other);
	int gtk_gesture_is_recognized(GtkGesture* gesture);
	int gtk_gesture_set_sequence_state(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state);
	int gtk_gesture_set_state(GtkGesture* gesture, GtkEventSequenceState state);
	void gtk_gesture_ungroup(GtkGesture* gesture);

	// gtk.GestureClick

	GType gtk_gesture_click_get_type();
	GtkGesture* gtk_gesture_click_new();

	// gtk.GestureDrag

	GType gtk_gesture_drag_get_type();
	GtkGesture* gtk_gesture_drag_new();
	int gtk_gesture_drag_get_offset(GtkGestureDrag* gesture, double* x, double* y);
	int gtk_gesture_drag_get_start_point(GtkGestureDrag* gesture, double* x, double* y);

	// gtk.GestureLongPress

	GType gtk_gesture_long_press_get_type();
	GtkGesture* gtk_gesture_long_press_new();
	double gtk_gesture_long_press_get_delay_factor(GtkGestureLongPress* gesture);
	void gtk_gesture_long_press_set_delay_factor(GtkGestureLongPress* gesture, double delayFactor);

	// gtk.GesturePan

	GType gtk_gesture_pan_get_type();
	GtkGesture* gtk_gesture_pan_new(GtkOrientation orientation);
	GtkOrientation gtk_gesture_pan_get_orientation(GtkGesturePan* gesture);
	void gtk_gesture_pan_set_orientation(GtkGesturePan* gesture, GtkOrientation orientation);

	// gtk.GestureRotate

	GType gtk_gesture_rotate_get_type();
	GtkGesture* gtk_gesture_rotate_new();
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
	GtkGesture* gtk_gesture_stylus_new();
	int gtk_gesture_stylus_get_axes(GtkGestureStylus* gesture, GdkAxisUse* axes, double** values);
	int gtk_gesture_stylus_get_axis(GtkGestureStylus* gesture, GdkAxisUse axis, double* value);
	int gtk_gesture_stylus_get_backlog(GtkGestureStylus* gesture, GdkTimeCoord** backlog, uint* nElems);
	GdkDeviceTool* gtk_gesture_stylus_get_device_tool(GtkGestureStylus* gesture);

	// gtk.GestureSwipe

	GType gtk_gesture_swipe_get_type();
	GtkGesture* gtk_gesture_swipe_new();
	int gtk_gesture_swipe_get_velocity(GtkGestureSwipe* gesture, double* velocityX, double* velocityY);

	// gtk.GestureZoom

	GType gtk_gesture_zoom_get_type();
	GtkGesture* gtk_gesture_zoom_new();
	double gtk_gesture_zoom_get_scale_delta(GtkGestureZoom* gesture);

	// gtk.Grid

	GType gtk_grid_get_type();
	GtkWidget* gtk_grid_new();
	void gtk_grid_attach(GtkGrid* grid, GtkWidget* child, int column, int row, int width, int height);
	void gtk_grid_attach_next_to(GtkGrid* grid, GtkWidget* child, GtkWidget* sibling, GtkPositionType side, int width, int height);
	int gtk_grid_get_baseline_row(GtkGrid* grid);
	GtkWidget* gtk_grid_get_child_at(GtkGrid* grid, int column, int row);
	int gtk_grid_get_column_homogeneous(GtkGrid* grid);
	uint gtk_grid_get_column_spacing(GtkGrid* grid);
	GtkBaselinePosition gtk_grid_get_row_baseline_position(GtkGrid* grid, int row);
	int gtk_grid_get_row_homogeneous(GtkGrid* grid);
	uint gtk_grid_get_row_spacing(GtkGrid* grid);
	void gtk_grid_insert_column(GtkGrid* grid, int position);
	void gtk_grid_insert_next_to(GtkGrid* grid, GtkWidget* sibling, GtkPositionType side);
	void gtk_grid_insert_row(GtkGrid* grid, int position);
	void gtk_grid_query_child(GtkGrid* grid, GtkWidget* child, int* column, int* row, int* width, int* height);
	void gtk_grid_remove(GtkGrid* grid, GtkWidget* child);
	void gtk_grid_remove_column(GtkGrid* grid, int position);
	void gtk_grid_remove_row(GtkGrid* grid, int position);
	void gtk_grid_set_baseline_row(GtkGrid* grid, int row);
	void gtk_grid_set_column_homogeneous(GtkGrid* grid, int homogeneous);
	void gtk_grid_set_column_spacing(GtkGrid* grid, uint spacing);
	void gtk_grid_set_row_baseline_position(GtkGrid* grid, int row, GtkBaselinePosition pos);
	void gtk_grid_set_row_homogeneous(GtkGrid* grid, int homogeneous);
	void gtk_grid_set_row_spacing(GtkGrid* grid, uint spacing);

	// gtk.GridLayout

	GType gtk_grid_layout_get_type();
	GtkLayoutManager* gtk_grid_layout_new();
	int gtk_grid_layout_get_baseline_row(GtkGridLayout* grid);
	int gtk_grid_layout_get_column_homogeneous(GtkGridLayout* grid);
	uint gtk_grid_layout_get_column_spacing(GtkGridLayout* grid);
	GtkBaselinePosition gtk_grid_layout_get_row_baseline_position(GtkGridLayout* grid, int row);
	int gtk_grid_layout_get_row_homogeneous(GtkGridLayout* grid);
	uint gtk_grid_layout_get_row_spacing(GtkGridLayout* grid);
	void gtk_grid_layout_set_baseline_row(GtkGridLayout* grid, int row);
	void gtk_grid_layout_set_column_homogeneous(GtkGridLayout* grid, int homogeneous);
	void gtk_grid_layout_set_column_spacing(GtkGridLayout* grid, uint spacing);
	void gtk_grid_layout_set_row_baseline_position(GtkGridLayout* grid, int row, GtkBaselinePosition pos);
	void gtk_grid_layout_set_row_homogeneous(GtkGridLayout* grid, int homogeneous);
	void gtk_grid_layout_set_row_spacing(GtkGridLayout* grid, uint spacing);

	// gtk.GridLayoutChild

	GType gtk_grid_layout_child_get_type();
	int gtk_grid_layout_child_get_column(GtkGridLayoutChild* child);
	int gtk_grid_layout_child_get_column_span(GtkGridLayoutChild* child);
	int gtk_grid_layout_child_get_row(GtkGridLayoutChild* child);
	int gtk_grid_layout_child_get_row_span(GtkGridLayoutChild* child);
	void gtk_grid_layout_child_set_column(GtkGridLayoutChild* child, int column);
	void gtk_grid_layout_child_set_column_span(GtkGridLayoutChild* child, int span);
	void gtk_grid_layout_child_set_row(GtkGridLayoutChild* child, int row);
	void gtk_grid_layout_child_set_row_span(GtkGridLayoutChild* child, int span);

	// gtk.GridView

	GType gtk_grid_view_get_type();
	GtkWidget* gtk_grid_view_new(GtkSelectionModel* model, GtkListItemFactory* factory);
	int gtk_grid_view_get_enable_rubberband(GtkGridView* self);
	GtkListItemFactory* gtk_grid_view_get_factory(GtkGridView* self);
	uint gtk_grid_view_get_max_columns(GtkGridView* self);
	uint gtk_grid_view_get_min_columns(GtkGridView* self);
	GtkSelectionModel* gtk_grid_view_get_model(GtkGridView* self);
	int gtk_grid_view_get_single_click_activate(GtkGridView* self);
	void gtk_grid_view_set_enable_rubberband(GtkGridView* self, int enableRubberband);
	void gtk_grid_view_set_factory(GtkGridView* self, GtkListItemFactory* factory);
	void gtk_grid_view_set_max_columns(GtkGridView* self, uint maxColumns);
	void gtk_grid_view_set_min_columns(GtkGridView* self, uint minColumns);
	void gtk_grid_view_set_model(GtkGridView* self, GtkSelectionModel* model);
	void gtk_grid_view_set_single_click_activate(GtkGridView* self, int singleClickActivate);

	// gtk.HeaderBar

	GType gtk_header_bar_get_type();
	GtkWidget* gtk_header_bar_new();
	const(char)* gtk_header_bar_get_decoration_layout(GtkHeaderBar* bar);
	int gtk_header_bar_get_show_title_buttons(GtkHeaderBar* bar);
	GtkWidget* gtk_header_bar_get_title_widget(GtkHeaderBar* bar);
	void gtk_header_bar_pack_end(GtkHeaderBar* bar, GtkWidget* child);
	void gtk_header_bar_pack_start(GtkHeaderBar* bar, GtkWidget* child);
	void gtk_header_bar_remove(GtkHeaderBar* bar, GtkWidget* child);
	void gtk_header_bar_set_decoration_layout(GtkHeaderBar* bar, const(char)* layout);
	void gtk_header_bar_set_show_title_buttons(GtkHeaderBar* bar, int setting);
	void gtk_header_bar_set_title_widget(GtkHeaderBar* bar, GtkWidget* titleWidget);

	// gtk.IMContext

	GType gtk_im_context_get_type();
	int gtk_im_context_delete_surrounding(GtkIMContext* context, int offset, int nChars);
	int gtk_im_context_filter_key(GtkIMContext* context, int press, GdkSurface* surface, GdkDevice* device, uint time, uint keycode, GdkModifierType state, int group);
	int gtk_im_context_filter_keypress(GtkIMContext* context, GdkEvent* event);
	void gtk_im_context_focus_in(GtkIMContext* context);
	void gtk_im_context_focus_out(GtkIMContext* context);
	void gtk_im_context_get_preedit_string(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos);
	int gtk_im_context_get_surrounding(GtkIMContext* context, char** text, int* cursorIndex);
	int gtk_im_context_get_surrounding_with_selection(GtkIMContext* context, char** text, int* cursorIndex, int* anchorIndex);
	void gtk_im_context_reset(GtkIMContext* context);
	void gtk_im_context_set_client_widget(GtkIMContext* context, GtkWidget* widget);
	void gtk_im_context_set_cursor_location(GtkIMContext* context, GdkRectangle* area);
	void gtk_im_context_set_surrounding(GtkIMContext* context, const(char)* text, int len, int cursorIndex);
	void gtk_im_context_set_surrounding_with_selection(GtkIMContext* context, const(char)* text, int len, int cursorIndex, int anchorIndex);
	void gtk_im_context_set_use_preedit(GtkIMContext* context, int usePreedit);

	// gtk.IMContextSimple

	GType gtk_im_context_simple_get_type();
	GtkIMContext* gtk_im_context_simple_new();
	void gtk_im_context_simple_add_compose_file(GtkIMContextSimple* contextSimple, const(char)* composeFile);
	void gtk_im_context_simple_add_table(GtkIMContextSimple* contextSimple, ushort* data, int maxSeqLen, int nSeqs);

	// gtk.IMMulticontext

	GType gtk_im_multicontext_get_type();
	GtkIMContext* gtk_im_multicontext_new();
	const(char)* gtk_im_multicontext_get_context_id(GtkIMMulticontext* context);
	void gtk_im_multicontext_set_context_id(GtkIMMulticontext* context, const(char)* contextId);

	// gtk.IconPaintable

	GType gtk_icon_paintable_get_type();
	GtkIconPaintable* gtk_icon_paintable_new_for_file(GFile* file, int size, int scale);
	GFile* gtk_icon_paintable_get_file(GtkIconPaintable* self);
	char* gtk_icon_paintable_get_icon_name(GtkIconPaintable* self);
	int gtk_icon_paintable_is_symbolic(GtkIconPaintable* self);

	// gtk.IconTheme

	GType gtk_icon_theme_get_type();
	GtkIconTheme* gtk_icon_theme_new();
	GtkIconTheme* gtk_icon_theme_get_for_display(GdkDisplay* display);
	void gtk_icon_theme_add_resource_path(GtkIconTheme* self, const(char)* path);
	void gtk_icon_theme_add_search_path(GtkIconTheme* self, char* path);
	GdkDisplay* gtk_icon_theme_get_display(GtkIconTheme* self);
	char** gtk_icon_theme_get_icon_names(GtkIconTheme* self);
	int* gtk_icon_theme_get_icon_sizes(GtkIconTheme* self, const(char)* iconName);
	char** gtk_icon_theme_get_resource_path(GtkIconTheme* self);
	char** gtk_icon_theme_get_search_path(GtkIconTheme* self);
	char* gtk_icon_theme_get_theme_name(GtkIconTheme* self);
	int gtk_icon_theme_has_gicon(GtkIconTheme* self, GIcon* gicon);
	int gtk_icon_theme_has_icon(GtkIconTheme* self, const(char)* iconName);
	GtkIconPaintable* gtk_icon_theme_lookup_by_gicon(GtkIconTheme* self, GIcon* icon, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags);
	GtkIconPaintable* gtk_icon_theme_lookup_icon(GtkIconTheme* self, const(char)* iconName, char** fallbacks, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags);
	void gtk_icon_theme_set_resource_path(GtkIconTheme* self, const(char)* path);
	void gtk_icon_theme_set_search_path(GtkIconTheme* self, char** path);
	void gtk_icon_theme_set_theme_name(GtkIconTheme* self, const(char)* themeName);

	// gtk.IconView

	GType gtk_icon_view_get_type();
	GtkWidget* gtk_icon_view_new();
	GtkWidget* gtk_icon_view_new_with_area(GtkCellArea* area);
	GtkWidget* gtk_icon_view_new_with_model(GtkTreeModel* model);
	GdkPaintable* gtk_icon_view_create_drag_icon(GtkIconView* iconView, GtkTreePath* path);
	void gtk_icon_view_enable_model_drag_dest(GtkIconView* iconView, GdkContentFormats* formats, GdkDragAction actions);
	void gtk_icon_view_enable_model_drag_source(GtkIconView* iconView, GdkModifierType startButtonMask, GdkContentFormats* formats, GdkDragAction actions);
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
	int gtk_icon_view_get_tooltip_context(GtkIconView* iconView, int x, int y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
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

	// gtk.Image

	GType gtk_image_get_type();
	GtkWidget* gtk_image_new();
	GtkWidget* gtk_image_new_from_file(char* filename);
	GtkWidget* gtk_image_new_from_gicon(GIcon* icon);
	GtkWidget* gtk_image_new_from_icon_name(const(char)* iconName);
	GtkWidget* gtk_image_new_from_paintable(GdkPaintable* paintable);
	GtkWidget* gtk_image_new_from_pixbuf(GdkPixbuf* pixbuf);
	GtkWidget* gtk_image_new_from_resource(const(char)* resourcePath);
	void gtk_image_clear(GtkImage* image);
	GIcon* gtk_image_get_gicon(GtkImage* image);
	const(char)* gtk_image_get_icon_name(GtkImage* image);
	GtkIconSize gtk_image_get_icon_size(GtkImage* image);
	GdkPaintable* gtk_image_get_paintable(GtkImage* image);
	int gtk_image_get_pixel_size(GtkImage* image);
	GtkImageType gtk_image_get_storage_type(GtkImage* image);
	void gtk_image_set_from_file(GtkImage* image, char* filename);
	void gtk_image_set_from_gicon(GtkImage* image, GIcon* icon);
	void gtk_image_set_from_icon_name(GtkImage* image, const(char)* iconName);
	void gtk_image_set_from_paintable(GtkImage* image, GdkPaintable* paintable);
	void gtk_image_set_from_pixbuf(GtkImage* image, GdkPixbuf* pixbuf);
	void gtk_image_set_from_resource(GtkImage* image, const(char)* resourcePath);
	void gtk_image_set_icon_size(GtkImage* image, GtkIconSize iconSize);
	void gtk_image_set_pixel_size(GtkImage* image, int pixelSize);

	// gtk.InfoBar

	GType gtk_info_bar_get_type();
	GtkWidget* gtk_info_bar_new();
	GtkWidget* gtk_info_bar_new_with_buttons(const(char)* firstButtonText, ... );
	void gtk_info_bar_add_action_widget(GtkInfoBar* infoBar, GtkWidget* child, int responseId);
	GtkWidget* gtk_info_bar_add_button(GtkInfoBar* infoBar, const(char)* buttonText, int responseId);
	void gtk_info_bar_add_buttons(GtkInfoBar* infoBar, const(char)* firstButtonText, ... );
	void gtk_info_bar_add_child(GtkInfoBar* infoBar, GtkWidget* widget);
	GtkMessageType gtk_info_bar_get_message_type(GtkInfoBar* infoBar);
	int gtk_info_bar_get_revealed(GtkInfoBar* infoBar);
	int gtk_info_bar_get_show_close_button(GtkInfoBar* infoBar);
	void gtk_info_bar_remove_action_widget(GtkInfoBar* infoBar, GtkWidget* widget);
	void gtk_info_bar_remove_child(GtkInfoBar* infoBar, GtkWidget* widget);
	void gtk_info_bar_response(GtkInfoBar* infoBar, int responseId);
	void gtk_info_bar_set_default_response(GtkInfoBar* infoBar, int responseId);
	void gtk_info_bar_set_message_type(GtkInfoBar* infoBar, GtkMessageType messageType);
	void gtk_info_bar_set_response_sensitive(GtkInfoBar* infoBar, int responseId, int setting);
	void gtk_info_bar_set_revealed(GtkInfoBar* infoBar, int revealed);
	void gtk_info_bar_set_show_close_button(GtkInfoBar* infoBar, int setting);

	// gtk.KeyvalTrigger

	GType gtk_keyval_trigger_get_type();
	GtkShortcutTrigger* gtk_keyval_trigger_new(uint keyval, GdkModifierType modifiers);
	uint gtk_keyval_trigger_get_keyval(GtkKeyvalTrigger* self);
	GdkModifierType gtk_keyval_trigger_get_modifiers(GtkKeyvalTrigger* self);

	// gtk.Label

	GType gtk_label_get_type();
	GtkWidget* gtk_label_new(const(char)* str);
	GtkWidget* gtk_label_new_with_mnemonic(const(char)* str);
	PangoAttrList* gtk_label_get_attributes(GtkLabel* self);
	const(char)* gtk_label_get_current_uri(GtkLabel* self);
	PangoEllipsizeMode gtk_label_get_ellipsize(GtkLabel* self);
	GMenuModel* gtk_label_get_extra_menu(GtkLabel* self);
	GtkJustification gtk_label_get_justify(GtkLabel* self);
	const(char)* gtk_label_get_label(GtkLabel* self);
	PangoLayout* gtk_label_get_layout(GtkLabel* self);
	void gtk_label_get_layout_offsets(GtkLabel* self, int* x, int* y);
	int gtk_label_get_lines(GtkLabel* self);
	int gtk_label_get_max_width_chars(GtkLabel* self);
	uint gtk_label_get_mnemonic_keyval(GtkLabel* self);
	GtkWidget* gtk_label_get_mnemonic_widget(GtkLabel* self);
	int gtk_label_get_selectable(GtkLabel* self);
	int gtk_label_get_selection_bounds(GtkLabel* self, int* start, int* end);
	int gtk_label_get_single_line_mode(GtkLabel* self);
	const(char)* gtk_label_get_text(GtkLabel* self);
	int gtk_label_get_use_markup(GtkLabel* self);
	int gtk_label_get_use_underline(GtkLabel* self);
	int gtk_label_get_width_chars(GtkLabel* self);
	int gtk_label_get_wrap(GtkLabel* self);
	PangoWrapMode gtk_label_get_wrap_mode(GtkLabel* self);
	float gtk_label_get_xalign(GtkLabel* self);
	float gtk_label_get_yalign(GtkLabel* self);
	void gtk_label_select_region(GtkLabel* self, int startOffset, int endOffset);
	void gtk_label_set_attributes(GtkLabel* self, PangoAttrList* attrs);
	void gtk_label_set_ellipsize(GtkLabel* self, PangoEllipsizeMode mode);
	void gtk_label_set_extra_menu(GtkLabel* self, GMenuModel* model);
	void gtk_label_set_justify(GtkLabel* self, GtkJustification jtype);
	void gtk_label_set_label(GtkLabel* self, const(char)* str);
	void gtk_label_set_lines(GtkLabel* self, int lines);
	void gtk_label_set_markup(GtkLabel* self, const(char)* str);
	void gtk_label_set_markup_with_mnemonic(GtkLabel* self, const(char)* str);
	void gtk_label_set_max_width_chars(GtkLabel* self, int nChars);
	void gtk_label_set_mnemonic_widget(GtkLabel* self, GtkWidget* widget);
	void gtk_label_set_selectable(GtkLabel* self, int setting);
	void gtk_label_set_single_line_mode(GtkLabel* self, int singleLineMode);
	void gtk_label_set_text(GtkLabel* self, const(char)* str);
	void gtk_label_set_text_with_mnemonic(GtkLabel* self, const(char)* str);
	void gtk_label_set_use_markup(GtkLabel* self, int setting);
	void gtk_label_set_use_underline(GtkLabel* self, int setting);
	void gtk_label_set_width_chars(GtkLabel* self, int nChars);
	void gtk_label_set_wrap(GtkLabel* self, int wrap);
	void gtk_label_set_wrap_mode(GtkLabel* self, PangoWrapMode wrapMode);
	void gtk_label_set_xalign(GtkLabel* self, float xalign);
	void gtk_label_set_yalign(GtkLabel* self, float yalign);

	// gtk.LayoutChild

	GType gtk_layout_child_get_type();
	GtkWidget* gtk_layout_child_get_child_widget(GtkLayoutChild* layoutChild);
	GtkLayoutManager* gtk_layout_child_get_layout_manager(GtkLayoutChild* layoutChild);

	// gtk.LayoutManager

	GType gtk_layout_manager_get_type();
	void gtk_layout_manager_allocate(GtkLayoutManager* manager, GtkWidget* widget, int width, int height, int baseline);
	GtkLayoutChild* gtk_layout_manager_get_layout_child(GtkLayoutManager* manager, GtkWidget* child);
	GtkSizeRequestMode gtk_layout_manager_get_request_mode(GtkLayoutManager* manager);
	GtkWidget* gtk_layout_manager_get_widget(GtkLayoutManager* manager);
	void gtk_layout_manager_layout_changed(GtkLayoutManager* manager);
	void gtk_layout_manager_measure(GtkLayoutManager* manager, GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline);

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

	// gtk.LinkButton

	GType gtk_link_button_get_type();
	GtkWidget* gtk_link_button_new(const(char)* uri);
	GtkWidget* gtk_link_button_new_with_label(const(char)* uri, const(char)* label);
	const(char)* gtk_link_button_get_uri(GtkLinkButton* linkButton);
	int gtk_link_button_get_visited(GtkLinkButton* linkButton);
	void gtk_link_button_set_uri(GtkLinkButton* linkButton, const(char)* uri);
	void gtk_link_button_set_visited(GtkLinkButton* linkButton, int visited);

	// gtk.ListBase

	GType gtk_list_base_get_type();

	// gtk.ListBox

	GType gtk_list_box_get_type();
	GtkWidget* gtk_list_box_new();
	void gtk_list_box_append(GtkListBox* box, GtkWidget* child);
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
	int gtk_list_box_get_show_separators(GtkListBox* box);
	void gtk_list_box_insert(GtkListBox* box, GtkWidget* child, int position);
	void gtk_list_box_invalidate_filter(GtkListBox* box);
	void gtk_list_box_invalidate_headers(GtkListBox* box);
	void gtk_list_box_invalidate_sort(GtkListBox* box);
	void gtk_list_box_prepend(GtkListBox* box, GtkWidget* child);
	void gtk_list_box_remove(GtkListBox* box, GtkWidget* child);
	void gtk_list_box_select_all(GtkListBox* box);
	void gtk_list_box_select_row(GtkListBox* box, GtkListBoxRow* row);
	void gtk_list_box_selected_foreach(GtkListBox* box, GtkListBoxForeachFunc func, void* data);
	void gtk_list_box_set_activate_on_single_click(GtkListBox* box, int single);
	void gtk_list_box_set_adjustment(GtkListBox* box, GtkAdjustment* adjustment);
	void gtk_list_box_set_filter_func(GtkListBox* box, GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy);
	void gtk_list_box_set_header_func(GtkListBox* box, GtkListBoxUpdateHeaderFunc updateHeader, void* userData, GDestroyNotify destroy);
	void gtk_list_box_set_placeholder(GtkListBox* box, GtkWidget* placeholder);
	void gtk_list_box_set_selection_mode(GtkListBox* box, GtkSelectionMode mode);
	void gtk_list_box_set_show_separators(GtkListBox* box, int showSeparators);
	void gtk_list_box_set_sort_func(GtkListBox* box, GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy);
	void gtk_list_box_unselect_all(GtkListBox* box);
	void gtk_list_box_unselect_row(GtkListBox* box, GtkListBoxRow* row);

	// gtk.ListBoxRow

	GType gtk_list_box_row_get_type();
	GtkWidget* gtk_list_box_row_new();
	void gtk_list_box_row_changed(GtkListBoxRow* row);
	int gtk_list_box_row_get_activatable(GtkListBoxRow* row);
	GtkWidget* gtk_list_box_row_get_child(GtkListBoxRow* row);
	GtkWidget* gtk_list_box_row_get_header(GtkListBoxRow* row);
	int gtk_list_box_row_get_index(GtkListBoxRow* row);
	int gtk_list_box_row_get_selectable(GtkListBoxRow* row);
	int gtk_list_box_row_is_selected(GtkListBoxRow* row);
	void gtk_list_box_row_set_activatable(GtkListBoxRow* row, int activatable);
	void gtk_list_box_row_set_child(GtkListBoxRow* row, GtkWidget* child);
	void gtk_list_box_row_set_header(GtkListBoxRow* row, GtkWidget* header);
	void gtk_list_box_row_set_selectable(GtkListBoxRow* row, int selectable);

	// gtk.ListItem

	GType gtk_list_item_get_type();
	int gtk_list_item_get_activatable(GtkListItem* self);
	GtkWidget* gtk_list_item_get_child(GtkListItem* self);
	void* gtk_list_item_get_item(GtkListItem* self);
	uint gtk_list_item_get_position(GtkListItem* self);
	int gtk_list_item_get_selectable(GtkListItem* self);
	int gtk_list_item_get_selected(GtkListItem* self);
	void gtk_list_item_set_activatable(GtkListItem* self, int activatable);
	void gtk_list_item_set_child(GtkListItem* self, GtkWidget* child);
	void gtk_list_item_set_selectable(GtkListItem* self, int selectable);

	// gtk.ListItemFactory

	GType gtk_list_item_factory_get_type();

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

	// gtk.ListView

	GType gtk_list_view_get_type();
	GtkWidget* gtk_list_view_new(GtkSelectionModel* model, GtkListItemFactory* factory);
	int gtk_list_view_get_enable_rubberband(GtkListView* self);
	GtkListItemFactory* gtk_list_view_get_factory(GtkListView* self);
	GtkSelectionModel* gtk_list_view_get_model(GtkListView* self);
	int gtk_list_view_get_show_separators(GtkListView* self);
	int gtk_list_view_get_single_click_activate(GtkListView* self);
	void gtk_list_view_set_enable_rubberband(GtkListView* self, int enableRubberband);
	void gtk_list_view_set_factory(GtkListView* self, GtkListItemFactory* factory);
	void gtk_list_view_set_model(GtkListView* self, GtkSelectionModel* model);
	void gtk_list_view_set_show_separators(GtkListView* self, int showSeparators);
	void gtk_list_view_set_single_click_activate(GtkListView* self, int singleClickActivate);

	// gtk.LockButton

	GType gtk_lock_button_get_type();
	GtkWidget* gtk_lock_button_new(GPermission* permission);
	GPermission* gtk_lock_button_get_permission(GtkLockButton* button);
	void gtk_lock_button_set_permission(GtkLockButton* button, GPermission* permission);

	// gtk.MapListModel

	GType gtk_map_list_model_get_type();
	GtkMapListModel* gtk_map_list_model_new(GListModel* model, GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy);
	GListModel* gtk_map_list_model_get_model(GtkMapListModel* self);
	int gtk_map_list_model_has_map(GtkMapListModel* self);
	void gtk_map_list_model_set_map_func(GtkMapListModel* self, GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy);
	void gtk_map_list_model_set_model(GtkMapListModel* self, GListModel* model);

	// gtk.MediaControls

	GType gtk_media_controls_get_type();
	GtkWidget* gtk_media_controls_new(GtkMediaStream* stream);
	GtkMediaStream* gtk_media_controls_get_media_stream(GtkMediaControls* controls);
	void gtk_media_controls_set_media_stream(GtkMediaControls* controls, GtkMediaStream* stream);

	// gtk.MediaFile

	GType gtk_media_file_get_type();
	GtkMediaStream* gtk_media_file_new();
	GtkMediaStream* gtk_media_file_new_for_file(GFile* file);
	GtkMediaStream* gtk_media_file_new_for_filename(const(char)* filename);
	GtkMediaStream* gtk_media_file_new_for_input_stream(GInputStream* stream);
	GtkMediaStream* gtk_media_file_new_for_resource(const(char)* resourcePath);
	void gtk_media_file_clear(GtkMediaFile* self);
	GFile* gtk_media_file_get_file(GtkMediaFile* self);
	GInputStream* gtk_media_file_get_input_stream(GtkMediaFile* self);
	void gtk_media_file_set_file(GtkMediaFile* self, GFile* file);
	void gtk_media_file_set_filename(GtkMediaFile* self, const(char)* filename);
	void gtk_media_file_set_input_stream(GtkMediaFile* self, GInputStream* stream);
	void gtk_media_file_set_resource(GtkMediaFile* self, const(char)* resourcePath);

	// gtk.MediaStream

	GType gtk_media_stream_get_type();
	void gtk_media_stream_ended(GtkMediaStream* self);
	void gtk_media_stream_error(GtkMediaStream* self, GQuark domain, int code, const(char)* format, ... );
	void gtk_media_stream_error_valist(GtkMediaStream* self, GQuark domain, int code, const(char)* format, void* args);
	void gtk_media_stream_gerror(GtkMediaStream* self, GError* error);
	long gtk_media_stream_get_duration(GtkMediaStream* self);
	int gtk_media_stream_get_ended(GtkMediaStream* self);
	GError* gtk_media_stream_get_error(GtkMediaStream* self);
	int gtk_media_stream_get_loop(GtkMediaStream* self);
	int gtk_media_stream_get_muted(GtkMediaStream* self);
	int gtk_media_stream_get_playing(GtkMediaStream* self);
	long gtk_media_stream_get_timestamp(GtkMediaStream* self);
	double gtk_media_stream_get_volume(GtkMediaStream* self);
	int gtk_media_stream_has_audio(GtkMediaStream* self);
	int gtk_media_stream_has_video(GtkMediaStream* self);
	int gtk_media_stream_is_prepared(GtkMediaStream* self);
	int gtk_media_stream_is_seekable(GtkMediaStream* self);
	int gtk_media_stream_is_seeking(GtkMediaStream* self);
	void gtk_media_stream_pause(GtkMediaStream* self);
	void gtk_media_stream_play(GtkMediaStream* self);
	void gtk_media_stream_prepared(GtkMediaStream* self, int hasAudio, int hasVideo, int seekable, long duration);
	void gtk_media_stream_realize(GtkMediaStream* self, GdkSurface* surface);
	void gtk_media_stream_seek(GtkMediaStream* self, long timestamp);
	void gtk_media_stream_seek_failed(GtkMediaStream* self);
	void gtk_media_stream_seek_success(GtkMediaStream* self);
	void gtk_media_stream_set_loop(GtkMediaStream* self, int loop);
	void gtk_media_stream_set_muted(GtkMediaStream* self, int muted);
	void gtk_media_stream_set_playing(GtkMediaStream* self, int playing);
	void gtk_media_stream_set_volume(GtkMediaStream* self, double volume);
	void gtk_media_stream_unprepared(GtkMediaStream* self);
	void gtk_media_stream_unrealize(GtkMediaStream* self, GdkSurface* surface);
	void gtk_media_stream_update(GtkMediaStream* self, long timestamp);

	// gtk.MenuButton

	GType gtk_menu_button_get_type();
	GtkWidget* gtk_menu_button_new();
	GtkArrowType gtk_menu_button_get_direction(GtkMenuButton* menuButton);
	int gtk_menu_button_get_has_frame(GtkMenuButton* menuButton);
	const(char)* gtk_menu_button_get_icon_name(GtkMenuButton* menuButton);
	const(char)* gtk_menu_button_get_label(GtkMenuButton* menuButton);
	GMenuModel* gtk_menu_button_get_menu_model(GtkMenuButton* menuButton);
	GtkPopover* gtk_menu_button_get_popover(GtkMenuButton* menuButton);
	int gtk_menu_button_get_use_underline(GtkMenuButton* menuButton);
	void gtk_menu_button_popdown(GtkMenuButton* menuButton);
	void gtk_menu_button_popup(GtkMenuButton* menuButton);
	void gtk_menu_button_set_create_popup_func(GtkMenuButton* menuButton, GtkMenuButtonCreatePopupFunc func, void* userData, GDestroyNotify destroyNotify);
	void gtk_menu_button_set_direction(GtkMenuButton* menuButton, GtkArrowType direction);
	void gtk_menu_button_set_has_frame(GtkMenuButton* menuButton, int hasFrame);
	void gtk_menu_button_set_icon_name(GtkMenuButton* menuButton, const(char)* iconName);
	void gtk_menu_button_set_label(GtkMenuButton* menuButton, const(char)* label);
	void gtk_menu_button_set_menu_model(GtkMenuButton* menuButton, GMenuModel* menuModel);
	void gtk_menu_button_set_popover(GtkMenuButton* menuButton, GtkWidget* popover);
	void gtk_menu_button_set_use_underline(GtkMenuButton* menuButton, int useUnderline);

	// gtk.MessageDialog

	GType gtk_message_dialog_get_type();
	GtkWidget* gtk_message_dialog_new(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... );
	GtkWidget* gtk_message_dialog_new_with_markup(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... );
	void gtk_message_dialog_format_secondary_markup(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... );
	void gtk_message_dialog_format_secondary_text(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... );
	GtkWidget* gtk_message_dialog_get_message_area(GtkMessageDialog* messageDialog);
	void gtk_message_dialog_set_markup(GtkMessageDialog* messageDialog, const(char)* str);

	// gtk.MnemonicAction

	GType gtk_mnemonic_action_get_type();
	GtkShortcutAction* gtk_mnemonic_action_get();

	// gtk.MnemonicTrigger

	GType gtk_mnemonic_trigger_get_type();
	GtkShortcutTrigger* gtk_mnemonic_trigger_new(uint keyval);
	uint gtk_mnemonic_trigger_get_keyval(GtkMnemonicTrigger* self);

	// gtk.MountOperation

	GType gtk_mount_operation_get_type();
	GMountOperation* gtk_mount_operation_new(GtkWindow* parent);
	GdkDisplay* gtk_mount_operation_get_display(GtkMountOperation* op);
	GtkWindow* gtk_mount_operation_get_parent(GtkMountOperation* op);
	int gtk_mount_operation_is_showing(GtkMountOperation* op);
	void gtk_mount_operation_set_display(GtkMountOperation* op, GdkDisplay* display);
	void gtk_mount_operation_set_parent(GtkMountOperation* op, GtkWindow* parent);

	// gtk.MultiFilter

	GType gtk_multi_filter_get_type();
	void gtk_multi_filter_append(GtkMultiFilter* self, GtkFilter* filter);
	void gtk_multi_filter_remove(GtkMultiFilter* self, uint position);

	// gtk.MultiSelection

	GType gtk_multi_selection_get_type();
	GtkMultiSelection* gtk_multi_selection_new(GListModel* model);
	GListModel* gtk_multi_selection_get_model(GtkMultiSelection* self);
	void gtk_multi_selection_set_model(GtkMultiSelection* self, GListModel* model);

	// gtk.MultiSorter

	GType gtk_multi_sorter_get_type();
	GtkMultiSorter* gtk_multi_sorter_new();
	void gtk_multi_sorter_append(GtkMultiSorter* self, GtkSorter* sorter);
	void gtk_multi_sorter_remove(GtkMultiSorter* self, uint position);

	// gtk.NamedAction

	GType gtk_named_action_get_type();
	GtkShortcutAction* gtk_named_action_new(const(char)* name);
	const(char)* gtk_named_action_get_action_name(GtkNamedAction* self);

	// gtk.Native

	GType gtk_native_get_type();
	GtkNative* gtk_native_get_for_surface(GdkSurface* surface);
	GskRenderer* gtk_native_get_renderer(GtkNative* self);
	GdkSurface* gtk_native_get_surface(GtkNative* self);
	void gtk_native_get_surface_transform(GtkNative* self, double* x, double* y);
	void gtk_native_realize(GtkNative* self);
	void gtk_native_unrealize(GtkNative* self);

	// gtk.NativeDialog

	GType gtk_native_dialog_get_type();
	void gtk_native_dialog_destroy(GtkNativeDialog* self);
	int gtk_native_dialog_get_modal(GtkNativeDialog* self);
	const(char)* gtk_native_dialog_get_title(GtkNativeDialog* self);
	GtkWindow* gtk_native_dialog_get_transient_for(GtkNativeDialog* self);
	int gtk_native_dialog_get_visible(GtkNativeDialog* self);
	void gtk_native_dialog_hide(GtkNativeDialog* self);
	void gtk_native_dialog_set_modal(GtkNativeDialog* self, int modal);
	void gtk_native_dialog_set_title(GtkNativeDialog* self, const(char)* title);
	void gtk_native_dialog_set_transient_for(GtkNativeDialog* self, GtkWindow* parent);
	void gtk_native_dialog_show(GtkNativeDialog* self);

	// gtk.NeverTrigger

	GType gtk_never_trigger_get_type();
	GtkShortcutTrigger* gtk_never_trigger_get();

	// gtk.NoSelection

	GType gtk_no_selection_get_type();
	GtkNoSelection* gtk_no_selection_new(GListModel* model);
	GListModel* gtk_no_selection_get_model(GtkNoSelection* self);
	void gtk_no_selection_set_model(GtkNoSelection* self, GListModel* model);

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
	GtkNotebookPage* gtk_notebook_get_page(GtkNotebook* notebook, GtkWidget* child);
	GListModel* gtk_notebook_get_pages(GtkNotebook* notebook);
	int gtk_notebook_get_scrollable(GtkNotebook* notebook);
	int gtk_notebook_get_show_border(GtkNotebook* notebook);
	int gtk_notebook_get_show_tabs(GtkNotebook* notebook);
	int gtk_notebook_get_tab_detachable(GtkNotebook* notebook, GtkWidget* child);
	GtkWidget* gtk_notebook_get_tab_label(GtkNotebook* notebook, GtkWidget* child);
	const(char)* gtk_notebook_get_tab_label_text(GtkNotebook* notebook, GtkWidget* child);
	GtkPositionType gtk_notebook_get_tab_pos(GtkNotebook* notebook);
	int gtk_notebook_get_tab_reorderable(GtkNotebook* notebook, GtkWidget* child);
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

	// gtk.NotebookPage

	GType gtk_notebook_page_get_type();
	GtkWidget* gtk_notebook_page_get_child(GtkNotebookPage* page);

	// gtk.NothingAction

	GType gtk_nothing_action_get_type();
	GtkShortcutAction* gtk_nothing_action_get();

	// gtk.NumericSorter

	GType gtk_numeric_sorter_get_type();
	GtkNumericSorter* gtk_numeric_sorter_new(GtkExpression* expression);
	GtkExpression* gtk_numeric_sorter_get_expression(GtkNumericSorter* self);
	GtkSortType gtk_numeric_sorter_get_sort_order(GtkNumericSorter* self);
	void gtk_numeric_sorter_set_expression(GtkNumericSorter* self, GtkExpression* expression);
	void gtk_numeric_sorter_set_sort_order(GtkNumericSorter* self, GtkSortType sortOrder);

	// gtk.ObjectExpression

	GType gtk_object_expression_get_type();
	GtkExpression* gtk_object_expression_new(GObject* object);
	GObject* gtk_object_expression_get_object(GtkExpression* expression);

	// gtk.Orientable

	GType gtk_orientable_get_type();
	GtkOrientation gtk_orientable_get_orientation(GtkOrientable* orientable);
	void gtk_orientable_set_orientation(GtkOrientable* orientable, GtkOrientation orientation);

	// gtk.Overlay

	GType gtk_overlay_get_type();
	GtkWidget* gtk_overlay_new();
	void gtk_overlay_add_overlay(GtkOverlay* overlay, GtkWidget* widget);
	GtkWidget* gtk_overlay_get_child(GtkOverlay* overlay);
	int gtk_overlay_get_clip_overlay(GtkOverlay* overlay, GtkWidget* widget);
	int gtk_overlay_get_measure_overlay(GtkOverlay* overlay, GtkWidget* widget);
	void gtk_overlay_remove_overlay(GtkOverlay* overlay, GtkWidget* widget);
	void gtk_overlay_set_child(GtkOverlay* overlay, GtkWidget* child);
	void gtk_overlay_set_clip_overlay(GtkOverlay* overlay, GtkWidget* widget, int clipOverlay);
	void gtk_overlay_set_measure_overlay(GtkOverlay* overlay, GtkWidget* widget, int measure);

	// gtk.OverlayLayout

	GType gtk_overlay_layout_get_type();
	GtkLayoutManager* gtk_overlay_layout_new();

	// gtk.OverlayLayoutChild

	GType gtk_overlay_layout_child_get_type();
	int gtk_overlay_layout_child_get_clip_overlay(GtkOverlayLayoutChild* child);
	int gtk_overlay_layout_child_get_measure(GtkOverlayLayoutChild* child);
	void gtk_overlay_layout_child_set_clip_overlay(GtkOverlayLayoutChild* child, int clipOverlay);
	void gtk_overlay_layout_child_set_measure(GtkOverlayLayoutChild* child, int measure);

	// gtk.PadController

	GType gtk_pad_controller_get_type();
	GtkPadController* gtk_pad_controller_new(GActionGroup* group, GdkDevice* pad);
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

	// gtk.PageSetupUnixDialog

	GType gtk_page_setup_unix_dialog_get_type();
	GtkWidget* gtk_page_setup_unix_dialog_new(const(char)* title, GtkWindow* parent);
	GtkPageSetup* gtk_page_setup_unix_dialog_get_page_setup(GtkPageSetupUnixDialog* dialog);
	GtkPrintSettings* gtk_page_setup_unix_dialog_get_print_settings(GtkPageSetupUnixDialog* dialog);
	void gtk_page_setup_unix_dialog_set_page_setup(GtkPageSetupUnixDialog* dialog, GtkPageSetup* pageSetup);
	void gtk_page_setup_unix_dialog_set_print_settings(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* printSettings);

	// gtk.Paned

	GType gtk_paned_get_type();
	GtkWidget* gtk_paned_new(GtkOrientation orientation);
	GtkWidget* gtk_paned_get_end_child(GtkPaned* paned);
	int gtk_paned_get_position(GtkPaned* paned);
	int gtk_paned_get_resize_end_child(GtkPaned* paned);
	int gtk_paned_get_resize_start_child(GtkPaned* paned);
	int gtk_paned_get_shrink_end_child(GtkPaned* paned);
	int gtk_paned_get_shrink_start_child(GtkPaned* paned);
	GtkWidget* gtk_paned_get_start_child(GtkPaned* paned);
	int gtk_paned_get_wide_handle(GtkPaned* paned);
	void gtk_paned_set_end_child(GtkPaned* paned, GtkWidget* child);
	void gtk_paned_set_position(GtkPaned* paned, int position);
	void gtk_paned_set_resize_end_child(GtkPaned* paned, int resize);
	void gtk_paned_set_resize_start_child(GtkPaned* paned, int resize);
	void gtk_paned_set_shrink_end_child(GtkPaned* paned, int resize);
	void gtk_paned_set_shrink_start_child(GtkPaned* paned, int resize);
	void gtk_paned_set_start_child(GtkPaned* paned, GtkWidget* child);
	void gtk_paned_set_wide_handle(GtkPaned* paned, int wide);

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

	// gtk.ParamSpecExpression

	GType gtk_param_expression_get_type();

	// gtk.PasswordEntry

	GType gtk_password_entry_get_type();
	GtkWidget* gtk_password_entry_new();
	GMenuModel* gtk_password_entry_get_extra_menu(GtkPasswordEntry* entry);
	int gtk_password_entry_get_show_peek_icon(GtkPasswordEntry* entry);
	void gtk_password_entry_set_extra_menu(GtkPasswordEntry* entry, GMenuModel* model);
	void gtk_password_entry_set_show_peek_icon(GtkPasswordEntry* entry, int showPeekIcon);

	// gtk.Picture

	GType gtk_picture_get_type();
	GtkWidget* gtk_picture_new();
	GtkWidget* gtk_picture_new_for_file(GFile* file);
	GtkWidget* gtk_picture_new_for_filename(char* filename);
	GtkWidget* gtk_picture_new_for_paintable(GdkPaintable* paintable);
	GtkWidget* gtk_picture_new_for_pixbuf(GdkPixbuf* pixbuf);
	GtkWidget* gtk_picture_new_for_resource(const(char)* resourcePath);
	const(char)* gtk_picture_get_alternative_text(GtkPicture* self);
	int gtk_picture_get_can_shrink(GtkPicture* self);
	GFile* gtk_picture_get_file(GtkPicture* self);
	int gtk_picture_get_keep_aspect_ratio(GtkPicture* self);
	GdkPaintable* gtk_picture_get_paintable(GtkPicture* self);
	void gtk_picture_set_alternative_text(GtkPicture* self, const(char)* alternativeText);
	void gtk_picture_set_can_shrink(GtkPicture* self, int canShrink);
	void gtk_picture_set_file(GtkPicture* self, GFile* file);
	void gtk_picture_set_filename(GtkPicture* self, const(char)* filename);
	void gtk_picture_set_keep_aspect_ratio(GtkPicture* self, int keepAspectRatio);
	void gtk_picture_set_paintable(GtkPicture* self, GdkPaintable* paintable);
	void gtk_picture_set_pixbuf(GtkPicture* self, GdkPixbuf* pixbuf);
	void gtk_picture_set_resource(GtkPicture* self, const(char)* resourcePath);

	// gtk.Popover

	GType gtk_popover_get_type();
	GtkWidget* gtk_popover_new();
	int gtk_popover_get_autohide(GtkPopover* popover);
	int gtk_popover_get_cascade_popdown(GtkPopover* popover);
	GtkWidget* gtk_popover_get_child(GtkPopover* popover);
	int gtk_popover_get_has_arrow(GtkPopover* popover);
	int gtk_popover_get_mnemonics_visible(GtkPopover* popover);
	void gtk_popover_get_offset(GtkPopover* popover, int* xOffset, int* yOffset);
	int gtk_popover_get_pointing_to(GtkPopover* popover, GdkRectangle* rect);
	GtkPositionType gtk_popover_get_position(GtkPopover* popover);
	void gtk_popover_popdown(GtkPopover* popover);
	void gtk_popover_popup(GtkPopover* popover);
	void gtk_popover_present(GtkPopover* popover);
	void gtk_popover_set_autohide(GtkPopover* popover, int autohide);
	void gtk_popover_set_cascade_popdown(GtkPopover* popover, int cascadePopdown);
	void gtk_popover_set_child(GtkPopover* popover, GtkWidget* child);
	void gtk_popover_set_default_widget(GtkPopover* popover, GtkWidget* widget);
	void gtk_popover_set_has_arrow(GtkPopover* popover, int hasArrow);
	void gtk_popover_set_mnemonics_visible(GtkPopover* popover, int mnemonicsVisible);
	void gtk_popover_set_offset(GtkPopover* popover, int xOffset, int yOffset);
	void gtk_popover_set_pointing_to(GtkPopover* popover, GdkRectangle* rect);
	void gtk_popover_set_position(GtkPopover* popover, GtkPositionType position);

	// gtk.PopoverMenu

	GType gtk_popover_menu_get_type();
	GtkWidget* gtk_popover_menu_new_from_model(GMenuModel* model);
	GtkWidget* gtk_popover_menu_new_from_model_full(GMenuModel* model, GtkPopoverMenuFlags flags);
	int gtk_popover_menu_add_child(GtkPopoverMenu* popover, GtkWidget* child, const(char)* id);
	GMenuModel* gtk_popover_menu_get_menu_model(GtkPopoverMenu* popover);
	int gtk_popover_menu_remove_child(GtkPopoverMenu* popover, GtkWidget* child);
	void gtk_popover_menu_set_menu_model(GtkPopoverMenu* popover, GMenuModel* model);

	// gtk.PopoverMenuBar

	GType gtk_popover_menu_bar_get_type();
	GtkWidget* gtk_popover_menu_bar_new_from_model(GMenuModel* model);
	int gtk_popover_menu_bar_add_child(GtkPopoverMenuBar* bar, GtkWidget* child, const(char)* id);
	GMenuModel* gtk_popover_menu_bar_get_menu_model(GtkPopoverMenuBar* bar);
	int gtk_popover_menu_bar_remove_child(GtkPopoverMenuBar* bar, GtkWidget* child);
	void gtk_popover_menu_bar_set_menu_model(GtkPopoverMenuBar* bar, GMenuModel* model);

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

	// gtk.PrintJob

	GType gtk_print_job_get_type();
	GtkPrintJob* gtk_print_job_new(const(char)* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* pageSetup);
	int gtk_print_job_get_collate(GtkPrintJob* job);
	uint gtk_print_job_get_n_up(GtkPrintJob* job);
	GtkNumberUpLayout gtk_print_job_get_n_up_layout(GtkPrintJob* job);
	int gtk_print_job_get_num_copies(GtkPrintJob* job);
	GtkPageRange* gtk_print_job_get_page_ranges(GtkPrintJob* job, int* nRanges);
	GtkPageSet gtk_print_job_get_page_set(GtkPrintJob* job);
	GtkPrintPages gtk_print_job_get_pages(GtkPrintJob* job);
	GtkPrinter* gtk_print_job_get_printer(GtkPrintJob* job);
	int gtk_print_job_get_reverse(GtkPrintJob* job);
	int gtk_print_job_get_rotate(GtkPrintJob* job);
	double gtk_print_job_get_scale(GtkPrintJob* job);
	GtkPrintSettings* gtk_print_job_get_settings(GtkPrintJob* job);
	GtkPrintStatus gtk_print_job_get_status(GtkPrintJob* job);
	cairo_surface_t* gtk_print_job_get_surface(GtkPrintJob* job, GError** err);
	const(char)* gtk_print_job_get_title(GtkPrintJob* job);
	int gtk_print_job_get_track_print_status(GtkPrintJob* job);
	void gtk_print_job_send(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, void* userData, GDestroyNotify dnotify);
	void gtk_print_job_set_collate(GtkPrintJob* job, int collate);
	void gtk_print_job_set_n_up(GtkPrintJob* job, uint nUp);
	void gtk_print_job_set_n_up_layout(GtkPrintJob* job, GtkNumberUpLayout layout);
	void gtk_print_job_set_num_copies(GtkPrintJob* job, int numCopies);
	void gtk_print_job_set_page_ranges(GtkPrintJob* job, GtkPageRange* ranges, int nRanges);
	void gtk_print_job_set_page_set(GtkPrintJob* job, GtkPageSet pageSet);
	void gtk_print_job_set_pages(GtkPrintJob* job, GtkPrintPages pages);
	void gtk_print_job_set_reverse(GtkPrintJob* job, int reverse);
	void gtk_print_job_set_rotate(GtkPrintJob* job, int rotate);
	void gtk_print_job_set_scale(GtkPrintJob* job, double scale);
	int gtk_print_job_set_source_fd(GtkPrintJob* job, int fd, GError** err);
	int gtk_print_job_set_source_file(GtkPrintJob* job, char* filename, GError** err);
	void gtk_print_job_set_track_print_status(GtkPrintJob* job, int trackStatus);

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

	// gtk.PrintUnixDialog

	GType gtk_print_unix_dialog_get_type();
	GtkWidget* gtk_print_unix_dialog_new(const(char)* title, GtkWindow* parent);
	void gtk_print_unix_dialog_add_custom_tab(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tabLabel);
	int gtk_print_unix_dialog_get_current_page(GtkPrintUnixDialog* dialog);
	int gtk_print_unix_dialog_get_embed_page_setup(GtkPrintUnixDialog* dialog);
	int gtk_print_unix_dialog_get_has_selection(GtkPrintUnixDialog* dialog);
	GtkPrintCapabilities gtk_print_unix_dialog_get_manual_capabilities(GtkPrintUnixDialog* dialog);
	GtkPageSetup* gtk_print_unix_dialog_get_page_setup(GtkPrintUnixDialog* dialog);
	int gtk_print_unix_dialog_get_page_setup_set(GtkPrintUnixDialog* dialog);
	GtkPrinter* gtk_print_unix_dialog_get_selected_printer(GtkPrintUnixDialog* dialog);
	GtkPrintSettings* gtk_print_unix_dialog_get_settings(GtkPrintUnixDialog* dialog);
	int gtk_print_unix_dialog_get_support_selection(GtkPrintUnixDialog* dialog);
	void gtk_print_unix_dialog_set_current_page(GtkPrintUnixDialog* dialog, int currentPage);
	void gtk_print_unix_dialog_set_embed_page_setup(GtkPrintUnixDialog* dialog, int embed);
	void gtk_print_unix_dialog_set_has_selection(GtkPrintUnixDialog* dialog, int hasSelection);
	void gtk_print_unix_dialog_set_manual_capabilities(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities);
	void gtk_print_unix_dialog_set_page_setup(GtkPrintUnixDialog* dialog, GtkPageSetup* pageSetup);
	void gtk_print_unix_dialog_set_settings(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings);
	void gtk_print_unix_dialog_set_support_selection(GtkPrintUnixDialog* dialog, int supportSelection);

	// gtk.Printer

	GType gtk_printer_get_type();
	GtkPrinter* gtk_printer_new(const(char)* name, GtkPrintBackend* backend, int virtual);
	int gtk_printer_accepts_pdf(GtkPrinter* printer);
	int gtk_printer_accepts_ps(GtkPrinter* printer);
	int gtk_printer_compare(GtkPrinter* a, GtkPrinter* b);
	GtkPrintBackend* gtk_printer_get_backend(GtkPrinter* printer);
	GtkPrintCapabilities gtk_printer_get_capabilities(GtkPrinter* printer);
	GtkPageSetup* gtk_printer_get_default_page_size(GtkPrinter* printer);
	const(char)* gtk_printer_get_description(GtkPrinter* printer);
	int gtk_printer_get_hard_margins(GtkPrinter* printer, double* top, double* bottom, double* left, double* right);
	int gtk_printer_get_hard_margins_for_paper_size(GtkPrinter* printer, GtkPaperSize* paperSize, double* top, double* bottom, double* left, double* right);
	const(char)* gtk_printer_get_icon_name(GtkPrinter* printer);
	int gtk_printer_get_job_count(GtkPrinter* printer);
	const(char)* gtk_printer_get_location(GtkPrinter* printer);
	const(char)* gtk_printer_get_name(GtkPrinter* printer);
	const(char)* gtk_printer_get_state_message(GtkPrinter* printer);
	int gtk_printer_has_details(GtkPrinter* printer);
	int gtk_printer_is_accepting_jobs(GtkPrinter* printer);
	int gtk_printer_is_active(GtkPrinter* printer);
	int gtk_printer_is_default(GtkPrinter* printer);
	int gtk_printer_is_paused(GtkPrinter* printer);
	int gtk_printer_is_virtual(GtkPrinter* printer);
	GList* gtk_printer_list_papers(GtkPrinter* printer);
	void gtk_printer_request_details(GtkPrinter* printer);

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

	// gtk.PropertyExpression

	GType gtk_property_expression_get_type();
	GtkExpression* gtk_property_expression_new(GType thisType, GtkExpression* expression, const(char)* propertyName);
	GtkExpression* gtk_property_expression_new_for_pspec(GtkExpression* expression, GParamSpec* pspec);
	GtkExpression* gtk_property_expression_get_expression(GtkExpression* expression);
	GParamSpec* gtk_property_expression_get_pspec(GtkExpression* expression);

	// gtk.Range

	GType gtk_range_get_type();
	GtkAdjustment* gtk_range_get_adjustment(GtkRange* range);
	double gtk_range_get_fill_level(GtkRange* range);
	int gtk_range_get_flippable(GtkRange* range);
	int gtk_range_get_inverted(GtkRange* range);
	void gtk_range_get_range_rect(GtkRange* range, GdkRectangle* rangeRect);
	int gtk_range_get_restrict_to_fill_level(GtkRange* range);
	int gtk_range_get_round_digits(GtkRange* range);
	int gtk_range_get_show_fill_level(GtkRange* range);
	void gtk_range_get_slider_range(GtkRange* range, int* sliderStart, int* sliderEnd);
	int gtk_range_get_slider_size_fixed(GtkRange* range);
	double gtk_range_get_value(GtkRange* range);
	void gtk_range_set_adjustment(GtkRange* range, GtkAdjustment* adjustment);
	void gtk_range_set_fill_level(GtkRange* range, double fillLevel);
	void gtk_range_set_flippable(GtkRange* range, int flippable);
	void gtk_range_set_increments(GtkRange* range, double step, double page);
	void gtk_range_set_inverted(GtkRange* range, int setting);
	void gtk_range_set_range(GtkRange* range, double min, double max);
	void gtk_range_set_restrict_to_fill_level(GtkRange* range, int restrictToFillLevel);
	void gtk_range_set_round_digits(GtkRange* range, int roundDigits);
	void gtk_range_set_show_fill_level(GtkRange* range, int showFillLevel);
	void gtk_range_set_slider_size_fixed(GtkRange* range, int sizeFixed);
	void gtk_range_set_value(GtkRange* range, double value);

	// gtk.RecentInfo

	GType gtk_recent_info_get_type();
	GAppInfo* gtk_recent_info_create_app_info(GtkRecentInfo* info, const(char)* appName, GError** err);
	int gtk_recent_info_exists(GtkRecentInfo* info);
	GDateTime* gtk_recent_info_get_added(GtkRecentInfo* info);
	int gtk_recent_info_get_age(GtkRecentInfo* info);
	int gtk_recent_info_get_application_info(GtkRecentInfo* info, const(char)* appName, char** appExec, uint* count, GDateTime** stamp);
	char** gtk_recent_info_get_applications(GtkRecentInfo* info, size_t* length);
	const(char)* gtk_recent_info_get_description(GtkRecentInfo* info);
	const(char)* gtk_recent_info_get_display_name(GtkRecentInfo* info);
	GIcon* gtk_recent_info_get_gicon(GtkRecentInfo* info);
	char** gtk_recent_info_get_groups(GtkRecentInfo* info, size_t* length);
	const(char)* gtk_recent_info_get_mime_type(GtkRecentInfo* info);
	GDateTime* gtk_recent_info_get_modified(GtkRecentInfo* info);
	int gtk_recent_info_get_private_hint(GtkRecentInfo* info);
	char* gtk_recent_info_get_short_name(GtkRecentInfo* info);
	const(char)* gtk_recent_info_get_uri(GtkRecentInfo* info);
	char* gtk_recent_info_get_uri_display(GtkRecentInfo* info);
	GDateTime* gtk_recent_info_get_visited(GtkRecentInfo* info);
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

	// gtk.Requisition

	GType gtk_requisition_get_type();
	GtkRequisition* gtk_requisition_new();
	GtkRequisition* gtk_requisition_copy(GtkRequisition* requisition);
	void gtk_requisition_free(GtkRequisition* requisition);

	// gtk.Revealer

	GType gtk_revealer_get_type();
	GtkWidget* gtk_revealer_new();
	GtkWidget* gtk_revealer_get_child(GtkRevealer* revealer);
	int gtk_revealer_get_child_revealed(GtkRevealer* revealer);
	int gtk_revealer_get_reveal_child(GtkRevealer* revealer);
	uint gtk_revealer_get_transition_duration(GtkRevealer* revealer);
	GtkRevealerTransitionType gtk_revealer_get_transition_type(GtkRevealer* revealer);
	void gtk_revealer_set_child(GtkRevealer* revealer, GtkWidget* child);
	void gtk_revealer_set_reveal_child(GtkRevealer* revealer, int revealChild);
	void gtk_revealer_set_transition_duration(GtkRevealer* revealer, uint duration);
	void gtk_revealer_set_transition_type(GtkRevealer* revealer, GtkRevealerTransitionType transition);

	// gtk.Root

	GType gtk_root_get_type();
	GdkDisplay* gtk_root_get_display(GtkRoot* self);
	GtkWidget* gtk_root_get_focus(GtkRoot* self);
	void gtk_root_set_focus(GtkRoot* self, GtkWidget* focus);

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
	void gtk_scale_set_format_value_func(GtkScale* scale, GtkScaleFormatValueFunc func, void* userData, GDestroyNotify destroyNotify);
	void gtk_scale_set_has_origin(GtkScale* scale, int hasOrigin);
	void gtk_scale_set_value_pos(GtkScale* scale, GtkPositionType pos);

	// gtk.ScaleButton

	GType gtk_scale_button_get_type();
	GtkWidget* gtk_scale_button_new(double min, double max, double step, char** icons);
	GtkAdjustment* gtk_scale_button_get_adjustment(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_minus_button(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_plus_button(GtkScaleButton* button);
	GtkWidget* gtk_scale_button_get_popup(GtkScaleButton* button);
	double gtk_scale_button_get_value(GtkScaleButton* button);
	void gtk_scale_button_set_adjustment(GtkScaleButton* button, GtkAdjustment* adjustment);
	void gtk_scale_button_set_icons(GtkScaleButton* button, char** icons);
	void gtk_scale_button_set_value(GtkScaleButton* button, double value);

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
	GtkAdjustment* gtk_scrollbar_get_adjustment(GtkScrollbar* self);
	void gtk_scrollbar_set_adjustment(GtkScrollbar* self, GtkAdjustment* adjustment);

	// gtk.ScrolledWindow

	GType gtk_scrolled_window_get_type();
	GtkWidget* gtk_scrolled_window_new();
	GtkWidget* gtk_scrolled_window_get_child(GtkScrolledWindow* scrolledWindow);
	GtkAdjustment* gtk_scrolled_window_get_hadjustment(GtkScrolledWindow* scrolledWindow);
	int gtk_scrolled_window_get_has_frame(GtkScrolledWindow* scrolledWindow);
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
	GtkAdjustment* gtk_scrolled_window_get_vadjustment(GtkScrolledWindow* scrolledWindow);
	GtkWidget* gtk_scrolled_window_get_vscrollbar(GtkScrolledWindow* scrolledWindow);
	void gtk_scrolled_window_set_child(GtkScrolledWindow* scrolledWindow, GtkWidget* child);
	void gtk_scrolled_window_set_hadjustment(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment);
	void gtk_scrolled_window_set_has_frame(GtkScrolledWindow* scrolledWindow, int hasFrame);
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
	void gtk_scrolled_window_set_vadjustment(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment);
	void gtk_scrolled_window_unset_placement(GtkScrolledWindow* scrolledWindow);

	// gtk.SearchBar

	GType gtk_search_bar_get_type();
	GtkWidget* gtk_search_bar_new();
	void gtk_search_bar_connect_entry(GtkSearchBar* bar, GtkEditable* entry);
	GtkWidget* gtk_search_bar_get_child(GtkSearchBar* bar);
	GtkWidget* gtk_search_bar_get_key_capture_widget(GtkSearchBar* bar);
	int gtk_search_bar_get_search_mode(GtkSearchBar* bar);
	int gtk_search_bar_get_show_close_button(GtkSearchBar* bar);
	void gtk_search_bar_set_child(GtkSearchBar* bar, GtkWidget* child);
	void gtk_search_bar_set_key_capture_widget(GtkSearchBar* bar, GtkWidget* widget);
	void gtk_search_bar_set_search_mode(GtkSearchBar* bar, int searchMode);
	void gtk_search_bar_set_show_close_button(GtkSearchBar* bar, int visible);

	// gtk.SearchEntry

	GType gtk_search_entry_get_type();
	GtkWidget* gtk_search_entry_new();
	GtkWidget* gtk_search_entry_get_key_capture_widget(GtkSearchEntry* entry);
	void gtk_search_entry_set_key_capture_widget(GtkSearchEntry* entry, GtkWidget* widget);

	// gtk.SelectionFilterModel

	GType gtk_selection_filter_model_get_type();
	GtkSelectionFilterModel* gtk_selection_filter_model_new(GtkSelectionModel* model);
	GtkSelectionModel* gtk_selection_filter_model_get_model(GtkSelectionFilterModel* self);
	void gtk_selection_filter_model_set_model(GtkSelectionFilterModel* self, GtkSelectionModel* model);

	// gtk.SelectionModel

	GType gtk_selection_model_get_type();
	GtkBitset* gtk_selection_model_get_selection(GtkSelectionModel* model);
	GtkBitset* gtk_selection_model_get_selection_in_range(GtkSelectionModel* model, uint position, uint nItems);
	int gtk_selection_model_is_selected(GtkSelectionModel* model, uint position);
	int gtk_selection_model_select_all(GtkSelectionModel* model);
	int gtk_selection_model_select_item(GtkSelectionModel* model, uint position, int unselectRest);
	int gtk_selection_model_select_range(GtkSelectionModel* model, uint position, uint nItems, int unselectRest);
	void gtk_selection_model_selection_changed(GtkSelectionModel* model, uint position, uint nItems);
	int gtk_selection_model_set_selection(GtkSelectionModel* model, GtkBitset* selected, GtkBitset* mask);
	int gtk_selection_model_unselect_all(GtkSelectionModel* model);
	int gtk_selection_model_unselect_item(GtkSelectionModel* model, uint position);
	int gtk_selection_model_unselect_range(GtkSelectionModel* model, uint position, uint nItems);

	// gtk.Separator

	GType gtk_separator_get_type();
	GtkWidget* gtk_separator_new(GtkOrientation orientation);

	// gtk.Settings

	GType gtk_settings_get_type();
	GtkSettings* gtk_settings_get_default();
	GtkSettings* gtk_settings_get_for_display(GdkDisplay* display);
	void gtk_settings_reset_property(GtkSettings* settings, const(char)* name);

	// gtk.Shortcut

	GType gtk_shortcut_get_type();
	GtkShortcut* gtk_shortcut_new(GtkShortcutTrigger* trigger, GtkShortcutAction* action);
	GtkShortcut* gtk_shortcut_new_with_arguments(GtkShortcutTrigger* trigger, GtkShortcutAction* action, const(char)* formatString, ... );
	GtkShortcutAction* gtk_shortcut_get_action(GtkShortcut* self);
	GVariant* gtk_shortcut_get_arguments(GtkShortcut* self);
	GtkShortcutTrigger* gtk_shortcut_get_trigger(GtkShortcut* self);
	void gtk_shortcut_set_action(GtkShortcut* self, GtkShortcutAction* action);
	void gtk_shortcut_set_arguments(GtkShortcut* self, GVariant* args);
	void gtk_shortcut_set_trigger(GtkShortcut* self, GtkShortcutTrigger* trigger);

	// gtk.ShortcutAction

	GType gtk_shortcut_action_get_type();
	GtkShortcutAction* gtk_shortcut_action_parse_string(const(char)* string_);
	int gtk_shortcut_action_activate(GtkShortcutAction* self, GtkShortcutActionFlags flags, GtkWidget* widget, GVariant* args);
	void gtk_shortcut_action_print(GtkShortcutAction* self, GString* string_);
	char* gtk_shortcut_action_to_string(GtkShortcutAction* self);

	// gtk.ShortcutController

	GType gtk_shortcut_controller_get_type();
	GtkEventController* gtk_shortcut_controller_new();
	GtkEventController* gtk_shortcut_controller_new_for_model(GListModel* model);
	void gtk_shortcut_controller_add_shortcut(GtkShortcutController* self, GtkShortcut* shortcut);
	GdkModifierType gtk_shortcut_controller_get_mnemonics_modifiers(GtkShortcutController* self);
	GtkShortcutScope gtk_shortcut_controller_get_scope(GtkShortcutController* self);
	void gtk_shortcut_controller_remove_shortcut(GtkShortcutController* self, GtkShortcut* shortcut);
	void gtk_shortcut_controller_set_mnemonics_modifiers(GtkShortcutController* self, GdkModifierType modifiers);
	void gtk_shortcut_controller_set_scope(GtkShortcutController* self, GtkShortcutScope scope_);

	// gtk.ShortcutLabel

	GType gtk_shortcut_label_get_type();
	GtkWidget* gtk_shortcut_label_new(const(char)* accelerator);
	const(char)* gtk_shortcut_label_get_accelerator(GtkShortcutLabel* self);
	const(char)* gtk_shortcut_label_get_disabled_text(GtkShortcutLabel* self);
	void gtk_shortcut_label_set_accelerator(GtkShortcutLabel* self, const(char)* accelerator);
	void gtk_shortcut_label_set_disabled_text(GtkShortcutLabel* self, const(char)* disabledText);

	// gtk.ShortcutManager

	GType gtk_shortcut_manager_get_type();

	// gtk.ShortcutTrigger

	GType gtk_shortcut_trigger_get_type();
	GtkShortcutTrigger* gtk_shortcut_trigger_parse_string(const(char)* string_);
	int gtk_shortcut_trigger_compare(void* trigger1, void* trigger2);
	int gtk_shortcut_trigger_equal(void* trigger1, void* trigger2);
	uint gtk_shortcut_trigger_hash(void* trigger);
	void gtk_shortcut_trigger_print(GtkShortcutTrigger* self, GString* string_);
	int gtk_shortcut_trigger_print_label(GtkShortcutTrigger* self, GdkDisplay* display, GString* string_);
	char* gtk_shortcut_trigger_to_label(GtkShortcutTrigger* self, GdkDisplay* display);
	char* gtk_shortcut_trigger_to_string(GtkShortcutTrigger* self);
	GdkKeyMatch gtk_shortcut_trigger_trigger(GtkShortcutTrigger* self, GdkEvent* event, int enableMnemonics);

	// gtk.ShortcutsGroup

	GType gtk_shortcuts_group_get_type();

	// gtk.ShortcutsSection

	GType gtk_shortcuts_section_get_type();

	// gtk.ShortcutsShortcut

	GType gtk_shortcuts_shortcut_get_type();

	// gtk.ShortcutsWindow

	GType gtk_shortcuts_window_get_type();

	// gtk.SignalAction

	GType gtk_signal_action_get_type();
	GtkShortcutAction* gtk_signal_action_new(const(char)* signalName);
	const(char)* gtk_signal_action_get_signal_name(GtkSignalAction* self);

	// gtk.SignalListItemFactory

	GType gtk_signal_list_item_factory_get_type();
	GtkListItemFactory* gtk_signal_list_item_factory_new();

	// gtk.SingleSelection

	GType gtk_single_selection_get_type();
	GtkSingleSelection* gtk_single_selection_new(GListModel* model);
	int gtk_single_selection_get_autoselect(GtkSingleSelection* self);
	int gtk_single_selection_get_can_unselect(GtkSingleSelection* self);
	GListModel* gtk_single_selection_get_model(GtkSingleSelection* self);
	uint gtk_single_selection_get_selected(GtkSingleSelection* self);
	void* gtk_single_selection_get_selected_item(GtkSingleSelection* self);
	void gtk_single_selection_set_autoselect(GtkSingleSelection* self, int autoselect);
	void gtk_single_selection_set_can_unselect(GtkSingleSelection* self, int canUnselect);
	void gtk_single_selection_set_model(GtkSingleSelection* self, GListModel* model);
	void gtk_single_selection_set_selected(GtkSingleSelection* self, uint position);

	// gtk.SizeGroup

	GType gtk_size_group_get_type();
	GtkSizeGroup* gtk_size_group_new(GtkSizeGroupMode mode);
	void gtk_size_group_add_widget(GtkSizeGroup* sizeGroup, GtkWidget* widget);
	GtkSizeGroupMode gtk_size_group_get_mode(GtkSizeGroup* sizeGroup);
	GSList* gtk_size_group_get_widgets(GtkSizeGroup* sizeGroup);
	void gtk_size_group_remove_widget(GtkSizeGroup* sizeGroup, GtkWidget* widget);
	void gtk_size_group_set_mode(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode);

	// gtk.SliceListModel

	GType gtk_slice_list_model_get_type();
	GtkSliceListModel* gtk_slice_list_model_new(GListModel* model, uint offset, uint size);
	GListModel* gtk_slice_list_model_get_model(GtkSliceListModel* self);
	uint gtk_slice_list_model_get_offset(GtkSliceListModel* self);
	uint gtk_slice_list_model_get_size(GtkSliceListModel* self);
	void gtk_slice_list_model_set_model(GtkSliceListModel* self, GListModel* model);
	void gtk_slice_list_model_set_offset(GtkSliceListModel* self, uint offset);
	void gtk_slice_list_model_set_size(GtkSliceListModel* self, uint size);

	// gtk.Snapshot

	GType gtk_snapshot_get_type();
	GtkSnapshot* gtk_snapshot_new();
	void gtk_snapshot_append_border(GtkSnapshot* snapshot, GskRoundedRect* outline, float* borderWidth, GdkRGBA* borderColor);
	cairo_t* gtk_snapshot_append_cairo(GtkSnapshot* snapshot, graphene_rect_t* bounds);
	void gtk_snapshot_append_color(GtkSnapshot* snapshot, GdkRGBA* color, graphene_rect_t* bounds);
	void gtk_snapshot_append_conic_gradient(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float rotation, GskColorStop* stops, size_t nStops);
	void gtk_snapshot_append_inset_shadow(GtkSnapshot* snapshot, GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius);
	void gtk_snapshot_append_layout(GtkSnapshot* snapshot, PangoLayout* layout, GdkRGBA* color);
	void gtk_snapshot_append_linear_gradient(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* startPoint, graphene_point_t* endPoint, GskColorStop* stops, size_t nStops);
	void gtk_snapshot_append_node(GtkSnapshot* snapshot, GskRenderNode* node);
	void gtk_snapshot_append_outset_shadow(GtkSnapshot* snapshot, GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius);
	void gtk_snapshot_append_radial_gradient(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* stops, size_t nStops);
	void gtk_snapshot_append_repeating_linear_gradient(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* startPoint, graphene_point_t* endPoint, GskColorStop* stops, size_t nStops);
	void gtk_snapshot_append_repeating_radial_gradient(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* stops, size_t nStops);
	void gtk_snapshot_append_texture(GtkSnapshot* snapshot, GdkTexture* texture, graphene_rect_t* bounds);
	GskRenderNode* gtk_snapshot_free_to_node(GtkSnapshot* snapshot);
	GdkPaintable* gtk_snapshot_free_to_paintable(GtkSnapshot* snapshot, graphene_size_t* size);
	void gtk_snapshot_gl_shader_pop_texture(GtkSnapshot* snapshot);
	void gtk_snapshot_perspective(GtkSnapshot* snapshot, float depth);
	void gtk_snapshot_pop(GtkSnapshot* snapshot);
	void gtk_snapshot_push_blend(GtkSnapshot* snapshot, GskBlendMode blendMode);
	void gtk_snapshot_push_blur(GtkSnapshot* snapshot, double radius);
	void gtk_snapshot_push_clip(GtkSnapshot* snapshot, graphene_rect_t* bounds);
	void gtk_snapshot_push_color_matrix(GtkSnapshot* snapshot, graphene_matrix_t* colorMatrix, graphene_vec4_t* colorOffset);
	void gtk_snapshot_push_cross_fade(GtkSnapshot* snapshot, double progress);
	void gtk_snapshot_push_debug(GtkSnapshot* snapshot, const(char)* message, ... );
	void gtk_snapshot_push_gl_shader(GtkSnapshot* snapshot, GskGLShader* shader, graphene_rect_t* bounds, GBytes* takeArgs);
	void gtk_snapshot_push_opacity(GtkSnapshot* snapshot, double opacity);
	void gtk_snapshot_push_repeat(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_rect_t* childBounds);
	void gtk_snapshot_push_rounded_clip(GtkSnapshot* snapshot, GskRoundedRect* bounds);
	void gtk_snapshot_push_shadow(GtkSnapshot* snapshot, GskShadow* shadow, size_t nShadows);
	void gtk_snapshot_render_background(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	void gtk_snapshot_render_focus(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	void gtk_snapshot_render_frame(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	void gtk_snapshot_render_insertion_cursor(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout, int index, PangoDirection direction);
	void gtk_snapshot_render_layout(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout);
	void gtk_snapshot_restore(GtkSnapshot* snapshot);
	void gtk_snapshot_rotate(GtkSnapshot* snapshot, float angle);
	void gtk_snapshot_rotate_3d(GtkSnapshot* snapshot, float angle, graphene_vec3_t* axis);
	void gtk_snapshot_save(GtkSnapshot* snapshot);
	void gtk_snapshot_scale(GtkSnapshot* snapshot, float factorX, float factorY);
	void gtk_snapshot_scale_3d(GtkSnapshot* snapshot, float factorX, float factorY, float factorZ);
	GskRenderNode* gtk_snapshot_to_node(GtkSnapshot* snapshot);
	GdkPaintable* gtk_snapshot_to_paintable(GtkSnapshot* snapshot, graphene_size_t* size);
	void gtk_snapshot_transform(GtkSnapshot* snapshot, GskTransform* transform);
	void gtk_snapshot_transform_matrix(GtkSnapshot* snapshot, graphene_matrix_t* matrix);
	void gtk_snapshot_translate(GtkSnapshot* snapshot, graphene_point_t* point);
	void gtk_snapshot_translate_3d(GtkSnapshot* snapshot, graphene_point3d_t* point);

	// gtk.SortListModel

	GType gtk_sort_list_model_get_type();
	GtkSortListModel* gtk_sort_list_model_new(GListModel* model, GtkSorter* sorter);
	int gtk_sort_list_model_get_incremental(GtkSortListModel* self);
	GListModel* gtk_sort_list_model_get_model(GtkSortListModel* self);
	uint gtk_sort_list_model_get_pending(GtkSortListModel* self);
	GtkSorter* gtk_sort_list_model_get_sorter(GtkSortListModel* self);
	void gtk_sort_list_model_set_incremental(GtkSortListModel* self, int incremental);
	void gtk_sort_list_model_set_model(GtkSortListModel* self, GListModel* model);
	void gtk_sort_list_model_set_sorter(GtkSortListModel* self, GtkSorter* sorter);

	// gtk.Sorter

	GType gtk_sorter_get_type();
	void gtk_sorter_changed(GtkSorter* self, GtkSorterChange change);
	GtkOrdering gtk_sorter_compare(GtkSorter* self, void* item1, void* item2);
	GtkSorterOrder gtk_sorter_get_order(GtkSorter* self);

	// gtk.SpinButton

	GType gtk_spin_button_get_type();
	GtkWidget* gtk_spin_button_new(GtkAdjustment* adjustment, double climbRate, uint digits);
	GtkWidget* gtk_spin_button_new_with_range(double min, double max, double step);
	void gtk_spin_button_configure(GtkSpinButton* spinButton, GtkAdjustment* adjustment, double climbRate, uint digits);
	GtkAdjustment* gtk_spin_button_get_adjustment(GtkSpinButton* spinButton);
	double gtk_spin_button_get_climb_rate(GtkSpinButton* spinButton);
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
	void gtk_spin_button_set_climb_rate(GtkSpinButton* spinButton, double climbRate);
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

	// gtk.Spinner

	GType gtk_spinner_get_type();
	GtkWidget* gtk_spinner_new();
	int gtk_spinner_get_spinning(GtkSpinner* spinner);
	void gtk_spinner_set_spinning(GtkSpinner* spinner, int spinning);
	void gtk_spinner_start(GtkSpinner* spinner);
	void gtk_spinner_stop(GtkSpinner* spinner);

	// gtk.Stack

	GType gtk_stack_get_type();
	GtkWidget* gtk_stack_new();
	GtkStackPage* gtk_stack_add_child(GtkStack* stack, GtkWidget* child);
	GtkStackPage* gtk_stack_add_named(GtkStack* stack, GtkWidget* child, const(char)* name);
	GtkStackPage* gtk_stack_add_titled(GtkStack* stack, GtkWidget* child, const(char)* name, const(char)* title);
	GtkWidget* gtk_stack_get_child_by_name(GtkStack* stack, const(char)* name);
	int gtk_stack_get_hhomogeneous(GtkStack* stack);
	int gtk_stack_get_interpolate_size(GtkStack* stack);
	GtkStackPage* gtk_stack_get_page(GtkStack* stack, GtkWidget* child);
	GtkSelectionModel* gtk_stack_get_pages(GtkStack* stack);
	uint gtk_stack_get_transition_duration(GtkStack* stack);
	int gtk_stack_get_transition_running(GtkStack* stack);
	GtkStackTransitionType gtk_stack_get_transition_type(GtkStack* stack);
	int gtk_stack_get_vhomogeneous(GtkStack* stack);
	GtkWidget* gtk_stack_get_visible_child(GtkStack* stack);
	const(char)* gtk_stack_get_visible_child_name(GtkStack* stack);
	void gtk_stack_remove(GtkStack* stack, GtkWidget* child);
	void gtk_stack_set_hhomogeneous(GtkStack* stack, int hhomogeneous);
	void gtk_stack_set_interpolate_size(GtkStack* stack, int interpolateSize);
	void gtk_stack_set_transition_duration(GtkStack* stack, uint duration);
	void gtk_stack_set_transition_type(GtkStack* stack, GtkStackTransitionType transition);
	void gtk_stack_set_vhomogeneous(GtkStack* stack, int vhomogeneous);
	void gtk_stack_set_visible_child(GtkStack* stack, GtkWidget* child);
	void gtk_stack_set_visible_child_full(GtkStack* stack, const(char)* name, GtkStackTransitionType transition);
	void gtk_stack_set_visible_child_name(GtkStack* stack, const(char)* name);

	// gtk.StackPage

	GType gtk_stack_page_get_type();
	GtkWidget* gtk_stack_page_get_child(GtkStackPage* self);
	const(char)* gtk_stack_page_get_icon_name(GtkStackPage* self);
	const(char)* gtk_stack_page_get_name(GtkStackPage* self);
	int gtk_stack_page_get_needs_attention(GtkStackPage* self);
	const(char)* gtk_stack_page_get_title(GtkStackPage* self);
	int gtk_stack_page_get_use_underline(GtkStackPage* self);
	int gtk_stack_page_get_visible(GtkStackPage* self);
	void gtk_stack_page_set_icon_name(GtkStackPage* self, const(char)* setting);
	void gtk_stack_page_set_name(GtkStackPage* self, const(char)* setting);
	void gtk_stack_page_set_needs_attention(GtkStackPage* self, int setting);
	void gtk_stack_page_set_title(GtkStackPage* self, const(char)* setting);
	void gtk_stack_page_set_use_underline(GtkStackPage* self, int setting);
	void gtk_stack_page_set_visible(GtkStackPage* self, int visible);

	// gtk.StackSidebar

	GType gtk_stack_sidebar_get_type();
	GtkWidget* gtk_stack_sidebar_new();
	GtkStack* gtk_stack_sidebar_get_stack(GtkStackSidebar* self);
	void gtk_stack_sidebar_set_stack(GtkStackSidebar* self, GtkStack* stack);

	// gtk.StackSwitcher

	GType gtk_stack_switcher_get_type();
	GtkWidget* gtk_stack_switcher_new();
	GtkStack* gtk_stack_switcher_get_stack(GtkStackSwitcher* switcher);
	void gtk_stack_switcher_set_stack(GtkStackSwitcher* switcher, GtkStack* stack);

	// gtk.Statusbar

	GType gtk_statusbar_get_type();
	GtkWidget* gtk_statusbar_new();
	uint gtk_statusbar_get_context_id(GtkStatusbar* statusbar, const(char)* contextDescription);
	void gtk_statusbar_pop(GtkStatusbar* statusbar, uint contextId);
	uint gtk_statusbar_push(GtkStatusbar* statusbar, uint contextId, const(char)* text);
	void gtk_statusbar_remove(GtkStatusbar* statusbar, uint contextId, uint messageId);
	void gtk_statusbar_remove_all(GtkStatusbar* statusbar, uint contextId);

	// gtk.StringFilter

	GType gtk_string_filter_get_type();
	GtkStringFilter* gtk_string_filter_new(GtkExpression* expression);
	GtkExpression* gtk_string_filter_get_expression(GtkStringFilter* self);
	int gtk_string_filter_get_ignore_case(GtkStringFilter* self);
	GtkStringFilterMatchMode gtk_string_filter_get_match_mode(GtkStringFilter* self);
	const(char)* gtk_string_filter_get_search(GtkStringFilter* self);
	void gtk_string_filter_set_expression(GtkStringFilter* self, GtkExpression* expression);
	void gtk_string_filter_set_ignore_case(GtkStringFilter* self, int ignoreCase);
	void gtk_string_filter_set_match_mode(GtkStringFilter* self, GtkStringFilterMatchMode mode);
	void gtk_string_filter_set_search(GtkStringFilter* self, const(char)* search);

	// gtk.StringList

	GType gtk_string_list_get_type();
	GtkStringList* gtk_string_list_new(char** strings);
	void gtk_string_list_append(GtkStringList* self, const(char)* string_);
	const(char)* gtk_string_list_get_string(GtkStringList* self, uint position);
	void gtk_string_list_remove(GtkStringList* self, uint position);
	void gtk_string_list_splice(GtkStringList* self, uint position, uint nRemovals, char** additions);
	void gtk_string_list_take(GtkStringList* self, char* string_);

	// gtk.StringObject

	GType gtk_string_object_get_type();
	GtkStringObject* gtk_string_object_new(const(char)* string_);
	const(char)* gtk_string_object_get_string(GtkStringObject* self);

	// gtk.StringSorter

	GType gtk_string_sorter_get_type();
	GtkStringSorter* gtk_string_sorter_new(GtkExpression* expression);
	GtkExpression* gtk_string_sorter_get_expression(GtkStringSorter* self);
	int gtk_string_sorter_get_ignore_case(GtkStringSorter* self);
	void gtk_string_sorter_set_expression(GtkStringSorter* self, GtkExpression* expression);
	void gtk_string_sorter_set_ignore_case(GtkStringSorter* self, int ignoreCase);

	// gtk.StyleContext

	GType gtk_style_context_get_type();
	void gtk_style_context_add_provider_for_display(GdkDisplay* display, GtkStyleProvider* provider, uint priority);
	void gtk_style_context_remove_provider_for_display(GdkDisplay* display, GtkStyleProvider* provider);
	void gtk_style_context_add_class(GtkStyleContext* context, const(char)* className);
	void gtk_style_context_add_provider(GtkStyleContext* context, GtkStyleProvider* provider, uint priority);
	void gtk_style_context_get_border(GtkStyleContext* context, GtkBorder* border);
	void gtk_style_context_get_color(GtkStyleContext* context, GdkRGBA* color);
	GdkDisplay* gtk_style_context_get_display(GtkStyleContext* context);
	void gtk_style_context_get_margin(GtkStyleContext* context, GtkBorder* margin);
	void gtk_style_context_get_padding(GtkStyleContext* context, GtkBorder* padding);
	int gtk_style_context_get_scale(GtkStyleContext* context);
	GtkStateFlags gtk_style_context_get_state(GtkStyleContext* context);
	int gtk_style_context_has_class(GtkStyleContext* context, const(char)* className);
	int gtk_style_context_lookup_color(GtkStyleContext* context, const(char)* colorName, GdkRGBA* color);
	void gtk_style_context_remove_class(GtkStyleContext* context, const(char)* className);
	void gtk_style_context_remove_provider(GtkStyleContext* context, GtkStyleProvider* provider);
	void gtk_style_context_restore(GtkStyleContext* context);
	void gtk_style_context_save(GtkStyleContext* context);
	void gtk_style_context_set_display(GtkStyleContext* context, GdkDisplay* display);
	void gtk_style_context_set_scale(GtkStyleContext* context, int scale);
	void gtk_style_context_set_state(GtkStyleContext* context, GtkStateFlags flags);
	char* gtk_style_context_to_string(GtkStyleContext* context, GtkStyleContextPrintFlags flags);

	// gtk.StyleProvider

	GType gtk_style_provider_get_type();

	// gtk.Switch

	GType gtk_switch_get_type();
	GtkWidget* gtk_switch_new();
	int gtk_switch_get_active(GtkSwitch* self);
	int gtk_switch_get_state(GtkSwitch* self);
	void gtk_switch_set_active(GtkSwitch* self, int isActive);
	void gtk_switch_set_state(GtkSwitch* self, int state);

	// gtk.Text

	GType gtk_text_get_type();
	GtkWidget* gtk_text_new();
	GtkWidget* gtk_text_new_with_buffer(GtkEntryBuffer* buffer);
	int gtk_text_get_activates_default(GtkText* self);
	PangoAttrList* gtk_text_get_attributes(GtkText* self);
	GtkEntryBuffer* gtk_text_get_buffer(GtkText* self);
	int gtk_text_get_enable_emoji_completion(GtkText* self);
	GMenuModel* gtk_text_get_extra_menu(GtkText* self);
	GtkInputHints gtk_text_get_input_hints(GtkText* self);
	GtkInputPurpose gtk_text_get_input_purpose(GtkText* self);
	dchar gtk_text_get_invisible_char(GtkText* self);
	int gtk_text_get_max_length(GtkText* self);
	int gtk_text_get_overwrite_mode(GtkText* self);
	const(char)* gtk_text_get_placeholder_text(GtkText* self);
	int gtk_text_get_propagate_text_width(GtkText* self);
	PangoTabArray* gtk_text_get_tabs(GtkText* self);
	ushort gtk_text_get_text_length(GtkText* self);
	int gtk_text_get_truncate_multiline(GtkText* self);
	int gtk_text_get_visibility(GtkText* self);
	int gtk_text_grab_focus_without_selecting(GtkText* self);
	void gtk_text_set_activates_default(GtkText* self, int activates);
	void gtk_text_set_attributes(GtkText* self, PangoAttrList* attrs);
	void gtk_text_set_buffer(GtkText* self, GtkEntryBuffer* buffer);
	void gtk_text_set_enable_emoji_completion(GtkText* self, int enableEmojiCompletion);
	void gtk_text_set_extra_menu(GtkText* self, GMenuModel* model);
	void gtk_text_set_input_hints(GtkText* self, GtkInputHints hints);
	void gtk_text_set_input_purpose(GtkText* self, GtkInputPurpose purpose);
	void gtk_text_set_invisible_char(GtkText* self, dchar ch);
	void gtk_text_set_max_length(GtkText* self, int length);
	void gtk_text_set_overwrite_mode(GtkText* self, int overwrite);
	void gtk_text_set_placeholder_text(GtkText* self, const(char)* text);
	void gtk_text_set_propagate_text_width(GtkText* self, int propagateTextWidth);
	void gtk_text_set_tabs(GtkText* self, PangoTabArray* tabs);
	void gtk_text_set_truncate_multiline(GtkText* self, int truncateMultiline);
	void gtk_text_set_visibility(GtkText* self, int visible);
	void gtk_text_unset_invisible_char(GtkText* self);

	// gtk.TextBuffer

	GType gtk_text_buffer_get_type();
	GtkTextBuffer* gtk_text_buffer_new(GtkTextTagTable* table);
	void gtk_text_buffer_add_mark(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where);
	void gtk_text_buffer_add_selection_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	void gtk_text_buffer_apply_tag(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_apply_tag_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_backspace(GtkTextBuffer* buffer, GtkTextIter* iter, int interactive, int defaultEditable);
	void gtk_text_buffer_begin_irreversible_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_begin_user_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_copy_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	GtkTextChildAnchor* gtk_text_buffer_create_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter);
	GtkTextMark* gtk_text_buffer_create_mark(GtkTextBuffer* buffer, const(char)* markName, GtkTextIter* where, int leftGravity);
	GtkTextTag* gtk_text_buffer_create_tag(GtkTextBuffer* buffer, const(char)* tagName, const(char)* firstPropertyName, ... );
	void gtk_text_buffer_cut_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard, int defaultEditable);
	void gtk_text_buffer_delete(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_delete_interactive(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, int defaultEditable);
	void gtk_text_buffer_delete_mark(GtkTextBuffer* buffer, GtkTextMark* mark);
	void gtk_text_buffer_delete_mark_by_name(GtkTextBuffer* buffer, const(char)* name);
	int gtk_text_buffer_delete_selection(GtkTextBuffer* buffer, int interactive, int defaultEditable);
	void gtk_text_buffer_end_irreversible_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_end_user_action(GtkTextBuffer* buffer);
	void gtk_text_buffer_get_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_get_can_redo(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_can_undo(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_char_count(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_enable_undo(GtkTextBuffer* buffer);
	void gtk_text_buffer_get_end_iter(GtkTextBuffer* buffer, GtkTextIter* iter);
	int gtk_text_buffer_get_has_selection(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_insert(GtkTextBuffer* buffer);
	void gtk_text_buffer_get_iter_at_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor);
	int gtk_text_buffer_get_iter_at_line(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber);
	int gtk_text_buffer_get_iter_at_line_index(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int byteIndex);
	int gtk_text_buffer_get_iter_at_line_offset(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int charOffset);
	void gtk_text_buffer_get_iter_at_mark(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark);
	void gtk_text_buffer_get_iter_at_offset(GtkTextBuffer* buffer, GtkTextIter* iter, int charOffset);
	int gtk_text_buffer_get_line_count(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_mark(GtkTextBuffer* buffer, const(char)* name);
	uint gtk_text_buffer_get_max_undo_levels(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_modified(GtkTextBuffer* buffer);
	GtkTextMark* gtk_text_buffer_get_selection_bound(GtkTextBuffer* buffer);
	int gtk_text_buffer_get_selection_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	GdkContentProvider* gtk_text_buffer_get_selection_content(GtkTextBuffer* buffer);
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
	void gtk_text_buffer_insert_paintable(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPaintable* paintable);
	void gtk_text_buffer_insert_range(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end);
	int gtk_text_buffer_insert_range_interactive(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, int defaultEditable);
	void gtk_text_buffer_insert_with_tags(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, GtkTextTag* firstTag, ... );
	void gtk_text_buffer_insert_with_tags_by_name(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, const(char)* firstTagName, ... );
	void gtk_text_buffer_move_mark(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where);
	void gtk_text_buffer_move_mark_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* where);
	void gtk_text_buffer_paste_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard, GtkTextIter* overrideLocation, int defaultEditable);
	void gtk_text_buffer_place_cursor(GtkTextBuffer* buffer, GtkTextIter* where);
	void gtk_text_buffer_redo(GtkTextBuffer* buffer);
	void gtk_text_buffer_remove_all_tags(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_remove_selection_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	void gtk_text_buffer_remove_tag(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_remove_tag_by_name(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end);
	void gtk_text_buffer_select_range(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound);
	void gtk_text_buffer_set_enable_undo(GtkTextBuffer* buffer, int enableUndo);
	void gtk_text_buffer_set_max_undo_levels(GtkTextBuffer* buffer, uint maxUndoLevels);
	void gtk_text_buffer_set_modified(GtkTextBuffer* buffer, int setting);
	void gtk_text_buffer_set_text(GtkTextBuffer* buffer, const(char)* text, int len);
	void gtk_text_buffer_undo(GtkTextBuffer* buffer);

	// gtk.TextChildAnchor

	GType gtk_text_child_anchor_get_type();
	GtkTextChildAnchor* gtk_text_child_anchor_new();
	int gtk_text_child_anchor_get_deleted(GtkTextChildAnchor* anchor);
	GtkWidget** gtk_text_child_anchor_get_widgets(GtkTextChildAnchor* anchor, uint* outLen);

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
	GdkPaintable* gtk_text_iter_get_paintable(GtkTextIter* iter);
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
	void gtk_text_view_add_overlay(GtkTextView* textView, GtkWidget* child, int xpos, int ypos);
	int gtk_text_view_backward_display_line(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_backward_display_line_start(GtkTextView* textView, GtkTextIter* iter);
	void gtk_text_view_buffer_to_window_coords(GtkTextView* textView, GtkTextWindowType win, int bufferX, int bufferY, int* windowX, int* windowY);
	int gtk_text_view_forward_display_line(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_forward_display_line_end(GtkTextView* textView, GtkTextIter* iter);
	int gtk_text_view_get_accepts_tab(GtkTextView* textView);
	int gtk_text_view_get_bottom_margin(GtkTextView* textView);
	GtkTextBuffer* gtk_text_view_get_buffer(GtkTextView* textView);
	void gtk_text_view_get_cursor_locations(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* strong, GdkRectangle* weak);
	int gtk_text_view_get_cursor_visible(GtkTextView* textView);
	int gtk_text_view_get_editable(GtkTextView* textView);
	GMenuModel* gtk_text_view_get_extra_menu(GtkTextView* textView);
	GtkWidget* gtk_text_view_get_gutter(GtkTextView* textView, GtkTextWindowType win);
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
	void gtk_text_view_get_visible_rect(GtkTextView* textView, GdkRectangle* visibleRect);
	GtkWrapMode gtk_text_view_get_wrap_mode(GtkTextView* textView);
	int gtk_text_view_im_context_filter_keypress(GtkTextView* textView, GdkEvent* event);
	int gtk_text_view_move_mark_onscreen(GtkTextView* textView, GtkTextMark* mark);
	void gtk_text_view_move_overlay(GtkTextView* textView, GtkWidget* child, int xpos, int ypos);
	int gtk_text_view_move_visually(GtkTextView* textView, GtkTextIter* iter, int count);
	int gtk_text_view_place_cursor_onscreen(GtkTextView* textView);
	void gtk_text_view_remove(GtkTextView* textView, GtkWidget* child);
	void gtk_text_view_reset_cursor_blink(GtkTextView* textView);
	void gtk_text_view_reset_im_context(GtkTextView* textView);
	void gtk_text_view_scroll_mark_onscreen(GtkTextView* textView, GtkTextMark* mark);
	int gtk_text_view_scroll_to_iter(GtkTextView* textView, GtkTextIter* iter, double withinMargin, int useAlign, double xalign, double yalign);
	void gtk_text_view_scroll_to_mark(GtkTextView* textView, GtkTextMark* mark, double withinMargin, int useAlign, double xalign, double yalign);
	void gtk_text_view_set_accepts_tab(GtkTextView* textView, int acceptsTab);
	void gtk_text_view_set_bottom_margin(GtkTextView* textView, int bottomMargin);
	void gtk_text_view_set_buffer(GtkTextView* textView, GtkTextBuffer* buffer);
	void gtk_text_view_set_cursor_visible(GtkTextView* textView, int setting);
	void gtk_text_view_set_editable(GtkTextView* textView, int setting);
	void gtk_text_view_set_extra_menu(GtkTextView* textView, GMenuModel* model);
	void gtk_text_view_set_gutter(GtkTextView* textView, GtkTextWindowType win, GtkWidget* widget);
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

	// gtk.ToggleButton

	GType gtk_toggle_button_get_type();
	GtkWidget* gtk_toggle_button_new();
	GtkWidget* gtk_toggle_button_new_with_label(const(char)* label);
	GtkWidget* gtk_toggle_button_new_with_mnemonic(const(char)* label);
	int gtk_toggle_button_get_active(GtkToggleButton* toggleButton);
	void gtk_toggle_button_set_active(GtkToggleButton* toggleButton, int isActive);
	void gtk_toggle_button_set_group(GtkToggleButton* toggleButton, GtkToggleButton* group);
	void gtk_toggle_button_toggled(GtkToggleButton* toggleButton);

	// gtk.Tooltip

	GType gtk_tooltip_get_type();
	void gtk_tooltip_set_custom(GtkTooltip* tooltip, GtkWidget* customWidget);
	void gtk_tooltip_set_icon(GtkTooltip* tooltip, GdkPaintable* paintable);
	void gtk_tooltip_set_icon_from_gicon(GtkTooltip* tooltip, GIcon* gicon);
	void gtk_tooltip_set_icon_from_icon_name(GtkTooltip* tooltip, const(char)* iconName);
	void gtk_tooltip_set_markup(GtkTooltip* tooltip, const(char)* markup);
	void gtk_tooltip_set_text(GtkTooltip* tooltip, const(char)* text);
	void gtk_tooltip_set_tip_area(GtkTooltip* tooltip, GdkRectangle* rect);

	// gtk.TreeDragDest

	GType gtk_tree_drag_dest_get_type();
	int gtk_tree_drag_dest_drag_data_received(GtkTreeDragDest* dragDest, GtkTreePath* dest, GValue* value);
	int gtk_tree_drag_dest_row_drop_possible(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GValue* value);

	// gtk.TreeDragSource

	GType gtk_tree_drag_source_get_type();
	int gtk_tree_drag_source_drag_data_delete(GtkTreeDragSource* dragSource, GtkTreePath* path);
	GdkContentProvider* gtk_tree_drag_source_drag_data_get(GtkTreeDragSource* dragSource, GtkTreePath* path);
	int gtk_tree_drag_source_row_draggable(GtkTreeDragSource* dragSource, GtkTreePath* path);

	// gtk.TreeExpander

	GType gtk_tree_expander_get_type();
	GtkWidget* gtk_tree_expander_new();
	GtkWidget* gtk_tree_expander_get_child(GtkTreeExpander* self);
	void* gtk_tree_expander_get_item(GtkTreeExpander* self);
	GtkTreeListRow* gtk_tree_expander_get_list_row(GtkTreeExpander* self);
	void gtk_tree_expander_set_child(GtkTreeExpander* self, GtkWidget* child);
	void gtk_tree_expander_set_list_row(GtkTreeExpander* self, GtkTreeListRow* listRow);

	// gtk.TreeIter

	GType gtk_tree_iter_get_type();
	GtkTreeIter* gtk_tree_iter_copy(GtkTreeIter* iter);
	void gtk_tree_iter_free(GtkTreeIter* iter);

	// gtk.TreeListModel

	GType gtk_tree_list_model_get_type();
	GtkTreeListModel* gtk_tree_list_model_new(GListModel* root, int passthrough, int autoexpand, GtkTreeListModelCreateModelFunc createFunc, void* userData, GDestroyNotify userDestroy);
	int gtk_tree_list_model_get_autoexpand(GtkTreeListModel* self);
	GtkTreeListRow* gtk_tree_list_model_get_child_row(GtkTreeListModel* self, uint position);
	GListModel* gtk_tree_list_model_get_model(GtkTreeListModel* self);
	int gtk_tree_list_model_get_passthrough(GtkTreeListModel* self);
	GtkTreeListRow* gtk_tree_list_model_get_row(GtkTreeListModel* self, uint position);
	void gtk_tree_list_model_set_autoexpand(GtkTreeListModel* self, int autoexpand);

	// gtk.TreeListRow

	GType gtk_tree_list_row_get_type();
	GtkTreeListRow* gtk_tree_list_row_get_child_row(GtkTreeListRow* self, uint position);
	GListModel* gtk_tree_list_row_get_children(GtkTreeListRow* self);
	uint gtk_tree_list_row_get_depth(GtkTreeListRow* self);
	int gtk_tree_list_row_get_expanded(GtkTreeListRow* self);
	void* gtk_tree_list_row_get_item(GtkTreeListRow* self);
	GtkTreeListRow* gtk_tree_list_row_get_parent(GtkTreeListRow* self);
	uint gtk_tree_list_row_get_position(GtkTreeListRow* self);
	int gtk_tree_list_row_is_expandable(GtkTreeListRow* self);
	void gtk_tree_list_row_set_expanded(GtkTreeListRow* self, int expanded);

	// gtk.TreeListRowSorter

	GType gtk_tree_list_row_sorter_get_type();
	GtkTreeListRowSorter* gtk_tree_list_row_sorter_new(GtkSorter* sorter);
	GtkSorter* gtk_tree_list_row_sorter_get_sorter(GtkTreeListRowSorter* self);
	void gtk_tree_list_row_sorter_set_sorter(GtkTreeListRowSorter* self, GtkSorter* sorter);

	// gtk.TreeModel

	GType gtk_tree_model_get_type();
	GtkTreeModel* gtk_tree_model_filter_new(GtkTreeModel* childModel, GtkTreePath* root);
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

	// gtk.TreeModelSort

	GType gtk_tree_model_sort_get_type();
	GtkTreeModel* gtk_tree_model_sort_new_with_model(GtkTreeModel* childModel);
	void gtk_tree_model_sort_clear_cache(GtkTreeModelSort* treeModelSort);
	int gtk_tree_model_sort_convert_child_iter_to_iter(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter);
	GtkTreePath* gtk_tree_model_sort_convert_child_path_to_path(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath);
	void gtk_tree_model_sort_convert_iter_to_child_iter(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter);
	GtkTreePath* gtk_tree_model_sort_convert_path_to_child_path(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath);
	GtkTreeModel* gtk_tree_model_sort_get_model(GtkTreeModelSort* treeModel);
	int gtk_tree_model_sort_iter_is_valid(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter);
	void gtk_tree_model_sort_reset_default_sort_func(GtkTreeModelSort* treeModelSort);

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
	GdkPaintable* gtk_tree_view_create_row_drag_icon(GtkTreeView* treeView, GtkTreePath* path);
	void gtk_tree_view_enable_model_drag_dest(GtkTreeView* treeView, GdkContentFormats* formats, GdkDragAction actions);
	void gtk_tree_view_enable_model_drag_source(GtkTreeView* treeView, GdkModifierType startButtonMask, GdkContentFormats* formats, GdkDragAction actions);
	void gtk_tree_view_expand_all(GtkTreeView* treeView);
	int gtk_tree_view_expand_row(GtkTreeView* treeView, GtkTreePath* path, int openAll);
	void gtk_tree_view_expand_to_path(GtkTreeView* treeView, GtkTreePath* path);
	int gtk_tree_view_get_activate_on_single_click(GtkTreeView* treeView);
	void gtk_tree_view_get_background_area(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect);
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
	int gtk_tree_view_get_search_column(GtkTreeView* treeView);
	GtkEditable* gtk_tree_view_get_search_entry(GtkTreeView* treeView);
	GtkTreeViewSearchEqualFunc gtk_tree_view_get_search_equal_func(GtkTreeView* treeView);
	GtkTreeSelection* gtk_tree_view_get_selection(GtkTreeView* treeView);
	int gtk_tree_view_get_show_expanders(GtkTreeView* treeView);
	int gtk_tree_view_get_tooltip_column(GtkTreeView* treeView);
	int gtk_tree_view_get_tooltip_context(GtkTreeView* treeView, int x, int y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
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
	void gtk_tree_view_set_drag_dest_row(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos);
	void gtk_tree_view_set_enable_search(GtkTreeView* treeView, int enableSearch);
	void gtk_tree_view_set_enable_tree_lines(GtkTreeView* treeView, int enabled);
	void gtk_tree_view_set_expander_column(GtkTreeView* treeView, GtkTreeViewColumn* column);
	void gtk_tree_view_set_fixed_height_mode(GtkTreeView* treeView, int enable);
	void gtk_tree_view_set_grid_lines(GtkTreeView* treeView, GtkTreeViewGridLines gridLines);
	void gtk_tree_view_set_headers_clickable(GtkTreeView* treeView, int setting);
	void gtk_tree_view_set_headers_visible(GtkTreeView* treeView, int headersVisible);
	void gtk_tree_view_set_hover_expand(GtkTreeView* treeView, int expand);
	void gtk_tree_view_set_hover_selection(GtkTreeView* treeView, int hover);
	void gtk_tree_view_set_level_indentation(GtkTreeView* treeView, int indentation);
	void gtk_tree_view_set_model(GtkTreeView* treeView, GtkTreeModel* model);
	void gtk_tree_view_set_reorderable(GtkTreeView* treeView, int reorderable);
	void gtk_tree_view_set_row_separator_func(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);
	void gtk_tree_view_set_rubber_banding(GtkTreeView* treeView, int enable);
	void gtk_tree_view_set_search_column(GtkTreeView* treeView, int column);
	void gtk_tree_view_set_search_entry(GtkTreeView* treeView, GtkEditable* entry);
	void gtk_tree_view_set_search_equal_func(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy);
	void gtk_tree_view_set_show_expanders(GtkTreeView* treeView, int enabled);
	void gtk_tree_view_set_tooltip_cell(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell);
	void gtk_tree_view_set_tooltip_column(GtkTreeView* treeView, int column);
	void gtk_tree_view_set_tooltip_row(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path);
	void gtk_tree_view_unset_rows_drag_dest(GtkTreeView* treeView);
	void gtk_tree_view_unset_rows_drag_source(GtkTreeView* treeView);

	// gtk.TreeViewColumn

	GType gtk_tree_view_column_get_type();
	GtkTreeViewColumn* gtk_tree_view_column_new();
	GtkTreeViewColumn* gtk_tree_view_column_new_with_area(GtkCellArea* area);
	GtkTreeViewColumn* gtk_tree_view_column_new_with_attributes(const(char)* title, GtkCellRenderer* cell, ... );
	void gtk_tree_view_column_add_attribute(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, const(char)* attribute, int column);
	int gtk_tree_view_column_cell_get_position(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, int* xOffset, int* width);
	void gtk_tree_view_column_cell_get_size(GtkTreeViewColumn* treeColumn, int* xOffset, int* yOffset, int* width, int* height);
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

	// gtk.Video

	GType gtk_video_get_type();
	GtkWidget* gtk_video_new();
	GtkWidget* gtk_video_new_for_file(GFile* file);
	GtkWidget* gtk_video_new_for_filename(char* filename);
	GtkWidget* gtk_video_new_for_media_stream(GtkMediaStream* stream);
	GtkWidget* gtk_video_new_for_resource(const(char)* resourcePath);
	int gtk_video_get_autoplay(GtkVideo* self);
	GFile* gtk_video_get_file(GtkVideo* self);
	int gtk_video_get_loop(GtkVideo* self);
	GtkMediaStream* gtk_video_get_media_stream(GtkVideo* self);
	void gtk_video_set_autoplay(GtkVideo* self, int autoplay);
	void gtk_video_set_file(GtkVideo* self, GFile* file);
	void gtk_video_set_filename(GtkVideo* self, const(char)* filename);
	void gtk_video_set_loop(GtkVideo* self, int loop);
	void gtk_video_set_media_stream(GtkVideo* self, GtkMediaStream* stream);
	void gtk_video_set_resource(GtkVideo* self, const(char)* resourcePath);

	// gtk.Viewport

	GType gtk_viewport_get_type();
	GtkWidget* gtk_viewport_new(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment);
	GtkWidget* gtk_viewport_get_child(GtkViewport* viewport);
	int gtk_viewport_get_scroll_to_focus(GtkViewport* viewport);
	void gtk_viewport_set_child(GtkViewport* viewport, GtkWidget* child);
	void gtk_viewport_set_scroll_to_focus(GtkViewport* viewport, int scrollToFocus);

	// gtk.VolumeButton

	GType gtk_volume_button_get_type();
	GtkWidget* gtk_volume_button_new();

	// gtk.Widget

	GType gtk_widget_get_type();
	GtkTextDirection gtk_widget_get_default_direction();
	void gtk_widget_set_default_direction(GtkTextDirection dir);
	void gtk_widget_action_set_enabled(GtkWidget* widget, const(char)* actionName, int enabled);
	int gtk_widget_activate(GtkWidget* widget);
	int gtk_widget_activate_action(GtkWidget* widget, const(char)* name, const(char)* formatString, ... );
	int gtk_widget_activate_action_variant(GtkWidget* widget, const(char)* name, GVariant* args);
	void gtk_widget_activate_default(GtkWidget* widget);
	void gtk_widget_add_controller(GtkWidget* widget, GtkEventController* controller);
	void gtk_widget_add_css_class(GtkWidget* widget, const(char)* cssClass);
	void gtk_widget_add_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	uint gtk_widget_add_tick_callback(GtkWidget* widget, GtkTickCallback callback, void* userData, GDestroyNotify notify);
	void gtk_widget_allocate(GtkWidget* widget, int width, int height, int baseline, GskTransform* transform);
	int gtk_widget_child_focus(GtkWidget* widget, GtkDirectionType direction);
	int gtk_widget_compute_bounds(GtkWidget* widget, GtkWidget* target, graphene_rect_t* outBounds);
	int gtk_widget_compute_expand(GtkWidget* widget, GtkOrientation orientation);
	int gtk_widget_compute_point(GtkWidget* widget, GtkWidget* target, graphene_point_t* point, graphene_point_t* outPoint);
	int gtk_widget_compute_transform(GtkWidget* widget, GtkWidget* target, graphene_matrix_t* outTransform);
	int gtk_widget_contains(GtkWidget* widget, double x, double y);
	PangoContext* gtk_widget_create_pango_context(GtkWidget* widget);
	PangoLayout* gtk_widget_create_pango_layout(GtkWidget* widget, const(char)* text);
	int gtk_drag_check_threshold(GtkWidget* widget, int startX, int startY, int currentX, int currentY);
	void gtk_widget_error_bell(GtkWidget* widget);
	int gtk_widget_get_allocated_baseline(GtkWidget* widget);
	int gtk_widget_get_allocated_height(GtkWidget* widget);
	int gtk_widget_get_allocated_width(GtkWidget* widget);
	void gtk_widget_get_allocation(GtkWidget* widget, GtkAllocation* allocation);
	GtkWidget* gtk_widget_get_ancestor(GtkWidget* widget, GType widgetType);
	int gtk_widget_get_can_focus(GtkWidget* widget);
	int gtk_widget_get_can_target(GtkWidget* widget);
	int gtk_widget_get_child_visible(GtkWidget* widget);
	GdkClipboard* gtk_widget_get_clipboard(GtkWidget* widget);
	char** gtk_widget_get_css_classes(GtkWidget* widget);
	const(char)* gtk_widget_get_css_name(GtkWidget* self);
	GdkCursor* gtk_widget_get_cursor(GtkWidget* widget);
	GtkTextDirection gtk_widget_get_direction(GtkWidget* widget);
	GdkDisplay* gtk_widget_get_display(GtkWidget* widget);
	GtkWidget* gtk_widget_get_first_child(GtkWidget* widget);
	GtkWidget* gtk_widget_get_focus_child(GtkWidget* widget);
	int gtk_widget_get_focus_on_click(GtkWidget* widget);
	int gtk_widget_get_focusable(GtkWidget* widget);
	PangoFontMap* gtk_widget_get_font_map(GtkWidget* widget);
	cairo_font_options_t* gtk_widget_get_font_options(GtkWidget* widget);
	GdkFrameClock* gtk_widget_get_frame_clock(GtkWidget* widget);
	GtkAlign gtk_widget_get_halign(GtkWidget* widget);
	int gtk_widget_get_has_tooltip(GtkWidget* widget);
	int gtk_widget_get_height(GtkWidget* widget);
	int gtk_widget_get_hexpand(GtkWidget* widget);
	int gtk_widget_get_hexpand_set(GtkWidget* widget);
	GtkWidget* gtk_widget_get_last_child(GtkWidget* widget);
	GtkLayoutManager* gtk_widget_get_layout_manager(GtkWidget* widget);
	int gtk_widget_get_mapped(GtkWidget* widget);
	int gtk_widget_get_margin_bottom(GtkWidget* widget);
	int gtk_widget_get_margin_end(GtkWidget* widget);
	int gtk_widget_get_margin_start(GtkWidget* widget);
	int gtk_widget_get_margin_top(GtkWidget* widget);
	const(char)* gtk_widget_get_name(GtkWidget* widget);
	GtkNative* gtk_widget_get_native(GtkWidget* widget);
	GtkWidget* gtk_widget_get_next_sibling(GtkWidget* widget);
	double gtk_widget_get_opacity(GtkWidget* widget);
	GtkOverflow gtk_widget_get_overflow(GtkWidget* widget);
	PangoContext* gtk_widget_get_pango_context(GtkWidget* widget);
	GtkWidget* gtk_widget_get_parent(GtkWidget* widget);
	void gtk_widget_get_preferred_size(GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize);
	GtkWidget* gtk_widget_get_prev_sibling(GtkWidget* widget);
	GdkClipboard* gtk_widget_get_primary_clipboard(GtkWidget* widget);
	int gtk_widget_get_realized(GtkWidget* widget);
	int gtk_widget_get_receives_default(GtkWidget* widget);
	GtkSizeRequestMode gtk_widget_get_request_mode(GtkWidget* widget);
	GtkRoot* gtk_widget_get_root(GtkWidget* widget);
	int gtk_widget_get_scale_factor(GtkWidget* widget);
	int gtk_widget_get_sensitive(GtkWidget* widget);
	GtkSettings* gtk_widget_get_settings(GtkWidget* widget);
	int gtk_widget_get_size(GtkWidget* widget, GtkOrientation orientation);
	void gtk_widget_get_size_request(GtkWidget* widget, int* width, int* height);
	GtkStateFlags gtk_widget_get_state_flags(GtkWidget* widget);
	GtkStyleContext* gtk_widget_get_style_context(GtkWidget* widget);
	GObject* gtk_widget_get_template_child(GtkWidget* widget, GType widgetType, const(char)* name);
	const(char)* gtk_widget_get_tooltip_markup(GtkWidget* widget);
	const(char)* gtk_widget_get_tooltip_text(GtkWidget* widget);
	GtkAlign gtk_widget_get_valign(GtkWidget* widget);
	int gtk_widget_get_vexpand(GtkWidget* widget);
	int gtk_widget_get_vexpand_set(GtkWidget* widget);
	int gtk_widget_get_visible(GtkWidget* widget);
	int gtk_widget_get_width(GtkWidget* widget);
	int gtk_widget_grab_focus(GtkWidget* widget);
	int gtk_widget_has_css_class(GtkWidget* widget, const(char)* cssClass);
	int gtk_widget_has_default(GtkWidget* widget);
	int gtk_widget_has_focus(GtkWidget* widget);
	int gtk_widget_has_visible_focus(GtkWidget* widget);
	void gtk_widget_hide(GtkWidget* widget);
	int gtk_widget_in_destruction(GtkWidget* widget);
	void gtk_widget_init_template(GtkWidget* widget);
	void gtk_widget_insert_action_group(GtkWidget* widget, const(char)* name, GActionGroup* group);
	void gtk_widget_insert_after(GtkWidget* widget, GtkWidget* parent, GtkWidget* previousSibling);
	void gtk_widget_insert_before(GtkWidget* widget, GtkWidget* parent, GtkWidget* nextSibling);
	int gtk_widget_is_ancestor(GtkWidget* widget, GtkWidget* ancestor);
	int gtk_widget_is_drawable(GtkWidget* widget);
	int gtk_widget_is_focus(GtkWidget* widget);
	int gtk_widget_is_sensitive(GtkWidget* widget);
	int gtk_widget_is_visible(GtkWidget* widget);
	int gtk_widget_keynav_failed(GtkWidget* widget, GtkDirectionType direction);
	GList* gtk_widget_list_mnemonic_labels(GtkWidget* widget);
	void gtk_widget_map(GtkWidget* widget);
	void gtk_widget_measure(GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline);
	int gtk_widget_mnemonic_activate(GtkWidget* widget, int groupCycling);
	GListModel* gtk_widget_observe_children(GtkWidget* widget);
	GListModel* gtk_widget_observe_controllers(GtkWidget* widget);
	GtkWidget* gtk_widget_pick(GtkWidget* widget, double x, double y, GtkPickFlags flags);
	void gtk_widget_queue_allocate(GtkWidget* widget);
	void gtk_widget_queue_draw(GtkWidget* widget);
	void gtk_widget_queue_resize(GtkWidget* widget);
	void gtk_widget_realize(GtkWidget* widget);
	void gtk_widget_remove_controller(GtkWidget* widget, GtkEventController* controller);
	void gtk_widget_remove_css_class(GtkWidget* widget, const(char)* cssClass);
	void gtk_widget_remove_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	void gtk_widget_remove_tick_callback(GtkWidget* widget, uint id);
	void gtk_widget_set_can_focus(GtkWidget* widget, int canFocus);
	void gtk_widget_set_can_target(GtkWidget* widget, int canTarget);
	void gtk_widget_set_child_visible(GtkWidget* widget, int childVisible);
	void gtk_widget_set_css_classes(GtkWidget* widget, char** classes);
	void gtk_widget_set_cursor(GtkWidget* widget, GdkCursor* cursor);
	void gtk_widget_set_cursor_from_name(GtkWidget* widget, const(char)* name);
	void gtk_widget_set_direction(GtkWidget* widget, GtkTextDirection dir);
	void gtk_widget_set_focus_child(GtkWidget* widget, GtkWidget* child);
	void gtk_widget_set_focus_on_click(GtkWidget* widget, int focusOnClick);
	void gtk_widget_set_focusable(GtkWidget* widget, int focusable);
	void gtk_widget_set_font_map(GtkWidget* widget, PangoFontMap* fontMap);
	void gtk_widget_set_font_options(GtkWidget* widget, cairo_font_options_t* options);
	void gtk_widget_set_halign(GtkWidget* widget, GtkAlign align_);
	void gtk_widget_set_has_tooltip(GtkWidget* widget, int hasTooltip);
	void gtk_widget_set_hexpand(GtkWidget* widget, int expand);
	void gtk_widget_set_hexpand_set(GtkWidget* widget, int set);
	void gtk_widget_set_layout_manager(GtkWidget* widget, GtkLayoutManager* layoutManager);
	void gtk_widget_set_margin_bottom(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_end(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_start(GtkWidget* widget, int margin);
	void gtk_widget_set_margin_top(GtkWidget* widget, int margin);
	void gtk_widget_set_name(GtkWidget* widget, const(char)* name);
	void gtk_widget_set_opacity(GtkWidget* widget, double opacity);
	void gtk_widget_set_overflow(GtkWidget* widget, GtkOverflow overflow);
	void gtk_widget_set_parent(GtkWidget* widget, GtkWidget* parent);
	void gtk_widget_set_receives_default(GtkWidget* widget, int receivesDefault);
	void gtk_widget_set_sensitive(GtkWidget* widget, int sensitive);
	void gtk_widget_set_size_request(GtkWidget* widget, int width, int height);
	void gtk_widget_set_state_flags(GtkWidget* widget, GtkStateFlags flags, int clear);
	void gtk_widget_set_tooltip_markup(GtkWidget* widget, const(char)* markup);
	void gtk_widget_set_tooltip_text(GtkWidget* widget, const(char)* text);
	void gtk_widget_set_valign(GtkWidget* widget, GtkAlign align_);
	void gtk_widget_set_vexpand(GtkWidget* widget, int expand);
	void gtk_widget_set_vexpand_set(GtkWidget* widget, int set);
	void gtk_widget_set_visible(GtkWidget* widget, int visible);
	int gtk_widget_should_layout(GtkWidget* widget);
	void gtk_widget_show(GtkWidget* widget);
	void gtk_widget_size_allocate(GtkWidget* widget, GtkAllocation* allocation, int baseline);
	void gtk_widget_snapshot_child(GtkWidget* widget, GtkWidget* child, GtkSnapshot* snapshot);
	int gtk_widget_translate_coordinates(GtkWidget* srcWidget, GtkWidget* destWidget, double srcX, double srcY, double* destX, double* destY);
	void gtk_widget_trigger_tooltip_query(GtkWidget* widget);
	void gtk_widget_unmap(GtkWidget* widget);
	void gtk_widget_unparent(GtkWidget* widget);
	void gtk_widget_unrealize(GtkWidget* widget);
	void gtk_widget_unset_state_flags(GtkWidget* widget, GtkStateFlags flags);

	// gtk.WidgetClass

	void gtk_widget_class_add_binding(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, GtkShortcutFunc callback, const(char)* formatString, ... );
	void gtk_widget_class_add_binding_action(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, const(char)* actionName, const(char)* formatString, ... );
	void gtk_widget_class_add_binding_signal(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, const(char)* signal, const(char)* formatString, ... );
	void gtk_widget_class_add_shortcut(GtkWidgetClass* widgetClass, GtkShortcut* shortcut);
	void gtk_widget_class_bind_template_callback_full(GtkWidgetClass* widgetClass, const(char)* callbackName, GCallback callbackSymbol);
	void gtk_widget_class_bind_template_child_full(GtkWidgetClass* widgetClass, const(char)* name, int internalChild, ptrdiff_t structOffset);
	GtkAccessibleRole gtk_widget_class_get_accessible_role(GtkWidgetClass* widgetClass);
	uint gtk_widget_class_get_activate_signal(GtkWidgetClass* widgetClass);
	const(char)* gtk_widget_class_get_css_name(GtkWidgetClass* widgetClass);
	GType gtk_widget_class_get_layout_manager_type(GtkWidgetClass* widgetClass);
	void gtk_widget_class_install_action(GtkWidgetClass* widgetClass, const(char)* actionName, const(char)* parameterType, GtkWidgetActionActivateFunc activate);
	void gtk_widget_class_install_property_action(GtkWidgetClass* widgetClass, const(char)* actionName, const(char)* propertyName);
	int gtk_widget_class_query_action(GtkWidgetClass* widgetClass, uint index, GType* owner, char** actionName, GVariantType** parameterType, char** propertyName);
	void gtk_widget_class_set_accessible_role(GtkWidgetClass* widgetClass, GtkAccessibleRole accessibleRole);
	void gtk_widget_class_set_activate_signal(GtkWidgetClass* widgetClass, uint signalId);
	void gtk_widget_class_set_activate_signal_from_name(GtkWidgetClass* widgetClass, const(char)* signalName);
	void gtk_widget_class_set_css_name(GtkWidgetClass* widgetClass, const(char)* name);
	void gtk_widget_class_set_layout_manager_type(GtkWidgetClass* widgetClass, GType type);
	void gtk_widget_class_set_template(GtkWidgetClass* widgetClass, GBytes* templateBytes);
	void gtk_widget_class_set_template_from_resource(GtkWidgetClass* widgetClass, const(char)* resourceName);
	void gtk_widget_class_set_template_scope(GtkWidgetClass* widgetClass, GtkBuilderScope* scope_);

	// gtk.WidgetPaintable

	GType gtk_widget_paintable_get_type();
	GdkPaintable* gtk_widget_paintable_new(GtkWidget* widget);
	GtkWidget* gtk_widget_paintable_get_widget(GtkWidgetPaintable* self);
	void gtk_widget_paintable_set_widget(GtkWidgetPaintable* self, GtkWidget* widget);

	// gtk.Window

	GType gtk_window_get_type();
	GtkWidget* gtk_window_new();
	const(char)* gtk_window_get_default_icon_name();
	GListModel* gtk_window_get_toplevels();
	GList* gtk_window_list_toplevels();
	void gtk_window_set_auto_startup_notification(int setting);
	void gtk_window_set_default_icon_name(const(char)* name);
	void gtk_window_set_interactive_debugging(int enable);
	void gtk_window_close(GtkWindow* window);
	void gtk_window_destroy(GtkWindow* window);
	void gtk_window_fullscreen(GtkWindow* window);
	void gtk_window_fullscreen_on_monitor(GtkWindow* window, GdkMonitor* monitor);
	GtkApplication* gtk_window_get_application(GtkWindow* window);
	GtkWidget* gtk_window_get_child(GtkWindow* window);
	int gtk_window_get_decorated(GtkWindow* window);
	void gtk_window_get_default_size(GtkWindow* window, int* width, int* height);
	GtkWidget* gtk_window_get_default_widget(GtkWindow* window);
	int gtk_window_get_deletable(GtkWindow* window);
	int gtk_window_get_destroy_with_parent(GtkWindow* window);
	GtkWidget* gtk_window_get_focus(GtkWindow* window);
	int gtk_window_get_focus_visible(GtkWindow* window);
	GtkWindowGroup* gtk_window_get_group(GtkWindow* window);
	int gtk_window_get_handle_menubar_accel(GtkWindow* window);
	int gtk_window_get_hide_on_close(GtkWindow* window);
	const(char)* gtk_window_get_icon_name(GtkWindow* window);
	int gtk_window_get_mnemonics_visible(GtkWindow* window);
	int gtk_window_get_modal(GtkWindow* window);
	int gtk_window_get_resizable(GtkWindow* window);
	const(char)* gtk_window_get_title(GtkWindow* window);
	GtkWidget* gtk_window_get_titlebar(GtkWindow* window);
	GtkWindow* gtk_window_get_transient_for(GtkWindow* window);
	int gtk_window_has_group(GtkWindow* window);
	int gtk_window_is_active(GtkWindow* window);
	int gtk_window_is_fullscreen(GtkWindow* window);
	int gtk_window_is_maximized(GtkWindow* window);
	void gtk_window_maximize(GtkWindow* window);
	void gtk_window_minimize(GtkWindow* window);
	void gtk_window_present(GtkWindow* window);
	void gtk_window_present_with_time(GtkWindow* window, uint timestamp);
	void gtk_window_set_application(GtkWindow* window, GtkApplication* application);
	void gtk_window_set_child(GtkWindow* window, GtkWidget* child);
	void gtk_window_set_decorated(GtkWindow* window, int setting);
	void gtk_window_set_default_size(GtkWindow* window, int width, int height);
	void gtk_window_set_default_widget(GtkWindow* window, GtkWidget* defaultWidget);
	void gtk_window_set_deletable(GtkWindow* window, int setting);
	void gtk_window_set_destroy_with_parent(GtkWindow* window, int setting);
	void gtk_window_set_display(GtkWindow* window, GdkDisplay* display);
	void gtk_window_set_focus(GtkWindow* window, GtkWidget* focus);
	void gtk_window_set_focus_visible(GtkWindow* window, int setting);
	void gtk_window_set_handle_menubar_accel(GtkWindow* window, int handleMenubarAccel);
	void gtk_window_set_hide_on_close(GtkWindow* window, int setting);
	void gtk_window_set_icon_name(GtkWindow* window, const(char)* name);
	void gtk_window_set_mnemonics_visible(GtkWindow* window, int setting);
	void gtk_window_set_modal(GtkWindow* window, int modal);
	void gtk_window_set_resizable(GtkWindow* window, int resizable);
	void gtk_window_set_startup_id(GtkWindow* window, const(char)* startupId);
	void gtk_window_set_title(GtkWindow* window, const(char)* title);
	void gtk_window_set_titlebar(GtkWindow* window, GtkWidget* titlebar);
	void gtk_window_set_transient_for(GtkWindow* window, GtkWindow* parent);
	void gtk_window_unfullscreen(GtkWindow* window);
	void gtk_window_unmaximize(GtkWindow* window);
	void gtk_window_unminimize(GtkWindow* window);

	// gtk.WindowControls

	GType gtk_window_controls_get_type();
	GtkWidget* gtk_window_controls_new(GtkPackType side);
	const(char)* gtk_window_controls_get_decoration_layout(GtkWindowControls* self);
	int gtk_window_controls_get_empty(GtkWindowControls* self);
	GtkPackType gtk_window_controls_get_side(GtkWindowControls* self);
	void gtk_window_controls_set_decoration_layout(GtkWindowControls* self, const(char)* layout);
	void gtk_window_controls_set_side(GtkWindowControls* self, GtkPackType side);

	// gtk.WindowGroup

	GType gtk_window_group_get_type();
	GtkWindowGroup* gtk_window_group_new();
	void gtk_window_group_add_window(GtkWindowGroup* windowGroup, GtkWindow* window);
	GList* gtk_window_group_list_windows(GtkWindowGroup* windowGroup);
	void gtk_window_group_remove_window(GtkWindowGroup* windowGroup, GtkWindow* window);

	// gtk.WindowHandle

	GType gtk_window_handle_get_type();
	GtkWidget* gtk_window_handle_new();
	GtkWidget* gtk_window_handle_get_child(GtkWindowHandle* self);
	void gtk_window_handle_set_child(GtkWindowHandle* self, GtkWidget* child);
}