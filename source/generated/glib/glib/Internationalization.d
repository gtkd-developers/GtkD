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


module glib.Internationalization;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Internationalization
{

	/**
	 * This is a variant of g_dgettext() that allows specifying a locale
	 * category instead of always using `LC_MESSAGES`. See g_dgettext() for
	 * more information about how this functions differs from calling
	 * dcgettext() directly.
	 *
	 * Params:
	 *     domain = the translation domain to use, or %NULL to use
	 *         the domain set with textdomain()
	 *     msgid = message to translate
	 *     category = a locale category
	 *
	 * Returns: the translated string for the given locale category
	 *
	 * Since: 2.26
	 */
	public static string dcgettext(string domain, string msgid, int category)
	{
		return Str.toString(g_dcgettext(Str.toStringz(domain), Str.toStringz(msgid), category));
	}

	/**
	 * This function is a wrapper of dgettext() which does not translate
	 * the message if the default domain as set with textdomain() has no
	 * translations for the current locale.
	 *
	 * The advantage of using this function over dgettext() proper is that
	 * libraries using this function (like GTK+) will not use translations
	 * if the application using the library does not have translations for
	 * the current locale.  This results in a consistent English-only
	 * interface instead of one having partial translations.  For this
	 * feature to work, the call to textdomain() and setlocale() should
	 * precede any g_dgettext() invocations.  For GTK+, it means calling
	 * textdomain() before gtk_init or its variants.
	 *
	 * This function disables translations if and only if upon its first
	 * call all the following conditions hold:
	 *
	 * - @domain is not %NULL
	 *
	 * - textdomain() has been called to set a default text domain
	 *
	 * - there is no translations available for the default text domain
	 * and the current locale
	 *
	 * - current locale is not "C" or any English locales (those
	 * starting with "en_")
	 *
	 * Note that this behavior may not be desired for example if an application
	 * has its untranslated messages in a language other than English. In those
	 * cases the application should call textdomain() after initializing GTK+.
	 *
	 * Applications should normally not use this function directly,
	 * but use the _() macro for translations.
	 *
	 * Params:
	 *     domain = the translation domain to use, or %NULL to use
	 *         the domain set with textdomain()
	 *     msgid = message to translate
	 *
	 * Returns: The translated string
	 *
	 * Since: 2.18
	 */
	public static string dgettext(string domain, string msgid)
	{
		return Str.toString(g_dgettext(Str.toStringz(domain), Str.toStringz(msgid)));
	}

	/**
	 * This function is a wrapper of dngettext() which does not translate
	 * the message if the default domain as set with textdomain() has no
	 * translations for the current locale.
	 *
	 * See g_dgettext() for details of how this differs from dngettext()
	 * proper.
	 *
	 * Params:
	 *     domain = the translation domain to use, or %NULL to use
	 *         the domain set with textdomain()
	 *     msgid = message to translate
	 *     msgidPlural = plural form of the message
	 *     n = the quantity for which translation is needed
	 *
	 * Returns: The translated string
	 *
	 * Since: 2.18
	 */
	public static string dngettext(string domain, string msgid, string msgidPlural, gulong n)
	{
		return Str.toString(g_dngettext(Str.toStringz(domain), Str.toStringz(msgid), Str.toStringz(msgidPlural), n));
	}

	/**
	 * This function is a variant of g_dgettext() which supports
	 * a disambiguating message context. GNU gettext uses the
	 * '\004' character to separate the message context and
	 * message id in @msgctxtid.
	 * If 0 is passed as @msgidoffset, this function will fall back to
	 * trying to use the deprecated convention of using "|" as a separation
	 * character.
	 *
	 * This uses g_dgettext() internally. See that functions for differences
	 * with dgettext() proper.
	 *
	 * Applications should normally not use this function directly,
	 * but use the C_() macro for translations with context.
	 *
	 * Params:
	 *     domain = the translation domain to use, or %NULL to use
	 *         the domain set with textdomain()
	 *     msgctxtid = a combined message context and message id, separated
	 *         by a \004 character
	 *     msgidoffset = the offset of the message id in @msgctxid
	 *
	 * Returns: The translated string
	 *
	 * Since: 2.16
	 */
	public static string dpgettext(string domain, string msgctxtid, size_t msgidoffset)
	{
		return Str.toString(g_dpgettext(Str.toStringz(domain), Str.toStringz(msgctxtid), msgidoffset));
	}

