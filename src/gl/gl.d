module gl.gl;

import gl.gl;

alias char uchar;
alias void* XID;
alias int Bool;

struct XVisualInfo;
struct Display;
struct GLXContext;
struct Pixmap;
struct Window;
struct GLXFBConfig;
struct GLXWindow;
struct GLXPixmap;
struct GLXPbuffer;
struct GLXDrawable;
struct VLServer;
struct VLPath;
struct VLNode;
struct GLXContextID;
/* $Id: gl.d,v 1.1.1.1 2004/07/31 00:51:06 antoniorm Exp $ */

/*
 * Mesa 3-D graphics library
 * Version:  4.0.4
 *
 * Copyright (C) 1999-2002  Brian Paul   All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * BRIAN PAUL BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


//#ifndef __gl_h_
//#define __gl_h_

//#if defined(USE_MGL_NAMESPACE)
//#include "gl_mangle.h"
//#endif


/**********************************************************************
 * Begin system-specific stuff.
 */
//#if defined(__BEOS__)
//#include <stdlib.h>     /* to get some BeOS-isms */
//#endif

//#if !defined(OPENSTEP) && (defined(NeXT) || defined(NeXT_PDO))
//#define OPENSTEP
//#endif

//#if defined(_WIN32) && !defined(__WIN32__) && !defined(__CYGWIN__)
//#define __WIN32__
//#endif

//#if !defined(OPENSTEP) && (defined(__WIN32__) && !defined(__CYGWIN__))
//#  if defined(_MSC_VER) && defined(BUILD_GL32) /* tag specify we're building mesa as a DLL */
//#    define GLAPI __declspec(dllexport)
//#  elif defined(_MSC_VER) && defined(_DLL) /* tag specifying we're building for DLL runtime support */
//#    define GLAPI __declspec(dllimport)
//#  else /* for use with static link lib build of Win32 edition only */
//#    define GLAPI extern
//#  endif /* _STATIC_MESA support */
//#  define __stdcall
//#else
/* non-Windows compilation */
//#  define GLAPI extern
//#  define GLAPIENTRY
//#endif /* WIN32 / CYGWIN bracket */

//#if (defined(__BEOS__) && defined(__POWERPC__)) || defined(__QUICKDRAW__)
//#  define PRAGMA_EXPORT_SUPPORTED		1
//#endif

//#if defined(_WIN32) && !defined(_WINGDI_) && !defined(_GNU_H_WINDOWS32_DEFINES) && !defined(OPENSTEP) && !defined(__CYGWIN__)
//#include <gl/mesa_wgl.h>
//#endif

//#if defined(macintosh) && PRAGMA_IMPORT_SUPPORTED
//#pragma import on
//#endif
/*
 * End system-specific stuff.
 **********************************************************************/



