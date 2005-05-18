modules gl.glu;

private
{
	import gl.gl;
	import lib.loader;
	import lib.paths;
}

private Linker glu_Linker;

static this()
{
	glu_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLU], &onLoadFailure );
	glu_Linker.link(gluLinks);
}

static ~this()
{
	delete gl_Linker;
}

// -------------------------------------------------


private void onLoadFailure( char[] msg )
{
	writefln("Function ", msg, " failed to laod" );
}	

// -------------------------------------------------

version(Windows)
	extern(Windows):
version(linux)
	extern(C):

	void		function(GLUnurbs* nurb)
			gluBeginCurve;
	void		function(GLUtesselator* tess)
			gluBeginPolygon;
	void		function(GLUnurbs* nurb)
			gluBeginSurface;
	void		function(GLUnurbs* nurb)
			gluBeginTrim;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild1DMipmapLevels;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data)
			gluBuild1DMipmaps;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild2DMipmapLevels;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data)
			gluBuild2DMipmaps;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild3DMipmapLevels;
	GLint		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data)
			gluBuild3DMipmaps;
	GLboolean		function(GLubyte *extName, GLubyte *extString)
			gluCheckExtension;
	void		function(GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)
			gluCylinder;
	void		function(GLUnurbs* nurb)
			gluDeleteNurbsRenderer;
	void		function(GLUquadric* quad)
			gluDeleteQuadric;
	void		function(GLUtesselator* tess)
			gluDeleteTess;
	void		function(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)
			gluDisk;
	void		function(GLUnurbs* nurb)
			gluEndCurve;
	void		function(GLUtesselator* tess)
			gluEndPolygon;
	void		function(GLUnurbs* nurb)
			gluEndSurface;
	void		function(GLUnurbs* nurb)
			gluEndTrim;
	GLubyte*		function(GLenum error)
			gluErrorString;
	void		function(GLUnurbs* nurb, GLenum property, GLfloat* data)
			gluGetNurbsProperty;
	GLubyte*		function(GLenum name)
			gluGetString;
	void		function(GLUtesselator* tess, GLenum which, GLdouble* data)
			gluGetTessProperty;
	void		function(GLUnurbs* nurb, GLfloat *model, GLfloat *perspective, GLint *view)
			gluLoadSamplingMatrices;
	void		function(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)
			gluLookAt;
	GLUnurbs*		function()
			gluNewNurbsRenderer;
	GLUquadric*		function()
			gluNewQuadric;
	GLUtesselator*		function()
			gluNewTess;
	void		function(GLUtesselator* tess, GLenum type)
			gluNextContour;
	void		function(GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc)
			gluNurbsCallback;
	void		function(GLUnurbs* nurb, GLvoid* userData)
			gluNurbsCallbackData;
	void		function(GLUnurbs* nurb, GLvoid* userData)
			gluNurbsCallbackDataEXT;
	void		function(GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type)
			gluNurbsCurve;
	void		function(GLUnurbs* nurb, GLenum property, GLfloat value)
			gluNurbsProperty;
	void		function(GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)
			gluNurbsSurface;
	void		function(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)
			gluOrtho2D;
	void		function(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)
			gluPartialDisk;
	void		function(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)
			gluPerspective;
	void		function(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport)
			gluPickMatrix;
	GLint		function(GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)
			gluProject;
	void		function(GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type)
			gluPwlCurve;
	void		function(GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc)
			gluQuadricCallback;
	void		function(GLUquadric* quad, GLenum draw)
			gluQuadricDrawStyle;
	void		function(GLUquadric* quad, GLenum normal)
			gluQuadricNormals;
	void		function(GLUquadric* quad, GLenum orientation)
			gluQuadricOrientation;
	void		function(GLUquadric* quad, GLboolean texture)
			gluQuadricTexture;
	GLint		function(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)
			gluScaleImage;
	void		function(GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)
			gluSphere;
	void		function(GLUtesselator* tess)
			gluTessBeginContour;
	void		function(GLUtesselator* tess, GLvoid* data)
			gluTessBeginPolygon;
	void		function(GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc)
			gluTessCallback;
	void		function(GLUtesselator* tess)
			gluTessEndContour;
	void		function(GLUtesselator* tess)
			gluTessEndPolygon;
	void		function(GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)
			gluTessNormal;
	void		function(GLUtesselator* tess, GLenum which, GLdouble data)
			gluTessProperty;
	void		function(GLUtesselator* tess, GLdouble *location, GLvoid* data)
			gluTessVertex;
	GLint		function(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)
			gluUnProject;
	GLint		function(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble near, GLdouble far, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW)
			gluUnProject4;

