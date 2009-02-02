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


module gsvc.gsv;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gsvc.gsvtypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gsv.SourceView

	Linker.link(gtk_source_view_new, "gtk_source_view_new", LIBRARY.GSV);
	Linker.link(gtk_source_view_new_with_buffer, "gtk_source_view_new_with_buffer", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_auto_indent, "gtk_source_view_set_auto_indent", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_auto_indent, "gtk_source_view_get_auto_indent", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_indent_on_tab, "gtk_source_view_set_indent_on_tab", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_indent_on_tab, "gtk_source_view_get_indent_on_tab", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_indent_width, "gtk_source_view_set_indent_width", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_indent_width, "gtk_source_view_get_indent_width", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_insert_spaces_instead_of_tabs, "gtk_source_view_set_insert_spaces_instead_of_tabs", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_insert_spaces_instead_of_tabs, "gtk_source_view_get_insert_spaces_instead_of_tabs", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_smart_home_end, "gtk_source_view_set_smart_home_end", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_smart_home_end, "gtk_source_view_get_smart_home_end", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_priority, "gtk_source_view_set_mark_category_priority", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_mark_category_priority, "gtk_source_view_get_mark_category_priority", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_pixbuf, "gtk_source_view_set_mark_category_pixbuf", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_mark_category_pixbuf, "gtk_source_view_get_mark_category_pixbuf", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_mark_category_background, "gtk_source_view_get_mark_category_background", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_background, "gtk_source_view_set_mark_category_background", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_highlight_current_line, "gtk_source_view_set_highlight_current_line", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_highlight_current_line, "gtk_source_view_get_highlight_current_line", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_show_line_marks, "gtk_source_view_set_show_line_marks", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_show_line_marks, "gtk_source_view_get_show_line_marks", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_show_line_numbers, "gtk_source_view_set_show_line_numbers", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_show_line_numbers, "gtk_source_view_get_show_line_numbers", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_show_right_margin, "gtk_source_view_set_show_right_margin", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_show_right_margin, "gtk_source_view_get_show_right_margin", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_right_margin_position, "gtk_source_view_set_right_margin_position", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_right_margin_position, "gtk_source_view_get_right_margin_position", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_tab_width, "gtk_source_view_set_tab_width", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_tab_width, "gtk_source_view_get_tab_width", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_draw_spaces, "gtk_source_view_set_draw_spaces", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_draw_spaces, "gtk_source_view_get_draw_spaces", LIBRARY.GSV);

	// gsv.SourceBuffer

	Linker.link(gtk_source_buffer_new, "gtk_source_buffer_new", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_new_with_language, "gtk_source_buffer_new_with_language", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_highlight_syntax, "gtk_source_buffer_set_highlight_syntax", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_highlight_syntax, "gtk_source_buffer_get_highlight_syntax", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_language, "gtk_source_buffer_set_language", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_language, "gtk_source_buffer_get_language", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_highlight_matching_brackets, "gtk_source_buffer_set_highlight_matching_brackets", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_highlight_matching_brackets, "gtk_source_buffer_get_highlight_matching_brackets", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_style_scheme, "gtk_source_buffer_set_style_scheme", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_style_scheme, "gtk_source_buffer_get_style_scheme", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_max_undo_levels, "gtk_source_buffer_get_max_undo_levels", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_set_max_undo_levels, "gtk_source_buffer_set_max_undo_levels", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_redo, "gtk_source_buffer_redo", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_undo, "gtk_source_buffer_undo", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_can_redo, "gtk_source_buffer_can_redo", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_can_undo, "gtk_source_buffer_can_undo", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_begin_not_undoable_action, "gtk_source_buffer_begin_not_undoable_action", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_end_not_undoable_action, "gtk_source_buffer_end_not_undoable_action", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_create_source_mark, "gtk_source_buffer_create_source_mark", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_source_marks_at_line, "gtk_source_buffer_get_source_marks_at_line", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_get_source_marks_at_iter, "gtk_source_buffer_get_source_marks_at_iter", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_remove_source_marks, "gtk_source_buffer_remove_source_marks", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_forward_iter_to_source_mark, "gtk_source_buffer_forward_iter_to_source_mark", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_backward_iter_to_source_mark, "gtk_source_buffer_backward_iter_to_source_mark", LIBRARY.GSV);
	Linker.link(gtk_source_buffer_ensure_highlight, "gtk_source_buffer_ensure_highlight", LIBRARY.GSV);

	// gsv.SourceSearch

	Linker.link(gtk_source_iter_backward_search, "gtk_source_iter_backward_search", LIBRARY.GSV);
	Linker.link(gtk_source_iter_forward_search, "gtk_source_iter_forward_search", LIBRARY.GSV);

	// gsv.SourceMark

	Linker.link(gtk_source_mark_new, "gtk_source_mark_new", LIBRARY.GSV);
	Linker.link(gtk_source_mark_get_category, "gtk_source_mark_get_category", LIBRARY.GSV);
	Linker.link(gtk_source_mark_next, "gtk_source_mark_next", LIBRARY.GSV);
	Linker.link(gtk_source_mark_prev, "gtk_source_mark_prev", LIBRARY.GSV);

	// gsv.SourceLanguage

	Linker.link(gtk_source_language_get_id, "gtk_source_language_get_id", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_name, "gtk_source_language_get_name", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_section, "gtk_source_language_get_section", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_hidden, "gtk_source_language_get_hidden", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_metadata, "gtk_source_language_get_metadata", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_mime_types, "gtk_source_language_get_mime_types", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_globs, "gtk_source_language_get_globs", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_style_name, "gtk_source_language_get_style_name", LIBRARY.GSV);
	Linker.link(gtk_source_language_get_style_ids, "gtk_source_language_get_style_ids", LIBRARY.GSV);

	// gsv.SourceLanguageManager

	Linker.link(gtk_source_language_manager_new, "gtk_source_language_manager_new", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_get_default, "gtk_source_language_manager_get_default", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_set_search_path, "gtk_source_language_manager_set_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_get_search_path, "gtk_source_language_manager_get_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_get_language_ids, "gtk_source_language_manager_get_language_ids", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_get_language, "gtk_source_language_manager_get_language", LIBRARY.GSV);
	Linker.link(gtk_source_language_manager_guess_language, "gtk_source_language_manager_guess_language", LIBRARY.GSV);

	// gsv.SourcePrintCompositor

	Linker.link(gtk_source_print_compositor_new, "gtk_source_print_compositor_new", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_new_from_view, "gtk_source_print_compositor_new_from_view", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_buffer, "gtk_source_print_compositor_get_buffer", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_tab_width, "gtk_source_print_compositor_set_tab_width", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_tab_width, "gtk_source_print_compositor_get_tab_width", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_wrap_mode, "gtk_source_print_compositor_set_wrap_mode", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_wrap_mode, "gtk_source_print_compositor_get_wrap_mode", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_highlight_syntax, "gtk_source_print_compositor_set_highlight_syntax", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_highlight_syntax, "gtk_source_print_compositor_get_highlight_syntax", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_print_line_numbers, "gtk_source_print_compositor_set_print_line_numbers", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_print_line_numbers, "gtk_source_print_compositor_get_print_line_numbers", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_body_font_name, "gtk_source_print_compositor_set_body_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_body_font_name, "gtk_source_print_compositor_get_body_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_line_numbers_font_name, "gtk_source_print_compositor_set_line_numbers_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_line_numbers_font_name, "gtk_source_print_compositor_get_line_numbers_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_header_font_name, "gtk_source_print_compositor_set_header_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_header_font_name, "gtk_source_print_compositor_get_header_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_footer_font_name, "gtk_source_print_compositor_set_footer_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_footer_font_name, "gtk_source_print_compositor_get_footer_font_name", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_top_margin, "gtk_source_print_compositor_get_top_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_top_margin, "gtk_source_print_compositor_set_top_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_bottom_margin, "gtk_source_print_compositor_get_bottom_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_bottom_margin, "gtk_source_print_compositor_set_bottom_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_left_margin, "gtk_source_print_compositor_get_left_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_left_margin, "gtk_source_print_compositor_set_left_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_right_margin, "gtk_source_print_compositor_get_right_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_right_margin, "gtk_source_print_compositor_set_right_margin", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_print_header, "gtk_source_print_compositor_set_print_header", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_print_header, "gtk_source_print_compositor_get_print_header", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_print_footer, "gtk_source_print_compositor_set_print_footer", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_print_footer, "gtk_source_print_compositor_get_print_footer", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_header_format, "gtk_source_print_compositor_set_header_format", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_set_footer_format, "gtk_source_print_compositor_set_footer_format", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_n_pages, "gtk_source_print_compositor_get_n_pages", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_paginate, "gtk_source_print_compositor_paginate", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_get_pagination_progress, "gtk_source_print_compositor_get_pagination_progress", LIBRARY.GSV);
	Linker.link(gtk_source_print_compositor_draw_page, "gtk_source_print_compositor_draw_page", LIBRARY.GSV);

	// gsv.SourceStyle

	Linker.link(gtk_source_style_copy, "gtk_source_style_copy", LIBRARY.GSV);

	// gsv.SourceStyleScheme

	Linker.link(gtk_source_style_scheme_get_id, "gtk_source_style_scheme_get_id", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_get_name, "gtk_source_style_scheme_get_name", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_get_description, "gtk_source_style_scheme_get_description", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_get_authors, "gtk_source_style_scheme_get_authors", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_get_filename, "gtk_source_style_scheme_get_filename", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_get_style, "gtk_source_style_scheme_get_style", LIBRARY.GSV);

	// gsv.SourceStyleSchemeManager

	Linker.link(gtk_source_style_scheme_manager_new, "gtk_source_style_scheme_manager_new", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_get_default, "gtk_source_style_scheme_manager_get_default", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_set_search_path, "gtk_source_style_scheme_manager_set_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_append_search_path, "gtk_source_style_scheme_manager_append_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_prepend_search_path, "gtk_source_style_scheme_manager_prepend_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_get_search_path, "gtk_source_style_scheme_manager_get_search_path", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_get_scheme_ids, "gtk_source_style_scheme_manager_get_scheme_ids", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_get_scheme, "gtk_source_style_scheme_manager_get_scheme", LIBRARY.GSV);
	Linker.link(gtk_source_style_scheme_manager_force_rescan, "gtk_source_style_scheme_manager_force_rescan", LIBRARY.GSV);
}

