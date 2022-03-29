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


module gst.mpegts.c.types;

public import glib.c.types;
public import gobject.c.types;
public import gstreamer.c.types;


/**
 * These values correspond to the registered descriptor type from
 * the various ATSC specifications.
 *
 * Consult the relevant specifications for more details.
 */
public enum GstMpegtsATSCDescriptorType
{
	STUFFING = 128,
	AC3 = 129,
	CAPTION_SERVICE = 134,
	CONTENT_ADVISORY = 135,
	EXTENDED_CHANNEL_NAME = 160,
	SERVICE_LOCATION = 161,
	TIME_SHIFTED_SERVICE = 162,
	COMPONENT_NAME = 163,
	DCC_DEPARTING_REQUEST = 168,
	DCC_ARRIVING_REQUEST = 169,
	REDISTRIBUTION_CONTROL = 170,
	GENRE = 171,
	PRIVATE_INFORMATION = 173,
	EAC3 = 204,
	ENHANCED_SIGNALING = 178,
	DATA_SERVICE = 164,
	PID_COUNT = 165,
	DOWNLOAD_DESCRIPTOR = 166,
	MULTIPROTOCOL_ENCAPSULATION = 167,
	MODULE_LINK = 180,
	CRC32 = 181,
	GROUP_LINK = 184,
}
alias GstMpegtsATSCDescriptorType ATSCDescriptorType;

/**
 * Type of mpeg-ts streams for ATSC, as defined by the ATSC Code Points
 * Registry. For convenience, some stream types from %GstMpegtsScteStreamType
 * are also included.
 *
 * Since: 1.20
 */
public enum GstMpegtsATSCStreamType
{
	/**
	 * DigiCipher II video | Identical to ITU-T Rec. H.262 | ISO/IEC 13818-2 Video
	 */
	DCII_VIDEO = 128,
	/**
	 * ATSC A/53 Audio | AC-3
	 */
	AUDIO_AC3 = 129,
	/**
	 * SCTE-27 Subtitling
	 */
	SUBTITLING = 130,
	/**
	 * SCTE-19 Isochronous data | Reserved
	 */
	ISOCH_DATA = 131,
	/**
	 * SCTE-35 Splice Information Table
	 */
	SIT = 134,
	/**
	 * E-AC-3 A/52:2018
	 */
	AUDIO_EAC3 = 135,
	/**
	 * E-AC-3 A/107 (ATSC 2.0)
	 */
	AUDIO_DTS_HD = 136,
}
alias GstMpegtsATSCStreamType ATSCStreamType;

public enum GstMpegtsAtscMGTTableType
{
	EIT0 = 256,
	EIT127 = 383,
	ETT0 = 512,
	ETT127 = 639,
}
alias GstMpegtsAtscMGTTableType AtscMGTTableType;

public enum GstMpegtsCableOuterFECScheme
{
	UNDEFINED = 0,
	NONE = 1,
	RS_204_188 = 2,
}
alias GstMpegtsCableOuterFECScheme CableOuterFECScheme;

public enum GstMpegtsComponentStreamContent
{
	MPEG2_VIDEO = 1,
	MPEG1_LAYER2_AUDIO = 2,
	TELETEXT_OR_SUBTITLE = 3,
	AC_3 = 4,
	AVC = 5,
	AAC = 6,
	DTS = 7,
	SRM_CPCM = 8,
}
alias GstMpegtsComponentStreamContent ComponentStreamContent;

public enum GstMpegtsContentNibbleHi
{
	MOVIE_DRAMA = 1,
	NEWS_CURRENT_AFFAIRS = 2,
	SHOW_GAME_SHOW = 3,
	SPORTS = 4,
	CHILDREN_YOUTH_PROGRAM = 5,
	MUSIC_BALLET_DANCE = 6,
	ARTS_CULTURE = 7,
	SOCIAL_POLITICAL_ECONOMICS = 8,
	EDUCATION_SCIENCE_FACTUAL = 9,
	LEISURE_HOBBIES = 10,
	SPECIAL_CHARACTERISTICS = 11,
}
alias GstMpegtsContentNibbleHi ContentNibbleHi;

public enum GstMpegtsDVBCodeRate
{
	NONE = 0,
	_1_2 = 1,
	_2_3 = 2,
	_3_4 = 3,
	_4_5 = 4,
	_5_6 = 5,
	_6_7 = 6,
	_7_8 = 7,
	_8_9 = 8,
	AUTO = 9,
	_3_5 = 10,
	_9_10 = 11,
	_2_5 = 12,
}
alias GstMpegtsDVBCodeRate DVBCodeRate;

/**
 * The type of #GstMpegtsDescriptor
 *
 * These values correspond to the registered descriptor type from
 * the various DVB specifications.
 *
 * Consult the relevant specifications for more details.
 */
public enum GstMpegtsDVBDescriptorType
{
	NETWORK_NAME = 64,
	SERVICE_LIST = 65,
	STUFFING = 66,
	SATELLITE_DELIVERY_SYSTEM = 67,
	CABLE_DELIVERY_SYSTEM = 68,
	VBI_DATA = 69,
	VBI_TELETEXT = 70,
	BOUQUET_NAME = 71,
	SERVICE = 72,
	COUNTRY_AVAILABILITY = 73,
	LINKAGE = 74,
	NVOD_REFERENCE = 75,
	TIME_SHIFTED_SERVICE = 76,
	SHORT_EVENT = 77,
	EXTENDED_EVENT = 78,
	TIME_SHIFTED_EVENT = 79,
	COMPONENT = 80,
	MOSAIC = 81,
	STREAM_IDENTIFIER = 82,
	CA_IDENTIFIER = 83,
	CONTENT = 84,
	PARENTAL_RATING = 85,
	TELETEXT = 86,
	TELEPHONE = 87,
	LOCAL_TIME_OFFSET = 88,
	SUBTITLING = 89,
	TERRESTRIAL_DELIVERY_SYSTEM = 90,
	MULTILINGUAL_NETWORK_NAME = 91,
	MULTILINGUAL_BOUQUET_NAME = 92,
	MULTILINGUAL_SERVICE_NAME = 93,
	MULTILINGUAL_COMPONENT = 94,
	PRIVATE_DATA_SPECIFIER = 95,
	SERVICE_MOVE = 96,
	SHORT_SMOOTHING_BUFFER = 97,
	FREQUENCY_LIST = 98,
	/**
	 * Partial Transport Stream descriptor. Only present in SIT Sections.
	 *
	 * See also: %GST_MPEGTS_SECTION_SIT, %GstMpegtsSIT
	 */
	PARTIAL_TRANSPORT_STREAM = 99,
	DATA_BROADCAST = 100,
	SCRAMBLING = 101,
	DATA_BROADCAST_ID = 102,
	TRANSPORT_STREAM = 103,
	DSNG = 104,
	PDC = 105,
	AC3 = 106,
	ANCILLARY_DATA = 107,
	CELL_LIST = 108,
	CELL_FREQUENCY_LINK = 109,
	ANNOUNCEMENT_SUPPORT = 110,
	APPLICATION_SIGNALLING = 111,
	ADAPTATION_FIELD_DATA = 112,
	SERVICE_IDENTIFIER = 113,
	SERVICE_AVAILABILITY = 114,
	DEFAULT_AUTHORITY = 115,
	RELATED_CONTENT = 116,
	TVA_ID = 117,
	CONTENT_IDENTIFIER = 118,
	TIMESLICE_FEC_IDENTIFIER = 119,
	ECM_REPETITION_RATE = 120,
	S2_SATELLITE_DELIVERY_SYSTEM = 121,
	ENHANCED_AC3 = 122,
	DTS = 123,
	AAC = 124,
	XAIT_LOCATION = 125,
	FTA_CONTENT_MANAGEMENT = 126,
	EXTENSION = 127,
}
alias GstMpegtsDVBDescriptorType DVBDescriptorType;

/**
 * The type of #GstMpegtsDescriptor
 *
 * These values correspond to the registered extended descriptor
 * type from the various DVB specifications.
 *
 * Consult the relevant specifications for more details.
 */
