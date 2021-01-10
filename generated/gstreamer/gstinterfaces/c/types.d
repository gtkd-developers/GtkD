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


module gstinterfaces.c.types;

public import gobject.c.types;


/**
 * Enumeration of the different standards that may apply to AFD data:
 *
 * 0) ETSI/DVB:
 * https://www.etsi.org/deliver/etsi_ts/101100_101199/101154/02.01.01_60/ts_101154v020101p.pdf
 *
 * 1) ATSC A/53:
 * https://www.atsc.org/wp-content/uploads/2015/03/a_53-Part-4-2009.pdf
 *
 * 2) SMPTE ST2016-1:
 *
 * Since: 1.18
 */
public enum GstVideoAFDSpec
{
	/**
	 * AFD value is from DVB/ETSI standard
	 */
	DVB_ETSI = 0,
	/**
	 * AFD value is from ATSC A/53 standard
	 */
	ATSC_A53 = 1,
	SMPTE_ST2016_1 = 2,
}
alias GstVideoAFDSpec VideoAFDSpec;

/**
 * Enumeration of the various values for Active Format Description (AFD)
 *
 * AFD should be included in video user data whenever the rectangular
 * picture area containing useful information does not extend to the full height or width of the coded
 * frame. AFD data may also be included in user data when the rectangular picture area containing
 * useful information extends to the full height and width of the coded frame.
 *
 * For details, see Table 6.14 Active Format in:
 *
 * ATSC Digital Television Standard:
 * Part 4 – MPEG-2 Video System Characteristics
 *
 * https://www.atsc.org/wp-content/uploads/2015/03/a_53-Part-4-2009.pdf
 *
 * and Active Format Description in Complete list of AFD codes
 *
 * https://en.wikipedia.org/wiki/Active_Format_Description#Complete_list_of_AFD_codes
 *
 * and SMPTE ST2016-1
 *
 * Notes:
 *
 * 1) AFD 0 is undefined for ATSC and SMPTE ST2016-1, indicating that AFD data is not available:
 * If Bar Data is not present, AFD '0000' indicates that exact information
 * is not available and the active image should be assumed to be the same as the coded frame. AFD '0000'.
 * AFD '0000' accompanied by Bar Data signals that the active image’s aspect ratio is narrower than 16:9,
 * but is not 4:3 or 14:9. As the exact aspect ratio cannot be conveyed by AFD alone, wherever possible,
 * AFD ‘0000’ should be accompanied by Bar Data to define the exact vertical or horizontal extent
 * of the active image.
 * 2) AFD 0 is reserved for DVB/ETSI
 * 3) values 1, 5, 6, 7, and 12 are reserved for both ATSC and DVB/ETSI
 * 4) values 2 and 3 are not recommended for ATSC, but are valid for DVB/ETSI
 *
 * Since: 1.18
 */
public enum GstVideoAFDValue
{
	/**
	 * Unavailable (see note 0 below).
	 */
	UNAVAILABLE = 0,
	/**
	 * For 4:3 coded frame, letterbox 16:9 image,
	 * at top of the coded frame. For 16:9 coded frame, full frame 16:9 image,
	 * the same as the coded frame.
	 */
	_16_9_TOP_ALIGNED = 2,
	/**
	 * For 4:3 coded frame, letterbox 14:9 image,
	 * at top of the coded frame. For 16:9 coded frame, pillarbox 14:9 image,
	 * horizontally centered in the coded frame.
	 */
	_14_9_TOP_ALIGNED = 3,
	/**
	 * For 4:3 coded frame, letterbox image with an aspect ratio
	 * greater than 16:9, vertically centered in the coded frame. For 16:9 coded frame,
	 * letterbox image with an aspect ratio greater than 16:9.
	 */
	GREATER_THAN_16_9 = 4,
	/**
	 * For 4:3 coded frame, full frame 4:3 image,
	 * the same as the coded frame. For 16:9 coded frame, full frame 16:9 image, the same as
	 * the coded frame.
	 */
	_4_3_FULL_16_9_FULL = 8,
	/**
	 * For 4:3 coded frame, full frame 4:3 image, the same as
	 * the coded frame. For 16:9 coded frame, pillarbox 4:3 image, horizontally centered in the
	 * coded frame.
	 */
	_4_3_FULL_4_3_PILLAR = 9,
	/**
	 * For 4:3 coded frame, letterbox 16:9 image, vertically centered in
	 * the coded frame with all image areas protected. For 16:9 coded frame, full frame 16:9 image,
	 * with all image areas protected.
	 */
	_16_9_LETTER_16_9_FULL = 10,
	/**
	 * For 4:3 coded frame, letterbox 14:9 image, vertically centered in
	 * the coded frame. For 16:9 coded frame, pillarbox 14:9 image, horizontally centered in the
	 * coded frame.
	 */
	_14_9_LETTER_14_9_PILLAR = 11,
	/**
	 * For 4:3 coded frame, full frame 4:3 image, with alternative 14:9
	 * center. For 16:9 coded frame, pillarbox 4:3 image, with alternative 14:9 center.
	 */
	_4_3_FULL_14_9_CENTER = 13,
	/**
	 * For 4:3 coded frame, letterbox 16:9 image, with alternative 14:9
	 * center. For 16:9 coded frame, full frame 16:9 image, with alternative 14:9 center.
	 */
	_16_9_LETTER_14_9_CENTER = 14,
	/**
	 * For 4:3 coded frame, letterbox 16:9 image, with alternative 4:3
	 * center. For 16:9 coded frame, full frame 16:9 image, with alternative 4:3 center.
	 */
	_16_9_LETTER_4_3_CENTER = 15,
}
alias GstVideoAFDValue VideoAFDValue;

