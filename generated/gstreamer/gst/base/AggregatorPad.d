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


module gst.base.AggregatorPad;

private import gobject.ObjectG;
private import gst.base.c.functions;
public  import gst.base.c.types;
private import gstreamer.Buffer;
private import gstreamer.Pad;


/**
 * Pads managed by a #GstAggregor subclass.
 * 
 * This class used to live in gst-plugins-bad and was moved to core.
 */
public class AggregatorPad : Pad
{
	/** the main Gtk struct */
	protected GstAggregatorPad* gstAggregatorPad;

	/** Get the main Gtk struct */
	public GstAggregatorPad* getAggregatorPadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstAggregatorPad;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstAggregatorPad;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstAggregatorPad* gstAggregatorPad, bool ownedRef = false)
	{
		this.gstAggregatorPad = gstAggregatorPad;
		super(cast(GstPad*)gstAggregatorPad, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_aggregator_pad_get_type();
	}

	/**
	 * Drop the buffer currently queued in @pad.
	 *
	 * Returns: TRUE if there was a buffer queued in @pad, or FALSE if not.
	 */
	public bool dropBuffer()
	{
		return gst_aggregator_pad_drop_buffer(gstAggregatorPad) != 0;
	}

	/**
	 * Returns: %TRUE if the pad has a buffer available as the next thing.
	 *
	 * Since: 1.14.1
	 */
	public bool hasBuffer()
	{
		return gst_aggregator_pad_has_buffer(gstAggregatorPad) != 0;
	}

	/**
	 * Returns: %TRUE if the pad is EOS, otherwise %FALSE.
	 */
	public bool isEos()
	{
		return gst_aggregator_pad_is_eos(gstAggregatorPad) != 0;
	}

	/**
	 * Returns: A reference to the buffer in @pad or
	 *     NULL if no buffer was queued. You should unref the buffer after
	 *     usage.
	 */
	public Buffer peekBuffer()
	{
		auto p = gst_aggregator_pad_peek_buffer(gstAggregatorPad);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}

	/**
	 * Steal the ref to the buffer currently queued in @pad.
	 *
	 * Returns: The buffer in @pad or NULL if no buffer was
	 *     queued. You should unref the buffer after usage.
	 */
	public Buffer popBuffer()
	{
		auto p = gst_aggregator_pad_pop_buffer(gstAggregatorPad);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(GstBuffer*) p, true);
	}
}
