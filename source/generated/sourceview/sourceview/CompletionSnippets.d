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


module sourceview.CompletionSnippets;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import sourceview.CompletionProviderIF;
private import sourceview.CompletionProviderT;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * A [iface@CompletionProvider] for the completion of snippets.
 * 
 * The `GtkSourceCompletionSnippets` is an example of an implementation of
 * the [iface@CompletionProvider] interface. The proposals are snippets
 * registered with the [class@SnippetManager].
 */
public class CompletionSnippets : ObjectG, CompletionProviderIF
{
	/** the main Gtk struct */
	protected GtkSourceCompletionSnippets* gtkSourceCompletionSnippets;

	/** Get the main Gtk struct */
	public GtkSourceCompletionSnippets* getCompletionSnippetsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceCompletionSnippets;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceCompletionSnippets;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceCompletionSnippets* gtkSourceCompletionSnippets, bool ownedRef = false)
	{
		this.gtkSourceCompletionSnippets = gtkSourceCompletionSnippets;
		super(cast(GObject*)gtkSourceCompletionSnippets, ownedRef);
	}

	// add the CompletionProvider capabilities
	mixin CompletionProviderT!(GtkSourceCompletionSnippets);


	/** */
	public static GType getType()
	{
		return gtk_source_completion_snippets_get_type();
	}

	/** */
	public this()
	{
		auto __p = gtk_source_completion_snippets_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSourceCompletionSnippets*) __p, true);
	}
}
