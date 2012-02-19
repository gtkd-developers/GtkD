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
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110,  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gtkglc.gl;


//private import std.stdio;
private import gtkglc.glgdktypes;
private import gtkc.Loader;
private import gtkc.paths;

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












const GL_VERSION_1_1 = 1;
const GL_VERSION_1_2 = 1;
const GL_VERSION_1_3 = 1;

const GL_ARB_imaging = 1;

/*
 * Datatypes
 */
extern (C):
alias uint GLenum;
alias ubyte GLboolean;
alias uint GLbitfield;
alias void GLvoid;
alias byte GLbyte;
alias short GLshort;
alias int GLint;
alias ubyte GLubyte;
alias ushort GLushort;
alias uint GLuint;
alias int GLsizei;
alias float GLfloat;
alias float GLclampf;
alias double GLdouble;
alias double GLclampd;



/*
 * Constants
 */

/* Boolean values */
const GL_FALSE = 0x0;

const GL_TRUE = 0x1;
/* Data types */
const GL_BYTE = 0x1400;
const GL_UNSIGNED_BYTE = 0x1401;
const GL_SHORT = 0x1402;
const GL_UNSIGNED_SHORT = 0x1403;
const GL_INT = 0x1404;
const GL_UNSIGNED_INT = 0x1405;
const GL_FLOAT = 0x1406;
const GL_2_BYTES = 0x1407;
const GL_3_BYTES = 0x1408;
const GL_4_BYTES = 0x1409;

const GL_DOUBLE = 0x140A;
/* Primitives */
const GL_POINTS = 0x0000;
const GL_LINES = 0x0001;
const GL_LINE_LOOP = 0x0002;
const GL_LINE_STRIP = 0x0003;
const GL_TRIANGLES = 0x0004;
const GL_TRIANGLE_STRIP = 0x0005;
const GL_TRIANGLE_FAN = 0x0006;
const GL_QUADS = 0x0007;
const GL_QUAD_STRIP = 0x0008;

const GL_POLYGON = 0x0009;
/* Vertex Arrays */
const GL_VERTEX_ARRAY = 0x8074;
const GL_NORMAL_ARRAY = 0x8075;
const GL_COLOR_ARRAY = 0x8076;
const GL_INDEX_ARRAY = 0x8077;
const GL_TEXTURE_COORD_ARRAY = 0x8078;
const GL_EDGE_FLAG_ARRAY = 0x8079;
const GL_VERTEX_ARRAY_SIZE = 0x807A;
const GL_VERTEX_ARRAY_TYPE = 0x807B;
const GL_VERTEX_ARRAY_STRIDE = 0x807C;
const GL_NORMAL_ARRAY_TYPE = 0x807E;
const GL_NORMAL_ARRAY_STRIDE = 0x807F;
const GL_COLOR_ARRAY_SIZE = 0x8081;
const GL_COLOR_ARRAY_TYPE = 0x8082;
const GL_COLOR_ARRAY_STRIDE = 0x8083;
const GL_INDEX_ARRAY_TYPE = 0x8085;
const GL_INDEX_ARRAY_STRIDE = 0x8086;
const GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
const GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
const GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
const GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
const GL_VERTEX_ARRAY_POINTER = 0x808E;
const GL_NORMAL_ARRAY_POINTER = 0x808F;
const GL_COLOR_ARRAY_POINTER = 0x8090;
const GL_INDEX_ARRAY_POINTER = 0x8091;
const GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
const GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
const GL_V2F = 0x2A20;
const GL_V3F = 0x2A21;
const GL_C4UB_V2F = 0x2A22;
const GL_C4UB_V3F = 0x2A23;
const GL_C3F_V3F = 0x2A24;
const GL_N3F_V3F = 0x2A25;
const GL_C4F_N3F_V3F = 0x2A26;
const GL_T2F_V3F = 0x2A27;
const GL_T4F_V4F = 0x2A28;
const GL_T2F_C4UB_V3F = 0x2A29;
const GL_T2F_C3F_V3F = 0x2A2A;
const GL_T2F_N3F_V3F = 0x2A2B;
const GL_T2F_C4F_N3F_V3F = 0x2A2C;

const GL_T4F_C4F_N3F_V4F = 0x2A2D;
/* Matrix Mode */
const GL_MATRIX_MODE = 0x0BA0;
const GL_MODELVIEW = 0x1700;
const GL_PROJECTION = 0x1701;

const GL_TEXTURE = 0x1702;
/* Points */
const GL_POINT_SMOOTH = 0x0B10;
const GL_POINT_SIZE = 0x0B11;
const GL_POINT_SIZE_GRANULARITY = 0x0B13;

const GL_POINT_SIZE_RANGE = 0x0B12;
/* Lines */
const GL_LINE_SMOOTH = 0x0B20;
const GL_LINE_STIPPLE = 0x0B24;
const GL_LINE_STIPPLE_PATTERN = 0x0B25;
const GL_LINE_STIPPLE_REPEAT = 0x0B26;
const GL_LINE_WIDTH = 0x0B21;
const GL_LINE_WIDTH_GRANULARITY = 0x0B23;

const GL_LINE_WIDTH_RANGE = 0x0B22;
/* Polygons */
const GL_POINT = 0x1B00;
const GL_LINE = 0x1B01;
const GL_FILL = 0x1B02;
const GL_CW = 0x0900;
const GL_CCW = 0x0901;
const GL_FRONT = 0x0404;
const GL_BACK = 0x0405;
const GL_POLYGON_MODE = 0x0B40;
const GL_POLYGON_SMOOTH = 0x0B41;
const GL_POLYGON_STIPPLE = 0x0B42;
const GL_EDGE_FLAG = 0x0B43;
const GL_CULL_FACE = 0x0B44;
const GL_CULL_FACE_MODE = 0x0B45;
const GL_FRONT_FACE = 0x0B46;
const GL_POLYGON_OFFSET_FACTOR = 0x8038;
const GL_POLYGON_OFFSET_UNITS = 0x2A00;
const GL_POLYGON_OFFSET_POINT = 0x2A01;
const GL_POLYGON_OFFSET_LINE = 0x2A02;

const GL_POLYGON_OFFSET_FILL = 0x8037;
/* Display Lists */
const GL_COMPILE = 0x1300;
const GL_COMPILE_AND_EXECUTE = 0x1301;
const GL_LIST_BASE = 0x0B32;
const GL_LIST_INDEX = 0x0B33;

const GL_LIST_MODE = 0x0B30;
/* Depth buffer */
const GL_NEVER = 0x0200;
const GL_LESS = 0x0201;
const GL_EQUAL = 0x0202;
const GL_LEQUAL = 0x0203;
const GL_GREATER = 0x0204;
const GL_NOTEQUAL = 0x0205;
const GL_GEQUAL = 0x0206;
const GL_ALWAYS = 0x0207;
const GL_DEPTH_TEST = 0x0B71;
const GL_DEPTH_BITS = 0x0D56;
const GL_DEPTH_CLEAR_VALUE = 0x0B73;
const GL_DEPTH_FUNC = 0x0B74;
const GL_DEPTH_RANGE = 0x0B70;
const GL_DEPTH_WRITEMASK = 0x0B72;

const GL_DEPTH_COMPONENT = 0x1902;
/* Lighting */
const GL_LIGHTING = 0x0B50;
const GL_LIGHT0 = 0x4000;
const GL_LIGHT1 = 0x4001;
const GL_LIGHT2 = 0x4002;
const GL_LIGHT3 = 0x4003;
const GL_LIGHT4 = 0x4004;
const GL_LIGHT5 = 0x4005;
const GL_LIGHT6 = 0x4006;
const GL_LIGHT7 = 0x4007;
const GL_SPOT_EXPONENT = 0x1205;
const GL_SPOT_CUTOFF = 0x1206;
const GL_CONSTANT_ATTENUATION = 0x1207;
const GL_LINEAR_ATTENUATION = 0x1208;
const GL_QUADRATIC_ATTENUATION = 0x1209;
const GL_AMBIENT = 0x1200;
const GL_DIFFUSE = 0x1201;
const GL_SPECULAR = 0x1202;
const GL_SHININESS = 0x1601;
const GL_EMISSION = 0x1600;
const GL_POSITION = 0x1203;
const GL_SPOT_DIRECTION = 0x1204;
const GL_AMBIENT_AND_DIFFUSE = 0x1602;
const GL_COLOR_INDEXES = 0x1603;
const GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
const GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
const GL_LIGHT_MODEL_AMBIENT = 0x0B53;
const GL_FRONT_AND_BACK = 0x0408;
const GL_SHADE_MODEL = 0x0B54;
const GL_FLAT = 0x1D00;
const GL_SMOOTH = 0x1D01;
const GL_COLOR_MATERIAL = 0x0B57;
const GL_COLOR_MATERIAL_FACE = 0x0B55;
const GL_COLOR_MATERIAL_PARAMETER = 0x0B56;

const GL_NORMALIZE = 0x0BA1;
/* User clipping planes */
const GL_CLIP_PLANE0 = 0x3000;
const GL_CLIP_PLANE1 = 0x3001;
const GL_CLIP_PLANE2 = 0x3002;
const GL_CLIP_PLANE3 = 0x3003;
const GL_CLIP_PLANE4 = 0x3004;