//#ifdef __cplusplus
extern(C)
{
//#endif



const int GL_VERSION_1_1 = 1;
const int GL_VERSION_1_2 = 1;
const int GL_VERSION_1_3 = 1;
const int GL_ARB_imaging = 1;


/*
 *
 * Datatypes
 *
 */
//#ifdef CENTERLINE_CLPP
//#define signed
//#endif
alias uint GLenum;
alias uchar GLboolean;
alias uint GLbitfield;
alias  void GLvoid;
alias  char GLbyte; /* 1-byte signed */
alias  short GLshort; /* 2-byte signed */
alias  int GLint; /* 4-byte signed */
alias uchar GLubyte; /* 1-byte unsigned */
alias ushort GLushort; /* 2-byte unsigned */
alias uint GLuint; /* 4-byte unsigned */
alias  int GLsizei; /* 4-byte signed */
alias  float GLfloat; /* single precision float */
alias  float GLclampf; /* single precision float in [0,1] */
alias  double GLdouble; /* double precision float */
alias  double GLclampd; /* double precision float in [0,1] */



/*
 *
 * Constants
 *
 */

/* Boolean values */
const int GL_FALSE = 0x0;
const int GL_TRUE = 0x1;

/* Data types */
const int GL_BYTE = 0x1400;
const int GL_UNSIGNED_BYTE = 0x1401;
const int GL_SHORT = 0x1402;
const int GL_UNSIGNED_SHORT = 0x1403;
const int GL_INT = 0x1404;
const int GL_UNSIGNED_INT = 0x1405;
const int GL_FLOAT = 0x1406;
const int GL_DOUBLE = 0x140A;
const int GL_2_BYTES = 0x1407;
const int GL_3_BYTES = 0x1408;
const int GL_4_BYTES = 0x1409;

/* Primitives */
const int GL_POINTS = 0x0000;
const int GL_LINES = 0x0001;
const int GL_LINE_LOOP = 0x0002;
const int GL_LINE_STRIP = 0x0003;
const int GL_TRIANGLES = 0x0004;
const int GL_TRIANGLE_STRIP = 0x0005;
const int GL_TRIANGLE_FAN = 0x0006;
const int GL_QUADS = 0x0007;
const int GL_QUAD_STRIP = 0x0008;
const int GL_POLYGON = 0x0009;

/* Vertex Arrays */
const int GL_VERTEX_ARRAY = 0x8074;
const int GL_NORMAL_ARRAY = 0x8075;
const int GL_COLOR_ARRAY = 0x8076;
const int GL_INDEX_ARRAY = 0x8077;
const int GL_TEXTURE_COORD_ARRAY = 0x8078;
const int GL_EDGE_FLAG_ARRAY = 0x8079;
const int GL_VERTEX_ARRAY_SIZE = 0x807A;
const int GL_VERTEX_ARRAY_TYPE = 0x807B;
const int GL_VERTEX_ARRAY_STRIDE = 0x807C;
const int GL_NORMAL_ARRAY_TYPE = 0x807E;
const int GL_NORMAL_ARRAY_STRIDE = 0x807F;
const int GL_COLOR_ARRAY_SIZE = 0x8081;
const int GL_COLOR_ARRAY_TYPE = 0x8082;
const int GL_COLOR_ARRAY_STRIDE = 0x8083;
const int GL_INDEX_ARRAY_TYPE = 0x8085;
const int GL_INDEX_ARRAY_STRIDE = 0x8086;
const int GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
const int GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
const int GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
const int GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
const int GL_VERTEX_ARRAY_POINTER = 0x808E;
const int GL_NORMAL_ARRAY_POINTER = 0x808F;
const int GL_COLOR_ARRAY_POINTER = 0x8090;
const int GL_INDEX_ARRAY_POINTER = 0x8091;
const int GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
const int GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
const int GL_V2F = 0x2A20;
const int GL_V3F = 0x2A21;
const int GL_C4UB_V2F = 0x2A22;
const int GL_C4UB_V3F = 0x2A23;
const int GL_C3F_V3F = 0x2A24;
const int GL_N3F_V3F = 0x2A25;
const int GL_C4F_N3F_V3F = 0x2A26;
const int GL_T2F_V3F = 0x2A27;
const int GL_T4F_V4F = 0x2A28;
const int GL_T2F_C4UB_V3F = 0x2A29;
const int GL_T2F_C3F_V3F = 0x2A2A;
const int GL_T2F_N3F_V3F = 0x2A2B;
const int GL_T2F_C4F_N3F_V3F = 0x2A2C;
const int GL_T4F_C4F_N3F_V4F = 0x2A2D;

/* Matrix Mode */
const int GL_MATRIX_MODE = 0x0BA0;
const int GL_MODELVIEW = 0x1700;
const int GL_PROJECTION = 0x1701;
const int GL_TEXTURE = 0x1702;

/* Points */
const int GL_POINT_SMOOTH = 0x0B10;
const int GL_POINT_SIZE = 0x0B11;
const int GL_POINT_SIZE_GRANULARITY = 0x0B13;
const int GL_POINT_SIZE_RANGE = 0x0B12;

/* Lines */
const int GL_LINE_SMOOTH = 0x0B20;
const int GL_LINE_STIPPLE = 0x0B24;
const int GL_LINE_STIPPLE_PATTERN = 0x0B25;
const int GL_LINE_STIPPLE_REPEAT = 0x0B26;
const int GL_LINE_WIDTH = 0x0B21;
const int GL_LINE_WIDTH_GRANULARITY = 0x0B23;
const int GL_LINE_WIDTH_RANGE = 0x0B22;

/* Polygons */
const int GL_POINT = 0x1B00;
const int GL_LINE = 0x1B01;
const int GL_FILL = 0x1B02;
const int GL_CW = 0x0900;
const int GL_CCW = 0x0901;
const int GL_FRONT = 0x0404;
const int GL_BACK = 0x0405;
const int GL_POLYGON_MODE = 0x0B40;
const int GL_POLYGON_SMOOTH = 0x0B41;
const int GL_POLYGON_STIPPLE = 0x0B42;
const int GL_EDGE_FLAG = 0x0B43;
const int GL_CULL_FACE = 0x0B44;
const int GL_CULL_FACE_MODE = 0x0B45;
const int GL_FRONT_FACE = 0x0B46;
const int GL_POLYGON_OFFSET_FACTOR = 0x8038;
const int GL_POLYGON_OFFSET_UNITS = 0x2A00;
const int GL_POLYGON_OFFSET_POINT = 0x2A01;
const int GL_POLYGON_OFFSET_LINE = 0x2A02;
const int GL_POLYGON_OFFSET_FILL = 0x8037;

/* Display Lists */
const int GL_COMPILE = 0x1300;
const int GL_COMPILE_AND_EXECUTE = 0x1301;
const int GL_LIST_BASE = 0x0B32;
const int GL_LIST_INDEX = 0x0B33;
const int GL_LIST_MODE = 0x0B30;

/* Depth buffer */
const int GL_NEVER = 0x0200;
const int GL_LESS = 0x0201;
const int GL_EQUAL = 0x0202;
const int GL_LEQUAL = 0x0203;
const int GL_GREATER = 0x0204;
const int GL_NOTEQUAL = 0x0205;
const int GL_GEQUAL = 0x0206;
const int GL_ALWAYS = 0x0207;
const int GL_DEPTH_TEST = 0x0B71;
const int GL_DEPTH_BITS = 0x0D56;
const int GL_DEPTH_CLEAR_VALUE = 0x0B73;
const int GL_DEPTH_FUNC = 0x0B74;
const int GL_DEPTH_RANGE = 0x0B70;
const int GL_DEPTH_WRITEMASK = 0x0B72;
const int GL_DEPTH_COMPONENT = 0x1902;

/* Lighting */
const int GL_LIGHTING = 0x0B50;
const int GL_LIGHT0 = 0x4000;
const int GL_LIGHT1 = 0x4001;
const int GL_LIGHT2 = 0x4002;
const int GL_LIGHT3 = 0x4003;
const int GL_LIGHT4 = 0x4004;
const int GL_LIGHT5 = 0x4005;
const int GL_LIGHT6 = 0x4006;
const int GL_LIGHT7 = 0x4007;
const int GL_SPOT_EXPONENT = 0x1205;
const int GL_SPOT_CUTOFF = 0x1206;
const int GL_CONSTANT_ATTENUATION = 0x1207;
const int GL_LINEAR_ATTENUATION = 0x1208;
const int GL_QUADRATIC_ATTENUATION = 0x1209;
const int GL_AMBIENT = 0x1200;
const int GL_DIFFUSE = 0x1201;
const int GL_SPECULAR = 0x1202;
const int GL_SHININESS = 0x1601;
const int GL_EMISSION = 0x1600;
const int GL_POSITION = 0x1203;
const int GL_SPOT_DIRECTION = 0x1204;
const int GL_AMBIENT_AND_DIFFUSE = 0x1602;
const int GL_COLOR_INDEXES = 0x1603;
const int GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
const int GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
const int GL_LIGHT_MODEL_AMBIENT = 0x0B53;
const int GL_FRONT_AND_BACK = 0x0408;
const int GL_SHADE_MODEL = 0x0B54;
const int GL_FLAT = 0x1D00;
const int GL_SMOOTH = 0x1D01;
const int GL_COLOR_MATERIAL = 0x0B57;
const int GL_COLOR_MATERIAL_FACE = 0x0B55;
const int GL_COLOR_MATERIAL_PARAMETER = 0x0B56;
const int GL_NORMALIZE = 0x0BA1;

/* User clipping planes */
const int GL_CLIP_PLANE0 = 0x3000;
const int GL_CLIP_PLANE1 = 0x3001;
const int GL_CLIP_PLANE2 = 0x3002;
const int GL_CLIP_PLANE3 = 0x3003;
const int GL_CLIP_PLANE4 = 0x3004;
const int GL_CLIP_PLANE5 = 0x3005;

/* Accumulation buffer */
const int GL_ACCUM_RED_BITS = 0x0D58;
const int GL_ACCUM_GREEN_BITS = 0x0D59;
const int GL_ACCUM_BLUE_BITS = 0x0D5A;
const int GL_ACCUM_ALPHA_BITS = 0x0D5B;
const int GL_ACCUM_CLEAR_VALUE = 0x0B80;
const int GL_ACCUM = 0x0100;
const int GL_ADD = 0x0104;
const int GL_LOAD = 0x0101;
const int GL_MULT = 0x0103;
const int GL_RETURN = 0x0102;

/* Alpha testing */
const int GL_ALPHA_TEST = 0x0BC0;
const int GL_ALPHA_TEST_REF = 0x0BC2;
const int GL_ALPHA_TEST_FUNC = 0x0BC1;

/* Blending */
const int GL_BLEND = 0x0BE2;
const int GL_BLEND_SRC = 0x0BE1;
const int GL_BLEND_DST = 0x0BE0;
const int GL_ZERO = 0x0;
const int GL_ONE = 0x1;
const int GL_SRC_COLOR = 0x0300;
const int GL_ONE_MINUS_SRC_COLOR = 0x0301;
const int GL_SRC_ALPHA = 0x0302;
const int GL_ONE_MINUS_SRC_ALPHA = 0x0303;
const int GL_DST_ALPHA = 0x0304;
const int GL_ONE_MINUS_DST_ALPHA = 0x0305;
const int GL_DST_COLOR = 0x0306;
const int GL_ONE_MINUS_DST_COLOR = 0x0307;
const int GL_SRC_ALPHA_SATURATE = 0x0308;
const int GL_CONSTANT_COLOR = 0x8001;
const int GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
const int GL_CONSTANT_ALPHA = 0x8003;
const int GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;

/* Render Mode */
const int GL_FEEDBACK = 0x1C01;
const int GL_RENDER = 0x1C00;
const int GL_SELECT = 0x1C02;

/* Feedback */
const int GL_2D = 0x0600;
const int GL_3D = 0x0601;
const int GL_3D_COLOR = 0x0602;
const int GL_3D_COLOR_TEXTURE = 0x0603;
const int GL_4D_COLOR_TEXTURE = 0x0604;
const int GL_POINT_TOKEN = 0x0701;
const int GL_LINE_TOKEN = 0x0702;
const int GL_LINE_RESET_TOKEN = 0x0707;
const int GL_POLYGON_TOKEN = 0x0703;
const int GL_BITMAP_TOKEN = 0x0704;
const int GL_DRAW_PIXEL_TOKEN = 0x0705;
const int GL_COPY_PIXEL_TOKEN = 0x0706;
const int GL_PASS_THROUGH_TOKEN = 0x0700;
const int GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
const int GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;
const int GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;

/* Selection */
const int GL_SELECTION_BUFFER_POINTER = 0x0DF3;
const int GL_SELECTION_BUFFER_SIZE = 0x0DF4;

/* Fog */
const int GL_FOG = 0x0B60;
const int GL_FOG_MODE = 0x0B65;
const int GL_FOG_DENSITY = 0x0B62;
const int GL_FOG_COLOR = 0x0B66;
const int GL_FOG_INDEX = 0x0B61;
const int GL_FOG_START = 0x0B63;
const int GL_FOG_END = 0x0B64;
const int GL_LINEAR = 0x2601;
const int GL_EXP = 0x0800;
const int GL_EXP2 = 0x0801;

/* Logic Ops */
const int GL_LOGIC_OP = 0x0BF1;
const int GL_INDEX_LOGIC_OP = 0x0BF1;
const int GL_COLOR_LOGIC_OP = 0x0BF2;
const int GL_LOGIC_OP_MODE = 0x0BF0;
const int GL_CLEAR = 0x1500;
const int GL_SET = 0x150F;
const int GL_COPY = 0x1503;
const int GL_COPY_INVERTED = 0x150C;
const int GL_NOOP = 0x1505;
const int GL_INVERT = 0x150A;
const int GL_AND = 0x1501;
const int GL_NAND = 0x150E;
const int GL_OR = 0x1507;
const int GL_NOR = 0x1508;
const int GL_XOR = 0x1506;
const int GL_EQUIV = 0x1509;
const int GL_AND_REVERSE = 0x1502;
const int GL_AND_INVERTED = 0x1504;
const int GL_OR_REVERSE = 0x150B;
const int GL_OR_INVERTED = 0x150D;

/* Stencil */
const int GL_STENCIL_TEST = 0x0B90;
const int GL_STENCIL_WRITEMASK = 0x0B98;
const int GL_STENCIL_BITS = 0x0D57;
const int GL_STENCIL_FUNC = 0x0B92;
const int GL_STENCIL_VALUE_MASK = 0x0B93;
const int GL_STENCIL_REF = 0x0B97;
const int GL_STENCIL_FAIL = 0x0B94;
const int GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
const int GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
const int GL_STENCIL_CLEAR_VALUE = 0x0B91;
const int GL_STENCIL_INDEX = 0x1901;
const int GL_KEEP = 0x1E00;
const int GL_REPLACE = 0x1E01;
const int GL_INCR = 0x1E02;
const int GL_DECR = 0x1E03;

/* Buffers, Pixel Drawing/Reading */
const int GL_NONE = 0x0;
const int GL_LEFT = 0x0406;
const int GL_RIGHT = 0x0407;
/*GL_FRONT					0x0404 */
/*GL_BACK					0x0405 */
/*GL_FRONT_AND_BACK				0x0408 */
const int GL_FRONT_LEFT = 0x0400;
const int GL_FRONT_RIGHT = 0x0401;
const int GL_BACK_LEFT = 0x0402;
const int GL_BACK_RIGHT = 0x0403;
const int GL_AUX0 = 0x0409;
const int GL_AUX1 = 0x040A;
const int GL_AUX2 = 0x040B;
const int GL_AUX3 = 0x040C;
const int GL_COLOR_INDEX = 0x1900;
const int GL_RED = 0x1903;
const int GL_GREEN = 0x1904;
const int GL_BLUE = 0x1905;
const int GL_ALPHA = 0x1906;
const int GL_LUMINANCE = 0x1909;
const int GL_LUMINANCE_ALPHA = 0x190A;
const int GL_ALPHA_BITS = 0x0D55;
const int GL_RED_BITS = 0x0D52;
const int GL_GREEN_BITS = 0x0D53;
const int GL_BLUE_BITS = 0x0D54;
const int GL_INDEX_BITS = 0x0D51;
const int GL_SUBPIXEL_BITS = 0x0D50;
const int GL_AUX_BUFFERS = 0x0C00;
const int GL_READ_BUFFER = 0x0C02;
const int GL_DRAW_BUFFER = 0x0C01;
const int GL_DOUBLEBUFFER = 0x0C32;
const int GL_STEREO = 0x0C33;
const int GL_BITMAP = 0x1A00;
const int GL_COLOR = 0x1800;
const int GL_DEPTH = 0x1801;
const int GL_STENCIL = 0x1802;
const int GL_DITHER = 0x0BD0;
const int GL_RGB = 0x1907;
const int GL_RGBA = 0x1908;

/* Implementation limits */
const int GL_MAX_LIST_NESTING = 0x0B31;
const int GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
const int GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
const int GL_MAX_NAME_STACK_DEPTH = 0x0D37;
const int GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
const int GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
const int GL_MAX_EVAL_ORDER = 0x0D30;
const int GL_MAX_LIGHTS = 0x0D31;
const int GL_MAX_CLIP_PLANES = 0x0D32;
const int GL_MAX_TEXTURE_SIZE = 0x0D33;
const int GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
const int GL_MAX_VIEWPORT_DIMS = 0x0D3A;
const int GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;

/* Gets */
const int GL_ATTRIB_STACK_DEPTH = 0x0BB0;
const int GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
const int GL_COLOR_CLEAR_VALUE = 0x0C22;
const int GL_COLOR_WRITEMASK = 0x0C23;
const int GL_CURRENT_INDEX = 0x0B01;
const int GL_CURRENT_COLOR = 0x0B00;
const int GL_CURRENT_NORMAL = 0x0B02;
const int GL_CURRENT_RASTER_COLOR = 0x0B04;
const int GL_CURRENT_RASTER_DISTANCE = 0x0B09;
const int GL_CURRENT_RASTER_INDEX = 0x0B05;
const int GL_CURRENT_RASTER_POSITION = 0x0B07;
const int GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
const int GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
const int GL_CURRENT_TEXTURE_COORDS = 0x0B03;
const int GL_INDEX_CLEAR_VALUE = 0x0C20;
const int GL_INDEX_MODE = 0x0C30;
const int GL_INDEX_WRITEMASK = 0x0C21;
const int GL_MODELVIEW_MATRIX = 0x0BA6;
const int GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
const int GL_NAME_STACK_DEPTH = 0x0D70;
const int GL_PROJECTION_MATRIX = 0x0BA7;
const int GL_PROJECTION_STACK_DEPTH = 0x0BA4;
const int GL_RENDER_MODE = 0x0C40;
const int GL_RGBA_MODE = 0x0C31;
const int GL_TEXTURE_MATRIX = 0x0BA8;
const int GL_TEXTURE_STACK_DEPTH = 0x0BA5;
const int GL_VIEWPORT = 0x0BA2;

/* Evaluators */
const int GL_AUTO_NORMAL = 0x0D80;
const int GL_MAP1_COLOR_4 = 0x0D90;
const int GL_MAP1_GRID_DOMAIN = 0x0DD0;
const int GL_MAP1_GRID_SEGMENTS = 0x0DD1;
const int GL_MAP1_INDEX = 0x0D91;
const int GL_MAP1_NORMAL = 0x0D92;
const int GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
const int GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
const int GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
const int GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
const int GL_MAP1_VERTEX_3 = 0x0D97;
const int GL_MAP1_VERTEX_4 = 0x0D98;
const int GL_MAP2_COLOR_4 = 0x0DB0;
const int GL_MAP2_GRID_DOMAIN = 0x0DD2;
const int GL_MAP2_GRID_SEGMENTS = 0x0DD3;
const int GL_MAP2_INDEX = 0x0DB1;
const int GL_MAP2_NORMAL = 0x0DB2;
const int GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
const int GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
const int GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
const int GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
const int GL_MAP2_VERTEX_3 = 0x0DB7;
const int GL_MAP2_VERTEX_4 = 0x0DB8;
const int GL_COEFF = 0x0A00;
const int GL_DOMAIN = 0x0A02;
const int GL_ORDER = 0x0A01;

/* Hints */
const int GL_FOG_HINT = 0x0C54;
const int GL_LINE_SMOOTH_HINT = 0x0C52;
const int GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
const int GL_POINT_SMOOTH_HINT = 0x0C51;
const int GL_POLYGON_SMOOTH_HINT = 0x0C53;
const int GL_DONT_CARE = 0x1100;
const int GL_FASTEST = 0x1101;
const int GL_NICEST = 0x1102;

/* Scissor box */
const int GL_SCISSOR_TEST = 0x0C11;
const int GL_SCISSOR_BOX = 0x0C10;

/* Pixel Mode / Transfer */
const int GL_MAP_COLOR = 0x0D10;
const int GL_MAP_STENCIL = 0x0D11;
const int GL_INDEX_SHIFT = 0x0D12;
const int GL_INDEX_OFFSET = 0x0D13;
const int GL_RED_SCALE = 0x0D14;
const int GL_RED_BIAS = 0x0D15;
const int GL_GREEN_SCALE = 0x0D18;
const int GL_GREEN_BIAS = 0x0D19;
const int GL_BLUE_SCALE = 0x0D1A;
const int GL_BLUE_BIAS = 0x0D1B;
const int GL_ALPHA_SCALE = 0x0D1C;
const int GL_ALPHA_BIAS = 0x0D1D;
const int GL_DEPTH_SCALE = 0x0D1E;
const int GL_DEPTH_BIAS = 0x0D1F;
const int GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
const int GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
const int GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
const int GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
const int GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
const int GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
const int GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
const int GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
const int GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
const int GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
const int GL_PIXEL_MAP_S_TO_S = 0x0C71;
const int GL_PIXEL_MAP_I_TO_I = 0x0C70;
const int GL_PIXEL_MAP_I_TO_R = 0x0C72;
const int GL_PIXEL_MAP_I_TO_G = 0x0C73;
const int GL_PIXEL_MAP_I_TO_B = 0x0C74;
const int GL_PIXEL_MAP_I_TO_A = 0x0C75;
const int GL_PIXEL_MAP_R_TO_R = 0x0C76;
const int GL_PIXEL_MAP_G_TO_G = 0x0C77;
const int GL_PIXEL_MAP_B_TO_B = 0x0C78;
const int GL_PIXEL_MAP_A_TO_A = 0x0C79;
const int GL_PACK_ALIGNMENT = 0x0D05;
const int GL_PACK_LSB_FIRST = 0x0D01;
const int GL_PACK_ROW_LENGTH = 0x0D02;
const int GL_PACK_SKIP_PIXELS = 0x0D04;
const int GL_PACK_SKIP_ROWS = 0x0D03;
const int GL_PACK_SWAP_BYTES = 0x0D00;
const int GL_UNPACK_ALIGNMENT = 0x0CF5;
const int GL_UNPACK_LSB_FIRST = 0x0CF1;
const int GL_UNPACK_ROW_LENGTH = 0x0CF2;
const int GL_UNPACK_SKIP_PIXELS = 0x0CF4;
const int GL_UNPACK_SKIP_ROWS = 0x0CF3;
const int GL_UNPACK_SWAP_BYTES = 0x0CF0;
const int GL_ZOOM_X = 0x0D16;
const int GL_ZOOM_Y = 0x0D17;

/* Texture mapping */
const int GL_TEXTURE_ENV = 0x2300;
const int GL_TEXTURE_ENV_MODE = 0x2200;
const int GL_TEXTURE_1D = 0x0DE0;
const int GL_TEXTURE_2D = 0x0DE1;
const int GL_TEXTURE_WRAP_S = 0x2802;
const int GL_TEXTURE_WRAP_T = 0x2803;
const int GL_TEXTURE_MAG_FILTER = 0x2800;
const int GL_TEXTURE_MIN_FILTER = 0x2801;
const int GL_TEXTURE_ENV_COLOR = 0x2201;
const int GL_TEXTURE_GEN_S = 0x0C60;
const int GL_TEXTURE_GEN_T = 0x0C61;
const int GL_TEXTURE_GEN_MODE = 0x2500;
const int GL_TEXTURE_BORDER_COLOR = 0x1004;
const int GL_TEXTURE_WIDTH = 0x1000;
const int GL_TEXTURE_HEIGHT = 0x1001;
const int GL_TEXTURE_BORDER = 0x1005;
const int GL_TEXTURE_COMPONENTS = 0x1003;
const int GL_TEXTURE_RED_SIZE = 0x805C;
const int GL_TEXTURE_GREEN_SIZE = 0x805D;
const int GL_TEXTURE_BLUE_SIZE = 0x805E;
const int GL_TEXTURE_ALPHA_SIZE = 0x805F;
const int GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
const int GL_TEXTURE_INTENSITY_SIZE = 0x8061;
const int GL_NEAREST_MIPMAP_NEAREST = 0x2700;
const int GL_NEAREST_MIPMAP_LINEAR = 0x2702;
const int GL_LINEAR_MIPMAP_NEAREST = 0x2701;
const int GL_LINEAR_MIPMAP_LINEAR = 0x2703;
const int GL_OBJECT_LINEAR = 0x2401;
const int GL_OBJECT_PLANE = 0x2501;
const int GL_EYE_LINEAR = 0x2400;
const int GL_EYE_PLANE = 0x2502;
const int GL_SPHERE_MAP = 0x2402;
const int GL_DECAL = 0x2101;
const int GL_MODULATE = 0x2100;
const int GL_NEAREST = 0x2600;
const int GL_REPEAT = 0x2901;
const int GL_CLAMP = 0x2900;
const int GL_S = 0x2000;
const int GL_T = 0x2001;
const int GL_R = 0x2002;
const int GL_Q = 0x2003;
const int GL_TEXTURE_GEN_R = 0x0C62;
const int GL_TEXTURE_GEN_Q = 0x0C63;

/* Utility */
const int GL_VENDOR = 0x1F00;
const int GL_RENDERER = 0x1F01;
const int GL_VERSION = 0x1F02;
const int GL_EXTENSIONS = 0x1F03;

/* Errors */
const int GL_NO_ERROR = 0x0;
const int GL_INVALID_VALUE = 0x0501;
const int GL_INVALID_ENUM = 0x0500;
const int GL_INVALID_OPERATION = 0x0502;
const int GL_STACK_OVERFLOW = 0x0503;
const int GL_STACK_UNDERFLOW = 0x0504;
const int GL_OUT_OF_MEMORY = 0x0505;

/* glPush/PopAttrib bits */
const int GL_CURRENT_BIT = 0x00000001;
const int GL_POINT_BIT = 0x00000002;
const int GL_LINE_BIT = 0x00000004;
const int GL_POLYGON_BIT = 0x00000008;
const int GL_POLYGON_STIPPLE_BIT = 0x00000010;
const int GL_PIXEL_MODE_BIT = 0x00000020;
const int GL_LIGHTING_BIT = 0x00000040;
const int GL_FOG_BIT = 0x00000080;
const int GL_DEPTH_BUFFER_BIT = 0x00000100;
const int GL_ACCUM_BUFFER_BIT = 0x00000200;
const int GL_STENCIL_BUFFER_BIT = 0x00000400;
const int GL_VIEWPORT_BIT = 0x00000800;
const int GL_TRANSFORM_BIT = 0x00001000;
const int GL_ENABLE_BIT = 0x00002000;
const int GL_COLOR_BUFFER_BIT = 0x00004000;
const int GL_HINT_BIT = 0x00008000;
const int GL_EVAL_BIT = 0x00010000;
const int GL_LIST_BIT = 0x00020000;
const int GL_TEXTURE_BIT = 0x00040000;
const int GL_SCISSOR_BIT = 0x00080000;
const int GL_ALL_ATTRIB_BITS = 0x000FFFFF;


/* OpenGL 1.1 */
const int GL_PROXY_TEXTURE_1D = 0x8063;
const int GL_PROXY_TEXTURE_2D = 0x8064;
const int GL_TEXTURE_PRIORITY = 0x8066;
const int GL_TEXTURE_RESIDENT = 0x8067;
const int GL_TEXTURE_BINDING_1D = 0x8068;
const int GL_TEXTURE_BINDING_2D = 0x8069;
const int GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
const int GL_ALPHA4 = 0x803B;
const int GL_ALPHA8 = 0x803C;
const int GL_ALPHA12 = 0x803D;
const int GL_ALPHA16 = 0x803E;
const int GL_LUMINANCE4 = 0x803F;
const int GL_LUMINANCE8 = 0x8040;
const int GL_LUMINANCE12 = 0x8041;
const int GL_LUMINANCE16 = 0x8042;
const int GL_LUMINANCE4_ALPHA4 = 0x8043;
const int GL_LUMINANCE6_ALPHA2 = 0x8044;
const int GL_LUMINANCE8_ALPHA8 = 0x8045;
const int GL_LUMINANCE12_ALPHA4 = 0x8046;
const int GL_LUMINANCE12_ALPHA12 = 0x8047;
const int GL_LUMINANCE16_ALPHA16 = 0x8048;
const int GL_INTENSITY = 0x8049;
const int GL_INTENSITY4 = 0x804A;
const int GL_INTENSITY8 = 0x804B;
const int GL_INTENSITY12 = 0x804C;
const int GL_INTENSITY16 = 0x804D;
const int GL_R3_G3_B2 = 0x2A10;
const int GL_RGB4 = 0x804F;
const int GL_RGB5 = 0x8050;
const int GL_RGB8 = 0x8051;
const int GL_RGB10 = 0x8052;
const int GL_RGB12 = 0x8053;
const int GL_RGB16 = 0x8054;
const int GL_RGBA2 = 0x8055;
const int GL_RGBA4 = 0x8056;
const int GL_RGB5_A1 = 0x8057;
const int GL_RGBA8 = 0x8058;
const int GL_RGB10_A2 = 0x8059;
const int GL_RGBA12 = 0x805A;
const int GL_RGBA16 = 0x805B;
const int GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
const int GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
const int GL_ALL_CLIENT_ATTRIB_BITS = cast(int)0xFFFFFFFF;
const int GL_CLIENT_ALL_ATTRIB_BITS = cast(int)0xFFFFFFFF;


/* OpenGL 1.2 */
const int GL_RESCALE_NORMAL = 0x803A;
const int GL_CLAMP_TO_EDGE = 0x812F;
const int GL_MAX_ELEMENTS_VERTICES = 0x80E8;
const int GL_MAX_ELEMENTS_INDICES = 0x80E9;
const int GL_BGR = 0x80E0;
const int GL_BGRA = 0x80E1;
const int GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
const int GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
const int GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
const int GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
const int GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
const int GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
const int GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
const int GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
const int GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
const int GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
const int GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
const int GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
const int GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
const int GL_SINGLE_COLOR = 0x81F9;
const int GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
const int GL_TEXTURE_MIN_LOD = 0x813A;
const int GL_TEXTURE_MAX_LOD = 0x813B;
const int GL_TEXTURE_BASE_LEVEL = 0x813C;
const int GL_TEXTURE_MAX_LEVEL = 0x813D;
const int GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
const int GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
const int GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
const int GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
const int GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
const int GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
const int GL_PACK_SKIP_IMAGES = 0x806B;
const int GL_PACK_IMAGE_HEIGHT = 0x806C;
const int GL_UNPACK_SKIP_IMAGES = 0x806D;
const int GL_UNPACK_IMAGE_HEIGHT = 0x806E;
const int GL_TEXTURE_3D = 0x806F;
const int GL_PROXY_TEXTURE_3D = 0x8070;
const int GL_TEXTURE_DEPTH = 0x8071;
const int GL_TEXTURE_WRAP_R = 0x8072;
const int GL_MAX_3D_TEXTURE_SIZE = 0x8073;
const int GL_TEXTURE_BINDING_3D = 0x806A;


/*
 * OpenGL 1.2 imaging subset
 */
/* GL_EXT_color_table */
const int GL_COLOR_TABLE = 0x80D0;
const int GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
const int GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
const int GL_PROXY_COLOR_TABLE = 0x80D3;
const int GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
const int GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
const int GL_COLOR_TABLE_SCALE = 0x80D6;
const int GL_COLOR_TABLE_BIAS = 0x80D7;
const int GL_COLOR_TABLE_FORMAT = 0x80D8;
const int GL_COLOR_TABLE_WIDTH = 0x80D9;
const int GL_COLOR_TABLE_RED_SIZE = 0x80DA;
const int GL_COLOR_TABLE_GREEN_SIZE = 0x80DB;
const int GL_COLOR_TABLE_BLUE_SIZE = 0x80DC;
const int GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD;
const int GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE;
const int GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF;
/* GL_EXT_convolution and GL_HP_convolution_border_modes */
const int GL_CONVOLUTION_1D = 0x8010;
const int GL_CONVOLUTION_2D = 0x8011;
const int GL_SEPARABLE_2D = 0x8012;
const int GL_CONVOLUTION_BORDER_MODE = 0x8013;
const int GL_CONVOLUTION_FILTER_SCALE = 0x8014;
const int GL_CONVOLUTION_FILTER_BIAS = 0x8015;
const int GL_REDUCE = 0x8016;
const int GL_CONVOLUTION_FORMAT = 0x8017;
const int GL_CONVOLUTION_WIDTH = 0x8018;
const int GL_CONVOLUTION_HEIGHT = 0x8019;
const int GL_MAX_CONVOLUTION_WIDTH = 0x801A;
const int GL_MAX_CONVOLUTION_HEIGHT = 0x801B;
const int GL_POST_CONVOLUTION_RED_SCALE = 0x801C;
const int GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D;
const int GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E;
const int GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F;
const int GL_POST_CONVOLUTION_RED_BIAS = 0x8020;
const int GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021;
const int GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022;
const int GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023;
const int GL_CONSTANT_BORDER = 0x8151;
const int GL_REPLICATE_BORDER = 0x8153;
const int GL_CONVOLUTION_BORDER_COLOR = 0x8154;
/* GL_SGI_color_matrix */
const int GL_COLOR_MATRIX = 0x80B1;
const int GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2;
const int GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3;
const int GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4;
const int GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5;
const int GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6;
const int GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7;
const int GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8;
const int GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9;
const int GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA;
const int GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB;
/* GL_EXT_histogram */
const int GL_HISTOGRAM = 0x8024;
const int GL_PROXY_HISTOGRAM = 0x8025;
const int GL_HISTOGRAM_WIDTH = 0x8026;
const int GL_HISTOGRAM_FORMAT = 0x8027;
const int GL_HISTOGRAM_RED_SIZE = 0x8028;
const int GL_HISTOGRAM_GREEN_SIZE = 0x8029;
const int GL_HISTOGRAM_BLUE_SIZE = 0x802A;
const int GL_HISTOGRAM_ALPHA_SIZE = 0x802B;
const int GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C;
const int GL_HISTOGRAM_SINK = 0x802D;
const int GL_MINMAX = 0x802E;
const int GL_MINMAX_FORMAT = 0x802F;
const int GL_MINMAX_SINK = 0x8030;
const int GL_TABLE_TOO_LARGE = 0x8031;
/* GL_EXT_blend_color, GL_EXT_blend_minmax */
const int GL_BLEND_EQUATION = 0x8009;
const int GL_MIN = 0x8007;
const int GL_MAX = 0x8008;
const int GL_FUNC_ADD = 0x8006;
const int GL_FUNC_SUBTRACT = 0x800A;
const int GL_FUNC_REVERSE_SUBTRACT = 0x800B;
const int GL_BLEND_COLOR = 0x8005;


/* OpenGL 1.3 */
/* multitexture */
const int GL_TEXTURE0 = 0x84C0;
const int GL_TEXTURE1 = 0x84C1;
const int GL_TEXTURE2 = 0x84C2;
const int GL_TEXTURE3 = 0x84C3;
const int GL_TEXTURE4 = 0x84C4;
const int GL_TEXTURE5 = 0x84C5;
const int GL_TEXTURE6 = 0x84C6;
const int GL_TEXTURE7 = 0x84C7;
const int GL_TEXTURE8 = 0x84C8;
const int GL_TEXTURE9 = 0x84C9;
const int GL_TEXTURE10 = 0x84CA;
const int GL_TEXTURE11 = 0x84CB;
const int GL_TEXTURE12 = 0x84CC;
const int GL_TEXTURE13 = 0x84CD;
const int GL_TEXTURE14 = 0x84CE;
const int GL_TEXTURE15 = 0x84CF;
const int GL_TEXTURE16 = 0x84D0;
const int GL_TEXTURE17 = 0x84D1;
const int GL_TEXTURE18 = 0x84D2;
const int GL_TEXTURE19 = 0x84D3;
const int GL_TEXTURE20 = 0x84D4;
const int GL_TEXTURE21 = 0x84D5;
const int GL_TEXTURE22 = 0x84D6;
const int GL_TEXTURE23 = 0x84D7;
const int GL_TEXTURE24 = 0x84D8;
const int GL_TEXTURE25 = 0x84D9;
const int GL_TEXTURE26 = 0x84DA;
const int GL_TEXTURE27 = 0x84DB;
const int GL_TEXTURE28 = 0x84DC;
const int GL_TEXTURE29 = 0x84DD;
const int GL_TEXTURE30 = 0x84DE;
const int GL_TEXTURE31 = 0x84DF;
const int GL_ACTIVE_TEXTURE = 0x84E0;
const int GL_CLIENT_ACTIVE_TEXTURE = 0x84E1;
const int GL_MAX_TEXTURE_UNITS = 0x84E2;
/* texture_cube_map */
const int GL_NORMAL_MAP = 0x8511;
const int GL_REFLECTION_MAP = 0x8512;
const int GL_TEXTURE_CUBE_MAP = 0x8513;
const int GL_TEXTURE_BINDING_CUBE_MAP = 0x8514;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
const int GL_PROXY_TEXTURE_CUBE_MAP = 0x851B;
const int GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
/* texture_compression */
const int GL_COMPRESSED_ALPHA = 0x84E9;
const int GL_COMPRESSED_LUMINANCE = 0x84EA;
const int GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
const int GL_COMPRESSED_INTENSITY = 0x84EC;
const int GL_COMPRESSED_RGB = 0x84ED;
const int GL_COMPRESSED_RGBA = 0x84EE;
const int GL_TEXTURE_COMPRESSION_HINT = 0x84EF;
const int GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
const int GL_TEXTURE_COMPRESSED = 0x86A1;
const int GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
const int GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;
/* multisample */
const int GL_MULTISAMPLE = 0x809D;
const int GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
const int GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
const int GL_SAMPLE_COVERAGE = 0x80A0;
const int GL_SAMPLE_BUFFERS = 0x80A8;
const int GL_SAMPLES = 0x80A9;
const int GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
const int GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
const int GL_MULTISAMPLE_BIT = 0x20000000;
/* transpose_matrix */
const int GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
const int GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
const int GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
const int GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
/* texture_env_combine */
const int GL_COMBINE = 0x8570;
const int GL_COMBINE_RGB = 0x8571;
const int GL_COMBINE_ALPHA = 0x8572;
const int GL_SOURCE0_RGB = 0x8580;
const int GL_SOURCE1_RGB = 0x8581;
const int GL_SOURCE2_RGB = 0x8582;
const int GL_SOURCE0_ALPHA = 0x8588;
const int GL_SOURCE1_ALPHA = 0x8589;
const int GL_SOURCE2_ALPHA = 0x858A;
const int GL_OPERAND0_RGB = 0x8590;
const int GL_OPERAND1_RGB = 0x8591;
const int GL_OPERAND2_RGB = 0x8592;
const int GL_OPERAND0_ALPHA = 0x8598;
const int GL_OPERAND1_ALPHA = 0x8599;
const int GL_OPERAND2_ALPHA = 0x859A;
const int GL_RGB_SCALE = 0x8573;
const int GL_ADD_SIGNED = 0x8574;
const int GL_INTERPOLATE = 0x8575;
const int GL_SUBTRACT = 0x84E7;
const int GL_CONSTANT = 0x8576;
const int GL_PRIMARY_COLOR = 0x8577;
const int GL_PREVIOUS = 0x8578;
/* texture_env_dot3 */
const int GL_DOT3_RGB = 0x86AE;
const int GL_DOT3_RGBA = 0x86AF;
/* texture_border_clamp */
const int GL_CLAMP_TO_BORDER = 0x812D;



//#if defined(__BEOS__) || defined(__QUICKDRAW__)
//#pragma export on
//#endif


/*
 * Miscellaneous
 */

void glClearIndex( GLfloat c );

void glClearColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );

