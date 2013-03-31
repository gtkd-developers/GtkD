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


module gsvc.gsv;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gsvc.gsvtypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gsv.SourceBuffer

	Linker.link(gtk_source_buffer_new, \"gtk_source_buffer_new\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_new_with_language, \"gtk_source_buffer_new_with_language\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_highlight_syntax, \"gtk_source_buffer_set_highlight_syntax\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_highlight_syntax, \"gtk_source_buffer_get_highlight_syntax\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_language, \"gtk_source_buffer_set_language\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_language, \"gtk_source_buffer_get_language\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_highlight_matching_brackets, \"gtk_source_buffer_set_highlight_matching_brackets\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_highlight_matching_brackets, \"gtk_source_buffer_get_highlight_matching_brackets\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_style_scheme, \"gtk_source_buffer_set_style_scheme\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_style_scheme, \"gtk_source_buffer_get_style_scheme\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_max_undo_levels, \"gtk_source_buffer_get_max_undo_levels\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_max_undo_levels, \"gtk_source_buffer_set_max_undo_levels\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_redo, \"gtk_source_buffer_redo\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_undo, \"gtk_source_buffer_undo\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_can_redo, \"gtk_source_buffer_can_redo\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_can_undo, \"gtk_source_buffer_can_undo\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_begin_not_undoable_action, \"gtk_source_buffer_begin_not_undoable_action\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_end_not_undoable_action, \"gtk_source_buffer_end_not_undoable_action\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_ensure_highlight, \"gtk_source_buffer_ensure_highlight\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_create_source_mark, \"gtk_source_buffer_create_source_mark\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_forward_iter_to_source_mark, \"gtk_source_buffer_forward_iter_to_source_mark\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_backward_iter_to_source_mark, \"gtk_source_buffer_backward_iter_to_source_mark\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_source_marks_at_line, \"gtk_source_buffer_get_source_marks_at_line\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_source_marks_at_iter, \"gtk_source_buffer_get_source_marks_at_iter\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_remove_source_marks, \"gtk_source_buffer_remove_source_marks\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_iter_has_context_class, \"gtk_source_buffer_iter_has_context_class\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_context_classes_at_iter, \"gtk_source_buffer_get_context_classes_at_iter\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_iter_forward_to_context_class_toggle, \"gtk_source_buffer_iter_forward_to_context_class_toggle\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_iter_backward_to_context_class_toggle, \"gtk_source_buffer_iter_backward_to_context_class_toggle\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_undo_manager, \"gtk_source_buffer_get_undo_manager\", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_undo_manager, \"gtk_source_buffer_set_undo_manager\", LIBRARY.GSV);

	// gsv.SourceCompletion

	Linker.link(gtk_source_completion_add_provider, \"gtk_source_completion_add_provider\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_remove_provider, \"gtk_source_completion_remove_provider\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_get_providers, \"gtk_source_completion_get_providers\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_show, \"gtk_source_completion_show\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_hide, \"gtk_source_completion_hide\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_get_info_window, \"gtk_source_completion_get_info_window\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_get_view, \"gtk_source_completion_get_view\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_create_context, \"gtk_source_completion_create_context\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_move_window, \"gtk_source_completion_move_window\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_block_interactive, \"gtk_source_completion_block_interactive\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_unblock_interactive, \"gtk_source_completion_unblock_interactive\", LIBRARY.GSV);

	// gsv.SourceCompletionContext

	Linker.link(gtk_source_completion_context_add_proposals, \"gtk_source_completion_context_add_proposals\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_context_get_iter, \"gtk_source_completion_context_get_iter\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_context_get_activation, \"gtk_source_completion_context_get_activation\", LIBRARY.GSV);

	// gsv.SourceCompletionInfo

	Linker.link(gtk_source_completion_info_new, \"gtk_source_completion_info_new\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_info_move_to_iter, \"gtk_source_completion_info_move_to_iter\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_info_set_widget, \"gtk_source_completion_info_set_widget\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_info_get_widget, \"gtk_source_completion_info_get_widget\", LIBRARY.GSV);

	// gsv.SourceCompletionItem

	Linker.link(gtk_source_completion_item_new, \"gtk_source_completion_item_new\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_item_new_with_markup, \"gtk_source_completion_item_new_with_markup\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_item_new_from_stock, \"gtk_source_completion_item_new_from_stock\", LIBRARY.GSV);

	// gsv.SourceCompletionProposalT


	// gsv.SourceCompletionProposalT

	Linker.link(gtk_source_completion_proposal_get_label, \"gtk_source_completion_proposal_get_label\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_get_markup, \"gtk_source_completion_proposal_get_markup\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_get_text, \"gtk_source_completion_proposal_get_text\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_get_icon, \"gtk_source_completion_proposal_get_icon\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_get_info, \"gtk_source_completion_proposal_get_info\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_changed, \"gtk_source_completion_proposal_changed\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_hash, \"gtk_source_completion_proposal_hash\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_proposal_equal, \"gtk_source_completion_proposal_equal\", LIBRARY.GSV);

	// gsv.SourceCompletionProviderT


	// gsv.SourceCompletionProviderT

	Linker.link(gtk_source_completion_provider_get_name, \"gtk_source_completion_provider_get_name\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_icon, \"gtk_source_completion_provider_get_icon\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_populate, \"gtk_source_completion_provider_populate\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_activation, \"gtk_source_completion_provider_get_activation\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_match, \"gtk_source_completion_provider_match\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_info_widget, \"gtk_source_completion_provider_get_info_widget\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_update_info, \"gtk_source_completion_provider_update_info\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_start_iter, \"gtk_source_completion_provider_get_start_iter\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_activate_proposal, \"gtk_source_completion_provider_activate_proposal\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_interactive_delay, \"gtk_source_completion_provider_get_interactive_delay\", LIBRARY.GSV);
	Linker.link(gtk_source_completion_provider_get_priority, \"gtk_source_completion_provider_get_priority\", LIBRARY.GSV);

	// gsv.SourceCompletionProvider

}");

mixin( gshared ~"extern(C)
{
	// gsv.SourceBuffer

	GtkSourceBuffer* function(GtkTextTagTable* table) c_gtk_source_buffer_new;
	GtkSourceBuffer* function(GtkSourceLanguage* language) c_gtk_source_buffer_new_with_language;
	void function(GtkSourceBuffer* buffer, gboolean highlight) c_gtk_source_buffer_set_highlight_syntax;
	gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_syntax;
	void function(GtkSourceBuffer* buffer, GtkSourceLanguage* language) c_gtk_source_buffer_set_language;
	GtkSourceLanguage* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_language;
	void function(GtkSourceBuffer* buffer, gboolean highlight) c_gtk_source_buffer_set_highlight_matching_brackets;
	gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_matching_brackets;
	void function(GtkSourceBuffer* buffer, GtkSourceStyleScheme* scheme) c_gtk_source_buffer_set_style_scheme;
	GtkSourceStyleScheme* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_style_scheme;
	gint function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_max_undo_levels;
	void function(GtkSourceBuffer* buffer, gint maxUndoLevels) c_gtk_source_buffer_set_max_undo_levels;
	void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_redo;
	void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_undo;
	gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_can_redo;
	gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_can_undo;
	void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_begin_not_undoable_action;
	void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_end_not_undoable_action;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_ensure_highlight;
	GtkSourceMark* function(GtkSourceBuffer* buffer, gchar* name, gchar* category, GtkTextIter* where) c_gtk_source_buffer_create_source_mark;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_forward_iter_to_source_mark;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_backward_iter_to_source_mark;
	GSList* function(GtkSourceBuffer* buffer, gint line, gchar* category) c_gtk_source_buffer_get_source_marks_at_line;
	GSList* function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_get_source_marks_at_iter;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gchar* category) c_gtk_source_buffer_remove_source_marks;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* contextClass) c_gtk_source_buffer_iter_has_context_class;
	gchar** function(GtkSourceBuffer* buffer, GtkTextIter* iter) c_gtk_source_buffer_get_context_classes_at_iter;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* contextClass) c_gtk_source_buffer_iter_forward_to_context_class_toggle;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* contextClass) c_gtk_source_buffer_iter_backward_to_context_class_toggle;
	GtkSourceUndoManager* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_undo_manager;
	void function(GtkSourceBuffer* buffer, GtkSourceUndoManager* manager) c_gtk_source_buffer_set_undo_manager;

	// gsv.SourceCompletion

	gboolean function(GtkSourceCompletion* completion, GtkSourceCompletionProvider* provider, GError** error) c_gtk_source_completion_add_provider;
	gboolean function(GtkSourceCompletion* completion, GtkSourceCompletionProvider* provider, GError** error) c_gtk_source_completion_remove_provider;
	GList* function(GtkSourceCompletion* completion) c_gtk_source_completion_get_providers;
	gboolean function(GtkSourceCompletion* completion, GList* providers, GtkSourceCompletionContext* context) c_gtk_source_completion_show;
	void function(GtkSourceCompletion* completion) c_gtk_source_completion_hide;
	GtkSourceCompletionInfo* function(GtkSourceCompletion* completion) c_gtk_source_completion_get_info_window;
	GtkSourceView* function(GtkSourceCompletion* completion) c_gtk_source_completion_get_view;
	GtkSourceCompletionContext* function(GtkSourceCompletion* completion, GtkTextIter* position) c_gtk_source_completion_create_context;
	void function(GtkSourceCompletion* completion, GtkTextIter* iter) c_gtk_source_completion_move_window;
	void function(GtkSourceCompletion* completion) c_gtk_source_completion_block_interactive;
	void function(GtkSourceCompletion* completion) c_gtk_source_completion_unblock_interactive;

	// gsv.SourceCompletionContext

	void function(GtkSourceCompletionContext* context, GtkSourceCompletionProvider* provider, GList* proposals, gboolean finished) c_gtk_source_completion_context_add_proposals;
	void function(GtkSourceCompletionContext* context, GtkTextIter* iter) c_gtk_source_completion_context_get_iter;
	GtkSourceCompletionActivation function(GtkSourceCompletionContext* context) c_gtk_source_completion_context_get_activation;

	// gsv.SourceCompletionInfo

	GtkSourceCompletionInfo* function() c_gtk_source_completion_info_new;
	void function(GtkSourceCompletionInfo* info, GtkTextView* view, GtkTextIter* iter) c_gtk_source_completion_info_move_to_iter;
	void function(GtkSourceCompletionInfo* info, GtkWidget* widget) c_gtk_source_completion_info_set_widget;
	GtkWidget* function(GtkSourceCompletionInfo* info) c_gtk_source_completion_info_get_widget;

	// gsv.SourceCompletionItem

	GtkSourceCompletionItem* function(gchar* label, gchar* text, GdkPixbuf* icon, gchar* info) c_gtk_source_completion_item_new;
	GtkSourceCompletionItem* function(gchar* markup, gchar* text, GdkPixbuf* icon, gchar* info) c_gtk_source_completion_item_new_with_markup;
	GtkSourceCompletionItem* function(gchar* label, gchar* text, gchar* stock, gchar* info) c_gtk_source_completion_item_new_from_stock;

	// gsv.SourceCompletionProposalT


	// gsv.SourceCompletionProposalT

	gchar* function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_get_label;
	gchar* function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_get_markup;
	gchar* function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_get_text;
	GdkPixbuf* function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_get_icon;
	gchar* function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_get_info;
	void function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_changed;
	guint function(GtkSourceCompletionProposal* proposal) c_gtk_source_completion_proposal_hash;
	gboolean function(GtkSourceCompletionProposal* proposal, GtkSourceCompletionProposal* other) c_gtk_source_completion_proposal_equal;

	// gsv.SourceCompletionProviderT


	// gsv.SourceCompletionProviderT

	gchar* function(GtkSourceCompletionProvider* provider) c_gtk_source_completion_provider_get_name;
	GdkPixbuf* function(GtkSourceCompletionProvider* provider) c_gtk_source_completion_provider_get_icon;
	void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) c_gtk_source_completion_provider_populate;
	GtkSourceCompletionActivation function(GtkSourceCompletionProvider* provider) c_gtk_source_completion_provider_get_activation;
	gboolean function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context) c_gtk_source_completion_provider_match;
	GtkWidget* function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal) c_gtk_source_completion_provider_get_info_widget;
	void function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkSourceCompletionInfo* info) c_gtk_source_completion_provider_update_info;
	gboolean function(GtkSourceCompletionProvider* provider, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) c_gtk_source_completion_provider_get_start_iter;
	gboolean function(GtkSourceCompletionProvider* provider, GtkSourceCompletionProposal* proposal, GtkTextIter* iter) c_gtk_source_completion_provider_activate_proposal;
	gint function(GtkSourceCompletionProvider* provider) c_gtk_source_completion_provider_get_interactive_delay;
	gint function(GtkSourceCompletionProvider* provider) c_gtk_source_completion_provider_get_priority;

	// gsv.SourceCompletionProvider

}");