/**
 * The different video orientation methods.
 *
 * Since: 1.10
 */
public enum GstVideoOrientationMethod
{
	/**
	 * Identity (no rotation)
	 */
	IDENTITY = 0,
	/**
	 * Rotate clockwise 90 degrees
	 */
	_90R = 1,
	/**
	 * Rotate 180 degrees
	 */
	_180 = 2,
	/**
	 * Rotate counter-clockwise 90 degrees
	 */
	_90L = 3,
	/**
	 * Flip horizontally
	 */
	HORIZ = 4,
	/**
	 * Flip vertically
	 */
	VERT = 5,
	/**
	 * Flip across upper left/lower right diagonal
	 */
	UL_LR = 6,
	/**
	 * Flip across upper right/lower left diagonal
	 */
	UR_LL = 7,
	/**
	 * Select flip method based on image-orientation tag
	 */
	AUTO = 8,
	/**
	 * Current status depends on plugin internal setup
	 */
	CUSTOM = 9,
}
alias GstVideoOrientationMethod VideoOrientationMethod;

/**
 * Flags related to the time code information.
 * For drop frame, only 30000/1001 and 60000/1001 frame rates are supported.
 *
 * Since: 1.10
 */
public enum GstVideoTimeCodeFlags
{
	/**
	 * No flags
	 */
	NONE = 0,
	/**
	 * Whether we have drop frame rate
	 */
	DROP_FRAME = 1,
	/**
	 * Whether we have interlaced video
	 */
	INTERLACED = 2,
}
alias GstVideoTimeCodeFlags VideoTimeCodeFlags;

/**
 * #GstVideoDirectionInterface interface.
 *
 * Since: 1.10
 */
struct GstVideoDirectionInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface iface;
}

/**
 * Used to represent display_primaries and white_point of
 * #GstVideoMasteringDisplayInfo struct. See #GstVideoMasteringDisplayInfo
 *
 * Since: 1.18
 */
struct GstVideoMasteringDisplayInfoCoordinates
{
	/**
	 * the x coordinate of CIE 1931 color space in unit of 0.00002.
	 */
	ushort x;
	/**
	 * the y coordinate of CIE 1931 color space in unit of 0.00002.
	 */
	ushort y;
}

struct GstVideoOverlay;

/**
 * #GstVideoOverlay interface
 */
struct GstVideoOverlayInterface
{
	/**
	 * parent interface type.
	 */
	GTypeInterface iface;
	/** */
	extern(C) void function(GstVideoOverlay* overlay) expose;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, int handleEvents) handleEvents;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, int x, int y, int width, int height) setRenderRectangle;
	/** */
	extern(C) void function(GstVideoOverlay* overlay, size_t handle) setWindowHandle;
}

/**
 * Supported frame rates: 30000/1001, 60000/1001 (both with and without drop
 * frame), and integer frame rates e.g. 25/1, 30/1, 50/1, 60/1.
 *
 * The configuration of the time code.
 *
 * Since: 1.10
 */
