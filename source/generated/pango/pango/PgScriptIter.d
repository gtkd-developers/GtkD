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


module pango.PgScriptIter;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import pango.c.functions;
public  import pango.c.types;


/**
 * A `PangoScriptIter` is used to iterate through a string
 * and identify ranges in different scripts.
 */
public class PgScriptIter
{
	/** the main Gtk struct */
	protected PangoScriptIter* pangoScriptIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoScriptIter* getPgScriptIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoScriptIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoScriptIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoScriptIter* pangoScriptIter, bool ownedRef = false)
	{
		this.pangoScriptIter = pangoScriptIter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_PANGO[0]) && ownedRef )
			pango_script_iter_free(pangoScriptIter);
	}


	/** */
	public static GType getType()
	{
		return pango_script_iter_get_type();
	}

	/**
	 * Create a new `PangoScriptIter`, used to break a string of
	 * Unicode text into runs by Unicode script.
	 *
	 * No copy is made of @text, so the caller needs to make
	 * sure it remains valid until the iterator is freed with
	 * [method@Pango.ScriptIter.free].
	 *
	 * Params:
	 *     text = a UTF-8 string
	 *     length = length of @text, or -1 if @text is nul-terminated
	 *
	 * Returns: the new script iterator, initialized
	 *     to point at the first range in the text, which should be
	 *     freed with [method@Pango.ScriptIter.free]. If the string is
	 *     empty, it will point at an empty range.
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string text, int length)
	{
		auto __p = pango_script_iter_new(Str.toStringz(text), length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(PangoScriptIter*) __p);
	}

	/**
	 * Frees a `PangoScriptIter`.
	 *
	 * Since: 1.4
	 */
	public void free()
	{
		pango_script_iter_free(pangoScriptIter);
		ownedRef = false;
	}

	/**
	 * Gets information about the range to which @iter currently points.
	 *
	 * The range is the set of locations p where *start <= p < *end.
	 * (That is, it doesn't include the character stored at *end)
	 *
	 * Note that while the type of the @script argument is declared
	 * as `PangoScript`, as of Pango 1.18, this function simply returns
	 * `GUnicodeScript` values. Callers must be prepared to handle unknown
	 * values.
	 *
	 * Params:
	 *     start = location to store start position of the range
	 *     end = location to store end position of the range
	 *     script = location to store script for range
	 *
	 * Since: 1.4
	 */
	public void getRange(out string start, out string end, out PangoScript script)
	{
		char* outstart = null;
		char* outend = null;

		pango_script_iter_get_range(pangoScriptIter, &outstart, &outend, &script);

		start = Str.toString(outstart);
		end = Str.toString(outend);
	}

	/**
	 * Advances a `PangoScriptIter` to the next range.
	 *
	 * If @iter is already at the end, it is left unchanged
	 * and %FALSE is returned.
	 *
	 * Returns: %TRUE if @iter was successfully advanced
	 *
	 * Since: 1.4
	 */
	public bool next()
	{
		return pango_script_iter_next(pangoScriptIter) != 0;
	}
}
