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


module soup.MessageHeaders;

private import glib.ConstructionException;
private import glib.HashTable;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import soup.c.functions;
public  import soup.c.types;


/**
 * The HTTP message headers associated with a request or response.
 */
public class MessageHeaders
{
	/** the main Gtk struct */
	protected SoupMessageHeaders* soupMessageHeaders;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupMessageHeaders* getMessageHeadersStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMessageHeaders;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupMessageHeaders;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMessageHeaders* soupMessageHeaders, bool ownedRef = false)
	{
		this.soupMessageHeaders = soupMessageHeaders;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_message_headers_free(soupMessageHeaders);
	}


	/** */
	public static GType getType()
	{
		return soup_message_headers_get_type();
	}

	/**
	 * Creates a #SoupMessageHeaders. (#SoupMessage does this
	 * automatically for its own headers. You would only need to use this
	 * method if you are manually parsing or generating message headers.)
	 *
	 * Params:
	 *     type = the type of headers
	 *
	 * Returns: a new #SoupMessageHeaders
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SoupMessageHeadersType type)
	{
		auto __p = soup_message_headers_new(type);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupMessageHeaders*) __p);
	}

	/**
	 * Appends a new header with name @name and value @value to @hdrs. (If
	 * there is an existing header with name @name, then this creates a
	 * second one, which is only allowed for list-valued headers; see also
	 * soup_message_headers_replace().)
	 *
	 * The caller is expected to make sure that @name and @value are
	 * syntactically correct.
	 *
	 * Params:
	 *     name = the header name to add
	 *     value = the new value of @name
	 */
	public void append(string name, string value)
	{
		soup_message_headers_append(soupMessageHeaders, Str.toStringz(name), Str.toStringz(value));
	}

	/**
	 * Removes all the headers listed in the Connection header.
	 *
	 * Since: 2.36
	 */
	public void cleanConnectionHeaders()
	{
		soup_message_headers_clean_connection_headers(soupMessageHeaders);
	}

	/**
	 * Clears @hdrs.
	 */
	public void clear()
	{
		soup_message_headers_clear(soupMessageHeaders);
	}

	alias foreac = foreach_;
	/**
	 * Calls @func once for each header value in @hdrs.
	 *
	 * Beware that unlike soup_message_headers_get(), this processes the
	 * headers in exactly the way they were added, rather than
	 * concatenating multiple same-named headers into a single value.
	 * (This is intentional; it ensures that if you call
	 * soup_message_headers_append() multiple times with the same name,
	 * then the I/O code will output multiple copies of the header when
	 * sending the message to the remote implementation, which may be
	 * required for interoperability in some cases.)
	 *
	 * You may not modify the headers from @func.
	 *
	 * Params:
	 *     func = callback function to run for each header
	 *     userData = data to pass to @func
	 */
	public void foreach_(SoupMessageHeadersForeachFunc func, void* userData)
	{
		soup_message_headers_foreach(soupMessageHeaders, func, userData);
	}

	/**
	 * Frees @hdrs.
	 */
	public void free()
	{
		soup_message_headers_free(soupMessageHeaders);
		ownedRef = false;
	}

	/**
	 * Frees the array of ranges returned from soup_message_headers_get_ranges().
	 *
	 * Params:
	 *     ranges = an array of #SoupRange
	 *
	 * Since: 2.26
	 */
	public void freeRanges(SoupRange* ranges)
	{
		soup_message_headers_free_ranges(soupMessageHeaders, ranges);
	}

	/**
	 * Gets the value of header @name in @hdrs.
	 *
	 * This method was supposed to work correctly for both single-valued
	 * and list-valued headers, but because some HTTP clients/servers
	 * mistakenly send multiple copies of headers that are supposed to be
	 * single-valued, it sometimes returns incorrect results. To fix this,
	 * the methods soup_message_headers_get_one() and
	 * soup_message_headers_get_list() were introduced, so callers can
	 * explicitly state which behavior they are expecting.
	 *
	 * Deprecated: Use soup_message_headers_get_one() or
	 * soup_message_headers_get_list() instead.
	 *
	 * Params:
	 *     name = header name
	 *
	 * Returns: as with soup_message_headers_get_list().
	 */
	public string get(string name)
	{
		return Str.toString(soup_message_headers_get(soupMessageHeaders, Str.toStringz(name)));
	}

	/**
	 * Looks up the "Content-Disposition" header in @hdrs, parses it, and
	 * returns its value in *@disposition and *@params. @params can be
	 * %NULL if you are only interested in the disposition-type.
	 *
	 * In HTTP, the most common use of this header is to set a
	 * disposition-type of "attachment", to suggest to the browser that a
	 * response should be saved to disk rather than displayed in the
	 * browser. If @params contains a "filename" parameter, this is a
	 * suggestion of a filename to use. (If the parameter value in the
	 * header contains an absolute or relative path, libsoup will truncate
	 * it down to just the final path component, so you do not need to
	 * test this yourself.)
	 *
	 * Content-Disposition is also used in "multipart/form-data", however
	 * this is handled automatically by #SoupMultipart and the associated
	 * form methods.
	 *
	 * Params:
	 *     disposition = return location for the
	 *         disposition-type, or %NULL
	 *     params = return
	 *         location for the Content-Disposition parameters, or %NULL
	 *
	 * Returns: %TRUE if @hdrs contains a "Content-Disposition"
	 *     header, %FALSE if not (in which case *@disposition and *@params
	 *     will be unchanged).
	 *
	 * Since: 2.26
	 */
	public bool getContentDisposition(out string disposition, out HashTable params)
	{
		char* outdisposition = null;
		GHashTable* outparams = null;

		auto __p = soup_message_headers_get_content_disposition(soupMessageHeaders, &outdisposition, &outparams) != 0;

		disposition = Str.toString(outdisposition);
		params = new HashTable(outparams);

		return __p;
	}

	/**
	 * Gets the message body length that @hdrs declare. This will only
	 * be non-0 if soup_message_headers_get_encoding() returns
	 * %SOUP_ENCODING_CONTENT_LENGTH.
	 *
	 * Returns: the message body length declared by @hdrs.
	 */
	public long getContentLength()
	{
		return soup_message_headers_get_content_length(soupMessageHeaders);
	}

	/**
	 * Parses @hdrs's Content-Range header and returns it in @start,
	 * @end, and @total_length. If the total length field in the header
	 * was specified as "*", then @total_length will be set to -1.
	 *
	 * Params:
	 *     start = return value for the start of the range
	 *     end = return value for the end of the range
	 *     totalLength = return value for the total length of the
	 *         resource, or %NULL if you don't care.
	 *
	 * Returns: %TRUE if @hdrs contained a "Content-Range" header
	 *     containing a byte range which could be parsed, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public bool getContentRange(out long start, out long end, out long totalLength)
	{
		return soup_message_headers_get_content_range(soupMessageHeaders, &start, &end, &totalLength) != 0;
	}

	/**
	 * Looks up the "Content-Type" header in @hdrs, parses it, and returns
	 * its value in *@content_type and *@params. @params can be %NULL if you
	 * are only interested in the content type itself.
	 *
	 * Params:
	 *     params = return location for the Content-Type parameters (eg, "charset"), or
	 *         %NULL
	 *
	 * Returns: a string with the value of the
	 *     "Content-Type" header or %NULL if @hdrs does not contain that
	 *     header or it cannot be parsed (in which case *@params will be
	 *     unchanged).
	 *
	 * Since: 2.26
	 */
	public string getContentType(out HashTable params)
	{
		GHashTable* outparams = null;

		auto retStr = soup_message_headers_get_content_type(soupMessageHeaders, &outparams);

		params = new HashTable(outparams);

		return Str.toString(retStr);
	}

	/**
	 * Gets the message body encoding that @hdrs declare. This may not
	 * always correspond to the encoding used on the wire; eg, a HEAD
	 * response may declare a Content-Length or Transfer-Encoding, but
	 * it will never actually include a body.
	 *
	 * Returns: the encoding declared by @hdrs.
	 */
	public SoupEncoding getEncoding()
	{
		return soup_message_headers_get_encoding(soupMessageHeaders);
	}

	/**
	 * Gets the expectations declared by @hdrs's "Expect" header.
	 * Currently this will either be %SOUP_EXPECTATION_CONTINUE or
	 * %SOUP_EXPECTATION_UNRECOGNIZED.
	 *
	 * Returns: the contents of @hdrs's "Expect" header
	 */
	public SoupExpectation getExpectations()
	{
		return soup_message_headers_get_expectations(soupMessageHeaders);
	}

	/**
	 * Gets the type of headers.
	 *
	 * Returns: the header's type.
	 *
	 * Since: 2.50
	 */
	public SoupMessageHeadersType getHeadersType()
	{
		return soup_message_headers_get_headers_type(soupMessageHeaders);
	}

	/**
	 * Gets the value of header @name in @hdrs. Use this for headers whose
	 * values are comma-delimited lists, and which are therefore allowed
	 * to appear multiple times in the headers. For non-list-valued
	 * headers, use soup_message_headers_get_one().
	 *
	 * If @name appears multiple times in @hdrs,
	 * soup_message_headers_get_list() will concatenate all of the values
	 * together, separated by commas. This is sometimes awkward to parse
	 * (eg, WWW-Authenticate, Set-Cookie), but you have to be able to deal
	 * with it anyway, because the HTTP spec explicitly states that this
	 * transformation is allowed, and so an upstream proxy could do the
	 * same thing.
	 *
	 * Params:
	 *     name = header name
	 *
	 * Returns: the header's value or %NULL if not found.
	 *
	 * Since: 2.28
	 */
	public string getList(string name)
	{
		return Str.toString(soup_message_headers_get_list(soupMessageHeaders, Str.toStringz(name)));
	}

	/**
	 * Gets the value of header @name in @hdrs. Use this for headers whose
	 * values are <emphasis>not</emphasis> comma-delimited lists, and
	 * which therefore can only appear at most once in the headers. For
	 * list-valued headers, use soup_message_headers_get_list().
	 *
	 * If @hdrs does erroneously contain multiple copies of the header, it
	 * is not defined which one will be returned. (Ideally, it will return
	 * whichever one makes libsoup most compatible with other HTTP
	 * implementations.)
	 *
	 * Params:
	 *     name = header name
	 *
	 * Returns: the header's value or %NULL if not found.
	 *
	 * Since: 2.28
	 */
	public string getOne(string name)
	{
		return Str.toString(soup_message_headers_get_one(soupMessageHeaders, Str.toStringz(name)));
	}

	/**
	 * Parses @hdrs's Range header and returns an array of the requested
	 * byte ranges. The returned array must be freed with
	 * soup_message_headers_free_ranges().
	 *
	 * If @total_length is non-0, its value will be used to adjust the
	 * returned ranges to have explicit start and end values, and the
	 * returned ranges will be sorted and non-overlapping. If
	 * @total_length is 0, then some ranges may have an end value of -1,
	 * as described under #SoupRange, and some of the ranges may be
	 * redundant.
	 *
	 * Beware that even if given a @total_length, this function does not
	 * check that the ranges are satisfiable.
	 *
	 * <note><para>
	 * #SoupServer has built-in handling for range requests. If your
	 * server handler returns a %SOUP_STATUS_OK response containing the
	 * complete response body (rather than pausing the message and
	 * returning some of the response body later), and there is a Range
	 * header in the request, then libsoup will automatically convert the
	 * response to a %SOUP_STATUS_PARTIAL_CONTENT response containing only
	 * the range(s) requested by the client.
	 *
	 * The only time you need to process the Range header yourself is if
	 * either you need to stream the response body rather than returning
	 * it all at once, or you do not already have the complete response
	 * body available, and only want to generate the parts that were
	 * actually requested by the client.
	 * </para></note>
	 *
	 * Params:
	 *     totalLength = the total_length of the response body
	 *     ranges = return location for an array
	 *         of #SoupRange
	 *
	 * Returns: %TRUE if @hdrs contained a syntactically-valid
	 *     "Range" header, %FALSE otherwise (in which case @range and @length
	 *     will not be set).
	 *
	 * Since: 2.26
	 */
	public bool getRanges(long totalLength, out SoupRange[] ranges)
	{
		SoupRange* outranges;
		int length;

		auto __p = soup_message_headers_get_ranges(soupMessageHeaders, totalLength, &outranges, &length) != 0;

		ranges = outranges[0 .. length];

		return __p;
	}

	/**
	 * Checks whether the list-valued header @name is present in @hdrs,
	 * and contains a case-insensitive match for @token.
	 *
	 * (If @name is present in @hdrs, then this is equivalent to calling
	 * soup_header_contains() on its value.)
	 *
	 * Params:
	 *     name = header name
	 *     token = token to look for
	 *
	 * Returns: %TRUE if the header is present and contains @token,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.50
	 */
	public bool headerContains(string name, string token)
	{
		return soup_message_headers_header_contains(soupMessageHeaders, Str.toStringz(name), Str.toStringz(token)) != 0;
	}

	/**
	 * Checks whether the header @name is present in @hdrs and is
	 * (case-insensitively) equal to @value.
	 *
	 * Params:
	 *     name = header name
	 *     value = expected value
	 *
	 * Returns: %TRUE if the header is present and its value is
	 *     @value, %FALSE otherwise.
	 *
	 * Since: 2.50
	 */
	public bool headerEquals(string name, string value)
	{
		return soup_message_headers_header_equals(soupMessageHeaders, Str.toStringz(name), Str.toStringz(value)) != 0;
	}

	/**
	 * Removes @name from @hdrs. If there are multiple values for @name,
	 * they are all removed.
	 *
	 * Params:
	 *     name = the header name to remove
	 */
	public void remove(string name)
	{
		soup_message_headers_remove(soupMessageHeaders, Str.toStringz(name));
	}

	/**
	 * Replaces the value of the header @name in @hdrs with @value. (See
	 * also soup_message_headers_append().)
	 *
	 * The caller is expected to make sure that @name and @value are
	 * syntactically correct.
	 *
	 * Params:
	 *     name = the header name to replace
	 *     value = the new value of @name
	 */
	public void replace(string name, string value)
	{
		soup_message_headers_replace(soupMessageHeaders, Str.toStringz(name), Str.toStringz(value));
	}

	/**
	 * Sets the "Content-Disposition" header in @hdrs to @disposition,
	 * optionally with additional parameters specified in @params.
	 *
	 * See soup_message_headers_get_content_disposition() for a discussion
	 * of how Content-Disposition is used in HTTP.
	 *
	 * Params:
	 *     disposition = the disposition-type
	 *     params = additional
	 *         parameters, or %NULL
	 *
	 * Since: 2.26
	 */
	public void setContentDisposition(string disposition, HashTable params)
	{
		soup_message_headers_set_content_disposition(soupMessageHeaders, Str.toStringz(disposition), (params is null) ? null : params.getHashTableStruct());
	}

	/**
	 * Sets the message body length that @hdrs will declare, and sets
	 * @hdrs's encoding to %SOUP_ENCODING_CONTENT_LENGTH.
	 *
	 * You do not normally need to call this; if @hdrs is set to use
	 * Content-Length encoding, libsoup will automatically set its
	 * Content-Length header for you immediately before sending the
	 * headers. One situation in which this method is useful is when
	 * generating the response to a HEAD request; Calling
	 * soup_message_headers_set_content_length() allows you to put the
	 * correct content length into the response without needing to waste
	 * memory by filling in a response body which won't actually be sent.
	 *
	 * Params:
	 *     contentLength = the message body length
	 */
	public void setContentLength(long contentLength)
	{
		soup_message_headers_set_content_length(soupMessageHeaders, contentLength);
	}

	/**
	 * Sets @hdrs's Content-Range header according to the given values.
	 * (Note that @total_length is the total length of the entire resource
	 * that this is a range of, not simply @end - @start + 1.)
	 *
	 * <note><para>
	 * #SoupServer has built-in handling for range requests, and you do
	 * not normally need to call this function youself. See
	 * soup_message_headers_get_ranges() for more details.
	 * </para></note>
	 *
	 * Params:
	 *     start = the start of the range
	 *     end = the end of the range
	 *     totalLength = the total length of the resource, or -1 if unknown
	 *
	 * Since: 2.26
	 */
	public void setContentRange(long start, long end, long totalLength)
	{
		soup_message_headers_set_content_range(soupMessageHeaders, start, end, totalLength);
	}

	/**
	 * Sets the "Content-Type" header in @hdrs to @content_type,
	 * optionally with additional parameters specified in @params.
	 *
	 * Params:
	 *     contentType = the MIME type
	 *     params = additional
	 *         parameters, or %NULL
	 *
	 * Since: 2.26
	 */
	public void setContentType(string contentType, HashTable params)
	{
		soup_message_headers_set_content_type(soupMessageHeaders, Str.toStringz(contentType), (params is null) ? null : params.getHashTableStruct());
	}

	/**
	 * Sets the message body encoding that @hdrs will declare. In particular,
	 * you should use this if you are going to send a request or response in
	 * chunked encoding.
	 *
	 * Params:
	 *     encoding = a #SoupEncoding
	 */
	public void setEncoding(SoupEncoding encoding)
	{
		soup_message_headers_set_encoding(soupMessageHeaders, encoding);
	}

	/**
	 * Sets @hdrs's "Expect" header according to @expectations.
	 *
	 * Currently %SOUP_EXPECTATION_CONTINUE is the only known expectation
	 * value. You should set this value on a request if you are sending a
	 * large message body (eg, via POST or PUT), and want to give the
	 * server a chance to reject the request after seeing just the headers
	 * (eg, because it will require authentication before allowing you to
	 * post, or because you're POSTing to a URL that doesn't exist). This
	 * saves you from having to transmit the large request body when the
	 * server is just going to ignore it anyway.
	 *
	 * Params:
	 *     expectations = the expectations to set
	 */
	public void setExpectations(SoupExpectation expectations)
	{
		soup_message_headers_set_expectations(soupMessageHeaders, expectations);
	}

	/**
	 * Sets @hdrs's Range header to request the indicated range.
	 * @start and @end are interpreted as in a #SoupRange.
	 *
	 * If you need to request multiple ranges, use
	 * soup_message_headers_set_ranges().
	 *
	 * Params:
	 *     start = the start of the range to request
	 *     end = the end of the range to request
	 *
	 * Since: 2.26
	 */
	public void setRange(long start, long end)
	{
		soup_message_headers_set_range(soupMessageHeaders, start, end);
	}

	/**
	 * Sets @hdrs's Range header to request the indicated ranges. (If you
	 * only want to request a single range, you can use
	 * soup_message_headers_set_range().)
	 *
	 * Params:
	 *     ranges = an array of #SoupRange
	 *     length = the length of @range
	 *
	 * Since: 2.26
	 */
	public void setRanges(SoupRange* ranges, int length)
	{
		soup_message_headers_set_ranges(soupMessageHeaders, ranges, length);
	}
}
