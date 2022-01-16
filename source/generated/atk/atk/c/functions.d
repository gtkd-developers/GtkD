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


module atk.c.functions;

import std.stdio;
import atk.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_ATK = ["libatk-1.0-0.dll;atk-1.0-0.dll;atk-1.dll"];
else version (OSX)
	static immutable LIBRARY_ATK = ["libatk-1.0.0.dylib"];
else
	static immutable LIBRARY_ATK = ["libatk-1.0.so.0"];

shared static this()
{
	// atk.Action

	Linker.link(atk_action_get_type, "atk_action_get_type", LIBRARY_ATK);
	Linker.link(atk_action_do_action, "atk_action_do_action", LIBRARY_ATK);
	Linker.link(atk_action_get_description, "atk_action_get_description", LIBRARY_ATK);
	Linker.link(atk_action_get_keybinding, "atk_action_get_keybinding", LIBRARY_ATK);
	Linker.link(atk_action_get_localized_name, "atk_action_get_localized_name", LIBRARY_ATK);
	Linker.link(atk_action_get_n_actions, "atk_action_get_n_actions", LIBRARY_ATK);
	Linker.link(atk_action_get_name, "atk_action_get_name", LIBRARY_ATK);
	Linker.link(atk_action_set_description, "atk_action_set_description", LIBRARY_ATK);

	// atk.Component

	Linker.link(atk_component_get_type, "atk_component_get_type", LIBRARY_ATK);
	Linker.link(atk_component_add_focus_handler, "atk_component_add_focus_handler", LIBRARY_ATK);
	Linker.link(atk_component_contains, "atk_component_contains", LIBRARY_ATK);
	Linker.link(atk_component_get_alpha, "atk_component_get_alpha", LIBRARY_ATK);
	Linker.link(atk_component_get_extents, "atk_component_get_extents", LIBRARY_ATK);
	Linker.link(atk_component_get_layer, "atk_component_get_layer", LIBRARY_ATK);
	Linker.link(atk_component_get_mdi_zorder, "atk_component_get_mdi_zorder", LIBRARY_ATK);
	Linker.link(atk_component_get_position, "atk_component_get_position", LIBRARY_ATK);
	Linker.link(atk_component_get_size, "atk_component_get_size", LIBRARY_ATK);
	Linker.link(atk_component_grab_focus, "atk_component_grab_focus", LIBRARY_ATK);
	Linker.link(atk_component_ref_accessible_at_point, "atk_component_ref_accessible_at_point", LIBRARY_ATK);
	Linker.link(atk_component_remove_focus_handler, "atk_component_remove_focus_handler", LIBRARY_ATK);
	Linker.link(atk_component_scroll_to, "atk_component_scroll_to", LIBRARY_ATK);
	Linker.link(atk_component_scroll_to_point, "atk_component_scroll_to_point", LIBRARY_ATK);
	Linker.link(atk_component_set_extents, "atk_component_set_extents", LIBRARY_ATK);
	Linker.link(atk_component_set_position, "atk_component_set_position", LIBRARY_ATK);
	Linker.link(atk_component_set_size, "atk_component_set_size", LIBRARY_ATK);

	// atk.Document

	Linker.link(atk_document_get_type, "atk_document_get_type", LIBRARY_ATK);
	Linker.link(atk_document_get_attribute_value, "atk_document_get_attribute_value", LIBRARY_ATK);
	Linker.link(atk_document_get_attributes, "atk_document_get_attributes", LIBRARY_ATK);
	Linker.link(atk_document_get_current_page_number, "atk_document_get_current_page_number", LIBRARY_ATK);
	Linker.link(atk_document_get_document, "atk_document_get_document", LIBRARY_ATK);
	Linker.link(atk_document_get_document_type, "atk_document_get_document_type", LIBRARY_ATK);
	Linker.link(atk_document_get_locale, "atk_document_get_locale", LIBRARY_ATK);
	Linker.link(atk_document_get_page_count, "atk_document_get_page_count", LIBRARY_ATK);
	Linker.link(atk_document_set_attribute_value, "atk_document_set_attribute_value", LIBRARY_ATK);

	// atk.EditableText

	Linker.link(atk_editable_text_get_type, "atk_editable_text_get_type", LIBRARY_ATK);
	Linker.link(atk_editable_text_copy_text, "atk_editable_text_copy_text", LIBRARY_ATK);
	Linker.link(atk_editable_text_cut_text, "atk_editable_text_cut_text", LIBRARY_ATK);
	Linker.link(atk_editable_text_delete_text, "atk_editable_text_delete_text", LIBRARY_ATK);
	Linker.link(atk_editable_text_insert_text, "atk_editable_text_insert_text", LIBRARY_ATK);
	Linker.link(atk_editable_text_paste_text, "atk_editable_text_paste_text", LIBRARY_ATK);
	Linker.link(atk_editable_text_set_run_attributes, "atk_editable_text_set_run_attributes", LIBRARY_ATK);
	Linker.link(atk_editable_text_set_text_contents, "atk_editable_text_set_text_contents", LIBRARY_ATK);

	// atk.GObjectAccessible

	Linker.link(atk_gobject_accessible_get_type, "atk_gobject_accessible_get_type", LIBRARY_ATK);
	Linker.link(atk_gobject_accessible_for_object, "atk_gobject_accessible_for_object", LIBRARY_ATK);
	Linker.link(atk_gobject_accessible_get_object, "atk_gobject_accessible_get_object", LIBRARY_ATK);

	// atk.Hyperlink

	Linker.link(atk_hyperlink_get_type, "atk_hyperlink_get_type", LIBRARY_ATK);
	Linker.link(atk_hyperlink_get_end_index, "atk_hyperlink_get_end_index", LIBRARY_ATK);
	Linker.link(atk_hyperlink_get_n_anchors, "atk_hyperlink_get_n_anchors", LIBRARY_ATK);
	Linker.link(atk_hyperlink_get_object, "atk_hyperlink_get_object", LIBRARY_ATK);
	Linker.link(atk_hyperlink_get_start_index, "atk_hyperlink_get_start_index", LIBRARY_ATK);
	Linker.link(atk_hyperlink_get_uri, "atk_hyperlink_get_uri", LIBRARY_ATK);
	Linker.link(atk_hyperlink_is_inline, "atk_hyperlink_is_inline", LIBRARY_ATK);
	Linker.link(atk_hyperlink_is_selected_link, "atk_hyperlink_is_selected_link", LIBRARY_ATK);
	Linker.link(atk_hyperlink_is_valid, "atk_hyperlink_is_valid", LIBRARY_ATK);

	// atk.HyperlinkImpl

	Linker.link(atk_hyperlink_impl_get_type, "atk_hyperlink_impl_get_type", LIBRARY_ATK);
	Linker.link(atk_hyperlink_impl_get_hyperlink, "atk_hyperlink_impl_get_hyperlink", LIBRARY_ATK);

	// atk.Hypertext

	Linker.link(atk_hypertext_get_type, "atk_hypertext_get_type", LIBRARY_ATK);
	Linker.link(atk_hypertext_get_link, "atk_hypertext_get_link", LIBRARY_ATK);
	Linker.link(atk_hypertext_get_link_index, "atk_hypertext_get_link_index", LIBRARY_ATK);
	Linker.link(atk_hypertext_get_n_links, "atk_hypertext_get_n_links", LIBRARY_ATK);

	// atk.Image

	Linker.link(atk_image_get_type, "atk_image_get_type", LIBRARY_ATK);
	Linker.link(atk_image_get_image_description, "atk_image_get_image_description", LIBRARY_ATK);
	Linker.link(atk_image_get_image_locale, "atk_image_get_image_locale", LIBRARY_ATK);
	Linker.link(atk_image_get_image_position, "atk_image_get_image_position", LIBRARY_ATK);
	Linker.link(atk_image_get_image_size, "atk_image_get_image_size", LIBRARY_ATK);
	Linker.link(atk_image_set_image_description, "atk_image_set_image_description", LIBRARY_ATK);

	// atk.Implementor

	Linker.link(atk_implementor_ref_accessible, "atk_implementor_ref_accessible", LIBRARY_ATK);
	Linker.link(atk_implementor_get_type, "atk_implementor_get_type", LIBRARY_ATK);

	// atk.Misc

	Linker.link(atk_misc_get_type, "atk_misc_get_type", LIBRARY_ATK);
	Linker.link(atk_misc_get_instance, "atk_misc_get_instance", LIBRARY_ATK);
	Linker.link(atk_misc_threads_enter, "atk_misc_threads_enter", LIBRARY_ATK);
	Linker.link(atk_misc_threads_leave, "atk_misc_threads_leave", LIBRARY_ATK);

	// atk.NoOpObject

	Linker.link(atk_no_op_object_get_type, "atk_no_op_object_get_type", LIBRARY_ATK);
	Linker.link(atk_no_op_object_new, "atk_no_op_object_new", LIBRARY_ATK);

	// atk.NoOpObjectFactory

	Linker.link(atk_no_op_object_factory_get_type, "atk_no_op_object_factory_get_type", LIBRARY_ATK);
	Linker.link(atk_no_op_object_factory_new, "atk_no_op_object_factory_new", LIBRARY_ATK);

	// atk.ObjectAtk

	Linker.link(atk_object_get_type, "atk_object_get_type", LIBRARY_ATK);
	Linker.link(atk_object_add_relationship, "atk_object_add_relationship", LIBRARY_ATK);
	Linker.link(atk_object_connect_property_change_handler, "atk_object_connect_property_change_handler", LIBRARY_ATK);
	Linker.link(atk_object_get_accessible_id, "atk_object_get_accessible_id", LIBRARY_ATK);
	Linker.link(atk_object_get_attributes, "atk_object_get_attributes", LIBRARY_ATK);
	Linker.link(atk_object_get_description, "atk_object_get_description", LIBRARY_ATK);
	Linker.link(atk_object_get_index_in_parent, "atk_object_get_index_in_parent", LIBRARY_ATK);
	Linker.link(atk_object_get_layer, "atk_object_get_layer", LIBRARY_ATK);
	Linker.link(atk_object_get_mdi_zorder, "atk_object_get_mdi_zorder", LIBRARY_ATK);
	Linker.link(atk_object_get_n_accessible_children, "atk_object_get_n_accessible_children", LIBRARY_ATK);
	Linker.link(atk_object_get_name, "atk_object_get_name", LIBRARY_ATK);
	Linker.link(atk_object_get_object_locale, "atk_object_get_object_locale", LIBRARY_ATK);
	Linker.link(atk_object_get_parent, "atk_object_get_parent", LIBRARY_ATK);
	Linker.link(atk_object_get_role, "atk_object_get_role", LIBRARY_ATK);
	Linker.link(atk_object_initialize, "atk_object_initialize", LIBRARY_ATK);
	Linker.link(atk_object_notify_state_change, "atk_object_notify_state_change", LIBRARY_ATK);
	Linker.link(atk_object_peek_parent, "atk_object_peek_parent", LIBRARY_ATK);
	Linker.link(atk_object_ref_accessible_child, "atk_object_ref_accessible_child", LIBRARY_ATK);
	Linker.link(atk_object_ref_relation_set, "atk_object_ref_relation_set", LIBRARY_ATK);
	Linker.link(atk_object_ref_state_set, "atk_object_ref_state_set", LIBRARY_ATK);
	Linker.link(atk_object_remove_property_change_handler, "atk_object_remove_property_change_handler", LIBRARY_ATK);
	Linker.link(atk_object_remove_relationship, "atk_object_remove_relationship", LIBRARY_ATK);
	Linker.link(atk_object_set_accessible_id, "atk_object_set_accessible_id", LIBRARY_ATK);
	Linker.link(atk_object_set_description, "atk_object_set_description", LIBRARY_ATK);
	Linker.link(atk_object_set_name, "atk_object_set_name", LIBRARY_ATK);
	Linker.link(atk_object_set_parent, "atk_object_set_parent", LIBRARY_ATK);
	Linker.link(atk_object_set_role, "atk_object_set_role", LIBRARY_ATK);
	Linker.link(atk_role_for_name, "atk_role_for_name", LIBRARY_ATK);
	Linker.link(atk_role_get_localized_name, "atk_role_get_localized_name", LIBRARY_ATK);
	Linker.link(atk_role_get_name, "atk_role_get_name", LIBRARY_ATK);
	Linker.link(atk_role_register, "atk_role_register", LIBRARY_ATK);

	// atk.ObjectFactory

	Linker.link(atk_object_factory_get_type, "atk_object_factory_get_type", LIBRARY_ATK);
	Linker.link(atk_object_factory_create_accessible, "atk_object_factory_create_accessible", LIBRARY_ATK);
	Linker.link(atk_object_factory_get_accessible_type, "atk_object_factory_get_accessible_type", LIBRARY_ATK);
	Linker.link(atk_object_factory_invalidate, "atk_object_factory_invalidate", LIBRARY_ATK);

	// atk.Plug

	Linker.link(atk_plug_get_type, "atk_plug_get_type", LIBRARY_ATK);
	Linker.link(atk_plug_new, "atk_plug_new", LIBRARY_ATK);
	Linker.link(atk_plug_get_id, "atk_plug_get_id", LIBRARY_ATK);
	Linker.link(atk_plug_set_child, "atk_plug_set_child", LIBRARY_ATK);

	// atk.Range

	Linker.link(atk_range_get_type, "atk_range_get_type", LIBRARY_ATK);
	Linker.link(atk_range_new, "atk_range_new", LIBRARY_ATK);
	Linker.link(atk_range_copy, "atk_range_copy", LIBRARY_ATK);
	Linker.link(atk_range_free, "atk_range_free", LIBRARY_ATK);
	Linker.link(atk_range_get_description, "atk_range_get_description", LIBRARY_ATK);
	Linker.link(atk_range_get_lower_limit, "atk_range_get_lower_limit", LIBRARY_ATK);
	Linker.link(atk_range_get_upper_limit, "atk_range_get_upper_limit", LIBRARY_ATK);

	// atk.Rectangle

	Linker.link(atk_rectangle_get_type, "atk_rectangle_get_type", LIBRARY_ATK);

	// atk.Registry

	Linker.link(atk_registry_get_type, "atk_registry_get_type", LIBRARY_ATK);
	Linker.link(atk_registry_get_factory, "atk_registry_get_factory", LIBRARY_ATK);
	Linker.link(atk_registry_get_factory_type, "atk_registry_get_factory_type", LIBRARY_ATK);
	Linker.link(atk_registry_set_factory_type, "atk_registry_set_factory_type", LIBRARY_ATK);
	Linker.link(atk_get_default_registry, "atk_get_default_registry", LIBRARY_ATK);

	// atk.Relation

	Linker.link(atk_relation_get_type, "atk_relation_get_type", LIBRARY_ATK);
	Linker.link(atk_relation_new, "atk_relation_new", LIBRARY_ATK);
	Linker.link(atk_relation_add_target, "atk_relation_add_target", LIBRARY_ATK);
	Linker.link(atk_relation_get_relation_type, "atk_relation_get_relation_type", LIBRARY_ATK);
	Linker.link(atk_relation_get_target, "atk_relation_get_target", LIBRARY_ATK);
	Linker.link(atk_relation_remove_target, "atk_relation_remove_target", LIBRARY_ATK);
	Linker.link(atk_relation_type_for_name, "atk_relation_type_for_name", LIBRARY_ATK);
	Linker.link(atk_relation_type_get_name, "atk_relation_type_get_name", LIBRARY_ATK);
	Linker.link(atk_relation_type_register, "atk_relation_type_register", LIBRARY_ATK);

	// atk.RelationSet

	Linker.link(atk_relation_set_get_type, "atk_relation_set_get_type", LIBRARY_ATK);
	Linker.link(atk_relation_set_new, "atk_relation_set_new", LIBRARY_ATK);
	Linker.link(atk_relation_set_add, "atk_relation_set_add", LIBRARY_ATK);
	Linker.link(atk_relation_set_add_relation_by_type, "atk_relation_set_add_relation_by_type", LIBRARY_ATK);
	Linker.link(atk_relation_set_contains, "atk_relation_set_contains", LIBRARY_ATK);
	Linker.link(atk_relation_set_contains_target, "atk_relation_set_contains_target", LIBRARY_ATK);
	Linker.link(atk_relation_set_get_n_relations, "atk_relation_set_get_n_relations", LIBRARY_ATK);
	Linker.link(atk_relation_set_get_relation, "atk_relation_set_get_relation", LIBRARY_ATK);
	Linker.link(atk_relation_set_get_relation_by_type, "atk_relation_set_get_relation_by_type", LIBRARY_ATK);
	Linker.link(atk_relation_set_remove, "atk_relation_set_remove", LIBRARY_ATK);

	// atk.Selection

	Linker.link(atk_selection_get_type, "atk_selection_get_type", LIBRARY_ATK);
	Linker.link(atk_selection_add_selection, "atk_selection_add_selection", LIBRARY_ATK);
	Linker.link(atk_selection_clear_selection, "atk_selection_clear_selection", LIBRARY_ATK);
	Linker.link(atk_selection_get_selection_count, "atk_selection_get_selection_count", LIBRARY_ATK);
	Linker.link(atk_selection_is_child_selected, "atk_selection_is_child_selected", LIBRARY_ATK);
	Linker.link(atk_selection_ref_selection, "atk_selection_ref_selection", LIBRARY_ATK);
	Linker.link(atk_selection_remove_selection, "atk_selection_remove_selection", LIBRARY_ATK);
	Linker.link(atk_selection_select_all_selection, "atk_selection_select_all_selection", LIBRARY_ATK);

	// atk.Socket

	Linker.link(atk_socket_get_type, "atk_socket_get_type", LIBRARY_ATK);
	Linker.link(atk_socket_new, "atk_socket_new", LIBRARY_ATK);
	Linker.link(atk_socket_embed, "atk_socket_embed", LIBRARY_ATK);
	Linker.link(atk_socket_is_occupied, "atk_socket_is_occupied", LIBRARY_ATK);

	// atk.StateSet

	Linker.link(atk_state_set_get_type, "atk_state_set_get_type", LIBRARY_ATK);
	Linker.link(atk_state_set_new, "atk_state_set_new", LIBRARY_ATK);
	Linker.link(atk_state_set_add_state, "atk_state_set_add_state", LIBRARY_ATK);
	Linker.link(atk_state_set_add_states, "atk_state_set_add_states", LIBRARY_ATK);
	Linker.link(atk_state_set_and_sets, "atk_state_set_and_sets", LIBRARY_ATK);
	Linker.link(atk_state_set_clear_states, "atk_state_set_clear_states", LIBRARY_ATK);
	Linker.link(atk_state_set_contains_state, "atk_state_set_contains_state", LIBRARY_ATK);
	Linker.link(atk_state_set_contains_states, "atk_state_set_contains_states", LIBRARY_ATK);
	Linker.link(atk_state_set_is_empty, "atk_state_set_is_empty", LIBRARY_ATK);
	Linker.link(atk_state_set_or_sets, "atk_state_set_or_sets", LIBRARY_ATK);
	Linker.link(atk_state_set_remove_state, "atk_state_set_remove_state", LIBRARY_ATK);
	Linker.link(atk_state_set_xor_sets, "atk_state_set_xor_sets", LIBRARY_ATK);

	// atk.StreamableContent

	Linker.link(atk_streamable_content_get_type, "atk_streamable_content_get_type", LIBRARY_ATK);
	Linker.link(atk_streamable_content_get_mime_type, "atk_streamable_content_get_mime_type", LIBRARY_ATK);
	Linker.link(atk_streamable_content_get_n_mime_types, "atk_streamable_content_get_n_mime_types", LIBRARY_ATK);
	Linker.link(atk_streamable_content_get_stream, "atk_streamable_content_get_stream", LIBRARY_ATK);
	Linker.link(atk_streamable_content_get_uri, "atk_streamable_content_get_uri", LIBRARY_ATK);

	// atk.Table

	Linker.link(atk_table_get_type, "atk_table_get_type", LIBRARY_ATK);
	Linker.link(atk_table_add_column_selection, "atk_table_add_column_selection", LIBRARY_ATK);
	Linker.link(atk_table_add_row_selection, "atk_table_add_row_selection", LIBRARY_ATK);
	Linker.link(atk_table_get_caption, "atk_table_get_caption", LIBRARY_ATK);
	Linker.link(atk_table_get_column_at_index, "atk_table_get_column_at_index", LIBRARY_ATK);
	Linker.link(atk_table_get_column_description, "atk_table_get_column_description", LIBRARY_ATK);
	Linker.link(atk_table_get_column_extent_at, "atk_table_get_column_extent_at", LIBRARY_ATK);
	Linker.link(atk_table_get_column_header, "atk_table_get_column_header", LIBRARY_ATK);
	Linker.link(atk_table_get_index_at, "atk_table_get_index_at", LIBRARY_ATK);
	Linker.link(atk_table_get_n_columns, "atk_table_get_n_columns", LIBRARY_ATK);
	Linker.link(atk_table_get_n_rows, "atk_table_get_n_rows", LIBRARY_ATK);
	Linker.link(atk_table_get_row_at_index, "atk_table_get_row_at_index", LIBRARY_ATK);
	Linker.link(atk_table_get_row_description, "atk_table_get_row_description", LIBRARY_ATK);
	Linker.link(atk_table_get_row_extent_at, "atk_table_get_row_extent_at", LIBRARY_ATK);
	Linker.link(atk_table_get_row_header, "atk_table_get_row_header", LIBRARY_ATK);
	Linker.link(atk_table_get_selected_columns, "atk_table_get_selected_columns", LIBRARY_ATK);
	Linker.link(atk_table_get_selected_rows, "atk_table_get_selected_rows", LIBRARY_ATK);
	Linker.link(atk_table_get_summary, "atk_table_get_summary", LIBRARY_ATK);
	Linker.link(atk_table_is_column_selected, "atk_table_is_column_selected", LIBRARY_ATK);
	Linker.link(atk_table_is_row_selected, "atk_table_is_row_selected", LIBRARY_ATK);
	Linker.link(atk_table_is_selected, "atk_table_is_selected", LIBRARY_ATK);
	Linker.link(atk_table_ref_at, "atk_table_ref_at", LIBRARY_ATK);
	Linker.link(atk_table_remove_column_selection, "atk_table_remove_column_selection", LIBRARY_ATK);
	Linker.link(atk_table_remove_row_selection, "atk_table_remove_row_selection", LIBRARY_ATK);
	Linker.link(atk_table_set_caption, "atk_table_set_caption", LIBRARY_ATK);
	Linker.link(atk_table_set_column_description, "atk_table_set_column_description", LIBRARY_ATK);
	Linker.link(atk_table_set_column_header, "atk_table_set_column_header", LIBRARY_ATK);
	Linker.link(atk_table_set_row_description, "atk_table_set_row_description", LIBRARY_ATK);
	Linker.link(atk_table_set_row_header, "atk_table_set_row_header", LIBRARY_ATK);
	Linker.link(atk_table_set_summary, "atk_table_set_summary", LIBRARY_ATK);

	// atk.TableCell

	Linker.link(atk_table_cell_get_type, "atk_table_cell_get_type", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_column_header_cells, "atk_table_cell_get_column_header_cells", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_column_span, "atk_table_cell_get_column_span", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_position, "atk_table_cell_get_position", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_row_column_span, "atk_table_cell_get_row_column_span", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_row_header_cells, "atk_table_cell_get_row_header_cells", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_row_span, "atk_table_cell_get_row_span", LIBRARY_ATK);
	Linker.link(atk_table_cell_get_table, "atk_table_cell_get_table", LIBRARY_ATK);

	// atk.Text

	Linker.link(atk_text_get_type, "atk_text_get_type", LIBRARY_ATK);
	Linker.link(atk_text_free_ranges, "atk_text_free_ranges", LIBRARY_ATK);
	Linker.link(atk_text_add_selection, "atk_text_add_selection", LIBRARY_ATK);
	Linker.link(atk_text_get_bounded_ranges, "atk_text_get_bounded_ranges", LIBRARY_ATK);
	Linker.link(atk_text_get_caret_offset, "atk_text_get_caret_offset", LIBRARY_ATK);
	Linker.link(atk_text_get_character_at_offset, "atk_text_get_character_at_offset", LIBRARY_ATK);
	Linker.link(atk_text_get_character_count, "atk_text_get_character_count", LIBRARY_ATK);
	Linker.link(atk_text_get_character_extents, "atk_text_get_character_extents", LIBRARY_ATK);
	Linker.link(atk_text_get_default_attributes, "atk_text_get_default_attributes", LIBRARY_ATK);
	Linker.link(atk_text_get_n_selections, "atk_text_get_n_selections", LIBRARY_ATK);
	Linker.link(atk_text_get_offset_at_point, "atk_text_get_offset_at_point", LIBRARY_ATK);
	Linker.link(atk_text_get_range_extents, "atk_text_get_range_extents", LIBRARY_ATK);
	Linker.link(atk_text_get_run_attributes, "atk_text_get_run_attributes", LIBRARY_ATK);
	Linker.link(atk_text_get_selection, "atk_text_get_selection", LIBRARY_ATK);
	Linker.link(atk_text_get_string_at_offset, "atk_text_get_string_at_offset", LIBRARY_ATK);
	Linker.link(atk_text_get_text, "atk_text_get_text", LIBRARY_ATK);
	Linker.link(atk_text_get_text_after_offset, "atk_text_get_text_after_offset", LIBRARY_ATK);
	Linker.link(atk_text_get_text_at_offset, "atk_text_get_text_at_offset", LIBRARY_ATK);
	Linker.link(atk_text_get_text_before_offset, "atk_text_get_text_before_offset", LIBRARY_ATK);
	Linker.link(atk_text_remove_selection, "atk_text_remove_selection", LIBRARY_ATK);
	Linker.link(atk_text_scroll_substring_to, "atk_text_scroll_substring_to", LIBRARY_ATK);
	Linker.link(atk_text_scroll_substring_to_point, "atk_text_scroll_substring_to_point", LIBRARY_ATK);
	Linker.link(atk_text_set_caret_offset, "atk_text_set_caret_offset", LIBRARY_ATK);
	Linker.link(atk_text_set_selection, "atk_text_set_selection", LIBRARY_ATK);
	Linker.link(atk_attribute_set_free, "atk_attribute_set_free", LIBRARY_ATK);
	Linker.link(atk_text_attribute_for_name, "atk_text_attribute_for_name", LIBRARY_ATK);
	Linker.link(atk_text_attribute_get_name, "atk_text_attribute_get_name", LIBRARY_ATK);
	Linker.link(atk_text_attribute_get_value, "atk_text_attribute_get_value", LIBRARY_ATK);
	Linker.link(atk_text_attribute_register, "atk_text_attribute_register", LIBRARY_ATK);

	// atk.TextRange

	Linker.link(atk_text_range_get_type, "atk_text_range_get_type", LIBRARY_ATK);

	// atk.Util

	Linker.link(atk_util_get_type, "atk_util_get_type", LIBRARY_ATK);
	Linker.link(atk_add_focus_tracker, "atk_add_focus_tracker", LIBRARY_ATK);
	Linker.link(atk_add_global_event_listener, "atk_add_global_event_listener", LIBRARY_ATK);
	Linker.link(atk_add_key_event_listener, "atk_add_key_event_listener", LIBRARY_ATK);
	Linker.link(atk_focus_tracker_init, "atk_focus_tracker_init", LIBRARY_ATK);
	Linker.link(atk_focus_tracker_notify, "atk_focus_tracker_notify", LIBRARY_ATK);
	Linker.link(atk_get_focus_object, "atk_get_focus_object", LIBRARY_ATK);
	Linker.link(atk_get_root, "atk_get_root", LIBRARY_ATK);
	Linker.link(atk_get_toolkit_name, "atk_get_toolkit_name", LIBRARY_ATK);
	Linker.link(atk_remove_focus_tracker, "atk_remove_focus_tracker", LIBRARY_ATK);
	Linker.link(atk_remove_global_event_listener, "atk_remove_global_event_listener", LIBRARY_ATK);
	Linker.link(atk_remove_key_event_listener, "atk_remove_key_event_listener", LIBRARY_ATK);

	// atk.Value

	Linker.link(atk_value_get_type, "atk_value_get_type", LIBRARY_ATK);
	Linker.link(atk_value_get_current_value, "atk_value_get_current_value", LIBRARY_ATK);
	Linker.link(atk_value_get_increment, "atk_value_get_increment", LIBRARY_ATK);
	Linker.link(atk_value_get_maximum_value, "atk_value_get_maximum_value", LIBRARY_ATK);
	Linker.link(atk_value_get_minimum_increment, "atk_value_get_minimum_increment", LIBRARY_ATK);
	Linker.link(atk_value_get_minimum_value, "atk_value_get_minimum_value", LIBRARY_ATK);
	Linker.link(atk_value_get_range, "atk_value_get_range", LIBRARY_ATK);
	Linker.link(atk_value_get_sub_ranges, "atk_value_get_sub_ranges", LIBRARY_ATK);
	Linker.link(atk_value_get_value_and_text, "atk_value_get_value_and_text", LIBRARY_ATK);
	Linker.link(atk_value_set_current_value, "atk_value_set_current_value", LIBRARY_ATK);
	Linker.link(atk_value_set_value, "atk_value_set_value", LIBRARY_ATK);

	// atk.Window

	Linker.link(atk_window_get_type, "atk_window_get_type", LIBRARY_ATK);

	// atk.Version

	Linker.link(atk_get_binary_age, "atk_get_binary_age", LIBRARY_ATK);
	Linker.link(atk_get_interface_age, "atk_get_interface_age", LIBRARY_ATK);
	Linker.link(atk_get_major_version, "atk_get_major_version", LIBRARY_ATK);
	Linker.link(atk_get_micro_version, "atk_get_micro_version", LIBRARY_ATK);
	Linker.link(atk_get_minor_version, "atk_get_minor_version", LIBRARY_ATK);
	Linker.link(atk_get_toolkit_version, "atk_get_toolkit_version", LIBRARY_ATK);
	Linker.link(atk_get_version, "atk_get_version", LIBRARY_ATK);

	// atk.State

	Linker.link(atk_state_type_for_name, "atk_state_type_for_name", LIBRARY_ATK);
	Linker.link(atk_state_type_get_name, "atk_state_type_get_name", LIBRARY_ATK);
	Linker.link(atk_state_type_register, "atk_state_type_register", LIBRARY_ATK);
}

