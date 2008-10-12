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


module gsvc.gsv;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gsvc.gsvtypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gsv_Linker;

static this()
{
 gsv_Linker = new Linker(libPath ~ importLibs[LIBRARY.GSV] );
 gsv_Linker.link(gsvLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): gsv").newline;
 	else writefln("* Finished static this(): gsv");
 }
}

static ~this()
{
 delete gsv_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): gsv").newline;
 	else writefln("* Finished static ~this(): gsv");
 }
}

extern(C) 
{	
	// gsv.SourceView
	
	GtkWidget* function()gtk_source_view_new;
	GtkWidget* function(GtkSourceBuffer* buffer)gtk_source_view_new_with_buffer;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_auto_indent;
	gboolean function(GtkSourceView* view)gtk_source_view_get_auto_indent;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_indent_on_tab;
	gboolean function(GtkSourceView* view)gtk_source_view_get_indent_on_tab;
	void function(GtkSourceView* view, gint width)gtk_source_view_set_indent_width;
	gint function(GtkSourceView* view)gtk_source_view_get_indent_width;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_insert_spaces_instead_of_tabs;
	gboolean function(GtkSourceView* view)gtk_source_view_get_insert_spaces_instead_of_tabs;
	void function(GtkSourceView* view, GtkSourceSmartHomeEndType smartHe)gtk_source_view_set_smart_home_end;
	GtkSourceSmartHomeEndType function(GtkSourceView* view)gtk_source_view_get_smart_home_end;
	void function(GtkSourceView* view, gchar* category, gint priority)gtk_source_view_set_mark_category_priority;
	gint function(GtkSourceView* view, gchar* category)gtk_source_view_get_mark_category_priority;
	void function(GtkSourceView* view, gchar* category, GdkPixbuf* pixbuf)gtk_source_view_set_mark_category_pixbuf;
	GdkPixbuf* function(GtkSourceView* view, gchar* category)gtk_source_view_get_mark_category_pixbuf;
	gboolean function(GtkSourceView* view, gchar* category, GdkColor* dest)gtk_source_view_get_mark_category_background;
	void function(GtkSourceView* view, gchar* category, GdkColor* color)gtk_source_view_set_mark_category_background;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_highlight_current_line;
	gboolean function(GtkSourceView* view)gtk_source_view_get_highlight_current_line;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_marks;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_marks;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_numbers;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_numbers;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_right_margin;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_right_margin;
	void function(GtkSourceView* view, guint pos)gtk_source_view_set_right_margin_position;
	guint function(GtkSourceView* view)gtk_source_view_get_right_margin_position;
	void function(GtkSourceView* view, guint width)gtk_source_view_set_tab_width;
	guint function(GtkSourceView* view)gtk_source_view_get_tab_width;
	void function(GtkSourceView* view, GtkSourceDrawSpacesFlags flags)gtk_source_view_set_draw_spaces;
	GtkSourceDrawSpacesFlags function(GtkSourceView* view)gtk_source_view_get_draw_spaces;
	
	// gsv.SourceBuffer
	
	GtkSourceBuffer* function(GtkTextTagTable* table)gtk_source_buffer_new;
	GtkSourceBuffer* function(GtkSourceLanguage* language)gtk_source_buffer_new_with_language;
	void function(GtkSourceBuffer* buffer, gboolean highlight)gtk_source_buffer_set_highlight_syntax;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_get_highlight_syntax;
	void function(GtkSourceBuffer* buffer, GtkSourceLanguage* language)gtk_source_buffer_set_language;
	GtkSourceLanguage* function(GtkSourceBuffer* buffer)gtk_source_buffer_get_language;
	void function(GtkSourceBuffer* buffer, gboolean highlight)gtk_source_buffer_set_highlight_matching_brackets;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_get_highlight_matching_brackets;
	void function(GtkSourceBuffer* buffer, GtkSourceStyleScheme* scheme)gtk_source_buffer_set_style_scheme;
	GtkSourceStyleScheme* function(GtkSourceBuffer* buffer)gtk_source_buffer_get_style_scheme;
	gint function(GtkSourceBuffer* buffer)gtk_source_buffer_get_max_undo_levels;
	void function(GtkSourceBuffer* buffer, gint maxUndoLevels)gtk_source_buffer_set_max_undo_levels;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_redo;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_undo;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_can_redo;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_can_undo;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_begin_not_undoable_action;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_end_not_undoable_action;
	GtkSourceMark* function(GtkSourceBuffer* buffer, gchar* name, gchar* category, GtkTextIter* where)gtk_source_buffer_create_source_mark;
	GSList* function(GtkSourceBuffer* buffer, gint line, gchar* category)gtk_source_buffer_get_source_marks_at_line;
	GSList* function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category)gtk_source_buffer_get_source_marks_at_iter;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gchar* category)gtk_source_buffer_remove_source_marks;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category)gtk_source_buffer_forward_iter_to_source_mark;
	gboolean function(GtkSourceBuffer* buffer, GtkTextIter* iter, gchar* category)gtk_source_buffer_backward_iter_to_source_mark;
	void function(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end)gtk_source_buffer_ensure_highlight;
	
	// gsv.SourceSearch
	
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_source_iter_backward_search;
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_source_iter_forward_search;
	
	// gsv.SourceMark
	
	GtkSourceMark* function(gchar* name, gchar* category)gtk_source_mark_new;
	gchar* function(GtkSourceMark* mark)gtk_source_mark_get_category;
	GtkSourceMark* function(GtkSourceMark* mark, gchar* category)gtk_source_mark_next;
	GtkSourceMark* function(GtkSourceMark* mark, gchar* category)gtk_source_mark_prev;
	
	// gsv.SourceLanguage
	
	gchar* function(GtkSourceLanguage* language)gtk_source_language_get_id;
	gchar* function(GtkSourceLanguage* language)gtk_source_language_get_name;
	gchar* function(GtkSourceLanguage* language)gtk_source_language_get_section;
	gboolean function(GtkSourceLanguage* language)gtk_source_language_get_hidden;
	gchar* function(GtkSourceLanguage* language, gchar* name)gtk_source_language_get_metadata;
	gchar** function(GtkSourceLanguage* language)gtk_source_language_get_mime_types;
	gchar** function(GtkSourceLanguage* language)gtk_source_language_get_globs;
	char* function(GtkSourceLanguage* language, char* styleId)gtk_source_language_get_style_name;
	gchar** function(GtkSourceLanguage* language)gtk_source_language_get_style_ids;
	
	// gsv.SourceLanguageManager
	
	GtkSourceLanguageManager* function()gtk_source_language_manager_new;
	GtkSourceLanguageManager* function()gtk_source_language_manager_get_default;
	void function(GtkSourceLanguageManager* lm, gchar** dirs)gtk_source_language_manager_set_search_path;
	gchar** function(GtkSourceLanguageManager* lm)gtk_source_language_manager_get_search_path;
	gchar** function(GtkSourceLanguageManager* lm)gtk_source_language_manager_get_language_ids;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* id)gtk_source_language_manager_get_language;
	GtkSourceLanguage* function(GtkSourceLanguageManager* lm, gchar* filename, gchar* contentType)gtk_source_language_manager_guess_language;
	
	// gsv.SourcePrintCompositor
	
	GtkSourcePrintCompositor* function(GtkSourceBuffer* buffer)gtk_source_print_compositor_new;
	GtkSourcePrintCompositor* function(GtkSourceView* view)gtk_source_print_compositor_new_from_view;
	GtkSourceBuffer* function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_buffer;
	void function(GtkSourcePrintCompositor* compositor, guint width)gtk_source_print_compositor_set_tab_width;
	guint function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_tab_width;
	void function(GtkSourcePrintCompositor* compositor, GtkWrapMode wrapMode)gtk_source_print_compositor_set_wrap_mode;
	GtkWrapMode function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_wrap_mode;
	void function(GtkSourcePrintCompositor* compositor, gboolean highlight)gtk_source_print_compositor_set_highlight_syntax;
	gboolean function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_highlight_syntax;
	void function(GtkSourcePrintCompositor* compositor, guint interval)gtk_source_print_compositor_set_print_line_numbers;
	guint function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_print_line_numbers;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName)gtk_source_print_compositor_set_body_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_body_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName)gtk_source_print_compositor_set_line_numbers_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_line_numbers_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName)gtk_source_print_compositor_set_header_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_header_font_name;
	void function(GtkSourcePrintCompositor* compositor, gchar* fontName)gtk_source_print_compositor_set_footer_font_name;
	gchar* function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_footer_font_name;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit)gtk_source_print_compositor_get_top_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit)gtk_source_print_compositor_set_top_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit)gtk_source_print_compositor_get_bottom_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit)gtk_source_print_compositor_set_bottom_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit)gtk_source_print_compositor_get_left_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit)gtk_source_print_compositor_set_left_margin;
	gdouble function(GtkSourcePrintCompositor* compositor, GtkUnit unit)gtk_source_print_compositor_get_right_margin;
	void function(GtkSourcePrintCompositor* compositor, gdouble margin, GtkUnit unit)gtk_source_print_compositor_set_right_margin;
	void function(GtkSourcePrintCompositor* compositor, gboolean print)gtk_source_print_compositor_set_print_header;
	gboolean function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_print_header;
	void function(GtkSourcePrintCompositor* compositor, gboolean print)gtk_source_print_compositor_set_print_footer;
	gboolean function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_print_footer;
	void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right)gtk_source_print_compositor_set_header_format;
	void function(GtkSourcePrintCompositor* compositor, gboolean separator, gchar* left, gchar* center, gchar* right)gtk_source_print_compositor_set_footer_format;
	gint function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_n_pages;
	gboolean function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context)gtk_source_print_compositor_paginate;
	gdouble function(GtkSourcePrintCompositor* compositor)gtk_source_print_compositor_get_pagination_progress;
	void function(GtkSourcePrintCompositor* compositor, GtkPrintContext* context, gint pageNr)gtk_source_print_compositor_draw_page;
	
	// gsv.SourceStyle
	
	GtkSourceStyle* function(GtkSourceStyle* style)gtk_source_style_copy;
	
	// gsv.SourceStyleScheme
	
	gchar* function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_id;
	gchar* function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_name;
	gchar* function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_description;
	gchar** function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_authors;
	gchar* function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_filename;
	GtkSourceStyle* function(GtkSourceStyleScheme* scheme, gchar* styleId)gtk_source_style_scheme_get_style;
	
	// gsv.SourceStyleSchemeManager
	
	GtkSourceStyleSchemeManager* function()gtk_source_style_scheme_manager_new;
	GtkSourceStyleSchemeManager* function()gtk_source_style_scheme_manager_get_default;
	void function(GtkSourceStyleSchemeManager* manager, gchar** path)gtk_source_style_scheme_manager_set_search_path;
	void function(GtkSourceStyleSchemeManager* manager, gchar* path)gtk_source_style_scheme_manager_append_search_path;
	void function(GtkSourceStyleSchemeManager* manager, gchar* path)gtk_source_style_scheme_manager_prepend_search_path;
	gchar** function(GtkSourceStyleSchemeManager* manager)gtk_source_style_scheme_manager_get_search_path;
	gchar** function(GtkSourceStyleSchemeManager* manager)gtk_source_style_scheme_manager_get_scheme_ids;
	GtkSourceStyleScheme* function(GtkSourceStyleSchemeManager* manager, gchar* schemeId)gtk_source_style_scheme_manager_get_scheme;
	void function(GtkSourceStyleSchemeManager* manager)gtk_source_style_scheme_manager_force_rescan;


}

