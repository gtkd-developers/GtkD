/* Converted to D from wrap/cHeaders/GL/gl.hpp by htod */
module wrap/cHeaders/GL/gl;
/*
 * Mesa 3-D graphics library
 * Version:  6.3
 *
 * Copyright (C) 1999-2005  Brian Paul   All Rights Reserved.
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


//C     #ifndef GLAPI
//C     #define GLAPI extern
//C     #endif
alias extern GLAPI;

//C     #ifndef GLAPIENTRY
//C     #define GLAPIENTRY
//C     #endif

//C     #ifndef APIENTRY
//C     #define APIENTRY GLAPIENTRY
//C     #endif
alias GLAPIENTRY APIENTRY;

//C     #ifndef APIENTRYP
//C     #define APIENTRYP APIENTRY *
//C     #endif

//C     #ifndef GLAPIENTRYP
//C     #define GLAPIENTRYP GLAPIENTRY *
//C     #endif

//C     #ifdef CENTERLINE_CLPP
//C     #define signed
//C     #endif

//C     #if defined(PRAGMA_EXPORT_SUPPORTED)
//C     #pragma export on
//C     #endif




//C     #define GL_VERSION_1_1   1
//C     #define GL_VERSION_1_2   1
const GL_VERSION_1_1 = 1;
//C     #define GL_VERSION_1_3   1
const GL_VERSION_1_2 = 1;
//C     #define GL_ARB_imaging   1
const GL_VERSION_1_3 = 1;

const GL_ARB_imaging = 1;

/*
 * Datatypes
 */
//C     typedef unsigned int	GLenum;
extern (C):
alias uint GLenum;
//C     typedef unsigned char	GLboolean;
alias ubyte GLboolean;
//C     typedef unsigned int	GLbitfield;
alias uint GLbitfield;
//C     typedef void		GLvoid;
alias void GLvoid;
//C     typedef signed char	GLbyte;		/* 1-byte signed */
alias sbyte GLbyte;
//C     typedef short		GLshort;	/* 2-byte signed */
alias short GLshort;
//C     typedef int		GLint;		/* 4-byte signed */
alias int GLint;
//C     typedef unsigned char	GLubyte;	/* 1-byte unsigned */
alias ubyte GLubyte;
//C     typedef unsigned short	GLushort;	/* 2-byte unsigned */
alias ushort GLushort;
//C     typedef unsigned int	GLuint;		/* 4-byte unsigned */
alias uint GLuint;
//C     typedef int		GLsizei;	/* 4-byte signed */
alias int GLsizei;
//C     typedef float		GLfloat;	/* single precision float */
alias float GLfloat;
//C     typedef float		GLclampf;	/* single precision float in [0,1] */
alias float GLclampf;
//C     typedef double		GLdouble;	/* double precision float */
alias double GLdouble;
//C     typedef double		GLclampd;	/* double precision float in [0,1] */
alias double GLclampd;



/*
 * Constants
 */

/* Boolean values */
//C     #define GL_FALSE				0x0
//C     #define GL_TRUE					0x1
const GL_FALSE = 0x0;

const GL_TRUE = 0x1;
/* Data types */
//C     #define GL_BYTE					0x1400
//C     #define GL_UNSIGNED_BYTE			0x1401
const GL_BYTE = 0x1400;
//C     #define GL_SHORT				0x1402
const GL_UNSIGNED_BYTE = 0x1401;
//C     #define GL_UNSIGNED_SHORT			0x1403
const GL_SHORT = 0x1402;
//C     #define GL_INT					0x1404
const GL_UNSIGNED_SHORT = 0x1403;
//C     #define GL_UNSIGNED_INT				0x1405
const GL_INT = 0x1404;
//C     #define GL_FLOAT				0x1406
const GL_UNSIGNED_INT = 0x1405;
//C     #define GL_2_BYTES				0x1407
const GL_FLOAT = 0x1406;
//C     #define GL_3_BYTES				0x1408
const GL_2_BYTES = 0x1407;
//C     #define GL_4_BYTES				0x1409
const GL_3_BYTES = 0x1408;
//C     #define GL_DOUBLE				0x140A
const GL_4_BYTES = 0x1409;

const GL_DOUBLE = 0x140A;
/* Primitives */
//C     #define GL_POINTS				0x0000
//C     #define GL_LINES				0x0001
const GL_POINTS = 0x0000;
//C     #define GL_LINE_LOOP				0x0002
const GL_LINES = 0x0001;
//C     #define GL_LINE_STRIP				0x0003
const GL_LINE_LOOP = 0x0002;
//C     #define GL_TRIANGLES				0x0004
const GL_LINE_STRIP = 0x0003;
//C     #define GL_TRIANGLE_STRIP			0x0005
const GL_TRIANGLES = 0x0004;
//C     #define GL_TRIANGLE_FAN				0x0006
const GL_TRIANGLE_STRIP = 0x0005;
//C     #define GL_QUADS				0x0007
const GL_TRIANGLE_FAN = 0x0006;
//C     #define GL_QUAD_STRIP				0x0008
const GL_QUADS = 0x0007;
//C     #define GL_POLYGON				0x0009
const GL_QUAD_STRIP = 0x0008;

const GL_POLYGON = 0x0009;
/* Vertex Arrays */
//C     #define GL_VERTEX_ARRAY				0x8074
//C     #define GL_NORMAL_ARRAY				0x8075
const GL_VERTEX_ARRAY = 0x8074;
//C     #define GL_COLOR_ARRAY				0x8076
const GL_NORMAL_ARRAY = 0x8075;
//C     #define GL_INDEX_ARRAY				0x8077
const GL_COLOR_ARRAY = 0x8076;
//C     #define GL_TEXTURE_COORD_ARRAY			0x8078
const GL_INDEX_ARRAY = 0x8077;
//C     #define GL_EDGE_FLAG_ARRAY			0x8079
const GL_TEXTURE_COORD_ARRAY = 0x8078;
//C     #define GL_VERTEX_ARRAY_SIZE			0x807A
const GL_EDGE_FLAG_ARRAY = 0x8079;
//C     #define GL_VERTEX_ARRAY_TYPE			0x807B
const GL_VERTEX_ARRAY_SIZE = 0x807A;
//C     #define GL_VERTEX_ARRAY_STRIDE			0x807C
const GL_VERTEX_ARRAY_TYPE = 0x807B;
//C     #define GL_NORMAL_ARRAY_TYPE			0x807E
const GL_VERTEX_ARRAY_STRIDE = 0x807C;
//C     #define GL_NORMAL_ARRAY_STRIDE			0x807F
const GL_NORMAL_ARRAY_TYPE = 0x807E;
//C     #define GL_COLOR_ARRAY_SIZE			0x8081
const GL_NORMAL_ARRAY_STRIDE = 0x807F;
//C     #define GL_COLOR_ARRAY_TYPE			0x8082
const GL_COLOR_ARRAY_SIZE = 0x8081;
//C     #define GL_COLOR_ARRAY_STRIDE			0x8083
const GL_COLOR_ARRAY_TYPE = 0x8082;
//C     #define GL_INDEX_ARRAY_TYPE			0x8085
const GL_COLOR_ARRAY_STRIDE = 0x8083;
//C     #define GL_INDEX_ARRAY_STRIDE			0x8086
const GL_INDEX_ARRAY_TYPE = 0x8085;
//C     #define GL_TEXTURE_COORD_ARRAY_SIZE		0x8088
const GL_INDEX_ARRAY_STRIDE = 0x8086;
//C     #define GL_TEXTURE_COORD_ARRAY_TYPE		0x8089
const GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
//C     #define GL_TEXTURE_COORD_ARRAY_STRIDE		0x808A
const GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
//C     #define GL_EDGE_FLAG_ARRAY_STRIDE		0x808C
const GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
//C     #define GL_VERTEX_ARRAY_POINTER			0x808E
const GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
//C     #define GL_NORMAL_ARRAY_POINTER			0x808F
const GL_VERTEX_ARRAY_POINTER = 0x808E;
//C     #define GL_COLOR_ARRAY_POINTER			0x8090
const GL_NORMAL_ARRAY_POINTER = 0x808F;
//C     #define GL_INDEX_ARRAY_POINTER			0x8091
const GL_COLOR_ARRAY_POINTER = 0x8090;
//C     #define GL_TEXTURE_COORD_ARRAY_POINTER		0x8092
const GL_INDEX_ARRAY_POINTER = 0x8091;
//C     #define GL_EDGE_FLAG_ARRAY_POINTER		0x8093
const GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
//C     #define GL_V2F					0x2A20
const GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
//C     #define GL_V3F					0x2A21
const GL_V2F = 0x2A20;
//C     #define GL_C4UB_V2F				0x2A22
const GL_V3F = 0x2A21;
//C     #define GL_C4UB_V3F				0x2A23
const GL_C4UB_V2F = 0x2A22;
//C     #define GL_C3F_V3F				0x2A24
const GL_C4UB_V3F = 0x2A23;
//C     #define GL_N3F_V3F				0x2A25
const GL_C3F_V3F = 0x2A24;
//C     #define GL_C4F_N3F_V3F				0x2A26
const GL_N3F_V3F = 0x2A25;
//C     #define GL_T2F_V3F				0x2A27
const GL_C4F_N3F_V3F = 0x2A26;
//C     #define GL_T4F_V4F				0x2A28
const GL_T2F_V3F = 0x2A27;
//C     #define GL_T2F_C4UB_V3F				0x2A29
const GL_T4F_V4F = 0x2A28;
//C     #define GL_T2F_C3F_V3F				0x2A2A
const GL_T2F_C4UB_V3F = 0x2A29;
//C     #define GL_T2F_N3F_V3F				0x2A2B
const GL_T2F_C3F_V3F = 0x2A2A;
//C     #define GL_T2F_C4F_N3F_V3F			0x2A2C
const GL_T2F_N3F_V3F = 0x2A2B;
//C     #define GL_T4F_C4F_N3F_V4F			0x2A2D
const GL_T2F_C4F_N3F_V3F = 0x2A2C;

const GL_T4F_C4F_N3F_V4F = 0x2A2D;
/* Matrix Mode */
//C     #define GL_MATRIX_MODE				0x0BA0
//C     #define GL_MODELVIEW				0x1700
const GL_MATRIX_MODE = 0x0BA0;
//C     #define GL_PROJECTION				0x1701
const GL_MODELVIEW = 0x1700;
//C     #define GL_TEXTURE				0x1702
const GL_PROJECTION = 0x1701;

const GL_TEXTURE = 0x1702;
/* Points */
//C     #define GL_POINT_SMOOTH				0x0B10
//C     #define GL_POINT_SIZE				0x0B11
const GL_POINT_SMOOTH = 0x0B10;
//C     #define GL_POINT_SIZE_GRANULARITY 		0x0B13
const GL_POINT_SIZE = 0x0B11;
//C     #define GL_POINT_SIZE_RANGE			0x0B12
const GL_POINT_SIZE_GRANULARITY = 0x0B13;

const GL_POINT_SIZE_RANGE = 0x0B12;
/* Lines */
//C     #define GL_LINE_SMOOTH				0x0B20
//C     #define GL_LINE_STIPPLE				0x0B24
const GL_LINE_SMOOTH = 0x0B20;
//C     #define GL_LINE_STIPPLE_PATTERN			0x0B25
const GL_LINE_STIPPLE = 0x0B24;
//C     #define GL_LINE_STIPPLE_REPEAT			0x0B26
const GL_LINE_STIPPLE_PATTERN = 0x0B25;
//C     #define GL_LINE_WIDTH				0x0B21
const GL_LINE_STIPPLE_REPEAT = 0x0B26;
//C     #define GL_LINE_WIDTH_GRANULARITY		0x0B23
const GL_LINE_WIDTH = 0x0B21;
//C     #define GL_LINE_WIDTH_RANGE			0x0B22
const GL_LINE_WIDTH_GRANULARITY = 0x0B23;

const GL_LINE_WIDTH_RANGE = 0x0B22;
/* Polygons */
//C     #define GL_POINT				0x1B00
//C     #define GL_LINE					0x1B01
const GL_POINT = 0x1B00;
//C     #define GL_FILL					0x1B02
const GL_LINE = 0x1B01;
//C     #define GL_CW					0x0900
const GL_FILL = 0x1B02;
//C     #define GL_CCW					0x0901
const GL_CW = 0x0900;
//C     #define GL_FRONT				0x0404
const GL_CCW = 0x0901;
//C     #define GL_BACK					0x0405
const GL_FRONT = 0x0404;
//C     #define GL_POLYGON_MODE				0x0B40
const GL_BACK = 0x0405;
//C     #define GL_POLYGON_SMOOTH			0x0B41
const GL_POLYGON_MODE = 0x0B40;
//C     #define GL_POLYGON_STIPPLE			0x0B42
const GL_POLYGON_SMOOTH = 0x0B41;
//C     #define GL_EDGE_FLAG				0x0B43
const GL_POLYGON_STIPPLE = 0x0B42;
//C     #define GL_CULL_FACE				0x0B44
const GL_EDGE_FLAG = 0x0B43;
//C     #define GL_CULL_FACE_MODE			0x0B45
const GL_CULL_FACE = 0x0B44;
//C     #define GL_FRONT_FACE				0x0B46
const GL_CULL_FACE_MODE = 0x0B45;
//C     #define GL_POLYGON_OFFSET_FACTOR		0x8038
const GL_FRONT_FACE = 0x0B46;
//C     #define GL_POLYGON_OFFSET_UNITS			0x2A00
const GL_POLYGON_OFFSET_FACTOR = 0x8038;
//C     #define GL_POLYGON_OFFSET_POINT			0x2A01
const GL_POLYGON_OFFSET_UNITS = 0x2A00;
//C     #define GL_POLYGON_OFFSET_LINE			0x2A02
const GL_POLYGON_OFFSET_POINT = 0x2A01;
//C     #define GL_POLYGON_OFFSET_FILL			0x8037
const GL_POLYGON_OFFSET_LINE = 0x2A02;

const GL_POLYGON_OFFSET_FILL = 0x8037;
/* Display Lists */
//C     #define GL_COMPILE				0x1300
//C     #define GL_COMPILE_AND_EXECUTE			0x1301
const GL_COMPILE = 0x1300;
//C     #define GL_LIST_BASE				0x0B32
const GL_COMPILE_AND_EXECUTE = 0x1301;
//C     #define GL_LIST_INDEX				0x0B33
const GL_LIST_BASE = 0x0B32;
//C     #define GL_LIST_MODE				0x0B30
const GL_LIST_INDEX = 0x0B33;

const GL_LIST_MODE = 0x0B30;
/* Depth buffer */
//C     #define GL_NEVER				0x0200
//C     #define GL_LESS					0x0201
const GL_NEVER = 0x0200;
//C     #define GL_EQUAL				0x0202
const GL_LESS = 0x0201;
//C     #define GL_LEQUAL				0x0203
const GL_EQUAL = 0x0202;
//C     #define GL_GREATER				0x0204
const GL_LEQUAL = 0x0203;
//C     #define GL_NOTEQUAL				0x0205
const GL_GREATER = 0x0204;
//C     #define GL_GEQUAL				0x0206
const GL_NOTEQUAL = 0x0205;
//C     #define GL_ALWAYS				0x0207
const GL_GEQUAL = 0x0206;
//C     #define GL_DEPTH_TEST				0x0B71
const GL_ALWAYS = 0x0207;
//C     #define GL_DEPTH_BITS				0x0D56
const GL_DEPTH_TEST = 0x0B71;
//C     #define GL_DEPTH_CLEAR_VALUE			0x0B73
const GL_DEPTH_BITS = 0x0D56;
//C     #define GL_DEPTH_FUNC				0x0B74
const GL_DEPTH_CLEAR_VALUE = 0x0B73;
//C     #define GL_DEPTH_RANGE				0x0B70
const GL_DEPTH_FUNC = 0x0B74;
//C     #define GL_DEPTH_WRITEMASK			0x0B72
const GL_DEPTH_RANGE = 0x0B70;
//C     #define GL_DEPTH_COMPONENT			0x1902
const GL_DEPTH_WRITEMASK = 0x0B72;

const GL_DEPTH_COMPONENT = 0x1902;
/* Lighting */
//C     #define GL_LIGHTING				0x0B50
//C     #define GL_LIGHT0				0x4000
const GL_LIGHTING = 0x0B50;
//C     #define GL_LIGHT1				0x4001
const GL_LIGHT0 = 0x4000;
//C     #define GL_LIGHT2				0x4002
const GL_LIGHT1 = 0x4001;
//C     #define GL_LIGHT3				0x4003
const GL_LIGHT2 = 0x4002;
//C     #define GL_LIGHT4				0x4004
const GL_LIGHT3 = 0x4003;
//C     #define GL_LIGHT5				0x4005
const GL_LIGHT4 = 0x4004;
//C     #define GL_LIGHT6				0x4006
const GL_LIGHT5 = 0x4005;
//C     #define GL_LIGHT7				0x4007
const GL_LIGHT6 = 0x4006;
//C     #define GL_SPOT_EXPONENT			0x1205
const GL_LIGHT7 = 0x4007;
//C     #define GL_SPOT_CUTOFF				0x1206
const GL_SPOT_EXPONENT = 0x1205;
//C     #define GL_CONSTANT_ATTENUATION			0x1207
const GL_SPOT_CUTOFF = 0x1206;
//C     #define GL_LINEAR_ATTENUATION			0x1208
const GL_CONSTANT_ATTENUATION = 0x1207;
//C     #define GL_QUADRATIC_ATTENUATION		0x1209
const GL_LINEAR_ATTENUATION = 0x1208;
//C     #define GL_AMBIENT				0x1200
const GL_QUADRATIC_ATTENUATION = 0x1209;
//C     #define GL_DIFFUSE				0x1201
const GL_AMBIENT = 0x1200;
//C     #define GL_SPECULAR				0x1202
const GL_DIFFUSE = 0x1201;
//C     #define GL_SHININESS				0x1601
const GL_SPECULAR = 0x1202;
//C     #define GL_EMISSION				0x1600
const GL_SHININESS = 0x1601;
//C     #define GL_POSITION				0x1203
const GL_EMISSION = 0x1600;
//C     #define GL_SPOT_DIRECTION			0x1204
const GL_POSITION = 0x1203;
//C     #define GL_AMBIENT_AND_DIFFUSE			0x1602
const GL_SPOT_DIRECTION = 0x1204;
//C     #define GL_COLOR_INDEXES			0x1603
const GL_AMBIENT_AND_DIFFUSE = 0x1602;
//C     #define GL_LIGHT_MODEL_TWO_SIDE			0x0B52
const GL_COLOR_INDEXES = 0x1603;
//C     #define GL_LIGHT_MODEL_LOCAL_VIEWER		0x0B51
const GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
//C     #define GL_LIGHT_MODEL_AMBIENT			0x0B53
const GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
//C     #define GL_FRONT_AND_BACK			0x0408
const GL_LIGHT_MODEL_AMBIENT = 0x0B53;
//C     #define GL_SHADE_MODEL				0x0B54
const GL_FRONT_AND_BACK = 0x0408;
//C     #define GL_FLAT					0x1D00
const GL_SHADE_MODEL = 0x0B54;
//C     #define GL_SMOOTH				0x1D01
const GL_FLAT = 0x1D00;
//C     #define GL_COLOR_MATERIAL			0x0B57
const GL_SMOOTH = 0x1D01;
//C     #define GL_COLOR_MATERIAL_FACE			0x0B55
const GL_COLOR_MATERIAL = 0x0B57;
//C     #define GL_COLOR_MATERIAL_PARAMETER		0x0B56
const GL_COLOR_MATERIAL_FACE = 0x0B55;
//C     #define GL_NORMALIZE				0x0BA1
const GL_COLOR_MATERIAL_PARAMETER = 0x0B56;

const GL_NORMALIZE = 0x0BA1;
/* User clipping planes */
//C     #define GL_CLIP_PLANE0				0x3000
//C     #define GL_CLIP_PLANE1				0x3001
const GL_CLIP_PLANE0 = 0x3000;
//C     #define GL_CLIP_PLANE2				0x3002
const GL_CLIP_PLANE1 = 0x3001;
//C     #define GL_CLIP_PLANE3				0x3003
const GL_CLIP_PLANE2 = 0x3002;
//C     #define GL_CLIP_PLANE4				0x3004
const GL_CLIP_PLANE3 = 0x3003;
//C     #define GL_CLIP_PLANE5				0x3005
const GL_CLIP_PLANE4 = 0x3004;

const GL_CLIP_PLANE5 = 0x3005;
/* Accumulation buffer */
//C     #define GL_ACCUM_RED_BITS			0x0D58
//C     #define GL_ACCUM_GREEN_BITS			0x0D59
const GL_ACCUM_RED_BITS = 0x0D58;
//C     #define GL_ACCUM_BLUE_BITS			0x0D5A
const GL_ACCUM_GREEN_BITS = 0x0D59;
//C     #define GL_ACCUM_ALPHA_BITS			0x0D5B
const GL_ACCUM_BLUE_BITS = 0x0D5A;
//C     #define GL_ACCUM_CLEAR_VALUE			0x0B80
const GL_ACCUM_ALPHA_BITS = 0x0D5B;
//C     #define GL_ACCUM				0x0100
const GL_ACCUM_CLEAR_VALUE = 0x0B80;
//C     #define GL_ADD					0x0104
const GL_ACCUM = 0x0100;
//C     #define GL_LOAD					0x0101
const GL_ADD = 0x0104;
//C     #define GL_MULT					0x0103
const GL_LOAD = 0x0101;
//C     #define GL_RETURN				0x0102
const GL_MULT = 0x0103;

