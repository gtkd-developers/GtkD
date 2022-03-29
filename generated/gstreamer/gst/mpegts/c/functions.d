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
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0-0.dll;gstmpegts-1.0-0.dll;gstmpegts-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTMPEGTS = ["libgstmpegts-1.0.so.0"];

shared static this()
{
	// gst.mpegts.AtscEIT

	Linker.link(gst_mpegts_atsc_eit_get_type, "gst_mpegts_atsc_eit_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscEITEvent

	Linker.link(gst_mpegts_atsc_eit_event_get_type, "gst_mpegts_atsc_eit_event_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscETT

	Linker.link(gst_mpegts_atsc_ett_get_type, "gst_mpegts_atsc_ett_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscMGT

	Linker.link(gst_mpegts_atsc_mgt_get_type, "gst_mpegts_atsc_mgt_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_mgt_new, "gst_mpegts_atsc_mgt_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscMGTTable

	Linker.link(gst_mpegts_atsc_mgt_table_get_type, "gst_mpegts_atsc_mgt_table_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscMultString

	Linker.link(gst_mpegts_atsc_mult_string_get_type, "gst_mpegts_atsc_mult_string_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscRRT

	Linker.link(gst_mpegts_atsc_rrt_get_type, "gst_mpegts_atsc_rrt_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_rrt_new, "gst_mpegts_atsc_rrt_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscRRTDimension

	Linker.link(gst_mpegts_atsc_rrt_dimension_get_type, "gst_mpegts_atsc_rrt_dimension_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_rrt_dimension_new, "gst_mpegts_atsc_rrt_dimension_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscRRTDimensionValue

	Linker.link(gst_mpegts_atsc_rrt_dimension_value_get_type, "gst_mpegts_atsc_rrt_dimension_value_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_rrt_dimension_value_new, "gst_mpegts_atsc_rrt_dimension_value_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscSTT

	Linker.link(gst_mpegts_atsc_stt_get_type, "gst_mpegts_atsc_stt_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_stt_new, "gst_mpegts_atsc_stt_new", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_stt_get_datetime_utc, "gst_mpegts_atsc_stt_get_datetime_utc", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscStringSegment

	Linker.link(gst_mpegts_atsc_string_segment_get_type, "gst_mpegts_atsc_string_segment_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_string_segment_get_string, "gst_mpegts_atsc_string_segment_get_string", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_atsc_string_segment_set_string, "gst_mpegts_atsc_string_segment_set_string", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscVCT

	Linker.link(gst_mpegts_atsc_vct_get_type, "gst_mpegts_atsc_vct_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.AtscVCTSource

	Linker.link(gst_mpegts_atsc_vct_source_get_type, "gst_mpegts_atsc_vct_source_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.BAT

	Linker.link(gst_mpegts_bat_get_type, "gst_mpegts_bat_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.BATStream

	Linker.link(gst_mpegts_bat_stream_get_type, "gst_mpegts_bat_stream_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.CableDeliverySystemDescriptor

	Linker.link(gst_mpegts_dvb_cable_delivery_system_descriptor_get_type, "gst_mpegts_dvb_cable_delivery_system_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_cable_delivery_system_descriptor_free, "gst_mpegts_dvb_cable_delivery_system_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.ComponentDescriptor

	Linker.link(gst_mpegts_component_descriptor_get_type, "gst_mpegts_component_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_component_descriptor_free, "gst_mpegts_dvb_component_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.Content

	Linker.link(gst_mpegts_content_get_type, "gst_mpegts_content_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBLinkageDescriptor

	Linker.link(gst_mpegts_dvb_linkage_descriptor_get_type, "gst_mpegts_dvb_linkage_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_linkage_descriptor_free, "gst_mpegts_dvb_linkage_descriptor_free", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_linkage_descriptor_get_event, "gst_mpegts_dvb_linkage_descriptor_get_event", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_linkage_descriptor_get_extended_event, "gst_mpegts_dvb_linkage_descriptor_get_extended_event", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over, "gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBLinkageEvent

	Linker.link(gst_mpegts_dvb_linkage_event_get_type, "gst_mpegts_dvb_linkage_event_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBLinkageExtendedEvent

	Linker.link(gst_mpegts_dvb_linkage_extended_event_get_type, "gst_mpegts_dvb_linkage_extended_event_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBLinkageMobileHandOver

	Linker.link(gst_mpegts_dvb_linkage_mobile_hand_over_get_type, "gst_mpegts_dvb_linkage_mobile_hand_over_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBParentalRatingItem

	Linker.link(gst_mpegts_dvb_parental_rating_item_get_type, "gst_mpegts_dvb_parental_rating_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DVBServiceListItem

	Linker.link(gst_mpegts_dvb_service_list_item_get_type, "gst_mpegts_dvb_service_list_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DataBroadcastDescriptor

	Linker.link(gst_mpegts_dvb_data_broadcast_descriptor_get_type, "gst_mpegts_dvb_data_broadcast_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_dvb_data_broadcast_descriptor_free, "gst_mpegts_dvb_data_broadcast_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.Descriptor

	Linker.link(gst_mpegts_descriptor_get_type, "gst_mpegts_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_free, "gst_mpegts_descriptor_free", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_audio_preselection_list, "gst_mpegts_descriptor_parse_audio_preselection_list", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_ca, "gst_mpegts_descriptor_parse_ca", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_cable_delivery_system, "gst_mpegts_descriptor_parse_cable_delivery_system", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_bouquet_name, "gst_mpegts_descriptor_parse_dvb_bouquet_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_ca_identifier, "gst_mpegts_descriptor_parse_dvb_ca_identifier", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_component, "gst_mpegts_descriptor_parse_dvb_component", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_content, "gst_mpegts_descriptor_parse_dvb_content", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_data_broadcast, "gst_mpegts_descriptor_parse_dvb_data_broadcast", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_data_broadcast_id, "gst_mpegts_descriptor_parse_dvb_data_broadcast_id", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_extended_event, "gst_mpegts_descriptor_parse_dvb_extended_event", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_frequency_list, "gst_mpegts_descriptor_parse_dvb_frequency_list", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_linkage, "gst_mpegts_descriptor_parse_dvb_linkage", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name, "gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_multilingual_component, "gst_mpegts_descriptor_parse_dvb_multilingual_component", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_multilingual_network_name, "gst_mpegts_descriptor_parse_dvb_multilingual_network_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_multilingual_service_name, "gst_mpegts_descriptor_parse_dvb_multilingual_service_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_network_name, "gst_mpegts_descriptor_parse_dvb_network_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_parental_rating, "gst_mpegts_descriptor_parse_dvb_parental_rating", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_private_data_specifier, "gst_mpegts_descriptor_parse_dvb_private_data_specifier", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_scrambling, "gst_mpegts_descriptor_parse_dvb_scrambling", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_service, "gst_mpegts_descriptor_parse_dvb_service", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_service_list, "gst_mpegts_descriptor_parse_dvb_service_list", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_short_event, "gst_mpegts_descriptor_parse_dvb_short_event", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_stream_identifier, "gst_mpegts_descriptor_parse_dvb_stream_identifier", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_stuffing, "gst_mpegts_descriptor_parse_dvb_stuffing", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_subtitling_idx, "gst_mpegts_descriptor_parse_dvb_subtitling_idx", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_subtitling_nb, "gst_mpegts_descriptor_parse_dvb_subtitling_nb", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_t2_delivery_system, "gst_mpegts_descriptor_parse_dvb_t2_delivery_system", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_teletext_idx, "gst_mpegts_descriptor_parse_dvb_teletext_idx", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_dvb_teletext_nb, "gst_mpegts_descriptor_parse_dvb_teletext_nb", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_iso_639_language, "gst_mpegts_descriptor_parse_iso_639_language", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_iso_639_language_idx, "gst_mpegts_descriptor_parse_iso_639_language_idx", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_iso_639_language_nb, "gst_mpegts_descriptor_parse_iso_639_language_nb", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_logical_channel, "gst_mpegts_descriptor_parse_logical_channel", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_registration, "gst_mpegts_descriptor_parse_registration", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_satellite_delivery_system, "gst_mpegts_descriptor_parse_satellite_delivery_system", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_terrestrial_delivery_system, "gst_mpegts_descriptor_parse_terrestrial_delivery_system", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_custom, "gst_mpegts_descriptor_from_custom", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_custom_with_extension, "gst_mpegts_descriptor_from_custom_with_extension", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_dvb_network_name, "gst_mpegts_descriptor_from_dvb_network_name", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_dvb_service, "gst_mpegts_descriptor_from_dvb_service", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_dvb_subtitling, "gst_mpegts_descriptor_from_dvb_subtitling", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_iso_639_language, "gst_mpegts_descriptor_from_iso_639_language", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_from_registration, "gst_mpegts_descriptor_from_registration", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_audio_preselection_dump, "gst_mpegts_descriptor_parse_audio_preselection_dump", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_descriptor_parse_audio_preselection_free, "gst_mpegts_descriptor_parse_audio_preselection_free", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_find_descriptor, "gst_mpegts_find_descriptor", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_parse_descriptors, "gst_mpegts_parse_descriptors", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DvbMultilingualBouquetNameItem

	Linker.link(gst_mpegts_dvb_multilingual_bouquet_name_item_get_type, "gst_mpegts_dvb_multilingual_bouquet_name_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DvbMultilingualComponentItem

	Linker.link(gst_mpegts_dvb_multilingual_component_item_get_type, "gst_mpegts_dvb_multilingual_component_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DvbMultilingualNetworkNameItem

	Linker.link(gst_mpegts_dvb_multilingual_network_name_item_get_type, "gst_mpegts_dvb_multilingual_network_name_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.DvbMultilingualServiceNameItem

	Linker.link(gst_mpegts_dvb_multilingual_service_name_item_get_type, "gst_mpegts_dvb_multilingual_service_name_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.EIT

	Linker.link(gst_mpegts_eit_get_type, "gst_mpegts_eit_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.EITEvent

	Linker.link(gst_mpegts_eit_event_get_type, "gst_mpegts_eit_event_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.ExtendedEventDescriptor

	Linker.link(gst_mpegts_extended_event_descriptor_get_type, "gst_mpegts_extended_event_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_extended_event_descriptor_free, "gst_mpegts_extended_event_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.ExtendedEventItem

	Linker.link(gst_mpegts_extended_event_item_get_type, "gst_mpegts_extended_event_item_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.ISO639LanguageDescriptor

	Linker.link(gst_mpegts_iso_639_language_get_type, "gst_mpegts_iso_639_language_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_iso_639_language_descriptor_free, "gst_mpegts_iso_639_language_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.LogicalChannel

	Linker.link(gst_mpegts_logical_channel_get_type, "gst_mpegts_logical_channel_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.LogicalChannelDescriptor

	Linker.link(gst_mpegts_logical_channel_descriptor_get_type, "gst_mpegts_logical_channel_descriptor_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.NIT

	Linker.link(gst_mpegts_nit_get_type, "gst_mpegts_nit_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_nit_new, "gst_mpegts_nit_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.NITStream

	Linker.link(gst_mpegts_nit_stream_get_type, "gst_mpegts_nit_stream_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_nit_stream_new, "gst_mpegts_nit_stream_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.PMT

	Linker.link(gst_mpegts_pmt_get_type, "gst_mpegts_pmt_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_pmt_new, "gst_mpegts_pmt_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.PMTStream

	Linker.link(gst_mpegts_pmt_stream_get_type, "gst_mpegts_pmt_stream_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_pmt_stream_new, "gst_mpegts_pmt_stream_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.PatProgram

	Linker.link(gst_mpegts_pat_program_get_type, "gst_mpegts_pat_program_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_pat_program_new, "gst_mpegts_pat_program_new", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_pat_new, "gst_mpegts_pat_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SCTESIT

	Linker.link(gst_mpegts_scte_sit_get_type, "gst_mpegts_scte_sit_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_scte_sit_new, "gst_mpegts_scte_sit_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SCTESpliceComponent

	Linker.link(gst_mpegts_scte_splice_component_get_type, "gst_mpegts_scte_splice_component_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_scte_splice_component_new, "gst_mpegts_scte_splice_component_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SCTESpliceEvent

	Linker.link(gst_mpegts_scte_splice_event_get_type, "gst_mpegts_scte_splice_event_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_scte_splice_event_new, "gst_mpegts_scte_splice_event_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SDT

	Linker.link(gst_mpegts_sdt_get_type, "gst_mpegts_sdt_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_sdt_new, "gst_mpegts_sdt_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SDTService

	Linker.link(gst_mpegts_sdt_service_get_type, "gst_mpegts_sdt_service_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_sdt_service_new, "gst_mpegts_sdt_service_new", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SIT

	Linker.link(gst_mpegts_sit_get_type, "gst_mpegts_sit_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SITService

	Linker.link(gst_mpegts_sit_service_get_type, "gst_mpegts_sit_service_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.SatelliteDeliverySystemDescriptor

	Linker.link(gst_mpegts_satellite_delivery_system_descriptor_get_type, "gst_mpegts_satellite_delivery_system_descriptor_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.Section

	Linker.link(gst_mpegts_section_get_type, "gst_mpegts_section_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_new, "gst_mpegts_section_new", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_cvct, "gst_mpegts_section_get_atsc_cvct", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_eit, "gst_mpegts_section_get_atsc_eit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_ett, "gst_mpegts_section_get_atsc_ett", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_mgt, "gst_mpegts_section_get_atsc_mgt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_rrt, "gst_mpegts_section_get_atsc_rrt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_stt, "gst_mpegts_section_get_atsc_stt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_atsc_tvct, "gst_mpegts_section_get_atsc_tvct", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_bat, "gst_mpegts_section_get_bat", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_cat, "gst_mpegts_section_get_cat", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_data, "gst_mpegts_section_get_data", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_eit, "gst_mpegts_section_get_eit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_nit, "gst_mpegts_section_get_nit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_pat, "gst_mpegts_section_get_pat", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_pmt, "gst_mpegts_section_get_pmt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_scte_sit, "gst_mpegts_section_get_scte_sit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_sdt, "gst_mpegts_section_get_sdt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_sit, "gst_mpegts_section_get_sit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_tdt, "gst_mpegts_section_get_tdt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_tot, "gst_mpegts_section_get_tot", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_get_tsdt, "gst_mpegts_section_get_tsdt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_packetize, "gst_mpegts_section_packetize", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_send_event, "gst_mpegts_section_send_event", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_atsc_mgt, "gst_mpegts_section_from_atsc_mgt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_atsc_rrt, "gst_mpegts_section_from_atsc_rrt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_atsc_stt, "gst_mpegts_section_from_atsc_stt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_nit, "gst_mpegts_section_from_nit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_pat, "gst_mpegts_section_from_pat", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_pmt, "gst_mpegts_section_from_pmt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_scte_sit, "gst_mpegts_section_from_scte_sit", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_section_from_sdt, "gst_mpegts_section_from_sdt", LIBRARY_GSTMPEGTS);
	Linker.link(gst_event_parse_mpegts_section, "gst_event_parse_mpegts_section", LIBRARY_GSTMPEGTS);
	Linker.link(gst_message_new_mpegts_section, "gst_message_new_mpegts_section", LIBRARY_GSTMPEGTS);
	Linker.link(gst_message_parse_mpegts_section, "gst_message_parse_mpegts_section", LIBRARY_GSTMPEGTS);

	// gst.mpegts.T2DeliverySystemCell

	Linker.link(gst_mpegts_t2_delivery_system_cell_get_type, "gst_mpegts_t2_delivery_system_cell_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.T2DeliverySystemCellExtension

	Linker.link(gst_mpegts_t2_delivery_system_cell_extension_get_type, "gst_mpegts_t2_delivery_system_cell_extension_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.T2DeliverySystemDescriptor

	Linker.link(gst_mpegts_t2_delivery_system_descriptor_get_type, "gst_mpegts_t2_delivery_system_descriptor_get_type", LIBRARY_GSTMPEGTS);
	Linker.link(gst_mpegts_t2_delivery_system_descriptor_free, "gst_mpegts_t2_delivery_system_descriptor_free", LIBRARY_GSTMPEGTS);

	// gst.mpegts.TOT

	Linker.link(gst_mpegts_tot_get_type, "gst_mpegts_tot_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.TerrestrialDeliverySystemDescriptor

	Linker.link(gst_mpegts_terrestrial_delivery_system_descriptor_get_type, "gst_mpegts_terrestrial_delivery_system_descriptor_get_type", LIBRARY_GSTMPEGTS);

	// gst.mpegts.Mpegts

	Linker.link(gst_mpegts_initialize, "gst_mpegts_initialize", LIBRARY_GSTMPEGTS);
}

__gshared extern(C)
{

	// gst.mpegts.AtscEIT

	GType function() c_gst_mpegts_atsc_eit_get_type;

	// gst.mpegts.AtscEITEvent

	GType function() c_gst_mpegts_atsc_eit_event_get_type;

	// gst.mpegts.AtscETT

	GType function() c_gst_mpegts_atsc_ett_get_type;

	// gst.mpegts.AtscMGT

	GType function() c_gst_mpegts_atsc_mgt_get_type;
	GstMpegtsAtscMGT* function() c_gst_mpegts_atsc_mgt_new;

	// gst.mpegts.AtscMGTTable

	GType function() c_gst_mpegts_atsc_mgt_table_get_type;

	// gst.mpegts.AtscMultString

	GType function() c_gst_mpegts_atsc_mult_string_get_type;

	// gst.mpegts.AtscRRT

	GType function() c_gst_mpegts_atsc_rrt_get_type;
	GstMpegtsAtscRRT* function() c_gst_mpegts_atsc_rrt_new;

	// gst.mpegts.AtscRRTDimension

	GType function() c_gst_mpegts_atsc_rrt_dimension_get_type;
	GstMpegtsAtscRRTDimension* function() c_gst_mpegts_atsc_rrt_dimension_new;

	// gst.mpegts.AtscRRTDimensionValue

	GType function() c_gst_mpegts_atsc_rrt_dimension_value_get_type;
	GstMpegtsAtscRRTDimensionValue* function() c_gst_mpegts_atsc_rrt_dimension_value_new;

	// gst.mpegts.AtscSTT

	GType function() c_gst_mpegts_atsc_stt_get_type;
	GstMpegtsAtscSTT* function() c_gst_mpegts_atsc_stt_new;
	GstDateTime* function(GstMpegtsAtscSTT* stt) c_gst_mpegts_atsc_stt_get_datetime_utc;

	// gst.mpegts.AtscStringSegment

	GType function() c_gst_mpegts_atsc_string_segment_get_type;
	const(char)* function(GstMpegtsAtscStringSegment* seg) c_gst_mpegts_atsc_string_segment_get_string;
	int function(GstMpegtsAtscStringSegment* seg, char* string_, ubyte compressionType, ubyte mode) c_gst_mpegts_atsc_string_segment_set_string;

	// gst.mpegts.AtscVCT

	GType function() c_gst_mpegts_atsc_vct_get_type;

	// gst.mpegts.AtscVCTSource

	GType function() c_gst_mpegts_atsc_vct_source_get_type;

	// gst.mpegts.BAT

	GType function() c_gst_mpegts_bat_get_type;

	// gst.mpegts.BATStream

	GType function() c_gst_mpegts_bat_stream_get_type;

	// gst.mpegts.CableDeliverySystemDescriptor

	GType function() c_gst_mpegts_dvb_cable_delivery_system_descriptor_get_type;
	void function(GstMpegtsCableDeliverySystemDescriptor* source) c_gst_mpegts_dvb_cable_delivery_system_descriptor_free;

	// gst.mpegts.ComponentDescriptor

	GType function() c_gst_mpegts_component_descriptor_get_type;
	void function(GstMpegtsComponentDescriptor* source) c_gst_mpegts_dvb_component_descriptor_free;

	// gst.mpegts.Content

	GType function() c_gst_mpegts_content_get_type;

	// gst.mpegts.DVBLinkageDescriptor

	GType function() c_gst_mpegts_dvb_linkage_descriptor_get_type;
	void function(GstMpegtsDVBLinkageDescriptor* source) c_gst_mpegts_dvb_linkage_descriptor_free;
	GstMpegtsDVBLinkageEvent* function(GstMpegtsDVBLinkageDescriptor* desc) c_gst_mpegts_dvb_linkage_descriptor_get_event;
	GPtrArray* function(GstMpegtsDVBLinkageDescriptor* desc) c_gst_mpegts_dvb_linkage_descriptor_get_extended_event;
	GstMpegtsDVBLinkageMobileHandOver* function(GstMpegtsDVBLinkageDescriptor* desc) c_gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over;

	// gst.mpegts.DVBLinkageEvent

	GType function() c_gst_mpegts_dvb_linkage_event_get_type;

	// gst.mpegts.DVBLinkageExtendedEvent

	GType function() c_gst_mpegts_dvb_linkage_extended_event_get_type;

	// gst.mpegts.DVBLinkageMobileHandOver

	GType function() c_gst_mpegts_dvb_linkage_mobile_hand_over_get_type;

	// gst.mpegts.DVBParentalRatingItem

	GType function() c_gst_mpegts_dvb_parental_rating_item_get_type;

	// gst.mpegts.DVBServiceListItem

	GType function() c_gst_mpegts_dvb_service_list_item_get_type;

	// gst.mpegts.DataBroadcastDescriptor

	GType function() c_gst_mpegts_dvb_data_broadcast_descriptor_get_type;
	void function(GstMpegtsDataBroadcastDescriptor* source) c_gst_mpegts_dvb_data_broadcast_descriptor_free;

	// gst.mpegts.Descriptor

	GType function() c_gst_mpegts_descriptor_get_type;
	void function(GstMpegtsDescriptor* desc) c_gst_mpegts_descriptor_free;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** list) c_gst_mpegts_descriptor_parse_audio_preselection_list;
	int function(GstMpegtsDescriptor* descriptor, ushort* caSystemId, ushort* caPid, ubyte** privateData, size_t* privateDataSize) c_gst_mpegts_descriptor_parse_ca;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsCableDeliverySystemDescriptor* res) c_gst_mpegts_descriptor_parse_cable_delivery_system;
	int function(GstMpegtsDescriptor* descriptor, char** bouquetName) c_gst_mpegts_descriptor_parse_dvb_bouquet_name;
	int function(GstMpegtsDescriptor* descriptor, GArray** list) c_gst_mpegts_descriptor_parse_dvb_ca_identifier;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsComponentDescriptor** res) c_gst_mpegts_descriptor_parse_dvb_component;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** content) c_gst_mpegts_descriptor_parse_dvb_content;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsDataBroadcastDescriptor** res) c_gst_mpegts_descriptor_parse_dvb_data_broadcast;
	int function(GstMpegtsDescriptor* descriptor, ushort* dataBroadcastId, ubyte** idSelectorBytes, ubyte* len) c_gst_mpegts_descriptor_parse_dvb_data_broadcast_id;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsExtendedEventDescriptor** res) c_gst_mpegts_descriptor_parse_dvb_extended_event;
	int function(GstMpegtsDescriptor* descriptor, int* offset, GArray** list) c_gst_mpegts_descriptor_parse_dvb_frequency_list;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsDVBLinkageDescriptor** res) c_gst_mpegts_descriptor_parse_dvb_linkage;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** bouquetNameItems) c_gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name;
	int function(GstMpegtsDescriptor* descriptor, ubyte* componentTag, GPtrArray** componentDescriptionItems) c_gst_mpegts_descriptor_parse_dvb_multilingual_component;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** networkNameItems) c_gst_mpegts_descriptor_parse_dvb_multilingual_network_name;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** serviceNameItems) c_gst_mpegts_descriptor_parse_dvb_multilingual_service_name;
	int function(GstMpegtsDescriptor* descriptor, char** name) c_gst_mpegts_descriptor_parse_dvb_network_name;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** rating) c_gst_mpegts_descriptor_parse_dvb_parental_rating;
	int function(GstMpegtsDescriptor* descriptor, uint* privateDataSpecifier, ubyte** privateData, ubyte* length) c_gst_mpegts_descriptor_parse_dvb_private_data_specifier;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsDVBScramblingModeType* scramblingMode) c_gst_mpegts_descriptor_parse_dvb_scrambling;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsDVBServiceType* serviceType, char** serviceName, char** providerName) c_gst_mpegts_descriptor_parse_dvb_service;
	int function(GstMpegtsDescriptor* descriptor, GPtrArray** list) c_gst_mpegts_descriptor_parse_dvb_service_list;
	int function(GstMpegtsDescriptor* descriptor, char** languageCode, char** eventName, char** text) c_gst_mpegts_descriptor_parse_dvb_short_event;
	int function(GstMpegtsDescriptor* descriptor, ubyte* componentTag) c_gst_mpegts_descriptor_parse_dvb_stream_identifier;
	int function(GstMpegtsDescriptor* descriptor, ubyte** stuffingBytes) c_gst_mpegts_descriptor_parse_dvb_stuffing;
	int function(GstMpegtsDescriptor* descriptor, uint idx, char** lang, ubyte* type, ushort* compositionPageId, ushort* ancillaryPageId) c_gst_mpegts_descriptor_parse_dvb_subtitling_idx;
	uint function(GstMpegtsDescriptor* descriptor) c_gst_mpegts_descriptor_parse_dvb_subtitling_nb;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsT2DeliverySystemDescriptor** res) c_gst_mpegts_descriptor_parse_dvb_t2_delivery_system;
	int function(GstMpegtsDescriptor* descriptor, uint idx, char** languageCode, GstMpegtsDVBTeletextType* teletextType, ubyte* magazineNumber, ubyte* pageNumber) c_gst_mpegts_descriptor_parse_dvb_teletext_idx;
	uint function(GstMpegtsDescriptor* descriptor) c_gst_mpegts_descriptor_parse_dvb_teletext_nb;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsISO639LanguageDescriptor** res) c_gst_mpegts_descriptor_parse_iso_639_language;
	int function(GstMpegtsDescriptor* descriptor, uint idx, char** lang, GstMpegtsIso639AudioType* audioType) c_gst_mpegts_descriptor_parse_iso_639_language_idx;
	uint function(GstMpegtsDescriptor* descriptor) c_gst_mpegts_descriptor_parse_iso_639_language_nb;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsLogicalChannelDescriptor* res) c_gst_mpegts_descriptor_parse_logical_channel;
	int function(GstMpegtsDescriptor* descriptor, uint* registrationId, ubyte** additionalInfo, size_t* additionalInfoLength) c_gst_mpegts_descriptor_parse_registration;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsSatelliteDeliverySystemDescriptor* res) c_gst_mpegts_descriptor_parse_satellite_delivery_system;
	int function(GstMpegtsDescriptor* descriptor, GstMpegtsTerrestrialDeliverySystemDescriptor* res) c_gst_mpegts_descriptor_parse_terrestrial_delivery_system;
	GstMpegtsDescriptor* function(ubyte tag, ubyte* data, size_t length) c_gst_mpegts_descriptor_from_custom;
	GstMpegtsDescriptor* function(ubyte tag, ubyte tagExtension, ubyte* data, size_t length) c_gst_mpegts_descriptor_from_custom_with_extension;
	GstMpegtsDescriptor* function(const(char)* name) c_gst_mpegts_descriptor_from_dvb_network_name;
	GstMpegtsDescriptor* function(GstMpegtsDVBServiceType serviceType, const(char)* serviceName, const(char)* serviceProvider) c_gst_mpegts_descriptor_from_dvb_service;
	GstMpegtsDescriptor* function(const(char)* lang, ubyte type, ushort composition, ushort ancillary) c_gst_mpegts_descriptor_from_dvb_subtitling;
	GstMpegtsDescriptor* function(const(char)* language) c_gst_mpegts_descriptor_from_iso_639_language;
	GstMpegtsDescriptor* function(const(char)* formatIdentifier, ubyte* additionalInfo, size_t additionalInfoLength) c_gst_mpegts_descriptor_from_registration;
	void function(GstMpegtsAudioPreselectionDescriptor* source) c_gst_mpegts_descriptor_parse_audio_preselection_dump;
	void function(GstMpegtsAudioPreselectionDescriptor* source) c_gst_mpegts_descriptor_parse_audio_preselection_free;
	GstMpegtsDescriptor* function(GPtrArray* descriptors, ubyte tag) c_gst_mpegts_find_descriptor;
	GPtrArray* function(ubyte* buffer, size_t bufLen) c_gst_mpegts_parse_descriptors;

	// gst.mpegts.DvbMultilingualBouquetNameItem

	GType function() c_gst_mpegts_dvb_multilingual_bouquet_name_item_get_type;

	// gst.mpegts.DvbMultilingualComponentItem

	GType function() c_gst_mpegts_dvb_multilingual_component_item_get_type;

	// gst.mpegts.DvbMultilingualNetworkNameItem

	GType function() c_gst_mpegts_dvb_multilingual_network_name_item_get_type;

	// gst.mpegts.DvbMultilingualServiceNameItem

	GType function() c_gst_mpegts_dvb_multilingual_service_name_item_get_type;

	// gst.mpegts.EIT

	GType function() c_gst_mpegts_eit_get_type;

	// gst.mpegts.EITEvent

	GType function() c_gst_mpegts_eit_event_get_type;

	// gst.mpegts.ExtendedEventDescriptor

	GType function() c_gst_mpegts_extended_event_descriptor_get_type;
	void function(GstMpegtsExtendedEventDescriptor* source) c_gst_mpegts_extended_event_descriptor_free;

	// gst.mpegts.ExtendedEventItem

	GType function() c_gst_mpegts_extended_event_item_get_type;

	// gst.mpegts.ISO639LanguageDescriptor

	GType function() c_gst_mpegts_iso_639_language_get_type;
	void function(GstMpegtsISO639LanguageDescriptor* desc) c_gst_mpegts_iso_639_language_descriptor_free;

	// gst.mpegts.LogicalChannel

	GType function() c_gst_mpegts_logical_channel_get_type;

	// gst.mpegts.LogicalChannelDescriptor

	GType function() c_gst_mpegts_logical_channel_descriptor_get_type;

	// gst.mpegts.NIT

	GType function() c_gst_mpegts_nit_get_type;
	GstMpegtsNIT* function() c_gst_mpegts_nit_new;

	// gst.mpegts.NITStream

	GType function() c_gst_mpegts_nit_stream_get_type;
	GstMpegtsNITStream* function() c_gst_mpegts_nit_stream_new;

	// gst.mpegts.PMT

	GType function() c_gst_mpegts_pmt_get_type;
	GstMpegtsPMT* function() c_gst_mpegts_pmt_new;

	// gst.mpegts.PMTStream

	GType function() c_gst_mpegts_pmt_stream_get_type;
	GstMpegtsPMTStream* function() c_gst_mpegts_pmt_stream_new;

	// gst.mpegts.PatProgram

	GType function() c_gst_mpegts_pat_program_get_type;
	GstMpegtsPatProgram* function() c_gst_mpegts_pat_program_new;
	GPtrArray* function() c_gst_mpegts_pat_new;

	// gst.mpegts.SCTESIT

	GType function() c_gst_mpegts_scte_sit_get_type;
	GstMpegtsSCTESIT* function() c_gst_mpegts_scte_sit_new;

	// gst.mpegts.SCTESpliceComponent

	GType function() c_gst_mpegts_scte_splice_component_get_type;
	GstMpegtsSCTESpliceComponent* function(ubyte tag) c_gst_mpegts_scte_splice_component_new;

	// gst.mpegts.SCTESpliceEvent

	GType function() c_gst_mpegts_scte_splice_event_get_type;
	GstMpegtsSCTESpliceEvent* function() c_gst_mpegts_scte_splice_event_new;

	// gst.mpegts.SDT

	GType function() c_gst_mpegts_sdt_get_type;
	GstMpegtsSDT* function() c_gst_mpegts_sdt_new;

	// gst.mpegts.SDTService

	GType function() c_gst_mpegts_sdt_service_get_type;
	GstMpegtsSDTService* function() c_gst_mpegts_sdt_service_new;

	// gst.mpegts.SIT

	GType function() c_gst_mpegts_sit_get_type;

	// gst.mpegts.SITService

	GType function() c_gst_mpegts_sit_service_get_type;

	// gst.mpegts.SatelliteDeliverySystemDescriptor

	GType function() c_gst_mpegts_satellite_delivery_system_descriptor_get_type;

	// gst.mpegts.Section

	GType function() c_gst_mpegts_section_get_type;
	GstMpegtsSection* function(ushort pid, ubyte* data, size_t dataSize) c_gst_mpegts_section_new;
	GstMpegtsAtscVCT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_cvct;
	GstMpegtsAtscEIT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_eit;
	GstMpegtsAtscETT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_ett;
	GstMpegtsAtscMGT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_mgt;
	GstMpegtsAtscRRT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_rrt;
	GstMpegtsAtscSTT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_stt;
	GstMpegtsAtscVCT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_atsc_tvct;
	GstMpegtsBAT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_bat;
	GPtrArray* function(GstMpegtsSection* section) c_gst_mpegts_section_get_cat;
	GBytes* function(GstMpegtsSection* section) c_gst_mpegts_section_get_data;
	GstMpegtsEIT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_eit;
	GstMpegtsNIT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_nit;
	GPtrArray* function(GstMpegtsSection* section) c_gst_mpegts_section_get_pat;
	GstMpegtsPMT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_pmt;
	GstMpegtsSCTESIT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_scte_sit;
	GstMpegtsSDT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_sdt;
	GstMpegtsSIT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_sit;
	GstDateTime* function(GstMpegtsSection* section) c_gst_mpegts_section_get_tdt;
	GstMpegtsTOT* function(GstMpegtsSection* section) c_gst_mpegts_section_get_tot;
	GPtrArray* function(GstMpegtsSection* section) c_gst_mpegts_section_get_tsdt;
	ubyte* function(GstMpegtsSection* section, size_t* outputSize) c_gst_mpegts_section_packetize;
	int function(GstMpegtsSection* section, GstElement* element) c_gst_mpegts_section_send_event;
	GstMpegtsSection* function(GstMpegtsAtscMGT* mgt) c_gst_mpegts_section_from_atsc_mgt;
	GstMpegtsSection* function(GstMpegtsAtscRRT* rrt) c_gst_mpegts_section_from_atsc_rrt;
	GstMpegtsSection* function(GstMpegtsAtscSTT* stt) c_gst_mpegts_section_from_atsc_stt;
	GstMpegtsSection* function(GstMpegtsNIT* nit) c_gst_mpegts_section_from_nit;
	GstMpegtsSection* function(GPtrArray* programs, ushort tsId) c_gst_mpegts_section_from_pat;
	GstMpegtsSection* function(GstMpegtsPMT* pmt, ushort pid) c_gst_mpegts_section_from_pmt;
	GstMpegtsSection* function(GstMpegtsSCTESIT* sit, ushort pid) c_gst_mpegts_section_from_scte_sit;
	GstMpegtsSection* function(GstMpegtsSDT* sdt) c_gst_mpegts_section_from_sdt;
	GstMpegtsSection* function(GstEvent* event) c_gst_event_parse_mpegts_section;
	GstMessage* function(GstObject* parent, GstMpegtsSection* section) c_gst_message_new_mpegts_section;
	GstMpegtsSection* function(GstMessage* message) c_gst_message_parse_mpegts_section;

	// gst.mpegts.T2DeliverySystemCell

	GType function() c_gst_mpegts_t2_delivery_system_cell_get_type;

	// gst.mpegts.T2DeliverySystemCellExtension

	GType function() c_gst_mpegts_t2_delivery_system_cell_extension_get_type;

	// gst.mpegts.T2DeliverySystemDescriptor

	GType function() c_gst_mpegts_t2_delivery_system_descriptor_get_type;
	void function(GstMpegtsT2DeliverySystemDescriptor* source) c_gst_mpegts_t2_delivery_system_descriptor_free;

	// gst.mpegts.TOT

	GType function() c_gst_mpegts_tot_get_type;

	// gst.mpegts.TerrestrialDeliverySystemDescriptor

	GType function() c_gst_mpegts_terrestrial_delivery_system_descriptor_get_type;

	// gst.mpegts.Mpegts

	void function() c_gst_mpegts_initialize;
}


// gst.mpegts.AtscEIT

alias c_gst_mpegts_atsc_eit_get_type gst_mpegts_atsc_eit_get_type;

// gst.mpegts.AtscEITEvent

alias c_gst_mpegts_atsc_eit_event_get_type gst_mpegts_atsc_eit_event_get_type;

// gst.mpegts.AtscETT

alias c_gst_mpegts_atsc_ett_get_type gst_mpegts_atsc_ett_get_type;

// gst.mpegts.AtscMGT

alias c_gst_mpegts_atsc_mgt_get_type gst_mpegts_atsc_mgt_get_type;
alias c_gst_mpegts_atsc_mgt_new gst_mpegts_atsc_mgt_new;

// gst.mpegts.AtscMGTTable

alias c_gst_mpegts_atsc_mgt_table_get_type gst_mpegts_atsc_mgt_table_get_type;

// gst.mpegts.AtscMultString

alias c_gst_mpegts_atsc_mult_string_get_type gst_mpegts_atsc_mult_string_get_type;

// gst.mpegts.AtscRRT

alias c_gst_mpegts_atsc_rrt_get_type gst_mpegts_atsc_rrt_get_type;
alias c_gst_mpegts_atsc_rrt_new gst_mpegts_atsc_rrt_new;

// gst.mpegts.AtscRRTDimension

alias c_gst_mpegts_atsc_rrt_dimension_get_type gst_mpegts_atsc_rrt_dimension_get_type;
alias c_gst_mpegts_atsc_rrt_dimension_new gst_mpegts_atsc_rrt_dimension_new;

// gst.mpegts.AtscRRTDimensionValue

alias c_gst_mpegts_atsc_rrt_dimension_value_get_type gst_mpegts_atsc_rrt_dimension_value_get_type;
alias c_gst_mpegts_atsc_rrt_dimension_value_new gst_mpegts_atsc_rrt_dimension_value_new;

// gst.mpegts.AtscSTT

alias c_gst_mpegts_atsc_stt_get_type gst_mpegts_atsc_stt_get_type;
alias c_gst_mpegts_atsc_stt_new gst_mpegts_atsc_stt_new;
alias c_gst_mpegts_atsc_stt_get_datetime_utc gst_mpegts_atsc_stt_get_datetime_utc;

// gst.mpegts.AtscStringSegment

alias c_gst_mpegts_atsc_string_segment_get_type gst_mpegts_atsc_string_segment_get_type;
alias c_gst_mpegts_atsc_string_segment_get_string gst_mpegts_atsc_string_segment_get_string;
alias c_gst_mpegts_atsc_string_segment_set_string gst_mpegts_atsc_string_segment_set_string;

// gst.mpegts.AtscVCT

alias c_gst_mpegts_atsc_vct_get_type gst_mpegts_atsc_vct_get_type;

// gst.mpegts.AtscVCTSource

alias c_gst_mpegts_atsc_vct_source_get_type gst_mpegts_atsc_vct_source_get_type;

// gst.mpegts.BAT

alias c_gst_mpegts_bat_get_type gst_mpegts_bat_get_type;

// gst.mpegts.BATStream

alias c_gst_mpegts_bat_stream_get_type gst_mpegts_bat_stream_get_type;

// gst.mpegts.CableDeliverySystemDescriptor

alias c_gst_mpegts_dvb_cable_delivery_system_descriptor_get_type gst_mpegts_dvb_cable_delivery_system_descriptor_get_type;
alias c_gst_mpegts_dvb_cable_delivery_system_descriptor_free gst_mpegts_dvb_cable_delivery_system_descriptor_free;

// gst.mpegts.ComponentDescriptor

alias c_gst_mpegts_component_descriptor_get_type gst_mpegts_component_descriptor_get_type;
alias c_gst_mpegts_dvb_component_descriptor_free gst_mpegts_dvb_component_descriptor_free;

// gst.mpegts.Content

alias c_gst_mpegts_content_get_type gst_mpegts_content_get_type;

// gst.mpegts.DVBLinkageDescriptor

alias c_gst_mpegts_dvb_linkage_descriptor_get_type gst_mpegts_dvb_linkage_descriptor_get_type;
alias c_gst_mpegts_dvb_linkage_descriptor_free gst_mpegts_dvb_linkage_descriptor_free;
alias c_gst_mpegts_dvb_linkage_descriptor_get_event gst_mpegts_dvb_linkage_descriptor_get_event;
alias c_gst_mpegts_dvb_linkage_descriptor_get_extended_event gst_mpegts_dvb_linkage_descriptor_get_extended_event;
alias c_gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over gst_mpegts_dvb_linkage_descriptor_get_mobile_hand_over;

// gst.mpegts.DVBLinkageEvent

alias c_gst_mpegts_dvb_linkage_event_get_type gst_mpegts_dvb_linkage_event_get_type;

// gst.mpegts.DVBLinkageExtendedEvent

alias c_gst_mpegts_dvb_linkage_extended_event_get_type gst_mpegts_dvb_linkage_extended_event_get_type;

// gst.mpegts.DVBLinkageMobileHandOver

alias c_gst_mpegts_dvb_linkage_mobile_hand_over_get_type gst_mpegts_dvb_linkage_mobile_hand_over_get_type;

// gst.mpegts.DVBParentalRatingItem

alias c_gst_mpegts_dvb_parental_rating_item_get_type gst_mpegts_dvb_parental_rating_item_get_type;

// gst.mpegts.DVBServiceListItem

alias c_gst_mpegts_dvb_service_list_item_get_type gst_mpegts_dvb_service_list_item_get_type;

// gst.mpegts.DataBroadcastDescriptor

alias c_gst_mpegts_dvb_data_broadcast_descriptor_get_type gst_mpegts_dvb_data_broadcast_descriptor_get_type;
alias c_gst_mpegts_dvb_data_broadcast_descriptor_free gst_mpegts_dvb_data_broadcast_descriptor_free;

// gst.mpegts.Descriptor

alias c_gst_mpegts_descriptor_get_type gst_mpegts_descriptor_get_type;
alias c_gst_mpegts_descriptor_free gst_mpegts_descriptor_free;
alias c_gst_mpegts_descriptor_parse_audio_preselection_list gst_mpegts_descriptor_parse_audio_preselection_list;
alias c_gst_mpegts_descriptor_parse_ca gst_mpegts_descriptor_parse_ca;
alias c_gst_mpegts_descriptor_parse_cable_delivery_system gst_mpegts_descriptor_parse_cable_delivery_system;
alias c_gst_mpegts_descriptor_parse_dvb_bouquet_name gst_mpegts_descriptor_parse_dvb_bouquet_name;
alias c_gst_mpegts_descriptor_parse_dvb_ca_identifier gst_mpegts_descriptor_parse_dvb_ca_identifier;
alias c_gst_mpegts_descriptor_parse_dvb_component gst_mpegts_descriptor_parse_dvb_component;
alias c_gst_mpegts_descriptor_parse_dvb_content gst_mpegts_descriptor_parse_dvb_content;
alias c_gst_mpegts_descriptor_parse_dvb_data_broadcast gst_mpegts_descriptor_parse_dvb_data_broadcast;
alias c_gst_mpegts_descriptor_parse_dvb_data_broadcast_id gst_mpegts_descriptor_parse_dvb_data_broadcast_id;
alias c_gst_mpegts_descriptor_parse_dvb_extended_event gst_mpegts_descriptor_parse_dvb_extended_event;
alias c_gst_mpegts_descriptor_parse_dvb_frequency_list gst_mpegts_descriptor_parse_dvb_frequency_list;
alias c_gst_mpegts_descriptor_parse_dvb_linkage gst_mpegts_descriptor_parse_dvb_linkage;
alias c_gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name gst_mpegts_descriptor_parse_dvb_multilingual_bouquet_name;
alias c_gst_mpegts_descriptor_parse_dvb_multilingual_component gst_mpegts_descriptor_parse_dvb_multilingual_component;
alias c_gst_mpegts_descriptor_parse_dvb_multilingual_network_name gst_mpegts_descriptor_parse_dvb_multilingual_network_name;
alias c_gst_mpegts_descriptor_parse_dvb_multilingual_service_name gst_mpegts_descriptor_parse_dvb_multilingual_service_name;
alias c_gst_mpegts_descriptor_parse_dvb_network_name gst_mpegts_descriptor_parse_dvb_network_name;
alias c_gst_mpegts_descriptor_parse_dvb_parental_rating gst_mpegts_descriptor_parse_dvb_parental_rating;
alias c_gst_mpegts_descriptor_parse_dvb_private_data_specifier gst_mpegts_descriptor_parse_dvb_private_data_specifier;
alias c_gst_mpegts_descriptor_parse_dvb_scrambling gst_mpegts_descriptor_parse_dvb_scrambling;
alias c_gst_mpegts_descriptor_parse_dvb_service gst_mpegts_descriptor_parse_dvb_service;
alias c_gst_mpegts_descriptor_parse_dvb_service_list gst_mpegts_descriptor_parse_dvb_service_list;
alias c_gst_mpegts_descriptor_parse_dvb_short_event gst_mpegts_descriptor_parse_dvb_short_event;
alias c_gst_mpegts_descriptor_parse_dvb_stream_identifier gst_mpegts_descriptor_parse_dvb_stream_identifier;
alias c_gst_mpegts_descriptor_parse_dvb_stuffing gst_mpegts_descriptor_parse_dvb_stuffing;
alias c_gst_mpegts_descriptor_parse_dvb_subtitling_idx gst_mpegts_descriptor_parse_dvb_subtitling_idx;
alias c_gst_mpegts_descriptor_parse_dvb_subtitling_nb gst_mpegts_descriptor_parse_dvb_subtitling_nb;
alias c_gst_mpegts_descriptor_parse_dvb_t2_delivery_system gst_mpegts_descriptor_parse_dvb_t2_delivery_system;
alias c_gst_mpegts_descriptor_parse_dvb_teletext_idx gst_mpegts_descriptor_parse_dvb_teletext_idx;
alias c_gst_mpegts_descriptor_parse_dvb_teletext_nb gst_mpegts_descriptor_parse_dvb_teletext_nb;
alias c_gst_mpegts_descriptor_parse_iso_639_language gst_mpegts_descriptor_parse_iso_639_language;
alias c_gst_mpegts_descriptor_parse_iso_639_language_idx gst_mpegts_descriptor_parse_iso_639_language_idx;
alias c_gst_mpegts_descriptor_parse_iso_639_language_nb gst_mpegts_descriptor_parse_iso_639_language_nb;
alias c_gst_mpegts_descriptor_parse_logical_channel gst_mpegts_descriptor_parse_logical_channel;
alias c_gst_mpegts_descriptor_parse_registration gst_mpegts_descriptor_parse_registration;
alias c_gst_mpegts_descriptor_parse_satellite_delivery_system gst_mpegts_descriptor_parse_satellite_delivery_system;
alias c_gst_mpegts_descriptor_parse_terrestrial_delivery_system gst_mpegts_descriptor_parse_terrestrial_delivery_system;
alias c_gst_mpegts_descriptor_from_custom gst_mpegts_descriptor_from_custom;
alias c_gst_mpegts_descriptor_from_custom_with_extension gst_mpegts_descriptor_from_custom_with_extension;
alias c_gst_mpegts_descriptor_from_dvb_network_name gst_mpegts_descriptor_from_dvb_network_name;
alias c_gst_mpegts_descriptor_from_dvb_service gst_mpegts_descriptor_from_dvb_service;
alias c_gst_mpegts_descriptor_from_dvb_subtitling gst_mpegts_descriptor_from_dvb_subtitling;
alias c_gst_mpegts_descriptor_from_iso_639_language gst_mpegts_descriptor_from_iso_639_language;
alias c_gst_mpegts_descriptor_from_registration gst_mpegts_descriptor_from_registration;
alias c_gst_mpegts_descriptor_parse_audio_preselection_dump gst_mpegts_descriptor_parse_audio_preselection_dump;
alias c_gst_mpegts_descriptor_parse_audio_preselection_free gst_mpegts_descriptor_parse_audio_preselection_free;
alias c_gst_mpegts_find_descriptor gst_mpegts_find_descriptor;
alias c_gst_mpegts_parse_descriptors gst_mpegts_parse_descriptors;

// gst.mpegts.DvbMultilingualBouquetNameItem

alias c_gst_mpegts_dvb_multilingual_bouquet_name_item_get_type gst_mpegts_dvb_multilingual_bouquet_name_item_get_type;

// gst.mpegts.DvbMultilingualComponentItem

alias c_gst_mpegts_dvb_multilingual_component_item_get_type gst_mpegts_dvb_multilingual_component_item_get_type;

// gst.mpegts.DvbMultilingualNetworkNameItem

alias c_gst_mpegts_dvb_multilingual_network_name_item_get_type gst_mpegts_dvb_multilingual_network_name_item_get_type;

// gst.mpegts.DvbMultilingualServiceNameItem

alias c_gst_mpegts_dvb_multilingual_service_name_item_get_type gst_mpegts_dvb_multilingual_service_name_item_get_type;

// gst.mpegts.EIT

alias c_gst_mpegts_eit_get_type gst_mpegts_eit_get_type;

// gst.mpegts.EITEvent

alias c_gst_mpegts_eit_event_get_type gst_mpegts_eit_event_get_type;

// gst.mpegts.ExtendedEventDescriptor

alias c_gst_mpegts_extended_event_descriptor_get_type gst_mpegts_extended_event_descriptor_get_type;
alias c_gst_mpegts_extended_event_descriptor_free gst_mpegts_extended_event_descriptor_free;

// gst.mpegts.ExtendedEventItem

alias c_gst_mpegts_extended_event_item_get_type gst_mpegts_extended_event_item_get_type;

// gst.mpegts.ISO639LanguageDescriptor

alias c_gst_mpegts_iso_639_language_get_type gst_mpegts_iso_639_language_get_type;
alias c_gst_mpegts_iso_639_language_descriptor_free gst_mpegts_iso_639_language_descriptor_free;

// gst.mpegts.LogicalChannel

alias c_gst_mpegts_logical_channel_get_type gst_mpegts_logical_channel_get_type;

// gst.mpegts.LogicalChannelDescriptor

alias c_gst_mpegts_logical_channel_descriptor_get_type gst_mpegts_logical_channel_descriptor_get_type;

// gst.mpegts.NIT

alias c_gst_mpegts_nit_get_type gst_mpegts_nit_get_type;
alias c_gst_mpegts_nit_new gst_mpegts_nit_new;

// gst.mpegts.NITStream

alias c_gst_mpegts_nit_stream_get_type gst_mpegts_nit_stream_get_type;
alias c_gst_mpegts_nit_stream_new gst_mpegts_nit_stream_new;

// gst.mpegts.PMT

alias c_gst_mpegts_pmt_get_type gst_mpegts_pmt_get_type;
alias c_gst_mpegts_pmt_new gst_mpegts_pmt_new;

// gst.mpegts.PMTStream

alias c_gst_mpegts_pmt_stream_get_type gst_mpegts_pmt_stream_get_type;
alias c_gst_mpegts_pmt_stream_new gst_mpegts_pmt_stream_new;

// gst.mpegts.PatProgram

alias c_gst_mpegts_pat_program_get_type gst_mpegts_pat_program_get_type;
alias c_gst_mpegts_pat_program_new gst_mpegts_pat_program_new;
alias c_gst_mpegts_pat_new gst_mpegts_pat_new;

// gst.mpegts.SCTESIT

alias c_gst_mpegts_scte_sit_get_type gst_mpegts_scte_sit_get_type;
alias c_gst_mpegts_scte_sit_new gst_mpegts_scte_sit_new;

// gst.mpegts.SCTESpliceComponent

alias c_gst_mpegts_scte_splice_component_get_type gst_mpegts_scte_splice_component_get_type;
alias c_gst_mpegts_scte_splice_component_new gst_mpegts_scte_splice_component_new;

// gst.mpegts.SCTESpliceEvent

alias c_gst_mpegts_scte_splice_event_get_type gst_mpegts_scte_splice_event_get_type;
alias c_gst_mpegts_scte_splice_event_new gst_mpegts_scte_splice_event_new;

// gst.mpegts.SDT

alias c_gst_mpegts_sdt_get_type gst_mpegts_sdt_get_type;
alias c_gst_mpegts_sdt_new gst_mpegts_sdt_new;

// gst.mpegts.SDTService

alias c_gst_mpegts_sdt_service_get_type gst_mpegts_sdt_service_get_type;
alias c_gst_mpegts_sdt_service_new gst_mpegts_sdt_service_new;

// gst.mpegts.SIT

alias c_gst_mpegts_sit_get_type gst_mpegts_sit_get_type;

// gst.mpegts.SITService

alias c_gst_mpegts_sit_service_get_type gst_mpegts_sit_service_get_type;

// gst.mpegts.SatelliteDeliverySystemDescriptor

alias c_gst_mpegts_satellite_delivery_system_descriptor_get_type gst_mpegts_satellite_delivery_system_descriptor_get_type;

// gst.mpegts.Section

alias c_gst_mpegts_section_get_type gst_mpegts_section_get_type;
alias c_gst_mpegts_section_new gst_mpegts_section_new;
alias c_gst_mpegts_section_get_atsc_cvct gst_mpegts_section_get_atsc_cvct;
alias c_gst_mpegts_section_get_atsc_eit gst_mpegts_section_get_atsc_eit;
alias c_gst_mpegts_section_get_atsc_ett gst_mpegts_section_get_atsc_ett;
alias c_gst_mpegts_section_get_atsc_mgt gst_mpegts_section_get_atsc_mgt;
alias c_gst_mpegts_section_get_atsc_rrt gst_mpegts_section_get_atsc_rrt;
alias c_gst_mpegts_section_get_atsc_stt gst_mpegts_section_get_atsc_stt;
alias c_gst_mpegts_section_get_atsc_tvct gst_mpegts_section_get_atsc_tvct;
alias c_gst_mpegts_section_get_bat gst_mpegts_section_get_bat;
alias c_gst_mpegts_section_get_cat gst_mpegts_section_get_cat;
alias c_gst_mpegts_section_get_data gst_mpegts_section_get_data;
alias c_gst_mpegts_section_get_eit gst_mpegts_section_get_eit;
alias c_gst_mpegts_section_get_nit gst_mpegts_section_get_nit;
alias c_gst_mpegts_section_get_pat gst_mpegts_section_get_pat;
alias c_gst_mpegts_section_get_pmt gst_mpegts_section_get_pmt;
alias c_gst_mpegts_section_get_scte_sit gst_mpegts_section_get_scte_sit;
alias c_gst_mpegts_section_get_sdt gst_mpegts_section_get_sdt;
alias c_gst_mpegts_section_get_sit gst_mpegts_section_get_sit;
alias c_gst_mpegts_section_get_tdt gst_mpegts_section_get_tdt;
alias c_gst_mpegts_section_get_tot gst_mpegts_section_get_tot;
alias c_gst_mpegts_section_get_tsdt gst_mpegts_section_get_tsdt;
alias c_gst_mpegts_section_packetize gst_mpegts_section_packetize;
alias c_gst_mpegts_section_send_event gst_mpegts_section_send_event;
alias c_gst_mpegts_section_from_atsc_mgt gst_mpegts_section_from_atsc_mgt;
alias c_gst_mpegts_section_from_atsc_rrt gst_mpegts_section_from_atsc_rrt;
alias c_gst_mpegts_section_from_atsc_stt gst_mpegts_section_from_atsc_stt;
alias c_gst_mpegts_section_from_nit gst_mpegts_section_from_nit;
alias c_gst_mpegts_section_from_pat gst_mpegts_section_from_pat;
alias c_gst_mpegts_section_from_pmt gst_mpegts_section_from_pmt;
alias c_gst_mpegts_section_from_scte_sit gst_mpegts_section_from_scte_sit;
alias c_gst_mpegts_section_from_sdt gst_mpegts_section_from_sdt;
alias c_gst_event_parse_mpegts_section gst_event_parse_mpegts_section;
alias c_gst_message_new_mpegts_section gst_message_new_mpegts_section;
alias c_gst_message_parse_mpegts_section gst_message_parse_mpegts_section;

// gst.mpegts.T2DeliverySystemCell

alias c_gst_mpegts_t2_delivery_system_cell_get_type gst_mpegts_t2_delivery_system_cell_get_type;

// gst.mpegts.T2DeliverySystemCellExtension

alias c_gst_mpegts_t2_delivery_system_cell_extension_get_type gst_mpegts_t2_delivery_system_cell_extension_get_type;

// gst.mpegts.T2DeliverySystemDescriptor

alias c_gst_mpegts_t2_delivery_system_descriptor_get_type gst_mpegts_t2_delivery_system_descriptor_get_type;
alias c_gst_mpegts_t2_delivery_system_descriptor_free gst_mpegts_t2_delivery_system_descriptor_free;

// gst.mpegts.TOT

alias c_gst_mpegts_tot_get_type gst_mpegts_tot_get_type;

// gst.mpegts.TerrestrialDeliverySystemDescriptor

alias c_gst_mpegts_terrestrial_delivery_system_descriptor_get_type gst_mpegts_terrestrial_delivery_system_descriptor_get_type;

// gst.mpegts.Mpegts

alias c_gst_mpegts_initialize gst_mpegts_initialize;
