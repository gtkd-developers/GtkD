/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: No
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
 * 	- glib.ListSG
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Str
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


private import glib.ListSG;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;




/**
 * Description
 * The "GMarkup" parser is intended to parse a simple markup format
 * that's a subset of XML. This is a small, efficient, easy-to-use
 * parser. It should not be used if you expect to interoperate with other
 * applications generating full-scale XML. However, it's very useful for
 * application data files, config files, etc. where you know your
 * application will be the only one writing the file. Full-scale XML
 * parsers should be able to parse the subset used by GMarkup, so you can
 * easily migrate to full-scale XML at a later time if the need arises.
 * GMarkup is not guaranteed to signal an error on all invalid XML; the
 * parser may accept documents that an XML parser would not. However, XML
 * documents which are not well-formed[5] are not considered valid GMarkup
 * documents.
 * Simplifications to XML include:
 * Only UTF-8 encoding is allowed.
 * No user-defined entities.
 * Processing instructions, comments and the doctype declaration are "passed
 * through" but are not interpreted in any way.
 * No DTD or validation.
 * The markup format does support:
 * Elements
 * Attributes
 * 5 standard entities: amp; lt; gt; quot; apos;
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
		if(gMarkupParseContext is null)
		{
			this = null;
			return;
		}
		this.gMarkupParseContext = gMarkupParseContext;
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
	 * Params:
	 * text =  some valid UTF-8 text
	 * length =  length of text in bytes, or -1 if the text is nul-terminated
	 * Returns: a newly allocated string with the escaped text
	 */
	public static string escapeText(string text, int length)
	{
		// gchar* g_markup_escape_text (const gchar *text,  gssize length);
		return Str.toString(g_markup_escape_text(Str.toStringz(text), length));
	}
	
	/**
	 * Formats arguments according to format, escaping
	 * all string and character arguments in the fashion
	 * of g_markup_escape_text(). This is useful when you
	 * want to insert literal strings into XML-style markup
	 * output, without having to worry that the strings
	 * might themselves contain markup.
	 * const char *store = "Fortnum  Mason";
	 * const char *item = "Tea";
	 * char *output;
	 * output = g_markup_printf_escaped ("<purchase>"
	 *  "<store>%s</store>"
	 *  "<item>%s</item>"
	 *  "</purchase>",
	 *  store, item);
	 * Since 2.4
	 * Params:
	 * format =  printf() style format string
	 * ... =  the arguments to insert in the format string
	 * Returns: newly allocated result from formatting operation. Free with g_free().
	 */
	public static string printfEscaped(string format, ... )
	{
		// gchar* g_markup_printf_escaped (const char *format,  ...);
		return Str.toString(g_markup_printf_escaped(Str.toStringz(format)));
	}
	
	/**
	 * Formats the data in args according to format, escaping
	 * all string and character arguments in the fashion
	 * of g_markup_escape_text(). See g_markup_printf_escaped().
	 * Since 2.4
	 * Params:
	 * format =  printf() style format string
	 * args =  variable argument list, similar to vprintf()
	 * Returns: newly allocated result from formatting operation. Free with g_free().
	 */
	public static string vprintfEscaped(string format, void* args)
	{
		// gchar* g_markup_vprintf_escaped (const char *format,  va_list args);
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
	 * Frees a GMarkupParseContext. Can't be called from inside
	 * one of the GMarkupParser functions.
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
	 * lineNumber =  return location for a line number, or NULL
	 * charNumber =  return location for a char-on-line number, or NULL
	 */
	public void getPosition(int* lineNumber, int* charNumber)
	{
		// void g_markup_parse_context_get_position (GMarkupParseContext *context,  gint *line_number,  gint *char_number);
		g_markup_parse_context_get_position(gMarkupParseContext, lineNumber, charNumber);
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
		// const gchar* g_markup_parse_context_get_element (GMarkupParseContext *context);
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
		// const GSList* g_markup_parse_context_get_element_stack  (GMarkupParseContext *context);
		auto p = g_markup_parse_context_get_element_stack(gMarkupParseContext);
		if(p is null)
		{
			return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Creates a new parse context. A parse context is used to parse
	 * marked-up documents. You can feed any number of documents into
	 * a context, as long as no errors occur; once an error occurs,
	 * the parse context can't continue to parse text (you have to free it
	 * and create a new parse context).
	 * Params:
	 * parser =  a GMarkupParser
	 * flags =  one or more GMarkupParseFlags
	 * userData =  user data to pass to GMarkupParser functions
	 * userDataDnotify =  user data destroy notifier called when the parse context is freed
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify)
	{
		// GMarkupParseContext* g_markup_parse_context_new (const GMarkupParser *parser,  GMarkupParseFlags flags,  gpointer user_data,  GDestroyNotify user_data_dnotify);
		auto p = g_markup_parse_context_new(parser, flags, userData, userDataDnotify);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_markup_parse_context_new(parser, flags, userData, userDataDnotify)");
		}
		this(cast(GMarkupParseContext*) p);
	}
	
	/**
	 * Feed some data to the GMarkupParseContext. The data need not
	 * be valid UTF-8; an error will be signaled if it's invalid.
	 * The data need not be an entire document; you can feed a document
	 * into the parser incrementally, via multiple calls to this function.
	 * Typically, as you receive data from a network connection or file,
	 * you feed each received chunk of data into this function, aborting
	 * the process if an error occurs. Once an error is reported, no further
	 * data may be fed to the GMarkupParseContext; all errors are fatal.
	 * Params:
	 * text =  chunk of text to parse
	 * textLen =  length of text in bytes
	 * Returns: FALSE if an error occurred, TRUE on success
	 * Throws: GException on failure.
	 */
	public int parse(string text, int textLen)
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
	 * Collects the attributes of the element from the
	 * data passed to the GMarkupParser start_element
	 * function, dealing with common error conditions
	 * and supporting boolean values.
	 * This utility function is not required to write
	 * a parser but can save a lot of typing.
	 * The element_name, attribute_names,
	 * attribute_values and error parameters passed
	 * to the start_element callback should be passed
	 * unmodified to this function.
	 * Following these arguments is a list of
	 * "supported" attributes to collect. It is an
	 * error to specify multiple attributes with the
	 * same name. If any attribute not in the list
	 * appears in the attribute_names array then an
	 * unknown attribute error will result.
	 * The GMarkupCollectType field allows specifying
	 * the type of collection to perform and if a
	 * given attribute must appear or is optional.
	 * The attribute name is simply the name of the
	 * attribute to collect.
	 * The pointer should be of the appropriate type
	 * (see the descriptions under
	 * GMarkupCollectType) and may be NULL in case a
	 * particular attribute is to be allowed but
	 * ignored.
	 * This function deals with issuing errors for missing attributes
	 * (of type G_MARKUP_ERROR_MISSING_ATTRIBUTE), unknown attributes
	 * (of type G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE) and duplicate
	 * attributes (of type G_MARKUP_ERROR_INVALID_CONTENT) as well
	 * as parse errors for boolean-valued attributes (again of type
	 * G_MARKUP_ERROR_INVALID_CONTENT). In all of these cases FALSE
	 * will be returned and error will be set as appropriate.
	 * Since 2.16
	 * Params:
	 * elementName =  the current tag name
	 * attributeNames =  the attribute names
	 * attributeValues =  the attribute values
	 * firstType =  the GMarkupCollectType of the
	 *  first attribute
	 * firstAttr =  the name of the first attribute
	 * ... =  a pointer to the storage location of the
	 *  first attribute (or NULL), followed by
	 *  more types names and pointers, ending
	 *  with G_MARKUP_COLLECT_INVALID.
	 * Returns: TRUE if successful
	 * Throws: GException on failure.
	 */
	public static int collectAttributes(string elementName, char** attributeNames, char** attributeValues, GMarkupCollectType firstType, string firstAttr, ... )
	{
		// gboolean g_markup_collect_attributes (const gchar *element_name,  const gchar **attribute_names,  const gchar **attribute_values,  GError **error,  GMarkupCollectType first_type,  const gchar *first_attr,  ...);
		GError* err = null;
		
		auto p = g_markup_collect_attributes(Str.toStringz(elementName), attributeNames, attributeValues, &err, firstType, Str.toStringz(firstAttr));
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