const GL_CLIP_PLANE5 = 0x3005;
/* Accumulation buffer */
const GL_ACCUM_RED_BITS = 0x0D58;
const GL_ACCUM_GREEN_BITS = 0x0D59;
const GL_ACCUM_BLUE_BITS = 0x0D5A;
const GL_ACCUM_ALPHA_BITS = 0x0D5B;
const GL_ACCUM_CLEAR_VALUE = 0x0B80;
const GL_ACCUM = 0x0100;
const GL_ADD = 0x0104;
const GL_LOAD = 0x0101;
const GL_MULT = 0x0103;

const GL_RETURN = 0x0102;
/* Alpha testing */
const GL_ALPHA_TEST = 0x0BC0;
const GL_ALPHA_TEST_REF = 0x0BC2;

const GL_ALPHA_TEST_FUNC = 0x0BC1;
/* Blending */
const GL_BLEND = 0x0BE2;
const GL_BLEND_SRC = 0x0BE1;
const GL_BLEND_DST = 0x0BE0;
const GL_ZERO = 0x0;
const GL_ONE = 0x1;
const GL_SRC_COLOR = 0x0300;
const GL_ONE_MINUS_SRC_COLOR = 0x0301;
const GL_SRC_ALPHA = 0x0302;
const GL_ONE_MINUS_SRC_ALPHA = 0x0303;
const GL_DST_ALPHA = 0x0304;
const GL_ONE_MINUS_DST_ALPHA = 0x0305;
const GL_DST_COLOR = 0x0306;
const GL_ONE_MINUS_DST_COLOR = 0x0307;

const GL_SRC_ALPHA_SATURATE = 0x0308;
/* Render Mode */
const GL_FEEDBACK = 0x1C01;
const GL_RENDER = 0x1C00;

const GL_SELECT = 0x1C02;
/* Feedback */
const GL_2D = 0x0600;
const GL_3D = 0x0601;
const GL_3D_COLOR = 0x0602;
const GL_3D_COLOR_TEXTURE = 0x0603;
const GL_4D_COLOR_TEXTURE = 0x0604;
const GL_POINT_TOKEN = 0x0701;
const GL_LINE_TOKEN = 0x0702;
const GL_LINE_RESET_TOKEN = 0x0707;
const GL_POLYGON_TOKEN = 0x0703;
const GL_BITMAP_TOKEN = 0x0704;
const GL_DRAW_PIXEL_TOKEN = 0x0705;
const GL_COPY_PIXEL_TOKEN = 0x0706;
const GL_PASS_THROUGH_TOKEN = 0x0700;
const GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
const GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;

const GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;
/* Selection */
const GL_SELECTION_BUFFER_POINTER = 0x0DF3;

const GL_SELECTION_BUFFER_SIZE = 0x0DF4;
/* Fog */
const GL_FOG = 0x0B60;
const GL_FOG_MODE = 0x0B65;
const GL_FOG_DENSITY = 0x0B62;
const GL_FOG_COLOR = 0x0B66;
const GL_FOG_INDEX = 0x0B61;
const GL_FOG_START = 0x0B63;
const GL_FOG_END = 0x0B64;
const GL_LINEAR = 0x2601;
const GL_EXP = 0x0800;

const GL_EXP2 = 0x0801;
/* Logic Ops */
const GL_LOGIC_OP = 0x0BF1;
const GL_INDEX_LOGIC_OP = 0x0BF1;
const GL_COLOR_LOGIC_OP = 0x0BF2;
const GL_LOGIC_OP_MODE = 0x0BF0;
const GL_CLEAR = 0x1500;
const GL_SET = 0x150F;
const GL_COPY = 0x1503;
const GL_COPY_INVERTED = 0x150C;
const GL_NOOP = 0x1505;
const GL_INVERT = 0x150A;
const GL_AND = 0x1501;
const GL_NAND = 0x150E;
const GL_OR = 0x1507;
const GL_NOR = 0x1508;
const GL_XOR = 0x1506;
const GL_EQUIV = 0x1509;
const GL_AND_REVERSE = 0x1502;
const GL_AND_INVERTED = 0x1504;
const GL_OR_REVERSE = 0x150B;

const GL_OR_INVERTED = 0x150D;
/* Stencil */
const GL_STENCIL_TEST = 0x0B90;
const GL_STENCIL_WRITEMASK = 0x0B98;
const GL_STENCIL_BITS = 0x0D57;
const GL_STENCIL_FUNC = 0x0B92;
const GL_STENCIL_VALUE_MASK = 0x0B93;
const GL_STENCIL_REF = 0x0B97;
const GL_STENCIL_FAIL = 0x0B94;
const GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
const GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
const GL_STENCIL_CLEAR_VALUE = 0x0B91;
const GL_STENCIL_INDEX = 0x1901;
const GL_KEEP = 0x1E00;
const GL_REPLACE = 0x1E01;
const GL_INCR = 0x1E02;

const GL_DECR = 0x1E03;
/* Buffers, Pixel Drawing/Reading */
const GL_NONE = 0x0;
const GL_LEFT = 0x0406;
/*GL_FRONT					0x0404 */
const GL_RIGHT = 0x0407;
/*GL_BACK					0x0405 */
/*GL_FRONT_AND_BACK				0x0408 */
const GL_FRONT_LEFT = 0x0400;
const GL_FRONT_RIGHT = 0x0401;
const GL_BACK_LEFT = 0x0402;
const GL_BACK_RIGHT = 0x0403;
const GL_AUX0 = 0x0409;
const GL_AUX1 = 0x040A;
const GL_AUX2 = 0x040B;
const GL_AUX3 = 0x040C;
const GL_COLOR_INDEX = 0x1900;
const GL_RED = 0x1903;
const GL_GREEN = 0x1904;
const GL_BLUE = 0x1905;
const GL_ALPHA = 0x1906;
const GL_LUMINANCE = 0x1909;
const GL_LUMINANCE_ALPHA = 0x190A;
const GL_ALPHA_BITS = 0x0D55;
const GL_RED_BITS = 0x0D52;
const GL_GREEN_BITS = 0x0D53;
const GL_BLUE_BITS = 0x0D54;
const GL_INDEX_BITS = 0x0D51;
const GL_SUBPIXEL_BITS = 0x0D50;
const GL_AUX_BUFFERS = 0x0C00;
const GL_READ_BUFFER = 0x0C02;
const GL_DRAW_BUFFER = 0x0C01;
const GL_DOUBLEBUFFER = 0x0C32;
const GL_STEREO = 0x0C33;
const GL_BITMAP = 0x1A00;
const GL_COLOR = 0x1800;
const GL_DEPTH = 0x1801;
const GL_STENCIL = 0x1802;
const GL_DITHER = 0x0BD0;
const GL_RGB = 0x1907;

const GL_RGBA = 0x1908;
/* Implementation limits */
const GL_MAX_LIST_NESTING = 0x0B31;
const GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
const GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
const GL_MAX_NAME_STACK_DEPTH = 0x0D37;
const GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
const GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
const GL_MAX_EVAL_ORDER = 0x0D30;
const GL_MAX_LIGHTS = 0x0D31;
const GL_MAX_CLIP_PLANES = 0x0D32;
const GL_MAX_TEXTURE_SIZE = 0x0D33;
const GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
const GL_MAX_VIEWPORT_DIMS = 0x0D3A;

const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;
/* Gets */
const GL_ATTRIB_STACK_DEPTH = 0x0BB0;
const GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
const GL_COLOR_CLEAR_VALUE = 0x0C22;
const GL_COLOR_WRITEMASK = 0x0C23;
const GL_CURRENT_INDEX = 0x0B01;
const GL_CURRENT_COLOR = 0x0B00;
const GL_CURRENT_NORMAL = 0x0B02;
const GL_CURRENT_RASTER_COLOR = 0x0B04;
const GL_CURRENT_RASTER_DISTANCE = 0x0B09;
const GL_CURRENT_RASTER_INDEX = 0x0B05;
const GL_CURRENT_RASTER_POSITION = 0x0B07;
const GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
const GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
const GL_CURRENT_TEXTURE_COORDS = 0x0B03;
const GL_INDEX_CLEAR_VALUE = 0x0C20;
const GL_INDEX_MODE = 0x0C30;
const GL_INDEX_WRITEMASK = 0x0C21;
const GL_MODELVIEW_MATRIX = 0x0BA6;
const GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
const GL_NAME_STACK_DEPTH = 0x0D70;
const GL_PROJECTION_MATRIX = 0x0BA7;
const GL_PROJECTION_STACK_DEPTH = 0x0BA4;
const GL_RENDER_MODE = 0x0C40;
const GL_RGBA_MODE = 0x0C31;
const GL_TEXTURE_MATRIX = 0x0BA8;
const GL_TEXTURE_STACK_DEPTH = 0x0BA5;

