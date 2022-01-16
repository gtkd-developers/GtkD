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


module gtk.BuilderCScope;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.BuilderScopeIF;
private import gtk.BuilderScopeT;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkBuilderScope` implementation for the C language.
 * 
 * `GtkBuilderCScope` instances use symbols explicitly added to @builder
 * with prior calls to [method@Gtk.BuilderCScope.add_callback_symbol].
 * If developers want to do that, they are encouraged to create their
 * own scopes for that purpose.
 * 
 * In the case that symbols are not explicitly added; GTK will uses
 * `GModule`’s introspective features (by opening the module %NULL) to
 * look at the application’s symbol table. From here it tries to match
 * the signal function names given in the interface description with
 * symbols in the application.
 * 
 * Note that unless [method@Gtk.BuilderCScope.add_callback_symbol] is
 * called for all signal callbacks which are referenced by the loaded XML,
 * this functionality will require that `GModule` be supported on the platform.
 */
public class BuilderCScope : ObjectG, BuilderScopeIF
{
	/** the main Gtk struct */
	protected GtkBuilderCScope* gtkBuilderCScope;

	/** Get the main Gtk struct */
	public GtkBuilderCScope* getBuilderCScopeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkBuilderCScope;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkBuilderCScope;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkBuilderCScope* gtkBuilderCScope, bool ownedRef = false)
	{
		this.gtkBuilderCScope = gtkBuilderCScope;
		super(cast(GObject*)gtkBuilderCScope, ownedRef);
	}

	// add the BuilderScope capabilities
	mixin BuilderScopeT!(GtkBuilderCScope);


	/** */
	public static GType getType()
	{
		return gtk_builder_cscope_get_type();
	}

	/**
	 * Creates a new `GtkBuilderCScope` object to use with future
	 * `GtkBuilder` instances.
	 *
	 * Calling this function is only necessary if you want to add
	 * custom callbacks via [method@Gtk.BuilderCScope.add_callback_symbol].
	 *
	 * Returns: a new `GtkBuilderCScope`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_builder_cscope_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkBuilderCScope*) __p, true);
	}

	/**
	 * Adds the @callback_symbol to the scope of @builder under the
	 * given @callback_name.
	 *
	 * Using this function overrides the behavior of
	 * [method@Gtk.Builder.create_closure] for any callback symbols that
	 * are added. Using this method allows for better encapsulation as it
	 * does not require that callback symbols be declared in the global
	 * namespace.
	 *
	 * Params:
	 *     callbackName = The name of the callback, as expected in the XML
	 *     callbackSymbol = The callback pointer
	 */
	public void addCallbackSymbol(string callbackName, GCallback callbackSymbol)
	{
		gtk_builder_cscope_add_callback_symbol(gtkBuilderCScope, Str.toStringz(callbackName), callbackSymbol);
	}

	/**
	 * Fetches a symbol previously added with
	 * gtk_builder_cscope_add_callback_symbol().
	 *
	 * Params:
	 *     callbackName = The name of the callback
	 *
	 * Returns: The callback symbol
	 *     in @builder for @callback_name
	 */
	public GCallback lookupCallbackSymbol(string callbackName)
	{
		return gtk_builder_cscope_lookup_callback_symbol(gtkBuilderCScope, Str.toStringz(callbackName));
	}
}