void glClear( GLbitfield mask );

void glIndexMask( GLuint mask );

void glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha );

void glAlphaFunc( GLenum func, GLclampf ref );

void glBlendFunc( GLenum sfactor, GLenum dfactor );

void glLogicOp( GLenum opcode );

void glCullFace( GLenum mode );

void glFrontFace( GLenum mode );

void glPointSize( GLfloat size );

void glLineWidth( GLfloat width );

void glLineStipple( GLint factor, GLushort pattern );

void glPolygonMode( GLenum face, GLenum mode );

void glPolygonOffset( GLfloat factor, GLfloat units );

void glPolygonStipple( GLubyte *mask );

void glGetPolygonStipple( GLubyte *mask );

void glEdgeFlag( GLboolean flag );

void glEdgeFlagv( GLboolean *flag );

void glScissor( GLint x, GLint y, GLsizei width, GLsizei height);

void glClipPlane( GLenum plane, GLdouble *equation );

void glGetClipPlane( GLenum plane, GLdouble *equation );

void glDrawBuffer( GLenum mode );

void glReadBuffer( GLenum mode );

void glEnable( GLenum cap );

void glDisable( GLenum cap );

GLboolean glIsEnabled( GLenum cap );


void glEnableClientState( GLenum cap ); /* 1.1 */

