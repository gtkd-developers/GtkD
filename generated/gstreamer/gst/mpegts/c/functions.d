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


module gst.mpegts.c.functions;

import std.stdio;
import gst.mpegts.c.types;
version (Windows)
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0-0.dll;gstmpegts-1.0-0.dll;gstmpegts-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0.so.0"];

__gshared extern(C)
{

	// gst.mpegts.AtscEIT

	GType gst_mpegts_atsc_eit_get_type();

	// gst.mpegts.AtscEITEvent

	GType gst_mpegts_atsc_eit_event_get_type();

	// gst.mpegts.AtscETT

	GType gst_mpegts_atsc_ett_get_type();

	// gst.mpegts.AtscMGT

	GType gst_mpegts_atsc_mgt_get_type();
	GstMpegtsAtscMGT* gst_mpegts_atsc_mgt_new();

	// gst.mpegts.AtscMGTTable

	GType gst_mpegts_atsc_mgt_table_get_type();

	// gst.mpegts.AtscMultString

	GType gst_mpegts_atsc_mult_string_get_type();

	// gst.mpegts.AtscRRT

	GType gst_mpegts_atsc_rrt_get_type();
	GstMpegtsAtscRRT* gst_mpegts_atsc_rrt_new();

	// gst.mpegts.AtscRRTDimension

	GType gst_mpegts_atsc_rrt_dimension_get_type();
	GstMpegtsAtscRRTDimension* gst_mpegts_atsc_rrt_dimension_new();

	// gst.mpegts.AtscRRTDimensionValue

	GType gst_mpegts_atsc_rrt_dimension_value_get_type();
	GstMpegtsAtscRRTDimensionValue* gst_mpegts_atsc_rrt_dimension_value_new();

	// gst.mpegts.AtscSTT

	GType gst_mpegts_atsc_stt_get_type();
	GstMpegtsAtscSTT* gst_mpegts_atsc_stt_new();
	GstDateTime* gst_mpegts_atsc_stt_get_datetime_utc(GstMpegtsAtscSTT* stt);

	// gst.mpegts.AtscStringSegment

	GType gst_mpegts_atsc_string_segment_get_type();
	const(char)* gst_mpegts_atsc_string_segment_get_string(GstMpegtsAtscStringSegment* seg);
	int gst_mpegts_atsc_string_segment_set_string(GstMpegtsAtscStringSegment* seg, char* string_, ubyte compressionType, ubyte mode);

	// gst.mpegts.AtscVCT

	GType gst_mpegts_atsc_vct_get_type();

	// gst.mpegts.AtscVCTSource

	GType gst_mpegts_atsc_vct_source_get_type();

	// gst.mpegts.BAT

	GType gst_mpegts_bat_get_type();

	// gst.mpegts.BATStream

	GType gst_mpegts_bat_stream_get_type();

	// gst.mpegts.CableDeliverySystemDescriptor

	GType gst_mpegts_dvb_cable_delivery_system_descriptor_get_type();
	void gst_mpegts_dvb_cable_delivery_system_descriptor_free(GstMpegtsCableDeliverySystemDescriptor* source);

	// gst.mpegts.ComponentDescriptor

	GType gst_mpegts_component_descriptor_get_type();
	void gst_mpegts_dvb_component_descriptor_free(GstMpegtsComponentDescriptor* source);

	// gst.mpegts.Content

	GType gst_mpegts_content_get_type();

	// gst.mpegts.DVBLinkageDescriptor

	GType gst_mpegts_dvb_linkage_descriptor_get_type();
	void gst_mpegts_dvb_linkage_descriptor_free(GstMpegtsDVBLinkageDescriptor* source);
	GstMpegtsDVBLinkageEvent* gst_mpegts_dvb_linkage_descriptor_get_event(GstMpegtsDVBLinkageDescriptor* desc);
	GPtrArray* gst_mpegts_dvb_linkage_descriptor_get_extended_event(GstMpegtsDVBLinkageDescriptor* desc);
	GstMpegtsDVBLinkageMobileHandOver* gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over(GstMpegtsDVBLinkageDescriptor* desc);

	// gst.mpegts.DVBLinkageEvent

	GType gst_mpegts_dvb_linkage_event_get_type();

	// gst.mpegts.DVBLinkageExtendedEvent

	GType gst_mpegts_dvb_linkage_extended_event_get_type();

	// gst.mpegts.DVBLinkageMobileHandOver

	GType gst_mpegts_dvb_linkage_mobile_hand_over_get_type();

	// gst.mpegts.DVBParentalRatingItem

	GType gst_mpegts_dvb_parental_rating_item_get_type();

	// gst.mpegts.DVBServiceListItem

	GType gst_mpegts_dvb_service_list_item_get_type();

	// gst.mpegts.DataBroadcastDescriptor

	GType gst_mpegts_dvb_data_broadcast_descriptor_get_type();
	void gst_mpegts_dvb_data_broadcast_descriptor_free(GstMpegtsDataBroadcastDescriptor* source);

	// gst.mpegts.Descriptor

	GType gst_mpegts_descriptor_get_type();
	void gst_mpegts_descriptor_free(GstMpegtsDescriptor* desc);
	int gst_mpegts_descriptor_parse_ca(GstMpegtsDescriptor* descriptor, ushort* caSystemId, ushort* caPid, ubyte** privateData, size_t* privateDataSize);
	int gst_mpegts_descriptor_parse_cable_delivery_system(GstMpegtsDescriptor* descriptor, GstMpegtsCableDeliverySystemDescriptor* res);
	int gst_mpegts_descriptor_parse_dvb_bouquet_name(GstMpegtsDescriptor* descriptor, char** bouquetName);
	int gst_mpegts_descriptor_parse_dvb_ca_identifier(GstMpegtsDescriptor* descriptor, GArray** list);
	int gst_mpegts_descriptor_parse_dvb_component(GstMpegtsDescriptor* descriptor, GstMpegtsComponentDescriptor** res);
	int gst_mpegts_descriptor_parse_dvb_content(GstMpegtsDescriptor* descriptor, GPtrArray** content);
	int gst_mpegts_descriptor_parse_dvb_data_broadcast(GstMpegtsDescriptor* descriptor, GstMpegtsDataBroadcastDescriptor** res);
	int gst_mpegts_descriptor_parse_dvb_data_broadcast_id(GstMpegtsDescriptor* descriptor, ushort* dataBroadcastId, ubyte** idSelectorBytes, ubyte* len);
	int gst_mpegts_descriptor_parse_dvb_extended_event(GstMpegtsDescriptor* descriptor, GstMpegtsExtendedEventDescriptor** res);
	int gst_mpegts_descriptor_parse_dvb_frequency_list(GstMpegtsDescriptor* descriptor, int* offset, GArray** list);
	int gst_mpegts_descriptor_parse_dvb_linkage(GstMpegtsDescriptor* descriptor, GstMpegtsDVBLinkageDescriptor** res);
	int gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name(GstMpegtsDescriptor* descriptor, GPtrArray** bouquetNameItems);
	int gst_mpegts_descriptor_parse_dvb_multilingual_component(GstMpegtsDescriptor* descriptor, ubyte* componentTag, GPtrArray** componentDescriptionItems);
	int gst_mpegts_descriptor_parse_dvb_multilingual_network_name(GstMpegtsDescriptor* descriptor, GPtrArray** networkNameItems);
	int gst_mpegts_descriptor_parse_dvb_multilingual_service_name(GstMpegtsDescriptor* descriptor, GPtrArray** serviceNameItems);
	int gst_mpegts_descriptor_parse_dvb_network_name(GstMpegtsDescriptor* descriptor, char** name);
	int gst_mpegts_descriptor_parse_dvb_parental_rating(GstMpegtsDescriptor* descriptor, GPtrArray** rating);
	int gst_mpegts_descriptor_parse_dvb_private_data_specifier(GstMpegtsDescriptor* descriptor, uint* privateDataSpecifier, ubyte** privateData, ubyte* length);
	int gst_mpegts_descriptor_parse_dvb_scrambling(GstMpegtsDescriptor* descriptor, GstMpegtsDVBScramblingModeType* scramblingMode);
	int gst_mpegts_descriptor_parse_dvb_service(GstMpegtsDescriptor* descriptor, GstMpegtsDVBServiceType* serviceType, char** serviceName, char** providerName);
	int gst_mpegts_descriptor_parse_dvb_service_list(GstMpegtsDescriptor* descriptor, GPtrArray** list);
	int gst_mpegts_descriptor_parse_dvb_short_event(GstMpegtsDescriptor* descriptor, char** languageCode, char** eventName, char** text);
	int gst_mpegts_descriptor_parse_dvb_stream_identifier(GstMpegtsDescriptor* descriptor, ubyte* componentTag);
	int gst_mpegts_descriptor_parse_dvb_stuffing(GstMpegtsDescriptor* descriptor, ubyte** stuffingBytes);
	int gst_mpegts_descriptor_parse_dvb_subtitling_idx(GstMpegtsDescriptor* descriptor, uint idx, char** lang, ubyte* type, ushort* compositionPageId, ushort* ancillaryPageId);
	uint gst_mpegts_descriptor_parse_dvb_subtitling_nb(GstMpegtsDescriptor* descriptor);
	int gst_mpegts_descriptor_parse_dvb_t2_delivery_system(GstMpegtsDescriptor* descriptor, GstMpegtsT2DeliverySystemDescriptor** res);
	int gst_mpegts_descriptor_parse_dvb_teletext_idx(GstMpegtsDescriptor* descriptor, uint idx, char** languageCode, GstMpegtsDVBTeletextType* teletextType, ubyte* magazineNumber, ubyte* pageNumber);
	uint gst_mpegts_descriptor_parse_dvb_teletext_nb(GstMpegtsDescriptor* descriptor);
	int gst_mpegts_descriptor_parse_iso_639_language(GstMpegtsDescriptor* descriptor, GstMpegtsISO639LanguageDescriptor** res);
	int gst_mpegts_descriptor_parse_iso_639_language_idx(GstMpegtsDescriptor* descriptor, uint idx, char** lang, GstMpegtsIso639AudioType* audioType);
	uint gst_mpegts_descriptor_parse_iso_639_language_nb(GstMpegtsDescriptor* descriptor);
	int gst_mpegts_descriptor_parse_logical_channel(GstMpegtsDescriptor* descriptor, GstMpegtsLogicalChannelDescriptor* res);
	int gst_mpegts_descriptor_parse_satellite_delivery_system(GstMpegtsDescriptor* descriptor, GstMpegtsSatelliteDeliverySystemDescriptor* res);
	int gst_mpegts_descriptor_parse_terrestrial_delivery_system(GstMpegtsDescriptor* descriptor, GstMpegtsTerrestrialDeliverySystemDescriptor* res);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_custom(ubyte tag, ubyte* data, size_t length);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_custom_with_extension(ubyte tag, ubyte tagExtension, ubyte* data, size_t length);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_dvb_network_name(const(char)* name);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_dvb_service(GstMpegtsDVBServiceType serviceType, const(char)* serviceName, const(char)* serviceProvider);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_dvb_subtitling(const(char)* lang, ubyte type, ushort composition, ushort ancillary);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_iso_639_language(const(char)* language);
	GstMpegtsDescriptor* gst_mpegts_descriptor_from_registration(const(char)* formatIdentifier, ubyte* additionalInfo, size_t additionalInfoLength);
	GstMpegtsDescriptor* gst_mpegts_find_descriptor(GPtrArray* descriptors, ubyte tag);
	GPtrArray* gst_mpegts_parse_descriptors(ubyte* buffer, size_t bufLen);

	// gst.mpegts.DvbMultilingualBouquetNameItem

	GType gst_mpegts_dvb_multilingual_bouquet_name_item_get_type();

	// gst.mpegts.DvbMultilingualComponentItem

	GType gst_mpegts_dvb_multilingual_component_item_get_type();

	// gst.mpegts.DvbMultilingualNetworkNameItem

	GType gst_mpegts_dvb_multilingual_network_name_item_get_type();

	// gst.mpegts.DvbMultilingualServiceNameItem

	GType gst_mpegts_dvb_multilingual_service_name_item_get_type();

	// gst.mpegts.EIT

	GType gst_mpegts_eit_get_type();

	// gst.mpegts.EITEvent

	GType gst_mpegts_eit_event_get_type();

	// gst.mpegts.ExtendedEventDescriptor

	GType gst_mpegts_extended_event_descriptor_get_type();
	void gst_mpegts_extended_event_descriptor_free(GstMpegtsExtendedEventDescriptor* source);

	// gst.mpegts.ExtendedEventItem

	GType gst_mpegts_extended_event_item_get_type();

	// gst.mpegts.ISO639LanguageDescriptor

	GType gst_mpegts_iso_639_language_get_type();
	void gst_mpegts_iso_639_language_descriptor_free(GstMpegtsISO639LanguageDescriptor* desc);

	// gst.mpegts.LogicalChannel

	GType gst_mpegts_logical_channel_get_type();

	// gst.mpegts.LogicalChannelDescriptor

	GType gst_mpegts_logical_channel_descriptor_get_type();

	// gst.mpegts.NIT

	GType gst_mpegts_nit_get_type();
	GstMpegtsNIT* gst_mpegts_nit_new();

	// gst.mpegts.NITStream

	GType gst_mpegts_nit_stream_get_type();
	GstMpegtsNITStream* gst_mpegts_nit_stream_new();

	// gst.mpegts.PMT

	GType gst_mpegts_pmt_get_type();
	GstMpegtsPMT* gst_mpegts_pmt_new();

	// gst.mpegts.PMTStream

	GType gst_mpegts_pmt_stream_get_type();
	GstMpegtsPMTStream* gst_mpegts_pmt_stream_new();

	// gst.mpegts.PatProgram

	GType gst_mpegts_pat_program_get_type();
	GstMpegtsPatProgram* gst_mpegts_pat_program_new();
	GPtrArray* gst_mpegts_pat_new();

	// gst.mpegts.SCTESIT

	GType gst_mpegts_scte_sit_get_type();
	GstMpegtsSCTESIT* gst_mpegts_scte_sit_new();

	// gst.mpegts.SCTESpliceEvent

	GType gst_mpegts_scte_splice_event_get_type();
	GstMpegtsSCTESpliceEvent* gst_mpegts_scte_splice_event_new();

	// gst.mpegts.SDT

	GType gst_mpegts_sdt_get_type();
	GstMpegtsSDT* gst_mpegts_sdt_new();

	// gst.mpegts.SDTService

	GType gst_mpegts_sdt_service_get_type();
	GstMpegtsSDTService* gst_mpegts_sdt_service_new();

	// gst.mpegts.SatelliteDeliverySystemDescriptor

	GType gst_mpegts_satellite_delivery_system_descriptor_get_type();

	// gst.mpegts.Section

	GType gst_mpegts_section_get_type();
	GstMpegtsSection* gst_mpegts_section_new(ushort pid, ubyte* data, size_t dataSize);
	GstMpegtsAtscVCT* gst_mpegts_section_get_atsc_cvct(GstMpegtsSection* section);
	GstMpegtsAtscEIT* gst_mpegts_section_get_atsc_eit(GstMpegtsSection* section);
	GstMpegtsAtscETT* gst_mpegts_section_get_atsc_ett(GstMpegtsSection* section);
	GstMpegtsAtscMGT* gst_mpegts_section_get_atsc_mgt(GstMpegtsSection* section);
	GstMpegtsAtscRRT* gst_mpegts_section_get_atsc_rrt(GstMpegtsSection* section);
	GstMpegtsAtscSTT* gst_mpegts_section_get_atsc_stt(GstMpegtsSection* section);
	GstMpegtsAtscVCT* gst_mpegts_section_get_atsc_tvct(GstMpegtsSection* section);
	GstMpegtsBAT* gst_mpegts_section_get_bat(GstMpegtsSection* section);
	GPtrArray* gst_mpegts_section_get_cat(GstMpegtsSection* section);
	GBytes* gst_mpegts_section_get_data(GstMpegtsSection* section);
	GstMpegtsEIT* gst_mpegts_section_get_eit(GstMpegtsSection* section);
	GstMpegtsNIT* gst_mpegts_section_get_nit(GstMpegtsSection* section);
	GPtrArray* gst_mpegts_section_get_pat(GstMpegtsSection* section);
	GstMpegtsPMT* gst_mpegts_section_get_pmt(GstMpegtsSection* section);
	GstMpegtsSCTESIT* gst_mpegts_section_get_scte_sit(GstMpegtsSection* section);
	GstMpegtsSDT* gst_mpegts_section_get_sdt(GstMpegtsSection* section);
	GstDateTime* gst_mpegts_section_get_tdt(GstMpegtsSection* section);
	GstMpegtsTOT* gst_mpegts_section_get_tot(GstMpegtsSection* section);
	GPtrArray* gst_mpegts_section_get_tsdt(GstMpegtsSection* section);
	ubyte* gst_mpegts_section_packetize(GstMpegtsSection* section, size_t* outputSize);
	int gst_mpegts_section_send_event(GstMpegtsSection* section, GstElement* element);
	GstMpegtsSection* gst_mpegts_section_from_atsc_mgt(GstMpegtsAtscMGT* mgt);
	GstMpegtsSection* gst_mpegts_section_from_atsc_rrt(GstMpegtsAtscRRT* rrt);
	GstMpegtsSection* gst_mpegts_section_from_atsc_stt(GstMpegtsAtscSTT* stt);
	GstMpegtsSection* gst_mpegts_section_from_nit(GstMpegtsNIT* nit);
	GstMpegtsSection* gst_mpegts_section_from_pat(GPtrArray* programs, ushort tsId);
	GstMpegtsSection* gst_mpegts_section_from_pmt(GstMpegtsPMT* pmt, ushort pid);
	GstMpegtsSection* gst_mpegts_section_from_scte_sit(GstMpegtsSCTESIT* sit, ushort pid);
	GstMpegtsSection* gst_mpegts_section_from_sdt(GstMpegtsSDT* sdt);
	GstMpegtsSection* gst_event_parse_mpegts_section(GstEvent* event);
	GstMessage* gst_message_new_mpegts_section(GstObject* parent, GstMpegtsSection* section);
	GstMpegtsSection* gst_message_parse_mpegts_section(GstMessage* message);

	// gst.mpegts.T2DeliverySystemCell

	GType gst_mpegts_t2_delivery_system_cell_get_type();

	// gst.mpegts.T2DeliverySystemCellExtension

	GType gst_mpegts_t2_delivery_system_cell_extension_get_type();

	// gst.mpegts.T2DeliverySystemDescriptor

	GType gst_mpegts_t2_delivery_system_descriptor_get_type();
	void gst_mpegts_t2_delivery_system_descriptor_free(GstMpegtsT2DeliverySystemDescriptor* source);

	// gst.mpegts.TOT

	GType gst_mpegts_tot_get_type();

	// gst.mpegts.TerrestrialDeliverySystemDescriptor

	GType gst_mpegts_terrestrial_delivery_system_descriptor_get_type();

	// gst.mpegts.Mpegts

	void gst_mpegts_initialize();
}