public enum GstMpegtsDVBExtendedDescriptorType
{
	IMAGE_ICON = 0,
	CPCM_DELIVERY_SIGNALLING = 1,
	CP = 2,
	CP_IDENTIFIER = 3,
	T2_DELIVERY_SYSTEM = 4,
	SH_DELIVERY_SYSTEM = 5,
	SUPPLEMENTARY_AUDIO = 6,
	NETWORK_CHANGE_NOTIFY = 7,
	MESSAGE = 8,
	TARGET_REGION = 9,
	TARGET_REGION_NAME = 10,
	SERVICE_RELOCATED = 11,
	XAIT_PID = 12,
	C2_DELIVERY_SYSTEM = 13,
	DTS_HD_AUDIO_STREAM = 14,
	DTS_NEUTRAL = 15,
	VIDEO_DEPTH_RANGE = 16,
	T2MI = 17,
	URI_LINKAGE = 19,
	AC4 = 21,
	/**
	 * Provide all avaliable audio programme for user selection
	 */
	AUDIO_PRESELECTION = 25,
}
alias GstMpegtsDVBExtendedDescriptorType DVBExtendedDescriptorType;

public enum GstMpegtsDVBLinkageHandOverType
{
	RESERVED = 0,
	IDENTICAL = 1,
	LOCAL_VARIATION = 2,
	ASSOCIATED = 3,
}
alias GstMpegtsDVBLinkageHandOverType DVBLinkageHandOverType;

/**
 * Linkage Type (EN 300 468 v.1.13.1)
 */
public enum GstMpegtsDVBLinkageType
{
	RESERVED_00 = 0,
	INFORMATION = 1,
	EPG = 2,
	CA_REPLACEMENT = 3,
	TS_CONTAINING_COMPLETE_SI = 4,
	SERVICE_REPLACEMENT = 5,
	DATA_BROADCAST = 6,
	RCS_MAP = 7,
	MOBILE_HAND_OVER = 8,
	SYSTEM_SOFTWARE_UPDATE = 9,
	TS_CONTAINING_SSU = 10,
	IP_MAC_NOTIFICATION = 11,
	TS_CONTAINING_INT = 12,
	EVENT = 13,
	EXTENDED_EVENT = 14,
}
alias GstMpegtsDVBLinkageType DVBLinkageType;

public enum GstMpegtsDVBScramblingModeType
{
	RESERVED = 0,
	CSA1 = 1,
	CSA2 = 2,
	CSA3_STANDARD = 3,
	CSA3_MINIMAL_ENHANCED = 4,
	CSA3_FULL_ENHANCED = 5,
	CISSA = 16,
	ATIS_0 = 112,
	ATIS_F = 127,
}
alias GstMpegtsDVBScramblingModeType DVBScramblingModeType;

/**
 * The type of service of a channel.
 *
 * As specified in Table 87 of ETSI EN 300 468 v1.13.1
 */
public enum GstMpegtsDVBServiceType
{
	RESERVED_00 = 0,
	DIGITAL_TELEVISION = 1,
	DIGITAL_RADIO_SOUND = 2,
	TELETEXT = 3,
	NVOD_REFERENCE = 4,
	NVOD_TIME_SHIFTED = 5,
	MOSAIC = 6,
	FM_RADIO = 7,
	DVB_SRM = 8,
	RESERVED_09 = 9,
	ADVANCED_CODEC_DIGITAL_RADIO_SOUND = 10,
	ADVANCED_CODEC_MOSAIC = 11,
	DATA_BROADCAST = 12,
	RESERVED_0D_COMMON_INTERFACE = 13,
	RCS_MAP = 14,
	RCS_FLS = 15,
	DVB_MHP = 16,
	MPEG2_HD_DIGITAL_TELEVISION = 17,
	ADVANCED_CODEC_SD_DIGITAL_TELEVISION = 22,
	ADVANCED_CODEC_SD_NVOD_TIME_SHIFTED = 23,
	ADVANCED_CODEC_SD_NVOD_REFERENCE = 24,
	ADVANCED_CODEC_HD_DIGITAL_TELEVISION = 25,
	ADVANCED_CODEC_HD_NVOD_TIME_SHIFTED = 26,
	ADVANCED_CODEC_HD_NVOD_REFERENCE = 27,
	ADVANCED_CODEC_STEREO_HD_DIGITAL_TELEVISION = 28,
	ADVANCED_CODEC_STEREO_HD_NVOD_TIME_SHIFTED = 29,
	ADVANCED_CODEC_STEREO_HD_NVOD_REFERENCE = 30,
	RESERVED_FF = 31,
}
alias GstMpegtsDVBServiceType DVBServiceType;

/**
 * The type of teletext page.
 *
 * As specified in Table 100 of ETSI EN 300 468 v1.13.1
 */
public enum GstMpegtsDVBTeletextType
{
	NITIAL_PAGE = 1,
	UBTITLE_PAGE = 2,
	DDITIONAL_INFO_PAGE = 3,
	ROGRAMME_SCHEDULE_PAGE = 4,
	EARING_IMPAIRED_PAGE = 5,
}
alias GstMpegtsDVBTeletextType DVBTeletextType;

/**
 * The type of #GstMpegtsDescriptor
 *
 * These values correspond to the registered descriptor type from
 * the base MPEG-TS specifications (ITU H.222.0 | ISO/IEC 13818-1).
 *
 * Consult the relevant specifications for more details.
 */
public enum GstMpegtsDescriptorType
{
	RESERVED_00 = 0,
	RESERVED_01 = 1,
	VIDEO_STREAM = 2,
	AUDIO_STREAM = 3,
	HIERARCHY = 4,
	REGISTRATION = 5,
	DATA_STREAM_ALIGNMENT = 6,
	TARGET_BACKGROUND_GRID = 7,
	VIDEO_WINDOW = 8,
	CA = 9,
	ISO_639_LANGUAGE = 10,
	SYSTEM_CLOCK = 11,
	MULTIPLEX_BUFFER_UTILISATION = 12,
	COPYRIGHT = 13,
	MAXIMUM_BITRATE = 14,
	PRIVATE_DATA_INDICATOR = 15,
	SMOOTHING_BUFFER = 16,
	STD = 17,
	IBP = 18,
	DSMCC_CAROUSEL_IDENTIFIER = 19,
	DSMCC_ASSOCIATION_TAG = 20,
	DSMCC_DEFERRED_ASSOCIATION_TAG = 21,
	DSMCC_NPT_REFERENCE = 23,
	DSMCC_NPT_ENDPOINT = 24,
	DSMCC_STREAM_MODE = 25,
	DSMCC_STREAM_EVENT = 26,
	MPEG4_VIDEO = 27,
	MPEG4_AUDIO = 28,
	IOD = 29,
	SL = 30,
	FMC = 31,
	EXTERNAL_ES_ID = 32,
	MUX_CODE = 33,
	FMX_BUFFER_SIZE = 34,
	MULTIPLEX_BUFFER = 35,
	CONTENT_LABELING = 36,
	METADATA_POINTER = 37,
	METADATA = 38,
	METADATA_STD = 39,
	AVC_VIDEO = 40,
	IPMP = 41,
	AVC_TIMING_AND_HRD = 42,
	MPEG2_AAC_AUDIO = 43,
	FLEX_MUX_TIMING = 44,
	MPEG4_TEXT = 45,
	MPEG4_AUDIO_EXTENSION = 46,
	AUXILIARY_VIDEO_STREAM = 47,
	SVC_EXTENSION = 48,
	MVC_EXTENSION = 49,
	J2K_VIDEO = 50,
	MVC_OPERATION_POINT = 51,
	MPEG2_STEREOSCOPIC_VIDEO_FORMAT = 52,
	STEREOSCOPIC_PROGRAM_INFO = 53,
	STEREOSCOPIC_VIDEO_INFO = 54,
}
alias GstMpegtsDescriptorType DescriptorType;

/**
 * Type of mpeg-ts streams for Blu-ray formats. To be matched with the
 * stream-type of a #GstMpegtsSection.
 *
 * Since: 1.20
 */
public enum GstMpegtsHdmvStreamType
{
	AUDIO_LPCM = 128,
	AUDIO_AC3 = 129,
	AUDIO_DTS = 130,
	AUDIO_AC3_TRUE_HD = 131,
	AUDIO_AC3_PLUS = 132,
	AUDIO_DTS_HD = 133,
	AUDIO_DTS_HD_MASTER_AUDIO = 134,
	AUDIO_EAC3 = 135,
	SUBPICTURE_PGS = 144,
	IGS = 145,
	SUBTITLE = 146,
	AUDIO_AC3_PLUS_SECONDARY = 161,
	AUDIO_DTS_HD_SECONDARY = 162,
}
alias GstMpegtsHdmvStreamType HdmvStreamType;

/**
 * These values correspond to the registered descriptor type from
 * the various ISDB specifications.
 *
 * Consult the relevant specifications for more details.
 */
