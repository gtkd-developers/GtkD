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


module gstreamer.Context;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Structure;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * #GstContext is a container object used to store contexts like a device
 * context, a display server connection and similar concepts that should
 * be shared between multiple elements.
 * 
 * Applications can set a context on a complete pipeline by using
 * gst_element_set_context(), which will then be propagated to all
 * child elements. Elements can handle these in #GstElementClass.set_context()
 * and merge them with the context information they already have.
 * 
 * When an element needs a context it will do the following actions in this
 * order until one step succeeds:
 * 1. Check if the element already has a context
 * 2. Query downstream with GST_QUERY_CONTEXT for the context
 * 3. Query upstream with GST_QUERY_CONTEXT for the context
 * 4. Post a GST_MESSAGE_NEED_CONTEXT message on the bus with the required
 * context types and afterwards check if a usable context was set now
 * 5. Create a context by itself and post a GST_MESSAGE_HAVE_CONTEXT message
 * on the bus.
 * 
 * Bins will catch GST_MESSAGE_NEED_CONTEXT messages and will set any previously
 * known context on the element that asks for it if possible. Otherwise the
 * application should provide one if it can.
 * 
 * #GstContext<!-- -->s can be persistent.
 * A persistent #GstContext is kept in elements when they reach
 * %GST_STATE_NULL, non-persistent ones will be removed.
 * Also, a non-persistent context won't override a previous persistent
 * context set to an element.
 */
public class Context
{
	/** the main Gtk struct */
	protected GstContext* gstContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstContext* getContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstContext* gstContext, bool ownedRef = false)
	{
		this.gstContext = gstContext;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_context_get_type();
	}

	/**
	 * Create a new context.
	 *
	 * Params:
	 *     contextType = Context type
	 *     persistent = Persistent context
	 *
	 * Returns: The new context.
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string contextType, bool persistent)
	{
		auto p = gst_context_new(Str.toStringz(contextType), persistent);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstContext*) p);
	}

	/**
	 * Get the type of @context.
	 *
	 * Returns: The type of the context.
	 *
	 * Since: 1.2
	 */
	public string getContextType()
	{
		return Str.toString(gst_context_get_context_type(gstContext));
	}

	/**
	 * Access the structure of the context.
	 *
	 * Returns: The structure of the context. The structure is
	 *     still owned by the context, which means that you should not modify it,
	 *     free it and that the pointer becomes invalid when you free the context.
	 *
	 * Since: 1.2
	 */
	public Structure getStructure()
	{
		auto p = gst_context_get_structure(gstContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}

	/**
	 * Checks if @context has @context_type.
	 *
	 * Params:
	 *     contextType = Context type to check.
	 *
	 * Returns: %TRUE if @context has @context_type.
	 *
	 * Since: 1.2
	 */
	public bool hasContextType(string contextType)
	{
		return gst_context_has_context_type(gstContext, Str.toStringz(contextType)) != 0;
	}

	/**
	 * Check if @context is persistent.
	 *
	 * Returns: %TRUE if the context is persistent.
	 *
	 * Since: 1.2
	 */
	public bool isPersistent()
	{
		return gst_context_is_persistent(gstContext) != 0;
	}

	/**
	 * Get a writable version of the structure.
	 *
	 * Returns: The structure of the context. The structure is still
	 *     owned by the context, which means that you should not free it and
	 *     that the pointer becomes invalid when you free the context.
	 *     This function checks if @context is writable.
	 *
	 * Since: 1.2
	 */
	public Structure writableStructure()
	{
		auto p = gst_context_writable_structure(gstContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p, true);
	}
}