const GL_VIEWPORT = 0x0BA2;
/* Evaluators */
const GL_AUTO_NORMAL = 0x0D80;
const GL_MAP1_COLOR_4 = 0x0D90;
const GL_MAP1_INDEX = 0x0D91;
const GL_MAP1_NORMAL = 0x0D92;
const GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
const GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
const GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
const GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
const GL_MAP1_VERTEX_3 = 0x0D97;
const GL_MAP1_VERTEX_4 = 0x0D98;
const GL_MAP2_COLOR_4 = 0x0DB0;
const GL_MAP2_INDEX = 0x0DB1;
const GL_MAP2_NORMAL = 0x0DB2;
const GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
const GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
const GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
const GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
const GL_MAP2_VERTEX_3 = 0x0DB7;
const GL_MAP2_VERTEX_4 = 0x0DB8;
const GL_MAP1_GRID_DOMAIN = 0x0DD0;
const GL_MAP1_GRID_SEGMENTS = 0x0DD1;
const GL_MAP2_GRID_DOMAIN = 0x0DD2;
const GL_MAP2_GRID_SEGMENTS = 0x0DD3;
const GL_COEFF = 0x0A00;
const GL_DOMAIN = 0x0A02;

const GL_ORDER = 0x0A01;
/* Hints */
const GL_FOG_HINT = 0x0C54;
const GL_LINE_SMOOTH_HINT = 0x0C52;
const GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
const GL_POINT_SMOOTH_HINT = 0x0C51;
const GL_POLYGON_SMOOTH_HINT = 0x0C53;
const GL_DONT_CARE = 0x1100;
const GL_FASTEST = 0x1101;

const GL_NICEST = 0x1102;
/* Scissor box */
const GL_SCISSOR_TEST = 0x0C11;

const GL_SCISSOR_BOX = 0x0C10;
/* Pixel Mode / Transfer */
const GL_MAP_COLOR = 0x0D10;
const GL_MAP_STENCIL = 0x0D11;
const GL_INDEX_SHIFT = 0x0D12;
const GL_INDEX_OFFSET = 0x0D13;
const GL_RED_SCALE = 0x0D14;
const GL_RED_BIAS = 0x0D15;
const GL_GREEN_SCALE = 0x0D18;
const GL_GREEN_BIAS = 0x0D19;
const GL_BLUE_SCALE = 0x0D1A;
const GL_BLUE_BIAS = 0x0D1B;
const GL_ALPHA_SCALE = 0x0D1C;
const GL_ALPHA_BIAS = 0x0D1D;
const GL_DEPTH_SCALE = 0x0D1E;
const GL_DEPTH_BIAS = 0x0D1F;
const GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
const GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
const GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
const GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
const GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
const GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
const GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
const GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
const GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
const GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
const GL_PIXEL_MAP_S_TO_S = 0x0C71;
const GL_PIXEL_MAP_I_TO_I = 0x0C70;
const GL_PIXEL_MAP_I_TO_R = 0x0C72;
const GL_PIXEL_MAP_I_TO_G = 0x0C73;
const GL_PIXEL_MAP_I_TO_B = 0x0C74;
const GL_PIXEL_MAP_I_TO_A = 0x0C75;
const GL_PIXEL_MAP_R_TO_R = 0x0C76;
const GL_PIXEL_MAP_G_TO_G = 0x0C77;
const GL_PIXEL_MAP_B_TO_B = 0x0C78;
const GL_PIXEL_MAP_A_TO_A = 0x0C79;
const GL_PACK_ALIGNMENT = 0x0D05;
const GL_PACK_LSB_FIRST = 0x0D01;
const GL_PACK_ROW_LENGTH = 0x0D02;
const GL_PACK_SKIP_PIXELS = 0x0D04;
const GL_PACK_SKIP_ROWS = 0x0D03;
const GL_PACK_SWAP_BYTES = 0x0D00;
const GL_UNPACK_ALIGNMENT = 0x0CF5;
const GL_UNPACK_LSB_FIRST = 0x0CF1;
const GL_UNPACK_ROW_LENGTH = 0x0CF2;
const GL_UNPACK_SKIP_PIXELS = 0x0CF4;
const GL_UNPACK_SKIP_ROWS = 0x0CF3;
const GL_UNPACK_SWAP_BYTES = 0x0CF0;
const GL_ZOOM_X = 0x0D16;

const GL_ZOOM_Y = 0x0D17;
/* Texture mapping */
const GL_TEXTURE_ENV = 0x2300;
const GL_TEXTURE_ENV_MODE = 0x2200;
const GL_TEXTURE_1D = 0x0DE0;
const GL_TEXTURE_2D = 0x0DE1;
const GL_TEXTURE_WRAP_S = 0x2802;
const GL_TEXTURE_WRAP_T = 0x2803;
const GL_TEXTURE_MAG_FILTER = 0x2800;
const GL_TEXTURE_MIN_FILTER = 0x2801;
const GL_TEXTURE_ENV_COLOR = 0x2201;
const GL_TEXTURE_GEN_S = 0x0C60;
const GL_TEXTURE_GEN_T = 0x0C61;
const GL_TEXTURE_GEN_MODE = 0x2500;
const GL_TEXTURE_BORDER_COLOR = 0x1004;
const GL_TEXTURE_WIDTH = 0x1000;
const GL_TEXTURE_HEIGHT = 0x1001;
const GL_TEXTURE_BORDER = 0x1005;
const GL_TEXTURE_COMPONENTS = 0x1003;
const GL_TEXTURE_RED_SIZE = 0x805C;
const GL_TEXTURE_GREEN_SIZE = 0x805D;
const GL_TEXTURE_BLUE_SIZE = 0x805E;
const GL_TEXTURE_ALPHA_SIZE = 0x805F;
const GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
const GL_TEXTURE_INTENSITY_SIZE = 0x8061;
const GL_NEAREST_MIPMAP_NEAREST = 0x2700;
const GL_NEAREST_MIPMAP_LINEAR = 0x2702;
const GL_LINEAR_MIPMAP_NEAREST = 0x2701;
const GL_LINEAR_MIPMAP_LINEAR = 0x2703;
const GL_OBJECT_LINEAR = 0x2401;
const GL_OBJECT_PLANE = 0x2501;
const GL_EYE_LINEAR = 0x2400;
const GL_EYE_PLANE = 0x2502;
const GL_SPHERE_MAP = 0x2402;
const GL_DECAL = 0x2101;
const GL_MODULATE = 0x2100;
const GL_NEAREST = 0x2600;
const GL_REPEAT = 0x2901;
const GL_CLAMP = 0x2900;
const GL_S = 0x2000;
const GL_T = 0x2001;
const GL_R = 0x2002;
const GL_Q = 0x2003;
const GL_TEXTURE_GEN_R = 0x0C62;

const GL_TEXTURE_GEN_Q = 0x0C63;
/* Utility */
const GL_VENDOR = 0x1F00;
const GL_RENDERER = 0x1F01;
const GL_VERSION = 0x1F02;

const GL_EXTENSIONS = 0x1F03;
/* Errors */
const GL_NO_ERROR = 0x0;
const GL_INVALID_VALUE = 0x0501;
const GL_INVALID_ENUM = 0x0500;
const GL_INVALID_OPERATION = 0x0502;
const GL_STACK_OVERFLOW = 0x0503;
const GL_STACK_UNDERFLOW = 0x0504;

const GL_OUT_OF_MEMORY = 0x0505;
/* glPush/PopAttrib bits */
const GL_CURRENT_BIT = 0x00000001;
const GL_POINT_BIT = 0x00000002;
const GL_LINE_BIT = 0x00000004;
const GL_POLYGON_BIT = 0x00000008;
const GL_POLYGON_STIPPLE_BIT = 0x00000010;
const GL_PIXEL_MODE_BIT = 0x00000020;
const GL_LIGHTING_BIT = 0x00000040;
const GL_FOG_BIT = 0x00000080;
const GL_DEPTH_BUFFER_BIT = 0x00000100;
const GL_ACCUM_BUFFER_BIT = 0x00000200;
const GL_STENCIL_BUFFER_BIT = 0x00000400;
const GL_VIEWPORT_BIT = 0x00000800;
const GL_TRANSFORM_BIT = 0x00001000;
const GL_ENABLE_BIT = 0x00002000;
const GL_COLOR_BUFFER_BIT = 0x00004000;
const GL_HINT_BIT = 0x00008000;
const GL_EVAL_BIT = 0x00010000;
const GL_LIST_BIT = 0x00020000;
const GL_TEXTURE_BIT = 0x00040000;
const GL_SCISSOR_BIT = 0x00080000;

const GL_ALL_ATTRIB_BITS = 0x000FFFFF;

/* OpenGL 1.1 */
const GL_PROXY_TEXTURE_1D = 0x8063;
const GL_PROXY_TEXTURE_2D = 0x8064;
const GL_TEXTURE_PRIORITY = 0x8066;
const GL_TEXTURE_RESIDENT = 0x8067;
const GL_TEXTURE_BINDING_1D = 0x8068;
const GL_TEXTURE_BINDING_2D = 0x8069;
const GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
const GL_ALPHA4 = 0x803B;
const GL_ALPHA8 = 0x803C;
const GL_ALPHA12 = 0x803D;
const GL_ALPHA16 = 0x803E;
const GL_LUMINANCE4 = 0x803F;
const GL_LUMINANCE8 = 0x8040;
const GL_LUMINANCE12 = 0x8041;
const GL_LUMINANCE16 = 0x8042;
const GL_LUMINANCE4_ALPHA4 = 0x8043;
const GL_LUMINANCE6_ALPHA2 = 0x8044;
const GL_LUMINANCE8_ALPHA8 = 0x8045;
const GL_LUMINANCE12_ALPHA4 = 0x8046;
const GL_LUMINANCE12_ALPHA12 = 0x8047;
const GL_LUMINANCE16_ALPHA16 = 0x8048;
const GL_INTENSITY = 0x8049;
const GL_INTENSITY4 = 0x804A;
const GL_INTENSITY8 = 0x804B;
const GL_INTENSITY12 = 0x804C;
const GL_INTENSITY16 = 0x804D;
const GL_R3_G3_B2 = 0x2A10;
const GL_RGB4 = 0x804F;
const GL_RGB5 = 0x8050;
const GL_RGB8 = 0x8051;
const GL_RGB10 = 0x8052;
const GL_RGB12 = 0x8053;
const GL_RGB16 = 0x8054;
const GL_RGBA2 = 0x8055;
const GL_RGBA4 = 0x8056;
const GL_RGB5_A1 = 0x8057;
const GL_RGBA8 = 0x8058;
const GL_RGB10_A2 = 0x8059;
const GL_RGBA12 = 0x805A;
const GL_RGBA16 = 0x805B;
const GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
const GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
const GL_ALL_CLIENT_ATTRIB_BITS = 0xFFFFFFFF;

