/*
 * File:	gl.d
 * Author: 	JJR
 * Date:	2005-05-18
 */

module lib.gl;

private
{
	import lib.loader;
	import lib.paths;
}

private Linker gl_Linker;

static this()
{
	gl_Linker = new Linker(libPath ~ importLibs[LIBRARY.GL]);
	gl_Linker.link(glLinks);
	
	version(GL_ARB)	 gl_Linker.link(glARBLinks);
	version(GL_EXT)  gl_Linker.link(glEXTLinks);
	version(GL_MESA) gl_Linker.link(glMESALinks);
}

static ~this()
{
	delete gl_Linker;
}

version(Windows)
	extern(Windows):
version(linux)
	extern(C):

	void		function( GLfloat c )
			glClearIndex;
	void		function( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha )
			glClearColor;
	void		function( GLbitfield mask )
			glClear;
	void		function( GLuint mask )
			glIndexMask;
	void		function( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha )
			glColorMask;
	void		function( GLenum func, GLclampf ref )
			glAlphaFunc;
	void		function( GLenum sfactor, GLenum dfactor )
			glBlendFunc;
	void		function( GLenum opcode )
			glLogicOp;
	void		function( GLenum mode )
			glCullFace;
	void		function( GLenum mode )
			glFrontFace;
	void		function( GLfloat size )
			glPointSize;
	void		function( GLfloat width )
			glLineWidth;
	void		function( GLint factor, GLushort pattern )
			glLineStipple;
	void		function( GLenum face, GLenum mode )
			glPolygonMode;
	void		function( GLfloat factor, GLfloat units )
			glPolygonOffset;
	void		function( GLubyte *mask )
			glPolygonStipple;
	void		function( GLubyte *mask )
			glGetPolygonStipple;
	void		function( GLboolean flag )
			glEdgeFlag;
	void		function( GLboolean *flag )
			glEdgeFlagv;
	void		function( GLint x, GLint y, GLsizei width, GLsizei height)
			glScissor;
	void		function( GLenum plane, GLdouble *equation )
			glClipPlane;
	void		function( GLenum plane, GLdouble *equation )
			glGetClipPlane;
	void		function( GLenum mode )
			glDrawBuffer;
	void		function( GLenum mode )
			glReadBuffer;
	void		function( GLenum cap )
			glEnable;
	void		function( GLenum cap )
			glDisable;
	GLboolean		function( GLenum cap )
			glIsEnabled;
	void		function( GLenum cap )
			glEnableClientState;
	void		function( GLenum cap )
			glDisableClientState;
	void		function( GLenum pname, GLboolean *params )
			glGetBooleanv;
	void		function( GLenum pname, GLdouble *params )
			glGetDoublev;
	void		function( GLenum pname, GLfloat *params )
			glGetFloatv;
	void		function( GLenum pname, GLint *params )
			glGetIntegerv;
	void		function( GLbitfield mask )
			glPushAttrib;
	void		function( )
			glPopAttrib;
	void		function( GLbitfield mask )
			glPushClientAttrib;
	void		function( )
			glPopClientAttrib;
	GLint		function( GLenum mode )
			glRenderMode;
	GLenum		function( )
			glGetError;
	GLubyte*		function( GLenum name )
			glGetString;
	void		function()
			glFinish;
	void		function()
			glFlush;
	void		function( GLenum target, GLenum mode )
			glHint;
	void		function( GLclampd depth )
			glClearDepth;
	void		function( GLenum func )
			glDepthFunc;
	void		function( GLboolean flag )
			glDepthMask;
	void		function( GLclampd near_val, GLclampd far_val )
			glDepthRange;
	void		function( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha )
			glClearAccum;
	void		function( GLenum op, GLfloat value )
			glAccum;
	void		function( GLenum mode )
			glMatrixMode;
	void		function( GLdouble left, GLdouble right,GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val )
			glOrtho;
	void		function( GLdouble left, GLdouble right,GLdouble bottom, GLdouble top,GLdouble near_val, GLdouble far_val )
			glFrustum;
	void		function( GLint x, GLint y,GLsizei width, GLsizei height )
			glViewport;
	void		function( )
			glPushMatrix;
	void		function( )
			glPopMatrix;
	void		function( )
			glLoadIdentity;
	void		function( GLdouble *m )
			glLoadMatrixd;
	void		function( GLfloat *m )
			glLoadMatrixf;
	void		function( GLdouble *m )
			glMultMatrixd;
	void		function( GLfloat *m )
			glMultMatrixf;
	void		function( GLdouble angle,GLdouble x, GLdouble y, GLdouble z )
			glRotated;
	void		function( GLfloat angle,GLfloat x, GLfloat y, GLfloat z )
			glRotatef;
	void		function( GLdouble x, GLdouble y, GLdouble z )
			glScaled;
	void		function( GLfloat x, GLfloat y, GLfloat z )
			glScalef;
	void		function( GLdouble x, GLdouble y, GLdouble z )
			glTranslated;
	void		function( GLfloat x, GLfloat y, GLfloat z )
			glTranslatef;
	GLboolean		function( GLuint list )
			glIsList;
	void		function( GLuint list, GLsizei range )
			glDeleteLists;
	GLuint		function( GLsizei range )
			glGenLists;
	void		function( GLuint list, GLenum mode )
			glNewList;
	void		function( )
			glEndList;
	void		function( GLuint list )
			glCallList;
	void		function( GLsizei n, GLenum type,GLvoid *lists )
			glCallLists;
	void		function( GLuint base )
			glListBase;
	void		function( GLenum mode )
			glBegin;
	void		function( )
			glEnd;
	void		function( GLdouble x, GLdouble y )
			glVertex2d;
	void		function( GLfloat x, GLfloat y )
			glVertex2f;
	void		function( GLint x, GLint y )
			glVertex2i;
	void		function( GLshort x, GLshort y )
			glVertex2s;
	void		function( GLdouble x, GLdouble y, GLdouble z )
			glVertex3d;
	void		function( GLfloat x, GLfloat y, GLfloat z )
			glVertex3f;
	void		function( GLint x, GLint y, GLint z )
			glVertex3i;
	void		function( GLshort x, GLshort y, GLshort z )
			glVertex3s;
	void		function( GLdouble x, GLdouble y, GLdouble z, GLdouble w )
			glVertex4d;
	void		function( GLfloat x, GLfloat y, GLfloat z, GLfloat w )
			glVertex4f;
	void		function( GLint x, GLint y, GLint z, GLint w )
			glVertex4i;
	void		function( GLshort x, GLshort y, GLshort z, GLshort w )
			glVertex4s;
	void		function( GLdouble *v )
			glVertex2dv;
	void		function( GLfloat *v )
			glVertex2fv;
	void		function( GLint *v )
			glVertex2iv;
	void		function( GLshort *v )
			glVertex2sv;
	void		function( GLdouble *v )
			glVertex3dv;
	void		function( GLfloat *v )
			glVertex3fv;
	void		function( GLint *v )
			glVertex3iv;
	void		function( GLshort *v )
			glVertex3sv;
	void		function( GLdouble *v )
			glVertex4dv;
	void		function( GLfloat *v )
			glVertex4fv;
	void		function( GLint *v )
			glVertex4iv;
	void		function( GLshort *v )
			glVertex4sv;
	void		function( GLbyte nx, GLbyte ny, GLbyte nz )
			glNormal3b;
	void		function( GLdouble nx, GLdouble ny, GLdouble nz )
			glNormal3d;
	void		function( GLfloat nx, GLfloat ny, GLfloat nz )
			glNormal3f;
	void		function( GLint nx, GLint ny, GLint nz )
			glNormal3i;
	void		function( GLshort nx, GLshort ny, GLshort nz )
			glNormal3s;
	void		function( GLbyte *v )
			glNormal3bv;
	void		function( GLdouble *v )
			glNormal3dv;
	void		function( GLfloat *v )
			glNormal3fv;
	void		function( GLint *v )
			glNormal3iv;
	void		function( GLshort *v )
			glNormal3sv;
	void		function( GLdouble c )
			glIndexd;
	void		function( GLfloat c )
			glIndexf;
	void		function( GLint c )
			glIndexi;
	void		function( GLshort c )
			glIndexs;
	void		function( GLubyte c )
			glIndexub;
	void		function( GLdouble *c )
			glIndexdv;
	void		function( GLfloat *c )
			glIndexfv;
	void		function( GLint *c )
			glIndexiv;
	void		function( GLshort *c )
			glIndexsv;
	void		function( GLubyte *c )
			glIndexubv;
	void		function( GLbyte red, GLbyte green, GLbyte blue )
			glColor3b;
	void		function( GLdouble red, GLdouble green, GLdouble blue )
			glColor3d;
	void		function( GLfloat red, GLfloat green, GLfloat blue )
			glColor3f;
	void		function( GLint red, GLint green, GLint blue )
			glColor3i;
	void		function( GLshort red, GLshort green, GLshort blue )
			glColor3s;
	void		function( GLubyte red, GLubyte green, GLubyte blue )
			glColor3ub;
	void		function( GLuint red, GLuint green, GLuint blue )
			glColor3ui;
	void		function( GLushort red, GLushort green, GLushort blue )
			glColor3us;
	void		function( GLbyte red, GLbyte green,GLbyte blue, GLbyte alpha )
			glColor4b;
	void		function( GLdouble red, GLdouble green,GLdouble blue, GLdouble alpha )
			glColor4d;
	void		function( GLfloat red, GLfloat green,GLfloat blue, GLfloat alpha )
			glColor4f;
	void		function( GLint red, GLint green,GLint blue, GLint alpha )
			glColor4i;
	void		function( GLshort red, GLshort green,GLshort blue, GLshort alpha )
			glColor4s;
	void		function( GLubyte red, GLubyte green,GLubyte blue, GLubyte alpha )
			glColor4ub;
	void		function( GLuint red, GLuint green,GLuint blue, GLuint alpha )
			glColor4ui;
	void		function( GLushort red, GLushort green,GLushort blue, GLushort alpha )
			glColor4us;
	void		function( GLbyte *v )
			glColor3bv;
	void		function( GLdouble *v )
			glColor3dv;
	void		function( GLfloat *v )
			glColor3fv;
	void		function( GLint *v )
			glColor3iv;
	void		function( GLshort *v )
			glColor3sv;
	void		function( GLubyte *v )
			glColor3ubv;
	void		function( GLuint *v )
			glColor3uiv;
	void		function( GLushort *v )
			glColor3usv;
	void		function( GLbyte *v )
			glColor4bv;
	void		function( GLdouble *v )
			glColor4dv;
	void		function( GLfloat *v )
			glColor4fv;
	void		function( GLint *v )
			glColor4iv;
	void		function( GLshort *v )
			glColor4sv;
	void		function( GLubyte *v )
			glColor4ubv;
	void		function( GLuint *v )
			glColor4uiv;
	void		function( GLushort *v )
			glColor4usv;
	void		function( GLdouble s )
			glTexCoord1d;
	void		function( GLfloat s )
			glTexCoord1f;
	void		function( GLint s )
			glTexCoord1i;
	void		function( GLshort s )
			glTexCoord1s;
	void		function( GLdouble s, GLdouble t )
			glTexCoord2d;
	void		function( GLfloat s, GLfloat t )
			glTexCoord2f;
	void		function( GLint s, GLint t )
			glTexCoord2i;
	void		function( GLshort s, GLshort t )
			glTexCoord2s;
	void		function( GLdouble s, GLdouble t, GLdouble r )
			glTexCoord3d;
	void		function( GLfloat s, GLfloat t, GLfloat r )
			glTexCoord3f;
	void		function( GLint s, GLint t, GLint r )
			glTexCoord3i;
	void		function( GLshort s, GLshort t, GLshort r )
			glTexCoord3s;
	void		function( GLdouble s, GLdouble t, GLdouble r, GLdouble q )
			glTexCoord4d;
	void		function( GLfloat s, GLfloat t, GLfloat r, GLfloat q )
			glTexCoord4f;
	void		function( GLint s, GLint t, GLint r, GLint q )
			glTexCoord4i;
	void		function( GLshort s, GLshort t, GLshort r, GLshort q )
			glTexCoord4s;
	void		function( GLdouble *v )
			glTexCoord1dv;
	void		function( GLfloat *v )
			glTexCoord1fv;
	void		function( GLint *v )
			glTexCoord1iv;
	void		function( GLshort *v )
			glTexCoord1sv;
	void		function( GLdouble *v )
			glTexCoord2dv;
	void		function( GLfloat *v )
			glTexCoord2fv;
	void		function( GLint *v )
			glTexCoord2iv;
	void		function( GLshort *v )
			glTexCoord2sv;
	void		function( GLdouble *v )
			glTexCoord3dv;
	void		function( GLfloat *v )
			glTexCoord3fv;
	void		function( GLint *v )
			glTexCoord3iv;
	void		function( GLshort *v )
			glTexCoord3sv;
	void		function( GLdouble *v )
			glTexCoord4dv;
	void		function( GLfloat *v )
			glTexCoord4fv;
	void		function( GLint *v )
			glTexCoord4iv;
	void		function( GLshort *v )
			glTexCoord4sv;
	void		function( GLdouble x, GLdouble y )
			glRasterPos2d;
	void		function( GLfloat x, GLfloat y )
			glRasterPos2f;
	void		function( GLint x, GLint y )
			glRasterPos2i;
	void		function( GLshort x, GLshort y )
			glRasterPos2s;
	void		function( GLdouble x, GLdouble y, GLdouble z )
			glRasterPos3d;
	void		function( GLfloat x, GLfloat y, GLfloat z )
			glRasterPos3f;
	void		function( GLint x, GLint y, GLint z )
			glRasterPos3i;
	void		function( GLshort x, GLshort y, GLshort z )
			glRasterPos3s;
	void		function( GLdouble x, GLdouble y, GLdouble z, GLdouble w )
			glRasterPos4d;
	void		function( GLfloat x, GLfloat y, GLfloat z, GLfloat w )
			glRasterPos4f;
	void		function( GLint x, GLint y, GLint z, GLint w )
			glRasterPos4i;
	void		function( GLshort x, GLshort y, GLshort z, GLshort w )
			glRasterPos4s;
	void		function( GLdouble *v )
			glRasterPos2dv;
	void		function( GLfloat *v )
			glRasterPos2fv;
	void		function( GLint *v )
			glRasterPos2iv;
	void		function( GLshort *v )
			glRasterPos2sv;
	void		function( GLdouble *v )
			glRasterPos3dv;
	void		function( GLfloat *v )
			glRasterPos3fv;
	void		function( GLint *v )
			glRasterPos3iv;
	void		function( GLshort *v )
			glRasterPos3sv;
	void		function( GLdouble *v )
			glRasterPos4dv;
	void		function( GLfloat *v )
			glRasterPos4fv;
	void		function( GLint *v )
			glRasterPos4iv;
	void		function( GLshort *v )
			glRasterPos4sv;
	void		function( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 )
			glRectd;
	void		function( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 )
			glRectf;
	void		function( GLint x1, GLint y1, GLint x2, GLint y2 )
			glRecti;
	void		function( GLshort x1, GLshort y1, GLshort x2, GLshort y2 )
			glRects;
	void		function( GLdouble *v1, GLdouble *v2 )
			glRectdv;
	void		function( GLfloat *v1, GLfloat *v2 )
			glRectfv;
	void		function( GLint *v1, GLint *v2 )
			glRectiv;
	void		function( GLshort *v1, GLshort *v2 )
			glRectsv;
	void		function( GLint size, GLenum type,GLsizei stride, GLvoid *ptr )
			glVertexPointer;
	void		function( GLenum type, GLsizei stride,GLvoid *ptr )
			glNormalPointer;
	void		function( GLint size, GLenum type,GLsizei stride, GLvoid *ptr )
			glColorPointer;
	void		function( GLenum type, GLsizei stride,GLvoid *ptr )
			glIndexPointer;
	void		function( GLint size, GLenum type,GLsizei stride, GLvoid *ptr )
			glTexCoordPointer;
	void		function( GLsizei stride, GLvoid *ptr )
			glEdgeFlagPointer;
	void		function( GLenum pname, GLvoid **params )
			glGetPointerv;
	void		function( GLint i )
			glArrayElement;
	void		function( GLenum mode, GLint first, GLsizei count )
			glDrawArrays;
	void		function( GLenum mode, GLsizei count,GLenum type, GLvoid *indices )
			glDrawElements;
	void		function( GLenum format, GLsizei stride, GLvoid *pointer )
			glInterleavedArrays;
	void		function( GLenum mode )
			glShadeModel;
	void		function( GLenum light, GLenum pname, GLfloat param )
			glLightf;
	void		function( GLenum light, GLenum pname, GLint param )
			glLighti;
	void		function( GLenum light, GLenum pname, GLfloat *params )
			glLightfv;
	void		function( GLenum light, GLenum pname,GLint *params )
			glLightiv;
	void		function( GLenum light, GLenum pname,GLfloat *params )
			glGetLightfv;
	void		function( GLenum light, GLenum pname,GLint *params )
			glGetLightiv;
	void		function( GLenum pname, GLfloat param )
			glLightModelf;
	void		function( GLenum pname, GLint param )
			glLightModeli;
	void		function( GLenum pname, GLfloat *params )
			glLightModelfv;
	void		function( GLenum pname, GLint *params )
			glLightModeliv;
	void		function( GLenum face, GLenum pname, GLfloat param )
			glMaterialf;
	void		function( GLenum face, GLenum pname, GLint param )
			glMateriali;
	void		function( GLenum face, GLenum pname, GLfloat *params )
			glMaterialfv;
	void		function( GLenum face, GLenum pname, GLint *params )
			glMaterialiv;
	void		function( GLenum face, GLenum pname, GLfloat *params )
			glGetMaterialfv;
	void		function( GLenum face, GLenum pname, GLint *params )
			glGetMaterialiv;
	void		function( GLenum face, GLenum mode )
			glColorMaterial;
	void		function( GLfloat xfactor, GLfloat yfactor )
			glPixelZoom;
	void		function( GLenum pname, GLfloat param )
			glPixelStoref;
	void		function( GLenum pname, GLint param )
			glPixelStorei;
	void		function( GLenum pname, GLfloat param )
			glPixelTransferf;
	void		function( GLenum pname, GLint param )
			glPixelTransferi;
	void		function( GLenum map, GLint mapsize,GLfloat *values )
			glPixelMapfv;
	void		function( GLenum map, GLint mapsize,GLuint *values )
			glPixelMapuiv;
	void		function( GLenum map, GLint mapsize,GLushort *values )
			glPixelMapusv;
	void		function( GLenum map, GLfloat *values )
			glGetPixelMapfv;
	void		function( GLenum map, GLuint *values )
			glGetPixelMapuiv;
	void		function( GLenum map, GLushort *values )
			glGetPixelMapusv;
	void		function( GLsizei width, GLsizei height,GLfloat xorig, GLfloat yorig,GLfloat xmove, GLfloat ymove,GLubyte *bitmap )
			glBitmap;
	void		function( GLint x, GLint y,GLsizei width, GLsizei height,GLenum format, GLenum type,GLvoid *pixels )
			glReadPixels;
	void		function( GLsizei width, GLsizei height,GLenum format, GLenum type,GLvoid *pixels )
			glDrawPixels;
	void		function( GLint x, GLint y,GLsizei width, GLsizei height,GLenum type )
			glCopyPixels;
	void		function( GLenum func, GLint ref, GLuint mask )
			glStencilFunc;
	void		function( GLuint mask )
			glStencilMask;
	void		function( GLenum fail, GLenum zfail, GLenum zpass )
			glStencilOp;
	void		function( GLint s )
			glClearStencil;
	void		function( GLenum coord, GLenum pname, GLdouble param )
			glTexGend;
	void		function( GLenum coord, GLenum pname, GLfloat param )
			glTexGenf;
	void		function( GLenum coord, GLenum pname, GLint param )
			glTexGeni;
	void		function( GLenum coord, GLenum pname, GLdouble *params )
			glTexGendv;
	void		function( GLenum coord, GLenum pname, GLfloat *params )
			glTexGenfv;
	void		function( GLenum coord, GLenum pname, GLint *params )
			glTexGeniv;
	void		function( GLenum coord, GLenum pname, GLdouble *params )
			glGetTexGendv;
	void		function( GLenum coord, GLenum pname, GLfloat *params )
			glGetTexGenfv;
	void		function( GLenum coord, GLenum pname, GLint *params )
			glGetTexGeniv;
	void		function( GLenum target, GLenum pname, GLfloat param )
			glTexEnvf;
	void		function( GLenum target, GLenum pname, GLint param )
			glTexEnvi;
	void		function( GLenum target, GLenum pname, GLfloat *params )
			glTexEnvfv;
	void		function( GLenum target, GLenum pname, GLint *params )
			glTexEnviv;
	void		function( GLenum target, GLenum pname, GLfloat *params )
			glGetTexEnvfv;
	void		function( GLenum target, GLenum pname, GLint *params )
			glGetTexEnviv;
	void		function( GLenum target, GLenum pname, GLfloat param )
			glTexParameterf;
	void		function( GLenum target, GLenum pname, GLint param )
			glTexParameteri;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glTexParameterfv;
	void		function( GLenum target, GLenum pname,GLint *params )
			glTexParameteriv;
	void		function( GLenum target,GLenum pname, GLfloat *params)
			glGetTexParameterfv;
	void		function( GLenum target,GLenum pname, GLint *params )
			glGetTexParameteriv;
	void		function( GLenum target, GLint level,GLenum pname, GLfloat *params )
			glGetTexLevelParameterfv;
	void		function( GLenum target, GLint level,GLenum pname, GLint *params )
			glGetTexLevelParameteriv;
	void		function( GLenum target, GLint level,GLint internalFormat,GLsizei width, GLint border,GLenum format, GLenum type,GLvoid *pixels )
			glTexImage1D;
	void		function( GLenum target, GLint level,GLint internalFormat,GLsizei width, GLsizei height,GLint border, GLenum format, GLenum type,GLvoid *pixels )
			glTexImage2D;
	void		function( GLenum target, GLint level,GLenum format, GLenum type,GLvoid *pixels )
			glGetTexImage;
	void		function( GLsizei n, GLuint *textures )
			glGenTextures;
	void		function( GLsizei n, GLuint *textures)
			glDeleteTextures;
	void		function( GLenum target, GLuint texture )
			glBindTexture;
	void		function( GLsizei n,GLuint *textures,GLclampf *priorities )
			glPrioritizeTextures;
	GLboolean		function( GLsizei n,GLuint *textures,GLboolean *residences )
			glAreTexturesResident;
	GLboolean		function( GLuint texture )
			glIsTexture;
	void		function( GLenum target, GLint level,GLint xoffset,GLsizei width, GLenum format,GLenum type, GLvoid *pixels )
			glTexSubImage1D;
	void		function( GLenum target, GLint level,GLint xoffset, GLint yoffset,GLsizei width, GLsizei height,GLenum format, GLenum type,GLvoid *pixels )
			glTexSubImage2D;
	void		function( GLenum target, GLint level,GLenum internalformat,GLint x, GLint y,GLsizei width, GLint border )
			glCopyTexImage1D;
	void		function( GLenum target, GLint level,GLenum internalformat,GLint x, GLint y,GLsizei width, GLsizei height,GLint border )
			glCopyTexImage2D;
	void		function( GLenum target, GLint level,GLint xoffset, GLint x, GLint y,GLsizei width )
			glCopyTexSubImage1D;
	void		function( GLenum target, GLint level,GLint xoffset, GLint yoffset,GLint x, GLint y,GLsizei width, GLsizei height )
			glCopyTexSubImage2D;
	void		function( GLenum target, GLdouble u1, GLdouble u2,GLint stride,GLint order, GLdouble *points )
			glMap1d;
	void		function( GLenum target, GLfloat u1, GLfloat u2,GLint stride,GLint order, GLfloat *points )
			glMap1f;
	void		function( GLenum target,GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,GLdouble *points )
			glMap2d;
	void		function( GLenum target,GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,GLfloat *points )
			glMap2f;
	void		function( GLenum target, GLenum query, GLdouble *v )
			glGetMapdv;
	void		function( GLenum target, GLenum query, GLfloat *v )
			glGetMapfv;
	void		function( GLenum target, GLenum query, GLint *v )
			glGetMapiv;
	void		function( GLdouble u )
			glEvalCoord1d;
	void		function( GLfloat u )
			glEvalCoord1f;
	void		function( GLdouble *u )
			glEvalCoord1dv;
	void		function( GLfloat *u )
			glEvalCoord1fv;
	void		function( GLdouble u, GLdouble v )
			glEvalCoord2d;
	void		function( GLfloat u, GLfloat v )
			glEvalCoord2f;
	void		function( GLdouble *u )
			glEvalCoord2dv;
	void		function( GLfloat *u )
			glEvalCoord2fv;
	void		function( GLint un, GLdouble u1, GLdouble u2 )
			glMapGrid1d;
	void		function( GLint un, GLfloat u1, GLfloat u2 )
			glMapGrid1f;
	void		function( GLint un, GLdouble u1, GLdouble u2,GLint vn, GLdouble v1, GLdouble v2 )
			glMapGrid2d;
	void		function( GLint un, GLfloat u1, GLfloat u2,GLint vn, GLfloat v1, GLfloat v2 )
			glMapGrid2f;
	void		function( GLint i )
			glEvalPoint1;
	void		function( GLint i, GLint j )
			glEvalPoint2;
	void		function( GLenum mode, GLint i1, GLint i2 )
			glEvalMesh1;
	void		function( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 )
			glEvalMesh2;
	void		function( GLenum pname, GLfloat param )
			glFogf;
	void		function( GLenum pname, GLint param )
			glFogi;
	void		function( GLenum pname, GLfloat *params )
			glFogfv;
	void		function( GLenum pname, GLint *params )
			glFogiv;
	void		function( GLsizei size, GLenum type, GLfloat *buffer )
			glFeedbackBuffer;
	void		function( GLfloat token )
			glPassThrough;
	void		function( GLsizei size, GLuint *buffer )
			glSelectBuffer;
	void		function( )
			glInitNames;
	void		function( GLuint name )
			glLoadName;
	void		function( GLuint name )
			glPushName;
	void		function( )
			glPopName;
	void		function( GLenum mode, GLuint start,GLuint end, GLsizei count, GLenum type, GLvoid *indices )
			glDrawRangeElements;
	void		function( GLenum target, GLint level,GLenum internalFormat,GLsizei width, GLsizei height,GLsizei depth, GLint border,GLenum format, GLenum type,GLvoid *pixels )
			glTexImage3D;
	void		function( GLenum target, GLint level,GLint xoffset, GLint yoffset,GLint zoffset, GLsizei width,GLsizei height, GLsizei depth,GLenum format,GLenum type, GLvoid *pixels)
			glTexSubImage3D;
	void		function( GLenum target, GLint level,GLint xoffset, GLint yoffset,GLint zoffset, GLint x,GLint y, GLsizei width,GLsizei height )
			glCopyTexSubImage3D;
	void		function( GLenum target, GLenum internalformat,GLsizei width, GLenum format,GLenum type, GLvoid *table )
			glColorTable;
	void		function( GLenum target,GLsizei start, GLsizei count,GLenum format, GLenum type,GLvoid *data )
			glColorSubTable;
	void		function(GLenum target, GLenum pname,GLint *params)
			glColorTableParameteriv;
	void		function(GLenum target, GLenum pname,GLfloat *params)
			glColorTableParameterfv;
	void		function( GLenum target, GLsizei start,GLint x, GLint y, GLsizei width )
			glCopyColorSubTable;
	void		function( GLenum target, GLenum internalformat,GLint x, GLint y, GLsizei width )
			glCopyColorTable;
	void		function( GLenum target, GLenum format,GLenum type, GLvoid *table )
			glGetColorTable;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glGetColorTableParameterfv;
	void		function( GLenum target, GLenum pname,GLint *params )
			glGetColorTableParameteriv;
	void		function( GLenum mode )
			glBlendEquation;
	void		function( GLclampf red, GLclampf green,GLclampf blue, GLclampf alpha )
			glBlendColor;
	void		function( GLenum target, GLsizei width,GLenum internalformat, GLboolean sink )
			glHistogram;
	void		function( GLenum target )
			glResetHistogram;
	void		function( GLenum target, GLboolean reset,GLenum format, GLenum type,GLvoid *values )
			glGetHistogram;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glGetHistogramParameterfv;
	void		function( GLenum target, GLenum pname,GLint *params )
			glGetHistogramParameteriv;
	void		function( GLenum target, GLenum internalformat,GLboolean sink )
			glMinmax;
	void		function( GLenum target )
			glResetMinmax;
	void		function( GLenum target, GLboolean reset,GLenum format, GLenum types,GLvoid *values )
			glGetMinmax;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glGetMinmaxParameterfv;
	void		function( GLenum target, GLenum pname,GLint *params )
			glGetMinmaxParameteriv;
	void		function( GLenum target,GLenum internalformat, GLsizei width, GLenum format, GLenum type,GLvoid *image )
			glConvolutionFilter1D;
	void		function( GLenum target,GLenum internalformat, GLsizei width, GLsizei height, GLenum format,GLenum type, GLvoid *image )
			glConvolutionFilter2D;
	void		function( GLenum target, GLenum pname,GLfloat params )
			glConvolutionParameterf;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glConvolutionParameterfv;
	void		function( GLenum target, GLenum pname,GLint params )
			glConvolutionParameteri;
	void		function( GLenum target, GLenum pname,GLint *params )
			glConvolutionParameteriv;
	void		function( GLenum target,GLenum internalformat, GLint x, GLint y, GLsizei width )
			glCopyConvolutionFilter1D;
	void		function( GLenum target,GLenum internalformat, GLint x, GLint y, GLsizei width,GLsizei height)
			glCopyConvolutionFilter2D;
	void		function( GLenum target, GLenum format,GLenum type, GLvoid *image )
			glGetConvolutionFilter;
	void		function( GLenum target, GLenum pname,GLfloat *params )
			glGetConvolutionParameterfv;
	void		function( GLenum target, GLenum pname,GLint *params )
			glGetConvolutionParameteriv;
	void		function( GLenum target,GLenum internalformat, GLsizei width, GLsizei height, GLenum format,GLenum type, GLvoid *row, GLvoid *column )
			glSeparableFilter2D;
	void		function( GLenum target, GLenum format,GLenum type, GLvoid *row, GLvoid *column, GLvoid *span )
			glGetSeparableFilter;
	void		function( GLenum texture )
			glActiveTexture;
	void		function( GLenum texture )
			glClientActiveTexture;
	void		function( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data )
			glCompressedTexImage1D;
	void		function( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data )
			glCompressedTexImage2D;
	void		function( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data )
			glCompressedTexImage3D;
	void		function( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data )
			glCompressedTexSubImage1D;
	void		function( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data )
			glCompressedTexSubImage2D;
	void		function( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data )
			glCompressedTexSubImage3D;
	void		function( GLenum target, GLint lod, GLvoid *img )
			glGetCompressedTexImage;
	void		function( GLenum target, GLdouble s )
			glMultiTexCoord1d;
	void		function( GLenum target, GLdouble *v )
			glMultiTexCoord1dv;
	void		function( GLenum target, GLfloat s )
			glMultiTexCoord1f;
	void		function( GLenum target, GLfloat *v )
			glMultiTexCoord1fv;
	void		function( GLenum target, GLint s )
			glMultiTexCoord1i;
	void		function( GLenum target, GLint *v )
			glMultiTexCoord1iv;
	void		function( GLenum target, GLshort s )
			glMultiTexCoord1s;
	void		function( GLenum target, GLshort *v )
			glMultiTexCoord1sv;
	void		function( GLenum target, GLdouble s, GLdouble t )
			glMultiTexCoord2d;
	void		function( GLenum target, GLdouble *v )
			glMultiTexCoord2dv;
	void		function( GLenum target, GLfloat s, GLfloat t )
			glMultiTexCoord2f;
	void		function( GLenum target, GLfloat *v )
			glMultiTexCoord2fv;
	void		function( GLenum target, GLint s, GLint t )
			glMultiTexCoord2i;
	void		function( GLenum target, GLint *v )
			glMultiTexCoord2iv;
	void		function( GLenum target, GLshort s, GLshort t )
			glMultiTexCoord2s;
	void		function( GLenum target, GLshort *v )
			glMultiTexCoord2sv;
	void		function( GLenum target, GLdouble s, GLdouble t, GLdouble r )
			glMultiTexCoord3d;
	void		function( GLenum target, GLdouble *v )
			glMultiTexCoord3dv;
	void		function( GLenum target, GLfloat s, GLfloat t, GLfloat r )
			glMultiTexCoord3f;
	void		function( GLenum target, GLfloat *v )
			glMultiTexCoord3fv;
	void		function( GLenum target, GLint s, GLint t, GLint r )
			glMultiTexCoord3i;
	void		function( GLenum target, GLint *v )
			glMultiTexCoord3iv;
	void		function( GLenum target, GLshort s, GLshort t, GLshort r )
			glMultiTexCoord3s;
	void		function( GLenum target, GLshort *v )
			glMultiTexCoord3sv;
	void		function( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q )
			glMultiTexCoord4d;
	void		function( GLenum target, GLdouble *v )
			glMultiTexCoord4dv;
	void		function( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q )
			glMultiTexCoord4f;
	void		function( GLenum target, GLfloat *v )
			glMultiTexCoord4fv;
	void		function( GLenum target, GLint s, GLint t, GLint r, GLint q )
			glMultiTexCoord4i;
	void		function( GLenum target, GLint *v )
			glMultiTexCoord4iv;
	void		function( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q )
			glMultiTexCoord4s;
	void		function( GLenum target, GLshort *v )
			glMultiTexCoord4sv;
	void		function( GLdouble m[16] )
			glLoadTransposeMatrixd;
	void		function( GLfloat m[16] )
			glLoadTransposeMatrixf;
	void		function( GLdouble m[16] )
			glMultTransposeMatrixd;
	void		function( GLfloat m[16] )
			glMultTransposeMatrixf;
	void		function( GLclampf value, GLboolean invert )
			glSampleCoverage;

