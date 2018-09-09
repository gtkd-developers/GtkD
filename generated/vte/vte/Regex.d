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


module vte.Regex;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkd.Loader;
private import vte.c.functions;
public  import vte.c.types;
public  import vtec.vtetypes;


/** */
public class Regex
{
	/** the main Gtk struct */
	protected VteRegex* vteRegex;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public VteRegex* getRegexStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return vteRegex;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)vteRegex;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (VteRegex* vteRegex, bool ownedRef = false)
	{
		this.vteRegex = vteRegex;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_VTE) && ownedRef )
			vte_regex_unref(vteRegex);
	}

	/** */
	public static Regex newMatch(string pattern, ptrdiff_t patternLength, uint flags)
	{
		GError* err = null;

		auto p = vte_regex_new_for_match(Str.toStringz(pattern), patternLength, flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_match");
		}

		return new Regex(cast(VteRegex*) p);
	}

	/** */
	public static Regex newSearch(string pattern, ptrdiff_t patternLength, uint flags)
	{
		GError* err = null;

		auto p = vte_regex_new_for_search(Str.toStringz(pattern), patternLength, flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_search");
		}

		return new Regex(cast(VteRegex*) p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return vte_regex_get_type();
	}

	/** */
	public bool jit(uint flags)
	{
		GError* err = null;

		auto p = vte_regex_jit(vteRegex, flags, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	alias doref = ref_;
	/** */
	public Regex ref_()
	{
		auto p = vte_regex_ref(vteRegex);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Regex)(cast(VteRegex*) p, true);
	}

	/** */
	public Regex unref()
	{
		auto p = vte_regex_unref(vteRegex);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Regex)(cast(VteRegex*) p, true);
	}
}