__gshared extern(C)
{

	// atk.Action

	GType function() c_atk_action_get_type;
	int function(AtkAction* action, int i) c_atk_action_do_action;
	const(char)* function(AtkAction* action, int i) c_atk_action_get_description;
	const(char)* function(AtkAction* action, int i) c_atk_action_get_keybinding;
	const(char)* function(AtkAction* action, int i) c_atk_action_get_localized_name;
	int function(AtkAction* action) c_atk_action_get_n_actions;
	const(char)* function(AtkAction* action, int i) c_atk_action_get_name;
	int function(AtkAction* action, int i, const(char)* desc) c_atk_action_set_description;

	// atk.Component

	GType function() c_atk_component_get_type;
	uint function(AtkComponent* component, AtkFocusHandler handler) c_atk_component_add_focus_handler;
	int function(AtkComponent* component, int x, int y, AtkCoordType coordType) c_atk_component_contains;
	double function(AtkComponent* component) c_atk_component_get_alpha;
	void function(AtkComponent* component, int* x, int* y, int* width, int* height, AtkCoordType coordType) c_atk_component_get_extents;
	AtkLayer function(AtkComponent* component) c_atk_component_get_layer;
	int function(AtkComponent* component) c_atk_component_get_mdi_zorder;
	void function(AtkComponent* component, int* x, int* y, AtkCoordType coordType) c_atk_component_get_position;
	void function(AtkComponent* component, int* width, int* height) c_atk_component_get_size;
	int function(AtkComponent* component) c_atk_component_grab_focus;
	AtkObject* function(AtkComponent* component, int x, int y, AtkCoordType coordType) c_atk_component_ref_accessible_at_point;
	void function(AtkComponent* component, uint handlerId) c_atk_component_remove_focus_handler;
	int function(AtkComponent* component, AtkScrollType type) c_atk_component_scroll_to;
	int function(AtkComponent* component, AtkCoordType coords, int x, int y) c_atk_component_scroll_to_point;
	int function(AtkComponent* component, int x, int y, int width, int height, AtkCoordType coordType) c_atk_component_set_extents;
	int function(AtkComponent* component, int x, int y, AtkCoordType coordType) c_atk_component_set_position;
	int function(AtkComponent* component, int width, int height) c_atk_component_set_size;

	// atk.Document

	GType function() c_atk_document_get_type;
	const(char)* function(AtkDocument* document, const(char)* attributeName) c_atk_document_get_attribute_value;
	AtkAttributeSet* function(AtkDocument* document) c_atk_document_get_attributes;
	int function(AtkDocument* document) c_atk_document_get_current_page_number;
	void* function(AtkDocument* document) c_atk_document_get_document;
	const(char)* function(AtkDocument* document) c_atk_document_get_document_type;
	const(char)* function(AtkDocument* document) c_atk_document_get_locale;
	int function(AtkDocument* document) c_atk_document_get_page_count;
	int function(AtkDocument* document, const(char)* attributeName, const(char)* attributeValue) c_atk_document_set_attribute_value;

	// atk.EditableText

	GType function() c_atk_editable_text_get_type;
	void function(AtkEditableText* text, int startPos, int endPos) c_atk_editable_text_copy_text;
	void function(AtkEditableText* text, int startPos, int endPos) c_atk_editable_text_cut_text;
	void function(AtkEditableText* text, int startPos, int endPos) c_atk_editable_text_delete_text;
	void function(AtkEditableText* text, const(char)* string_, int length, int* position) c_atk_editable_text_insert_text;
	void function(AtkEditableText* text, int position) c_atk_editable_text_paste_text;
	int function(AtkEditableText* text, AtkAttributeSet* attribSet, int startOffset, int endOffset) c_atk_editable_text_set_run_attributes;
	void function(AtkEditableText* text, const(char)* string_) c_atk_editable_text_set_text_contents;

	// atk.GObjectAccessible

	GType function() c_atk_gobject_accessible_get_type;
	AtkObject* function(GObject* obj) c_atk_gobject_accessible_for_object;
	GObject* function(AtkGObjectAccessible* obj) c_atk_gobject_accessible_get_object;

	// atk.Hyperlink

	GType function() c_atk_hyperlink_get_type;
	int function(AtkHyperlink* link) c_atk_hyperlink_get_end_index;
	int function(AtkHyperlink* link) c_atk_hyperlink_get_n_anchors;
	AtkObject* function(AtkHyperlink* link, int i) c_atk_hyperlink_get_object;
	int function(AtkHyperlink* link) c_atk_hyperlink_get_start_index;
	char* function(AtkHyperlink* link, int i) c_atk_hyperlink_get_uri;
	int function(AtkHyperlink* link) c_atk_hyperlink_is_inline;
	int function(AtkHyperlink* link) c_atk_hyperlink_is_selected_link;
	int function(AtkHyperlink* link) c_atk_hyperlink_is_valid;

	// atk.HyperlinkImpl

	GType function() c_atk_hyperlink_impl_get_type;
	AtkHyperlink* function(AtkHyperlinkImpl* impl) c_atk_hyperlink_impl_get_hyperlink;

	// atk.Hypertext

	GType function() c_atk_hypertext_get_type;
	AtkHyperlink* function(AtkHypertext* hypertext, int linkIndex) c_atk_hypertext_get_link;
	int function(AtkHypertext* hypertext, int charIndex) c_atk_hypertext_get_link_index;
	int function(AtkHypertext* hypertext) c_atk_hypertext_get_n_links;

	// atk.Image

	GType function() c_atk_image_get_type;
	const(char)* function(AtkImage* image) c_atk_image_get_image_description;
	const(char)* function(AtkImage* image) c_atk_image_get_image_locale;
	void function(AtkImage* image, int* x, int* y, AtkCoordType coordType) c_atk_image_get_image_position;
	void function(AtkImage* image, int* width, int* height) c_atk_image_get_image_size;
	int function(AtkImage* image, const(char)* description) c_atk_image_set_image_description;

	// atk.Implementor

	AtkObject* function(AtkImplementor* implementor) c_atk_implementor_ref_accessible;
	GType function() c_atk_implementor_get_type;

	// atk.Misc

	GType function() c_atk_misc_get_type;
	AtkMisc* function() c_atk_misc_get_instance;
	void function(AtkMisc* misc) c_atk_misc_threads_enter;
	void function(AtkMisc* misc) c_atk_misc_threads_leave;

	// atk.NoOpObject

	GType function() c_atk_no_op_object_get_type;
	AtkObject* function(GObject* obj) c_atk_no_op_object_new;

	// atk.NoOpObjectFactory

	GType function() c_atk_no_op_object_factory_get_type;
	AtkObjectFactory* function() c_atk_no_op_object_factory_new;

	// atk.ObjectAtk

	GType function() c_atk_object_get_type;
	int function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_add_relationship;
	uint function(AtkObject* accessible, AtkPropertyChangeHandler* handler) c_atk_object_connect_property_change_handler;
	const(char)* function(AtkObject* accessible) c_atk_object_get_accessible_id;
	AtkAttributeSet* function(AtkObject* accessible) c_atk_object_get_attributes;
	const(char)* function(AtkObject* accessible) c_atk_object_get_description;
	int function(AtkObject* accessible) c_atk_object_get_index_in_parent;
	AtkLayer function(AtkObject* accessible) c_atk_object_get_layer;
	int function(AtkObject* accessible) c_atk_object_get_mdi_zorder;
	int function(AtkObject* accessible) c_atk_object_get_n_accessible_children;
	const(char)* function(AtkObject* accessible) c_atk_object_get_name;
	const(char)* function(AtkObject* accessible) c_atk_object_get_object_locale;
	AtkObject* function(AtkObject* accessible) c_atk_object_get_parent;
	AtkRole function(AtkObject* accessible) c_atk_object_get_role;
	void function(AtkObject* accessible, void* data) c_atk_object_initialize;
	void function(AtkObject* accessible, AtkState state, int value) c_atk_object_notify_state_change;
	AtkObject* function(AtkObject* accessible) c_atk_object_peek_parent;
	AtkObject* function(AtkObject* accessible, int i) c_atk_object_ref_accessible_child;
	AtkRelationSet* function(AtkObject* accessible) c_atk_object_ref_relation_set;
	AtkStateSet* function(AtkObject* accessible) c_atk_object_ref_state_set;
	void function(AtkObject* accessible, uint handlerId) c_atk_object_remove_property_change_handler;
	int function(AtkObject* object, AtkRelationType relationship, AtkObject* target) c_atk_object_remove_relationship;
	void function(AtkObject* accessible, const(char)* name) c_atk_object_set_accessible_id;
	void function(AtkObject* accessible, const(char)* description) c_atk_object_set_description;
	void function(AtkObject* accessible, const(char)* name) c_atk_object_set_name;
	void function(AtkObject* accessible, AtkObject* parent) c_atk_object_set_parent;
	void function(AtkObject* accessible, AtkRole role) c_atk_object_set_role;
	AtkRole function(const(char)* name) c_atk_role_for_name;
	const(char)* function(AtkRole role) c_atk_role_get_localized_name;
	const(char)* function(AtkRole role) c_atk_role_get_name;
	AtkRole function(const(char)* name) c_atk_role_register;

	// atk.ObjectFactory

	GType function() c_atk_object_factory_get_type;
	AtkObject* function(AtkObjectFactory* factory, GObject* obj) c_atk_object_factory_create_accessible;
	GType function(AtkObjectFactory* factory) c_atk_object_factory_get_accessible_type;
	void function(AtkObjectFactory* factory) c_atk_object_factory_invalidate;

	// atk.Plug

	GType function() c_atk_plug_get_type;
	AtkObject* function() c_atk_plug_new;
	char* function(AtkPlug* plug) c_atk_plug_get_id;
	void function(AtkPlug* plug, AtkObject* child) c_atk_plug_set_child;

	// atk.Range

	GType function() c_atk_range_get_type;
	AtkRange* function(double lowerLimit, double upperLimit, const(char)* description) c_atk_range_new;
	AtkRange* function(AtkRange* src) c_atk_range_copy;
	void function(AtkRange* range) c_atk_range_free;
	const(char)* function(AtkRange* range) c_atk_range_get_description;
	double function(AtkRange* range) c_atk_range_get_lower_limit;
	double function(AtkRange* range) c_atk_range_get_upper_limit;

	// atk.Rectangle

	GType function() c_atk_rectangle_get_type;

	// atk.Registry

	GType function() c_atk_registry_get_type;
	AtkObjectFactory* function(AtkRegistry* registry, GType type) c_atk_registry_get_factory;
	GType function(AtkRegistry* registry, GType type) c_atk_registry_get_factory_type;
	void function(AtkRegistry* registry, GType type, GType factoryType) c_atk_registry_set_factory_type;
	AtkRegistry* function() c_atk_get_default_registry;

	// atk.Relation

	GType function() c_atk_relation_get_type;
	AtkRelation* function(AtkObject** targets, int nTargets, AtkRelationType relationship) c_atk_relation_new;
	void function(AtkRelation* relation, AtkObject* target) c_atk_relation_add_target;
	AtkRelationType function(AtkRelation* relation) c_atk_relation_get_relation_type;
	GPtrArray* function(AtkRelation* relation) c_atk_relation_get_target;
	int function(AtkRelation* relation, AtkObject* target) c_atk_relation_remove_target;
	AtkRelationType function(const(char)* name) c_atk_relation_type_for_name;
	const(char)* function(AtkRelationType type) c_atk_relation_type_get_name;
	AtkRelationType function(const(char)* name) c_atk_relation_type_register;

	// atk.RelationSet

	GType function() c_atk_relation_set_get_type;
	AtkRelationSet* function() c_atk_relation_set_new;
	void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_add;
	void function(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target) c_atk_relation_set_add_relation_by_type;
	int function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_contains;
	int function(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target) c_atk_relation_set_contains_target;
	int function(AtkRelationSet* set) c_atk_relation_set_get_n_relations;
	AtkRelation* function(AtkRelationSet* set, int i) c_atk_relation_set_get_relation;
	AtkRelation* function(AtkRelationSet* set, AtkRelationType relationship) c_atk_relation_set_get_relation_by_type;
	void function(AtkRelationSet* set, AtkRelation* relation) c_atk_relation_set_remove;

	// atk.Selection

	GType function() c_atk_selection_get_type;
	int function(AtkSelection* selection, int i) c_atk_selection_add_selection;
	int function(AtkSelection* selection) c_atk_selection_clear_selection;
	int function(AtkSelection* selection) c_atk_selection_get_selection_count;
	int function(AtkSelection* selection, int i) c_atk_selection_is_child_selected;
	AtkObject* function(AtkSelection* selection, int i) c_atk_selection_ref_selection;
	int function(AtkSelection* selection, int i) c_atk_selection_remove_selection;
	int function(AtkSelection* selection) c_atk_selection_select_all_selection;

	// atk.Socket

	GType function() c_atk_socket_get_type;
	AtkObject* function() c_atk_socket_new;
	void function(AtkSocket* obj, const(char)* plugId) c_atk_socket_embed;
	int function(AtkSocket* obj) c_atk_socket_is_occupied;

	// atk.StateSet

	GType function() c_atk_state_set_get_type;
	AtkStateSet* function() c_atk_state_set_new;
	int function(AtkStateSet* set, AtkStateType type) c_atk_state_set_add_state;
	void function(AtkStateSet* set, AtkStateType* types, int nTypes) c_atk_state_set_add_states;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_and_sets;
	void function(AtkStateSet* set) c_atk_state_set_clear_states;
	int function(AtkStateSet* set, AtkStateType type) c_atk_state_set_contains_state;
	int function(AtkStateSet* set, AtkStateType* types, int nTypes) c_atk_state_set_contains_states;
	int function(AtkStateSet* set) c_atk_state_set_is_empty;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_or_sets;
	int function(AtkStateSet* set, AtkStateType type) c_atk_state_set_remove_state;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet) c_atk_state_set_xor_sets;

	// atk.StreamableContent

	GType function() c_atk_streamable_content_get_type;
	const(char)* function(AtkStreamableContent* streamable, int i) c_atk_streamable_content_get_mime_type;
	int function(AtkStreamableContent* streamable) c_atk_streamable_content_get_n_mime_types;
	GIOChannel* function(AtkStreamableContent* streamable, const(char)* mimeType) c_atk_streamable_content_get_stream;
	const(char)* function(AtkStreamableContent* streamable, const(char)* mimeType) c_atk_streamable_content_get_uri;

	// atk.Table

	GType function() c_atk_table_get_type;
	int function(AtkTable* table, int column) c_atk_table_add_column_selection;
	int function(AtkTable* table, int row) c_atk_table_add_row_selection;
	AtkObject* function(AtkTable* table) c_atk_table_get_caption;
	int function(AtkTable* table, int index) c_atk_table_get_column_at_index;
	const(char)* function(AtkTable* table, int column) c_atk_table_get_column_description;
	int function(AtkTable* table, int row, int column) c_atk_table_get_column_extent_at;
	AtkObject* function(AtkTable* table, int column) c_atk_table_get_column_header;
	int function(AtkTable* table, int row, int column) c_atk_table_get_index_at;
	int function(AtkTable* table) c_atk_table_get_n_columns;
	int function(AtkTable* table) c_atk_table_get_n_rows;
	int function(AtkTable* table, int index) c_atk_table_get_row_at_index;
	const(char)* function(AtkTable* table, int row) c_atk_table_get_row_description;
	int function(AtkTable* table, int row, int column) c_atk_table_get_row_extent_at;
	AtkObject* function(AtkTable* table, int row) c_atk_table_get_row_header;
	int function(AtkTable* table, int** selected) c_atk_table_get_selected_columns;
	int function(AtkTable* table, int** selected) c_atk_table_get_selected_rows;
	AtkObject* function(AtkTable* table) c_atk_table_get_summary;
	int function(AtkTable* table, int column) c_atk_table_is_column_selected;
	int function(AtkTable* table, int row) c_atk_table_is_row_selected;
	int function(AtkTable* table, int row, int column) c_atk_table_is_selected;
	AtkObject* function(AtkTable* table, int row, int column) c_atk_table_ref_at;
	int function(AtkTable* table, int column) c_atk_table_remove_column_selection;
	int function(AtkTable* table, int row) c_atk_table_remove_row_selection;
	void function(AtkTable* table, AtkObject* caption) c_atk_table_set_caption;
	void function(AtkTable* table, int column, const(char)* description) c_atk_table_set_column_description;
	void function(AtkTable* table, int column, AtkObject* header) c_atk_table_set_column_header;
	void function(AtkTable* table, int row, const(char)* description) c_atk_table_set_row_description;
	void function(AtkTable* table, int row, AtkObject* header) c_atk_table_set_row_header;
	void function(AtkTable* table, AtkObject* accessible) c_atk_table_set_summary;

	// atk.TableCell

	GType function() c_atk_table_cell_get_type;
	GPtrArray* function(AtkTableCell* cell) c_atk_table_cell_get_column_header_cells;
	int function(AtkTableCell* cell) c_atk_table_cell_get_column_span;
	int function(AtkTableCell* cell, int* row, int* column) c_atk_table_cell_get_position;
	int function(AtkTableCell* cell, int* row, int* column, int* rowSpan, int* columnSpan) c_atk_table_cell_get_row_column_span;
	GPtrArray* function(AtkTableCell* cell) c_atk_table_cell_get_row_header_cells;
	int function(AtkTableCell* cell) c_atk_table_cell_get_row_span;
	AtkObject* function(AtkTableCell* cell) c_atk_table_cell_get_table;

	// atk.Text

	GType function() c_atk_text_get_type;
	void function(AtkTextRange** ranges) c_atk_text_free_ranges;
	int function(AtkText* text, int startOffset, int endOffset) c_atk_text_add_selection;
	AtkTextRange** function(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType) c_atk_text_get_bounded_ranges;
	int function(AtkText* text) c_atk_text_get_caret_offset;
	dchar function(AtkText* text, int offset) c_atk_text_get_character_at_offset;
	int function(AtkText* text) c_atk_text_get_character_count;
	void function(AtkText* text, int offset, int* x, int* y, int* width, int* height, AtkCoordType coords) c_atk_text_get_character_extents;
	AtkAttributeSet* function(AtkText* text) c_atk_text_get_default_attributes;
	int function(AtkText* text) c_atk_text_get_n_selections;
	int function(AtkText* text, int x, int y, AtkCoordType coords) c_atk_text_get_offset_at_point;
	void function(AtkText* text, int startOffset, int endOffset, AtkCoordType coordType, AtkTextRectangle* rect) c_atk_text_get_range_extents;
	AtkAttributeSet* function(AtkText* text, int offset, int* startOffset, int* endOffset) c_atk_text_get_run_attributes;
	char* function(AtkText* text, int selectionNum, int* startOffset, int* endOffset) c_atk_text_get_selection;
	char* function(AtkText* text, int offset, AtkTextGranularity granularity, int* startOffset, int* endOffset) c_atk_text_get_string_at_offset;
	char* function(AtkText* text, int startOffset, int endOffset) c_atk_text_get_text;
	char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) c_atk_text_get_text_after_offset;
	char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) c_atk_text_get_text_at_offset;
	char* function(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset) c_atk_text_get_text_before_offset;
	int function(AtkText* text, int selectionNum) c_atk_text_remove_selection;
	int function(AtkText* text, int startOffset, int endOffset, AtkScrollType type) c_atk_text_scroll_substring_to;
	int function(AtkText* text, int startOffset, int endOffset, AtkCoordType coords, int x, int y) c_atk_text_scroll_substring_to_point;
	int function(AtkText* text, int offset) c_atk_text_set_caret_offset;
	int function(AtkText* text, int selectionNum, int startOffset, int endOffset) c_atk_text_set_selection;
	void function(AtkAttributeSet* attribSet) c_atk_attribute_set_free;
	AtkTextAttribute function(const(char)* name) c_atk_text_attribute_for_name;
	const(char)* function(AtkTextAttribute attr) c_atk_text_attribute_get_name;
	const(char)* function(AtkTextAttribute attr, int index) c_atk_text_attribute_get_value;
	AtkTextAttribute function(const(char)* name) c_atk_text_attribute_register;

	// atk.TextRange

	GType function() c_atk_text_range_get_type;

	// atk.Util

	GType function() c_atk_util_get_type;
	uint function(AtkEventListener focusTracker) c_atk_add_focus_tracker;
	uint function(GSignalEmissionHook listener, const(char)* eventType) c_atk_add_global_event_listener;
	uint function(AtkKeySnoopFunc listener, void* data) c_atk_add_key_event_listener;
	void function(AtkEventListenerInit init) c_atk_focus_tracker_init;
	void function(AtkObject* object) c_atk_focus_tracker_notify;
	AtkObject* function() c_atk_get_focus_object;
	AtkObject* function() c_atk_get_root;
	const(char)* function() c_atk_get_toolkit_name;
	void function(uint trackerId) c_atk_remove_focus_tracker;
	void function(uint listenerId) c_atk_remove_global_event_listener;
	void function(uint listenerId) c_atk_remove_key_event_listener;

	// atk.Value

	GType function() c_atk_value_get_type;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_current_value;
	double function(AtkValue* obj) c_atk_value_get_increment;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_maximum_value;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_increment;
	void function(AtkValue* obj, GValue* value) c_atk_value_get_minimum_value;
	AtkRange* function(AtkValue* obj) c_atk_value_get_range;
	GSList* function(AtkValue* obj) c_atk_value_get_sub_ranges;
	void function(AtkValue* obj, double* value, char** text) c_atk_value_get_value_and_text;
	int function(AtkValue* obj, GValue* value) c_atk_value_set_current_value;
	void function(AtkValue* obj, double newValue) c_atk_value_set_value;

	// atk.Window

	GType function() c_atk_window_get_type;

	// atk.Version

	uint function() c_atk_get_binary_age;
	uint function() c_atk_get_interface_age;
	uint function() c_atk_get_major_version;
	uint function() c_atk_get_micro_version;
	uint function() c_atk_get_minor_version;
	const(char)* function() c_atk_get_toolkit_version;
	const(char)* function() c_atk_get_version;

	// atk.State

	AtkStateType function(const(char)* name) c_atk_state_type_for_name;
	const(char)* function(AtkStateType type) c_atk_state_type_get_name;
	AtkStateType function(const(char)* name) c_atk_state_type_register;
}