void glDisableClientState( GLenum cap ); /* 1.1 */


void glGetBooleanv( GLenum pname, GLboolean *params );

void glGetDoublev( GLenum pname, GLdouble *params );

void glGetFloatv( GLenum pname, GLfloat *params );

void glGetIntegerv( GLenum pname, GLint *params );


void glPushAttrib( GLbitfield mask );

void glPopAttrib( );


void glPushClientAttrib( GLbitfield mask ); /* 1.1 */

void glPopClientAttrib( ); /* 1.1 */


GLint glRenderMode( GLenum mode );

GLenum glGetError( );

GLubyte* glGetString( GLenum name );

void glFinish( );

void glFlush( );

void glHint( GLenum target, GLenum mode );



/*
 * Depth Buffer
 */

void glClearDepth( GLclampd depth );

void glDepthFunc( GLenum func );

void glDepthMask( GLboolean flag );

void glDepthRange( GLclampd near_val, GLclampd far_val );


/*
 * Accumulation Buffer
 */

void glClearAccum( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );

void glAccum( GLenum op, GLfloat value );



/*
 * Transformation
 */

void glMatrixMode( GLenum mode );

void glOrtho( GLdouble left, GLdouble right,
                                 GLdouble bottom, GLdouble top,
                                 GLdouble near_val, GLdouble far_val );

void glFrustum( GLdouble left, GLdouble right,
                                   GLdouble bottom, GLdouble top,
                                   GLdouble near_val, GLdouble far_val );

void glViewport( GLint x, GLint y,
                                    GLsizei width, GLsizei height );

void glPushMatrix( );

void glPopMatrix( );

void glLoadIdentity( );

void glLoadMatrixd( GLdouble *m );
void glLoadMatrixf( GLfloat *m );

void glMultMatrixd( GLdouble *m );
void glMultMatrixf( GLfloat *m );

void glRotated( GLdouble angle,
                                   GLdouble x, GLdouble y, GLdouble z );
void glRotatef( GLfloat angle,
                                   GLfloat x, GLfloat y, GLfloat z );

void glScaled( GLdouble x, GLdouble y, GLdouble z );
void glScalef( GLfloat x, GLfloat y, GLfloat z );

void glTranslated( GLdouble x, GLdouble y, GLdouble z );
void glTranslatef( GLfloat x, GLfloat y, GLfloat z );



/*
 * Display Lists
 */

GLboolean glIsList( GLuint list );

void glDeleteLists( GLuint list, GLsizei range );

GLuint glGenLists( GLsizei range );

void glNewList( GLuint list, GLenum mode );

void glEndList( );

void glCallList( GLuint list );

void glCallLists( GLsizei n, GLenum type,
                                     GLvoid *lists );

void glListBase( GLuint base );



/*
 * Drawing Functions
 */

void glBegin( GLenum mode );

void glEnd( );


void glVertex2d( GLdouble x, GLdouble y );
void glVertex2f( GLfloat x, GLfloat y );
void glVertex2i( GLint x, GLint y );
void glVertex2s( GLshort x, GLshort y );