const GL_RETURN = 0x0102;
/* Alpha testing */
//C     #define GL_ALPHA_TEST				0x0BC0
//C     #define GL_ALPHA_TEST_REF			0x0BC2
const GL_ALPHA_TEST = 0x0BC0;
//C     #define GL_ALPHA_TEST_FUNC			0x0BC1
const GL_ALPHA_TEST_REF = 0x0BC2;

const GL_ALPHA_TEST_FUNC = 0x0BC1;
/* Blending */
//C     #define GL_BLEND				0x0BE2
//C     #define GL_BLEND_SRC				0x0BE1
const GL_BLEND = 0x0BE2;
//C     #define GL_BLEND_DST				0x0BE0
const GL_BLEND_SRC = 0x0BE1;
//C     #define GL_ZERO					0x0
const GL_BLEND_DST = 0x0BE0;
//C     #define GL_ONE					0x1
const GL_ZERO = 0x0;
//C     #define GL_SRC_COLOR				0x0300
const GL_ONE = 0x1;
//C     #define GL_ONE_MINUS_SRC_COLOR			0x0301
const GL_SRC_COLOR = 0x0300;
//C     #define GL_SRC_ALPHA				0x0302
const GL_ONE_MINUS_SRC_COLOR = 0x0301;
//C     #define GL_ONE_MINUS_SRC_ALPHA			0x0303
const GL_SRC_ALPHA = 0x0302;
//C     #define GL_DST_ALPHA				0x0304
const GL_ONE_MINUS_SRC_ALPHA = 0x0303;
//C     #define GL_ONE_MINUS_DST_ALPHA			0x0305
const GL_DST_ALPHA = 0x0304;
//C     #define GL_DST_COLOR				0x0306
const GL_ONE_MINUS_DST_ALPHA = 0x0305;
//C     #define GL_ONE_MINUS_DST_COLOR			0x0307
const GL_DST_COLOR = 0x0306;
//C     #define GL_SRC_ALPHA_SATURATE			0x0308
const GL_ONE_MINUS_DST_COLOR = 0x0307;

const GL_SRC_ALPHA_SATURATE = 0x0308;
/* Render Mode */
//C     #define GL_FEEDBACK				0x1C01
//C     #define GL_RENDER				0x1C00
const GL_FEEDBACK = 0x1C01;
//C     #define GL_SELECT				0x1C02
const GL_RENDER = 0x1C00;

const GL_SELECT = 0x1C02;
/* Feedback */
//C     #define GL_2D					0x0600
//C     #define GL_3D					0x0601
const GL_2D = 0x0600;
//C     #define GL_3D_COLOR				0x0602
const GL_3D = 0x0601;
//C     #define GL_3D_COLOR_TEXTURE			0x0603
const GL_3D_COLOR = 0x0602;
//C     #define GL_4D_COLOR_TEXTURE			0x0604
const GL_3D_COLOR_TEXTURE = 0x0603;
//C     #define GL_POINT_TOKEN				0x0701
const GL_4D_COLOR_TEXTURE = 0x0604;
//C     #define GL_LINE_TOKEN				0x0702
const GL_POINT_TOKEN = 0x0701;
//C     #define GL_LINE_RESET_TOKEN			0x0707
const GL_LINE_TOKEN = 0x0702;
//C     #define GL_POLYGON_TOKEN			0x0703
const GL_LINE_RESET_TOKEN = 0x0707;
//C     #define GL_BITMAP_TOKEN				0x0704
const GL_POLYGON_TOKEN = 0x0703;
//C     #define GL_DRAW_PIXEL_TOKEN			0x0705
const GL_BITMAP_TOKEN = 0x0704;
//C     #define GL_COPY_PIXEL_TOKEN			0x0706
const GL_DRAW_PIXEL_TOKEN = 0x0705;
//C     #define GL_PASS_THROUGH_TOKEN			0x0700
const GL_COPY_PIXEL_TOKEN = 0x0706;
//C     #define GL_FEEDBACK_BUFFER_POINTER		0x0DF0
const GL_PASS_THROUGH_TOKEN = 0x0700;
//C     #define GL_FEEDBACK_BUFFER_SIZE			0x0DF1
const GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
//C     #define GL_FEEDBACK_BUFFER_TYPE			0x0DF2
const GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;

const GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;
/* Selection */
//C     #define GL_SELECTION_BUFFER_POINTER		0x0DF3
//C     #define GL_SELECTION_BUFFER_SIZE		0x0DF4
const GL_SELECTION_BUFFER_POINTER = 0x0DF3;

const GL_SELECTION_BUFFER_SIZE = 0x0DF4;
/* Fog */
//C     #define GL_FOG					0x0B60
//C     #define GL_FOG_MODE				0x0B65
const GL_FOG = 0x0B60;
//C     #define GL_FOG_DENSITY				0x0B62
const GL_FOG_MODE = 0x0B65;
//C     #define GL_FOG_COLOR				0x0B66
const GL_FOG_DENSITY = 0x0B62;
//C     #define GL_FOG_INDEX				0x0B61
const GL_FOG_COLOR = 0x0B66;
//C     #define GL_FOG_START				0x0B63
const GL_FOG_INDEX = 0x0B61;
//C     #define GL_FOG_END				0x0B64
const GL_FOG_START = 0x0B63;
//C     #define GL_LINEAR				0x2601
const GL_FOG_END = 0x0B64;
//C     #define GL_EXP					0x0800
const GL_LINEAR = 0x2601;
//C     #define GL_EXP2					0x0801
const GL_EXP = 0x0800;

const GL_EXP2 = 0x0801;
/* Logic Ops */
//C     #define GL_LOGIC_OP				0x0BF1
//C     #define GL_INDEX_LOGIC_OP			0x0BF1
const GL_LOGIC_OP = 0x0BF1;
//C     #define GL_COLOR_LOGIC_OP			0x0BF2
const GL_INDEX_LOGIC_OP = 0x0BF1;
//C     #define GL_LOGIC_OP_MODE			0x0BF0
const GL_COLOR_LOGIC_OP = 0x0BF2;
//C     #define GL_CLEAR				0x1500
const GL_LOGIC_OP_MODE = 0x0BF0;
//C     #define GL_SET					0x150F
const GL_CLEAR = 0x1500;
//C     #define GL_COPY					0x1503
const GL_SET = 0x150F;
//C     #define GL_COPY_INVERTED			0x150C
const GL_COPY = 0x1503;
//C     #define GL_NOOP					0x1505
const GL_COPY_INVERTED = 0x150C;
//C     #define GL_INVERT				0x150A
const GL_NOOP = 0x1505;
//C     #define GL_AND					0x1501
const GL_INVERT = 0x150A;
//C     #define GL_NAND					0x150E
const GL_AND = 0x1501;
//C     #define GL_OR					0x1507
const GL_NAND = 0x150E;
//C     #define GL_NOR					0x1508
const GL_OR = 0x1507;
//C     #define GL_XOR					0x1506
const GL_NOR = 0x1508;
//C     #define GL_EQUIV				0x1509
const GL_XOR = 0x1506;
//C     #define GL_AND_REVERSE				0x1502
const GL_EQUIV = 0x1509;
//C     #define GL_AND_INVERTED				0x1504
const GL_AND_REVERSE = 0x1502;
//C     #define GL_OR_REVERSE				0x150B
const GL_AND_INVERTED = 0x1504;
//C     #define GL_OR_INVERTED				0x150D
const GL_OR_REVERSE = 0x150B;

const GL_OR_INVERTED = 0x150D;
/* Stencil */
//C     #define GL_STENCIL_TEST				0x0B90
//C     #define GL_STENCIL_WRITEMASK			0x0B98
const GL_STENCIL_TEST = 0x0B90;
//C     #define GL_STENCIL_BITS				0x0D57
const GL_STENCIL_WRITEMASK = 0x0B98;
//C     #define GL_STENCIL_FUNC				0x0B92
const GL_STENCIL_BITS = 0x0D57;
//C     #define GL_STENCIL_VALUE_MASK			0x0B93
const GL_STENCIL_FUNC = 0x0B92;
//C     #define GL_STENCIL_REF				0x0B97
const GL_STENCIL_VALUE_MASK = 0x0B93;
//C     #define GL_STENCIL_FAIL				0x0B94
const GL_STENCIL_REF = 0x0B97;
//C     #define GL_STENCIL_PASS_DEPTH_PASS		0x0B96
const GL_STENCIL_FAIL = 0x0B94;
//C     #define GL_STENCIL_PASS_DEPTH_FAIL		0x0B95
const GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
//C     #define GL_STENCIL_CLEAR_VALUE			0x0B91
const GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
//C     #define GL_STENCIL_INDEX			0x1901
const GL_STENCIL_CLEAR_VALUE = 0x0B91;
//C     #define GL_KEEP					0x1E00
const GL_STENCIL_INDEX = 0x1901;
//C     #define GL_REPLACE				0x1E01
const GL_KEEP = 0x1E00;
//C     #define GL_INCR					0x1E02
const GL_REPLACE = 0x1E01;
//C     #define GL_DECR					0x1E03
const GL_INCR = 0x1E02;

const GL_DECR = 0x1E03;
/* Buffers, Pixel Drawing/Reading */
//C     #define GL_NONE					0x0
//C     #define GL_LEFT					0x0406
const GL_NONE = 0x0;
//C     #define GL_RIGHT				0x0407
const GL_LEFT = 0x0406;
/*GL_FRONT					0x0404 */
const GL_RIGHT = 0x0407;
/*GL_BACK					0x0405 */
/*GL_FRONT_AND_BACK				0x0408 */
//C     #define GL_FRONT_LEFT				0x0400
//C     #define GL_FRONT_RIGHT				0x0401
const GL_FRONT_LEFT = 0x0400;
//C     #define GL_BACK_LEFT				0x0402
const GL_FRONT_RIGHT = 0x0401;
//C     #define GL_BACK_RIGHT				0x0403
const GL_BACK_LEFT = 0x0402;
//C     #define GL_AUX0					0x0409
const GL_BACK_RIGHT = 0x0403;
//C     #define GL_AUX1					0x040A
const GL_AUX0 = 0x0409;
//C     #define GL_AUX2					0x040B
const GL_AUX1 = 0x040A;
//C     #define GL_AUX3					0x040C
const GL_AUX2 = 0x040B;
//C     #define GL_COLOR_INDEX				0x1900
const GL_AUX3 = 0x040C;
//C     #define GL_RED					0x1903
const GL_COLOR_INDEX = 0x1900;
//C     #define GL_GREEN				0x1904
const GL_RED = 0x1903;
//C     #define GL_BLUE					0x1905
const GL_GREEN = 0x1904;
//C     #define GL_ALPHA				0x1906
const GL_BLUE = 0x1905;
//C     #define GL_LUMINANCE				0x1909
const GL_ALPHA = 0x1906;
//C     #define GL_LUMINANCE_ALPHA			0x190A
const GL_LUMINANCE = 0x1909;
//C     #define GL_ALPHA_BITS				0x0D55
const GL_LUMINANCE_ALPHA = 0x190A;
//C     #define GL_RED_BITS				0x0D52
const GL_ALPHA_BITS = 0x0D55;
//C     #define GL_GREEN_BITS				0x0D53
const GL_RED_BITS = 0x0D52;
//C     #define GL_BLUE_BITS				0x0D54
const GL_GREEN_BITS = 0x0D53;
//C     #define GL_INDEX_BITS				0x0D51
const GL_BLUE_BITS = 0x0D54;
//C     #define GL_SUBPIXEL_BITS			0x0D50
const GL_INDEX_BITS = 0x0D51;
//C     #define GL_AUX_BUFFERS				0x0C00
const GL_SUBPIXEL_BITS = 0x0D50;
//C     #define GL_READ_BUFFER				0x0C02
const GL_AUX_BUFFERS = 0x0C00;
//C     #define GL_DRAW_BUFFER				0x0C01
const GL_READ_BUFFER = 0x0C02;
//C     #define GL_DOUBLEBUFFER				0x0C32
const GL_DRAW_BUFFER = 0x0C01;
//C     #define GL_STEREO				0x0C33
const GL_DOUBLEBUFFER = 0x0C32;
//C     #define GL_BITMAP				0x1A00
const GL_STEREO = 0x0C33;
//C     #define GL_COLOR				0x1800
const GL_BITMAP = 0x1A00;
//C     #define GL_DEPTH				0x1801
const GL_COLOR = 0x1800;
//C     #define GL_STENCIL				0x1802
const GL_DEPTH = 0x1801;
//C     #define GL_DITHER				0x0BD0
const GL_STENCIL = 0x1802;
//C     #define GL_RGB					0x1907
const GL_DITHER = 0x0BD0;
//C     #define GL_RGBA					0x1908
const GL_RGB = 0x1907;

const GL_RGBA = 0x1908;
/* Implementation limits */
//C     #define GL_MAX_LIST_NESTING			0x0B31
//C     #define GL_MAX_ATTRIB_STACK_DEPTH		0x0D35
const GL_MAX_LIST_NESTING = 0x0B31;
//C     #define GL_MAX_MODELVIEW_STACK_DEPTH		0x0D36
const GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
//C     #define GL_MAX_NAME_STACK_DEPTH			0x0D37
const GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
//C     #define GL_MAX_PROJECTION_STACK_DEPTH		0x0D38
const GL_MAX_NAME_STACK_DEPTH = 0x0D37;
//C     #define GL_MAX_TEXTURE_STACK_DEPTH		0x0D39
const GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
//C     #define GL_MAX_EVAL_ORDER			0x0D30
const GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
//C     #define GL_MAX_LIGHTS				0x0D31
const GL_MAX_EVAL_ORDER = 0x0D30;
//C     #define GL_MAX_CLIP_PLANES			0x0D32
const GL_MAX_LIGHTS = 0x0D31;
//C     #define GL_MAX_TEXTURE_SIZE			0x0D33
const GL_MAX_CLIP_PLANES = 0x0D32;
//C     #define GL_MAX_PIXEL_MAP_TABLE			0x0D34
const GL_MAX_TEXTURE_SIZE = 0x0D33;
//C     #define GL_MAX_VIEWPORT_DIMS			0x0D3A
const GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
//C     #define GL_MAX_CLIENT_ATTRIB_STACK_DEPTH	0x0D3B
const GL_MAX_VIEWPORT_DIMS = 0x0D3A;

const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;
/* Gets */
//C     #define GL_ATTRIB_STACK_DEPTH			0x0BB0
//C     #define GL_CLIENT_ATTRIB_STACK_DEPTH		0x0BB1
const GL_ATTRIB_STACK_DEPTH = 0x0BB0;
//C     #define GL_COLOR_CLEAR_VALUE			0x0C22
const GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
//C     #define GL_COLOR_WRITEMASK			0x0C23
const GL_COLOR_CLEAR_VALUE = 0x0C22;
//C     #define GL_CURRENT_INDEX			0x0B01
const GL_COLOR_WRITEMASK = 0x0C23;
//C     #define GL_CURRENT_COLOR			0x0B00
const GL_CURRENT_INDEX = 0x0B01;
//C     #define GL_CURRENT_NORMAL			0x0B02
const GL_CURRENT_COLOR = 0x0B00;
//C     #define GL_CURRENT_RASTER_COLOR			0x0B04
const GL_CURRENT_NORMAL = 0x0B02;
//C     #define GL_CURRENT_RASTER_DISTANCE		0x0B09
const GL_CURRENT_RASTER_COLOR = 0x0B04;
//C     #define GL_CURRENT_RASTER_INDEX			0x0B05
const GL_CURRENT_RASTER_DISTANCE = 0x0B09;
//C     #define GL_CURRENT_RASTER_POSITION		0x0B07
const GL_CURRENT_RASTER_INDEX = 0x0B05;
//C     #define GL_CURRENT_RASTER_TEXTURE_COORDS	0x0B06
const GL_CURRENT_RASTER_POSITION = 0x0B07;
//C     #define GL_CURRENT_RASTER_POSITION_VALID	0x0B08
const GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
//C     #define GL_CURRENT_TEXTURE_COORDS		0x0B03
const GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
//C     #define GL_INDEX_CLEAR_VALUE			0x0C20
const GL_CURRENT_TEXTURE_COORDS = 0x0B03;
//C     #define GL_INDEX_MODE				0x0C30
const GL_INDEX_CLEAR_VALUE = 0x0C20;
//C     #define GL_INDEX_WRITEMASK			0x0C21
const GL_INDEX_MODE = 0x0C30;
//C     #define GL_MODELVIEW_MATRIX			0x0BA6
const GL_INDEX_WRITEMASK = 0x0C21;
//C     #define GL_MODELVIEW_STACK_DEPTH		0x0BA3
const GL_MODELVIEW_MATRIX = 0x0BA6;
//C     #define GL_NAME_STACK_DEPTH			0x0D70
const GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
//C     #define GL_PROJECTION_MATRIX			0x0BA7
const GL_NAME_STACK_DEPTH = 0x0D70;
//C     #define GL_PROJECTION_STACK_DEPTH		0x0BA4
const GL_PROJECTION_MATRIX = 0x0BA7;
//C     #define GL_RENDER_MODE				0x0C40
const GL_PROJECTION_STACK_DEPTH = 0x0BA4;
//C     #define GL_RGBA_MODE				0x0C31
const GL_RENDER_MODE = 0x0C40;
//C     #define GL_TEXTURE_MATRIX			0x0BA8
const GL_RGBA_MODE = 0x0C31;
//C     #define GL_TEXTURE_STACK_DEPTH			0x0BA5
const GL_TEXTURE_MATRIX = 0x0BA8;
//C     #define GL_VIEWPORT				0x0BA2
const GL_TEXTURE_STACK_DEPTH = 0x0BA5;

const GL_VIEWPORT = 0x0BA2;
/* Evaluators */
//C     #define GL_AUTO_NORMAL				0x0D80
//C     #define GL_MAP1_COLOR_4				0x0D90
const GL_AUTO_NORMAL = 0x0D80;
//C     #define GL_MAP1_INDEX				0x0D91
const GL_MAP1_COLOR_4 = 0x0D90;
//C     #define GL_MAP1_NORMAL				0x0D92
const GL_MAP1_INDEX = 0x0D91;
//C     #define GL_MAP1_TEXTURE_COORD_1			0x0D93
const GL_MAP1_NORMAL = 0x0D92;
//C     #define GL_MAP1_TEXTURE_COORD_2			0x0D94
const GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
//C     #define GL_MAP1_TEXTURE_COORD_3			0x0D95
const GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
//C     #define GL_MAP1_TEXTURE_COORD_4			0x0D96
const GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
//C     #define GL_MAP1_VERTEX_3			0x0D97
const GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
//C     #define GL_MAP1_VERTEX_4			0x0D98
const GL_MAP1_VERTEX_3 = 0x0D97;
//C     #define GL_MAP2_COLOR_4				0x0DB0
const GL_MAP1_VERTEX_4 = 0x0D98;
//C     #define GL_MAP2_INDEX				0x0DB1
const GL_MAP2_COLOR_4 = 0x0DB0;
//C     #define GL_MAP2_NORMAL				0x0DB2
const GL_MAP2_INDEX = 0x0DB1;
//C     #define GL_MAP2_TEXTURE_COORD_1			0x0DB3
const GL_MAP2_NORMAL = 0x0DB2;
//C     #define GL_MAP2_TEXTURE_COORD_2			0x0DB4
const GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
//C     #define GL_MAP2_TEXTURE_COORD_3			0x0DB5
const GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
//C     #define GL_MAP2_TEXTURE_COORD_4			0x0DB6
const GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
//C     #define GL_MAP2_VERTEX_3			0x0DB7
const GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
//C     #define GL_MAP2_VERTEX_4			0x0DB8
const GL_MAP2_VERTEX_3 = 0x0DB7;
//C     #define GL_MAP1_GRID_DOMAIN			0x0DD0
const GL_MAP2_VERTEX_4 = 0x0DB8;
//C     #define GL_MAP1_GRID_SEGMENTS			0x0DD1
const GL_MAP1_GRID_DOMAIN = 0x0DD0;
//C     #define GL_MAP2_GRID_DOMAIN			0x0DD2
const GL_MAP1_GRID_SEGMENTS = 0x0DD1;
//C     #define GL_MAP2_GRID_SEGMENTS			0x0DD3
const GL_MAP2_GRID_DOMAIN = 0x0DD2;
//C     #define GL_COEFF				0x0A00
const GL_MAP2_GRID_SEGMENTS = 0x0DD3;
//C     #define GL_DOMAIN				0x0A02
const GL_COEFF = 0x0A00;
//C     #define GL_ORDER				0x0A01
const GL_DOMAIN = 0x0A02;

const GL_ORDER = 0x0A01;
/* Hints */
//C     #define GL_FOG_HINT				0x0C54
//C     #define GL_LINE_SMOOTH_HINT			0x0C52
const GL_FOG_HINT = 0x0C54;
//C     #define GL_PERSPECTIVE_CORRECTION_HINT		0x0C50
const GL_LINE_SMOOTH_HINT = 0x0C52;
//C     #define GL_POINT_SMOOTH_HINT			0x0C51
const GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
//C     #define GL_POLYGON_SMOOTH_HINT			0x0C53
const GL_POINT_SMOOTH_HINT = 0x0C51;
//C     #define GL_DONT_CARE				0x1100
const GL_POLYGON_SMOOTH_HINT = 0x0C53;
//C     #define GL_FASTEST				0x1101
const GL_DONT_CARE = 0x1100;
//C     #define GL_NICEST				0x1102
const GL_FASTEST = 0x1101;

