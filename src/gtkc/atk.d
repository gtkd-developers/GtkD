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


module gtkc.atk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.atktypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// atk.Action

	Linker.link(atk_action_do_action, "atk_action_do_action", LIBRARY.ATK);
	Linker.link(atk_action_get_n_actions, "atk_action_get_n_actions", LIBRARY.ATK);
	Linker.link(atk_action_get_description, "atk_action_get_description", LIBRARY.ATK);
	Linker.link(atk_action_get_name, "atk_action_get_name", LIBRARY.ATK);
	Linker.link(atk_action_get_localized_name, "atk_action_get_localized_name", LIBRARY.ATK);
	Linker.link(atk_action_get_keybinding, "atk_action_get_keybinding", LIBRARY.ATK);
	Linker.link(atk_action_set_description, "atk_action_set_description", LIBRARY.ATK);

	// atk.Component

	Linker.link(atk_component_add_focus_handler, "atk_component_add_focus_handler", LIBRARY.ATK);
	Linker.link(atk_component_contains, "atk_component_contains", LIBRARY.ATK);
	Linker.link(atk_component_get_extents, "atk_component_get_extents", LIBRARY.ATK);
	Linker.link(atk_component_get_layer, "atk_component_get_layer", LIBRARY.ATK);
	Linker.link(atk_component_get_mdi_zorder, "atk_component_get_mdi_zorder", LIBRARY.ATK);
	Linker.link(atk_component_get_position, "atk_component_get_position", LIBRARY.ATK);
	Linker.link(atk_component_get_size, "atk_component_get_size", LIBRARY.ATK);
	Linker.link(atk_component_grab_focus, "atk_component_grab_focus", LIBRARY.ATK);
	Linker.link(atk_component_ref_accessible_at_point, "atk_component_ref_accessible_at_point", LIBRARY.ATK);
	Linker.link(atk_component_remove_focus_handler, "atk_component_remove_focus_handler", LIBRARY.ATK);
	Linker.link(atk_component_set_extents, "atk_component_set_extents", LIBRARY.ATK);
	Linker.link(atk_component_set_position, "atk_component_set_position", LIBRARY.ATK);
	Linker.link(atk_component_set_size, "atk_component_set_size", LIBRARY.ATK);
	Linker.link(atk_component_get_alpha, "atk_component_get_alpha", LIBRARY.ATK);

	// atk.Document

	Linker.link(atk_document_get_document_type, "atk_document_get_document_type", LIBRARY.ATK);
	Linker.link(atk_document_get_document, "atk_document_get_document", LIBRARY.ATK);
	Linker.link(atk_document_get_attribute_value, "atk_document_get_attribute_value", LIBRARY.ATK);
	Linker.link(atk_document_set_attribute_value, "atk_document_set_attribute_value", LIBRARY.ATK);
	Linker.link(atk_document_get_attributes, "atk_document_get_attributes", LIBRARY.ATK);
	Linker.link(atk_document_get_locale, "atk_document_get_locale", LIBRARY.ATK);

	// atk.EditableText

	Linker.link(atk_editable_text_set_run_attributes, "atk_editable_text_set_run_attributes", LIBRARY.ATK);
	Linker.link(atk_editable_text_set_text_contents, "atk_editable_text_set_text_contents", LIBRARY.ATK);
	Linker.link(atk_editable_text_insert_text, "atk_editable_text_insert_text", LIBRARY.ATK);
	Linker.link(atk_editable_text_copy_text, "atk_editable_text_copy_text", LIBRARY.ATK);
	Linker.link(atk_editable_text_cut_text, "atk_editable_text_cut_text", LIBRARY.ATK);
	Linker.link(atk_editable_text_delete_text, "atk_editable_text_delete_text", LIBRARY.ATK);
	Linker.link(atk_editable_text_paste_text, "atk_editable_text_paste_text", LIBRARY.ATK);

	// atk.GObjectAccessible

	Linker.link(atk_gobject_accessible_for_object, "atk_gobject_accessible_for_object", LIBRARY.ATK);
	Linker.link(atk_gobject_accessible_get_object, "atk_gobject_accessible_get_object", LIBRARY.ATK);

	// atk.Hyperlink

	Linker.link(atk_hyperlink_get_uri, "atk_hyperlink_get_uri", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_object, "atk_hyperlink_get_object", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_end_index, "atk_hyperlink_get_end_index", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_start_index, "atk_hyperlink_get_start_index", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_valid, "atk_hyperlink_is_valid", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_inline, "atk_hyperlink_is_inline", LIBRARY.ATK);
	Linker.link(atk_hyperlink_get_n_anchors, "atk_hyperlink_get_n_anchors", LIBRARY.ATK);
	Linker.link(atk_hyperlink_is_selected_link, "atk_hyperlink_is_selected_link", LIBRARY.ATK);

	// atk.Hypertext

	Linker.link(atk_hypertext_get_link, "atk_hypertext_get_link", LIBRARY.ATK);
	Linker.link(atk_hypertext_get_n_links, "atk_hypertext_get_n_links", LIBRARY.ATK);
	Linker.link(atk_hypertext_get_link_index, "atk_hypertext_get_link_index", LIBRARY.ATK);

	// atk.Image

	Linker.link(atk_image_get_image_position, "atk_image_get_image_position", LIBRARY.ATK);
	Linker.link(atk_image_get_image_description, "atk_image_get_image_description", LIBRARY.ATK);
	Linker.link(atk_image_set_image_description, "atk_image_set_image_description", LIBRARY.ATK);
	Linker.link(atk_image_get_image_size, "atk_image_get_image_size", LIBRARY.ATK);
	Linker.link(atk_image_get_image_locale, "atk_image_get_image_locale", LIBRARY.ATK);

	// atk.NoOpObject

	Linker.link(atk_no_op_object_new, "atk_no_op_object_new", LIBRARY.ATK);

	// atk.NoOpObjectFactory

	Linker.link(atk_no_op_object_factory_new, "atk_no_op_object_factory_new", LIBRARY.ATK);

	// atk.ObjectAtk

	Linker.link(atk_role_register, "atk_role_register", LIBRARY.ATK);
	Linker.link(atk_implementor_ref_accessible, "atk_implementor_ref_accessible", LIBRARY.ATK);
	Linker.link(atk_object_get_name, "atk_object_get_name", LIBRARY.ATK);
	Linker.link(atk_object_get_description, "atk_object_get_description", LIBRARY.ATK);
	Linker.link(atk_object_get_parent, "atk_object_get_parent", LIBRARY.ATK);
	Linker.link(atk_object_get_n_accessible_children, "atk_object_get_n_accessible_children", LIBRARY.ATK);
	Linker.link(atk_object_ref_accessible_child, "atk_object_ref_accessible_child", LIBRARY.ATK);
	Linker.link(atk_object_ref_relation_set, "atk_object_ref_relation_set", LIBRARY.ATK);
	Linker.link(atk_object_get_layer, "atk_object_get_layer", LIBRARY.ATK);
	Linker.link(atk_object_get_mdi_zorder, "atk_object_get_mdi_zorder", LIBRARY.ATK);
	Linker.link(atk_object_get_role, "atk_object_get_role", LIBRARY.ATK);
	Linker.link(atk_object_ref_state_set, "atk_object_ref_state_set", LIBRARY.ATK);
	Linker.link(atk_object_get_index_in_parent, "atk_object_get_index_in_parent", LIBRARY.ATK);
	Linker.link(atk_object_set_name, "atk_object_set_name", LIBRARY.ATK);
	Linker.link(atk_object_set_description, "atk_object_set_description", LIBRARY.ATK);
	Linker.link(atk_object_set_parent, "atk_object_set_parent", LIBRARY.ATK);
	Linker.link(atk_object_set_role, "atk_object_set_role", LIBRARY.ATK);
	Linker.link(atk_object_connect_property_change_handler, "atk_object_connect_property_change_handler", LIBRARY.ATK);
	Linker.link(atk_object_remove_property_change_handler, "atk_object_remove_property_change_handler", LIBRARY.ATK);
	Linker.link(atk_object_notify_state_change, "atk_object_notify_state_change", LIBRARY.ATK);
	Linker.link(atk_object_initialize, "atk_object_initialize", LIBRARY.ATK);
	Linker.link(atk_object_add_relationship, "atk_object_add_relationship", LIBRARY.ATK);
	Linker.link(atk_object_remove_relationship, "atk_object_remove_relationship", LIBRARY.ATK);
	Linker.link(atk_object_get_attributes, "atk_object_get_attributes", LIBRARY.ATK);
	Linker.link(atk_role_get_name, "atk_role_get_name", LIBRARY.ATK);
	Linker.link(atk_role_get_localized_name, "atk_role_get_localized_name", LIBRARY.ATK);
	Linker.link(atk_role_for_name, "atk_role_for_name", LIBRARY.ATK);

	// atk.ObjectFactory

	Linker.link(atk_object_factory_create_accessible, "atk_object_factory_create_accessible", LIBRARY.ATK);
	Linker.link(atk_object_factory_get_accessible_type, "atk_object_factory_get_accessible_type", LIBRARY.ATK);
	Linker.link(atk_object_factory_invalidate, "atk_object_factory_invalidate", LIBRARY.ATK);

	// atk.Registry

	Linker.link(atk_registry_set_factory_type, "atk_registry_set_factory_type", LIBRARY.ATK);
	Linker.link(atk_registry_get_factory_type, "atk_registry_get_factory_type", LIBRARY.ATK);
	Linker.link(atk_registry_get_factory, "atk_registry_get_factory", LIBRARY.ATK);
	Linker.link(atk_get_default_registry, "atk_get_default_registry", LIBRARY.ATK);

	// atk.Relation

	Linker.link(atk_relation_type_register, "atk_relation_type_register", LIBRARY.ATK);
	Linker.link(atk_relation_type_get_name, "atk_relation_type_get_name", LIBRARY.ATK);
	Linker.link(atk_relation_type_for_name, "atk_relation_type_for_name", LIBRARY.ATK);
	Linker.link(atk_relation_new, "atk_relation_new", LIBRARY.ATK);
	Linker.link(atk_relation_get_relation_type, "atk_relation_get_relation_type", LIBRARY.ATK);
	Linker.link(atk_relation_get_target, "atk_relation_get_target", LIBRARY.ATK);
	Linker.link(atk_relation_add_target, "atk_relation_add_target", LIBRARY.ATK);

	// atk.RelationSet

	Linker.link(atk_relation_set_new, "atk_relation_set_new", LIBRARY.ATK);
	Linker.link(atk_relation_set_contains, "atk_relation_set_contains", LIBRARY.ATK);
	Linker.link(atk_relation_set_remove, "atk_relation_set_remove", LIBRARY.ATK);
	Linker.link(atk_relation_set_add, "atk_relation_set_add", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_n_relations, "atk_relation_set_get_n_relations", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_relation, "atk_relation_set_get_relation", LIBRARY.ATK);
	Linker.link(atk_relation_set_get_relation_by_type, "atk_relation_set_get_relation_by_type", LIBRARY.ATK);
	Linker.link(atk_relation_set_add_relation_by_type, "atk_relation_set_add_relation_by_type", LIBRARY.ATK);

	// atk.Selection

	Linker.link(atk_selection_add_selection, "atk_selection_add_selection", LIBRARY.ATK);
	Linker.link(atk_selection_clear_selection, "atk_selection_clear_selection", LIBRARY.ATK);
	Linker.link(atk_selection_ref_selection, "atk_selection_ref_selection", LIBRARY.ATK);
	Linker.link(atk_selection_get_selection_count, "atk_selection_get_selection_count", LIBRARY.ATK);
	Linker.link(atk_selection_is_child_selected, "atk_selection_is_child_selected", LIBRARY.ATK);
	Linker.link(atk_selection_remove_selection, "atk_selection_remove_selection", LIBRARY.ATK);
	Linker.link(atk_selection_select_all_selection, "atk_selection_select_all_selection", LIBRARY.ATK);

	// atk.State

	Linker.link(atk_state_type_register, "atk_state_type_register", LIBRARY.ATK);
	Linker.link(atk_state_type_get_name, "atk_state_type_get_name", LIBRARY.ATK);
	Linker.link(atk_state_type_for_name, "atk_state_type_for_name", LIBRARY.ATK);

	// atk.StateSet

	Linker.link(atk_state_set_new, "atk_state_set_new", LIBRARY.ATK);
	Linker.link(atk_state_set_is_empty, "atk_state_set_is_empty", LIBRARY.ATK);
	Linker.link(atk_state_set_add_state, "atk_state_set_add_state", LIBRARY.ATK);
	Linker.link(atk_state_set_add_states, "atk_state_set_add_states", LIBRARY.ATK);
	Linker.link(atk_state_set_clear_states, "atk_state_set_clear_states", LIBRARY.ATK);
	Linker.link(atk_state_set_contains_state, "atk_state_set_contains_state", LIBRARY.ATK);
	Linker.link(atk_state_set_contains_states, "atk_state_set_contains_states", LIBRARY.ATK);
	Linker.link(atk_state_set_remove_state, "atk_state_set_remove_state", LIBRARY.ATK);
	Linker.link(atk_state_set_and_sets, "atk_state_set_and_sets", LIBRARY.ATK);
	Linker.link(atk_state_set_or_sets, "atk_state_set_or_sets", LIBRARY.ATK);
	Linker.link(atk_state_set_xor_sets, "atk_state_set_xor_sets", LIBRARY.ATK);

	// atk.StreamableContent

	Linker.link(atk_streamable_content_get_n_mime_types, "atk_streamable_content_get_n_mime_types", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_mime_type, "atk_streamable_content_get_mime_type", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_stream, "atk_streamable_content_get_stream", LIBRARY.ATK);
	Linker.link(atk_streamable_content_get_uri, "atk_streamable_content_get_uri", LIBRARY.ATK);

	// atk.Table

	Linker.link(atk_table_ref_at, "atk_table_ref_at", LIBRARY.ATK);
	Linker.link(atk_table_get_index_at, "atk_table_get_index_at", LIBRARY.ATK);
	Linker.link(atk_table_get_column_at_index, "atk_table_get_column_at_index", LIBRARY.ATK);
	Linker.link(atk_table_get_row_at_index, "atk_table_get_row_at_index", LIBRARY.ATK);
	Linker.link(atk_table_get_n_columns, "atk_table_get_n_columns", LIBRARY.ATK);
	Linker.link(atk_table_get_n_rows, "atk_table_get_n_rows", LIBRARY.ATK);
	Linker.link(atk_table_get_column_extent_at, "atk_table_get_column_extent_at", LIBRARY.ATK);
	Linker.link(atk_table_get_row_extent_at, "atk_table_get_row_extent_at", LIBRARY.ATK);
	Linker.link(atk_table_get_caption, "atk_table_get_caption", LIBRARY.ATK);
	Linker.link(atk_table_get_column_description, "atk_table_get_column_description", LIBRARY.ATK);
	Linker.link(atk_table_get_row_description, "atk_table_get_row_description", LIBRARY.ATK);
	Linker.link(atk_table_get_column_header, "atk_table_get_column_header", LIBRARY.ATK);
	Linker.link(atk_table_get_row_header, "atk_table_get_row_header", LIBRARY.ATK);
	Linker.link(atk_table_get_summary, "atk_table_get_summary", LIBRARY.ATK);
	Linker.link(atk_table_set_caption, "atk_table_set_caption", LIBRARY.ATK);
	Linker.link(atk_table_set_row_description, "atk_table_set_row_description", LIBRARY.ATK);
	Linker.link(atk_table_set_column_description, "atk_table_set_column_description", LIBRARY.ATK);
	Linker.link(atk_table_set_row_header, "atk_table_set_row_header", LIBRARY.ATK);
	Linker.link(atk_table_set_column_header, "atk_table_set_column_header", LIBRARY.ATK);
	Linker.link(atk_table_set_summary, "atk_table_set_summary", LIBRARY.ATK);
	Linker.link(atk_table_get_selected_columns, "atk_table_get_selected_columns", LIBRARY.ATK);
	Linker.link(atk_table_get_selected_rows, "atk_table_get_selected_rows", LIBRARY.ATK);
	Linker.link(atk_table_is_column_selected, "atk_table_is_column_selected", LIBRARY.ATK);
	Linker.link(atk_table_is_row_selected, "atk_table_is_row_selected", LIBRARY.ATK);
	Linker.link(atk_table_is_selected, "atk_table_is_selected", LIBRARY.ATK);
	Linker.link(atk_table_add_column_selection, "atk_table_add_column_selection", LIBRARY.ATK);
	Linker.link(atk_table_add_row_selection, "atk_table_add_row_selection", LIBRARY.ATK);
	Linker.link(atk_table_remove_column_selection, "atk_table_remove_column_selection", LIBRARY.ATK);
	Linker.link(atk_table_remove_row_selection, "atk_table_remove_row_selection", LIBRARY.ATK);

	// atk.Text

	Linker.link(atk_text_get_text, "atk_text_get_text", LIBRARY.ATK);
	Linker.link(atk_text_get_character_at_offset, "atk_text_get_character_at_offset", LIBRARY.ATK);
	Linker.link(atk_text_get_text_after_offset, "atk_text_get_text_after_offset", LIBRARY.ATK);
	Linker.link(atk_text_get_text_at_offset, "atk_text_get_text_at_offset", LIBRARY.ATK);
	Linker.link(atk_text_get_text_before_offset, "atk_text_get_text_before_offset", LIBRARY.ATK);
	Linker.link(atk_text_get_caret_offset, "atk_text_get_caret_offset", LIBRARY.ATK);
	Linker.link(atk_text_get_character_extents, "atk_text_get_character_extents", LIBRARY.ATK);
	Linker.link(atk_text_get_run_attributes, "atk_text_get_run_attributes", LIBRARY.ATK);
	Linker.link(atk_text_get_default_attributes, "atk_text_get_default_attributes", LIBRARY.ATK);
	Linker.link(atk_text_get_character_count, "atk_text_get_character_count", LIBRARY.ATK);
	Linker.link(atk_text_get_offset_at_point, "atk_text_get_offset_at_point", LIBRARY.ATK);
	Linker.link(atk_text_get_bounded_ranges, "atk_text_get_bounded_ranges", LIBRARY.ATK);
	Linker.link(atk_text_get_range_extents, "atk_text_get_range_extents", LIBRARY.ATK);
	Linker.link(atk_text_free_ranges, "atk_text_free_ranges", LIBRARY.ATK);
	Linker.link(atk_text_get_n_selections, "atk_text_get_n_selections", LIBRARY.ATK);
	Linker.link(atk_text_get_selection, "atk_text_get_selection", LIBRARY.ATK);
	Linker.link(atk_text_add_selection, "atk_text_add_selection", LIBRARY.ATK);
	Linker.link(atk_text_remove_selection, "atk_text_remove_selection", LIBRARY.ATK);
	Linker.link(atk_text_set_selection, "atk_text_set_selection", LIBRARY.ATK);
	Linker.link(atk_text_set_caret_offset, "atk_text_set_caret_offset", LIBRARY.ATK);
	Linker.link(atk_attribute_set_free, "atk_attribute_set_free", LIBRARY.ATK);
	Linker.link(atk_text_attribute_register, "atk_text_attribute_register", LIBRARY.ATK);
	Linker.link(atk_text_attribute_get_name, "atk_text_attribute_get_name", LIBRARY.ATK);
	Linker.link(atk_text_attribute_for_name, "atk_text_attribute_for_name", LIBRARY.ATK);
	Linker.link(atk_text_attribute_get_value, "atk_text_attribute_get_value", LIBRARY.ATK);

	// atk.Util

	Linker.link(atk_add_focus_tracker, "atk_add_focus_tracker", LIBRARY.ATK);
	Linker.link(atk_remove_focus_tracker, "atk_remove_focus_tracker", LIBRARY.ATK);
	Linker.link(atk_focus_tracker_init, "atk_focus_tracker_init", LIBRARY.ATK);
	Linker.link(atk_focus_tracker_notify, "atk_focus_tracker_notify", LIBRARY.ATK);
	Linker.link(atk_add_global_event_listener, "atk_add_global_event_listener", LIBRARY.ATK);
	Linker.link(atk_remove_global_event_listener, "atk_remove_global_event_listener", LIBRARY.ATK);
	Linker.link(atk_add_key_event_listener, "atk_add_key_event_listener", LIBRARY.ATK);
	Linker.link(atk_remove_key_event_listener, "atk_remove_key_event_listener", LIBRARY.ATK);
	Linker.link(atk_get_root, "atk_get_root", LIBRARY.ATK);
	Linker.link(atk_get_focus_object, "atk_get_focus_object", LIBRARY.ATK);
	Linker.link(atk_get_toolkit_name, "atk_get_toolkit_name", LIBRARY.ATK);
	Linker.link(atk_get_toolkit_version, "atk_get_toolkit_version", LIBRARY.ATK);

	// atk.ValueAtk

	Linker.link(atk_value_get_current_value, "atk_value_get_current_value", LIBRARY.ATK);
	Linker.link(atk_value_get_maximum_value, "atk_value_get_maximum_value", LIBRARY.ATK);
	Linker.link(atk_value_get_minimum_value, "atk_value_get_minimum_value", LIBRARY.ATK);
	Linker.link(atk_value_set_current_value, "atk_value_set_current_value", LIBRARY.ATK);
	Linker.link(atk_value_get_minimum_increment, "atk_value_get_minimum_increment", LIBRARY.ATK);
}

