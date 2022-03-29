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


module gst.mpegts.DVBParentalRatingItem;

private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class DVBParentalRatingItem
{
	/** the main Gtk struct */
	protected GstMpegtsDVBParentalRatingItem* gstMpegtsDVBParentalRatingItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDVBParentalRatingItem* getDVBParentalRatingItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDVBParentalRatingItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDVBParentalRatingItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDVBParentalRatingItem* gstMpegtsDVBParentalRatingItem, bool ownedRef = false)
	{
		this.gstMpegtsDVBParentalRatingItem = gstMpegtsDVBParentalRatingItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsDVBParentalRatingItem);
	}


	/** */
	public @property string countryCode()
	{
		return Str.toString(gstMpegtsDVBParentalRatingItem.countryCode);
	}

	/** Ditto */
	public @property void countryCode(string value)
	{
		gstMpegtsDVBParentalRatingItem.countryCode = Str.toStringz(value);
	}

	/** */
	public @property ubyte rating()
	{
		return gstMpegtsDVBParentalRatingItem.rating;
	}

	/** Ditto */
	public @property void rating(ubyte value)
	{
		gstMpegtsDVBParentalRatingItem.rating = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_parental_rating_item_get_type();
	}
}
