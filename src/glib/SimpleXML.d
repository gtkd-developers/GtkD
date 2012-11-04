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
 * inFile  = glib-Simple-XML-Subset-Parser.html
 * outPack = glib
 * outFile = SimpleXML
 * strct   = GMarkupParseContext
 * realStrct=
 * ctorStrct=
 * clss    = SimpleXML
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_markup_parse_context_
 * 	- g_markup_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListSG
 * 	- gtkc.Loader
 * 	- gtkc.paths
 * structWrap:
 * 	- GSList* -> ListSG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.SimpleXML;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import gtkc.Loader;
private import gtkc.paths;




/**
 * Description
 * The "GMarkup" parser is intended to parse a simple markup format
 * that's a subset of XML. This is a small, efficient, easy-to-use
 * parser. It should not be used if you expect to interoperate with
 * other applications generating full-scale XML. However, it's very
 * useful for application data files, config files, etc. where you
 * know your application will be the only one writing the file.
 * Full-scale XML parsers should be able to parse the subset used by
 * GMarkup, so you can easily migrate to full-scale XML at a later
 * time if the need arises.
 * GMarkup is not guaranteed to signal an error on all invalid XML;
 * the parser may accept documents that an XML parser would not.
 * However, XML documents which are not well-formed[6]
 * are not considered valid GMarkup documents.
 * Simplifications to XML include:
 * Only UTF-8 encoding is allowed
 * No user-defined entities
 * Processing instructions, comments and the doctype declaration
 * are "passed through" but are not interpreted in any way
 * No DTD or validation.
 * The markup format does support:
 * Elements
 * Attributes
 * 5 standard entities:
 *  amp; lt; gt; quot; apos;
 * Character references
 * Sections marked as CDATA
 */
public class SimpleXML
{
	