extern(C)
{
	
	// atk.Action
	
	typedef gboolean function(AtkAction* action, gint i) c_atk_action_do_action;
	typedef gint function(AtkAction* action) c_atk_action_get_n_actions;
	typedef gchar* function(AtkAction* action, gint i) c_atk_action_get_description;
	typedef gchar* function(AtkAction* action, gint i) c_atk_action_get_name;
	typedef gchar* function(AtkAction* action, gint i) c_atk_action_get_localized_name;
	typedef gchar* function(AtkAction* action, gint i) c_atk_action_get_keybinding;
	typedef gboolean function(AtkAction* action, gint i, gchar* desc) c_atk_action_set_description;
	
	// atk.Component
	
	typedef guint function(AtkComponent* component, AtkFocusHandler handler) c_atk_component_add_focus_handler;
	typedef gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_contains;
	typedef void function(AtkComponent* component, gint* x, gint* y, gint* width, gint* height, AtkCoordType coordType) c_atk_component_get_extents;
	typedef AtkLayer function(AtkComponent* component) c_atk_component_get_layer;
	typedef gint function(AtkComponent* component) c_atk_component_get_mdi_zorder;
	typedef void function(AtkComponent* component, gint* x, gint* y, AtkCoordType coordType) c_atk_component_get_position;
	typedef void function(AtkComponent* component, gint* width, gint* height) c_atk_component_get_size;
	typedef gboolean function(AtkComponent* component) c_atk_component_grab_focus;
	typedef AtkObject* function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_ref_accessible_at_point;
	typedef void function(AtkComponent* component, guint handlerId) c_atk_component_remove_focus_handler;
	typedef gboolean function(AtkComponent* component, gint x, gint y, gint width, gint height, AtkCoordType coordType) c_atk_component_set_extents;
	typedef gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType) c_atk_component_set_position;
	typedef gboolean function(AtkComponent* component, gint width, gint height) c_atk_component_set_size;
	typedef gdouble function(AtkComponent* component) c_atk_component_get_alpha;
	
	// atk.Document
	
	typedef gchar* function(AtkDocument* document) c_atk_document_get_document_type;
	typedef gpointer function(AtkDocument* document) c_atk_document_get_document;
	typedef gchar* function(AtkDocument* document, gchar* attributeName) c_atk_document_get_attribute_value;
	typedef gboolean function(AtkDocument* document, gchar* attributeName, gchar* attributeValue) c_atk_document_set_attribute_value;
	typedef AtkAttributeSet* function(AtkDocument* document) c_atk_document_get_attributes;
	typedef gchar* function(AtkDocument* document) c_atk_document_get_locale;
	
	// atk.EditableText
	
	typedef gboolean function(AtkEditableText* text, AtkAttributeSet* attribSet, gint startOffset, gint endOffset) c_atk_editable_text_set_run_attributes;
	typedef void function(AtkEditableText* text, gchar* string) c_atk_editable_text_set_text_contents;
	typedef void function(AtkEditableText* text, gchar* string, gint length, gint* position) c_atk_editable_text_insert_text;
	typedef void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_copy_text;
	typedef void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_cut_text;
	typedef void function(AtkEditableText* text, gint startPos, gint endPos) c_atk_editable_text_delete_text;
	typedef void function(AtkEditableText* text, gint position) c_atk_editable_text_paste_text;
	
	// atk.GObjectAccessible
	
	typedef AtkObject* function(GObject* obj) c_atk_gobject_accessible_for_object;
	typedef GObject* function(AtkGObjectAccessible* obj) c_atk_gobject_accessible_get_object;
	
	// atk.Hyperlink
	
	typedef gchar* function(AtkHyperlink* link, gint i) c_atk_hyperlink_get_uri;
	typedef AtkObject* function(AtkHyperlink* link, gint i) c_atk_hyperlink_get_object;
	typedef gint function(AtkHyperlink* link) c_atk_hyperlink_get_end_index;
	typedef gint function(AtkHyperlink* link) c_atk_hyperlink_get_start_index;
	typedef gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_valid;
	typedef gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_inline;
	typedef gint function(AtkHyperlink* link) c_atk_hyperlink_get_n_anchors;
	typedef gboolean function(AtkHyperlink* link) c_atk_hyperlink_is_selected_link;
	
	// atk.Hypertext
	
	typedef AtkHyperlink* function(AtkHypertext* hypertext, gint linkIndex) c_atk_hypertext_get_link;
	typedef gint function(AtkHypertext* hypertext) c_atk_hypertext_get_n_links;
	typedef gint function(AtkHypertext* hypertext, gint charIndex) c_atk_hypertext_get_link_index;
	
	// atk.Image
	
	typedef void function(AtkImage* image, gint* x, gint* y, AtkCoordType coordType) c_atk_image_get_image_position;
	typedef gchar* function(AtkImage* image) c_atk_image_get_image_description;
	typedef gboolean function(AtkImage* image, gchar* description) c_atk_image_set_image_description;
	typedef void function(AtkImage* image, gint* width, gint* height) c_atk_image_get_image_size;
	typedef gchar* function(AtkImage* image) c_atk_image_get_image_locale;
	
	// atk.NoOpObject
	
	typedef AtkObject* function(GObject* obj) c_atk_no_op_object_new;
	
	// atk.NoOpObjectFactory
	
	typedef AtkObjectFactory* function() c_atk_no_op_object_factory_new;
	
	// atk.ObjectAtk
	
	typedef AtkRole function(gchar* name) c_atk_role_register;
	typedef AtkObject* function(AtkImplementor* implementor) c_atk_implementor_ref_accessible;
	typedef gchar* function(AtkObject* accessible) c_atk_object_get_name;
	typedef gchar* function(AtkObject* accessible) c_atk_object_get_description;
	typedef AtkObject* function(AtkObject* accessible) c_atk_object_get_parent;
	typedef gint function(AtkObject* accessible) c_atk_object_get_n_accessible_children;
	typedef AtkObject* function(AtkObject* accessible, gint i) c_atk_object_ref_accessible_child;
	typedef AtkRelationSet* function(AtkObject* accessible) c_atk_object_ref_relation_set;
	typedef AtkLayer function(AtkObject* accessible) c_atk_object_get_layer;
	typedef gint function(AtkObject* accessible) c_atk_object_get_mdi_zorder;
	typedef AtkRole function(AtkObject* accessible) c_atk_object_get_role;
	typedef AtkStateSet* function(AtkObject* accessible) c_atk_object_ref_state_set;
	typedef gint function(AtkObject* accessible) c_atk_object_get_index_in_parent;
	typedef void function(AtkObject* accessible, gchar* name) c_atk_object_set_name;
	typedef void function(AtkObject* accessible, gchar* description) c_atk_object_set_description;
	typedef void function(AtkObject* accessible, AtkObject* parent) c_atk_object_set_parent;
	typedef void function(AtkObject* accessible, AtkRole role) c_atk_object_set_role;
	typedef guint function(AtkObject* accessible, AtkPropertyChangeHandler* handler) c_atk_object_connect_property_change_handler;
	typedef void function(AtkObject* accessible, guint handlerId) c_atk_object_remove_property_change_handler;
	typedef void function(AtkObject* accessible, AtkState state, gboolean value) c_atk_object_notify_state_change;
	typedef void function(AtkObject* accessible, gpointer data) c_atk_object_initialize;
	typedef gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_add_relationship;
	typedef gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_remove_relationship;
	typedef AtkAttributeSet* function(AtkObject* accessible) c_atk_object_get_attributes;
	typedef gchar* function(AtkRole role) c_atk_role_get_name;
	typedef gchar* function(AtkRole role) c_atk_role_get_localized_name;
	typedef AtkRole function(gchar* name) c_atk_role_for_name;
	
	// atk.ObjectFactory
	
	typedef AtkObject* function(AtkObjectFactory* factory, GObject* obj) c_atk_object_factory_create_accessible;
	typedef GType function(AtkObjectFactory* factory) c_atk_object_factory_get_accessible_type;
	typedef void function(AtkObjectFactory* factory) c_atk_object_factory_invalidate;
	
	// atk.Registry
	
	typedef void function(AtkRegistry* registry, GType type, GType factoryType) c_atk_registry_set_factory_type;
	typedef GType function(AtkRegistry* registry, GType type) c_atk_registry_get_factory_type;
	typedef AtkObjectFactory* function(AtkRegistry* registry, GType type) c_atk_registry_get_factory;
	typedef AtkRegistry* function() c_atk_get_default_registry;
	
	// atk.Relation
	
	typedef AtkRelationType function(gchar* name) c_atk_relation_type_register;
	typedef gchar* function(AtkRelationType type) c_atk_relation_type_get_name;
	typedef AtkRelationType function(gchar* name) c_atk_relation_type_for_name;
	typedef AtkRelation* function(AtkObject** targets, gint nTargets, AtkRelationType relationship) c_atk_relation_new;
	typedef AtkRelationType function(AtkRelation* relation) c_atk_relation_get_relation_type;
	typedef GPtrArray* function(AtkRelation* relation) c_atk_relation_get_target;
	typedef void function(AtkRelation* relation, AtkObject* target) c_atk_relation_add_target;
	
	// atk.RelationSet
	
	typedef AtkRelationSet* function() c_atk_relation_set_new;
	typedef gboolean function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_contains;
	typedef void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_remove;
	typedef void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_add;
	typedef gint function(AtkRelationSet* set) c_atk_relation_set_get_n_relations;
	typedef AtkRelation* function(AtkRelationSet* set, gint i) c_atk_relation_set_get_relation;
	typedef AtkRelation* function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_get_relation_by_type;
	typedef void function(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target) c_atk_relation_set_add_relation_by_type;
	
	// atk.Selection
	
	typedef gboolean function(AtkSelection* selection, gint i) c_atk_selection_add_selection;
	typedef gboolean function(AtkSelection* selection) c_atk_selection_clear_selection;
	typedef AtkObject* function(AtkSelection* selection, gint i) c_atk_selection_ref_selection;
	typedef gint function(AtkSelection* selection) c_atk_selection_get_selection_count;
	typedef gboolean function(AtkSelection* selection, gint i) c_atk_selection_is_child_selected;
	typedef gboolean function(AtkSelection* selection, gint i) c_atk_selection_remove_selection;
	typedef gboolean function(AtkSelection* selection) c_atk_selection_select_all_selection;
	
	// atk.State
	
	typedef AtkStateType function(gchar* name) c_atk_state_type_register;
	typedef gchar* function(AtkStateType type) c_atk_state_type_get_name;
	typedef AtkStateType function(gchar* name) c_atk_state_type_for_name;
	
	// atk.StateSet
	
	typedef AtkStateSet* function() c_atk_state_set_new;
	typedef gboolean function(AtkStateSet* set) c_atk_state_set_is_empty;
	typedef gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_add_state;
	typedef void function(AtkStateSet* set, AtkStateType* types, gint nTypes) c_atk_state_set_add_states;
	typedef void function(AtkStateSet* set) c_atk_state_set_clear_states;
	typedef gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_contains_state;
	typedef gboolean function(AtkStateSet* set, AtkStateType* types, gint nTypes) c_atk_state_set_contains_states;
	typedef gboolean function(AtkStateSet* set, AtkStateType type) c_atk_state_set_remove_state;
	typedef AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_and_sets;
	typedef AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_or_sets;
	typedef AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_xor_sets;
	
	// atk.StreamableContent
	
	typedef gint function(AtkStreamableContent* streamable) c_atk_streamable_content_get_n_mime_types;
	typedef gchar* function(AtkStreamableContent* streamable, gint i) c_atk_streamable_content_get_mime_type;
	typedef GIOChannel* function(AtkStreamableContent* streamable, gchar* mimeType) c_atk_streamable_content_get_stream;
	typedef gchar* function(AtkStreamableContent* streamable, gchar* mimeType) c_atk_streamable_content_get_uri;
	
	// atk.Table
	
	typedef AtkObject* function(AtkTable* table, gint row, gint column) c_atk_table_ref_at;
	typedef gint function(AtkTable* table, gint row, gint column) c_atk_table_get_index_at;
	typedef gint function(AtkTable* table, gint index) c_atk_table_get_column_at_index;
	typedef gint function(AtkTable* table, gint index) c_atk_table_get_row_at_index;
	typedef gint function(AtkTable* table) c_atk_table_get_n_columns;
	typedef gint function(AtkTable* table) c_atk_table_get_n_rows;
	typedef gint function(AtkTable* table, gint row, gint column) c_atk_table_get_column_extent_at;
	typedef gint function(AtkTable* table, gint row, gint column) c_atk_table_get_row_extent_at;
	typedef AtkObject* function(AtkTable* table) c_atk_table_get_caption;
	typedef gchar* function(AtkTable* table, gint column) c_atk_table_get_column_description;
	typedef gchar* function(AtkTable* table, gint row) c_atk_table_get_row_description;
	typedef AtkObject* function(AtkTable* table, gint column) c_atk_table_get_column_header;
	typedef AtkObject* function(AtkTable* table, gint row) c_atk_table_get_row_header;
	typedef AtkObject* function(AtkTable* table) c_atk_table_get_summary;
	typedef void function(AtkTable* table, AtkObject* caption) c_atk_table_set_caption;
	typedef void function(AtkTable* table, gint row, gchar* description) c_atk_table_set_row_description;
	typedef void function(AtkTable* table, gint column, gchar* description) c_atk_table_set_column_description;
	typedef void function(AtkTable* table, gint row, AtkObject* header) c_atk_table_set_row_header;
	typedef void function(AtkTable* table, gint column, AtkObject* header) c_atk_table_set_column_header;
	typedef void function(AtkTable* table, AtkObject* accessible) c_atk_table_set_summary;
	typedef gint function(AtkTable* table, gint** selected) c_atk_table_get_selected_columns;
	typedef gint function(AtkTable* table, gint** selected) c_atk_table_get_selected_rows;
	typedef gboolean function(AtkTable* table, gint column) c_atk_table_is_column_selected;
	typedef gboolean function(AtkTable* table, gint row) c_atk_table_is_row_selected;
	typedef gboolean function(AtkTable* table, gint row, gint column) c_atk_table_is_selected;
	typedef gboolean function(AtkTable* table, gint column) c_atk_table_add_column_selection;
	typedef gboolean function(AtkTable* table, gint row) c_atk_table_add_row_selection;
	typedef gboolean function(AtkTable* table, gint column) c_atk_table_remove_column_selection;
	typedef gboolean function(AtkTable* table, gint row) c_atk_table_remove_row_selection;
	
	// atk.Text
	
	typedef gchar* function(AtkText* text, gint startOffset, gint endOffset) c_atk_text_get_text;
	typedef gunichar function(AtkText* text, gint offset) c_atk_text_get_character_at_offset;
	typedef gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_after_offset;
	typedef gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_at_offset;
	typedef gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset) c_atk_text_get_text_before_offset;
	typedef gint function(AtkText* text) c_atk_text_get_caret_offset;
	typedef void function(AtkText* text, gint offset, gint* x, gint* y, gint* width, gint* height, AtkCoordType coords) c_atk_text_get_character_extents;
	typedef AtkAttributeSet* function(AtkText* text, gint offset, gint* startOffset, gint* endOffset) c_atk_text_get_run_attributes;
	typedef AtkAttributeSet* function(AtkText* text) c_atk_text_get_default_attributes;
	typedef gint function(AtkText* text) c_atk_text_get_character_count;
	typedef gint function(AtkText* text, gint x, gint y, AtkCoordType coords) c_atk_text_get_offset_at_point;
	typedef AtkTextRange** function(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType) c_atk_text_get_bounded_ranges;
	typedef void function(AtkText* text, gint startOffset, gint endOffset, AtkCoordType coordType, AtkTextRectangle* rect) c_atk_text_get_range_extents;
	typedef void function(AtkTextRange** ranges) c_atk_text_free_ranges;
	typedef gint function(AtkText* text) c_atk_text_get_n_selections;
	typedef gchar* function(AtkText* text, gint selectionNum, gint* startOffset, gint* endOffset) c_atk_text_get_selection;
	typedef gboolean function(AtkText* text, gint startOffset, gint endOffset) c_atk_text_add_selection;
	typedef gboolean function(AtkText* text, gint selectionNum) c_atk_text_remove_selection;
	typedef gboolean function(AtkText* text, gint selectionNum, gint startOffset, gint endOffset) c_atk_text_set_selection;
	typedef gboolean function(AtkText* text, gint offset) c_atk_text_set_caret_offset;
	typedef void function(AtkAttributeSet* attribSet) c_atk_attribute_set_free;
	typedef AtkTextAttribute function(gchar* name) c_atk_text_attribute_register;
	typedef gchar* function(AtkTextAttribute attr) c_atk_text_attribute_get_name;
	typedef AtkTextAttribute function(gchar* name) c_atk_text_attribute_for_name;
	typedef gchar* function(AtkTextAttribute attr, gint index) c_atk_text_attribute_get_value;
	
	// atk.Util
	
	typedef guint function(AtkEventListener focusTracker) c_atk_add_focus_tracker;
	typedef void function(guint trackerId) c_atk_remove_focus_tracker;
	typedef void function(AtkEventListenerInit init) c_atk_focus_tracker_init;
	typedef void function(AtkObject* object) c_atk_focus_tracker_notify;
	typedef guint function(GSignalEmissionHook listener, gchar* eventType) c_atk_add_global_event_listener;
	typedef void function(guint listenerId) c_atk_remove_global_event_listener;
	typedef guint function(AtkKeySnoopFunc listener, gpointer data) c_atk_add_key_event_listener;
	typedef void function(guint listenerId) c_atk_remove_key_event_listener;
	typedef AtkObject* function() c_atk_get_root;
	typedef AtkObject* function() c_atk_get_focus_object;
	typedef gchar* function() c_atk_get_toolkit_name;
	typedef gchar* function() c_atk_get_toolkit_version;
	
	// atk.ValueAtk
	
	typedef void function(AtkValue* obj, GValue* value) c_atk_value_get_current_value;
	typedef void function(AtkValue* obj, GValue* value) c_atk_value_get_maximum_value;
	typedef void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_value;
	typedef gboolean function(AtkValue* obj, GValue* value) c_atk_value_set_current_value;
	typedef void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_increment;
}

