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


module vte.c.types;

public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


/**
 * An enumerated type which can be used to indicate the cursor blink mode
 * for the terminal.
 */
public enum VteCursorBlinkMode
{
	/**
	 * Follow GTK+ settings for cursor blinking.
	 */
	SYSTEM = 0,
	/**
	 * Cursor blinks.
	 */
	ON = 1,
	/**
	 * Cursor does not blink.
	 */
	OFF = 2,
}
alias VteCursorBlinkMode CursorBlinkMode;

/**
 * An enumerated type which can be used to indicate what should the terminal
 * draw at the cursor position.
 */
public enum VteCursorShape
{
	/**
	 * Draw a block cursor.  This is the default.
	 */
	BLOCK = 0,
	/**
	 * Draw a vertical bar on the left side of character.
	 * This is similar to the default cursor for other GTK+ widgets.
	 */
	IBEAM = 1,
	/**
	 * Draw a horizontal bar below the character.
	 */
	UNDERLINE = 2,
}
alias VteCursorShape CursorShape;

/**
 * An enumerated type which can be used to indicate which string the terminal
 * should send to an application when the user presses the Delete or Backspace
 * keys.
 */
public enum VteEraseBinding
{
	/**
	 * For backspace, attempt to determine the right value from the terminal's IO settings.  For delete, use the control sequence.
	 */
	AUTO = 0,
	/**
	 * Send an ASCII backspace character (0x08).
	 */
	ASCII_BACKSPACE = 1,
	/**
	 * Send an ASCII delete character (0x7F).
	 */
	ASCII_DELETE = 2,
	/**
	 * Send the "@@7" control sequence.
	 */
	DELETE_SEQUENCE = 3,
	/**
	 * Send terminal's "erase" setting.
	 */
	TTY = 4,
}
alias VteEraseBinding EraseBinding;

/**
 * An enumeratio type that can be used to specify the format the selection
 * should be copied to the clipboard in.
 *
 * Since: 0.50
 */
public enum VteFormat
{
	/**
	 * Export as plain text
	 */
	TEXT = 1,
	/**
	 * Export as HTML formatted text
	 */
	HTML = 2,
}
alias VteFormat Format;

public enum VtePtyError
{
	/**
	 * Obsolete. Deprecated: 0.42
	 */
	PTY_HELPER_FAILED = 0,
	/**
	 * failure when using PTY98 to allocate the PTY
	 */
	PTY98_FAILED = 1,
}
alias VtePtyError PtyError;

public enum VtePtyFlags
{
	/**
	 * Unused. Deprecated: 0.38
	 */
	NO_LASTLOG = 1,
	/**
	 * Unused. Deprecated: 0.38
	 */
	NO_UTMP = 2,
	/**
	 * Unused. Deprecated: 0.38
	 */
	NO_WTMP = 4,
	/**
	 * Unused. Deprecated: 0.38
	 */
	NO_HELPER = 8,
	/**
	 * Unused. Deprecated: 0.38
	 */
	NO_FALLBACK = 16,
	/**
	 * the default flags
	 */
	DEFAULT = 0,
}
alias VtePtyFlags PtyFlags;

/**
 * An enum type for regex errors. In addition to the values listed above,
 * any PCRE2 error values may occur.
 *
 * Since: 0.46
 */
public enum VteRegexError
{
	/**
	 * The PCRE2 library was built without
	 * Unicode support which is required for VTE
	 */
	INCOMPATIBLE = 2147483646,
	/**
	 * Regexes are not supported because VTE was
	 * built without PCRE2 support
	 */
	NOT_SUPPORTED = 2147483647,
}
alias VteRegexError RegexError;

/**
 * An enumerated type which can be used to indicate whether the terminal allows
 * the text contents to be blinked.
 *
 * Since: 0.52
 */
public enum VteTextBlinkMode
{
	/**
	 * Do not blink the text.
	 */
	NEVER = 0,
	/**
	 * Allow blinking text only if the terminal is focused.
	 */
	FOCUSED = 1,
	/**
	 * Allow blinking text only if the terminal is unfocused.
	 */
	UNFOCUSED = 2,
	/**
	 * Allow blinking text. This is the default.
	 */
	ALWAYS = 3,
}
alias VteTextBlinkMode TextBlinkMode;

/**
 * A flag type to determine how terminal contents should be written
 * to an output stream.
 */
public enum VteWriteFlags
{
	/**
	 * Write contents as UTF-8 text.  This is the default.
	 */
	DEFAULT = 0,
}
alias VteWriteFlags WriteFlags;