lib.loader.Symbol[] gluLinks =
[
	{ "gluBeginCurve",  cast(void**)& gluBeginCurve },
	{ "gluBeginPolygon",  cast(void**)& gluBeginPolygon },
	{ "gluBeginSurface",  cast(void**)& gluBeginSurface },
	{ "gluBeginTrim",  cast(void**)& gluBeginTrim },
	{ "gluBuild1DMipmapLevels",  cast(void**)& gluBuild1DMipmapLevels },
	{ "gluBuild1DMipmaps",  cast(void**)& gluBuild1DMipmaps },
	{ "gluBuild2DMipmapLevels",  cast(void**)& gluBuild2DMipmapLevels },
	{ "gluBuild2DMipmaps",  cast(void**)& gluBuild2DMipmaps },
	{ "gluBuild3DMipmapLevels",  cast(void**)& gluBuild3DMipmapLevels },
	{ "gluBuild3DMipmaps",  cast(void**)& gluBuild3DMipmaps },
	{ "gluCheckExtension",  cast(void**)& gluCheckExtension },
	{ "gluCylinder",  cast(void**)& gluCylinder },
	{ "gluDeleteNurbsRenderer",  cast(void**)& gluDeleteNurbsRenderer },
	{ "gluDeleteQuadric",  cast(void**)& gluDeleteQuadric },
	{ "gluDeleteTess",  cast(void**)& gluDeleteTess },
	{ "gluDisk",  cast(void**)& gluDisk },
	{ "gluEndCurve",  cast(void**)& gluEndCurve },
	{ "gluEndPolygon",  cast(void**)& gluEndPolygon },
	{ "gluEndSurface",  cast(void**)& gluEndSurface },
	{ "gluEndTrim",  cast(void**)& gluEndTrim },
	{ "gluErrorString",  cast(void**)& gluErrorString },
	{ "gluGetNurbsProperty",  cast(void**)& gluGetNurbsProperty },
	{ "gluGetString",  cast(void**)& gluGetString },
	{ "gluGetTessProperty",  cast(void**)& gluGetTessProperty },
	{ "gluLoadSamplingMatrices",  cast(void**)& gluLoadSamplingMatrices },
	{ "gluLookAt",  cast(void**)& gluLookAt },
	{ "gluNewNurbsRenderer",  cast(void**)& gluNewNurbsRenderer },
	{ "gluNewQuadric",  cast(void**)& gluNewQuadric },
	{ "gluNewTess",  cast(void**)& gluNewTess },
	{ "gluNextContour",  cast(void**)& gluNextContour },
	{ "gluNurbsCallback",  cast(void**)& gluNurbsCallback },
	{ "gluNurbsCallbackData",  cast(void**)& gluNurbsCallbackData },
	{ "gluNurbsCallbackDataEXT",  cast(void**)& gluNurbsCallbackDataEXT },
	{ "gluNurbsCurve",  cast(void**)& gluNurbsCurve },
	{ "gluNurbsProperty",  cast(void**)& gluNurbsProperty },
	{ "gluNurbsSurface",  cast(void**)& gluNurbsSurface },
	{ "gluOrtho2D",  cast(void**)& gluOrtho2D },
	{ "gluPartialDisk",  cast(void**)& gluPartialDisk },
	{ "gluPerspective",  cast(void**)& gluPerspective },
	{ "gluPickMatrix",  cast(void**)& gluPickMatrix },
	{ "gluProject",  cast(void**)& gluProject },
	{ "gluPwlCurve",  cast(void**)& gluPwlCurve },
	{ "gluQuadricCallback",  cast(void**)& gluQuadricCallback },
	{ "gluQuadricDrawStyle",  cast(void**)& gluQuadricDrawStyle },
	{ "gluQuadricNormals",  cast(void**)& gluQuadricNormals },
	{ "gluQuadricOrientation",  cast(void**)& gluQuadricOrientation },
	{ "gluQuadricTexture",  cast(void**)& gluQuadricTexture },
	{ "gluScaleImage",  cast(void**)& gluScaleImage },
	{ "gluSphere",  cast(void**)& gluSphere },
	{ "gluTessBeginContour",  cast(void**)& gluTessBeginContour },
	{ "gluTessBeginPolygon",  cast(void**)& gluTessBeginPolygon },
	{ "gluTessCallback",  cast(void**)& gluTessCallback },
	{ "gluTessEndContour",  cast(void**)& gluTessEndContour },
	{ "gluTessEndPolygon",  cast(void**)& gluTessEndPolygon },
	{ "gluTessNormal",  cast(void**)& gluTessNormal },
	{ "gluTessProperty",  cast(void**)& gluTessProperty },
	{ "gluTessVertex",  cast(void**)& gluTessVertex },
	{ "gluUnProject",  cast(void**)& gluUnProject },
	{ "gluUnProject4",  cast(void**)& gluUnProject4 }
];