// atk.Action

c_atk_action_do_action  atk_action_do_action;
c_atk_action_get_n_actions  atk_action_get_n_actions;
c_atk_action_get_description  atk_action_get_description;
c_atk_action_get_name  atk_action_get_name;
c_atk_action_get_localized_name  atk_action_get_localized_name;
c_atk_action_get_keybinding  atk_action_get_keybinding;
c_atk_action_set_description  atk_action_set_description;

// atk.Component

c_atk_component_add_focus_handler  atk_component_add_focus_handler;
c_atk_component_contains  atk_component_contains;
c_atk_component_get_extents  atk_component_get_extents;
c_atk_component_get_layer  atk_component_get_layer;
c_atk_component_get_mdi_zorder  atk_component_get_mdi_zorder;
c_atk_component_get_position  atk_component_get_position;
c_atk_component_get_size  atk_component_get_size;
c_atk_component_grab_focus  atk_component_grab_focus;
c_atk_component_ref_accessible_at_point  atk_component_ref_accessible_at_point;
c_atk_component_remove_focus_handler  atk_component_remove_focus_handler;
c_atk_component_set_extents  atk_component_set_extents;
c_atk_component_set_position  atk_component_set_position;
c_atk_component_set_size  atk_component_set_size;
c_atk_component_get_alpha  atk_component_get_alpha;