struct VteCharAttributes
{
	long row;
	long column;
	PangoColor fore;
	PangoColor back;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "underline", 1,
		uint, "strikethrough", 1,
		uint, "", 30
	));
}

struct VtePty;

struct VtePtyClass;

struct VteRegex;

struct VteTerminal
{
	GtkWidget widget;
	void**[1] UnusedPadding;
}

/**
 * All of these fields should be considered read-only, except for derived classes.
 */
struct VteTerminalClass
{
	GtkWidgetClass parentClass;
	/** */
	extern(C) void function(VteTerminal* terminal) eof;
	/** */
	extern(C) void function(VteTerminal* terminal, int status) childExited;
	/** */
	extern(C) void function(VteTerminal* terminal) encodingChanged;
	/** */
	extern(C) void function(VteTerminal* terminal, uint charWidth, uint charHeight) charSizeChanged;
	/** */
	extern(C) void function(VteTerminal* terminal) windowTitleChanged;
	/** */
	extern(C) void function(VteTerminal* terminal) iconTitleChanged;
	/** */
	extern(C) void function(VteTerminal* terminal) selectionChanged;
	/** */
	extern(C) void function(VteTerminal* terminal) contentsChanged;
	/** */
	extern(C) void function(VteTerminal* terminal) cursorMoved;
	/** */
	extern(C) void function(VteTerminal* terminal, const(char)* text, uint size) commit;
	/** */
	extern(C) void function(VteTerminal* terminal) deiconifyWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) iconifyWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) raiseWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) lowerWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) refreshWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) restoreWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) maximizeWindow;
	/** */
	extern(C) void function(VteTerminal* terminal, uint width, uint height) resizeWindow;
	/** */
	extern(C) void function(VteTerminal* terminal, uint x, uint y) moveWindow;
	/** */
	extern(C) void function(VteTerminal* terminal) increaseFontSize;
	/** */
	extern(C) void function(VteTerminal* terminal) decreaseFontSize;
	/** */
	extern(C) void function(VteTerminal* terminal) textModified;
	/** */
	extern(C) void function(VteTerminal* terminal) textInserted;
	/** */
	extern(C) void function(VteTerminal* terminal) textDeleted;
	/** */
	extern(C) void function(VteTerminal* terminal, int delta) textScrolled;
	/** */
	extern(C) void function(VteTerminal* terminal) copyClipboard;
	/** */
	extern(C) void function(VteTerminal* terminal) pasteClipboard;
	/** */
	extern(C) void function(VteTerminal* terminal) bell;
	void*[16] padding;
	VteTerminalClassPrivate* priv;
}

struct VteTerminalClassPrivate;

/**
 * Specifies the type of a selection function used to check whether
 * a cell has to be selected or not.
 *
 * Params:
 *     terminal = terminal in which the cell is.
 *     column = column in which the cell is.
 *     row = row in which the cell is.
 *     data = user data.
 *
 * Returns: %TRUE if cell has to be selected; %FALSE if otherwise.
 */
public alias extern(C) int function(VteTerminal* terminal, glong column, glong row, void* data) VteSelectionFunc;

/**
 * Callback for vte_terminal_spawn_async().
 *
 * On success, @pid contains the PID of the spawned process, and @error
 * is %NULL.
 * On failure, @pid is -1 and @error contains the error information.
 *
 * Params:
 *     terminal = the #VteTerminal
 *     pid = a #GPid
 *     error = a #GError, or %NULL
 *     userData = user data that was passed to vte_terminal_spawn_async
 *
 * Since: 0.48
 */
public alias extern(C) void function(VteTerminal* terminal, GPid pid, GError* error, void* userData) VteTerminalSpawnAsyncCallback;

/**
 * The major version number of the VTE library
 * (e.g. in version 3.1.4 this is 3).
 */
enum MAJOR_VERSION = 0;
alias VTE_MAJOR_VERSION = MAJOR_VERSION;

/**
 * The micro version number of the VTE library
 * (e.g. in version 3.1.4 this is 4).
 */
enum MICRO_VERSION = 2;
alias VTE_MICRO_VERSION = MICRO_VERSION;

/**
 * The minor version number of the VTE library
 * (e.g. in version 3.1.4 this is 1).
 */
enum MINOR_VERSION = 52;
alias VTE_MINOR_VERSION = MINOR_VERSION;

enum REGEX_FLAGS_DEFAULT = 1075314688;
alias VTE_REGEX_FLAGS_DEFAULT = REGEX_FLAGS_DEFAULT;

enum SPAWN_NO_PARENT_ENVV = 33554432;
alias VTE_SPAWN_NO_PARENT_ENVV = SPAWN_NO_PARENT_ENVV;