module gl.glu;

import gl.gl;

alias char uchar;

/* $XFree86: xc/include/GL/glu.h,v 1.2 2001/04/03 02:18:39 dawes Exp $ */

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


/*************************************************************/

/* Extensions */
const int GLU_EXT_object_space_tess = 1;
const int GLU_EXT_nurbs_tessellator = 1;

/* Boolean */
const int GLU_FALSE = 0;
const int GLU_TRUE = 1;

/* Version */
const int GLU_VERSION_1_1 = 1;
const int GLU_VERSION_1_2 = 1;
const int GLU_VERSION_1_3 = 1;

/* StringName */
const int GLU_VERSION = 100800;
const int GLU_EXTENSIONS = 100801;

/* ErrorCode */
const int GLU_INVALID_ENUM = 100900;
const int GLU_INVALID_VALUE = 100901;
const int GLU_OUT_OF_MEMORY = 100902;
const int GLU_INVALID_OPERATION = 100904;

/* NurbsDisplay */
/*      GLU_FILL */
const int GLU_OUTLINE_POLYGON = 100240;
const int GLU_OUTLINE_PATCH = 100241;

/* NurbsCallback */
const int GLU_NURBS_ERROR = 100103;
const int GLU_ERROR = 100103;
const int GLU_NURBS_BEGIN = 100164;
const int GLU_NURBS_BEGIN_EXT = 100164;
const int GLU_NURBS_VERTEX = 100165;
const int GLU_NURBS_VERTEX_EXT = 100165;
const int GLU_NURBS_NORMAL = 100166;
const int GLU_NURBS_NORMAL_EXT = 100166;
const int GLU_NURBS_COLOR = 100167;
const int GLU_NURBS_COLOR_EXT = 100167;
const int GLU_NURBS_TEXTURE_COORD = 100168;
const int GLU_NURBS_TEX_COORD_EXT = 100168;
const int GLU_NURBS_END = 100169;
const int GLU_NURBS_END_EXT = 100169;
const int GLU_NURBS_BEGIN_DATA = 100170;
const int GLU_NURBS_BEGIN_DATA_EXT = 100170;
const int GLU_NURBS_VERTEX_DATA = 100171;
const int GLU_NURBS_VERTEX_DATA_EXT = 100171;
const int GLU_NURBS_NORMAL_DATA = 100172;
const int GLU_NURBS_NORMAL_DATA_EXT = 100172;
const int GLU_NURBS_COLOR_DATA = 100173;
const int GLU_NURBS_COLOR_DATA_EXT = 100173;
const int GLU_NURBS_TEXTURE_COORD_DATA = 100174;
const int GLU_NURBS_TEX_COORD_DATA_EXT = 100174;
const int GLU_NURBS_END_DATA = 100175;
const int GLU_NURBS_END_DATA_EXT = 100175;

