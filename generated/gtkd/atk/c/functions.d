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
version (Windows)
	static immutable LIBRARY_ATK = ["libatk-1.0-0.dll;atk-1.0-0.dll;atk-1.dll"];
else version (OSX)
	static immutable LIBRARY_ATK = ["libatk-1.0.0.dylib"];
else
	static immutable LIBRARY_ATK = ["libatk-1.0.so.0"];

__gshared extern(C)
{

	// atk.Action

	GType atk_action_get_type();
	int atk_action_do_action(AtkAction* action, int i);
	const(char)* atk_action_get_description(AtkAction* action, int i);
	const(char)* atk_action_get_keybinding(AtkAction* action, int i);
	const(char)* atk_action_get_localized_name(AtkAction* action, int i);
	int atk_action_get_n_actions(AtkAction* action);
	const(char)* atk_action_get_name(AtkAction* action, int i);
	int atk_action_set_description(AtkAction* action, int i, const(char)* desc);

	// atk.Component

	GType atk_component_get_type();
	uint atk_component_add_focus_handler(AtkComponent* component, AtkFocusHandler handler);
	int atk_component_contains(AtkComponent* component, int x, int y, AtkCoordType coordType);
	double atk_component_get_alpha(AtkComponent* component);
	void atk_component_get_extents(AtkComponent* component, int* x, int* y, int* width, int* height, AtkCoordType coordType);
	AtkLayer atk_component_get_layer(AtkComponent* component);
	int atk_component_get_mdi_zorder(AtkComponent* component);
	void atk_component_get_position(AtkComponent* component, int* x, int* y, AtkCoordType coordType);
	void atk_component_get_size(AtkComponent* component, int* width, int* height);
	int atk_component_grab_focus(AtkComponent* component);
	AtkObject* atk_component_ref_accessible_at_point(AtkComponent* component, int x, int y, AtkCoordType coordType);
	void atk_component_remove_focus_handler(AtkComponent* component, uint handlerId);
	int atk_component_scroll_to(AtkComponent* component, AtkScrollType type);
	int atk_component_scroll_to_point(AtkComponent* component, AtkCoordType coords, int x, int y);
	int atk_component_set_extents(AtkComponent* component, int x, int y, int width, int height, AtkCoordType coordType);
	int atk_component_set_position(AtkComponent* component, int x, int y, AtkCoordType coordType);
	int atk_component_set_size(AtkComponent* component, int width, int height);

	// atk.Document

	GType atk_document_get_type();
	const(char)* atk_document_get_attribute_value(AtkDocument* document, const(char)* attributeName);
	AtkAttributeSet* atk_document_get_attributes(AtkDocument* document);
	int atk_document_get_current_page_number(AtkDocument* document);
	void* atk_document_get_document(AtkDocument* document);
	const(char)* atk_document_get_document_type(AtkDocument* document);
	const(char)* atk_document_get_locale(AtkDocument* document);
	int atk_document_get_page_count(AtkDocument* document);
	int atk_document_set_attribute_value(AtkDocument* document, const(char)* attributeName, const(char)* attributeValue);

	// atk.EditableText

	GType atk_editable_text_get_type();
	void atk_editable_text_copy_text(AtkEditableText* text, int startPos, int endPos);
	void atk_editable_text_cut_text(AtkEditableText* text, int startPos, int endPos);
	void atk_editable_text_delete_text(AtkEditableText* text, int startPos, int endPos);
	void atk_editable_text_insert_text(AtkEditableText* text, const(char)* string_, int length, int* position);
	void atk_editable_text_paste_text(AtkEditableText* text, int position);
	int atk_editable_text_set_run_attributes(AtkEditableText* text, AtkAttributeSet* attribSet, int startOffset, int endOffset);
	void atk_editable_text_set_text_contents(AtkEditableText* text, const(char)* string_);

	// atk.GObjectAccessible

	GType atk_gobject_accessible_get_type();
	AtkObject* atk_gobject_accessible_for_object(GObject* obj);
	GObject* atk_gobject_accessible_get_object(AtkGObjectAccessible* obj);

	// atk.Hyperlink

	GType atk_hyperlink_get_type();
	int atk_hyperlink_get_end_index(AtkHyperlink* link);
	int atk_hyperlink_get_n_anchors(AtkHyperlink* link);
	AtkObject* atk_hyperlink_get_object(AtkHyperlink* link, int i);
	int atk_hyperlink_get_start_index(AtkHyperlink* link);
	char* atk_hyperlink_get_uri(AtkHyperlink* link, int i);
	int atk_hyperlink_is_inline(AtkHyperlink* link);
	int atk_hyperlink_is_selected_link(AtkHyperlink* link);
	int atk_hyperlink_is_valid(AtkHyperlink* link);

	// atk.HyperlinkImpl

	GType atk_hyperlink_impl_get_type();
	AtkHyperlink* atk_hyperlink_impl_get_hyperlink(AtkHyperlinkImpl* impl);

	// atk.Hypertext

	GType atk_hypertext_get_type();
	AtkHyperlink* atk_hypertext_get_link(AtkHypertext* hypertext, int linkIndex);
	int atk_hypertext_get_link_index(AtkHypertext* hypertext, int charIndex);
	int atk_hypertext_get_n_links(AtkHypertext* hypertext);

	// atk.Image

	GType atk_image_get_type();
	const(char)* atk_image_get_image_description(AtkImage* image);
	const(char)* atk_image_get_image_locale(AtkImage* image);
	void atk_image_get_image_position(AtkImage* image, int* x, int* y, AtkCoordType coordType);
	void atk_image_get_image_size(AtkImage* image, int* width, int* height);
	int atk_image_set_image_description(AtkImage* image, const(char)* description);

	// atk.Implementor

	AtkObject* atk_implementor_ref_accessible(AtkImplementor* implementor);
	GType atk_implementor_get_type();

	// atk.Misc

	GType atk_misc_get_type();
	AtkMisc* atk_misc_get_instance();
	void atk_misc_threads_enter(AtkMisc* misc);
	void atk_misc_threads_leave(AtkMisc* misc);

	// atk.NoOpObject

	GType atk_no_op_object_get_type();
	AtkObject* atk_no_op_object_new(GObject* obj);

	// atk.NoOpObjectFactory

	GType atk_no_op_object_factory_get_type();
	AtkObjectFactory* atk_no_op_object_factory_new();

	// atk.ObjectAtk

	GType atk_object_get_type();
	int atk_object_add_relationship(AtkObject* object, AtkRelationType relationship, AtkObject* target);
	uint atk_object_connect_property_change_handler(AtkObject* accessible, AtkPropertyChangeHandler* handler);
	const(char)* atk_object_get_accessible_id(AtkObject* accessible);
	AtkAttributeSet* atk_object_get_attributes(AtkObject* accessible);
	const(char)* atk_object_get_description(AtkObject* accessible);
	int atk_object_get_index_in_parent(AtkObject* accessible);
	AtkLayer atk_object_get_layer(AtkObject* accessible);
	int atk_object_get_mdi_zorder(AtkObject* accessible);
	int atk_object_get_n_accessible_children(AtkObject* accessible);
	const(char)* atk_object_get_name(AtkObject* accessible);
	const(char)* atk_object_get_object_locale(AtkObject* accessible);
	AtkObject* atk_object_get_parent(AtkObject* accessible);
	AtkRole atk_object_get_role(AtkObject* accessible);
	void atk_object_initialize(AtkObject* accessible, void* data);
	void atk_object_notify_state_change(AtkObject* accessible, AtkState state, int value);
	AtkObject* atk_object_peek_parent(AtkObject* accessible);
	AtkObject* atk_object_ref_accessible_child(AtkObject* accessible, int i);
	AtkRelationSet* atk_object_ref_relation_set(AtkObject* accessible);
	AtkStateSet* atk_object_ref_state_set(AtkObject* accessible);
	void atk_object_remove_property_change_handler(AtkObject* accessible, uint handlerId);
	int atk_object_remove_relationship(AtkObject* object, AtkRelationType relationship, AtkObject* target);
	void atk_object_set_accessible_id(AtkObject* accessible, const(char)* name);
	void atk_object_set_description(AtkObject* accessible, const(char)* description);
	void atk_object_set_name(AtkObject* accessible, const(char)* name);
	void atk_object_set_parent(AtkObject* accessible, AtkObject* parent);
	void atk_object_set_role(AtkObject* accessible, AtkRole role);
	AtkRole atk_role_for_name(const(char)* name);
	const(char)* atk_role_get_localized_name(AtkRole role);
	const(char)* atk_role_get_name(AtkRole role);
	AtkRole atk_role_register(const(char)* name);

	// atk.ObjectFactory

	GType atk_object_factory_get_type();
	AtkObject* atk_object_factory_create_accessible(AtkObjectFactory* factory, GObject* obj);
	GType atk_object_factory_get_accessible_type(AtkObjectFactory* factory);
	void atk_object_factory_invalidate(AtkObjectFactory* factory);

	// atk.Plug

	GType atk_plug_get_type();
	AtkObject* atk_plug_new();
	char* atk_plug_get_id(AtkPlug* plug);
	void atk_plug_set_child(AtkPlug* plug, AtkObject* child);

	// atk.Range

	GType atk_range_get_type();
	AtkRange* atk_range_new(double lowerLimit, double upperLimit, const(char)* description);
	AtkRange* atk_range_copy(AtkRange* src);
	void atk_range_free(AtkRange* range);
	const(char)* atk_range_get_description(AtkRange* range);
	double atk_range_get_lower_limit(AtkRange* range);
	double atk_range_get_upper_limit(AtkRange* range);

	// atk.Rectangle

	GType atk_rectangle_get_type();

	// atk.Registry

	GType atk_registry_get_type();
	AtkObjectFactory* atk_registry_get_factory(AtkRegistry* registry, GType type);
	GType atk_registry_get_factory_type(AtkRegistry* registry, GType type);
	void atk_registry_set_factory_type(AtkRegistry* registry, GType type, GType factoryType);
	AtkRegistry* atk_get_default_registry();

	// atk.Relation

	GType atk_relation_get_type();
	AtkRelation* atk_relation_new(AtkObject** targets, int nTargets, AtkRelationType relationship);
	void atk_relation_add_target(AtkRelation* relation, AtkObject* target);
	AtkRelationType atk_relation_get_relation_type(AtkRelation* relation);
	GPtrArray* atk_relation_get_target(AtkRelation* relation);
	int atk_relation_remove_target(AtkRelation* relation, AtkObject* target);
	AtkRelationType atk_relation_type_for_name(const(char)* name);
	const(char)* atk_relation_type_get_name(AtkRelationType type);
	AtkRelationType atk_relation_type_register(const(char)* name);

	// atk.RelationSet

	GType atk_relation_set_get_type();
	AtkRelationSet* atk_relation_set_new();
	void atk_relation_set_add(AtkRelationSet* set, AtkRelation* relation);
	void atk_relation_set_add_relation_by_type(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target);
	int atk_relation_set_contains(AtkRelationSet* set, AtkRelationType relationship);
	int atk_relation_set_contains_target(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target);
	int atk_relation_set_get_n_relations(AtkRelationSet* set);
	AtkRelation* atk_relation_set_get_relation(AtkRelationSet* set, int i);
	AtkRelation* atk_relation_set_get_relation_by_type(AtkRelationSet* set, AtkRelationType relationship);
	void atk_relation_set_remove(AtkRelationSet* set, AtkRelation* relation);

	// atk.Selection

	GType atk_selection_get_type();
	int atk_selection_add_selection(AtkSelection* selection, int i);
	int atk_selection_clear_selection(AtkSelection* selection);
	int atk_selection_get_selection_count(AtkSelection* selection);
	int atk_selection_is_child_selected(AtkSelection* selection, int i);
	AtkObject* atk_selection_ref_selection(AtkSelection* selection, int i);
	int atk_selection_remove_selection(AtkSelection* selection, int i);
	int atk_selection_select_all_selection(AtkSelection* selection);

	// atk.Socket

	GType atk_socket_get_type();
	AtkObject* atk_socket_new();
	void atk_socket_embed(AtkSocket* obj, const(char)* plugId);
	int atk_socket_is_occupied(AtkSocket* obj);

	// atk.StateSet

	GType atk_state_set_get_type();
	AtkStateSet* atk_state_set_new();
	int atk_state_set_add_state(AtkStateSet* set, AtkStateType type);
	void atk_state_set_add_states(AtkStateSet* set, AtkStateType* types, int nTypes);
	AtkStateSet* atk_state_set_and_sets(AtkStateSet* set, AtkStateSet* compareSet);
	void atk_state_set_clear_states(AtkStateSet* set);
	int atk_state_set_contains_state(AtkStateSet* set, AtkStateType type);
	int atk_state_set_contains_states(AtkStateSet* set, AtkStateType* types, int nTypes);
	int atk_state_set_is_empty(AtkStateSet* set);
	AtkStateSet* atk_state_set_or_sets(AtkStateSet* set, AtkStateSet* compareSet);
	int atk_state_set_remove_state(AtkStateSet* set, AtkStateType type);
	AtkStateSet* atk_state_set_xor_sets(AtkStateSet* set, AtkStateSet* compareSet);

	// atk.StreamableContent

	GType atk_streamable_content_get_type();
	const(char)* atk_streamable_content_get_mime_type(AtkStreamableContent* streamable, int i);
	int atk_streamable_content_get_n_mime_types(AtkStreamableContent* streamable);
	GIOChannel* atk_streamable_content_get_stream(AtkStreamableContent* streamable, const(char)* mimeType);
	const(char)* atk_streamable_content_get_uri(AtkStreamableContent* streamable, const(char)* mimeType);

	// atk.Table

	GType atk_table_get_type();
	int atk_table_add_column_selection(AtkTable* table, int column);
	int atk_table_add_row_selection(AtkTable* table, int row);
	AtkObject* atk_table_get_caption(AtkTable* table);
	int atk_table_get_column_at_index(AtkTable* table, int index);
	const(char)* atk_table_get_column_description(AtkTable* table, int column);
	int atk_table_get_column_extent_at(AtkTable* table, int row, int column);
	AtkObject* atk_table_get_column_header(AtkTable* table, int column);
	int atk_table_get_index_at(AtkTable* table, int row, int column);
	int atk_table_get_n_columns(AtkTable* table);
	int atk_table_get_n_rows(AtkTable* table);
	int atk_table_get_row_at_index(AtkTable* table, int index);
	const(char)* atk_table_get_row_description(AtkTable* table, int row);
	int atk_table_get_row_extent_at(AtkTable* table, int row, int column);
	AtkObject* atk_table_get_row_header(AtkTable* table, int row);
	int atk_table_get_selected_columns(AtkTable* table, int** selected);
	int atk_table_get_selected_rows(AtkTable* table, int** selected);
	AtkObject* atk_table_get_summary(AtkTable* table);
	int atk_table_is_column_selected(AtkTable* table, int column);
	int atk_table_is_row_selected(AtkTable* table, int row);
	int atk_table_is_selected(AtkTable* table, int row, int column);
	AtkObject* atk_table_ref_at(AtkTable* table, int row, int column);
	int atk_table_remove_column_selection(AtkTable* table, int column);
	int atk_table_remove_row_selection(AtkTable* table, int row);
	void atk_table_set_caption(AtkTable* table, AtkObject* caption);
	void atk_table_set_column_description(AtkTable* table, int column, const(char)* description);
	void atk_table_set_column_header(AtkTable* table, int column, AtkObject* header);
	void atk_table_set_row_description(AtkTable* table, int row, const(char)* description);
	void atk_table_set_row_header(AtkTable* table, int row, AtkObject* header);
	void atk_table_set_summary(AtkTable* table, AtkObject* accessible);

	// atk.TableCell

	GType atk_table_cell_get_type();
	GPtrArray* atk_table_cell_get_column_header_cells(AtkTableCell* cell);
	int atk_table_cell_get_column_span(AtkTableCell* cell);
	int atk_table_cell_get_position(AtkTableCell* cell, int* row, int* column);
	int atk_table_cell_get_row_column_span(AtkTableCell* cell, int* row, int* column, int* rowSpan, int* columnSpan);
	GPtrArray* atk_table_cell_get_row_header_cells(AtkTableCell* cell);
	int atk_table_cell_get_row_span(AtkTableCell* cell);
	AtkObject* atk_table_cell_get_table(AtkTableCell* cell);

	// atk.Text

	GType atk_text_get_type();
	void atk_text_free_ranges(AtkTextRange** ranges);
	int atk_text_add_selection(AtkText* text, int startOffset, int endOffset);
	AtkTextRange** atk_text_get_bounded_ranges(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType);
	int atk_text_get_caret_offset(AtkText* text);
	dchar atk_text_get_character_at_offset(AtkText* text, int offset);
	int atk_text_get_character_count(AtkText* text);
	void atk_text_get_character_extents(AtkText* text, int offset, int* x, int* y, int* width, int* height, AtkCoordType coords);
	AtkAttributeSet* atk_text_get_default_attributes(AtkText* text);
	int atk_text_get_n_selections(AtkText* text);
	int atk_text_get_offset_at_point(AtkText* text, int x, int y, AtkCoordType coords);
	void atk_text_get_range_extents(AtkText* text, int startOffset, int endOffset, AtkCoordType coordType, AtkTextRectangle* rect);
	AtkAttributeSet* atk_text_get_run_attributes(AtkText* text, int offset, int* startOffset, int* endOffset);
	char* atk_text_get_selection(AtkText* text, int selectionNum, int* startOffset, int* endOffset);
	char* atk_text_get_string_at_offset(AtkText* text, int offset, AtkTextGranularity granularity, int* startOffset, int* endOffset);
	char* atk_text_get_text(AtkText* text, int startOffset, int endOffset);
	char* atk_text_get_text_after_offset(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset);
	char* atk_text_get_text_at_offset(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset);
	char* atk_text_get_text_before_offset(AtkText* text, int offset, AtkTextBoundary boundaryType, int* startOffset, int* endOffset);
	int atk_text_remove_selection(AtkText* text, int selectionNum);
	int atk_text_scroll_substring_to(AtkText* text, int startOffset, int endOffset, AtkScrollType type);
	int atk_text_scroll_substring_to_point(AtkText* text, int startOffset, int endOffset, AtkCoordType coords, int x, int y);
	int atk_text_set_caret_offset(AtkText* text, int offset);
	int atk_text_set_selection(AtkText* text, int selectionNum, int startOffset, int endOffset);
	void atk_attribute_set_free(AtkAttributeSet* attribSet);
	AtkTextAttribute atk_text_attribute_for_name(const(char)* name);
	const(char)* atk_text_attribute_get_name(AtkTextAttribute attr);
	const(char)* atk_text_attribute_get_value(AtkTextAttribute attr, int index);
	AtkTextAttribute atk_text_attribute_register(const(char)* name);

	// atk.TextRange

	GType atk_text_range_get_type();

	// atk.Util

	GType atk_util_get_type();
	uint atk_add_focus_tracker(AtkEventListener focusTracker);
	uint atk_add_global_event_listener(GSignalEmissionHook listener, const(char)* eventType);
	uint atk_add_key_event_listener(AtkKeySnoopFunc listener, void* data);
	void atk_focus_tracker_init(AtkEventListenerInit init);
	void atk_focus_tracker_notify(AtkObject* object);
	AtkObject* atk_get_focus_object();
	AtkObject* atk_get_root();
	const(char)* atk_get_toolkit_name();
	void atk_remove_focus_tracker(uint trackerId);
	void atk_remove_global_event_listener(uint listenerId);
	void atk_remove_key_event_listener(uint listenerId);

	// atk.Value

	GType atk_value_get_type();
	void atk_value_get_current_value(AtkValue* obj, GValue* value);
	double atk_value_get_increment(AtkValue* obj);
	void atk_value_get_maximum_value(AtkValue* obj, GValue* value);
	void atk_value_get_minimum_increment(AtkValue* obj, GValue* value);
	void atk_value_get_minimum_value(AtkValue* obj, GValue* value);
	AtkRange* atk_value_get_range(AtkValue* obj);
	GSList* atk_value_get_sub_ranges(AtkValue* obj);
	void atk_value_get_value_and_text(AtkValue* obj, double* value, char** text);
	int atk_value_set_current_value(AtkValue* obj, GValue* value);
	void atk_value_set_value(AtkValue* obj, double newValue);

	// atk.Window

	GType atk_window_get_type();

	// atk.Version

	uint atk_get_binary_age();
	uint atk_get_interface_age();
	uint atk_get_major_version();
	uint atk_get_micro_version();
	uint atk_get_minor_version();
	const(char)* atk_get_toolkit_version();
	const(char)* atk_get_version();

	// atk.State

	AtkStateType atk_state_type_for_name(const(char)* name);
	const(char)* atk_state_type_get_name(AtkStateType type);
	AtkStateType atk_state_type_register(const(char)* name);
}