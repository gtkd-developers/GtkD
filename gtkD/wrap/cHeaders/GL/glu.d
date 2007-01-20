/* Converted to D from wrap/cHeaders/GL/glu.hpp by htod */
module wrap/cHeaders/GL/glu;
/*
** License Applicability. Except to the extent portions of this file are
** made subject to an alternative license as permitted in the SGI Free
** Software License B, Version 1.1 (the "License"), the contents of this
** file are subject only to the provisions of the License. You may not use
** this file except in compliance with the License. You may obtain a copy
** of the License at Silicon Graphics, Inc., attn: Legal Services, 1600
** Amphitheatre Parkway, Mountain View, CA 94043-1351, or at:
** 
** http://oss.sgi.com/projects/FreeB
** 
** Note that, as provided in the License, the Software is distributed on an
** "AS IS" basis, with ALL EXPRESS AND IMPLIED WARRANTIES AND CONDITIONS
** DISCLAIMED, INCLUDING, WITHOUT LIMITATION, ANY IMPLIED WARRANTIES AND
** CONDITIONS OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A
** PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
** 
** Original Code. The Original Code is: OpenGL Sample Implementation,
** Version 1.2.1, released January 26, 2000, developed by Silicon Graphics,
** Inc. The Original Code is Copyright (c) 1991-2000 Silicon Graphics, Inc.
** Copyright in any portions created by third parties is as indicated
** elsewhere herein. All Rights Reserved.
** 
** Additional Notice Provisions: This software was created using the
** OpenGL(R) version 1.2.1 Sample Implementation published by SGI, but has
** not been independently verified as being compliant with the OpenGL(R)
** version 1.2.1 Specification.
*/

//#ifndef __glu_h__
//#define __glu_h__
//
//#if defined(USE_MGL_NAMESPACE)
//#include "glu_mangle.h"
//#endif
//
//C     #include <GL/gl.hpp>
import std.c.gl;

//C     #ifndef GLAPIENTRY
//C     #define GLAPIENTRY
//C     #endif

//C     #ifndef GLAPIENTRYP
//C     #define GLAPIENTRYP GLAPIENTRY *
//C     #endif

//C     #ifndef GLAPI
//C     #define GLAPI
//C     #endif

/*************************************************************/

/* Extensions */
//C     #define GLU_EXT_object_space_tess          1
//C     #define GLU_EXT_nurbs_tessellator          1
const GLU_EXT_object_space_tess = 1;

const GLU_EXT_nurbs_tessellator = 1;
/* Boolean */
//C     #define GLU_FALSE                          0
//C     #define GLU_TRUE                           1
const GLU_FALSE = 0;

const GLU_TRUE = 1;
/* Version */
//C     #define GLU_VERSION_1_1                    1
//C     #define GLU_VERSION_1_2                    1
const GLU_VERSION_1_1 = 1;
//C     #define GLU_VERSION_1_3                    1
const GLU_VERSION_1_2 = 1;

const GLU_VERSION_1_3 = 1;
/* StringName */
//C     #define GLU_VERSION                        100800
//C     #define GLU_EXTENSIONS                     100801
const GLU_VERSION = 100800;

const GLU_EXTENSIONS = 100801;
/* ErrorCode */
//C     #define GLU_INVALID_ENUM                   100900
//C     #define GLU_INVALID_VALUE                  100901
const GLU_INVALID_ENUM = 100900;
//C     #define GLU_OUT_OF_MEMORY                  100902
const GLU_INVALID_VALUE = 100901;
//C     #define GLU_INCOMPATIBLE_GL_VERSION        100903
const GLU_OUT_OF_MEMORY = 100902;
//C     #define GLU_INVALID_OPERATION              100904
const GLU_INCOMPATIBLE_GL_VERSION = 100903;

const GLU_INVALID_OPERATION = 100904;
/* NurbsDisplay */
/*      GLU_FILL */
//C     #define GLU_OUTLINE_POLYGON                100240
//C     #define GLU_OUTLINE_PATCH                  100241
const GLU_OUTLINE_POLYGON = 100240;