// atk.Action

alias c_atk_action_get_type atk_action_get_type;
alias c_atk_action_do_action atk_action_do_action;
alias c_atk_action_get_description atk_action_get_description;
alias c_atk_action_get_keybinding atk_action_get_keybinding;
alias c_atk_action_get_localized_name atk_action_get_localized_name;
alias c_atk_action_get_n_actions atk_action_get_n_actions;
alias c_atk_action_get_name atk_action_get_name;
alias c_atk_action_set_description atk_action_set_description;

// atk.Component

alias c_atk_component_get_type atk_component_get_type;
alias c_atk_component_add_focus_handler atk_component_add_focus_handler;
alias c_atk_component_contains atk_component_contains;
alias c_atk_component_get_alpha atk_component_get_alpha;
alias c_atk_component_get_extents atk_component_get_extents;
alias c_atk_component_get_layer atk_component_get_layer;
alias c_atk_component_get_mdi_zorder atk_component_get_mdi_zorder;
alias c_atk_component_get_position atk_component_get_position;
alias c_atk_component_get_size atk_component_get_size;
alias c_atk_component_grab_focus atk_component_grab_focus;
alias c_atk_component_ref_accessible_at_point atk_component_ref_accessible_at_point;
alias c_atk_component_remove_focus_handler atk_component_remove_focus_handler;
alias c_atk_component_scroll_to atk_component_scroll_to;
alias c_atk_component_scroll_to_point atk_component_scroll_to_point;
alias c_atk_component_set_extents atk_component_set_extents;
alias c_atk_component_set_position atk_component_set_position;
alias c_atk_component_set_size atk_component_set_size;

