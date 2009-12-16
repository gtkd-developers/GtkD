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
	Linker.link(gtk_source_view_set_mark_category_icon_from_pixbuf, "gtk_source_view_set_mark_category_icon_from_pixbuf", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_icon_from_stock, "gtk_source_view_set_mark_category_icon_from_stock", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_icon_from_icon_name, "gtk_source_view_set_mark_category_icon_from_icon_name", LIBRARY.GSV);
	Linker.link(gtk_source_view_get_mark_category_background, "gtk_source_view_get_mark_category_background", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_background, "gtk_source_view_set_mark_category_background", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_tooltip_func, "gtk_source_view_set_mark_category_tooltip_func", LIBRARY.GSV);
	Linker.link(gtk_source_view_set_mark_category_tooltip_markup_func, "gtk_source_view_set_mark_category_tooltip_markup_func", LIBRARY.GSV);
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
	Linker.link(gtk_source_view_get_gutter, "gtk_source_view_get_gutter", LIBRARY.GSV);

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

	// gsv.SourceGutter

	Linker.link(gtk_source_gutter_get_window, "gtk_source_gutter_get_window", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_insert, "gtk_source_gutter_insert", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_reorder, "gtk_source_gutter_reorder", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_remove, "gtk_source_gutter_remove", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_set_cell_data_func, "gtk_source_gutter_set_cell_data_func", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_set_cell_size_func, "gtk_source_gutter_set_cell_size_func", LIBRARY.GSV);
	Linker.link(gtk_source_gutter_queue_draw, "gtk_source_gutter_queue_draw", LIBRARY.GSV);

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

