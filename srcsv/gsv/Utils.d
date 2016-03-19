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


module gsv.Utils;

private import glib.Str;
private import gsvc.gsv;
public  import gsvc.gsvtypes;


/** */
public struct Utils
{

	/**
	 * Use this function to escape the following characters: \n, \r, \t and \.
	 *
	 * For a regular expression search, use g_regex_escape_string() instead.
	 *
	 * One possible use case is to take the #GtkTextBuffer's selection and put it in a
	 * search entry. The selection can contain tabulations, newlines, etc. So it's
	 * better to escape those special characters to better fit in the search entry.
	 *
	 * See also: gtk_source_utils_unescape_search_text().
	 *
	 * <warning>
	 * Warning: the escape and unescape functions are not reciprocal! For example,
	 * escape (unescape (\)) = \\. So avoid cycles such as: search entry -> unescape
	 * -> search settings -> escape -> search entry. The original search entry text
	 * may be modified.
	 * </warning>
	 *
	 * Params:
	 *     text = the text to escape.
	 *
	 * Return: the escaped @text.
	 *
	 * Since: 3.10
	 */
	public static string escapeSearchText(string text)
	{
		auto retStr = gtk_source_utils_escape_search_text(Str.toStringz(text));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Use this function before gtk_source_search_settings_set_search_text(), to
	 * unescape the following sequences of characters: \n, \r, \t and \\.
	 * The purpose is to easily write those characters in a search entry.
	 *
	 * Note that unescaping the search text is not needed for regular expression
	 * searches.
	 *
	 * See also: gtk_source_utils_escape_search_text().
	 *
	 * Params:
	 *     text = the text to unescape.
	 *
	 * Return: the unescaped @text.
	 *
	 * Since: 3.10
	 */
	public static string unescapeSearchText(string text)
	{
		auto retStr = gtk_source_utils_unescape_search_text(Str.toStringz(text));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