version(GL_ARB)
{
	void		function(GLenum texture)
			glActiveTextureARB;
	void		function(GLenum texture)
			glClientActiveTextureARB;
	void		function(GLenum target, GLdouble s)
			glMultiTexCoord1dARB;
	void		function(GLenum target, GLdouble *v)
			glMultiTexCoord1dvARB;
	void		function(GLenum target, GLfloat s)
			glMultiTexCoord1fARB;
	void		function(GLenum target, GLfloat *v)
			glMultiTexCoord1fvARB;
	void		function(GLenum target, GLint s)
			glMultiTexCoord1iARB;
	void		function(GLenum target, GLint *v)
			glMultiTexCoord1ivARB;
	void		function(GLenum target, GLshort s)
			glMultiTexCoord1sARB;
	void		function(GLenum target, GLshort *v)
			glMultiTexCoord1svARB;
	void		function(GLenum target, GLdouble s, GLdouble t)
			glMultiTexCoord2dARB;
	void		function(GLenum target, GLdouble *v)
			glMultiTexCoord2dvARB;
	void		function(GLenum target, GLfloat s, GLfloat t)
			glMultiTexCoord2fARB;
	void		function(GLenum target, GLfloat *v)
			glMultiTexCoord2fvARB;
	void		function(GLenum target, GLint s, GLint t)
			glMultiTexCoord2iARB;
	void		function(GLenum target, GLint *v)
			glMultiTexCoord2ivARB;
	void		function(GLenum target, GLshort s, GLshort t)
			glMultiTexCoord2sARB;
	void		function(GLenum target, GLshort *v)
			glMultiTexCoord2svARB;
	void		function(GLenum target, GLdouble s, GLdouble t, GLdouble r)
			glMultiTexCoord3dARB;
	void		function(GLenum target, GLdouble *v)
			glMultiTexCoord3dvARB;
	void		function(GLenum target, GLfloat s, GLfloat t, GLfloat r)
			glMultiTexCoord3fARB;
	void		function(GLenum target, GLfloat *v)
			glMultiTexCoord3fvARB;
	void		function(GLenum target, GLint s, GLint t, GLint r)
			glMultiTexCoord3iARB;
	void		function(GLenum target, GLint *v)
			glMultiTexCoord3ivARB;
	void		function(GLenum target, GLshort s, GLshort t, GLshort r)
			glMultiTexCoord3sARB;
	void		function(GLenum target, GLshort *v)
			glMultiTexCoord3svARB;
	void		function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
			glMultiTexCoord4dARB;
	void		function(GLenum target, GLdouble *v)
			glMultiTexCoord4dvARB;
	void		function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
			glMultiTexCoord4fARB;
	void		function(GLenum target, GLfloat *v)
			glMultiTexCoord4fvARB;
	void		function(GLenum target, GLint s, GLint t, GLint r, GLint q)
			glMultiTexCoord4iARB;
	void		function(GLenum target, GLint *v)
			glMultiTexCoord4ivARB;
	void		function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
			glMultiTexCoord4sARB;
	void		function(GLenum target, GLshort *v)
			glMultiTexCoord4svARB;
}