// atk.Document

c_atk_document_get_document_type  atk_document_get_document_type;
c_atk_document_get_document  atk_document_get_document;
c_atk_document_get_attribute_value  atk_document_get_attribute_value;
c_atk_document_set_attribute_value  atk_document_set_attribute_value;
c_atk_document_get_attributes  atk_document_get_attributes;
c_atk_document_get_locale  atk_document_get_locale;

// atk.EditableText

c_atk_editable_text_set_run_attributes  atk_editable_text_set_run_attributes;
c_atk_editable_text_set_text_contents  atk_editable_text_set_text_contents;
c_atk_editable_text_insert_text  atk_editable_text_insert_text;
c_atk_editable_text_copy_text  atk_editable_text_copy_text;
c_atk_editable_text_cut_text  atk_editable_text_cut_text;
c_atk_editable_text_delete_text  atk_editable_text_delete_text;
c_atk_editable_text_paste_text  atk_editable_text_paste_text;

// atk.GObjectAccessible

c_atk_gobject_accessible_for_object  atk_gobject_accessible_for_object;
c_atk_gobject_accessible_get_object  atk_gobject_accessible_get_object;

// atk.Hyperlink

c_atk_hyperlink_get_uri  atk_hyperlink_get_uri;
c_atk_hyperlink_get_object  atk_hyperlink_get_object;
c_atk_hyperlink_get_end_index  atk_hyperlink_get_end_index;
c_atk_hyperlink_get_start_index  atk_hyperlink_get_start_index;
c_atk_hyperlink_is_valid  atk_hyperlink_is_valid;
c_atk_hyperlink_is_inline  atk_hyperlink_is_inline;
c_atk_hyperlink_get_n_anchors  atk_hyperlink_get_n_anchors;
c_atk_hyperlink_is_selected_link  atk_hyperlink_is_selected_link;