const GLU_OUTLINE_PATCH = 100241;
/* NurbsCallback */
//C     #define GLU_NURBS_ERROR                    100103
//C     #define GLU_ERROR                          100103
const GLU_NURBS_ERROR = 100103;
//C     #define GLU_NURBS_BEGIN                    100164
const GLU_ERROR = 100103;
//C     #define GLU_NURBS_BEGIN_EXT                100164
const GLU_NURBS_BEGIN = 100164;
//C     #define GLU_NURBS_VERTEX                   100165
const GLU_NURBS_BEGIN_EXT = 100164;
//C     #define GLU_NURBS_VERTEX_EXT               100165
const GLU_NURBS_VERTEX = 100165;
//C     #define GLU_NURBS_NORMAL                   100166
const GLU_NURBS_VERTEX_EXT = 100165;
//C     #define GLU_NURBS_NORMAL_EXT               100166
const GLU_NURBS_NORMAL = 100166;
//C     #define GLU_NURBS_COLOR                    100167
const GLU_NURBS_NORMAL_EXT = 100166;
//C     #define GLU_NURBS_COLOR_EXT                100167
const GLU_NURBS_COLOR = 100167;
//C     #define GLU_NURBS_TEXTURE_COORD            100168
const GLU_NURBS_COLOR_EXT = 100167;
//C     #define GLU_NURBS_TEX_COORD_EXT            100168
const GLU_NURBS_TEXTURE_COORD = 100168;
//C     #define GLU_NURBS_END                      100169
const GLU_NURBS_TEX_COORD_EXT = 100168;
//C     #define GLU_NURBS_END_EXT                  100169
const GLU_NURBS_END = 100169;
//C     #define GLU_NURBS_BEGIN_DATA               100170
const GLU_NURBS_END_EXT = 100169;
//C     #define GLU_NURBS_BEGIN_DATA_EXT           100170
const GLU_NURBS_BEGIN_DATA = 100170;
//C     #define GLU_NURBS_VERTEX_DATA              100171
const GLU_NURBS_BEGIN_DATA_EXT = 100170;
//C     #define GLU_NURBS_VERTEX_DATA_EXT          100171
const GLU_NURBS_VERTEX_DATA = 100171;
//C     #define GLU_NURBS_NORMAL_DATA              100172
const GLU_NURBS_VERTEX_DATA_EXT = 100171;
//C     #define GLU_NURBS_NORMAL_DATA_EXT          100172
const GLU_NURBS_NORMAL_DATA = 100172;
//C     #define GLU_NURBS_COLOR_DATA               100173
const GLU_NURBS_NORMAL_DATA_EXT = 100172;
//C     #define GLU_NURBS_COLOR_DATA_EXT           100173
const GLU_NURBS_COLOR_DATA = 100173;
//C     #define GLU_NURBS_TEXTURE_COORD_DATA       100174
const GLU_NURBS_COLOR_DATA_EXT = 100173;
//C     #define GLU_NURBS_TEX_COORD_DATA_EXT       100174
const GLU_NURBS_TEXTURE_COORD_DATA = 100174;
//C     #define GLU_NURBS_END_DATA                 100175
const GLU_NURBS_TEX_COORD_DATA_EXT = 100174;
//C     #define GLU_NURBS_END_DATA_EXT             100175
const GLU_NURBS_END_DATA = 100175;