// atk.Document

alias c_atk_document_get_type atk_document_get_type;
alias c_atk_document_get_attribute_value atk_document_get_attribute_value;
alias c_atk_document_get_attributes atk_document_get_attributes;
alias c_atk_document_get_current_page_number atk_document_get_current_page_number;
alias c_atk_document_get_document atk_document_get_document;
alias c_atk_document_get_document_type atk_document_get_document_type;
alias c_atk_document_get_locale atk_document_get_locale;
alias c_atk_document_get_page_count atk_document_get_page_count;
alias c_atk_document_set_attribute_value atk_document_set_attribute_value;

// atk.EditableText

alias c_atk_editable_text_get_type atk_editable_text_get_type;
alias c_atk_editable_text_copy_text atk_editable_text_copy_text;
alias c_atk_editable_text_cut_text atk_editable_text_cut_text;
alias c_atk_editable_text_delete_text atk_editable_text_delete_text;
alias c_atk_editable_text_insert_text atk_editable_text_insert_text;
alias c_atk_editable_text_paste_text atk_editable_text_paste_text;
alias c_atk_editable_text_set_run_attributes atk_editable_text_set_run_attributes;
alias c_atk_editable_text_set_text_contents atk_editable_text_set_text_contents;

// atk.GObjectAccessible