version(GL_EXT)
{
	void		function( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha )
			glBlendColorEXT;
	void		function( GLfloat factor, GLfloat bias )
			glPolygonOffsetEXT;
	void		function( GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels )
			glTexImage3DEXT;
	void		function( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels)
			glTexSubImage3DEXT;
	void		function( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height )
			glCopyTexSubImage3DEXT;
	void		function( GLsizei n, GLuint *textures )
			glGenTexturesEXT;
	void		function( GLsizei n, GLuint *textures)
			glDeleteTexturesEXT;
	void		function( GLenum target, GLuint texture )
			glBindTextureEXT;
	void		function( GLsizei n, GLuint *textures, GLclampf *priorities )
			glPrioritizeTexturesEXT;
	GLboolean		function( GLsizei n, GLuint *textures, GLboolean *residences )
			glAreTexturesResidentEXT;
	GLboolean		function( GLuint texture )
			glIsTextureEXT;
	void		function( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr )
			glVertexPointerEXT;
	void		function( GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr )
			glNormalPointerEXT;
	void		function( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr )
			glColorPointerEXT;
	void		function( GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr )
			glIndexPointerEXT;
	void		function( GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *ptr )
			glTexCoordPointerEXT;
	void		function( GLsizei stride, GLsizei count, GLboolean *ptr )
			glEdgeFlagPointerEXT;
	void		function( GLenum pname, GLvoid **params )
			glGetPointervEXT;
	void		function( GLint i )
			glArrayElementEXT;
	void		function( GLenum mode, GLint first, GLsizei count )
			glDrawArraysEXT;
	void		function( GLenum mode )
			glBlendEquationEXT;
	void		function( GLenum pname, GLfloat param )
			glPointParameterfEXT;
	void		function( GLenum pname, GLfloat *params )
			glPointParameterfvEXT;
	void		function(GLenum pname, GLfloat param)
			glPointParameterfSGIS;
	void		function(GLenum pname, GLfloat *params)
			glPointParameterfvSGIS;
	void		function( GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table )
			glColorTableEXT;
	void		function( GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data )
			glColorSubTableEXT;
	void		function( GLenum target, GLenum format, GLenum type, GLvoid *table )
			glGetColorTableEXT;
	void		function( GLenum target, GLenum pname, GLfloat *params )
			glGetColorTableParameterfvEXT;
	void		function( GLenum target, GLenum pname, GLint *params )
			glGetColorTableParameterivEXT;
	void		function( GLint first, GLsizei count )
			glLockArraysEXT;
	void		function( )
			glUnlockArraysEXT;
} // end version(GL_EXT)