extern(C)
{
	
	// gsv.SourceView
	
	typedef GtkWidget* function() c_gtk_source_view_new;
	typedef GtkWidget* function(GtkSourceBuffer* buffer) c_gtk_source_view_new_with_buffer;
	typedef void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_auto_indent;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_auto_indent;
	typedef void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_indent_on_tab;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_indent_on_tab;
	typedef void function(GtkSourceView* view, gint width) c_gtk_source_view_set_indent_width;
	typedef gint function(GtkSourceView* view) c_gtk_source_view_get_indent_width;
	typedef void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_insert_spaces_instead_of_tabs;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_insert_spaces_instead_of_tabs;
	typedef void function(GtkSourceView* view, GtkSourceSmartHomeEndType smartHe) c_gtk_source_view_set_smart_home_end;
	typedef GtkSourceSmartHomeEndType function(GtkSourceView* view) c_gtk_source_view_get_smart_home_end;
	typedef void function(GtkSourceView* view, gchar* category, gint priority) c_gtk_source_view_set_mark_category_priority;
	typedef gint function(GtkSourceView* view, gchar* category) c_gtk_source_view_get_mark_category_priority;
	typedef void function(GtkSourceView* view, gchar* category, GdkPixbuf* pixbuf) c_gtk_source_view_set_mark_category_pixbuf;
	typedef GdkPixbuf* function(GtkSourceView* view, gchar* category) c_gtk_source_view_get_mark_category_pixbuf;
	typedef gboolean function(GtkSourceView* view, gchar* category, GdkColor* dest) c_gtk_source_view_get_mark_category_background;
	typedef void function(GtkSourceView* view, gchar* category, GdkColor* color) c_gtk_source_view_set_mark_category_background;
	typedef void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_highlight_current_line;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_highlight_current_line;
	typedef void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_line_marks;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_line_marks;
	typedef void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_line_numbers;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_line_numbers;
	typedef void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_right_margin;
	typedef gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_right_margin;
	typedef void function(GtkSourceView* view, guint pos) c_gtk_source_view_set_right_margin_position;
	typedef guint function(GtkSourceView* view) c_gtk_source_view_get_right_margin_position;
	typedef void function(GtkSourceView* view, guint width) c_gtk_source_view_set_tab_width;
	typedef guint function(GtkSourceView* view) c_gtk_source_view_get_tab_width;
	typedef void function(GtkSourceView* view, GtkSourceDrawSpacesFlags flags) c_gtk_source_view_set_draw_spaces;
	typedef GtkSourceDrawSpacesFlags function(GtkSourceView* view) c_gtk_source_view_get_draw_spaces;
	
	// gsv.SourceBuffer
	
	typedef GtkSourceBuffer* function(GtkTextTagTable* table) c_gtk_source_buffer_new;
	typedef GtkSourceBuffer* function(GtkSourceLanguage* language) c_gtk_source_buffer_new_with_language;
	typedef void function(GtkSourceBuffer* buffer, gboolean highlight) c_gtk_source_buffer_set_highlight_syntax;
	typedef gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_syntax;
	typedef void function(GtkSourceBuffer* buffer, GtkSourceLanguage* language) c_gtk_source_buffer_set_language;
	typedef GtkSourceLanguage* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_language;
	typedef void function(GtkSourceBuffer* buffer, gboolean highlight) c_gtk_source_buffer_set_highlight_matching_brackets;
	typedef gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_highlight_matching_brackets;
	typedef void function(GtkSourceBuffer* buffer, GtkSourceStyleScheme* scheme) c_gtk_source_buffer_set_style_scheme;
	typedef GtkSourceStyleScheme* function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_style_scheme;
	typedef gint function(GtkSourceBuffer* buffer) c_gtk_source_buffer_get_max_undo_levels;
	typedef void function(GtkSourceBuffer* buffer, gint maxUndoLevels) c_gtk_source_buffer_set_max_undo_levels;
	typedef void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_redo;
	typedef void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_undo;
	typedef gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_can_redo;
	typedef gboolean function(GtkSourceBuffer* buffer) c_gtk_source_buffer_can_undo;
	typedef void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_begin_not_undoable_action;
	typedef void function(GtkSourceBuffer* buffer) c_gtk_source_buffer_end_not_undoable_action;
	typedef GtkSourceMark* function(GtkSourceBuffer* buffer, gchar* name, gchar* category, GtkTextIter* where) c_gtk_source_buffer_create_source_mark;
	typedef GSList* function(GtkSourceBuffer* buffer, gint line, gchar* category) c_gtk_source_buffer_get_source_marks_at_line;
	typedef GSList* function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_get_source_marks_at_iter;
	typedef void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gchar* category) c_gtk_source_buffer_remove_source_marks;
	typedef gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_forward_iter_to_source_mark;
	typedef gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_backward_iter_to_source_mark;
	typedef void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_ensure_highlight;
	
	// gsv.SourceSearch
	
	typedef gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_source_iter_backward_search;
	typedef gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_source_iter_forward_search;
	
	// gsv.SourceMark
	
	typedef GtkSourceMark* function(gchar* name, gchar* category) c_gtk_source_mark_new;
	typedef gchar* function(GtkSourceMark* mark) c_gtk_source_mark_get_category;
	typedef GtkSourceMark* function(GtkSourceMark* mark, gchar* category) c_gtk_source_mark_next;
	typedef GtkSourceMark* function(GtkSourceMark* mark, gchar* category) c_gtk_source_mark_prev;
	
	// gsv.SourceLanguage
	
	typedef gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_id;
	typedef gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_name;
	typedef gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_section;
	typedef gboolean function(GtkSourceLanguage* language) c_gtk_source_language_get_hidden;
	typedef gchar* function(GtkSourceLanguage* language, gchar* name) c_gtk_source_language_get_metadata;
	typedef gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_mime_types;
	typedef gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_globs;
	typedef char* function(GtkSourceLanguage* language, char* styleId) c_gtk_source_language_get_style_name;
	typedef gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_style_ids;
	
	// gsv.SourceLanguageManager
	
	typedef GtkSourceLanguageManager* function() c_gtk_source_language_manager_new;
	typedef GtkSourceLanguageManager* function() c_gtk_source_language_manager_get_default;
	typedef void function(GtkSourceLanguageManager* lm, gchar** dirs) c_gtk_source_language_manager_set_search_path;
	typedef gchar** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_search_path;
	typedef gchar** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_language_ids;
	typedef GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* id) c_gtk_source_language_manager_get_language;
	typedef GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* filename, gchar* contentType) c_gtk_source_language_manager_guess_language;
	
	// gsv.SourcePrintCompositor
	
	typedef GtkSourcePrintCompositor* function(GtkSourceBuffer* buffer) c_gtk_source_print_compositor_new;
	typedef GtkSourcePrintCompositor* function(GtkSourceView* view) c_gtk_source_print_compositor_new_from_view;
	typedef GtkSourceBuffer* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_buffer;
	typedef void function(GtkSourcePrintCompositor* compositor, guint width) c_gtk_source_print_compositor_set_tab_width;
	typedef guint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_tab_width;
	typedef void function(GtkSourcePrintCompositor* compositor, GtkWrapMode wrapMode) c_gtk_source_print_compositor_set_wrap_mode;
	typedef GtkWrapMode function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_wrap_mode;
	typedef void function(GtkSourcePrintCompositor* compositor, gboolean highlight) c_gtk_source_print_compositor_set_highlight_syntax;
	typedef gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_highlight_syntax;
	typedef void function(GtkSourcePrintCompositor* compositor, guint interval) c_gtk_source_print_compositor_set_print_line_numbers;
	typedef guint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_line_numbers;
	typedef void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_body_font_name;
	typedef gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_body_font_name;
	typedef void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_line_numbers_font_name;
	typedef gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_line_numbers_font_name;
	typedef void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_header_font_name;
	typedef gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_header_font_name;
	typedef void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_footer_font_name;
	typedef gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_footer_font_name;
	typedef gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_top_margin;
	typedef void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_top_margin;
	typedef gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_bottom_margin;
	typedef void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_bottom_margin;
	typedef gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_left_margin;
	typedef void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_left_margin;
	typedef gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_right_margin;
	typedef void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_right_margin;
	typedef void function(GtkSourcePrintCompositor* compositor, gboolean print) c_gtk_source_print_compositor_set_print_header;
	typedef gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_header;
	typedef void function(GtkSourcePrintCompositor* compositor, gboolean print) c_gtk_source_print_compositor_set_print_footer;
	typedef gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_footer;
	typedef void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right) c_gtk_source_print_compositor_set_header_format;
	typedef void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right) c_gtk_source_print_compositor_set_footer_format;
	typedef gint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_n_pages;
	typedef gboolean function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context) c_gtk_source_print_compositor_paginate;
	typedef gdouble function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_pagination_progress;
	typedef void function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context, gint pageNr) c_gtk_source_print_compositor_draw_page;
	
	// gsv.SourceStyle
	
	typedef GtkSourceStyle* function(GtkSourceStyle* style) c_gtk_source_style_copy;
	
	// gsv.SourceStyleScheme
	
	typedef gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_id;
	typedef gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_name;
	typedef gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_description;
	typedef gchar** function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_authors;
	typedef gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_filename;
	typedef GtkSourceStyle* function(GtkSourceStyleScheme* scheme, gchar* styleId) c_gtk_source_style_scheme_get_style;
	
	// gsv.SourceStyleSchemeManager
	
	typedef GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_new;
	typedef GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_get_default;
	typedef void function(GtkSourceStyleSchemeManager* manager, gchar** path) c_gtk_source_style_scheme_manager_set_search_path;
	typedef void function(GtkSourceStyleSchemeManager* manager, gchar* path) c_gtk_source_style_scheme_manager_append_search_path;
	typedef void function(GtkSourceStyleSchemeManager* manager, gchar* path) c_gtk_source_style_scheme_manager_prepend_search_path;
	typedef gchar** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_search_path;
	typedef gchar** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_scheme_ids;
	typedef GtkSourceStyleScheme* function(GtkSourceStyleSchemeManager* manager, gchar* schemeId) c_gtk_source_style_scheme_manager_get_scheme;
	typedef void function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_force_rescan;
}

