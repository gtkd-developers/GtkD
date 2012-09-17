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


module gtkc.atk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.atktypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// atk.Action

	Linker.link(atk_action_do_action, \"atk_action_do_action\", LIBRARY.ATK);
	Linker.link(atk_action_get_n_actions, \"atk_action_get_n_actions\", LIBRARY.ATK);
	Linker.link(atk_action_get_description, \"atk_action_get_description\", LIBRARY.ATK);
	Linker.link(atk_action_get_name, \"atk_action_get_name\", LIBRARY.ATK);
	Linker.link(atk_action_get_localized_name, \"atk_action_get_localized_name\", LIBRARY.ATK);
	Linker.link(atk_action_get_keybinding, \"atk_action_get_keybinding\", LIBRARY.ATK);
	Linker.link(atk_action_set_description, \"atk_action_set_description\", LIBRARY.ATK);

	// atk.Component

	Linker.link(atk_component_add_focus_handler, \"atk_component_add_focus_handler\", LIBRARY.ATK);
	Linker.link(atk_component_contains, \"atk_component_contains\", LIBRARY.ATK);
	Linker.link(atk_component_get_extents, \"atk_component_get_extents\", LIBRARY.ATK);
	Linker.link(atk_component_get_layer, \"atk_component_get_layer\", LIBRARY.ATK);
	Linker.link(atk_component_get_mdi_zorder, \"atk_component_get_mdi_zorder\", LIBRARY.ATK);
	Linker.link(atk_component_get_position, \"atk_component_get_position\", LIBRARY.ATK);
	Linker.link(atk_component_get_size, \"atk_component_get_size\", LIBRARY.ATK);
	Linker.link(atk_component_grab_focus, \"atk_component_grab_focus\", LIBRARY.ATK);
	Linker.link(atk_component_ref_accessible_at_point, \"atk_component_ref_accessible_at_point\", LIBRARY.ATK);
	Linker.link(atk_component_remove_focus_handler, \"atk_component_remove_focus_handler\", LIBRARY.ATK);
	Linker.link(atk_component_set_extents, \"atk_component_set_extents\", LIBRARY.ATK);
	Linker.link(atk_component_set_position, \"atk_component_set_position\", LIBRARY.ATK);
	Linker.link(atk_component_set_size, \"atk_component_set_size\", LIBRARY.ATK);
	Linker.link(atk_component_get_alpha, \"atk_component_get_alpha\", LIBRARY.ATK);

	// atk.Document

	Linker.link(atk_document_get_document_type, \"atk_document_get_document_type\", LIBRARY.ATK);
	Linker.link(atk_document_get_document, \"atk_document_get_document\", LIBRARY.ATK);
	Linker.link(atk_document_get_attribute_value, \"atk_document_get_attribute_value\", LIBRARY.ATK);
	Linker.link(atk_document_set_attribute_value, \"atk_document_set_attribute_value\", LIBRARY.ATK);
	Linker.link(atk_document_get_attributes, \"atk_document_get_attributes\", LIBRARY.ATK);
	Linker.link(atk_document_get_locale, \"atk_document_get_locale\", LIBRARY.ATK);

	// atk.EditableText

	Linker.link(atk_editable_text_set_run_attributes, \"atk_editable_text_set_run_attributes\", LIBRARY.ATK);
	Linker.link(atk_editable_text_set_text_contents, \"atk_editable_text_set_text_contents\", LIBRARY.ATK);
	Linker.link(atk_editable_text_insert_text, \"atk_editable_text_insert_text\", LIBRARY.ATK);
	Linker.link(atk_editable_text_copy_text, \"atk_editable_text_copy_text\", LIBRARY.ATK);
	Linker.link(atk_editable_text_cut_text, \"atk_editable_text_cut_text\", LIBRARY.ATK);
	Linker.link(atk_editable_text_delete_text, \"atk_editable_text_delete_text\", LIBRARY.ATK);
	Linker.link(atk_editable_text_paste_text, \"atk_editable_text_paste_text\", LIBRARY.ATK);

	// atk.GObjectAccessible

	Linker.link(atk_gobject_accessible_for_object, \"atk_gobject_accessible_for_object\", LIBRARY.ATK);
	Linker.link(atk_gobject_accessible_get_object, \"atk_gobject_accessible_get_object\", LIBRARY.ATK);

	// atk.Hyperlink

	Linker.link(atk_hyperlink_get_uri, \"atk_hyperlink_get_uri\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_object, \"atk_hyperlink_get_object\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_end_index, \"atk_hyperlink_get_end_index\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_start_index, \"atk_hyperlink_get_start_index\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_valid, \"atk_hyperlink_is_valid\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_inline, \"atk_hyperlink_is_inline\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_n_anchors, \"atk_hyperlink_get_n_anchors\", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_selected_link, \"atk_hyperlink_is_selected_link\", LIBRARY.ATK);

	// atk.Hypertext

	Linker.link(atk_hypertext_get_link, \"atk_hypertext_get_link\", LIBRARY.ATK);
	Linker.link(atk_hypertext_get_n_links, \"atk_hypertext_get_n_links\", LIBRARY.ATK);
	Linker.link(atk_hypertext_get_link_index, \"atk_hypertext_get_link_index\", LIBRARY.ATK);

	// atk.Image

	Linker.link(atk_image_get_image_position, \"atk_image_get_image_position\", LIBRARY.ATK);
	Linker.link(atk_image_get_image_description, \"atk_image_get_image_description\", LIBRARY.ATK);
	Linker.link(atk_image_set_image_description, \"atk_image_set_image_description\", LIBRARY.ATK);
	Linker.link(atk_image_get_image_size, \"atk_image_get_image_size\", LIBRARY.ATK);
	Linker.link(atk_image_get_image_locale, \"atk_image_get_image_locale\", LIBRARY.ATK);

	// atk.NoOpObject

	Linker.link(atk_no_op_object_new, \"atk_no_op_object_new\", LIBRARY.ATK);

	// atk.NoOpObjectFactory

	Linker.link(atk_no_op_object_factory_new, \"atk_no_op_object_factory_new\", LIBRARY.ATK);

	// atk.ObjectAtk

	Linker.link(atk_role_register, \"atk_role_register\", LIBRARY.ATK);
	Linker.link(atk_implementor_ref_accessible, \"atk_implementor_ref_accessible\", LIBRARY.ATK);
	Linker.link(atk_object_get_name, \"atk_object_get_name\", LIBRARY.ATK);
	Linker.link(atk_object_get_description, \"atk_object_get_description\", LIBRARY.ATK);
	Linker.link(atk_object_get_parent, \"atk_object_get_parent\", LIBRARY.ATK);
	Linker.link(atk_object_get_n_accessible_children, \"atk_object_get_n_accessible_children\", LIBRARY.ATK);
	Linker.link(atk_object_ref_accessible_child, \"atk_object_ref_accessible_child\", LIBRARY.ATK);
	Linker.link(atk_object_ref_relation_set, \"atk_object_ref_relation_set\", LIBRARY.ATK);
	Linker.link(atk_object_get_layer, \"atk_object_get_layer\", LIBRARY.ATK);
	Linker.link(atk_object_get_mdi_zorder, \"atk_object_get_mdi_zorder\", LIBRARY.ATK);
	Linker.link(atk_object_get_role, \"atk_object_get_role\", LIBRARY.ATK);
	Linker.link(atk_object_ref_state_set, \"atk_object_ref_state_set\", LIBRARY.ATK);
	Linker.link(atk_object_get_index_in_parent, \"atk_object_get_index_in_parent\", LIBRARY.ATK);
	Linker.link(atk_object_set_name, \"atk_object_set_name\", LIBRARY.ATK);
	Linker.link(atk_object_set_description, \"atk_object_set_description\", LIBRARY.ATK);
	Linker.link(atk_object_set_parent, \"atk_object_set_parent\", LIBRARY.ATK);
	Linker.link(atk_object_set_role, \"atk_object_set_role\", LIBRARY.ATK);
	Linker.link(atk_object_connect_property_change_handler, \"atk_object_connect_property_change_handler\", LIBRARY.ATK);
	Linker.link(atk_object_remove_property_change_handler, \"atk_object_remove_property_change_handler\", LIBRARY.ATK);
	Linker.link(atk_object_notify_state_change, \"atk_object_notify_state_change\", LIBRARY.ATK);
	Linker.link(atk_object_initialize, \"atk_object_initialize\", LIBRARY.ATK);
	Linker.link(atk_object_add_relationship, \"atk_object_add_relationship\", LIBRARY.ATK);
	Linker.link(atk_object_remove_relationship, \"atk_object_remove_relationship\", LIBRARY.ATK);
	Linker.link(atk_object_get_attributes, \"atk_object_get_attributes\", LIBRARY.ATK);
	Linker.link(atk_role_get_name, \"atk_role_get_name\", LIBRARY.ATK);
	Linker.link(atk_role_get_localized_name, \"atk_role_get_localized_name\", LIBRARY.ATK);
	Linker.link(atk_role_for_name, \"atk_role_for_name\", LIBRARY.ATK);

	// atk.ObjectFactory

	Linker.link(atk_object_factory_create_accessible, \"atk_object_factory_create_accessible\", LIBRARY.ATK);
	Linker.link(atk_object_factory_get_accessible_type, \"atk_object_factory_get_accessible_type\", LIBRARY.ATK);
	Linker.link(atk_object_factory_invalidate, \"atk_object_factory_invalidate\", LIBRARY.ATK);

	// atk.Registry

	Linker.link(atk_registry_set_factory_type, \"atk_registry_set_factory_type\", LIBRARY.ATK);
	Linker.link(atk_registry_get_factory_type, \"atk_registry_get_factory_type\", LIBRARY.ATK);
	Linker.link(atk_registry_get_factory, \"atk_registry_get_factory\", LIBRARY.ATK);
	Linker.link(atk_get_default_registry, \"atk_get_default_registry\", LIBRARY.ATK);

	// atk.Relation

	Linker.link(atk_relation_type_register, \"atk_relation_type_register\", LIBRARY.ATK);
	Linker.link(atk_relation_type_get_name, \"atk_relation_type_get_name\", LIBRARY.ATK);
	Linker.link(atk_relation_type_for_name, \"atk_relation_type_for_name\", LIBRARY.ATK);
	Linker.link(atk_relation_new, \"atk_relation_new\", LIBRARY.ATK);
	Linker.link(atk_relation_get_relation_type, \"atk_relation_get_relation_type\", LIBRARY.ATK);
	Linker.link(atk_relation_get_target, \"atk_relation_get_target\", LIBRARY.ATK);
	Linker.link(atk_relation_add_target, \"atk_relation_add_target\", LIBRARY.ATK);
	Linker.link(atk_relation_remove_target, \"atk_relation_remove_target\", LIBRARY.ATK);

	// atk.RelationSet

	Linker.link(atk_relation_set_new, \"atk_relation_set_new\", LIBRARY.ATK);
	Linker.link(atk_relation_set_contains, \"atk_relation_set_contains\", LIBRARY.ATK);
	Linker.link(atk_relation_set_remove, \"atk_relation_set_remove\", LIBRARY.ATK);
	Linker.link(atk_relation_set_add, \"atk_relation_set_add\", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_n_relations, \"atk_relation_set_get_n_relations\", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_relation, \"atk_relation_set_get_relation\", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_relation_by_type, \"atk_relation_set_get_relation_by_type\", LIBRARY.ATK);
	Linker.link(atk_relation_set_add_relation_by_type, \"atk_relation_set_add_relation_by_type\", LIBRARY.ATK);

	// atk.Selection

	Linker.link(atk_selection_add_selection, \"atk_selection_add_selection\", LIBRARY.ATK);
	Linker.link(atk_selection_clear_selection, \"atk_selection_clear_selection\", LIBRARY.ATK);
	Linker.link(atk_selection_ref_selection, \"atk_selection_ref_selection\", LIBRARY.ATK);
	Linker.link(atk_selection_get_selection_count, \"atk_selection_get_selection_count\", LIBRARY.ATK);
	Linker.link(atk_selection_is_child_selected, \"atk_selection_is_child_selected\", LIBRARY.ATK);
	Linker.link(atk_selection_remove_selection, \"atk_selection_remove_selection\", LIBRARY.ATK);
	Linker.link(atk_selection_select_all_selection, \"atk_selection_select_all_selection\", LIBRARY.ATK);

	// atk.State

	Linker.link(atk_state_type_register, \"atk_state_type_register\", LIBRARY.ATK);
	Linker.link(atk_state_type_get_name, \"atk_state_type_get_name\", LIBRARY.ATK);
	Linker.link(atk_state_type_for_name, \"atk_state_type_for_name\", LIBRARY.ATK);

	// atk.StateSet

	Linker.link(atk_state_set_new, \"atk_state_set_new\", LIBRARY.ATK);
	Linker.link(atk_state_set_is_empty, \"atk_state_set_is_empty\", LIBRARY.ATK);
	Linker.link(atk_state_set_add_state, \"atk_state_set_add_state\", LIBRARY.ATK);
	Linker.link(atk_state_set_add_states, \"atk_state_set_add_states\", LIBRARY.ATK);
	Linker.link(atk_state_set_clear_states, \"atk_state_set_clear_states\", LIBRARY.ATK);
	Linker.link(atk_state_set_contains_state, \"atk_state_set_contains_state\", LIBRARY.ATK);
	Linker.link(atk_state_set_contains_states, \"atk_state_set_contains_states\", LIBRARY.ATK);
	Linker.link(atk_state_set_remove_state, \"atk_state_set_remove_state\", LIBRARY.ATK);
	Linker.link(atk_state_set_and_sets, \"atk_state_set_and_sets\", LIBRARY.ATK);
	Linker.link(atk_state_set_or_sets, \"atk_state_set_or_sets\", LIBRARY.ATK);
	Linker.link(atk_state_set_xor_sets, \"atk_state_set_xor_sets\", LIBRARY.ATK);

	// atk.StreamableContent

	Linker.link(atk_streamable_content_get_n_mime_types, \"atk_streamable_content_get_n_mime_types\", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_mime_type, \"atk_streamable_content_get_mime_type\", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_stream, \"atk_streamable_content_get_stream\", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_uri, \"atk_streamable_content_get_uri\", LIBRARY.ATK);

	// atk.Table

	Linker.link(atk_table_ref_at, \"atk_table_ref_at\", LIBRARY.ATK);
	Linker.link(atk_table_get_index_at, \"atk_table_get_index_at\", LIBRARY.ATK);
	Linker.link(atk_table_get_column_at_index, \"atk_table_get_column_at_index\", LIBRARY.ATK);
	Linker.link(atk_table_get_row_at_index, \"atk_table_get_row_at_index\", LIBRARY.ATK);
	Linker.link(atk_table_get_n_columns, \"atk_table_get_n_columns\", LIBRARY.ATK);
	Linker.link(atk_table_get_n_rows, \"atk_table_get_n_rows\", LIBRARY.ATK);
	Linker.link(atk_table_get_column_extent_at, \"atk_table_get_column_extent_at\", LIBRARY.ATK);
	Linker.link(atk_table_get_row_extent_at, \"atk_table_get_row_extent_at\", LIBRARY.ATK);
	Linker.link(atk_table_get_caption, \"atk_table_get_caption\", LIBRARY.ATK);
	Linker.link(atk_table_get_column_description, \"atk_table_get_column_description\", LIBRARY.ATK);
	Linker.link(atk_table_get_row_description, \"atk_table_get_row_description\", LIBRARY.ATK);
	Linker.link(atk_table_get_column_header, \"atk_table_get_column_header\", LIBRARY.ATK);
	Linker.link(atk_table_get_row_header, \"atk_table_get_row_header\", LIBRARY.ATK);
	Linker.link(atk_table_get_summary, \"atk_table_get_summary\", LIBRARY.ATK);
	Linker.link(atk_table_set_caption, \"atk_table_set_caption\", LIBRARY.ATK);
	Linker.link(atk_table_set_row_description, \"atk_table_set_row_description\", LIBRARY.ATK);
	Linker.link(atk_table_set_column_description, \"atk_table_set_column_description\", LIBRARY.ATK);
	Linker.link(atk_table_set_row_header, \"atk_table_set_row_header\", LIBRARY.ATK);
	Linker.link(atk_table_set_column_header, \"atk_table_set_column_header\", LIBRARY.ATK);
	Linker.link(atk_table_set_summary, \"atk_table_set_summary\", LIBRARY.ATK);
	Linker.link(atk_table_get_selected_columns, \"atk_table_get_selected_columns\", LIBRARY.ATK);
	Linker.link(atk_table_get_selected_rows, \"atk_table_get_selected_rows\", LIBRARY.ATK);
	Linker.link(atk_table_is_column_selected, \"atk_table_is_column_selected\", LIBRARY.ATK);
	Linker.link(atk_table_is_row_selected, \"atk_table_is_row_selected\", LIBRARY.ATK);
	Linker.link(atk_table_is_selected, \"atk_table_is_selected\", LIBRARY.ATK);
	Linker.link(atk_table_add_column_selection, \"atk_table_add_column_selection\", LIBRARY.ATK);
	Linker.link(atk_table_add_row_selection, \"atk_table_add_row_selection\", LIBRARY.ATK);
	Linker.link(atk_table_remove_column_selection, \"atk_table_remove_column_selection\", LIBRARY.ATK);
	Linker.link(atk_table_remove_row_selection, \"atk_table_remove_row_selection\", LIBRARY.ATK);

	// atk.Text

	Linker.link(atk_text_get_text, \"atk_text_get_text\", LIBRARY.ATK);
	Linker.link(atk_text_get_character_at_offset, \"atk_text_get_character_at_offset\", LIBRARY.ATK);
	Linker.link(atk_text_get_text_after_offset, \"atk_text_get_text_after_offset\", LIBRARY.ATK);
	Linker.link(atk_text_get_text_at_offset, \"atk_text_get_text_at_offset\", LIBRARY.ATK);
	Linker.link(atk_text_get_text_before_offset, \"atk_text_get_text_before_offset\", LIBRARY.ATK);
	Linker.link(atk_text_get_caret_offset, \"atk_text_get_caret_offset\", LIBRARY.ATK);
	Linker.link(atk_text_get_character_extents, \"atk_text_get_character_extents\", LIBRARY.ATK);
	Linker.link(atk_text_get_run_attributes, \"atk_text_get_run_attributes\", LIBRARY.ATK);
	Linker.link(atk_text_get_default_attributes, \"atk_text_get_default_attributes\", LIBRARY.ATK);
	Linker.link(atk_text_get_character_count, \"atk_text_get_character_count\", LIBRARY.ATK);
	Linker.link(atk_text_get_offset_at_point, \"atk_text_get_offset_at_point\", LIBRARY.ATK);
	Linker.link(atk_text_get_bounded_ranges, \"atk_text_get_bounded_ranges\", LIBRARY.ATK);
	Linker.link(atk_text_get_range_extents, \"atk_text_get_range_extents\", LIBRARY.ATK);
	Linker.link(atk_text_free_ranges, \"atk_text_free_ranges\", LIBRARY.ATK);
	Linker.link(atk_text_get_n_selections, \"atk_text_get_n_selections\", LIBRARY.ATK);
	Linker.link(atk_text_get_selection, \"atk_text_get_selection\", LIBRARY.ATK);
	Linker.link(atk_text_add_selection, \"atk_text_add_selection\", LIBRARY.ATK);
	Linker.link(atk_text_remove_selection, \"atk_text_remove_selection\", LIBRARY.ATK);
	Linker.link(atk_text_set_selection, \"atk_text_set_selection\", LIBRARY.ATK);
	Linker.link(atk_text_set_caret_offset, \"atk_text_set_caret_offset\", LIBRARY.ATK);
	Linker.link(atk_attribute_set_free, \"atk_attribute_set_free\", LIBRARY.ATK);
	Linker.link(atk_text_attribute_register, \"atk_text_attribute_register\", LIBRARY.ATK);
	Linker.link(atk_text_attribute_get_name, \"atk_text_attribute_get_name\", LIBRARY.ATK);
	Linker.link(atk_text_attribute_for_name, \"atk_text_attribute_for_name\", LIBRARY.ATK);
	Linker.link(atk_text_attribute_get_value, \"atk_text_attribute_get_value\", LIBRARY.ATK);

	// atk.Util

	Linker.link(atk_add_focus_tracker, \"atk_add_focus_tracker\", LIBRARY.ATK);
	Linker.link(atk_remove_focus_tracker, \"atk_remove_focus_tracker\", LIBRARY.ATK);
	Linker.link(atk_focus_tracker_init, \"atk_focus_tracker_init\", LIBRARY.ATK);
	Linker.link(atk_focus_tracker_notify, \"atk_focus_tracker_notify\", LIBRARY.ATK);
	Linker.link(atk_add_global_event_listener, \"atk_add_global_event_listener\", LIBRARY.ATK);
	Linker.link(atk_remove_global_event_listener, \"atk_remove_global_event_listener\", LIBRARY.ATK);
	Linker.link(atk_add_key_event_listener, \"atk_add_key_event_listener\", LIBRARY.ATK);
	Linker.link(atk_remove_key_event_listener, \"atk_remove_key_event_listener\", LIBRARY.ATK);
	Linker.link(atk_get_root, \"atk_get_root\", LIBRARY.ATK);
	Linker.link(atk_get_focus_object, \"atk_get_focus_object\", LIBRARY.ATK);
	Linker.link(atk_get_toolkit_name, \"atk_get_toolkit_name\", LIBRARY.ATK);
	Linker.link(atk_get_toolkit_version, \"atk_get_toolkit_version\", LIBRARY.ATK);
	Linker.link(atk_get_version, \"atk_get_version\", LIBRARY.ATK);

	// atk.ValueAtk

	Linker.link(atk_value_get_current_value, \"atk_value_get_current_value\", LIBRARY.ATK);
	Linker.link(atk_value_get_maximum_value, \"atk_value_get_maximum_value\", LIBRARY.ATK);
	Linker.link(atk_value_get_minimum_value, \"atk_value_get_minimum_value\", LIBRARY.ATK);
	Linker.link(atk_value_set_current_value, \"atk_value_set_current_value\", LIBRARY.ATK);
	Linker.link(atk_value_get_minimum_increment, \"atk_value_get_minimum_increment\", LIBRARY.ATK);
}");

mixin( gshared ~"extern(C)
{
	// atk.Action

	gboolean function(AtkAction* action, gint i) c_atk_action_do_action;
	gint function(AtkAction* action) c_atk_action_get_n_actions;
	gchar* function(AtkAction* action, gint i) c_atk_action_get_description;
	gchar* function(AtkAction* action, gint i) c_atk_action_get_name;
	gchar* function(AtkAction* action, gint i) c_atk_action_get_localized_name;
	gchar* function(AtkAction* action, gint i) c_atk_action_get_keybinding;
	gboolean function(AtkAction* action, gint i, gchar* desc) c_atk_action_set_description;

	// atk.Component

	guint function(AtkComponent* component, AtkFocusHandler handler) c_atk_component_add_focus_handler;
	gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_contains;
	void function(AtkComponent* component, gint* x, gint* y, gint* width, gint* height, AtkCoordType coordType) c_atk_component_get_extents;
	AtkLayer function(AtkComponent* component) c_atk_component_get_layer;
	gint function(AtkComponent* component) c_atk_component_get_mdi_zorder;
	void function(AtkComponent* component, gint* x, gint* y, AtkCoordType coordType) c_atk_component_get_position;
	void function(AtkComponent* component, gint* width, gint* height) c_atk_component_get_size;
	gboolean function(AtkComponent* component) c_atk_component_grab_focus;
	AtkObject* function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_ref_accessible_at_point;
	void function(AtkComponent* component, guint handlerId) c_atk_component_remove_focus_handler;
	gboolean function(AtkComponent* component, gint x, gint y, gint width, gint height, AtkCoordType coordType) c_atk_component_set_extents;
	gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_set_position;
	gboolean function(AtkComponent* component, gint width, gint height) c_atk_component_set_size;
	gdouble function(AtkComponent* component) c_atk_component_get_alpha;

	// atk.Document

	gchar* function(AtkDocument* document) c_atk_document_get_document_type;
	gpointer function(AtkDocument* document) c_atk_document_get_document;
	gchar* function(AtkDocument* document, gchar* attributeName) c_atk_document_get_attribute_value;
	gboolean function(AtkDocument* document, gchar* attributeName, gchar* attributeValue) c_atk_document_set_attribute_value;
	AtkAttributeSet* function(AtkDocument* document) c_atk_document_get_attributes;
	gchar* function(AtkDocument* document) c_atk_document_get_locale;

	// atk.EditableText

	gboolean function(AtkEditableText* text, AtkAttributeSet* attribSet, gint startOffset, gint endOffset) c_atk_editable_text_set_run_attributes;
	void function(AtkEditableText* text, gchar* string) c_atk_editable_text_set_text_contents;
	void function(AtkEditableText* text, gchar* string, gint length, gint* position) c_atk_editable_text_insert_text;
	void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_copy_text;
	void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_cut_text;
	void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_delete_text;
	void function(AtkEditableText* text, gint position) c_atk_editable_text_paste_text;

	// atk.GObjectAccessible

	AtkObject* function(GObject* obj) c_atk_gobject_accessible_for_object;
	GObject* function(AtkGObjectAccessible* obj) c_atk_gobject_accessible_get_object;

	// atk.Hyperlink

	gchar* function(AtkHyperlink* link, gint i) c_atk_hyperlink_get_uri;
	AtkObject* function(AtkHyperlink* link, gint i) c_atk_hyperlink_get_object;
	gint function(AtkHyperlink* link) c_atk_hyperlink_get_end_index;
	gint function(AtkHyperlink* link) c_atk_hyperlink_get_start_index;
	gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_valid;
	gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_inline;
	gint function(AtkHyperlink* link) c_atk_hyperlink_get_n_anchors;
	gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_selected_link;

	// atk.Hypertext

	AtkHyperlink* function(AtkHypertext* hypertext, gint linkIndex) c_atk_hypertext_get_link;
	gint function(AtkHypertext* hypertext) c_atk_hypertext_get_n_links;
	gint function(AtkHypertext* hypertext, gint charIndex) c_atk_hypertext_get_link_index;

	// atk.Image

	void function(AtkImage* image, gint* x, gint* y, AtkCoordType coordType) c_atk_image_get_image_position;
	gchar* function(AtkImage* image) c_atk_image_get_image_description;
	gboolean function(AtkImage* image, gchar* description) c_atk_image_set_image_description;
	void function(AtkImage* image, gint* width, gint* height) c_atk_image_get_image_size;
	gchar* function(AtkImage* image) c_atk_image_get_image_locale;

	// atk.NoOpObject

	AtkObject* function(GObject* obj) c_atk_no_op_object_new;

	// atk.NoOpObjectFactory

	AtkObjectFactory* function() c_atk_no_op_object_factory_new;

	// atk.ObjectAtk

	AtkRole function(gchar* name) c_atk_role_register;
	AtkObject* function(AtkImplementor* implementor) c_atk_implementor_ref_accessible;
	gchar* function(AtkObject* accessible) c_atk_object_get_name;
	gchar* function(AtkObject* accessible) c_atk_object_get_description;
	AtkObject* function(AtkObject* accessible) c_atk_object_get_parent;
	gint function(AtkObject* accessible) c_atk_object_get_n_accessible_children;
	AtkObject* function(AtkObject* accessible, gint i) c_atk_object_ref_accessible_child;
	AtkRelationSet* function(AtkObject* accessible) c_atk_object_ref_relation_set;
	AtkLayer function(AtkObject* accessible) c_atk_object_get_layer;
	gint function(AtkObject* accessible) c_atk_object_get_mdi_zorder;
	AtkRole function(AtkObject* accessible) c_atk_object_get_role;
	AtkStateSet* function(AtkObject* accessible) c_atk_object_ref_state_set;
	gint function(AtkObject* accessible) c_atk_object_get_index_in_parent;
	void function(AtkObject* accessible, gchar* name) c_atk_object_set_name;
	void function(AtkObject* accessible, gchar* description) c_atk_object_set_description;
	void function(AtkObject* accessible, AtkObject* parent) c_atk_object_set_parent;
	void function(AtkObject* accessible, AtkRole role) c_atk_object_set_role;
	guint function(AtkObject* accessible, AtkPropertyChangeHandler* handler) c_atk_object_connect_property_change_handler;
	void function(AtkObject* accessible, guint handlerId) c_atk_object_remove_property_change_handler;
	void function(AtkObject* accessible, AtkState state, gboolean value) c_atk_object_notify_state_change;
	void function(AtkObject* accessible, void* data) c_atk_object_initialize;
	gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_add_relationship;
	gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_remove_relationship;
	AtkAttributeSet* function(AtkObject* accessible) c_atk_object_get_attributes;
	gchar* function(AtkRole role) c_atk_role_get_name;
	gchar* function(AtkRole role) c_atk_role_get_localized_name;
	AtkRole function(gchar* name) c_atk_role_for_name;

	// atk.ObjectFactory

	AtkObject* function(AtkObjectFactory* factory, GObject* obj) c_atk_object_factory_create_accessible;
	GType function(AtkObjectFactory* factory) c_atk_object_factory_get_accessible_type;
	void function(AtkObjectFactory* factory) c_atk_object_factory_invalidate;

	// atk.Registry

	void function(AtkRegistry* registry, GType type, GType factoryType) c_atk_registry_set_factory_type;
	GType function(AtkRegistry* registry, GType type) c_atk_registry_get_factory_type;
	AtkObjectFactory* function(AtkRegistry* registry, GType type) c_atk_registry_get_factory;
	AtkRegistry* function() c_atk_get_default_registry;

	// atk.Relation

	AtkRelationType function(gchar* name) c_atk_relation_type_register;
	gchar* function(AtkRelationType type) c_atk_relation_type_get_name;
	AtkRelationType function(gchar* name) c_atk_relation_type_for_name;
	AtkRelation* function(AtkObject** targets, gint nTargets, AtkRelationType relationship) c_atk_relation_new;
	AtkRelationType function(AtkRelation* relation) c_atk_relation_get_relation_type;
	GPtrArray* function(AtkRelation* relation) c_atk_relation_get_target;
	void function(AtkRelation* relation, AtkObject* target) c_atk_relation_add_target;
	gboolean function(AtkRelation* relation, AtkObject* target) c_atk_relation_remove_target;

	// atk.RelationSet

	AtkRelationSet* function() c_atk_relation_set_new;
	gboolean function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_contains;
	void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_remove;
	void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_add;
	gint function(AtkRelationSet* set) c_atk_relation_set_get_n_relations;
	AtkRelation* function(AtkRelationSet* set, gint i) c_atk_relation_set_get_relation;
	AtkRelation* function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_get_relation_by_type;
	void function(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target) c_atk_relation_set_add_relation_by_type;

	// atk.Selection

	gboolean function(AtkSelection* selection, gint i) c_atk_selection_add_selection;
	gboolean function(AtkSelection* selection) c_atk_selection_clear_selection;
	AtkObject* function(AtkSelection* selection, gint i) c_atk_selection_ref_selection;
	gint function(AtkSelection* selection) c_atk_selection_get_selection_count;
	gboolean function(AtkSelection* selection, gint i) c_atk_selection_is_child_selected;
	gboolean function(AtkSelection* selection, gint i) c_atk_selection_remove_selection;
	gboolean function(AtkSelection* selection) c_atk_selection_select_all_selection;

	// atk.State

	AtkStateType function(gchar* name) c_atk_state_type_register;
	gchar* function(AtkStateType type) c_atk_state_type_get_name;
	AtkStateType function(gchar* name) c_atk_state_type_for_name;

	// atk.StateSet

	AtkStateSet* function() c_atk_state_set_new;
	gboolean function(AtkStateSet* set) c_atk_state_set_is_empty;
	gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_add_state;
	void function(AtkStateSet* set, AtkStateType* types, gint nTypes) c_atk_state_set_add_states;
	void function(AtkStateSet* set) c_atk_state_set_clear_states;
	gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_contains_state;
	gboolean function(AtkStateSet* set, AtkStateType* types, gint nTypes) c_atk_state_set_contains_states;
	gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_remove_state;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_and_sets;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_or_sets;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_xor_sets;

	// atk.StreamableContent

	gint function(AtkStreamableContent* streamable) c_atk_streamable_content_get_n_mime_types;
	gchar* function(AtkStreamableContent* streamable, gint i) c_atk_streamable_content_get_mime_type;
	GIOChannel* function(AtkStreamableContent* streamable, gchar* mimeType) c_atk_streamable_content_get_stream;
	gchar* function(AtkStreamableContent* streamable, gchar* mimeType) c_atk_streamable_content_get_uri;

	// atk.Table

	AtkObject* function(AtkTable* table, gint row, gint column) c_atk_table_ref_at;
	gint function(AtkTable* table, gint row, gint column) c_atk_table_get_index_at;
	gint function(AtkTable* table, gint index) c_atk_table_get_column_at_index;
	gint function(AtkTable* table, gint index) c_atk_table_get_row_at_index;
	gint function(AtkTable* table) c_atk_table_get_n_columns;
	gint function(AtkTable* table) c_atk_table_get_n_rows;
	gint function(AtkTable* table, gint row, gint column) c_atk_table_get_column_extent_at;
	gint function(AtkTable* table, gint row, gint column) c_atk_table_get_row_extent_at;
	AtkObject* function(AtkTable* table) c_atk_table_get_caption;
	gchar* function(AtkTable* table, gint column) c_atk_table_get_column_description;
	gchar* function(AtkTable* table, gint row) c_atk_table_get_row_description;
	AtkObject* function(AtkTable* table, gint column) c_atk_table_get_column_header;
	AtkObject* function(AtkTable* table, gint row) c_atk_table_get_row_header;
	AtkObject* function(AtkTable* table) c_atk_table_get_summary;
	void function(AtkTable* table, AtkObject* caption) c_atk_table_set_caption;
	void function(AtkTable* table, gint row, gchar* description) c_atk_table_set_row_description;
	void function(AtkTable* table, gint column, gchar* description) c_atk_table_set_column_description;
	void function(AtkTable* table, gint row, AtkObject* header) c_atk_table_set_row_header;
	void function(AtkTable* table, gint column, AtkObject* header) c_atk_table_set_column_header;
	void function(AtkTable* table, AtkObject* accessible) c_atk_table_set_summary;
	gint function(AtkTable* table, gint** selected) c_atk_table_get_selected_columns;
	gint function(AtkTable* table, gint** selected) c_atk_table_get_selected_rows;
	gboolean function(AtkTable* table, gint column) c_atk_table_is_column_selected;
	gboolean function(AtkTable* table, gint row) c_atk_table_is_row_selected;
	gboolean function(AtkTable* table, gint row, gint column) c_atk_table_is_selected;
	gboolean function(AtkTable* table, gint column) c_atk_table_add_column_selection;
	gboolean function(AtkTable* table, gint row) c_atk_table_add_row_selection;
	gboolean function(AtkTable* table, gint column) c_atk_table_remove_column_selection;
	gboolean function(AtkTable* table, gint row) c_atk_table_remove_row_selection;

	// atk.Text

	gchar* function(AtkText* text, gint startOffset, gint endOffset) c_atk_text_get_text;
	gunichar function(AtkText* text, gint offset) c_atk_text_get_character_at_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_after_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_at_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_before_offset;
	gint function(AtkText* text) c_atk_text_get_caret_offset;
	void function(AtkText* text, gint offset, gint* x, gint* y, gint* width, gint* height, AtkCoordType coords) c_atk_text_get_character_extents;
	AtkAttributeSet* function(AtkText* text, gint offset, gint* startOffset, gint* endOffset) c_atk_text_get_run_attributes;
	AtkAttributeSet* function(AtkText* text) c_atk_text_get_default_attributes;
	gint function(AtkText* text) c_atk_text_get_character_count;
	gint function(AtkText* text, gint x, gint y, AtkCoordType coords) c_atk_text_get_offset_at_point;
	AtkTextRange** function(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType) c_atk_text_get_bounded_ranges;
	void function(AtkText* text, gint startOffset, gint endOffset, AtkCoordType coordType, AtkTextRectangle* rect) c_atk_text_get_range_extents;
	void function(AtkTextRange** ranges) c_atk_text_free_ranges;
	gint function(AtkText* text) c_atk_text_get_n_selections;
	gchar* function(AtkText* text, gint selectionNum, gint* startOffset, gint* endOffset) c_atk_text_get_selection;
	gboolean function(AtkText* text, gint startOffset, gint endOffset) c_atk_text_add_selection;
	gboolean function(AtkText* text, gint selectionNum) c_atk_text_remove_selection;
	gboolean function(AtkText* text, gint selectionNum, gint startOffset, gint endOffset) c_atk_text_set_selection;
	gboolean function(AtkText* text, gint offset) c_atk_text_set_caret_offset;
	void function(AtkAttributeSet* attribSet) c_atk_attribute_set_free;
	AtkTextAttribute function(gchar* name) c_atk_text_attribute_register;
	gchar* function(AtkTextAttribute attr) c_atk_text_attribute_get_name;
	AtkTextAttribute function(gchar* name) c_atk_text_attribute_for_name;
	gchar* function(AtkTextAttribute attr, gint index) c_atk_text_attribute_get_value;

	// atk.Util

	guint function(AtkEventListener focusTracker) c_atk_add_focus_tracker;
	void function(guint trackerId) c_atk_remove_focus_tracker;
	void function(AtkEventListenerInit init) c_atk_focus_tracker_init;
	void function(AtkObject* object) c_atk_focus_tracker_notify;
	guint function(GSignalEmissionHook listener, gchar* eventType) c_atk_add_global_event_listener;
	void function(guint listenerId) c_atk_remove_global_event_listener;
	guint function(AtkKeySnoopFunc listener, void* data) c_atk_add_key_event_listener;
	void function(guint listenerId) c_atk_remove_key_event_listener;
	AtkObject* function() c_atk_get_root;
	AtkObject* function() c_atk_get_focus_object;
	gchar* function() c_atk_get_toolkit_name;
	gchar* function() c_atk_get_toolkit_version;
	gchar* function() c_atk_get_version;

	// atk.ValueAtk

	void function(AtkValue* obj, GValue* value) c_atk_value_get_current_value;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_maximum_value;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_value;
	gboolean function(AtkValue* obj, GValue* value) c_atk_value_set_current_value;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_increment;
}");

// atk.Action

alias c_atk_action_do_action  atk_action_do_action;
alias c_atk_action_get_n_actions  atk_action_get_n_actions;
alias c_atk_action_get_description  atk_action_get_description;
alias c_atk_action_get_name  atk_action_get_name;
alias c_atk_action_get_localized_name  atk_action_get_localized_name;
alias c_atk_action_get_keybinding  atk_action_get_keybinding;
alias c_atk_action_set_description  atk_action_set_description;

// atk.Component

alias c_atk_component_add_focus_handler  atk_component_add_focus_handler;
alias c_atk_component_contains  atk_component_contains;
alias c_atk_component_get_extents  atk_component_get_extents;
alias c_atk_component_get_layer  atk_component_get_layer;
alias c_atk_component_get_mdi_zorder  atk_component_get_mdi_zorder;
alias c_atk_component_get_position  atk_component_get_position;
alias c_atk_component_get_size  atk_component_get_size;
alias c_atk_component_grab_focus  atk_component_grab_focus;
alias c_atk_component_ref_accessible_at_point  atk_component_ref_accessible_at_point;
alias c_atk_component_remove_focus_handler  atk_component_remove_focus_handler;
alias c_atk_component_set_extents  atk_component_set_extents;
alias c_atk_component_set_position  atk_component_set_position;
alias c_atk_component_set_size  atk_component_set_size;
alias c_atk_component_get_alpha  atk_component_get_alpha;

// atk.Document

alias c_atk_document_get_document_type  atk_document_get_document_type;
alias c_atk_document_get_document  atk_document_get_document;
alias c_atk_document_get_attribute_value  atk_document_get_attribute_value;
alias c_atk_document_set_attribute_value  atk_document_set_attribute_value;
alias c_atk_document_get_attributes  atk_document_get_attributes;
alias c_atk_document_get_locale  atk_document_get_locale;

// atk.EditableText

alias c_atk_editable_text_set_run_attributes  atk_editable_text_set_run_attributes;
alias c_atk_editable_text_set_text_contents  atk_editable_text_set_text_contents;
alias c_atk_editable_text_insert_text  atk_editable_text_insert_text;
alias c_atk_editable_text_copy_text  atk_editable_text_copy_text;
alias c_atk_editable_text_cut_text  atk_editable_text_cut_text;
alias c_atk_editable_text_delete_text  atk_editable_text_delete_text;
alias c_atk_editable_text_paste_text  atk_editable_text_paste_text;

// atk.GObjectAccessible

alias c_atk_gobject_accessible_for_object  atk_gobject_accessible_for_object;
alias c_atk_gobject_accessible_get_object  atk_gobject_accessible_get_object;

// atk.Hyperlink

alias c_atk_hyperlink_get_uri  atk_hyperlink_get_uri;
alias c_atk_hyperlink_get_object  atk_hyperlink_get_object;
alias c_atk_hyperlink_get_end_index  atk_hyperlink_get_end_index;
alias c_atk_hyperlink_get_start_index  atk_hyperlink_get_start_index;
alias c_atk_hyperlink_is_valid  atk_hyperlink_is_valid;
alias c_atk_hyperlink_is_inline  atk_hyperlink_is_inline;
alias c_atk_hyperlink_get_n_anchors  atk_hyperlink_get_n_anchors;
alias c_atk_hyperlink_is_selected_link  atk_hyperlink_is_selected_link;

// atk.Hypertext

alias c_atk_hypertext_get_link  atk_hypertext_get_link;
alias c_atk_hypertext_get_n_links  atk_hypertext_get_n_links;
alias c_atk_hypertext_get_link_index  atk_hypertext_get_link_index;

// atk.Image

alias c_atk_image_get_image_position  atk_image_get_image_position;
alias c_atk_image_get_image_description  atk_image_get_image_description;
alias c_atk_image_set_image_description  atk_image_set_image_description;
alias c_atk_image_get_image_size  atk_image_get_image_size;
alias c_atk_image_get_image_locale  atk_image_get_image_locale;

// atk.NoOpObject

alias c_atk_no_op_object_new  atk_no_op_object_new;

// atk.NoOpObjectFactory

alias c_atk_no_op_object_factory_new  atk_no_op_object_factory_new;

// atk.ObjectAtk

alias c_atk_role_register  atk_role_register;
alias c_atk_implementor_ref_accessible  atk_implementor_ref_accessible;
alias c_atk_object_get_name  atk_object_get_name;
alias c_atk_object_get_description  atk_object_get_description;
alias c_atk_object_get_parent  atk_object_get_parent;
alias c_atk_object_get_n_accessible_children  atk_object_get_n_accessible_children;
alias c_atk_object_ref_accessible_child  atk_object_ref_accessible_child;
alias c_atk_object_ref_relation_set  atk_object_ref_relation_set;
alias c_atk_object_get_layer  atk_object_get_layer;
alias c_atk_object_get_mdi_zorder  atk_object_get_mdi_zorder;
alias c_atk_object_get_role  atk_object_get_role;
alias c_atk_object_ref_state_set  atk_object_ref_state_set;
alias c_atk_object_get_index_in_parent  atk_object_get_index_in_parent;
alias c_atk_object_set_name  atk_object_set_name;
alias c_atk_object_set_description  atk_object_set_description;
alias c_atk_object_set_parent  atk_object_set_parent;
alias c_atk_object_set_role  atk_object_set_role;
alias c_atk_object_connect_property_change_handler  atk_object_connect_property_change_handler;
alias c_atk_object_remove_property_change_handler  atk_object_remove_property_change_handler;
alias c_atk_object_notify_state_change  atk_object_notify_state_change;
alias c_atk_object_initialize  atk_object_initialize;
alias c_atk_object_add_relationship  atk_object_add_relationship;
alias c_atk_object_remove_relationship  atk_object_remove_relationship;
alias c_atk_object_get_attributes  atk_object_get_attributes;
alias c_atk_role_get_name  atk_role_get_name;
alias c_atk_role_get_localized_name  atk_role_get_localized_name;
alias c_atk_role_for_name  atk_role_for_name;

// atk.ObjectFactory

alias c_atk_object_factory_create_accessible  atk_object_factory_create_accessible;
alias c_atk_object_factory_get_accessible_type  atk_object_factory_get_accessible_type;
alias c_atk_object_factory_invalidate  atk_object_factory_invalidate;

// atk.Registry

alias c_atk_registry_set_factory_type  atk_registry_set_factory_type;
alias c_atk_registry_get_factory_type  atk_registry_get_factory_type;
alias c_atk_registry_get_factory  atk_registry_get_factory;
alias c_atk_get_default_registry  atk_get_default_registry;

// atk.Relation

alias c_atk_relation_type_register  atk_relation_type_register;
alias c_atk_relation_type_get_name  atk_relation_type_get_name;
alias c_atk_relation_type_for_name  atk_relation_type_for_name;
alias c_atk_relation_new  atk_relation_new;
alias c_atk_relation_get_relation_type  atk_relation_get_relation_type;
alias c_atk_relation_get_target  atk_relation_get_target;
alias c_atk_relation_add_target  atk_relation_add_target;
alias c_atk_relation_remove_target  atk_relation_remove_target;

// atk.RelationSet

alias c_atk_relation_set_new  atk_relation_set_new;
alias c_atk_relation_set_contains  atk_relation_set_contains;
alias c_atk_relation_set_remove  atk_relation_set_remove;
alias c_atk_relation_set_add  atk_relation_set_add;
alias c_atk_relation_set_get_n_relations  atk_relation_set_get_n_relations;
alias c_atk_relation_set_get_relation  atk_relation_set_get_relation;
alias c_atk_relation_set_get_relation_by_type  atk_relation_set_get_relation_by_type;
alias c_atk_relation_set_add_relation_by_type  atk_relation_set_add_relation_by_type;

// atk.Selection

alias c_atk_selection_add_selection  atk_selection_add_selection;
alias c_atk_selection_clear_selection  atk_selection_clear_selection;
alias c_atk_selection_ref_selection  atk_selection_ref_selection;
alias c_atk_selection_get_selection_count  atk_selection_get_selection_count;
alias c_atk_selection_is_child_selected  atk_selection_is_child_selected;
alias c_atk_selection_remove_selection  atk_selection_remove_selection;
alias c_atk_selection_select_all_selection  atk_selection_select_all_selection;

// atk.State

alias c_atk_state_type_register  atk_state_type_register;
alias c_atk_state_type_get_name  atk_state_type_get_name;
alias c_atk_state_type_for_name  atk_state_type_for_name;

// atk.StateSet

alias c_atk_state_set_new  atk_state_set_new;
alias c_atk_state_set_is_empty  atk_state_set_is_empty;
alias c_atk_state_set_add_state  atk_state_set_add_state;
alias c_atk_state_set_add_states  atk_state_set_add_states;
alias c_atk_state_set_clear_states  atk_state_set_clear_states;
alias c_atk_state_set_contains_state  atk_state_set_contains_state;
alias c_atk_state_set_contains_states  atk_state_set_contains_states;
alias c_atk_state_set_remove_state  atk_state_set_remove_state;
alias c_atk_state_set_and_sets  atk_state_set_and_sets;
alias c_atk_state_set_or_sets  atk_state_set_or_sets;
alias c_atk_state_set_xor_sets  atk_state_set_xor_sets;

// atk.StreamableContent

alias c_atk_streamable_content_get_n_mime_types  atk_streamable_content_get_n_mime_types;
alias c_atk_streamable_content_get_mime_type  atk_streamable_content_get_mime_type;
alias c_atk_streamable_content_get_stream  atk_streamable_content_get_stream;
alias c_atk_streamable_content_get_uri  atk_streamable_content_get_uri;

// atk.Table

alias c_atk_table_ref_at  atk_table_ref_at;
alias c_atk_table_get_index_at  atk_table_get_index_at;
alias c_atk_table_get_column_at_index  atk_table_get_column_at_index;
alias c_atk_table_get_row_at_index  atk_table_get_row_at_index;
alias c_atk_table_get_n_columns  atk_table_get_n_columns;
alias c_atk_table_get_n_rows  atk_table_get_n_rows;
alias c_atk_table_get_column_extent_at  atk_table_get_column_extent_at;
alias c_atk_table_get_row_extent_at  atk_table_get_row_extent_at;
alias c_atk_table_get_caption  atk_table_get_caption;
alias c_atk_table_get_column_description  atk_table_get_column_description;
alias c_atk_table_get_row_description  atk_table_get_row_description;
alias c_atk_table_get_column_header  atk_table_get_column_header;
alias c_atk_table_get_row_header  atk_table_get_row_header;
alias c_atk_table_get_summary  atk_table_get_summary;
alias c_atk_table_set_caption  atk_table_set_caption;
alias c_atk_table_set_row_description  atk_table_set_row_description;
alias c_atk_table_set_column_description  atk_table_set_column_description;
alias c_atk_table_set_row_header  atk_table_set_row_header;
alias c_atk_table_set_column_header  atk_table_set_column_header;
alias c_atk_table_set_summary  atk_table_set_summary;
alias c_atk_table_get_selected_columns  atk_table_get_selected_columns;
alias c_atk_table_get_selected_rows  atk_table_get_selected_rows;
alias c_atk_table_is_column_selected  atk_table_is_column_selected;
alias c_atk_table_is_row_selected  atk_table_is_row_selected;
alias c_atk_table_is_selected  atk_table_is_selected;
alias c_atk_table_add_column_selection  atk_table_add_column_selection;
alias c_atk_table_add_row_selection  atk_table_add_row_selection;
alias c_atk_table_remove_column_selection  atk_table_remove_column_selection;
alias c_atk_table_remove_row_selection  atk_table_remove_row_selection;

// atk.Text

alias c_atk_text_get_text  atk_text_get_text;
alias c_atk_text_get_character_at_offset  atk_text_get_character_at_offset;
alias c_atk_text_get_text_after_offset  atk_text_get_text_after_offset;
alias c_atk_text_get_text_at_offset  atk_text_get_text_at_offset;
alias c_atk_text_get_text_before_offset  atk_text_get_text_before_offset;
alias c_atk_text_get_caret_offset  atk_text_get_caret_offset;
alias c_atk_text_get_character_extents  atk_text_get_character_extents;
alias c_atk_text_get_run_attributes  atk_text_get_run_attributes;
alias c_atk_text_get_default_attributes  atk_text_get_default_attributes;
alias c_atk_text_get_character_count  atk_text_get_character_count;
alias c_atk_text_get_offset_at_point  atk_text_get_offset_at_point;
alias c_atk_text_get_bounded_ranges  atk_text_get_bounded_ranges;
alias c_atk_text_get_range_extents  atk_text_get_range_extents;
alias c_atk_text_free_ranges  atk_text_free_ranges;
alias c_atk_text_get_n_selections  atk_text_get_n_selections;
alias c_atk_text_get_selection  atk_text_get_selection;
alias c_atk_text_add_selection  atk_text_add_selection;
alias c_atk_text_remove_selection  atk_text_remove_selection;
alias c_atk_text_set_selection  atk_text_set_selection;
alias c_atk_text_set_caret_offset  atk_text_set_caret_offset;
alias c_atk_attribute_set_free  atk_attribute_set_free;
alias c_atk_text_attribute_register  atk_text_attribute_register;
alias c_atk_text_attribute_get_name  atk_text_attribute_get_name;
alias c_atk_text_attribute_for_name  atk_text_attribute_for_name;
alias c_atk_text_attribute_get_value  atk_text_attribute_get_value;

// atk.Util

alias c_atk_add_focus_tracker  atk_add_focus_tracker;
alias c_atk_remove_focus_tracker  atk_remove_focus_tracker;
alias c_atk_focus_tracker_init  atk_focus_tracker_init;
alias c_atk_focus_tracker_notify  atk_focus_tracker_notify;
alias c_atk_add_global_event_listener  atk_add_global_event_listener;
alias c_atk_remove_global_event_listener  atk_remove_global_event_listener;
alias c_atk_add_key_event_listener  atk_add_key_event_listener;
alias c_atk_remove_key_event_listener  atk_remove_key_event_listener;
alias c_atk_get_root  atk_get_root;
alias c_atk_get_focus_object  atk_get_focus_object;
alias c_atk_get_toolkit_name  atk_get_toolkit_name;
alias c_atk_get_toolkit_version  atk_get_toolkit_version;
alias c_atk_get_version  atk_get_version;

// atk.ValueAtk

alias c_atk_value_get_current_value  atk_value_get_current_value;
alias c_atk_value_get_maximum_value  atk_value_get_maximum_value;
alias c_atk_value_get_minimum_value  atk_value_get_minimum_value;
alias c_atk_value_set_current_value  atk_value_set_current_value;
alias c_atk_value_get_minimum_increment  atk_value_get_minimum_increment;
