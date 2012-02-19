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


module gtkglc.glu;


//private import std.stdio;
private import gtkglc.glgdktypes;
private import gtkc.Loader;
private import gtkc.paths;

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
import gtkglc.gl;




/*************************************************************/

/* Extensions */
const GLU_EXT_object_space_tess = 1;

const GLU_EXT_nurbs_tessellator = 1;
/* Boolean */
const GLU_FALSE = 0;

const GLU_TRUE = 1;
/* Version */
const GLU_VERSION_1_1 = 1;
const GLU_VERSION_1_2 = 1;

const GLU_VERSION_1_3 = 1;
/* StringName */
const GLU_VERSION = 100800;

const GLU_EXTENSIONS = 100801;
/* ErrorCode */
const GLU_INVALID_ENUM = 100900;
const GLU_INVALID_VALUE = 100901;
const GLU_OUT_OF_MEMORY = 100902;
const GLU_INCOMPATIBLE_GL_VERSION = 100903;

const GLU_INVALID_OPERATION = 100904;
/* NurbsDisplay */
/*      GLU_FILL */
const GLU_OUTLINE_POLYGON = 100240;

const GLU_OUTLINE_PATCH = 100241;
/* NurbsCallback */
const GLU_NURBS_ERROR = 100103;
const GLU_ERROR = 100103;
const GLU_NURBS_BEGIN = 100164;
const GLU_NURBS_BEGIN_EXT = 100164;
const GLU_NURBS_VERTEX = 100165;
const GLU_NURBS_VERTEX_EXT = 100165;
const GLU_NURBS_NORMAL = 100166;
const GLU_NURBS_NORMAL_EXT = 100166;
const GLU_NURBS_COLOR = 100167;
const GLU_NURBS_COLOR_EXT = 100167;
const GLU_NURBS_TEXTURE_COORD = 100168;
const GLU_NURBS_TEX_COORD_EXT = 100168;
const GLU_NURBS_END = 100169;
const GLU_NURBS_END_EXT = 100169;
const GLU_NURBS_BEGIN_DATA = 100170;
const GLU_NURBS_BEGIN_DATA_EXT = 100170;
const GLU_NURBS_VERTEX_DATA = 100171;
const GLU_NURBS_VERTEX_DATA_EXT = 100171;
const GLU_NURBS_NORMAL_DATA = 100172;
const GLU_NURBS_NORMAL_DATA_EXT = 100172;
const GLU_NURBS_COLOR_DATA = 100173;
const GLU_NURBS_COLOR_DATA_EXT = 100173;
const GLU_NURBS_TEXTURE_COORD_DATA = 100174;
const GLU_NURBS_TEX_COORD_DATA_EXT = 100174;
const GLU_NURBS_END_DATA = 100175;

const GLU_NURBS_END_DATA_EXT = 100175;
/* NurbsError */
const GLU_NURBS_ERROR1 = 100251;
const GLU_NURBS_ERROR2 = 100252;
const GLU_NURBS_ERROR3 = 100253;
const GLU_NURBS_ERROR4 = 100254;
const GLU_NURBS_ERROR5 = 100255;
const GLU_NURBS_ERROR6 = 100256;
const GLU_NURBS_ERROR7 = 100257;
const GLU_NURBS_ERROR8 = 100258;
const GLU_NURBS_ERROR9 = 100259;
const GLU_NURBS_ERROR10 = 100260;
const GLU_NURBS_ERROR11 = 100261;
const GLU_NURBS_ERROR12 = 100262;
const GLU_NURBS_ERROR13 = 100263;
const GLU_NURBS_ERROR14 = 100264;
const GLU_NURBS_ERROR15 = 100265;
const GLU_NURBS_ERROR16 = 100266;
const GLU_NURBS_ERROR17 = 100267;
const GLU_NURBS_ERROR18 = 100268;
const GLU_NURBS_ERROR19 = 100269;
const GLU_NURBS_ERROR20 = 100270;
const GLU_NURBS_ERROR21 = 100271;
const GLU_NURBS_ERROR22 = 100272;
const GLU_NURBS_ERROR23 = 100273;
const GLU_NURBS_ERROR24 = 100274;
const GLU_NURBS_ERROR25 = 100275;
const GLU_NURBS_ERROR26 = 100276;
const GLU_NURBS_ERROR27 = 100277;
const GLU_NURBS_ERROR28 = 100278;
const GLU_NURBS_ERROR29 = 100279;
const GLU_NURBS_ERROR30 = 100280;
const GLU_NURBS_ERROR31 = 100281;
const GLU_NURBS_ERROR32 = 100282;
const GLU_NURBS_ERROR33 = 100283;
const GLU_NURBS_ERROR34 = 100284;
const GLU_NURBS_ERROR35 = 100285;
const GLU_NURBS_ERROR36 = 100286;

