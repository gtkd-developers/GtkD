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
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GTK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GTK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GTK = ["libgtk-4.so.1"];

shared static this()
{
	// gtk.ATContext

	Linker.link(gtk_at_context_get_type, "gtk_at_context_get_type", LIBRARY_GTK);
	Linker.link(gtk_at_context_create, "gtk_at_context_create", LIBRARY_GTK);
	Linker.link(gtk_at_context_get_accessible, "gtk_at_context_get_accessible", LIBRARY_GTK);
	Linker.link(gtk_at_context_get_accessible_role, "gtk_at_context_get_accessible_role", LIBRARY_GTK);

	// gtk.AboutDialog

	Linker.link(gtk_about_dialog_get_type, "gtk_about_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_new, "gtk_about_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_add_credit_section, "gtk_about_dialog_add_credit_section", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_artists, "gtk_about_dialog_get_artists", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_authors, "gtk_about_dialog_get_authors", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_comments, "gtk_about_dialog_get_comments", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_copyright, "gtk_about_dialog_get_copyright", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_documenters, "gtk_about_dialog_get_documenters", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_license, "gtk_about_dialog_get_license", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_license_type, "gtk_about_dialog_get_license_type", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_logo, "gtk_about_dialog_get_logo", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_logo_icon_name, "gtk_about_dialog_get_logo_icon_name", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_program_name, "gtk_about_dialog_get_program_name", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_system_information, "gtk_about_dialog_get_system_information", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_translator_credits, "gtk_about_dialog_get_translator_credits", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_version, "gtk_about_dialog_get_version", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_website, "gtk_about_dialog_get_website", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_website_label, "gtk_about_dialog_get_website_label", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_get_wrap_license, "gtk_about_dialog_get_wrap_license", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_artists, "gtk_about_dialog_set_artists", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_authors, "gtk_about_dialog_set_authors", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_comments, "gtk_about_dialog_set_comments", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_copyright, "gtk_about_dialog_set_copyright", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_documenters, "gtk_about_dialog_set_documenters", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_license, "gtk_about_dialog_set_license", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_license_type, "gtk_about_dialog_set_license_type", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_logo, "gtk_about_dialog_set_logo", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_logo_icon_name, "gtk_about_dialog_set_logo_icon_name", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_program_name, "gtk_about_dialog_set_program_name", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_system_information, "gtk_about_dialog_set_system_information", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_translator_credits, "gtk_about_dialog_set_translator_credits", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_version, "gtk_about_dialog_set_version", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_website, "gtk_about_dialog_set_website", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_website_label, "gtk_about_dialog_set_website_label", LIBRARY_GTK);
	Linker.link(gtk_about_dialog_set_wrap_license, "gtk_about_dialog_set_wrap_license", LIBRARY_GTK);

	// gtk.Accessible

	Linker.link(gtk_accessible_get_type, "gtk_accessible_get_type", LIBRARY_GTK);
	Linker.link(gtk_accessible_get_accessible_role, "gtk_accessible_get_accessible_role", LIBRARY_GTK);
	Linker.link(gtk_accessible_reset_property, "gtk_accessible_reset_property", LIBRARY_GTK);
	Linker.link(gtk_accessible_reset_relation, "gtk_accessible_reset_relation", LIBRARY_GTK);
	Linker.link(gtk_accessible_reset_state, "gtk_accessible_reset_state", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_property, "gtk_accessible_update_property", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_property_value, "gtk_accessible_update_property_value", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_relation, "gtk_accessible_update_relation", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_relation_value, "gtk_accessible_update_relation_value", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_state, "gtk_accessible_update_state", LIBRARY_GTK);
	Linker.link(gtk_accessible_update_state_value, "gtk_accessible_update_state_value", LIBRARY_GTK);

	// gtk.ActionBar

	Linker.link(gtk_action_bar_get_type, "gtk_action_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_action_bar_new, "gtk_action_bar_new", LIBRARY_GTK);
	Linker.link(gtk_action_bar_get_center_widget, "gtk_action_bar_get_center_widget", LIBRARY_GTK);
	Linker.link(gtk_action_bar_get_revealed, "gtk_action_bar_get_revealed", LIBRARY_GTK);
	Linker.link(gtk_action_bar_pack_end, "gtk_action_bar_pack_end", LIBRARY_GTK);
	Linker.link(gtk_action_bar_pack_start, "gtk_action_bar_pack_start", LIBRARY_GTK);
	Linker.link(gtk_action_bar_remove, "gtk_action_bar_remove", LIBRARY_GTK);
	Linker.link(gtk_action_bar_set_center_widget, "gtk_action_bar_set_center_widget", LIBRARY_GTK);
	Linker.link(gtk_action_bar_set_revealed, "gtk_action_bar_set_revealed", LIBRARY_GTK);

	// gtk.Actionable

	Linker.link(gtk_actionable_get_type, "gtk_actionable_get_type", LIBRARY_GTK);
	Linker.link(gtk_actionable_get_action_name, "gtk_actionable_get_action_name", LIBRARY_GTK);
	Linker.link(gtk_actionable_get_action_target_value, "gtk_actionable_get_action_target_value", LIBRARY_GTK);
	Linker.link(gtk_actionable_set_action_name, "gtk_actionable_set_action_name", LIBRARY_GTK);
	Linker.link(gtk_actionable_set_action_target, "gtk_actionable_set_action_target", LIBRARY_GTK);
	Linker.link(gtk_actionable_set_action_target_value, "gtk_actionable_set_action_target_value", LIBRARY_GTK);
	Linker.link(gtk_actionable_set_detailed_action_name, "gtk_actionable_set_detailed_action_name", LIBRARY_GTK);

	// gtk.ActivateAction

	Linker.link(gtk_activate_action_get_type, "gtk_activate_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_activate_action_get, "gtk_activate_action_get", LIBRARY_GTK);

	// gtk.Adjustment

	Linker.link(gtk_adjustment_get_type, "gtk_adjustment_get_type", LIBRARY_GTK);
	Linker.link(gtk_adjustment_new, "gtk_adjustment_new", LIBRARY_GTK);
	Linker.link(gtk_adjustment_clamp_page, "gtk_adjustment_clamp_page", LIBRARY_GTK);
	Linker.link(gtk_adjustment_configure, "gtk_adjustment_configure", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_lower, "gtk_adjustment_get_lower", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_minimum_increment, "gtk_adjustment_get_minimum_increment", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_page_increment, "gtk_adjustment_get_page_increment", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_page_size, "gtk_adjustment_get_page_size", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_step_increment, "gtk_adjustment_get_step_increment", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_upper, "gtk_adjustment_get_upper", LIBRARY_GTK);
	Linker.link(gtk_adjustment_get_value, "gtk_adjustment_get_value", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_lower, "gtk_adjustment_set_lower", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_page_increment, "gtk_adjustment_set_page_increment", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_page_size, "gtk_adjustment_set_page_size", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_step_increment, "gtk_adjustment_set_step_increment", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_upper, "gtk_adjustment_set_upper", LIBRARY_GTK);
	Linker.link(gtk_adjustment_set_value, "gtk_adjustment_set_value", LIBRARY_GTK);

	// gtk.AlternativeTrigger

	Linker.link(gtk_alternative_trigger_get_type, "gtk_alternative_trigger_get_type", LIBRARY_GTK);
	Linker.link(gtk_alternative_trigger_new, "gtk_alternative_trigger_new", LIBRARY_GTK);
	Linker.link(gtk_alternative_trigger_get_first, "gtk_alternative_trigger_get_first", LIBRARY_GTK);
	Linker.link(gtk_alternative_trigger_get_second, "gtk_alternative_trigger_get_second", LIBRARY_GTK);

	// gtk.AnyFilter

	Linker.link(gtk_any_filter_get_type, "gtk_any_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_any_filter_new, "gtk_any_filter_new", LIBRARY_GTK);

	// gtk.AppChooser

	Linker.link(gtk_app_chooser_get_type, "gtk_app_chooser_get_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_get_app_info, "gtk_app_chooser_get_app_info", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_get_content_type, "gtk_app_chooser_get_content_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_refresh, "gtk_app_chooser_refresh", LIBRARY_GTK);

	// gtk.AppChooserButton

	Linker.link(gtk_app_chooser_button_get_type, "gtk_app_chooser_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_new, "gtk_app_chooser_button_new", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_append_custom_item, "gtk_app_chooser_button_append_custom_item", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_append_separator, "gtk_app_chooser_button_append_separator", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_get_heading, "gtk_app_chooser_button_get_heading", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_get_modal, "gtk_app_chooser_button_get_modal", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_get_show_default_item, "gtk_app_chooser_button_get_show_default_item", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_get_show_dialog_item, "gtk_app_chooser_button_get_show_dialog_item", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_set_active_custom_item, "gtk_app_chooser_button_set_active_custom_item", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_set_heading, "gtk_app_chooser_button_set_heading", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_set_modal, "gtk_app_chooser_button_set_modal", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_set_show_default_item, "gtk_app_chooser_button_set_show_default_item", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_button_set_show_dialog_item, "gtk_app_chooser_button_set_show_dialog_item", LIBRARY_GTK);

	// gtk.AppChooserDialog

	Linker.link(gtk_app_chooser_dialog_get_type, "gtk_app_chooser_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_dialog_new, "gtk_app_chooser_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_dialog_new_for_content_type, "gtk_app_chooser_dialog_new_for_content_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_dialog_get_heading, "gtk_app_chooser_dialog_get_heading", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_dialog_get_widget, "gtk_app_chooser_dialog_get_widget", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_dialog_set_heading, "gtk_app_chooser_dialog_set_heading", LIBRARY_GTK);

	// gtk.AppChooserWidget

	Linker.link(gtk_app_chooser_widget_get_type, "gtk_app_chooser_widget_get_type", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_new, "gtk_app_chooser_widget_new", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_default_text, "gtk_app_chooser_widget_get_default_text", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_show_all, "gtk_app_chooser_widget_get_show_all", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_show_default, "gtk_app_chooser_widget_get_show_default", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_show_fallback, "gtk_app_chooser_widget_get_show_fallback", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_show_other, "gtk_app_chooser_widget_get_show_other", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_get_show_recommended, "gtk_app_chooser_widget_get_show_recommended", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_default_text, "gtk_app_chooser_widget_set_default_text", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_show_all, "gtk_app_chooser_widget_set_show_all", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_show_default, "gtk_app_chooser_widget_set_show_default", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_show_fallback, "gtk_app_chooser_widget_set_show_fallback", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_show_other, "gtk_app_chooser_widget_set_show_other", LIBRARY_GTK);
	Linker.link(gtk_app_chooser_widget_set_show_recommended, "gtk_app_chooser_widget_set_show_recommended", LIBRARY_GTK);

	// gtk.Application

	Linker.link(gtk_application_get_type, "gtk_application_get_type", LIBRARY_GTK);
	Linker.link(gtk_application_new, "gtk_application_new", LIBRARY_GTK);
	Linker.link(gtk_application_add_window, "gtk_application_add_window", LIBRARY_GTK);
	Linker.link(gtk_application_get_accels_for_action, "gtk_application_get_accels_for_action", LIBRARY_GTK);
	Linker.link(gtk_application_get_actions_for_accel, "gtk_application_get_actions_for_accel", LIBRARY_GTK);
	Linker.link(gtk_application_get_active_window, "gtk_application_get_active_window", LIBRARY_GTK);
	Linker.link(gtk_application_get_menu_by_id, "gtk_application_get_menu_by_id", LIBRARY_GTK);
	Linker.link(gtk_application_get_menubar, "gtk_application_get_menubar", LIBRARY_GTK);
	Linker.link(gtk_application_get_window_by_id, "gtk_application_get_window_by_id", LIBRARY_GTK);
	Linker.link(gtk_application_get_windows, "gtk_application_get_windows", LIBRARY_GTK);
	Linker.link(gtk_application_inhibit, "gtk_application_inhibit", LIBRARY_GTK);
	Linker.link(gtk_application_list_action_descriptions, "gtk_application_list_action_descriptions", LIBRARY_GTK);
	Linker.link(gtk_application_remove_window, "gtk_application_remove_window", LIBRARY_GTK);
	Linker.link(gtk_application_set_accels_for_action, "gtk_application_set_accels_for_action", LIBRARY_GTK);
	Linker.link(gtk_application_set_menubar, "gtk_application_set_menubar", LIBRARY_GTK);
	Linker.link(gtk_application_uninhibit, "gtk_application_uninhibit", LIBRARY_GTK);

	// gtk.ApplicationWindow

	Linker.link(gtk_application_window_get_type, "gtk_application_window_get_type", LIBRARY_GTK);
	Linker.link(gtk_application_window_new, "gtk_application_window_new", LIBRARY_GTK);
	Linker.link(gtk_application_window_get_help_overlay, "gtk_application_window_get_help_overlay", LIBRARY_GTK);
	Linker.link(gtk_application_window_get_id, "gtk_application_window_get_id", LIBRARY_GTK);
	Linker.link(gtk_application_window_get_show_menubar, "gtk_application_window_get_show_menubar", LIBRARY_GTK);
	Linker.link(gtk_application_window_set_help_overlay, "gtk_application_window_set_help_overlay", LIBRARY_GTK);
	Linker.link(gtk_application_window_set_show_menubar, "gtk_application_window_set_show_menubar", LIBRARY_GTK);

	// gtk.AspectFrame

	Linker.link(gtk_aspect_frame_get_type, "gtk_aspect_frame_get_type", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_new, "gtk_aspect_frame_new", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_get_child, "gtk_aspect_frame_get_child", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_get_obey_child, "gtk_aspect_frame_get_obey_child", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_get_ratio, "gtk_aspect_frame_get_ratio", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_get_xalign, "gtk_aspect_frame_get_xalign", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_get_yalign, "gtk_aspect_frame_get_yalign", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_set_child, "gtk_aspect_frame_set_child", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_set_obey_child, "gtk_aspect_frame_set_obey_child", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_set_ratio, "gtk_aspect_frame_set_ratio", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_set_xalign, "gtk_aspect_frame_set_xalign", LIBRARY_GTK);
	Linker.link(gtk_aspect_frame_set_yalign, "gtk_aspect_frame_set_yalign", LIBRARY_GTK);

	// gtk.Assistant

	Linker.link(gtk_assistant_get_type, "gtk_assistant_get_type", LIBRARY_GTK);
	Linker.link(gtk_assistant_new, "gtk_assistant_new", LIBRARY_GTK);
	Linker.link(gtk_assistant_add_action_widget, "gtk_assistant_add_action_widget", LIBRARY_GTK);
	Linker.link(gtk_assistant_append_page, "gtk_assistant_append_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_commit, "gtk_assistant_commit", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_current_page, "gtk_assistant_get_current_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_n_pages, "gtk_assistant_get_n_pages", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_nth_page, "gtk_assistant_get_nth_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_page, "gtk_assistant_get_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_page_complete, "gtk_assistant_get_page_complete", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_page_title, "gtk_assistant_get_page_title", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_page_type, "gtk_assistant_get_page_type", LIBRARY_GTK);
	Linker.link(gtk_assistant_get_pages, "gtk_assistant_get_pages", LIBRARY_GTK);
	Linker.link(gtk_assistant_insert_page, "gtk_assistant_insert_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_next_page, "gtk_assistant_next_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_prepend_page, "gtk_assistant_prepend_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_previous_page, "gtk_assistant_previous_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_remove_action_widget, "gtk_assistant_remove_action_widget", LIBRARY_GTK);
	Linker.link(gtk_assistant_remove_page, "gtk_assistant_remove_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_set_current_page, "gtk_assistant_set_current_page", LIBRARY_GTK);
	Linker.link(gtk_assistant_set_forward_page_func, "gtk_assistant_set_forward_page_func", LIBRARY_GTK);
	Linker.link(gtk_assistant_set_page_complete, "gtk_assistant_set_page_complete", LIBRARY_GTK);
	Linker.link(gtk_assistant_set_page_title, "gtk_assistant_set_page_title", LIBRARY_GTK);
	Linker.link(gtk_assistant_set_page_type, "gtk_assistant_set_page_type", LIBRARY_GTK);
	Linker.link(gtk_assistant_update_buttons_state, "gtk_assistant_update_buttons_state", LIBRARY_GTK);

	// gtk.AssistantPage

	Linker.link(gtk_assistant_page_get_type, "gtk_assistant_page_get_type", LIBRARY_GTK);
	Linker.link(gtk_assistant_page_get_child, "gtk_assistant_page_get_child", LIBRARY_GTK);

	// gtk.BinLayout

	Linker.link(gtk_bin_layout_get_type, "gtk_bin_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_bin_layout_new, "gtk_bin_layout_new", LIBRARY_GTK);

	// gtk.Bitset

	Linker.link(gtk_bitset_get_type, "gtk_bitset_get_type", LIBRARY_GTK);
	Linker.link(gtk_bitset_new_empty, "gtk_bitset_new_empty", LIBRARY_GTK);
	Linker.link(gtk_bitset_new_range, "gtk_bitset_new_range", LIBRARY_GTK);
	Linker.link(gtk_bitset_add, "gtk_bitset_add", LIBRARY_GTK);
	Linker.link(gtk_bitset_add_range, "gtk_bitset_add_range", LIBRARY_GTK);
	Linker.link(gtk_bitset_add_range_closed, "gtk_bitset_add_range_closed", LIBRARY_GTK);
	Linker.link(gtk_bitset_add_rectangle, "gtk_bitset_add_rectangle", LIBRARY_GTK);
	Linker.link(gtk_bitset_contains, "gtk_bitset_contains", LIBRARY_GTK);
	Linker.link(gtk_bitset_copy, "gtk_bitset_copy", LIBRARY_GTK);
	Linker.link(gtk_bitset_difference, "gtk_bitset_difference", LIBRARY_GTK);
	Linker.link(gtk_bitset_equals, "gtk_bitset_equals", LIBRARY_GTK);
	Linker.link(gtk_bitset_get_maximum, "gtk_bitset_get_maximum", LIBRARY_GTK);
	Linker.link(gtk_bitset_get_minimum, "gtk_bitset_get_minimum", LIBRARY_GTK);
	Linker.link(gtk_bitset_get_nth, "gtk_bitset_get_nth", LIBRARY_GTK);
	Linker.link(gtk_bitset_get_size, "gtk_bitset_get_size", LIBRARY_GTK);
	Linker.link(gtk_bitset_get_size_in_range, "gtk_bitset_get_size_in_range", LIBRARY_GTK);
	Linker.link(gtk_bitset_intersect, "gtk_bitset_intersect", LIBRARY_GTK);
	Linker.link(gtk_bitset_is_empty, "gtk_bitset_is_empty", LIBRARY_GTK);
	Linker.link(gtk_bitset_ref, "gtk_bitset_ref", LIBRARY_GTK);
	Linker.link(gtk_bitset_remove, "gtk_bitset_remove", LIBRARY_GTK);
	Linker.link(gtk_bitset_remove_all, "gtk_bitset_remove_all", LIBRARY_GTK);
	Linker.link(gtk_bitset_remove_range, "gtk_bitset_remove_range", LIBRARY_GTK);
	Linker.link(gtk_bitset_remove_range_closed, "gtk_bitset_remove_range_closed", LIBRARY_GTK);
	Linker.link(gtk_bitset_remove_rectangle, "gtk_bitset_remove_rectangle", LIBRARY_GTK);
	Linker.link(gtk_bitset_shift_left, "gtk_bitset_shift_left", LIBRARY_GTK);
	Linker.link(gtk_bitset_shift_right, "gtk_bitset_shift_right", LIBRARY_GTK);
	Linker.link(gtk_bitset_splice, "gtk_bitset_splice", LIBRARY_GTK);
	Linker.link(gtk_bitset_subtract, "gtk_bitset_subtract", LIBRARY_GTK);
	Linker.link(gtk_bitset_union, "gtk_bitset_union", LIBRARY_GTK);
	Linker.link(gtk_bitset_unref, "gtk_bitset_unref", LIBRARY_GTK);

	// gtk.BitsetIter

	Linker.link(gtk_bitset_iter_get_type, "gtk_bitset_iter_get_type", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_get_value, "gtk_bitset_iter_get_value", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_is_valid, "gtk_bitset_iter_is_valid", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_next, "gtk_bitset_iter_next", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_previous, "gtk_bitset_iter_previous", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_init_at, "gtk_bitset_iter_init_at", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_init_first, "gtk_bitset_iter_init_first", LIBRARY_GTK);
	Linker.link(gtk_bitset_iter_init_last, "gtk_bitset_iter_init_last", LIBRARY_GTK);

	// gtk.BookmarkList

	Linker.link(gtk_bookmark_list_get_type, "gtk_bookmark_list_get_type", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_new, "gtk_bookmark_list_new", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_get_attributes, "gtk_bookmark_list_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_get_filename, "gtk_bookmark_list_get_filename", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_get_io_priority, "gtk_bookmark_list_get_io_priority", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_is_loading, "gtk_bookmark_list_is_loading", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_set_attributes, "gtk_bookmark_list_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_bookmark_list_set_io_priority, "gtk_bookmark_list_set_io_priority", LIBRARY_GTK);

	// gtk.BoolFilter

	Linker.link(gtk_bool_filter_get_type, "gtk_bool_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_bool_filter_new, "gtk_bool_filter_new", LIBRARY_GTK);
	Linker.link(gtk_bool_filter_get_expression, "gtk_bool_filter_get_expression", LIBRARY_GTK);
	Linker.link(gtk_bool_filter_get_invert, "gtk_bool_filter_get_invert", LIBRARY_GTK);
	Linker.link(gtk_bool_filter_set_expression, "gtk_bool_filter_set_expression", LIBRARY_GTK);
	Linker.link(gtk_bool_filter_set_invert, "gtk_bool_filter_set_invert", LIBRARY_GTK);

	// gtk.Border

	Linker.link(gtk_border_get_type, "gtk_border_get_type", LIBRARY_GTK);
	Linker.link(gtk_border_new, "gtk_border_new", LIBRARY_GTK);
	Linker.link(gtk_border_copy, "gtk_border_copy", LIBRARY_GTK);
	Linker.link(gtk_border_free, "gtk_border_free", LIBRARY_GTK);

	// gtk.Box

	Linker.link(gtk_box_get_type, "gtk_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_box_new, "gtk_box_new", LIBRARY_GTK);
	Linker.link(gtk_box_append, "gtk_box_append", LIBRARY_GTK);
	Linker.link(gtk_box_get_baseline_position, "gtk_box_get_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_box_get_homogeneous, "gtk_box_get_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_box_get_spacing, "gtk_box_get_spacing", LIBRARY_GTK);
	Linker.link(gtk_box_insert_child_after, "gtk_box_insert_child_after", LIBRARY_GTK);
	Linker.link(gtk_box_prepend, "gtk_box_prepend", LIBRARY_GTK);
	Linker.link(gtk_box_remove, "gtk_box_remove", LIBRARY_GTK);
	Linker.link(gtk_box_reorder_child_after, "gtk_box_reorder_child_after", LIBRARY_GTK);
	Linker.link(gtk_box_set_baseline_position, "gtk_box_set_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_box_set_homogeneous, "gtk_box_set_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_box_set_spacing, "gtk_box_set_spacing", LIBRARY_GTK);

	// gtk.BoxLayout

	Linker.link(gtk_box_layout_get_type, "gtk_box_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_box_layout_new, "gtk_box_layout_new", LIBRARY_GTK);
	Linker.link(gtk_box_layout_get_baseline_position, "gtk_box_layout_get_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_box_layout_get_homogeneous, "gtk_box_layout_get_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_box_layout_get_spacing, "gtk_box_layout_get_spacing", LIBRARY_GTK);
	Linker.link(gtk_box_layout_set_baseline_position, "gtk_box_layout_set_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_box_layout_set_homogeneous, "gtk_box_layout_set_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_box_layout_set_spacing, "gtk_box_layout_set_spacing", LIBRARY_GTK);

	// gtk.Buildable

	Linker.link(gtk_buildable_get_type, "gtk_buildable_get_type", LIBRARY_GTK);
	Linker.link(gtk_buildable_get_buildable_id, "gtk_buildable_get_buildable_id", LIBRARY_GTK);

	// gtk.BuildableParseContext

	Linker.link(gtk_buildable_parse_context_get_element, "gtk_buildable_parse_context_get_element", LIBRARY_GTK);
	Linker.link(gtk_buildable_parse_context_get_element_stack, "gtk_buildable_parse_context_get_element_stack", LIBRARY_GTK);
	Linker.link(gtk_buildable_parse_context_get_position, "gtk_buildable_parse_context_get_position", LIBRARY_GTK);
	Linker.link(gtk_buildable_parse_context_pop, "gtk_buildable_parse_context_pop", LIBRARY_GTK);
	Linker.link(gtk_buildable_parse_context_push, "gtk_buildable_parse_context_push", LIBRARY_GTK);

	// gtk.Builder

	Linker.link(gtk_builder_get_type, "gtk_builder_get_type", LIBRARY_GTK);
	Linker.link(gtk_builder_new, "gtk_builder_new", LIBRARY_GTK);
	Linker.link(gtk_builder_new_from_file, "gtk_builder_new_from_file", LIBRARY_GTK);
	Linker.link(gtk_builder_new_from_resource, "gtk_builder_new_from_resource", LIBRARY_GTK);
	Linker.link(gtk_builder_new_from_string, "gtk_builder_new_from_string", LIBRARY_GTK);
	Linker.link(gtk_builder_add_from_file, "gtk_builder_add_from_file", LIBRARY_GTK);
	Linker.link(gtk_builder_add_from_resource, "gtk_builder_add_from_resource", LIBRARY_GTK);
	Linker.link(gtk_builder_add_from_string, "gtk_builder_add_from_string", LIBRARY_GTK);
	Linker.link(gtk_builder_add_objects_from_file, "gtk_builder_add_objects_from_file", LIBRARY_GTK);
	Linker.link(gtk_builder_add_objects_from_resource, "gtk_builder_add_objects_from_resource", LIBRARY_GTK);
	Linker.link(gtk_builder_add_objects_from_string, "gtk_builder_add_objects_from_string", LIBRARY_GTK);
	Linker.link(gtk_builder_create_closure, "gtk_builder_create_closure", LIBRARY_GTK);
	Linker.link(gtk_builder_expose_object, "gtk_builder_expose_object", LIBRARY_GTK);
	Linker.link(gtk_builder_extend_with_template, "gtk_builder_extend_with_template", LIBRARY_GTK);
	Linker.link(gtk_builder_get_current_object, "gtk_builder_get_current_object", LIBRARY_GTK);
	Linker.link(gtk_builder_get_object, "gtk_builder_get_object", LIBRARY_GTK);
	Linker.link(gtk_builder_get_objects, "gtk_builder_get_objects", LIBRARY_GTK);
	Linker.link(gtk_builder_get_scope, "gtk_builder_get_scope", LIBRARY_GTK);
	Linker.link(gtk_builder_get_translation_domain, "gtk_builder_get_translation_domain", LIBRARY_GTK);
	Linker.link(gtk_builder_get_type_from_name, "gtk_builder_get_type_from_name", LIBRARY_GTK);
	Linker.link(gtk_builder_set_current_object, "gtk_builder_set_current_object", LIBRARY_GTK);
	Linker.link(gtk_builder_set_scope, "gtk_builder_set_scope", LIBRARY_GTK);
	Linker.link(gtk_builder_set_translation_domain, "gtk_builder_set_translation_domain", LIBRARY_GTK);
	Linker.link(gtk_builder_value_from_string, "gtk_builder_value_from_string", LIBRARY_GTK);
	Linker.link(gtk_builder_value_from_string_type, "gtk_builder_value_from_string_type", LIBRARY_GTK);

	// gtk.BuilderCScope

	Linker.link(gtk_builder_cscope_get_type, "gtk_builder_cscope_get_type", LIBRARY_GTK);
	Linker.link(gtk_builder_cscope_new, "gtk_builder_cscope_new", LIBRARY_GTK);
	Linker.link(gtk_builder_cscope_add_callback_symbol, "gtk_builder_cscope_add_callback_symbol", LIBRARY_GTK);
	Linker.link(gtk_builder_cscope_add_callback_symbols, "gtk_builder_cscope_add_callback_symbols", LIBRARY_GTK);
	Linker.link(gtk_builder_cscope_lookup_callback_symbol, "gtk_builder_cscope_lookup_callback_symbol", LIBRARY_GTK);

	// gtk.BuilderListItemFactory

	Linker.link(gtk_builder_list_item_factory_get_type, "gtk_builder_list_item_factory_get_type", LIBRARY_GTK);
	Linker.link(gtk_builder_list_item_factory_new_from_bytes, "gtk_builder_list_item_factory_new_from_bytes", LIBRARY_GTK);
	Linker.link(gtk_builder_list_item_factory_new_from_resource, "gtk_builder_list_item_factory_new_from_resource", LIBRARY_GTK);
	Linker.link(gtk_builder_list_item_factory_get_bytes, "gtk_builder_list_item_factory_get_bytes", LIBRARY_GTK);
	Linker.link(gtk_builder_list_item_factory_get_resource, "gtk_builder_list_item_factory_get_resource", LIBRARY_GTK);
	Linker.link(gtk_builder_list_item_factory_get_scope, "gtk_builder_list_item_factory_get_scope", LIBRARY_GTK);

	// gtk.BuilderScope

	Linker.link(gtk_builder_scope_get_type, "gtk_builder_scope_get_type", LIBRARY_GTK);

	// gtk.Button

	Linker.link(gtk_button_get_type, "gtk_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_button_new, "gtk_button_new", LIBRARY_GTK);
	Linker.link(gtk_button_new_from_icon_name, "gtk_button_new_from_icon_name", LIBRARY_GTK);
	Linker.link(gtk_button_new_with_label, "gtk_button_new_with_label", LIBRARY_GTK);
	Linker.link(gtk_button_new_with_mnemonic, "gtk_button_new_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_button_get_child, "gtk_button_get_child", LIBRARY_GTK);
	Linker.link(gtk_button_get_has_frame, "gtk_button_get_has_frame", LIBRARY_GTK);
	Linker.link(gtk_button_get_icon_name, "gtk_button_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_button_get_label, "gtk_button_get_label", LIBRARY_GTK);
	Linker.link(gtk_button_get_use_underline, "gtk_button_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_button_set_child, "gtk_button_set_child", LIBRARY_GTK);
	Linker.link(gtk_button_set_has_frame, "gtk_button_set_has_frame", LIBRARY_GTK);
	Linker.link(gtk_button_set_icon_name, "gtk_button_set_icon_name", LIBRARY_GTK);
	Linker.link(gtk_button_set_label, "gtk_button_set_label", LIBRARY_GTK);
	Linker.link(gtk_button_set_use_underline, "gtk_button_set_use_underline", LIBRARY_GTK);

	// gtk.CClosureExpression

	Linker.link(gtk_cclosure_expression_get_type, "gtk_cclosure_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_cclosure_expression_new, "gtk_cclosure_expression_new", LIBRARY_GTK);

	// gtk.Calendar

	Linker.link(gtk_calendar_get_type, "gtk_calendar_get_type", LIBRARY_GTK);
	Linker.link(gtk_calendar_new, "gtk_calendar_new", LIBRARY_GTK);
	Linker.link(gtk_calendar_clear_marks, "gtk_calendar_clear_marks", LIBRARY_GTK);
	Linker.link(gtk_calendar_get_date, "gtk_calendar_get_date", LIBRARY_GTK);
	Linker.link(gtk_calendar_get_day_is_marked, "gtk_calendar_get_day_is_marked", LIBRARY_GTK);
	Linker.link(gtk_calendar_get_show_day_names, "gtk_calendar_get_show_day_names", LIBRARY_GTK);
	Linker.link(gtk_calendar_get_show_heading, "gtk_calendar_get_show_heading", LIBRARY_GTK);
	Linker.link(gtk_calendar_get_show_week_numbers, "gtk_calendar_get_show_week_numbers", LIBRARY_GTK);
	Linker.link(gtk_calendar_mark_day, "gtk_calendar_mark_day", LIBRARY_GTK);
	Linker.link(gtk_calendar_select_day, "gtk_calendar_select_day", LIBRARY_GTK);
	Linker.link(gtk_calendar_set_show_day_names, "gtk_calendar_set_show_day_names", LIBRARY_GTK);
	Linker.link(gtk_calendar_set_show_heading, "gtk_calendar_set_show_heading", LIBRARY_GTK);
	Linker.link(gtk_calendar_set_show_week_numbers, "gtk_calendar_set_show_week_numbers", LIBRARY_GTK);
	Linker.link(gtk_calendar_unmark_day, "gtk_calendar_unmark_day", LIBRARY_GTK);

	// gtk.CallbackAction

	Linker.link(gtk_callback_action_get_type, "gtk_callback_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_callback_action_new, "gtk_callback_action_new", LIBRARY_GTK);

	// gtk.CellArea

	Linker.link(gtk_cell_area_get_type, "gtk_cell_area_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_area_activate, "gtk_cell_area_activate", LIBRARY_GTK);
	Linker.link(gtk_cell_area_activate_cell, "gtk_cell_area_activate_cell", LIBRARY_GTK);
	Linker.link(gtk_cell_area_add, "gtk_cell_area_add", LIBRARY_GTK);
	Linker.link(gtk_cell_area_add_focus_sibling, "gtk_cell_area_add_focus_sibling", LIBRARY_GTK);
	Linker.link(gtk_cell_area_add_with_properties, "gtk_cell_area_add_with_properties", LIBRARY_GTK);
	Linker.link(gtk_cell_area_apply_attributes, "gtk_cell_area_apply_attributes", LIBRARY_GTK);
	Linker.link(gtk_cell_area_attribute_connect, "gtk_cell_area_attribute_connect", LIBRARY_GTK);
	Linker.link(gtk_cell_area_attribute_disconnect, "gtk_cell_area_attribute_disconnect", LIBRARY_GTK);
	Linker.link(gtk_cell_area_attribute_get_column, "gtk_cell_area_attribute_get_column", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_get, "gtk_cell_area_cell_get", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_get_property, "gtk_cell_area_cell_get_property", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_get_valist, "gtk_cell_area_cell_get_valist", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_set, "gtk_cell_area_cell_set", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_set_property, "gtk_cell_area_cell_set_property", LIBRARY_GTK);
	Linker.link(gtk_cell_area_cell_set_valist, "gtk_cell_area_cell_set_valist", LIBRARY_GTK);
	Linker.link(gtk_cell_area_copy_context, "gtk_cell_area_copy_context", LIBRARY_GTK);
	Linker.link(gtk_cell_area_create_context, "gtk_cell_area_create_context", LIBRARY_GTK);
	Linker.link(gtk_cell_area_event, "gtk_cell_area_event", LIBRARY_GTK);
	Linker.link(gtk_cell_area_focus, "gtk_cell_area_focus", LIBRARY_GTK);
	Linker.link(gtk_cell_area_foreach, "gtk_cell_area_foreach", LIBRARY_GTK);
	Linker.link(gtk_cell_area_foreach_alloc, "gtk_cell_area_foreach_alloc", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_cell_allocation, "gtk_cell_area_get_cell_allocation", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_cell_at_position, "gtk_cell_area_get_cell_at_position", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_current_path_string, "gtk_cell_area_get_current_path_string", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_edit_widget, "gtk_cell_area_get_edit_widget", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_edited_cell, "gtk_cell_area_get_edited_cell", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_focus_cell, "gtk_cell_area_get_focus_cell", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_focus_from_sibling, "gtk_cell_area_get_focus_from_sibling", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_focus_siblings, "gtk_cell_area_get_focus_siblings", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_preferred_height, "gtk_cell_area_get_preferred_height", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_preferred_height_for_width, "gtk_cell_area_get_preferred_height_for_width", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_preferred_width, "gtk_cell_area_get_preferred_width", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_preferred_width_for_height, "gtk_cell_area_get_preferred_width_for_height", LIBRARY_GTK);
	Linker.link(gtk_cell_area_get_request_mode, "gtk_cell_area_get_request_mode", LIBRARY_GTK);
	Linker.link(gtk_cell_area_has_renderer, "gtk_cell_area_has_renderer", LIBRARY_GTK);
	Linker.link(gtk_cell_area_inner_cell_area, "gtk_cell_area_inner_cell_area", LIBRARY_GTK);
	Linker.link(gtk_cell_area_is_activatable, "gtk_cell_area_is_activatable", LIBRARY_GTK);
	Linker.link(gtk_cell_area_is_focus_sibling, "gtk_cell_area_is_focus_sibling", LIBRARY_GTK);
	Linker.link(gtk_cell_area_remove, "gtk_cell_area_remove", LIBRARY_GTK);
	Linker.link(gtk_cell_area_remove_focus_sibling, "gtk_cell_area_remove_focus_sibling", LIBRARY_GTK);
	Linker.link(gtk_cell_area_request_renderer, "gtk_cell_area_request_renderer", LIBRARY_GTK);
	Linker.link(gtk_cell_area_set_focus_cell, "gtk_cell_area_set_focus_cell", LIBRARY_GTK);
	Linker.link(gtk_cell_area_snapshot, "gtk_cell_area_snapshot", LIBRARY_GTK);
	Linker.link(gtk_cell_area_stop_editing, "gtk_cell_area_stop_editing", LIBRARY_GTK);

	// gtk.CellAreaBox

	Linker.link(gtk_cell_area_box_get_type, "gtk_cell_area_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_area_box_new, "gtk_cell_area_box_new", LIBRARY_GTK);
	Linker.link(gtk_cell_area_box_get_spacing, "gtk_cell_area_box_get_spacing", LIBRARY_GTK);
	Linker.link(gtk_cell_area_box_pack_end, "gtk_cell_area_box_pack_end", LIBRARY_GTK);
	Linker.link(gtk_cell_area_box_pack_start, "gtk_cell_area_box_pack_start", LIBRARY_GTK);
	Linker.link(gtk_cell_area_box_set_spacing, "gtk_cell_area_box_set_spacing", LIBRARY_GTK);

	// gtk.CellAreaClass

	Linker.link(gtk_cell_area_class_find_cell_property, "gtk_cell_area_class_find_cell_property", LIBRARY_GTK);
	Linker.link(gtk_cell_area_class_install_cell_property, "gtk_cell_area_class_install_cell_property", LIBRARY_GTK);
	Linker.link(gtk_cell_area_class_list_cell_properties, "gtk_cell_area_class_list_cell_properties", LIBRARY_GTK);

	// gtk.CellAreaContext

	Linker.link(gtk_cell_area_context_get_type, "gtk_cell_area_context_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_allocate, "gtk_cell_area_context_allocate", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_allocation, "gtk_cell_area_context_get_allocation", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_area, "gtk_cell_area_context_get_area", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_preferred_height, "gtk_cell_area_context_get_preferred_height", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_preferred_height_for_width, "gtk_cell_area_context_get_preferred_height_for_width", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_preferred_width, "gtk_cell_area_context_get_preferred_width", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_get_preferred_width_for_height, "gtk_cell_area_context_get_preferred_width_for_height", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_push_preferred_height, "gtk_cell_area_context_push_preferred_height", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_push_preferred_width, "gtk_cell_area_context_push_preferred_width", LIBRARY_GTK);
	Linker.link(gtk_cell_area_context_reset, "gtk_cell_area_context_reset", LIBRARY_GTK);

	// gtk.CellEditable

	Linker.link(gtk_cell_editable_get_type, "gtk_cell_editable_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_editable_editing_done, "gtk_cell_editable_editing_done", LIBRARY_GTK);
	Linker.link(gtk_cell_editable_remove_widget, "gtk_cell_editable_remove_widget", LIBRARY_GTK);
	Linker.link(gtk_cell_editable_start_editing, "gtk_cell_editable_start_editing", LIBRARY_GTK);

	// gtk.CellLayout

	Linker.link(gtk_cell_layout_get_type, "gtk_cell_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_add_attribute, "gtk_cell_layout_add_attribute", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_clear, "gtk_cell_layout_clear", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_clear_attributes, "gtk_cell_layout_clear_attributes", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_get_area, "gtk_cell_layout_get_area", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_get_cells, "gtk_cell_layout_get_cells", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_pack_end, "gtk_cell_layout_pack_end", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_pack_start, "gtk_cell_layout_pack_start", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_reorder, "gtk_cell_layout_reorder", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_set_attributes, "gtk_cell_layout_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_cell_layout_set_cell_data_func, "gtk_cell_layout_set_cell_data_func", LIBRARY_GTK);

	// gtk.CellRenderer

	Linker.link(gtk_cell_renderer_get_type, "gtk_cell_renderer_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_activate, "gtk_cell_renderer_activate", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_aligned_area, "gtk_cell_renderer_get_aligned_area", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_alignment, "gtk_cell_renderer_get_alignment", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_fixed_size, "gtk_cell_renderer_get_fixed_size", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_is_expanded, "gtk_cell_renderer_get_is_expanded", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_is_expander, "gtk_cell_renderer_get_is_expander", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_padding, "gtk_cell_renderer_get_padding", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_preferred_height, "gtk_cell_renderer_get_preferred_height", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_preferred_height_for_width, "gtk_cell_renderer_get_preferred_height_for_width", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_preferred_size, "gtk_cell_renderer_get_preferred_size", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_preferred_width, "gtk_cell_renderer_get_preferred_width", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_preferred_width_for_height, "gtk_cell_renderer_get_preferred_width_for_height", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_request_mode, "gtk_cell_renderer_get_request_mode", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_sensitive, "gtk_cell_renderer_get_sensitive", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_state, "gtk_cell_renderer_get_state", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_get_visible, "gtk_cell_renderer_get_visible", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_is_activatable, "gtk_cell_renderer_is_activatable", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_alignment, "gtk_cell_renderer_set_alignment", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_fixed_size, "gtk_cell_renderer_set_fixed_size", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_is_expanded, "gtk_cell_renderer_set_is_expanded", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_is_expander, "gtk_cell_renderer_set_is_expander", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_padding, "gtk_cell_renderer_set_padding", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_sensitive, "gtk_cell_renderer_set_sensitive", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_set_visible, "gtk_cell_renderer_set_visible", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_snapshot, "gtk_cell_renderer_snapshot", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_start_editing, "gtk_cell_renderer_start_editing", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_stop_editing, "gtk_cell_renderer_stop_editing", LIBRARY_GTK);

	// gtk.CellRendererAccel

	Linker.link(gtk_cell_renderer_accel_get_type, "gtk_cell_renderer_accel_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_accel_new, "gtk_cell_renderer_accel_new", LIBRARY_GTK);

	// gtk.CellRendererCombo

	Linker.link(gtk_cell_renderer_combo_get_type, "gtk_cell_renderer_combo_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_combo_new, "gtk_cell_renderer_combo_new", LIBRARY_GTK);

	// gtk.CellRendererPixbuf

	Linker.link(gtk_cell_renderer_pixbuf_get_type, "gtk_cell_renderer_pixbuf_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_pixbuf_new, "gtk_cell_renderer_pixbuf_new", LIBRARY_GTK);

	// gtk.CellRendererProgress

	Linker.link(gtk_cell_renderer_progress_get_type, "gtk_cell_renderer_progress_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_progress_new, "gtk_cell_renderer_progress_new", LIBRARY_GTK);

	// gtk.CellRendererSpin

	Linker.link(gtk_cell_renderer_spin_get_type, "gtk_cell_renderer_spin_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_spin_new, "gtk_cell_renderer_spin_new", LIBRARY_GTK);

	// gtk.CellRendererSpinner

	Linker.link(gtk_cell_renderer_spinner_get_type, "gtk_cell_renderer_spinner_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_spinner_new, "gtk_cell_renderer_spinner_new", LIBRARY_GTK);

	// gtk.CellRendererText

	Linker.link(gtk_cell_renderer_text_get_type, "gtk_cell_renderer_text_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_text_new, "gtk_cell_renderer_text_new", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_text_set_fixed_height_from_font, "gtk_cell_renderer_text_set_fixed_height_from_font", LIBRARY_GTK);

	// gtk.CellRendererToggle

	Linker.link(gtk_cell_renderer_toggle_get_type, "gtk_cell_renderer_toggle_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_new, "gtk_cell_renderer_toggle_new", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_get_activatable, "gtk_cell_renderer_toggle_get_activatable", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_get_active, "gtk_cell_renderer_toggle_get_active", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_get_radio, "gtk_cell_renderer_toggle_get_radio", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_set_activatable, "gtk_cell_renderer_toggle_set_activatable", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_set_active, "gtk_cell_renderer_toggle_set_active", LIBRARY_GTK);
	Linker.link(gtk_cell_renderer_toggle_set_radio, "gtk_cell_renderer_toggle_set_radio", LIBRARY_GTK);

	// gtk.CellView

	Linker.link(gtk_cell_view_get_type, "gtk_cell_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_cell_view_new, "gtk_cell_view_new", LIBRARY_GTK);
	Linker.link(gtk_cell_view_new_with_context, "gtk_cell_view_new_with_context", LIBRARY_GTK);
	Linker.link(gtk_cell_view_new_with_markup, "gtk_cell_view_new_with_markup", LIBRARY_GTK);
	Linker.link(gtk_cell_view_new_with_text, "gtk_cell_view_new_with_text", LIBRARY_GTK);
	Linker.link(gtk_cell_view_new_with_texture, "gtk_cell_view_new_with_texture", LIBRARY_GTK);
	Linker.link(gtk_cell_view_get_displayed_row, "gtk_cell_view_get_displayed_row", LIBRARY_GTK);
	Linker.link(gtk_cell_view_get_draw_sensitive, "gtk_cell_view_get_draw_sensitive", LIBRARY_GTK);
	Linker.link(gtk_cell_view_get_fit_model, "gtk_cell_view_get_fit_model", LIBRARY_GTK);
	Linker.link(gtk_cell_view_get_model, "gtk_cell_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_cell_view_set_displayed_row, "gtk_cell_view_set_displayed_row", LIBRARY_GTK);
	Linker.link(gtk_cell_view_set_draw_sensitive, "gtk_cell_view_set_draw_sensitive", LIBRARY_GTK);
	Linker.link(gtk_cell_view_set_fit_model, "gtk_cell_view_set_fit_model", LIBRARY_GTK);
	Linker.link(gtk_cell_view_set_model, "gtk_cell_view_set_model", LIBRARY_GTK);

	// gtk.CenterBox

	Linker.link(gtk_center_box_get_type, "gtk_center_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_center_box_new, "gtk_center_box_new", LIBRARY_GTK);
	Linker.link(gtk_center_box_get_baseline_position, "gtk_center_box_get_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_center_box_get_center_widget, "gtk_center_box_get_center_widget", LIBRARY_GTK);
	Linker.link(gtk_center_box_get_end_widget, "gtk_center_box_get_end_widget", LIBRARY_GTK);
	Linker.link(gtk_center_box_get_start_widget, "gtk_center_box_get_start_widget", LIBRARY_GTK);
	Linker.link(gtk_center_box_set_baseline_position, "gtk_center_box_set_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_center_box_set_center_widget, "gtk_center_box_set_center_widget", LIBRARY_GTK);
	Linker.link(gtk_center_box_set_end_widget, "gtk_center_box_set_end_widget", LIBRARY_GTK);
	Linker.link(gtk_center_box_set_start_widget, "gtk_center_box_set_start_widget", LIBRARY_GTK);

	// gtk.CenterLayout

	Linker.link(gtk_center_layout_get_type, "gtk_center_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_center_layout_new, "gtk_center_layout_new", LIBRARY_GTK);
	Linker.link(gtk_center_layout_get_baseline_position, "gtk_center_layout_get_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_center_layout_get_center_widget, "gtk_center_layout_get_center_widget", LIBRARY_GTK);
	Linker.link(gtk_center_layout_get_end_widget, "gtk_center_layout_get_end_widget", LIBRARY_GTK);
	Linker.link(gtk_center_layout_get_orientation, "gtk_center_layout_get_orientation", LIBRARY_GTK);
	Linker.link(gtk_center_layout_get_start_widget, "gtk_center_layout_get_start_widget", LIBRARY_GTK);
	Linker.link(gtk_center_layout_set_baseline_position, "gtk_center_layout_set_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_center_layout_set_center_widget, "gtk_center_layout_set_center_widget", LIBRARY_GTK);
	Linker.link(gtk_center_layout_set_end_widget, "gtk_center_layout_set_end_widget", LIBRARY_GTK);
	Linker.link(gtk_center_layout_set_orientation, "gtk_center_layout_set_orientation", LIBRARY_GTK);
	Linker.link(gtk_center_layout_set_start_widget, "gtk_center_layout_set_start_widget", LIBRARY_GTK);

	// gtk.CheckButton

	Linker.link(gtk_check_button_get_type, "gtk_check_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_check_button_new, "gtk_check_button_new", LIBRARY_GTK);
	Linker.link(gtk_check_button_new_with_label, "gtk_check_button_new_with_label", LIBRARY_GTK);
	Linker.link(gtk_check_button_new_with_mnemonic, "gtk_check_button_new_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_check_button_get_active, "gtk_check_button_get_active", LIBRARY_GTK);
	Linker.link(gtk_check_button_get_inconsistent, "gtk_check_button_get_inconsistent", LIBRARY_GTK);
	Linker.link(gtk_check_button_get_label, "gtk_check_button_get_label", LIBRARY_GTK);
	Linker.link(gtk_check_button_get_use_underline, "gtk_check_button_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_check_button_set_active, "gtk_check_button_set_active", LIBRARY_GTK);
	Linker.link(gtk_check_button_set_group, "gtk_check_button_set_group", LIBRARY_GTK);
	Linker.link(gtk_check_button_set_inconsistent, "gtk_check_button_set_inconsistent", LIBRARY_GTK);
	Linker.link(gtk_check_button_set_label, "gtk_check_button_set_label", LIBRARY_GTK);
	Linker.link(gtk_check_button_set_use_underline, "gtk_check_button_set_use_underline", LIBRARY_GTK);

	// gtk.ClosureExpression

	Linker.link(gtk_closure_expression_get_type, "gtk_closure_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_closure_expression_new, "gtk_closure_expression_new", LIBRARY_GTK);

	// gtk.ColorButton

	Linker.link(gtk_color_button_get_type, "gtk_color_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_color_button_new, "gtk_color_button_new", LIBRARY_GTK);
	Linker.link(gtk_color_button_new_with_rgba, "gtk_color_button_new_with_rgba", LIBRARY_GTK);
	Linker.link(gtk_color_button_get_modal, "gtk_color_button_get_modal", LIBRARY_GTK);
	Linker.link(gtk_color_button_get_title, "gtk_color_button_get_title", LIBRARY_GTK);
	Linker.link(gtk_color_button_set_modal, "gtk_color_button_set_modal", LIBRARY_GTK);
	Linker.link(gtk_color_button_set_title, "gtk_color_button_set_title", LIBRARY_GTK);

	// gtk.ColorChooser

	Linker.link(gtk_color_chooser_get_type, "gtk_color_chooser_get_type", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_add_palette, "gtk_color_chooser_add_palette", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_get_rgba, "gtk_color_chooser_get_rgba", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_get_use_alpha, "gtk_color_chooser_get_use_alpha", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_set_rgba, "gtk_color_chooser_set_rgba", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_set_use_alpha, "gtk_color_chooser_set_use_alpha", LIBRARY_GTK);

	// gtk.ColorChooserDialog

	Linker.link(gtk_color_chooser_dialog_get_type, "gtk_color_chooser_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_dialog_new, "gtk_color_chooser_dialog_new", LIBRARY_GTK);

	// gtk.ColorChooserWidget

	Linker.link(gtk_color_chooser_widget_get_type, "gtk_color_chooser_widget_get_type", LIBRARY_GTK);
	Linker.link(gtk_color_chooser_widget_new, "gtk_color_chooser_widget_new", LIBRARY_GTK);

	// gtk.ColumnView

	Linker.link(gtk_column_view_get_type, "gtk_column_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_column_view_new, "gtk_column_view_new", LIBRARY_GTK);
	Linker.link(gtk_column_view_append_column, "gtk_column_view_append_column", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_columns, "gtk_column_view_get_columns", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_enable_rubberband, "gtk_column_view_get_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_model, "gtk_column_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_reorderable, "gtk_column_view_get_reorderable", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_show_column_separators, "gtk_column_view_get_show_column_separators", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_show_row_separators, "gtk_column_view_get_show_row_separators", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_single_click_activate, "gtk_column_view_get_single_click_activate", LIBRARY_GTK);
	Linker.link(gtk_column_view_get_sorter, "gtk_column_view_get_sorter", LIBRARY_GTK);
	Linker.link(gtk_column_view_insert_column, "gtk_column_view_insert_column", LIBRARY_GTK);
	Linker.link(gtk_column_view_remove_column, "gtk_column_view_remove_column", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_enable_rubberband, "gtk_column_view_set_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_model, "gtk_column_view_set_model", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_reorderable, "gtk_column_view_set_reorderable", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_show_column_separators, "gtk_column_view_set_show_column_separators", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_show_row_separators, "gtk_column_view_set_show_row_separators", LIBRARY_GTK);
	Linker.link(gtk_column_view_set_single_click_activate, "gtk_column_view_set_single_click_activate", LIBRARY_GTK);
	Linker.link(gtk_column_view_sort_by_column, "gtk_column_view_sort_by_column", LIBRARY_GTK);

	// gtk.ColumnViewColumn

	Linker.link(gtk_column_view_column_get_type, "gtk_column_view_column_get_type", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_new, "gtk_column_view_column_new", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_column_view, "gtk_column_view_column_get_column_view", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_expand, "gtk_column_view_column_get_expand", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_factory, "gtk_column_view_column_get_factory", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_fixed_width, "gtk_column_view_column_get_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_header_menu, "gtk_column_view_column_get_header_menu", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_resizable, "gtk_column_view_column_get_resizable", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_sorter, "gtk_column_view_column_get_sorter", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_title, "gtk_column_view_column_get_title", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_get_visible, "gtk_column_view_column_get_visible", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_expand, "gtk_column_view_column_set_expand", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_factory, "gtk_column_view_column_set_factory", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_fixed_width, "gtk_column_view_column_set_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_header_menu, "gtk_column_view_column_set_header_menu", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_resizable, "gtk_column_view_column_set_resizable", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_sorter, "gtk_column_view_column_set_sorter", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_title, "gtk_column_view_column_set_title", LIBRARY_GTK);
	Linker.link(gtk_column_view_column_set_visible, "gtk_column_view_column_set_visible", LIBRARY_GTK);

	// gtk.ComboBox

	Linker.link(gtk_combo_box_get_type, "gtk_combo_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_combo_box_new, "gtk_combo_box_new", LIBRARY_GTK);
	Linker.link(gtk_combo_box_new_with_entry, "gtk_combo_box_new_with_entry", LIBRARY_GTK);
	Linker.link(gtk_combo_box_new_with_model, "gtk_combo_box_new_with_model", LIBRARY_GTK);
	Linker.link(gtk_combo_box_new_with_model_and_entry, "gtk_combo_box_new_with_model_and_entry", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_active, "gtk_combo_box_get_active", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_active_id, "gtk_combo_box_get_active_id", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_active_iter, "gtk_combo_box_get_active_iter", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_button_sensitivity, "gtk_combo_box_get_button_sensitivity", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_child, "gtk_combo_box_get_child", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_entry_text_column, "gtk_combo_box_get_entry_text_column", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_has_entry, "gtk_combo_box_get_has_entry", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_id_column, "gtk_combo_box_get_id_column", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_model, "gtk_combo_box_get_model", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_popup_fixed_width, "gtk_combo_box_get_popup_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_combo_box_get_row_separator_func, "gtk_combo_box_get_row_separator_func", LIBRARY_GTK);
	Linker.link(gtk_combo_box_popdown, "gtk_combo_box_popdown", LIBRARY_GTK);
	Linker.link(gtk_combo_box_popup, "gtk_combo_box_popup", LIBRARY_GTK);
	Linker.link(gtk_combo_box_popup_for_device, "gtk_combo_box_popup_for_device", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_active, "gtk_combo_box_set_active", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_active_id, "gtk_combo_box_set_active_id", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_active_iter, "gtk_combo_box_set_active_iter", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_button_sensitivity, "gtk_combo_box_set_button_sensitivity", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_child, "gtk_combo_box_set_child", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_entry_text_column, "gtk_combo_box_set_entry_text_column", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_id_column, "gtk_combo_box_set_id_column", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_model, "gtk_combo_box_set_model", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_popup_fixed_width, "gtk_combo_box_set_popup_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_combo_box_set_row_separator_func, "gtk_combo_box_set_row_separator_func", LIBRARY_GTK);

	// gtk.ComboBoxText

	Linker.link(gtk_combo_box_text_get_type, "gtk_combo_box_text_get_type", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_new, "gtk_combo_box_text_new", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_new_with_entry, "gtk_combo_box_text_new_with_entry", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_append, "gtk_combo_box_text_append", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_append_text, "gtk_combo_box_text_append_text", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_get_active_text, "gtk_combo_box_text_get_active_text", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_insert, "gtk_combo_box_text_insert", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_insert_text, "gtk_combo_box_text_insert_text", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_prepend, "gtk_combo_box_text_prepend", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_prepend_text, "gtk_combo_box_text_prepend_text", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_remove, "gtk_combo_box_text_remove", LIBRARY_GTK);
	Linker.link(gtk_combo_box_text_remove_all, "gtk_combo_box_text_remove_all", LIBRARY_GTK);

	// gtk.ConstantExpression

	Linker.link(gtk_constant_expression_get_type, "gtk_constant_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_constant_expression_new, "gtk_constant_expression_new", LIBRARY_GTK);
	Linker.link(gtk_constant_expression_new_for_value, "gtk_constant_expression_new_for_value", LIBRARY_GTK);
	Linker.link(gtk_constant_expression_get_value, "gtk_constant_expression_get_value", LIBRARY_GTK);

	// gtk.Constraint

	Linker.link(gtk_constraint_get_type, "gtk_constraint_get_type", LIBRARY_GTK);
	Linker.link(gtk_constraint_new, "gtk_constraint_new", LIBRARY_GTK);
	Linker.link(gtk_constraint_new_constant, "gtk_constraint_new_constant", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_constant, "gtk_constraint_get_constant", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_multiplier, "gtk_constraint_get_multiplier", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_relation, "gtk_constraint_get_relation", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_source, "gtk_constraint_get_source", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_source_attribute, "gtk_constraint_get_source_attribute", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_strength, "gtk_constraint_get_strength", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_target, "gtk_constraint_get_target", LIBRARY_GTK);
	Linker.link(gtk_constraint_get_target_attribute, "gtk_constraint_get_target_attribute", LIBRARY_GTK);
	Linker.link(gtk_constraint_is_attached, "gtk_constraint_is_attached", LIBRARY_GTK);
	Linker.link(gtk_constraint_is_constant, "gtk_constraint_is_constant", LIBRARY_GTK);
	Linker.link(gtk_constraint_is_required, "gtk_constraint_is_required", LIBRARY_GTK);

	// gtk.ConstraintGuide

	Linker.link(gtk_constraint_guide_get_type, "gtk_constraint_guide_get_type", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_new, "gtk_constraint_guide_new", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_get_max_size, "gtk_constraint_guide_get_max_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_get_min_size, "gtk_constraint_guide_get_min_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_get_name, "gtk_constraint_guide_get_name", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_get_nat_size, "gtk_constraint_guide_get_nat_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_get_strength, "gtk_constraint_guide_get_strength", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_set_max_size, "gtk_constraint_guide_set_max_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_set_min_size, "gtk_constraint_guide_set_min_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_set_name, "gtk_constraint_guide_set_name", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_set_nat_size, "gtk_constraint_guide_set_nat_size", LIBRARY_GTK);
	Linker.link(gtk_constraint_guide_set_strength, "gtk_constraint_guide_set_strength", LIBRARY_GTK);

	// gtk.ConstraintLayout

	Linker.link(gtk_constraint_layout_get_type, "gtk_constraint_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_new, "gtk_constraint_layout_new", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_add_constraint, "gtk_constraint_layout_add_constraint", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_add_constraints_from_description, "gtk_constraint_layout_add_constraints_from_description", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_add_constraints_from_descriptionv, "gtk_constraint_layout_add_constraints_from_descriptionv", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_add_guide, "gtk_constraint_layout_add_guide", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_observe_constraints, "gtk_constraint_layout_observe_constraints", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_observe_guides, "gtk_constraint_layout_observe_guides", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_remove_all_constraints, "gtk_constraint_layout_remove_all_constraints", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_remove_constraint, "gtk_constraint_layout_remove_constraint", LIBRARY_GTK);
	Linker.link(gtk_constraint_layout_remove_guide, "gtk_constraint_layout_remove_guide", LIBRARY_GTK);

	// gtk.ConstraintLayoutChild

	Linker.link(gtk_constraint_layout_child_get_type, "gtk_constraint_layout_child_get_type", LIBRARY_GTK);

	// gtk.ConstraintTarget

	Linker.link(gtk_constraint_target_get_type, "gtk_constraint_target_get_type", LIBRARY_GTK);

	// gtk.CssProvider

	Linker.link(gtk_css_provider_get_type, "gtk_css_provider_get_type", LIBRARY_GTK);
	Linker.link(gtk_css_provider_new, "gtk_css_provider_new", LIBRARY_GTK);
	Linker.link(gtk_css_provider_load_from_data, "gtk_css_provider_load_from_data", LIBRARY_GTK);
	Linker.link(gtk_css_provider_load_from_file, "gtk_css_provider_load_from_file", LIBRARY_GTK);
	Linker.link(gtk_css_provider_load_from_path, "gtk_css_provider_load_from_path", LIBRARY_GTK);
	Linker.link(gtk_css_provider_load_from_resource, "gtk_css_provider_load_from_resource", LIBRARY_GTK);
	Linker.link(gtk_css_provider_load_named, "gtk_css_provider_load_named", LIBRARY_GTK);
	Linker.link(gtk_css_provider_to_string, "gtk_css_provider_to_string", LIBRARY_GTK);

	// gtk.CssSection

	Linker.link(gtk_css_section_get_type, "gtk_css_section_get_type", LIBRARY_GTK);
	Linker.link(gtk_css_section_new, "gtk_css_section_new", LIBRARY_GTK);
	Linker.link(gtk_css_section_get_end_location, "gtk_css_section_get_end_location", LIBRARY_GTK);
	Linker.link(gtk_css_section_get_file, "gtk_css_section_get_file", LIBRARY_GTK);
	Linker.link(gtk_css_section_get_parent, "gtk_css_section_get_parent", LIBRARY_GTK);
	Linker.link(gtk_css_section_get_start_location, "gtk_css_section_get_start_location", LIBRARY_GTK);
	Linker.link(gtk_css_section_print, "gtk_css_section_print", LIBRARY_GTK);
	Linker.link(gtk_css_section_ref, "gtk_css_section_ref", LIBRARY_GTK);
	Linker.link(gtk_css_section_to_string, "gtk_css_section_to_string", LIBRARY_GTK);
	Linker.link(gtk_css_section_unref, "gtk_css_section_unref", LIBRARY_GTK);

	// gtk.CustomFilter

	Linker.link(gtk_custom_filter_get_type, "gtk_custom_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_custom_filter_new, "gtk_custom_filter_new", LIBRARY_GTK);
	Linker.link(gtk_custom_filter_set_filter_func, "gtk_custom_filter_set_filter_func", LIBRARY_GTK);

	// gtk.CustomLayout

	Linker.link(gtk_custom_layout_get_type, "gtk_custom_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_custom_layout_new, "gtk_custom_layout_new", LIBRARY_GTK);

	// gtk.CustomSorter

	Linker.link(gtk_custom_sorter_get_type, "gtk_custom_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_custom_sorter_new, "gtk_custom_sorter_new", LIBRARY_GTK);
	Linker.link(gtk_custom_sorter_set_sort_func, "gtk_custom_sorter_set_sort_func", LIBRARY_GTK);

	// gtk.Dialog

	Linker.link(gtk_dialog_get_type, "gtk_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_dialog_new, "gtk_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_dialog_new_with_buttons, "gtk_dialog_new_with_buttons", LIBRARY_GTK);
	Linker.link(gtk_dialog_add_action_widget, "gtk_dialog_add_action_widget", LIBRARY_GTK);
	Linker.link(gtk_dialog_add_button, "gtk_dialog_add_button", LIBRARY_GTK);
	Linker.link(gtk_dialog_add_buttons, "gtk_dialog_add_buttons", LIBRARY_GTK);
	Linker.link(gtk_dialog_get_content_area, "gtk_dialog_get_content_area", LIBRARY_GTK);
	Linker.link(gtk_dialog_get_header_bar, "gtk_dialog_get_header_bar", LIBRARY_GTK);
	Linker.link(gtk_dialog_get_response_for_widget, "gtk_dialog_get_response_for_widget", LIBRARY_GTK);
	Linker.link(gtk_dialog_get_widget_for_response, "gtk_dialog_get_widget_for_response", LIBRARY_GTK);
	Linker.link(gtk_dialog_response, "gtk_dialog_response", LIBRARY_GTK);
	Linker.link(gtk_dialog_set_default_response, "gtk_dialog_set_default_response", LIBRARY_GTK);
	Linker.link(gtk_dialog_set_response_sensitive, "gtk_dialog_set_response_sensitive", LIBRARY_GTK);

	// gtk.DirectoryList

	Linker.link(gtk_directory_list_get_type, "gtk_directory_list_get_type", LIBRARY_GTK);
	Linker.link(gtk_directory_list_new, "gtk_directory_list_new", LIBRARY_GTK);
	Linker.link(gtk_directory_list_get_attributes, "gtk_directory_list_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_directory_list_get_error, "gtk_directory_list_get_error", LIBRARY_GTK);
	Linker.link(gtk_directory_list_get_file, "gtk_directory_list_get_file", LIBRARY_GTK);
	Linker.link(gtk_directory_list_get_io_priority, "gtk_directory_list_get_io_priority", LIBRARY_GTK);
	Linker.link(gtk_directory_list_get_monitored, "gtk_directory_list_get_monitored", LIBRARY_GTK);
	Linker.link(gtk_directory_list_is_loading, "gtk_directory_list_is_loading", LIBRARY_GTK);
	Linker.link(gtk_directory_list_set_attributes, "gtk_directory_list_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_directory_list_set_file, "gtk_directory_list_set_file", LIBRARY_GTK);
	Linker.link(gtk_directory_list_set_io_priority, "gtk_directory_list_set_io_priority", LIBRARY_GTK);
	Linker.link(gtk_directory_list_set_monitored, "gtk_directory_list_set_monitored", LIBRARY_GTK);

	// gtk.DragIcon

	Linker.link(gtk_drag_icon_get_type, "gtk_drag_icon_get_type", LIBRARY_GTK);
	Linker.link(gtk_drag_icon_create_widget_for_value, "gtk_drag_icon_create_widget_for_value", LIBRARY_GTK);
	Linker.link(gtk_drag_icon_get_for_drag, "gtk_drag_icon_get_for_drag", LIBRARY_GTK);
	Linker.link(gtk_drag_icon_set_from_paintable, "gtk_drag_icon_set_from_paintable", LIBRARY_GTK);
	Linker.link(gtk_drag_icon_get_child, "gtk_drag_icon_get_child", LIBRARY_GTK);
	Linker.link(gtk_drag_icon_set_child, "gtk_drag_icon_set_child", LIBRARY_GTK);

	// gtk.DragSource

	Linker.link(gtk_drag_source_get_type, "gtk_drag_source_get_type", LIBRARY_GTK);
	Linker.link(gtk_drag_source_new, "gtk_drag_source_new", LIBRARY_GTK);
	Linker.link(gtk_drag_source_drag_cancel, "gtk_drag_source_drag_cancel", LIBRARY_GTK);
	Linker.link(gtk_drag_source_get_actions, "gtk_drag_source_get_actions", LIBRARY_GTK);
	Linker.link(gtk_drag_source_get_content, "gtk_drag_source_get_content", LIBRARY_GTK);
	Linker.link(gtk_drag_source_get_drag, "gtk_drag_source_get_drag", LIBRARY_GTK);
	Linker.link(gtk_drag_source_set_actions, "gtk_drag_source_set_actions", LIBRARY_GTK);
	Linker.link(gtk_drag_source_set_content, "gtk_drag_source_set_content", LIBRARY_GTK);
	Linker.link(gtk_drag_source_set_icon, "gtk_drag_source_set_icon", LIBRARY_GTK);

	// gtk.DrawingArea

	Linker.link(gtk_drawing_area_get_type, "gtk_drawing_area_get_type", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_new, "gtk_drawing_area_new", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_get_content_height, "gtk_drawing_area_get_content_height", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_get_content_width, "gtk_drawing_area_get_content_width", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_set_content_height, "gtk_drawing_area_set_content_height", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_set_content_width, "gtk_drawing_area_set_content_width", LIBRARY_GTK);
	Linker.link(gtk_drawing_area_set_draw_func, "gtk_drawing_area_set_draw_func", LIBRARY_GTK);

	// gtk.DropControllerMotion

	Linker.link(gtk_drop_controller_motion_get_type, "gtk_drop_controller_motion_get_type", LIBRARY_GTK);
	Linker.link(gtk_drop_controller_motion_new, "gtk_drop_controller_motion_new", LIBRARY_GTK);
	Linker.link(gtk_drop_controller_motion_contains_pointer, "gtk_drop_controller_motion_contains_pointer", LIBRARY_GTK);
	Linker.link(gtk_drop_controller_motion_get_drop, "gtk_drop_controller_motion_get_drop", LIBRARY_GTK);
	Linker.link(gtk_drop_controller_motion_is_pointer, "gtk_drop_controller_motion_is_pointer", LIBRARY_GTK);

	// gtk.DropDown

	Linker.link(gtk_drop_down_get_type, "gtk_drop_down_get_type", LIBRARY_GTK);
	Linker.link(gtk_drop_down_new, "gtk_drop_down_new", LIBRARY_GTK);
	Linker.link(gtk_drop_down_new_from_strings, "gtk_drop_down_new_from_strings", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_enable_search, "gtk_drop_down_get_enable_search", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_expression, "gtk_drop_down_get_expression", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_factory, "gtk_drop_down_get_factory", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_list_factory, "gtk_drop_down_get_list_factory", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_model, "gtk_drop_down_get_model", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_selected, "gtk_drop_down_get_selected", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_selected_item, "gtk_drop_down_get_selected_item", LIBRARY_GTK);
	Linker.link(gtk_drop_down_get_show_arrow, "gtk_drop_down_get_show_arrow", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_enable_search, "gtk_drop_down_set_enable_search", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_expression, "gtk_drop_down_set_expression", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_factory, "gtk_drop_down_set_factory", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_list_factory, "gtk_drop_down_set_list_factory", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_model, "gtk_drop_down_set_model", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_selected, "gtk_drop_down_set_selected", LIBRARY_GTK);
	Linker.link(gtk_drop_down_set_show_arrow, "gtk_drop_down_set_show_arrow", LIBRARY_GTK);

	// gtk.DropTarget

	Linker.link(gtk_drop_target_get_type, "gtk_drop_target_get_type", LIBRARY_GTK);
	Linker.link(gtk_drop_target_new, "gtk_drop_target_new", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_actions, "gtk_drop_target_get_actions", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_current_drop, "gtk_drop_target_get_current_drop", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_drop, "gtk_drop_target_get_drop", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_formats, "gtk_drop_target_get_formats", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_gtypes, "gtk_drop_target_get_gtypes", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_preload, "gtk_drop_target_get_preload", LIBRARY_GTK);
	Linker.link(gtk_drop_target_get_value, "gtk_drop_target_get_value", LIBRARY_GTK);
	Linker.link(gtk_drop_target_reject, "gtk_drop_target_reject", LIBRARY_GTK);
	Linker.link(gtk_drop_target_set_actions, "gtk_drop_target_set_actions", LIBRARY_GTK);
	Linker.link(gtk_drop_target_set_gtypes, "gtk_drop_target_set_gtypes", LIBRARY_GTK);
	Linker.link(gtk_drop_target_set_preload, "gtk_drop_target_set_preload", LIBRARY_GTK);

	// gtk.DropTargetAsync

	Linker.link(gtk_drop_target_async_get_type, "gtk_drop_target_async_get_type", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_new, "gtk_drop_target_async_new", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_get_actions, "gtk_drop_target_async_get_actions", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_get_formats, "gtk_drop_target_async_get_formats", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_reject_drop, "gtk_drop_target_async_reject_drop", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_set_actions, "gtk_drop_target_async_set_actions", LIBRARY_GTK);
	Linker.link(gtk_drop_target_async_set_formats, "gtk_drop_target_async_set_formats", LIBRARY_GTK);

	// gtk.Editable

	Linker.link(gtk_editable_get_type, "gtk_editable_get_type", LIBRARY_GTK);
	Linker.link(gtk_editable_delegate_get_property, "gtk_editable_delegate_get_property", LIBRARY_GTK);
	Linker.link(gtk_editable_delegate_set_property, "gtk_editable_delegate_set_property", LIBRARY_GTK);
	Linker.link(gtk_editable_install_properties, "gtk_editable_install_properties", LIBRARY_GTK);
	Linker.link(gtk_editable_delete_selection, "gtk_editable_delete_selection", LIBRARY_GTK);
	Linker.link(gtk_editable_delete_text, "gtk_editable_delete_text", LIBRARY_GTK);
	Linker.link(gtk_editable_finish_delegate, "gtk_editable_finish_delegate", LIBRARY_GTK);
	Linker.link(gtk_editable_get_alignment, "gtk_editable_get_alignment", LIBRARY_GTK);
	Linker.link(gtk_editable_get_chars, "gtk_editable_get_chars", LIBRARY_GTK);
	Linker.link(gtk_editable_get_delegate, "gtk_editable_get_delegate", LIBRARY_GTK);
	Linker.link(gtk_editable_get_editable, "gtk_editable_get_editable", LIBRARY_GTK);
	Linker.link(gtk_editable_get_enable_undo, "gtk_editable_get_enable_undo", LIBRARY_GTK);
	Linker.link(gtk_editable_get_max_width_chars, "gtk_editable_get_max_width_chars", LIBRARY_GTK);
	Linker.link(gtk_editable_get_position, "gtk_editable_get_position", LIBRARY_GTK);
	Linker.link(gtk_editable_get_selection_bounds, "gtk_editable_get_selection_bounds", LIBRARY_GTK);
	Linker.link(gtk_editable_get_text, "gtk_editable_get_text", LIBRARY_GTK);
	Linker.link(gtk_editable_get_width_chars, "gtk_editable_get_width_chars", LIBRARY_GTK);
	Linker.link(gtk_editable_init_delegate, "gtk_editable_init_delegate", LIBRARY_GTK);
	Linker.link(gtk_editable_insert_text, "gtk_editable_insert_text", LIBRARY_GTK);
	Linker.link(gtk_editable_select_region, "gtk_editable_select_region", LIBRARY_GTK);
	Linker.link(gtk_editable_set_alignment, "gtk_editable_set_alignment", LIBRARY_GTK);
	Linker.link(gtk_editable_set_editable, "gtk_editable_set_editable", LIBRARY_GTK);
	Linker.link(gtk_editable_set_enable_undo, "gtk_editable_set_enable_undo", LIBRARY_GTK);
	Linker.link(gtk_editable_set_max_width_chars, "gtk_editable_set_max_width_chars", LIBRARY_GTK);
	Linker.link(gtk_editable_set_position, "gtk_editable_set_position", LIBRARY_GTK);
	Linker.link(gtk_editable_set_text, "gtk_editable_set_text", LIBRARY_GTK);
	Linker.link(gtk_editable_set_width_chars, "gtk_editable_set_width_chars", LIBRARY_GTK);

	// gtk.EditableLabel

	Linker.link(gtk_editable_label_get_type, "gtk_editable_label_get_type", LIBRARY_GTK);
	Linker.link(gtk_editable_label_new, "gtk_editable_label_new", LIBRARY_GTK);
	Linker.link(gtk_editable_label_get_editing, "gtk_editable_label_get_editing", LIBRARY_GTK);
	Linker.link(gtk_editable_label_start_editing, "gtk_editable_label_start_editing", LIBRARY_GTK);
	Linker.link(gtk_editable_label_stop_editing, "gtk_editable_label_stop_editing", LIBRARY_GTK);

	// gtk.EmojiChooser

	Linker.link(gtk_emoji_chooser_get_type, "gtk_emoji_chooser_get_type", LIBRARY_GTK);
	Linker.link(gtk_emoji_chooser_new, "gtk_emoji_chooser_new", LIBRARY_GTK);

	// gtk.Entry

	Linker.link(gtk_entry_get_type, "gtk_entry_get_type", LIBRARY_GTK);
	Linker.link(gtk_entry_new, "gtk_entry_new", LIBRARY_GTK);
	Linker.link(gtk_entry_new_with_buffer, "gtk_entry_new_with_buffer", LIBRARY_GTK);
	Linker.link(gtk_entry_get_activates_default, "gtk_entry_get_activates_default", LIBRARY_GTK);
	Linker.link(gtk_entry_get_alignment, "gtk_entry_get_alignment", LIBRARY_GTK);
	Linker.link(gtk_entry_get_attributes, "gtk_entry_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_entry_get_buffer, "gtk_entry_get_buffer", LIBRARY_GTK);
	Linker.link(gtk_entry_get_completion, "gtk_entry_get_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_get_current_icon_drag_source, "gtk_entry_get_current_icon_drag_source", LIBRARY_GTK);
	Linker.link(gtk_entry_get_extra_menu, "gtk_entry_get_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_entry_get_has_frame, "gtk_entry_get_has_frame", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_activatable, "gtk_entry_get_icon_activatable", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_area, "gtk_entry_get_icon_area", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_at_pos, "gtk_entry_get_icon_at_pos", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_gicon, "gtk_entry_get_icon_gicon", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_name, "gtk_entry_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_paintable, "gtk_entry_get_icon_paintable", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_sensitive, "gtk_entry_get_icon_sensitive", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_storage_type, "gtk_entry_get_icon_storage_type", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_tooltip_markup, "gtk_entry_get_icon_tooltip_markup", LIBRARY_GTK);
	Linker.link(gtk_entry_get_icon_tooltip_text, "gtk_entry_get_icon_tooltip_text", LIBRARY_GTK);
	Linker.link(gtk_entry_get_input_hints, "gtk_entry_get_input_hints", LIBRARY_GTK);
	Linker.link(gtk_entry_get_input_purpose, "gtk_entry_get_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_entry_get_invisible_char, "gtk_entry_get_invisible_char", LIBRARY_GTK);
	Linker.link(gtk_entry_get_max_length, "gtk_entry_get_max_length", LIBRARY_GTK);
	Linker.link(gtk_entry_get_overwrite_mode, "gtk_entry_get_overwrite_mode", LIBRARY_GTK);
	Linker.link(gtk_entry_get_placeholder_text, "gtk_entry_get_placeholder_text", LIBRARY_GTK);
	Linker.link(gtk_entry_get_progress_fraction, "gtk_entry_get_progress_fraction", LIBRARY_GTK);
	Linker.link(gtk_entry_get_progress_pulse_step, "gtk_entry_get_progress_pulse_step", LIBRARY_GTK);
	Linker.link(gtk_entry_get_tabs, "gtk_entry_get_tabs", LIBRARY_GTK);
	Linker.link(gtk_entry_get_text_length, "gtk_entry_get_text_length", LIBRARY_GTK);
	Linker.link(gtk_entry_get_visibility, "gtk_entry_get_visibility", LIBRARY_GTK);
	Linker.link(gtk_entry_grab_focus_without_selecting, "gtk_entry_grab_focus_without_selecting", LIBRARY_GTK);
	Linker.link(gtk_entry_progress_pulse, "gtk_entry_progress_pulse", LIBRARY_GTK);
	Linker.link(gtk_entry_reset_im_context, "gtk_entry_reset_im_context", LIBRARY_GTK);
	Linker.link(gtk_entry_set_activates_default, "gtk_entry_set_activates_default", LIBRARY_GTK);
	Linker.link(gtk_entry_set_alignment, "gtk_entry_set_alignment", LIBRARY_GTK);
	Linker.link(gtk_entry_set_attributes, "gtk_entry_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_entry_set_buffer, "gtk_entry_set_buffer", LIBRARY_GTK);
	Linker.link(gtk_entry_set_completion, "gtk_entry_set_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_set_extra_menu, "gtk_entry_set_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_entry_set_has_frame, "gtk_entry_set_has_frame", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_activatable, "gtk_entry_set_icon_activatable", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_drag_source, "gtk_entry_set_icon_drag_source", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_from_gicon, "gtk_entry_set_icon_from_gicon", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_from_icon_name, "gtk_entry_set_icon_from_icon_name", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_from_paintable, "gtk_entry_set_icon_from_paintable", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_sensitive, "gtk_entry_set_icon_sensitive", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_tooltip_markup, "gtk_entry_set_icon_tooltip_markup", LIBRARY_GTK);
	Linker.link(gtk_entry_set_icon_tooltip_text, "gtk_entry_set_icon_tooltip_text", LIBRARY_GTK);
	Linker.link(gtk_entry_set_input_hints, "gtk_entry_set_input_hints", LIBRARY_GTK);
	Linker.link(gtk_entry_set_input_purpose, "gtk_entry_set_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_entry_set_invisible_char, "gtk_entry_set_invisible_char", LIBRARY_GTK);
	Linker.link(gtk_entry_set_max_length, "gtk_entry_set_max_length", LIBRARY_GTK);
	Linker.link(gtk_entry_set_overwrite_mode, "gtk_entry_set_overwrite_mode", LIBRARY_GTK);
	Linker.link(gtk_entry_set_placeholder_text, "gtk_entry_set_placeholder_text", LIBRARY_GTK);
	Linker.link(gtk_entry_set_progress_fraction, "gtk_entry_set_progress_fraction", LIBRARY_GTK);
	Linker.link(gtk_entry_set_progress_pulse_step, "gtk_entry_set_progress_pulse_step", LIBRARY_GTK);
	Linker.link(gtk_entry_set_tabs, "gtk_entry_set_tabs", LIBRARY_GTK);
	Linker.link(gtk_entry_set_visibility, "gtk_entry_set_visibility", LIBRARY_GTK);
	Linker.link(gtk_entry_unset_invisible_char, "gtk_entry_unset_invisible_char", LIBRARY_GTK);

	// gtk.EntryBuffer

	Linker.link(gtk_entry_buffer_get_type, "gtk_entry_buffer_get_type", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_new, "gtk_entry_buffer_new", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_delete_text, "gtk_entry_buffer_delete_text", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_emit_deleted_text, "gtk_entry_buffer_emit_deleted_text", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_emit_inserted_text, "gtk_entry_buffer_emit_inserted_text", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_get_bytes, "gtk_entry_buffer_get_bytes", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_get_length, "gtk_entry_buffer_get_length", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_get_max_length, "gtk_entry_buffer_get_max_length", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_get_text, "gtk_entry_buffer_get_text", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_insert_text, "gtk_entry_buffer_insert_text", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_set_max_length, "gtk_entry_buffer_set_max_length", LIBRARY_GTK);
	Linker.link(gtk_entry_buffer_set_text, "gtk_entry_buffer_set_text", LIBRARY_GTK);

	// gtk.EntryCompletion

	Linker.link(gtk_entry_completion_get_type, "gtk_entry_completion_get_type", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_new, "gtk_entry_completion_new", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_new_with_area, "gtk_entry_completion_new_with_area", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_complete, "gtk_entry_completion_complete", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_compute_prefix, "gtk_entry_completion_compute_prefix", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_completion_prefix, "gtk_entry_completion_get_completion_prefix", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_entry, "gtk_entry_completion_get_entry", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_inline_completion, "gtk_entry_completion_get_inline_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_inline_selection, "gtk_entry_completion_get_inline_selection", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_minimum_key_length, "gtk_entry_completion_get_minimum_key_length", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_model, "gtk_entry_completion_get_model", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_popup_completion, "gtk_entry_completion_get_popup_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_popup_set_width, "gtk_entry_completion_get_popup_set_width", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_popup_single_match, "gtk_entry_completion_get_popup_single_match", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_get_text_column, "gtk_entry_completion_get_text_column", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_insert_prefix, "gtk_entry_completion_insert_prefix", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_inline_completion, "gtk_entry_completion_set_inline_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_inline_selection, "gtk_entry_completion_set_inline_selection", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_match_func, "gtk_entry_completion_set_match_func", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_minimum_key_length, "gtk_entry_completion_set_minimum_key_length", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_model, "gtk_entry_completion_set_model", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_popup_completion, "gtk_entry_completion_set_popup_completion", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_popup_set_width, "gtk_entry_completion_set_popup_set_width", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_popup_single_match, "gtk_entry_completion_set_popup_single_match", LIBRARY_GTK);
	Linker.link(gtk_entry_completion_set_text_column, "gtk_entry_completion_set_text_column", LIBRARY_GTK);

	// gtk.EventController

	Linker.link(gtk_event_controller_get_type, "gtk_event_controller_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_current_event, "gtk_event_controller_get_current_event", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_current_event_device, "gtk_event_controller_get_current_event_device", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_current_event_state, "gtk_event_controller_get_current_event_state", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_current_event_time, "gtk_event_controller_get_current_event_time", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_name, "gtk_event_controller_get_name", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_propagation_limit, "gtk_event_controller_get_propagation_limit", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_propagation_phase, "gtk_event_controller_get_propagation_phase", LIBRARY_GTK);
	Linker.link(gtk_event_controller_get_widget, "gtk_event_controller_get_widget", LIBRARY_GTK);
	Linker.link(gtk_event_controller_reset, "gtk_event_controller_reset", LIBRARY_GTK);
	Linker.link(gtk_event_controller_set_name, "gtk_event_controller_set_name", LIBRARY_GTK);
	Linker.link(gtk_event_controller_set_propagation_limit, "gtk_event_controller_set_propagation_limit", LIBRARY_GTK);
	Linker.link(gtk_event_controller_set_propagation_phase, "gtk_event_controller_set_propagation_phase", LIBRARY_GTK);

	// gtk.EventControllerFocus

	Linker.link(gtk_event_controller_focus_get_type, "gtk_event_controller_focus_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_focus_new, "gtk_event_controller_focus_new", LIBRARY_GTK);
	Linker.link(gtk_event_controller_focus_contains_focus, "gtk_event_controller_focus_contains_focus", LIBRARY_GTK);
	Linker.link(gtk_event_controller_focus_is_focus, "gtk_event_controller_focus_is_focus", LIBRARY_GTK);

	// gtk.EventControllerKey

	Linker.link(gtk_event_controller_key_get_type, "gtk_event_controller_key_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_key_new, "gtk_event_controller_key_new", LIBRARY_GTK);
	Linker.link(gtk_event_controller_key_forward, "gtk_event_controller_key_forward", LIBRARY_GTK);
	Linker.link(gtk_event_controller_key_get_group, "gtk_event_controller_key_get_group", LIBRARY_GTK);
	Linker.link(gtk_event_controller_key_get_im_context, "gtk_event_controller_key_get_im_context", LIBRARY_GTK);
	Linker.link(gtk_event_controller_key_set_im_context, "gtk_event_controller_key_set_im_context", LIBRARY_GTK);

	// gtk.EventControllerLegacy

	Linker.link(gtk_event_controller_legacy_get_type, "gtk_event_controller_legacy_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_legacy_new, "gtk_event_controller_legacy_new", LIBRARY_GTK);

	// gtk.EventControllerMotion

	Linker.link(gtk_event_controller_motion_get_type, "gtk_event_controller_motion_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_motion_new, "gtk_event_controller_motion_new", LIBRARY_GTK);
	Linker.link(gtk_event_controller_motion_contains_pointer, "gtk_event_controller_motion_contains_pointer", LIBRARY_GTK);
	Linker.link(gtk_event_controller_motion_is_pointer, "gtk_event_controller_motion_is_pointer", LIBRARY_GTK);

	// gtk.EventControllerScroll

	Linker.link(gtk_event_controller_scroll_get_type, "gtk_event_controller_scroll_get_type", LIBRARY_GTK);
	Linker.link(gtk_event_controller_scroll_new, "gtk_event_controller_scroll_new", LIBRARY_GTK);
	Linker.link(gtk_event_controller_scroll_get_flags, "gtk_event_controller_scroll_get_flags", LIBRARY_GTK);
	Linker.link(gtk_event_controller_scroll_set_flags, "gtk_event_controller_scroll_set_flags", LIBRARY_GTK);

	// gtk.EveryFilter

	Linker.link(gtk_every_filter_get_type, "gtk_every_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_every_filter_new, "gtk_every_filter_new", LIBRARY_GTK);

	// gtk.Expander

	Linker.link(gtk_expander_get_type, "gtk_expander_get_type", LIBRARY_GTK);
	Linker.link(gtk_expander_new, "gtk_expander_new", LIBRARY_GTK);
	Linker.link(gtk_expander_new_with_mnemonic, "gtk_expander_new_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_expander_get_child, "gtk_expander_get_child", LIBRARY_GTK);
	Linker.link(gtk_expander_get_expanded, "gtk_expander_get_expanded", LIBRARY_GTK);
	Linker.link(gtk_expander_get_label, "gtk_expander_get_label", LIBRARY_GTK);
	Linker.link(gtk_expander_get_label_widget, "gtk_expander_get_label_widget", LIBRARY_GTK);
	Linker.link(gtk_expander_get_resize_toplevel, "gtk_expander_get_resize_toplevel", LIBRARY_GTK);
	Linker.link(gtk_expander_get_use_markup, "gtk_expander_get_use_markup", LIBRARY_GTK);
	Linker.link(gtk_expander_get_use_underline, "gtk_expander_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_expander_set_child, "gtk_expander_set_child", LIBRARY_GTK);
	Linker.link(gtk_expander_set_expanded, "gtk_expander_set_expanded", LIBRARY_GTK);
	Linker.link(gtk_expander_set_label, "gtk_expander_set_label", LIBRARY_GTK);
	Linker.link(gtk_expander_set_label_widget, "gtk_expander_set_label_widget", LIBRARY_GTK);
	Linker.link(gtk_expander_set_resize_toplevel, "gtk_expander_set_resize_toplevel", LIBRARY_GTK);
	Linker.link(gtk_expander_set_use_markup, "gtk_expander_set_use_markup", LIBRARY_GTK);
	Linker.link(gtk_expander_set_use_underline, "gtk_expander_set_use_underline", LIBRARY_GTK);

	// gtk.Expression

	Linker.link(gtk_expression_get_type, "gtk_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_expression_bind, "gtk_expression_bind", LIBRARY_GTK);
	Linker.link(gtk_expression_evaluate, "gtk_expression_evaluate", LIBRARY_GTK);
	Linker.link(gtk_expression_get_value_type, "gtk_expression_get_value_type", LIBRARY_GTK);
	Linker.link(gtk_expression_is_static, "gtk_expression_is_static", LIBRARY_GTK);
	Linker.link(gtk_expression_ref, "gtk_expression_ref", LIBRARY_GTK);
	Linker.link(gtk_expression_unref, "gtk_expression_unref", LIBRARY_GTK);
	Linker.link(gtk_expression_watch, "gtk_expression_watch", LIBRARY_GTK);

	// gtk.ExpressionWatch

	Linker.link(gtk_expression_watch_get_type, "gtk_expression_watch_get_type", LIBRARY_GTK);
	Linker.link(gtk_expression_watch_evaluate, "gtk_expression_watch_evaluate", LIBRARY_GTK);
	Linker.link(gtk_expression_watch_ref, "gtk_expression_watch_ref", LIBRARY_GTK);
	Linker.link(gtk_expression_watch_unref, "gtk_expression_watch_unref", LIBRARY_GTK);
	Linker.link(gtk_expression_watch_unwatch, "gtk_expression_watch_unwatch", LIBRARY_GTK);

	// gtk.FileChooser

	Linker.link(gtk_file_chooser_get_type, "gtk_file_chooser_get_type", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_add_choice, "gtk_file_chooser_add_choice", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_add_filter, "gtk_file_chooser_add_filter", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_add_shortcut_folder, "gtk_file_chooser_add_shortcut_folder", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_action, "gtk_file_chooser_get_action", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_choice, "gtk_file_chooser_get_choice", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_create_folders, "gtk_file_chooser_get_create_folders", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_current_folder, "gtk_file_chooser_get_current_folder", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_current_name, "gtk_file_chooser_get_current_name", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_file, "gtk_file_chooser_get_file", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_files, "gtk_file_chooser_get_files", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_filter, "gtk_file_chooser_get_filter", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_filters, "gtk_file_chooser_get_filters", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_select_multiple, "gtk_file_chooser_get_select_multiple", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_get_shortcut_folders, "gtk_file_chooser_get_shortcut_folders", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_remove_choice, "gtk_file_chooser_remove_choice", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_remove_filter, "gtk_file_chooser_remove_filter", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_remove_shortcut_folder, "gtk_file_chooser_remove_shortcut_folder", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_action, "gtk_file_chooser_set_action", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_choice, "gtk_file_chooser_set_choice", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_create_folders, "gtk_file_chooser_set_create_folders", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_current_folder, "gtk_file_chooser_set_current_folder", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_current_name, "gtk_file_chooser_set_current_name", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_file, "gtk_file_chooser_set_file", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_filter, "gtk_file_chooser_set_filter", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_set_select_multiple, "gtk_file_chooser_set_select_multiple", LIBRARY_GTK);

	// gtk.FileChooserDialog

	Linker.link(gtk_file_chooser_dialog_get_type, "gtk_file_chooser_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_dialog_new, "gtk_file_chooser_dialog_new", LIBRARY_GTK);

	// gtk.FileChooserNative

	Linker.link(gtk_file_chooser_native_get_type, "gtk_file_chooser_native_get_type", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_native_new, "gtk_file_chooser_native_new", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_native_get_accept_label, "gtk_file_chooser_native_get_accept_label", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_native_get_cancel_label, "gtk_file_chooser_native_get_cancel_label", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_native_set_accept_label, "gtk_file_chooser_native_set_accept_label", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_native_set_cancel_label, "gtk_file_chooser_native_set_cancel_label", LIBRARY_GTK);

	// gtk.FileChooserWidget

	Linker.link(gtk_file_chooser_widget_get_type, "gtk_file_chooser_widget_get_type", LIBRARY_GTK);
	Linker.link(gtk_file_chooser_widget_new, "gtk_file_chooser_widget_new", LIBRARY_GTK);

	// gtk.FileFilter

	Linker.link(gtk_file_filter_get_type, "gtk_file_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_file_filter_new, "gtk_file_filter_new", LIBRARY_GTK);
	Linker.link(gtk_file_filter_new_from_gvariant, "gtk_file_filter_new_from_gvariant", LIBRARY_GTK);
	Linker.link(gtk_file_filter_add_mime_type, "gtk_file_filter_add_mime_type", LIBRARY_GTK);
	Linker.link(gtk_file_filter_add_pattern, "gtk_file_filter_add_pattern", LIBRARY_GTK);
	Linker.link(gtk_file_filter_add_pixbuf_formats, "gtk_file_filter_add_pixbuf_formats", LIBRARY_GTK);
	Linker.link(gtk_file_filter_add_suffix, "gtk_file_filter_add_suffix", LIBRARY_GTK);
	Linker.link(gtk_file_filter_get_attributes, "gtk_file_filter_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_file_filter_get_name, "gtk_file_filter_get_name", LIBRARY_GTK);
	Linker.link(gtk_file_filter_set_name, "gtk_file_filter_set_name", LIBRARY_GTK);
	Linker.link(gtk_file_filter_to_gvariant, "gtk_file_filter_to_gvariant", LIBRARY_GTK);

	// gtk.Filter

	Linker.link(gtk_filter_get_type, "gtk_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_filter_changed, "gtk_filter_changed", LIBRARY_GTK);
	Linker.link(gtk_filter_get_strictness, "gtk_filter_get_strictness", LIBRARY_GTK);
	Linker.link(gtk_filter_match, "gtk_filter_match", LIBRARY_GTK);

	// gtk.FilterListModel

	Linker.link(gtk_filter_list_model_get_type, "gtk_filter_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_new, "gtk_filter_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_get_filter, "gtk_filter_list_model_get_filter", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_get_incremental, "gtk_filter_list_model_get_incremental", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_get_model, "gtk_filter_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_get_pending, "gtk_filter_list_model_get_pending", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_set_filter, "gtk_filter_list_model_set_filter", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_set_incremental, "gtk_filter_list_model_set_incremental", LIBRARY_GTK);
	Linker.link(gtk_filter_list_model_set_model, "gtk_filter_list_model_set_model", LIBRARY_GTK);

	// gtk.Fixed

	Linker.link(gtk_fixed_get_type, "gtk_fixed_get_type", LIBRARY_GTK);
	Linker.link(gtk_fixed_new, "gtk_fixed_new", LIBRARY_GTK);
	Linker.link(gtk_fixed_get_child_position, "gtk_fixed_get_child_position", LIBRARY_GTK);
	Linker.link(gtk_fixed_get_child_transform, "gtk_fixed_get_child_transform", LIBRARY_GTK);
	Linker.link(gtk_fixed_move, "gtk_fixed_move", LIBRARY_GTK);
	Linker.link(gtk_fixed_put, "gtk_fixed_put", LIBRARY_GTK);
	Linker.link(gtk_fixed_remove, "gtk_fixed_remove", LIBRARY_GTK);
	Linker.link(gtk_fixed_set_child_transform, "gtk_fixed_set_child_transform", LIBRARY_GTK);

	// gtk.FixedLayout

	Linker.link(gtk_fixed_layout_get_type, "gtk_fixed_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_fixed_layout_new, "gtk_fixed_layout_new", LIBRARY_GTK);

	// gtk.FixedLayoutChild

	Linker.link(gtk_fixed_layout_child_get_type, "gtk_fixed_layout_child_get_type", LIBRARY_GTK);
	Linker.link(gtk_fixed_layout_child_get_transform, "gtk_fixed_layout_child_get_transform", LIBRARY_GTK);
	Linker.link(gtk_fixed_layout_child_set_transform, "gtk_fixed_layout_child_set_transform", LIBRARY_GTK);

	// gtk.FlattenListModel

	Linker.link(gtk_flatten_list_model_get_type, "gtk_flatten_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_flatten_list_model_new, "gtk_flatten_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_flatten_list_model_get_model, "gtk_flatten_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_flatten_list_model_get_model_for_item, "gtk_flatten_list_model_get_model_for_item", LIBRARY_GTK);
	Linker.link(gtk_flatten_list_model_set_model, "gtk_flatten_list_model_set_model", LIBRARY_GTK);

	// gtk.FlowBox

	Linker.link(gtk_flow_box_get_type, "gtk_flow_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_flow_box_new, "gtk_flow_box_new", LIBRARY_GTK);
	Linker.link(gtk_flow_box_append, "gtk_flow_box_append", LIBRARY_GTK);
	Linker.link(gtk_flow_box_bind_model, "gtk_flow_box_bind_model", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_activate_on_single_click, "gtk_flow_box_get_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_child_at_index, "gtk_flow_box_get_child_at_index", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_child_at_pos, "gtk_flow_box_get_child_at_pos", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_column_spacing, "gtk_flow_box_get_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_homogeneous, "gtk_flow_box_get_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_max_children_per_line, "gtk_flow_box_get_max_children_per_line", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_min_children_per_line, "gtk_flow_box_get_min_children_per_line", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_row_spacing, "gtk_flow_box_get_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_selected_children, "gtk_flow_box_get_selected_children", LIBRARY_GTK);
	Linker.link(gtk_flow_box_get_selection_mode, "gtk_flow_box_get_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_flow_box_insert, "gtk_flow_box_insert", LIBRARY_GTK);
	Linker.link(gtk_flow_box_invalidate_filter, "gtk_flow_box_invalidate_filter", LIBRARY_GTK);
	Linker.link(gtk_flow_box_invalidate_sort, "gtk_flow_box_invalidate_sort", LIBRARY_GTK);
	Linker.link(gtk_flow_box_prepend, "gtk_flow_box_prepend", LIBRARY_GTK);
	Linker.link(gtk_flow_box_remove, "gtk_flow_box_remove", LIBRARY_GTK);
	Linker.link(gtk_flow_box_select_all, "gtk_flow_box_select_all", LIBRARY_GTK);
	Linker.link(gtk_flow_box_select_child, "gtk_flow_box_select_child", LIBRARY_GTK);
	Linker.link(gtk_flow_box_selected_foreach, "gtk_flow_box_selected_foreach", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_activate_on_single_click, "gtk_flow_box_set_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_column_spacing, "gtk_flow_box_set_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_filter_func, "gtk_flow_box_set_filter_func", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_hadjustment, "gtk_flow_box_set_hadjustment", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_homogeneous, "gtk_flow_box_set_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_max_children_per_line, "gtk_flow_box_set_max_children_per_line", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_min_children_per_line, "gtk_flow_box_set_min_children_per_line", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_row_spacing, "gtk_flow_box_set_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_selection_mode, "gtk_flow_box_set_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_sort_func, "gtk_flow_box_set_sort_func", LIBRARY_GTK);
	Linker.link(gtk_flow_box_set_vadjustment, "gtk_flow_box_set_vadjustment", LIBRARY_GTK);
	Linker.link(gtk_flow_box_unselect_all, "gtk_flow_box_unselect_all", LIBRARY_GTK);
	Linker.link(gtk_flow_box_unselect_child, "gtk_flow_box_unselect_child", LIBRARY_GTK);

	// gtk.FlowBoxChild

	Linker.link(gtk_flow_box_child_get_type, "gtk_flow_box_child_get_type", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_new, "gtk_flow_box_child_new", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_changed, "gtk_flow_box_child_changed", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_get_child, "gtk_flow_box_child_get_child", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_get_index, "gtk_flow_box_child_get_index", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_is_selected, "gtk_flow_box_child_is_selected", LIBRARY_GTK);
	Linker.link(gtk_flow_box_child_set_child, "gtk_flow_box_child_set_child", LIBRARY_GTK);

	// gtk.FontButton

	Linker.link(gtk_font_button_get_type, "gtk_font_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_font_button_new, "gtk_font_button_new", LIBRARY_GTK);
	Linker.link(gtk_font_button_new_with_font, "gtk_font_button_new_with_font", LIBRARY_GTK);
	Linker.link(gtk_font_button_get_modal, "gtk_font_button_get_modal", LIBRARY_GTK);
	Linker.link(gtk_font_button_get_title, "gtk_font_button_get_title", LIBRARY_GTK);
	Linker.link(gtk_font_button_get_use_font, "gtk_font_button_get_use_font", LIBRARY_GTK);
	Linker.link(gtk_font_button_get_use_size, "gtk_font_button_get_use_size", LIBRARY_GTK);
	Linker.link(gtk_font_button_set_modal, "gtk_font_button_set_modal", LIBRARY_GTK);
	Linker.link(gtk_font_button_set_title, "gtk_font_button_set_title", LIBRARY_GTK);
	Linker.link(gtk_font_button_set_use_font, "gtk_font_button_set_use_font", LIBRARY_GTK);
	Linker.link(gtk_font_button_set_use_size, "gtk_font_button_set_use_size", LIBRARY_GTK);

	// gtk.FontChooser

	Linker.link(gtk_font_chooser_get_type, "gtk_font_chooser_get_type", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font, "gtk_font_chooser_get_font", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_desc, "gtk_font_chooser_get_font_desc", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_face, "gtk_font_chooser_get_font_face", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_family, "gtk_font_chooser_get_font_family", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_features, "gtk_font_chooser_get_font_features", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_map, "gtk_font_chooser_get_font_map", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_font_size, "gtk_font_chooser_get_font_size", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_language, "gtk_font_chooser_get_language", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_level, "gtk_font_chooser_get_level", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_preview_text, "gtk_font_chooser_get_preview_text", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_get_show_preview_entry, "gtk_font_chooser_get_show_preview_entry", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_filter_func, "gtk_font_chooser_set_filter_func", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_font, "gtk_font_chooser_set_font", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_font_desc, "gtk_font_chooser_set_font_desc", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_font_map, "gtk_font_chooser_set_font_map", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_language, "gtk_font_chooser_set_language", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_level, "gtk_font_chooser_set_level", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_preview_text, "gtk_font_chooser_set_preview_text", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_set_show_preview_entry, "gtk_font_chooser_set_show_preview_entry", LIBRARY_GTK);

	// gtk.FontChooserDialog

	Linker.link(gtk_font_chooser_dialog_get_type, "gtk_font_chooser_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_dialog_new, "gtk_font_chooser_dialog_new", LIBRARY_GTK);

	// gtk.FontChooserWidget

	Linker.link(gtk_font_chooser_widget_get_type, "gtk_font_chooser_widget_get_type", LIBRARY_GTK);
	Linker.link(gtk_font_chooser_widget_new, "gtk_font_chooser_widget_new", LIBRARY_GTK);

	// gtk.Frame

	Linker.link(gtk_frame_get_type, "gtk_frame_get_type", LIBRARY_GTK);
	Linker.link(gtk_frame_new, "gtk_frame_new", LIBRARY_GTK);
	Linker.link(gtk_frame_get_child, "gtk_frame_get_child", LIBRARY_GTK);
	Linker.link(gtk_frame_get_label, "gtk_frame_get_label", LIBRARY_GTK);
	Linker.link(gtk_frame_get_label_align, "gtk_frame_get_label_align", LIBRARY_GTK);
	Linker.link(gtk_frame_get_label_widget, "gtk_frame_get_label_widget", LIBRARY_GTK);
	Linker.link(gtk_frame_set_child, "gtk_frame_set_child", LIBRARY_GTK);
	Linker.link(gtk_frame_set_label, "gtk_frame_set_label", LIBRARY_GTK);
	Linker.link(gtk_frame_set_label_align, "gtk_frame_set_label_align", LIBRARY_GTK);
	Linker.link(gtk_frame_set_label_widget, "gtk_frame_set_label_widget", LIBRARY_GTK);

	// gtk.GLArea

	Linker.link(gtk_gl_area_get_type, "gtk_gl_area_get_type", LIBRARY_GTK);
	Linker.link(gtk_gl_area_new, "gtk_gl_area_new", LIBRARY_GTK);
	Linker.link(gtk_gl_area_attach_buffers, "gtk_gl_area_attach_buffers", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_auto_render, "gtk_gl_area_get_auto_render", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_context, "gtk_gl_area_get_context", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_error, "gtk_gl_area_get_error", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_has_depth_buffer, "gtk_gl_area_get_has_depth_buffer", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_has_stencil_buffer, "gtk_gl_area_get_has_stencil_buffer", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_required_version, "gtk_gl_area_get_required_version", LIBRARY_GTK);
	Linker.link(gtk_gl_area_get_use_es, "gtk_gl_area_get_use_es", LIBRARY_GTK);
	Linker.link(gtk_gl_area_make_current, "gtk_gl_area_make_current", LIBRARY_GTK);
	Linker.link(gtk_gl_area_queue_render, "gtk_gl_area_queue_render", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_auto_render, "gtk_gl_area_set_auto_render", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_error, "gtk_gl_area_set_error", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_has_depth_buffer, "gtk_gl_area_set_has_depth_buffer", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_has_stencil_buffer, "gtk_gl_area_set_has_stencil_buffer", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_required_version, "gtk_gl_area_set_required_version", LIBRARY_GTK);
	Linker.link(gtk_gl_area_set_use_es, "gtk_gl_area_set_use_es", LIBRARY_GTK);

	// gtk.Gesture

	Linker.link(gtk_gesture_get_type, "gtk_gesture_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_bounding_box, "gtk_gesture_get_bounding_box", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_bounding_box_center, "gtk_gesture_get_bounding_box_center", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_device, "gtk_gesture_get_device", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_group, "gtk_gesture_get_group", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_last_event, "gtk_gesture_get_last_event", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_last_updated_sequence, "gtk_gesture_get_last_updated_sequence", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_point, "gtk_gesture_get_point", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_sequence_state, "gtk_gesture_get_sequence_state", LIBRARY_GTK);
	Linker.link(gtk_gesture_get_sequences, "gtk_gesture_get_sequences", LIBRARY_GTK);
	Linker.link(gtk_gesture_group, "gtk_gesture_group", LIBRARY_GTK);
	Linker.link(gtk_gesture_handles_sequence, "gtk_gesture_handles_sequence", LIBRARY_GTK);
	Linker.link(gtk_gesture_is_active, "gtk_gesture_is_active", LIBRARY_GTK);
	Linker.link(gtk_gesture_is_grouped_with, "gtk_gesture_is_grouped_with", LIBRARY_GTK);
	Linker.link(gtk_gesture_is_recognized, "gtk_gesture_is_recognized", LIBRARY_GTK);
	Linker.link(gtk_gesture_set_sequence_state, "gtk_gesture_set_sequence_state", LIBRARY_GTK);
	Linker.link(gtk_gesture_set_state, "gtk_gesture_set_state", LIBRARY_GTK);
	Linker.link(gtk_gesture_ungroup, "gtk_gesture_ungroup", LIBRARY_GTK);

	// gtk.GestureClick

	Linker.link(gtk_gesture_click_get_type, "gtk_gesture_click_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_click_new, "gtk_gesture_click_new", LIBRARY_GTK);

	// gtk.GestureDrag

	Linker.link(gtk_gesture_drag_get_type, "gtk_gesture_drag_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_drag_new, "gtk_gesture_drag_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_drag_get_offset, "gtk_gesture_drag_get_offset", LIBRARY_GTK);
	Linker.link(gtk_gesture_drag_get_start_point, "gtk_gesture_drag_get_start_point", LIBRARY_GTK);

	// gtk.GestureLongPress

	Linker.link(gtk_gesture_long_press_get_type, "gtk_gesture_long_press_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_long_press_new, "gtk_gesture_long_press_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_long_press_get_delay_factor, "gtk_gesture_long_press_get_delay_factor", LIBRARY_GTK);
	Linker.link(gtk_gesture_long_press_set_delay_factor, "gtk_gesture_long_press_set_delay_factor", LIBRARY_GTK);

	// gtk.GesturePan

	Linker.link(gtk_gesture_pan_get_type, "gtk_gesture_pan_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_pan_new, "gtk_gesture_pan_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_pan_get_orientation, "gtk_gesture_pan_get_orientation", LIBRARY_GTK);
	Linker.link(gtk_gesture_pan_set_orientation, "gtk_gesture_pan_set_orientation", LIBRARY_GTK);

	// gtk.GestureRotate

	Linker.link(gtk_gesture_rotate_get_type, "gtk_gesture_rotate_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_rotate_new, "gtk_gesture_rotate_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_rotate_get_angle_delta, "gtk_gesture_rotate_get_angle_delta", LIBRARY_GTK);

	// gtk.GestureSingle

	Linker.link(gtk_gesture_single_get_type, "gtk_gesture_single_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_get_button, "gtk_gesture_single_get_button", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_get_current_button, "gtk_gesture_single_get_current_button", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_get_current_sequence, "gtk_gesture_single_get_current_sequence", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_get_exclusive, "gtk_gesture_single_get_exclusive", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_get_touch_only, "gtk_gesture_single_get_touch_only", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_set_button, "gtk_gesture_single_set_button", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_set_exclusive, "gtk_gesture_single_set_exclusive", LIBRARY_GTK);
	Linker.link(gtk_gesture_single_set_touch_only, "gtk_gesture_single_set_touch_only", LIBRARY_GTK);

	// gtk.GestureStylus

	Linker.link(gtk_gesture_stylus_get_type, "gtk_gesture_stylus_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_stylus_new, "gtk_gesture_stylus_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_stylus_get_axes, "gtk_gesture_stylus_get_axes", LIBRARY_GTK);
	Linker.link(gtk_gesture_stylus_get_axis, "gtk_gesture_stylus_get_axis", LIBRARY_GTK);
	Linker.link(gtk_gesture_stylus_get_backlog, "gtk_gesture_stylus_get_backlog", LIBRARY_GTK);
	Linker.link(gtk_gesture_stylus_get_device_tool, "gtk_gesture_stylus_get_device_tool", LIBRARY_GTK);

	// gtk.GestureSwipe

	Linker.link(gtk_gesture_swipe_get_type, "gtk_gesture_swipe_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_swipe_new, "gtk_gesture_swipe_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_swipe_get_velocity, "gtk_gesture_swipe_get_velocity", LIBRARY_GTK);

	// gtk.GestureZoom

	Linker.link(gtk_gesture_zoom_get_type, "gtk_gesture_zoom_get_type", LIBRARY_GTK);
	Linker.link(gtk_gesture_zoom_new, "gtk_gesture_zoom_new", LIBRARY_GTK);
	Linker.link(gtk_gesture_zoom_get_scale_delta, "gtk_gesture_zoom_get_scale_delta", LIBRARY_GTK);

	// gtk.Grid

	Linker.link(gtk_grid_get_type, "gtk_grid_get_type", LIBRARY_GTK);
	Linker.link(gtk_grid_new, "gtk_grid_new", LIBRARY_GTK);
	Linker.link(gtk_grid_attach, "gtk_grid_attach", LIBRARY_GTK);
	Linker.link(gtk_grid_attach_next_to, "gtk_grid_attach_next_to", LIBRARY_GTK);
	Linker.link(gtk_grid_get_baseline_row, "gtk_grid_get_baseline_row", LIBRARY_GTK);
	Linker.link(gtk_grid_get_child_at, "gtk_grid_get_child_at", LIBRARY_GTK);
	Linker.link(gtk_grid_get_column_homogeneous, "gtk_grid_get_column_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_get_column_spacing, "gtk_grid_get_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_get_row_baseline_position, "gtk_grid_get_row_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_grid_get_row_homogeneous, "gtk_grid_get_row_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_get_row_spacing, "gtk_grid_get_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_insert_column, "gtk_grid_insert_column", LIBRARY_GTK);
	Linker.link(gtk_grid_insert_next_to, "gtk_grid_insert_next_to", LIBRARY_GTK);
	Linker.link(gtk_grid_insert_row, "gtk_grid_insert_row", LIBRARY_GTK);
	Linker.link(gtk_grid_query_child, "gtk_grid_query_child", LIBRARY_GTK);
	Linker.link(gtk_grid_remove, "gtk_grid_remove", LIBRARY_GTK);
	Linker.link(gtk_grid_remove_column, "gtk_grid_remove_column", LIBRARY_GTK);
	Linker.link(gtk_grid_remove_row, "gtk_grid_remove_row", LIBRARY_GTK);
	Linker.link(gtk_grid_set_baseline_row, "gtk_grid_set_baseline_row", LIBRARY_GTK);
	Linker.link(gtk_grid_set_column_homogeneous, "gtk_grid_set_column_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_set_column_spacing, "gtk_grid_set_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_set_row_baseline_position, "gtk_grid_set_row_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_grid_set_row_homogeneous, "gtk_grid_set_row_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_set_row_spacing, "gtk_grid_set_row_spacing", LIBRARY_GTK);

	// gtk.GridLayout

	Linker.link(gtk_grid_layout_get_type, "gtk_grid_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_new, "gtk_grid_layout_new", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_baseline_row, "gtk_grid_layout_get_baseline_row", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_column_homogeneous, "gtk_grid_layout_get_column_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_column_spacing, "gtk_grid_layout_get_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_row_baseline_position, "gtk_grid_layout_get_row_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_row_homogeneous, "gtk_grid_layout_get_row_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_get_row_spacing, "gtk_grid_layout_get_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_baseline_row, "gtk_grid_layout_set_baseline_row", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_column_homogeneous, "gtk_grid_layout_set_column_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_column_spacing, "gtk_grid_layout_set_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_row_baseline_position, "gtk_grid_layout_set_row_baseline_position", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_row_homogeneous, "gtk_grid_layout_set_row_homogeneous", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_set_row_spacing, "gtk_grid_layout_set_row_spacing", LIBRARY_GTK);

	// gtk.GridLayoutChild

	Linker.link(gtk_grid_layout_child_get_type, "gtk_grid_layout_child_get_type", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_get_column, "gtk_grid_layout_child_get_column", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_get_column_span, "gtk_grid_layout_child_get_column_span", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_get_row, "gtk_grid_layout_child_get_row", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_get_row_span, "gtk_grid_layout_child_get_row_span", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_set_column, "gtk_grid_layout_child_set_column", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_set_column_span, "gtk_grid_layout_child_set_column_span", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_set_row, "gtk_grid_layout_child_set_row", LIBRARY_GTK);
	Linker.link(gtk_grid_layout_child_set_row_span, "gtk_grid_layout_child_set_row_span", LIBRARY_GTK);

	// gtk.GridView

	Linker.link(gtk_grid_view_get_type, "gtk_grid_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_grid_view_new, "gtk_grid_view_new", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_enable_rubberband, "gtk_grid_view_get_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_factory, "gtk_grid_view_get_factory", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_max_columns, "gtk_grid_view_get_max_columns", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_min_columns, "gtk_grid_view_get_min_columns", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_model, "gtk_grid_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_grid_view_get_single_click_activate, "gtk_grid_view_get_single_click_activate", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_enable_rubberband, "gtk_grid_view_set_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_factory, "gtk_grid_view_set_factory", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_max_columns, "gtk_grid_view_set_max_columns", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_min_columns, "gtk_grid_view_set_min_columns", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_model, "gtk_grid_view_set_model", LIBRARY_GTK);
	Linker.link(gtk_grid_view_set_single_click_activate, "gtk_grid_view_set_single_click_activate", LIBRARY_GTK);

	// gtk.HeaderBar

	Linker.link(gtk_header_bar_get_type, "gtk_header_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_header_bar_new, "gtk_header_bar_new", LIBRARY_GTK);
	Linker.link(gtk_header_bar_get_decoration_layout, "gtk_header_bar_get_decoration_layout", LIBRARY_GTK);
	Linker.link(gtk_header_bar_get_show_title_buttons, "gtk_header_bar_get_show_title_buttons", LIBRARY_GTK);
	Linker.link(gtk_header_bar_get_title_widget, "gtk_header_bar_get_title_widget", LIBRARY_GTK);
	Linker.link(gtk_header_bar_pack_end, "gtk_header_bar_pack_end", LIBRARY_GTK);
	Linker.link(gtk_header_bar_pack_start, "gtk_header_bar_pack_start", LIBRARY_GTK);
	Linker.link(gtk_header_bar_remove, "gtk_header_bar_remove", LIBRARY_GTK);
	Linker.link(gtk_header_bar_set_decoration_layout, "gtk_header_bar_set_decoration_layout", LIBRARY_GTK);
	Linker.link(gtk_header_bar_set_show_title_buttons, "gtk_header_bar_set_show_title_buttons", LIBRARY_GTK);
	Linker.link(gtk_header_bar_set_title_widget, "gtk_header_bar_set_title_widget", LIBRARY_GTK);

	// gtk.IMContext

	Linker.link(gtk_im_context_get_type, "gtk_im_context_get_type", LIBRARY_GTK);
	Linker.link(gtk_im_context_delete_surrounding, "gtk_im_context_delete_surrounding", LIBRARY_GTK);
	Linker.link(gtk_im_context_filter_key, "gtk_im_context_filter_key", LIBRARY_GTK);
	Linker.link(gtk_im_context_filter_keypress, "gtk_im_context_filter_keypress", LIBRARY_GTK);
	Linker.link(gtk_im_context_focus_in, "gtk_im_context_focus_in", LIBRARY_GTK);
	Linker.link(gtk_im_context_focus_out, "gtk_im_context_focus_out", LIBRARY_GTK);
	Linker.link(gtk_im_context_get_preedit_string, "gtk_im_context_get_preedit_string", LIBRARY_GTK);
	Linker.link(gtk_im_context_get_surrounding, "gtk_im_context_get_surrounding", LIBRARY_GTK);
	Linker.link(gtk_im_context_get_surrounding_with_selection, "gtk_im_context_get_surrounding_with_selection", LIBRARY_GTK);
	Linker.link(gtk_im_context_reset, "gtk_im_context_reset", LIBRARY_GTK);
	Linker.link(gtk_im_context_set_client_widget, "gtk_im_context_set_client_widget", LIBRARY_GTK);
	Linker.link(gtk_im_context_set_cursor_location, "gtk_im_context_set_cursor_location", LIBRARY_GTK);
	Linker.link(gtk_im_context_set_surrounding, "gtk_im_context_set_surrounding", LIBRARY_GTK);
	Linker.link(gtk_im_context_set_surrounding_with_selection, "gtk_im_context_set_surrounding_with_selection", LIBRARY_GTK);
	Linker.link(gtk_im_context_set_use_preedit, "gtk_im_context_set_use_preedit", LIBRARY_GTK);

	// gtk.IMContextSimple

	Linker.link(gtk_im_context_simple_get_type, "gtk_im_context_simple_get_type", LIBRARY_GTK);
	Linker.link(gtk_im_context_simple_new, "gtk_im_context_simple_new", LIBRARY_GTK);
	Linker.link(gtk_im_context_simple_add_compose_file, "gtk_im_context_simple_add_compose_file", LIBRARY_GTK);
	Linker.link(gtk_im_context_simple_add_table, "gtk_im_context_simple_add_table", LIBRARY_GTK);

	// gtk.IMMulticontext

	Linker.link(gtk_im_multicontext_get_type, "gtk_im_multicontext_get_type", LIBRARY_GTK);
	Linker.link(gtk_im_multicontext_new, "gtk_im_multicontext_new", LIBRARY_GTK);
	Linker.link(gtk_im_multicontext_get_context_id, "gtk_im_multicontext_get_context_id", LIBRARY_GTK);
	Linker.link(gtk_im_multicontext_set_context_id, "gtk_im_multicontext_set_context_id", LIBRARY_GTK);

	// gtk.IconPaintable

	Linker.link(gtk_icon_paintable_get_type, "gtk_icon_paintable_get_type", LIBRARY_GTK);
	Linker.link(gtk_icon_paintable_new_for_file, "gtk_icon_paintable_new_for_file", LIBRARY_GTK);
	Linker.link(gtk_icon_paintable_get_file, "gtk_icon_paintable_get_file", LIBRARY_GTK);
	Linker.link(gtk_icon_paintable_get_icon_name, "gtk_icon_paintable_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_icon_paintable_is_symbolic, "gtk_icon_paintable_is_symbolic", LIBRARY_GTK);

	// gtk.IconTheme

	Linker.link(gtk_icon_theme_get_type, "gtk_icon_theme_get_type", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_new, "gtk_icon_theme_new", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_for_display, "gtk_icon_theme_get_for_display", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_add_resource_path, "gtk_icon_theme_add_resource_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_add_search_path, "gtk_icon_theme_add_search_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_display, "gtk_icon_theme_get_display", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_icon_names, "gtk_icon_theme_get_icon_names", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_icon_sizes, "gtk_icon_theme_get_icon_sizes", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_resource_path, "gtk_icon_theme_get_resource_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_search_path, "gtk_icon_theme_get_search_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_get_theme_name, "gtk_icon_theme_get_theme_name", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_has_gicon, "gtk_icon_theme_has_gicon", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_has_icon, "gtk_icon_theme_has_icon", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_lookup_by_gicon, "gtk_icon_theme_lookup_by_gicon", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_lookup_icon, "gtk_icon_theme_lookup_icon", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_set_resource_path, "gtk_icon_theme_set_resource_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_set_search_path, "gtk_icon_theme_set_search_path", LIBRARY_GTK);
	Linker.link(gtk_icon_theme_set_theme_name, "gtk_icon_theme_set_theme_name", LIBRARY_GTK);

	// gtk.IconView

	Linker.link(gtk_icon_view_get_type, "gtk_icon_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_icon_view_new, "gtk_icon_view_new", LIBRARY_GTK);
	Linker.link(gtk_icon_view_new_with_area, "gtk_icon_view_new_with_area", LIBRARY_GTK);
	Linker.link(gtk_icon_view_new_with_model, "gtk_icon_view_new_with_model", LIBRARY_GTK);
	Linker.link(gtk_icon_view_create_drag_icon, "gtk_icon_view_create_drag_icon", LIBRARY_GTK);
	Linker.link(gtk_icon_view_enable_model_drag_dest, "gtk_icon_view_enable_model_drag_dest", LIBRARY_GTK);
	Linker.link(gtk_icon_view_enable_model_drag_source, "gtk_icon_view_enable_model_drag_source", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_activate_on_single_click, "gtk_icon_view_get_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_cell_rect, "gtk_icon_view_get_cell_rect", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_column_spacing, "gtk_icon_view_get_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_columns, "gtk_icon_view_get_columns", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_cursor, "gtk_icon_view_get_cursor", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_dest_item_at_pos, "gtk_icon_view_get_dest_item_at_pos", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_drag_dest_item, "gtk_icon_view_get_drag_dest_item", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_at_pos, "gtk_icon_view_get_item_at_pos", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_column, "gtk_icon_view_get_item_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_orientation, "gtk_icon_view_get_item_orientation", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_padding, "gtk_icon_view_get_item_padding", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_row, "gtk_icon_view_get_item_row", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_item_width, "gtk_icon_view_get_item_width", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_margin, "gtk_icon_view_get_margin", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_markup_column, "gtk_icon_view_get_markup_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_model, "gtk_icon_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_path_at_pos, "gtk_icon_view_get_path_at_pos", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_pixbuf_column, "gtk_icon_view_get_pixbuf_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_reorderable, "gtk_icon_view_get_reorderable", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_row_spacing, "gtk_icon_view_get_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_selected_items, "gtk_icon_view_get_selected_items", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_selection_mode, "gtk_icon_view_get_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_spacing, "gtk_icon_view_get_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_text_column, "gtk_icon_view_get_text_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_tooltip_column, "gtk_icon_view_get_tooltip_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_tooltip_context, "gtk_icon_view_get_tooltip_context", LIBRARY_GTK);
	Linker.link(gtk_icon_view_get_visible_range, "gtk_icon_view_get_visible_range", LIBRARY_GTK);
	Linker.link(gtk_icon_view_item_activated, "gtk_icon_view_item_activated", LIBRARY_GTK);
	Linker.link(gtk_icon_view_path_is_selected, "gtk_icon_view_path_is_selected", LIBRARY_GTK);
	Linker.link(gtk_icon_view_scroll_to_path, "gtk_icon_view_scroll_to_path", LIBRARY_GTK);
	Linker.link(gtk_icon_view_select_all, "gtk_icon_view_select_all", LIBRARY_GTK);
	Linker.link(gtk_icon_view_select_path, "gtk_icon_view_select_path", LIBRARY_GTK);
	Linker.link(gtk_icon_view_selected_foreach, "gtk_icon_view_selected_foreach", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_activate_on_single_click, "gtk_icon_view_set_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_column_spacing, "gtk_icon_view_set_column_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_columns, "gtk_icon_view_set_columns", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_cursor, "gtk_icon_view_set_cursor", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_drag_dest_item, "gtk_icon_view_set_drag_dest_item", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_item_orientation, "gtk_icon_view_set_item_orientation", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_item_padding, "gtk_icon_view_set_item_padding", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_item_width, "gtk_icon_view_set_item_width", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_margin, "gtk_icon_view_set_margin", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_markup_column, "gtk_icon_view_set_markup_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_model, "gtk_icon_view_set_model", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_pixbuf_column, "gtk_icon_view_set_pixbuf_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_reorderable, "gtk_icon_view_set_reorderable", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_row_spacing, "gtk_icon_view_set_row_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_selection_mode, "gtk_icon_view_set_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_spacing, "gtk_icon_view_set_spacing", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_text_column, "gtk_icon_view_set_text_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_tooltip_cell, "gtk_icon_view_set_tooltip_cell", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_tooltip_column, "gtk_icon_view_set_tooltip_column", LIBRARY_GTK);
	Linker.link(gtk_icon_view_set_tooltip_item, "gtk_icon_view_set_tooltip_item", LIBRARY_GTK);
	Linker.link(gtk_icon_view_unselect_all, "gtk_icon_view_unselect_all", LIBRARY_GTK);
	Linker.link(gtk_icon_view_unselect_path, "gtk_icon_view_unselect_path", LIBRARY_GTK);
	Linker.link(gtk_icon_view_unset_model_drag_dest, "gtk_icon_view_unset_model_drag_dest", LIBRARY_GTK);
	Linker.link(gtk_icon_view_unset_model_drag_source, "gtk_icon_view_unset_model_drag_source", LIBRARY_GTK);

	// gtk.Image

	Linker.link(gtk_image_get_type, "gtk_image_get_type", LIBRARY_GTK);
	Linker.link(gtk_image_new, "gtk_image_new", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_file, "gtk_image_new_from_file", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_gicon, "gtk_image_new_from_gicon", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_icon_name, "gtk_image_new_from_icon_name", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_paintable, "gtk_image_new_from_paintable", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_pixbuf, "gtk_image_new_from_pixbuf", LIBRARY_GTK);
	Linker.link(gtk_image_new_from_resource, "gtk_image_new_from_resource", LIBRARY_GTK);
	Linker.link(gtk_image_clear, "gtk_image_clear", LIBRARY_GTK);
	Linker.link(gtk_image_get_gicon, "gtk_image_get_gicon", LIBRARY_GTK);
	Linker.link(gtk_image_get_icon_name, "gtk_image_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_image_get_icon_size, "gtk_image_get_icon_size", LIBRARY_GTK);
	Linker.link(gtk_image_get_paintable, "gtk_image_get_paintable", LIBRARY_GTK);
	Linker.link(gtk_image_get_pixel_size, "gtk_image_get_pixel_size", LIBRARY_GTK);
	Linker.link(gtk_image_get_storage_type, "gtk_image_get_storage_type", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_file, "gtk_image_set_from_file", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_gicon, "gtk_image_set_from_gicon", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_icon_name, "gtk_image_set_from_icon_name", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_paintable, "gtk_image_set_from_paintable", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_pixbuf, "gtk_image_set_from_pixbuf", LIBRARY_GTK);
	Linker.link(gtk_image_set_from_resource, "gtk_image_set_from_resource", LIBRARY_GTK);
	Linker.link(gtk_image_set_icon_size, "gtk_image_set_icon_size", LIBRARY_GTK);
	Linker.link(gtk_image_set_pixel_size, "gtk_image_set_pixel_size", LIBRARY_GTK);

	// gtk.InfoBar

	Linker.link(gtk_info_bar_get_type, "gtk_info_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_info_bar_new, "gtk_info_bar_new", LIBRARY_GTK);
	Linker.link(gtk_info_bar_new_with_buttons, "gtk_info_bar_new_with_buttons", LIBRARY_GTK);
	Linker.link(gtk_info_bar_add_action_widget, "gtk_info_bar_add_action_widget", LIBRARY_GTK);
	Linker.link(gtk_info_bar_add_button, "gtk_info_bar_add_button", LIBRARY_GTK);
	Linker.link(gtk_info_bar_add_buttons, "gtk_info_bar_add_buttons", LIBRARY_GTK);
	Linker.link(gtk_info_bar_add_child, "gtk_info_bar_add_child", LIBRARY_GTK);
	Linker.link(gtk_info_bar_get_message_type, "gtk_info_bar_get_message_type", LIBRARY_GTK);
	Linker.link(gtk_info_bar_get_revealed, "gtk_info_bar_get_revealed", LIBRARY_GTK);
	Linker.link(gtk_info_bar_get_show_close_button, "gtk_info_bar_get_show_close_button", LIBRARY_GTK);
	Linker.link(gtk_info_bar_remove_action_widget, "gtk_info_bar_remove_action_widget", LIBRARY_GTK);
	Linker.link(gtk_info_bar_remove_child, "gtk_info_bar_remove_child", LIBRARY_GTK);
	Linker.link(gtk_info_bar_response, "gtk_info_bar_response", LIBRARY_GTK);
	Linker.link(gtk_info_bar_set_default_response, "gtk_info_bar_set_default_response", LIBRARY_GTK);
	Linker.link(gtk_info_bar_set_message_type, "gtk_info_bar_set_message_type", LIBRARY_GTK);
	Linker.link(gtk_info_bar_set_response_sensitive, "gtk_info_bar_set_response_sensitive", LIBRARY_GTK);
	Linker.link(gtk_info_bar_set_revealed, "gtk_info_bar_set_revealed", LIBRARY_GTK);
	Linker.link(gtk_info_bar_set_show_close_button, "gtk_info_bar_set_show_close_button", LIBRARY_GTK);

	// gtk.KeyvalTrigger

	Linker.link(gtk_keyval_trigger_get_type, "gtk_keyval_trigger_get_type", LIBRARY_GTK);
	Linker.link(gtk_keyval_trigger_new, "gtk_keyval_trigger_new", LIBRARY_GTK);
	Linker.link(gtk_keyval_trigger_get_keyval, "gtk_keyval_trigger_get_keyval", LIBRARY_GTK);
	Linker.link(gtk_keyval_trigger_get_modifiers, "gtk_keyval_trigger_get_modifiers", LIBRARY_GTK);

	// gtk.Label

	Linker.link(gtk_label_get_type, "gtk_label_get_type", LIBRARY_GTK);
	Linker.link(gtk_label_new, "gtk_label_new", LIBRARY_GTK);
	Linker.link(gtk_label_new_with_mnemonic, "gtk_label_new_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_label_get_attributes, "gtk_label_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_label_get_current_uri, "gtk_label_get_current_uri", LIBRARY_GTK);
	Linker.link(gtk_label_get_ellipsize, "gtk_label_get_ellipsize", LIBRARY_GTK);
	Linker.link(gtk_label_get_extra_menu, "gtk_label_get_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_label_get_justify, "gtk_label_get_justify", LIBRARY_GTK);
	Linker.link(gtk_label_get_label, "gtk_label_get_label", LIBRARY_GTK);
	Linker.link(gtk_label_get_layout, "gtk_label_get_layout", LIBRARY_GTK);
	Linker.link(gtk_label_get_layout_offsets, "gtk_label_get_layout_offsets", LIBRARY_GTK);
	Linker.link(gtk_label_get_lines, "gtk_label_get_lines", LIBRARY_GTK);
	Linker.link(gtk_label_get_max_width_chars, "gtk_label_get_max_width_chars", LIBRARY_GTK);
	Linker.link(gtk_label_get_mnemonic_keyval, "gtk_label_get_mnemonic_keyval", LIBRARY_GTK);
	Linker.link(gtk_label_get_mnemonic_widget, "gtk_label_get_mnemonic_widget", LIBRARY_GTK);
	Linker.link(gtk_label_get_natural_wrap_mode, "gtk_label_get_natural_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_label_get_selectable, "gtk_label_get_selectable", LIBRARY_GTK);
	Linker.link(gtk_label_get_selection_bounds, "gtk_label_get_selection_bounds", LIBRARY_GTK);
	Linker.link(gtk_label_get_single_line_mode, "gtk_label_get_single_line_mode", LIBRARY_GTK);
	Linker.link(gtk_label_get_text, "gtk_label_get_text", LIBRARY_GTK);
	Linker.link(gtk_label_get_use_markup, "gtk_label_get_use_markup", LIBRARY_GTK);
	Linker.link(gtk_label_get_use_underline, "gtk_label_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_label_get_width_chars, "gtk_label_get_width_chars", LIBRARY_GTK);
	Linker.link(gtk_label_get_wrap, "gtk_label_get_wrap", LIBRARY_GTK);
	Linker.link(gtk_label_get_wrap_mode, "gtk_label_get_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_label_get_xalign, "gtk_label_get_xalign", LIBRARY_GTK);
	Linker.link(gtk_label_get_yalign, "gtk_label_get_yalign", LIBRARY_GTK);
	Linker.link(gtk_label_select_region, "gtk_label_select_region", LIBRARY_GTK);
	Linker.link(gtk_label_set_attributes, "gtk_label_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_label_set_ellipsize, "gtk_label_set_ellipsize", LIBRARY_GTK);
	Linker.link(gtk_label_set_extra_menu, "gtk_label_set_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_label_set_justify, "gtk_label_set_justify", LIBRARY_GTK);
	Linker.link(gtk_label_set_label, "gtk_label_set_label", LIBRARY_GTK);
	Linker.link(gtk_label_set_lines, "gtk_label_set_lines", LIBRARY_GTK);
	Linker.link(gtk_label_set_markup, "gtk_label_set_markup", LIBRARY_GTK);
	Linker.link(gtk_label_set_markup_with_mnemonic, "gtk_label_set_markup_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_label_set_max_width_chars, "gtk_label_set_max_width_chars", LIBRARY_GTK);
	Linker.link(gtk_label_set_mnemonic_widget, "gtk_label_set_mnemonic_widget", LIBRARY_GTK);
	Linker.link(gtk_label_set_natural_wrap_mode, "gtk_label_set_natural_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_label_set_selectable, "gtk_label_set_selectable", LIBRARY_GTK);
	Linker.link(gtk_label_set_single_line_mode, "gtk_label_set_single_line_mode", LIBRARY_GTK);
	Linker.link(gtk_label_set_text, "gtk_label_set_text", LIBRARY_GTK);
	Linker.link(gtk_label_set_text_with_mnemonic, "gtk_label_set_text_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_label_set_use_markup, "gtk_label_set_use_markup", LIBRARY_GTK);
	Linker.link(gtk_label_set_use_underline, "gtk_label_set_use_underline", LIBRARY_GTK);
	Linker.link(gtk_label_set_width_chars, "gtk_label_set_width_chars", LIBRARY_GTK);
	Linker.link(gtk_label_set_wrap, "gtk_label_set_wrap", LIBRARY_GTK);
	Linker.link(gtk_label_set_wrap_mode, "gtk_label_set_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_label_set_xalign, "gtk_label_set_xalign", LIBRARY_GTK);
	Linker.link(gtk_label_set_yalign, "gtk_label_set_yalign", LIBRARY_GTK);

	// gtk.LayoutChild

	Linker.link(gtk_layout_child_get_type, "gtk_layout_child_get_type", LIBRARY_GTK);
	Linker.link(gtk_layout_child_get_child_widget, "gtk_layout_child_get_child_widget", LIBRARY_GTK);
	Linker.link(gtk_layout_child_get_layout_manager, "gtk_layout_child_get_layout_manager", LIBRARY_GTK);

	// gtk.LayoutManager

	Linker.link(gtk_layout_manager_get_type, "gtk_layout_manager_get_type", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_allocate, "gtk_layout_manager_allocate", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_get_layout_child, "gtk_layout_manager_get_layout_child", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_get_request_mode, "gtk_layout_manager_get_request_mode", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_get_widget, "gtk_layout_manager_get_widget", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_layout_changed, "gtk_layout_manager_layout_changed", LIBRARY_GTK);
	Linker.link(gtk_layout_manager_measure, "gtk_layout_manager_measure", LIBRARY_GTK);

	// gtk.LevelBar

	Linker.link(gtk_level_bar_get_type, "gtk_level_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_level_bar_new, "gtk_level_bar_new", LIBRARY_GTK);
	Linker.link(gtk_level_bar_new_for_interval, "gtk_level_bar_new_for_interval", LIBRARY_GTK);
	Linker.link(gtk_level_bar_add_offset_value, "gtk_level_bar_add_offset_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_inverted, "gtk_level_bar_get_inverted", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_max_value, "gtk_level_bar_get_max_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_min_value, "gtk_level_bar_get_min_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_mode, "gtk_level_bar_get_mode", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_offset_value, "gtk_level_bar_get_offset_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_get_value, "gtk_level_bar_get_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_remove_offset_value, "gtk_level_bar_remove_offset_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_set_inverted, "gtk_level_bar_set_inverted", LIBRARY_GTK);
	Linker.link(gtk_level_bar_set_max_value, "gtk_level_bar_set_max_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_set_min_value, "gtk_level_bar_set_min_value", LIBRARY_GTK);
	Linker.link(gtk_level_bar_set_mode, "gtk_level_bar_set_mode", LIBRARY_GTK);
	Linker.link(gtk_level_bar_set_value, "gtk_level_bar_set_value", LIBRARY_GTK);

	// gtk.LinkButton

	Linker.link(gtk_link_button_get_type, "gtk_link_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_link_button_new, "gtk_link_button_new", LIBRARY_GTK);
	Linker.link(gtk_link_button_new_with_label, "gtk_link_button_new_with_label", LIBRARY_GTK);
	Linker.link(gtk_link_button_get_uri, "gtk_link_button_get_uri", LIBRARY_GTK);
	Linker.link(gtk_link_button_get_visited, "gtk_link_button_get_visited", LIBRARY_GTK);
	Linker.link(gtk_link_button_set_uri, "gtk_link_button_set_uri", LIBRARY_GTK);
	Linker.link(gtk_link_button_set_visited, "gtk_link_button_set_visited", LIBRARY_GTK);

	// gtk.ListBase

	Linker.link(gtk_list_base_get_type, "gtk_list_base_get_type", LIBRARY_GTK);

	// gtk.ListBox

	Linker.link(gtk_list_box_get_type, "gtk_list_box_get_type", LIBRARY_GTK);
	Linker.link(gtk_list_box_new, "gtk_list_box_new", LIBRARY_GTK);
	Linker.link(gtk_list_box_append, "gtk_list_box_append", LIBRARY_GTK);
	Linker.link(gtk_list_box_bind_model, "gtk_list_box_bind_model", LIBRARY_GTK);
	Linker.link(gtk_list_box_drag_highlight_row, "gtk_list_box_drag_highlight_row", LIBRARY_GTK);
	Linker.link(gtk_list_box_drag_unhighlight_row, "gtk_list_box_drag_unhighlight_row", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_activate_on_single_click, "gtk_list_box_get_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_adjustment, "gtk_list_box_get_adjustment", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_row_at_index, "gtk_list_box_get_row_at_index", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_row_at_y, "gtk_list_box_get_row_at_y", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_selected_row, "gtk_list_box_get_selected_row", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_selected_rows, "gtk_list_box_get_selected_rows", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_selection_mode, "gtk_list_box_get_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_list_box_get_show_separators, "gtk_list_box_get_show_separators", LIBRARY_GTK);
	Linker.link(gtk_list_box_insert, "gtk_list_box_insert", LIBRARY_GTK);
	Linker.link(gtk_list_box_invalidate_filter, "gtk_list_box_invalidate_filter", LIBRARY_GTK);
	Linker.link(gtk_list_box_invalidate_headers, "gtk_list_box_invalidate_headers", LIBRARY_GTK);
	Linker.link(gtk_list_box_invalidate_sort, "gtk_list_box_invalidate_sort", LIBRARY_GTK);
	Linker.link(gtk_list_box_prepend, "gtk_list_box_prepend", LIBRARY_GTK);
	Linker.link(gtk_list_box_remove, "gtk_list_box_remove", LIBRARY_GTK);
	Linker.link(gtk_list_box_select_all, "gtk_list_box_select_all", LIBRARY_GTK);
	Linker.link(gtk_list_box_select_row, "gtk_list_box_select_row", LIBRARY_GTK);
	Linker.link(gtk_list_box_selected_foreach, "gtk_list_box_selected_foreach", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_activate_on_single_click, "gtk_list_box_set_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_adjustment, "gtk_list_box_set_adjustment", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_filter_func, "gtk_list_box_set_filter_func", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_header_func, "gtk_list_box_set_header_func", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_placeholder, "gtk_list_box_set_placeholder", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_selection_mode, "gtk_list_box_set_selection_mode", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_show_separators, "gtk_list_box_set_show_separators", LIBRARY_GTK);
	Linker.link(gtk_list_box_set_sort_func, "gtk_list_box_set_sort_func", LIBRARY_GTK);
	Linker.link(gtk_list_box_unselect_all, "gtk_list_box_unselect_all", LIBRARY_GTK);
	Linker.link(gtk_list_box_unselect_row, "gtk_list_box_unselect_row", LIBRARY_GTK);

	// gtk.ListBoxRow

	Linker.link(gtk_list_box_row_get_type, "gtk_list_box_row_get_type", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_new, "gtk_list_box_row_new", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_changed, "gtk_list_box_row_changed", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_get_activatable, "gtk_list_box_row_get_activatable", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_get_child, "gtk_list_box_row_get_child", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_get_header, "gtk_list_box_row_get_header", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_get_index, "gtk_list_box_row_get_index", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_get_selectable, "gtk_list_box_row_get_selectable", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_is_selected, "gtk_list_box_row_is_selected", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_set_activatable, "gtk_list_box_row_set_activatable", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_set_child, "gtk_list_box_row_set_child", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_set_header, "gtk_list_box_row_set_header", LIBRARY_GTK);
	Linker.link(gtk_list_box_row_set_selectable, "gtk_list_box_row_set_selectable", LIBRARY_GTK);

	// gtk.ListItem

	Linker.link(gtk_list_item_get_type, "gtk_list_item_get_type", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_activatable, "gtk_list_item_get_activatable", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_child, "gtk_list_item_get_child", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_item, "gtk_list_item_get_item", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_position, "gtk_list_item_get_position", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_selectable, "gtk_list_item_get_selectable", LIBRARY_GTK);
	Linker.link(gtk_list_item_get_selected, "gtk_list_item_get_selected", LIBRARY_GTK);
	Linker.link(gtk_list_item_set_activatable, "gtk_list_item_set_activatable", LIBRARY_GTK);
	Linker.link(gtk_list_item_set_child, "gtk_list_item_set_child", LIBRARY_GTK);
	Linker.link(gtk_list_item_set_selectable, "gtk_list_item_set_selectable", LIBRARY_GTK);

	// gtk.ListItemFactory

	Linker.link(gtk_list_item_factory_get_type, "gtk_list_item_factory_get_type", LIBRARY_GTK);

	// gtk.ListStore

	Linker.link(gtk_list_store_get_type, "gtk_list_store_get_type", LIBRARY_GTK);
	Linker.link(gtk_list_store_new, "gtk_list_store_new", LIBRARY_GTK);
	Linker.link(gtk_list_store_newv, "gtk_list_store_newv", LIBRARY_GTK);
	Linker.link(gtk_list_store_append, "gtk_list_store_append", LIBRARY_GTK);
	Linker.link(gtk_list_store_clear, "gtk_list_store_clear", LIBRARY_GTK);
	Linker.link(gtk_list_store_insert, "gtk_list_store_insert", LIBRARY_GTK);
	Linker.link(gtk_list_store_insert_after, "gtk_list_store_insert_after", LIBRARY_GTK);
	Linker.link(gtk_list_store_insert_before, "gtk_list_store_insert_before", LIBRARY_GTK);
	Linker.link(gtk_list_store_insert_with_values, "gtk_list_store_insert_with_values", LIBRARY_GTK);
	Linker.link(gtk_list_store_insert_with_valuesv, "gtk_list_store_insert_with_valuesv", LIBRARY_GTK);
	Linker.link(gtk_list_store_iter_is_valid, "gtk_list_store_iter_is_valid", LIBRARY_GTK);
	Linker.link(gtk_list_store_move_after, "gtk_list_store_move_after", LIBRARY_GTK);
	Linker.link(gtk_list_store_move_before, "gtk_list_store_move_before", LIBRARY_GTK);
	Linker.link(gtk_list_store_prepend, "gtk_list_store_prepend", LIBRARY_GTK);
	Linker.link(gtk_list_store_remove, "gtk_list_store_remove", LIBRARY_GTK);
	Linker.link(gtk_list_store_reorder, "gtk_list_store_reorder", LIBRARY_GTK);
	Linker.link(gtk_list_store_set, "gtk_list_store_set", LIBRARY_GTK);
	Linker.link(gtk_list_store_set_column_types, "gtk_list_store_set_column_types", LIBRARY_GTK);
	Linker.link(gtk_list_store_set_valist, "gtk_list_store_set_valist", LIBRARY_GTK);
	Linker.link(gtk_list_store_set_value, "gtk_list_store_set_value", LIBRARY_GTK);
	Linker.link(gtk_list_store_set_valuesv, "gtk_list_store_set_valuesv", LIBRARY_GTK);
	Linker.link(gtk_list_store_swap, "gtk_list_store_swap", LIBRARY_GTK);

	// gtk.ListView

	Linker.link(gtk_list_view_get_type, "gtk_list_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_list_view_new, "gtk_list_view_new", LIBRARY_GTK);
	Linker.link(gtk_list_view_get_enable_rubberband, "gtk_list_view_get_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_list_view_get_factory, "gtk_list_view_get_factory", LIBRARY_GTK);
	Linker.link(gtk_list_view_get_model, "gtk_list_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_list_view_get_show_separators, "gtk_list_view_get_show_separators", LIBRARY_GTK);
	Linker.link(gtk_list_view_get_single_click_activate, "gtk_list_view_get_single_click_activate", LIBRARY_GTK);
	Linker.link(gtk_list_view_set_enable_rubberband, "gtk_list_view_set_enable_rubberband", LIBRARY_GTK);
	Linker.link(gtk_list_view_set_factory, "gtk_list_view_set_factory", LIBRARY_GTK);
	Linker.link(gtk_list_view_set_model, "gtk_list_view_set_model", LIBRARY_GTK);
	Linker.link(gtk_list_view_set_show_separators, "gtk_list_view_set_show_separators", LIBRARY_GTK);
	Linker.link(gtk_list_view_set_single_click_activate, "gtk_list_view_set_single_click_activate", LIBRARY_GTK);

	// gtk.LockButton

	Linker.link(gtk_lock_button_get_type, "gtk_lock_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_lock_button_new, "gtk_lock_button_new", LIBRARY_GTK);
	Linker.link(gtk_lock_button_get_permission, "gtk_lock_button_get_permission", LIBRARY_GTK);
	Linker.link(gtk_lock_button_set_permission, "gtk_lock_button_set_permission", LIBRARY_GTK);

	// gtk.MapListModel

	Linker.link(gtk_map_list_model_get_type, "gtk_map_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_map_list_model_new, "gtk_map_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_map_list_model_get_model, "gtk_map_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_map_list_model_has_map, "gtk_map_list_model_has_map", LIBRARY_GTK);
	Linker.link(gtk_map_list_model_set_map_func, "gtk_map_list_model_set_map_func", LIBRARY_GTK);
	Linker.link(gtk_map_list_model_set_model, "gtk_map_list_model_set_model", LIBRARY_GTK);

	// gtk.MediaControls

	Linker.link(gtk_media_controls_get_type, "gtk_media_controls_get_type", LIBRARY_GTK);
	Linker.link(gtk_media_controls_new, "gtk_media_controls_new", LIBRARY_GTK);
	Linker.link(gtk_media_controls_get_media_stream, "gtk_media_controls_get_media_stream", LIBRARY_GTK);
	Linker.link(gtk_media_controls_set_media_stream, "gtk_media_controls_set_media_stream", LIBRARY_GTK);

	// gtk.MediaFile

	Linker.link(gtk_media_file_get_type, "gtk_media_file_get_type", LIBRARY_GTK);
	Linker.link(gtk_media_file_new, "gtk_media_file_new", LIBRARY_GTK);
	Linker.link(gtk_media_file_new_for_file, "gtk_media_file_new_for_file", LIBRARY_GTK);
	Linker.link(gtk_media_file_new_for_filename, "gtk_media_file_new_for_filename", LIBRARY_GTK);
	Linker.link(gtk_media_file_new_for_input_stream, "gtk_media_file_new_for_input_stream", LIBRARY_GTK);
	Linker.link(gtk_media_file_new_for_resource, "gtk_media_file_new_for_resource", LIBRARY_GTK);
	Linker.link(gtk_media_file_clear, "gtk_media_file_clear", LIBRARY_GTK);
	Linker.link(gtk_media_file_get_file, "gtk_media_file_get_file", LIBRARY_GTK);
	Linker.link(gtk_media_file_get_input_stream, "gtk_media_file_get_input_stream", LIBRARY_GTK);
	Linker.link(gtk_media_file_set_file, "gtk_media_file_set_file", LIBRARY_GTK);
	Linker.link(gtk_media_file_set_filename, "gtk_media_file_set_filename", LIBRARY_GTK);
	Linker.link(gtk_media_file_set_input_stream, "gtk_media_file_set_input_stream", LIBRARY_GTK);
	Linker.link(gtk_media_file_set_resource, "gtk_media_file_set_resource", LIBRARY_GTK);

	// gtk.MediaStream

	Linker.link(gtk_media_stream_get_type, "gtk_media_stream_get_type", LIBRARY_GTK);
	Linker.link(gtk_media_stream_ended, "gtk_media_stream_ended", LIBRARY_GTK);
	Linker.link(gtk_media_stream_error, "gtk_media_stream_error", LIBRARY_GTK);
	Linker.link(gtk_media_stream_error_valist, "gtk_media_stream_error_valist", LIBRARY_GTK);
	Linker.link(gtk_media_stream_gerror, "gtk_media_stream_gerror", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_duration, "gtk_media_stream_get_duration", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_ended, "gtk_media_stream_get_ended", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_error, "gtk_media_stream_get_error", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_loop, "gtk_media_stream_get_loop", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_muted, "gtk_media_stream_get_muted", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_playing, "gtk_media_stream_get_playing", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_timestamp, "gtk_media_stream_get_timestamp", LIBRARY_GTK);
	Linker.link(gtk_media_stream_get_volume, "gtk_media_stream_get_volume", LIBRARY_GTK);
	Linker.link(gtk_media_stream_has_audio, "gtk_media_stream_has_audio", LIBRARY_GTK);
	Linker.link(gtk_media_stream_has_video, "gtk_media_stream_has_video", LIBRARY_GTK);
	Linker.link(gtk_media_stream_is_prepared, "gtk_media_stream_is_prepared", LIBRARY_GTK);
	Linker.link(gtk_media_stream_is_seekable, "gtk_media_stream_is_seekable", LIBRARY_GTK);
	Linker.link(gtk_media_stream_is_seeking, "gtk_media_stream_is_seeking", LIBRARY_GTK);
	Linker.link(gtk_media_stream_pause, "gtk_media_stream_pause", LIBRARY_GTK);
	Linker.link(gtk_media_stream_play, "gtk_media_stream_play", LIBRARY_GTK);
	Linker.link(gtk_media_stream_prepared, "gtk_media_stream_prepared", LIBRARY_GTK);
	Linker.link(gtk_media_stream_realize, "gtk_media_stream_realize", LIBRARY_GTK);
	Linker.link(gtk_media_stream_seek, "gtk_media_stream_seek", LIBRARY_GTK);
	Linker.link(gtk_media_stream_seek_failed, "gtk_media_stream_seek_failed", LIBRARY_GTK);
	Linker.link(gtk_media_stream_seek_success, "gtk_media_stream_seek_success", LIBRARY_GTK);
	Linker.link(gtk_media_stream_set_loop, "gtk_media_stream_set_loop", LIBRARY_GTK);
	Linker.link(gtk_media_stream_set_muted, "gtk_media_stream_set_muted", LIBRARY_GTK);
	Linker.link(gtk_media_stream_set_playing, "gtk_media_stream_set_playing", LIBRARY_GTK);
	Linker.link(gtk_media_stream_set_volume, "gtk_media_stream_set_volume", LIBRARY_GTK);
	Linker.link(gtk_media_stream_stream_ended, "gtk_media_stream_stream_ended", LIBRARY_GTK);
	Linker.link(gtk_media_stream_stream_prepared, "gtk_media_stream_stream_prepared", LIBRARY_GTK);
	Linker.link(gtk_media_stream_stream_unprepared, "gtk_media_stream_stream_unprepared", LIBRARY_GTK);
	Linker.link(gtk_media_stream_unprepared, "gtk_media_stream_unprepared", LIBRARY_GTK);
	Linker.link(gtk_media_stream_unrealize, "gtk_media_stream_unrealize", LIBRARY_GTK);
	Linker.link(gtk_media_stream_update, "gtk_media_stream_update", LIBRARY_GTK);

	// gtk.MenuButton

	Linker.link(gtk_menu_button_get_type, "gtk_menu_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_menu_button_new, "gtk_menu_button_new", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_always_show_arrow, "gtk_menu_button_get_always_show_arrow", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_child, "gtk_menu_button_get_child", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_direction, "gtk_menu_button_get_direction", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_has_frame, "gtk_menu_button_get_has_frame", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_icon_name, "gtk_menu_button_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_label, "gtk_menu_button_get_label", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_menu_model, "gtk_menu_button_get_menu_model", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_popover, "gtk_menu_button_get_popover", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_primary, "gtk_menu_button_get_primary", LIBRARY_GTK);
	Linker.link(gtk_menu_button_get_use_underline, "gtk_menu_button_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_menu_button_popdown, "gtk_menu_button_popdown", LIBRARY_GTK);
	Linker.link(gtk_menu_button_popup, "gtk_menu_button_popup", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_always_show_arrow, "gtk_menu_button_set_always_show_arrow", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_child, "gtk_menu_button_set_child", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_create_popup_func, "gtk_menu_button_set_create_popup_func", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_direction, "gtk_menu_button_set_direction", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_has_frame, "gtk_menu_button_set_has_frame", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_icon_name, "gtk_menu_button_set_icon_name", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_label, "gtk_menu_button_set_label", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_menu_model, "gtk_menu_button_set_menu_model", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_popover, "gtk_menu_button_set_popover", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_primary, "gtk_menu_button_set_primary", LIBRARY_GTK);
	Linker.link(gtk_menu_button_set_use_underline, "gtk_menu_button_set_use_underline", LIBRARY_GTK);

	// gtk.MessageDialog

	Linker.link(gtk_message_dialog_get_type, "gtk_message_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_new, "gtk_message_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_new_with_markup, "gtk_message_dialog_new_with_markup", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_format_secondary_markup, "gtk_message_dialog_format_secondary_markup", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_format_secondary_text, "gtk_message_dialog_format_secondary_text", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_get_message_area, "gtk_message_dialog_get_message_area", LIBRARY_GTK);
	Linker.link(gtk_message_dialog_set_markup, "gtk_message_dialog_set_markup", LIBRARY_GTK);

	// gtk.MnemonicAction

	Linker.link(gtk_mnemonic_action_get_type, "gtk_mnemonic_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_mnemonic_action_get, "gtk_mnemonic_action_get", LIBRARY_GTK);

	// gtk.MnemonicTrigger

	Linker.link(gtk_mnemonic_trigger_get_type, "gtk_mnemonic_trigger_get_type", LIBRARY_GTK);
	Linker.link(gtk_mnemonic_trigger_new, "gtk_mnemonic_trigger_new", LIBRARY_GTK);
	Linker.link(gtk_mnemonic_trigger_get_keyval, "gtk_mnemonic_trigger_get_keyval", LIBRARY_GTK);

	// gtk.MountOperation

	Linker.link(gtk_mount_operation_get_type, "gtk_mount_operation_get_type", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_new, "gtk_mount_operation_new", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_get_display, "gtk_mount_operation_get_display", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_get_parent, "gtk_mount_operation_get_parent", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_is_showing, "gtk_mount_operation_is_showing", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_set_display, "gtk_mount_operation_set_display", LIBRARY_GTK);
	Linker.link(gtk_mount_operation_set_parent, "gtk_mount_operation_set_parent", LIBRARY_GTK);

	// gtk.MultiFilter

	Linker.link(gtk_multi_filter_get_type, "gtk_multi_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_multi_filter_append, "gtk_multi_filter_append", LIBRARY_GTK);
	Linker.link(gtk_multi_filter_remove, "gtk_multi_filter_remove", LIBRARY_GTK);

	// gtk.MultiSelection

	Linker.link(gtk_multi_selection_get_type, "gtk_multi_selection_get_type", LIBRARY_GTK);
	Linker.link(gtk_multi_selection_new, "gtk_multi_selection_new", LIBRARY_GTK);
	Linker.link(gtk_multi_selection_get_model, "gtk_multi_selection_get_model", LIBRARY_GTK);
	Linker.link(gtk_multi_selection_set_model, "gtk_multi_selection_set_model", LIBRARY_GTK);

	// gtk.MultiSorter

	Linker.link(gtk_multi_sorter_get_type, "gtk_multi_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_multi_sorter_new, "gtk_multi_sorter_new", LIBRARY_GTK);
	Linker.link(gtk_multi_sorter_append, "gtk_multi_sorter_append", LIBRARY_GTK);
	Linker.link(gtk_multi_sorter_remove, "gtk_multi_sorter_remove", LIBRARY_GTK);

	// gtk.NamedAction

	Linker.link(gtk_named_action_get_type, "gtk_named_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_named_action_new, "gtk_named_action_new", LIBRARY_GTK);
	Linker.link(gtk_named_action_get_action_name, "gtk_named_action_get_action_name", LIBRARY_GTK);

	// gtk.Native

	Linker.link(gtk_native_get_type, "gtk_native_get_type", LIBRARY_GTK);
	Linker.link(gtk_native_get_for_surface, "gtk_native_get_for_surface", LIBRARY_GTK);
	Linker.link(gtk_native_get_renderer, "gtk_native_get_renderer", LIBRARY_GTK);
	Linker.link(gtk_native_get_surface, "gtk_native_get_surface", LIBRARY_GTK);
	Linker.link(gtk_native_get_surface_transform, "gtk_native_get_surface_transform", LIBRARY_GTK);
	Linker.link(gtk_native_realize, "gtk_native_realize", LIBRARY_GTK);
	Linker.link(gtk_native_unrealize, "gtk_native_unrealize", LIBRARY_GTK);

	// gtk.NativeDialog

	Linker.link(gtk_native_dialog_get_type, "gtk_native_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_destroy, "gtk_native_dialog_destroy", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_get_modal, "gtk_native_dialog_get_modal", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_get_title, "gtk_native_dialog_get_title", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_get_transient_for, "gtk_native_dialog_get_transient_for", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_get_visible, "gtk_native_dialog_get_visible", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_hide, "gtk_native_dialog_hide", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_set_modal, "gtk_native_dialog_set_modal", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_set_title, "gtk_native_dialog_set_title", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_set_transient_for, "gtk_native_dialog_set_transient_for", LIBRARY_GTK);
	Linker.link(gtk_native_dialog_show, "gtk_native_dialog_show", LIBRARY_GTK);

	// gtk.NeverTrigger

	Linker.link(gtk_never_trigger_get_type, "gtk_never_trigger_get_type", LIBRARY_GTK);
	Linker.link(gtk_never_trigger_get, "gtk_never_trigger_get", LIBRARY_GTK);

	// gtk.NoSelection

	Linker.link(gtk_no_selection_get_type, "gtk_no_selection_get_type", LIBRARY_GTK);
	Linker.link(gtk_no_selection_new, "gtk_no_selection_new", LIBRARY_GTK);
	Linker.link(gtk_no_selection_get_model, "gtk_no_selection_get_model", LIBRARY_GTK);
	Linker.link(gtk_no_selection_set_model, "gtk_no_selection_set_model", LIBRARY_GTK);

	// gtk.Notebook

	Linker.link(gtk_notebook_get_type, "gtk_notebook_get_type", LIBRARY_GTK);
	Linker.link(gtk_notebook_new, "gtk_notebook_new", LIBRARY_GTK);
	Linker.link(gtk_notebook_append_page, "gtk_notebook_append_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_append_page_menu, "gtk_notebook_append_page_menu", LIBRARY_GTK);
	Linker.link(gtk_notebook_detach_tab, "gtk_notebook_detach_tab", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_action_widget, "gtk_notebook_get_action_widget", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_current_page, "gtk_notebook_get_current_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_group_name, "gtk_notebook_get_group_name", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_menu_label, "gtk_notebook_get_menu_label", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_menu_label_text, "gtk_notebook_get_menu_label_text", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_n_pages, "gtk_notebook_get_n_pages", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_nth_page, "gtk_notebook_get_nth_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_page, "gtk_notebook_get_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_pages, "gtk_notebook_get_pages", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_scrollable, "gtk_notebook_get_scrollable", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_show_border, "gtk_notebook_get_show_border", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_show_tabs, "gtk_notebook_get_show_tabs", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_tab_detachable, "gtk_notebook_get_tab_detachable", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_tab_label, "gtk_notebook_get_tab_label", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_tab_label_text, "gtk_notebook_get_tab_label_text", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_tab_pos, "gtk_notebook_get_tab_pos", LIBRARY_GTK);
	Linker.link(gtk_notebook_get_tab_reorderable, "gtk_notebook_get_tab_reorderable", LIBRARY_GTK);
	Linker.link(gtk_notebook_insert_page, "gtk_notebook_insert_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_insert_page_menu, "gtk_notebook_insert_page_menu", LIBRARY_GTK);
	Linker.link(gtk_notebook_next_page, "gtk_notebook_next_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_page_num, "gtk_notebook_page_num", LIBRARY_GTK);
	Linker.link(gtk_notebook_popup_disable, "gtk_notebook_popup_disable", LIBRARY_GTK);
	Linker.link(gtk_notebook_popup_enable, "gtk_notebook_popup_enable", LIBRARY_GTK);
	Linker.link(gtk_notebook_prepend_page, "gtk_notebook_prepend_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_prepend_page_menu, "gtk_notebook_prepend_page_menu", LIBRARY_GTK);
	Linker.link(gtk_notebook_prev_page, "gtk_notebook_prev_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_remove_page, "gtk_notebook_remove_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_reorder_child, "gtk_notebook_reorder_child", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_action_widget, "gtk_notebook_set_action_widget", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_current_page, "gtk_notebook_set_current_page", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_group_name, "gtk_notebook_set_group_name", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_menu_label, "gtk_notebook_set_menu_label", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_menu_label_text, "gtk_notebook_set_menu_label_text", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_scrollable, "gtk_notebook_set_scrollable", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_show_border, "gtk_notebook_set_show_border", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_show_tabs, "gtk_notebook_set_show_tabs", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_tab_detachable, "gtk_notebook_set_tab_detachable", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_tab_label, "gtk_notebook_set_tab_label", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_tab_label_text, "gtk_notebook_set_tab_label_text", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_tab_pos, "gtk_notebook_set_tab_pos", LIBRARY_GTK);
	Linker.link(gtk_notebook_set_tab_reorderable, "gtk_notebook_set_tab_reorderable", LIBRARY_GTK);

	// gtk.NotebookPage

	Linker.link(gtk_notebook_page_get_type, "gtk_notebook_page_get_type", LIBRARY_GTK);
	Linker.link(gtk_notebook_page_get_child, "gtk_notebook_page_get_child", LIBRARY_GTK);

	// gtk.NothingAction

	Linker.link(gtk_nothing_action_get_type, "gtk_nothing_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_nothing_action_get, "gtk_nothing_action_get", LIBRARY_GTK);

	// gtk.NumericSorter

	Linker.link(gtk_numeric_sorter_get_type, "gtk_numeric_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_numeric_sorter_new, "gtk_numeric_sorter_new", LIBRARY_GTK);
	Linker.link(gtk_numeric_sorter_get_expression, "gtk_numeric_sorter_get_expression", LIBRARY_GTK);
	Linker.link(gtk_numeric_sorter_get_sort_order, "gtk_numeric_sorter_get_sort_order", LIBRARY_GTK);
	Linker.link(gtk_numeric_sorter_set_expression, "gtk_numeric_sorter_set_expression", LIBRARY_GTK);
	Linker.link(gtk_numeric_sorter_set_sort_order, "gtk_numeric_sorter_set_sort_order", LIBRARY_GTK);

	// gtk.ObjectExpression

	Linker.link(gtk_object_expression_get_type, "gtk_object_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_object_expression_new, "gtk_object_expression_new", LIBRARY_GTK);
	Linker.link(gtk_object_expression_get_object, "gtk_object_expression_get_object", LIBRARY_GTK);

	// gtk.Orientable

	Linker.link(gtk_orientable_get_type, "gtk_orientable_get_type", LIBRARY_GTK);
	Linker.link(gtk_orientable_get_orientation, "gtk_orientable_get_orientation", LIBRARY_GTK);
	Linker.link(gtk_orientable_set_orientation, "gtk_orientable_set_orientation", LIBRARY_GTK);

	// gtk.Overlay

	Linker.link(gtk_overlay_get_type, "gtk_overlay_get_type", LIBRARY_GTK);
	Linker.link(gtk_overlay_new, "gtk_overlay_new", LIBRARY_GTK);
	Linker.link(gtk_overlay_add_overlay, "gtk_overlay_add_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_get_child, "gtk_overlay_get_child", LIBRARY_GTK);
	Linker.link(gtk_overlay_get_clip_overlay, "gtk_overlay_get_clip_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_get_measure_overlay, "gtk_overlay_get_measure_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_remove_overlay, "gtk_overlay_remove_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_set_child, "gtk_overlay_set_child", LIBRARY_GTK);
	Linker.link(gtk_overlay_set_clip_overlay, "gtk_overlay_set_clip_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_set_measure_overlay, "gtk_overlay_set_measure_overlay", LIBRARY_GTK);

	// gtk.OverlayLayout

	Linker.link(gtk_overlay_layout_get_type, "gtk_overlay_layout_get_type", LIBRARY_GTK);
	Linker.link(gtk_overlay_layout_new, "gtk_overlay_layout_new", LIBRARY_GTK);

	// gtk.OverlayLayoutChild

	Linker.link(gtk_overlay_layout_child_get_type, "gtk_overlay_layout_child_get_type", LIBRARY_GTK);
	Linker.link(gtk_overlay_layout_child_get_clip_overlay, "gtk_overlay_layout_child_get_clip_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_layout_child_get_measure, "gtk_overlay_layout_child_get_measure", LIBRARY_GTK);
	Linker.link(gtk_overlay_layout_child_set_clip_overlay, "gtk_overlay_layout_child_set_clip_overlay", LIBRARY_GTK);
	Linker.link(gtk_overlay_layout_child_set_measure, "gtk_overlay_layout_child_set_measure", LIBRARY_GTK);

	// gtk.PadController

	Linker.link(gtk_pad_controller_get_type, "gtk_pad_controller_get_type", LIBRARY_GTK);
	Linker.link(gtk_pad_controller_new, "gtk_pad_controller_new", LIBRARY_GTK);
	Linker.link(gtk_pad_controller_set_action, "gtk_pad_controller_set_action", LIBRARY_GTK);
	Linker.link(gtk_pad_controller_set_action_entries, "gtk_pad_controller_set_action_entries", LIBRARY_GTK);

	// gtk.PageSetup

	Linker.link(gtk_page_setup_get_type, "gtk_page_setup_get_type", LIBRARY_GTK);
	Linker.link(gtk_page_setup_new, "gtk_page_setup_new", LIBRARY_GTK);
	Linker.link(gtk_page_setup_new_from_file, "gtk_page_setup_new_from_file", LIBRARY_GTK);
	Linker.link(gtk_page_setup_new_from_gvariant, "gtk_page_setup_new_from_gvariant", LIBRARY_GTK);
	Linker.link(gtk_page_setup_new_from_key_file, "gtk_page_setup_new_from_key_file", LIBRARY_GTK);
	Linker.link(gtk_page_setup_copy, "gtk_page_setup_copy", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_bottom_margin, "gtk_page_setup_get_bottom_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_left_margin, "gtk_page_setup_get_left_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_orientation, "gtk_page_setup_get_orientation", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_page_height, "gtk_page_setup_get_page_height", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_page_width, "gtk_page_setup_get_page_width", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_paper_height, "gtk_page_setup_get_paper_height", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_paper_size, "gtk_page_setup_get_paper_size", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_paper_width, "gtk_page_setup_get_paper_width", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_right_margin, "gtk_page_setup_get_right_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_get_top_margin, "gtk_page_setup_get_top_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_load_file, "gtk_page_setup_load_file", LIBRARY_GTK);
	Linker.link(gtk_page_setup_load_key_file, "gtk_page_setup_load_key_file", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_bottom_margin, "gtk_page_setup_set_bottom_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_left_margin, "gtk_page_setup_set_left_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_orientation, "gtk_page_setup_set_orientation", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_paper_size, "gtk_page_setup_set_paper_size", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_paper_size_and_default_margins, "gtk_page_setup_set_paper_size_and_default_margins", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_right_margin, "gtk_page_setup_set_right_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_set_top_margin, "gtk_page_setup_set_top_margin", LIBRARY_GTK);
	Linker.link(gtk_page_setup_to_file, "gtk_page_setup_to_file", LIBRARY_GTK);
	Linker.link(gtk_page_setup_to_gvariant, "gtk_page_setup_to_gvariant", LIBRARY_GTK);
	Linker.link(gtk_page_setup_to_key_file, "gtk_page_setup_to_key_file", LIBRARY_GTK);

	// gtk.PageSetupUnixDialog

	Linker.link(gtk_page_setup_unix_dialog_get_type, "gtk_page_setup_unix_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_page_setup_unix_dialog_new, "gtk_page_setup_unix_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_page_setup, "gtk_page_setup_unix_dialog_get_page_setup", LIBRARY_GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_print_settings, "gtk_page_setup_unix_dialog_get_print_settings", LIBRARY_GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_page_setup, "gtk_page_setup_unix_dialog_set_page_setup", LIBRARY_GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_print_settings, "gtk_page_setup_unix_dialog_set_print_settings", LIBRARY_GTK);

	// gtk.Paned

	Linker.link(gtk_paned_get_type, "gtk_paned_get_type", LIBRARY_GTK);
	Linker.link(gtk_paned_new, "gtk_paned_new", LIBRARY_GTK);
	Linker.link(gtk_paned_get_end_child, "gtk_paned_get_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_position, "gtk_paned_get_position", LIBRARY_GTK);
	Linker.link(gtk_paned_get_resize_end_child, "gtk_paned_get_resize_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_resize_start_child, "gtk_paned_get_resize_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_shrink_end_child, "gtk_paned_get_shrink_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_shrink_start_child, "gtk_paned_get_shrink_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_start_child, "gtk_paned_get_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_get_wide_handle, "gtk_paned_get_wide_handle", LIBRARY_GTK);
	Linker.link(gtk_paned_set_end_child, "gtk_paned_set_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_position, "gtk_paned_set_position", LIBRARY_GTK);
	Linker.link(gtk_paned_set_resize_end_child, "gtk_paned_set_resize_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_resize_start_child, "gtk_paned_set_resize_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_shrink_end_child, "gtk_paned_set_shrink_end_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_shrink_start_child, "gtk_paned_set_shrink_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_start_child, "gtk_paned_set_start_child", LIBRARY_GTK);
	Linker.link(gtk_paned_set_wide_handle, "gtk_paned_set_wide_handle", LIBRARY_GTK);

	// gtk.PaperSize

	Linker.link(gtk_paper_size_get_type, "gtk_paper_size_get_type", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new, "gtk_paper_size_new", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new_custom, "gtk_paper_size_new_custom", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new_from_gvariant, "gtk_paper_size_new_from_gvariant", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new_from_ipp, "gtk_paper_size_new_from_ipp", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new_from_key_file, "gtk_paper_size_new_from_key_file", LIBRARY_GTK);
	Linker.link(gtk_paper_size_new_from_ppd, "gtk_paper_size_new_from_ppd", LIBRARY_GTK);
	Linker.link(gtk_paper_size_copy, "gtk_paper_size_copy", LIBRARY_GTK);
	Linker.link(gtk_paper_size_free, "gtk_paper_size_free", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_default_bottom_margin, "gtk_paper_size_get_default_bottom_margin", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_default_left_margin, "gtk_paper_size_get_default_left_margin", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_default_right_margin, "gtk_paper_size_get_default_right_margin", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_default_top_margin, "gtk_paper_size_get_default_top_margin", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_display_name, "gtk_paper_size_get_display_name", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_height, "gtk_paper_size_get_height", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_name, "gtk_paper_size_get_name", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_ppd_name, "gtk_paper_size_get_ppd_name", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_width, "gtk_paper_size_get_width", LIBRARY_GTK);
	Linker.link(gtk_paper_size_is_custom, "gtk_paper_size_is_custom", LIBRARY_GTK);
	Linker.link(gtk_paper_size_is_equal, "gtk_paper_size_is_equal", LIBRARY_GTK);
	Linker.link(gtk_paper_size_is_ipp, "gtk_paper_size_is_ipp", LIBRARY_GTK);
	Linker.link(gtk_paper_size_set_size, "gtk_paper_size_set_size", LIBRARY_GTK);
	Linker.link(gtk_paper_size_to_gvariant, "gtk_paper_size_to_gvariant", LIBRARY_GTK);
	Linker.link(gtk_paper_size_to_key_file, "gtk_paper_size_to_key_file", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_default, "gtk_paper_size_get_default", LIBRARY_GTK);
	Linker.link(gtk_paper_size_get_paper_sizes, "gtk_paper_size_get_paper_sizes", LIBRARY_GTK);

	// gtk.ParamSpecExpression

	Linker.link(gtk_param_expression_get_type, "gtk_param_expression_get_type", LIBRARY_GTK);

	// gtk.PasswordEntry

	Linker.link(gtk_password_entry_get_type, "gtk_password_entry_get_type", LIBRARY_GTK);
	Linker.link(gtk_password_entry_new, "gtk_password_entry_new", LIBRARY_GTK);
	Linker.link(gtk_password_entry_get_extra_menu, "gtk_password_entry_get_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_password_entry_get_show_peek_icon, "gtk_password_entry_get_show_peek_icon", LIBRARY_GTK);
	Linker.link(gtk_password_entry_set_extra_menu, "gtk_password_entry_set_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_password_entry_set_show_peek_icon, "gtk_password_entry_set_show_peek_icon", LIBRARY_GTK);

	// gtk.PasswordEntryBuffer

	Linker.link(gtk_password_entry_buffer_get_type, "gtk_password_entry_buffer_get_type", LIBRARY_GTK);
	Linker.link(gtk_password_entry_buffer_new, "gtk_password_entry_buffer_new", LIBRARY_GTK);

	// gtk.Picture

	Linker.link(gtk_picture_get_type, "gtk_picture_get_type", LIBRARY_GTK);
	Linker.link(gtk_picture_new, "gtk_picture_new", LIBRARY_GTK);
	Linker.link(gtk_picture_new_for_file, "gtk_picture_new_for_file", LIBRARY_GTK);
	Linker.link(gtk_picture_new_for_filename, "gtk_picture_new_for_filename", LIBRARY_GTK);
	Linker.link(gtk_picture_new_for_paintable, "gtk_picture_new_for_paintable", LIBRARY_GTK);
	Linker.link(gtk_picture_new_for_pixbuf, "gtk_picture_new_for_pixbuf", LIBRARY_GTK);
	Linker.link(gtk_picture_new_for_resource, "gtk_picture_new_for_resource", LIBRARY_GTK);
	Linker.link(gtk_picture_get_alternative_text, "gtk_picture_get_alternative_text", LIBRARY_GTK);
	Linker.link(gtk_picture_get_can_shrink, "gtk_picture_get_can_shrink", LIBRARY_GTK);
	Linker.link(gtk_picture_get_file, "gtk_picture_get_file", LIBRARY_GTK);
	Linker.link(gtk_picture_get_keep_aspect_ratio, "gtk_picture_get_keep_aspect_ratio", LIBRARY_GTK);
	Linker.link(gtk_picture_get_paintable, "gtk_picture_get_paintable", LIBRARY_GTK);
	Linker.link(gtk_picture_set_alternative_text, "gtk_picture_set_alternative_text", LIBRARY_GTK);
	Linker.link(gtk_picture_set_can_shrink, "gtk_picture_set_can_shrink", LIBRARY_GTK);
	Linker.link(gtk_picture_set_file, "gtk_picture_set_file", LIBRARY_GTK);
	Linker.link(gtk_picture_set_filename, "gtk_picture_set_filename", LIBRARY_GTK);
	Linker.link(gtk_picture_set_keep_aspect_ratio, "gtk_picture_set_keep_aspect_ratio", LIBRARY_GTK);
	Linker.link(gtk_picture_set_paintable, "gtk_picture_set_paintable", LIBRARY_GTK);
	Linker.link(gtk_picture_set_pixbuf, "gtk_picture_set_pixbuf", LIBRARY_GTK);
	Linker.link(gtk_picture_set_resource, "gtk_picture_set_resource", LIBRARY_GTK);

	// gtk.Popover

	Linker.link(gtk_popover_get_type, "gtk_popover_get_type", LIBRARY_GTK);
	Linker.link(gtk_popover_new, "gtk_popover_new", LIBRARY_GTK);
	Linker.link(gtk_popover_get_autohide, "gtk_popover_get_autohide", LIBRARY_GTK);
	Linker.link(gtk_popover_get_cascade_popdown, "gtk_popover_get_cascade_popdown", LIBRARY_GTK);
	Linker.link(gtk_popover_get_child, "gtk_popover_get_child", LIBRARY_GTK);
	Linker.link(gtk_popover_get_has_arrow, "gtk_popover_get_has_arrow", LIBRARY_GTK);
	Linker.link(gtk_popover_get_mnemonics_visible, "gtk_popover_get_mnemonics_visible", LIBRARY_GTK);
	Linker.link(gtk_popover_get_offset, "gtk_popover_get_offset", LIBRARY_GTK);
	Linker.link(gtk_popover_get_pointing_to, "gtk_popover_get_pointing_to", LIBRARY_GTK);
	Linker.link(gtk_popover_get_position, "gtk_popover_get_position", LIBRARY_GTK);
	Linker.link(gtk_popover_popdown, "gtk_popover_popdown", LIBRARY_GTK);
	Linker.link(gtk_popover_popup, "gtk_popover_popup", LIBRARY_GTK);
	Linker.link(gtk_popover_present, "gtk_popover_present", LIBRARY_GTK);
	Linker.link(gtk_popover_set_autohide, "gtk_popover_set_autohide", LIBRARY_GTK);
	Linker.link(gtk_popover_set_cascade_popdown, "gtk_popover_set_cascade_popdown", LIBRARY_GTK);
	Linker.link(gtk_popover_set_child, "gtk_popover_set_child", LIBRARY_GTK);
	Linker.link(gtk_popover_set_default_widget, "gtk_popover_set_default_widget", LIBRARY_GTK);
	Linker.link(gtk_popover_set_has_arrow, "gtk_popover_set_has_arrow", LIBRARY_GTK);
	Linker.link(gtk_popover_set_mnemonics_visible, "gtk_popover_set_mnemonics_visible", LIBRARY_GTK);
	Linker.link(gtk_popover_set_offset, "gtk_popover_set_offset", LIBRARY_GTK);
	Linker.link(gtk_popover_set_pointing_to, "gtk_popover_set_pointing_to", LIBRARY_GTK);
	Linker.link(gtk_popover_set_position, "gtk_popover_set_position", LIBRARY_GTK);

	// gtk.PopoverMenu

	Linker.link(gtk_popover_menu_get_type, "gtk_popover_menu_get_type", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_new_from_model, "gtk_popover_menu_new_from_model", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_new_from_model_full, "gtk_popover_menu_new_from_model_full", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_add_child, "gtk_popover_menu_add_child", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_get_menu_model, "gtk_popover_menu_get_menu_model", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_remove_child, "gtk_popover_menu_remove_child", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_set_menu_model, "gtk_popover_menu_set_menu_model", LIBRARY_GTK);

	// gtk.PopoverMenuBar

	Linker.link(gtk_popover_menu_bar_get_type, "gtk_popover_menu_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_bar_new_from_model, "gtk_popover_menu_bar_new_from_model", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_bar_add_child, "gtk_popover_menu_bar_add_child", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_bar_get_menu_model, "gtk_popover_menu_bar_get_menu_model", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_bar_remove_child, "gtk_popover_menu_bar_remove_child", LIBRARY_GTK);
	Linker.link(gtk_popover_menu_bar_set_menu_model, "gtk_popover_menu_bar_set_menu_model", LIBRARY_GTK);

	// gtk.PrintContext

	Linker.link(gtk_print_context_get_type, "gtk_print_context_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_context_create_pango_context, "gtk_print_context_create_pango_context", LIBRARY_GTK);
	Linker.link(gtk_print_context_create_pango_layout, "gtk_print_context_create_pango_layout", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_cairo_context, "gtk_print_context_get_cairo_context", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_dpi_x, "gtk_print_context_get_dpi_x", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_dpi_y, "gtk_print_context_get_dpi_y", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_hard_margins, "gtk_print_context_get_hard_margins", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_height, "gtk_print_context_get_height", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_page_setup, "gtk_print_context_get_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_pango_fontmap, "gtk_print_context_get_pango_fontmap", LIBRARY_GTK);
	Linker.link(gtk_print_context_get_width, "gtk_print_context_get_width", LIBRARY_GTK);
	Linker.link(gtk_print_context_set_cairo_context, "gtk_print_context_set_cairo_context", LIBRARY_GTK);

	// gtk.PrintJob

	Linker.link(gtk_print_job_get_type, "gtk_print_job_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_job_new, "gtk_print_job_new", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_collate, "gtk_print_job_get_collate", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_n_up, "gtk_print_job_get_n_up", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_n_up_layout, "gtk_print_job_get_n_up_layout", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_num_copies, "gtk_print_job_get_num_copies", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_page_ranges, "gtk_print_job_get_page_ranges", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_page_set, "gtk_print_job_get_page_set", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_pages, "gtk_print_job_get_pages", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_printer, "gtk_print_job_get_printer", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_reverse, "gtk_print_job_get_reverse", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_rotate, "gtk_print_job_get_rotate", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_scale, "gtk_print_job_get_scale", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_settings, "gtk_print_job_get_settings", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_status, "gtk_print_job_get_status", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_surface, "gtk_print_job_get_surface", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_title, "gtk_print_job_get_title", LIBRARY_GTK);
	Linker.link(gtk_print_job_get_track_print_status, "gtk_print_job_get_track_print_status", LIBRARY_GTK);
	Linker.link(gtk_print_job_send, "gtk_print_job_send", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_collate, "gtk_print_job_set_collate", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_n_up, "gtk_print_job_set_n_up", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_n_up_layout, "gtk_print_job_set_n_up_layout", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_num_copies, "gtk_print_job_set_num_copies", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_page_ranges, "gtk_print_job_set_page_ranges", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_page_set, "gtk_print_job_set_page_set", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_pages, "gtk_print_job_set_pages", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_reverse, "gtk_print_job_set_reverse", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_rotate, "gtk_print_job_set_rotate", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_scale, "gtk_print_job_set_scale", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_source_fd, "gtk_print_job_set_source_fd", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_source_file, "gtk_print_job_set_source_file", LIBRARY_GTK);
	Linker.link(gtk_print_job_set_track_print_status, "gtk_print_job_set_track_print_status", LIBRARY_GTK);

	// gtk.PrintOperation

	Linker.link(gtk_print_operation_get_type, "gtk_print_operation_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_operation_new, "gtk_print_operation_new", LIBRARY_GTK);
	Linker.link(gtk_print_operation_cancel, "gtk_print_operation_cancel", LIBRARY_GTK);
	Linker.link(gtk_print_operation_draw_page_finish, "gtk_print_operation_draw_page_finish", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_default_page_setup, "gtk_print_operation_get_default_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_embed_page_setup, "gtk_print_operation_get_embed_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_error, "gtk_print_operation_get_error", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_has_selection, "gtk_print_operation_get_has_selection", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_n_pages_to_print, "gtk_print_operation_get_n_pages_to_print", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_print_settings, "gtk_print_operation_get_print_settings", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_status, "gtk_print_operation_get_status", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_status_string, "gtk_print_operation_get_status_string", LIBRARY_GTK);
	Linker.link(gtk_print_operation_get_support_selection, "gtk_print_operation_get_support_selection", LIBRARY_GTK);
	Linker.link(gtk_print_operation_is_finished, "gtk_print_operation_is_finished", LIBRARY_GTK);
	Linker.link(gtk_print_operation_run, "gtk_print_operation_run", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_allow_async, "gtk_print_operation_set_allow_async", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_current_page, "gtk_print_operation_set_current_page", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_custom_tab_label, "gtk_print_operation_set_custom_tab_label", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_default_page_setup, "gtk_print_operation_set_default_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_defer_drawing, "gtk_print_operation_set_defer_drawing", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_embed_page_setup, "gtk_print_operation_set_embed_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_export_filename, "gtk_print_operation_set_export_filename", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_has_selection, "gtk_print_operation_set_has_selection", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_job_name, "gtk_print_operation_set_job_name", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_n_pages, "gtk_print_operation_set_n_pages", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_print_settings, "gtk_print_operation_set_print_settings", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_show_progress, "gtk_print_operation_set_show_progress", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_support_selection, "gtk_print_operation_set_support_selection", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_track_print_status, "gtk_print_operation_set_track_print_status", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_unit, "gtk_print_operation_set_unit", LIBRARY_GTK);
	Linker.link(gtk_print_operation_set_use_full_page, "gtk_print_operation_set_use_full_page", LIBRARY_GTK);

	// gtk.PrintOperationPreview

	Linker.link(gtk_print_operation_preview_get_type, "gtk_print_operation_preview_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_operation_preview_end_preview, "gtk_print_operation_preview_end_preview", LIBRARY_GTK);
	Linker.link(gtk_print_operation_preview_is_selected, "gtk_print_operation_preview_is_selected", LIBRARY_GTK);
	Linker.link(gtk_print_operation_preview_render_page, "gtk_print_operation_preview_render_page", LIBRARY_GTK);

	// gtk.PrintSettings

	Linker.link(gtk_print_settings_get_type, "gtk_print_settings_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_settings_new, "gtk_print_settings_new", LIBRARY_GTK);
	Linker.link(gtk_print_settings_new_from_file, "gtk_print_settings_new_from_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_new_from_gvariant, "gtk_print_settings_new_from_gvariant", LIBRARY_GTK);
	Linker.link(gtk_print_settings_new_from_key_file, "gtk_print_settings_new_from_key_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_copy, "gtk_print_settings_copy", LIBRARY_GTK);
	Linker.link(gtk_print_settings_foreach, "gtk_print_settings_foreach", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get, "gtk_print_settings_get", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_bool, "gtk_print_settings_get_bool", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_collate, "gtk_print_settings_get_collate", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_default_source, "gtk_print_settings_get_default_source", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_dither, "gtk_print_settings_get_dither", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_double, "gtk_print_settings_get_double", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_double_with_default, "gtk_print_settings_get_double_with_default", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_duplex, "gtk_print_settings_get_duplex", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_finishings, "gtk_print_settings_get_finishings", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_int, "gtk_print_settings_get_int", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_int_with_default, "gtk_print_settings_get_int_with_default", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_length, "gtk_print_settings_get_length", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_media_type, "gtk_print_settings_get_media_type", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_n_copies, "gtk_print_settings_get_n_copies", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_number_up, "gtk_print_settings_get_number_up", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_number_up_layout, "gtk_print_settings_get_number_up_layout", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_orientation, "gtk_print_settings_get_orientation", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_output_bin, "gtk_print_settings_get_output_bin", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_page_ranges, "gtk_print_settings_get_page_ranges", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_page_set, "gtk_print_settings_get_page_set", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_paper_height, "gtk_print_settings_get_paper_height", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_paper_size, "gtk_print_settings_get_paper_size", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_paper_width, "gtk_print_settings_get_paper_width", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_print_pages, "gtk_print_settings_get_print_pages", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_printer, "gtk_print_settings_get_printer", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_printer_lpi, "gtk_print_settings_get_printer_lpi", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_quality, "gtk_print_settings_get_quality", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_resolution, "gtk_print_settings_get_resolution", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_resolution_x, "gtk_print_settings_get_resolution_x", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_resolution_y, "gtk_print_settings_get_resolution_y", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_reverse, "gtk_print_settings_get_reverse", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_scale, "gtk_print_settings_get_scale", LIBRARY_GTK);
	Linker.link(gtk_print_settings_get_use_color, "gtk_print_settings_get_use_color", LIBRARY_GTK);
	Linker.link(gtk_print_settings_has_key, "gtk_print_settings_has_key", LIBRARY_GTK);
	Linker.link(gtk_print_settings_load_file, "gtk_print_settings_load_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_load_key_file, "gtk_print_settings_load_key_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set, "gtk_print_settings_set", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_bool, "gtk_print_settings_set_bool", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_collate, "gtk_print_settings_set_collate", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_default_source, "gtk_print_settings_set_default_source", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_dither, "gtk_print_settings_set_dither", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_double, "gtk_print_settings_set_double", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_duplex, "gtk_print_settings_set_duplex", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_finishings, "gtk_print_settings_set_finishings", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_int, "gtk_print_settings_set_int", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_length, "gtk_print_settings_set_length", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_media_type, "gtk_print_settings_set_media_type", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_n_copies, "gtk_print_settings_set_n_copies", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_number_up, "gtk_print_settings_set_number_up", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_number_up_layout, "gtk_print_settings_set_number_up_layout", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_orientation, "gtk_print_settings_set_orientation", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_output_bin, "gtk_print_settings_set_output_bin", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_page_ranges, "gtk_print_settings_set_page_ranges", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_page_set, "gtk_print_settings_set_page_set", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_paper_height, "gtk_print_settings_set_paper_height", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_paper_size, "gtk_print_settings_set_paper_size", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_paper_width, "gtk_print_settings_set_paper_width", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_print_pages, "gtk_print_settings_set_print_pages", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_printer, "gtk_print_settings_set_printer", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_printer_lpi, "gtk_print_settings_set_printer_lpi", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_quality, "gtk_print_settings_set_quality", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_resolution, "gtk_print_settings_set_resolution", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_resolution_xy, "gtk_print_settings_set_resolution_xy", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_reverse, "gtk_print_settings_set_reverse", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_scale, "gtk_print_settings_set_scale", LIBRARY_GTK);
	Linker.link(gtk_print_settings_set_use_color, "gtk_print_settings_set_use_color", LIBRARY_GTK);
	Linker.link(gtk_print_settings_to_file, "gtk_print_settings_to_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_to_gvariant, "gtk_print_settings_to_gvariant", LIBRARY_GTK);
	Linker.link(gtk_print_settings_to_key_file, "gtk_print_settings_to_key_file", LIBRARY_GTK);
	Linker.link(gtk_print_settings_unset, "gtk_print_settings_unset", LIBRARY_GTK);

	// gtk.PrintUnixDialog

	Linker.link(gtk_print_unix_dialog_get_type, "gtk_print_unix_dialog_get_type", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_new, "gtk_print_unix_dialog_new", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_add_custom_tab, "gtk_print_unix_dialog_add_custom_tab", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_current_page, "gtk_print_unix_dialog_get_current_page", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_embed_page_setup, "gtk_print_unix_dialog_get_embed_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_has_selection, "gtk_print_unix_dialog_get_has_selection", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_manual_capabilities, "gtk_print_unix_dialog_get_manual_capabilities", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_page_setup, "gtk_print_unix_dialog_get_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_page_setup_set, "gtk_print_unix_dialog_get_page_setup_set", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_selected_printer, "gtk_print_unix_dialog_get_selected_printer", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_settings, "gtk_print_unix_dialog_get_settings", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_get_support_selection, "gtk_print_unix_dialog_get_support_selection", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_current_page, "gtk_print_unix_dialog_set_current_page", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_embed_page_setup, "gtk_print_unix_dialog_set_embed_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_has_selection, "gtk_print_unix_dialog_set_has_selection", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_manual_capabilities, "gtk_print_unix_dialog_set_manual_capabilities", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_page_setup, "gtk_print_unix_dialog_set_page_setup", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_settings, "gtk_print_unix_dialog_set_settings", LIBRARY_GTK);
	Linker.link(gtk_print_unix_dialog_set_support_selection, "gtk_print_unix_dialog_set_support_selection", LIBRARY_GTK);

	// gtk.Printer

	Linker.link(gtk_printer_get_type, "gtk_printer_get_type", LIBRARY_GTK);
	Linker.link(gtk_printer_new, "gtk_printer_new", LIBRARY_GTK);
	Linker.link(gtk_printer_accepts_pdf, "gtk_printer_accepts_pdf", LIBRARY_GTK);
	Linker.link(gtk_printer_accepts_ps, "gtk_printer_accepts_ps", LIBRARY_GTK);
	Linker.link(gtk_printer_compare, "gtk_printer_compare", LIBRARY_GTK);
	Linker.link(gtk_printer_get_backend, "gtk_printer_get_backend", LIBRARY_GTK);
	Linker.link(gtk_printer_get_capabilities, "gtk_printer_get_capabilities", LIBRARY_GTK);
	Linker.link(gtk_printer_get_default_page_size, "gtk_printer_get_default_page_size", LIBRARY_GTK);
	Linker.link(gtk_printer_get_description, "gtk_printer_get_description", LIBRARY_GTK);
	Linker.link(gtk_printer_get_hard_margins, "gtk_printer_get_hard_margins", LIBRARY_GTK);
	Linker.link(gtk_printer_get_hard_margins_for_paper_size, "gtk_printer_get_hard_margins_for_paper_size", LIBRARY_GTK);
	Linker.link(gtk_printer_get_icon_name, "gtk_printer_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_printer_get_job_count, "gtk_printer_get_job_count", LIBRARY_GTK);
	Linker.link(gtk_printer_get_location, "gtk_printer_get_location", LIBRARY_GTK);
	Linker.link(gtk_printer_get_name, "gtk_printer_get_name", LIBRARY_GTK);
	Linker.link(gtk_printer_get_state_message, "gtk_printer_get_state_message", LIBRARY_GTK);
	Linker.link(gtk_printer_has_details, "gtk_printer_has_details", LIBRARY_GTK);
	Linker.link(gtk_printer_is_accepting_jobs, "gtk_printer_is_accepting_jobs", LIBRARY_GTK);
	Linker.link(gtk_printer_is_active, "gtk_printer_is_active", LIBRARY_GTK);
	Linker.link(gtk_printer_is_default, "gtk_printer_is_default", LIBRARY_GTK);
	Linker.link(gtk_printer_is_paused, "gtk_printer_is_paused", LIBRARY_GTK);
	Linker.link(gtk_printer_is_virtual, "gtk_printer_is_virtual", LIBRARY_GTK);
	Linker.link(gtk_printer_list_papers, "gtk_printer_list_papers", LIBRARY_GTK);
	Linker.link(gtk_printer_request_details, "gtk_printer_request_details", LIBRARY_GTK);

	// gtk.ProgressBar

	Linker.link(gtk_progress_bar_get_type, "gtk_progress_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_new, "gtk_progress_bar_new", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_ellipsize, "gtk_progress_bar_get_ellipsize", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_fraction, "gtk_progress_bar_get_fraction", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_inverted, "gtk_progress_bar_get_inverted", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_pulse_step, "gtk_progress_bar_get_pulse_step", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_show_text, "gtk_progress_bar_get_show_text", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_get_text, "gtk_progress_bar_get_text", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_pulse, "gtk_progress_bar_pulse", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_ellipsize, "gtk_progress_bar_set_ellipsize", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_fraction, "gtk_progress_bar_set_fraction", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_inverted, "gtk_progress_bar_set_inverted", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_pulse_step, "gtk_progress_bar_set_pulse_step", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_show_text, "gtk_progress_bar_set_show_text", LIBRARY_GTK);
	Linker.link(gtk_progress_bar_set_text, "gtk_progress_bar_set_text", LIBRARY_GTK);

	// gtk.PropertyExpression

	Linker.link(gtk_property_expression_get_type, "gtk_property_expression_get_type", LIBRARY_GTK);
	Linker.link(gtk_property_expression_new, "gtk_property_expression_new", LIBRARY_GTK);
	Linker.link(gtk_property_expression_new_for_pspec, "gtk_property_expression_new_for_pspec", LIBRARY_GTK);
	Linker.link(gtk_property_expression_get_expression, "gtk_property_expression_get_expression", LIBRARY_GTK);
	Linker.link(gtk_property_expression_get_pspec, "gtk_property_expression_get_pspec", LIBRARY_GTK);

	// gtk.Range

	Linker.link(gtk_range_get_type, "gtk_range_get_type", LIBRARY_GTK);
	Linker.link(gtk_range_get_adjustment, "gtk_range_get_adjustment", LIBRARY_GTK);
	Linker.link(gtk_range_get_fill_level, "gtk_range_get_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_get_flippable, "gtk_range_get_flippable", LIBRARY_GTK);
	Linker.link(gtk_range_get_inverted, "gtk_range_get_inverted", LIBRARY_GTK);
	Linker.link(gtk_range_get_range_rect, "gtk_range_get_range_rect", LIBRARY_GTK);
	Linker.link(gtk_range_get_restrict_to_fill_level, "gtk_range_get_restrict_to_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_get_round_digits, "gtk_range_get_round_digits", LIBRARY_GTK);
	Linker.link(gtk_range_get_show_fill_level, "gtk_range_get_show_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_get_slider_range, "gtk_range_get_slider_range", LIBRARY_GTK);
	Linker.link(gtk_range_get_slider_size_fixed, "gtk_range_get_slider_size_fixed", LIBRARY_GTK);
	Linker.link(gtk_range_get_value, "gtk_range_get_value", LIBRARY_GTK);
	Linker.link(gtk_range_set_adjustment, "gtk_range_set_adjustment", LIBRARY_GTK);
	Linker.link(gtk_range_set_fill_level, "gtk_range_set_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_set_flippable, "gtk_range_set_flippable", LIBRARY_GTK);
	Linker.link(gtk_range_set_increments, "gtk_range_set_increments", LIBRARY_GTK);
	Linker.link(gtk_range_set_inverted, "gtk_range_set_inverted", LIBRARY_GTK);
	Linker.link(gtk_range_set_range, "gtk_range_set_range", LIBRARY_GTK);
	Linker.link(gtk_range_set_restrict_to_fill_level, "gtk_range_set_restrict_to_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_set_round_digits, "gtk_range_set_round_digits", LIBRARY_GTK);
	Linker.link(gtk_range_set_show_fill_level, "gtk_range_set_show_fill_level", LIBRARY_GTK);
	Linker.link(gtk_range_set_slider_size_fixed, "gtk_range_set_slider_size_fixed", LIBRARY_GTK);
	Linker.link(gtk_range_set_value, "gtk_range_set_value", LIBRARY_GTK);

	// gtk.RecentInfo

	Linker.link(gtk_recent_info_get_type, "gtk_recent_info_get_type", LIBRARY_GTK);
	Linker.link(gtk_recent_info_create_app_info, "gtk_recent_info_create_app_info", LIBRARY_GTK);
	Linker.link(gtk_recent_info_exists, "gtk_recent_info_exists", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_added, "gtk_recent_info_get_added", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_age, "gtk_recent_info_get_age", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_application_info, "gtk_recent_info_get_application_info", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_applications, "gtk_recent_info_get_applications", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_description, "gtk_recent_info_get_description", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_display_name, "gtk_recent_info_get_display_name", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_gicon, "gtk_recent_info_get_gicon", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_groups, "gtk_recent_info_get_groups", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_mime_type, "gtk_recent_info_get_mime_type", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_modified, "gtk_recent_info_get_modified", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_private_hint, "gtk_recent_info_get_private_hint", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_short_name, "gtk_recent_info_get_short_name", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_uri, "gtk_recent_info_get_uri", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_uri_display, "gtk_recent_info_get_uri_display", LIBRARY_GTK);
	Linker.link(gtk_recent_info_get_visited, "gtk_recent_info_get_visited", LIBRARY_GTK);
	Linker.link(gtk_recent_info_has_application, "gtk_recent_info_has_application", LIBRARY_GTK);
	Linker.link(gtk_recent_info_has_group, "gtk_recent_info_has_group", LIBRARY_GTK);
	Linker.link(gtk_recent_info_is_local, "gtk_recent_info_is_local", LIBRARY_GTK);
	Linker.link(gtk_recent_info_last_application, "gtk_recent_info_last_application", LIBRARY_GTK);
	Linker.link(gtk_recent_info_match, "gtk_recent_info_match", LIBRARY_GTK);
	Linker.link(gtk_recent_info_ref, "gtk_recent_info_ref", LIBRARY_GTK);
	Linker.link(gtk_recent_info_unref, "gtk_recent_info_unref", LIBRARY_GTK);

	// gtk.RecentManager

	Linker.link(gtk_recent_manager_get_type, "gtk_recent_manager_get_type", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_new, "gtk_recent_manager_new", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_get_default, "gtk_recent_manager_get_default", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_add_full, "gtk_recent_manager_add_full", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_add_item, "gtk_recent_manager_add_item", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_get_items, "gtk_recent_manager_get_items", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_has_item, "gtk_recent_manager_has_item", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_lookup_item, "gtk_recent_manager_lookup_item", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_move_item, "gtk_recent_manager_move_item", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_purge_items, "gtk_recent_manager_purge_items", LIBRARY_GTK);
	Linker.link(gtk_recent_manager_remove_item, "gtk_recent_manager_remove_item", LIBRARY_GTK);

	// gtk.Requisition

	Linker.link(gtk_requisition_get_type, "gtk_requisition_get_type", LIBRARY_GTK);
	Linker.link(gtk_requisition_new, "gtk_requisition_new", LIBRARY_GTK);
	Linker.link(gtk_requisition_copy, "gtk_requisition_copy", LIBRARY_GTK);
	Linker.link(gtk_requisition_free, "gtk_requisition_free", LIBRARY_GTK);

	// gtk.Revealer

	Linker.link(gtk_revealer_get_type, "gtk_revealer_get_type", LIBRARY_GTK);
	Linker.link(gtk_revealer_new, "gtk_revealer_new", LIBRARY_GTK);
	Linker.link(gtk_revealer_get_child, "gtk_revealer_get_child", LIBRARY_GTK);
	Linker.link(gtk_revealer_get_child_revealed, "gtk_revealer_get_child_revealed", LIBRARY_GTK);
	Linker.link(gtk_revealer_get_reveal_child, "gtk_revealer_get_reveal_child", LIBRARY_GTK);
	Linker.link(gtk_revealer_get_transition_duration, "gtk_revealer_get_transition_duration", LIBRARY_GTK);
	Linker.link(gtk_revealer_get_transition_type, "gtk_revealer_get_transition_type", LIBRARY_GTK);
	Linker.link(gtk_revealer_set_child, "gtk_revealer_set_child", LIBRARY_GTK);
	Linker.link(gtk_revealer_set_reveal_child, "gtk_revealer_set_reveal_child", LIBRARY_GTK);
	Linker.link(gtk_revealer_set_transition_duration, "gtk_revealer_set_transition_duration", LIBRARY_GTK);
	Linker.link(gtk_revealer_set_transition_type, "gtk_revealer_set_transition_type", LIBRARY_GTK);

	// gtk.Root

	Linker.link(gtk_root_get_type, "gtk_root_get_type", LIBRARY_GTK);
	Linker.link(gtk_root_get_display, "gtk_root_get_display", LIBRARY_GTK);
	Linker.link(gtk_root_get_focus, "gtk_root_get_focus", LIBRARY_GTK);
	Linker.link(gtk_root_set_focus, "gtk_root_set_focus", LIBRARY_GTK);

	// gtk.Scale

	Linker.link(gtk_scale_get_type, "gtk_scale_get_type", LIBRARY_GTK);
	Linker.link(gtk_scale_new, "gtk_scale_new", LIBRARY_GTK);
	Linker.link(gtk_scale_new_with_range, "gtk_scale_new_with_range", LIBRARY_GTK);
	Linker.link(gtk_scale_add_mark, "gtk_scale_add_mark", LIBRARY_GTK);
	Linker.link(gtk_scale_clear_marks, "gtk_scale_clear_marks", LIBRARY_GTK);
	Linker.link(gtk_scale_get_digits, "gtk_scale_get_digits", LIBRARY_GTK);
	Linker.link(gtk_scale_get_draw_value, "gtk_scale_get_draw_value", LIBRARY_GTK);
	Linker.link(gtk_scale_get_has_origin, "gtk_scale_get_has_origin", LIBRARY_GTK);
	Linker.link(gtk_scale_get_layout, "gtk_scale_get_layout", LIBRARY_GTK);
	Linker.link(gtk_scale_get_layout_offsets, "gtk_scale_get_layout_offsets", LIBRARY_GTK);
	Linker.link(gtk_scale_get_value_pos, "gtk_scale_get_value_pos", LIBRARY_GTK);
	Linker.link(gtk_scale_set_digits, "gtk_scale_set_digits", LIBRARY_GTK);
	Linker.link(gtk_scale_set_draw_value, "gtk_scale_set_draw_value", LIBRARY_GTK);
	Linker.link(gtk_scale_set_format_value_func, "gtk_scale_set_format_value_func", LIBRARY_GTK);
	Linker.link(gtk_scale_set_has_origin, "gtk_scale_set_has_origin", LIBRARY_GTK);
	Linker.link(gtk_scale_set_value_pos, "gtk_scale_set_value_pos", LIBRARY_GTK);

	// gtk.ScaleButton

	Linker.link(gtk_scale_button_get_type, "gtk_scale_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_scale_button_new, "gtk_scale_button_new", LIBRARY_GTK);
	Linker.link(gtk_scale_button_get_adjustment, "gtk_scale_button_get_adjustment", LIBRARY_GTK);
	Linker.link(gtk_scale_button_get_minus_button, "gtk_scale_button_get_minus_button", LIBRARY_GTK);
	Linker.link(gtk_scale_button_get_plus_button, "gtk_scale_button_get_plus_button", LIBRARY_GTK);
	Linker.link(gtk_scale_button_get_popup, "gtk_scale_button_get_popup", LIBRARY_GTK);
	Linker.link(gtk_scale_button_get_value, "gtk_scale_button_get_value", LIBRARY_GTK);
	Linker.link(gtk_scale_button_set_adjustment, "gtk_scale_button_set_adjustment", LIBRARY_GTK);
	Linker.link(gtk_scale_button_set_icons, "gtk_scale_button_set_icons", LIBRARY_GTK);
	Linker.link(gtk_scale_button_set_value, "gtk_scale_button_set_value", LIBRARY_GTK);

	// gtk.Scrollable

	Linker.link(gtk_scrollable_get_type, "gtk_scrollable_get_type", LIBRARY_GTK);
	Linker.link(gtk_scrollable_get_border, "gtk_scrollable_get_border", LIBRARY_GTK);
	Linker.link(gtk_scrollable_get_hadjustment, "gtk_scrollable_get_hadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrollable_get_hscroll_policy, "gtk_scrollable_get_hscroll_policy", LIBRARY_GTK);
	Linker.link(gtk_scrollable_get_vadjustment, "gtk_scrollable_get_vadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrollable_get_vscroll_policy, "gtk_scrollable_get_vscroll_policy", LIBRARY_GTK);
	Linker.link(gtk_scrollable_set_hadjustment, "gtk_scrollable_set_hadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrollable_set_hscroll_policy, "gtk_scrollable_set_hscroll_policy", LIBRARY_GTK);
	Linker.link(gtk_scrollable_set_vadjustment, "gtk_scrollable_set_vadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrollable_set_vscroll_policy, "gtk_scrollable_set_vscroll_policy", LIBRARY_GTK);

	// gtk.Scrollbar

	Linker.link(gtk_scrollbar_get_type, "gtk_scrollbar_get_type", LIBRARY_GTK);
	Linker.link(gtk_scrollbar_new, "gtk_scrollbar_new", LIBRARY_GTK);
	Linker.link(gtk_scrollbar_get_adjustment, "gtk_scrollbar_get_adjustment", LIBRARY_GTK);
	Linker.link(gtk_scrollbar_set_adjustment, "gtk_scrollbar_set_adjustment", LIBRARY_GTK);

	// gtk.ScrolledWindow

	Linker.link(gtk_scrolled_window_get_type, "gtk_scrolled_window_get_type", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_new, "gtk_scrolled_window_new", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_child, "gtk_scrolled_window_get_child", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_hadjustment, "gtk_scrolled_window_get_hadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_has_frame, "gtk_scrolled_window_get_has_frame", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_hscrollbar, "gtk_scrolled_window_get_hscrollbar", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_kinetic_scrolling, "gtk_scrolled_window_get_kinetic_scrolling", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_max_content_height, "gtk_scrolled_window_get_max_content_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_max_content_width, "gtk_scrolled_window_get_max_content_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_min_content_height, "gtk_scrolled_window_get_min_content_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_min_content_width, "gtk_scrolled_window_get_min_content_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_overlay_scrolling, "gtk_scrolled_window_get_overlay_scrolling", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_placement, "gtk_scrolled_window_get_placement", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_policy, "gtk_scrolled_window_get_policy", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_propagate_natural_height, "gtk_scrolled_window_get_propagate_natural_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_propagate_natural_width, "gtk_scrolled_window_get_propagate_natural_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_vadjustment, "gtk_scrolled_window_get_vadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_get_vscrollbar, "gtk_scrolled_window_get_vscrollbar", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_child, "gtk_scrolled_window_set_child", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_hadjustment, "gtk_scrolled_window_set_hadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_has_frame, "gtk_scrolled_window_set_has_frame", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_kinetic_scrolling, "gtk_scrolled_window_set_kinetic_scrolling", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_max_content_height, "gtk_scrolled_window_set_max_content_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_max_content_width, "gtk_scrolled_window_set_max_content_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_min_content_height, "gtk_scrolled_window_set_min_content_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_min_content_width, "gtk_scrolled_window_set_min_content_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_overlay_scrolling, "gtk_scrolled_window_set_overlay_scrolling", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_placement, "gtk_scrolled_window_set_placement", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_policy, "gtk_scrolled_window_set_policy", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_propagate_natural_height, "gtk_scrolled_window_set_propagate_natural_height", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_propagate_natural_width, "gtk_scrolled_window_set_propagate_natural_width", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_set_vadjustment, "gtk_scrolled_window_set_vadjustment", LIBRARY_GTK);
	Linker.link(gtk_scrolled_window_unset_placement, "gtk_scrolled_window_unset_placement", LIBRARY_GTK);

	// gtk.SearchBar

	Linker.link(gtk_search_bar_get_type, "gtk_search_bar_get_type", LIBRARY_GTK);
	Linker.link(gtk_search_bar_new, "gtk_search_bar_new", LIBRARY_GTK);
	Linker.link(gtk_search_bar_connect_entry, "gtk_search_bar_connect_entry", LIBRARY_GTK);
	Linker.link(gtk_search_bar_get_child, "gtk_search_bar_get_child", LIBRARY_GTK);
	Linker.link(gtk_search_bar_get_key_capture_widget, "gtk_search_bar_get_key_capture_widget", LIBRARY_GTK);
	Linker.link(gtk_search_bar_get_search_mode, "gtk_search_bar_get_search_mode", LIBRARY_GTK);
	Linker.link(gtk_search_bar_get_show_close_button, "gtk_search_bar_get_show_close_button", LIBRARY_GTK);
	Linker.link(gtk_search_bar_set_child, "gtk_search_bar_set_child", LIBRARY_GTK);
	Linker.link(gtk_search_bar_set_key_capture_widget, "gtk_search_bar_set_key_capture_widget", LIBRARY_GTK);
	Linker.link(gtk_search_bar_set_search_mode, "gtk_search_bar_set_search_mode", LIBRARY_GTK);
	Linker.link(gtk_search_bar_set_show_close_button, "gtk_search_bar_set_show_close_button", LIBRARY_GTK);

	// gtk.SearchEntry

	Linker.link(gtk_search_entry_get_type, "gtk_search_entry_get_type", LIBRARY_GTK);
	Linker.link(gtk_search_entry_new, "gtk_search_entry_new", LIBRARY_GTK);
	Linker.link(gtk_search_entry_get_key_capture_widget, "gtk_search_entry_get_key_capture_widget", LIBRARY_GTK);
	Linker.link(gtk_search_entry_set_key_capture_widget, "gtk_search_entry_set_key_capture_widget", LIBRARY_GTK);

	// gtk.SelectionFilterModel

	Linker.link(gtk_selection_filter_model_get_type, "gtk_selection_filter_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_selection_filter_model_new, "gtk_selection_filter_model_new", LIBRARY_GTK);
	Linker.link(gtk_selection_filter_model_get_model, "gtk_selection_filter_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_selection_filter_model_set_model, "gtk_selection_filter_model_set_model", LIBRARY_GTK);

	// gtk.SelectionModel

	Linker.link(gtk_selection_model_get_type, "gtk_selection_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_selection_model_get_selection, "gtk_selection_model_get_selection", LIBRARY_GTK);
	Linker.link(gtk_selection_model_get_selection_in_range, "gtk_selection_model_get_selection_in_range", LIBRARY_GTK);
	Linker.link(gtk_selection_model_is_selected, "gtk_selection_model_is_selected", LIBRARY_GTK);
	Linker.link(gtk_selection_model_select_all, "gtk_selection_model_select_all", LIBRARY_GTK);
	Linker.link(gtk_selection_model_select_item, "gtk_selection_model_select_item", LIBRARY_GTK);
	Linker.link(gtk_selection_model_select_range, "gtk_selection_model_select_range", LIBRARY_GTK);
	Linker.link(gtk_selection_model_selection_changed, "gtk_selection_model_selection_changed", LIBRARY_GTK);
	Linker.link(gtk_selection_model_set_selection, "gtk_selection_model_set_selection", LIBRARY_GTK);
	Linker.link(gtk_selection_model_unselect_all, "gtk_selection_model_unselect_all", LIBRARY_GTK);
	Linker.link(gtk_selection_model_unselect_item, "gtk_selection_model_unselect_item", LIBRARY_GTK);
	Linker.link(gtk_selection_model_unselect_range, "gtk_selection_model_unselect_range", LIBRARY_GTK);

	// gtk.Separator

	Linker.link(gtk_separator_get_type, "gtk_separator_get_type", LIBRARY_GTK);
	Linker.link(gtk_separator_new, "gtk_separator_new", LIBRARY_GTK);

	// gtk.Settings

	Linker.link(gtk_settings_get_type, "gtk_settings_get_type", LIBRARY_GTK);
	Linker.link(gtk_settings_get_default, "gtk_settings_get_default", LIBRARY_GTK);
	Linker.link(gtk_settings_get_for_display, "gtk_settings_get_for_display", LIBRARY_GTK);
	Linker.link(gtk_settings_reset_property, "gtk_settings_reset_property", LIBRARY_GTK);

	// gtk.Shortcut

	Linker.link(gtk_shortcut_get_type, "gtk_shortcut_get_type", LIBRARY_GTK);
	Linker.link(gtk_shortcut_new, "gtk_shortcut_new", LIBRARY_GTK);
	Linker.link(gtk_shortcut_new_with_arguments, "gtk_shortcut_new_with_arguments", LIBRARY_GTK);
	Linker.link(gtk_shortcut_get_action, "gtk_shortcut_get_action", LIBRARY_GTK);
	Linker.link(gtk_shortcut_get_arguments, "gtk_shortcut_get_arguments", LIBRARY_GTK);
	Linker.link(gtk_shortcut_get_trigger, "gtk_shortcut_get_trigger", LIBRARY_GTK);
	Linker.link(gtk_shortcut_set_action, "gtk_shortcut_set_action", LIBRARY_GTK);
	Linker.link(gtk_shortcut_set_arguments, "gtk_shortcut_set_arguments", LIBRARY_GTK);
	Linker.link(gtk_shortcut_set_trigger, "gtk_shortcut_set_trigger", LIBRARY_GTK);

	// gtk.ShortcutAction

	Linker.link(gtk_shortcut_action_get_type, "gtk_shortcut_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_shortcut_action_parse_string, "gtk_shortcut_action_parse_string", LIBRARY_GTK);
	Linker.link(gtk_shortcut_action_activate, "gtk_shortcut_action_activate", LIBRARY_GTK);
	Linker.link(gtk_shortcut_action_print, "gtk_shortcut_action_print", LIBRARY_GTK);
	Linker.link(gtk_shortcut_action_to_string, "gtk_shortcut_action_to_string", LIBRARY_GTK);

	// gtk.ShortcutController

	Linker.link(gtk_shortcut_controller_get_type, "gtk_shortcut_controller_get_type", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_new, "gtk_shortcut_controller_new", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_new_for_model, "gtk_shortcut_controller_new_for_model", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_add_shortcut, "gtk_shortcut_controller_add_shortcut", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_get_mnemonics_modifiers, "gtk_shortcut_controller_get_mnemonics_modifiers", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_get_scope, "gtk_shortcut_controller_get_scope", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_remove_shortcut, "gtk_shortcut_controller_remove_shortcut", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_set_mnemonics_modifiers, "gtk_shortcut_controller_set_mnemonics_modifiers", LIBRARY_GTK);
	Linker.link(gtk_shortcut_controller_set_scope, "gtk_shortcut_controller_set_scope", LIBRARY_GTK);

	// gtk.ShortcutLabel

	Linker.link(gtk_shortcut_label_get_type, "gtk_shortcut_label_get_type", LIBRARY_GTK);
	Linker.link(gtk_shortcut_label_new, "gtk_shortcut_label_new", LIBRARY_GTK);
	Linker.link(gtk_shortcut_label_get_accelerator, "gtk_shortcut_label_get_accelerator", LIBRARY_GTK);
	Linker.link(gtk_shortcut_label_get_disabled_text, "gtk_shortcut_label_get_disabled_text", LIBRARY_GTK);
	Linker.link(gtk_shortcut_label_set_accelerator, "gtk_shortcut_label_set_accelerator", LIBRARY_GTK);
	Linker.link(gtk_shortcut_label_set_disabled_text, "gtk_shortcut_label_set_disabled_text", LIBRARY_GTK);

	// gtk.ShortcutManager

	Linker.link(gtk_shortcut_manager_get_type, "gtk_shortcut_manager_get_type", LIBRARY_GTK);

	// gtk.ShortcutTrigger

	Linker.link(gtk_shortcut_trigger_get_type, "gtk_shortcut_trigger_get_type", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_parse_string, "gtk_shortcut_trigger_parse_string", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_compare, "gtk_shortcut_trigger_compare", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_equal, "gtk_shortcut_trigger_equal", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_hash, "gtk_shortcut_trigger_hash", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_print, "gtk_shortcut_trigger_print", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_print_label, "gtk_shortcut_trigger_print_label", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_to_label, "gtk_shortcut_trigger_to_label", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_to_string, "gtk_shortcut_trigger_to_string", LIBRARY_GTK);
	Linker.link(gtk_shortcut_trigger_trigger, "gtk_shortcut_trigger_trigger", LIBRARY_GTK);

	// gtk.ShortcutsGroup

	Linker.link(gtk_shortcuts_group_get_type, "gtk_shortcuts_group_get_type", LIBRARY_GTK);

	// gtk.ShortcutsSection

	Linker.link(gtk_shortcuts_section_get_type, "gtk_shortcuts_section_get_type", LIBRARY_GTK);

	// gtk.ShortcutsShortcut

	Linker.link(gtk_shortcuts_shortcut_get_type, "gtk_shortcuts_shortcut_get_type", LIBRARY_GTK);

	// gtk.ShortcutsWindow

	Linker.link(gtk_shortcuts_window_get_type, "gtk_shortcuts_window_get_type", LIBRARY_GTK);

	// gtk.SignalAction

	Linker.link(gtk_signal_action_get_type, "gtk_signal_action_get_type", LIBRARY_GTK);
	Linker.link(gtk_signal_action_new, "gtk_signal_action_new", LIBRARY_GTK);
	Linker.link(gtk_signal_action_get_signal_name, "gtk_signal_action_get_signal_name", LIBRARY_GTK);

	// gtk.SignalListItemFactory

	Linker.link(gtk_signal_list_item_factory_get_type, "gtk_signal_list_item_factory_get_type", LIBRARY_GTK);
	Linker.link(gtk_signal_list_item_factory_new, "gtk_signal_list_item_factory_new", LIBRARY_GTK);

	// gtk.SingleSelection

	Linker.link(gtk_single_selection_get_type, "gtk_single_selection_get_type", LIBRARY_GTK);
	Linker.link(gtk_single_selection_new, "gtk_single_selection_new", LIBRARY_GTK);
	Linker.link(gtk_single_selection_get_autoselect, "gtk_single_selection_get_autoselect", LIBRARY_GTK);
	Linker.link(gtk_single_selection_get_can_unselect, "gtk_single_selection_get_can_unselect", LIBRARY_GTK);
	Linker.link(gtk_single_selection_get_model, "gtk_single_selection_get_model", LIBRARY_GTK);
	Linker.link(gtk_single_selection_get_selected, "gtk_single_selection_get_selected", LIBRARY_GTK);
	Linker.link(gtk_single_selection_get_selected_item, "gtk_single_selection_get_selected_item", LIBRARY_GTK);
	Linker.link(gtk_single_selection_set_autoselect, "gtk_single_selection_set_autoselect", LIBRARY_GTK);
	Linker.link(gtk_single_selection_set_can_unselect, "gtk_single_selection_set_can_unselect", LIBRARY_GTK);
	Linker.link(gtk_single_selection_set_model, "gtk_single_selection_set_model", LIBRARY_GTK);
	Linker.link(gtk_single_selection_set_selected, "gtk_single_selection_set_selected", LIBRARY_GTK);

	// gtk.SizeGroup

	Linker.link(gtk_size_group_get_type, "gtk_size_group_get_type", LIBRARY_GTK);
	Linker.link(gtk_size_group_new, "gtk_size_group_new", LIBRARY_GTK);
	Linker.link(gtk_size_group_add_widget, "gtk_size_group_add_widget", LIBRARY_GTK);
	Linker.link(gtk_size_group_get_mode, "gtk_size_group_get_mode", LIBRARY_GTK);
	Linker.link(gtk_size_group_get_widgets, "gtk_size_group_get_widgets", LIBRARY_GTK);
	Linker.link(gtk_size_group_remove_widget, "gtk_size_group_remove_widget", LIBRARY_GTK);
	Linker.link(gtk_size_group_set_mode, "gtk_size_group_set_mode", LIBRARY_GTK);

	// gtk.SliceListModel

	Linker.link(gtk_slice_list_model_get_type, "gtk_slice_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_new, "gtk_slice_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_get_model, "gtk_slice_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_get_offset, "gtk_slice_list_model_get_offset", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_get_size, "gtk_slice_list_model_get_size", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_set_model, "gtk_slice_list_model_set_model", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_set_offset, "gtk_slice_list_model_set_offset", LIBRARY_GTK);
	Linker.link(gtk_slice_list_model_set_size, "gtk_slice_list_model_set_size", LIBRARY_GTK);

	// gtk.Snapshot

	Linker.link(gtk_snapshot_get_type, "gtk_snapshot_get_type", LIBRARY_GTK);
	Linker.link(gtk_snapshot_new, "gtk_snapshot_new", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_border, "gtk_snapshot_append_border", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_cairo, "gtk_snapshot_append_cairo", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_color, "gtk_snapshot_append_color", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_conic_gradient, "gtk_snapshot_append_conic_gradient", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_inset_shadow, "gtk_snapshot_append_inset_shadow", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_layout, "gtk_snapshot_append_layout", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_linear_gradient, "gtk_snapshot_append_linear_gradient", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_node, "gtk_snapshot_append_node", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_outset_shadow, "gtk_snapshot_append_outset_shadow", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_radial_gradient, "gtk_snapshot_append_radial_gradient", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_repeating_linear_gradient, "gtk_snapshot_append_repeating_linear_gradient", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_repeating_radial_gradient, "gtk_snapshot_append_repeating_radial_gradient", LIBRARY_GTK);
	Linker.link(gtk_snapshot_append_texture, "gtk_snapshot_append_texture", LIBRARY_GTK);
	Linker.link(gtk_snapshot_free_to_node, "gtk_snapshot_free_to_node", LIBRARY_GTK);
	Linker.link(gtk_snapshot_free_to_paintable, "gtk_snapshot_free_to_paintable", LIBRARY_GTK);
	Linker.link(gtk_snapshot_gl_shader_pop_texture, "gtk_snapshot_gl_shader_pop_texture", LIBRARY_GTK);
	Linker.link(gtk_snapshot_perspective, "gtk_snapshot_perspective", LIBRARY_GTK);
	Linker.link(gtk_snapshot_pop, "gtk_snapshot_pop", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_blend, "gtk_snapshot_push_blend", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_blur, "gtk_snapshot_push_blur", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_clip, "gtk_snapshot_push_clip", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_color_matrix, "gtk_snapshot_push_color_matrix", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_cross_fade, "gtk_snapshot_push_cross_fade", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_debug, "gtk_snapshot_push_debug", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_gl_shader, "gtk_snapshot_push_gl_shader", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_opacity, "gtk_snapshot_push_opacity", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_repeat, "gtk_snapshot_push_repeat", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_rounded_clip, "gtk_snapshot_push_rounded_clip", LIBRARY_GTK);
	Linker.link(gtk_snapshot_push_shadow, "gtk_snapshot_push_shadow", LIBRARY_GTK);
	Linker.link(gtk_snapshot_render_background, "gtk_snapshot_render_background", LIBRARY_GTK);
	Linker.link(gtk_snapshot_render_focus, "gtk_snapshot_render_focus", LIBRARY_GTK);
	Linker.link(gtk_snapshot_render_frame, "gtk_snapshot_render_frame", LIBRARY_GTK);
	Linker.link(gtk_snapshot_render_insertion_cursor, "gtk_snapshot_render_insertion_cursor", LIBRARY_GTK);
	Linker.link(gtk_snapshot_render_layout, "gtk_snapshot_render_layout", LIBRARY_GTK);
	Linker.link(gtk_snapshot_restore, "gtk_snapshot_restore", LIBRARY_GTK);
	Linker.link(gtk_snapshot_rotate, "gtk_snapshot_rotate", LIBRARY_GTK);
	Linker.link(gtk_snapshot_rotate_3d, "gtk_snapshot_rotate_3d", LIBRARY_GTK);
	Linker.link(gtk_snapshot_save, "gtk_snapshot_save", LIBRARY_GTK);
	Linker.link(gtk_snapshot_scale, "gtk_snapshot_scale", LIBRARY_GTK);
	Linker.link(gtk_snapshot_scale_3d, "gtk_snapshot_scale_3d", LIBRARY_GTK);
	Linker.link(gtk_snapshot_to_node, "gtk_snapshot_to_node", LIBRARY_GTK);
	Linker.link(gtk_snapshot_to_paintable, "gtk_snapshot_to_paintable", LIBRARY_GTK);
	Linker.link(gtk_snapshot_transform, "gtk_snapshot_transform", LIBRARY_GTK);
	Linker.link(gtk_snapshot_transform_matrix, "gtk_snapshot_transform_matrix", LIBRARY_GTK);
	Linker.link(gtk_snapshot_translate, "gtk_snapshot_translate", LIBRARY_GTK);
	Linker.link(gtk_snapshot_translate_3d, "gtk_snapshot_translate_3d", LIBRARY_GTK);

	// gtk.SortListModel

	Linker.link(gtk_sort_list_model_get_type, "gtk_sort_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_new, "gtk_sort_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_get_incremental, "gtk_sort_list_model_get_incremental", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_get_model, "gtk_sort_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_get_pending, "gtk_sort_list_model_get_pending", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_get_sorter, "gtk_sort_list_model_get_sorter", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_set_incremental, "gtk_sort_list_model_set_incremental", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_set_model, "gtk_sort_list_model_set_model", LIBRARY_GTK);
	Linker.link(gtk_sort_list_model_set_sorter, "gtk_sort_list_model_set_sorter", LIBRARY_GTK);

	// gtk.Sorter

	Linker.link(gtk_sorter_get_type, "gtk_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_sorter_changed, "gtk_sorter_changed", LIBRARY_GTK);
	Linker.link(gtk_sorter_compare, "gtk_sorter_compare", LIBRARY_GTK);
	Linker.link(gtk_sorter_get_order, "gtk_sorter_get_order", LIBRARY_GTK);

	// gtk.SpinButton

	Linker.link(gtk_spin_button_get_type, "gtk_spin_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_spin_button_new, "gtk_spin_button_new", LIBRARY_GTK);
	Linker.link(gtk_spin_button_new_with_range, "gtk_spin_button_new_with_range", LIBRARY_GTK);
	Linker.link(gtk_spin_button_configure, "gtk_spin_button_configure", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_adjustment, "gtk_spin_button_get_adjustment", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_climb_rate, "gtk_spin_button_get_climb_rate", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_digits, "gtk_spin_button_get_digits", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_increments, "gtk_spin_button_get_increments", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_numeric, "gtk_spin_button_get_numeric", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_range, "gtk_spin_button_get_range", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_snap_to_ticks, "gtk_spin_button_get_snap_to_ticks", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_update_policy, "gtk_spin_button_get_update_policy", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_value, "gtk_spin_button_get_value", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_value_as_int, "gtk_spin_button_get_value_as_int", LIBRARY_GTK);
	Linker.link(gtk_spin_button_get_wrap, "gtk_spin_button_get_wrap", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_adjustment, "gtk_spin_button_set_adjustment", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_climb_rate, "gtk_spin_button_set_climb_rate", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_digits, "gtk_spin_button_set_digits", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_increments, "gtk_spin_button_set_increments", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_numeric, "gtk_spin_button_set_numeric", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_range, "gtk_spin_button_set_range", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_snap_to_ticks, "gtk_spin_button_set_snap_to_ticks", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_update_policy, "gtk_spin_button_set_update_policy", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_value, "gtk_spin_button_set_value", LIBRARY_GTK);
	Linker.link(gtk_spin_button_set_wrap, "gtk_spin_button_set_wrap", LIBRARY_GTK);
	Linker.link(gtk_spin_button_spin, "gtk_spin_button_spin", LIBRARY_GTK);
	Linker.link(gtk_spin_button_update, "gtk_spin_button_update", LIBRARY_GTK);

	// gtk.Spinner

	Linker.link(gtk_spinner_get_type, "gtk_spinner_get_type", LIBRARY_GTK);
	Linker.link(gtk_spinner_new, "gtk_spinner_new", LIBRARY_GTK);
	Linker.link(gtk_spinner_get_spinning, "gtk_spinner_get_spinning", LIBRARY_GTK);
	Linker.link(gtk_spinner_set_spinning, "gtk_spinner_set_spinning", LIBRARY_GTK);
	Linker.link(gtk_spinner_start, "gtk_spinner_start", LIBRARY_GTK);
	Linker.link(gtk_spinner_stop, "gtk_spinner_stop", LIBRARY_GTK);

	// gtk.Stack

	Linker.link(gtk_stack_get_type, "gtk_stack_get_type", LIBRARY_GTK);
	Linker.link(gtk_stack_new, "gtk_stack_new", LIBRARY_GTK);
	Linker.link(gtk_stack_add_child, "gtk_stack_add_child", LIBRARY_GTK);
	Linker.link(gtk_stack_add_named, "gtk_stack_add_named", LIBRARY_GTK);
	Linker.link(gtk_stack_add_titled, "gtk_stack_add_titled", LIBRARY_GTK);
	Linker.link(gtk_stack_get_child_by_name, "gtk_stack_get_child_by_name", LIBRARY_GTK);
	Linker.link(gtk_stack_get_hhomogeneous, "gtk_stack_get_hhomogeneous", LIBRARY_GTK);
	Linker.link(gtk_stack_get_interpolate_size, "gtk_stack_get_interpolate_size", LIBRARY_GTK);
	Linker.link(gtk_stack_get_page, "gtk_stack_get_page", LIBRARY_GTK);
	Linker.link(gtk_stack_get_pages, "gtk_stack_get_pages", LIBRARY_GTK);
	Linker.link(gtk_stack_get_transition_duration, "gtk_stack_get_transition_duration", LIBRARY_GTK);
	Linker.link(gtk_stack_get_transition_running, "gtk_stack_get_transition_running", LIBRARY_GTK);
	Linker.link(gtk_stack_get_transition_type, "gtk_stack_get_transition_type", LIBRARY_GTK);
	Linker.link(gtk_stack_get_vhomogeneous, "gtk_stack_get_vhomogeneous", LIBRARY_GTK);
	Linker.link(gtk_stack_get_visible_child, "gtk_stack_get_visible_child", LIBRARY_GTK);
	Linker.link(gtk_stack_get_visible_child_name, "gtk_stack_get_visible_child_name", LIBRARY_GTK);
	Linker.link(gtk_stack_remove, "gtk_stack_remove", LIBRARY_GTK);
	Linker.link(gtk_stack_set_hhomogeneous, "gtk_stack_set_hhomogeneous", LIBRARY_GTK);
	Linker.link(gtk_stack_set_interpolate_size, "gtk_stack_set_interpolate_size", LIBRARY_GTK);
	Linker.link(gtk_stack_set_transition_duration, "gtk_stack_set_transition_duration", LIBRARY_GTK);
	Linker.link(gtk_stack_set_transition_type, "gtk_stack_set_transition_type", LIBRARY_GTK);
	Linker.link(gtk_stack_set_vhomogeneous, "gtk_stack_set_vhomogeneous", LIBRARY_GTK);
	Linker.link(gtk_stack_set_visible_child, "gtk_stack_set_visible_child", LIBRARY_GTK);
	Linker.link(gtk_stack_set_visible_child_full, "gtk_stack_set_visible_child_full", LIBRARY_GTK);
	Linker.link(gtk_stack_set_visible_child_name, "gtk_stack_set_visible_child_name", LIBRARY_GTK);

	// gtk.StackPage

	Linker.link(gtk_stack_page_get_type, "gtk_stack_page_get_type", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_child, "gtk_stack_page_get_child", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_icon_name, "gtk_stack_page_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_name, "gtk_stack_page_get_name", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_needs_attention, "gtk_stack_page_get_needs_attention", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_title, "gtk_stack_page_get_title", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_use_underline, "gtk_stack_page_get_use_underline", LIBRARY_GTK);
	Linker.link(gtk_stack_page_get_visible, "gtk_stack_page_get_visible", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_icon_name, "gtk_stack_page_set_icon_name", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_name, "gtk_stack_page_set_name", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_needs_attention, "gtk_stack_page_set_needs_attention", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_title, "gtk_stack_page_set_title", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_use_underline, "gtk_stack_page_set_use_underline", LIBRARY_GTK);
	Linker.link(gtk_stack_page_set_visible, "gtk_stack_page_set_visible", LIBRARY_GTK);

	// gtk.StackSidebar

	Linker.link(gtk_stack_sidebar_get_type, "gtk_stack_sidebar_get_type", LIBRARY_GTK);
	Linker.link(gtk_stack_sidebar_new, "gtk_stack_sidebar_new", LIBRARY_GTK);
	Linker.link(gtk_stack_sidebar_get_stack, "gtk_stack_sidebar_get_stack", LIBRARY_GTK);
	Linker.link(gtk_stack_sidebar_set_stack, "gtk_stack_sidebar_set_stack", LIBRARY_GTK);

	// gtk.StackSwitcher

	Linker.link(gtk_stack_switcher_get_type, "gtk_stack_switcher_get_type", LIBRARY_GTK);
	Linker.link(gtk_stack_switcher_new, "gtk_stack_switcher_new", LIBRARY_GTK);
	Linker.link(gtk_stack_switcher_get_stack, "gtk_stack_switcher_get_stack", LIBRARY_GTK);
	Linker.link(gtk_stack_switcher_set_stack, "gtk_stack_switcher_set_stack", LIBRARY_GTK);

	// gtk.Statusbar

	Linker.link(gtk_statusbar_get_type, "gtk_statusbar_get_type", LIBRARY_GTK);
	Linker.link(gtk_statusbar_new, "gtk_statusbar_new", LIBRARY_GTK);
	Linker.link(gtk_statusbar_get_context_id, "gtk_statusbar_get_context_id", LIBRARY_GTK);
	Linker.link(gtk_statusbar_pop, "gtk_statusbar_pop", LIBRARY_GTK);
	Linker.link(gtk_statusbar_push, "gtk_statusbar_push", LIBRARY_GTK);
	Linker.link(gtk_statusbar_remove, "gtk_statusbar_remove", LIBRARY_GTK);
	Linker.link(gtk_statusbar_remove_all, "gtk_statusbar_remove_all", LIBRARY_GTK);

	// gtk.StringFilter

	Linker.link(gtk_string_filter_get_type, "gtk_string_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_string_filter_new, "gtk_string_filter_new", LIBRARY_GTK);
	Linker.link(gtk_string_filter_get_expression, "gtk_string_filter_get_expression", LIBRARY_GTK);
	Linker.link(gtk_string_filter_get_ignore_case, "gtk_string_filter_get_ignore_case", LIBRARY_GTK);
	Linker.link(gtk_string_filter_get_match_mode, "gtk_string_filter_get_match_mode", LIBRARY_GTK);
	Linker.link(gtk_string_filter_get_search, "gtk_string_filter_get_search", LIBRARY_GTK);
	Linker.link(gtk_string_filter_set_expression, "gtk_string_filter_set_expression", LIBRARY_GTK);
	Linker.link(gtk_string_filter_set_ignore_case, "gtk_string_filter_set_ignore_case", LIBRARY_GTK);
	Linker.link(gtk_string_filter_set_match_mode, "gtk_string_filter_set_match_mode", LIBRARY_GTK);
	Linker.link(gtk_string_filter_set_search, "gtk_string_filter_set_search", LIBRARY_GTK);

	// gtk.StringList

	Linker.link(gtk_string_list_get_type, "gtk_string_list_get_type", LIBRARY_GTK);
	Linker.link(gtk_string_list_new, "gtk_string_list_new", LIBRARY_GTK);
	Linker.link(gtk_string_list_append, "gtk_string_list_append", LIBRARY_GTK);
	Linker.link(gtk_string_list_get_string, "gtk_string_list_get_string", LIBRARY_GTK);
	Linker.link(gtk_string_list_remove, "gtk_string_list_remove", LIBRARY_GTK);
	Linker.link(gtk_string_list_splice, "gtk_string_list_splice", LIBRARY_GTK);
	Linker.link(gtk_string_list_take, "gtk_string_list_take", LIBRARY_GTK);

	// gtk.StringObject

	Linker.link(gtk_string_object_get_type, "gtk_string_object_get_type", LIBRARY_GTK);
	Linker.link(gtk_string_object_new, "gtk_string_object_new", LIBRARY_GTK);
	Linker.link(gtk_string_object_get_string, "gtk_string_object_get_string", LIBRARY_GTK);

	// gtk.StringSorter

	Linker.link(gtk_string_sorter_get_type, "gtk_string_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_string_sorter_new, "gtk_string_sorter_new", LIBRARY_GTK);
	Linker.link(gtk_string_sorter_get_expression, "gtk_string_sorter_get_expression", LIBRARY_GTK);
	Linker.link(gtk_string_sorter_get_ignore_case, "gtk_string_sorter_get_ignore_case", LIBRARY_GTK);
	Linker.link(gtk_string_sorter_set_expression, "gtk_string_sorter_set_expression", LIBRARY_GTK);
	Linker.link(gtk_string_sorter_set_ignore_case, "gtk_string_sorter_set_ignore_case", LIBRARY_GTK);

	// gtk.StyleContext

	Linker.link(gtk_style_context_get_type, "gtk_style_context_get_type", LIBRARY_GTK);
	Linker.link(gtk_style_context_add_provider_for_display, "gtk_style_context_add_provider_for_display", LIBRARY_GTK);
	Linker.link(gtk_style_context_remove_provider_for_display, "gtk_style_context_remove_provider_for_display", LIBRARY_GTK);
	Linker.link(gtk_style_context_add_class, "gtk_style_context_add_class", LIBRARY_GTK);
	Linker.link(gtk_style_context_add_provider, "gtk_style_context_add_provider", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_border, "gtk_style_context_get_border", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_color, "gtk_style_context_get_color", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_display, "gtk_style_context_get_display", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_margin, "gtk_style_context_get_margin", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_padding, "gtk_style_context_get_padding", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_scale, "gtk_style_context_get_scale", LIBRARY_GTK);
	Linker.link(gtk_style_context_get_state, "gtk_style_context_get_state", LIBRARY_GTK);
	Linker.link(gtk_style_context_has_class, "gtk_style_context_has_class", LIBRARY_GTK);
	Linker.link(gtk_style_context_lookup_color, "gtk_style_context_lookup_color", LIBRARY_GTK);
	Linker.link(gtk_style_context_remove_class, "gtk_style_context_remove_class", LIBRARY_GTK);
	Linker.link(gtk_style_context_remove_provider, "gtk_style_context_remove_provider", LIBRARY_GTK);
	Linker.link(gtk_style_context_restore, "gtk_style_context_restore", LIBRARY_GTK);
	Linker.link(gtk_style_context_save, "gtk_style_context_save", LIBRARY_GTK);
	Linker.link(gtk_style_context_set_display, "gtk_style_context_set_display", LIBRARY_GTK);
	Linker.link(gtk_style_context_set_scale, "gtk_style_context_set_scale", LIBRARY_GTK);
	Linker.link(gtk_style_context_set_state, "gtk_style_context_set_state", LIBRARY_GTK);
	Linker.link(gtk_style_context_to_string, "gtk_style_context_to_string", LIBRARY_GTK);

	// gtk.StyleProvider

	Linker.link(gtk_style_provider_get_type, "gtk_style_provider_get_type", LIBRARY_GTK);

	// gtk.Switch

	Linker.link(gtk_switch_get_type, "gtk_switch_get_type", LIBRARY_GTK);
	Linker.link(gtk_switch_new, "gtk_switch_new", LIBRARY_GTK);
	Linker.link(gtk_switch_get_active, "gtk_switch_get_active", LIBRARY_GTK);
	Linker.link(gtk_switch_get_state, "gtk_switch_get_state", LIBRARY_GTK);
	Linker.link(gtk_switch_set_active, "gtk_switch_set_active", LIBRARY_GTK);
	Linker.link(gtk_switch_set_state, "gtk_switch_set_state", LIBRARY_GTK);

	// gtk.SymbolicPaintable

	Linker.link(gtk_symbolic_paintable_get_type, "gtk_symbolic_paintable_get_type", LIBRARY_GTK);
	Linker.link(gtk_symbolic_paintable_snapshot_symbolic, "gtk_symbolic_paintable_snapshot_symbolic", LIBRARY_GTK);

	// gtk.Text

	Linker.link(gtk_text_get_type, "gtk_text_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_new, "gtk_text_new", LIBRARY_GTK);
	Linker.link(gtk_text_new_with_buffer, "gtk_text_new_with_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_compute_cursor_extents, "gtk_text_compute_cursor_extents", LIBRARY_GTK);
	Linker.link(gtk_text_get_activates_default, "gtk_text_get_activates_default", LIBRARY_GTK);
	Linker.link(gtk_text_get_attributes, "gtk_text_get_attributes", LIBRARY_GTK);
	Linker.link(gtk_text_get_buffer, "gtk_text_get_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_get_enable_emoji_completion, "gtk_text_get_enable_emoji_completion", LIBRARY_GTK);
	Linker.link(gtk_text_get_extra_menu, "gtk_text_get_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_text_get_input_hints, "gtk_text_get_input_hints", LIBRARY_GTK);
	Linker.link(gtk_text_get_input_purpose, "gtk_text_get_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_text_get_invisible_char, "gtk_text_get_invisible_char", LIBRARY_GTK);
	Linker.link(gtk_text_get_max_length, "gtk_text_get_max_length", LIBRARY_GTK);
	Linker.link(gtk_text_get_overwrite_mode, "gtk_text_get_overwrite_mode", LIBRARY_GTK);
	Linker.link(gtk_text_get_placeholder_text, "gtk_text_get_placeholder_text", LIBRARY_GTK);
	Linker.link(gtk_text_get_propagate_text_width, "gtk_text_get_propagate_text_width", LIBRARY_GTK);
	Linker.link(gtk_text_get_tabs, "gtk_text_get_tabs", LIBRARY_GTK);
	Linker.link(gtk_text_get_text_length, "gtk_text_get_text_length", LIBRARY_GTK);
	Linker.link(gtk_text_get_truncate_multiline, "gtk_text_get_truncate_multiline", LIBRARY_GTK);
	Linker.link(gtk_text_get_visibility, "gtk_text_get_visibility", LIBRARY_GTK);
	Linker.link(gtk_text_grab_focus_without_selecting, "gtk_text_grab_focus_without_selecting", LIBRARY_GTK);
	Linker.link(gtk_text_set_activates_default, "gtk_text_set_activates_default", LIBRARY_GTK);
	Linker.link(gtk_text_set_attributes, "gtk_text_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_text_set_buffer, "gtk_text_set_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_set_enable_emoji_completion, "gtk_text_set_enable_emoji_completion", LIBRARY_GTK);
	Linker.link(gtk_text_set_extra_menu, "gtk_text_set_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_text_set_input_hints, "gtk_text_set_input_hints", LIBRARY_GTK);
	Linker.link(gtk_text_set_input_purpose, "gtk_text_set_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_text_set_invisible_char, "gtk_text_set_invisible_char", LIBRARY_GTK);
	Linker.link(gtk_text_set_max_length, "gtk_text_set_max_length", LIBRARY_GTK);
	Linker.link(gtk_text_set_overwrite_mode, "gtk_text_set_overwrite_mode", LIBRARY_GTK);
	Linker.link(gtk_text_set_placeholder_text, "gtk_text_set_placeholder_text", LIBRARY_GTK);
	Linker.link(gtk_text_set_propagate_text_width, "gtk_text_set_propagate_text_width", LIBRARY_GTK);
	Linker.link(gtk_text_set_tabs, "gtk_text_set_tabs", LIBRARY_GTK);
	Linker.link(gtk_text_set_truncate_multiline, "gtk_text_set_truncate_multiline", LIBRARY_GTK);
	Linker.link(gtk_text_set_visibility, "gtk_text_set_visibility", LIBRARY_GTK);
	Linker.link(gtk_text_unset_invisible_char, "gtk_text_unset_invisible_char", LIBRARY_GTK);

	// gtk.TextBuffer

	Linker.link(gtk_text_buffer_get_type, "gtk_text_buffer_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_new, "gtk_text_buffer_new", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_add_mark, "gtk_text_buffer_add_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_add_selection_clipboard, "gtk_text_buffer_add_selection_clipboard", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_apply_tag, "gtk_text_buffer_apply_tag", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_apply_tag_by_name, "gtk_text_buffer_apply_tag_by_name", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_backspace, "gtk_text_buffer_backspace", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_begin_irreversible_action, "gtk_text_buffer_begin_irreversible_action", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_begin_user_action, "gtk_text_buffer_begin_user_action", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_copy_clipboard, "gtk_text_buffer_copy_clipboard", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_create_child_anchor, "gtk_text_buffer_create_child_anchor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_create_mark, "gtk_text_buffer_create_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_create_tag, "gtk_text_buffer_create_tag", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_cut_clipboard, "gtk_text_buffer_cut_clipboard", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_delete, "gtk_text_buffer_delete", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_delete_interactive, "gtk_text_buffer_delete_interactive", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_delete_mark, "gtk_text_buffer_delete_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_delete_mark_by_name, "gtk_text_buffer_delete_mark_by_name", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_delete_selection, "gtk_text_buffer_delete_selection", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_end_irreversible_action, "gtk_text_buffer_end_irreversible_action", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_end_user_action, "gtk_text_buffer_end_user_action", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_bounds, "gtk_text_buffer_get_bounds", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_can_redo, "gtk_text_buffer_get_can_redo", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_can_undo, "gtk_text_buffer_get_can_undo", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_char_count, "gtk_text_buffer_get_char_count", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_enable_undo, "gtk_text_buffer_get_enable_undo", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_end_iter, "gtk_text_buffer_get_end_iter", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_has_selection, "gtk_text_buffer_get_has_selection", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_insert, "gtk_text_buffer_get_insert", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_child_anchor, "gtk_text_buffer_get_iter_at_child_anchor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line, "gtk_text_buffer_get_iter_at_line", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_index, "gtk_text_buffer_get_iter_at_line_index", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_offset, "gtk_text_buffer_get_iter_at_line_offset", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_mark, "gtk_text_buffer_get_iter_at_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_iter_at_offset, "gtk_text_buffer_get_iter_at_offset", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_line_count, "gtk_text_buffer_get_line_count", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_mark, "gtk_text_buffer_get_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_max_undo_levels, "gtk_text_buffer_get_max_undo_levels", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_modified, "gtk_text_buffer_get_modified", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_selection_bound, "gtk_text_buffer_get_selection_bound", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_selection_bounds, "gtk_text_buffer_get_selection_bounds", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_selection_content, "gtk_text_buffer_get_selection_content", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_slice, "gtk_text_buffer_get_slice", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_start_iter, "gtk_text_buffer_get_start_iter", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_tag_table, "gtk_text_buffer_get_tag_table", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_get_text, "gtk_text_buffer_get_text", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert, "gtk_text_buffer_insert", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_at_cursor, "gtk_text_buffer_insert_at_cursor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_child_anchor, "gtk_text_buffer_insert_child_anchor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_interactive, "gtk_text_buffer_insert_interactive", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_interactive_at_cursor, "gtk_text_buffer_insert_interactive_at_cursor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_markup, "gtk_text_buffer_insert_markup", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_paintable, "gtk_text_buffer_insert_paintable", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_range, "gtk_text_buffer_insert_range", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_range_interactive, "gtk_text_buffer_insert_range_interactive", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_with_tags, "gtk_text_buffer_insert_with_tags", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_insert_with_tags_by_name, "gtk_text_buffer_insert_with_tags_by_name", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_move_mark, "gtk_text_buffer_move_mark", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_move_mark_by_name, "gtk_text_buffer_move_mark_by_name", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_paste_clipboard, "gtk_text_buffer_paste_clipboard", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_place_cursor, "gtk_text_buffer_place_cursor", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_redo, "gtk_text_buffer_redo", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_remove_all_tags, "gtk_text_buffer_remove_all_tags", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_remove_selection_clipboard, "gtk_text_buffer_remove_selection_clipboard", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_remove_tag, "gtk_text_buffer_remove_tag", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_remove_tag_by_name, "gtk_text_buffer_remove_tag_by_name", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_select_range, "gtk_text_buffer_select_range", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_set_enable_undo, "gtk_text_buffer_set_enable_undo", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_set_max_undo_levels, "gtk_text_buffer_set_max_undo_levels", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_set_modified, "gtk_text_buffer_set_modified", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_set_text, "gtk_text_buffer_set_text", LIBRARY_GTK);
	Linker.link(gtk_text_buffer_undo, "gtk_text_buffer_undo", LIBRARY_GTK);

	// gtk.TextChildAnchor

	Linker.link(gtk_text_child_anchor_get_type, "gtk_text_child_anchor_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_child_anchor_new, "gtk_text_child_anchor_new", LIBRARY_GTK);
	Linker.link(gtk_text_child_anchor_new_with_replacement, "gtk_text_child_anchor_new_with_replacement", LIBRARY_GTK);
	Linker.link(gtk_text_child_anchor_get_deleted, "gtk_text_child_anchor_get_deleted", LIBRARY_GTK);
	Linker.link(gtk_text_child_anchor_get_widgets, "gtk_text_child_anchor_get_widgets", LIBRARY_GTK);

	// gtk.TextIter

	Linker.link(gtk_text_iter_get_type, "gtk_text_iter_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_iter_assign, "gtk_text_iter_assign", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_char, "gtk_text_iter_backward_char", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_chars, "gtk_text_iter_backward_chars", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_cursor_position, "gtk_text_iter_backward_cursor_position", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_cursor_positions, "gtk_text_iter_backward_cursor_positions", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_find_char, "gtk_text_iter_backward_find_char", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_line, "gtk_text_iter_backward_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_lines, "gtk_text_iter_backward_lines", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_search, "gtk_text_iter_backward_search", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_sentence_start, "gtk_text_iter_backward_sentence_start", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_sentence_starts, "gtk_text_iter_backward_sentence_starts", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_to_tag_toggle, "gtk_text_iter_backward_to_tag_toggle", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_position, "gtk_text_iter_backward_visible_cursor_position", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_positions, "gtk_text_iter_backward_visible_cursor_positions", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_line, "gtk_text_iter_backward_visible_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_lines, "gtk_text_iter_backward_visible_lines", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_word_start, "gtk_text_iter_backward_visible_word_start", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_visible_word_starts, "gtk_text_iter_backward_visible_word_starts", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_word_start, "gtk_text_iter_backward_word_start", LIBRARY_GTK);
	Linker.link(gtk_text_iter_backward_word_starts, "gtk_text_iter_backward_word_starts", LIBRARY_GTK);
	Linker.link(gtk_text_iter_can_insert, "gtk_text_iter_can_insert", LIBRARY_GTK);
	Linker.link(gtk_text_iter_compare, "gtk_text_iter_compare", LIBRARY_GTK);
	Linker.link(gtk_text_iter_copy, "gtk_text_iter_copy", LIBRARY_GTK);
	Linker.link(gtk_text_iter_editable, "gtk_text_iter_editable", LIBRARY_GTK);
	Linker.link(gtk_text_iter_ends_line, "gtk_text_iter_ends_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_ends_sentence, "gtk_text_iter_ends_sentence", LIBRARY_GTK);
	Linker.link(gtk_text_iter_ends_tag, "gtk_text_iter_ends_tag", LIBRARY_GTK);
	Linker.link(gtk_text_iter_ends_word, "gtk_text_iter_ends_word", LIBRARY_GTK);
	Linker.link(gtk_text_iter_equal, "gtk_text_iter_equal", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_char, "gtk_text_iter_forward_char", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_chars, "gtk_text_iter_forward_chars", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_cursor_position, "gtk_text_iter_forward_cursor_position", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_cursor_positions, "gtk_text_iter_forward_cursor_positions", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_find_char, "gtk_text_iter_forward_find_char", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_line, "gtk_text_iter_forward_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_lines, "gtk_text_iter_forward_lines", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_search, "gtk_text_iter_forward_search", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_sentence_end, "gtk_text_iter_forward_sentence_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_sentence_ends, "gtk_text_iter_forward_sentence_ends", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_to_end, "gtk_text_iter_forward_to_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_to_line_end, "gtk_text_iter_forward_to_line_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_to_tag_toggle, "gtk_text_iter_forward_to_tag_toggle", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_position, "gtk_text_iter_forward_visible_cursor_position", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_positions, "gtk_text_iter_forward_visible_cursor_positions", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_line, "gtk_text_iter_forward_visible_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_lines, "gtk_text_iter_forward_visible_lines", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_word_end, "gtk_text_iter_forward_visible_word_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_visible_word_ends, "gtk_text_iter_forward_visible_word_ends", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_word_end, "gtk_text_iter_forward_word_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_forward_word_ends, "gtk_text_iter_forward_word_ends", LIBRARY_GTK);
	Linker.link(gtk_text_iter_free, "gtk_text_iter_free", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_buffer, "gtk_text_iter_get_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_bytes_in_line, "gtk_text_iter_get_bytes_in_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_char, "gtk_text_iter_get_char", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_chars_in_line, "gtk_text_iter_get_chars_in_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_child_anchor, "gtk_text_iter_get_child_anchor", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_language, "gtk_text_iter_get_language", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_line, "gtk_text_iter_get_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_line_index, "gtk_text_iter_get_line_index", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_line_offset, "gtk_text_iter_get_line_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_marks, "gtk_text_iter_get_marks", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_offset, "gtk_text_iter_get_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_paintable, "gtk_text_iter_get_paintable", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_slice, "gtk_text_iter_get_slice", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_tags, "gtk_text_iter_get_tags", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_text, "gtk_text_iter_get_text", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_toggled_tags, "gtk_text_iter_get_toggled_tags", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_visible_line_index, "gtk_text_iter_get_visible_line_index", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_visible_line_offset, "gtk_text_iter_get_visible_line_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_visible_slice, "gtk_text_iter_get_visible_slice", LIBRARY_GTK);
	Linker.link(gtk_text_iter_get_visible_text, "gtk_text_iter_get_visible_text", LIBRARY_GTK);
	Linker.link(gtk_text_iter_has_tag, "gtk_text_iter_has_tag", LIBRARY_GTK);
	Linker.link(gtk_text_iter_in_range, "gtk_text_iter_in_range", LIBRARY_GTK);
	Linker.link(gtk_text_iter_inside_sentence, "gtk_text_iter_inside_sentence", LIBRARY_GTK);
	Linker.link(gtk_text_iter_inside_word, "gtk_text_iter_inside_word", LIBRARY_GTK);
	Linker.link(gtk_text_iter_is_cursor_position, "gtk_text_iter_is_cursor_position", LIBRARY_GTK);
	Linker.link(gtk_text_iter_is_end, "gtk_text_iter_is_end", LIBRARY_GTK);
	Linker.link(gtk_text_iter_is_start, "gtk_text_iter_is_start", LIBRARY_GTK);
	Linker.link(gtk_text_iter_order, "gtk_text_iter_order", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_line, "gtk_text_iter_set_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_line_index, "gtk_text_iter_set_line_index", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_line_offset, "gtk_text_iter_set_line_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_offset, "gtk_text_iter_set_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_visible_line_index, "gtk_text_iter_set_visible_line_index", LIBRARY_GTK);
	Linker.link(gtk_text_iter_set_visible_line_offset, "gtk_text_iter_set_visible_line_offset", LIBRARY_GTK);
	Linker.link(gtk_text_iter_starts_line, "gtk_text_iter_starts_line", LIBRARY_GTK);
	Linker.link(gtk_text_iter_starts_sentence, "gtk_text_iter_starts_sentence", LIBRARY_GTK);
	Linker.link(gtk_text_iter_starts_tag, "gtk_text_iter_starts_tag", LIBRARY_GTK);
	Linker.link(gtk_text_iter_starts_word, "gtk_text_iter_starts_word", LIBRARY_GTK);
	Linker.link(gtk_text_iter_toggles_tag, "gtk_text_iter_toggles_tag", LIBRARY_GTK);

	// gtk.TextMark

	Linker.link(gtk_text_mark_get_type, "gtk_text_mark_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_mark_new, "gtk_text_mark_new", LIBRARY_GTK);
	Linker.link(gtk_text_mark_get_buffer, "gtk_text_mark_get_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_mark_get_deleted, "gtk_text_mark_get_deleted", LIBRARY_GTK);
	Linker.link(gtk_text_mark_get_left_gravity, "gtk_text_mark_get_left_gravity", LIBRARY_GTK);
	Linker.link(gtk_text_mark_get_name, "gtk_text_mark_get_name", LIBRARY_GTK);
	Linker.link(gtk_text_mark_get_visible, "gtk_text_mark_get_visible", LIBRARY_GTK);
	Linker.link(gtk_text_mark_set_visible, "gtk_text_mark_set_visible", LIBRARY_GTK);

	// gtk.TextTag

	Linker.link(gtk_text_tag_get_type, "gtk_text_tag_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_tag_new, "gtk_text_tag_new", LIBRARY_GTK);
	Linker.link(gtk_text_tag_changed, "gtk_text_tag_changed", LIBRARY_GTK);
	Linker.link(gtk_text_tag_get_priority, "gtk_text_tag_get_priority", LIBRARY_GTK);
	Linker.link(gtk_text_tag_set_priority, "gtk_text_tag_set_priority", LIBRARY_GTK);

	// gtk.TextTagTable

	Linker.link(gtk_text_tag_table_get_type, "gtk_text_tag_table_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_new, "gtk_text_tag_table_new", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_add, "gtk_text_tag_table_add", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_foreach, "gtk_text_tag_table_foreach", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_get_size, "gtk_text_tag_table_get_size", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_lookup, "gtk_text_tag_table_lookup", LIBRARY_GTK);
	Linker.link(gtk_text_tag_table_remove, "gtk_text_tag_table_remove", LIBRARY_GTK);

	// gtk.TextView

	Linker.link(gtk_text_view_get_type, "gtk_text_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_text_view_new, "gtk_text_view_new", LIBRARY_GTK);
	Linker.link(gtk_text_view_new_with_buffer, "gtk_text_view_new_with_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_view_add_child_at_anchor, "gtk_text_view_add_child_at_anchor", LIBRARY_GTK);
	Linker.link(gtk_text_view_add_overlay, "gtk_text_view_add_overlay", LIBRARY_GTK);
	Linker.link(gtk_text_view_backward_display_line, "gtk_text_view_backward_display_line", LIBRARY_GTK);
	Linker.link(gtk_text_view_backward_display_line_start, "gtk_text_view_backward_display_line_start", LIBRARY_GTK);
	Linker.link(gtk_text_view_buffer_to_window_coords, "gtk_text_view_buffer_to_window_coords", LIBRARY_GTK);
	Linker.link(gtk_text_view_forward_display_line, "gtk_text_view_forward_display_line", LIBRARY_GTK);
	Linker.link(gtk_text_view_forward_display_line_end, "gtk_text_view_forward_display_line_end", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_accepts_tab, "gtk_text_view_get_accepts_tab", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_bottom_margin, "gtk_text_view_get_bottom_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_buffer, "gtk_text_view_get_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_cursor_locations, "gtk_text_view_get_cursor_locations", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_cursor_visible, "gtk_text_view_get_cursor_visible", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_editable, "gtk_text_view_get_editable", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_extra_menu, "gtk_text_view_get_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_gutter, "gtk_text_view_get_gutter", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_indent, "gtk_text_view_get_indent", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_input_hints, "gtk_text_view_get_input_hints", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_input_purpose, "gtk_text_view_get_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_iter_at_location, "gtk_text_view_get_iter_at_location", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_iter_at_position, "gtk_text_view_get_iter_at_position", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_iter_location, "gtk_text_view_get_iter_location", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_justification, "gtk_text_view_get_justification", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_left_margin, "gtk_text_view_get_left_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_line_at_y, "gtk_text_view_get_line_at_y", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_line_yrange, "gtk_text_view_get_line_yrange", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_ltr_context, "gtk_text_view_get_ltr_context", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_monospace, "gtk_text_view_get_monospace", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_overwrite, "gtk_text_view_get_overwrite", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_pixels_above_lines, "gtk_text_view_get_pixels_above_lines", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_pixels_below_lines, "gtk_text_view_get_pixels_below_lines", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_pixels_inside_wrap, "gtk_text_view_get_pixels_inside_wrap", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_right_margin, "gtk_text_view_get_right_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_rtl_context, "gtk_text_view_get_rtl_context", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_tabs, "gtk_text_view_get_tabs", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_top_margin, "gtk_text_view_get_top_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_visible_rect, "gtk_text_view_get_visible_rect", LIBRARY_GTK);
	Linker.link(gtk_text_view_get_wrap_mode, "gtk_text_view_get_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_text_view_im_context_filter_keypress, "gtk_text_view_im_context_filter_keypress", LIBRARY_GTK);
	Linker.link(gtk_text_view_move_mark_onscreen, "gtk_text_view_move_mark_onscreen", LIBRARY_GTK);
	Linker.link(gtk_text_view_move_overlay, "gtk_text_view_move_overlay", LIBRARY_GTK);
	Linker.link(gtk_text_view_move_visually, "gtk_text_view_move_visually", LIBRARY_GTK);
	Linker.link(gtk_text_view_place_cursor_onscreen, "gtk_text_view_place_cursor_onscreen", LIBRARY_GTK);
	Linker.link(gtk_text_view_remove, "gtk_text_view_remove", LIBRARY_GTK);
	Linker.link(gtk_text_view_reset_cursor_blink, "gtk_text_view_reset_cursor_blink", LIBRARY_GTK);
	Linker.link(gtk_text_view_reset_im_context, "gtk_text_view_reset_im_context", LIBRARY_GTK);
	Linker.link(gtk_text_view_scroll_mark_onscreen, "gtk_text_view_scroll_mark_onscreen", LIBRARY_GTK);
	Linker.link(gtk_text_view_scroll_to_iter, "gtk_text_view_scroll_to_iter", LIBRARY_GTK);
	Linker.link(gtk_text_view_scroll_to_mark, "gtk_text_view_scroll_to_mark", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_accepts_tab, "gtk_text_view_set_accepts_tab", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_bottom_margin, "gtk_text_view_set_bottom_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_buffer, "gtk_text_view_set_buffer", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_cursor_visible, "gtk_text_view_set_cursor_visible", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_editable, "gtk_text_view_set_editable", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_extra_menu, "gtk_text_view_set_extra_menu", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_gutter, "gtk_text_view_set_gutter", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_indent, "gtk_text_view_set_indent", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_input_hints, "gtk_text_view_set_input_hints", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_input_purpose, "gtk_text_view_set_input_purpose", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_justification, "gtk_text_view_set_justification", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_left_margin, "gtk_text_view_set_left_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_monospace, "gtk_text_view_set_monospace", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_overwrite, "gtk_text_view_set_overwrite", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_pixels_above_lines, "gtk_text_view_set_pixels_above_lines", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_pixels_below_lines, "gtk_text_view_set_pixels_below_lines", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_pixels_inside_wrap, "gtk_text_view_set_pixels_inside_wrap", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_right_margin, "gtk_text_view_set_right_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_tabs, "gtk_text_view_set_tabs", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_top_margin, "gtk_text_view_set_top_margin", LIBRARY_GTK);
	Linker.link(gtk_text_view_set_wrap_mode, "gtk_text_view_set_wrap_mode", LIBRARY_GTK);
	Linker.link(gtk_text_view_starts_display_line, "gtk_text_view_starts_display_line", LIBRARY_GTK);
	Linker.link(gtk_text_view_window_to_buffer_coords, "gtk_text_view_window_to_buffer_coords", LIBRARY_GTK);

	// gtk.ToggleButton

	Linker.link(gtk_toggle_button_get_type, "gtk_toggle_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_new, "gtk_toggle_button_new", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_new_with_label, "gtk_toggle_button_new_with_label", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_new_with_mnemonic, "gtk_toggle_button_new_with_mnemonic", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_get_active, "gtk_toggle_button_get_active", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_set_active, "gtk_toggle_button_set_active", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_set_group, "gtk_toggle_button_set_group", LIBRARY_GTK);
	Linker.link(gtk_toggle_button_toggled, "gtk_toggle_button_toggled", LIBRARY_GTK);

	// gtk.Tooltip

	Linker.link(gtk_tooltip_get_type, "gtk_tooltip_get_type", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_custom, "gtk_tooltip_set_custom", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_icon, "gtk_tooltip_set_icon", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_icon_from_gicon, "gtk_tooltip_set_icon_from_gicon", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_icon_from_icon_name, "gtk_tooltip_set_icon_from_icon_name", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_markup, "gtk_tooltip_set_markup", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_text, "gtk_tooltip_set_text", LIBRARY_GTK);
	Linker.link(gtk_tooltip_set_tip_area, "gtk_tooltip_set_tip_area", LIBRARY_GTK);

	// gtk.TreeDragDest

	Linker.link(gtk_tree_drag_dest_get_type, "gtk_tree_drag_dest_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_drag_dest_drag_data_received, "gtk_tree_drag_dest_drag_data_received", LIBRARY_GTK);
	Linker.link(gtk_tree_drag_dest_row_drop_possible, "gtk_tree_drag_dest_row_drop_possible", LIBRARY_GTK);

	// gtk.TreeDragSource

	Linker.link(gtk_tree_drag_source_get_type, "gtk_tree_drag_source_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_drag_source_drag_data_delete, "gtk_tree_drag_source_drag_data_delete", LIBRARY_GTK);
	Linker.link(gtk_tree_drag_source_drag_data_get, "gtk_tree_drag_source_drag_data_get", LIBRARY_GTK);
	Linker.link(gtk_tree_drag_source_row_draggable, "gtk_tree_drag_source_row_draggable", LIBRARY_GTK);

	// gtk.TreeExpander

	Linker.link(gtk_tree_expander_get_type, "gtk_tree_expander_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_new, "gtk_tree_expander_new", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_get_child, "gtk_tree_expander_get_child", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_get_indent_for_icon, "gtk_tree_expander_get_indent_for_icon", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_get_item, "gtk_tree_expander_get_item", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_get_list_row, "gtk_tree_expander_get_list_row", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_set_child, "gtk_tree_expander_set_child", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_set_indent_for_icon, "gtk_tree_expander_set_indent_for_icon", LIBRARY_GTK);
	Linker.link(gtk_tree_expander_set_list_row, "gtk_tree_expander_set_list_row", LIBRARY_GTK);

	// gtk.TreeIter

	Linker.link(gtk_tree_iter_get_type, "gtk_tree_iter_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_iter_copy, "gtk_tree_iter_copy", LIBRARY_GTK);
	Linker.link(gtk_tree_iter_free, "gtk_tree_iter_free", LIBRARY_GTK);

	// gtk.TreeListModel

	Linker.link(gtk_tree_list_model_get_type, "gtk_tree_list_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_new, "gtk_tree_list_model_new", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_get_autoexpand, "gtk_tree_list_model_get_autoexpand", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_get_child_row, "gtk_tree_list_model_get_child_row", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_get_model, "gtk_tree_list_model_get_model", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_get_passthrough, "gtk_tree_list_model_get_passthrough", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_get_row, "gtk_tree_list_model_get_row", LIBRARY_GTK);
	Linker.link(gtk_tree_list_model_set_autoexpand, "gtk_tree_list_model_set_autoexpand", LIBRARY_GTK);

	// gtk.TreeListRow

	Linker.link(gtk_tree_list_row_get_type, "gtk_tree_list_row_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_child_row, "gtk_tree_list_row_get_child_row", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_children, "gtk_tree_list_row_get_children", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_depth, "gtk_tree_list_row_get_depth", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_expanded, "gtk_tree_list_row_get_expanded", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_item, "gtk_tree_list_row_get_item", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_parent, "gtk_tree_list_row_get_parent", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_get_position, "gtk_tree_list_row_get_position", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_is_expandable, "gtk_tree_list_row_is_expandable", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_set_expanded, "gtk_tree_list_row_set_expanded", LIBRARY_GTK);

	// gtk.TreeListRowSorter

	Linker.link(gtk_tree_list_row_sorter_get_type, "gtk_tree_list_row_sorter_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_sorter_new, "gtk_tree_list_row_sorter_new", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_sorter_get_sorter, "gtk_tree_list_row_sorter_get_sorter", LIBRARY_GTK);
	Linker.link(gtk_tree_list_row_sorter_set_sorter, "gtk_tree_list_row_sorter_set_sorter", LIBRARY_GTK);

	// gtk.TreeModel

	Linker.link(gtk_tree_model_get_type, "gtk_tree_model_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_new, "gtk_tree_model_filter_new", LIBRARY_GTK);
	Linker.link(gtk_tree_model_foreach, "gtk_tree_model_foreach", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get, "gtk_tree_model_get", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_column_type, "gtk_tree_model_get_column_type", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_flags, "gtk_tree_model_get_flags", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_iter, "gtk_tree_model_get_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_iter_first, "gtk_tree_model_get_iter_first", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_iter_from_string, "gtk_tree_model_get_iter_from_string", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_n_columns, "gtk_tree_model_get_n_columns", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_path, "gtk_tree_model_get_path", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_string_from_iter, "gtk_tree_model_get_string_from_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_valist, "gtk_tree_model_get_valist", LIBRARY_GTK);
	Linker.link(gtk_tree_model_get_value, "gtk_tree_model_get_value", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_children, "gtk_tree_model_iter_children", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_has_child, "gtk_tree_model_iter_has_child", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_n_children, "gtk_tree_model_iter_n_children", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_next, "gtk_tree_model_iter_next", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_nth_child, "gtk_tree_model_iter_nth_child", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_parent, "gtk_tree_model_iter_parent", LIBRARY_GTK);
	Linker.link(gtk_tree_model_iter_previous, "gtk_tree_model_iter_previous", LIBRARY_GTK);
	Linker.link(gtk_tree_model_ref_node, "gtk_tree_model_ref_node", LIBRARY_GTK);
	Linker.link(gtk_tree_model_row_changed, "gtk_tree_model_row_changed", LIBRARY_GTK);
	Linker.link(gtk_tree_model_row_deleted, "gtk_tree_model_row_deleted", LIBRARY_GTK);
	Linker.link(gtk_tree_model_row_has_child_toggled, "gtk_tree_model_row_has_child_toggled", LIBRARY_GTK);
	Linker.link(gtk_tree_model_row_inserted, "gtk_tree_model_row_inserted", LIBRARY_GTK);
	Linker.link(gtk_tree_model_rows_reordered, "gtk_tree_model_rows_reordered", LIBRARY_GTK);
	Linker.link(gtk_tree_model_rows_reordered_with_length, "gtk_tree_model_rows_reordered_with_length", LIBRARY_GTK);
	Linker.link(gtk_tree_model_unref_node, "gtk_tree_model_unref_node", LIBRARY_GTK);

	// gtk.TreeModelFilter

	Linker.link(gtk_tree_model_filter_get_type, "gtk_tree_model_filter_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_clear_cache, "gtk_tree_model_filter_clear_cache", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_convert_child_iter_to_iter, "gtk_tree_model_filter_convert_child_iter_to_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_convert_child_path_to_path, "gtk_tree_model_filter_convert_child_path_to_path", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_convert_iter_to_child_iter, "gtk_tree_model_filter_convert_iter_to_child_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_convert_path_to_child_path, "gtk_tree_model_filter_convert_path_to_child_path", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_get_model, "gtk_tree_model_filter_get_model", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_refilter, "gtk_tree_model_filter_refilter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_set_modify_func, "gtk_tree_model_filter_set_modify_func", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_set_visible_column, "gtk_tree_model_filter_set_visible_column", LIBRARY_GTK);
	Linker.link(gtk_tree_model_filter_set_visible_func, "gtk_tree_model_filter_set_visible_func", LIBRARY_GTK);

	// gtk.TreeModelSort

	Linker.link(gtk_tree_model_sort_get_type, "gtk_tree_model_sort_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_new_with_model, "gtk_tree_model_sort_new_with_model", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_clear_cache, "gtk_tree_model_sort_clear_cache", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_convert_child_iter_to_iter, "gtk_tree_model_sort_convert_child_iter_to_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_convert_child_path_to_path, "gtk_tree_model_sort_convert_child_path_to_path", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_convert_iter_to_child_iter, "gtk_tree_model_sort_convert_iter_to_child_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_convert_path_to_child_path, "gtk_tree_model_sort_convert_path_to_child_path", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_get_model, "gtk_tree_model_sort_get_model", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_iter_is_valid, "gtk_tree_model_sort_iter_is_valid", LIBRARY_GTK);
	Linker.link(gtk_tree_model_sort_reset_default_sort_func, "gtk_tree_model_sort_reset_default_sort_func", LIBRARY_GTK);

	// gtk.TreePath

	Linker.link(gtk_tree_path_get_type, "gtk_tree_path_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_path_new, "gtk_tree_path_new", LIBRARY_GTK);
	Linker.link(gtk_tree_path_new_first, "gtk_tree_path_new_first", LIBRARY_GTK);
	Linker.link(gtk_tree_path_new_from_indices, "gtk_tree_path_new_from_indices", LIBRARY_GTK);
	Linker.link(gtk_tree_path_new_from_indicesv, "gtk_tree_path_new_from_indicesv", LIBRARY_GTK);
	Linker.link(gtk_tree_path_new_from_string, "gtk_tree_path_new_from_string", LIBRARY_GTK);
	Linker.link(gtk_tree_path_append_index, "gtk_tree_path_append_index", LIBRARY_GTK);
	Linker.link(gtk_tree_path_compare, "gtk_tree_path_compare", LIBRARY_GTK);
	Linker.link(gtk_tree_path_copy, "gtk_tree_path_copy", LIBRARY_GTK);
	Linker.link(gtk_tree_path_down, "gtk_tree_path_down", LIBRARY_GTK);
	Linker.link(gtk_tree_path_free, "gtk_tree_path_free", LIBRARY_GTK);
	Linker.link(gtk_tree_path_get_depth, "gtk_tree_path_get_depth", LIBRARY_GTK);
	Linker.link(gtk_tree_path_get_indices, "gtk_tree_path_get_indices", LIBRARY_GTK);
	Linker.link(gtk_tree_path_get_indices_with_depth, "gtk_tree_path_get_indices_with_depth", LIBRARY_GTK);
	Linker.link(gtk_tree_path_is_ancestor, "gtk_tree_path_is_ancestor", LIBRARY_GTK);
	Linker.link(gtk_tree_path_is_descendant, "gtk_tree_path_is_descendant", LIBRARY_GTK);
	Linker.link(gtk_tree_path_next, "gtk_tree_path_next", LIBRARY_GTK);
	Linker.link(gtk_tree_path_prepend_index, "gtk_tree_path_prepend_index", LIBRARY_GTK);
	Linker.link(gtk_tree_path_prev, "gtk_tree_path_prev", LIBRARY_GTK);
	Linker.link(gtk_tree_path_to_string, "gtk_tree_path_to_string", LIBRARY_GTK);
	Linker.link(gtk_tree_path_up, "gtk_tree_path_up", LIBRARY_GTK);

	// gtk.TreeRowReference

	Linker.link(gtk_tree_row_reference_get_type, "gtk_tree_row_reference_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_new, "gtk_tree_row_reference_new", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_new_proxy, "gtk_tree_row_reference_new_proxy", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_copy, "gtk_tree_row_reference_copy", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_free, "gtk_tree_row_reference_free", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_get_model, "gtk_tree_row_reference_get_model", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_get_path, "gtk_tree_row_reference_get_path", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_valid, "gtk_tree_row_reference_valid", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_deleted, "gtk_tree_row_reference_deleted", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_inserted, "gtk_tree_row_reference_inserted", LIBRARY_GTK);
	Linker.link(gtk_tree_row_reference_reordered, "gtk_tree_row_reference_reordered", LIBRARY_GTK);

	// gtk.TreeSelection

	Linker.link(gtk_tree_selection_get_type, "gtk_tree_selection_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_count_selected_rows, "gtk_tree_selection_count_selected_rows", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_mode, "gtk_tree_selection_get_mode", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_select_function, "gtk_tree_selection_get_select_function", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_selected, "gtk_tree_selection_get_selected", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_selected_rows, "gtk_tree_selection_get_selected_rows", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_tree_view, "gtk_tree_selection_get_tree_view", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_get_user_data, "gtk_tree_selection_get_user_data", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_iter_is_selected, "gtk_tree_selection_iter_is_selected", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_path_is_selected, "gtk_tree_selection_path_is_selected", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_select_all, "gtk_tree_selection_select_all", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_select_iter, "gtk_tree_selection_select_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_select_path, "gtk_tree_selection_select_path", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_select_range, "gtk_tree_selection_select_range", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_selected_foreach, "gtk_tree_selection_selected_foreach", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_set_mode, "gtk_tree_selection_set_mode", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_set_select_function, "gtk_tree_selection_set_select_function", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_unselect_all, "gtk_tree_selection_unselect_all", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_unselect_iter, "gtk_tree_selection_unselect_iter", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_unselect_path, "gtk_tree_selection_unselect_path", LIBRARY_GTK);
	Linker.link(gtk_tree_selection_unselect_range, "gtk_tree_selection_unselect_range", LIBRARY_GTK);

	// gtk.TreeSortable

	Linker.link(gtk_tree_sortable_get_type, "gtk_tree_sortable_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_get_sort_column_id, "gtk_tree_sortable_get_sort_column_id", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_has_default_sort_func, "gtk_tree_sortable_has_default_sort_func", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_set_default_sort_func, "gtk_tree_sortable_set_default_sort_func", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_set_sort_column_id, "gtk_tree_sortable_set_sort_column_id", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_set_sort_func, "gtk_tree_sortable_set_sort_func", LIBRARY_GTK);
	Linker.link(gtk_tree_sortable_sort_column_changed, "gtk_tree_sortable_sort_column_changed", LIBRARY_GTK);

	// gtk.TreeStore

	Linker.link(gtk_tree_store_get_type, "gtk_tree_store_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_store_new, "gtk_tree_store_new", LIBRARY_GTK);
	Linker.link(gtk_tree_store_newv, "gtk_tree_store_newv", LIBRARY_GTK);
	Linker.link(gtk_tree_store_append, "gtk_tree_store_append", LIBRARY_GTK);
	Linker.link(gtk_tree_store_clear, "gtk_tree_store_clear", LIBRARY_GTK);
	Linker.link(gtk_tree_store_insert, "gtk_tree_store_insert", LIBRARY_GTK);
	Linker.link(gtk_tree_store_insert_after, "gtk_tree_store_insert_after", LIBRARY_GTK);
	Linker.link(gtk_tree_store_insert_before, "gtk_tree_store_insert_before", LIBRARY_GTK);
	Linker.link(gtk_tree_store_insert_with_values, "gtk_tree_store_insert_with_values", LIBRARY_GTK);
	Linker.link(gtk_tree_store_insert_with_valuesv, "gtk_tree_store_insert_with_valuesv", LIBRARY_GTK);
	Linker.link(gtk_tree_store_is_ancestor, "gtk_tree_store_is_ancestor", LIBRARY_GTK);
	Linker.link(gtk_tree_store_iter_depth, "gtk_tree_store_iter_depth", LIBRARY_GTK);
	Linker.link(gtk_tree_store_iter_is_valid, "gtk_tree_store_iter_is_valid", LIBRARY_GTK);
	Linker.link(gtk_tree_store_move_after, "gtk_tree_store_move_after", LIBRARY_GTK);
	Linker.link(gtk_tree_store_move_before, "gtk_tree_store_move_before", LIBRARY_GTK);
	Linker.link(gtk_tree_store_prepend, "gtk_tree_store_prepend", LIBRARY_GTK);
	Linker.link(gtk_tree_store_remove, "gtk_tree_store_remove", LIBRARY_GTK);
	Linker.link(gtk_tree_store_reorder, "gtk_tree_store_reorder", LIBRARY_GTK);
	Linker.link(gtk_tree_store_set, "gtk_tree_store_set", LIBRARY_GTK);
	Linker.link(gtk_tree_store_set_column_types, "gtk_tree_store_set_column_types", LIBRARY_GTK);
	Linker.link(gtk_tree_store_set_valist, "gtk_tree_store_set_valist", LIBRARY_GTK);
	Linker.link(gtk_tree_store_set_value, "gtk_tree_store_set_value", LIBRARY_GTK);
	Linker.link(gtk_tree_store_set_valuesv, "gtk_tree_store_set_valuesv", LIBRARY_GTK);
	Linker.link(gtk_tree_store_swap, "gtk_tree_store_swap", LIBRARY_GTK);

	// gtk.TreeView

	Linker.link(gtk_tree_view_get_type, "gtk_tree_view_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_view_new, "gtk_tree_view_new", LIBRARY_GTK);
	Linker.link(gtk_tree_view_new_with_model, "gtk_tree_view_new_with_model", LIBRARY_GTK);
	Linker.link(gtk_tree_view_append_column, "gtk_tree_view_append_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_collapse_all, "gtk_tree_view_collapse_all", LIBRARY_GTK);
	Linker.link(gtk_tree_view_collapse_row, "gtk_tree_view_collapse_row", LIBRARY_GTK);
	Linker.link(gtk_tree_view_columns_autosize, "gtk_tree_view_columns_autosize", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_tree_coords, "gtk_tree_view_convert_bin_window_to_tree_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_widget_coords, "gtk_tree_view_convert_bin_window_to_widget_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_tree_to_bin_window_coords, "gtk_tree_view_convert_tree_to_bin_window_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_tree_to_widget_coords, "gtk_tree_view_convert_tree_to_widget_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_widget_to_bin_window_coords, "gtk_tree_view_convert_widget_to_bin_window_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_convert_widget_to_tree_coords, "gtk_tree_view_convert_widget_to_tree_coords", LIBRARY_GTK);
	Linker.link(gtk_tree_view_create_row_drag_icon, "gtk_tree_view_create_row_drag_icon", LIBRARY_GTK);
	Linker.link(gtk_tree_view_enable_model_drag_dest, "gtk_tree_view_enable_model_drag_dest", LIBRARY_GTK);
	Linker.link(gtk_tree_view_enable_model_drag_source, "gtk_tree_view_enable_model_drag_source", LIBRARY_GTK);
	Linker.link(gtk_tree_view_expand_all, "gtk_tree_view_expand_all", LIBRARY_GTK);
	Linker.link(gtk_tree_view_expand_row, "gtk_tree_view_expand_row", LIBRARY_GTK);
	Linker.link(gtk_tree_view_expand_to_path, "gtk_tree_view_expand_to_path", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_activate_on_single_click, "gtk_tree_view_get_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_background_area, "gtk_tree_view_get_background_area", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_cell_area, "gtk_tree_view_get_cell_area", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_column, "gtk_tree_view_get_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_columns, "gtk_tree_view_get_columns", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_cursor, "gtk_tree_view_get_cursor", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_dest_row_at_pos, "gtk_tree_view_get_dest_row_at_pos", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_drag_dest_row, "gtk_tree_view_get_drag_dest_row", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_enable_search, "gtk_tree_view_get_enable_search", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_enable_tree_lines, "gtk_tree_view_get_enable_tree_lines", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_expander_column, "gtk_tree_view_get_expander_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_fixed_height_mode, "gtk_tree_view_get_fixed_height_mode", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_grid_lines, "gtk_tree_view_get_grid_lines", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_headers_clickable, "gtk_tree_view_get_headers_clickable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_headers_visible, "gtk_tree_view_get_headers_visible", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_hover_expand, "gtk_tree_view_get_hover_expand", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_hover_selection, "gtk_tree_view_get_hover_selection", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_level_indentation, "gtk_tree_view_get_level_indentation", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_model, "gtk_tree_view_get_model", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_n_columns, "gtk_tree_view_get_n_columns", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_path_at_pos, "gtk_tree_view_get_path_at_pos", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_reorderable, "gtk_tree_view_get_reorderable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_row_separator_func, "gtk_tree_view_get_row_separator_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_rubber_banding, "gtk_tree_view_get_rubber_banding", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_search_column, "gtk_tree_view_get_search_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_search_entry, "gtk_tree_view_get_search_entry", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_search_equal_func, "gtk_tree_view_get_search_equal_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_selection, "gtk_tree_view_get_selection", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_show_expanders, "gtk_tree_view_get_show_expanders", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_tooltip_column, "gtk_tree_view_get_tooltip_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_tooltip_context, "gtk_tree_view_get_tooltip_context", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_visible_range, "gtk_tree_view_get_visible_range", LIBRARY_GTK);
	Linker.link(gtk_tree_view_get_visible_rect, "gtk_tree_view_get_visible_rect", LIBRARY_GTK);
	Linker.link(gtk_tree_view_insert_column, "gtk_tree_view_insert_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_insert_column_with_attributes, "gtk_tree_view_insert_column_with_attributes", LIBRARY_GTK);
	Linker.link(gtk_tree_view_insert_column_with_data_func, "gtk_tree_view_insert_column_with_data_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_is_blank_at_pos, "gtk_tree_view_is_blank_at_pos", LIBRARY_GTK);
	Linker.link(gtk_tree_view_is_rubber_banding_active, "gtk_tree_view_is_rubber_banding_active", LIBRARY_GTK);
	Linker.link(gtk_tree_view_map_expanded_rows, "gtk_tree_view_map_expanded_rows", LIBRARY_GTK);
	Linker.link(gtk_tree_view_move_column_after, "gtk_tree_view_move_column_after", LIBRARY_GTK);
	Linker.link(gtk_tree_view_remove_column, "gtk_tree_view_remove_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_row_activated, "gtk_tree_view_row_activated", LIBRARY_GTK);
	Linker.link(gtk_tree_view_row_expanded, "gtk_tree_view_row_expanded", LIBRARY_GTK);
	Linker.link(gtk_tree_view_scroll_to_cell, "gtk_tree_view_scroll_to_cell", LIBRARY_GTK);
	Linker.link(gtk_tree_view_scroll_to_point, "gtk_tree_view_scroll_to_point", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_activate_on_single_click, "gtk_tree_view_set_activate_on_single_click", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_column_drag_function, "gtk_tree_view_set_column_drag_function", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_cursor, "gtk_tree_view_set_cursor", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_cursor_on_cell, "gtk_tree_view_set_cursor_on_cell", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_drag_dest_row, "gtk_tree_view_set_drag_dest_row", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_enable_search, "gtk_tree_view_set_enable_search", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_enable_tree_lines, "gtk_tree_view_set_enable_tree_lines", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_expander_column, "gtk_tree_view_set_expander_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_fixed_height_mode, "gtk_tree_view_set_fixed_height_mode", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_grid_lines, "gtk_tree_view_set_grid_lines", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_headers_clickable, "gtk_tree_view_set_headers_clickable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_headers_visible, "gtk_tree_view_set_headers_visible", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_hover_expand, "gtk_tree_view_set_hover_expand", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_hover_selection, "gtk_tree_view_set_hover_selection", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_level_indentation, "gtk_tree_view_set_level_indentation", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_model, "gtk_tree_view_set_model", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_reorderable, "gtk_tree_view_set_reorderable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_row_separator_func, "gtk_tree_view_set_row_separator_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_rubber_banding, "gtk_tree_view_set_rubber_banding", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_search_column, "gtk_tree_view_set_search_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_search_entry, "gtk_tree_view_set_search_entry", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_search_equal_func, "gtk_tree_view_set_search_equal_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_show_expanders, "gtk_tree_view_set_show_expanders", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_tooltip_cell, "gtk_tree_view_set_tooltip_cell", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_tooltip_column, "gtk_tree_view_set_tooltip_column", LIBRARY_GTK);
	Linker.link(gtk_tree_view_set_tooltip_row, "gtk_tree_view_set_tooltip_row", LIBRARY_GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_dest, "gtk_tree_view_unset_rows_drag_dest", LIBRARY_GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_source, "gtk_tree_view_unset_rows_drag_source", LIBRARY_GTK);

	// gtk.TreeViewColumn

	Linker.link(gtk_tree_view_column_get_type, "gtk_tree_view_column_get_type", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_new, "gtk_tree_view_column_new", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_new_with_area, "gtk_tree_view_column_new_with_area", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_new_with_attributes, "gtk_tree_view_column_new_with_attributes", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_add_attribute, "gtk_tree_view_column_add_attribute", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_cell_get_position, "gtk_tree_view_column_cell_get_position", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_cell_get_size, "gtk_tree_view_column_cell_get_size", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_cell_is_visible, "gtk_tree_view_column_cell_is_visible", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_cell_set_cell_data, "gtk_tree_view_column_cell_set_cell_data", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_clear, "gtk_tree_view_column_clear", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_clear_attributes, "gtk_tree_view_column_clear_attributes", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_clicked, "gtk_tree_view_column_clicked", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_focus_cell, "gtk_tree_view_column_focus_cell", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_alignment, "gtk_tree_view_column_get_alignment", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_button, "gtk_tree_view_column_get_button", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_clickable, "gtk_tree_view_column_get_clickable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_expand, "gtk_tree_view_column_get_expand", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_fixed_width, "gtk_tree_view_column_get_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_max_width, "gtk_tree_view_column_get_max_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_min_width, "gtk_tree_view_column_get_min_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_reorderable, "gtk_tree_view_column_get_reorderable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_resizable, "gtk_tree_view_column_get_resizable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_sizing, "gtk_tree_view_column_get_sizing", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_sort_column_id, "gtk_tree_view_column_get_sort_column_id", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_sort_indicator, "gtk_tree_view_column_get_sort_indicator", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_sort_order, "gtk_tree_view_column_get_sort_order", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_spacing, "gtk_tree_view_column_get_spacing", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_title, "gtk_tree_view_column_get_title", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_tree_view, "gtk_tree_view_column_get_tree_view", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_visible, "gtk_tree_view_column_get_visible", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_widget, "gtk_tree_view_column_get_widget", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_width, "gtk_tree_view_column_get_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_get_x_offset, "gtk_tree_view_column_get_x_offset", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_pack_end, "gtk_tree_view_column_pack_end", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_pack_start, "gtk_tree_view_column_pack_start", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_queue_resize, "gtk_tree_view_column_queue_resize", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_alignment, "gtk_tree_view_column_set_alignment", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_attributes, "gtk_tree_view_column_set_attributes", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_cell_data_func, "gtk_tree_view_column_set_cell_data_func", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_clickable, "gtk_tree_view_column_set_clickable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_expand, "gtk_tree_view_column_set_expand", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_fixed_width, "gtk_tree_view_column_set_fixed_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_max_width, "gtk_tree_view_column_set_max_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_min_width, "gtk_tree_view_column_set_min_width", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_reorderable, "gtk_tree_view_column_set_reorderable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_resizable, "gtk_tree_view_column_set_resizable", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_sizing, "gtk_tree_view_column_set_sizing", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_sort_column_id, "gtk_tree_view_column_set_sort_column_id", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_sort_indicator, "gtk_tree_view_column_set_sort_indicator", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_sort_order, "gtk_tree_view_column_set_sort_order", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_spacing, "gtk_tree_view_column_set_spacing", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_title, "gtk_tree_view_column_set_title", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_visible, "gtk_tree_view_column_set_visible", LIBRARY_GTK);
	Linker.link(gtk_tree_view_column_set_widget, "gtk_tree_view_column_set_widget", LIBRARY_GTK);

	// gtk.Video

	Linker.link(gtk_video_get_type, "gtk_video_get_type", LIBRARY_GTK);
	Linker.link(gtk_video_new, "gtk_video_new", LIBRARY_GTK);
	Linker.link(gtk_video_new_for_file, "gtk_video_new_for_file", LIBRARY_GTK);
	Linker.link(gtk_video_new_for_filename, "gtk_video_new_for_filename", LIBRARY_GTK);
	Linker.link(gtk_video_new_for_media_stream, "gtk_video_new_for_media_stream", LIBRARY_GTK);
	Linker.link(gtk_video_new_for_resource, "gtk_video_new_for_resource", LIBRARY_GTK);
	Linker.link(gtk_video_get_autoplay, "gtk_video_get_autoplay", LIBRARY_GTK);
	Linker.link(gtk_video_get_file, "gtk_video_get_file", LIBRARY_GTK);
	Linker.link(gtk_video_get_loop, "gtk_video_get_loop", LIBRARY_GTK);
	Linker.link(gtk_video_get_media_stream, "gtk_video_get_media_stream", LIBRARY_GTK);
	Linker.link(gtk_video_set_autoplay, "gtk_video_set_autoplay", LIBRARY_GTK);
	Linker.link(gtk_video_set_file, "gtk_video_set_file", LIBRARY_GTK);
	Linker.link(gtk_video_set_filename, "gtk_video_set_filename", LIBRARY_GTK);
	Linker.link(gtk_video_set_loop, "gtk_video_set_loop", LIBRARY_GTK);
	Linker.link(gtk_video_set_media_stream, "gtk_video_set_media_stream", LIBRARY_GTK);
	Linker.link(gtk_video_set_resource, "gtk_video_set_resource", LIBRARY_GTK);

	// gtk.Viewport

	Linker.link(gtk_viewport_get_type, "gtk_viewport_get_type", LIBRARY_GTK);
	Linker.link(gtk_viewport_new, "gtk_viewport_new", LIBRARY_GTK);
	Linker.link(gtk_viewport_get_child, "gtk_viewport_get_child", LIBRARY_GTK);
	Linker.link(gtk_viewport_get_scroll_to_focus, "gtk_viewport_get_scroll_to_focus", LIBRARY_GTK);
	Linker.link(gtk_viewport_set_child, "gtk_viewport_set_child", LIBRARY_GTK);
	Linker.link(gtk_viewport_set_scroll_to_focus, "gtk_viewport_set_scroll_to_focus", LIBRARY_GTK);

	// gtk.VolumeButton

	Linker.link(gtk_volume_button_get_type, "gtk_volume_button_get_type", LIBRARY_GTK);
	Linker.link(gtk_volume_button_new, "gtk_volume_button_new", LIBRARY_GTK);

	// gtk.Widget

	Linker.link(gtk_widget_get_type, "gtk_widget_get_type", LIBRARY_GTK);
	Linker.link(gtk_widget_get_default_direction, "gtk_widget_get_default_direction", LIBRARY_GTK);
	Linker.link(gtk_widget_set_default_direction, "gtk_widget_set_default_direction", LIBRARY_GTK);
	Linker.link(gtk_widget_action_set_enabled, "gtk_widget_action_set_enabled", LIBRARY_GTK);
	Linker.link(gtk_widget_activate, "gtk_widget_activate", LIBRARY_GTK);
	Linker.link(gtk_widget_activate_action, "gtk_widget_activate_action", LIBRARY_GTK);
	Linker.link(gtk_widget_activate_action_variant, "gtk_widget_activate_action_variant", LIBRARY_GTK);
	Linker.link(gtk_widget_activate_default, "gtk_widget_activate_default", LIBRARY_GTK);
	Linker.link(gtk_widget_add_controller, "gtk_widget_add_controller", LIBRARY_GTK);
	Linker.link(gtk_widget_add_css_class, "gtk_widget_add_css_class", LIBRARY_GTK);
	Linker.link(gtk_widget_add_mnemonic_label, "gtk_widget_add_mnemonic_label", LIBRARY_GTK);
	Linker.link(gtk_widget_add_tick_callback, "gtk_widget_add_tick_callback", LIBRARY_GTK);
	Linker.link(gtk_widget_allocate, "gtk_widget_allocate", LIBRARY_GTK);
	Linker.link(gtk_widget_child_focus, "gtk_widget_child_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_compute_bounds, "gtk_widget_compute_bounds", LIBRARY_GTK);
	Linker.link(gtk_widget_compute_expand, "gtk_widget_compute_expand", LIBRARY_GTK);
	Linker.link(gtk_widget_compute_point, "gtk_widget_compute_point", LIBRARY_GTK);
	Linker.link(gtk_widget_compute_transform, "gtk_widget_compute_transform", LIBRARY_GTK);
	Linker.link(gtk_widget_contains, "gtk_widget_contains", LIBRARY_GTK);
	Linker.link(gtk_widget_create_pango_context, "gtk_widget_create_pango_context", LIBRARY_GTK);
	Linker.link(gtk_widget_create_pango_layout, "gtk_widget_create_pango_layout", LIBRARY_GTK);
	Linker.link(gtk_drag_check_threshold, "gtk_drag_check_threshold", LIBRARY_GTK);
	Linker.link(gtk_widget_error_bell, "gtk_widget_error_bell", LIBRARY_GTK);
	Linker.link(gtk_widget_get_allocated_baseline, "gtk_widget_get_allocated_baseline", LIBRARY_GTK);
	Linker.link(gtk_widget_get_allocated_height, "gtk_widget_get_allocated_height", LIBRARY_GTK);
	Linker.link(gtk_widget_get_allocated_width, "gtk_widget_get_allocated_width", LIBRARY_GTK);
	Linker.link(gtk_widget_get_allocation, "gtk_widget_get_allocation", LIBRARY_GTK);
	Linker.link(gtk_widget_get_ancestor, "gtk_widget_get_ancestor", LIBRARY_GTK);
	Linker.link(gtk_widget_get_can_focus, "gtk_widget_get_can_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_get_can_target, "gtk_widget_get_can_target", LIBRARY_GTK);
	Linker.link(gtk_widget_get_child_visible, "gtk_widget_get_child_visible", LIBRARY_GTK);
	Linker.link(gtk_widget_get_clipboard, "gtk_widget_get_clipboard", LIBRARY_GTK);
	Linker.link(gtk_widget_get_css_classes, "gtk_widget_get_css_classes", LIBRARY_GTK);
	Linker.link(gtk_widget_get_css_name, "gtk_widget_get_css_name", LIBRARY_GTK);
	Linker.link(gtk_widget_get_cursor, "gtk_widget_get_cursor", LIBRARY_GTK);
	Linker.link(gtk_widget_get_direction, "gtk_widget_get_direction", LIBRARY_GTK);
	Linker.link(gtk_widget_get_display, "gtk_widget_get_display", LIBRARY_GTK);
	Linker.link(gtk_widget_get_first_child, "gtk_widget_get_first_child", LIBRARY_GTK);
	Linker.link(gtk_widget_get_focus_child, "gtk_widget_get_focus_child", LIBRARY_GTK);
	Linker.link(gtk_widget_get_focus_on_click, "gtk_widget_get_focus_on_click", LIBRARY_GTK);
	Linker.link(gtk_widget_get_focusable, "gtk_widget_get_focusable", LIBRARY_GTK);
	Linker.link(gtk_widget_get_font_map, "gtk_widget_get_font_map", LIBRARY_GTK);
	Linker.link(gtk_widget_get_font_options, "gtk_widget_get_font_options", LIBRARY_GTK);
	Linker.link(gtk_widget_get_frame_clock, "gtk_widget_get_frame_clock", LIBRARY_GTK);
	Linker.link(gtk_widget_get_halign, "gtk_widget_get_halign", LIBRARY_GTK);
	Linker.link(gtk_widget_get_has_tooltip, "gtk_widget_get_has_tooltip", LIBRARY_GTK);
	Linker.link(gtk_widget_get_height, "gtk_widget_get_height", LIBRARY_GTK);
	Linker.link(gtk_widget_get_hexpand, "gtk_widget_get_hexpand", LIBRARY_GTK);
	Linker.link(gtk_widget_get_hexpand_set, "gtk_widget_get_hexpand_set", LIBRARY_GTK);
	Linker.link(gtk_widget_get_last_child, "gtk_widget_get_last_child", LIBRARY_GTK);
	Linker.link(gtk_widget_get_layout_manager, "gtk_widget_get_layout_manager", LIBRARY_GTK);
	Linker.link(gtk_widget_get_mapped, "gtk_widget_get_mapped", LIBRARY_GTK);
	Linker.link(gtk_widget_get_margin_bottom, "gtk_widget_get_margin_bottom", LIBRARY_GTK);
	Linker.link(gtk_widget_get_margin_end, "gtk_widget_get_margin_end", LIBRARY_GTK);
	Linker.link(gtk_widget_get_margin_start, "gtk_widget_get_margin_start", LIBRARY_GTK);
	Linker.link(gtk_widget_get_margin_top, "gtk_widget_get_margin_top", LIBRARY_GTK);
	Linker.link(gtk_widget_get_name, "gtk_widget_get_name", LIBRARY_GTK);
	Linker.link(gtk_widget_get_native, "gtk_widget_get_native", LIBRARY_GTK);
	Linker.link(gtk_widget_get_next_sibling, "gtk_widget_get_next_sibling", LIBRARY_GTK);
	Linker.link(gtk_widget_get_opacity, "gtk_widget_get_opacity", LIBRARY_GTK);
	Linker.link(gtk_widget_get_overflow, "gtk_widget_get_overflow", LIBRARY_GTK);
	Linker.link(gtk_widget_get_pango_context, "gtk_widget_get_pango_context", LIBRARY_GTK);
	Linker.link(gtk_widget_get_parent, "gtk_widget_get_parent", LIBRARY_GTK);
	Linker.link(gtk_widget_get_preferred_size, "gtk_widget_get_preferred_size", LIBRARY_GTK);
	Linker.link(gtk_widget_get_prev_sibling, "gtk_widget_get_prev_sibling", LIBRARY_GTK);
	Linker.link(gtk_widget_get_primary_clipboard, "gtk_widget_get_primary_clipboard", LIBRARY_GTK);
	Linker.link(gtk_widget_get_realized, "gtk_widget_get_realized", LIBRARY_GTK);
	Linker.link(gtk_widget_get_receives_default, "gtk_widget_get_receives_default", LIBRARY_GTK);
	Linker.link(gtk_widget_get_request_mode, "gtk_widget_get_request_mode", LIBRARY_GTK);
	Linker.link(gtk_widget_get_root, "gtk_widget_get_root", LIBRARY_GTK);
	Linker.link(gtk_widget_get_scale_factor, "gtk_widget_get_scale_factor", LIBRARY_GTK);
	Linker.link(gtk_widget_get_sensitive, "gtk_widget_get_sensitive", LIBRARY_GTK);
	Linker.link(gtk_widget_get_settings, "gtk_widget_get_settings", LIBRARY_GTK);
	Linker.link(gtk_widget_get_size, "gtk_widget_get_size", LIBRARY_GTK);
	Linker.link(gtk_widget_get_size_request, "gtk_widget_get_size_request", LIBRARY_GTK);
	Linker.link(gtk_widget_get_state_flags, "gtk_widget_get_state_flags", LIBRARY_GTK);
	Linker.link(gtk_widget_get_style_context, "gtk_widget_get_style_context", LIBRARY_GTK);
	Linker.link(gtk_widget_get_template_child, "gtk_widget_get_template_child", LIBRARY_GTK);
	Linker.link(gtk_widget_get_tooltip_markup, "gtk_widget_get_tooltip_markup", LIBRARY_GTK);
	Linker.link(gtk_widget_get_tooltip_text, "gtk_widget_get_tooltip_text", LIBRARY_GTK);
	Linker.link(gtk_widget_get_valign, "gtk_widget_get_valign", LIBRARY_GTK);
	Linker.link(gtk_widget_get_vexpand, "gtk_widget_get_vexpand", LIBRARY_GTK);
	Linker.link(gtk_widget_get_vexpand_set, "gtk_widget_get_vexpand_set", LIBRARY_GTK);
	Linker.link(gtk_widget_get_visible, "gtk_widget_get_visible", LIBRARY_GTK);
	Linker.link(gtk_widget_get_width, "gtk_widget_get_width", LIBRARY_GTK);
	Linker.link(gtk_widget_grab_focus, "gtk_widget_grab_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_has_css_class, "gtk_widget_has_css_class", LIBRARY_GTK);
	Linker.link(gtk_widget_has_default, "gtk_widget_has_default", LIBRARY_GTK);
	Linker.link(gtk_widget_has_focus, "gtk_widget_has_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_has_visible_focus, "gtk_widget_has_visible_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_hide, "gtk_widget_hide", LIBRARY_GTK);
	Linker.link(gtk_widget_in_destruction, "gtk_widget_in_destruction", LIBRARY_GTK);
	Linker.link(gtk_widget_init_template, "gtk_widget_init_template", LIBRARY_GTK);
	Linker.link(gtk_widget_insert_action_group, "gtk_widget_insert_action_group", LIBRARY_GTK);
	Linker.link(gtk_widget_insert_after, "gtk_widget_insert_after", LIBRARY_GTK);
	Linker.link(gtk_widget_insert_before, "gtk_widget_insert_before", LIBRARY_GTK);
	Linker.link(gtk_widget_is_ancestor, "gtk_widget_is_ancestor", LIBRARY_GTK);
	Linker.link(gtk_widget_is_drawable, "gtk_widget_is_drawable", LIBRARY_GTK);
	Linker.link(gtk_widget_is_focus, "gtk_widget_is_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_is_sensitive, "gtk_widget_is_sensitive", LIBRARY_GTK);
	Linker.link(gtk_widget_is_visible, "gtk_widget_is_visible", LIBRARY_GTK);
	Linker.link(gtk_widget_keynav_failed, "gtk_widget_keynav_failed", LIBRARY_GTK);
	Linker.link(gtk_widget_list_mnemonic_labels, "gtk_widget_list_mnemonic_labels", LIBRARY_GTK);
	Linker.link(gtk_widget_map, "gtk_widget_map", LIBRARY_GTK);
	Linker.link(gtk_widget_measure, "gtk_widget_measure", LIBRARY_GTK);
	Linker.link(gtk_widget_mnemonic_activate, "gtk_widget_mnemonic_activate", LIBRARY_GTK);
	Linker.link(gtk_widget_observe_children, "gtk_widget_observe_children", LIBRARY_GTK);
	Linker.link(gtk_widget_observe_controllers, "gtk_widget_observe_controllers", LIBRARY_GTK);
	Linker.link(gtk_widget_pick, "gtk_widget_pick", LIBRARY_GTK);
	Linker.link(gtk_widget_queue_allocate, "gtk_widget_queue_allocate", LIBRARY_GTK);
	Linker.link(gtk_widget_queue_draw, "gtk_widget_queue_draw", LIBRARY_GTK);
	Linker.link(gtk_widget_queue_resize, "gtk_widget_queue_resize", LIBRARY_GTK);
	Linker.link(gtk_widget_realize, "gtk_widget_realize", LIBRARY_GTK);
	Linker.link(gtk_widget_remove_controller, "gtk_widget_remove_controller", LIBRARY_GTK);
	Linker.link(gtk_widget_remove_css_class, "gtk_widget_remove_css_class", LIBRARY_GTK);
	Linker.link(gtk_widget_remove_mnemonic_label, "gtk_widget_remove_mnemonic_label", LIBRARY_GTK);
	Linker.link(gtk_widget_remove_tick_callback, "gtk_widget_remove_tick_callback", LIBRARY_GTK);
	Linker.link(gtk_widget_set_can_focus, "gtk_widget_set_can_focus", LIBRARY_GTK);
	Linker.link(gtk_widget_set_can_target, "gtk_widget_set_can_target", LIBRARY_GTK);
	Linker.link(gtk_widget_set_child_visible, "gtk_widget_set_child_visible", LIBRARY_GTK);
	Linker.link(gtk_widget_set_css_classes, "gtk_widget_set_css_classes", LIBRARY_GTK);
	Linker.link(gtk_widget_set_cursor, "gtk_widget_set_cursor", LIBRARY_GTK);
	Linker.link(gtk_widget_set_cursor_from_name, "gtk_widget_set_cursor_from_name", LIBRARY_GTK);
	Linker.link(gtk_widget_set_direction, "gtk_widget_set_direction", LIBRARY_GTK);
	Linker.link(gtk_widget_set_focus_child, "gtk_widget_set_focus_child", LIBRARY_GTK);
	Linker.link(gtk_widget_set_focus_on_click, "gtk_widget_set_focus_on_click", LIBRARY_GTK);
	Linker.link(gtk_widget_set_focusable, "gtk_widget_set_focusable", LIBRARY_GTK);
	Linker.link(gtk_widget_set_font_map, "gtk_widget_set_font_map", LIBRARY_GTK);
	Linker.link(gtk_widget_set_font_options, "gtk_widget_set_font_options", LIBRARY_GTK);
	Linker.link(gtk_widget_set_halign, "gtk_widget_set_halign", LIBRARY_GTK);
	Linker.link(gtk_widget_set_has_tooltip, "gtk_widget_set_has_tooltip", LIBRARY_GTK);
	Linker.link(gtk_widget_set_hexpand, "gtk_widget_set_hexpand", LIBRARY_GTK);
	Linker.link(gtk_widget_set_hexpand_set, "gtk_widget_set_hexpand_set", LIBRARY_GTK);
	Linker.link(gtk_widget_set_layout_manager, "gtk_widget_set_layout_manager", LIBRARY_GTK);
	Linker.link(gtk_widget_set_margin_bottom, "gtk_widget_set_margin_bottom", LIBRARY_GTK);
	Linker.link(gtk_widget_set_margin_end, "gtk_widget_set_margin_end", LIBRARY_GTK);
	Linker.link(gtk_widget_set_margin_start, "gtk_widget_set_margin_start", LIBRARY_GTK);
	Linker.link(gtk_widget_set_margin_top, "gtk_widget_set_margin_top", LIBRARY_GTK);
	Linker.link(gtk_widget_set_name, "gtk_widget_set_name", LIBRARY_GTK);
	Linker.link(gtk_widget_set_opacity, "gtk_widget_set_opacity", LIBRARY_GTK);
	Linker.link(gtk_widget_set_overflow, "gtk_widget_set_overflow", LIBRARY_GTK);
	Linker.link(gtk_widget_set_parent, "gtk_widget_set_parent", LIBRARY_GTK);
	Linker.link(gtk_widget_set_receives_default, "gtk_widget_set_receives_default", LIBRARY_GTK);
	Linker.link(gtk_widget_set_sensitive, "gtk_widget_set_sensitive", LIBRARY_GTK);
	Linker.link(gtk_widget_set_size_request, "gtk_widget_set_size_request", LIBRARY_GTK);
	Linker.link(gtk_widget_set_state_flags, "gtk_widget_set_state_flags", LIBRARY_GTK);
	Linker.link(gtk_widget_set_tooltip_markup, "gtk_widget_set_tooltip_markup", LIBRARY_GTK);
	Linker.link(gtk_widget_set_tooltip_text, "gtk_widget_set_tooltip_text", LIBRARY_GTK);
	Linker.link(gtk_widget_set_valign, "gtk_widget_set_valign", LIBRARY_GTK);
	Linker.link(gtk_widget_set_vexpand, "gtk_widget_set_vexpand", LIBRARY_GTK);
	Linker.link(gtk_widget_set_vexpand_set, "gtk_widget_set_vexpand_set", LIBRARY_GTK);
	Linker.link(gtk_widget_set_visible, "gtk_widget_set_visible", LIBRARY_GTK);
	Linker.link(gtk_widget_should_layout, "gtk_widget_should_layout", LIBRARY_GTK);
	Linker.link(gtk_widget_show, "gtk_widget_show", LIBRARY_GTK);
	Linker.link(gtk_widget_size_allocate, "gtk_widget_size_allocate", LIBRARY_GTK);
	Linker.link(gtk_widget_snapshot_child, "gtk_widget_snapshot_child", LIBRARY_GTK);
	Linker.link(gtk_widget_translate_coordinates, "gtk_widget_translate_coordinates", LIBRARY_GTK);
	Linker.link(gtk_widget_trigger_tooltip_query, "gtk_widget_trigger_tooltip_query", LIBRARY_GTK);
	Linker.link(gtk_widget_unmap, "gtk_widget_unmap", LIBRARY_GTK);
	Linker.link(gtk_widget_unparent, "gtk_widget_unparent", LIBRARY_GTK);
	Linker.link(gtk_widget_unrealize, "gtk_widget_unrealize", LIBRARY_GTK);
	Linker.link(gtk_widget_unset_state_flags, "gtk_widget_unset_state_flags", LIBRARY_GTK);

	// gtk.WidgetClass

	Linker.link(gtk_widget_class_add_binding, "gtk_widget_class_add_binding", LIBRARY_GTK);
	Linker.link(gtk_widget_class_add_binding_action, "gtk_widget_class_add_binding_action", LIBRARY_GTK);
	Linker.link(gtk_widget_class_add_binding_signal, "gtk_widget_class_add_binding_signal", LIBRARY_GTK);
	Linker.link(gtk_widget_class_add_shortcut, "gtk_widget_class_add_shortcut", LIBRARY_GTK);
	Linker.link(gtk_widget_class_bind_template_callback_full, "gtk_widget_class_bind_template_callback_full", LIBRARY_GTK);
	Linker.link(gtk_widget_class_bind_template_child_full, "gtk_widget_class_bind_template_child_full", LIBRARY_GTK);
	Linker.link(gtk_widget_class_get_accessible_role, "gtk_widget_class_get_accessible_role", LIBRARY_GTK);
	Linker.link(gtk_widget_class_get_activate_signal, "gtk_widget_class_get_activate_signal", LIBRARY_GTK);
	Linker.link(gtk_widget_class_get_css_name, "gtk_widget_class_get_css_name", LIBRARY_GTK);
	Linker.link(gtk_widget_class_get_layout_manager_type, "gtk_widget_class_get_layout_manager_type", LIBRARY_GTK);
	Linker.link(gtk_widget_class_install_action, "gtk_widget_class_install_action", LIBRARY_GTK);
	Linker.link(gtk_widget_class_install_property_action, "gtk_widget_class_install_property_action", LIBRARY_GTK);
	Linker.link(gtk_widget_class_query_action, "gtk_widget_class_query_action", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_accessible_role, "gtk_widget_class_set_accessible_role", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_activate_signal, "gtk_widget_class_set_activate_signal", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_activate_signal_from_name, "gtk_widget_class_set_activate_signal_from_name", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_css_name, "gtk_widget_class_set_css_name", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_layout_manager_type, "gtk_widget_class_set_layout_manager_type", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_template, "gtk_widget_class_set_template", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_template_from_resource, "gtk_widget_class_set_template_from_resource", LIBRARY_GTK);
	Linker.link(gtk_widget_class_set_template_scope, "gtk_widget_class_set_template_scope", LIBRARY_GTK);

	// gtk.WidgetPaintable

	Linker.link(gtk_widget_paintable_get_type, "gtk_widget_paintable_get_type", LIBRARY_GTK);
	Linker.link(gtk_widget_paintable_new, "gtk_widget_paintable_new", LIBRARY_GTK);
	Linker.link(gtk_widget_paintable_get_widget, "gtk_widget_paintable_get_widget", LIBRARY_GTK);
	Linker.link(gtk_widget_paintable_set_widget, "gtk_widget_paintable_set_widget", LIBRARY_GTK);

	// gtk.Window

	Linker.link(gtk_window_get_type, "gtk_window_get_type", LIBRARY_GTK);
	Linker.link(gtk_window_new, "gtk_window_new", LIBRARY_GTK);
	Linker.link(gtk_window_get_default_icon_name, "gtk_window_get_default_icon_name", LIBRARY_GTK);
	Linker.link(gtk_window_get_toplevels, "gtk_window_get_toplevels", LIBRARY_GTK);
	Linker.link(gtk_window_list_toplevels, "gtk_window_list_toplevels", LIBRARY_GTK);
	Linker.link(gtk_window_set_auto_startup_notification, "gtk_window_set_auto_startup_notification", LIBRARY_GTK);
	Linker.link(gtk_window_set_default_icon_name, "gtk_window_set_default_icon_name", LIBRARY_GTK);
	Linker.link(gtk_window_set_interactive_debugging, "gtk_window_set_interactive_debugging", LIBRARY_GTK);
	Linker.link(gtk_window_close, "gtk_window_close", LIBRARY_GTK);
	Linker.link(gtk_window_destroy, "gtk_window_destroy", LIBRARY_GTK);
	Linker.link(gtk_window_fullscreen, "gtk_window_fullscreen", LIBRARY_GTK);
	Linker.link(gtk_window_fullscreen_on_monitor, "gtk_window_fullscreen_on_monitor", LIBRARY_GTK);
	Linker.link(gtk_window_get_application, "gtk_window_get_application", LIBRARY_GTK);
	Linker.link(gtk_window_get_child, "gtk_window_get_child", LIBRARY_GTK);
	Linker.link(gtk_window_get_decorated, "gtk_window_get_decorated", LIBRARY_GTK);
	Linker.link(gtk_window_get_default_size, "gtk_window_get_default_size", LIBRARY_GTK);
	Linker.link(gtk_window_get_default_widget, "gtk_window_get_default_widget", LIBRARY_GTK);
	Linker.link(gtk_window_get_deletable, "gtk_window_get_deletable", LIBRARY_GTK);
	Linker.link(gtk_window_get_destroy_with_parent, "gtk_window_get_destroy_with_parent", LIBRARY_GTK);
	Linker.link(gtk_window_get_focus, "gtk_window_get_focus", LIBRARY_GTK);
	Linker.link(gtk_window_get_focus_visible, "gtk_window_get_focus_visible", LIBRARY_GTK);
	Linker.link(gtk_window_get_group, "gtk_window_get_group", LIBRARY_GTK);
	Linker.link(gtk_window_get_handle_menubar_accel, "gtk_window_get_handle_menubar_accel", LIBRARY_GTK);
	Linker.link(gtk_window_get_hide_on_close, "gtk_window_get_hide_on_close", LIBRARY_GTK);
	Linker.link(gtk_window_get_icon_name, "gtk_window_get_icon_name", LIBRARY_GTK);
	Linker.link(gtk_window_get_mnemonics_visible, "gtk_window_get_mnemonics_visible", LIBRARY_GTK);
	Linker.link(gtk_window_get_modal, "gtk_window_get_modal", LIBRARY_GTK);
	Linker.link(gtk_window_get_resizable, "gtk_window_get_resizable", LIBRARY_GTK);
	Linker.link(gtk_window_get_title, "gtk_window_get_title", LIBRARY_GTK);
	Linker.link(gtk_window_get_titlebar, "gtk_window_get_titlebar", LIBRARY_GTK);
	Linker.link(gtk_window_get_transient_for, "gtk_window_get_transient_for", LIBRARY_GTK);
	Linker.link(gtk_window_has_group, "gtk_window_has_group", LIBRARY_GTK);
	Linker.link(gtk_window_is_active, "gtk_window_is_active", LIBRARY_GTK);
	Linker.link(gtk_window_is_fullscreen, "gtk_window_is_fullscreen", LIBRARY_GTK);
	Linker.link(gtk_window_is_maximized, "gtk_window_is_maximized", LIBRARY_GTK);
	Linker.link(gtk_window_maximize, "gtk_window_maximize", LIBRARY_GTK);
	Linker.link(gtk_window_minimize, "gtk_window_minimize", LIBRARY_GTK);
	Linker.link(gtk_window_present, "gtk_window_present", LIBRARY_GTK);
	Linker.link(gtk_window_present_with_time, "gtk_window_present_with_time", LIBRARY_GTK);
	Linker.link(gtk_window_set_application, "gtk_window_set_application", LIBRARY_GTK);
	Linker.link(gtk_window_set_child, "gtk_window_set_child", LIBRARY_GTK);
	Linker.link(gtk_window_set_decorated, "gtk_window_set_decorated", LIBRARY_GTK);
	Linker.link(gtk_window_set_default_size, "gtk_window_set_default_size", LIBRARY_GTK);
	Linker.link(gtk_window_set_default_widget, "gtk_window_set_default_widget", LIBRARY_GTK);
	Linker.link(gtk_window_set_deletable, "gtk_window_set_deletable", LIBRARY_GTK);
	Linker.link(gtk_window_set_destroy_with_parent, "gtk_window_set_destroy_with_parent", LIBRARY_GTK);
	Linker.link(gtk_window_set_display, "gtk_window_set_display", LIBRARY_GTK);
	Linker.link(gtk_window_set_focus, "gtk_window_set_focus", LIBRARY_GTK);
	Linker.link(gtk_window_set_focus_visible, "gtk_window_set_focus_visible", LIBRARY_GTK);
	Linker.link(gtk_window_set_handle_menubar_accel, "gtk_window_set_handle_menubar_accel", LIBRARY_GTK);
	Linker.link(gtk_window_set_hide_on_close, "gtk_window_set_hide_on_close", LIBRARY_GTK);
	Linker.link(gtk_window_set_icon_name, "gtk_window_set_icon_name", LIBRARY_GTK);
	Linker.link(gtk_window_set_mnemonics_visible, "gtk_window_set_mnemonics_visible", LIBRARY_GTK);
	Linker.link(gtk_window_set_modal, "gtk_window_set_modal", LIBRARY_GTK);
	Linker.link(gtk_window_set_resizable, "gtk_window_set_resizable", LIBRARY_GTK);
	Linker.link(gtk_window_set_startup_id, "gtk_window_set_startup_id", LIBRARY_GTK);
	Linker.link(gtk_window_set_title, "gtk_window_set_title", LIBRARY_GTK);
	Linker.link(gtk_window_set_titlebar, "gtk_window_set_titlebar", LIBRARY_GTK);
	Linker.link(gtk_window_set_transient_for, "gtk_window_set_transient_for", LIBRARY_GTK);
	Linker.link(gtk_window_unfullscreen, "gtk_window_unfullscreen", LIBRARY_GTK);
	Linker.link(gtk_window_unmaximize, "gtk_window_unmaximize", LIBRARY_GTK);
	Linker.link(gtk_window_unminimize, "gtk_window_unminimize", LIBRARY_GTK);

	// gtk.WindowControls

	Linker.link(gtk_window_controls_get_type, "gtk_window_controls_get_type", LIBRARY_GTK);
	Linker.link(gtk_window_controls_new, "gtk_window_controls_new", LIBRARY_GTK);
	Linker.link(gtk_window_controls_get_decoration_layout, "gtk_window_controls_get_decoration_layout", LIBRARY_GTK);
	Linker.link(gtk_window_controls_get_empty, "gtk_window_controls_get_empty", LIBRARY_GTK);
	Linker.link(gtk_window_controls_get_side, "gtk_window_controls_get_side", LIBRARY_GTK);
	Linker.link(gtk_window_controls_set_decoration_layout, "gtk_window_controls_set_decoration_layout", LIBRARY_GTK);
	Linker.link(gtk_window_controls_set_side, "gtk_window_controls_set_side", LIBRARY_GTK);

	// gtk.WindowGroup

	Linker.link(gtk_window_group_get_type, "gtk_window_group_get_type", LIBRARY_GTK);
	Linker.link(gtk_window_group_new, "gtk_window_group_new", LIBRARY_GTK);
	Linker.link(gtk_window_group_add_window, "gtk_window_group_add_window", LIBRARY_GTK);
	Linker.link(gtk_window_group_list_windows, "gtk_window_group_list_windows", LIBRARY_GTK);
	Linker.link(gtk_window_group_remove_window, "gtk_window_group_remove_window", LIBRARY_GTK);

	// gtk.WindowHandle

	Linker.link(gtk_window_handle_get_type, "gtk_window_handle_get_type", LIBRARY_GTK);
	Linker.link(gtk_window_handle_new, "gtk_window_handle_new", LIBRARY_GTK);
	Linker.link(gtk_window_handle_get_child, "gtk_window_handle_get_child", LIBRARY_GTK);
	Linker.link(gtk_window_handle_set_child, "gtk_window_handle_set_child", LIBRARY_GTK);
}

__gshared extern(C)
{

	// gtk.ATContext

	GType function() c_gtk_at_context_get_type;
	GtkATContext* function(GtkAccessibleRole accessibleRole, GtkAccessible* accessible, GdkDisplay* display) c_gtk_at_context_create;
	GtkAccessible* function(GtkATContext* self) c_gtk_at_context_get_accessible;
	GtkAccessibleRole function(GtkATContext* self) c_gtk_at_context_get_accessible_role;

	// gtk.AboutDialog

	GType function() c_gtk_about_dialog_get_type;
	GtkWidget* function() c_gtk_about_dialog_new;
	void function(GtkAboutDialog* about, const(char)* sectionName, char** people) c_gtk_about_dialog_add_credit_section;
	char** function(GtkAboutDialog* about) c_gtk_about_dialog_get_artists;
	char** function(GtkAboutDialog* about) c_gtk_about_dialog_get_authors;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_comments;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_copyright;
	char** function(GtkAboutDialog* about) c_gtk_about_dialog_get_documenters;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_license;
	GtkLicense function(GtkAboutDialog* about) c_gtk_about_dialog_get_license_type;
	GdkPaintable* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo_icon_name;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_program_name;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_system_information;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_translator_credits;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_version;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website;
	const(char)* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website_label;
	int function(GtkAboutDialog* about) c_gtk_about_dialog_get_wrap_license;
	void function(GtkAboutDialog* about, char** artists) c_gtk_about_dialog_set_artists;
	void function(GtkAboutDialog* about, char** authors) c_gtk_about_dialog_set_authors;
	void function(GtkAboutDialog* about, const(char)* comments) c_gtk_about_dialog_set_comments;
	void function(GtkAboutDialog* about, const(char)* copyright) c_gtk_about_dialog_set_copyright;
	void function(GtkAboutDialog* about, char** documenters) c_gtk_about_dialog_set_documenters;
	void function(GtkAboutDialog* about, const(char)* license) c_gtk_about_dialog_set_license;
	void function(GtkAboutDialog* about, GtkLicense licenseType) c_gtk_about_dialog_set_license_type;
	void function(GtkAboutDialog* about, GdkPaintable* logo) c_gtk_about_dialog_set_logo;
	void function(GtkAboutDialog* about, const(char)* iconName) c_gtk_about_dialog_set_logo_icon_name;
	void function(GtkAboutDialog* about, const(char)* name) c_gtk_about_dialog_set_program_name;
	void function(GtkAboutDialog* about, const(char)* systemInformation) c_gtk_about_dialog_set_system_information;
	void function(GtkAboutDialog* about, const(char)* translatorCredits) c_gtk_about_dialog_set_translator_credits;
	void function(GtkAboutDialog* about, const(char)* version_) c_gtk_about_dialog_set_version;
	void function(GtkAboutDialog* about, const(char)* website) c_gtk_about_dialog_set_website;
	void function(GtkAboutDialog* about, const(char)* websiteLabel) c_gtk_about_dialog_set_website_label;
	void function(GtkAboutDialog* about, int wrapLicense) c_gtk_about_dialog_set_wrap_license;

	// gtk.Accessible

	GType function() c_gtk_accessible_get_type;
	GtkAccessibleRole function(GtkAccessible* self) c_gtk_accessible_get_accessible_role;
	void function(GtkAccessible* self, GtkAccessibleProperty property) c_gtk_accessible_reset_property;
	void function(GtkAccessible* self, GtkAccessibleRelation relation) c_gtk_accessible_reset_relation;
	void function(GtkAccessible* self, GtkAccessibleState state) c_gtk_accessible_reset_state;
	void function(GtkAccessible* self, GtkAccessibleProperty firstProperty, ... ) c_gtk_accessible_update_property;
	void function(GtkAccessible* self, int nProperties, GtkAccessibleProperty* properties, GValue* values) c_gtk_accessible_update_property_value;
	void function(GtkAccessible* self, GtkAccessibleRelation firstRelation, ... ) c_gtk_accessible_update_relation;
	void function(GtkAccessible* self, int nRelations, GtkAccessibleRelation* relations, GValue* values) c_gtk_accessible_update_relation_value;
	void function(GtkAccessible* self, GtkAccessibleState firstState, ... ) c_gtk_accessible_update_state;
	void function(GtkAccessible* self, int nStates, GtkAccessibleState* states, GValue* values) c_gtk_accessible_update_state_value;

	// gtk.ActionBar

	GType function() c_gtk_action_bar_get_type;
	GtkWidget* function() c_gtk_action_bar_new;
	GtkWidget* function(GtkActionBar* actionBar) c_gtk_action_bar_get_center_widget;
	int function(GtkActionBar* actionBar) c_gtk_action_bar_get_revealed;
	void function(GtkActionBar* actionBar, GtkWidget* child) c_gtk_action_bar_pack_end;
	void function(GtkActionBar* actionBar, GtkWidget* child) c_gtk_action_bar_pack_start;
	void function(GtkActionBar* actionBar, GtkWidget* child) c_gtk_action_bar_remove;
	void function(GtkActionBar* actionBar, GtkWidget* centerWidget) c_gtk_action_bar_set_center_widget;
	void function(GtkActionBar* actionBar, int revealed) c_gtk_action_bar_set_revealed;

	// gtk.Actionable

	GType function() c_gtk_actionable_get_type;
	const(char)* function(GtkActionable* actionable) c_gtk_actionable_get_action_name;
	GVariant* function(GtkActionable* actionable) c_gtk_actionable_get_action_target_value;
	void function(GtkActionable* actionable, const(char)* actionName) c_gtk_actionable_set_action_name;
	void function(GtkActionable* actionable, const(char)* formatString, ... ) c_gtk_actionable_set_action_target;
	void function(GtkActionable* actionable, GVariant* targetValue) c_gtk_actionable_set_action_target_value;
	void function(GtkActionable* actionable, const(char)* detailedActionName) c_gtk_actionable_set_detailed_action_name;

	// gtk.ActivateAction

	GType function() c_gtk_activate_action_get_type;
	GtkShortcutAction* function() c_gtk_activate_action_get;

	// gtk.Adjustment

	GType function() c_gtk_adjustment_get_type;
	GtkAdjustment* function(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize) c_gtk_adjustment_new;
	void function(GtkAdjustment* adjustment, double lower, double upper) c_gtk_adjustment_clamp_page;
	void function(GtkAdjustment* adjustment, double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize) c_gtk_adjustment_configure;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_lower;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_minimum_increment;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_increment;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_size;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_step_increment;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_upper;
	double function(GtkAdjustment* adjustment) c_gtk_adjustment_get_value;
	void function(GtkAdjustment* adjustment, double lower) c_gtk_adjustment_set_lower;
	void function(GtkAdjustment* adjustment, double pageIncrement) c_gtk_adjustment_set_page_increment;
	void function(GtkAdjustment* adjustment, double pageSize) c_gtk_adjustment_set_page_size;
	void function(GtkAdjustment* adjustment, double stepIncrement) c_gtk_adjustment_set_step_increment;
	void function(GtkAdjustment* adjustment, double upper) c_gtk_adjustment_set_upper;
	void function(GtkAdjustment* adjustment, double value) c_gtk_adjustment_set_value;

	// gtk.AlternativeTrigger

	GType function() c_gtk_alternative_trigger_get_type;
	GtkShortcutTrigger* function(GtkShortcutTrigger* first, GtkShortcutTrigger* second) c_gtk_alternative_trigger_new;
	GtkShortcutTrigger* function(GtkAlternativeTrigger* self) c_gtk_alternative_trigger_get_first;
	GtkShortcutTrigger* function(GtkAlternativeTrigger* self) c_gtk_alternative_trigger_get_second;

	// gtk.AnyFilter

	GType function() c_gtk_any_filter_get_type;
	GtkAnyFilter* function() c_gtk_any_filter_new;

	// gtk.AppChooser

	GType function() c_gtk_app_chooser_get_type;
	GAppInfo* function(GtkAppChooser* self) c_gtk_app_chooser_get_app_info;
	char* function(GtkAppChooser* self) c_gtk_app_chooser_get_content_type;
	void function(GtkAppChooser* self) c_gtk_app_chooser_refresh;

	// gtk.AppChooserButton

	GType function() c_gtk_app_chooser_button_get_type;
	GtkWidget* function(const(char)* contentType) c_gtk_app_chooser_button_new;
	void function(GtkAppChooserButton* self, const(char)* name, const(char)* label, GIcon* icon) c_gtk_app_chooser_button_append_custom_item;
	void function(GtkAppChooserButton* self) c_gtk_app_chooser_button_append_separator;
	const(char)* function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_heading;
	int function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_modal;
	int function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_show_default_item;
	int function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_show_dialog_item;
	void function(GtkAppChooserButton* self, const(char)* name) c_gtk_app_chooser_button_set_active_custom_item;
	void function(GtkAppChooserButton* self, const(char)* heading) c_gtk_app_chooser_button_set_heading;
	void function(GtkAppChooserButton* self, int modal) c_gtk_app_chooser_button_set_modal;
	void function(GtkAppChooserButton* self, int setting) c_gtk_app_chooser_button_set_show_default_item;
	void function(GtkAppChooserButton* self, int setting) c_gtk_app_chooser_button_set_show_dialog_item;

	// gtk.AppChooserDialog

	GType function() c_gtk_app_chooser_dialog_get_type;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GFile* file) c_gtk_app_chooser_dialog_new;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, const(char)* contentType) c_gtk_app_chooser_dialog_new_for_content_type;
	const(char)* function(GtkAppChooserDialog* self) c_gtk_app_chooser_dialog_get_heading;
	GtkWidget* function(GtkAppChooserDialog* self) c_gtk_app_chooser_dialog_get_widget;
	void function(GtkAppChooserDialog* self, const(char)* heading) c_gtk_app_chooser_dialog_set_heading;

	// gtk.AppChooserWidget

	GType function() c_gtk_app_chooser_widget_get_type;
	GtkWidget* function(const(char)* contentType) c_gtk_app_chooser_widget_new;
	const(char)* function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_default_text;
	int function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_all;
	int function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_default;
	int function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_fallback;
	int function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_other;
	int function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_recommended;
	void function(GtkAppChooserWidget* self, const(char)* text) c_gtk_app_chooser_widget_set_default_text;
	void function(GtkAppChooserWidget* self, int setting) c_gtk_app_chooser_widget_set_show_all;
	void function(GtkAppChooserWidget* self, int setting) c_gtk_app_chooser_widget_set_show_default;
	void function(GtkAppChooserWidget* self, int setting) c_gtk_app_chooser_widget_set_show_fallback;
	void function(GtkAppChooserWidget* self, int setting) c_gtk_app_chooser_widget_set_show_other;
	void function(GtkAppChooserWidget* self, int setting) c_gtk_app_chooser_widget_set_show_recommended;

	// gtk.Application

	GType function() c_gtk_application_get_type;
	GtkApplication* function(const(char)* applicationId, GApplicationFlags flags) c_gtk_application_new;
	void function(GtkApplication* application, GtkWindow* window) c_gtk_application_add_window;
	char** function(GtkApplication* application, const(char)* detailedActionName) c_gtk_application_get_accels_for_action;
	char** function(GtkApplication* application, const(char)* accel) c_gtk_application_get_actions_for_accel;
	GtkWindow* function(GtkApplication* application) c_gtk_application_get_active_window;
	GMenu* function(GtkApplication* application, const(char)* id) c_gtk_application_get_menu_by_id;
	GMenuModel* function(GtkApplication* application) c_gtk_application_get_menubar;
	GtkWindow* function(GtkApplication* application, uint id) c_gtk_application_get_window_by_id;
	GList* function(GtkApplication* application) c_gtk_application_get_windows;
	uint function(GtkApplication* application, GtkWindow* window, GtkApplicationInhibitFlags flags, const(char)* reason) c_gtk_application_inhibit;
	char** function(GtkApplication* application) c_gtk_application_list_action_descriptions;
	void function(GtkApplication* application, GtkWindow* window) c_gtk_application_remove_window;
	void function(GtkApplication* application, const(char)* detailedActionName, char** accels) c_gtk_application_set_accels_for_action;
	void function(GtkApplication* application, GMenuModel* menubar) c_gtk_application_set_menubar;
	void function(GtkApplication* application, uint cookie) c_gtk_application_uninhibit;

	// gtk.ApplicationWindow

	GType function() c_gtk_application_window_get_type;
	GtkWidget* function(GtkApplication* application) c_gtk_application_window_new;
	GtkShortcutsWindow* function(GtkApplicationWindow* window) c_gtk_application_window_get_help_overlay;
	uint function(GtkApplicationWindow* window) c_gtk_application_window_get_id;
	int function(GtkApplicationWindow* window) c_gtk_application_window_get_show_menubar;
	void function(GtkApplicationWindow* window, GtkShortcutsWindow* helpOverlay) c_gtk_application_window_set_help_overlay;
	void function(GtkApplicationWindow* window, int showMenubar) c_gtk_application_window_set_show_menubar;

	// gtk.AspectFrame

	GType function() c_gtk_aspect_frame_get_type;
	GtkWidget* function(float xalign, float yalign, float ratio, int obeyChild) c_gtk_aspect_frame_new;
	GtkWidget* function(GtkAspectFrame* self) c_gtk_aspect_frame_get_child;
	int function(GtkAspectFrame* self) c_gtk_aspect_frame_get_obey_child;
	float function(GtkAspectFrame* self) c_gtk_aspect_frame_get_ratio;
	float function(GtkAspectFrame* self) c_gtk_aspect_frame_get_xalign;
	float function(GtkAspectFrame* self) c_gtk_aspect_frame_get_yalign;
	void function(GtkAspectFrame* self, GtkWidget* child) c_gtk_aspect_frame_set_child;
	void function(GtkAspectFrame* self, int obeyChild) c_gtk_aspect_frame_set_obey_child;
	void function(GtkAspectFrame* self, float ratio) c_gtk_aspect_frame_set_ratio;
	void function(GtkAspectFrame* self, float xalign) c_gtk_aspect_frame_set_xalign;
	void function(GtkAspectFrame* self, float yalign) c_gtk_aspect_frame_set_yalign;

	// gtk.Assistant

	GType function() c_gtk_assistant_get_type;
	GtkWidget* function() c_gtk_assistant_new;
	void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_add_action_widget;
	int function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_append_page;
	void function(GtkAssistant* assistant) c_gtk_assistant_commit;
	int function(GtkAssistant* assistant) c_gtk_assistant_get_current_page;
	int function(GtkAssistant* assistant) c_gtk_assistant_get_n_pages;
	GtkWidget* function(GtkAssistant* assistant, int pageNum) c_gtk_assistant_get_nth_page;
	GtkAssistantPage* function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_get_page;
	int function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_complete;
	const(char)* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_title;
	GtkAssistantPageType function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_type;
	GListModel* function(GtkAssistant* assistant) c_gtk_assistant_get_pages;
	int function(GtkAssistant* assistant, GtkWidget* page, int position) c_gtk_assistant_insert_page;
	void function(GtkAssistant* assistant) c_gtk_assistant_next_page;
	int function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_prepend_page;
	void function(GtkAssistant* assistant) c_gtk_assistant_previous_page;
	void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_remove_action_widget;
	void function(GtkAssistant* assistant, int pageNum) c_gtk_assistant_remove_page;
	void function(GtkAssistant* assistant, int pageNum) c_gtk_assistant_set_current_page;
	void function(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy) c_gtk_assistant_set_forward_page_func;
	void function(GtkAssistant* assistant, GtkWidget* page, int complete) c_gtk_assistant_set_page_complete;
	void function(GtkAssistant* assistant, GtkWidget* page, const(char)* title) c_gtk_assistant_set_page_title;
	void function(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type) c_gtk_assistant_set_page_type;
	void function(GtkAssistant* assistant) c_gtk_assistant_update_buttons_state;

	// gtk.AssistantPage

	GType function() c_gtk_assistant_page_get_type;
	GtkWidget* function(GtkAssistantPage* page) c_gtk_assistant_page_get_child;

	// gtk.BinLayout

	GType function() c_gtk_bin_layout_get_type;
	GtkLayoutManager* function() c_gtk_bin_layout_new;

	// gtk.Bitset

	GType function() c_gtk_bitset_get_type;
	GtkBitset* function() c_gtk_bitset_new_empty;
	GtkBitset* function(uint start, uint nItems) c_gtk_bitset_new_range;
	int function(GtkBitset* self, uint value) c_gtk_bitset_add;
	void function(GtkBitset* self, uint start, uint nItems) c_gtk_bitset_add_range;
	void function(GtkBitset* self, uint first, uint last) c_gtk_bitset_add_range_closed;
	void function(GtkBitset* self, uint start, uint width, uint height, uint stride) c_gtk_bitset_add_rectangle;
	int function(GtkBitset* self, uint value) c_gtk_bitset_contains;
	GtkBitset* function(GtkBitset* self) c_gtk_bitset_copy;
	void function(GtkBitset* self, GtkBitset* other) c_gtk_bitset_difference;
	int function(GtkBitset* self, GtkBitset* other) c_gtk_bitset_equals;
	uint function(GtkBitset* self) c_gtk_bitset_get_maximum;
	uint function(GtkBitset* self) c_gtk_bitset_get_minimum;
	uint function(GtkBitset* self, uint nth) c_gtk_bitset_get_nth;
	ulong function(GtkBitset* self) c_gtk_bitset_get_size;
	ulong function(GtkBitset* self, uint first, uint last) c_gtk_bitset_get_size_in_range;
	void function(GtkBitset* self, GtkBitset* other) c_gtk_bitset_intersect;
	int function(GtkBitset* self) c_gtk_bitset_is_empty;
	GtkBitset* function(GtkBitset* self) c_gtk_bitset_ref;
	int function(GtkBitset* self, uint value) c_gtk_bitset_remove;
	void function(GtkBitset* self) c_gtk_bitset_remove_all;
	void function(GtkBitset* self, uint start, uint nItems) c_gtk_bitset_remove_range;
	void function(GtkBitset* self, uint first, uint last) c_gtk_bitset_remove_range_closed;
	void function(GtkBitset* self, uint start, uint width, uint height, uint stride) c_gtk_bitset_remove_rectangle;
	void function(GtkBitset* self, uint amount) c_gtk_bitset_shift_left;
	void function(GtkBitset* self, uint amount) c_gtk_bitset_shift_right;
	void function(GtkBitset* self, uint position, uint removed, uint added) c_gtk_bitset_splice;
	void function(GtkBitset* self, GtkBitset* other) c_gtk_bitset_subtract;
	void function(GtkBitset* self, GtkBitset* other) c_gtk_bitset_union;
	void function(GtkBitset* self) c_gtk_bitset_unref;

	// gtk.BitsetIter

	GType function() c_gtk_bitset_iter_get_type;
	uint function(GtkBitsetIter* iter) c_gtk_bitset_iter_get_value;
	int function(GtkBitsetIter* iter) c_gtk_bitset_iter_is_valid;
	int function(GtkBitsetIter* iter, uint* value) c_gtk_bitset_iter_next;
	int function(GtkBitsetIter* iter, uint* value) c_gtk_bitset_iter_previous;
	int function(GtkBitsetIter* iter, GtkBitset* set, uint target, uint* value) c_gtk_bitset_iter_init_at;
	int function(GtkBitsetIter* iter, GtkBitset* set, uint* value) c_gtk_bitset_iter_init_first;
	int function(GtkBitsetIter* iter, GtkBitset* set, uint* value) c_gtk_bitset_iter_init_last;

	// gtk.BookmarkList

	GType function() c_gtk_bookmark_list_get_type;
	GtkBookmarkList* function(char* filename, const(char)* attributes) c_gtk_bookmark_list_new;
	const(char)* function(GtkBookmarkList* self) c_gtk_bookmark_list_get_attributes;
	char* function(GtkBookmarkList* self) c_gtk_bookmark_list_get_filename;
	int function(GtkBookmarkList* self) c_gtk_bookmark_list_get_io_priority;
	int function(GtkBookmarkList* self) c_gtk_bookmark_list_is_loading;
	void function(GtkBookmarkList* self, const(char)* attributes) c_gtk_bookmark_list_set_attributes;
	void function(GtkBookmarkList* self, int ioPriority) c_gtk_bookmark_list_set_io_priority;

	// gtk.BoolFilter

	GType function() c_gtk_bool_filter_get_type;
	GtkBoolFilter* function(GtkExpression* expression) c_gtk_bool_filter_new;
	GtkExpression* function(GtkBoolFilter* self) c_gtk_bool_filter_get_expression;
	int function(GtkBoolFilter* self) c_gtk_bool_filter_get_invert;
	void function(GtkBoolFilter* self, GtkExpression* expression) c_gtk_bool_filter_set_expression;
	void function(GtkBoolFilter* self, int invert) c_gtk_bool_filter_set_invert;

	// gtk.Border

	GType function() c_gtk_border_get_type;
	GtkBorder* function() c_gtk_border_new;
	GtkBorder* function(GtkBorder* border) c_gtk_border_copy;
	void function(GtkBorder* border) c_gtk_border_free;

	// gtk.Box

	GType function() c_gtk_box_get_type;
	GtkWidget* function(GtkOrientation orientation, int spacing) c_gtk_box_new;
	void function(GtkBox* box, GtkWidget* child) c_gtk_box_append;
	GtkBaselinePosition function(GtkBox* box) c_gtk_box_get_baseline_position;
	int function(GtkBox* box) c_gtk_box_get_homogeneous;
	int function(GtkBox* box) c_gtk_box_get_spacing;
	void function(GtkBox* box, GtkWidget* child, GtkWidget* sibling) c_gtk_box_insert_child_after;
	void function(GtkBox* box, GtkWidget* child) c_gtk_box_prepend;
	void function(GtkBox* box, GtkWidget* child) c_gtk_box_remove;
	void function(GtkBox* box, GtkWidget* child, GtkWidget* sibling) c_gtk_box_reorder_child_after;
	void function(GtkBox* box, GtkBaselinePosition position) c_gtk_box_set_baseline_position;
	void function(GtkBox* box, int homogeneous) c_gtk_box_set_homogeneous;
	void function(GtkBox* box, int spacing) c_gtk_box_set_spacing;

	// gtk.BoxLayout

	GType function() c_gtk_box_layout_get_type;
	GtkLayoutManager* function(GtkOrientation orientation) c_gtk_box_layout_new;
	GtkBaselinePosition function(GtkBoxLayout* boxLayout) c_gtk_box_layout_get_baseline_position;
	int function(GtkBoxLayout* boxLayout) c_gtk_box_layout_get_homogeneous;
	uint function(GtkBoxLayout* boxLayout) c_gtk_box_layout_get_spacing;
	void function(GtkBoxLayout* boxLayout, GtkBaselinePosition position) c_gtk_box_layout_set_baseline_position;
	void function(GtkBoxLayout* boxLayout, int homogeneous) c_gtk_box_layout_set_homogeneous;
	void function(GtkBoxLayout* boxLayout, uint spacing) c_gtk_box_layout_set_spacing;

	// gtk.Buildable

	GType function() c_gtk_buildable_get_type;
	const(char)* function(GtkBuildable* buildable) c_gtk_buildable_get_buildable_id;

	// gtk.BuildableParseContext

	const(char)* function(GtkBuildableParseContext* context) c_gtk_buildable_parse_context_get_element;
	GPtrArray* function(GtkBuildableParseContext* context) c_gtk_buildable_parse_context_get_element_stack;
	void function(GtkBuildableParseContext* context, int* lineNumber, int* charNumber) c_gtk_buildable_parse_context_get_position;
	void* function(GtkBuildableParseContext* context) c_gtk_buildable_parse_context_pop;
	void function(GtkBuildableParseContext* context, GtkBuildableParser* parser, void* userData) c_gtk_buildable_parse_context_push;

	// gtk.Builder

	GType function() c_gtk_builder_get_type;
	GtkBuilder* function() c_gtk_builder_new;
	GtkBuilder* function(char* filename) c_gtk_builder_new_from_file;
	GtkBuilder* function(const(char)* resourcePath) c_gtk_builder_new_from_resource;
	GtkBuilder* function(const(char)* string_, ptrdiff_t length) c_gtk_builder_new_from_string;
	int function(GtkBuilder* builder, char* filename, GError** err) c_gtk_builder_add_from_file;
	int function(GtkBuilder* builder, const(char)* resourcePath, GError** err) c_gtk_builder_add_from_resource;
	int function(GtkBuilder* builder, const(char)* buffer, ptrdiff_t length, GError** err) c_gtk_builder_add_from_string;
	int function(GtkBuilder* builder, char* filename, char** objectIds, GError** err) c_gtk_builder_add_objects_from_file;
	int function(GtkBuilder* builder, const(char)* resourcePath, char** objectIds, GError** err) c_gtk_builder_add_objects_from_resource;
	int function(GtkBuilder* builder, const(char)* buffer, ptrdiff_t length, char** objectIds, GError** err) c_gtk_builder_add_objects_from_string;
	GClosure* function(GtkBuilder* builder, const(char)* functionName, GtkBuilderClosureFlags flags, GObject* object, GError** err) c_gtk_builder_create_closure;
	void function(GtkBuilder* builder, const(char)* name, GObject* object) c_gtk_builder_expose_object;
	int function(GtkBuilder* builder, GObject* object, GType templateType, const(char)* buffer, ptrdiff_t length, GError** err) c_gtk_builder_extend_with_template;
	GObject* function(GtkBuilder* builder) c_gtk_builder_get_current_object;
	GObject* function(GtkBuilder* builder, const(char)* name) c_gtk_builder_get_object;
	GSList* function(GtkBuilder* builder) c_gtk_builder_get_objects;
	GtkBuilderScope* function(GtkBuilder* builder) c_gtk_builder_get_scope;
	const(char)* function(GtkBuilder* builder) c_gtk_builder_get_translation_domain;
	GType function(GtkBuilder* builder, const(char)* typeName) c_gtk_builder_get_type_from_name;
	void function(GtkBuilder* builder, GObject* currentObject) c_gtk_builder_set_current_object;
	void function(GtkBuilder* builder, GtkBuilderScope* scope_) c_gtk_builder_set_scope;
	void function(GtkBuilder* builder, const(char)* domain) c_gtk_builder_set_translation_domain;
	int function(GtkBuilder* builder, GParamSpec* pspec, const(char)* string_, GValue* value, GError** err) c_gtk_builder_value_from_string;
	int function(GtkBuilder* builder, GType type, const(char)* string_, GValue* value, GError** err) c_gtk_builder_value_from_string_type;

	// gtk.BuilderCScope

	GType function() c_gtk_builder_cscope_get_type;
	GtkBuilderScope* function() c_gtk_builder_cscope_new;
	void function(GtkBuilderCScope* self, const(char)* callbackName, GCallback callbackSymbol) c_gtk_builder_cscope_add_callback_symbol;
	void function(GtkBuilderCScope* self, const(char)* firstCallbackName, GCallback firstCallbackSymbol, ... ) c_gtk_builder_cscope_add_callback_symbols;
	GCallback function(GtkBuilderCScope* self, const(char)* callbackName) c_gtk_builder_cscope_lookup_callback_symbol;

	// gtk.BuilderListItemFactory

	GType function() c_gtk_builder_list_item_factory_get_type;
	GtkListItemFactory* function(GtkBuilderScope* scope_, GBytes* bytes) c_gtk_builder_list_item_factory_new_from_bytes;
	GtkListItemFactory* function(GtkBuilderScope* scope_, const(char)* resourcePath) c_gtk_builder_list_item_factory_new_from_resource;
	GBytes* function(GtkBuilderListItemFactory* self) c_gtk_builder_list_item_factory_get_bytes;
	const(char)* function(GtkBuilderListItemFactory* self) c_gtk_builder_list_item_factory_get_resource;
	GtkBuilderScope* function(GtkBuilderListItemFactory* self) c_gtk_builder_list_item_factory_get_scope;

	// gtk.BuilderScope

	GType function() c_gtk_builder_scope_get_type;

	// gtk.Button

	GType function() c_gtk_button_get_type;
	GtkWidget* function() c_gtk_button_new;
	GtkWidget* function(const(char)* iconName) c_gtk_button_new_from_icon_name;
	GtkWidget* function(const(char)* label) c_gtk_button_new_with_label;
	GtkWidget* function(const(char)* label) c_gtk_button_new_with_mnemonic;
	GtkWidget* function(GtkButton* button) c_gtk_button_get_child;
	int function(GtkButton* button) c_gtk_button_get_has_frame;
	const(char)* function(GtkButton* button) c_gtk_button_get_icon_name;
	const(char)* function(GtkButton* button) c_gtk_button_get_label;
	int function(GtkButton* button) c_gtk_button_get_use_underline;
	void function(GtkButton* button, GtkWidget* child) c_gtk_button_set_child;
	void function(GtkButton* button, int hasFrame) c_gtk_button_set_has_frame;
	void function(GtkButton* button, const(char)* iconName) c_gtk_button_set_icon_name;
	void function(GtkButton* button, const(char)* label) c_gtk_button_set_label;
	void function(GtkButton* button, int useUnderline) c_gtk_button_set_use_underline;

	// gtk.CClosureExpression

	GType function() c_gtk_cclosure_expression_get_type;
	GtkExpression* function(GType valueType, GClosureMarshal marshal, uint nParams, GtkExpression** params, GCallback callbackFunc, void* userData, GClosureNotify userDestroy) c_gtk_cclosure_expression_new;

	// gtk.Calendar

	GType function() c_gtk_calendar_get_type;
	GtkWidget* function() c_gtk_calendar_new;
	void function(GtkCalendar* calendar) c_gtk_calendar_clear_marks;
	GDateTime* function(GtkCalendar* self) c_gtk_calendar_get_date;
	int function(GtkCalendar* calendar, uint day) c_gtk_calendar_get_day_is_marked;
	int function(GtkCalendar* self) c_gtk_calendar_get_show_day_names;
	int function(GtkCalendar* self) c_gtk_calendar_get_show_heading;
	int function(GtkCalendar* self) c_gtk_calendar_get_show_week_numbers;
	void function(GtkCalendar* calendar, uint day) c_gtk_calendar_mark_day;
	void function(GtkCalendar* self, GDateTime* date) c_gtk_calendar_select_day;
	void function(GtkCalendar* self, int value) c_gtk_calendar_set_show_day_names;
	void function(GtkCalendar* self, int value) c_gtk_calendar_set_show_heading;
	void function(GtkCalendar* self, int value) c_gtk_calendar_set_show_week_numbers;
	void function(GtkCalendar* calendar, uint day) c_gtk_calendar_unmark_day;

	// gtk.CallbackAction

	GType function() c_gtk_callback_action_get_type;
	GtkShortcutAction* function(GtkShortcutFunc callback, void* data, GDestroyNotify destroy) c_gtk_callback_action_new;

	// gtk.CellArea

	GType function() c_gtk_cell_area_get_type;
	int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GtkCellRendererState flags, int editOnly) c_gtk_cell_area_activate;
	int function(GtkCellArea* area, GtkWidget* widget, GtkCellRenderer* renderer, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_area_activate_cell;
	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_add;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_add_focus_sibling;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... ) c_gtk_cell_area_add_with_properties;
	void function(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded) c_gtk_cell_area_apply_attributes;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute, int column) c_gtk_cell_area_attribute_connect;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute) c_gtk_cell_area_attribute_disconnect;
	int function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* attribute) c_gtk_cell_area_attribute_get_column;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... ) c_gtk_cell_area_cell_get;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* propertyName, GValue* value) c_gtk_cell_area_cell_get_property;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropertyName, void* varArgs) c_gtk_cell_area_cell_get_valist;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropName, ... ) c_gtk_cell_area_cell_set;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* propertyName, GValue* value) c_gtk_cell_area_cell_set_property;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, const(char)* firstPropertyName, void* varArgs) c_gtk_cell_area_cell_set_valist;
	GtkCellAreaContext* function(GtkCellArea* area, GtkCellAreaContext* context) c_gtk_cell_area_copy_context;
	GtkCellAreaContext* function(GtkCellArea* area) c_gtk_cell_area_create_context;
	int function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_area_event;
	int function(GtkCellArea* area, GtkDirectionType direction) c_gtk_cell_area_focus;
	void function(GtkCellArea* area, GtkCellCallback callback, void* callbackData) c_gtk_cell_area_foreach;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData) c_gtk_cell_area_foreach_alloc;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkCellRenderer* renderer, GdkRectangle* cellArea, GdkRectangle* allocation) c_gtk_cell_area_get_cell_allocation;
	GtkCellRenderer* function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, int x, int y, GdkRectangle* allocArea) c_gtk_cell_area_get_cell_at_position;
	const(char)* function(GtkCellArea* area) c_gtk_cell_area_get_current_path_string;
	GtkCellEditable* function(GtkCellArea* area) c_gtk_cell_area_get_edit_widget;
	GtkCellRenderer* function(GtkCellArea* area) c_gtk_cell_area_get_edited_cell;
	GtkCellRenderer* function(GtkCellArea* area) c_gtk_cell_area_get_focus_cell;
	GtkCellRenderer* function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_get_focus_from_sibling;
	GList* function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_get_focus_siblings;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumHeight, int* naturalHeight) c_gtk_cell_area_get_preferred_height;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight) c_gtk_cell_area_get_preferred_height_for_width;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int* minimumWidth, int* naturalWidth) c_gtk_cell_area_get_preferred_width;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth) c_gtk_cell_area_get_preferred_width_for_height;
	GtkSizeRequestMode function(GtkCellArea* area) c_gtk_cell_area_get_request_mode;
	int function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_has_renderer;
	void function(GtkCellArea* area, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* innerArea) c_gtk_cell_area_inner_cell_area;
	int function(GtkCellArea* area) c_gtk_cell_area_is_activatable;
	int function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_is_focus_sibling;
	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_remove;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_remove_focus_sibling;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkOrientation orientation, GtkWidget* widget, int forSize, int* minimumSize, int* naturalSize) c_gtk_cell_area_request_renderer;
	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_set_focus_cell;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkSnapshot* snapshot, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, int paintFocus) c_gtk_cell_area_snapshot;
	void function(GtkCellArea* area, int canceled) c_gtk_cell_area_stop_editing;

	// gtk.CellAreaBox

	GType function() c_gtk_cell_area_box_get_type;
	GtkCellArea* function() c_gtk_cell_area_box_new;
	int function(GtkCellAreaBox* box) c_gtk_cell_area_box_get_spacing;
	void function(GtkCellAreaBox* box, GtkCellRenderer* renderer, int expand, int align_, int fixed) c_gtk_cell_area_box_pack_end;
	void function(GtkCellAreaBox* box, GtkCellRenderer* renderer, int expand, int align_, int fixed) c_gtk_cell_area_box_pack_start;
	void function(GtkCellAreaBox* box, int spacing) c_gtk_cell_area_box_set_spacing;

	// gtk.CellAreaClass

	GParamSpec* function(GtkCellAreaClass* aclass, const(char)* propertyName) c_gtk_cell_area_class_find_cell_property;
	void function(GtkCellAreaClass* aclass, uint propertyId, GParamSpec* pspec) c_gtk_cell_area_class_install_cell_property;
	GParamSpec** function(GtkCellAreaClass* aclass, uint* nProperties) c_gtk_cell_area_class_list_cell_properties;

	// gtk.CellAreaContext

	GType function() c_gtk_cell_area_context_get_type;
	void function(GtkCellAreaContext* context, int width, int height) c_gtk_cell_area_context_allocate;
	void function(GtkCellAreaContext* context, int* width, int* height) c_gtk_cell_area_context_get_allocation;
	GtkCellArea* function(GtkCellAreaContext* context) c_gtk_cell_area_context_get_area;
	void function(GtkCellAreaContext* context, int* minimumHeight, int* naturalHeight) c_gtk_cell_area_context_get_preferred_height;
	void function(GtkCellAreaContext* context, int width, int* minimumHeight, int* naturalHeight) c_gtk_cell_area_context_get_preferred_height_for_width;
	void function(GtkCellAreaContext* context, int* minimumWidth, int* naturalWidth) c_gtk_cell_area_context_get_preferred_width;
	void function(GtkCellAreaContext* context, int height, int* minimumWidth, int* naturalWidth) c_gtk_cell_area_context_get_preferred_width_for_height;
	void function(GtkCellAreaContext* context, int minimumHeight, int naturalHeight) c_gtk_cell_area_context_push_preferred_height;
	void function(GtkCellAreaContext* context, int minimumWidth, int naturalWidth) c_gtk_cell_area_context_push_preferred_width;
	void function(GtkCellAreaContext* context) c_gtk_cell_area_context_reset;

	// gtk.CellEditable

	GType function() c_gtk_cell_editable_get_type;
	void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_editing_done;
	void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_remove_widget;
	void function(GtkCellEditable* cellEditable, GdkEvent* event) c_gtk_cell_editable_start_editing;

	// gtk.CellLayout

	GType function() c_gtk_cell_layout_get_type;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, const(char)* attribute, int column) c_gtk_cell_layout_add_attribute;
	void function(GtkCellLayout* cellLayout) c_gtk_cell_layout_clear;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell) c_gtk_cell_layout_clear_attributes;
	GtkCellArea* function(GtkCellLayout* cellLayout) c_gtk_cell_layout_get_area;
	GList* function(GtkCellLayout* cellLayout) c_gtk_cell_layout_get_cells;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand) c_gtk_cell_layout_pack_end;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int expand) c_gtk_cell_layout_pack_start;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, int position) c_gtk_cell_layout_reorder;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, ... ) c_gtk_cell_layout_set_attributes;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy) c_gtk_cell_layout_set_cell_data_func;

	// gtk.CellRenderer

	GType function() c_gtk_cell_renderer_get_type;
	int function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_activate;
	void function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags, GdkRectangle* cellArea, GdkRectangle* alignedArea) c_gtk_cell_renderer_get_aligned_area;
	void function(GtkCellRenderer* cell, float* xalign, float* yalign) c_gtk_cell_renderer_get_alignment;
	void function(GtkCellRenderer* cell, int* width, int* height) c_gtk_cell_renderer_get_fixed_size;
	int function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_is_expanded;
	int function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_is_expander;
	void function(GtkCellRenderer* cell, int* xpad, int* ypad) c_gtk_cell_renderer_get_padding;
	void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize) c_gtk_cell_renderer_get_preferred_height;
	void function(GtkCellRenderer* cell, GtkWidget* widget, int width, int* minimumHeight, int* naturalHeight) c_gtk_cell_renderer_get_preferred_height_for_width;
	void function(GtkCellRenderer* cell, GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize) c_gtk_cell_renderer_get_preferred_size;
	void function(GtkCellRenderer* cell, GtkWidget* widget, int* minimumSize, int* naturalSize) c_gtk_cell_renderer_get_preferred_width;
	void function(GtkCellRenderer* cell, GtkWidget* widget, int height, int* minimumWidth, int* naturalWidth) c_gtk_cell_renderer_get_preferred_width_for_height;
	GtkSizeRequestMode function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_request_mode;
	int function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_sensitive;
	GtkStateFlags function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState cellState) c_gtk_cell_renderer_get_state;
	int function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_visible;
	int function(GtkCellRenderer* cell) c_gtk_cell_renderer_is_activatable;
	void function(GtkCellRenderer* cell, float xalign, float yalign) c_gtk_cell_renderer_set_alignment;
	void function(GtkCellRenderer* cell, int width, int height) c_gtk_cell_renderer_set_fixed_size;
	void function(GtkCellRenderer* cell, int isExpanded) c_gtk_cell_renderer_set_is_expanded;
	void function(GtkCellRenderer* cell, int isExpander) c_gtk_cell_renderer_set_is_expander;
	void function(GtkCellRenderer* cell, int xpad, int ypad) c_gtk_cell_renderer_set_padding;
	void function(GtkCellRenderer* cell, int sensitive) c_gtk_cell_renderer_set_sensitive;
	void function(GtkCellRenderer* cell, int visible) c_gtk_cell_renderer_set_visible;
	void function(GtkCellRenderer* cell, GtkSnapshot* snapshot, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_snapshot;
	GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, const(char)* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_start_editing;
	void function(GtkCellRenderer* cell, int canceled) c_gtk_cell_renderer_stop_editing;

	// gtk.CellRendererAccel

	GType function() c_gtk_cell_renderer_accel_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_accel_new;

	// gtk.CellRendererCombo

	GType function() c_gtk_cell_renderer_combo_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_combo_new;

	// gtk.CellRendererPixbuf

	GType function() c_gtk_cell_renderer_pixbuf_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_pixbuf_new;

	// gtk.CellRendererProgress

	GType function() c_gtk_cell_renderer_progress_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_progress_new;

	// gtk.CellRendererSpin

	GType function() c_gtk_cell_renderer_spin_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_spin_new;

	// gtk.CellRendererSpinner

	GType function() c_gtk_cell_renderer_spinner_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_spinner_new;

	// gtk.CellRendererText

	GType function() c_gtk_cell_renderer_text_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_text_new;
	void function(GtkCellRendererText* renderer, int numberOfRows) c_gtk_cell_renderer_text_set_fixed_height_from_font;

	// gtk.CellRendererToggle

	GType function() c_gtk_cell_renderer_toggle_get_type;
	GtkCellRenderer* function() c_gtk_cell_renderer_toggle_new;
	int function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_activatable;
	int function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_active;
	int function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_radio;
	void function(GtkCellRendererToggle* toggle, int setting) c_gtk_cell_renderer_toggle_set_activatable;
	void function(GtkCellRendererToggle* toggle, int setting) c_gtk_cell_renderer_toggle_set_active;
	void function(GtkCellRendererToggle* toggle, int radio) c_gtk_cell_renderer_toggle_set_radio;

	// gtk.CellView

	GType function() c_gtk_cell_view_get_type;
	GtkWidget* function() c_gtk_cell_view_new;
	GtkWidget* function(GtkCellArea* area, GtkCellAreaContext* context) c_gtk_cell_view_new_with_context;
	GtkWidget* function(const(char)* markup) c_gtk_cell_view_new_with_markup;
	GtkWidget* function(const(char)* text) c_gtk_cell_view_new_with_text;
	GtkWidget* function(GdkTexture* texture) c_gtk_cell_view_new_with_texture;
	GtkTreePath* function(GtkCellView* cellView) c_gtk_cell_view_get_displayed_row;
	int function(GtkCellView* cellView) c_gtk_cell_view_get_draw_sensitive;
	int function(GtkCellView* cellView) c_gtk_cell_view_get_fit_model;
	GtkTreeModel* function(GtkCellView* cellView) c_gtk_cell_view_get_model;
	void function(GtkCellView* cellView, GtkTreePath* path) c_gtk_cell_view_set_displayed_row;
	void function(GtkCellView* cellView, int drawSensitive) c_gtk_cell_view_set_draw_sensitive;
	void function(GtkCellView* cellView, int fitModel) c_gtk_cell_view_set_fit_model;
	void function(GtkCellView* cellView, GtkTreeModel* model) c_gtk_cell_view_set_model;

	// gtk.CenterBox

	GType function() c_gtk_center_box_get_type;
	GtkWidget* function() c_gtk_center_box_new;
	GtkBaselinePosition function(GtkCenterBox* self) c_gtk_center_box_get_baseline_position;
	GtkWidget* function(GtkCenterBox* self) c_gtk_center_box_get_center_widget;
	GtkWidget* function(GtkCenterBox* self) c_gtk_center_box_get_end_widget;
	GtkWidget* function(GtkCenterBox* self) c_gtk_center_box_get_start_widget;
	void function(GtkCenterBox* self, GtkBaselinePosition position) c_gtk_center_box_set_baseline_position;
	void function(GtkCenterBox* self, GtkWidget* child) c_gtk_center_box_set_center_widget;
	void function(GtkCenterBox* self, GtkWidget* child) c_gtk_center_box_set_end_widget;
	void function(GtkCenterBox* self, GtkWidget* child) c_gtk_center_box_set_start_widget;

	// gtk.CenterLayout

	GType function() c_gtk_center_layout_get_type;
	GtkLayoutManager* function() c_gtk_center_layout_new;
	GtkBaselinePosition function(GtkCenterLayout* self) c_gtk_center_layout_get_baseline_position;
	GtkWidget* function(GtkCenterLayout* self) c_gtk_center_layout_get_center_widget;
	GtkWidget* function(GtkCenterLayout* self) c_gtk_center_layout_get_end_widget;
	GtkOrientation function(GtkCenterLayout* self) c_gtk_center_layout_get_orientation;
	GtkWidget* function(GtkCenterLayout* self) c_gtk_center_layout_get_start_widget;
	void function(GtkCenterLayout* self, GtkBaselinePosition baselinePosition) c_gtk_center_layout_set_baseline_position;
	void function(GtkCenterLayout* self, GtkWidget* widget) c_gtk_center_layout_set_center_widget;
	void function(GtkCenterLayout* self, GtkWidget* widget) c_gtk_center_layout_set_end_widget;
	void function(GtkCenterLayout* self, GtkOrientation orientation) c_gtk_center_layout_set_orientation;
	void function(GtkCenterLayout* self, GtkWidget* widget) c_gtk_center_layout_set_start_widget;

	// gtk.CheckButton

	GType function() c_gtk_check_button_get_type;
	GtkWidget* function() c_gtk_check_button_new;
	GtkWidget* function(const(char)* label) c_gtk_check_button_new_with_label;
	GtkWidget* function(const(char)* label) c_gtk_check_button_new_with_mnemonic;
	int function(GtkCheckButton* self) c_gtk_check_button_get_active;
	int function(GtkCheckButton* checkButton) c_gtk_check_button_get_inconsistent;
	const(char)* function(GtkCheckButton* self) c_gtk_check_button_get_label;
	int function(GtkCheckButton* self) c_gtk_check_button_get_use_underline;
	void function(GtkCheckButton* self, int setting) c_gtk_check_button_set_active;
	void function(GtkCheckButton* self, GtkCheckButton* group) c_gtk_check_button_set_group;
	void function(GtkCheckButton* checkButton, int inconsistent) c_gtk_check_button_set_inconsistent;
	void function(GtkCheckButton* self, const(char)* label) c_gtk_check_button_set_label;
	void function(GtkCheckButton* self, int setting) c_gtk_check_button_set_use_underline;

	// gtk.ClosureExpression

	GType function() c_gtk_closure_expression_get_type;
	GtkExpression* function(GType valueType, GClosure* closure, uint nParams, GtkExpression** params) c_gtk_closure_expression_new;

	// gtk.ColorButton

	GType function() c_gtk_color_button_get_type;
	GtkWidget* function() c_gtk_color_button_new;
	GtkWidget* function(GdkRGBA* rgba) c_gtk_color_button_new_with_rgba;
	int function(GtkColorButton* button) c_gtk_color_button_get_modal;
	const(char)* function(GtkColorButton* button) c_gtk_color_button_get_title;
	void function(GtkColorButton* button, int modal) c_gtk_color_button_set_modal;
	void function(GtkColorButton* button, const(char)* title) c_gtk_color_button_set_title;

	// gtk.ColorChooser

	GType function() c_gtk_color_chooser_get_type;
	void function(GtkColorChooser* chooser, GtkOrientation orientation, int colorsPerLine, int nColors, GdkRGBA* colors) c_gtk_color_chooser_add_palette;
	void function(GtkColorChooser* chooser, GdkRGBA* color) c_gtk_color_chooser_get_rgba;
	int function(GtkColorChooser* chooser) c_gtk_color_chooser_get_use_alpha;
	void function(GtkColorChooser* chooser, GdkRGBA* color) c_gtk_color_chooser_set_rgba;
	void function(GtkColorChooser* chooser, int useAlpha) c_gtk_color_chooser_set_use_alpha;

	// gtk.ColorChooserDialog

	GType function() c_gtk_color_chooser_dialog_get_type;
	GtkWidget* function(const(char)* title, GtkWindow* parent) c_gtk_color_chooser_dialog_new;

	// gtk.ColorChooserWidget

	GType function() c_gtk_color_chooser_widget_get_type;
	GtkWidget* function() c_gtk_color_chooser_widget_new;

	// gtk.ColumnView

	GType function() c_gtk_column_view_get_type;
	GtkWidget* function(GtkSelectionModel* model) c_gtk_column_view_new;
	void function(GtkColumnView* self, GtkColumnViewColumn* column) c_gtk_column_view_append_column;
	GListModel* function(GtkColumnView* self) c_gtk_column_view_get_columns;
	int function(GtkColumnView* self) c_gtk_column_view_get_enable_rubberband;
	GtkSelectionModel* function(GtkColumnView* self) c_gtk_column_view_get_model;
	int function(GtkColumnView* self) c_gtk_column_view_get_reorderable;
	int function(GtkColumnView* self) c_gtk_column_view_get_show_column_separators;
	int function(GtkColumnView* self) c_gtk_column_view_get_show_row_separators;
	int function(GtkColumnView* self) c_gtk_column_view_get_single_click_activate;
	GtkSorter* function(GtkColumnView* self) c_gtk_column_view_get_sorter;
	void function(GtkColumnView* self, uint position, GtkColumnViewColumn* column) c_gtk_column_view_insert_column;
	void function(GtkColumnView* self, GtkColumnViewColumn* column) c_gtk_column_view_remove_column;
	void function(GtkColumnView* self, int enableRubberband) c_gtk_column_view_set_enable_rubberband;
	void function(GtkColumnView* self, GtkSelectionModel* model) c_gtk_column_view_set_model;
	void function(GtkColumnView* self, int reorderable) c_gtk_column_view_set_reorderable;
	void function(GtkColumnView* self, int showColumnSeparators) c_gtk_column_view_set_show_column_separators;
	void function(GtkColumnView* self, int showRowSeparators) c_gtk_column_view_set_show_row_separators;
	void function(GtkColumnView* self, int singleClickActivate) c_gtk_column_view_set_single_click_activate;
	void function(GtkColumnView* self, GtkColumnViewColumn* column, GtkSortType direction) c_gtk_column_view_sort_by_column;

	// gtk.ColumnViewColumn

	GType function() c_gtk_column_view_column_get_type;
	GtkColumnViewColumn* function(const(char)* title, GtkListItemFactory* factory) c_gtk_column_view_column_new;
	GtkColumnView* function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_column_view;
	int function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_expand;
	GtkListItemFactory* function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_factory;
	int function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_fixed_width;
	GMenuModel* function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_header_menu;
	int function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_resizable;
	GtkSorter* function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_sorter;
	const(char)* function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_title;
	int function(GtkColumnViewColumn* self) c_gtk_column_view_column_get_visible;
	void function(GtkColumnViewColumn* self, int expand) c_gtk_column_view_column_set_expand;
	void function(GtkColumnViewColumn* self, GtkListItemFactory* factory) c_gtk_column_view_column_set_factory;
	void function(GtkColumnViewColumn* self, int fixedWidth) c_gtk_column_view_column_set_fixed_width;
	void function(GtkColumnViewColumn* self, GMenuModel* menu) c_gtk_column_view_column_set_header_menu;
	void function(GtkColumnViewColumn* self, int resizable) c_gtk_column_view_column_set_resizable;
	void function(GtkColumnViewColumn* self, GtkSorter* sorter) c_gtk_column_view_column_set_sorter;
	void function(GtkColumnViewColumn* self, const(char)* title) c_gtk_column_view_column_set_title;
	void function(GtkColumnViewColumn* self, int visible) c_gtk_column_view_column_set_visible;

	// gtk.ComboBox

	GType function() c_gtk_combo_box_get_type;
	GtkWidget* function() c_gtk_combo_box_new;
	GtkWidget* function() c_gtk_combo_box_new_with_entry;
	GtkWidget* function(GtkTreeModel* model) c_gtk_combo_box_new_with_model;
	GtkWidget* function(GtkTreeModel* model) c_gtk_combo_box_new_with_model_and_entry;
	int function(GtkComboBox* comboBox) c_gtk_combo_box_get_active;
	const(char)* function(GtkComboBox* comboBox) c_gtk_combo_box_get_active_id;
	int function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_get_active_iter;
	GtkSensitivityType function(GtkComboBox* comboBox) c_gtk_combo_box_get_button_sensitivity;
	GtkWidget* function(GtkComboBox* comboBox) c_gtk_combo_box_get_child;
	int function(GtkComboBox* comboBox) c_gtk_combo_box_get_entry_text_column;
	int function(GtkComboBox* comboBox) c_gtk_combo_box_get_has_entry;
	int function(GtkComboBox* comboBox) c_gtk_combo_box_get_id_column;
	GtkTreeModel* function(GtkComboBox* comboBox) c_gtk_combo_box_get_model;
	int function(GtkComboBox* comboBox) c_gtk_combo_box_get_popup_fixed_width;
	GtkTreeViewRowSeparatorFunc function(GtkComboBox* comboBox) c_gtk_combo_box_get_row_separator_func;
	void function(GtkComboBox* comboBox) c_gtk_combo_box_popdown;
	void function(GtkComboBox* comboBox) c_gtk_combo_box_popup;
	void function(GtkComboBox* comboBox, GdkDevice* device) c_gtk_combo_box_popup_for_device;
	void function(GtkComboBox* comboBox, int index) c_gtk_combo_box_set_active;
	int function(GtkComboBox* comboBox, const(char)* activeId) c_gtk_combo_box_set_active_id;
	void function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_set_active_iter;
	void function(GtkComboBox* comboBox, GtkSensitivityType sensitivity) c_gtk_combo_box_set_button_sensitivity;
	void function(GtkComboBox* comboBox, GtkWidget* child) c_gtk_combo_box_set_child;
	void function(GtkComboBox* comboBox, int textColumn) c_gtk_combo_box_set_entry_text_column;
	void function(GtkComboBox* comboBox, int idColumn) c_gtk_combo_box_set_id_column;
	void function(GtkComboBox* comboBox, GtkTreeModel* model) c_gtk_combo_box_set_model;
	void function(GtkComboBox* comboBox, int fixed) c_gtk_combo_box_set_popup_fixed_width;
	void function(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy) c_gtk_combo_box_set_row_separator_func;

	// gtk.ComboBoxText

	GType function() c_gtk_combo_box_text_get_type;
	GtkWidget* function() c_gtk_combo_box_text_new;
	GtkWidget* function() c_gtk_combo_box_text_new_with_entry;
	void function(GtkComboBoxText* comboBox, const(char)* id, const(char)* text) c_gtk_combo_box_text_append;
	void function(GtkComboBoxText* comboBox, const(char)* text) c_gtk_combo_box_text_append_text;
	char* function(GtkComboBoxText* comboBox) c_gtk_combo_box_text_get_active_text;
	void function(GtkComboBoxText* comboBox, int position, const(char)* id, const(char)* text) c_gtk_combo_box_text_insert;
	void function(GtkComboBoxText* comboBox, int position, const(char)* text) c_gtk_combo_box_text_insert_text;
	void function(GtkComboBoxText* comboBox, const(char)* id, const(char)* text) c_gtk_combo_box_text_prepend;
	void function(GtkComboBoxText* comboBox, const(char)* text) c_gtk_combo_box_text_prepend_text;
	void function(GtkComboBoxText* comboBox, int position) c_gtk_combo_box_text_remove;
	void function(GtkComboBoxText* comboBox) c_gtk_combo_box_text_remove_all;

	// gtk.ConstantExpression

	GType function() c_gtk_constant_expression_get_type;
	GtkExpression* function(GType valueType, ... ) c_gtk_constant_expression_new;
	GtkExpression* function(GValue* value) c_gtk_constant_expression_new_for_value;
	GValue* function(GtkExpression* expression) c_gtk_constant_expression_get_value;

	// gtk.Constraint

	GType function() c_gtk_constraint_get_type;
	GtkConstraint* function(void* target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, void* source, GtkConstraintAttribute sourceAttribute, double multiplier, double constant, int strength) c_gtk_constraint_new;
	GtkConstraint* function(void* target, GtkConstraintAttribute targetAttribute, GtkConstraintRelation relation, double constant, int strength) c_gtk_constraint_new_constant;
	double function(GtkConstraint* constraint) c_gtk_constraint_get_constant;
	double function(GtkConstraint* constraint) c_gtk_constraint_get_multiplier;
	GtkConstraintRelation function(GtkConstraint* constraint) c_gtk_constraint_get_relation;
	GtkConstraintTarget* function(GtkConstraint* constraint) c_gtk_constraint_get_source;
	GtkConstraintAttribute function(GtkConstraint* constraint) c_gtk_constraint_get_source_attribute;
	int function(GtkConstraint* constraint) c_gtk_constraint_get_strength;
	GtkConstraintTarget* function(GtkConstraint* constraint) c_gtk_constraint_get_target;
	GtkConstraintAttribute function(GtkConstraint* constraint) c_gtk_constraint_get_target_attribute;
	int function(GtkConstraint* constraint) c_gtk_constraint_is_attached;
	int function(GtkConstraint* constraint) c_gtk_constraint_is_constant;
	int function(GtkConstraint* constraint) c_gtk_constraint_is_required;

	// gtk.ConstraintGuide

	GType function() c_gtk_constraint_guide_get_type;
	GtkConstraintGuide* function() c_gtk_constraint_guide_new;
	void function(GtkConstraintGuide* guide, int* width, int* height) c_gtk_constraint_guide_get_max_size;
	void function(GtkConstraintGuide* guide, int* width, int* height) c_gtk_constraint_guide_get_min_size;
	const(char)* function(GtkConstraintGuide* guide) c_gtk_constraint_guide_get_name;
	void function(GtkConstraintGuide* guide, int* width, int* height) c_gtk_constraint_guide_get_nat_size;
	GtkConstraintStrength function(GtkConstraintGuide* guide) c_gtk_constraint_guide_get_strength;
	void function(GtkConstraintGuide* guide, int width, int height) c_gtk_constraint_guide_set_max_size;
	void function(GtkConstraintGuide* guide, int width, int height) c_gtk_constraint_guide_set_min_size;
	void function(GtkConstraintGuide* guide, const(char)* name) c_gtk_constraint_guide_set_name;
	void function(GtkConstraintGuide* guide, int width, int height) c_gtk_constraint_guide_set_nat_size;
	void function(GtkConstraintGuide* guide, GtkConstraintStrength strength) c_gtk_constraint_guide_set_strength;

	// gtk.ConstraintLayout

	GType function() c_gtk_constraint_layout_get_type;
	GtkLayoutManager* function() c_gtk_constraint_layout_new;
	void function(GtkConstraintLayout* layout, GtkConstraint* constraint) c_gtk_constraint_layout_add_constraint;
	GList* function(GtkConstraintLayout* layout, char** lines, size_t nLines, int hspacing, int vspacing, GError** error, const(char)* firstView, ... ) c_gtk_constraint_layout_add_constraints_from_description;
	GList* function(GtkConstraintLayout* layout, char** lines, size_t nLines, int hspacing, int vspacing, GHashTable* views, GError** err) c_gtk_constraint_layout_add_constraints_from_descriptionv;
	void function(GtkConstraintLayout* layout, GtkConstraintGuide* guide) c_gtk_constraint_layout_add_guide;
	GListModel* function(GtkConstraintLayout* layout) c_gtk_constraint_layout_observe_constraints;
	GListModel* function(GtkConstraintLayout* layout) c_gtk_constraint_layout_observe_guides;
	void function(GtkConstraintLayout* layout) c_gtk_constraint_layout_remove_all_constraints;
	void function(GtkConstraintLayout* layout, GtkConstraint* constraint) c_gtk_constraint_layout_remove_constraint;
	void function(GtkConstraintLayout* layout, GtkConstraintGuide* guide) c_gtk_constraint_layout_remove_guide;

	// gtk.ConstraintLayoutChild

	GType function() c_gtk_constraint_layout_child_get_type;

	// gtk.ConstraintTarget

	GType function() c_gtk_constraint_target_get_type;

	// gtk.CssProvider

	GType function() c_gtk_css_provider_get_type;
	GtkCssProvider* function() c_gtk_css_provider_new;
	void function(GtkCssProvider* cssProvider, char* data, ptrdiff_t length) c_gtk_css_provider_load_from_data;
	void function(GtkCssProvider* cssProvider, GFile* file) c_gtk_css_provider_load_from_file;
	void function(GtkCssProvider* cssProvider, char* path) c_gtk_css_provider_load_from_path;
	void function(GtkCssProvider* cssProvider, const(char)* resourcePath) c_gtk_css_provider_load_from_resource;
	void function(GtkCssProvider* provider, const(char)* name, const(char)* variant) c_gtk_css_provider_load_named;
	char* function(GtkCssProvider* provider) c_gtk_css_provider_to_string;

	// gtk.CssSection

	GType function() c_gtk_css_section_get_type;
	GtkCssSection* function(GFile* file, GtkCssLocation* start, GtkCssLocation* end) c_gtk_css_section_new;
	GtkCssLocation* function(GtkCssSection* section) c_gtk_css_section_get_end_location;
	GFile* function(GtkCssSection* section) c_gtk_css_section_get_file;
	GtkCssSection* function(GtkCssSection* section) c_gtk_css_section_get_parent;
	GtkCssLocation* function(GtkCssSection* section) c_gtk_css_section_get_start_location;
	void function(GtkCssSection* section, GString* string_) c_gtk_css_section_print;
	GtkCssSection* function(GtkCssSection* section) c_gtk_css_section_ref;
	char* function(GtkCssSection* section) c_gtk_css_section_to_string;
	void function(GtkCssSection* section) c_gtk_css_section_unref;

	// gtk.CustomFilter

	GType function() c_gtk_custom_filter_get_type;
	GtkCustomFilter* function(GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy) c_gtk_custom_filter_new;
	void function(GtkCustomFilter* self, GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy) c_gtk_custom_filter_set_filter_func;

	// gtk.CustomLayout

	GType function() c_gtk_custom_layout_get_type;
	GtkLayoutManager* function(GtkCustomRequestModeFunc requestMode, GtkCustomMeasureFunc measure, GtkCustomAllocateFunc allocate) c_gtk_custom_layout_new;

	// gtk.CustomSorter

	GType function() c_gtk_custom_sorter_get_type;
	GtkCustomSorter* function(GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy) c_gtk_custom_sorter_new;
	void function(GtkCustomSorter* self, GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy) c_gtk_custom_sorter_set_sort_func;

	// gtk.Dialog

	GType function() c_gtk_dialog_get_type;
	GtkWidget* function() c_gtk_dialog_new;
	GtkWidget* function(const(char)* title, GtkWindow* parent, GtkDialogFlags flags, const(char)* firstButtonText, ... ) c_gtk_dialog_new_with_buttons;
	void function(GtkDialog* dialog, GtkWidget* child, int responseId) c_gtk_dialog_add_action_widget;
	GtkWidget* function(GtkDialog* dialog, const(char)* buttonText, int responseId) c_gtk_dialog_add_button;
	void function(GtkDialog* dialog, const(char)* firstButtonText, ... ) c_gtk_dialog_add_buttons;
	GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_content_area;
	GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_header_bar;
	int function(GtkDialog* dialog, GtkWidget* widget) c_gtk_dialog_get_response_for_widget;
	GtkWidget* function(GtkDialog* dialog, int responseId) c_gtk_dialog_get_widget_for_response;
	void function(GtkDialog* dialog, int responseId) c_gtk_dialog_response;
	void function(GtkDialog* dialog, int responseId) c_gtk_dialog_set_default_response;
	void function(GtkDialog* dialog, int responseId, int setting) c_gtk_dialog_set_response_sensitive;

	// gtk.DirectoryList

	GType function() c_gtk_directory_list_get_type;
	GtkDirectoryList* function(const(char)* attributes, GFile* file) c_gtk_directory_list_new;
	const(char)* function(GtkDirectoryList* self) c_gtk_directory_list_get_attributes;
	GError* function(GtkDirectoryList* self) c_gtk_directory_list_get_error;
	GFile* function(GtkDirectoryList* self) c_gtk_directory_list_get_file;
	int function(GtkDirectoryList* self) c_gtk_directory_list_get_io_priority;
	int function(GtkDirectoryList* self) c_gtk_directory_list_get_monitored;
	int function(GtkDirectoryList* self) c_gtk_directory_list_is_loading;
	void function(GtkDirectoryList* self, const(char)* attributes) c_gtk_directory_list_set_attributes;
	void function(GtkDirectoryList* self, GFile* file) c_gtk_directory_list_set_file;
	void function(GtkDirectoryList* self, int ioPriority) c_gtk_directory_list_set_io_priority;
	void function(GtkDirectoryList* self, int monitored) c_gtk_directory_list_set_monitored;

	// gtk.DragIcon

	GType function() c_gtk_drag_icon_get_type;
	GtkWidget* function(GValue* value) c_gtk_drag_icon_create_widget_for_value;
	GtkWidget* function(GdkDrag* drag) c_gtk_drag_icon_get_for_drag;
	void function(GdkDrag* drag, GdkPaintable* paintable, int hotX, int hotY) c_gtk_drag_icon_set_from_paintable;
	GtkWidget* function(GtkDragIcon* self) c_gtk_drag_icon_get_child;
	void function(GtkDragIcon* self, GtkWidget* child) c_gtk_drag_icon_set_child;

	// gtk.DragSource

	GType function() c_gtk_drag_source_get_type;
	GtkDragSource* function() c_gtk_drag_source_new;
	void function(GtkDragSource* source) c_gtk_drag_source_drag_cancel;
	GdkDragAction function(GtkDragSource* source) c_gtk_drag_source_get_actions;
	GdkContentProvider* function(GtkDragSource* source) c_gtk_drag_source_get_content;
	GdkDrag* function(GtkDragSource* source) c_gtk_drag_source_get_drag;
	void function(GtkDragSource* source, GdkDragAction actions) c_gtk_drag_source_set_actions;
	void function(GtkDragSource* source, GdkContentProvider* content) c_gtk_drag_source_set_content;
	void function(GtkDragSource* source, GdkPaintable* paintable, int hotX, int hotY) c_gtk_drag_source_set_icon;

	// gtk.DrawingArea

	GType function() c_gtk_drawing_area_get_type;
	GtkWidget* function() c_gtk_drawing_area_new;
	int function(GtkDrawingArea* self) c_gtk_drawing_area_get_content_height;
	int function(GtkDrawingArea* self) c_gtk_drawing_area_get_content_width;
	void function(GtkDrawingArea* self, int height) c_gtk_drawing_area_set_content_height;
	void function(GtkDrawingArea* self, int width) c_gtk_drawing_area_set_content_width;
	void function(GtkDrawingArea* self, GtkDrawingAreaDrawFunc drawFunc, void* userData, GDestroyNotify destroy) c_gtk_drawing_area_set_draw_func;

	// gtk.DropControllerMotion

	GType function() c_gtk_drop_controller_motion_get_type;
	GtkEventController* function() c_gtk_drop_controller_motion_new;
	int function(GtkDropControllerMotion* self) c_gtk_drop_controller_motion_contains_pointer;
	GdkDrop* function(GtkDropControllerMotion* self) c_gtk_drop_controller_motion_get_drop;
	int function(GtkDropControllerMotion* self) c_gtk_drop_controller_motion_is_pointer;

	// gtk.DropDown

	GType function() c_gtk_drop_down_get_type;
	GtkWidget* function(GListModel* model, GtkExpression* expression) c_gtk_drop_down_new;
	GtkWidget* function(char** strings) c_gtk_drop_down_new_from_strings;
	int function(GtkDropDown* self) c_gtk_drop_down_get_enable_search;
	GtkExpression* function(GtkDropDown* self) c_gtk_drop_down_get_expression;
	GtkListItemFactory* function(GtkDropDown* self) c_gtk_drop_down_get_factory;
	GtkListItemFactory* function(GtkDropDown* self) c_gtk_drop_down_get_list_factory;
	GListModel* function(GtkDropDown* self) c_gtk_drop_down_get_model;
	uint function(GtkDropDown* self) c_gtk_drop_down_get_selected;
	void* function(GtkDropDown* self) c_gtk_drop_down_get_selected_item;
	int function(GtkDropDown* self) c_gtk_drop_down_get_show_arrow;
	void function(GtkDropDown* self, int enableSearch) c_gtk_drop_down_set_enable_search;
	void function(GtkDropDown* self, GtkExpression* expression) c_gtk_drop_down_set_expression;
	void function(GtkDropDown* self, GtkListItemFactory* factory) c_gtk_drop_down_set_factory;
	void function(GtkDropDown* self, GtkListItemFactory* factory) c_gtk_drop_down_set_list_factory;
	void function(GtkDropDown* self, GListModel* model) c_gtk_drop_down_set_model;
	void function(GtkDropDown* self, uint position) c_gtk_drop_down_set_selected;
	void function(GtkDropDown* self, int showArrow) c_gtk_drop_down_set_show_arrow;

	// gtk.DropTarget

	GType function() c_gtk_drop_target_get_type;
	GtkDropTarget* function(GType type, GdkDragAction actions) c_gtk_drop_target_new;
	GdkDragAction function(GtkDropTarget* self) c_gtk_drop_target_get_actions;
	GdkDrop* function(GtkDropTarget* self) c_gtk_drop_target_get_current_drop;
	GdkDrop* function(GtkDropTarget* self) c_gtk_drop_target_get_drop;
	GdkContentFormats* function(GtkDropTarget* self) c_gtk_drop_target_get_formats;
	GType* function(GtkDropTarget* self, size_t* nTypes) c_gtk_drop_target_get_gtypes;
	int function(GtkDropTarget* self) c_gtk_drop_target_get_preload;
	GValue* function(GtkDropTarget* self) c_gtk_drop_target_get_value;
	void function(GtkDropTarget* self) c_gtk_drop_target_reject;
	void function(GtkDropTarget* self, GdkDragAction actions) c_gtk_drop_target_set_actions;
	void function(GtkDropTarget* self, GType* types, size_t nTypes) c_gtk_drop_target_set_gtypes;
	void function(GtkDropTarget* self, int preload) c_gtk_drop_target_set_preload;

	// gtk.DropTargetAsync

	GType function() c_gtk_drop_target_async_get_type;
	GtkDropTargetAsync* function(GdkContentFormats* formats, GdkDragAction actions) c_gtk_drop_target_async_new;
	GdkDragAction function(GtkDropTargetAsync* self) c_gtk_drop_target_async_get_actions;
	GdkContentFormats* function(GtkDropTargetAsync* self) c_gtk_drop_target_async_get_formats;
	void function(GtkDropTargetAsync* self, GdkDrop* drop) c_gtk_drop_target_async_reject_drop;
	void function(GtkDropTargetAsync* self, GdkDragAction actions) c_gtk_drop_target_async_set_actions;
	void function(GtkDropTargetAsync* self, GdkContentFormats* formats) c_gtk_drop_target_async_set_formats;

	// gtk.Editable

	GType function() c_gtk_editable_get_type;
	int function(GObject* object, uint propId, GValue* value, GParamSpec* pspec) c_gtk_editable_delegate_get_property;
	int function(GObject* object, uint propId, GValue* value, GParamSpec* pspec) c_gtk_editable_delegate_set_property;
	uint function(GObjectClass* objectClass, uint firstProp) c_gtk_editable_install_properties;
	void function(GtkEditable* editable) c_gtk_editable_delete_selection;
	void function(GtkEditable* editable, int startPos, int endPos) c_gtk_editable_delete_text;
	void function(GtkEditable* editable) c_gtk_editable_finish_delegate;
	float function(GtkEditable* editable) c_gtk_editable_get_alignment;
	char* function(GtkEditable* editable, int startPos, int endPos) c_gtk_editable_get_chars;
	GtkEditable* function(GtkEditable* editable) c_gtk_editable_get_delegate;
	int function(GtkEditable* editable) c_gtk_editable_get_editable;
	int function(GtkEditable* editable) c_gtk_editable_get_enable_undo;
	int function(GtkEditable* editable) c_gtk_editable_get_max_width_chars;
	int function(GtkEditable* editable) c_gtk_editable_get_position;
	int function(GtkEditable* editable, int* startPos, int* endPos) c_gtk_editable_get_selection_bounds;
	const(char)* function(GtkEditable* editable) c_gtk_editable_get_text;
	int function(GtkEditable* editable) c_gtk_editable_get_width_chars;
	void function(GtkEditable* editable) c_gtk_editable_init_delegate;
	void function(GtkEditable* editable, const(char)* text, int length, int* position) c_gtk_editable_insert_text;
	void function(GtkEditable* editable, int startPos, int endPos) c_gtk_editable_select_region;
	void function(GtkEditable* editable, float xalign) c_gtk_editable_set_alignment;
	void function(GtkEditable* editable, int isEditable) c_gtk_editable_set_editable;
	void function(GtkEditable* editable, int enableUndo) c_gtk_editable_set_enable_undo;
	void function(GtkEditable* editable, int nChars) c_gtk_editable_set_max_width_chars;
	void function(GtkEditable* editable, int position) c_gtk_editable_set_position;
	void function(GtkEditable* editable, const(char)* text) c_gtk_editable_set_text;
	void function(GtkEditable* editable, int nChars) c_gtk_editable_set_width_chars;

	// gtk.EditableLabel

	GType function() c_gtk_editable_label_get_type;
	GtkWidget* function(const(char)* str) c_gtk_editable_label_new;
	int function(GtkEditableLabel* self) c_gtk_editable_label_get_editing;
	void function(GtkEditableLabel* self) c_gtk_editable_label_start_editing;
	void function(GtkEditableLabel* self, int commit) c_gtk_editable_label_stop_editing;

	// gtk.EmojiChooser

	GType function() c_gtk_emoji_chooser_get_type;
	GtkWidget* function() c_gtk_emoji_chooser_new;

	// gtk.Entry

	GType function() c_gtk_entry_get_type;
	GtkWidget* function() c_gtk_entry_new;
	GtkWidget* function(GtkEntryBuffer* buffer) c_gtk_entry_new_with_buffer;
	int function(GtkEntry* entry) c_gtk_entry_get_activates_default;
	float function(GtkEntry* entry) c_gtk_entry_get_alignment;
	PangoAttrList* function(GtkEntry* entry) c_gtk_entry_get_attributes;
	GtkEntryBuffer* function(GtkEntry* entry) c_gtk_entry_get_buffer;
	GtkEntryCompletion* function(GtkEntry* entry) c_gtk_entry_get_completion;
	int function(GtkEntry* entry) c_gtk_entry_get_current_icon_drag_source;
	GMenuModel* function(GtkEntry* entry) c_gtk_entry_get_extra_menu;
	int function(GtkEntry* entry) c_gtk_entry_get_has_frame;
	int function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_activatable;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkRectangle* iconArea) c_gtk_entry_get_icon_area;
	int function(GtkEntry* entry, int x, int y) c_gtk_entry_get_icon_at_pos;
	GIcon* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_gicon;
	const(char)* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_name;
	GdkPaintable* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_paintable;
	int function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_sensitive;
	GtkImageType function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_storage_type;
	char* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_markup;
	char* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_text;
	GtkInputHints function(GtkEntry* entry) c_gtk_entry_get_input_hints;
	GtkInputPurpose function(GtkEntry* entry) c_gtk_entry_get_input_purpose;
	dchar function(GtkEntry* entry) c_gtk_entry_get_invisible_char;
	int function(GtkEntry* entry) c_gtk_entry_get_max_length;
	int function(GtkEntry* entry) c_gtk_entry_get_overwrite_mode;
	const(char)* function(GtkEntry* entry) c_gtk_entry_get_placeholder_text;
	double function(GtkEntry* entry) c_gtk_entry_get_progress_fraction;
	double function(GtkEntry* entry) c_gtk_entry_get_progress_pulse_step;
	PangoTabArray* function(GtkEntry* entry) c_gtk_entry_get_tabs;
	ushort function(GtkEntry* entry) c_gtk_entry_get_text_length;
	int function(GtkEntry* entry) c_gtk_entry_get_visibility;
	int function(GtkEntry* entry) c_gtk_entry_grab_focus_without_selecting;
	void function(GtkEntry* entry) c_gtk_entry_progress_pulse;
	void function(GtkEntry* entry) c_gtk_entry_reset_im_context;
	void function(GtkEntry* entry, int setting) c_gtk_entry_set_activates_default;
	void function(GtkEntry* entry, float xalign) c_gtk_entry_set_alignment;
	void function(GtkEntry* entry, PangoAttrList* attrs) c_gtk_entry_set_attributes;
	void function(GtkEntry* entry, GtkEntryBuffer* buffer) c_gtk_entry_set_buffer;
	void function(GtkEntry* entry, GtkEntryCompletion* completion) c_gtk_entry_set_completion;
	void function(GtkEntry* entry, GMenuModel* model) c_gtk_entry_set_extra_menu;
	void function(GtkEntry* entry, int setting) c_gtk_entry_set_has_frame;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, int activatable) c_gtk_entry_set_icon_activatable;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkContentProvider* provider, GdkDragAction actions) c_gtk_entry_set_icon_drag_source;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GIcon* icon) c_gtk_entry_set_icon_from_gicon;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* iconName) c_gtk_entry_set_icon_from_icon_name;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkPaintable* paintable) c_gtk_entry_set_icon_from_paintable;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, int sensitive) c_gtk_entry_set_icon_sensitive;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip) c_gtk_entry_set_icon_tooltip_markup;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, const(char)* tooltip) c_gtk_entry_set_icon_tooltip_text;
	void function(GtkEntry* entry, GtkInputHints hints) c_gtk_entry_set_input_hints;
	void function(GtkEntry* entry, GtkInputPurpose purpose) c_gtk_entry_set_input_purpose;
	void function(GtkEntry* entry, dchar ch) c_gtk_entry_set_invisible_char;
	void function(GtkEntry* entry, int max) c_gtk_entry_set_max_length;
	void function(GtkEntry* entry, int overwrite) c_gtk_entry_set_overwrite_mode;
	void function(GtkEntry* entry, const(char)* text) c_gtk_entry_set_placeholder_text;
	void function(GtkEntry* entry, double fraction) c_gtk_entry_set_progress_fraction;
	void function(GtkEntry* entry, double fraction) c_gtk_entry_set_progress_pulse_step;
	void function(GtkEntry* entry, PangoTabArray* tabs) c_gtk_entry_set_tabs;
	void function(GtkEntry* entry, int visible) c_gtk_entry_set_visibility;
	void function(GtkEntry* entry) c_gtk_entry_unset_invisible_char;

	// gtk.EntryBuffer

	GType function() c_gtk_entry_buffer_get_type;
	GtkEntryBuffer* function(const(char)* initialChars, int nInitialChars) c_gtk_entry_buffer_new;
	uint function(GtkEntryBuffer* buffer, uint position, int nChars) c_gtk_entry_buffer_delete_text;
	void function(GtkEntryBuffer* buffer, uint position, uint nChars) c_gtk_entry_buffer_emit_deleted_text;
	void function(GtkEntryBuffer* buffer, uint position, const(char)* chars, uint nChars) c_gtk_entry_buffer_emit_inserted_text;
	size_t function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_bytes;
	uint function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_length;
	int function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_max_length;
	const(char)* function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_text;
	uint function(GtkEntryBuffer* buffer, uint position, const(char)* chars, int nChars) c_gtk_entry_buffer_insert_text;
	void function(GtkEntryBuffer* buffer, int maxLength) c_gtk_entry_buffer_set_max_length;
	void function(GtkEntryBuffer* buffer, const(char)* chars, int nChars) c_gtk_entry_buffer_set_text;

	// gtk.EntryCompletion

	GType function() c_gtk_entry_completion_get_type;
	GtkEntryCompletion* function() c_gtk_entry_completion_new;
	GtkEntryCompletion* function(GtkCellArea* area) c_gtk_entry_completion_new_with_area;
	void function(GtkEntryCompletion* completion) c_gtk_entry_completion_complete;
	char* function(GtkEntryCompletion* completion, const(char)* key) c_gtk_entry_completion_compute_prefix;
	const(char)* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_completion_prefix;
	GtkWidget* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_entry;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_completion;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_selection;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_minimum_key_length;
	GtkTreeModel* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_model;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_completion;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_set_width;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_single_match;
	int function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_text_column;
	void function(GtkEntryCompletion* completion) c_gtk_entry_completion_insert_prefix;
	void function(GtkEntryCompletion* completion, int inlineCompletion) c_gtk_entry_completion_set_inline_completion;
	void function(GtkEntryCompletion* completion, int inlineSelection) c_gtk_entry_completion_set_inline_selection;
	void function(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, void* funcData, GDestroyNotify funcNotify) c_gtk_entry_completion_set_match_func;
	void function(GtkEntryCompletion* completion, int length) c_gtk_entry_completion_set_minimum_key_length;
	void function(GtkEntryCompletion* completion, GtkTreeModel* model) c_gtk_entry_completion_set_model;
	void function(GtkEntryCompletion* completion, int popupCompletion) c_gtk_entry_completion_set_popup_completion;
	void function(GtkEntryCompletion* completion, int popupSetWidth) c_gtk_entry_completion_set_popup_set_width;
	void function(GtkEntryCompletion* completion, int popupSingleMatch) c_gtk_entry_completion_set_popup_single_match;
	void function(GtkEntryCompletion* completion, int column) c_gtk_entry_completion_set_text_column;

	// gtk.EventController

	GType function() c_gtk_event_controller_get_type;
	GdkEvent* function(GtkEventController* controller) c_gtk_event_controller_get_current_event;
	GdkDevice* function(GtkEventController* controller) c_gtk_event_controller_get_current_event_device;
	GdkModifierType function(GtkEventController* controller) c_gtk_event_controller_get_current_event_state;
	uint function(GtkEventController* controller) c_gtk_event_controller_get_current_event_time;
	const(char)* function(GtkEventController* controller) c_gtk_event_controller_get_name;
	GtkPropagationLimit function(GtkEventController* controller) c_gtk_event_controller_get_propagation_limit;
	GtkPropagationPhase function(GtkEventController* controller) c_gtk_event_controller_get_propagation_phase;
	GtkWidget* function(GtkEventController* controller) c_gtk_event_controller_get_widget;
	void function(GtkEventController* controller) c_gtk_event_controller_reset;
	void function(GtkEventController* controller, const(char)* name) c_gtk_event_controller_set_name;
	void function(GtkEventController* controller, GtkPropagationLimit limit) c_gtk_event_controller_set_propagation_limit;
	void function(GtkEventController* controller, GtkPropagationPhase phase) c_gtk_event_controller_set_propagation_phase;

	// gtk.EventControllerFocus

	GType function() c_gtk_event_controller_focus_get_type;
	GtkEventController* function() c_gtk_event_controller_focus_new;
	int function(GtkEventControllerFocus* self) c_gtk_event_controller_focus_contains_focus;
	int function(GtkEventControllerFocus* self) c_gtk_event_controller_focus_is_focus;

	// gtk.EventControllerKey

	GType function() c_gtk_event_controller_key_get_type;
	GtkEventController* function() c_gtk_event_controller_key_new;
	int function(GtkEventControllerKey* controller, GtkWidget* widget) c_gtk_event_controller_key_forward;
	uint function(GtkEventControllerKey* controller) c_gtk_event_controller_key_get_group;
	GtkIMContext* function(GtkEventControllerKey* controller) c_gtk_event_controller_key_get_im_context;
	void function(GtkEventControllerKey* controller, GtkIMContext* imContext) c_gtk_event_controller_key_set_im_context;

	// gtk.EventControllerLegacy

	GType function() c_gtk_event_controller_legacy_get_type;
	GtkEventController* function() c_gtk_event_controller_legacy_new;

	// gtk.EventControllerMotion

	GType function() c_gtk_event_controller_motion_get_type;
	GtkEventController* function() c_gtk_event_controller_motion_new;
	int function(GtkEventControllerMotion* self) c_gtk_event_controller_motion_contains_pointer;
	int function(GtkEventControllerMotion* self) c_gtk_event_controller_motion_is_pointer;

	// gtk.EventControllerScroll

	GType function() c_gtk_event_controller_scroll_get_type;
	GtkEventController* function(GtkEventControllerScrollFlags flags) c_gtk_event_controller_scroll_new;
	GtkEventControllerScrollFlags function(GtkEventControllerScroll* scroll) c_gtk_event_controller_scroll_get_flags;
	void function(GtkEventControllerScroll* scroll, GtkEventControllerScrollFlags flags) c_gtk_event_controller_scroll_set_flags;

	// gtk.EveryFilter

	GType function() c_gtk_every_filter_get_type;
	GtkEveryFilter* function() c_gtk_every_filter_new;

	// gtk.Expander

	GType function() c_gtk_expander_get_type;
	GtkWidget* function(const(char)* label) c_gtk_expander_new;
	GtkWidget* function(const(char)* label) c_gtk_expander_new_with_mnemonic;
	GtkWidget* function(GtkExpander* expander) c_gtk_expander_get_child;
	int function(GtkExpander* expander) c_gtk_expander_get_expanded;
	const(char)* function(GtkExpander* expander) c_gtk_expander_get_label;
	GtkWidget* function(GtkExpander* expander) c_gtk_expander_get_label_widget;
	int function(GtkExpander* expander) c_gtk_expander_get_resize_toplevel;
	int function(GtkExpander* expander) c_gtk_expander_get_use_markup;
	int function(GtkExpander* expander) c_gtk_expander_get_use_underline;
	void function(GtkExpander* expander, GtkWidget* child) c_gtk_expander_set_child;
	void function(GtkExpander* expander, int expanded) c_gtk_expander_set_expanded;
	void function(GtkExpander* expander, const(char)* label) c_gtk_expander_set_label;
	void function(GtkExpander* expander, GtkWidget* labelWidget) c_gtk_expander_set_label_widget;
	void function(GtkExpander* expander, int resizeToplevel) c_gtk_expander_set_resize_toplevel;
	void function(GtkExpander* expander, int useMarkup) c_gtk_expander_set_use_markup;
	void function(GtkExpander* expander, int useUnderline) c_gtk_expander_set_use_underline;

	// gtk.Expression

	GType function() c_gtk_expression_get_type;
	GtkExpressionWatch* function(GtkExpression* self, void* target, const(char)* property, void* this_) c_gtk_expression_bind;
	int function(GtkExpression* self, void* this_, GValue* value) c_gtk_expression_evaluate;
	GType function(GtkExpression* self) c_gtk_expression_get_value_type;
	int function(GtkExpression* self) c_gtk_expression_is_static;
	GtkExpression* function(GtkExpression* self) c_gtk_expression_ref;
	void function(GtkExpression* self) c_gtk_expression_unref;
	GtkExpressionWatch* function(GtkExpression* self, void* this_, GtkExpressionNotify notify, void* userData, GDestroyNotify userDestroy) c_gtk_expression_watch;

	// gtk.ExpressionWatch

	GType function() c_gtk_expression_watch_get_type;
	int function(GtkExpressionWatch* watch, GValue* value) c_gtk_expression_watch_evaluate;
	GtkExpressionWatch* function(GtkExpressionWatch* watch) c_gtk_expression_watch_ref;
	void function(GtkExpressionWatch* watch) c_gtk_expression_watch_unref;
	void function(GtkExpressionWatch* watch) c_gtk_expression_watch_unwatch;

	// gtk.FileChooser

	GType function() c_gtk_file_chooser_get_type;
	void function(GtkFileChooser* chooser, const(char)* id, const(char)* label, char** options, char** optionLabels) c_gtk_file_chooser_add_choice;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_add_filter;
	int function(GtkFileChooser* chooser, GFile* folder, GError** err) c_gtk_file_chooser_add_shortcut_folder;
	GtkFileChooserAction function(GtkFileChooser* chooser) c_gtk_file_chooser_get_action;
	const(char)* function(GtkFileChooser* chooser, const(char)* id) c_gtk_file_chooser_get_choice;
	int function(GtkFileChooser* chooser) c_gtk_file_chooser_get_create_folders;
	GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder;
	char* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_name;
	GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_file;
	GListModel* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_files;
	GtkFileFilter* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filter;
	GListModel* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filters;
	int function(GtkFileChooser* chooser) c_gtk_file_chooser_get_select_multiple;
	GListModel* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_shortcut_folders;
	void function(GtkFileChooser* chooser, const(char)* id) c_gtk_file_chooser_remove_choice;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_remove_filter;
	int function(GtkFileChooser* chooser, GFile* folder, GError** err) c_gtk_file_chooser_remove_shortcut_folder;
	void function(GtkFileChooser* chooser, GtkFileChooserAction action) c_gtk_file_chooser_set_action;
	void function(GtkFileChooser* chooser, const(char)* id, const(char)* option) c_gtk_file_chooser_set_choice;
	void function(GtkFileChooser* chooser, int createFolders) c_gtk_file_chooser_set_create_folders;
	int function(GtkFileChooser* chooser, GFile* file, GError** err) c_gtk_file_chooser_set_current_folder;
	void function(GtkFileChooser* chooser, const(char)* name) c_gtk_file_chooser_set_current_name;
	int function(GtkFileChooser* chooser, GFile* file, GError** err) c_gtk_file_chooser_set_file;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_set_filter;
	void function(GtkFileChooser* chooser, int selectMultiple) c_gtk_file_chooser_set_select_multiple;

	// gtk.FileChooserDialog

	GType function() c_gtk_file_chooser_dialog_get_type;
	GtkWidget* function(const(char)* title, GtkWindow* parent, GtkFileChooserAction action, const(char)* firstButtonText, ... ) c_gtk_file_chooser_dialog_new;

	// gtk.FileChooserNative

	GType function() c_gtk_file_chooser_native_get_type;
	GtkFileChooserNative* function(const(char)* title, GtkWindow* parent, GtkFileChooserAction action, const(char)* acceptLabel, const(char)* cancelLabel) c_gtk_file_chooser_native_new;
	const(char)* function(GtkFileChooserNative* self) c_gtk_file_chooser_native_get_accept_label;
	const(char)* function(GtkFileChooserNative* self) c_gtk_file_chooser_native_get_cancel_label;
	void function(GtkFileChooserNative* self, const(char)* acceptLabel) c_gtk_file_chooser_native_set_accept_label;
	void function(GtkFileChooserNative* self, const(char)* cancelLabel) c_gtk_file_chooser_native_set_cancel_label;

	// gtk.FileChooserWidget

	GType function() c_gtk_file_chooser_widget_get_type;
	GtkWidget* function(GtkFileChooserAction action) c_gtk_file_chooser_widget_new;

	// gtk.FileFilter

	GType function() c_gtk_file_filter_get_type;
	GtkFileFilter* function() c_gtk_file_filter_new;
	GtkFileFilter* function(GVariant* variant) c_gtk_file_filter_new_from_gvariant;
	void function(GtkFileFilter* filter, const(char)* mimeType) c_gtk_file_filter_add_mime_type;
	void function(GtkFileFilter* filter, const(char)* pattern) c_gtk_file_filter_add_pattern;
	void function(GtkFileFilter* filter) c_gtk_file_filter_add_pixbuf_formats;
	void function(GtkFileFilter* filter, const(char)* suffix) c_gtk_file_filter_add_suffix;
	char** function(GtkFileFilter* filter) c_gtk_file_filter_get_attributes;
	const(char)* function(GtkFileFilter* filter) c_gtk_file_filter_get_name;
	void function(GtkFileFilter* filter, const(char)* name) c_gtk_file_filter_set_name;
	GVariant* function(GtkFileFilter* filter) c_gtk_file_filter_to_gvariant;

	// gtk.Filter

	GType function() c_gtk_filter_get_type;
	void function(GtkFilter* self, GtkFilterChange change) c_gtk_filter_changed;
	GtkFilterMatch function(GtkFilter* self) c_gtk_filter_get_strictness;
	int function(GtkFilter* self, void* item) c_gtk_filter_match;

	// gtk.FilterListModel

	GType function() c_gtk_filter_list_model_get_type;
	GtkFilterListModel* function(GListModel* model, GtkFilter* filter) c_gtk_filter_list_model_new;
	GtkFilter* function(GtkFilterListModel* self) c_gtk_filter_list_model_get_filter;
	int function(GtkFilterListModel* self) c_gtk_filter_list_model_get_incremental;
	GListModel* function(GtkFilterListModel* self) c_gtk_filter_list_model_get_model;
	uint function(GtkFilterListModel* self) c_gtk_filter_list_model_get_pending;
	void function(GtkFilterListModel* self, GtkFilter* filter) c_gtk_filter_list_model_set_filter;
	void function(GtkFilterListModel* self, int incremental) c_gtk_filter_list_model_set_incremental;
	void function(GtkFilterListModel* self, GListModel* model) c_gtk_filter_list_model_set_model;

	// gtk.Fixed

	GType function() c_gtk_fixed_get_type;
	GtkWidget* function() c_gtk_fixed_new;
	void function(GtkFixed* fixed, GtkWidget* widget, double* x, double* y) c_gtk_fixed_get_child_position;
	GskTransform* function(GtkFixed* fixed, GtkWidget* widget) c_gtk_fixed_get_child_transform;
	void function(GtkFixed* fixed, GtkWidget* widget, double x, double y) c_gtk_fixed_move;
	void function(GtkFixed* fixed, GtkWidget* widget, double x, double y) c_gtk_fixed_put;
	void function(GtkFixed* fixed, GtkWidget* widget) c_gtk_fixed_remove;
	void function(GtkFixed* fixed, GtkWidget* widget, GskTransform* transform) c_gtk_fixed_set_child_transform;

	// gtk.FixedLayout

	GType function() c_gtk_fixed_layout_get_type;
	GtkLayoutManager* function() c_gtk_fixed_layout_new;

	// gtk.FixedLayoutChild

	GType function() c_gtk_fixed_layout_child_get_type;
	GskTransform* function(GtkFixedLayoutChild* child) c_gtk_fixed_layout_child_get_transform;
	void function(GtkFixedLayoutChild* child, GskTransform* transform) c_gtk_fixed_layout_child_set_transform;

	// gtk.FlattenListModel

	GType function() c_gtk_flatten_list_model_get_type;
	GtkFlattenListModel* function(GListModel* model) c_gtk_flatten_list_model_new;
	GListModel* function(GtkFlattenListModel* self) c_gtk_flatten_list_model_get_model;
	GListModel* function(GtkFlattenListModel* self, uint position) c_gtk_flatten_list_model_get_model_for_item;
	void function(GtkFlattenListModel* self, GListModel* model) c_gtk_flatten_list_model_set_model;

	// gtk.FlowBox

	GType function() c_gtk_flow_box_get_type;
	GtkWidget* function() c_gtk_flow_box_new;
	void function(GtkFlowBox* self, GtkWidget* child) c_gtk_flow_box_append;
	void function(GtkFlowBox* box, GListModel* model, GtkFlowBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc) c_gtk_flow_box_bind_model;
	int function(GtkFlowBox* box) c_gtk_flow_box_get_activate_on_single_click;
	GtkFlowBoxChild* function(GtkFlowBox* box, int idx) c_gtk_flow_box_get_child_at_index;
	GtkFlowBoxChild* function(GtkFlowBox* box, int x, int y) c_gtk_flow_box_get_child_at_pos;
	uint function(GtkFlowBox* box) c_gtk_flow_box_get_column_spacing;
	int function(GtkFlowBox* box) c_gtk_flow_box_get_homogeneous;
	uint function(GtkFlowBox* box) c_gtk_flow_box_get_max_children_per_line;
	uint function(GtkFlowBox* box) c_gtk_flow_box_get_min_children_per_line;
	uint function(GtkFlowBox* box) c_gtk_flow_box_get_row_spacing;
	GList* function(GtkFlowBox* box) c_gtk_flow_box_get_selected_children;
	GtkSelectionMode function(GtkFlowBox* box) c_gtk_flow_box_get_selection_mode;
	void function(GtkFlowBox* box, GtkWidget* widget, int position) c_gtk_flow_box_insert;
	void function(GtkFlowBox* box) c_gtk_flow_box_invalidate_filter;
	void function(GtkFlowBox* box) c_gtk_flow_box_invalidate_sort;
	void function(GtkFlowBox* self, GtkWidget* child) c_gtk_flow_box_prepend;
	void function(GtkFlowBox* box, GtkWidget* widget) c_gtk_flow_box_remove;
	void function(GtkFlowBox* box) c_gtk_flow_box_select_all;
	void function(GtkFlowBox* box, GtkFlowBoxChild* child) c_gtk_flow_box_select_child;
	void function(GtkFlowBox* box, GtkFlowBoxForeachFunc func, void* data) c_gtk_flow_box_selected_foreach;
	void function(GtkFlowBox* box, int single) c_gtk_flow_box_set_activate_on_single_click;
	void function(GtkFlowBox* box, uint spacing) c_gtk_flow_box_set_column_spacing;
	void function(GtkFlowBox* box, GtkFlowBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy) c_gtk_flow_box_set_filter_func;
	void function(GtkFlowBox* box, GtkAdjustment* adjustment) c_gtk_flow_box_set_hadjustment;
	void function(GtkFlowBox* box, int homogeneous) c_gtk_flow_box_set_homogeneous;
	void function(GtkFlowBox* box, uint nChildren) c_gtk_flow_box_set_max_children_per_line;
	void function(GtkFlowBox* box, uint nChildren) c_gtk_flow_box_set_min_children_per_line;
	void function(GtkFlowBox* box, uint spacing) c_gtk_flow_box_set_row_spacing;
	void function(GtkFlowBox* box, GtkSelectionMode mode) c_gtk_flow_box_set_selection_mode;
	void function(GtkFlowBox* box, GtkFlowBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_flow_box_set_sort_func;
	void function(GtkFlowBox* box, GtkAdjustment* adjustment) c_gtk_flow_box_set_vadjustment;
	void function(GtkFlowBox* box) c_gtk_flow_box_unselect_all;
	void function(GtkFlowBox* box, GtkFlowBoxChild* child) c_gtk_flow_box_unselect_child;

	// gtk.FlowBoxChild

	GType function() c_gtk_flow_box_child_get_type;
	GtkWidget* function() c_gtk_flow_box_child_new;
	void function(GtkFlowBoxChild* child) c_gtk_flow_box_child_changed;
	GtkWidget* function(GtkFlowBoxChild* self) c_gtk_flow_box_child_get_child;
	int function(GtkFlowBoxChild* child) c_gtk_flow_box_child_get_index;
	int function(GtkFlowBoxChild* child) c_gtk_flow_box_child_is_selected;
	void function(GtkFlowBoxChild* self, GtkWidget* child) c_gtk_flow_box_child_set_child;

	// gtk.FontButton

	GType function() c_gtk_font_button_get_type;
	GtkWidget* function() c_gtk_font_button_new;
	GtkWidget* function(const(char)* fontname) c_gtk_font_button_new_with_font;
	int function(GtkFontButton* fontButton) c_gtk_font_button_get_modal;
	const(char)* function(GtkFontButton* fontButton) c_gtk_font_button_get_title;
	int function(GtkFontButton* fontButton) c_gtk_font_button_get_use_font;
	int function(GtkFontButton* fontButton) c_gtk_font_button_get_use_size;
	void function(GtkFontButton* fontButton, int modal) c_gtk_font_button_set_modal;
	void function(GtkFontButton* fontButton, const(char)* title) c_gtk_font_button_set_title;
	void function(GtkFontButton* fontButton, int useFont) c_gtk_font_button_set_use_font;
	void function(GtkFontButton* fontButton, int useSize) c_gtk_font_button_set_use_size;

	// gtk.FontChooser

	GType function() c_gtk_font_chooser_get_type;
	char* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font;
	PangoFontDescription* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_desc;
	PangoFontFace* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_face;
	PangoFontFamily* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_family;
	char* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_features;
	PangoFontMap* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_map;
	int function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_size;
	char* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_language;
	GtkFontChooserLevel function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_level;
	char* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_preview_text;
	int function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_show_preview_entry;
	void function(GtkFontChooser* fontchooser, GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy) c_gtk_font_chooser_set_filter_func;
	void function(GtkFontChooser* fontchooser, const(char)* fontname) c_gtk_font_chooser_set_font;
	void function(GtkFontChooser* fontchooser, PangoFontDescription* fontDesc) c_gtk_font_chooser_set_font_desc;
	void function(GtkFontChooser* fontchooser, PangoFontMap* fontmap) c_gtk_font_chooser_set_font_map;
	void function(GtkFontChooser* fontchooser, const(char)* language) c_gtk_font_chooser_set_language;
	void function(GtkFontChooser* fontchooser, GtkFontChooserLevel level) c_gtk_font_chooser_set_level;
	void function(GtkFontChooser* fontchooser, const(char)* text) c_gtk_font_chooser_set_preview_text;
	void function(GtkFontChooser* fontchooser, int showPreviewEntry) c_gtk_font_chooser_set_show_preview_entry;

	// gtk.FontChooserDialog

	GType function() c_gtk_font_chooser_dialog_get_type;
	GtkWidget* function(const(char)* title, GtkWindow* parent) c_gtk_font_chooser_dialog_new;

	// gtk.FontChooserWidget

	GType function() c_gtk_font_chooser_widget_get_type;
	GtkWidget* function() c_gtk_font_chooser_widget_new;

	// gtk.Frame

	GType function() c_gtk_frame_get_type;
	GtkWidget* function(const(char)* label) c_gtk_frame_new;
	GtkWidget* function(GtkFrame* frame) c_gtk_frame_get_child;
	const(char)* function(GtkFrame* frame) c_gtk_frame_get_label;
	float function(GtkFrame* frame) c_gtk_frame_get_label_align;
	GtkWidget* function(GtkFrame* frame) c_gtk_frame_get_label_widget;
	void function(GtkFrame* frame, GtkWidget* child) c_gtk_frame_set_child;
	void function(GtkFrame* frame, const(char)* label) c_gtk_frame_set_label;
	void function(GtkFrame* frame, float xalign) c_gtk_frame_set_label_align;
	void function(GtkFrame* frame, GtkWidget* labelWidget) c_gtk_frame_set_label_widget;

	// gtk.GLArea

	GType function() c_gtk_gl_area_get_type;
	GtkWidget* function() c_gtk_gl_area_new;
	void function(GtkGLArea* area) c_gtk_gl_area_attach_buffers;
	int function(GtkGLArea* area) c_gtk_gl_area_get_auto_render;
	GdkGLContext* function(GtkGLArea* area) c_gtk_gl_area_get_context;
	GError* function(GtkGLArea* area) c_gtk_gl_area_get_error;
	int function(GtkGLArea* area) c_gtk_gl_area_get_has_depth_buffer;
	int function(GtkGLArea* area) c_gtk_gl_area_get_has_stencil_buffer;
	void function(GtkGLArea* area, int* major, int* minor) c_gtk_gl_area_get_required_version;
	int function(GtkGLArea* area) c_gtk_gl_area_get_use_es;
	void function(GtkGLArea* area) c_gtk_gl_area_make_current;
	void function(GtkGLArea* area) c_gtk_gl_area_queue_render;
	void function(GtkGLArea* area, int autoRender) c_gtk_gl_area_set_auto_render;
	void function(GtkGLArea* area, GError* error) c_gtk_gl_area_set_error;
	void function(GtkGLArea* area, int hasDepthBuffer) c_gtk_gl_area_set_has_depth_buffer;
	void function(GtkGLArea* area, int hasStencilBuffer) c_gtk_gl_area_set_has_stencil_buffer;
	void function(GtkGLArea* area, int major, int minor) c_gtk_gl_area_set_required_version;
	void function(GtkGLArea* area, int useEs) c_gtk_gl_area_set_use_es;

	// gtk.Gesture

	GType function() c_gtk_gesture_get_type;
	int function(GtkGesture* gesture, GdkRectangle* rect) c_gtk_gesture_get_bounding_box;
	int function(GtkGesture* gesture, double* x, double* y) c_gtk_gesture_get_bounding_box_center;
	GdkDevice* function(GtkGesture* gesture) c_gtk_gesture_get_device;
	GList* function(GtkGesture* gesture) c_gtk_gesture_get_group;
	GdkEvent* function(GtkGesture* gesture, GdkEventSequence* sequence) c_gtk_gesture_get_last_event;
	GdkEventSequence* function(GtkGesture* gesture) c_gtk_gesture_get_last_updated_sequence;
	int function(GtkGesture* gesture, GdkEventSequence* sequence, double* x, double* y) c_gtk_gesture_get_point;
	GtkEventSequenceState function(GtkGesture* gesture, GdkEventSequence* sequence) c_gtk_gesture_get_sequence_state;
	GList* function(GtkGesture* gesture) c_gtk_gesture_get_sequences;
	void function(GtkGesture* groupGesture, GtkGesture* gesture) c_gtk_gesture_group;
	int function(GtkGesture* gesture, GdkEventSequence* sequence) c_gtk_gesture_handles_sequence;
	int function(GtkGesture* gesture) c_gtk_gesture_is_active;
	int function(GtkGesture* gesture, GtkGesture* other) c_gtk_gesture_is_grouped_with;
	int function(GtkGesture* gesture) c_gtk_gesture_is_recognized;
	int function(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state) c_gtk_gesture_set_sequence_state;
	int function(GtkGesture* gesture, GtkEventSequenceState state) c_gtk_gesture_set_state;
	void function(GtkGesture* gesture) c_gtk_gesture_ungroup;

	// gtk.GestureClick

	GType function() c_gtk_gesture_click_get_type;
	GtkGesture* function() c_gtk_gesture_click_new;

	// gtk.GestureDrag

	GType function() c_gtk_gesture_drag_get_type;
	GtkGesture* function() c_gtk_gesture_drag_new;
	int function(GtkGestureDrag* gesture, double* x, double* y) c_gtk_gesture_drag_get_offset;
	int function(GtkGestureDrag* gesture, double* x, double* y) c_gtk_gesture_drag_get_start_point;

	// gtk.GestureLongPress

	GType function() c_gtk_gesture_long_press_get_type;
	GtkGesture* function() c_gtk_gesture_long_press_new;
	double function(GtkGestureLongPress* gesture) c_gtk_gesture_long_press_get_delay_factor;
	void function(GtkGestureLongPress* gesture, double delayFactor) c_gtk_gesture_long_press_set_delay_factor;

	// gtk.GesturePan

	GType function() c_gtk_gesture_pan_get_type;
	GtkGesture* function(GtkOrientation orientation) c_gtk_gesture_pan_new;
	GtkOrientation function(GtkGesturePan* gesture) c_gtk_gesture_pan_get_orientation;
	void function(GtkGesturePan* gesture, GtkOrientation orientation) c_gtk_gesture_pan_set_orientation;

	// gtk.GestureRotate

	GType function() c_gtk_gesture_rotate_get_type;
	GtkGesture* function() c_gtk_gesture_rotate_new;
	double function(GtkGestureRotate* gesture) c_gtk_gesture_rotate_get_angle_delta;

	// gtk.GestureSingle

	GType function() c_gtk_gesture_single_get_type;
	uint function(GtkGestureSingle* gesture) c_gtk_gesture_single_get_button;
	uint function(GtkGestureSingle* gesture) c_gtk_gesture_single_get_current_button;
	GdkEventSequence* function(GtkGestureSingle* gesture) c_gtk_gesture_single_get_current_sequence;
	int function(GtkGestureSingle* gesture) c_gtk_gesture_single_get_exclusive;
	int function(GtkGestureSingle* gesture) c_gtk_gesture_single_get_touch_only;
	void function(GtkGestureSingle* gesture, uint button) c_gtk_gesture_single_set_button;
	void function(GtkGestureSingle* gesture, int exclusive) c_gtk_gesture_single_set_exclusive;
	void function(GtkGestureSingle* gesture, int touchOnly) c_gtk_gesture_single_set_touch_only;

	// gtk.GestureStylus

	GType function() c_gtk_gesture_stylus_get_type;
	GtkGesture* function() c_gtk_gesture_stylus_new;
	int function(GtkGestureStylus* gesture, GdkAxisUse* axes, double** values) c_gtk_gesture_stylus_get_axes;
	int function(GtkGestureStylus* gesture, GdkAxisUse axis, double* value) c_gtk_gesture_stylus_get_axis;
	int function(GtkGestureStylus* gesture, GdkTimeCoord** backlog, uint* nElems) c_gtk_gesture_stylus_get_backlog;
	GdkDeviceTool* function(GtkGestureStylus* gesture) c_gtk_gesture_stylus_get_device_tool;

	// gtk.GestureSwipe

	GType function() c_gtk_gesture_swipe_get_type;
	GtkGesture* function() c_gtk_gesture_swipe_new;
	int function(GtkGestureSwipe* gesture, double* velocityX, double* velocityY) c_gtk_gesture_swipe_get_velocity;

	// gtk.GestureZoom

	GType function() c_gtk_gesture_zoom_get_type;
	GtkGesture* function() c_gtk_gesture_zoom_new;
	double function(GtkGestureZoom* gesture) c_gtk_gesture_zoom_get_scale_delta;

	// gtk.Grid

	GType function() c_gtk_grid_get_type;
	GtkWidget* function() c_gtk_grid_new;
	void function(GtkGrid* grid, GtkWidget* child, int column, int row, int width, int height) c_gtk_grid_attach;
	void function(GtkGrid* grid, GtkWidget* child, GtkWidget* sibling, GtkPositionType side, int width, int height) c_gtk_grid_attach_next_to;
	int function(GtkGrid* grid) c_gtk_grid_get_baseline_row;
	GtkWidget* function(GtkGrid* grid, int column, int row) c_gtk_grid_get_child_at;
	int function(GtkGrid* grid) c_gtk_grid_get_column_homogeneous;
	uint function(GtkGrid* grid) c_gtk_grid_get_column_spacing;
	GtkBaselinePosition function(GtkGrid* grid, int row) c_gtk_grid_get_row_baseline_position;
	int function(GtkGrid* grid) c_gtk_grid_get_row_homogeneous;
	uint function(GtkGrid* grid) c_gtk_grid_get_row_spacing;
	void function(GtkGrid* grid, int position) c_gtk_grid_insert_column;
	void function(GtkGrid* grid, GtkWidget* sibling, GtkPositionType side) c_gtk_grid_insert_next_to;
	void function(GtkGrid* grid, int position) c_gtk_grid_insert_row;
	void function(GtkGrid* grid, GtkWidget* child, int* column, int* row, int* width, int* height) c_gtk_grid_query_child;
	void function(GtkGrid* grid, GtkWidget* child) c_gtk_grid_remove;
	void function(GtkGrid* grid, int position) c_gtk_grid_remove_column;
	void function(GtkGrid* grid, int position) c_gtk_grid_remove_row;
	void function(GtkGrid* grid, int row) c_gtk_grid_set_baseline_row;
	void function(GtkGrid* grid, int homogeneous) c_gtk_grid_set_column_homogeneous;
	void function(GtkGrid* grid, uint spacing) c_gtk_grid_set_column_spacing;
	void function(GtkGrid* grid, int row, GtkBaselinePosition pos) c_gtk_grid_set_row_baseline_position;
	void function(GtkGrid* grid, int homogeneous) c_gtk_grid_set_row_homogeneous;
	void function(GtkGrid* grid, uint spacing) c_gtk_grid_set_row_spacing;

	// gtk.GridLayout

	GType function() c_gtk_grid_layout_get_type;
	GtkLayoutManager* function() c_gtk_grid_layout_new;
	int function(GtkGridLayout* grid) c_gtk_grid_layout_get_baseline_row;
	int function(GtkGridLayout* grid) c_gtk_grid_layout_get_column_homogeneous;
	uint function(GtkGridLayout* grid) c_gtk_grid_layout_get_column_spacing;
	GtkBaselinePosition function(GtkGridLayout* grid, int row) c_gtk_grid_layout_get_row_baseline_position;
	int function(GtkGridLayout* grid) c_gtk_grid_layout_get_row_homogeneous;
	uint function(GtkGridLayout* grid) c_gtk_grid_layout_get_row_spacing;
	void function(GtkGridLayout* grid, int row) c_gtk_grid_layout_set_baseline_row;
	void function(GtkGridLayout* grid, int homogeneous) c_gtk_grid_layout_set_column_homogeneous;
	void function(GtkGridLayout* grid, uint spacing) c_gtk_grid_layout_set_column_spacing;
	void function(GtkGridLayout* grid, int row, GtkBaselinePosition pos) c_gtk_grid_layout_set_row_baseline_position;
	void function(GtkGridLayout* grid, int homogeneous) c_gtk_grid_layout_set_row_homogeneous;
	void function(GtkGridLayout* grid, uint spacing) c_gtk_grid_layout_set_row_spacing;

	// gtk.GridLayoutChild

	GType function() c_gtk_grid_layout_child_get_type;
	int function(GtkGridLayoutChild* child) c_gtk_grid_layout_child_get_column;
	int function(GtkGridLayoutChild* child) c_gtk_grid_layout_child_get_column_span;
	int function(GtkGridLayoutChild* child) c_gtk_grid_layout_child_get_row;
	int function(GtkGridLayoutChild* child) c_gtk_grid_layout_child_get_row_span;
	void function(GtkGridLayoutChild* child, int column) c_gtk_grid_layout_child_set_column;
	void function(GtkGridLayoutChild* child, int span) c_gtk_grid_layout_child_set_column_span;
	void function(GtkGridLayoutChild* child, int row) c_gtk_grid_layout_child_set_row;
	void function(GtkGridLayoutChild* child, int span) c_gtk_grid_layout_child_set_row_span;

	// gtk.GridView

	GType function() c_gtk_grid_view_get_type;
	GtkWidget* function(GtkSelectionModel* model, GtkListItemFactory* factory) c_gtk_grid_view_new;
	int function(GtkGridView* self) c_gtk_grid_view_get_enable_rubberband;
	GtkListItemFactory* function(GtkGridView* self) c_gtk_grid_view_get_factory;
	uint function(GtkGridView* self) c_gtk_grid_view_get_max_columns;
	uint function(GtkGridView* self) c_gtk_grid_view_get_min_columns;
	GtkSelectionModel* function(GtkGridView* self) c_gtk_grid_view_get_model;
	int function(GtkGridView* self) c_gtk_grid_view_get_single_click_activate;
	void function(GtkGridView* self, int enableRubberband) c_gtk_grid_view_set_enable_rubberband;
	void function(GtkGridView* self, GtkListItemFactory* factory) c_gtk_grid_view_set_factory;
	void function(GtkGridView* self, uint maxColumns) c_gtk_grid_view_set_max_columns;
	void function(GtkGridView* self, uint minColumns) c_gtk_grid_view_set_min_columns;
	void function(GtkGridView* self, GtkSelectionModel* model) c_gtk_grid_view_set_model;
	void function(GtkGridView* self, int singleClickActivate) c_gtk_grid_view_set_single_click_activate;

	// gtk.HeaderBar

	GType function() c_gtk_header_bar_get_type;
	GtkWidget* function() c_gtk_header_bar_new;
	const(char)* function(GtkHeaderBar* bar) c_gtk_header_bar_get_decoration_layout;
	int function(GtkHeaderBar* bar) c_gtk_header_bar_get_show_title_buttons;
	GtkWidget* function(GtkHeaderBar* bar) c_gtk_header_bar_get_title_widget;
	void function(GtkHeaderBar* bar, GtkWidget* child) c_gtk_header_bar_pack_end;
	void function(GtkHeaderBar* bar, GtkWidget* child) c_gtk_header_bar_pack_start;
	void function(GtkHeaderBar* bar, GtkWidget* child) c_gtk_header_bar_remove;
	void function(GtkHeaderBar* bar, const(char)* layout) c_gtk_header_bar_set_decoration_layout;
	void function(GtkHeaderBar* bar, int setting) c_gtk_header_bar_set_show_title_buttons;
	void function(GtkHeaderBar* bar, GtkWidget* titleWidget) c_gtk_header_bar_set_title_widget;

	// gtk.IMContext

	GType function() c_gtk_im_context_get_type;
	int function(GtkIMContext* context, int offset, int nChars) c_gtk_im_context_delete_surrounding;
	int function(GtkIMContext* context, int press, GdkSurface* surface, GdkDevice* device, uint time, uint keycode, GdkModifierType state, int group) c_gtk_im_context_filter_key;
	int function(GtkIMContext* context, GdkEvent* event) c_gtk_im_context_filter_keypress;
	void function(GtkIMContext* context) c_gtk_im_context_focus_in;
	void function(GtkIMContext* context) c_gtk_im_context_focus_out;
	void function(GtkIMContext* context, char** str, PangoAttrList** attrs, int* cursorPos) c_gtk_im_context_get_preedit_string;
	int function(GtkIMContext* context, char** text, int* cursorIndex) c_gtk_im_context_get_surrounding;
	int function(GtkIMContext* context, char** text, int* cursorIndex, int* anchorIndex) c_gtk_im_context_get_surrounding_with_selection;
	void function(GtkIMContext* context) c_gtk_im_context_reset;
	void function(GtkIMContext* context, GtkWidget* widget) c_gtk_im_context_set_client_widget;
	void function(GtkIMContext* context, GdkRectangle* area) c_gtk_im_context_set_cursor_location;
	void function(GtkIMContext* context, const(char)* text, int len, int cursorIndex) c_gtk_im_context_set_surrounding;
	void function(GtkIMContext* context, const(char)* text, int len, int cursorIndex, int anchorIndex) c_gtk_im_context_set_surrounding_with_selection;
	void function(GtkIMContext* context, int usePreedit) c_gtk_im_context_set_use_preedit;

	// gtk.IMContextSimple

	GType function() c_gtk_im_context_simple_get_type;
	GtkIMContext* function() c_gtk_im_context_simple_new;
	void function(GtkIMContextSimple* contextSimple, const(char)* composeFile) c_gtk_im_context_simple_add_compose_file;
	void function(GtkIMContextSimple* contextSimple, ushort* data, int maxSeqLen, int nSeqs) c_gtk_im_context_simple_add_table;

	// gtk.IMMulticontext

	GType function() c_gtk_im_multicontext_get_type;
	GtkIMContext* function() c_gtk_im_multicontext_new;
	const(char)* function(GtkIMMulticontext* context) c_gtk_im_multicontext_get_context_id;
	void function(GtkIMMulticontext* context, const(char)* contextId) c_gtk_im_multicontext_set_context_id;

	// gtk.IconPaintable

	GType function() c_gtk_icon_paintable_get_type;
	GtkIconPaintable* function(GFile* file, int size, int scale) c_gtk_icon_paintable_new_for_file;
	GFile* function(GtkIconPaintable* self) c_gtk_icon_paintable_get_file;
	char* function(GtkIconPaintable* self) c_gtk_icon_paintable_get_icon_name;
	int function(GtkIconPaintable* self) c_gtk_icon_paintable_is_symbolic;

	// gtk.IconTheme

	GType function() c_gtk_icon_theme_get_type;
	GtkIconTheme* function() c_gtk_icon_theme_new;
	GtkIconTheme* function(GdkDisplay* display) c_gtk_icon_theme_get_for_display;
	void function(GtkIconTheme* self, const(char)* path) c_gtk_icon_theme_add_resource_path;
	void function(GtkIconTheme* self, char* path) c_gtk_icon_theme_add_search_path;
	GdkDisplay* function(GtkIconTheme* self) c_gtk_icon_theme_get_display;
	char** function(GtkIconTheme* self) c_gtk_icon_theme_get_icon_names;
	int* function(GtkIconTheme* self, const(char)* iconName) c_gtk_icon_theme_get_icon_sizes;
	char** function(GtkIconTheme* self) c_gtk_icon_theme_get_resource_path;
	char** function(GtkIconTheme* self) c_gtk_icon_theme_get_search_path;
	char* function(GtkIconTheme* self) c_gtk_icon_theme_get_theme_name;
	int function(GtkIconTheme* self, GIcon* gicon) c_gtk_icon_theme_has_gicon;
	int function(GtkIconTheme* self, const(char)* iconName) c_gtk_icon_theme_has_icon;
	GtkIconPaintable* function(GtkIconTheme* self, GIcon* icon, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_by_gicon;
	GtkIconPaintable* function(GtkIconTheme* self, const(char)* iconName, char** fallbacks, int size, int scale, GtkTextDirection direction, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_icon;
	void function(GtkIconTheme* self, char** path) c_gtk_icon_theme_set_resource_path;
	void function(GtkIconTheme* self, char** path) c_gtk_icon_theme_set_search_path;
	void function(GtkIconTheme* self, const(char)* themeName) c_gtk_icon_theme_set_theme_name;

	// gtk.IconView

	GType function() c_gtk_icon_view_get_type;
	GtkWidget* function() c_gtk_icon_view_new;
	GtkWidget* function(GtkCellArea* area) c_gtk_icon_view_new_with_area;
	GtkWidget* function(GtkTreeModel* model) c_gtk_icon_view_new_with_model;
	GdkPaintable* function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_create_drag_icon;
	void function(GtkIconView* iconView, GdkContentFormats* formats, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_dest;
	void function(GtkIconView* iconView, GdkModifierType startButtonMask, GdkContentFormats* formats, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_source;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_activate_on_single_click;
	int function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, GdkRectangle* rect) c_gtk_icon_view_get_cell_rect;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_column_spacing;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_columns;
	int function(GtkIconView* iconView, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_cursor;
	int function(GtkIconView* iconView, int dragX, int dragY, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_dest_item_at_pos;
	void function(GtkIconView* iconView, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_drag_dest_item;
	int function(GtkIconView* iconView, int x, int y, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_item_at_pos;
	int function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_get_item_column;
	GtkOrientation function(GtkIconView* iconView) c_gtk_icon_view_get_item_orientation;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_item_padding;
	int function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_get_item_row;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_item_width;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_margin;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_markup_column;
	GtkTreeModel* function(GtkIconView* iconView) c_gtk_icon_view_get_model;
	GtkTreePath* function(GtkIconView* iconView, int x, int y) c_gtk_icon_view_get_path_at_pos;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_pixbuf_column;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_reorderable;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_row_spacing;
	GList* function(GtkIconView* iconView) c_gtk_icon_view_get_selected_items;
	GtkSelectionMode function(GtkIconView* iconView) c_gtk_icon_view_get_selection_mode;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_spacing;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_text_column;
	int function(GtkIconView* iconView) c_gtk_icon_view_get_tooltip_column;
	int function(GtkIconView* iconView, int x, int y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_icon_view_get_tooltip_context;
	int function(GtkIconView* iconView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_icon_view_get_visible_range;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_item_activated;
	int function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_path_is_selected;
	void function(GtkIconView* iconView, GtkTreePath* path, int useAlign, float rowAlign, float colAlign) c_gtk_icon_view_scroll_to_path;
	void function(GtkIconView* iconView) c_gtk_icon_view_select_all;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_select_path;
	void function(GtkIconView* iconView, GtkIconViewForeachFunc func, void* data) c_gtk_icon_view_selected_foreach;
	void function(GtkIconView* iconView, int single) c_gtk_icon_view_set_activate_on_single_click;
	void function(GtkIconView* iconView, int columnSpacing) c_gtk_icon_view_set_column_spacing;
	void function(GtkIconView* iconView, int columns) c_gtk_icon_view_set_columns;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, int startEditing) c_gtk_icon_view_set_cursor;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkIconViewDropPosition pos) c_gtk_icon_view_set_drag_dest_item;
	void function(GtkIconView* iconView, GtkOrientation orientation) c_gtk_icon_view_set_item_orientation;
	void function(GtkIconView* iconView, int itemPadding) c_gtk_icon_view_set_item_padding;
	void function(GtkIconView* iconView, int itemWidth) c_gtk_icon_view_set_item_width;
	void function(GtkIconView* iconView, int margin) c_gtk_icon_view_set_margin;
	void function(GtkIconView* iconView, int column) c_gtk_icon_view_set_markup_column;
	void function(GtkIconView* iconView, GtkTreeModel* model) c_gtk_icon_view_set_model;
	void function(GtkIconView* iconView, int column) c_gtk_icon_view_set_pixbuf_column;
	void function(GtkIconView* iconView, int reorderable) c_gtk_icon_view_set_reorderable;
	void function(GtkIconView* iconView, int rowSpacing) c_gtk_icon_view_set_row_spacing;
	void function(GtkIconView* iconView, GtkSelectionMode mode) c_gtk_icon_view_set_selection_mode;
	void function(GtkIconView* iconView, int spacing) c_gtk_icon_view_set_spacing;
	void function(GtkIconView* iconView, int column) c_gtk_icon_view_set_text_column;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell) c_gtk_icon_view_set_tooltip_cell;
	void function(GtkIconView* iconView, int column) c_gtk_icon_view_set_tooltip_column;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_icon_view_set_tooltip_item;
	void function(GtkIconView* iconView) c_gtk_icon_view_unselect_all;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_unselect_path;
	void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_dest;
	void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_source;

	// gtk.Image

	GType function() c_gtk_image_get_type;
	GtkWidget* function() c_gtk_image_new;
	GtkWidget* function(char* filename) c_gtk_image_new_from_file;
	GtkWidget* function(GIcon* icon) c_gtk_image_new_from_gicon;
	GtkWidget* function(const(char)* iconName) c_gtk_image_new_from_icon_name;
	GtkWidget* function(GdkPaintable* paintable) c_gtk_image_new_from_paintable;
	GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_image_new_from_pixbuf;
	GtkWidget* function(const(char)* resourcePath) c_gtk_image_new_from_resource;
	void function(GtkImage* image) c_gtk_image_clear;
	GIcon* function(GtkImage* image) c_gtk_image_get_gicon;
	const(char)* function(GtkImage* image) c_gtk_image_get_icon_name;
	GtkIconSize function(GtkImage* image) c_gtk_image_get_icon_size;
	GdkPaintable* function(GtkImage* image) c_gtk_image_get_paintable;
	int function(GtkImage* image) c_gtk_image_get_pixel_size;
	GtkImageType function(GtkImage* image) c_gtk_image_get_storage_type;
	void function(GtkImage* image, char* filename) c_gtk_image_set_from_file;
	void function(GtkImage* image, GIcon* icon) c_gtk_image_set_from_gicon;
	void function(GtkImage* image, const(char)* iconName) c_gtk_image_set_from_icon_name;
	void function(GtkImage* image, GdkPaintable* paintable) c_gtk_image_set_from_paintable;
	void function(GtkImage* image, GdkPixbuf* pixbuf) c_gtk_image_set_from_pixbuf;
	void function(GtkImage* image, const(char)* resourcePath) c_gtk_image_set_from_resource;
	void function(GtkImage* image, GtkIconSize iconSize) c_gtk_image_set_icon_size;
	void function(GtkImage* image, int pixelSize) c_gtk_image_set_pixel_size;

	// gtk.InfoBar

	GType function() c_gtk_info_bar_get_type;
	GtkWidget* function() c_gtk_info_bar_new;
	GtkWidget* function(const(char)* firstButtonText, ... ) c_gtk_info_bar_new_with_buttons;
	void function(GtkInfoBar* infoBar, GtkWidget* child, int responseId) c_gtk_info_bar_add_action_widget;
	GtkWidget* function(GtkInfoBar* infoBar, const(char)* buttonText, int responseId) c_gtk_info_bar_add_button;
	void function(GtkInfoBar* infoBar, const(char)* firstButtonText, ... ) c_gtk_info_bar_add_buttons;
	void function(GtkInfoBar* infoBar, GtkWidget* widget) c_gtk_info_bar_add_child;
	GtkMessageType function(GtkInfoBar* infoBar) c_gtk_info_bar_get_message_type;
	int function(GtkInfoBar* infoBar) c_gtk_info_bar_get_revealed;
	int function(GtkInfoBar* infoBar) c_gtk_info_bar_get_show_close_button;
	void function(GtkInfoBar* infoBar, GtkWidget* widget) c_gtk_info_bar_remove_action_widget;
	void function(GtkInfoBar* infoBar, GtkWidget* widget) c_gtk_info_bar_remove_child;
	void function(GtkInfoBar* infoBar, int responseId) c_gtk_info_bar_response;
	void function(GtkInfoBar* infoBar, int responseId) c_gtk_info_bar_set_default_response;
	void function(GtkInfoBar* infoBar, GtkMessageType messageType) c_gtk_info_bar_set_message_type;
	void function(GtkInfoBar* infoBar, int responseId, int setting) c_gtk_info_bar_set_response_sensitive;
	void function(GtkInfoBar* infoBar, int revealed) c_gtk_info_bar_set_revealed;
	void function(GtkInfoBar* infoBar, int setting) c_gtk_info_bar_set_show_close_button;

	// gtk.KeyvalTrigger

	GType function() c_gtk_keyval_trigger_get_type;
	GtkShortcutTrigger* function(uint keyval, GdkModifierType modifiers) c_gtk_keyval_trigger_new;
	uint function(GtkKeyvalTrigger* self) c_gtk_keyval_trigger_get_keyval;
	GdkModifierType function(GtkKeyvalTrigger* self) c_gtk_keyval_trigger_get_modifiers;

	// gtk.Label

	GType function() c_gtk_label_get_type;
	GtkWidget* function(const(char)* str) c_gtk_label_new;
	GtkWidget* function(const(char)* str) c_gtk_label_new_with_mnemonic;
	PangoAttrList* function(GtkLabel* self) c_gtk_label_get_attributes;
	const(char)* function(GtkLabel* self) c_gtk_label_get_current_uri;
	PangoEllipsizeMode function(GtkLabel* self) c_gtk_label_get_ellipsize;
	GMenuModel* function(GtkLabel* self) c_gtk_label_get_extra_menu;
	GtkJustification function(GtkLabel* self) c_gtk_label_get_justify;
	const(char)* function(GtkLabel* self) c_gtk_label_get_label;
	PangoLayout* function(GtkLabel* self) c_gtk_label_get_layout;
	void function(GtkLabel* self, int* x, int* y) c_gtk_label_get_layout_offsets;
	int function(GtkLabel* self) c_gtk_label_get_lines;
	int function(GtkLabel* self) c_gtk_label_get_max_width_chars;
	uint function(GtkLabel* self) c_gtk_label_get_mnemonic_keyval;
	GtkWidget* function(GtkLabel* self) c_gtk_label_get_mnemonic_widget;
	GtkNaturalWrapMode function(GtkLabel* self) c_gtk_label_get_natural_wrap_mode;
	int function(GtkLabel* self) c_gtk_label_get_selectable;
	int function(GtkLabel* self, int* start, int* end) c_gtk_label_get_selection_bounds;
	int function(GtkLabel* self) c_gtk_label_get_single_line_mode;
	const(char)* function(GtkLabel* self) c_gtk_label_get_text;
	int function(GtkLabel* self) c_gtk_label_get_use_markup;
	int function(GtkLabel* self) c_gtk_label_get_use_underline;
	int function(GtkLabel* self) c_gtk_label_get_width_chars;
	int function(GtkLabel* self) c_gtk_label_get_wrap;
	PangoWrapMode function(GtkLabel* self) c_gtk_label_get_wrap_mode;
	float function(GtkLabel* self) c_gtk_label_get_xalign;
	float function(GtkLabel* self) c_gtk_label_get_yalign;
	void function(GtkLabel* self, int startOffset, int endOffset) c_gtk_label_select_region;
	void function(GtkLabel* self, PangoAttrList* attrs) c_gtk_label_set_attributes;
	void function(GtkLabel* self, PangoEllipsizeMode mode) c_gtk_label_set_ellipsize;
	void function(GtkLabel* self, GMenuModel* model) c_gtk_label_set_extra_menu;
	void function(GtkLabel* self, GtkJustification jtype) c_gtk_label_set_justify;
	void function(GtkLabel* self, const(char)* str) c_gtk_label_set_label;
	void function(GtkLabel* self, int lines) c_gtk_label_set_lines;
	void function(GtkLabel* self, const(char)* str) c_gtk_label_set_markup;
	void function(GtkLabel* self, const(char)* str) c_gtk_label_set_markup_with_mnemonic;
	void function(GtkLabel* self, int nChars) c_gtk_label_set_max_width_chars;
	void function(GtkLabel* self, GtkWidget* widget) c_gtk_label_set_mnemonic_widget;
	void function(GtkLabel* self, GtkNaturalWrapMode wrapMode) c_gtk_label_set_natural_wrap_mode;
	void function(GtkLabel* self, int setting) c_gtk_label_set_selectable;
	void function(GtkLabel* self, int singleLineMode) c_gtk_label_set_single_line_mode;
	void function(GtkLabel* self, const(char)* str) c_gtk_label_set_text;
	void function(GtkLabel* self, const(char)* str) c_gtk_label_set_text_with_mnemonic;
	void function(GtkLabel* self, int setting) c_gtk_label_set_use_markup;
	void function(GtkLabel* self, int setting) c_gtk_label_set_use_underline;
	void function(GtkLabel* self, int nChars) c_gtk_label_set_width_chars;
	void function(GtkLabel* self, int wrap) c_gtk_label_set_wrap;
	void function(GtkLabel* self, PangoWrapMode wrapMode) c_gtk_label_set_wrap_mode;
	void function(GtkLabel* self, float xalign) c_gtk_label_set_xalign;
	void function(GtkLabel* self, float yalign) c_gtk_label_set_yalign;

	// gtk.LayoutChild

	GType function() c_gtk_layout_child_get_type;
	GtkWidget* function(GtkLayoutChild* layoutChild) c_gtk_layout_child_get_child_widget;
	GtkLayoutManager* function(GtkLayoutChild* layoutChild) c_gtk_layout_child_get_layout_manager;

	// gtk.LayoutManager

	GType function() c_gtk_layout_manager_get_type;
	void function(GtkLayoutManager* manager, GtkWidget* widget, int width, int height, int baseline) c_gtk_layout_manager_allocate;
	GtkLayoutChild* function(GtkLayoutManager* manager, GtkWidget* child) c_gtk_layout_manager_get_layout_child;
	GtkSizeRequestMode function(GtkLayoutManager* manager) c_gtk_layout_manager_get_request_mode;
	GtkWidget* function(GtkLayoutManager* manager) c_gtk_layout_manager_get_widget;
	void function(GtkLayoutManager* manager) c_gtk_layout_manager_layout_changed;
	void function(GtkLayoutManager* manager, GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline) c_gtk_layout_manager_measure;

	// gtk.LevelBar

	GType function() c_gtk_level_bar_get_type;
	GtkWidget* function() c_gtk_level_bar_new;
	GtkWidget* function(double minValue, double maxValue) c_gtk_level_bar_new_for_interval;
	void function(GtkLevelBar* self, const(char)* name, double value) c_gtk_level_bar_add_offset_value;
	int function(GtkLevelBar* self) c_gtk_level_bar_get_inverted;
	double function(GtkLevelBar* self) c_gtk_level_bar_get_max_value;
	double function(GtkLevelBar* self) c_gtk_level_bar_get_min_value;
	GtkLevelBarMode function(GtkLevelBar* self) c_gtk_level_bar_get_mode;
	int function(GtkLevelBar* self, const(char)* name, double* value) c_gtk_level_bar_get_offset_value;
	double function(GtkLevelBar* self) c_gtk_level_bar_get_value;
	void function(GtkLevelBar* self, const(char)* name) c_gtk_level_bar_remove_offset_value;
	void function(GtkLevelBar* self, int inverted) c_gtk_level_bar_set_inverted;
	void function(GtkLevelBar* self, double value) c_gtk_level_bar_set_max_value;
	void function(GtkLevelBar* self, double value) c_gtk_level_bar_set_min_value;
	void function(GtkLevelBar* self, GtkLevelBarMode mode) c_gtk_level_bar_set_mode;
	void function(GtkLevelBar* self, double value) c_gtk_level_bar_set_value;

	// gtk.LinkButton

	GType function() c_gtk_link_button_get_type;
	GtkWidget* function(const(char)* uri) c_gtk_link_button_new;
	GtkWidget* function(const(char)* uri, const(char)* label) c_gtk_link_button_new_with_label;
	const(char)* function(GtkLinkButton* linkButton) c_gtk_link_button_get_uri;
	int function(GtkLinkButton* linkButton) c_gtk_link_button_get_visited;
	void function(GtkLinkButton* linkButton, const(char)* uri) c_gtk_link_button_set_uri;
	void function(GtkLinkButton* linkButton, int visited) c_gtk_link_button_set_visited;

	// gtk.ListBase

	GType function() c_gtk_list_base_get_type;

	// gtk.ListBox

	GType function() c_gtk_list_box_get_type;
	GtkWidget* function() c_gtk_list_box_new;
	void function(GtkListBox* box, GtkWidget* child) c_gtk_list_box_append;
	void function(GtkListBox* box, GListModel* model, GtkListBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc) c_gtk_list_box_bind_model;
	void function(GtkListBox* box, GtkListBoxRow* row) c_gtk_list_box_drag_highlight_row;
	void function(GtkListBox* box) c_gtk_list_box_drag_unhighlight_row;
	int function(GtkListBox* box) c_gtk_list_box_get_activate_on_single_click;
	GtkAdjustment* function(GtkListBox* box) c_gtk_list_box_get_adjustment;
	GtkListBoxRow* function(GtkListBox* box, int index) c_gtk_list_box_get_row_at_index;
	GtkListBoxRow* function(GtkListBox* box, int y) c_gtk_list_box_get_row_at_y;
	GtkListBoxRow* function(GtkListBox* box) c_gtk_list_box_get_selected_row;
	GList* function(GtkListBox* box) c_gtk_list_box_get_selected_rows;
	GtkSelectionMode function(GtkListBox* box) c_gtk_list_box_get_selection_mode;
	int function(GtkListBox* box) c_gtk_list_box_get_show_separators;
	void function(GtkListBox* box, GtkWidget* child, int position) c_gtk_list_box_insert;
	void function(GtkListBox* box) c_gtk_list_box_invalidate_filter;
	void function(GtkListBox* box) c_gtk_list_box_invalidate_headers;
	void function(GtkListBox* box) c_gtk_list_box_invalidate_sort;
	void function(GtkListBox* box, GtkWidget* child) c_gtk_list_box_prepend;
	void function(GtkListBox* box, GtkWidget* child) c_gtk_list_box_remove;
	void function(GtkListBox* box) c_gtk_list_box_select_all;
	void function(GtkListBox* box, GtkListBoxRow* row) c_gtk_list_box_select_row;
	void function(GtkListBox* box, GtkListBoxForeachFunc func, void* data) c_gtk_list_box_selected_foreach;
	void function(GtkListBox* box, int single) c_gtk_list_box_set_activate_on_single_click;
	void function(GtkListBox* box, GtkAdjustment* adjustment) c_gtk_list_box_set_adjustment;
	void function(GtkListBox* box, GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy) c_gtk_list_box_set_filter_func;
	void function(GtkListBox* box, GtkListBoxUpdateHeaderFunc updateHeader, void* userData, GDestroyNotify destroy) c_gtk_list_box_set_header_func;
	void function(GtkListBox* box, GtkWidget* placeholder) c_gtk_list_box_set_placeholder;
	void function(GtkListBox* box, GtkSelectionMode mode) c_gtk_list_box_set_selection_mode;
	void function(GtkListBox* box, int showSeparators) c_gtk_list_box_set_show_separators;
	void function(GtkListBox* box, GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_list_box_set_sort_func;
	void function(GtkListBox* box) c_gtk_list_box_unselect_all;
	void function(GtkListBox* box, GtkListBoxRow* row) c_gtk_list_box_unselect_row;

	// gtk.ListBoxRow

	GType function() c_gtk_list_box_row_get_type;
	GtkWidget* function() c_gtk_list_box_row_new;
	void function(GtkListBoxRow* row) c_gtk_list_box_row_changed;
	int function(GtkListBoxRow* row) c_gtk_list_box_row_get_activatable;
	GtkWidget* function(GtkListBoxRow* row) c_gtk_list_box_row_get_child;
	GtkWidget* function(GtkListBoxRow* row) c_gtk_list_box_row_get_header;
	int function(GtkListBoxRow* row) c_gtk_list_box_row_get_index;
	int function(GtkListBoxRow* row) c_gtk_list_box_row_get_selectable;
	int function(GtkListBoxRow* row) c_gtk_list_box_row_is_selected;
	void function(GtkListBoxRow* row, int activatable) c_gtk_list_box_row_set_activatable;
	void function(GtkListBoxRow* row, GtkWidget* child) c_gtk_list_box_row_set_child;
	void function(GtkListBoxRow* row, GtkWidget* header) c_gtk_list_box_row_set_header;
	void function(GtkListBoxRow* row, int selectable) c_gtk_list_box_row_set_selectable;

	// gtk.ListItem

	GType function() c_gtk_list_item_get_type;
	int function(GtkListItem* self) c_gtk_list_item_get_activatable;
	GtkWidget* function(GtkListItem* self) c_gtk_list_item_get_child;
	void* function(GtkListItem* self) c_gtk_list_item_get_item;
	uint function(GtkListItem* self) c_gtk_list_item_get_position;
	int function(GtkListItem* self) c_gtk_list_item_get_selectable;
	int function(GtkListItem* self) c_gtk_list_item_get_selected;
	void function(GtkListItem* self, int activatable) c_gtk_list_item_set_activatable;
	void function(GtkListItem* self, GtkWidget* child) c_gtk_list_item_set_child;
	void function(GtkListItem* self, int selectable) c_gtk_list_item_set_selectable;

	// gtk.ListItemFactory

	GType function() c_gtk_list_item_factory_get_type;

	// gtk.ListStore

	GType function() c_gtk_list_store_get_type;
	GtkListStore* function(int nColumns, ... ) c_gtk_list_store_new;
	GtkListStore* function(int nColumns, GType* types) c_gtk_list_store_newv;
	void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_append;
	void function(GtkListStore* listStore) c_gtk_list_store_clear;
	void function(GtkListStore* listStore, GtkTreeIter* iter, int position) c_gtk_list_store_insert;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_after;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_before;
	void function(GtkListStore* listStore, GtkTreeIter* iter, int position, ... ) c_gtk_list_store_insert_with_values;
	void function(GtkListStore* listStore, GtkTreeIter* iter, int position, int* columns, GValue* values, int nValues) c_gtk_list_store_insert_with_valuesv;
	int function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_iter_is_valid;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_after;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_before;
	void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_prepend;
	int function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_remove;
	void function(GtkListStore* store, int* newOrder) c_gtk_list_store_reorder;
	void function(GtkListStore* listStore, GtkTreeIter* iter, ... ) c_gtk_list_store_set;
	void function(GtkListStore* listStore, int nColumns, GType* types) c_gtk_list_store_set_column_types;
	void function(GtkListStore* listStore, GtkTreeIter* iter, void* varArgs) c_gtk_list_store_set_valist;
	void function(GtkListStore* listStore, GtkTreeIter* iter, int column, GValue* value) c_gtk_list_store_set_value;
	void function(GtkListStore* listStore, GtkTreeIter* iter, int* columns, GValue* values, int nValues) c_gtk_list_store_set_valuesv;
	void function(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b) c_gtk_list_store_swap;

	// gtk.ListView

	GType function() c_gtk_list_view_get_type;
	GtkWidget* function(GtkSelectionModel* model, GtkListItemFactory* factory) c_gtk_list_view_new;
	int function(GtkListView* self) c_gtk_list_view_get_enable_rubberband;
	GtkListItemFactory* function(GtkListView* self) c_gtk_list_view_get_factory;
	GtkSelectionModel* function(GtkListView* self) c_gtk_list_view_get_model;
	int function(GtkListView* self) c_gtk_list_view_get_show_separators;
	int function(GtkListView* self) c_gtk_list_view_get_single_click_activate;
	void function(GtkListView* self, int enableRubberband) c_gtk_list_view_set_enable_rubberband;
	void function(GtkListView* self, GtkListItemFactory* factory) c_gtk_list_view_set_factory;
	void function(GtkListView* self, GtkSelectionModel* model) c_gtk_list_view_set_model;
	void function(GtkListView* self, int showSeparators) c_gtk_list_view_set_show_separators;
	void function(GtkListView* self, int singleClickActivate) c_gtk_list_view_set_single_click_activate;

	// gtk.LockButton

	GType function() c_gtk_lock_button_get_type;
	GtkWidget* function(GPermission* permission) c_gtk_lock_button_new;
	GPermission* function(GtkLockButton* button) c_gtk_lock_button_get_permission;
	void function(GtkLockButton* button, GPermission* permission) c_gtk_lock_button_set_permission;

	// gtk.MapListModel

	GType function() c_gtk_map_list_model_get_type;
	GtkMapListModel* function(GListModel* model, GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy) c_gtk_map_list_model_new;
	GListModel* function(GtkMapListModel* self) c_gtk_map_list_model_get_model;
	int function(GtkMapListModel* self) c_gtk_map_list_model_has_map;
	void function(GtkMapListModel* self, GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy) c_gtk_map_list_model_set_map_func;
	void function(GtkMapListModel* self, GListModel* model) c_gtk_map_list_model_set_model;

	// gtk.MediaControls

	GType function() c_gtk_media_controls_get_type;
	GtkWidget* function(GtkMediaStream* stream) c_gtk_media_controls_new;
	GtkMediaStream* function(GtkMediaControls* controls) c_gtk_media_controls_get_media_stream;
	void function(GtkMediaControls* controls, GtkMediaStream* stream) c_gtk_media_controls_set_media_stream;

	// gtk.MediaFile

	GType function() c_gtk_media_file_get_type;
	GtkMediaStream* function() c_gtk_media_file_new;
	GtkMediaStream* function(GFile* file) c_gtk_media_file_new_for_file;
	GtkMediaStream* function(char* filename) c_gtk_media_file_new_for_filename;
	GtkMediaStream* function(GInputStream* stream) c_gtk_media_file_new_for_input_stream;
	GtkMediaStream* function(const(char)* resourcePath) c_gtk_media_file_new_for_resource;
	void function(GtkMediaFile* self) c_gtk_media_file_clear;
	GFile* function(GtkMediaFile* self) c_gtk_media_file_get_file;
	GInputStream* function(GtkMediaFile* self) c_gtk_media_file_get_input_stream;
	void function(GtkMediaFile* self, GFile* file) c_gtk_media_file_set_file;
	void function(GtkMediaFile* self, char* filename) c_gtk_media_file_set_filename;
	void function(GtkMediaFile* self, GInputStream* stream) c_gtk_media_file_set_input_stream;
	void function(GtkMediaFile* self, const(char)* resourcePath) c_gtk_media_file_set_resource;

	// gtk.MediaStream

	GType function() c_gtk_media_stream_get_type;
	void function(GtkMediaStream* self) c_gtk_media_stream_ended;
	void function(GtkMediaStream* self, GQuark domain, int code, const(char)* format, ... ) c_gtk_media_stream_error;
	void function(GtkMediaStream* self, GQuark domain, int code, const(char)* format, void* args) c_gtk_media_stream_error_valist;
	void function(GtkMediaStream* self, GError* error) c_gtk_media_stream_gerror;
	long function(GtkMediaStream* self) c_gtk_media_stream_get_duration;
	int function(GtkMediaStream* self) c_gtk_media_stream_get_ended;
	GError* function(GtkMediaStream* self) c_gtk_media_stream_get_error;
	int function(GtkMediaStream* self) c_gtk_media_stream_get_loop;
	int function(GtkMediaStream* self) c_gtk_media_stream_get_muted;
	int function(GtkMediaStream* self) c_gtk_media_stream_get_playing;
	long function(GtkMediaStream* self) c_gtk_media_stream_get_timestamp;
	double function(GtkMediaStream* self) c_gtk_media_stream_get_volume;
	int function(GtkMediaStream* self) c_gtk_media_stream_has_audio;
	int function(GtkMediaStream* self) c_gtk_media_stream_has_video;
	int function(GtkMediaStream* self) c_gtk_media_stream_is_prepared;
	int function(GtkMediaStream* self) c_gtk_media_stream_is_seekable;
	int function(GtkMediaStream* self) c_gtk_media_stream_is_seeking;
	void function(GtkMediaStream* self) c_gtk_media_stream_pause;
	void function(GtkMediaStream* self) c_gtk_media_stream_play;
	void function(GtkMediaStream* self, int hasAudio, int hasVideo, int seekable, long duration) c_gtk_media_stream_prepared;
	void function(GtkMediaStream* self, GdkSurface* surface) c_gtk_media_stream_realize;
	void function(GtkMediaStream* self, long timestamp) c_gtk_media_stream_seek;
	void function(GtkMediaStream* self) c_gtk_media_stream_seek_failed;
	void function(GtkMediaStream* self) c_gtk_media_stream_seek_success;
	void function(GtkMediaStream* self, int loop) c_gtk_media_stream_set_loop;
	void function(GtkMediaStream* self, int muted) c_gtk_media_stream_set_muted;
	void function(GtkMediaStream* self, int playing) c_gtk_media_stream_set_playing;
	void function(GtkMediaStream* self, double volume) c_gtk_media_stream_set_volume;
	void function(GtkMediaStream* self) c_gtk_media_stream_stream_ended;
	void function(GtkMediaStream* self, int hasAudio, int hasVideo, int seekable, long duration) c_gtk_media_stream_stream_prepared;
	void function(GtkMediaStream* self) c_gtk_media_stream_stream_unprepared;
	void function(GtkMediaStream* self) c_gtk_media_stream_unprepared;
	void function(GtkMediaStream* self, GdkSurface* surface) c_gtk_media_stream_unrealize;
	void function(GtkMediaStream* self, long timestamp) c_gtk_media_stream_update;

	// gtk.MenuButton

	GType function() c_gtk_menu_button_get_type;
	GtkWidget* function() c_gtk_menu_button_new;
	int function(GtkMenuButton* menuButton) c_gtk_menu_button_get_always_show_arrow;
	GtkWidget* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_child;
	GtkArrowType function(GtkMenuButton* menuButton) c_gtk_menu_button_get_direction;
	int function(GtkMenuButton* menuButton) c_gtk_menu_button_get_has_frame;
	const(char)* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_icon_name;
	const(char)* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_label;
	GMenuModel* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_menu_model;
	GtkPopover* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_popover;
	int function(GtkMenuButton* menuButton) c_gtk_menu_button_get_primary;
	int function(GtkMenuButton* menuButton) c_gtk_menu_button_get_use_underline;
	void function(GtkMenuButton* menuButton) c_gtk_menu_button_popdown;
	void function(GtkMenuButton* menuButton) c_gtk_menu_button_popup;
	void function(GtkMenuButton* menuButton, int alwaysShowArrow) c_gtk_menu_button_set_always_show_arrow;
	void function(GtkMenuButton* menuButton, GtkWidget* child) c_gtk_menu_button_set_child;
	void function(GtkMenuButton* menuButton, GtkMenuButtonCreatePopupFunc func, void* userData, GDestroyNotify destroyNotify) c_gtk_menu_button_set_create_popup_func;
	void function(GtkMenuButton* menuButton, GtkArrowType direction) c_gtk_menu_button_set_direction;
	void function(GtkMenuButton* menuButton, int hasFrame) c_gtk_menu_button_set_has_frame;
	void function(GtkMenuButton* menuButton, const(char)* iconName) c_gtk_menu_button_set_icon_name;
	void function(GtkMenuButton* menuButton, const(char)* label) c_gtk_menu_button_set_label;
	void function(GtkMenuButton* menuButton, GMenuModel* menuModel) c_gtk_menu_button_set_menu_model;
	void function(GtkMenuButton* menuButton, GtkWidget* popover) c_gtk_menu_button_set_popover;
	void function(GtkMenuButton* menuButton, int primary) c_gtk_menu_button_set_primary;
	void function(GtkMenuButton* menuButton, int useUnderline) c_gtk_menu_button_set_use_underline;

	// gtk.MessageDialog

	GType function() c_gtk_message_dialog_get_type;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... ) c_gtk_message_dialog_new;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const(char)* messageFormat, ... ) c_gtk_message_dialog_new_with_markup;
	void function(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... ) c_gtk_message_dialog_format_secondary_markup;
	void function(GtkMessageDialog* messageDialog, const(char)* messageFormat, ... ) c_gtk_message_dialog_format_secondary_text;
	GtkWidget* function(GtkMessageDialog* messageDialog) c_gtk_message_dialog_get_message_area;
	void function(GtkMessageDialog* messageDialog, const(char)* str) c_gtk_message_dialog_set_markup;

	// gtk.MnemonicAction

	GType function() c_gtk_mnemonic_action_get_type;
	GtkShortcutAction* function() c_gtk_mnemonic_action_get;

	// gtk.MnemonicTrigger

	GType function() c_gtk_mnemonic_trigger_get_type;
	GtkShortcutTrigger* function(uint keyval) c_gtk_mnemonic_trigger_new;
	uint function(GtkMnemonicTrigger* self) c_gtk_mnemonic_trigger_get_keyval;

	// gtk.MountOperation

	GType function() c_gtk_mount_operation_get_type;
	GMountOperation* function(GtkWindow* parent) c_gtk_mount_operation_new;
	GdkDisplay* function(GtkMountOperation* op) c_gtk_mount_operation_get_display;
	GtkWindow* function(GtkMountOperation* op) c_gtk_mount_operation_get_parent;
	int function(GtkMountOperation* op) c_gtk_mount_operation_is_showing;
	void function(GtkMountOperation* op, GdkDisplay* display) c_gtk_mount_operation_set_display;
	void function(GtkMountOperation* op, GtkWindow* parent) c_gtk_mount_operation_set_parent;

	// gtk.MultiFilter

	GType function() c_gtk_multi_filter_get_type;
	void function(GtkMultiFilter* self, GtkFilter* filter) c_gtk_multi_filter_append;
	void function(GtkMultiFilter* self, uint position) c_gtk_multi_filter_remove;

	// gtk.MultiSelection

	GType function() c_gtk_multi_selection_get_type;
	GtkMultiSelection* function(GListModel* model) c_gtk_multi_selection_new;
	GListModel* function(GtkMultiSelection* self) c_gtk_multi_selection_get_model;
	void function(GtkMultiSelection* self, GListModel* model) c_gtk_multi_selection_set_model;

	// gtk.MultiSorter

	GType function() c_gtk_multi_sorter_get_type;
	GtkMultiSorter* function() c_gtk_multi_sorter_new;
	void function(GtkMultiSorter* self, GtkSorter* sorter) c_gtk_multi_sorter_append;
	void function(GtkMultiSorter* self, uint position) c_gtk_multi_sorter_remove;

	// gtk.NamedAction

	GType function() c_gtk_named_action_get_type;
	GtkShortcutAction* function(const(char)* name) c_gtk_named_action_new;
	const(char)* function(GtkNamedAction* self) c_gtk_named_action_get_action_name;

	// gtk.Native

	GType function() c_gtk_native_get_type;
	GtkNative* function(GdkSurface* surface) c_gtk_native_get_for_surface;
	GskRenderer* function(GtkNative* self) c_gtk_native_get_renderer;
	GdkSurface* function(GtkNative* self) c_gtk_native_get_surface;
	void function(GtkNative* self, double* x, double* y) c_gtk_native_get_surface_transform;
	void function(GtkNative* self) c_gtk_native_realize;
	void function(GtkNative* self) c_gtk_native_unrealize;

	// gtk.NativeDialog

	GType function() c_gtk_native_dialog_get_type;
	void function(GtkNativeDialog* self) c_gtk_native_dialog_destroy;
	int function(GtkNativeDialog* self) c_gtk_native_dialog_get_modal;
	const(char)* function(GtkNativeDialog* self) c_gtk_native_dialog_get_title;
	GtkWindow* function(GtkNativeDialog* self) c_gtk_native_dialog_get_transient_for;
	int function(GtkNativeDialog* self) c_gtk_native_dialog_get_visible;
	void function(GtkNativeDialog* self) c_gtk_native_dialog_hide;
	void function(GtkNativeDialog* self, int modal) c_gtk_native_dialog_set_modal;
	void function(GtkNativeDialog* self, const(char)* title) c_gtk_native_dialog_set_title;
	void function(GtkNativeDialog* self, GtkWindow* parent) c_gtk_native_dialog_set_transient_for;
	void function(GtkNativeDialog* self) c_gtk_native_dialog_show;

	// gtk.NeverTrigger

	GType function() c_gtk_never_trigger_get_type;
	GtkShortcutTrigger* function() c_gtk_never_trigger_get;

	// gtk.NoSelection

	GType function() c_gtk_no_selection_get_type;
	GtkNoSelection* function(GListModel* model) c_gtk_no_selection_new;
	GListModel* function(GtkNoSelection* self) c_gtk_no_selection_get_model;
	void function(GtkNoSelection* self, GListModel* model) c_gtk_no_selection_set_model;

	// gtk.Notebook

	GType function() c_gtk_notebook_get_type;
	GtkWidget* function() c_gtk_notebook_new;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_append_page;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_append_page_menu;
	void function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_detach_tab;
	GtkWidget* function(GtkNotebook* notebook, GtkPackType packType) c_gtk_notebook_get_action_widget;
	int function(GtkNotebook* notebook) c_gtk_notebook_get_current_page;
	const(char)* function(GtkNotebook* notebook) c_gtk_notebook_get_group_name;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label;
	const(char)* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label_text;
	int function(GtkNotebook* notebook) c_gtk_notebook_get_n_pages;
	GtkWidget* function(GtkNotebook* notebook, int pageNum) c_gtk_notebook_get_nth_page;
	GtkNotebookPage* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_page;
	GListModel* function(GtkNotebook* notebook) c_gtk_notebook_get_pages;
	int function(GtkNotebook* notebook) c_gtk_notebook_get_scrollable;
	int function(GtkNotebook* notebook) c_gtk_notebook_get_show_border;
	int function(GtkNotebook* notebook) c_gtk_notebook_get_show_tabs;
	int function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_detachable;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label;
	const(char)* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label_text;
	GtkPositionType function(GtkNotebook* notebook) c_gtk_notebook_get_tab_pos;
	int function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_reorderable;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, int position) c_gtk_notebook_insert_page;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, int position) c_gtk_notebook_insert_page_menu;
	void function(GtkNotebook* notebook) c_gtk_notebook_next_page;
	int function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_page_num;
	void function(GtkNotebook* notebook) c_gtk_notebook_popup_disable;
	void function(GtkNotebook* notebook) c_gtk_notebook_popup_enable;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_prepend_page;
	int function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_prepend_page_menu;
	void function(GtkNotebook* notebook) c_gtk_notebook_prev_page;
	void function(GtkNotebook* notebook, int pageNum) c_gtk_notebook_remove_page;
	void function(GtkNotebook* notebook, GtkWidget* child, int position) c_gtk_notebook_reorder_child;
	void function(GtkNotebook* notebook, GtkWidget* widget, GtkPackType packType) c_gtk_notebook_set_action_widget;
	void function(GtkNotebook* notebook, int pageNum) c_gtk_notebook_set_current_page;
	void function(GtkNotebook* notebook, const(char)* groupName) c_gtk_notebook_set_group_name;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menuLabel) c_gtk_notebook_set_menu_label;
	void function(GtkNotebook* notebook, GtkWidget* child, const(char)* menuText) c_gtk_notebook_set_menu_label_text;
	void function(GtkNotebook* notebook, int scrollable) c_gtk_notebook_set_scrollable;
	void function(GtkNotebook* notebook, int showBorder) c_gtk_notebook_set_show_border;
	void function(GtkNotebook* notebook, int showTabs) c_gtk_notebook_set_show_tabs;
	void function(GtkNotebook* notebook, GtkWidget* child, int detachable) c_gtk_notebook_set_tab_detachable;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_set_tab_label;
	void function(GtkNotebook* notebook, GtkWidget* child, const(char)* tabText) c_gtk_notebook_set_tab_label_text;
	void function(GtkNotebook* notebook, GtkPositionType pos) c_gtk_notebook_set_tab_pos;
	void function(GtkNotebook* notebook, GtkWidget* child, int reorderable) c_gtk_notebook_set_tab_reorderable;

	// gtk.NotebookPage

	GType function() c_gtk_notebook_page_get_type;
	GtkWidget* function(GtkNotebookPage* page) c_gtk_notebook_page_get_child;

	// gtk.NothingAction

	GType function() c_gtk_nothing_action_get_type;
	GtkShortcutAction* function() c_gtk_nothing_action_get;

	// gtk.NumericSorter

	GType function() c_gtk_numeric_sorter_get_type;
	GtkNumericSorter* function(GtkExpression* expression) c_gtk_numeric_sorter_new;
	GtkExpression* function(GtkNumericSorter* self) c_gtk_numeric_sorter_get_expression;
	GtkSortType function(GtkNumericSorter* self) c_gtk_numeric_sorter_get_sort_order;
	void function(GtkNumericSorter* self, GtkExpression* expression) c_gtk_numeric_sorter_set_expression;
	void function(GtkNumericSorter* self, GtkSortType sortOrder) c_gtk_numeric_sorter_set_sort_order;

	// gtk.ObjectExpression

	GType function() c_gtk_object_expression_get_type;
	GtkExpression* function(GObject* object) c_gtk_object_expression_new;
	GObject* function(GtkExpression* expression) c_gtk_object_expression_get_object;

	// gtk.Orientable

	GType function() c_gtk_orientable_get_type;
	GtkOrientation function(GtkOrientable* orientable) c_gtk_orientable_get_orientation;
	void function(GtkOrientable* orientable, GtkOrientation orientation) c_gtk_orientable_set_orientation;

	// gtk.Overlay

	GType function() c_gtk_overlay_get_type;
	GtkWidget* function() c_gtk_overlay_new;
	void function(GtkOverlay* overlay, GtkWidget* widget) c_gtk_overlay_add_overlay;
	GtkWidget* function(GtkOverlay* overlay) c_gtk_overlay_get_child;
	int function(GtkOverlay* overlay, GtkWidget* widget) c_gtk_overlay_get_clip_overlay;
	int function(GtkOverlay* overlay, GtkWidget* widget) c_gtk_overlay_get_measure_overlay;
	void function(GtkOverlay* overlay, GtkWidget* widget) c_gtk_overlay_remove_overlay;
	void function(GtkOverlay* overlay, GtkWidget* child) c_gtk_overlay_set_child;
	void function(GtkOverlay* overlay, GtkWidget* widget, int clipOverlay) c_gtk_overlay_set_clip_overlay;
	void function(GtkOverlay* overlay, GtkWidget* widget, int measure) c_gtk_overlay_set_measure_overlay;

	// gtk.OverlayLayout

	GType function() c_gtk_overlay_layout_get_type;
	GtkLayoutManager* function() c_gtk_overlay_layout_new;

	// gtk.OverlayLayoutChild

	GType function() c_gtk_overlay_layout_child_get_type;
	int function(GtkOverlayLayoutChild* child) c_gtk_overlay_layout_child_get_clip_overlay;
	int function(GtkOverlayLayoutChild* child) c_gtk_overlay_layout_child_get_measure;
	void function(GtkOverlayLayoutChild* child, int clipOverlay) c_gtk_overlay_layout_child_set_clip_overlay;
	void function(GtkOverlayLayoutChild* child, int measure) c_gtk_overlay_layout_child_set_measure;

	// gtk.PadController

	GType function() c_gtk_pad_controller_get_type;
	GtkPadController* function(GActionGroup* group, GdkDevice* pad) c_gtk_pad_controller_new;
	void function(GtkPadController* controller, GtkPadActionType type, int index, int mode, const(char)* label, const(char)* actionName) c_gtk_pad_controller_set_action;
	void function(GtkPadController* controller, GtkPadActionEntry* entries, int nEntries) c_gtk_pad_controller_set_action_entries;

	// gtk.PageSetup

	GType function() c_gtk_page_setup_get_type;
	GtkPageSetup* function() c_gtk_page_setup_new;
	GtkPageSetup* function(char* fileName, GError** err) c_gtk_page_setup_new_from_file;
	GtkPageSetup* function(GVariant* variant) c_gtk_page_setup_new_from_gvariant;
	GtkPageSetup* function(GKeyFile* keyFile, const(char)* groupName, GError** err) c_gtk_page_setup_new_from_key_file;
	GtkPageSetup* function(GtkPageSetup* other) c_gtk_page_setup_copy;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_bottom_margin;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_left_margin;
	GtkPageOrientation function(GtkPageSetup* setup) c_gtk_page_setup_get_orientation;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_height;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_width;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_height;
	GtkPaperSize* function(GtkPageSetup* setup) c_gtk_page_setup_get_paper_size;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_width;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_right_margin;
	double function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_top_margin;
	int function(GtkPageSetup* setup, char* fileName, GError** err) c_gtk_page_setup_load_file;
	int function(GtkPageSetup* setup, GKeyFile* keyFile, const(char)* groupName, GError** err) c_gtk_page_setup_load_key_file;
	void function(GtkPageSetup* setup, double margin, GtkUnit unit) c_gtk_page_setup_set_bottom_margin;
	void function(GtkPageSetup* setup, double margin, GtkUnit unit) c_gtk_page_setup_set_left_margin;
	void function(GtkPageSetup* setup, GtkPageOrientation orientation) c_gtk_page_setup_set_orientation;
	void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size;
	void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size_and_default_margins;
	void function(GtkPageSetup* setup, double margin, GtkUnit unit) c_gtk_page_setup_set_right_margin;
	void function(GtkPageSetup* setup, double margin, GtkUnit unit) c_gtk_page_setup_set_top_margin;
	int function(GtkPageSetup* setup, char* fileName, GError** err) c_gtk_page_setup_to_file;
	GVariant* function(GtkPageSetup* setup) c_gtk_page_setup_to_gvariant;
	void function(GtkPageSetup* setup, GKeyFile* keyFile, const(char)* groupName) c_gtk_page_setup_to_key_file;

	// gtk.PageSetupUnixDialog

	GType function() c_gtk_page_setup_unix_dialog_get_type;
	GtkWidget* function(const(char)* title, GtkWindow* parent) c_gtk_page_setup_unix_dialog_new;
	GtkPageSetup* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_page_setup;
	GtkPrintSettings* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_print_settings;
	void function(GtkPageSetupUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_page_setup_unix_dialog_set_page_setup;
	void function(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* printSettings) c_gtk_page_setup_unix_dialog_set_print_settings;

	// gtk.Paned

	GType function() c_gtk_paned_get_type;
	GtkWidget* function(GtkOrientation orientation) c_gtk_paned_new;
	GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_end_child;
	int function(GtkPaned* paned) c_gtk_paned_get_position;
	int function(GtkPaned* paned) c_gtk_paned_get_resize_end_child;
	int function(GtkPaned* paned) c_gtk_paned_get_resize_start_child;
	int function(GtkPaned* paned) c_gtk_paned_get_shrink_end_child;
	int function(GtkPaned* paned) c_gtk_paned_get_shrink_start_child;
	GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_start_child;
	int function(GtkPaned* paned) c_gtk_paned_get_wide_handle;
	void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_set_end_child;
	void function(GtkPaned* paned, int position) c_gtk_paned_set_position;
	void function(GtkPaned* paned, int resize) c_gtk_paned_set_resize_end_child;
	void function(GtkPaned* paned, int resize) c_gtk_paned_set_resize_start_child;
	void function(GtkPaned* paned, int resize) c_gtk_paned_set_shrink_end_child;
	void function(GtkPaned* paned, int resize) c_gtk_paned_set_shrink_start_child;
	void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_set_start_child;
	void function(GtkPaned* paned, int wide) c_gtk_paned_set_wide_handle;

	// gtk.PaperSize

	GType function() c_gtk_paper_size_get_type;
	GtkPaperSize* function(const(char)* name) c_gtk_paper_size_new;
	GtkPaperSize* function(const(char)* name, const(char)* displayName, double width, double height, GtkUnit unit) c_gtk_paper_size_new_custom;
	GtkPaperSize* function(GVariant* variant) c_gtk_paper_size_new_from_gvariant;
	GtkPaperSize* function(const(char)* ippName, double width, double height) c_gtk_paper_size_new_from_ipp;
	GtkPaperSize* function(GKeyFile* keyFile, const(char)* groupName, GError** err) c_gtk_paper_size_new_from_key_file;
	GtkPaperSize* function(const(char)* ppdName, const(char)* ppdDisplayName, double width, double height) c_gtk_paper_size_new_from_ppd;
	GtkPaperSize* function(GtkPaperSize* other) c_gtk_paper_size_copy;
	void function(GtkPaperSize* size) c_gtk_paper_size_free;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_bottom_margin;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_left_margin;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_right_margin;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_top_margin;
	const(char)* function(GtkPaperSize* size) c_gtk_paper_size_get_display_name;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_height;
	const(char)* function(GtkPaperSize* size) c_gtk_paper_size_get_name;
	const(char)* function(GtkPaperSize* size) c_gtk_paper_size_get_ppd_name;
	double function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_width;
	int function(GtkPaperSize* size) c_gtk_paper_size_is_custom;
	int function(GtkPaperSize* size1, GtkPaperSize* size2) c_gtk_paper_size_is_equal;
	int function(GtkPaperSize* size) c_gtk_paper_size_is_ipp;
	void function(GtkPaperSize* size, double width, double height, GtkUnit unit) c_gtk_paper_size_set_size;
	GVariant* function(GtkPaperSize* paperSize) c_gtk_paper_size_to_gvariant;
	void function(GtkPaperSize* size, GKeyFile* keyFile, const(char)* groupName) c_gtk_paper_size_to_key_file;
	const(char)* function() c_gtk_paper_size_get_default;
	GList* function(int includeCustom) c_gtk_paper_size_get_paper_sizes;

	// gtk.ParamSpecExpression

	GType function() c_gtk_param_expression_get_type;

	// gtk.PasswordEntry

	GType function() c_gtk_password_entry_get_type;
	GtkWidget* function() c_gtk_password_entry_new;
	GMenuModel* function(GtkPasswordEntry* entry) c_gtk_password_entry_get_extra_menu;
	int function(GtkPasswordEntry* entry) c_gtk_password_entry_get_show_peek_icon;
	void function(GtkPasswordEntry* entry, GMenuModel* model) c_gtk_password_entry_set_extra_menu;
	void function(GtkPasswordEntry* entry, int showPeekIcon) c_gtk_password_entry_set_show_peek_icon;

	// gtk.PasswordEntryBuffer

	GType function() c_gtk_password_entry_buffer_get_type;
	GtkEntryBuffer* function() c_gtk_password_entry_buffer_new;

	// gtk.Picture

	GType function() c_gtk_picture_get_type;
	GtkWidget* function() c_gtk_picture_new;
	GtkWidget* function(GFile* file) c_gtk_picture_new_for_file;
	GtkWidget* function(char* filename) c_gtk_picture_new_for_filename;
	GtkWidget* function(GdkPaintable* paintable) c_gtk_picture_new_for_paintable;
	GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_picture_new_for_pixbuf;
	GtkWidget* function(const(char)* resourcePath) c_gtk_picture_new_for_resource;
	const(char)* function(GtkPicture* self) c_gtk_picture_get_alternative_text;
	int function(GtkPicture* self) c_gtk_picture_get_can_shrink;
	GFile* function(GtkPicture* self) c_gtk_picture_get_file;
	int function(GtkPicture* self) c_gtk_picture_get_keep_aspect_ratio;
	GdkPaintable* function(GtkPicture* self) c_gtk_picture_get_paintable;
	void function(GtkPicture* self, const(char)* alternativeText) c_gtk_picture_set_alternative_text;
	void function(GtkPicture* self, int canShrink) c_gtk_picture_set_can_shrink;
	void function(GtkPicture* self, GFile* file) c_gtk_picture_set_file;
	void function(GtkPicture* self, char* filename) c_gtk_picture_set_filename;
	void function(GtkPicture* self, int keepAspectRatio) c_gtk_picture_set_keep_aspect_ratio;
	void function(GtkPicture* self, GdkPaintable* paintable) c_gtk_picture_set_paintable;
	void function(GtkPicture* self, GdkPixbuf* pixbuf) c_gtk_picture_set_pixbuf;
	void function(GtkPicture* self, const(char)* resourcePath) c_gtk_picture_set_resource;

	// gtk.Popover

	GType function() c_gtk_popover_get_type;
	GtkWidget* function() c_gtk_popover_new;
	int function(GtkPopover* popover) c_gtk_popover_get_autohide;
	int function(GtkPopover* popover) c_gtk_popover_get_cascade_popdown;
	GtkWidget* function(GtkPopover* popover) c_gtk_popover_get_child;
	int function(GtkPopover* popover) c_gtk_popover_get_has_arrow;
	int function(GtkPopover* popover) c_gtk_popover_get_mnemonics_visible;
	void function(GtkPopover* popover, int* xOffset, int* yOffset) c_gtk_popover_get_offset;
	int function(GtkPopover* popover, GdkRectangle* rect) c_gtk_popover_get_pointing_to;
	GtkPositionType function(GtkPopover* popover) c_gtk_popover_get_position;
	void function(GtkPopover* popover) c_gtk_popover_popdown;
	void function(GtkPopover* popover) c_gtk_popover_popup;
	void function(GtkPopover* popover) c_gtk_popover_present;
	void function(GtkPopover* popover, int autohide) c_gtk_popover_set_autohide;
	void function(GtkPopover* popover, int cascadePopdown) c_gtk_popover_set_cascade_popdown;
	void function(GtkPopover* popover, GtkWidget* child) c_gtk_popover_set_child;
	void function(GtkPopover* popover, GtkWidget* widget) c_gtk_popover_set_default_widget;
	void function(GtkPopover* popover, int hasArrow) c_gtk_popover_set_has_arrow;
	void function(GtkPopover* popover, int mnemonicsVisible) c_gtk_popover_set_mnemonics_visible;
	void function(GtkPopover* popover, int xOffset, int yOffset) c_gtk_popover_set_offset;
	void function(GtkPopover* popover, GdkRectangle* rect) c_gtk_popover_set_pointing_to;
	void function(GtkPopover* popover, GtkPositionType position) c_gtk_popover_set_position;

	// gtk.PopoverMenu

	GType function() c_gtk_popover_menu_get_type;
	GtkWidget* function(GMenuModel* model) c_gtk_popover_menu_new_from_model;
	GtkWidget* function(GMenuModel* model, GtkPopoverMenuFlags flags) c_gtk_popover_menu_new_from_model_full;
	int function(GtkPopoverMenu* popover, GtkWidget* child, const(char)* id) c_gtk_popover_menu_add_child;
	GMenuModel* function(GtkPopoverMenu* popover) c_gtk_popover_menu_get_menu_model;
	int function(GtkPopoverMenu* popover, GtkWidget* child) c_gtk_popover_menu_remove_child;
	void function(GtkPopoverMenu* popover, GMenuModel* model) c_gtk_popover_menu_set_menu_model;

	// gtk.PopoverMenuBar

	GType function() c_gtk_popover_menu_bar_get_type;
	GtkWidget* function(GMenuModel* model) c_gtk_popover_menu_bar_new_from_model;
	int function(GtkPopoverMenuBar* bar, GtkWidget* child, const(char)* id) c_gtk_popover_menu_bar_add_child;
	GMenuModel* function(GtkPopoverMenuBar* bar) c_gtk_popover_menu_bar_get_menu_model;
	int function(GtkPopoverMenuBar* bar, GtkWidget* child) c_gtk_popover_menu_bar_remove_child;
	void function(GtkPopoverMenuBar* bar, GMenuModel* model) c_gtk_popover_menu_bar_set_menu_model;

	// gtk.PrintContext

	GType function() c_gtk_print_context_get_type;
	PangoContext* function(GtkPrintContext* context) c_gtk_print_context_create_pango_context;
	PangoLayout* function(GtkPrintContext* context) c_gtk_print_context_create_pango_layout;
	cairo_t* function(GtkPrintContext* context) c_gtk_print_context_get_cairo_context;
	double function(GtkPrintContext* context) c_gtk_print_context_get_dpi_x;
	double function(GtkPrintContext* context) c_gtk_print_context_get_dpi_y;
	int function(GtkPrintContext* context, double* top, double* bottom, double* left, double* right) c_gtk_print_context_get_hard_margins;
	double function(GtkPrintContext* context) c_gtk_print_context_get_height;
	GtkPageSetup* function(GtkPrintContext* context) c_gtk_print_context_get_page_setup;
	PangoFontMap* function(GtkPrintContext* context) c_gtk_print_context_get_pango_fontmap;
	double function(GtkPrintContext* context) c_gtk_print_context_get_width;
	void function(GtkPrintContext* context, cairo_t* cr, double dpiX, double dpiY) c_gtk_print_context_set_cairo_context;

	// gtk.PrintJob

	GType function() c_gtk_print_job_get_type;
	GtkPrintJob* function(const(char)* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* pageSetup) c_gtk_print_job_new;
	int function(GtkPrintJob* job) c_gtk_print_job_get_collate;
	uint function(GtkPrintJob* job) c_gtk_print_job_get_n_up;
	GtkNumberUpLayout function(GtkPrintJob* job) c_gtk_print_job_get_n_up_layout;
	int function(GtkPrintJob* job) c_gtk_print_job_get_num_copies;
	GtkPageRange* function(GtkPrintJob* job, int* nRanges) c_gtk_print_job_get_page_ranges;
	GtkPageSet function(GtkPrintJob* job) c_gtk_print_job_get_page_set;
	GtkPrintPages function(GtkPrintJob* job) c_gtk_print_job_get_pages;
	GtkPrinter* function(GtkPrintJob* job) c_gtk_print_job_get_printer;
	int function(GtkPrintJob* job) c_gtk_print_job_get_reverse;
	int function(GtkPrintJob* job) c_gtk_print_job_get_rotate;
	double function(GtkPrintJob* job) c_gtk_print_job_get_scale;
	GtkPrintSettings* function(GtkPrintJob* job) c_gtk_print_job_get_settings;
	GtkPrintStatus function(GtkPrintJob* job) c_gtk_print_job_get_status;
	cairo_surface_t* function(GtkPrintJob* job, GError** err) c_gtk_print_job_get_surface;
	const(char)* function(GtkPrintJob* job) c_gtk_print_job_get_title;
	int function(GtkPrintJob* job) c_gtk_print_job_get_track_print_status;
	void function(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, void* userData, GDestroyNotify dnotify) c_gtk_print_job_send;
	void function(GtkPrintJob* job, int collate) c_gtk_print_job_set_collate;
	void function(GtkPrintJob* job, uint nUp) c_gtk_print_job_set_n_up;
	void function(GtkPrintJob* job, GtkNumberUpLayout layout) c_gtk_print_job_set_n_up_layout;
	void function(GtkPrintJob* job, int numCopies) c_gtk_print_job_set_num_copies;
	void function(GtkPrintJob* job, GtkPageRange* ranges, int nRanges) c_gtk_print_job_set_page_ranges;
	void function(GtkPrintJob* job, GtkPageSet pageSet) c_gtk_print_job_set_page_set;
	void function(GtkPrintJob* job, GtkPrintPages pages) c_gtk_print_job_set_pages;
	void function(GtkPrintJob* job, int reverse) c_gtk_print_job_set_reverse;
	void function(GtkPrintJob* job, int rotate) c_gtk_print_job_set_rotate;
	void function(GtkPrintJob* job, double scale) c_gtk_print_job_set_scale;
	int function(GtkPrintJob* job, int fd, GError** err) c_gtk_print_job_set_source_fd;
	int function(GtkPrintJob* job, char* filename, GError** err) c_gtk_print_job_set_source_file;
	void function(GtkPrintJob* job, int trackStatus) c_gtk_print_job_set_track_print_status;

	// gtk.PrintOperation

	GType function() c_gtk_print_operation_get_type;
	GtkPrintOperation* function() c_gtk_print_operation_new;
	void function(GtkPrintOperation* op) c_gtk_print_operation_cancel;
	void function(GtkPrintOperation* op) c_gtk_print_operation_draw_page_finish;
	GtkPageSetup* function(GtkPrintOperation* op) c_gtk_print_operation_get_default_page_setup;
	int function(GtkPrintOperation* op) c_gtk_print_operation_get_embed_page_setup;
	void function(GtkPrintOperation* op, GError** err) c_gtk_print_operation_get_error;
	int function(GtkPrintOperation* op) c_gtk_print_operation_get_has_selection;
	int function(GtkPrintOperation* op) c_gtk_print_operation_get_n_pages_to_print;
	GtkPrintSettings* function(GtkPrintOperation* op) c_gtk_print_operation_get_print_settings;
	GtkPrintStatus function(GtkPrintOperation* op) c_gtk_print_operation_get_status;
	const(char)* function(GtkPrintOperation* op) c_gtk_print_operation_get_status_string;
	int function(GtkPrintOperation* op) c_gtk_print_operation_get_support_selection;
	int function(GtkPrintOperation* op) c_gtk_print_operation_is_finished;
	GtkPrintOperationResult function(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent, GError** err) c_gtk_print_operation_run;
	void function(GtkPrintOperation* op, int allowAsync) c_gtk_print_operation_set_allow_async;
	void function(GtkPrintOperation* op, int currentPage) c_gtk_print_operation_set_current_page;
	void function(GtkPrintOperation* op, const(char)* label) c_gtk_print_operation_set_custom_tab_label;
	void function(GtkPrintOperation* op, GtkPageSetup* defaultPageSetup) c_gtk_print_operation_set_default_page_setup;
	void function(GtkPrintOperation* op) c_gtk_print_operation_set_defer_drawing;
	void function(GtkPrintOperation* op, int embed) c_gtk_print_operation_set_embed_page_setup;
	void function(GtkPrintOperation* op, char* filename) c_gtk_print_operation_set_export_filename;
	void function(GtkPrintOperation* op, int hasSelection) c_gtk_print_operation_set_has_selection;
	void function(GtkPrintOperation* op, const(char)* jobName) c_gtk_print_operation_set_job_name;
	void function(GtkPrintOperation* op, int nPages) c_gtk_print_operation_set_n_pages;
	void function(GtkPrintOperation* op, GtkPrintSettings* printSettings) c_gtk_print_operation_set_print_settings;
	void function(GtkPrintOperation* op, int showProgress) c_gtk_print_operation_set_show_progress;
	void function(GtkPrintOperation* op, int supportSelection) c_gtk_print_operation_set_support_selection;
	void function(GtkPrintOperation* op, int trackStatus) c_gtk_print_operation_set_track_print_status;
	void function(GtkPrintOperation* op, GtkUnit unit) c_gtk_print_operation_set_unit;
	void function(GtkPrintOperation* op, int fullPage) c_gtk_print_operation_set_use_full_page;

	// gtk.PrintOperationPreview

	GType function() c_gtk_print_operation_preview_get_type;
	void function(GtkPrintOperationPreview* preview) c_gtk_print_operation_preview_end_preview;
	int function(GtkPrintOperationPreview* preview, int pageNr) c_gtk_print_operation_preview_is_selected;
	void function(GtkPrintOperationPreview* preview, int pageNr) c_gtk_print_operation_preview_render_page;

	// gtk.PrintSettings

	GType function() c_gtk_print_settings_get_type;
	GtkPrintSettings* function() c_gtk_print_settings_new;
	GtkPrintSettings* function(char* fileName, GError** err) c_gtk_print_settings_new_from_file;
	GtkPrintSettings* function(GVariant* variant) c_gtk_print_settings_new_from_gvariant;
	GtkPrintSettings* function(GKeyFile* keyFile, const(char)* groupName, GError** err) c_gtk_print_settings_new_from_key_file;
	GtkPrintSettings* function(GtkPrintSettings* other) c_gtk_print_settings_copy;
	void function(GtkPrintSettings* settings, GtkPrintSettingsFunc func, void* userData) c_gtk_print_settings_foreach;
	const(char)* function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_get;
	int function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_get_bool;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_collate;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_default_source;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_dither;
	double function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_get_double;
	double function(GtkPrintSettings* settings, const(char)* key, double def) c_gtk_print_settings_get_double_with_default;
	GtkPrintDuplex function(GtkPrintSettings* settings) c_gtk_print_settings_get_duplex;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_finishings;
	int function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_get_int;
	int function(GtkPrintSettings* settings, const(char)* key, int def) c_gtk_print_settings_get_int_with_default;
	double function(GtkPrintSettings* settings, const(char)* key, GtkUnit unit) c_gtk_print_settings_get_length;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_media_type;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_n_copies;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up;
	GtkNumberUpLayout function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up_layout;
	GtkPageOrientation function(GtkPrintSettings* settings) c_gtk_print_settings_get_orientation;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_output_bin;
	GtkPageRange* function(GtkPrintSettings* settings, int* numRanges) c_gtk_print_settings_get_page_ranges;
	GtkPageSet function(GtkPrintSettings* settings) c_gtk_print_settings_get_page_set;
	double function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_height;
	GtkPaperSize* function(GtkPrintSettings* settings) c_gtk_print_settings_get_paper_size;
	double function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_width;
	GtkPrintPages function(GtkPrintSettings* settings) c_gtk_print_settings_get_print_pages;
	const(char)* function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer;
	double function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer_lpi;
	GtkPrintQuality function(GtkPrintSettings* settings) c_gtk_print_settings_get_quality;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_x;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_y;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_reverse;
	double function(GtkPrintSettings* settings) c_gtk_print_settings_get_scale;
	int function(GtkPrintSettings* settings) c_gtk_print_settings_get_use_color;
	int function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_has_key;
	int function(GtkPrintSettings* settings, char* fileName, GError** err) c_gtk_print_settings_load_file;
	int function(GtkPrintSettings* settings, GKeyFile* keyFile, const(char)* groupName, GError** err) c_gtk_print_settings_load_key_file;
	void function(GtkPrintSettings* settings, const(char)* key, const(char)* value) c_gtk_print_settings_set;
	void function(GtkPrintSettings* settings, const(char)* key, int value) c_gtk_print_settings_set_bool;
	void function(GtkPrintSettings* settings, int collate) c_gtk_print_settings_set_collate;
	void function(GtkPrintSettings* settings, const(char)* defaultSource) c_gtk_print_settings_set_default_source;
	void function(GtkPrintSettings* settings, const(char)* dither) c_gtk_print_settings_set_dither;
	void function(GtkPrintSettings* settings, const(char)* key, double value) c_gtk_print_settings_set_double;
	void function(GtkPrintSettings* settings, GtkPrintDuplex duplex) c_gtk_print_settings_set_duplex;
	void function(GtkPrintSettings* settings, const(char)* finishings) c_gtk_print_settings_set_finishings;
	void function(GtkPrintSettings* settings, const(char)* key, int value) c_gtk_print_settings_set_int;
	void function(GtkPrintSettings* settings, const(char)* key, double value, GtkUnit unit) c_gtk_print_settings_set_length;
	void function(GtkPrintSettings* settings, const(char)* mediaType) c_gtk_print_settings_set_media_type;
	void function(GtkPrintSettings* settings, int numCopies) c_gtk_print_settings_set_n_copies;
	void function(GtkPrintSettings* settings, int numberUp) c_gtk_print_settings_set_number_up;
	void function(GtkPrintSettings* settings, GtkNumberUpLayout numberUpLayout) c_gtk_print_settings_set_number_up_layout;
	void function(GtkPrintSettings* settings, GtkPageOrientation orientation) c_gtk_print_settings_set_orientation;
	void function(GtkPrintSettings* settings, const(char)* outputBin) c_gtk_print_settings_set_output_bin;
	void function(GtkPrintSettings* settings, GtkPageRange* pageRanges, int numRanges) c_gtk_print_settings_set_page_ranges;
	void function(GtkPrintSettings* settings, GtkPageSet pageSet) c_gtk_print_settings_set_page_set;
	void function(GtkPrintSettings* settings, double height, GtkUnit unit) c_gtk_print_settings_set_paper_height;
	void function(GtkPrintSettings* settings, GtkPaperSize* paperSize) c_gtk_print_settings_set_paper_size;
	void function(GtkPrintSettings* settings, double width, GtkUnit unit) c_gtk_print_settings_set_paper_width;
	void function(GtkPrintSettings* settings, GtkPrintPages pages) c_gtk_print_settings_set_print_pages;
	void function(GtkPrintSettings* settings, const(char)* printer) c_gtk_print_settings_set_printer;
	void function(GtkPrintSettings* settings, double lpi) c_gtk_print_settings_set_printer_lpi;
	void function(GtkPrintSettings* settings, GtkPrintQuality quality) c_gtk_print_settings_set_quality;
	void function(GtkPrintSettings* settings, int resolution) c_gtk_print_settings_set_resolution;
	void function(GtkPrintSettings* settings, int resolutionX, int resolutionY) c_gtk_print_settings_set_resolution_xy;
	void function(GtkPrintSettings* settings, int reverse) c_gtk_print_settings_set_reverse;
	void function(GtkPrintSettings* settings, double scale) c_gtk_print_settings_set_scale;
	void function(GtkPrintSettings* settings, int useColor) c_gtk_print_settings_set_use_color;
	int function(GtkPrintSettings* settings, char* fileName, GError** err) c_gtk_print_settings_to_file;
	GVariant* function(GtkPrintSettings* settings) c_gtk_print_settings_to_gvariant;
	void function(GtkPrintSettings* settings, GKeyFile* keyFile, const(char)* groupName) c_gtk_print_settings_to_key_file;
	void function(GtkPrintSettings* settings, const(char)* key) c_gtk_print_settings_unset;

	// gtk.PrintUnixDialog

	GType function() c_gtk_print_unix_dialog_get_type;
	GtkWidget* function(const(char)* title, GtkWindow* parent) c_gtk_print_unix_dialog_new;
	void function(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tabLabel) c_gtk_print_unix_dialog_add_custom_tab;
	int function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_current_page;
	int function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_embed_page_setup;
	int function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_has_selection;
	GtkPrintCapabilities function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_manual_capabilities;
	GtkPageSetup* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_page_setup;
	int function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_page_setup_set;
	GtkPrinter* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_selected_printer;
	GtkPrintSettings* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_settings;
	int function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_support_selection;
	void function(GtkPrintUnixDialog* dialog, int currentPage) c_gtk_print_unix_dialog_set_current_page;
	void function(GtkPrintUnixDialog* dialog, int embed) c_gtk_print_unix_dialog_set_embed_page_setup;
	void function(GtkPrintUnixDialog* dialog, int hasSelection) c_gtk_print_unix_dialog_set_has_selection;
	void function(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities) c_gtk_print_unix_dialog_set_manual_capabilities;
	void function(GtkPrintUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_print_unix_dialog_set_page_setup;
	void function(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings) c_gtk_print_unix_dialog_set_settings;
	void function(GtkPrintUnixDialog* dialog, int supportSelection) c_gtk_print_unix_dialog_set_support_selection;

	// gtk.Printer

	GType function() c_gtk_printer_get_type;
	GtkPrinter* function(const(char)* name, GtkPrintBackend* backend, int virtual) c_gtk_printer_new;
	int function(GtkPrinter* printer) c_gtk_printer_accepts_pdf;
	int function(GtkPrinter* printer) c_gtk_printer_accepts_ps;
	int function(GtkPrinter* a, GtkPrinter* b) c_gtk_printer_compare;
	GtkPrintBackend* function(GtkPrinter* printer) c_gtk_printer_get_backend;
	GtkPrintCapabilities function(GtkPrinter* printer) c_gtk_printer_get_capabilities;
	GtkPageSetup* function(GtkPrinter* printer) c_gtk_printer_get_default_page_size;
	const(char)* function(GtkPrinter* printer) c_gtk_printer_get_description;
	int function(GtkPrinter* printer, double* top, double* bottom, double* left, double* right) c_gtk_printer_get_hard_margins;
	int function(GtkPrinter* printer, GtkPaperSize* paperSize, double* top, double* bottom, double* left, double* right) c_gtk_printer_get_hard_margins_for_paper_size;
	const(char)* function(GtkPrinter* printer) c_gtk_printer_get_icon_name;
	int function(GtkPrinter* printer) c_gtk_printer_get_job_count;
	const(char)* function(GtkPrinter* printer) c_gtk_printer_get_location;
	const(char)* function(GtkPrinter* printer) c_gtk_printer_get_name;
	const(char)* function(GtkPrinter* printer) c_gtk_printer_get_state_message;
	int function(GtkPrinter* printer) c_gtk_printer_has_details;
	int function(GtkPrinter* printer) c_gtk_printer_is_accepting_jobs;
	int function(GtkPrinter* printer) c_gtk_printer_is_active;
	int function(GtkPrinter* printer) c_gtk_printer_is_default;
	int function(GtkPrinter* printer) c_gtk_printer_is_paused;
	int function(GtkPrinter* printer) c_gtk_printer_is_virtual;
	GList* function(GtkPrinter* printer) c_gtk_printer_list_papers;
	void function(GtkPrinter* printer) c_gtk_printer_request_details;

	// gtk.ProgressBar

	GType function() c_gtk_progress_bar_get_type;
	GtkWidget* function() c_gtk_progress_bar_new;
	PangoEllipsizeMode function(GtkProgressBar* pbar) c_gtk_progress_bar_get_ellipsize;
	double function(GtkProgressBar* pbar) c_gtk_progress_bar_get_fraction;
	int function(GtkProgressBar* pbar) c_gtk_progress_bar_get_inverted;
	double function(GtkProgressBar* pbar) c_gtk_progress_bar_get_pulse_step;
	int function(GtkProgressBar* pbar) c_gtk_progress_bar_get_show_text;
	const(char)* function(GtkProgressBar* pbar) c_gtk_progress_bar_get_text;
	void function(GtkProgressBar* pbar) c_gtk_progress_bar_pulse;
	void function(GtkProgressBar* pbar, PangoEllipsizeMode mode) c_gtk_progress_bar_set_ellipsize;
	void function(GtkProgressBar* pbar, double fraction) c_gtk_progress_bar_set_fraction;
	void function(GtkProgressBar* pbar, int inverted) c_gtk_progress_bar_set_inverted;
	void function(GtkProgressBar* pbar, double fraction) c_gtk_progress_bar_set_pulse_step;
	void function(GtkProgressBar* pbar, int showText) c_gtk_progress_bar_set_show_text;
	void function(GtkProgressBar* pbar, const(char)* text) c_gtk_progress_bar_set_text;

	// gtk.PropertyExpression

	GType function() c_gtk_property_expression_get_type;
	GtkExpression* function(GType thisType, GtkExpression* expression, const(char)* propertyName) c_gtk_property_expression_new;
	GtkExpression* function(GtkExpression* expression, GParamSpec* pspec) c_gtk_property_expression_new_for_pspec;
	GtkExpression* function(GtkExpression* expression) c_gtk_property_expression_get_expression;
	GParamSpec* function(GtkExpression* expression) c_gtk_property_expression_get_pspec;

	// gtk.Range

	GType function() c_gtk_range_get_type;
	GtkAdjustment* function(GtkRange* range) c_gtk_range_get_adjustment;
	double function(GtkRange* range) c_gtk_range_get_fill_level;
	int function(GtkRange* range) c_gtk_range_get_flippable;
	int function(GtkRange* range) c_gtk_range_get_inverted;
	void function(GtkRange* range, GdkRectangle* rangeRect) c_gtk_range_get_range_rect;
	int function(GtkRange* range) c_gtk_range_get_restrict_to_fill_level;
	int function(GtkRange* range) c_gtk_range_get_round_digits;
	int function(GtkRange* range) c_gtk_range_get_show_fill_level;
	void function(GtkRange* range, int* sliderStart, int* sliderEnd) c_gtk_range_get_slider_range;
	int function(GtkRange* range) c_gtk_range_get_slider_size_fixed;
	double function(GtkRange* range) c_gtk_range_get_value;
	void function(GtkRange* range, GtkAdjustment* adjustment) c_gtk_range_set_adjustment;
	void function(GtkRange* range, double fillLevel) c_gtk_range_set_fill_level;
	void function(GtkRange* range, int flippable) c_gtk_range_set_flippable;
	void function(GtkRange* range, double step, double page) c_gtk_range_set_increments;
	void function(GtkRange* range, int setting) c_gtk_range_set_inverted;
	void function(GtkRange* range, double min, double max) c_gtk_range_set_range;
	void function(GtkRange* range, int restrictToFillLevel) c_gtk_range_set_restrict_to_fill_level;
	void function(GtkRange* range, int roundDigits) c_gtk_range_set_round_digits;
	void function(GtkRange* range, int showFillLevel) c_gtk_range_set_show_fill_level;
	void function(GtkRange* range, int sizeFixed) c_gtk_range_set_slider_size_fixed;
	void function(GtkRange* range, double value) c_gtk_range_set_value;

	// gtk.RecentInfo

	GType function() c_gtk_recent_info_get_type;
	GAppInfo* function(GtkRecentInfo* info, const(char)* appName, GError** err) c_gtk_recent_info_create_app_info;
	int function(GtkRecentInfo* info) c_gtk_recent_info_exists;
	GDateTime* function(GtkRecentInfo* info) c_gtk_recent_info_get_added;
	int function(GtkRecentInfo* info) c_gtk_recent_info_get_age;
	int function(GtkRecentInfo* info, const(char)* appName, char** appExec, uint* count, GDateTime** stamp) c_gtk_recent_info_get_application_info;
	char** function(GtkRecentInfo* info, size_t* length) c_gtk_recent_info_get_applications;
	const(char)* function(GtkRecentInfo* info) c_gtk_recent_info_get_description;
	const(char)* function(GtkRecentInfo* info) c_gtk_recent_info_get_display_name;
	GIcon* function(GtkRecentInfo* info) c_gtk_recent_info_get_gicon;
	char** function(GtkRecentInfo* info, size_t* length) c_gtk_recent_info_get_groups;
	const(char)* function(GtkRecentInfo* info) c_gtk_recent_info_get_mime_type;
	GDateTime* function(GtkRecentInfo* info) c_gtk_recent_info_get_modified;
	int function(GtkRecentInfo* info) c_gtk_recent_info_get_private_hint;
	char* function(GtkRecentInfo* info) c_gtk_recent_info_get_short_name;
	const(char)* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri;
	char* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri_display;
	GDateTime* function(GtkRecentInfo* info) c_gtk_recent_info_get_visited;
	int function(GtkRecentInfo* info, const(char)* appName) c_gtk_recent_info_has_application;
	int function(GtkRecentInfo* info, const(char)* groupName) c_gtk_recent_info_has_group;
	int function(GtkRecentInfo* info) c_gtk_recent_info_is_local;
	char* function(GtkRecentInfo* info) c_gtk_recent_info_last_application;
	int function(GtkRecentInfo* infoA, GtkRecentInfo* infoB) c_gtk_recent_info_match;
	GtkRecentInfo* function(GtkRecentInfo* info) c_gtk_recent_info_ref;
	void function(GtkRecentInfo* info) c_gtk_recent_info_unref;

	// gtk.RecentManager

	GType function() c_gtk_recent_manager_get_type;
	GtkRecentManager* function() c_gtk_recent_manager_new;
	GtkRecentManager* function() c_gtk_recent_manager_get_default;
	int function(GtkRecentManager* manager, const(char)* uri, GtkRecentData* recentData) c_gtk_recent_manager_add_full;
	int function(GtkRecentManager* manager, const(char)* uri) c_gtk_recent_manager_add_item;
	GList* function(GtkRecentManager* manager) c_gtk_recent_manager_get_items;
	int function(GtkRecentManager* manager, const(char)* uri) c_gtk_recent_manager_has_item;
	GtkRecentInfo* function(GtkRecentManager* manager, const(char)* uri, GError** err) c_gtk_recent_manager_lookup_item;
	int function(GtkRecentManager* manager, const(char)* uri, const(char)* newUri, GError** err) c_gtk_recent_manager_move_item;
	int function(GtkRecentManager* manager, GError** err) c_gtk_recent_manager_purge_items;
	int function(GtkRecentManager* manager, const(char)* uri, GError** err) c_gtk_recent_manager_remove_item;

	// gtk.Requisition

	GType function() c_gtk_requisition_get_type;
	GtkRequisition* function() c_gtk_requisition_new;
	GtkRequisition* function(GtkRequisition* requisition) c_gtk_requisition_copy;
	void function(GtkRequisition* requisition) c_gtk_requisition_free;

	// gtk.Revealer

	GType function() c_gtk_revealer_get_type;
	GtkWidget* function() c_gtk_revealer_new;
	GtkWidget* function(GtkRevealer* revealer) c_gtk_revealer_get_child;
	int function(GtkRevealer* revealer) c_gtk_revealer_get_child_revealed;
	int function(GtkRevealer* revealer) c_gtk_revealer_get_reveal_child;
	uint function(GtkRevealer* revealer) c_gtk_revealer_get_transition_duration;
	GtkRevealerTransitionType function(GtkRevealer* revealer) c_gtk_revealer_get_transition_type;
	void function(GtkRevealer* revealer, GtkWidget* child) c_gtk_revealer_set_child;
	void function(GtkRevealer* revealer, int revealChild) c_gtk_revealer_set_reveal_child;
	void function(GtkRevealer* revealer, uint duration) c_gtk_revealer_set_transition_duration;
	void function(GtkRevealer* revealer, GtkRevealerTransitionType transition) c_gtk_revealer_set_transition_type;

	// gtk.Root

	GType function() c_gtk_root_get_type;
	GdkDisplay* function(GtkRoot* self) c_gtk_root_get_display;
	GtkWidget* function(GtkRoot* self) c_gtk_root_get_focus;
	void function(GtkRoot* self, GtkWidget* focus) c_gtk_root_set_focus;

	// gtk.Scale

	GType function() c_gtk_scale_get_type;
	GtkWidget* function(GtkOrientation orientation, GtkAdjustment* adjustment) c_gtk_scale_new;
	GtkWidget* function(GtkOrientation orientation, double min, double max, double step) c_gtk_scale_new_with_range;
	void function(GtkScale* scale, double value, GtkPositionType position, const(char)* markup) c_gtk_scale_add_mark;
	void function(GtkScale* scale) c_gtk_scale_clear_marks;
	int function(GtkScale* scale) c_gtk_scale_get_digits;
	int function(GtkScale* scale) c_gtk_scale_get_draw_value;
	int function(GtkScale* scale) c_gtk_scale_get_has_origin;
	PangoLayout* function(GtkScale* scale) c_gtk_scale_get_layout;
	void function(GtkScale* scale, int* x, int* y) c_gtk_scale_get_layout_offsets;
	GtkPositionType function(GtkScale* scale) c_gtk_scale_get_value_pos;
	void function(GtkScale* scale, int digits) c_gtk_scale_set_digits;
	void function(GtkScale* scale, int drawValue) c_gtk_scale_set_draw_value;
	void function(GtkScale* scale, GtkScaleFormatValueFunc func, void* userData, GDestroyNotify destroyNotify) c_gtk_scale_set_format_value_func;
	void function(GtkScale* scale, int hasOrigin) c_gtk_scale_set_has_origin;
	void function(GtkScale* scale, GtkPositionType pos) c_gtk_scale_set_value_pos;

	// gtk.ScaleButton

	GType function() c_gtk_scale_button_get_type;
	GtkWidget* function(double min, double max, double step, char** icons) c_gtk_scale_button_new;
	GtkAdjustment* function(GtkScaleButton* button) c_gtk_scale_button_get_adjustment;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_minus_button;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_plus_button;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_popup;
	double function(GtkScaleButton* button) c_gtk_scale_button_get_value;
	void function(GtkScaleButton* button, GtkAdjustment* adjustment) c_gtk_scale_button_set_adjustment;
	void function(GtkScaleButton* button, char** icons) c_gtk_scale_button_set_icons;
	void function(GtkScaleButton* button, double value) c_gtk_scale_button_set_value;

	// gtk.Scrollable

	GType function() c_gtk_scrollable_get_type;
	int function(GtkScrollable* scrollable, GtkBorder* border) c_gtk_scrollable_get_border;
	GtkAdjustment* function(GtkScrollable* scrollable) c_gtk_scrollable_get_hadjustment;
	GtkScrollablePolicy function(GtkScrollable* scrollable) c_gtk_scrollable_get_hscroll_policy;
	GtkAdjustment* function(GtkScrollable* scrollable) c_gtk_scrollable_get_vadjustment;
	GtkScrollablePolicy function(GtkScrollable* scrollable) c_gtk_scrollable_get_vscroll_policy;
	void function(GtkScrollable* scrollable, GtkAdjustment* hadjustment) c_gtk_scrollable_set_hadjustment;
	void function(GtkScrollable* scrollable, GtkScrollablePolicy policy) c_gtk_scrollable_set_hscroll_policy;
	void function(GtkScrollable* scrollable, GtkAdjustment* vadjustment) c_gtk_scrollable_set_vadjustment;
	void function(GtkScrollable* scrollable, GtkScrollablePolicy policy) c_gtk_scrollable_set_vscroll_policy;

	// gtk.Scrollbar

	GType function() c_gtk_scrollbar_get_type;
	GtkWidget* function(GtkOrientation orientation, GtkAdjustment* adjustment) c_gtk_scrollbar_new;
	GtkAdjustment* function(GtkScrollbar* self) c_gtk_scrollbar_get_adjustment;
	void function(GtkScrollbar* self, GtkAdjustment* adjustment) c_gtk_scrollbar_set_adjustment;

	// gtk.ScrolledWindow

	GType function() c_gtk_scrolled_window_get_type;
	GtkWidget* function() c_gtk_scrolled_window_new;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_child;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hadjustment;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_has_frame;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hscrollbar;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_kinetic_scrolling;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_max_content_height;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_max_content_width;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_min_content_height;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_min_content_width;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_overlay_scrolling;
	GtkCornerType function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType* hscrollbarPolicy, GtkPolicyType* vscrollbarPolicy) c_gtk_scrolled_window_get_policy;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_propagate_natural_height;
	int function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_propagate_natural_width;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vadjustment;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vscrollbar;
	void function(GtkScrolledWindow* scrolledWindow, GtkWidget* child) c_gtk_scrolled_window_set_child;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment) c_gtk_scrolled_window_set_hadjustment;
	void function(GtkScrolledWindow* scrolledWindow, int hasFrame) c_gtk_scrolled_window_set_has_frame;
	void function(GtkScrolledWindow* scrolledWindow, int kineticScrolling) c_gtk_scrolled_window_set_kinetic_scrolling;
	void function(GtkScrolledWindow* scrolledWindow, int height) c_gtk_scrolled_window_set_max_content_height;
	void function(GtkScrolledWindow* scrolledWindow, int width) c_gtk_scrolled_window_set_max_content_width;
	void function(GtkScrolledWindow* scrolledWindow, int height) c_gtk_scrolled_window_set_min_content_height;
	void function(GtkScrolledWindow* scrolledWindow, int width) c_gtk_scrolled_window_set_min_content_width;
	void function(GtkScrolledWindow* scrolledWindow, int overlayScrolling) c_gtk_scrolled_window_set_overlay_scrolling;
	void function(GtkScrolledWindow* scrolledWindow, GtkCornerType windowPlacement) c_gtk_scrolled_window_set_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy) c_gtk_scrolled_window_set_policy;
	void function(GtkScrolledWindow* scrolledWindow, int propagate) c_gtk_scrolled_window_set_propagate_natural_height;
	void function(GtkScrolledWindow* scrolledWindow, int propagate) c_gtk_scrolled_window_set_propagate_natural_width;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment) c_gtk_scrolled_window_set_vadjustment;
	void function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_unset_placement;

	// gtk.SearchBar

	GType function() c_gtk_search_bar_get_type;
	GtkWidget* function() c_gtk_search_bar_new;
	void function(GtkSearchBar* bar, GtkEditable* entry) c_gtk_search_bar_connect_entry;
	GtkWidget* function(GtkSearchBar* bar) c_gtk_search_bar_get_child;
	GtkWidget* function(GtkSearchBar* bar) c_gtk_search_bar_get_key_capture_widget;
	int function(GtkSearchBar* bar) c_gtk_search_bar_get_search_mode;
	int function(GtkSearchBar* bar) c_gtk_search_bar_get_show_close_button;
	void function(GtkSearchBar* bar, GtkWidget* child) c_gtk_search_bar_set_child;
	void function(GtkSearchBar* bar, GtkWidget* widget) c_gtk_search_bar_set_key_capture_widget;
	void function(GtkSearchBar* bar, int searchMode) c_gtk_search_bar_set_search_mode;
	void function(GtkSearchBar* bar, int visible) c_gtk_search_bar_set_show_close_button;

	// gtk.SearchEntry

	GType function() c_gtk_search_entry_get_type;
	GtkWidget* function() c_gtk_search_entry_new;
	GtkWidget* function(GtkSearchEntry* entry) c_gtk_search_entry_get_key_capture_widget;
	void function(GtkSearchEntry* entry, GtkWidget* widget) c_gtk_search_entry_set_key_capture_widget;

	// gtk.SelectionFilterModel

	GType function() c_gtk_selection_filter_model_get_type;
	GtkSelectionFilterModel* function(GtkSelectionModel* model) c_gtk_selection_filter_model_new;
	GtkSelectionModel* function(GtkSelectionFilterModel* self) c_gtk_selection_filter_model_get_model;
	void function(GtkSelectionFilterModel* self, GtkSelectionModel* model) c_gtk_selection_filter_model_set_model;

	// gtk.SelectionModel

	GType function() c_gtk_selection_model_get_type;
	GtkBitset* function(GtkSelectionModel* model) c_gtk_selection_model_get_selection;
	GtkBitset* function(GtkSelectionModel* model, uint position, uint nItems) c_gtk_selection_model_get_selection_in_range;
	int function(GtkSelectionModel* model, uint position) c_gtk_selection_model_is_selected;
	int function(GtkSelectionModel* model) c_gtk_selection_model_select_all;
	int function(GtkSelectionModel* model, uint position, int unselectRest) c_gtk_selection_model_select_item;
	int function(GtkSelectionModel* model, uint position, uint nItems, int unselectRest) c_gtk_selection_model_select_range;
	void function(GtkSelectionModel* model, uint position, uint nItems) c_gtk_selection_model_selection_changed;
	int function(GtkSelectionModel* model, GtkBitset* selected, GtkBitset* mask) c_gtk_selection_model_set_selection;
	int function(GtkSelectionModel* model) c_gtk_selection_model_unselect_all;
	int function(GtkSelectionModel* model, uint position) c_gtk_selection_model_unselect_item;
	int function(GtkSelectionModel* model, uint position, uint nItems) c_gtk_selection_model_unselect_range;

	// gtk.Separator

	GType function() c_gtk_separator_get_type;
	GtkWidget* function(GtkOrientation orientation) c_gtk_separator_new;

	// gtk.Settings

	GType function() c_gtk_settings_get_type;
	GtkSettings* function() c_gtk_settings_get_default;
	GtkSettings* function(GdkDisplay* display) c_gtk_settings_get_for_display;
	void function(GtkSettings* settings, const(char)* name) c_gtk_settings_reset_property;

	// gtk.Shortcut

	GType function() c_gtk_shortcut_get_type;
	GtkShortcut* function(GtkShortcutTrigger* trigger, GtkShortcutAction* action) c_gtk_shortcut_new;
	GtkShortcut* function(GtkShortcutTrigger* trigger, GtkShortcutAction* action, const(char)* formatString, ... ) c_gtk_shortcut_new_with_arguments;
	GtkShortcutAction* function(GtkShortcut* self) c_gtk_shortcut_get_action;
	GVariant* function(GtkShortcut* self) c_gtk_shortcut_get_arguments;
	GtkShortcutTrigger* function(GtkShortcut* self) c_gtk_shortcut_get_trigger;
	void function(GtkShortcut* self, GtkShortcutAction* action) c_gtk_shortcut_set_action;
	void function(GtkShortcut* self, GVariant* args) c_gtk_shortcut_set_arguments;
	void function(GtkShortcut* self, GtkShortcutTrigger* trigger) c_gtk_shortcut_set_trigger;

	// gtk.ShortcutAction

	GType function() c_gtk_shortcut_action_get_type;
	GtkShortcutAction* function(const(char)* string_) c_gtk_shortcut_action_parse_string;
	int function(GtkShortcutAction* self, GtkShortcutActionFlags flags, GtkWidget* widget, GVariant* args) c_gtk_shortcut_action_activate;
	void function(GtkShortcutAction* self, GString* string_) c_gtk_shortcut_action_print;
	char* function(GtkShortcutAction* self) c_gtk_shortcut_action_to_string;

	// gtk.ShortcutController

	GType function() c_gtk_shortcut_controller_get_type;
	GtkEventController* function() c_gtk_shortcut_controller_new;
	GtkEventController* function(GListModel* model) c_gtk_shortcut_controller_new_for_model;
	void function(GtkShortcutController* self, GtkShortcut* shortcut) c_gtk_shortcut_controller_add_shortcut;
	GdkModifierType function(GtkShortcutController* self) c_gtk_shortcut_controller_get_mnemonics_modifiers;
	GtkShortcutScope function(GtkShortcutController* self) c_gtk_shortcut_controller_get_scope;
	void function(GtkShortcutController* self, GtkShortcut* shortcut) c_gtk_shortcut_controller_remove_shortcut;
	void function(GtkShortcutController* self, GdkModifierType modifiers) c_gtk_shortcut_controller_set_mnemonics_modifiers;
	void function(GtkShortcutController* self, GtkShortcutScope scope_) c_gtk_shortcut_controller_set_scope;

	// gtk.ShortcutLabel

	GType function() c_gtk_shortcut_label_get_type;
	GtkWidget* function(const(char)* accelerator) c_gtk_shortcut_label_new;
	const(char)* function(GtkShortcutLabel* self) c_gtk_shortcut_label_get_accelerator;
	const(char)* function(GtkShortcutLabel* self) c_gtk_shortcut_label_get_disabled_text;
	void function(GtkShortcutLabel* self, const(char)* accelerator) c_gtk_shortcut_label_set_accelerator;
	void function(GtkShortcutLabel* self, const(char)* disabledText) c_gtk_shortcut_label_set_disabled_text;

	// gtk.ShortcutManager

	GType function() c_gtk_shortcut_manager_get_type;

	// gtk.ShortcutTrigger

	GType function() c_gtk_shortcut_trigger_get_type;
	GtkShortcutTrigger* function(const(char)* string_) c_gtk_shortcut_trigger_parse_string;
	int function(void* trigger1, void* trigger2) c_gtk_shortcut_trigger_compare;
	int function(void* trigger1, void* trigger2) c_gtk_shortcut_trigger_equal;
	uint function(void* trigger) c_gtk_shortcut_trigger_hash;
	void function(GtkShortcutTrigger* self, GString* string_) c_gtk_shortcut_trigger_print;
	int function(GtkShortcutTrigger* self, GdkDisplay* display, GString* string_) c_gtk_shortcut_trigger_print_label;
	char* function(GtkShortcutTrigger* self, GdkDisplay* display) c_gtk_shortcut_trigger_to_label;
	char* function(GtkShortcutTrigger* self) c_gtk_shortcut_trigger_to_string;
	GdkKeyMatch function(GtkShortcutTrigger* self, GdkEvent* event, int enableMnemonics) c_gtk_shortcut_trigger_trigger;

	// gtk.ShortcutsGroup

	GType function() c_gtk_shortcuts_group_get_type;

	// gtk.ShortcutsSection

	GType function() c_gtk_shortcuts_section_get_type;

	// gtk.ShortcutsShortcut

	GType function() c_gtk_shortcuts_shortcut_get_type;

	// gtk.ShortcutsWindow

	GType function() c_gtk_shortcuts_window_get_type;

	// gtk.SignalAction

	GType function() c_gtk_signal_action_get_type;
	GtkShortcutAction* function(const(char)* signalName) c_gtk_signal_action_new;
	const(char)* function(GtkSignalAction* self) c_gtk_signal_action_get_signal_name;

	// gtk.SignalListItemFactory

	GType function() c_gtk_signal_list_item_factory_get_type;
	GtkListItemFactory* function() c_gtk_signal_list_item_factory_new;

	// gtk.SingleSelection

	GType function() c_gtk_single_selection_get_type;
	GtkSingleSelection* function(GListModel* model) c_gtk_single_selection_new;
	int function(GtkSingleSelection* self) c_gtk_single_selection_get_autoselect;
	int function(GtkSingleSelection* self) c_gtk_single_selection_get_can_unselect;
	GListModel* function(GtkSingleSelection* self) c_gtk_single_selection_get_model;
	uint function(GtkSingleSelection* self) c_gtk_single_selection_get_selected;
	void* function(GtkSingleSelection* self) c_gtk_single_selection_get_selected_item;
	void function(GtkSingleSelection* self, int autoselect) c_gtk_single_selection_set_autoselect;
	void function(GtkSingleSelection* self, int canUnselect) c_gtk_single_selection_set_can_unselect;
	void function(GtkSingleSelection* self, GListModel* model) c_gtk_single_selection_set_model;
	void function(GtkSingleSelection* self, uint position) c_gtk_single_selection_set_selected;

	// gtk.SizeGroup

	GType function() c_gtk_size_group_get_type;
	GtkSizeGroup* function(GtkSizeGroupMode mode) c_gtk_size_group_new;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_add_widget;
	GtkSizeGroupMode function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_mode;
	GSList* function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_widgets;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_remove_widget;
	void function(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode) c_gtk_size_group_set_mode;

	// gtk.SliceListModel

	GType function() c_gtk_slice_list_model_get_type;
	GtkSliceListModel* function(GListModel* model, uint offset, uint size) c_gtk_slice_list_model_new;
	GListModel* function(GtkSliceListModel* self) c_gtk_slice_list_model_get_model;
	uint function(GtkSliceListModel* self) c_gtk_slice_list_model_get_offset;
	uint function(GtkSliceListModel* self) c_gtk_slice_list_model_get_size;
	void function(GtkSliceListModel* self, GListModel* model) c_gtk_slice_list_model_set_model;
	void function(GtkSliceListModel* self, uint offset) c_gtk_slice_list_model_set_offset;
	void function(GtkSliceListModel* self, uint size) c_gtk_slice_list_model_set_size;

	// gtk.Snapshot

	GType function() c_gtk_snapshot_get_type;
	GtkSnapshot* function() c_gtk_snapshot_new;
	void function(GtkSnapshot* snapshot, GskRoundedRect* outline, float* borderWidth, GdkRGBA* borderColor) c_gtk_snapshot_append_border;
	cairo_t* function(GtkSnapshot* snapshot, graphene_rect_t* bounds) c_gtk_snapshot_append_cairo;
	void function(GtkSnapshot* snapshot, GdkRGBA* color, graphene_rect_t* bounds) c_gtk_snapshot_append_color;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float rotation, GskColorStop* stops, size_t nStops) c_gtk_snapshot_append_conic_gradient;
	void function(GtkSnapshot* snapshot, GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius) c_gtk_snapshot_append_inset_shadow;
	void function(GtkSnapshot* snapshot, PangoLayout* layout, GdkRGBA* color) c_gtk_snapshot_append_layout;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* startPoint, graphene_point_t* endPoint, GskColorStop* stops, size_t nStops) c_gtk_snapshot_append_linear_gradient;
	void function(GtkSnapshot* snapshot, GskRenderNode* node) c_gtk_snapshot_append_node;
	void function(GtkSnapshot* snapshot, GskRoundedRect* outline, GdkRGBA* color, float dx, float dy, float spread, float blurRadius) c_gtk_snapshot_append_outset_shadow;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* stops, size_t nStops) c_gtk_snapshot_append_radial_gradient;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* startPoint, graphene_point_t* endPoint, GskColorStop* stops, size_t nStops) c_gtk_snapshot_append_repeating_linear_gradient;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_point_t* center, float hradius, float vradius, float start, float end, GskColorStop* stops, size_t nStops) c_gtk_snapshot_append_repeating_radial_gradient;
	void function(GtkSnapshot* snapshot, GdkTexture* texture, graphene_rect_t* bounds) c_gtk_snapshot_append_texture;
	GskRenderNode* function(GtkSnapshot* snapshot) c_gtk_snapshot_free_to_node;
	GdkPaintable* function(GtkSnapshot* snapshot, graphene_size_t* size) c_gtk_snapshot_free_to_paintable;
	void function(GtkSnapshot* snapshot) c_gtk_snapshot_gl_shader_pop_texture;
	void function(GtkSnapshot* snapshot, float depth) c_gtk_snapshot_perspective;
	void function(GtkSnapshot* snapshot) c_gtk_snapshot_pop;
	void function(GtkSnapshot* snapshot, GskBlendMode blendMode) c_gtk_snapshot_push_blend;
	void function(GtkSnapshot* snapshot, double radius) c_gtk_snapshot_push_blur;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds) c_gtk_snapshot_push_clip;
	void function(GtkSnapshot* snapshot, graphene_matrix_t* colorMatrix, graphene_vec4_t* colorOffset) c_gtk_snapshot_push_color_matrix;
	void function(GtkSnapshot* snapshot, double progress) c_gtk_snapshot_push_cross_fade;
	void function(GtkSnapshot* snapshot, const(char)* message, ... ) c_gtk_snapshot_push_debug;
	void function(GtkSnapshot* snapshot, GskGLShader* shader, graphene_rect_t* bounds, GBytes* takeArgs) c_gtk_snapshot_push_gl_shader;
	void function(GtkSnapshot* snapshot, double opacity) c_gtk_snapshot_push_opacity;
	void function(GtkSnapshot* snapshot, graphene_rect_t* bounds, graphene_rect_t* childBounds) c_gtk_snapshot_push_repeat;
	void function(GtkSnapshot* snapshot, GskRoundedRect* bounds) c_gtk_snapshot_push_rounded_clip;
	void function(GtkSnapshot* snapshot, GskShadow* shadow, size_t nShadows) c_gtk_snapshot_push_shadow;
	void function(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height) c_gtk_snapshot_render_background;
	void function(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height) c_gtk_snapshot_render_focus;
	void function(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height) c_gtk_snapshot_render_frame;
	void function(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout, int index, PangoDirection direction) c_gtk_snapshot_render_insertion_cursor;
	void function(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout) c_gtk_snapshot_render_layout;
	void function(GtkSnapshot* snapshot) c_gtk_snapshot_restore;
	void function(GtkSnapshot* snapshot, float angle) c_gtk_snapshot_rotate;
	void function(GtkSnapshot* snapshot, float angle, graphene_vec3_t* axis) c_gtk_snapshot_rotate_3d;
	void function(GtkSnapshot* snapshot) c_gtk_snapshot_save;
	void function(GtkSnapshot* snapshot, float factorX, float factorY) c_gtk_snapshot_scale;
	void function(GtkSnapshot* snapshot, float factorX, float factorY, float factorZ) c_gtk_snapshot_scale_3d;
	GskRenderNode* function(GtkSnapshot* snapshot) c_gtk_snapshot_to_node;
	GdkPaintable* function(GtkSnapshot* snapshot, graphene_size_t* size) c_gtk_snapshot_to_paintable;
	void function(GtkSnapshot* snapshot, GskTransform* transform) c_gtk_snapshot_transform;
	void function(GtkSnapshot* snapshot, graphene_matrix_t* matrix) c_gtk_snapshot_transform_matrix;
	void function(GtkSnapshot* snapshot, graphene_point_t* point) c_gtk_snapshot_translate;
	void function(GtkSnapshot* snapshot, graphene_point3d_t* point) c_gtk_snapshot_translate_3d;

	// gtk.SortListModel

	GType function() c_gtk_sort_list_model_get_type;
	GtkSortListModel* function(GListModel* model, GtkSorter* sorter) c_gtk_sort_list_model_new;
	int function(GtkSortListModel* self) c_gtk_sort_list_model_get_incremental;
	GListModel* function(GtkSortListModel* self) c_gtk_sort_list_model_get_model;
	uint function(GtkSortListModel* self) c_gtk_sort_list_model_get_pending;
	GtkSorter* function(GtkSortListModel* self) c_gtk_sort_list_model_get_sorter;
	void function(GtkSortListModel* self, int incremental) c_gtk_sort_list_model_set_incremental;
	void function(GtkSortListModel* self, GListModel* model) c_gtk_sort_list_model_set_model;
	void function(GtkSortListModel* self, GtkSorter* sorter) c_gtk_sort_list_model_set_sorter;

	// gtk.Sorter

	GType function() c_gtk_sorter_get_type;
	void function(GtkSorter* self, GtkSorterChange change) c_gtk_sorter_changed;
	GtkOrdering function(GtkSorter* self, void* item1, void* item2) c_gtk_sorter_compare;
	GtkSorterOrder function(GtkSorter* self) c_gtk_sorter_get_order;

	// gtk.SpinButton

	GType function() c_gtk_spin_button_get_type;
	GtkWidget* function(GtkAdjustment* adjustment, double climbRate, uint digits) c_gtk_spin_button_new;
	GtkWidget* function(double min, double max, double step) c_gtk_spin_button_new_with_range;
	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment, double climbRate, uint digits) c_gtk_spin_button_configure;
	GtkAdjustment* function(GtkSpinButton* spinButton) c_gtk_spin_button_get_adjustment;
	double function(GtkSpinButton* spinButton) c_gtk_spin_button_get_climb_rate;
	uint function(GtkSpinButton* spinButton) c_gtk_spin_button_get_digits;
	void function(GtkSpinButton* spinButton, double* step, double* page) c_gtk_spin_button_get_increments;
	int function(GtkSpinButton* spinButton) c_gtk_spin_button_get_numeric;
	void function(GtkSpinButton* spinButton, double* min, double* max) c_gtk_spin_button_get_range;
	int function(GtkSpinButton* spinButton) c_gtk_spin_button_get_snap_to_ticks;
	GtkSpinButtonUpdatePolicy function(GtkSpinButton* spinButton) c_gtk_spin_button_get_update_policy;
	double function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value;
	int function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value_as_int;
	int function(GtkSpinButton* spinButton) c_gtk_spin_button_get_wrap;
	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment) c_gtk_spin_button_set_adjustment;
	void function(GtkSpinButton* spinButton, double climbRate) c_gtk_spin_button_set_climb_rate;
	void function(GtkSpinButton* spinButton, uint digits) c_gtk_spin_button_set_digits;
	void function(GtkSpinButton* spinButton, double step, double page) c_gtk_spin_button_set_increments;
	void function(GtkSpinButton* spinButton, int numeric) c_gtk_spin_button_set_numeric;
	void function(GtkSpinButton* spinButton, double min, double max) c_gtk_spin_button_set_range;
	void function(GtkSpinButton* spinButton, int snapToTicks) c_gtk_spin_button_set_snap_to_ticks;
	void function(GtkSpinButton* spinButton, GtkSpinButtonUpdatePolicy policy) c_gtk_spin_button_set_update_policy;
	void function(GtkSpinButton* spinButton, double value) c_gtk_spin_button_set_value;
	void function(GtkSpinButton* spinButton, int wrap) c_gtk_spin_button_set_wrap;
	void function(GtkSpinButton* spinButton, GtkSpinType direction, double increment) c_gtk_spin_button_spin;
	void function(GtkSpinButton* spinButton) c_gtk_spin_button_update;

	// gtk.Spinner

	GType function() c_gtk_spinner_get_type;
	GtkWidget* function() c_gtk_spinner_new;
	int function(GtkSpinner* spinner) c_gtk_spinner_get_spinning;
	void function(GtkSpinner* spinner, int spinning) c_gtk_spinner_set_spinning;
	void function(GtkSpinner* spinner) c_gtk_spinner_start;
	void function(GtkSpinner* spinner) c_gtk_spinner_stop;

	// gtk.Stack

	GType function() c_gtk_stack_get_type;
	GtkWidget* function() c_gtk_stack_new;
	GtkStackPage* function(GtkStack* stack, GtkWidget* child) c_gtk_stack_add_child;
	GtkStackPage* function(GtkStack* stack, GtkWidget* child, const(char)* name) c_gtk_stack_add_named;
	GtkStackPage* function(GtkStack* stack, GtkWidget* child, const(char)* name, const(char)* title) c_gtk_stack_add_titled;
	GtkWidget* function(GtkStack* stack, const(char)* name) c_gtk_stack_get_child_by_name;
	int function(GtkStack* stack) c_gtk_stack_get_hhomogeneous;
	int function(GtkStack* stack) c_gtk_stack_get_interpolate_size;
	GtkStackPage* function(GtkStack* stack, GtkWidget* child) c_gtk_stack_get_page;
	GtkSelectionModel* function(GtkStack* stack) c_gtk_stack_get_pages;
	uint function(GtkStack* stack) c_gtk_stack_get_transition_duration;
	int function(GtkStack* stack) c_gtk_stack_get_transition_running;
	GtkStackTransitionType function(GtkStack* stack) c_gtk_stack_get_transition_type;
	int function(GtkStack* stack) c_gtk_stack_get_vhomogeneous;
	GtkWidget* function(GtkStack* stack) c_gtk_stack_get_visible_child;
	const(char)* function(GtkStack* stack) c_gtk_stack_get_visible_child_name;
	void function(GtkStack* stack, GtkWidget* child) c_gtk_stack_remove;
	void function(GtkStack* stack, int hhomogeneous) c_gtk_stack_set_hhomogeneous;
	void function(GtkStack* stack, int interpolateSize) c_gtk_stack_set_interpolate_size;
	void function(GtkStack* stack, uint duration) c_gtk_stack_set_transition_duration;
	void function(GtkStack* stack, GtkStackTransitionType transition) c_gtk_stack_set_transition_type;
	void function(GtkStack* stack, int vhomogeneous) c_gtk_stack_set_vhomogeneous;
	void function(GtkStack* stack, GtkWidget* child) c_gtk_stack_set_visible_child;
	void function(GtkStack* stack, const(char)* name, GtkStackTransitionType transition) c_gtk_stack_set_visible_child_full;
	void function(GtkStack* stack, const(char)* name) c_gtk_stack_set_visible_child_name;

	// gtk.StackPage

	GType function() c_gtk_stack_page_get_type;
	GtkWidget* function(GtkStackPage* self) c_gtk_stack_page_get_child;
	const(char)* function(GtkStackPage* self) c_gtk_stack_page_get_icon_name;
	const(char)* function(GtkStackPage* self) c_gtk_stack_page_get_name;
	int function(GtkStackPage* self) c_gtk_stack_page_get_needs_attention;
	const(char)* function(GtkStackPage* self) c_gtk_stack_page_get_title;
	int function(GtkStackPage* self) c_gtk_stack_page_get_use_underline;
	int function(GtkStackPage* self) c_gtk_stack_page_get_visible;
	void function(GtkStackPage* self, const(char)* setting) c_gtk_stack_page_set_icon_name;
	void function(GtkStackPage* self, const(char)* setting) c_gtk_stack_page_set_name;
	void function(GtkStackPage* self, int setting) c_gtk_stack_page_set_needs_attention;
	void function(GtkStackPage* self, const(char)* setting) c_gtk_stack_page_set_title;
	void function(GtkStackPage* self, int setting) c_gtk_stack_page_set_use_underline;
	void function(GtkStackPage* self, int visible) c_gtk_stack_page_set_visible;

	// gtk.StackSidebar

	GType function() c_gtk_stack_sidebar_get_type;
	GtkWidget* function() c_gtk_stack_sidebar_new;
	GtkStack* function(GtkStackSidebar* self) c_gtk_stack_sidebar_get_stack;
	void function(GtkStackSidebar* self, GtkStack* stack) c_gtk_stack_sidebar_set_stack;

	// gtk.StackSwitcher

	GType function() c_gtk_stack_switcher_get_type;
	GtkWidget* function() c_gtk_stack_switcher_new;
	GtkStack* function(GtkStackSwitcher* switcher) c_gtk_stack_switcher_get_stack;
	void function(GtkStackSwitcher* switcher, GtkStack* stack) c_gtk_stack_switcher_set_stack;

	// gtk.Statusbar

	GType function() c_gtk_statusbar_get_type;
	GtkWidget* function() c_gtk_statusbar_new;
	uint function(GtkStatusbar* statusbar, const(char)* contextDescription) c_gtk_statusbar_get_context_id;
	void function(GtkStatusbar* statusbar, uint contextId) c_gtk_statusbar_pop;
	uint function(GtkStatusbar* statusbar, uint contextId, const(char)* text) c_gtk_statusbar_push;
	void function(GtkStatusbar* statusbar, uint contextId, uint messageId) c_gtk_statusbar_remove;
	void function(GtkStatusbar* statusbar, uint contextId) c_gtk_statusbar_remove_all;

	// gtk.StringFilter

	GType function() c_gtk_string_filter_get_type;
	GtkStringFilter* function(GtkExpression* expression) c_gtk_string_filter_new;
	GtkExpression* function(GtkStringFilter* self) c_gtk_string_filter_get_expression;
	int function(GtkStringFilter* self) c_gtk_string_filter_get_ignore_case;
	GtkStringFilterMatchMode function(GtkStringFilter* self) c_gtk_string_filter_get_match_mode;
	const(char)* function(GtkStringFilter* self) c_gtk_string_filter_get_search;
	void function(GtkStringFilter* self, GtkExpression* expression) c_gtk_string_filter_set_expression;
	void function(GtkStringFilter* self, int ignoreCase) c_gtk_string_filter_set_ignore_case;
	void function(GtkStringFilter* self, GtkStringFilterMatchMode mode) c_gtk_string_filter_set_match_mode;
	void function(GtkStringFilter* self, const(char)* search) c_gtk_string_filter_set_search;

	// gtk.StringList

	GType function() c_gtk_string_list_get_type;
	GtkStringList* function(char** strings) c_gtk_string_list_new;
	void function(GtkStringList* self, const(char)* string_) c_gtk_string_list_append;
	const(char)* function(GtkStringList* self, uint position) c_gtk_string_list_get_string;
	void function(GtkStringList* self, uint position) c_gtk_string_list_remove;
	void function(GtkStringList* self, uint position, uint nRemovals, char** additions) c_gtk_string_list_splice;
	void function(GtkStringList* self, char* string_) c_gtk_string_list_take;

	// gtk.StringObject

	GType function() c_gtk_string_object_get_type;
	GtkStringObject* function(const(char)* string_) c_gtk_string_object_new;
	const(char)* function(GtkStringObject* self) c_gtk_string_object_get_string;

	// gtk.StringSorter

	GType function() c_gtk_string_sorter_get_type;
	GtkStringSorter* function(GtkExpression* expression) c_gtk_string_sorter_new;
	GtkExpression* function(GtkStringSorter* self) c_gtk_string_sorter_get_expression;
	int function(GtkStringSorter* self) c_gtk_string_sorter_get_ignore_case;
	void function(GtkStringSorter* self, GtkExpression* expression) c_gtk_string_sorter_set_expression;
	void function(GtkStringSorter* self, int ignoreCase) c_gtk_string_sorter_set_ignore_case;

	// gtk.StyleContext

	GType function() c_gtk_style_context_get_type;
	void function(GdkDisplay* display, GtkStyleProvider* provider, uint priority) c_gtk_style_context_add_provider_for_display;
	void function(GdkDisplay* display, GtkStyleProvider* provider) c_gtk_style_context_remove_provider_for_display;
	void function(GtkStyleContext* context, const(char)* className) c_gtk_style_context_add_class;
	void function(GtkStyleContext* context, GtkStyleProvider* provider, uint priority) c_gtk_style_context_add_provider;
	void function(GtkStyleContext* context, GtkBorder* border) c_gtk_style_context_get_border;
	void function(GtkStyleContext* context, GdkRGBA* color) c_gtk_style_context_get_color;
	GdkDisplay* function(GtkStyleContext* context) c_gtk_style_context_get_display;
	void function(GtkStyleContext* context, GtkBorder* margin) c_gtk_style_context_get_margin;
	void function(GtkStyleContext* context, GtkBorder* padding) c_gtk_style_context_get_padding;
	int function(GtkStyleContext* context) c_gtk_style_context_get_scale;
	GtkStateFlags function(GtkStyleContext* context) c_gtk_style_context_get_state;
	int function(GtkStyleContext* context, const(char)* className) c_gtk_style_context_has_class;
	int function(GtkStyleContext* context, const(char)* colorName, GdkRGBA* color) c_gtk_style_context_lookup_color;
	void function(GtkStyleContext* context, const(char)* className) c_gtk_style_context_remove_class;
	void function(GtkStyleContext* context, GtkStyleProvider* provider) c_gtk_style_context_remove_provider;
	void function(GtkStyleContext* context) c_gtk_style_context_restore;
	void function(GtkStyleContext* context) c_gtk_style_context_save;
	void function(GtkStyleContext* context, GdkDisplay* display) c_gtk_style_context_set_display;
	void function(GtkStyleContext* context, int scale) c_gtk_style_context_set_scale;
	void function(GtkStyleContext* context, GtkStateFlags flags) c_gtk_style_context_set_state;
	char* function(GtkStyleContext* context, GtkStyleContextPrintFlags flags) c_gtk_style_context_to_string;

	// gtk.StyleProvider

	GType function() c_gtk_style_provider_get_type;

	// gtk.Switch

	GType function() c_gtk_switch_get_type;
	GtkWidget* function() c_gtk_switch_new;
	int function(GtkSwitch* self) c_gtk_switch_get_active;
	int function(GtkSwitch* self) c_gtk_switch_get_state;
	void function(GtkSwitch* self, int isActive) c_gtk_switch_set_active;
	void function(GtkSwitch* self, int state) c_gtk_switch_set_state;

	// gtk.SymbolicPaintable

	GType function() c_gtk_symbolic_paintable_get_type;
	void function(GtkSymbolicPaintable* paintable, GdkSnapshot* snapshot, double width, double height, GdkRGBA* colors, size_t nColors) c_gtk_symbolic_paintable_snapshot_symbolic;

	// gtk.Text

	GType function() c_gtk_text_get_type;
	GtkWidget* function() c_gtk_text_new;
	GtkWidget* function(GtkEntryBuffer* buffer) c_gtk_text_new_with_buffer;
	void function(GtkText* self, size_t position, graphene_rect_t* strong, graphene_rect_t* weak) c_gtk_text_compute_cursor_extents;
	int function(GtkText* self) c_gtk_text_get_activates_default;
	PangoAttrList* function(GtkText* self) c_gtk_text_get_attributes;
	GtkEntryBuffer* function(GtkText* self) c_gtk_text_get_buffer;
	int function(GtkText* self) c_gtk_text_get_enable_emoji_completion;
	GMenuModel* function(GtkText* self) c_gtk_text_get_extra_menu;
	GtkInputHints function(GtkText* self) c_gtk_text_get_input_hints;
	GtkInputPurpose function(GtkText* self) c_gtk_text_get_input_purpose;
	dchar function(GtkText* self) c_gtk_text_get_invisible_char;
	int function(GtkText* self) c_gtk_text_get_max_length;
	int function(GtkText* self) c_gtk_text_get_overwrite_mode;
	const(char)* function(GtkText* self) c_gtk_text_get_placeholder_text;
	int function(GtkText* self) c_gtk_text_get_propagate_text_width;
	PangoTabArray* function(GtkText* self) c_gtk_text_get_tabs;
	ushort function(GtkText* self) c_gtk_text_get_text_length;
	int function(GtkText* self) c_gtk_text_get_truncate_multiline;
	int function(GtkText* self) c_gtk_text_get_visibility;
	int function(GtkText* self) c_gtk_text_grab_focus_without_selecting;
	void function(GtkText* self, int activates) c_gtk_text_set_activates_default;
	void function(GtkText* self, PangoAttrList* attrs) c_gtk_text_set_attributes;
	void function(GtkText* self, GtkEntryBuffer* buffer) c_gtk_text_set_buffer;
	void function(GtkText* self, int enableEmojiCompletion) c_gtk_text_set_enable_emoji_completion;
	void function(GtkText* self, GMenuModel* model) c_gtk_text_set_extra_menu;
	void function(GtkText* self, GtkInputHints hints) c_gtk_text_set_input_hints;
	void function(GtkText* self, GtkInputPurpose purpose) c_gtk_text_set_input_purpose;
	void function(GtkText* self, dchar ch) c_gtk_text_set_invisible_char;
	void function(GtkText* self, int length) c_gtk_text_set_max_length;
	void function(GtkText* self, int overwrite) c_gtk_text_set_overwrite_mode;
	void function(GtkText* self, const(char)* text) c_gtk_text_set_placeholder_text;
	void function(GtkText* self, int propagateTextWidth) c_gtk_text_set_propagate_text_width;
	void function(GtkText* self, PangoTabArray* tabs) c_gtk_text_set_tabs;
	void function(GtkText* self, int truncateMultiline) c_gtk_text_set_truncate_multiline;
	void function(GtkText* self, int visible) c_gtk_text_set_visibility;
	void function(GtkText* self) c_gtk_text_unset_invisible_char;

	// gtk.TextBuffer

	GType function() c_gtk_text_buffer_get_type;
	GtkTextBuffer* function(GtkTextTagTable* table) c_gtk_text_buffer_new;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_add_mark;
	void function(GtkTextBuffer* buffer, GdkClipboard* clipboard) c_gtk_text_buffer_add_selection_clipboard;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag;
	void function(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag_by_name;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, int interactive, int defaultEditable) c_gtk_text_buffer_backspace;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_begin_irreversible_action;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_begin_user_action;
	void function(GtkTextBuffer* buffer, GdkClipboard* clipboard) c_gtk_text_buffer_copy_clipboard;
	GtkTextChildAnchor* function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_create_child_anchor;
	GtkTextMark* function(GtkTextBuffer* buffer, const(char)* markName, GtkTextIter* where, int leftGravity) c_gtk_text_buffer_create_mark;
	GtkTextTag* function(GtkTextBuffer* buffer, const(char)* tagName, const(char)* firstPropertyName, ... ) c_gtk_text_buffer_create_tag;
	void function(GtkTextBuffer* buffer, GdkClipboard* clipboard, int defaultEditable) c_gtk_text_buffer_cut_clipboard;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_delete;
	int function(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, int defaultEditable) c_gtk_text_buffer_delete_interactive;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark) c_gtk_text_buffer_delete_mark;
	void function(GtkTextBuffer* buffer, const(char)* name) c_gtk_text_buffer_delete_mark_by_name;
	int function(GtkTextBuffer* buffer, int interactive, int defaultEditable) c_gtk_text_buffer_delete_selection;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_end_irreversible_action;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_end_user_action;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_bounds;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_can_redo;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_can_undo;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_char_count;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_enable_undo;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_end_iter;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_has_selection;
	GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_insert;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_get_iter_at_child_anchor;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber) c_gtk_text_buffer_get_iter_at_line;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int byteIndex) c_gtk_text_buffer_get_iter_at_line_index;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, int lineNumber, int charOffset) c_gtk_text_buffer_get_iter_at_line_offset;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark) c_gtk_text_buffer_get_iter_at_mark;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, int charOffset) c_gtk_text_buffer_get_iter_at_offset;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_line_count;
	GtkTextMark* function(GtkTextBuffer* buffer, const(char)* name) c_gtk_text_buffer_get_mark;
	uint function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_max_undo_levels;
	int function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_modified;
	GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_selection_bound;
	int function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_selection_bounds;
	GdkContentProvider* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_selection_content;
	char* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, int includeHiddenChars) c_gtk_text_buffer_get_slice;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_start_iter;
	GtkTextTagTable* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_tag_table;
	char* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, int includeHiddenChars) c_gtk_text_buffer_get_text;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len) c_gtk_text_buffer_insert;
	void function(GtkTextBuffer* buffer, const(char)* text, int len) c_gtk_text_buffer_insert_at_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_insert_child_anchor;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, int defaultEditable) c_gtk_text_buffer_insert_interactive;
	int function(GtkTextBuffer* buffer, const(char)* text, int len, int defaultEditable) c_gtk_text_buffer_insert_interactive_at_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* markup, int len) c_gtk_text_buffer_insert_markup;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPaintable* paintable) c_gtk_text_buffer_insert_paintable;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_insert_range;
	int function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, int defaultEditable) c_gtk_text_buffer_insert_range_interactive;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, GtkTextTag* firstTag, ... ) c_gtk_text_buffer_insert_with_tags;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, const(char)* text, int len, const(char)* firstTagName, ... ) c_gtk_text_buffer_insert_with_tags_by_name;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_move_mark;
	void function(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* where) c_gtk_text_buffer_move_mark_by_name;
	void function(GtkTextBuffer* buffer, GdkClipboard* clipboard, GtkTextIter* overrideLocation, int defaultEditable) c_gtk_text_buffer_paste_clipboard;
	void function(GtkTextBuffer* buffer, GtkTextIter* where) c_gtk_text_buffer_place_cursor;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_redo;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_all_tags;
	void function(GtkTextBuffer* buffer, GdkClipboard* clipboard) c_gtk_text_buffer_remove_selection_clipboard;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag;
	void function(GtkTextBuffer* buffer, const(char)* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag_by_name;
	void function(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound) c_gtk_text_buffer_select_range;
	void function(GtkTextBuffer* buffer, int enableUndo) c_gtk_text_buffer_set_enable_undo;
	void function(GtkTextBuffer* buffer, uint maxUndoLevels) c_gtk_text_buffer_set_max_undo_levels;
	void function(GtkTextBuffer* buffer, int setting) c_gtk_text_buffer_set_modified;
	void function(GtkTextBuffer* buffer, const(char)* text, int len) c_gtk_text_buffer_set_text;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_undo;

	// gtk.TextChildAnchor

	GType function() c_gtk_text_child_anchor_get_type;
	GtkTextChildAnchor* function() c_gtk_text_child_anchor_new;
	GtkTextChildAnchor* function(const(char)* character) c_gtk_text_child_anchor_new_with_replacement;
	int function(GtkTextChildAnchor* anchor) c_gtk_text_child_anchor_get_deleted;
	GtkWidget** function(GtkTextChildAnchor* anchor, uint* outLen) c_gtk_text_child_anchor_get_widgets;

	// gtk.TextIter

	GType function() c_gtk_text_iter_get_type;
	void function(GtkTextIter* iter, GtkTextIter* other) c_gtk_text_iter_assign;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_char;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_chars;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_cursor_position;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_cursor_positions;
	int function(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit) c_gtk_text_iter_backward_find_char;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_line;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_lines;
	int function(GtkTextIter* iter, const(char)* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_backward_search;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_sentence_start;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_sentence_starts;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_backward_to_tag_toggle;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_cursor_position;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_visible_cursor_positions;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_line;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_visible_lines;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_word_start;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_visible_word_starts;
	int function(GtkTextIter* iter) c_gtk_text_iter_backward_word_start;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_backward_word_starts;
	int function(GtkTextIter* iter, int defaultEditability) c_gtk_text_iter_can_insert;
	int function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_compare;
	GtkTextIter* function(GtkTextIter* iter) c_gtk_text_iter_copy;
	int function(GtkTextIter* iter, int defaultSetting) c_gtk_text_iter_editable;
	int function(GtkTextIter* iter) c_gtk_text_iter_ends_line;
	int function(GtkTextIter* iter) c_gtk_text_iter_ends_sentence;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_ends_tag;
	int function(GtkTextIter* iter) c_gtk_text_iter_ends_word;
	int function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_equal;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_char;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_chars;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_cursor_position;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_cursor_positions;
	int function(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit) c_gtk_text_iter_forward_find_char;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_line;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_lines;
	int function(GtkTextIter* iter, const(char)* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_forward_search;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_sentence_end;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_sentence_ends;
	void function(GtkTextIter* iter) c_gtk_text_iter_forward_to_end;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_to_line_end;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_forward_to_tag_toggle;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_cursor_position;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_visible_cursor_positions;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_line;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_visible_lines;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_word_end;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_visible_word_ends;
	int function(GtkTextIter* iter) c_gtk_text_iter_forward_word_end;
	int function(GtkTextIter* iter, int count) c_gtk_text_iter_forward_word_ends;
	void function(GtkTextIter* iter) c_gtk_text_iter_free;
	GtkTextBuffer* function(GtkTextIter* iter) c_gtk_text_iter_get_buffer;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_bytes_in_line;
	dchar function(GtkTextIter* iter) c_gtk_text_iter_get_char;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_chars_in_line;
	GtkTextChildAnchor* function(GtkTextIter* iter) c_gtk_text_iter_get_child_anchor;
	PangoLanguage* function(GtkTextIter* iter) c_gtk_text_iter_get_language;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_line;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_line_index;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_line_offset;
	GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_marks;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_offset;
	GdkPaintable* function(GtkTextIter* iter) c_gtk_text_iter_get_paintable;
	char* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_slice;
	GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_tags;
	char* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_text;
	GSList* function(GtkTextIter* iter, int toggledOn) c_gtk_text_iter_get_toggled_tags;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_index;
	int function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_offset;
	char* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_slice;
	char* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_text;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_has_tag;
	int function(GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_in_range;
	int function(GtkTextIter* iter) c_gtk_text_iter_inside_sentence;
	int function(GtkTextIter* iter) c_gtk_text_iter_inside_word;
	int function(GtkTextIter* iter) c_gtk_text_iter_is_cursor_position;
	int function(GtkTextIter* iter) c_gtk_text_iter_is_end;
	int function(GtkTextIter* iter) c_gtk_text_iter_is_start;
	void function(GtkTextIter* first, GtkTextIter* second) c_gtk_text_iter_order;
	void function(GtkTextIter* iter, int lineNumber) c_gtk_text_iter_set_line;
	void function(GtkTextIter* iter, int byteOnLine) c_gtk_text_iter_set_line_index;
	void function(GtkTextIter* iter, int charOnLine) c_gtk_text_iter_set_line_offset;
	void function(GtkTextIter* iter, int charOffset) c_gtk_text_iter_set_offset;
	void function(GtkTextIter* iter, int byteOnLine) c_gtk_text_iter_set_visible_line_index;
	void function(GtkTextIter* iter, int charOnLine) c_gtk_text_iter_set_visible_line_offset;
	int function(GtkTextIter* iter) c_gtk_text_iter_starts_line;
	int function(GtkTextIter* iter) c_gtk_text_iter_starts_sentence;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_starts_tag;
	int function(GtkTextIter* iter) c_gtk_text_iter_starts_word;
	int function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_toggles_tag;

	// gtk.TextMark

	GType function() c_gtk_text_mark_get_type;
	GtkTextMark* function(const(char)* name, int leftGravity) c_gtk_text_mark_new;
	GtkTextBuffer* function(GtkTextMark* mark) c_gtk_text_mark_get_buffer;
	int function(GtkTextMark* mark) c_gtk_text_mark_get_deleted;
	int function(GtkTextMark* mark) c_gtk_text_mark_get_left_gravity;
	const(char)* function(GtkTextMark* mark) c_gtk_text_mark_get_name;
	int function(GtkTextMark* mark) c_gtk_text_mark_get_visible;
	void function(GtkTextMark* mark, int setting) c_gtk_text_mark_set_visible;

	// gtk.TextTag

	GType function() c_gtk_text_tag_get_type;
	GtkTextTag* function(const(char)* name) c_gtk_text_tag_new;
	void function(GtkTextTag* tag, int sizeChanged) c_gtk_text_tag_changed;
	int function(GtkTextTag* tag) c_gtk_text_tag_get_priority;
	void function(GtkTextTag* tag, int priority) c_gtk_text_tag_set_priority;

	// gtk.TextTagTable

	GType function() c_gtk_text_tag_table_get_type;
	GtkTextTagTable* function() c_gtk_text_tag_table_new;
	int function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_add;
	void function(GtkTextTagTable* table, GtkTextTagTableForeach func, void* data) c_gtk_text_tag_table_foreach;
	int function(GtkTextTagTable* table) c_gtk_text_tag_table_get_size;
	GtkTextTag* function(GtkTextTagTable* table, const(char)* name) c_gtk_text_tag_table_lookup;
	void function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_remove;

	// gtk.TextView

	GType function() c_gtk_text_view_get_type;
	GtkWidget* function() c_gtk_text_view_new;
	GtkWidget* function(GtkTextBuffer* buffer) c_gtk_text_view_new_with_buffer;
	void function(GtkTextView* textView, GtkWidget* child, GtkTextChildAnchor* anchor) c_gtk_text_view_add_child_at_anchor;
	void function(GtkTextView* textView, GtkWidget* child, int xpos, int ypos) c_gtk_text_view_add_overlay;
	int function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line;
	int function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line_start;
	void function(GtkTextView* textView, GtkTextWindowType win, int bufferX, int bufferY, int* windowX, int* windowY) c_gtk_text_view_buffer_to_window_coords;
	int function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line;
	int function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line_end;
	int function(GtkTextView* textView) c_gtk_text_view_get_accepts_tab;
	int function(GtkTextView* textView) c_gtk_text_view_get_bottom_margin;
	GtkTextBuffer* function(GtkTextView* textView) c_gtk_text_view_get_buffer;
	void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* strong, GdkRectangle* weak) c_gtk_text_view_get_cursor_locations;
	int function(GtkTextView* textView) c_gtk_text_view_get_cursor_visible;
	int function(GtkTextView* textView) c_gtk_text_view_get_editable;
	GMenuModel* function(GtkTextView* textView) c_gtk_text_view_get_extra_menu;
	GtkWidget* function(GtkTextView* textView, GtkTextWindowType win) c_gtk_text_view_get_gutter;
	int function(GtkTextView* textView) c_gtk_text_view_get_indent;
	GtkInputHints function(GtkTextView* textView) c_gtk_text_view_get_input_hints;
	GtkInputPurpose function(GtkTextView* textView) c_gtk_text_view_get_input_purpose;
	int function(GtkTextView* textView, GtkTextIter* iter, int x, int y) c_gtk_text_view_get_iter_at_location;
	int function(GtkTextView* textView, GtkTextIter* iter, int* trailing, int x, int y) c_gtk_text_view_get_iter_at_position;
	void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* location) c_gtk_text_view_get_iter_location;
	GtkJustification function(GtkTextView* textView) c_gtk_text_view_get_justification;
	int function(GtkTextView* textView) c_gtk_text_view_get_left_margin;
	void function(GtkTextView* textView, GtkTextIter* targetIter, int y, int* lineTop) c_gtk_text_view_get_line_at_y;
	void function(GtkTextView* textView, GtkTextIter* iter, int* y, int* height) c_gtk_text_view_get_line_yrange;
	PangoContext* function(GtkTextView* textView) c_gtk_text_view_get_ltr_context;
	int function(GtkTextView* textView) c_gtk_text_view_get_monospace;
	int function(GtkTextView* textView) c_gtk_text_view_get_overwrite;
	int function(GtkTextView* textView) c_gtk_text_view_get_pixels_above_lines;
	int function(GtkTextView* textView) c_gtk_text_view_get_pixels_below_lines;
	int function(GtkTextView* textView) c_gtk_text_view_get_pixels_inside_wrap;
	int function(GtkTextView* textView) c_gtk_text_view_get_right_margin;
	PangoContext* function(GtkTextView* textView) c_gtk_text_view_get_rtl_context;
	PangoTabArray* function(GtkTextView* textView) c_gtk_text_view_get_tabs;
	int function(GtkTextView* textView) c_gtk_text_view_get_top_margin;
	void function(GtkTextView* textView, GdkRectangle* visibleRect) c_gtk_text_view_get_visible_rect;
	GtkWrapMode function(GtkTextView* textView) c_gtk_text_view_get_wrap_mode;
	int function(GtkTextView* textView, GdkEvent* event) c_gtk_text_view_im_context_filter_keypress;
	int function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_move_mark_onscreen;
	void function(GtkTextView* textView, GtkWidget* child, int xpos, int ypos) c_gtk_text_view_move_overlay;
	int function(GtkTextView* textView, GtkTextIter* iter, int count) c_gtk_text_view_move_visually;
	int function(GtkTextView* textView) c_gtk_text_view_place_cursor_onscreen;
	void function(GtkTextView* textView, GtkWidget* child) c_gtk_text_view_remove;
	void function(GtkTextView* textView) c_gtk_text_view_reset_cursor_blink;
	void function(GtkTextView* textView) c_gtk_text_view_reset_im_context;
	void function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_scroll_mark_onscreen;
	int function(GtkTextView* textView, GtkTextIter* iter, double withinMargin, int useAlign, double xalign, double yalign) c_gtk_text_view_scroll_to_iter;
	void function(GtkTextView* textView, GtkTextMark* mark, double withinMargin, int useAlign, double xalign, double yalign) c_gtk_text_view_scroll_to_mark;
	void function(GtkTextView* textView, int acceptsTab) c_gtk_text_view_set_accepts_tab;
	void function(GtkTextView* textView, int bottomMargin) c_gtk_text_view_set_bottom_margin;
	void function(GtkTextView* textView, GtkTextBuffer* buffer) c_gtk_text_view_set_buffer;
	void function(GtkTextView* textView, int setting) c_gtk_text_view_set_cursor_visible;
	void function(GtkTextView* textView, int setting) c_gtk_text_view_set_editable;
	void function(GtkTextView* textView, GMenuModel* model) c_gtk_text_view_set_extra_menu;
	void function(GtkTextView* textView, GtkTextWindowType win, GtkWidget* widget) c_gtk_text_view_set_gutter;
	void function(GtkTextView* textView, int indent) c_gtk_text_view_set_indent;
	void function(GtkTextView* textView, GtkInputHints hints) c_gtk_text_view_set_input_hints;
	void function(GtkTextView* textView, GtkInputPurpose purpose) c_gtk_text_view_set_input_purpose;
	void function(GtkTextView* textView, GtkJustification justification) c_gtk_text_view_set_justification;
	void function(GtkTextView* textView, int leftMargin) c_gtk_text_view_set_left_margin;
	void function(GtkTextView* textView, int monospace) c_gtk_text_view_set_monospace;
	void function(GtkTextView* textView, int overwrite) c_gtk_text_view_set_overwrite;
	void function(GtkTextView* textView, int pixelsAboveLines) c_gtk_text_view_set_pixels_above_lines;
	void function(GtkTextView* textView, int pixelsBelowLines) c_gtk_text_view_set_pixels_below_lines;
	void function(GtkTextView* textView, int pixelsInsideWrap) c_gtk_text_view_set_pixels_inside_wrap;
	void function(GtkTextView* textView, int rightMargin) c_gtk_text_view_set_right_margin;
	void function(GtkTextView* textView, PangoTabArray* tabs) c_gtk_text_view_set_tabs;
	void function(GtkTextView* textView, int topMargin) c_gtk_text_view_set_top_margin;
	void function(GtkTextView* textView, GtkWrapMode wrapMode) c_gtk_text_view_set_wrap_mode;
	int function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_starts_display_line;
	void function(GtkTextView* textView, GtkTextWindowType win, int windowX, int windowY, int* bufferX, int* bufferY) c_gtk_text_view_window_to_buffer_coords;

	// gtk.ToggleButton

	GType function() c_gtk_toggle_button_get_type;
	GtkWidget* function() c_gtk_toggle_button_new;
	GtkWidget* function(const(char)* label) c_gtk_toggle_button_new_with_label;
	GtkWidget* function(const(char)* label) c_gtk_toggle_button_new_with_mnemonic;
	int function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_active;
	void function(GtkToggleButton* toggleButton, int isActive) c_gtk_toggle_button_set_active;
	void function(GtkToggleButton* toggleButton, GtkToggleButton* group) c_gtk_toggle_button_set_group;
	void function(GtkToggleButton* toggleButton) c_gtk_toggle_button_toggled;

	// gtk.Tooltip

	GType function() c_gtk_tooltip_get_type;
	void function(GtkTooltip* tooltip, GtkWidget* customWidget) c_gtk_tooltip_set_custom;
	void function(GtkTooltip* tooltip, GdkPaintable* paintable) c_gtk_tooltip_set_icon;
	void function(GtkTooltip* tooltip, GIcon* gicon) c_gtk_tooltip_set_icon_from_gicon;
	void function(GtkTooltip* tooltip, const(char)* iconName) c_gtk_tooltip_set_icon_from_icon_name;
	void function(GtkTooltip* tooltip, const(char)* markup) c_gtk_tooltip_set_markup;
	void function(GtkTooltip* tooltip, const(char)* text) c_gtk_tooltip_set_text;
	void function(GtkTooltip* tooltip, GdkRectangle* rect) c_gtk_tooltip_set_tip_area;

	// gtk.TreeDragDest

	GType function() c_gtk_tree_drag_dest_get_type;
	int function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GValue* value) c_gtk_tree_drag_dest_drag_data_received;
	int function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GValue* value) c_gtk_tree_drag_dest_row_drop_possible;

	// gtk.TreeDragSource

	GType function() c_gtk_tree_drag_source_get_type;
	int function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_drag_data_delete;
	GdkContentProvider* function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_drag_data_get;
	int function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_row_draggable;

	// gtk.TreeExpander

	GType function() c_gtk_tree_expander_get_type;
	GtkWidget* function() c_gtk_tree_expander_new;
	GtkWidget* function(GtkTreeExpander* self) c_gtk_tree_expander_get_child;
	int function(GtkTreeExpander* self) c_gtk_tree_expander_get_indent_for_icon;
	void* function(GtkTreeExpander* self) c_gtk_tree_expander_get_item;
	GtkTreeListRow* function(GtkTreeExpander* self) c_gtk_tree_expander_get_list_row;
	void function(GtkTreeExpander* self, GtkWidget* child) c_gtk_tree_expander_set_child;
	void function(GtkTreeExpander* self, int indentForIcon) c_gtk_tree_expander_set_indent_for_icon;
	void function(GtkTreeExpander* self, GtkTreeListRow* listRow) c_gtk_tree_expander_set_list_row;

	// gtk.TreeIter

	GType function() c_gtk_tree_iter_get_type;
	GtkTreeIter* function(GtkTreeIter* iter) c_gtk_tree_iter_copy;
	void function(GtkTreeIter* iter) c_gtk_tree_iter_free;

	// gtk.TreeListModel

	GType function() c_gtk_tree_list_model_get_type;
	GtkTreeListModel* function(GListModel* root, int passthrough, int autoexpand, GtkTreeListModelCreateModelFunc createFunc, void* userData, GDestroyNotify userDestroy) c_gtk_tree_list_model_new;
	int function(GtkTreeListModel* self) c_gtk_tree_list_model_get_autoexpand;
	GtkTreeListRow* function(GtkTreeListModel* self, uint position) c_gtk_tree_list_model_get_child_row;
	GListModel* function(GtkTreeListModel* self) c_gtk_tree_list_model_get_model;
	int function(GtkTreeListModel* self) c_gtk_tree_list_model_get_passthrough;
	GtkTreeListRow* function(GtkTreeListModel* self, uint position) c_gtk_tree_list_model_get_row;
	void function(GtkTreeListModel* self, int autoexpand) c_gtk_tree_list_model_set_autoexpand;

	// gtk.TreeListRow

	GType function() c_gtk_tree_list_row_get_type;
	GtkTreeListRow* function(GtkTreeListRow* self, uint position) c_gtk_tree_list_row_get_child_row;
	GListModel* function(GtkTreeListRow* self) c_gtk_tree_list_row_get_children;
	uint function(GtkTreeListRow* self) c_gtk_tree_list_row_get_depth;
	int function(GtkTreeListRow* self) c_gtk_tree_list_row_get_expanded;
	void* function(GtkTreeListRow* self) c_gtk_tree_list_row_get_item;
	GtkTreeListRow* function(GtkTreeListRow* self) c_gtk_tree_list_row_get_parent;
	uint function(GtkTreeListRow* self) c_gtk_tree_list_row_get_position;
	int function(GtkTreeListRow* self) c_gtk_tree_list_row_is_expandable;
	void function(GtkTreeListRow* self, int expanded) c_gtk_tree_list_row_set_expanded;

	// gtk.TreeListRowSorter

	GType function() c_gtk_tree_list_row_sorter_get_type;
	GtkTreeListRowSorter* function(GtkSorter* sorter) c_gtk_tree_list_row_sorter_new;
	GtkSorter* function(GtkTreeListRowSorter* self) c_gtk_tree_list_row_sorter_get_sorter;
	void function(GtkTreeListRowSorter* self, GtkSorter* sorter) c_gtk_tree_list_row_sorter_set_sorter;

	// gtk.TreeModel

	GType function() c_gtk_tree_model_get_type;
	GtkTreeModel* function(GtkTreeModel* childModel, GtkTreePath* root) c_gtk_tree_model_filter_new;
	void function(GtkTreeModel* model, GtkTreeModelForeachFunc func, void* userData) c_gtk_tree_model_foreach;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, ... ) c_gtk_tree_model_get;
	GType function(GtkTreeModel* treeModel, int index) c_gtk_tree_model_get_column_type;
	GtkTreeModelFlags function(GtkTreeModel* treeModel) c_gtk_tree_model_get_flags;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path) c_gtk_tree_model_get_iter;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_iter_first;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter, const(char)* pathString) c_gtk_tree_model_get_iter_from_string;
	int function(GtkTreeModel* treeModel) c_gtk_tree_model_get_n_columns;
	GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_path;
	char* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_string_from_iter;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, void* varArgs) c_gtk_tree_model_get_valist;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, int column, GValue* value) c_gtk_tree_model_get_value;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_model_iter_children;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_has_child;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_n_children;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_next;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, int n) c_gtk_tree_model_iter_nth_child;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child) c_gtk_tree_model_iter_parent;
	int function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_previous;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_ref_node;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_changed;
	void function(GtkTreeModel* treeModel, GtkTreePath* path) c_gtk_tree_model_row_deleted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_has_child_toggled;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_inserted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder) c_gtk_tree_model_rows_reordered;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, int* newOrder, int length) c_gtk_tree_model_rows_reordered_with_length;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_unref_node;

	// gtk.TreeModelFilter

	GType function() c_gtk_tree_model_filter_get_type;
	void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_clear_cache;
	int function(GtkTreeModelFilter* filter, GtkTreeIter* filterIter, GtkTreeIter* childIter) c_gtk_tree_model_filter_convert_child_iter_to_iter;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* childPath) c_gtk_tree_model_filter_convert_child_path_to_path;
	void function(GtkTreeModelFilter* filter, GtkTreeIter* childIter, GtkTreeIter* filterIter) c_gtk_tree_model_filter_convert_iter_to_child_iter;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* filterPath) c_gtk_tree_model_filter_convert_path_to_child_path;
	GtkTreeModel* function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_get_model;
	void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_refilter;
	void function(GtkTreeModelFilter* filter, int nColumns, GType* types, GtkTreeModelFilterModifyFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_modify_func;
	void function(GtkTreeModelFilter* filter, int column) c_gtk_tree_model_filter_set_visible_column;
	void function(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_visible_func;

	// gtk.TreeModelSort

	GType function() c_gtk_tree_model_sort_get_type;
	GtkTreeModel* function(GtkTreeModel* childModel) c_gtk_tree_model_sort_new_with_model;
	void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_clear_cache;
	int function(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter) c_gtk_tree_model_sort_convert_child_iter_to_iter;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath) c_gtk_tree_model_sort_convert_child_path_to_path;
	void function(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter) c_gtk_tree_model_sort_convert_iter_to_child_iter;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath) c_gtk_tree_model_sort_convert_path_to_child_path;
	GtkTreeModel* function(GtkTreeModelSort* treeModel) c_gtk_tree_model_sort_get_model;
	int function(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter) c_gtk_tree_model_sort_iter_is_valid;
	void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_reset_default_sort_func;

	// gtk.TreePath

	GType function() c_gtk_tree_path_get_type;
	GtkTreePath* function() c_gtk_tree_path_new;
	GtkTreePath* function() c_gtk_tree_path_new_first;
	GtkTreePath* function(int firstIndex, ... ) c_gtk_tree_path_new_from_indices;
	GtkTreePath* function(int* indices, size_t length) c_gtk_tree_path_new_from_indicesv;
	GtkTreePath* function(const(char)* path) c_gtk_tree_path_new_from_string;
	void function(GtkTreePath* path, int index) c_gtk_tree_path_append_index;
	int function(GtkTreePath* a, GtkTreePath* b) c_gtk_tree_path_compare;
	GtkTreePath* function(GtkTreePath* path) c_gtk_tree_path_copy;
	void function(GtkTreePath* path) c_gtk_tree_path_down;
	void function(GtkTreePath* path) c_gtk_tree_path_free;
	int function(GtkTreePath* path) c_gtk_tree_path_get_depth;
	int* function(GtkTreePath* path) c_gtk_tree_path_get_indices;
	int* function(GtkTreePath* path, int* depth) c_gtk_tree_path_get_indices_with_depth;
	int function(GtkTreePath* path, GtkTreePath* descendant) c_gtk_tree_path_is_ancestor;
	int function(GtkTreePath* path, GtkTreePath* ancestor) c_gtk_tree_path_is_descendant;
	void function(GtkTreePath* path) c_gtk_tree_path_next;
	void function(GtkTreePath* path, int index) c_gtk_tree_path_prepend_index;
	int function(GtkTreePath* path) c_gtk_tree_path_prev;
	char* function(GtkTreePath* path) c_gtk_tree_path_to_string;
	int function(GtkTreePath* path) c_gtk_tree_path_up;

	// gtk.TreeRowReference

	GType function() c_gtk_tree_row_reference_get_type;
	GtkTreeRowReference* function(GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new;
	GtkTreeRowReference* function(GObject* proxy, GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new_proxy;
	GtkTreeRowReference* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_copy;
	void function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_free;
	GtkTreeModel* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_model;
	GtkTreePath* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_path;
	int function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_valid;
	void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_deleted;
	void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_inserted;
	void function(GObject* proxy, GtkTreePath* path, GtkTreeIter* iter, int* newOrder) c_gtk_tree_row_reference_reordered;

	// gtk.TreeSelection

	GType function() c_gtk_tree_selection_get_type;
	int function(GtkTreeSelection* selection) c_gtk_tree_selection_count_selected_rows;
	GtkSelectionMode function(GtkTreeSelection* selection) c_gtk_tree_selection_get_mode;
	GtkTreeSelectionFunc function(GtkTreeSelection* selection) c_gtk_tree_selection_get_select_function;
	int function(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter) c_gtk_tree_selection_get_selected;
	GList* function(GtkTreeSelection* selection, GtkTreeModel** model) c_gtk_tree_selection_get_selected_rows;
	GtkTreeView* function(GtkTreeSelection* selection) c_gtk_tree_selection_get_tree_view;
	void* function(GtkTreeSelection* selection) c_gtk_tree_selection_get_user_data;
	int function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_iter_is_selected;
	int function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_path_is_selected;
	void function(GtkTreeSelection* selection) c_gtk_tree_selection_select_all;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_select_iter;
	void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_select_path;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_select_range;
	void function(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, void* data) c_gtk_tree_selection_selected_foreach;
	void function(GtkTreeSelection* selection, GtkSelectionMode type) c_gtk_tree_selection_set_mode;
	void function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_selection_set_select_function;
	void function(GtkTreeSelection* selection) c_gtk_tree_selection_unselect_all;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_unselect_iter;
	void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_unselect_path;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_unselect_range;

	// gtk.TreeSortable

	GType function() c_gtk_tree_sortable_get_type;
	int function(GtkTreeSortable* sortable, int* sortColumnId, GtkSortType* order) c_gtk_tree_sortable_get_sort_column_id;
	int function(GtkTreeSortable* sortable) c_gtk_tree_sortable_has_default_sort_func;
	void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_default_sort_func;
	void function(GtkTreeSortable* sortable, int sortColumnId, GtkSortType order) c_gtk_tree_sortable_set_sort_column_id;
	void function(GtkTreeSortable* sortable, int sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_sort_func;
	void function(GtkTreeSortable* sortable) c_gtk_tree_sortable_sort_column_changed;

	// gtk.TreeStore

	GType function() c_gtk_tree_store_get_type;
	GtkTreeStore* function(int nColumns, ... ) c_gtk_tree_store_new;
	GtkTreeStore* function(int nColumns, GType* types) c_gtk_tree_store_newv;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_append;
	void function(GtkTreeStore* treeStore) c_gtk_tree_store_clear;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position) c_gtk_tree_store_insert;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_after;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position, ... ) c_gtk_tree_store_insert_with_values;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, int position, int* columns, GValue* values, int nValues) c_gtk_tree_store_insert_with_valuesv;
	int function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* descendant) c_gtk_tree_store_is_ancestor;
	int function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_depth;
	int function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_is_valid;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_after;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_prepend;
	int function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_remove;
	void function(GtkTreeStore* treeStore, GtkTreeIter* parent, int* newOrder) c_gtk_tree_store_reorder;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, ... ) c_gtk_tree_store_set;
	void function(GtkTreeStore* treeStore, int nColumns, GType* types) c_gtk_tree_store_set_column_types;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, void* varArgs) c_gtk_tree_store_set_valist;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, int column, GValue* value) c_gtk_tree_store_set_value;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, int* columns, GValue* values, int nValues) c_gtk_tree_store_set_valuesv;
	void function(GtkTreeStore* treeStore, GtkTreeIter* a, GtkTreeIter* b) c_gtk_tree_store_swap;

	// gtk.TreeView

	GType function() c_gtk_tree_view_get_type;
	GtkWidget* function() c_gtk_tree_view_new;
	GtkWidget* function(GtkTreeModel* model) c_gtk_tree_view_new_with_model;
	int function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_append_column;
	void function(GtkTreeView* treeView) c_gtk_tree_view_collapse_all;
	int function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_collapse_row;
	void function(GtkTreeView* treeView) c_gtk_tree_view_columns_autosize;
	void function(GtkTreeView* treeView, int bx, int by, int* tx, int* ty) c_gtk_tree_view_convert_bin_window_to_tree_coords;
	void function(GtkTreeView* treeView, int bx, int by, int* wx, int* wy) c_gtk_tree_view_convert_bin_window_to_widget_coords;
	void function(GtkTreeView* treeView, int tx, int ty, int* bx, int* by) c_gtk_tree_view_convert_tree_to_bin_window_coords;
	void function(GtkTreeView* treeView, int tx, int ty, int* wx, int* wy) c_gtk_tree_view_convert_tree_to_widget_coords;
	void function(GtkTreeView* treeView, int wx, int wy, int* bx, int* by) c_gtk_tree_view_convert_widget_to_bin_window_coords;
	void function(GtkTreeView* treeView, int wx, int wy, int* tx, int* ty) c_gtk_tree_view_convert_widget_to_tree_coords;
	GdkPaintable* function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_create_row_drag_icon;
	void function(GtkTreeView* treeView, GdkContentFormats* formats, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_dest;
	void function(GtkTreeView* treeView, GdkModifierType startButtonMask, GdkContentFormats* formats, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_source;
	void function(GtkTreeView* treeView) c_gtk_tree_view_expand_all;
	int function(GtkTreeView* treeView, GtkTreePath* path, int openAll) c_gtk_tree_view_expand_row;
	void function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_expand_to_path;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_activate_on_single_click;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_background_area;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_cell_area;
	GtkTreeViewColumn* function(GtkTreeView* treeView, int n) c_gtk_tree_view_get_column;
	GList* function(GtkTreeView* treeView) c_gtk_tree_view_get_columns;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewColumn** focusColumn) c_gtk_tree_view_get_cursor;
	int function(GtkTreeView* treeView, int dragX, int dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_dest_row_at_pos;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_drag_dest_row;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_search;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_tree_lines;
	GtkTreeViewColumn* function(GtkTreeView* treeView) c_gtk_tree_view_get_expander_column;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_fixed_height_mode;
	GtkTreeViewGridLines function(GtkTreeView* treeView) c_gtk_tree_view_get_grid_lines;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_clickable;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_visible;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_expand;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_selection;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_level_indentation;
	GtkTreeModel* function(GtkTreeView* treeView) c_gtk_tree_view_get_model;
	uint function(GtkTreeView* treeView) c_gtk_tree_view_get_n_columns;
	int function(GtkTreeView* treeView, int x, int y, GtkTreePath** path, GtkTreeViewColumn** column, int* cellX, int* cellY) c_gtk_tree_view_get_path_at_pos;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_reorderable;
	GtkTreeViewRowSeparatorFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_row_separator_func;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_rubber_banding;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_search_column;
	GtkEditable* function(GtkTreeView* treeView) c_gtk_tree_view_get_search_entry;
	GtkTreeViewSearchEqualFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_search_equal_func;
	GtkTreeSelection* function(GtkTreeView* treeView) c_gtk_tree_view_get_selection;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_show_expanders;
	int function(GtkTreeView* treeView) c_gtk_tree_view_get_tooltip_column;
	int function(GtkTreeView* treeView, int x, int y, int keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_tree_view_get_tooltip_context;
	int function(GtkTreeView* treeView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_tree_view_get_visible_range;
	void function(GtkTreeView* treeView, GdkRectangle* visibleRect) c_gtk_tree_view_get_visible_rect;
	int function(GtkTreeView* treeView, GtkTreeViewColumn* column, int position) c_gtk_tree_view_insert_column;
	int function(GtkTreeView* treeView, int position, const(char)* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_insert_column_with_attributes;
	int function(GtkTreeView* treeView, int position, const(char)* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify) c_gtk_tree_view_insert_column_with_data_func;
	int function(GtkTreeView* treeView, int x, int y, GtkTreePath** path, GtkTreeViewColumn** column, int* cellX, int* cellY) c_gtk_tree_view_is_blank_at_pos;
	int function(GtkTreeView* treeView) c_gtk_tree_view_is_rubber_banding_active;
	void function(GtkTreeView* treeView, GtkTreeViewMappingFunc func, void* data) c_gtk_tree_view_map_expanded_rows;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* baseColumn) c_gtk_tree_view_move_column_after;
	int function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_remove_column;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column) c_gtk_tree_view_row_activated;
	int function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_row_expanded;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, int useAlign, float rowAlign, float colAlign) c_gtk_tree_view_scroll_to_cell;
	void function(GtkTreeView* treeView, int treeX, int treeY) c_gtk_tree_view_scroll_to_point;
	void function(GtkTreeView* treeView, int single) c_gtk_tree_view_set_activate_on_single_click;
	void function(GtkTreeView* treeView, GtkTreeViewColumnDropFunc func, void* userData, GDestroyNotify destroy) c_gtk_tree_view_set_column_drag_function;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, int startEditing) c_gtk_tree_view_set_cursor;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, GtkCellRenderer* focusCell, int startEditing) c_gtk_tree_view_set_cursor_on_cell;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos) c_gtk_tree_view_set_drag_dest_row;
	void function(GtkTreeView* treeView, int enableSearch) c_gtk_tree_view_set_enable_search;
	void function(GtkTreeView* treeView, int enabled) c_gtk_tree_view_set_enable_tree_lines;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_set_expander_column;
	void function(GtkTreeView* treeView, int enable) c_gtk_tree_view_set_fixed_height_mode;
	void function(GtkTreeView* treeView, GtkTreeViewGridLines gridLines) c_gtk_tree_view_set_grid_lines;
	void function(GtkTreeView* treeView, int setting) c_gtk_tree_view_set_headers_clickable;
	void function(GtkTreeView* treeView, int headersVisible) c_gtk_tree_view_set_headers_visible;
	void function(GtkTreeView* treeView, int expand) c_gtk_tree_view_set_hover_expand;
	void function(GtkTreeView* treeView, int hover) c_gtk_tree_view_set_hover_selection;
	void function(GtkTreeView* treeView, int indentation) c_gtk_tree_view_set_level_indentation;
	void function(GtkTreeView* treeView, GtkTreeModel* model) c_gtk_tree_view_set_model;
	void function(GtkTreeView* treeView, int reorderable) c_gtk_tree_view_set_reorderable;
	void function(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_view_set_row_separator_func;
	void function(GtkTreeView* treeView, int enable) c_gtk_tree_view_set_rubber_banding;
	void function(GtkTreeView* treeView, int column) c_gtk_tree_view_set_search_column;
	void function(GtkTreeView* treeView, GtkEditable* entry) c_gtk_tree_view_set_search_entry;
	void function(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy) c_gtk_tree_view_set_search_equal_func;
	void function(GtkTreeView* treeView, int enabled) c_gtk_tree_view_set_show_expanders;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell) c_gtk_tree_view_set_tooltip_cell;
	void function(GtkTreeView* treeView, int column) c_gtk_tree_view_set_tooltip_column;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_tree_view_set_tooltip_row;
	void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_dest;
	void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_source;

	// gtk.TreeViewColumn

	GType function() c_gtk_tree_view_column_get_type;
	GtkTreeViewColumn* function() c_gtk_tree_view_column_new;
	GtkTreeViewColumn* function(GtkCellArea* area) c_gtk_tree_view_column_new_with_area;
	GtkTreeViewColumn* function(const(char)* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_column_new_with_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, const(char)* attribute, int column) c_gtk_tree_view_column_add_attribute;
	int function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, int* xOffset, int* width) c_gtk_tree_view_column_cell_get_position;
	void function(GtkTreeViewColumn* treeColumn, int* xOffset, int* yOffset, int* width, int* height) c_gtk_tree_view_column_cell_get_size;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_cell_is_visible;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeModel* treeModel, GtkTreeIter* iter, int isExpander, int isExpanded) c_gtk_tree_view_column_cell_set_cell_data;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clear;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer) c_gtk_tree_view_column_clear_attributes;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clicked;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell) c_gtk_tree_view_column_focus_cell;
	float function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_alignment;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_button;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_clickable;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_expand;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_fixed_width;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_max_width;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_min_width;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_reorderable;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_resizable;
	GtkTreeViewColumnSizing function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sizing;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_column_id;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_indicator;
	GtkSortType function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_order;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_spacing;
	const(char)* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_title;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_tree_view;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_visible;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_widget;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_width;
	int function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_x_offset;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, int expand) c_gtk_tree_view_column_pack_end;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, int expand) c_gtk_tree_view_column_pack_start;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_queue_resize;
	void function(GtkTreeViewColumn* treeColumn, float xalign) c_gtk_tree_view_column_set_alignment;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, ... ) c_gtk_tree_view_column_set_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, GtkTreeCellDataFunc func, void* funcData, GDestroyNotify destroy) c_gtk_tree_view_column_set_cell_data_func;
	void function(GtkTreeViewColumn* treeColumn, int clickable) c_gtk_tree_view_column_set_clickable;
	void function(GtkTreeViewColumn* treeColumn, int expand) c_gtk_tree_view_column_set_expand;
	void function(GtkTreeViewColumn* treeColumn, int fixedWidth) c_gtk_tree_view_column_set_fixed_width;
	void function(GtkTreeViewColumn* treeColumn, int maxWidth) c_gtk_tree_view_column_set_max_width;
	void function(GtkTreeViewColumn* treeColumn, int minWidth) c_gtk_tree_view_column_set_min_width;
	void function(GtkTreeViewColumn* treeColumn, int reorderable) c_gtk_tree_view_column_set_reorderable;
	void function(GtkTreeViewColumn* treeColumn, int resizable) c_gtk_tree_view_column_set_resizable;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeViewColumnSizing type) c_gtk_tree_view_column_set_sizing;
	void function(GtkTreeViewColumn* treeColumn, int sortColumnId) c_gtk_tree_view_column_set_sort_column_id;
	void function(GtkTreeViewColumn* treeColumn, int setting) c_gtk_tree_view_column_set_sort_indicator;
	void function(GtkTreeViewColumn* treeColumn, GtkSortType order) c_gtk_tree_view_column_set_sort_order;
	void function(GtkTreeViewColumn* treeColumn, int spacing) c_gtk_tree_view_column_set_spacing;
	void function(GtkTreeViewColumn* treeColumn, const(char)* title) c_gtk_tree_view_column_set_title;
	void function(GtkTreeViewColumn* treeColumn, int visible) c_gtk_tree_view_column_set_visible;
	void function(GtkTreeViewColumn* treeColumn, GtkWidget* widget) c_gtk_tree_view_column_set_widget;

	// gtk.Video

	GType function() c_gtk_video_get_type;
	GtkWidget* function() c_gtk_video_new;
	GtkWidget* function(GFile* file) c_gtk_video_new_for_file;
	GtkWidget* function(char* filename) c_gtk_video_new_for_filename;
	GtkWidget* function(GtkMediaStream* stream) c_gtk_video_new_for_media_stream;
	GtkWidget* function(const(char)* resourcePath) c_gtk_video_new_for_resource;
	int function(GtkVideo* self) c_gtk_video_get_autoplay;
	GFile* function(GtkVideo* self) c_gtk_video_get_file;
	int function(GtkVideo* self) c_gtk_video_get_loop;
	GtkMediaStream* function(GtkVideo* self) c_gtk_video_get_media_stream;
	void function(GtkVideo* self, int autoplay) c_gtk_video_set_autoplay;
	void function(GtkVideo* self, GFile* file) c_gtk_video_set_file;
	void function(GtkVideo* self, char* filename) c_gtk_video_set_filename;
	void function(GtkVideo* self, int loop) c_gtk_video_set_loop;
	void function(GtkVideo* self, GtkMediaStream* stream) c_gtk_video_set_media_stream;
	void function(GtkVideo* self, const(char)* resourcePath) c_gtk_video_set_resource;

	// gtk.Viewport

	GType function() c_gtk_viewport_get_type;
	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_viewport_new;
	GtkWidget* function(GtkViewport* viewport) c_gtk_viewport_get_child;
	int function(GtkViewport* viewport) c_gtk_viewport_get_scroll_to_focus;
	void function(GtkViewport* viewport, GtkWidget* child) c_gtk_viewport_set_child;
	void function(GtkViewport* viewport, int scrollToFocus) c_gtk_viewport_set_scroll_to_focus;

	// gtk.VolumeButton

	GType function() c_gtk_volume_button_get_type;
	GtkWidget* function() c_gtk_volume_button_new;

	// gtk.Widget

	GType function() c_gtk_widget_get_type;
	GtkTextDirection function() c_gtk_widget_get_default_direction;
	void function(GtkTextDirection dir) c_gtk_widget_set_default_direction;
	void function(GtkWidget* widget, const(char)* actionName, int enabled) c_gtk_widget_action_set_enabled;
	int function(GtkWidget* widget) c_gtk_widget_activate;
	int function(GtkWidget* widget, const(char)* name, const(char)* formatString, ... ) c_gtk_widget_activate_action;
	int function(GtkWidget* widget, const(char)* name, GVariant* args) c_gtk_widget_activate_action_variant;
	void function(GtkWidget* widget) c_gtk_widget_activate_default;
	void function(GtkWidget* widget, GtkEventController* controller) c_gtk_widget_add_controller;
	void function(GtkWidget* widget, const(char)* cssClass) c_gtk_widget_add_css_class;
	void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_add_mnemonic_label;
	uint function(GtkWidget* widget, GtkTickCallback callback, void* userData, GDestroyNotify notify) c_gtk_widget_add_tick_callback;
	void function(GtkWidget* widget, int width, int height, int baseline, GskTransform* transform) c_gtk_widget_allocate;
	int function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_child_focus;
	int function(GtkWidget* widget, GtkWidget* target, graphene_rect_t* outBounds) c_gtk_widget_compute_bounds;
	int function(GtkWidget* widget, GtkOrientation orientation) c_gtk_widget_compute_expand;
	int function(GtkWidget* widget, GtkWidget* target, graphene_point_t* point, graphene_point_t* outPoint) c_gtk_widget_compute_point;
	int function(GtkWidget* widget, GtkWidget* target, graphene_matrix_t* outTransform) c_gtk_widget_compute_transform;
	int function(GtkWidget* widget, double x, double y) c_gtk_widget_contains;
	PangoContext* function(GtkWidget* widget) c_gtk_widget_create_pango_context;
	PangoLayout* function(GtkWidget* widget, const(char)* text) c_gtk_widget_create_pango_layout;
	int function(GtkWidget* widget, int startX, int startY, int currentX, int currentY) c_gtk_drag_check_threshold;
	void function(GtkWidget* widget) c_gtk_widget_error_bell;
	int function(GtkWidget* widget) c_gtk_widget_get_allocated_baseline;
	int function(GtkWidget* widget) c_gtk_widget_get_allocated_height;
	int function(GtkWidget* widget) c_gtk_widget_get_allocated_width;
	void function(GtkWidget* widget, GtkAllocation* allocation) c_gtk_widget_get_allocation;
	GtkWidget* function(GtkWidget* widget, GType widgetType) c_gtk_widget_get_ancestor;
	int function(GtkWidget* widget) c_gtk_widget_get_can_focus;
	int function(GtkWidget* widget) c_gtk_widget_get_can_target;
	int function(GtkWidget* widget) c_gtk_widget_get_child_visible;
	GdkClipboard* function(GtkWidget* widget) c_gtk_widget_get_clipboard;
	char** function(GtkWidget* widget) c_gtk_widget_get_css_classes;
	const(char)* function(GtkWidget* self) c_gtk_widget_get_css_name;
	GdkCursor* function(GtkWidget* widget) c_gtk_widget_get_cursor;
	GtkTextDirection function(GtkWidget* widget) c_gtk_widget_get_direction;
	GdkDisplay* function(GtkWidget* widget) c_gtk_widget_get_display;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_first_child;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_focus_child;
	int function(GtkWidget* widget) c_gtk_widget_get_focus_on_click;
	int function(GtkWidget* widget) c_gtk_widget_get_focusable;
	PangoFontMap* function(GtkWidget* widget) c_gtk_widget_get_font_map;
	cairo_font_options_t* function(GtkWidget* widget) c_gtk_widget_get_font_options;
	GdkFrameClock* function(GtkWidget* widget) c_gtk_widget_get_frame_clock;
	GtkAlign function(GtkWidget* widget) c_gtk_widget_get_halign;
	int function(GtkWidget* widget) c_gtk_widget_get_has_tooltip;
	int function(GtkWidget* widget) c_gtk_widget_get_height;
	int function(GtkWidget* widget) c_gtk_widget_get_hexpand;
	int function(GtkWidget* widget) c_gtk_widget_get_hexpand_set;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_last_child;
	GtkLayoutManager* function(GtkWidget* widget) c_gtk_widget_get_layout_manager;
	int function(GtkWidget* widget) c_gtk_widget_get_mapped;
	int function(GtkWidget* widget) c_gtk_widget_get_margin_bottom;
	int function(GtkWidget* widget) c_gtk_widget_get_margin_end;
	int function(GtkWidget* widget) c_gtk_widget_get_margin_start;
	int function(GtkWidget* widget) c_gtk_widget_get_margin_top;
	const(char)* function(GtkWidget* widget) c_gtk_widget_get_name;
	GtkNative* function(GtkWidget* widget) c_gtk_widget_get_native;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_next_sibling;
	double function(GtkWidget* widget) c_gtk_widget_get_opacity;
	GtkOverflow function(GtkWidget* widget) c_gtk_widget_get_overflow;
	PangoContext* function(GtkWidget* widget) c_gtk_widget_get_pango_context;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_parent;
	void function(GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize) c_gtk_widget_get_preferred_size;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_prev_sibling;
	GdkClipboard* function(GtkWidget* widget) c_gtk_widget_get_primary_clipboard;
	int function(GtkWidget* widget) c_gtk_widget_get_realized;
	int function(GtkWidget* widget) c_gtk_widget_get_receives_default;
	GtkSizeRequestMode function(GtkWidget* widget) c_gtk_widget_get_request_mode;
	GtkRoot* function(GtkWidget* widget) c_gtk_widget_get_root;
	int function(GtkWidget* widget) c_gtk_widget_get_scale_factor;
	int function(GtkWidget* widget) c_gtk_widget_get_sensitive;
	GtkSettings* function(GtkWidget* widget) c_gtk_widget_get_settings;
	int function(GtkWidget* widget, GtkOrientation orientation) c_gtk_widget_get_size;
	void function(GtkWidget* widget, int* width, int* height) c_gtk_widget_get_size_request;
	GtkStateFlags function(GtkWidget* widget) c_gtk_widget_get_state_flags;
	GtkStyleContext* function(GtkWidget* widget) c_gtk_widget_get_style_context;
	GObject* function(GtkWidget* widget, GType widgetType, const(char)* name) c_gtk_widget_get_template_child;
	const(char)* function(GtkWidget* widget) c_gtk_widget_get_tooltip_markup;
	const(char)* function(GtkWidget* widget) c_gtk_widget_get_tooltip_text;
	GtkAlign function(GtkWidget* widget) c_gtk_widget_get_valign;
	int function(GtkWidget* widget) c_gtk_widget_get_vexpand;
	int function(GtkWidget* widget) c_gtk_widget_get_vexpand_set;
	int function(GtkWidget* widget) c_gtk_widget_get_visible;
	int function(GtkWidget* widget) c_gtk_widget_get_width;
	int function(GtkWidget* widget) c_gtk_widget_grab_focus;
	int function(GtkWidget* widget, const(char)* cssClass) c_gtk_widget_has_css_class;
	int function(GtkWidget* widget) c_gtk_widget_has_default;
	int function(GtkWidget* widget) c_gtk_widget_has_focus;
	int function(GtkWidget* widget) c_gtk_widget_has_visible_focus;
	void function(GtkWidget* widget) c_gtk_widget_hide;
	int function(GtkWidget* widget) c_gtk_widget_in_destruction;
	void function(GtkWidget* widget) c_gtk_widget_init_template;
	void function(GtkWidget* widget, const(char)* name, GActionGroup* group) c_gtk_widget_insert_action_group;
	void function(GtkWidget* widget, GtkWidget* parent, GtkWidget* previousSibling) c_gtk_widget_insert_after;
	void function(GtkWidget* widget, GtkWidget* parent, GtkWidget* nextSibling) c_gtk_widget_insert_before;
	int function(GtkWidget* widget, GtkWidget* ancestor) c_gtk_widget_is_ancestor;
	int function(GtkWidget* widget) c_gtk_widget_is_drawable;
	int function(GtkWidget* widget) c_gtk_widget_is_focus;
	int function(GtkWidget* widget) c_gtk_widget_is_sensitive;
	int function(GtkWidget* widget) c_gtk_widget_is_visible;
	int function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_keynav_failed;
	GList* function(GtkWidget* widget) c_gtk_widget_list_mnemonic_labels;
	void function(GtkWidget* widget) c_gtk_widget_map;
	void function(GtkWidget* widget, GtkOrientation orientation, int forSize, int* minimum, int* natural, int* minimumBaseline, int* naturalBaseline) c_gtk_widget_measure;
	int function(GtkWidget* widget, int groupCycling) c_gtk_widget_mnemonic_activate;
	GListModel* function(GtkWidget* widget) c_gtk_widget_observe_children;
	GListModel* function(GtkWidget* widget) c_gtk_widget_observe_controllers;
	GtkWidget* function(GtkWidget* widget, double x, double y, GtkPickFlags flags) c_gtk_widget_pick;
	void function(GtkWidget* widget) c_gtk_widget_queue_allocate;
	void function(GtkWidget* widget) c_gtk_widget_queue_draw;
	void function(GtkWidget* widget) c_gtk_widget_queue_resize;
	void function(GtkWidget* widget) c_gtk_widget_realize;
	void function(GtkWidget* widget, GtkEventController* controller) c_gtk_widget_remove_controller;
	void function(GtkWidget* widget, const(char)* cssClass) c_gtk_widget_remove_css_class;
	void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_remove_mnemonic_label;
	void function(GtkWidget* widget, uint id) c_gtk_widget_remove_tick_callback;
	void function(GtkWidget* widget, int canFocus) c_gtk_widget_set_can_focus;
	void function(GtkWidget* widget, int canTarget) c_gtk_widget_set_can_target;
	void function(GtkWidget* widget, int childVisible) c_gtk_widget_set_child_visible;
	void function(GtkWidget* widget, char** classes) c_gtk_widget_set_css_classes;
	void function(GtkWidget* widget, GdkCursor* cursor) c_gtk_widget_set_cursor;
	void function(GtkWidget* widget, const(char)* name) c_gtk_widget_set_cursor_from_name;
	void function(GtkWidget* widget, GtkTextDirection dir) c_gtk_widget_set_direction;
	void function(GtkWidget* widget, GtkWidget* child) c_gtk_widget_set_focus_child;
	void function(GtkWidget* widget, int focusOnClick) c_gtk_widget_set_focus_on_click;
	void function(GtkWidget* widget, int focusable) c_gtk_widget_set_focusable;
	void function(GtkWidget* widget, PangoFontMap* fontMap) c_gtk_widget_set_font_map;
	void function(GtkWidget* widget, cairo_font_options_t* options) c_gtk_widget_set_font_options;
	void function(GtkWidget* widget, GtkAlign align_) c_gtk_widget_set_halign;
	void function(GtkWidget* widget, int hasTooltip) c_gtk_widget_set_has_tooltip;
	void function(GtkWidget* widget, int expand) c_gtk_widget_set_hexpand;
	void function(GtkWidget* widget, int set) c_gtk_widget_set_hexpand_set;
	void function(GtkWidget* widget, GtkLayoutManager* layoutManager) c_gtk_widget_set_layout_manager;
	void function(GtkWidget* widget, int margin) c_gtk_widget_set_margin_bottom;
	void function(GtkWidget* widget, int margin) c_gtk_widget_set_margin_end;
	void function(GtkWidget* widget, int margin) c_gtk_widget_set_margin_start;
	void function(GtkWidget* widget, int margin) c_gtk_widget_set_margin_top;
	void function(GtkWidget* widget, const(char)* name) c_gtk_widget_set_name;
	void function(GtkWidget* widget, double opacity) c_gtk_widget_set_opacity;
	void function(GtkWidget* widget, GtkOverflow overflow) c_gtk_widget_set_overflow;
	void function(GtkWidget* widget, GtkWidget* parent) c_gtk_widget_set_parent;
	void function(GtkWidget* widget, int receivesDefault) c_gtk_widget_set_receives_default;
	void function(GtkWidget* widget, int sensitive) c_gtk_widget_set_sensitive;
	void function(GtkWidget* widget, int width, int height) c_gtk_widget_set_size_request;
	void function(GtkWidget* widget, GtkStateFlags flags, int clear) c_gtk_widget_set_state_flags;
	void function(GtkWidget* widget, const(char)* markup) c_gtk_widget_set_tooltip_markup;
	void function(GtkWidget* widget, const(char)* text) c_gtk_widget_set_tooltip_text;
	void function(GtkWidget* widget, GtkAlign align_) c_gtk_widget_set_valign;
	void function(GtkWidget* widget, int expand) c_gtk_widget_set_vexpand;
	void function(GtkWidget* widget, int set) c_gtk_widget_set_vexpand_set;
	void function(GtkWidget* widget, int visible) c_gtk_widget_set_visible;
	int function(GtkWidget* widget) c_gtk_widget_should_layout;
	void function(GtkWidget* widget) c_gtk_widget_show;
	void function(GtkWidget* widget, GtkAllocation* allocation, int baseline) c_gtk_widget_size_allocate;
	void function(GtkWidget* widget, GtkWidget* child, GtkSnapshot* snapshot) c_gtk_widget_snapshot_child;
	int function(GtkWidget* srcWidget, GtkWidget* destWidget, double srcX, double srcY, double* destX, double* destY) c_gtk_widget_translate_coordinates;
	void function(GtkWidget* widget) c_gtk_widget_trigger_tooltip_query;
	void function(GtkWidget* widget) c_gtk_widget_unmap;
	void function(GtkWidget* widget) c_gtk_widget_unparent;
	void function(GtkWidget* widget) c_gtk_widget_unrealize;
	void function(GtkWidget* widget, GtkStateFlags flags) c_gtk_widget_unset_state_flags;

	// gtk.WidgetClass

	void function(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, GtkShortcutFunc callback, const(char)* formatString, ... ) c_gtk_widget_class_add_binding;
	void function(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, const(char)* actionName, const(char)* formatString, ... ) c_gtk_widget_class_add_binding_action;
	void function(GtkWidgetClass* widgetClass, uint keyval, GdkModifierType mods, const(char)* signal, const(char)* formatString, ... ) c_gtk_widget_class_add_binding_signal;
	void function(GtkWidgetClass* widgetClass, GtkShortcut* shortcut) c_gtk_widget_class_add_shortcut;
	void function(GtkWidgetClass* widgetClass, const(char)* callbackName, GCallback callbackSymbol) c_gtk_widget_class_bind_template_callback_full;
	void function(GtkWidgetClass* widgetClass, const(char)* name, int internalChild, ptrdiff_t structOffset) c_gtk_widget_class_bind_template_child_full;
	GtkAccessibleRole function(GtkWidgetClass* widgetClass) c_gtk_widget_class_get_accessible_role;
	uint function(GtkWidgetClass* widgetClass) c_gtk_widget_class_get_activate_signal;
	const(char)* function(GtkWidgetClass* widgetClass) c_gtk_widget_class_get_css_name;
	GType function(GtkWidgetClass* widgetClass) c_gtk_widget_class_get_layout_manager_type;
	void function(GtkWidgetClass* widgetClass, const(char)* actionName, const(char)* parameterType, GtkWidgetActionActivateFunc activate) c_gtk_widget_class_install_action;
	void function(GtkWidgetClass* widgetClass, const(char)* actionName, const(char)* propertyName) c_gtk_widget_class_install_property_action;
	int function(GtkWidgetClass* widgetClass, uint index, GType* owner, char** actionName, GVariantType** parameterType, char** propertyName) c_gtk_widget_class_query_action;
	void function(GtkWidgetClass* widgetClass, GtkAccessibleRole accessibleRole) c_gtk_widget_class_set_accessible_role;
	void function(GtkWidgetClass* widgetClass, uint signalId) c_gtk_widget_class_set_activate_signal;
	void function(GtkWidgetClass* widgetClass, const(char)* signalName) c_gtk_widget_class_set_activate_signal_from_name;
	void function(GtkWidgetClass* widgetClass, const(char)* name) c_gtk_widget_class_set_css_name;
	void function(GtkWidgetClass* widgetClass, GType type) c_gtk_widget_class_set_layout_manager_type;
	void function(GtkWidgetClass* widgetClass, GBytes* templateBytes) c_gtk_widget_class_set_template;
	void function(GtkWidgetClass* widgetClass, const(char)* resourceName) c_gtk_widget_class_set_template_from_resource;
	void function(GtkWidgetClass* widgetClass, GtkBuilderScope* scope_) c_gtk_widget_class_set_template_scope;

	// gtk.WidgetPaintable

	GType function() c_gtk_widget_paintable_get_type;
	GdkPaintable* function(GtkWidget* widget) c_gtk_widget_paintable_new;
	GtkWidget* function(GtkWidgetPaintable* self) c_gtk_widget_paintable_get_widget;
	void function(GtkWidgetPaintable* self, GtkWidget* widget) c_gtk_widget_paintable_set_widget;

	// gtk.Window

	GType function() c_gtk_window_get_type;
	GtkWidget* function() c_gtk_window_new;
	const(char)* function() c_gtk_window_get_default_icon_name;
	GListModel* function() c_gtk_window_get_toplevels;
	GList* function() c_gtk_window_list_toplevels;
	void function(int setting) c_gtk_window_set_auto_startup_notification;
	void function(const(char)* name) c_gtk_window_set_default_icon_name;
	void function(int enable) c_gtk_window_set_interactive_debugging;
	void function(GtkWindow* window) c_gtk_window_close;
	void function(GtkWindow* window) c_gtk_window_destroy;
	void function(GtkWindow* window) c_gtk_window_fullscreen;
	void function(GtkWindow* window, GdkMonitor* monitor) c_gtk_window_fullscreen_on_monitor;
	GtkApplication* function(GtkWindow* window) c_gtk_window_get_application;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_child;
	int function(GtkWindow* window) c_gtk_window_get_decorated;
	void function(GtkWindow* window, int* width, int* height) c_gtk_window_get_default_size;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_default_widget;
	int function(GtkWindow* window) c_gtk_window_get_deletable;
	int function(GtkWindow* window) c_gtk_window_get_destroy_with_parent;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_focus;
	int function(GtkWindow* window) c_gtk_window_get_focus_visible;
	GtkWindowGroup* function(GtkWindow* window) c_gtk_window_get_group;
	int function(GtkWindow* window) c_gtk_window_get_handle_menubar_accel;
	int function(GtkWindow* window) c_gtk_window_get_hide_on_close;
	const(char)* function(GtkWindow* window) c_gtk_window_get_icon_name;
	int function(GtkWindow* window) c_gtk_window_get_mnemonics_visible;
	int function(GtkWindow* window) c_gtk_window_get_modal;
	int function(GtkWindow* window) c_gtk_window_get_resizable;
	const(char)* function(GtkWindow* window) c_gtk_window_get_title;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_titlebar;
	GtkWindow* function(GtkWindow* window) c_gtk_window_get_transient_for;
	int function(GtkWindow* window) c_gtk_window_has_group;
	int function(GtkWindow* window) c_gtk_window_is_active;
	int function(GtkWindow* window) c_gtk_window_is_fullscreen;
	int function(GtkWindow* window) c_gtk_window_is_maximized;
	void function(GtkWindow* window) c_gtk_window_maximize;
	void function(GtkWindow* window) c_gtk_window_minimize;
	void function(GtkWindow* window) c_gtk_window_present;
	void function(GtkWindow* window, uint timestamp) c_gtk_window_present_with_time;
	void function(GtkWindow* window, GtkApplication* application) c_gtk_window_set_application;
	void function(GtkWindow* window, GtkWidget* child) c_gtk_window_set_child;
	void function(GtkWindow* window, int setting) c_gtk_window_set_decorated;
	void function(GtkWindow* window, int width, int height) c_gtk_window_set_default_size;
	void function(GtkWindow* window, GtkWidget* defaultWidget) c_gtk_window_set_default_widget;
	void function(GtkWindow* window, int setting) c_gtk_window_set_deletable;
	void function(GtkWindow* window, int setting) c_gtk_window_set_destroy_with_parent;
	void function(GtkWindow* window, GdkDisplay* display) c_gtk_window_set_display;
	void function(GtkWindow* window, GtkWidget* focus) c_gtk_window_set_focus;
	void function(GtkWindow* window, int setting) c_gtk_window_set_focus_visible;
	void function(GtkWindow* window, int handleMenubarAccel) c_gtk_window_set_handle_menubar_accel;
	void function(GtkWindow* window, int setting) c_gtk_window_set_hide_on_close;
	void function(GtkWindow* window, const(char)* name) c_gtk_window_set_icon_name;
	void function(GtkWindow* window, int setting) c_gtk_window_set_mnemonics_visible;
	void function(GtkWindow* window, int modal) c_gtk_window_set_modal;
	void function(GtkWindow* window, int resizable) c_gtk_window_set_resizable;
	void function(GtkWindow* window, const(char)* startupId) c_gtk_window_set_startup_id;
	void function(GtkWindow* window, const(char)* title) c_gtk_window_set_title;
	void function(GtkWindow* window, GtkWidget* titlebar) c_gtk_window_set_titlebar;
	void function(GtkWindow* window, GtkWindow* parent) c_gtk_window_set_transient_for;
	void function(GtkWindow* window) c_gtk_window_unfullscreen;
	void function(GtkWindow* window) c_gtk_window_unmaximize;
	void function(GtkWindow* window) c_gtk_window_unminimize;

	// gtk.WindowControls

	GType function() c_gtk_window_controls_get_type;
	GtkWidget* function(GtkPackType side) c_gtk_window_controls_new;
	const(char)* function(GtkWindowControls* self) c_gtk_window_controls_get_decoration_layout;
	int function(GtkWindowControls* self) c_gtk_window_controls_get_empty;
	GtkPackType function(GtkWindowControls* self) c_gtk_window_controls_get_side;
	void function(GtkWindowControls* self, const(char)* layout) c_gtk_window_controls_set_decoration_layout;
	void function(GtkWindowControls* self, GtkPackType side) c_gtk_window_controls_set_side;

	// gtk.WindowGroup

	GType function() c_gtk_window_group_get_type;
	GtkWindowGroup* function() c_gtk_window_group_new;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_add_window;
	GList* function(GtkWindowGroup* windowGroup) c_gtk_window_group_list_windows;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_remove_window;

	// gtk.WindowHandle

	GType function() c_gtk_window_handle_get_type;
	GtkWidget* function() c_gtk_window_handle_new;
	GtkWidget* function(GtkWindowHandle* self) c_gtk_window_handle_get_child;
	void function(GtkWindowHandle* self, GtkWidget* child) c_gtk_window_handle_set_child;
}


// gtk.ATContext

alias c_gtk_at_context_get_type gtk_at_context_get_type;
alias c_gtk_at_context_create gtk_at_context_create;
alias c_gtk_at_context_get_accessible gtk_at_context_get_accessible;
alias c_gtk_at_context_get_accessible_role gtk_at_context_get_accessible_role;

// gtk.AboutDialog

alias c_gtk_about_dialog_get_type gtk_about_dialog_get_type;
alias c_gtk_about_dialog_new gtk_about_dialog_new;
alias c_gtk_about_dialog_add_credit_section gtk_about_dialog_add_credit_section;
alias c_gtk_about_dialog_get_artists gtk_about_dialog_get_artists;
alias c_gtk_about_dialog_get_authors gtk_about_dialog_get_authors;
alias c_gtk_about_dialog_get_comments gtk_about_dialog_get_comments;
alias c_gtk_about_dialog_get_copyright gtk_about_dialog_get_copyright;
alias c_gtk_about_dialog_get_documenters gtk_about_dialog_get_documenters;
alias c_gtk_about_dialog_get_license gtk_about_dialog_get_license;
alias c_gtk_about_dialog_get_license_type gtk_about_dialog_get_license_type;
alias c_gtk_about_dialog_get_logo gtk_about_dialog_get_logo;
alias c_gtk_about_dialog_get_logo_icon_name gtk_about_dialog_get_logo_icon_name;
alias c_gtk_about_dialog_get_program_name gtk_about_dialog_get_program_name;
alias c_gtk_about_dialog_get_system_information gtk_about_dialog_get_system_information;
alias c_gtk_about_dialog_get_translator_credits gtk_about_dialog_get_translator_credits;
alias c_gtk_about_dialog_get_version gtk_about_dialog_get_version;
alias c_gtk_about_dialog_get_website gtk_about_dialog_get_website;
alias c_gtk_about_dialog_get_website_label gtk_about_dialog_get_website_label;
alias c_gtk_about_dialog_get_wrap_license gtk_about_dialog_get_wrap_license;
alias c_gtk_about_dialog_set_artists gtk_about_dialog_set_artists;
alias c_gtk_about_dialog_set_authors gtk_about_dialog_set_authors;
alias c_gtk_about_dialog_set_comments gtk_about_dialog_set_comments;
alias c_gtk_about_dialog_set_copyright gtk_about_dialog_set_copyright;
alias c_gtk_about_dialog_set_documenters gtk_about_dialog_set_documenters;
alias c_gtk_about_dialog_set_license gtk_about_dialog_set_license;
alias c_gtk_about_dialog_set_license_type gtk_about_dialog_set_license_type;
alias c_gtk_about_dialog_set_logo gtk_about_dialog_set_logo;
alias c_gtk_about_dialog_set_logo_icon_name gtk_about_dialog_set_logo_icon_name;
alias c_gtk_about_dialog_set_program_name gtk_about_dialog_set_program_name;
alias c_gtk_about_dialog_set_system_information gtk_about_dialog_set_system_information;
alias c_gtk_about_dialog_set_translator_credits gtk_about_dialog_set_translator_credits;
alias c_gtk_about_dialog_set_version gtk_about_dialog_set_version;
alias c_gtk_about_dialog_set_website gtk_about_dialog_set_website;
alias c_gtk_about_dialog_set_website_label gtk_about_dialog_set_website_label;
alias c_gtk_about_dialog_set_wrap_license gtk_about_dialog_set_wrap_license;

// gtk.Accessible

alias c_gtk_accessible_get_type gtk_accessible_get_type;
alias c_gtk_accessible_get_accessible_role gtk_accessible_get_accessible_role;
alias c_gtk_accessible_reset_property gtk_accessible_reset_property;
alias c_gtk_accessible_reset_relation gtk_accessible_reset_relation;
alias c_gtk_accessible_reset_state gtk_accessible_reset_state;
alias c_gtk_accessible_update_property gtk_accessible_update_property;
alias c_gtk_accessible_update_property_value gtk_accessible_update_property_value;
alias c_gtk_accessible_update_relation gtk_accessible_update_relation;
alias c_gtk_accessible_update_relation_value gtk_accessible_update_relation_value;
alias c_gtk_accessible_update_state gtk_accessible_update_state;
alias c_gtk_accessible_update_state_value gtk_accessible_update_state_value;

// gtk.ActionBar

alias c_gtk_action_bar_get_type gtk_action_bar_get_type;
alias c_gtk_action_bar_new gtk_action_bar_new;
alias c_gtk_action_bar_get_center_widget gtk_action_bar_get_center_widget;
alias c_gtk_action_bar_get_revealed gtk_action_bar_get_revealed;
alias c_gtk_action_bar_pack_end gtk_action_bar_pack_end;
alias c_gtk_action_bar_pack_start gtk_action_bar_pack_start;
alias c_gtk_action_bar_remove gtk_action_bar_remove;
alias c_gtk_action_bar_set_center_widget gtk_action_bar_set_center_widget;
alias c_gtk_action_bar_set_revealed gtk_action_bar_set_revealed;

// gtk.Actionable

alias c_gtk_actionable_get_type gtk_actionable_get_type;
alias c_gtk_actionable_get_action_name gtk_actionable_get_action_name;
alias c_gtk_actionable_get_action_target_value gtk_actionable_get_action_target_value;
alias c_gtk_actionable_set_action_name gtk_actionable_set_action_name;
alias c_gtk_actionable_set_action_target gtk_actionable_set_action_target;
alias c_gtk_actionable_set_action_target_value gtk_actionable_set_action_target_value;
alias c_gtk_actionable_set_detailed_action_name gtk_actionable_set_detailed_action_name;

// gtk.ActivateAction

alias c_gtk_activate_action_get_type gtk_activate_action_get_type;
alias c_gtk_activate_action_get gtk_activate_action_get;

// gtk.Adjustment

alias c_gtk_adjustment_get_type gtk_adjustment_get_type;
alias c_gtk_adjustment_new gtk_adjustment_new;
alias c_gtk_adjustment_clamp_page gtk_adjustment_clamp_page;
alias c_gtk_adjustment_configure gtk_adjustment_configure;
alias c_gtk_adjustment_get_lower gtk_adjustment_get_lower;
alias c_gtk_adjustment_get_minimum_increment gtk_adjustment_get_minimum_increment;
alias c_gtk_adjustment_get_page_increment gtk_adjustment_get_page_increment;
alias c_gtk_adjustment_get_page_size gtk_adjustment_get_page_size;
alias c_gtk_adjustment_get_step_increment gtk_adjustment_get_step_increment;
alias c_gtk_adjustment_get_upper gtk_adjustment_get_upper;
alias c_gtk_adjustment_get_value gtk_adjustment_get_value;
alias c_gtk_adjustment_set_lower gtk_adjustment_set_lower;
alias c_gtk_adjustment_set_page_increment gtk_adjustment_set_page_increment;
alias c_gtk_adjustment_set_page_size gtk_adjustment_set_page_size;
alias c_gtk_adjustment_set_step_increment gtk_adjustment_set_step_increment;
alias c_gtk_adjustment_set_upper gtk_adjustment_set_upper;
alias c_gtk_adjustment_set_value gtk_adjustment_set_value;

// gtk.AlternativeTrigger

alias c_gtk_alternative_trigger_get_type gtk_alternative_trigger_get_type;
alias c_gtk_alternative_trigger_new gtk_alternative_trigger_new;
alias c_gtk_alternative_trigger_get_first gtk_alternative_trigger_get_first;
alias c_gtk_alternative_trigger_get_second gtk_alternative_trigger_get_second;

// gtk.AnyFilter

alias c_gtk_any_filter_get_type gtk_any_filter_get_type;
alias c_gtk_any_filter_new gtk_any_filter_new;

// gtk.AppChooser

alias c_gtk_app_chooser_get_type gtk_app_chooser_get_type;
alias c_gtk_app_chooser_get_app_info gtk_app_chooser_get_app_info;
alias c_gtk_app_chooser_get_content_type gtk_app_chooser_get_content_type;
alias c_gtk_app_chooser_refresh gtk_app_chooser_refresh;

// gtk.AppChooserButton

alias c_gtk_app_chooser_button_get_type gtk_app_chooser_button_get_type;
alias c_gtk_app_chooser_button_new gtk_app_chooser_button_new;
alias c_gtk_app_chooser_button_append_custom_item gtk_app_chooser_button_append_custom_item;
alias c_gtk_app_chooser_button_append_separator gtk_app_chooser_button_append_separator;
alias c_gtk_app_chooser_button_get_heading gtk_app_chooser_button_get_heading;
alias c_gtk_app_chooser_button_get_modal gtk_app_chooser_button_get_modal;
alias c_gtk_app_chooser_button_get_show_default_item gtk_app_chooser_button_get_show_default_item;
alias c_gtk_app_chooser_button_get_show_dialog_item gtk_app_chooser_button_get_show_dialog_item;
alias c_gtk_app_chooser_button_set_active_custom_item gtk_app_chooser_button_set_active_custom_item;
alias c_gtk_app_chooser_button_set_heading gtk_app_chooser_button_set_heading;
alias c_gtk_app_chooser_button_set_modal gtk_app_chooser_button_set_modal;
alias c_gtk_app_chooser_button_set_show_default_item gtk_app_chooser_button_set_show_default_item;
alias c_gtk_app_chooser_button_set_show_dialog_item gtk_app_chooser_button_set_show_dialog_item;

// gtk.AppChooserDialog

alias c_gtk_app_chooser_dialog_get_type gtk_app_chooser_dialog_get_type;
alias c_gtk_app_chooser_dialog_new gtk_app_chooser_dialog_new;
alias c_gtk_app_chooser_dialog_new_for_content_type gtk_app_chooser_dialog_new_for_content_type;
alias c_gtk_app_chooser_dialog_get_heading gtk_app_chooser_dialog_get_heading;
alias c_gtk_app_chooser_dialog_get_widget gtk_app_chooser_dialog_get_widget;
alias c_gtk_app_chooser_dialog_set_heading gtk_app_chooser_dialog_set_heading;

// gtk.AppChooserWidget

alias c_gtk_app_chooser_widget_get_type gtk_app_chooser_widget_get_type;
alias c_gtk_app_chooser_widget_new gtk_app_chooser_widget_new;
alias c_gtk_app_chooser_widget_get_default_text gtk_app_chooser_widget_get_default_text;
alias c_gtk_app_chooser_widget_get_show_all gtk_app_chooser_widget_get_show_all;
alias c_gtk_app_chooser_widget_get_show_default gtk_app_chooser_widget_get_show_default;
alias c_gtk_app_chooser_widget_get_show_fallback gtk_app_chooser_widget_get_show_fallback;
alias c_gtk_app_chooser_widget_get_show_other gtk_app_chooser_widget_get_show_other;
alias c_gtk_app_chooser_widget_get_show_recommended gtk_app_chooser_widget_get_show_recommended;
alias c_gtk_app_chooser_widget_set_default_text gtk_app_chooser_widget_set_default_text;
alias c_gtk_app_chooser_widget_set_show_all gtk_app_chooser_widget_set_show_all;
alias c_gtk_app_chooser_widget_set_show_default gtk_app_chooser_widget_set_show_default;
alias c_gtk_app_chooser_widget_set_show_fallback gtk_app_chooser_widget_set_show_fallback;
alias c_gtk_app_chooser_widget_set_show_other gtk_app_chooser_widget_set_show_other;
alias c_gtk_app_chooser_widget_set_show_recommended gtk_app_chooser_widget_set_show_recommended;

// gtk.Application

alias c_gtk_application_get_type gtk_application_get_type;
alias c_gtk_application_new gtk_application_new;
alias c_gtk_application_add_window gtk_application_add_window;
alias c_gtk_application_get_accels_for_action gtk_application_get_accels_for_action;
alias c_gtk_application_get_actions_for_accel gtk_application_get_actions_for_accel;
alias c_gtk_application_get_active_window gtk_application_get_active_window;
alias c_gtk_application_get_menu_by_id gtk_application_get_menu_by_id;
alias c_gtk_application_get_menubar gtk_application_get_menubar;
alias c_gtk_application_get_window_by_id gtk_application_get_window_by_id;
alias c_gtk_application_get_windows gtk_application_get_windows;
alias c_gtk_application_inhibit gtk_application_inhibit;
alias c_gtk_application_list_action_descriptions gtk_application_list_action_descriptions;
alias c_gtk_application_remove_window gtk_application_remove_window;
alias c_gtk_application_set_accels_for_action gtk_application_set_accels_for_action;
alias c_gtk_application_set_menubar gtk_application_set_menubar;
alias c_gtk_application_uninhibit gtk_application_uninhibit;

// gtk.ApplicationWindow

alias c_gtk_application_window_get_type gtk_application_window_get_type;
alias c_gtk_application_window_new gtk_application_window_new;
alias c_gtk_application_window_get_help_overlay gtk_application_window_get_help_overlay;
alias c_gtk_application_window_get_id gtk_application_window_get_id;
alias c_gtk_application_window_get_show_menubar gtk_application_window_get_show_menubar;
alias c_gtk_application_window_set_help_overlay gtk_application_window_set_help_overlay;
alias c_gtk_application_window_set_show_menubar gtk_application_window_set_show_menubar;

// gtk.AspectFrame

alias c_gtk_aspect_frame_get_type gtk_aspect_frame_get_type;
alias c_gtk_aspect_frame_new gtk_aspect_frame_new;
alias c_gtk_aspect_frame_get_child gtk_aspect_frame_get_child;
alias c_gtk_aspect_frame_get_obey_child gtk_aspect_frame_get_obey_child;
alias c_gtk_aspect_frame_get_ratio gtk_aspect_frame_get_ratio;
alias c_gtk_aspect_frame_get_xalign gtk_aspect_frame_get_xalign;
alias c_gtk_aspect_frame_get_yalign gtk_aspect_frame_get_yalign;
alias c_gtk_aspect_frame_set_child gtk_aspect_frame_set_child;
alias c_gtk_aspect_frame_set_obey_child gtk_aspect_frame_set_obey_child;
alias c_gtk_aspect_frame_set_ratio gtk_aspect_frame_set_ratio;
alias c_gtk_aspect_frame_set_xalign gtk_aspect_frame_set_xalign;
alias c_gtk_aspect_frame_set_yalign gtk_aspect_frame_set_yalign;

// gtk.Assistant

alias c_gtk_assistant_get_type gtk_assistant_get_type;
alias c_gtk_assistant_new gtk_assistant_new;
alias c_gtk_assistant_add_action_widget gtk_assistant_add_action_widget;
alias c_gtk_assistant_append_page gtk_assistant_append_page;
alias c_gtk_assistant_commit gtk_assistant_commit;
alias c_gtk_assistant_get_current_page gtk_assistant_get_current_page;
alias c_gtk_assistant_get_n_pages gtk_assistant_get_n_pages;
alias c_gtk_assistant_get_nth_page gtk_assistant_get_nth_page;
alias c_gtk_assistant_get_page gtk_assistant_get_page;
alias c_gtk_assistant_get_page_complete gtk_assistant_get_page_complete;
alias c_gtk_assistant_get_page_title gtk_assistant_get_page_title;
alias c_gtk_assistant_get_page_type gtk_assistant_get_page_type;
alias c_gtk_assistant_get_pages gtk_assistant_get_pages;
alias c_gtk_assistant_insert_page gtk_assistant_insert_page;
alias c_gtk_assistant_next_page gtk_assistant_next_page;
alias c_gtk_assistant_prepend_page gtk_assistant_prepend_page;
alias c_gtk_assistant_previous_page gtk_assistant_previous_page;
alias c_gtk_assistant_remove_action_widget gtk_assistant_remove_action_widget;
alias c_gtk_assistant_remove_page gtk_assistant_remove_page;
alias c_gtk_assistant_set_current_page gtk_assistant_set_current_page;
alias c_gtk_assistant_set_forward_page_func gtk_assistant_set_forward_page_func;
alias c_gtk_assistant_set_page_complete gtk_assistant_set_page_complete;
alias c_gtk_assistant_set_page_title gtk_assistant_set_page_title;
alias c_gtk_assistant_set_page_type gtk_assistant_set_page_type;
alias c_gtk_assistant_update_buttons_state gtk_assistant_update_buttons_state;

// gtk.AssistantPage

alias c_gtk_assistant_page_get_type gtk_assistant_page_get_type;
alias c_gtk_assistant_page_get_child gtk_assistant_page_get_child;

// gtk.BinLayout

alias c_gtk_bin_layout_get_type gtk_bin_layout_get_type;
alias c_gtk_bin_layout_new gtk_bin_layout_new;

// gtk.Bitset

alias c_gtk_bitset_get_type gtk_bitset_get_type;
alias c_gtk_bitset_new_empty gtk_bitset_new_empty;
alias c_gtk_bitset_new_range gtk_bitset_new_range;
alias c_gtk_bitset_add gtk_bitset_add;
alias c_gtk_bitset_add_range gtk_bitset_add_range;
alias c_gtk_bitset_add_range_closed gtk_bitset_add_range_closed;
alias c_gtk_bitset_add_rectangle gtk_bitset_add_rectangle;
alias c_gtk_bitset_contains gtk_bitset_contains;
alias c_gtk_bitset_copy gtk_bitset_copy;
alias c_gtk_bitset_difference gtk_bitset_difference;
alias c_gtk_bitset_equals gtk_bitset_equals;
alias c_gtk_bitset_get_maximum gtk_bitset_get_maximum;
alias c_gtk_bitset_get_minimum gtk_bitset_get_minimum;
alias c_gtk_bitset_get_nth gtk_bitset_get_nth;
alias c_gtk_bitset_get_size gtk_bitset_get_size;
alias c_gtk_bitset_get_size_in_range gtk_bitset_get_size_in_range;
alias c_gtk_bitset_intersect gtk_bitset_intersect;
alias c_gtk_bitset_is_empty gtk_bitset_is_empty;
alias c_gtk_bitset_ref gtk_bitset_ref;
alias c_gtk_bitset_remove gtk_bitset_remove;
alias c_gtk_bitset_remove_all gtk_bitset_remove_all;
alias c_gtk_bitset_remove_range gtk_bitset_remove_range;
alias c_gtk_bitset_remove_range_closed gtk_bitset_remove_range_closed;
alias c_gtk_bitset_remove_rectangle gtk_bitset_remove_rectangle;
alias c_gtk_bitset_shift_left gtk_bitset_shift_left;
alias c_gtk_bitset_shift_right gtk_bitset_shift_right;
alias c_gtk_bitset_splice gtk_bitset_splice;
alias c_gtk_bitset_subtract gtk_bitset_subtract;
alias c_gtk_bitset_union gtk_bitset_union;
alias c_gtk_bitset_unref gtk_bitset_unref;

// gtk.BitsetIter

alias c_gtk_bitset_iter_get_type gtk_bitset_iter_get_type;
alias c_gtk_bitset_iter_get_value gtk_bitset_iter_get_value;
alias c_gtk_bitset_iter_is_valid gtk_bitset_iter_is_valid;
alias c_gtk_bitset_iter_next gtk_bitset_iter_next;
alias c_gtk_bitset_iter_previous gtk_bitset_iter_previous;
alias c_gtk_bitset_iter_init_at gtk_bitset_iter_init_at;
alias c_gtk_bitset_iter_init_first gtk_bitset_iter_init_first;
alias c_gtk_bitset_iter_init_last gtk_bitset_iter_init_last;

// gtk.BookmarkList

alias c_gtk_bookmark_list_get_type gtk_bookmark_list_get_type;
alias c_gtk_bookmark_list_new gtk_bookmark_list_new;
alias c_gtk_bookmark_list_get_attributes gtk_bookmark_list_get_attributes;
alias c_gtk_bookmark_list_get_filename gtk_bookmark_list_get_filename;
alias c_gtk_bookmark_list_get_io_priority gtk_bookmark_list_get_io_priority;
alias c_gtk_bookmark_list_is_loading gtk_bookmark_list_is_loading;
alias c_gtk_bookmark_list_set_attributes gtk_bookmark_list_set_attributes;
alias c_gtk_bookmark_list_set_io_priority gtk_bookmark_list_set_io_priority;

// gtk.BoolFilter

alias c_gtk_bool_filter_get_type gtk_bool_filter_get_type;
alias c_gtk_bool_filter_new gtk_bool_filter_new;
alias c_gtk_bool_filter_get_expression gtk_bool_filter_get_expression;
alias c_gtk_bool_filter_get_invert gtk_bool_filter_get_invert;
alias c_gtk_bool_filter_set_expression gtk_bool_filter_set_expression;
alias c_gtk_bool_filter_set_invert gtk_bool_filter_set_invert;

// gtk.Border

alias c_gtk_border_get_type gtk_border_get_type;
alias c_gtk_border_new gtk_border_new;
alias c_gtk_border_copy gtk_border_copy;
alias c_gtk_border_free gtk_border_free;

// gtk.Box

alias c_gtk_box_get_type gtk_box_get_type;
alias c_gtk_box_new gtk_box_new;
alias c_gtk_box_append gtk_box_append;
alias c_gtk_box_get_baseline_position gtk_box_get_baseline_position;
alias c_gtk_box_get_homogeneous gtk_box_get_homogeneous;
alias c_gtk_box_get_spacing gtk_box_get_spacing;
alias c_gtk_box_insert_child_after gtk_box_insert_child_after;
alias c_gtk_box_prepend gtk_box_prepend;
alias c_gtk_box_remove gtk_box_remove;
alias c_gtk_box_reorder_child_after gtk_box_reorder_child_after;
alias c_gtk_box_set_baseline_position gtk_box_set_baseline_position;
alias c_gtk_box_set_homogeneous gtk_box_set_homogeneous;
alias c_gtk_box_set_spacing gtk_box_set_spacing;

// gtk.BoxLayout

alias c_gtk_box_layout_get_type gtk_box_layout_get_type;
alias c_gtk_box_layout_new gtk_box_layout_new;
alias c_gtk_box_layout_get_baseline_position gtk_box_layout_get_baseline_position;
alias c_gtk_box_layout_get_homogeneous gtk_box_layout_get_homogeneous;
alias c_gtk_box_layout_get_spacing gtk_box_layout_get_spacing;
alias c_gtk_box_layout_set_baseline_position gtk_box_layout_set_baseline_position;
alias c_gtk_box_layout_set_homogeneous gtk_box_layout_set_homogeneous;
alias c_gtk_box_layout_set_spacing gtk_box_layout_set_spacing;

// gtk.Buildable

alias c_gtk_buildable_get_type gtk_buildable_get_type;
alias c_gtk_buildable_get_buildable_id gtk_buildable_get_buildable_id;

// gtk.BuildableParseContext

alias c_gtk_buildable_parse_context_get_element gtk_buildable_parse_context_get_element;
alias c_gtk_buildable_parse_context_get_element_stack gtk_buildable_parse_context_get_element_stack;
alias c_gtk_buildable_parse_context_get_position gtk_buildable_parse_context_get_position;
alias c_gtk_buildable_parse_context_pop gtk_buildable_parse_context_pop;
alias c_gtk_buildable_parse_context_push gtk_buildable_parse_context_push;

// gtk.Builder

alias c_gtk_builder_get_type gtk_builder_get_type;
alias c_gtk_builder_new gtk_builder_new;
alias c_gtk_builder_new_from_file gtk_builder_new_from_file;
alias c_gtk_builder_new_from_resource gtk_builder_new_from_resource;
alias c_gtk_builder_new_from_string gtk_builder_new_from_string;
alias c_gtk_builder_add_from_file gtk_builder_add_from_file;
alias c_gtk_builder_add_from_resource gtk_builder_add_from_resource;
alias c_gtk_builder_add_from_string gtk_builder_add_from_string;
alias c_gtk_builder_add_objects_from_file gtk_builder_add_objects_from_file;
alias c_gtk_builder_add_objects_from_resource gtk_builder_add_objects_from_resource;
alias c_gtk_builder_add_objects_from_string gtk_builder_add_objects_from_string;
alias c_gtk_builder_create_closure gtk_builder_create_closure;
alias c_gtk_builder_expose_object gtk_builder_expose_object;
alias c_gtk_builder_extend_with_template gtk_builder_extend_with_template;
alias c_gtk_builder_get_current_object gtk_builder_get_current_object;
alias c_gtk_builder_get_object gtk_builder_get_object;
alias c_gtk_builder_get_objects gtk_builder_get_objects;
alias c_gtk_builder_get_scope gtk_builder_get_scope;
alias c_gtk_builder_get_translation_domain gtk_builder_get_translation_domain;
alias c_gtk_builder_get_type_from_name gtk_builder_get_type_from_name;
alias c_gtk_builder_set_current_object gtk_builder_set_current_object;
alias c_gtk_builder_set_scope gtk_builder_set_scope;
alias c_gtk_builder_set_translation_domain gtk_builder_set_translation_domain;
alias c_gtk_builder_value_from_string gtk_builder_value_from_string;
alias c_gtk_builder_value_from_string_type gtk_builder_value_from_string_type;

// gtk.BuilderCScope

alias c_gtk_builder_cscope_get_type gtk_builder_cscope_get_type;
alias c_gtk_builder_cscope_new gtk_builder_cscope_new;
alias c_gtk_builder_cscope_add_callback_symbol gtk_builder_cscope_add_callback_symbol;
alias c_gtk_builder_cscope_add_callback_symbols gtk_builder_cscope_add_callback_symbols;
alias c_gtk_builder_cscope_lookup_callback_symbol gtk_builder_cscope_lookup_callback_symbol;

// gtk.BuilderListItemFactory

alias c_gtk_builder_list_item_factory_get_type gtk_builder_list_item_factory_get_type;
alias c_gtk_builder_list_item_factory_new_from_bytes gtk_builder_list_item_factory_new_from_bytes;
alias c_gtk_builder_list_item_factory_new_from_resource gtk_builder_list_item_factory_new_from_resource;
alias c_gtk_builder_list_item_factory_get_bytes gtk_builder_list_item_factory_get_bytes;
alias c_gtk_builder_list_item_factory_get_resource gtk_builder_list_item_factory_get_resource;
alias c_gtk_builder_list_item_factory_get_scope gtk_builder_list_item_factory_get_scope;

// gtk.BuilderScope

alias c_gtk_builder_scope_get_type gtk_builder_scope_get_type;

// gtk.Button

alias c_gtk_button_get_type gtk_button_get_type;
alias c_gtk_button_new gtk_button_new;
alias c_gtk_button_new_from_icon_name gtk_button_new_from_icon_name;
alias c_gtk_button_new_with_label gtk_button_new_with_label;
alias c_gtk_button_new_with_mnemonic gtk_button_new_with_mnemonic;
alias c_gtk_button_get_child gtk_button_get_child;
alias c_gtk_button_get_has_frame gtk_button_get_has_frame;
alias c_gtk_button_get_icon_name gtk_button_get_icon_name;
alias c_gtk_button_get_label gtk_button_get_label;
alias c_gtk_button_get_use_underline gtk_button_get_use_underline;
alias c_gtk_button_set_child gtk_button_set_child;
alias c_gtk_button_set_has_frame gtk_button_set_has_frame;
alias c_gtk_button_set_icon_name gtk_button_set_icon_name;
alias c_gtk_button_set_label gtk_button_set_label;
alias c_gtk_button_set_use_underline gtk_button_set_use_underline;

// gtk.CClosureExpression

alias c_gtk_cclosure_expression_get_type gtk_cclosure_expression_get_type;
alias c_gtk_cclosure_expression_new gtk_cclosure_expression_new;

// gtk.Calendar

alias c_gtk_calendar_get_type gtk_calendar_get_type;
alias c_gtk_calendar_new gtk_calendar_new;
alias c_gtk_calendar_clear_marks gtk_calendar_clear_marks;
alias c_gtk_calendar_get_date gtk_calendar_get_date;
alias c_gtk_calendar_get_day_is_marked gtk_calendar_get_day_is_marked;
alias c_gtk_calendar_get_show_day_names gtk_calendar_get_show_day_names;
alias c_gtk_calendar_get_show_heading gtk_calendar_get_show_heading;
alias c_gtk_calendar_get_show_week_numbers gtk_calendar_get_show_week_numbers;
alias c_gtk_calendar_mark_day gtk_calendar_mark_day;
alias c_gtk_calendar_select_day gtk_calendar_select_day;
alias c_gtk_calendar_set_show_day_names gtk_calendar_set_show_day_names;
alias c_gtk_calendar_set_show_heading gtk_calendar_set_show_heading;
alias c_gtk_calendar_set_show_week_numbers gtk_calendar_set_show_week_numbers;
alias c_gtk_calendar_unmark_day gtk_calendar_unmark_day;

// gtk.CallbackAction

alias c_gtk_callback_action_get_type gtk_callback_action_get_type;
alias c_gtk_callback_action_new gtk_callback_action_new;

// gtk.CellArea

alias c_gtk_cell_area_get_type gtk_cell_area_get_type;
alias c_gtk_cell_area_activate gtk_cell_area_activate;
alias c_gtk_cell_area_activate_cell gtk_cell_area_activate_cell;
alias c_gtk_cell_area_add gtk_cell_area_add;
alias c_gtk_cell_area_add_focus_sibling gtk_cell_area_add_focus_sibling;
alias c_gtk_cell_area_add_with_properties gtk_cell_area_add_with_properties;
alias c_gtk_cell_area_apply_attributes gtk_cell_area_apply_attributes;
alias c_gtk_cell_area_attribute_connect gtk_cell_area_attribute_connect;
alias c_gtk_cell_area_attribute_disconnect gtk_cell_area_attribute_disconnect;
alias c_gtk_cell_area_attribute_get_column gtk_cell_area_attribute_get_column;
alias c_gtk_cell_area_cell_get gtk_cell_area_cell_get;
alias c_gtk_cell_area_cell_get_property gtk_cell_area_cell_get_property;
alias c_gtk_cell_area_cell_get_valist gtk_cell_area_cell_get_valist;
alias c_gtk_cell_area_cell_set gtk_cell_area_cell_set;
alias c_gtk_cell_area_cell_set_property gtk_cell_area_cell_set_property;
alias c_gtk_cell_area_cell_set_valist gtk_cell_area_cell_set_valist;
alias c_gtk_cell_area_copy_context gtk_cell_area_copy_context;
alias c_gtk_cell_area_create_context gtk_cell_area_create_context;
alias c_gtk_cell_area_event gtk_cell_area_event;
alias c_gtk_cell_area_focus gtk_cell_area_focus;
alias c_gtk_cell_area_foreach gtk_cell_area_foreach;
alias c_gtk_cell_area_foreach_alloc gtk_cell_area_foreach_alloc;
alias c_gtk_cell_area_get_cell_allocation gtk_cell_area_get_cell_allocation;
alias c_gtk_cell_area_get_cell_at_position gtk_cell_area_get_cell_at_position;
alias c_gtk_cell_area_get_current_path_string gtk_cell_area_get_current_path_string;
alias c_gtk_cell_area_get_edit_widget gtk_cell_area_get_edit_widget;
alias c_gtk_cell_area_get_edited_cell gtk_cell_area_get_edited_cell;
alias c_gtk_cell_area_get_focus_cell gtk_cell_area_get_focus_cell;
alias c_gtk_cell_area_get_focus_from_sibling gtk_cell_area_get_focus_from_sibling;
alias c_gtk_cell_area_get_focus_siblings gtk_cell_area_get_focus_siblings;
alias c_gtk_cell_area_get_preferred_height gtk_cell_area_get_preferred_height;
alias c_gtk_cell_area_get_preferred_height_for_width gtk_cell_area_get_preferred_height_for_width;
alias c_gtk_cell_area_get_preferred_width gtk_cell_area_get_preferred_width;
alias c_gtk_cell_area_get_preferred_width_for_height gtk_cell_area_get_preferred_width_for_height;
alias c_gtk_cell_area_get_request_mode gtk_cell_area_get_request_mode;
alias c_gtk_cell_area_has_renderer gtk_cell_area_has_renderer;
alias c_gtk_cell_area_inner_cell_area gtk_cell_area_inner_cell_area;
alias c_gtk_cell_area_is_activatable gtk_cell_area_is_activatable;
alias c_gtk_cell_area_is_focus_sibling gtk_cell_area_is_focus_sibling;
alias c_gtk_cell_area_remove gtk_cell_area_remove;
alias c_gtk_cell_area_remove_focus_sibling gtk_cell_area_remove_focus_sibling;
alias c_gtk_cell_area_request_renderer gtk_cell_area_request_renderer;
alias c_gtk_cell_area_set_focus_cell gtk_cell_area_set_focus_cell;
alias c_gtk_cell_area_snapshot gtk_cell_area_snapshot;
alias c_gtk_cell_area_stop_editing gtk_cell_area_stop_editing;

// gtk.CellAreaBox

alias c_gtk_cell_area_box_get_type gtk_cell_area_box_get_type;
alias c_gtk_cell_area_box_new gtk_cell_area_box_new;
alias c_gtk_cell_area_box_get_spacing gtk_cell_area_box_get_spacing;
alias c_gtk_cell_area_box_pack_end gtk_cell_area_box_pack_end;
alias c_gtk_cell_area_box_pack_start gtk_cell_area_box_pack_start;
alias c_gtk_cell_area_box_set_spacing gtk_cell_area_box_set_spacing;

// gtk.CellAreaClass

alias c_gtk_cell_area_class_find_cell_property gtk_cell_area_class_find_cell_property;
alias c_gtk_cell_area_class_install_cell_property gtk_cell_area_class_install_cell_property;
alias c_gtk_cell_area_class_list_cell_properties gtk_cell_area_class_list_cell_properties;

// gtk.CellAreaContext

alias c_gtk_cell_area_context_get_type gtk_cell_area_context_get_type;
alias c_gtk_cell_area_context_allocate gtk_cell_area_context_allocate;
alias c_gtk_cell_area_context_get_allocation gtk_cell_area_context_get_allocation;
alias c_gtk_cell_area_context_get_area gtk_cell_area_context_get_area;
alias c_gtk_cell_area_context_get_preferred_height gtk_cell_area_context_get_preferred_height;
alias c_gtk_cell_area_context_get_preferred_height_for_width gtk_cell_area_context_get_preferred_height_for_width;
alias c_gtk_cell_area_context_get_preferred_width gtk_cell_area_context_get_preferred_width;
alias c_gtk_cell_area_context_get_preferred_width_for_height gtk_cell_area_context_get_preferred_width_for_height;
alias c_gtk_cell_area_context_push_preferred_height gtk_cell_area_context_push_preferred_height;
alias c_gtk_cell_area_context_push_preferred_width gtk_cell_area_context_push_preferred_width;
alias c_gtk_cell_area_context_reset gtk_cell_area_context_reset;

// gtk.CellEditable

alias c_gtk_cell_editable_get_type gtk_cell_editable_get_type;
alias c_gtk_cell_editable_editing_done gtk_cell_editable_editing_done;
alias c_gtk_cell_editable_remove_widget gtk_cell_editable_remove_widget;
alias c_gtk_cell_editable_start_editing gtk_cell_editable_start_editing;

// gtk.CellLayout

alias c_gtk_cell_layout_get_type gtk_cell_layout_get_type;
alias c_gtk_cell_layout_add_attribute gtk_cell_layout_add_attribute;
alias c_gtk_cell_layout_clear gtk_cell_layout_clear;
alias c_gtk_cell_layout_clear_attributes gtk_cell_layout_clear_attributes;
alias c_gtk_cell_layout_get_area gtk_cell_layout_get_area;
alias c_gtk_cell_layout_get_cells gtk_cell_layout_get_cells;
alias c_gtk_cell_layout_pack_end gtk_cell_layout_pack_end;
alias c_gtk_cell_layout_pack_start gtk_cell_layout_pack_start;
alias c_gtk_cell_layout_reorder gtk_cell_layout_reorder;
alias c_gtk_cell_layout_set_attributes gtk_cell_layout_set_attributes;
alias c_gtk_cell_layout_set_cell_data_func gtk_cell_layout_set_cell_data_func;

// gtk.CellRenderer

alias c_gtk_cell_renderer_get_type gtk_cell_renderer_get_type;
alias c_gtk_cell_renderer_activate gtk_cell_renderer_activate;
alias c_gtk_cell_renderer_get_aligned_area gtk_cell_renderer_get_aligned_area;
alias c_gtk_cell_renderer_get_alignment gtk_cell_renderer_get_alignment;
alias c_gtk_cell_renderer_get_fixed_size gtk_cell_renderer_get_fixed_size;
alias c_gtk_cell_renderer_get_is_expanded gtk_cell_renderer_get_is_expanded;
alias c_gtk_cell_renderer_get_is_expander gtk_cell_renderer_get_is_expander;
alias c_gtk_cell_renderer_get_padding gtk_cell_renderer_get_padding;
alias c_gtk_cell_renderer_get_preferred_height gtk_cell_renderer_get_preferred_height;
alias c_gtk_cell_renderer_get_preferred_height_for_width gtk_cell_renderer_get_preferred_height_for_width;
alias c_gtk_cell_renderer_get_preferred_size gtk_cell_renderer_get_preferred_size;
alias c_gtk_cell_renderer_get_preferred_width gtk_cell_renderer_get_preferred_width;
alias c_gtk_cell_renderer_get_preferred_width_for_height gtk_cell_renderer_get_preferred_width_for_height;
alias c_gtk_cell_renderer_get_request_mode gtk_cell_renderer_get_request_mode;
alias c_gtk_cell_renderer_get_sensitive gtk_cell_renderer_get_sensitive;
alias c_gtk_cell_renderer_get_state gtk_cell_renderer_get_state;
alias c_gtk_cell_renderer_get_visible gtk_cell_renderer_get_visible;
alias c_gtk_cell_renderer_is_activatable gtk_cell_renderer_is_activatable;
alias c_gtk_cell_renderer_set_alignment gtk_cell_renderer_set_alignment;
alias c_gtk_cell_renderer_set_fixed_size gtk_cell_renderer_set_fixed_size;
alias c_gtk_cell_renderer_set_is_expanded gtk_cell_renderer_set_is_expanded;
alias c_gtk_cell_renderer_set_is_expander gtk_cell_renderer_set_is_expander;
alias c_gtk_cell_renderer_set_padding gtk_cell_renderer_set_padding;
alias c_gtk_cell_renderer_set_sensitive gtk_cell_renderer_set_sensitive;
alias c_gtk_cell_renderer_set_visible gtk_cell_renderer_set_visible;
alias c_gtk_cell_renderer_snapshot gtk_cell_renderer_snapshot;
alias c_gtk_cell_renderer_start_editing gtk_cell_renderer_start_editing;
alias c_gtk_cell_renderer_stop_editing gtk_cell_renderer_stop_editing;

// gtk.CellRendererAccel

alias c_gtk_cell_renderer_accel_get_type gtk_cell_renderer_accel_get_type;
alias c_gtk_cell_renderer_accel_new gtk_cell_renderer_accel_new;

// gtk.CellRendererCombo

alias c_gtk_cell_renderer_combo_get_type gtk_cell_renderer_combo_get_type;
alias c_gtk_cell_renderer_combo_new gtk_cell_renderer_combo_new;

// gtk.CellRendererPixbuf

alias c_gtk_cell_renderer_pixbuf_get_type gtk_cell_renderer_pixbuf_get_type;
alias c_gtk_cell_renderer_pixbuf_new gtk_cell_renderer_pixbuf_new;

// gtk.CellRendererProgress

alias c_gtk_cell_renderer_progress_get_type gtk_cell_renderer_progress_get_type;
alias c_gtk_cell_renderer_progress_new gtk_cell_renderer_progress_new;

// gtk.CellRendererSpin

alias c_gtk_cell_renderer_spin_get_type gtk_cell_renderer_spin_get_type;
alias c_gtk_cell_renderer_spin_new gtk_cell_renderer_spin_new;

// gtk.CellRendererSpinner

alias c_gtk_cell_renderer_spinner_get_type gtk_cell_renderer_spinner_get_type;
alias c_gtk_cell_renderer_spinner_new gtk_cell_renderer_spinner_new;

// gtk.CellRendererText

alias c_gtk_cell_renderer_text_get_type gtk_cell_renderer_text_get_type;
alias c_gtk_cell_renderer_text_new gtk_cell_renderer_text_new;
alias c_gtk_cell_renderer_text_set_fixed_height_from_font gtk_cell_renderer_text_set_fixed_height_from_font;

// gtk.CellRendererToggle

alias c_gtk_cell_renderer_toggle_get_type gtk_cell_renderer_toggle_get_type;
alias c_gtk_cell_renderer_toggle_new gtk_cell_renderer_toggle_new;
alias c_gtk_cell_renderer_toggle_get_activatable gtk_cell_renderer_toggle_get_activatable;
alias c_gtk_cell_renderer_toggle_get_active gtk_cell_renderer_toggle_get_active;
alias c_gtk_cell_renderer_toggle_get_radio gtk_cell_renderer_toggle_get_radio;
alias c_gtk_cell_renderer_toggle_set_activatable gtk_cell_renderer_toggle_set_activatable;
alias c_gtk_cell_renderer_toggle_set_active gtk_cell_renderer_toggle_set_active;
alias c_gtk_cell_renderer_toggle_set_radio gtk_cell_renderer_toggle_set_radio;

// gtk.CellView

alias c_gtk_cell_view_get_type gtk_cell_view_get_type;
alias c_gtk_cell_view_new gtk_cell_view_new;
alias c_gtk_cell_view_new_with_context gtk_cell_view_new_with_context;
alias c_gtk_cell_view_new_with_markup gtk_cell_view_new_with_markup;
alias c_gtk_cell_view_new_with_text gtk_cell_view_new_with_text;
alias c_gtk_cell_view_new_with_texture gtk_cell_view_new_with_texture;
alias c_gtk_cell_view_get_displayed_row gtk_cell_view_get_displayed_row;
alias c_gtk_cell_view_get_draw_sensitive gtk_cell_view_get_draw_sensitive;
alias c_gtk_cell_view_get_fit_model gtk_cell_view_get_fit_model;
alias c_gtk_cell_view_get_model gtk_cell_view_get_model;
alias c_gtk_cell_view_set_displayed_row gtk_cell_view_set_displayed_row;
alias c_gtk_cell_view_set_draw_sensitive gtk_cell_view_set_draw_sensitive;
alias c_gtk_cell_view_set_fit_model gtk_cell_view_set_fit_model;
alias c_gtk_cell_view_set_model gtk_cell_view_set_model;

// gtk.CenterBox

alias c_gtk_center_box_get_type gtk_center_box_get_type;
alias c_gtk_center_box_new gtk_center_box_new;
alias c_gtk_center_box_get_baseline_position gtk_center_box_get_baseline_position;
alias c_gtk_center_box_get_center_widget gtk_center_box_get_center_widget;
alias c_gtk_center_box_get_end_widget gtk_center_box_get_end_widget;
alias c_gtk_center_box_get_start_widget gtk_center_box_get_start_widget;
alias c_gtk_center_box_set_baseline_position gtk_center_box_set_baseline_position;
alias c_gtk_center_box_set_center_widget gtk_center_box_set_center_widget;
alias c_gtk_center_box_set_end_widget gtk_center_box_set_end_widget;
alias c_gtk_center_box_set_start_widget gtk_center_box_set_start_widget;

// gtk.CenterLayout

alias c_gtk_center_layout_get_type gtk_center_layout_get_type;
alias c_gtk_center_layout_new gtk_center_layout_new;
alias c_gtk_center_layout_get_baseline_position gtk_center_layout_get_baseline_position;
alias c_gtk_center_layout_get_center_widget gtk_center_layout_get_center_widget;
alias c_gtk_center_layout_get_end_widget gtk_center_layout_get_end_widget;
alias c_gtk_center_layout_get_orientation gtk_center_layout_get_orientation;
alias c_gtk_center_layout_get_start_widget gtk_center_layout_get_start_widget;
alias c_gtk_center_layout_set_baseline_position gtk_center_layout_set_baseline_position;
alias c_gtk_center_layout_set_center_widget gtk_center_layout_set_center_widget;
alias c_gtk_center_layout_set_end_widget gtk_center_layout_set_end_widget;
alias c_gtk_center_layout_set_orientation gtk_center_layout_set_orientation;
alias c_gtk_center_layout_set_start_widget gtk_center_layout_set_start_widget;

// gtk.CheckButton

alias c_gtk_check_button_get_type gtk_check_button_get_type;
alias c_gtk_check_button_new gtk_check_button_new;
alias c_gtk_check_button_new_with_label gtk_check_button_new_with_label;
alias c_gtk_check_button_new_with_mnemonic gtk_check_button_new_with_mnemonic;
alias c_gtk_check_button_get_active gtk_check_button_get_active;
alias c_gtk_check_button_get_inconsistent gtk_check_button_get_inconsistent;
alias c_gtk_check_button_get_label gtk_check_button_get_label;
alias c_gtk_check_button_get_use_underline gtk_check_button_get_use_underline;
alias c_gtk_check_button_set_active gtk_check_button_set_active;
alias c_gtk_check_button_set_group gtk_check_button_set_group;
alias c_gtk_check_button_set_inconsistent gtk_check_button_set_inconsistent;
alias c_gtk_check_button_set_label gtk_check_button_set_label;
alias c_gtk_check_button_set_use_underline gtk_check_button_set_use_underline;

// gtk.ClosureExpression

alias c_gtk_closure_expression_get_type gtk_closure_expression_get_type;
alias c_gtk_closure_expression_new gtk_closure_expression_new;

// gtk.ColorButton

alias c_gtk_color_button_get_type gtk_color_button_get_type;
alias c_gtk_color_button_new gtk_color_button_new;
alias c_gtk_color_button_new_with_rgba gtk_color_button_new_with_rgba;
alias c_gtk_color_button_get_modal gtk_color_button_get_modal;
alias c_gtk_color_button_get_title gtk_color_button_get_title;
alias c_gtk_color_button_set_modal gtk_color_button_set_modal;
alias c_gtk_color_button_set_title gtk_color_button_set_title;

// gtk.ColorChooser

alias c_gtk_color_chooser_get_type gtk_color_chooser_get_type;
alias c_gtk_color_chooser_add_palette gtk_color_chooser_add_palette;
alias c_gtk_color_chooser_get_rgba gtk_color_chooser_get_rgba;
alias c_gtk_color_chooser_get_use_alpha gtk_color_chooser_get_use_alpha;
alias c_gtk_color_chooser_set_rgba gtk_color_chooser_set_rgba;
alias c_gtk_color_chooser_set_use_alpha gtk_color_chooser_set_use_alpha;

// gtk.ColorChooserDialog

alias c_gtk_color_chooser_dialog_get_type gtk_color_chooser_dialog_get_type;
alias c_gtk_color_chooser_dialog_new gtk_color_chooser_dialog_new;

// gtk.ColorChooserWidget

alias c_gtk_color_chooser_widget_get_type gtk_color_chooser_widget_get_type;
alias c_gtk_color_chooser_widget_new gtk_color_chooser_widget_new;

// gtk.ColumnView

alias c_gtk_column_view_get_type gtk_column_view_get_type;
alias c_gtk_column_view_new gtk_column_view_new;
alias c_gtk_column_view_append_column gtk_column_view_append_column;
alias c_gtk_column_view_get_columns gtk_column_view_get_columns;
alias c_gtk_column_view_get_enable_rubberband gtk_column_view_get_enable_rubberband;
alias c_gtk_column_view_get_model gtk_column_view_get_model;
alias c_gtk_column_view_get_reorderable gtk_column_view_get_reorderable;
alias c_gtk_column_view_get_show_column_separators gtk_column_view_get_show_column_separators;
alias c_gtk_column_view_get_show_row_separators gtk_column_view_get_show_row_separators;
alias c_gtk_column_view_get_single_click_activate gtk_column_view_get_single_click_activate;
alias c_gtk_column_view_get_sorter gtk_column_view_get_sorter;
alias c_gtk_column_view_insert_column gtk_column_view_insert_column;
alias c_gtk_column_view_remove_column gtk_column_view_remove_column;
alias c_gtk_column_view_set_enable_rubberband gtk_column_view_set_enable_rubberband;
alias c_gtk_column_view_set_model gtk_column_view_set_model;
alias c_gtk_column_view_set_reorderable gtk_column_view_set_reorderable;
alias c_gtk_column_view_set_show_column_separators gtk_column_view_set_show_column_separators;
alias c_gtk_column_view_set_show_row_separators gtk_column_view_set_show_row_separators;
alias c_gtk_column_view_set_single_click_activate gtk_column_view_set_single_click_activate;
alias c_gtk_column_view_sort_by_column gtk_column_view_sort_by_column;

// gtk.ColumnViewColumn

alias c_gtk_column_view_column_get_type gtk_column_view_column_get_type;
alias c_gtk_column_view_column_new gtk_column_view_column_new;
alias c_gtk_column_view_column_get_column_view gtk_column_view_column_get_column_view;
alias c_gtk_column_view_column_get_expand gtk_column_view_column_get_expand;
alias c_gtk_column_view_column_get_factory gtk_column_view_column_get_factory;
alias c_gtk_column_view_column_get_fixed_width gtk_column_view_column_get_fixed_width;
alias c_gtk_column_view_column_get_header_menu gtk_column_view_column_get_header_menu;
alias c_gtk_column_view_column_get_resizable gtk_column_view_column_get_resizable;
alias c_gtk_column_view_column_get_sorter gtk_column_view_column_get_sorter;
alias c_gtk_column_view_column_get_title gtk_column_view_column_get_title;
alias c_gtk_column_view_column_get_visible gtk_column_view_column_get_visible;
alias c_gtk_column_view_column_set_expand gtk_column_view_column_set_expand;
alias c_gtk_column_view_column_set_factory gtk_column_view_column_set_factory;
alias c_gtk_column_view_column_set_fixed_width gtk_column_view_column_set_fixed_width;
alias c_gtk_column_view_column_set_header_menu gtk_column_view_column_set_header_menu;
alias c_gtk_column_view_column_set_resizable gtk_column_view_column_set_resizable;
alias c_gtk_column_view_column_set_sorter gtk_column_view_column_set_sorter;
alias c_gtk_column_view_column_set_title gtk_column_view_column_set_title;
alias c_gtk_column_view_column_set_visible gtk_column_view_column_set_visible;

// gtk.ComboBox

alias c_gtk_combo_box_get_type gtk_combo_box_get_type;
alias c_gtk_combo_box_new gtk_combo_box_new;
alias c_gtk_combo_box_new_with_entry gtk_combo_box_new_with_entry;
alias c_gtk_combo_box_new_with_model gtk_combo_box_new_with_model;
alias c_gtk_combo_box_new_with_model_and_entry gtk_combo_box_new_with_model_and_entry;
alias c_gtk_combo_box_get_active gtk_combo_box_get_active;
alias c_gtk_combo_box_get_active_id gtk_combo_box_get_active_id;
alias c_gtk_combo_box_get_active_iter gtk_combo_box_get_active_iter;
alias c_gtk_combo_box_get_button_sensitivity gtk_combo_box_get_button_sensitivity;
alias c_gtk_combo_box_get_child gtk_combo_box_get_child;
alias c_gtk_combo_box_get_entry_text_column gtk_combo_box_get_entry_text_column;
alias c_gtk_combo_box_get_has_entry gtk_combo_box_get_has_entry;
alias c_gtk_combo_box_get_id_column gtk_combo_box_get_id_column;
alias c_gtk_combo_box_get_model gtk_combo_box_get_model;
alias c_gtk_combo_box_get_popup_fixed_width gtk_combo_box_get_popup_fixed_width;
alias c_gtk_combo_box_get_row_separator_func gtk_combo_box_get_row_separator_func;
alias c_gtk_combo_box_popdown gtk_combo_box_popdown;
alias c_gtk_combo_box_popup gtk_combo_box_popup;
alias c_gtk_combo_box_popup_for_device gtk_combo_box_popup_for_device;
alias c_gtk_combo_box_set_active gtk_combo_box_set_active;
alias c_gtk_combo_box_set_active_id gtk_combo_box_set_active_id;
alias c_gtk_combo_box_set_active_iter gtk_combo_box_set_active_iter;
alias c_gtk_combo_box_set_button_sensitivity gtk_combo_box_set_button_sensitivity;
alias c_gtk_combo_box_set_child gtk_combo_box_set_child;
alias c_gtk_combo_box_set_entry_text_column gtk_combo_box_set_entry_text_column;
alias c_gtk_combo_box_set_id_column gtk_combo_box_set_id_column;
alias c_gtk_combo_box_set_model gtk_combo_box_set_model;
alias c_gtk_combo_box_set_popup_fixed_width gtk_combo_box_set_popup_fixed_width;
alias c_gtk_combo_box_set_row_separator_func gtk_combo_box_set_row_separator_func;

// gtk.ComboBoxText

alias c_gtk_combo_box_text_get_type gtk_combo_box_text_get_type;
alias c_gtk_combo_box_text_new gtk_combo_box_text_new;
alias c_gtk_combo_box_text_new_with_entry gtk_combo_box_text_new_with_entry;
alias c_gtk_combo_box_text_append gtk_combo_box_text_append;
alias c_gtk_combo_box_text_append_text gtk_combo_box_text_append_text;
alias c_gtk_combo_box_text_get_active_text gtk_combo_box_text_get_active_text;
alias c_gtk_combo_box_text_insert gtk_combo_box_text_insert;
alias c_gtk_combo_box_text_insert_text gtk_combo_box_text_insert_text;
alias c_gtk_combo_box_text_prepend gtk_combo_box_text_prepend;
alias c_gtk_combo_box_text_prepend_text gtk_combo_box_text_prepend_text;
alias c_gtk_combo_box_text_remove gtk_combo_box_text_remove;
alias c_gtk_combo_box_text_remove_all gtk_combo_box_text_remove_all;

// gtk.ConstantExpression

alias c_gtk_constant_expression_get_type gtk_constant_expression_get_type;
alias c_gtk_constant_expression_new gtk_constant_expression_new;
alias c_gtk_constant_expression_new_for_value gtk_constant_expression_new_for_value;
alias c_gtk_constant_expression_get_value gtk_constant_expression_get_value;

// gtk.Constraint

alias c_gtk_constraint_get_type gtk_constraint_get_type;
alias c_gtk_constraint_new gtk_constraint_new;
alias c_gtk_constraint_new_constant gtk_constraint_new_constant;
alias c_gtk_constraint_get_constant gtk_constraint_get_constant;
alias c_gtk_constraint_get_multiplier gtk_constraint_get_multiplier;
alias c_gtk_constraint_get_relation gtk_constraint_get_relation;
alias c_gtk_constraint_get_source gtk_constraint_get_source;
alias c_gtk_constraint_get_source_attribute gtk_constraint_get_source_attribute;
alias c_gtk_constraint_get_strength gtk_constraint_get_strength;
alias c_gtk_constraint_get_target gtk_constraint_get_target;
alias c_gtk_constraint_get_target_attribute gtk_constraint_get_target_attribute;
alias c_gtk_constraint_is_attached gtk_constraint_is_attached;
alias c_gtk_constraint_is_constant gtk_constraint_is_constant;
alias c_gtk_constraint_is_required gtk_constraint_is_required;

// gtk.ConstraintGuide

alias c_gtk_constraint_guide_get_type gtk_constraint_guide_get_type;
alias c_gtk_constraint_guide_new gtk_constraint_guide_new;
alias c_gtk_constraint_guide_get_max_size gtk_constraint_guide_get_max_size;
alias c_gtk_constraint_guide_get_min_size gtk_constraint_guide_get_min_size;
alias c_gtk_constraint_guide_get_name gtk_constraint_guide_get_name;
alias c_gtk_constraint_guide_get_nat_size gtk_constraint_guide_get_nat_size;
alias c_gtk_constraint_guide_get_strength gtk_constraint_guide_get_strength;
alias c_gtk_constraint_guide_set_max_size gtk_constraint_guide_set_max_size;
alias c_gtk_constraint_guide_set_min_size gtk_constraint_guide_set_min_size;
alias c_gtk_constraint_guide_set_name gtk_constraint_guide_set_name;
alias c_gtk_constraint_guide_set_nat_size gtk_constraint_guide_set_nat_size;
alias c_gtk_constraint_guide_set_strength gtk_constraint_guide_set_strength;

// gtk.ConstraintLayout

alias c_gtk_constraint_layout_get_type gtk_constraint_layout_get_type;
alias c_gtk_constraint_layout_new gtk_constraint_layout_new;
alias c_gtk_constraint_layout_add_constraint gtk_constraint_layout_add_constraint;
alias c_gtk_constraint_layout_add_constraints_from_description gtk_constraint_layout_add_constraints_from_description;
alias c_gtk_constraint_layout_add_constraints_from_descriptionv gtk_constraint_layout_add_constraints_from_descriptionv;
alias c_gtk_constraint_layout_add_guide gtk_constraint_layout_add_guide;
alias c_gtk_constraint_layout_observe_constraints gtk_constraint_layout_observe_constraints;
alias c_gtk_constraint_layout_observe_guides gtk_constraint_layout_observe_guides;
alias c_gtk_constraint_layout_remove_all_constraints gtk_constraint_layout_remove_all_constraints;
alias c_gtk_constraint_layout_remove_constraint gtk_constraint_layout_remove_constraint;
alias c_gtk_constraint_layout_remove_guide gtk_constraint_layout_remove_guide;

// gtk.ConstraintLayoutChild

alias c_gtk_constraint_layout_child_get_type gtk_constraint_layout_child_get_type;

// gtk.ConstraintTarget

alias c_gtk_constraint_target_get_type gtk_constraint_target_get_type;

// gtk.CssProvider

alias c_gtk_css_provider_get_type gtk_css_provider_get_type;
alias c_gtk_css_provider_new gtk_css_provider_new;
alias c_gtk_css_provider_load_from_data gtk_css_provider_load_from_data;
alias c_gtk_css_provider_load_from_file gtk_css_provider_load_from_file;
alias c_gtk_css_provider_load_from_path gtk_css_provider_load_from_path;
alias c_gtk_css_provider_load_from_resource gtk_css_provider_load_from_resource;
alias c_gtk_css_provider_load_named gtk_css_provider_load_named;
alias c_gtk_css_provider_to_string gtk_css_provider_to_string;

// gtk.CssSection

alias c_gtk_css_section_get_type gtk_css_section_get_type;
alias c_gtk_css_section_new gtk_css_section_new;
alias c_gtk_css_section_get_end_location gtk_css_section_get_end_location;
alias c_gtk_css_section_get_file gtk_css_section_get_file;
alias c_gtk_css_section_get_parent gtk_css_section_get_parent;
alias c_gtk_css_section_get_start_location gtk_css_section_get_start_location;
alias c_gtk_css_section_print gtk_css_section_print;
alias c_gtk_css_section_ref gtk_css_section_ref;
alias c_gtk_css_section_to_string gtk_css_section_to_string;
alias c_gtk_css_section_unref gtk_css_section_unref;

// gtk.CustomFilter

alias c_gtk_custom_filter_get_type gtk_custom_filter_get_type;
alias c_gtk_custom_filter_new gtk_custom_filter_new;
alias c_gtk_custom_filter_set_filter_func gtk_custom_filter_set_filter_func;

// gtk.CustomLayout

alias c_gtk_custom_layout_get_type gtk_custom_layout_get_type;
alias c_gtk_custom_layout_new gtk_custom_layout_new;

// gtk.CustomSorter

alias c_gtk_custom_sorter_get_type gtk_custom_sorter_get_type;
alias c_gtk_custom_sorter_new gtk_custom_sorter_new;
alias c_gtk_custom_sorter_set_sort_func gtk_custom_sorter_set_sort_func;

// gtk.Dialog

alias c_gtk_dialog_get_type gtk_dialog_get_type;
alias c_gtk_dialog_new gtk_dialog_new;
alias c_gtk_dialog_new_with_buttons gtk_dialog_new_with_buttons;
alias c_gtk_dialog_add_action_widget gtk_dialog_add_action_widget;
alias c_gtk_dialog_add_button gtk_dialog_add_button;
alias c_gtk_dialog_add_buttons gtk_dialog_add_buttons;
alias c_gtk_dialog_get_content_area gtk_dialog_get_content_area;
alias c_gtk_dialog_get_header_bar gtk_dialog_get_header_bar;
alias c_gtk_dialog_get_response_for_widget gtk_dialog_get_response_for_widget;
alias c_gtk_dialog_get_widget_for_response gtk_dialog_get_widget_for_response;
alias c_gtk_dialog_response gtk_dialog_response;
alias c_gtk_dialog_set_default_response gtk_dialog_set_default_response;
alias c_gtk_dialog_set_response_sensitive gtk_dialog_set_response_sensitive;

// gtk.DirectoryList

alias c_gtk_directory_list_get_type gtk_directory_list_get_type;
alias c_gtk_directory_list_new gtk_directory_list_new;
alias c_gtk_directory_list_get_attributes gtk_directory_list_get_attributes;
alias c_gtk_directory_list_get_error gtk_directory_list_get_error;
alias c_gtk_directory_list_get_file gtk_directory_list_get_file;
alias c_gtk_directory_list_get_io_priority gtk_directory_list_get_io_priority;
alias c_gtk_directory_list_get_monitored gtk_directory_list_get_monitored;
alias c_gtk_directory_list_is_loading gtk_directory_list_is_loading;
alias c_gtk_directory_list_set_attributes gtk_directory_list_set_attributes;
alias c_gtk_directory_list_set_file gtk_directory_list_set_file;
alias c_gtk_directory_list_set_io_priority gtk_directory_list_set_io_priority;
alias c_gtk_directory_list_set_monitored gtk_directory_list_set_monitored;

// gtk.DragIcon

alias c_gtk_drag_icon_get_type gtk_drag_icon_get_type;
alias c_gtk_drag_icon_create_widget_for_value gtk_drag_icon_create_widget_for_value;
alias c_gtk_drag_icon_get_for_drag gtk_drag_icon_get_for_drag;
alias c_gtk_drag_icon_set_from_paintable gtk_drag_icon_set_from_paintable;
alias c_gtk_drag_icon_get_child gtk_drag_icon_get_child;
alias c_gtk_drag_icon_set_child gtk_drag_icon_set_child;

// gtk.DragSource

alias c_gtk_drag_source_get_type gtk_drag_source_get_type;
alias c_gtk_drag_source_new gtk_drag_source_new;
alias c_gtk_drag_source_drag_cancel gtk_drag_source_drag_cancel;
alias c_gtk_drag_source_get_actions gtk_drag_source_get_actions;
alias c_gtk_drag_source_get_content gtk_drag_source_get_content;
alias c_gtk_drag_source_get_drag gtk_drag_source_get_drag;
alias c_gtk_drag_source_set_actions gtk_drag_source_set_actions;
alias c_gtk_drag_source_set_content gtk_drag_source_set_content;
alias c_gtk_drag_source_set_icon gtk_drag_source_set_icon;

// gtk.DrawingArea

alias c_gtk_drawing_area_get_type gtk_drawing_area_get_type;
alias c_gtk_drawing_area_new gtk_drawing_area_new;
alias c_gtk_drawing_area_get_content_height gtk_drawing_area_get_content_height;
alias c_gtk_drawing_area_get_content_width gtk_drawing_area_get_content_width;
alias c_gtk_drawing_area_set_content_height gtk_drawing_area_set_content_height;
alias c_gtk_drawing_area_set_content_width gtk_drawing_area_set_content_width;
alias c_gtk_drawing_area_set_draw_func gtk_drawing_area_set_draw_func;

// gtk.DropControllerMotion

alias c_gtk_drop_controller_motion_get_type gtk_drop_controller_motion_get_type;
alias c_gtk_drop_controller_motion_new gtk_drop_controller_motion_new;
alias c_gtk_drop_controller_motion_contains_pointer gtk_drop_controller_motion_contains_pointer;
alias c_gtk_drop_controller_motion_get_drop gtk_drop_controller_motion_get_drop;
alias c_gtk_drop_controller_motion_is_pointer gtk_drop_controller_motion_is_pointer;

// gtk.DropDown

alias c_gtk_drop_down_get_type gtk_drop_down_get_type;
alias c_gtk_drop_down_new gtk_drop_down_new;
alias c_gtk_drop_down_new_from_strings gtk_drop_down_new_from_strings;
alias c_gtk_drop_down_get_enable_search gtk_drop_down_get_enable_search;
alias c_gtk_drop_down_get_expression gtk_drop_down_get_expression;
alias c_gtk_drop_down_get_factory gtk_drop_down_get_factory;
alias c_gtk_drop_down_get_list_factory gtk_drop_down_get_list_factory;
alias c_gtk_drop_down_get_model gtk_drop_down_get_model;
alias c_gtk_drop_down_get_selected gtk_drop_down_get_selected;
alias c_gtk_drop_down_get_selected_item gtk_drop_down_get_selected_item;
alias c_gtk_drop_down_get_show_arrow gtk_drop_down_get_show_arrow;
alias c_gtk_drop_down_set_enable_search gtk_drop_down_set_enable_search;
alias c_gtk_drop_down_set_expression gtk_drop_down_set_expression;
alias c_gtk_drop_down_set_factory gtk_drop_down_set_factory;
alias c_gtk_drop_down_set_list_factory gtk_drop_down_set_list_factory;
alias c_gtk_drop_down_set_model gtk_drop_down_set_model;
alias c_gtk_drop_down_set_selected gtk_drop_down_set_selected;
alias c_gtk_drop_down_set_show_arrow gtk_drop_down_set_show_arrow;

// gtk.DropTarget

alias c_gtk_drop_target_get_type gtk_drop_target_get_type;
alias c_gtk_drop_target_new gtk_drop_target_new;
alias c_gtk_drop_target_get_actions gtk_drop_target_get_actions;
alias c_gtk_drop_target_get_current_drop gtk_drop_target_get_current_drop;
alias c_gtk_drop_target_get_drop gtk_drop_target_get_drop;
alias c_gtk_drop_target_get_formats gtk_drop_target_get_formats;
alias c_gtk_drop_target_get_gtypes gtk_drop_target_get_gtypes;
alias c_gtk_drop_target_get_preload gtk_drop_target_get_preload;
alias c_gtk_drop_target_get_value gtk_drop_target_get_value;
alias c_gtk_drop_target_reject gtk_drop_target_reject;
alias c_gtk_drop_target_set_actions gtk_drop_target_set_actions;
alias c_gtk_drop_target_set_gtypes gtk_drop_target_set_gtypes;
alias c_gtk_drop_target_set_preload gtk_drop_target_set_preload;

// gtk.DropTargetAsync

alias c_gtk_drop_target_async_get_type gtk_drop_target_async_get_type;
alias c_gtk_drop_target_async_new gtk_drop_target_async_new;
alias c_gtk_drop_target_async_get_actions gtk_drop_target_async_get_actions;
alias c_gtk_drop_target_async_get_formats gtk_drop_target_async_get_formats;
alias c_gtk_drop_target_async_reject_drop gtk_drop_target_async_reject_drop;
alias c_gtk_drop_target_async_set_actions gtk_drop_target_async_set_actions;
alias c_gtk_drop_target_async_set_formats gtk_drop_target_async_set_formats;

// gtk.Editable

alias c_gtk_editable_get_type gtk_editable_get_type;
alias c_gtk_editable_delegate_get_property gtk_editable_delegate_get_property;
alias c_gtk_editable_delegate_set_property gtk_editable_delegate_set_property;
alias c_gtk_editable_install_properties gtk_editable_install_properties;
alias c_gtk_editable_delete_selection gtk_editable_delete_selection;
alias c_gtk_editable_delete_text gtk_editable_delete_text;
alias c_gtk_editable_finish_delegate gtk_editable_finish_delegate;
alias c_gtk_editable_get_alignment gtk_editable_get_alignment;
alias c_gtk_editable_get_chars gtk_editable_get_chars;
alias c_gtk_editable_get_delegate gtk_editable_get_delegate;
alias c_gtk_editable_get_editable gtk_editable_get_editable;
alias c_gtk_editable_get_enable_undo gtk_editable_get_enable_undo;
alias c_gtk_editable_get_max_width_chars gtk_editable_get_max_width_chars;
alias c_gtk_editable_get_position gtk_editable_get_position;
alias c_gtk_editable_get_selection_bounds gtk_editable_get_selection_bounds;
alias c_gtk_editable_get_text gtk_editable_get_text;
alias c_gtk_editable_get_width_chars gtk_editable_get_width_chars;
alias c_gtk_editable_init_delegate gtk_editable_init_delegate;
alias c_gtk_editable_insert_text gtk_editable_insert_text;
alias c_gtk_editable_select_region gtk_editable_select_region;
alias c_gtk_editable_set_alignment gtk_editable_set_alignment;
alias c_gtk_editable_set_editable gtk_editable_set_editable;
alias c_gtk_editable_set_enable_undo gtk_editable_set_enable_undo;
alias c_gtk_editable_set_max_width_chars gtk_editable_set_max_width_chars;
alias c_gtk_editable_set_position gtk_editable_set_position;
alias c_gtk_editable_set_text gtk_editable_set_text;
alias c_gtk_editable_set_width_chars gtk_editable_set_width_chars;

// gtk.EditableLabel

alias c_gtk_editable_label_get_type gtk_editable_label_get_type;
alias c_gtk_editable_label_new gtk_editable_label_new;
alias c_gtk_editable_label_get_editing gtk_editable_label_get_editing;
alias c_gtk_editable_label_start_editing gtk_editable_label_start_editing;
alias c_gtk_editable_label_stop_editing gtk_editable_label_stop_editing;

// gtk.EmojiChooser

alias c_gtk_emoji_chooser_get_type gtk_emoji_chooser_get_type;
alias c_gtk_emoji_chooser_new gtk_emoji_chooser_new;

// gtk.Entry

alias c_gtk_entry_get_type gtk_entry_get_type;
alias c_gtk_entry_new gtk_entry_new;
alias c_gtk_entry_new_with_buffer gtk_entry_new_with_buffer;
alias c_gtk_entry_get_activates_default gtk_entry_get_activates_default;
alias c_gtk_entry_get_alignment gtk_entry_get_alignment;
alias c_gtk_entry_get_attributes gtk_entry_get_attributes;
alias c_gtk_entry_get_buffer gtk_entry_get_buffer;
alias c_gtk_entry_get_completion gtk_entry_get_completion;
alias c_gtk_entry_get_current_icon_drag_source gtk_entry_get_current_icon_drag_source;
alias c_gtk_entry_get_extra_menu gtk_entry_get_extra_menu;
alias c_gtk_entry_get_has_frame gtk_entry_get_has_frame;
alias c_gtk_entry_get_icon_activatable gtk_entry_get_icon_activatable;
alias c_gtk_entry_get_icon_area gtk_entry_get_icon_area;
alias c_gtk_entry_get_icon_at_pos gtk_entry_get_icon_at_pos;
alias c_gtk_entry_get_icon_gicon gtk_entry_get_icon_gicon;
alias c_gtk_entry_get_icon_name gtk_entry_get_icon_name;
alias c_gtk_entry_get_icon_paintable gtk_entry_get_icon_paintable;
alias c_gtk_entry_get_icon_sensitive gtk_entry_get_icon_sensitive;
alias c_gtk_entry_get_icon_storage_type gtk_entry_get_icon_storage_type;
alias c_gtk_entry_get_icon_tooltip_markup gtk_entry_get_icon_tooltip_markup;
alias c_gtk_entry_get_icon_tooltip_text gtk_entry_get_icon_tooltip_text;
alias c_gtk_entry_get_input_hints gtk_entry_get_input_hints;
alias c_gtk_entry_get_input_purpose gtk_entry_get_input_purpose;
alias c_gtk_entry_get_invisible_char gtk_entry_get_invisible_char;
alias c_gtk_entry_get_max_length gtk_entry_get_max_length;
alias c_gtk_entry_get_overwrite_mode gtk_entry_get_overwrite_mode;
alias c_gtk_entry_get_placeholder_text gtk_entry_get_placeholder_text;
alias c_gtk_entry_get_progress_fraction gtk_entry_get_progress_fraction;
alias c_gtk_entry_get_progress_pulse_step gtk_entry_get_progress_pulse_step;
alias c_gtk_entry_get_tabs gtk_entry_get_tabs;
alias c_gtk_entry_get_text_length gtk_entry_get_text_length;
alias c_gtk_entry_get_visibility gtk_entry_get_visibility;
alias c_gtk_entry_grab_focus_without_selecting gtk_entry_grab_focus_without_selecting;
alias c_gtk_entry_progress_pulse gtk_entry_progress_pulse;
alias c_gtk_entry_reset_im_context gtk_entry_reset_im_context;
alias c_gtk_entry_set_activates_default gtk_entry_set_activates_default;
alias c_gtk_entry_set_alignment gtk_entry_set_alignment;
alias c_gtk_entry_set_attributes gtk_entry_set_attributes;
alias c_gtk_entry_set_buffer gtk_entry_set_buffer;
alias c_gtk_entry_set_completion gtk_entry_set_completion;
alias c_gtk_entry_set_extra_menu gtk_entry_set_extra_menu;
alias c_gtk_entry_set_has_frame gtk_entry_set_has_frame;
alias c_gtk_entry_set_icon_activatable gtk_entry_set_icon_activatable;
alias c_gtk_entry_set_icon_drag_source gtk_entry_set_icon_drag_source;
alias c_gtk_entry_set_icon_from_gicon gtk_entry_set_icon_from_gicon;
alias c_gtk_entry_set_icon_from_icon_name gtk_entry_set_icon_from_icon_name;
alias c_gtk_entry_set_icon_from_paintable gtk_entry_set_icon_from_paintable;
alias c_gtk_entry_set_icon_sensitive gtk_entry_set_icon_sensitive;
alias c_gtk_entry_set_icon_tooltip_markup gtk_entry_set_icon_tooltip_markup;
alias c_gtk_entry_set_icon_tooltip_text gtk_entry_set_icon_tooltip_text;
alias c_gtk_entry_set_input_hints gtk_entry_set_input_hints;
alias c_gtk_entry_set_input_purpose gtk_entry_set_input_purpose;
alias c_gtk_entry_set_invisible_char gtk_entry_set_invisible_char;
alias c_gtk_entry_set_max_length gtk_entry_set_max_length;
alias c_gtk_entry_set_overwrite_mode gtk_entry_set_overwrite_mode;
alias c_gtk_entry_set_placeholder_text gtk_entry_set_placeholder_text;
alias c_gtk_entry_set_progress_fraction gtk_entry_set_progress_fraction;
alias c_gtk_entry_set_progress_pulse_step gtk_entry_set_progress_pulse_step;
alias c_gtk_entry_set_tabs gtk_entry_set_tabs;
alias c_gtk_entry_set_visibility gtk_entry_set_visibility;
alias c_gtk_entry_unset_invisible_char gtk_entry_unset_invisible_char;

// gtk.EntryBuffer

alias c_gtk_entry_buffer_get_type gtk_entry_buffer_get_type;
alias c_gtk_entry_buffer_new gtk_entry_buffer_new;
alias c_gtk_entry_buffer_delete_text gtk_entry_buffer_delete_text;
alias c_gtk_entry_buffer_emit_deleted_text gtk_entry_buffer_emit_deleted_text;
alias c_gtk_entry_buffer_emit_inserted_text gtk_entry_buffer_emit_inserted_text;
alias c_gtk_entry_buffer_get_bytes gtk_entry_buffer_get_bytes;
alias c_gtk_entry_buffer_get_length gtk_entry_buffer_get_length;
alias c_gtk_entry_buffer_get_max_length gtk_entry_buffer_get_max_length;
alias c_gtk_entry_buffer_get_text gtk_entry_buffer_get_text;
alias c_gtk_entry_buffer_insert_text gtk_entry_buffer_insert_text;
alias c_gtk_entry_buffer_set_max_length gtk_entry_buffer_set_max_length;
alias c_gtk_entry_buffer_set_text gtk_entry_buffer_set_text;

// gtk.EntryCompletion

alias c_gtk_entry_completion_get_type gtk_entry_completion_get_type;
alias c_gtk_entry_completion_new gtk_entry_completion_new;
alias c_gtk_entry_completion_new_with_area gtk_entry_completion_new_with_area;
alias c_gtk_entry_completion_complete gtk_entry_completion_complete;
alias c_gtk_entry_completion_compute_prefix gtk_entry_completion_compute_prefix;
alias c_gtk_entry_completion_get_completion_prefix gtk_entry_completion_get_completion_prefix;
alias c_gtk_entry_completion_get_entry gtk_entry_completion_get_entry;
alias c_gtk_entry_completion_get_inline_completion gtk_entry_completion_get_inline_completion;
alias c_gtk_entry_completion_get_inline_selection gtk_entry_completion_get_inline_selection;
alias c_gtk_entry_completion_get_minimum_key_length gtk_entry_completion_get_minimum_key_length;
alias c_gtk_entry_completion_get_model gtk_entry_completion_get_model;
alias c_gtk_entry_completion_get_popup_completion gtk_entry_completion_get_popup_completion;
alias c_gtk_entry_completion_get_popup_set_width gtk_entry_completion_get_popup_set_width;
alias c_gtk_entry_completion_get_popup_single_match gtk_entry_completion_get_popup_single_match;
alias c_gtk_entry_completion_get_text_column gtk_entry_completion_get_text_column;
alias c_gtk_entry_completion_insert_prefix gtk_entry_completion_insert_prefix;
alias c_gtk_entry_completion_set_inline_completion gtk_entry_completion_set_inline_completion;
alias c_gtk_entry_completion_set_inline_selection gtk_entry_completion_set_inline_selection;
alias c_gtk_entry_completion_set_match_func gtk_entry_completion_set_match_func;
alias c_gtk_entry_completion_set_minimum_key_length gtk_entry_completion_set_minimum_key_length;
alias c_gtk_entry_completion_set_model gtk_entry_completion_set_model;
alias c_gtk_entry_completion_set_popup_completion gtk_entry_completion_set_popup_completion;
alias c_gtk_entry_completion_set_popup_set_width gtk_entry_completion_set_popup_set_width;
alias c_gtk_entry_completion_set_popup_single_match gtk_entry_completion_set_popup_single_match;
alias c_gtk_entry_completion_set_text_column gtk_entry_completion_set_text_column;

// gtk.EventController

alias c_gtk_event_controller_get_type gtk_event_controller_get_type;
alias c_gtk_event_controller_get_current_event gtk_event_controller_get_current_event;
alias c_gtk_event_controller_get_current_event_device gtk_event_controller_get_current_event_device;
alias c_gtk_event_controller_get_current_event_state gtk_event_controller_get_current_event_state;
alias c_gtk_event_controller_get_current_event_time gtk_event_controller_get_current_event_time;
alias c_gtk_event_controller_get_name gtk_event_controller_get_name;
alias c_gtk_event_controller_get_propagation_limit gtk_event_controller_get_propagation_limit;
alias c_gtk_event_controller_get_propagation_phase gtk_event_controller_get_propagation_phase;
alias c_gtk_event_controller_get_widget gtk_event_controller_get_widget;
alias c_gtk_event_controller_reset gtk_event_controller_reset;
alias c_gtk_event_controller_set_name gtk_event_controller_set_name;
alias c_gtk_event_controller_set_propagation_limit gtk_event_controller_set_propagation_limit;
alias c_gtk_event_controller_set_propagation_phase gtk_event_controller_set_propagation_phase;

// gtk.EventControllerFocus

alias c_gtk_event_controller_focus_get_type gtk_event_controller_focus_get_type;
alias c_gtk_event_controller_focus_new gtk_event_controller_focus_new;
alias c_gtk_event_controller_focus_contains_focus gtk_event_controller_focus_contains_focus;
alias c_gtk_event_controller_focus_is_focus gtk_event_controller_focus_is_focus;

// gtk.EventControllerKey

alias c_gtk_event_controller_key_get_type gtk_event_controller_key_get_type;
alias c_gtk_event_controller_key_new gtk_event_controller_key_new;
alias c_gtk_event_controller_key_forward gtk_event_controller_key_forward;
alias c_gtk_event_controller_key_get_group gtk_event_controller_key_get_group;
alias c_gtk_event_controller_key_get_im_context gtk_event_controller_key_get_im_context;
alias c_gtk_event_controller_key_set_im_context gtk_event_controller_key_set_im_context;

// gtk.EventControllerLegacy

alias c_gtk_event_controller_legacy_get_type gtk_event_controller_legacy_get_type;
alias c_gtk_event_controller_legacy_new gtk_event_controller_legacy_new;

// gtk.EventControllerMotion

alias c_gtk_event_controller_motion_get_type gtk_event_controller_motion_get_type;
alias c_gtk_event_controller_motion_new gtk_event_controller_motion_new;
alias c_gtk_event_controller_motion_contains_pointer gtk_event_controller_motion_contains_pointer;
alias c_gtk_event_controller_motion_is_pointer gtk_event_controller_motion_is_pointer;

// gtk.EventControllerScroll

alias c_gtk_event_controller_scroll_get_type gtk_event_controller_scroll_get_type;
alias c_gtk_event_controller_scroll_new gtk_event_controller_scroll_new;
alias c_gtk_event_controller_scroll_get_flags gtk_event_controller_scroll_get_flags;
alias c_gtk_event_controller_scroll_set_flags gtk_event_controller_scroll_set_flags;

// gtk.EveryFilter

alias c_gtk_every_filter_get_type gtk_every_filter_get_type;
alias c_gtk_every_filter_new gtk_every_filter_new;

// gtk.Expander

alias c_gtk_expander_get_type gtk_expander_get_type;
alias c_gtk_expander_new gtk_expander_new;
alias c_gtk_expander_new_with_mnemonic gtk_expander_new_with_mnemonic;
alias c_gtk_expander_get_child gtk_expander_get_child;
alias c_gtk_expander_get_expanded gtk_expander_get_expanded;
alias c_gtk_expander_get_label gtk_expander_get_label;
alias c_gtk_expander_get_label_widget gtk_expander_get_label_widget;
alias c_gtk_expander_get_resize_toplevel gtk_expander_get_resize_toplevel;
alias c_gtk_expander_get_use_markup gtk_expander_get_use_markup;
alias c_gtk_expander_get_use_underline gtk_expander_get_use_underline;
alias c_gtk_expander_set_child gtk_expander_set_child;
alias c_gtk_expander_set_expanded gtk_expander_set_expanded;
alias c_gtk_expander_set_label gtk_expander_set_label;
alias c_gtk_expander_set_label_widget gtk_expander_set_label_widget;
alias c_gtk_expander_set_resize_toplevel gtk_expander_set_resize_toplevel;
alias c_gtk_expander_set_use_markup gtk_expander_set_use_markup;
alias c_gtk_expander_set_use_underline gtk_expander_set_use_underline;

// gtk.Expression

alias c_gtk_expression_get_type gtk_expression_get_type;
alias c_gtk_expression_bind gtk_expression_bind;
alias c_gtk_expression_evaluate gtk_expression_evaluate;
alias c_gtk_expression_get_value_type gtk_expression_get_value_type;
alias c_gtk_expression_is_static gtk_expression_is_static;
alias c_gtk_expression_ref gtk_expression_ref;
alias c_gtk_expression_unref gtk_expression_unref;
alias c_gtk_expression_watch gtk_expression_watch;

// gtk.ExpressionWatch

alias c_gtk_expression_watch_get_type gtk_expression_watch_get_type;
alias c_gtk_expression_watch_evaluate gtk_expression_watch_evaluate;
alias c_gtk_expression_watch_ref gtk_expression_watch_ref;
alias c_gtk_expression_watch_unref gtk_expression_watch_unref;
alias c_gtk_expression_watch_unwatch gtk_expression_watch_unwatch;

// gtk.FileChooser

alias c_gtk_file_chooser_get_type gtk_file_chooser_get_type;
alias c_gtk_file_chooser_add_choice gtk_file_chooser_add_choice;
alias c_gtk_file_chooser_add_filter gtk_file_chooser_add_filter;
alias c_gtk_file_chooser_add_shortcut_folder gtk_file_chooser_add_shortcut_folder;
alias c_gtk_file_chooser_get_action gtk_file_chooser_get_action;
alias c_gtk_file_chooser_get_choice gtk_file_chooser_get_choice;
alias c_gtk_file_chooser_get_create_folders gtk_file_chooser_get_create_folders;
alias c_gtk_file_chooser_get_current_folder gtk_file_chooser_get_current_folder;
alias c_gtk_file_chooser_get_current_name gtk_file_chooser_get_current_name;
alias c_gtk_file_chooser_get_file gtk_file_chooser_get_file;
alias c_gtk_file_chooser_get_files gtk_file_chooser_get_files;
alias c_gtk_file_chooser_get_filter gtk_file_chooser_get_filter;
alias c_gtk_file_chooser_get_filters gtk_file_chooser_get_filters;
alias c_gtk_file_chooser_get_select_multiple gtk_file_chooser_get_select_multiple;
alias c_gtk_file_chooser_get_shortcut_folders gtk_file_chooser_get_shortcut_folders;
alias c_gtk_file_chooser_remove_choice gtk_file_chooser_remove_choice;
alias c_gtk_file_chooser_remove_filter gtk_file_chooser_remove_filter;
alias c_gtk_file_chooser_remove_shortcut_folder gtk_file_chooser_remove_shortcut_folder;
alias c_gtk_file_chooser_set_action gtk_file_chooser_set_action;
alias c_gtk_file_chooser_set_choice gtk_file_chooser_set_choice;
alias c_gtk_file_chooser_set_create_folders gtk_file_chooser_set_create_folders;
alias c_gtk_file_chooser_set_current_folder gtk_file_chooser_set_current_folder;
alias c_gtk_file_chooser_set_current_name gtk_file_chooser_set_current_name;
alias c_gtk_file_chooser_set_file gtk_file_chooser_set_file;
alias c_gtk_file_chooser_set_filter gtk_file_chooser_set_filter;
alias c_gtk_file_chooser_set_select_multiple gtk_file_chooser_set_select_multiple;

// gtk.FileChooserDialog

alias c_gtk_file_chooser_dialog_get_type gtk_file_chooser_dialog_get_type;
alias c_gtk_file_chooser_dialog_new gtk_file_chooser_dialog_new;

// gtk.FileChooserNative

alias c_gtk_file_chooser_native_get_type gtk_file_chooser_native_get_type;
alias c_gtk_file_chooser_native_new gtk_file_chooser_native_new;
alias c_gtk_file_chooser_native_get_accept_label gtk_file_chooser_native_get_accept_label;
alias c_gtk_file_chooser_native_get_cancel_label gtk_file_chooser_native_get_cancel_label;
alias c_gtk_file_chooser_native_set_accept_label gtk_file_chooser_native_set_accept_label;
alias c_gtk_file_chooser_native_set_cancel_label gtk_file_chooser_native_set_cancel_label;

// gtk.FileChooserWidget

alias c_gtk_file_chooser_widget_get_type gtk_file_chooser_widget_get_type;
alias c_gtk_file_chooser_widget_new gtk_file_chooser_widget_new;

// gtk.FileFilter

alias c_gtk_file_filter_get_type gtk_file_filter_get_type;
alias c_gtk_file_filter_new gtk_file_filter_new;
alias c_gtk_file_filter_new_from_gvariant gtk_file_filter_new_from_gvariant;
alias c_gtk_file_filter_add_mime_type gtk_file_filter_add_mime_type;
alias c_gtk_file_filter_add_pattern gtk_file_filter_add_pattern;
alias c_gtk_file_filter_add_pixbuf_formats gtk_file_filter_add_pixbuf_formats;
alias c_gtk_file_filter_add_suffix gtk_file_filter_add_suffix;
alias c_gtk_file_filter_get_attributes gtk_file_filter_get_attributes;
alias c_gtk_file_filter_get_name gtk_file_filter_get_name;
alias c_gtk_file_filter_set_name gtk_file_filter_set_name;
alias c_gtk_file_filter_to_gvariant gtk_file_filter_to_gvariant;

// gtk.Filter

alias c_gtk_filter_get_type gtk_filter_get_type;
alias c_gtk_filter_changed gtk_filter_changed;
alias c_gtk_filter_get_strictness gtk_filter_get_strictness;
alias c_gtk_filter_match gtk_filter_match;

// gtk.FilterListModel

alias c_gtk_filter_list_model_get_type gtk_filter_list_model_get_type;
alias c_gtk_filter_list_model_new gtk_filter_list_model_new;
alias c_gtk_filter_list_model_get_filter gtk_filter_list_model_get_filter;
alias c_gtk_filter_list_model_get_incremental gtk_filter_list_model_get_incremental;
alias c_gtk_filter_list_model_get_model gtk_filter_list_model_get_model;
alias c_gtk_filter_list_model_get_pending gtk_filter_list_model_get_pending;
alias c_gtk_filter_list_model_set_filter gtk_filter_list_model_set_filter;
alias c_gtk_filter_list_model_set_incremental gtk_filter_list_model_set_incremental;
alias c_gtk_filter_list_model_set_model gtk_filter_list_model_set_model;

// gtk.Fixed

alias c_gtk_fixed_get_type gtk_fixed_get_type;
alias c_gtk_fixed_new gtk_fixed_new;
alias c_gtk_fixed_get_child_position gtk_fixed_get_child_position;
alias c_gtk_fixed_get_child_transform gtk_fixed_get_child_transform;
alias c_gtk_fixed_move gtk_fixed_move;
alias c_gtk_fixed_put gtk_fixed_put;
alias c_gtk_fixed_remove gtk_fixed_remove;
alias c_gtk_fixed_set_child_transform gtk_fixed_set_child_transform;

// gtk.FixedLayout

alias c_gtk_fixed_layout_get_type gtk_fixed_layout_get_type;
alias c_gtk_fixed_layout_new gtk_fixed_layout_new;

// gtk.FixedLayoutChild

alias c_gtk_fixed_layout_child_get_type gtk_fixed_layout_child_get_type;
alias c_gtk_fixed_layout_child_get_transform gtk_fixed_layout_child_get_transform;
alias c_gtk_fixed_layout_child_set_transform gtk_fixed_layout_child_set_transform;

// gtk.FlattenListModel

alias c_gtk_flatten_list_model_get_type gtk_flatten_list_model_get_type;
alias c_gtk_flatten_list_model_new gtk_flatten_list_model_new;
alias c_gtk_flatten_list_model_get_model gtk_flatten_list_model_get_model;
alias c_gtk_flatten_list_model_get_model_for_item gtk_flatten_list_model_get_model_for_item;
alias c_gtk_flatten_list_model_set_model gtk_flatten_list_model_set_model;

// gtk.FlowBox

alias c_gtk_flow_box_get_type gtk_flow_box_get_type;
alias c_gtk_flow_box_new gtk_flow_box_new;
alias c_gtk_flow_box_append gtk_flow_box_append;
alias c_gtk_flow_box_bind_model gtk_flow_box_bind_model;
alias c_gtk_flow_box_get_activate_on_single_click gtk_flow_box_get_activate_on_single_click;
alias c_gtk_flow_box_get_child_at_index gtk_flow_box_get_child_at_index;
alias c_gtk_flow_box_get_child_at_pos gtk_flow_box_get_child_at_pos;
alias c_gtk_flow_box_get_column_spacing gtk_flow_box_get_column_spacing;
alias c_gtk_flow_box_get_homogeneous gtk_flow_box_get_homogeneous;
alias c_gtk_flow_box_get_max_children_per_line gtk_flow_box_get_max_children_per_line;
alias c_gtk_flow_box_get_min_children_per_line gtk_flow_box_get_min_children_per_line;
alias c_gtk_flow_box_get_row_spacing gtk_flow_box_get_row_spacing;
alias c_gtk_flow_box_get_selected_children gtk_flow_box_get_selected_children;
alias c_gtk_flow_box_get_selection_mode gtk_flow_box_get_selection_mode;
alias c_gtk_flow_box_insert gtk_flow_box_insert;
alias c_gtk_flow_box_invalidate_filter gtk_flow_box_invalidate_filter;
alias c_gtk_flow_box_invalidate_sort gtk_flow_box_invalidate_sort;
alias c_gtk_flow_box_prepend gtk_flow_box_prepend;
alias c_gtk_flow_box_remove gtk_flow_box_remove;
alias c_gtk_flow_box_select_all gtk_flow_box_select_all;
alias c_gtk_flow_box_select_child gtk_flow_box_select_child;
alias c_gtk_flow_box_selected_foreach gtk_flow_box_selected_foreach;
alias c_gtk_flow_box_set_activate_on_single_click gtk_flow_box_set_activate_on_single_click;
alias c_gtk_flow_box_set_column_spacing gtk_flow_box_set_column_spacing;
alias c_gtk_flow_box_set_filter_func gtk_flow_box_set_filter_func;
alias c_gtk_flow_box_set_hadjustment gtk_flow_box_set_hadjustment;
alias c_gtk_flow_box_set_homogeneous gtk_flow_box_set_homogeneous;
alias c_gtk_flow_box_set_max_children_per_line gtk_flow_box_set_max_children_per_line;
alias c_gtk_flow_box_set_min_children_per_line gtk_flow_box_set_min_children_per_line;
alias c_gtk_flow_box_set_row_spacing gtk_flow_box_set_row_spacing;
alias c_gtk_flow_box_set_selection_mode gtk_flow_box_set_selection_mode;
alias c_gtk_flow_box_set_sort_func gtk_flow_box_set_sort_func;
alias c_gtk_flow_box_set_vadjustment gtk_flow_box_set_vadjustment;
alias c_gtk_flow_box_unselect_all gtk_flow_box_unselect_all;
alias c_gtk_flow_box_unselect_child gtk_flow_box_unselect_child;

// gtk.FlowBoxChild

alias c_gtk_flow_box_child_get_type gtk_flow_box_child_get_type;
alias c_gtk_flow_box_child_new gtk_flow_box_child_new;
alias c_gtk_flow_box_child_changed gtk_flow_box_child_changed;
alias c_gtk_flow_box_child_get_child gtk_flow_box_child_get_child;
alias c_gtk_flow_box_child_get_index gtk_flow_box_child_get_index;
alias c_gtk_flow_box_child_is_selected gtk_flow_box_child_is_selected;
alias c_gtk_flow_box_child_set_child gtk_flow_box_child_set_child;

// gtk.FontButton

alias c_gtk_font_button_get_type gtk_font_button_get_type;
alias c_gtk_font_button_new gtk_font_button_new;
alias c_gtk_font_button_new_with_font gtk_font_button_new_with_font;
alias c_gtk_font_button_get_modal gtk_font_button_get_modal;
alias c_gtk_font_button_get_title gtk_font_button_get_title;
alias c_gtk_font_button_get_use_font gtk_font_button_get_use_font;
alias c_gtk_font_button_get_use_size gtk_font_button_get_use_size;
alias c_gtk_font_button_set_modal gtk_font_button_set_modal;
alias c_gtk_font_button_set_title gtk_font_button_set_title;
alias c_gtk_font_button_set_use_font gtk_font_button_set_use_font;
alias c_gtk_font_button_set_use_size gtk_font_button_set_use_size;

// gtk.FontChooser

alias c_gtk_font_chooser_get_type gtk_font_chooser_get_type;
alias c_gtk_font_chooser_get_font gtk_font_chooser_get_font;
alias c_gtk_font_chooser_get_font_desc gtk_font_chooser_get_font_desc;
alias c_gtk_font_chooser_get_font_face gtk_font_chooser_get_font_face;
alias c_gtk_font_chooser_get_font_family gtk_font_chooser_get_font_family;
alias c_gtk_font_chooser_get_font_features gtk_font_chooser_get_font_features;
alias c_gtk_font_chooser_get_font_map gtk_font_chooser_get_font_map;
alias c_gtk_font_chooser_get_font_size gtk_font_chooser_get_font_size;
alias c_gtk_font_chooser_get_language gtk_font_chooser_get_language;
alias c_gtk_font_chooser_get_level gtk_font_chooser_get_level;
alias c_gtk_font_chooser_get_preview_text gtk_font_chooser_get_preview_text;
alias c_gtk_font_chooser_get_show_preview_entry gtk_font_chooser_get_show_preview_entry;
alias c_gtk_font_chooser_set_filter_func gtk_font_chooser_set_filter_func;
alias c_gtk_font_chooser_set_font gtk_font_chooser_set_font;
alias c_gtk_font_chooser_set_font_desc gtk_font_chooser_set_font_desc;
alias c_gtk_font_chooser_set_font_map gtk_font_chooser_set_font_map;
alias c_gtk_font_chooser_set_language gtk_font_chooser_set_language;
alias c_gtk_font_chooser_set_level gtk_font_chooser_set_level;
alias c_gtk_font_chooser_set_preview_text gtk_font_chooser_set_preview_text;
alias c_gtk_font_chooser_set_show_preview_entry gtk_font_chooser_set_show_preview_entry;

// gtk.FontChooserDialog

alias c_gtk_font_chooser_dialog_get_type gtk_font_chooser_dialog_get_type;
alias c_gtk_font_chooser_dialog_new gtk_font_chooser_dialog_new;

// gtk.FontChooserWidget

alias c_gtk_font_chooser_widget_get_type gtk_font_chooser_widget_get_type;
alias c_gtk_font_chooser_widget_new gtk_font_chooser_widget_new;

// gtk.Frame

alias c_gtk_frame_get_type gtk_frame_get_type;
alias c_gtk_frame_new gtk_frame_new;
alias c_gtk_frame_get_child gtk_frame_get_child;
alias c_gtk_frame_get_label gtk_frame_get_label;
alias c_gtk_frame_get_label_align gtk_frame_get_label_align;
alias c_gtk_frame_get_label_widget gtk_frame_get_label_widget;
alias c_gtk_frame_set_child gtk_frame_set_child;
alias c_gtk_frame_set_label gtk_frame_set_label;
alias c_gtk_frame_set_label_align gtk_frame_set_label_align;
alias c_gtk_frame_set_label_widget gtk_frame_set_label_widget;

// gtk.GLArea

alias c_gtk_gl_area_get_type gtk_gl_area_get_type;
alias c_gtk_gl_area_new gtk_gl_area_new;
alias c_gtk_gl_area_attach_buffers gtk_gl_area_attach_buffers;
alias c_gtk_gl_area_get_auto_render gtk_gl_area_get_auto_render;
alias c_gtk_gl_area_get_context gtk_gl_area_get_context;
alias c_gtk_gl_area_get_error gtk_gl_area_get_error;
alias c_gtk_gl_area_get_has_depth_buffer gtk_gl_area_get_has_depth_buffer;
alias c_gtk_gl_area_get_has_stencil_buffer gtk_gl_area_get_has_stencil_buffer;
alias c_gtk_gl_area_get_required_version gtk_gl_area_get_required_version;
alias c_gtk_gl_area_get_use_es gtk_gl_area_get_use_es;
alias c_gtk_gl_area_make_current gtk_gl_area_make_current;
alias c_gtk_gl_area_queue_render gtk_gl_area_queue_render;
alias c_gtk_gl_area_set_auto_render gtk_gl_area_set_auto_render;
alias c_gtk_gl_area_set_error gtk_gl_area_set_error;
alias c_gtk_gl_area_set_has_depth_buffer gtk_gl_area_set_has_depth_buffer;
alias c_gtk_gl_area_set_has_stencil_buffer gtk_gl_area_set_has_stencil_buffer;
alias c_gtk_gl_area_set_required_version gtk_gl_area_set_required_version;
alias c_gtk_gl_area_set_use_es gtk_gl_area_set_use_es;

// gtk.Gesture

alias c_gtk_gesture_get_type gtk_gesture_get_type;
alias c_gtk_gesture_get_bounding_box gtk_gesture_get_bounding_box;
alias c_gtk_gesture_get_bounding_box_center gtk_gesture_get_bounding_box_center;
alias c_gtk_gesture_get_device gtk_gesture_get_device;
alias c_gtk_gesture_get_group gtk_gesture_get_group;
alias c_gtk_gesture_get_last_event gtk_gesture_get_last_event;
alias c_gtk_gesture_get_last_updated_sequence gtk_gesture_get_last_updated_sequence;
alias c_gtk_gesture_get_point gtk_gesture_get_point;
alias c_gtk_gesture_get_sequence_state gtk_gesture_get_sequence_state;
alias c_gtk_gesture_get_sequences gtk_gesture_get_sequences;
alias c_gtk_gesture_group gtk_gesture_group;
alias c_gtk_gesture_handles_sequence gtk_gesture_handles_sequence;
alias c_gtk_gesture_is_active gtk_gesture_is_active;
alias c_gtk_gesture_is_grouped_with gtk_gesture_is_grouped_with;
alias c_gtk_gesture_is_recognized gtk_gesture_is_recognized;
alias c_gtk_gesture_set_sequence_state gtk_gesture_set_sequence_state;
alias c_gtk_gesture_set_state gtk_gesture_set_state;
alias c_gtk_gesture_ungroup gtk_gesture_ungroup;

// gtk.GestureClick

alias c_gtk_gesture_click_get_type gtk_gesture_click_get_type;
alias c_gtk_gesture_click_new gtk_gesture_click_new;

// gtk.GestureDrag

alias c_gtk_gesture_drag_get_type gtk_gesture_drag_get_type;
alias c_gtk_gesture_drag_new gtk_gesture_drag_new;
alias c_gtk_gesture_drag_get_offset gtk_gesture_drag_get_offset;
alias c_gtk_gesture_drag_get_start_point gtk_gesture_drag_get_start_point;

// gtk.GestureLongPress

alias c_gtk_gesture_long_press_get_type gtk_gesture_long_press_get_type;
alias c_gtk_gesture_long_press_new gtk_gesture_long_press_new;
alias c_gtk_gesture_long_press_get_delay_factor gtk_gesture_long_press_get_delay_factor;
alias c_gtk_gesture_long_press_set_delay_factor gtk_gesture_long_press_set_delay_factor;

// gtk.GesturePan

alias c_gtk_gesture_pan_get_type gtk_gesture_pan_get_type;
alias c_gtk_gesture_pan_new gtk_gesture_pan_new;
alias c_gtk_gesture_pan_get_orientation gtk_gesture_pan_get_orientation;
alias c_gtk_gesture_pan_set_orientation gtk_gesture_pan_set_orientation;

// gtk.GestureRotate

alias c_gtk_gesture_rotate_get_type gtk_gesture_rotate_get_type;
alias c_gtk_gesture_rotate_new gtk_gesture_rotate_new;
alias c_gtk_gesture_rotate_get_angle_delta gtk_gesture_rotate_get_angle_delta;

// gtk.GestureSingle

alias c_gtk_gesture_single_get_type gtk_gesture_single_get_type;
alias c_gtk_gesture_single_get_button gtk_gesture_single_get_button;
alias c_gtk_gesture_single_get_current_button gtk_gesture_single_get_current_button;
alias c_gtk_gesture_single_get_current_sequence gtk_gesture_single_get_current_sequence;
alias c_gtk_gesture_single_get_exclusive gtk_gesture_single_get_exclusive;
alias c_gtk_gesture_single_get_touch_only gtk_gesture_single_get_touch_only;
alias c_gtk_gesture_single_set_button gtk_gesture_single_set_button;
alias c_gtk_gesture_single_set_exclusive gtk_gesture_single_set_exclusive;
alias c_gtk_gesture_single_set_touch_only gtk_gesture_single_set_touch_only;

// gtk.GestureStylus

alias c_gtk_gesture_stylus_get_type gtk_gesture_stylus_get_type;
alias c_gtk_gesture_stylus_new gtk_gesture_stylus_new;
alias c_gtk_gesture_stylus_get_axes gtk_gesture_stylus_get_axes;
alias c_gtk_gesture_stylus_get_axis gtk_gesture_stylus_get_axis;
alias c_gtk_gesture_stylus_get_backlog gtk_gesture_stylus_get_backlog;
alias c_gtk_gesture_stylus_get_device_tool gtk_gesture_stylus_get_device_tool;

// gtk.GestureSwipe

alias c_gtk_gesture_swipe_get_type gtk_gesture_swipe_get_type;
alias c_gtk_gesture_swipe_new gtk_gesture_swipe_new;
alias c_gtk_gesture_swipe_get_velocity gtk_gesture_swipe_get_velocity;

// gtk.GestureZoom

alias c_gtk_gesture_zoom_get_type gtk_gesture_zoom_get_type;
alias c_gtk_gesture_zoom_new gtk_gesture_zoom_new;
alias c_gtk_gesture_zoom_get_scale_delta gtk_gesture_zoom_get_scale_delta;

// gtk.Grid

alias c_gtk_grid_get_type gtk_grid_get_type;
alias c_gtk_grid_new gtk_grid_new;
alias c_gtk_grid_attach gtk_grid_attach;
alias c_gtk_grid_attach_next_to gtk_grid_attach_next_to;
alias c_gtk_grid_get_baseline_row gtk_grid_get_baseline_row;
alias c_gtk_grid_get_child_at gtk_grid_get_child_at;
alias c_gtk_grid_get_column_homogeneous gtk_grid_get_column_homogeneous;
alias c_gtk_grid_get_column_spacing gtk_grid_get_column_spacing;
alias c_gtk_grid_get_row_baseline_position gtk_grid_get_row_baseline_position;
alias c_gtk_grid_get_row_homogeneous gtk_grid_get_row_homogeneous;
alias c_gtk_grid_get_row_spacing gtk_grid_get_row_spacing;
alias c_gtk_grid_insert_column gtk_grid_insert_column;
alias c_gtk_grid_insert_next_to gtk_grid_insert_next_to;
alias c_gtk_grid_insert_row gtk_grid_insert_row;
alias c_gtk_grid_query_child gtk_grid_query_child;
alias c_gtk_grid_remove gtk_grid_remove;
alias c_gtk_grid_remove_column gtk_grid_remove_column;
alias c_gtk_grid_remove_row gtk_grid_remove_row;
alias c_gtk_grid_set_baseline_row gtk_grid_set_baseline_row;
alias c_gtk_grid_set_column_homogeneous gtk_grid_set_column_homogeneous;
alias c_gtk_grid_set_column_spacing gtk_grid_set_column_spacing;
alias c_gtk_grid_set_row_baseline_position gtk_grid_set_row_baseline_position;
alias c_gtk_grid_set_row_homogeneous gtk_grid_set_row_homogeneous;
alias c_gtk_grid_set_row_spacing gtk_grid_set_row_spacing;

// gtk.GridLayout

alias c_gtk_grid_layout_get_type gtk_grid_layout_get_type;
alias c_gtk_grid_layout_new gtk_grid_layout_new;
alias c_gtk_grid_layout_get_baseline_row gtk_grid_layout_get_baseline_row;
alias c_gtk_grid_layout_get_column_homogeneous gtk_grid_layout_get_column_homogeneous;
alias c_gtk_grid_layout_get_column_spacing gtk_grid_layout_get_column_spacing;
alias c_gtk_grid_layout_get_row_baseline_position gtk_grid_layout_get_row_baseline_position;
alias c_gtk_grid_layout_get_row_homogeneous gtk_grid_layout_get_row_homogeneous;
alias c_gtk_grid_layout_get_row_spacing gtk_grid_layout_get_row_spacing;
alias c_gtk_grid_layout_set_baseline_row gtk_grid_layout_set_baseline_row;
alias c_gtk_grid_layout_set_column_homogeneous gtk_grid_layout_set_column_homogeneous;
alias c_gtk_grid_layout_set_column_spacing gtk_grid_layout_set_column_spacing;
alias c_gtk_grid_layout_set_row_baseline_position gtk_grid_layout_set_row_baseline_position;
alias c_gtk_grid_layout_set_row_homogeneous gtk_grid_layout_set_row_homogeneous;
alias c_gtk_grid_layout_set_row_spacing gtk_grid_layout_set_row_spacing;

// gtk.GridLayoutChild

alias c_gtk_grid_layout_child_get_type gtk_grid_layout_child_get_type;
alias c_gtk_grid_layout_child_get_column gtk_grid_layout_child_get_column;
alias c_gtk_grid_layout_child_get_column_span gtk_grid_layout_child_get_column_span;
alias c_gtk_grid_layout_child_get_row gtk_grid_layout_child_get_row;
alias c_gtk_grid_layout_child_get_row_span gtk_grid_layout_child_get_row_span;
alias c_gtk_grid_layout_child_set_column gtk_grid_layout_child_set_column;
alias c_gtk_grid_layout_child_set_column_span gtk_grid_layout_child_set_column_span;
alias c_gtk_grid_layout_child_set_row gtk_grid_layout_child_set_row;
alias c_gtk_grid_layout_child_set_row_span gtk_grid_layout_child_set_row_span;

// gtk.GridView

alias c_gtk_grid_view_get_type gtk_grid_view_get_type;
alias c_gtk_grid_view_new gtk_grid_view_new;
alias c_gtk_grid_view_get_enable_rubberband gtk_grid_view_get_enable_rubberband;
alias c_gtk_grid_view_get_factory gtk_grid_view_get_factory;
alias c_gtk_grid_view_get_max_columns gtk_grid_view_get_max_columns;
alias c_gtk_grid_view_get_min_columns gtk_grid_view_get_min_columns;
alias c_gtk_grid_view_get_model gtk_grid_view_get_model;
alias c_gtk_grid_view_get_single_click_activate gtk_grid_view_get_single_click_activate;
alias c_gtk_grid_view_set_enable_rubberband gtk_grid_view_set_enable_rubberband;
alias c_gtk_grid_view_set_factory gtk_grid_view_set_factory;
alias c_gtk_grid_view_set_max_columns gtk_grid_view_set_max_columns;
alias c_gtk_grid_view_set_min_columns gtk_grid_view_set_min_columns;
alias c_gtk_grid_view_set_model gtk_grid_view_set_model;
alias c_gtk_grid_view_set_single_click_activate gtk_grid_view_set_single_click_activate;

// gtk.HeaderBar

alias c_gtk_header_bar_get_type gtk_header_bar_get_type;
alias c_gtk_header_bar_new gtk_header_bar_new;
alias c_gtk_header_bar_get_decoration_layout gtk_header_bar_get_decoration_layout;
alias c_gtk_header_bar_get_show_title_buttons gtk_header_bar_get_show_title_buttons;
alias c_gtk_header_bar_get_title_widget gtk_header_bar_get_title_widget;
alias c_gtk_header_bar_pack_end gtk_header_bar_pack_end;
alias c_gtk_header_bar_pack_start gtk_header_bar_pack_start;
alias c_gtk_header_bar_remove gtk_header_bar_remove;
alias c_gtk_header_bar_set_decoration_layout gtk_header_bar_set_decoration_layout;
alias c_gtk_header_bar_set_show_title_buttons gtk_header_bar_set_show_title_buttons;
alias c_gtk_header_bar_set_title_widget gtk_header_bar_set_title_widget;

// gtk.IMContext

alias c_gtk_im_context_get_type gtk_im_context_get_type;
alias c_gtk_im_context_delete_surrounding gtk_im_context_delete_surrounding;
alias c_gtk_im_context_filter_key gtk_im_context_filter_key;
alias c_gtk_im_context_filter_keypress gtk_im_context_filter_keypress;
alias c_gtk_im_context_focus_in gtk_im_context_focus_in;
alias c_gtk_im_context_focus_out gtk_im_context_focus_out;
alias c_gtk_im_context_get_preedit_string gtk_im_context_get_preedit_string;
alias c_gtk_im_context_get_surrounding gtk_im_context_get_surrounding;
alias c_gtk_im_context_get_surrounding_with_selection gtk_im_context_get_surrounding_with_selection;
alias c_gtk_im_context_reset gtk_im_context_reset;
alias c_gtk_im_context_set_client_widget gtk_im_context_set_client_widget;
alias c_gtk_im_context_set_cursor_location gtk_im_context_set_cursor_location;
alias c_gtk_im_context_set_surrounding gtk_im_context_set_surrounding;
alias c_gtk_im_context_set_surrounding_with_selection gtk_im_context_set_surrounding_with_selection;
alias c_gtk_im_context_set_use_preedit gtk_im_context_set_use_preedit;

// gtk.IMContextSimple

alias c_gtk_im_context_simple_get_type gtk_im_context_simple_get_type;
alias c_gtk_im_context_simple_new gtk_im_context_simple_new;
alias c_gtk_im_context_simple_add_compose_file gtk_im_context_simple_add_compose_file;
alias c_gtk_im_context_simple_add_table gtk_im_context_simple_add_table;

// gtk.IMMulticontext

alias c_gtk_im_multicontext_get_type gtk_im_multicontext_get_type;
alias c_gtk_im_multicontext_new gtk_im_multicontext_new;
alias c_gtk_im_multicontext_get_context_id gtk_im_multicontext_get_context_id;
alias c_gtk_im_multicontext_set_context_id gtk_im_multicontext_set_context_id;

// gtk.IconPaintable

alias c_gtk_icon_paintable_get_type gtk_icon_paintable_get_type;
alias c_gtk_icon_paintable_new_for_file gtk_icon_paintable_new_for_file;
alias c_gtk_icon_paintable_get_file gtk_icon_paintable_get_file;
alias c_gtk_icon_paintable_get_icon_name gtk_icon_paintable_get_icon_name;
alias c_gtk_icon_paintable_is_symbolic gtk_icon_paintable_is_symbolic;

// gtk.IconTheme

alias c_gtk_icon_theme_get_type gtk_icon_theme_get_type;
alias c_gtk_icon_theme_new gtk_icon_theme_new;
alias c_gtk_icon_theme_get_for_display gtk_icon_theme_get_for_display;
alias c_gtk_icon_theme_add_resource_path gtk_icon_theme_add_resource_path;
alias c_gtk_icon_theme_add_search_path gtk_icon_theme_add_search_path;
alias c_gtk_icon_theme_get_display gtk_icon_theme_get_display;
alias c_gtk_icon_theme_get_icon_names gtk_icon_theme_get_icon_names;
alias c_gtk_icon_theme_get_icon_sizes gtk_icon_theme_get_icon_sizes;
alias c_gtk_icon_theme_get_resource_path gtk_icon_theme_get_resource_path;
alias c_gtk_icon_theme_get_search_path gtk_icon_theme_get_search_path;
alias c_gtk_icon_theme_get_theme_name gtk_icon_theme_get_theme_name;
alias c_gtk_icon_theme_has_gicon gtk_icon_theme_has_gicon;
alias c_gtk_icon_theme_has_icon gtk_icon_theme_has_icon;
alias c_gtk_icon_theme_lookup_by_gicon gtk_icon_theme_lookup_by_gicon;
alias c_gtk_icon_theme_lookup_icon gtk_icon_theme_lookup_icon;
alias c_gtk_icon_theme_set_resource_path gtk_icon_theme_set_resource_path;
alias c_gtk_icon_theme_set_search_path gtk_icon_theme_set_search_path;
alias c_gtk_icon_theme_set_theme_name gtk_icon_theme_set_theme_name;

// gtk.IconView

alias c_gtk_icon_view_get_type gtk_icon_view_get_type;
alias c_gtk_icon_view_new gtk_icon_view_new;
alias c_gtk_icon_view_new_with_area gtk_icon_view_new_with_area;
alias c_gtk_icon_view_new_with_model gtk_icon_view_new_with_model;
alias c_gtk_icon_view_create_drag_icon gtk_icon_view_create_drag_icon;
alias c_gtk_icon_view_enable_model_drag_dest gtk_icon_view_enable_model_drag_dest;
alias c_gtk_icon_view_enable_model_drag_source gtk_icon_view_enable_model_drag_source;
alias c_gtk_icon_view_get_activate_on_single_click gtk_icon_view_get_activate_on_single_click;
alias c_gtk_icon_view_get_cell_rect gtk_icon_view_get_cell_rect;
alias c_gtk_icon_view_get_column_spacing gtk_icon_view_get_column_spacing;
alias c_gtk_icon_view_get_columns gtk_icon_view_get_columns;
alias c_gtk_icon_view_get_cursor gtk_icon_view_get_cursor;
alias c_gtk_icon_view_get_dest_item_at_pos gtk_icon_view_get_dest_item_at_pos;
alias c_gtk_icon_view_get_drag_dest_item gtk_icon_view_get_drag_dest_item;
alias c_gtk_icon_view_get_item_at_pos gtk_icon_view_get_item_at_pos;
alias c_gtk_icon_view_get_item_column gtk_icon_view_get_item_column;
alias c_gtk_icon_view_get_item_orientation gtk_icon_view_get_item_orientation;
alias c_gtk_icon_view_get_item_padding gtk_icon_view_get_item_padding;
alias c_gtk_icon_view_get_item_row gtk_icon_view_get_item_row;
alias c_gtk_icon_view_get_item_width gtk_icon_view_get_item_width;
alias c_gtk_icon_view_get_margin gtk_icon_view_get_margin;
alias c_gtk_icon_view_get_markup_column gtk_icon_view_get_markup_column;
alias c_gtk_icon_view_get_model gtk_icon_view_get_model;
alias c_gtk_icon_view_get_path_at_pos gtk_icon_view_get_path_at_pos;
alias c_gtk_icon_view_get_pixbuf_column gtk_icon_view_get_pixbuf_column;
alias c_gtk_icon_view_get_reorderable gtk_icon_view_get_reorderable;
alias c_gtk_icon_view_get_row_spacing gtk_icon_view_get_row_spacing;
alias c_gtk_icon_view_get_selected_items gtk_icon_view_get_selected_items;
alias c_gtk_icon_view_get_selection_mode gtk_icon_view_get_selection_mode;
alias c_gtk_icon_view_get_spacing gtk_icon_view_get_spacing;
alias c_gtk_icon_view_get_text_column gtk_icon_view_get_text_column;
alias c_gtk_icon_view_get_tooltip_column gtk_icon_view_get_tooltip_column;
alias c_gtk_icon_view_get_tooltip_context gtk_icon_view_get_tooltip_context;
alias c_gtk_icon_view_get_visible_range gtk_icon_view_get_visible_range;
alias c_gtk_icon_view_item_activated gtk_icon_view_item_activated;
alias c_gtk_icon_view_path_is_selected gtk_icon_view_path_is_selected;
alias c_gtk_icon_view_scroll_to_path gtk_icon_view_scroll_to_path;
alias c_gtk_icon_view_select_all gtk_icon_view_select_all;
alias c_gtk_icon_view_select_path gtk_icon_view_select_path;
alias c_gtk_icon_view_selected_foreach gtk_icon_view_selected_foreach;
alias c_gtk_icon_view_set_activate_on_single_click gtk_icon_view_set_activate_on_single_click;
alias c_gtk_icon_view_set_column_spacing gtk_icon_view_set_column_spacing;
alias c_gtk_icon_view_set_columns gtk_icon_view_set_columns;
alias c_gtk_icon_view_set_cursor gtk_icon_view_set_cursor;
alias c_gtk_icon_view_set_drag_dest_item gtk_icon_view_set_drag_dest_item;
alias c_gtk_icon_view_set_item_orientation gtk_icon_view_set_item_orientation;
alias c_gtk_icon_view_set_item_padding gtk_icon_view_set_item_padding;
alias c_gtk_icon_view_set_item_width gtk_icon_view_set_item_width;
alias c_gtk_icon_view_set_margin gtk_icon_view_set_margin;
alias c_gtk_icon_view_set_markup_column gtk_icon_view_set_markup_column;
alias c_gtk_icon_view_set_model gtk_icon_view_set_model;
alias c_gtk_icon_view_set_pixbuf_column gtk_icon_view_set_pixbuf_column;
alias c_gtk_icon_view_set_reorderable gtk_icon_view_set_reorderable;
alias c_gtk_icon_view_set_row_spacing gtk_icon_view_set_row_spacing;
alias c_gtk_icon_view_set_selection_mode gtk_icon_view_set_selection_mode;
alias c_gtk_icon_view_set_spacing gtk_icon_view_set_spacing;
alias c_gtk_icon_view_set_text_column gtk_icon_view_set_text_column;
alias c_gtk_icon_view_set_tooltip_cell gtk_icon_view_set_tooltip_cell;
alias c_gtk_icon_view_set_tooltip_column gtk_icon_view_set_tooltip_column;
alias c_gtk_icon_view_set_tooltip_item gtk_icon_view_set_tooltip_item;
alias c_gtk_icon_view_unselect_all gtk_icon_view_unselect_all;
alias c_gtk_icon_view_unselect_path gtk_icon_view_unselect_path;
alias c_gtk_icon_view_unset_model_drag_dest gtk_icon_view_unset_model_drag_dest;
alias c_gtk_icon_view_unset_model_drag_source gtk_icon_view_unset_model_drag_source;

// gtk.Image

alias c_gtk_image_get_type gtk_image_get_type;
alias c_gtk_image_new gtk_image_new;
alias c_gtk_image_new_from_file gtk_image_new_from_file;
alias c_gtk_image_new_from_gicon gtk_image_new_from_gicon;
alias c_gtk_image_new_from_icon_name gtk_image_new_from_icon_name;
alias c_gtk_image_new_from_paintable gtk_image_new_from_paintable;
alias c_gtk_image_new_from_pixbuf gtk_image_new_from_pixbuf;
alias c_gtk_image_new_from_resource gtk_image_new_from_resource;
alias c_gtk_image_clear gtk_image_clear;
alias c_gtk_image_get_gicon gtk_image_get_gicon;
alias c_gtk_image_get_icon_name gtk_image_get_icon_name;
alias c_gtk_image_get_icon_size gtk_image_get_icon_size;
alias c_gtk_image_get_paintable gtk_image_get_paintable;
alias c_gtk_image_get_pixel_size gtk_image_get_pixel_size;
alias c_gtk_image_get_storage_type gtk_image_get_storage_type;
alias c_gtk_image_set_from_file gtk_image_set_from_file;
alias c_gtk_image_set_from_gicon gtk_image_set_from_gicon;
alias c_gtk_image_set_from_icon_name gtk_image_set_from_icon_name;
alias c_gtk_image_set_from_paintable gtk_image_set_from_paintable;
alias c_gtk_image_set_from_pixbuf gtk_image_set_from_pixbuf;
alias c_gtk_image_set_from_resource gtk_image_set_from_resource;
alias c_gtk_image_set_icon_size gtk_image_set_icon_size;
alias c_gtk_image_set_pixel_size gtk_image_set_pixel_size;

// gtk.InfoBar

alias c_gtk_info_bar_get_type gtk_info_bar_get_type;
alias c_gtk_info_bar_new gtk_info_bar_new;
alias c_gtk_info_bar_new_with_buttons gtk_info_bar_new_with_buttons;
alias c_gtk_info_bar_add_action_widget gtk_info_bar_add_action_widget;
alias c_gtk_info_bar_add_button gtk_info_bar_add_button;
alias c_gtk_info_bar_add_buttons gtk_info_bar_add_buttons;
alias c_gtk_info_bar_add_child gtk_info_bar_add_child;
alias c_gtk_info_bar_get_message_type gtk_info_bar_get_message_type;
alias c_gtk_info_bar_get_revealed gtk_info_bar_get_revealed;
alias c_gtk_info_bar_get_show_close_button gtk_info_bar_get_show_close_button;
alias c_gtk_info_bar_remove_action_widget gtk_info_bar_remove_action_widget;
alias c_gtk_info_bar_remove_child gtk_info_bar_remove_child;
alias c_gtk_info_bar_response gtk_info_bar_response;
alias c_gtk_info_bar_set_default_response gtk_info_bar_set_default_response;
alias c_gtk_info_bar_set_message_type gtk_info_bar_set_message_type;
alias c_gtk_info_bar_set_response_sensitive gtk_info_bar_set_response_sensitive;
alias c_gtk_info_bar_set_revealed gtk_info_bar_set_revealed;
alias c_gtk_info_bar_set_show_close_button gtk_info_bar_set_show_close_button;

// gtk.KeyvalTrigger

alias c_gtk_keyval_trigger_get_type gtk_keyval_trigger_get_type;
alias c_gtk_keyval_trigger_new gtk_keyval_trigger_new;
alias c_gtk_keyval_trigger_get_keyval gtk_keyval_trigger_get_keyval;
alias c_gtk_keyval_trigger_get_modifiers gtk_keyval_trigger_get_modifiers;

// gtk.Label

alias c_gtk_label_get_type gtk_label_get_type;
alias c_gtk_label_new gtk_label_new;
alias c_gtk_label_new_with_mnemonic gtk_label_new_with_mnemonic;
alias c_gtk_label_get_attributes gtk_label_get_attributes;
alias c_gtk_label_get_current_uri gtk_label_get_current_uri;
alias c_gtk_label_get_ellipsize gtk_label_get_ellipsize;
alias c_gtk_label_get_extra_menu gtk_label_get_extra_menu;
alias c_gtk_label_get_justify gtk_label_get_justify;
alias c_gtk_label_get_label gtk_label_get_label;
alias c_gtk_label_get_layout gtk_label_get_layout;
alias c_gtk_label_get_layout_offsets gtk_label_get_layout_offsets;
alias c_gtk_label_get_lines gtk_label_get_lines;
alias c_gtk_label_get_max_width_chars gtk_label_get_max_width_chars;
alias c_gtk_label_get_mnemonic_keyval gtk_label_get_mnemonic_keyval;
alias c_gtk_label_get_mnemonic_widget gtk_label_get_mnemonic_widget;
alias c_gtk_label_get_natural_wrap_mode gtk_label_get_natural_wrap_mode;
alias c_gtk_label_get_selectable gtk_label_get_selectable;
alias c_gtk_label_get_selection_bounds gtk_label_get_selection_bounds;
alias c_gtk_label_get_single_line_mode gtk_label_get_single_line_mode;
alias c_gtk_label_get_text gtk_label_get_text;
alias c_gtk_label_get_use_markup gtk_label_get_use_markup;
alias c_gtk_label_get_use_underline gtk_label_get_use_underline;
alias c_gtk_label_get_width_chars gtk_label_get_width_chars;
alias c_gtk_label_get_wrap gtk_label_get_wrap;
alias c_gtk_label_get_wrap_mode gtk_label_get_wrap_mode;
alias c_gtk_label_get_xalign gtk_label_get_xalign;
alias c_gtk_label_get_yalign gtk_label_get_yalign;
alias c_gtk_label_select_region gtk_label_select_region;
alias c_gtk_label_set_attributes gtk_label_set_attributes;
alias c_gtk_label_set_ellipsize gtk_label_set_ellipsize;
alias c_gtk_label_set_extra_menu gtk_label_set_extra_menu;
alias c_gtk_label_set_justify gtk_label_set_justify;
alias c_gtk_label_set_label gtk_label_set_label;
alias c_gtk_label_set_lines gtk_label_set_lines;
alias c_gtk_label_set_markup gtk_label_set_markup;
alias c_gtk_label_set_markup_with_mnemonic gtk_label_set_markup_with_mnemonic;
alias c_gtk_label_set_max_width_chars gtk_label_set_max_width_chars;
alias c_gtk_label_set_mnemonic_widget gtk_label_set_mnemonic_widget;
alias c_gtk_label_set_natural_wrap_mode gtk_label_set_natural_wrap_mode;
alias c_gtk_label_set_selectable gtk_label_set_selectable;
alias c_gtk_label_set_single_line_mode gtk_label_set_single_line_mode;
alias c_gtk_label_set_text gtk_label_set_text;
alias c_gtk_label_set_text_with_mnemonic gtk_label_set_text_with_mnemonic;
alias c_gtk_label_set_use_markup gtk_label_set_use_markup;
alias c_gtk_label_set_use_underline gtk_label_set_use_underline;
alias c_gtk_label_set_width_chars gtk_label_set_width_chars;
alias c_gtk_label_set_wrap gtk_label_set_wrap;
alias c_gtk_label_set_wrap_mode gtk_label_set_wrap_mode;
alias c_gtk_label_set_xalign gtk_label_set_xalign;
alias c_gtk_label_set_yalign gtk_label_set_yalign;

// gtk.LayoutChild

alias c_gtk_layout_child_get_type gtk_layout_child_get_type;
alias c_gtk_layout_child_get_child_widget gtk_layout_child_get_child_widget;
alias c_gtk_layout_child_get_layout_manager gtk_layout_child_get_layout_manager;

// gtk.LayoutManager

alias c_gtk_layout_manager_get_type gtk_layout_manager_get_type;
alias c_gtk_layout_manager_allocate gtk_layout_manager_allocate;
alias c_gtk_layout_manager_get_layout_child gtk_layout_manager_get_layout_child;
alias c_gtk_layout_manager_get_request_mode gtk_layout_manager_get_request_mode;
alias c_gtk_layout_manager_get_widget gtk_layout_manager_get_widget;
alias c_gtk_layout_manager_layout_changed gtk_layout_manager_layout_changed;
alias c_gtk_layout_manager_measure gtk_layout_manager_measure;

// gtk.LevelBar

alias c_gtk_level_bar_get_type gtk_level_bar_get_type;
alias c_gtk_level_bar_new gtk_level_bar_new;
alias c_gtk_level_bar_new_for_interval gtk_level_bar_new_for_interval;
alias c_gtk_level_bar_add_offset_value gtk_level_bar_add_offset_value;
alias c_gtk_level_bar_get_inverted gtk_level_bar_get_inverted;
alias c_gtk_level_bar_get_max_value gtk_level_bar_get_max_value;
alias c_gtk_level_bar_get_min_value gtk_level_bar_get_min_value;
alias c_gtk_level_bar_get_mode gtk_level_bar_get_mode;
alias c_gtk_level_bar_get_offset_value gtk_level_bar_get_offset_value;
alias c_gtk_level_bar_get_value gtk_level_bar_get_value;
alias c_gtk_level_bar_remove_offset_value gtk_level_bar_remove_offset_value;
alias c_gtk_level_bar_set_inverted gtk_level_bar_set_inverted;
alias c_gtk_level_bar_set_max_value gtk_level_bar_set_max_value;
alias c_gtk_level_bar_set_min_value gtk_level_bar_set_min_value;
alias c_gtk_level_bar_set_mode gtk_level_bar_set_mode;
alias c_gtk_level_bar_set_value gtk_level_bar_set_value;

// gtk.LinkButton

alias c_gtk_link_button_get_type gtk_link_button_get_type;
alias c_gtk_link_button_new gtk_link_button_new;
alias c_gtk_link_button_new_with_label gtk_link_button_new_with_label;
alias c_gtk_link_button_get_uri gtk_link_button_get_uri;
alias c_gtk_link_button_get_visited gtk_link_button_get_visited;
alias c_gtk_link_button_set_uri gtk_link_button_set_uri;
alias c_gtk_link_button_set_visited gtk_link_button_set_visited;

// gtk.ListBase

alias c_gtk_list_base_get_type gtk_list_base_get_type;

// gtk.ListBox

alias c_gtk_list_box_get_type gtk_list_box_get_type;
alias c_gtk_list_box_new gtk_list_box_new;
alias c_gtk_list_box_append gtk_list_box_append;
alias c_gtk_list_box_bind_model gtk_list_box_bind_model;
alias c_gtk_list_box_drag_highlight_row gtk_list_box_drag_highlight_row;
alias c_gtk_list_box_drag_unhighlight_row gtk_list_box_drag_unhighlight_row;
alias c_gtk_list_box_get_activate_on_single_click gtk_list_box_get_activate_on_single_click;
alias c_gtk_list_box_get_adjustment gtk_list_box_get_adjustment;
alias c_gtk_list_box_get_row_at_index gtk_list_box_get_row_at_index;
alias c_gtk_list_box_get_row_at_y gtk_list_box_get_row_at_y;
alias c_gtk_list_box_get_selected_row gtk_list_box_get_selected_row;
alias c_gtk_list_box_get_selected_rows gtk_list_box_get_selected_rows;
alias c_gtk_list_box_get_selection_mode gtk_list_box_get_selection_mode;
alias c_gtk_list_box_get_show_separators gtk_list_box_get_show_separators;
alias c_gtk_list_box_insert gtk_list_box_insert;
alias c_gtk_list_box_invalidate_filter gtk_list_box_invalidate_filter;
alias c_gtk_list_box_invalidate_headers gtk_list_box_invalidate_headers;
alias c_gtk_list_box_invalidate_sort gtk_list_box_invalidate_sort;
alias c_gtk_list_box_prepend gtk_list_box_prepend;
alias c_gtk_list_box_remove gtk_list_box_remove;
alias c_gtk_list_box_select_all gtk_list_box_select_all;
alias c_gtk_list_box_select_row gtk_list_box_select_row;
alias c_gtk_list_box_selected_foreach gtk_list_box_selected_foreach;
alias c_gtk_list_box_set_activate_on_single_click gtk_list_box_set_activate_on_single_click;
alias c_gtk_list_box_set_adjustment gtk_list_box_set_adjustment;
alias c_gtk_list_box_set_filter_func gtk_list_box_set_filter_func;
alias c_gtk_list_box_set_header_func gtk_list_box_set_header_func;
alias c_gtk_list_box_set_placeholder gtk_list_box_set_placeholder;
alias c_gtk_list_box_set_selection_mode gtk_list_box_set_selection_mode;
alias c_gtk_list_box_set_show_separators gtk_list_box_set_show_separators;
alias c_gtk_list_box_set_sort_func gtk_list_box_set_sort_func;
alias c_gtk_list_box_unselect_all gtk_list_box_unselect_all;
alias c_gtk_list_box_unselect_row gtk_list_box_unselect_row;

// gtk.ListBoxRow

alias c_gtk_list_box_row_get_type gtk_list_box_row_get_type;
alias c_gtk_list_box_row_new gtk_list_box_row_new;
alias c_gtk_list_box_row_changed gtk_list_box_row_changed;
alias c_gtk_list_box_row_get_activatable gtk_list_box_row_get_activatable;
alias c_gtk_list_box_row_get_child gtk_list_box_row_get_child;
alias c_gtk_list_box_row_get_header gtk_list_box_row_get_header;
alias c_gtk_list_box_row_get_index gtk_list_box_row_get_index;
alias c_gtk_list_box_row_get_selectable gtk_list_box_row_get_selectable;
alias c_gtk_list_box_row_is_selected gtk_list_box_row_is_selected;
alias c_gtk_list_box_row_set_activatable gtk_list_box_row_set_activatable;
alias c_gtk_list_box_row_set_child gtk_list_box_row_set_child;
alias c_gtk_list_box_row_set_header gtk_list_box_row_set_header;
alias c_gtk_list_box_row_set_selectable gtk_list_box_row_set_selectable;

// gtk.ListItem

alias c_gtk_list_item_get_type gtk_list_item_get_type;
alias c_gtk_list_item_get_activatable gtk_list_item_get_activatable;
alias c_gtk_list_item_get_child gtk_list_item_get_child;
alias c_gtk_list_item_get_item gtk_list_item_get_item;
alias c_gtk_list_item_get_position gtk_list_item_get_position;
alias c_gtk_list_item_get_selectable gtk_list_item_get_selectable;
alias c_gtk_list_item_get_selected gtk_list_item_get_selected;
alias c_gtk_list_item_set_activatable gtk_list_item_set_activatable;
alias c_gtk_list_item_set_child gtk_list_item_set_child;
alias c_gtk_list_item_set_selectable gtk_list_item_set_selectable;

// gtk.ListItemFactory

alias c_gtk_list_item_factory_get_type gtk_list_item_factory_get_type;

// gtk.ListStore

alias c_gtk_list_store_get_type gtk_list_store_get_type;
alias c_gtk_list_store_new gtk_list_store_new;
alias c_gtk_list_store_newv gtk_list_store_newv;
alias c_gtk_list_store_append gtk_list_store_append;
alias c_gtk_list_store_clear gtk_list_store_clear;
alias c_gtk_list_store_insert gtk_list_store_insert;
alias c_gtk_list_store_insert_after gtk_list_store_insert_after;
alias c_gtk_list_store_insert_before gtk_list_store_insert_before;
alias c_gtk_list_store_insert_with_values gtk_list_store_insert_with_values;
alias c_gtk_list_store_insert_with_valuesv gtk_list_store_insert_with_valuesv;
alias c_gtk_list_store_iter_is_valid gtk_list_store_iter_is_valid;
alias c_gtk_list_store_move_after gtk_list_store_move_after;
alias c_gtk_list_store_move_before gtk_list_store_move_before;
alias c_gtk_list_store_prepend gtk_list_store_prepend;
alias c_gtk_list_store_remove gtk_list_store_remove;
alias c_gtk_list_store_reorder gtk_list_store_reorder;
alias c_gtk_list_store_set gtk_list_store_set;
alias c_gtk_list_store_set_column_types gtk_list_store_set_column_types;
alias c_gtk_list_store_set_valist gtk_list_store_set_valist;
alias c_gtk_list_store_set_value gtk_list_store_set_value;
alias c_gtk_list_store_set_valuesv gtk_list_store_set_valuesv;
alias c_gtk_list_store_swap gtk_list_store_swap;

// gtk.ListView

alias c_gtk_list_view_get_type gtk_list_view_get_type;
alias c_gtk_list_view_new gtk_list_view_new;
alias c_gtk_list_view_get_enable_rubberband gtk_list_view_get_enable_rubberband;
alias c_gtk_list_view_get_factory gtk_list_view_get_factory;
alias c_gtk_list_view_get_model gtk_list_view_get_model;
alias c_gtk_list_view_get_show_separators gtk_list_view_get_show_separators;
alias c_gtk_list_view_get_single_click_activate gtk_list_view_get_single_click_activate;
alias c_gtk_list_view_set_enable_rubberband gtk_list_view_set_enable_rubberband;
alias c_gtk_list_view_set_factory gtk_list_view_set_factory;
alias c_gtk_list_view_set_model gtk_list_view_set_model;
alias c_gtk_list_view_set_show_separators gtk_list_view_set_show_separators;
alias c_gtk_list_view_set_single_click_activate gtk_list_view_set_single_click_activate;

// gtk.LockButton

alias c_gtk_lock_button_get_type gtk_lock_button_get_type;
alias c_gtk_lock_button_new gtk_lock_button_new;
alias c_gtk_lock_button_get_permission gtk_lock_button_get_permission;
alias c_gtk_lock_button_set_permission gtk_lock_button_set_permission;

// gtk.MapListModel

alias c_gtk_map_list_model_get_type gtk_map_list_model_get_type;
alias c_gtk_map_list_model_new gtk_map_list_model_new;
alias c_gtk_map_list_model_get_model gtk_map_list_model_get_model;
alias c_gtk_map_list_model_has_map gtk_map_list_model_has_map;
alias c_gtk_map_list_model_set_map_func gtk_map_list_model_set_map_func;
alias c_gtk_map_list_model_set_model gtk_map_list_model_set_model;

// gtk.MediaControls

alias c_gtk_media_controls_get_type gtk_media_controls_get_type;
alias c_gtk_media_controls_new gtk_media_controls_new;
alias c_gtk_media_controls_get_media_stream gtk_media_controls_get_media_stream;
alias c_gtk_media_controls_set_media_stream gtk_media_controls_set_media_stream;

// gtk.MediaFile

alias c_gtk_media_file_get_type gtk_media_file_get_type;
alias c_gtk_media_file_new gtk_media_file_new;
alias c_gtk_media_file_new_for_file gtk_media_file_new_for_file;
alias c_gtk_media_file_new_for_filename gtk_media_file_new_for_filename;
alias c_gtk_media_file_new_for_input_stream gtk_media_file_new_for_input_stream;
alias c_gtk_media_file_new_for_resource gtk_media_file_new_for_resource;
alias c_gtk_media_file_clear gtk_media_file_clear;
alias c_gtk_media_file_get_file gtk_media_file_get_file;
alias c_gtk_media_file_get_input_stream gtk_media_file_get_input_stream;
alias c_gtk_media_file_set_file gtk_media_file_set_file;
alias c_gtk_media_file_set_filename gtk_media_file_set_filename;
alias c_gtk_media_file_set_input_stream gtk_media_file_set_input_stream;
alias c_gtk_media_file_set_resource gtk_media_file_set_resource;

// gtk.MediaStream

alias c_gtk_media_stream_get_type gtk_media_stream_get_type;
alias c_gtk_media_stream_ended gtk_media_stream_ended;
alias c_gtk_media_stream_error gtk_media_stream_error;
alias c_gtk_media_stream_error_valist gtk_media_stream_error_valist;
alias c_gtk_media_stream_gerror gtk_media_stream_gerror;
alias c_gtk_media_stream_get_duration gtk_media_stream_get_duration;
alias c_gtk_media_stream_get_ended gtk_media_stream_get_ended;
alias c_gtk_media_stream_get_error gtk_media_stream_get_error;
alias c_gtk_media_stream_get_loop gtk_media_stream_get_loop;
alias c_gtk_media_stream_get_muted gtk_media_stream_get_muted;
alias c_gtk_media_stream_get_playing gtk_media_stream_get_playing;
alias c_gtk_media_stream_get_timestamp gtk_media_stream_get_timestamp;
alias c_gtk_media_stream_get_volume gtk_media_stream_get_volume;
alias c_gtk_media_stream_has_audio gtk_media_stream_has_audio;
alias c_gtk_media_stream_has_video gtk_media_stream_has_video;
alias c_gtk_media_stream_is_prepared gtk_media_stream_is_prepared;
alias c_gtk_media_stream_is_seekable gtk_media_stream_is_seekable;
alias c_gtk_media_stream_is_seeking gtk_media_stream_is_seeking;
alias c_gtk_media_stream_pause gtk_media_stream_pause;
alias c_gtk_media_stream_play gtk_media_stream_play;
alias c_gtk_media_stream_prepared gtk_media_stream_prepared;
alias c_gtk_media_stream_realize gtk_media_stream_realize;
alias c_gtk_media_stream_seek gtk_media_stream_seek;
alias c_gtk_media_stream_seek_failed gtk_media_stream_seek_failed;
alias c_gtk_media_stream_seek_success gtk_media_stream_seek_success;
alias c_gtk_media_stream_set_loop gtk_media_stream_set_loop;
alias c_gtk_media_stream_set_muted gtk_media_stream_set_muted;
alias c_gtk_media_stream_set_playing gtk_media_stream_set_playing;
alias c_gtk_media_stream_set_volume gtk_media_stream_set_volume;
alias c_gtk_media_stream_stream_ended gtk_media_stream_stream_ended;
alias c_gtk_media_stream_stream_prepared gtk_media_stream_stream_prepared;
alias c_gtk_media_stream_stream_unprepared gtk_media_stream_stream_unprepared;
alias c_gtk_media_stream_unprepared gtk_media_stream_unprepared;
alias c_gtk_media_stream_unrealize gtk_media_stream_unrealize;
alias c_gtk_media_stream_update gtk_media_stream_update;

// gtk.MenuButton

alias c_gtk_menu_button_get_type gtk_menu_button_get_type;
alias c_gtk_menu_button_new gtk_menu_button_new;
alias c_gtk_menu_button_get_always_show_arrow gtk_menu_button_get_always_show_arrow;
alias c_gtk_menu_button_get_child gtk_menu_button_get_child;
alias c_gtk_menu_button_get_direction gtk_menu_button_get_direction;
alias c_gtk_menu_button_get_has_frame gtk_menu_button_get_has_frame;
alias c_gtk_menu_button_get_icon_name gtk_menu_button_get_icon_name;
alias c_gtk_menu_button_get_label gtk_menu_button_get_label;
alias c_gtk_menu_button_get_menu_model gtk_menu_button_get_menu_model;
alias c_gtk_menu_button_get_popover gtk_menu_button_get_popover;
alias c_gtk_menu_button_get_primary gtk_menu_button_get_primary;
alias c_gtk_menu_button_get_use_underline gtk_menu_button_get_use_underline;
alias c_gtk_menu_button_popdown gtk_menu_button_popdown;
alias c_gtk_menu_button_popup gtk_menu_button_popup;
alias c_gtk_menu_button_set_always_show_arrow gtk_menu_button_set_always_show_arrow;
alias c_gtk_menu_button_set_child gtk_menu_button_set_child;
alias c_gtk_menu_button_set_create_popup_func gtk_menu_button_set_create_popup_func;
alias c_gtk_menu_button_set_direction gtk_menu_button_set_direction;
alias c_gtk_menu_button_set_has_frame gtk_menu_button_set_has_frame;
alias c_gtk_menu_button_set_icon_name gtk_menu_button_set_icon_name;
alias c_gtk_menu_button_set_label gtk_menu_button_set_label;
alias c_gtk_menu_button_set_menu_model gtk_menu_button_set_menu_model;
alias c_gtk_menu_button_set_popover gtk_menu_button_set_popover;
alias c_gtk_menu_button_set_primary gtk_menu_button_set_primary;
alias c_gtk_menu_button_set_use_underline gtk_menu_button_set_use_underline;

// gtk.MessageDialog

alias c_gtk_message_dialog_get_type gtk_message_dialog_get_type;
alias c_gtk_message_dialog_new gtk_message_dialog_new;
alias c_gtk_message_dialog_new_with_markup gtk_message_dialog_new_with_markup;
alias c_gtk_message_dialog_format_secondary_markup gtk_message_dialog_format_secondary_markup;
alias c_gtk_message_dialog_format_secondary_text gtk_message_dialog_format_secondary_text;
alias c_gtk_message_dialog_get_message_area gtk_message_dialog_get_message_area;
alias c_gtk_message_dialog_set_markup gtk_message_dialog_set_markup;

// gtk.MnemonicAction

alias c_gtk_mnemonic_action_get_type gtk_mnemonic_action_get_type;
alias c_gtk_mnemonic_action_get gtk_mnemonic_action_get;

// gtk.MnemonicTrigger

alias c_gtk_mnemonic_trigger_get_type gtk_mnemonic_trigger_get_type;
alias c_gtk_mnemonic_trigger_new gtk_mnemonic_trigger_new;
alias c_gtk_mnemonic_trigger_get_keyval gtk_mnemonic_trigger_get_keyval;

// gtk.MountOperation

alias c_gtk_mount_operation_get_type gtk_mount_operation_get_type;
alias c_gtk_mount_operation_new gtk_mount_operation_new;
alias c_gtk_mount_operation_get_display gtk_mount_operation_get_display;
alias c_gtk_mount_operation_get_parent gtk_mount_operation_get_parent;
alias c_gtk_mount_operation_is_showing gtk_mount_operation_is_showing;
alias c_gtk_mount_operation_set_display gtk_mount_operation_set_display;
alias c_gtk_mount_operation_set_parent gtk_mount_operation_set_parent;

// gtk.MultiFilter

alias c_gtk_multi_filter_get_type gtk_multi_filter_get_type;
alias c_gtk_multi_filter_append gtk_multi_filter_append;
alias c_gtk_multi_filter_remove gtk_multi_filter_remove;

// gtk.MultiSelection

alias c_gtk_multi_selection_get_type gtk_multi_selection_get_type;
alias c_gtk_multi_selection_new gtk_multi_selection_new;
alias c_gtk_multi_selection_get_model gtk_multi_selection_get_model;
alias c_gtk_multi_selection_set_model gtk_multi_selection_set_model;

// gtk.MultiSorter

alias c_gtk_multi_sorter_get_type gtk_multi_sorter_get_type;
alias c_gtk_multi_sorter_new gtk_multi_sorter_new;
alias c_gtk_multi_sorter_append gtk_multi_sorter_append;
alias c_gtk_multi_sorter_remove gtk_multi_sorter_remove;

// gtk.NamedAction

alias c_gtk_named_action_get_type gtk_named_action_get_type;
alias c_gtk_named_action_new gtk_named_action_new;
alias c_gtk_named_action_get_action_name gtk_named_action_get_action_name;

// gtk.Native

alias c_gtk_native_get_type gtk_native_get_type;
alias c_gtk_native_get_for_surface gtk_native_get_for_surface;
alias c_gtk_native_get_renderer gtk_native_get_renderer;
alias c_gtk_native_get_surface gtk_native_get_surface;
alias c_gtk_native_get_surface_transform gtk_native_get_surface_transform;
alias c_gtk_native_realize gtk_native_realize;
alias c_gtk_native_unrealize gtk_native_unrealize;

// gtk.NativeDialog

alias c_gtk_native_dialog_get_type gtk_native_dialog_get_type;
alias c_gtk_native_dialog_destroy gtk_native_dialog_destroy;
alias c_gtk_native_dialog_get_modal gtk_native_dialog_get_modal;
alias c_gtk_native_dialog_get_title gtk_native_dialog_get_title;
alias c_gtk_native_dialog_get_transient_for gtk_native_dialog_get_transient_for;
alias c_gtk_native_dialog_get_visible gtk_native_dialog_get_visible;
alias c_gtk_native_dialog_hide gtk_native_dialog_hide;
alias c_gtk_native_dialog_set_modal gtk_native_dialog_set_modal;
alias c_gtk_native_dialog_set_title gtk_native_dialog_set_title;
alias c_gtk_native_dialog_set_transient_for gtk_native_dialog_set_transient_for;
alias c_gtk_native_dialog_show gtk_native_dialog_show;

// gtk.NeverTrigger

alias c_gtk_never_trigger_get_type gtk_never_trigger_get_type;
alias c_gtk_never_trigger_get gtk_never_trigger_get;

// gtk.NoSelection

alias c_gtk_no_selection_get_type gtk_no_selection_get_type;
alias c_gtk_no_selection_new gtk_no_selection_new;
alias c_gtk_no_selection_get_model gtk_no_selection_get_model;
alias c_gtk_no_selection_set_model gtk_no_selection_set_model;

// gtk.Notebook

alias c_gtk_notebook_get_type gtk_notebook_get_type;
alias c_gtk_notebook_new gtk_notebook_new;
alias c_gtk_notebook_append_page gtk_notebook_append_page;
alias c_gtk_notebook_append_page_menu gtk_notebook_append_page_menu;
alias c_gtk_notebook_detach_tab gtk_notebook_detach_tab;
alias c_gtk_notebook_get_action_widget gtk_notebook_get_action_widget;
alias c_gtk_notebook_get_current_page gtk_notebook_get_current_page;
alias c_gtk_notebook_get_group_name gtk_notebook_get_group_name;
alias c_gtk_notebook_get_menu_label gtk_notebook_get_menu_label;
alias c_gtk_notebook_get_menu_label_text gtk_notebook_get_menu_label_text;
alias c_gtk_notebook_get_n_pages gtk_notebook_get_n_pages;
alias c_gtk_notebook_get_nth_page gtk_notebook_get_nth_page;
alias c_gtk_notebook_get_page gtk_notebook_get_page;
alias c_gtk_notebook_get_pages gtk_notebook_get_pages;
alias c_gtk_notebook_get_scrollable gtk_notebook_get_scrollable;
alias c_gtk_notebook_get_show_border gtk_notebook_get_show_border;
alias c_gtk_notebook_get_show_tabs gtk_notebook_get_show_tabs;
alias c_gtk_notebook_get_tab_detachable gtk_notebook_get_tab_detachable;
alias c_gtk_notebook_get_tab_label gtk_notebook_get_tab_label;
alias c_gtk_notebook_get_tab_label_text gtk_notebook_get_tab_label_text;
alias c_gtk_notebook_get_tab_pos gtk_notebook_get_tab_pos;
alias c_gtk_notebook_get_tab_reorderable gtk_notebook_get_tab_reorderable;
alias c_gtk_notebook_insert_page gtk_notebook_insert_page;
alias c_gtk_notebook_insert_page_menu gtk_notebook_insert_page_menu;
alias c_gtk_notebook_next_page gtk_notebook_next_page;
alias c_gtk_notebook_page_num gtk_notebook_page_num;
alias c_gtk_notebook_popup_disable gtk_notebook_popup_disable;
alias c_gtk_notebook_popup_enable gtk_notebook_popup_enable;
alias c_gtk_notebook_prepend_page gtk_notebook_prepend_page;
alias c_gtk_notebook_prepend_page_menu gtk_notebook_prepend_page_menu;
alias c_gtk_notebook_prev_page gtk_notebook_prev_page;
alias c_gtk_notebook_remove_page gtk_notebook_remove_page;
alias c_gtk_notebook_reorder_child gtk_notebook_reorder_child;
alias c_gtk_notebook_set_action_widget gtk_notebook_set_action_widget;
alias c_gtk_notebook_set_current_page gtk_notebook_set_current_page;
alias c_gtk_notebook_set_group_name gtk_notebook_set_group_name;
alias c_gtk_notebook_set_menu_label gtk_notebook_set_menu_label;
alias c_gtk_notebook_set_menu_label_text gtk_notebook_set_menu_label_text;
alias c_gtk_notebook_set_scrollable gtk_notebook_set_scrollable;
alias c_gtk_notebook_set_show_border gtk_notebook_set_show_border;
alias c_gtk_notebook_set_show_tabs gtk_notebook_set_show_tabs;
alias c_gtk_notebook_set_tab_detachable gtk_notebook_set_tab_detachable;
alias c_gtk_notebook_set_tab_label gtk_notebook_set_tab_label;
alias c_gtk_notebook_set_tab_label_text gtk_notebook_set_tab_label_text;
alias c_gtk_notebook_set_tab_pos gtk_notebook_set_tab_pos;
alias c_gtk_notebook_set_tab_reorderable gtk_notebook_set_tab_reorderable;

// gtk.NotebookPage

alias c_gtk_notebook_page_get_type gtk_notebook_page_get_type;
alias c_gtk_notebook_page_get_child gtk_notebook_page_get_child;

// gtk.NothingAction

alias c_gtk_nothing_action_get_type gtk_nothing_action_get_type;
alias c_gtk_nothing_action_get gtk_nothing_action_get;

// gtk.NumericSorter

alias c_gtk_numeric_sorter_get_type gtk_numeric_sorter_get_type;
alias c_gtk_numeric_sorter_new gtk_numeric_sorter_new;
alias c_gtk_numeric_sorter_get_expression gtk_numeric_sorter_get_expression;
alias c_gtk_numeric_sorter_get_sort_order gtk_numeric_sorter_get_sort_order;
alias c_gtk_numeric_sorter_set_expression gtk_numeric_sorter_set_expression;
alias c_gtk_numeric_sorter_set_sort_order gtk_numeric_sorter_set_sort_order;

// gtk.ObjectExpression

alias c_gtk_object_expression_get_type gtk_object_expression_get_type;
alias c_gtk_object_expression_new gtk_object_expression_new;
alias c_gtk_object_expression_get_object gtk_object_expression_get_object;

// gtk.Orientable

alias c_gtk_orientable_get_type gtk_orientable_get_type;
alias c_gtk_orientable_get_orientation gtk_orientable_get_orientation;
alias c_gtk_orientable_set_orientation gtk_orientable_set_orientation;

// gtk.Overlay

alias c_gtk_overlay_get_type gtk_overlay_get_type;
alias c_gtk_overlay_new gtk_overlay_new;
alias c_gtk_overlay_add_overlay gtk_overlay_add_overlay;
alias c_gtk_overlay_get_child gtk_overlay_get_child;
alias c_gtk_overlay_get_clip_overlay gtk_overlay_get_clip_overlay;
alias c_gtk_overlay_get_measure_overlay gtk_overlay_get_measure_overlay;
alias c_gtk_overlay_remove_overlay gtk_overlay_remove_overlay;
alias c_gtk_overlay_set_child gtk_overlay_set_child;
alias c_gtk_overlay_set_clip_overlay gtk_overlay_set_clip_overlay;
alias c_gtk_overlay_set_measure_overlay gtk_overlay_set_measure_overlay;

// gtk.OverlayLayout

alias c_gtk_overlay_layout_get_type gtk_overlay_layout_get_type;
alias c_gtk_overlay_layout_new gtk_overlay_layout_new;

// gtk.OverlayLayoutChild

alias c_gtk_overlay_layout_child_get_type gtk_overlay_layout_child_get_type;
alias c_gtk_overlay_layout_child_get_clip_overlay gtk_overlay_layout_child_get_clip_overlay;
alias c_gtk_overlay_layout_child_get_measure gtk_overlay_layout_child_get_measure;
alias c_gtk_overlay_layout_child_set_clip_overlay gtk_overlay_layout_child_set_clip_overlay;
alias c_gtk_overlay_layout_child_set_measure gtk_overlay_layout_child_set_measure;

// gtk.PadController

alias c_gtk_pad_controller_get_type gtk_pad_controller_get_type;
alias c_gtk_pad_controller_new gtk_pad_controller_new;
alias c_gtk_pad_controller_set_action gtk_pad_controller_set_action;
alias c_gtk_pad_controller_set_action_entries gtk_pad_controller_set_action_entries;

// gtk.PageSetup

alias c_gtk_page_setup_get_type gtk_page_setup_get_type;
alias c_gtk_page_setup_new gtk_page_setup_new;
alias c_gtk_page_setup_new_from_file gtk_page_setup_new_from_file;
alias c_gtk_page_setup_new_from_gvariant gtk_page_setup_new_from_gvariant;
alias c_gtk_page_setup_new_from_key_file gtk_page_setup_new_from_key_file;
alias c_gtk_page_setup_copy gtk_page_setup_copy;
alias c_gtk_page_setup_get_bottom_margin gtk_page_setup_get_bottom_margin;
alias c_gtk_page_setup_get_left_margin gtk_page_setup_get_left_margin;
alias c_gtk_page_setup_get_orientation gtk_page_setup_get_orientation;
alias c_gtk_page_setup_get_page_height gtk_page_setup_get_page_height;
alias c_gtk_page_setup_get_page_width gtk_page_setup_get_page_width;
alias c_gtk_page_setup_get_paper_height gtk_page_setup_get_paper_height;
alias c_gtk_page_setup_get_paper_size gtk_page_setup_get_paper_size;
alias c_gtk_page_setup_get_paper_width gtk_page_setup_get_paper_width;
alias c_gtk_page_setup_get_right_margin gtk_page_setup_get_right_margin;
alias c_gtk_page_setup_get_top_margin gtk_page_setup_get_top_margin;
alias c_gtk_page_setup_load_file gtk_page_setup_load_file;
alias c_gtk_page_setup_load_key_file gtk_page_setup_load_key_file;
alias c_gtk_page_setup_set_bottom_margin gtk_page_setup_set_bottom_margin;
alias c_gtk_page_setup_set_left_margin gtk_page_setup_set_left_margin;
alias c_gtk_page_setup_set_orientation gtk_page_setup_set_orientation;
alias c_gtk_page_setup_set_paper_size gtk_page_setup_set_paper_size;
alias c_gtk_page_setup_set_paper_size_and_default_margins gtk_page_setup_set_paper_size_and_default_margins;
alias c_gtk_page_setup_set_right_margin gtk_page_setup_set_right_margin;
alias c_gtk_page_setup_set_top_margin gtk_page_setup_set_top_margin;
alias c_gtk_page_setup_to_file gtk_page_setup_to_file;
alias c_gtk_page_setup_to_gvariant gtk_page_setup_to_gvariant;
alias c_gtk_page_setup_to_key_file gtk_page_setup_to_key_file;

// gtk.PageSetupUnixDialog

alias c_gtk_page_setup_unix_dialog_get_type gtk_page_setup_unix_dialog_get_type;
alias c_gtk_page_setup_unix_dialog_new gtk_page_setup_unix_dialog_new;
alias c_gtk_page_setup_unix_dialog_get_page_setup gtk_page_setup_unix_dialog_get_page_setup;
alias c_gtk_page_setup_unix_dialog_get_print_settings gtk_page_setup_unix_dialog_get_print_settings;
alias c_gtk_page_setup_unix_dialog_set_page_setup gtk_page_setup_unix_dialog_set_page_setup;
alias c_gtk_page_setup_unix_dialog_set_print_settings gtk_page_setup_unix_dialog_set_print_settings;

// gtk.Paned

alias c_gtk_paned_get_type gtk_paned_get_type;
alias c_gtk_paned_new gtk_paned_new;
alias c_gtk_paned_get_end_child gtk_paned_get_end_child;
alias c_gtk_paned_get_position gtk_paned_get_position;
alias c_gtk_paned_get_resize_end_child gtk_paned_get_resize_end_child;
alias c_gtk_paned_get_resize_start_child gtk_paned_get_resize_start_child;
alias c_gtk_paned_get_shrink_end_child gtk_paned_get_shrink_end_child;
alias c_gtk_paned_get_shrink_start_child gtk_paned_get_shrink_start_child;
alias c_gtk_paned_get_start_child gtk_paned_get_start_child;
alias c_gtk_paned_get_wide_handle gtk_paned_get_wide_handle;
alias c_gtk_paned_set_end_child gtk_paned_set_end_child;
alias c_gtk_paned_set_position gtk_paned_set_position;
alias c_gtk_paned_set_resize_end_child gtk_paned_set_resize_end_child;
alias c_gtk_paned_set_resize_start_child gtk_paned_set_resize_start_child;
alias c_gtk_paned_set_shrink_end_child gtk_paned_set_shrink_end_child;
alias c_gtk_paned_set_shrink_start_child gtk_paned_set_shrink_start_child;
alias c_gtk_paned_set_start_child gtk_paned_set_start_child;
alias c_gtk_paned_set_wide_handle gtk_paned_set_wide_handle;

// gtk.PaperSize

alias c_gtk_paper_size_get_type gtk_paper_size_get_type;
alias c_gtk_paper_size_new gtk_paper_size_new;
alias c_gtk_paper_size_new_custom gtk_paper_size_new_custom;
alias c_gtk_paper_size_new_from_gvariant gtk_paper_size_new_from_gvariant;
alias c_gtk_paper_size_new_from_ipp gtk_paper_size_new_from_ipp;
alias c_gtk_paper_size_new_from_key_file gtk_paper_size_new_from_key_file;
alias c_gtk_paper_size_new_from_ppd gtk_paper_size_new_from_ppd;
alias c_gtk_paper_size_copy gtk_paper_size_copy;
alias c_gtk_paper_size_free gtk_paper_size_free;
alias c_gtk_paper_size_get_default_bottom_margin gtk_paper_size_get_default_bottom_margin;
alias c_gtk_paper_size_get_default_left_margin gtk_paper_size_get_default_left_margin;
alias c_gtk_paper_size_get_default_right_margin gtk_paper_size_get_default_right_margin;
alias c_gtk_paper_size_get_default_top_margin gtk_paper_size_get_default_top_margin;
alias c_gtk_paper_size_get_display_name gtk_paper_size_get_display_name;
alias c_gtk_paper_size_get_height gtk_paper_size_get_height;
alias c_gtk_paper_size_get_name gtk_paper_size_get_name;
alias c_gtk_paper_size_get_ppd_name gtk_paper_size_get_ppd_name;
alias c_gtk_paper_size_get_width gtk_paper_size_get_width;
alias c_gtk_paper_size_is_custom gtk_paper_size_is_custom;
alias c_gtk_paper_size_is_equal gtk_paper_size_is_equal;
alias c_gtk_paper_size_is_ipp gtk_paper_size_is_ipp;
alias c_gtk_paper_size_set_size gtk_paper_size_set_size;
alias c_gtk_paper_size_to_gvariant gtk_paper_size_to_gvariant;
alias c_gtk_paper_size_to_key_file gtk_paper_size_to_key_file;
alias c_gtk_paper_size_get_default gtk_paper_size_get_default;
alias c_gtk_paper_size_get_paper_sizes gtk_paper_size_get_paper_sizes;

// gtk.ParamSpecExpression

alias c_gtk_param_expression_get_type gtk_param_expression_get_type;

// gtk.PasswordEntry

alias c_gtk_password_entry_get_type gtk_password_entry_get_type;
alias c_gtk_password_entry_new gtk_password_entry_new;
alias c_gtk_password_entry_get_extra_menu gtk_password_entry_get_extra_menu;
alias c_gtk_password_entry_get_show_peek_icon gtk_password_entry_get_show_peek_icon;
alias c_gtk_password_entry_set_extra_menu gtk_password_entry_set_extra_menu;
alias c_gtk_password_entry_set_show_peek_icon gtk_password_entry_set_show_peek_icon;

// gtk.PasswordEntryBuffer

alias c_gtk_password_entry_buffer_get_type gtk_password_entry_buffer_get_type;
alias c_gtk_password_entry_buffer_new gtk_password_entry_buffer_new;

// gtk.Picture

alias c_gtk_picture_get_type gtk_picture_get_type;
alias c_gtk_picture_new gtk_picture_new;
alias c_gtk_picture_new_for_file gtk_picture_new_for_file;
alias c_gtk_picture_new_for_filename gtk_picture_new_for_filename;
alias c_gtk_picture_new_for_paintable gtk_picture_new_for_paintable;
alias c_gtk_picture_new_for_pixbuf gtk_picture_new_for_pixbuf;
alias c_gtk_picture_new_for_resource gtk_picture_new_for_resource;
alias c_gtk_picture_get_alternative_text gtk_picture_get_alternative_text;
alias c_gtk_picture_get_can_shrink gtk_picture_get_can_shrink;
alias c_gtk_picture_get_file gtk_picture_get_file;
alias c_gtk_picture_get_keep_aspect_ratio gtk_picture_get_keep_aspect_ratio;
alias c_gtk_picture_get_paintable gtk_picture_get_paintable;
alias c_gtk_picture_set_alternative_text gtk_picture_set_alternative_text;
alias c_gtk_picture_set_can_shrink gtk_picture_set_can_shrink;
alias c_gtk_picture_set_file gtk_picture_set_file;
alias c_gtk_picture_set_filename gtk_picture_set_filename;
alias c_gtk_picture_set_keep_aspect_ratio gtk_picture_set_keep_aspect_ratio;
alias c_gtk_picture_set_paintable gtk_picture_set_paintable;
alias c_gtk_picture_set_pixbuf gtk_picture_set_pixbuf;
alias c_gtk_picture_set_resource gtk_picture_set_resource;

// gtk.Popover

alias c_gtk_popover_get_type gtk_popover_get_type;
alias c_gtk_popover_new gtk_popover_new;
alias c_gtk_popover_get_autohide gtk_popover_get_autohide;
alias c_gtk_popover_get_cascade_popdown gtk_popover_get_cascade_popdown;
alias c_gtk_popover_get_child gtk_popover_get_child;
alias c_gtk_popover_get_has_arrow gtk_popover_get_has_arrow;
alias c_gtk_popover_get_mnemonics_visible gtk_popover_get_mnemonics_visible;
alias c_gtk_popover_get_offset gtk_popover_get_offset;
alias c_gtk_popover_get_pointing_to gtk_popover_get_pointing_to;
alias c_gtk_popover_get_position gtk_popover_get_position;
alias c_gtk_popover_popdown gtk_popover_popdown;
alias c_gtk_popover_popup gtk_popover_popup;
alias c_gtk_popover_present gtk_popover_present;
alias c_gtk_popover_set_autohide gtk_popover_set_autohide;
alias c_gtk_popover_set_cascade_popdown gtk_popover_set_cascade_popdown;
alias c_gtk_popover_set_child gtk_popover_set_child;
alias c_gtk_popover_set_default_widget gtk_popover_set_default_widget;
alias c_gtk_popover_set_has_arrow gtk_popover_set_has_arrow;
alias c_gtk_popover_set_mnemonics_visible gtk_popover_set_mnemonics_visible;
alias c_gtk_popover_set_offset gtk_popover_set_offset;
alias c_gtk_popover_set_pointing_to gtk_popover_set_pointing_to;
alias c_gtk_popover_set_position gtk_popover_set_position;

// gtk.PopoverMenu

alias c_gtk_popover_menu_get_type gtk_popover_menu_get_type;
alias c_gtk_popover_menu_new_from_model gtk_popover_menu_new_from_model;
alias c_gtk_popover_menu_new_from_model_full gtk_popover_menu_new_from_model_full;
alias c_gtk_popover_menu_add_child gtk_popover_menu_add_child;
alias c_gtk_popover_menu_get_menu_model gtk_popover_menu_get_menu_model;
alias c_gtk_popover_menu_remove_child gtk_popover_menu_remove_child;
alias c_gtk_popover_menu_set_menu_model gtk_popover_menu_set_menu_model;

// gtk.PopoverMenuBar

alias c_gtk_popover_menu_bar_get_type gtk_popover_menu_bar_get_type;
alias c_gtk_popover_menu_bar_new_from_model gtk_popover_menu_bar_new_from_model;
alias c_gtk_popover_menu_bar_add_child gtk_popover_menu_bar_add_child;
alias c_gtk_popover_menu_bar_get_menu_model gtk_popover_menu_bar_get_menu_model;
alias c_gtk_popover_menu_bar_remove_child gtk_popover_menu_bar_remove_child;
alias c_gtk_popover_menu_bar_set_menu_model gtk_popover_menu_bar_set_menu_model;

// gtk.PrintContext

alias c_gtk_print_context_get_type gtk_print_context_get_type;
alias c_gtk_print_context_create_pango_context gtk_print_context_create_pango_context;
alias c_gtk_print_context_create_pango_layout gtk_print_context_create_pango_layout;
alias c_gtk_print_context_get_cairo_context gtk_print_context_get_cairo_context;
alias c_gtk_print_context_get_dpi_x gtk_print_context_get_dpi_x;
alias c_gtk_print_context_get_dpi_y gtk_print_context_get_dpi_y;
alias c_gtk_print_context_get_hard_margins gtk_print_context_get_hard_margins;
alias c_gtk_print_context_get_height gtk_print_context_get_height;
alias c_gtk_print_context_get_page_setup gtk_print_context_get_page_setup;
alias c_gtk_print_context_get_pango_fontmap gtk_print_context_get_pango_fontmap;
alias c_gtk_print_context_get_width gtk_print_context_get_width;
alias c_gtk_print_context_set_cairo_context gtk_print_context_set_cairo_context;

// gtk.PrintJob

alias c_gtk_print_job_get_type gtk_print_job_get_type;
alias c_gtk_print_job_new gtk_print_job_new;
alias c_gtk_print_job_get_collate gtk_print_job_get_collate;
alias c_gtk_print_job_get_n_up gtk_print_job_get_n_up;
alias c_gtk_print_job_get_n_up_layout gtk_print_job_get_n_up_layout;
alias c_gtk_print_job_get_num_copies gtk_print_job_get_num_copies;
alias c_gtk_print_job_get_page_ranges gtk_print_job_get_page_ranges;
alias c_gtk_print_job_get_page_set gtk_print_job_get_page_set;
alias c_gtk_print_job_get_pages gtk_print_job_get_pages;
alias c_gtk_print_job_get_printer gtk_print_job_get_printer;
alias c_gtk_print_job_get_reverse gtk_print_job_get_reverse;
alias c_gtk_print_job_get_rotate gtk_print_job_get_rotate;
alias c_gtk_print_job_get_scale gtk_print_job_get_scale;
alias c_gtk_print_job_get_settings gtk_print_job_get_settings;
alias c_gtk_print_job_get_status gtk_print_job_get_status;
alias c_gtk_print_job_get_surface gtk_print_job_get_surface;
alias c_gtk_print_job_get_title gtk_print_job_get_title;
alias c_gtk_print_job_get_track_print_status gtk_print_job_get_track_print_status;
alias c_gtk_print_job_send gtk_print_job_send;
alias c_gtk_print_job_set_collate gtk_print_job_set_collate;
alias c_gtk_print_job_set_n_up gtk_print_job_set_n_up;
alias c_gtk_print_job_set_n_up_layout gtk_print_job_set_n_up_layout;
alias c_gtk_print_job_set_num_copies gtk_print_job_set_num_copies;
alias c_gtk_print_job_set_page_ranges gtk_print_job_set_page_ranges;
alias c_gtk_print_job_set_page_set gtk_print_job_set_page_set;
alias c_gtk_print_job_set_pages gtk_print_job_set_pages;
alias c_gtk_print_job_set_reverse gtk_print_job_set_reverse;
alias c_gtk_print_job_set_rotate gtk_print_job_set_rotate;
alias c_gtk_print_job_set_scale gtk_print_job_set_scale;
alias c_gtk_print_job_set_source_fd gtk_print_job_set_source_fd;
alias c_gtk_print_job_set_source_file gtk_print_job_set_source_file;
alias c_gtk_print_job_set_track_print_status gtk_print_job_set_track_print_status;

// gtk.PrintOperation

alias c_gtk_print_operation_get_type gtk_print_operation_get_type;
alias c_gtk_print_operation_new gtk_print_operation_new;
alias c_gtk_print_operation_cancel gtk_print_operation_cancel;
alias c_gtk_print_operation_draw_page_finish gtk_print_operation_draw_page_finish;
alias c_gtk_print_operation_get_default_page_setup gtk_print_operation_get_default_page_setup;
alias c_gtk_print_operation_get_embed_page_setup gtk_print_operation_get_embed_page_setup;
alias c_gtk_print_operation_get_error gtk_print_operation_get_error;
alias c_gtk_print_operation_get_has_selection gtk_print_operation_get_has_selection;
alias c_gtk_print_operation_get_n_pages_to_print gtk_print_operation_get_n_pages_to_print;
alias c_gtk_print_operation_get_print_settings gtk_print_operation_get_print_settings;
alias c_gtk_print_operation_get_status gtk_print_operation_get_status;
alias c_gtk_print_operation_get_status_string gtk_print_operation_get_status_string;
alias c_gtk_print_operation_get_support_selection gtk_print_operation_get_support_selection;
alias c_gtk_print_operation_is_finished gtk_print_operation_is_finished;
alias c_gtk_print_operation_run gtk_print_operation_run;
alias c_gtk_print_operation_set_allow_async gtk_print_operation_set_allow_async;
alias c_gtk_print_operation_set_current_page gtk_print_operation_set_current_page;
alias c_gtk_print_operation_set_custom_tab_label gtk_print_operation_set_custom_tab_label;
alias c_gtk_print_operation_set_default_page_setup gtk_print_operation_set_default_page_setup;
alias c_gtk_print_operation_set_defer_drawing gtk_print_operation_set_defer_drawing;
alias c_gtk_print_operation_set_embed_page_setup gtk_print_operation_set_embed_page_setup;
alias c_gtk_print_operation_set_export_filename gtk_print_operation_set_export_filename;
alias c_gtk_print_operation_set_has_selection gtk_print_operation_set_has_selection;
alias c_gtk_print_operation_set_job_name gtk_print_operation_set_job_name;
alias c_gtk_print_operation_set_n_pages gtk_print_operation_set_n_pages;
alias c_gtk_print_operation_set_print_settings gtk_print_operation_set_print_settings;
alias c_gtk_print_operation_set_show_progress gtk_print_operation_set_show_progress;
alias c_gtk_print_operation_set_support_selection gtk_print_operation_set_support_selection;
alias c_gtk_print_operation_set_track_print_status gtk_print_operation_set_track_print_status;
alias c_gtk_print_operation_set_unit gtk_print_operation_set_unit;
alias c_gtk_print_operation_set_use_full_page gtk_print_operation_set_use_full_page;

// gtk.PrintOperationPreview

alias c_gtk_print_operation_preview_get_type gtk_print_operation_preview_get_type;
alias c_gtk_print_operation_preview_end_preview gtk_print_operation_preview_end_preview;
alias c_gtk_print_operation_preview_is_selected gtk_print_operation_preview_is_selected;
alias c_gtk_print_operation_preview_render_page gtk_print_operation_preview_render_page;

// gtk.PrintSettings

alias c_gtk_print_settings_get_type gtk_print_settings_get_type;
alias c_gtk_print_settings_new gtk_print_settings_new;
alias c_gtk_print_settings_new_from_file gtk_print_settings_new_from_file;
alias c_gtk_print_settings_new_from_gvariant gtk_print_settings_new_from_gvariant;
alias c_gtk_print_settings_new_from_key_file gtk_print_settings_new_from_key_file;
alias c_gtk_print_settings_copy gtk_print_settings_copy;
alias c_gtk_print_settings_foreach gtk_print_settings_foreach;
alias c_gtk_print_settings_get gtk_print_settings_get;
alias c_gtk_print_settings_get_bool gtk_print_settings_get_bool;
alias c_gtk_print_settings_get_collate gtk_print_settings_get_collate;
alias c_gtk_print_settings_get_default_source gtk_print_settings_get_default_source;
alias c_gtk_print_settings_get_dither gtk_print_settings_get_dither;
alias c_gtk_print_settings_get_double gtk_print_settings_get_double;
alias c_gtk_print_settings_get_double_with_default gtk_print_settings_get_double_with_default;
alias c_gtk_print_settings_get_duplex gtk_print_settings_get_duplex;
alias c_gtk_print_settings_get_finishings gtk_print_settings_get_finishings;
alias c_gtk_print_settings_get_int gtk_print_settings_get_int;
alias c_gtk_print_settings_get_int_with_default gtk_print_settings_get_int_with_default;
alias c_gtk_print_settings_get_length gtk_print_settings_get_length;
alias c_gtk_print_settings_get_media_type gtk_print_settings_get_media_type;
alias c_gtk_print_settings_get_n_copies gtk_print_settings_get_n_copies;
alias c_gtk_print_settings_get_number_up gtk_print_settings_get_number_up;
alias c_gtk_print_settings_get_number_up_layout gtk_print_settings_get_number_up_layout;
alias c_gtk_print_settings_get_orientation gtk_print_settings_get_orientation;
alias c_gtk_print_settings_get_output_bin gtk_print_settings_get_output_bin;
alias c_gtk_print_settings_get_page_ranges gtk_print_settings_get_page_ranges;
alias c_gtk_print_settings_get_page_set gtk_print_settings_get_page_set;
alias c_gtk_print_settings_get_paper_height gtk_print_settings_get_paper_height;
alias c_gtk_print_settings_get_paper_size gtk_print_settings_get_paper_size;
alias c_gtk_print_settings_get_paper_width gtk_print_settings_get_paper_width;
alias c_gtk_print_settings_get_print_pages gtk_print_settings_get_print_pages;
alias c_gtk_print_settings_get_printer gtk_print_settings_get_printer;
alias c_gtk_print_settings_get_printer_lpi gtk_print_settings_get_printer_lpi;
alias c_gtk_print_settings_get_quality gtk_print_settings_get_quality;
alias c_gtk_print_settings_get_resolution gtk_print_settings_get_resolution;
alias c_gtk_print_settings_get_resolution_x gtk_print_settings_get_resolution_x;
alias c_gtk_print_settings_get_resolution_y gtk_print_settings_get_resolution_y;
alias c_gtk_print_settings_get_reverse gtk_print_settings_get_reverse;
alias c_gtk_print_settings_get_scale gtk_print_settings_get_scale;
alias c_gtk_print_settings_get_use_color gtk_print_settings_get_use_color;
alias c_gtk_print_settings_has_key gtk_print_settings_has_key;
alias c_gtk_print_settings_load_file gtk_print_settings_load_file;
alias c_gtk_print_settings_load_key_file gtk_print_settings_load_key_file;
alias c_gtk_print_settings_set gtk_print_settings_set;
alias c_gtk_print_settings_set_bool gtk_print_settings_set_bool;
alias c_gtk_print_settings_set_collate gtk_print_settings_set_collate;
alias c_gtk_print_settings_set_default_source gtk_print_settings_set_default_source;
alias c_gtk_print_settings_set_dither gtk_print_settings_set_dither;
alias c_gtk_print_settings_set_double gtk_print_settings_set_double;
alias c_gtk_print_settings_set_duplex gtk_print_settings_set_duplex;
alias c_gtk_print_settings_set_finishings gtk_print_settings_set_finishings;
alias c_gtk_print_settings_set_int gtk_print_settings_set_int;
alias c_gtk_print_settings_set_length gtk_print_settings_set_length;
alias c_gtk_print_settings_set_media_type gtk_print_settings_set_media_type;
alias c_gtk_print_settings_set_n_copies gtk_print_settings_set_n_copies;
alias c_gtk_print_settings_set_number_up gtk_print_settings_set_number_up;
alias c_gtk_print_settings_set_number_up_layout gtk_print_settings_set_number_up_layout;
alias c_gtk_print_settings_set_orientation gtk_print_settings_set_orientation;
alias c_gtk_print_settings_set_output_bin gtk_print_settings_set_output_bin;
alias c_gtk_print_settings_set_page_ranges gtk_print_settings_set_page_ranges;
alias c_gtk_print_settings_set_page_set gtk_print_settings_set_page_set;
alias c_gtk_print_settings_set_paper_height gtk_print_settings_set_paper_height;
alias c_gtk_print_settings_set_paper_size gtk_print_settings_set_paper_size;
alias c_gtk_print_settings_set_paper_width gtk_print_settings_set_paper_width;
alias c_gtk_print_settings_set_print_pages gtk_print_settings_set_print_pages;
alias c_gtk_print_settings_set_printer gtk_print_settings_set_printer;
alias c_gtk_print_settings_set_printer_lpi gtk_print_settings_set_printer_lpi;
alias c_gtk_print_settings_set_quality gtk_print_settings_set_quality;
alias c_gtk_print_settings_set_resolution gtk_print_settings_set_resolution;
alias c_gtk_print_settings_set_resolution_xy gtk_print_settings_set_resolution_xy;
alias c_gtk_print_settings_set_reverse gtk_print_settings_set_reverse;
alias c_gtk_print_settings_set_scale gtk_print_settings_set_scale;
alias c_gtk_print_settings_set_use_color gtk_print_settings_set_use_color;
alias c_gtk_print_settings_to_file gtk_print_settings_to_file;
alias c_gtk_print_settings_to_gvariant gtk_print_settings_to_gvariant;
alias c_gtk_print_settings_to_key_file gtk_print_settings_to_key_file;
alias c_gtk_print_settings_unset gtk_print_settings_unset;

// gtk.PrintUnixDialog

alias c_gtk_print_unix_dialog_get_type gtk_print_unix_dialog_get_type;
alias c_gtk_print_unix_dialog_new gtk_print_unix_dialog_new;
alias c_gtk_print_unix_dialog_add_custom_tab gtk_print_unix_dialog_add_custom_tab;
alias c_gtk_print_unix_dialog_get_current_page gtk_print_unix_dialog_get_current_page;
alias c_gtk_print_unix_dialog_get_embed_page_setup gtk_print_unix_dialog_get_embed_page_setup;
alias c_gtk_print_unix_dialog_get_has_selection gtk_print_unix_dialog_get_has_selection;
alias c_gtk_print_unix_dialog_get_manual_capabilities gtk_print_unix_dialog_get_manual_capabilities;
alias c_gtk_print_unix_dialog_get_page_setup gtk_print_unix_dialog_get_page_setup;
alias c_gtk_print_unix_dialog_get_page_setup_set gtk_print_unix_dialog_get_page_setup_set;
alias c_gtk_print_unix_dialog_get_selected_printer gtk_print_unix_dialog_get_selected_printer;
alias c_gtk_print_unix_dialog_get_settings gtk_print_unix_dialog_get_settings;
alias c_gtk_print_unix_dialog_get_support_selection gtk_print_unix_dialog_get_support_selection;
alias c_gtk_print_unix_dialog_set_current_page gtk_print_unix_dialog_set_current_page;
alias c_gtk_print_unix_dialog_set_embed_page_setup gtk_print_unix_dialog_set_embed_page_setup;
alias c_gtk_print_unix_dialog_set_has_selection gtk_print_unix_dialog_set_has_selection;
alias c_gtk_print_unix_dialog_set_manual_capabilities gtk_print_unix_dialog_set_manual_capabilities;
alias c_gtk_print_unix_dialog_set_page_setup gtk_print_unix_dialog_set_page_setup;
alias c_gtk_print_unix_dialog_set_settings gtk_print_unix_dialog_set_settings;
alias c_gtk_print_unix_dialog_set_support_selection gtk_print_unix_dialog_set_support_selection;

// gtk.Printer

alias c_gtk_printer_get_type gtk_printer_get_type;
alias c_gtk_printer_new gtk_printer_new;
alias c_gtk_printer_accepts_pdf gtk_printer_accepts_pdf;
alias c_gtk_printer_accepts_ps gtk_printer_accepts_ps;
alias c_gtk_printer_compare gtk_printer_compare;
alias c_gtk_printer_get_backend gtk_printer_get_backend;
alias c_gtk_printer_get_capabilities gtk_printer_get_capabilities;
alias c_gtk_printer_get_default_page_size gtk_printer_get_default_page_size;
alias c_gtk_printer_get_description gtk_printer_get_description;
alias c_gtk_printer_get_hard_margins gtk_printer_get_hard_margins;
alias c_gtk_printer_get_hard_margins_for_paper_size gtk_printer_get_hard_margins_for_paper_size;
alias c_gtk_printer_get_icon_name gtk_printer_get_icon_name;
alias c_gtk_printer_get_job_count gtk_printer_get_job_count;
alias c_gtk_printer_get_location gtk_printer_get_location;
alias c_gtk_printer_get_name gtk_printer_get_name;
alias c_gtk_printer_get_state_message gtk_printer_get_state_message;
alias c_gtk_printer_has_details gtk_printer_has_details;
alias c_gtk_printer_is_accepting_jobs gtk_printer_is_accepting_jobs;
alias c_gtk_printer_is_active gtk_printer_is_active;
alias c_gtk_printer_is_default gtk_printer_is_default;
alias c_gtk_printer_is_paused gtk_printer_is_paused;
alias c_gtk_printer_is_virtual gtk_printer_is_virtual;
alias c_gtk_printer_list_papers gtk_printer_list_papers;
alias c_gtk_printer_request_details gtk_printer_request_details;

// gtk.ProgressBar

alias c_gtk_progress_bar_get_type gtk_progress_bar_get_type;
alias c_gtk_progress_bar_new gtk_progress_bar_new;
alias c_gtk_progress_bar_get_ellipsize gtk_progress_bar_get_ellipsize;
alias c_gtk_progress_bar_get_fraction gtk_progress_bar_get_fraction;
alias c_gtk_progress_bar_get_inverted gtk_progress_bar_get_inverted;
alias c_gtk_progress_bar_get_pulse_step gtk_progress_bar_get_pulse_step;
alias c_gtk_progress_bar_get_show_text gtk_progress_bar_get_show_text;
alias c_gtk_progress_bar_get_text gtk_progress_bar_get_text;
alias c_gtk_progress_bar_pulse gtk_progress_bar_pulse;
alias c_gtk_progress_bar_set_ellipsize gtk_progress_bar_set_ellipsize;
alias c_gtk_progress_bar_set_fraction gtk_progress_bar_set_fraction;
alias c_gtk_progress_bar_set_inverted gtk_progress_bar_set_inverted;
alias c_gtk_progress_bar_set_pulse_step gtk_progress_bar_set_pulse_step;
alias c_gtk_progress_bar_set_show_text gtk_progress_bar_set_show_text;
alias c_gtk_progress_bar_set_text gtk_progress_bar_set_text;

// gtk.PropertyExpression

alias c_gtk_property_expression_get_type gtk_property_expression_get_type;
alias c_gtk_property_expression_new gtk_property_expression_new;
alias c_gtk_property_expression_new_for_pspec gtk_property_expression_new_for_pspec;
alias c_gtk_property_expression_get_expression gtk_property_expression_get_expression;
alias c_gtk_property_expression_get_pspec gtk_property_expression_get_pspec;

// gtk.Range

alias c_gtk_range_get_type gtk_range_get_type;
alias c_gtk_range_get_adjustment gtk_range_get_adjustment;
alias c_gtk_range_get_fill_level gtk_range_get_fill_level;
alias c_gtk_range_get_flippable gtk_range_get_flippable;
alias c_gtk_range_get_inverted gtk_range_get_inverted;
alias c_gtk_range_get_range_rect gtk_range_get_range_rect;
alias c_gtk_range_get_restrict_to_fill_level gtk_range_get_restrict_to_fill_level;
alias c_gtk_range_get_round_digits gtk_range_get_round_digits;
alias c_gtk_range_get_show_fill_level gtk_range_get_show_fill_level;
alias c_gtk_range_get_slider_range gtk_range_get_slider_range;
alias c_gtk_range_get_slider_size_fixed gtk_range_get_slider_size_fixed;
alias c_gtk_range_get_value gtk_range_get_value;
alias c_gtk_range_set_adjustment gtk_range_set_adjustment;
alias c_gtk_range_set_fill_level gtk_range_set_fill_level;
alias c_gtk_range_set_flippable gtk_range_set_flippable;
alias c_gtk_range_set_increments gtk_range_set_increments;
alias c_gtk_range_set_inverted gtk_range_set_inverted;
alias c_gtk_range_set_range gtk_range_set_range;
alias c_gtk_range_set_restrict_to_fill_level gtk_range_set_restrict_to_fill_level;
alias c_gtk_range_set_round_digits gtk_range_set_round_digits;
alias c_gtk_range_set_show_fill_level gtk_range_set_show_fill_level;
alias c_gtk_range_set_slider_size_fixed gtk_range_set_slider_size_fixed;
alias c_gtk_range_set_value gtk_range_set_value;

// gtk.RecentInfo

alias c_gtk_recent_info_get_type gtk_recent_info_get_type;
alias c_gtk_recent_info_create_app_info gtk_recent_info_create_app_info;
alias c_gtk_recent_info_exists gtk_recent_info_exists;
alias c_gtk_recent_info_get_added gtk_recent_info_get_added;
alias c_gtk_recent_info_get_age gtk_recent_info_get_age;
alias c_gtk_recent_info_get_application_info gtk_recent_info_get_application_info;
alias c_gtk_recent_info_get_applications gtk_recent_info_get_applications;
alias c_gtk_recent_info_get_description gtk_recent_info_get_description;
alias c_gtk_recent_info_get_display_name gtk_recent_info_get_display_name;
alias c_gtk_recent_info_get_gicon gtk_recent_info_get_gicon;
alias c_gtk_recent_info_get_groups gtk_recent_info_get_groups;
alias c_gtk_recent_info_get_mime_type gtk_recent_info_get_mime_type;
alias c_gtk_recent_info_get_modified gtk_recent_info_get_modified;
alias c_gtk_recent_info_get_private_hint gtk_recent_info_get_private_hint;
alias c_gtk_recent_info_get_short_name gtk_recent_info_get_short_name;
alias c_gtk_recent_info_get_uri gtk_recent_info_get_uri;
alias c_gtk_recent_info_get_uri_display gtk_recent_info_get_uri_display;
alias c_gtk_recent_info_get_visited gtk_recent_info_get_visited;
alias c_gtk_recent_info_has_application gtk_recent_info_has_application;
alias c_gtk_recent_info_has_group gtk_recent_info_has_group;
alias c_gtk_recent_info_is_local gtk_recent_info_is_local;
alias c_gtk_recent_info_last_application gtk_recent_info_last_application;
alias c_gtk_recent_info_match gtk_recent_info_match;
alias c_gtk_recent_info_ref gtk_recent_info_ref;
alias c_gtk_recent_info_unref gtk_recent_info_unref;

// gtk.RecentManager

alias c_gtk_recent_manager_get_type gtk_recent_manager_get_type;
alias c_gtk_recent_manager_new gtk_recent_manager_new;
alias c_gtk_recent_manager_get_default gtk_recent_manager_get_default;
alias c_gtk_recent_manager_add_full gtk_recent_manager_add_full;
alias c_gtk_recent_manager_add_item gtk_recent_manager_add_item;
alias c_gtk_recent_manager_get_items gtk_recent_manager_get_items;
alias c_gtk_recent_manager_has_item gtk_recent_manager_has_item;
alias c_gtk_recent_manager_lookup_item gtk_recent_manager_lookup_item;
alias c_gtk_recent_manager_move_item gtk_recent_manager_move_item;
alias c_gtk_recent_manager_purge_items gtk_recent_manager_purge_items;
alias c_gtk_recent_manager_remove_item gtk_recent_manager_remove_item;

// gtk.Requisition

alias c_gtk_requisition_get_type gtk_requisition_get_type;
alias c_gtk_requisition_new gtk_requisition_new;
alias c_gtk_requisition_copy gtk_requisition_copy;
alias c_gtk_requisition_free gtk_requisition_free;

// gtk.Revealer

alias c_gtk_revealer_get_type gtk_revealer_get_type;
alias c_gtk_revealer_new gtk_revealer_new;
alias c_gtk_revealer_get_child gtk_revealer_get_child;
alias c_gtk_revealer_get_child_revealed gtk_revealer_get_child_revealed;
alias c_gtk_revealer_get_reveal_child gtk_revealer_get_reveal_child;
alias c_gtk_revealer_get_transition_duration gtk_revealer_get_transition_duration;
alias c_gtk_revealer_get_transition_type gtk_revealer_get_transition_type;
alias c_gtk_revealer_set_child gtk_revealer_set_child;
alias c_gtk_revealer_set_reveal_child gtk_revealer_set_reveal_child;
alias c_gtk_revealer_set_transition_duration gtk_revealer_set_transition_duration;
alias c_gtk_revealer_set_transition_type gtk_revealer_set_transition_type;

// gtk.Root

alias c_gtk_root_get_type gtk_root_get_type;
alias c_gtk_root_get_display gtk_root_get_display;
alias c_gtk_root_get_focus gtk_root_get_focus;
alias c_gtk_root_set_focus gtk_root_set_focus;

// gtk.Scale

alias c_gtk_scale_get_type gtk_scale_get_type;
alias c_gtk_scale_new gtk_scale_new;
alias c_gtk_scale_new_with_range gtk_scale_new_with_range;
alias c_gtk_scale_add_mark gtk_scale_add_mark;
alias c_gtk_scale_clear_marks gtk_scale_clear_marks;
alias c_gtk_scale_get_digits gtk_scale_get_digits;
alias c_gtk_scale_get_draw_value gtk_scale_get_draw_value;
alias c_gtk_scale_get_has_origin gtk_scale_get_has_origin;
alias c_gtk_scale_get_layout gtk_scale_get_layout;
alias c_gtk_scale_get_layout_offsets gtk_scale_get_layout_offsets;
alias c_gtk_scale_get_value_pos gtk_scale_get_value_pos;
alias c_gtk_scale_set_digits gtk_scale_set_digits;
alias c_gtk_scale_set_draw_value gtk_scale_set_draw_value;
alias c_gtk_scale_set_format_value_func gtk_scale_set_format_value_func;
alias c_gtk_scale_set_has_origin gtk_scale_set_has_origin;
alias c_gtk_scale_set_value_pos gtk_scale_set_value_pos;

// gtk.ScaleButton

alias c_gtk_scale_button_get_type gtk_scale_button_get_type;
alias c_gtk_scale_button_new gtk_scale_button_new;
alias c_gtk_scale_button_get_adjustment gtk_scale_button_get_adjustment;
alias c_gtk_scale_button_get_minus_button gtk_scale_button_get_minus_button;
alias c_gtk_scale_button_get_plus_button gtk_scale_button_get_plus_button;
alias c_gtk_scale_button_get_popup gtk_scale_button_get_popup;
alias c_gtk_scale_button_get_value gtk_scale_button_get_value;
alias c_gtk_scale_button_set_adjustment gtk_scale_button_set_adjustment;
alias c_gtk_scale_button_set_icons gtk_scale_button_set_icons;
alias c_gtk_scale_button_set_value gtk_scale_button_set_value;

// gtk.Scrollable

alias c_gtk_scrollable_get_type gtk_scrollable_get_type;
alias c_gtk_scrollable_get_border gtk_scrollable_get_border;
alias c_gtk_scrollable_get_hadjustment gtk_scrollable_get_hadjustment;
alias c_gtk_scrollable_get_hscroll_policy gtk_scrollable_get_hscroll_policy;
alias c_gtk_scrollable_get_vadjustment gtk_scrollable_get_vadjustment;
alias c_gtk_scrollable_get_vscroll_policy gtk_scrollable_get_vscroll_policy;
alias c_gtk_scrollable_set_hadjustment gtk_scrollable_set_hadjustment;
alias c_gtk_scrollable_set_hscroll_policy gtk_scrollable_set_hscroll_policy;
alias c_gtk_scrollable_set_vadjustment gtk_scrollable_set_vadjustment;
alias c_gtk_scrollable_set_vscroll_policy gtk_scrollable_set_vscroll_policy;

// gtk.Scrollbar

alias c_gtk_scrollbar_get_type gtk_scrollbar_get_type;
alias c_gtk_scrollbar_new gtk_scrollbar_new;
alias c_gtk_scrollbar_get_adjustment gtk_scrollbar_get_adjustment;
alias c_gtk_scrollbar_set_adjustment gtk_scrollbar_set_adjustment;

// gtk.ScrolledWindow

alias c_gtk_scrolled_window_get_type gtk_scrolled_window_get_type;
alias c_gtk_scrolled_window_new gtk_scrolled_window_new;
alias c_gtk_scrolled_window_get_child gtk_scrolled_window_get_child;
alias c_gtk_scrolled_window_get_hadjustment gtk_scrolled_window_get_hadjustment;
alias c_gtk_scrolled_window_get_has_frame gtk_scrolled_window_get_has_frame;
alias c_gtk_scrolled_window_get_hscrollbar gtk_scrolled_window_get_hscrollbar;
alias c_gtk_scrolled_window_get_kinetic_scrolling gtk_scrolled_window_get_kinetic_scrolling;
alias c_gtk_scrolled_window_get_max_content_height gtk_scrolled_window_get_max_content_height;
alias c_gtk_scrolled_window_get_max_content_width gtk_scrolled_window_get_max_content_width;
alias c_gtk_scrolled_window_get_min_content_height gtk_scrolled_window_get_min_content_height;
alias c_gtk_scrolled_window_get_min_content_width gtk_scrolled_window_get_min_content_width;
alias c_gtk_scrolled_window_get_overlay_scrolling gtk_scrolled_window_get_overlay_scrolling;
alias c_gtk_scrolled_window_get_placement gtk_scrolled_window_get_placement;
alias c_gtk_scrolled_window_get_policy gtk_scrolled_window_get_policy;
alias c_gtk_scrolled_window_get_propagate_natural_height gtk_scrolled_window_get_propagate_natural_height;
alias c_gtk_scrolled_window_get_propagate_natural_width gtk_scrolled_window_get_propagate_natural_width;
alias c_gtk_scrolled_window_get_vadjustment gtk_scrolled_window_get_vadjustment;
alias c_gtk_scrolled_window_get_vscrollbar gtk_scrolled_window_get_vscrollbar;
alias c_gtk_scrolled_window_set_child gtk_scrolled_window_set_child;
alias c_gtk_scrolled_window_set_hadjustment gtk_scrolled_window_set_hadjustment;
alias c_gtk_scrolled_window_set_has_frame gtk_scrolled_window_set_has_frame;
alias c_gtk_scrolled_window_set_kinetic_scrolling gtk_scrolled_window_set_kinetic_scrolling;
alias c_gtk_scrolled_window_set_max_content_height gtk_scrolled_window_set_max_content_height;
alias c_gtk_scrolled_window_set_max_content_width gtk_scrolled_window_set_max_content_width;
alias c_gtk_scrolled_window_set_min_content_height gtk_scrolled_window_set_min_content_height;
alias c_gtk_scrolled_window_set_min_content_width gtk_scrolled_window_set_min_content_width;
alias c_gtk_scrolled_window_set_overlay_scrolling gtk_scrolled_window_set_overlay_scrolling;
alias c_gtk_scrolled_window_set_placement gtk_scrolled_window_set_placement;
alias c_gtk_scrolled_window_set_policy gtk_scrolled_window_set_policy;
alias c_gtk_scrolled_window_set_propagate_natural_height gtk_scrolled_window_set_propagate_natural_height;
alias c_gtk_scrolled_window_set_propagate_natural_width gtk_scrolled_window_set_propagate_natural_width;
alias c_gtk_scrolled_window_set_vadjustment gtk_scrolled_window_set_vadjustment;
alias c_gtk_scrolled_window_unset_placement gtk_scrolled_window_unset_placement;

// gtk.SearchBar

alias c_gtk_search_bar_get_type gtk_search_bar_get_type;
alias c_gtk_search_bar_new gtk_search_bar_new;
alias c_gtk_search_bar_connect_entry gtk_search_bar_connect_entry;
alias c_gtk_search_bar_get_child gtk_search_bar_get_child;
alias c_gtk_search_bar_get_key_capture_widget gtk_search_bar_get_key_capture_widget;
alias c_gtk_search_bar_get_search_mode gtk_search_bar_get_search_mode;
alias c_gtk_search_bar_get_show_close_button gtk_search_bar_get_show_close_button;
alias c_gtk_search_bar_set_child gtk_search_bar_set_child;
alias c_gtk_search_bar_set_key_capture_widget gtk_search_bar_set_key_capture_widget;
alias c_gtk_search_bar_set_search_mode gtk_search_bar_set_search_mode;
alias c_gtk_search_bar_set_show_close_button gtk_search_bar_set_show_close_button;

// gtk.SearchEntry

alias c_gtk_search_entry_get_type gtk_search_entry_get_type;
alias c_gtk_search_entry_new gtk_search_entry_new;
alias c_gtk_search_entry_get_key_capture_widget gtk_search_entry_get_key_capture_widget;
alias c_gtk_search_entry_set_key_capture_widget gtk_search_entry_set_key_capture_widget;

// gtk.SelectionFilterModel

alias c_gtk_selection_filter_model_get_type gtk_selection_filter_model_get_type;
alias c_gtk_selection_filter_model_new gtk_selection_filter_model_new;
alias c_gtk_selection_filter_model_get_model gtk_selection_filter_model_get_model;
alias c_gtk_selection_filter_model_set_model gtk_selection_filter_model_set_model;

// gtk.SelectionModel

alias c_gtk_selection_model_get_type gtk_selection_model_get_type;
alias c_gtk_selection_model_get_selection gtk_selection_model_get_selection;
alias c_gtk_selection_model_get_selection_in_range gtk_selection_model_get_selection_in_range;
alias c_gtk_selection_model_is_selected gtk_selection_model_is_selected;
alias c_gtk_selection_model_select_all gtk_selection_model_select_all;
alias c_gtk_selection_model_select_item gtk_selection_model_select_item;
alias c_gtk_selection_model_select_range gtk_selection_model_select_range;
alias c_gtk_selection_model_selection_changed gtk_selection_model_selection_changed;
alias c_gtk_selection_model_set_selection gtk_selection_model_set_selection;
alias c_gtk_selection_model_unselect_all gtk_selection_model_unselect_all;
alias c_gtk_selection_model_unselect_item gtk_selection_model_unselect_item;
alias c_gtk_selection_model_unselect_range gtk_selection_model_unselect_range;

// gtk.Separator

alias c_gtk_separator_get_type gtk_separator_get_type;
alias c_gtk_separator_new gtk_separator_new;

// gtk.Settings

alias c_gtk_settings_get_type gtk_settings_get_type;
alias c_gtk_settings_get_default gtk_settings_get_default;
alias c_gtk_settings_get_for_display gtk_settings_get_for_display;
alias c_gtk_settings_reset_property gtk_settings_reset_property;

// gtk.Shortcut

alias c_gtk_shortcut_get_type gtk_shortcut_get_type;
alias c_gtk_shortcut_new gtk_shortcut_new;
alias c_gtk_shortcut_new_with_arguments gtk_shortcut_new_with_arguments;
alias c_gtk_shortcut_get_action gtk_shortcut_get_action;
alias c_gtk_shortcut_get_arguments gtk_shortcut_get_arguments;
alias c_gtk_shortcut_get_trigger gtk_shortcut_get_trigger;
alias c_gtk_shortcut_set_action gtk_shortcut_set_action;
alias c_gtk_shortcut_set_arguments gtk_shortcut_set_arguments;
alias c_gtk_shortcut_set_trigger gtk_shortcut_set_trigger;

// gtk.ShortcutAction

alias c_gtk_shortcut_action_get_type gtk_shortcut_action_get_type;
alias c_gtk_shortcut_action_parse_string gtk_shortcut_action_parse_string;
alias c_gtk_shortcut_action_activate gtk_shortcut_action_activate;
alias c_gtk_shortcut_action_print gtk_shortcut_action_print;
alias c_gtk_shortcut_action_to_string gtk_shortcut_action_to_string;

// gtk.ShortcutController

alias c_gtk_shortcut_controller_get_type gtk_shortcut_controller_get_type;
alias c_gtk_shortcut_controller_new gtk_shortcut_controller_new;
alias c_gtk_shortcut_controller_new_for_model gtk_shortcut_controller_new_for_model;
alias c_gtk_shortcut_controller_add_shortcut gtk_shortcut_controller_add_shortcut;
alias c_gtk_shortcut_controller_get_mnemonics_modifiers gtk_shortcut_controller_get_mnemonics_modifiers;
alias c_gtk_shortcut_controller_get_scope gtk_shortcut_controller_get_scope;
alias c_gtk_shortcut_controller_remove_shortcut gtk_shortcut_controller_remove_shortcut;
alias c_gtk_shortcut_controller_set_mnemonics_modifiers gtk_shortcut_controller_set_mnemonics_modifiers;
alias c_gtk_shortcut_controller_set_scope gtk_shortcut_controller_set_scope;

// gtk.ShortcutLabel

alias c_gtk_shortcut_label_get_type gtk_shortcut_label_get_type;
alias c_gtk_shortcut_label_new gtk_shortcut_label_new;
alias c_gtk_shortcut_label_get_accelerator gtk_shortcut_label_get_accelerator;
alias c_gtk_shortcut_label_get_disabled_text gtk_shortcut_label_get_disabled_text;
alias c_gtk_shortcut_label_set_accelerator gtk_shortcut_label_set_accelerator;
alias c_gtk_shortcut_label_set_disabled_text gtk_shortcut_label_set_disabled_text;

// gtk.ShortcutManager

alias c_gtk_shortcut_manager_get_type gtk_shortcut_manager_get_type;

// gtk.ShortcutTrigger

alias c_gtk_shortcut_trigger_get_type gtk_shortcut_trigger_get_type;
alias c_gtk_shortcut_trigger_parse_string gtk_shortcut_trigger_parse_string;
alias c_gtk_shortcut_trigger_compare gtk_shortcut_trigger_compare;
alias c_gtk_shortcut_trigger_equal gtk_shortcut_trigger_equal;
alias c_gtk_shortcut_trigger_hash gtk_shortcut_trigger_hash;
alias c_gtk_shortcut_trigger_print gtk_shortcut_trigger_print;
alias c_gtk_shortcut_trigger_print_label gtk_shortcut_trigger_print_label;
alias c_gtk_shortcut_trigger_to_label gtk_shortcut_trigger_to_label;
alias c_gtk_shortcut_trigger_to_string gtk_shortcut_trigger_to_string;
alias c_gtk_shortcut_trigger_trigger gtk_shortcut_trigger_trigger;

// gtk.ShortcutsGroup

alias c_gtk_shortcuts_group_get_type gtk_shortcuts_group_get_type;

// gtk.ShortcutsSection

alias c_gtk_shortcuts_section_get_type gtk_shortcuts_section_get_type;

// gtk.ShortcutsShortcut

alias c_gtk_shortcuts_shortcut_get_type gtk_shortcuts_shortcut_get_type;

// gtk.ShortcutsWindow

alias c_gtk_shortcuts_window_get_type gtk_shortcuts_window_get_type;

// gtk.SignalAction

alias c_gtk_signal_action_get_type gtk_signal_action_get_type;
alias c_gtk_signal_action_new gtk_signal_action_new;
alias c_gtk_signal_action_get_signal_name gtk_signal_action_get_signal_name;

// gtk.SignalListItemFactory

alias c_gtk_signal_list_item_factory_get_type gtk_signal_list_item_factory_get_type;
alias c_gtk_signal_list_item_factory_new gtk_signal_list_item_factory_new;

// gtk.SingleSelection

alias c_gtk_single_selection_get_type gtk_single_selection_get_type;
alias c_gtk_single_selection_new gtk_single_selection_new;
alias c_gtk_single_selection_get_autoselect gtk_single_selection_get_autoselect;
alias c_gtk_single_selection_get_can_unselect gtk_single_selection_get_can_unselect;
alias c_gtk_single_selection_get_model gtk_single_selection_get_model;
alias c_gtk_single_selection_get_selected gtk_single_selection_get_selected;
alias c_gtk_single_selection_get_selected_item gtk_single_selection_get_selected_item;
alias c_gtk_single_selection_set_autoselect gtk_single_selection_set_autoselect;
alias c_gtk_single_selection_set_can_unselect gtk_single_selection_set_can_unselect;
alias c_gtk_single_selection_set_model gtk_single_selection_set_model;
alias c_gtk_single_selection_set_selected gtk_single_selection_set_selected;

// gtk.SizeGroup

alias c_gtk_size_group_get_type gtk_size_group_get_type;
alias c_gtk_size_group_new gtk_size_group_new;
alias c_gtk_size_group_add_widget gtk_size_group_add_widget;
alias c_gtk_size_group_get_mode gtk_size_group_get_mode;
alias c_gtk_size_group_get_widgets gtk_size_group_get_widgets;
alias c_gtk_size_group_remove_widget gtk_size_group_remove_widget;
alias c_gtk_size_group_set_mode gtk_size_group_set_mode;

// gtk.SliceListModel

alias c_gtk_slice_list_model_get_type gtk_slice_list_model_get_type;
alias c_gtk_slice_list_model_new gtk_slice_list_model_new;
alias c_gtk_slice_list_model_get_model gtk_slice_list_model_get_model;
alias c_gtk_slice_list_model_get_offset gtk_slice_list_model_get_offset;
alias c_gtk_slice_list_model_get_size gtk_slice_list_model_get_size;
alias c_gtk_slice_list_model_set_model gtk_slice_list_model_set_model;
alias c_gtk_slice_list_model_set_offset gtk_slice_list_model_set_offset;
alias c_gtk_slice_list_model_set_size gtk_slice_list_model_set_size;

// gtk.Snapshot

alias c_gtk_snapshot_get_type gtk_snapshot_get_type;
alias c_gtk_snapshot_new gtk_snapshot_new;
alias c_gtk_snapshot_append_border gtk_snapshot_append_border;
alias c_gtk_snapshot_append_cairo gtk_snapshot_append_cairo;
alias c_gtk_snapshot_append_color gtk_snapshot_append_color;
alias c_gtk_snapshot_append_conic_gradient gtk_snapshot_append_conic_gradient;
alias c_gtk_snapshot_append_inset_shadow gtk_snapshot_append_inset_shadow;
alias c_gtk_snapshot_append_layout gtk_snapshot_append_layout;
alias c_gtk_snapshot_append_linear_gradient gtk_snapshot_append_linear_gradient;
alias c_gtk_snapshot_append_node gtk_snapshot_append_node;
alias c_gtk_snapshot_append_outset_shadow gtk_snapshot_append_outset_shadow;
alias c_gtk_snapshot_append_radial_gradient gtk_snapshot_append_radial_gradient;
alias c_gtk_snapshot_append_repeating_linear_gradient gtk_snapshot_append_repeating_linear_gradient;
alias c_gtk_snapshot_append_repeating_radial_gradient gtk_snapshot_append_repeating_radial_gradient;
alias c_gtk_snapshot_append_texture gtk_snapshot_append_texture;
alias c_gtk_snapshot_free_to_node gtk_snapshot_free_to_node;
alias c_gtk_snapshot_free_to_paintable gtk_snapshot_free_to_paintable;
alias c_gtk_snapshot_gl_shader_pop_texture gtk_snapshot_gl_shader_pop_texture;
alias c_gtk_snapshot_perspective gtk_snapshot_perspective;
alias c_gtk_snapshot_pop gtk_snapshot_pop;
alias c_gtk_snapshot_push_blend gtk_snapshot_push_blend;
alias c_gtk_snapshot_push_blur gtk_snapshot_push_blur;
alias c_gtk_snapshot_push_clip gtk_snapshot_push_clip;
alias c_gtk_snapshot_push_color_matrix gtk_snapshot_push_color_matrix;
alias c_gtk_snapshot_push_cross_fade gtk_snapshot_push_cross_fade;
alias c_gtk_snapshot_push_debug gtk_snapshot_push_debug;
alias c_gtk_snapshot_push_gl_shader gtk_snapshot_push_gl_shader;
alias c_gtk_snapshot_push_opacity gtk_snapshot_push_opacity;
alias c_gtk_snapshot_push_repeat gtk_snapshot_push_repeat;
alias c_gtk_snapshot_push_rounded_clip gtk_snapshot_push_rounded_clip;
alias c_gtk_snapshot_push_shadow gtk_snapshot_push_shadow;
alias c_gtk_snapshot_render_background gtk_snapshot_render_background;
alias c_gtk_snapshot_render_focus gtk_snapshot_render_focus;
alias c_gtk_snapshot_render_frame gtk_snapshot_render_frame;
alias c_gtk_snapshot_render_insertion_cursor gtk_snapshot_render_insertion_cursor;
alias c_gtk_snapshot_render_layout gtk_snapshot_render_layout;
alias c_gtk_snapshot_restore gtk_snapshot_restore;
alias c_gtk_snapshot_rotate gtk_snapshot_rotate;
alias c_gtk_snapshot_rotate_3d gtk_snapshot_rotate_3d;
alias c_gtk_snapshot_save gtk_snapshot_save;
alias c_gtk_snapshot_scale gtk_snapshot_scale;
alias c_gtk_snapshot_scale_3d gtk_snapshot_scale_3d;
alias c_gtk_snapshot_to_node gtk_snapshot_to_node;
alias c_gtk_snapshot_to_paintable gtk_snapshot_to_paintable;
alias c_gtk_snapshot_transform gtk_snapshot_transform;
alias c_gtk_snapshot_transform_matrix gtk_snapshot_transform_matrix;
alias c_gtk_snapshot_translate gtk_snapshot_translate;
alias c_gtk_snapshot_translate_3d gtk_snapshot_translate_3d;

// gtk.SortListModel

alias c_gtk_sort_list_model_get_type gtk_sort_list_model_get_type;
alias c_gtk_sort_list_model_new gtk_sort_list_model_new;
alias c_gtk_sort_list_model_get_incremental gtk_sort_list_model_get_incremental;
alias c_gtk_sort_list_model_get_model gtk_sort_list_model_get_model;
alias c_gtk_sort_list_model_get_pending gtk_sort_list_model_get_pending;
alias c_gtk_sort_list_model_get_sorter gtk_sort_list_model_get_sorter;
alias c_gtk_sort_list_model_set_incremental gtk_sort_list_model_set_incremental;
alias c_gtk_sort_list_model_set_model gtk_sort_list_model_set_model;
alias c_gtk_sort_list_model_set_sorter gtk_sort_list_model_set_sorter;

// gtk.Sorter

alias c_gtk_sorter_get_type gtk_sorter_get_type;
alias c_gtk_sorter_changed gtk_sorter_changed;
alias c_gtk_sorter_compare gtk_sorter_compare;
alias c_gtk_sorter_get_order gtk_sorter_get_order;

// gtk.SpinButton

alias c_gtk_spin_button_get_type gtk_spin_button_get_type;
alias c_gtk_spin_button_new gtk_spin_button_new;
alias c_gtk_spin_button_new_with_range gtk_spin_button_new_with_range;
alias c_gtk_spin_button_configure gtk_spin_button_configure;
alias c_gtk_spin_button_get_adjustment gtk_spin_button_get_adjustment;
alias c_gtk_spin_button_get_climb_rate gtk_spin_button_get_climb_rate;
alias c_gtk_spin_button_get_digits gtk_spin_button_get_digits;
alias c_gtk_spin_button_get_increments gtk_spin_button_get_increments;
alias c_gtk_spin_button_get_numeric gtk_spin_button_get_numeric;
alias c_gtk_spin_button_get_range gtk_spin_button_get_range;
alias c_gtk_spin_button_get_snap_to_ticks gtk_spin_button_get_snap_to_ticks;
alias c_gtk_spin_button_get_update_policy gtk_spin_button_get_update_policy;
alias c_gtk_spin_button_get_value gtk_spin_button_get_value;
alias c_gtk_spin_button_get_value_as_int gtk_spin_button_get_value_as_int;
alias c_gtk_spin_button_get_wrap gtk_spin_button_get_wrap;
alias c_gtk_spin_button_set_adjustment gtk_spin_button_set_adjustment;
alias c_gtk_spin_button_set_climb_rate gtk_spin_button_set_climb_rate;
alias c_gtk_spin_button_set_digits gtk_spin_button_set_digits;
alias c_gtk_spin_button_set_increments gtk_spin_button_set_increments;
alias c_gtk_spin_button_set_numeric gtk_spin_button_set_numeric;
alias c_gtk_spin_button_set_range gtk_spin_button_set_range;
alias c_gtk_spin_button_set_snap_to_ticks gtk_spin_button_set_snap_to_ticks;
alias c_gtk_spin_button_set_update_policy gtk_spin_button_set_update_policy;
alias c_gtk_spin_button_set_value gtk_spin_button_set_value;
alias c_gtk_spin_button_set_wrap gtk_spin_button_set_wrap;
alias c_gtk_spin_button_spin gtk_spin_button_spin;
alias c_gtk_spin_button_update gtk_spin_button_update;

// gtk.Spinner

alias c_gtk_spinner_get_type gtk_spinner_get_type;
alias c_gtk_spinner_new gtk_spinner_new;
alias c_gtk_spinner_get_spinning gtk_spinner_get_spinning;
alias c_gtk_spinner_set_spinning gtk_spinner_set_spinning;
alias c_gtk_spinner_start gtk_spinner_start;
alias c_gtk_spinner_stop gtk_spinner_stop;

// gtk.Stack

alias c_gtk_stack_get_type gtk_stack_get_type;
alias c_gtk_stack_new gtk_stack_new;
alias c_gtk_stack_add_child gtk_stack_add_child;
alias c_gtk_stack_add_named gtk_stack_add_named;
alias c_gtk_stack_add_titled gtk_stack_add_titled;
alias c_gtk_stack_get_child_by_name gtk_stack_get_child_by_name;
alias c_gtk_stack_get_hhomogeneous gtk_stack_get_hhomogeneous;
alias c_gtk_stack_get_interpolate_size gtk_stack_get_interpolate_size;
alias c_gtk_stack_get_page gtk_stack_get_page;
alias c_gtk_stack_get_pages gtk_stack_get_pages;
alias c_gtk_stack_get_transition_duration gtk_stack_get_transition_duration;
alias c_gtk_stack_get_transition_running gtk_stack_get_transition_running;
alias c_gtk_stack_get_transition_type gtk_stack_get_transition_type;
alias c_gtk_stack_get_vhomogeneous gtk_stack_get_vhomogeneous;
alias c_gtk_stack_get_visible_child gtk_stack_get_visible_child;
alias c_gtk_stack_get_visible_child_name gtk_stack_get_visible_child_name;
alias c_gtk_stack_remove gtk_stack_remove;
alias c_gtk_stack_set_hhomogeneous gtk_stack_set_hhomogeneous;
alias c_gtk_stack_set_interpolate_size gtk_stack_set_interpolate_size;
alias c_gtk_stack_set_transition_duration gtk_stack_set_transition_duration;
alias c_gtk_stack_set_transition_type gtk_stack_set_transition_type;
alias c_gtk_stack_set_vhomogeneous gtk_stack_set_vhomogeneous;
alias c_gtk_stack_set_visible_child gtk_stack_set_visible_child;
alias c_gtk_stack_set_visible_child_full gtk_stack_set_visible_child_full;
alias c_gtk_stack_set_visible_child_name gtk_stack_set_visible_child_name;

// gtk.StackPage

alias c_gtk_stack_page_get_type gtk_stack_page_get_type;
alias c_gtk_stack_page_get_child gtk_stack_page_get_child;
alias c_gtk_stack_page_get_icon_name gtk_stack_page_get_icon_name;
alias c_gtk_stack_page_get_name gtk_stack_page_get_name;
alias c_gtk_stack_page_get_needs_attention gtk_stack_page_get_needs_attention;
alias c_gtk_stack_page_get_title gtk_stack_page_get_title;
alias c_gtk_stack_page_get_use_underline gtk_stack_page_get_use_underline;
alias c_gtk_stack_page_get_visible gtk_stack_page_get_visible;
alias c_gtk_stack_page_set_icon_name gtk_stack_page_set_icon_name;
alias c_gtk_stack_page_set_name gtk_stack_page_set_name;
alias c_gtk_stack_page_set_needs_attention gtk_stack_page_set_needs_attention;
alias c_gtk_stack_page_set_title gtk_stack_page_set_title;
alias c_gtk_stack_page_set_use_underline gtk_stack_page_set_use_underline;
alias c_gtk_stack_page_set_visible gtk_stack_page_set_visible;

// gtk.StackSidebar

alias c_gtk_stack_sidebar_get_type gtk_stack_sidebar_get_type;
alias c_gtk_stack_sidebar_new gtk_stack_sidebar_new;
alias c_gtk_stack_sidebar_get_stack gtk_stack_sidebar_get_stack;
alias c_gtk_stack_sidebar_set_stack gtk_stack_sidebar_set_stack;

// gtk.StackSwitcher

alias c_gtk_stack_switcher_get_type gtk_stack_switcher_get_type;
alias c_gtk_stack_switcher_new gtk_stack_switcher_new;
alias c_gtk_stack_switcher_get_stack gtk_stack_switcher_get_stack;
alias c_gtk_stack_switcher_set_stack gtk_stack_switcher_set_stack;

// gtk.Statusbar

alias c_gtk_statusbar_get_type gtk_statusbar_get_type;
alias c_gtk_statusbar_new gtk_statusbar_new;
alias c_gtk_statusbar_get_context_id gtk_statusbar_get_context_id;
alias c_gtk_statusbar_pop gtk_statusbar_pop;
alias c_gtk_statusbar_push gtk_statusbar_push;
alias c_gtk_statusbar_remove gtk_statusbar_remove;
alias c_gtk_statusbar_remove_all gtk_statusbar_remove_all;

// gtk.StringFilter

alias c_gtk_string_filter_get_type gtk_string_filter_get_type;
alias c_gtk_string_filter_new gtk_string_filter_new;
alias c_gtk_string_filter_get_expression gtk_string_filter_get_expression;
alias c_gtk_string_filter_get_ignore_case gtk_string_filter_get_ignore_case;
alias c_gtk_string_filter_get_match_mode gtk_string_filter_get_match_mode;
alias c_gtk_string_filter_get_search gtk_string_filter_get_search;
alias c_gtk_string_filter_set_expression gtk_string_filter_set_expression;
alias c_gtk_string_filter_set_ignore_case gtk_string_filter_set_ignore_case;
alias c_gtk_string_filter_set_match_mode gtk_string_filter_set_match_mode;
alias c_gtk_string_filter_set_search gtk_string_filter_set_search;

// gtk.StringList

alias c_gtk_string_list_get_type gtk_string_list_get_type;
alias c_gtk_string_list_new gtk_string_list_new;
alias c_gtk_string_list_append gtk_string_list_append;
alias c_gtk_string_list_get_string gtk_string_list_get_string;
alias c_gtk_string_list_remove gtk_string_list_remove;
alias c_gtk_string_list_splice gtk_string_list_splice;
alias c_gtk_string_list_take gtk_string_list_take;

// gtk.StringObject

alias c_gtk_string_object_get_type gtk_string_object_get_type;
alias c_gtk_string_object_new gtk_string_object_new;
alias c_gtk_string_object_get_string gtk_string_object_get_string;

// gtk.StringSorter

alias c_gtk_string_sorter_get_type gtk_string_sorter_get_type;
alias c_gtk_string_sorter_new gtk_string_sorter_new;
alias c_gtk_string_sorter_get_expression gtk_string_sorter_get_expression;
alias c_gtk_string_sorter_get_ignore_case gtk_string_sorter_get_ignore_case;
alias c_gtk_string_sorter_set_expression gtk_string_sorter_set_expression;
alias c_gtk_string_sorter_set_ignore_case gtk_string_sorter_set_ignore_case;

// gtk.StyleContext

alias c_gtk_style_context_get_type gtk_style_context_get_type;
alias c_gtk_style_context_add_provider_for_display gtk_style_context_add_provider_for_display;
alias c_gtk_style_context_remove_provider_for_display gtk_style_context_remove_provider_for_display;
alias c_gtk_style_context_add_class gtk_style_context_add_class;
alias c_gtk_style_context_add_provider gtk_style_context_add_provider;
alias c_gtk_style_context_get_border gtk_style_context_get_border;
alias c_gtk_style_context_get_color gtk_style_context_get_color;
alias c_gtk_style_context_get_display gtk_style_context_get_display;
alias c_gtk_style_context_get_margin gtk_style_context_get_margin;
alias c_gtk_style_context_get_padding gtk_style_context_get_padding;
alias c_gtk_style_context_get_scale gtk_style_context_get_scale;
alias c_gtk_style_context_get_state gtk_style_context_get_state;
alias c_gtk_style_context_has_class gtk_style_context_has_class;
alias c_gtk_style_context_lookup_color gtk_style_context_lookup_color;
alias c_gtk_style_context_remove_class gtk_style_context_remove_class;
alias c_gtk_style_context_remove_provider gtk_style_context_remove_provider;
alias c_gtk_style_context_restore gtk_style_context_restore;
alias c_gtk_style_context_save gtk_style_context_save;
alias c_gtk_style_context_set_display gtk_style_context_set_display;
alias c_gtk_style_context_set_scale gtk_style_context_set_scale;
alias c_gtk_style_context_set_state gtk_style_context_set_state;
alias c_gtk_style_context_to_string gtk_style_context_to_string;

// gtk.StyleProvider

alias c_gtk_style_provider_get_type gtk_style_provider_get_type;

// gtk.Switch

alias c_gtk_switch_get_type gtk_switch_get_type;
alias c_gtk_switch_new gtk_switch_new;
alias c_gtk_switch_get_active gtk_switch_get_active;
alias c_gtk_switch_get_state gtk_switch_get_state;
alias c_gtk_switch_set_active gtk_switch_set_active;
alias c_gtk_switch_set_state gtk_switch_set_state;

// gtk.SymbolicPaintable

alias c_gtk_symbolic_paintable_get_type gtk_symbolic_paintable_get_type;
alias c_gtk_symbolic_paintable_snapshot_symbolic gtk_symbolic_paintable_snapshot_symbolic;

// gtk.Text

alias c_gtk_text_get_type gtk_text_get_type;
alias c_gtk_text_new gtk_text_new;
alias c_gtk_text_new_with_buffer gtk_text_new_with_buffer;
alias c_gtk_text_compute_cursor_extents gtk_text_compute_cursor_extents;
alias c_gtk_text_get_activates_default gtk_text_get_activates_default;
alias c_gtk_text_get_attributes gtk_text_get_attributes;
alias c_gtk_text_get_buffer gtk_text_get_buffer;
alias c_gtk_text_get_enable_emoji_completion gtk_text_get_enable_emoji_completion;
alias c_gtk_text_get_extra_menu gtk_text_get_extra_menu;
alias c_gtk_text_get_input_hints gtk_text_get_input_hints;
alias c_gtk_text_get_input_purpose gtk_text_get_input_purpose;
alias c_gtk_text_get_invisible_char gtk_text_get_invisible_char;
alias c_gtk_text_get_max_length gtk_text_get_max_length;
alias c_gtk_text_get_overwrite_mode gtk_text_get_overwrite_mode;
alias c_gtk_text_get_placeholder_text gtk_text_get_placeholder_text;
alias c_gtk_text_get_propagate_text_width gtk_text_get_propagate_text_width;
alias c_gtk_text_get_tabs gtk_text_get_tabs;
alias c_gtk_text_get_text_length gtk_text_get_text_length;
alias c_gtk_text_get_truncate_multiline gtk_text_get_truncate_multiline;
alias c_gtk_text_get_visibility gtk_text_get_visibility;
alias c_gtk_text_grab_focus_without_selecting gtk_text_grab_focus_without_selecting;
alias c_gtk_text_set_activates_default gtk_text_set_activates_default;
alias c_gtk_text_set_attributes gtk_text_set_attributes;
alias c_gtk_text_set_buffer gtk_text_set_buffer;
alias c_gtk_text_set_enable_emoji_completion gtk_text_set_enable_emoji_completion;
alias c_gtk_text_set_extra_menu gtk_text_set_extra_menu;
alias c_gtk_text_set_input_hints gtk_text_set_input_hints;
alias c_gtk_text_set_input_purpose gtk_text_set_input_purpose;
alias c_gtk_text_set_invisible_char gtk_text_set_invisible_char;
alias c_gtk_text_set_max_length gtk_text_set_max_length;
alias c_gtk_text_set_overwrite_mode gtk_text_set_overwrite_mode;
alias c_gtk_text_set_placeholder_text gtk_text_set_placeholder_text;
alias c_gtk_text_set_propagate_text_width gtk_text_set_propagate_text_width;
alias c_gtk_text_set_tabs gtk_text_set_tabs;
alias c_gtk_text_set_truncate_multiline gtk_text_set_truncate_multiline;
alias c_gtk_text_set_visibility gtk_text_set_visibility;
alias c_gtk_text_unset_invisible_char gtk_text_unset_invisible_char;

// gtk.TextBuffer

alias c_gtk_text_buffer_get_type gtk_text_buffer_get_type;
alias c_gtk_text_buffer_new gtk_text_buffer_new;
alias c_gtk_text_buffer_add_mark gtk_text_buffer_add_mark;
alias c_gtk_text_buffer_add_selection_clipboard gtk_text_buffer_add_selection_clipboard;
alias c_gtk_text_buffer_apply_tag gtk_text_buffer_apply_tag;
alias c_gtk_text_buffer_apply_tag_by_name gtk_text_buffer_apply_tag_by_name;
alias c_gtk_text_buffer_backspace gtk_text_buffer_backspace;
alias c_gtk_text_buffer_begin_irreversible_action gtk_text_buffer_begin_irreversible_action;
alias c_gtk_text_buffer_begin_user_action gtk_text_buffer_begin_user_action;
alias c_gtk_text_buffer_copy_clipboard gtk_text_buffer_copy_clipboard;
alias c_gtk_text_buffer_create_child_anchor gtk_text_buffer_create_child_anchor;
alias c_gtk_text_buffer_create_mark gtk_text_buffer_create_mark;
alias c_gtk_text_buffer_create_tag gtk_text_buffer_create_tag;
alias c_gtk_text_buffer_cut_clipboard gtk_text_buffer_cut_clipboard;
alias c_gtk_text_buffer_delete gtk_text_buffer_delete;
alias c_gtk_text_buffer_delete_interactive gtk_text_buffer_delete_interactive;
alias c_gtk_text_buffer_delete_mark gtk_text_buffer_delete_mark;
alias c_gtk_text_buffer_delete_mark_by_name gtk_text_buffer_delete_mark_by_name;
alias c_gtk_text_buffer_delete_selection gtk_text_buffer_delete_selection;
alias c_gtk_text_buffer_end_irreversible_action gtk_text_buffer_end_irreversible_action;
alias c_gtk_text_buffer_end_user_action gtk_text_buffer_end_user_action;
alias c_gtk_text_buffer_get_bounds gtk_text_buffer_get_bounds;
alias c_gtk_text_buffer_get_can_redo gtk_text_buffer_get_can_redo;
alias c_gtk_text_buffer_get_can_undo gtk_text_buffer_get_can_undo;
alias c_gtk_text_buffer_get_char_count gtk_text_buffer_get_char_count;
alias c_gtk_text_buffer_get_enable_undo gtk_text_buffer_get_enable_undo;
alias c_gtk_text_buffer_get_end_iter gtk_text_buffer_get_end_iter;
alias c_gtk_text_buffer_get_has_selection gtk_text_buffer_get_has_selection;
alias c_gtk_text_buffer_get_insert gtk_text_buffer_get_insert;
alias c_gtk_text_buffer_get_iter_at_child_anchor gtk_text_buffer_get_iter_at_child_anchor;
alias c_gtk_text_buffer_get_iter_at_line gtk_text_buffer_get_iter_at_line;
alias c_gtk_text_buffer_get_iter_at_line_index gtk_text_buffer_get_iter_at_line_index;
alias c_gtk_text_buffer_get_iter_at_line_offset gtk_text_buffer_get_iter_at_line_offset;
alias c_gtk_text_buffer_get_iter_at_mark gtk_text_buffer_get_iter_at_mark;
alias c_gtk_text_buffer_get_iter_at_offset gtk_text_buffer_get_iter_at_offset;
alias c_gtk_text_buffer_get_line_count gtk_text_buffer_get_line_count;
alias c_gtk_text_buffer_get_mark gtk_text_buffer_get_mark;
alias c_gtk_text_buffer_get_max_undo_levels gtk_text_buffer_get_max_undo_levels;
alias c_gtk_text_buffer_get_modified gtk_text_buffer_get_modified;
alias c_gtk_text_buffer_get_selection_bound gtk_text_buffer_get_selection_bound;
alias c_gtk_text_buffer_get_selection_bounds gtk_text_buffer_get_selection_bounds;
alias c_gtk_text_buffer_get_selection_content gtk_text_buffer_get_selection_content;
alias c_gtk_text_buffer_get_slice gtk_text_buffer_get_slice;
alias c_gtk_text_buffer_get_start_iter gtk_text_buffer_get_start_iter;
alias c_gtk_text_buffer_get_tag_table gtk_text_buffer_get_tag_table;
alias c_gtk_text_buffer_get_text gtk_text_buffer_get_text;
alias c_gtk_text_buffer_insert gtk_text_buffer_insert;
alias c_gtk_text_buffer_insert_at_cursor gtk_text_buffer_insert_at_cursor;
alias c_gtk_text_buffer_insert_child_anchor gtk_text_buffer_insert_child_anchor;
alias c_gtk_text_buffer_insert_interactive gtk_text_buffer_insert_interactive;
alias c_gtk_text_buffer_insert_interactive_at_cursor gtk_text_buffer_insert_interactive_at_cursor;
alias c_gtk_text_buffer_insert_markup gtk_text_buffer_insert_markup;
alias c_gtk_text_buffer_insert_paintable gtk_text_buffer_insert_paintable;
alias c_gtk_text_buffer_insert_range gtk_text_buffer_insert_range;
alias c_gtk_text_buffer_insert_range_interactive gtk_text_buffer_insert_range_interactive;
alias c_gtk_text_buffer_insert_with_tags gtk_text_buffer_insert_with_tags;
alias c_gtk_text_buffer_insert_with_tags_by_name gtk_text_buffer_insert_with_tags_by_name;
alias c_gtk_text_buffer_move_mark gtk_text_buffer_move_mark;
alias c_gtk_text_buffer_move_mark_by_name gtk_text_buffer_move_mark_by_name;
alias c_gtk_text_buffer_paste_clipboard gtk_text_buffer_paste_clipboard;
alias c_gtk_text_buffer_place_cursor gtk_text_buffer_place_cursor;
alias c_gtk_text_buffer_redo gtk_text_buffer_redo;
alias c_gtk_text_buffer_remove_all_tags gtk_text_buffer_remove_all_tags;
alias c_gtk_text_buffer_remove_selection_clipboard gtk_text_buffer_remove_selection_clipboard;
alias c_gtk_text_buffer_remove_tag gtk_text_buffer_remove_tag;
alias c_gtk_text_buffer_remove_tag_by_name gtk_text_buffer_remove_tag_by_name;
alias c_gtk_text_buffer_select_range gtk_text_buffer_select_range;
alias c_gtk_text_buffer_set_enable_undo gtk_text_buffer_set_enable_undo;
alias c_gtk_text_buffer_set_max_undo_levels gtk_text_buffer_set_max_undo_levels;
alias c_gtk_text_buffer_set_modified gtk_text_buffer_set_modified;
alias c_gtk_text_buffer_set_text gtk_text_buffer_set_text;
alias c_gtk_text_buffer_undo gtk_text_buffer_undo;

// gtk.TextChildAnchor

alias c_gtk_text_child_anchor_get_type gtk_text_child_anchor_get_type;
alias c_gtk_text_child_anchor_new gtk_text_child_anchor_new;
alias c_gtk_text_child_anchor_new_with_replacement gtk_text_child_anchor_new_with_replacement;
alias c_gtk_text_child_anchor_get_deleted gtk_text_child_anchor_get_deleted;
alias c_gtk_text_child_anchor_get_widgets gtk_text_child_anchor_get_widgets;

// gtk.TextIter

alias c_gtk_text_iter_get_type gtk_text_iter_get_type;
alias c_gtk_text_iter_assign gtk_text_iter_assign;
alias c_gtk_text_iter_backward_char gtk_text_iter_backward_char;
alias c_gtk_text_iter_backward_chars gtk_text_iter_backward_chars;
alias c_gtk_text_iter_backward_cursor_position gtk_text_iter_backward_cursor_position;
alias c_gtk_text_iter_backward_cursor_positions gtk_text_iter_backward_cursor_positions;
alias c_gtk_text_iter_backward_find_char gtk_text_iter_backward_find_char;
alias c_gtk_text_iter_backward_line gtk_text_iter_backward_line;
alias c_gtk_text_iter_backward_lines gtk_text_iter_backward_lines;
alias c_gtk_text_iter_backward_search gtk_text_iter_backward_search;
alias c_gtk_text_iter_backward_sentence_start gtk_text_iter_backward_sentence_start;
alias c_gtk_text_iter_backward_sentence_starts gtk_text_iter_backward_sentence_starts;
alias c_gtk_text_iter_backward_to_tag_toggle gtk_text_iter_backward_to_tag_toggle;
alias c_gtk_text_iter_backward_visible_cursor_position gtk_text_iter_backward_visible_cursor_position;
alias c_gtk_text_iter_backward_visible_cursor_positions gtk_text_iter_backward_visible_cursor_positions;
alias c_gtk_text_iter_backward_visible_line gtk_text_iter_backward_visible_line;
alias c_gtk_text_iter_backward_visible_lines gtk_text_iter_backward_visible_lines;
alias c_gtk_text_iter_backward_visible_word_start gtk_text_iter_backward_visible_word_start;
alias c_gtk_text_iter_backward_visible_word_starts gtk_text_iter_backward_visible_word_starts;
alias c_gtk_text_iter_backward_word_start gtk_text_iter_backward_word_start;
alias c_gtk_text_iter_backward_word_starts gtk_text_iter_backward_word_starts;
alias c_gtk_text_iter_can_insert gtk_text_iter_can_insert;
alias c_gtk_text_iter_compare gtk_text_iter_compare;
alias c_gtk_text_iter_copy gtk_text_iter_copy;
alias c_gtk_text_iter_editable gtk_text_iter_editable;
alias c_gtk_text_iter_ends_line gtk_text_iter_ends_line;
alias c_gtk_text_iter_ends_sentence gtk_text_iter_ends_sentence;
alias c_gtk_text_iter_ends_tag gtk_text_iter_ends_tag;
alias c_gtk_text_iter_ends_word gtk_text_iter_ends_word;
alias c_gtk_text_iter_equal gtk_text_iter_equal;
alias c_gtk_text_iter_forward_char gtk_text_iter_forward_char;
alias c_gtk_text_iter_forward_chars gtk_text_iter_forward_chars;
alias c_gtk_text_iter_forward_cursor_position gtk_text_iter_forward_cursor_position;
alias c_gtk_text_iter_forward_cursor_positions gtk_text_iter_forward_cursor_positions;
alias c_gtk_text_iter_forward_find_char gtk_text_iter_forward_find_char;
alias c_gtk_text_iter_forward_line gtk_text_iter_forward_line;
alias c_gtk_text_iter_forward_lines gtk_text_iter_forward_lines;
alias c_gtk_text_iter_forward_search gtk_text_iter_forward_search;
alias c_gtk_text_iter_forward_sentence_end gtk_text_iter_forward_sentence_end;
alias c_gtk_text_iter_forward_sentence_ends gtk_text_iter_forward_sentence_ends;
alias c_gtk_text_iter_forward_to_end gtk_text_iter_forward_to_end;
alias c_gtk_text_iter_forward_to_line_end gtk_text_iter_forward_to_line_end;
alias c_gtk_text_iter_forward_to_tag_toggle gtk_text_iter_forward_to_tag_toggle;
alias c_gtk_text_iter_forward_visible_cursor_position gtk_text_iter_forward_visible_cursor_position;
alias c_gtk_text_iter_forward_visible_cursor_positions gtk_text_iter_forward_visible_cursor_positions;
alias c_gtk_text_iter_forward_visible_line gtk_text_iter_forward_visible_line;
alias c_gtk_text_iter_forward_visible_lines gtk_text_iter_forward_visible_lines;
alias c_gtk_text_iter_forward_visible_word_end gtk_text_iter_forward_visible_word_end;
alias c_gtk_text_iter_forward_visible_word_ends gtk_text_iter_forward_visible_word_ends;
alias c_gtk_text_iter_forward_word_end gtk_text_iter_forward_word_end;
alias c_gtk_text_iter_forward_word_ends gtk_text_iter_forward_word_ends;
alias c_gtk_text_iter_free gtk_text_iter_free;
alias c_gtk_text_iter_get_buffer gtk_text_iter_get_buffer;
alias c_gtk_text_iter_get_bytes_in_line gtk_text_iter_get_bytes_in_line;
alias c_gtk_text_iter_get_char gtk_text_iter_get_char;
alias c_gtk_text_iter_get_chars_in_line gtk_text_iter_get_chars_in_line;
alias c_gtk_text_iter_get_child_anchor gtk_text_iter_get_child_anchor;
alias c_gtk_text_iter_get_language gtk_text_iter_get_language;
alias c_gtk_text_iter_get_line gtk_text_iter_get_line;
alias c_gtk_text_iter_get_line_index gtk_text_iter_get_line_index;
alias c_gtk_text_iter_get_line_offset gtk_text_iter_get_line_offset;
alias c_gtk_text_iter_get_marks gtk_text_iter_get_marks;
alias c_gtk_text_iter_get_offset gtk_text_iter_get_offset;
alias c_gtk_text_iter_get_paintable gtk_text_iter_get_paintable;
alias c_gtk_text_iter_get_slice gtk_text_iter_get_slice;
alias c_gtk_text_iter_get_tags gtk_text_iter_get_tags;
alias c_gtk_text_iter_get_text gtk_text_iter_get_text;
alias c_gtk_text_iter_get_toggled_tags gtk_text_iter_get_toggled_tags;
alias c_gtk_text_iter_get_visible_line_index gtk_text_iter_get_visible_line_index;
alias c_gtk_text_iter_get_visible_line_offset gtk_text_iter_get_visible_line_offset;
alias c_gtk_text_iter_get_visible_slice gtk_text_iter_get_visible_slice;
alias c_gtk_text_iter_get_visible_text gtk_text_iter_get_visible_text;
alias c_gtk_text_iter_has_tag gtk_text_iter_has_tag;
alias c_gtk_text_iter_in_range gtk_text_iter_in_range;
alias c_gtk_text_iter_inside_sentence gtk_text_iter_inside_sentence;
alias c_gtk_text_iter_inside_word gtk_text_iter_inside_word;
alias c_gtk_text_iter_is_cursor_position gtk_text_iter_is_cursor_position;
alias c_gtk_text_iter_is_end gtk_text_iter_is_end;
alias c_gtk_text_iter_is_start gtk_text_iter_is_start;
alias c_gtk_text_iter_order gtk_text_iter_order;
alias c_gtk_text_iter_set_line gtk_text_iter_set_line;
alias c_gtk_text_iter_set_line_index gtk_text_iter_set_line_index;
alias c_gtk_text_iter_set_line_offset gtk_text_iter_set_line_offset;
alias c_gtk_text_iter_set_offset gtk_text_iter_set_offset;
alias c_gtk_text_iter_set_visible_line_index gtk_text_iter_set_visible_line_index;
alias c_gtk_text_iter_set_visible_line_offset gtk_text_iter_set_visible_line_offset;
alias c_gtk_text_iter_starts_line gtk_text_iter_starts_line;
alias c_gtk_text_iter_starts_sentence gtk_text_iter_starts_sentence;
alias c_gtk_text_iter_starts_tag gtk_text_iter_starts_tag;
alias c_gtk_text_iter_starts_word gtk_text_iter_starts_word;
alias c_gtk_text_iter_toggles_tag gtk_text_iter_toggles_tag;

// gtk.TextMark

alias c_gtk_text_mark_get_type gtk_text_mark_get_type;
alias c_gtk_text_mark_new gtk_text_mark_new;
alias c_gtk_text_mark_get_buffer gtk_text_mark_get_buffer;
alias c_gtk_text_mark_get_deleted gtk_text_mark_get_deleted;
alias c_gtk_text_mark_get_left_gravity gtk_text_mark_get_left_gravity;
alias c_gtk_text_mark_get_name gtk_text_mark_get_name;
alias c_gtk_text_mark_get_visible gtk_text_mark_get_visible;
alias c_gtk_text_mark_set_visible gtk_text_mark_set_visible;

// gtk.TextTag

alias c_gtk_text_tag_get_type gtk_text_tag_get_type;
alias c_gtk_text_tag_new gtk_text_tag_new;
alias c_gtk_text_tag_changed gtk_text_tag_changed;
alias c_gtk_text_tag_get_priority gtk_text_tag_get_priority;
alias c_gtk_text_tag_set_priority gtk_text_tag_set_priority;

// gtk.TextTagTable

alias c_gtk_text_tag_table_get_type gtk_text_tag_table_get_type;
alias c_gtk_text_tag_table_new gtk_text_tag_table_new;
alias c_gtk_text_tag_table_add gtk_text_tag_table_add;
alias c_gtk_text_tag_table_foreach gtk_text_tag_table_foreach;
alias c_gtk_text_tag_table_get_size gtk_text_tag_table_get_size;
alias c_gtk_text_tag_table_lookup gtk_text_tag_table_lookup;
alias c_gtk_text_tag_table_remove gtk_text_tag_table_remove;

// gtk.TextView

alias c_gtk_text_view_get_type gtk_text_view_get_type;
alias c_gtk_text_view_new gtk_text_view_new;
alias c_gtk_text_view_new_with_buffer gtk_text_view_new_with_buffer;
alias c_gtk_text_view_add_child_at_anchor gtk_text_view_add_child_at_anchor;
alias c_gtk_text_view_add_overlay gtk_text_view_add_overlay;
alias c_gtk_text_view_backward_display_line gtk_text_view_backward_display_line;
alias c_gtk_text_view_backward_display_line_start gtk_text_view_backward_display_line_start;
alias c_gtk_text_view_buffer_to_window_coords gtk_text_view_buffer_to_window_coords;
alias c_gtk_text_view_forward_display_line gtk_text_view_forward_display_line;
alias c_gtk_text_view_forward_display_line_end gtk_text_view_forward_display_line_end;
alias c_gtk_text_view_get_accepts_tab gtk_text_view_get_accepts_tab;
alias c_gtk_text_view_get_bottom_margin gtk_text_view_get_bottom_margin;
alias c_gtk_text_view_get_buffer gtk_text_view_get_buffer;
alias c_gtk_text_view_get_cursor_locations gtk_text_view_get_cursor_locations;
alias c_gtk_text_view_get_cursor_visible gtk_text_view_get_cursor_visible;
alias c_gtk_text_view_get_editable gtk_text_view_get_editable;
alias c_gtk_text_view_get_extra_menu gtk_text_view_get_extra_menu;
alias c_gtk_text_view_get_gutter gtk_text_view_get_gutter;
alias c_gtk_text_view_get_indent gtk_text_view_get_indent;
alias c_gtk_text_view_get_input_hints gtk_text_view_get_input_hints;
alias c_gtk_text_view_get_input_purpose gtk_text_view_get_input_purpose;
alias c_gtk_text_view_get_iter_at_location gtk_text_view_get_iter_at_location;
alias c_gtk_text_view_get_iter_at_position gtk_text_view_get_iter_at_position;
alias c_gtk_text_view_get_iter_location gtk_text_view_get_iter_location;
alias c_gtk_text_view_get_justification gtk_text_view_get_justification;
alias c_gtk_text_view_get_left_margin gtk_text_view_get_left_margin;
alias c_gtk_text_view_get_line_at_y gtk_text_view_get_line_at_y;
alias c_gtk_text_view_get_line_yrange gtk_text_view_get_line_yrange;
alias c_gtk_text_view_get_ltr_context gtk_text_view_get_ltr_context;
alias c_gtk_text_view_get_monospace gtk_text_view_get_monospace;
alias c_gtk_text_view_get_overwrite gtk_text_view_get_overwrite;
alias c_gtk_text_view_get_pixels_above_lines gtk_text_view_get_pixels_above_lines;
alias c_gtk_text_view_get_pixels_below_lines gtk_text_view_get_pixels_below_lines;
alias c_gtk_text_view_get_pixels_inside_wrap gtk_text_view_get_pixels_inside_wrap;
alias c_gtk_text_view_get_right_margin gtk_text_view_get_right_margin;
alias c_gtk_text_view_get_rtl_context gtk_text_view_get_rtl_context;
alias c_gtk_text_view_get_tabs gtk_text_view_get_tabs;
alias c_gtk_text_view_get_top_margin gtk_text_view_get_top_margin;
alias c_gtk_text_view_get_visible_rect gtk_text_view_get_visible_rect;
alias c_gtk_text_view_get_wrap_mode gtk_text_view_get_wrap_mode;
alias c_gtk_text_view_im_context_filter_keypress gtk_text_view_im_context_filter_keypress;
alias c_gtk_text_view_move_mark_onscreen gtk_text_view_move_mark_onscreen;
alias c_gtk_text_view_move_overlay gtk_text_view_move_overlay;
alias c_gtk_text_view_move_visually gtk_text_view_move_visually;
alias c_gtk_text_view_place_cursor_onscreen gtk_text_view_place_cursor_onscreen;
alias c_gtk_text_view_remove gtk_text_view_remove;
alias c_gtk_text_view_reset_cursor_blink gtk_text_view_reset_cursor_blink;
alias c_gtk_text_view_reset_im_context gtk_text_view_reset_im_context;
alias c_gtk_text_view_scroll_mark_onscreen gtk_text_view_scroll_mark_onscreen;
alias c_gtk_text_view_scroll_to_iter gtk_text_view_scroll_to_iter;
alias c_gtk_text_view_scroll_to_mark gtk_text_view_scroll_to_mark;
alias c_gtk_text_view_set_accepts_tab gtk_text_view_set_accepts_tab;
alias c_gtk_text_view_set_bottom_margin gtk_text_view_set_bottom_margin;
alias c_gtk_text_view_set_buffer gtk_text_view_set_buffer;
alias c_gtk_text_view_set_cursor_visible gtk_text_view_set_cursor_visible;
alias c_gtk_text_view_set_editable gtk_text_view_set_editable;
alias c_gtk_text_view_set_extra_menu gtk_text_view_set_extra_menu;
alias c_gtk_text_view_set_gutter gtk_text_view_set_gutter;
alias c_gtk_text_view_set_indent gtk_text_view_set_indent;
alias c_gtk_text_view_set_input_hints gtk_text_view_set_input_hints;
alias c_gtk_text_view_set_input_purpose gtk_text_view_set_input_purpose;
alias c_gtk_text_view_set_justification gtk_text_view_set_justification;
alias c_gtk_text_view_set_left_margin gtk_text_view_set_left_margin;
alias c_gtk_text_view_set_monospace gtk_text_view_set_monospace;
alias c_gtk_text_view_set_overwrite gtk_text_view_set_overwrite;
alias c_gtk_text_view_set_pixels_above_lines gtk_text_view_set_pixels_above_lines;
alias c_gtk_text_view_set_pixels_below_lines gtk_text_view_set_pixels_below_lines;
alias c_gtk_text_view_set_pixels_inside_wrap gtk_text_view_set_pixels_inside_wrap;
alias c_gtk_text_view_set_right_margin gtk_text_view_set_right_margin;
alias c_gtk_text_view_set_tabs gtk_text_view_set_tabs;
alias c_gtk_text_view_set_top_margin gtk_text_view_set_top_margin;
alias c_gtk_text_view_set_wrap_mode gtk_text_view_set_wrap_mode;
alias c_gtk_text_view_starts_display_line gtk_text_view_starts_display_line;
alias c_gtk_text_view_window_to_buffer_coords gtk_text_view_window_to_buffer_coords;

// gtk.ToggleButton

alias c_gtk_toggle_button_get_type gtk_toggle_button_get_type;
alias c_gtk_toggle_button_new gtk_toggle_button_new;
alias c_gtk_toggle_button_new_with_label gtk_toggle_button_new_with_label;
alias c_gtk_toggle_button_new_with_mnemonic gtk_toggle_button_new_with_mnemonic;
alias c_gtk_toggle_button_get_active gtk_toggle_button_get_active;
alias c_gtk_toggle_button_set_active gtk_toggle_button_set_active;
alias c_gtk_toggle_button_set_group gtk_toggle_button_set_group;
alias c_gtk_toggle_button_toggled gtk_toggle_button_toggled;

// gtk.Tooltip

alias c_gtk_tooltip_get_type gtk_tooltip_get_type;
alias c_gtk_tooltip_set_custom gtk_tooltip_set_custom;
alias c_gtk_tooltip_set_icon gtk_tooltip_set_icon;
alias c_gtk_tooltip_set_icon_from_gicon gtk_tooltip_set_icon_from_gicon;
alias c_gtk_tooltip_set_icon_from_icon_name gtk_tooltip_set_icon_from_icon_name;
alias c_gtk_tooltip_set_markup gtk_tooltip_set_markup;
alias c_gtk_tooltip_set_text gtk_tooltip_set_text;
alias c_gtk_tooltip_set_tip_area gtk_tooltip_set_tip_area;

// gtk.TreeDragDest

alias c_gtk_tree_drag_dest_get_type gtk_tree_drag_dest_get_type;
alias c_gtk_tree_drag_dest_drag_data_received gtk_tree_drag_dest_drag_data_received;
alias c_gtk_tree_drag_dest_row_drop_possible gtk_tree_drag_dest_row_drop_possible;

// gtk.TreeDragSource

alias c_gtk_tree_drag_source_get_type gtk_tree_drag_source_get_type;
alias c_gtk_tree_drag_source_drag_data_delete gtk_tree_drag_source_drag_data_delete;
alias c_gtk_tree_drag_source_drag_data_get gtk_tree_drag_source_drag_data_get;
alias c_gtk_tree_drag_source_row_draggable gtk_tree_drag_source_row_draggable;

// gtk.TreeExpander

alias c_gtk_tree_expander_get_type gtk_tree_expander_get_type;
alias c_gtk_tree_expander_new gtk_tree_expander_new;
alias c_gtk_tree_expander_get_child gtk_tree_expander_get_child;
alias c_gtk_tree_expander_get_indent_for_icon gtk_tree_expander_get_indent_for_icon;
alias c_gtk_tree_expander_get_item gtk_tree_expander_get_item;
alias c_gtk_tree_expander_get_list_row gtk_tree_expander_get_list_row;
alias c_gtk_tree_expander_set_child gtk_tree_expander_set_child;
alias c_gtk_tree_expander_set_indent_for_icon gtk_tree_expander_set_indent_for_icon;
alias c_gtk_tree_expander_set_list_row gtk_tree_expander_set_list_row;

// gtk.TreeIter

alias c_gtk_tree_iter_get_type gtk_tree_iter_get_type;
alias c_gtk_tree_iter_copy gtk_tree_iter_copy;
alias c_gtk_tree_iter_free gtk_tree_iter_free;

// gtk.TreeListModel

alias c_gtk_tree_list_model_get_type gtk_tree_list_model_get_type;
alias c_gtk_tree_list_model_new gtk_tree_list_model_new;
alias c_gtk_tree_list_model_get_autoexpand gtk_tree_list_model_get_autoexpand;
alias c_gtk_tree_list_model_get_child_row gtk_tree_list_model_get_child_row;
alias c_gtk_tree_list_model_get_model gtk_tree_list_model_get_model;
alias c_gtk_tree_list_model_get_passthrough gtk_tree_list_model_get_passthrough;
alias c_gtk_tree_list_model_get_row gtk_tree_list_model_get_row;
alias c_gtk_tree_list_model_set_autoexpand gtk_tree_list_model_set_autoexpand;

// gtk.TreeListRow

alias c_gtk_tree_list_row_get_type gtk_tree_list_row_get_type;
alias c_gtk_tree_list_row_get_child_row gtk_tree_list_row_get_child_row;
alias c_gtk_tree_list_row_get_children gtk_tree_list_row_get_children;
alias c_gtk_tree_list_row_get_depth gtk_tree_list_row_get_depth;
alias c_gtk_tree_list_row_get_expanded gtk_tree_list_row_get_expanded;
alias c_gtk_tree_list_row_get_item gtk_tree_list_row_get_item;
alias c_gtk_tree_list_row_get_parent gtk_tree_list_row_get_parent;
alias c_gtk_tree_list_row_get_position gtk_tree_list_row_get_position;
alias c_gtk_tree_list_row_is_expandable gtk_tree_list_row_is_expandable;
alias c_gtk_tree_list_row_set_expanded gtk_tree_list_row_set_expanded;

// gtk.TreeListRowSorter

alias c_gtk_tree_list_row_sorter_get_type gtk_tree_list_row_sorter_get_type;
alias c_gtk_tree_list_row_sorter_new gtk_tree_list_row_sorter_new;
alias c_gtk_tree_list_row_sorter_get_sorter gtk_tree_list_row_sorter_get_sorter;
alias c_gtk_tree_list_row_sorter_set_sorter gtk_tree_list_row_sorter_set_sorter;

// gtk.TreeModel

alias c_gtk_tree_model_get_type gtk_tree_model_get_type;
alias c_gtk_tree_model_filter_new gtk_tree_model_filter_new;
alias c_gtk_tree_model_foreach gtk_tree_model_foreach;
alias c_gtk_tree_model_get gtk_tree_model_get;
alias c_gtk_tree_model_get_column_type gtk_tree_model_get_column_type;
alias c_gtk_tree_model_get_flags gtk_tree_model_get_flags;
alias c_gtk_tree_model_get_iter gtk_tree_model_get_iter;
alias c_gtk_tree_model_get_iter_first gtk_tree_model_get_iter_first;
alias c_gtk_tree_model_get_iter_from_string gtk_tree_model_get_iter_from_string;
alias c_gtk_tree_model_get_n_columns gtk_tree_model_get_n_columns;
alias c_gtk_tree_model_get_path gtk_tree_model_get_path;
alias c_gtk_tree_model_get_string_from_iter gtk_tree_model_get_string_from_iter;
alias c_gtk_tree_model_get_valist gtk_tree_model_get_valist;
alias c_gtk_tree_model_get_value gtk_tree_model_get_value;
alias c_gtk_tree_model_iter_children gtk_tree_model_iter_children;
alias c_gtk_tree_model_iter_has_child gtk_tree_model_iter_has_child;
alias c_gtk_tree_model_iter_n_children gtk_tree_model_iter_n_children;
alias c_gtk_tree_model_iter_next gtk_tree_model_iter_next;
alias c_gtk_tree_model_iter_nth_child gtk_tree_model_iter_nth_child;
alias c_gtk_tree_model_iter_parent gtk_tree_model_iter_parent;
alias c_gtk_tree_model_iter_previous gtk_tree_model_iter_previous;
alias c_gtk_tree_model_ref_node gtk_tree_model_ref_node;
alias c_gtk_tree_model_row_changed gtk_tree_model_row_changed;
alias c_gtk_tree_model_row_deleted gtk_tree_model_row_deleted;
alias c_gtk_tree_model_row_has_child_toggled gtk_tree_model_row_has_child_toggled;
alias c_gtk_tree_model_row_inserted gtk_tree_model_row_inserted;
alias c_gtk_tree_model_rows_reordered gtk_tree_model_rows_reordered;
alias c_gtk_tree_model_rows_reordered_with_length gtk_tree_model_rows_reordered_with_length;
alias c_gtk_tree_model_unref_node gtk_tree_model_unref_node;

// gtk.TreeModelFilter

alias c_gtk_tree_model_filter_get_type gtk_tree_model_filter_get_type;
alias c_gtk_tree_model_filter_clear_cache gtk_tree_model_filter_clear_cache;
alias c_gtk_tree_model_filter_convert_child_iter_to_iter gtk_tree_model_filter_convert_child_iter_to_iter;
alias c_gtk_tree_model_filter_convert_child_path_to_path gtk_tree_model_filter_convert_child_path_to_path;
alias c_gtk_tree_model_filter_convert_iter_to_child_iter gtk_tree_model_filter_convert_iter_to_child_iter;
alias c_gtk_tree_model_filter_convert_path_to_child_path gtk_tree_model_filter_convert_path_to_child_path;
alias c_gtk_tree_model_filter_get_model gtk_tree_model_filter_get_model;
alias c_gtk_tree_model_filter_refilter gtk_tree_model_filter_refilter;
alias c_gtk_tree_model_filter_set_modify_func gtk_tree_model_filter_set_modify_func;
alias c_gtk_tree_model_filter_set_visible_column gtk_tree_model_filter_set_visible_column;
alias c_gtk_tree_model_filter_set_visible_func gtk_tree_model_filter_set_visible_func;

// gtk.TreeModelSort

alias c_gtk_tree_model_sort_get_type gtk_tree_model_sort_get_type;
alias c_gtk_tree_model_sort_new_with_model gtk_tree_model_sort_new_with_model;
alias c_gtk_tree_model_sort_clear_cache gtk_tree_model_sort_clear_cache;
alias c_gtk_tree_model_sort_convert_child_iter_to_iter gtk_tree_model_sort_convert_child_iter_to_iter;
alias c_gtk_tree_model_sort_convert_child_path_to_path gtk_tree_model_sort_convert_child_path_to_path;
alias c_gtk_tree_model_sort_convert_iter_to_child_iter gtk_tree_model_sort_convert_iter_to_child_iter;
alias c_gtk_tree_model_sort_convert_path_to_child_path gtk_tree_model_sort_convert_path_to_child_path;
alias c_gtk_tree_model_sort_get_model gtk_tree_model_sort_get_model;
alias c_gtk_tree_model_sort_iter_is_valid gtk_tree_model_sort_iter_is_valid;
alias c_gtk_tree_model_sort_reset_default_sort_func gtk_tree_model_sort_reset_default_sort_func;

// gtk.TreePath

alias c_gtk_tree_path_get_type gtk_tree_path_get_type;
alias c_gtk_tree_path_new gtk_tree_path_new;
alias c_gtk_tree_path_new_first gtk_tree_path_new_first;
alias c_gtk_tree_path_new_from_indices gtk_tree_path_new_from_indices;
alias c_gtk_tree_path_new_from_indicesv gtk_tree_path_new_from_indicesv;
alias c_gtk_tree_path_new_from_string gtk_tree_path_new_from_string;
alias c_gtk_tree_path_append_index gtk_tree_path_append_index;
alias c_gtk_tree_path_compare gtk_tree_path_compare;
alias c_gtk_tree_path_copy gtk_tree_path_copy;
alias c_gtk_tree_path_down gtk_tree_path_down;
alias c_gtk_tree_path_free gtk_tree_path_free;
alias c_gtk_tree_path_get_depth gtk_tree_path_get_depth;
alias c_gtk_tree_path_get_indices gtk_tree_path_get_indices;
alias c_gtk_tree_path_get_indices_with_depth gtk_tree_path_get_indices_with_depth;
alias c_gtk_tree_path_is_ancestor gtk_tree_path_is_ancestor;
alias c_gtk_tree_path_is_descendant gtk_tree_path_is_descendant;
alias c_gtk_tree_path_next gtk_tree_path_next;
alias c_gtk_tree_path_prepend_index gtk_tree_path_prepend_index;
alias c_gtk_tree_path_prev gtk_tree_path_prev;
alias c_gtk_tree_path_to_string gtk_tree_path_to_string;
alias c_gtk_tree_path_up gtk_tree_path_up;

// gtk.TreeRowReference

alias c_gtk_tree_row_reference_get_type gtk_tree_row_reference_get_type;
alias c_gtk_tree_row_reference_new gtk_tree_row_reference_new;
alias c_gtk_tree_row_reference_new_proxy gtk_tree_row_reference_new_proxy;
alias c_gtk_tree_row_reference_copy gtk_tree_row_reference_copy;
alias c_gtk_tree_row_reference_free gtk_tree_row_reference_free;
alias c_gtk_tree_row_reference_get_model gtk_tree_row_reference_get_model;
alias c_gtk_tree_row_reference_get_path gtk_tree_row_reference_get_path;
alias c_gtk_tree_row_reference_valid gtk_tree_row_reference_valid;
alias c_gtk_tree_row_reference_deleted gtk_tree_row_reference_deleted;
alias c_gtk_tree_row_reference_inserted gtk_tree_row_reference_inserted;
alias c_gtk_tree_row_reference_reordered gtk_tree_row_reference_reordered;

// gtk.TreeSelection

alias c_gtk_tree_selection_get_type gtk_tree_selection_get_type;
alias c_gtk_tree_selection_count_selected_rows gtk_tree_selection_count_selected_rows;
alias c_gtk_tree_selection_get_mode gtk_tree_selection_get_mode;
alias c_gtk_tree_selection_get_select_function gtk_tree_selection_get_select_function;
alias c_gtk_tree_selection_get_selected gtk_tree_selection_get_selected;
alias c_gtk_tree_selection_get_selected_rows gtk_tree_selection_get_selected_rows;
alias c_gtk_tree_selection_get_tree_view gtk_tree_selection_get_tree_view;
alias c_gtk_tree_selection_get_user_data gtk_tree_selection_get_user_data;
alias c_gtk_tree_selection_iter_is_selected gtk_tree_selection_iter_is_selected;
alias c_gtk_tree_selection_path_is_selected gtk_tree_selection_path_is_selected;
alias c_gtk_tree_selection_select_all gtk_tree_selection_select_all;
alias c_gtk_tree_selection_select_iter gtk_tree_selection_select_iter;
alias c_gtk_tree_selection_select_path gtk_tree_selection_select_path;
alias c_gtk_tree_selection_select_range gtk_tree_selection_select_range;
alias c_gtk_tree_selection_selected_foreach gtk_tree_selection_selected_foreach;
alias c_gtk_tree_selection_set_mode gtk_tree_selection_set_mode;
alias c_gtk_tree_selection_set_select_function gtk_tree_selection_set_select_function;
alias c_gtk_tree_selection_unselect_all gtk_tree_selection_unselect_all;
alias c_gtk_tree_selection_unselect_iter gtk_tree_selection_unselect_iter;
alias c_gtk_tree_selection_unselect_path gtk_tree_selection_unselect_path;
alias c_gtk_tree_selection_unselect_range gtk_tree_selection_unselect_range;

// gtk.TreeSortable

alias c_gtk_tree_sortable_get_type gtk_tree_sortable_get_type;
alias c_gtk_tree_sortable_get_sort_column_id gtk_tree_sortable_get_sort_column_id;
alias c_gtk_tree_sortable_has_default_sort_func gtk_tree_sortable_has_default_sort_func;
alias c_gtk_tree_sortable_set_default_sort_func gtk_tree_sortable_set_default_sort_func;
alias c_gtk_tree_sortable_set_sort_column_id gtk_tree_sortable_set_sort_column_id;
alias c_gtk_tree_sortable_set_sort_func gtk_tree_sortable_set_sort_func;
alias c_gtk_tree_sortable_sort_column_changed gtk_tree_sortable_sort_column_changed;

// gtk.TreeStore

alias c_gtk_tree_store_get_type gtk_tree_store_get_type;
alias c_gtk_tree_store_new gtk_tree_store_new;
alias c_gtk_tree_store_newv gtk_tree_store_newv;
alias c_gtk_tree_store_append gtk_tree_store_append;
alias c_gtk_tree_store_clear gtk_tree_store_clear;
alias c_gtk_tree_store_insert gtk_tree_store_insert;
alias c_gtk_tree_store_insert_after gtk_tree_store_insert_after;
alias c_gtk_tree_store_insert_before gtk_tree_store_insert_before;
alias c_gtk_tree_store_insert_with_values gtk_tree_store_insert_with_values;
alias c_gtk_tree_store_insert_with_valuesv gtk_tree_store_insert_with_valuesv;
alias c_gtk_tree_store_is_ancestor gtk_tree_store_is_ancestor;
alias c_gtk_tree_store_iter_depth gtk_tree_store_iter_depth;
alias c_gtk_tree_store_iter_is_valid gtk_tree_store_iter_is_valid;
alias c_gtk_tree_store_move_after gtk_tree_store_move_after;
alias c_gtk_tree_store_move_before gtk_tree_store_move_before;
alias c_gtk_tree_store_prepend gtk_tree_store_prepend;
alias c_gtk_tree_store_remove gtk_tree_store_remove;
alias c_gtk_tree_store_reorder gtk_tree_store_reorder;
alias c_gtk_tree_store_set gtk_tree_store_set;
alias c_gtk_tree_store_set_column_types gtk_tree_store_set_column_types;
alias c_gtk_tree_store_set_valist gtk_tree_store_set_valist;
alias c_gtk_tree_store_set_value gtk_tree_store_set_value;
alias c_gtk_tree_store_set_valuesv gtk_tree_store_set_valuesv;
alias c_gtk_tree_store_swap gtk_tree_store_swap;

// gtk.TreeView

alias c_gtk_tree_view_get_type gtk_tree_view_get_type;
alias c_gtk_tree_view_new gtk_tree_view_new;
alias c_gtk_tree_view_new_with_model gtk_tree_view_new_with_model;
alias c_gtk_tree_view_append_column gtk_tree_view_append_column;
alias c_gtk_tree_view_collapse_all gtk_tree_view_collapse_all;
alias c_gtk_tree_view_collapse_row gtk_tree_view_collapse_row;
alias c_gtk_tree_view_columns_autosize gtk_tree_view_columns_autosize;
alias c_gtk_tree_view_convert_bin_window_to_tree_coords gtk_tree_view_convert_bin_window_to_tree_coords;
alias c_gtk_tree_view_convert_bin_window_to_widget_coords gtk_tree_view_convert_bin_window_to_widget_coords;
alias c_gtk_tree_view_convert_tree_to_bin_window_coords gtk_tree_view_convert_tree_to_bin_window_coords;
alias c_gtk_tree_view_convert_tree_to_widget_coords gtk_tree_view_convert_tree_to_widget_coords;
alias c_gtk_tree_view_convert_widget_to_bin_window_coords gtk_tree_view_convert_widget_to_bin_window_coords;
alias c_gtk_tree_view_convert_widget_to_tree_coords gtk_tree_view_convert_widget_to_tree_coords;
alias c_gtk_tree_view_create_row_drag_icon gtk_tree_view_create_row_drag_icon;
alias c_gtk_tree_view_enable_model_drag_dest gtk_tree_view_enable_model_drag_dest;
alias c_gtk_tree_view_enable_model_drag_source gtk_tree_view_enable_model_drag_source;
alias c_gtk_tree_view_expand_all gtk_tree_view_expand_all;
alias c_gtk_tree_view_expand_row gtk_tree_view_expand_row;
alias c_gtk_tree_view_expand_to_path gtk_tree_view_expand_to_path;
alias c_gtk_tree_view_get_activate_on_single_click gtk_tree_view_get_activate_on_single_click;
alias c_gtk_tree_view_get_background_area gtk_tree_view_get_background_area;
alias c_gtk_tree_view_get_cell_area gtk_tree_view_get_cell_area;
alias c_gtk_tree_view_get_column gtk_tree_view_get_column;
alias c_gtk_tree_view_get_columns gtk_tree_view_get_columns;
alias c_gtk_tree_view_get_cursor gtk_tree_view_get_cursor;
alias c_gtk_tree_view_get_dest_row_at_pos gtk_tree_view_get_dest_row_at_pos;
alias c_gtk_tree_view_get_drag_dest_row gtk_tree_view_get_drag_dest_row;
alias c_gtk_tree_view_get_enable_search gtk_tree_view_get_enable_search;
alias c_gtk_tree_view_get_enable_tree_lines gtk_tree_view_get_enable_tree_lines;
alias c_gtk_tree_view_get_expander_column gtk_tree_view_get_expander_column;
alias c_gtk_tree_view_get_fixed_height_mode gtk_tree_view_get_fixed_height_mode;
alias c_gtk_tree_view_get_grid_lines gtk_tree_view_get_grid_lines;
alias c_gtk_tree_view_get_headers_clickable gtk_tree_view_get_headers_clickable;
alias c_gtk_tree_view_get_headers_visible gtk_tree_view_get_headers_visible;
alias c_gtk_tree_view_get_hover_expand gtk_tree_view_get_hover_expand;
alias c_gtk_tree_view_get_hover_selection gtk_tree_view_get_hover_selection;
alias c_gtk_tree_view_get_level_indentation gtk_tree_view_get_level_indentation;
alias c_gtk_tree_view_get_model gtk_tree_view_get_model;
alias c_gtk_tree_view_get_n_columns gtk_tree_view_get_n_columns;
alias c_gtk_tree_view_get_path_at_pos gtk_tree_view_get_path_at_pos;
alias c_gtk_tree_view_get_reorderable gtk_tree_view_get_reorderable;
alias c_gtk_tree_view_get_row_separator_func gtk_tree_view_get_row_separator_func;
alias c_gtk_tree_view_get_rubber_banding gtk_tree_view_get_rubber_banding;
alias c_gtk_tree_view_get_search_column gtk_tree_view_get_search_column;
alias c_gtk_tree_view_get_search_entry gtk_tree_view_get_search_entry;
alias c_gtk_tree_view_get_search_equal_func gtk_tree_view_get_search_equal_func;
alias c_gtk_tree_view_get_selection gtk_tree_view_get_selection;
alias c_gtk_tree_view_get_show_expanders gtk_tree_view_get_show_expanders;
alias c_gtk_tree_view_get_tooltip_column gtk_tree_view_get_tooltip_column;
alias c_gtk_tree_view_get_tooltip_context gtk_tree_view_get_tooltip_context;
alias c_gtk_tree_view_get_visible_range gtk_tree_view_get_visible_range;
alias c_gtk_tree_view_get_visible_rect gtk_tree_view_get_visible_rect;
alias c_gtk_tree_view_insert_column gtk_tree_view_insert_column;
alias c_gtk_tree_view_insert_column_with_attributes gtk_tree_view_insert_column_with_attributes;
alias c_gtk_tree_view_insert_column_with_data_func gtk_tree_view_insert_column_with_data_func;
alias c_gtk_tree_view_is_blank_at_pos gtk_tree_view_is_blank_at_pos;
alias c_gtk_tree_view_is_rubber_banding_active gtk_tree_view_is_rubber_banding_active;
alias c_gtk_tree_view_map_expanded_rows gtk_tree_view_map_expanded_rows;
alias c_gtk_tree_view_move_column_after gtk_tree_view_move_column_after;
alias c_gtk_tree_view_remove_column gtk_tree_view_remove_column;
alias c_gtk_tree_view_row_activated gtk_tree_view_row_activated;
alias c_gtk_tree_view_row_expanded gtk_tree_view_row_expanded;
alias c_gtk_tree_view_scroll_to_cell gtk_tree_view_scroll_to_cell;
alias c_gtk_tree_view_scroll_to_point gtk_tree_view_scroll_to_point;
alias c_gtk_tree_view_set_activate_on_single_click gtk_tree_view_set_activate_on_single_click;
alias c_gtk_tree_view_set_column_drag_function gtk_tree_view_set_column_drag_function;
alias c_gtk_tree_view_set_cursor gtk_tree_view_set_cursor;
alias c_gtk_tree_view_set_cursor_on_cell gtk_tree_view_set_cursor_on_cell;
alias c_gtk_tree_view_set_drag_dest_row gtk_tree_view_set_drag_dest_row;
alias c_gtk_tree_view_set_enable_search gtk_tree_view_set_enable_search;
alias c_gtk_tree_view_set_enable_tree_lines gtk_tree_view_set_enable_tree_lines;
alias c_gtk_tree_view_set_expander_column gtk_tree_view_set_expander_column;
alias c_gtk_tree_view_set_fixed_height_mode gtk_tree_view_set_fixed_height_mode;
alias c_gtk_tree_view_set_grid_lines gtk_tree_view_set_grid_lines;
alias c_gtk_tree_view_set_headers_clickable gtk_tree_view_set_headers_clickable;
alias c_gtk_tree_view_set_headers_visible gtk_tree_view_set_headers_visible;
alias c_gtk_tree_view_set_hover_expand gtk_tree_view_set_hover_expand;
alias c_gtk_tree_view_set_hover_selection gtk_tree_view_set_hover_selection;
alias c_gtk_tree_view_set_level_indentation gtk_tree_view_set_level_indentation;
alias c_gtk_tree_view_set_model gtk_tree_view_set_model;
alias c_gtk_tree_view_set_reorderable gtk_tree_view_set_reorderable;
alias c_gtk_tree_view_set_row_separator_func gtk_tree_view_set_row_separator_func;
alias c_gtk_tree_view_set_rubber_banding gtk_tree_view_set_rubber_banding;
alias c_gtk_tree_view_set_search_column gtk_tree_view_set_search_column;
alias c_gtk_tree_view_set_search_entry gtk_tree_view_set_search_entry;
alias c_gtk_tree_view_set_search_equal_func gtk_tree_view_set_search_equal_func;
alias c_gtk_tree_view_set_show_expanders gtk_tree_view_set_show_expanders;
alias c_gtk_tree_view_set_tooltip_cell gtk_tree_view_set_tooltip_cell;
alias c_gtk_tree_view_set_tooltip_column gtk_tree_view_set_tooltip_column;
alias c_gtk_tree_view_set_tooltip_row gtk_tree_view_set_tooltip_row;
alias c_gtk_tree_view_unset_rows_drag_dest gtk_tree_view_unset_rows_drag_dest;
alias c_gtk_tree_view_unset_rows_drag_source gtk_tree_view_unset_rows_drag_source;

// gtk.TreeViewColumn

alias c_gtk_tree_view_column_get_type gtk_tree_view_column_get_type;
alias c_gtk_tree_view_column_new gtk_tree_view_column_new;
alias c_gtk_tree_view_column_new_with_area gtk_tree_view_column_new_with_area;
alias c_gtk_tree_view_column_new_with_attributes gtk_tree_view_column_new_with_attributes;
alias c_gtk_tree_view_column_add_attribute gtk_tree_view_column_add_attribute;
alias c_gtk_tree_view_column_cell_get_position gtk_tree_view_column_cell_get_position;
alias c_gtk_tree_view_column_cell_get_size gtk_tree_view_column_cell_get_size;
alias c_gtk_tree_view_column_cell_is_visible gtk_tree_view_column_cell_is_visible;
alias c_gtk_tree_view_column_cell_set_cell_data gtk_tree_view_column_cell_set_cell_data;
alias c_gtk_tree_view_column_clear gtk_tree_view_column_clear;
alias c_gtk_tree_view_column_clear_attributes gtk_tree_view_column_clear_attributes;
alias c_gtk_tree_view_column_clicked gtk_tree_view_column_clicked;
alias c_gtk_tree_view_column_focus_cell gtk_tree_view_column_focus_cell;
alias c_gtk_tree_view_column_get_alignment gtk_tree_view_column_get_alignment;
alias c_gtk_tree_view_column_get_button gtk_tree_view_column_get_button;
alias c_gtk_tree_view_column_get_clickable gtk_tree_view_column_get_clickable;
alias c_gtk_tree_view_column_get_expand gtk_tree_view_column_get_expand;
alias c_gtk_tree_view_column_get_fixed_width gtk_tree_view_column_get_fixed_width;
alias c_gtk_tree_view_column_get_max_width gtk_tree_view_column_get_max_width;
alias c_gtk_tree_view_column_get_min_width gtk_tree_view_column_get_min_width;
alias c_gtk_tree_view_column_get_reorderable gtk_tree_view_column_get_reorderable;
alias c_gtk_tree_view_column_get_resizable gtk_tree_view_column_get_resizable;
alias c_gtk_tree_view_column_get_sizing gtk_tree_view_column_get_sizing;
alias c_gtk_tree_view_column_get_sort_column_id gtk_tree_view_column_get_sort_column_id;
alias c_gtk_tree_view_column_get_sort_indicator gtk_tree_view_column_get_sort_indicator;
alias c_gtk_tree_view_column_get_sort_order gtk_tree_view_column_get_sort_order;
alias c_gtk_tree_view_column_get_spacing gtk_tree_view_column_get_spacing;
alias c_gtk_tree_view_column_get_title gtk_tree_view_column_get_title;
alias c_gtk_tree_view_column_get_tree_view gtk_tree_view_column_get_tree_view;
alias c_gtk_tree_view_column_get_visible gtk_tree_view_column_get_visible;
alias c_gtk_tree_view_column_get_widget gtk_tree_view_column_get_widget;
alias c_gtk_tree_view_column_get_width gtk_tree_view_column_get_width;
alias c_gtk_tree_view_column_get_x_offset gtk_tree_view_column_get_x_offset;
alias c_gtk_tree_view_column_pack_end gtk_tree_view_column_pack_end;
alias c_gtk_tree_view_column_pack_start gtk_tree_view_column_pack_start;
alias c_gtk_tree_view_column_queue_resize gtk_tree_view_column_queue_resize;
alias c_gtk_tree_view_column_set_alignment gtk_tree_view_column_set_alignment;
alias c_gtk_tree_view_column_set_attributes gtk_tree_view_column_set_attributes;
alias c_gtk_tree_view_column_set_cell_data_func gtk_tree_view_column_set_cell_data_func;
alias c_gtk_tree_view_column_set_clickable gtk_tree_view_column_set_clickable;
alias c_gtk_tree_view_column_set_expand gtk_tree_view_column_set_expand;
alias c_gtk_tree_view_column_set_fixed_width gtk_tree_view_column_set_fixed_width;
alias c_gtk_tree_view_column_set_max_width gtk_tree_view_column_set_max_width;
alias c_gtk_tree_view_column_set_min_width gtk_tree_view_column_set_min_width;
alias c_gtk_tree_view_column_set_reorderable gtk_tree_view_column_set_reorderable;
alias c_gtk_tree_view_column_set_resizable gtk_tree_view_column_set_resizable;
alias c_gtk_tree_view_column_set_sizing gtk_tree_view_column_set_sizing;
alias c_gtk_tree_view_column_set_sort_column_id gtk_tree_view_column_set_sort_column_id;
alias c_gtk_tree_view_column_set_sort_indicator gtk_tree_view_column_set_sort_indicator;
alias c_gtk_tree_view_column_set_sort_order gtk_tree_view_column_set_sort_order;
alias c_gtk_tree_view_column_set_spacing gtk_tree_view_column_set_spacing;
alias c_gtk_tree_view_column_set_title gtk_tree_view_column_set_title;
alias c_gtk_tree_view_column_set_visible gtk_tree_view_column_set_visible;
alias c_gtk_tree_view_column_set_widget gtk_tree_view_column_set_widget;

// gtk.Video

alias c_gtk_video_get_type gtk_video_get_type;
alias c_gtk_video_new gtk_video_new;
alias c_gtk_video_new_for_file gtk_video_new_for_file;
alias c_gtk_video_new_for_filename gtk_video_new_for_filename;
alias c_gtk_video_new_for_media_stream gtk_video_new_for_media_stream;
alias c_gtk_video_new_for_resource gtk_video_new_for_resource;
alias c_gtk_video_get_autoplay gtk_video_get_autoplay;
alias c_gtk_video_get_file gtk_video_get_file;
alias c_gtk_video_get_loop gtk_video_get_loop;
alias c_gtk_video_get_media_stream gtk_video_get_media_stream;
alias c_gtk_video_set_autoplay gtk_video_set_autoplay;
alias c_gtk_video_set_file gtk_video_set_file;
alias c_gtk_video_set_filename gtk_video_set_filename;
alias c_gtk_video_set_loop gtk_video_set_loop;
alias c_gtk_video_set_media_stream gtk_video_set_media_stream;
alias c_gtk_video_set_resource gtk_video_set_resource;

// gtk.Viewport

alias c_gtk_viewport_get_type gtk_viewport_get_type;
alias c_gtk_viewport_new gtk_viewport_new;
alias c_gtk_viewport_get_child gtk_viewport_get_child;
alias c_gtk_viewport_get_scroll_to_focus gtk_viewport_get_scroll_to_focus;
alias c_gtk_viewport_set_child gtk_viewport_set_child;
alias c_gtk_viewport_set_scroll_to_focus gtk_viewport_set_scroll_to_focus;

// gtk.VolumeButton

alias c_gtk_volume_button_get_type gtk_volume_button_get_type;
alias c_gtk_volume_button_new gtk_volume_button_new;

// gtk.Widget

alias c_gtk_widget_get_type gtk_widget_get_type;
alias c_gtk_widget_get_default_direction gtk_widget_get_default_direction;
alias c_gtk_widget_set_default_direction gtk_widget_set_default_direction;
alias c_gtk_widget_action_set_enabled gtk_widget_action_set_enabled;
alias c_gtk_widget_activate gtk_widget_activate;
alias c_gtk_widget_activate_action gtk_widget_activate_action;
alias c_gtk_widget_activate_action_variant gtk_widget_activate_action_variant;
alias c_gtk_widget_activate_default gtk_widget_activate_default;
alias c_gtk_widget_add_controller gtk_widget_add_controller;
alias c_gtk_widget_add_css_class gtk_widget_add_css_class;
alias c_gtk_widget_add_mnemonic_label gtk_widget_add_mnemonic_label;
alias c_gtk_widget_add_tick_callback gtk_widget_add_tick_callback;
alias c_gtk_widget_allocate gtk_widget_allocate;
alias c_gtk_widget_child_focus gtk_widget_child_focus;
alias c_gtk_widget_compute_bounds gtk_widget_compute_bounds;
alias c_gtk_widget_compute_expand gtk_widget_compute_expand;
alias c_gtk_widget_compute_point gtk_widget_compute_point;
alias c_gtk_widget_compute_transform gtk_widget_compute_transform;
alias c_gtk_widget_contains gtk_widget_contains;
alias c_gtk_widget_create_pango_context gtk_widget_create_pango_context;
alias c_gtk_widget_create_pango_layout gtk_widget_create_pango_layout;
alias c_gtk_drag_check_threshold gtk_drag_check_threshold;
alias c_gtk_widget_error_bell gtk_widget_error_bell;
alias c_gtk_widget_get_allocated_baseline gtk_widget_get_allocated_baseline;
alias c_gtk_widget_get_allocated_height gtk_widget_get_allocated_height;
alias c_gtk_widget_get_allocated_width gtk_widget_get_allocated_width;
alias c_gtk_widget_get_allocation gtk_widget_get_allocation;
alias c_gtk_widget_get_ancestor gtk_widget_get_ancestor;
alias c_gtk_widget_get_can_focus gtk_widget_get_can_focus;
alias c_gtk_widget_get_can_target gtk_widget_get_can_target;
alias c_gtk_widget_get_child_visible gtk_widget_get_child_visible;
alias c_gtk_widget_get_clipboard gtk_widget_get_clipboard;
alias c_gtk_widget_get_css_classes gtk_widget_get_css_classes;
alias c_gtk_widget_get_css_name gtk_widget_get_css_name;
alias c_gtk_widget_get_cursor gtk_widget_get_cursor;
alias c_gtk_widget_get_direction gtk_widget_get_direction;
alias c_gtk_widget_get_display gtk_widget_get_display;
alias c_gtk_widget_get_first_child gtk_widget_get_first_child;
alias c_gtk_widget_get_focus_child gtk_widget_get_focus_child;
alias c_gtk_widget_get_focus_on_click gtk_widget_get_focus_on_click;
alias c_gtk_widget_get_focusable gtk_widget_get_focusable;
alias c_gtk_widget_get_font_map gtk_widget_get_font_map;
alias c_gtk_widget_get_font_options gtk_widget_get_font_options;
alias c_gtk_widget_get_frame_clock gtk_widget_get_frame_clock;
alias c_gtk_widget_get_halign gtk_widget_get_halign;
alias c_gtk_widget_get_has_tooltip gtk_widget_get_has_tooltip;
alias c_gtk_widget_get_height gtk_widget_get_height;
alias c_gtk_widget_get_hexpand gtk_widget_get_hexpand;
alias c_gtk_widget_get_hexpand_set gtk_widget_get_hexpand_set;
alias c_gtk_widget_get_last_child gtk_widget_get_last_child;
alias c_gtk_widget_get_layout_manager gtk_widget_get_layout_manager;
alias c_gtk_widget_get_mapped gtk_widget_get_mapped;
alias c_gtk_widget_get_margin_bottom gtk_widget_get_margin_bottom;
alias c_gtk_widget_get_margin_end gtk_widget_get_margin_end;
alias c_gtk_widget_get_margin_start gtk_widget_get_margin_start;
alias c_gtk_widget_get_margin_top gtk_widget_get_margin_top;
alias c_gtk_widget_get_name gtk_widget_get_name;
alias c_gtk_widget_get_native gtk_widget_get_native;
alias c_gtk_widget_get_next_sibling gtk_widget_get_next_sibling;
alias c_gtk_widget_get_opacity gtk_widget_get_opacity;
alias c_gtk_widget_get_overflow gtk_widget_get_overflow;
alias c_gtk_widget_get_pango_context gtk_widget_get_pango_context;
alias c_gtk_widget_get_parent gtk_widget_get_parent;
alias c_gtk_widget_get_preferred_size gtk_widget_get_preferred_size;
alias c_gtk_widget_get_prev_sibling gtk_widget_get_prev_sibling;
alias c_gtk_widget_get_primary_clipboard gtk_widget_get_primary_clipboard;
alias c_gtk_widget_get_realized gtk_widget_get_realized;
alias c_gtk_widget_get_receives_default gtk_widget_get_receives_default;
alias c_gtk_widget_get_request_mode gtk_widget_get_request_mode;
alias c_gtk_widget_get_root gtk_widget_get_root;
alias c_gtk_widget_get_scale_factor gtk_widget_get_scale_factor;
alias c_gtk_widget_get_sensitive gtk_widget_get_sensitive;
alias c_gtk_widget_get_settings gtk_widget_get_settings;
alias c_gtk_widget_get_size gtk_widget_get_size;
alias c_gtk_widget_get_size_request gtk_widget_get_size_request;
alias c_gtk_widget_get_state_flags gtk_widget_get_state_flags;
alias c_gtk_widget_get_style_context gtk_widget_get_style_context;
alias c_gtk_widget_get_template_child gtk_widget_get_template_child;
alias c_gtk_widget_get_tooltip_markup gtk_widget_get_tooltip_markup;
alias c_gtk_widget_get_tooltip_text gtk_widget_get_tooltip_text;
alias c_gtk_widget_get_valign gtk_widget_get_valign;
alias c_gtk_widget_get_vexpand gtk_widget_get_vexpand;
alias c_gtk_widget_get_vexpand_set gtk_widget_get_vexpand_set;
alias c_gtk_widget_get_visible gtk_widget_get_visible;
alias c_gtk_widget_get_width gtk_widget_get_width;
alias c_gtk_widget_grab_focus gtk_widget_grab_focus;
alias c_gtk_widget_has_css_class gtk_widget_has_css_class;
alias c_gtk_widget_has_default gtk_widget_has_default;
alias c_gtk_widget_has_focus gtk_widget_has_focus;
alias c_gtk_widget_has_visible_focus gtk_widget_has_visible_focus;
alias c_gtk_widget_hide gtk_widget_hide;
alias c_gtk_widget_in_destruction gtk_widget_in_destruction;
alias c_gtk_widget_init_template gtk_widget_init_template;
alias c_gtk_widget_insert_action_group gtk_widget_insert_action_group;
alias c_gtk_widget_insert_after gtk_widget_insert_after;
alias c_gtk_widget_insert_before gtk_widget_insert_before;
alias c_gtk_widget_is_ancestor gtk_widget_is_ancestor;
alias c_gtk_widget_is_drawable gtk_widget_is_drawable;
alias c_gtk_widget_is_focus gtk_widget_is_focus;
alias c_gtk_widget_is_sensitive gtk_widget_is_sensitive;
alias c_gtk_widget_is_visible gtk_widget_is_visible;
alias c_gtk_widget_keynav_failed gtk_widget_keynav_failed;
alias c_gtk_widget_list_mnemonic_labels gtk_widget_list_mnemonic_labels;
alias c_gtk_widget_map gtk_widget_map;
alias c_gtk_widget_measure gtk_widget_measure;
alias c_gtk_widget_mnemonic_activate gtk_widget_mnemonic_activate;
alias c_gtk_widget_observe_children gtk_widget_observe_children;
alias c_gtk_widget_observe_controllers gtk_widget_observe_controllers;
alias c_gtk_widget_pick gtk_widget_pick;
alias c_gtk_widget_queue_allocate gtk_widget_queue_allocate;
alias c_gtk_widget_queue_draw gtk_widget_queue_draw;
alias c_gtk_widget_queue_resize gtk_widget_queue_resize;
alias c_gtk_widget_realize gtk_widget_realize;
alias c_gtk_widget_remove_controller gtk_widget_remove_controller;
alias c_gtk_widget_remove_css_class gtk_widget_remove_css_class;
alias c_gtk_widget_remove_mnemonic_label gtk_widget_remove_mnemonic_label;
alias c_gtk_widget_remove_tick_callback gtk_widget_remove_tick_callback;
alias c_gtk_widget_set_can_focus gtk_widget_set_can_focus;
alias c_gtk_widget_set_can_target gtk_widget_set_can_target;
alias c_gtk_widget_set_child_visible gtk_widget_set_child_visible;
alias c_gtk_widget_set_css_classes gtk_widget_set_css_classes;
alias c_gtk_widget_set_cursor gtk_widget_set_cursor;
alias c_gtk_widget_set_cursor_from_name gtk_widget_set_cursor_from_name;
alias c_gtk_widget_set_direction gtk_widget_set_direction;
alias c_gtk_widget_set_focus_child gtk_widget_set_focus_child;
alias c_gtk_widget_set_focus_on_click gtk_widget_set_focus_on_click;
alias c_gtk_widget_set_focusable gtk_widget_set_focusable;
alias c_gtk_widget_set_font_map gtk_widget_set_font_map;
alias c_gtk_widget_set_font_options gtk_widget_set_font_options;
alias c_gtk_widget_set_halign gtk_widget_set_halign;
alias c_gtk_widget_set_has_tooltip gtk_widget_set_has_tooltip;
alias c_gtk_widget_set_hexpand gtk_widget_set_hexpand;
alias c_gtk_widget_set_hexpand_set gtk_widget_set_hexpand_set;
alias c_gtk_widget_set_layout_manager gtk_widget_set_layout_manager;
alias c_gtk_widget_set_margin_bottom gtk_widget_set_margin_bottom;
alias c_gtk_widget_set_margin_end gtk_widget_set_margin_end;
alias c_gtk_widget_set_margin_start gtk_widget_set_margin_start;
alias c_gtk_widget_set_margin_top gtk_widget_set_margin_top;
alias c_gtk_widget_set_name gtk_widget_set_name;
alias c_gtk_widget_set_opacity gtk_widget_set_opacity;
alias c_gtk_widget_set_overflow gtk_widget_set_overflow;
alias c_gtk_widget_set_parent gtk_widget_set_parent;
alias c_gtk_widget_set_receives_default gtk_widget_set_receives_default;
alias c_gtk_widget_set_sensitive gtk_widget_set_sensitive;
alias c_gtk_widget_set_size_request gtk_widget_set_size_request;
alias c_gtk_widget_set_state_flags gtk_widget_set_state_flags;
alias c_gtk_widget_set_tooltip_markup gtk_widget_set_tooltip_markup;
alias c_gtk_widget_set_tooltip_text gtk_widget_set_tooltip_text;
alias c_gtk_widget_set_valign gtk_widget_set_valign;
alias c_gtk_widget_set_vexpand gtk_widget_set_vexpand;
alias c_gtk_widget_set_vexpand_set gtk_widget_set_vexpand_set;
alias c_gtk_widget_set_visible gtk_widget_set_visible;
alias c_gtk_widget_should_layout gtk_widget_should_layout;
alias c_gtk_widget_show gtk_widget_show;
alias c_gtk_widget_size_allocate gtk_widget_size_allocate;
alias c_gtk_widget_snapshot_child gtk_widget_snapshot_child;
alias c_gtk_widget_translate_coordinates gtk_widget_translate_coordinates;
alias c_gtk_widget_trigger_tooltip_query gtk_widget_trigger_tooltip_query;
alias c_gtk_widget_unmap gtk_widget_unmap;
alias c_gtk_widget_unparent gtk_widget_unparent;
alias c_gtk_widget_unrealize gtk_widget_unrealize;
alias c_gtk_widget_unset_state_flags gtk_widget_unset_state_flags;

// gtk.WidgetClass

alias c_gtk_widget_class_add_binding gtk_widget_class_add_binding;
alias c_gtk_widget_class_add_binding_action gtk_widget_class_add_binding_action;
alias c_gtk_widget_class_add_binding_signal gtk_widget_class_add_binding_signal;
alias c_gtk_widget_class_add_shortcut gtk_widget_class_add_shortcut;
alias c_gtk_widget_class_bind_template_callback_full gtk_widget_class_bind_template_callback_full;
alias c_gtk_widget_class_bind_template_child_full gtk_widget_class_bind_template_child_full;
alias c_gtk_widget_class_get_accessible_role gtk_widget_class_get_accessible_role;
alias c_gtk_widget_class_get_activate_signal gtk_widget_class_get_activate_signal;
alias c_gtk_widget_class_get_css_name gtk_widget_class_get_css_name;
alias c_gtk_widget_class_get_layout_manager_type gtk_widget_class_get_layout_manager_type;
alias c_gtk_widget_class_install_action gtk_widget_class_install_action;
alias c_gtk_widget_class_install_property_action gtk_widget_class_install_property_action;
alias c_gtk_widget_class_query_action gtk_widget_class_query_action;
alias c_gtk_widget_class_set_accessible_role gtk_widget_class_set_accessible_role;
alias c_gtk_widget_class_set_activate_signal gtk_widget_class_set_activate_signal;
alias c_gtk_widget_class_set_activate_signal_from_name gtk_widget_class_set_activate_signal_from_name;
alias c_gtk_widget_class_set_css_name gtk_widget_class_set_css_name;
alias c_gtk_widget_class_set_layout_manager_type gtk_widget_class_set_layout_manager_type;
alias c_gtk_widget_class_set_template gtk_widget_class_set_template;
alias c_gtk_widget_class_set_template_from_resource gtk_widget_class_set_template_from_resource;
alias c_gtk_widget_class_set_template_scope gtk_widget_class_set_template_scope;

// gtk.WidgetPaintable

alias c_gtk_widget_paintable_get_type gtk_widget_paintable_get_type;
alias c_gtk_widget_paintable_new gtk_widget_paintable_new;
alias c_gtk_widget_paintable_get_widget gtk_widget_paintable_get_widget;
alias c_gtk_widget_paintable_set_widget gtk_widget_paintable_set_widget;

// gtk.Window

alias c_gtk_window_get_type gtk_window_get_type;
alias c_gtk_window_new gtk_window_new;
alias c_gtk_window_get_default_icon_name gtk_window_get_default_icon_name;
alias c_gtk_window_get_toplevels gtk_window_get_toplevels;
alias c_gtk_window_list_toplevels gtk_window_list_toplevels;
alias c_gtk_window_set_auto_startup_notification gtk_window_set_auto_startup_notification;
alias c_gtk_window_set_default_icon_name gtk_window_set_default_icon_name;
alias c_gtk_window_set_interactive_debugging gtk_window_set_interactive_debugging;
alias c_gtk_window_close gtk_window_close;
alias c_gtk_window_destroy gtk_window_destroy;
alias c_gtk_window_fullscreen gtk_window_fullscreen;
alias c_gtk_window_fullscreen_on_monitor gtk_window_fullscreen_on_monitor;
alias c_gtk_window_get_application gtk_window_get_application;
alias c_gtk_window_get_child gtk_window_get_child;
alias c_gtk_window_get_decorated gtk_window_get_decorated;
alias c_gtk_window_get_default_size gtk_window_get_default_size;
alias c_gtk_window_get_default_widget gtk_window_get_default_widget;
alias c_gtk_window_get_deletable gtk_window_get_deletable;
alias c_gtk_window_get_destroy_with_parent gtk_window_get_destroy_with_parent;
alias c_gtk_window_get_focus gtk_window_get_focus;
alias c_gtk_window_get_focus_visible gtk_window_get_focus_visible;
alias c_gtk_window_get_group gtk_window_get_group;
alias c_gtk_window_get_handle_menubar_accel gtk_window_get_handle_menubar_accel;
alias c_gtk_window_get_hide_on_close gtk_window_get_hide_on_close;
alias c_gtk_window_get_icon_name gtk_window_get_icon_name;
alias c_gtk_window_get_mnemonics_visible gtk_window_get_mnemonics_visible;
alias c_gtk_window_get_modal gtk_window_get_modal;
alias c_gtk_window_get_resizable gtk_window_get_resizable;
alias c_gtk_window_get_title gtk_window_get_title;
alias c_gtk_window_get_titlebar gtk_window_get_titlebar;
alias c_gtk_window_get_transient_for gtk_window_get_transient_for;
alias c_gtk_window_has_group gtk_window_has_group;
alias c_gtk_window_is_active gtk_window_is_active;
alias c_gtk_window_is_fullscreen gtk_window_is_fullscreen;
alias c_gtk_window_is_maximized gtk_window_is_maximized;
alias c_gtk_window_maximize gtk_window_maximize;
alias c_gtk_window_minimize gtk_window_minimize;
alias c_gtk_window_present gtk_window_present;
alias c_gtk_window_present_with_time gtk_window_present_with_time;
alias c_gtk_window_set_application gtk_window_set_application;
alias c_gtk_window_set_child gtk_window_set_child;
alias c_gtk_window_set_decorated gtk_window_set_decorated;
alias c_gtk_window_set_default_size gtk_window_set_default_size;
alias c_gtk_window_set_default_widget gtk_window_set_default_widget;
alias c_gtk_window_set_deletable gtk_window_set_deletable;
alias c_gtk_window_set_destroy_with_parent gtk_window_set_destroy_with_parent;
alias c_gtk_window_set_display gtk_window_set_display;
alias c_gtk_window_set_focus gtk_window_set_focus;
alias c_gtk_window_set_focus_visible gtk_window_set_focus_visible;
alias c_gtk_window_set_handle_menubar_accel gtk_window_set_handle_menubar_accel;
alias c_gtk_window_set_hide_on_close gtk_window_set_hide_on_close;
alias c_gtk_window_set_icon_name gtk_window_set_icon_name;
alias c_gtk_window_set_mnemonics_visible gtk_window_set_mnemonics_visible;
alias c_gtk_window_set_modal gtk_window_set_modal;
alias c_gtk_window_set_resizable gtk_window_set_resizable;
alias c_gtk_window_set_startup_id gtk_window_set_startup_id;
alias c_gtk_window_set_title gtk_window_set_title;
alias c_gtk_window_set_titlebar gtk_window_set_titlebar;
alias c_gtk_window_set_transient_for gtk_window_set_transient_for;
alias c_gtk_window_unfullscreen gtk_window_unfullscreen;
alias c_gtk_window_unmaximize gtk_window_unmaximize;
alias c_gtk_window_unminimize gtk_window_unminimize;

// gtk.WindowControls

alias c_gtk_window_controls_get_type gtk_window_controls_get_type;
alias c_gtk_window_controls_new gtk_window_controls_new;
alias c_gtk_window_controls_get_decoration_layout gtk_window_controls_get_decoration_layout;
alias c_gtk_window_controls_get_empty gtk_window_controls_get_empty;
alias c_gtk_window_controls_get_side gtk_window_controls_get_side;
alias c_gtk_window_controls_set_decoration_layout gtk_window_controls_set_decoration_layout;
alias c_gtk_window_controls_set_side gtk_window_controls_set_side;

// gtk.WindowGroup

alias c_gtk_window_group_get_type gtk_window_group_get_type;
alias c_gtk_window_group_new gtk_window_group_new;
alias c_gtk_window_group_add_window gtk_window_group_add_window;
alias c_gtk_window_group_list_windows gtk_window_group_list_windows;
alias c_gtk_window_group_remove_window gtk_window_group_remove_window;

// gtk.WindowHandle

alias c_gtk_window_handle_get_type gtk_window_handle_get_type;
alias c_gtk_window_handle_new gtk_window_handle_new;
alias c_gtk_window_handle_get_child gtk_window_handle_get_child;
alias c_gtk_window_handle_set_child gtk_window_handle_set_child;