struct GstVideoTimeCodeConfig
{
	/**
	 * Numerator of the frame rate
	 */
	uint fpsN;
	/**
	 * Denominator of the frame rate
	 */
	uint fpsD;
	/**
	 * the corresponding #GstVideoTimeCodeFlags
	 */
	GstVideoTimeCodeFlags flags;
	/**
	 * The latest daily jam information, if present, or NULL
	 */
	GDateTime* latestDailyJam;
}

enum BUFFER_POOL_OPTION_VIDEO_AFFINE_TRANSFORMATION_META = "GstBufferPoolOptionVideoAffineTransformation";
alias GST_BUFFER_POOL_OPTION_VIDEO_AFFINE_TRANSFORMATION_META = BUFFER_POOL_OPTION_VIDEO_AFFINE_TRANSFORMATION_META;

/**
 * A bufferpool option to enable extra padding. When a bufferpool supports this
 * option, gst_buffer_pool_config_set_video_alignment() can be called.
 *
 * When this option is enabled on the bufferpool,
 * #GST_BUFFER_POOL_OPTION_VIDEO_META should also be enabled.
 */
enum BUFFER_POOL_OPTION_VIDEO_ALIGNMENT = "GstBufferPoolOptionVideoAlignment";
alias GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT = BUFFER_POOL_OPTION_VIDEO_ALIGNMENT;

/**
 * An option that can be activated on a bufferpool to request gl texture upload
 * meta on buffers from the pool.
 *
 * When this option is enabled on the bufferpool,
 * @GST_BUFFER_POOL_OPTION_VIDEO_META should also be enabled.
 */
enum BUFFER_POOL_OPTION_VIDEO_GL_TEXTURE_UPLOAD_META = "GstBufferPoolOptionVideoGLTextureUploadMeta";
alias GST_BUFFER_POOL_OPTION_VIDEO_GL_TEXTURE_UPLOAD_META = BUFFER_POOL_OPTION_VIDEO_GL_TEXTURE_UPLOAD_META;

/**
 * An option that can be activated on bufferpool to request video metadata
 * on buffers from the pool.
 */
enum BUFFER_POOL_OPTION_VIDEO_META = "GstBufferPoolOptionVideoMeta";
alias GST_BUFFER_POOL_OPTION_VIDEO_META = BUFFER_POOL_OPTION_VIDEO_META;

/**
 * Name of the caps feature indicating that the stream is interlaced.
 *
 * Currently it is only used for video with 'interlace-mode=alternate'
 * to ensure backwards compatibility for this new mode.
 * In this mode each buffer carries a single field of interlaced video.
 * @GST_VIDEO_BUFFER_FLAG_TOP_FIELD and @GST_VIDEO_BUFFER_FLAG_BOTTOM_FIELD
 * indicate whether the buffer carries a top or bottom field. The order of
 * buffers/fields in the stream and the timestamps on the buffers indicate the
 * temporal order of the fields.
 * Top and bottom fields are expected to alternate in this mode.
 * The frame rate in the caps still signals the frame rate, so the notional field
 * rate will be twice the frame rate from the caps
 * (see @GST_VIDEO_INFO_FIELD_RATE_N).
 */
enum CAPS_FEATURE_FORMAT_INTERLACED = "format:Interlaced";
alias GST_CAPS_FEATURE_FORMAT_INTERLACED = CAPS_FEATURE_FORMAT_INTERLACED;

enum CAPS_FEATURE_META_GST_VIDEO_AFFINE_TRANSFORMATION_META = "meta:GstVideoAffineTransformation";
alias GST_CAPS_FEATURE_META_GST_VIDEO_AFFINE_TRANSFORMATION_META = CAPS_FEATURE_META_GST_VIDEO_AFFINE_TRANSFORMATION_META;

enum CAPS_FEATURE_META_GST_VIDEO_GL_TEXTURE_UPLOAD_META = "meta:GstVideoGLTextureUploadMeta";
alias GST_CAPS_FEATURE_META_GST_VIDEO_GL_TEXTURE_UPLOAD_META = CAPS_FEATURE_META_GST_VIDEO_GL_TEXTURE_UPLOAD_META;

enum CAPS_FEATURE_META_GST_VIDEO_META = "meta:GstVideoMeta";
alias GST_CAPS_FEATURE_META_GST_VIDEO_META = CAPS_FEATURE_META_GST_VIDEO_META;