version(GL_MESA)
{
	void		function( GLint x, GLint y )
			glWindowPos2iMESA;
	void		function( GLshort x, GLshort y )
			glWindowPos2sMESA;
	void		function( GLfloat x, GLfloat y )
			glWindowPos2fMESA;
	void		function( GLdouble x, GLdouble y )
			glWindowPos2dMESA;
	void		function( GLint *p )
			glWindowPos2ivMESA;
	void		function( GLshort *p )
			glWindowPos2svMESA;
	void		function( GLfloat *p )
			glWindowPos2fvMESA;
	void		function( GLdouble *p )
			glWindowPos2dvMESA;
	void		function( GLint x, GLint y, GLint z )
			glWindowPos3iMESA;
	void		function( GLshort x, GLshort y, GLshort z )
			glWindowPos3sMESA;
	void		function( GLfloat x, GLfloat y, GLfloat z )
			glWindowPos3fMESA;
	void		function( GLdouble x, GLdouble y, GLdouble z )
			glWindowPos3dMESA;
	void		function( GLint *p )
			glWindowPos3ivMESA;
	void		function( GLshort *p )
			glWindowPos3svMESA;
	void		function( GLfloat *p )
			glWindowPos3fvMESA;
	void		function( GLdouble *p )
			glWindowPos3dvMESA;
	void		function( GLint x, GLint y, GLint z, GLint w )
			glWindowPos4iMESA;
	void		function( GLshort x, GLshort y, GLshort z, GLshort w )
			glWindowPos4sMESA;
	void		function( GLfloat x, GLfloat y, GLfloat z, GLfloat w )
			glWindowPos4fMESA;
	void		function( GLdouble x, GLdouble y, GLdouble z, GLdouble w)
			glWindowPos4dMESA;
	void		function( GLint *p )
			glWindowPos4ivMESA;
	void		function( GLshort *p )
			glWindowPos4svMESA;
	void		function( GLfloat *p )
			glWindowPos4fvMESA;
	void		function( GLdouble *p )
			glWindowPos4dvMESA;
	void		function( )
			glResizeBuffersMESA;
	void		function( GLbitfield mask )
			glEnableTraceMESA;
	void		function( GLbitfield mask )
			glDisableTraceMESA;
	void		function( GLbitfield mask, GLubyte * traceName )
			glNewTraceMESA;
	void		function( )
			glEndTraceMESA;
	void		function( GLbitfield attribMask )
			glTraceAssertAttribMESA;
	void		function( GLubyte * comment )
			glTraceCommentMESA;
	void		function( GLuint name, GLubyte* comment )
			glTraceTextureMESA;
	void		function( GLuint name, GLubyte* comment )
			glTraceListMESA;
	void		function( GLvoid* pointer, GLubyte* comment )
			glTracePointerMESA;
	void		function( GLvoid* first, GLvoid* last, GLubyte* comment )
			glTracePointerRangeMESA;
} // end version(GL_MESA)



