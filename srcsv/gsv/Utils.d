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
 * inFile  = gtksourceview-3.0-GtkSourceUtils.html
 * outPack = gsv
 * outFile = Utils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Utils
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_source_utils_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gsv.Utils;

public  import gsvc.gsvtypes;

private import gsvc.gsv;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Utilities functions.
 */
public class Utils
{
	
	/**
	 */
	
	/**
	 * Use this function before gtk_source_search_settings_set_search_text(), to
	 * unescape the following sequences of characters: \n, \r, \t and \\.
	 * The purpose is to easily write those characters in a search entry.
	 * Note that unescaping the search text is not needed for regular expression
	 * searches.
	 * See also: gtk_source_utils_escape_search_text().
	 * Params:
	 * text = the text to unescape.
	 * Returns: the unescaped text. Since 3.10
	 */
	public static string unescapeSearchText(string text)
	{
		// gchar * gtk_source_utils_unescape_search_text  (const gchar *text);
		return Str.toString(gtk_source_utils_unescape_search_text(Str.toStringz(text)));
	}
	
	/**
	 * Use this function to escape the following characters: \n, \r, \t and \.
	 * For a regular expression search, use g_regex_escape_string() instead.
	 * One possible use case is to take the GtkTextBuffer's selection and put it in a
	 * search entry. The selection can contain tabulations, newlines, etc. So it's
	 * better to escape those special characters to better fit in the search entry.
	 * See also: gtk_source_utils_unescape_search_text().
	 * Warning
	 * The escape and unescape functions are not reciprocal! For example,
	 * escape (unescape (\)) = \\. So avoid cycles such as: search entry -&gt; unescape
	 * -&gt; search settings -&gt; escape -&gt; search entry. The original search entry text
	 * may be modified.
	 * Params:
	 * text = the text to escape.
	 * Returns: the escaped text. Since 3.10
	 */
	public static string escapeSearchText(string text)
	{
		// gchar * gtk_source_utils_escape_search_text (const gchar *text);
		return Str.toString(gtk_source_utils_escape_search_text(Str.toStringz(text)));
	}
}