const GL_NICEST = 0x1102;
/* Scissor box */
//C     #define GL_SCISSOR_TEST				0x0C11
//C     #define GL_SCISSOR_BOX				0x0C10
const GL_SCISSOR_TEST = 0x0C11;

const GL_SCISSOR_BOX = 0x0C10;
/* Pixel Mode / Transfer */
//C     #define GL_MAP_COLOR				0x0D10
//C     #define GL_MAP_STENCIL				0x0D11
const GL_MAP_COLOR = 0x0D10;
//C     #define GL_INDEX_SHIFT				0x0D12
const GL_MAP_STENCIL = 0x0D11;
//C     #define GL_INDEX_OFFSET				0x0D13
const GL_INDEX_SHIFT = 0x0D12;
//C     #define GL_RED_SCALE				0x0D14
const GL_INDEX_OFFSET = 0x0D13;
//C     #define GL_RED_BIAS				0x0D15
const GL_RED_SCALE = 0x0D14;
//C     #define GL_GREEN_SCALE				0x0D18
const GL_RED_BIAS = 0x0D15;
//C     #define GL_GREEN_BIAS				0x0D19
const GL_GREEN_SCALE = 0x0D18;
//C     #define GL_BLUE_SCALE				0x0D1A
const GL_GREEN_BIAS = 0x0D19;
//C     #define GL_BLUE_BIAS				0x0D1B
const GL_BLUE_SCALE = 0x0D1A;
//C     #define GL_ALPHA_SCALE				0x0D1C
const GL_BLUE_BIAS = 0x0D1B;
//C     #define GL_ALPHA_BIAS				0x0D1D
const GL_ALPHA_SCALE = 0x0D1C;
//C     #define GL_DEPTH_SCALE				0x0D1E
const GL_ALPHA_BIAS = 0x0D1D;
//C     #define GL_DEPTH_BIAS				0x0D1F
const GL_DEPTH_SCALE = 0x0D1E;
//C     #define GL_PIXEL_MAP_S_TO_S_SIZE		0x0CB1
const GL_DEPTH_BIAS = 0x0D1F;
//C     #define GL_PIXEL_MAP_I_TO_I_SIZE		0x0CB0
const GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
//C     #define GL_PIXEL_MAP_I_TO_R_SIZE		0x0CB2
const GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
//C     #define GL_PIXEL_MAP_I_TO_G_SIZE		0x0CB3
const GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
//C     #define GL_PIXEL_MAP_I_TO_B_SIZE		0x0CB4
const GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
//C     #define GL_PIXEL_MAP_I_TO_A_SIZE		0x0CB5
const GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
//C     #define GL_PIXEL_MAP_R_TO_R_SIZE		0x0CB6
const GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
//C     #define GL_PIXEL_MAP_G_TO_G_SIZE		0x0CB7
const GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
//C     #define GL_PIXEL_MAP_B_TO_B_SIZE		0x0CB8
const GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
//C     #define GL_PIXEL_MAP_A_TO_A_SIZE		0x0CB9
const GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
//C     #define GL_PIXEL_MAP_S_TO_S			0x0C71
const GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
//C     #define GL_PIXEL_MAP_I_TO_I			0x0C70
const GL_PIXEL_MAP_S_TO_S = 0x0C71;
//C     #define GL_PIXEL_MAP_I_TO_R			0x0C72
const GL_PIXEL_MAP_I_TO_I = 0x0C70;
//C     #define GL_PIXEL_MAP_I_TO_G			0x0C73
const GL_PIXEL_MAP_I_TO_R = 0x0C72;
//C     #define GL_PIXEL_MAP_I_TO_B			0x0C74
const GL_PIXEL_MAP_I_TO_G = 0x0C73;
//C     #define GL_PIXEL_MAP_I_TO_A			0x0C75
const GL_PIXEL_MAP_I_TO_B = 0x0C74;
//C     #define GL_PIXEL_MAP_R_TO_R			0x0C76
const GL_PIXEL_MAP_I_TO_A = 0x0C75;
//C     #define GL_PIXEL_MAP_G_TO_G			0x0C77
const GL_PIXEL_MAP_R_TO_R = 0x0C76;
//C     #define GL_PIXEL_MAP_B_TO_B			0x0C78
const GL_PIXEL_MAP_G_TO_G = 0x0C77;
//C     #define GL_PIXEL_MAP_A_TO_A			0x0C79
const GL_PIXEL_MAP_B_TO_B = 0x0C78;
//C     #define GL_PACK_ALIGNMENT			0x0D05
const GL_PIXEL_MAP_A_TO_A = 0x0C79;
//C     #define GL_PACK_LSB_FIRST			0x0D01
const GL_PACK_ALIGNMENT = 0x0D05;
//C     #define GL_PACK_ROW_LENGTH			0x0D02
const GL_PACK_LSB_FIRST = 0x0D01;
//C     #define GL_PACK_SKIP_PIXELS			0x0D04
const GL_PACK_ROW_LENGTH = 0x0D02;
//C     #define GL_PACK_SKIP_ROWS			0x0D03
const GL_PACK_SKIP_PIXELS = 0x0D04;
//C     #define GL_PACK_SWAP_BYTES			0x0D00
const GL_PACK_SKIP_ROWS = 0x0D03;
//C     #define GL_UNPACK_ALIGNMENT			0x0CF5
const GL_PACK_SWAP_BYTES = 0x0D00;
//C     #define GL_UNPACK_LSB_FIRST			0x0CF1
const GL_UNPACK_ALIGNMENT = 0x0CF5;
//C     #define GL_UNPACK_ROW_LENGTH			0x0CF2
const GL_UNPACK_LSB_FIRST = 0x0CF1;
//C     #define GL_UNPACK_SKIP_PIXELS			0x0CF4
const GL_UNPACK_ROW_LENGTH = 0x0CF2;
//C     #define GL_UNPACK_SKIP_ROWS			0x0CF3
const GL_UNPACK_SKIP_PIXELS = 0x0CF4;
//C     #define GL_UNPACK_SWAP_BYTES			0x0CF0
const GL_UNPACK_SKIP_ROWS = 0x0CF3;
//C     #define GL_ZOOM_X				0x0D16
const GL_UNPACK_SWAP_BYTES = 0x0CF0;
//C     #define GL_ZOOM_Y				0x0D17
const GL_ZOOM_X = 0x0D16;

const GL_ZOOM_Y = 0x0D17;
/* Texture mapping */
//C     #define GL_TEXTURE_ENV				0x2300
//C     #define GL_TEXTURE_ENV_MODE			0x2200
const GL_TEXTURE_ENV = 0x2300;
//C     #define GL_TEXTURE_1D				0x0DE0
const GL_TEXTURE_ENV_MODE = 0x2200;
//C     #define GL_TEXTURE_2D				0x0DE1
const GL_TEXTURE_1D = 0x0DE0;
//C     #define GL_TEXTURE_WRAP_S			0x2802
const GL_TEXTURE_2D = 0x0DE1;
//C     #define GL_TEXTURE_WRAP_T			0x2803
const GL_TEXTURE_WRAP_S = 0x2802;
//C     #define GL_TEXTURE_MAG_FILTER			0x2800
const GL_TEXTURE_WRAP_T = 0x2803;
//C     #define GL_TEXTURE_MIN_FILTER			0x2801
const GL_TEXTURE_MAG_FILTER = 0x2800;
//C     #define GL_TEXTURE_ENV_COLOR			0x2201
const GL_TEXTURE_MIN_FILTER = 0x2801;
//C     #define GL_TEXTURE_GEN_S			0x0C60
const GL_TEXTURE_ENV_COLOR = 0x2201;
//C     #define GL_TEXTURE_GEN_T			0x0C61
const GL_TEXTURE_GEN_S = 0x0C60;
//C     #define GL_TEXTURE_GEN_MODE			0x2500
const GL_TEXTURE_GEN_T = 0x0C61;
//C     #define GL_TEXTURE_BORDER_COLOR			0x1004
const GL_TEXTURE_GEN_MODE = 0x2500;
//C     #define GL_TEXTURE_WIDTH			0x1000
const GL_TEXTURE_BORDER_COLOR = 0x1004;
//C     #define GL_TEXTURE_HEIGHT			0x1001
const GL_TEXTURE_WIDTH = 0x1000;
//C     #define GL_TEXTURE_BORDER			0x1005
const GL_TEXTURE_HEIGHT = 0x1001;
//C     #define GL_TEXTURE_COMPONENTS			0x1003
const GL_TEXTURE_BORDER = 0x1005;
//C     #define GL_TEXTURE_RED_SIZE			0x805C
const GL_TEXTURE_COMPONENTS = 0x1003;
//C     #define GL_TEXTURE_GREEN_SIZE			0x805D
const GL_TEXTURE_RED_SIZE = 0x805C;
//C     #define GL_TEXTURE_BLUE_SIZE			0x805E
const GL_TEXTURE_GREEN_SIZE = 0x805D;
//C     #define GL_TEXTURE_ALPHA_SIZE			0x805F
const GL_TEXTURE_BLUE_SIZE = 0x805E;
//C     #define GL_TEXTURE_LUMINANCE_SIZE		0x8060
const GL_TEXTURE_ALPHA_SIZE = 0x805F;
//C     #define GL_TEXTURE_INTENSITY_SIZE		0x8061
const GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
//C     #define GL_NEAREST_MIPMAP_NEAREST		0x2700
const GL_TEXTURE_INTENSITY_SIZE = 0x8061;
//C     #define GL_NEAREST_MIPMAP_LINEAR		0x2702
const GL_NEAREST_MIPMAP_NEAREST = 0x2700;
//C     #define GL_LINEAR_MIPMAP_NEAREST		0x2701
const GL_NEAREST_MIPMAP_LINEAR = 0x2702;
//C     #define GL_LINEAR_MIPMAP_LINEAR			0x2703
const GL_LINEAR_MIPMAP_NEAREST = 0x2701;
//C     #define GL_OBJECT_LINEAR			0x2401
const GL_LINEAR_MIPMAP_LINEAR = 0x2703;
//C     #define GL_OBJECT_PLANE				0x2501
const GL_OBJECT_LINEAR = 0x2401;
//C     #define GL_EYE_LINEAR				0x2400
const GL_OBJECT_PLANE = 0x2501;
//C     #define GL_EYE_PLANE				0x2502
const GL_EYE_LINEAR = 0x2400;
//C     #define GL_SPHERE_MAP				0x2402
const GL_EYE_PLANE = 0x2502;
//C     #define GL_DECAL				0x2101
const GL_SPHERE_MAP = 0x2402;
//C     #define GL_MODULATE				0x2100
const GL_DECAL = 0x2101;
//C     #define GL_NEAREST				0x2600
const GL_MODULATE = 0x2100;
//C     #define GL_REPEAT				0x2901
const GL_NEAREST = 0x2600;
//C     #define GL_CLAMP				0x2900
const GL_REPEAT = 0x2901;
//C     #define GL_S					0x2000
const GL_CLAMP = 0x2900;
//C     #define GL_T					0x2001
const GL_S = 0x2000;
//C     #define GL_R					0x2002
const GL_T = 0x2001;
//C     #define GL_Q					0x2003
const GL_R = 0x2002;
//C     #define GL_TEXTURE_GEN_R			0x0C62
const GL_Q = 0x2003;
//C     #define GL_TEXTURE_GEN_Q			0x0C63
const GL_TEXTURE_GEN_R = 0x0C62;

const GL_TEXTURE_GEN_Q = 0x0C63;
/* Utility */
//C     #define GL_VENDOR				0x1F00
//C     #define GL_RENDERER				0x1F01
const GL_VENDOR = 0x1F00;
//C     #define GL_VERSION				0x1F02
const GL_RENDERER = 0x1F01;
//C     #define GL_EXTENSIONS				0x1F03
const GL_VERSION = 0x1F02;

const GL_EXTENSIONS = 0x1F03;
/* Errors */
//C     #define GL_NO_ERROR 				0x0
//C     #define GL_INVALID_VALUE			0x0501
const GL_NO_ERROR = 0x0;
//C     #define GL_INVALID_ENUM				0x0500
const GL_INVALID_VALUE = 0x0501;
//C     #define GL_INVALID_OPERATION			0x0502
const GL_INVALID_ENUM = 0x0500;
//C     #define GL_STACK_OVERFLOW			0x0503
const GL_INVALID_OPERATION = 0x0502;
//C     #define GL_STACK_UNDERFLOW			0x0504
const GL_STACK_OVERFLOW = 0x0503;
//C     #define GL_OUT_OF_MEMORY			0x0505
const GL_STACK_UNDERFLOW = 0x0504;

const GL_OUT_OF_MEMORY = 0x0505;
/* glPush/PopAttrib bits */
//C     #define GL_CURRENT_BIT				0x00000001
//C     #define GL_POINT_BIT				0x00000002
const GL_CURRENT_BIT = 0x00000001;
//C     #define GL_LINE_BIT				0x00000004
const GL_POINT_BIT = 0x00000002;
//C     #define GL_POLYGON_BIT				0x00000008
const GL_LINE_BIT = 0x00000004;
//C     #define GL_POLYGON_STIPPLE_BIT			0x00000010
const GL_POLYGON_BIT = 0x00000008;
//C     #define GL_PIXEL_MODE_BIT			0x00000020
const GL_POLYGON_STIPPLE_BIT = 0x00000010;
//C     #define GL_LIGHTING_BIT				0x00000040
const GL_PIXEL_MODE_BIT = 0x00000020;
//C     #define GL_FOG_BIT				0x00000080
const GL_LIGHTING_BIT = 0x00000040;
//C     #define GL_DEPTH_BUFFER_BIT			0x00000100
const GL_FOG_BIT = 0x00000080;
//C     #define GL_ACCUM_BUFFER_BIT			0x00000200
const GL_DEPTH_BUFFER_BIT = 0x00000100;
//C     #define GL_STENCIL_BUFFER_BIT			0x00000400
const GL_ACCUM_BUFFER_BIT = 0x00000200;
//C     #define GL_VIEWPORT_BIT				0x00000800
const GL_STENCIL_BUFFER_BIT = 0x00000400;
//C     #define GL_TRANSFORM_BIT			0x00001000
const GL_VIEWPORT_BIT = 0x00000800;
//C     #define GL_ENABLE_BIT				0x00002000
const GL_TRANSFORM_BIT = 0x00001000;
//C     #define GL_COLOR_BUFFER_BIT			0x00004000
const GL_ENABLE_BIT = 0x00002000;
//C     #define GL_HINT_BIT				0x00008000
const GL_COLOR_BUFFER_BIT = 0x00004000;
//C     #define GL_EVAL_BIT				0x00010000
const GL_HINT_BIT = 0x00008000;
//C     #define GL_LIST_BIT				0x00020000
const GL_EVAL_BIT = 0x00010000;
//C     #define GL_TEXTURE_BIT				0x00040000
const GL_LIST_BIT = 0x00020000;
//C     #define GL_SCISSOR_BIT				0x00080000
const GL_TEXTURE_BIT = 0x00040000;
//C     #define GL_ALL_ATTRIB_BITS			0x000FFFFF
const GL_SCISSOR_BIT = 0x00080000;

const GL_ALL_ATTRIB_BITS = 0x000FFFFF;

/* OpenGL 1.1 */
//C     #define GL_PROXY_TEXTURE_1D			0x8063
//C     #define GL_PROXY_TEXTURE_2D			0x8064
const GL_PROXY_TEXTURE_1D = 0x8063;
//C     #define GL_TEXTURE_PRIORITY			0x8066
const GL_PROXY_TEXTURE_2D = 0x8064;
//C     #define GL_TEXTURE_RESIDENT			0x8067
const GL_TEXTURE_PRIORITY = 0x8066;
//C     #define GL_TEXTURE_BINDING_1D			0x8068
const GL_TEXTURE_RESIDENT = 0x8067;
//C     #define GL_TEXTURE_BINDING_2D			0x8069
const GL_TEXTURE_BINDING_1D = 0x8068;
//C     #define GL_TEXTURE_INTERNAL_FORMAT		0x1003
const GL_TEXTURE_BINDING_2D = 0x8069;
//C     #define GL_ALPHA4				0x803B
const GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
//C     #define GL_ALPHA8				0x803C
const GL_ALPHA4 = 0x803B;
//C     #define GL_ALPHA12				0x803D
const GL_ALPHA8 = 0x803C;
//C     #define GL_ALPHA16				0x803E
const GL_ALPHA12 = 0x803D;
//C     #define GL_LUMINANCE4				0x803F
const GL_ALPHA16 = 0x803E;
//C     #define GL_LUMINANCE8				0x8040
const GL_LUMINANCE4 = 0x803F;
//C     #define GL_LUMINANCE12				0x8041
const GL_LUMINANCE8 = 0x8040;
//C     #define GL_LUMINANCE16				0x8042
const GL_LUMINANCE12 = 0x8041;
//C     #define GL_LUMINANCE4_ALPHA4			0x8043
const GL_LUMINANCE16 = 0x8042;
//C     #define GL_LUMINANCE6_ALPHA2			0x8044
const GL_LUMINANCE4_ALPHA4 = 0x8043;
//C     #define GL_LUMINANCE8_ALPHA8			0x8045
const GL_LUMINANCE6_ALPHA2 = 0x8044;
//C     #define GL_LUMINANCE12_ALPHA4			0x8046
const GL_LUMINANCE8_ALPHA8 = 0x8045;
//C     #define GL_LUMINANCE12_ALPHA12			0x8047
const GL_LUMINANCE12_ALPHA4 = 0x8046;
//C     #define GL_LUMINANCE16_ALPHA16			0x8048
const GL_LUMINANCE12_ALPHA12 = 0x8047;
//C     #define GL_INTENSITY				0x8049
const GL_LUMINANCE16_ALPHA16 = 0x8048;
//C     #define GL_INTENSITY4				0x804A
const GL_INTENSITY = 0x8049;
//C     #define GL_INTENSITY8				0x804B
const GL_INTENSITY4 = 0x804A;
//C     #define GL_INTENSITY12				0x804C
const GL_INTENSITY8 = 0x804B;
//C     #define GL_INTENSITY16				0x804D
const GL_INTENSITY12 = 0x804C;
//C     #define GL_R3_G3_B2				0x2A10
const GL_INTENSITY16 = 0x804D;
//C     #define GL_RGB4					0x804F
const GL_R3_G3_B2 = 0x2A10;
//C     #define GL_RGB5					0x8050
const GL_RGB4 = 0x804F;
//C     #define GL_RGB8					0x8051
const GL_RGB5 = 0x8050;
//C     #define GL_RGB10				0x8052
const GL_RGB8 = 0x8051;
//C     #define GL_RGB12				0x8053
const GL_RGB10 = 0x8052;
//C     #define GL_RGB16				0x8054
const GL_RGB12 = 0x8053;
//C     #define GL_RGBA2				0x8055
const GL_RGB16 = 0x8054;
//C     #define GL_RGBA4				0x8056
const GL_RGBA2 = 0x8055;
//C     #define GL_RGB5_A1				0x8057
const GL_RGBA4 = 0x8056;
//C     #define GL_RGBA8				0x8058
const GL_RGB5_A1 = 0x8057;
//C     #define GL_RGB10_A2				0x8059
const GL_RGBA8 = 0x8058;
//C     #define GL_RGBA12				0x805A
const GL_RGB10_A2 = 0x8059;
//C     #define GL_RGBA16				0x805B
const GL_RGBA12 = 0x805A;
//C     #define GL_CLIENT_PIXEL_STORE_BIT		0x00000001
const GL_RGBA16 = 0x805B;
//C     #define GL_CLIENT_VERTEX_ARRAY_BIT		0x00000002
const GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
//C     #define GL_ALL_CLIENT_ATTRIB_BITS 		0xFFFFFFFF
const GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
//C     #define GL_CLIENT_ALL_ATTRIB_BITS 		0xFFFFFFFF
const GL_ALL_CLIENT_ATTRIB_BITS = 0xFFFFFFFF;

const GL_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;


/*
 * Miscellaneous
 */

//C     GLAPI void GLAPIENTRY glClearIndex( GLfloat c );
void  glClearIndex(GLfloat c);

//C     GLAPI void GLAPIENTRY glClearColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );
void  glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

//C     GLAPI void GLAPIENTRY glClear( GLbitfield mask );
void  glClear(GLbitfield mask);

//C     GLAPI void GLAPIENTRY glIndexMask( GLuint mask );
void  glIndexMask(GLuint mask);

//C     GLAPI void GLAPIENTRY glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha );
void  glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);

//C     GLAPI void GLAPIENTRY glAlphaFunc( GLenum func, GLclampf ref );
void  glAlphaFunc(GLenum func, GLclampf ref);

//C     GLAPI void GLAPIENTRY glBlendFunc( GLenum sfactor, GLenum dfactor );
void  glBlendFunc(GLenum sfactor, GLenum dfactor);

//C     GLAPI void GLAPIENTRY glLogicOp( GLenum opcode );
void  glLogicOp(GLenum opcode);

//C     GLAPI void GLAPIENTRY glCullFace( GLenum mode );
void  glCullFace(GLenum mode);

//C     GLAPI void GLAPIENTRY glFrontFace( GLenum mode );
void  glFrontFace(GLenum mode);

//C     GLAPI void GLAPIENTRY glPointSize( GLfloat size );
void  glPointSize(GLfloat size);

//C     GLAPI void GLAPIENTRY glLineWidth( GLfloat width );
void  glLineWidth(GLfloat width);

