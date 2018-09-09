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


module gst.mpegts.ISO639LanguageDescriptor;

private import glib.MemorySlice;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class ISO639LanguageDescriptor
{
	/** the main Gtk struct */
	protected GstMpegtsISO639LanguageDescriptor* gstMpegtsISO639LanguageDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsISO639LanguageDescriptor* getISO639LanguageDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsISO639LanguageDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsISO639LanguageDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsISO639LanguageDescriptor* gstMpegtsISO639LanguageDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsISO639LanguageDescriptor = gstMpegtsISO639LanguageDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsISO639LanguageDescriptor);
	}


	/** */
	public @property uint nbLanguage()
	{
		return gstMpegtsISO639LanguageDescriptor.nbLanguage;
	}

	/** Ditto */
	public @property void nbLanguage(uint value)
	{
		gstMpegtsISO639LanguageDescriptor.nbLanguage = value;
	}

	/** */
	public @property string[64] language()
	{
		string[64] arr;
		foreach( i, str; gstMpegtsISO639LanguageDescriptor.language )
		{
			arr[i] = Str.toString(str);
		}
		return arr;
	}

	/** Ditto */
	public @property void language(string[64] value)
	{
		char*[64] arr;
		foreach( i, str; value )
		{
			arr[i] = Str.toStringz(str);
		}
		gstMpegtsISO639LanguageDescriptor.language = arr;
	}

	/** */
	public @property GstMpegtsIso639AudioType[64] audioType()
	{
		return gstMpegtsISO639LanguageDescriptor.audioType;
	}

	/** Ditto */
	public @property void audioType(GstMpegtsIso639AudioType[64] value)
	{
		gstMpegtsISO639LanguageDescriptor.audioType = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_iso_639_language_get_type();
	}

	/** */
	public void descriptorFree()
	{
		gst_mpegts_iso_639_language_descriptor_free(gstMpegtsISO639LanguageDescriptor);
	}
}