lib.loader.Symbol[] glLinks =
[
	{ "glClearIndex",  cast(void**)& glClearIndex },
	{ "glClearColor",  cast(void**)& glClearColor },
	{ "glClear",  cast(void**)& glClear },
	{ "glIndexMask",  cast(void**)& glIndexMask },
	{ "glColorMask",  cast(void**)& glColorMask },
	{ "glAlphaFunc",  cast(void**)& glAlphaFunc },
	{ "glBlendFunc",  cast(void**)& glBlendFunc },
	{ "glLogicOp",  cast(void**)& glLogicOp },
	{ "glCullFace",  cast(void**)& glCullFace },
	{ "glFrontFace",  cast(void**)& glFrontFace },
	{ "glPointSize",  cast(void**)& glPointSize },
	{ "glLineWidth",  cast(void**)& glLineWidth },
	{ "glLineStipple",  cast(void**)& glLineStipple },
	{ "glPolygonMode",  cast(void**)& glPolygonMode },
	{ "glPolygonOffset",  cast(void**)& glPolygonOffset },
	{ "glPolygonStipple",  cast(void**)& glPolygonStipple },
	{ "glGetPolygonStipple",  cast(void**)& glGetPolygonStipple },
	{ "glEdgeFlag",  cast(void**)& glEdgeFlag },
	{ "glEdgeFlagv",  cast(void**)& glEdgeFlagv },
	{ "glScissor",  cast(void**)& glScissor },
	{ "glClipPlane",  cast(void**)& glClipPlane },
	{ "glGetClipPlane",  cast(void**)& glGetClipPlane },
	{ "glDrawBuffer",  cast(void**)& glDrawBuffer },
	{ "glReadBuffer",  cast(void**)& glReadBuffer },
	{ "glEnable",  cast(void**)& glEnable },
	{ "glDisable",  cast(void**)& glDisable },
	{ "glIsEnabled",  cast(void**)& glIsEnabled },
	{ "glEnableClientState",  cast(void**)& glEnableClientState },
	{ "glDisableClientState",  cast(void**)& glDisableClientState },
	{ "glGetBooleanv",  cast(void**)& glGetBooleanv },
	{ "glGetDoublev",  cast(void**)& glGetDoublev },
	{ "glGetFloatv",  cast(void**)& glGetFloatv },
	{ "glGetIntegerv",  cast(void**)& glGetIntegerv },
	{ "glPushAttrib",  cast(void**)& glPushAttrib },
	{ "glPopAttrib",  cast(void**)& glPopAttrib },
	{ "glPushClientAttrib",  cast(void**)& glPushClientAttrib },
	{ "glPopClientAttrib",  cast(void**)& glPopClientAttrib },
	{ "glRenderMode",  cast(void**)& glRenderMode },
	{ "glGetError",  cast(void**)& glGetError },
	{ "glGetString",  cast(void**)& glGetString },
	{ "glFinish",  cast(void**)& glFinish },
	{ "glFlush",  cast(void**)& glFlush },
	{ "glHint",  cast(void**)& glHint },
	{ "glClearDepth",  cast(void**)& glClearDepth },
	{ "glDepthFunc",  cast(void**)& glDepthFunc },
	{ "glDepthMask",  cast(void**)& glDepthMask },
	{ "glDepthRange",  cast(void**)& glDepthRange },
	{ "glClearAccum",  cast(void**)& glClearAccum },
	{ "glAccum",  cast(void**)& glAccum },
	{ "glMatrixMode",  cast(void**)& glMatrixMode },
	{ "glOrtho",  cast(void**)& glOrtho },
	{ "glFrustum",  cast(void**)& glFrustum },
	{ "glViewport",  cast(void**)& glViewport },
	{ "glPushMatrix",  cast(void**)& glPushMatrix },
	{ "glPopMatrix",  cast(void**)& glPopMatrix },
	{ "glLoadIdentity",  cast(void**)& glLoadIdentity },
	{ "glLoadMatrixd",  cast(void**)& glLoadMatrixd },
	{ "glLoadMatrixf",  cast(void**)& glLoadMatrixf },
	{ "glMultMatrixd",  cast(void**)& glMultMatrixd },
	{ "glMultMatrixf",  cast(void**)& glMultMatrixf },
	{ "glRotated",  cast(void**)& glRotated },
	{ "glRotatef",  cast(void**)& glRotatef },
	{ "glScaled",  cast(void**)& glScaled },
	{ "glScalef",  cast(void**)& glScalef },
	{ "glTranslated",  cast(void**)& glTranslated },
	{ "glTranslatef",  cast(void**)& glTranslatef },
	{ "glIsList",  cast(void**)& glIsList },
	{ "glDeleteLists",  cast(void**)& glDeleteLists },
	{ "glGenLists",  cast(void**)& glGenLists },
	{ "glNewList",  cast(void**)& glNewList },
	{ "glEndList",  cast(void**)& glEndList },
	{ "glCallList",  cast(void**)& glCallList },
	{ "glCallLists",  cast(void**)& glCallLists },
	{ "glListBase",  cast(void**)& glListBase },
	{ "glBegin",  cast(void**)& glBegin },
	{ "glEnd",  cast(void**)& glEnd },
	{ "glVertex2d",  cast(void**)& glVertex2d },
	{ "glVertex2f",  cast(void**)& glVertex2f },
	{ "glVertex2i",  cast(void**)& glVertex2i },
	{ "glVertex2s",  cast(void**)& glVertex2s },
	{ "glVertex3d",  cast(void**)& glVertex3d },
	{ "glVertex3f",  cast(void**)& glVertex3f },
	{ "glVertex3i",  cast(void**)& glVertex3i },
	{ "glVertex3s",  cast(void**)& glVertex3s },
	{ "glVertex4d",  cast(void**)& glVertex4d },
	{ "glVertex4f",  cast(void**)& glVertex4f },
	{ "glVertex4i",  cast(void**)& glVertex4i },
	{ "glVertex4s",  cast(void**)& glVertex4s },
	{ "glVertex2dv",  cast(void**)& glVertex2dv },
	{ "glVertex2fv",  cast(void**)& glVertex2fv },
	{ "glVertex2iv",  cast(void**)& glVertex2iv },
	{ "glVertex2sv",  cast(void**)& glVertex2sv },
	{ "glVertex3dv",  cast(void**)& glVertex3dv },
	{ "glVertex3fv",  cast(void**)& glVertex3fv },
	{ "glVertex3iv",  cast(void**)& glVertex3iv },
	{ "glVertex3sv",  cast(void**)& glVertex3sv },
	{ "glVertex4dv",  cast(void**)& glVertex4dv },
	{ "glVertex4fv",  cast(void**)& glVertex4fv },
	{ "glVertex4iv",  cast(void**)& glVertex4iv },
	{ "glVertex4sv",  cast(void**)& glVertex4sv },
	{ "glNormal3b",  cast(void**)& glNormal3b },
	{ "glNormal3d",  cast(void**)& glNormal3d },
	{ "glNormal3f",  cast(void**)& glNormal3f },
	{ "glNormal3i",  cast(void**)& glNormal3i },
	{ "glNormal3s",  cast(void**)& glNormal3s },
	{ "glNormal3bv",  cast(void**)& glNormal3bv },
	{ "glNormal3dv",  cast(void**)& glNormal3dv },
	{ "glNormal3fv",  cast(void**)& glNormal3fv },
	{ "glNormal3iv",  cast(void**)& glNormal3iv },
	{ "glNormal3sv",  cast(void**)& glNormal3sv },
	{ "glIndexd",  cast(void**)& glIndexd },
	{ "glIndexf",  cast(void**)& glIndexf },
	{ "glIndexi",  cast(void**)& glIndexi },
	{ "glIndexs",  cast(void**)& glIndexs },
	{ "glIndexub",  cast(void**)& glIndexub },
	{ "glIndexdv",  cast(void**)& glIndexdv },
	{ "glIndexfv",  cast(void**)& glIndexfv },
	{ "glIndexiv",  cast(void**)& glIndexiv },
	{ "glIndexsv",  cast(void**)& glIndexsv },
	{ "glIndexubv",  cast(void**)& glIndexubv },
	{ "glColor3b",  cast(void**)& glColor3b },
	{ "glColor3d",  cast(void**)& glColor3d },
	{ "glColor3f",  cast(void**)& glColor3f },
	{ "glColor3i",  cast(void**)& glColor3i },
	{ "glColor3s",  cast(void**)& glColor3s },
	{ "glColor3ub",  cast(void**)& glColor3ub },
	{ "glColor3ui",  cast(void**)& glColor3ui },
	{ "glColor3us",  cast(void**)& glColor3us },
	{ "glColor4b",  cast(void**)& glColor4b },
	{ "glColor4d",  cast(void**)& glColor4d },
	{ "glColor4f",  cast(void**)& glColor4f },
	{ "glColor4i",  cast(void**)& glColor4i },
	{ "glColor4s",  cast(void**)& glColor4s },
	{ "glColor4ub",  cast(void**)& glColor4ub },
	{ "glColor4ui",  cast(void**)& glColor4ui },
	{ "glColor4us",  cast(void**)& glColor4us },
	{ "glColor3bv",  cast(void**)& glColor3bv },
	{ "glColor3dv",  cast(void**)& glColor3dv },
	{ "glColor3fv",  cast(void**)& glColor3fv },
	{ "glColor3iv",  cast(void**)& glColor3iv },
	{ "glColor3sv",  cast(void**)& glColor3sv },
	{ "glColor3ubv",  cast(void**)& glColor3ubv },
	{ "glColor3uiv",  cast(void**)& glColor3uiv },
	{ "glColor3usv",  cast(void**)& glColor3usv },
	{ "glColor4bv",  cast(void**)& glColor4bv },
	{ "glColor4dv",  cast(void**)& glColor4dv },
	{ "glColor4fv",  cast(void**)& glColor4fv },
	{ "glColor4iv",  cast(void**)& glColor4iv },
	{ "glColor4sv",  cast(void**)& glColor4sv },
	{ "glColor4ubv",  cast(void**)& glColor4ubv },
	{ "glColor4uiv",  cast(void**)& glColor4uiv },
	{ "glColor4usv",  cast(void**)& glColor4usv },
	{ "glTexCoord1d",  cast(void**)& glTexCoord1d },
	{ "glTexCoord1f",  cast(void**)& glTexCoord1f },
	{ "glTexCoord1i",  cast(void**)& glTexCoord1i },
	{ "glTexCoord1s",  cast(void**)& glTexCoord1s },
	{ "glTexCoord2d",  cast(void**)& glTexCoord2d },
	{ "glTexCoord2f",  cast(void**)& glTexCoord2f },
	{ "glTexCoord2i",  cast(void**)& glTexCoord2i },
	{ "glTexCoord2s",  cast(void**)& glTexCoord2s },
	{ "glTexCoord3d",  cast(void**)& glTexCoord3d },
	{ "glTexCoord3f",  cast(void**)& glTexCoord3f },
	{ "glTexCoord3i",  cast(void**)& glTexCoord3i },
	{ "glTexCoord3s",  cast(void**)& glTexCoord3s },
	{ "glTexCoord4d",  cast(void**)& glTexCoord4d },
	{ "glTexCoord4f",  cast(void**)& glTexCoord4f },
	{ "glTexCoord4i",  cast(void**)& glTexCoord4i },
	{ "glTexCoord4s",  cast(void**)& glTexCoord4s },
	{ "glTexCoord1dv",  cast(void**)& glTexCoord1dv },
	{ "glTexCoord1fv",  cast(void**)& glTexCoord1fv },
	{ "glTexCoord1iv",  cast(void**)& glTexCoord1iv },
	{ "glTexCoord1sv",  cast(void**)& glTexCoord1sv },
	{ "glTexCoord2dv",  cast(void**)& glTexCoord2dv },
	{ "glTexCoord2fv",  cast(void**)& glTexCoord2fv },
	{ "glTexCoord2iv",  cast(void**)& glTexCoord2iv },
	{ "glTexCoord2sv",  cast(void**)& glTexCoord2sv },
	{ "glTexCoord3dv",  cast(void**)& glTexCoord3dv },
	{ "glTexCoord3fv",  cast(void**)& glTexCoord3fv },
	{ "glTexCoord3iv",  cast(void**)& glTexCoord3iv },
	{ "glTexCoord3sv",  cast(void**)& glTexCoord3sv },
	{ "glTexCoord4dv",  cast(void**)& glTexCoord4dv },
	{ "glTexCoord4fv",  cast(void**)& glTexCoord4fv },
	{ "glTexCoord4iv",  cast(void**)& glTexCoord4iv },
	{ "glTexCoord4sv",  cast(void**)& glTexCoord4sv },
	{ "glRasterPos2d",  cast(void**)& glRasterPos2d },
	{ "glRasterPos2f",  cast(void**)& glRasterPos2f },
	{ "glRasterPos2i",  cast(void**)& glRasterPos2i },
	{ "glRasterPos2s",  cast(void**)& glRasterPos2s },
	{ "glRasterPos3d",  cast(void**)& glRasterPos3d },
	{ "glRasterPos3f",  cast(void**)& glRasterPos3f },
	{ "glRasterPos3i",  cast(void**)& glRasterPos3i },
	{ "glRasterPos3s",  cast(void**)& glRasterPos3s },
	{ "glRasterPos4d",  cast(void**)& glRasterPos4d },
	{ "glRasterPos4f",  cast(void**)& glRasterPos4f },
	{ "glRasterPos4i",  cast(void**)& glRasterPos4i },
	{ "glRasterPos4s",  cast(void**)& glRasterPos4s },
	{ "glRasterPos2dv",  cast(void**)& glRasterPos2dv },
	{ "glRasterPos2fv",  cast(void**)& glRasterPos2fv },
	{ "glRasterPos2iv",  cast(void**)& glRasterPos2iv },
	{ "glRasterPos2sv",  cast(void**)& glRasterPos2sv },
	{ "glRasterPos3dv",  cast(void**)& glRasterPos3dv },
	{ "glRasterPos3fv",  cast(void**)& glRasterPos3fv },
	{ "glRasterPos3iv",  cast(void**)& glRasterPos3iv },
	{ "glRasterPos3sv",  cast(void**)& glRasterPos3sv },
	{ "glRasterPos4dv",  cast(void**)& glRasterPos4dv },
	{ "glRasterPos4fv",  cast(void**)& glRasterPos4fv },
	{ "glRasterPos4iv",  cast(void**)& glRasterPos4iv },
	{ "glRasterPos4sv",  cast(void**)& glRasterPos4sv },
	{ "glRectd",  cast(void**)& glRectd },
	{ "glRectf",  cast(void**)& glRectf },
	{ "glRecti",  cast(void**)& glRecti },
	{ "glRects",  cast(void**)& glRects },
	{ "glRectdv",  cast(void**)& glRectdv },
	{ "glRectfv",  cast(void**)& glRectfv },
	{ "glRectiv",  cast(void**)& glRectiv },
	{ "glRectsv",  cast(void**)& glRectsv },
	{ "glVertexPointer",  cast(void**)& glVertexPointer },
	{ "glNormalPointer",  cast(void**)& glNormalPointer },
	{ "glColorPointer",  cast(void**)& glColorPointer },
	{ "glIndexPointer",  cast(void**)& glIndexPointer },
	{ "glTexCoordPointer",  cast(void**)& glTexCoordPointer },
	{ "glEdgeFlagPointer",  cast(void**)& glEdgeFlagPointer },
	{ "glGetPointerv",  cast(void**)& glGetPointerv },
	{ "glArrayElement",  cast(void**)& glArrayElement },
	{ "glDrawArrays",  cast(void**)& glDrawArrays },
	{ "glDrawElements",  cast(void**)& glDrawElements },
	{ "glInterleavedArrays",  cast(void**)& glInterleavedArrays },
	{ "glShadeModel",  cast(void**)& glShadeModel },
	{ "glLightf",  cast(void**)& glLightf },
	{ "glLighti",  cast(void**)& glLighti },
	{ "glLightfv",  cast(void**)& glLightfv },
	{ "glLightiv",  cast(void**)& glLightiv },
	{ "glGetLightfv",  cast(void**)& glGetLightfv },
	{ "glGetLightiv",  cast(void**)& glGetLightiv },
	{ "glLightModelf",  cast(void**)& glLightModelf },
	{ "glLightModeli",  cast(void**)& glLightModeli },
	{ "glLightModelfv",  cast(void**)& glLightModelfv },
	{ "glLightModeliv",  cast(void**)& glLightModeliv },
	{ "glMaterialf",  cast(void**)& glMaterialf },
	{ "glMateriali",  cast(void**)& glMateriali },
	{ "glMaterialfv",  cast(void**)& glMaterialfv },
	{ "glMaterialiv",  cast(void**)& glMaterialiv },
	{ "glGetMaterialfv",  cast(void**)& glGetMaterialfv },
	{ "glGetMaterialiv",  cast(void**)& glGetMaterialiv },
	{ "glColorMaterial",  cast(void**)& glColorMaterial },
	{ "glPixelZoom",  cast(void**)& glPixelZoom },
	{ "glPixelStoref",  cast(void**)& glPixelStoref },
	{ "glPixelStorei",  cast(void**)& glPixelStorei },
	{ "glPixelTransferf",  cast(void**)& glPixelTransferf },
	{ "glPixelTransferi",  cast(void**)& glPixelTransferi },
	{ "glPixelMapfv",  cast(void**)& glPixelMapfv },
	{ "glPixelMapuiv",  cast(void**)& glPixelMapuiv },
	{ "glPixelMapusv",  cast(void**)& glPixelMapusv },
	{ "glGetPixelMapfv",  cast(void**)& glGetPixelMapfv },
	{ "glGetPixelMapuiv",  cast(void**)& glGetPixelMapuiv },
	{ "glGetPixelMapusv",  cast(void**)& glGetPixelMapusv },
	{ "glBitmap",  cast(void**)& glBitmap },
	{ "glReadPixels",  cast(void**)& glReadPixels },
	{ "glDrawPixels",  cast(void**)& glDrawPixels },
	{ "glCopyPixels",  cast(void**)& glCopyPixels },
	{ "glStencilFunc",  cast(void**)& glStencilFunc },
	{ "glStencilMask",  cast(void**)& glStencilMask },
	{ "glStencilOp",  cast(void**)& glStencilOp },
	{ "glClearStencil",  cast(void**)& glClearStencil },
	{ "glTexGend",  cast(void**)& glTexGend },
	{ "glTexGenf",  cast(void**)& glTexGenf },
	{ "glTexGeni",  cast(void**)& glTexGeni },
	{ "glTexGendv",  cast(void**)& glTexGendv },
	{ "glTexGenfv",  cast(void**)& glTexGenfv },
	{ "glTexGeniv",  cast(void**)& glTexGeniv },
	{ "glGetTexGendv",  cast(void**)& glGetTexGendv },
	{ "glGetTexGenfv",  cast(void**)& glGetTexGenfv },
	{ "glGetTexGeniv",  cast(void**)& glGetTexGeniv },
	{ "glTexEnvf",  cast(void**)& glTexEnvf },
	{ "glTexEnvi",  cast(void**)& glTexEnvi },
	{ "glTexEnvfv",  cast(void**)& glTexEnvfv },
	{ "glTexEnviv",  cast(void**)& glTexEnviv },
	{ "glGetTexEnvfv",  cast(void**)& glGetTexEnvfv },
	{ "glGetTexEnviv",  cast(void**)& glGetTexEnviv },
	{ "glTexParameterf",  cast(void**)& glTexParameterf },
	{ "glTexParameteri",  cast(void**)& glTexParameteri },
	{ "glTexParameterfv",  cast(void**)& glTexParameterfv },
	{ "glTexParameteriv",  cast(void**)& glTexParameteriv },
	{ "glGetTexParameterfv",  cast(void**)& glGetTexParameterfv },
	{ "glGetTexParameteriv",  cast(void**)& glGetTexParameteriv },
	{ "glGetTexLevelParameterfv",  cast(void**)& glGetTexLevelParameterfv },
	{ "glGetTexLevelParameteriv",  cast(void**)& glGetTexLevelParameteriv },
	{ "glTexImage1D",  cast(void**)& glTexImage1D },
	{ "glTexImage2D",  cast(void**)& glTexImage2D },
	{ "glGetTexImage",  cast(void**)& glGetTexImage },
	{ "glGenTextures",  cast(void**)& glGenTextures },
	{ "glDeleteTextures",  cast(void**)& glDeleteTextures },
	{ "glBindTexture",  cast(void**)& glBindTexture },
	{ "glPrioritizeTextures",  cast(void**)& glPrioritizeTextures },
	{ "glAreTexturesResident",  cast(void**)& glAreTexturesResident },
	{ "glIsTexture",  cast(void**)& glIsTexture },
	{ "glTexSubImage1D",  cast(void**)& glTexSubImage1D },
	{ "glTexSubImage2D",  cast(void**)& glTexSubImage2D },
	{ "glCopyTexImage1D",  cast(void**)& glCopyTexImage1D },
	{ "glCopyTexImage2D",  cast(void**)& glCopyTexImage2D },
	{ "glCopyTexSubImage1D",  cast(void**)& glCopyTexSubImage1D },
	{ "glCopyTexSubImage2D",  cast(void**)& glCopyTexSubImage2D },
	{ "glMap1d",  cast(void**)& glMap1d },
	{ "glMap1f",  cast(void**)& glMap1f },
	{ "glMap2d",  cast(void**)& glMap2d },
	{ "glMap2f",  cast(void**)& glMap2f },
	{ "glGetMapdv",  cast(void**)& glGetMapdv },
	{ "glGetMapfv",  cast(void**)& glGetMapfv },
	{ "glGetMapiv",  cast(void**)& glGetMapiv },
	{ "glEvalCoord1d",  cast(void**)& glEvalCoord1d },
	{ "glEvalCoord1f",  cast(void**)& glEvalCoord1f },
	{ "glEvalCoord1dv",  cast(void**)& glEvalCoord1dv },
	{ "glEvalCoord1fv",  cast(void**)& glEvalCoord1fv },
	{ "glEvalCoord2d",  cast(void**)& glEvalCoord2d },
	{ "glEvalCoord2f",  cast(void**)& glEvalCoord2f },
	{ "glEvalCoord2dv",  cast(void**)& glEvalCoord2dv },
	{ "glEvalCoord2fv",  cast(void**)& glEvalCoord2fv },
	{ "glMapGrid1d",  cast(void**)& glMapGrid1d },
	{ "glMapGrid1f",  cast(void**)& glMapGrid1f },
	{ "glMapGrid2d",  cast(void**)& glMapGrid2d },
	{ "glMapGrid2f",  cast(void**)& glMapGrid2f },
	{ "glEvalPoint1",  cast(void**)& glEvalPoint1 },
	{ "glEvalPoint2",  cast(void**)& glEvalPoint2 },
	{ "glEvalMesh1",  cast(void**)& glEvalMesh1 },
	{ "glEvalMesh2",  cast(void**)& glEvalMesh2 },
	{ "glFogf",  cast(void**)& glFogf },
	{ "glFogi",  cast(void**)& glFogi },
	{ "glFogfv",  cast(void**)& glFogfv },
	{ "glFogiv",  cast(void**)& glFogiv },
	{ "glFeedbackBuffer",  cast(void**)& glFeedbackBuffer },
	{ "glPassThrough",  cast(void**)& glPassThrough },
	{ "glSelectBuffer",  cast(void**)& glSelectBuffer },
	{ "glInitNames",  cast(void**)& glInitNames },
	{ "glLoadName",  cast(void**)& glLoadName },
	{ "glPushName",  cast(void**)& glPushName },
	{ "glPopName",  cast(void**)& glPopName },
	{ "glDrawRangeElements",  cast(void**)& glDrawRangeElements },
	{ "glTexImage3D",  cast(void**)& glTexImage3D },
	{ "glTexSubImage3D",  cast(void**)& glTexSubImage3D },
	{ "glCopyTexSubImage3D",  cast(void**)& glCopyTexSubImage3D },
	{ "glColorTable",  cast(void**)& glColorTable },
	{ "glColorSubTable",  cast(void**)& glColorSubTable },
	{ "glColorTableParameteriv",  cast(void**)& glColorTableParameteriv },
	{ "glColorTableParameterfv",  cast(void**)& glColorTableParameterfv },
	{ "glCopyColorSubTable",  cast(void**)& glCopyColorSubTable },
	{ "glCopyColorTable",  cast(void**)& glCopyColorTable },
	{ "glGetColorTable",  cast(void**)& glGetColorTable },
	{ "glGetColorTableParameterfv",  cast(void**)& glGetColorTableParameterfv },
	{ "glGetColorTableParameteriv",  cast(void**)& glGetColorTableParameteriv },
	{ "glBlendEquation",  cast(void**)& glBlendEquation },
	{ "glBlendColor",  cast(void**)& glBlendColor },
	{ "glHistogram",  cast(void**)& glHistogram },
	{ "glResetHistogram",  cast(void**)& glResetHistogram },
	{ "glGetHistogram",  cast(void**)& glGetHistogram },
	{ "glGetHistogramParameterfv",  cast(void**)& glGetHistogramParameterfv },
	{ "glGetHistogramParameteriv",  cast(void**)& glGetHistogramParameteriv },
	{ "glMinmax",  cast(void**)& glMinmax },
	{ "glResetMinmax",  cast(void**)& glResetMinmax },
	{ "glGetMinmax",  cast(void**)& glGetMinmax },
	{ "glGetMinmaxParameterfv",  cast(void**)& glGetMinmaxParameterfv },
	{ "glGetMinmaxParameteriv",  cast(void**)& glGetMinmaxParameteriv },
	{ "glConvolutionFilter1D",  cast(void**)& glConvolutionFilter1D },
	{ "glConvolutionFilter2D",  cast(void**)& glConvolutionFilter2D },
	{ "glConvolutionParameterf",  cast(void**)& glConvolutionParameterf },
	{ "glConvolutionParameterfv",  cast(void**)& glConvolutionParameterfv },
	{ "glConvolutionParameteri",  cast(void**)& glConvolutionParameteri },
	{ "glConvolutionParameteriv",  cast(void**)& glConvolutionParameteriv },
	{ "glCopyConvolutionFilter1D",  cast(void**)& glCopyConvolutionFilter1D },
	{ "glCopyConvolutionFilter2D",  cast(void**)& glCopyConvolutionFilter2D },
	{ "glGetConvolutionFilter",  cast(void**)& glGetConvolutionFilter },
	{ "glGetConvolutionParameterfv",  cast(void**)& glGetConvolutionParameterfv },
	{ "glGetConvolutionParameteriv",  cast(void**)& glGetConvolutionParameteriv },
	{ "glSeparableFilter2D",  cast(void**)& glSeparableFilter2D },
	{ "glGetSeparableFilter",  cast(void**)& glGetSeparableFilter },
	{ "glActiveTexture",  cast(void**)& glActiveTexture },
	{ "glClientActiveTexture",  cast(void**)& glClientActiveTexture },
	{ "glCompressedTexImage1D",  cast(void**)& glCompressedTexImage1D },
	{ "glCompressedTexImage2D",  cast(void**)& glCompressedTexImage2D },
	{ "glCompressedTexImage3D",  cast(void**)& glCompressedTexImage3D },
	{ "glCompressedTexSubImage1D",  cast(void**)& glCompressedTexSubImage1D },
	{ "glCompressedTexSubImage2D",  cast(void**)& glCompressedTexSubImage2D },
	{ "glCompressedTexSubImage3D",  cast(void**)& glCompressedTexSubImage3D },
	{ "glGetCompressedTexImage",  cast(void**)& glGetCompressedTexImage },
	{ "glMultiTexCoord1d",  cast(void**)& glMultiTexCoord1d },
	{ "glMultiTexCoord1dv",  cast(void**)& glMultiTexCoord1dv },
	{ "glMultiTexCoord1f",  cast(void**)& glMultiTexCoord1f },
	{ "glMultiTexCoord1fv",  cast(void**)& glMultiTexCoord1fv },
	{ "glMultiTexCoord1i",  cast(void**)& glMultiTexCoord1i },
	{ "glMultiTexCoord1iv",  cast(void**)& glMultiTexCoord1iv },
	{ "glMultiTexCoord1s",  cast(void**)& glMultiTexCoord1s },
	{ "glMultiTexCoord1sv",  cast(void**)& glMultiTexCoord1sv },
	{ "glMultiTexCoord2d",  cast(void**)& glMultiTexCoord2d },
	{ "glMultiTexCoord2dv",  cast(void**)& glMultiTexCoord2dv },
	{ "glMultiTexCoord2f",  cast(void**)& glMultiTexCoord2f },
	{ "glMultiTexCoord2fv",  cast(void**)& glMultiTexCoord2fv },
	{ "glMultiTexCoord2i",  cast(void**)& glMultiTexCoord2i },
	{ "glMultiTexCoord2iv",  cast(void**)& glMultiTexCoord2iv },
	{ "glMultiTexCoord2s",  cast(void**)& glMultiTexCoord2s },
	{ "glMultiTexCoord2sv",  cast(void**)& glMultiTexCoord2sv },
	{ "glMultiTexCoord3d",  cast(void**)& glMultiTexCoord3d },
	{ "glMultiTexCoord3dv",  cast(void**)& glMultiTexCoord3dv },
	{ "glMultiTexCoord3f",  cast(void**)& glMultiTexCoord3f },
	{ "glMultiTexCoord3fv",  cast(void**)& glMultiTexCoord3fv },
	{ "glMultiTexCoord3i",  cast(void**)& glMultiTexCoord3i },
	{ "glMultiTexCoord3iv",  cast(void**)& glMultiTexCoord3iv },
	{ "glMultiTexCoord3s",  cast(void**)& glMultiTexCoord3s },
	{ "glMultiTexCoord3sv",  cast(void**)& glMultiTexCoord3sv },
	{ "glMultiTexCoord4d",  cast(void**)& glMultiTexCoord4d },
	{ "glMultiTexCoord4dv",  cast(void**)& glMultiTexCoord4dv },
	{ "glMultiTexCoord4f",  cast(void**)& glMultiTexCoord4f },
	{ "glMultiTexCoord4fv",  cast(void**)& glMultiTexCoord4fv },
	{ "glMultiTexCoord4i",  cast(void**)& glMultiTexCoord4i },
	{ "glMultiTexCoord4iv",  cast(void**)& glMultiTexCoord4iv },
	{ "glMultiTexCoord4s",  cast(void**)& glMultiTexCoord4s },
	{ "glMultiTexCoord4sv",  cast(void**)& glMultiTexCoord4sv },
	{ "glLoadTransposeMatrixd",  cast(void**)& glLoadTransposeMatrixd },
	{ "glLoadTransposeMatrixf",  cast(void**)& glLoadTransposeMatrixf },
	{ "glMultTransposeMatrixd",  cast(void**)& glMultTransposeMatrixd },
	{ "glMultTransposeMatrixf",  cast(void**)& glMultTransposeMatrixf },
	{ "glSampleCoverage",  cast(void**)& glSampleCoverage }
];

