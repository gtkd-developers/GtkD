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


module gst.mpegts.Descriptor;

private import glib.ArrayG;
private import glib.PtrArray;
private import glib.Str;
private import gobject.ObjectG;
private import gst.mpegts.ComponentDescriptor;
private import gst.mpegts.DVBLinkageDescriptor;
private import gst.mpegts.DataBroadcastDescriptor;
private import gst.mpegts.ExtendedEventDescriptor;
private import gst.mpegts.ISO639LanguageDescriptor;
private import gst.mpegts.T2DeliverySystemDescriptor;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * These are the base descriptor types and methods.
 * 
 * For more details, refer to the ITU H.222.0 or ISO/IEC 13818-1 specifications
 * and other specifications mentionned in the documentation.
 */
public class Descriptor
{
	/** the main Gtk struct */
	protected GstMpegtsDescriptor* gstMpegtsDescriptor;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDescriptor* getDescriptorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDescriptor;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDescriptor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDescriptor* gstMpegtsDescriptor, bool ownedRef = false)
	{
		this.gstMpegtsDescriptor = gstMpegtsDescriptor;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			gst_mpegts_descriptor_free(gstMpegtsDescriptor);
	}

	/**
	 * Parses out the stuffing bytes from the @descriptor.
	 *
	 * Params:
	 *     stuffingBytes = the stuffing bytes
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbStuffing(out ubyte[] stuffingBytes)
	{
		ubyte* outstuffingBytes = null;

		auto p = gst_mpegts_descriptor_parse_dvb_stuffing(gstMpegtsDescriptor, &outstuffingBytes) != 0;

		stuffingBytes = outstuffingBytes[0 .. gstMpegtsDescriptor.length];

		return p;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gst_mpegts_descriptor_get_type();
	}

	/**
	 * Frees @desc
	 */
	public void free()
	{
		gst_mpegts_descriptor_free(gstMpegtsDescriptor);
		ownedRef = false;
	}

	/**
	 * Extracts the Conditional Access information from @descriptor.
	 *
	 * Params:
	 *     caSystemId = the type of CA system used
	 *     caPid = The PID containing ECM or EMM data
	 *     privateData = The private data
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseCa(out ushort caSystemId, out ushort caPid, out ubyte[] privateData)
	{
		ubyte* outprivateData = null;
		size_t privateDataSize;

		auto p = gst_mpegts_descriptor_parse_ca(gstMpegtsDescriptor, &caSystemId, &caPid, &outprivateData, &privateDataSize) != 0;

		privateData = outprivateData[0 .. privateDataSize];

		return p;
	}

	/**
	 * Extracts the cable delivery system information from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsCableDeliverySystemDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseCableDeliverySystem(out GstMpegtsCableDeliverySystemDescriptor res)
	{
		return gst_mpegts_descriptor_parse_cable_delivery_system(gstMpegtsDescriptor, &res) != 0;
	}

	/**
	 * Extracts the bouquet name from @descriptor.
	 *
	 * Params:
	 *     bouquetName = the bouquet name
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbBouquetName(out string bouquetName)
	{
		char* outbouquetName = null;

		auto p = gst_mpegts_descriptor_parse_dvb_bouquet_name(gstMpegtsDescriptor, &outbouquetName) != 0;

		bouquetName = Str.toString(outbouquetName);

		return p;
	}

	/**
	 * Extracts ca id's from @descriptor.
	 *
	 * Params:
	 *     list = a list of ca identifier.
	 *         Edge entry identifies the CA system. Allocations of the value of this field
	 *         are found in http://www.dvbservices.com
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbCaIdentifier(out ArrayG list)
	{
		GArray* outlist = null;

		auto p = gst_mpegts_descriptor_parse_dvb_ca_identifier(gstMpegtsDescriptor, &outlist) != 0;

		list = new ArrayG(outlist);

		return p;
	}

	/**
	 * Extracts the DVB component information from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsComponentDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbComponent(out ComponentDescriptor res)
	{
		GstMpegtsComponentDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_dvb_component(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(ComponentDescriptor)(outres);

		return p;
	}

	/**
	 * Extracts the DVB content information from @descriptor.
	 *
	 * Params:
	 *     content = #GstMpegtsContent
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbContent(out PtrArray content)
	{
		GPtrArray* outcontent = null;

		auto p = gst_mpegts_descriptor_parse_dvb_content(gstMpegtsDescriptor, &outcontent) != 0;

		content = new PtrArray(outcontent);

		return p;
	}

	/**
	 * Parses out the data broadcast from the @descriptor.
	 *
	 * Params:
	 *     res = #GstMpegtsDataBroadcastDescriptor
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbDataBroadcast(out DataBroadcastDescriptor res)
	{
		GstMpegtsDataBroadcastDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_dvb_data_broadcast(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(DataBroadcastDescriptor)(outres);

		return p;
	}

	/**
	 * Parses out the data broadcast id from the @descriptor.
	 *
	 * Params:
	 *     dataBroadcastId = the data broadcast id
	 *     idSelectorBytes = the selector bytes, if present
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbDataBroadcastId(out ushort dataBroadcastId, out ubyte[] idSelectorBytes)
	{
		ubyte* outidSelectorBytes = null;
		ubyte len;

		auto p = gst_mpegts_descriptor_parse_dvb_data_broadcast_id(gstMpegtsDescriptor, &dataBroadcastId, &outidSelectorBytes, &len) != 0;

		idSelectorBytes = outidSelectorBytes[0 .. len];

		return p;
	}

	/**
	 * Extracts the DVB extended event information from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsExtendedEventDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbExtendedEvent(out ExtendedEventDescriptor res)
	{
		GstMpegtsExtendedEventDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_dvb_extended_event(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(ExtendedEventDescriptor)(outres);

		return p;
	}

	/**
	 * Parses out a list of frequencies from the @descriptor.
	 *
	 * Params:
	 *     offset = %FALSE in Hz, %TRUE in kHz
	 *     list = a list of all frequencies in Hz/kHz
	 *         depending on %offset
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbFrequencyList(out bool offset, out ArrayG list)
	{
		int outoffset;
		GArray* outlist = null;

		auto p = gst_mpegts_descriptor_parse_dvb_frequency_list(gstMpegtsDescriptor, &outoffset, &outlist) != 0;

		offset = (outoffset == 1);
		list = new ArrayG(outlist);

		return p;
	}

	/**
	 * Extracts the DVB linkage information from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsDVBLinkageDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbLinkage(out DVBLinkageDescriptor res)
	{
		GstMpegtsDVBLinkageDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_dvb_linkage(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(DVBLinkageDescriptor)(outres);

		return p;
	}

	/**
	 * Parses out the multilingual bouquet name from the @descriptor.
	 *
	 * Params:
	 *     bouquetNameItems = a #GstMpegtsDvbMultilingualBouquetNameItem
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbMultilingualBouquetName(out PtrArray bouquetNameItems)
	{
		GPtrArray* outbouquetNameItems = null;

		auto p = gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name(gstMpegtsDescriptor, &outbouquetNameItems) != 0;

		bouquetNameItems = new PtrArray(outbouquetNameItems);

		return p;
	}

	/**
	 * Parses out the multilingual component from the @descriptor.
	 *
	 * Params:
	 *     componentTag = the component tag
	 *     componentDescriptionItems = a #GstMpegtsDvbMultilingualComponentItem
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbMultilingualComponent(out ubyte componentTag, out PtrArray componentDescriptionItems)
	{
		GPtrArray* outcomponentDescriptionItems = null;

		auto p = gst_mpegts_descriptor_parse_dvb_multilingual_component(gstMpegtsDescriptor, &componentTag, &outcomponentDescriptionItems) != 0;

		componentDescriptionItems = new PtrArray(outcomponentDescriptionItems);

		return p;
	}

	/**
	 * Parses out the multilingual network name from the @descriptor.
	 *
	 * Params:
	 *     networkNameItems = a #GstMpegtsDvbMultilingualNetworkNameItem
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbMultilingualNetworkName(out PtrArray networkNameItems)
	{
		GPtrArray* outnetworkNameItems = null;

		auto p = gst_mpegts_descriptor_parse_dvb_multilingual_network_name(gstMpegtsDescriptor, &outnetworkNameItems) != 0;

		networkNameItems = new PtrArray(outnetworkNameItems);

		return p;
	}

	/**
	 * Parses out the multilingual service name from the @descriptor.
	 *
	 * Params:
	 *     serviceNameItems = a #GstMpegtsDvbMultilingualServiceNameItem
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbMultilingualServiceName(out PtrArray serviceNameItems)
	{
		GPtrArray* outserviceNameItems = null;

		auto p = gst_mpegts_descriptor_parse_dvb_multilingual_service_name(gstMpegtsDescriptor, &outserviceNameItems) != 0;

		serviceNameItems = new PtrArray(outserviceNameItems);

		return p;
	}

	/**
	 * Parses out the dvb network name from the @descriptor:
	 *
	 * Params:
	 *     name = the extracted name
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbNetworkName(out string name)
	{
		char* outname = null;

		auto p = gst_mpegts_descriptor_parse_dvb_network_name(gstMpegtsDescriptor, &outname) != 0;

		name = Str.toString(outname);

		return p;
	}

	/**
	 * Extracts the DVB parental rating information from @descriptor.
	 *
	 * Params:
	 *     rating = #GstMpegtsDVBParentalRatingItem
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbParentalRating(out PtrArray rating)
	{
		GPtrArray* outrating = null;

		auto p = gst_mpegts_descriptor_parse_dvb_parental_rating(gstMpegtsDescriptor, &outrating) != 0;

		rating = new PtrArray(outrating);

		return p;
	}

	/**
	 * Parses out the private data specifier from the @descriptor.
	 *
	 * Params:
	 *     privateDataSpecifier = the private data specifier id
	 *         registered by http://www.dvbservices.com/
	 *     privateData = additional data or NULL
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbPrivateDataSpecifier(out uint privateDataSpecifier, out ubyte[] privateData)
	{
		ubyte* outprivateData = null;
		ubyte length;

		auto p = gst_mpegts_descriptor_parse_dvb_private_data_specifier(gstMpegtsDescriptor, &privateDataSpecifier, &outprivateData, &length) != 0;

		privateData = outprivateData[0 .. length];

		return p;
	}

	/**
	 * Parses out the scrambling mode from the @descriptor.
	 *
	 * Params:
	 *     scramblingMode = This 8-bit field identifies the selected
	 *         mode of the scrambling algorithm (#GstMpegtsDVBScramblingModeType).
	 *         The technical details of the scrambling algorithm are available only
	 *         to bona-fide users upon signature of a Non Disclosure Agreement (NDA)
	 *         administered by the DVB Common Scrambling Algorithm Custodian.
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbScrambling(out GstMpegtsDVBScramblingModeType scramblingMode)
	{
		return gst_mpegts_descriptor_parse_dvb_scrambling(gstMpegtsDescriptor, &scramblingMode) != 0;
	}

	/**
	 * Extracts the dvb service information from @descriptor.
	 *
	 * Params:
	 *     serviceType = the service type
	 *     serviceName = the service name
	 *     providerName = the provider name
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbService(out GstMpegtsDVBServiceType serviceType, out string serviceName, out string providerName)
	{
		char* outserviceName = null;
		char* outproviderName = null;

		auto p = gst_mpegts_descriptor_parse_dvb_service(gstMpegtsDescriptor, &serviceType, &outserviceName, &outproviderName) != 0;

		serviceName = Str.toString(outserviceName);
		providerName = Str.toString(outproviderName);

		return p;
	}

	/**
	 * Parses out a list of services from the @descriptor:
	 *
	 * Params:
	 *     list = the list of services
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbServiceList(out PtrArray list)
	{
		GPtrArray* outlist = null;

		auto p = gst_mpegts_descriptor_parse_dvb_service_list(gstMpegtsDescriptor, &outlist) != 0;

		list = new PtrArray(outlist);

		return p;
	}

	/**
	 * Extracts the DVB short event information from @descriptor.
	 *
	 * Params:
	 *     languageCode = the language code
	 *     eventName = the event name
	 *     text = the event text
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbShortEvent(out string languageCode, out string eventName, out string text)
	{
		char* outlanguageCode = null;
		char* outeventName = null;
		char* outtext = null;

		auto p = gst_mpegts_descriptor_parse_dvb_short_event(gstMpegtsDescriptor, &outlanguageCode, &outeventName, &outtext) != 0;

		languageCode = Str.toString(outlanguageCode);
		eventName = Str.toString(outeventName);
		text = Str.toString(outtext);

		return p;
	}

	/**
	 * Extracts the component tag from @descriptor.
	 *
	 * Params:
	 *     componentTag = the component tag
	 *
	 * Returns: %TRUE if the parsing happended correctly, else %FALSE.
	 */
	public bool parseDvbStreamIdentifier(out ubyte componentTag)
	{
		return gst_mpegts_descriptor_parse_dvb_stream_identifier(gstMpegtsDescriptor, &componentTag) != 0;
	}

	/**
	 * Extracts the DVB subtitling informatio from specific table id in @descriptor.
	 *
	 * Note: Use #gst_tag_get_language_code if you want to get the the
	 * ISO 639-1 language code from the returned ISO 639-2 one.
	 *
	 * Params:
	 *     idx = Table id of the entry to parse
	 *     lang = the language code
	 *     type = the type of subtitling
	 *     compositionPageId = the composition page id
	 *     ancillaryPageId = the ancillary page id
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseDvbSubtitlingIdx(uint idx, out string lang, out ubyte type, out ushort compositionPageId, out ushort ancillaryPageId)
	{
		char* outlang = null;

		auto p = gst_mpegts_descriptor_parse_dvb_subtitling_idx(gstMpegtsDescriptor, idx, &outlang, &type, &compositionPageId, &ancillaryPageId) != 0;

		lang = Str.toString(outlang);

		return p;
	}

	/**
	 * Returns: The number of entries in @descriptor
	 */
	public uint parseDvbSubtitlingNb()
	{
		return gst_mpegts_descriptor_parse_dvb_subtitling_nb(gstMpegtsDescriptor);
	}

	/**
	 * Parses out the DVB-T2 delivery system from the @descriptor.
	 *
	 * Params:
	 *     res = #GstMpegtsT2DeliverySystemDescriptor
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseDvbT2DeliverySystem(out T2DeliverySystemDescriptor res)
	{
		GstMpegtsT2DeliverySystemDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_dvb_t2_delivery_system(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(T2DeliverySystemDescriptor)(outres);

		return p;
	}

	/**
	 * Parses teletext number @idx in the @descriptor. The language is in ISO639 format.
	 *
	 * Params:
	 *     idx = The id of the teletext to get
	 *     languageCode = a null-terminated string
	 *     teletextType = #GstMpegtsDVBTeletextType
	 *
	 * Returns: FALSE on out-of-bounds and errors
	 */
	public bool parseDvbTeletextIdx(uint idx, out string languageCode, out GstMpegtsDVBTeletextType teletextType, out ubyte magazineNumber, out ubyte pageNumber)
	{
		char* outlanguageCode = null;

		auto p = gst_mpegts_descriptor_parse_dvb_teletext_idx(gstMpegtsDescriptor, idx, &outlanguageCode, &teletextType, &magazineNumber, &pageNumber) != 0;

		languageCode = Str.toString(outlanguageCode);

		return p;
	}

	/**
	 * Find the number of teletext entries in @descriptor
	 *
	 * Returns: Number of teletext entries
	 */
	public uint parseDvbTeletextNb()
	{
		return gst_mpegts_descriptor_parse_dvb_teletext_nb(gstMpegtsDescriptor);
	}

	/**
	 * Extracts the iso 639-2 language information from @descriptor.
	 *
	 * Note: Use #gst_tag_get_language_code if you want to get the the
	 * ISO 639-1 language code from the returned ISO 639-2 one.
	 *
	 * Params:
	 *     res = the #GstMpegtsISO639LanguageDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseIso639Language(out ISO639LanguageDescriptor res)
	{
		GstMpegtsISO639LanguageDescriptor* outres = null;

		auto p = gst_mpegts_descriptor_parse_iso_639_language(gstMpegtsDescriptor, &outres) != 0;

		res = ObjectG.getDObject!(ISO639LanguageDescriptor)(outres);

		return p;
	}

	/**
	 * Extracts the iso 639-2 language information from specific table id in @descriptor.
	 *
	 * Note: Use #gst_tag_get_language_code if you want to get the the
	 * ISO 639-1 language code from the returned ISO 639-2 one.
	 *
	 * Params:
	 *     idx = Table id of the language to parse
	 *     lang = 4-byte gchar array to hold the language code
	 *     audioType = the #GstMpegtsIso639AudioType to set
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseIso639LanguageIdx(uint idx, out string lang, out GstMpegtsIso639AudioType audioType)
	{
		char* outlang = null;

		auto p = gst_mpegts_descriptor_parse_iso_639_language_idx(gstMpegtsDescriptor, idx, &outlang, &audioType) != 0;

		lang = Str.toString(outlang);

		return p;
	}

	/**
	 * Returns: The number of languages in @descriptor
	 */
	public uint parseIso639LanguageNb()
	{
		return gst_mpegts_descriptor_parse_iso_639_language_nb(gstMpegtsDescriptor);
	}

	/**
	 * Extracts the logical channels from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsLogicalChannelDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseLogicalChannel(out GstMpegtsLogicalChannelDescriptor res)
	{
		return gst_mpegts_descriptor_parse_logical_channel(gstMpegtsDescriptor, &res) != 0;
	}

	/**
	 * Extracts the satellite delivery system information from @descriptor.
	 *
	 * Params:
	 *     res = the #GstMpegtsSatelliteDeliverySystemDescriptor to fill
	 *
	 * Returns: %TRUE if parsing succeeded, else %FALSE.
	 */
	public bool parseSatelliteDeliverySystem(out GstMpegtsSatelliteDeliverySystemDescriptor res)
	{
		return gst_mpegts_descriptor_parse_satellite_delivery_system(gstMpegtsDescriptor, &res) != 0;
	}

	/**
	 * Parses out the terrestrial delivery system from the @descriptor.
	 *
	 * Params:
	 *     res = #GstMpegtsTerrestrialDeliverySystemDescriptor
	 *
	 * Returns: %TRUE if the parsing happened correctly, else %FALSE.
	 */
	public bool parseTerrestrialDeliverySystem(out GstMpegtsTerrestrialDeliverySystemDescriptor res)
	{
		return gst_mpegts_descriptor_parse_terrestrial_delivery_system(gstMpegtsDescriptor, &res) != 0;
	}

	/**
	 * Creates a #GstMpegtsDescriptor with custom @tag and @data
	 *
	 * Params:
	 *     tag = descriptor tag
	 *     data = descriptor data (after tag and length field)
	 *
	 * Returns: #GstMpegtsDescriptor
	 */
	public static Descriptor fromCustom(ubyte tag, ubyte[] data)
	{
		auto p = gst_mpegts_descriptor_from_custom(tag, data.ptr, cast(size_t)data.length);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Creates a #GstMpegtsDescriptor with custom @tag, @tag_extension and @data
	 *
	 * Params:
	 *     tag = descriptor tag
	 *     tagExtension = descriptor tag extension
	 *     data = descriptor data (after tag and length field)
	 *
	 * Returns: #GstMpegtsDescriptor
	 */
	public static Descriptor fromCustomWithExtension(ubyte tag, ubyte tagExtension, ubyte[] data)
	{
		auto p = gst_mpegts_descriptor_from_custom_with_extension(tag, tagExtension, data.ptr, cast(size_t)data.length);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Creates a #GstMpegtsDescriptor to be a %GST_MTS_DESC_DVB_NETWORK_NAME,
	 * with the network name @name. The data field of the #GstMpegtsDescriptor
	 * will be allocated, and transferred to the caller.
	 *
	 * Params:
	 *     name = the network name to set
	 *
	 * Returns: the #GstMpegtsDescriptor or %NULL on fail
	 */
	public static Descriptor fromDvbNetworkName(string name)
	{
		auto p = gst_mpegts_descriptor_from_dvb_network_name(Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Fills a #GstMpegtsDescriptor to be a %GST_MTS_DESC_DVB_SERVICE.
	 * The data field of the #GstMpegtsDescriptor will be allocated,
	 * and transferred to the caller.
	 *
	 * Params:
	 *     serviceType = Service type defined as a #GstMpegtsDVBServiceType
	 *     serviceName = Name of the service
	 *     serviceProvider = Name of the service provider
	 *
	 * Returns: the #GstMpegtsDescriptor or %NULL on fail
	 */
	public static Descriptor fromDvbService(GstMpegtsDVBServiceType serviceType, string serviceName, string serviceProvider)
	{
		auto p = gst_mpegts_descriptor_from_dvb_service(serviceType, Str.toStringz(serviceName), Str.toStringz(serviceProvider));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/** */
	public static Descriptor fromDvbSubtitling(string lang, ubyte type, ushort composition, ushort ancillary)
	{
		auto p = gst_mpegts_descriptor_from_dvb_subtitling(Str.toStringz(lang), type, composition, ancillary);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Creates a %GST_MTS_DESC_ISO_639_LANGUAGE #GstMpegtsDescriptor with
	 * a single language
	 *
	 * Params:
	 *     language = ISO-639-2 language 3-char code
	 *
	 * Returns: #GstMpegtsDescriptor, %NULL on failure
	 */
	public static Descriptor fromIso639Language(string language)
	{
		auto p = gst_mpegts_descriptor_from_iso_639_language(Str.toStringz(language));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Creates a %GST_MTS_DESC_REGISTRATION #GstMpegtsDescriptor
	 *
	 * Params:
	 *     formatIdentifier = a 4 character format identifier string
	 *     additionalInfo = pointer to optional additional info
	 *
	 * Returns: #GstMpegtsDescriptor, %NULL on failure
	 */
	public static Descriptor fromRegistration(string formatIdentifier, ubyte[] additionalInfo)
	{
		auto p = gst_mpegts_descriptor_from_registration(Str.toStringz(formatIdentifier), additionalInfo.ptr, cast(size_t)additionalInfo.length);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p, true);
	}

	/**
	 * Finds the first descriptor of type @tag in the array.
	 *
	 * Note: To look for descriptors that can be present more than once in an
	 * array of descriptors, iterate the #GArray manually.
	 *
	 * Params:
	 *     descriptors = an array
	 *         of #GstMpegtsDescriptor
	 *     tag = the tag to look for
	 *
	 * Returns: the first descriptor matchin @tag, else %NULL.
	 */
	public static Descriptor findDescriptor(PtrArray descriptors, ubyte tag)
	{
		auto p = gst_mpegts_find_descriptor((descriptors is null) ? null : descriptors.getPtrArrayStruct(), tag);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Descriptor)(cast(GstMpegtsDescriptor*) p);
	}

	/**
	 * Parses the descriptors present in @buffer and returns them as an
	 * array.
	 *
	 * Note: The data provided in @buffer will not be copied.
	 *
	 * Params:
	 *     buffer = descriptors to parse
	 *     bufLen = Size of @buffer
	 *
	 * Returns: an
	 *     array of the parsed descriptors or %NULL if there was an error.
	 *     Release with #g_array_unref when done with it.
	 */
	public static PtrArray parseDescriptors(ubyte* buffer, size_t bufLen)
	{
		auto p = gst_mpegts_parse_descriptors(buffer, bufLen);

		if(p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) p, true);
	}
}
