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
private import gst.mpegts.AtscRRT;
private import gst.mpegts.AtscSTT;
private import gst.mpegts.AtscVCT;
private import gst.mpegts.BAT;
private import gst.mpegts.EIT;
private import gst.mpegts.NIT;
private import gst.mpegts.PMT;
private import gst.mpegts.PatProgram;
private import gst.mpegts.SCTESIT;
private import gst.mpegts.SDT;
private import gst.mpegts.SIT;
private import gst.mpegts.TOT;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gstreamer.DateTime;
private import gstreamer.Element;
private import gstreamer.Event;
private import gstreamer.Message;
private import gstreamer.ObjectGst;


/**
 * ## Generic usage of sections with %GstMpegtsSection
 * 
 * The %GstMpegtsSection object is the representation of MPEG-TS Section (SI or
 * PSI).
 * 
 * Various elements can post those on the bus via %GstMessage of type
 * %GST_MESSAGE_ELEMENT. The gst_message_parse_mpegts_section() function
 * provides access to the section.
 * 
 * Applications (or other elements) can create them either by using one of the
 * `gst_mpegts_section_from_*` functions, or by providing the raw SI data via
 * gst_mpegts_section_new().
 * 
 * Elements outputting MPEG-TS streams can also create sections using the
 * various convenience functions and then get the packetized data (to be
 * inserted in MPEG-TS packets) using gst_mpegts_section_packetize().
 * 
 * For more details, refer to the ITU H.222.0 or ISO/IEC 13818-1 specifications
 * and other specifications mentioned in the documentation.
 * 
 * # Supported base MPEG-TS sections
 * These are the sections for which parsing and packetizing code exists.
 * 
 * ## Program Association Table (PAT)
 * See:
 * * gst_mpegts_section_get_pat()
 * * gst_mpegts_pat_program_new()
 * * %GstMpegtsPatProgram
 * 
 * ## Conditional Access Table (CAT)
 * See:
 * * gst_mpegts_section_get_cat()
 * 
 * ## Program Map Table (PMT)
 * See:
 * * %GstMpegtsPMT
 * * gst_mpegts_section_get_pmt()
 * * gst_mpegts_pmt_new()
 * * %GstMpegtsPMTStream
 * 
 * ## Transport Stream Description Table (TSDT)
 * See:
 * * gst_mpegts_section_get_tsdt()
 * # API
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
	 *     data = a pointer to the beginning of
	 *         the section (i.e. the first byte should contain the `table_id` field).
	 *
	 * Returns: A new #GstMpegtsSection if the data was valid,
	 *     else %NULL
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort pid, ubyte[] data)
	{
		auto __p = gst_mpegts_section_new(pid, data.ptr, cast(size_t)data.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSection*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscVCT contained in the @section
	 *
	 * Returns: The #GstMpegtsAtscVCT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscVCT getAtscCvct()
	{
		auto __p = gst_mpegts_section_get_atsc_cvct(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscVCT)(cast(GstMpegtsAtscVCT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscEIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscEIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscEIT getAtscEit()
	{
		auto __p = gst_mpegts_section_get_atsc_eit(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscEIT)(cast(GstMpegtsAtscEIT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscETT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscETT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscETT getAtscEtt()
	{
		auto __p = gst_mpegts_section_get_atsc_ett(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscETT)(cast(GstMpegtsAtscETT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscMGT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscMGT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscMGT getAtscMgt()
	{
		auto __p = gst_mpegts_section_get_atsc_mgt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscMGT)(cast(GstMpegtsAtscMGT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscRRT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscRRT contained in the section, or %NULL if an error
	 *     happened.
	 *
	 * Since: 1.18
	 */
	public AtscRRT getAtscRrt()
	{
		auto __p = gst_mpegts_section_get_atsc_rrt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscRRT)(cast(GstMpegtsAtscRRT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscSTT contained in the @section.
	 *
	 * Returns: The #GstMpegtsAtscSTT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscSTT getAtscStt()
	{
		auto __p = gst_mpegts_section_get_atsc_stt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscSTT)(cast(GstMpegtsAtscSTT*) __p);
	}

	/**
	 * Returns the #GstMpegtsAtscVCT contained in the @section
	 *
	 * Returns: The #GstMpegtsAtscVCT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public AtscVCT getAtscTvct()
	{
		auto __p = gst_mpegts_section_get_atsc_tvct(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AtscVCT)(cast(GstMpegtsAtscVCT*) __p);
	}

	/**
	 * Returns the #GstMpegtsBAT contained in the @section.
	 *
	 * Returns: The #GstMpegtsBAT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public BAT getBat()
	{
		auto __p = gst_mpegts_section_get_bat(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BAT)(cast(GstMpegtsBAT*) __p);
	}

	/**
	 * Parses a Conditional Access Table.
	 *
	 * Returns the array of #GstMpegtsDescriptor contained in the Conditional
	 * Access Table.
	 *
	 * Returns: The array
	 *     of #GstMpegtsDescriptor contained in the section, or %NULL if an error
	 *     happened. Release with #g_array_unref when done.
	 */
	public PtrArray getCat()
	{
		auto __p = gst_mpegts_section_get_cat(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Gets the original unparsed section data.
	 *
	 * Returns: The original unparsed section data.
	 */
	public Bytes getData()
	{
		auto __p = gst_mpegts_section_get_data(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Returns the #GstMpegtsEIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsEIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public EIT getEit()
	{
		auto __p = gst_mpegts_section_get_eit(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EIT)(cast(GstMpegtsEIT*) __p);
	}

	/**
	 * Returns the #GstMpegtsNIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsNIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public NIT getNit()
	{
		auto __p = gst_mpegts_section_get_nit(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NIT)(cast(GstMpegtsNIT*) __p);
	}

	/**
	 * Parses a Program Association Table (ITU H.222.0, ISO/IEC 13818-1).
	 *
	 * Returns the array of #GstMpegtsPatProgram contained in the section.
	 *
	 * Note: The PAT `transport_stream_id` field corresponds to the
	 * "subtable_extension" field of the provided @section.
	 *
	 * Returns: The
	 *     #GstMpegtsPatProgram contained in the section, or %NULL if an error happened
	 *     or the @section did not contain a valid PAT. Release with #g_ptr_array_unref
	 *     when done.
	 */
	public PtrArray getPat()
	{
		auto __p = gst_mpegts_section_get_pat(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Parses the Program Map Table contained in the @section.
	 *
	 * Returns: The #GstMpegtsPMT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public PMT getPmt()
	{
		auto __p = gst_mpegts_section_get_pmt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PMT)(cast(GstMpegtsPMT*) __p);
	}

	/**
	 * Returns the #GstMpegtsSCTESIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsSCTESIT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public SCTESIT getScteSit()
	{
		auto __p = gst_mpegts_section_get_scte_sit(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SCTESIT)(cast(GstMpegtsSCTESIT*) __p);
	}

	/**
	 * Returns the #GstMpegtsSDT contained in the @section.
	 *
	 * Returns: The #GstMpegtsSDT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public SDT getSdt()
	{
		auto __p = gst_mpegts_section_get_sdt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SDT)(cast(GstMpegtsSDT*) __p);
	}

	/**
	 * Returns the #GstMpegtsSIT contained in the @section.
	 *
	 * Returns: The #GstMpegtsSIT contained in the section, or %NULL if an error
	 *     happened.
	 *
	 * Since: 1.20
	 */
	public SIT getSit()
	{
		auto __p = gst_mpegts_section_get_sit(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SIT)(cast(GstMpegtsSIT*) __p);
	}

	/**
	 * Returns the #GstDateTime of the TDT
	 *
	 * Returns: The #GstDateTime contained in the section, or %NULL
	 *     if an error happened. Release with #gst_date_time_unref when done.
	 */
	public DateTime getTdt()
	{
		auto __p = gst_mpegts_section_get_tdt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DateTime)(cast(GstDateTime*) __p, true);
	}

	/**
	 * Returns the #GstMpegtsTOT contained in the @section.
	 *
	 * Returns: The #GstMpegtsTOT contained in the section, or %NULL if an error
	 *     happened.
	 */
	public TOT getTot()
	{
		auto __p = gst_mpegts_section_get_tot(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TOT)(cast(GstMpegtsTOT*) __p);
	}

	/**
	 * Parses a Transport Stream Description Table.
	 *
	 * Returns the array of #GstMpegtsDescriptor contained in the section
	 *
	 * Returns: The array
	 *     of #GstMpegtsDescriptor contained in the section, or %NULL if an error
	 *     happened. Release with #g_array_unref when done.
	 */
	public PtrArray getTsdt()
	{
		auto __p = gst_mpegts_section_get_tsdt(gstMpegtsSection);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Packetize (i.e. serialize) the @section. If the data in @section has already
	 * been packetized, the data pointer is returned immediately. Otherwise, the
	 * data field is allocated and populated.
	 *
	 * Returns: pointer to section data, or %NULL on failure.
	 */
	public ubyte[] packetize()
	{
		size_t outputSize;

		auto __p = gst_mpegts_section_packetize(gstMpegtsSection, &outputSize);

		return __p[0 .. outputSize];
	}

	/**
	 * Creates a custom #GstEvent with a @GstMpegtsSection and send it the @element
	 * #GstElement.
	 *
	 * Params:
	 *     element = The #GstElement to send to section event to
	 *
	 * Returns: %TRUE if the event was sent to the element.
	 */
	public bool sendEvent(Element element)
	{
		return gst_mpegts_section_send_event(gstMpegtsSection, (element is null) ? null : element.getElementStruct()) != 0;
	}

	/**
	 *
	 * Params:
	 *     mgt = a #GstMpegtsAtscMGT to create the #GstMpegtsSection from
	 * Returns: the #GstMpegtsSection
	 *
	 * Since: 1.18
	 */
	public static Section fromAtscMgt(AtscMGT mgt)
	{
		auto __p = gst_mpegts_section_from_atsc_mgt((mgt is null) ? null : mgt.getAtscMGTStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
	}

	/** */
	public static Section fromAtscRrt(AtscRRT rrt)
	{
		auto __p = gst_mpegts_section_from_atsc_rrt((rrt is null) ? null : rrt.getAtscRRTStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
	}

	/** */
	public static Section fromAtscStt(AtscSTT stt)
	{
		auto __p = gst_mpegts_section_from_atsc_stt((stt is null) ? null : stt.getAtscSTTStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
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
		auto __p = gst_mpegts_section_from_nit((nit is null) ? null : nit.getNITStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
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
		auto __p = gst_mpegts_section_from_pat((programs is null) ? null : programs.getPtrArrayStruct(), tsId);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
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
		auto __p = gst_mpegts_section_from_pmt((pmt is null) ? null : pmt.getPMTStruct(), pid);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
	}

	/**
	 * Ownership of @sit is taken. The data in @sit is managed by the #GstMpegtsSection
	 *
	 * Params:
	 *     sit = a #GstMpegtsSCTESIT to create the #GstMpegtsSection from
	 *
	 * Returns: the #GstMpegtsSection
	 */
	public static Section fromScteSit(SCTESIT sit, ushort pid)
	{
		auto __p = gst_mpegts_section_from_scte_sit((sit is null) ? null : sit.getSCTESITStruct(), pid);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
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
		auto __p = gst_mpegts_section_from_sdt((sdt is null) ? null : sdt.getSDTStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
	}

	/**
	 * Extracts the #GstMpegtsSection contained in the @event #GstEvent
	 *
	 * Params:
	 *     event = #GstEvent containing a #GstMpegtsSection
	 *
	 * Returns: The extracted #GstMpegtsSection , or %NULL if the
	 *     event did not contain a valid #GstMpegtsSection.
	 */
	public static Section eventParseMpegtsSection(Event event)
	{
		auto __p = gst_event_parse_mpegts_section((event is null) ? null : event.getEventStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
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
		auto __p = gst_message_new_mpegts_section((parent is null) ? null : parent.getObjectGstStruct(), (section is null) ? null : section.getSectionStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Message)(cast(GstMessage*) __p, true);
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
		auto __p = gst_message_parse_mpegts_section((message is null) ? null : message.getMessageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Section)(cast(GstMpegtsSection*) __p, true);
	}
}
