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


module gst.mpegts.Section;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.AtscEIT;
private import gst.mpegts.AtscETT;
private import gst.mpegts.AtscMGT;
private import gst.mpegts.AtscSTT;
private import gst.mpegts.AtscVCT;
private import gst.mpegts.BAT;
private import gst.mpegts.EIT;
private import gst.mpegts.NIT;
private import gst.mpegts.PMT;
private import gst.mpegts.PatProgram;
private import gst.mpegts.SDT;
private import gst.mpegts.TOT;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gstreamer.DateTime;
private import gstreamer.Element;
private import gstreamer.Event;
private import gstreamer.Message;
private import gstreamer.ObjectGst;


/**
 * For more details, refer to the ITU H.222.0 or ISO/IEC 13818-1 specifications
 * and other specifications mentioned in the documentation.
 */
public class Section
{
	/** the main Gtk struct */
	protected GstMpegtsSection* gstMpegtsSection;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSection* getSectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSection;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSection* gstMpegtsSection, bool ownedRef = false)
	{
		this.gstMpegtsSection = gstMpegtsSection;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_mpegts_section_get_type();
	}

	/**
	 * Creates a new #GstMpegtsSection from the provided @data.
	 *
	 * Note: Ensuring @data is big enough to contain the full section is the
	 * responsibility of the caller. If it is not big enough, %NULL will be
	 * returned.
	 *
	 * Note: it is the responsibility of the caller to ensure @data does point
	 * to the beginning of the section.
	 *
	 * Params:
	 *     pid = the PID to which this section belongs
	 *     data = a pointer to the beginning of the section (i.e. the first byte
	 *         should contain the table_id field).
	 *
	 * Returns: A new #GstMpegtsSection if the data was valid,
	 *     else %NULL
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort pid, ubyte[] data)
	{
		auto p = gst_mpegts_section_new(pid, data.ptr, cast(size_t)data.length);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSection*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscVCT contained in the @section
	 *
	 * Returns: The #GstMpegtsAtscVCT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscVCT getAtscCvct()
	{
		auto p = gst_mpegts_section_get_atsc_cvct(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscVCT)(cast(GstMpegtsAtscVCT*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscEIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscEIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscEIT getAtscEit()
	{
		auto p = gst_mpegts_section_get_atsc_eit(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscEIT)(cast(GstMpegtsAtscEIT*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscETT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscETT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscETT getAtscEtt()
	{
		auto p = gst_mpegts_section_get_atsc_ett(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscETT)(cast(GstMpegtsAtscETT*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscMGT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscMGT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscMGT getAtscMgt()
	{
		auto p = gst_mpegts_section_get_atsc_mgt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscMGT)(cast(GstMpegtsAtscMGT*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscSTT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscSTT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscSTT getAtscStt()
	{
		auto p = gst_mpegts_section_get_atsc_stt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscSTT)(cast(GstMpegtsAtscSTT*) p);
	}

	/**
	 * Returns the #GstMpegtsAtscVCT contained in the @section
	 *
	 * Returns: The #GstMpegtsAtscVCT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscVCT getAtscTvct()
	{
		auto p = gst_mpegts_section_get_atsc_tvct(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscVCT)(cast(GstMpegtsAtscVCT*) p);
	}

	/**
	 * Returns the #GstMpegtsBAT contained in the @section.
	 *
	 * Returns: The #GstMpegtsBAT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public BAT getBat()
	{
		auto p = gst_mpegts_section_get_bat(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BAT)(cast(GstMpegtsBAT*) p);
	}

	/**
	 * Returns the array of #GstMpegtsDescriptor contained in the Conditional
	 * Access Table.
	 *
	 * Returns: The
	 *     #GstMpegtsDescriptor contained in the section, or %NULL if an error
	 *     happened. Release with #g_array_unref when done.
	 */
	public PtrArray getCat()
	{
		auto p = gst_mpegts_section_get_cat(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * Gets the original unparsed section data.
	 *
	 * Returns: The original unparsed section data.
	 */
	public Bytes getData()
	{
		auto p = gst_mpegts_section_get_data(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) p, true);
	}

	/**
	 * Returns the #GstMpegtsEIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsEIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public EIT getEit()
	{
		auto p = gst_mpegts_section_get_eit(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EIT)(cast(GstMpegtsEIT*) p);
	}

	/**
	 * Returns the #GstMpegtsNIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsNIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public NIT getNit()
	{
		auto p = gst_mpegts_section_get_nit(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NIT)(cast(GstMpegtsNIT*) p);
	}

	/**
	 * Parses a Program Association Table (ITU H.222.0, ISO/IEC 13818-1).
	 *
	 * Returns the array of #GstMpegtsPatProgram contained in the section.
	 *
	 * Note: The PAT "transport_id" field corresponds to the "subtable_extension"
	 * field of the provided @section.
	 *
	 * Returns: The
	 *     #GstMpegtsPatProgram contained in the section, or %NULL if an error
	 *     happened. Release with #g_ptr_array_unref when done.
	 */
	public PtrArray getPat()
	{
		auto p = gst_mpegts_section_get_pat(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * Returns the #GstMpegtsPMT contained in the @section.
	 *
	 * Returns: The #GstMpegtsPMT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public PMT getPmt()
	{
		auto p = gst_mpegts_section_get_pmt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PMT)(cast(GstMpegtsPMT*) p);
	}

	/**
	 * Returns the #GstMpegtsSDT contained in the @section.
	 *
	 * Returns: The #GstMpegtsSDT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public SDT getSdt()
	{
		auto p = gst_mpegts_section_get_sdt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SDT)(cast(GstMpegtsSDT*) p);
	}

	/**
	 * Returns the #GstDateTime of the TDT
	 *
	 * Returns: The #GstDateTime contained in the section, or %NULL
	 *     if an error happened. Release with #gst_date_time_unref when done.
	 */
	public DateTime getTdt()
	{
		auto p = gst_mpegts_section_get_tdt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DateTime)(cast(GstDateTime*) p, true);
	}

	/**
	 * Returns the #GstMpegtsTOT contained in the @section.
	 *
	 * Returns: The #GstMpegtsTOT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public TOT getTot()
	{
		auto p = gst_mpegts_section_get_tot(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TOT)(cast(GstMpegtsTOT*) p);
	}

	/**
	 * Returns the array of #GstMpegtsDescriptor contained in the section
	 *
	 * Returns: The
	 *     #GstMpegtsDescriptor contained in the section, or %NULL if an error
	 *     happened. Release with #g_array_unref when done.
	 */
	public PtrArray getTsdt()
	{
		auto p = gst_mpegts_section_get_tsdt(gstMpegtsSection);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p);
	}

	/**
	 * If the data in @section has already been packetized, the data pointer is returned
	 * immediately. Otherwise, the data field is allocated and populated.
	 *
	 * Returns: pointer to section data, or %NULL on fail
	 */
	public ubyte[] packetize()
	{
		size_t outputSize;

		auto p = gst_mpegts_section_packetize(gstMpegtsSection, &outputSize);

		return p[0 .. outputSize];
	}

	/**
	 * Creates a custom #GstEvent with a @GstMpegtsSection.
	 * The #GstEvent is sent to the @element #GstElement.
	 *
	 * Params:
	 *     element = The #GstElement to send to section event to
	 *
	 * Returns: %TRUE if the event is sent
	 */
	public bool sendEvent(Element element)
	{
		return gst_mpegts_section_send_event(gstMpegtsSection, (element is null) ? null : element.getElementStruct()) != 0;
	}

	/**
	 * Ownership of @nit is taken. The data in @nit is managed by the #GstMpegtsSection
	 *
	 * Params:
	 *     nit = a #GstMpegtsNIT to create the #GstMpegtsSection from
	 *
	 * Returns: the #GstMpegtsSection
	 */
	public static Section fromNit(NIT nit)
	{
		auto p = gst_mpegts_section_from_nit((nit is null) ? null : nit.getNITStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}

	/**
	 * Creates a PAT #GstMpegtsSection from the @programs array of #GstMpegtsPatPrograms
	 *
	 * Params:
	 *     programs = an array of #GstMpegtsPatProgram
	 *     tsId = Transport stream ID of the PAT
	 *
	 * Returns: a #GstMpegtsSection
	 */
	public static Section fromPat(PtrArray programs, ushort tsId)
	{
		auto p = gst_mpegts_section_from_pat((programs is null) ? null : programs.getPtrArrayStruct(), tsId);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}

	/**
	 * Creates a #GstMpegtsSection from @pmt that is bound to @pid
	 *
	 * Params:
	 *     pmt = a #GstMpegtsPMT to create a #GstMpegtsSection from
	 *     pid = The PID that the #GstMpegtsPMT belongs to
	 *
	 * Returns: #GstMpegtsSection
	 */
	public static Section fromPmt(PMT pmt, ushort pid)
	{
		auto p = gst_mpegts_section_from_pmt((pmt is null) ? null : pmt.getPMTStruct(), pid);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}

	/**
	 * Ownership of @sdt is taken. The data in @sdt is managed by the #GstMpegtsSection
	 *
	 * Params:
	 *     sdt = a #GstMpegtsSDT to create the #GstMpegtsSection from
	 *
	 * Returns: the #GstMpegtsSection
	 */
	public static Section fromSdt(SDT sdt)
	{
		auto p = gst_mpegts_section_from_sdt((sdt is null) ? null : sdt.getSDTStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}

	/**
	 * Extracts the #GstMpegtsSection contained in the @event #GstEvent
	 *
	 * Params:
	 *     event = #GstEvent containing a #GstMpegtsSection
	 *
	 * Returns: The extracted #GstMpegtsSection
	 */
	public static Section eventParseMpegtsSection(Event event)
	{
		auto p = gst_event_parse_mpegts_section((event is null) ? null : event.getEventStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}

	/**
	 * Creates a new #GstMessage for a @GstMpegtsSection.
	 *
	 * Params:
	 *     parent = The creator of the message
	 *     section = The #GstMpegtsSection to put in a message
	 *
	 * Returns: The new #GstMessage to be posted, or %NULL if the
	 *     section is not valid.
	 */
	public static Message messageNewMpegtsSection(ObjectGst parent, Section section)
	{
		auto p = gst_message_new_mpegts_section((parent is null) ? null : parent.getObjectGstStruct(), (section is null) ? null : section.getSectionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Message)(cast(GstMessage*) p, true);
	}

	/**
	 * Returns the #GstMpegtsSection contained in a message.
	 *
	 * Params:
	 *     message = a #GstMessage
	 *
	 * Returns: the contained #GstMpegtsSection, or %NULL.
	 */
	public static Section messageParseMpegtsSection(Message message)
	{
		auto p = gst_message_parse_mpegts_section((message is null) ? null : message.getMessageStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) p, true);
	}
}