alias c_atk_gobject_accessible_get_type atk_gobject_accessible_get_type;
alias c_atk_gobject_accessible_for_object atk_gobject_accessible_for_object;
alias c_atk_gobject_accessible_get_object atk_gobject_accessible_get_object;

// atk.Hyperlink

alias c_atk_hyperlink_get_type atk_hyperlink_get_type;
alias c_atk_hyperlink_get_end_index atk_hyperlink_get_end_index;
alias c_atk_hyperlink_get_n_anchors atk_hyperlink_get_n_anchors;
alias c_atk_hyperlink_get_object atk_hyperlink_get_object;
alias c_atk_hyperlink_get_start_index atk_hyperlink_get_start_index;
alias c_atk_hyperlink_get_uri atk_hyperlink_get_uri;
alias c_atk_hyperlink_is_inline atk_hyperlink_is_inline;
alias c_atk_hyperlink_is_selected_link atk_hyperlink_is_selected_link;
alias c_atk_hyperlink_is_valid atk_hyperlink_is_valid;

// atk.HyperlinkImpl

alias c_atk_hyperlink_impl_get_type atk_hyperlink_impl_get_type;
alias c_atk_hyperlink_impl_get_hyperlink atk_hyperlink_impl_get_hyperlink;

// atk.Hypertext