const GLU_NURBS_ERROR37 = 100287;
/* NurbsProperty */
const GLU_AUTO_LOAD_MATRIX = 100200;
const GLU_CULLING = 100201;
const GLU_SAMPLING_TOLERANCE = 100203;
const GLU_DISPLAY_MODE = 100204;
const GLU_PARAMETRIC_TOLERANCE = 100202;
const GLU_SAMPLING_METHOD = 100205;
const GLU_U_STEP = 100206;
const GLU_V_STEP = 100207;
const GLU_NURBS_MODE = 100160;
const GLU_NURBS_MODE_EXT = 100160;
const GLU_NURBS_TESSELLATOR = 100161;
const GLU_NURBS_TESSELLATOR_EXT = 100161;
const GLU_NURBS_RENDERER = 100162;

const GLU_NURBS_RENDERER_EXT = 100162;
/* NurbsSampling */
const GLU_OBJECT_PARAMETRIC_ERROR = 100208;
const GLU_OBJECT_PARAMETRIC_ERROR_EXT = 100208;
const GLU_OBJECT_PATH_LENGTH = 100209;
const GLU_OBJECT_PATH_LENGTH_EXT = 100209;
const GLU_PATH_LENGTH = 100215;
const GLU_PARAMETRIC_ERROR = 100216;

const GLU_DOMAIN_DISTANCE = 100217;
/* NurbsTrim */
const GLU_MAP1_TRIM_2 = 100210;

const GLU_MAP1_TRIM_3 = 100211;
/* QuadricDrawStyle */
const GLU_POINT = 100010;
const GLU_LINE = 100011;
const GLU_FILL = 100012;

const GLU_SILHOUETTE = 100013;
/* QuadricCallback */
/*      GLU_ERROR */

/* QuadricNormal */
const GLU_SMOOTH = 100000;
const GLU_FLAT = 100001;

const GLU_NONE = 100002;
/* QuadricOrientation */
const GLU_OUTSIDE = 100020;

const GLU_INSIDE = 100021;
/* TessCallback */
const GLU_TESS_BEGIN = 100100;
const GLU_BEGIN = 100100;
const GLU_TESS_VERTEX = 100101;
const GLU_VERTEX = 100101;
const GLU_TESS_END = 100102;
const GLU_END = 100102;
const GLU_TESS_ERROR = 100103;
const GLU_TESS_EDGE_FLAG = 100104;
const GLU_EDGE_FLAG = 100104;
const GLU_TESS_COMBINE = 100105;
const GLU_TESS_BEGIN_DATA = 100106;
const GLU_TESS_VERTEX_DATA = 100107;
const GLU_TESS_END_DATA = 100108;
const GLU_TESS_ERROR_DATA = 100109;
const GLU_TESS_EDGE_FLAG_DATA = 100110;

const GLU_TESS_COMBINE_DATA = 100111;
/* TessContour */
const GLU_CW = 100120;
const GLU_CCW = 100121;
const GLU_INTERIOR = 100122;
const GLU_EXTERIOR = 100123;

const GLU_UNKNOWN = 100124;
/* TessProperty */
const GLU_TESS_WINDING_RULE = 100140;
const GLU_TESS_BOUNDARY_ONLY = 100141;

const GLU_TESS_TOLERANCE = 100142;
/* TessError */
const GLU_TESS_ERROR1 = 100151;
const GLU_TESS_ERROR2 = 100152;
const GLU_TESS_ERROR3 = 100153;
const GLU_TESS_ERROR4 = 100154;
const GLU_TESS_ERROR5 = 100155;
const GLU_TESS_ERROR6 = 100156;
const GLU_TESS_ERROR7 = 100157;
const GLU_TESS_ERROR8 = 100158;
const GLU_TESS_MISSING_BEGIN_POLYGON = 100151;
const GLU_TESS_MISSING_BEGIN_CONTOUR = 100152;
const GLU_TESS_MISSING_END_POLYGON = 100153;
const GLU_TESS_MISSING_END_CONTOUR = 100154;
const GLU_TESS_COORD_TOO_LARGE = 100155;

const GLU_TESS_NEED_COMBINE_CALLBACK = 100156;
/* TessWinding */
const GLU_TESS_WINDING_ODD = 100130;
const GLU_TESS_WINDING_NONZERO = 100131;
const GLU_TESS_WINDING_POSITIVE = 100132;
const GLU_TESS_WINDING_NEGATIVE = 100133;

const GLU_TESS_WINDING_ABS_GEQ_TWO = 100134;
/*************************************************************/


//#ifdef __cplusplus
//class GLUnurbs;
//class GLUquadric;
//class GLUtesselator;
//#else
//#endif