// gsv.SourceBuffer

alias c_gtk_source_buffer_new  gtk_source_buffer_new;
alias c_gtk_source_buffer_new_with_language  gtk_source_buffer_new_with_language;
alias c_gtk_source_buffer_set_highlight_syntax  gtk_source_buffer_set_highlight_syntax;
alias c_gtk_source_buffer_get_highlight_syntax  gtk_source_buffer_get_highlight_syntax;
alias c_gtk_source_buffer_set_language  gtk_source_buffer_set_language;
alias c_gtk_source_buffer_get_language  gtk_source_buffer_get_language;
alias c_gtk_source_buffer_set_highlight_matching_brackets  gtk_source_buffer_set_highlight_matching_brackets;
alias c_gtk_source_buffer_get_highlight_matching_brackets  gtk_source_buffer_get_highlight_matching_brackets;
alias c_gtk_source_buffer_set_style_scheme  gtk_source_buffer_set_style_scheme;
alias c_gtk_source_buffer_get_style_scheme  gtk_source_buffer_get_style_scheme;
alias c_gtk_source_buffer_get_max_undo_levels  gtk_source_buffer_get_max_undo_levels;
alias c_gtk_source_buffer_set_max_undo_levels  gtk_source_buffer_set_max_undo_levels;
alias c_gtk_source_buffer_redo  gtk_source_buffer_redo;
alias c_gtk_source_buffer_undo  gtk_source_buffer_undo;
alias c_gtk_source_buffer_can_redo  gtk_source_buffer_can_redo;
alias c_gtk_source_buffer_can_undo  gtk_source_buffer_can_undo;
alias c_gtk_source_buffer_begin_not_undoable_action  gtk_source_buffer_begin_not_undoable_action;
alias c_gtk_source_buffer_end_not_undoable_action  gtk_source_buffer_end_not_undoable_action;
alias c_gtk_source_buffer_ensure_highlight  gtk_source_buffer_ensure_highlight;
alias c_gtk_source_buffer_create_source_mark  gtk_source_buffer_create_source_mark;
alias c_gtk_source_buffer_forward_iter_to_source_mark  gtk_source_buffer_forward_iter_to_source_mark;
alias c_gtk_source_buffer_backward_iter_to_source_mark  gtk_source_buffer_backward_iter_to_source_mark;
alias c_gtk_source_buffer_get_source_marks_at_line  gtk_source_buffer_get_source_marks_at_line;
alias c_gtk_source_buffer_get_source_marks_at_iter  gtk_source_buffer_get_source_marks_at_iter;
alias c_gtk_source_buffer_remove_source_marks  gtk_source_buffer_remove_source_marks;
alias c_gtk_source_buffer_iter_has_context_class  gtk_source_buffer_iter_has_context_class;
alias c_gtk_source_buffer_get_context_classes_at_iter  gtk_source_buffer_get_context_classes_at_iter;
alias c_gtk_source_buffer_iter_forward_to_context_class_toggle  gtk_source_buffer_iter_forward_to_context_class_toggle;
alias c_gtk_source_buffer_iter_backward_to_context_class_toggle  gtk_source_buffer_iter_backward_to_context_class_toggle;
alias c_gtk_source_buffer_get_undo_manager  gtk_source_buffer_get_undo_manager;
alias c_gtk_source_buffer_set_undo_manager  gtk_source_buffer_set_undo_manager;

