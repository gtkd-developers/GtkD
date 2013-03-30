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
 * inFile  = glib-I18N.html
 * outPack = glib
 * outFile = Internationalization
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Internationalization
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
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

module glib.Internationalization;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * GLib doesn't force any particular localization method upon its users.
 * But since GLib itself is localized using the gettext() mechanism, it seems
 * natural to offer the de-facto standard gettext() support macros in an
 * easy-to-use form.
 *
 * In order to use these macros in an application, you must include
 * glib/gi18n.h. For use in a library, you must include
 * glib/gi18n-lib.h after defining
 * the GETTEXT_PACKAGE macro suitably for your library:
 *
 * $(DDOC_COMMENT example)
 *
 * For an application, note that you also have to call bindtextdomain(),
 * bind_textdomain_codeset(), textdomain() and setlocale() early on in your
 * main() to make gettext() work.
 *
 * For a library, you only have to call bindtextdomain() and
 * bind_textdomain_codeset() in your initialization function. If your library
 * doesn't have an initialization function, you can call the functions before
 * the first translated message.
 *
 * The gettext manual covers details of how to set up message extraction
 * with xgettext.
 */
public class Internationalization
{
	
	/**
	 */
	
	/**
	 * This function is a wrapper of dgettext() which does not translate
	 * the message if the default domain as set with textdomain() has no
	 * translations for the current locale.
	 * The advantage of using this function over dgettext() proper is that
	 * libraries using this function (like GTK+) will not use translations
	 * if the application using the library does not have translations for
	 * the current locale. This results in a consistent English-only
	 * interface instead of one having partial translations. For this
	 * feature to work, the call to textdomain() and setlocale() should
	 * precede any g_dgettext() invocations. For GTK+, it means calling
	 * textdomain() before gtk_init or its variants.
	 * This function disables translations if and only if upon its first
	 * Since 2.18
	 * Params:
	 * domain = the translation domain to use, or NULL to use
	 * the domain set with textdomain(). [allow-none]
	 * msgid = message to translate
	 * Returns: The translated string
	 */
	public static string dgettext(string domain, string msgid)
	{
		// const gchar * g_dgettext (const gchar *domain,  const gchar *msgid);
		return Str.toString(g_dgettext(Str.toStringz(domain), Str.toStringz(msgid)));
	}
	
	/**
	 * This is a variant of g_dgettext() that allows specifying a locale
	 * category instead of always using LC_MESSAGES. See g_dgettext() for
	 * more information about how this functions differs from calling
	 * dcgettext() directly.
	 * Since 2.26
	 * Params:
	 * domain = the translation domain to use, or NULL to use
	 * the domain set with textdomain(). [allow-none]
	 * msgid = message to translate
	 * category = a locale category
	 * Returns: the translated string for the given locale category
	 */
	public static string dcgettext(string domain, string msgid, int category)
	{
		// const gchar * g_dcgettext (const gchar *domain,  const gchar *msgid,  gint category);
		return Str.toString(g_dcgettext(Str.toStringz(domain), Str.toStringz(msgid), category));
	}
	
	/**
	 * This function is a wrapper of dngettext() which does not translate
	 * the message if the default domain as set with textdomain() has no
	 * translations for the current locale.
	 * See g_dgettext() for details of how this differs from dngettext()
	 * proper.
	 * Since 2.18
	 * Params:
	 * domain = the translation domain to use, or NULL to use
	 * the domain set with textdomain(). [allow-none]
	 * msgid = message to translate
	 * msgidPlural = plural form of the message
	 * n = the quantity for which translation is needed
	 * Returns: The translated string
	 */
	public static string dngettext(string domain, string msgid, string msgidPlural, gulong n)
	{
		// const gchar * g_dngettext (const gchar *domain,  const gchar *msgid,  const gchar *msgid_plural,  gulong n);
		return Str.toString(g_dngettext(Str.toStringz(domain), Str.toStringz(msgid), Str.toStringz(msgidPlural), n));
	}
	