	/** the main Gtk struct */
	protected GMarkupParseContext* gMarkupParseContext;
	
	
	public GMarkupParseContext* getSimpleXMLStruct()
	{
		return gMarkupParseContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMarkupParseContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMarkupParseContext* gMarkupParseContext)
	{
		this.gMarkupParseContext = gMarkupParseContext;
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.GLIB) && gMarkupParseContext !is null )
		{
			g_markup_parse_context_free(gMarkupParseContext);
		}
	}
	
	/**
	 */
	
	/**
	 * Escapes text so that the markup parser will parse it verbatim.
	 * Less than, greater than, ampersand, etc. are replaced with the
	 * corresponding entities. This function would typically be used
	 * when writing out a file to be parsed with the markup parser.
	 * Note that this function doesn't protect whitespace and line endings
	 * from being processed according to the XML rules for normalization
	 * of line endings and attribute values.
	 * Note also that this function will produce character references in
	 * the range of x1; ... x1f; for all control sequences
	 * except for tabstop, newline and carriage return. The character
	 * references in this range are not valid XML 1.0, but they are
	 * valid XML 1.1 and will be accepted by the GMarkup parser.
	 * Params:
	 * text = some valid UTF-8 text
	 * length = length of text in bytes, or -1 if the text is nul-terminated
	 * Returns: a newly allocated string with the escaped text
	 */
	public static string escapeText(string text, gssize length)
	{
		// gchar * g_markup_escape_text (const gchar *text,  gssize length);
		return Str.toString(g_markup_escape_text(Str.toStringz(text), length));
	}
	
	/**
	 * Formats the data in args according to format, escaping
	 * all string and character arguments in the fashion
	 * of g_markup_escape_text(). See g_markup_printf_escaped().
	 * Since 2.4
	 * Params:
	 * format = printf() style format string
	 * args = variable argument list, similar to vprintf()
	 * Returns: newly allocated result from formatting operation. Free with g_free().
	 */
	public static string vprintfEscaped(string format, void* args)
	{
		// gchar * g_markup_vprintf_escaped (const char *format,  va_list args);
		return Str.toString(g_markup_vprintf_escaped(Str.toStringz(format), args));
	}
	
	/**
	 * Signals to the GMarkupParseContext that all data has been
	 * fed into the parse context with g_markup_parse_context_parse().
	 * This function reports an error if the document isn't complete,
	 * for example if elements are still open.
	 * Returns: TRUE on success, FALSE if an error was set
	 * Throws: GException on failure.
	 */
	public int endParse()
	{
		// gboolean g_markup_parse_context_end_parse (GMarkupParseContext *context,  GError **error);
		GError* err = null;
		
		auto p = g_markup_parse_context_end_parse(gMarkupParseContext, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Frees a GMarkupParseContext.
	 * This function can't be called from inside one of the
	 * GMarkupParser functions or while a subparser is pushed.
	 */
	public void free()
	{
		// void g_markup_parse_context_free (GMarkupParseContext *context);
		g_markup_parse_context_free(gMarkupParseContext);
	}
	
	/**
	 * Retrieves the current line number and the number of the character on
	 * that line. Intended for use in error messages; there are no strict
	 * semantics for what constitutes the "current" line number other than
	 * "the best number we could come up with for error messages."
	 * Params:
	 * lineNumber = return location for a line number, or NULL. [allow-none]
	 * charNumber = return location for a char-on-line number, or NULL. [allow-none]
	 */
	public void getPosition(out int lineNumber, out int charNumber)
	{
		// void g_markup_parse_context_get_position (GMarkupParseContext *context,  gint *line_number,  gint *char_number);
		g_markup_parse_context_get_position(gMarkupParseContext, &lineNumber, &charNumber);
	}
	
	/**
	 * Retrieves the name of the currently open element.
	 * If called from the start_element or end_element handlers this will
	 * give the element_name as passed to those functions. For the parent
	 * elements, see g_markup_parse_context_get_element_stack().
	 * Since 2.2
	 * Returns: the name of the currently open element, or NULL
	 */
	public string getElement()
	{
		// const gchar * g_markup_parse_context_get_element (GMarkupParseContext *context);
		return Str.toString(g_markup_parse_context_get_element(gMarkupParseContext));
	}
	
	/**
	 * Retrieves the element stack from the internal state of the parser.
	 * The returned GSList is a list of strings where the first item is
	 * the currently open tag (as would be returned by
	 * g_markup_parse_context_get_element()) and the next item is its
	 * immediate parent.
	 * This function is intended to be used in the start_element and
	 * end_element handlers where g_markup_parse_context_get_element()
	 * would merely return the name of the element that is being
	 * processed.
	 * Since 2.16
	 * Returns: the element stack, which must not be modified
	 */
	public ListSG getElementStack()
	{
		// const GSList * g_markup_parse_context_get_element_stack  (GMarkupParseContext *context);
		auto p = g_markup_parse_context_get_element_stack(gMarkupParseContext);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Returns the user_data associated with context.
	 * This will either be the user_data that was provided to
	 * g_markup_parse_context_new() or to the most recent call
	 * of g_markup_parse_context_push().
	 * Since 2.18
	 * Returns: the provided user_data. The returned data belongs to the markup context and will be freed when g_markup_parse_context_free() is called.
	 */
	public void* getUserData()
	{
		// gpointer g_markup_parse_context_get_user_data  (GMarkupParseContext *context);
		return g_markup_parse_context_get_user_data(gMarkupParseContext);
	}
	
	/**
	 * Creates a new parse context. A parse context is used to parse
	 * marked-up documents. You can feed any number of documents into
	 * a context, as long as no errors occur; once an error occurs,
	 * the parse context can't continue to parse text (you have to
	 * free it and create a new parse context).
	 * Params:
	 * parser = a GMarkupParser
	 * flags = one or more GMarkupParseFlags
	 * userData = user data to pass to GMarkupParser functions
	 * userDataDnotify = user data destroy notifier called when
	 * the parse context is freed
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify)
	{
		// GMarkupParseContext * g_markup_parse_context_new (const GMarkupParser *parser,  GMarkupParseFlags flags,  gpointer user_data,  GDestroyNotify user_data_dnotify);
		auto p = g_markup_parse_context_new(parser, flags, userData, userDataDnotify);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_markup_parse_context_new(parser, flags, userData, userDataDnotify)");
		}
		this(cast(GMarkupParseContext*) p);
	}
	
	/**
	 * Feed some data to the GMarkupParseContext.
	 * The data need not be valid UTF-8; an error will be signaled if
	 * it's invalid. The data need not be an entire document; you can
	 * feed a document into the parser incrementally, via multiple calls
	 * to this function. Typically, as you receive data from a network
	 * connection or file, you feed each received chunk of data into this
	 * function, aborting the process if an error occurs. Once an error
	 * is reported, no further data may be fed to the GMarkupParseContext;
	 * all errors are fatal.
	 * Params:
	 * text = chunk of text to parse
	 * textLen = length of text in bytes
	 * Returns: FALSE if an error occurred, TRUE on success
	 * Throws: GException on failure.
	 */
	public int parse(string text, gssize textLen)
	{
		// gboolean g_markup_parse_context_parse (GMarkupParseContext *context,  const gchar *text,  gssize text_len,  GError **error);
		GError* err = null;
		
		auto p = g_markup_parse_context_parse(gMarkupParseContext, Str.toStringz(text), textLen, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Temporarily redirects markup data to a sub-parser.
	 * This function may only be called from the start_element handler of
	 * a GMarkupParser. It must be matched with a corresponding call to
	 * g_markup_parse_context_pop() in the matching end_element handler
	 * (except in the case that the parser aborts due to an error).
	 * All tags, text and other data between the matching tags is
	 * redirected to the subparser given by parser. user_data is used
	 * as the user_data for that parser. user_data is also passed to the
	 * error callback in the event that an error occurs. This includes
	 * errors that occur in subparsers of the subparser.
	 * The end tag matching the start tag for which this call was made is
	 * handled by the previous parser (which is given its own user_data)
	 * which is why g_markup_parse_context_pop() is provided to allow "one
	 * last access" to the user_data provided to this function. In the
	 * case of error, the user_data provided here is passed directly to
	 * the error callback of the subparser and g_markup_parse_context_pop()
	 * should not be called. In either case, if user_data was allocated
	 * then it ought to be freed from both of these locations.
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to be
	 * used by the subparsers themselves to implement a higher-level
	 * interface.
	 * As an example, see the following implementation of a simple
	 * parser that counts the number of tags encountered.
	 * $(DDOC_COMMENT example)
	 * In order to allow this parser to be easily used as a subparser, the
	 * Since 2.18
	 * Params:
	 * parser = a GMarkupParser
	 * userData = user data to pass to GMarkupParser functions
	 */
	public void push(GMarkupParser* parser, void* userData)
	{
		// void g_markup_parse_context_push (GMarkupParseContext *context,  const GMarkupParser *parser,  gpointer user_data);
		g_markup_parse_context_push(gMarkupParseContext, parser, userData);
	}
	
	/**
	 * Completes the process of a temporary sub-parser redirection.
	 * This function exists to collect the user_data allocated by a
	 * matching call to g_markup_parse_context_push(). It must be called
	 * in the end_element handler corresponding to the start_element
	 * handler during which g_markup_parse_context_push() was called.
	 * You must not call this function from the error callback -- the
	 * user_data is provided directly to the callback in that case.
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to
	 * be used by the subparsers themselves to implement a higher-level
	 * interface.
	 * Since 2.18
	 * Returns: the user data passed to g_markup_parse_context_push()
	 */
	public void* pop()
	{
		// gpointer g_markup_parse_context_pop (GMarkupParseContext *context);
		return g_markup_parse_context_pop(gMarkupParseContext);
	}
}