void glVertex3d( GLdouble x, GLdouble y, GLdouble z );
void glVertex3f( GLfloat x, GLfloat y, GLfloat z );
void glVertex3i( GLint x, GLint y, GLint z );
void glVertex3s( GLshort x, GLshort y, GLshort z );

void glVertex4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
void glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
void glVertex4i( GLint x, GLint y, GLint z, GLint w );
void glVertex4s( GLshort x, GLshort y, GLshort z, GLshort w );

void glVertex2dv( GLdouble *v );
void glVertex2fv( GLfloat *v );
void glVertex2iv( GLint *v );
void glVertex2sv( GLshort *v );

void glVertex3dv( GLdouble *v );
void glVertex3fv( GLfloat *v );
void glVertex3iv( GLint *v );
void glVertex3sv( GLshort *v );

void glVertex4dv( GLdouble *v );
void glVertex4fv( GLfloat *v );
void glVertex4iv( GLint *v );
void glVertex4sv( GLshort *v );


void glNormal3b( GLbyte nx, GLbyte ny, GLbyte nz );
void glNormal3d( GLdouble nx, GLdouble ny, GLdouble nz );
void glNormal3f( GLfloat nx, GLfloat ny, GLfloat nz );
void glNormal3i( GLint nx, GLint ny, GLint nz );
void glNormal3s( GLshort nx, GLshort ny, GLshort nz );

void glNormal3bv( GLbyte *v );
void glNormal3dv( GLdouble *v );
void glNormal3fv( GLfloat *v );
void glNormal3iv( GLint *v );
void glNormal3sv( GLshort *v );


void glIndexd( GLdouble c );
void glIndexf( GLfloat c );
void glIndexi( GLint c );
void glIndexs( GLshort c );
void glIndexub( GLubyte c ); /* 1.1 */

void glIndexdv( GLdouble *c );
void glIndexfv( GLfloat *c );
void glIndexiv( GLint *c );
void glIndexsv( GLshort *c );
void glIndexubv( GLubyte *c ); /* 1.1 */

void glColor3b( GLbyte red, GLbyte green, GLbyte blue );
void glColor3d( GLdouble red, GLdouble green, GLdouble blue );
void glColor3f( GLfloat red, GLfloat green, GLfloat blue );
void glColor3i( GLint red, GLint green, GLint blue );
void glColor3s( GLshort red, GLshort green, GLshort blue );
void glColor3ub( GLubyte red, GLubyte green, GLubyte blue );
void glColor3ui( GLuint red, GLuint green, GLuint blue );
void glColor3us( GLushort red, GLushort green, GLushort blue );

void glColor4b( GLbyte red, GLbyte green,
                                   GLbyte blue, GLbyte alpha );
void glColor4d( GLdouble red, GLdouble green,
                                   GLdouble blue, GLdouble alpha );
void glColor4f( GLfloat red, GLfloat green,
                                   GLfloat blue, GLfloat alpha );
void glColor4i( GLint red, GLint green,
                                   GLint blue, GLint alpha );
void glColor4s( GLshort red, GLshort green,
                                   GLshort blue, GLshort alpha );
void glColor4ub( GLubyte red, GLubyte green,
                                    GLubyte blue, GLubyte alpha );
void glColor4ui( GLuint red, GLuint green,
                                    GLuint blue, GLuint alpha );
void glColor4us( GLushort red, GLushort green,
                                    GLushort blue, GLushort alpha );


void glColor3bv( GLbyte *v );
void glColor3dv( GLdouble *v );
void glColor3fv( GLfloat *v );
void glColor3iv( GLint *v );
void glColor3sv( GLshort *v );
void glColor3ubv( GLubyte *v );
void glColor3uiv( GLuint *v );
void glColor3usv( GLushort *v );

void glColor4bv( GLbyte *v );
void glColor4dv( GLdouble *v );
void glColor4fv( GLfloat *v );
void glColor4iv( GLint *v );
void glColor4sv( GLshort *v );
void glColor4ubv( GLubyte *v );
void glColor4uiv( GLuint *v );
void glColor4usv( GLushort *v );


void glTexCoord1d( GLdouble s );
void glTexCoord1f( GLfloat s );
void glTexCoord1i( GLint s );
void glTexCoord1s( GLshort s );

void glTexCoord2d( GLdouble s, GLdouble t );
void glTexCoord2f( GLfloat s, GLfloat t );
void glTexCoord2i( GLint s, GLint t );
void glTexCoord2s( GLshort s, GLshort t );

void glTexCoord3d( GLdouble s, GLdouble t, GLdouble r );
void glTexCoord3f( GLfloat s, GLfloat t, GLfloat r );
void glTexCoord3i( GLint s, GLint t, GLint r );
void glTexCoord3s( GLshort s, GLshort t, GLshort r );

void glTexCoord4d( GLdouble s, GLdouble t, GLdouble r, GLdouble q );
void glTexCoord4f( GLfloat s, GLfloat t, GLfloat r, GLfloat q );
void glTexCoord4i( GLint s, GLint t, GLint r, GLint q );
void glTexCoord4s( GLshort s, GLshort t, GLshort r, GLshort q );

void glTexCoord1dv( GLdouble *v );
void glTexCoord1fv( GLfloat *v );
void glTexCoord1iv( GLint *v );
void glTexCoord1sv( GLshort *v );

void glTexCoord2dv( GLdouble *v );
void glTexCoord2fv( GLfloat *v );
void glTexCoord2iv( GLint *v );
void glTexCoord2sv( GLshort *v );

void glTexCoord3dv( GLdouble *v );
void glTexCoord3fv( GLfloat *v );
void glTexCoord3iv( GLint *v );
void glTexCoord3sv( GLshort *v );

void glTexCoord4dv( GLdouble *v );
void glTexCoord4fv( GLfloat *v );
void glTexCoord4iv( GLint *v );
void glTexCoord4sv( GLshort *v );


void glRasterPos2d( GLdouble x, GLdouble y );
void glRasterPos2f( GLfloat x, GLfloat y );
void glRasterPos2i( GLint x, GLint y );
void glRasterPos2s( GLshort x, GLshort y );

void glRasterPos3d( GLdouble x, GLdouble y, GLdouble z );
void glRasterPos3f( GLfloat x, GLfloat y, GLfloat z );
void glRasterPos3i( GLint x, GLint y, GLint z );
void glRasterPos3s( GLshort x, GLshort y, GLshort z );

void glRasterPos4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
void glRasterPos4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
void glRasterPos4i( GLint x, GLint y, GLint z, GLint w );
void glRasterPos4s( GLshort x, GLshort y, GLshort z, GLshort w );

void glRasterPos2dv( GLdouble *v );
void glRasterPos2fv( GLfloat *v );
void glRasterPos2iv( GLint *v );
void glRasterPos2sv( GLshort *v );

void glRasterPos3dv( GLdouble *v );
void glRasterPos3fv( GLfloat *v );
void glRasterPos3iv( GLint *v );
void glRasterPos3sv( GLshort *v );

void glRasterPos4dv( GLdouble *v );
void glRasterPos4fv( GLfloat *v );
void glRasterPos4iv( GLint *v );
void glRasterPos4sv( GLshort *v );


void glRectd( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 );
void glRectf( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 );
void glRecti( GLint x1, GLint y1, GLint x2, GLint y2 );
void glRects( GLshort x1, GLshort y1, GLshort x2, GLshort y2 );


void glRectdv( GLdouble *v1, GLdouble *v2 );
void glRectfv( GLfloat *v1, GLfloat *v2 );
void glRectiv( GLint *v1, GLint *v2 );
void glRectsv( GLshort *v1, GLshort *v2 );



/*
 * Vertex Arrays  (1.1)
 */

void glVertexPointer( GLint size, GLenum type,
                                       GLsizei stride, GLvoid *ptr );

void glNormalPointer( GLenum type, GLsizei stride,
                                       GLvoid *ptr );

void glColorPointer( GLint size, GLenum type,
                                      GLsizei stride, GLvoid *ptr );

void glIndexPointer( GLenum type, GLsizei stride,
                                      GLvoid *ptr );

void glTexCoordPointer( GLint size, GLenum type,
                                         GLsizei stride, GLvoid *ptr );

void glEdgeFlagPointer( GLsizei stride, GLvoid *ptr );

void glGetPointerv( GLenum pname, GLvoid **params );

void glArrayElement( GLint i );

void glDrawArrays( GLenum mode, GLint first, GLsizei count );

void glDrawElements( GLenum mode, GLsizei count,
                                      GLenum type, GLvoid *indices );

void glInterleavedArrays( GLenum format, GLsizei stride,
                                           GLvoid *pointer );


/*
 * Lighting
 */

void glShadeModel( GLenum mode );

void glLightf( GLenum light, GLenum pname, GLfloat param );
void glLighti( GLenum light, GLenum pname, GLint param );
void glLightfv( GLenum light, GLenum pname,
                                 GLfloat *params );
void glLightiv( GLenum light, GLenum pname,
                                 GLint *params );

void glGetLightfv( GLenum light, GLenum pname,
                                    GLfloat *params );
void glGetLightiv( GLenum light, GLenum pname,
                                    GLint *params );

void glLightModelf( GLenum pname, GLfloat param );
void glLightModeli( GLenum pname, GLint param );
void glLightModelfv( GLenum pname, GLfloat *params );
void glLightModeliv( GLenum pname, GLint *params );

void glMaterialf( GLenum face, GLenum pname, GLfloat param );
void glMateriali( GLenum face, GLenum pname, GLint param );
void glMaterialfv( GLenum face, GLenum pname, GLfloat *params );
void glMaterialiv( GLenum face, GLenum pname, GLint *params );

void glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params );
void glGetMaterialiv( GLenum face, GLenum pname, GLint *params );

void glColorMaterial( GLenum face, GLenum mode );




/*
 * Raster functions
 */

void glPixelZoom( GLfloat xfactor, GLfloat yfactor );

void glPixelStoref( GLenum pname, GLfloat param );
void glPixelStorei( GLenum pname, GLint param );

void glPixelTransferf( GLenum pname, GLfloat param );
void glPixelTransferi( GLenum pname, GLint param );

void glPixelMapfv( GLenum map, GLint mapsize,
                                    GLfloat *values );
void glPixelMapuiv( GLenum map, GLint mapsize,
                                     GLuint *values );
void glPixelMapusv( GLenum map, GLint mapsize,
                                     GLushort *values );

void glGetPixelMapfv( GLenum map, GLfloat *values );
void glGetPixelMapuiv( GLenum map, GLuint *values );
void glGetPixelMapusv( GLenum map, GLushort *values );

void glBitmap( GLsizei width, GLsizei height,
                                GLfloat xorig, GLfloat yorig,
                                GLfloat xmove, GLfloat ymove,
                                GLubyte *bitmap );

void glReadPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels );

void glDrawPixels( GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels );

void glCopyPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum type );



/*
 * Stenciling
 */

void glStencilFunc( GLenum func, GLint ref, GLuint mask );

void glStencilMask( GLuint mask );

void glStencilOp( GLenum fail, GLenum zfail, GLenum zpass );

void glClearStencil( GLint s );



/*
 * Texture mapping
 */

void glTexGend( GLenum coord, GLenum pname, GLdouble param );
void glTexGenf( GLenum coord, GLenum pname, GLfloat param );
void glTexGeni( GLenum coord, GLenum pname, GLint param );

void glTexGendv( GLenum coord, GLenum pname, GLdouble *params );
void glTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
void glTexGeniv( GLenum coord, GLenum pname, GLint *params );

void glGetTexGendv( GLenum coord, GLenum pname, GLdouble *params );
void glGetTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
void glGetTexGeniv( GLenum coord, GLenum pname, GLint *params );


void glTexEnvf( GLenum target, GLenum pname, GLfloat param );
void glTexEnvi( GLenum target, GLenum pname, GLint param );

void glTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
void glTexEnviv( GLenum target, GLenum pname, GLint *params );

void glGetTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
void glGetTexEnviv( GLenum target, GLenum pname, GLint *params );