	/**
	 * This function is a variant of g_dgettext() which supports
	 * a disambiguating message context. GNU gettext uses the
	 * '\004' character to separate the message context and
	 * message id in msgctxtid.
	 * If 0 is passed as msgidoffset, this function will fall back to
	 * trying to use the deprecated convention of using "|" as a separation
	 * character.
	 * This uses g_dgettext() internally. See that functions for differences
	 * with dgettext() proper.
	 * Applications should normally not use this function directly,
	 * but use the C_() macro for translations with context.
	 * Since 2.16
	 * Params:
	 * domain = the translation domain to use, or NULL to use
	 * the domain set with textdomain(). [allow-none]
	 * msgctxtid = a combined message context and message id, separated
	 * by a \004 character
	 * msgidoffset = the offset of the message id in msgctxid
	 * Returns: The translated string
	 */
	public static string dpgettext(string domain, string msgctxtid, gsize msgidoffset)
	{
		// const gchar * g_dpgettext (const gchar *domain,  const gchar *msgctxtid,  gsize msgidoffset);
		return Str.toString(g_dpgettext(Str.toStringz(domain), Str.toStringz(msgctxtid), msgidoffset));
	}
	
	/**
	 * This function is a variant of g_dgettext() which supports
	 * a disambiguating message context. GNU gettext uses the
	 * '\004' character to separate the message context and
	 * message id in msgctxtid.
	 * This uses g_dgettext() internally. See that functions for differences
	 * with dgettext() proper.
	 * This function differs from C_() in that it is not a macro and
	 * thus you may use non-string-literals as context and msgid arguments.
	 * Since 2.18
	 * Params:
	 * domain = the translation domain to use, or NULL to use
	 * the domain set with textdomain(). [allow-none]
	 * context = the message context
	 * msgid = the message
	 * Returns: The translated string
	 */
	public static string dpgettext2(string domain, string context, string msgid)
	{
		// const gchar * g_dpgettext2 (const gchar *domain,  const gchar *context,  const gchar *msgid);
		return Str.toString(g_dpgettext2(Str.toStringz(domain), Str.toStringz(context), Str.toStringz(msgid)));
	}
	
	/**
	 * An auxiliary function for gettext() support (see Q_()).
	 * Since 2.4
	 * Params:
	 * msgid = a string
	 * msgval = another string
	 * Returns: msgval, unless msgval is identical to msgid and contains a '|' character, in which case a pointer to the substring of msgid after the first '|' character is returned.
	 */
	public static string stripContext(string msgid, string msgval)
	{
		// const gchar * g_strip_context (const gchar *msgid,  const gchar *msgval);
		return Str.toString(g_strip_context(Str.toStringz(msgid), Str.toStringz(msgval)));
	}
	
	/**
	 * Computes a list of applicable locale names, which can be used to
	 * e.g. construct locale-dependent filenames or search paths. The returned
	 * list is sorted from most desirable to least desirable and always contains
	 * the default locale "C".
	 * For example, if LANGUAGE=de:en_US, then the returned list is
	 * "de", "en_US", "en", "C".
	 * This function consults the environment variables LANGUAGE,
	 * LC_ALL, LC_MESSAGES and LANG
	 * to find the list of locales specified by the user.
	 * Since 2.6
	 * Returns: a NULL-terminated array of strings owned by GLib that must not be modified or freed. [array zero-terminated=1][transfer none]
	 */
	public static string[] getLanguageNames()
	{
		// const gchar * const * g_get_language_names (void);
		return Str.toStringArray(g_get_language_names());
	}
	
	/**
	 * Returns a list of derived variants of locale, which can be used to
	 * e.g. construct locale-dependent filenames or search paths. The returned
	 * list is sorted from most desirable to least desirable.
	 * This function handles territory, charset and extra locale modifiers.
	 * For example, if locale is "fr_BE", then the returned list
	 * is "fr_BE", "fr".
	 * If you need the list of variants for the current locale,
	 * use g_get_language_names().
	 * Since 2.28
	 * Params:
	 * locale = a locale identifier
	 * Returns: a newly allocated array of newly allocated strings with the locale variants. Free with g_strfreev(). [transfer full][array zero-terminated=1][element-type utf8]
	 */
	public static string[] getLocaleVariants(string locale)
	{
		// gchar ** g_get_locale_variants (const gchar *locale);
		return Str.toStringArray(g_get_locale_variants(Str.toStringz(locale)));
	}
}