const GL_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;



/*
 * OpenGL 1.2
 */

const GL_RESCALE_NORMAL = 0x803A;
const GL_CLAMP_TO_EDGE = 0x812F;
const GL_MAX_ELEMENTS_VERTICES = 0x80E8;
const GL_MAX_ELEMENTS_INDICES = 0x80E9;
const GL_BGR = 0x80E0;
const GL_BGRA = 0x80E1;
const GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
const GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
const GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
const GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
const GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
const GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
const GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
const GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
const GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
const GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
const GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
const GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
const GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
const GL_SINGLE_COLOR = 0x81F9;
const GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
const GL_TEXTURE_MIN_LOD = 0x813A;
const GL_TEXTURE_MAX_LOD = 0x813B;
const GL_TEXTURE_BASE_LEVEL = 0x813C;
const GL_TEXTURE_MAX_LEVEL = 0x813D;
const GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
const GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
const GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
const GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
const GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
const GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
const GL_PACK_SKIP_IMAGES = 0x806B;
const GL_PACK_IMAGE_HEIGHT = 0x806C;
const GL_UNPACK_SKIP_IMAGES = 0x806D;
const GL_UNPACK_IMAGE_HEIGHT = 0x806E;
const GL_TEXTURE_3D = 0x806F;
const GL_PROXY_TEXTURE_3D = 0x8070;
const GL_TEXTURE_DEPTH = 0x8071;
const GL_TEXTURE_WRAP_R = 0x8072;
const GL_MAX_3D_TEXTURE_SIZE = 0x8073;

const GL_TEXTURE_BINDING_3D = 0x806A;

alias void  function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices)PFNGLDRAWRANGEELEMENTSPROC;
alias void  function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels)PFNGLTEXIMAGE3DPROC;
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels)PFNGLTEXSUBIMAGE3DPROC;
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)PFNGLCOPYTEXSUBIMAGE3DPROC;


/*
 * GL_ARB_imaging
 */

const GL_CONSTANT_COLOR = 0x8001;
const GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
const GL_CONSTANT_ALPHA = 0x8003;
const GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
const GL_COLOR_TABLE = 0x80D0;
const GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
const GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
const GL_PROXY_COLOR_TABLE = 0x80D3;
const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
const GL_COLOR_TABLE_SCALE = 0x80D6;
const GL_COLOR_TABLE_BIAS = 0x80D7;
const GL_COLOR_TABLE_FORMAT = 0x80D8;
const GL_COLOR_TABLE_WIDTH = 0x80D9;
const GL_COLOR_TABLE_RED_SIZE = 0x80DA;
const GL_COLOR_TABLE_GREEN_SIZE = 0x80DB;
const GL_COLOR_TABLE_BLUE_SIZE = 0x80DC;
const GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD;
const GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE;
const GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF;
const GL_CONVOLUTION_1D = 0x8010;
const GL_CONVOLUTION_2D = 0x8011;
const GL_SEPARABLE_2D = 0x8012;
const GL_CONVOLUTION_BORDER_MODE = 0x8013;
const GL_CONVOLUTION_FILTER_SCALE = 0x8014;
const GL_CONVOLUTION_FILTER_BIAS = 0x8015;
const GL_REDUCE = 0x8016;
const GL_CONVOLUTION_FORMAT = 0x8017;
const GL_CONVOLUTION_WIDTH = 0x8018;
const GL_CONVOLUTION_HEIGHT = 0x8019;
const GL_MAX_CONVOLUTION_WIDTH = 0x801A;
const GL_MAX_CONVOLUTION_HEIGHT = 0x801B;
const GL_POST_CONVOLUTION_RED_SCALE = 0x801C;
const GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D;
const GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E;
const GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F;
const GL_POST_CONVOLUTION_RED_BIAS = 0x8020;
const GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021;
const GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022;
const GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023;
const GL_CONSTANT_BORDER = 0x8151;
const GL_REPLICATE_BORDER = 0x8153;
const GL_CONVOLUTION_BORDER_COLOR = 0x8154;
const GL_COLOR_MATRIX = 0x80B1;
const GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2;
const GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3;
const GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4;
const GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5;
const GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6;
const GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7;
const GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8;
const GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9;
const GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA;
const GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB;
const GL_HISTOGRAM = 0x8024;
const GL_PROXY_HISTOGRAM = 0x8025;
const GL_HISTOGRAM_WIDTH = 0x8026;
const GL_HISTOGRAM_FORMAT = 0x8027;
const GL_HISTOGRAM_RED_SIZE = 0x8028;
const GL_HISTOGRAM_GREEN_SIZE = 0x8029;
const GL_HISTOGRAM_BLUE_SIZE = 0x802A;
const GL_HISTOGRAM_ALPHA_SIZE = 0x802B;
const GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C;
const GL_HISTOGRAM_SINK = 0x802D;
const GL_MINMAX = 0x802E;
const GL_MINMAX_FORMAT = 0x802F;
const GL_MINMAX_SINK = 0x8030;
const GL_TABLE_TOO_LARGE = 0x8031;
const GL_BLEND_EQUATION = 0x8009;
const GL_MIN = 0x8007;
const GL_MAX = 0x8008;
const GL_FUNC_ADD = 0x8006;
const GL_FUNC_SUBTRACT = 0x800A;
const GL_FUNC_REVERSE_SUBTRACT = 0x800B;

const GL_BLEND_COLOR = 0x8005;

alias void  function(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)PFNGLBLENDCOLORPROC;
alias void  function(GLenum mode)PFNGLBLENDEQUATIONPROC;
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table)PFNGLCOLORTABLEPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLCOLORTABLEPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLCOLORTABLEPARAMETERIVPROC;
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)PFNGLCOPYCOLORTABLEPROC;
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *table)PFNGLGETCOLORTABLEPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETCOLORTABLEPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETCOLORTABLEPARAMETERIVPROC;
alias void  function(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data)PFNGLCOLORSUBTABLEPROC;
alias void  function(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)PFNGLCOPYCOLORSUBTABLEPROC;
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image)PFNGLCONVOLUTIONFILTER1DPROC;
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image)PFNGLCONVOLUTIONFILTER2DPROC;
alias void  function(GLenum target, GLenum pname, GLfloat params)PFNGLCONVOLUTIONPARAMETERFPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLCONVOLUTIONPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint params)PFNGLCONVOLUTIONPARAMETERIPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLCONVOLUTIONPARAMETERIVPROC;
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)PFNGLCOPYCONVOLUTIONFILTER1DPROC;
alias void  function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)PFNGLCOPYCONVOLUTIONFILTER2DPROC;
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *image)PFNGLGETCONVOLUTIONFILTERPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETCONVOLUTIONPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETCONVOLUTIONPARAMETERIVPROC;
alias void  function(GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)PFNGLGETSEPARABLEFILTERPROC;
alias void  function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column)PFNGLSEPARABLEFILTER2DPROC;
alias void  function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)PFNGLGETHISTOGRAMPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETHISTOGRAMPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETHISTOGRAMPARAMETERIVPROC;
alias void  function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)PFNGLGETMINMAXPROC;
alias void  function(GLenum target, GLenum pname, GLfloat *params)PFNGLGETMINMAXPARAMETERFVPROC;
alias void  function(GLenum target, GLenum pname, GLint *params)PFNGLGETMINMAXPARAMETERIVPROC;
alias void  function(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)PFNGLHISTOGRAMPROC;
alias void  function(GLenum target, GLenum internalformat, GLboolean sink)PFNGLMINMAXPROC;
alias void  function(GLenum target)PFNGLRESETHISTOGRAMPROC;
alias void  function(GLenum target)PFNGLRESETMINMAXPROC;



/*
 * OpenGL 1.3
 */