//C     GLAPI void GLAPIENTRY glLineStipple( GLint factor, GLushort pattern );
void  glLineStipple(GLint factor, GLushort pattern);

//C     GLAPI void GLAPIENTRY glPolygonMode( GLenum face, GLenum mode );
void  glPolygonMode(GLenum face, GLenum mode);

//C     GLAPI void GLAPIENTRY glPolygonOffset( GLfloat factor, GLfloat units );
void  glPolygonOffset(GLfloat factor, GLfloat units);

//C     GLAPI void GLAPIENTRY glPolygonStipple( const GLubyte *mask );
void  glPolygonStipple(GLubyte *mask);

//C     GLAPI void GLAPIENTRY glGetPolygonStipple( GLubyte *mask );
void  glGetPolygonStipple(GLubyte *mask);

//C     GLAPI void GLAPIENTRY glEdgeFlag( GLboolean flag );
void  glEdgeFlag(GLboolean flag);

//C     GLAPI void GLAPIENTRY glEdgeFlagv( const GLboolean *flag );
void  glEdgeFlagv(GLboolean *flag);

//C     GLAPI void GLAPIENTRY glScissor( GLint x, GLint y, GLsizei width, GLsizei height);
void  glScissor(GLint x, GLint y, GLsizei width, GLsizei height);

//C     GLAPI void GLAPIENTRY glClipPlane( GLenum plane, const GLdouble *equation );
void  glClipPlane(GLenum plane, GLdouble *equation);

//C     GLAPI void GLAPIENTRY glGetClipPlane( GLenum plane, GLdouble *equation );
void  glGetClipPlane(GLenum plane, GLdouble *equation);

//C     GLAPI void GLAPIENTRY glDrawBuffer( GLenum mode );
void  glDrawBuffer(GLenum mode);

//C     GLAPI void GLAPIENTRY glReadBuffer( GLenum mode );
void  glReadBuffer(GLenum mode);

//C     GLAPI void GLAPIENTRY glEnable( GLenum cap );
void  glEnable(GLenum cap);

//C     GLAPI void GLAPIENTRY glDisable( GLenum cap );
void  glDisable(GLenum cap);

//C     GLAPI GLboolean GLAPIENTRY glIsEnabled( GLenum cap );
GLboolean  glIsEnabled(GLenum cap);


//C     GLAPI void GLAPIENTRY glEnableClientState( GLenum cap );  /* 1.1 */
void  glEnableClientState(GLenum cap);

//C     GLAPI void GLAPIENTRY glDisableClientState( GLenum cap );  /* 1.1 */
void  glDisableClientState(GLenum cap);


//C     GLAPI void GLAPIENTRY glGetBooleanv( GLenum pname, GLboolean *params );
void  glGetBooleanv(GLenum pname, GLboolean *params);

//C     GLAPI void GLAPIENTRY glGetDoublev( GLenum pname, GLdouble *params );
void  glGetDoublev(GLenum pname, GLdouble *params);

//C     GLAPI void GLAPIENTRY glGetFloatv( GLenum pname, GLfloat *params );
void  glGetFloatv(GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glGetIntegerv( GLenum pname, GLint *params );
void  glGetIntegerv(GLenum pname, GLint *params);


//C     GLAPI void GLAPIENTRY glPushAttrib( GLbitfield mask );
void  glPushAttrib(GLbitfield mask);

//C     GLAPI void GLAPIENTRY glPopAttrib( void );
void  glPopAttrib();


//C     GLAPI void GLAPIENTRY glPushClientAttrib( GLbitfield mask );  /* 1.1 */
void  glPushClientAttrib(GLbitfield mask);

//C     GLAPI void GLAPIENTRY glPopClientAttrib( void );  /* 1.1 */
void  glPopClientAttrib();


//C     GLAPI GLint GLAPIENTRY glRenderMode( GLenum mode );
GLint  glRenderMode(GLenum mode);

//C     GLAPI GLenum GLAPIENTRY glGetError( void );
GLenum  glGetError();

//C     GLAPI const GLubyte * GLAPIENTRY glGetString( GLenum name );
GLubyte * glGetString(GLenum name);

//C     GLAPI void GLAPIENTRY glFinish( void );
void  glFinish();

//C     GLAPI void GLAPIENTRY glFlush( void );
void  glFlush();

//C     GLAPI void GLAPIENTRY glHint( GLenum target, GLenum mode );
void  glHint(GLenum target, GLenum mode);


/*
 * Depth Buffer
 */

//C     GLAPI void GLAPIENTRY glClearDepth( GLclampd depth );
void  glClearDepth(GLclampd depth);

//C     GLAPI void GLAPIENTRY glDepthFunc( GLenum func );
void  glDepthFunc(GLenum func);

//C     GLAPI void GLAPIENTRY glDepthMask( GLboolean flag );
void  glDepthMask(GLboolean flag);

//C     GLAPI void GLAPIENTRY glDepthRange( GLclampd near_val, GLclampd far_val );
void  glDepthRange(GLclampd near_val, GLclampd far_val);


/*
 * Accumulation Buffer
 */

//C     GLAPI void GLAPIENTRY glClearAccum( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );
void  glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);

//C     GLAPI void GLAPIENTRY glAccum( GLenum op, GLfloat value );
void  glAccum(GLenum op, GLfloat value);


/*
 * Transformation
 */

//C     GLAPI void GLAPIENTRY glMatrixMode( GLenum mode );
void  glMatrixMode(GLenum mode);

//C     GLAPI void GLAPIENTRY glOrtho( GLdouble left, GLdouble right,
//C                                      GLdouble bottom, GLdouble top,
//C                                      GLdouble near_val, GLdouble far_val );
void  glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);

//C     GLAPI void GLAPIENTRY glFrustum( GLdouble left, GLdouble right,
//C                                        GLdouble bottom, GLdouble top,
//C                                        GLdouble near_val, GLdouble far_val );
void  glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);

//C     GLAPI void GLAPIENTRY glViewport( GLint x, GLint y,
//C                                         GLsizei width, GLsizei height );
void  glViewport(GLint x, GLint y, GLsizei width, GLsizei height);

//C     GLAPI void GLAPIENTRY glPushMatrix( void );
void  glPushMatrix();

//C     GLAPI void GLAPIENTRY glPopMatrix( void );
void  glPopMatrix();

//C     GLAPI void GLAPIENTRY glLoadIdentity( void );
void  glLoadIdentity();

//C     GLAPI void GLAPIENTRY glLoadMatrixd( const GLdouble *m );
void  glLoadMatrixd(GLdouble *m);
//C     GLAPI void GLAPIENTRY glLoadMatrixf( const GLfloat *m );
void  glLoadMatrixf(GLfloat *m);

//C     GLAPI void GLAPIENTRY glMultMatrixd( const GLdouble *m );
void  glMultMatrixd(GLdouble *m);
//C     GLAPI void GLAPIENTRY glMultMatrixf( const GLfloat *m );
void  glMultMatrixf(GLfloat *m);

//C     GLAPI void GLAPIENTRY glRotated( GLdouble angle,
//C                                        GLdouble x, GLdouble y, GLdouble z );
void  glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
//C     GLAPI void GLAPIENTRY glRotatef( GLfloat angle,
//C                                        GLfloat x, GLfloat y, GLfloat z );
void  glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);

//C     GLAPI void GLAPIENTRY glScaled( GLdouble x, GLdouble y, GLdouble z );
void  glScaled(GLdouble x, GLdouble y, GLdouble z);
//C     GLAPI void GLAPIENTRY glScalef( GLfloat x, GLfloat y, GLfloat z );
void  glScalef(GLfloat x, GLfloat y, GLfloat z);

//C     GLAPI void GLAPIENTRY glTranslated( GLdouble x, GLdouble y, GLdouble z );
void  glTranslated(GLdouble x, GLdouble y, GLdouble z);
//C     GLAPI void GLAPIENTRY glTranslatef( GLfloat x, GLfloat y, GLfloat z );
void  glTranslatef(GLfloat x, GLfloat y, GLfloat z);


/*
 * Display Lists
 */

//C     GLAPI GLboolean GLAPIENTRY glIsList( GLuint list );
GLboolean  glIsList(GLuint list);

//C     GLAPI void GLAPIENTRY glDeleteLists( GLuint list, GLsizei range );
void  glDeleteLists(GLuint list, GLsizei range);

//C     GLAPI GLuint GLAPIENTRY glGenLists( GLsizei range );
GLuint  glGenLists(GLsizei range);

//C     GLAPI void GLAPIENTRY glNewList( GLuint list, GLenum mode );
void  glNewList(GLuint list, GLenum mode);

//C     GLAPI void GLAPIENTRY glEndList( void );
void  glEndList();

//C     GLAPI void GLAPIENTRY glCallList( GLuint list );
void  glCallList(GLuint list);

//C     GLAPI void GLAPIENTRY glCallLists( GLsizei n, GLenum type,
//C                                          const GLvoid *lists );
void  glCallLists(GLsizei n, GLenum type, GLvoid *lists);

//C     GLAPI void GLAPIENTRY glListBase( GLuint base );
void  glListBase(GLuint base);


/*
 * Drawing Functions
 */

//C     GLAPI void GLAPIENTRY glBegin( GLenum mode );
void  glBegin(GLenum mode);

//C     GLAPI void GLAPIENTRY glEnd( void );
void  glEnd();


//C     GLAPI void GLAPIENTRY glVertex2d( GLdouble x, GLdouble y );
void  glVertex2d(GLdouble x, GLdouble y);
//C     GLAPI void GLAPIENTRY glVertex2f( GLfloat x, GLfloat y );
void  glVertex2f(GLfloat x, GLfloat y);
//C     GLAPI void GLAPIENTRY glVertex2i( GLint x, GLint y );
void  glVertex2i(GLint x, GLint y);
//C     GLAPI void GLAPIENTRY glVertex2s( GLshort x, GLshort y );
void  glVertex2s(GLshort x, GLshort y);

//C     GLAPI void GLAPIENTRY glVertex3d( GLdouble x, GLdouble y, GLdouble z );
void  glVertex3d(GLdouble x, GLdouble y, GLdouble z);
//C     GLAPI void GLAPIENTRY glVertex3f( GLfloat x, GLfloat y, GLfloat z );
void  glVertex3f(GLfloat x, GLfloat y, GLfloat z);
//C     GLAPI void GLAPIENTRY glVertex3i( GLint x, GLint y, GLint z );
void  glVertex3i(GLint x, GLint y, GLint z);
//C     GLAPI void GLAPIENTRY glVertex3s( GLshort x, GLshort y, GLshort z );
void  glVertex3s(GLshort x, GLshort y, GLshort z);

//C     GLAPI void GLAPIENTRY glVertex4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
void  glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
//C     GLAPI void GLAPIENTRY glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
void  glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
//C     GLAPI void GLAPIENTRY glVertex4i( GLint x, GLint y, GLint z, GLint w );
void  glVertex4i(GLint x, GLint y, GLint z, GLint w);
//C     GLAPI void GLAPIENTRY glVertex4s( GLshort x, GLshort y, GLshort z, GLshort w );
void  glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);

//C     GLAPI void GLAPIENTRY glVertex2dv( const GLdouble *v );
void  glVertex2dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glVertex2fv( const GLfloat *v );
void  glVertex2fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glVertex2iv( const GLint *v );
void  glVertex2iv(GLint *v);
//C     GLAPI void GLAPIENTRY glVertex2sv( const GLshort *v );
void  glVertex2sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glVertex3dv( const GLdouble *v );
void  glVertex3dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glVertex3fv( const GLfloat *v );
void  glVertex3fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glVertex3iv( const GLint *v );
void  glVertex3iv(GLint *v);
//C     GLAPI void GLAPIENTRY glVertex3sv( const GLshort *v );
void  glVertex3sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glVertex4dv( const GLdouble *v );
void  glVertex4dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glVertex4fv( const GLfloat *v );
void  glVertex4fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glVertex4iv( const GLint *v );
void  glVertex4iv(GLint *v);
//C     GLAPI void GLAPIENTRY glVertex4sv( const GLshort *v );
void  glVertex4sv(GLshort *v);


//C     GLAPI void GLAPIENTRY glNormal3b( GLbyte nx, GLbyte ny, GLbyte nz );
void  glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz);
//C     GLAPI void GLAPIENTRY glNormal3d( GLdouble nx, GLdouble ny, GLdouble nz );
void  glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz);
//C     GLAPI void GLAPIENTRY glNormal3f( GLfloat nx, GLfloat ny, GLfloat nz );
void  glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz);
//C     GLAPI void GLAPIENTRY glNormal3i( GLint nx, GLint ny, GLint nz );
void  glNormal3i(GLint nx, GLint ny, GLint nz);
//C     GLAPI void GLAPIENTRY glNormal3s( GLshort nx, GLshort ny, GLshort nz );
void  glNormal3s(GLshort nx, GLshort ny, GLshort nz);

//C     GLAPI void GLAPIENTRY glNormal3bv( const GLbyte *v );
void  glNormal3bv(GLbyte *v);
//C     GLAPI void GLAPIENTRY glNormal3dv( const GLdouble *v );
void  glNormal3dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glNormal3fv( const GLfloat *v );
void  glNormal3fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glNormal3iv( const GLint *v );
void  glNormal3iv(GLint *v);
//C     GLAPI void GLAPIENTRY glNormal3sv( const GLshort *v );
void  glNormal3sv(GLshort *v);


//C     GLAPI void GLAPIENTRY glIndexd( GLdouble c );
void  glIndexd(GLdouble c);
//C     GLAPI void GLAPIENTRY glIndexf( GLfloat c );
void  glIndexf(GLfloat c);
//C     GLAPI void GLAPIENTRY glIndexi( GLint c );
void  glIndexi(GLint c);
//C     GLAPI void GLAPIENTRY glIndexs( GLshort c );
void  glIndexs(GLshort c);
//C     GLAPI void GLAPIENTRY glIndexub( GLubyte c );  /* 1.1 */
void  glIndexub(GLubyte c);

//C     GLAPI void GLAPIENTRY glIndexdv( const GLdouble *c );
void  glIndexdv(GLdouble *c);
//C     GLAPI void GLAPIENTRY glIndexfv( const GLfloat *c );
void  glIndexfv(GLfloat *c);
//C     GLAPI void GLAPIENTRY glIndexiv( const GLint *c );
void  glIndexiv(GLint *c);
//C     GLAPI void GLAPIENTRY glIndexsv( const GLshort *c );
void  glIndexsv(GLshort *c);
//C     GLAPI void GLAPIENTRY glIndexubv( const GLubyte *c );  /* 1.1 */
void  glIndexubv(GLubyte *c);

//C     GLAPI void GLAPIENTRY glColor3b( GLbyte red, GLbyte green, GLbyte blue );
void  glColor3b(GLbyte red, GLbyte green, GLbyte blue);
//C     GLAPI void GLAPIENTRY glColor3d( GLdouble red, GLdouble green, GLdouble blue );
void  glColor3d(GLdouble red, GLdouble green, GLdouble blue);
//C     GLAPI void GLAPIENTRY glColor3f( GLfloat red, GLfloat green, GLfloat blue );
void  glColor3f(GLfloat red, GLfloat green, GLfloat blue);
//C     GLAPI void GLAPIENTRY glColor3i( GLint red, GLint green, GLint blue );
void  glColor3i(GLint red, GLint green, GLint blue);
//C     GLAPI void GLAPIENTRY glColor3s( GLshort red, GLshort green, GLshort blue );
void  glColor3s(GLshort red, GLshort green, GLshort blue);
//C     GLAPI void GLAPIENTRY glColor3ub( GLubyte red, GLubyte green, GLubyte blue );
void  glColor3ub(GLubyte red, GLubyte green, GLubyte blue);
//C     GLAPI void GLAPIENTRY glColor3ui( GLuint red, GLuint green, GLuint blue );
void  glColor3ui(GLuint red, GLuint green, GLuint blue);
//C     GLAPI void GLAPIENTRY glColor3us( GLushort red, GLushort green, GLushort blue );
void  glColor3us(GLushort red, GLushort green, GLushort blue);

//C     GLAPI void GLAPIENTRY glColor4b( GLbyte red, GLbyte green,
//C                                        GLbyte blue, GLbyte alpha );
void  glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
//C     GLAPI void GLAPIENTRY glColor4d( GLdouble red, GLdouble green,
//C                                        GLdouble blue, GLdouble alpha );
void  glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
//C     GLAPI void GLAPIENTRY glColor4f( GLfloat red, GLfloat green,
//C                                        GLfloat blue, GLfloat alpha );
void  glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
//C     GLAPI void GLAPIENTRY glColor4i( GLint red, GLint green,
//C                                        GLint blue, GLint alpha );
void  glColor4i(GLint red, GLint green, GLint blue, GLint alpha);
//C     GLAPI void GLAPIENTRY glColor4s( GLshort red, GLshort green,
//C                                        GLshort blue, GLshort alpha );
void  glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
//C     GLAPI void GLAPIENTRY glColor4ub( GLubyte red, GLubyte green,
//C                                         GLubyte blue, GLubyte alpha );
void  glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
//C     GLAPI void GLAPIENTRY glColor4ui( GLuint red, GLuint green,
//C                                         GLuint blue, GLuint alpha );
void  glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
//C     GLAPI void GLAPIENTRY glColor4us( GLushort red, GLushort green,
//C                                         GLushort blue, GLushort alpha );
void  glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);


//C     GLAPI void GLAPIENTRY glColor3bv( const GLbyte *v );
void  glColor3bv(GLbyte *v);
//C     GLAPI void GLAPIENTRY glColor3dv( const GLdouble *v );
void  glColor3dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glColor3fv( const GLfloat *v );
void  glColor3fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glColor3iv( const GLint *v );
void  glColor3iv(GLint *v);
//C     GLAPI void GLAPIENTRY glColor3sv( const GLshort *v );
void  glColor3sv(GLshort *v);
//C     GLAPI void GLAPIENTRY glColor3ubv( const GLubyte *v );
void  glColor3ubv(GLubyte *v);
//C     GLAPI void GLAPIENTRY glColor3uiv( const GLuint *v );
void  glColor3uiv(GLuint *v);
//C     GLAPI void GLAPIENTRY glColor3usv( const GLushort *v );
void  glColor3usv(GLushort *v);

//C     GLAPI void GLAPIENTRY glColor4bv( const GLbyte *v );
void  glColor4bv(GLbyte *v);
//C     GLAPI void GLAPIENTRY glColor4dv( const GLdouble *v );
void  glColor4dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glColor4fv( const GLfloat *v );
void  glColor4fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glColor4iv( const GLint *v );
void  glColor4iv(GLint *v);
//C     GLAPI void GLAPIENTRY glColor4sv( const GLshort *v );
void  glColor4sv(GLshort *v);
//C     GLAPI void GLAPIENTRY glColor4ubv( const GLubyte *v );
void  glColor4ubv(GLubyte *v);
//C     GLAPI void GLAPIENTRY glColor4uiv( const GLuint *v );
void  glColor4uiv(GLuint *v);
//C     GLAPI void GLAPIENTRY glColor4usv( const GLushort *v );
void  glColor4usv(GLushort *v);


//C     GLAPI void GLAPIENTRY glTexCoord1d( GLdouble s );
void  glTexCoord1d(GLdouble s);
//C     GLAPI void GLAPIENTRY glTexCoord1f( GLfloat s );
void  glTexCoord1f(GLfloat s);
//C     GLAPI void GLAPIENTRY glTexCoord1i( GLint s );
void  glTexCoord1i(GLint s);
//C     GLAPI void GLAPIENTRY glTexCoord1s( GLshort s );
void  glTexCoord1s(GLshort s);

//C     GLAPI void GLAPIENTRY glTexCoord2d( GLdouble s, GLdouble t );
void  glTexCoord2d(GLdouble s, GLdouble t);
//C     GLAPI void GLAPIENTRY glTexCoord2f( GLfloat s, GLfloat t );
void  glTexCoord2f(GLfloat s, GLfloat t);
//C     GLAPI void GLAPIENTRY glTexCoord2i( GLint s, GLint t );
void  glTexCoord2i(GLint s, GLint t);
//C     GLAPI void GLAPIENTRY glTexCoord2s( GLshort s, GLshort t );
void  glTexCoord2s(GLshort s, GLshort t);

//C     GLAPI void GLAPIENTRY glTexCoord3d( GLdouble s, GLdouble t, GLdouble r );
void  glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
//C     GLAPI void GLAPIENTRY glTexCoord3f( GLfloat s, GLfloat t, GLfloat r );
void  glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
//C     GLAPI void GLAPIENTRY glTexCoord3i( GLint s, GLint t, GLint r );
void  glTexCoord3i(GLint s, GLint t, GLint r);
//C     GLAPI void GLAPIENTRY glTexCoord3s( GLshort s, GLshort t, GLshort r );
void  glTexCoord3s(GLshort s, GLshort t, GLshort r);

//C     GLAPI void GLAPIENTRY glTexCoord4d( GLdouble s, GLdouble t, GLdouble r, GLdouble q );
void  glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
//C     GLAPI void GLAPIENTRY glTexCoord4f( GLfloat s, GLfloat t, GLfloat r, GLfloat q );
void  glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
//C     GLAPI void GLAPIENTRY glTexCoord4i( GLint s, GLint t, GLint r, GLint q );
void  glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
//C     GLAPI void GLAPIENTRY glTexCoord4s( GLshort s, GLshort t, GLshort r, GLshort q );
void  glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);

