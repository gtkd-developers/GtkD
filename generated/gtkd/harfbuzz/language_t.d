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


module harfbuzz.language_t;

private import glib.Str;
private import glib.c.functions;
private import harfbuzz.c.functions;
public  import harfbuzz.c.types;


/**
 * Data type for languages. Each #hb_language_t corresponds to a BCP 47
 * language tag.
 */
public class language_t
{
	/** the main Gtk struct */
	protected hb_language_t* hb_language;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public hb_language_t* getlanguage_tStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hb_language;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)hb_language;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (hb_language_t* hb_language, bool ownedRef = false)
	{
		this.hb_language = hb_language;
		this.ownedRef = ownedRef;
	}


	/**
	 * Converts an #hb_language_t to a string.
	 *
	 * Returns: A %NULL-terminated string representing the @language. Must not be freed by
	 *     the caller.
	 *
	 * Since: 0.9.2
	 */
	public string String()
	{
		return Str.toString(hb_language_to_string(hb_language));
	}
}
