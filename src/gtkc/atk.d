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


module gtkc.atk;

version(Tango) private import tango.stdc.stdio;
else private import std.stdio;
private import gtkc.atktypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker atk_Linker;

static this()
{
 atk_Linker = new Linker(libPath ~ importLibs[LIBRARY.ATK] );
 atk_Linker.link(atkLinks);
 debug writefln("* Finished static this(): atk");
}

static ~this()
{
 delete atk_Linker;
 debug writefln("* Finished static ~this(): atk");
}

extern(C) 
{	
	// atk.Action
	
	gboolean function(AtkAction* action, gint i)atk_action_do_action;
	gint function(AtkAction* action)atk_action_get_n_actions;
	gchar* function(AtkAction* action, gint i)atk_action_get_description;
	gchar* function(AtkAction* action, gint i)atk_action_get_name;
	gchar* function(AtkAction* action, gint i)atk_action_get_localized_name;
	gchar* function(AtkAction* action, gint i)atk_action_get_keybinding;
	gboolean function(AtkAction* action, gint i, gchar* desc)atk_action_set_description;
	
	// atk.Component
	
	guint function(AtkComponent* component, AtkFocusHandler handler)atk_component_add_focus_handler;
	gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType)atk_component_contains;
	void function(AtkComponent* component, gint* x, gint* y, gint* width, gint* height, AtkCoordType coordType)atk_component_get_extents;
	AtkLayer function(AtkComponent* component)atk_component_get_layer;
	gint function(AtkComponent* component)atk_component_get_mdi_zorder;
	void function(AtkComponent* component, gint* x, gint* y, AtkCoordType coordType)atk_component_get_position;
	void function(AtkComponent* component, gint* width, gint* height)atk_component_get_size;
	gboolean function(AtkComponent* component)atk_component_grab_focus;
	AtkObject* function(AtkComponent* component, gint x, gint y, AtkCoordType coordType)atk_component_ref_accessible_at_point;
	void function(AtkComponent* component, guint handlerId)atk_component_remove_focus_handler;
	gboolean function(AtkComponent* component, gint x, gint y, gint width, gint height, AtkCoordType coordType)atk_component_set_extents;
	gboolean function(AtkComponent* component, gint x, gint y, AtkCoordType coordType)atk_component_set_position;
	gboolean function(AtkComponent* component, gint width, gint height)atk_component_set_size;
	gdouble function(AtkComponent* component)atk_component_get_alpha;
	
	// atk.Document
	
	gchar* function(AtkDocument* document)atk_document_get_document_type;
	gpointer function(AtkDocument* document)atk_document_get_document;
	gchar* function(AtkDocument* document, gchar* attributeName)atk_document_get_attribute_value;
	gboolean function(AtkDocument* document, gchar* attributeName, gchar* attributeValue)atk_document_set_attribute_value;
	AtkAttributeSet* function(AtkDocument* document)atk_document_get_attributes;
	gchar* function(AtkDocument* document)atk_document_get_locale;
	
	// atk.EditableText
	
	gboolean function(AtkEditableText* text, AtkAttributeSet* attribSet, gint startOffset, gint endOffset)atk_editable_text_set_run_attributes;
	void function(AtkEditableText* text, gchar* string)atk_editable_text_set_text_contents;
	void function(AtkEditableText* text, gchar* string, gint length, gint* position)atk_editable_text_insert_text;
	void function(AtkEditableText* text, gint startPos, gint endPos)atk_editable_text_copy_text;
	void function(AtkEditableText* text, gint startPos, gint endPos)atk_editable_text_cut_text;
	void function(AtkEditableText* text, gint startPos, gint endPos)atk_editable_text_delete_text;
	void function(AtkEditableText* text, gint position)atk_editable_text_paste_text;
	
	// atk.GObjectAccessible
	
	AtkObject* function(GObject* obj)atk_gobject_accessible_for_object;
	GObject* function(AtkGObjectAccessible* obj)atk_gobject_accessible_get_object;
	
	// atk.Hyperlink
	
	gchar* function(AtkHyperlink* link, gint i)atk_hyperlink_get_uri;
	AtkObject* function(AtkHyperlink* link, gint i)atk_hyperlink_get_object;
	gint function(AtkHyperlink* link)atk_hyperlink_get_end_index;
	gint function(AtkHyperlink* link)atk_hyperlink_get_start_index;
	gboolean function(AtkHyperlink* link)atk_hyperlink_is_valid;
	gboolean function(AtkHyperlink* link)atk_hyperlink_is_inline;
	gint function(AtkHyperlink* link)atk_hyperlink_get_n_anchors;
	gboolean function(AtkHyperlink* link)atk_hyperlink_is_selected_link;
	
	// atk.Hypertext
	
	AtkHyperlink* function(AtkHypertext* hypertext, gint linkIndex)atk_hypertext_get_link;
	gint function(AtkHypertext* hypertext)atk_hypertext_get_n_links;
	gint function(AtkHypertext* hypertext, gint charIndex)atk_hypertext_get_link_index;
	
	// atk.Image
	
	void function(AtkImage* image, gint* x, gint* y, AtkCoordType coordType)atk_image_get_image_position;
	gchar* function(AtkImage* image)atk_image_get_image_description;
	gboolean function(AtkImage* image, gchar* description)atk_image_set_image_description;
	void function(AtkImage* image, gint* width, gint* height)atk_image_get_image_size;
	gchar* function(AtkImage* image)atk_image_get_image_locale;
	
	// atk.NoOpObject
	
	AtkObject* function(GObject* obj)atk_no_op_object_new;
	
	// atk.NoOpObjectFactory
	
	AtkObjectFactory* function()atk_no_op_object_factory_new;
	
	// atk.ObjectAtk
	
	AtkRole function(gchar* name)atk_role_register;
	AtkObject* function(AtkImplementor* implementor)atk_implementor_ref_accessible;
	gchar* function(AtkObject* accessible)atk_object_get_name;
	gchar* function(AtkObject* accessible)atk_object_get_description;
	AtkObject* function(AtkObject* accessible)atk_object_get_parent;
	gint function(AtkObject* accessible)atk_object_get_n_accessible_children;
	AtkObject* function(AtkObject* accessible, gint i)atk_object_ref_accessible_child;
	AtkRelationSet* function(AtkObject* accessible)atk_object_ref_relation_set;
	AtkLayer function(AtkObject* accessible)atk_object_get_layer;
	gint function(AtkObject* accessible)atk_object_get_mdi_zorder;
	AtkRole function(AtkObject* accessible)atk_object_get_role;
	AtkStateSet* function(AtkObject* accessible)atk_object_ref_state_set;
	gint function(AtkObject* accessible)atk_object_get_index_in_parent;
	void function(AtkObject* accessible, gchar* name)atk_object_set_name;
	void function(AtkObject* accessible, gchar* description)atk_object_set_description;
	void function(AtkObject* accessible, AtkObject* parent)atk_object_set_parent;
	void function(AtkObject* accessible, AtkRole role)atk_object_set_role;
	guint function(AtkObject* accessible, AtkPropertyChangeHandler* handler)atk_object_connect_property_change_handler;
	void function(AtkObject* accessible, guint handlerId)atk_object_remove_property_change_handler;
	void function(AtkObject* accessible, AtkState state, gboolean value)atk_object_notify_state_change;
	void function(AtkObject* accessible, gpointer data)atk_object_initialize;
	gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target)atk_object_add_relationship;
	gboolean function(AtkObject* object, AtkRelationType relationship, AtkObject* target)atk_object_remove_relationship;
	AtkAttributeSet* function(AtkObject* accessible)atk_object_get_attributes;
	gchar* function(AtkRole role)atk_role_get_name;
	gchar* function(AtkRole role)atk_role_get_localized_name;
	AtkRole function(gchar* name)atk_role_for_name;
	
	// atk.ObjectFactory
	
	AtkObject* function(AtkObjectFactory* factory, GObject* obj)atk_object_factory_create_accessible;
	GType function(AtkObjectFactory* factory)atk_object_factory_get_accessible_type;
	void function(AtkObjectFactory* factory)atk_object_factory_invalidate;
	
	// atk.Registry
	
	void function(AtkRegistry* registry, GType type, GType factoryType)atk_registry_set_factory_type;
	GType function(AtkRegistry* registry, GType type)atk_registry_get_factory_type;
	AtkObjectFactory* function(AtkRegistry* registry, GType type)atk_registry_get_factory;
	AtkRegistry* function()atk_get_default_registry;
	
	// atk.Relation
	
	AtkRelationType function(gchar* name)atk_relation_type_register;
	gchar* function(AtkRelationType type)atk_relation_type_get_name;
	AtkRelationType function(gchar* name)atk_relation_type_for_name;
	AtkRelation* function(AtkObject** targets, gint nTargets, AtkRelationType relationship)atk_relation_new;
	AtkRelationType function(AtkRelation* relation)atk_relation_get_relation_type;
	GPtrArray* function(AtkRelation* relation)atk_relation_get_target;
	void function(AtkRelation* relation, AtkObject* target)atk_relation_add_target;
	
	// atk.RelationSet
	
	AtkRelationSet* function()atk_relation_set_new;
	gboolean function(AtkRelationSet* set, AtkRelationType relationship)atk_relation_set_contains;
	void function(AtkRelationSet* set, AtkRelation* relation)atk_relation_set_remove;
	void function(AtkRelationSet* set, AtkRelation* relation)atk_relation_set_add;
	gint function(AtkRelationSet* set)atk_relation_set_get_n_relations;
	AtkRelation* function(AtkRelationSet* set, gint i)atk_relation_set_get_relation;
	AtkRelation* function(AtkRelationSet* set, AtkRelationType relationship)atk_relation_set_get_relation_by_type;
	void function(AtkRelationSet* set, AtkRelationType relationship, AtkObject* target)atk_relation_set_add_relation_by_type;
	
	// atk.Selection
	
	gboolean function(AtkSelection* selection, gint i)atk_selection_add_selection;
	gboolean function(AtkSelection* selection)atk_selection_clear_selection;
	AtkObject* function(AtkSelection* selection, gint i)atk_selection_ref_selection;
	gint function(AtkSelection* selection)atk_selection_get_selection_count;
	gboolean function(AtkSelection* selection, gint i)atk_selection_is_child_selected;
	gboolean function(AtkSelection* selection, gint i)atk_selection_remove_selection;
	gboolean function(AtkSelection* selection)atk_selection_select_all_selection;
	
	// atk.State
	
	AtkStateType function(gchar* name)atk_state_type_register;
	gchar* function(AtkStateType type)atk_state_type_get_name;
	AtkStateType function(gchar* name)atk_state_type_for_name;
	
	// atk.StateSet
	
	AtkStateSet* function()atk_state_set_new;
	gboolean function(AtkStateSet* set)atk_state_set_is_empty;
	gboolean function(AtkStateSet* set, AtkStateType type)atk_state_set_add_state;
	void function(AtkStateSet* set, AtkStateType* types, gint nTypes)atk_state_set_add_states;
	void function(AtkStateSet* set)atk_state_set_clear_states;
	gboolean function(AtkStateSet* set, AtkStateType type)atk_state_set_contains_state;
	gboolean function(AtkStateSet* set, AtkStateType* types, gint nTypes)atk_state_set_contains_states;
	gboolean function(AtkStateSet* set, AtkStateType type)atk_state_set_remove_state;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet)atk_state_set_and_sets;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet)atk_state_set_or_sets;
	AtkStateSet* function(AtkStateSet* set, AtkStateSet* compareSet)atk_state_set_xor_sets;
	
	// atk.StreamableContent
	
	gint function(AtkStreamableContent* streamable)atk_streamable_content_get_n_mime_types;
	gchar* function(AtkStreamableContent* streamable, gint i)atk_streamable_content_get_mime_type;
	GIOChannel* function(AtkStreamableContent* streamable, gchar* mimeType)atk_streamable_content_get_stream;
	gchar* function(AtkStreamableContent* streamable, gchar* mimeType)atk_streamable_content_get_uri;
	
	// atk.Table
	
	AtkObject* function(AtkTable* table, gint row, gint column)atk_table_ref_at;
	gint function(AtkTable* table, gint row, gint column)atk_table_get_index_at;
	gint function(AtkTable* table, gint index)atk_table_get_column_at_index;
	gint function(AtkTable* table, gint index)atk_table_get_row_at_index;
	gint function(AtkTable* table)atk_table_get_n_columns;
	gint function(AtkTable* table)atk_table_get_n_rows;
	gint function(AtkTable* table, gint row, gint column)atk_table_get_column_extent_at;
	gint function(AtkTable* table, gint row, gint column)atk_table_get_row_extent_at;
	AtkObject* function(AtkTable* table)atk_table_get_caption;
	gchar* function(AtkTable* table, gint column)atk_table_get_column_description;
	gchar* function(AtkTable* table, gint row)atk_table_get_row_description;
	AtkObject* function(AtkTable* table, gint column)atk_table_get_column_header;
	AtkObject* function(AtkTable* table, gint row)atk_table_get_row_header;
	AtkObject* function(AtkTable* table)atk_table_get_summary;
	void function(AtkTable* table, AtkObject* caption)atk_table_set_caption;
	void function(AtkTable* table, gint row, gchar* description)atk_table_set_row_description;
	void function(AtkTable* table, gint column, gchar* description)atk_table_set_column_description;
	void function(AtkTable* table, gint row, AtkObject* header)atk_table_set_row_header;
	void function(AtkTable* table, gint column, AtkObject* header)atk_table_set_column_header;
	void function(AtkTable* table, AtkObject* accessible)atk_table_set_summary;
	gint function(AtkTable* table, gint** selected)atk_table_get_selected_columns;
	gint function(AtkTable* table, gint** selected)atk_table_get_selected_rows;
	gboolean function(AtkTable* table, gint column)atk_table_is_column_selected;
	gboolean function(AtkTable* table, gint row)atk_table_is_row_selected;
	gboolean function(AtkTable* table, gint row, gint column)atk_table_is_selected;
	gboolean function(AtkTable* table, gint column)atk_table_add_column_selection;
	gboolean function(AtkTable* table, gint row)atk_table_add_row_selection;
	gboolean function(AtkTable* table, gint column)atk_table_remove_column_selection;
	gboolean function(AtkTable* table, gint row)atk_table_remove_row_selection;
	
	// atk.Text
	
	gchar* function(AtkText* text, gint startOffset, gint endOffset)atk_text_get_text;
	gunichar function(AtkText* text, gint offset)atk_text_get_character_at_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset)atk_text_get_text_after_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset)atk_text_get_text_at_offset;
	gchar* function(AtkText* text, gint offset, AtkTextBoundary boundaryType, gint* startOffset, gint* endOffset)atk_text_get_text_before_offset;
	gint function(AtkText* text)atk_text_get_caret_offset;
	void function(AtkText* text, gint offset, gint* x, gint* y, gint* width, gint* height, AtkCoordType coords)atk_text_get_character_extents;
	AtkAttributeSet* function(AtkText* text, gint offset, gint* startOffset, gint* endOffset)atk_text_get_run_attributes;
	AtkAttributeSet* function(AtkText* text)atk_text_get_default_attributes;
	gint function(AtkText* text)atk_text_get_character_count;
	gint function(AtkText* text, gint x, gint y, AtkCoordType coords)atk_text_get_offset_at_point;
	AtkTextRange** function(AtkText* text, AtkTextRectangle* rect, AtkCoordType coordType, AtkTextClipType xClipType, AtkTextClipType yClipType)atk_text_get_bounded_ranges;
	void function(AtkText* text, gint startOffset, gint endOffset, AtkCoordType coordType, AtkTextRectangle* rect)atk_text_get_range_extents;
	void function(AtkTextRange** ranges)atk_text_free_ranges;
	gint function(AtkText* text)atk_text_get_n_selections;
	gchar* function(AtkText* text, gint selectionNum, gint* startOffset, gint* endOffset)atk_text_get_selection;
	gboolean function(AtkText* text, gint startOffset, gint endOffset)atk_text_add_selection;
	gboolean function(AtkText* text, gint selectionNum)atk_text_remove_selection;
	gboolean function(AtkText* text, gint selectionNum, gint startOffset, gint endOffset)atk_text_set_selection;
	gboolean function(AtkText* text, gint offset)atk_text_set_caret_offset;
	void function(AtkAttributeSet* attribSet)atk_attribute_set_free;
	AtkTextAttribute function(gchar* name)atk_text_attribute_register;
	gchar* function(AtkTextAttribute attr)atk_text_attribute_get_name;
	AtkTextAttribute function(gchar* name)atk_text_attribute_for_name;
	gchar* function(AtkTextAttribute attr, gint index)atk_text_attribute_get_value;
	
	// atk.Util
	
	guint function(AtkEventListener focusTracker)atk_add_focus_tracker;
	void function(guint trackerId)atk_remove_focus_tracker;
	void function(AtkEventListenerInit init)atk_focus_tracker_init;
	void function(AtkObject* object)atk_focus_tracker_notify;
	guint function(GSignalEmissionHook listener, gchar* eventType)atk_add_global_event_listener;
	void function(guint listenerId)atk_remove_global_event_listener;
	guint function(AtkKeySnoopFunc listener, gpointer data)atk_add_key_event_listener;
	void function(guint listenerId)atk_remove_key_event_listener;
	AtkObject* function()atk_get_root;
	AtkObject* function()atk_get_focus_object;
	gchar* function()atk_get_toolkit_name;
	gchar* function()atk_get_toolkit_version;
	
	// atk.ValueAtk
	
	void function(AtkValue* obj, GValue* value)atk_value_get_current_value;
	void function(AtkValue* obj, GValue* value)atk_value_get_maximum_value;
	void function(AtkValue* obj, GValue* value)atk_value_get_minimum_value;
	gboolean function(AtkValue* obj, GValue* value)atk_value_set_current_value;
	void function(AtkValue* obj, GValue* value)atk_value_get_minimum_increment;


}