// gsv.SourceCompletion

alias c_gtk_source_completion_add_provider  gtk_source_completion_add_provider;
alias c_gtk_source_completion_remove_provider  gtk_source_completion_remove_provider;
alias c_gtk_source_completion_get_providers  gtk_source_completion_get_providers;
alias c_gtk_source_completion_show  gtk_source_completion_show;
alias c_gtk_source_completion_hide  gtk_source_completion_hide;
alias c_gtk_source_completion_get_info_window  gtk_source_completion_get_info_window;
alias c_gtk_source_completion_get_view  gtk_source_completion_get_view;
alias c_gtk_source_completion_create_context  gtk_source_completion_create_context;
alias c_gtk_source_completion_move_window  gtk_source_completion_move_window;
alias c_gtk_source_completion_block_interactive  gtk_source_completion_block_interactive;
alias c_gtk_source_completion_unblock_interactive  gtk_source_completion_unblock_interactive;

// gsv.SourceCompletionContext

alias c_gtk_source_completion_context_add_proposals  gtk_source_completion_context_add_proposals;
alias c_gtk_source_completion_context_get_iter  gtk_source_completion_context_get_iter;
alias c_gtk_source_completion_context_get_activation  gtk_source_completion_context_get_activation;

// gsv.SourceCompletionInfo

