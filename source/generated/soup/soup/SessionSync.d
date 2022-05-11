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


module soup.SessionSync;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Session;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class SessionSync : Session
{
	/** the main Gtk struct */
	protected SoupSessionSync* soupSessionSync;

	/** Get the main Gtk struct */
	public SoupSessionSync* getSessionSyncStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupSessionSync;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupSessionSync;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupSessionSync* soupSessionSync, bool ownedRef = false)
	{
		this.soupSessionSync = soupSessionSync;
		super(cast(SoupSession*)soupSessionSync, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_session_sync_get_type();
	}

	/**
	 * Creates an synchronous #SoupSession with the default options.
	 *
	 * Deprecated: #SoupSessionSync is deprecated; use a plain
	 * #SoupSession, created with soup_session_new(). See the <link
	 * linkend="libsoup-session-porting">porting guide</link>.
	 *
	 * Returns: the new session.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_session_sync_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupSessionSync*) __p, true);
	}
}
