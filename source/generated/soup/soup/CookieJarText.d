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


module soup.CookieJarText;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.CookieJar;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class CookieJarText : CookieJar
{
	/** the main Gtk struct */
	protected SoupCookieJarText* soupCookieJarText;

	/** Get the main Gtk struct */
	public SoupCookieJarText* getCookieJarTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupCookieJarText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupCookieJarText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupCookieJarText* soupCookieJarText, bool ownedRef = false)
	{
		this.soupCookieJarText = soupCookieJarText;
		super(cast(SoupCookieJar*)soupCookieJarText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_cookie_jar_text_get_type();
	}

	/**
	 * Creates a #SoupCookieJarText.
	 *
	 * @filename will be read in at startup to create an initial set of
	 * cookies. If @read_only is %FALSE, then the non-session cookies will
	 * be written to @filename when the 'changed' signal is emitted from
	 * the jar. (If @read_only is %TRUE, then the cookie jar will only be
	 * used for this session, and changes made to it will be lost when the
	 * jar is destroyed.)
	 *
	 * Params:
	 *     filename = the filename to read to/write from
	 *     readOnly = %TRUE if @filename is read-only
	 *
	 * Returns: the new #SoupCookieJar
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, bool readOnly)
	{
		auto __p = soup_cookie_jar_text_new(Str.toStringz(filename), readOnly);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupCookieJarText*) __p, true);
	}
}