	/**
	 * This function is a variant of g_dgettext() which supports
	 * a disambiguating message context. GNU gettext uses the
	 * '\004' character to separate the message context and
	 * message id in @msgctxtid.
	 *
	 * This uses g_dgettext() internally. See that functions for differences
	 * with dgettext() proper.
	 *
	 * This function differs from C_() in that it is not a macro and
	 * thus you may use non-string-literals as context and msgid arguments.
	 *
	 * Params:
	 *     domain = the translation domain to use, or %NULL to use
	 *         the domain set with textdomain()
	 *     context = the message context
	 *     msgid = the message
	 *
	 * Returns: The translated string
	 *
	 * Since: 2.18
	 */
	public static string dpgettext2(string domain, string context, string msgid)
	{
		return Str.toString(g_dpgettext2(Str.toStringz(domain), Str.toStringz(context), Str.toStringz(msgid)));
	}

	/**
	 * Computes a list of applicable locale names, which can be used to
	 * e.g. construct locale-dependent filenames or search paths. The returned
	 * list is sorted from most desirable to least desirable and always contains
	 * the default locale "C".
	 *
	 * For example, if LANGUAGE=de:en_US, then the returned list is
	 * "de", "en_US", "en", "C".
	 *
	 * This function consults the environment variables `LANGUAGE`, `LC_ALL`,
	 * `LC_MESSAGES` and `LANG` to find the list of locales specified by the
	 * user.
	 *
	 * Returns: a %NULL-terminated array of strings owned by GLib
	 *     that must not be modified or freed.
	 *
	 * Since: 2.6
	 */
	public static string[] getLanguageNames()
	{
		return Str.toStringArray(g_get_language_names());
	}

	/**
	 * Returns a list of derived variants of @locale, which can be used to
	 * e.g. construct locale-dependent filenames or search paths. The returned
	 * list is sorted from most desirable to least desirable.
	 * This function handles territory, charset and extra locale modifiers. See
	 * [`setlocale(3)`](man:setlocale) for information about locales and their format.
	 *
	 * @locale itself is guaranteed to be returned in the output.
	 *
	 * For example, if @locale is `fr_BE`, then the returned list
	 * is `fr_BE`, `fr`. If @locale is `en_GB.UTF-8@euro`, then the returned list
	 * is `en_GB.UTF-8@euro`, `en_GB.UTF-8`, `en_GB@euro`, `en_GB`, `en.UTF-8@euro`,
	 * `en.UTF-8`, `en@euro`, `en`.
	 *
	 * If you need the list of variants for the current locale,
	 * use g_get_language_names().
	 *
	 * Params:
	 *     locale = a locale identifier
	 *
	 * Returns: a newly
	 *     allocated array of newly allocated strings with the locale variants. Free with
	 *     g_strfreev().
	 *
	 * Since: 2.28
	 */
	public static string[] getLocaleVariants(string locale)
	{
		auto retStr = g_get_locale_variants(Str.toStringz(locale));

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * An auxiliary function for gettext() support (see Q_()).
	 *
	 * Params:
	 *     msgid = a string
	 *     msgval = another string
	 *
	 * Returns: @msgval, unless @msgval is identical to @msgid
	 *     and contains a '|' character, in which case a pointer to
	 *     the substring of msgid after the first '|' character is returned.
	 *
	 * Since: 2.4
	 */
	public static string stripContext(string msgid, string msgval)
	{
		return Str.toString(g_strip_context(Str.toStringz(msgid), Str.toStringz(msgval)));
	}
}