Symbol[] gsvLinks = 
[

	{ "gtk_source_view_new",  cast(void**)& gtk_source_view_new},
	{ "gtk_source_view_new_with_buffer",  cast(void**)& gtk_source_view_new_with_buffer},
	{ "gtk_source_view_set_auto_indent",  cast(void**)& gtk_source_view_set_auto_indent},
	{ "gtk_source_view_get_auto_indent",  cast(void**)& gtk_source_view_get_auto_indent},
	{ "gtk_source_view_set_indent_on_tab",  cast(void**)& gtk_source_view_set_indent_on_tab},
	{ "gtk_source_view_get_indent_on_tab",  cast(void**)& gtk_source_view_get_indent_on_tab},
	{ "gtk_source_view_set_indent_width",  cast(void**)& gtk_source_view_set_indent_width},
	{ "gtk_source_view_get_indent_width",  cast(void**)& gtk_source_view_get_indent_width},
	{ "gtk_source_view_set_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_set_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_get_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_get_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_set_smart_home_end",  cast(void**)& gtk_source_view_set_smart_home_end},
	{ "gtk_source_view_get_smart_home_end",  cast(void**)& gtk_source_view_get_smart_home_end},
	{ "gtk_source_view_set_mark_category_priority",  cast(void**)& gtk_source_view_set_mark_category_priority},
	{ "gtk_source_view_get_mark_category_priority",  cast(void**)& gtk_source_view_get_mark_category_priority},
	{ "gtk_source_view_set_mark_category_pixbuf",  cast(void**)& gtk_source_view_set_mark_category_pixbuf},
	{ "gtk_source_view_get_mark_category_pixbuf",  cast(void**)& gtk_source_view_get_mark_category_pixbuf},
	{ "gtk_source_view_get_mark_category_background",  cast(void**)& gtk_source_view_get_mark_category_background},
	{ "gtk_source_view_set_mark_category_background",  cast(void**)& gtk_source_view_set_mark_category_background},
	{ "gtk_source_view_set_highlight_current_line",  cast(void**)& gtk_source_view_set_highlight_current_line},
	{ "gtk_source_view_get_highlight_current_line",  cast(void**)& gtk_source_view_get_highlight_current_line},
	{ "gtk_source_view_set_show_line_marks",  cast(void**)& gtk_source_view_set_show_line_marks},
	{ "gtk_source_view_get_show_line_marks",  cast(void**)& gtk_source_view_get_show_line_marks},
	{ "gtk_source_view_set_show_line_numbers",  cast(void**)& gtk_source_view_set_show_line_numbers},
	{ "gtk_source_view_get_show_line_numbers",  cast(void**)& gtk_source_view_get_show_line_numbers},
	{ "gtk_source_view_set_show_right_margin",  cast(void**)& gtk_source_view_set_show_right_margin},
	{ "gtk_source_view_get_show_right_margin",  cast(void**)& gtk_source_view_get_show_right_margin},
	{ "gtk_source_view_set_right_margin_position",  cast(void**)& gtk_source_view_set_right_margin_position},
	{ "gtk_source_view_get_right_margin_position",  cast(void**)& gtk_source_view_get_right_margin_position},
	{ "gtk_source_view_set_tab_width",  cast(void**)& gtk_source_view_set_tab_width},
	{ "gtk_source_view_get_tab_width",  cast(void**)& gtk_source_view_get_tab_width},
	{ "gtk_source_view_set_draw_spaces",  cast(void**)& gtk_source_view_set_draw_spaces},
	{ "gtk_source_view_get_draw_spaces",  cast(void**)& gtk_source_view_get_draw_spaces},
	{ "gtk_source_buffer_new",  cast(void**)& gtk_source_buffer_new},
	{ "gtk_source_buffer_new_with_language",  cast(void**)& gtk_source_buffer_new_with_language},
	{ "gtk_source_buffer_set_highlight_syntax",  cast(void**)& gtk_source_buffer_set_highlight_syntax},
	{ "gtk_source_buffer_get_highlight_syntax",  cast(void**)& gtk_source_buffer_get_highlight_syntax},
	{ "gtk_source_buffer_set_language",  cast(void**)& gtk_source_buffer_set_language},
	{ "gtk_source_buffer_get_language",  cast(void**)& gtk_source_buffer_get_language},
	{ "gtk_source_buffer_set_highlight_matching_brackets",  cast(void**)& gtk_source_buffer_set_highlight_matching_brackets},
	{ "gtk_source_buffer_get_highlight_matching_brackets",  cast(void**)& gtk_source_buffer_get_highlight_matching_brackets},
	{ "gtk_source_buffer_set_style_scheme",  cast(void**)& gtk_source_buffer_set_style_scheme},
	{ "gtk_source_buffer_get_style_scheme",  cast(void**)& gtk_source_buffer_get_style_scheme},
	{ "gtk_source_buffer_get_max_undo_levels",  cast(void**)& gtk_source_buffer_get_max_undo_levels},
	{ "gtk_source_buffer_set_max_undo_levels",  cast(void**)& gtk_source_buffer_set_max_undo_levels},
	{ "gtk_source_buffer_redo",  cast(void**)& gtk_source_buffer_redo},
	{ "gtk_source_buffer_undo",  cast(void**)& gtk_source_buffer_undo},
	{ "gtk_source_buffer_can_redo",  cast(void**)& gtk_source_buffer_can_redo},
	{ "gtk_source_buffer_can_undo",  cast(void**)& gtk_source_buffer_can_undo},
	{ "gtk_source_buffer_begin_not_undoable_action",  cast(void**)& gtk_source_buffer_begin_not_undoable_action},
	{ "gtk_source_buffer_end_not_undoable_action",  cast(void**)& gtk_source_buffer_end_not_undoable_action},
	{ "gtk_source_buffer_create_source_mark",  cast(void**)& gtk_source_buffer_create_source_mark},
	{ "gtk_source_buffer_get_source_marks_at_line",  cast(void**)& gtk_source_buffer_get_source_marks_at_line},
	{ "gtk_source_buffer_get_source_marks_at_iter",  cast(void**)& gtk_source_buffer_get_source_marks_at_iter},
	{ "gtk_source_buffer_remove_source_marks",  cast(void**)& gtk_source_buffer_remove_source_marks},
	{ "gtk_source_buffer_forward_iter_to_source_mark",  cast(void**)& gtk_source_buffer_forward_iter_to_source_mark},
	{ "gtk_source_buffer_backward_iter_to_source_mark",  cast(void**)& gtk_source_buffer_backward_iter_to_source_mark},
	{ "gtk_source_buffer_ensure_highlight",  cast(void**)& gtk_source_buffer_ensure_highlight},
	{ "gtk_source_iter_backward_search",  cast(void**)& gtk_source_iter_backward_search},
	{ "gtk_source_iter_forward_search",  cast(void**)& gtk_source_iter_forward_search},
	{ "gtk_source_mark_new",  cast(void**)& gtk_source_mark_new},
	{ "gtk_source_mark_get_category",  cast(void**)& gtk_source_mark_get_category},
	{ "gtk_source_mark_next",  cast(void**)& gtk_source_mark_next},
	{ "gtk_source_mark_prev",  cast(void**)& gtk_source_mark_prev},
	{ "gtk_source_language_get_id",  cast(void**)& gtk_source_language_get_id},
	{ "gtk_source_language_get_name",  cast(void**)& gtk_source_language_get_name},
	{ "gtk_source_language_get_section",  cast(void**)& gtk_source_language_get_section},
	{ "gtk_source_language_get_hidden",  cast(void**)& gtk_source_language_get_hidden},
	{ "gtk_source_language_get_metadata",  cast(void**)& gtk_source_language_get_metadata},
	{ "gtk_source_language_get_mime_types",  cast(void**)& gtk_source_language_get_mime_types},
	{ "gtk_source_language_get_globs",  cast(void**)& gtk_source_language_get_globs},
	{ "gtk_source_language_get_style_name",  cast(void**)& gtk_source_language_get_style_name},
	{ "gtk_source_language_get_style_ids",  cast(void**)& gtk_source_language_get_style_ids},
	{ "gtk_source_language_manager_new",  cast(void**)& gtk_source_language_manager_new},
	{ "gtk_source_language_manager_get_default",  cast(void**)& gtk_source_language_manager_get_default},
	{ "gtk_source_language_manager_set_search_path",  cast(void**)& gtk_source_language_manager_set_search_path},
	{ "gtk_source_language_manager_get_search_path",  cast(void**)& gtk_source_language_manager_get_search_path},
	{ "gtk_source_language_manager_get_language_ids",  cast(void**)& gtk_source_language_manager_get_language_ids},
	{ "gtk_source_language_manager_get_language",  cast(void**)& gtk_source_language_manager_get_language},
	{ "gtk_source_language_manager_guess_language",  cast(void**)& gtk_source_language_manager_guess_language},
	{ "gtk_source_print_compositor_new",  cast(void**)& gtk_source_print_compositor_new},
	{ "gtk_source_print_compositor_new_from_view",  cast(void**)& gtk_source_print_compositor_new_from_view},
	{ "gtk_source_print_compositor_get_buffer",  cast(void**)& gtk_source_print_compositor_get_buffer},
	{ "gtk_source_print_compositor_set_tab_width",  cast(void**)& gtk_source_print_compositor_set_tab_width},
	{ "gtk_source_print_compositor_get_tab_width",  cast(void**)& gtk_source_print_compositor_get_tab_width},
	{ "gtk_source_print_compositor_set_wrap_mode",  cast(void**)& gtk_source_print_compositor_set_wrap_mode},
	{ "gtk_source_print_compositor_get_wrap_mode",  cast(void**)& gtk_source_print_compositor_get_wrap_mode},
	{ "gtk_source_print_compositor_set_highlight_syntax",  cast(void**)& gtk_source_print_compositor_set_highlight_syntax},
	{ "gtk_source_print_compositor_get_highlight_syntax",  cast(void**)& gtk_source_print_compositor_get_highlight_syntax},
	{ "gtk_source_print_compositor_set_print_line_numbers",  cast(void**)& gtk_source_print_compositor_set_print_line_numbers},
	{ "gtk_source_print_compositor_get_print_line_numbers",  cast(void**)& gtk_source_print_compositor_get_print_line_numbers},
	{ "gtk_source_print_compositor_set_body_font_name",  cast(void**)& gtk_source_print_compositor_set_body_font_name},
	{ "gtk_source_print_compositor_get_body_font_name",  cast(void**)& gtk_source_print_compositor_get_body_font_name},
	{ "gtk_source_print_compositor_set_line_numbers_font_name",  cast(void**)& gtk_source_print_compositor_set_line_numbers_font_name},
	{ "gtk_source_print_compositor_get_line_numbers_font_name",  cast(void**)& gtk_source_print_compositor_get_line_numbers_font_name},
	{ "gtk_source_print_compositor_set_header_font_name",  cast(void**)& gtk_source_print_compositor_set_header_font_name},
	{ "gtk_source_print_compositor_get_header_font_name",  cast(void**)& gtk_source_print_compositor_get_header_font_name},
	{ "gtk_source_print_compositor_set_footer_font_name",  cast(void**)& gtk_source_print_compositor_set_footer_font_name},
	{ "gtk_source_print_compositor_get_footer_font_name",  cast(void**)& gtk_source_print_compositor_get_footer_font_name},
	{ "gtk_source_print_compositor_get_top_margin",  cast(void**)& gtk_source_print_compositor_get_top_margin},
	{ "gtk_source_print_compositor_set_top_margin",  cast(void**)& gtk_source_print_compositor_set_top_margin},
	{ "gtk_source_print_compositor_get_bottom_margin",  cast(void**)& gtk_source_print_compositor_get_bottom_margin},
	{ "gtk_source_print_compositor_set_bottom_margin",  cast(void**)& gtk_source_print_compositor_set_bottom_margin},
	{ "gtk_source_print_compositor_get_left_margin",  cast(void**)& gtk_source_print_compositor_get_left_margin},
	{ "gtk_source_print_compositor_set_left_margin",  cast(void**)& gtk_source_print_compositor_set_left_margin},
	{ "gtk_source_print_compositor_get_right_margin",  cast(void**)& gtk_source_print_compositor_get_right_margin},
	{ "gtk_source_print_compositor_set_right_margin",  cast(void**)& gtk_source_print_compositor_set_right_margin},
	{ "gtk_source_print_compositor_set_print_header",  cast(void**)& gtk_source_print_compositor_set_print_header},
	{ "gtk_source_print_compositor_get_print_header",  cast(void**)& gtk_source_print_compositor_get_print_header},
	{ "gtk_source_print_compositor_set_print_footer",  cast(void**)& gtk_source_print_compositor_set_print_footer},
	{ "gtk_source_print_compositor_get_print_footer",  cast(void**)& gtk_source_print_compositor_get_print_footer},
	{ "gtk_source_print_compositor_set_header_format",  cast(void**)& gtk_source_print_compositor_set_header_format},
	{ "gtk_source_print_compositor_set_footer_format",  cast(void**)& gtk_source_print_compositor_set_footer_format},
	{ "gtk_source_print_compositor_get_n_pages",  cast(void**)& gtk_source_print_compositor_get_n_pages},
	{ "gtk_source_print_compositor_paginate",  cast(void**)& gtk_source_print_compositor_paginate},
	{ "gtk_source_print_compositor_get_pagination_progress",  cast(void**)& gtk_source_print_compositor_get_pagination_progress},
	{ "gtk_source_print_compositor_draw_page",  cast(void**)& gtk_source_print_compositor_draw_page},
	{ "gtk_source_style_copy",  cast(void**)& gtk_source_style_copy},
	{ "gtk_source_style_scheme_get_id",  cast(void**)& gtk_source_style_scheme_get_id},
	{ "gtk_source_style_scheme_get_name",  cast(void**)& gtk_source_style_scheme_get_name},
	{ "gtk_source_style_scheme_get_description",  cast(void**)& gtk_source_style_scheme_get_description},
	{ "gtk_source_style_scheme_get_authors",  cast(void**)& gtk_source_style_scheme_get_authors},
	{ "gtk_source_style_scheme_get_filename",  cast(void**)& gtk_source_style_scheme_get_filename},
	{ "gtk_source_style_scheme_get_style",  cast(void**)& gtk_source_style_scheme_get_style},
	{ "gtk_source_style_scheme_manager_new",  cast(void**)& gtk_source_style_scheme_manager_new},
	{ "gtk_source_style_scheme_manager_get_default",  cast(void**)& gtk_source_style_scheme_manager_get_default},
	{ "gtk_source_style_scheme_manager_set_search_path",  cast(void**)& gtk_source_style_scheme_manager_set_search_path},
	{ "gtk_source_style_scheme_manager_append_search_path",  cast(void**)& gtk_source_style_scheme_manager_append_search_path},
	{ "gtk_source_style_scheme_manager_prepend_search_path",  cast(void**)& gtk_source_style_scheme_manager_prepend_search_path},
	{ "gtk_source_style_scheme_manager_get_search_path",  cast(void**)& gtk_source_style_scheme_manager_get_search_path},
	{ "gtk_source_style_scheme_manager_get_scheme_ids",  cast(void**)& gtk_source_style_scheme_manager_get_scheme_ids},
	{ "gtk_source_style_scheme_manager_get_scheme",  cast(void**)& gtk_source_style_scheme_manager_get_scheme},
	{ "gtk_source_style_scheme_manager_force_rescan",  cast(void**)& gtk_source_style_scheme_manager_force_rescan},

];