// gsv.SourceView

c_gtk_source_view_new  gtk_source_view_new;
c_gtk_source_view_new_with_buffer  gtk_source_view_new_with_buffer;
c_gtk_source_view_set_auto_indent  gtk_source_view_set_auto_indent;
c_gtk_source_view_get_auto_indent  gtk_source_view_get_auto_indent;
c_gtk_source_view_set_indent_on_tab  gtk_source_view_set_indent_on_tab;
c_gtk_source_view_get_indent_on_tab  gtk_source_view_get_indent_on_tab;
c_gtk_source_view_set_indent_width  gtk_source_view_set_indent_width;
c_gtk_source_view_get_indent_width  gtk_source_view_get_indent_width;
c_gtk_source_view_set_insert_spaces_instead_of_tabs  gtk_source_view_set_insert_spaces_instead_of_tabs;
c_gtk_source_view_get_insert_spaces_instead_of_tabs  gtk_source_view_get_insert_spaces_instead_of_tabs;
c_gtk_source_view_set_smart_home_end  gtk_source_view_set_smart_home_end;
c_gtk_source_view_get_smart_home_end  gtk_source_view_get_smart_home_end;
c_gtk_source_view_set_mark_category_priority  gtk_source_view_set_mark_category_priority;
c_gtk_source_view_get_mark_category_priority  gtk_source_view_get_mark_category_priority;
c_gtk_source_view_set_mark_category_pixbuf  gtk_source_view_set_mark_category_pixbuf;
c_gtk_source_view_get_mark_category_pixbuf  gtk_source_view_get_mark_category_pixbuf;
c_gtk_source_view_get_mark_category_background  gtk_source_view_get_mark_category_background;
c_gtk_source_view_set_mark_category_background  gtk_source_view_set_mark_category_background;
c_gtk_source_view_set_highlight_current_line  gtk_source_view_set_highlight_current_line;
c_gtk_source_view_get_highlight_current_line  gtk_source_view_get_highlight_current_line;
c_gtk_source_view_set_show_line_marks  gtk_source_view_set_show_line_marks;
c_gtk_source_view_get_show_line_marks  gtk_source_view_get_show_line_marks;
c_gtk_source_view_set_show_line_numbers  gtk_source_view_set_show_line_numbers;
c_gtk_source_view_get_show_line_numbers  gtk_source_view_get_show_line_numbers;
c_gtk_source_view_set_show_right_margin  gtk_source_view_set_show_right_margin;
c_gtk_source_view_get_show_right_margin  gtk_source_view_get_show_right_margin;
c_gtk_source_view_set_right_margin_position  gtk_source_view_set_right_margin_position;
c_gtk_source_view_get_right_margin_position  gtk_source_view_get_right_margin_position;
c_gtk_source_view_set_tab_width  gtk_source_view_set_tab_width;
c_gtk_source_view_get_tab_width  gtk_source_view_get_tab_width;
c_gtk_source_view_set_draw_spaces  gtk_source_view_set_draw_spaces;
c_gtk_source_view_get_draw_spaces  gtk_source_view_get_draw_spaces;

