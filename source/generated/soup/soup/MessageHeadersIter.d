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


module soup.MessageHeadersIter;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.MessageHeaders;
private import soup.c.functions;
public  import soup.c.types;


/**
 * An opaque type used to iterate over a %SoupMessageHeaders
 * structure.
 * 
 * After intializing the iterator with
 * soup_message_headers_iter_init(), call
 * soup_message_headers_iter_next() to fetch data from it.
 * 
 * You may not modify the headers while iterating over them.
 */
public class MessageHeadersIter
{
	/** the main Gtk struct */
	protected SoupMessageHeadersIter* soupMessageHeadersIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupMessageHeadersIter* getMessageHeadersIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMessageHeadersIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupMessageHeadersIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMessageHeadersIter* soupMessageHeadersIter, bool ownedRef = false)
	{
		this.soupMessageHeadersIter = soupMessageHeadersIter;
		this.ownedRef = ownedRef;
	}


	/**
	 * Yields the next name/value pair in the %SoupMessageHeaders being
	 * iterated by @iter. If @iter has already yielded the last header,
	 * then soup_message_headers_iter_next() will return %FALSE and @name
	 * and @value will be unchanged.
	 *
	 * Params:
	 *     name = pointer to a variable to return
	 *         the header name in
	 *     value = pointer to a variable to return
	 *         the header value in
	 *
	 * Returns: %TRUE if another name and value were returned, %FALSE
	 *     if the end of the headers has been reached.
	 */
	public bool next(out string name, out string value)
	{
		char* outname = null;
		char* outvalue = null;

		auto __p = soup_message_headers_iter_next(soupMessageHeadersIter, &outname, &outvalue) != 0;

		name = Str.toString(outname);
		value = Str.toString(outvalue);

		return __p;
	}

	/**
	 * Initializes @iter for iterating @hdrs.
	 *
	 * Params:
	 *     iter = a pointer to a %SoupMessageHeadersIter
	 *         structure
	 *     hdrs = a %SoupMessageHeaders
	 */
	public static void init(out MessageHeadersIter iter, MessageHeaders hdrs)
	{
		SoupMessageHeadersIter* outiter = sliceNew!SoupMessageHeadersIter();

		soup_message_headers_iter_init(outiter, (hdrs is null) ? null : hdrs.getMessageHeadersStruct());

		iter = ObjectG.getDObject!(MessageHeadersIter)(outiter, true);
	}
}