mixin( gshared ~"extern(C)
{
	
	// gsv.SourceView
	
	GtkWidget* function() c_gtk_source_view_new;
	GtkWidget* function(GtkSourceBuffer* buffer) c_gtk_source_view_new_with_buffer;
	void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_auto_indent;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_auto_indent;
	void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_indent_on_tab;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_indent_on_tab;
	void function(GtkSourceView* view, gint width) c_gtk_source_view_set_indent_width;
	gint function(GtkSourceView* view) c_gtk_source_view_get_indent_width;
	void function(GtkSourceView* view, gboolean enable) c_gtk_source_view_set_insert_spaces_instead_of_tabs;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_insert_spaces_instead_of_tabs;
	void function(GtkSourceView* view, GtkSourceSmartHomeEndType smartHe) c_gtk_source_view_set_smart_home_end;
	GtkSourceSmartHomeEndType function(GtkSourceView* view) c_gtk_source_view_get_smart_home_end;
	void function(GtkSourceView* view, gchar* category, gint priority) c_gtk_source_view_set_mark_category_priority;
	gint function(GtkSourceView* view, gchar* category) c_gtk_source_view_get_mark_category_priority;
	void function(GtkSourceView* view, gchar* category, GdkPixbuf* pixbuf) c_gtk_source_view_set_mark_category_pixbuf;
	GdkPixbuf* function(GtkSourceView* view, gchar* category) c_gtk_source_view_get_mark_category_pixbuf;
	void function(GtkSourceView* view, gchar* category, GdkPixbuf* pixbuf) c_gtk_source_view_set_mark_category_icon_from_pixbuf;
	void function(GtkSourceView* view, gchar* category, gchar* stockId) c_gtk_source_view_set_mark_category_icon_from_stock;
	void function(GtkSourceView* view, gchar* category, gchar* name) c_gtk_source_view_set_mark_category_icon_from_icon_name;
	gboolean function(GtkSourceView* view, gchar* category, GdkColor* dest) c_gtk_source_view_get_mark_category_background;
	void function(GtkSourceView* view, gchar* category, GdkColor* color) c_gtk_source_view_set_mark_category_background;
	void function(GtkSourceView* view, gchar* category, GtkSourceViewMarkTooltipFunc func, gpointer userData, GDestroyNotify userDataNotify) c_gtk_source_view_set_mark_category_tooltip_func;
	void function(GtkSourceView* view, gchar* category, GtkSourceViewMarkTooltipFunc markupFunc, gpointer userData, GDestroyNotify userDataNotify) c_gtk_source_view_set_mark_category_tooltip_markup_func;
	void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_highlight_current_line;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_highlight_current_line;
	void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_line_marks;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_line_marks;
	void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_line_numbers;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_line_numbers;
	void function(GtkSourceView* view, gboolean show) c_gtk_source_view_set_show_right_margin;
	gboolean function(GtkSourceView* view) c_gtk_source_view_get_show_right_margin;
	void function(GtkSourceView* view, guint pos) c_gtk_source_view_set_right_margin_position;
	guint function(GtkSourceView* view) c_gtk_source_view_get_right_margin_position;
	void function(GtkSourceView* view, guint width) c_gtk_source_view_set_tab_width;
	guint function(GtkSourceView* view) c_gtk_source_view_get_tab_width;
	void function(GtkSourceView* view, GtkSourceDrawSpacesFlags flags) c_gtk_source_view_set_draw_spaces;
	GtkSourceDrawSpacesFlags function(GtkSourceView* view) c_gtk_source_view_get_draw_spaces;
	GtkSourceGutter* function(GtkSourceView* view, GtkTextWindowType windowType) c_gtk_source_view_get_gutter;
	
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
	GtkSourceMark* function(GtkSourceBuffer* buffer, gchar* name, gchar* category, GtkTextIter* where) c_gtk_source_buffer_create_source_mark;
	GSList* function(GtkSourceBuffer* buffer, gint line, gchar* category) c_gtk_source_buffer_get_source_marks_at_line;
	GSList* function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_get_source_marks_at_iter;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gchar* category) c_gtk_source_buffer_remove_source_marks;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_forward_iter_to_source_mark;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category) c_gtk_source_buffer_backward_iter_to_source_mark;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_source_buffer_ensure_highlight;
	
	// gsv.SourceGutter
	
	GdkWindow* function(GtkSourceGutter* gutter) c_gtk_source_gutter_get_window;
	void function(GtkSourceGutter* gutter, GtkCellRenderer* renderer, gint position) c_gtk_source_gutter_insert;
	void function(GtkSourceGutter* gutter, GtkCellRenderer* renderer, gint position) c_gtk_source_gutter_reorder;
	void function(GtkSourceGutter* gutter, GtkCellRenderer* renderer) c_gtk_source_gutter_remove;
	void function(GtkSourceGutter* gutter, GtkCellRenderer* renderer, GtkSourceGutterDataFunc func, gpointer funcData, GDestroyNotify destroy) c_gtk_source_gutter_set_cell_data_func;
	void function(GtkSourceGutter* gutter, GtkCellRenderer* renderer, GtkSourceGutterSizeFunc func, gpointer funcData, GDestroyNotify destroy) c_gtk_source_gutter_set_cell_size_func;
	void function(GtkSourceGutter* gutter) c_gtk_source_gutter_queue_draw;
	
	// gsv.SourceSearch
	
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_source_iter_backward_search;
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_source_iter_forward_search;
	
	// gsv.SourceMark
	
	GtkSourceMark* function(gchar* name, gchar* category) c_gtk_source_mark_new;
	gchar* function(GtkSourceMark* mark) c_gtk_source_mark_get_category;
	GtkSourceMark* function(GtkSourceMark* mark, gchar* category) c_gtk_source_mark_next;
	GtkSourceMark* function(GtkSourceMark* mark, gchar* category) c_gtk_source_mark_prev;
	
	// gsv.SourceLanguage
	
	gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_id;
	gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_name;
	gchar* function(GtkSourceLanguage* language) c_gtk_source_language_get_section;
	gboolean function(GtkSourceLanguage* language) c_gtk_source_language_get_hidden;
	gchar* function(GtkSourceLanguage* language, gchar* name) c_gtk_source_language_get_metadata;
	gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_mime_types;
	gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_globs;
	gchar* function(GtkSourceLanguage* language, gchar* styleId) c_gtk_source_language_get_style_name;
	gchar** function(GtkSourceLanguage* language) c_gtk_source_language_get_style_ids;
	
	// gsv.SourceLanguageManager
	
	GtkSourceLanguageManager* function() c_gtk_source_language_manager_new;
	GtkSourceLanguageManager* function() c_gtk_source_language_manager_get_default;
	void function(GtkSourceLanguageManager* lm, gchar** dirs) c_gtk_source_language_manager_set_search_path;
	gchar** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_search_path;
	gchar** function(GtkSourceLanguageManager* lm) c_gtk_source_language_manager_get_language_ids;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* id) c_gtk_source_language_manager_get_language;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* filename, gchar* contentType) c_gtk_source_language_manager_guess_language;
	
	// gsv.SourcePrintCompositor
	
	GtkSourcePrintCompositor* function(GtkSourceBuffer* buffer) c_gtk_source_print_compositor_new;
	GtkSourcePrintCompositor* function(GtkSourceView* view) c_gtk_source_print_compositor_new_from_view;
	GtkSourceBuffer* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_buffer;
	void function(GtkSourcePrintCompositor* compositor, guint width) c_gtk_source_print_compositor_set_tab_width;
	guint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_tab_width;
	void function(GtkSourcePrintCompositor* compositor, GtkWrapMode wrapMode) c_gtk_source_print_compositor_set_wrap_mode;
	GtkWrapMode function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_wrap_mode;
	void function(GtkSourcePrintCompositor* compositor, gboolean highlight) c_gtk_source_print_compositor_set_highlight_syntax;
	gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_highlight_syntax;
	void function(GtkSourcePrintCompositor* compositor, guint interval) c_gtk_source_print_compositor_set_print_line_numbers;
	guint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_line_numbers;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_body_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_body_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_line_numbers_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_line_numbers_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_header_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_header_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName) c_gtk_source_print_compositor_set_footer_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_footer_font_name;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_top_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_top_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_bottom_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_bottom_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_left_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_left_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit) c_gtk_source_print_compositor_get_right_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit) c_gtk_source_print_compositor_set_right_margin;
	void function(GtkSourcePrintCompositor* compositor, gboolean print) c_gtk_source_print_compositor_set_print_header;
	gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_header;
	void function(GtkSourcePrintCompositor* compositor, gboolean print) c_gtk_source_print_compositor_set_print_footer;
	gboolean function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_print_footer;
	void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right) c_gtk_source_print_compositor_set_header_format;
	void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right) c_gtk_source_print_compositor_set_footer_format;
	gint function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_n_pages;
	gboolean function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context) c_gtk_source_print_compositor_paginate;
	gdouble function(GtkSourcePrintCompositor* compositor) c_gtk_source_print_compositor_get_pagination_progress;
	void function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context, gint pageNr) c_gtk_source_print_compositor_draw_page;
	
	// gsv.SourceStyle
	
	GtkSourceStyle* function(GtkSourceStyle* style) c_gtk_source_style_copy;
	
	// gsv.SourceStyleScheme
	
	gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_id;
	gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_name;
	gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_description;
	gchar** function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_authors;
	gchar* function(GtkSourceStyleScheme* scheme) c_gtk_source_style_scheme_get_filename;
	GtkSourceStyle* function(GtkSourceStyleScheme* scheme, gchar* styleId) c_gtk_source_style_scheme_get_style;
	
	// gsv.SourceStyleSchemeManager
	
	GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_new;
	GtkSourceStyleSchemeManager* function() c_gtk_source_style_scheme_manager_get_default;
	void function(GtkSourceStyleSchemeManager* manager, gchar** path) c_gtk_source_style_scheme_manager_set_search_path;
	void function(GtkSourceStyleSchemeManager* manager, gchar* path) c_gtk_source_style_scheme_manager_append_search_path;
	void function(GtkSourceStyleSchemeManager* manager, gchar* path) c_gtk_source_style_scheme_manager_prepend_search_path;
	gchar** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_search_path;
	gchar** function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_get_scheme_ids;
	GtkSourceStyleScheme* function(GtkSourceStyleSchemeManager* manager, gchar* schemeId) c_gtk_source_style_scheme_manager_get_scheme;
	void function(GtkSourceStyleSchemeManager* manager) c_gtk_source_style_scheme_manager_force_rescan;
}");

