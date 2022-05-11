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


module sourceview.SnippetContext;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import sourceview.c.functions;
public  import sourceview.c.types;
private import std.algorithm;


/**
 * Context for expanding [class@SnippetChunk].
 * 
 * This class is currently used primary as a hashtable. However, the longer
 * term goal is to have it hold onto a `GjsContext` as well as other languages
 * so that [class@SnippetChunk] can expand themselves by executing
 * script within the context.
 * 
 * The [class@Snippet] will build the context and then expand each of the
 * chunks during the insertion/edit phase.
 */
public class SnippetContext : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceSnippetContext* gtkSourceSnippetContext;

	/** Get the main Gtk struct */
	public GtkSourceSnippetContext* getSnippetContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceSnippetContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceSnippetContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceSnippetContext* gtkSourceSnippetContext, bool ownedRef = false)
	{
		this.gtkSourceSnippetContext = gtkSourceSnippetContext;
		super(cast(GObject*)gtkSourceSnippetContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_snippet_context_get_type();
	}

	/**
	 * Creates a new #GtkSourceSnippetContext.
	 *
	 * Generally, this isn't needed unless you are controlling the
	 * expansion of snippets manually.
	 *
	 * Returns: a #GtkSourceSnippetContext
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_source_snippet_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceSnippetContext*) __p, true);
	}

	/**
	 * Removes all variables from the context.
	 */
	public void clearVariables()
	{
		gtk_source_snippet_context_clear_variables(gtkSourceSnippetContext);
	}

	/** */
	public string expand(string input)
	{
		auto retStr = gtk_source_snippet_context_expand(gtkSourceSnippetContext, Str.toStringz(input));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the current value for a variable named @key.
	 *
	 * Params:
	 *     key = the name of the variable
	 *
	 * Returns: the value for the variable, or %NULL
	 */
	public string getVariable(string key)
	{
		return Str.toString(gtk_source_snippet_context_get_variable(gtkSourceSnippetContext, Str.toStringz(key)));
	}

	/**
	 * Sets a constatnt within the context.
	 *
	 * This is similar to a variable set with [method@SnippetContext.set_variable]
	 * but is expected to not change during use of the snippet.
	 *
	 * Examples would be the date or users name.
	 *
	 * Params:
	 *     key = the constant name
	 *     value = the value of the constant
	 */
	public void setConstant(string key, string value)
	{
		gtk_source_snippet_context_set_constant(gtkSourceSnippetContext, Str.toStringz(key), Str.toStringz(value));
	}

	/** */
	public void setLinePrefix(string linePrefix)
	{
		gtk_source_snippet_context_set_line_prefix(gtkSourceSnippetContext, Str.toStringz(linePrefix));
	}

	/** */
	public void setTabWidth(int tabWidth)
	{
		gtk_source_snippet_context_set_tab_width(gtkSourceSnippetContext, tabWidth);
	}

	/** */
	public void setUseSpaces(bool useSpaces)
	{
		gtk_source_snippet_context_set_use_spaces(gtkSourceSnippetContext, useSpaces);
	}

	/**
	 * Sets a variable within the context.
	 *
	 * This variable may be overridden by future updates to the
	 * context.
	 *
	 * Params:
	 *     key = the variable name
	 *     value = the value for the variable
	 */
	public void setVariable(string key, string value)
	{
		gtk_source_snippet_context_set_variable(gtkSourceSnippetContext, Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * The signal is emitted when a change has been
	 * discovered in one of the chunks of the snippet which has
	 * caused a variable or other dynamic data within the context
	 * to have changed.
	 */
	gulong addOnChanged(void delegate(SnippetContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