alias c_atk_hypertext_get_type atk_hypertext_get_type;
alias c_atk_hypertext_get_link atk_hypertext_get_link;
alias c_atk_hypertext_get_link_index atk_hypertext_get_link_index;
alias c_atk_hypertext_get_n_links atk_hypertext_get_n_links;

// atk.Image

alias c_atk_image_get_type atk_image_get_type;
alias c_atk_image_get_image_description atk_image_get_image_description;
alias c_atk_image_get_image_locale atk_image_get_image_locale;
alias c_atk_image_get_image_position atk_image_get_image_position;
alias c_atk_image_get_image_size atk_image_get_image_size;
alias c_atk_image_set_image_description atk_image_set_image_description;

// atk.Implementor

alias c_atk_implementor_ref_accessible atk_implementor_ref_accessible;
alias c_atk_implementor_get_type atk_implementor_get_type;

// atk.Misc

alias c_atk_misc_get_type atk_misc_get_type;
alias c_atk_misc_get_instance atk_misc_get_instance;
alias c_atk_misc_threads_enter atk_misc_threads_enter;
alias c_atk_misc_threads_leave atk_misc_threads_leave;

// atk.NoOpObject

alias c_atk_no_op_object_get_type atk_no_op_object_get_type;
alias c_atk_no_op_object_new atk_no_op_object_new;