alias c_gtk_source_completion_info_new  gtk_source_completion_info_new;
alias c_gtk_source_completion_info_move_to_iter  gtk_source_completion_info_move_to_iter;
alias c_gtk_source_completion_info_set_widget  gtk_source_completion_info_set_widget;
alias c_gtk_source_completion_info_get_widget  gtk_source_completion_info_get_widget;

// gsv.SourceCompletionItem

alias c_gtk_source_completion_item_new  gtk_source_completion_item_new;
alias c_gtk_source_completion_item_new_with_markup  gtk_source_completion_item_new_with_markup;
alias c_gtk_source_completion_item_new_from_stock  gtk_source_completion_item_new_from_stock;

// gsv.SourceCompletionProposalT


// gsv.SourceCompletionProposalT

alias c_gtk_source_completion_proposal_get_label  gtk_source_completion_proposal_get_label;
alias c_gtk_source_completion_proposal_get_markup  gtk_source_completion_proposal_get_markup;
alias c_gtk_source_completion_proposal_get_text  gtk_source_completion_proposal_get_text;
alias c_gtk_source_completion_proposal_get_icon  gtk_source_completion_proposal_get_icon;
alias c_gtk_source_completion_proposal_get_info  gtk_source_completion_proposal_get_info;
alias c_gtk_source_completion_proposal_changed  gtk_source_completion_proposal_changed;
alias c_gtk_source_completion_proposal_hash  gtk_source_completion_proposal_hash;
alias c_gtk_source_completion_proposal_equal  gtk_source_completion_proposal_equal;

// gsv.SourceCompletionProviderT


// gsv.SourceCompletionProviderT

alias c_gtk_source_completion_provider_get_name  gtk_source_completion_provider_get_name;
alias c_gtk_source_completion_provider_get_icon  gtk_source_completion_provider_get_icon;
alias c_gtk_source_completion_provider_populate  gtk_source_completion_provider_populate;
alias c_gtk_source_completion_provider_get_activation  gtk_source_completion_provider_get_activation;
alias c_gtk_source_completion_provider_match  gtk_source_completion_provider_match;
alias c_gtk_source_completion_provider_get_info_widget  gtk_source_completion_provider_get_info_widget;
alias c_gtk_source_completion_provider_update_info  gtk_source_completion_provider_update_info;
alias c_gtk_source_completion_provider_get_start_iter  gtk_source_completion_provider_get_start_iter;
alias c_gtk_source_completion_provider_activate_proposal  gtk_source_completion_provider_activate_proposal;
alias c_gtk_source_completion_provider_get_interactive_delay  gtk_source_completion_provider_get_interactive_delay;
alias c_gtk_source_completion_provider_get_priority  gtk_source_completion_provider_get_priority;

// gsv.SourceCompletionProvider

