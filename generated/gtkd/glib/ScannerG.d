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


module glib.ScannerG;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The data structure representing a lexical scanner.
 * 
 * You should set @input_name after creating the scanner, since
 * it is used by the default message handler when displaying
 * warnings and errors. If you are scanning a file, the filename
 * would be a good choice.
 * 
 * The @user_data and @max_parse_errors fields are not used.
 * If you need to associate extra data with the scanner you
 * can place them here.
 * 
 * If you want to use your own message handler you can set the
 * @msg_handler field. The type of the message handler function
 * is declared by #GScannerMsgFunc.
 */
public class ScannerG
{
	/** the main Gtk struct */
	protected GScanner* gScanner;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GScanner* getScannerGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gScanner;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gScanner;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GScanner* gScanner, bool ownedRef = false)
	{
		this.gScanner = gScanner;
		this.ownedRef = ownedRef;
	}


	/**
	 * Returns the current line in the input stream (counting
	 * from 1). This is the line of the last token parsed via
	 * g_scanner_get_next_token().
	 *
	 * Returns: the current line
	 */
	public uint curLine()
	{
		return g_scanner_cur_line(gScanner);
	}

	/**
	 * Returns the current position in the current line (counting
	 * from 0). This is the position of the last token parsed via
	 * g_scanner_get_next_token().
	 *
	 * Returns: the current position on the line
	 */
	public uint curPosition()
	{
		return g_scanner_cur_position(gScanner);
	}

	/**
	 * Gets the current token type. This is simply the @token
	 * field in the #GScanner structure.
	 *
	 * Returns: the current token type
	 */
	public GTokenType curToken()
	{
		return g_scanner_cur_token(gScanner);
	}

	/**
	 * Gets the current token value. This is simply the @value
	 * field in the #GScanner structure.
	 *
	 * Returns: the current token value
	 */
	public GTokenValue curValue()
	{
		return g_scanner_cur_value(gScanner);
	}

	/**
	 * Frees all memory used by the #GScanner.
	 */
	public void destroy()
	{
		g_scanner_destroy(gScanner);
	}

	/**
	 * Returns %TRUE if the scanner has reached the end of
	 * the file or text buffer.
	 *
	 * Returns: %TRUE if the scanner has reached the end of
	 *     the file or text buffer
	 */
	public bool eof()
	{
		return g_scanner_eof(gScanner) != 0;
	}

	/**
	 * Parses the next token just like g_scanner_peek_next_token()
	 * and also removes it from the input stream. The token data is
	 * placed in the @token, @value, @line, and @position fields of
	 * the #GScanner structure.
	 *
	 * Returns: the type of the token
	 */
	public GTokenType getNextToken()
	{
		return g_scanner_get_next_token(gScanner);
	}

	/**
	 * Prepares to scan a file.
	 *
	 * Params:
	 *     inputFd = a file descriptor
	 */
	public void inputFile(int inputFd)
	{
		g_scanner_input_file(gScanner, inputFd);
	}

	/**
	 * Prepares to scan a text buffer.
	 *
	 * Params:
	 *     text = the text buffer to scan
	 *     textLen = the length of the text buffer
	 */
	public void inputText(string text, uint textLen)
	{
		g_scanner_input_text(gScanner, Str.toStringz(text), textLen);
	}

	/**
	 * Looks up a symbol in the current scope and return its value.
	 * If the symbol is not bound in the current scope, %NULL is
	 * returned.
	 *
	 * Params:
	 *     symbol = the symbol to look up
	 *
	 * Returns: the value of @symbol in the current scope, or %NULL
	 *     if @symbol is not bound in the current scope
	 */
	public void* lookupSymbol(string symbol)
	{
		return g_scanner_lookup_symbol(gScanner, Str.toStringz(symbol));
	}

	/**
	 * Parses the next token, without removing it from the input stream.
	 * The token data is placed in the @next_token, @next_value, @next_line,
	 * and @next_position fields of the #GScanner structure.
	 *
	 * Note that, while the token is not removed from the input stream
	 * (i.e. the next call to g_scanner_get_next_token() will return the
	 * same token), it will not be reevaluated. This can lead to surprising
	 * results when changing scope or the scanner configuration after peeking
	 * the next token. Getting the next token after switching the scope or
	 * configuration will return whatever was peeked before, regardless of
	 * any symbols that may have been added or removed in the new scope.
	 *
	 * Returns: the type of the token
	 */
	public GTokenType peekNextToken()
	{
		return g_scanner_peek_next_token(gScanner);
	}

	/**
	 * Adds a symbol to the given scope.
	 *
	 * Params:
	 *     scopeId = the scope id
	 *     symbol = the symbol to add
	 *     value = the value of the symbol
	 */
	public void scopeAddSymbol(uint scopeId, string symbol, void* value)
	{
		g_scanner_scope_add_symbol(gScanner, scopeId, Str.toStringz(symbol), value);
	}

	/**
	 * Calls the given function for each of the symbol/value pairs
	 * in the given scope of the #GScanner. The function is passed
	 * the symbol and value of each pair, and the given @user_data
	 * parameter.
	 *
	 * Params:
	 *     scopeId = the scope id
	 *     func = the function to call for each symbol/value pair
	 *     userData = user data to pass to the function
	 */
	public void scopeForeachSymbol(uint scopeId, GHFunc func, void* userData)
	{
		g_scanner_scope_foreach_symbol(gScanner, scopeId, func, userData);
	}

	/**
	 * Looks up a symbol in a scope and return its value. If the
	 * symbol is not bound in the scope, %NULL is returned.
	 *
	 * Params:
	 *     scopeId = the scope id
	 *     symbol = the symbol to look up
	 *
	 * Returns: the value of @symbol in the given scope, or %NULL
	 *     if @symbol is not bound in the given scope.
	 */
	public void* scopeLookupSymbol(uint scopeId, string symbol)
	{
		return g_scanner_scope_lookup_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}

	/**
	 * Removes a symbol from a scope.
	 *
	 * Params:
	 *     scopeId = the scope id
	 *     symbol = the symbol to remove
	 */
	public void scopeRemoveSymbol(uint scopeId, string symbol)
	{
		g_scanner_scope_remove_symbol(gScanner, scopeId, Str.toStringz(symbol));
	}

	/**
	 * Sets the current scope.
	 *
	 * Params:
	 *     scopeId = the new scope id
	 *
	 * Returns: the old scope id
	 */
	public uint setScope(uint scopeId)
	{
		return g_scanner_set_scope(gScanner, scopeId);
	}

	/**
	 * Rewinds the filedescriptor to the current buffer position
	 * and blows the file read ahead buffer. This is useful for
	 * third party uses of the scanners filedescriptor, which hooks
	 * onto the current scanning position.
	 */
	public void syncFileOffset()
	{
		g_scanner_sync_file_offset(gScanner);
	}

	/**
	 * Outputs a message through the scanner's msg_handler,
	 * resulting from an unexpected token in the input stream.
	 * Note that you should not call g_scanner_peek_next_token()
	 * followed by g_scanner_unexp_token() without an intermediate
	 * call to g_scanner_get_next_token(), as g_scanner_unexp_token()
	 * evaluates the scanner's current token (not the peeked token)
	 * to construct part of the message.
	 *
	 * Params:
	 *     expectedToken = the expected token
	 *     identifierSpec = a string describing how the scanner's user
	 *         refers to identifiers (%NULL defaults to "identifier").
	 *         This is used if @expected_token is %G_TOKEN_IDENTIFIER or
	 *         %G_TOKEN_IDENTIFIER_NULL.
	 *     symbolSpec = a string describing how the scanner's user refers
	 *         to symbols (%NULL defaults to "symbol"). This is used if
	 *         @expected_token is %G_TOKEN_SYMBOL or any token value greater
	 *         than %G_TOKEN_LAST.
	 *     symbolName = the name of the symbol, if the scanner's current
	 *         token is a symbol.
	 *     message = a message string to output at the end of the
	 *         warning/error, or %NULL.
	 *     isError = if %TRUE it is output as an error. If %FALSE it is
	 *         output as a warning.
	 */
	public void unexpToken(GTokenType expectedToken, string identifierSpec, string symbolSpec, string symbolName, string message, int isError)
	{
		g_scanner_unexp_token(gScanner, expectedToken, Str.toStringz(identifierSpec), Str.toStringz(symbolSpec), Str.toStringz(symbolName), Str.toStringz(message), isError);
	}

	/**
	 * Creates a new #GScanner.
	 *
	 * The @config_templ structure specifies the initial settings
	 * of the scanner, which are copied into the #GScanner
	 * @config field. If you pass %NULL then the default settings
	 * are used.
	 *
	 * Params:
	 *     configTempl = the initial scanner settings
	 *
	 * Returns: the new #GScanner
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GScannerConfig* configTempl)
	{
		auto __p = g_scanner_new(configTempl);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GScanner*) __p);
	}
}