const GLU_NURBS_END_DATA_EXT = 100175;
/* NurbsError */
//C     #define GLU_NURBS_ERROR1                   100251
//C     #define GLU_NURBS_ERROR2                   100252
const GLU_NURBS_ERROR1 = 100251;
//C     #define GLU_NURBS_ERROR3                   100253
const GLU_NURBS_ERROR2 = 100252;
//C     #define GLU_NURBS_ERROR4                   100254
const GLU_NURBS_ERROR3 = 100253;
//C     #define GLU_NURBS_ERROR5                   100255
const GLU_NURBS_ERROR4 = 100254;
//C     #define GLU_NURBS_ERROR6                   100256
const GLU_NURBS_ERROR5 = 100255;
//C     #define GLU_NURBS_ERROR7                   100257
const GLU_NURBS_ERROR6 = 100256;
//C     #define GLU_NURBS_ERROR8                   100258
const GLU_NURBS_ERROR7 = 100257;
//C     #define GLU_NURBS_ERROR9                   100259
const GLU_NURBS_ERROR8 = 100258;
//C     #define GLU_NURBS_ERROR10                  100260
const GLU_NURBS_ERROR9 = 100259;
//C     #define GLU_NURBS_ERROR11                  100261
const GLU_NURBS_ERROR10 = 100260;
//C     #define GLU_NURBS_ERROR12                  100262
const GLU_NURBS_ERROR11 = 100261;
//C     #define GLU_NURBS_ERROR13                  100263
const GLU_NURBS_ERROR12 = 100262;
//C     #define GLU_NURBS_ERROR14                  100264
const GLU_NURBS_ERROR13 = 100263;
//C     #define GLU_NURBS_ERROR15                  100265
const GLU_NURBS_ERROR14 = 100264;
//C     #define GLU_NURBS_ERROR16                  100266
const GLU_NURBS_ERROR15 = 100265;
//C     #define GLU_NURBS_ERROR17                  100267
const GLU_NURBS_ERROR16 = 100266;
//C     #define GLU_NURBS_ERROR18                  100268
const GLU_NURBS_ERROR17 = 100267;
//C     #define GLU_NURBS_ERROR19                  100269
const GLU_NURBS_ERROR18 = 100268;
//C     #define GLU_NURBS_ERROR20                  100270
const GLU_NURBS_ERROR19 = 100269;
//C     #define GLU_NURBS_ERROR21                  100271
const GLU_NURBS_ERROR20 = 100270;
//C     #define GLU_NURBS_ERROR22                  100272
const GLU_NURBS_ERROR21 = 100271;
//C     #define GLU_NURBS_ERROR23                  100273
const GLU_NURBS_ERROR22 = 100272;
//C     #define GLU_NURBS_ERROR24                  100274
const GLU_NURBS_ERROR23 = 100273;
//C     #define GLU_NURBS_ERROR25                  100275
const GLU_NURBS_ERROR24 = 100274;
//C     #define GLU_NURBS_ERROR26                  100276
const GLU_NURBS_ERROR25 = 100275;
//C     #define GLU_NURBS_ERROR27                  100277
const GLU_NURBS_ERROR26 = 100276;
//C     #define GLU_NURBS_ERROR28                  100278
const GLU_NURBS_ERROR27 = 100277;
//C     #define GLU_NURBS_ERROR29                  100279
const GLU_NURBS_ERROR28 = 100278;
//C     #define GLU_NURBS_ERROR30                  100280
const GLU_NURBS_ERROR29 = 100279;
//C     #define GLU_NURBS_ERROR31                  100281
const GLU_NURBS_ERROR30 = 100280;
//C     #define GLU_NURBS_ERROR32                  100282
const GLU_NURBS_ERROR31 = 100281;
//C     #define GLU_NURBS_ERROR33                  100283
const GLU_NURBS_ERROR32 = 100282;
//C     #define GLU_NURBS_ERROR34                  100284
const GLU_NURBS_ERROR33 = 100283;
//C     #define GLU_NURBS_ERROR35                  100285
const GLU_NURBS_ERROR34 = 100284;
//C     #define GLU_NURBS_ERROR36                  100286
const GLU_NURBS_ERROR35 = 100285;
//C     #define GLU_NURBS_ERROR37                  100287
const GLU_NURBS_ERROR36 = 100286;

const GLU_NURBS_ERROR37 = 100287;
/* NurbsProperty */
//C     #define GLU_AUTO_LOAD_MATRIX               100200
//C     #define GLU_CULLING                        100201
const GLU_AUTO_LOAD_MATRIX = 100200;
//C     #define GLU_SAMPLING_TOLERANCE             100203
const GLU_CULLING = 100201;
//C     #define GLU_DISPLAY_MODE                   100204
const GLU_SAMPLING_TOLERANCE = 100203;
//C     #define GLU_PARAMETRIC_TOLERANCE           100202
const GLU_DISPLAY_MODE = 100204;
//C     #define GLU_SAMPLING_METHOD                100205
const GLU_PARAMETRIC_TOLERANCE = 100202;
//C     #define GLU_U_STEP                         100206
const GLU_SAMPLING_METHOD = 100205;
//C     #define GLU_V_STEP                         100207
const GLU_U_STEP = 100206;
//C     #define GLU_NURBS_MODE                     100160
const GLU_V_STEP = 100207;
//C     #define GLU_NURBS_MODE_EXT                 100160
const GLU_NURBS_MODE = 100160;
//C     #define GLU_NURBS_TESSELLATOR              100161
const GLU_NURBS_MODE_EXT = 100160;
//C     #define GLU_NURBS_TESSELLATOR_EXT          100161
const GLU_NURBS_TESSELLATOR = 100161;
//C     #define GLU_NURBS_RENDERER                 100162
const GLU_NURBS_TESSELLATOR_EXT = 100161;
//C     #define GLU_NURBS_RENDERER_EXT             100162
const GLU_NURBS_RENDERER = 100162;