// gsv.SourceView

alias c_gtk_source_view_new  gtk_source_view_new;
alias c_gtk_source_view_new_with_buffer  gtk_source_view_new_with_buffer;
alias c_gtk_source_view_set_auto_indent  gtk_source_view_set_auto_indent;
alias c_gtk_source_view_get_auto_indent  gtk_source_view_get_auto_indent;
alias c_gtk_source_view_set_indent_on_tab  gtk_source_view_set_indent_on_tab;
alias c_gtk_source_view_get_indent_on_tab  gtk_source_view_get_indent_on_tab;
alias c_gtk_source_view_set_indent_width  gtk_source_view_set_indent_width;
alias c_gtk_source_view_get_indent_width  gtk_source_view_get_indent_width;
alias c_gtk_source_view_set_insert_spaces_instead_of_tabs  gtk_source_view_set_insert_spaces_instead_of_tabs;
alias c_gtk_source_view_get_insert_spaces_instead_of_tabs  gtk_source_view_get_insert_spaces_instead_of_tabs;
alias c_gtk_source_view_set_smart_home_end  gtk_source_view_set_smart_home_end;
alias c_gtk_source_view_get_smart_home_end  gtk_source_view_get_smart_home_end;
alias c_gtk_source_view_set_mark_category_priority  gtk_source_view_set_mark_category_priority;
alias c_gtk_source_view_get_mark_category_priority  gtk_source_view_get_mark_category_priority;
alias c_gtk_source_view_set_mark_category_pixbuf  gtk_source_view_set_mark_category_pixbuf;
alias c_gtk_source_view_get_mark_category_pixbuf  gtk_source_view_get_mark_category_pixbuf;
alias c_gtk_source_view_set_mark_category_icon_from_pixbuf  gtk_source_view_set_mark_category_icon_from_pixbuf;
alias c_gtk_source_view_set_mark_category_icon_from_stock  gtk_source_view_set_mark_category_icon_from_stock;
alias c_gtk_source_view_set_mark_category_icon_from_icon_name  gtk_source_view_set_mark_category_icon_from_icon_name;
alias c_gtk_source_view_get_mark_category_background  gtk_source_view_get_mark_category_background;
alias c_gtk_source_view_set_mark_category_background  gtk_source_view_set_mark_category_background;
alias c_gtk_source_view_set_mark_category_tooltip_func  gtk_source_view_set_mark_category_tooltip_func;
alias c_gtk_source_view_set_mark_category_tooltip_markup_func  gtk_source_view_set_mark_category_tooltip_markup_func;
alias c_gtk_source_view_set_highlight_current_line  gtk_source_view_set_highlight_current_line;
alias c_gtk_source_view_get_highlight_current_line  gtk_source_view_get_highlight_current_line;
alias c_gtk_source_view_set_show_line_marks  gtk_source_view_set_show_line_marks;
alias c_gtk_source_view_get_show_line_marks  gtk_source_view_get_show_line_marks;
alias c_gtk_source_view_set_show_line_numbers  gtk_source_view_set_show_line_numbers;
alias c_gtk_source_view_get_show_line_numbers  gtk_source_view_get_show_line_numbers;
alias c_gtk_source_view_set_show_right_margin  gtk_source_view_set_show_right_margin;
alias c_gtk_source_view_get_show_right_margin  gtk_source_view_get_show_right_margin;
alias c_gtk_source_view_set_right_margin_position  gtk_source_view_set_right_margin_position;
alias c_gtk_source_view_get_right_margin_position  gtk_source_view_get_right_margin_position;
alias c_gtk_source_view_set_tab_width  gtk_source_view_set_tab_width;
alias c_gtk_source_view_get_tab_width  gtk_source_view_get_tab_width;
alias c_gtk_source_view_set_draw_spaces  gtk_source_view_set_draw_spaces;
alias c_gtk_source_view_get_draw_spaces  gtk_source_view_get_draw_spaces;
alias c_gtk_source_view_get_gutter  gtk_source_view_get_gutter;

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
alias c_gtk_source_buffer_create_source_mark  gtk_source_buffer_create_source_mark;
alias c_gtk_source_buffer_get_source_marks_at_line  gtk_source_buffer_get_source_marks_at_line;
alias c_gtk_source_buffer_get_source_marks_at_iter  gtk_source_buffer_get_source_marks_at_iter;
alias c_gtk_source_buffer_remove_source_marks  gtk_source_buffer_remove_source_marks;
alias c_gtk_source_buffer_forward_iter_to_source_mark  gtk_source_buffer_forward_iter_to_source_mark;
alias c_gtk_source_buffer_backward_iter_to_source_mark  gtk_source_buffer_backward_iter_to_source_mark;
alias c_gtk_source_buffer_ensure_highlight  gtk_source_buffer_ensure_highlight;