public enum GstMpegtsISDBDescriptorType
{
	HIERARCHICAL_TRANSMISSION = 192,
	DIGITAL_COPY_CONTROL = 193,
	NETWORK_IDENTIFICATION = 194,
	PARTIAL_TS_TIME = 195,
	AUDIO_COMPONENT = 196,
	HYPERLINK = 197,
	TARGET_REGION = 198,
	DATA_CONTENT = 199,
	VIDEO_DECODE_CONTROL = 200,
	DOWNLOAD_CONTENT = 201,
	CA_EMM_TS = 202,
	CA_CONTRACT_INFORMATION = 203,
	CA_SERVICE = 204,
	TS_INFORMATION = 205,
	EXTENDED_BROADCASTER = 206,
	LOGO_TRANSMISSION = 207,
	BASIC_LOCAL_EVENT = 208,
	REFERENCE = 209,
	NODE_RELATION = 210,
	SHORT_NODE_INFORMATION = 211,
	STC_REFERENCE = 212,
	SERIES = 213,
	EVENT_GROUP = 214,
	SI_PARAMETER = 215,
	BROADCASTER_NAME = 216,
	COMPONENT_GROUP = 217,
	SI_PRIME_TS = 218,
	BOARD_INFORMATION = 219,
	LDT_LINKAGE = 220,
	CONNECTED_TRANSMISSION = 221,
	CONTENT_AVAILABILITY = 222,
	SERVICE_GROUP = 224,
}
alias GstMpegtsISDBDescriptorType ISDBDescriptorType;

public enum GstMpegtsIso639AudioType
{
	UNDEFINED = 0,
	CLEAN_EFFECTS = 1,
	HEARING_IMPAIRED = 2,
	VISUAL_IMPAIRED_COMMENTARY = 3,
}
alias GstMpegtsIso639AudioType Iso639AudioType;

/**
 * The type of #GstMpegtsDescriptor
 *
 * These values correspond to miscellaneous descriptor types that are
 * not yet identified from known specifications.
 */
public enum GstMpegtsMiscDescriptorType
{
	MTS_DESC_DTG_LOGICAL_CHANNEL = 131,
}
alias GstMpegtsMiscDescriptorType MiscDescriptorType;

public enum GstMpegtsModulationType
{
	QPSK = 0,
	QAM_16 = 1,
	QAM_32 = 2,
	QAM_64 = 3,
	QAM_128 = 4,
	QAM_256 = 5,
	QAM_AUTO = 6,
	VSB_8 = 7,
	VSB_16 = 8,
	PSK_8 = 9,
	APSK_16 = 10,
	APSK_32 = 11,
	DQPSK = 12,
	QAM_4_NR_ = 13,
	NONE = 14,
}
alias GstMpegtsModulationType ModulationType;

/**
 * Well-known registration ids, expressed as native-endian 32bit integers. These
 * are used in descriptors of type %GST_MTS_DESC_REGISTRATION. Unless specified
 * otherwise (by use of the "OTHER" prefix), they are all registered by the
 * [SMPTE Registration Authority](https://smpte-ra.org/) or specified in
 * "official" documentation for the given format.
 *
 * Since: 1.20
 */
public enum GstMpegtsRegistrationId
{
	/**
	 * Undefined registration id
	 */
	_0 = 0,
	/**
	 * Audio AC-3, ATSC A/52
	 */
	AC_3 = 1094921523,
	/**
	 * SCTE 35, "Digital Program Insertion Cueing Message"
	 */
	CUEI = 1129661769,
	/**
	 * Dirac Video codec
	 */
	DRAC = 1685217635,
	/**
	 * DTS Audio
	 */
	DTS1 = 1146377009,
	/**
	 * DTS Audio
	 */
	DTS2 = 1146377010,
	/**
	 * DTS Audio
	 */
	DTS3 = 1146377011,
	/**
	 * SMPTE 302M, Mapping of AES3 Data in mpeg-ts
	 */
	BSSD = 1112757060,
	/**
	 * Enhanced AC-3 (i.e. EAC3)
	 */
	EAC3 = 1161904947,
	/**
	 * Cablelabs ETV
	 */
	ETV1 = 1163154993,
	/**
	 * ATSC A/53 compliant stream (i.e. ATSC)
	 */
	GA94 = 1195456820,
	/**
	 * Blu-ray, "System Description Blu-ray Disc
	 * Read-Only Format part 3 Audio Visual Basic Specifications"
	 */
	HDMV = 1212435798,
	/**
	 * SMPTE RP217 : Non-synchronized Mapping of KLV
	 * Packets in mpeg-ts
	 */
	KLVA = 1263294017,
	/**
	 * Opus Audio
	 */
	OPUS = 1330664787,
	/**
	 * HDV (Sony)
	 */
	TSHV = 1414744150,
	/**
	 * Video VC-1, SMPTE RP227 "VC-1 Bitstream Transport Encodings"
	 */
	VC_1 = 1447243057,
	/**
	 * Audio AC-4, ETSI 103 190-2
	 */
	AC_4 = 1094921524,
	/**
	 * HEVC / h265
	 */
	OTHER_HEVC = 1212503619,
}
alias GstMpegtsRegistrationId RegistrationId;

/**
 * Running status of a service.
 *
 * Corresponds to table 6 of ETSI EN 300 468 (v1.13.0)
 */
public enum GstMpegtsRunningStatus
{
	UNDEFINED = 0,
	NOT_RUNNING = 1,
	STARTS_IN_FEW_SECONDS = 2,
	PAUSING = 3,
	RUNNING = 4,
	OFF_AIR = 5,
}
alias GstMpegtsRunningStatus RunningStatus;

/**
 * These values correspond to the ones defined by SCTE (amongst other in ANSI/SCTE 57)
 *
 * Since: 1.20
 */
public enum GstMpegtsSCTEDescriptorType
{
	STUFFING = 128,
	AC3 = 129,
	FRAME_RATE = 130,
	EXTENDED_VIDEO = 131,
	COMPONENT_NAME = 132,
	FREQUENCY_SPEC = 144,
	MODULATION_PARAMS = 145,
	TRANSPORT_STREAM_ID = 146,
}
alias GstMpegtsSCTEDescriptorType SCTEDescriptorType;

public enum GstMpegtsSCTESpliceCommandType
{
	NULL = 0,
	SCHEDULE = 4,
	INSERT = 5,
	TIME = 6,
	BANDWIDTH = 7,
	PRIVATE = 255,
}
alias GstMpegtsSCTESpliceCommandType SCTESpliceCommandType;

public enum GstMpegtsSCTESpliceDescriptor
{
	AVAIL = 0,
	DTMF = 1,
	SEGMENTATION = 2,
	TIME = 3,
	AUDIO = 4,
}
alias GstMpegtsSCTESpliceDescriptor SCTESpliceDescriptor;

public enum GstMpegtsSatellitePolarizationType
{
	LINEAR_HORIZONTAL = 0,
	LINEAR_VERTICAL = 1,
	CIRCULAR_LEFT = 2,
	CIRCULAR_RIGHT = 3,
}
alias GstMpegtsSatellitePolarizationType SatellitePolarizationType;

public enum GstMpegtsSatelliteRolloff
{
	_35 = 0,
	_20 = 1,
	_25 = 2,
	RESERVED = 3,
	AUTO = 4,
}
alias GstMpegtsSatelliteRolloff SatelliteRolloff;

/**
 * Type of mpeg-ts streams for SCTE. Most users would want to use the
 * #GstMpegtsATSCStreamType instead since it also covers these stream types
 */
public enum GstMpegtsScteStreamType
{
	/**
	 * SCTE-27 Subtitling
	 */
	SUBTITLING = 130,
	/**
	 * SCTE-19 Isochronous data
	 */
	ISOCH_DATA = 131,
	/**
	 * SCTE-35 Splice Information Table
	 */
	SIT = 134,
	/**
	 * SCTE-07 Data Service or
	 * Network Resource Table
	 */
	DST_NRT = 149,
	/**
	 * Type B - DSM-CC Data Carousel
	 * [IEC 13818-6])
	 */
	DSMCC_DCB = 176,
	/**
	 * Enhanced Television Application
	 * Signaling (OC-SP-ETV-AM1.0.1-120614)
	 */
	SIGNALING = 192,
	/**
	 * SCTE-07 Synchronous data
	 */
	SYNC_DATA = 194,
	/**
	 * SCTE-53 Asynchronous data
	 */
	ASYNC_DATA = 195,
}
alias GstMpegtsScteStreamType ScteStreamType;

/**
 * Values for a #GstMpegtsSection table_id.
 *
 * These are the registered ATSC section `table_id` variants. Unless specified
 * otherwise, they are defined in the "ATSC A/65" specification.
 *
 * see also: #GstMpegtsSectionTableID and other variants.
 */
