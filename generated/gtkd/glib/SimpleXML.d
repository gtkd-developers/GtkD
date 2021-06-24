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


module glib.SimpleXML;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * A parse context is used to parse a stream of bytes that
 * you expect to contain marked-up text.
 * 
 * See g_markup_parse_context_new(), #GMarkupParser, and so
 * on for more details.
 */
public class SimpleXML
{
	/** the main Gtk struct */
	protected GMarkupParseContext* gMarkupParseContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GMarkupParseContext* getSimpleXMLStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMarkupParseContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMarkupParseContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMarkupParseContext* gMarkupParseContext, bool ownedRef = false)
	{
		this.gMarkupParseContext = gMarkupParseContext;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_markup_parse_context_unref(gMarkupParseContext);
	}


	/**
	 * Creates a new parse context. A parse context is used to parse
	 * marked-up documents. You can feed any number of documents into
	 * a context, as long as no errors occur; once an error occurs,
	 * the parse context can't continue to parse text (you have to
	 * free it and create a new parse context).
	 *
	 * Params:
	 *     parser = a #GMarkupParser
	 *     flags = one or more #GMarkupParseFlags
	 *     userData = user data to pass to #GMarkupParser functions
	 *     userDataDnotify = user data destroy notifier called when
	 *         the parse context is freed
	 *
	 * Returns: a new #GMarkupParseContext
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify)
	{
		auto __p = g_markup_parse_context_new(parser, flags, userData, userDataDnotify);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMarkupParseContext*) __p);
	}

	/**
	 * Signals to the #GMarkupParseContext that all data has been
	 * fed into the parse context with g_markup_parse_context_parse().
	 *
	 * This function reports an error if the document isn't complete,
	 * for example if elements are still open.
	 *
	 * Returns: %TRUE on success, %FALSE if an error was set
	 *
	 * Throws: GException on failure.
	 */
	public bool endParse()
	{
		GError* err = null;

		auto __p = g_markup_parse_context_end_parse(gMarkupParseContext, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Frees a #GMarkupParseContext.
	 *
	 * This function can't be called from inside one of the
	 * #GMarkupParser functions or while a subparser is pushed.
	 */
	public void free()
	{
		g_markup_parse_context_free(gMarkupParseContext);
		ownedRef = false;
	}

	/**
	 * Retrieves the name of the currently open element.
	 *
	 * If called from the start_element or end_element handlers this will
	 * give the element_name as passed to those functions. For the parent
	 * elements, see g_markup_parse_context_get_element_stack().
	 *
	 * Returns: the name of the currently open element, or %NULL
	 *
	 * Since: 2.2
	 */
	public string getElement()
	{
		return Str.toString(g_markup_parse_context_get_element(gMarkupParseContext));
	}

	/**
	 * Retrieves the element stack from the internal state of the parser.
	 *
	 * The returned #GSList is a list of strings where the first item is
	 * the currently open tag (as would be returned by
	 * g_markup_parse_context_get_element()) and the next item is its
	 * immediate parent.
	 *
	 * This function is intended to be used in the start_element and
	 * end_element handlers where g_markup_parse_context_get_element()
	 * would merely return the name of the element that is being
	 * processed.
	 *
	 * Returns: the element stack, which must not be modified
	 *
	 * Since: 2.16
	 */
	public ListSG getElementStack()
	{
		auto __p = g_markup_parse_context_get_element_stack(gMarkupParseContext);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Retrieves the current line number and the number of the character on
	 * that line. Intended for use in error messages; there are no strict
	 * semantics for what constitutes the "current" line number other than
	 * "the best number we could come up with for error messages."
	 *
	 * Params:
	 *     lineNumber = return location for a line number, or %NULL
	 *     charNumber = return location for a char-on-line number, or %NULL
	 */
	public void getPosition(out int lineNumber, out int charNumber)
	{
		g_markup_parse_context_get_position(gMarkupParseContext, &lineNumber, &charNumber);
	}

	/**
	 * Returns the user_data associated with @context.
	 *
	 * This will either be the user_data that was provided to
	 * g_markup_parse_context_new() or to the most recent call
	 * of g_markup_parse_context_push().
	 *
	 * Returns: the provided user_data. The returned data belongs to
	 *     the markup context and will be freed when
	 *     g_markup_parse_context_free() is called.
	 *
	 * Since: 2.18
	 */
	public void* getUserData()
	{
		return g_markup_parse_context_get_user_data(gMarkupParseContext);
	}

	/**
	 * Feed some data to the #GMarkupParseContext.
	 *
	 * The data need not be valid UTF-8; an error will be signaled if
	 * it's invalid. The data need not be an entire document; you can
	 * feed a document into the parser incrementally, via multiple calls
	 * to this function. Typically, as you receive data from a network
	 * connection or file, you feed each received chunk of data into this
	 * function, aborting the process if an error occurs. Once an error
	 * is reported, no further data may be fed to the #GMarkupParseContext;
	 * all errors are fatal.
	 *
	 * Params:
	 *     text = chunk of text to parse
	 *     textLen = length of @text in bytes
	 *
	 * Returns: %FALSE if an error occurred, %TRUE on success
	 *
	 * Throws: GException on failure.
	 */
	public bool parse(string text, ptrdiff_t textLen)
	{
		GError* err = null;

		auto __p = g_markup_parse_context_parse(gMarkupParseContext, Str.toStringz(text), textLen, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Completes the process of a temporary sub-parser redirection.
	 *
	 * This function exists to collect the user_data allocated by a
	 * matching call to g_markup_parse_context_push(). It must be called
	 * in the end_element handler corresponding to the start_element
	 * handler during which g_markup_parse_context_push() was called.
	 * You must not call this function from the error callback -- the
	 * @user_data is provided directly to the callback in that case.
	 *
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to
	 * be used by the subparsers themselves to implement a higher-level
	 * interface.
	 *
	 * Returns: the user data passed to g_markup_parse_context_push()
	 *
	 * Since: 2.18
	 */
	public void* pop()
	{
		return g_markup_parse_context_pop(gMarkupParseContext);
	}

	/**
	 * Temporarily redirects markup data to a sub-parser.
	 *
	 * This function may only be called from the start_element handler of
	 * a #GMarkupParser. It must be matched with a corresponding call to
	 * g_markup_parse_context_pop() in the matching end_element handler
	 * (except in the case that the parser aborts due to an error).
	 *
	 * All tags, text and other data between the matching tags is
	 * redirected to the subparser given by @parser. @user_data is used
	 * as the user_data for that parser. @user_data is also passed to the
	 * error callback in the event that an error occurs. This includes
	 * errors that occur in subparsers of the subparser.
	 *
	 * The end tag matching the start tag for which this call was made is
	 * handled by the previous parser (which is given its own user_data)
	 * which is why g_markup_parse_context_pop() is provided to allow "one
	 * last access" to the @user_data provided to this function. In the
	 * case of error, the @user_data provided here is passed directly to
	 * the error callback of the subparser and g_markup_parse_context_pop()
	 * should not be called. In either case, if @user_data was allocated
	 * then it ought to be freed from both of these locations.
	 *
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to be
	 * used by the subparsers themselves to implement a higher-level
	 * interface.
	 *
	 * As an example, see the following implementation of a simple
	 * parser that counts the number of tags encountered.
	 *
	 * |[<!-- language="C" -->
	 * typedef struct
	 * {
	 * gint tag_count;
	 * } CounterData;
	 *
	 * static void
	 * counter_start_element (GMarkupParseContext  *context,
	 * const gchar          *element_name,
	 * const gchar         **attribute_names,
	 * const gchar         **attribute_values,
	 * gpointer              user_data,
	 * GError              **error)
	 * {
	 * CounterData *data = user_data;
	 *
	 * data->tag_count++;
	 * }
	 *
	 * static void
	 * counter_error (GMarkupParseContext *context,
	 * GError              *error,
	 * gpointer             user_data)
	 * {
	 * CounterData *data = user_data;
	 *
	 * g_slice_free (CounterData, data);
	 * }
	 *
	 * static GMarkupParser counter_subparser =
	 * {
	 * counter_start_element,
	 * NULL,
	 * NULL,
	 * NULL,
	 * counter_error
	 * };
	 * ]|
	 *
	 * In order to allow this parser to be easily used as a subparser, the
	 * following interface is provided:
	 *
	 * |[<!-- language="C" -->
	 * void
	 * start_counting (GMarkupParseContext *context)
	 * {
	 * CounterData *data = g_slice_new (CounterData);
	 *
	 * data->tag_count = 0;
	 * g_markup_parse_context_push (context, &counter_subparser, data);
	 * }
	 *
	 * gint
	 * end_counting (GMarkupParseContext *context)
	 * {
	 * CounterData *data = g_markup_parse_context_pop (context);
	 * int result;
	 *
	 * result = data->tag_count;
	 * g_slice_free (CounterData, data);
	 *
	 * return result;
	 * }
	 * ]|
	 *
	 * The subparser would then be used as follows:
	 *
	 * |[<!-- language="C" -->
	 * static void start_element (context, element_name, ...)
	 * {
	 * if (strcmp (element_name, "count-these") == 0)
	 * start_counting (context);
	 *
	 * // else, handle other tags...
	 * }
	 *
	 * static void end_element (context, element_name, ...)
	 * {
	 * if (strcmp (element_name, "count-these") == 0)
	 * g_print ("Counted %d tags\n", end_counting (context));
	 *
	 * // else, handle other tags...
	 * }
	 * ]|
	 *
	 * Params:
	 *     parser = a #GMarkupParser
	 *     userData = user data to pass to #GMarkupParser functions
	 *
	 * Since: 2.18
	 */
	public void push(GMarkupParser* parser, void* userData)
	{
		g_markup_parse_context_push(gMarkupParseContext, parser, userData);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count of @context.
	 *
	 * Returns: the same @context
	 *
	 * Since: 2.36
	 */
	public SimpleXML ref_()
	{
		auto __p = g_markup_parse_context_ref(gMarkupParseContext);

		if(__p is null)
		{
			return null;
		}

		return new SimpleXML(cast(GMarkupParseContext*) __p, true);
	}

	/**
	 * Decreases the reference count of @context.  When its reference count
	 * drops to 0, it is freed.
	 *
	 * Since: 2.36
	 */
	public void unref()
	{
		g_markup_parse_context_unref(gMarkupParseContext);
	}

	/** */
	public static GQuark markupErrorQuark()
	{
		return g_markup_error_quark();
	}

	/**
	 * Escapes text so that the markup parser will parse it verbatim.
	 * Less than, greater than, ampersand, etc. are replaced with the
	 * corresponding entities. This function would typically be used
	 * when writing out a file to be parsed with the markup parser.
	 *
	 * Note that this function doesn't protect whitespace and line endings
	 * from being processed according to the XML rules for normalization
	 * of line endings and attribute values.
	 *
	 * Note also that this function will produce character references in
	 * the range of &#x1; ... &#x1f; for all control sequences
	 * except for tabstop, newline and carriage return.  The character
	 * references in this range are not valid XML 1.0, but they are
	 * valid XML 1.1 and will be accepted by the GMarkup parser.
	 *
	 * Params:
	 *     text = some valid UTF-8 text
	 *     length = length of @text in bytes, or -1 if the text is nul-terminated
	 *
	 * Returns: a newly allocated string with the escaped text
	 */
	public static string markupEscapeText(string text, ptrdiff_t length)
	{
		auto retStr = g_markup_escape_text(Str.toStringz(text), length);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Formats the data in @args according to @format, escaping
	 * all string and character arguments in the fashion
	 * of g_markup_escape_text(). See g_markup_printf_escaped().
	 *
	 * Params:
	 *     format = printf() style format string
	 *     args = variable argument list, similar to vprintf()
	 *
	 * Returns: newly allocated result from formatting
	 *     operation. Free with g_free().
	 *
	 * Since: 2.4
	 */
	public static string markupVprintfEscaped(string format, void* args)
	{
		auto retStr = g_markup_vprintf_escaped(Str.toStringz(format), args);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