enum CAPS_FEATURE_META_GST_VIDEO_OVERLAY_COMPOSITION = "meta:GstVideoOverlayComposition";
alias GST_CAPS_FEATURE_META_GST_VIDEO_OVERLAY_COMPOSITION = CAPS_FEATURE_META_GST_VIDEO_OVERLAY_COMPOSITION;

/**
 * This metadata stays relevant as long as video colorspace is unchanged.
 */
enum META_TAG_VIDEO_COLORSPACE_STR = "colorspace";
alias GST_META_TAG_VIDEO_COLORSPACE_STR = META_TAG_VIDEO_COLORSPACE_STR;

/**
 * This metadata stays relevant as long as video orientation is unchanged.
 */
enum META_TAG_VIDEO_ORIENTATION_STR = "orientation";
alias GST_META_TAG_VIDEO_ORIENTATION_STR = META_TAG_VIDEO_ORIENTATION_STR;

/**
 * This metadata stays relevant as long as video size is unchanged.
 */
enum META_TAG_VIDEO_SIZE_STR = "size";
alias GST_META_TAG_VIDEO_SIZE_STR = META_TAG_VIDEO_SIZE_STR;

/**
 * This metadata is relevant for video streams.
 */
enum META_TAG_VIDEO_STR = "video";
alias GST_META_TAG_VIDEO_STR = META_TAG_VIDEO_STR;

enum VIDEO_COLORIMETRY_BT2020 = "bt2020";
alias GST_VIDEO_COLORIMETRY_BT2020 = VIDEO_COLORIMETRY_BT2020;

enum VIDEO_COLORIMETRY_BT2020_10 = "bt2020-10";
alias GST_VIDEO_COLORIMETRY_BT2020_10 = VIDEO_COLORIMETRY_BT2020_10;

enum VIDEO_COLORIMETRY_BT2100_HLG = "bt2100-hlg";
alias GST_VIDEO_COLORIMETRY_BT2100_HLG = VIDEO_COLORIMETRY_BT2100_HLG;

enum VIDEO_COLORIMETRY_BT2100_PQ = "bt2100-pq";
alias GST_VIDEO_COLORIMETRY_BT2100_PQ = VIDEO_COLORIMETRY_BT2100_PQ;

enum VIDEO_COLORIMETRY_BT601 = "bt601";
alias GST_VIDEO_COLORIMETRY_BT601 = VIDEO_COLORIMETRY_BT601;

enum VIDEO_COLORIMETRY_BT709 = "bt709";
alias GST_VIDEO_COLORIMETRY_BT709 = VIDEO_COLORIMETRY_BT709;

enum VIDEO_COLORIMETRY_SMPTE240M = "smpte240m";
alias GST_VIDEO_COLORIMETRY_SMPTE240M = VIDEO_COLORIMETRY_SMPTE240M;

enum VIDEO_COLORIMETRY_SRGB = "sRGB";
alias GST_VIDEO_COLORIMETRY_SRGB = VIDEO_COLORIMETRY_SRGB;

enum VIDEO_COMP_A = 3;
alias GST_VIDEO_COMP_A = VIDEO_COMP_A;

enum VIDEO_COMP_B = 2;
alias GST_VIDEO_COMP_B = VIDEO_COMP_B;

enum VIDEO_COMP_G = 1;
alias GST_VIDEO_COMP_G = VIDEO_COMP_G;

enum VIDEO_COMP_INDEX = 0;
alias GST_VIDEO_COMP_INDEX = VIDEO_COMP_INDEX;

enum VIDEO_COMP_PALETTE = 1;
alias GST_VIDEO_COMP_PALETTE = VIDEO_COMP_PALETTE;

enum VIDEO_COMP_R = 0;
alias GST_VIDEO_COMP_R = VIDEO_COMP_R;

enum VIDEO_COMP_U = 1;
alias GST_VIDEO_COMP_U = VIDEO_COMP_U;

enum VIDEO_COMP_V = 2;
alias GST_VIDEO_COMP_V = VIDEO_COMP_V;

enum VIDEO_COMP_Y = 0;
alias GST_VIDEO_COMP_Y = VIDEO_COMP_Y;

/**
 * #GstVideoAlphaMode, the alpha mode to use.
 * Default is #GST_VIDEO_ALPHA_MODE_COPY.
 */