public enum GstMpegtsSectionATSCTableID
{
	/**
	 * Master Guide Table (MGT)
	 */
	MASTER_GUIDE = 199,
	/**
	 * Terrestrial Virtual Channel Table (TVCT)
	 */
	TERRESTRIAL_VIRTUAL_CHANNEL = 200,
	/**
	 * Cable Virtual Channel Table (CVCT)
	 */
	CABLE_VIRTUAL_CHANNEL = 201,
	/**
	 * Rating Region Table (RRT)
	 */
	RATING_REGION = 202,
	/**
	 * Event Information Table (EIT)
	 */
	EVENT_INFORMATION = 203,
	/**
	 * Extended Text Table (ETT)
	 */
	CHANNEL_OR_EVENT_EXTENDED_TEXT = 204,
	/**
	 * System Time Table (STT)
	 */
	SYSTEM_TIME = 205,
	/**
	 * A/90: Data Event Table (DET)
	 */
	DATA_EVENT = 206,
	/**
	 * A/90: Data Service Table (DST)
	 */
	DATA_SERVICE = 207,
	/**
	 * A/57B: Program Identifier Table.
	 */
	PROGRAM_IDENTIFIER = 208,
	/**
	 * A/90: Network Resources Table (NRT)
	 */
	NETWORK_RESOURCE = 209,
	/**
	 * A/90: Long Term Service Table (LTST)
	 */
	LONG_TERM_SERVICE = 210,
	/**
	 * Directed Channel Change Table (DCCT)
	 */
	DIRECTED_CHANNEL_CHANGE = 211,
	/**
	 * Directed Channel Change Selection Code Table (DCCSCT)
	 */
	DIRECTED_CHANNEL_CHANGE_SECTION_CODE = 212,
	AGGREGATE_EVENT_INFORMATION = 214,
	AGGREGATE_EXTENDED_TEXT = 215,
	AGGREGATE_DATA_EVENT = 217,
	/**
	 * A/81: Satellite Virtual Channel Table
	 */
	SATELLITE_VIRTUAL_CHANNEL = 218,
}
alias GstMpegtsSectionATSCTableID SectionATSCTableID;

/**
 * Values for a #GstMpegtsSection table_id.
 *
 * These are the registered DVB table_id variants. Unless specified otherwise,
 * they come from the DVB Specification for SI (ETSI EN 300 468).
 *
 * see also: #GstMpegtsSectionTableID
 */
public enum GstMpegtsSectionDVBTableID
{
	/**
	 * Network Information Table (NIT), Actual Network
	 */
	NETWORK_INFORMATION_ACTUAL_NETWORK = 64,
	/**
	 * Network Information Table (NIT), Other Network
	 */
	NETWORK_INFORMATION_OTHER_NETWORK = 65,
	/**
	 * Service Description Table (SDT), Actual Transport Stream
	 */
	SERVICE_DESCRIPTION_ACTUAL_TS = 66,
	/**
	 * Service Description Table (SDT), Other Transport Stream
	 */
	SERVICE_DESCRIPTION_OTHER_TS = 70,
	/**
	 * Bouquet Association Table (BAT)
	 */
	BOUQUET_ASSOCIATION = 74,
	/**
	 * ETSI TS 102 006: Update Notification Table (UNT)
	 */
	UPDATE_NOTIFICATION = 75,
	/**
	 * ETSI EN 303 560: Downloadable Font Info
	 */
	DOWNLOADABLE_FONT_INFO = 76,
	/**
	 * Event Information Table (EIT), Actual Transport Stream, present/following
	 */
	EVENT_INFORMATION_ACTUAL_TS_PRESENT = 78,
	/**
	 * Event Information Table (EIT), Other Transport Stream, present/following
	 */
	EVENT_INFORMATION_OTHER_TS_PRESENT = 79,
	/**
	 * Event Information Table (EIT), Actual Transport Stream, Schedule (first)
	 */
	EVENT_INFORMATION_ACTUAL_TS_SCHEDULE_1 = 80,
	/**
	 * Event Information Table (EIT), Actual Transport Stream, Schedule (last)
	 */
	EVENT_INFORMATION_ACTUAL_TS_SCHEDULE_N = 95,
	/**
	 * Event Information Table (EIT), Other Transport Stream, Schedule (first)
	 */
	EVENT_INFORMATION_OTHER_TS_SCHEDULE_1 = 96,
	/**
	 * Event Information Table (EIT), Other Transport Stream, Schedule (last)
	 */
	EVENT_INFORMATION_OTHER_TS_SCHEDULE_N = 111,
	/**
	 * Time Date Table (TDT)
	 */
	TIME_DATE = 112,
	/**
	 * Running Status Table (RST)
	 */
	RUNNING_STATUS = 113,
	/**
	 * Stuffing Table (ST)
	 */
	STUFFING = 114,
	/**
	 * Time Offset Table (TOT)
	 */
	TIME_OFFSET = 115,
	/**
	 * ETSI TS 102 323: Application Information Table (AIT)
	 */
	APPLICATION_INFORMATION_TABLE = 116,
	/**
	 * ETSI TS 102 323: Container Section
	 */
	CONTAINER = 117,
	/**
	 * ETSI TS 102 323: Related Content Table (RCT)
	 */
	RELATED_CONTENT = 118,
	/**
	 * ETSI TS 102 323: Content Identifier Table (CIT)
	 */
	CONTENT_IDENTIFIER = 119,
	/**
	 * ETSI TS 301 192: MPE-FEC Section
	 */
	MPE_FEC = 120,
	/**
	 * ETSI 103 323: Resolution Provider Notification Table (RNT)
	 */
	RESOLUTION_NOTIFICATION = 121,
	/**
	 * ETSI TS 102 772: MPE-IFEC Section
	 */
	MPE_IFEC = 122,
	/**
	 * ETSI TS 102 809: Protection Message Section
	 */
	PROTECTION_MESSAGE = 123,
	/**
	 * Discontinuity Information Table (DIT)
	 */
	DISCONTINUITY_INFORMATION = 126,
	/**
	 * Selection Information Table (SIT)
	 */
	SELECTION_INFORMATION = 127,
	/**
	 * ETSI TR 289: CA Message Table (CMT): ECM 0
	 */
	CA_MESSAGE_ECM_0 = 128,
	/**
	 * ETSI TR 289: CA Message Table (CMT): ECM 1
	 */
	CA_MESSAGE_ECM_1 = 129,
	/**
	 * ETSI TR 289: CA Message Table (CMT): CA System Private (First)
	 */
	CA_MESSAGE_SYSTEM_PRIVATE_1 = 130,
	/**
	 * ETSI TR 289: CA Message Table (CMT): CA System Private (Last)
	 */
	CA_MESSAGE_SYSTEM_PRIVATE_N = 143,
	SCT = 160,
	FCT = 161,
	TCT = 162,
	SPT = 163,
	CMT = 164,
	TBTP = 165,
	PCR_PACKET_PAYLOAD = 166,
	TRANSMISSION_MODE_SUPPORT_PAYLOAD = 170,
	TIM = 176,
	LL_FEC_PARITY_DATA_TABLE = 177,
}
alias GstMpegtsSectionDVBTableID SectionDVBTableID;

/**
 * Values for a #GstMpegtsSection table_id.
 *
 * These are the registered SCTE table_id variants.
 *
 * see also: #GstMpegtsSectionTableID
 */
public enum GstMpegtsSectionSCTETableID
{
	/**
	 * SCTE-18 Emergency Alert System
	 */
	EAS = 216,
	/**
	 * CL-SP-ETV-AM 1.0.1 EBIF message
	 */
	EBIF = 224,
	RESERVED = 225,
	/**
	 * CL-SP-ETV-AM 1.0.1 EBIF Int. Signaling Sect.
	 */
	EISS = 226,
	/**
	 * CL-SP-ETV-AM 1.0.1 DSMCC DII message
	 */
	DII = 227,
	/**
	 * CL-SP-ETV-AM 1.0.1 DSMCC Data Download Block
	 */
	DDB = 228,
	/**
	 * SCTE-35 splice information is carried in a
	 * section stream on a separate PID in the program’s Map Table (PMT) allowing
	 * Splice Event notifications to remain associated with the program and pass
	 * through multiplexers.
	 */
	SPLICE = 252,
}
alias GstMpegtsSectionSCTETableID SectionSCTETableID;

/**
 * Values for a #GstMpegtsSection table_id
 *
 * These are the registered ITU H.222.0 | ISO/IEC 13818-1 table_id variants.
 *
 * see also #GstMpegtsSectionATSCTableID, #GstMpegtsSectionDVBTableID, and
 * #GstMpegtsSectionSCTETableID
 */
