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

version(tango) private import tango.stdc.stdio;
else private import std.stdio;
private import gsvc.gsvtypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker gsv_Linker;

static this()
{
 gsv_Linker = new Linker(libPath ~ importLibs[LIBRARY.GSV] );
 gsv_Linker.link(gsvLinks);
 debug writefln("* Finished static this(): gsv");
}

static ~this()
{
 delete gsv_Linker;
 debug writefln("* Finished static ~this(): gsv");
}

extern(C) 
{	
	// gsv.SourceView
	
	GtkWidget* function()gtk_source_view_new;
	GtkWidget* function(GtkSourceBuffer* buffer)gtk_source_view_new_with_buffer;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_numbers;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_numbers;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_line_markers;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_line_markers;
	void function(GtkSourceView* view, guint width)gtk_source_view_set_tabs_width;
	guint function(GtkSourceView* view)gtk_source_view_get_tabs_width;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_auto_indent;
	gboolean function(GtkSourceView* view)gtk_source_view_get_auto_indent;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_insert_spaces_instead_of_tabs;
	gboolean function(GtkSourceView* view)gtk_source_view_get_insert_spaces_instead_of_tabs;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_show_margin;
	gboolean function(GtkSourceView* view)gtk_source_view_get_show_margin;
	void function(GtkSourceView* view, guint margin)gtk_source_view_set_margin;
	guint function(GtkSourceView* view)gtk_source_view_get_margin;
	void function(GtkSourceView* view, gboolean show)gtk_source_view_set_highlight_current_line;
	gboolean function(GtkSourceView* view)gtk_source_view_get_highlight_current_line;
	void function(GtkSourceView* view, gchar* markerType, GdkPixbuf* pixbuf)gtk_source_view_set_marker_pixbuf;
	GdkPixbuf* function(GtkSourceView* view, gchar* markerType)gtk_source_view_get_marker_pixbuf;
	void function(GtkSourceView* view, gboolean enable)gtk_source_view_set_smart_home_end;
	gboolean function(GtkSourceView* view)gtk_source_view_get_smart_home_end;
	
	// gsv.SourceBuffer
	
	GtkSourceBuffer* function(GtkSourceTagTable* table)gtk_source_buffer_new;
	GtkSourceBuffer* function(GtkSourceLanguage* language)gtk_source_buffer_new_with_language;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_get_check_brackets;
	void function(GtkSourceBuffer* buffer, gboolean checkBrackets)gtk_source_buffer_set_check_brackets;
	void function(GtkSourceBuffer* sourceBuffer, GtkSourceTagStyle* style)gtk_source_buffer_set_bracket_match_style;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_get_highlight;
	void function(GtkSourceBuffer* buffer, gboolean highlight)gtk_source_buffer_set_highlight;
	gint function(GtkSourceBuffer* buffer)gtk_source_buffer_get_max_undo_levels;
	void function(GtkSourceBuffer* buffer, gint maxUndoLevels)gtk_source_buffer_set_max_undo_levels;
	GtkSourceLanguage* function(GtkSourceBuffer* buffer)gtk_source_buffer_get_language;
	void function(GtkSourceBuffer* buffer, GtkSourceLanguage* language)gtk_source_buffer_set_language;
	gunichar function(GtkSourceBuffer* buffer)gtk_source_buffer_get_escape_char;
	void function(GtkSourceBuffer* buffer, gunichar escapeChar)gtk_source_buffer_set_escape_char;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_can_undo;
	gboolean function(GtkSourceBuffer* buffer)gtk_source_buffer_can_redo;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_undo;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_redo;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_begin_not_undoable_action;
	void function(GtkSourceBuffer* buffer)gtk_source_buffer_end_not_undoable_action;
	GtkSourceMarker* function(GtkSourceBuffer* buffer, gchar* name, gchar* type, GtkTextIter* where)gtk_source_buffer_create_marker;
	void function(GtkSourceBuffer* buffer, GtkSourceMarker* marker, GtkTextIter* where)gtk_source_buffer_move_marker;
	void function(GtkSourceBuffer* buffer, GtkSourceMarker* marker)gtk_source_buffer_delete_marker;
	GtkSourceMarker* function(GtkSourceBuffer* buffer, gchar* name)gtk_source_buffer_get_marker;
	GSList* function(GtkSourceBuffer* buffer, GtkTextIter* begin, GtkTextIter* end)gtk_source_buffer_get_markers_in_region;
	GtkSourceMarker* function(GtkSourceBuffer* buffer)gtk_source_buffer_get_first_marker;
	GtkSourceMarker* function(GtkSourceBuffer* buffer)gtk_source_buffer_get_last_marker;
	void function(GtkSourceBuffer* buffer, GtkTextIter* iter, GtkSourceMarker* marker)gtk_source_buffer_get_iter_at_marker;
	GtkSourceMarker* function(GtkSourceBuffer* buffer, GtkTextIter* iter)gtk_source_buffer_get_next_marker;
	GtkSourceMarker* function(GtkSourceBuffer* buffer, GtkTextIter* iter)gtk_source_buffer_get_prev_marker;
	
	// gsv.SourceSearch
	
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_source_iter_backward_search;
	gboolean function(GtkTextIter* iter, gchar* str, GtkSourceSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit)gtk_source_iter_forward_search;
	gboolean function(GtkTextIter* iter)gtk_source_iter_find_matching_bracket;
	
	// gsv.SourceMarker
	
	void function(GtkSourceMarker* marker, gchar* type)gtk_source_marker_set_marker_type;
	gchar* function(GtkSourceMarker* marker)gtk_source_marker_get_marker_type;
	gint function(GtkSourceMarker* marker)gtk_source_marker_get_line;
	gchar* function(GtkSourceMarker* marker)gtk_source_marker_get_name;
	GtkSourceBuffer* function(GtkSourceMarker* marker)gtk_source_marker_get_buffer;
	GtkSourceMarker* function(GtkSourceMarker* marker)gtk_source_marker_next;
	GtkSourceMarker* function(GtkSourceMarker* marker)gtk_source_marker_prev;
	
	// gsv.SourceLanguage
	
	gchar* function(GtkSourceLanguage* language)gtk_source_language_get_name;
	gchar* function(GtkSourceLanguage* language)gtk_source_language_get_section;
	GSList* function(GtkSourceLanguage* language)gtk_source_language_get_tags;
	gunichar function(GtkSourceLanguage* language)gtk_source_language_get_escape_char;
	GSList* function(GtkSourceLanguage* language)gtk_source_language_get_mime_types;
	void function(GtkSourceLanguage* language, GSList* mimeTypes)gtk_source_language_set_mime_types;
	GtkSourceStyleScheme* function(GtkSourceLanguage* language)gtk_source_language_get_style_scheme;
	void function(GtkSourceLanguage* language, GtkSourceStyleScheme* scheme)gtk_source_language_set_style_scheme;
	GtkSourceTagStyle* function(GtkSourceLanguage* language, gchar* tagId)gtk_source_language_get_tag_style;
	void function(GtkSourceLanguage* language, gchar* tagId, GtkSourceTagStyle* style)gtk_source_language_set_tag_style;
	GtkSourceTagStyle* function(GtkSourceLanguage* language, gchar* tagId)gtk_source_language_get_tag_default_style;
	
	// gsv.SourceLanguagesManager
	
	GtkSourceLanguagesManager* function()gtk_source_languages_manager_new;
	GSList* function(GtkSourceLanguagesManager* lm)gtk_source_languages_manager_get_available_languages;
	GtkSourceLanguage* function(GtkSourceLanguagesManager* lm, gchar* mimeType)gtk_source_languages_manager_get_language_from_mime_type;
	GSList* function(GtkSourceLanguagesManager* lm)gtk_source_languages_manager_get_lang_files_dirs;
	
	// gsv.SourceStyleScheme
	
	GtkSourceTagStyle* function(GtkSourceStyleScheme* scheme, gchar* styleName)gtk_source_style_scheme_get_tag_style;
	gchar* function(GtkSourceStyleScheme* scheme)gtk_source_style_scheme_get_name;
	GtkSourceStyleScheme* function()gtk_source_style_scheme_get_default;
	
	// gsv.SourceTag
	
	GtkSourceTagStyle* function(GtkSourceTag* tag)gtk_source_tag_get_style;
	void function(GtkSourceTag* tag, GtkSourceTagStyle* style)gtk_source_tag_set_style;
	GtkTextTag* function(gchar* id, gchar* name, gchar* patternStart, gchar* patternEnd)gtk_syntax_tag_new;
	GtkTextTag* function(gchar* id, gchar* name, gchar* pattern)gtk_pattern_tag_new;
	GtkTextTag* function(gchar* id, gchar* name, GSList* keywords, gboolean caseSensitive, gboolean matchEmptyStringAtBeginning, gboolean matchEmptyStringAtEnd, gchar* beginningRegex, gchar* endRegex)gtk_keyword_list_tag_new;
	GtkTextTag* function(gchar* id, gchar* name, gchar* patternStart)gtk_line_comment_tag_new;
	GtkTextTag* function(gchar* id, gchar* name, gchar* patternStart, gchar* patternEnd, gboolean endAtLineEnd)gtk_string_tag_new;
	
	// gsv.SourceTagTable
	
	GtkSourceTagTable* function()gtk_source_tag_table_new;
	void function(GtkSourceTagTable* table, GSList* tags)gtk_source_tag_table_add_tags;
	void function(GtkSourceTagTable* table)gtk_source_tag_table_remove_source_tags;
	
	// gsv.SourceTagStyle
	
	GType function()gtk_source_tag_style_get_type;
	GtkSourceTagStyle* function()gtk_source_tag_style_new;
	GtkSourceTagStyle* function(GtkSourceTagStyle* style)gtk_source_tag_style_copy;
	void function(GtkSourceTagStyle* style)gtk_source_tag_style_free;


}