enum VIDEO_CONVERTER_OPT_ALPHA_MODE = "GstVideoConverter.alpha-mode";
alias GST_VIDEO_CONVERTER_OPT_ALPHA_MODE = VIDEO_CONVERTER_OPT_ALPHA_MODE;

/**
 * #G_TYPE_DOUBLE, the alpha color value to use.
 * Default to 1.0
 */
enum VIDEO_CONVERTER_OPT_ALPHA_VALUE = "GstVideoConverter.alpha-value";
alias GST_VIDEO_CONVERTER_OPT_ALPHA_VALUE = VIDEO_CONVERTER_OPT_ALPHA_VALUE;

/**
 * #G_TYPE_UINT, the border color to use if #GST_VIDEO_CONVERTER_OPT_FILL_BORDER
 * is set to %TRUE. The color is in ARGB format.
 * Default 0xff000000
 */
enum VIDEO_CONVERTER_OPT_BORDER_ARGB = "GstVideoConverter.border-argb";
alias GST_VIDEO_CONVERTER_OPT_BORDER_ARGB = VIDEO_CONVERTER_OPT_BORDER_ARGB;

/**
 * #GstVideoChromaMode, set the chroma resample mode subsampled
 * formats. Default is #GST_VIDEO_CHROMA_MODE_FULL.
 */
enum VIDEO_CONVERTER_OPT_CHROMA_MODE = "GstVideoConverter.chroma-mode";
alias GST_VIDEO_CONVERTER_OPT_CHROMA_MODE = VIDEO_CONVERTER_OPT_CHROMA_MODE;

/**
 * #GstVideoChromaMethod, The resampler method to use for
 * chroma resampling. Other options for the resampler can be used, see
 * the #GstVideoResampler. Default is #GST_VIDEO_RESAMPLER_METHOD_LINEAR
 */
enum VIDEO_CONVERTER_OPT_CHROMA_RESAMPLER_METHOD = "GstVideoConverter.chroma-resampler-method";
alias GST_VIDEO_CONVERTER_OPT_CHROMA_RESAMPLER_METHOD = VIDEO_CONVERTER_OPT_CHROMA_RESAMPLER_METHOD;

/**
 * #G_TYPE_INT, height in the destination frame, default destination height
 */
enum VIDEO_CONVERTER_OPT_DEST_HEIGHT = "GstVideoConverter.dest-height";
alias GST_VIDEO_CONVERTER_OPT_DEST_HEIGHT = VIDEO_CONVERTER_OPT_DEST_HEIGHT;

/**
 * #G_TYPE_INT, width in the destination frame, default destination width
 */
enum VIDEO_CONVERTER_OPT_DEST_WIDTH = "GstVideoConverter.dest-width";
alias GST_VIDEO_CONVERTER_OPT_DEST_WIDTH = VIDEO_CONVERTER_OPT_DEST_WIDTH;

/**
 * #G_TYPE_INT, x position in the destination frame, default 0
 */
enum VIDEO_CONVERTER_OPT_DEST_X = "GstVideoConverter.dest-x";
alias GST_VIDEO_CONVERTER_OPT_DEST_X = VIDEO_CONVERTER_OPT_DEST_X;

/**
 * #G_TYPE_INT, y position in the destination frame, default 0
 */
enum VIDEO_CONVERTER_OPT_DEST_Y = "GstVideoConverter.dest-y";
alias GST_VIDEO_CONVERTER_OPT_DEST_Y = VIDEO_CONVERTER_OPT_DEST_Y;

/**
 * #GstVideoDitherMethod, The dither method to use when
 * changing bit depth.
 * Default is #GST_VIDEO_DITHER_BAYER.
 */
enum VIDEO_CONVERTER_OPT_DITHER_METHOD = "GstVideoConverter.dither-method";
alias GST_VIDEO_CONVERTER_OPT_DITHER_METHOD = VIDEO_CONVERTER_OPT_DITHER_METHOD;

/**
 * #G_TYPE_UINT, The quantization amount to dither to. Components will be
 * quantized to multiples of this value.
 * Default is 1
 */
enum VIDEO_CONVERTER_OPT_DITHER_QUANTIZATION = "GstVideoConverter.dither-quantization";
alias GST_VIDEO_CONVERTER_OPT_DITHER_QUANTIZATION = VIDEO_CONVERTER_OPT_DITHER_QUANTIZATION;

