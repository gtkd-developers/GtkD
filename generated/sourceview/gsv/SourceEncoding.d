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


module gsv.SourceEncoding;

private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gsv.c.functions;
public  import gsv.c.types;
public  import gsvc.gsvtypes;
private import gtkd.Loader;


/** */
public class SourceEncoding
{
	/** the main Gtk struct */
	protected GtkSourceEncoding* gtkSourceEncoding;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkSourceEncoding* getSourceEncodingStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceEncoding;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSourceEncoding;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceEncoding* gtkSourceEncoding, bool ownedRef = false)
	{
		this.gtkSourceEncoding = gtkSourceEncoding;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSV) && ownedRef )
			gtk_source_encoding_free(gtkSourceEncoding);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_encoding_get_type();
	}

	/**
	 * Used by language bindings.
	 *
	 * Returns: a copy of @enc.
	 *
	 * Since: 3.14
	 */
	public SourceEncoding copy()
	{
		auto p = gtk_source_encoding_copy(gtkSourceEncoding);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p, true);
	}

	/**
	 * Used by language bindings.
	 *
	 * Since: 3.14
	 */
	public void free()
	{
		gtk_source_encoding_free(gtkSourceEncoding);
		ownedRef = false;
	}

	/**
	 * Gets the character set of the #GtkSourceEncoding, such as "UTF-8" or
	 * "ISO-8859-1".
	 *
	 * Returns: the character set of the #GtkSourceEncoding.
	 *
	 * Since: 3.14
	 */
	public string getCharset()
	{
		return Str.toString(gtk_source_encoding_get_charset(gtkSourceEncoding));
	}

	/**
	 * Gets the name of the #GtkSourceEncoding such as "Unicode" or "Western".
	 *
	 * Returns: the name of the #GtkSourceEncoding.
	 *
	 * Since: 3.14
	 */
	public string getName()
	{
		return Str.toString(gtk_source_encoding_get_name(gtkSourceEncoding));
	}

	/**
	 * Returns: a string representation. Free with g_free() when no longer needed.
	 *
	 * Since: 3.14
	 */
	public override string toString()
	{
		auto retStr = gtk_source_encoding_to_string(gtkSourceEncoding);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets all encodings.
	 *
	 * Returns: a list of
	 *     all #GtkSourceEncoding's. Free with g_slist_free().
	 *
	 * Since: 3.14
	 */
	public static ListSG getAll()
	{
		auto p = gtk_source_encoding_get_all();

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Gets the #GtkSourceEncoding for the current locale. See also g_get_charset().
	 *
	 * Returns: the current locale encoding.
	 *
	 * Since: 3.14
	 */
	public static SourceEncoding getCurrent()
	{
		auto p = gtk_source_encoding_get_current();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p);
	}

	/**
	 * Gets the list of default candidate encodings to try when loading a file. See
	 * gtk_source_file_loader_set_candidate_encodings().
	 *
	 * This function returns a different list depending on the current locale (i.e.
	 * language, country and default encoding). The UTF-8 encoding and the current
	 * locale encoding are guaranteed to be present in the returned list.
	 *
	 * Returns: the list of
	 *     default candidate encodings. Free with g_slist_free().
	 *
	 * Since: 3.18
	 */
	public static ListSG getDefaultCandidates()
	{
		auto p = gtk_source_encoding_get_default_candidates();

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Gets a #GtkSourceEncoding from a character set such as "UTF-8" or
	 * "ISO-8859-1".
	 *
	 * Params:
	 *     charset = a character set.
	 *
	 * Returns: the corresponding #GtkSourceEncoding, or %NULL
	 *     if not found.
	 *
	 * Since: 3.14
	 */
	public static SourceEncoding getFromCharset(string charset)
	{
		auto p = gtk_source_encoding_get_from_charset(Str.toStringz(charset));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p);
	}

	/**
	 * Returns: the UTF-8 encoding.
	 *
	 * Since: 3.14
	 */
	public static SourceEncoding getUtf8()
	{
		auto p = gtk_source_encoding_get_utf8();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceEncoding)(cast(GtkSourceEncoding*) p);
	}
}
