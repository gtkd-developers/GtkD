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

module vtec.vtetypes;


public import gtkc.gtktypes;

/**
 * Warning
 * VteTerminalAntiAlias is deprecated and should not be used in newly-written code.
 * An enumeration describing which anti-alias setting to use.
 * Deprecated: 0.20
 * VTE_ANTI_ALIAS_USE_DEFAULT
 * Use the system default anti-alias setting
 * VTE_ANTI_ALIAS_FORCE_ENABLE
 * Force enable anti-aliasing
 * VTE_ANTI_ALIAS_FORCE_DISABLE
 * Force disable anti-aliasing
 */
public enum VteTerminalAntiAlias
{
	ANTI_ALIAS_USE_DEFAULT,
	ANTI_ALIAS_FORCE_ENABLE,
	ANTI_ALIAS_FORCE_DISABLE
}
/**
 * An enumerated type which can be used to indicate the cursor blink mode
 * for the terminal.
 * VTE_CURSOR_BLINK_SYSTEM
 * Follow GTK+ settings for cursor blinking.
 * VTE_CURSOR_BLINK_ON
 * Cursor blinks.
 * VTE_CURSOR_BLINK_OFF
 * Cursor does not blink.
 */
public enum VteTerminalCursorBlinkMode
{
	CURSOR_BLINK_SYSTEM,
	CURSOR_BLINK_ON,
	CURSOR_BLINK_OFF
}
/**
 * An enumerated type which can be used to indicate what should the terminal
 * draw at the cursor position.
 * VTE_CURSOR_SHAPE_BLOCK
 * Draw a block cursor. This is the default.
 * VTE_CURSOR_SHAPE_IBEAM
 * Draw a vertical bar on the left side of character.
 * This is similar to the default cursor for other GTK+ widgets.
 * VTE_CURSOR_SHAPE_UNDERLINE
 * Draw a horizontal bar below the character.
 */
public enum VteTerminalCursorShape
{
	CURSOR_SHAPE_BLOCK,
	CURSOR_SHAPE_IBEAM,
	CURSOR_SHAPE_UNDERLINE
}
/**
 * An enumerated type which can be used to indicate which string the terminal
 * should send to an application when the user presses the Delete or Backspace
 * keys.
 * VTE_ERASE_AUTO
 * For backspace, attempt to determine the right value from the terminal's IO settings. For delete, use the control sequence.
 * VTE_ERASE_ASCII_BACKSPACE
 * Send an ASCII backspace character (0x08).
 * VTE_ERASE_ASCII_DELETE
 * Send an ASCII delete character (0x7F).
 * VTE_ERASE_DELETE_SEQUENCE
 * Send the "@7" control sequence.
 * VTE_ERASE_TTY
 * Send terminal's "erase" setting.
 */
public enum VteTerminalEraseBinding
{
	ERASE_AUTO,
	ERASE_ASCII_BACKSPACE,
	ERASE_ASCII_DELETE,
	ERASE_DELETE_SEQUENCE,
	ERASE_TTY
}
/**
 * A flag type to determine how terminal contents should be written
 * to an output stream.
 * VTE_TERMINAL_WRITE_DEFAULT
 * Write contents as UTF-8 text. This is the default.
 */
public enum VteTerminalWriteFlags
{
	DEFAULT = 0
}
/**
 * VTE_PTY_NO_LASTLOG
 * don't record the session in lastlog
 * VTE_PTY_NO_UTMP
 * don't record the session in utmp
 * VTE_PTY_NO_WTMP
 * don't record the session in wtmp
 * VTE_PTY_NO_HELPER
 * don't use the GNOME PTY helper to allocate the PTY
 * VTE_PTY_NO_FALLBACK
 * when allocating the PTY with the PTY helper fails,
 *  don't fall back to try using PTY98
 * VTE_PTY_DEFAULT
 * the default flags
 * Since 0.26
 */
public enum VtePtyFlags
{
	NO_LASTLOG = 1 << 0,
	NO_UTMP = 1 << 1,
	NO_WTMP = 1 << 2,
	NO_HELPER = 1 << 3,
	NO_FALLBACK = 1 << 4,
	DEFAULT = 0
}
/**
 * VTE_PTY_ERROR_PTY_HELPER_FAILED
 * failure when using the GNOME PTY helper to
 *  allocate the PTY
 * VTE_PTY_ERROR_PTY98_FAILED
 * failure when using PTY98 to allocate the PTY
 * Since 0.26
 */
public enum VtePtyError
{
	PTY_HELPER_FAILED = 0,
	PTY98_FAILED
}

/**
 * Main Gtk struct.
 * All of these fields should be considered read-only and deprecated.
 */
public struct VteTerminal{}


/**
 * Main Gtk struct.
 * Since 0.26
 */
public struct VtePty{}


/*
 * Specifies the type of a selection function used to check whether
 * a cell has to be selected or not.
 * terminal :
 * terminal in which the cell is.
 * column :
 * column in which the cell is.
 * row :
 * row in which the cell is.
 * data :
 * user data. [closure]
 * Returns :
 * TRUE if cell has to be selected; FALSE if otherwise.
 */
// gboolean (*VteSelectionFunc) (VteTerminal *terminal,  glong column,  glong row,  gpointer data);
public alias extern(C) int function(VteTerminal* terminal, glong column, glong row, void* data) VteSelectionFunc;