const GLU_NURBS_RENDERER_EXT = 100162;
/* NurbsSampling */
//C     #define GLU_OBJECT_PARAMETRIC_ERROR        100208
//C     #define GLU_OBJECT_PARAMETRIC_ERROR_EXT    100208
const GLU_OBJECT_PARAMETRIC_ERROR = 100208;
//C     #define GLU_OBJECT_PATH_LENGTH             100209
const GLU_OBJECT_PARAMETRIC_ERROR_EXT = 100208;
//C     #define GLU_OBJECT_PATH_LENGTH_EXT         100209
const GLU_OBJECT_PATH_LENGTH = 100209;
//C     #define GLU_PATH_LENGTH                    100215
const GLU_OBJECT_PATH_LENGTH_EXT = 100209;
//C     #define GLU_PARAMETRIC_ERROR               100216
const GLU_PATH_LENGTH = 100215;
//C     #define GLU_DOMAIN_DISTANCE                100217
const GLU_PARAMETRIC_ERROR = 100216;

const GLU_DOMAIN_DISTANCE = 100217;
/* NurbsTrim */
//C     #define GLU_MAP1_TRIM_2                    100210
//C     #define GLU_MAP1_TRIM_3                    100211
const GLU_MAP1_TRIM_2 = 100210;

const GLU_MAP1_TRIM_3 = 100211;
/* QuadricDrawStyle */
//C     #define GLU_POINT                          100010
//C     #define GLU_LINE                           100011
const GLU_POINT = 100010;
//C     #define GLU_FILL                           100012
const GLU_LINE = 100011;
//C     #define GLU_SILHOUETTE                     100013
const GLU_FILL = 100012;

const GLU_SILHOUETTE = 100013;
/* QuadricCallback */
/*      GLU_ERROR */

/* QuadricNormal */
//C     #define GLU_SMOOTH                         100000
//C     #define GLU_FLAT                           100001
const GLU_SMOOTH = 100000;
//C     #define GLU_NONE                           100002
const GLU_FLAT = 100001;

const GLU_NONE = 100002;
/* QuadricOrientation */
//C     #define GLU_OUTSIDE                        100020
//C     #define GLU_INSIDE                         100021
const GLU_OUTSIDE = 100020;

const GLU_INSIDE = 100021;
/* TessCallback */
//C     #define GLU_TESS_BEGIN                     100100
//C     #define GLU_BEGIN                          100100
const GLU_TESS_BEGIN = 100100;
//C     #define GLU_TESS_VERTEX                    100101
const GLU_BEGIN = 100100;
//C     #define GLU_VERTEX                         100101
const GLU_TESS_VERTEX = 100101;
//C     #define GLU_TESS_END                       100102
const GLU_VERTEX = 100101;
//C     #define GLU_END                            100102
const GLU_TESS_END = 100102;
//C     #define GLU_TESS_ERROR                     100103
const GLU_END = 100102;
//C     #define GLU_TESS_EDGE_FLAG                 100104
const GLU_TESS_ERROR = 100103;
//C     #define GLU_EDGE_FLAG                      100104
const GLU_TESS_EDGE_FLAG = 100104;
//C     #define GLU_TESS_COMBINE                   100105
const GLU_EDGE_FLAG = 100104;
//C     #define GLU_TESS_BEGIN_DATA                100106
const GLU_TESS_COMBINE = 100105;
//C     #define GLU_TESS_VERTEX_DATA               100107
const GLU_TESS_BEGIN_DATA = 100106;
//C     #define GLU_TESS_END_DATA                  100108
const GLU_TESS_VERTEX_DATA = 100107;
//C     #define GLU_TESS_ERROR_DATA                100109
const GLU_TESS_END_DATA = 100108;
//C     #define GLU_TESS_EDGE_FLAG_DATA            100110
const GLU_TESS_ERROR_DATA = 100109;
//C     #define GLU_TESS_COMBINE_DATA              100111
const GLU_TESS_EDGE_FLAG_DATA = 100110;