public enum GstMpegtsSectionTableID
{
	/**
	 * Program Association Table (PAT)
	 */
	PROGRAM_ASSOCIATION = 0,
	/**
	 * Conditional Access Table (CAT)
	 */
	CONDITIONAL_ACCESS = 1,
	/**
	 * Program Map Table (PMT)
	 */
	TS_PROGRAM_MAP = 2,
	/**
	 * Transport Stream Description Table
	 */
	TS_DESCRIPTION = 3,
	/**
	 * ISO/IEC 14496 Scene Description Table
	 */
	_14496_SCENE_DESCRIPTION = 4,
	/**
	 * ISO/IEC 14496 Object Descriptor Table
	 */
	_14496_OBJET_DESCRIPTOR = 5,
	/**
	 * Metadata Section
	 */
	METADATA = 6,
	/**
	 * IPMP Control Information
	 */
	IPMP_CONTROL_INFORMATION = 7,
	/**
	 * ISO/IEC 14496 Section.
	 */
	_14496_SECTION = 8,
	/**
	 * ISO/IEC 23001-11 (Green Access Unit) Section.
	 */
	_23001_11_SECTION = 9,
	/**
	 * ISO/ISO 23001-10 (Quality Access Unit) Section.
	 */
	_23001_10_SECTION = 10,
	/**
	 * DSM-CC Multi-Protocol Encapsulated (MPE) Data
	 */
	DSM_CC_MULTIPROTO_ENCAPSULATED_DATA = 58,
	/**
	 * DSM-CC U-N Messages
	 */
	DSM_CC_U_N_MESSAGES = 59,
	/**
	 * DSM-CC Download Data Messages
	 */
	DSM_CC_DOWNLOAD_DATA_MESSAGES = 60,
	/**
	 * DSM-CC Stream Descriptors
	 */
	DSM_CC_STREAM_DESCRIPTORS = 61,
	/**
	 * DSM-CC Private Data
	 */
	DSM_CC_PRIVATE_DATA = 62,
	/**
	 * DSM-CC Addressable Section
	 */
	DSM_CC_ADDRESSABLE_SECTIONS = 63,
	/**
	 * Unset section table_id (value is forbidden to use in actual sections)
	 */
	UNSET = 255,
}
alias GstMpegtsSectionTableID SectionTableID;

/**
 * Types of #GstMpegtsSection that the library handles. This covers all the
 * MPEG-TS and derivate specification that the library can properly identify and
 * use.
 */
public enum GstMpegtsSectionType
{
	/**
	 * Unknown section type
	 */
	UNKNOWN = 0,
	/**
	 * Program Association Table (ISO/IEC 13818-1)
	 */
	PAT = 1,
	/**
	 * Program Map Table (ISO/IEC 13818-1)
	 */
	PMT = 2,
	/**
	 * Conditional Access Table (ISO/IEC 13818-1)
	 */
	CAT = 3,
	/**
	 * Transport Stream Description Table (ISO/IEC 13818-1)
	 */
	TSDT = 4,
	/**
	 * Event Information Table (EN 300 468)
	 */
	EIT = 5,
	/**
	 * Network Information Table (ISO/IEC 13818-1 / EN 300 468)
	 */
	NIT = 6,
	/**
	 * Bouquet Association Table ((EN 300 468)
	 */
	BAT = 7,
	/**
	 * Service Description Table (EN 300 468)
	 */
	SDT = 8,
	/**
	 * Time and Date Table (EN 300 468)
	 */
	TDT = 9,
	/**
	 * Time Offset Table (EN 300 468)
	 */
	TOT = 10,
	/**
	 * Selection Information Table (EN 300 468)
	 */
	SIT = 11,
	/**
	 * ATSC Terrestrial Virtual Channel Table (A65)
	 */
	ATSC_TVCT = 12,
	/**
	 * ATSC Cable Virtual Channel Table (A65)
	 */
	ATSC_CVCT = 13,
	/**
	 * ATSC Master Guide Table (A65)
	 */
	ATSC_MGT = 14,
	/**
	 * ATSC Extended Text Table (A65)
	 */
	ATSC_ETT = 15,
	/**
	 * ATSC Event Information Table (A65)
	 */
	ATSC_EIT = 16,
	/**
	 * ATSC System Time Table (A65)
	 */
	ATSC_STT = 17,
	/**
	 * ATSC Rating Region Table (A65)
	 */
	ATSC_RRT = 18,
	/**
	 * SCTE Splice Information Table (SCTE-35)
	 */
	SCTE_SIT = 19,
}
alias GstMpegtsSectionType SectionType;

/**
 * Type of MPEG-TS stream type.
 *
 * These values correspond to the base standard registered types. Depending
 * on the variant of mpeg-ts being used (Bluray, ATSC, DVB, ...), other
 * types might also be used, but will not conflict with these.
 *
 * Corresponds to table 2-34 of ITU H.222.0 | ISO/IEC 13818-1
 */
public enum GstMpegtsStreamType
{
	/**
	 * ITU-T | ISO/IEC Reserved
	 */
	RESERVED_00 = 0,
	/**
	 * ISO/IEC 11172-2 Video (i.e. MPEG-1 Video)
	 */
	VIDEO_MPEG1 = 1,
	/**
	 * Rec. ITU-T H.262 | ISO/IEC 13818-2
	 * Video or ISO/IEC 11172-2 constrained parameter video stream (i.e.
	 * MPEG-2 Video)
	 */
	VIDEO_MPEG2 = 2,
	/**
	 * ISO/IEC 11172-3 Audio
	 */
	AUDIO_MPEG1 = 3,
	/**
	 * ISO/IEC 13818-3 Audio
	 */
	AUDIO_MPEG2 = 4,
	/**
	 * private sections
	 */
	PRIVATE_SECTIONS = 5,
	/**
	 * PES packets containing private data
	 */
	PRIVATE_PES_PACKETS = 6,
	/**
	 * ISO/IEC 13522 MHEG
	 */
	MHEG = 7,
	/**
	 * Annex A DSM-CC
	 */
	DSM_CC = 8,
	/**
	 * Rec. ITU-T H.222.1
	 */
	H_222_1 = 9,
	/**
	 * ISO/IEC 13818-6 type A
	 */
	DSMCC_A = 10,
	/**
	 * ISO/IEC 13818-6 type B
	 */
	DSMCC_B = 11,
	/**
	 * ISO/IEC 13818-6 type C
	 */
	DSMCC_C = 12,
	/**
	 * ISO/IEC 13818-6 type D
	 */
	DSMCC_D = 13,
	/**
	 * auxiliary streams
	 */
	AUXILIARY = 14,
	/**
	 * ISO/IEC 13818-7 Audio (AAC) with ADTS
	 * transport syntax
	 */
	AUDIO_AAC_ADTS = 15,
	/**
	 * ISO/IEC 14496-2 Visual (MPEG-4 Video)
	 */
	VIDEO_MPEG4 = 16,
	/**
	 * ISO/IEC 14496-3 Audio (AAC) with the LATM
	 * transport syntax as defined in ISO/IEC 14496-3
	 */
	AUDIO_AAC_LATM = 17,
	/**
	 * ISO/IEC 14496-1
	 * SL-packetized stream or FlexMux stream carried in PES packets
	 */
	SL_FLEXMUX_PES_PACKETS = 18,
	/**
	 * ISO/IEC 14496-1 SL-packetized
	 * stream or FlexMux stream carried in ISO/IEC 14496_sections
	 */
	SL_FLEXMUX_SECTIONS = 19,
	/**
	 * ISO/IEC 13818-6 Synchronized
	 * Download Protocol
	 */
	SYNCHRONIZED_DOWNLOAD = 20,
	/**
	 * Metadata carried in PES packets
	 */
	METADATA_PES_PACKETS = 21,
	/**
	 * Metadata carried in metadata_sections
	 */
	METADATA_SECTIONS = 22,
	/**
	 * Metadata carried in ISO/IEC
	 * 13818-6 Data Carousel
	 */
	METADATA_DATA_CAROUSEL = 23,
	/**
	 * Metadata carried in
	 * ISO/IEC 13818-6 Object Carousel
	 */
	METADATA_OBJECT_CAROUSEL = 24,
	/**
	 * Metadata carried in
	 * ISO/IEC 13818-6 Synchronized Download Protocol
	 */
	METADATA_SYNCHRONIZED_DOWNLOAD = 25,
	/**
	 * IPMP stream (defined in ISO/IEC 13818-11,
	 * MPEG-2 IPMP)
	 */
	MPEG2_IPMP = 26,
	/**
	 * AVC video stream conforming to one or
	 * more profiles defined in Annex A of Rec. ITU-T H.264 | ISO/IEC 14496-10 or
	 * AVC video sub-bitstream of SVC as defined in 2.1.78 or MVC base view
	 * sub-bitstream, as defined in 2.1.85, or AVC video sub-bitstream of MVC, as
	 * defined in 2.1.88
	 */
	VIDEO_H264 = 27,
	/**
	 * ISO/IEC 14496-3 (AAC) Audio, without
	 * using any additional transport syntax, such as DST, ALS and SLS
	 */
	AUDIO_AAC_CLEAN = 28,
	/**
	 * ISO/IEC 14496-17 Text
	 */
	MPEG4_TIMED_TEXT = 29,
	/**
	 * Auxiliary video stream as defined in
	 * ISO/IEC 23002-3
	 */
	VIDEO_RVC = 30,
	/**
	 * SVC video sub-bitstream
	 * of an AVC video stream conforming to one or more profiles defined in Annex G
	 * of Rec. ITU-T H.264 | ISO/IEC 14496-10
	 */
	VIDEO_H264_SVC_SUB_BITSTREAM = 31,
	/**
	 * MVC video sub-bitstream
	 * of an AVC video stream conforming to one or more profiles defined in Annex H
	 * of Rec. ITU-T H.264 | ISO/IEC 14496-10
	 */
	VIDEO_H264_MVC_SUB_BITSTREAM = 32,
	/**
	 * Video stream conforming to one or more
	 * profiles as defined in Rec. ITU-T T.800 | ISO/IEC 15444-1 (i.e. JPEG 2000)
	 */
	VIDEO_JP2K = 33,
	/**
	 * Additional view
	 * Rec. ITU-T H.262 | ISO/IEC 13818-2 video stream for service-compatible
	 * stereoscopic 3D services
	 */
	VIDEO_MPEG2_STEREO_ADDITIONAL_VIEW = 34,
	/**
	 * Additional view
	 * Rec. ITU-T H.264 | ISO/IEC 14496-10 video stream conforming to one or more
	 * profiles defined in Annex A for service-compatible stereoscopic 3D services
	 */
	VIDEO_H264_STEREO_ADDITIONAL_VIEW = 35,
	/**
	 * Rec. ITU-T H.265 | ISO/IEC 23008-2 video
	 * stream or an HEVC temporal video sub-bitstream
	 */
	VIDEO_HEVC = 36,
	/**
	 * IPMP stream
	 */
	IPMP_STREAM = 127,
	/**
	 * User Private stream id (used for VC-1) as defined by SMPTE RP227.
	 */
	USER_PRIVATE_EA = 234,
}
alias GstMpegtsStreamType StreamType;