/* multitexture */
const GL_TEXTURE0 = 0x84C0;
const GL_TEXTURE1 = 0x84C1;
const GL_TEXTURE2 = 0x84C2;
const GL_TEXTURE3 = 0x84C3;
const GL_TEXTURE4 = 0x84C4;
const GL_TEXTURE5 = 0x84C5;
const GL_TEXTURE6 = 0x84C6;
const GL_TEXTURE7 = 0x84C7;
const GL_TEXTURE8 = 0x84C8;
const GL_TEXTURE9 = 0x84C9;
const GL_TEXTURE10 = 0x84CA;
const GL_TEXTURE11 = 0x84CB;
const GL_TEXTURE12 = 0x84CC;
const GL_TEXTURE13 = 0x84CD;
const GL_TEXTURE14 = 0x84CE;
const GL_TEXTURE15 = 0x84CF;
const GL_TEXTURE16 = 0x84D0;
const GL_TEXTURE17 = 0x84D1;
const GL_TEXTURE18 = 0x84D2;
const GL_TEXTURE19 = 0x84D3;
const GL_TEXTURE20 = 0x84D4;
const GL_TEXTURE21 = 0x84D5;
const GL_TEXTURE22 = 0x84D6;
const GL_TEXTURE23 = 0x84D7;
const GL_TEXTURE24 = 0x84D8;
const GL_TEXTURE25 = 0x84D9;
const GL_TEXTURE26 = 0x84DA;
const GL_TEXTURE27 = 0x84DB;
const GL_TEXTURE28 = 0x84DC;
const GL_TEXTURE29 = 0x84DD;
const GL_TEXTURE30 = 0x84DE;
const GL_TEXTURE31 = 0x84DF;
const GL_ACTIVE_TEXTURE = 0x84E0;
const GL_CLIENT_ACTIVE_TEXTURE = 0x84E1;
/* texture_cube_map */
const GL_MAX_TEXTURE_UNITS = 0x84E2;
const GL_NORMAL_MAP = 0x8511;
const GL_REFLECTION_MAP = 0x8512;
const GL_TEXTURE_CUBE_MAP = 0x8513;
const GL_TEXTURE_BINDING_CUBE_MAP = 0x8514;
const GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
const GL_PROXY_TEXTURE_CUBE_MAP = 0x851B;
/* texture_compression */
const GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
const GL_COMPRESSED_ALPHA = 0x84E9;
const GL_COMPRESSED_LUMINANCE = 0x84EA;
const GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
const GL_COMPRESSED_INTENSITY = 0x84EC;
const GL_COMPRESSED_RGB = 0x84ED;
const GL_COMPRESSED_RGBA = 0x84EE;
const GL_TEXTURE_COMPRESSION_HINT = 0x84EF;
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
const GL_TEXTURE_COMPRESSED = 0x86A1;
const GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
/* multisample */
const GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;
const GL_MULTISAMPLE = 0x809D;
const GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
const GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
const GL_SAMPLE_COVERAGE = 0x80A0;
const GL_SAMPLE_BUFFERS = 0x80A8;
const GL_SAMPLES = 0x80A9;
const GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
const GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
/* transpose_matrix */
const GL_MULTISAMPLE_BIT = 0x20000000;
const GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
const GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
const GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
/* texture_env_combine */
const GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
const GL_COMBINE = 0x8570;
const GL_COMBINE_RGB = 0x8571;
const GL_COMBINE_ALPHA = 0x8572;
const GL_SOURCE0_RGB = 0x8580;
const GL_SOURCE1_RGB = 0x8581;
const GL_SOURCE2_RGB = 0x8582;
const GL_SOURCE0_ALPHA = 0x8588;
const GL_SOURCE1_ALPHA = 0x8589;
const GL_SOURCE2_ALPHA = 0x858A;
const GL_OPERAND0_RGB = 0x8590;
const GL_OPERAND1_RGB = 0x8591;
const GL_OPERAND2_RGB = 0x8592;
const GL_OPERAND0_ALPHA = 0x8598;
const GL_OPERAND1_ALPHA = 0x8599;
const GL_OPERAND2_ALPHA = 0x859A;
const GL_RGB_SCALE = 0x8573;
const GL_ADD_SIGNED = 0x8574;
const GL_INTERPOLATE = 0x8575;
const GL_SUBTRACT = 0x84E7;
const GL_CONSTANT = 0x8576;
const GL_PRIMARY_COLOR = 0x8577;
/* texture_env_dot3 */
const GL_PREVIOUS = 0x8578;
const GL_DOT3_RGB = 0x86AE;
/* texture_border_clamp */
const GL_DOT3_RGBA = 0x86AF;

const GL_CLAMP_TO_BORDER = 0x812D;

alias void  function(GLenum texture)PFNGLACTIVETEXTUREPROC;
alias void  function(GLenum texture)PFNGLCLIENTACTIVETEXTUREPROC;
alias void  function(GLenum target, GLdouble s)PFNGLMULTITEXCOORD1DPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD1DVPROC;
alias void  function(GLenum target, GLfloat s)PFNGLMULTITEXCOORD1FPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD1FVPROC;
alias void  function(GLenum target, GLint s)PFNGLMULTITEXCOORD1IPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD1IVPROC;
alias void  function(GLenum target, GLshort s)PFNGLMULTITEXCOORD1SPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD1SVPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t)PFNGLMULTITEXCOORD2DPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD2DVPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t)PFNGLMULTITEXCOORD2FPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD2FVPROC;
alias void  function(GLenum target, GLint s, GLint t)PFNGLMULTITEXCOORD2IPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD2IVPROC;
alias void  function(GLenum target, GLshort s, GLshort t)PFNGLMULTITEXCOORD2SPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD2SVPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r)PFNGLMULTITEXCOORD3DPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD3DVPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r)PFNGLMULTITEXCOORD3FPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD3FVPROC;
alias void  function(GLenum target, GLint s, GLint t, GLint r)PFNGLMULTITEXCOORD3IPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD3IVPROC;
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r)PFNGLMULTITEXCOORD3SPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD3SVPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)PFNGLMULTITEXCOORD4DPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD4DVPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)PFNGLMULTITEXCOORD4FPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD4FVPROC;
alias void  function(GLenum target, GLint s, GLint t, GLint r, GLint q)PFNGLMULTITEXCOORD4IPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD4IVPROC;
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)PFNGLMULTITEXCOORD4SPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD4SVPROC;
alias void  function(GLfloat *m)PFNGLLOADTRANSPOSEMATRIXFPROC;
alias void  function(GLdouble *m)PFNGLLOADTRANSPOSEMATRIXDPROC;
alias void  function(GLfloat *m)PFNGLMULTTRANSPOSEMATRIXFPROC;
alias void  function(GLdouble *m)PFNGLMULTTRANSPOSEMATRIXDPROC;
alias void  function(GLclampf value, GLboolean invert)PFNGLSAMPLECOVERAGEPROC;
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE3DPROC;
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE2DPROC;
alias void  function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXIMAGE1DPROC;
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
alias void  function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
alias void  function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data)PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
alias void  function(GLenum target, GLint level, void *img)PFNGLGETCOMPRESSEDTEXIMAGEPROC;


/*
 * GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
 */

const GL_ARB_multitexture = 1;
const GL_TEXTURE0_ARB = 0x84C0;
const GL_TEXTURE1_ARB = 0x84C1;
const GL_TEXTURE2_ARB = 0x84C2;
const GL_TEXTURE3_ARB = 0x84C3;
const GL_TEXTURE4_ARB = 0x84C4;
const GL_TEXTURE5_ARB = 0x84C5;
const GL_TEXTURE6_ARB = 0x84C6;
const GL_TEXTURE7_ARB = 0x84C7;
const GL_TEXTURE8_ARB = 0x84C8;
const GL_TEXTURE9_ARB = 0x84C9;
const GL_TEXTURE10_ARB = 0x84CA;
const GL_TEXTURE11_ARB = 0x84CB;
const GL_TEXTURE12_ARB = 0x84CC;
const GL_TEXTURE13_ARB = 0x84CD;
const GL_TEXTURE14_ARB = 0x84CE;
const GL_TEXTURE15_ARB = 0x84CF;
const GL_TEXTURE16_ARB = 0x84D0;
const GL_TEXTURE17_ARB = 0x84D1;
const GL_TEXTURE18_ARB = 0x84D2;
const GL_TEXTURE19_ARB = 0x84D3;
const GL_TEXTURE20_ARB = 0x84D4;
const GL_TEXTURE21_ARB = 0x84D5;
const GL_TEXTURE22_ARB = 0x84D6;
const GL_TEXTURE23_ARB = 0x84D7;
const GL_TEXTURE24_ARB = 0x84D8;
const GL_TEXTURE25_ARB = 0x84D9;
const GL_TEXTURE26_ARB = 0x84DA;
const GL_TEXTURE27_ARB = 0x84DB;
const GL_TEXTURE28_ARB = 0x84DC;
const GL_TEXTURE29_ARB = 0x84DD;
const GL_TEXTURE30_ARB = 0x84DE;
const GL_TEXTURE31_ARB = 0x84DF;
const GL_ACTIVE_TEXTURE_ARB = 0x84E0;
const GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1;

const GL_MAX_TEXTURE_UNITS_ARB = 0x84E2;