const GLU_TESS_COMBINE_DATA = 100111;
/* TessContour */
//C     #define GLU_CW                             100120
//C     #define GLU_CCW                            100121
const GLU_CW = 100120;
//C     #define GLU_INTERIOR                       100122
const GLU_CCW = 100121;
//C     #define GLU_EXTERIOR                       100123
const GLU_INTERIOR = 100122;
//C     #define GLU_UNKNOWN                        100124
const GLU_EXTERIOR = 100123;

const GLU_UNKNOWN = 100124;
/* TessProperty */
//C     #define GLU_TESS_WINDING_RULE              100140
//C     #define GLU_TESS_BOUNDARY_ONLY             100141
const GLU_TESS_WINDING_RULE = 100140;
//C     #define GLU_TESS_TOLERANCE                 100142
const GLU_TESS_BOUNDARY_ONLY = 100141;

const GLU_TESS_TOLERANCE = 100142;
/* TessError */
//C     #define GLU_TESS_ERROR1                    100151
//C     #define GLU_TESS_ERROR2                    100152
const GLU_TESS_ERROR1 = 100151;
//C     #define GLU_TESS_ERROR3                    100153
const GLU_TESS_ERROR2 = 100152;
//C     #define GLU_TESS_ERROR4                    100154
const GLU_TESS_ERROR3 = 100153;
//C     #define GLU_TESS_ERROR5                    100155
const GLU_TESS_ERROR4 = 100154;
//C     #define GLU_TESS_ERROR6                    100156
const GLU_TESS_ERROR5 = 100155;
//C     #define GLU_TESS_ERROR7                    100157
const GLU_TESS_ERROR6 = 100156;
//C     #define GLU_TESS_ERROR8                    100158
const GLU_TESS_ERROR7 = 100157;
//C     #define GLU_TESS_MISSING_BEGIN_POLYGON     100151
const GLU_TESS_ERROR8 = 100158;
//C     #define GLU_TESS_MISSING_BEGIN_CONTOUR     100152
const GLU_TESS_MISSING_BEGIN_POLYGON = 100151;
//C     #define GLU_TESS_MISSING_END_POLYGON       100153
const GLU_TESS_MISSING_BEGIN_CONTOUR = 100152;
//C     #define GLU_TESS_MISSING_END_CONTOUR       100154
const GLU_TESS_MISSING_END_POLYGON = 100153;
//C     #define GLU_TESS_COORD_TOO_LARGE           100155
const GLU_TESS_MISSING_END_CONTOUR = 100154;
//C     #define GLU_TESS_NEED_COMBINE_CALLBACK     100156
const GLU_TESS_COORD_TOO_LARGE = 100155;

const GLU_TESS_NEED_COMBINE_CALLBACK = 100156;
/* TessWinding */
//C     #define GLU_TESS_WINDING_ODD               100130
//C     #define GLU_TESS_WINDING_NONZERO           100131
const GLU_TESS_WINDING_ODD = 100130;
//C     #define GLU_TESS_WINDING_POSITIVE          100132
const GLU_TESS_WINDING_NONZERO = 100131;
//C     #define GLU_TESS_WINDING_NEGATIVE          100133
const GLU_TESS_WINDING_POSITIVE = 100132;
//C     #define GLU_TESS_WINDING_ABS_GEQ_TWO       100134
const GLU_TESS_WINDING_NEGATIVE = 100133;

const GLU_TESS_WINDING_ABS_GEQ_TWO = 100134;
/*************************************************************/


//#ifdef __cplusplus
//class GLUnurbs;
//class GLUquadric;
//class GLUtesselator;
//#else
//C     struct GLUnurbs;
//C     struct GLUquadric;
//C     struct GLUtesselator;
//#endif

//C     typedef GLUnurbs GLUnurbsObj;
extern (C):
alias int GLUnurbs;
//C     typedef GLUquadric GLUquadricObj;
alias int GLUquadric;
//C     typedef GLUtesselator GLUtesselatorObj;
alias int GLUtesselator;
//C     typedef GLUtesselator GLUtriangulatorObj;
alias GLUtesselator GLUtriangulatorObj;

//C     #define GLU_TESS_MAX_COORD 1.0e150

const GLU_TESS_MAX_COORD = 1.0e150;
/* Internal convenience typedefs */
//C     typedef void (GLAPIENTRYP _GLUfuncptr)(void);
alias void  function()_GLUfuncptr;

