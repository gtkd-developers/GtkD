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


module glib.UriParamsIter;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * Many URI schemes include one or more attribute/value pairs as part of the URI
 * value. For example `scheme://server/path?query=string&is=there` has two
 * attributes – `query=string` and `is=there` – in its query part.
 * 
 * A #GUriParamsIter structure represents an iterator that can be used to
 * iterate over the attribute/value pairs of a URI query string. #GUriParamsIter
 * structures are typically allocated on the stack and then initialized with
 * g_uri_params_iter_init(). See the documentation for g_uri_params_iter_init()
 * for a usage example.
 *
 * Since: 2.66
 */
public class UriParamsIter
{
	/** the main Gtk struct */
	protected GUriParamsIter* gUriParamsIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GUriParamsIter* getUriParamsIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUriParamsIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gUriParamsIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUriParamsIter* gUriParamsIter, bool ownedRef = false)
	{
		this.gUriParamsIter = gUriParamsIter;
		this.ownedRef = ownedRef;
	}


	/**
	 * Initializes an attribute/value pair iterator.
	 *
	 * The iterator keeps pointers to the @params and @separators arguments, those
	 * variables must thus outlive the iterator and not be modified during the
	 * iteration.
	 *
	 * If %G_URI_PARAMS_WWW_FORM is passed in @flags, `+` characters in the param
	 * string will be replaced with spaces in the output. For example, `foo=bar+baz`
	 * will give attribute `foo` with value `bar baz`. This is commonly used on the
	 * web (the `https` and `http` schemes only), but is deprecated in favour of
	 * the equivalent of encoding spaces as `%20`.
	 *
	 * Unlike with g_uri_parse_params(), %G_URI_PARAMS_CASE_INSENSITIVE has no
	 * effect if passed to @flags for g_uri_params_iter_init(). The caller is
	 * responsible for doing their own case-insensitive comparisons.
	 *
	 * |[<!-- language="C" -->
	 * GUriParamsIter iter;
	 * GError *error = NULL;
	 * gchar *unowned_attr, *unowned_value;
	 *
	 * g_uri_params_iter_init (&iter, "foo=bar&baz=bar&Foo=frob&baz=bar2", -1, "&", G_URI_PARAMS_NONE);
	 * while (g_uri_params_iter_next (&iter, &unowned_attr, &unowned_value, &error))
	 * {
	 * g_autofree gchar *attr = g_steal_pointer (&unowned_attr);
	 * g_autofree gchar *value = g_steal_pointer (&unowned_value);
	 * // do something with attr and value; this code will be called 4 times
	 * // for the params string in this example: once with attr=foo and value=bar,
	 * // then with baz/bar, then Foo/frob, then baz/bar2.
	 * }
	 * if (error)
	 * // handle parsing error
	 * ]|
	 *
	 * Params:
	 *     params = a `%`-encoded string containing `attribute=value`
	 *         parameters
	 *     length = the length of @params, or `-1` if it is nul-terminated
	 *     separators = the separator byte character set between parameters. (usually
	 *         `&`, but sometimes `;` or both `&;`). Note that this function works on
	 *         bytes not characters, so it can't be used to delimit UTF-8 strings for
	 *         anything but ASCII characters. You may pass an empty set, in which case
	 *         no splitting will occur.
	 *     flags = flags to modify the way the parameters are handled.
	 *
	 * Since: 2.66
	 */
	public void init(string params, ptrdiff_t length, string separators, GUriParamsFlags flags)
	{
		g_uri_params_iter_init(gUriParamsIter, Str.toStringz(params), length, Str.toStringz(separators), flags);
	}

	/**
	 * Advances @iter and retrieves the next attribute/value. %FALSE is returned if
	 * an error has occurred (in which case @error is set), or if the end of the
	 * iteration is reached (in which case @attribute and @value are set to %NULL
	 * and the iterator becomes invalid). If %TRUE is returned,
	 * g_uri_params_iter_next() may be called again to receive another
	 * attribute/value pair.
	 *
	 * Note that the same @attribute may be returned multiple times, since URIs
	 * allow repeated attributes.
	 *
	 * Params:
	 *     attribute = on return, contains
	 *         the attribute, or %NULL.
	 *     value = on return, contains
	 *         the value, or %NULL.
	 *
	 * Returns: %FALSE if the end of the parameters has been reached or an error was
	 *     encountered. %TRUE otherwise.
	 *
	 * Since: 2.66
	 *
	 * Throws: GException on failure.
	 */
	public bool next(out string attribute, out string value)
	{
		char* outattribute = null;
		char* outvalue = null;
		GError* err = null;

		auto __p = g_uri_params_iter_next(gUriParamsIter, &outattribute, &outvalue, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		attribute = Str.toString(outattribute);
		value = Str.toString(outvalue);

		return __p;
	}
}