// atk.Hypertext

c_atk_hypertext_get_link  atk_hypertext_get_link;
c_atk_hypertext_get_n_links  atk_hypertext_get_n_links;
c_atk_hypertext_get_link_index  atk_hypertext_get_link_index;

// atk.Image

c_atk_image_get_image_position  atk_image_get_image_position;
c_atk_image_get_image_description  atk_image_get_image_description;
c_atk_image_set_image_description  atk_image_set_image_description;
c_atk_image_get_image_size  atk_image_get_image_size;
c_atk_image_get_image_locale  atk_image_get_image_locale;

// atk.NoOpObject

c_atk_no_op_object_new  atk_no_op_object_new;

// atk.NoOpObjectFactory

c_atk_no_op_object_factory_new  atk_no_op_object_factory_new;

// atk.ObjectAtk

c_atk_role_register  atk_role_register;
c_atk_implementor_ref_accessible  atk_implementor_ref_accessible;
c_atk_object_get_name  atk_object_get_name;
c_atk_object_get_description  atk_object_get_description;
c_atk_object_get_parent  atk_object_get_parent;
c_atk_object_get_n_accessible_children  atk_object_get_n_accessible_children;
c_atk_object_ref_accessible_child  atk_object_ref_accessible_child;
c_atk_object_ref_relation_set  atk_object_ref_relation_set;
c_atk_object_get_layer  atk_object_get_layer;
c_atk_object_get_mdi_zorder  atk_object_get_mdi_zorder;
c_atk_object_get_role  atk_object_get_role;
c_atk_object_ref_state_set  atk_object_ref_state_set;
c_atk_object_get_index_in_parent  atk_object_get_index_in_parent;
c_atk_object_set_name  atk_object_set_name;
c_atk_object_set_description  atk_object_set_description;
c_atk_object_set_parent  atk_object_set_parent;
c_atk_object_set_role  atk_object_set_role;
c_atk_object_connect_property_change_handler  atk_object_connect_property_change_handler;
c_atk_object_remove_property_change_handler  atk_object_remove_property_change_handler;
c_atk_object_notify_state_change  atk_object_notify_state_change;
c_atk_object_initialize  atk_object_initialize;
c_atk_object_add_relationship  atk_object_add_relationship;
c_atk_object_remove_relationship  atk_object_remove_relationship;
c_atk_object_get_attributes  atk_object_get_attributes;
c_atk_role_get_name  atk_role_get_name;
c_atk_role_get_localized_name  atk_role_get_localized_name;
c_atk_role_for_name  atk_role_for_name;

