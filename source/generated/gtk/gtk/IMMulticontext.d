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


module gtk.IMMulticontext;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.IMContext;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkIMMulticontext` is an input method context supporting multiple,
 * switchable input methods.
 * 
 * Text widgets such as `GtkText` or `GtkTextView` use a `GtkIMMultiContext`
 * to implement their `im-module` property for switching between different
 * input methods.
 */
public class IMMulticontext : IMContext
{
	/** the main Gtk struct */
	protected GtkIMMulticontext* gtkIMMulticontext;

	/** Get the main Gtk struct */
	public GtkIMMulticontext* getIMMulticontextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIMMulticontext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIMMulticontext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIMMulticontext* gtkIMMulticontext, bool ownedRef = false)
	{
		this.gtkIMMulticontext = gtkIMMulticontext;
		super(cast(GtkIMContext*)gtkIMMulticontext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_im_multicontext_get_type();
	}

	/**
	 * Creates a new `GtkIMMulticontext`.
	 *
	 * Returns: a new `GtkIMMulticontext`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_im_multicontext_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIMMulticontext*) __p, true);
	}

	/**
	 * Gets the id of the currently active delegate of the @context.
	 *
	 * Returns: the id of the currently active delegate
	 */
	public string getContextId()
	{
		return Str.toString(gtk_im_multicontext_get_context_id(gtkIMMulticontext));
	}

	/**
	 * Sets the context id for @context.
	 *
	 * This causes the currently active delegate of @context to be
	 * replaced by the delegate corresponding to the new context id.
	 *
	 * Setting this to a non-%NULL value overrides the system-wide
	 * IM module setting. See the [property@Gtk.Settings:gtk-im-module]
	 * property.
	 *
	 * Params:
	 *     contextId = the id to use
	 */
	public void setContextId(string contextId)
	{
		gtk_im_multicontext_set_context_id(gtkIMMulticontext, Str.toStringz(contextId));
	}
}
