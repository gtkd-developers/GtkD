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


module glib.ShellUtils;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct ShellUtils
{

	/** */
	public static GQuark shellErrorQuark()
	{
		return g_shell_error_quark();
	}

	/**
	 * Parses a command line into an argument vector, in much the same way
	 * the shell would, but without many of the expansions the shell would
	 * perform (variable expansion, globs, operators, filename expansion,
	 * etc. are not supported).
	 *
	 * The results are defined to be the same as those you would get from
	 * a UNIX98 `/bin/sh`, as long as the input contains none of the
	 * unsupported shell expansions. If the input does contain such expansions,
	 * they are passed through literally.
	 *
	 * Possible errors are those from the %G_SHELL_ERROR domain.
	 *
	 * In particular, if @command_line is an empty string (or a string containing
	 * only whitespace), %G_SHELL_ERROR_EMPTY_STRING will be returned. It’s
	 * guaranteed that @argvp will be a non-empty array if this function returns
	 * successfully.
	 *
	 * Free the returned vector with g_strfreev().
	 *
	 * Params:
	 *     commandLine = command line to parse
	 *     argvp = return location for array of args
	 *
	 * Returns: %TRUE on success, %FALSE if error set
	 *
	 * Throws: GException on failure.
	 */
	public static bool shellParseArgv(string commandLine, out string[] argvp)
	{
		int argcp;
		char** outargvp = null;
		GError* err = null;

		auto __p = g_shell_parse_argv(Str.toStringz(commandLine), &argcp, &outargvp, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		argvp = Str.toStringArray(outargvp, argcp);

		return __p;
	}

	/**
	 * Quotes a string so that the shell (/bin/sh) will interpret the
	 * quoted string to mean @unquoted_string.
	 *
	 * If you pass a filename to the shell, for example, you should first
	 * quote it with this function.
	 *
	 * The return value must be freed with g_free().
	 *
	 * The quoting style used is undefined (single or double quotes may be
	 * used).
	 *
	 * Params:
	 *     unquotedString = a literal string
	 *
	 * Returns: quoted string
	 */
	public static string shellQuote(string unquotedString)
	{
		auto retStr = g_shell_quote(Str.toStringz(unquotedString));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Unquotes a string as the shell (/bin/sh) would.
	 *
	 * This function only handles quotes; if a string contains file globs,
	 * arithmetic operators, variables, backticks, redirections, or other
	 * special-to-the-shell features, the result will be different from the
	 * result a real shell would produce (the variables, backticks, etc.
	 * will be passed through literally instead of being expanded).
	 *
	 * This function is guaranteed to succeed if applied to the result of
	 * g_shell_quote(). If it fails, it returns %NULL and sets the
	 * error.
	 *
	 * The @quoted_string need not actually contain quoted or escaped text;
	 * g_shell_unquote() simply goes through the string and unquotes/unescapes
	 * anything that the shell would. Both single and double quotes are
	 * handled, as are escapes including escaped newlines.
	 *
	 * The return value must be freed with g_free().
	 *
	 * Possible errors are in the %G_SHELL_ERROR domain.
	 *
	 * Shell quoting rules are a bit strange. Single quotes preserve the
	 * literal string exactly. escape sequences are not allowed; not even
	 * `\'` - if you want a `'` in the quoted text, you have to do something
	 * like `'foo'\''bar'`. Double quotes allow `$`, ```, `"`, `\`, and
	 * newline to be escaped with backslash. Otherwise double quotes
	 * preserve things literally.
	 *
	 * Params:
	 *     quotedString = shell-quoted string
	 *
	 * Returns: an unquoted string
	 *
	 * Throws: GException on failure.
	 */
	public static string shellUnquote(string quotedString)
	{
		GError* err = null;

		auto retStr = g_shell_unquote(Str.toStringz(quotedString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