/* NurbsError */
const int GLU_NURBS_ERROR1 = 100251;
const int GLU_NURBS_ERROR2 = 100252;
const int GLU_NURBS_ERROR3 = 100253;
const int GLU_NURBS_ERROR4 = 100254;
const int GLU_NURBS_ERROR5 = 100255;
const int GLU_NURBS_ERROR6 = 100256;
const int GLU_NURBS_ERROR7 = 100257;
const int GLU_NURBS_ERROR8 = 100258;
const int GLU_NURBS_ERROR9 = 100259;
const int GLU_NURBS_ERROR10 = 100260;
const int GLU_NURBS_ERROR11 = 100261;
const int GLU_NURBS_ERROR12 = 100262;
const int GLU_NURBS_ERROR13 = 100263;
const int GLU_NURBS_ERROR14 = 100264;
const int GLU_NURBS_ERROR15 = 100265;
const int GLU_NURBS_ERROR16 = 100266;
const int GLU_NURBS_ERROR17 = 100267;
const int GLU_NURBS_ERROR18 = 100268;
const int GLU_NURBS_ERROR19 = 100269;
const int GLU_NURBS_ERROR20 = 100270;
const int GLU_NURBS_ERROR21 = 100271;
const int GLU_NURBS_ERROR22 = 100272;
const int GLU_NURBS_ERROR23 = 100273;
const int GLU_NURBS_ERROR24 = 100274;
const int GLU_NURBS_ERROR25 = 100275;
const int GLU_NURBS_ERROR26 = 100276;
const int GLU_NURBS_ERROR27 = 100277;
const int GLU_NURBS_ERROR28 = 100278;
const int GLU_NURBS_ERROR29 = 100279;
const int GLU_NURBS_ERROR30 = 100280;
const int GLU_NURBS_ERROR31 = 100281;
const int GLU_NURBS_ERROR32 = 100282;
const int GLU_NURBS_ERROR33 = 100283;
const int GLU_NURBS_ERROR34 = 100284;
const int GLU_NURBS_ERROR35 = 100285;
const int GLU_NURBS_ERROR36 = 100286;
const int GLU_NURBS_ERROR37 = 100287;

/* NurbsProperty */
const int GLU_AUTO_LOAD_MATRIX = 100200;
const int GLU_CULLING = 100201;
const int GLU_SAMPLING_TOLERANCE = 100203;
const int GLU_DISPLAY_MODE = 100204;
const int GLU_PARAMETRIC_TOLERANCE = 100202;
const int GLU_SAMPLING_METHOD = 100205;
const int GLU_U_STEP = 100206;
const int GLU_V_STEP = 100207;
const int GLU_NURBS_MODE = 100160;
const int GLU_NURBS_MODE_EXT = 100160;
const int GLU_NURBS_TESSELLATOR = 100161;
const int GLU_NURBS_TESSELLATOR_EXT = 100161;
const int GLU_NURBS_RENDERER = 100162;
const int GLU_NURBS_RENDERER_EXT = 100162;

/* NurbsSampling */
const int GLU_OBJECT_PARAMETRIC_ERROR = 100208;
const int GLU_OBJECT_PARAMETRIC_ERROR_EXT = 100208;
const int GLU_OBJECT_PATH_LENGTH = 100209;
const int GLU_OBJECT_PATH_LENGTH_EXT = 100209;
const int GLU_PATH_LENGTH = 100215;
const int GLU_PARAMETRIC_ERROR = 100216;
const int GLU_DOMAIN_DISTANCE = 100217;

