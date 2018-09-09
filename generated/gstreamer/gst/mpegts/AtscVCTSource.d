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


module gst.mpegts.AtscVCTSource;

private import glib.MemorySlice;
private import glib.PtrArray;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Source from a @GstMpegtsAtscVCT, can be used both for TVCT and CVCT tables
 */
public final class AtscVCTSource
{
	/** the main Gtk struct */
	protected GstMpegtsAtscVCTSource* gstMpegtsAtscVCTSource;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscVCTSource* getAtscVCTSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscVCTSource;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscVCTSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscVCTSource* gstMpegtsAtscVCTSource, bool ownedRef = false)
	{
		this.gstMpegtsAtscVCTSource = gstMpegtsAtscVCTSource;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscVCTSource);
	}


	/** */
	public @property string shortName()
	{
		return Str.toString(gstMpegtsAtscVCTSource.shortName);
	}

	/** Ditto */
	public @property void shortName(string value)
	{
		gstMpegtsAtscVCTSource.shortName = Str.toStringz(value);
	}

	/** */
	public @property ushort majorChannelNumber()
	{
		return gstMpegtsAtscVCTSource.majorChannelNumber;
	}

	/** Ditto */
	public @property void majorChannelNumber(ushort value)
	{
		gstMpegtsAtscVCTSource.majorChannelNumber = value;
	}

	/** */
	public @property ushort minorChannelNumber()
	{
		return gstMpegtsAtscVCTSource.minorChannelNumber;
	}

	/** Ditto */
	public @property void minorChannelNumber(ushort value)
	{
		gstMpegtsAtscVCTSource.minorChannelNumber = value;
	}

	/** */
	public @property ubyte modulationMode()
	{
		return gstMpegtsAtscVCTSource.modulationMode;
	}

	/** Ditto */
	public @property void modulationMode(ubyte value)
	{
		gstMpegtsAtscVCTSource.modulationMode = value;
	}

	/** */
	public @property uint carrierFrequency()
	{
		return gstMpegtsAtscVCTSource.carrierFrequency;
	}

	/** Ditto */
	public @property void carrierFrequency(uint value)
	{
		gstMpegtsAtscVCTSource.carrierFrequency = value;
	}

	/** */
	public @property ushort channelTSID()
	{
		return gstMpegtsAtscVCTSource.channelTSID;
	}

	/** Ditto */
	public @property void channelTSID(ushort value)
	{
		gstMpegtsAtscVCTSource.channelTSID = value;
	}

	/** */
	public @property ushort programNumber()
	{
		return gstMpegtsAtscVCTSource.programNumber;
	}

	/** Ditto */
	public @property void programNumber(ushort value)
	{
		gstMpegtsAtscVCTSource.programNumber = value;
	}

	/** */
	public @property ubyte ETMLocation()
	{
		return gstMpegtsAtscVCTSource.ETMLocation;
	}

	/** Ditto */
	public @property void ETMLocation(ubyte value)
	{
		gstMpegtsAtscVCTSource.ETMLocation = value;
	}

	/** */
	public @property bool accessControlled()
	{
		return gstMpegtsAtscVCTSource.accessControlled != 0;
	}

	/** Ditto */
	public @property void accessControlled(bool value)
	{
		gstMpegtsAtscVCTSource.accessControlled = value;
	}

	/** */
	public @property bool hidden()
	{
		return gstMpegtsAtscVCTSource.hidden != 0;
	}

	/** Ditto */
	public @property void hidden(bool value)
	{
		gstMpegtsAtscVCTSource.hidden = value;
	}

	/** */
	public @property bool pathSelect()
	{
		return gstMpegtsAtscVCTSource.pathSelect != 0;
	}

	/** Ditto */
	public @property void pathSelect(bool value)
	{
		gstMpegtsAtscVCTSource.pathSelect = value;
	}

	/** */
	public @property bool outOfBand()
	{
		return gstMpegtsAtscVCTSource.outOfBand != 0;
	}

	/** Ditto */
	public @property void outOfBand(bool value)
	{
		gstMpegtsAtscVCTSource.outOfBand = value;
	}

	/** */
	public @property bool hideGuide()
	{
		return gstMpegtsAtscVCTSource.hideGuide != 0;
	}

	/** Ditto */
	public @property void hideGuide(bool value)
	{
		gstMpegtsAtscVCTSource.hideGuide = value;
	}

	/** */
	public @property ubyte serviceType()
	{
		return gstMpegtsAtscVCTSource.serviceType;
	}

	/** Ditto */
	public @property void serviceType(ubyte value)
	{
		gstMpegtsAtscVCTSource.serviceType = value;
	}

	/** */
	public @property ushort sourceId()
	{
		return gstMpegtsAtscVCTSource.sourceId;
	}

	/** Ditto */
	public @property void sourceId(ushort value)
	{
		gstMpegtsAtscVCTSource.sourceId = value;
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscVCTSource.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscVCTSource.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_vct_source_get_type();
	}
}