public enum GstMpegtsTerrestrialGuardInterval
{
	_1_32 = 0,
	_1_16 = 1,
	_1_8 = 2,
	_1_4 = 3,
	AUTO = 4,
	_1_128 = 5,
	_19_128 = 6,
	_19_256 = 7,
	PN420 = 8,
	PN595 = 9,
	PN945 = 10,
}
alias GstMpegtsTerrestrialGuardInterval TerrestrialGuardInterval;

public enum GstMpegtsTerrestrialHierarchy
{
	NONE = 0,
	_1 = 1,
	_2 = 2,
	_4 = 3,
	AUTO = 4,
}
alias GstMpegtsTerrestrialHierarchy TerrestrialHierarchy;

public enum GstMpegtsTerrestrialTransmissionMode
{
	_2K = 0,
	_8K = 1,
	AUTO = 2,
	_4K = 3,
	_1K = 4,
	_16K = 5,
	_32K = 6,
	C1 = 7,
	C3780 = 8,
}
alias GstMpegtsTerrestrialTransmissionMode TerrestrialTransmissionMode;

/**
 * Event Information Table (ATSC)
 */
struct GstMpegtsAtscEIT
{
	/**
	 * The source id
	 */
	ushort sourceId;
	/**
	 * The protocol version
	 */
	ubyte protocolVersion;
	/**
	 * Events
	 */
	GPtrArray* events;
}

/**
 * An ATSC EIT Event
 */