alias void  function(GLenum texture)PFNGLACTIVETEXTUREARBPROC;
alias void  function(GLenum texture)PFNGLCLIENTACTIVETEXTUREARBPROC;
alias void  function(GLenum target, GLdouble s)PFNGLMULTITEXCOORD1DARBPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD1DVARBPROC;
alias void  function(GLenum target, GLfloat s)PFNGLMULTITEXCOORD1FARBPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD1FVARBPROC;
alias void  function(GLenum target, GLint s)PFNGLMULTITEXCOORD1IARBPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD1IVARBPROC;
alias void  function(GLenum target, GLshort s)PFNGLMULTITEXCOORD1SARBPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD1SVARBPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t)PFNGLMULTITEXCOORD2DARBPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD2DVARBPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t)PFNGLMULTITEXCOORD2FARBPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD2FVARBPROC;
alias void  function(GLenum target, GLint s, GLint t)PFNGLMULTITEXCOORD2IARBPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD2IVARBPROC;
alias void  function(GLenum target, GLshort s, GLshort t)PFNGLMULTITEXCOORD2SARBPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD2SVARBPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r)PFNGLMULTITEXCOORD3DARBPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD3DVARBPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r)PFNGLMULTITEXCOORD3FARBPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD3FVARBPROC;
alias void  function(GLenum target, GLint s, GLint t, GLint r)PFNGLMULTITEXCOORD3IARBPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD3IVARBPROC;
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r)PFNGLMULTITEXCOORD3SARBPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD3SVARBPROC;
alias void  function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)PFNGLMULTITEXCOORD4DARBPROC;
alias void  function(GLenum target, GLdouble *v)PFNGLMULTITEXCOORD4DVARBPROC;
alias void  function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)PFNGLMULTITEXCOORD4FARBPROC;
alias void  function(GLenum target, GLfloat *v)PFNGLMULTITEXCOORD4FVARBPROC;
alias void  function(GLenum target, GLint s, GLint t, GLint r, GLint q)PFNGLMULTITEXCOORD4IARBPROC;
alias void  function(GLenum target, GLint *v)PFNGLMULTITEXCOORD4IVARBPROC;
alias void  function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)PFNGLMULTITEXCOORD4SARBPROC;
alias void  function(GLenum target, GLshort *v)PFNGLMULTITEXCOORD4SVARBPROC;




//#include <GL/glext.h>


/*
 * ???. GL_MESA_trace
 * XXX obsolete
 */

const GL_MESA_trace = 1;
const GL_TRACE_ALL_BITS_MESA = 0xFFFF;
const GL_TRACE_OPERATIONS_BIT_MESA = 0x0001;
const GL_TRACE_PRIMITIVES_BIT_MESA = 0x0002;
const GL_TRACE_ARRAYS_BIT_MESA = 0x0004;
const GL_TRACE_TEXTURES_BIT_MESA = 0x0008;
const GL_TRACE_PIXELS_BIT_MESA = 0x0010;
const GL_TRACE_ERRORS_BIT_MESA = 0x0020;
const GL_TRACE_MASK_MESA = 0x8755;

const GL_TRACE_NAME_MESA = 0x8756;

 
 



/*
 * ???. GL_MESA_packed_depth_stencil
 * XXX obsolete
 */

const GL_MESA_packed_depth_stencil = 1;
const GL_DEPTH_STENCIL_MESA = 0x8750;
const GL_UNSIGNED_INT_24_8_MESA = 0x8751;
const GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752;
const GL_UNSIGNED_SHORT_15_1_MESA = 0x8753;

const GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754;



const GL_MESA_program_debug = 1;
const GL_FRAGMENT_PROGRAM_POSITION_MESA = 0x8bb0;
const GL_FRAGMENT_PROGRAM_CALLBACK_MESA = 0x8bb1;
const GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb2;
const GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA = 0x8bb3;
const GL_VERTEX_PROGRAM_POSITION_MESA = 0x8bb4;
const GL_VERTEX_PROGRAM_CALLBACK_MESA = 0x8bb5;
const GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb6;

const GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA = 0x8bb7;







const GL_ATI_blend_equation_separate = 1;

const GL_ALPHA_BLEND_EQUATION_ATI = 0x883D;

alias void  function(GLenum modeRGB, GLenum modeA)PFNGLBLENDEQUATIONSEPARATEATIPROC;

