/*
** Copyright (c) 2007-2012 The Khronos Group Inc.
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and/or associated documentation files (the
** "Materials"), to deal in the Materials without restriction, including
** without limitation the rights to use, copy, modify, merge, publish,
** distribute, sublicense, and/or sell copies of the Materials, and to
** permit persons to whom the Materials are furnished to do so, subject to
** the following conditions:
**
** The above copyright notice and this permission notice shall be included
** in all copies or substantial portions of the Materials.
**
** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
*/

/* glcorearb.h replaces gl3.h. It is for use with OpenGL core
 * profile implementations.
 *
 * glcorearb.h last updated on $Date: 2012-09-19 19:02:24 -0700 (Wed, 19 Sep 2012) $
 *
 * RELEASE NOTES - 2012/09/19
 *
 * glcorearb.h should be placed in the same directory as gl.h and
 * included as
 * '<GL/glcorearb.h>'.
 *
 * glcorearb.h includes only APIs in the latest OpenGL core profile
 * implementation together with APIs in newer ARB extensions which can be
 * can be supported by the core profile. It does not, and never will
 * include functionality removed from the core profile, such as
 * fixed-function vertex and fragment processing.
 *
 * It is not possible to #include both <GL/glcorearb.h> and either of
 * <GL/gl.h> or <GL/glext.h> in the same source file.
 *
 * Feedback can be given by registering for the Khronos Bugzilla
 * (www.khronos.org/bugzilla) and filing issues there under product
 * "OpenGL", category "Registry".
 */

 /* Function declaration macros - to move into glplatform.h */