/**
 * #G_TYPE_BOOLEAN, if the destination rectangle does not fill the complete
 * destination image, render a border with
 * #GST_VIDEO_CONVERTER_OPT_BORDER_ARGB. Otherwise the unusded pixels in the
 * destination are untouched. Default %TRUE.
 */
enum VIDEO_CONVERTER_OPT_FILL_BORDER = "GstVideoConverter.fill-border";
alias GST_VIDEO_CONVERTER_OPT_FILL_BORDER = VIDEO_CONVERTER_OPT_FILL_BORDER;

/**
 * #GstVideoGammaMode, set the gamma mode.
 * Default is #GST_VIDEO_GAMMA_MODE_NONE.
 */
enum VIDEO_CONVERTER_OPT_GAMMA_MODE = "GstVideoConverter.gamma-mode";
alias GST_VIDEO_CONVERTER_OPT_GAMMA_MODE = VIDEO_CONVERTER_OPT_GAMMA_MODE;

/**
 * #GstVideoMatrixMode, set the color matrix conversion mode for
 * converting between Y'PbPr and non-linear RGB (R'G'B').
 * Default is #GST_VIDEO_MATRIX_MODE_FULL.
 */
enum VIDEO_CONVERTER_OPT_MATRIX_MODE = "GstVideoConverter.matrix-mode";
alias GST_VIDEO_CONVERTER_OPT_MATRIX_MODE = VIDEO_CONVERTER_OPT_MATRIX_MODE;

/**
 * #GstVideoPrimariesMode, set the primaries conversion mode.
 * Default is #GST_VIDEO_PRIMARIES_MODE_NONE.
 */
enum VIDEO_CONVERTER_OPT_PRIMARIES_MODE = "GstVideoConverter.primaries-mode";
alias GST_VIDEO_CONVERTER_OPT_PRIMARIES_MODE = VIDEO_CONVERTER_OPT_PRIMARIES_MODE;

/**
 * #GstVideoResamplerMethod, The resampler method to use for
 * resampling. Other options for the resampler can be used, see
 * the #GstVideoResampler. Default is #GST_VIDEO_RESAMPLER_METHOD_CUBIC
 */
enum VIDEO_CONVERTER_OPT_RESAMPLER_METHOD = "GstVideoConverter.resampler-method";
alias GST_VIDEO_CONVERTER_OPT_RESAMPLER_METHOD = VIDEO_CONVERTER_OPT_RESAMPLER_METHOD;

/**
 * #G_TYPE_UINT, The number of taps for the resampler.
 * Default is 0: let the resampler choose a good value.
 */
enum VIDEO_CONVERTER_OPT_RESAMPLER_TAPS = "GstVideoConverter.resampler-taps";
alias GST_VIDEO_CONVERTER_OPT_RESAMPLER_TAPS = VIDEO_CONVERTER_OPT_RESAMPLER_TAPS;

/**
 * #G_TYPE_INT, source height to convert, default source height
 */
enum VIDEO_CONVERTER_OPT_SRC_HEIGHT = "GstVideoConverter.src-height";
alias GST_VIDEO_CONVERTER_OPT_SRC_HEIGHT = VIDEO_CONVERTER_OPT_SRC_HEIGHT;

/**
 * #G_TYPE_INT, source width to convert, default source width
 */
enum VIDEO_CONVERTER_OPT_SRC_WIDTH = "GstVideoConverter.src-width";
alias GST_VIDEO_CONVERTER_OPT_SRC_WIDTH = VIDEO_CONVERTER_OPT_SRC_WIDTH;

/**
 * #G_TYPE_INT, source x position to start conversion, default 0
 */
enum VIDEO_CONVERTER_OPT_SRC_X = "GstVideoConverter.src-x";
alias GST_VIDEO_CONVERTER_OPT_SRC_X = VIDEO_CONVERTER_OPT_SRC_X;

/**
 * #G_TYPE_INT, source y position to start conversion, default 0
 */
enum VIDEO_CONVERTER_OPT_SRC_Y = "GstVideoConverter.src-y";
alias GST_VIDEO_CONVERTER_OPT_SRC_Y = VIDEO_CONVERTER_OPT_SRC_Y;