void glTexParameterf( GLenum target, GLenum pname, GLfloat param );
void glTexParameteri( GLenum target, GLenum pname, GLint param );

void glTexParameterfv( GLenum target, GLenum pname,
                                          GLfloat *params );
void glTexParameteriv( GLenum target, GLenum pname,
                                          GLint *params );

void glGetTexParameterfv( GLenum target,
                                           GLenum pname, GLfloat *params);
void glGetTexParameteriv( GLenum target,
                                           GLenum pname, GLint *params );

void glGetTexLevelParameterfv( GLenum target, GLint level,
                                                GLenum pname, GLfloat *params );
void glGetTexLevelParameteriv( GLenum target, GLint level,
                                                GLenum pname, GLint *params );


void glTexImage1D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLint border,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels );

void glTexImage2D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLsizei height,
                                    GLint border, GLenum format, GLenum type,
                                    GLvoid *pixels );

void glGetTexImage( GLenum target, GLint level,
                                     GLenum format, GLenum type,
                                     GLvoid *pixels );



/* 1.1 functions */

void glGenTextures( GLsizei n, GLuint *textures );

void glDeleteTextures( GLsizei n, GLuint *textures);

void glBindTexture( GLenum target, GLuint texture );

void glPrioritizeTextures( GLsizei n,
                                            GLuint *textures,
                                            GLclampf *priorities );

GLboolean glAreTexturesResident( GLsizei n,
                                                  GLuint *textures,
                                                  GLboolean *residences );

GLboolean glIsTexture( GLuint texture );


void glTexSubImage1D( GLenum target, GLint level,
                                       GLint xoffset,
                                       GLsizei width, GLenum format,
                                       GLenum type, GLvoid *pixels );


void glTexSubImage2D( GLenum target, GLint level,
                                       GLint xoffset, GLint yoffset,
                                       GLsizei width, GLsizei height,
                                       GLenum format, GLenum type,
                                       GLvoid *pixels );


void glCopyTexImage1D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLint border );


void glCopyTexImage2D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLsizei height,
                                        GLint border );


void glCopyTexSubImage1D( GLenum target, GLint level,
                                           GLint xoffset, GLint x, GLint y,
                                           GLsizei width );


void glCopyTexSubImage2D( GLenum target, GLint level,
                                           GLint xoffset, GLint yoffset,
                                           GLint x, GLint y,
                                           GLsizei width, GLsizei height );




/*
 * Evaluators
 */

void glMap1d( GLenum target, GLdouble u1, GLdouble u2,
                               GLint stride,
                               GLint order, GLdouble *points );
void glMap1f( GLenum target, GLfloat u1, GLfloat u2,
                               GLint stride,
                               GLint order, GLfloat *points );

void glMap2d( GLenum target,
		     GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
		     GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
		     GLdouble *points );
void glMap2f( GLenum target,
		     GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
		     GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
		     GLfloat *points );

void glGetMapdv( GLenum target, GLenum query, GLdouble *v );
void glGetMapfv( GLenum target, GLenum query, GLfloat *v );
void glGetMapiv( GLenum target, GLenum query, GLint *v );

void glEvalCoord1d( GLdouble u );
void glEvalCoord1f( GLfloat u );

void glEvalCoord1dv( GLdouble *u );
void glEvalCoord1fv( GLfloat *u );

void glEvalCoord2d( GLdouble u, GLdouble v );
void glEvalCoord2f( GLfloat u, GLfloat v );

void glEvalCoord2dv( GLdouble *u );
void glEvalCoord2fv( GLfloat *u );

void glMapGrid1d( GLint un, GLdouble u1, GLdouble u2 );
void glMapGrid1f( GLint un, GLfloat u1, GLfloat u2 );

void glMapGrid2d( GLint un, GLdouble u1, GLdouble u2,
                                   GLint vn, GLdouble v1, GLdouble v2 );
void glMapGrid2f( GLint un, GLfloat u1, GLfloat u2,
                                   GLint vn, GLfloat v1, GLfloat v2 );

void glEvalPoint1( GLint i );

void glEvalPoint2( GLint i, GLint j );

void glEvalMesh1( GLenum mode, GLint i1, GLint i2 );

void glEvalMesh2( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 );



/*
 * Fog
 */

void glFogf( GLenum pname, GLfloat param );

void glFogi( GLenum pname, GLint param );

void glFogfv( GLenum pname, GLfloat *params );

void glFogiv( GLenum pname, GLint *params );



/*
 * Selection and Feedback
 */

void glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );

void glPassThrough( GLfloat token );

void glSelectBuffer( GLsizei size, GLuint *buffer );

void glInitNames( );

void glLoadName( GLuint name );

void glPushName( GLuint name );

void glPopName( );



/* 1.2 functions */
void glDrawRangeElements( GLenum mode, GLuint start,
	GLuint end, GLsizei count, GLenum type, GLvoid *indices );

void glTexImage3D( GLenum target, GLint level,
                                      GLenum internalFormat,
                                      GLsizei width, GLsizei height,
                                      GLsizei depth, GLint border,
                                      GLenum format, GLenum type,
                                      GLvoid *pixels );

void glTexSubImage3D( GLenum target, GLint level,
                                         GLint xoffset, GLint yoffset,
                                         GLint zoffset, GLsizei width,
                                         GLsizei height, GLsizei depth,
                                         GLenum format,
                                         GLenum type, GLvoid *pixels);

void glCopyTexSubImage3D( GLenum target, GLint level,
                                             GLint xoffset, GLint yoffset,
                                             GLint zoffset, GLint x,
                                             GLint y, GLsizei width,
                                             GLsizei height );


/* 1.2 imaging extension functions */

void glColorTable( GLenum target, GLenum internalformat,
                                    GLsizei width, GLenum format,
                                    GLenum type, GLvoid *table );

void glColorSubTable( GLenum target,
                                       GLsizei start, GLsizei count,
                                       GLenum format, GLenum type,
                                       GLvoid *data );

void glColorTableParameteriv(GLenum target, GLenum pname,
                                              GLint *params);

void glColorTableParameterfv(GLenum target, GLenum pname,
                                              GLfloat *params);

void glCopyColorSubTable( GLenum target, GLsizei start,
                                           GLint x, GLint y, GLsizei width );

void glCopyColorTable( GLenum target, GLenum internalformat,
                                        GLint x, GLint y, GLsizei width );

void glGetColorTable( GLenum target, GLenum format,
                                       GLenum type, GLvoid *table );

void glGetColorTableParameterfv( GLenum target, GLenum pname,
                                                  GLfloat *params );

void glGetColorTableParameteriv( GLenum target, GLenum pname,
                                                  GLint *params );

void glBlendEquation( GLenum mode );

void glBlendColor( GLclampf red, GLclampf green,
                                    GLclampf blue, GLclampf alpha );

void glHistogram( GLenum target, GLsizei width,
				   GLenum internalformat, GLboolean sink );

void glResetHistogram( GLenum target );

void glGetHistogram( GLenum target, GLboolean reset,
				      GLenum format, GLenum type,
				      GLvoid *values );

void glGetHistogramParameterfv( GLenum target, GLenum pname,
						 GLfloat *params );

void glGetHistogramParameteriv( GLenum target, GLenum pname,
						 GLint *params );

void glMinmax( GLenum target, GLenum internalformat,
				GLboolean sink );

void glResetMinmax( GLenum target );

void glGetMinmax( GLenum target, GLboolean reset,
                                   GLenum format, GLenum types,
                                   GLvoid *values );

void glGetMinmaxParameterfv( GLenum target, GLenum pname,
					      GLfloat *params );

void glGetMinmaxParameteriv( GLenum target, GLenum pname,
					      GLint *params );

void glConvolutionFilter1D( GLenum target,
	GLenum internalformat, GLsizei width, GLenum format, GLenum type,
	GLvoid *image );

void glConvolutionFilter2D( GLenum target,
	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
	GLenum type, GLvoid *image );

void glConvolutionParameterf( GLenum target, GLenum pname,
	GLfloat params );

void glConvolutionParameterfv( GLenum target, GLenum pname,
	GLfloat *params );

void glConvolutionParameteri( GLenum target, GLenum pname,
	GLint params );

void glConvolutionParameteriv( GLenum target, GLenum pname,
	GLint *params );

void glCopyConvolutionFilter1D( GLenum target,
	GLenum internalformat, GLint x, GLint y, GLsizei width );

void glCopyConvolutionFilter2D( GLenum target,
	GLenum internalformat, GLint x, GLint y, GLsizei width,
	GLsizei height);

void glGetConvolutionFilter( GLenum target, GLenum format,
	GLenum type, GLvoid *image );

void glGetConvolutionParameterfv( GLenum target, GLenum pname,
	GLfloat *params );

void glGetConvolutionParameteriv( GLenum target, GLenum pname,
	GLint *params );

void glSeparableFilter2D( GLenum target,
	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
	GLenum type, GLvoid *row, GLvoid *column );

void glGetSeparableFilter( GLenum target, GLenum format,
	GLenum type, GLvoid *row, GLvoid *column, GLvoid *span );



/* 1.3 functions */

void glActiveTexture( GLenum texture );

void glClientActiveTexture( GLenum texture );

void glCompressedTexImage1D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data );

void glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data );

void glCompressedTexImage3D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data );

void glCompressedTexSubImage1D( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data );

void glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data );

void glCompressedTexSubImage3D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data );

void glGetCompressedTexImage( GLenum target, GLint lod, GLvoid *img );

void glMultiTexCoord1d( GLenum target, GLdouble s );

void glMultiTexCoord1dv( GLenum target, GLdouble *v );

void glMultiTexCoord1f( GLenum target, GLfloat s );

void glMultiTexCoord1fv( GLenum target, GLfloat *v );

void glMultiTexCoord1i( GLenum target, GLint s );

void glMultiTexCoord1iv( GLenum target, GLint *v );

void glMultiTexCoord1s( GLenum target, GLshort s );

void glMultiTexCoord1sv( GLenum target, GLshort *v );

void glMultiTexCoord2d( GLenum target, GLdouble s, GLdouble t );

void glMultiTexCoord2dv( GLenum target, GLdouble *v );

void glMultiTexCoord2f( GLenum target, GLfloat s, GLfloat t );

void glMultiTexCoord2fv( GLenum target, GLfloat *v );

void glMultiTexCoord2i( GLenum target, GLint s, GLint t );

void glMultiTexCoord2iv( GLenum target, GLint *v );

void glMultiTexCoord2s( GLenum target, GLshort s, GLshort t );

void glMultiTexCoord2sv( GLenum target, GLshort *v );

void glMultiTexCoord3d( GLenum target, GLdouble s, GLdouble t, GLdouble r );

void glMultiTexCoord3dv( GLenum target, GLdouble *v );

void glMultiTexCoord3f( GLenum target, GLfloat s, GLfloat t, GLfloat r );

void glMultiTexCoord3fv( GLenum target, GLfloat *v );

void glMultiTexCoord3i( GLenum target, GLint s, GLint t, GLint r );

void glMultiTexCoord3iv( GLenum target, GLint *v );

void glMultiTexCoord3s( GLenum target, GLshort s, GLshort t, GLshort r );

void glMultiTexCoord3sv( GLenum target, GLshort *v );

void glMultiTexCoord4d( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q );

void glMultiTexCoord4dv( GLenum target, GLdouble *v );

void glMultiTexCoord4f( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q );

void glMultiTexCoord4fv( GLenum target, GLfloat *v );

void glMultiTexCoord4i( GLenum target, GLint s, GLint t, GLint r, GLint q );

void glMultiTexCoord4iv( GLenum target, GLint *v );

void glMultiTexCoord4s( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q );

void glMultiTexCoord4sv( GLenum target, GLshort *v );


void glLoadTransposeMatrixd( GLdouble m[16] );

void glLoadTransposeMatrixf( GLfloat m[16] );

void glMultTransposeMatrixd( GLdouble m[16] );

void glMultTransposeMatrixf( GLfloat m[16] );