//C     GLAPI void GLAPIENTRY glTexCoord1dv( const GLdouble *v );
void  glTexCoord1dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glTexCoord1fv( const GLfloat *v );
void  glTexCoord1fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glTexCoord1iv( const GLint *v );
void  glTexCoord1iv(GLint *v);
//C     GLAPI void GLAPIENTRY glTexCoord1sv( const GLshort *v );
void  glTexCoord1sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glTexCoord2dv( const GLdouble *v );
void  glTexCoord2dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glTexCoord2fv( const GLfloat *v );
void  glTexCoord2fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glTexCoord2iv( const GLint *v );
void  glTexCoord2iv(GLint *v);
//C     GLAPI void GLAPIENTRY glTexCoord2sv( const GLshort *v );
void  glTexCoord2sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glTexCoord3dv( const GLdouble *v );
void  glTexCoord3dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glTexCoord3fv( const GLfloat *v );
void  glTexCoord3fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glTexCoord3iv( const GLint *v );
void  glTexCoord3iv(GLint *v);
//C     GLAPI void GLAPIENTRY glTexCoord3sv( const GLshort *v );
void  glTexCoord3sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glTexCoord4dv( const GLdouble *v );
void  glTexCoord4dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glTexCoord4fv( const GLfloat *v );
void  glTexCoord4fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glTexCoord4iv( const GLint *v );
void  glTexCoord4iv(GLint *v);
//C     GLAPI void GLAPIENTRY glTexCoord4sv( const GLshort *v );
void  glTexCoord4sv(GLshort *v);


//C     GLAPI void GLAPIENTRY glRasterPos2d( GLdouble x, GLdouble y );
void  glRasterPos2d(GLdouble x, GLdouble y);
//C     GLAPI void GLAPIENTRY glRasterPos2f( GLfloat x, GLfloat y );
void  glRasterPos2f(GLfloat x, GLfloat y);
//C     GLAPI void GLAPIENTRY glRasterPos2i( GLint x, GLint y );
void  glRasterPos2i(GLint x, GLint y);
//C     GLAPI void GLAPIENTRY glRasterPos2s( GLshort x, GLshort y );
void  glRasterPos2s(GLshort x, GLshort y);

//C     GLAPI void GLAPIENTRY glRasterPos3d( GLdouble x, GLdouble y, GLdouble z );
void  glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
//C     GLAPI void GLAPIENTRY glRasterPos3f( GLfloat x, GLfloat y, GLfloat z );
void  glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
//C     GLAPI void GLAPIENTRY glRasterPos3i( GLint x, GLint y, GLint z );
void  glRasterPos3i(GLint x, GLint y, GLint z);
//C     GLAPI void GLAPIENTRY glRasterPos3s( GLshort x, GLshort y, GLshort z );
void  glRasterPos3s(GLshort x, GLshort y, GLshort z);

//C     GLAPI void GLAPIENTRY glRasterPos4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
void  glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
//C     GLAPI void GLAPIENTRY glRasterPos4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
void  glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
//C     GLAPI void GLAPIENTRY glRasterPos4i( GLint x, GLint y, GLint z, GLint w );
void  glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
//C     GLAPI void GLAPIENTRY glRasterPos4s( GLshort x, GLshort y, GLshort z, GLshort w );
void  glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);

//C     GLAPI void GLAPIENTRY glRasterPos2dv( const GLdouble *v );
void  glRasterPos2dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glRasterPos2fv( const GLfloat *v );
void  glRasterPos2fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glRasterPos2iv( const GLint *v );
void  glRasterPos2iv(GLint *v);
//C     GLAPI void GLAPIENTRY glRasterPos2sv( const GLshort *v );
void  glRasterPos2sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glRasterPos3dv( const GLdouble *v );
void  glRasterPos3dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glRasterPos3fv( const GLfloat *v );
void  glRasterPos3fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glRasterPos3iv( const GLint *v );
void  glRasterPos3iv(GLint *v);
//C     GLAPI void GLAPIENTRY glRasterPos3sv( const GLshort *v );
void  glRasterPos3sv(GLshort *v);

//C     GLAPI void GLAPIENTRY glRasterPos4dv( const GLdouble *v );
void  glRasterPos4dv(GLdouble *v);
//C     GLAPI void GLAPIENTRY glRasterPos4fv( const GLfloat *v );
void  glRasterPos4fv(GLfloat *v);
//C     GLAPI void GLAPIENTRY glRasterPos4iv( const GLint *v );
void  glRasterPos4iv(GLint *v);
//C     GLAPI void GLAPIENTRY glRasterPos4sv( const GLshort *v );
void  glRasterPos4sv(GLshort *v);


//C     GLAPI void GLAPIENTRY glRectd( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 );
void  glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
//C     GLAPI void GLAPIENTRY glRectf( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 );
void  glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
//C     GLAPI void GLAPIENTRY glRecti( GLint x1, GLint y1, GLint x2, GLint y2 );
void  glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
//C     GLAPI void GLAPIENTRY glRects( GLshort x1, GLshort y1, GLshort x2, GLshort y2 );
void  glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);


//C     GLAPI void GLAPIENTRY glRectdv( const GLdouble *v1, const GLdouble *v2 );
void  glRectdv(GLdouble *v1, GLdouble *v2);
//C     GLAPI void GLAPIENTRY glRectfv( const GLfloat *v1, const GLfloat *v2 );
void  glRectfv(GLfloat *v1, GLfloat *v2);
//C     GLAPI void GLAPIENTRY glRectiv( const GLint *v1, const GLint *v2 );
void  glRectiv(GLint *v1, GLint *v2);
//C     GLAPI void GLAPIENTRY glRectsv( const GLshort *v1, const GLshort *v2 );
void  glRectsv(GLshort *v1, GLshort *v2);


/*
 * Vertex Arrays  (1.1)
 */