// atk.ObjectFactory

c_atk_object_factory_create_accessible  atk_object_factory_create_accessible;
c_atk_object_factory_get_accessible_type  atk_object_factory_get_accessible_type;
c_atk_object_factory_invalidate  atk_object_factory_invalidate;

// atk.Registry

c_atk_registry_set_factory_type  atk_registry_set_factory_type;
c_atk_registry_get_factory_type  atk_registry_get_factory_type;
c_atk_registry_get_factory  atk_registry_get_factory;
c_atk_get_default_registry  atk_get_default_registry;

// atk.Relation

c_atk_relation_type_register  atk_relation_type_register;
c_atk_relation_type_get_name  atk_relation_type_get_name;
c_atk_relation_type_for_name  atk_relation_type_for_name;
c_atk_relation_new  atk_relation_new;
c_atk_relation_get_relation_type  atk_relation_get_relation_type;
c_atk_relation_get_target  atk_relation_get_target;
c_atk_relation_add_target  atk_relation_add_target;

// atk.RelationSet

c_atk_relation_set_new  atk_relation_set_new;
c_atk_relation_set_contains  atk_relation_set_contains;
c_atk_relation_set_remove  atk_relation_set_remove;
c_atk_relation_set_add  atk_relation_set_add;
c_atk_relation_set_get_n_relations  atk_relation_set_get_n_relations;
c_atk_relation_set_get_relation  atk_relation_set_get_relation;
c_atk_relation_set_get_relation_by_type  atk_relation_set_get_relation_by_type;
c_atk_relation_set_add_relation_by_type  atk_relation_set_add_relation_by_type;