/**
 * #G_TYPE_UINT, maximum number of threads to use. Default 1, 0 for the number
 * of cores.
 */
enum VIDEO_CONVERTER_OPT_THREADS = "GstVideoConverter.threads";
alias GST_VIDEO_CONVERTER_OPT_THREADS = VIDEO_CONVERTER_OPT_THREADS;

/**
 * Default maximum number of errors tolerated before signaling error.
 */
enum VIDEO_DECODER_MAX_ERRORS = 10;
alias GST_VIDEO_DECODER_MAX_ERRORS = VIDEO_DECODER_MAX_ERRORS;

/**
 * The name of the templates for the sink pad.
 */
enum VIDEO_DECODER_SINK_NAME = "sink";
alias GST_VIDEO_DECODER_SINK_NAME = VIDEO_DECODER_SINK_NAME;

/**
 * The name of the templates for the source pad.
 */
enum VIDEO_DECODER_SRC_NAME = "src";
alias GST_VIDEO_DECODER_SRC_NAME = VIDEO_DECODER_SRC_NAME;

/**
 * The name of the templates for the sink pad.
 */
enum VIDEO_ENCODER_SINK_NAME = "sink";
alias GST_VIDEO_ENCODER_SINK_NAME = VIDEO_ENCODER_SINK_NAME;

/**
 * The name of the templates for the source pad.
 */
enum VIDEO_ENCODER_SRC_NAME = "src";
alias GST_VIDEO_ENCODER_SRC_NAME = VIDEO_ENCODER_SRC_NAME;

/**
 * List of all video formats, for use in template caps strings.
 *
 * Formats are sorted by decreasing "quality", using these criteria by priority:
 * - number of components
 * - depth
 * - subsampling factor of the width
 * - subsampling factor of the height
 * - number of planes
 * - native endianness preferred
 * - pixel stride
 * - poffset
 * - prefer non-complex formats
 * - prefer YUV formats over RGB ones
 * - prefer I420 over YV12
 * - format name
 */
enum VIDEO_FORMATS_ALL = "{ AYUV64, ARGB64, GBRA_12BE, GBRA_12LE, Y412_BE, Y412_LE, A444_10BE, GBRA_10BE, A444_10LE, GBRA_10LE, A422_10BE, A422_10LE, A420_10BE, A420_10LE, Y410, RGB10A2_LE, BGR10A2_LE, GBRA, ABGR, VUYA, BGRA, AYUV, ARGB, RGBA, A420, Y444_16BE, Y444_16LE, v216, P016_BE, P016_LE, Y444_12BE, GBR_12BE, Y444_12LE, GBR_12LE, I422_12BE, I422_12LE, Y212_BE, Y212_LE, I420_12BE, I420_12LE, P012_BE, P012_LE, Y444_10BE, GBR_10BE, Y444_10LE, GBR_10LE, r210, I422_10BE, I422_10LE, NV16_10LE32, Y210, v210, UYVP, I420_10BE, I420_10LE, P010_10BE, P010_10LE, NV12_10LE32, NV12_10LE40, Y444, GBR, NV24, xBGR, BGRx, xRGB, RGBx, BGR, IYU2, v308, RGB, Y42B, NV61, NV16, VYUY, UYVY, YVYU, YUY2, I420, YV12, NV21, NV12, NV12_64Z32, NV12_4L4, NV12_32L32, Y41B, IYU1, YVU9, YUV9, RGB16, BGR16, RGB15, BGR15, RGB8P, GRAY16_BE, GRAY16_LE, GRAY10_LE32, GRAY8 }";
alias GST_VIDEO_FORMATS_ALL = VIDEO_FORMATS_ALL;

enum VIDEO_FPS_RANGE = "(fraction) [ 0, max ]";
alias GST_VIDEO_FPS_RANGE = VIDEO_FPS_RANGE;

enum VIDEO_MAX_COMPONENTS = 4;
alias GST_VIDEO_MAX_COMPONENTS = VIDEO_MAX_COMPONENTS;

enum VIDEO_MAX_PLANES = 4;
alias GST_VIDEO_MAX_PLANES = VIDEO_MAX_PLANES;