version(GL_ARB)
{
lib.loader.Symbol[] glARBLinks =
[
	{ "glActiveTextureARB",  cast(void**)& glActiveTextureARB },
	{ "glClientActiveTextureARB",  cast(void**)& glClientActiveTextureARB },
	{ "glMultiTexCoord1dARB",  cast(void**)& glMultiTexCoord1dARB },
	{ "glMultiTexCoord1dvARB",  cast(void**)& glMultiTexCoord1dvARB },
	{ "glMultiTexCoord1fARB",  cast(void**)& glMultiTexCoord1fARB },
	{ "glMultiTexCoord1fvARB",  cast(void**)& glMultiTexCoord1fvARB },
	{ "glMultiTexCoord1iARB",  cast(void**)& glMultiTexCoord1iARB },
	{ "glMultiTexCoord1ivARB",  cast(void**)& glMultiTexCoord1ivARB },
	{ "glMultiTexCoord1sARB",  cast(void**)& glMultiTexCoord1sARB },
	{ "glMultiTexCoord1svARB",  cast(void**)& glMultiTexCoord1svARB },
	{ "glMultiTexCoord2dARB",  cast(void**)& glMultiTexCoord2dARB },
	{ "glMultiTexCoord2dvARB",  cast(void**)& glMultiTexCoord2dvARB },
	{ "glMultiTexCoord2fARB",  cast(void**)& glMultiTexCoord2fARB },
	{ "glMultiTexCoord2fvARB",  cast(void**)& glMultiTexCoord2fvARB },
	{ "glMultiTexCoord2iARB",  cast(void**)& glMultiTexCoord2iARB },
	{ "glMultiTexCoord2ivARB",  cast(void**)& glMultiTexCoord2ivARB },
	{ "glMultiTexCoord2sARB",  cast(void**)& glMultiTexCoord2sARB },
	{ "glMultiTexCoord2svARB",  cast(void**)& glMultiTexCoord2svARB },
	{ "glMultiTexCoord3dARB",  cast(void**)& glMultiTexCoord3dARB },
	{ "glMultiTexCoord3dvARB",  cast(void**)& glMultiTexCoord3dvARB },
	{ "glMultiTexCoord3fARB",  cast(void**)& glMultiTexCoord3fARB },
	{ "glMultiTexCoord3fvARB",  cast(void**)& glMultiTexCoord3fvARB },
	{ "glMultiTexCoord3iARB",  cast(void**)& glMultiTexCoord3iARB },
	{ "glMultiTexCoord3ivARB",  cast(void**)& glMultiTexCoord3ivARB },
	{ "glMultiTexCoord3sARB",  cast(void**)& glMultiTexCoord3sARB },
	{ "glMultiTexCoord3svARB",  cast(void**)& glMultiTexCoord3svARB },
	{ "glMultiTexCoord4dARB",  cast(void**)& glMultiTexCoord4dARB },
	{ "glMultiTexCoord4dvARB",  cast(void**)& glMultiTexCoord4dvARB },
	{ "glMultiTexCoord4fARB",  cast(void**)& glMultiTexCoord4fARB },
	{ "glMultiTexCoord4fvARB",  cast(void**)& glMultiTexCoord4fvARB },
	{ "glMultiTexCoord4iARB",  cast(void**)& glMultiTexCoord4iARB },
	{ "glMultiTexCoord4ivARB",  cast(void**)& glMultiTexCoord4ivARB },
	{ "glMultiTexCoord4sARB",  cast(void**)& glMultiTexCoord4sARB },
	{ "glMultiTexCoord4svARB",  cast(void**)& glMultiTexCoord4svARB }
];
}

