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

private import std.stdio;
private import vtec.vtetypes;
private import gtkc.Loader;
private import gtkc.paths;

shared static this()
{
	// vte.Terminal

	Linker.link(vte_terminal_new, "vte_terminal_new", LIBRARY.VTE);
	Linker.link(vte_terminal_im_append_menuitems, "vte_terminal_im_append_menuitems", LIBRARY.VTE);
	Linker.link(vte_terminal_feed, "vte_terminal_feed", LIBRARY.VTE);
	Linker.link(vte_terminal_feed_child, "vte_terminal_feed_child", LIBRARY.VTE);
	Linker.link(vte_terminal_feed_child_binary, "vte_terminal_feed_child_binary", LIBRARY.VTE);
	Linker.link(vte_terminal_get_child_exit_status, "vte_terminal_get_child_exit_status", LIBRARY.VTE);
	Linker.link(vte_terminal_select_all, "vte_terminal_select_all", LIBRARY.VTE);
	Linker.link(vte_terminal_select_none, "vte_terminal_select_none", LIBRARY.VTE);
	Linker.link(vte_terminal_copy_clipboard, "vte_terminal_copy_clipboard", LIBRARY.VTE);
	Linker.link(vte_terminal_paste_clipboard, "vte_terminal_paste_clipboard", LIBRARY.VTE);
	Linker.link(vte_terminal_copy_primary, "vte_terminal_copy_primary", LIBRARY.VTE);
	Linker.link(vte_terminal_paste_primary, "vte_terminal_paste_primary", LIBRARY.VTE);
	Linker.link(vte_terminal_set_size, "vte_terminal_set_size", LIBRARY.VTE);
	Linker.link(vte_terminal_set_audible_bell, "vte_terminal_set_audible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_get_audible_bell, "vte_terminal_get_audible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_set_visible_bell, "vte_terminal_set_visible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_get_visible_bell, "vte_terminal_get_visible_bell", LIBRARY.VTE);
	Linker.link(vte_terminal_set_allow_bold, "vte_terminal_set_allow_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_get_allow_bold, "vte_terminal_get_allow_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scroll_on_output, "vte_terminal_set_scroll_on_output", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scroll_on_keystroke, "vte_terminal_set_scroll_on_keystroke", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_bold, "vte_terminal_set_color_bold", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_bold_rgba, "vte_terminal_set_color_bold_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_foreground, "vte_terminal_set_color_foreground", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_foreground_rgba, "vte_terminal_set_color_foreground_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_background, "vte_terminal_set_color_background", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_background_rgba, "vte_terminal_set_color_background_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_dim, "vte_terminal_set_color_dim", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_dim_rgba, "vte_terminal_set_color_dim_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_cursor, "vte_terminal_set_color_cursor", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_cursor_rgba, "vte_terminal_set_color_cursor_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_highlight, "vte_terminal_set_color_highlight", LIBRARY.VTE);
	Linker.link(vte_terminal_set_color_highlight_rgba, "vte_terminal_set_color_highlight_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_colors, "vte_terminal_set_colors", LIBRARY.VTE);
	Linker.link(vte_terminal_set_colors_rgba, "vte_terminal_set_colors_rgba", LIBRARY.VTE);
	Linker.link(vte_terminal_set_default_colors, "vte_terminal_set_default_colors", LIBRARY.VTE);
	Linker.link(vte_terminal_set_opacity, "vte_terminal_set_opacity", LIBRARY.VTE);
	Linker.link(vte_terminal_set_background_image, "vte_terminal_set_background_image", LIBRARY.VTE);
	Linker.link(vte_terminal_set_background_image_file, "vte_terminal_set_background_image_file", LIBRARY.VTE);
	Linker.link(vte_terminal_set_background_saturation, "vte_terminal_set_background_saturation", LIBRARY.VTE);
	Linker.link(vte_terminal_set_background_transparent, "vte_terminal_set_background_transparent", LIBRARY.VTE);
	Linker.link(vte_terminal_set_background_tint_color, "vte_terminal_set_background_tint_color", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scroll_background, "vte_terminal_set_scroll_background", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cursor_shape, "vte_terminal_set_cursor_shape", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_shape, "vte_terminal_get_cursor_shape", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cursor_blinks, "vte_terminal_set_cursor_blinks", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_blink_mode, "vte_terminal_get_cursor_blink_mode", LIBRARY.VTE);
	Linker.link(vte_terminal_set_cursor_blink_mode, "vte_terminal_set_cursor_blink_mode", LIBRARY.VTE);
	Linker.link(vte_terminal_set_scrollback_lines, "vte_terminal_set_scrollback_lines", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font, "vte_terminal_set_font", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font_from_string, "vte_terminal_set_font_from_string", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font_from_string_full, "vte_terminal_set_font_from_string_full", LIBRARY.VTE);
	Linker.link(vte_terminal_set_font_full, "vte_terminal_set_font_full", LIBRARY.VTE);
	Linker.link(vte_terminal_get_font, "vte_terminal_get_font", LIBRARY.VTE);
	Linker.link(vte_terminal_get_using_xft, "vte_terminal_get_using_xft", LIBRARY.VTE);
	Linker.link(vte_terminal_get_has_selection, "vte_terminal_get_has_selection", LIBRARY.VTE);
	Linker.link(vte_terminal_set_word_chars, "vte_terminal_set_word_chars", LIBRARY.VTE);
	Linker.link(vte_terminal_is_word_char, "vte_terminal_is_word_char", LIBRARY.VTE);
	Linker.link(vte_terminal_set_backspace_binding, "vte_terminal_set_backspace_binding", LIBRARY.VTE);
	Linker.link(vte_terminal_set_delete_binding, "vte_terminal_set_delete_binding", LIBRARY.VTE);
	Linker.link(vte_terminal_set_mouse_autohide, "vte_terminal_set_mouse_autohide", LIBRARY.VTE);
	Linker.link(vte_terminal_get_mouse_autohide, "vte_terminal_get_mouse_autohide", LIBRARY.VTE);
	Linker.link(vte_terminal_reset, "vte_terminal_reset", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text, "vte_terminal_get_text", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text_include_trailing_spaces, "vte_terminal_get_text_include_trailing_spaces", LIBRARY.VTE);
	Linker.link(vte_terminal_get_text_range, "vte_terminal_get_text_range", LIBRARY.VTE);
	Linker.link(vte_terminal_get_cursor_position, "vte_terminal_get_cursor_position", LIBRARY.VTE);
	Linker.link(vte_terminal_match_clear_all, "vte_terminal_match_clear_all", LIBRARY.VTE);
	Linker.link(vte_terminal_match_add, "vte_terminal_match_add", LIBRARY.VTE);
	Linker.link(vte_terminal_match_add_gregex, "vte_terminal_match_add_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_match_remove, "vte_terminal_match_remove", LIBRARY.VTE);
	Linker.link(vte_terminal_match_check, "vte_terminal_match_check", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor, "vte_terminal_match_set_cursor", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor_type, "vte_terminal_match_set_cursor_type", LIBRARY.VTE);
	Linker.link(vte_terminal_match_set_cursor_name, "vte_terminal_match_set_cursor_name", LIBRARY.VTE);
	Linker.link(vte_terminal_set_emulation, "vte_terminal_set_emulation", LIBRARY.VTE);
	Linker.link(vte_terminal_get_emulation, "vte_terminal_get_emulation", LIBRARY.VTE);
	Linker.link(vte_terminal_get_default_emulation, "vte_terminal_get_default_emulation", LIBRARY.VTE);
	Linker.link(vte_terminal_set_encoding, "vte_terminal_set_encoding", LIBRARY.VTE);
	Linker.link(vte_terminal_get_encoding, "vte_terminal_get_encoding", LIBRARY.VTE);
	Linker.link(vte_terminal_get_status_line, "vte_terminal_get_status_line", LIBRARY.VTE);
	Linker.link(vte_terminal_get_padding, "vte_terminal_get_padding", LIBRARY.VTE);
	Linker.link(vte_terminal_write_contents, "vte_terminal_write_contents", LIBRARY.VTE);
	Linker.link(vte_terminal_search_find_next, "vte_terminal_search_find_next", LIBRARY.VTE);
	Linker.link(vte_terminal_search_find_previous, "vte_terminal_search_find_previous", LIBRARY.VTE);
	Linker.link(vte_terminal_search_get_gregex, "vte_terminal_search_get_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_search_get_wrap_around, "vte_terminal_search_get_wrap_around", LIBRARY.VTE);
	Linker.link(vte_terminal_search_set_gregex, "vte_terminal_search_set_gregex", LIBRARY.VTE);
	Linker.link(vte_terminal_search_set_wrap_around, "vte_terminal_search_set_wrap_around", LIBRARY.VTE);
	Linker.link(vte_get_user_shell, "vte_get_user_shell", LIBRARY.VTE);
	Linker.link(vte_terminal_fork_command, "vte_terminal_fork_command", LIBRARY.VTE);
	Linker.link(vte_terminal_fork_command_full, "vte_terminal_fork_command_full", LIBRARY.VTE);
	Linker.link(vte_terminal_forkpty, "vte_terminal_forkpty", LIBRARY.VTE);
	Linker.link(vte_terminal_get_pty, "vte_terminal_get_pty", LIBRARY.VTE);
	Linker.link(vte_terminal_get_pty_object, "vte_terminal_get_pty_object", LIBRARY.VTE);
	Linker.link(vte_terminal_pty_new, "vte_terminal_pty_new", LIBRARY.VTE);
	Linker.link(vte_terminal_set_pty, "vte_terminal_set_pty", LIBRARY.VTE);
	Linker.link(vte_terminal_set_pty_object, "vte_terminal_set_pty_object", LIBRARY.VTE);
	Linker.link(vte_terminal_watch_child, "vte_terminal_watch_child", LIBRARY.VTE);
	Linker.link(vte_terminal_get_adjustment, "vte_terminal_get_adjustment", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_ascent, "vte_terminal_get_char_ascent", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_descent, "vte_terminal_get_char_descent", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_height, "vte_terminal_get_char_height", LIBRARY.VTE);
	Linker.link(vte_terminal_get_char_width, "vte_terminal_get_char_width", LIBRARY.VTE);
	Linker.link(vte_terminal_get_column_count, "vte_terminal_get_column_count", LIBRARY.VTE);
	Linker.link(vte_terminal_get_icon_title, "vte_terminal_get_icon_title", LIBRARY.VTE);
	Linker.link(vte_terminal_get_row_count, "vte_terminal_get_row_count", LIBRARY.VTE);
	Linker.link(vte_terminal_get_window_title, "vte_terminal_get_window_title", LIBRARY.VTE);
	Linker.link(vte_terminal_get_current_directory_uri, "vte_terminal_get_current_directory_uri", LIBRARY.VTE);
	Linker.link(vte_terminal_get_current_file_uri, "vte_terminal_get_current_file_uri", LIBRARY.VTE);

	// vte.Pty

	Linker.link(vte_pty_new, "vte_pty_new", LIBRARY.VTE);
	Linker.link(vte_pty_new_foreign, "vte_pty_new_foreign", LIBRARY.VTE);
	Linker.link(vte_pty_close, "vte_pty_close", LIBRARY.VTE);
	Linker.link(vte_pty_child_setup, "vte_pty_child_setup", LIBRARY.VTE);
	Linker.link(vte_pty_get_fd, "vte_pty_get_fd", LIBRARY.VTE);
	Linker.link(vte_pty_set_size, "vte_pty_set_size", LIBRARY.VTE);
	Linker.link(vte_pty_get_size, "vte_pty_get_size", LIBRARY.VTE);
	Linker.link(vte_pty_set_term, "vte_pty_set_term", LIBRARY.VTE);
	Linker.link(vte_pty_set_utf8, "vte_pty_set_utf8", LIBRARY.VTE);
}

__gshared extern(C)
{
	// vte.Terminal

	GtkWidget* function() c_vte_terminal_new;
	void function(VteTerminal* terminal, GtkMenuShell* menushell) c_vte_terminal_im_append_menuitems;
	void function(VteTerminal* terminal, char* data, glong length) c_vte_terminal_feed;
	void function(VteTerminal* terminal, char* text, glong length) c_vte_terminal_feed_child;
	void function(VteTerminal* terminal, char* data, glong length) c_vte_terminal_feed_child_binary;
	int function(VteTerminal* terminal) c_vte_terminal_get_child_exit_status;
	void function(VteTerminal* terminal) c_vte_terminal_select_all;
	void function(VteTerminal* terminal) c_vte_terminal_select_none;
	void function(VteTerminal* terminal) c_vte_terminal_copy_clipboard;
	void function(VteTerminal* terminal) c_vte_terminal_paste_clipboard;
	void function(VteTerminal* terminal) c_vte_terminal_copy_primary;
	void function(VteTerminal* terminal) c_vte_terminal_paste_primary;
	void function(VteTerminal* terminal, glong columns, glong rows) c_vte_terminal_set_size;
	void function(VteTerminal* terminal, gboolean isAudible) c_vte_terminal_set_audible_bell;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_audible_bell;
	void function(VteTerminal* terminal, gboolean isVisible) c_vte_terminal_set_visible_bell;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_visible_bell;
	void function(VteTerminal* terminal, gboolean allowBold) c_vte_terminal_set_allow_bold;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_allow_bold;
	void function(VteTerminal* terminal, gboolean scroll) c_vte_terminal_set_scroll_on_output;
	void function(VteTerminal* terminal, gboolean scroll) c_vte_terminal_set_scroll_on_keystroke;
	void function(VteTerminal* terminal, GdkColor* bold) c_vte_terminal_set_color_bold;
	void function(VteTerminal* terminal, GdkRGBA* bold) c_vte_terminal_set_color_bold_rgba;
	void function(VteTerminal* terminal, GdkColor* foreground) c_vte_terminal_set_color_foreground;
	void function(VteTerminal* terminal, GdkRGBA* foreground) c_vte_terminal_set_color_foreground_rgba;
	void function(VteTerminal* terminal, GdkColor* background) c_vte_terminal_set_color_background;
	void function(VteTerminal* terminal, GdkRGBA* background) c_vte_terminal_set_color_background_rgba;
	void function(VteTerminal* terminal, GdkColor* dim) c_vte_terminal_set_color_dim;
	void function(VteTerminal* terminal, GdkRGBA* dim) c_vte_terminal_set_color_dim_rgba;
	void function(VteTerminal* terminal, GdkColor* cursorBackground) c_vte_terminal_set_color_cursor;
	void function(VteTerminal* terminal, GdkRGBA* cursorBackground) c_vte_terminal_set_color_cursor_rgba;
	void function(VteTerminal* terminal, GdkColor* highlightBackground) c_vte_terminal_set_color_highlight;
	void function(VteTerminal* terminal, GdkRGBA* highlightBackground) c_vte_terminal_set_color_highlight_rgba;
	void function(VteTerminal* terminal, GdkColor* foreground, GdkColor* background, GdkColor* palette, glong paletteSize) c_vte_terminal_set_colors;
	void function(VteTerminal* terminal, GdkRGBA* foreground, GdkRGBA* background, GdkRGBA* palette, gsize paletteSize) c_vte_terminal_set_colors_rgba;
	void function(VteTerminal* terminal) c_vte_terminal_set_default_colors;
	void function(VteTerminal* terminal, guint16 opacity) c_vte_terminal_set_opacity;
	void function(VteTerminal* terminal, GdkPixbuf* image) c_vte_terminal_set_background_image;
	void function(VteTerminal* terminal, char* path) c_vte_terminal_set_background_image_file;
	void function(VteTerminal* terminal, double saturation) c_vte_terminal_set_background_saturation;
	void function(VteTerminal* terminal, gboolean transparent) c_vte_terminal_set_background_transparent;
	void function(VteTerminal* terminal, GdkColor* color) c_vte_terminal_set_background_tint_color;
	void function(VteTerminal* terminal, gboolean scroll) c_vte_terminal_set_scroll_background;
	void function(VteTerminal* terminal, VteTerminalCursorShape shape) c_vte_terminal_set_cursor_shape;
	VteTerminalCursorShape function(VteTerminal* terminal) c_vte_terminal_get_cursor_shape;
	void function(VteTerminal* terminal, gboolean blink) c_vte_terminal_set_cursor_blinks;
	VteTerminalCursorBlinkMode function(VteTerminal* terminal) c_vte_terminal_get_cursor_blink_mode;
	void function(VteTerminal* terminal, VteTerminalCursorBlinkMode mode) c_vte_terminal_set_cursor_blink_mode;
	void function(VteTerminal* terminal, glong lines) c_vte_terminal_set_scrollback_lines;
	void function(VteTerminal* terminal, PangoFontDescription* fontDesc) c_vte_terminal_set_font;
	void function(VteTerminal* terminal, char* name) c_vte_terminal_set_font_from_string;
	void function(VteTerminal* terminal, char* name, VteTerminalAntiAlias antialias) c_vte_terminal_set_font_from_string_full;
	void function(VteTerminal* terminal, PangoFontDescription* fontDesc, VteTerminalAntiAlias antialias) c_vte_terminal_set_font_full;
	PangoFontDescription* function(VteTerminal* terminal) c_vte_terminal_get_font;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_using_xft;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_has_selection;
	void function(VteTerminal* terminal, char* spec) c_vte_terminal_set_word_chars;
	gboolean function(VteTerminal* terminal, gunichar c) c_vte_terminal_is_word_char;
	void function(VteTerminal* terminal, VteTerminalEraseBinding binding) c_vte_terminal_set_backspace_binding;
	void function(VteTerminal* terminal, VteTerminalEraseBinding binding) c_vte_terminal_set_delete_binding;
	void function(VteTerminal* terminal, gboolean setting) c_vte_terminal_set_mouse_autohide;
	gboolean function(VteTerminal* terminal) c_vte_terminal_get_mouse_autohide;
	void function(VteTerminal* terminal, gboolean clearTabstops, gboolean clearHistory) c_vte_terminal_reset;
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text;
	char* function(VteTerminal* terminal, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_include_trailing_spaces;
	char* function(VteTerminal* terminal, glong startRow, glong startCol, glong endRow, glong endCol, VteSelectionFunc isSelected, void* userData, GArray* attributes) c_vte_terminal_get_text_range;
	void function(VteTerminal* terminal, glong* column, glong* row) c_vte_terminal_get_cursor_position;
	void function(VteTerminal* terminal) c_vte_terminal_match_clear_all;
	int function(VteTerminal* terminal, char* match) c_vte_terminal_match_add;
	int function(VteTerminal* terminal, GRegex* regex, GRegexMatchFlags flags) c_vte_terminal_match_add_gregex;
	void function(VteTerminal* terminal, int tag) c_vte_terminal_match_remove;
	char* function(VteTerminal* terminal, glong column, glong row, int* tag) c_vte_terminal_match_check;
	void function(VteTerminal* terminal, int tag, GdkCursor* cursor) c_vte_terminal_match_set_cursor;
	void function(VteTerminal* terminal, int tag, GdkCursorType cursorType) c_vte_terminal_match_set_cursor_type;
	void function(VteTerminal* terminal, int tag, char* cursorName) c_vte_terminal_match_set_cursor_name;
	void function(VteTerminal* terminal, char* emulation) c_vte_terminal_set_emulation;
	char* function(VteTerminal* terminal) c_vte_terminal_get_emulation;
	char* function(VteTerminal* terminal) c_vte_terminal_get_default_emulation;
	void function(VteTerminal* terminal, char* codeset) c_vte_terminal_set_encoding;
	char* function(VteTerminal* terminal) c_vte_terminal_get_encoding;
	char* function(VteTerminal* terminal) c_vte_terminal_get_status_line;
	void function(VteTerminal* terminal, int* xpad, int* ypad) c_vte_terminal_get_padding;
	gboolean function(VteTerminal* terminal, GOutputStream* stream, VteTerminalWriteFlags flags, GCancellable* cancellable, GError** error) c_vte_terminal_write_contents;
	gboolean function(VteTerminal* terminal) c_vte_terminal_search_find_next;
	gboolean function(VteTerminal* terminal) c_vte_terminal_search_find_previous;
	GRegex* function(VteTerminal* terminal) c_vte_terminal_search_get_gregex;
	gboolean function(VteTerminal* terminal) c_vte_terminal_search_get_wrap_around;
	void function(VteTerminal* terminal, GRegex* regex) c_vte_terminal_search_set_gregex;
	void function(VteTerminal* terminal, gboolean wrapAround) c_vte_terminal_search_set_wrap_around;
	char* function() c_vte_get_user_shell;
	pid_t function(VteTerminal* terminal, char* command, char** argv, char** envv, char* workingDirectory, gboolean lastlog, gboolean utmp, gboolean wtmp) c_vte_terminal_fork_command;
	gboolean function(VteTerminal* terminal, VtePtyFlags ptyFlags, char* workingDirectory, char** argv, char** envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GPid* childPid, GError** error) c_vte_terminal_fork_command_full;
	pid_t function(VteTerminal* terminal, char** envv, char* workingDirectory, gboolean lastlog, gboolean utmp, gboolean wtmp) c_vte_terminal_forkpty;
	int function(VteTerminal* terminal) c_vte_terminal_get_pty;
	VtePty* function(VteTerminal* terminal) c_vte_terminal_get_pty_object;
	VtePty* function(VteTerminal* terminal, VtePtyFlags flags, GError** error) c_vte_terminal_pty_new;
	void function(VteTerminal* terminal, int ptyMaster) c_vte_terminal_set_pty;
	void function(VteTerminal* terminal, VtePty* pty) c_vte_terminal_set_pty_object;
	void function(VteTerminal* terminal, GPid childPid) c_vte_terminal_watch_child;
	GtkAdjustment* function(VteTerminal* terminal) c_vte_terminal_get_adjustment;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_ascent;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_descent;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_height;
	glong function(VteTerminal* terminal) c_vte_terminal_get_char_width;
	glong function(VteTerminal* terminal) c_vte_terminal_get_column_count;
	char* function(VteTerminal* terminal) c_vte_terminal_get_icon_title;
	glong function(VteTerminal* terminal) c_vte_terminal_get_row_count;
	char* function(VteTerminal* terminal) c_vte_terminal_get_window_title;
	char* function(VteTerminal* terminal) c_vte_terminal_get_current_directory_uri;
	char* function(VteTerminal* terminal) c_vte_terminal_get_current_file_uri;

	// vte.Pty

	VtePty* function(VtePtyFlags flags, GError** error) c_vte_pty_new;
	VtePty* function(int fd, GError** error) c_vte_pty_new_foreign;
	void function(VtePty* pty) c_vte_pty_close;
	void function(VtePty* pty) c_vte_pty_child_setup;
	int function(VtePty* pty) c_vte_pty_get_fd;
	gboolean function(VtePty* pty, int rows, int columns, GError** error) c_vte_pty_set_size;
	gboolean function(VtePty* pty, int* rows, int* columns, GError** error) c_vte_pty_get_size;
	void function(VtePty* pty, char* emulation) c_vte_pty_set_term;
	gboolean function(VtePty* pty, gboolean utf8, GError** error) c_vte_pty_set_utf8;
}

// vte.Terminal

alias c_vte_terminal_new  vte_terminal_new;
alias c_vte_terminal_im_append_menuitems  vte_terminal_im_append_menuitems;
alias c_vte_terminal_feed  vte_terminal_feed;
alias c_vte_terminal_feed_child  vte_terminal_feed_child;
alias c_vte_terminal_feed_child_binary  vte_terminal_feed_child_binary;
alias c_vte_terminal_get_child_exit_status  vte_terminal_get_child_exit_status;
alias c_vte_terminal_select_all  vte_terminal_select_all;
alias c_vte_terminal_select_none  vte_terminal_select_none;
alias c_vte_terminal_copy_clipboard  vte_terminal_copy_clipboard;
alias c_vte_terminal_paste_clipboard  vte_terminal_paste_clipboard;
alias c_vte_terminal_copy_primary  vte_terminal_copy_primary;
alias c_vte_terminal_paste_primary  vte_terminal_paste_primary;
alias c_vte_terminal_set_size  vte_terminal_set_size;
alias c_vte_terminal_set_audible_bell  vte_terminal_set_audible_bell;
alias c_vte_terminal_get_audible_bell  vte_terminal_get_audible_bell;
alias c_vte_terminal_set_visible_bell  vte_terminal_set_visible_bell;
alias c_vte_terminal_get_visible_bell  vte_terminal_get_visible_bell;
alias c_vte_terminal_set_allow_bold  vte_terminal_set_allow_bold;
alias c_vte_terminal_get_allow_bold  vte_terminal_get_allow_bold;
alias c_vte_terminal_set_scroll_on_output  vte_terminal_set_scroll_on_output;
alias c_vte_terminal_set_scroll_on_keystroke  vte_terminal_set_scroll_on_keystroke;
alias c_vte_terminal_set_color_bold  vte_terminal_set_color_bold;
alias c_vte_terminal_set_color_bold_rgba  vte_terminal_set_color_bold_rgba;
alias c_vte_terminal_set_color_foreground  vte_terminal_set_color_foreground;
alias c_vte_terminal_set_color_foreground_rgba  vte_terminal_set_color_foreground_rgba;
alias c_vte_terminal_set_color_background  vte_terminal_set_color_background;
alias c_vte_terminal_set_color_background_rgba  vte_terminal_set_color_background_rgba;
alias c_vte_terminal_set_color_dim  vte_terminal_set_color_dim;
alias c_vte_terminal_set_color_dim_rgba  vte_terminal_set_color_dim_rgba;
alias c_vte_terminal_set_color_cursor  vte_terminal_set_color_cursor;
alias c_vte_terminal_set_color_cursor_rgba  vte_terminal_set_color_cursor_rgba;
alias c_vte_terminal_set_color_highlight  vte_terminal_set_color_highlight;
alias c_vte_terminal_set_color_highlight_rgba  vte_terminal_set_color_highlight_rgba;
alias c_vte_terminal_set_colors  vte_terminal_set_colors;
alias c_vte_terminal_set_colors_rgba  vte_terminal_set_colors_rgba;
alias c_vte_terminal_set_default_colors  vte_terminal_set_default_colors;
alias c_vte_terminal_set_opacity  vte_terminal_set_opacity;
alias c_vte_terminal_set_background_image  vte_terminal_set_background_image;
alias c_vte_terminal_set_background_image_file  vte_terminal_set_background_image_file;
alias c_vte_terminal_set_background_saturation  vte_terminal_set_background_saturation;
alias c_vte_terminal_set_background_transparent  vte_terminal_set_background_transparent;
alias c_vte_terminal_set_background_tint_color  vte_terminal_set_background_tint_color;
alias c_vte_terminal_set_scroll_background  vte_terminal_set_scroll_background;
alias c_vte_terminal_set_cursor_shape  vte_terminal_set_cursor_shape;
alias c_vte_terminal_get_cursor_shape  vte_terminal_get_cursor_shape;
alias c_vte_terminal_set_cursor_blinks  vte_terminal_set_cursor_blinks;
alias c_vte_terminal_get_cursor_blink_mode  vte_terminal_get_cursor_blink_mode;
alias c_vte_terminal_set_cursor_blink_mode  vte_terminal_set_cursor_blink_mode;
alias c_vte_terminal_set_scrollback_lines  vte_terminal_set_scrollback_lines;
alias c_vte_terminal_set_font  vte_terminal_set_font;
alias c_vte_terminal_set_font_from_string  vte_terminal_set_font_from_string;
alias c_vte_terminal_set_font_from_string_full  vte_terminal_set_font_from_string_full;
alias c_vte_terminal_set_font_full  vte_terminal_set_font_full;
alias c_vte_terminal_get_font  vte_terminal_get_font;
alias c_vte_terminal_get_using_xft  vte_terminal_get_using_xft;
alias c_vte_terminal_get_has_selection  vte_terminal_get_has_selection;
alias c_vte_terminal_set_word_chars  vte_terminal_set_word_chars;
alias c_vte_terminal_is_word_char  vte_terminal_is_word_char;
alias c_vte_terminal_set_backspace_binding  vte_terminal_set_backspace_binding;
alias c_vte_terminal_set_delete_binding  vte_terminal_set_delete_binding;
alias c_vte_terminal_set_mouse_autohide  vte_terminal_set_mouse_autohide;
alias c_vte_terminal_get_mouse_autohide  vte_terminal_get_mouse_autohide;
alias c_vte_terminal_reset  vte_terminal_reset;
alias c_vte_terminal_get_text  vte_terminal_get_text;
alias c_vte_terminal_get_text_include_trailing_spaces  vte_terminal_get_text_include_trailing_spaces;
alias c_vte_terminal_get_text_range  vte_terminal_get_text_range;
alias c_vte_terminal_get_cursor_position  vte_terminal_get_cursor_position;
alias c_vte_terminal_match_clear_all  vte_terminal_match_clear_all;
alias c_vte_terminal_match_add  vte_terminal_match_add;
alias c_vte_terminal_match_add_gregex  vte_terminal_match_add_gregex;
alias c_vte_terminal_match_remove  vte_terminal_match_remove;
alias c_vte_terminal_match_check  vte_terminal_match_check;
alias c_vte_terminal_match_set_cursor  vte_terminal_match_set_cursor;
alias c_vte_terminal_match_set_cursor_type  vte_terminal_match_set_cursor_type;
alias c_vte_terminal_match_set_cursor_name  vte_terminal_match_set_cursor_name;
alias c_vte_terminal_set_emulation  vte_terminal_set_emulation;
alias c_vte_terminal_get_emulation  vte_terminal_get_emulation;
alias c_vte_terminal_get_default_emulation  vte_terminal_get_default_emulation;
alias c_vte_terminal_set_encoding  vte_terminal_set_encoding;
alias c_vte_terminal_get_encoding  vte_terminal_get_encoding;
alias c_vte_terminal_get_status_line  vte_terminal_get_status_line;
alias c_vte_terminal_get_padding  vte_terminal_get_padding;
alias c_vte_terminal_write_contents  vte_terminal_write_contents;
alias c_vte_terminal_search_find_next  vte_terminal_search_find_next;
alias c_vte_terminal_search_find_previous  vte_terminal_search_find_previous;
alias c_vte_terminal_search_get_gregex  vte_terminal_search_get_gregex;
alias c_vte_terminal_search_get_wrap_around  vte_terminal_search_get_wrap_around;
alias c_vte_terminal_search_set_gregex  vte_terminal_search_set_gregex;
alias c_vte_terminal_search_set_wrap_around  vte_terminal_search_set_wrap_around;
alias c_vte_get_user_shell  vte_get_user_shell;
alias c_vte_terminal_fork_command  vte_terminal_fork_command;
alias c_vte_terminal_fork_command_full  vte_terminal_fork_command_full;
alias c_vte_terminal_forkpty  vte_terminal_forkpty;
alias c_vte_terminal_get_pty  vte_terminal_get_pty;
alias c_vte_terminal_get_pty_object  vte_terminal_get_pty_object;
alias c_vte_terminal_pty_new  vte_terminal_pty_new;
alias c_vte_terminal_set_pty  vte_terminal_set_pty;
alias c_vte_terminal_set_pty_object  vte_terminal_set_pty_object;
alias c_vte_terminal_watch_child  vte_terminal_watch_child;
alias c_vte_terminal_get_adjustment  vte_terminal_get_adjustment;
alias c_vte_terminal_get_char_ascent  vte_terminal_get_char_ascent;
alias c_vte_terminal_get_char_descent  vte_terminal_get_char_descent;
alias c_vte_terminal_get_char_height  vte_terminal_get_char_height;
alias c_vte_terminal_get_char_width  vte_terminal_get_char_width;
alias c_vte_terminal_get_column_count  vte_terminal_get_column_count;
alias c_vte_terminal_get_icon_title  vte_terminal_get_icon_title;
alias c_vte_terminal_get_row_count  vte_terminal_get_row_count;
alias c_vte_terminal_get_window_title  vte_terminal_get_window_title;
alias c_vte_terminal_get_current_directory_uri  vte_terminal_get_current_directory_uri;
alias c_vte_terminal_get_current_file_uri  vte_terminal_get_current_file_uri;

// vte.Pty

alias c_vte_pty_new  vte_pty_new;
alias c_vte_pty_new_foreign  vte_pty_new_foreign;
alias c_vte_pty_close  vte_pty_close;
alias c_vte_pty_child_setup  vte_pty_child_setup;
alias c_vte_pty_get_fd  vte_pty_get_fd;
alias c_vte_pty_set_size  vte_pty_set_size;
alias c_vte_pty_get_size  vte_pty_get_size;
alias c_vte_pty_set_term  vte_pty_set_term;
alias c_vte_pty_set_utf8  vte_pty_set_utf8;