/**
 * G_TYPE_DOUBLE, B parameter of the cubic filter. The B
 * parameter controls the bluriness. Values between 0.0 and
 * 2.0 are accepted. 1/3 is the default.
 *
 * Below are some values of popular filters:
 * B       C
 * Hermite           0.0     0.0
 * Spline            1.0     0.0
 * Catmull-Rom       0.0     1/2
 * Mitchell          1/3     1/3
 * Robidoux          0.3782  0.3109
 * Robidoux
 * Sharp            0.2620  0.3690
 * Robidoux
 * Soft             0.6796  0.1602
 */
enum VIDEO_RESAMPLER_OPT_CUBIC_B = "GstVideoResampler.cubic-b";
alias GST_VIDEO_RESAMPLER_OPT_CUBIC_B = VIDEO_RESAMPLER_OPT_CUBIC_B;

/**
 * G_TYPE_DOUBLE, C parameter of the cubic filter. The C
 * parameter controls the Keys alpha value. Values between 0.0 and
 * 2.0 are accepted. 1/3 is the default.
 *
 * See #GST_VIDEO_RESAMPLER_OPT_CUBIC_B for some more common values
 */
enum VIDEO_RESAMPLER_OPT_CUBIC_C = "GstVideoResampler.cubic-c";
alias GST_VIDEO_RESAMPLER_OPT_CUBIC_C = VIDEO_RESAMPLER_OPT_CUBIC_C;

/**
 * G_TYPE_DOUBLE, specifies the size of filter envelope for
 * @GST_VIDEO_RESAMPLER_METHOD_LANCZOS. values are clamped between
 * 1.0 and 5.0. 2.0 is the default.
 */
enum VIDEO_RESAMPLER_OPT_ENVELOPE = "GstVideoResampler.envelope";
alias GST_VIDEO_RESAMPLER_OPT_ENVELOPE = VIDEO_RESAMPLER_OPT_ENVELOPE;

/**
 * G_TYPE_INT, limits the maximum number of taps to use.
 * 16 is the default.
 */
enum VIDEO_RESAMPLER_OPT_MAX_TAPS = "GstVideoResampler.max-taps";
alias GST_VIDEO_RESAMPLER_OPT_MAX_TAPS = VIDEO_RESAMPLER_OPT_MAX_TAPS;

/**
 * G_TYPE_DOUBLE, specifies sharpening of the filter for
 * @GST_VIDEO_RESAMPLER_METHOD_LANCZOS. values are clamped between
 * 0.0 and 1.0. 0.0 is the default.
 */
enum VIDEO_RESAMPLER_OPT_SHARPEN = "GstVideoResampler.sharpen";
alias GST_VIDEO_RESAMPLER_OPT_SHARPEN = VIDEO_RESAMPLER_OPT_SHARPEN;

/**
 * G_TYPE_DOUBLE, specifies sharpness of the filter for
 * @GST_VIDEO_RESAMPLER_METHOD_LANCZOS. values are clamped between
 * 0.5 and 1.5. 1.0 is the default.
 */
enum VIDEO_RESAMPLER_OPT_SHARPNESS = "GstVideoResampler.sharpness";
alias GST_VIDEO_RESAMPLER_OPT_SHARPNESS = VIDEO_RESAMPLER_OPT_SHARPNESS;

/**
 * #GstVideoDitherMethod, The dither method to use for propagating
 * quatization errors.
 */
enum VIDEO_SCALER_OPT_DITHER_METHOD = "GstVideoScaler.dither-method";
alias GST_VIDEO_SCALER_OPT_DITHER_METHOD = VIDEO_SCALER_OPT_DITHER_METHOD;

enum VIDEO_SIZE_RANGE = "(int) [ 1, max ]";
alias GST_VIDEO_SIZE_RANGE = VIDEO_SIZE_RANGE;

enum VIDEO_TILE_TYPE_MASK = 65535;
alias GST_VIDEO_TILE_TYPE_MASK = VIDEO_TILE_TYPE_MASK;

enum VIDEO_TILE_TYPE_SHIFT = 16;
alias GST_VIDEO_TILE_TYPE_SHIFT = VIDEO_TILE_TYPE_SHIFT;

enum VIDEO_TILE_X_TILES_MASK = 65535;
alias GST_VIDEO_TILE_X_TILES_MASK = VIDEO_TILE_X_TILES_MASK;

enum VIDEO_TILE_Y_TILES_SHIFT = 16;
alias GST_VIDEO_TILE_Y_TILES_SHIFT = VIDEO_TILE_Y_TILES_SHIFT;