//C     GLAPI void GLAPIENTRY glVertexPointer( GLint size, GLenum type,
//C                                            GLsizei stride, const GLvoid *ptr );
void  glVertexPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glNormalPointer( GLenum type, GLsizei stride,
//C                                            const GLvoid *ptr );
void  glNormalPointer(GLenum type, GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glColorPointer( GLint size, GLenum type,
//C                                           GLsizei stride, const GLvoid *ptr );
void  glColorPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glIndexPointer( GLenum type, GLsizei stride,
//C                                           const GLvoid *ptr );
void  glIndexPointer(GLenum type, GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glTexCoordPointer( GLint size, GLenum type,
//C                                              GLsizei stride, const GLvoid *ptr );
void  glTexCoordPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glEdgeFlagPointer( GLsizei stride, const GLvoid *ptr );
void  glEdgeFlagPointer(GLsizei stride, GLvoid *ptr);

//C     GLAPI void GLAPIENTRY glGetPointerv( GLenum pname, GLvoid **params );
void  glGetPointerv(GLenum pname, GLvoid **params);

//C     GLAPI void GLAPIENTRY glArrayElement( GLint i );
void  glArrayElement(GLint i);

//C     GLAPI void GLAPIENTRY glDrawArrays( GLenum mode, GLint first, GLsizei count );
void  glDrawArrays(GLenum mode, GLint first, GLsizei count);

//C     GLAPI void GLAPIENTRY glDrawElements( GLenum mode, GLsizei count,
//C                                           GLenum type, const GLvoid *indices );
void  glDrawElements(GLenum mode, GLsizei count, GLenum type, GLvoid *indices);

//C     GLAPI void GLAPIENTRY glInterleavedArrays( GLenum format, GLsizei stride,
//C                                                const GLvoid *pointer );
void  glInterleavedArrays(GLenum format, GLsizei stride, GLvoid *pointer);

/*
 * Lighting
 */

//C     GLAPI void GLAPIENTRY glShadeModel( GLenum mode );
void  glShadeModel(GLenum mode);

//C     GLAPI void GLAPIENTRY glLightf( GLenum light, GLenum pname, GLfloat param );
void  glLightf(GLenum light, GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glLighti( GLenum light, GLenum pname, GLint param );
void  glLighti(GLenum light, GLenum pname, GLint param);
//C     GLAPI void GLAPIENTRY glLightfv( GLenum light, GLenum pname,
//C                                      const GLfloat *params );
void  glLightfv(GLenum light, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glLightiv( GLenum light, GLenum pname,
//C                                      const GLint *params );
void  glLightiv(GLenum light, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetLightfv( GLenum light, GLenum pname,
//C                                         GLfloat *params );
void  glGetLightfv(GLenum light, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetLightiv( GLenum light, GLenum pname,
//C                                         GLint *params );
void  glGetLightiv(GLenum light, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glLightModelf( GLenum pname, GLfloat param );
void  glLightModelf(GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glLightModeli( GLenum pname, GLint param );
void  glLightModeli(GLenum pname, GLint param);
//C     GLAPI void GLAPIENTRY glLightModelfv( GLenum pname, const GLfloat *params );
void  glLightModelfv(GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glLightModeliv( GLenum pname, const GLint *params );
void  glLightModeliv(GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glMaterialf( GLenum face, GLenum pname, GLfloat param );
void  glMaterialf(GLenum face, GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glMateriali( GLenum face, GLenum pname, GLint param );
void  glMateriali(GLenum face, GLenum pname, GLint param);
//C     GLAPI void GLAPIENTRY glMaterialfv( GLenum face, GLenum pname, const GLfloat *params );
void  glMaterialfv(GLenum face, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glMaterialiv( GLenum face, GLenum pname, const GLint *params );
void  glMaterialiv(GLenum face, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params );
void  glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetMaterialiv( GLenum face, GLenum pname, GLint *params );
void  glGetMaterialiv(GLenum face, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glColorMaterial( GLenum face, GLenum mode );
void  glColorMaterial(GLenum face, GLenum mode);


/*
 * Raster functions
 */

//C     GLAPI void GLAPIENTRY glPixelZoom( GLfloat xfactor, GLfloat yfactor );
void  glPixelZoom(GLfloat xfactor, GLfloat yfactor);

//C     GLAPI void GLAPIENTRY glPixelStoref( GLenum pname, GLfloat param );
void  glPixelStoref(GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glPixelStorei( GLenum pname, GLint param );
void  glPixelStorei(GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glPixelTransferf( GLenum pname, GLfloat param );
void  glPixelTransferf(GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glPixelTransferi( GLenum pname, GLint param );
void  glPixelTransferi(GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glPixelMapfv( GLenum map, GLsizei mapsize,
//C                                         const GLfloat *values );
void  glPixelMapfv(GLenum map, GLsizei mapsize, GLfloat *values);
//C     GLAPI void GLAPIENTRY glPixelMapuiv( GLenum map, GLsizei mapsize,
//C                                          const GLuint *values );
void  glPixelMapuiv(GLenum map, GLsizei mapsize, GLuint *values);
//C     GLAPI void GLAPIENTRY glPixelMapusv( GLenum map, GLsizei mapsize,
//C                                          const GLushort *values );
void  glPixelMapusv(GLenum map, GLsizei mapsize, GLushort *values);

//C     GLAPI void GLAPIENTRY glGetPixelMapfv( GLenum map, GLfloat *values );
void  glGetPixelMapfv(GLenum map, GLfloat *values);
//C     GLAPI void GLAPIENTRY glGetPixelMapuiv( GLenum map, GLuint *values );
void  glGetPixelMapuiv(GLenum map, GLuint *values);
//C     GLAPI void GLAPIENTRY glGetPixelMapusv( GLenum map, GLushort *values );
void  glGetPixelMapusv(GLenum map, GLushort *values);

//C     GLAPI void GLAPIENTRY glBitmap( GLsizei width, GLsizei height,
//C                                     GLfloat xorig, GLfloat yorig,
//C                                     GLfloat xmove, GLfloat ymove,
//C                                     const GLubyte *bitmap );
void  glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte *bitmap);

//C     GLAPI void GLAPIENTRY glReadPixels( GLint x, GLint y,
//C                                         GLsizei width, GLsizei height,
//C                                         GLenum format, GLenum type,
//C                                         GLvoid *pixels );
void  glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glDrawPixels( GLsizei width, GLsizei height,
//C                                         GLenum format, GLenum type,
//C                                         const GLvoid *pixels );
void  glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glCopyPixels( GLint x, GLint y,
//C                                         GLsizei width, GLsizei height,
//C                                         GLenum type );
void  glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);

/*
 * Stenciling
 */

//C     GLAPI void GLAPIENTRY glStencilFunc( GLenum func, GLint ref, GLuint mask );
void  glStencilFunc(GLenum func, GLint ref, GLuint mask);

//C     GLAPI void GLAPIENTRY glStencilMask( GLuint mask );
void  glStencilMask(GLuint mask);

//C     GLAPI void GLAPIENTRY glStencilOp( GLenum fail, GLenum zfail, GLenum zpass );
void  glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);

//C     GLAPI void GLAPIENTRY glClearStencil( GLint s );
void  glClearStencil(GLint s);



/*
 * Texture mapping
 */

//C     GLAPI void GLAPIENTRY glTexGend( GLenum coord, GLenum pname, GLdouble param );
void  glTexGend(GLenum coord, GLenum pname, GLdouble param);
//C     GLAPI void GLAPIENTRY glTexGenf( GLenum coord, GLenum pname, GLfloat param );
void  glTexGenf(GLenum coord, GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glTexGeni( GLenum coord, GLenum pname, GLint param );
void  glTexGeni(GLenum coord, GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glTexGendv( GLenum coord, GLenum pname, const GLdouble *params );
void  glTexGendv(GLenum coord, GLenum pname, GLdouble *params);
//C     GLAPI void GLAPIENTRY glTexGenfv( GLenum coord, GLenum pname, const GLfloat *params );
void  glTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glTexGeniv( GLenum coord, GLenum pname, const GLint *params );
void  glTexGeniv(GLenum coord, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetTexGendv( GLenum coord, GLenum pname, GLdouble *params );
void  glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
//C     GLAPI void GLAPIENTRY glGetTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
void  glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetTexGeniv( GLenum coord, GLenum pname, GLint *params );
void  glGetTexGeniv(GLenum coord, GLenum pname, GLint *params);


//C     GLAPI void GLAPIENTRY glTexEnvf( GLenum target, GLenum pname, GLfloat param );
void  glTexEnvf(GLenum target, GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glTexEnvi( GLenum target, GLenum pname, GLint param );
void  glTexEnvi(GLenum target, GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glTexEnvfv( GLenum target, GLenum pname, const GLfloat *params );
void  glTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glTexEnviv( GLenum target, GLenum pname, const GLint *params );
void  glTexEnviv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
void  glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetTexEnviv( GLenum target, GLenum pname, GLint *params );
void  glGetTexEnviv(GLenum target, GLenum pname, GLint *params);


//C     GLAPI void GLAPIENTRY glTexParameterf( GLenum target, GLenum pname, GLfloat param );
void  glTexParameterf(GLenum target, GLenum pname, GLfloat param);
//C     GLAPI void GLAPIENTRY glTexParameteri( GLenum target, GLenum pname, GLint param );
void  glTexParameteri(GLenum target, GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glTexParameterfv( GLenum target, GLenum pname,
//C                                               const GLfloat *params );
void  glTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glTexParameteriv( GLenum target, GLenum pname,
//C                                               const GLint *params );
void  glTexParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetTexParameterfv( GLenum target,
//C                                                GLenum pname, GLfloat *params);
void  glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetTexParameteriv( GLenum target,
//C                                                GLenum pname, GLint *params );
void  glGetTexParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glGetTexLevelParameterfv( GLenum target, GLint level,
//C                                                     GLenum pname, GLfloat *params );
void  glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
//C     GLAPI void GLAPIENTRY glGetTexLevelParameteriv( GLenum target, GLint level,
//C                                                     GLenum pname, GLint *params );
void  glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);


//C     GLAPI void GLAPIENTRY glTexImage1D( GLenum target, GLint level,
//C                                         GLint internalFormat,
//C                                         GLsizei width, GLint border,
//C                                         GLenum format, GLenum type,
//C                                         const GLvoid *pixels );
void  glTexImage1D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glTexImage2D( GLenum target, GLint level,
//C                                         GLint internalFormat,
//C                                         GLsizei width, GLsizei height,
//C                                         GLint border, GLenum format, GLenum type,
//C                                         const GLvoid *pixels );
void  glTexImage2D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glGetTexImage( GLenum target, GLint level,
//C                                          GLenum format, GLenum type,
//C                                          GLvoid *pixels );
void  glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);


/* 1.1 functions */

//C     GLAPI void GLAPIENTRY glGenTextures( GLsizei n, GLuint *textures );
void  glGenTextures(GLsizei n, GLuint *textures);

//C     GLAPI void GLAPIENTRY glDeleteTextures( GLsizei n, const GLuint *textures);
void  glDeleteTextures(GLsizei n, GLuint *textures);

//C     GLAPI void GLAPIENTRY glBindTexture( GLenum target, GLuint texture );
void  glBindTexture(GLenum target, GLuint texture);

//C     GLAPI void GLAPIENTRY glPrioritizeTextures( GLsizei n,
//C                                                 const GLuint *textures,
//C                                                 const GLclampf *priorities );
void  glPrioritizeTextures(GLsizei n, GLuint *textures, GLclampf *priorities);

//C     GLAPI GLboolean GLAPIENTRY glAreTexturesResident( GLsizei n,
//C                                                       const GLuint *textures,
//C                                                       GLboolean *residences );
GLboolean  glAreTexturesResident(GLsizei n, GLuint *textures, GLboolean *residences);

//C     GLAPI GLboolean GLAPIENTRY glIsTexture( GLuint texture );
GLboolean  glIsTexture(GLuint texture);


//C     GLAPI void GLAPIENTRY glTexSubImage1D( GLenum target, GLint level,
//C                                            GLint xoffset,
//C                                            GLsizei width, GLenum format,
//C                                            GLenum type, const GLvoid *pixels );
void  glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);


//C     GLAPI void GLAPIENTRY glTexSubImage2D( GLenum target, GLint level,
//C                                            GLint xoffset, GLint yoffset,
//C                                            GLsizei width, GLsizei height,
//C                                            GLenum format, GLenum type,
//C                                            const GLvoid *pixels );
void  glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);


//C     GLAPI void GLAPIENTRY glCopyTexImage1D( GLenum target, GLint level,
//C                                             GLenum internalformat,
//C                                             GLint x, GLint y,
//C                                             GLsizei width, GLint border );
void  glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);


//C     GLAPI void GLAPIENTRY glCopyTexImage2D( GLenum target, GLint level,
//C                                             GLenum internalformat,
//C                                             GLint x, GLint y,
//C                                             GLsizei width, GLsizei height,
//C                                             GLint border );
void  glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);


//C     GLAPI void GLAPIENTRY glCopyTexSubImage1D( GLenum target, GLint level,
//C                                                GLint xoffset, GLint x, GLint y,
//C                                                GLsizei width );
void  glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);


//C     GLAPI void GLAPIENTRY glCopyTexSubImage2D( GLenum target, GLint level,
//C                                                GLint xoffset, GLint yoffset,
//C                                                GLint x, GLint y,
//C                                                GLsizei width, GLsizei height );
void  glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);


/*
 * Evaluators
 */

//C     GLAPI void GLAPIENTRY glMap1d( GLenum target, GLdouble u1, GLdouble u2,
//C                                    GLint stride,
//C                                    GLint order, const GLdouble *points );
void  glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble *points);
//C     GLAPI void GLAPIENTRY glMap1f( GLenum target, GLfloat u1, GLfloat u2,
//C                                    GLint stride,
//C                                    GLint order, const GLfloat *points );
void  glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat *points);

//C     GLAPI void GLAPIENTRY glMap2d( GLenum target,
//C     		     GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
//C     		     GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
//C     		     const GLdouble *points );
void  glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble *points);
//C     GLAPI void GLAPIENTRY glMap2f( GLenum target,
//C     		     GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
//C     		     GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
//C     		     const GLfloat *points );
void  glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat *points);

//C     GLAPI void GLAPIENTRY glGetMapdv( GLenum target, GLenum query, GLdouble *v );
void  glGetMapdv(GLenum target, GLenum query, GLdouble *v);
//C     GLAPI void GLAPIENTRY glGetMapfv( GLenum target, GLenum query, GLfloat *v );
void  glGetMapfv(GLenum target, GLenum query, GLfloat *v);
//C     GLAPI void GLAPIENTRY glGetMapiv( GLenum target, GLenum query, GLint *v );
void  glGetMapiv(GLenum target, GLenum query, GLint *v);

//C     GLAPI void GLAPIENTRY glEvalCoord1d( GLdouble u );
void  glEvalCoord1d(GLdouble u);
//C     GLAPI void GLAPIENTRY glEvalCoord1f( GLfloat u );
void  glEvalCoord1f(GLfloat u);

//C     GLAPI void GLAPIENTRY glEvalCoord1dv( const GLdouble *u );
void  glEvalCoord1dv(GLdouble *u);
//C     GLAPI void GLAPIENTRY glEvalCoord1fv( const GLfloat *u );
void  glEvalCoord1fv(GLfloat *u);

//C     GLAPI void GLAPIENTRY glEvalCoord2d( GLdouble u, GLdouble v );
void  glEvalCoord2d(GLdouble u, GLdouble v);
//C     GLAPI void GLAPIENTRY glEvalCoord2f( GLfloat u, GLfloat v );
void  glEvalCoord2f(GLfloat u, GLfloat v);

//C     GLAPI void GLAPIENTRY glEvalCoord2dv( const GLdouble *u );
void  glEvalCoord2dv(GLdouble *u);
//C     GLAPI void GLAPIENTRY glEvalCoord2fv( const GLfloat *u );
void  glEvalCoord2fv(GLfloat *u);

//C     GLAPI void GLAPIENTRY glMapGrid1d( GLint un, GLdouble u1, GLdouble u2 );
void  glMapGrid1d(GLint un, GLdouble u1, GLdouble u2);
//C     GLAPI void GLAPIENTRY glMapGrid1f( GLint un, GLfloat u1, GLfloat u2 );
void  glMapGrid1f(GLint un, GLfloat u1, GLfloat u2);

//C     GLAPI void GLAPIENTRY glMapGrid2d( GLint un, GLdouble u1, GLdouble u2,
//C                                        GLint vn, GLdouble v1, GLdouble v2 );
void  glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
//C     GLAPI void GLAPIENTRY glMapGrid2f( GLint un, GLfloat u1, GLfloat u2,
//C                                        GLint vn, GLfloat v1, GLfloat v2 );
void  glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);

//C     GLAPI void GLAPIENTRY glEvalPoint1( GLint i );
void  glEvalPoint1(GLint i);

//C     GLAPI void GLAPIENTRY glEvalPoint2( GLint i, GLint j );
void  glEvalPoint2(GLint i, GLint j);

//C     GLAPI void GLAPIENTRY glEvalMesh1( GLenum mode, GLint i1, GLint i2 );
void  glEvalMesh1(GLenum mode, GLint i1, GLint i2);

//C     GLAPI void GLAPIENTRY glEvalMesh2( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 );
void  glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);


/*
 * Fog
 */

//C     GLAPI void GLAPIENTRY glFogf( GLenum pname, GLfloat param );
void  glFogf(GLenum pname, GLfloat param);

//C     GLAPI void GLAPIENTRY glFogi( GLenum pname, GLint param );
void  glFogi(GLenum pname, GLint param);

//C     GLAPI void GLAPIENTRY glFogfv( GLenum pname, const GLfloat *params );
void  glFogfv(GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glFogiv( GLenum pname, const GLint *params );
void  glFogiv(GLenum pname, GLint *params);


/*
 * Selection and Feedback
 */

//C     GLAPI void GLAPIENTRY glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );
void  glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);

//C     GLAPI void GLAPIENTRY glPassThrough( GLfloat token );
void  glPassThrough(GLfloat token);

//C     GLAPI void GLAPIENTRY glSelectBuffer( GLsizei size, GLuint *buffer );
void  glSelectBuffer(GLsizei size, GLuint *buffer);

//C     GLAPI void GLAPIENTRY glInitNames( void );
void  glInitNames();

//C     GLAPI void GLAPIENTRY glLoadName( GLuint name );
void  glLoadName(GLuint name);

//C     GLAPI void GLAPIENTRY glPushName( GLuint name );
void  glPushName(GLuint name);

//C     GLAPI void GLAPIENTRY glPopName( void );
void  glPopName();



/*
 * OpenGL 1.2
 */

//C     #define GL_RESCALE_NORMAL			0x803A
//C     #define GL_CLAMP_TO_EDGE			0x812F
const GL_RESCALE_NORMAL = 0x803A;
//C     #define GL_MAX_ELEMENTS_VERTICES		0x80E8
const GL_CLAMP_TO_EDGE = 0x812F;
//C     #define GL_MAX_ELEMENTS_INDICES			0x80E9
const GL_MAX_ELEMENTS_VERTICES = 0x80E8;
//C     #define GL_BGR					0x80E0
const GL_MAX_ELEMENTS_INDICES = 0x80E9;
//C     #define GL_BGRA					0x80E1
const GL_BGR = 0x80E0;
//C     #define GL_UNSIGNED_BYTE_3_3_2			0x8032
const GL_BGRA = 0x80E1;
//C     #define GL_UNSIGNED_BYTE_2_3_3_REV		0x8362
const GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
//C     #define GL_UNSIGNED_SHORT_5_6_5			0x8363
const GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
//C     #define GL_UNSIGNED_SHORT_5_6_5_REV		0x8364
const GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
//C     #define GL_UNSIGNED_SHORT_4_4_4_4		0x8033
const GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
//C     #define GL_UNSIGNED_SHORT_4_4_4_4_REV		0x8365
const GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
//C     #define GL_UNSIGNED_SHORT_5_5_5_1		0x8034
const GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
//C     #define GL_UNSIGNED_SHORT_1_5_5_5_REV		0x8366
const GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
//C     #define GL_UNSIGNED_INT_8_8_8_8			0x8035
const GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
//C     #define GL_UNSIGNED_INT_8_8_8_8_REV		0x8367
const GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
//C     #define GL_UNSIGNED_INT_10_10_10_2		0x8036
const GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
//C     #define GL_UNSIGNED_INT_2_10_10_10_REV		0x8368
const GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
//C     #define GL_LIGHT_MODEL_COLOR_CONTROL		0x81F8
const GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
//C     #define GL_SINGLE_COLOR				0x81F9
const GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
//C     #define GL_SEPARATE_SPECULAR_COLOR		0x81FA
const GL_SINGLE_COLOR = 0x81F9;
//C     #define GL_TEXTURE_MIN_LOD			0x813A
const GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
//C     #define GL_TEXTURE_MAX_LOD			0x813B
const GL_TEXTURE_MIN_LOD = 0x813A;
//C     #define GL_TEXTURE_BASE_LEVEL			0x813C
const GL_TEXTURE_MAX_LOD = 0x813B;
//C     #define GL_TEXTURE_MAX_LEVEL			0x813D
const GL_TEXTURE_BASE_LEVEL = 0x813C;
//C     #define GL_SMOOTH_POINT_SIZE_RANGE		0x0B12
const GL_TEXTURE_MAX_LEVEL = 0x813D;
//C     #define GL_SMOOTH_POINT_SIZE_GRANULARITY	0x0B13
const GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
//C     #define GL_SMOOTH_LINE_WIDTH_RANGE		0x0B22
const GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
//C     #define GL_SMOOTH_LINE_WIDTH_GRANULARITY	0x0B23
const GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
//C     #define GL_ALIASED_POINT_SIZE_RANGE		0x846D
const GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
//C     #define GL_ALIASED_LINE_WIDTH_RANGE		0x846E
const GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
//C     #define GL_PACK_SKIP_IMAGES			0x806B
const GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
//C     #define GL_PACK_IMAGE_HEIGHT			0x806C
const GL_PACK_SKIP_IMAGES = 0x806B;
//C     #define GL_UNPACK_SKIP_IMAGES			0x806D
const GL_PACK_IMAGE_HEIGHT = 0x806C;
//C     #define GL_UNPACK_IMAGE_HEIGHT			0x806E
const GL_UNPACK_SKIP_IMAGES = 0x806D;
//C     #define GL_TEXTURE_3D				0x806F
const GL_UNPACK_IMAGE_HEIGHT = 0x806E;
//C     #define GL_PROXY_TEXTURE_3D			0x8070
const GL_TEXTURE_3D = 0x806F;
//C     #define GL_TEXTURE_DEPTH			0x8071
const GL_PROXY_TEXTURE_3D = 0x8070;
//C     #define GL_TEXTURE_WRAP_R			0x8072
const GL_TEXTURE_DEPTH = 0x8071;
//C     #define GL_MAX_3D_TEXTURE_SIZE			0x8073
const GL_TEXTURE_WRAP_R = 0x8072;
//C     #define GL_TEXTURE_BINDING_3D			0x806A
const GL_MAX_3D_TEXTURE_SIZE = 0x8073;

const GL_TEXTURE_BINDING_3D = 0x806A;
//C     GLAPI void GLAPIENTRY glDrawRangeElements( GLenum mode, GLuint start,
//C     	GLuint end, GLsizei count, GLenum type, const GLvoid *indices );
void  glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);

//C     GLAPI void GLAPIENTRY glTexImage3D( GLenum target, GLint level,
//C                                           GLint internalFormat,
//C                                           GLsizei width, GLsizei height,
//C                                           GLsizei depth, GLint border,
//C                                           GLenum format, GLenum type,
//C                                           const GLvoid *pixels );
void  glTexImage3D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glTexSubImage3D( GLenum target, GLint level,
//C                                              GLint xoffset, GLint yoffset,
//C                                              GLint zoffset, GLsizei width,
//C                                              GLsizei height, GLsizei depth,
//C                                              GLenum format,
//C                                              GLenum type, const GLvoid *pixels);
void  glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);

//C     GLAPI void GLAPIENTRY glCopyTexSubImage3D( GLenum target, GLint level,
//C                                                  GLint xoffset, GLint yoffset,
//C                                                  GLint zoffset, GLint x,
//C                                                  GLint y, GLsizei width,
//C                                                  GLsizei height );
void  glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);

//C     typedef void (APIENTRYP PFNGLDRAWRANGEELEMENTSPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
alias void  function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices)PFNGLDRAWRANGEELEMENTSPROC;
//C     typedef void (APIENTRYP PFNGLTEXIMAGE3DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
alias void  function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels)PFNGLTEXIMAGE3DPROC;
//C     typedef void (APIENTRYP PFNGLTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels)PFNGLTEXSUBIMAGE3DPROC;
//C     typedef void (APIENTRYP PFNGLCOPYTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)PFNGLCOPYTEXSUBIMAGE3DPROC;


/*
 * GL_ARB_imaging
 */

//C     #define GL_CONSTANT_COLOR			0x8001
//C     #define GL_ONE_MINUS_CONSTANT_COLOR		0x8002
const GL_CONSTANT_COLOR = 0x8001;
//C     #define GL_CONSTANT_ALPHA			0x8003
const GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
//C     #define GL_ONE_MINUS_CONSTANT_ALPHA		0x8004
const GL_CONSTANT_ALPHA = 0x8003;
//C     #define GL_COLOR_TABLE				0x80D0
const GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
//C     #define GL_POST_CONVOLUTION_COLOR_TABLE		0x80D1
const GL_COLOR_TABLE = 0x80D0;
//C     #define GL_POST_COLOR_MATRIX_COLOR_TABLE	0x80D2
const GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
//C     #define GL_PROXY_COLOR_TABLE			0x80D3
const GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
//C     #define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE	0x80D4
const GL_PROXY_COLOR_TABLE = 0x80D3;
//C     #define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE	0x80D5
const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
//C     #define GL_COLOR_TABLE_SCALE			0x80D6
const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
//C     #define GL_COLOR_TABLE_BIAS			0x80D7
const GL_COLOR_TABLE_SCALE = 0x80D6;
//C     #define GL_COLOR_TABLE_FORMAT			0x80D8
const GL_COLOR_TABLE_BIAS = 0x80D7;
//C     #define GL_COLOR_TABLE_WIDTH			0x80D9
const GL_COLOR_TABLE_FORMAT = 0x80D8;
//C     #define GL_COLOR_TABLE_RED_SIZE			0x80DA
const GL_COLOR_TABLE_WIDTH = 0x80D9;
//C     #define GL_COLOR_TABLE_GREEN_SIZE		0x80DB
const GL_COLOR_TABLE_RED_SIZE = 0x80DA;
//C     #define GL_COLOR_TABLE_BLUE_SIZE		0x80DC
const GL_COLOR_TABLE_GREEN_SIZE = 0x80DB;
//C     #define GL_COLOR_TABLE_ALPHA_SIZE		0x80DD
const GL_COLOR_TABLE_BLUE_SIZE = 0x80DC;
//C     #define GL_COLOR_TABLE_LUMINANCE_SIZE		0x80DE
const GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD;
//C     #define GL_COLOR_TABLE_INTENSITY_SIZE		0x80DF
const GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE;
//C     #define GL_CONVOLUTION_1D			0x8010
const GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF;
//C     #define GL_CONVOLUTION_2D			0x8011
const GL_CONVOLUTION_1D = 0x8010;
//C     #define GL_SEPARABLE_2D				0x8012
const GL_CONVOLUTION_2D = 0x8011;
//C     #define GL_CONVOLUTION_BORDER_MODE		0x8013
const GL_SEPARABLE_2D = 0x8012;
//C     #define GL_CONVOLUTION_FILTER_SCALE		0x8014
const GL_CONVOLUTION_BORDER_MODE = 0x8013;
//C     #define GL_CONVOLUTION_FILTER_BIAS		0x8015
const GL_CONVOLUTION_FILTER_SCALE = 0x8014;
//C     #define GL_REDUCE				0x8016
const GL_CONVOLUTION_FILTER_BIAS = 0x8015;
//C     #define GL_CONVOLUTION_FORMAT			0x8017
const GL_REDUCE = 0x8016;
//C     #define GL_CONVOLUTION_WIDTH			0x8018
const GL_CONVOLUTION_FORMAT = 0x8017;
//C     #define GL_CONVOLUTION_HEIGHT			0x8019
const GL_CONVOLUTION_WIDTH = 0x8018;
//C     #define GL_MAX_CONVOLUTION_WIDTH		0x801A
const GL_CONVOLUTION_HEIGHT = 0x8019;
//C     #define GL_MAX_CONVOLUTION_HEIGHT		0x801B
const GL_MAX_CONVOLUTION_WIDTH = 0x801A;
//C     #define GL_POST_CONVOLUTION_RED_SCALE		0x801C
const GL_MAX_CONVOLUTION_HEIGHT = 0x801B;
//C     #define GL_POST_CONVOLUTION_GREEN_SCALE		0x801D
const GL_POST_CONVOLUTION_RED_SCALE = 0x801C;
//C     #define GL_POST_CONVOLUTION_BLUE_SCALE		0x801E
const GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D;
//C     #define GL_POST_CONVOLUTION_ALPHA_SCALE		0x801F
const GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E;
//C     #define GL_POST_CONVOLUTION_RED_BIAS		0x8020
const GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F;
//C     #define GL_POST_CONVOLUTION_GREEN_BIAS		0x8021
const GL_POST_CONVOLUTION_RED_BIAS = 0x8020;
//C     #define GL_POST_CONVOLUTION_BLUE_BIAS		0x8022
const GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021;
//C     #define GL_POST_CONVOLUTION_ALPHA_BIAS		0x8023
const GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022;
//C     #define GL_CONSTANT_BORDER			0x8151
const GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023;
//C     #define GL_REPLICATE_BORDER			0x8153
const GL_CONSTANT_BORDER = 0x8151;
//C     #define GL_CONVOLUTION_BORDER_COLOR		0x8154
const GL_REPLICATE_BORDER = 0x8153;
//C     #define GL_COLOR_MATRIX				0x80B1
const GL_CONVOLUTION_BORDER_COLOR = 0x8154;
//C     #define GL_COLOR_MATRIX_STACK_DEPTH		0x80B2
const GL_COLOR_MATRIX = 0x80B1;
//C     #define GL_MAX_COLOR_MATRIX_STACK_DEPTH		0x80B3
const GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2;
//C     #define GL_POST_COLOR_MATRIX_RED_SCALE		0x80B4
const GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3;
//C     #define GL_POST_COLOR_MATRIX_GREEN_SCALE	0x80B5
const GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4;
//C     #define GL_POST_COLOR_MATRIX_BLUE_SCALE		0x80B6
const GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5;
//C     #define GL_POST_COLOR_MATRIX_ALPHA_SCALE	0x80B7
const GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6;
//C     #define GL_POST_COLOR_MATRIX_RED_BIAS		0x80B8
const GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7;
//C     #define GL_POST_COLOR_MATRIX_GREEN_BIAS		0x80B9
const GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8;
//C     #define GL_POST_COLOR_MATRIX_BLUE_BIAS		0x80BA
const GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9;
//C     #define GL_POST_COLOR_MATRIX_ALPHA_BIAS		0x80BB
const GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA;
//C     #define GL_HISTOGRAM				0x8024
const GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB;
//C     #define GL_PROXY_HISTOGRAM			0x8025
const GL_HISTOGRAM = 0x8024;
//C     #define GL_HISTOGRAM_WIDTH			0x8026
const GL_PROXY_HISTOGRAM = 0x8025;
//C     #define GL_HISTOGRAM_FORMAT			0x8027
const GL_HISTOGRAM_WIDTH = 0x8026;
//C     #define GL_HISTOGRAM_RED_SIZE			0x8028
const GL_HISTOGRAM_FORMAT = 0x8027;
//C     #define GL_HISTOGRAM_GREEN_SIZE			0x8029
const GL_HISTOGRAM_RED_SIZE = 0x8028;
//C     #define GL_HISTOGRAM_BLUE_SIZE			0x802A
const GL_HISTOGRAM_GREEN_SIZE = 0x8029;
//C     #define GL_HISTOGRAM_ALPHA_SIZE			0x802B
const GL_HISTOGRAM_BLUE_SIZE = 0x802A;
//C     #define GL_HISTOGRAM_LUMINANCE_SIZE		0x802C
const GL_HISTOGRAM_ALPHA_SIZE = 0x802B;
//C     #define GL_HISTOGRAM_SINK			0x802D
const GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C;
//C     #define GL_MINMAX				0x802E
const GL_HISTOGRAM_SINK = 0x802D;
//C     #define GL_MINMAX_FORMAT			0x802F
const GL_MINMAX = 0x802E;
//C     #define GL_MINMAX_SINK				0x8030
const GL_MINMAX_FORMAT = 0x802F;
//C     #define GL_TABLE_TOO_LARGE			0x8031
const GL_MINMAX_SINK = 0x8030;
//C     #define GL_BLEND_EQUATION			0x8009
const GL_TABLE_TOO_LARGE = 0x8031;
//C     #define GL_MIN					0x8007
const GL_BLEND_EQUATION = 0x8009;
//C     #define GL_MAX					0x8008
const GL_MIN = 0x8007;
//C     #define GL_FUNC_ADD				0x8006
const GL_MAX = 0x8008;
//C     #define GL_FUNC_SUBTRACT			0x800A
const GL_FUNC_ADD = 0x8006;
//C     #define GL_FUNC_REVERSE_SUBTRACT		0x800B
const GL_FUNC_SUBTRACT = 0x800A;
//C     #define GL_BLEND_COLOR				0x8005
const GL_FUNC_REVERSE_SUBTRACT = 0x800B;

const GL_BLEND_COLOR = 0x8005;

//C     GLAPI void GLAPIENTRY glColorTable( GLenum target, GLenum internalformat,
//C                                         GLsizei width, GLenum format,
//C                                         GLenum type, const GLvoid *table );
void  glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);

//C     GLAPI void GLAPIENTRY glColorSubTable( GLenum target,
//C                                            GLsizei start, GLsizei count,
//C                                            GLenum format, GLenum type,
//C                                            const GLvoid *data );
void  glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);

//C     GLAPI void GLAPIENTRY glColorTableParameteriv(GLenum target, GLenum pname,
//C                                                   const GLint *params);
void  glColorTableParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glColorTableParameterfv(GLenum target, GLenum pname,
//C                                                   const GLfloat *params);
void  glColorTableParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glCopyColorSubTable( GLenum target, GLsizei start,
//C                                                GLint x, GLint y, GLsizei width );
void  glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);

//C     GLAPI void GLAPIENTRY glCopyColorTable( GLenum target, GLenum internalformat,
//C                                             GLint x, GLint y, GLsizei width );
void  glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);

//C     GLAPI void GLAPIENTRY glGetColorTable( GLenum target, GLenum format,
//C                                            GLenum type, GLvoid *table );
void  glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid *table);

//C     GLAPI void GLAPIENTRY glGetColorTableParameterfv( GLenum target, GLenum pname,
//C                                                       GLfloat *params );
void  glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glGetColorTableParameteriv( GLenum target, GLenum pname,
//C                                                       GLint *params );
void  glGetColorTableParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glBlendEquation( GLenum mode );
void  glBlendEquation(GLenum mode);

//C     GLAPI void GLAPIENTRY glBlendColor( GLclampf red, GLclampf green,
//C                                         GLclampf blue, GLclampf alpha );
void  glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

//C     GLAPI void GLAPIENTRY glHistogram( GLenum target, GLsizei width,
//C     				   GLenum internalformat, GLboolean sink );
void  glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);

//C     GLAPI void GLAPIENTRY glResetHistogram( GLenum target );
void  glResetHistogram(GLenum target);

//C     GLAPI void GLAPIENTRY glGetHistogram( GLenum target, GLboolean reset,
//C     				      GLenum format, GLenum type,
//C     				      GLvoid *values );
void  glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);

//C     GLAPI void GLAPIENTRY glGetHistogramParameterfv( GLenum target, GLenum pname,
//C     						 GLfloat *params );
void  glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glGetHistogramParameteriv( GLenum target, GLenum pname,
//C     						 GLint *params );
void  glGetHistogramParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glMinmax( GLenum target, GLenum internalformat,
//C     				GLboolean sink );
void  glMinmax(GLenum target, GLenum internalformat, GLboolean sink);

//C     GLAPI void GLAPIENTRY glResetMinmax( GLenum target );
void  glResetMinmax(GLenum target);

//C     GLAPI void GLAPIENTRY glGetMinmax( GLenum target, GLboolean reset,
//C                                        GLenum format, GLenum types,
//C                                        GLvoid *values );
void  glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum types, GLvoid *values);

//C     GLAPI void GLAPIENTRY glGetMinmaxParameterfv( GLenum target, GLenum pname,
//C     					      GLfloat *params );
void  glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glGetMinmaxParameteriv( GLenum target, GLenum pname,
//C     					      GLint *params );
void  glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glConvolutionFilter1D( GLenum target,
//C     	GLenum internalformat, GLsizei width, GLenum format, GLenum type,
//C     	const GLvoid *image );
void  glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);

//C     GLAPI void GLAPIENTRY glConvolutionFilter2D( GLenum target,
//C     	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
//C     	GLenum type, const GLvoid *image );
void  glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);

//C     GLAPI void GLAPIENTRY glConvolutionParameterf( GLenum target, GLenum pname,
//C     	GLfloat params );
void  glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params);

//C     GLAPI void GLAPIENTRY glConvolutionParameterfv( GLenum target, GLenum pname,
//C     	const GLfloat *params );
void  glConvolutionParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glConvolutionParameteri( GLenum target, GLenum pname,
//C     	GLint params );
void  glConvolutionParameteri(GLenum target, GLenum pname, GLint params);

//C     GLAPI void GLAPIENTRY glConvolutionParameteriv( GLenum target, GLenum pname,
//C     	const GLint *params );
void  glConvolutionParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glCopyConvolutionFilter1D( GLenum target,
//C     	GLenum internalformat, GLint x, GLint y, GLsizei width );
void  glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);

//C     GLAPI void GLAPIENTRY glCopyConvolutionFilter2D( GLenum target,
//C     	GLenum internalformat, GLint x, GLint y, GLsizei width,
//C     	GLsizei height);
void  glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);

//C     GLAPI void GLAPIENTRY glGetConvolutionFilter( GLenum target, GLenum format,
//C     	GLenum type, GLvoid *image );
void  glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid *image);

//C     GLAPI void GLAPIENTRY glGetConvolutionParameterfv( GLenum target, GLenum pname,
//C     	GLfloat *params );
void  glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat *params);

//C     GLAPI void GLAPIENTRY glGetConvolutionParameteriv( GLenum target, GLenum pname,
//C     	GLint *params );
void  glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint *params);

//C     GLAPI void GLAPIENTRY glSeparableFilter2D( GLenum target,
//C     	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
//C     	GLenum type, const GLvoid *row, const GLvoid *column );
void  glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);

//C     GLAPI void GLAPIENTRY glGetSeparableFilter( GLenum target, GLenum format,
//C     	GLenum type, GLvoid *row, GLvoid *column, GLvoid *span );
void  glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);

//C     typedef void (APIENTRYP PFNGLBLENDCOLORPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
alias void  function(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)PFNGLBLENDCOLORPROC;
//C     typedef void (APIENTRYP PFNGLBLENDEQUATIONPROC) (GLenum mode);
alias void  function(GLenum mode)PFNGLBLENDEQUATIONPROC;
//C     typedef void (APIENTRYP PFNGLCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table)PFNGLCOLORTABLEPROC;
//C     typedef void (APIENTRYP PFNGLCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, const GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLCOLORTABLEPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, const GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLCOLORTABLEPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLCOPYCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)PFNGLCOPYCOLORTABLEPROC;
//C     typedef void (APIENTRYP PFNGLGETCOLORTABLEPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *table)PFNGLGETCOLORTABLEPROC;
//C     typedef void (APIENTRYP PFNGLGETCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETCOLORTABLEPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLGETCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETCOLORTABLEPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
alias void  function(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data)PFNGLCOLORSUBTABLEPROC;
//C     typedef void (APIENTRYP PFNGLCOPYCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
alias void  function(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)PFNGLCOPYCOLORSUBTABLEPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image);
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image)PFNGLCONVOLUTIONFILTER1DPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image);
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image)PFNGLCONVOLUTIONFILTER2DPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat params);
alias void  function(GLenum target, GLenum pname, GLfloat params)PFNGLCONVOLUTIONPARAMETERFPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, const GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLCONVOLUTIONPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONPARAMETERIPROC) (GLenum target, GLenum pname, GLint params);
alias void  function(GLenum target, GLenum pname, GLint params)PFNGLCONVOLUTIONPARAMETERIPROC;
//C     typedef void (APIENTRYP PFNGLCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, const GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLCONVOLUTIONPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLCOPYCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)PFNGLCOPYCONVOLUTIONFILTER1DPROC;
//C     typedef void (APIENTRYP PFNGLCOPYCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)PFNGLCOPYCONVOLUTIONFILTER2DPROC;
//C     typedef void (APIENTRYP PFNGLGETCONVOLUTIONFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *image)PFNGLGETCONVOLUTIONFILTERPROC;
//C     typedef void (APIENTRYP PFNGLGETCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETCONVOLUTIONPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLGETCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETCONVOLUTIONPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLGETSEPARABLEFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)PFNGLGETSEPARABLEFILTERPROC;
//C     typedef void (APIENTRYP PFNGLSEPARABLEFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column);
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column)PFNGLSEPARABLEFILTER2DPROC;
//C     typedef void (APIENTRYP PFNGLGETHISTOGRAMPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void  function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)PFNGLGETHISTOGRAMPROC;
//C     typedef void (APIENTRYP PFNGLGETHISTOGRAMPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETHISTOGRAMPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLGETHISTOGRAMPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETHISTOGRAMPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLGETMINMAXPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void  function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)PFNGLGETMINMAXPROC;
//C     typedef void (APIENTRYP PFNGLGETMINMAXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETMINMAXPARAMETERFVPROC;
//C     typedef void (APIENTRYP PFNGLGETMINMAXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETMINMAXPARAMETERIVPROC;
//C     typedef void (APIENTRYP PFNGLHISTOGRAMPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias void  function(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)PFNGLHISTOGRAMPROC;
//C     typedef void (APIENTRYP PFNGLMINMAXPROC) (GLenum target, GLenum internalformat, GLboolean sink);
alias void  function(GLenum target, GLenum internalformat, GLboolean sink)PFNGLMINMAXPROC;
//C     typedef void (APIENTRYP PFNGLRESETHISTOGRAMPROC) (GLenum target);
alias void  function(GLenum target)PFNGLRESETHISTOGRAMPROC;
//C     typedef void (APIENTRYP PFNGLRESETMINMAXPROC) (GLenum target);
alias void  function(GLenum target)PFNGLRESETMINMAXPROC;



/*
 * OpenGL 1.3
 */

/* multitexture */
//C     #define GL_TEXTURE0				0x84C0
//C     #define GL_TEXTURE1				0x84C1
const GL_TEXTURE0 = 0x84C0;
//C     #define GL_TEXTURE2				0x84C2
const GL_TEXTURE1 = 0x84C1;
//C     #define GL_TEXTURE3				0x84C3
const GL_TEXTURE2 = 0x84C2;
//C     #define GL_TEXTURE4				0x84C4
const GL_TEXTURE3 = 0x84C3;
//C     #define GL_TEXTURE5				0x84C5
const GL_TEXTURE4 = 0x84C4;
//C     #define GL_TEXTURE6				0x84C6
const GL_TEXTURE5 = 0x84C5;
//C     #define GL_TEXTURE7				0x84C7
const GL_TEXTURE6 = 0x84C6;
//C     #define GL_TEXTURE8				0x84C8
const GL_TEXTURE7 = 0x84C7;
//C     #define GL_TEXTURE9				0x84C9
const GL_TEXTURE8 = 0x84C8;
//C     #define GL_TEXTURE10				0x84CA
const GL_TEXTURE9 = 0x84C9;
//C     #define GL_TEXTURE11				0x84CB
const GL_TEXTURE10 = 0x84CA;
//C     #define GL_TEXTURE12				0x84CC
const GL_TEXTURE11 = 0x84CB;
//C     #define GL_TEXTURE13				0x84CD
const GL_TEXTURE12 = 0x84CC;
//C     #define GL_TEXTURE14				0x84CE
const GL_TEXTURE13 = 0x84CD;
//C     #define GL_TEXTURE15				0x84CF
const GL_TEXTURE14 = 0x84CE;
//C     #define GL_TEXTURE16				0x84D0
const GL_TEXTURE15 = 0x84CF;
//C     #define GL_TEXTURE17				0x84D1
const GL_TEXTURE16 = 0x84D0;
//C     #define GL_TEXTURE18				0x84D2
const GL_TEXTURE17 = 0x84D1;
//C     #define GL_TEXTURE19				0x84D3
const GL_TEXTURE18 = 0x84D2;
//C     #define GL_TEXTURE20				0x84D4
const GL_TEXTURE19 = 0x84D3;
//C     #define GL_TEXTURE21				0x84D5
const GL_TEXTURE20 = 0x84D4;
//C     #define GL_TEXTURE22				0x84D6
const GL_TEXTURE21 = 0x84D5;
//C     #define GL_TEXTURE23				0x84D7
const GL_TEXTURE22 = 0x84D6;
//C     #define GL_TEXTURE24				0x84D8
const GL_TEXTURE23 = 0x84D7;
//C     #define GL_TEXTURE25				0x84D9
const GL_TEXTURE24 = 0x84D8;
//C     #define GL_TEXTURE26				0x84DA
const GL_TEXTURE25 = 0x84D9;
//C     #define GL_TEXTURE27				0x84DB
const GL_TEXTURE26 = 0x84DA;
//C     #define GL_TEXTURE28				0x84DC
const GL_TEXTURE27 = 0x84DB;
//C     #define GL_TEXTURE29				0x84DD
const GL_TEXTURE28 = 0x84DC;
//C     #define GL_TEXTURE30				0x84DE
const GL_TEXTURE29 = 0x84DD;
//C     #define GL_TEXTURE31				0x84DF
const GL_TEXTURE30 = 0x84DE;
//C     #define GL_ACTIVE_TEXTURE			0x84E0
const GL_TEXTURE31 = 0x84DF;
//C     #define GL_CLIENT_ACTIVE_TEXTURE		0x84E1
const GL_ACTIVE_TEXTURE = 0x84E0;
//C     #define GL_MAX_TEXTURE_UNITS			0x84E2
const GL_CLIENT_ACTIVE_TEXTURE = 0x84E1;
/* texture_cube_map */
const GL_MAX_TEXTURE_UNITS = 0x84E2;
//C     #define GL_NORMAL_MAP				0x8511
//C     #define GL_REFLECTION_MAP			0x8512
const GL_NORMAL_MAP = 0x8511;
//C     #define GL_TEXTURE_CUBE_MAP			0x8513
const GL_REFLECTION_MAP = 0x8512;
//C     #define GL_TEXTURE_BINDING_CUBE_MAP		0x8514
const GL_TEXTURE_CUBE_MAP = 0x8513;
//C     #define GL_TEXTURE_CUBE_MAP_POSITIVE_X		0x8515
const GL_TEXTURE_BINDING_CUBE_MAP = 0x8514;
//C     #define GL_TEXTURE_CUBE_MAP_NEGATIVE_X		0x8516
const GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
//C     #define GL_TEXTURE_CUBE_MAP_POSITIVE_Y		0x8517
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
//C     #define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y		0x8518
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
//C     #define GL_TEXTURE_CUBE_MAP_POSITIVE_Z		0x8519
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
//C     #define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z		0x851A
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
//C     #define GL_PROXY_TEXTURE_CUBE_MAP		0x851B
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
//C     #define GL_MAX_CUBE_MAP_TEXTURE_SIZE		0x851C
const GL_PROXY_TEXTURE_CUBE_MAP = 0x851B;
/* texture_compression */
const GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
//C     #define GL_COMPRESSED_ALPHA			0x84E9
//C     #define GL_COMPRESSED_LUMINANCE			0x84EA
const GL_COMPRESSED_ALPHA = 0x84E9;
//C     #define GL_COMPRESSED_LUMINANCE_ALPHA		0x84EB
const GL_COMPRESSED_LUMINANCE = 0x84EA;
//C     #define GL_COMPRESSED_INTENSITY			0x84EC
const GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
//C     #define GL_COMPRESSED_RGB			0x84ED
const GL_COMPRESSED_INTENSITY = 0x84EC;
//C     #define GL_COMPRESSED_RGBA			0x84EE
const GL_COMPRESSED_RGB = 0x84ED;
//C     #define GL_TEXTURE_COMPRESSION_HINT		0x84EF
const GL_COMPRESSED_RGBA = 0x84EE;
//C     #define GL_TEXTURE_COMPRESSED_IMAGE_SIZE	0x86A0
const GL_TEXTURE_COMPRESSION_HINT = 0x84EF;
//C     #define GL_TEXTURE_COMPRESSED			0x86A1
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
//C     #define GL_NUM_COMPRESSED_TEXTURE_FORMATS	0x86A2
const GL_TEXTURE_COMPRESSED = 0x86A1;
//C     #define GL_COMPRESSED_TEXTURE_FORMATS		0x86A3
const GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
/* multisample */
const GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;
//C     #define GL_MULTISAMPLE				0x809D
//C     #define GL_SAMPLE_ALPHA_TO_COVERAGE		0x809E
const GL_MULTISAMPLE = 0x809D;
//C     #define GL_SAMPLE_ALPHA_TO_ONE			0x809F
const GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
//C     #define GL_SAMPLE_COVERAGE			0x80A0
const GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
//C     #define GL_SAMPLE_BUFFERS			0x80A8
const GL_SAMPLE_COVERAGE = 0x80A0;
//C     #define GL_SAMPLES				0x80A9
const GL_SAMPLE_BUFFERS = 0x80A8;
//C     #define GL_SAMPLE_COVERAGE_VALUE		0x80AA
const GL_SAMPLES = 0x80A9;
//C     #define GL_SAMPLE_COVERAGE_INVERT		0x80AB
const GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
//C     #define GL_MULTISAMPLE_BIT			0x20000000
const GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
/* transpose_matrix */
const GL_MULTISAMPLE_BIT = 0x20000000;
//C     #define GL_TRANSPOSE_MODELVIEW_MATRIX		0x84E3
//C     #define GL_TRANSPOSE_PROJECTION_MATRIX		0x84E4
const GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
//C     #define GL_TRANSPOSE_TEXTURE_MATRIX		0x84E5
const GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
//C     #define GL_TRANSPOSE_COLOR_MATRIX		0x84E6
const GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
/* texture_env_combine */
const GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
//C     #define GL_COMBINE				0x8570
//C     #define GL_COMBINE_RGB				0x8571
const GL_COMBINE = 0x8570;
//C     #define GL_COMBINE_ALPHA			0x8572
const GL_COMBINE_RGB = 0x8571;
//C     #define GL_SOURCE0_RGB				0x8580
const GL_COMBINE_ALPHA = 0x8572;
//C     #define GL_SOURCE1_RGB				0x8581
const GL_SOURCE0_RGB = 0x8580;
//C     #define GL_SOURCE2_RGB				0x8582
const GL_SOURCE1_RGB = 0x8581;
//C     #define GL_SOURCE0_ALPHA			0x8588
const GL_SOURCE2_RGB = 0x8582;
//C     #define GL_SOURCE1_ALPHA			0x8589
const GL_SOURCE0_ALPHA = 0x8588;
//C     #define GL_SOURCE2_ALPHA			0x858A
const GL_SOURCE1_ALPHA = 0x8589;
//C     #define GL_OPERAND0_RGB				0x8590
const GL_SOURCE2_ALPHA = 0x858A;
//C     #define GL_OPERAND1_RGB				0x8591
const GL_OPERAND0_RGB = 0x8590;
//C     #define GL_OPERAND2_RGB				0x8592
const GL_OPERAND1_RGB = 0x8591;
//C     #define GL_OPERAND0_ALPHA			0x8598
const GL_OPERAND2_RGB = 0x8592;
//C     #define GL_OPERAND1_ALPHA			0x8599
const GL_OPERAND0_ALPHA = 0x8598;
//C     #define GL_OPERAND2_ALPHA			0x859A
const GL_OPERAND1_ALPHA = 0x8599;
//C     #define GL_RGB_SCALE				0x8573
const GL_OPERAND2_ALPHA = 0x859A;
//C     #define GL_ADD_SIGNED				0x8574
const GL_RGB_SCALE = 0x8573;
//C     #define GL_INTERPOLATE				0x8575
const GL_ADD_SIGNED = 0x8574;
//C     #define GL_SUBTRACT				0x84E7
const GL_INTERPOLATE = 0x8575;
//C     #define GL_CONSTANT				0x8576
const GL_SUBTRACT = 0x84E7;
//C     #define GL_PRIMARY_COLOR			0x8577
const GL_CONSTANT = 0x8576;
//C     #define GL_PREVIOUS				0x8578
const GL_PRIMARY_COLOR = 0x8577;
/* texture_env_dot3 */
const GL_PREVIOUS = 0x8578;
//C     #define GL_DOT3_RGB				0x86AE
//C     #define GL_DOT3_RGBA				0x86AF
const GL_DOT3_RGB = 0x86AE;
/* texture_border_clamp */
const GL_DOT3_RGBA = 0x86AF;
//C     #define GL_CLAMP_TO_BORDER			0x812D

const GL_CLAMP_TO_BORDER = 0x812D;
//C     GLAPI void GLAPIENTRY glActiveTexture( GLenum texture );
void  glActiveTexture(GLenum texture);

//C     GLAPI void GLAPIENTRY glClientActiveTexture( GLenum texture );
void  glClientActiveTexture(GLenum texture);

//C     GLAPI void GLAPIENTRY glCompressedTexImage1D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glCompressedTexImage3D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glCompressedTexSubImage1D( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glCompressedTexSubImage3D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data );
void  glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);

//C     GLAPI void GLAPIENTRY glGetCompressedTexImage( GLenum target, GLint lod, GLvoid *img );
void  glGetCompressedTexImage(GLenum target, GLint lod, GLvoid *img);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1d( GLenum target, GLdouble s );
void  glMultiTexCoord1d(GLenum target, GLdouble s);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1dv( GLenum target, const GLdouble *v );
void  glMultiTexCoord1dv(GLenum target, GLdouble *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1f( GLenum target, GLfloat s );
void  glMultiTexCoord1f(GLenum target, GLfloat s);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1fv( GLenum target, const GLfloat *v );
void  glMultiTexCoord1fv(GLenum target, GLfloat *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1i( GLenum target, GLint s );
void  glMultiTexCoord1i(GLenum target, GLint s);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1iv( GLenum target, const GLint *v );
void  glMultiTexCoord1iv(GLenum target, GLint *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1s( GLenum target, GLshort s );
void  glMultiTexCoord1s(GLenum target, GLshort s);

//C     GLAPI void GLAPIENTRY glMultiTexCoord1sv( GLenum target, const GLshort *v );
void  glMultiTexCoord1sv(GLenum target, GLshort *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2d( GLenum target, GLdouble s, GLdouble t );
void  glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2dv( GLenum target, const GLdouble *v );
void  glMultiTexCoord2dv(GLenum target, GLdouble *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2f( GLenum target, GLfloat s, GLfloat t );
void  glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2fv( GLenum target, const GLfloat *v );
void  glMultiTexCoord2fv(GLenum target, GLfloat *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2i( GLenum target, GLint s, GLint t );
void  glMultiTexCoord2i(GLenum target, GLint s, GLint t);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2iv( GLenum target, const GLint *v );
void  glMultiTexCoord2iv(GLenum target, GLint *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2s( GLenum target, GLshort s, GLshort t );
void  glMultiTexCoord2s(GLenum target, GLshort s, GLshort t);

//C     GLAPI void GLAPIENTRY glMultiTexCoord2sv( GLenum target, const GLshort *v );
void  glMultiTexCoord2sv(GLenum target, GLshort *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3d( GLenum target, GLdouble s, GLdouble t, GLdouble r );
void  glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3dv( GLenum target, const GLdouble *v );
void  glMultiTexCoord3dv(GLenum target, GLdouble *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3f( GLenum target, GLfloat s, GLfloat t, GLfloat r );
void  glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3fv( GLenum target, const GLfloat *v );
void  glMultiTexCoord3fv(GLenum target, GLfloat *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3i( GLenum target, GLint s, GLint t, GLint r );
void  glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3iv( GLenum target, const GLint *v );
void  glMultiTexCoord3iv(GLenum target, GLint *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3s( GLenum target, GLshort s, GLshort t, GLshort r );
void  glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r);

//C     GLAPI void GLAPIENTRY glMultiTexCoord3sv( GLenum target, const GLshort *v );
void  glMultiTexCoord3sv(GLenum target, GLshort *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4d( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q );
void  glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4dv( GLenum target, const GLdouble *v );
void  glMultiTexCoord4dv(GLenum target, GLdouble *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4f( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q );
void  glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4fv( GLenum target, const GLfloat *v );
void  glMultiTexCoord4fv(GLenum target, GLfloat *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4i( GLenum target, GLint s, GLint t, GLint r, GLint q );
void  glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4iv( GLenum target, const GLint *v );
void  glMultiTexCoord4iv(GLenum target, GLint *v);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4s( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q );
void  glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);

//C     GLAPI void GLAPIENTRY glMultiTexCoord4sv( GLenum target, const GLshort *v );
void  glMultiTexCoord4sv(GLenum target, GLshort *v);


//C     GLAPI void GLAPIENTRY glLoadTransposeMatrixd( const GLdouble m[16] );
void  glLoadTransposeMatrixd(GLdouble *m);

//C     GLAPI void GLAPIENTRY glLoadTransposeMatrixf( const GLfloat m[16] );
void  glLoadTransposeMatrixf(GLfloat *m);

//C     GLAPI void GLAPIENTRY glMultTransposeMatrixd( const GLdouble m[16] );
void  glMultTransposeMatrixd(GLdouble *m);

//C     GLAPI void GLAPIENTRY glMultTransposeMatrixf( const GLfloat m[16] );
void  glMultTransposeMatrixf(GLfloat *m);

//C     GLAPI void GLAPIENTRY glSampleCoverage( GLclampf value, GLboolean invert );
void  glSampleCoverage(GLclampf value, GLboolean invert);

//C     typedef void (APIENTRYP PFNGLACTIVETEXTUREPROC) (GLenum texture);
alias void  function(GLenum texture)PFNGLACTIVETEXTUREPROC;
//C     typedef void (APIENTRYP PFNGLCLIENTACTIVETEXTUREPROC) (GLenum texture);
alias void  function(GLenum texture)PFNGLCLIENTACTIVETEXTUREPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1DPROC) (GLenum target, GLdouble s);
alias void  function(GLenum target, GLdouble s)PFNGLMULTITEXCOORD1DPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1DVPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD1DVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1FPROC) (GLenum target, GLfloat s);
alias void  function(GLenum target, GLfloat s)PFNGLMULTITEXCOORD1FPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1FVPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD1FVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1IPROC) (GLenum target, GLint s);
alias void  function(GLenum target, GLint s)PFNGLMULTITEXCOORD1IPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1IVPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD1IVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1SPROC) (GLenum target, GLshort s);
alias void  function(GLenum target, GLshort s)PFNGLMULTITEXCOORD1SPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1SVPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD1SVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2DPROC) (GLenum target, GLdouble s, GLdouble t);
alias void  function(GLenum target, GLdouble s, GLdouble t)PFNGLMULTITEXCOORD2DPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2DVPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD2DVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2FPROC) (GLenum target, GLfloat s, GLfloat t);
alias void  function(GLenum target, GLfloat s, GLfloat t)PFNGLMULTITEXCOORD2FPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2FVPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD2FVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2IPROC) (GLenum target, GLint s, GLint t);
alias void  function(GLenum target, GLint s, GLint t)PFNGLMULTITEXCOORD2IPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2IVPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD2IVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2SPROC) (GLenum target, GLshort s, GLshort t);
alias void  function(GLenum target, GLshort s, GLshort t)PFNGLMULTITEXCOORD2SPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2SVPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD2SVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r)PFNGLMULTITEXCOORD3DPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3DVPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD3DVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r)PFNGLMULTITEXCOORD3FPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3FVPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD3FVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3IPROC) (GLenum target, GLint s, GLint t, GLint r);
alias void  function(GLenum target, GLint s, GLint t, GLint r)PFNGLMULTITEXCOORD3IPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3IVPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD3IVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3SPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r)PFNGLMULTITEXCOORD3SPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3SVPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD3SVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)PFNGLMULTITEXCOORD4DPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4DVPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD4DVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)PFNGLMULTITEXCOORD4FPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4FVPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD4FVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4IPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias void  function(GLenum target, GLint s, GLint t, GLint r, GLint q)PFNGLMULTITEXCOORD4IPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4IVPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD4IVPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4SPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)PFNGLMULTITEXCOORD4SPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4SVPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD4SVPROC;
//C     typedef void (APIENTRYP PFNGLLOADTRANSPOSEMATRIXFPROC) (const GLfloat *m);
alias void  function(GLfloat *m)PFNGLLOADTRANSPOSEMATRIXFPROC;
//C     typedef void (APIENTRYP PFNGLLOADTRANSPOSEMATRIXDPROC) (const GLdouble *m);
alias void  function(GLdouble *m)PFNGLLOADTRANSPOSEMATRIXDPROC;
//C     typedef void (APIENTRYP PFNGLMULTTRANSPOSEMATRIXFPROC) (const GLfloat *m);
alias void  function(GLfloat *m)PFNGLMULTTRANSPOSEMATRIXFPROC;
//C     typedef void (APIENTRYP PFNGLMULTTRANSPOSEMATRIXDPROC) (const GLdouble *m);
alias void  function(GLdouble *m)PFNGLMULTTRANSPOSEMATRIXDPROC;
//C     typedef void (APIENTRYP PFNGLSAMPLECOVERAGEPROC) (GLclampf value, GLboolean invert);
alias void  function(GLclampf value, GLboolean invert)PFNGLSAMPLECOVERAGEPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXIMAGE3DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE3DPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE2DPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE1DPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
//C     typedef void (APIENTRYP PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
alias void  function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
//C     typedef void (APIENTRYP PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, void *img);
alias void  function(GLenum target, GLint level, void *img)PFNGLGETCOMPRESSEDTEXIMAGEPROC;


