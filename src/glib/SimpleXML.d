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
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.Dataset
 * 	- glib.Str
 * structWrap:
 * 	- GDataset* -> Dataset
 * module aliases:
 * local aliases:
 */

module glib.SimpleXML;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.glibtypes;

private import gtkc.glib;


private import glib.ErrorG;
private import glib.Dataset;
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
 * documents which are not well-formed[4] are not considered valid GMarkup
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
		version(noAssert)
		{
			if ( gMarkupParseContext is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gMarkupParseContext is null on constructor").newline;
				}
				else
				{
					printf("struct gMarkupParseContext is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gMarkupParseContext !is null, "struct gMarkupParseContext is null on constructor");
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
	public static char[] gMarkupEscapeText(char[] text, int length)
	{
		// gchar* g_markup_escape_text (const gchar *text,  gssize length);
		return Str.toString(g_markup_escape_text(Str.toStringz(text), length) );
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
	public static char[] gMarkupPrintfEscaped(char[] format, ... )
	{
		// gchar* g_markup_printf_escaped (const char *format,  ...);
		return Str.toString(g_markup_printf_escaped(Str.toStringz(format)) );
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
	public static char[] gMarkupVprintfEscaped(char[] format, void* args)
	{
		// gchar* g_markup_vprintf_escaped (const char *format,  va_list args);
		return Str.toString(g_markup_vprintf_escaped(Str.toStringz(format), args) );
	}
	
	/**
	 * Signals to the GMarkupParseContext that all data has been
	 * fed into the parse context with g_markup_parse_context_parse().
	 * This function reports an error if the document isn't complete,
	 * for example if elements are still open.
	 * Params:
	 * error =  return location for a GError
	 * Returns: TRUE on success, FALSE if an error was set
	 */
	public int endParse(GError** error)
	{
		// gboolean g_markup_parse_context_end_parse (GMarkupParseContext *context,  GError **error);
		return g_markup_parse_context_end_parse(gMarkupParseContext, error);
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
	 * Since 2.2
	 * Returns: the name of the currently open element, or NULL
	 */
	public char[] getElement()
	{
		// const gchar* g_markup_parse_context_get_element (GMarkupParseContext *context);
		return Str.toString(g_markup_parse_context_get_element(gMarkupParseContext) );
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
	 */
	public this (GMarkupParser* parser, GMarkupParseFlags flags, void* userData, GDestroyNotify userDataDnotify)
	{
		// GMarkupParseContext* g_markup_parse_context_new (const GMarkupParser *parser,  GMarkupParseFlags flags,  gpointer user_data,  GDestroyNotify user_data_dnotify);
		this(cast(GMarkupParseContext*)g_markup_parse_context_new(parser, flags, userData, userDataDnotify) );
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
	 * error =  return location for a GError
	 * Returns: FALSE if an error occurred, TRUE on success
	 */
	public int parse(char[] text, int textLen, GError** error)
	{
		// gboolean g_markup_parse_context_parse (GMarkupParseContext *context,  const gchar *text,  gssize text_len,  GError **error);
		return g_markup_parse_context_parse(gMarkupParseContext, Str.toStringz(text), textLen, error);
	}
}
