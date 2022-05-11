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


module soup.Requester;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Request;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class Requester : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupRequester* soupRequester;

	/** Get the main Gtk struct */
	public SoupRequester* getRequesterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupRequester;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupRequester;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupRequester* soupRequester, bool ownedRef = false)
	{
		this.soupRequester = soupRequester;
		super(cast(GObject*)soupRequester, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupRequester);


	/** */
	public static GType getType()
	{
		return soup_requester_get_type();
	}

	/** */
	public this()
	{
		auto __p = soup_requester_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupRequester*) __p, true);
	}

	/** */
	public Request request(string uriString)
	{
		GError* err = null;

		auto __p = soup_requester_request(soupRequester, Str.toStringz(uriString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}

	/** */
	public Request requestUri(URI uri)
	{
		GError* err = null;

		auto __p = soup_requester_request_uri(soupRequester, (uri is null) ? null : uri.getURIStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Request)(cast(SoupRequest*) __p, true);
	}
}