void glSampleCoverage( GLclampf value, GLboolean invert );


//#if defined(GL_GLEXT_LEGACY)


/*
 * GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
 */
//#ifndef GL_ARB_multitexture
const int GL_ARB_multitexture = 1;

const int GL_TEXTURE0_ARB = 0x84C0;
const int GL_TEXTURE1_ARB = 0x84C1;
const int GL_TEXTURE2_ARB = 0x84C2;
const int GL_TEXTURE3_ARB = 0x84C3;
const int GL_TEXTURE4_ARB = 0x84C4;
const int GL_TEXTURE5_ARB = 0x84C5;
const int GL_TEXTURE6_ARB = 0x84C6;
const int GL_TEXTURE7_ARB = 0x84C7;
const int GL_TEXTURE8_ARB = 0x84C8;
const int GL_TEXTURE9_ARB = 0x84C9;
const int GL_TEXTURE10_ARB = 0x84CA;
const int GL_TEXTURE11_ARB = 0x84CB;
const int GL_TEXTURE12_ARB = 0x84CC;
const int GL_TEXTURE13_ARB = 0x84CD;
const int GL_TEXTURE14_ARB = 0x84CE;
const int GL_TEXTURE15_ARB = 0x84CF;
const int GL_TEXTURE16_ARB = 0x84D0;
const int GL_TEXTURE17_ARB = 0x84D1;
const int GL_TEXTURE18_ARB = 0x84D2;
const int GL_TEXTURE19_ARB = 0x84D3;
const int GL_TEXTURE20_ARB = 0x84D4;
const int GL_TEXTURE21_ARB = 0x84D5;
const int GL_TEXTURE22_ARB = 0x84D6;
const int GL_TEXTURE23_ARB = 0x84D7;
const int GL_TEXTURE24_ARB = 0x84D8;
const int GL_TEXTURE25_ARB = 0x84D9;
const int GL_TEXTURE26_ARB = 0x84DA;
const int GL_TEXTURE27_ARB = 0x84DB;
const int GL_TEXTURE28_ARB = 0x84DC;
const int GL_TEXTURE29_ARB = 0x84DD;
const int GL_TEXTURE30_ARB = 0x84DE;
const int GL_TEXTURE31_ARB = 0x84DF;
const int GL_ACTIVE_TEXTURE_ARB = 0x84E0;
const int GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1;
const int GL_MAX_TEXTURE_UNITS_ARB = 0x84E2;

void glActiveTextureARB(GLenum texture);
void glClientActiveTextureARB(GLenum texture);
void glMultiTexCoord1dARB(GLenum target, GLdouble s);
void glMultiTexCoord1dvARB(GLenum target, GLdouble *v);
void glMultiTexCoord1fARB(GLenum target, GLfloat s);
void glMultiTexCoord1fvARB(GLenum target, GLfloat *v);
void glMultiTexCoord1iARB(GLenum target, GLint s);
void glMultiTexCoord1ivARB(GLenum target, GLint *v);
void glMultiTexCoord1sARB(GLenum target, GLshort s);
void glMultiTexCoord1svARB(GLenum target, GLshort *v);
void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
void glMultiTexCoord2dvARB(GLenum target, GLdouble *v);
void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
void glMultiTexCoord2fvARB(GLenum target, GLfloat *v);
void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
void glMultiTexCoord2ivARB(GLenum target, GLint *v);
void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
void glMultiTexCoord2svARB(GLenum target, GLshort *v);
void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord3dvARB(GLenum target, GLdouble *v);
void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3fvARB(GLenum target, GLfloat *v);
void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
void glMultiTexCoord3ivARB(GLenum target, GLint *v);
void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3svARB(GLenum target, GLshort *v);
void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord4dvARB(GLenum target, GLdouble *v);
void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4fvARB(GLenum target, GLfloat *v);
void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4ivARB(GLenum target, GLint *v);
void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4svARB(GLenum target, GLshort *v);