version(GL_EXT) 
{
lib.loader.Symbol[] glEXTLinks =
[
	{ "glBlendColorEXT",  cast(void**)& glBlendColorEXT },
	{ "glPolygonOffsetEXT",  cast(void**)& glPolygonOffsetEXT },
	{ "glTexImage3DEXT",  cast(void**)& glTexImage3DEXT },
	{ "glTexSubImage3DEXT",  cast(void**)& glTexSubImage3DEXT },
	{ "glCopyTexSubImage3DEXT",  cast(void**)& glCopyTexSubImage3DEXT },
	{ "glGenTexturesEXT",  cast(void**)& glGenTexturesEXT },
	{ "glDeleteTexturesEXT",  cast(void**)& glDeleteTexturesEXT },
	{ "glBindTextureEXT",  cast(void**)& glBindTextureEXT },
	{ "glPrioritizeTexturesEXT",  cast(void**)& glPrioritizeTexturesEXT },
	{ "glAreTexturesResidentEXT",  cast(void**)& glAreTexturesResidentEXT },
	{ "glIsTextureEXT",  cast(void**)& glIsTextureEXT },
	{ "glVertexPointerEXT",  cast(void**)& glVertexPointerEXT },
	{ "glNormalPointerEXT",  cast(void**)& glNormalPointerEXT },
	{ "glColorPointerEXT",  cast(void**)& glColorPointerEXT },
	{ "glIndexPointerEXT",  cast(void**)& glIndexPointerEXT },
	{ "glTexCoordPointerEXT",  cast(void**)& glTexCoordPointerEXT },
	{ "glEdgeFlagPointerEXT",  cast(void**)& glEdgeFlagPointerEXT },
	{ "glGetPointervEXT",  cast(void**)& glGetPointervEXT },
	{ "glArrayElementEXT",  cast(void**)& glArrayElementEXT },
	{ "glDrawArraysEXT",  cast(void**)& glDrawArraysEXT },
	{ "glBlendEquationEXT",  cast(void**)& glBlendEquationEXT },
	{ "glPointParameterfEXT",  cast(void**)& glPointParameterfEXT },
	{ "glPointParameterfvEXT",  cast(void**)& glPointParameterfvEXT },
	{ "glPointParameterfSGIS",  cast(void**)& glPointParameterfSGIS },
	{ "glPointParameterfvSGIS",  cast(void**)& glPointParameterfvSGIS },
	{ "glColorTableEXT",  cast(void**)& glColorTableEXT },
	{ "glColorSubTableEXT",  cast(void**)& glColorSubTableEXT },
	{ "glGetColorTableEXT",  cast(void**)& glGetColorTableEXT },
	{ "glGetColorTableParameterfvEXT",  cast(void**)& glGetColorTableParameterfvEXT },
	{ "glGetColorTableParameterivEXT",  cast(void**)& glGetColorTableParameterivEXT },
	{ "glLockArraysEXT",  cast(void**)& glLockArraysEXT },
	{ "glUnlockArraysEXT",  cast(void**)& glUnlockArraysEXT }
];
}