// atk.NoOpObjectFactory

alias c_atk_no_op_object_factory_get_type atk_no_op_object_factory_get_type;
alias c_atk_no_op_object_factory_new atk_no_op_object_factory_new;

// atk.ObjectAtk

alias c_atk_object_get_type atk_object_get_type;
alias c_atk_object_add_relationship atk_object_add_relationship;
alias c_atk_object_connect_property_change_handler atk_object_connect_property_change_handler;
alias c_atk_object_get_accessible_id atk_object_get_accessible_id;
alias c_atk_object_get_attributes atk_object_get_attributes;
alias c_atk_object_get_description atk_object_get_description;
alias c_atk_object_get_index_in_parent atk_object_get_index_in_parent;
alias c_atk_object_get_layer atk_object_get_layer;
alias c_atk_object_get_mdi_zorder atk_object_get_mdi_zorder;
alias c_atk_object_get_n_accessible_children atk_object_get_n_accessible_children;
alias c_atk_object_get_name atk_object_get_name;
alias c_atk_object_get_object_locale atk_object_get_object_locale;
alias c_atk_object_get_parent atk_object_get_parent;
alias c_atk_object_get_role atk_object_get_role;
alias c_atk_object_initialize atk_object_initialize;
alias c_atk_object_notify_state_change atk_object_notify_state_change;
alias c_atk_object_peek_parent atk_object_peek_parent;
alias c_atk_object_ref_accessible_child atk_object_ref_accessible_child;
alias c_atk_object_ref_relation_set atk_object_ref_relation_set;
alias c_atk_object_ref_state_set atk_object_ref_state_set;
alias c_atk_object_remove_property_change_handler atk_object_remove_property_change_handler;
alias c_atk_object_remove_relationship atk_object_remove_relationship;
alias c_atk_object_set_accessible_id atk_object_set_accessible_id;
alias c_atk_object_set_description atk_object_set_description;
alias c_atk_object_set_name atk_object_set_name;
alias c_atk_object_set_parent atk_object_set_parent;
alias c_atk_object_set_role atk_object_set_role;
alias c_atk_role_for_name atk_role_for_name;
alias c_atk_role_get_localized_name atk_role_get_localized_name;
alias c_atk_role_get_name atk_role_get_name;
alias c_atk_role_register atk_role_register;

// atk.ObjectFactory

alias c_atk_object_factory_get_type atk_object_factory_get_type;
alias c_atk_object_factory_create_accessible atk_object_factory_create_accessible;
alias c_atk_object_factory_get_accessible_type atk_object_factory_get_accessible_type;
alias c_atk_object_factory_invalidate atk_object_factory_invalidate;

// atk.Plug

alias c_atk_plug_get_type atk_plug_get_type;
alias c_atk_plug_new atk_plug_new;
alias c_atk_plug_get_id atk_plug_get_id;
alias c_atk_plug_set_child atk_plug_set_child;

// atk.Range

alias c_atk_range_get_type atk_range_get_type;
alias c_atk_range_new atk_range_new;
alias c_atk_range_copy atk_range_copy;
alias c_atk_range_free atk_range_free;
alias c_atk_range_get_description atk_range_get_description;
alias c_atk_range_get_lower_limit atk_range_get_lower_limit;
alias c_atk_range_get_upper_limit atk_range_get_upper_limit;

// atk.Rectangle

alias c_atk_rectangle_get_type atk_rectangle_get_type;

// atk.Registry

alias c_atk_registry_get_type atk_registry_get_type;
alias c_atk_registry_get_factory atk_registry_get_factory;
alias c_atk_registry_get_factory_type atk_registry_get_factory_type;
alias c_atk_registry_set_factory_type atk_registry_set_factory_type;
alias c_atk_get_default_registry atk_get_default_registry;

// atk.Relation

alias c_atk_relation_get_type atk_relation_get_type;
alias c_atk_relation_new atk_relation_new;
alias c_atk_relation_add_target atk_relation_add_target;
alias c_atk_relation_get_relation_type atk_relation_get_relation_type;
alias c_atk_relation_get_target atk_relation_get_target;
alias c_atk_relation_remove_target atk_relation_remove_target;
alias c_atk_relation_type_for_name atk_relation_type_for_name;
alias c_atk_relation_type_get_name atk_relation_type_get_name;
alias c_atk_relation_type_register atk_relation_type_register;

// atk.RelationSet

alias c_atk_relation_set_get_type atk_relation_set_get_type;
alias c_atk_relation_set_new atk_relation_set_new;
alias c_atk_relation_set_add atk_relation_set_add;
alias c_atk_relation_set_add_relation_by_type atk_relation_set_add_relation_by_type;
alias c_atk_relation_set_contains atk_relation_set_contains;
alias c_atk_relation_set_contains_target atk_relation_set_contains_target;
alias c_atk_relation_set_get_n_relations atk_relation_set_get_n_relations;
alias c_atk_relation_set_get_relation atk_relation_set_get_relation;
alias c_atk_relation_set_get_relation_by_type atk_relation_set_get_relation_by_type;
alias c_atk_relation_set_remove atk_relation_set_remove;

// atk.Selection