// gsv.SourceBuffer

c_gtk_source_buffer_new  gtk_source_buffer_new;
c_gtk_source_buffer_new_with_language  gtk_source_buffer_new_with_language;
c_gtk_source_buffer_set_highlight_syntax  gtk_source_buffer_set_highlight_syntax;
c_gtk_source_buffer_get_highlight_syntax  gtk_source_buffer_get_highlight_syntax;
c_gtk_source_buffer_set_language  gtk_source_buffer_set_language;
c_gtk_source_buffer_get_language  gtk_source_buffer_get_language;
c_gtk_source_buffer_set_highlight_matching_brackets  gtk_source_buffer_set_highlight_matching_brackets;
c_gtk_source_buffer_get_highlight_matching_brackets  gtk_source_buffer_get_highlight_matching_brackets;
c_gtk_source_buffer_set_style_scheme  gtk_source_buffer_set_style_scheme;
c_gtk_source_buffer_get_style_scheme  gtk_source_buffer_get_style_scheme;
c_gtk_source_buffer_get_max_undo_levels  gtk_source_buffer_get_max_undo_levels;
c_gtk_source_buffer_set_max_undo_levels  gtk_source_buffer_set_max_undo_levels;
c_gtk_source_buffer_redo  gtk_source_buffer_redo;
c_gtk_source_buffer_undo  gtk_source_buffer_undo;
c_gtk_source_buffer_can_redo  gtk_source_buffer_can_redo;
c_gtk_source_buffer_can_undo  gtk_source_buffer_can_undo;
c_gtk_source_buffer_begin_not_undoable_action  gtk_source_buffer_begin_not_undoable_action;
c_gtk_source_buffer_end_not_undoable_action  gtk_source_buffer_end_not_undoable_action;
c_gtk_source_buffer_create_source_mark  gtk_source_buffer_create_source_mark;
c_gtk_source_buffer_get_source_marks_at_line  gtk_source_buffer_get_source_marks_at_line;
c_gtk_source_buffer_get_source_marks_at_iter  gtk_source_buffer_get_source_marks_at_iter;
c_gtk_source_buffer_remove_source_marks  gtk_source_buffer_remove_source_marks;
c_gtk_source_buffer_forward_iter_to_source_mark  gtk_source_buffer_forward_iter_to_source_mark;
c_gtk_source_buffer_backward_iter_to_source_mark  gtk_source_buffer_backward_iter_to_source_mark;
c_gtk_source_buffer_ensure_highlight  gtk_source_buffer_ensure_highlight;