Symbol[] atkLinks = 
[

	{ "atk_action_do_action",  cast(void**)& atk_action_do_action},
	{ "atk_action_get_n_actions",  cast(void**)& atk_action_get_n_actions},
	{ "atk_action_get_description",  cast(void**)& atk_action_get_description},
	{ "atk_action_get_name",  cast(void**)& atk_action_get_name},
	{ "atk_action_get_localized_name",  cast(void**)& atk_action_get_localized_name},
	{ "atk_action_get_keybinding",  cast(void**)& atk_action_get_keybinding},
	{ "atk_action_set_description",  cast(void**)& atk_action_set_description},
	{ "atk_component_add_focus_handler",  cast(void**)& atk_component_add_focus_handler},
	{ "atk_component_contains",  cast(void**)& atk_component_contains},
	{ "atk_component_get_extents",  cast(void**)& atk_component_get_extents},
	{ "atk_component_get_layer",  cast(void**)& atk_component_get_layer},
	{ "atk_component_get_mdi_zorder",  cast(void**)& atk_component_get_mdi_zorder},
	{ "atk_component_get_position",  cast(void**)& atk_component_get_position},
	{ "atk_component_get_size",  cast(void**)& atk_component_get_size},
	{ "atk_component_grab_focus",  cast(void**)& atk_component_grab_focus},
	{ "atk_component_ref_accessible_at_point",  cast(void**)& atk_component_ref_accessible_at_point},
	{ "atk_component_remove_focus_handler",  cast(void**)& atk_component_remove_focus_handler},
	{ "atk_component_set_extents",  cast(void**)& atk_component_set_extents},
	{ "atk_component_set_position",  cast(void**)& atk_component_set_position},
	{ "atk_component_set_size",  cast(void**)& atk_component_set_size},
	{ "atk_component_get_alpha",  cast(void**)& atk_component_get_alpha},
	{ "atk_document_get_document_type",  cast(void**)& atk_document_get_document_type},
	{ "atk_document_get_document",  cast(void**)& atk_document_get_document},
	{ "atk_document_get_attribute_value",  cast(void**)& atk_document_get_attribute_value},
	{ "atk_document_set_attribute_value",  cast(void**)& atk_document_set_attribute_value},
	{ "atk_document_get_attributes",  cast(void**)& atk_document_get_attributes},
	{ "atk_document_get_locale",  cast(void**)& atk_document_get_locale},
	{ "atk_editable_text_set_run_attributes",  cast(void**)& atk_editable_text_set_run_attributes},
	{ "atk_editable_text_set_text_contents",  cast(void**)& atk_editable_text_set_text_contents},
	{ "atk_editable_text_insert_text",  cast(void**)& atk_editable_text_insert_text},
	{ "atk_editable_text_copy_text",  cast(void**)& atk_editable_text_copy_text},
	{ "atk_editable_text_cut_text",  cast(void**)& atk_editable_text_cut_text},
	{ "atk_editable_text_delete_text",  cast(void**)& atk_editable_text_delete_text},
	{ "atk_editable_text_paste_text",  cast(void**)& atk_editable_text_paste_text},
	{ "atk_gobject_accessible_for_object",  cast(void**)& atk_gobject_accessible_for_object},
	{ "atk_gobject_accessible_get_object",  cast(void**)& atk_gobject_accessible_get_object},
	{ "atk_hyperlink_get_uri",  cast(void**)& atk_hyperlink_get_uri},
	{ "atk_hyperlink_get_object",  cast(void**)& atk_hyperlink_get_object},
	{ "atk_hyperlink_get_end_index",  cast(void**)& atk_hyperlink_get_end_index},
	{ "atk_hyperlink_get_start_index",  cast(void**)& atk_hyperlink_get_start_index},
	{ "atk_hyperlink_is_valid",  cast(void**)& atk_hyperlink_is_valid},
	{ "atk_hyperlink_is_inline",  cast(void**)& atk_hyperlink_is_inline},
	{ "atk_hyperlink_get_n_anchors",  cast(void**)& atk_hyperlink_get_n_anchors},
	{ "atk_hyperlink_is_selected_link",  cast(void**)& atk_hyperlink_is_selected_link},
	{ "atk_hypertext_get_link",  cast(void**)& atk_hypertext_get_link},
	{ "atk_hypertext_get_n_links",  cast(void**)& atk_hypertext_get_n_links},
	{ "atk_hypertext_get_link_index",  cast(void**)& atk_hypertext_get_link_index},
	{ "atk_image_get_image_position",  cast(void**)& atk_image_get_image_position},
	{ "atk_image_get_image_description",  cast(void**)& atk_image_get_image_description},
	{ "atk_image_set_image_description",  cast(void**)& atk_image_set_image_description},
	{ "atk_image_get_image_size",  cast(void**)& atk_image_get_image_size},
	{ "atk_image_get_image_locale",  cast(void**)& atk_image_get_image_locale},
	{ "atk_no_op_object_new",  cast(void**)& atk_no_op_object_new},
	{ "atk_no_op_object_factory_new",  cast(void**)& atk_no_op_object_factory_new},
	{ "atk_role_register",  cast(void**)& atk_role_register},
	{ "atk_implementor_ref_accessible",  cast(void**)& atk_implementor_ref_accessible},
	{ "atk_object_get_name",  cast(void**)& atk_object_get_name},
	{ "atk_object_get_description",  cast(void**)& atk_object_get_description},
	{ "atk_object_get_parent",  cast(void**)& atk_object_get_parent},
	{ "atk_object_get_n_accessible_children",  cast(void**)& atk_object_get_n_accessible_children},
	{ "atk_object_ref_accessible_child",  cast(void**)& atk_object_ref_accessible_child},
	{ "atk_object_ref_relation_set",  cast(void**)& atk_object_ref_relation_set},
	{ "atk_object_get_layer",  cast(void**)& atk_object_get_layer},
	{ "atk_object_get_mdi_zorder",  cast(void**)& atk_object_get_mdi_zorder},
	{ "atk_object_get_role",  cast(void**)& atk_object_get_role},
	{ "atk_object_ref_state_set",  cast(void**)& atk_object_ref_state_set},
	{ "atk_object_get_index_in_parent",  cast(void**)& atk_object_get_index_in_parent},
	{ "atk_object_set_name",  cast(void**)& atk_object_set_name},
	{ "atk_object_set_description",  cast(void**)& atk_object_set_description},
	{ "atk_object_set_parent",  cast(void**)& atk_object_set_parent},
	{ "atk_object_set_role",  cast(void**)& atk_object_set_role},
	{ "atk_object_connect_property_change_handler",  cast(void**)& atk_object_connect_property_change_handler},
	{ "atk_object_remove_property_change_handler",  cast(void**)& atk_object_remove_property_change_handler},
	{ "atk_object_notify_state_change",  cast(void**)& atk_object_notify_state_change},
	{ "atk_object_initialize",  cast(void**)& atk_object_initialize},
	{ "atk_object_add_relationship",  cast(void**)& atk_object_add_relationship},
	{ "atk_object_remove_relationship",  cast(void**)& atk_object_remove_relationship},
	{ "atk_object_get_attributes",  cast(void**)& atk_object_get_attributes},
	{ "atk_role_get_name",  cast(void**)& atk_role_get_name},
	{ "atk_role_get_localized_name",  cast(void**)& atk_role_get_localized_name},
	{ "atk_role_for_name",  cast(void**)& atk_role_for_name},
	{ "atk_object_factory_create_accessible",  cast(void**)& atk_object_factory_create_accessible},
	{ "atk_object_factory_get_accessible_type",  cast(void**)& atk_object_factory_get_accessible_type},
	{ "atk_object_factory_invalidate",  cast(void**)& atk_object_factory_invalidate},
	{ "atk_registry_set_factory_type",  cast(void**)& atk_registry_set_factory_type},
	{ "atk_registry_get_factory_type",  cast(void**)& atk_registry_get_factory_type},
	{ "atk_registry_get_factory",  cast(void**)& atk_registry_get_factory},
	{ "atk_get_default_registry",  cast(void**)& atk_get_default_registry},
	{ "atk_relation_type_register",  cast(void**)& atk_relation_type_register},
	{ "atk_relation_type_get_name",  cast(void**)& atk_relation_type_get_name},
	{ "atk_relation_type_for_name",  cast(void**)& atk_relation_type_for_name},
	{ "atk_relation_new",  cast(void**)& atk_relation_new},
	{ "atk_relation_get_relation_type",  cast(void**)& atk_relation_get_relation_type},
	{ "atk_relation_get_target",  cast(void**)& atk_relation_get_target},
	{ "atk_relation_add_target",  cast(void**)& atk_relation_add_target},
	{ "atk_relation_set_new",  cast(void**)& atk_relation_set_new},
	{ "atk_relation_set_contains",  cast(void**)& atk_relation_set_contains},
	{ "atk_relation_set_remove",  cast(void**)& atk_relation_set_remove},
	{ "atk_relation_set_add",  cast(void**)& atk_relation_set_add},
	{ "atk_relation_set_get_n_relations",  cast(void**)& atk_relation_set_get_n_relations},
	{ "atk_relation_set_get_relation",  cast(void**)& atk_relation_set_get_relation},
	{ "atk_relation_set_get_relation_by_type",  cast(void**)& atk_relation_set_get_relation_by_type},
	{ "atk_relation_set_add_relation_by_type",  cast(void**)& atk_relation_set_add_relation_by_type},
	{ "atk_selection_add_selection",  cast(void**)& atk_selection_add_selection},
	{ "atk_selection_clear_selection",  cast(void**)& atk_selection_clear_selection},
	{ "atk_selection_ref_selection",  cast(void**)& atk_selection_ref_selection},
	{ "atk_selection_get_selection_count",  cast(void**)& atk_selection_get_selection_count},
	{ "atk_selection_is_child_selected",  cast(void**)& atk_selection_is_child_selected},
	{ "atk_selection_remove_selection",  cast(void**)& atk_selection_remove_selection},
	{ "atk_selection_select_all_selection",  cast(void**)& atk_selection_select_all_selection},
	{ "atk_state_type_register",  cast(void**)& atk_state_type_register},
	{ "atk_state_type_get_name",  cast(void**)& atk_state_type_get_name},
	{ "atk_state_type_for_name",  cast(void**)& atk_state_type_for_name},
	{ "atk_state_set_new",  cast(void**)& atk_state_set_new},
	{ "atk_state_set_is_empty",  cast(void**)& atk_state_set_is_empty},
	{ "atk_state_set_add_state",  cast(void**)& atk_state_set_add_state},
	{ "atk_state_set_add_states",  cast(void**)& atk_state_set_add_states},
	{ "atk_state_set_clear_states",  cast(void**)& atk_state_set_clear_states},
	{ "atk_state_set_contains_state",  cast(void**)& atk_state_set_contains_state},
	{ "atk_state_set_contains_states",  cast(void**)& atk_state_set_contains_states},
	{ "atk_state_set_remove_state",  cast(void**)& atk_state_set_remove_state},
	{ "atk_state_set_and_sets",  cast(void**)& atk_state_set_and_sets},
	{ "atk_state_set_or_sets",  cast(void**)& atk_state_set_or_sets},
	{ "atk_state_set_xor_sets",  cast(void**)& atk_state_set_xor_sets},
	{ "atk_streamable_content_get_n_mime_types",  cast(void**)& atk_streamable_content_get_n_mime_types},
	{ "atk_streamable_content_get_mime_type",  cast(void**)& atk_streamable_content_get_mime_type},
	{ "atk_streamable_content_get_stream",  cast(void**)& atk_streamable_content_get_stream},
	{ "atk_streamable_content_get_uri",  cast(void**)& atk_streamable_content_get_uri},
	{ "atk_table_ref_at",  cast(void**)& atk_table_ref_at},
	{ "atk_table_get_index_at",  cast(void**)& atk_table_get_index_at},
	{ "atk_table_get_column_at_index",  cast(void**)& atk_table_get_column_at_index},
	{ "atk_table_get_row_at_index",  cast(void**)& atk_table_get_row_at_index},
	{ "atk_table_get_n_columns",  cast(void**)& atk_table_get_n_columns},
	{ "atk_table_get_n_rows",  cast(void**)& atk_table_get_n_rows},
	{ "atk_table_get_column_extent_at",  cast(void**)& atk_table_get_column_extent_at},
	{ "atk_table_get_row_extent_at",  cast(void**)& atk_table_get_row_extent_at},
	{ "atk_table_get_caption",  cast(void**)& atk_table_get_caption},
	{ "atk_table_get_column_description",  cast(void**)& atk_table_get_column_description},
	{ "atk_table_get_row_description",  cast(void**)& atk_table_get_row_description},
	{ "atk_table_get_column_header",  cast(void**)& atk_table_get_column_header},
	{ "atk_table_get_row_header",  cast(void**)& atk_table_get_row_header},
	{ "atk_table_get_summary",  cast(void**)& atk_table_get_summary},
	{ "atk_table_set_caption",  cast(void**)& atk_table_set_caption},
	{ "atk_table_set_row_description",  cast(void**)& atk_table_set_row_description},
	{ "atk_table_set_column_description",  cast(void**)& atk_table_set_column_description},
	{ "atk_table_set_row_header",  cast(void**)& atk_table_set_row_header},
	{ "atk_table_set_column_header",  cast(void**)& atk_table_set_column_header},
	{ "atk_table_set_summary",  cast(void**)& atk_table_set_summary},
	{ "atk_table_get_selected_columns",  cast(void**)& atk_table_get_selected_columns},
	{ "atk_table_get_selected_rows",  cast(void**)& atk_table_get_selected_rows},
	{ "atk_table_is_column_selected",  cast(void**)& atk_table_is_column_selected},
	{ "atk_table_is_row_selected",  cast(void**)& atk_table_is_row_selected},
	{ "atk_table_is_selected",  cast(void**)& atk_table_is_selected},
	{ "atk_table_add_column_selection",  cast(void**)& atk_table_add_column_selection},
	{ "atk_table_add_row_selection",  cast(void**)& atk_table_add_row_selection},
	{ "atk_table_remove_column_selection",  cast(void**)& atk_table_remove_column_selection},
	{ "atk_table_remove_row_selection",  cast(void**)& atk_table_remove_row_selection},
	{ "atk_text_get_text",  cast(void**)& atk_text_get_text},
	{ "atk_text_get_character_at_offset",  cast(void**)& atk_text_get_character_at_offset},
	{ "atk_text_get_text_after_offset",  cast(void**)& atk_text_get_text_after_offset},
	{ "atk_text_get_text_at_offset",  cast(void**)& atk_text_get_text_at_offset},
	{ "atk_text_get_text_before_offset",  cast(void**)& atk_text_get_text_before_offset},
	{ "atk_text_get_caret_offset",  cast(void**)& atk_text_get_caret_offset},
	{ "atk_text_get_character_extents",  cast(void**)& atk_text_get_character_extents},
	{ "atk_text_get_run_attributes",  cast(void**)& atk_text_get_run_attributes},
	{ "atk_text_get_default_attributes",  cast(void**)& atk_text_get_default_attributes},
	{ "atk_text_get_character_count",  cast(void**)& atk_text_get_character_count},
	{ "atk_text_get_offset_at_point",  cast(void**)& atk_text_get_offset_at_point},
	{ "atk_text_get_bounded_ranges",  cast(void**)& atk_text_get_bounded_ranges},
	{ "atk_text_get_range_extents",  cast(void**)& atk_text_get_range_extents},
	{ "atk_text_free_ranges",  cast(void**)& atk_text_free_ranges},
	{ "atk_text_get_n_selections",  cast(void**)& atk_text_get_n_selections},
	{ "atk_text_get_selection",  cast(void**)& atk_text_get_selection},
	{ "atk_text_add_selection",  cast(void**)& atk_text_add_selection},
	{ "atk_text_remove_selection",  cast(void**)& atk_text_remove_selection},
	{ "atk_text_set_selection",  cast(void**)& atk_text_set_selection},
	{ "atk_text_set_caret_offset",  cast(void**)& atk_text_set_caret_offset},
	{ "atk_attribute_set_free",  cast(void**)& atk_attribute_set_free},
	{ "atk_text_attribute_register",  cast(void**)& atk_text_attribute_register},
	{ "atk_text_attribute_get_name",  cast(void**)& atk_text_attribute_get_name},
	{ "atk_text_attribute_for_name",  cast(void**)& atk_text_attribute_for_name},
	{ "atk_text_attribute_get_value",  cast(void**)& atk_text_attribute_get_value},
	{ "atk_add_focus_tracker",  cast(void**)& atk_add_focus_tracker},
	{ "atk_remove_focus_tracker",  cast(void**)& atk_remove_focus_tracker},
	{ "atk_focus_tracker_init",  cast(void**)& atk_focus_tracker_init},
	{ "atk_focus_tracker_notify",  cast(void**)& atk_focus_tracker_notify},
	{ "atk_add_global_event_listener",  cast(void**)& atk_add_global_event_listener},
	{ "atk_remove_global_event_listener",  cast(void**)& atk_remove_global_event_listener},
	{ "atk_add_key_event_listener",  cast(void**)& atk_add_key_event_listener},
	{ "atk_remove_key_event_listener",  cast(void**)& atk_remove_key_event_listener},
	{ "atk_get_root",  cast(void**)& atk_get_root},
	{ "atk_get_focus_object",  cast(void**)& atk_get_focus_object},
	{ "atk_get_toolkit_name",  cast(void**)& atk_get_toolkit_name},
	{ "atk_get_toolkit_version",  cast(void**)& atk_get_toolkit_version},
	{ "atk_value_get_current_value",  cast(void**)& atk_value_get_current_value},
	{ "atk_value_get_maximum_value",  cast(void**)& atk_value_get_maximum_value},
	{ "atk_value_get_minimum_value",  cast(void**)& atk_value_get_minimum_value},
	{ "atk_value_set_current_value",  cast(void**)& atk_value_set_current_value},
	{ "atk_value_get_minimum_increment",  cast(void**)& atk_value_get_minimum_increment},

];