version(GL_MESA)
{
lib.loader.Symbol[] glMESALinks =
[
	{ "glWindowPos2iMESA",  cast(void**)& glWindowPos2iMESA },
	{ "glWindowPos2sMESA",  cast(void**)& glWindowPos2sMESA },
	{ "glWindowPos2fMESA",  cast(void**)& glWindowPos2fMESA },
	{ "glWindowPos2dMESA",  cast(void**)& glWindowPos2dMESA },
	{ "glWindowPos2ivMESA",  cast(void**)& glWindowPos2ivMESA },
	{ "glWindowPos2svMESA",  cast(void**)& glWindowPos2svMESA },
	{ "glWindowPos2fvMESA",  cast(void**)& glWindowPos2fvMESA },
	{ "glWindowPos2dvMESA",  cast(void**)& glWindowPos2dvMESA },
	{ "glWindowPos3iMESA",  cast(void**)& glWindowPos3iMESA },
	{ "glWindowPos3sMESA",  cast(void**)& glWindowPos3sMESA },
	{ "glWindowPos3fMESA",  cast(void**)& glWindowPos3fMESA },
	{ "glWindowPos3dMESA",  cast(void**)& glWindowPos3dMESA },
	{ "glWindowPos3ivMESA",  cast(void**)& glWindowPos3ivMESA },
	{ "glWindowPos3svMESA",  cast(void**)& glWindowPos3svMESA },
	{ "glWindowPos3fvMESA",  cast(void**)& glWindowPos3fvMESA },
	{ "glWindowPos3dvMESA",  cast(void**)& glWindowPos3dvMESA },
	{ "glWindowPos4iMESA",  cast(void**)& glWindowPos4iMESA },
	{ "glWindowPos4sMESA",  cast(void**)& glWindowPos4sMESA },
	{ "glWindowPos4fMESA",  cast(void**)& glWindowPos4fMESA },
	{ "glWindowPos4dMESA",  cast(void**)& glWindowPos4dMESA },
	{ "glWindowPos4ivMESA",  cast(void**)& glWindowPos4ivMESA },
	{ "glWindowPos4svMESA",  cast(void**)& glWindowPos4svMESA },
	{ "glWindowPos4fvMESA",  cast(void**)& glWindowPos4fvMESA },
	{ "glWindowPos4dvMESA",  cast(void**)& glWindowPos4dvMESA },
	{ "glResizeBuffersMESA",  cast(void**)& glResizeBuffersMESA },
	{ "glEnableTraceMESA",  cast(void**)& glEnableTraceMESA },
	{ "glDisableTraceMESA",  cast(void**)& glDisableTraceMESA },
	{ "glNewTraceMESA",  cast(void**)& glNewTraceMESA },
	{ "glEndTraceMESA",  cast(void**)& glEndTraceMESA },
	{ "glTraceAssertAttribMESA",  cast(void**)& glTraceAssertAttribMESA },
	{ "glTraceCommentMESA",  cast(void**)& glTraceCommentMESA },
	{ "glTraceTextureMESA",  cast(void**)& glTraceTextureMESA },
	{ "glTraceListMESA",  cast(void**)& glTraceListMESA },
	{ "glTracePointerMESA",  cast(void**)& glTracePointerMESA },
	{ "glTracePointerRangeMESA",  cast(void**)& glTracePointerRangeMESA }
];
}

alias char uchar;
alias int Bool;

version(linux) 
{
	alias void* XID;
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
}

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

const int GL_VERSION_1_1 = 1;
const int GL_VERSION_1_2 = 1;
const int GL_VERSION_1_3 = 1;
const int GL_ARB_imaging = 1;

/*
 *
 * Datatypes
 *
 */

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

version (GL_ARB)
{
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
}

version(GL_EXT)
{
	/*
	* 1. GL_EXT_abgr
	*/

	const int GL_EXT_abgr = 1;
	const int GL_ABGR_EXT = 0x8000;

	/*
	* 2. GL_EXT_blend_color
	*/

	const int GL_EXT_blend_color = 1;

	const int GL_CONSTANT_COLOR_EXT = 0x8001;
	const int GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002;
	const int GL_CONSTANT_ALPHA_EXT = 0x8003;
	const int GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004;
	const int GL_BLEND_COLOR_EXT = 0x8005;

	/*
	* 3. GL_EXT_polygon_offset
	*/
	
	const int GL_EXT_polygon_offset = 1;
	
	const int GL_POLYGON_OFFSET_EXT = 0x8037;
	const int GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038;
	const int GL_POLYGON_OFFSET_BIAS_EXT = 0x8039;

	/*
	* 6. GL_EXT_texture3D
	*/

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

	/*
	* 20. GL_EXT_texture_object
	*/

	const int GL_EXT_texture_object = 1;	
	
	const int GL_TEXTURE_PRIORITY_EXT = 0x8066;
	const int GL_TEXTURE_RESIDENT_EXT = 0x8067;
	const int GL_TEXTURE_1D_BINDING_EXT = 0x8068;
	const int GL_TEXTURE_2D_BINDING_EXT = 0x8069;

	/*
	* 27. GL_EXT_rescale_normal
	*/

	const int GL_EXT_rescale_normal = 1;
	
	const int GL_RESCALE_NORMAL_EXT = 0x803A;

	/*
	* 30. GL_EXT_vertex_array
	*/

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

	/*
	* 35. GL_SGIS_texture_edge_clamp
	*/

	const int GL_SGIS_texture_edge_clamp = 1;
	const int GL_CLAMP_TO_EDGE_SGIS = 0x812F;

	/*
	* 37. GL_EXT_blend_minmax
	*/
	const int GL_EXT_blend_minmax = 1;

	const int GL_FUNC_ADD_EXT = 0x8006;
	const int GL_MIN_EXT = 0x8007;
	const int GL_MAX_EXT = 0x8008;
	const int GL_BLEND_EQUATION_EXT = 0x8009;

	/*
	* 38. GL_EXT_blend_subtract (requires GL_EXT_blend_max )
	*/

	const int GL_EXT_blend_subtract = 1;

	const int GL_FUNC_SUBTRACT_EXT = 0x800A;
	const int GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B;

	/*
	* 39. GL_EXT_blend_logic_op
	*/

	const int GL_EXT_blend_logic_op = 1;
	const int GL_EXT_point_parameters = 1;
	
	const int GL_POINT_SIZE_MIN_EXT = 0x8126;
	const int GL_POINT_SIZE_MAX_EXT = 0x8127;
	const int GL_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128;
	const int GL_DISTANCE_ATTENUATION_EXT = 0x8129;
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

	const int GL_EXT_clip_volume_hint = 1;
	const int GL_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80F0;

	const int GL_EXT_compiled_vertex_array = 1;

	const int GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8;
	const int GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9;

	const int GL_HP_occlusion_test = 1;

	const int GL_OCCLUSION_TEST_HP = 0x8165;
	const int GL_OCCLUSION_TEST_RESULT_HP = 0x8166;

	const int GL_EXT_shared_texture_palette = 1;

	const int GL_SHARED_TEXTURE_PALETTE_EXT = 0x81FB;

	const int GL_EXT_stencil_wrap = 1;

	const int GL_INCR_WRAP_EXT = 0x8507;
	const int GL_DECR_WRAP_EXT = 0x8508;

	const int GL_NV_texgen_reflection = 1;

	const int GL_NORMAL_MAP_NV = 0x8511;
	const int GL_REFLECTION_MAP_NV = 0x8512;
	const int GL_EXT_texture_env_add = 1;

	const int GL_EXT_texture_env_dot3 = 1;

	const int GL_DOT3_RGB_EXT = 0x8740;
	const int GL_DOT3_RGBA_EXT = 0x8741;
}

version (GL_MESA)
{
	const int GL_MESA_window_pos = 1;
	const int GL_MESA_resize_buffers = 1;
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

	const int GL_MESA_packed_depth_stencil = 1;

	const int GL_DEPTH_STENCIL_MESA = 0x8750;
	const int GL_UNSIGNED_INT_24_8_MESA = 0x8751;
	const int GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752;
	const int GL_UNSIGNED_SHORT_15_1_MESA = 0x8753;
	const int GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754;

	const int GL_MESA_ycbcr_texture = 1;

	const int GL_YCBCR_MESA = 0x8757;
	const int GL_UNSIGNED_SHORT_8_8_MESA = 0x85BA; /* same as Apple */
	const int GL_UNSIGNED_SHORT_8_8_REV_MESA = 0x85BB; /* same as Apple */
	
	const int GL_MESA_pack_invert = 1;
	const int GL_PACK_INVERT_MESA = 0x8758;
	
	const int GL_APPLE_client_storage = 1;
	const int GL_UNPACK_CLIENT_STORAGE_APPLE = 0x85B2;
	const int GL_APPLE_ycbcr_422 = 1;
	const int GL_YCBCR_422_APPLE = 0x85B9;
	const int GL_UNSIGNED_SHORT_8_8_APPLE = 0x85BA;
	const int GL_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85BB;
}