// atk.Selection

c_atk_selection_add_selection  atk_selection_add_selection;
c_atk_selection_clear_selection  atk_selection_clear_selection;
c_atk_selection_ref_selection  atk_selection_ref_selection;
c_atk_selection_get_selection_count  atk_selection_get_selection_count;
c_atk_selection_is_child_selected  atk_selection_is_child_selected;
c_atk_selection_remove_selection  atk_selection_remove_selection;
c_atk_selection_select_all_selection  atk_selection_select_all_selection;

// atk.State

c_atk_state_type_register  atk_state_type_register;
c_atk_state_type_get_name  atk_state_type_get_name;
c_atk_state_type_for_name  atk_state_type_for_name;

// atk.StateSet

c_atk_state_set_new  atk_state_set_new;
c_atk_state_set_is_empty  atk_state_set_is_empty;
c_atk_state_set_add_state  atk_state_set_add_state;
c_atk_state_set_add_states  atk_state_set_add_states;
c_atk_state_set_clear_states  atk_state_set_clear_states;
c_atk_state_set_contains_state  atk_state_set_contains_state;
c_atk_state_set_contains_states  atk_state_set_contains_states;
c_atk_state_set_remove_state  atk_state_set_remove_state;
c_atk_state_set_and_sets  atk_state_set_and_sets;
c_atk_state_set_or_sets  atk_state_set_or_sets;
c_atk_state_set_xor_sets  atk_state_set_xor_sets;