extern (C):
alias int GLUnurbs;
alias int GLUquadric;
alias int GLUtesselator;
alias GLUtesselator GLUtriangulatorObj;


const GLU_TESS_MAX_COORD = 1.0e150;
/* Internal convenience typedefs */
alias void  function()_GLUfuncptr;

extern(System)
{
	void  gluBeginCurve(GLUnurbs *nurb);
	void  gluBeginPolygon(GLUtesselator *tess);
	void  gluBeginSurface(GLUnurbs *nurb);
	void  gluBeginTrim(GLUnurbs *nurb);
	GLint  gluBuild1DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
	GLint  gluBuild1DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data);
	GLint  gluBuild2DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
	GLint  gluBuild2DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data);
	GLint  gluBuild3DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
	GLint  gluBuild3DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data);
	GLboolean  gluCheckExtension(GLubyte *extName, GLubyte *extString);
	void  gluCylinder(GLUquadric *quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
	void  gluDeleteNurbsRenderer(GLUnurbs *nurb);
	void  gluDeleteQuadric(GLUquadric *quad);
	void  gluDeleteTess(GLUtesselator *tess);
	void  gluDisk(GLUquadric *quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
	void  gluEndCurve(GLUnurbs *nurb);
	void  gluEndPolygon(GLUtesselator *tess);
	void  gluEndSurface(GLUnurbs *nurb);
	void  gluEndTrim(GLUnurbs *nurb);
	GLubyte * gluErrorString(GLenum error);
	void  gluGetNurbsProperty(GLUnurbs *nurb, GLenum property, GLfloat *data);
	GLubyte * gluGetString(GLenum name);
	void  gluGetTessProperty(GLUtesselator *tess, GLenum which, GLdouble *data);
	void  gluLoadSamplingMatrices(GLUnurbs *nurb, GLfloat *model, GLfloat *perspective, GLint *view);
	void  gluLookAt(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
	GLUnurbs * gluNewNurbsRenderer();
	GLUquadric * gluNewQuadric();
	GLUtesselator * gluNewTess();
	void  gluNextContour(GLUtesselator *tess, GLenum type);
	void  gluNurbsCallback(GLUnurbs *nurb, GLenum which, _GLUfuncptr CallBackFunc);
	void  gluNurbsCallbackData(GLUnurbs *nurb, GLvoid *userData);
	void  gluNurbsCallbackDataEXT(GLUnurbs *nurb, GLvoid *userData);
	void  gluNurbsCurve(GLUnurbs *nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
	void  gluNurbsProperty(GLUnurbs *nurb, GLenum property, GLfloat value);
	void  gluNurbsSurface(GLUnurbs *nurb, GLint sKnotCount, GLfloat *sKnots, GLint tKnotCount, GLfloat *tKnots, GLint sStride, GLint tStride, GLfloat *control, GLint sOrder, GLint tOrder, GLenum type);
	void  gluOrtho2D(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
	void  gluPartialDisk(GLUquadric *quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
	void  gluPerspective(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
	void  gluPickMatrix(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
	GLint  gluProject(GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble *winX, GLdouble *winY, GLdouble *winZ);
	void  gluPwlCurve(GLUnurbs *nurb, GLint count, GLfloat *data, GLint stride, GLenum type);
	void  gluQuadricCallback(GLUquadric *quad, GLenum which, _GLUfuncptr CallBackFunc);
	void  gluQuadricDrawStyle(GLUquadric *quad, GLenum draw);
	void  gluQuadricNormals(GLUquadric *quad, GLenum normal);
	void  gluQuadricOrientation(GLUquadric *quad, GLenum orientation);
	void  gluQuadricTexture(GLUquadric *quad, GLboolean texture);
	GLint  gluScaleImage(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid *dataOut);
	void  gluSphere(GLUquadric *quad, GLdouble radius, GLint slices, GLint stacks);
	void  gluTessBeginContour(GLUtesselator *tess);
	void  gluTessBeginPolygon(GLUtesselator *tess, GLvoid *data);
	void  gluTessCallback(GLUtesselator *tess, GLenum which, _GLUfuncptr CallBackFunc);
	void  gluTessEndContour(GLUtesselator *tess);
	void  gluTessEndPolygon(GLUtesselator *tess);
	void  gluTessNormal(GLUtesselator *tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
	void  gluTessProperty(GLUtesselator *tess, GLenum which, GLdouble data);
	void  gluTessVertex(GLUtesselator *tess, GLdouble *location, GLvoid *data);
	GLint  gluUnProject(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble *objX, GLdouble *objY, GLdouble *objZ);
	GLint  gluUnProject4(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble nearVal, GLdouble farVal, GLdouble *objX, GLdouble *objY, GLdouble *objZ, GLdouble *objW);
} // extern(System)