// gsv.SourceGutter

alias c_gtk_source_gutter_get_window  gtk_source_gutter_get_window;
alias c_gtk_source_gutter_insert  gtk_source_gutter_insert;
alias c_gtk_source_gutter_reorder  gtk_source_gutter_reorder;
alias c_gtk_source_gutter_remove  gtk_source_gutter_remove;
alias c_gtk_source_gutter_set_cell_data_func  gtk_source_gutter_set_cell_data_func;
alias c_gtk_source_gutter_set_cell_size_func  gtk_source_gutter_set_cell_size_func;
alias c_gtk_source_gutter_queue_draw  gtk_source_gutter_queue_draw;

// gsv.SourceSearch

alias c_gtk_source_iter_backward_search  gtk_source_iter_backward_search;
alias c_gtk_source_iter_forward_search  gtk_source_iter_forward_search;

// gsv.SourceMark

alias c_gtk_source_mark_new  gtk_source_mark_new;
alias c_gtk_source_mark_get_category  gtk_source_mark_get_category;
alias c_gtk_source_mark_next  gtk_source_mark_next;
alias c_gtk_source_mark_prev  gtk_source_mark_prev;

// gsv.SourceLanguage

alias c_gtk_source_language_get_id  gtk_source_language_get_id;
alias c_gtk_source_language_get_name  gtk_source_language_get_name;
alias c_gtk_source_language_get_section  gtk_source_language_get_section;
alias c_gtk_source_language_get_hidden  gtk_source_language_get_hidden;
alias c_gtk_source_language_get_metadata  gtk_source_language_get_metadata;
alias c_gtk_source_language_get_mime_types  gtk_source_language_get_mime_types;
alias c_gtk_source_language_get_globs  gtk_source_language_get_globs;
alias c_gtk_source_language_get_style_name  gtk_source_language_get_style_name;
alias c_gtk_source_language_get_style_ids  gtk_source_language_get_style_ids;

