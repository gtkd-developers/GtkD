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


module vtec.vte;

import std.stdio;
import vtec.vtetypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// vte.Pty

	Linker.link(vte_pty_get_type, "vte_pty_get_type", LIBRARY.VTE);
	Linker.link(vte_pty_new_foreign_sync, "vte_pty_new_foreign_sync", LIBRARY.VTE);
	Linker.link(vte_pty_new_sync, "vte_pty_new_sync", LIBRARY.VTE);
	Linker.link(vte_pty_child_setup, "vte_pty_child_setup", LIBRARY.VTE);
	Linker.link(vte_pty_close, "vte_pty_close", LIBRARY.VTE);
	Linker.link(vte_pty_get_fd, "vte_pty_get_fd", LIBRARY.VTE);
	Linker.link(vte_pty_get_size, "vte_pty_get_size", LIBRARY.VTE);
	Linker.link(vte_pty_set_size, "vte_pty_set_size", LIBRARY.VTE);
	Linker.link(vte_pty_set_utf8, "vte_pty_set_utf8", LIBRARY.VTE);

	// vte.Terminal

	Linker.link(vte_terminal_get_type, "vte_terminal_get_type", LIBRARY.VTE);
	Linker.link(vte_terminal_new, "vte_terminal_new", LIBRARY.VTE);
	Linker.link(vte_terminal_copy_clipboard, "vte_terminal_copy_clipboard", LIBRARY.VTE);
	Linker.link(vte_terminal_copy_primary, "vte_terminal_copy_primary", LIBRARY.VTE);
	Linker.link(vte_terminal_event_check_gregex_simple, "vte_terminal_event_check_gregex_simple", LIBRARY.VTE);
	Linker.link(vte_terminal_feed, "vte_terminal_feed", LIBRARY.VTE);
	Linker.link(vte_terminal_feed_child, "vte_terminal_feed_child", LIBRARY.VTE);
	Linker.link(vte_terminal_feed_child_binary, "vte_terminal_feed_child_binary", LIBRARY.VTE);
	Linker.link(vte_terminal_get_allow_bold, "vte_terminal_get_allow_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_get_audible_bell, "vte_terminal_get_audible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_height, "vte_terminal_get_char_height", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_width, "vte_terminal_get_char_width", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cjk_ambiguous_width, "vte_terminal_get_cjk_ambiguous_width", LIBRARY.VTE);
	Linker.link(vte_terminal_get_column_count, "vte_terminal_get_column_count", LIBRARY.VTE);
	Linker.link(vte_terminal_get_current_directory_uri, "vte_terminal_get_current_directory_uri", LIBRARY.VTE);
	Linker.link(vte_terminal_get_current_file_uri, "vte_terminal_get_current_file_uri", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_blink_mode, "vte_terminal_get_cursor_blink_mode", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_position, "vte_terminal_get_cursor_position", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_shape, "vte_terminal_get_cursor_shape", LIBRARY.VTE);
	Linker.link(vte_terminal_get_encoding, "vte_terminal_get_encoding", LIBRARY.VTE);
	Linker.link(vte_terminal_get_font, "vte_terminal_get_font", LIBRARY.VTE);
	Linker.link(vte_terminal_get_font_scale, "vte_terminal_get_font_scale", LIBRARY.VTE);
	Linker.link(vte_terminal_get_geometry_hints, "vte_terminal_get_geometry_hints", LIBRARY.VTE);
	Linker.link(vte_terminal_get_has_selection, "vte_terminal_get_has_selection", LIBRARY.VTE);
	Linker.link(vte_terminal_get_icon_title, "vte_terminal_get_icon_title", LIBRARY.VTE);
	Linker.link(vte_terminal_get_input_enabled, "vte_terminal_get_input_enabled", LIBRARY.VTE);
	Linker.link(vte_terminal_get_mouse_autohide, "vte_terminal_get_mouse_autohide", LIBRARY.VTE);
	Linker.link(vte_terminal_get_pty, "vte_terminal_get_pty", LIBRARY.VTE);
	Linker.link(vte_terminal_get_rewrap_on_resize, "vte_terminal_get_rewrap_on_resize", LIBRARY.VTE);
	Linker.link(vte_terminal_get_row_count, "vte_terminal_get_row_count", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text, "vte_terminal_get_text", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text_include_trailing_spaces, "vte_terminal_get_text_include_trailing_spaces", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text_range, "vte_terminal_get_text_range", LIBRARY.VTE);
	Linker.link(vte_terminal_get_window_title, "vte_terminal_get_window_title", LIBRARY.VTE);
	Linker.link(vte_terminal_get_word_char_exceptions, "vte_terminal_get_word_char_exceptions", LIBRARY.VTE);
	Linker.link(vte_terminal_match_add_gregex, "vte_terminal_match_add_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_match_check, "vte_terminal_match_check", LIBRARY.VTE);
	Linker.link(vte_terminal_match_check_event, "vte_terminal_match_check_event", LIBRARY.VTE);
	Linker.link(vte_terminal_match_remove, "vte_terminal_match_remove", LIBRARY.VTE);
	Linker.link(vte_terminal_match_remove_all, "vte_terminal_match_remove_all", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor, "vte_terminal_match_set_cursor", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor_name, "vte_terminal_match_set_cursor_name", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor_type, "vte_terminal_match_set_cursor_type", LIBRARY.VTE);
	Linker.link(vte_terminal_paste_clipboard, "vte_terminal_paste_clipboard", LIBRARY.VTE);
	Linker.link(vte_terminal_paste_primary, "vte_terminal_paste_primary", LIBRARY.VTE);
	Linker.link(vte_terminal_pty_new_sync, "vte_terminal_pty_new_sync", LIBRARY.VTE);
	Linker.link(vte_terminal_reset, "vte_terminal_reset", LIBRARY.VTE);
	Linker.link(vte_terminal_search_find_next, "vte_terminal_search_find_next", LIBRARY.VTE);
	Linker.link(vte_terminal_search_find_previous, "vte_terminal_search_find_previous", LIBRARY.VTE);
	Linker.link(vte_terminal_search_get_gregex, "vte_terminal_search_get_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_search_get_wrap_around, "vte_terminal_search_get_wrap_around", LIBRARY.VTE);
	Linker.link(vte_terminal_search_set_gregex, "vte_terminal_search_set_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_search_set_wrap_around, "vte_terminal_search_set_wrap_around", LIBRARY.VTE);
	Linker.link(vte_terminal_select_all, "vte_terminal_select_all", LIBRARY.VTE);
	Linker.link(vte_terminal_set_allow_bold, "vte_terminal_set_allow_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_set_audible_bell, "vte_terminal_set_audible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_set_backspace_binding, "vte_terminal_set_backspace_binding", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cjk_ambiguous_width, "vte_terminal_set_cjk_ambiguous_width", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_background, "vte_terminal_set_color_background", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_bold, "vte_terminal_set_color_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_cursor, "vte_terminal_set_color_cursor", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_cursor_foreground, "vte_terminal_set_color_cursor_foreground", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_foreground, "vte_terminal_set_color_foreground", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_highlight, "vte_terminal_set_color_highlight", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_highlight_foreground, "vte_terminal_set_color_highlight_foreground", LIBRARY.VTE);
	Linker.link(vte_terminal_set_colors, "vte_terminal_set_colors", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cursor_blink_mode, "vte_terminal_set_cursor_blink_mode", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cursor_shape, "vte_terminal_set_cursor_shape", LIBRARY.VTE);
	Linker.link(vte_terminal_set_default_colors, "vte_terminal_set_default_colors", LIBRARY.VTE);
	Linker.link(vte_terminal_set_delete_binding, "vte_terminal_set_delete_binding", LIBRARY.VTE);
	Linker.link(vte_terminal_set_encoding, "vte_terminal_set_encoding", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font, "vte_terminal_set_font", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font_scale, "vte_terminal_set_font_scale", LIBRARY.VTE);
	Linker.link(vte_terminal_set_geometry_hints_for_window, "vte_terminal_set_geometry_hints_for_window", LIBRARY.VTE);
	Linker.link(vte_terminal_set_input_enabled, "vte_terminal_set_input_enabled", LIBRARY.VTE);
	Linker.link(vte_terminal_set_mouse_autohide, "vte_terminal_set_mouse_autohide", LIBRARY.VTE);
	Linker.link(vte_terminal_set_pty, "vte_terminal_set_pty", LIBRARY.VTE);
	Linker.link(vte_terminal_set_rewrap_on_resize, "vte_terminal_set_rewrap_on_resize", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scroll_on_keystroke, "vte_terminal_set_scroll_on_keystroke", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scroll_on_output, "vte_terminal_set_scroll_on_output", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scrollback_lines, "vte_terminal_set_scrollback_lines", LIBRARY.VTE);
	Linker.link(vte_terminal_set_size, "vte_terminal_set_size", LIBRARY.VTE);
	Linker.link(vte_terminal_set_word_char_exceptions, "vte_terminal_set_word_char_exceptions", LIBRARY.VTE);
	Linker.link(vte_terminal_spawn_sync, "vte_terminal_spawn_sync", LIBRARY.VTE);
	Linker.link(vte_terminal_unselect_all, "vte_terminal_unselect_all", LIBRARY.VTE);
	Linker.link(vte_terminal_watch_child, "vte_terminal_watch_child", LIBRARY.VTE);
	Linker.link(vte_terminal_write_contents_sync, "vte_terminal_write_contents_sync", LIBRARY.VTE);
	Linker.link(vte_get_user_shell, "vte_get_user_shell", LIBRARY.VTE);

	// vte.Version

	Linker.link(vte_get_features, "vte_get_features", LIBRARY.VTE);
	Linker.link(vte_get_major_version, "vte_get_major_version", LIBRARY.VTE);
	Linker.link(vte_get_micro_version, "vte_get_micro_version", LIBRARY.VTE);
	Linker.link(vte_get_minor_version, "vte_get_minor_version", LIBRARY.VTE);
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

	// vte.Terminal

	GType function() c_vte_terminal_get_type;
	GtkWidget* function() c_vte_terminal_new;
	void function(VteTerminal* terminal) c_vte_terminal_copy_clipboard;
	void function(VteTerminal* terminal) c_vte_terminal_copy_primary;
	int function(VteTerminal* terminal, GdkEvent* event, GRegex** regexes, size_t nRegexes, GRegexMatchFlags matchFlags, char** matches) c_vte_terminal_event_check_gregex_simple;
	void function(VteTerminal* terminal, char* data, ptrdiff_t length) c_vte_terminal_feed;
	void function(VteTerminal* terminal, const(char)* text, ptrdiff_t length) c_vte_terminal_feed_child;
	void function(VteTerminal* terminal, ubyte* data, size_t length) c_vte_terminal_feed_child_binary;
	int function(VteTerminal* terminal) c_vte_terminal_get_allow_bold;
	int function(VteTerminal* terminal) c_vte_terminal_get_audible_bell;
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
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text;
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_include_trailing_spaces;
	char* function(VteTerminal* terminal, glong startRow, glong startCol, glong endRow, glong endCol, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_range;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_window_title;
	const(char)* function(VteTerminal* terminal) c_vte_terminal_get_word_char_exceptions;
	int function(VteTerminal* terminal, GRegex* gregex, GRegexMatchFlags gflags) c_vte_terminal_match_add_gregex;
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
	int function(VteTerminal* terminal) c_vte_terminal_search_get_wrap_around;
	void function(VteTerminal* terminal, GRegex* gregex, GRegexMatchFlags gflags) c_vte_terminal_search_set_gregex;
	void function(VteTerminal* terminal, int wrapAround) c_vte_terminal_search_set_wrap_around;
	void function(VteTerminal* terminal) c_vte_terminal_select_all;
	void function(VteTerminal* terminal, int allowBold) c_vte_terminal_set_allow_bold;
	void function(VteTerminal* terminal, int isAudible) c_vte_terminal_set_audible_bell;
	void function(VteTerminal* terminal, VteEraseBinding binding) c_vte_terminal_set_backspace_binding;
	void function(VteTerminal* terminal, int width) c_vte_terminal_set_cjk_ambiguous_width;
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
	void function(VteTerminal* terminal, const(char)* exceptions) c_vte_terminal_set_word_char_exceptions;
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

// vte.Terminal

alias c_vte_terminal_get_type vte_terminal_get_type;
alias c_vte_terminal_new vte_terminal_new;
alias c_vte_terminal_copy_clipboard vte_terminal_copy_clipboard;
alias c_vte_terminal_copy_primary vte_terminal_copy_primary;
alias c_vte_terminal_event_check_gregex_simple vte_terminal_event_check_gregex_simple;
alias c_vte_terminal_feed vte_terminal_feed;
alias c_vte_terminal_feed_child vte_terminal_feed_child;
alias c_vte_terminal_feed_child_binary vte_terminal_feed_child_binary;
alias c_vte_terminal_get_allow_bold vte_terminal_get_allow_bold;
alias c_vte_terminal_get_audible_bell vte_terminal_get_audible_bell;
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
alias c_vte_terminal_get_text vte_terminal_get_text;
alias c_vte_terminal_get_text_include_trailing_spaces vte_terminal_get_text_include_trailing_spaces;
alias c_vte_terminal_get_text_range vte_terminal_get_text_range;
alias c_vte_terminal_get_window_title vte_terminal_get_window_title;
alias c_vte_terminal_get_word_char_exceptions vte_terminal_get_word_char_exceptions;
alias c_vte_terminal_match_add_gregex vte_terminal_match_add_gregex;
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
alias c_vte_terminal_search_get_wrap_around vte_terminal_search_get_wrap_around;
alias c_vte_terminal_search_set_gregex vte_terminal_search_set_gregex;
alias c_vte_terminal_search_set_wrap_around vte_terminal_search_set_wrap_around;
alias c_vte_terminal_select_all vte_terminal_select_all;
alias c_vte_terminal_set_allow_bold vte_terminal_set_allow_bold;
alias c_vte_terminal_set_audible_bell vte_terminal_set_audible_bell;
alias c_vte_terminal_set_backspace_binding vte_terminal_set_backspace_binding;
alias c_vte_terminal_set_cjk_ambiguous_width vte_terminal_set_cjk_ambiguous_width;
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
alias c_vte_terminal_set_word_char_exceptions vte_terminal_set_word_char_exceptions;
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
