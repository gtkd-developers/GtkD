/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Internationalization
 * strct   = 
 * clss    = Internationalization
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module glib.Internationalization;

private import glib.typedefs;

private import lib.glib;


/**
 * Description
 * GLib doesn't force any particular localization method upon its users.
 * But since GLib itself is localized using the gettext() mechanism, it seems
 * natural to offer the de-facto standard gettext() support macros in an
 * easy-to-use form.
 * In order to use these macros in an application, you must include
 * glib/gi18n.h. For use in a library, must include
 * glib/gi18n-lib.h after defining
 * the GETTEXT_PACKAGE macro suitably for your library:
 * #define GETTEXT_PACKAGE "gtk20"
 * #include <glib/gi18n-lib.h>
 */
public class Internationalization
{
	
	/**
	 */
	
	
	
	
	/**
	 * An auxiliary function for gettext() support (see Q_()).
	 * msgid:
	 *  a string
	 * msgval:
	 *  another string
	 * Returns:
	 *  msgval, unless msgval is identical to msgid and contains
	 *  a '|' character, in which case a pointer to the substring of msgid after
	 *  the first '|' character is returned.
	 * Since 2.4
	 */
	public static char[] stripContext(char[] msgid, char[] msgval)
	{
		// const gchar* g_strip_context (const gchar *msgid,  const gchar *msgval);
		return std.string.toString(g_strip_context(std.string.toStringz(msgid), std.string.toStringz(msgval)) );
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
	 * Returns:
	 *  a NULL-terminated array of strings owned by GLib
	 *  that must not be modified or freed.
	 * Since 2.6
	 * See Also
	 * The gettext manual.
	 */
	public static char** getLanguageNames()
	{
		// const gchar* const * g_get_language_names (void);
		return g_get_language_names();
	}
}
