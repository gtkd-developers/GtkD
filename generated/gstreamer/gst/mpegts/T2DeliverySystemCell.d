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


module gst.mpegts.T2DeliverySystemCell;

private import glib.ArrayG;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/** */
public final class T2DeliverySystemCell
{
	/** the main Gtk struct */
	protected GstMpegtsT2DeliverySystemCell* gstMpegtsT2DeliverySystemCell;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsT2DeliverySystemCell* getT2DeliverySystemCellStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsT2DeliverySystemCell;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsT2DeliverySystemCell;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsT2DeliverySystemCell* gstMpegtsT2DeliverySystemCell, bool ownedRef = false)
	{
		this.gstMpegtsT2DeliverySystemCell = gstMpegtsT2DeliverySystemCell;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsT2DeliverySystemCell);
	}


	/**
	 * id of the cell
	 */
	public @property ushort cellId()
	{
		return gstMpegtsT2DeliverySystemCell.cellId;
	}

	/** Ditto */
	public @property void cellId(ushort value)
	{
		gstMpegtsT2DeliverySystemCell.cellId = value;
	}

	/**
	 * centre frequencies in Hz
	 */
	public @property ArrayG centreFrequencies()
	{
		return new ArrayG(gstMpegtsT2DeliverySystemCell.centreFrequencies, false);
	}

	/** Ditto */
	public @property void centreFrequencies(ArrayG value)
	{
		gstMpegtsT2DeliverySystemCell.centreFrequencies = value.getArrayGStruct();
	}

	/** */
	public @property PtrArray subCells()
	{
		return new PtrArray(gstMpegtsT2DeliverySystemCell.subCells, false);
	}

	/** Ditto */
	public @property void subCells(PtrArray value)
	{
		gstMpegtsT2DeliverySystemCell.subCells = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_t2_delivery_system_cell_get_type();
	}
}