alias  void (* PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
alias  void (* PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);
alias  void (* PFNGLMULTITEXCOORD1DARBPROC) (GLenum target, GLdouble s);
alias  void (* PFNGLMULTITEXCOORD1DVARBPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD1FARBPROC) (GLenum target, GLfloat s);
alias  void (* PFNGLMULTITEXCOORD1FVARBPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD1IARBPROC) (GLenum target, GLint s);
alias  void (* PFNGLMULTITEXCOORD1IVARBPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD1SARBPROC) (GLenum target, GLshort s);
alias  void (* PFNGLMULTITEXCOORD1SVARBPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD2DARBPROC) (GLenum target, GLdouble s, GLdouble t);
alias  void (* PFNGLMULTITEXCOORD2DVARBPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
alias  void (* PFNGLMULTITEXCOORD2FVARBPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD2IARBPROC) (GLenum target, GLint s, GLint t);
alias  void (* PFNGLMULTITEXCOORD2IVARBPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD2SARBPROC) (GLenum target, GLshort s, GLshort t);
alias  void (* PFNGLMULTITEXCOORD2SVARBPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD3DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias  void (* PFNGLMULTITEXCOORD3DVARBPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD3FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias  void (* PFNGLMULTITEXCOORD3FVARBPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD3IARBPROC) (GLenum target, GLint s, GLint t, GLint r);
alias  void (* PFNGLMULTITEXCOORD3IVARBPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD3SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias  void (* PFNGLMULTITEXCOORD3SVARBPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD4DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias  void (* PFNGLMULTITEXCOORD4DVARBPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD4FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias  void (* PFNGLMULTITEXCOORD4FVARBPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD4IARBPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias  void (* PFNGLMULTITEXCOORD4IVARBPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD4SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias  void (* PFNGLMULTITEXCOORD4SVARBPROC) (GLenum target, GLshort *v);

//#endif /* GL_ARB_multitexture */



/*
 * 1. GL_EXT_abgr
 */
//#ifndef GL_EXT_abgr
const int GL_EXT_abgr = 1;

const int GL_ABGR_EXT = 0x8000;

//#endif /* GL_EXT_abgr */



/*
 * 2. GL_EXT_blend_color
 */
//#ifndef GL_EXT_blend_color
const int GL_EXT_blend_color = 1;

const int GL_CONSTANT_COLOR_EXT = 0x8001;
const int GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002;
const int GL_CONSTANT_ALPHA_EXT = 0x8003;
const int GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004;
const int GL_BLEND_COLOR_EXT = 0x8005;

void glBlendColorEXT( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );

//#endif /* GL_EXT_blend_color */



/*
 * 3. GL_EXT_polygon_offset
 */
//#ifndef GL_EXT_polygon_offset
const int GL_EXT_polygon_offset = 1;

const int GL_POLYGON_OFFSET_EXT = 0x8037;
const int GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038;
const int GL_POLYGON_OFFSET_BIAS_EXT = 0x8039;

void glPolygonOffsetEXT( GLfloat factor, GLfloat bias );

//#endif /* GL_EXT_polygon_offset */



/*
 * 6. GL_EXT_texture3D
 */
//#ifndef GL_EXT_texture3D
const int GL_EXT_texture3D = 1;

const int GL_PACK_SKIP_IMAGES_EXT = 0x806B;
const int GL_PACK_IMAGE_HEIGHT_EXT = 0x806C;
const int GL_UNPACK_SKIP_IMAGES_EXT = 0x806D;
const int GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806E;
const int GL_TEXTURE_3D_EXT = 0x806F;
const int GL_PROXY_TEXTURE_3D_EXT = 0x8070;
const int GL_TEXTURE_DEPTH_EXT = 0x8071;
const int GL_TEXTURE_WRAP_R_EXT = 0x8072;
const int GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073;
const int GL_TEXTURE_3D_BINDING_EXT = 0x806A;

void glTexImage3DEXT( GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels );

void glTexSubImage3DEXT( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);

void glCopyTexSubImage3DEXT( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height );

//#endif /* GL_EXT_texture3D */



/*
 * 20. GL_EXT_texture_object
 */
//#ifndef GL_EXT_texture_object
const int GL_EXT_texture_object = 1;

const int GL_TEXTURE_PRIORITY_EXT = 0x8066;
const int GL_TEXTURE_RESIDENT_EXT = 0x8067;
const int GL_TEXTURE_1D_BINDING_EXT = 0x8068;
const int GL_TEXTURE_2D_BINDING_EXT = 0x8069;

void glGenTexturesEXT( GLsizei n, GLuint *textures );

void glDeleteTexturesEXT( GLsizei n, GLuint *textures);

void glBindTextureEXT( GLenum target, GLuint texture );

void glPrioritizeTexturesEXT( GLsizei n, GLuint *textures, GLclampf *priorities );

GLboolean glAreTexturesResidentEXT( GLsizei n, GLuint *textures, GLboolean *residences );

GLboolean glIsTextureEXT( GLuint texture );

//#endif /* GL_EXT_texture_object */



/*
 * 27. GL_EXT_rescale_normal
 */
//#ifndef GL_EXT_rescale_normal
const int GL_EXT_rescale_normal = 1;

const int GL_RESCALE_NORMAL_EXT = 0x803A;

//#endif /* GL_EXT_rescale_normal */



/*
 * 30. GL_EXT_vertex_array
 */
//#ifndef GL_EXT_vertex_array
const int GL_EXT_vertex_array = 1;

const int GL_VERTEX_ARRAY_EXT = 0x8074;
const int GL_NORMAL_ARRAY_EXT = 0x8075;
const int GL_COLOR_ARRAY_EXT = 0x8076;
const int GL_INDEX_ARRAY_EXT = 0x8077;
const int GL_TEXTURE_COORD_ARRAY_EXT = 0x8078;
const int GL_EDGE_FLAG_ARRAY_EXT = 0x8079;
const int GL_VERTEX_ARRAY_SIZE_EXT = 0x807A;
const int GL_VERTEX_ARRAY_TYPE_EXT = 0x807B;
const int GL_VERTEX_ARRAY_STRIDE_EXT = 0x807C;
const int GL_VERTEX_ARRAY_COUNT_EXT = 0x807D;
const int GL_NORMAL_ARRAY_TYPE_EXT = 0x807E;
const int GL_NORMAL_ARRAY_STRIDE_EXT = 0x807F;
const int GL_NORMAL_ARRAY_COUNT_EXT = 0x8080;
const int GL_COLOR_ARRAY_SIZE_EXT = 0x8081;
const int GL_COLOR_ARRAY_TYPE_EXT = 0x8082;
const int GL_COLOR_ARRAY_STRIDE_EXT = 0x8083;
const int GL_COLOR_ARRAY_COUNT_EXT = 0x8084;
const int GL_INDEX_ARRAY_TYPE_EXT = 0x8085;
const int GL_INDEX_ARRAY_STRIDE_EXT = 0x8086;
const int GL_INDEX_ARRAY_COUNT_EXT = 0x8087;
const int GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088;
const int GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089;
const int GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A;
const int GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B;
const int GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C;
const int GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D;
const int GL_VERTEX_ARRAY_POINTER_EXT = 0x808E;
const int GL_NORMAL_ARRAY_POINTER_EXT = 0x808F;
const int GL_COLOR_ARRAY_POINTER_EXT = 0x8090;
const int GL_INDEX_ARRAY_POINTER_EXT = 0x8091;
const int GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092;
const int GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093;

void glVertexPointerEXT( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr );

void glNormalPointerEXT( GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr );

void glColorPointerEXT( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr );

void glIndexPointerEXT( GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr );

void glTexCoordPointerEXT( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr );

void glEdgeFlagPointerEXT( GLsizei stride, GLsizei count, GLboolean *ptr );

void glGetPointervEXT( GLenum pname, GLvoid **params );

void glArrayElementEXT( GLint i );

void glDrawArraysEXT( GLenum mode, GLint first, GLsizei count );

//#endif /* GL_EXT_vertex_array */



/*
 * 35. GL_SGIS_texture_edge_clamp
 */
//#ifndef GL_SGIS_texture_edge_clamp
const int GL_SGIS_texture_edge_clamp = 1;

const int GL_CLAMP_TO_EDGE_SGIS = 0x812F;

//#endif /* GL_SGIS_texture_edge_clamp */



/*
 * 37. GL_EXT_blend_minmax
 */
//#ifndef GL_EXT_blend_minmax
const int GL_EXT_blend_minmax = 1;

const int GL_FUNC_ADD_EXT = 0x8006;
const int GL_MIN_EXT = 0x8007;
const int GL_MAX_EXT = 0x8008;
const int GL_BLEND_EQUATION_EXT = 0x8009;

void glBlendEquationEXT( GLenum mode );

//#endif /* GL_EXT_blend_minmax */



/*
 * 38. GL_EXT_blend_subtract (requires GL_EXT_blend_max )
 */
//#ifndef GL_EXT_blend_subtract
const int GL_EXT_blend_subtract = 1;

const int GL_FUNC_SUBTRACT_EXT = 0x800A;
const int GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B;

//#endif /* GL_EXT_blend_subtract */



/*
 * 39. GL_EXT_blend_logic_op
 */
//#ifndef GL_EXT_blend_logic_op
const int GL_EXT_blend_logic_op = 1;

/* No new tokens or functions */

//#endif /* GL_EXT_blend_logic_op */



/*
 * 54. GL_EXT_point_parameters
 */
//#ifndef GL_EXT_point_parameters
const int GL_EXT_point_parameters = 1;

const int GL_POINT_SIZE_MIN_EXT = 0x8126;
const int GL_POINT_SIZE_MAX_EXT = 0x8127;
const int GL_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128;
const int GL_DISTANCE_ATTENUATION_EXT = 0x8129;

void glPointParameterfEXT( GLenum pname, GLfloat param );
void glPointParameterfvEXT( GLenum pname, GLfloat *params );
void glPointParameterfSGIS(GLenum pname, GLfloat param);
void glPointParameterfvSGIS(GLenum pname, GLfloat *params);

//#endif /* GL_EXT_point_parameters */



/*
 * 78. GL_EXT_paletted_texture
 */
//#ifndef GL_EXT_paletted_texture
const int GL_EXT_paletted_texture = 1;

const int GL_TABLE_TOO_LARGE_EXT = 0x8031;
const int GL_COLOR_TABLE_FORMAT_EXT = 0x80D8;
const int GL_COLOR_TABLE_WIDTH_EXT = 0x80D9;
const int GL_COLOR_TABLE_RED_SIZE_EXT = 0x80DA;
const int GL_COLOR_TABLE_GREEN_SIZE_EXT = 0x80DB;
const int GL_COLOR_TABLE_BLUE_SIZE_EXT = 0x80DC;
const int GL_COLOR_TABLE_ALPHA_SIZE_EXT = 0x80DD;
const int GL_COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE;
const int GL_COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF;
const int GL_TEXTURE_INDEX_SIZE_EXT = 0x80ED;
const int GL_COLOR_INDEX1_EXT = 0x80E2;
const int GL_COLOR_INDEX2_EXT = 0x80E3;
const int GL_COLOR_INDEX4_EXT = 0x80E4;
const int GL_COLOR_INDEX8_EXT = 0x80E5;
const int GL_COLOR_INDEX12_EXT = 0x80E6;
const int GL_COLOR_INDEX16_EXT = 0x80E7;

void glColorTableEXT( GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table );

void glColorSubTableEXT( GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data );

void glGetColorTableEXT( GLenum target, GLenum format, GLenum type, GLvoid *table );

void glGetColorTableParameterfvEXT( GLenum target, GLenum pname, GLfloat *params );

void glGetColorTableParameterivEXT( GLenum target, GLenum pname, GLint *params );

//#endif /* GL_EXT_paletted_texture */



/*
 * 79. GL_EXT_clip_volume_hint
 */
//#ifndef GL_EXT_clip_volume_hint
const int GL_EXT_clip_volume_hint = 1;

const int GL_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80F0;

//#endif /* GL_EXT_clip_volume_hint */



/*
 * 97. GL_EXT_compiled_vertex_array
 */
//#ifndef GL_EXT_compiled_vertex_array
const int GL_EXT_compiled_vertex_array = 1;

const int GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8;
const int GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9;

void glLockArraysEXT( GLint first, GLsizei count );
void glUnlockArraysEXT( );

//#endif /* GL_EXT_compiled_vertex_array */

/*
 * 137. GL_HP_occlusion_test
 */
//#ifndef GL_HP_occlusion_test
const int GL_HP_occlusion_test = 1;

const int GL_OCCLUSION_TEST_HP = 0x8165;
const int GL_OCCLUSION_TEST_RESULT_HP = 0x8166;

//#endif /* GL_HP_occlusion_test */


/*
 * 141. GL_EXT_shared_texture_palette (req's GL_EXT_paletted_texture)
 */
//#ifndef GL_EXT_shared_texture_palette
const int GL_EXT_shared_texture_palette = 1;

const int GL_SHARED_TEXTURE_PALETTE_EXT = 0x81FB;

//#endif /* GL_EXT_shared_texture_palette */



/*
 * 176. GL_EXT_stencil_wrap
 */
//#ifndef GL_EXT_stencil_wrap
const int GL_EXT_stencil_wrap = 1;

const int GL_INCR_WRAP_EXT = 0x8507;
const int GL_DECR_WRAP_EXT = 0x8508;

//#endif /* GL_EXT_stencil_wrap */



/*
 * 179. GL_NV_texgen_reflection
 */
//#ifndef GL_NV_texgen_reflection
const int GL_NV_texgen_reflection = 1;

const int GL_NORMAL_MAP_NV = 0x8511;
const int GL_REFLECTION_MAP_NV = 0x8512;

//#endif /* GL_NV_texgen_reflection */



/*
 * 185. GL_EXT_texture_env_add
 */
//#ifndef GL_EXT_texture_env_add
const int GL_EXT_texture_env_add = 1;

/* No new tokens or functions */

//#endif /* GL_EXT_texture_env_add */



/*
 * 197. GL_MESA_window_pos
 */
//#ifndef GL_MESA_window_pos
const int GL_MESA_window_pos = 1;

void glWindowPos2iMESA( GLint x, GLint y );
void glWindowPos2sMESA( GLshort x, GLshort y );
void glWindowPos2fMESA( GLfloat x, GLfloat y );
void glWindowPos2dMESA( GLdouble x, GLdouble y );
void glWindowPos2ivMESA( GLint *p );
void glWindowPos2svMESA( GLshort *p );
void glWindowPos2fvMESA( GLfloat *p );
void glWindowPos2dvMESA( GLdouble *p );
void glWindowPos3iMESA( GLint x, GLint y, GLint z );
void glWindowPos3sMESA( GLshort x, GLshort y, GLshort z );
void glWindowPos3fMESA( GLfloat x, GLfloat y, GLfloat z );
void glWindowPos3dMESA( GLdouble x, GLdouble y, GLdouble z );
void glWindowPos3ivMESA( GLint *p );
void glWindowPos3svMESA( GLshort *p );
void glWindowPos3fvMESA( GLfloat *p );
void glWindowPos3dvMESA( GLdouble *p );
void glWindowPos4iMESA( GLint x, GLint y, GLint z, GLint w );
void glWindowPos4sMESA( GLshort x, GLshort y, GLshort z, GLshort w );
void glWindowPos4fMESA( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
void glWindowPos4dMESA( GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glWindowPos4ivMESA( GLint *p );
void glWindowPos4svMESA( GLshort *p );
void glWindowPos4fvMESA( GLfloat *p );
void glWindowPos4dvMESA( GLdouble *p );

//#endif /* GL_MESA_window_pos */



/*
 * 196. GL_MESA_resize_bufffers
 */
//#ifndef GL_MESA_resize_bufffers
const int GL_MESA_resize_buffers = 1;

void glResizeBuffersMESA( );

//#endif /* GL_MESA_resize_bufffers */



/*
 * 220. GL_EXT_texture_env_dot3
 */
//#ifndef GL_EXT_texture_env_dot3
const int GL_EXT_texture_env_dot3 = 1;

const int GL_DOT3_RGB_EXT = 0x8740;
const int GL_DOT3_RGBA_EXT = 0x8741;

//#endif /* GL_EXT_texture_env_dot3 */


//#else  /* GL_GLEXT_LEGACY */

//#include <GL/glext.h>

//#endif  /* GL_GLEXT_LEGACY */



/*
 * ???. GL_MESA_trace
 * XXX this should go into glext.h at some point
 */
//#ifndef GL_MESA_trace
const int GL_MESA_trace = 1;

const int GL_TRACE_ALL_BITS_MESA = 0xFFFF;
const int GL_TRACE_OPERATIONS_BIT_MESA = 0x0001;
const int GL_TRACE_PRIMITIVES_BIT_MESA = 0x0002;
const int GL_TRACE_ARRAYS_BIT_MESA = 0x0004;
const int GL_TRACE_TEXTURES_BIT_MESA = 0x0008;
const int GL_TRACE_PIXELS_BIT_MESA = 0x0010;
const int GL_TRACE_ERRORS_BIT_MESA = 0x0020;
const int GL_TRACE_MASK_MESA = 0x8755;
const int GL_TRACE_NAME_MESA = 0x8756;

void glEnableTraceMESA( GLbitfield mask );
void glDisableTraceMESA( GLbitfield mask );
void glNewTraceMESA( GLbitfield mask, GLubyte * traceName );
void glEndTraceMESA( );
void glTraceAssertAttribMESA( GLbitfield attribMask );
void glTraceCommentMESA( GLubyte * comment );
void glTraceTextureMESA( GLuint name, GLubyte* comment );
void glTraceListMESA( GLuint name, GLubyte* comment );
void glTracePointerMESA( GLvoid* pointer, GLubyte* comment );
void glTracePointerRangeMESA( GLvoid* first, GLvoid* last, GLubyte* comment );

//#endif /* GL_MESA_trace */


/*
 * ???. GL_MESA_packed_depth_stencil
 * XXX this will be in glext.h someday
 */
//#ifndef GL_MESA_packed_depth_stencil
const int GL_MESA_packed_depth_stencil = 1;

const int GL_DEPTH_STENCIL_MESA = 0x8750;
const int GL_UNSIGNED_INT_24_8_MESA = 0x8751;
const int GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752;
const int GL_UNSIGNED_SHORT_15_1_MESA = 0x8753;
const int GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754;

//#endif /* GL_MESA_packed_depth_stencil */



//#ifndef GL_MESA_ycbcr_texture
const int GL_MESA_ycbcr_texture = 1;

const int GL_YCBCR_MESA = 0x8757;
const int GL_UNSIGNED_SHORT_8_8_MESA = 0x85BA; /* same as Apple */
const int GL_UNSIGNED_SHORT_8_8_REV_MESA = 0x85BB; /* same as Apple */

//#endif /* GL_MESA_texture_ycbcr */



//#ifndef GL_MESA_pack_invert
const int GL_MESA_pack_invert = 1;

const int GL_PACK_INVERT_MESA = 0x8758;

//#endif /* GL_MESA_pack_invert */



//#ifndef GL_APPLE_client_storage
const int GL_APPLE_client_storage = 1;

const int GL_UNPACK_CLIENT_STORAGE_APPLE = 0x85B2;

//#endif /* GL_APPLE_client_storage */



//#ifndef GL_APPLE_ycbcr_422
const int GL_APPLE_ycbcr_422 = 1;

const int GL_YCBCR_422_APPLE = 0x85B9;
const int GL_UNSIGNED_SHORT_8_8_APPLE = 0x85BA;
const int GL_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85BB;

//#endif /* GL_APPLE_ycbcr_422 */


/**********************************************************************
 * Begin system-specific stuff
 */
//#if defined(PRAGMA_EXPORT_SUPPORTED)
//#pragma export off
//#endif

//#if defined(macintosh) && PRAGMA_IMPORT_SUPPORTED
//#pragma import off
//#endif
/*
 * End system-specific stuff
 **********************************************************************/


//#ifdef __cplusplus
}
//#endif

//#endif /* __gl_h_ */