public:
	extern(C):

	version(Windows)
		import core.sys.windows.windows;

	/* *********************************************************** */

	/* Base GL types */

	alias uint GLenum;
	alias ubyte GLboolean;
	alias uint GLbitfield;
	alias byte GLbyte;
	alias short GLshort;
	alias int GLint;
	alias int GLsizei;
	alias ubyte GLubyte;
	alias ushort GLushort;
	alias uint GLuint;
	alias ushort GLhalf;
	alias float GLfloat;
	alias float GLclampf;
	alias double GLdouble;
	alias double GLclampd;
	alias void GLvoid;

	/* *********************************************************** */

	enum // GL_VERSION_1_1
	{
		/* AttribMask */

		GL_DEPTH_BUFFER_BIT               = 0x00000100,
		GL_STENCIL_BUFFER_BIT             = 0x00000400,
		GL_COLOR_BUFFER_BIT               = 0x00004000,

		/* Boolean */

		GL_FALSE                          = 0,
		GL_TRUE                           = 1,

		/* BeginMode */

		GL_POINTS                         = 0x0000,
		GL_LINES                          = 0x0001,
		GL_LINE_LOOP                      = 0x0002,
		GL_LINE_STRIP                     = 0x0003,
		GL_TRIANGLES                      = 0x0004,
		GL_TRIANGLE_STRIP                 = 0x0005,
		GL_TRIANGLE_FAN                   = 0x0006,
		GL_QUADS                          = 0x0007,

		/* AlphaFunction */

		GL_NEVER                          = 0x0200,
		GL_LESS                           = 0x0201,
		GL_EQUAL                          = 0x0202,
		GL_LEQUAL                         = 0x0203,
		GL_GREATER                        = 0x0204,
		GL_NOTEQUAL                       = 0x0205,
		GL_GEQUAL                         = 0x0206,
		GL_ALWAYS                         = 0x0207,

		/* BlendingFactorDest */

		GL_ZERO                           = 0,
		GL_ONE                            = 1,
		GL_SRC_COLOR                      = 0x0300,
		GL_ONE_MINUS_SRC_COLOR            = 0x0301,
		GL_SRC_ALPHA                      = 0x0302,
		GL_ONE_MINUS_SRC_ALPHA            = 0x0303,
		GL_DST_ALPHA                      = 0x0304,
		GL_ONE_MINUS_DST_ALPHA            = 0x0305,

		/* BlendingFactorSrc */

		GL_DST_COLOR                      = 0x0306,
		GL_ONE_MINUS_DST_COLOR            = 0x0307,
		GL_SRC_ALPHA_SATURATE             = 0x0308,

		/* DrawBufferMode */

		GL_NONE                           = 0,
		GL_FRONT_LEFT                     = 0x0400,
		GL_FRONT_RIGHT                    = 0x0401,
		GL_BACK_LEFT                      = 0x0402,
		GL_BACK_RIGHT                     = 0x0403,
		GL_FRONT                          = 0x0404,
		GL_BACK                           = 0x0405,
		GL_LEFT                           = 0x0406,
		GL_RIGHT                          = 0x0407,
		GL_FRONT_AND_BACK                 = 0x0408,

		/* ErrorCode */

		GL_NO_ERROR                       = 0,
		GL_INVALID_ENUM                   = 0x0500,
		GL_INVALID_VALUE                  = 0x0501,
		GL_INVALID_OPERATION              = 0x0502,
		GL_OUT_OF_MEMORY                  = 0x0505,

		/* FrontFaceDirection */

		GL_CW                             = 0x0900,
		GL_CCW                            = 0x0901,

		/* GetPName */

		GL_POINT_SIZE                     = 0x0B11,
		GL_POINT_SIZE_RANGE               = 0x0B12,
		GL_POINT_SIZE_GRANULARITY         = 0x0B13,
		GL_LINE_SMOOTH                    = 0x0B20,
		GL_LINE_WIDTH                     = 0x0B21,
		GL_LINE_WIDTH_RANGE               = 0x0B22,
		GL_LINE_WIDTH_GRANULARITY         = 0x0B23,
		GL_POLYGON_MODE                   = 0x0B40,
		GL_POLYGON_SMOOTH                 = 0x0B41,
		GL_CULL_FACE                      = 0x0B44,
		GL_CULL_FACE_MODE                 = 0x0B45,
		GL_FRONT_FACE                     = 0x0B46,
		GL_DEPTH_RANGE                    = 0x0B70,
		GL_DEPTH_TEST                     = 0x0B71,
		GL_DEPTH_WRITEMASK                = 0x0B72,
		GL_DEPTH_CLEAR_VALUE              = 0x0B73,
		GL_DEPTH_FUNC                     = 0x0B74,
		GL_STENCIL_TEST                   = 0x0B90,
		GL_STENCIL_CLEAR_VALUE            = 0x0B91,
		GL_STENCIL_FUNC                   = 0x0B92,
		GL_STENCIL_VALUE_MASK             = 0x0B93,
		GL_STENCIL_FAIL                   = 0x0B94,
		GL_STENCIL_PASS_DEPTH_FAIL        = 0x0B95,
		GL_STENCIL_PASS_DEPTH_PASS        = 0x0B96,
		GL_STENCIL_REF                    = 0x0B97,
		GL_STENCIL_WRITEMASK              = 0x0B98,
		GL_VIEWPORT                       = 0x0BA2,
		GL_DITHER                         = 0x0BD0,
		GL_BLEND_DST                      = 0x0BE0,
		GL_BLEND_SRC                      = 0x0BE1,
		GL_BLEND                          = 0x0BE2,
		GL_LOGIC_OP_MODE                  = 0x0BF0,
		GL_COLOR_LOGIC_OP                 = 0x0BF2,
		GL_DRAW_BUFFER                    = 0x0C01,
		GL_READ_BUFFER                    = 0x0C02,
		GL_SCISSOR_BOX                    = 0x0C10,
		GL_SCISSOR_TEST                   = 0x0C11,
		GL_COLOR_CLEAR_VALUE              = 0x0C22,
		GL_COLOR_WRITEMASK                = 0x0C23,
		GL_DOUBLEBUFFER                   = 0x0C32,
		GL_STEREO                         = 0x0C33,
		GL_LINE_SMOOTH_HINT               = 0x0C52,
		GL_POLYGON_SMOOTH_HINT            = 0x0C53,
		GL_UNPACK_SWAP_BYTES              = 0x0CF0,
		GL_UNPACK_LSB_FIRST               = 0x0CF1,
		GL_UNPACK_ROW_LENGTH              = 0x0CF2,
		GL_UNPACK_SKIP_ROWS               = 0x0CF3,
		GL_UNPACK_SKIP_PIXELS             = 0x0CF4,
		GL_UNPACK_ALIGNMENT               = 0x0CF5,
		GL_PACK_SWAP_BYTES                = 0x0D00,
		GL_PACK_LSB_FIRST                 = 0x0D01,
		GL_PACK_ROW_LENGTH                = 0x0D02,
		GL_PACK_SKIP_ROWS                 = 0x0D03,
		GL_PACK_SKIP_PIXELS               = 0x0D04,
		GL_PACK_ALIGNMENT                 = 0x0D05,
		GL_MAX_TEXTURE_SIZE               = 0x0D33,
		GL_MAX_VIEWPORT_DIMS              = 0x0D3A,
		GL_SUBPIXEL_BITS                  = 0x0D50,
		GL_TEXTURE_1D                     = 0x0DE0,
		GL_TEXTURE_2D                     = 0x0DE1,
		GL_POLYGON_OFFSET_UNITS           = 0x2A00,
		GL_POLYGON_OFFSET_POINT           = 0x2A01,
		GL_POLYGON_OFFSET_LINE            = 0x2A02,
		GL_POLYGON_OFFSET_FILL            = 0x8037,
		GL_POLYGON_OFFSET_FACTOR          = 0x8038,
		GL_TEXTURE_BINDING_1D             = 0x8068,
		GL_TEXTURE_BINDING_2D             = 0x8069,

		/* GetTextureParameter */

		GL_TEXTURE_WIDTH                  = 0x1000,
		GL_TEXTURE_HEIGHT                 = 0x1001,
		GL_TEXTURE_INTERNAL_FORMAT        = 0x1003,
		GL_TEXTURE_BORDER_COLOR           = 0x1004,
		GL_TEXTURE_RED_SIZE               = 0x805C,
		GL_TEXTURE_GREEN_SIZE             = 0x805D,
		GL_TEXTURE_BLUE_SIZE              = 0x805E,
		GL_TEXTURE_ALPHA_SIZE             = 0x805F,

		/* HintMode */

		GL_DONT_CARE                      = 0x1100,
		GL_FASTEST                        = 0x1101,
		GL_NICEST                         = 0x1102,

		/* DataType */

		GL_BYTE                           = 0x1400,
		GL_UNSIGNED_BYTE                  = 0x1401,
		GL_SHORT                          = 0x1402,
		GL_UNSIGNED_SHORT                 = 0x1403,
		GL_INT                            = 0x1404,
		GL_UNSIGNED_INT                   = 0x1405,
		GL_FLOAT                          = 0x1406,
		GL_DOUBLE                         = 0x140A,

		/* ErrorCode */

		GL_STACK_OVERFLOW                 = 0x0503,
		GL_STACK_UNDERFLOW                = 0x0504,

		/* LogicOp */

		GL_CLEAR                          = 0x1500,
		GL_AND                            = 0x1501,
		GL_AND_REVERSE                    = 0x1502,
		GL_COPY                           = 0x1503,
		GL_AND_INVERTED                   = 0x1504,
		GL_NOOP                           = 0x1505,
		GL_XOR                            = 0x1506,
		GL_OR                             = 0x1507,
		GL_NOR                            = 0x1508,
		GL_EQUIV                          = 0x1509,
		GL_INVERT                         = 0x150A,
		GL_OR_REVERSE                     = 0x150B,
		GL_COPY_INVERTED                  = 0x150C,
		GL_OR_INVERTED                    = 0x150D,
		GL_NAND                           = 0x150E,
		GL_SET                            = 0x150F,

		/* MatrixMode (for gl3.h, FBO attachment type) */

		GL_TEXTURE                        = 0x1702,

		/* PixelCopyType */

		GL_COLOR                          = 0x1800,
		GL_DEPTH                          = 0x1801,
		GL_STENCIL                        = 0x1802,

		/* PixelFormat */

		GL_STENCIL_INDEX                  = 0x1901,
		GL_DEPTH_COMPONENT                = 0x1902,
		GL_RED                            = 0x1903,
		GL_GREEN                          = 0x1904,
		GL_BLUE                           = 0x1905,
		GL_ALPHA                          = 0x1906,
		GL_RGB                            = 0x1907,
		GL_RGBA                           = 0x1908,

		/* PolygonMode */

		GL_POINT                          = 0x1B00,
		GL_LINE                           = 0x1B01,
		GL_FILL                           = 0x1B02,

		/* StencilOp */

		GL_KEEP                           = 0x1E00,
		GL_REPLACE                        = 0x1E01,
		GL_INCR                           = 0x1E02,
		GL_DECR                           = 0x1E03,

		/* StringName */

		GL_VENDOR                         = 0x1F00,
		GL_RENDERER                       = 0x1F01,
		GL_VERSION                        = 0x1F02,
		GL_EXTENSIONS                     = 0x1F03,

		/* TextureMagFilter */

		GL_NEAREST                        = 0x2600,
		GL_LINEAR                         = 0x2601,

		/* TextureMinFilter */

		GL_NEAREST_MIPMAP_NEAREST         = 0x2700,
		GL_LINEAR_MIPMAP_NEAREST          = 0x2701,
		GL_NEAREST_MIPMAP_LINEAR          = 0x2702,
		GL_LINEAR_MIPMAP_LINEAR           = 0x2703,

		/* TextureParameterName */

		GL_TEXTURE_MAG_FILTER             = 0x2800,
		GL_TEXTURE_MIN_FILTER             = 0x2801,
		GL_TEXTURE_WRAP_S                 = 0x2802,
		GL_TEXTURE_WRAP_T                 = 0x2803,

		/* TextureTarget */

		GL_PROXY_TEXTURE_1D               = 0x8063,
		GL_PROXY_TEXTURE_2D               = 0x8064,

		/* TextureWrapMode */

		GL_REPEAT                         = 0x2901,

		/* PixelInternalFormat */

		GL_R3_G3_B2                       = 0x2A10,
		GL_RGB4                           = 0x804F,
		GL_RGB5                           = 0x8050,
		GL_RGB8                           = 0x8051,
		GL_RGB10                          = 0x8052,
		GL_RGB12                          = 0x8053,
		GL_RGB16                          = 0x8054,
		GL_RGBA2                          = 0x8055,
		GL_RGBA4                          = 0x8056,
		GL_RGB5_A1                        = 0x8057,
		GL_RGBA8                          = 0x8058,
		GL_RGB10_A2                       = 0x8059,
		GL_RGBA12                         = 0x805A,
		GL_RGBA16                         = 0x805B,
	}

	enum // GL_VERSION_1_2
	{
		GL_UNSIGNED_BYTE_3_3_2            = 0x8032,
		GL_UNSIGNED_SHORT_4_4_4_4         = 0x8033,
		GL_UNSIGNED_SHORT_5_5_5_1         = 0x8034,
		GL_UNSIGNED_INT_8_8_8_8           = 0x8035,
		GL_UNSIGNED_INT_10_10_10_2        = 0x8036,
		GL_TEXTURE_BINDING_3D             = 0x806A,
		GL_PACK_SKIP_IMAGES               = 0x806B,
		GL_PACK_IMAGE_HEIGHT              = 0x806C,
		GL_UNPACK_SKIP_IMAGES             = 0x806D,
		GL_UNPACK_IMAGE_HEIGHT            = 0x806E,
		GL_TEXTURE_3D                     = 0x806F,
		GL_PROXY_TEXTURE_3D               = 0x8070,
		GL_TEXTURE_DEPTH                  = 0x8071,
		GL_TEXTURE_WRAP_R                 = 0x8072,
		GL_MAX_3D_TEXTURE_SIZE            = 0x8073,
		GL_UNSIGNED_BYTE_2_3_3_REV        = 0x8362,
		GL_UNSIGNED_SHORT_5_6_5           = 0x8363,
		GL_UNSIGNED_SHORT_5_6_5_REV       = 0x8364,
		GL_UNSIGNED_SHORT_4_4_4_4_REV     = 0x8365,
		GL_UNSIGNED_SHORT_1_5_5_5_REV     = 0x8366,
		GL_UNSIGNED_INT_8_8_8_8_REV       = 0x8367,
		GL_UNSIGNED_INT_2_10_10_10_REV    = 0x8368,
		GL_BGR                            = 0x80E0,
		GL_BGRA                           = 0x80E1,
		GL_MAX_ELEMENTS_VERTICES          = 0x80E8,
		GL_MAX_ELEMENTS_INDICES           = 0x80E9,
		GL_CLAMP_TO_EDGE                  = 0x812F,
		GL_TEXTURE_MIN_LOD                = 0x813A,
		GL_TEXTURE_MAX_LOD                = 0x813B,
		GL_TEXTURE_BASE_LEVEL             = 0x813C,
		GL_TEXTURE_MAX_LEVEL              = 0x813D,
		GL_SMOOTH_POINT_SIZE_RANGE        = 0x0B12,
		GL_SMOOTH_POINT_SIZE_GRANULARITY  = 0x0B13,
		GL_SMOOTH_LINE_WIDTH_RANGE        = 0x0B22,
		GL_SMOOTH_LINE_WIDTH_GRANULARITY  = 0x0B23,
		GL_ALIASED_LINE_WIDTH_RANGE       = 0x846E,
	}

	enum // GL_VERSION_1_3
	{
		GL_TEXTURE0                       = 0x84C0,
		GL_TEXTURE1                       = 0x84C1,
		GL_TEXTURE2                       = 0x84C2,
		GL_TEXTURE3                       = 0x84C3,
		GL_TEXTURE4                       = 0x84C4,
		GL_TEXTURE5                       = 0x84C5,
		GL_TEXTURE6                       = 0x84C6,
		GL_TEXTURE7                       = 0x84C7,
		GL_TEXTURE8                       = 0x84C8,
		GL_TEXTURE9                       = 0x84C9,
		GL_TEXTURE10                      = 0x84CA,
		GL_TEXTURE11                      = 0x84CB,
		GL_TEXTURE12                      = 0x84CC,
		GL_TEXTURE13                      = 0x84CD,
		GL_TEXTURE14                      = 0x84CE,
		GL_TEXTURE15                      = 0x84CF,
		GL_TEXTURE16                      = 0x84D0,
		GL_TEXTURE17                      = 0x84D1,
		GL_TEXTURE18                      = 0x84D2,
		GL_TEXTURE19                      = 0x84D3,
		GL_TEXTURE20                      = 0x84D4,
		GL_TEXTURE21                      = 0x84D5,
		GL_TEXTURE22                      = 0x84D6,
		GL_TEXTURE23                      = 0x84D7,
		GL_TEXTURE24                      = 0x84D8,
		GL_TEXTURE25                      = 0x84D9,
		GL_TEXTURE26                      = 0x84DA,
		GL_TEXTURE27                      = 0x84DB,
		GL_TEXTURE28                      = 0x84DC,
		GL_TEXTURE29                      = 0x84DD,
		GL_TEXTURE30                      = 0x84DE,
		GL_TEXTURE31                      = 0x84DF,
		GL_ACTIVE_TEXTURE                 = 0x84E0,
		GL_MULTISAMPLE                    = 0x809D,
		GL_SAMPLE_ALPHA_TO_COVERAGE       = 0x809E,
		GL_SAMPLE_ALPHA_TO_ONE            = 0x809F,
		GL_SAMPLE_COVERAGE                = 0x80A0,
		GL_SAMPLE_BUFFERS                 = 0x80A8,
		GL_SAMPLES                        = 0x80A9,
		GL_SAMPLE_COVERAGE_VALUE          = 0x80AA,
		GL_SAMPLE_COVERAGE_INVERT         = 0x80AB,
		GL_TEXTURE_CUBE_MAP               = 0x8513,
		GL_TEXTURE_BINDING_CUBE_MAP       = 0x8514,
		GL_TEXTURE_CUBE_MAP_POSITIVE_X    = 0x8515,
		GL_TEXTURE_CUBE_MAP_NEGATIVE_X    = 0x8516,
		GL_TEXTURE_CUBE_MAP_POSITIVE_Y    = 0x8517,
		GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    = 0x8518,
		GL_TEXTURE_CUBE_MAP_POSITIVE_Z    = 0x8519,
		GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    = 0x851A,
		GL_PROXY_TEXTURE_CUBE_MAP         = 0x851B,
		GL_MAX_CUBE_MAP_TEXTURE_SIZE      = 0x851C,
		GL_COMPRESSED_RGB                 = 0x84ED,
		GL_COMPRESSED_RGBA                = 0x84EE,
		GL_TEXTURE_COMPRESSION_HINT       = 0x84EF,
		GL_TEXTURE_COMPRESSED_IMAGE_SIZE  = 0x86A0,
		GL_TEXTURE_COMPRESSED             = 0x86A1,
		GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2,
		GL_COMPRESSED_TEXTURE_FORMATS     = 0x86A3,
		GL_CLAMP_TO_BORDER                = 0x812D,
	}

	enum // GL_VERSION_1_4
	{
		GL_BLEND_DST_RGB                  = 0x80C8,
		GL_BLEND_SRC_RGB                  = 0x80C9,
		GL_BLEND_DST_ALPHA                = 0x80CA,
		GL_BLEND_SRC_ALPHA                = 0x80CB,
		GL_POINT_FADE_THRESHOLD_SIZE      = 0x8128,
		GL_DEPTH_COMPONENT16              = 0x81A5,
		GL_DEPTH_COMPONENT24              = 0x81A6,
		GL_DEPTH_COMPONENT32              = 0x81A7,
		GL_MIRRORED_REPEAT                = 0x8370,
		GL_MAX_TEXTURE_LOD_BIAS           = 0x84FD,
		GL_TEXTURE_LOD_BIAS               = 0x8501,
		GL_INCR_WRAP                      = 0x8507,
		GL_DECR_WRAP                      = 0x8508,
		GL_TEXTURE_DEPTH_SIZE             = 0x884A,
		GL_TEXTURE_COMPARE_MODE           = 0x884C,
		GL_TEXTURE_COMPARE_FUNC           = 0x884D,
	}

	enum // GL_VERSION_1_5
	{
		GL_BUFFER_SIZE                    = 0x8764,
		GL_BUFFER_USAGE                   = 0x8765,
		GL_QUERY_COUNTER_BITS             = 0x8864,
		GL_CURRENT_QUERY                  = 0x8865,
		GL_QUERY_RESULT                   = 0x8866,
		GL_QUERY_RESULT_AVAILABLE         = 0x8867,
		GL_ARRAY_BUFFER                   = 0x8892,
		GL_ELEMENT_ARRAY_BUFFER           = 0x8893,
		GL_ARRAY_BUFFER_BINDING           = 0x8894,
		GL_ELEMENT_ARRAY_BUFFER_BINDING   = 0x8895,
		GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F,
		GL_READ_ONLY                      = 0x88B8,
		GL_WRITE_ONLY                     = 0x88B9,
		GL_READ_WRITE                     = 0x88BA,
		GL_BUFFER_ACCESS                  = 0x88BB,
		GL_BUFFER_MAPPED                  = 0x88BC,
		GL_BUFFER_MAP_POINTER             = 0x88BD,
		GL_STREAM_DRAW                    = 0x88E0,
		GL_STREAM_READ                    = 0x88E1,
		GL_STREAM_COPY                    = 0x88E2,
		GL_STATIC_DRAW                    = 0x88E4,
		GL_STATIC_READ                    = 0x88E5,
		GL_STATIC_COPY                    = 0x88E6,
		GL_DYNAMIC_DRAW                   = 0x88E8,
		GL_DYNAMIC_READ                   = 0x88E9,
		GL_DYNAMIC_COPY                   = 0x88EA,
		GL_SAMPLES_PASSED                 = 0x8914,
		GL_SRC1_ALPHA                     = 0x8589,
	}

	enum // GL_VERSION_2_0
	{
		GL_BLEND_EQUATION_RGB             = 0x8009,
		GL_VERTEX_ATTRIB_ARRAY_ENABLED    = 0x8622,
		GL_VERTEX_ATTRIB_ARRAY_SIZE       = 0x8623,
		GL_VERTEX_ATTRIB_ARRAY_STRIDE     = 0x8624,
		GL_VERTEX_ATTRIB_ARRAY_TYPE       = 0x8625,
		GL_CURRENT_VERTEX_ATTRIB          = 0x8626,
		GL_VERTEX_PROGRAM_POINT_SIZE      = 0x8642,
		GL_VERTEX_ATTRIB_ARRAY_POINTER    = 0x8645,
		GL_STENCIL_BACK_FUNC              = 0x8800,
		GL_STENCIL_BACK_FAIL              = 0x8801,
		GL_STENCIL_BACK_PASS_DEPTH_FAIL   = 0x8802,
		GL_STENCIL_BACK_PASS_DEPTH_PASS   = 0x8803,
		GL_MAX_DRAW_BUFFERS               = 0x8824,
		GL_DRAW_BUFFER0                   = 0x8825,
		GL_DRAW_BUFFER1                   = 0x8826,
		GL_DRAW_BUFFER2                   = 0x8827,
		GL_DRAW_BUFFER3                   = 0x8828,
		GL_DRAW_BUFFER4                   = 0x8829,
		GL_DRAW_BUFFER5                   = 0x882A,
		GL_DRAW_BUFFER6                   = 0x882B,
		GL_DRAW_BUFFER7                   = 0x882C,
		GL_DRAW_BUFFER8                   = 0x882D,
		GL_DRAW_BUFFER9                   = 0x882E,
		GL_DRAW_BUFFER10                  = 0x882F,
		GL_DRAW_BUFFER11                  = 0x8830,
		GL_DRAW_BUFFER12                  = 0x8831,
		GL_DRAW_BUFFER13                  = 0x8832,
		GL_DRAW_BUFFER14                  = 0x8833,
		GL_DRAW_BUFFER15                  = 0x8834,
		GL_BLEND_EQUATION_ALPHA           = 0x883D,
		GL_MAX_VERTEX_ATTRIBS             = 0x8869,
		GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A,
		GL_MAX_TEXTURE_IMAGE_UNITS        = 0x8872,
		GL_FRAGMENT_SHADER                = 0x8B30,
		GL_VERTEX_SHADER                  = 0x8B31,
		GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49,
		GL_MAX_VERTEX_UNIFORM_COMPONENTS  = 0x8B4A,
		GL_MAX_VARYING_FLOATS             = 0x8B4B,
		GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C,
		GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D,
		GL_SHADER_TYPE                    = 0x8B4F,
		GL_FLOAT_VEC2                     = 0x8B50,
		GL_FLOAT_VEC3                     = 0x8B51,
		GL_FLOAT_VEC4                     = 0x8B52,
		GL_INT_VEC2                       = 0x8B53,
		GL_INT_VEC3                       = 0x8B54,
		GL_INT_VEC4                       = 0x8B55,
		GL_BOOL                           = 0x8B56,
		GL_BOOL_VEC2                      = 0x8B57,
		GL_BOOL_VEC3                      = 0x8B58,
		GL_BOOL_VEC4                      = 0x8B59,
		GL_FLOAT_MAT2                     = 0x8B5A,
		GL_FLOAT_MAT3                     = 0x8B5B,
		GL_FLOAT_MAT4                     = 0x8B5C,
		GL_SAMPLER_1D                     = 0x8B5D,
		GL_SAMPLER_2D                     = 0x8B5E,
		GL_SAMPLER_3D                     = 0x8B5F,
		GL_SAMPLER_CUBE                   = 0x8B60,
		GL_SAMPLER_1D_SHADOW              = 0x8B61,
		GL_SAMPLER_2D_SHADOW              = 0x8B62,
		GL_DELETE_STATUS                  = 0x8B80,
		GL_COMPILE_STATUS                 = 0x8B81,
		GL_LINK_STATUS                    = 0x8B82,
		GL_VALIDATE_STATUS                = 0x8B83,
		GL_INFO_LOG_LENGTH                = 0x8B84,
		GL_ATTACHED_SHADERS               = 0x8B85,
		GL_ACTIVE_UNIFORMS                = 0x8B86,
		GL_ACTIVE_UNIFORM_MAX_LENGTH      = 0x8B87,
		GL_SHADER_SOURCE_LENGTH           = 0x8B88,
		GL_ACTIVE_ATTRIBUTES              = 0x8B89,
		GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    = 0x8B8A,
		GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B,
		GL_SHADING_LANGUAGE_VERSION       = 0x8B8C,
		GL_CURRENT_PROGRAM                = 0x8B8D,
		GL_POINT_SPRITE_COORD_ORIGIN      = 0x8CA0,
		GL_LOWER_LEFT                     = 0x8CA1,
		GL_UPPER_LEFT                     = 0x8CA2,
		GL_STENCIL_BACK_REF               = 0x8CA3,
		GL_STENCIL_BACK_VALUE_MASK        = 0x8CA4,
		GL_STENCIL_BACK_WRITEMASK         = 0x8CA5,
	}

	enum // GL_VERSION_2_1
	{
		GL_PIXEL_PACK_BUFFER              = 0x88EB,
		GL_PIXEL_UNPACK_BUFFER            = 0x88EC,
		GL_PIXEL_PACK_BUFFER_BINDING      = 0x88ED,
		GL_PIXEL_UNPACK_BUFFER_BINDING    = 0x88EF,
		GL_FLOAT_MAT2x3                   = 0x8B65,
		GL_FLOAT_MAT2x4                   = 0x8B66,
		GL_FLOAT_MAT3x2                   = 0x8B67,
		GL_FLOAT_MAT3x4                   = 0x8B68,
		GL_FLOAT_MAT4x2                   = 0x8B69,
		GL_FLOAT_MAT4x3                   = 0x8B6A,
		GL_SRGB                           = 0x8C40,
		GL_SRGB8                          = 0x8C41,
		GL_SRGB_ALPHA                     = 0x8C42,
		GL_SRGB8_ALPHA8                   = 0x8C43,
		GL_COMPRESSED_SRGB                = 0x8C48,
		GL_COMPRESSED_SRGB_ALPHA          = 0x8C49,
	}

	enum // GL_VERSION_3_0
	{
		GL_COMPARE_REF_TO_TEXTURE         = 0x884E,
		GL_CLIP_DISTANCE0                 = 0x3000,
		GL_CLIP_DISTANCE1                 = 0x3001,
		GL_CLIP_DISTANCE2                 = 0x3002,
		GL_CLIP_DISTANCE3                 = 0x3003,
		GL_CLIP_DISTANCE4                 = 0x3004,
		GL_CLIP_DISTANCE5                 = 0x3005,
		GL_CLIP_DISTANCE6                 = 0x3006,
		GL_CLIP_DISTANCE7                 = 0x3007,
		GL_MAX_CLIP_DISTANCES             = 0x0D32,
		GL_MAJOR_VERSION                  = 0x821B,
		GL_MINOR_VERSION                  = 0x821C,
		GL_NUM_EXTENSIONS                 = 0x821D,
		GL_CONTEXT_FLAGS                  = 0x821E,
		GL_COMPRESSED_RED                 = 0x8225,
		GL_COMPRESSED_RG                  = 0x8226,
		GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x0001,
		GL_RGBA32F                        = 0x8814,
		GL_RGB32F                         = 0x8815,
		GL_RGBA16F                        = 0x881A,
		GL_RGB16F                         = 0x881B,
		GL_VERTEX_ATTRIB_ARRAY_INTEGER    = 0x88FD,
		GL_MAX_ARRAY_TEXTURE_LAYERS       = 0x88FF,
		GL_MIN_PROGRAM_TEXEL_OFFSET       = 0x8904,
		GL_MAX_PROGRAM_TEXEL_OFFSET       = 0x8905,
		GL_CLAMP_READ_COLOR               = 0x891C,
		GL_FIXED_ONLY                     = 0x891D,
		GL_MAX_VARYING_COMPONENTS         = 0x8B4B,
		GL_TEXTURE_1D_ARRAY               = 0x8C18,
		GL_PROXY_TEXTURE_1D_ARRAY         = 0x8C19,
		GL_TEXTURE_2D_ARRAY               = 0x8C1A,
		GL_PROXY_TEXTURE_2D_ARRAY         = 0x8C1B,
		GL_TEXTURE_BINDING_1D_ARRAY       = 0x8C1C,
		GL_TEXTURE_BINDING_2D_ARRAY       = 0x8C1D,
		GL_R11F_G11F_B10F                 = 0x8C3A,
		GL_UNSIGNED_INT_10F_11F_11F_REV   = 0x8C3B,
		GL_RGB9_E5                        = 0x8C3D,
		GL_UNSIGNED_INT_5_9_9_9_REV       = 0x8C3E,
		GL_TEXTURE_SHARED_SIZE            = 0x8C3F,
		GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76,
		GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F,
		GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80,
		GL_TRANSFORM_FEEDBACK_VARYINGS    = 0x8C83,
		GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84,
		GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85,
		GL_PRIMITIVES_GENERATED           = 0x8C87,
		GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88,
		GL_RASTERIZER_DISCARD             = 0x8C89,
		GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A,
		GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B,
		GL_INTERLEAVED_ATTRIBS            = 0x8C8C,
		GL_SEPARATE_ATTRIBS               = 0x8C8D,
		GL_TRANSFORM_FEEDBACK_BUFFER      = 0x8C8E,
		GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F,
		GL_RGBA32UI                       = 0x8D70,
		GL_RGB32UI                        = 0x8D71,
		GL_RGBA16UI                       = 0x8D76,
		GL_RGB16UI                        = 0x8D77,
		GL_RGBA8UI                        = 0x8D7C,
		GL_RGB8UI                         = 0x8D7D,
		GL_RGBA32I                        = 0x8D82,
		GL_RGB32I                         = 0x8D83,
		GL_RGBA16I                        = 0x8D88,
		GL_RGB16I                         = 0x8D89,
		GL_RGBA8I                         = 0x8D8E,
		GL_RGB8I                          = 0x8D8F,
		GL_RED_INTEGER                    = 0x8D94,
		GL_GREEN_INTEGER                  = 0x8D95,
		GL_BLUE_INTEGER                   = 0x8D96,
		GL_RGB_INTEGER                    = 0x8D98,
		GL_RGBA_INTEGER                   = 0x8D99,
		GL_BGR_INTEGER                    = 0x8D9A,
		GL_BGRA_INTEGER                   = 0x8D9B,
		GL_SAMPLER_1D_ARRAY               = 0x8DC0,
		GL_SAMPLER_2D_ARRAY               = 0x8DC1,
		GL_SAMPLER_1D_ARRAY_SHADOW        = 0x8DC3,
		GL_SAMPLER_2D_ARRAY_SHADOW        = 0x8DC4,
		GL_SAMPLER_CUBE_SHADOW            = 0x8DC5,
		GL_UNSIGNED_INT_VEC2              = 0x8DC6,
		GL_UNSIGNED_INT_VEC3              = 0x8DC7,
		GL_UNSIGNED_INT_VEC4              = 0x8DC8,
		GL_INT_SAMPLER_1D                 = 0x8DC9,
		GL_INT_SAMPLER_2D                 = 0x8DCA,
		GL_INT_SAMPLER_3D                 = 0x8DCB,
		GL_INT_SAMPLER_CUBE               = 0x8DCC,
		GL_INT_SAMPLER_1D_ARRAY           = 0x8DCE,
		GL_INT_SAMPLER_2D_ARRAY           = 0x8DCF,
		GL_UNSIGNED_INT_SAMPLER_1D        = 0x8DD1,
		GL_UNSIGNED_INT_SAMPLER_2D        = 0x8DD2,
		GL_UNSIGNED_INT_SAMPLER_3D        = 0x8DD3,
		GL_UNSIGNED_INT_SAMPLER_CUBE      = 0x8DD4,
		GL_UNSIGNED_INT_SAMPLER_1D_ARRAY  = 0x8DD6,
		GL_UNSIGNED_INT_SAMPLER_2D_ARRAY  = 0x8DD7,
		GL_QUERY_WAIT                     = 0x8E13,
		GL_QUERY_NO_WAIT                  = 0x8E14,
		GL_QUERY_BY_REGION_WAIT           = 0x8E15,
		GL_QUERY_BY_REGION_NO_WAIT        = 0x8E16,
		GL_BUFFER_ACCESS_FLAGS            = 0x911F,
		GL_BUFFER_MAP_LENGTH              = 0x9120,
		GL_BUFFER_MAP_OFFSET              = 0x9121,

		/* Reuse tokens from ARB_depth_buffer_float */

			/* reuse GL_DEPTH_COMPONENT32F */
			/* reuse GL_DEPTH32F_STENCIL8 */
			/* reuse GL_FLOAT_32_UNSIGNED_INT_24_8_REV */

		/* Reuse tokens from ARB_framebuffer_object */

			/* reuse GL_INVALID_FRAMEBUFFER_OPERATION */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE */
			/* reuse GL_FRAMEBUFFER_DEFAULT */
			/* reuse GL_FRAMEBUFFER_UNDEFINED */
			/* reuse GL_DEPTH_STENCIL_ATTACHMENT */
			/* reuse GL_INDEX */
			/* reuse GL_MAX_RENDERBUFFER_SIZE */
			/* reuse GL_DEPTH_STENCIL */
			/* reuse GL_UNSIGNED_INT_24_8 */
			/* reuse GL_DEPTH24_STENCIL8 */
			/* reuse GL_TEXTURE_STENCIL_SIZE */
			/* reuse GL_TEXTURE_RED_TYPE */
			/* reuse GL_TEXTURE_GREEN_TYPE */
			/* reuse GL_TEXTURE_BLUE_TYPE */
			/* reuse GL_TEXTURE_ALPHA_TYPE */
			/* reuse GL_TEXTURE_DEPTH_TYPE */
			/* reuse GL_UNSIGNED_NORMALIZED */
			/* reuse GL_FRAMEBUFFER_BINDING */
			/* reuse GL_DRAW_FRAMEBUFFER_BINDING */
			/* reuse GL_RENDERBUFFER_BINDING */
			/* reuse GL_READ_FRAMEBUFFER */
			/* reuse GL_DRAW_FRAMEBUFFER */
			/* reuse GL_READ_FRAMEBUFFER_BINDING */
			/* reuse GL_RENDERBUFFER_SAMPLES */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER */
			/* reuse GL_FRAMEBUFFER_COMPLETE */
			/* reuse GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT */
			/* reuse GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT */
			/* reuse GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER */
			/* reuse GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER */
			/* reuse GL_FRAMEBUFFER_UNSUPPORTED */
			/* reuse GL_MAX_COLOR_ATTACHMENTS */
			/* reuse GL_COLOR_ATTACHMENT0 */
			/* reuse GL_COLOR_ATTACHMENT1 */
			/* reuse GL_COLOR_ATTACHMENT2 */
			/* reuse GL_COLOR_ATTACHMENT3 */
			/* reuse GL_COLOR_ATTACHMENT4 */
			/* reuse GL_COLOR_ATTACHMENT5 */
			/* reuse GL_COLOR_ATTACHMENT6 */
			/* reuse GL_COLOR_ATTACHMENT7 */
			/* reuse GL_COLOR_ATTACHMENT8 */
			/* reuse GL_COLOR_ATTACHMENT9 */
			/* reuse GL_COLOR_ATTACHMENT10 */
			/* reuse GL_COLOR_ATTACHMENT11 */
			/* reuse GL_COLOR_ATTACHMENT12 */
			/* reuse GL_COLOR_ATTACHMENT13 */
			/* reuse GL_COLOR_ATTACHMENT14 */
			/* reuse GL_COLOR_ATTACHMENT15 */
			/* reuse GL_DEPTH_ATTACHMENT */
			/* reuse GL_STENCIL_ATTACHMENT */
			/* reuse GL_FRAMEBUFFER */
			/* reuse GL_RENDERBUFFER */
			/* reuse GL_RENDERBUFFER_WIDTH */
			/* reuse GL_RENDERBUFFER_HEIGHT */
			/* reuse GL_RENDERBUFFER_INTERNAL_FORMAT */
			/* reuse GL_STENCIL_INDEX1 */
			/* reuse GL_STENCIL_INDEX4 */
			/* reuse GL_STENCIL_INDEX8 */
			/* reuse GL_STENCIL_INDEX16 */
			/* reuse GL_RENDERBUFFER_RED_SIZE */
			/* reuse GL_RENDERBUFFER_GREEN_SIZE */
			/* reuse GL_RENDERBUFFER_BLUE_SIZE */
			/* reuse GL_RENDERBUFFER_ALPHA_SIZE */
			/* reuse GL_RENDERBUFFER_DEPTH_SIZE */
			/* reuse GL_RENDERBUFFER_STENCIL_SIZE */
			/* reuse GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE */
			/* reuse GL_MAX_SAMPLES */

		/* Reuse tokens from ARB_framebuffer_sRGB */

			/* reuse GL_FRAMEBUFFER_SRGB */

		/* Reuse tokens from ARB_half_float_vertex */

			/* reuse GL_HALF_FLOAT */

		/* Reuse tokens from ARB_map_buffer_range */

			/* reuse GL_MAP_READ_BIT */
			/* reuse GL_MAP_WRITE_BIT */
			/* reuse GL_MAP_INVALIDATE_RANGE_BIT */
			/* reuse GL_MAP_INVALIDATE_BUFFER_BIT */
			/* reuse GL_MAP_FLUSH_EXPLICIT_BIT */
			/* reuse GL_MAP_UNSYNCHRONIZED_BIT */

		/* Reuse tokens from ARB_texture_compression_rgtc */

			/* reuse GL_COMPRESSED_RED_RGTC1 */
			/* reuse GL_COMPRESSED_SIGNED_RED_RGTC1 */
			/* reuse GL_COMPRESSED_RG_RGTC2 */
			/* reuse GL_COMPRESSED_SIGNED_RG_RGTC2 */

		/* Reuse tokens from ARB_texture_rg */

			/* reuse GL_RG */
			/* reuse GL_RG_INTEGER */
			/* reuse GL_R8 */
			/* reuse GL_R16 */
			/* reuse GL_RG8 */
			/* reuse GL_RG16 */
			/* reuse GL_R16F */
			/* reuse GL_R32F */
			/* reuse GL_RG16F */
			/* reuse GL_RG32F */
			/* reuse GL_R8I */
			/* reuse GL_R8UI */
			/* reuse GL_R16I */
			/* reuse GL_R16UI */
			/* reuse GL_R32I */
			/* reuse GL_R32UI */
			/* reuse GL_RG8I */
			/* reuse GL_RG8UI */
			/* reuse GL_RG16I */
			/* reuse GL_RG16UI */
			/* reuse GL_RG32I */
			/* reuse GL_RG32UI */

		/* Reuse tokens from ARB_vertex_array_object */

			/* reuse GL_VERTEX_ARRAY_BINDING */
	}

	enum // GL_VERSION_3_1
	{
		GL_SAMPLER_2D_RECT                = 0x8B63,
		GL_SAMPLER_2D_RECT_SHADOW         = 0x8B64,
		GL_SAMPLER_BUFFER                 = 0x8DC2,
		GL_INT_SAMPLER_2D_RECT            = 0x8DCD,
		GL_INT_SAMPLER_BUFFER             = 0x8DD0,
		GL_UNSIGNED_INT_SAMPLER_2D_RECT   = 0x8DD5,
		GL_UNSIGNED_INT_SAMPLER_BUFFER    = 0x8DD8,
		GL_TEXTURE_BUFFER                 = 0x8C2A,
		GL_MAX_TEXTURE_BUFFER_SIZE        = 0x8C2B,
		GL_TEXTURE_BINDING_BUFFER         = 0x8C2C,
		GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D,
		GL_TEXTURE_RECTANGLE              = 0x84F5,
		GL_TEXTURE_BINDING_RECTANGLE      = 0x84F6,
		GL_PROXY_TEXTURE_RECTANGLE        = 0x84F7,
		GL_MAX_RECTANGLE_TEXTURE_SIZE     = 0x84F8,
		GL_RED_SNORM                      = 0x8F90,
		GL_RG_SNORM                       = 0x8F91,
		GL_RGB_SNORM                      = 0x8F92,
		GL_RGBA_SNORM                     = 0x8F93,
		GL_R8_SNORM                       = 0x8F94,
		GL_RG8_SNORM                      = 0x8F95,
		GL_RGB8_SNORM                     = 0x8F96,
		GL_RGBA8_SNORM                    = 0x8F97,
		GL_R16_SNORM                      = 0x8F98,
		GL_RG16_SNORM                     = 0x8F99,
		GL_RGB16_SNORM                    = 0x8F9A,
		GL_RGBA16_SNORM                   = 0x8F9B,
		GL_SIGNED_NORMALIZED              = 0x8F9C,
		GL_PRIMITIVE_RESTART              = 0x8F9D,
		GL_PRIMITIVE_RESTART_INDEX        = 0x8F9E,

		/* Reuse tokens from ARB_copy_buffer */

			/* reuse GL_COPY_READ_BUFFER */
			/* reuse GL_COPY_WRITE_BUFFER */

		/* Reuse tokens from ARB_draw_instanced (none) */

		/* Reuse tokens from ARB_uniform_buffer_object */

			/* reuse GL_UNIFORM_BUFFER */
			/* reuse GL_UNIFORM_BUFFER_BINDING */
			/* reuse GL_UNIFORM_BUFFER_START */
			/* reuse GL_UNIFORM_BUFFER_SIZE */
			/* reuse GL_MAX_VERTEX_UNIFORM_BLOCKS */
			/* reuse GL_MAX_FRAGMENT_UNIFORM_BLOCKS */
			/* reuse GL_MAX_COMBINED_UNIFORM_BLOCKS */
			/* reuse GL_MAX_UNIFORM_BUFFER_BINDINGS */
			/* reuse GL_MAX_UNIFORM_BLOCK_SIZE */
			/* reuse GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS */
			/* reuse GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT */
			/* reuse GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH */
			/* reuse GL_ACTIVE_UNIFORM_BLOCKS */
			/* reuse GL_UNIFORM_TYPE */
			/* reuse GL_UNIFORM_SIZE */
			/* reuse GL_UNIFORM_NAME_LENGTH */
			/* reuse GL_UNIFORM_BLOCK_INDEX */
			/* reuse GL_UNIFORM_OFFSET */
			/* reuse GL_UNIFORM_ARRAY_STRIDE */
			/* reuse GL_UNIFORM_MATRIX_STRIDE */
			/* reuse GL_UNIFORM_IS_ROW_MAJOR */
			/* reuse GL_UNIFORM_BLOCK_BINDING */
			/* reuse GL_UNIFORM_BLOCK_DATA_SIZE */
			/* reuse GL_UNIFORM_BLOCK_NAME_LENGTH */
			/* reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS */
			/* reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES */
			/* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER */
			/* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER */
			/* reuse GL_INVALID_INDEX */
	}

	enum // GL_VERSION_3_2
	{
		GL_CONTEXT_CORE_PROFILE_BIT       = 0x00000001,
		GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002,
		GL_LINES_ADJACENCY                = 0x000A,
		GL_LINE_STRIP_ADJACENCY           = 0x000B,
		GL_TRIANGLES_ADJACENCY            = 0x000C,
		GL_TRIANGLE_STRIP_ADJACENCY       = 0x000D,
		GL_PROGRAM_POINT_SIZE             = 0x8642,
		GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29,
		GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7,
		GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8,
		GL_GEOMETRY_SHADER                = 0x8DD9,
		GL_GEOMETRY_VERTICES_OUT          = 0x8916,
		GL_GEOMETRY_INPUT_TYPE            = 0x8917,
		GL_GEOMETRY_OUTPUT_TYPE           = 0x8918,
		GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF,
		GL_MAX_GEOMETRY_OUTPUT_VERTICES   = 0x8DE0,
		GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1,
		GL_MAX_VERTEX_OUTPUT_COMPONENTS   = 0x9122,
		GL_MAX_GEOMETRY_INPUT_COMPONENTS  = 0x9123,
		GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124,
		GL_MAX_FRAGMENT_INPUT_COMPONENTS  = 0x9125,
		GL_CONTEXT_PROFILE_MASK           = 0x9126,

			/* reuse GL_MAX_VARYING_COMPONENTS */
			/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER */

		/* Reuse tokens from ARB_depth_clamp */

			/* reuse GL_DEPTH_CLAMP */

		/* Reuse tokens from ARB_draw_elements_base_vertex (none) */

		/* Reuse tokens from ARB_fragment_coord_conventions (none) */

		/* Reuse tokens from ARB_provoking_vertex */

			/* reuse GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION */
			/* reuse GL_FIRST_VERTEX_CONVENTION */
			/* reuse GL_LAST_VERTEX_CONVENTION */
			/* reuse GL_PROVOKING_VERTEX */

		/* Reuse tokens from ARB_seamless_cube_map */

			/* reuse GL_TEXTURE_CUBE_MAP_SEAMLESS */
			/* Reuse tokens from ARB_sync */
			/* reuse GL_MAX_SERVER_WAIT_TIMEOUT */
			/* reuse GL_OBJECT_TYPE */
			/* reuse GL_SYNC_CONDITION */
			/* reuse GL_SYNC_STATUS */
			/* reuse GL_SYNC_FLAGS */
			/* reuse GL_SYNC_FENCE */
			/* reuse GL_SYNC_GPU_COMMANDS_COMPLETE */
			/* reuse GL_UNSIGNALED */
			/* reuse GL_SIGNALED */
			/* reuse GL_ALREADY_SIGNALED */
			/* reuse GL_TIMEOUT_EXPIRED */
			/* reuse GL_CONDITION_SATISFIED */
			/* reuse GL_WAIT_FAILED */
			/* reuse GL_TIMEOUT_IGNORED */
			/* reuse GL_SYNC_FLUSH_COMMANDS_BIT */
			/* reuse GL_TIMEOUT_IGNORED */

		/* Reuse tokens from ARB_texture_multisample */

			/* reuse GL_SAMPLE_POSITION */
			/* reuse GL_SAMPLE_MASK */
			/* reuse GL_SAMPLE_MASK_VALUE */
			/* reuse GL_MAX_SAMPLE_MASK_WORDS */
			/* reuse GL_TEXTURE_2D_MULTISAMPLE */
			/* reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE */
			/* reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE */
			/* reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_TEXTURE_SAMPLES */
			/* reuse GL_TEXTURE_FIXED_SAMPLE_LOCATIONS */
			/* reuse GL_SAMPLER_2D_MULTISAMPLE */
			/* reuse GL_INT_SAMPLER_2D_MULTISAMPLE */
			/* reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE */
			/* reuse GL_SAMPLER_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_MAX_COLOR_TEXTURE_SAMPLES */
			/* reuse GL_MAX_DEPTH_TEXTURE_SAMPLES */
			/* reuse GL_MAX_INTEGER_SAMPLES */

		/* Don't need to reuse tokens from ARB_vertex_array_bgra since they're already in 1.2 core */
	}

	enum // GL_VERSION_3_3
	{
		GL_VERTEX_ATTRIB_ARRAY_DIVISOR    = 0x88FE,

		/* Reuse tokens from ARB_blend_func_extended */

			/* reuse GL_SRC1_COLOR */
			/* reuse GL_ONE_MINUS_SRC1_COLOR */
			/* reuse GL_ONE_MINUS_SRC1_ALPHA */
			/* reuse GL_MAX_DUAL_SOURCE_DRAW_BUFFERS */

		/* Reuse tokens from ARB_explicit_attrib_location (none) */

		/* Reuse tokens from ARB_occlusion_query2 */

			/* reuse GL_ANY_SAMPLES_PASSED */

		/* Reuse tokens from ARB_sampler_objects */

			/* reuse GL_SAMPLER_BINDING */

		/* Reuse tokens from ARB_shader_bit_encoding (none) */

		/* Reuse tokens from ARB_texture_rgb10_a2ui */

			/* reuse GL_RGB10_A2UI */

		/* Reuse tokens from ARB_texture_swizzle */

			/* reuse GL_TEXTURE_SWIZZLE_R */
			/* reuse GL_TEXTURE_SWIZZLE_G */
			/* reuse GL_TEXTURE_SWIZZLE_B */
			/* reuse GL_TEXTURE_SWIZZLE_A */
			/* reuse GL_TEXTURE_SWIZZLE_RGBA */

		/* Reuse tokens from ARB_timer_query */

			/* reuse GL_TIME_ELAPSED */
			/* reuse GL_TIMESTAMP */

		/* Reuse tokens from ARB_vertex_type_2_10_10_10_rev */

			/* reuse GL_INT_2_10_10_10_REV */
	}

	enum // GL_VERSION_4_0
	{
		GL_SAMPLE_SHADING                 = 0x8C36,
		GL_MIN_SAMPLE_SHADING_VALUE       = 0x8C37,
		GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E,
		GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F,
		GL_TEXTURE_CUBE_MAP_ARRAY         = 0x9009,
		GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A,
		GL_PROXY_TEXTURE_CUBE_MAP_ARRAY   = 0x900B,
		GL_SAMPLER_CUBE_MAP_ARRAY         = 0x900C,
		GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW  = 0x900D,
		GL_INT_SAMPLER_CUBE_MAP_ARRAY     = 0x900E,
		GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F,

		/* Reuse tokens from ARB_texture_query_lod (none) */

		/* Reuse tokens from ARB_draw_buffers_blend (none) */

		/* Reuse tokens from ARB_draw_indirect */

			/* reuse GL_DRAW_INDIRECT_BUFFER */
			/* reuse GL_DRAW_INDIRECT_BUFFER_BINDING */

		/* Reuse tokens from ARB_gpu_shader5 */

			/* reuse GL_GEOMETRY_SHADER_INVOCATIONS */
			/* reuse GL_MAX_GEOMETRY_SHADER_INVOCATIONS */
			/* reuse GL_MIN_FRAGMENT_INTERPOLATION_OFFSET */
			/* reuse GL_MAX_FRAGMENT_INTERPOLATION_OFFSET */
			/* reuse GL_FRAGMENT_INTERPOLATION_OFFSET_BITS */
			/* reuse GL_MAX_VERTEX_STREAMS */

		/* Reuse tokens from ARB_gpu_shader_fp64 */

			/* reuse GL_DOUBLE_VEC2 */
			/* reuse GL_DOUBLE_VEC3 */
			/* reuse GL_DOUBLE_VEC4 */
			/* reuse GL_DOUBLE_MAT2 */
			/* reuse GL_DOUBLE_MAT3 */
			/* reuse GL_DOUBLE_MAT4 */
			/* reuse GL_DOUBLE_MAT2x3 */
			/* reuse GL_DOUBLE_MAT2x4 */
			/* reuse GL_DOUBLE_MAT3x2 */
			/* reuse GL_DOUBLE_MAT3x4 */
			/* reuse GL_DOUBLE_MAT4x2 */
			/* reuse GL_DOUBLE_MAT4x3 */

		/* Reuse tokens from ARB_shader_subroutine */

			/* reuse GL_ACTIVE_SUBROUTINES */
			/* reuse GL_ACTIVE_SUBROUTINE_UNIFORMS */
			/* reuse GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS */
			/* reuse GL_ACTIVE_SUBROUTINE_MAX_LENGTH */
			/* reuse GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH */
			/* reuse GL_MAX_SUBROUTINES */
			/* reuse GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS */
			/* reuse GL_NUM_COMPATIBLE_SUBROUTINES */
			/* reuse GL_COMPATIBLE_SUBROUTINES */

		/* Reuse tokens from ARB_tessellation_shader */

			/* reuse GL_PATCHES */
			/* reuse GL_PATCH_VERTICES */
			/* reuse GL_PATCH_DEFAULT_INNER_LEVEL */
			/* reuse GL_PATCH_DEFAULT_OUTER_LEVEL */
			/* reuse GL_TESS_CONTROL_OUTPUT_VERTICES */
			/* reuse GL_TESS_GEN_MODE */
			/* reuse GL_TESS_GEN_SPACING */
			/* reuse GL_TESS_GEN_VERTEX_ORDER */
			/* reuse GL_TESS_GEN_POINT_MODE */
			/* reuse GL_ISOLINES */
			/* reuse GL_FRACTIONAL_ODD */
			/* reuse GL_FRACTIONAL_EVEN */
			/* reuse GL_MAX_PATCH_VERTICES */
			/* reuse GL_MAX_TESS_GEN_LEVEL */
			/* reuse GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS */
			/* reuse GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS */
			/* reuse GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS */
			/* reuse GL_MAX_TESS_PATCH_COMPONENTS */
			/* reuse GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS */
			/* reuse GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS */
			/* reuse GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS */
			/* reuse GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS */
			/* reuse GL_MAX_TESS_CONTROL_INPUT_COMPONENTS */
			/* reuse GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS */
			/* reuse GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS */
			/* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER */
			/* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER */
			/* reuse GL_TESS_EVALUATION_SHADER */
			/* reuse GL_TESS_CONTROL_SHADER */

		/* Reuse tokens from ARB_texture_buffer_object_rgb32 (none) */

		/* Reuse tokens from ARB_transform_feedback2 */

			/* reuse GL_TRANSFORM_FEEDBACK */
			/* reuse GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED */
			/* reuse GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE */
			/* reuse GL_TRANSFORM_FEEDBACK_BINDING */

		/* Reuse tokens from ARB_transform_feedback3 */

			/* reuse GL_MAX_TRANSFORM_FEEDBACK_BUFFERS */
			/* reuse GL_MAX_VERTEX_STREAMS */
	}

	version(none)
	enum // GL_VERSION_4_1
	{
		/* Reuse tokens from ARB_ES2_compatibility */

			/* reuse GL_FIXED */
			/* reuse GL_IMPLEMENTATION_COLOR_READ_TYPE */
			/* reuse GL_IMPLEMENTATION_COLOR_READ_FORMAT */
			/* reuse GL_LOW_FLOAT */
			/* reuse GL_MEDIUM_FLOAT */
			/* reuse GL_HIGH_FLOAT */
			/* reuse GL_LOW_INT */
			/* reuse GL_MEDIUM_INT */
			/* reuse GL_HIGH_INT */
			/* reuse GL_SHADER_COMPILER */
			/* reuse GL_SHADER_BINARY_FORMATS */
			/* reuse GL_NUM_SHADER_BINARY_FORMATS */
			/* reuse GL_MAX_VERTEX_UNIFORM_VECTORS */
			/* reuse GL_MAX_VARYING_VECTORS */
			/* reuse GL_MAX_FRAGMENT_UNIFORM_VECTORS */
			/* reuse GL_RGB565 */

		/* Reuse tokens from ARB_get_program_binary */

			/* reuse GL_PROGRAM_BINARY_RETRIEVABLE_HINT */
			/* reuse GL_PROGRAM_BINARY_LENGTH */
			/* reuse GL_NUM_PROGRAM_BINARY_FORMATS */
			/* reuse GL_PROGRAM_BINARY_FORMATS */

		/* Reuse tokens from ARB_separate_shader_objects */

		/* reuse GL_VERTEX_SHADER_BIT */
			/* reuse GL_FRAGMENT_SHADER_BIT */
			/* reuse GL_GEOMETRY_SHADER_BIT */
			/* reuse GL_TESS_CONTROL_SHADER_BIT */
			/* reuse GL_TESS_EVALUATION_SHADER_BIT */
			/* reuse GL_ALL_SHADER_BITS */
			/* reuse GL_PROGRAM_SEPARABLE */
			/* reuse GL_ACTIVE_PROGRAM */
			/* reuse GL_PROGRAM_PIPELINE_BINDING */

		/* Reuse tokens from ARB_shader_precision (none) */

		/* Reuse tokens from ARB_vertex_attrib_64bit - all are in GL 3.0 and 4.0 already */

		/* Reuse tokens from ARB_viewport_array - some are in GL 1.1 and ARB_provoking_vertex already */

			/* reuse GL_MAX_VIEWPORTS */
			/* reuse GL_VIEWPORT_SUBPIXEL_BITS */
			/* reuse GL_VIEWPORT_BOUNDS_RANGE */
			/* reuse GL_LAYER_PROVOKING_VERTEX */
			/* reuse GL_VIEWPORT_INDEX_PROVOKING_VERTEX */
			/* reuse GL_UNDEFINED_VERTEX */
	}

	version(none)
	enum // GL_VERSION_4_2
	{
		/* Reuse tokens from ARB_base_instance (none) */

		/* Reuse tokens from ARB_shading_language_420pack (none) */

		/* Reuse tokens from ARB_transform_feedback_instanced (none) */

		/* Reuse tokens from ARB_compressed_texture_pixel_storage */

			/* reuse GL_UNPACK_COMPRESSED_BLOCK_WIDTH */
			/* reuse GL_UNPACK_COMPRESSED_BLOCK_HEIGHT */
			/* reuse GL_UNPACK_COMPRESSED_BLOCK_DEPTH */
			/* reuse GL_UNPACK_COMPRESSED_BLOCK_SIZE */
			/* reuse GL_PACK_COMPRESSED_BLOCK_WIDTH */
			/* reuse GL_PACK_COMPRESSED_BLOCK_HEIGHT */
			/* reuse GL_PACK_COMPRESSED_BLOCK_DEPTH */
			/* reuse GL_PACK_COMPRESSED_BLOCK_SIZE */

		/* Reuse tokens from ARB_conservative_depth (none) */

		/* Reuse tokens from ARB_internalformat_query */

			/* reuse GL_NUM_SAMPLE_COUNTS */

		/* Reuse tokens from ARB_map_buffer_alignment */

			/* reuse GL_MIN_MAP_BUFFER_ALIGNMENT */

		/* Reuse tokens from ARB_shader_atomic_counters */

			/* reuse GL_ATOMIC_COUNTER_BUFFER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_BINDING */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_START */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_SIZE */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER */
			/* reuse GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_VERTEX_ATOMIC_COUNTERS */
			/* reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS */
			/* reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS */
			/* reuse GL_MAX_GEOMETRY_ATOMIC_COUNTERS */
			/* reuse GL_MAX_FRAGMENT_ATOMIC_COUNTERS */
			/* reuse GL_MAX_COMBINED_ATOMIC_COUNTERS */
			/* reuse GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE */
			/* reuse GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS */
			/* reuse GL_ACTIVE_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX */
			/* reuse GL_UNSIGNED_INT_ATOMIC_COUNTER */

		/* Reuse tokens from ARB_shader_image_load_store */

			/* reuse GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT */
			/* reuse GL_ELEMENT_ARRAY_BARRIER_BIT */
			/* reuse GL_UNIFORM_BARRIER_BIT */
			/* reuse GL_TEXTURE_FETCH_BARRIER_BIT */
			/* reuse GL_SHADER_IMAGE_ACCESS_BARRIER_BIT */
			/* reuse GL_COMMAND_BARRIER_BIT */
			/* reuse GL_PIXEL_BUFFER_BARRIER_BIT */
			/* reuse GL_TEXTURE_UPDATE_BARRIER_BIT */
			/* reuse GL_BUFFER_UPDATE_BARRIER_BIT */
			/* reuse GL_FRAMEBUFFER_BARRIER_BIT */
			/* reuse GL_TRANSFORM_FEEDBACK_BARRIER_BIT */
			/* reuse GL_ATOMIC_COUNTER_BARRIER_BIT */
			/* reuse GL_ALL_BARRIER_BITS */
			/* reuse GL_MAX_IMAGE_UNITS */
			/* reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS */
			/* reuse GL_IMAGE_BINDING_NAME */
			/* reuse GL_IMAGE_BINDING_LEVEL */
			/* reuse GL_IMAGE_BINDING_LAYERED */
			/* reuse GL_IMAGE_BINDING_LAYER */
			/* reuse GL_IMAGE_BINDING_ACCESS */
			/* reuse GL_IMAGE_1D */
			/* reuse GL_IMAGE_2D */
			/* reuse GL_IMAGE_3D */
			/* reuse GL_IMAGE_2D_RECT */
			/* reuse GL_IMAGE_CUBE */
			/* reuse GL_IMAGE_BUFFER */
			/* reuse GL_IMAGE_1D_ARRAY */
			/* reuse GL_IMAGE_2D_ARRAY */
			/* reuse GL_IMAGE_CUBE_MAP_ARRAY */
			/* reuse GL_IMAGE_2D_MULTISAMPLE */
			/* reuse GL_IMAGE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_INT_IMAGE_1D */
			/* reuse GL_INT_IMAGE_2D */
			/* reuse GL_INT_IMAGE_3D */
			/* reuse GL_INT_IMAGE_2D_RECT */
			/* reuse GL_INT_IMAGE_CUBE */
			/* reuse GL_INT_IMAGE_BUFFER */
			/* reuse GL_INT_IMAGE_1D_ARRAY */
			/* reuse GL_INT_IMAGE_2D_ARRAY */
			/* reuse GL_INT_IMAGE_CUBE_MAP_ARRAY */
			/* reuse GL_INT_IMAGE_2D_MULTISAMPLE */
			/* reuse GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_UNSIGNED_INT_IMAGE_1D */
			/* reuse GL_UNSIGNED_INT_IMAGE_2D */
			/* reuse GL_UNSIGNED_INT_IMAGE_3D */
			/* reuse GL_UNSIGNED_INT_IMAGE_2D_RECT */
			/* reuse GL_UNSIGNED_INT_IMAGE_CUBE */
			/* reuse GL_UNSIGNED_INT_IMAGE_BUFFER */
			/* reuse GL_UNSIGNED_INT_IMAGE_1D_ARRAY */
			/* reuse GL_UNSIGNED_INT_IMAGE_2D_ARRAY */
			/* reuse GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY */
			/* reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE */
			/* reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_MAX_IMAGE_SAMPLES */
			/* reuse GL_IMAGE_BINDING_FORMAT */
			/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE */
			/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE */
			/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS */
			/* reuse GL_MAX_VERTEX_IMAGE_UNIFORMS */
			/* reuse GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS */
			/* reuse GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS */
			/* reuse GL_MAX_GEOMETRY_IMAGE_UNIFORMS */
			/* reuse GL_MAX_FRAGMENT_IMAGE_UNIFORMS */
			/* reuse GL_MAX_COMBINED_IMAGE_UNIFORMS */

		/* Reuse tokens from ARB_shading_language_packing (none) */

		/* Reuse tokens from ARB_texture_storage */

			/* reuse GL_TEXTURE_IMMUTABLE_FORMAT */
	}

	enum // GL_VERSION_4_3
	{
		GL_NUM_SHADING_LANGUAGE_VERSIONS  = 0x82E9,
		GL_VERTEX_ATTRIB_ARRAY_LONG       = 0x874E,

		/* Reuse tokens from ARB_arrays_of_arrays (none, GLSL only) */

		/* Reuse tokens from ARB_fragment_layer_viewport (none, GLSL only) */

		/* Reuse tokens from ARB_shader_image_size (none, GLSL only) */

		/* Reuse tokens from ARB_ES3_compatibility */

			/* reuse GL_COMPRESSED_RGB8_ETC2 */
			/* reuse GL_COMPRESSED_SRGB8_ETC2 */
			/* reuse GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 */
			/* reuse GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 */
			/* reuse GL_COMPRESSED_RGBA8_ETC2_EAC */
			/* reuse GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC */
			/* reuse GL_COMPRESSED_R11_EAC */
			/* reuse GL_COMPRESSED_SIGNED_R11_EAC */
			/* reuse GL_COMPRESSED_RG11_EAC */
			/* reuse GL_COMPRESSED_SIGNED_RG11_EAC */
			/* reuse GL_PRIMITIVE_RESTART_FIXED_INDEX */
			/* reuse GL_ANY_SAMPLES_PASSED_CONSERVATIVE */
			/* reuse GL_MAX_ELEMENT_INDEX */

		/* Reuse tokens from ARB_clear_buffer_object (none) */

		/* Reuse tokens from ARB_compute_shader */

			/* reuse GL_COMPUTE_SHADER */
			/* reuse GL_MAX_COMPUTE_UNIFORM_BLOCKS */
			/* reuse GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS */
			/* reuse GL_MAX_COMPUTE_IMAGE_UNIFORMS */
			/* reuse GL_MAX_COMPUTE_SHARED_MEMORY_SIZE */
			/* reuse GL_MAX_COMPUTE_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS */
			/* reuse GL_MAX_COMPUTE_ATOMIC_COUNTERS */
			/* reuse GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS */
			/* reuse GL_MAX_COMPUTE_LOCAL_INVOCATIONS */
			/* reuse GL_MAX_COMPUTE_WORK_GROUP_COUNT */
			/* reuse GL_MAX_COMPUTE_WORK_GROUP_SIZE */
			/* reuse GL_COMPUTE_LOCAL_WORK_SIZE */
			/* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER */
			/* reuse GL_DISPATCH_INDIRECT_BUFFER */
			/* reuse GL_DISPATCH_INDIRECT_BUFFER_BINDING */

		/* Reuse tokens from ARB_copy_image (none) */

		/* Reuse tokens from KHR_debug */

			/* reuse GL_DEBUG_OUTPUT_SYNCHRONOUS */
			/* reuse GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH */
			/* reuse GL_DEBUG_CALLBACK_FUNCTION */
			/* reuse GL_DEBUG_CALLBACK_USER_PARAM */
			/* reuse GL_DEBUG_SOURCE_API */
			/* reuse GL_DEBUG_SOURCE_WINDOW_SYSTEM */
			/* reuse GL_DEBUG_SOURCE_SHADER_COMPILER */
			/* reuse GL_DEBUG_SOURCE_THIRD_PARTY */
			/* reuse GL_DEBUG_SOURCE_APPLICATION */
			/* reuse GL_DEBUG_SOURCE_OTHER */
			/* reuse GL_DEBUG_TYPE_ERROR */
			/* reuse GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR */
			/* reuse GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR */
			/* reuse GL_DEBUG_TYPE_PORTABILITY */
			/* reuse GL_DEBUG_TYPE_PERFORMANCE */
			/* reuse GL_DEBUG_TYPE_OTHER */
			/* reuse GL_MAX_DEBUG_MESSAGE_LENGTH */
			/* reuse GL_MAX_DEBUG_LOGGED_MESSAGES */
			/* reuse GL_DEBUG_LOGGED_MESSAGES */
			/* reuse GL_DEBUG_SEVERITY_HIGH */
			/* reuse GL_DEBUG_SEVERITY_MEDIUM */
			/* reuse GL_DEBUG_SEVERITY_LOW */
			/* reuse GL_DEBUG_TYPE_MARKER */
			/* reuse GL_DEBUG_TYPE_PUSH_GROUP */
			/* reuse GL_DEBUG_TYPE_POP_GROUP */
			/* reuse GL_DEBUG_SEVERITY_NOTIFICATION */
			/* reuse GL_MAX_DEBUG_GROUP_STACK_DEPTH */
			/* reuse GL_DEBUG_GROUP_STACK_DEPTH */
			/* reuse GL_BUFFER */
			/* reuse GL_SHADER */
			/* reuse GL_PROGRAM */
			/* reuse GL_QUERY */
			/* reuse GL_PROGRAM_PIPELINE */
			/* reuse GL_SAMPLER */
			/* reuse GL_DISPLAY_LIST */
			/* reuse GL_MAX_LABEL_LENGTH */
			/* reuse GL_DEBUG_OUTPUT */
			/* reuse GL_CONTEXT_FLAG_DEBUG_BIT */
			/* reuse GL_STACK_UNDERFLOW */
			/* reuse GL_STACK_OVERFLOW */

		/* Reuse tokens from ARB_explicit_uniform_location */

			/* reuse GL_MAX_UNIFORM_LOCATIONS */

		/* Reuse tokens from ARB_framebuffer_no_attachments */

			/* reuse GL_FRAMEBUFFER_DEFAULT_WIDTH */
			/* reuse GL_FRAMEBUFFER_DEFAULT_HEIGHT */
			/* reuse GL_FRAMEBUFFER_DEFAULT_LAYERS */
			/* reuse GL_FRAMEBUFFER_DEFAULT_SAMPLES */
			/* reuse GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS */
			/* reuse GL_MAX_FRAMEBUFFER_WIDTH */
			/* reuse GL_MAX_FRAMEBUFFER_HEIGHT */
			/* reuse GL_MAX_FRAMEBUFFER_LAYERS */
			/* reuse GL_MAX_FRAMEBUFFER_SAMPLES */

		/* Reuse tokens from ARB_internalformat_query2 */

			/* reuse GL_INTERNALFORMAT_SUPPORTED */
			/* reuse GL_INTERNALFORMAT_PREFERRED */
			/* reuse GL_INTERNALFORMAT_RED_SIZE */
			/* reuse GL_INTERNALFORMAT_GREEN_SIZE */
			/* reuse GL_INTERNALFORMAT_BLUE_SIZE */
			/* reuse GL_INTERNALFORMAT_ALPHA_SIZE */
			/* reuse GL_INTERNALFORMAT_DEPTH_SIZE */
			/* reuse GL_INTERNALFORMAT_STENCIL_SIZE */
			/* reuse GL_INTERNALFORMAT_SHARED_SIZE */
			/* reuse GL_INTERNALFORMAT_RED_TYPE */
			/* reuse GL_INTERNALFORMAT_GREEN_TYPE */
			/* reuse GL_INTERNALFORMAT_BLUE_TYPE */
			/* reuse GL_INTERNALFORMAT_ALPHA_TYPE */
			/* reuse GL_INTERNALFORMAT_DEPTH_TYPE */
			/* reuse GL_INTERNALFORMAT_STENCIL_TYPE */
			/* reuse GL_MAX_WIDTH */
			/* reuse GL_MAX_HEIGHT */
			/* reuse GL_MAX_DEPTH */
			/* reuse GL_MAX_LAYERS */
			/* reuse GL_MAX_COMBINED_DIMENSIONS */
			/* reuse GL_COLOR_COMPONENTS */
			/* reuse GL_DEPTH_COMPONENTS */
			/* reuse GL_STENCIL_COMPONENTS */
			/* reuse GL_COLOR_RENDERABLE */
			/* reuse GL_DEPTH_RENDERABLE */
			/* reuse GL_STENCIL_RENDERABLE */
			/* reuse GL_FRAMEBUFFER_RENDERABLE */
			/* reuse GL_FRAMEBUFFER_RENDERABLE_LAYERED */
			/* reuse GL_FRAMEBUFFER_BLEND */
			/* reuse GL_READ_PIXELS */
			/* reuse GL_READ_PIXELS_FORMAT */
			/* reuse GL_READ_PIXELS_TYPE */
			/* reuse GL_TEXTURE_IMAGE_FORMAT */
			/* reuse GL_TEXTURE_IMAGE_TYPE */
			/* reuse GL_GET_TEXTURE_IMAGE_FORMAT */
			/* reuse GL_GET_TEXTURE_IMAGE_TYPE */
			/* reuse GL_MIPMAP */
			/* reuse GL_MANUAL_GENERATE_MIPMAP */
			/* reuse GL_AUTO_GENERATE_MIPMAP */
			/* reuse GL_COLOR_ENCODING */
			/* reuse GL_SRGB_READ */
			/* reuse GL_SRGB_WRITE */
			/* reuse GL_FILTER */
			/* reuse GL_VERTEX_TEXTURE */
			/* reuse GL_TESS_CONTROL_TEXTURE */
			/* reuse GL_TESS_EVALUATION_TEXTURE */
			/* reuse GL_GEOMETRY_TEXTURE */
			/* reuse GL_FRAGMENT_TEXTURE */
			/* reuse GL_COMPUTE_TEXTURE */
			/* reuse GL_TEXTURE_SHADOW */
			/* reuse GL_TEXTURE_GATHER */
			/* reuse GL_TEXTURE_GATHER_SHADOW */
			/* reuse GL_SHADER_IMAGE_LOAD */
			/* reuse GL_SHADER_IMAGE_STORE */
			/* reuse GL_SHADER_IMAGE_ATOMIC */
			/* reuse GL_IMAGE_TEXEL_SIZE */
			/* reuse GL_IMAGE_COMPATIBILITY_CLASS */
			/* reuse GL_IMAGE_PIXEL_FORMAT */
			/* reuse GL_IMAGE_PIXEL_TYPE */
			/* reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST */
			/* reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST */
			/* reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE */
			/* reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE */
			/* reuse GL_TEXTURE_COMPRESSED_BLOCK_WIDTH */
			/* reuse GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT */
			/* reuse GL_TEXTURE_COMPRESSED_BLOCK_SIZE */
			/* reuse GL_CLEAR_BUFFER */
			/* reuse GL_TEXTURE_VIEW */
			/* reuse GL_VIEW_COMPATIBILITY_CLASS */
			/* reuse GL_FULL_SUPPORT */
			/* reuse GL_CAVEAT_SUPPORT */
			/* reuse GL_IMAGE_CLASS_4_X_32 */
			/* reuse GL_IMAGE_CLASS_2_X_32 */
			/* reuse GL_IMAGE_CLASS_1_X_32 */
			/* reuse GL_IMAGE_CLASS_4_X_16 */
			/* reuse GL_IMAGE_CLASS_2_X_16 */
			/* reuse GL_IMAGE_CLASS_1_X_16 */
			/* reuse GL_IMAGE_CLASS_4_X_8 */
			/* reuse GL_IMAGE_CLASS_2_X_8 */
			/* reuse GL_IMAGE_CLASS_1_X_8 */
			/* reuse GL_IMAGE_CLASS_11_11_10 */
			/* reuse GL_IMAGE_CLASS_10_10_10_2 */
			/* reuse GL_VIEW_CLASS_128_BITS */
			/* reuse GL_VIEW_CLASS_96_BITS */
			/* reuse GL_VIEW_CLASS_64_BITS */
			/* reuse GL_VIEW_CLASS_48_BITS */
			/* reuse GL_VIEW_CLASS_32_BITS */
			/* reuse GL_VIEW_CLASS_24_BITS */
			/* reuse GL_VIEW_CLASS_16_BITS */
			/* reuse GL_VIEW_CLASS_8_BITS */
			/* reuse GL_VIEW_CLASS_S3TC_DXT1_RGB */
			/* reuse GL_VIEW_CLASS_S3TC_DXT1_RGBA */
			/* reuse GL_VIEW_CLASS_S3TC_DXT3_RGBA */
			/* reuse GL_VIEW_CLASS_S3TC_DXT5_RGBA */
			/* reuse GL_VIEW_CLASS_RGTC1_RED */
			/* reuse GL_VIEW_CLASS_RGTC2_RG */
			/* reuse GL_VIEW_CLASS_BPTC_UNORM */
			/* reuse GL_VIEW_CLASS_BPTC_FLOAT */

		/* Reuse tokens from ARB_invalidate_subdata (none) */

		/* Reuse tokens from ARB_multi_draw_indirect (none) */

		/* Reuse tokens from ARB_program_interface_query */

			/* reuse GL_UNIFORM */
			/* reuse GL_UNIFORM_BLOCK */
			/* reuse GL_PROGRAM_INPUT */
			/* reuse GL_PROGRAM_OUTPUT */
			/* reuse GL_BUFFER_VARIABLE */
			/* reuse GL_SHADER_STORAGE_BLOCK */
			/* reuse GL_VERTEX_SUBROUTINE */
			/* reuse GL_TESS_CONTROL_SUBROUTINE */
			/* reuse GL_TESS_EVALUATION_SUBROUTINE */
			/* reuse GL_GEOMETRY_SUBROUTINE */
			/* reuse GL_FRAGMENT_SUBROUTINE */
			/* reuse GL_COMPUTE_SUBROUTINE */
			/* reuse GL_VERTEX_SUBROUTINE_UNIFORM */
			/* reuse GL_TESS_CONTROL_SUBROUTINE_UNIFORM */
			/* reuse GL_TESS_EVALUATION_SUBROUTINE_UNIFORM */
			/* reuse GL_GEOMETRY_SUBROUTINE_UNIFORM */
			/* reuse GL_FRAGMENT_SUBROUTINE_UNIFORM */
			/* reuse GL_COMPUTE_SUBROUTINE_UNIFORM */
			/* reuse GL_TRANSFORM_FEEDBACK_VARYING */
			/* reuse GL_ACTIVE_RESOURCES */
			/* reuse GL_MAX_NAME_LENGTH */
			/* reuse GL_MAX_NUM_ACTIVE_VARIABLES */
			/* reuse GL_MAX_NUM_COMPATIBLE_SUBROUTINES */
			/* reuse GL_NAME_LENGTH */
			/* reuse GL_TYPE */
			/* reuse GL_ARRAY_SIZE */
			/* reuse GL_OFFSET */
			/* reuse GL_BLOCK_INDEX */
			/* reuse GL_ARRAY_STRIDE */
			/* reuse GL_MATRIX_STRIDE */
			/* reuse GL_IS_ROW_MAJOR */
			/* reuse GL_ATOMIC_COUNTER_BUFFER_INDEX */
			/* reuse GL_BUFFER_BINDING */
			/* reuse GL_BUFFER_DATA_SIZE */
			/* reuse GL_NUM_ACTIVE_VARIABLES */
			/* reuse GL_ACTIVE_VARIABLES */
			/* reuse GL_REFERENCED_BY_VERTEX_SHADER */
			/* reuse GL_REFERENCED_BY_TESS_CONTROL_SHADER */
			/* reuse GL_REFERENCED_BY_TESS_EVALUATION_SHADER */
			/* reuse GL_REFERENCED_BY_GEOMETRY_SHADER */
			/* reuse GL_REFERENCED_BY_FRAGMENT_SHADER */
			/* reuse GL_REFERENCED_BY_COMPUTE_SHADER */
			/* reuse GL_TOP_LEVEL_ARRAY_SIZE */
			/* reuse GL_TOP_LEVEL_ARRAY_STRIDE */
			/* reuse GL_LOCATION */
			/* reuse GL_LOCATION_INDEX */
			/* reuse GL_IS_PER_PATCH */

		/* Reuse tokens from ARB_robust_buffer_access_behavior (none) */

		/* Reuse tokens from ARB_shader_storage_buffer_object */

			/* reuse GL_SHADER_STORAGE_BUFFER */
			/* reuse GL_SHADER_STORAGE_BUFFER_BINDING */
			/* reuse GL_SHADER_STORAGE_BUFFER_START */
			/* reuse GL_SHADER_STORAGE_BUFFER_SIZE */
			/* reuse GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS */
			/* reuse GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS */
			/* reuse GL_MAX_SHADER_STORAGE_BLOCK_SIZE */
			/* reuse GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT */
			/* reuse GL_SHADER_STORAGE_BARRIER_BIT */
			/* reuse GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES */

		/* Reuse tokens from ARB_stencil_texturing */

			/* reuse GL_DEPTH_STENCIL_TEXTURE_MODE */

		/* Reuse tokens from ARB_texture_buffer_range */

			/* reuse GL_TEXTURE_BUFFER_OFFSET */
			/* reuse GL_TEXTURE_BUFFER_SIZE */
			/* reuse GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT */

		/* Reuse tokens from ARB_texture_query_levels (none) */

		/* Reuse tokens from ARB_texture_storage_multisample (none) */

		/* Reuse tokens from ARB_texture_view */

			/* reuse GL_TEXTURE_VIEW_MIN_LEVEL */
			/* reuse GL_TEXTURE_VIEW_NUM_LEVELS */
			/* reuse GL_TEXTURE_VIEW_MIN_LAYER */
			/* reuse GL_TEXTURE_VIEW_NUM_LAYERS */
			/* reuse GL_TEXTURE_IMMUTABLE_LEVELS */

		/* Reuse tokens from ARB_vertex_attrib_binding */

			/* reuse GL_VERTEX_ATTRIB_BINDING */
			/* reuse GL_VERTEX_ATTRIB_RELATIVE_OFFSET */
			/* reuse GL_VERTEX_BINDING_DIVISOR */
			/* reuse GL_VERTEX_BINDING_OFFSET */
			/* reuse GL_VERTEX_BINDING_STRIDE */
			/* reuse GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET */
			/* reuse GL_MAX_VERTEX_ATTRIB_BINDINGS */
	}

	enum // GL_ARB_imaging
	{
		GL_CONSTANT_COLOR                 = 0x8001,
		GL_ONE_MINUS_CONSTANT_COLOR       = 0x8002,
		GL_CONSTANT_ALPHA                 = 0x8003,
		GL_ONE_MINUS_CONSTANT_ALPHA       = 0x8004,
		GL_BLEND_COLOR                    = 0x8005,
		GL_FUNC_ADD                       = 0x8006,
		GL_MIN                            = 0x8007,
		GL_MAX                            = 0x8008,
		GL_BLEND_EQUATION                 = 0x8009,
		GL_FUNC_SUBTRACT                  = 0x800A,
		GL_FUNC_REVERSE_SUBTRACT          = 0x800B,
	}

	enum // GL_ARB_depth_buffer_float
	{
		GL_DEPTH_COMPONENT32F             = 0x8CAC,
		GL_DEPTH32F_STENCIL8              = 0x8CAD,
		GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD,
	}

	enum // GL_ARB_framebuffer_object
	{
		GL_INVALID_FRAMEBUFFER_OPERATION  = 0x0506,
		GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210,
		GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211,
		GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212,
		GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213,
		GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214,
		GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215,
		GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216,
		GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217,
		GL_FRAMEBUFFER_DEFAULT            = 0x8218,
		GL_FRAMEBUFFER_UNDEFINED          = 0x8219,
		GL_DEPTH_STENCIL_ATTACHMENT       = 0x821A,
		GL_MAX_RENDERBUFFER_SIZE          = 0x84E8,
		GL_DEPTH_STENCIL                  = 0x84F9,
		GL_UNSIGNED_INT_24_8              = 0x84FA,
		GL_DEPTH24_STENCIL8               = 0x88F0,
		GL_TEXTURE_STENCIL_SIZE           = 0x88F1,
		GL_TEXTURE_RED_TYPE               = 0x8C10,
		GL_TEXTURE_GREEN_TYPE             = 0x8C11,
		GL_TEXTURE_BLUE_TYPE              = 0x8C12,
		GL_TEXTURE_ALPHA_TYPE             = 0x8C13,
		GL_TEXTURE_DEPTH_TYPE             = 0x8C16,
		GL_UNSIGNED_NORMALIZED            = 0x8C17,
		GL_FRAMEBUFFER_BINDING            = 0x8CA6,
		GL_DRAW_FRAMEBUFFER_BINDING       = GL_FRAMEBUFFER_BINDING,
		GL_RENDERBUFFER_BINDING           = 0x8CA7,
		GL_READ_FRAMEBUFFER               = 0x8CA8,
		GL_DRAW_FRAMEBUFFER               = 0x8CA9,
		GL_READ_FRAMEBUFFER_BINDING       = 0x8CAA,
		GL_RENDERBUFFER_SAMPLES           = 0x8CAB,
		GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0,
		GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1,
		GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2,
		GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3,
		GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4,
		GL_FRAMEBUFFER_COMPLETE           = 0x8CD5,
		GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6,
		GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7,
		GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB,
		GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC,
		GL_FRAMEBUFFER_UNSUPPORTED        = 0x8CDD,
		GL_MAX_COLOR_ATTACHMENTS          = 0x8CDF,
		GL_COLOR_ATTACHMENT0              = 0x8CE0,
		GL_COLOR_ATTACHMENT1              = 0x8CE1,
		GL_COLOR_ATTACHMENT2              = 0x8CE2,
		GL_COLOR_ATTACHMENT3              = 0x8CE3,
		GL_COLOR_ATTACHMENT4              = 0x8CE4,
		GL_COLOR_ATTACHMENT5              = 0x8CE5,
		GL_COLOR_ATTACHMENT6              = 0x8CE6,
		GL_COLOR_ATTACHMENT7              = 0x8CE7,
		GL_COLOR_ATTACHMENT8              = 0x8CE8,
		GL_COLOR_ATTACHMENT9              = 0x8CE9,
		GL_COLOR_ATTACHMENT10             = 0x8CEA,
		GL_COLOR_ATTACHMENT11             = 0x8CEB,
		GL_COLOR_ATTACHMENT12             = 0x8CEC,
		GL_COLOR_ATTACHMENT13             = 0x8CED,
		GL_COLOR_ATTACHMENT14             = 0x8CEE,
		GL_COLOR_ATTACHMENT15             = 0x8CEF,
		GL_DEPTH_ATTACHMENT               = 0x8D00,
		GL_STENCIL_ATTACHMENT             = 0x8D20,
		GL_FRAMEBUFFER                    = 0x8D40,
		GL_RENDERBUFFER                   = 0x8D41,
		GL_RENDERBUFFER_WIDTH             = 0x8D42,
		GL_RENDERBUFFER_HEIGHT            = 0x8D43,
		GL_RENDERBUFFER_INTERNAL_FORMAT   = 0x8D44,
		GL_STENCIL_INDEX1                 = 0x8D46,
		GL_STENCIL_INDEX4                 = 0x8D47,
		GL_STENCIL_INDEX8                 = 0x8D48,
		GL_STENCIL_INDEX16                = 0x8D49,
		GL_RENDERBUFFER_RED_SIZE          = 0x8D50,
		GL_RENDERBUFFER_GREEN_SIZE        = 0x8D51,
		GL_RENDERBUFFER_BLUE_SIZE         = 0x8D52,
		GL_RENDERBUFFER_ALPHA_SIZE        = 0x8D53,
		GL_RENDERBUFFER_DEPTH_SIZE        = 0x8D54,
		GL_RENDERBUFFER_STENCIL_SIZE      = 0x8D55,
		GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56,
		GL_MAX_SAMPLES                    = 0x8D57,
	}

	enum // GL_ARB_framebuffer_sRGB
	{
		GL_FRAMEBUFFER_SRGB               = 0x8DB9,
	}

	enum // GL_ARB_half_float_vertex
	{
		GL_HALF_FLOAT                     = 0x140B,
	}

	enum // GL_ARB_map_buffer_range
	{
		GL_MAP_READ_BIT                   = 0x0001,
		GL_MAP_WRITE_BIT                  = 0x0002,
		GL_MAP_INVALIDATE_RANGE_BIT       = 0x0004,
		GL_MAP_INVALIDATE_BUFFER_BIT      = 0x0008,
		GL_MAP_FLUSH_EXPLICIT_BIT         = 0x0010,
		GL_MAP_UNSYNCHRONIZED_BIT         = 0x0020,
	}

	enum // GL_ARB_texture_compression_rgtc
	{
		GL_COMPRESSED_RED_RGTC1           = 0x8DBB,
		GL_COMPRESSED_SIGNED_RED_RGTC1    = 0x8DBC,
		GL_COMPRESSED_RG_RGTC2            = 0x8DBD,
		GL_COMPRESSED_SIGNED_RG_RGTC2     = 0x8DBE,
	}

	enum // GL_ARB_texture_rg
	{
		GL_RG                             = 0x8227,
		GL_RG_INTEGER                     = 0x8228,
		GL_R8                             = 0x8229,
		GL_R16                            = 0x822A,
		GL_RG8                            = 0x822B,
		GL_RG16                           = 0x822C,
		GL_R16F                           = 0x822D,
		GL_R32F                           = 0x822E,
		GL_RG16F                          = 0x822F,
		GL_RG32F                          = 0x8230,
		GL_R8I                            = 0x8231,
		GL_R8UI                           = 0x8232,
		GL_R16I                           = 0x8233,
		GL_R16UI                          = 0x8234,
		GL_R32I                           = 0x8235,
		GL_R32UI                          = 0x8236,
		GL_RG8I                           = 0x8237,
		GL_RG8UI                          = 0x8238,
		GL_RG16I                          = 0x8239,
		GL_RG16UI                         = 0x823A,
		GL_RG32I                          = 0x823B,
		GL_RG32UI                         = 0x823C,
	}

	enum // GL_ARB_vertex_array_object
	{
		GL_VERTEX_ARRAY_BINDING           = 0x85B5,
	}

	enum // GL_ARB_uniform_buffer_object
	{
		GL_UNIFORM_BUFFER                 = 0x8A11,
		GL_UNIFORM_BUFFER_BINDING         = 0x8A28,
		GL_UNIFORM_BUFFER_START           = 0x8A29,
		GL_UNIFORM_BUFFER_SIZE            = 0x8A2A,
		GL_MAX_VERTEX_UNIFORM_BLOCKS      = 0x8A2B,
		GL_MAX_GEOMETRY_UNIFORM_BLOCKS    = 0x8A2C,
		GL_MAX_FRAGMENT_UNIFORM_BLOCKS    = 0x8A2D,
		GL_MAX_COMBINED_UNIFORM_BLOCKS    = 0x8A2E,
		GL_MAX_UNIFORM_BUFFER_BINDINGS    = 0x8A2F,
		GL_MAX_UNIFORM_BLOCK_SIZE         = 0x8A30,
		GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31,
		GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32,
		GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33,
		GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34,
		GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35,
		GL_ACTIVE_UNIFORM_BLOCKS          = 0x8A36,
		GL_UNIFORM_TYPE                   = 0x8A37,
		GL_UNIFORM_SIZE                   = 0x8A38,
		GL_UNIFORM_NAME_LENGTH            = 0x8A39,
		GL_UNIFORM_BLOCK_INDEX            = 0x8A3A,
		GL_UNIFORM_OFFSET                 = 0x8A3B,
		GL_UNIFORM_ARRAY_STRIDE           = 0x8A3C,
		GL_UNIFORM_MATRIX_STRIDE          = 0x8A3D,
		GL_UNIFORM_IS_ROW_MAJOR           = 0x8A3E,
		GL_UNIFORM_BLOCK_BINDING          = 0x8A3F,
		GL_UNIFORM_BLOCK_DATA_SIZE        = 0x8A40,
		GL_UNIFORM_BLOCK_NAME_LENGTH      = 0x8A41,
		GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS  = 0x8A42,
		GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43,
		GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44,
		GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45,
		GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46,
		GL_INVALID_INDEX                  = 0xFFFFFFFFu,
	}

	enum // GL_ARB_copy_buffer
	{
		GL_COPY_READ_BUFFER_BINDING       = 0x8F36,
		GL_COPY_READ_BUFFER               = GL_COPY_READ_BUFFER_BINDING,
		GL_COPY_WRITE_BUFFER_BINDING      = 0x8F37,
		GL_COPY_WRITE_BUFFER              = GL_COPY_WRITE_BUFFER_BINDING,
	}

	enum // GL_ARB_depth_clamp
	{
		GL_DEPTH_CLAMP                    = 0x864F,
	}

	version(none)
	enum // GL_ARB_draw_elements_base_vertex
	{
	}

	version(none)
	enum // GL_ARB_fragment_coord_conventions
	{
	}

	enum // GL_ARB_provoking_vertex
	{
		GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C,
		GL_FIRST_VERTEX_CONVENTION        = 0x8E4D,
		GL_LAST_VERTEX_CONVENTION         = 0x8E4E,
		GL_PROVOKING_VERTEX               = 0x8E4F,
	}

	enum // GL_ARB_seamless_cube_map
	{
		GL_TEXTURE_CUBE_MAP_SEAMLESS      = 0x884F,
	}

	enum // GL_ARB_sync
	{
		GL_MAX_SERVER_WAIT_TIMEOUT        = 0x9111,
		GL_OBJECT_TYPE                    = 0x9112,
		GL_SYNC_CONDITION                 = 0x9113,
		GL_SYNC_STATUS                    = 0x9114,
		GL_SYNC_FLAGS                     = 0x9115,
		GL_SYNC_FENCE                     = 0x9116,
		GL_SYNC_GPU_COMMANDS_COMPLETE     = 0x9117,
		GL_UNSIGNALED                     = 0x9118,
		GL_SIGNALED                       = 0x9119,
		GL_ALREADY_SIGNALED               = 0x911A,
		GL_TIMEOUT_EXPIRED                = 0x911B,
		GL_CONDITION_SATISFIED            = 0x911C,
		GL_WAIT_FAILED                    = 0x911D,
		GL_SYNC_FLUSH_COMMANDS_BIT        = 0x00000001,
		GL_TIMEOUT_IGNORED                = 0xFFFFFFFFFFFFFFFFUL,
	}

	enum // GL_ARB_texture_multisample
	{
		GL_SAMPLE_POSITION                = 0x8E50,
		GL_SAMPLE_MASK                    = 0x8E51,
		GL_SAMPLE_MASK_VALUE              = 0x8E52,
		GL_MAX_SAMPLE_MASK_WORDS          = 0x8E59,
		GL_TEXTURE_2D_MULTISAMPLE         = 0x9100,
		GL_PROXY_TEXTURE_2D_MULTISAMPLE   = 0x9101,
		GL_TEXTURE_2D_MULTISAMPLE_ARRAY   = 0x9102,
		GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103,
		GL_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104,
		GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105,
		GL_TEXTURE_SAMPLES                = 0x9106,
		GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107,
		GL_SAMPLER_2D_MULTISAMPLE         = 0x9108,
		GL_INT_SAMPLER_2D_MULTISAMPLE     = 0x9109,
		GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A,
		GL_SAMPLER_2D_MULTISAMPLE_ARRAY   = 0x910B,
		GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C,
		GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D,
		GL_MAX_COLOR_TEXTURE_SAMPLES      = 0x910E,
		GL_MAX_DEPTH_TEXTURE_SAMPLES      = 0x910F,
		GL_MAX_INTEGER_SAMPLES            = 0x9110,
	}

	version(none)
	enum // GL_ARB_vertex_array_bgra
	{
			/* reuse GL_BGRA */
	}

	version(none)
	enum // GL_ARB_draw_buffers_blend
	{
	}

	enum // GL_ARB_sample_shading
	{
		GL_SAMPLE_SHADING_ARB             = 0x8C36,
		GL_MIN_SAMPLE_SHADING_VALUE_ARB   = 0x8C37,
	}

	enum // GL_ARB_texture_cube_map_array
	{
		GL_TEXTURE_CUBE_MAP_ARRAY_ARB     = 0x9009,
		GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB = 0x900A,
		GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x900B,
		GL_SAMPLER_CUBE_MAP_ARRAY_ARB     = 0x900C,
		GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB = 0x900D,
		GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900E,
		GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900F,
	}

	enum // GL_ARB_texture_gather
	{
		GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5E,
		GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5F,
		GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = 0x8F9F,
	}

	version(none)
	enum // GL_ARB_texture_query_lod
	{
	}

	enum // GL_ARB_shading_language_include
	{
		GL_SHADER_INCLUDE_ARB             = 0x8DAE,
		GL_NAMED_STRING_LENGTH_ARB        = 0x8DE9,
		GL_NAMED_STRING_TYPE_ARB          = 0x8DEA,
	}

	enum // GL_ARB_texture_compression_bptc
	{
		GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = 0x8E8C,
		GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = 0x8E8D,
		GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = 0x8E8E,
		GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = 0x8E8F,
	}

	enum // GL_ARB_blend_func_extended
	{
		GL_SRC1_COLOR                     = 0x88F9,
			/* reuse GL_SRC1_ALPHA */
		GL_ONE_MINUS_SRC1_COLOR           = 0x88FA,
		GL_ONE_MINUS_SRC1_ALPHA           = 0x88FB,
		GL_MAX_DUAL_SOURCE_DRAW_BUFFERS   = 0x88FC,
	}

	version(none)
	enum // GL_ARB_explicit_attrib_location
	{
	}

	enum // GL_ARB_occlusion_query2
	{
		GL_ANY_SAMPLES_PASSED             = 0x8C2F,
	}

	enum // GL_ARB_sampler_objects
	{
		GL_SAMPLER_BINDING                = 0x8919,
	}

	version(none)
	enum // GL_ARB_shader_bit_encoding
	{
	}

	enum // GL_ARB_texture_rgb10_a2ui
	{
		GL_RGB10_A2UI                     = 0x906F,
	}

	enum // GL_ARB_texture_swizzle
	{
		GL_TEXTURE_SWIZZLE_R              = 0x8E42,
		GL_TEXTURE_SWIZZLE_G              = 0x8E43,
		GL_TEXTURE_SWIZZLE_B              = 0x8E44,
		GL_TEXTURE_SWIZZLE_A              = 0x8E45,
		GL_TEXTURE_SWIZZLE_RGBA           = 0x8E46,
	}

	enum // GL_ARB_timer_query
	{
		GL_TIME_ELAPSED                   = 0x88BF,
		GL_TIMESTAMP                      = 0x8E28,
	}

	enum // GL_ARB_vertex_type_2_10_10_10_rev
	{
			/* reuse GL_UNSIGNED_INT_2_10_10_10_REV */

		GL_INT_2_10_10_10_REV             = 0x8D9F,
	}

	enum // GL_ARB_draw_indirect
	{
		GL_DRAW_INDIRECT_BUFFER           = 0x8F3F,
		GL_DRAW_INDIRECT_BUFFER_BINDING   = 0x8F43,
	}

	enum // GL_ARB_gpu_shader5
	{
		GL_GEOMETRY_SHADER_INVOCATIONS    = 0x887F,
		GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A,
		GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B,
		GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C,
		GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D,
			/* reuse GL_MAX_VERTEX_STREAMS */
	}

	enum // GL_ARB_gpu_shader_fp64
	{
			/* reuse GL_DOUBLE */

		GL_DOUBLE_VEC2                    = 0x8FFC,
		GL_DOUBLE_VEC3                    = 0x8FFD,
		GL_DOUBLE_VEC4                    = 0x8FFE,
		GL_DOUBLE_MAT2                    = 0x8F46,
		GL_DOUBLE_MAT3                    = 0x8F47,
		GL_DOUBLE_MAT4                    = 0x8F48,
		GL_DOUBLE_MAT2x3                  = 0x8F49,
		GL_DOUBLE_MAT2x4                  = 0x8F4A,
		GL_DOUBLE_MAT3x2                  = 0x8F4B,
		GL_DOUBLE_MAT3x4                  = 0x8F4C,
		GL_DOUBLE_MAT4x2                  = 0x8F4D,
		GL_DOUBLE_MAT4x3                  = 0x8F4E,
	}

	enum // GL_ARB_shader_subroutine
	{
		GL_ACTIVE_SUBROUTINES             = 0x8DE5,
		GL_ACTIVE_SUBROUTINE_UNIFORMS     = 0x8DE6,
		GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47,
		GL_ACTIVE_SUBROUTINE_MAX_LENGTH   = 0x8E48,
		GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49,
		GL_MAX_SUBROUTINES                = 0x8DE7,
		GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8,
		GL_NUM_COMPATIBLE_SUBROUTINES     = 0x8E4A,
		GL_COMPATIBLE_SUBROUTINES         = 0x8E4B,

			/* reuse GL_UNIFORM_SIZE */
			/* reuse GL_UNIFORM_NAME_LENGTH */
	}

	enum // GL_ARB_tessellation_shader
	{
		GL_PATCHES                        = 0x000E,
		GL_PATCH_VERTICES                 = 0x8E72,
		GL_PATCH_DEFAULT_INNER_LEVEL      = 0x8E73,
		GL_PATCH_DEFAULT_OUTER_LEVEL      = 0x8E74,
		GL_TESS_CONTROL_OUTPUT_VERTICES   = 0x8E75,
		GL_TESS_GEN_MODE                  = 0x8E76,
		GL_TESS_GEN_SPACING               = 0x8E77,
		GL_TESS_GEN_VERTEX_ORDER          = 0x8E78,
		GL_TESS_GEN_POINT_MODE            = 0x8E79,

			/* reuse GL_TRIANGLES */
			/* reuse GL_QUADS */

		GL_ISOLINES                       = 0x8E7A,

			/* reuse GL_EQUAL */

		GL_FRACTIONAL_ODD                 = 0x8E7B,
		GL_FRACTIONAL_EVEN                = 0x8E7C,

			/* reuse GL_CCW */
			/* reuse GL_CW */

		GL_MAX_PATCH_VERTICES             = 0x8E7D,
		GL_MAX_TESS_GEN_LEVEL             = 0x8E7E,
		GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F,
		GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80,
		GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81,
		GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82,
		GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83,
		GL_MAX_TESS_PATCH_COMPONENTS      = 0x8E84,
		GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85,
		GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86,
		GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89,
		GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A,
		GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C,
		GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D,
		GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E,
		GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F,
		GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0,
		GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1,
		GL_TESS_EVALUATION_SHADER         = 0x8E87,
		GL_TESS_CONTROL_SHADER            = 0x8E88,
	}

	version(none)
	enum // GL_ARB_texture_buffer_object_rgb32
	{
			/* reuse GL_RGB32F */
			/* reuse GL_RGB32UI */
			/* reuse GL_RGB32I */
	}

	enum // GL_ARB_transform_feedback2
	{
		GL_TRANSFORM_FEEDBACK             = 0x8E22,
		GL_TRANSFORM_FEEDBACK_PAUSED      = 0x8E23,
		GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = GL_TRANSFORM_FEEDBACK_PAUSED,
		GL_TRANSFORM_FEEDBACK_ACTIVE      = 0x8E24,
		GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = GL_TRANSFORM_FEEDBACK_ACTIVE,
		GL_TRANSFORM_FEEDBACK_BINDING     = 0x8E25,
	}

	enum // GL_ARB_transform_feedback3
	{
		GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70,
		GL_MAX_VERTEX_STREAMS             = 0x8E71,
	}

	enum // GL_ARB_ES2_compatibility
	{
		GL_FIXED                          = 0x140C,
		GL_IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A,
		GL_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B,
		GL_LOW_FLOAT                      = 0x8DF0,
		GL_MEDIUM_FLOAT                   = 0x8DF1,
		GL_HIGH_FLOAT                     = 0x8DF2,
		GL_LOW_INT                        = 0x8DF3,
		GL_MEDIUM_INT                     = 0x8DF4,
		GL_HIGH_INT                       = 0x8DF5,
		GL_SHADER_COMPILER                = 0x8DFA,
		GL_SHADER_BINARY_FORMATS          = 0x8DF8,
		GL_NUM_SHADER_BINARY_FORMATS      = 0x8DF9,
		GL_MAX_VERTEX_UNIFORM_VECTORS     = 0x8DFB,
		GL_MAX_VARYING_VECTORS            = 0x8DFC,
		GL_MAX_FRAGMENT_UNIFORM_VECTORS   = 0x8DFD,
		GL_RGB565                         = 0x8D62,
	}

	enum // GL_ARB_get_program_binary
	{
		GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257,
		GL_PROGRAM_BINARY_LENGTH          = 0x8741,
		GL_NUM_PROGRAM_BINARY_FORMATS     = 0x87FE,
		GL_PROGRAM_BINARY_FORMATS         = 0x87FF,
	}

	enum // GL_ARB_separate_shader_objects
	{
		GL_VERTEX_SHADER_BIT              = 0x00000001,
		GL_FRAGMENT_SHADER_BIT            = 0x00000002,
		GL_GEOMETRY_SHADER_BIT            = 0x00000004,
		GL_TESS_CONTROL_SHADER_BIT        = 0x00000008,
		GL_TESS_EVALUATION_SHADER_BIT     = 0x00000010,
		GL_ALL_SHADER_BITS                = 0xFFFFFFFF,
		GL_PROGRAM_SEPARABLE              = 0x8258,
		GL_ACTIVE_PROGRAM                 = 0x8259,
		GL_PROGRAM_PIPELINE_BINDING       = 0x825A,
	}

	version(none)
	enum // GL_ARB_shader_precision
	{
	}

	version(none)
	enum // GL_ARB_vertex_attrib_64bit
	{
			/* reuse GL_RGB32I */
			/* reuse GL_DOUBLE_VEC2 */
			/* reuse GL_DOUBLE_VEC3 */
			/* reuse GL_DOUBLE_VEC4 */
			/* reuse GL_DOUBLE_MAT2 */
			/* reuse GL_DOUBLE_MAT3 */
			/* reuse GL_DOUBLE_MAT4 */
			/* reuse GL_DOUBLE_MAT2x3 */
			/* reuse GL_DOUBLE_MAT2x4 */
			/* reuse GL_DOUBLE_MAT3x2 */
			/* reuse GL_DOUBLE_MAT3x4 */
			/* reuse GL_DOUBLE_MAT4x2 */
			/* reuse GL_DOUBLE_MAT4x3 */
	}

	enum // GL_ARB_viewport_array
	{
			/* reuse GL_SCISSOR_BOX */
			/* reuse GL_VIEWPORT */
			/* reuse GL_DEPTH_RANGE */
			/* reuse GL_SCISSOR_TEST */

		GL_MAX_VIEWPORTS                  = 0x825B,
		GL_VIEWPORT_SUBPIXEL_BITS         = 0x825C,
		GL_VIEWPORT_BOUNDS_RANGE          = 0x825D,
		GL_LAYER_PROVOKING_VERTEX         = 0x825E,
		GL_VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F,
		GL_UNDEFINED_VERTEX               = 0x8260,

			/* reuse GL_FIRST_VERTEX_CONVENTION */
			/* reuse GL_LAST_VERTEX_CONVENTION */
			/* reuse GL_PROVOKING_VERTEX */
	}

	enum // GL_ARB_cl_event
	{
		GL_SYNC_CL_EVENT_ARB              = 0x8240,
		GL_SYNC_CL_EVENT_COMPLETE_ARB     = 0x8241,
	}

	enum // GL_ARB_debug_output
	{
		GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB   = 0x8242,
		GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243,
		GL_DEBUG_CALLBACK_FUNCTION_ARB    = 0x8244,
		GL_DEBUG_CALLBACK_USER_PARAM_ARB  = 0x8245,
		GL_DEBUG_SOURCE_API_ARB           = 0x8246,
		GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = 0x8247,
		GL_DEBUG_SOURCE_SHADER_COMPILER_ARB = 0x8248,
		GL_DEBUG_SOURCE_THIRD_PARTY_ARB   = 0x8249,
		GL_DEBUG_SOURCE_APPLICATION_ARB   = 0x824A,
		GL_DEBUG_SOURCE_OTHER_ARB         = 0x824B,
		GL_DEBUG_TYPE_ERROR_ARB           = 0x824C,
		GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = 0x824D,
		GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = 0x824E,
		GL_DEBUG_TYPE_PORTABILITY_ARB     = 0x824F,
		GL_DEBUG_TYPE_PERFORMANCE_ARB     = 0x8250,
		GL_DEBUG_TYPE_OTHER_ARB           = 0x8251,
		GL_MAX_DEBUG_MESSAGE_LENGTH_ARB   = 0x9143,
		GL_MAX_DEBUG_LOGGED_MESSAGES_ARB  = 0x9144,
		GL_DEBUG_LOGGED_MESSAGES_ARB      = 0x9145,
		GL_DEBUG_SEVERITY_HIGH_ARB        = 0x9146,
		GL_DEBUG_SEVERITY_MEDIUM_ARB      = 0x9147,
		GL_DEBUG_SEVERITY_LOW_ARB         = 0x9148,
	}

	enum // GL_ARB_robustness
	{
			/* reuse GL_NO_ERROR */

		GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004,
		GL_LOSE_CONTEXT_ON_RESET_ARB      = 0x8252,
		GL_GUILTY_CONTEXT_RESET_ARB       = 0x8253,
		GL_INNOCENT_CONTEXT_RESET_ARB     = 0x8254,
		GL_UNKNOWN_CONTEXT_RESET_ARB      = 0x8255,
		GL_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256,
		GL_NO_RESET_NOTIFICATION_ARB      = 0x8261,
	}

	version(none)
	enum // GL_ARB_shader_stencil_export
	{
	}

	version(none)
	enum // GL_ARB_base_instance
	{
	}

	version(none)
	enum // GL_ARB_shading_language_420pack
	{
	}

	version(none)
	enum // GL_ARB_transform_feedback_instanced
	{
	}

	enum // GL_ARB_compressed_texture_pixel_storage
	{
		GL_UNPACK_COMPRESSED_BLOCK_WIDTH  = 0x9127,
		GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128,
		GL_UNPACK_COMPRESSED_BLOCK_DEPTH  = 0x9129,
		GL_UNPACK_COMPRESSED_BLOCK_SIZE   = 0x912A,
		GL_PACK_COMPRESSED_BLOCK_WIDTH    = 0x912B,
		GL_PACK_COMPRESSED_BLOCK_HEIGHT   = 0x912C,
		GL_PACK_COMPRESSED_BLOCK_DEPTH    = 0x912D,
		GL_PACK_COMPRESSED_BLOCK_SIZE     = 0x912E,
	}

	version(none)
	enum // GL_ARB_conservative_depth
	{
	}

	enum // GL_ARB_internalformat_query
	{
		GL_NUM_SAMPLE_COUNTS              = 0x9380,
	}

	enum // GL_ARB_map_buffer_alignment
	{
		GL_MIN_MAP_BUFFER_ALIGNMENT       = 0x90BC,
	}

	enum // GL_ARB_shader_atomic_counters
	{
		GL_ATOMIC_COUNTER_BUFFER          = 0x92C0,
		GL_ATOMIC_COUNTER_BUFFER_BINDING  = 0x92C1,
		GL_ATOMIC_COUNTER_BUFFER_START    = 0x92C2,
		GL_ATOMIC_COUNTER_BUFFER_SIZE     = 0x92C3,
		GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4,
		GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5,
		GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB,
		GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC,
		GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD,
		GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE,
		GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF,
		GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0,
		GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1,
		GL_MAX_VERTEX_ATOMIC_COUNTERS     = 0x92D2,
		GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3,
		GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4,
		GL_MAX_GEOMETRY_ATOMIC_COUNTERS   = 0x92D5,
		GL_MAX_FRAGMENT_ATOMIC_COUNTERS   = 0x92D6,
		GL_MAX_COMBINED_ATOMIC_COUNTERS   = 0x92D7,
		GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8,
		GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC,
		GL_ACTIVE_ATOMIC_COUNTER_BUFFERS  = 0x92D9,
		GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA,
		GL_UNSIGNED_INT_ATOMIC_COUNTER    = 0x92DB,
	}

	enum // GL_ARB_shader_image_load_store
	{
		GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001,
		GL_ELEMENT_ARRAY_BARRIER_BIT      = 0x00000002,
		GL_UNIFORM_BARRIER_BIT            = 0x00000004,
		GL_TEXTURE_FETCH_BARRIER_BIT      = 0x00000008,
		GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020,
		GL_COMMAND_BARRIER_BIT            = 0x00000040,
		GL_PIXEL_BUFFER_BARRIER_BIT       = 0x00000080,
		GL_TEXTURE_UPDATE_BARRIER_BIT     = 0x00000100,
		GL_BUFFER_UPDATE_BARRIER_BIT      = 0x00000200,
		GL_FRAMEBUFFER_BARRIER_BIT        = 0x00000400,
		GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800,
		GL_ATOMIC_COUNTER_BARRIER_BIT     = 0x00001000,
		GL_ALL_BARRIER_BITS               = 0xFFFFFFFF,
		GL_MAX_IMAGE_UNITS                = 0x8F38,
		GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39,
		GL_IMAGE_BINDING_NAME             = 0x8F3A,
		GL_IMAGE_BINDING_LEVEL            = 0x8F3B,
		GL_IMAGE_BINDING_LAYERED          = 0x8F3C,
		GL_IMAGE_BINDING_LAYER            = 0x8F3D,
		GL_IMAGE_BINDING_ACCESS           = 0x8F3E,
		GL_IMAGE_1D                       = 0x904C,
		GL_IMAGE_2D                       = 0x904D,
		GL_IMAGE_3D                       = 0x904E,
		GL_IMAGE_2D_RECT                  = 0x904F,
		GL_IMAGE_CUBE                     = 0x9050,
		GL_IMAGE_BUFFER                   = 0x9051,
		GL_IMAGE_1D_ARRAY                 = 0x9052,
		GL_IMAGE_2D_ARRAY                 = 0x9053,
		GL_IMAGE_CUBE_MAP_ARRAY           = 0x9054,
		GL_IMAGE_2D_MULTISAMPLE           = 0x9055,
		GL_IMAGE_2D_MULTISAMPLE_ARRAY     = 0x9056,
		GL_INT_IMAGE_1D                   = 0x9057,
		GL_INT_IMAGE_2D                   = 0x9058,
		GL_INT_IMAGE_3D                   = 0x9059,
		GL_INT_IMAGE_2D_RECT              = 0x905A,
		GL_INT_IMAGE_CUBE                 = 0x905B,
		GL_INT_IMAGE_BUFFER               = 0x905C,
		GL_INT_IMAGE_1D_ARRAY             = 0x905D,
		GL_INT_IMAGE_2D_ARRAY             = 0x905E,
		GL_INT_IMAGE_CUBE_MAP_ARRAY       = 0x905F,
		GL_INT_IMAGE_2D_MULTISAMPLE       = 0x9060,
		GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061,
		GL_UNSIGNED_INT_IMAGE_1D          = 0x9062,
		GL_UNSIGNED_INT_IMAGE_2D          = 0x9063,
		GL_UNSIGNED_INT_IMAGE_3D          = 0x9064,
		GL_UNSIGNED_INT_IMAGE_2D_RECT     = 0x9065,
		GL_UNSIGNED_INT_IMAGE_CUBE        = 0x9066,
		GL_UNSIGNED_INT_IMAGE_BUFFER      = 0x9067,
		GL_UNSIGNED_INT_IMAGE_1D_ARRAY    = 0x9068,
		GL_UNSIGNED_INT_IMAGE_2D_ARRAY    = 0x9069,
		GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A,
		GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B,
		GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C,
		GL_MAX_IMAGE_SAMPLES              = 0x906D,
		GL_IMAGE_BINDING_FORMAT           = 0x906E,
		GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7,
		GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8,
		GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9,
		GL_MAX_VERTEX_IMAGE_UNIFORMS      = 0x90CA,
		GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB,
		GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC,
		GL_MAX_GEOMETRY_IMAGE_UNIFORMS    = 0x90CD,
		GL_MAX_FRAGMENT_IMAGE_UNIFORMS    = 0x90CE,
		GL_MAX_COMBINED_IMAGE_UNIFORMS    = 0x90CF,
	}

	version(none)
	enum // GL_ARB_shading_language_packing
	{
	}

	enum // GL_ARB_texture_storage
	{
		GL_TEXTURE_IMMUTABLE_FORMAT       = 0x912F,
	}

	enum // GL_KHR_texture_compression_astc_ldr
	{
		GL_COMPRESSED_RGBA_ASTC_4x4_KHR   = 0x93B0,
		GL_COMPRESSED_RGBA_ASTC_5x4_KHR   = 0x93B1,
		GL_COMPRESSED_RGBA_ASTC_5x5_KHR   = 0x93B2,
		GL_COMPRESSED_RGBA_ASTC_6x5_KHR   = 0x93B3,
		GL_COMPRESSED_RGBA_ASTC_6x6_KHR   = 0x93B4,
		GL_COMPRESSED_RGBA_ASTC_8x5_KHR   = 0x93B5,
		GL_COMPRESSED_RGBA_ASTC_8x6_KHR   = 0x93B6,
		GL_COMPRESSED_RGBA_ASTC_8x8_KHR   = 0x93B7,
		GL_COMPRESSED_RGBA_ASTC_10x5_KHR  = 0x93B8,
		GL_COMPRESSED_RGBA_ASTC_10x6_KHR  = 0x93B9,
		GL_COMPRESSED_RGBA_ASTC_10x8_KHR  = 0x93BA,
		GL_COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93BB,
		GL_COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93BC,
		GL_COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93BD,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93D0,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93D1,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93D2,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93D3,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93D4,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93D5,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93D6,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93D7,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93D8,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93D9,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93DA,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93DB,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93DC,
		GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93DD,
	}

	enum // GL_KHR_debug
	{
		GL_DEBUG_OUTPUT_SYNCHRONOUS       = 0x8242,
		GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243,
		GL_DEBUG_CALLBACK_FUNCTION        = 0x8244,
		GL_DEBUG_CALLBACK_USER_PARAM      = 0x8245,
		GL_DEBUG_SOURCE_API               = 0x8246,
		GL_DEBUG_SOURCE_WINDOW_SYSTEM     = 0x8247,
		GL_DEBUG_SOURCE_SHADER_COMPILER   = 0x8248,
		GL_DEBUG_SOURCE_THIRD_PARTY       = 0x8249,
		GL_DEBUG_SOURCE_APPLICATION       = 0x824A,
		GL_DEBUG_SOURCE_OTHER             = 0x824B,
		GL_DEBUG_TYPE_ERROR               = 0x824C,
		GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D,
		GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR  = 0x824E,
		GL_DEBUG_TYPE_PORTABILITY         = 0x824F,
		GL_DEBUG_TYPE_PERFORMANCE         = 0x8250,
		GL_DEBUG_TYPE_OTHER               = 0x8251,
		GL_DEBUG_TYPE_MARKER              = 0x8268,
		GL_DEBUG_TYPE_PUSH_GROUP          = 0x8269,
		GL_DEBUG_TYPE_POP_GROUP           = 0x826A,
		GL_DEBUG_SEVERITY_NOTIFICATION    = 0x826B,
		GL_MAX_DEBUG_GROUP_STACK_DEPTH    = 0x826C,
		GL_DEBUG_GROUP_STACK_DEPTH        = 0x826D,
		GL_BUFFER                         = 0x82E0,
		GL_SHADER                         = 0x82E1,
		GL_PROGRAM                        = 0x82E2,
		GL_QUERY                          = 0x82E3,
		GL_PROGRAM_PIPELINE               = 0x82E4,
		GL_SAMPLER                        = 0x82E6,
		GL_DISPLAY_LIST                   = 0x82E7,

		/* DISPLAY_LIST used in compatibility profile only */

		GL_MAX_LABEL_LENGTH               = 0x82E8,
		GL_MAX_DEBUG_MESSAGE_LENGTH       = 0x9143,
		GL_MAX_DEBUG_LOGGED_MESSAGES      = 0x9144,
		GL_DEBUG_LOGGED_MESSAGES          = 0x9145,
		GL_DEBUG_SEVERITY_HIGH            = 0x9146,
		GL_DEBUG_SEVERITY_MEDIUM          = 0x9147,
		GL_DEBUG_SEVERITY_LOW             = 0x9148,
		GL_DEBUG_OUTPUT                   = 0x92E0,
		GL_CONTEXT_FLAG_DEBUG_BIT         = 0x00000002,

			/* reuse GL_STACK_UNDERFLOW */
			/* reuse GL_STACK_OVERFLOW */
	}

	version(none)
	enum // GL_ARB_arrays_of_arrays
	{
	}

	version(none)
	enum // GL_ARB_clear_buffer_object
	{
	}

	enum // GL_ARB_compute_shader
	{
		GL_COMPUTE_SHADER                 = 0x91B9,
		GL_MAX_COMPUTE_UNIFORM_BLOCKS     = 0x91BB,
		GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC,
		GL_MAX_COMPUTE_IMAGE_UNIFORMS     = 0x91BD,
		GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262,
		GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263,
		GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264,
		GL_MAX_COMPUTE_ATOMIC_COUNTERS    = 0x8265,
		GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266,
		GL_MAX_COMPUTE_LOCAL_INVOCATIONS  = 0x90EB,
		GL_MAX_COMPUTE_WORK_GROUP_COUNT   = 0x91BE,
		GL_MAX_COMPUTE_WORK_GROUP_SIZE    = 0x91BF,
		GL_COMPUTE_LOCAL_WORK_SIZE        = 0x8267,
		GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC,
		GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED,
		GL_DISPATCH_INDIRECT_BUFFER       = 0x90EE,
		GL_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF,
		GL_COMPUTE_SHADER_BIT             = 0x00000020,
	}

	version(none)
	enum // GL_ARB_copy_image
	{
	}

	enum // GL_ARB_texture_view
	{
		GL_TEXTURE_VIEW_MIN_LEVEL         = 0x82DB,
		GL_TEXTURE_VIEW_NUM_LEVELS        = 0x82DC,
		GL_TEXTURE_VIEW_MIN_LAYER         = 0x82DD,
		GL_TEXTURE_VIEW_NUM_LAYERS        = 0x82DE,
		GL_TEXTURE_IMMUTABLE_LEVELS       = 0x82DF,
	}

	enum // GL_ARB_vertex_attrib_binding
	{
		GL_VERTEX_ATTRIB_BINDING          = 0x82D4,
		GL_VERTEX_ATTRIB_RELATIVE_OFFSET  = 0x82D5,
		GL_VERTEX_BINDING_DIVISOR         = 0x82D6,
		GL_VERTEX_BINDING_OFFSET          = 0x82D7,
		GL_VERTEX_BINDING_STRIDE          = 0x82D8,
		GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9,
		GL_MAX_VERTEX_ATTRIB_BINDINGS     = 0x82DA,
	}

	version(none)
	enum // GL_ARB_robustness_isolation
	{
	}

	enum // GL_ARB_ES3_compatibility
	{
		GL_COMPRESSED_RGB8_ETC2           = 0x9274,
		GL_COMPRESSED_SRGB8_ETC2          = 0x9275,
		GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276,
		GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277,
		GL_COMPRESSED_RGBA8_ETC2_EAC      = 0x9278,
		GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279,
		GL_COMPRESSED_R11_EAC             = 0x9270,
		GL_COMPRESSED_SIGNED_R11_EAC      = 0x9271,
		GL_COMPRESSED_RG11_EAC            = 0x9272,
		GL_COMPRESSED_SIGNED_RG11_EAC     = 0x9273,
		GL_PRIMITIVE_RESTART_FIXED_INDEX  = 0x8D69,
		GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A,
		GL_MAX_ELEMENT_INDEX              = 0x8D6B,
	}

	enum // GL_ARB_explicit_uniform_location
	{
		GL_MAX_UNIFORM_LOCATIONS          = 0x826E,
	}

	version(none)
	enum // GL_ARB_fragment_layer_viewport
	{
	}

	enum // GL_ARB_framebuffer_no_attachments
	{
		GL_FRAMEBUFFER_DEFAULT_WIDTH      = 0x9310,
		GL_FRAMEBUFFER_DEFAULT_HEIGHT     = 0x9311,
		GL_FRAMEBUFFER_DEFAULT_LAYERS     = 0x9312,
		GL_FRAMEBUFFER_DEFAULT_SAMPLES    = 0x9313,
		GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314,
		GL_MAX_FRAMEBUFFER_WIDTH          = 0x9315,
		GL_MAX_FRAMEBUFFER_HEIGHT         = 0x9316,
		GL_MAX_FRAMEBUFFER_LAYERS         = 0x9317,
		GL_MAX_FRAMEBUFFER_SAMPLES        = 0x9318,
	}

	enum // GL_ARB_internalformat_query2
	{
			/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE */
			/* reuse GL_NUM_SAMPLE_COUNTS */
			/* reuse GL_RENDERBUFFER */
			/* reuse GL_SAMPLES */
			/* reuse GL_TEXTURE_1D */
			/* reuse GL_TEXTURE_1D_ARRAY */
			/* reuse GL_TEXTURE_2D */
			/* reuse GL_TEXTURE_2D_ARRAY */
			/* reuse GL_TEXTURE_3D */
			/* reuse GL_TEXTURE_CUBE_MAP */
			/* reuse GL_TEXTURE_CUBE_MAP_ARRAY */
			/* reuse GL_TEXTURE_RECTANGLE */
			/* reuse GL_TEXTURE_BUFFER */
			/* reuse GL_TEXTURE_2D_MULTISAMPLE */
			/* reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY */
			/* reuse GL_TEXTURE_COMPRESSED */

		GL_INTERNALFORMAT_SUPPORTED       = 0x826F,
		GL_INTERNALFORMAT_PREFERRED       = 0x8270,
		GL_INTERNALFORMAT_RED_SIZE        = 0x8271,
		GL_INTERNALFORMAT_GREEN_SIZE      = 0x8272,
		GL_INTERNALFORMAT_BLUE_SIZE       = 0x8273,
		GL_INTERNALFORMAT_ALPHA_SIZE      = 0x8274,
		GL_INTERNALFORMAT_DEPTH_SIZE      = 0x8275,
		GL_INTERNALFORMAT_STENCIL_SIZE    = 0x8276,
		GL_INTERNALFORMAT_SHARED_SIZE     = 0x8277,
		GL_INTERNALFORMAT_RED_TYPE        = 0x8278,
		GL_INTERNALFORMAT_GREEN_TYPE      = 0x8279,
		GL_INTERNALFORMAT_BLUE_TYPE       = 0x827A,
		GL_INTERNALFORMAT_ALPHA_TYPE      = 0x827B,
		GL_INTERNALFORMAT_DEPTH_TYPE      = 0x827C,
		GL_INTERNALFORMAT_STENCIL_TYPE    = 0x827D,
		GL_MAX_WIDTH                      = 0x827E,
		GL_MAX_HEIGHT                     = 0x827F,
		GL_MAX_DEPTH                      = 0x8280,
		GL_MAX_LAYERS                     = 0x8281,
		GL_MAX_COMBINED_DIMENSIONS        = 0x8282,
		GL_COLOR_COMPONENTS               = 0x8283,
		GL_DEPTH_COMPONENTS               = 0x8284,
		GL_STENCIL_COMPONENTS             = 0x8285,
		GL_COLOR_RENDERABLE               = 0x8286,
		GL_DEPTH_RENDERABLE               = 0x8287,
		GL_STENCIL_RENDERABLE             = 0x8288,
		GL_FRAMEBUFFER_RENDERABLE         = 0x8289,
		GL_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A,
		GL_FRAMEBUFFER_BLEND              = 0x828B,
		GL_READ_PIXELS                    = 0x828C,
		GL_READ_PIXELS_FORMAT             = 0x828D,
		GL_READ_PIXELS_TYPE               = 0x828E,
		GL_TEXTURE_IMAGE_FORMAT           = 0x828F,
		GL_TEXTURE_IMAGE_TYPE             = 0x8290,
		GL_GET_TEXTURE_IMAGE_FORMAT       = 0x8291,
		GL_GET_TEXTURE_IMAGE_TYPE         = 0x8292,
		GL_MIPMAP                         = 0x8293,
		GL_MANUAL_GENERATE_MIPMAP         = 0x8294,
		GL_AUTO_GENERATE_MIPMAP           = 0x8295,
		GL_COLOR_ENCODING                 = 0x8296,
		GL_SRGB_READ                      = 0x8297,
		GL_SRGB_WRITE                     = 0x8298,
		GL_SRGB_DECODE_ARB                = 0x8299,
		GL_FILTER                         = 0x829A,
		GL_VERTEX_TEXTURE                 = 0x829B,
		GL_TESS_CONTROL_TEXTURE           = 0x829C,
		GL_TESS_EVALUATION_TEXTURE        = 0x829D,
		GL_GEOMETRY_TEXTURE               = 0x829E,
		GL_FRAGMENT_TEXTURE               = 0x829F,
		GL_COMPUTE_TEXTURE                = 0x82A0,
		GL_TEXTURE_SHADOW                 = 0x82A1,
		GL_TEXTURE_GATHER                 = 0x82A2,
		GL_TEXTURE_GATHER_SHADOW          = 0x82A3,
		GL_SHADER_IMAGE_LOAD              = 0x82A4,
		GL_SHADER_IMAGE_STORE             = 0x82A5,
		GL_SHADER_IMAGE_ATOMIC            = 0x82A6,
		GL_IMAGE_TEXEL_SIZE               = 0x82A7,
		GL_IMAGE_COMPATIBILITY_CLASS      = 0x82A8,
		GL_IMAGE_PIXEL_FORMAT             = 0x82A9,
		GL_IMAGE_PIXEL_TYPE               = 0x82AA,
		GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC,
		GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD,
		GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE,
		GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF,
		GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1,
		GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2,
		GL_TEXTURE_COMPRESSED_BLOCK_SIZE  = 0x82B3,
		GL_CLEAR_BUFFER                   = 0x82B4,
		GL_TEXTURE_VIEW                   = 0x82B5,
		GL_VIEW_COMPATIBILITY_CLASS       = 0x82B6,
		GL_FULL_SUPPORT                   = 0x82B7,
		GL_CAVEAT_SUPPORT                 = 0x82B8,
		GL_IMAGE_CLASS_4_X_32             = 0x82B9,
		GL_IMAGE_CLASS_2_X_32             = 0x82BA,
		GL_IMAGE_CLASS_1_X_32             = 0x82BB,
		GL_IMAGE_CLASS_4_X_16             = 0x82BC,
		GL_IMAGE_CLASS_2_X_16             = 0x82BD,
		GL_IMAGE_CLASS_1_X_16             = 0x82BE,
		GL_IMAGE_CLASS_4_X_8              = 0x82BF,
		GL_IMAGE_CLASS_2_X_8              = 0x82C0,
		GL_IMAGE_CLASS_1_X_8              = 0x82C1,
		GL_IMAGE_CLASS_11_11_10           = 0x82C2,
		GL_IMAGE_CLASS_10_10_10_2         = 0x82C3,
		GL_VIEW_CLASS_128_BITS            = 0x82C4,
		GL_VIEW_CLASS_96_BITS             = 0x82C5,
		GL_VIEW_CLASS_64_BITS             = 0x82C6,
		GL_VIEW_CLASS_48_BITS             = 0x82C7,
		GL_VIEW_CLASS_32_BITS             = 0x82C8,
		GL_VIEW_CLASS_24_BITS             = 0x82C9,
		GL_VIEW_CLASS_16_BITS             = 0x82CA,
		GL_VIEW_CLASS_8_BITS              = 0x82CB,
		GL_VIEW_CLASS_S3TC_DXT1_RGB       = 0x82CC,
		GL_VIEW_CLASS_S3TC_DXT1_RGBA      = 0x82CD,
		GL_VIEW_CLASS_S3TC_DXT3_RGBA      = 0x82CE,
		GL_VIEW_CLASS_S3TC_DXT5_RGBA      = 0x82CF,
		GL_VIEW_CLASS_RGTC1_RED           = 0x82D0,
		GL_VIEW_CLASS_RGTC2_RG            = 0x82D1,
		GL_VIEW_CLASS_BPTC_UNORM          = 0x82D2,
		GL_VIEW_CLASS_BPTC_FLOAT          = 0x82D3,
	}

	version(none)
	enum // GL_ARB_invalidate_subdata
	{
	}

	version(none)
	enum // GL_ARB_multi_draw_indirect
	{
	}

	enum // GL_ARB_program_interface_query
	{
		GL_UNIFORM                        = 0x92E1,
		GL_UNIFORM_BLOCK                  = 0x92E2,
		GL_PROGRAM_INPUT                  = 0x92E3,
		GL_PROGRAM_OUTPUT                 = 0x92E4,
		GL_BUFFER_VARIABLE                = 0x92E5,
		GL_SHADER_STORAGE_BLOCK           = 0x92E6,

			/* reuse GL_ATOMIC_COUNTER_BUFFER */

		GL_VERTEX_SUBROUTINE              = 0x92E8,
		GL_TESS_CONTROL_SUBROUTINE        = 0x92E9,
		GL_TESS_EVALUATION_SUBROUTINE     = 0x92EA,
		GL_GEOMETRY_SUBROUTINE            = 0x92EB,
		GL_FRAGMENT_SUBROUTINE            = 0x92EC,
		GL_COMPUTE_SUBROUTINE             = 0x92ED,
		GL_VERTEX_SUBROUTINE_UNIFORM      = 0x92EE,
		GL_TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF,
		GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0,
		GL_GEOMETRY_SUBROUTINE_UNIFORM    = 0x92F1,
		GL_FRAGMENT_SUBROUTINE_UNIFORM    = 0x92F2,
		GL_COMPUTE_SUBROUTINE_UNIFORM     = 0x92F3,
		GL_TRANSFORM_FEEDBACK_VARYING     = 0x92F4,
		GL_ACTIVE_RESOURCES               = 0x92F5,
		GL_MAX_NAME_LENGTH                = 0x92F6,
		GL_MAX_NUM_ACTIVE_VARIABLES       = 0x92F7,
		GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8,
		GL_NAME_LENGTH                    = 0x92F9,
		GL_TYPE                           = 0x92FA,
		GL_ARRAY_SIZE                     = 0x92FB,
		GL_OFFSET                         = 0x92FC,
		GL_BLOCK_INDEX                    = 0x92FD,
		GL_ARRAY_STRIDE                   = 0x92FE,
		GL_MATRIX_STRIDE                  = 0x92FF,
		GL_IS_ROW_MAJOR                   = 0x9300,
		GL_ATOMIC_COUNTER_BUFFER_INDEX    = 0x9301,
		GL_BUFFER_BINDING                 = 0x9302,
		GL_BUFFER_DATA_SIZE               = 0x9303,
		GL_NUM_ACTIVE_VARIABLES           = 0x9304,
		GL_ACTIVE_VARIABLES               = 0x9305,
		GL_REFERENCED_BY_VERTEX_SHADER    = 0x9306,
		GL_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307,
		GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308,
		GL_REFERENCED_BY_GEOMETRY_SHADER  = 0x9309,
		GL_REFERENCED_BY_FRAGMENT_SHADER  = 0x930A,
		GL_REFERENCED_BY_COMPUTE_SHADER   = 0x930B,
		GL_TOP_LEVEL_ARRAY_SIZE           = 0x930C,
		GL_TOP_LEVEL_ARRAY_STRIDE         = 0x930D,
		GL_LOCATION                       = 0x930E,
		GL_LOCATION_INDEX                 = 0x930F,
		GL_IS_PER_PATCH                   = 0x92E7,

			/* reuse GL_NUM_COMPATIBLE_SUBROUTINES */
			/* reuse GL_COMPATIBLE_SUBROUTINES */
	}

	version(none)
	enum // GL_ARB_robust_buffer_access_behavior
	{
	}

	version(none)
	enum // GL_ARB_shader_image_size
	{
	}

	enum // GL_ARB_shader_storage_buffer_object
	{
		GL_SHADER_STORAGE_BUFFER          = 0x90D2,
		GL_SHADER_STORAGE_BUFFER_BINDING  = 0x90D3,
		GL_SHADER_STORAGE_BUFFER_START    = 0x90D4,
		GL_SHADER_STORAGE_BUFFER_SIZE     = 0x90D5,
		GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6,
		GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7,
		GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8,
		GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9,
		GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA,
		GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB,
		GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC,
		GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD,
		GL_MAX_SHADER_STORAGE_BLOCK_SIZE  = 0x90DE,
		GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF,
		GL_SHADER_STORAGE_BARRIER_BIT     = 0x2000,
		GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS,

			/* reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS */
	}

	enum // GL_ARB_stencil_texturing
	{
		GL_DEPTH_STENCIL_TEXTURE_MODE     = 0x90EA,
	}

	enum // GL_ARB_texture_buffer_range
	{
		GL_TEXTURE_BUFFER_OFFSET          = 0x919D,
		GL_TEXTURE_BUFFER_SIZE            = 0x919E,
		GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F,
	}

	version(none)
	enum // GL_ARB_texture_query_levels
	{
	}

	version(none)
	enum // GL_ARB_texture_storage_multisample
	{
	}

	/* *********************************************************** */

	// GL_VERSION_2_0
	/* GL type for program/shader text */
	alias char GLchar;

	// GL_VERSION_1_5
	/* GL types for handling large vertex buffer objects */
	alias ptrdiff_t GLintptr;
	alias ptrdiff_t GLsizeiptr;

	// GL_ARB_vertex_buffer_object
	/* GL types for handling large vertex buffer objects */
	alias ptrdiff_t GLintptrARB;
	alias ptrdiff_t GLsizeiptrARB;

	// GL_ARB_shader_objects
	/* GL types for program/shader text and shader object handles */
	alias char GLcharARB;
	alias uint GLhandleARB;

	/* GL type for "half" precision (s10e5) float data in host memory */
	// GL_ARB_half_float_pixel
	alias ushort GLhalfARB;

	// GL_NV_half_float
	alias ushort GLhalfNV;

	/* Define int32_t,  int64_t,  and uint64_t types for UST/MSC */
	/* (as used in the GL_EXT_timer_query extension). */
	alias int int32_t;
	alias long int64_t;
	alias ulong uint64_t;

	// GL_EXT_timer_query
	alias int64_t GLint64EXT;
	alias uint64_t GLuint64EXT;

	// GL_ARB_sync
	alias int64_t GLint64;
	alias uint64_t GLuint64;
	struct __GLsync;
	alias __GLsync *GLsync;

	// GL_ARB_cl_event
	/* These incomplete types let us declare types compatible with OpenCL's cl_context and cl_event */
	struct _cl_context;
	struct _cl_event;

	// GL_ARB_debug_output
	alias void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROCARB;

	// GL_AMD_debug_output
	alias void function(GLuint id, GLenum category, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROCAMD;

	// GL_KHR_debug
	alias void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROC;

	// GL_NV_vdpau_interop
	alias GLintptr GLvdpauSurfaceNV;


	/* *********************************************************** */

	// GL_VERSION_1_0

	void glCullFace(GLenum mode);
	void glFrontFace(GLenum mode);
	void glHint(GLenum target, GLenum mode);
	void glLineWidth(GLfloat width);
	void glPointSize(GLfloat size);
	void glPolygonMode(GLenum face, GLenum mode);
	void glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
	void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
	void glTexParameterfv(GLenum target, GLenum pname, const(GLfloat)* params);
	void glTexParameteri(GLenum target, GLenum pname, GLint param);
	void glTexParameteriv(GLenum target, GLenum pname, const(GLint)* params);
	void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glDrawBuffer(GLenum mode);
	void glClear(GLbitfield mask);
	void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void glClearStencil(GLint s);
	void glClearDepth(GLdouble depth);
	void glStencilMask(GLuint mask);
	void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
	void glDepthMask(GLboolean flag);
	void glDisable(GLenum cap);
	void glEnable(GLenum cap);
	void glFinish();
	void glFlush();
	void glBlendFunc(GLenum sfactor, GLenum dfactor);
	void glLogicOp(GLenum opcode);
	void glStencilFunc(GLenum func, GLint ref_, GLuint mask);
	void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
	void glDepthFunc(GLenum func);
	void glPixelStoref(GLenum pname, GLfloat param);
	void glPixelStorei(GLenum pname, GLint param);
	void glReadBuffer(GLenum mode);
	void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels);
	void glGetBooleanv(GLenum pname, GLboolean* params);
	void glGetDoublev(GLenum pname, GLdouble* params);
	GLenum glGetError();
	void glGetFloatv(GLenum pname, GLfloat* params);
	void glGetIntegerv(GLenum pname, GLint* params);
	const(GLubyte)* glGetString(GLenum name);
	void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels);
	void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params);
	void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params);
	void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params);
	void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params);
	GLboolean glIsEnabled(GLenum cap);
	void glDepthRange(GLdouble near, GLdouble far);
	void glViewport(GLint x, GLint y, GLsizei width, GLsizei height);

	alias void function(GLenum mode) PFNGLCULLFACEPROC;
	alias void function(GLenum mode) PFNGLFRONTFACEPROC;
	alias void function(GLenum target, GLenum mode) PFNGLHINTPROC;
	alias void function(GLfloat width) PFNGLLINEWIDTHPROC;
	alias void function(GLfloat size) PFNGLPOINTSIZEPROC;
	alias void function(GLenum face, GLenum mode) PFNGLPOLYGONMODEPROC;
	alias void function(GLint x, GLint y, GLsizei width, GLsizei height) PFNGLSCISSORPROC;
	alias void function(GLenum target, GLenum pname, GLfloat param) PFNGLTEXPARAMETERFPROC;
	alias void function(GLenum target, GLenum pname, const(GLfloat)* params) PFNGLTEXPARAMETERFVPROC;
	alias void function(GLenum target, GLenum pname, GLint param) PFNGLTEXPARAMETERIPROC;
	alias void function(GLenum target, GLenum pname, const(GLint)* params) PFNGLTEXPARAMETERIVPROC;
	alias void function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXIMAGE2DPROC;
	alias void function(GLenum mode) PFNGLDRAWBUFFERPROC;
	alias void function(GLbitfield mask) PFNGLCLEARPROC;
	alias void function(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) PFNGLCLEARCOLORPROC;
	alias void function(GLint s) PFNGLCLEARSTENCILPROC;
	alias void function(GLdouble depth) PFNGLCLEARDEPTHPROC;
	alias void function(GLuint mask) PFNGLSTENCILMASKPROC;
	alias void function(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha) PFNGLCOLORMASKPROC;
	alias void function(GLboolean flag) PFNGLDEPTHMASKPROC;
	alias void function(GLenum cap) PFNGLDISABLEPROC;
	alias void function(GLenum cap) PFNGLENABLEPROC;
	alias void function() PFNGLFINISHPROC;
	alias void function() PFNGLFLUSHPROC;
	alias void function(GLenum sfactor, GLenum dfactor) PFNGLBLENDFUNCPROC;
	alias void function(GLenum opcode) PFNGLLOGICOPPROC;
	alias void function(GLenum func, GLint ref_, GLuint mask) PFNGLSTENCILFUNCPROC;
	alias void function(GLenum fail, GLenum zfail, GLenum zpass) PFNGLSTENCILOPPROC;
	alias void function(GLenum func) PFNGLDEPTHFUNCPROC;
	alias void function(GLenum pname, GLfloat param) PFNGLPIXELSTOREFPROC;
	alias void function(GLenum pname, GLint param) PFNGLPIXELSTOREIPROC;
	alias void function(GLenum mode) PFNGLREADBUFFERPROC;
	alias void function(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels) PFNGLREADPIXELSPROC;
	alias void function(GLenum pname, GLboolean* params) PFNGLGETBOOLEANVPROC;
	alias void function(GLenum pname, GLdouble* params) PFNGLGETDOUBLEVPROC;
	alias GLenum function() PFNGLGETERRORPROC;
	alias void function(GLenum pname, GLfloat* params) PFNGLGETFLOATVPROC;
	alias void function(GLenum pname, GLint* params) PFNGLGETINTEGERVPROC;
	alias const(GLubyte)*  function(GLenum name) PFNGLGETSTRINGPROC;
	alias void function(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels) PFNGLGETTEXIMAGEPROC;
	alias void function(GLenum target, GLenum pname, GLfloat* params) PFNGLGETTEXPARAMETERFVPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETTEXPARAMETERIVPROC;
	alias void function(GLenum target, GLint level, GLenum pname, GLfloat* params) PFNGLGETTEXLEVELPARAMETERFVPROC;
	alias void function(GLenum target, GLint level, GLenum pname, GLint* params) PFNGLGETTEXLEVELPARAMETERIVPROC;
	alias GLboolean function(GLenum cap) PFNGLISENABLEDPROC;
	alias void function(GLdouble near, GLdouble far) PFNGLDEPTHRANGEPROC;
	alias void function(GLint x, GLint y, GLsizei width, GLsizei height) PFNGLVIEWPORTPROC;

	// GL_VERSION_1_1

	void glDrawArrays(GLenum mode, GLint first, GLsizei count);
	void glDrawElements(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices);
	void glGetPointerv(GLenum pname, GLvoid** params);
	void glPolygonOffset(GLfloat factor, GLfloat units);
	void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
	void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
	void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
	void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
	void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glBindTexture(GLenum target, GLuint texture);
	void glDeleteTextures(GLsizei n, const(GLuint)* textures);
	void glGenTextures(GLsizei n, GLuint* textures);
	GLboolean glIsTexture(GLuint texture);

	alias void function(GLenum mode, GLint first, GLsizei count) PFNGLDRAWARRAYSPROC;
	alias void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices) PFNGLDRAWELEMENTSPROC;
	alias void function(GLenum pname, GLvoid** params) PFNGLGETPOINTERVPROC;
	alias void function(GLfloat factor, GLfloat units) PFNGLPOLYGONOFFSETPROC;
	alias void function(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border) PFNGLCOPYTEXIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) PFNGLCOPYTEXIMAGE2DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) PFNGLCOPYTEXSUBIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) PFNGLCOPYTEXSUBIMAGE2DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXSUBIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXSUBIMAGE2DPROC;
	alias void function(GLenum target, GLuint texture) PFNGLBINDTEXTUREPROC;
	alias void function(GLsizei n, const(GLuint)* textures) PFNGLDELETETEXTURESPROC;
	alias void function(GLsizei n, GLuint* textures) PFNGLGENTEXTURESPROC;
	alias GLboolean function(GLuint texture) PFNGLISTEXTUREPROC;

	// GL_VERSION_1_2

	void glBlendColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void glBlendEquation(GLenum mode);
	void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices);
	void glTexImage3D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);

	alias void function(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) PFNGLBLENDCOLORPROC;
	alias void function(GLenum mode) PFNGLBLENDEQUATIONPROC;
	alias void function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices) PFNGLDRAWRANGEELEMENTSPROC;
	alias void function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXIMAGE3DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) PFNGLTEXSUBIMAGE3DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) PFNGLCOPYTEXSUBIMAGE3DPROC;

	// GL_VERSION_1_3

	void glActiveTexture(GLenum texture);
	void glSampleCoverage(GLfloat value, GLboolean invert);
	void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data);
	void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data);
	void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data);
	void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data);
	void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data);
	void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data);
	void glGetCompressedTexImage(GLenum target, GLint level, GLvoid* img);

	alias void function(GLenum texture) PFNGLACTIVETEXTUREPROC;
	alias void function(GLfloat value, GLboolean invert) PFNGLSAMPLECOVERAGEPROC;
	alias void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXIMAGE3DPROC;
	alias void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXIMAGE2DPROC;
	alias void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
	alias void function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data) PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
	alias void function(GLenum target, GLint level, GLvoid* img) PFNGLGETCOMPRESSEDTEXIMAGEPROC;

	// GL_VERSION_1_4

	void glBlendFuncSeparate(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
	void glMultiDrawArrays(GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount);
	void glMultiDrawElements(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid)** indices, GLsizei drawcount);
	void glPointParameterf(GLenum pname, GLfloat param);
	void glPointParameterfv(GLenum pname, const(GLfloat)* params);
	void glPointParameteri(GLenum pname, GLint param);
	void glPointParameteriv(GLenum pname, const(GLint)* params);

	alias void function(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) PFNGLBLENDFUNCSEPARATEPROC;
	alias void function(GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount) PFNGLMULTIDRAWARRAYSPROC;
	alias void function(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid)** indices, GLsizei drawcount) PFNGLMULTIDRAWELEMENTSPROC;
	alias void function(GLenum pname, GLfloat param) PFNGLPOINTPARAMETERFPROC;
	alias void function(GLenum pname, const(GLfloat)* params) PFNGLPOINTPARAMETERFVPROC;
	alias void function(GLenum pname, GLint param) PFNGLPOINTPARAMETERIPROC;
	alias void function(GLenum pname, const(GLint)* params) PFNGLPOINTPARAMETERIVPROC;

	// GL_VERSION_1_5

	void glGenQueries(GLsizei n, GLuint* ids);
	void glDeleteQueries(GLsizei n, const(GLuint)* ids);
	GLboolean glIsQuery(GLuint id);
	void glBeginQuery(GLenum target, GLuint id);
	void glEndQuery(GLenum target);
	void glGetQueryiv(GLenum target, GLenum pname, GLint* params);
	void glGetQueryObjectiv(GLuint id, GLenum pname, GLint* params);
	void glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint* params);
	void glBindBuffer(GLenum target, GLuint buffer);
	void glDeleteBuffers(GLsizei n, const(GLuint)* buffers);
	void glGenBuffers(GLsizei n, GLuint* buffers);
	GLboolean glIsBuffer(GLuint buffer);
	void glBufferData(GLenum target, GLsizeiptr size, const(GLvoid)* data, GLenum usage);
	void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const(GLvoid)* data);
	void glGetBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data);
	GLvoid* glMapBuffer(GLenum target, GLenum access);
	GLboolean glUnmapBuffer(GLenum target);
	void glGetBufferParameteriv(GLenum target, GLenum pname, GLint* params);
	void glGetBufferPointerv(GLenum target, GLenum pname, GLvoid** params);

	alias void function(GLsizei n, GLuint* ids) PFNGLGENQUERIESPROC;
	alias void function(GLsizei n, const(GLuint)* ids) PFNGLDELETEQUERIESPROC;
	alias GLboolean function(GLuint id) PFNGLISQUERYPROC;
	alias void function(GLenum target, GLuint id) PFNGLBEGINQUERYPROC;
	alias void function(GLenum target) PFNGLENDQUERYPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETQUERYIVPROC;
	alias void function(GLuint id, GLenum pname, GLint* params) PFNGLGETQUERYOBJECTIVPROC;
	alias void function(GLuint id, GLenum pname, GLuint* params) PFNGLGETQUERYOBJECTUIVPROC;
	alias void function(GLenum target, GLuint buffer) PFNGLBINDBUFFERPROC;
	alias void function(GLsizei n, const(GLuint)* buffers) PFNGLDELETEBUFFERSPROC;
	alias void function(GLsizei n, GLuint* buffers) PFNGLGENBUFFERSPROC;
	alias GLboolean function(GLuint buffer) PFNGLISBUFFERPROC;
	alias void function(GLenum target, GLsizeiptr size, const(GLvoid)* data, GLenum usage) PFNGLBUFFERDATAPROC;
	alias void function(GLenum target, GLintptr offset, GLsizeiptr size, const(GLvoid)* data) PFNGLBUFFERSUBDATAPROC;
	alias void function(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data) PFNGLGETBUFFERSUBDATAPROC;
	alias GLvoid* function(GLenum target, GLenum access) PFNGLMAPBUFFERPROC;
	alias GLboolean function(GLenum target) PFNGLUNMAPBUFFERPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETBUFFERPARAMETERIVPROC;
	alias void function(GLenum target, GLenum pname, GLvoid** params) PFNGLGETBUFFERPOINTERVPROC;

	// GL_VERSION_2_0

	void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha);
	void glDrawBuffers(GLsizei n, const(GLenum)* bufs);
	void glStencilOpSeparate(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
	void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref_, GLuint mask);
	void glStencilMaskSeparate(GLenum face, GLuint mask);
	void glAttachShader(GLuint program, GLuint shader);
	void glBindAttribLocation(GLuint program, GLuint index, const(GLchar)* name);
	void glCompileShader(GLuint shader);
	GLuint glCreateProgram();
	GLuint glCreateShader(GLenum type);
	void glDeleteProgram(GLuint program);
	void glDeleteShader(GLuint shader);
	void glDetachShader(GLuint program, GLuint shader);
	void glDisableVertexAttribArray(GLuint index);
	void glEnableVertexAttribArray(GLuint index);
	void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
	void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name);
	void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj);
	GLint glGetAttribLocation(GLuint program, const(GLchar)* name);
	void glGetProgramiv(GLuint program, GLenum pname, GLint* params);
	void glGetProgramInfoLog(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
	void glGetShaderiv(GLuint shader, GLenum pname, GLint* params);
	void glGetShaderInfoLog(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog);
	void glGetShaderSource(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source);
	GLint glGetUniformLocation(GLuint program, const(GLchar)* name);
	void glGetUniformfv(GLuint program, GLint location, GLfloat* params);
	void glGetUniformiv(GLuint program, GLint location, GLint* params);
	void glGetVertexAttribdv(GLuint index, GLenum pname, GLdouble* params);
	void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat* params);
	void glGetVertexAttribiv(GLuint index, GLenum pname, GLint* params);
	void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid** pointer);
	GLboolean glIsProgram(GLuint program);
	GLboolean glIsShader(GLuint shader);
	void glLinkProgram(GLuint program);
	void glShaderSource(GLuint shader, GLsizei count, const(GLchar)** string, const(GLint)* length);
	void glUseProgram(GLuint program);
	void glUniform1f(GLint location, GLfloat v0);
	void glUniform2f(GLint location, GLfloat v0, GLfloat v1);
	void glUniform3f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
	void glUniform4f(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
	void glUniform1i(GLint location, GLint v0);
	void glUniform2i(GLint location, GLint v0, GLint v1);
	void glUniform3i(GLint location, GLint v0, GLint v1, GLint v2);
	void glUniform4i(GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
	void glUniform1fv(GLint location, GLsizei count, const(GLfloat)* value);
	void glUniform2fv(GLint location, GLsizei count, const(GLfloat)* value);
	void glUniform3fv(GLint location, GLsizei count, const(GLfloat)* value);
	void glUniform4fv(GLint location, GLsizei count, const(GLfloat)* value);
	void glUniform1iv(GLint location, GLsizei count, const(GLint)* value);
	void glUniform2iv(GLint location, GLsizei count, const(GLint)* value);
	void glUniform3iv(GLint location, GLsizei count, const(GLint)* value);
	void glUniform4iv(GLint location, GLsizei count, const(GLint)* value);
	void glUniformMatrix2fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix3fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glValidateProgram(GLuint program);
	void glVertexAttrib1d(GLuint index, GLdouble x);
	void glVertexAttrib1dv(GLuint index, const(GLdouble)* v);
	void glVertexAttrib1f(GLuint index, GLfloat x);
	void glVertexAttrib1fv(GLuint index, const(GLfloat)* v);
	void glVertexAttrib1s(GLuint index, GLshort x);
	void glVertexAttrib1sv(GLuint index, const(GLshort)* v);
	void glVertexAttrib2d(GLuint index, GLdouble x, GLdouble y);
	void glVertexAttrib2dv(GLuint index, const(GLdouble)* v);
	void glVertexAttrib2f(GLuint index, GLfloat x, GLfloat y);
	void glVertexAttrib2fv(GLuint index, const(GLfloat)* v);
	void glVertexAttrib2s(GLuint index, GLshort x, GLshort y);
	void glVertexAttrib2sv(GLuint index, const(GLshort)* v);
	void glVertexAttrib3d(GLuint index, GLdouble x, GLdouble y, GLdouble z);
	void glVertexAttrib3dv(GLuint index, const(GLdouble)* v);
	void glVertexAttrib3f(GLuint index, GLfloat x, GLfloat y, GLfloat z);
	void glVertexAttrib3fv(GLuint index, const(GLfloat)* v);
	void glVertexAttrib3s(GLuint index, GLshort x, GLshort y, GLshort z);
	void glVertexAttrib3sv(GLuint index, const(GLshort)* v);
	void glVertexAttrib4Nbv(GLuint index, const(GLbyte)* v);
	void glVertexAttrib4Niv(GLuint index, const(GLint)* v);
	void glVertexAttrib4Nsv(GLuint index, const(GLshort)* v);
	void glVertexAttrib4Nub(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
	void glVertexAttrib4Nubv(GLuint index, const(GLubyte)* v);
	void glVertexAttrib4Nuiv(GLuint index, const(GLuint)* v);
	void glVertexAttrib4Nusv(GLuint index, const(GLushort)* v);
	void glVertexAttrib4bv(GLuint index, const(GLbyte)* v);
	void glVertexAttrib4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void glVertexAttrib4dv(GLuint index, const(GLdouble)* v);
	void glVertexAttrib4f(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	void glVertexAttrib4fv(GLuint index, const(GLfloat)* v);
	void glVertexAttrib4iv(GLuint index, const(GLint)* v);
	void glVertexAttrib4s(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
	void glVertexAttrib4sv(GLuint index, const(GLshort)* v);
	void glVertexAttrib4ubv(GLuint index, const(GLubyte)* v);
	void glVertexAttrib4uiv(GLuint index, const(GLuint)* v);
	void glVertexAttrib4usv(GLuint index, const(GLushort)* v);
	void glVertexAttribPointer(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(GLvoid)* pointer);

	alias void function(GLenum modeRGB, GLenum modeAlpha) PFNGLBLENDEQUATIONSEPARATEPROC;
	alias void function(GLsizei n, const(GLenum)* bufs) PFNGLDRAWBUFFERSPROC;
	alias void function(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass) PFNGLSTENCILOPSEPARATEPROC;
	alias void function(GLenum face, GLenum func, GLint ref_, GLuint mask) PFNGLSTENCILFUNCSEPARATEPROC;
	alias void function(GLenum face, GLuint mask) PFNGLSTENCILMASKSEPARATEPROC;
	alias void function(GLuint program, GLuint shader) PFNGLATTACHSHADERPROC;
	alias void function(GLuint program, GLuint index, const(GLchar)* name) PFNGLBINDATTRIBLOCATIONPROC;
	alias void function(GLuint shader) PFNGLCOMPILESHADERPROC;
	alias GLuint function() PFNGLCREATEPROGRAMPROC;
	alias GLuint function(GLenum type) PFNGLCREATESHADERPROC;
	alias void function(GLuint program) PFNGLDELETEPROGRAMPROC;
	alias void function(GLuint shader) PFNGLDELETESHADERPROC;
	alias void function(GLuint program, GLuint shader) PFNGLDETACHSHADERPROC;
	alias void function(GLuint index) PFNGLDISABLEVERTEXATTRIBARRAYPROC;
	alias void function(GLuint index) PFNGLENABLEVERTEXATTRIBARRAYPROC;
	alias void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) PFNGLGETACTIVEATTRIBPROC;
	alias void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) PFNGLGETACTIVEUNIFORMPROC;
	alias void function(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj) PFNGLGETATTACHEDSHADERSPROC;
	alias GLint function(GLuint program, const(GLchar)* name) PFNGLGETATTRIBLOCATIONPROC;
	alias void function(GLuint program, GLenum pname, GLint* params) PFNGLGETPROGRAMIVPROC;
	alias void function(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog) PFNGLGETPROGRAMINFOLOGPROC;
	alias void function(GLuint shader, GLenum pname, GLint* params) PFNGLGETSHADERIVPROC;
	alias void function(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog) PFNGLGETSHADERINFOLOGPROC;
	alias void function(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source) PFNGLGETSHADERSOURCEPROC;
	alias GLint function(GLuint program, const(GLchar)* name) PFNGLGETUNIFORMLOCATIONPROC;
	alias void function(GLuint program, GLint location, GLfloat* params) PFNGLGETUNIFORMFVPROC;
	alias void function(GLuint program, GLint location, GLint* params) PFNGLGETUNIFORMIVPROC;
	alias void function(GLuint index, GLenum pname, GLdouble* params) PFNGLGETVERTEXATTRIBDVPROC;
	alias void function(GLuint index, GLenum pname, GLfloat* params) PFNGLGETVERTEXATTRIBFVPROC;
	alias void function(GLuint index, GLenum pname, GLint* params) PFNGLGETVERTEXATTRIBIVPROC;
	alias void function(GLuint index, GLenum pname, GLvoid** pointer) PFNGLGETVERTEXATTRIBPOINTERVPROC;
	alias GLboolean function(GLuint program) PFNGLISPROGRAMPROC;
	alias GLboolean function(GLuint shader) PFNGLISSHADERPROC;
	alias void function(GLuint program) PFNGLLINKPROGRAMPROC;
	alias void function(GLuint shader, GLsizei count, const(GLchar)** string, const(GLint)* length) PFNGLSHADERSOURCEPROC;
	alias void function(GLuint program) PFNGLUSEPROGRAMPROC;
	alias void function(GLint location, GLfloat v0) PFNGLUNIFORM1FPROC;
	alias void function(GLint location, GLfloat v0, GLfloat v1) PFNGLUNIFORM2FPROC;
	alias void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2) PFNGLUNIFORM3FPROC;
	alias void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) PFNGLUNIFORM4FPROC;
	alias void function(GLint location, GLint v0) PFNGLUNIFORM1IPROC;
	alias void function(GLint location, GLint v0, GLint v1) PFNGLUNIFORM2IPROC;
	alias void function(GLint location, GLint v0, GLint v1, GLint v2) PFNGLUNIFORM3IPROC;
	alias void function(GLint location, GLint v0, GLint v1, GLint v2, GLint v3) PFNGLUNIFORM4IPROC;
	alias void function(GLint location, GLsizei count, const(GLfloat)* value) PFNGLUNIFORM1FVPROC;
	alias void function(GLint location, GLsizei count, const(GLfloat)* value) PFNGLUNIFORM2FVPROC;
	alias void function(GLint location, GLsizei count, const(GLfloat)* value) PFNGLUNIFORM3FVPROC;
	alias void function(GLint location, GLsizei count, const(GLfloat)* value) PFNGLUNIFORM4FVPROC;
	alias void function(GLint location, GLsizei count, const(GLint)* value) PFNGLUNIFORM1IVPROC;
	alias void function(GLint location, GLsizei count, const(GLint)* value) PFNGLUNIFORM2IVPROC;
	alias void function(GLint location, GLsizei count, const(GLint)* value) PFNGLUNIFORM3IVPROC;
	alias void function(GLint location, GLsizei count, const(GLint)* value) PFNGLUNIFORM4IVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX2FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX3FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX4FVPROC;
	alias void function(GLuint program) PFNGLVALIDATEPROGRAMPROC;
	alias void function(GLuint index, GLdouble x) PFNGLVERTEXATTRIB1DPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIB1DVPROC;
	alias void function(GLuint index, GLfloat x) PFNGLVERTEXATTRIB1FPROC;
	alias void function(GLuint index, const(GLfloat)* v) PFNGLVERTEXATTRIB1FVPROC;
	alias void function(GLuint index, GLshort x) PFNGLVERTEXATTRIB1SPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIB1SVPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y) PFNGLVERTEXATTRIB2DPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIB2DVPROC;
	alias void function(GLuint index, GLfloat x, GLfloat y) PFNGLVERTEXATTRIB2FPROC;
	alias void function(GLuint index, const(GLfloat)* v) PFNGLVERTEXATTRIB2FVPROC;
	alias void function(GLuint index, GLshort x, GLshort y) PFNGLVERTEXATTRIB2SPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIB2SVPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) PFNGLVERTEXATTRIB3DPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIB3DVPROC;
	alias void function(GLuint index, GLfloat x, GLfloat y, GLfloat z) PFNGLVERTEXATTRIB3FPROC;
	alias void function(GLuint index, const(GLfloat)* v) PFNGLVERTEXATTRIB3FVPROC;
	alias void function(GLuint index, GLshort x, GLshort y, GLshort z) PFNGLVERTEXATTRIB3SPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIB3SVPROC;
	alias void function(GLuint index, const(GLbyte)* v) PFNGLVERTEXATTRIB4NBVPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIB4NIVPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIB4NSVPROC;
	alias void function(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) PFNGLVERTEXATTRIB4NUBPROC;
	alias void function(GLuint index, const(GLubyte)* v) PFNGLVERTEXATTRIB4NUBVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIB4NUIVPROC;
	alias void function(GLuint index, const(GLushort)* v) PFNGLVERTEXATTRIB4NUSVPROC;
	alias void function(GLuint index, const(GLbyte)* v) PFNGLVERTEXATTRIB4BVPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) PFNGLVERTEXATTRIB4DPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIB4DVPROC;
	alias void function(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) PFNGLVERTEXATTRIB4FPROC;
	alias void function(GLuint index, const(GLfloat)* v) PFNGLVERTEXATTRIB4FVPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIB4IVPROC;
	alias void function(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) PFNGLVERTEXATTRIB4SPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIB4SVPROC;
	alias void function(GLuint index, const(GLubyte)* v) PFNGLVERTEXATTRIB4UBVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIB4UIVPROC;
	alias void function(GLuint index, const(GLushort)* v) PFNGLVERTEXATTRIB4USVPROC;
	alias void function(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(GLvoid)* pointer) PFNGLVERTEXATTRIBPOINTERPROC;

	// GL_VERSION_2_1

	void glUniformMatrix2x3fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix3x2fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix2x4fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix4x2fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix3x4fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glUniformMatrix4x3fv(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);

	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX2X3FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX3X2FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX2X4FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX4X2FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX3X4FVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLUNIFORMMATRIX4X3FVPROC;

	// GL_VERSION_3_0

	/* OpenGL 3.0 also reuses entry points from these extensions: */
	/* ARB_framebuffer_object*/
	/* ARB_map_buffer_range*/
	/* ARB_vertex_array_object)*/
	void glColorMaski(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
	void glGetBooleani_v(GLenum target, GLuint index, GLboolean* data);
	void glGetIntegeri_v(GLenum target, GLuint index, GLint* data);
	void glEnablei(GLenum target, GLuint index);
	void glDisablei(GLenum target, GLuint index);
	GLboolean glIsEnabledi(GLenum target, GLuint index);
	void glBeginTransformFeedback(GLenum primitiveMode);
	void glEndTransformFeedback();
	void glBindBufferRange(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
	void glBindBufferBase(GLenum target, GLuint index, GLuint buffer);
	void glTransformFeedbackVaryings(GLuint program, GLsizei count, const(GLchar)** varyings, GLenum bufferMode);
	void glGetTransformFeedbackVarying(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name);
	void glClampColor(GLenum target, GLenum clamp);
	void glBeginConditionalRender(GLuint id, GLenum mode);
	void glEndConditionalRender();
	void glVertexAttribIPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glGetVertexAttribIiv(GLuint index, GLenum pname, GLint* params);
	void glGetVertexAttribIuiv(GLuint index, GLenum pname, GLuint* params);
	void glVertexAttribI1i(GLuint index, GLint x);
	void glVertexAttribI2i(GLuint index, GLint x, GLint y);
	void glVertexAttribI3i(GLuint index, GLint x, GLint y, GLint z);
	void glVertexAttribI4i(GLuint index, GLint x, GLint y, GLint z, GLint w);
	void glVertexAttribI1ui(GLuint index, GLuint x);
	void glVertexAttribI2ui(GLuint index, GLuint x, GLuint y);
	void glVertexAttribI3ui(GLuint index, GLuint x, GLuint y, GLuint z);
	void glVertexAttribI4ui(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
	void glVertexAttribI1iv(GLuint index, const(GLint)* v);
	void glVertexAttribI2iv(GLuint index, const(GLint)* v);
	void glVertexAttribI3iv(GLuint index, const(GLint)* v);
	void glVertexAttribI4iv(GLuint index, const(GLint)* v);
	void glVertexAttribI1uiv(GLuint index, const(GLuint)* v);
	void glVertexAttribI2uiv(GLuint index, const(GLuint)* v);
	void glVertexAttribI3uiv(GLuint index, const(GLuint)* v);
	void glVertexAttribI4uiv(GLuint index, const(GLuint)* v);
	void glVertexAttribI4bv(GLuint index, const(GLbyte)* v);
	void glVertexAttribI4sv(GLuint index, const(GLshort)* v);
	void glVertexAttribI4ubv(GLuint index, const(GLubyte)* v);
	void glVertexAttribI4usv(GLuint index, const(GLushort)* v);
	void glGetUniformuiv(GLuint program, GLint location, GLuint* params);
	void glBindFragDataLocation(GLuint program, GLuint color, const(GLchar)* name);
	GLint glGetFragDataLocation(GLuint program, const(GLchar)* name);
	void glUniform1ui(GLint location, GLuint v0);
	void glUniform2ui(GLint location, GLuint v0, GLuint v1);
	void glUniform3ui(GLint location, GLuint v0, GLuint v1, GLuint v2);
	void glUniform4ui(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
	void glUniform1uiv(GLint location, GLsizei count, const(GLuint)* value);
	void glUniform2uiv(GLint location, GLsizei count, const(GLuint)* value);
	void glUniform3uiv(GLint location, GLsizei count, const(GLuint)* value);
	void glUniform4uiv(GLint location, GLsizei count, const(GLuint)* value);
	void glTexParameterIiv(GLenum target, GLenum pname, const(GLint)* params);
	void glTexParameterIuiv(GLenum target, GLenum pname, const(GLuint)* params);
	void glGetTexParameterIiv(GLenum target, GLenum pname, GLint* params);
	void glGetTexParameterIuiv(GLenum target, GLenum pname, GLuint* params);
	void glClearBufferiv(GLenum buffer, GLint drawbuffer, const(GLint)* value);
	void glClearBufferuiv(GLenum buffer, GLint drawbuffer, const(GLuint)* value);
	void glClearBufferfv(GLenum buffer, GLint drawbuffer, const(GLfloat)* value);
	void glClearBufferfi(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
	const(GLubyte)* glGetStringi(GLenum name, GLuint index);

	alias void function(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a) PFNGLCOLORMASKIPROC;
	alias void function(GLenum target, GLuint index, GLboolean* data) PFNGLGETBOOLEANI_VPROC;
	alias void function(GLenum target, GLuint index, GLint* data) PFNGLGETINTEGERI_VPROC;
	alias void function(GLenum target, GLuint index) PFNGLENABLEIPROC;
	alias void function(GLenum target, GLuint index) PFNGLDISABLEIPROC;
	alias GLboolean function(GLenum target, GLuint index) PFNGLISENABLEDIPROC;
	alias void function(GLenum primitiveMode) PFNGLBEGINTRANSFORMFEEDBACKPROC;
	alias void function() PFNGLENDTRANSFORMFEEDBACKPROC;
	alias void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) PFNGLBINDBUFFERRANGEPROC;
	alias void function(GLenum target, GLuint index, GLuint buffer) PFNGLBINDBUFFERBASEPROC;
	alias void function(GLuint program, GLsizei count, const(GLchar)** varyings, GLenum bufferMode) PFNGLTRANSFORMFEEDBACKVARYINGSPROC;
	alias void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) PFNGLGETTRANSFORMFEEDBACKVARYINGPROC;
	alias void function(GLenum target, GLenum clamp) PFNGLCLAMPCOLORPROC;
	alias void function(GLuint id, GLenum mode) PFNGLBEGINCONDITIONALRENDERPROC;
	alias void function() PFNGLENDCONDITIONALRENDERPROC;
	alias void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) PFNGLVERTEXATTRIBIPOINTERPROC;
	alias void function(GLuint index, GLenum pname, GLint* params) PFNGLGETVERTEXATTRIBIIVPROC;
	alias void function(GLuint index, GLenum pname, GLuint* params) PFNGLGETVERTEXATTRIBIUIVPROC;
	alias void function(GLuint index, GLint x) PFNGLVERTEXATTRIBI1IPROC;
	alias void function(GLuint index, GLint x, GLint y) PFNGLVERTEXATTRIBI2IPROC;
	alias void function(GLuint index, GLint x, GLint y, GLint z) PFNGLVERTEXATTRIBI3IPROC;
	alias void function(GLuint index, GLint x, GLint y, GLint z, GLint w) PFNGLVERTEXATTRIBI4IPROC;
	alias void function(GLuint index, GLuint x) PFNGLVERTEXATTRIBI1UIPROC;
	alias void function(GLuint index, GLuint x, GLuint y) PFNGLVERTEXATTRIBI2UIPROC;
	alias void function(GLuint index, GLuint x, GLuint y, GLuint z) PFNGLVERTEXATTRIBI3UIPROC;
	alias void function(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) PFNGLVERTEXATTRIBI4UIPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIBI1IVPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIBI2IVPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIBI3IVPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLVERTEXATTRIBI4IVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIBI1UIVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIBI2UIVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIBI3UIVPROC;
	alias void function(GLuint index, const(GLuint)* v) PFNGLVERTEXATTRIBI4UIVPROC;
	alias void function(GLuint index, const(GLbyte)* v) PFNGLVERTEXATTRIBI4BVPROC;
	alias void function(GLuint index, const(GLshort)* v) PFNGLVERTEXATTRIBI4SVPROC;
	alias void function(GLuint index, const(GLubyte)* v) PFNGLVERTEXATTRIBI4UBVPROC;
	alias void function(GLuint index, const(GLushort)* v) PFNGLVERTEXATTRIBI4USVPROC;
	alias void function(GLuint program, GLint location, GLuint* params) PFNGLGETUNIFORMUIVPROC;
	alias void function(GLuint program, GLuint color, const(GLchar)* name) PFNGLBINDFRAGDATALOCATIONPROC;
	alias GLint function(GLuint program, const(GLchar)* name) PFNGLGETFRAGDATALOCATIONPROC;
	alias void function(GLint location, GLuint v0) PFNGLUNIFORM1UIPROC;
	alias void function(GLint location, GLuint v0, GLuint v1) PFNGLUNIFORM2UIPROC;
	alias void function(GLint location, GLuint v0, GLuint v1, GLuint v2) PFNGLUNIFORM3UIPROC;
	alias void function(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) PFNGLUNIFORM4UIPROC;
	alias void function(GLint location, GLsizei count, const(GLuint)* value) PFNGLUNIFORM1UIVPROC;
	alias void function(GLint location, GLsizei count, const(GLuint)* value) PFNGLUNIFORM2UIVPROC;
	alias void function(GLint location, GLsizei count, const(GLuint)* value) PFNGLUNIFORM3UIVPROC;
	alias void function(GLint location, GLsizei count, const(GLuint)* value) PFNGLUNIFORM4UIVPROC;
	alias void function(GLenum target, GLenum pname, const(GLint)* params) PFNGLTEXPARAMETERIIVPROC;
	alias void function(GLenum target, GLenum pname, const(GLuint)* params) PFNGLTEXPARAMETERIUIVPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETTEXPARAMETERIIVPROC;
	alias void function(GLenum target, GLenum pname, GLuint* params) PFNGLGETTEXPARAMETERIUIVPROC;
	alias void function(GLenum buffer, GLint drawbuffer, const(GLint)* value) PFNGLCLEARBUFFERIVPROC;
	alias void function(GLenum buffer, GLint drawbuffer, const(GLuint)* value) PFNGLCLEARBUFFERUIVPROC;
	alias void function(GLenum buffer, GLint drawbuffer, const(GLfloat)* value) PFNGLCLEARBUFFERFVPROC;
	alias void function(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil) PFNGLCLEARBUFFERFIPROC;
	alias const(GLubyte)*  function(GLenum name, GLuint index) PFNGLGETSTRINGIPROC;

	// GL_VERSION_3_1

	/* OpenGL 3.1 also reuses entry points from these extensions:*/
	/* ARB_copy_buffer*/
	/* ARB_uniform_buffer_object*/
	void glDrawArraysInstanced(GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
	void glDrawElementsInstanced(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount);
	void glTexBuffer(GLenum target, GLenum internalformat, GLuint buffer);
	void glPrimitiveRestartIndex(GLuint index);

	alias void function(GLenum mode, GLint first, GLsizei count, GLsizei instancecount) PFNGLDRAWARRAYSINSTANCEDPROC;
	alias void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount) PFNGLDRAWELEMENTSINSTANCEDPROC;
	alias void function(GLenum target, GLenum internalformat, GLuint buffer) PFNGLTEXBUFFERPROC;
	alias void function(GLuint index) PFNGLPRIMITIVERESTARTINDEXPROC;

	// GL_VERSION_3_2

	/* OpenGL 3.2 also reuses entry points from these extensions:*/
	/* ARB_draw_elements_base_vertex*/
	/* ARB_provoking_vertex*/
	/* ARB_sync*/
	/* ARB_texture_multisample*/
	void glGetInteger64i_v(GLenum target, GLuint index, GLint64* data);
	void glGetBufferParameteri64v(GLenum target, GLenum pname, GLint64* params);
	void glFramebufferTexture(GLenum target, GLenum attachment, GLuint texture, GLint level);

	alias void function(GLenum target, GLuint index, GLint64* data) PFNGLGETINTEGER64I_VPROC;
	alias void function(GLenum target, GLenum pname, GLint64* params) PFNGLGETBUFFERPARAMETERI64VPROC;
	alias void function(GLenum target, GLenum attachment, GLuint texture, GLint level) PFNGLFRAMEBUFFERTEXTUREPROC;

	// GL_VERSION_3_3

	/* OpenGL 3.3 also reuses entry points from these extensions:*/
	/* ARB_blend_func_extended*/
	/* ARB_sampler_objects*/
	/* ARB_explicit_attrib_location, but it has none*/
	/* ARB_occlusion_query2(no entry points)*/
	/* ARB_shader_bit_encoding(no entry points)*/
	/* ARB_texture_rgb10_a2ui(no entry points)*/
	/* ARB_texture_swizzle(no entry points)*/
	/* ARB_timer_query*/
	/* ARB_vertex_type_2_10_10_10_rev*/
	void glVertexAttribDivisor(GLuint index, GLuint divisor);

	alias void function(GLuint index, GLuint divisor) PFNGLVERTEXATTRIBDIVISORPROC;

	// GL_VERSION_4_0

	/* OpenGL 4.0 also reuses entry points from these extensions:*/
	/* ARB_texture_query_lod(no entry points)*/
	/* ARB_draw_indirect*/
	/* ARB_gpu_shader5(no entry points)*/
	/* ARB_gpu_shader_fp64*/
	/* ARB_shader_subroutine*/
	/* ARB_tessellation_shader*/
	/* ARB_texture_buffer_object_rgb32(no entry points)*/
	/* ARB_texture_cube_map_array(no entry points)*/
	/* ARB_texture_gather(no entry points)*/
	/* ARB_transform_feedback2*/
	/* ARB_transform_feedback3*/
	void glMinSampleShading(GLfloat value);
	void glBlendEquationi(GLuint buf, GLenum mode);
	void glBlendEquationSeparatei(GLuint buf, GLenum modeRGB, GLenum modeAlpha);
	void glBlendFunci(GLuint buf, GLenum src, GLenum dst);
	void glBlendFuncSeparatei(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);

	alias void function(GLfloat value) PFNGLMINSAMPLESHADINGPROC;
	alias void function(GLuint buf, GLenum mode) PFNGLBLENDEQUATIONIPROC;
	alias void function(GLuint buf, GLenum modeRGB, GLenum modeAlpha) PFNGLBLENDEQUATIONSEPARATEIPROC;
	alias void function(GLuint buf, GLenum src, GLenum dst) PFNGLBLENDFUNCIPROC;
	alias void function(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) PFNGLBLENDFUNCSEPARATEIPROC;

	// GL_VERSION_4_1

	/* OpenGL 4.1 reuses entry points from these extensions:*/
	/* ARB_ES2_compatibility*/
	/* ARB_get_program_binary*/
	/* ARB_separate_shader_objects*/
	/* ARB_shader_precision(no entry points)*/
	/* ARB_vertex_attrib_64bit*/
	/* ARB_viewport_array*/

	// GL_VERSION_4_2

	/* OpenGL 4.2 reuses entry points from these extensions:*/
	/* ARB_base_instance*/
	/* ARB_shading_language_420pack(no entry points)*/
	/* ARB_transform_feedback_instanced*/
	/* ARB_compressed_texture_pixel_storage(no entry points)*/
	/* ARB_conservative_depth(no entry points)*/
	/* ARB_internalformat_query*/
	/* ARB_map_buffer_alignment(no entry points)*/
	/* ARB_shader_atomic_counters*/
	/* ARB_shader_image_load_store*/
	/* ARB_shading_language_packing(no entry points)*/
	/* ARB_texture_storage*/

	// GL_VERSION_4_3

	/* OpenGL 4.3 reuses entry points from these extensions:*/
	/* ARB_arrays_of_arrays(no entry points, GLSL only)*/
	/* ARB_fragment_layer_viewport(no entry points, GLSL only)*/
	/* ARB_shader_image_size(no entry points, GLSL only)*/
	/* ARB_ES3_compatibility(no entry points)*/
	/* ARB_clear_buffer_object*/
	/* ARB_compute_shader*/
	/* ARB_copy_image*/
	/* KHR_debug(includes ARB_debug_output commands promoted to KHR without suffixes)*/
	/* ARB_explicit_uniform_location(no entry points)*/
	/* ARB_framebuffer_no_attachments*/
	/* ARB_internalformat_query2*/
	/* ARB_invalidate_subdata*/
	/* ARB_multi_draw_indirect*/
	/* ARB_program_interface_query*/
	/* ARB_robust_buffer_access_behavior(no entry points)*/
	/* ARB_shader_storage_buffer_object*/
	/* ARB_stencil_texturing(no entry points)*/
	/* ARB_texture_buffer_range*/
	/* ARB_texture_query_levels(no entry points)*/
	/* ARB_texture_storage_multisample*/
	/* ARB_texture_view*/
	/* ARB_vertex_attrib_binding*/

	// GL_ARB_depth_buffer_float

	// GL_ARB_framebuffer_object

	GLboolean glIsRenderbuffer(GLuint renderbuffer);
	void glBindRenderbuffer(GLenum target, GLuint renderbuffer);
	void glDeleteRenderbuffers(GLsizei n, const(GLuint)* renderbuffers);
	void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers);
	void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
	void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint* params);
	GLboolean glIsFramebuffer(GLuint framebuffer);
	void glBindFramebuffer(GLenum target, GLuint framebuffer);
	void glDeleteFramebuffers(GLsizei n, const(GLuint)* framebuffers);
	void glGenFramebuffers(GLsizei n, GLuint* framebuffers);
	GLenum glCheckFramebufferStatus(GLenum target);
	void glFramebufferTexture1D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
	void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
	void glFramebufferTexture3D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
	void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
	void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint* params);
	void glGenerateMipmap(GLenum target);
	void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
	void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
	void glFramebufferTextureLayer(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);

	alias GLboolean function(GLuint renderbuffer) PFNGLISRENDERBUFFERPROC;
	alias void function(GLenum target, GLuint renderbuffer) PFNGLBINDRENDERBUFFERPROC;
	alias void function(GLsizei n, const(GLuint)* renderbuffers) PFNGLDELETERENDERBUFFERSPROC;
	alias void function(GLsizei n, GLuint* renderbuffers) PFNGLGENRENDERBUFFERSPROC;
	alias void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height) PFNGLRENDERBUFFERSTORAGEPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETRENDERBUFFERPARAMETERIVPROC;
	alias GLboolean function(GLuint framebuffer) PFNGLISFRAMEBUFFERPROC;
	alias void function(GLenum target, GLuint framebuffer) PFNGLBINDFRAMEBUFFERPROC;
	alias void function(GLsizei n, const(GLuint)* framebuffers) PFNGLDELETEFRAMEBUFFERSPROC;
	alias void function(GLsizei n, GLuint* framebuffers) PFNGLGENFRAMEBUFFERSPROC;
	alias GLenum function(GLenum target) PFNGLCHECKFRAMEBUFFERSTATUSPROC;
	alias void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) PFNGLFRAMEBUFFERTEXTURE1DPROC;
	alias void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) PFNGLFRAMEBUFFERTEXTURE2DPROC;
	alias void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) PFNGLFRAMEBUFFERTEXTURE3DPROC;
	alias void function(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) PFNGLFRAMEBUFFERRENDERBUFFERPROC;
	alias void function(GLenum target, GLenum attachment, GLenum pname, GLint* params) PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC;
	alias void function(GLenum target) PFNGLGENERATEMIPMAPPROC;
	alias void function(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter) PFNGLBLITFRAMEBUFFERPROC;
	alias void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC;
	alias void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) PFNGLFRAMEBUFFERTEXTURELAYERPROC;

	// GL_ARB_framebuffer_sRGB

	// GL_ARB_half_float_vertex

	// GL_ARB_map_buffer_range
	GLvoid* glMapBufferRange(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
	void glFlushMappedBufferRange(GLenum target, GLintptr offset, GLsizeiptr length);

	alias GLvoid* function(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access) PFNGLMAPBUFFERRANGEPROC;
	alias void function(GLenum target, GLintptr offset, GLsizeiptr length) PFNGLFLUSHMAPPEDBUFFERRANGEPROC;

	// GL_ARB_texture_compression_rgtc

	// GL_ARB_texture_rg

	// GL_ARB_vertex_array_object

	void glBindVertexArray(GLuint array);
	void glDeleteVertexArrays(GLsizei n, const(GLuint)* arrays);
	void glGenVertexArrays(GLsizei n, GLuint* arrays);
	GLboolean glIsVertexArray(GLuint array);

	alias void function(GLuint array) PFNGLBINDVERTEXARRAYPROC;
	alias void function(GLsizei n, const(GLuint)* arrays) PFNGLDELETEVERTEXARRAYSPROC;
	alias void function(GLsizei n, GLuint* arrays) PFNGLGENVERTEXARRAYSPROC;
	alias GLboolean function(GLuint array) PFNGLISVERTEXARRAYPROC;

	// GL_ARB_uniform_buffer_object

	void glGetUniformIndices(GLuint program, GLsizei uniformCount, const(GLchar)** uniformNames, GLuint* uniformIndices);
	void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params);
	void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
	GLuint glGetUniformBlockIndex(GLuint program, const(GLchar)* uniformBlockName);
	void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
	void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
	void glUniformBlockBinding(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);

	alias void function(GLuint program, GLsizei uniformCount, const(GLchar)** uniformNames, GLuint* uniformIndices) PFNGLGETUNIFORMINDICESPROC;
	alias void function(GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params) PFNGLGETACTIVEUNIFORMSIVPROC;
	alias void function(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName) PFNGLGETACTIVEUNIFORMNAMEPROC;
	alias GLuint function(GLuint program, const(GLchar)* uniformBlockName) PFNGLGETUNIFORMBLOCKINDEXPROC;
	alias void function(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params) PFNGLGETACTIVEUNIFORMBLOCKIVPROC;
	alias void function(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName) PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC;
	alias void function(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding) PFNGLUNIFORMBLOCKBINDINGPROC;

	// GL_ARB_copy_buffer

	void glCopyBufferSubData(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);

	alias void function(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size) PFNGLCOPYBUFFERSUBDATAPROC;

	// GL_ARB_depth_clamp

	// GL_ARB_draw_elements_base_vertex

	void glDrawElementsBaseVertex(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex);
	void glDrawRangeElementsBaseVertex(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex);
	void glDrawElementsInstancedBaseVertex(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount, GLint basevertex);
	void glMultiDrawElementsBaseVertex(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid)** indices, GLsizei drawcount, const(GLint)* basevertex);

	alias void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex) PFNGLDRAWELEMENTSBASEVERTEXPROC;
	alias void function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex) PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC;
	alias void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount, GLint basevertex) PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC;
	alias void function(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid)** indices, GLsizei drawcount, const(GLint)* basevertex) PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC;

	// GL_ARB_fragment_coord_conventions

	// GL_ARB_provoking_vertex

	void glProvokingVertex(GLenum mode);

	alias void function(GLenum mode) PFNGLPROVOKINGVERTEXPROC;

	// GL_ARB_seamless_cube_map

	// GL_ARB_sync

	GLsync glFenceSync(GLenum condition, GLbitfield flags);
	GLboolean glIsSync(GLsync sync);
	void glDeleteSync(GLsync sync);
	GLenum glClientWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout);
	void glWaitSync(GLsync sync, GLbitfield flags, GLuint64 timeout);
	void glGetInteger64v(GLenum pname, GLint64* params);
	void glGetSynciv(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values);

	alias GLsync function(GLenum condition, GLbitfield flags) PFNGLFENCESYNCPROC;
	alias GLboolean function(GLsync sync) PFNGLISSYNCPROC;
	alias void function(GLsync sync) PFNGLDELETESYNCPROC;
	alias GLenum function(GLsync sync, GLbitfield flags, GLuint64 timeout) PFNGLCLIENTWAITSYNCPROC;
	alias void function(GLsync sync, GLbitfield flags, GLuint64 timeout) PFNGLWAITSYNCPROC;
	alias void function(GLenum pname, GLint64* params) PFNGLGETINTEGER64VPROC;
	alias void function(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values) PFNGLGETSYNCIVPROC;

	// GL_ARB_texture_multisample

	void glTexImage2DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
	void glTexImage3DMultisample(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
	void glGetMultisamplefv(GLenum pname, GLuint index, GLfloat* val);
	void glSampleMaski(GLuint index, GLbitfield mask);

	alias void function(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) PFNGLTEXIMAGE2DMULTISAMPLEPROC;
	alias void function(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) PFNGLTEXIMAGE3DMULTISAMPLEPROC;
	alias void function(GLenum pname, GLuint index, GLfloat* val) PFNGLGETMULTISAMPLEFVPROC;
	alias void function(GLuint index, GLbitfield mask) PFNGLSAMPLEMASKIPROC;

	// GL_ARB_vertex_array_bgra

	// GL_ARB_draw_buffers_blend

	void glBlendEquationiARB(GLuint buf, GLenum mode);
	void glBlendEquationSeparateiARB(GLuint buf, GLenum modeRGB, GLenum modeAlpha);
	void glBlendFunciARB(GLuint buf, GLenum src, GLenum dst);
	void glBlendFuncSeparateiARB(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);

	alias void function(GLuint buf, GLenum mode) PFNGLBLENDEQUATIONIARBPROC;
	alias void function(GLuint buf, GLenum modeRGB, GLenum modeAlpha) PFNGLBLENDEQUATIONSEPARATEIARBPROC;
	alias void function(GLuint buf, GLenum src, GLenum dst) PFNGLBLENDFUNCIARBPROC;
	alias void function(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) PFNGLBLENDFUNCSEPARATEIARBPROC;

	// GL_ARB_sample_shading

	void glMinSampleShadingARB(GLfloat value);

	alias void function(GLfloat value) PFNGLMINSAMPLESHADINGARBPROC;

	// GL_ARB_texture_cube_map_array

	// GL_ARB_texture_gather

	// GL_ARB_texture_query_lod

	// GL_ARB_shading_language_include

	void glNamedStringARB(GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string);
	void glDeleteNamedStringARB(GLint namelen, const(GLchar)* name);
	void glCompileShaderIncludeARB(GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length);
	GLboolean glIsNamedStringARB(GLint namelen, const(GLchar)* name);
	void glGetNamedStringARB(GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string);
	void glGetNamedStringivARB(GLint namelen, const(GLchar)* name, GLenum pname, GLint* params);

	alias void function(GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string) PFNGLNAMEDSTRINGARBPROC;
	alias void function(GLint namelen, const(GLchar)* name) PFNGLDELETENAMEDSTRINGARBPROC;
	alias void function(GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length) PFNGLCOMPILESHADERINCLUDEARBPROC;
	alias GLboolean function(GLint namelen, const(GLchar)* name) PFNGLISNAMEDSTRINGARBPROC;
	alias void function(GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string) PFNGLGETNAMEDSTRINGARBPROC;
	alias void function(GLint namelen, const(GLchar)* name, GLenum pname, GLint* params) PFNGLGETNAMEDSTRINGIVARBPROC;

	// GL_ARB_texture_compression_bptc

	// GL_ARB_blend_func_extended

	void glBindFragDataLocationIndexed(GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name);
	GLint glGetFragDataIndex(GLuint program, const(GLchar)* name);

	alias void function(GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name) PFNGLBINDFRAGDATALOCATIONINDEXEDPROC;
	alias GLint function(GLuint program, const(GLchar)* name) PFNGLGETFRAGDATAINDEXPROC;

	// GL_ARB_explicit_attrib_location

	// GL_ARB_occlusion_query2

	// GL_ARB_sampler_objects

	void glGenSamplers(GLsizei count, GLuint* samplers);
	void glDeleteSamplers(GLsizei count, const(GLuint)* samplers);
	GLboolean glIsSampler(GLuint sampler);
	void glBindSampler(GLuint unit, GLuint sampler);
	void glSamplerParameteri(GLuint sampler, GLenum pname, GLint param);
	void glSamplerParameteriv(GLuint sampler, GLenum pname, const(GLint)* param);
	void glSamplerParameterf(GLuint sampler, GLenum pname, GLfloat param);
	void glSamplerParameterfv(GLuint sampler, GLenum pname, const(GLfloat)* param);
	void glSamplerParameterIiv(GLuint sampler, GLenum pname, const(GLint)* param);
	void glSamplerParameterIuiv(GLuint sampler, GLenum pname, const(GLuint)* param);
	void glGetSamplerParameteriv(GLuint sampler, GLenum pname, GLint* params);
	void glGetSamplerParameterIiv(GLuint sampler, GLenum pname, GLint* params);
	void glGetSamplerParameterfv(GLuint sampler, GLenum pname, GLfloat* params);
	void glGetSamplerParameterIuiv(GLuint sampler, GLenum pname, GLuint* params);

	alias void function(GLsizei count, GLuint* samplers) PFNGLGENSAMPLERSPROC;
	alias void function(GLsizei count, const(GLuint)* samplers) PFNGLDELETESAMPLERSPROC;
	alias GLboolean function(GLuint sampler) PFNGLISSAMPLERPROC;
	alias void function(GLuint unit, GLuint sampler) PFNGLBINDSAMPLERPROC;
	alias void function(GLuint sampler, GLenum pname, GLint param) PFNGLSAMPLERPARAMETERIPROC;
	alias void function(GLuint sampler, GLenum pname, const(GLint)* param) PFNGLSAMPLERPARAMETERIVPROC;
	alias void function(GLuint sampler, GLenum pname, GLfloat param) PFNGLSAMPLERPARAMETERFPROC;
	alias void function(GLuint sampler, GLenum pname, const(GLfloat)* param) PFNGLSAMPLERPARAMETERFVPROC;
	alias void function(GLuint sampler, GLenum pname, const(GLint)* param) PFNGLSAMPLERPARAMETERIIVPROC;
	alias void function(GLuint sampler, GLenum pname, const(GLuint)* param) PFNGLSAMPLERPARAMETERIUIVPROC;
	alias void function(GLuint sampler, GLenum pname, GLint* params) PFNGLGETSAMPLERPARAMETERIVPROC;
	alias void function(GLuint sampler, GLenum pname, GLint* params) PFNGLGETSAMPLERPARAMETERIIVPROC;
	alias void function(GLuint sampler, GLenum pname, GLfloat* params) PFNGLGETSAMPLERPARAMETERFVPROC;
	alias void function(GLuint sampler, GLenum pname, GLuint* params) PFNGLGETSAMPLERPARAMETERIUIVPROC;

	// GL_ARB_shader_bit_encoding

	// GL_ARB_texture_rgb10_a2ui

	// GL_ARB_texture_swizzle

	// GL_ARB_timer_query

	void glQueryCounter(GLuint id, GLenum target);
	void glGetQueryObjecti64v(GLuint id, GLenum pname, GLint64* params);
	void glGetQueryObjectui64v(GLuint id, GLenum pname, GLuint64* params);

	alias void function(GLuint id, GLenum target) PFNGLQUERYCOUNTERPROC;
	alias void function(GLuint id, GLenum pname, GLint64* params) PFNGLGETQUERYOBJECTI64VPROC;
	alias void function(GLuint id, GLenum pname, GLuint64* params) PFNGLGETQUERYOBJECTUI64VPROC;

	// GL_ARB_vertex_type_2_10_10_10_rev

	void glVertexP2ui(GLenum type, GLuint value);
	void glVertexP2uiv(GLenum type, const(GLuint)* value);
	void glVertexP3ui(GLenum type, GLuint value);
	void glVertexP3uiv(GLenum type, const(GLuint)* value);
	void glVertexP4ui(GLenum type, GLuint value);
	void glVertexP4uiv(GLenum type, const(GLuint)* value);
	void glTexCoordP1ui(GLenum type, GLuint coords);
	void glTexCoordP1uiv(GLenum type, const(GLuint)* coords);
	void glTexCoordP2ui(GLenum type, GLuint coords);
	void glTexCoordP2uiv(GLenum type, const(GLuint)* coords);
	void glTexCoordP3ui(GLenum type, GLuint coords);
	void glTexCoordP3uiv(GLenum type, const(GLuint)* coords);
	void glTexCoordP4ui(GLenum type, GLuint coords);
	void glTexCoordP4uiv(GLenum type, const(GLuint)* coords);
	void glMultiTexCoordP1ui(GLenum texture, GLenum type, GLuint coords);
	void glMultiTexCoordP1uiv(GLenum texture, GLenum type, const(GLuint)* coords);
	void glMultiTexCoordP2ui(GLenum texture, GLenum type, GLuint coords);
	void glMultiTexCoordP2uiv(GLenum texture, GLenum type, const(GLuint)* coords);
	void glMultiTexCoordP3ui(GLenum texture, GLenum type, GLuint coords);
	void glMultiTexCoordP3uiv(GLenum texture, GLenum type, const(GLuint)* coords);
	void glMultiTexCoordP4ui(GLenum texture, GLenum type, GLuint coords);
	void glMultiTexCoordP4uiv(GLenum texture, GLenum type, const(GLuint)* coords);
	void glNormalP3ui(GLenum type, GLuint coords);
	void glNormalP3uiv(GLenum type, const(GLuint)* coords);
	void glColorP3ui(GLenum type, GLuint color);
	void glColorP3uiv(GLenum type, const(GLuint)* color);
	void glColorP4ui(GLenum type, GLuint color);
	void glColorP4uiv(GLenum type, const(GLuint)* color);
	void glSecondaryColorP3ui(GLenum type, GLuint color);
	void glSecondaryColorP3uiv(GLenum type, const(GLuint)* color);
	void glVertexAttribP1ui(GLuint index, GLenum type, GLboolean normalized, GLuint value);
	void glVertexAttribP1uiv(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
	void glVertexAttribP2ui(GLuint index, GLenum type, GLboolean normalized, GLuint value);
	void glVertexAttribP2uiv(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
	void glVertexAttribP3ui(GLuint index, GLenum type, GLboolean normalized, GLuint value);
	void glVertexAttribP3uiv(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);
	void glVertexAttribP4ui(GLuint index, GLenum type, GLboolean normalized, GLuint value);
	void glVertexAttribP4uiv(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value);

	alias void function(GLenum type, GLuint value) PFNGLVERTEXP2UIPROC;
	alias void function(GLenum type, const(GLuint)* value) PFNGLVERTEXP2UIVPROC;
	alias void function(GLenum type, GLuint value) PFNGLVERTEXP3UIPROC;
	alias void function(GLenum type, const(GLuint)* value) PFNGLVERTEXP3UIVPROC;
	alias void function(GLenum type, GLuint value) PFNGLVERTEXP4UIPROC;
	alias void function(GLenum type, const(GLuint)* value) PFNGLVERTEXP4UIVPROC;
	alias void function(GLenum type, GLuint coords) PFNGLTEXCOORDP1UIPROC;
	alias void function(GLenum type, const(GLuint)* coords) PFNGLTEXCOORDP1UIVPROC;
	alias void function(GLenum type, GLuint coords) PFNGLTEXCOORDP2UIPROC;
	alias void function(GLenum type, const(GLuint)* coords) PFNGLTEXCOORDP2UIVPROC;
	alias void function(GLenum type, GLuint coords) PFNGLTEXCOORDP3UIPROC;
	alias void function(GLenum type, const(GLuint)* coords) PFNGLTEXCOORDP3UIVPROC;
	alias void function(GLenum type, GLuint coords) PFNGLTEXCOORDP4UIPROC;
	alias void function(GLenum type, const(GLuint)* coords) PFNGLTEXCOORDP4UIVPROC;
	alias void function(GLenum texture, GLenum type, GLuint coords) PFNGLMULTITEXCOORDP1UIPROC;
	alias void function(GLenum texture, GLenum type, const(GLuint)* coords) PFNGLMULTITEXCOORDP1UIVPROC;
	alias void function(GLenum texture, GLenum type, GLuint coords) PFNGLMULTITEXCOORDP2UIPROC;
	alias void function(GLenum texture, GLenum type, const(GLuint)* coords) PFNGLMULTITEXCOORDP2UIVPROC;
	alias void function(GLenum texture, GLenum type, GLuint coords) PFNGLMULTITEXCOORDP3UIPROC;
	alias void function(GLenum texture, GLenum type, const(GLuint)* coords) PFNGLMULTITEXCOORDP3UIVPROC;
	alias void function(GLenum texture, GLenum type, GLuint coords) PFNGLMULTITEXCOORDP4UIPROC;
	alias void function(GLenum texture, GLenum type, const(GLuint)* coords) PFNGLMULTITEXCOORDP4UIVPROC;
	alias void function(GLenum type, GLuint coords) PFNGLNORMALP3UIPROC;
	alias void function(GLenum type, const(GLuint)* coords) PFNGLNORMALP3UIVPROC;
	alias void function(GLenum type, GLuint color) PFNGLCOLORP3UIPROC;
	alias void function(GLenum type, const(GLuint)* color) PFNGLCOLORP3UIVPROC;
	alias void function(GLenum type, GLuint color) PFNGLCOLORP4UIPROC;
	alias void function(GLenum type, const(GLuint)* color) PFNGLCOLORP4UIVPROC;
	alias void function(GLenum type, GLuint color) PFNGLSECONDARYCOLORP3UIPROC;
	alias void function(GLenum type, const(GLuint)* color) PFNGLSECONDARYCOLORP3UIVPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) PFNGLVERTEXATTRIBP1UIPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) PFNGLVERTEXATTRIBP1UIVPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) PFNGLVERTEXATTRIBP2UIPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) PFNGLVERTEXATTRIBP2UIVPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) PFNGLVERTEXATTRIBP3UIPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) PFNGLVERTEXATTRIBP3UIVPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) PFNGLVERTEXATTRIBP4UIPROC;
	alias void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) PFNGLVERTEXATTRIBP4UIVPROC;

	// GL_ARB_draw_indirect

	void glDrawArraysIndirect(GLenum mode, const(GLvoid)* indirect);
	void glDrawElementsIndirect(GLenum mode, GLenum type, const(GLvoid)* indirect);

	alias void function(GLenum mode, const(GLvoid)* indirect) PFNGLDRAWARRAYSINDIRECTPROC;
	alias void function(GLenum mode, GLenum type, const(GLvoid)* indirect) PFNGLDRAWELEMENTSINDIRECTPROC;

	// GL_ARB_gpu_shader5

	// GL_ARB_gpu_shader_fp64

	void glUniform1d(GLint location, GLdouble x);
	void glUniform2d(GLint location, GLdouble x, GLdouble y);
	void glUniform3d(GLint location, GLdouble x, GLdouble y, GLdouble z);
	void glUniform4d(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void glUniform1dv(GLint location, GLsizei count, const(GLdouble)* value);
	void glUniform2dv(GLint location, GLsizei count, const(GLdouble)* value);
	void glUniform3dv(GLint location, GLsizei count, const(GLdouble)* value);
	void glUniform4dv(GLint location, GLsizei count, const(GLdouble)* value);
	void glUniformMatrix2dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix3dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix4dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix2x3dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix2x4dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix3x2dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix3x4dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix4x2dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glUniformMatrix4x3dv(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glGetUniformdv(GLuint program, GLint location, GLdouble* params);

	alias void function(GLint location, GLdouble x) PFNGLUNIFORM1DPROC;
	alias void function(GLint location, GLdouble x, GLdouble y) PFNGLUNIFORM2DPROC;
	alias void function(GLint location, GLdouble x, GLdouble y, GLdouble z) PFNGLUNIFORM3DPROC;
	alias void function(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) PFNGLUNIFORM4DPROC;
	alias void function(GLint location, GLsizei count, const(GLdouble)* value) PFNGLUNIFORM1DVPROC;
	alias void function(GLint location, GLsizei count, const(GLdouble)* value) PFNGLUNIFORM2DVPROC;
	alias void function(GLint location, GLsizei count, const(GLdouble)* value) PFNGLUNIFORM3DVPROC;
	alias void function(GLint location, GLsizei count, const(GLdouble)* value) PFNGLUNIFORM4DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX2DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX3DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX4DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX2X3DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX2X4DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX3X2DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX3X4DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX4X2DVPROC;
	alias void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLUNIFORMMATRIX4X3DVPROC;
	alias void function(GLuint program, GLint location, GLdouble* params) PFNGLGETUNIFORMDVPROC;

	// GL_ARB_shader_subroutine

	GLint glGetSubroutineUniformLocation(GLuint program, GLenum shadertype, const(GLchar)* name);
	GLuint glGetSubroutineIndex(GLuint program, GLenum shadertype, const(GLchar)* name);
	void glGetActiveSubroutineUniformiv(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values);
	void glGetActiveSubroutineUniformName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
	void glGetActiveSubroutineName(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name);
	void glUniformSubroutinesuiv(GLenum shadertype, GLsizei count, const(GLuint)* indices);
	void glGetUniformSubroutineuiv(GLenum shadertype, GLint location, GLuint* params);
	void glGetProgramStageiv(GLuint program, GLenum shadertype, GLenum pname, GLint* values);

	alias GLint function(GLuint program, GLenum shadertype, const(GLchar)* name) PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC;
	alias GLuint function(GLuint program, GLenum shadertype, const(GLchar)* name) PFNGLGETSUBROUTINEINDEXPROC;
	alias void function(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values) PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC;
	alias void function(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC;
	alias void function(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) PFNGLGETACTIVESUBROUTINENAMEPROC;
	alias void function(GLenum shadertype, GLsizei count, const(GLuint)* indices) PFNGLUNIFORMSUBROUTINESUIVPROC;
	alias void function(GLenum shadertype, GLint location, GLuint* params) PFNGLGETUNIFORMSUBROUTINEUIVPROC;
	alias void function(GLuint program, GLenum shadertype, GLenum pname, GLint* values) PFNGLGETPROGRAMSTAGEIVPROC;

	// GL_ARB_tessellation_shader

	void glPatchParameteri(GLenum pname, GLint value);
	void glPatchParameterfv(GLenum pname, const(GLfloat)* values);

	alias void function(GLenum pname, GLint value) PFNGLPATCHPARAMETERIPROC;
	alias void function(GLenum pname, const(GLfloat)* values) PFNGLPATCHPARAMETERFVPROC;

	// GL_ARB_texture_buffer_object_rgb32

	// GL_ARB_transform_feedback2

	void glBindTransformFeedback(GLenum target, GLuint id);
	void glDeleteTransformFeedbacks(GLsizei n, const(GLuint)* ids);
	void glGenTransformFeedbacks(GLsizei n, GLuint* ids);
	GLboolean glIsTransformFeedback(GLuint id);
	void glPauseTransformFeedback();
	void glResumeTransformFeedback();
	void glDrawTransformFeedback(GLenum mode, GLuint id);

	alias void function(GLenum target, GLuint id) PFNGLBINDTRANSFORMFEEDBACKPROC;
	alias void function(GLsizei n, const(GLuint)* ids) PFNGLDELETETRANSFORMFEEDBACKSPROC;
	alias void function(GLsizei n, GLuint* ids) PFNGLGENTRANSFORMFEEDBACKSPROC;
	alias GLboolean function(GLuint id) PFNGLISTRANSFORMFEEDBACKPROC;
	alias void function() PFNGLPAUSETRANSFORMFEEDBACKPROC;
	alias void function() PFNGLRESUMETRANSFORMFEEDBACKPROC;
	alias void function(GLenum mode, GLuint id) PFNGLDRAWTRANSFORMFEEDBACKPROC;

	// GL_ARB_transform_feedback3

	void glDrawTransformFeedbackStream(GLenum mode, GLuint id, GLuint stream);
	void glBeginQueryIndexed(GLenum target, GLuint index, GLuint id);
	void glEndQueryIndexed(GLenum target, GLuint index);
	void glGetQueryIndexediv(GLenum target, GLuint index, GLenum pname, GLint* params);

	alias void function(GLenum mode, GLuint id, GLuint stream) PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC;
	alias void function(GLenum target, GLuint index, GLuint id) PFNGLBEGINQUERYINDEXEDPROC;
	alias void function(GLenum target, GLuint index) PFNGLENDQUERYINDEXEDPROC;
	alias void function(GLenum target, GLuint index, GLenum pname, GLint* params) PFNGLGETQUERYINDEXEDIVPROC;

	// GL_ARB_ES2_compatibility

	void glReleaseShaderCompiler();
	void glShaderBinary(GLsizei count, const(GLuint)* shaders, GLenum binaryformat, const(GLvoid)* binary, GLsizei length);
	void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision);
	void glDepthRangef(GLfloat n, GLfloat f);
	void glClearDepthf(GLfloat d);

	alias void function() PFNGLRELEASESHADERCOMPILERPROC;
	alias void function(GLsizei count, const(GLuint)* shaders, GLenum binaryformat, const(GLvoid)* binary, GLsizei length) PFNGLSHADERBINARYPROC;
	alias void function(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision) PFNGLGETSHADERPRECISIONFORMATPROC;
	alias void function(GLfloat n, GLfloat f) PFNGLDEPTHRANGEFPROC;
	alias void function(GLfloat d) PFNGLCLEARDEPTHFPROC;

	// GL_ARB_get_program_binary

	void glGetProgramBinary(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary);
	void glProgramBinary(GLuint program, GLenum binaryFormat, const(GLvoid)* binary, GLsizei length);
	void glProgramParameteri(GLuint program, GLenum pname, GLint value);

	alias void function(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary) PFNGLGETPROGRAMBINARYPROC;
	alias void function(GLuint program, GLenum binaryFormat, const(GLvoid)* binary, GLsizei length) PFNGLPROGRAMBINARYPROC;
	alias void function(GLuint program, GLenum pname, GLint value) PFNGLPROGRAMPARAMETERIPROC;

	// GL_ARB_separate_shader_objects

	void glUseProgramStages(GLuint pipeline, GLbitfield stages, GLuint program);
	void glActiveShaderProgram(GLuint pipeline, GLuint program);
	GLuint glCreateShaderProgramv(GLenum type, GLsizei count, const(GLchar)** strings);
	void glBindProgramPipeline(GLuint pipeline);
	void glDeleteProgramPipelines(GLsizei n, const(GLuint)* pipelines);
	void glGenProgramPipelines(GLsizei n, GLuint* pipelines);
	GLboolean glIsProgramPipeline(GLuint pipeline);
	void glGetProgramPipelineiv(GLuint pipeline, GLenum pname, GLint* params);
	void glProgramUniform1i(GLuint program, GLint location, GLint v0);
	void glProgramUniform1iv(GLuint program, GLint location, GLsizei count, const(GLint)* value);
	void glProgramUniform1f(GLuint program, GLint location, GLfloat v0);
	void glProgramUniform1fv(GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
	void glProgramUniform1d(GLuint program, GLint location, GLdouble v0);
	void glProgramUniform1dv(GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
	void glProgramUniform1ui(GLuint program, GLint location, GLuint v0);
	void glProgramUniform1uiv(GLuint program, GLint location, GLsizei count, const(GLuint)* value);
	void glProgramUniform2i(GLuint program, GLint location, GLint v0, GLint v1);
	void glProgramUniform2iv(GLuint program, GLint location, GLsizei count, const(GLint)* value);
	void glProgramUniform2f(GLuint program, GLint location, GLfloat v0, GLfloat v1);
	void glProgramUniform2fv(GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
	void glProgramUniform2d(GLuint program, GLint location, GLdouble v0, GLdouble v1);
	void glProgramUniform2dv(GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
	void glProgramUniform2ui(GLuint program, GLint location, GLuint v0, GLuint v1);
	void glProgramUniform2uiv(GLuint program, GLint location, GLsizei count, const(GLuint)* value);
	void glProgramUniform3i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
	void glProgramUniform3iv(GLuint program, GLint location, GLsizei count, const(GLint)* value);
	void glProgramUniform3f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
	void glProgramUniform3fv(GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
	void glProgramUniform3d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
	void glProgramUniform3dv(GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
	void glProgramUniform3ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
	void glProgramUniform3uiv(GLuint program, GLint location, GLsizei count, const(GLuint)* value);
	void glProgramUniform4i(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
	void glProgramUniform4iv(GLuint program, GLint location, GLsizei count, const(GLint)* value);
	void glProgramUniform4f(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
	void glProgramUniform4fv(GLuint program, GLint location, GLsizei count, const(GLfloat)* value);
	void glProgramUniform4d(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
	void glProgramUniform4dv(GLuint program, GLint location, GLsizei count, const(GLdouble)* value);
	void glProgramUniform4ui(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
	void glProgramUniform4uiv(GLuint program, GLint location, GLsizei count, const(GLuint)* value);
	void glProgramUniformMatrix2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix2x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix3x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix2x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix4x2fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix3x4fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix4x3fv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value);
	void glProgramUniformMatrix2x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix3x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix2x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix4x2dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix3x4dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glProgramUniformMatrix4x3dv(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value);
	void glValidateProgramPipeline(GLuint pipeline);
	void glGetProgramPipelineInfoLog(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog);

	alias void function(GLuint pipeline, GLbitfield stages, GLuint program) PFNGLUSEPROGRAMSTAGESPROC;
	alias void function(GLuint pipeline, GLuint program) PFNGLACTIVESHADERPROGRAMPROC;
	alias GLuint function(GLenum type, GLsizei count, const(GLchar)** strings) PFNGLCREATESHADERPROGRAMVPROC;
	alias void function(GLuint pipeline) PFNGLBINDPROGRAMPIPELINEPROC;
	alias void function(GLsizei n, const(GLuint)* pipelines) PFNGLDELETEPROGRAMPIPELINESPROC;
	alias void function(GLsizei n, GLuint* pipelines) PFNGLGENPROGRAMPIPELINESPROC;
	alias GLboolean function(GLuint pipeline) PFNGLISPROGRAMPIPELINEPROC;
	alias void function(GLuint pipeline, GLenum pname, GLint* params) PFNGLGETPROGRAMPIPELINEIVPROC;
	alias void function(GLuint program, GLint location, GLint v0) PFNGLPROGRAMUNIFORM1IPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) PFNGLPROGRAMUNIFORM1IVPROC;
	alias void function(GLuint program, GLint location, GLfloat v0) PFNGLPROGRAMUNIFORM1FPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) PFNGLPROGRAMUNIFORM1FVPROC;
	alias void function(GLuint program, GLint location, GLdouble v0) PFNGLPROGRAMUNIFORM1DPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) PFNGLPROGRAMUNIFORM1DVPROC;
	alias void function(GLuint program, GLint location, GLuint v0) PFNGLPROGRAMUNIFORM1UIPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) PFNGLPROGRAMUNIFORM1UIVPROC;
	alias void function(GLuint program, GLint location, GLint v0, GLint v1) PFNGLPROGRAMUNIFORM2IPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) PFNGLPROGRAMUNIFORM2IVPROC;
	alias void function(GLuint program, GLint location, GLfloat v0, GLfloat v1) PFNGLPROGRAMUNIFORM2FPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) PFNGLPROGRAMUNIFORM2FVPROC;
	alias void function(GLuint program, GLint location, GLdouble v0, GLdouble v1) PFNGLPROGRAMUNIFORM2DPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) PFNGLPROGRAMUNIFORM2DVPROC;
	alias void function(GLuint program, GLint location, GLuint v0, GLuint v1) PFNGLPROGRAMUNIFORM2UIPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) PFNGLPROGRAMUNIFORM2UIVPROC;
	alias void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2) PFNGLPROGRAMUNIFORM3IPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) PFNGLPROGRAMUNIFORM3IVPROC;
	alias void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2) PFNGLPROGRAMUNIFORM3FPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) PFNGLPROGRAMUNIFORM3FVPROC;
	alias void function(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2) PFNGLPROGRAMUNIFORM3DPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) PFNGLPROGRAMUNIFORM3DVPROC;
	alias void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2) PFNGLPROGRAMUNIFORM3UIPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) PFNGLPROGRAMUNIFORM3UIVPROC;
	alias void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3) PFNGLPROGRAMUNIFORM4IPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) PFNGLPROGRAMUNIFORM4IVPROC;
	alias void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) PFNGLPROGRAMUNIFORM4FPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) PFNGLPROGRAMUNIFORM4FVPROC;
	alias void function(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3) PFNGLPROGRAMUNIFORM4DPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) PFNGLPROGRAMUNIFORM4DVPROC;
	alias void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) PFNGLPROGRAMUNIFORM4UIPROC;
	alias void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) PFNGLPROGRAMUNIFORM4UIVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX2FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX3FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX4FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX2DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX3DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX4DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC;
	alias void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC;
	alias void function(GLuint pipeline) PFNGLVALIDATEPROGRAMPIPELINEPROC;
	alias void function(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog) PFNGLGETPROGRAMPIPELINEINFOLOGPROC;

	// GL_ARB_vertex_attrib_64bit

	void glVertexAttribL1d(GLuint index, GLdouble x);
	void glVertexAttribL2d(GLuint index, GLdouble x, GLdouble y);
	void glVertexAttribL3d(GLuint index, GLdouble x, GLdouble y, GLdouble z);
	void glVertexAttribL4d(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void glVertexAttribL1dv(GLuint index, const(GLdouble)* v);
	void glVertexAttribL2dv(GLuint index, const(GLdouble)* v);
	void glVertexAttribL3dv(GLuint index, const(GLdouble)* v);
	void glVertexAttribL4dv(GLuint index, const(GLdouble)* v);
	void glVertexAttribLPointer(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glGetVertexAttribLdv(GLuint index, GLenum pname, GLdouble* params);

	alias void function(GLuint index, GLdouble x) PFNGLVERTEXATTRIBL1DPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y) PFNGLVERTEXATTRIBL2DPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) PFNGLVERTEXATTRIBL3DPROC;
	alias void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) PFNGLVERTEXATTRIBL4DPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIBL1DVPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIBL2DVPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIBL3DVPROC;
	alias void function(GLuint index, const(GLdouble)* v) PFNGLVERTEXATTRIBL4DVPROC;
	alias void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) PFNGLVERTEXATTRIBLPOINTERPROC;
	alias void function(GLuint index, GLenum pname, GLdouble* params) PFNGLGETVERTEXATTRIBLDVPROC;

	// GL_ARB_viewport_array

	void glViewportArrayv(GLuint first, GLsizei count, const(GLfloat)* v);
	void glViewportIndexedf(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
	void glViewportIndexedfv(GLuint index, const(GLfloat)* v);
	void glScissorArrayv(GLuint first, GLsizei count, const(GLint)* v);
	void glScissorIndexed(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
	void glScissorIndexedv(GLuint index, const(GLint)* v);
	void glDepthRangeArrayv(GLuint first, GLsizei count, const(GLdouble)* v);
	void glDepthRangeIndexed(GLuint index, GLdouble n, GLdouble f);
	void glGetFloati_v(GLenum target, GLuint index, GLfloat* data);
	void glGetDoublei_v(GLenum target, GLuint index, GLdouble* data);

	alias void function(GLuint first, GLsizei count, const(GLfloat)* v) PFNGLVIEWPORTARRAYVPROC;
	alias void function(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h) PFNGLVIEWPORTINDEXEDFPROC;
	alias void function(GLuint index, const(GLfloat)* v) PFNGLVIEWPORTINDEXEDFVPROC;
	alias void function(GLuint first, GLsizei count, const(GLint)* v) PFNGLSCISSORARRAYVPROC;
	alias void function(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height) PFNGLSCISSORINDEXEDPROC;
	alias void function(GLuint index, const(GLint)* v) PFNGLSCISSORINDEXEDVPROC;
	alias void function(GLuint first, GLsizei count, const(GLdouble)* v) PFNGLDEPTHRANGEARRAYVPROC;
	alias void function(GLuint index, GLdouble n, GLdouble f) PFNGLDEPTHRANGEINDEXEDPROC;
	alias void function(GLenum target, GLuint index, GLfloat* data) PFNGLGETFLOATI_VPROC;
	alias void function(GLenum target, GLuint index, GLdouble* data) PFNGLGETDOUBLEI_VPROC;

	// GL_ARB_cl_event

	GLsync glCreateSyncFromCLeventARB(_cl_context* context, _cl_event* event, GLbitfield flags);

	alias GLsync function(_cl_context* context, _cl_event* event, GLbitfield flags) PFNGLCREATESYNCFROMCLEVENTARBPROC;

	// GL_ARB_debug_output

	void glDebugMessageControlARB(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
	void glDebugMessageInsertARB(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
	void glDebugMessageCallbackARB(GLDEBUGPROCARB callback, const(GLvoid)* userParam);
	GLuint glGetDebugMessageLogARB(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);

	alias void function(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled) PFNGLDEBUGMESSAGECONTROLARBPROC;
	alias void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf) PFNGLDEBUGMESSAGEINSERTARBPROC;
	alias void function(GLDEBUGPROCARB callback, const(GLvoid)* userParam) PFNGLDEBUGMESSAGECALLBACKARBPROC;
	alias GLuint function(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) PFNGLGETDEBUGMESSAGELOGARBPROC;

	// GL_ARB_robustness

	GLenum glGetGraphicsResetStatusARB();
	void glGetnTexImageARB(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img);
	void glReadnPixelsARB(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data);
	void glGetnCompressedTexImageARB(GLenum target, GLint lod, GLsizei bufSize, GLvoid* img);
	void glGetnUniformfvARB(GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
	void glGetnUniformivARB(GLuint program, GLint location, GLsizei bufSize, GLint* params);
	void glGetnUniformuivARB(GLuint program, GLint location, GLsizei bufSize, GLuint* params);
	void glGetnUniformdvARB(GLuint program, GLint location, GLsizei bufSize, GLdouble* params);

	alias GLenum function() PFNGLGETGRAPHICSRESETSTATUSARBPROC;
	alias void function(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img) PFNGLGETNTEXIMAGEARBPROC;
	alias void function(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data) PFNGLREADNPIXELSARBPROC;
	alias void function(GLenum target, GLint lod, GLsizei bufSize, GLvoid* img) PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC;
	alias void function(GLuint program, GLint location, GLsizei bufSize, GLfloat* params) PFNGLGETNUNIFORMFVARBPROC;
	alias void function(GLuint program, GLint location, GLsizei bufSize, GLint* params) PFNGLGETNUNIFORMIVARBPROC;
	alias void function(GLuint program, GLint location, GLsizei bufSize, GLuint* params) PFNGLGETNUNIFORMUIVARBPROC;
	alias void function(GLuint program, GLint location, GLsizei bufSize, GLdouble* params) PFNGLGETNUNIFORMDVARBPROC;

	// GL_ARB_shader_stencil_export

	// GL_ARB_base_instance

	void glDrawArraysInstancedBaseInstance(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
	void glDrawElementsInstancedBaseInstance(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLuint baseinstance);
	void glDrawElementsInstancedBaseVertexBaseInstance(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);

	alias void function(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance) PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC;
	alias void function(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLuint baseinstance) PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC;
	alias void function(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance) PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC;

	// GL_ARB_shading_language_420pack

	// GL_ARB_transform_feedback_instanced

	void glDrawTransformFeedbackInstanced(GLenum mode, GLuint id, GLsizei instancecount);
	void glDrawTransformFeedbackStreamInstanced(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount);

	alias void function(GLenum mode, GLuint id, GLsizei instancecount) PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC;
	alias void function(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount) PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC;

	// GL_ARB_compressed_texture_pixel_storage

	// GL_ARB_conservative_depth

	// GL_ARB_internalformat_query

	void glGetInternalformativ(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params);

	alias void function(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params) PFNGLGETINTERNALFORMATIVPROC;

	// GL_ARB_map_buffer_alignment

	// GL_ARB_shader_atomic_counters

	void glGetActiveAtomicCounterBufferiv(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params);

	alias void function(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params) PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC;

	// GL_ARB_shader_image_load_store

	void glBindImageTexture(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
	void glMemoryBarrier(GLbitfield barriers);

	alias void function(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format) PFNGLBINDIMAGETEXTUREPROC;
	alias void function(GLbitfield barriers) PFNGLMEMORYBARRIERPROC;

	// GL_ARB_shading_language_packing

	// GL_ARB_texture_storage

	void glTexStorage1D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
	void glTexStorage2D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
	void glTexStorage3D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
	void glTextureStorage1DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
	void glTextureStorage2DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
	void glTextureStorage3DEXT(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);

	alias void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) PFNGLTEXSTORAGE1DPROC;
	alias void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) PFNGLTEXSTORAGE2DPROC;
	alias void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) PFNGLTEXSTORAGE3DPROC;
	alias void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) PFNGLTEXTURESTORAGE1DEXTPROC;
	alias void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) PFNGLTEXTURESTORAGE2DEXTPROC;
	alias void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) PFNGLTEXTURESTORAGE3DEXTPROC;

	// GL_KHR_texture_compression_astc_ldr

	// GL_KHR_debug

	void glDebugMessageControl(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled);
	void glDebugMessageInsert(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf);
	void glDebugMessageCallback(GLDEBUGPROC callback, const(void)* userParam);
	GLuint glGetDebugMessageLog(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
	void glPushDebugGroup(GLenum source, GLuint id, GLsizei length, const(GLchar)* message);
	void glPopDebugGroup();
	void glObjectLabel(GLenum identifier, GLuint name, GLsizei length, const(GLchar)* label);
	void glGetObjectLabel(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label);
	void glObjectPtrLabel(const(void)* ptr, GLsizei length, const(GLchar)* label);
	void glGetObjectPtrLabel(const(void)* ptr, GLsizei bufSize, GLsizei* length, GLchar* label);

	alias void function(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled) PFNGLDEBUGMESSAGECONTROLPROC;
	alias void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf) PFNGLDEBUGMESSAGEINSERTPROC;
	alias void function(GLDEBUGPROC callback, const(void)* userParam) PFNGLDEBUGMESSAGECALLBACKPROC;
	alias GLuint function(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) PFNGLGETDEBUGMESSAGELOGPROC;
	alias void function(GLenum source, GLuint id, GLsizei length, const(GLchar)* message) PFNGLPUSHDEBUGGROUPPROC;
	alias void function() PFNGLPOPDEBUGGROUPPROC;
	alias void function(GLenum identifier, GLuint name, GLsizei length, const(GLchar)* label) PFNGLOBJECTLABELPROC;
	alias void function(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label) PFNGLGETOBJECTLABELPROC;
	alias void function(const(void)* ptr, GLsizei length, const(GLchar)* label) PFNGLOBJECTPTRLABELPROC;
	alias void function(const(void)* ptr, GLsizei bufSize, GLsizei* length, GLchar* label) PFNGLGETOBJECTPTRLABELPROC;

	// GL_ARB_arrays_of_arrays

	// GL_ARB_clear_buffer_object

	void glClearBufferData(GLenum target, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
	void glClearBufferSubData(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data);
	void glClearNamedBufferDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const(void)* data);
	void glClearNamedBufferSubDataEXT(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const(void)* data);

	alias void function(GLenum target, GLenum internalformat, GLenum format, GLenum type, const(void)* data) PFNGLCLEARBUFFERDATAPROC;
	alias void function(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data) PFNGLCLEARBUFFERSUBDATAPROC;
	alias void function(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const(void)* data) PFNGLCLEARNAMEDBUFFERDATAEXTPROC;
	alias void function(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const(void)* data) PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC;

	// GL_ARB_compute_shader

	void glDispatchCompute(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z);
	void glDispatchComputeIndirect(GLintptr indirect);

	alias void function(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z) PFNGLDISPATCHCOMPUTEPROC;
	alias void function(GLintptr indirect) PFNGLDISPATCHCOMPUTEINDIRECTPROC;

	// GL_ARB_copy_image

	void glCopyImageSubData(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);

	alias void function(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth) PFNGLCOPYIMAGESUBDATAPROC;

	// GL_ARB_texture_view

	void glTextureView(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);

	alias void function(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers) PFNGLTEXTUREVIEWPROC;

	// GL_ARB_vertex_attrib_binding

	void glBindVertexBuffer(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
	void glVertexAttribFormat(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
	void glVertexAttribIFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
	void glVertexAttribLFormat(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
	void glVertexAttribBinding(GLuint attribindex, GLuint bindingindex);
	void glVertexBindingDivisor(GLuint bindingindex, GLuint divisor);
	void glVertexArrayBindVertexBufferEXT(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
	void glVertexArrayVertexAttribFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
	void glVertexArrayVertexAttribIFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
	void glVertexArrayVertexAttribLFormatEXT(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
	void glVertexArrayVertexAttribBindingEXT(GLuint vaobj, GLuint attribindex, GLuint bindingindex);
	void glVertexArrayVertexBindingDivisorEXT(GLuint vaobj, GLuint bindingindex, GLuint divisor);

	alias void function(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) PFNGLBINDVERTEXBUFFERPROC;
	alias void function(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) PFNGLVERTEXATTRIBFORMATPROC;
	alias void function(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) PFNGLVERTEXATTRIBIFORMATPROC;
	alias void function(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) PFNGLVERTEXATTRIBLFORMATPROC;
	alias void function(GLuint attribindex, GLuint bindingindex) PFNGLVERTEXATTRIBBINDINGPROC;
	alias void function(GLuint bindingindex, GLuint divisor) PFNGLVERTEXBINDINGDIVISORPROC;
	alias void function(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC;
	alias void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC;
	alias void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC;
	alias void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC;
	alias void function(GLuint vaobj, GLuint attribindex, GLuint bindingindex) PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC;
	alias void function(GLuint vaobj, GLuint bindingindex, GLuint divisor) PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC;

	// GL_ARB_robustness_isolation

	// GL_ARB_ES3_compatibility

	// GL_ARB_explicit_uniform_location

	// GL_ARB_fragment_layer_viewport

	// GL_ARB_framebuffer_no_attachments

	void glFramebufferParameteri(GLenum target, GLenum pname, GLint param);
	void glGetFramebufferParameteriv(GLenum target, GLenum pname, GLint* params);
	void glNamedFramebufferParameteriEXT(GLuint framebuffer, GLenum pname, GLint param);
	void glGetNamedFramebufferParameterivEXT(GLuint framebuffer, GLenum pname, GLint* params);

	alias void function(GLenum target, GLenum pname, GLint param) PFNGLFRAMEBUFFERPARAMETERIPROC;
	alias void function(GLenum target, GLenum pname, GLint* params) PFNGLGETFRAMEBUFFERPARAMETERIVPROC;
	alias void function(GLuint framebuffer, GLenum pname, GLint param) PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC;
	alias void function(GLuint framebuffer, GLenum pname, GLint* params) PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC;

	// GL_ARB_internalformat_query2

	void glGetInternalformati64v(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params);

	alias void function(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params) PFNGLGETINTERNALFORMATI64VPROC;

	// GL_ARB_invalidate_subdata

	void glInvalidateTexSubImage(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth);
	void glInvalidateTexImage(GLuint texture, GLint level);
	void glInvalidateBufferSubData(GLuint buffer, GLintptr offset, GLsizeiptr length);
	void glInvalidateBufferData(GLuint buffer);
	void glInvalidateFramebuffer(GLenum target, GLsizei numAttachments, const(GLenum)* attachments);
	void glInvalidateSubFramebuffer(GLenum target, GLsizei numAttachments, const(GLenum)* attachments, GLint x, GLint y, GLsizei width, GLsizei height);

	alias void function(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth) PFNGLINVALIDATETEXSUBIMAGEPROC;
	alias void function(GLuint texture, GLint level) PFNGLINVALIDATETEXIMAGEPROC;
	alias void function(GLuint buffer, GLintptr offset, GLsizeiptr length) PFNGLINVALIDATEBUFFERSUBDATAPROC;
	alias void function(GLuint buffer) PFNGLINVALIDATEBUFFERDATAPROC;
	alias void function(GLenum target, GLsizei numAttachments, const(GLenum)* attachments) PFNGLINVALIDATEFRAMEBUFFERPROC;
	alias void function(GLenum target, GLsizei numAttachments, const(GLenum)* attachments, GLint x, GLint y, GLsizei width, GLsizei height) PFNGLINVALIDATESUBFRAMEBUFFERPROC;

	// GL_ARB_multi_draw_indirect

	void glMultiDrawArraysIndirect(GLenum mode, const(void)* indirect, GLsizei drawcount, GLsizei stride);
	void glMultiDrawElementsIndirect(GLenum mode, GLenum type, const(void)* indirect, GLsizei drawcount, GLsizei stride);

	alias void function(GLenum mode, const(void)* indirect, GLsizei drawcount, GLsizei stride) PFNGLMULTIDRAWARRAYSINDIRECTPROC;
	alias void function(GLenum mode, GLenum type, const(void)* indirect, GLsizei drawcount, GLsizei stride) PFNGLMULTIDRAWELEMENTSINDIRECTPROC;

	// GL_ARB_program_interface_query

	void glGetProgramInterfaceiv(GLuint program, GLenum programInterface, GLenum pname, GLint* params);
	GLuint glGetProgramResourceIndex(GLuint program, GLenum programInterface, const(GLchar)* name);
	void glGetProgramResourceName(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name);
	void glGetProgramResourceiv(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const(GLenum)* props, GLsizei bufSize, GLsizei* length, GLint* params);
	GLint glGetProgramResourceLocation(GLuint program, GLenum programInterface, const(GLchar)* name);
	GLint glGetProgramResourceLocationIndex(GLuint program, GLenum programInterface, const(GLchar)* name);

	alias void function(GLuint program, GLenum programInterface, GLenum pname, GLint* params) PFNGLGETPROGRAMINTERFACEIVPROC;
	alias GLuint function(GLuint program, GLenum programInterface, const(GLchar)* name) PFNGLGETPROGRAMRESOURCEINDEXPROC;
	alias void function(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name) PFNGLGETPROGRAMRESOURCENAMEPROC;
	alias void function(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const(GLenum)* props, GLsizei bufSize, GLsizei* length, GLint* params) PFNGLGETPROGRAMRESOURCEIVPROC;
	alias GLint function(GLuint program, GLenum programInterface, const(GLchar)* name) PFNGLGETPROGRAMRESOURCELOCATIONPROC;
	alias GLint function(GLuint program, GLenum programInterface, const(GLchar)* name) PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC;

	// GL_ARB_robust_buffer_access_behavior

	// GL_ARB_shader_image_size

	// GL_ARB_shader_storage_buffer_object

	void glShaderStorageBlockBinding(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding);

	alias void function(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding) PFNGLSHADERSTORAGEBLOCKBINDINGPROC;

	// GL_ARB_stencil_texturing

	// GL_ARB_texture_buffer_range

	void glTexBufferRange(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
	void glTextureBufferRangeEXT(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);

	alias void function(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) PFNGLTEXBUFFERRANGEPROC;
	alias void function(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) PFNGLTEXTUREBUFFERRANGEEXTPROC;

	// GL_ARB_texture_query_levels

	// GL_ARB_texture_storage_multisample

	void glTexStorage2DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
	void glTexStorage3DMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
	void glTextureStorage2DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
	void glTextureStorage3DMultisampleEXT(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);

	alias void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) PFNGLTEXSTORAGE2DMULTISAMPLEPROC;
	alias void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) PFNGLTEXSTORAGE3DMULTISAMPLEPROC;
	alias void function(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC;
	alias void function(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC;
