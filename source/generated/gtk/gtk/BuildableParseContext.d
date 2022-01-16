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


module gtk.BuildableParseContext;

private import glib.PtrArray;
private import glib.Str;
private import glib.c.functions;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * An opaque context struct for `GtkBuildableParser`.
 */
public class BuildableParseContext
{
	/** the main Gtk struct */
	protected GtkBuildableParseContext* gtkBuildableParseContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GtkBuildableParseContext* getBuildableParseContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBuildableParseContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkBuildableParseContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBuildableParseContext* gtkBuildableParseContext, bool ownedRef = false)
	{
		this.gtkBuildableParseContext = gtkBuildableParseContext;
		this.ownedRef = ownedRef;
	}


	/**
	 * Retrieves the name of the currently open element.
	 *
	 * If called from the start_element or end_element handlers this will
	 * give the element_name as passed to those functions. For the parent
	 * elements, see gtk_buildable_parse_context_get_element_stack().
	 *
	 * Returns: the name of the currently open element
	 */
	public string getElement()
	{
		return Str.toString(gtk_buildable_parse_context_get_element(gtkBuildableParseContext));
	}

	/**
	 * Retrieves the element stack from the internal state of the parser.
	 *
	 * The returned `GPtrArray` is an array of strings where the last item is
	 * the currently open tag (as would be returned by
	 * gtk_buildable_parse_context_get_element()) and the previous item is its
	 * immediate parent.
	 *
	 * This function is intended to be used in the start_element and
	 * end_element handlers where gtk_buildable_parse_context_get_element()
	 * would merely return the name of the element that is being
	 * processed.
	 *
	 * Returns: the element stack, which must not be modified
	 */
	public PtrArray getElementStack()
	{
		auto __p = gtk_buildable_parse_context_get_element_stack(gtkBuildableParseContext);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Retrieves the current line number and the number of the character on
	 * that line. Intended for use in error messages; there are no strict
	 * semantics for what constitutes the "current" line number other than
	 * "the best number we could come up with for error messages."
	 *
	 * Params:
	 *     lineNumber = return location for a line number
	 *     charNumber = return location for a char-on-line number
	 */
	public void getPosition(out int lineNumber, out int charNumber)
	{
		gtk_buildable_parse_context_get_position(gtkBuildableParseContext, &lineNumber, &charNumber);
	}

	/**
	 * Completes the process of a temporary sub-parser redirection.
	 *
	 * This function exists to collect the user_data allocated by a
	 * matching call to gtk_buildable_parse_context_push(). It must be called
	 * in the end_element handler corresponding to the start_element
	 * handler during which gtk_buildable_parse_context_push() was called.
	 * You must not call this function from the error callback -- the
	 * @user_data is provided directly to the callback in that case.
	 *
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to
	 * be used by the subparsers themselves to implement a higher-level
	 * interface.
	 *
	 * Returns: the user data passed to gtk_buildable_parse_context_push()
	 */
	public void* pop()
	{
		return gtk_buildable_parse_context_pop(gtkBuildableParseContext);
	}

	/**
	 * Temporarily redirects markup data to a sub-parser.
	 *
	 * This function may only be called from the start_element handler of
	 * a `GtkBuildableParser`. It must be matched with a corresponding call to
	 * gtk_buildable_parse_context_pop() in the matching end_element handler
	 * (except in the case that the parser aborts due to an error).
	 *
	 * All tags, text and other data between the matching tags is
	 * redirected to the subparser given by @parser. @user_data is used
	 * as the user_data for that parser. @user_data is also passed to the
	 * error callback in the event that an error occurs. This includes
	 * errors that occur in subparsers of the subparser.
	 *
	 * The end tag matching the start tag for which this call was made is
	 * handled by the previous parser (which is given its own user_data)
	 * which is why gtk_buildable_parse_context_pop() is provided to allow "one
	 * last access" to the @user_data provided to this function. In the
	 * case of error, the @user_data provided here is passed directly to
	 * the error callback of the subparser and gtk_buildable_parse_context_pop()
	 * should not be called. In either case, if @user_data was allocated
	 * then it ought to be freed from both of these locations.
	 *
	 * This function is not intended to be directly called by users
	 * interested in invoking subparsers. Instead, it is intended to be
	 * used by the subparsers themselves to implement a higher-level
	 * interface.
	 *
	 * For an example of how to use this, see g_markup_parse_context_push() which
	 * has the same kind of API.
	 *
	 * Params:
	 *     parser = a `GtkBuildableParser`
	 *     userData = user data to pass to `GtkBuildableParser` functions
	 */
	public void push(GtkBuildableParser* parser, void* userData)
	{
		gtk_buildable_parse_context_push(gtkBuildableParseContext, parser, userData);
	}
}