// atk.StreamableContent

c_atk_streamable_content_get_n_mime_types  atk_streamable_content_get_n_mime_types;
c_atk_streamable_content_get_mime_type  atk_streamable_content_get_mime_type;
c_atk_streamable_content_get_stream  atk_streamable_content_get_stream;
c_atk_streamable_content_get_uri  atk_streamable_content_get_uri;

// atk.Table

c_atk_table_ref_at  atk_table_ref_at;
c_atk_table_get_index_at  atk_table_get_index_at;
c_atk_table_get_column_at_index  atk_table_get_column_at_index;
c_atk_table_get_row_at_index  atk_table_get_row_at_index;
c_atk_table_get_n_columns  atk_table_get_n_columns;
c_atk_table_get_n_rows  atk_table_get_n_rows;
c_atk_table_get_column_extent_at  atk_table_get_column_extent_at;
c_atk_table_get_row_extent_at  atk_table_get_row_extent_at;
c_atk_table_get_caption  atk_table_get_caption;
c_atk_table_get_column_description  atk_table_get_column_description;
c_atk_table_get_row_description  atk_table_get_row_description;
c_atk_table_get_column_header  atk_table_get_column_header;
c_atk_table_get_row_header  atk_table_get_row_header;
c_atk_table_get_summary  atk_table_get_summary;
c_atk_table_set_caption  atk_table_set_caption;
c_atk_table_set_row_description  atk_table_set_row_description;
c_atk_table_set_column_description  atk_table_set_column_description;
c_atk_table_set_row_header  atk_table_set_row_header;
c_atk_table_set_column_header  atk_table_set_column_header;
c_atk_table_set_summary  atk_table_set_summary;
c_atk_table_get_selected_columns  atk_table_get_selected_columns;
c_atk_table_get_selected_rows  atk_table_get_selected_rows;
c_atk_table_is_column_selected  atk_table_is_column_selected;
c_atk_table_is_row_selected  atk_table_is_row_selected;
c_atk_table_is_selected  atk_table_is_selected;
c_atk_table_add_column_selection  atk_table_add_column_selection;
c_atk_table_add_row_selection  atk_table_add_row_selection;
c_atk_table_remove_column_selection  atk_table_remove_column_selection;
c_atk_table_remove_row_selection  atk_table_remove_row_selection;

// atk.Text

c_atk_text_get_text  atk_text_get_text;
c_atk_text_get_character_at_offset  atk_text_get_character_at_offset;
c_atk_text_get_text_after_offset  atk_text_get_text_after_offset;
c_atk_text_get_text_at_offset  atk_text_get_text_at_offset;
c_atk_text_get_text_before_offset  atk_text_get_text_before_offset;
c_atk_text_get_caret_offset  atk_text_get_caret_offset;
c_atk_text_get_character_extents  atk_text_get_character_extents;
c_atk_text_get_run_attributes  atk_text_get_run_attributes;
c_atk_text_get_default_attributes  atk_text_get_default_attributes;
c_atk_text_get_character_count  atk_text_get_character_count;
c_atk_text_get_offset_at_point  atk_text_get_offset_at_point;
c_atk_text_get_bounded_ranges  atk_text_get_bounded_ranges;
c_atk_text_get_range_extents  atk_text_get_range_extents;
c_atk_text_free_ranges  atk_text_free_ranges;
c_atk_text_get_n_selections  atk_text_get_n_selections;
c_atk_text_get_selection  atk_text_get_selection;
c_atk_text_add_selection  atk_text_add_selection;
c_atk_text_remove_selection  atk_text_remove_selection;
c_atk_text_set_selection  atk_text_set_selection;
c_atk_text_set_caret_offset  atk_text_set_caret_offset;
c_atk_attribute_set_free  atk_attribute_set_free;
c_atk_text_attribute_register  atk_text_attribute_register;
c_atk_text_attribute_get_name  atk_text_attribute_get_name;
c_atk_text_attribute_for_name  atk_text_attribute_for_name;
c_atk_text_attribute_get_value  atk_text_attribute_get_value;

// atk.Util

c_atk_add_focus_tracker  atk_add_focus_tracker;
c_atk_remove_focus_tracker  atk_remove_focus_tracker;
c_atk_focus_tracker_init  atk_focus_tracker_init;
c_atk_focus_tracker_notify  atk_focus_tracker_notify;
c_atk_add_global_event_listener  atk_add_global_event_listener;
c_atk_remove_global_event_listener  atk_remove_global_event_listener;
c_atk_add_key_event_listener  atk_add_key_event_listener;
c_atk_remove_key_event_listener  atk_remove_key_event_listener;
c_atk_get_root  atk_get_root;
c_atk_get_focus_object  atk_get_focus_object;
c_atk_get_toolkit_name  atk_get_toolkit_name;
c_atk_get_toolkit_version  atk_get_toolkit_version;

// atk.ValueAtk

c_atk_value_get_current_value  atk_value_get_current_value;
c_atk_value_get_maximum_value  atk_value_get_maximum_value;
c_atk_value_get_minimum_value  atk_value_get_minimum_value;
c_atk_value_set_current_value  atk_value_set_current_value;
c_atk_value_get_minimum_increment  atk_value_get_minimum_increment;