// gsv.SourceSearch

c_gtk_source_iter_backward_search  gtk_source_iter_backward_search;
c_gtk_source_iter_forward_search  gtk_source_iter_forward_search;

// gsv.SourceMark

c_gtk_source_mark_new  gtk_source_mark_new;
c_gtk_source_mark_get_category  gtk_source_mark_get_category;
c_gtk_source_mark_next  gtk_source_mark_next;
c_gtk_source_mark_prev  gtk_source_mark_prev;

// gsv.SourceLanguage

c_gtk_source_language_get_id  gtk_source_language_get_id;
c_gtk_source_language_get_name  gtk_source_language_get_name;
c_gtk_source_language_get_section  gtk_source_language_get_section;
c_gtk_source_language_get_hidden  gtk_source_language_get_hidden;
c_gtk_source_language_get_metadata  gtk_source_language_get_metadata;
c_gtk_source_language_get_mime_types  gtk_source_language_get_mime_types;
c_gtk_source_language_get_globs  gtk_source_language_get_globs;
c_gtk_source_language_get_style_name  gtk_source_language_get_style_name;
c_gtk_source_language_get_style_ids  gtk_source_language_get_style_ids;

// gsv.SourceLanguageManager

c_gtk_source_language_manager_new  gtk_source_language_manager_new;
c_gtk_source_language_manager_get_default  gtk_source_language_manager_get_default;
c_gtk_source_language_manager_set_search_path  gtk_source_language_manager_set_search_path;
c_gtk_source_language_manager_get_search_path  gtk_source_language_manager_get_search_path;
c_gtk_source_language_manager_get_language_ids  gtk_source_language_manager_get_language_ids;
c_gtk_source_language_manager_get_language  gtk_source_language_manager_get_language;
c_gtk_source_language_manager_guess_language  gtk_source_language_manager_guess_language;