alias c_atk_selection_get_type atk_selection_get_type;
alias c_atk_selection_add_selection atk_selection_add_selection;
alias c_atk_selection_clear_selection atk_selection_clear_selection;
alias c_atk_selection_get_selection_count atk_selection_get_selection_count;
alias c_atk_selection_is_child_selected atk_selection_is_child_selected;
alias c_atk_selection_ref_selection atk_selection_ref_selection;
alias c_atk_selection_remove_selection atk_selection_remove_selection;
alias c_atk_selection_select_all_selection atk_selection_select_all_selection;

// atk.Socket

alias c_atk_socket_get_type atk_socket_get_type;
alias c_atk_socket_new atk_socket_new;
alias c_atk_socket_embed atk_socket_embed;
alias c_atk_socket_is_occupied atk_socket_is_occupied;

// atk.StateSet

alias c_atk_state_set_get_type atk_state_set_get_type;
alias c_atk_state_set_new atk_state_set_new;
alias c_atk_state_set_add_state atk_state_set_add_state;
alias c_atk_state_set_add_states atk_state_set_add_states;
alias c_atk_state_set_and_sets atk_state_set_and_sets;
alias c_atk_state_set_clear_states atk_state_set_clear_states;
alias c_atk_state_set_contains_state atk_state_set_contains_state;
alias c_atk_state_set_contains_states atk_state_set_contains_states;
alias c_atk_state_set_is_empty atk_state_set_is_empty;
alias c_atk_state_set_or_sets atk_state_set_or_sets;
alias c_atk_state_set_remove_state atk_state_set_remove_state;
alias c_atk_state_set_xor_sets atk_state_set_xor_sets;

// atk.StreamableContent

alias c_atk_streamable_content_get_type atk_streamable_content_get_type;
alias c_atk_streamable_content_get_mime_type atk_streamable_content_get_mime_type;
alias c_atk_streamable_content_get_n_mime_types atk_streamable_content_get_n_mime_types;
alias c_atk_streamable_content_get_stream atk_streamable_content_get_stream;
alias c_atk_streamable_content_get_uri atk_streamable_content_get_uri;

// atk.Table

alias c_atk_table_get_type atk_table_get_type;
alias c_atk_table_add_column_selection atk_table_add_column_selection;
alias c_atk_table_add_row_selection atk_table_add_row_selection;
alias c_atk_table_get_caption atk_table_get_caption;
alias c_atk_table_get_column_at_index atk_table_get_column_at_index;
alias c_atk_table_get_column_description atk_table_get_column_description;
alias c_atk_table_get_column_extent_at atk_table_get_column_extent_at;
alias c_atk_table_get_column_header atk_table_get_column_header;
alias c_atk_table_get_index_at atk_table_get_index_at;
alias c_atk_table_get_n_columns atk_table_get_n_columns;
alias c_atk_table_get_n_rows atk_table_get_n_rows;
alias c_atk_table_get_row_at_index atk_table_get_row_at_index;
alias c_atk_table_get_row_description atk_table_get_row_description;
alias c_atk_table_get_row_extent_at atk_table_get_row_extent_at;
alias c_atk_table_get_row_header atk_table_get_row_header;
alias c_atk_table_get_selected_columns atk_table_get_selected_columns;
alias c_atk_table_get_selected_rows atk_table_get_selected_rows;
alias c_atk_table_get_summary atk_table_get_summary;
alias c_atk_table_is_column_selected atk_table_is_column_selected;
alias c_atk_table_is_row_selected atk_table_is_row_selected;
alias c_atk_table_is_selected atk_table_is_selected;
alias c_atk_table_ref_at atk_table_ref_at;
alias c_atk_table_remove_column_selection atk_table_remove_column_selection;
alias c_atk_table_remove_row_selection atk_table_remove_row_selection;
alias c_atk_table_set_caption atk_table_set_caption;
alias c_atk_table_set_column_description atk_table_set_column_description;
alias c_atk_table_set_column_header atk_table_set_column_header;
alias c_atk_table_set_row_description atk_table_set_row_description;
alias c_atk_table_set_row_header atk_table_set_row_header;
alias c_atk_table_set_summary atk_table_set_summary;

// atk.TableCell

alias c_atk_table_cell_get_type atk_table_cell_get_type;
alias c_atk_table_cell_get_column_header_cells atk_table_cell_get_column_header_cells;
alias c_atk_table_cell_get_column_span atk_table_cell_get_column_span;
alias c_atk_table_cell_get_position atk_table_cell_get_position;
alias c_atk_table_cell_get_row_column_span atk_table_cell_get_row_column_span;
alias c_atk_table_cell_get_row_header_cells atk_table_cell_get_row_header_cells;
alias c_atk_table_cell_get_row_span atk_table_cell_get_row_span;
alias c_atk_table_cell_get_table atk_table_cell_get_table;

// atk.Text

alias c_atk_text_get_type atk_text_get_type;
alias c_atk_text_free_ranges atk_text_free_ranges;
alias c_atk_text_add_selection atk_text_add_selection;
alias c_atk_text_get_bounded_ranges atk_text_get_bounded_ranges;
alias c_atk_text_get_caret_offset atk_text_get_caret_offset;
alias c_atk_text_get_character_at_offset atk_text_get_character_at_offset;
alias c_atk_text_get_character_count atk_text_get_character_count;
alias c_atk_text_get_character_extents atk_text_get_character_extents;
alias c_atk_text_get_default_attributes atk_text_get_default_attributes;
alias c_atk_text_get_n_selections atk_text_get_n_selections;
alias c_atk_text_get_offset_at_point atk_text_get_offset_at_point;
alias c_atk_text_get_range_extents atk_text_get_range_extents;
alias c_atk_text_get_run_attributes atk_text_get_run_attributes;
alias c_atk_text_get_selection atk_text_get_selection;
alias c_atk_text_get_string_at_offset atk_text_get_string_at_offset;
alias c_atk_text_get_text atk_text_get_text;
alias c_atk_text_get_text_after_offset atk_text_get_text_after_offset;
alias c_atk_text_get_text_at_offset atk_text_get_text_at_offset;
alias c_atk_text_get_text_before_offset atk_text_get_text_before_offset;
alias c_atk_text_remove_selection atk_text_remove_selection;
alias c_atk_text_scroll_substring_to atk_text_scroll_substring_to;
alias c_atk_text_scroll_substring_to_point atk_text_scroll_substring_to_point;
alias c_atk_text_set_caret_offset atk_text_set_caret_offset;
alias c_atk_text_set_selection atk_text_set_selection;
alias c_atk_attribute_set_free atk_attribute_set_free;
alias c_atk_text_attribute_for_name atk_text_attribute_for_name;
alias c_atk_text_attribute_get_name atk_text_attribute_get_name;
alias c_atk_text_attribute_get_value atk_text_attribute_get_value;
alias c_atk_text_attribute_register atk_text_attribute_register;

// atk.TextRange

alias c_atk_text_range_get_type atk_text_range_get_type;

// atk.Util

alias c_atk_util_get_type atk_util_get_type;
alias c_atk_add_focus_tracker atk_add_focus_tracker;
alias c_atk_add_global_event_listener atk_add_global_event_listener;
alias c_atk_add_key_event_listener atk_add_key_event_listener;
alias c_atk_focus_tracker_init atk_focus_tracker_init;
alias c_atk_focus_tracker_notify atk_focus_tracker_notify;
alias c_atk_get_focus_object atk_get_focus_object;
alias c_atk_get_root atk_get_root;
alias c_atk_get_toolkit_name atk_get_toolkit_name;
alias c_atk_remove_focus_tracker atk_remove_focus_tracker;
alias c_atk_remove_global_event_listener atk_remove_global_event_listener;
alias c_atk_remove_key_event_listener atk_remove_key_event_listener;

// atk.Value

alias c_atk_value_get_type atk_value_get_type;
alias c_atk_value_get_current_value atk_value_get_current_value;
alias c_atk_value_get_increment atk_value_get_increment;
alias c_atk_value_get_maximum_value atk_value_get_maximum_value;
alias c_atk_value_get_minimum_increment atk_value_get_minimum_increment;
alias c_atk_value_get_minimum_value atk_value_get_minimum_value;
alias c_atk_value_get_range atk_value_get_range;
alias c_atk_value_get_sub_ranges atk_value_get_sub_ranges;
alias c_atk_value_get_value_and_text atk_value_get_value_and_text;
alias c_atk_value_set_current_value atk_value_set_current_value;
alias c_atk_value_set_value atk_value_set_value;

// atk.Window

alias c_atk_window_get_type atk_window_get_type;

// atk.Version

alias c_atk_get_binary_age atk_get_binary_age;
alias c_atk_get_interface_age atk_get_interface_age;
alias c_atk_get_major_version atk_get_major_version;
alias c_atk_get_micro_version atk_get_micro_version;
alias c_atk_get_minor_version atk_get_minor_version;
alias c_atk_get_toolkit_version atk_get_toolkit_version;
alias c_atk_get_version atk_get_version;

// atk.State

alias c_atk_state_type_for_name atk_state_type_for_name;
alias c_atk_state_type_get_name atk_state_type_get_name;
alias c_atk_state_type_register atk_state_type_register;