/*
 * GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
 */
//C     #ifndef GL_ARB_multitexture
//C     #define GL_ARB_multitexture 1

const GL_ARB_multitexture = 1;
//C     #define GL_TEXTURE0_ARB				0x84C0
//C     #define GL_TEXTURE1_ARB				0x84C1
const GL_TEXTURE0_ARB = 0x84C0;
//C     #define GL_TEXTURE2_ARB				0x84C2
const GL_TEXTURE1_ARB = 0x84C1;
//C     #define GL_TEXTURE3_ARB				0x84C3
const GL_TEXTURE2_ARB = 0x84C2;
//C     #define GL_TEXTURE4_ARB				0x84C4
const GL_TEXTURE3_ARB = 0x84C3;
//C     #define GL_TEXTURE5_ARB				0x84C5
const GL_TEXTURE4_ARB = 0x84C4;
//C     #define GL_TEXTURE6_ARB				0x84C6
const GL_TEXTURE5_ARB = 0x84C5;
//C     #define GL_TEXTURE7_ARB				0x84C7
const GL_TEXTURE6_ARB = 0x84C6;
//C     #define GL_TEXTURE8_ARB				0x84C8
const GL_TEXTURE7_ARB = 0x84C7;
//C     #define GL_TEXTURE9_ARB				0x84C9
const GL_TEXTURE8_ARB = 0x84C8;
//C     #define GL_TEXTURE10_ARB			0x84CA
const GL_TEXTURE9_ARB = 0x84C9;
//C     #define GL_TEXTURE11_ARB			0x84CB
const GL_TEXTURE10_ARB = 0x84CA;
//C     #define GL_TEXTURE12_ARB			0x84CC
const GL_TEXTURE11_ARB = 0x84CB;
//C     #define GL_TEXTURE13_ARB			0x84CD
const GL_TEXTURE12_ARB = 0x84CC;
//C     #define GL_TEXTURE14_ARB			0x84CE
const GL_TEXTURE13_ARB = 0x84CD;
//C     #define GL_TEXTURE15_ARB			0x84CF
const GL_TEXTURE14_ARB = 0x84CE;
//C     #define GL_TEXTURE16_ARB			0x84D0
const GL_TEXTURE15_ARB = 0x84CF;
//C     #define GL_TEXTURE17_ARB			0x84D1
const GL_TEXTURE16_ARB = 0x84D0;
//C     #define GL_TEXTURE18_ARB			0x84D2
const GL_TEXTURE17_ARB = 0x84D1;
//C     #define GL_TEXTURE19_ARB			0x84D3
const GL_TEXTURE18_ARB = 0x84D2;
//C     #define GL_TEXTURE20_ARB			0x84D4
const GL_TEXTURE19_ARB = 0x84D3;
//C     #define GL_TEXTURE21_ARB			0x84D5
const GL_TEXTURE20_ARB = 0x84D4;
//C     #define GL_TEXTURE22_ARB			0x84D6
const GL_TEXTURE21_ARB = 0x84D5;
//C     #define GL_TEXTURE23_ARB			0x84D7
const GL_TEXTURE22_ARB = 0x84D6;
//C     #define GL_TEXTURE24_ARB			0x84D8
const GL_TEXTURE23_ARB = 0x84D7;
//C     #define GL_TEXTURE25_ARB			0x84D9
const GL_TEXTURE24_ARB = 0x84D8;
//C     #define GL_TEXTURE26_ARB			0x84DA
const GL_TEXTURE25_ARB = 0x84D9;
//C     #define GL_TEXTURE27_ARB			0x84DB
const GL_TEXTURE26_ARB = 0x84DA;
//C     #define GL_TEXTURE28_ARB			0x84DC
const GL_TEXTURE27_ARB = 0x84DB;
//C     #define GL_TEXTURE29_ARB			0x84DD
const GL_TEXTURE28_ARB = 0x84DC;
//C     #define GL_TEXTURE30_ARB			0x84DE
const GL_TEXTURE29_ARB = 0x84DD;
//C     #define GL_TEXTURE31_ARB			0x84DF
const GL_TEXTURE30_ARB = 0x84DE;
//C     #define GL_ACTIVE_TEXTURE_ARB			0x84E0
const GL_TEXTURE31_ARB = 0x84DF;
//C     #define GL_CLIENT_ACTIVE_TEXTURE_ARB		0x84E1
const GL_ACTIVE_TEXTURE_ARB = 0x84E0;
//C     #define GL_MAX_TEXTURE_UNITS_ARB		0x84E2
const GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1;