// gsv.SourcePrintCompositor

c_gtk_source_print_compositor_new  gtk_source_print_compositor_new;
c_gtk_source_print_compositor_new_from_view  gtk_source_print_compositor_new_from_view;
c_gtk_source_print_compositor_get_buffer  gtk_source_print_compositor_get_buffer;
c_gtk_source_print_compositor_set_tab_width  gtk_source_print_compositor_set_tab_width;
c_gtk_source_print_compositor_get_tab_width  gtk_source_print_compositor_get_tab_width;
c_gtk_source_print_compositor_set_wrap_mode  gtk_source_print_compositor_set_wrap_mode;
c_gtk_source_print_compositor_get_wrap_mode  gtk_source_print_compositor_get_wrap_mode;
c_gtk_source_print_compositor_set_highlight_syntax  gtk_source_print_compositor_set_highlight_syntax;
c_gtk_source_print_compositor_get_highlight_syntax  gtk_source_print_compositor_get_highlight_syntax;
c_gtk_source_print_compositor_set_print_line_numbers  gtk_source_print_compositor_set_print_line_numbers;
c_gtk_source_print_compositor_get_print_line_numbers  gtk_source_print_compositor_get_print_line_numbers;
c_gtk_source_print_compositor_set_body_font_name  gtk_source_print_compositor_set_body_font_name;
c_gtk_source_print_compositor_get_body_font_name  gtk_source_print_compositor_get_body_font_name;
c_gtk_source_print_compositor_set_line_numbers_font_name  gtk_source_print_compositor_set_line_numbers_font_name;
c_gtk_source_print_compositor_get_line_numbers_font_name  gtk_source_print_compositor_get_line_numbers_font_name;
c_gtk_source_print_compositor_set_header_font_name  gtk_source_print_compositor_set_header_font_name;
c_gtk_source_print_compositor_get_header_font_name  gtk_source_print_compositor_get_header_font_name;
c_gtk_source_print_compositor_set_footer_font_name  gtk_source_print_compositor_set_footer_font_name;
c_gtk_source_print_compositor_get_footer_font_name  gtk_source_print_compositor_get_footer_font_name;
c_gtk_source_print_compositor_get_top_margin  gtk_source_print_compositor_get_top_margin;
c_gtk_source_print_compositor_set_top_margin  gtk_source_print_compositor_set_top_margin;
c_gtk_source_print_compositor_get_bottom_margin  gtk_source_print_compositor_get_bottom_margin;
c_gtk_source_print_compositor_set_bottom_margin  gtk_source_print_compositor_set_bottom_margin;
c_gtk_source_print_compositor_get_left_margin  gtk_source_print_compositor_get_left_margin;
c_gtk_source_print_compositor_set_left_margin  gtk_source_print_compositor_set_left_margin;
c_gtk_source_print_compositor_get_right_margin  gtk_source_print_compositor_get_right_margin;
c_gtk_source_print_compositor_set_right_margin  gtk_source_print_compositor_set_right_margin;
c_gtk_source_print_compositor_set_print_header  gtk_source_print_compositor_set_print_header;
c_gtk_source_print_compositor_get_print_header  gtk_source_print_compositor_get_print_header;
c_gtk_source_print_compositor_set_print_footer  gtk_source_print_compositor_set_print_footer;
c_gtk_source_print_compositor_get_print_footer  gtk_source_print_compositor_get_print_footer;
c_gtk_source_print_compositor_set_header_format  gtk_source_print_compositor_set_header_format;
c_gtk_source_print_compositor_set_footer_format  gtk_source_print_compositor_set_footer_format;
c_gtk_source_print_compositor_get_n_pages  gtk_source_print_compositor_get_n_pages;
c_gtk_source_print_compositor_paginate  gtk_source_print_compositor_paginate;
c_gtk_source_print_compositor_get_pagination_progress  gtk_source_print_compositor_get_pagination_progress;
c_gtk_source_print_compositor_draw_page  gtk_source_print_compositor_draw_page;