// gsv.SourceLanguageManager

alias c_gtk_source_language_manager_new  gtk_source_language_manager_new;
alias c_gtk_source_language_manager_get_default  gtk_source_language_manager_get_default;
alias c_gtk_source_language_manager_set_search_path  gtk_source_language_manager_set_search_path;
alias c_gtk_source_language_manager_get_search_path  gtk_source_language_manager_get_search_path;
alias c_gtk_source_language_manager_get_language_ids  gtk_source_language_manager_get_language_ids;
alias c_gtk_source_language_manager_get_language  gtk_source_language_manager_get_language;
alias c_gtk_source_language_manager_guess_language  gtk_source_language_manager_guess_language;

// gsv.SourcePrintCompositor

alias c_gtk_source_print_compositor_new  gtk_source_print_compositor_new;
alias c_gtk_source_print_compositor_new_from_view  gtk_source_print_compositor_new_from_view;
alias c_gtk_source_print_compositor_get_buffer  gtk_source_print_compositor_get_buffer;
alias c_gtk_source_print_compositor_set_tab_width  gtk_source_print_compositor_set_tab_width;
alias c_gtk_source_print_compositor_get_tab_width  gtk_source_print_compositor_get_tab_width;
alias c_gtk_source_print_compositor_set_wrap_mode  gtk_source_print_compositor_set_wrap_mode;
alias c_gtk_source_print_compositor_get_wrap_mode  gtk_source_print_compositor_get_wrap_mode;
alias c_gtk_source_print_compositor_set_highlight_syntax  gtk_source_print_compositor_set_highlight_syntax;
alias c_gtk_source_print_compositor_get_highlight_syntax  gtk_source_print_compositor_get_highlight_syntax;
alias c_gtk_source_print_compositor_set_print_line_numbers  gtk_source_print_compositor_set_print_line_numbers;
alias c_gtk_source_print_compositor_get_print_line_numbers  gtk_source_print_compositor_get_print_line_numbers;
alias c_gtk_source_print_compositor_set_body_font_name  gtk_source_print_compositor_set_body_font_name;
alias c_gtk_source_print_compositor_get_body_font_name  gtk_source_print_compositor_get_body_font_name;
alias c_gtk_source_print_compositor_set_line_numbers_font_name  gtk_source_print_compositor_set_line_numbers_font_name;
alias c_gtk_source_print_compositor_get_line_numbers_font_name  gtk_source_print_compositor_get_line_numbers_font_name;
alias c_gtk_source_print_compositor_set_header_font_name  gtk_source_print_compositor_set_header_font_name;
alias c_gtk_source_print_compositor_get_header_font_name  gtk_source_print_compositor_get_header_font_name;
alias c_gtk_source_print_compositor_set_footer_font_name  gtk_source_print_compositor_set_footer_font_name;
alias c_gtk_source_print_compositor_get_footer_font_name  gtk_source_print_compositor_get_footer_font_name;
alias c_gtk_source_print_compositor_get_top_margin  gtk_source_print_compositor_get_top_margin;
alias c_gtk_source_print_compositor_set_top_margin  gtk_source_print_compositor_set_top_margin;
alias c_gtk_source_print_compositor_get_bottom_margin  gtk_source_print_compositor_get_bottom_margin;
alias c_gtk_source_print_compositor_set_bottom_margin  gtk_source_print_compositor_set_bottom_margin;
alias c_gtk_source_print_compositor_get_left_margin  gtk_source_print_compositor_get_left_margin;
alias c_gtk_source_print_compositor_set_left_margin  gtk_source_print_compositor_set_left_margin;
alias c_gtk_source_print_compositor_get_right_margin  gtk_source_print_compositor_get_right_margin;
alias c_gtk_source_print_compositor_set_right_margin  gtk_source_print_compositor_set_right_margin;
alias c_gtk_source_print_compositor_set_print_header  gtk_source_print_compositor_set_print_header;
alias c_gtk_source_print_compositor_get_print_header  gtk_source_print_compositor_get_print_header;
alias c_gtk_source_print_compositor_set_print_footer  gtk_source_print_compositor_set_print_footer;
alias c_gtk_source_print_compositor_get_print_footer  gtk_source_print_compositor_get_print_footer;
alias c_gtk_source_print_compositor_set_header_format  gtk_source_print_compositor_set_header_format;
alias c_gtk_source_print_compositor_set_footer_format  gtk_source_print_compositor_set_footer_format;
alias c_gtk_source_print_compositor_get_n_pages  gtk_source_print_compositor_get_n_pages;
alias c_gtk_source_print_compositor_paginate  gtk_source_print_compositor_paginate;
alias c_gtk_source_print_compositor_get_pagination_progress  gtk_source_print_compositor_get_pagination_progress;
alias c_gtk_source_print_compositor_draw_page  gtk_source_print_compositor_draw_page;

