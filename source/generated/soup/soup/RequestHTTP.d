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


module soup.RequestHTTP;

private import gobject.ObjectG;
private import soup.Message;
private import soup.Request;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class RequestHTTP : Request
{
	/** the main Gtk struct */
	protected SoupRequestHTTP* soupRequestHTTP;

	/** Get the main Gtk struct */
	public SoupRequestHTTP* getRequestHTTPStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequestHTTP;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequestHTTP;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequestHTTP* soupRequestHTTP, bool ownedRef = false)
	{
		this.soupRequestHTTP = soupRequestHTTP;
		super(cast(SoupRequest*)soupRequestHTTP, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_request_http_get_type();
	}

	/**
	 * Gets a new reference to the #SoupMessage associated to this SoupRequest
	 *
	 * Returns: a new reference to the #SoupMessage
	 *
	 * Since: 2.40
	 */
	public Message getMessage()
	{
		auto __p = soup_request_http_get_message(soupRequestHTTP);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Message)(cast(SoupMessage*) __p, true);
	}
}