//C     GLAPI void GLAPIENTRY gluBeginCurve (GLUnurbs* nurb);
void  gluBeginCurve(GLUnurbs *nurb);
//C     GLAPI void GLAPIENTRY gluBeginPolygon (GLUtesselator* tess);
void  gluBeginPolygon(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluBeginSurface (GLUnurbs* nurb);
void  gluBeginSurface(GLUnurbs *nurb);
//C     GLAPI void GLAPIENTRY gluBeginTrim (GLUnurbs* nurb);
void  gluBeginTrim(GLUnurbs *nurb);
//C     GLAPI GLint GLAPIENTRY gluBuild1DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint  gluBuild1DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
//C     GLAPI GLint GLAPIENTRY gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const void *data);
GLint  gluBuild1DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data);
//C     GLAPI GLint GLAPIENTRY gluBuild2DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint  gluBuild2DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
//C     GLAPI GLint GLAPIENTRY gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *data);
GLint  gluBuild2DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data);
//C     GLAPI GLint GLAPIENTRY gluBuild3DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint  gluBuild3DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
//C     GLAPI GLint GLAPIENTRY gluBuild3DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data);
GLint  gluBuild3DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data);
//C     GLAPI GLboolean GLAPIENTRY gluCheckExtension (const GLubyte *extName, const GLubyte *extString);
GLboolean  gluCheckExtension(GLubyte *extName, GLubyte *extString);
//C     GLAPI void GLAPIENTRY gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
void  gluCylinder(GLUquadric *quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
//C     GLAPI void GLAPIENTRY gluDeleteNurbsRenderer (GLUnurbs* nurb);
void  gluDeleteNurbsRenderer(GLUnurbs *nurb);
//C     GLAPI void GLAPIENTRY gluDeleteQuadric (GLUquadric* quad);
void  gluDeleteQuadric(GLUquadric *quad);
//C     GLAPI void GLAPIENTRY gluDeleteTess (GLUtesselator* tess);
void  gluDeleteTess(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
void  gluDisk(GLUquadric *quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
//C     GLAPI void GLAPIENTRY gluEndCurve (GLUnurbs* nurb);
void  gluEndCurve(GLUnurbs *nurb);
//C     GLAPI void GLAPIENTRY gluEndPolygon (GLUtesselator* tess);
void  gluEndPolygon(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluEndSurface (GLUnurbs* nurb);
void  gluEndSurface(GLUnurbs *nurb);
//C     GLAPI void GLAPIENTRY gluEndTrim (GLUnurbs* nurb);
void  gluEndTrim(GLUnurbs *nurb);
//C     GLAPI const GLubyte * GLAPIENTRY gluErrorString (GLenum error);
GLubyte * gluErrorString(GLenum error);
//C     GLAPI void GLAPIENTRY gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data);
void  gluGetNurbsProperty(GLUnurbs *nurb, GLenum property, GLfloat *data);
//C     GLAPI const GLubyte * GLAPIENTRY gluGetString (GLenum name);
GLubyte * gluGetString(GLenum name);
//C     GLAPI void GLAPIENTRY gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data);
void  gluGetTessProperty(GLUtesselator *tess, GLenum which, GLdouble *data);
//C     GLAPI void GLAPIENTRY gluLoadSamplingMatrices (GLUnurbs* nurb, const GLfloat *model, const GLfloat *perspective, const GLint *view);
void  gluLoadSamplingMatrices(GLUnurbs *nurb, GLfloat *model, GLfloat *perspective, GLint *view);
//C     GLAPI void GLAPIENTRY gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
void  gluLookAt(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
//C     GLAPI GLUnurbs* GLAPIENTRY gluNewNurbsRenderer (void);
GLUnurbs * gluNewNurbsRenderer();
//C     GLAPI GLUquadric* GLAPIENTRY gluNewQuadric (void);
GLUquadric * gluNewQuadric();
//C     GLAPI GLUtesselator* GLAPIENTRY gluNewTess (void);
GLUtesselator * gluNewTess();
//C     GLAPI void GLAPIENTRY gluNextContour (GLUtesselator* tess, GLenum type);
void  gluNextContour(GLUtesselator *tess, GLenum type);
//C     GLAPI void GLAPIENTRY gluNurbsCallback (GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc);
void  gluNurbsCallback(GLUnurbs *nurb, GLenum which, _GLUfuncptr CallBackFunc);
//C     GLAPI void GLAPIENTRY gluNurbsCallbackData (GLUnurbs* nurb, GLvoid* userData);
void  gluNurbsCallbackData(GLUnurbs *nurb, GLvoid *userData);
//C     GLAPI void GLAPIENTRY gluNurbsCallbackDataEXT (GLUnurbs* nurb, GLvoid* userData);
void  gluNurbsCallbackDataEXT(GLUnurbs *nurb, GLvoid *userData);
//C     GLAPI void GLAPIENTRY gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
void  gluNurbsCurve(GLUnurbs *nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
//C     GLAPI void GLAPIENTRY gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value);
void  gluNurbsProperty(GLUnurbs *nurb, GLenum property, GLfloat value);
//C     GLAPI void GLAPIENTRY gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type);
void  gluNurbsSurface(GLUnurbs *nurb, GLint sKnotCount, GLfloat *sKnots, GLint tKnotCount, GLfloat *tKnots, GLint sStride, GLint tStride, GLfloat *control, GLint sOrder, GLint tOrder, GLenum type);
//C     GLAPI void GLAPIENTRY gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
void  gluOrtho2D(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
//C     GLAPI void GLAPIENTRY gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
void  gluPartialDisk(GLUquadric *quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
//C     GLAPI void GLAPIENTRY gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
void  gluPerspective(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
//C     GLAPI void GLAPIENTRY gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
void  gluPickMatrix(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
//C     GLAPI GLint GLAPIENTRY gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ);
GLint  gluProject(GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble *winX, GLdouble *winY, GLdouble *winZ);
//C     GLAPI void GLAPIENTRY gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type);
void  gluPwlCurve(GLUnurbs *nurb, GLint count, GLfloat *data, GLint stride, GLenum type);
//C     GLAPI void GLAPIENTRY gluQuadricCallback (GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc);
void  gluQuadricCallback(GLUquadric *quad, GLenum which, _GLUfuncptr CallBackFunc);
//C     GLAPI void GLAPIENTRY gluQuadricDrawStyle (GLUquadric* quad, GLenum draw);
void  gluQuadricDrawStyle(GLUquadric *quad, GLenum draw);
//C     GLAPI void GLAPIENTRY gluQuadricNormals (GLUquadric* quad, GLenum normal);
void  gluQuadricNormals(GLUquadric *quad, GLenum normal);
//C     GLAPI void GLAPIENTRY gluQuadricOrientation (GLUquadric* quad, GLenum orientation);
void  gluQuadricOrientation(GLUquadric *quad, GLenum orientation);
//C     GLAPI void GLAPIENTRY gluQuadricTexture (GLUquadric* quad, GLboolean texture);
void  gluQuadricTexture(GLUquadric *quad, GLboolean texture);
//C     GLAPI GLint GLAPIENTRY gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut);
GLint  gluScaleImage(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid *dataOut);
//C     GLAPI void GLAPIENTRY gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks);
void  gluSphere(GLUquadric *quad, GLdouble radius, GLint slices, GLint stacks);
//C     GLAPI void GLAPIENTRY gluTessBeginContour (GLUtesselator* tess);
void  gluTessBeginContour(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data);
void  gluTessBeginPolygon(GLUtesselator *tess, GLvoid *data);
//C     GLAPI void GLAPIENTRY gluTessCallback (GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc);
void  gluTessCallback(GLUtesselator *tess, GLenum which, _GLUfuncptr CallBackFunc);
//C     GLAPI void GLAPIENTRY gluTessEndContour (GLUtesselator* tess);
void  gluTessEndContour(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluTessEndPolygon (GLUtesselator* tess);
void  gluTessEndPolygon(GLUtesselator *tess);
//C     GLAPI void GLAPIENTRY gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
void  gluTessNormal(GLUtesselator *tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
//C     GLAPI void GLAPIENTRY gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data);
void  gluTessProperty(GLUtesselator *tess, GLenum which, GLdouble data);
//C     GLAPI void GLAPIENTRY gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data);
void  gluTessVertex(GLUtesselator *tess, GLdouble *location, GLvoid *data);
//C     GLAPI GLint GLAPIENTRY gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ);
GLint  gluUnProject(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble *objX, GLdouble *objY, GLdouble *objZ);
//C     GLAPI GLint GLAPIENTRY gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble nearVal, GLdouble farVal, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW);
GLint  gluUnProject4(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble nearVal, GLdouble farVal, GLdouble *objX, GLdouble *objY, GLdouble *objZ, GLdouble *objW);