/* NurbsTrim */
const int GLU_MAP1_TRIM_2 = 100210;
const int GLU_MAP1_TRIM_3 = 100211;

/* QuadricDrawStyle */
const int GLU_POINT = 100010;
const int GLU_LINE = 100011;
const int GLU_FILL = 100012;
const int GLU_SILHOUETTE = 100013;

/* QuadricCallback */
/*      GLU_ERROR */

/* QuadricNormal */
const int GLU_SMOOTH = 100000;
const int GLU_FLAT = 100001;
const int GLU_NONE = 100002;

/* QuadricOrientation */
const int GLU_OUTSIDE = 100020;
const int GLU_INSIDE = 100021;

/* TessCallback */
const int GLU_TESS_BEGIN = 100100;
const int GLU_BEGIN = 100100;
const int GLU_TESS_VERTEX = 100101;
const int GLU_VERTEX = 100101;
const int GLU_TESS_END = 100102;
const int GLU_END = 100102;
const int GLU_TESS_ERROR = 100103;
const int GLU_TESS_EDGE_FLAG = 100104;
const int GLU_EDGE_FLAG = 100104;
const int GLU_TESS_COMBINE = 100105;
const int GLU_TESS_BEGIN_DATA = 100106;
const int GLU_TESS_VERTEX_DATA = 100107;
const int GLU_TESS_END_DATA = 100108;
const int GLU_TESS_ERROR_DATA = 100109;
const int GLU_TESS_EDGE_FLAG_DATA = 100110;
const int GLU_TESS_COMBINE_DATA = 100111;

/* TessContour */
const int GLU_CW = 100120;
const int GLU_CCW = 100121;
const int GLU_INTERIOR = 100122;
const int GLU_EXTERIOR = 100123;
const int GLU_UNKNOWN = 100124;

/* TessProperty */
const int GLU_TESS_WINDING_RULE = 100140;
const int GLU_TESS_BOUNDARY_ONLY = 100141;
const int GLU_TESS_TOLERANCE = 100142;

/* TessError */
const int GLU_TESS_ERROR1 = 100151;
const int GLU_TESS_ERROR2 = 100152;
const int GLU_TESS_ERROR3 = 100153;
const int GLU_TESS_ERROR4 = 100154;
const int GLU_TESS_ERROR5 = 100155;
const int GLU_TESS_ERROR6 = 100156;
const int GLU_TESS_ERROR7 = 100157;
const int GLU_TESS_ERROR8 = 100158;
const int GLU_TESS_MISSING_BEGIN_POLYGON = 100151;
const int GLU_TESS_MISSING_BEGIN_CONTOUR = 100152;
const int GLU_TESS_MISSING_END_POLYGON = 100153;
const int GLU_TESS_MISSING_END_CONTOUR = 100154;
const int GLU_TESS_COORD_TOO_LARGE = 100155;
const int GLU_TESS_NEED_COMBINE_CALLBACK = 100156;

/* TessWinding */
const int GLU_TESS_WINDING_ODD = 100130;
const int GLU_TESS_WINDING_NONZERO = 100131;
const int GLU_TESS_WINDING_POSITIVE = 100132;
const int GLU_TESS_WINDING_NEGATIVE = 100133;
const int GLU_TESS_WINDING_ABS_GEQ_TWO = 100134;

/*************************************************************/


//#ifdef __cplusplus
//class GLUnurbs;
//class GLUquadric;
//class GLUtesselator;
//#else
struct GLUnurbs;
struct GLUquadric;
struct GLUtesselator;
//#endif

alias  GLUnurbs GLUnurbsObj;
alias   GLUquadric GLUquadricObj;
alias   GLUtesselator GLUtesselatorObj;
alias   GLUtesselator GLUtriangulatorObj;

const int GLU_TESS_MAX_COORD = cast(int)1.0e150;

/* Internal convenience typedefs */
alias  GLvoid (*_GLUfuncptr)();