// gsv.SourceStyle

alias c_gtk_source_style_copy  gtk_source_style_copy;

// gsv.SourceStyleScheme

alias c_gtk_source_style_scheme_get_id  gtk_source_style_scheme_get_id;
alias c_gtk_source_style_scheme_get_name  gtk_source_style_scheme_get_name;
alias c_gtk_source_style_scheme_get_description  gtk_source_style_scheme_get_description;
alias c_gtk_source_style_scheme_get_authors  gtk_source_style_scheme_get_authors;
alias c_gtk_source_style_scheme_get_filename  gtk_source_style_scheme_get_filename;
alias c_gtk_source_style_scheme_get_style  gtk_source_style_scheme_get_style;

// gsv.SourceStyleSchemeManager

alias c_gtk_source_style_scheme_manager_new  gtk_source_style_scheme_manager_new;
alias c_gtk_source_style_scheme_manager_get_default  gtk_source_style_scheme_manager_get_default;
alias c_gtk_source_style_scheme_manager_set_search_path  gtk_source_style_scheme_manager_set_search_path;
alias c_gtk_source_style_scheme_manager_append_search_path  gtk_source_style_scheme_manager_append_search_path;
alias c_gtk_source_style_scheme_manager_prepend_search_path  gtk_source_style_scheme_manager_prepend_search_path;
alias c_gtk_source_style_scheme_manager_get_search_path  gtk_source_style_scheme_manager_get_search_path;
alias c_gtk_source_style_scheme_manager_get_scheme_ids  gtk_source_style_scheme_manager_get_scheme_ids;
alias c_gtk_source_style_scheme_manager_get_scheme  gtk_source_style_scheme_manager_get_scheme;
alias c_gtk_source_style_scheme_manager_force_rescan  gtk_source_style_scheme_manager_force_rescan;
