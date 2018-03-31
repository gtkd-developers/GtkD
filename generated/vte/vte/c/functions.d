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


module vte.c.functions;

import std.stdio;
import vte.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_VTE = ["libvte-2.91-0.dll"];
else version (OSX)
	static immutable LIBRARY_VTE = ["libvte-2.91.0.dylib"];
else
	static immutable LIBRARY_VTE = ["libvte-2.91.so.0"];

shared static this()
{
	// vte.Pty

	Linker.link(vte_pty_get_type, "vte_pty_get_type", LIBRARY_VTE);
	Linker.link(vte_pty_new_foreign_sync, "vte_pty_new_foreign_sync", LIBRARY_VTE);
	Linker.link(vte_pty_new_sync, "vte_pty_new_sync", LIBRARY_VTE);
	Linker.link(vte_pty_child_setup, "vte_pty_child_setup", LIBRARY_VTE);
	Linker.link(vte_pty_close, "vte_pty_close", LIBRARY_VTE);
	Linker.link(vte_pty_get_fd, "vte_pty_get_fd", LIBRARY_VTE);
	Linker.link(vte_pty_get_size, "vte_pty_get_size", LIBRARY_VTE);
	Linker.link(vte_pty_set_size, "vte_pty_set_size", LIBRARY_VTE);
	Linker.link(vte_pty_set_utf8, "vte_pty_set_utf8", LIBRARY_VTE);
	Linker.link(vte_pty_spawn_async, "vte_pty_spawn_async", LIBRARY_VTE);
	Linker.link(vte_pty_spawn_finish, "vte_pty_spawn_finish", LIBRARY_VTE);

	// vte.Regex

	Linker.link(vte_regex_get_type, "vte_regex_get_type", LIBRARY_VTE);
	Linker.link(vte_regex_new_for_match, "vte_regex_new_for_match", LIBRARY_VTE);
	Linker.link(vte_regex_new_for_search, "vte_regex_new_for_search", LIBRARY_VTE);
	Linker.link(vte_regex_jit, "vte_regex_jit", LIBRARY_VTE);
	Linker.link(vte_regex_ref, "vte_regex_ref", LIBRARY_VTE);
	Linker.link(vte_regex_unref, "vte_regex_unref", LIBRARY_VTE);

	// vte.Terminal

	Linker.link(vte_terminal_get_type, "vte_terminal_get_type", LIBRARY_VTE);
	Linker.link(vte_terminal_new, "vte_terminal_new", LIBRARY_VTE);
	Linker.link(vte_terminal_copy_clipboard, "vte_terminal_copy_clipboard", LIBRARY_VTE);
	Linker.link(vte_terminal_copy_clipboard_format, "vte_terminal_copy_clipboard_format", LIBRARY_VTE);
	Linker.link(vte_terminal_copy_primary, "vte_terminal_copy_primary", LIBRARY_VTE);
	Linker.link(vte_terminal_event_check_gregex_simple, "vte_terminal_event_check_gregex_simple", LIBRARY_VTE);
	Linker.link(vte_terminal_event_check_regex_simple, "vte_terminal_event_check_regex_simple", LIBRARY_VTE);
	Linker.link(vte_terminal_feed, "vte_terminal_feed", LIBRARY_VTE);
	Linker.link(vte_terminal_feed_child, "vte_terminal_feed_child", LIBRARY_VTE);
	Linker.link(vte_terminal_feed_child_binary, "vte_terminal_feed_child_binary", LIBRARY_VTE);
	Linker.link(vte_terminal_get_allow_bold, "vte_terminal_get_allow_bold", LIBRARY_VTE);
	Linker.link(vte_terminal_get_allow_hyperlink, "vte_terminal_get_allow_hyperlink", LIBRARY_VTE);
	Linker.link(vte_terminal_get_audible_bell, "vte_terminal_get_audible_bell", LIBRARY_VTE);
	Linker.link(vte_terminal_get_bold_is_bright, "vte_terminal_get_bold_is_bright", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cell_height_scale, "vte_terminal_get_cell_height_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cell_width_scale, "vte_terminal_get_cell_width_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_get_char_height, "vte_terminal_get_char_height", LIBRARY_VTE);
	Linker.link(vte_terminal_get_char_width, "vte_terminal_get_char_width", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cjk_ambiguous_width, "vte_terminal_get_cjk_ambiguous_width", LIBRARY_VTE);
	Linker.link(vte_terminal_get_column_count, "vte_terminal_get_column_count", LIBRARY_VTE);
	Linker.link(vte_terminal_get_current_directory_uri, "vte_terminal_get_current_directory_uri", LIBRARY_VTE);
	Linker.link(vte_terminal_get_current_file_uri, "vte_terminal_get_current_file_uri", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cursor_blink_mode, "vte_terminal_get_cursor_blink_mode", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cursor_position, "vte_terminal_get_cursor_position", LIBRARY_VTE);
	Linker.link(vte_terminal_get_cursor_shape, "vte_terminal_get_cursor_shape", LIBRARY_VTE);
	Linker.link(vte_terminal_get_encoding, "vte_terminal_get_encoding", LIBRARY_VTE);
	Linker.link(vte_terminal_get_font, "vte_terminal_get_font", LIBRARY_VTE);
	Linker.link(vte_terminal_get_font_scale, "vte_terminal_get_font_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_get_geometry_hints, "vte_terminal_get_geometry_hints", LIBRARY_VTE);
	Linker.link(vte_terminal_get_has_selection, "vte_terminal_get_has_selection", LIBRARY_VTE);
	Linker.link(vte_terminal_get_icon_title, "vte_terminal_get_icon_title", LIBRARY_VTE);
	Linker.link(vte_terminal_get_input_enabled, "vte_terminal_get_input_enabled", LIBRARY_VTE);
	Linker.link(vte_terminal_get_mouse_autohide, "vte_terminal_get_mouse_autohide", LIBRARY_VTE);
	Linker.link(vte_terminal_get_pty, "vte_terminal_get_pty", LIBRARY_VTE);
	Linker.link(vte_terminal_get_rewrap_on_resize, "vte_terminal_get_rewrap_on_resize", LIBRARY_VTE);
	Linker.link(vte_terminal_get_row_count, "vte_terminal_get_row_count", LIBRARY_VTE);
	Linker.link(vte_terminal_get_scroll_on_keystroke, "vte_terminal_get_scroll_on_keystroke", LIBRARY_VTE);
	Linker.link(vte_terminal_get_scroll_on_output, "vte_terminal_get_scroll_on_output", LIBRARY_VTE);
	Linker.link(vte_terminal_get_scrollback_lines, "vte_terminal_get_scrollback_lines", LIBRARY_VTE);
	Linker.link(vte_terminal_get_text, "vte_terminal_get_text", LIBRARY_VTE);
	Linker.link(vte_terminal_get_text_blink_mode, "vte_terminal_get_text_blink_mode", LIBRARY_VTE);
	Linker.link(vte_terminal_get_text_include_trailing_spaces, "vte_terminal_get_text_include_trailing_spaces", LIBRARY_VTE);
	Linker.link(vte_terminal_get_text_range, "vte_terminal_get_text_range", LIBRARY_VTE);
	Linker.link(vte_terminal_get_window_title, "vte_terminal_get_window_title", LIBRARY_VTE);
	Linker.link(vte_terminal_get_word_char_exceptions, "vte_terminal_get_word_char_exceptions", LIBRARY_VTE);
	Linker.link(vte_terminal_hyperlink_check_event, "vte_terminal_hyperlink_check_event", LIBRARY_VTE);
	Linker.link(vte_terminal_match_add_gregex, "vte_terminal_match_add_gregex", LIBRARY_VTE);
	Linker.link(vte_terminal_match_add_regex, "vte_terminal_match_add_regex", LIBRARY_VTE);
	Linker.link(vte_terminal_match_check, "vte_terminal_match_check", LIBRARY_VTE);
	Linker.link(vte_terminal_match_check_event, "vte_terminal_match_check_event", LIBRARY_VTE);
	Linker.link(vte_terminal_match_remove, "vte_terminal_match_remove", LIBRARY_VTE);
	Linker.link(vte_terminal_match_remove_all, "vte_terminal_match_remove_all", LIBRARY_VTE);
	Linker.link(vte_terminal_match_set_cursor, "vte_terminal_match_set_cursor", LIBRARY_VTE);
	Linker.link(vte_terminal_match_set_cursor_name, "vte_terminal_match_set_cursor_name", LIBRARY_VTE);
	Linker.link(vte_terminal_match_set_cursor_type, "vte_terminal_match_set_cursor_type", LIBRARY_VTE);
	Linker.link(vte_terminal_paste_clipboard, "vte_terminal_paste_clipboard", LIBRARY_VTE);
	Linker.link(vte_terminal_paste_primary, "vte_terminal_paste_primary", LIBRARY_VTE);
	Linker.link(vte_terminal_pty_new_sync, "vte_terminal_pty_new_sync", LIBRARY_VTE);
	Linker.link(vte_terminal_reset, "vte_terminal_reset", LIBRARY_VTE);
	Linker.link(vte_terminal_search_find_next, "vte_terminal_search_find_next", LIBRARY_VTE);
	Linker.link(vte_terminal_search_find_previous, "vte_terminal_search_find_previous", LIBRARY_VTE);
	Linker.link(vte_terminal_search_get_gregex, "vte_terminal_search_get_gregex", LIBRARY_VTE);
	Linker.link(vte_terminal_search_get_regex, "vte_terminal_search_get_regex", LIBRARY_VTE);
	Linker.link(vte_terminal_search_get_wrap_around, "vte_terminal_search_get_wrap_around", LIBRARY_VTE);
	Linker.link(vte_terminal_search_set_gregex, "vte_terminal_search_set_gregex", LIBRARY_VTE);
	Linker.link(vte_terminal_search_set_regex, "vte_terminal_search_set_regex", LIBRARY_VTE);
	Linker.link(vte_terminal_search_set_wrap_around, "vte_terminal_search_set_wrap_around", LIBRARY_VTE);
	Linker.link(vte_terminal_select_all, "vte_terminal_select_all", LIBRARY_VTE);
	Linker.link(vte_terminal_set_allow_bold, "vte_terminal_set_allow_bold", LIBRARY_VTE);
	Linker.link(vte_terminal_set_allow_hyperlink, "vte_terminal_set_allow_hyperlink", LIBRARY_VTE);
	Linker.link(vte_terminal_set_audible_bell, "vte_terminal_set_audible_bell", LIBRARY_VTE);
	Linker.link(vte_terminal_set_backspace_binding, "vte_terminal_set_backspace_binding", LIBRARY_VTE);
	Linker.link(vte_terminal_set_bold_is_bright, "vte_terminal_set_bold_is_bright", LIBRARY_VTE);
	Linker.link(vte_terminal_set_cell_height_scale, "vte_terminal_set_cell_height_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_set_cell_width_scale, "vte_terminal_set_cell_width_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_set_cjk_ambiguous_width, "vte_terminal_set_cjk_ambiguous_width", LIBRARY_VTE);
	Linker.link(vte_terminal_set_clear_background, "vte_terminal_set_clear_background", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_background, "vte_terminal_set_color_background", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_bold, "vte_terminal_set_color_bold", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_cursor, "vte_terminal_set_color_cursor", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_cursor_foreground, "vte_terminal_set_color_cursor_foreground", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_foreground, "vte_terminal_set_color_foreground", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_highlight, "vte_terminal_set_color_highlight", LIBRARY_VTE);
	Linker.link(vte_terminal_set_color_highlight_foreground, "vte_terminal_set_color_highlight_foreground", LIBRARY_VTE);
	Linker.link(vte_terminal_set_colors, "vte_terminal_set_colors", LIBRARY_VTE);
	Linker.link(vte_terminal_set_cursor_blink_mode, "vte_terminal_set_cursor_blink_mode", LIBRARY_VTE);
	Linker.link(vte_terminal_set_cursor_shape, "vte_terminal_set_cursor_shape", LIBRARY_VTE);
	Linker.link(vte_terminal_set_default_colors, "vte_terminal_set_default_colors", LIBRARY_VTE);
	Linker.link(vte_terminal_set_delete_binding, "vte_terminal_set_delete_binding", LIBRARY_VTE);
	Linker.link(vte_terminal_set_encoding, "vte_terminal_set_encoding", LIBRARY_VTE);
	Linker.link(vte_terminal_set_font, "vte_terminal_set_font", LIBRARY_VTE);
	Linker.link(vte_terminal_set_font_scale, "vte_terminal_set_font_scale", LIBRARY_VTE);
	Linker.link(vte_terminal_set_geometry_hints_for_window, "vte_terminal_set_geometry_hints_for_window", LIBRARY_VTE);
	Linker.link(vte_terminal_set_input_enabled, "vte_terminal_set_input_enabled", LIBRARY_VTE);
	Linker.link(vte_terminal_set_mouse_autohide, "vte_terminal_set_mouse_autohide", LIBRARY_VTE);
	Linker.link(vte_terminal_set_pty, "vte_terminal_set_pty", LIBRARY_VTE);
	Linker.link(vte_terminal_set_rewrap_on_resize, "vte_terminal_set_rewrap_on_resize", LIBRARY_VTE);
	Linker.link(vte_terminal_set_scroll_on_keystroke, "vte_terminal_set_scroll_on_keystroke", LIBRARY_VTE);
	Linker.link(vte_terminal_set_scroll_on_output, "vte_terminal_set_scroll_on_output", LIBRARY_VTE);
	Linker.link(vte_terminal_set_scrollback_lines, "vte_terminal_set_scrollback_lines", LIBRARY_VTE);
	Linker.link(vte_terminal_set_size, "vte_terminal_set_size", LIBRARY_VTE);
	Linker.link(vte_terminal_set_text_blink_mode, "vte_terminal_set_text_blink_mode", LIBRARY_VTE);
	Linker.link(vte_terminal_set_word_char_exceptions, "vte_terminal_set_word_char_exceptions", LIBRARY_VTE);
	Linker.link(vte_terminal_spawn_async, "vte_terminal_spawn_async", LIBRARY_VTE);
	Linker.link(vte_terminal_spawn_sync, "vte_terminal_spawn_sync", LIBRARY_VTE);
	Linker.link(vte_terminal_unselect_all, "vte_terminal_unselect_all", LIBRARY_VTE);
	Linker.link(vte_terminal_watch_child, "vte_terminal_watch_child", LIBRARY_VTE);
	Linker.link(vte_terminal_write_contents_sync, "vte_terminal_write_contents_sync", LIBRARY_VTE);
	Linker.link(vte_get_user_shell, "vte_get_user_shell", LIBRARY_VTE);

	// vte.Version

	Linker.link(vte_get_features, "vte_get_features", LIBRARY_VTE);
	Linker.link(vte_get_major_version, "vte_get_major_version", LIBRARY_VTE);
	Linker.link(vte_get_micro_version, "vte_get_micro_version", LIBRARY_VTE);
	Linker.link(vte_get_minor_version, "vte_get_minor_version", LIBRARY_VTE);
}

__gshared extern(C)
{

	// vte.Pty

	GType function() c_vte_pty_get_type;
	VtePty* function(int fd, GCancellable* cancellable, GError** err) c_vte_pty_new_foreign_sync;
	VtePty* function(VtePtyFlags flags, GCancellable* cancellable, GError** err) c_vte_pty_new_sync;
	void function(VtePty* pty) c_vte_pty_child_setup;
	void function(VtePty* pty) c_vte_pty_close;
	int function(VtePty* pty) c_vte_pty_get_fd;
	int function(VtePty* pty, int* rows, int* columns, GError** err) c_vte_pty_get_size;
	int function(VtePty* pty, int rows, int columns, GError** err) c_vte_pty_set_size;
	int function(VtePty* pty, int utf8, GError** err) c_vte_pty_set_utf8;
	void function(VtePty* pty, const(char)* workingDirectory, char** argv, char** envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GDestroyNotify childSetupDataDestroy, int timeout, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_vte_pty_spawn_async;
	int function(VtePty* pty, GAsyncResult* result, GPid* childPid, GError** err) c_vte_pty_spawn_finish;

	// vte.Regex

	GType function() c_vte_regex_get_type;
	VteRegex* function(const(char)* pattern, ptrdiff_t patternLength, uint flags, GError** err) c_vte_regex_new_for_match;
	VteRegex* function(const(char)* pattern, ptrdiff_t patternLength, uint flags, GError** err) c_vte_regex_new_for_search;
	int function(VteRegex* regex, uint flags, GError** err) c_vte_regex_jit;
	VteRegex* function(VteRegex* regex) c_vte_regex_ref;
	VteRegex* function(VteRegex* regex) c_vte_regex_unref;

	// vte.Terminal

	GType function() c_vte_terminal_get_type;
	GtkWidget* function() c_vte_terminal_new;
	void function(VteTerminal* terminal) c_vte_terminal_copy_clipboard;
	void function(VteTerminal* terminal, VteFormat format) c_vte_terminal_copy_clipboard_format;
	void function(VteTerminal* terminal) c_vte_terminal_copy_primary;
	int function(VteTerminal* terminal, GdkEvent* event, GRegex** regexes, size_t nRegexes, GRegexMatchFlags matchFlags, char** matches) c_vte_terminal_event_check_gregex_simple;
	int function(VteTerminal* terminal, GdkEvent* event, VteRegex** regexes, size_t nRegexes, uint matchFlags, char** matches) c_vte_terminal_event_check_regex_simple;
	void function(VteTerminal* terminal, char* data, ptrdiff_t length) c_vte_terminal_feed;
	void function(VteTerminal* terminal, char* text, ptrdiff_t length) c_vte_terminal_feed_child;
	void function(VteTerminal* terminal, ubyte* data, size_t length) c_vte_terminal_feed_child_binary;
	int function(VteTerminal* terminal) c_vte_terminal_get_allow_bold;
	int function(VteTerminal* terminal) c_vte_terminal_get_allow_hyperlink;
	int function(VteTerminal* terminal) c_vte_terminal_get_audible_bell;
	int function(VteTerminal* terminal) c_vte_terminal_get_bold_is_bright;
	double function(VteTerminal* terminal) c_vte_terminal_get_cell_height_scale;
	double function(VteTerminal* terminal) c_vte_terminal_get_cell_width_scale;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_height;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_width;
	int function(VteTerminal* terminal) c_vte_terminal_get_cjk_ambiguous_width;
	glong function(VteTerminal* terminal) c_vte_terminal_get_column_count;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_current_directory_uri;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_current_file_uri;
	VteCursorBlinkMode function(VteTerminal* terminal) c_vte_terminal_get_cursor_blink_mode;
	void function(VteTerminal* terminal, glong* column, glong* row) c_vte_terminal_get_cursor_position;
	VteCursorShape function(VteTerminal* terminal) c_vte_terminal_get_cursor_shape;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_encoding;
	PangoFontDescription* function(VteTerminal* terminal) c_vte_terminal_get_font;
	double function(VteTerminal* terminal) c_vte_terminal_get_font_scale;
	void function(VteTerminal* terminal, GdkGeometry* hints, int minRows, int minColumns) c_vte_terminal_get_geometry_hints;
	int function(VteTerminal* terminal) c_vte_terminal_get_has_selection;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_icon_title;
	int function(VteTerminal* terminal) c_vte_terminal_get_input_enabled;
	int function(VteTerminal* terminal) c_vte_terminal_get_mouse_autohide;
	VtePty* function(VteTerminal* terminal) c_vte_terminal_get_pty;
	int function(VteTerminal* terminal) c_vte_terminal_get_rewrap_on_resize;
	glong function(VteTerminal* terminal) c_vte_terminal_get_row_count;
	int function(VteTerminal* terminal) c_vte_terminal_get_scroll_on_keystroke;
	int function(VteTerminal* terminal) c_vte_terminal_get_scroll_on_output;
	glong function(VteTerminal* terminal) c_vte_terminal_get_scrollback_lines;
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text;
	VteTextBlinkMode function(VteTerminal* terminal) c_vte_terminal_get_text_blink_mode;
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_include_trailing_spaces;
	char* function(VteTerminal* terminal, glong startRow, glong startCol, glong endRow, glong endCol, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_range;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_window_title;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_word_char_exceptions;
	char* function(VteTerminal* terminal, GdkEvent* event) c_vte_terminal_hyperlink_check_event;
	int function(VteTerminal* terminal, GRegex* gregex, GRegexMatchFlags gflags) c_vte_terminal_match_add_gregex;
	int function(VteTerminal* terminal, VteRegex* regex, uint flags) c_vte_terminal_match_add_regex;
	char* function(VteTerminal* terminal, glong column, glong row, int* tag) c_vte_terminal_match_check;
	char* function(VteTerminal* terminal, GdkEvent* event, int* tag) c_vte_terminal_match_check_event;
	void function(VteTerminal* terminal, int tag) c_vte_terminal_match_remove;
	void function(VteTerminal* terminal) c_vte_terminal_match_remove_all;
	void function(VteTerminal* terminal, int tag, GdkCursor* cursor) c_vte_terminal_match_set_cursor;
	void function(VteTerminal* terminal, int tag, const(char)* cursorName) c_vte_terminal_match_set_cursor_name;
	void function(VteTerminal* terminal, int tag, GdkCursorType cursorType) c_vte_terminal_match_set_cursor_type;
	void function(VteTerminal* terminal) c_vte_terminal_paste_clipboard;
	void function(VteTerminal* terminal) c_vte_terminal_paste_primary;
	VtePty* function(VteTerminal* terminal, VtePtyFlags flags, GCancellable* cancellable, GError** err) c_vte_terminal_pty_new_sync;
	void function(VteTerminal* terminal, int clearTabstops, int clearHistory) c_vte_terminal_reset;
	int function(VteTerminal* terminal) c_vte_terminal_search_find_next;
	int function(VteTerminal* terminal) c_vte_terminal_search_find_previous;
	GRegex* function(VteTerminal* terminal) c_vte_terminal_search_get_gregex;
	VteRegex* function(VteTerminal* terminal) c_vte_terminal_search_get_regex;
	int function(VteTerminal* terminal) c_vte_terminal_search_get_wrap_around;
	void function(VteTerminal* terminal, GRegex* gregex, GRegexMatchFlags gflags) c_vte_terminal_search_set_gregex;
	void function(VteTerminal* terminal, VteRegex* regex, uint flags) c_vte_terminal_search_set_regex;
	void function(VteTerminal* terminal, int wrapAround) c_vte_terminal_search_set_wrap_around;
	void function(VteTerminal* terminal) c_vte_terminal_select_all;
	void function(VteTerminal* terminal, int allowBold) c_vte_terminal_set_allow_bold;
	void function(VteTerminal* terminal, int allowHyperlink) c_vte_terminal_set_allow_hyperlink;
	void function(VteTerminal* terminal, int isAudible) c_vte_terminal_set_audible_bell;
	void function(VteTerminal* terminal, VteEraseBinding binding) c_vte_terminal_set_backspace_binding;
	void function(VteTerminal* terminal, int boldIsBright) c_vte_terminal_set_bold_is_bright;
	void function(VteTerminal* terminal, double scale) c_vte_terminal_set_cell_height_scale;
	void function(VteTerminal* terminal, double scale) c_vte_terminal_set_cell_width_scale;
	void function(VteTerminal* terminal, int width) c_vte_terminal_set_cjk_ambiguous_width;
	void function(VteTerminal* terminal, int setting) c_vte_terminal_set_clear_background;
	void function(VteTerminal* terminal, GdkRGBA* background) c_vte_terminal_set_color_background;
	void function(VteTerminal* terminal, GdkRGBA* bold) c_vte_terminal_set_color_bold;
	void function(VteTerminal* terminal, GdkRGBA* cursorBackground) c_vte_terminal_set_color_cursor;
	void function(VteTerminal* terminal, GdkRGBA* cursorForeground) c_vte_terminal_set_color_cursor_foreground;
	void function(VteTerminal* terminal, GdkRGBA* foreground) c_vte_terminal_set_color_foreground;
	void function(VteTerminal* terminal, GdkRGBA* highlightBackground) c_vte_terminal_set_color_highlight;
	void function(VteTerminal* terminal, GdkRGBA* highlightForeground) c_vte_terminal_set_color_highlight_foreground;
	void function(VteTerminal* terminal, GdkRGBA* foreground, GdkRGBA* background, GdkRGBA* palette, size_t paletteSize) c_vte_terminal_set_colors;
	void function(VteTerminal* terminal, VteCursorBlinkMode mode) c_vte_terminal_set_cursor_blink_mode;
	void function(VteTerminal* terminal, VteCursorShape shape) c_vte_terminal_set_cursor_shape;
	void function(VteTerminal* terminal) c_vte_terminal_set_default_colors;
	void function(VteTerminal* terminal, VteEraseBinding binding) c_vte_terminal_set_delete_binding;
	int function(VteTerminal* terminal, const(char)* codeset, GError** err) c_vte_terminal_set_encoding;
	void function(VteTerminal* terminal, PangoFontDescription* fontDesc) c_vte_terminal_set_font;
	void function(VteTerminal* terminal, double scale) c_vte_terminal_set_font_scale;
	void function(VteTerminal* terminal, GtkWindow* window) c_vte_terminal_set_geometry_hints_for_window;
	void function(VteTerminal* terminal, int enabled) c_vte_terminal_set_input_enabled;
	void function(VteTerminal* terminal, int setting) c_vte_terminal_set_mouse_autohide;
	void function(VteTerminal* terminal, VtePty* pty) c_vte_terminal_set_pty;
	void function(VteTerminal* terminal, int rewrap) c_vte_terminal_set_rewrap_on_resize;
	void function(VteTerminal* terminal, int scroll) c_vte_terminal_set_scroll_on_keystroke;
	void function(VteTerminal* terminal, int scroll) c_vte_terminal_set_scroll_on_output;
	void function(VteTerminal* terminal, glong lines) c_vte_terminal_set_scrollback_lines;
	void function(VteTerminal* terminal, glong columns, glong rows) c_vte_terminal_set_size;
	void function(VteTerminal* terminal, VteTextBlinkMode textBlinkMode) c_vte_terminal_set_text_blink_mode;
	void function(VteTerminal* terminal, const(char)* exceptions) c_vte_terminal_set_word_char_exceptions;
	void function(VteTerminal* terminal, VtePtyFlags ptyFlags, const(char)* workingDirectory, char** argv, char** envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GDestroyNotify childSetupDataDestroy, int timeout, GCancellable* cancellable, VteTerminalSpawnAsyncCallback callback, void* userData) c_vte_terminal_spawn_async;
	int function(VteTerminal* terminal, VtePtyFlags ptyFlags, const(char)* workingDirectory, char** argv, char** envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GPid* childPid, GCancellable* cancellable, GError** err) c_vte_terminal_spawn_sync;
	void function(VteTerminal* terminal) c_vte_terminal_unselect_all;
	void function(VteTerminal* terminal, GPid childPid) c_vte_terminal_watch_child;
	int function(VteTerminal* terminal, GOutputStream* stream, VteWriteFlags flags, GCancellable* cancellable, GError** err) c_vte_terminal_write_contents_sync;
	char* function() c_vte_get_user_shell;

	// vte.Version

	const(char)* function() c_vte_get_features;
	uint function() c_vte_get_major_version;
	uint function() c_vte_get_micro_version;
	uint function() c_vte_get_minor_version;
}


// vte.Pty

alias c_vte_pty_get_type vte_pty_get_type;
alias c_vte_pty_new_foreign_sync vte_pty_new_foreign_sync;
alias c_vte_pty_new_sync vte_pty_new_sync;
alias c_vte_pty_child_setup vte_pty_child_setup;
alias c_vte_pty_close vte_pty_close;
alias c_vte_pty_get_fd vte_pty_get_fd;
alias c_vte_pty_get_size vte_pty_get_size;
alias c_vte_pty_set_size vte_pty_set_size;
alias c_vte_pty_set_utf8 vte_pty_set_utf8;
alias c_vte_pty_spawn_async vte_pty_spawn_async;
alias c_vte_pty_spawn_finish vte_pty_spawn_finish;

// vte.Regex

alias c_vte_regex_get_type vte_regex_get_type;
alias c_vte_regex_new_for_match vte_regex_new_for_match;
alias c_vte_regex_new_for_search vte_regex_new_for_search;
alias c_vte_regex_jit vte_regex_jit;
alias c_vte_regex_ref vte_regex_ref;
alias c_vte_regex_unref vte_regex_unref;

// vte.Terminal

alias c_vte_terminal_get_type vte_terminal_get_type;
alias c_vte_terminal_new vte_terminal_new;
alias c_vte_terminal_copy_clipboard vte_terminal_copy_clipboard;
alias c_vte_terminal_copy_clipboard_format vte_terminal_copy_clipboard_format;
alias c_vte_terminal_copy_primary vte_terminal_copy_primary;
alias c_vte_terminal_event_check_gregex_simple vte_terminal_event_check_gregex_simple;
alias c_vte_terminal_event_check_regex_simple vte_terminal_event_check_regex_simple;
alias c_vte_terminal_feed vte_terminal_feed;
alias c_vte_terminal_feed_child vte_terminal_feed_child;
alias c_vte_terminal_feed_child_binary vte_terminal_feed_child_binary;
alias c_vte_terminal_get_allow_bold vte_terminal_get_allow_bold;
alias c_vte_terminal_get_allow_hyperlink vte_terminal_get_allow_hyperlink;
alias c_vte_terminal_get_audible_bell vte_terminal_get_audible_bell;
alias c_vte_terminal_get_bold_is_bright vte_terminal_get_bold_is_bright;
alias c_vte_terminal_get_cell_height_scale vte_terminal_get_cell_height_scale;
alias c_vte_terminal_get_cell_width_scale vte_terminal_get_cell_width_scale;
alias c_vte_terminal_get_char_height vte_terminal_get_char_height;
alias c_vte_terminal_get_char_width vte_terminal_get_char_width;
alias c_vte_terminal_get_cjk_ambiguous_width vte_terminal_get_cjk_ambiguous_width;
alias c_vte_terminal_get_column_count vte_terminal_get_column_count;
alias c_vte_terminal_get_current_directory_uri vte_terminal_get_current_directory_uri;
alias c_vte_terminal_get_current_file_uri vte_terminal_get_current_file_uri;
alias c_vte_terminal_get_cursor_blink_mode vte_terminal_get_cursor_blink_mode;
alias c_vte_terminal_get_cursor_position vte_terminal_get_cursor_position;
alias c_vte_terminal_get_cursor_shape vte_terminal_get_cursor_shape;
alias c_vte_terminal_get_encoding vte_terminal_get_encoding;
alias c_vte_terminal_get_font vte_terminal_get_font;
alias c_vte_terminal_get_font_scale vte_terminal_get_font_scale;
alias c_vte_terminal_get_geometry_hints vte_terminal_get_geometry_hints;
alias c_vte_terminal_get_has_selection vte_terminal_get_has_selection;
alias c_vte_terminal_get_icon_title vte_terminal_get_icon_title;
alias c_vte_terminal_get_input_enabled vte_terminal_get_input_enabled;
alias c_vte_terminal_get_mouse_autohide vte_terminal_get_mouse_autohide;
alias c_vte_terminal_get_pty vte_terminal_get_pty;
alias c_vte_terminal_get_rewrap_on_resize vte_terminal_get_rewrap_on_resize;
alias c_vte_terminal_get_row_count vte_terminal_get_row_count;
alias c_vte_terminal_get_scroll_on_keystroke vte_terminal_get_scroll_on_keystroke;
alias c_vte_terminal_get_scroll_on_output vte_terminal_get_scroll_on_output;
alias c_vte_terminal_get_scrollback_lines vte_terminal_get_scrollback_lines;
alias c_vte_terminal_get_text vte_terminal_get_text;
alias c_vte_terminal_get_text_blink_mode vte_terminal_get_text_blink_mode;
alias c_vte_terminal_get_text_include_trailing_spaces vte_terminal_get_text_include_trailing_spaces;
alias c_vte_terminal_get_text_range vte_terminal_get_text_range;
alias c_vte_terminal_get_window_title vte_terminal_get_window_title;
alias c_vte_terminal_get_word_char_exceptions vte_terminal_get_word_char_exceptions;
alias c_vte_terminal_hyperlink_check_event vte_terminal_hyperlink_check_event;
alias c_vte_terminal_match_add_gregex vte_terminal_match_add_gregex;
alias c_vte_terminal_match_add_regex vte_terminal_match_add_regex;
alias c_vte_terminal_match_check vte_terminal_match_check;
alias c_vte_terminal_match_check_event vte_terminal_match_check_event;
alias c_vte_terminal_match_remove vte_terminal_match_remove;
alias c_vte_terminal_match_remove_all vte_terminal_match_remove_all;
alias c_vte_terminal_match_set_cursor vte_terminal_match_set_cursor;
alias c_vte_terminal_match_set_cursor_name vte_terminal_match_set_cursor_name;
alias c_vte_terminal_match_set_cursor_type vte_terminal_match_set_cursor_type;
alias c_vte_terminal_paste_clipboard vte_terminal_paste_clipboard;
alias c_vte_terminal_paste_primary vte_terminal_paste_primary;
alias c_vte_terminal_pty_new_sync vte_terminal_pty_new_sync;
alias c_vte_terminal_reset vte_terminal_reset;
alias c_vte_terminal_search_find_next vte_terminal_search_find_next;
alias c_vte_terminal_search_find_previous vte_terminal_search_find_previous;
alias c_vte_terminal_search_get_gregex vte_terminal_search_get_gregex;
alias c_vte_terminal_search_get_regex vte_terminal_search_get_regex;
alias c_vte_terminal_search_get_wrap_around vte_terminal_search_get_wrap_around;
alias c_vte_terminal_search_set_gregex vte_terminal_search_set_gregex;
alias c_vte_terminal_search_set_regex vte_terminal_search_set_regex;
alias c_vte_terminal_search_set_wrap_around vte_terminal_search_set_wrap_around;
alias c_vte_terminal_select_all vte_terminal_select_all;
alias c_vte_terminal_set_allow_bold vte_terminal_set_allow_bold;
alias c_vte_terminal_set_allow_hyperlink vte_terminal_set_allow_hyperlink;
alias c_vte_terminal_set_audible_bell vte_terminal_set_audible_bell;
alias c_vte_terminal_set_backspace_binding vte_terminal_set_backspace_binding;
alias c_vte_terminal_set_bold_is_bright vte_terminal_set_bold_is_bright;
alias c_vte_terminal_set_cell_height_scale vte_terminal_set_cell_height_scale;
alias c_vte_terminal_set_cell_width_scale vte_terminal_set_cell_width_scale;
alias c_vte_terminal_set_cjk_ambiguous_width vte_terminal_set_cjk_ambiguous_width;
alias c_vte_terminal_set_clear_background vte_terminal_set_clear_background;
alias c_vte_terminal_set_color_background vte_terminal_set_color_background;
alias c_vte_terminal_set_color_bold vte_terminal_set_color_bold;
alias c_vte_terminal_set_color_cursor vte_terminal_set_color_cursor;
alias c_vte_terminal_set_color_cursor_foreground vte_terminal_set_color_cursor_foreground;
alias c_vte_terminal_set_color_foreground vte_terminal_set_color_foreground;
alias c_vte_terminal_set_color_highlight vte_terminal_set_color_highlight;
alias c_vte_terminal_set_color_highlight_foreground vte_terminal_set_color_highlight_foreground;
alias c_vte_terminal_set_colors vte_terminal_set_colors;
alias c_vte_terminal_set_cursor_blink_mode vte_terminal_set_cursor_blink_mode;
alias c_vte_terminal_set_cursor_shape vte_terminal_set_cursor_shape;
alias c_vte_terminal_set_default_colors vte_terminal_set_default_colors;
alias c_vte_terminal_set_delete_binding vte_terminal_set_delete_binding;
alias c_vte_terminal_set_encoding vte_terminal_set_encoding;
alias c_vte_terminal_set_font vte_terminal_set_font;
alias c_vte_terminal_set_font_scale vte_terminal_set_font_scale;
alias c_vte_terminal_set_geometry_hints_for_window vte_terminal_set_geometry_hints_for_window;
alias c_vte_terminal_set_input_enabled vte_terminal_set_input_enabled;
alias c_vte_terminal_set_mouse_autohide vte_terminal_set_mouse_autohide;
alias c_vte_terminal_set_pty vte_terminal_set_pty;
alias c_vte_terminal_set_rewrap_on_resize vte_terminal_set_rewrap_on_resize;
alias c_vte_terminal_set_scroll_on_keystroke vte_terminal_set_scroll_on_keystroke;
alias c_vte_terminal_set_scroll_on_output vte_terminal_set_scroll_on_output;
alias c_vte_terminal_set_scrollback_lines vte_terminal_set_scrollback_lines;
alias c_vte_terminal_set_size vte_terminal_set_size;
alias c_vte_terminal_set_text_blink_mode vte_terminal_set_text_blink_mode;
alias c_vte_terminal_set_word_char_exceptions vte_terminal_set_word_char_exceptions;
alias c_vte_terminal_spawn_async vte_terminal_spawn_async;
alias c_vte_terminal_spawn_sync vte_terminal_spawn_sync;
alias c_vte_terminal_unselect_all vte_terminal_unselect_all;
alias c_vte_terminal_watch_child vte_terminal_watch_child;
alias c_vte_terminal_write_contents_sync vte_terminal_write_contents_sync;
alias c_vte_get_user_shell vte_get_user_shell;

// vte.Version

alias c_vte_get_features vte_get_features;
alias c_vte_get_major_version vte_get_major_version;
alias c_vte_get_micro_version vte_get_micro_version;
alias c_vte_get_minor_version vte_get_minor_version;