struct GstMpegtsAtscEITEvent
{
	/**
	 * The event id
	 */
	ushort eventId;
	/**
	 * The start time
	 */
	uint startTime;
	/**
	 * The etm location
	 */
	ubyte etmLocation;
	/**
	 * The length in seconds
	 */
	uint lengthInSeconds;
	/**
	 * the titles
	 */
	GPtrArray* titles;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Extended Text Table (ATSC)
 */
struct GstMpegtsAtscETT
{
	ushort ettTableIdExtension;
	/**
	 * The protocol version
	 */
	ushort protocolVersion;
	/**
	 * The etm id
	 */
	uint etmId;
	/**
	 * List of texts
	 */
	GPtrArray* messages;
}

struct GstMpegtsAtscMGT
{
	/**
	 * The protocol version
	 */
	ubyte protocolVersion;
	/**
	 * The numbers of subtables
	 */
	ushort tablesDefined;
	/**
	 * the tables
	 */
	GPtrArray* tables;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Source from a @GstMpegtsAtscMGT
 */
struct GstMpegtsAtscMGTTable
{
	/**
	 * #GstMpegtsAtscMGTTableType
	 */
	ushort tableType;
	/**
	 * The packet ID
	 */
	ushort pid;
	/**
	 * The version number
	 */
	ubyte versionNumber;
	uint numberBytes;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
}

struct GstMpegtsAtscMultString
{
	/**
	 * The ISO639 language code
	 */
	char[4] iso639Langcode;
	GPtrArray* segments;
}

struct GstMpegtsAtscRRT
{
	/**
	 * The protocol version
	 */
	ubyte protocolVersion;
	/**
	 * the names
	 */
	GPtrArray* names;
	/**
	 * the number of dimensions defined for this rating table
	 */
	ubyte dimensionsDefined;
	/**
	 * A set of dimensions
	 */
	GPtrArray* dimensions;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
}

struct GstMpegtsAtscRRTDimension
{
	/**
	 * the names
	 */
	GPtrArray* names;
	/**
	 * whether the ratings represent a graduated scale
	 */
	bool graduatedScale;
	/**
	 * the number of values defined for this dimension
	 */
	ubyte valuesDefined;
	/**
	 * set of values
	 */
	GPtrArray* values;
}

struct GstMpegtsAtscRRTDimensionValue
{
	/**
	 * the abbreviated ratings
	 */
	GPtrArray* abbrevRatings;
	/**
	 * the ratings
	 */
	GPtrArray* ratings;
}

struct GstMpegtsAtscSTT
{
	/**
	 * The protocol version
	 */
	ubyte protocolVersion;
	/**
	 * The system time
	 */
	uint systemTime;
	/**
	 * The GPS to UTC offset
	 */
	ubyte gpsUtcOffset;
	bool dsStatus;
	/**
	 * The day of month
	 */
	ubyte dsDayofmonth;
	/**
	 * The hour
	 */
	ubyte dsHour;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
	/**
	 * The UTC date and time
	 */
	GstDateTime* utcDatetime;
}

struct GstMpegtsAtscStringSegment
{
	/**
	 * The compression type
	 */
	ubyte compressionType;
	/**
	 * The mode
	 */
	ubyte mode;
	/**
	 * The size of compressed data
	 */
	ubyte compressedDataSize;
	/**
	 * The compressed data
	 */
	ubyte* compressedData;
	char* cachedString;
}

/**
 * Represents both:
 * Terrestrial Virtual Channel Table (A65)
 * Cable Virtual Channel Table (A65)
 */
struct GstMpegtsAtscVCT
{
	/**
	 * The transport stream
	 */
	ushort transportStreamId;
	/**
	 * The protocol version
	 */
	ubyte protocolVersion;
	/**
	 * sources
	 */
	GPtrArray* sources;
	/**
	 * descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Source from a %GstMpegtsAtscVCT, can be used both for TVCT and CVCT tables
 */
struct GstMpegtsAtscVCTSource
{
	/**
	 * The short name of a source
	 */
	char* shortName;
	/**
	 * The major channel number
	 */
	ushort majorChannelNumber;
	/**
	 * The minor channel number
	 */
	ushort minorChannelNumber;
	/**
	 * The modulation mode
	 */
	ubyte modulationMode;
	/**
	 * The carrier frequency
	 */
	uint carrierFrequency;
	/**
	 * The transport stream ID
	 */
	ushort channelTSID;
	/**
	 * The program number (see #GstMpegtsPatProgram)
	 */
	ushort programNumber;
	/**
	 * The ETM location
	 */
	ubyte ETMLocation;
	/**
	 * is access controlled
	 */
	bool accessControlled;
	/**
	 * is hidden
	 */
	bool hidden;
	/**
	 * is path select, CVCT only
	 */
	bool pathSelect;
	/**
	 * is out of band, CVCT only
	 */
	bool outOfBand;
	/**
	 * is hide guide
	 */
	bool hideGuide;
	/**
	 * The service type
	 */
	ubyte serviceType;
	/**
	 * The source id
	 */
	ushort sourceId;
	/**
	 * an array of #GstMpegtsDescriptor
	 */
	GPtrArray* descriptors;
}

/**
 * Table 110: Audio Preselection Descriptor (ETSI EN 300 468 v1.16.1)
 *
 * Since: 1.20
 */
struct GstMpegtsAudioPreselectionDescriptor
{
	/**
	 * 5-bit
	 */
	ubyte preselectionId;
	/**
	 * 3-bit field
	 */
	ubyte audioRenderingIndication;
	/**
	 * visually impaired
	 */
	bool audioDescription;
	bool spokenSubtitles;
	bool dialogueEnhancement;
	bool interactivityEnabled;
	bool languageCodePresent;
	bool textLabelPresent;
	/**
	 * indicates if this PID conveys a complete audio programme
	 */
	bool multiStreamInfoPresent;
	bool futureExtension;
	/**
	 * NULL terminated ISO 639 language code.
	 */
	char* languageCode;
	ubyte messageId;
}

/**
 * DVB Bouquet Association Table (EN 300 468)
 */
struct GstMpegtsBAT
{
	GPtrArray* descriptors;
	GPtrArray* streams;
}

struct GstMpegtsBATStream
{
	ushort transportStreamId;
	ushort originalNetworkId;
	GPtrArray* descriptors;
}

struct GstMpegtsCableDeliverySystemDescriptor
{
	/**
	 * the frequency in Hz (Hertz)
	 */
	uint frequency;
	/**
	 * the outer FEC scheme used
	 */
	GstMpegtsCableOuterFECScheme outerFec;
	/**
	 * Modulation scheme used
	 */
	GstMpegtsModulationType modulation;
	/**
	 * Symbol rate (in symbols per second)
	 */
	uint symbolRate;
	/**
	 * inner FEC scheme used
	 */
	GstMpegtsDVBCodeRate fecInner;
}

struct GstMpegtsComponentDescriptor
{
	ubyte streamContent;
	ubyte componentType;
	ubyte componentTag;
	char* languageCode;
	char* text;
}

struct GstMpegtsContent
{
	GstMpegtsContentNibbleHi contentNibble1;
	ubyte contentNibble2;
	ubyte userByte;
}

struct GstMpegtsDVBLinkageDescriptor
{
	/**
	 * the transport id
	 */
	ushort transportStreamId;
	/**
	 * the original network id
	 */
	ushort originalNetworkId;
	/**
	 * the service id
	 */
	ushort serviceId;
	/**
	 * the type which @linkage_data has
	 */
	GstMpegtsDVBLinkageType linkageType;
	void* linkageData;
	/**
	 * the length for @private_data_bytes
	 */
	ubyte privateDataLength;
	/**
	 * additional data bytes
	 */
	ubyte* privateDataBytes;
}

struct GstMpegtsDVBLinkageEvent
{
	ushort targetEventId;
	bool targetListed;
	bool eventSimulcast;
}

struct GstMpegtsDVBLinkageExtendedEvent
{
	ushort targetEventId;
	bool targetListed;
	bool eventSimulcast;
	ubyte linkType;
	ubyte targetIdType;
	bool originalNetworkIdFlag;
	bool serviceIdFlag;
	ushort userDefinedId;
	ushort targetTransportStreamId;
	ushort targetOriginalNetworkId;
	ushort targetServiceId;
}

struct GstMpegtsDVBLinkageMobileHandOver
{
	GstMpegtsDVBLinkageHandOverType handOverType;
	bool originType;
	ushort networkId;
	ushort initialServiceId;
}

struct GstMpegtsDVBParentalRatingItem
{
	char* countryCode;
	ubyte rating;
}

struct GstMpegtsDVBServiceListItem
{
	/**
	 * the id of a service
	 */
	ushort serviceId;
	/**
	 * the type of a service
	 */
	GstMpegtsDVBServiceType type;
}

struct GstMpegtsDataBroadcastDescriptor
{
	/**
	 * the data broadcast id
	 */
	ushort dataBroadcastId;
	/**
	 * the component tag
	 */
	ubyte componentTag;
	ubyte length;
	/**
	 * the selector byte field
	 */
	ubyte* selectorBytes;
	/**
	 * language of @text
	 */
	char* languageCode;
	/**
	 * description of data broadcast
	 */
	char* text;
}

struct GstMpegtsDescriptor
{
	/**
	 * the type of descriptor
	 */
	ubyte tag;
	/**
	 * the extended type (if @descriptor_tag is 0x7f)
	 */
	ubyte tagExtension;
	/**
	 * the length of the descriptor content (excluding tag/length field)
	 */
	ubyte length;
	/**
	 * the full descriptor data (including tag, extension, length). The first
	 * two bytes are the @tag and @length.
	 */
	ubyte* data;
	void*[4] GstReserved;
}

/**
 * a multilingual bouquet name entry
 */
struct GstMpegtsDvbMultilingualBouquetNameItem
{
	/**
	 * the ISO 639 language code
	 */
	char* languageCode;
	/**
	 * the bouquet name
	 */
	char* bouquetName;
}

struct GstMpegtsDvbMultilingualComponentItem
{
	/**
	 * the ISO 639 language code
	 */
	char* languageCode;
	/**
	 * the component description
	 */
	char* description;
}

/**
 * a multilingual network name entry
 */
struct GstMpegtsDvbMultilingualNetworkNameItem
{
	/**
	 * the ISO 639 language code
	 */
	char* languageCode;
	/**
	 * the network name
	 */
	char* networkName;
}

/**
 * a multilingual service name entry
 */
struct GstMpegtsDvbMultilingualServiceNameItem
{
	/**
	 * the ISO 639 language code
	 */
	char* languageCode;
	/**
	 * the provider name
	 */
	char* providerName;
	/**
	 * the service name
	 */
	char* serviceName;
}

/**
 * Event Information Table (EN 300 468)
 */
struct GstMpegtsEIT
{
	ushort transportStreamId;
	ushort originalNetworkId;
	ubyte segmentLastSectionNumber;
	ubyte lastTableId;
	bool actualStream;
	bool presentFollowing;
	/**
	 * List of events
	 */
	GPtrArray* events;
}

/**
 * Event from a @GstMpegtsEIT
 */
struct GstMpegtsEITEvent
{
	ushort eventId;
	GstDateTime* startTime;
	uint duration;
	GstMpegtsRunningStatus runningStatus;
	bool freeCAMode;
	/**
	 * List of descriptors
	 */
	GPtrArray* descriptors;
}

struct GstMpegtsExtendedEventDescriptor
{
	ubyte descriptorNumber;
	ubyte lastDescriptorNumber;
	/**
	 * NULL terminated language code.
	 */
	char* languageCode;
	/**
	 * the #GstMpegtsExtendedEventItem
	 */
	GPtrArray* items;
	char* text;
}

struct GstMpegtsExtendedEventItem
{
	char* itemDescription;
	char* item;
}

struct GstMpegtsISO639LanguageDescriptor
{
	uint nbLanguage;
	char*[64] language;
	GstMpegtsIso639AudioType[64] audioType;
}

struct GstMpegtsLogicalChannel
{
	ushort serviceId;
	bool visibleService;
	ushort logicalChannelNumber;
}

struct GstMpegtsLogicalChannelDescriptor
{
	uint nbChannels;
	GstMpegtsLogicalChannel[64] channels;
}

struct GstMpegtsNIT
{
	/**
	 * Whether this NIT corresponds to the actual stream
	 */
	bool actualNetwork;
	/**
	 * ID of the network that this NIT describes
	 */
	ushort networkId;
	/**
	 * the global descriptors
	 */
	GPtrArray* descriptors;
	/**
	 * the streams
	 */
	GPtrArray* streams;
}

struct GstMpegtsNITStream
{
	ushort transportStreamId;
	ushort originalNetworkId;
	GPtrArray* descriptors;
}

struct GstMpegtsPMT
{
	/**
	 * PID of the stream containing the PCR for this program.
	 */
	ushort pcrPid;
	/**
	 * The program to which this PMT is applicable.
	 */
	ushort programNumber;
	/**
	 * Array of #GstMpegtsDescriptor
	 */
	GPtrArray* descriptors;
	/**
	 * Array of #GstMpegtsPMTStream
	 */
	GPtrArray* streams;
}

struct GstMpegtsPMTStream
{
	/**
	 * the type of stream. See #GstMpegtsStreamType
	 */
	ubyte streamType;
	/**
	 * the PID of the stream
	 */
	ushort pid;
	/**
	 * the descriptors of the
	 * stream
	 */
	GPtrArray* descriptors;
}

struct GstMpegtsPatProgram
{
	/**
	 * the program number
	 */
	ushort programNumber;
	/**
	 * the network of program map PID
	 */
	ushort networkOrProgramMapPID;
}

struct GstMpegtsSCTESIT
{
	bool encryptedPacket;
	ubyte encryptionAlgorithm;
	ulong ptsAdjustment;
	ubyte cwIndex;
	ushort tier;
	ushort spliceCommandLength;
	GstMpegtsSCTESpliceCommandType spliceCommandType;
	bool spliceTimeSpecified;
	ulong spliceTime;
	GPtrArray* splices;
	GPtrArray* descriptors;
	/**
	 * When encrypted, or when encountering an unknown command type,
	 * we may still want to pass the sit through.
	 */
	bool fullyParsed;
	/**
	 * When the SIT was constructed by the application, splice times
	 * are in running_time and must be translated before packetizing.
	 */
	bool isRunningTime;
}

struct GstMpegtsSCTESpliceComponent
{
	/**
	 * the elementary PID stream containing the Splice Point
	 */
	ubyte tag;
	/**
	 * Whether @splice_time was specified
	 */
	bool spliceTimeSpecified;
	/**
	 * the presentation time of the signaled splice event
	 */
	ulong spliceTime;
	/**
	 * The UTC time of the signaled splice event
	 */
	uint utcSpliceTime;
}

struct GstMpegtsSCTESpliceEvent
{
	bool insertEvent;
	uint spliceEventId;
	bool spliceEventCancelIndicator;
	bool outOfNetworkIndicator;
	bool programSpliceFlag;
	bool durationFlag;
	bool spliceImmediateFlag;
	bool programSpliceTimeSpecified;
	ulong programSpliceTime;
	/**
	 * The UTC time of the signaled splice event
	 */
	uint utcSpliceTime;
	/**
	 * Per-PID splice time information
	 */
	GPtrArray* components;
	bool breakDurationAutoReturn;
	ulong breakDuration;
	ushort uniqueProgramId;
	ubyte availNum;
	ubyte availsExpected;
}

struct GstMpegtsSDT
{
	/**
	 * Network ID of the originating delivery system
	 */
	ushort originalNetworkId;
	/**
	 * True if the table describes this transport stream
	 */
	bool actualTs;
	/**
	 * ID of this transport stream
	 */
	ushort transportStreamId;
	/**
	 * List of services
	 */
	GPtrArray* services;
}

struct GstMpegtsSDTService
{
	/**
	 * The program number this table belongs to
	 */
	ushort serviceId;
	/**
	 * EIT schedule information is present in this transport stream
	 */
	bool EITScheduleFlag;
	/**
	 * EIT present/following information is present in this transport stream
	 */
	bool EITPresentFollowingFlag;
	/**
	 * Status of this service
	 */
	GstMpegtsRunningStatus runningStatus;
	/**
	 * True if one or more streams is controlled by a CA system
	 */
	bool freeCAMode;
	/**
	 * List of descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Selection Information Table (EN 300 468)
 *
 * Since: 1.20
 */
struct GstMpegtsSIT
{
	/**
	 * List of descriptors
	 */
	GPtrArray* descriptors;
	/**
	 * List of services
	 */
	GPtrArray* services;
}

/**
 * SIT Service entry
 *
 * Since: 1.20
 */
struct GstMpegtsSITService
{
	/**
	 * The Program number this table belongs to
	 */
	ushort serviceId;
	/**
	 * Status of this service
	 */
	GstMpegtsRunningStatus runningStatus;
	/**
	 * List of descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Satellite Delivery System Descriptor (EN 300 468 v.1.13.1)
 */
struct GstMpegtsSatelliteDeliverySystemDescriptor
{
	/**
	 * the frequency in kHz (kiloHertz)
	 */
	uint frequency;
	/**
	 * the orbital position in degrees
	 */
	float orbitalPosition;
	/**
	 * If %TRUE, the satellite is in the eastern part of the orbit,
	 * else in the western part.
	 */
	bool westEast;
	/**
	 * The polarization of the transmitted signal
	 */
	GstMpegtsSatellitePolarizationType polarization;
	/**
	 * Roll-off factor used in DVB-S2
	 */
	GstMpegtsSatelliteRolloff rollOff;
	/**
	 * modulation system, %TRUE if DVB-S2, else DVB-S
	 */
	bool modulationSystem;
	/**
	 * Modulation scheme used
	 */
	GstMpegtsModulationType modulationType;
	/**
	 * Symbol rate (in symbols per second)
	 */
	uint symbolRate;
	/**
	 * inner FEC scheme used
	 */
	GstMpegtsDVBCodeRate fecInner;
}

struct GstMpegtsSection
{
	GstMiniObject parent;
	/**
	 * The type of section.
	 */
	GstMpegtsSectionType sectionType;
	/**
	 * The PID on which this section was found or belongs to.
	 */
	ushort pid;
	/**
	 * The table id of this section. See %GstMpegtsSectionTableID and
	 * derivates for more information.
	 */
	ubyte tableId;
	/**
	 * This meaning differs per section. See the documentation
	 * of the parsed section type for the meaning of this field
	 */
	ushort subtableExtension;
	/**
	 * Version of the section.
	 */
	ubyte versionNumber;
	/**
	 * Applies to current/next stream or not
	 */
	bool currentNextIndicator;
	/**
	 * Number of the section (if multiple)
	 */
	ubyte sectionNumber;
	/**
	 * Number of the last expected section (if multiple)
	 */
	ubyte lastSectionNumber;
	/**
	 * Checksum (if applicable)
	 */
	uint crc;
	ubyte* data;
	uint sectionLength;
	void** cachedParsed;
	GDestroyNotify destroyParsed;
	ulong offset;
	bool shortSection;
	GstMpegtsPacketizeFunc packetizer;
	void*[4] GstReserved;
}

struct GstMpegtsT2DeliverySystemCell
{
	/**
	 * id of the cell
	 */
	ushort cellId;
	/**
	 * centre frequencies in Hz
	 */
	GArray* centreFrequencies;
	GPtrArray* subCells;
}

struct GstMpegtsT2DeliverySystemCellExtension
{
	/**
	 * id of the sub cell
	 */
	ubyte cellIdExtension;
	/**
	 * centre frequency of the sub cell in Hz
	 */
	uint transposerFrequency;
}

struct GstMpegtsT2DeliverySystemDescriptor
{
	ubyte plpId;
	ushort t2SystemId;
	ubyte sisoMiso;
	uint bandwidth;
	GstMpegtsTerrestrialGuardInterval guardInterval;
	GstMpegtsTerrestrialTransmissionMode transmissionMode;
	bool otherFrequency;
	bool tfs;
	GPtrArray* cells;
}

/**
 * Time Offset Table (EN 300 468)
 */
struct GstMpegtsTOT
{
	GstDateTime* utcTime;
	/**
	 * List of descriptors
	 */
	GPtrArray* descriptors;
}

/**
 * Terrestrial Delivery System Descriptor (EN 300 468 v.1.13.1)
 */
struct GstMpegtsTerrestrialDeliverySystemDescriptor
{
	/**
	 * the frequency in Hz (Hertz)
	 */
	uint frequency;
	/**
	 * the bandwidth in Hz (Hertz)
	 */
	uint bandwidth;
	/**
	 * %TRUE High Priority %FALSE Low Priority
	 */
	bool priority;
	/**
	 * %TRUE no time slicing %FALSE time slicing
	 */
	bool timeSlicing;
	/**
	 * %TRUE no mpe-fec is used %FALSE mpe-fec is use
	 */
	bool mpeFec;
	/**
	 * the constellation
	 */
	GstMpegtsModulationType constellation;
	/**
	 * the hierarchy
	 */
	GstMpegtsTerrestrialHierarchy hierarchy;
	GstMpegtsDVBCodeRate codeRateHp;
	GstMpegtsDVBCodeRate codeRateLp;
	GstMpegtsTerrestrialGuardInterval guardInterval;
	GstMpegtsTerrestrialTransmissionMode transmissionMode;
	/**
	 * %TRUE more frequency are use, else not
	 */
	bool otherFrequency;
}

/** */
public alias extern(C) int function(GstMpegtsSection* section) GstMpegtsPacketizeFunc;
