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


module soup.XMLRPCParams;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.Variant;
private import linker.Loader;
private import soup.c.functions;
public  import soup.c.types;


/**
 * Opaque structure containing XML-RPC methodCall parameter values.
 * Can be parsed using soup_xmlrpc_params_parse() and freed with
 * soup_xmlrpc_params_free().
 *
 * Since: 2.52
 */
public class XMLRPCParams
{
	/** the main Gtk struct */
	protected SoupXMLRPCParams* soupXMLRPCParams;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupXMLRPCParams* getXMLRPCParamsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupXMLRPCParams;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupXMLRPCParams;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupXMLRPCParams* soupXMLRPCParams, bool ownedRef = false)
	{
		this.soupXMLRPCParams = soupXMLRPCParams;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_xmlrpc_params_free(soupXMLRPCParams);
	}


	/**
	 * Free a #SoupXMLRPCParams returned by soup_xmlrpc_parse_request().
	 *
	 * Since: 2.52
	 */
	public void free()
	{
		soup_xmlrpc_params_free(soupXMLRPCParams);
		ownedRef = false;
	}

	/**
	 * Parse method parameters returned by soup_xmlrpc_parse_request().
	 *
	 * Deserialization details:
	 * - If @signature is provided, &lt;int&gt; and &lt;i4&gt; can be deserialized
	 * to byte, int16, uint16, int32, uint32, int64 or uint64. Otherwise
	 * it will be deserialized to int32. If the value is out of range
	 * for the target type it will return an error.
	 * - &lt;struct&gt; will be deserialized to "a{sv}". @signature could define
	 * another value type (e.g. "a{ss}").
	 * - &lt;array&gt; will be deserialized to "av". @signature could define
	 * another element type (e.g. "as") or could be a tuple (e.g. "(ss)").
	 * - &lt;base64&gt; will be deserialized to "ay".
	 * - &lt;string&gt; will be deserialized to "s".
	 * - &lt;dateTime.iso8601&gt; will be deserialized to an unspecified variant
	 * type. If @signature is provided it must have the generic "v" type, which
	 * means there is no guarantee that it's actually a datetime that has been
	 * received. soup_xmlrpc_variant_get_datetime() must be used to parse and
	 * type check this special variant.
	 * - @signature must not have maybes, otherwise an error is returned.
	 * - Dictionaries must have string keys, otherwise an error is returned.
	 *
	 * Params:
	 *     signature = A valid #GVariant type string, or %NULL
	 *
	 * Returns: a new (non-floating) #GVariant, or %NULL
	 *
	 * Since: 2.52
	 *
	 * Throws: GException on failure.
	 */
	public Variant parse(string signature)
	{
		GError* err = null;

		auto __p = soup_xmlrpc_params_parse(soupXMLRPCParams, Str.toStringz(signature), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}
}