// gsv.SourceStyle

c_gtk_source_style_copy  gtk_source_style_copy;

// gsv.SourceStyleScheme

c_gtk_source_style_scheme_get_id  gtk_source_style_scheme_get_id;
c_gtk_source_style_scheme_get_name  gtk_source_style_scheme_get_name;
c_gtk_source_style_scheme_get_description  gtk_source_style_scheme_get_description;
c_gtk_source_style_scheme_get_authors  gtk_source_style_scheme_get_authors;
c_gtk_source_style_scheme_get_filename  gtk_source_style_scheme_get_filename;
c_gtk_source_style_scheme_get_style  gtk_source_style_scheme_get_style;

// gsv.SourceStyleSchemeManager

c_gtk_source_style_scheme_manager_new  gtk_source_style_scheme_manager_new;
c_gtk_source_style_scheme_manager_get_default  gtk_source_style_scheme_manager_get_default;
c_gtk_source_style_scheme_manager_set_search_path  gtk_source_style_scheme_manager_set_search_path;
c_gtk_source_style_scheme_manager_append_search_path  gtk_source_style_scheme_manager_append_search_path;
c_gtk_source_style_scheme_manager_prepend_search_path  gtk_source_style_scheme_manager_prepend_search_path;
c_gtk_source_style_scheme_manager_get_search_path  gtk_source_style_scheme_manager_get_search_path;
c_gtk_source_style_scheme_manager_get_scheme_ids  gtk_source_style_scheme_manager_get_scheme_ids;
c_gtk_source_style_scheme_manager_get_scheme  gtk_source_style_scheme_manager_get_scheme;
c_gtk_source_style_scheme_manager_force_rescan  gtk_source_style_scheme_manager_force_rescan;
