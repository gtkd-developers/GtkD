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


module sourceview.c.functions;

import std.stdio;
import sourceview.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5-0.dll;gtksourceview-5-5.0.dll;gtksourceview-5.dll"];
else version (OSX)
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5.0.dylib"];
else
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5.so.0"];

shared static this()
{
	// sourceview.Buffer

	Linker.link(gtk_source_buffer_get_type, "gtk_source_buffer_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_new, "gtk_source_buffer_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_new_with_language, "gtk_source_buffer_new_with_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_backward_iter_to_source_mark, "gtk_source_buffer_backward_iter_to_source_mark", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_change_case, "gtk_source_buffer_change_case", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_create_source_mark, "gtk_source_buffer_create_source_mark", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_create_source_tag, "gtk_source_buffer_create_source_tag", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_ensure_highlight, "gtk_source_buffer_ensure_highlight", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_forward_iter_to_source_mark, "gtk_source_buffer_forward_iter_to_source_mark", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_context_classes_at_iter, "gtk_source_buffer_get_context_classes_at_iter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_highlight_matching_brackets, "gtk_source_buffer_get_highlight_matching_brackets", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_highlight_syntax, "gtk_source_buffer_get_highlight_syntax", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_implicit_trailing_newline, "gtk_source_buffer_get_implicit_trailing_newline", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_language, "gtk_source_buffer_get_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_source_marks_at_iter, "gtk_source_buffer_get_source_marks_at_iter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_source_marks_at_line, "gtk_source_buffer_get_source_marks_at_line", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_get_style_scheme, "gtk_source_buffer_get_style_scheme", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_iter_backward_to_context_class_toggle, "gtk_source_buffer_iter_backward_to_context_class_toggle", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_iter_forward_to_context_class_toggle, "gtk_source_buffer_iter_forward_to_context_class_toggle", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_iter_has_context_class, "gtk_source_buffer_iter_has_context_class", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_join_lines, "gtk_source_buffer_join_lines", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_remove_source_marks, "gtk_source_buffer_remove_source_marks", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_set_highlight_matching_brackets, "gtk_source_buffer_set_highlight_matching_brackets", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_set_highlight_syntax, "gtk_source_buffer_set_highlight_syntax", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_set_implicit_trailing_newline, "gtk_source_buffer_set_implicit_trailing_newline", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_set_language, "gtk_source_buffer_set_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_set_style_scheme, "gtk_source_buffer_set_style_scheme", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_buffer_sort_lines, "gtk_source_buffer_sort_lines", LIBRARY_SOURCEVIEW);

	// sourceview.Completion

	Linker.link(gtk_source_completion_get_type, "gtk_source_completion_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_fuzzy_highlight, "gtk_source_completion_fuzzy_highlight", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_fuzzy_match, "gtk_source_completion_fuzzy_match", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_add_provider, "gtk_source_completion_add_provider", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_block_interactive, "gtk_source_completion_block_interactive", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_get_buffer, "gtk_source_completion_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_get_page_size, "gtk_source_completion_get_page_size", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_get_view, "gtk_source_completion_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_hide, "gtk_source_completion_hide", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_remove_provider, "gtk_source_completion_remove_provider", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_set_page_size, "gtk_source_completion_set_page_size", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_show, "gtk_source_completion_show", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_unblock_interactive, "gtk_source_completion_unblock_interactive", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionCell

	Linker.link(gtk_source_completion_cell_get_type, "gtk_source_completion_cell_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_get_column, "gtk_source_completion_cell_get_column", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_get_widget, "gtk_source_completion_cell_get_widget", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_gicon, "gtk_source_completion_cell_set_gicon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_icon_name, "gtk_source_completion_cell_set_icon_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_markup, "gtk_source_completion_cell_set_markup", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_paintable, "gtk_source_completion_cell_set_paintable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_text, "gtk_source_completion_cell_set_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_text_with_attributes, "gtk_source_completion_cell_set_text_with_attributes", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_cell_set_widget, "gtk_source_completion_cell_set_widget", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionContext

	Linker.link(gtk_source_completion_context_get_type, "gtk_source_completion_context_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_activation, "gtk_source_completion_context_get_activation", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_bounds, "gtk_source_completion_context_get_bounds", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_buffer, "gtk_source_completion_context_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_busy, "gtk_source_completion_context_get_busy", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_completion, "gtk_source_completion_context_get_completion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_empty, "gtk_source_completion_context_get_empty", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_language, "gtk_source_completion_context_get_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_view, "gtk_source_completion_context_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_get_word, "gtk_source_completion_context_get_word", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_context_set_proposals_for_provider, "gtk_source_completion_context_set_proposals_for_provider", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionProposal

	Linker.link(gtk_source_completion_proposal_get_type, "gtk_source_completion_proposal_get_type", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionProvider

	Linker.link(gtk_source_completion_provider_get_type, "gtk_source_completion_provider_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_activate, "gtk_source_completion_provider_activate", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_display, "gtk_source_completion_provider_display", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_get_priority, "gtk_source_completion_provider_get_priority", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_get_title, "gtk_source_completion_provider_get_title", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_is_trigger, "gtk_source_completion_provider_is_trigger", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_key_activates, "gtk_source_completion_provider_key_activates", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_list_alternates, "gtk_source_completion_provider_list_alternates", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_populate_async, "gtk_source_completion_provider_populate_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_populate_finish, "gtk_source_completion_provider_populate_finish", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_provider_refilter, "gtk_source_completion_provider_refilter", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionSnippets

	Linker.link(gtk_source_completion_snippets_get_type, "gtk_source_completion_snippets_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_snippets_new, "gtk_source_completion_snippets_new", LIBRARY_SOURCEVIEW);

	// sourceview.CompletionWords

	Linker.link(gtk_source_completion_words_get_type, "gtk_source_completion_words_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_words_new, "gtk_source_completion_words_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_words_register, "gtk_source_completion_words_register", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_completion_words_unregister, "gtk_source_completion_words_unregister", LIBRARY_SOURCEVIEW);

	// sourceview.Encoding

	Linker.link(gtk_source_encoding_get_type, "gtk_source_encoding_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_copy, "gtk_source_encoding_copy", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_free, "gtk_source_encoding_free", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_charset, "gtk_source_encoding_get_charset", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_name, "gtk_source_encoding_get_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_to_string, "gtk_source_encoding_to_string", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_all, "gtk_source_encoding_get_all", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_current, "gtk_source_encoding_get_current", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_default_candidates, "gtk_source_encoding_get_default_candidates", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_from_charset, "gtk_source_encoding_get_from_charset", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_encoding_get_utf8, "gtk_source_encoding_get_utf8", LIBRARY_SOURCEVIEW);

	// sourceview.File

	Linker.link(gtk_source_file_get_type, "gtk_source_file_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_new, "gtk_source_file_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_check_file_on_disk, "gtk_source_file_check_file_on_disk", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_get_compression_type, "gtk_source_file_get_compression_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_get_encoding, "gtk_source_file_get_encoding", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_get_location, "gtk_source_file_get_location", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_get_newline_type, "gtk_source_file_get_newline_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_is_deleted, "gtk_source_file_is_deleted", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_is_externally_modified, "gtk_source_file_is_externally_modified", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_is_local, "gtk_source_file_is_local", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_is_readonly, "gtk_source_file_is_readonly", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_set_location, "gtk_source_file_set_location", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_set_mount_operation_factory, "gtk_source_file_set_mount_operation_factory", LIBRARY_SOURCEVIEW);

	// sourceview.FileLoader

	Linker.link(gtk_source_file_loader_get_type, "gtk_source_file_loader_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_new, "gtk_source_file_loader_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_new_from_stream, "gtk_source_file_loader_new_from_stream", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_buffer, "gtk_source_file_loader_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_compression_type, "gtk_source_file_loader_get_compression_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_encoding, "gtk_source_file_loader_get_encoding", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_file, "gtk_source_file_loader_get_file", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_input_stream, "gtk_source_file_loader_get_input_stream", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_location, "gtk_source_file_loader_get_location", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_get_newline_type, "gtk_source_file_loader_get_newline_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_load_async, "gtk_source_file_loader_load_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_load_finish, "gtk_source_file_loader_load_finish", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_loader_set_candidate_encodings, "gtk_source_file_loader_set_candidate_encodings", LIBRARY_SOURCEVIEW);

	// sourceview.FileSaver

	Linker.link(gtk_source_file_saver_get_type, "gtk_source_file_saver_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_new, "gtk_source_file_saver_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_new_with_target, "gtk_source_file_saver_new_with_target", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_buffer, "gtk_source_file_saver_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_compression_type, "gtk_source_file_saver_get_compression_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_encoding, "gtk_source_file_saver_get_encoding", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_file, "gtk_source_file_saver_get_file", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_flags, "gtk_source_file_saver_get_flags", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_location, "gtk_source_file_saver_get_location", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_get_newline_type, "gtk_source_file_saver_get_newline_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_save_async, "gtk_source_file_saver_save_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_save_finish, "gtk_source_file_saver_save_finish", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_set_compression_type, "gtk_source_file_saver_set_compression_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_set_encoding, "gtk_source_file_saver_set_encoding", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_set_flags, "gtk_source_file_saver_set_flags", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_file_saver_set_newline_type, "gtk_source_file_saver_set_newline_type", LIBRARY_SOURCEVIEW);

	// sourceview.Gutter

	Linker.link(gtk_source_gutter_get_type, "gtk_source_gutter_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_get_view, "gtk_source_gutter_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_insert, "gtk_source_gutter_insert", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_remove, "gtk_source_gutter_remove", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_reorder, "gtk_source_gutter_reorder", LIBRARY_SOURCEVIEW);

	// sourceview.GutterLines

	Linker.link(gtk_source_gutter_lines_get_type, "gtk_source_gutter_lines_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_add_class, "gtk_source_gutter_lines_add_class", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_add_qclass, "gtk_source_gutter_lines_add_qclass", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_buffer, "gtk_source_gutter_lines_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_first, "gtk_source_gutter_lines_get_first", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_iter_at_line, "gtk_source_gutter_lines_get_iter_at_line", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_last, "gtk_source_gutter_lines_get_last", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_line_yrange, "gtk_source_gutter_lines_get_line_yrange", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_get_view, "gtk_source_gutter_lines_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_has_class, "gtk_source_gutter_lines_has_class", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_has_qclass, "gtk_source_gutter_lines_has_qclass", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_is_cursor, "gtk_source_gutter_lines_is_cursor", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_is_prelit, "gtk_source_gutter_lines_is_prelit", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_is_selected, "gtk_source_gutter_lines_is_selected", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_remove_class, "gtk_source_gutter_lines_remove_class", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_lines_remove_qclass, "gtk_source_gutter_lines_remove_qclass", LIBRARY_SOURCEVIEW);

	// sourceview.GutterRenderer

	Linker.link(gtk_source_gutter_renderer_get_type, "gtk_source_gutter_renderer_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_activate, "gtk_source_gutter_renderer_activate", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_align_cell, "gtk_source_gutter_renderer_align_cell", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_alignment_mode, "gtk_source_gutter_renderer_get_alignment_mode", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_buffer, "gtk_source_gutter_renderer_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_view, "gtk_source_gutter_renderer_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_xalign, "gtk_source_gutter_renderer_get_xalign", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_xpad, "gtk_source_gutter_renderer_get_xpad", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_yalign, "gtk_source_gutter_renderer_get_yalign", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_get_ypad, "gtk_source_gutter_renderer_get_ypad", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_query_activatable, "gtk_source_gutter_renderer_query_activatable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_set_alignment_mode, "gtk_source_gutter_renderer_set_alignment_mode", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_set_xalign, "gtk_source_gutter_renderer_set_xalign", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_set_xpad, "gtk_source_gutter_renderer_set_xpad", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_set_yalign, "gtk_source_gutter_renderer_set_yalign", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_set_ypad, "gtk_source_gutter_renderer_set_ypad", LIBRARY_SOURCEVIEW);

	// sourceview.GutterRendererPixbuf

	Linker.link(gtk_source_gutter_renderer_pixbuf_get_type, "gtk_source_gutter_renderer_pixbuf_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_new, "gtk_source_gutter_renderer_pixbuf_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_get_gicon, "gtk_source_gutter_renderer_pixbuf_get_gicon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_get_icon_name, "gtk_source_gutter_renderer_pixbuf_get_icon_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_get_paintable, "gtk_source_gutter_renderer_pixbuf_get_paintable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_get_pixbuf, "gtk_source_gutter_renderer_pixbuf_get_pixbuf", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_overlay_paintable, "gtk_source_gutter_renderer_pixbuf_overlay_paintable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_set_gicon, "gtk_source_gutter_renderer_pixbuf_set_gicon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_set_icon_name, "gtk_source_gutter_renderer_pixbuf_set_icon_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_set_paintable, "gtk_source_gutter_renderer_pixbuf_set_paintable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_pixbuf_set_pixbuf, "gtk_source_gutter_renderer_pixbuf_set_pixbuf", LIBRARY_SOURCEVIEW);

	// sourceview.GutterRendererText

	Linker.link(gtk_source_gutter_renderer_text_get_type, "gtk_source_gutter_renderer_text_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_text_new, "gtk_source_gutter_renderer_text_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_text_measure, "gtk_source_gutter_renderer_text_measure", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_text_measure_markup, "gtk_source_gutter_renderer_text_measure_markup", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_text_set_markup, "gtk_source_gutter_renderer_text_set_markup", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_gutter_renderer_text_set_text, "gtk_source_gutter_renderer_text_set_text", LIBRARY_SOURCEVIEW);

	// sourceview.Hover

	Linker.link(gtk_source_hover_get_type, "gtk_source_hover_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_add_provider, "gtk_source_hover_add_provider", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_remove_provider, "gtk_source_hover_remove_provider", LIBRARY_SOURCEVIEW);

	// sourceview.HoverContext

	Linker.link(gtk_source_hover_context_get_type, "gtk_source_hover_context_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_context_get_bounds, "gtk_source_hover_context_get_bounds", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_context_get_buffer, "gtk_source_hover_context_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_context_get_iter, "gtk_source_hover_context_get_iter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_context_get_view, "gtk_source_hover_context_get_view", LIBRARY_SOURCEVIEW);

	// sourceview.HoverDisplay

	Linker.link(gtk_source_hover_display_get_type, "gtk_source_hover_display_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_display_append, "gtk_source_hover_display_append", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_display_insert_after, "gtk_source_hover_display_insert_after", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_display_prepend, "gtk_source_hover_display_prepend", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_display_remove, "gtk_source_hover_display_remove", LIBRARY_SOURCEVIEW);

	// sourceview.HoverProvider

	Linker.link(gtk_source_hover_provider_get_type, "gtk_source_hover_provider_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_provider_populate_async, "gtk_source_hover_provider_populate_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_hover_provider_populate_finish, "gtk_source_hover_provider_populate_finish", LIBRARY_SOURCEVIEW);

	// sourceview.Indenter

	Linker.link(gtk_source_indenter_get_type, "gtk_source_indenter_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_indenter_indent, "gtk_source_indenter_indent", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_indenter_is_trigger, "gtk_source_indenter_is_trigger", LIBRARY_SOURCEVIEW);

	// sourceview.Language

	Linker.link(gtk_source_language_get_type, "gtk_source_language_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_globs, "gtk_source_language_get_globs", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_hidden, "gtk_source_language_get_hidden", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_id, "gtk_source_language_get_id", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_metadata, "gtk_source_language_get_metadata", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_mime_types, "gtk_source_language_get_mime_types", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_name, "gtk_source_language_get_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_section, "gtk_source_language_get_section", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_style_fallback, "gtk_source_language_get_style_fallback", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_style_ids, "gtk_source_language_get_style_ids", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_get_style_name, "gtk_source_language_get_style_name", LIBRARY_SOURCEVIEW);

	// sourceview.LanguageManager

	Linker.link(gtk_source_language_manager_get_type, "gtk_source_language_manager_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_new, "gtk_source_language_manager_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_get_default, "gtk_source_language_manager_get_default", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_append_search_path, "gtk_source_language_manager_append_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_get_language, "gtk_source_language_manager_get_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_get_language_ids, "gtk_source_language_manager_get_language_ids", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_get_search_path, "gtk_source_language_manager_get_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_guess_language, "gtk_source_language_manager_guess_language", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_prepend_search_path, "gtk_source_language_manager_prepend_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_language_manager_set_search_path, "gtk_source_language_manager_set_search_path", LIBRARY_SOURCEVIEW);

	// sourceview.Map

	Linker.link(gtk_source_map_get_type, "gtk_source_map_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_map_new, "gtk_source_map_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_map_get_view, "gtk_source_map_get_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_map_set_view, "gtk_source_map_set_view", LIBRARY_SOURCEVIEW);

	// sourceview.Mark

	Linker.link(gtk_source_mark_get_type, "gtk_source_mark_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_new, "gtk_source_mark_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_get_category, "gtk_source_mark_get_category", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_next, "gtk_source_mark_next", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_prev, "gtk_source_mark_prev", LIBRARY_SOURCEVIEW);

	// sourceview.MarkAttributes

	Linker.link(gtk_source_mark_attributes_get_type, "gtk_source_mark_attributes_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_new, "gtk_source_mark_attributes_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_background, "gtk_source_mark_attributes_get_background", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_gicon, "gtk_source_mark_attributes_get_gicon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_icon_name, "gtk_source_mark_attributes_get_icon_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_pixbuf, "gtk_source_mark_attributes_get_pixbuf", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_tooltip_markup, "gtk_source_mark_attributes_get_tooltip_markup", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_get_tooltip_text, "gtk_source_mark_attributes_get_tooltip_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_render_icon, "gtk_source_mark_attributes_render_icon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_set_background, "gtk_source_mark_attributes_set_background", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_set_gicon, "gtk_source_mark_attributes_set_gicon", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_set_icon_name, "gtk_source_mark_attributes_set_icon_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_mark_attributes_set_pixbuf, "gtk_source_mark_attributes_set_pixbuf", LIBRARY_SOURCEVIEW);

	// sourceview.PrintCompositor

	Linker.link(gtk_source_print_compositor_get_type, "gtk_source_print_compositor_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_new, "gtk_source_print_compositor_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_new_from_view, "gtk_source_print_compositor_new_from_view", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_draw_page, "gtk_source_print_compositor_draw_page", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_body_font_name, "gtk_source_print_compositor_get_body_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_bottom_margin, "gtk_source_print_compositor_get_bottom_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_buffer, "gtk_source_print_compositor_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_footer_font_name, "gtk_source_print_compositor_get_footer_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_header_font_name, "gtk_source_print_compositor_get_header_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_highlight_syntax, "gtk_source_print_compositor_get_highlight_syntax", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_left_margin, "gtk_source_print_compositor_get_left_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_line_numbers_font_name, "gtk_source_print_compositor_get_line_numbers_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_n_pages, "gtk_source_print_compositor_get_n_pages", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_pagination_progress, "gtk_source_print_compositor_get_pagination_progress", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_print_footer, "gtk_source_print_compositor_get_print_footer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_print_header, "gtk_source_print_compositor_get_print_header", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_print_line_numbers, "gtk_source_print_compositor_get_print_line_numbers", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_right_margin, "gtk_source_print_compositor_get_right_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_tab_width, "gtk_source_print_compositor_get_tab_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_top_margin, "gtk_source_print_compositor_get_top_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_get_wrap_mode, "gtk_source_print_compositor_get_wrap_mode", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_ignore_tag, "gtk_source_print_compositor_ignore_tag", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_paginate, "gtk_source_print_compositor_paginate", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_body_font_name, "gtk_source_print_compositor_set_body_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_bottom_margin, "gtk_source_print_compositor_set_bottom_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_footer_font_name, "gtk_source_print_compositor_set_footer_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_footer_format, "gtk_source_print_compositor_set_footer_format", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_header_font_name, "gtk_source_print_compositor_set_header_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_header_format, "gtk_source_print_compositor_set_header_format", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_highlight_syntax, "gtk_source_print_compositor_set_highlight_syntax", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_left_margin, "gtk_source_print_compositor_set_left_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_line_numbers_font_name, "gtk_source_print_compositor_set_line_numbers_font_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_print_footer, "gtk_source_print_compositor_set_print_footer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_print_header, "gtk_source_print_compositor_set_print_header", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_print_line_numbers, "gtk_source_print_compositor_set_print_line_numbers", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_right_margin, "gtk_source_print_compositor_set_right_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_tab_width, "gtk_source_print_compositor_set_tab_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_top_margin, "gtk_source_print_compositor_set_top_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_print_compositor_set_wrap_mode, "gtk_source_print_compositor_set_wrap_mode", LIBRARY_SOURCEVIEW);

	// sourceview.Region

	Linker.link(gtk_source_region_get_type, "gtk_source_region_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_new, "gtk_source_region_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_add_region, "gtk_source_region_add_region", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_add_subregion, "gtk_source_region_add_subregion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_get_bounds, "gtk_source_region_get_bounds", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_get_buffer, "gtk_source_region_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_get_start_region_iter, "gtk_source_region_get_start_region_iter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_intersect_region, "gtk_source_region_intersect_region", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_intersect_subregion, "gtk_source_region_intersect_subregion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_is_empty, "gtk_source_region_is_empty", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_subtract_region, "gtk_source_region_subtract_region", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_subtract_subregion, "gtk_source_region_subtract_subregion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_to_string, "gtk_source_region_to_string", LIBRARY_SOURCEVIEW);

	// sourceview.RegionIter

	Linker.link(gtk_source_region_iter_get_subregion, "gtk_source_region_iter_get_subregion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_iter_is_end, "gtk_source_region_iter_is_end", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_region_iter_next, "gtk_source_region_iter_next", LIBRARY_SOURCEVIEW);

	// sourceview.SearchContext

	Linker.link(gtk_source_search_context_get_type, "gtk_source_search_context_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_new, "gtk_source_search_context_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_backward, "gtk_source_search_context_backward", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_backward_async, "gtk_source_search_context_backward_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_backward_finish, "gtk_source_search_context_backward_finish", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_forward, "gtk_source_search_context_forward", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_forward_async, "gtk_source_search_context_forward_async", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_forward_finish, "gtk_source_search_context_forward_finish", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_buffer, "gtk_source_search_context_get_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_highlight, "gtk_source_search_context_get_highlight", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_match_style, "gtk_source_search_context_get_match_style", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_occurrence_position, "gtk_source_search_context_get_occurrence_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_occurrences_count, "gtk_source_search_context_get_occurrences_count", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_regex_error, "gtk_source_search_context_get_regex_error", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_get_settings, "gtk_source_search_context_get_settings", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_replace, "gtk_source_search_context_replace", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_replace_all, "gtk_source_search_context_replace_all", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_set_highlight, "gtk_source_search_context_set_highlight", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_context_set_match_style, "gtk_source_search_context_set_match_style", LIBRARY_SOURCEVIEW);

	// sourceview.SearchSettings

	Linker.link(gtk_source_search_settings_get_type, "gtk_source_search_settings_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_new, "gtk_source_search_settings_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_get_at_word_boundaries, "gtk_source_search_settings_get_at_word_boundaries", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_get_case_sensitive, "gtk_source_search_settings_get_case_sensitive", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_get_regex_enabled, "gtk_source_search_settings_get_regex_enabled", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_get_search_text, "gtk_source_search_settings_get_search_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_get_wrap_around, "gtk_source_search_settings_get_wrap_around", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_set_at_word_boundaries, "gtk_source_search_settings_set_at_word_boundaries", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_set_case_sensitive, "gtk_source_search_settings_set_case_sensitive", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_set_regex_enabled, "gtk_source_search_settings_set_regex_enabled", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_set_search_text, "gtk_source_search_settings_set_search_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_search_settings_set_wrap_around, "gtk_source_search_settings_set_wrap_around", LIBRARY_SOURCEVIEW);

	// sourceview.Snippet

	Linker.link(gtk_source_snippet_get_type, "gtk_source_snippet_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_new, "gtk_source_snippet_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_add_chunk, "gtk_source_snippet_add_chunk", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_copy, "gtk_source_snippet_copy", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_context, "gtk_source_snippet_get_context", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_description, "gtk_source_snippet_get_description", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_focus_position, "gtk_source_snippet_get_focus_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_language_id, "gtk_source_snippet_get_language_id", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_n_chunks, "gtk_source_snippet_get_n_chunks", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_name, "gtk_source_snippet_get_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_nth_chunk, "gtk_source_snippet_get_nth_chunk", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_get_trigger, "gtk_source_snippet_get_trigger", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_set_description, "gtk_source_snippet_set_description", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_set_language_id, "gtk_source_snippet_set_language_id", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_set_name, "gtk_source_snippet_set_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_set_trigger, "gtk_source_snippet_set_trigger", LIBRARY_SOURCEVIEW);

	// sourceview.SnippetChunk

	Linker.link(gtk_source_snippet_chunk_get_type, "gtk_source_snippet_chunk_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_new, "gtk_source_snippet_chunk_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_copy, "gtk_source_snippet_chunk_copy", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_context, "gtk_source_snippet_chunk_get_context", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_focus_position, "gtk_source_snippet_chunk_get_focus_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_spec, "gtk_source_snippet_chunk_get_spec", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_text, "gtk_source_snippet_chunk_get_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_text_set, "gtk_source_snippet_chunk_get_text_set", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_get_tooltip_text, "gtk_source_snippet_chunk_get_tooltip_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_context, "gtk_source_snippet_chunk_set_context", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_focus_position, "gtk_source_snippet_chunk_set_focus_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_spec, "gtk_source_snippet_chunk_set_spec", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_text, "gtk_source_snippet_chunk_set_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_text_set, "gtk_source_snippet_chunk_set_text_set", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_chunk_set_tooltip_text, "gtk_source_snippet_chunk_set_tooltip_text", LIBRARY_SOURCEVIEW);

	// sourceview.SnippetContext

	Linker.link(gtk_source_snippet_context_get_type, "gtk_source_snippet_context_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_new, "gtk_source_snippet_context_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_clear_variables, "gtk_source_snippet_context_clear_variables", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_expand, "gtk_source_snippet_context_expand", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_get_variable, "gtk_source_snippet_context_get_variable", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_set_constant, "gtk_source_snippet_context_set_constant", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_set_line_prefix, "gtk_source_snippet_context_set_line_prefix", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_set_tab_width, "gtk_source_snippet_context_set_tab_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_set_use_spaces, "gtk_source_snippet_context_set_use_spaces", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_context_set_variable, "gtk_source_snippet_context_set_variable", LIBRARY_SOURCEVIEW);

	// sourceview.SnippetManager

	Linker.link(gtk_source_snippet_manager_get_type, "gtk_source_snippet_manager_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_get_default, "gtk_source_snippet_manager_get_default", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_get_search_path, "gtk_source_snippet_manager_get_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_get_snippet, "gtk_source_snippet_manager_get_snippet", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_list_groups, "gtk_source_snippet_manager_list_groups", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_list_matching, "gtk_source_snippet_manager_list_matching", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_snippet_manager_set_search_path, "gtk_source_snippet_manager_set_search_path", LIBRARY_SOURCEVIEW);

	// sourceview.SpaceDrawer

	Linker.link(gtk_source_space_drawer_get_type, "gtk_source_space_drawer_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_new, "gtk_source_space_drawer_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_bind_matrix_setting, "gtk_source_space_drawer_bind_matrix_setting", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_get_enable_matrix, "gtk_source_space_drawer_get_enable_matrix", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_get_matrix, "gtk_source_space_drawer_get_matrix", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_get_types_for_locations, "gtk_source_space_drawer_get_types_for_locations", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_set_enable_matrix, "gtk_source_space_drawer_set_enable_matrix", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_set_matrix, "gtk_source_space_drawer_set_matrix", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_space_drawer_set_types_for_locations, "gtk_source_space_drawer_set_types_for_locations", LIBRARY_SOURCEVIEW);

	// sourceview.Style

	Linker.link(gtk_source_style_get_type, "gtk_source_style_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_apply, "gtk_source_style_apply", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_copy, "gtk_source_style_copy", LIBRARY_SOURCEVIEW);

	// sourceview.StyleScheme

	Linker.link(gtk_source_style_scheme_get_type, "gtk_source_style_scheme_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_authors, "gtk_source_style_scheme_get_authors", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_description, "gtk_source_style_scheme_get_description", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_filename, "gtk_source_style_scheme_get_filename", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_id, "gtk_source_style_scheme_get_id", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_metadata, "gtk_source_style_scheme_get_metadata", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_name, "gtk_source_style_scheme_get_name", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_get_style, "gtk_source_style_scheme_get_style", LIBRARY_SOURCEVIEW);

	// sourceview.StyleSchemeChooser

	Linker.link(gtk_source_style_scheme_chooser_get_type, "gtk_source_style_scheme_chooser_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_chooser_get_style_scheme, "gtk_source_style_scheme_chooser_get_style_scheme", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_chooser_set_style_scheme, "gtk_source_style_scheme_chooser_set_style_scheme", LIBRARY_SOURCEVIEW);

	// sourceview.StyleSchemeChooserButton

	Linker.link(gtk_source_style_scheme_chooser_button_get_type, "gtk_source_style_scheme_chooser_button_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_chooser_button_new, "gtk_source_style_scheme_chooser_button_new", LIBRARY_SOURCEVIEW);

	// sourceview.StyleSchemeChooserWidget

	Linker.link(gtk_source_style_scheme_chooser_widget_get_type, "gtk_source_style_scheme_chooser_widget_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_chooser_widget_new, "gtk_source_style_scheme_chooser_widget_new", LIBRARY_SOURCEVIEW);

	// sourceview.StyleSchemeManager

	Linker.link(gtk_source_style_scheme_manager_get_type, "gtk_source_style_scheme_manager_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_new, "gtk_source_style_scheme_manager_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_get_default, "gtk_source_style_scheme_manager_get_default", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_append_search_path, "gtk_source_style_scheme_manager_append_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_force_rescan, "gtk_source_style_scheme_manager_force_rescan", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_get_scheme, "gtk_source_style_scheme_manager_get_scheme", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_get_scheme_ids, "gtk_source_style_scheme_manager_get_scheme_ids", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_get_search_path, "gtk_source_style_scheme_manager_get_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_prepend_search_path, "gtk_source_style_scheme_manager_prepend_search_path", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_manager_set_search_path, "gtk_source_style_scheme_manager_set_search_path", LIBRARY_SOURCEVIEW);

	// sourceview.StyleSchemePreview

	Linker.link(gtk_source_style_scheme_preview_get_type, "gtk_source_style_scheme_preview_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_preview_new, "gtk_source_style_scheme_preview_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_preview_get_scheme, "gtk_source_style_scheme_preview_get_scheme", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_preview_get_selected, "gtk_source_style_scheme_preview_get_selected", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_style_scheme_preview_set_selected, "gtk_source_style_scheme_preview_set_selected", LIBRARY_SOURCEVIEW);

	// sourceview.Tag

	Linker.link(gtk_source_tag_get_type, "gtk_source_tag_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_tag_new, "gtk_source_tag_new", LIBRARY_SOURCEVIEW);

	// sourceview.View

	Linker.link(gtk_source_view_get_type, "gtk_source_view_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_new, "gtk_source_view_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_new_with_buffer, "gtk_source_view_new_with_buffer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_auto_indent, "gtk_source_view_get_auto_indent", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_background_pattern, "gtk_source_view_get_background_pattern", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_completion, "gtk_source_view_get_completion", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_enable_snippets, "gtk_source_view_get_enable_snippets", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_gutter, "gtk_source_view_get_gutter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_highlight_current_line, "gtk_source_view_get_highlight_current_line", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_hover, "gtk_source_view_get_hover", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_indent_on_tab, "gtk_source_view_get_indent_on_tab", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_indent_width, "gtk_source_view_get_indent_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_indenter, "gtk_source_view_get_indenter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_insert_spaces_instead_of_tabs, "gtk_source_view_get_insert_spaces_instead_of_tabs", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_mark_attributes, "gtk_source_view_get_mark_attributes", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_right_margin_position, "gtk_source_view_get_right_margin_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_show_line_marks, "gtk_source_view_get_show_line_marks", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_show_line_numbers, "gtk_source_view_get_show_line_numbers", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_show_right_margin, "gtk_source_view_get_show_right_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_smart_backspace, "gtk_source_view_get_smart_backspace", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_smart_home_end, "gtk_source_view_get_smart_home_end", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_space_drawer, "gtk_source_view_get_space_drawer", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_tab_width, "gtk_source_view_get_tab_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_get_visual_column, "gtk_source_view_get_visual_column", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_indent_lines, "gtk_source_view_indent_lines", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_push_snippet, "gtk_source_view_push_snippet", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_auto_indent, "gtk_source_view_set_auto_indent", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_background_pattern, "gtk_source_view_set_background_pattern", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_enable_snippets, "gtk_source_view_set_enable_snippets", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_highlight_current_line, "gtk_source_view_set_highlight_current_line", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_indent_on_tab, "gtk_source_view_set_indent_on_tab", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_indent_width, "gtk_source_view_set_indent_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_indenter, "gtk_source_view_set_indenter", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_insert_spaces_instead_of_tabs, "gtk_source_view_set_insert_spaces_instead_of_tabs", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_mark_attributes, "gtk_source_view_set_mark_attributes", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_right_margin_position, "gtk_source_view_set_right_margin_position", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_show_line_marks, "gtk_source_view_set_show_line_marks", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_show_line_numbers, "gtk_source_view_set_show_line_numbers", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_show_right_margin, "gtk_source_view_set_show_right_margin", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_smart_backspace, "gtk_source_view_set_smart_backspace", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_smart_home_end, "gtk_source_view_set_smart_home_end", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_set_tab_width, "gtk_source_view_set_tab_width", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_view_unindent_lines, "gtk_source_view_unindent_lines", LIBRARY_SOURCEVIEW);

	// sourceview.VimIMContext

	Linker.link(gtk_source_vim_im_context_get_type, "gtk_source_vim_im_context_get_type", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_vim_im_context_new, "gtk_source_vim_im_context_new", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_vim_im_context_execute_command, "gtk_source_vim_im_context_execute_command", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_vim_im_context_get_command_bar_text, "gtk_source_vim_im_context_get_command_bar_text", LIBRARY_SOURCEVIEW);
	Linker.link(gtk_source_vim_im_context_get_command_text, "gtk_source_vim_im_context_get_command_text", LIBRARY_SOURCEVIEW);
}

__gshared extern(C)
{

	// sourceview.Buffer

	GType function() c_gtk_source_buffer_get_type;
	GtkSourceBuffer* function(GtkTextTagTable* table) c_gtk_source_buffer_new;
	GtkSourceBuffer* function(GtkSourceLanguage* language) c_gtk_source_buffer_new_with_language;
	int function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category) c_gtk_source_buffer_backward_iter_to_source_mark;
	void function(GtkSourceBuffer* buffer, GtkSourceChangeCaseType caseType, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_change_case;
	GtkSourceMark* function(GtkSourceBuffer* buffer, const(char)* name, const(char)* category, GtkTextIter* where) c_gtk_source_buffer_create_source_mark;
	GtkTextTag* function(GtkSourceBuffer* buffer, const(char)* tagName, const(char)* firstPropertyName, ... ) c_gtk_source_buffer_create_source_tag;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_ensure_highlight;
	int function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category) c_gtk_source_buffer_forward_iter_to_source_mark;
	char** function(GtkSourceBuffer* buffer, GtkTextIter* iter) c_gtk_source_buffer_get_context_classes_at_iter;
	int function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_matching_brackets;
	int function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_syntax;
	int function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_implicit_trailing_newline;
	GtkSourceLanguage* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_language;
	GSList* function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category) c_gtk_source_buffer_get_source_marks_at_iter;
	GSList* function(GtkSourceBuffer* buffer, int line, const(char)* category) c_gtk_source_buffer_get_source_marks_at_line;
	GtkSourceStyleScheme* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_style_scheme;
	int function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass) c_gtk_source_buffer_iter_backward_to_context_class_toggle;
	int function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass) c_gtk_source_buffer_iter_forward_to_context_class_toggle;
	int function(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass) c_gtk_source_buffer_iter_has_context_class;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_join_lines;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, const(char)* category) c_gtk_source_buffer_remove_source_marks;
	void function(GtkSourceBuffer* buffer, int highlight) c_gtk_source_buffer_set_highlight_matching_brackets;
	void function(GtkSourceBuffer* buffer, int highlight) c_gtk_source_buffer_set_highlight_syntax;
	void function(GtkSourceBuffer* buffer, int implicitTrailingNewline) c_gtk_source_buffer_set_implicit_trailing_newline;
	void function(GtkSourceBuffer* buffer, GtkSourceLanguage* language) c_gtk_source_buffer_set_language;
	void function(GtkSourceBuffer* buffer, GtkSourceStyleScheme* scheme) c_gtk_source_buffer_set_style_scheme;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, GtkSourceSortFlags flags, int column) c_gtk_source_buffer_sort_lines;

	// sourceview.Completion

	GType function() c_gtk_source_completion_get_type;
	PangoAttrList* function(const(char)* haystack, const(char)* casefoldQuery) c_gtk_source_completion_fuzzy_highlight;
	int function(const(char)* haystack, const(char)* casefoldNeedle, uint* priority) c_gtk_source_completion_fuzzy_match;
	void function(GtkSourceCompletion* self, GtkSourceCompletionProvider* provider) c_gtk_source_completion_add_provider;
	void function(GtkSourceCompletion* self) c_gtk_source_completion_block_interactive;
	GtkSourceBuffer* function(GtkSourceCompletion* self) c_gtk_source_completion_get_buffer;
	uint function(GtkSourceCompletion* self) c_gtk_source_completion_get_page_size;
	GtkSourceView* function(GtkSourceCompletion* self) c_gtk_source_completion_get_view;
	void function(GtkSourceCompletion* self) c_gtk_source_completion_hide;
	void function(GtkSourceCompletion* self, GtkSourceCompletionProvider* provider) c_gtk_source_completion_remove_provider;
	void function(GtkSourceCompletion* self, uint pageSize) c_gtk_source_completion_set_page_size;
	void function(GtkSourceCompletion* self) c_gtk_source_completion_show;
	void function(GtkSourceCompletion* self) c_gtk_source_completion_unblock_interactive;

	// sourceview.CompletionCell

	GType function() c_gtk_source_completion_cell_get_type;
	GtkSourceCompletionColumn function(GtkSourceCompletionCell* self) c_gtk_source_completion_cell_get_column;
	GtkWidget* function(GtkSourceCompletionCell* self) c_gtk_source_completion_cell_get_widget;
	void function(GtkSourceCompletionCell* self, GIcon* gicon) c_gtk_source_completion_cell_set_gicon;
	void function(GtkSourceCompletionCell* self, const(char)* iconName) c_gtk_source_completion_cell_set_icon_name;
	void function(GtkSourceCompletionCell* self, const(char)* markup) c_gtk_source_completion_cell_set_markup;
	void function(GtkSourceCompletionCell* self, GdkPaintable* paintable) c_gtk_source_completion_cell_set_paintable;
	void function(GtkSourceCompletionCell* self, const(char)* text) c_gtk_source_completion_cell_set_text;
	void function(GtkSourceCompletionCell* self, const(char)* text, PangoAttrList* attrs) c_gtk_source_completion_cell_set_text_with_attributes;
	void function(GtkSourceCompletionCell* self, GtkWidget* child) c_gtk_source_completion_cell_set_widget;

	// sourceview.CompletionContext

	GType function() c_gtk_source_completion_context_get_type;
	GtkSourceCompletionActivation function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_activation;
	int function(GtkSourceCompletionContext* self, GtkTextIter* begin, GtkTextIter* end) c_gtk_source_completion_context_get_bounds;
	GtkSourceBuffer* function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_buffer;
	int function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_busy;
	GtkSourceCompletion* function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_completion;
	int function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_empty;
	GtkSourceLanguage* function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_language;
	GtkSourceView* function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_view;
	char* function(GtkSourceCompletionContext* self) c_gtk_source_completion_context_get_word;
	void function(GtkSourceCompletionContext* self, GtkSourceCompletionProvider* provider, GListModel* results) c_gtk_source_completion_context_set_proposals_for_provider;

	// sourceview.CompletionProposal

	GType function() c_gtk_source_completion_proposal_get_type;

	// sourceview.CompletionProvider

	GType function() c_gtk_source_completion_provider_get_type;
	void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal) c_gtk_source_completion_provider_activate;
	void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkSourceCompletionCell* cell) c_gtk_source_completion_provider_display;
	int function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context) c_gtk_source_completion_provider_get_priority;
	char* function(GtkSourceCompletionProvider* self) c_gtk_source_completion_provider_get_title;
	int function(GtkSourceCompletionProvider* self, GtkTextIter* iter, dchar ch) c_gtk_source_completion_provider_is_trigger;
	int function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, uint keyval, GdkModifierType state) c_gtk_source_completion_provider_key_activates;
	GPtrArray* function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal) c_gtk_source_completion_provider_list_alternates;
	void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gtk_source_completion_provider_populate_async;
	GListModel* function(GtkSourceCompletionProvider* self, GAsyncResult* result, GError** err) c_gtk_source_completion_provider_populate_finish;
	void function(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GListModel* model) c_gtk_source_completion_provider_refilter;

	// sourceview.CompletionSnippets

	GType function() c_gtk_source_completion_snippets_get_type;
	GtkSourceCompletionSnippets* function() c_gtk_source_completion_snippets_new;

	// sourceview.CompletionWords

	GType function() c_gtk_source_completion_words_get_type;
	GtkSourceCompletionWords* function(const(char)* title) c_gtk_source_completion_words_new;
	void function(GtkSourceCompletionWords* words, GtkTextBuffer* buffer) c_gtk_source_completion_words_register;
	void function(GtkSourceCompletionWords* words, GtkTextBuffer* buffer) c_gtk_source_completion_words_unregister;

	// sourceview.Encoding

	GType function() c_gtk_source_encoding_get_type;
	GtkSourceEncoding* function(GtkSourceEncoding* enc) c_gtk_source_encoding_copy;
	void function(GtkSourceEncoding* enc) c_gtk_source_encoding_free;
	const(char)* function(GtkSourceEncoding* enc) c_gtk_source_encoding_get_charset;
	const(char)* function(GtkSourceEncoding* enc) c_gtk_source_encoding_get_name;
	char* function(GtkSourceEncoding* enc) c_gtk_source_encoding_to_string;
	GSList* function() c_gtk_source_encoding_get_all;
	GtkSourceEncoding* function() c_gtk_source_encoding_get_current;
	GSList* function() c_gtk_source_encoding_get_default_candidates;
	GtkSourceEncoding* function(const(char)* charset) c_gtk_source_encoding_get_from_charset;
	GtkSourceEncoding* function() c_gtk_source_encoding_get_utf8;

	// sourceview.File

	GType function() c_gtk_source_file_get_type;
	GtkSourceFile* function() c_gtk_source_file_new;
	void function(GtkSourceFile* file) c_gtk_source_file_check_file_on_disk;
	GtkSourceCompressionType function(GtkSourceFile* file) c_gtk_source_file_get_compression_type;
	GtkSourceEncoding* function(GtkSourceFile* file) c_gtk_source_file_get_encoding;
	GFile* function(GtkSourceFile* file) c_gtk_source_file_get_location;
	GtkSourceNewlineType function(GtkSourceFile* file) c_gtk_source_file_get_newline_type;
	int function(GtkSourceFile* file) c_gtk_source_file_is_deleted;
	int function(GtkSourceFile* file) c_gtk_source_file_is_externally_modified;
	int function(GtkSourceFile* file) c_gtk_source_file_is_local;
	int function(GtkSourceFile* file) c_gtk_source_file_is_readonly;
	void function(GtkSourceFile* file, GFile* location) c_gtk_source_file_set_location;
	void function(GtkSourceFile* file, GtkSourceMountOperationFactory callback, void* userData, GDestroyNotify notify) c_gtk_source_file_set_mount_operation_factory;

	// sourceview.FileLoader

	GType function() c_gtk_source_file_loader_get_type;
	GtkSourceFileLoader* function(GtkSourceBuffer* buffer, GtkSourceFile* file) c_gtk_source_file_loader_new;
	GtkSourceFileLoader* function(GtkSourceBuffer* buffer, GtkSourceFile* file, GInputStream* stream) c_gtk_source_file_loader_new_from_stream;
	GtkSourceBuffer* function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_buffer;
	GtkSourceCompressionType function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_compression_type;
	GtkSourceEncoding* function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_encoding;
	GtkSourceFile* function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_file;
	GInputStream* function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_input_stream;
	GFile* function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_location;
	GtkSourceNewlineType function(GtkSourceFileLoader* loader) c_gtk_source_file_loader_get_newline_type;
	void function(GtkSourceFileLoader* loader, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData) c_gtk_source_file_loader_load_async;
	int function(GtkSourceFileLoader* loader, GAsyncResult* result, GError** err) c_gtk_source_file_loader_load_finish;
	void function(GtkSourceFileLoader* loader, GSList* candidateEncodings) c_gtk_source_file_loader_set_candidate_encodings;

	// sourceview.FileSaver

	GType function() c_gtk_source_file_saver_get_type;
	GtkSourceFileSaver* function(GtkSourceBuffer* buffer, GtkSourceFile* file) c_gtk_source_file_saver_new;
	GtkSourceFileSaver* function(GtkSourceBuffer* buffer, GtkSourceFile* file, GFile* targetLocation) c_gtk_source_file_saver_new_with_target;
	GtkSourceBuffer* function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_buffer;
	GtkSourceCompressionType function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_compression_type;
	GtkSourceEncoding* function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_encoding;
	GtkSourceFile* function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_file;
	GtkSourceFileSaverFlags function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_flags;
	GFile* function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_location;
	GtkSourceNewlineType function(GtkSourceFileSaver* saver) c_gtk_source_file_saver_get_newline_type;
	void function(GtkSourceFileSaver* saver, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData) c_gtk_source_file_saver_save_async;
	int function(GtkSourceFileSaver* saver, GAsyncResult* result, GError** err) c_gtk_source_file_saver_save_finish;
	void function(GtkSourceFileSaver* saver, GtkSourceCompressionType compressionType) c_gtk_source_file_saver_set_compression_type;
	void function(GtkSourceFileSaver* saver, GtkSourceEncoding* encoding) c_gtk_source_file_saver_set_encoding;
	void function(GtkSourceFileSaver* saver, GtkSourceFileSaverFlags flags) c_gtk_source_file_saver_set_flags;
	void function(GtkSourceFileSaver* saver, GtkSourceNewlineType newlineType) c_gtk_source_file_saver_set_newline_type;

	// sourceview.Gutter

	GType function() c_gtk_source_gutter_get_type;
	GtkSourceView* function(GtkSourceGutter* gutter) c_gtk_source_gutter_get_view;
	int function(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer, int position) c_gtk_source_gutter_insert;
	void function(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_remove;
	void function(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer, int position) c_gtk_source_gutter_reorder;

	// sourceview.GutterLines

	GType function() c_gtk_source_gutter_lines_get_type;
	void function(GtkSourceGutterLines* lines, uint line, const(char)* name) c_gtk_source_gutter_lines_add_class;
	void function(GtkSourceGutterLines* lines, uint line, GQuark qname) c_gtk_source_gutter_lines_add_qclass;
	GtkTextBuffer* function(GtkSourceGutterLines* lines) c_gtk_source_gutter_lines_get_buffer;
	uint function(GtkSourceGutterLines* lines) c_gtk_source_gutter_lines_get_first;
	void function(GtkSourceGutterLines* lines, GtkTextIter* iter, uint line) c_gtk_source_gutter_lines_get_iter_at_line;
	uint function(GtkSourceGutterLines* lines) c_gtk_source_gutter_lines_get_last;
	void function(GtkSourceGutterLines* lines, uint line, GtkSourceGutterRendererAlignmentMode mode, int* y, int* height) c_gtk_source_gutter_lines_get_line_yrange;
	GtkTextView* function(GtkSourceGutterLines* lines) c_gtk_source_gutter_lines_get_view;
	int function(GtkSourceGutterLines* lines, uint line, const(char)* name) c_gtk_source_gutter_lines_has_class;
	int function(GtkSourceGutterLines* lines, uint line, GQuark qname) c_gtk_source_gutter_lines_has_qclass;
	int function(GtkSourceGutterLines* lines, uint line) c_gtk_source_gutter_lines_is_cursor;
	int function(GtkSourceGutterLines* lines, uint line) c_gtk_source_gutter_lines_is_prelit;
	int function(GtkSourceGutterLines* lines, uint line) c_gtk_source_gutter_lines_is_selected;
	void function(GtkSourceGutterLines* lines, uint line, const(char)* name) c_gtk_source_gutter_lines_remove_class;
	void function(GtkSourceGutterLines* lines, uint line, GQuark qname) c_gtk_source_gutter_lines_remove_qclass;

	// sourceview.GutterRenderer

	GType function() c_gtk_source_gutter_renderer_get_type;
	void function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, uint button, GdkModifierType state, int nPresses) c_gtk_source_gutter_renderer_activate;
	void function(GtkSourceGutterRenderer* renderer, uint line, float width, float height, float* x, float* y) c_gtk_source_gutter_renderer_align_cell;
	GtkSourceGutterRendererAlignmentMode function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_alignment_mode;
	GtkSourceBuffer* function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_buffer;
	GtkSourceView* function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_view;
	float function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_xalign;
	int function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_xpad;
	float function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_yalign;
	int function(GtkSourceGutterRenderer* renderer) c_gtk_source_gutter_renderer_get_ypad;
	int function(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area) c_gtk_source_gutter_renderer_query_activatable;
	void function(GtkSourceGutterRenderer* renderer, GtkSourceGutterRendererAlignmentMode mode) c_gtk_source_gutter_renderer_set_alignment_mode;
	void function(GtkSourceGutterRenderer* renderer, float xalign) c_gtk_source_gutter_renderer_set_xalign;
	void function(GtkSourceGutterRenderer* renderer, int xpad) c_gtk_source_gutter_renderer_set_xpad;
	void function(GtkSourceGutterRenderer* renderer, float yalign) c_gtk_source_gutter_renderer_set_yalign;
	void function(GtkSourceGutterRenderer* renderer, int ypad) c_gtk_source_gutter_renderer_set_ypad;

	// sourceview.GutterRendererPixbuf

	GType function() c_gtk_source_gutter_renderer_pixbuf_get_type;
	GtkSourceGutterRenderer* function() c_gtk_source_gutter_renderer_pixbuf_new;
	GIcon* function(GtkSourceGutterRendererPixbuf* renderer) c_gtk_source_gutter_renderer_pixbuf_get_gicon;
	const(char)* function(GtkSourceGutterRendererPixbuf* renderer) c_gtk_source_gutter_renderer_pixbuf_get_icon_name;
	GdkPaintable* function(GtkSourceGutterRendererPixbuf* renderer) c_gtk_source_gutter_renderer_pixbuf_get_paintable;
	GdkPixbuf* function(GtkSourceGutterRendererPixbuf* renderer) c_gtk_source_gutter_renderer_pixbuf_get_pixbuf;
	void function(GtkSourceGutterRendererPixbuf* renderer, GdkPaintable* paintable) c_gtk_source_gutter_renderer_pixbuf_overlay_paintable;
	void function(GtkSourceGutterRendererPixbuf* renderer, GIcon* icon) c_gtk_source_gutter_renderer_pixbuf_set_gicon;
	void function(GtkSourceGutterRendererPixbuf* renderer, const(char)* iconName) c_gtk_source_gutter_renderer_pixbuf_set_icon_name;
	void function(GtkSourceGutterRendererPixbuf* renderer, GdkPaintable* paintable) c_gtk_source_gutter_renderer_pixbuf_set_paintable;
	void function(GtkSourceGutterRendererPixbuf* renderer, GdkPixbuf* pixbuf) c_gtk_source_gutter_renderer_pixbuf_set_pixbuf;

	// sourceview.GutterRendererText

	GType function() c_gtk_source_gutter_renderer_text_get_type;
	GtkSourceGutterRenderer* function() c_gtk_source_gutter_renderer_text_new;
	void function(GtkSourceGutterRendererText* renderer, const(char)* text, int* width, int* height) c_gtk_source_gutter_renderer_text_measure;
	void function(GtkSourceGutterRendererText* renderer, const(char)* markup, int* width, int* height) c_gtk_source_gutter_renderer_text_measure_markup;
	void function(GtkSourceGutterRendererText* renderer, const(char)* markup, int length) c_gtk_source_gutter_renderer_text_set_markup;
	void function(GtkSourceGutterRendererText* renderer, const(char)* text, int length) c_gtk_source_gutter_renderer_text_set_text;

	// sourceview.Hover

	GType function() c_gtk_source_hover_get_type;
	void function(GtkSourceHover* self, GtkSourceHoverProvider* provider) c_gtk_source_hover_add_provider;
	void function(GtkSourceHover* self, GtkSourceHoverProvider* provider) c_gtk_source_hover_remove_provider;

	// sourceview.HoverContext

	GType function() c_gtk_source_hover_context_get_type;
	int function(GtkSourceHoverContext* self, GtkTextIter* begin, GtkTextIter* end) c_gtk_source_hover_context_get_bounds;
	GtkSourceBuffer* function(GtkSourceHoverContext* self) c_gtk_source_hover_context_get_buffer;
	int function(GtkSourceHoverContext* self, GtkTextIter* iter) c_gtk_source_hover_context_get_iter;
	GtkSourceView* function(GtkSourceHoverContext* self) c_gtk_source_hover_context_get_view;

	// sourceview.HoverDisplay

	GType function() c_gtk_source_hover_display_get_type;
	void function(GtkSourceHoverDisplay* self, GtkWidget* child) c_gtk_source_hover_display_append;
	void function(GtkSourceHoverDisplay* self, GtkWidget* child, GtkWidget* sibling) c_gtk_source_hover_display_insert_after;
	void function(GtkSourceHoverDisplay* self, GtkWidget* child) c_gtk_source_hover_display_prepend;
	void function(GtkSourceHoverDisplay* self, GtkWidget* child) c_gtk_source_hover_display_remove;

	// sourceview.HoverProvider

	GType function() c_gtk_source_hover_provider_get_type;
	void function(GtkSourceHoverProvider* self, GtkSourceHoverContext* context, GtkSourceHoverDisplay* display, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gtk_source_hover_provider_populate_async;
	int function(GtkSourceHoverProvider* self, GAsyncResult* result, GError** err) c_gtk_source_hover_provider_populate_finish;

	// sourceview.Indenter

	GType function() c_gtk_source_indenter_get_type;
	void function(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* iter) c_gtk_source_indenter_indent;
	int function(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* location, GdkModifierType state, uint keyval) c_gtk_source_indenter_is_trigger;

	// sourceview.Language

	GType function() c_gtk_source_language_get_type;
	char** function(GtkSourceLanguage* language) c_gtk_source_language_get_globs;
	int function(GtkSourceLanguage* language) c_gtk_source_language_get_hidden;
	const(char)* function(GtkSourceLanguage* language) c_gtk_source_language_get_id;
	const(char)* function(GtkSourceLanguage* language, const(char)* name) c_gtk_source_language_get_metadata;
	char** function(GtkSourceLanguage* language) c_gtk_source_language_get_mime_types;
	const(char)* function(GtkSourceLanguage* language) c_gtk_source_language_get_name;
	const(char)* function(GtkSourceLanguage* language) c_gtk_source_language_get_section;
	const(char)* function(GtkSourceLanguage* language, const(char)* styleId) c_gtk_source_language_get_style_fallback;
	char** function(GtkSourceLanguage* language) c_gtk_source_language_get_style_ids;
	const(char)* function(GtkSourceLanguage* language, const(char)* styleId) c_gtk_source_language_get_style_name;

	// sourceview.LanguageManager

	GType function() c_gtk_source_language_manager_get_type;
	GtkSourceLanguageManager* function() c_gtk_source_language_manager_new;
	GtkSourceLanguageManager* function() c_gtk_source_language_manager_get_default;
	void function(GtkSourceLanguageManager* lm, const(char)* path) c_gtk_source_language_manager_append_search_path;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, const(char)* id) c_gtk_source_language_manager_get_language;
	char** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_language_ids;
	char** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_search_path;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, char* filename, const(char)* contentType) c_gtk_source_language_manager_guess_language;
	void function(GtkSourceLanguageManager* lm, const(char)* path) c_gtk_source_language_manager_prepend_search_path;
	void function(GtkSourceLanguageManager* lm, char** dirs) c_gtk_source_language_manager_set_search_path;

	// sourceview.Map

	GType function() c_gtk_source_map_get_type;
	GtkWidget* function() c_gtk_source_map_new;
	GtkSourceView* function(GtkSourceMap* map) c_gtk_source_map_get_view;
	void function(GtkSourceMap* map, GtkSourceView* view) c_gtk_source_map_set_view;

	// sourceview.Mark

	GType function() c_gtk_source_mark_get_type;
	GtkSourceMark* function(const(char)* name, const(char)* category) c_gtk_source_mark_new;
	const(char)* function(GtkSourceMark* mark) c_gtk_source_mark_get_category;
	GtkSourceMark* function(GtkSourceMark* mark, const(char)* category) c_gtk_source_mark_next;
	GtkSourceMark* function(GtkSourceMark* mark, const(char)* category) c_gtk_source_mark_prev;

	// sourceview.MarkAttributes

	GType function() c_gtk_source_mark_attributes_get_type;
	GtkSourceMarkAttributes* function() c_gtk_source_mark_attributes_new;
	int function(GtkSourceMarkAttributes* attributes, GdkRGBA* background) c_gtk_source_mark_attributes_get_background;
	GIcon* function(GtkSourceMarkAttributes* attributes) c_gtk_source_mark_attributes_get_gicon;
	const(char)* function(GtkSourceMarkAttributes* attributes) c_gtk_source_mark_attributes_get_icon_name;
	GdkPixbuf* function(GtkSourceMarkAttributes* attributes) c_gtk_source_mark_attributes_get_pixbuf;
	char* function(GtkSourceMarkAttributes* attributes, GtkSourceMark* mark) c_gtk_source_mark_attributes_get_tooltip_markup;
	char* function(GtkSourceMarkAttributes* attributes, GtkSourceMark* mark) c_gtk_source_mark_attributes_get_tooltip_text;
	GdkPaintable* function(GtkSourceMarkAttributes* attributes, GtkWidget* widget, int size) c_gtk_source_mark_attributes_render_icon;
	void function(GtkSourceMarkAttributes* attributes, GdkRGBA* background) c_gtk_source_mark_attributes_set_background;
	void function(GtkSourceMarkAttributes* attributes, GIcon* gicon) c_gtk_source_mark_attributes_set_gicon;
	void function(GtkSourceMarkAttributes* attributes, const(char)* iconName) c_gtk_source_mark_attributes_set_icon_name;
	void function(GtkSourceMarkAttributes* attributes, GdkPixbuf* pixbuf) c_gtk_source_mark_attributes_set_pixbuf;

	// sourceview.PrintCompositor

	GType function() c_gtk_source_print_compositor_get_type;
	GtkSourcePrintCompositor* function(GtkSourceBuffer* buffer) c_gtk_source_print_compositor_new;
	GtkSourcePrintCompositor* function(GtkSourceView* view) c_gtk_source_print_compositor_new_from_view;
	void function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context, int pageNr) c_gtk_source_print_compositor_draw_page;
	char* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_body_font_name;
	double function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_bottom_margin;
	GtkSourceBuffer* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_buffer;
	char* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_footer_font_name;
	char* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_header_font_name;
	int function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_highlight_syntax;
	double function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_left_margin;
	char* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_line_numbers_font_name;
	int function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_n_pages;
	double function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_pagination_progress;
	int function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_footer;
	int function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_header;
	uint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_line_numbers;
	double function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_right_margin;
	uint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_tab_width;
	double function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_top_margin;
	GtkWrapMode function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_wrap_mode;
	void function(GtkSourcePrintCompositor* compositor, GtkTextTag* tag) c_gtk_source_print_compositor_ignore_tag;
	int function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context) c_gtk_source_print_compositor_paginate;
	void function(GtkSourcePrintCompositor* compositor, const(char)* fontName) c_gtk_source_print_compositor_set_body_font_name;
	void function(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit) c_gtk_source_print_compositor_set_bottom_margin;
	void function(GtkSourcePrintCompositor* compositor, const(char)* fontName) c_gtk_source_print_compositor_set_footer_font_name;
	void function(GtkSourcePrintCompositor* compositor, int separator, const(char)* left, const(char)* center, const(char)* right) c_gtk_source_print_compositor_set_footer_format;
	void function(GtkSourcePrintCompositor* compositor, const(char)* fontName) c_gtk_source_print_compositor_set_header_font_name;
	void function(GtkSourcePrintCompositor* compositor, int separator, const(char)* left, const(char)* center, const(char)* right) c_gtk_source_print_compositor_set_header_format;
	void function(GtkSourcePrintCompositor* compositor, int highlight) c_gtk_source_print_compositor_set_highlight_syntax;
	void function(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit) c_gtk_source_print_compositor_set_left_margin;
	void function(GtkSourcePrintCompositor* compositor, const(char)* fontName) c_gtk_source_print_compositor_set_line_numbers_font_name;
	void function(GtkSourcePrintCompositor* compositor, int print) c_gtk_source_print_compositor_set_print_footer;
	void function(GtkSourcePrintCompositor* compositor, int print) c_gtk_source_print_compositor_set_print_header;
	void function(GtkSourcePrintCompositor* compositor, uint interval) c_gtk_source_print_compositor_set_print_line_numbers;
	void function(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit) c_gtk_source_print_compositor_set_right_margin;
	void function(GtkSourcePrintCompositor* compositor, uint width) c_gtk_source_print_compositor_set_tab_width;
	void function(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit) c_gtk_source_print_compositor_set_top_margin;
	void function(GtkSourcePrintCompositor* compositor, GtkWrapMode wrapMode) c_gtk_source_print_compositor_set_wrap_mode;

	// sourceview.Region

	GType function() c_gtk_source_region_get_type;
	GtkSourceRegion* function(GtkTextBuffer* buffer) c_gtk_source_region_new;
	void function(GtkSourceRegion* region, GtkSourceRegion* regionToAdd) c_gtk_source_region_add_region;
	void function(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End) c_gtk_source_region_add_subregion;
	int function(GtkSourceRegion* region, GtkTextIter* start, GtkTextIter* end) c_gtk_source_region_get_bounds;
	GtkTextBuffer* function(GtkSourceRegion* region) c_gtk_source_region_get_buffer;
	void function(GtkSourceRegion* region, GtkSourceRegionIter* iter) c_gtk_source_region_get_start_region_iter;
	GtkSourceRegion* function(GtkSourceRegion* region1, GtkSourceRegion* region2) c_gtk_source_region_intersect_region;
	GtkSourceRegion* function(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End) c_gtk_source_region_intersect_subregion;
	int function(GtkSourceRegion* region) c_gtk_source_region_is_empty;
	void function(GtkSourceRegion* region, GtkSourceRegion* regionToSubtract) c_gtk_source_region_subtract_region;
	void function(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End) c_gtk_source_region_subtract_subregion;
	char* function(GtkSourceRegion* region) c_gtk_source_region_to_string;

	// sourceview.RegionIter

	int function(GtkSourceRegionIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_source_region_iter_get_subregion;
	int function(GtkSourceRegionIter* iter) c_gtk_source_region_iter_is_end;
	int function(GtkSourceRegionIter* iter) c_gtk_source_region_iter_next;

	// sourceview.SearchContext

	GType function() c_gtk_source_search_context_get_type;
	GtkSourceSearchContext* function(GtkSourceBuffer* buffer, GtkSourceSearchSettings* settings) c_gtk_source_search_context_new;
	int function(GtkSourceSearchContext* search, GtkTextIter* iter, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround) c_gtk_source_search_context_backward;
	void function(GtkSourceSearchContext* search, GtkTextIter* iter, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gtk_source_search_context_backward_async;
	int function(GtkSourceSearchContext* search, GAsyncResult* result, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround, GError** err) c_gtk_source_search_context_backward_finish;
	int function(GtkSourceSearchContext* search, GtkTextIter* iter, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround) c_gtk_source_search_context_forward;
	void function(GtkSourceSearchContext* search, GtkTextIter* iter, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gtk_source_search_context_forward_async;
	int function(GtkSourceSearchContext* search, GAsyncResult* result, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround, GError** err) c_gtk_source_search_context_forward_finish;
	GtkSourceBuffer* function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_buffer;
	int function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_highlight;
	GtkSourceStyle* function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_match_style;
	int function(GtkSourceSearchContext* search, GtkTextIter* matchStart, GtkTextIter* matchEnd) c_gtk_source_search_context_get_occurrence_position;
	int function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_occurrences_count;
	GError* function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_regex_error;
	GtkSourceSearchSettings* function(GtkSourceSearchContext* search) c_gtk_source_search_context_get_settings;
	int function(GtkSourceSearchContext* search, GtkTextIter* matchStart, GtkTextIter* matchEnd, const(char)* replace, int replaceLength, GError** err) c_gtk_source_search_context_replace;
	uint function(GtkSourceSearchContext* search, const(char)* replace, int replaceLength, GError** err) c_gtk_source_search_context_replace_all;
	void function(GtkSourceSearchContext* search, int highlight) c_gtk_source_search_context_set_highlight;
	void function(GtkSourceSearchContext* search, GtkSourceStyle* matchStyle) c_gtk_source_search_context_set_match_style;

	// sourceview.SearchSettings

	GType function() c_gtk_source_search_settings_get_type;
	GtkSourceSearchSettings* function() c_gtk_source_search_settings_new;
	int function(GtkSourceSearchSettings* settings) c_gtk_source_search_settings_get_at_word_boundaries;
	int function(GtkSourceSearchSettings* settings) c_gtk_source_search_settings_get_case_sensitive;
	int function(GtkSourceSearchSettings* settings) c_gtk_source_search_settings_get_regex_enabled;
	const(char)* function(GtkSourceSearchSettings* settings) c_gtk_source_search_settings_get_search_text;
	int function(GtkSourceSearchSettings* settings) c_gtk_source_search_settings_get_wrap_around;
	void function(GtkSourceSearchSettings* settings, int atWordBoundaries) c_gtk_source_search_settings_set_at_word_boundaries;
	void function(GtkSourceSearchSettings* settings, int caseSensitive) c_gtk_source_search_settings_set_case_sensitive;
	void function(GtkSourceSearchSettings* settings, int regexEnabled) c_gtk_source_search_settings_set_regex_enabled;
	void function(GtkSourceSearchSettings* settings, const(char)* searchText) c_gtk_source_search_settings_set_search_text;
	void function(GtkSourceSearchSettings* settings, int wrapAround) c_gtk_source_search_settings_set_wrap_around;

	// sourceview.Snippet

	GType function() c_gtk_source_snippet_get_type;
	GtkSourceSnippet* function(const(char)* trigger, const(char)* languageId) c_gtk_source_snippet_new;
	void function(GtkSourceSnippet* snippet, GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_add_chunk;
	GtkSourceSnippet* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_copy;
	GtkSourceSnippetContext* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_context;
	const(char)* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_description;
	int function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_focus_position;
	const(char)* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_language_id;
	uint function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_n_chunks;
	const(char)* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_name;
	GtkSourceSnippetChunk* function(GtkSourceSnippet* snippet, uint nth) c_gtk_source_snippet_get_nth_chunk;
	const(char)* function(GtkSourceSnippet* snippet) c_gtk_source_snippet_get_trigger;
	void function(GtkSourceSnippet* snippet, const(char)* description) c_gtk_source_snippet_set_description;
	void function(GtkSourceSnippet* snippet, const(char)* languageId) c_gtk_source_snippet_set_language_id;
	void function(GtkSourceSnippet* snippet, const(char)* name) c_gtk_source_snippet_set_name;
	void function(GtkSourceSnippet* snippet, const(char)* trigger) c_gtk_source_snippet_set_trigger;

	// sourceview.SnippetChunk

	GType function() c_gtk_source_snippet_chunk_get_type;
	GtkSourceSnippetChunk* function() c_gtk_source_snippet_chunk_new;
	GtkSourceSnippetChunk* function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_copy;
	GtkSourceSnippetContext* function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_context;
	int function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_focus_position;
	const(char)* function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_spec;
	const(char)* function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_text;
	int function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_text_set;
	const(char)* function(GtkSourceSnippetChunk* chunk) c_gtk_source_snippet_chunk_get_tooltip_text;
	void function(GtkSourceSnippetChunk* chunk, GtkSourceSnippetContext* context) c_gtk_source_snippet_chunk_set_context;
	void function(GtkSourceSnippetChunk* chunk, int focusPosition) c_gtk_source_snippet_chunk_set_focus_position;
	void function(GtkSourceSnippetChunk* chunk, const(char)* spec) c_gtk_source_snippet_chunk_set_spec;
	void function(GtkSourceSnippetChunk* chunk, const(char)* text) c_gtk_source_snippet_chunk_set_text;
	void function(GtkSourceSnippetChunk* chunk, int textSet) c_gtk_source_snippet_chunk_set_text_set;
	void function(GtkSourceSnippetChunk* chunk, const(char)* tooltipText) c_gtk_source_snippet_chunk_set_tooltip_text;

	// sourceview.SnippetContext

	GType function() c_gtk_source_snippet_context_get_type;
	GtkSourceSnippetContext* function() c_gtk_source_snippet_context_new;
	void function(GtkSourceSnippetContext* self) c_gtk_source_snippet_context_clear_variables;
	char* function(GtkSourceSnippetContext* self, const(char)* input) c_gtk_source_snippet_context_expand;
	const(char)* function(GtkSourceSnippetContext* self, const(char)* key) c_gtk_source_snippet_context_get_variable;
	void function(GtkSourceSnippetContext* self, const(char)* key, const(char)* value) c_gtk_source_snippet_context_set_constant;
	void function(GtkSourceSnippetContext* self, const(char)* linePrefix) c_gtk_source_snippet_context_set_line_prefix;
	void function(GtkSourceSnippetContext* self, int tabWidth) c_gtk_source_snippet_context_set_tab_width;
	void function(GtkSourceSnippetContext* self, int useSpaces) c_gtk_source_snippet_context_set_use_spaces;
	void function(GtkSourceSnippetContext* self, const(char)* key, const(char)* value) c_gtk_source_snippet_context_set_variable;

	// sourceview.SnippetManager

	GType function() c_gtk_source_snippet_manager_get_type;
	GtkSourceSnippetManager* function() c_gtk_source_snippet_manager_get_default;
	char** function(GtkSourceSnippetManager* self) c_gtk_source_snippet_manager_get_search_path;
	GtkSourceSnippet* function(GtkSourceSnippetManager* self, const(char)* group, const(char)* languageId, const(char)* trigger) c_gtk_source_snippet_manager_get_snippet;
	char** function(GtkSourceSnippetManager* self) c_gtk_source_snippet_manager_list_groups;
	GListModel* function(GtkSourceSnippetManager* self, const(char)* group, const(char)* languageId, const(char)* triggerPrefix) c_gtk_source_snippet_manager_list_matching;
	void function(GtkSourceSnippetManager* self, char** dirs) c_gtk_source_snippet_manager_set_search_path;

	// sourceview.SpaceDrawer

	GType function() c_gtk_source_space_drawer_get_type;
	GtkSourceSpaceDrawer* function() c_gtk_source_space_drawer_new;
	void function(GtkSourceSpaceDrawer* drawer, GSettings* settings, const(char)* key, GSettingsBindFlags flags) c_gtk_source_space_drawer_bind_matrix_setting;
	int function(GtkSourceSpaceDrawer* drawer) c_gtk_source_space_drawer_get_enable_matrix;
	GVariant* function(GtkSourceSpaceDrawer* drawer) c_gtk_source_space_drawer_get_matrix;
	GtkSourceSpaceTypeFlags function(GtkSourceSpaceDrawer* drawer, GtkSourceSpaceLocationFlags locations) c_gtk_source_space_drawer_get_types_for_locations;
	void function(GtkSourceSpaceDrawer* drawer, int enableMatrix) c_gtk_source_space_drawer_set_enable_matrix;
	void function(GtkSourceSpaceDrawer* drawer, GVariant* matrix) c_gtk_source_space_drawer_set_matrix;
	void function(GtkSourceSpaceDrawer* drawer, GtkSourceSpaceLocationFlags locations, GtkSourceSpaceTypeFlags types) c_gtk_source_space_drawer_set_types_for_locations;

	// sourceview.Style

	GType function() c_gtk_source_style_get_type;
	void function(GtkSourceStyle* style, GtkTextTag* tag) c_gtk_source_style_apply;
	GtkSourceStyle* function(GtkSourceStyle* style) c_gtk_source_style_copy;

	// sourceview.StyleScheme

	GType function() c_gtk_source_style_scheme_get_type;
	char** function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_authors;
	const(char)* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_description;
	const(char)* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_filename;
	const(char)* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_id;
	const(char)* function(GtkSourceStyleScheme* scheme, const(char)* name) c_gtk_source_style_scheme_get_metadata;
	const(char)* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_name;
	GtkSourceStyle* function(GtkSourceStyleScheme* scheme, const(char)* styleId) c_gtk_source_style_scheme_get_style;

	// sourceview.StyleSchemeChooser

	GType function() c_gtk_source_style_scheme_chooser_get_type;
	GtkSourceStyleScheme* function(GtkSourceStyleSchemeChooser* chooser) c_gtk_source_style_scheme_chooser_get_style_scheme;
	void function(GtkSourceStyleSchemeChooser* chooser, GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_chooser_set_style_scheme;

	// sourceview.StyleSchemeChooserButton

	GType function() c_gtk_source_style_scheme_chooser_button_get_type;
	GtkWidget* function() c_gtk_source_style_scheme_chooser_button_new;

	// sourceview.StyleSchemeChooserWidget

	GType function() c_gtk_source_style_scheme_chooser_widget_get_type;
	GtkWidget* function() c_gtk_source_style_scheme_chooser_widget_new;

	// sourceview.StyleSchemeManager

	GType function() c_gtk_source_style_scheme_manager_get_type;
	GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_new;
	GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_get_default;
	void function(GtkSourceStyleSchemeManager* manager, const(char)* path) c_gtk_source_style_scheme_manager_append_search_path;
	void function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_force_rescan;
	GtkSourceStyleScheme* function(GtkSourceStyleSchemeManager* manager, const(char)* schemeId) c_gtk_source_style_scheme_manager_get_scheme;
	char** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_scheme_ids;
	char** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_search_path;
	void function(GtkSourceStyleSchemeManager* manager, const(char)* path) c_gtk_source_style_scheme_manager_prepend_search_path;
	void function(GtkSourceStyleSchemeManager* manager, char** path) c_gtk_source_style_scheme_manager_set_search_path;

	// sourceview.StyleSchemePreview

	GType function() c_gtk_source_style_scheme_preview_get_type;
	GtkWidget* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_preview_new;
	GtkSourceStyleScheme* function(GtkSourceStyleSchemePreview* self) c_gtk_source_style_scheme_preview_get_scheme;
	int function(GtkSourceStyleSchemePreview* self) c_gtk_source_style_scheme_preview_get_selected;
	void function(GtkSourceStyleSchemePreview* self, int selected) c_gtk_source_style_scheme_preview_set_selected;

	// sourceview.Tag

	GType function() c_gtk_source_tag_get_type;
	GtkTextTag* function(const(char)* name) c_gtk_source_tag_new;

	// sourceview.View

	GType function() c_gtk_source_view_get_type;
	GtkWidget* function() c_gtk_source_view_new;
	GtkWidget* function(GtkSourceBuffer* buffer) c_gtk_source_view_new_with_buffer;
	int function(GtkSourceView* view) c_gtk_source_view_get_auto_indent;
	GtkSourceBackgroundPatternType function(GtkSourceView* view) c_gtk_source_view_get_background_pattern;
	GtkSourceCompletion* function(GtkSourceView* view) c_gtk_source_view_get_completion;
	int function(GtkSourceView* view) c_gtk_source_view_get_enable_snippets;
	GtkSourceGutter* function(GtkSourceView* view, GtkTextWindowType windowType) c_gtk_source_view_get_gutter;
	int function(GtkSourceView* view) c_gtk_source_view_get_highlight_current_line;
	GtkSourceHover* function(GtkSourceView* view) c_gtk_source_view_get_hover;
	int function(GtkSourceView* view) c_gtk_source_view_get_indent_on_tab;
	int function(GtkSourceView* view) c_gtk_source_view_get_indent_width;
	GtkSourceIndenter* function(GtkSourceView* view) c_gtk_source_view_get_indenter;
	int function(GtkSourceView* view) c_gtk_source_view_get_insert_spaces_instead_of_tabs;
	GtkSourceMarkAttributes* function(GtkSourceView* view, const(char)* category, int* priority) c_gtk_source_view_get_mark_attributes;
	uint function(GtkSourceView* view) c_gtk_source_view_get_right_margin_position;
	int function(GtkSourceView* view) c_gtk_source_view_get_show_line_marks;
	int function(GtkSourceView* view) c_gtk_source_view_get_show_line_numbers;
	int function(GtkSourceView* view) c_gtk_source_view_get_show_right_margin;
	int function(GtkSourceView* view) c_gtk_source_view_get_smart_backspace;
	GtkSourceSmartHomeEndType function(GtkSourceView* view) c_gtk_source_view_get_smart_home_end;
	GtkSourceSpaceDrawer* function(GtkSourceView* view) c_gtk_source_view_get_space_drawer;
	uint function(GtkSourceView* view) c_gtk_source_view_get_tab_width;
	uint function(GtkSourceView* view, GtkTextIter* iter) c_gtk_source_view_get_visual_column;
	void function(GtkSourceView* view, GtkTextIter* start, GtkTextIter* end) c_gtk_source_view_indent_lines;
	void function(GtkSourceView* view, GtkSourceSnippet* snippet, GtkTextIter* location) c_gtk_source_view_push_snippet;
	void function(GtkSourceView* view, int enable) c_gtk_source_view_set_auto_indent;
	void function(GtkSourceView* view, GtkSourceBackgroundPatternType backgroundPattern) c_gtk_source_view_set_background_pattern;
	void function(GtkSourceView* view, int enableSnippets) c_gtk_source_view_set_enable_snippets;
	void function(GtkSourceView* view, int highlight) c_gtk_source_view_set_highlight_current_line;
	void function(GtkSourceView* view, int enable) c_gtk_source_view_set_indent_on_tab;
	void function(GtkSourceView* view, int width) c_gtk_source_view_set_indent_width;
	void function(GtkSourceView* view, GtkSourceIndenter* indenter) c_gtk_source_view_set_indenter;
	void function(GtkSourceView* view, int enable) c_gtk_source_view_set_insert_spaces_instead_of_tabs;
	void function(GtkSourceView* view, const(char)* category, GtkSourceMarkAttributes* attributes, int priority) c_gtk_source_view_set_mark_attributes;
	void function(GtkSourceView* view, uint pos) c_gtk_source_view_set_right_margin_position;
	void function(GtkSourceView* view, int show) c_gtk_source_view_set_show_line_marks;
	void function(GtkSourceView* view, int show) c_gtk_source_view_set_show_line_numbers;
	void function(GtkSourceView* view, int show) c_gtk_source_view_set_show_right_margin;
	void function(GtkSourceView* view, int smartBackspace) c_gtk_source_view_set_smart_backspace;
	void function(GtkSourceView* view, GtkSourceSmartHomeEndType smartHomeEnd) c_gtk_source_view_set_smart_home_end;
	void function(GtkSourceView* view, uint width) c_gtk_source_view_set_tab_width;
	void function(GtkSourceView* view, GtkTextIter* start, GtkTextIter* end) c_gtk_source_view_unindent_lines;

	// sourceview.VimIMContext

	GType function() c_gtk_source_vim_im_context_get_type;
	GtkIMContext* function() c_gtk_source_vim_im_context_new;
	void function(GtkSourceVimIMContext* self, const(char)* command) c_gtk_source_vim_im_context_execute_command;
	const(char)* function(GtkSourceVimIMContext* self) c_gtk_source_vim_im_context_get_command_bar_text;
	const(char)* function(GtkSourceVimIMContext* self) c_gtk_source_vim_im_context_get_command_text;
}


// sourceview.Buffer

alias c_gtk_source_buffer_get_type gtk_source_buffer_get_type;
alias c_gtk_source_buffer_new gtk_source_buffer_new;
alias c_gtk_source_buffer_new_with_language gtk_source_buffer_new_with_language;
alias c_gtk_source_buffer_backward_iter_to_source_mark gtk_source_buffer_backward_iter_to_source_mark;
alias c_gtk_source_buffer_change_case gtk_source_buffer_change_case;
alias c_gtk_source_buffer_create_source_mark gtk_source_buffer_create_source_mark;
alias c_gtk_source_buffer_create_source_tag gtk_source_buffer_create_source_tag;
alias c_gtk_source_buffer_ensure_highlight gtk_source_buffer_ensure_highlight;
alias c_gtk_source_buffer_forward_iter_to_source_mark gtk_source_buffer_forward_iter_to_source_mark;
alias c_gtk_source_buffer_get_context_classes_at_iter gtk_source_buffer_get_context_classes_at_iter;
alias c_gtk_source_buffer_get_highlight_matching_brackets gtk_source_buffer_get_highlight_matching_brackets;
alias c_gtk_source_buffer_get_highlight_syntax gtk_source_buffer_get_highlight_syntax;
alias c_gtk_source_buffer_get_implicit_trailing_newline gtk_source_buffer_get_implicit_trailing_newline;
alias c_gtk_source_buffer_get_language gtk_source_buffer_get_language;
alias c_gtk_source_buffer_get_source_marks_at_iter gtk_source_buffer_get_source_marks_at_iter;
alias c_gtk_source_buffer_get_source_marks_at_line gtk_source_buffer_get_source_marks_at_line;
alias c_gtk_source_buffer_get_style_scheme gtk_source_buffer_get_style_scheme;
alias c_gtk_source_buffer_iter_backward_to_context_class_toggle gtk_source_buffer_iter_backward_to_context_class_toggle;
alias c_gtk_source_buffer_iter_forward_to_context_class_toggle gtk_source_buffer_iter_forward_to_context_class_toggle;
alias c_gtk_source_buffer_iter_has_context_class gtk_source_buffer_iter_has_context_class;
alias c_gtk_source_buffer_join_lines gtk_source_buffer_join_lines;
alias c_gtk_source_buffer_remove_source_marks gtk_source_buffer_remove_source_marks;
alias c_gtk_source_buffer_set_highlight_matching_brackets gtk_source_buffer_set_highlight_matching_brackets;
alias c_gtk_source_buffer_set_highlight_syntax gtk_source_buffer_set_highlight_syntax;
alias c_gtk_source_buffer_set_implicit_trailing_newline gtk_source_buffer_set_implicit_trailing_newline;
alias c_gtk_source_buffer_set_language gtk_source_buffer_set_language;
alias c_gtk_source_buffer_set_style_scheme gtk_source_buffer_set_style_scheme;
alias c_gtk_source_buffer_sort_lines gtk_source_buffer_sort_lines;

// sourceview.Completion

alias c_gtk_source_completion_get_type gtk_source_completion_get_type;
alias c_gtk_source_completion_fuzzy_highlight gtk_source_completion_fuzzy_highlight;
alias c_gtk_source_completion_fuzzy_match gtk_source_completion_fuzzy_match;
alias c_gtk_source_completion_add_provider gtk_source_completion_add_provider;
alias c_gtk_source_completion_block_interactive gtk_source_completion_block_interactive;
alias c_gtk_source_completion_get_buffer gtk_source_completion_get_buffer;
alias c_gtk_source_completion_get_page_size gtk_source_completion_get_page_size;
alias c_gtk_source_completion_get_view gtk_source_completion_get_view;
alias c_gtk_source_completion_hide gtk_source_completion_hide;
alias c_gtk_source_completion_remove_provider gtk_source_completion_remove_provider;
alias c_gtk_source_completion_set_page_size gtk_source_completion_set_page_size;
alias c_gtk_source_completion_show gtk_source_completion_show;
alias c_gtk_source_completion_unblock_interactive gtk_source_completion_unblock_interactive;

// sourceview.CompletionCell

alias c_gtk_source_completion_cell_get_type gtk_source_completion_cell_get_type;
alias c_gtk_source_completion_cell_get_column gtk_source_completion_cell_get_column;
alias c_gtk_source_completion_cell_get_widget gtk_source_completion_cell_get_widget;
alias c_gtk_source_completion_cell_set_gicon gtk_source_completion_cell_set_gicon;
alias c_gtk_source_completion_cell_set_icon_name gtk_source_completion_cell_set_icon_name;
alias c_gtk_source_completion_cell_set_markup gtk_source_completion_cell_set_markup;
alias c_gtk_source_completion_cell_set_paintable gtk_source_completion_cell_set_paintable;
alias c_gtk_source_completion_cell_set_text gtk_source_completion_cell_set_text;
alias c_gtk_source_completion_cell_set_text_with_attributes gtk_source_completion_cell_set_text_with_attributes;
alias c_gtk_source_completion_cell_set_widget gtk_source_completion_cell_set_widget;

// sourceview.CompletionContext

alias c_gtk_source_completion_context_get_type gtk_source_completion_context_get_type;
alias c_gtk_source_completion_context_get_activation gtk_source_completion_context_get_activation;
alias c_gtk_source_completion_context_get_bounds gtk_source_completion_context_get_bounds;
alias c_gtk_source_completion_context_get_buffer gtk_source_completion_context_get_buffer;
alias c_gtk_source_completion_context_get_busy gtk_source_completion_context_get_busy;
alias c_gtk_source_completion_context_get_completion gtk_source_completion_context_get_completion;
alias c_gtk_source_completion_context_get_empty gtk_source_completion_context_get_empty;
alias c_gtk_source_completion_context_get_language gtk_source_completion_context_get_language;
alias c_gtk_source_completion_context_get_view gtk_source_completion_context_get_view;
alias c_gtk_source_completion_context_get_word gtk_source_completion_context_get_word;
alias c_gtk_source_completion_context_set_proposals_for_provider gtk_source_completion_context_set_proposals_for_provider;

// sourceview.CompletionProposal

alias c_gtk_source_completion_proposal_get_type gtk_source_completion_proposal_get_type;

// sourceview.CompletionProvider

alias c_gtk_source_completion_provider_get_type gtk_source_completion_provider_get_type;
alias c_gtk_source_completion_provider_activate gtk_source_completion_provider_activate;
alias c_gtk_source_completion_provider_display gtk_source_completion_provider_display;
alias c_gtk_source_completion_provider_get_priority gtk_source_completion_provider_get_priority;
alias c_gtk_source_completion_provider_get_title gtk_source_completion_provider_get_title;
alias c_gtk_source_completion_provider_is_trigger gtk_source_completion_provider_is_trigger;
alias c_gtk_source_completion_provider_key_activates gtk_source_completion_provider_key_activates;
alias c_gtk_source_completion_provider_list_alternates gtk_source_completion_provider_list_alternates;
alias c_gtk_source_completion_provider_populate_async gtk_source_completion_provider_populate_async;
alias c_gtk_source_completion_provider_populate_finish gtk_source_completion_provider_populate_finish;
alias c_gtk_source_completion_provider_refilter gtk_source_completion_provider_refilter;

// sourceview.CompletionSnippets

alias c_gtk_source_completion_snippets_get_type gtk_source_completion_snippets_get_type;
alias c_gtk_source_completion_snippets_new gtk_source_completion_snippets_new;

// sourceview.CompletionWords

alias c_gtk_source_completion_words_get_type gtk_source_completion_words_get_type;
alias c_gtk_source_completion_words_new gtk_source_completion_words_new;
alias c_gtk_source_completion_words_register gtk_source_completion_words_register;
alias c_gtk_source_completion_words_unregister gtk_source_completion_words_unregister;

// sourceview.Encoding

alias c_gtk_source_encoding_get_type gtk_source_encoding_get_type;
alias c_gtk_source_encoding_copy gtk_source_encoding_copy;
alias c_gtk_source_encoding_free gtk_source_encoding_free;
alias c_gtk_source_encoding_get_charset gtk_source_encoding_get_charset;
alias c_gtk_source_encoding_get_name gtk_source_encoding_get_name;
alias c_gtk_source_encoding_to_string gtk_source_encoding_to_string;
alias c_gtk_source_encoding_get_all gtk_source_encoding_get_all;
alias c_gtk_source_encoding_get_current gtk_source_encoding_get_current;
alias c_gtk_source_encoding_get_default_candidates gtk_source_encoding_get_default_candidates;
alias c_gtk_source_encoding_get_from_charset gtk_source_encoding_get_from_charset;
alias c_gtk_source_encoding_get_utf8 gtk_source_encoding_get_utf8;

// sourceview.File

alias c_gtk_source_file_get_type gtk_source_file_get_type;
alias c_gtk_source_file_new gtk_source_file_new;
alias c_gtk_source_file_check_file_on_disk gtk_source_file_check_file_on_disk;
alias c_gtk_source_file_get_compression_type gtk_source_file_get_compression_type;
alias c_gtk_source_file_get_encoding gtk_source_file_get_encoding;
alias c_gtk_source_file_get_location gtk_source_file_get_location;
alias c_gtk_source_file_get_newline_type gtk_source_file_get_newline_type;
alias c_gtk_source_file_is_deleted gtk_source_file_is_deleted;
alias c_gtk_source_file_is_externally_modified gtk_source_file_is_externally_modified;
alias c_gtk_source_file_is_local gtk_source_file_is_local;
alias c_gtk_source_file_is_readonly gtk_source_file_is_readonly;
alias c_gtk_source_file_set_location gtk_source_file_set_location;
alias c_gtk_source_file_set_mount_operation_factory gtk_source_file_set_mount_operation_factory;

// sourceview.FileLoader

alias c_gtk_source_file_loader_get_type gtk_source_file_loader_get_type;
alias c_gtk_source_file_loader_new gtk_source_file_loader_new;
alias c_gtk_source_file_loader_new_from_stream gtk_source_file_loader_new_from_stream;
alias c_gtk_source_file_loader_get_buffer gtk_source_file_loader_get_buffer;
alias c_gtk_source_file_loader_get_compression_type gtk_source_file_loader_get_compression_type;
alias c_gtk_source_file_loader_get_encoding gtk_source_file_loader_get_encoding;
alias c_gtk_source_file_loader_get_file gtk_source_file_loader_get_file;
alias c_gtk_source_file_loader_get_input_stream gtk_source_file_loader_get_input_stream;
alias c_gtk_source_file_loader_get_location gtk_source_file_loader_get_location;
alias c_gtk_source_file_loader_get_newline_type gtk_source_file_loader_get_newline_type;
alias c_gtk_source_file_loader_load_async gtk_source_file_loader_load_async;
alias c_gtk_source_file_loader_load_finish gtk_source_file_loader_load_finish;
alias c_gtk_source_file_loader_set_candidate_encodings gtk_source_file_loader_set_candidate_encodings;

// sourceview.FileSaver

alias c_gtk_source_file_saver_get_type gtk_source_file_saver_get_type;
alias c_gtk_source_file_saver_new gtk_source_file_saver_new;
alias c_gtk_source_file_saver_new_with_target gtk_source_file_saver_new_with_target;
alias c_gtk_source_file_saver_get_buffer gtk_source_file_saver_get_buffer;
alias c_gtk_source_file_saver_get_compression_type gtk_source_file_saver_get_compression_type;
alias c_gtk_source_file_saver_get_encoding gtk_source_file_saver_get_encoding;
alias c_gtk_source_file_saver_get_file gtk_source_file_saver_get_file;
alias c_gtk_source_file_saver_get_flags gtk_source_file_saver_get_flags;
alias c_gtk_source_file_saver_get_location gtk_source_file_saver_get_location;
alias c_gtk_source_file_saver_get_newline_type gtk_source_file_saver_get_newline_type;
alias c_gtk_source_file_saver_save_async gtk_source_file_saver_save_async;
alias c_gtk_source_file_saver_save_finish gtk_source_file_saver_save_finish;
alias c_gtk_source_file_saver_set_compression_type gtk_source_file_saver_set_compression_type;
alias c_gtk_source_file_saver_set_encoding gtk_source_file_saver_set_encoding;
alias c_gtk_source_file_saver_set_flags gtk_source_file_saver_set_flags;
alias c_gtk_source_file_saver_set_newline_type gtk_source_file_saver_set_newline_type;

// sourceview.Gutter

alias c_gtk_source_gutter_get_type gtk_source_gutter_get_type;
alias c_gtk_source_gutter_get_view gtk_source_gutter_get_view;
alias c_gtk_source_gutter_insert gtk_source_gutter_insert;
alias c_gtk_source_gutter_remove gtk_source_gutter_remove;
alias c_gtk_source_gutter_reorder gtk_source_gutter_reorder;

// sourceview.GutterLines

alias c_gtk_source_gutter_lines_get_type gtk_source_gutter_lines_get_type;
alias c_gtk_source_gutter_lines_add_class gtk_source_gutter_lines_add_class;
alias c_gtk_source_gutter_lines_add_qclass gtk_source_gutter_lines_add_qclass;
alias c_gtk_source_gutter_lines_get_buffer gtk_source_gutter_lines_get_buffer;
alias c_gtk_source_gutter_lines_get_first gtk_source_gutter_lines_get_first;
alias c_gtk_source_gutter_lines_get_iter_at_line gtk_source_gutter_lines_get_iter_at_line;
alias c_gtk_source_gutter_lines_get_last gtk_source_gutter_lines_get_last;
alias c_gtk_source_gutter_lines_get_line_yrange gtk_source_gutter_lines_get_line_yrange;
alias c_gtk_source_gutter_lines_get_view gtk_source_gutter_lines_get_view;
alias c_gtk_source_gutter_lines_has_class gtk_source_gutter_lines_has_class;
alias c_gtk_source_gutter_lines_has_qclass gtk_source_gutter_lines_has_qclass;
alias c_gtk_source_gutter_lines_is_cursor gtk_source_gutter_lines_is_cursor;
alias c_gtk_source_gutter_lines_is_prelit gtk_source_gutter_lines_is_prelit;
alias c_gtk_source_gutter_lines_is_selected gtk_source_gutter_lines_is_selected;
alias c_gtk_source_gutter_lines_remove_class gtk_source_gutter_lines_remove_class;
alias c_gtk_source_gutter_lines_remove_qclass gtk_source_gutter_lines_remove_qclass;

// sourceview.GutterRenderer

alias c_gtk_source_gutter_renderer_get_type gtk_source_gutter_renderer_get_type;
alias c_gtk_source_gutter_renderer_activate gtk_source_gutter_renderer_activate;
alias c_gtk_source_gutter_renderer_align_cell gtk_source_gutter_renderer_align_cell;
alias c_gtk_source_gutter_renderer_get_alignment_mode gtk_source_gutter_renderer_get_alignment_mode;
alias c_gtk_source_gutter_renderer_get_buffer gtk_source_gutter_renderer_get_buffer;
alias c_gtk_source_gutter_renderer_get_view gtk_source_gutter_renderer_get_view;
alias c_gtk_source_gutter_renderer_get_xalign gtk_source_gutter_renderer_get_xalign;
alias c_gtk_source_gutter_renderer_get_xpad gtk_source_gutter_renderer_get_xpad;
alias c_gtk_source_gutter_renderer_get_yalign gtk_source_gutter_renderer_get_yalign;
alias c_gtk_source_gutter_renderer_get_ypad gtk_source_gutter_renderer_get_ypad;
alias c_gtk_source_gutter_renderer_query_activatable gtk_source_gutter_renderer_query_activatable;
alias c_gtk_source_gutter_renderer_set_alignment_mode gtk_source_gutter_renderer_set_alignment_mode;
alias c_gtk_source_gutter_renderer_set_xalign gtk_source_gutter_renderer_set_xalign;
alias c_gtk_source_gutter_renderer_set_xpad gtk_source_gutter_renderer_set_xpad;
alias c_gtk_source_gutter_renderer_set_yalign gtk_source_gutter_renderer_set_yalign;
alias c_gtk_source_gutter_renderer_set_ypad gtk_source_gutter_renderer_set_ypad;

// sourceview.GutterRendererPixbuf

alias c_gtk_source_gutter_renderer_pixbuf_get_type gtk_source_gutter_renderer_pixbuf_get_type;
alias c_gtk_source_gutter_renderer_pixbuf_new gtk_source_gutter_renderer_pixbuf_new;
alias c_gtk_source_gutter_renderer_pixbuf_get_gicon gtk_source_gutter_renderer_pixbuf_get_gicon;
alias c_gtk_source_gutter_renderer_pixbuf_get_icon_name gtk_source_gutter_renderer_pixbuf_get_icon_name;
alias c_gtk_source_gutter_renderer_pixbuf_get_paintable gtk_source_gutter_renderer_pixbuf_get_paintable;
alias c_gtk_source_gutter_renderer_pixbuf_get_pixbuf gtk_source_gutter_renderer_pixbuf_get_pixbuf;
alias c_gtk_source_gutter_renderer_pixbuf_overlay_paintable gtk_source_gutter_renderer_pixbuf_overlay_paintable;
alias c_gtk_source_gutter_renderer_pixbuf_set_gicon gtk_source_gutter_renderer_pixbuf_set_gicon;
alias c_gtk_source_gutter_renderer_pixbuf_set_icon_name gtk_source_gutter_renderer_pixbuf_set_icon_name;
alias c_gtk_source_gutter_renderer_pixbuf_set_paintable gtk_source_gutter_renderer_pixbuf_set_paintable;
alias c_gtk_source_gutter_renderer_pixbuf_set_pixbuf gtk_source_gutter_renderer_pixbuf_set_pixbuf;

// sourceview.GutterRendererText

alias c_gtk_source_gutter_renderer_text_get_type gtk_source_gutter_renderer_text_get_type;
alias c_gtk_source_gutter_renderer_text_new gtk_source_gutter_renderer_text_new;
alias c_gtk_source_gutter_renderer_text_measure gtk_source_gutter_renderer_text_measure;
alias c_gtk_source_gutter_renderer_text_measure_markup gtk_source_gutter_renderer_text_measure_markup;
alias c_gtk_source_gutter_renderer_text_set_markup gtk_source_gutter_renderer_text_set_markup;
alias c_gtk_source_gutter_renderer_text_set_text gtk_source_gutter_renderer_text_set_text;

// sourceview.Hover

alias c_gtk_source_hover_get_type gtk_source_hover_get_type;
alias c_gtk_source_hover_add_provider gtk_source_hover_add_provider;
alias c_gtk_source_hover_remove_provider gtk_source_hover_remove_provider;

// sourceview.HoverContext

alias c_gtk_source_hover_context_get_type gtk_source_hover_context_get_type;
alias c_gtk_source_hover_context_get_bounds gtk_source_hover_context_get_bounds;
alias c_gtk_source_hover_context_get_buffer gtk_source_hover_context_get_buffer;
alias c_gtk_source_hover_context_get_iter gtk_source_hover_context_get_iter;
alias c_gtk_source_hover_context_get_view gtk_source_hover_context_get_view;

// sourceview.HoverDisplay

alias c_gtk_source_hover_display_get_type gtk_source_hover_display_get_type;
alias c_gtk_source_hover_display_append gtk_source_hover_display_append;
alias c_gtk_source_hover_display_insert_after gtk_source_hover_display_insert_after;
alias c_gtk_source_hover_display_prepend gtk_source_hover_display_prepend;
alias c_gtk_source_hover_display_remove gtk_source_hover_display_remove;

// sourceview.HoverProvider

alias c_gtk_source_hover_provider_get_type gtk_source_hover_provider_get_type;
alias c_gtk_source_hover_provider_populate_async gtk_source_hover_provider_populate_async;
alias c_gtk_source_hover_provider_populate_finish gtk_source_hover_provider_populate_finish;

// sourceview.Indenter

alias c_gtk_source_indenter_get_type gtk_source_indenter_get_type;
alias c_gtk_source_indenter_indent gtk_source_indenter_indent;
alias c_gtk_source_indenter_is_trigger gtk_source_indenter_is_trigger;

// sourceview.Language

alias c_gtk_source_language_get_type gtk_source_language_get_type;
alias c_gtk_source_language_get_globs gtk_source_language_get_globs;
alias c_gtk_source_language_get_hidden gtk_source_language_get_hidden;
alias c_gtk_source_language_get_id gtk_source_language_get_id;
alias c_gtk_source_language_get_metadata gtk_source_language_get_metadata;
alias c_gtk_source_language_get_mime_types gtk_source_language_get_mime_types;
alias c_gtk_source_language_get_name gtk_source_language_get_name;
alias c_gtk_source_language_get_section gtk_source_language_get_section;
alias c_gtk_source_language_get_style_fallback gtk_source_language_get_style_fallback;
alias c_gtk_source_language_get_style_ids gtk_source_language_get_style_ids;
alias c_gtk_source_language_get_style_name gtk_source_language_get_style_name;

// sourceview.LanguageManager

alias c_gtk_source_language_manager_get_type gtk_source_language_manager_get_type;
alias c_gtk_source_language_manager_new gtk_source_language_manager_new;
alias c_gtk_source_language_manager_get_default gtk_source_language_manager_get_default;
alias c_gtk_source_language_manager_append_search_path gtk_source_language_manager_append_search_path;
alias c_gtk_source_language_manager_get_language gtk_source_language_manager_get_language;
alias c_gtk_source_language_manager_get_language_ids gtk_source_language_manager_get_language_ids;
alias c_gtk_source_language_manager_get_search_path gtk_source_language_manager_get_search_path;
alias c_gtk_source_language_manager_guess_language gtk_source_language_manager_guess_language;
alias c_gtk_source_language_manager_prepend_search_path gtk_source_language_manager_prepend_search_path;
alias c_gtk_source_language_manager_set_search_path gtk_source_language_manager_set_search_path;

// sourceview.Map

alias c_gtk_source_map_get_type gtk_source_map_get_type;
alias c_gtk_source_map_new gtk_source_map_new;
alias c_gtk_source_map_get_view gtk_source_map_get_view;
alias c_gtk_source_map_set_view gtk_source_map_set_view;

// sourceview.Mark

alias c_gtk_source_mark_get_type gtk_source_mark_get_type;
alias c_gtk_source_mark_new gtk_source_mark_new;
alias c_gtk_source_mark_get_category gtk_source_mark_get_category;
alias c_gtk_source_mark_next gtk_source_mark_next;
alias c_gtk_source_mark_prev gtk_source_mark_prev;

// sourceview.MarkAttributes

alias c_gtk_source_mark_attributes_get_type gtk_source_mark_attributes_get_type;
alias c_gtk_source_mark_attributes_new gtk_source_mark_attributes_new;
alias c_gtk_source_mark_attributes_get_background gtk_source_mark_attributes_get_background;
alias c_gtk_source_mark_attributes_get_gicon gtk_source_mark_attributes_get_gicon;
alias c_gtk_source_mark_attributes_get_icon_name gtk_source_mark_attributes_get_icon_name;
alias c_gtk_source_mark_attributes_get_pixbuf gtk_source_mark_attributes_get_pixbuf;
alias c_gtk_source_mark_attributes_get_tooltip_markup gtk_source_mark_attributes_get_tooltip_markup;
alias c_gtk_source_mark_attributes_get_tooltip_text gtk_source_mark_attributes_get_tooltip_text;
alias c_gtk_source_mark_attributes_render_icon gtk_source_mark_attributes_render_icon;
alias c_gtk_source_mark_attributes_set_background gtk_source_mark_attributes_set_background;
alias c_gtk_source_mark_attributes_set_gicon gtk_source_mark_attributes_set_gicon;
alias c_gtk_source_mark_attributes_set_icon_name gtk_source_mark_attributes_set_icon_name;
alias c_gtk_source_mark_attributes_set_pixbuf gtk_source_mark_attributes_set_pixbuf;

// sourceview.PrintCompositor

alias c_gtk_source_print_compositor_get_type gtk_source_print_compositor_get_type;
alias c_gtk_source_print_compositor_new gtk_source_print_compositor_new;
alias c_gtk_source_print_compositor_new_from_view gtk_source_print_compositor_new_from_view;
alias c_gtk_source_print_compositor_draw_page gtk_source_print_compositor_draw_page;
alias c_gtk_source_print_compositor_get_body_font_name gtk_source_print_compositor_get_body_font_name;
alias c_gtk_source_print_compositor_get_bottom_margin gtk_source_print_compositor_get_bottom_margin;
alias c_gtk_source_print_compositor_get_buffer gtk_source_print_compositor_get_buffer;
alias c_gtk_source_print_compositor_get_footer_font_name gtk_source_print_compositor_get_footer_font_name;
alias c_gtk_source_print_compositor_get_header_font_name gtk_source_print_compositor_get_header_font_name;
alias c_gtk_source_print_compositor_get_highlight_syntax gtk_source_print_compositor_get_highlight_syntax;
alias c_gtk_source_print_compositor_get_left_margin gtk_source_print_compositor_get_left_margin;
alias c_gtk_source_print_compositor_get_line_numbers_font_name gtk_source_print_compositor_get_line_numbers_font_name;
alias c_gtk_source_print_compositor_get_n_pages gtk_source_print_compositor_get_n_pages;
alias c_gtk_source_print_compositor_get_pagination_progress gtk_source_print_compositor_get_pagination_progress;
alias c_gtk_source_print_compositor_get_print_footer gtk_source_print_compositor_get_print_footer;
alias c_gtk_source_print_compositor_get_print_header gtk_source_print_compositor_get_print_header;
alias c_gtk_source_print_compositor_get_print_line_numbers gtk_source_print_compositor_get_print_line_numbers;
alias c_gtk_source_print_compositor_get_right_margin gtk_source_print_compositor_get_right_margin;
alias c_gtk_source_print_compositor_get_tab_width gtk_source_print_compositor_get_tab_width;
alias c_gtk_source_print_compositor_get_top_margin gtk_source_print_compositor_get_top_margin;
alias c_gtk_source_print_compositor_get_wrap_mode gtk_source_print_compositor_get_wrap_mode;
alias c_gtk_source_print_compositor_ignore_tag gtk_source_print_compositor_ignore_tag;
alias c_gtk_source_print_compositor_paginate gtk_source_print_compositor_paginate;
alias c_gtk_source_print_compositor_set_body_font_name gtk_source_print_compositor_set_body_font_name;
alias c_gtk_source_print_compositor_set_bottom_margin gtk_source_print_compositor_set_bottom_margin;
alias c_gtk_source_print_compositor_set_footer_font_name gtk_source_print_compositor_set_footer_font_name;
alias c_gtk_source_print_compositor_set_footer_format gtk_source_print_compositor_set_footer_format;
alias c_gtk_source_print_compositor_set_header_font_name gtk_source_print_compositor_set_header_font_name;
alias c_gtk_source_print_compositor_set_header_format gtk_source_print_compositor_set_header_format;
alias c_gtk_source_print_compositor_set_highlight_syntax gtk_source_print_compositor_set_highlight_syntax;
alias c_gtk_source_print_compositor_set_left_margin gtk_source_print_compositor_set_left_margin;
alias c_gtk_source_print_compositor_set_line_numbers_font_name gtk_source_print_compositor_set_line_numbers_font_name;
alias c_gtk_source_print_compositor_set_print_footer gtk_source_print_compositor_set_print_footer;
alias c_gtk_source_print_compositor_set_print_header gtk_source_print_compositor_set_print_header;
alias c_gtk_source_print_compositor_set_print_line_numbers gtk_source_print_compositor_set_print_line_numbers;
alias c_gtk_source_print_compositor_set_right_margin gtk_source_print_compositor_set_right_margin;
alias c_gtk_source_print_compositor_set_tab_width gtk_source_print_compositor_set_tab_width;
alias c_gtk_source_print_compositor_set_top_margin gtk_source_print_compositor_set_top_margin;
alias c_gtk_source_print_compositor_set_wrap_mode gtk_source_print_compositor_set_wrap_mode;

// sourceview.Region

alias c_gtk_source_region_get_type gtk_source_region_get_type;
alias c_gtk_source_region_new gtk_source_region_new;
alias c_gtk_source_region_add_region gtk_source_region_add_region;
alias c_gtk_source_region_add_subregion gtk_source_region_add_subregion;
alias c_gtk_source_region_get_bounds gtk_source_region_get_bounds;
alias c_gtk_source_region_get_buffer gtk_source_region_get_buffer;
alias c_gtk_source_region_get_start_region_iter gtk_source_region_get_start_region_iter;
alias c_gtk_source_region_intersect_region gtk_source_region_intersect_region;
alias c_gtk_source_region_intersect_subregion gtk_source_region_intersect_subregion;
alias c_gtk_source_region_is_empty gtk_source_region_is_empty;
alias c_gtk_source_region_subtract_region gtk_source_region_subtract_region;
alias c_gtk_source_region_subtract_subregion gtk_source_region_subtract_subregion;
alias c_gtk_source_region_to_string gtk_source_region_to_string;

// sourceview.RegionIter

alias c_gtk_source_region_iter_get_subregion gtk_source_region_iter_get_subregion;
alias c_gtk_source_region_iter_is_end gtk_source_region_iter_is_end;
alias c_gtk_source_region_iter_next gtk_source_region_iter_next;

// sourceview.SearchContext

alias c_gtk_source_search_context_get_type gtk_source_search_context_get_type;
alias c_gtk_source_search_context_new gtk_source_search_context_new;
alias c_gtk_source_search_context_backward gtk_source_search_context_backward;
alias c_gtk_source_search_context_backward_async gtk_source_search_context_backward_async;
alias c_gtk_source_search_context_backward_finish gtk_source_search_context_backward_finish;
alias c_gtk_source_search_context_forward gtk_source_search_context_forward;
alias c_gtk_source_search_context_forward_async gtk_source_search_context_forward_async;
alias c_gtk_source_search_context_forward_finish gtk_source_search_context_forward_finish;
alias c_gtk_source_search_context_get_buffer gtk_source_search_context_get_buffer;
alias c_gtk_source_search_context_get_highlight gtk_source_search_context_get_highlight;
alias c_gtk_source_search_context_get_match_style gtk_source_search_context_get_match_style;
alias c_gtk_source_search_context_get_occurrence_position gtk_source_search_context_get_occurrence_position;
alias c_gtk_source_search_context_get_occurrences_count gtk_source_search_context_get_occurrences_count;
alias c_gtk_source_search_context_get_regex_error gtk_source_search_context_get_regex_error;
alias c_gtk_source_search_context_get_settings gtk_source_search_context_get_settings;
alias c_gtk_source_search_context_replace gtk_source_search_context_replace;
alias c_gtk_source_search_context_replace_all gtk_source_search_context_replace_all;
alias c_gtk_source_search_context_set_highlight gtk_source_search_context_set_highlight;
alias c_gtk_source_search_context_set_match_style gtk_source_search_context_set_match_style;

// sourceview.SearchSettings

alias c_gtk_source_search_settings_get_type gtk_source_search_settings_get_type;
alias c_gtk_source_search_settings_new gtk_source_search_settings_new;
alias c_gtk_source_search_settings_get_at_word_boundaries gtk_source_search_settings_get_at_word_boundaries;
alias c_gtk_source_search_settings_get_case_sensitive gtk_source_search_settings_get_case_sensitive;
alias c_gtk_source_search_settings_get_regex_enabled gtk_source_search_settings_get_regex_enabled;
alias c_gtk_source_search_settings_get_search_text gtk_source_search_settings_get_search_text;
alias c_gtk_source_search_settings_get_wrap_around gtk_source_search_settings_get_wrap_around;
alias c_gtk_source_search_settings_set_at_word_boundaries gtk_source_search_settings_set_at_word_boundaries;
alias c_gtk_source_search_settings_set_case_sensitive gtk_source_search_settings_set_case_sensitive;
alias c_gtk_source_search_settings_set_regex_enabled gtk_source_search_settings_set_regex_enabled;
alias c_gtk_source_search_settings_set_search_text gtk_source_search_settings_set_search_text;
alias c_gtk_source_search_settings_set_wrap_around gtk_source_search_settings_set_wrap_around;

// sourceview.Snippet

alias c_gtk_source_snippet_get_type gtk_source_snippet_get_type;
alias c_gtk_source_snippet_new gtk_source_snippet_new;
alias c_gtk_source_snippet_add_chunk gtk_source_snippet_add_chunk;
alias c_gtk_source_snippet_copy gtk_source_snippet_copy;
alias c_gtk_source_snippet_get_context gtk_source_snippet_get_context;
alias c_gtk_source_snippet_get_description gtk_source_snippet_get_description;
alias c_gtk_source_snippet_get_focus_position gtk_source_snippet_get_focus_position;
alias c_gtk_source_snippet_get_language_id gtk_source_snippet_get_language_id;
alias c_gtk_source_snippet_get_n_chunks gtk_source_snippet_get_n_chunks;
alias c_gtk_source_snippet_get_name gtk_source_snippet_get_name;
alias c_gtk_source_snippet_get_nth_chunk gtk_source_snippet_get_nth_chunk;
alias c_gtk_source_snippet_get_trigger gtk_source_snippet_get_trigger;
alias c_gtk_source_snippet_set_description gtk_source_snippet_set_description;
alias c_gtk_source_snippet_set_language_id gtk_source_snippet_set_language_id;
alias c_gtk_source_snippet_set_name gtk_source_snippet_set_name;
alias c_gtk_source_snippet_set_trigger gtk_source_snippet_set_trigger;

// sourceview.SnippetChunk

alias c_gtk_source_snippet_chunk_get_type gtk_source_snippet_chunk_get_type;
alias c_gtk_source_snippet_chunk_new gtk_source_snippet_chunk_new;
alias c_gtk_source_snippet_chunk_copy gtk_source_snippet_chunk_copy;
alias c_gtk_source_snippet_chunk_get_context gtk_source_snippet_chunk_get_context;
alias c_gtk_source_snippet_chunk_get_focus_position gtk_source_snippet_chunk_get_focus_position;
alias c_gtk_source_snippet_chunk_get_spec gtk_source_snippet_chunk_get_spec;
alias c_gtk_source_snippet_chunk_get_text gtk_source_snippet_chunk_get_text;
alias c_gtk_source_snippet_chunk_get_text_set gtk_source_snippet_chunk_get_text_set;
alias c_gtk_source_snippet_chunk_get_tooltip_text gtk_source_snippet_chunk_get_tooltip_text;
alias c_gtk_source_snippet_chunk_set_context gtk_source_snippet_chunk_set_context;
alias c_gtk_source_snippet_chunk_set_focus_position gtk_source_snippet_chunk_set_focus_position;
alias c_gtk_source_snippet_chunk_set_spec gtk_source_snippet_chunk_set_spec;
alias c_gtk_source_snippet_chunk_set_text gtk_source_snippet_chunk_set_text;
alias c_gtk_source_snippet_chunk_set_text_set gtk_source_snippet_chunk_set_text_set;
alias c_gtk_source_snippet_chunk_set_tooltip_text gtk_source_snippet_chunk_set_tooltip_text;

// sourceview.SnippetContext

alias c_gtk_source_snippet_context_get_type gtk_source_snippet_context_get_type;
alias c_gtk_source_snippet_context_new gtk_source_snippet_context_new;
alias c_gtk_source_snippet_context_clear_variables gtk_source_snippet_context_clear_variables;
alias c_gtk_source_snippet_context_expand gtk_source_snippet_context_expand;
alias c_gtk_source_snippet_context_get_variable gtk_source_snippet_context_get_variable;
alias c_gtk_source_snippet_context_set_constant gtk_source_snippet_context_set_constant;
alias c_gtk_source_snippet_context_set_line_prefix gtk_source_snippet_context_set_line_prefix;
alias c_gtk_source_snippet_context_set_tab_width gtk_source_snippet_context_set_tab_width;
alias c_gtk_source_snippet_context_set_use_spaces gtk_source_snippet_context_set_use_spaces;
alias c_gtk_source_snippet_context_set_variable gtk_source_snippet_context_set_variable;

// sourceview.SnippetManager

alias c_gtk_source_snippet_manager_get_type gtk_source_snippet_manager_get_type;
alias c_gtk_source_snippet_manager_get_default gtk_source_snippet_manager_get_default;
alias c_gtk_source_snippet_manager_get_search_path gtk_source_snippet_manager_get_search_path;
alias c_gtk_source_snippet_manager_get_snippet gtk_source_snippet_manager_get_snippet;
alias c_gtk_source_snippet_manager_list_groups gtk_source_snippet_manager_list_groups;
alias c_gtk_source_snippet_manager_list_matching gtk_source_snippet_manager_list_matching;
alias c_gtk_source_snippet_manager_set_search_path gtk_source_snippet_manager_set_search_path;

// sourceview.SpaceDrawer

alias c_gtk_source_space_drawer_get_type gtk_source_space_drawer_get_type;
alias c_gtk_source_space_drawer_new gtk_source_space_drawer_new;
alias c_gtk_source_space_drawer_bind_matrix_setting gtk_source_space_drawer_bind_matrix_setting;
alias c_gtk_source_space_drawer_get_enable_matrix gtk_source_space_drawer_get_enable_matrix;
alias c_gtk_source_space_drawer_get_matrix gtk_source_space_drawer_get_matrix;
alias c_gtk_source_space_drawer_get_types_for_locations gtk_source_space_drawer_get_types_for_locations;
alias c_gtk_source_space_drawer_set_enable_matrix gtk_source_space_drawer_set_enable_matrix;
alias c_gtk_source_space_drawer_set_matrix gtk_source_space_drawer_set_matrix;
alias c_gtk_source_space_drawer_set_types_for_locations gtk_source_space_drawer_set_types_for_locations;

// sourceview.Style

alias c_gtk_source_style_get_type gtk_source_style_get_type;
alias c_gtk_source_style_apply gtk_source_style_apply;
alias c_gtk_source_style_copy gtk_source_style_copy;

// sourceview.StyleScheme

alias c_gtk_source_style_scheme_get_type gtk_source_style_scheme_get_type;
alias c_gtk_source_style_scheme_get_authors gtk_source_style_scheme_get_authors;
alias c_gtk_source_style_scheme_get_description gtk_source_style_scheme_get_description;
alias c_gtk_source_style_scheme_get_filename gtk_source_style_scheme_get_filename;
alias c_gtk_source_style_scheme_get_id gtk_source_style_scheme_get_id;
alias c_gtk_source_style_scheme_get_metadata gtk_source_style_scheme_get_metadata;
alias c_gtk_source_style_scheme_get_name gtk_source_style_scheme_get_name;
alias c_gtk_source_style_scheme_get_style gtk_source_style_scheme_get_style;

// sourceview.StyleSchemeChooser

alias c_gtk_source_style_scheme_chooser_get_type gtk_source_style_scheme_chooser_get_type;
alias c_gtk_source_style_scheme_chooser_get_style_scheme gtk_source_style_scheme_chooser_get_style_scheme;
alias c_gtk_source_style_scheme_chooser_set_style_scheme gtk_source_style_scheme_chooser_set_style_scheme;

// sourceview.StyleSchemeChooserButton

alias c_gtk_source_style_scheme_chooser_button_get_type gtk_source_style_scheme_chooser_button_get_type;
alias c_gtk_source_style_scheme_chooser_button_new gtk_source_style_scheme_chooser_button_new;

// sourceview.StyleSchemeChooserWidget

alias c_gtk_source_style_scheme_chooser_widget_get_type gtk_source_style_scheme_chooser_widget_get_type;
alias c_gtk_source_style_scheme_chooser_widget_new gtk_source_style_scheme_chooser_widget_new;

// sourceview.StyleSchemeManager

alias c_gtk_source_style_scheme_manager_get_type gtk_source_style_scheme_manager_get_type;
alias c_gtk_source_style_scheme_manager_new gtk_source_style_scheme_manager_new;
alias c_gtk_source_style_scheme_manager_get_default gtk_source_style_scheme_manager_get_default;
alias c_gtk_source_style_scheme_manager_append_search_path gtk_source_style_scheme_manager_append_search_path;
alias c_gtk_source_style_scheme_manager_force_rescan gtk_source_style_scheme_manager_force_rescan;
alias c_gtk_source_style_scheme_manager_get_scheme gtk_source_style_scheme_manager_get_scheme;
alias c_gtk_source_style_scheme_manager_get_scheme_ids gtk_source_style_scheme_manager_get_scheme_ids;
alias c_gtk_source_style_scheme_manager_get_search_path gtk_source_style_scheme_manager_get_search_path;
alias c_gtk_source_style_scheme_manager_prepend_search_path gtk_source_style_scheme_manager_prepend_search_path;
alias c_gtk_source_style_scheme_manager_set_search_path gtk_source_style_scheme_manager_set_search_path;

// sourceview.StyleSchemePreview

alias c_gtk_source_style_scheme_preview_get_type gtk_source_style_scheme_preview_get_type;
alias c_gtk_source_style_scheme_preview_new gtk_source_style_scheme_preview_new;
alias c_gtk_source_style_scheme_preview_get_scheme gtk_source_style_scheme_preview_get_scheme;
alias c_gtk_source_style_scheme_preview_get_selected gtk_source_style_scheme_preview_get_selected;
alias c_gtk_source_style_scheme_preview_set_selected gtk_source_style_scheme_preview_set_selected;

// sourceview.Tag

alias c_gtk_source_tag_get_type gtk_source_tag_get_type;
alias c_gtk_source_tag_new gtk_source_tag_new;

// sourceview.View

alias c_gtk_source_view_get_type gtk_source_view_get_type;
alias c_gtk_source_view_new gtk_source_view_new;
alias c_gtk_source_view_new_with_buffer gtk_source_view_new_with_buffer;
alias c_gtk_source_view_get_auto_indent gtk_source_view_get_auto_indent;
alias c_gtk_source_view_get_background_pattern gtk_source_view_get_background_pattern;
alias c_gtk_source_view_get_completion gtk_source_view_get_completion;
alias c_gtk_source_view_get_enable_snippets gtk_source_view_get_enable_snippets;
alias c_gtk_source_view_get_gutter gtk_source_view_get_gutter;
alias c_gtk_source_view_get_highlight_current_line gtk_source_view_get_highlight_current_line;
alias c_gtk_source_view_get_hover gtk_source_view_get_hover;
alias c_gtk_source_view_get_indent_on_tab gtk_source_view_get_indent_on_tab;
alias c_gtk_source_view_get_indent_width gtk_source_view_get_indent_width;
alias c_gtk_source_view_get_indenter gtk_source_view_get_indenter;
alias c_gtk_source_view_get_insert_spaces_instead_of_tabs gtk_source_view_get_insert_spaces_instead_of_tabs;
alias c_gtk_source_view_get_mark_attributes gtk_source_view_get_mark_attributes;
alias c_gtk_source_view_get_right_margin_position gtk_source_view_get_right_margin_position;
alias c_gtk_source_view_get_show_line_marks gtk_source_view_get_show_line_marks;
alias c_gtk_source_view_get_show_line_numbers gtk_source_view_get_show_line_numbers;
alias c_gtk_source_view_get_show_right_margin gtk_source_view_get_show_right_margin;
alias c_gtk_source_view_get_smart_backspace gtk_source_view_get_smart_backspace;
alias c_gtk_source_view_get_smart_home_end gtk_source_view_get_smart_home_end;
alias c_gtk_source_view_get_space_drawer gtk_source_view_get_space_drawer;
alias c_gtk_source_view_get_tab_width gtk_source_view_get_tab_width;
alias c_gtk_source_view_get_visual_column gtk_source_view_get_visual_column;
alias c_gtk_source_view_indent_lines gtk_source_view_indent_lines;
alias c_gtk_source_view_push_snippet gtk_source_view_push_snippet;
alias c_gtk_source_view_set_auto_indent gtk_source_view_set_auto_indent;
alias c_gtk_source_view_set_background_pattern gtk_source_view_set_background_pattern;
alias c_gtk_source_view_set_enable_snippets gtk_source_view_set_enable_snippets;
alias c_gtk_source_view_set_highlight_current_line gtk_source_view_set_highlight_current_line;
alias c_gtk_source_view_set_indent_on_tab gtk_source_view_set_indent_on_tab;
alias c_gtk_source_view_set_indent_width gtk_source_view_set_indent_width;
alias c_gtk_source_view_set_indenter gtk_source_view_set_indenter;
alias c_gtk_source_view_set_insert_spaces_instead_of_tabs gtk_source_view_set_insert_spaces_instead_of_tabs;
alias c_gtk_source_view_set_mark_attributes gtk_source_view_set_mark_attributes;
alias c_gtk_source_view_set_right_margin_position gtk_source_view_set_right_margin_position;
alias c_gtk_source_view_set_show_line_marks gtk_source_view_set_show_line_marks;
alias c_gtk_source_view_set_show_line_numbers gtk_source_view_set_show_line_numbers;
alias c_gtk_source_view_set_show_right_margin gtk_source_view_set_show_right_margin;
alias c_gtk_source_view_set_smart_backspace gtk_source_view_set_smart_backspace;
alias c_gtk_source_view_set_smart_home_end gtk_source_view_set_smart_home_end;
alias c_gtk_source_view_set_tab_width gtk_source_view_set_tab_width;
alias c_gtk_source_view_unindent_lines gtk_source_view_unindent_lines;

// sourceview.VimIMContext

alias c_gtk_source_vim_im_context_get_type gtk_source_vim_im_context_get_type;
alias c_gtk_source_vim_im_context_new gtk_source_vim_im_context_new;
alias c_gtk_source_vim_im_context_execute_command gtk_source_vim_im_context_execute_command;
alias c_gtk_source_vim_im_context_get_command_bar_text gtk_source_vim_im_context_get_command_bar_text;
alias c_gtk_source_vim_im_context_get_command_text gtk_source_vim_im_context_get_command_text;
