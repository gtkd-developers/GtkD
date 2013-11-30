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

/*
 * Conversion parameters:
 * inFile  = gstreamer-GstContext.html
 * outPack = gstreamer
 * outFile = Context
 * strct   = GstContext
 * realStrct=
 * ctorStrct=
 * clss    = Context
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Structure
 * structWrap:
 * 	- GstContext* -> Context
 * 	- GstStructure* -> Structure
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Context;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import glib.Str;
private import gstreamer.Structure;



/**
 * GstContext is a container object used to store contexts like a device
 * context, a display server connection and similar concepts that should
 * be shared between multiple elements.
 *
 * Applications can set a context on a complete pipeline by using
 * gst_element_set_context(), which will then be propagated to all
 * child elements. Elements can handle these in GstElement::set_context()
 * and merge them with the context information they already have.
 *
 * When an element needs a context it will do the following actions in this
 * order until one step succeeds:
 * 1) Check if the element already has a context
 * 2) Query downstream with GST_QUERY_CONTEXT for the context
 * 2) Query upstream with GST_QUERY_CONTEXT for the context
 * 3) Post a GST_MESSAGE_NEED_CONTEXT message on the bus with the required
 *  context types and afterwards check if a usable context was set now
 * 4) Create a context by itself and post a GST_MESSAGE_HAVE_CONTEXT message
 *  on the bus.
 *
 * Bins will catch GST_MESSAGE_NEED_CONTEXT messages and will set any previously
 * known context on the element that asks for it if possible. Otherwise the
 * application should provide one if it can.
 */
public class Context
{
	
	/** the main Gtk struct */
	protected GstContext* gstContext;
	
	
	/** Get the main Gtk struct */
	public GstContext* getContextStruct()
	{
		return gstContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstContext* gstContext)
	{
		this.gstContext = gstContext;
	}
	
	/**
	 */
	
	/**
	 * Create a new context.
	 * Since 1.2
	 * Params:
	 * persistent = Persistent context
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string contextType, int persistent)
	{
		// GstContext * gst_context_new (const gchar *context_type,  gboolean persistent);
		auto p = gst_context_new(Str.toStringz(contextType), persistent);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_context_new(Str.toStringz(contextType), persistent)");
		}
		this(cast(GstContext*) p);
	}
	
	/**
	 * Convenience macro to increase the reference count of the context.
	 * Returns: context (for convenience when doing assignments)
	 */
	public Context doref()
	{
		// GstContext * gst_context_ref (GstContext *context);
		auto p = gst_context_ref(gstContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Context)(cast(GstContext*) p);
	}
	
	/**
	 * Convenience macro to decrease the reference count of the context, possibly
	 * freeing it.
	 */
	public void unref()
	{
		// void gst_context_unref (GstContext *context);
		gst_context_unref(gstContext);
	}
	
	/**
	 * Creates a copy of the context. Returns a copy of the context.
	 * Returns: a new copy of context. MT safe. [transfer full]
	 */
	public Context copy()
	{
		// GstContext * gst_context_copy (const GstContext *context);
		auto p = gst_context_copy(gstContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Context)(cast(GstContext*) p);
	}
	
	/**
	 * Get the type of context.
	 * Since 1.2
	 * Returns: The type of the context.
	 */
	public string getContextType()
	{
		// const gchar * gst_context_get_context_type (const GstContext *context);
		return Str.toString(gst_context_get_context_type(gstContext));
	}
	
	/**
	 * Checks if context has context_type.
	 * Since 1.2
	 * Params:
	 * context = The GstContext.
	 * contextType = Context type to check.
	 * Returns: TRUE if context has context_type.
	 */
	public int hasContextType(string contextType)
	{
		// gboolean gst_context_has_context_type (const GstContext *context,  const gchar *context_type);
		return gst_context_has_context_type(gstContext, Str.toStringz(contextType));
	}
	
	/**
	 * Check if context is persistent.
	 * Since 1.2
	 * Returns: TRUE if the context is persistent.
	 */
	public int isPersistent()
	{
		// gboolean gst_context_is_persistent (const GstContext *context);
		return gst_context_is_persistent(gstContext);
	}
	
	/**
	 * Access the structure of the context.
	 * Since 1.2
	 * Returns: The structure of the context. The structure is still owned by the context, which means that you should not modify it, free it and that the pointer becomes invalid when you free the context. [transfer none]
	 */
	public Structure getStructure()
	{
		// const GstStructure * gst_context_get_structure (const GstContext *context);
		auto p = gst_context_get_structure(gstContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Get a writable version of the structure.
	 * Since 1.2
	 * Returns: The structure of the context. The structure is still owned by the event, which means that you should not free it and that the pointer becomes invalid when you free the event. This function checks if context is writable.
	 */
	public Structure writableStructure()
	{
		// GstStructure * gst_context_writable_structure (GstContext *context);
		auto p = gst_context_writable_structure(gstContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p);
	}
	
	/**
	 * Modifies a pointer to a GstContext to point to a different GstContext. The
	 * modification is done atomically (so this is useful for ensuring thread safety
	 * in some cases), and the reference counts are updated appropriately (the old
	 * context is unreffed, the new one is reffed).
	 * Either new_context or the GstContext pointed to by old_context may be NULL.
	 * Params:
	 * oldContext = pointer to a pointer to a GstContext
	 * to be replaced. [inout][transfer full]
	 * newContext = pointer to a GstContext that will
	 * replace the context pointed to by old_context. [allow-none][transfer none]
	 * Returns: TRUE if new_context was different from old_context
	 */
	public static int replace(ref Context oldContext, Context newContext)
	{
		// gboolean gst_context_replace (GstContext **old_context,  GstContext *new_context);
		GstContext* outoldContext = (oldContext is null) ? null : oldContext.getContextStruct();
		
		auto p = gst_context_replace(&outoldContext, (newContext is null) ? null : newContext.getContextStruct());
		
		oldContext = ObjectG.getDObject!(Context)(outoldContext);
		return p;
	}
}
