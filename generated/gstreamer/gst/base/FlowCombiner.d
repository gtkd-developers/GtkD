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


module gst.base.FlowCombiner;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Pad;
private import gtkd.Loader;


/**
 * Utility struct to help handling #GstFlowReturn combination. Useful for
 * #GstElement<!-- -->s that have multiple source pads and need to combine
 * the different #GstFlowReturn for those pads.
 * 
 * #GstFlowCombiner works by using the last #GstFlowReturn for all #GstPad
 * it has in its list and computes the combined return value and provides
 * it to the caller.
 * 
 * To add a new pad to the #GstFlowCombiner use gst_flow_combiner_add_pad().
 * The new #GstPad is stored with a default value of %GST_FLOW_OK.
 * 
 * In case you want a #GstPad to be removed, use gst_flow_combiner_remove_pad().
 * 
 * Please be aware that this struct isn't thread safe as its designed to be
 * used by demuxers, those usually will have a single thread operating it.
 * 
 * These functions will take refs on the passed #GstPad<!-- -->s.
 * 
 * Aside from reducing the user's code size, the main advantage of using this
 * helper struct is to follow the standard rules for #GstFlowReturn combination.
 * These rules are:
 * 
 * * %GST_FLOW_EOS: only if all returns are EOS too
 * * %GST_FLOW_NOT_LINKED: only if all returns are NOT_LINKED too
 * * %GST_FLOW_ERROR or below: if at least one returns an error return
 * * %GST_FLOW_NOT_NEGOTIATED: if at least one returns a not-negotiated return
 * * %GST_FLOW_FLUSHING: if at least one returns flushing
 * * %GST_FLOW_OK: otherwise
 * 
 * %GST_FLOW_ERROR or below, GST_FLOW_NOT_NEGOTIATED and GST_FLOW_FLUSHING are
 * returned immediately from the gst_flow_combiner_update_flow() function.
 *
 * Since: 1.4
 */
public class FlowCombiner
{
	/** the main Gtk struct */
	protected GstFlowCombiner* gstFlowCombiner;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstFlowCombiner* getFlowCombinerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstFlowCombiner;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstFlowCombiner;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstFlowCombiner* gstFlowCombiner, bool ownedRef = false)
	{
		this.gstFlowCombiner = gstFlowCombiner;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTBASE) && ownedRef )
			gst_flow_combiner_unref(gstFlowCombiner);
	}


	/** */
	public static GType getType()
	{
		return gst_flow_combiner_get_type();
	}

	/**
	 * Creates a new #GstFlowCombiner, use gst_flow_combiner_free() to free it.
	 *
	 * Returns: A new #GstFlowCombiner
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_flow_combiner_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstFlowCombiner*) __p);
	}

	/**
	 * Adds a new #GstPad to the #GstFlowCombiner.
	 *
	 * Params:
	 *     pad = the #GstPad that is being added
	 *
	 * Since: 1.4
	 */
	public void addPad(Pad pad)
	{
		gst_flow_combiner_add_pad(gstFlowCombiner, (pad is null) ? null : pad.getPadStruct());
	}

	/**
	 * Removes all pads from a #GstFlowCombiner and resets it to its initial state.
	 *
	 * Since: 1.6
	 */
	public void clear()
	{
		gst_flow_combiner_clear(gstFlowCombiner);
	}

	/**
	 * Frees a #GstFlowCombiner struct and all its internal data.
	 *
	 * Since: 1.4
	 */
	public void free()
	{
		gst_flow_combiner_free(gstFlowCombiner);
		ownedRef = false;
	}

	alias doref = ref_;
	/**
	 * Increments the reference count on the #GstFlowCombiner.
	 *
	 * Returns: the #GstFlowCombiner.
	 *
	 * Since: 1.12.1
	 */
	public FlowCombiner ref_()
	{
		auto __p = gst_flow_combiner_ref(gstFlowCombiner);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FlowCombiner)(cast(GstFlowCombiner*) __p, true);
	}

	/**
	 * Removes a #GstPad from the #GstFlowCombiner.
	 *
	 * Params:
	 *     pad = the #GstPad to remove
	 *
	 * Since: 1.4
	 */
	public void removePad(Pad pad)
	{
		gst_flow_combiner_remove_pad(gstFlowCombiner, (pad is null) ? null : pad.getPadStruct());
	}

	/**
	 * Reset flow combiner and all pads to their initial state without removing pads.
	 *
	 * Since: 1.6
	 */
	public void reset()
	{
		gst_flow_combiner_reset(gstFlowCombiner);
	}

	/**
	 * Decrements the reference count on the #GstFlowCombiner.
	 *
	 * Since: 1.12.1
	 */
	public void unref()
	{
		gst_flow_combiner_unref(gstFlowCombiner);
	}

	/**
	 * Computes the combined flow return for the pads in it.
	 *
	 * The #GstFlowReturn parameter should be the last flow return update for a pad
	 * in this #GstFlowCombiner. It will use this value to be able to shortcut some
	 * combinations and avoid looking over all pads again. e.g. The last combined
	 * return is the same as the latest obtained #GstFlowReturn.
	 *
	 * Params:
	 *     fret = the latest #GstFlowReturn received for a pad in this #GstFlowCombiner
	 *
	 * Returns: The combined #GstFlowReturn
	 *
	 * Since: 1.4
	 */
	public GstFlowReturn updateFlow(GstFlowReturn fret)
	{
		return gst_flow_combiner_update_flow(gstFlowCombiner, fret);
	}

	/**
	 * Sets the provided pad's last flow return to provided value and computes
	 * the combined flow return for the pads in it.
	 *
	 * The #GstFlowReturn parameter should be the last flow return update for a pad
	 * in this #GstFlowCombiner. It will use this value to be able to shortcut some
	 * combinations and avoid looking over all pads again. e.g. The last combined
	 * return is the same as the latest obtained #GstFlowReturn.
	 *
	 * Params:
	 *     pad = the #GstPad whose #GstFlowReturn to update
	 *     fret = the latest #GstFlowReturn received for a pad in this #GstFlowCombiner
	 *
	 * Returns: The combined #GstFlowReturn
	 *
	 * Since: 1.6
	 */
	public GstFlowReturn updatePadFlow(Pad pad, GstFlowReturn fret)
	{
		return gst_flow_combiner_update_pad_flow(gstFlowCombiner, (pad is null) ? null : pad.getPadStruct(), fret);
	}
}
