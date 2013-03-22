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

/*
 * Conversion parameters:
 * inFile  = glib-Lexical-Scanner.html
 * outPack = glib
 * outFile = ScannerG
 * strct   = GScanner
 * realStrct=
 * ctorStrct=
 * clss    = ScannerG
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_scanner_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GScanner* -> ScannerG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.ScannerG;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * The GScanner and its associated functions provide a
 * general purpose lexical scanner.
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
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gScanner !is null )
		{
			g_scanner_destroy(gScanner);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new GScanner.
	 * The config_templ structure specifies the initial settings
	 * of the scanner, which are copied into the GScanner
	 * config field. If you pass NULL then the default settings
	 * are used.
	 * Params:
	 * configTempl = the initial scanner settings
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GScannerConfig* configTempl)
	{
		// GScanner * g_scanner_new (const GScannerConfig *config_templ);
		auto p = g_scanner_new(configTempl);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_scanner_new(configTempl)");
		}
		this(cast(GScanner*) p);
	}
	
	/**
	 * Frees all memory used by the GScanner.
	 */
	public void destroy()
	{
		// void g_scanner_destroy (GScanner *scanner);
		g_scanner_destroy(gScanner);
	}
	
	/**
	 * Prepares to scan a file.
	 * Params:
	 * inputFd = a file descriptor
	 */
	public void inputFile(int inputFd)
	{
		// void g_scanner_input_file (GScanner *scanner,  gint input_fd);
		g_scanner_input_file(gScanner, inputFd);
	}
	
	/**
	 * Rewinds the filedescriptor to the current buffer position
	 * and blows the file read ahead buffer. This is useful for
	 * third party uses of the scanners filedescriptor, which hooks
	 * onto the current scanning position.
	 */
	public void syncFileOffset()
	{
		// void g_scanner_sync_file_offset (GScanner *scanner);
		g_scanner_sync_file_offset(gScanner);
	}
	
	/**
	 * Prepares to scan a text buffer.
	 * Params:
	 * text = the text buffer to scan
	 */
	public void inputText(string text)
	{
		// void g_scanner_input_text (GScanner *scanner,  const gchar *text,  guint text_len);
		g_scanner_input_text(gScanner, cast(char*)text.ptr, cast(int) text.length);
	}
	
	/**
	 * Parses the next token, without removing it from the input stream.
	 * The token data is placed in the next_token, next_value, next_line,
	 * and next_position fields of the GScanner structure.
	 * Note that, while the token is not removed from the input stream
	 * (i.e. the next call to g_scanner_get_next_token() will return the
	 * same token), it will not be reevaluated. This can lead to surprising
	 * results when changing scope or the scanner configuration after peeking
	 * the next token. Getting the next token after switching the scope or
	 * configuration will return whatever was peeked before, regardless of
	 * any symbols that may have been added or removed in the new scope.
	 * Returns: the type of the token
	 */
	public GTokenType peekNextToken()
	{
		// GTokenType g_scanner_peek_next_token (GScanner *scanner);
		return g_scanner_peek_next_token(gScanner);
	}
	
	/**
	 * Parses the next token just like g_scanner_peek_next_token()
	 * and also removes it from the input stream. The token data is
	 * placed in the token, value, line, and position fields of
	 * the GScanner structure.
	 * Returns: the type of the token
	 */
	public GTokenType getNextToken()
	{
		// GTokenType g_scanner_get_next_token (GScanner *scanner);
		return g_scanner_get_next_token(gScanner);
	}
	
	/**
	 * Returns TRUE if the scanner has reached the end of
	 * the file or text buffer.
	 * Returns: TRUE if the scanner has reached the end of the file or text buffer
	 */
	public int eof()
	{
		// gboolean g_scanner_eof (GScanner *scanner);
		return g_scanner_eof(gScanner);
	}
	
	/**
	 * Returns the current line in the input stream (counting
	 * from 1). This is the line of the last token parsed via
	 * g_scanner_get_next_token().
	 * Returns: the current line
	 */
	public uint curLine()
	{
		// guint g_scanner_cur_line (GScanner *scanner);
		return g_scanner_cur_line(gScanner);
	}
	
	/**
	 * Returns the current position in the current line (counting
	 * from 0). This is the position of the last token parsed via
	 * g_scanner_get_next_token().
	 * Returns: the current position on the line
	 */
	public uint curPosition()
	{
		// guint g_scanner_cur_position (GScanner *scanner);
		return g_scanner_cur_position(gScanner);
	}
	
	/**
	 * Gets the current token type. This is simply the token
	 * field in the GScanner structure.
	 * Returns: the current token type
	 */
	public GTokenType curToken()
	{
		// GTokenType g_scanner_cur_token (GScanner *scanner);
		return g_scanner_cur_token(gScanner);
	}
	
	/**
	 * Gets the current token value. This is simply the value
	 * field in the GScanner structure.
	 * Returns: the current token value
	 */
	public GTokenValue curValue()
	{
		// GTokenValue g_scanner_cur_value (GScanner *scanner);
		return g_scanner_cur_value(gScanner);
	}
	
	/**
	 * Sets the current scope.
	 * Params:
	 * scopeId = the new scope id
	 * Returns: the old scope id
	 */
	public uint setScope(uint scopeId)
	{
		// guint g_scanner_set_scope (GScanner *scanner,  guint scope_id);
		return g_scanner_set_scope(gScanner, scopeId);
	}
	
	/**
	 * Adds a symbol to the given scope.
	 * Params:
	 * scopeId = the scope id
	 * symbol = the symbol to add
	 * value = the value of the symbol
	 */
	public void scopeAddSymbol(uint scopeId, string symbol, void* value)
	{
		// void g_scanner_scope_add_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol,  gpointer value);
		g_scanner_scope_add_symbol(gScanner, scopeId, Str.toStringz(symbol), value);
	}
	
	/**
	 * Calls the given function for each of the symbol/value pairs
	 * in the given scope of the GScanner. The function is passed
	 * the symbol and value of each pair, and the given user_data
	 * parameter.
	 * Params:
	 * scopeId = the scope id
	 * func = the function to call for each symbol/value pair
	 * userData = user data to pass to the function
	 */
	public void scopeForeachSymbol(uint scopeId, GHFunc func, void* userData)
	{
		// void g_scanner_scope_foreach_symbol (GScanner *scanner,  guint scope_id,  GHFunc func,  gpointer user_data);
		g_scanner_scope_foreach_symbol(gScanner, scopeId, func, userData);
	}
	
	/**
	 * Looks up a symbol in a scope and return its value. If the
	 * symbol is not bound in the scope, NULL is returned.
	 * Params:
	 * scopeId = the scope id
	 * symbol = the symbol to look up
	 * Returns: the value of symbol in the given scope, or NULL if symbol is not bound in the given scope.
	 */
	public void* scopeLookupSymbol(uint scopeId, string symbol)
	{
		// gpointer g_scanner_scope_lookup_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol);
		return g_scanner_scope_lookup_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}
	
	/**
	 * Removes a symbol from a scope.
	 * Params:
	 * scopeId = the scope id
	 * symbol = the symbol to remove
	 */
	public void scopeRemoveSymbol(uint scopeId, string symbol)
	{
		// void g_scanner_scope_remove_symbol (GScanner *scanner,  guint scope_id,  const gchar *symbol);
		g_scanner_scope_remove_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}
	
	/**
	 * Looks up a symbol in the current scope and return its value.
	 * If the symbol is not bound in the current scope, NULL is
	 * returned.
	 * Params:
	 * symbol = the symbol to look up
	 * Returns: the value of symbol in the current scope, or NULL if symbol is not bound in the current scope
	 */
	public void* lookupSymbol(string symbol)
	{
		// gpointer g_scanner_lookup_symbol (GScanner *scanner,  const gchar *symbol);
		return g_scanner_lookup_symbol(gScanner, Str.toStringz(symbol));
	}
	
	/**
	 * Outputs a message through the scanner's msg_handler,
	 * resulting from an unexpected token in the input stream.
	 * Note that you should not call g_scanner_peek_next_token()
	 * followed by g_scanner_unexp_token() without an intermediate
	 * call to g_scanner_get_next_token(), as g_scanner_unexp_token()
	 * evaluates the scanner's current token (not the peeked token)
	 * to construct part of the message.
	 * Params:
	 * expectedToken = the expected token
	 * identifierSpec = a string describing how the scanner's user
	 * refers to identifiers (NULL defaults to "identifier").
	 * This is used if expected_token is G_TOKEN_IDENTIFIER or
	 * G_TOKEN_IDENTIFIER_NULL.
	 * symbolSpec = a string describing how the scanner's user refers
	 * to symbols (NULL defaults to "symbol"). This is used if
	 * expected_token is G_TOKEN_SYMBOL or any token value greater
	 * than G_TOKEN_LAST.
	 * symbolName = the name of the symbol, if the scanner's current
	 * token is a symbol.
	 * message = a message string to output at the end of the
	 * warning/error, or NULL.
	 * isError = if TRUE it is output as an error. If FALSE it is
	 * output as a warning.
	 */
	public void unexpToken(GTokenType expectedToken, string identifierSpec, string symbolSpec, string symbolName, string message, int isError)
	{
		// void g_scanner_unexp_token (GScanner *scanner,  GTokenType expected_token,  const gchar *identifier_spec,  const gchar *symbol_spec,  const gchar *symbol_name,  const gchar *message,  gint is_error);
		g_scanner_unexp_token(gScanner, expectedToken, Str.toStringz(identifierSpec), Str.toStringz(symbolSpec), Str.toStringz(symbolName), Str.toStringz(message), isError);
	}
}