const GL_MAX_TEXTURE_UNITS_ARB = 0x84E2;
//C     GLAPI void GLAPIENTRY glActiveTextureARB(GLenum texture);
void  glActiveTextureARB(GLenum texture);
//C     GLAPI void GLAPIENTRY glClientActiveTextureARB(GLenum texture);
void  glClientActiveTextureARB(GLenum texture);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1dARB(GLenum target, GLdouble s);
void  glMultiTexCoord1dARB(GLenum target, GLdouble s);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1dvARB(GLenum target, const GLdouble *v);
void  glMultiTexCoord1dvARB(GLenum target, GLdouble *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1fARB(GLenum target, GLfloat s);
void  glMultiTexCoord1fARB(GLenum target, GLfloat s);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1fvARB(GLenum target, const GLfloat *v);
void  glMultiTexCoord1fvARB(GLenum target, GLfloat *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1iARB(GLenum target, GLint s);
void  glMultiTexCoord1iARB(GLenum target, GLint s);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1ivARB(GLenum target, const GLint *v);
void  glMultiTexCoord1ivARB(GLenum target, GLint *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1sARB(GLenum target, GLshort s);
void  glMultiTexCoord1sARB(GLenum target, GLshort s);
//C     GLAPI void GLAPIENTRY glMultiTexCoord1svARB(GLenum target, const GLshort *v);
void  glMultiTexCoord1svARB(GLenum target, GLshort *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
void  glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2dvARB(GLenum target, const GLdouble *v);
void  glMultiTexCoord2dvARB(GLenum target, GLdouble *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
void  glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2fvARB(GLenum target, const GLfloat *v);
void  glMultiTexCoord2fvARB(GLenum target, GLfloat *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
void  glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2ivARB(GLenum target, const GLint *v);
void  glMultiTexCoord2ivARB(GLenum target, GLint *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
void  glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
//C     GLAPI void GLAPIENTRY glMultiTexCoord2svARB(GLenum target, const GLshort *v);
void  glMultiTexCoord2svARB(GLenum target, GLshort *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
void  glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3dvARB(GLenum target, const GLdouble *v);
void  glMultiTexCoord3dvARB(GLenum target, GLdouble *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
void  glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3fvARB(GLenum target, const GLfloat *v);
void  glMultiTexCoord3fvARB(GLenum target, GLfloat *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
void  glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3ivARB(GLenum target, const GLint *v);
void  glMultiTexCoord3ivARB(GLenum target, GLint *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
void  glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
//C     GLAPI void GLAPIENTRY glMultiTexCoord3svARB(GLenum target, const GLshort *v);
void  glMultiTexCoord3svARB(GLenum target, GLshort *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void  glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4dvARB(GLenum target, const GLdouble *v);
void  glMultiTexCoord4dvARB(GLenum target, GLdouble *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void  glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4fvARB(GLenum target, const GLfloat *v);
void  glMultiTexCoord4fvARB(GLenum target, GLfloat *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
void  glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4ivARB(GLenum target, const GLint *v);
void  glMultiTexCoord4ivARB(GLenum target, GLint *v);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void  glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
//C     GLAPI void GLAPIENTRY glMultiTexCoord4svARB(GLenum target, const GLshort *v);
void  glMultiTexCoord4svARB(GLenum target, GLshort *v);

//C     typedef void (APIENTRYP PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
alias void  function(GLenum texture)PFNGLACTIVETEXTUREARBPROC;
//C     typedef void (APIENTRYP PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);
alias void  function(GLenum texture)PFNGLCLIENTACTIVETEXTUREARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1DARBPROC) (GLenum target, GLdouble s);
alias void  function(GLenum target, GLdouble s)PFNGLMULTITEXCOORD1DARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1DVARBPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD1DVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1FARBPROC) (GLenum target, GLfloat s);
alias void  function(GLenum target, GLfloat s)PFNGLMULTITEXCOORD1FARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1FVARBPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD1FVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1IARBPROC) (GLenum target, GLint s);
alias void  function(GLenum target, GLint s)PFNGLMULTITEXCOORD1IARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1IVARBPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD1IVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1SARBPROC) (GLenum target, GLshort s);
alias void  function(GLenum target, GLshort s)PFNGLMULTITEXCOORD1SARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD1SVARBPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD1SVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2DARBPROC) (GLenum target, GLdouble s, GLdouble t);
alias void  function(GLenum target, GLdouble s, GLdouble t)PFNGLMULTITEXCOORD2DARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2DVARBPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD2DVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
alias void  function(GLenum target, GLfloat s, GLfloat t)PFNGLMULTITEXCOORD2FARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2FVARBPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD2FVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2IARBPROC) (GLenum target, GLint s, GLint t);
alias void  function(GLenum target, GLint s, GLint t)PFNGLMULTITEXCOORD2IARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2IVARBPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD2IVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2SARBPROC) (GLenum target, GLshort s, GLshort t);
alias void  function(GLenum target, GLshort s, GLshort t)PFNGLMULTITEXCOORD2SARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD2SVARBPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD2SVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r)PFNGLMULTITEXCOORD3DARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3DVARBPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD3DVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r)PFNGLMULTITEXCOORD3FARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3FVARBPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD3FVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3IARBPROC) (GLenum target, GLint s, GLint t, GLint r);
alias void  function(GLenum target, GLint s, GLint t, GLint r)PFNGLMULTITEXCOORD3IARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3IVARBPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD3IVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r)PFNGLMULTITEXCOORD3SARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD3SVARBPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD3SVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)PFNGLMULTITEXCOORD4DARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4DVARBPROC) (GLenum target, const GLdouble *v);
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD4DVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)PFNGLMULTITEXCOORD4FARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4FVARBPROC) (GLenum target, const GLfloat *v);
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD4FVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4IARBPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias void  function(GLenum target, GLint s, GLint t, GLint r, GLint q)PFNGLMULTITEXCOORD4IARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4IVARBPROC) (GLenum target, const GLint *v);
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD4IVARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)PFNGLMULTITEXCOORD4SARBPROC;
//C     typedef void (APIENTRYP PFNGLMULTITEXCOORD4SVARBPROC) (GLenum target, const GLshort *v);
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD4SVARBPROC;

//C     #endif /* GL_ARB_multitexture */



//#include <GL/glext.h>


/*
 * ???. GL_MESA_trace
 * XXX obsolete
 */
//C     #ifndef GL_MESA_trace
//C     #define GL_MESA_trace 1

const GL_MESA_trace = 1;
//C     #define GL_TRACE_ALL_BITS_MESA			0xFFFF
//C     #define GL_TRACE_OPERATIONS_BIT_MESA		0x0001
const GL_TRACE_ALL_BITS_MESA = 0xFFFF;
//C     #define GL_TRACE_PRIMITIVES_BIT_MESA		0x0002
const GL_TRACE_OPERATIONS_BIT_MESA = 0x0001;
//C     #define GL_TRACE_ARRAYS_BIT_MESA		0x0004
const GL_TRACE_PRIMITIVES_BIT_MESA = 0x0002;
//C     #define GL_TRACE_TEXTURES_BIT_MESA		0x0008
const GL_TRACE_ARRAYS_BIT_MESA = 0x0004;
//C     #define GL_TRACE_PIXELS_BIT_MESA		0x0010
const GL_TRACE_TEXTURES_BIT_MESA = 0x0008;
//C     #define GL_TRACE_ERRORS_BIT_MESA		0x0020
const GL_TRACE_PIXELS_BIT_MESA = 0x0010;
//C     #define GL_TRACE_MASK_MESA			0x8755
const GL_TRACE_ERRORS_BIT_MESA = 0x0020;
//C     #define GL_TRACE_NAME_MESA			0x8756
const GL_TRACE_MASK_MESA = 0x8755;

const GL_TRACE_NAME_MESA = 0x8756;
//C     GLAPI void GLAPIENTRY glEnableTraceMESA( GLbitfield mask );
//C     GLAPI void GLAPIENTRY glDisableTraceMESA( GLbitfield mask );
//C     GLAPI void GLAPIENTRY glNewTraceMESA( GLbitfield mask, const GLubyte * traceName );
//C     GLAPI void GLAPIENTRY glEndTraceMESA( void );
//C     GLAPI void GLAPIENTRY glTraceAssertAttribMESA( GLbitfield attribMask );
//C     GLAPI void GLAPIENTRY glTraceCommentMESA( const GLubyte * comment );
//C     GLAPI void GLAPIENTRY glTraceTextureMESA( GLuint name, const GLubyte* comment );
//C     GLAPI void GLAPIENTRY glTraceListMESA( GLuint name, const GLubyte* comment );
//C     GLAPI void GLAPIENTRY glTracePointerMESA( GLvoid* pointer, const GLubyte* comment );
//C     GLAPI void GLAPIENTRY glTracePointerRangeMESA( const GLvoid* first, const GLvoid* last, const GLubyte* comment );

 
 

//C     #endif /* GL_MESA_trace */


/*
 * ???. GL_MESA_packed_depth_stencil
 * XXX obsolete
 */
//C     #ifndef GL_MESA_packed_depth_stencil
//C     #define GL_MESA_packed_depth_stencil 1

const GL_MESA_packed_depth_stencil = 1;
//C     #define GL_DEPTH_STENCIL_MESA			0x8750
//C     #define GL_UNSIGNED_INT_24_8_MESA		0x8751
const GL_DEPTH_STENCIL_MESA = 0x8750;
//C     #define GL_UNSIGNED_INT_8_24_REV_MESA		0x8752
const GL_UNSIGNED_INT_24_8_MESA = 0x8751;
//C     #define GL_UNSIGNED_SHORT_15_1_MESA		0x8753
const GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752;
//C     #define GL_UNSIGNED_SHORT_1_15_REV_MESA		0x8754
const GL_UNSIGNED_SHORT_15_1_MESA = 0x8753;

const GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754;
//C     #endif /* GL_MESA_packed_depth_stencil */


//C     #ifndef GL_MESA_program_debug
//C     #define GL_MESA_program_debug 1

const GL_MESA_program_debug = 1;
//C     #define GL_FRAGMENT_PROGRAM_POSITION_MESA       0x8bb0
//C     #define GL_FRAGMENT_PROGRAM_CALLBACK_MESA       0x8bb1
const GL_FRAGMENT_PROGRAM_POSITION_MESA = 0x8bb0;
//C     #define GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA  0x8bb2
const GL_FRAGMENT_PROGRAM_CALLBACK_MESA = 0x8bb1;
//C     #define GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA  0x8bb3
const GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb2;
//C     #define GL_VERTEX_PROGRAM_POSITION_MESA         0x8bb4
const GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA = 0x8bb3;
//C     #define GL_VERTEX_PROGRAM_CALLBACK_MESA         0x8bb5
const GL_VERTEX_PROGRAM_POSITION_MESA = 0x8bb4;
//C     #define GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA    0x8bb6
const GL_VERTEX_PROGRAM_CALLBACK_MESA = 0x8bb5;
//C     #define GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA    0x8bb7
const GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb6;

const GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA = 0x8bb7;
//C     typedef void (*GLprogramcallbackMESA)(GLenum target, GLvoid *data);


//C     GLAPI void GLAPIENTRY glProgramCallbackMESA(GLenum target, GLprogramcallbackMESA callback, GLvoid *data);

//C     GLAPI void GLAPIENTRY glGetProgramRegisterfvMESA(GLenum target, GLsizei len, const GLubyte *name, GLfloat *v);

//C     #endif /* GL_MESA_program_debug */


//C     #ifndef GL_ATI_blend_equation_separate
//C     #define GL_ATI_blend_equation_separate 1

const GL_ATI_blend_equation_separate = 1;
//C     #define GL_ALPHA_BLEND_EQUATION_ATI	        0x883D

const GL_ALPHA_BLEND_EQUATION_ATI = 0x883D;
//C     GLAPI void GLAPIENTRY glBlendEquationSeparateATI( GLenum modeRGB, GLenum modeA );

//C     typedef void (APIENTRYP PFNGLBLENDEQUATIONSEPARATEATIPROC) (GLenum modeRGB, GLenum modeA);
alias void  function(GLenum modeRGB, GLenum modeA)PFNGLBLENDEQUATIONSEPARATEATIPROC;

//C     #endif /* GL_ATI_blend_equation_separate */


/**
 ** NOTE!!!!!  If you add new functions to this file, or update
 ** glext.h be sure to regenerate the gl_mangle.h file.  See comments
 ** in that file for details.
 **/



/**********************************************************************
 * Begin system-specific stuff
 */
//C     #if defined(PRAGMA_EXPORT_SUPPORTED)
//C     #pragma export off
//C     #endif

//C     #if defined(macintosh) && PRAGMA_IMPORT_SUPPORTED
//C     #pragma import off
//C     #endif
/*
 * End system-specific stuff
 **********************************************************************/
