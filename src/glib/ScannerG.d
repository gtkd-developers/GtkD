/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = ScannerG
 * strct   = GScanner
 * realStrct=
 * clss    = ScannerG
 * template for:
 * extend  = 
 * prefixes:
 * 	- g_scanner
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.HashTable
 * 	- glib.Str
 * structWrap:
 * 	- GHashTable* -> HashTable
 * 	- GScanner* -> ScannerG
 * local aliases:
 */

module glib.ScannerG;

private import glib.typedefs;

private import lib.glib;

private import glib.HashTable;
private import glib.Str;

/**
 * Description
 * The GScanner and its associated functions provide a general purpose
 * lexical scanner.
 * FIXME: really needs an example and more detail, but I don't completely
 * understand it myself. Look at gtkrc.c for some code using the scanner.
 */
public class ScannerG
{
	
	/** the main Gtk struct */
	protected GScanner* gScanner;
	
	
	public GScanner* getScannerGStruct()
	{
		return gScanner;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gScanner;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GScanner* gScanner)
	{
		this.gScanner = gScanner;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GScanner.
	 * The config_templ structure specifies the initial settings of the scanner,
	 * which are copied into the GScanner config field.
	 * If you pass NULL then the default settings are used.
	 * config_templ:
	 * the initial scanner settings.
	 * Returns:
	 * the new GScanner.
	 */
	public static ScannerG _New(GScannerConfig* configTempl)
	{
		// GScanner* g_scanner_new (const GScannerConfig *config_templ);
		return new ScannerG( g_scanner_new(configTempl) );
	}
	
	
	/**
	 * Prepares to scan a file.
	 * scanner:
	 * a GScanner.
	 * input_fd:
	 * a file descriptor.
	 */
	public void _InputFile(int inputFd)
	{
		// void g_scanner_input_file (GScanner *scanner,  gint input_fd);
		g_scanner_input_file(gScanner, inputFd);
	}
	
	/**
	 * Rewinds the filedescriptor to the current buffer position and blows
	 * the file read ahead buffer. This is useful for third party uses of
	 * the scanners filedescriptor, which hooks onto the current scanning
	 * position.
	 * scanner:
	 * a GScanner.
	 */
	public void _SyncFileOffset()
	{
		// void g_scanner_sync_file_offset (GScanner *scanner);
		g_scanner_sync_file_offset(gScanner);
	}
	
	/**
	 * Prepares to scan a text buffer.
	 * scanner:
	 * a GScanner.
	 * text:
	 * the text buffer to scan.
	 * text_len:
	 * the length of the text buffer.
	 */
	public void _InputText(char[] text, uint textLen)
	{
		// void g_scanner_input_text (GScanner *scanner,  const	gchar *text,  guint text_len);
		g_scanner_input_text(gScanner, Str.toStringz(text), textLen);
	}
	
	/**
	 * Gets the next token, without removing it from the input stream.
	 * The token data is placed in the
	 * next_token,
	 * next_value,
	 * next_line, and
	 * next_position fields of the GScanner structure.
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the type of the token.
	 */
	public GTokenType _PeekNextToken()
	{
		// GTokenType g_scanner_peek_next_token (GScanner *scanner);
		return g_scanner_peek_next_token(gScanner);
	}
	
	/**
	 * Gets the next token, removing it from the input stream.
	 * The token data is placed in the
	 * token,
	 * value,
	 * line, and
	 * position fields of the GScanner structure.
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the type of the token.
	 */
	public GTokenType _GetNextToken()
	{
		// GTokenType g_scanner_get_next_token (GScanner *scanner);
		return g_scanner_get_next_token(gScanner);
	}
	
	/**
	 * Gets the current line in the input stream (counting from 1).
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the current line.
	 */
	public uint _CurLine()
	{
		// guint g_scanner_cur_line (GScanner *scanner);
		return g_scanner_cur_line(gScanner);
	}
	
	/**
	 * Gets the current position in the current line (counting from 0).
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the current position on the line.
	 */
	public uint _CurPosition()
	{
		// guint g_scanner_cur_position (GScanner *scanner);
		return g_scanner_cur_position(gScanner);
	}
	
	/**
	 * Gets the current token type.
	 * This is simply the token field in the GScanner
	 * structure.
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the current token type.
	 */
	public GTokenType _CurToken()
	{
		// GTokenType g_scanner_cur_token (GScanner *scanner);
		return g_scanner_cur_token(gScanner);
	}
	
	/**
	 * Gets the current token value.
	 * This is simply the value field in the GScanner
	 * structure.
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * the current token value.
	 */
	public GTokenValue _CurValue()
	{
		// GTokenValue g_scanner_cur_value (GScanner *scanner);
		return g_scanner_cur_value(gScanner);
	}
	
	/**
	 * Returns TRUE if the scanner has reached the end of the file or text buffer.
	 * scanner:
	 * a GScanner.
	 * Returns:
	 * TRUE if the scanner has reached the end of the file or text buffer.
	 */
	public int _Eof()
	{
		// gboolean g_scanner_eof (GScanner *scanner);
		return g_scanner_eof(gScanner);
	}
	
	/**
	 * Sets the current scope.
	 * scanner:
	 * a GScanner.
	 * scope_id:
	 * the new scope id.
	 * Returns:
	 * the old scope id.
	 */
	public uint _SetScope(uint scopeId)
	{
		// guint g_scanner_set_scope (GScanner *scanner,  guint scope_id);
		return g_scanner_set_scope(gScanner, scopeId);
	}
	
	/**
	 * Adds a symbol to the given scope.
	 * scanner:
	 * a GScanner.
	 * scope_id:
	 * the scope id.
	 * symbol:
	 * the symbol to add.
	 * value:
	 * the value of the symbol.
	 */
	public void _ScopeAddSymbol(uint scopeId, char[] symbol, void* value)
	{
		// void g_scanner_scope_add_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol,  gpointer value);
		g_scanner_scope_add_symbol(gScanner, scopeId, Str.toStringz(symbol), value);
	}
	
	/**
	 * Calls the given function for each of the symbol/value pairs in the
	 * given scope of the GScanner. The function is passed the symbol and
	 * value of each pair, and the given user_data parameter.
	 * scanner:
	 * a GScanner.
	 * scope_id:
	 * the scope id.
	 * func:
	 * the function to call for each symbol/value pair.
	 * user_data:
	 * user data to pass to the function.
	 */
	public void _ScopeForeachSymbol(uint scopeId, GHFunc func, void* userData)
	{
		// void g_scanner_scope_foreach_symbol (GScanner *scanner,  guint scope_id,  GHFunc func,  gpointer user_data);
		g_scanner_scope_foreach_symbol(gScanner, scopeId, func, userData);
	}
	
	/**
	 * Looks up a symbol in a scope and return its value. If the
	 * symbol is not bound in the scope, NULL is returned.
	 * scanner:
	 * a GScanner.
	 * scope_id:
	 * the scope id.
	 * symbol:
	 * the symbol to look up.
	 * Returns:
	 * the value of symbol in the given scope, or NULL
	 * if symbol is not bound in the given scope.
	 */
	public void* _ScopeLookupSymbol(uint scopeId, char[] symbol)
	{
		// gpointer g_scanner_scope_lookup_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol);
		return g_scanner_scope_lookup_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}
	
	/**
	 * Removes a symbol from a scope.
	 * scanner:
	 * a GScanner.
	 * scope_id:
	 * the scope id.
	 * symbol:
	 * the symbol to remove.
	 */
	public void _ScopeRemoveSymbol(uint scopeId, char[] symbol)
	{
		// void g_scanner_scope_remove_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol);
		g_scanner_scope_remove_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}
	
	
	
	/**
	 * Looks up a symbol in the current scope and return its value. If the
	 * symbol is not bound in the current scope, NULL is returned.
	 * scanner:
	 * a GScanner.
	 * symbol:
	 * the symbol to look up.
	 * Returns:
	 * the value of symbol in the current scope, or NULL
	 * if symbol is not bound in the current scope.
	 */
	public void* _LookupSymbol(char[] symbol)
	{
		// gpointer g_scanner_lookup_symbol (GScanner *scanner,  const gchar *symbol);
		return g_scanner_lookup_symbol(gScanner, Str.toStringz(symbol));
	}
	
	/**
	 * Outputs a warning message, via the GScanner message handler.
	 * scanner:
	 * a GScanner.
	 * format:
	 * the message format. See the printf()
	 * documentation.
	 * ...:
	 * the parameters to insert into the format string.
	 */
	public void _Warn(char[] format, ... )
	{
		// void g_scanner_warn (GScanner *scanner,  const gchar *format,  ...);
		g_scanner_warn(gScanner, Str.toStringz(format));
	}
	
	/**
	 * Outputs an error message, via the GScanner message handler.
	 * scanner:
	 * a GScanner.
	 * format:
	 * the message format. See the printf()
	 * documentation.
	 * ...:
	 * the parameters to insert into the format string.
	 */
	public void _Error(char[] format, ... )
	{
		// void g_scanner_error (GScanner *scanner,  const gchar *format,  ...);
		g_scanner_error(gScanner, Str.toStringz(format));
	}
	
	/**
	 * Outputs a message through the scanner's msg_handler, resulting from an
	 * unexpected token in the input stream.
	 * Note that you should not call g_scanner_peek_next_token() followed by
	 * g_scanner_unexp_token() without an intermediate call to
	 * g_scanner_get_next_token(), as g_scanner_unexp_token() evaluates the
	 * scanner's current token (not the peeked token) to construct part
	 * of the message.
	 * scanner:
	 * a GScanner.
	 * expected_token:
	 * the expected token.
	 * identifier_spec:
	 * a string describing how the scanner's user refers to
	 *  identifiers (NULL defaults to "identifier").
	 *  This is used if expected_token is G_TOKEN_IDENTIFIER
	 *  or G_TOKEN_IDENTIFIER_NULL.
	 * symbol_spec:
	 * a string describing how the scanner's user refers to
	 *  symbols (NULL defaults to "symbol").
	 *  This is used if expected_token is G_TOKEN_SYMBOL or
	 *  any token value greater than G_TOKEN_LAST.
	 * symbol_name:
	 * the name of the symbol, if the scanner's current token
	 *  is a symbol.
	 * message:
	 * a message string to output at the end of the warning/error, or NULL.
	 * is_error:
	 * if TRUE it is output as an error. If FALSE it is output as a
	 *  warning.
	 */
	public void _UnexpToken(GTokenType expectedToken, char[] identifierSpec, char[] symbolSpec, char[] symbolName, char[] message, int isError)
	{
		// void g_scanner_unexp_token (GScanner *scanner,  GTokenType expected_token,  const gchar *identifier_spec,  const gchar *symbol_spec,  const gchar *symbol_name,  const gchar *message,  gint is_error);
		g_scanner_unexp_token(gScanner, expectedToken, Str.toStringz(identifierSpec), Str.toStringz(symbolSpec), Str.toStringz(symbolName), Str.toStringz(message), isError);
	}
	
	
	/**
	 * Frees all memory used by the GScanner.
	 * scanner:
	 * a GScanner.
	 */
	public void _Destroy()
	{
		// void g_scanner_destroy (GScanner *scanner);
		g_scanner_destroy(gScanner);
	}
	
	
	
	
	
	
	
	
	
	
	
}