Symbol[] gsvLinks = 
[

	{ "gtk_source_view_new",  cast(void**)& gtk_source_view_new},
	{ "gtk_source_view_new_with_buffer",  cast(void**)& gtk_source_view_new_with_buffer},
	{ "gtk_source_view_set_show_line_numbers",  cast(void**)& gtk_source_view_set_show_line_numbers},
	{ "gtk_source_view_get_show_line_numbers",  cast(void**)& gtk_source_view_get_show_line_numbers},
	{ "gtk_source_view_set_show_line_markers",  cast(void**)& gtk_source_view_set_show_line_markers},
	{ "gtk_source_view_get_show_line_markers",  cast(void**)& gtk_source_view_get_show_line_markers},
	{ "gtk_source_view_set_tabs_width",  cast(void**)& gtk_source_view_set_tabs_width},
	{ "gtk_source_view_get_tabs_width",  cast(void**)& gtk_source_view_get_tabs_width},
	{ "gtk_source_view_set_auto_indent",  cast(void**)& gtk_source_view_set_auto_indent},
	{ "gtk_source_view_get_auto_indent",  cast(void**)& gtk_source_view_get_auto_indent},
	{ "gtk_source_view_set_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_set_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_get_insert_spaces_instead_of_tabs",  cast(void**)& gtk_source_view_get_insert_spaces_instead_of_tabs},
	{ "gtk_source_view_set_show_margin",  cast(void**)& gtk_source_view_set_show_margin},
	{ "gtk_source_view_get_show_margin",  cast(void**)& gtk_source_view_get_show_margin},
	{ "gtk_source_view_set_margin",  cast(void**)& gtk_source_view_set_margin},
	{ "gtk_source_view_get_margin",  cast(void**)& gtk_source_view_get_margin},
	{ "gtk_source_view_set_highlight_current_line",  cast(void**)& gtk_source_view_set_highlight_current_line},
	{ "gtk_source_view_get_highlight_current_line",  cast(void**)& gtk_source_view_get_highlight_current_line},
	{ "gtk_source_view_set_marker_pixbuf",  cast(void**)& gtk_source_view_set_marker_pixbuf},
	{ "gtk_source_view_get_marker_pixbuf",  cast(void**)& gtk_source_view_get_marker_pixbuf},
	{ "gtk_source_view_set_smart_home_end",  cast(void**)& gtk_source_view_set_smart_home_end},
	{ "gtk_source_view_get_smart_home_end",  cast(void**)& gtk_source_view_get_smart_home_end},
	{ "gtk_source_buffer_new",  cast(void**)& gtk_source_buffer_new},
	{ "gtk_source_buffer_new_with_language",  cast(void**)& gtk_source_buffer_new_with_language},
	{ "gtk_source_buffer_get_check_brackets",  cast(void**)& gtk_source_buffer_get_check_brackets},
	{ "gtk_source_buffer_set_check_brackets",  cast(void**)& gtk_source_buffer_set_check_brackets},
	{ "gtk_source_buffer_set_bracket_match_style",  cast(void**)& gtk_source_buffer_set_bracket_match_style},
	{ "gtk_source_buffer_get_highlight",  cast(void**)& gtk_source_buffer_get_highlight},
	{ "gtk_source_buffer_set_highlight",  cast(void**)& gtk_source_buffer_set_highlight},
	{ "gtk_source_buffer_get_max_undo_levels",  cast(void**)& gtk_source_buffer_get_max_undo_levels},
	{ "gtk_source_buffer_set_max_undo_levels",  cast(void**)& gtk_source_buffer_set_max_undo_levels},
	{ "gtk_source_buffer_get_language",  cast(void**)& gtk_source_buffer_get_language},
	{ "gtk_source_buffer_set_language",  cast(void**)& gtk_source_buffer_set_language},
	{ "gtk_source_buffer_get_escape_char",  cast(void**)& gtk_source_buffer_get_escape_char},
	{ "gtk_source_buffer_set_escape_char",  cast(void**)& gtk_source_buffer_set_escape_char},
	{ "gtk_source_buffer_can_undo",  cast(void**)& gtk_source_buffer_can_undo},
	{ "gtk_source_buffer_can_redo",  cast(void**)& gtk_source_buffer_can_redo},
	{ "gtk_source_buffer_undo",  cast(void**)& gtk_source_buffer_undo},
	{ "gtk_source_buffer_redo",  cast(void**)& gtk_source_buffer_redo},
	{ "gtk_source_buffer_begin_not_undoable_action",  cast(void**)& gtk_source_buffer_begin_not_undoable_action},
	{ "gtk_source_buffer_end_not_undoable_action",  cast(void**)& gtk_source_buffer_end_not_undoable_action},
	{ "gtk_source_buffer_create_marker",  cast(void**)& gtk_source_buffer_create_marker},
	{ "gtk_source_buffer_move_marker",  cast(void**)& gtk_source_buffer_move_marker},
	{ "gtk_source_buffer_delete_marker",  cast(void**)& gtk_source_buffer_delete_marker},
	{ "gtk_source_buffer_get_marker",  cast(void**)& gtk_source_buffer_get_marker},
	{ "gtk_source_buffer_get_markers_in_region",  cast(void**)& gtk_source_buffer_get_markers_in_region},
	{ "gtk_source_buffer_get_first_marker",  cast(void**)& gtk_source_buffer_get_first_marker},
	{ "gtk_source_buffer_get_last_marker",  cast(void**)& gtk_source_buffer_get_last_marker},
	{ "gtk_source_buffer_get_iter_at_marker",  cast(void**)& gtk_source_buffer_get_iter_at_marker},
	{ "gtk_source_buffer_get_next_marker",  cast(void**)& gtk_source_buffer_get_next_marker},
	{ "gtk_source_buffer_get_prev_marker",  cast(void**)& gtk_source_buffer_get_prev_marker},
	{ "gtk_source_iter_backward_search",  cast(void**)& gtk_source_iter_backward_search},
	{ "gtk_source_iter_forward_search",  cast(void**)& gtk_source_iter_forward_search},
	{ "gtk_source_iter_find_matching_bracket",  cast(void**)& gtk_source_iter_find_matching_bracket},
	{ "gtk_source_marker_set_marker_type",  cast(void**)& gtk_source_marker_set_marker_type},
	{ "gtk_source_marker_get_marker_type",  cast(void**)& gtk_source_marker_get_marker_type},
	{ "gtk_source_marker_get_line",  cast(void**)& gtk_source_marker_get_line},
	{ "gtk_source_marker_get_name",  cast(void**)& gtk_source_marker_get_name},
	{ "gtk_source_marker_get_buffer",  cast(void**)& gtk_source_marker_get_buffer},
	{ "gtk_source_marker_next",  cast(void**)& gtk_source_marker_next},
	{ "gtk_source_marker_prev",  cast(void**)& gtk_source_marker_prev},
	{ "gtk_source_language_get_name",  cast(void**)& gtk_source_language_get_name},
	{ "gtk_source_language_get_section",  cast(void**)& gtk_source_language_get_section},
	{ "gtk_source_language_get_tags",  cast(void**)& gtk_source_language_get_tags},
	{ "gtk_source_language_get_escape_char",  cast(void**)& gtk_source_language_get_escape_char},
	{ "gtk_source_language_get_mime_types",  cast(void**)& gtk_source_language_get_mime_types},
	{ "gtk_source_language_set_mime_types",  cast(void**)& gtk_source_language_set_mime_types},
	{ "gtk_source_language_get_style_scheme",  cast(void**)& gtk_source_language_get_style_scheme},
	{ "gtk_source_language_set_style_scheme",  cast(void**)& gtk_source_language_set_style_scheme},
	{ "gtk_source_language_get_tag_style",  cast(void**)& gtk_source_language_get_tag_style},
	{ "gtk_source_language_set_tag_style",  cast(void**)& gtk_source_language_set_tag_style},
	{ "gtk_source_language_get_tag_default_style",  cast(void**)& gtk_source_language_get_tag_default_style},
	{ "gtk_source_languages_manager_new",  cast(void**)& gtk_source_languages_manager_new},
	{ "gtk_source_languages_manager_get_available_languages",  cast(void**)& gtk_source_languages_manager_get_available_languages},
	{ "gtk_source_languages_manager_get_language_from_mime_type",  cast(void**)& gtk_source_languages_manager_get_language_from_mime_type},
	{ "gtk_source_languages_manager_get_lang_files_dirs",  cast(void**)& gtk_source_languages_manager_get_lang_files_dirs},
	{ "gtk_source_style_scheme_get_tag_style",  cast(void**)& gtk_source_style_scheme_get_tag_style},
	{ "gtk_source_style_scheme_get_name",  cast(void**)& gtk_source_style_scheme_get_name},
	{ "gtk_source_style_scheme_get_default",  cast(void**)& gtk_source_style_scheme_get_default},
	{ "gtk_source_tag_get_style",  cast(void**)& gtk_source_tag_get_style},
	{ "gtk_source_tag_set_style",  cast(void**)& gtk_source_tag_set_style},
	{ "gtk_syntax_tag_new",  cast(void**)& gtk_syntax_tag_new},
	{ "gtk_pattern_tag_new",  cast(void**)& gtk_pattern_tag_new},
	{ "gtk_keyword_list_tag_new",  cast(void**)& gtk_keyword_list_tag_new},
	{ "gtk_line_comment_tag_new",  cast(void**)& gtk_line_comment_tag_new},
	{ "gtk_string_tag_new",  cast(void**)& gtk_string_tag_new},
	{ "gtk_source_tag_table_new",  cast(void**)& gtk_source_tag_table_new},
	{ "gtk_source_tag_table_add_tags",  cast(void**)& gtk_source_tag_table_add_tags},
	{ "gtk_source_tag_table_remove_source_tags",  cast(void**)& gtk_source_tag_table_remove_source_tags},
	{ "gtk_source_tag_style_get_type",  cast(void**)& gtk_source_tag_style_get_type},
	{ "gtk_source_tag_style_new",  cast(void**)& gtk_source_tag_style_new},
	{ "gtk_source_tag_style_copy",  cast(void**)& gtk_source_tag_style_copy},
	{ "gtk_source_tag_style_free",  cast(void**)& gtk_source_tag_style_free},

];