extern(System)
{	
	/*
	 * Miscellaneous
	 */
	
	void  glClearIndex(GLfloat c);
	
	void  glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
	
	void  glClear(GLbitfield mask);
	
	void  glIndexMask(GLuint mask);
	
	void  glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
	
	void  glAlphaFunc(GLenum func, GLclampf refc);
	
	void  glBlendFunc(GLenum sfactor, GLenum dfactor);
	
	void  glLogicOp(GLenum opcode);
	
	void  glCullFace(GLenum mode);
	
	void  glFrontFace(GLenum mode);
	
	void  glPointSize(GLfloat size);
	
	void  glLineWidth(GLfloat width);
	
	void  glLineStipple(GLint factor, GLushort pattern);
	
	void  glPolygonMode(GLenum face, GLenum mode);
	
	void  glPolygonOffset(GLfloat factor, GLfloat units);
	
	void  glPolygonStipple(GLubyte *mask);
	
	void  glGetPolygonStipple(GLubyte *mask);
	
	void  glEdgeFlag(GLboolean flag);
	
	void  glEdgeFlagv(GLboolean *flag);
	
	void  glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
	
	void  glClipPlane(GLenum plane, GLdouble *equation);
	
	void  glGetClipPlane(GLenum plane, GLdouble *equation);
	
	void  glDrawBuffer(GLenum mode);
	
	void  glReadBuffer(GLenum mode);
	
	void  glEnable(GLenum cap);
	
	void  glDisable(GLenum cap);
	
	GLboolean  glIsEnabled(GLenum cap);
	
	
	void  glEnableClientState(GLenum cap);
	
	void  glDisableClientState(GLenum cap);
	
	
	void  glGetBooleanv(GLenum pname, GLboolean *params);
	
	void  glGetDoublev(GLenum pname, GLdouble *params);
	
	void  glGetFloatv(GLenum pname, GLfloat *params);
	
	void  glGetIntegerv(GLenum pname, GLint *params);
	
	
	void  glPushAttrib(GLbitfield mask);
	
	void  glPopAttrib();
	
	
	void  glPushClientAttrib(GLbitfield mask);
	
	void  glPopClientAttrib();
	
	
	GLint  glRenderMode(GLenum mode);
	
	GLenum  glGetError();
	
	GLubyte * glGetString(GLenum name);
	
	void  glFinish();
	
	void  glFlush();
	
	void  glHint(GLenum target, GLenum mode);
	
	
	/*
	 * Depth Buffer
	 */
	
	void  glClearDepth(GLclampd depth);
	
	void  glDepthFunc(GLenum func);
	
	void  glDepthMask(GLboolean flag);
	
	void  glDepthRange(GLclampd near_val, GLclampd far_val);
	
	
	/*
	 * Accumulation Buffer
	 */
	
	void  glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	
	void  glAccum(GLenum op, GLfloat value);
	
	
	/*
	 * Transformation
	 */
	
	void  glMatrixMode(GLenum mode);
	
	void  glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);
	
	void  glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);
	
	void  glViewport(GLint x, GLint y, GLsizei width, GLsizei height);
	
	void  glPushMatrix();
	
	void  glPopMatrix();
	
	void  glLoadIdentity();
	
	void  glLoadMatrixd(GLdouble *m);
	void  glLoadMatrixf(GLfloat *m);
	
	void  glMultMatrixd(GLdouble *m);
	void  glMultMatrixf(GLfloat *m);
	
	void  glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
	void  glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
	
	void  glScaled(GLdouble x, GLdouble y, GLdouble z);
	void  glScalef(GLfloat x, GLfloat y, GLfloat z);
	
	void  glTranslated(GLdouble x, GLdouble y, GLdouble z);
	void  glTranslatef(GLfloat x, GLfloat y, GLfloat z);
	
	
	/*
	 * Display Lists
	 */
	
	GLboolean  glIsList(GLuint list);
	
	void  glDeleteLists(GLuint list, GLsizei range);
	
	GLuint  glGenLists(GLsizei range);
	
	void  glNewList(GLuint list, GLenum mode);
	
	void  glEndList();
	
	void  glCallList(GLuint list);
	
	void  glCallLists(GLsizei n, GLenum type, GLvoid *lists);
	
	void  glListBase(GLuint base);
	
	
	/*
	 * Drawing Functions
	 */
	
	void  glBegin(GLenum mode);
	
	void  glEnd();
	
	
	void  glVertex2d(GLdouble x, GLdouble y);
	void  glVertex2f(GLfloat x, GLfloat y);
	void  glVertex2i(GLint x, GLint y);
	void  glVertex2s(GLshort x, GLshort y);
	
	void  glVertex3d(GLdouble x, GLdouble y, GLdouble z);
	void  glVertex3f(GLfloat x, GLfloat y, GLfloat z);
	void  glVertex3i(GLint x, GLint y, GLint z);
	void  glVertex3s(GLshort x, GLshort y, GLshort z);
	
	void  glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void  glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	void  glVertex4i(GLint x, GLint y, GLint z, GLint w);
	void  glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
	
	void  glVertex2dv(GLdouble *v);
	void  glVertex2fv(GLfloat *v);
	void  glVertex2iv(GLint *v);
	void  glVertex2sv(GLshort *v);
	
	void  glVertex3dv(GLdouble *v);
	void  glVertex3fv(GLfloat *v);
	void  glVertex3iv(GLint *v);
	void  glVertex3sv(GLshort *v);
	
	void  glVertex4dv(GLdouble *v);
	void  glVertex4fv(GLfloat *v);
	void  glVertex4iv(GLint *v);
	void  glVertex4sv(GLshort *v);
	
	
	void  glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz);
	void  glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz);
	void  glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz);
	void  glNormal3i(GLint nx, GLint ny, GLint nz);
	void  glNormal3s(GLshort nx, GLshort ny, GLshort nz);
	
	void  glNormal3bv(GLbyte *v);
	void  glNormal3dv(GLdouble *v);
	void  glNormal3fv(GLfloat *v);
	void  glNormal3iv(GLint *v);
	void  glNormal3sv(GLshort *v);
	
	
	void  glIndexd(GLdouble c);
	void  glIndexf(GLfloat c);
	void  glIndexi(GLint c);
	void  glIndexs(GLshort c);
	void  glIndexub(GLubyte c);
	
	void  glIndexdv(GLdouble *c);
	void  glIndexfv(GLfloat *c);
	void  glIndexiv(GLint *c);
	void  glIndexsv(GLshort *c);
	void  glIndexubv(GLubyte *c);
	
	void  glColor3b(GLbyte red, GLbyte green, GLbyte blue);
	void  glColor3d(GLdouble red, GLdouble green, GLdouble blue);
	void  glColor3f(GLfloat red, GLfloat green, GLfloat blue);
	void  glColor3i(GLint red, GLint green, GLint blue);
	void  glColor3s(GLshort red, GLshort green, GLshort blue);
	void  glColor3ub(GLubyte red, GLubyte green, GLubyte blue);
	void  glColor3ui(GLuint red, GLuint green, GLuint blue);
	void  glColor3us(GLushort red, GLushort green, GLushort blue);
	
	void  glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
	void  glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
	void  glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void  glColor4i(GLint red, GLint green, GLint blue, GLint alpha);
	void  glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
	void  glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
	void  glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
	void  glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
	
	
	void  glColor3bv(GLbyte *v);
	void  glColor3dv(GLdouble *v);
	void  glColor3fv(GLfloat *v);
	void  glColor3iv(GLint *v);
	void  glColor3sv(GLshort *v);
	void  glColor3ubv(GLubyte *v);
	void  glColor3uiv(GLuint *v);
	void  glColor3usv(GLushort *v);
	
	void  glColor4bv(GLbyte *v);
	void  glColor4dv(GLdouble *v);
	void  glColor4fv(GLfloat *v);
	void  glColor4iv(GLint *v);
	void  glColor4sv(GLshort *v);
	void  glColor4ubv(GLubyte *v);
	void  glColor4uiv(GLuint *v);
	void  glColor4usv(GLushort *v);
	
	
	void  glTexCoord1d(GLdouble s);
	void  glTexCoord1f(GLfloat s);
	void  glTexCoord1i(GLint s);
	void  glTexCoord1s(GLshort s);
	
	void  glTexCoord2d(GLdouble s, GLdouble t);
	void  glTexCoord2f(GLfloat s, GLfloat t);
	void  glTexCoord2i(GLint s, GLint t);
	void  glTexCoord2s(GLshort s, GLshort t);
	
	void  glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
	void  glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
	void  glTexCoord3i(GLint s, GLint t, GLint r);
	void  glTexCoord3s(GLshort s, GLshort t, GLshort r);
	
	void  glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	void  glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	void  glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
	void  glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
	
	void  glTexCoord1dv(GLdouble *v);
	void  glTexCoord1fv(GLfloat *v);
	void  glTexCoord1iv(GLint *v);
	void  glTexCoord1sv(GLshort *v);
	
	void  glTexCoord2dv(GLdouble *v);
	void  glTexCoord2fv(GLfloat *v);
	void  glTexCoord2iv(GLint *v);
	void  glTexCoord2sv(GLshort *v);
	
	void  glTexCoord3dv(GLdouble *v);
	void  glTexCoord3fv(GLfloat *v);
	void  glTexCoord3iv(GLint *v);
	void  glTexCoord3sv(GLshort *v);
	
	void  glTexCoord4dv(GLdouble *v);
	void  glTexCoord4fv(GLfloat *v);
	void  glTexCoord4iv(GLint *v);
	void  glTexCoord4sv(GLshort *v);
	
	
	void  glRasterPos2d(GLdouble x, GLdouble y);
	void  glRasterPos2f(GLfloat x, GLfloat y);
	void  glRasterPos2i(GLint x, GLint y);
	void  glRasterPos2s(GLshort x, GLshort y);
	
	void  glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
	void  glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
	void  glRasterPos3i(GLint x, GLint y, GLint z);
	void  glRasterPos3s(GLshort x, GLshort y, GLshort z);
	
	void  glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void  glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	void  glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
	void  glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
	
	void  glRasterPos2dv(GLdouble *v);
	void  glRasterPos2fv(GLfloat *v);
	void  glRasterPos2iv(GLint *v);
	void  glRasterPos2sv(GLshort *v);
	
	void  glRasterPos3dv(GLdouble *v);
	void  glRasterPos3fv(GLfloat *v);
	void  glRasterPos3iv(GLint *v);
	void  glRasterPos3sv(GLshort *v);
	
	void  glRasterPos4dv(GLdouble *v);
	void  glRasterPos4fv(GLfloat *v);
	void  glRasterPos4iv(GLint *v);
	void  glRasterPos4sv(GLshort *v);
	
	
	void  glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
	void  glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
	void  glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
	void  glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
	
	
	void  glRectdv(GLdouble *v1, GLdouble *v2);
	void  glRectfv(GLfloat *v1, GLfloat *v2);
	void  glRectiv(GLint *v1, GLint *v2);
	void  glRectsv(GLshort *v1, GLshort *v2);
	
	
	/*
	 * Vertex Arrays  (1.1)
	 */
	
	void  glVertexPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);
	
	void  glNormalPointer(GLenum type, GLsizei stride, GLvoid *ptr);
	
	void  glColorPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);
	
	void  glIndexPointer(GLenum type, GLsizei stride, GLvoid *ptr);
	
	void  glTexCoordPointer(GLint size, GLenum type, GLsizei stride, GLvoid *ptr);
	
	void  glEdgeFlagPointer(GLsizei stride, GLvoid *ptr);
	
	void  glGetPointerv(GLenum pname, GLvoid **params);
	
	void  glArrayElement(GLint i);
	
	void  glDrawArrays(GLenum mode, GLint first, GLsizei count);
	
	void  glDrawElements(GLenum mode, GLsizei count, GLenum type, GLvoid *indices);
	
	void  glInterleavedArrays(GLenum format, GLsizei stride, GLvoid *pointer);
	
	/*
	 * Lighting
	 */
	
	void  glShadeModel(GLenum mode);
	
	void  glLightf(GLenum light, GLenum pname, GLfloat param);
	void  glLighti(GLenum light, GLenum pname, GLint param);
	void  glLightfv(GLenum light, GLenum pname, GLfloat *params);
	void  glLightiv(GLenum light, GLenum pname, GLint *params);
	
	void  glGetLightfv(GLenum light, GLenum pname, GLfloat *params);
	void  glGetLightiv(GLenum light, GLenum pname, GLint *params);
	
	void  glLightModelf(GLenum pname, GLfloat param);
	void  glLightModeli(GLenum pname, GLint param);
	void  glLightModelfv(GLenum pname, GLfloat *params);
	void  glLightModeliv(GLenum pname, GLint *params);
	
	void  glMaterialf(GLenum face, GLenum pname, GLfloat param);
	void  glMateriali(GLenum face, GLenum pname, GLint param);
	void  glMaterialfv(GLenum face, GLenum pname, GLfloat *params);
	void  glMaterialiv(GLenum face, GLenum pname, GLint *params);
	
	void  glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
	void  glGetMaterialiv(GLenum face, GLenum pname, GLint *params);
	
	void  glColorMaterial(GLenum face, GLenum mode);
	
	
	/*
	 * Raster functions
	 */
	
	void  glPixelZoom(GLfloat xfactor, GLfloat yfactor);
	
	void  glPixelStoref(GLenum pname, GLfloat param);
	void  glPixelStorei(GLenum pname, GLint param);
	
	void  glPixelTransferf(GLenum pname, GLfloat param);
	void  glPixelTransferi(GLenum pname, GLint param);
	
	void  glPixelMapfv(GLenum map, GLsizei mapsize, GLfloat *values);
	void  glPixelMapuiv(GLenum map, GLsizei mapsize, GLuint *values);
	void  glPixelMapusv(GLenum map, GLsizei mapsize, GLushort *values);
	
	void  glGetPixelMapfv(GLenum map, GLfloat *values);
	void  glGetPixelMapuiv(GLenum map, GLuint *values);
	void  glGetPixelMapusv(GLenum map, GLushort *values);
	
	void  glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte *bitmap);
	
	void  glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
	
	/*
	 * Stenciling
	 */
	
	void  glStencilFunc(GLenum func, GLint refc, GLuint mask);
	
	void  glStencilMask(GLuint mask);
	
	void  glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
	
	void  glClearStencil(GLint s);
	
	
	
	/*
	 * Texture mapping
	 */
	
	void  glTexGend(GLenum coord, GLenum pname, GLdouble param);
	void  glTexGenf(GLenum coord, GLenum pname, GLfloat param);
	void  glTexGeni(GLenum coord, GLenum pname, GLint param);
	
	void  glTexGendv(GLenum coord, GLenum pname, GLdouble *params);
	void  glTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
	void  glTexGeniv(GLenum coord, GLenum pname, GLint *params);
	
	void  glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
	void  glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
	void  glGetTexGeniv(GLenum coord, GLenum pname, GLint *params);
	
	
	void  glTexEnvf(GLenum target, GLenum pname, GLfloat param);
	void  glTexEnvi(GLenum target, GLenum pname, GLint param);
	
	void  glTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
	void  glTexEnviv(GLenum target, GLenum pname, GLint *params);
	
	void  glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
	void  glGetTexEnviv(GLenum target, GLenum pname, GLint *params);
	
	
	void  glTexParameterf(GLenum target, GLenum pname, GLfloat param);
	void  glTexParameteri(GLenum target, GLenum pname, GLint param);
	
	void  glTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
	void  glTexParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
	void  glGetTexParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
	void  glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
	
	
	void  glTexImage1D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glTexImage2D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);
	
	
	/* 1.1 functions */
	
	void  glGenTextures(GLsizei n, GLuint *textures);
	
	void  glDeleteTextures(GLsizei n, GLuint *textures);
	
	void  glBindTexture(GLenum target, GLuint texture);
	
	void  glPrioritizeTextures(GLsizei n, GLuint *textures, GLclampf *priorities);
	
	GLboolean  glAreTexturesResident(GLsizei n, GLuint *textures, GLboolean *residences);
	
	GLboolean  glIsTexture(GLuint texture);
	
	
	void  glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);
	
	
	void  glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
	
	
	void  glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
	
	
	void  glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
	
	
	void  glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
	
	
	void  glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
	
	
	/*
	 * Evaluators
	 */
	
	void  glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble *points);
	void  glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat *points);
	
	void  glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble *points);
	void  glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat *points);
	
	void  glGetMapdv(GLenum target, GLenum query, GLdouble *v);
	void  glGetMapfv(GLenum target, GLenum query, GLfloat *v);
	void  glGetMapiv(GLenum target, GLenum query, GLint *v);
	
	void  glEvalCoord1d(GLdouble u);
	void  glEvalCoord1f(GLfloat u);
	
	void  glEvalCoord1dv(GLdouble *u);
	void  glEvalCoord1fv(GLfloat *u);
	
	void  glEvalCoord2d(GLdouble u, GLdouble v);
	void  glEvalCoord2f(GLfloat u, GLfloat v);
	
	void  glEvalCoord2dv(GLdouble *u);
	void  glEvalCoord2fv(GLfloat *u);
	
	void  glMapGrid1d(GLint un, GLdouble u1, GLdouble u2);
	void  glMapGrid1f(GLint un, GLfloat u1, GLfloat u2);
	
	void  glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
	void  glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
	
	void  glEvalPoint1(GLint i);
	
	void  glEvalPoint2(GLint i, GLint j);
	
	void  glEvalMesh1(GLenum mode, GLint i1, GLint i2);
	
	void  glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
	
	
	/*
	 * Fog
	 */
	
	void  glFogf(GLenum pname, GLfloat param);
	
	void  glFogi(GLenum pname, GLint param);
	
	void  glFogfv(GLenum pname, GLfloat *params);
	
	void  glFogiv(GLenum pname, GLint *params);
	
	
	/*
	 * Selection and Feedback
	 */
	
	void  glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
	
	void  glPassThrough(GLfloat token);
	
	void  glSelectBuffer(GLsizei size, GLuint *buffer);
	
	void  glInitNames();
	
	void  glLoadName(GLuint name);
	
	void  glPushName(GLuint name);
	
	void  glPopName();
	void  glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);
	
	void  glTexImage3D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);
	
	void  glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
	
	void  glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
	
	void  glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
	
	void  glColorTableParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glColorTableParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
	
	void  glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
	
	void  glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid *table);
	
	void  glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glGetColorTableParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glBlendEquation(GLenum mode);
	
	void  glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
	
	void  glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
	
	void  glResetHistogram(GLenum target);
	
	void  glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
	
	void  glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glGetHistogramParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glMinmax(GLenum target, GLenum internalformat, GLboolean sink);
	
	void  glResetMinmax(GLenum target);
	
	void  glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum types, GLvoid *values);
	
	void  glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);
	
	void  glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);
	
	void  glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params);
	
	void  glConvolutionParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glConvolutionParameteri(GLenum target, GLenum pname, GLint params);
	
	void  glConvolutionParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
	
	void  glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
	
	void  glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid *image);
	
	void  glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat *params);
	
	void  glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint *params);
	
	void  glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);
	
	void  glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
	void  glActiveTexture(GLenum texture);
	
	void  glClientActiveTexture(GLenum texture);
	
	void  glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);
	
	void  glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);
	
	void  glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);
	
	void  glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);
	
	void  glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);
	
	void  glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);
	
	void  glGetCompressedTexImage(GLenum target, GLint lod, GLvoid *img);
	
	void  glMultiTexCoord1d(GLenum target, GLdouble s);
	
	void  glMultiTexCoord1dv(GLenum target, GLdouble *v);
	
	void  glMultiTexCoord1f(GLenum target, GLfloat s);
	
	void  glMultiTexCoord1fv(GLenum target, GLfloat *v);
	
	void  glMultiTexCoord1i(GLenum target, GLint s);
	
	void  glMultiTexCoord1iv(GLenum target, GLint *v);
	
	void  glMultiTexCoord1s(GLenum target, GLshort s);
	
	void  glMultiTexCoord1sv(GLenum target, GLshort *v);
	
	void  glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t);
	
	void  glMultiTexCoord2dv(GLenum target, GLdouble *v);
	
	void  glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t);
	
	void  glMultiTexCoord2fv(GLenum target, GLfloat *v);
	
	void  glMultiTexCoord2i(GLenum target, GLint s, GLint t);
	
	void  glMultiTexCoord2iv(GLenum target, GLint *v);
	
	void  glMultiTexCoord2s(GLenum target, GLshort s, GLshort t);
	
	void  glMultiTexCoord2sv(GLenum target, GLshort *v);
	
	void  glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r);
	
	void  glMultiTexCoord3dv(GLenum target, GLdouble *v);
	
	void  glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r);
	
	void  glMultiTexCoord3fv(GLenum target, GLfloat *v);
	
	void  glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r);
	
	void  glMultiTexCoord3iv(GLenum target, GLint *v);
	
	void  glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r);
	
	void  glMultiTexCoord3sv(GLenum target, GLshort *v);
	
	void  glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	
	void  glMultiTexCoord4dv(GLenum target, GLdouble *v);
	
	void  glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	
	void  glMultiTexCoord4fv(GLenum target, GLfloat *v);
	
	void  glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q);
	
	void  glMultiTexCoord4iv(GLenum target, GLint *v);
	
	void  glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
	
	void  glMultiTexCoord4sv(GLenum target, GLshort *v);
	
	
	void  glLoadTransposeMatrixd(GLdouble *m);
	
	void  glLoadTransposeMatrixf(GLfloat *m);
	
	void  glMultTransposeMatrixd(GLdouble *m);
	
	void  glMultTransposeMatrixf(GLfloat *m);
	
	void  glSampleCoverage(GLclampf value, GLboolean invert);
	void  glActiveTextureARB(GLenum texture);
	void  glClientActiveTextureARB(GLenum texture);
	void  glMultiTexCoord1dARB(GLenum target, GLdouble s);
	void  glMultiTexCoord1dvARB(GLenum target, GLdouble *v);
	void  glMultiTexCoord1fARB(GLenum target, GLfloat s);
	void  glMultiTexCoord1fvARB(GLenum target, GLfloat *v);
	void  glMultiTexCoord1iARB(GLenum target, GLint s);
	void  glMultiTexCoord1ivARB(GLenum target, GLint *v);
	void  glMultiTexCoord1sARB(GLenum target, GLshort s);
	void  glMultiTexCoord1svARB(GLenum target, GLshort *v);
	void  glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
	void  glMultiTexCoord2dvARB(GLenum target, GLdouble *v);
	void  glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
	void  glMultiTexCoord2fvARB(GLenum target, GLfloat *v);
	void  glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
	void  glMultiTexCoord2ivARB(GLenum target, GLint *v);
	void  glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
	void  glMultiTexCoord2svARB(GLenum target, GLshort *v);
	void  glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
	void  glMultiTexCoord3dvARB(GLenum target, GLdouble *v);
	void  glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
	void  glMultiTexCoord3fvARB(GLenum target, GLfloat *v);
	void  glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
	void  glMultiTexCoord3ivARB(GLenum target, GLint *v);
	void  glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
	void  glMultiTexCoord3svARB(GLenum target, GLshort *v);
	void  glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	void  glMultiTexCoord4dvARB(GLenum target, GLdouble *v);
	void  glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	void  glMultiTexCoord4fvARB(GLenum target, GLfloat *v);
	void  glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
	void  glMultiTexCoord4ivARB(GLenum target, GLint *v);
	void  glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
	void  glMultiTexCoord4svARB(GLenum target, GLshort *v);
} // extern(System)


