extern(C)
extern(Windows)
{
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
	void		function( )
			glFinish;
	void		function( )
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
	void		function( GLsizei stride, GLvoid *ptr )
			glEdgeFlagPointer;
	void		function( GLenum pname, GLvoid **params )
			glGetPointerv;
	void		function( GLint i )
			glArrayElement;
	void		function( GLenum mode, GLint first, GLsizei count )
			glDrawArrays;
	void		function( GLenum mode )
			glShadeModel;
	void		function( GLenum light, GLenum pname, GLfloat param )
			glLightf;
	void		function( GLenum light, GLenum pname, GLint param )
			glLighti;
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
	void		function( GLenum map, GLfloat *values )
			glGetPixelMapfv;
	void		function( GLenum map, GLuint *values )
			glGetPixelMapuiv;
	void		function( GLenum map, GLushort *values )
			glGetPixelMapusv;
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
	void		function( GLsizei n, GLuint *textures )
			glGenTextures;
	void		function( GLsizei n, GLuint *textures)
			glDeleteTextures;
	void		function( GLenum target, GLuint texture )
			glBindTexture;
	GLboolean		function( GLuint texture )
			glIsTexture;
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
	void		function( GLenum mode )
			glBlendEquation;
	void		function( GLenum target )
			glResetHistogram;
	void		function( GLenum target )
			glResetMinmax;
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
	void		function(GLclampf, GLclampf, GLclampf, GLclampf)
			glBlendColor;
	void		function(GLenum)
			glBlendEquation;
	void		function(GLenum, GLuint, GLuint, GLsizei, GLenum, GLvoid *)
			glDrawRangeElements;
	void		function(GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *)
			glColorTable;
	void		function(GLenum, GLenum, GLfloat *)
			glColorTableParameterfv;
	void		function(GLenum, GLenum, GLint *)
			glColorTableParameteriv;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei)
			glCopyColorTable;
	void		function(GLenum, GLenum, GLenum, GLvoid *)
			glGetColorTable;
	void		function(GLenum, GLenum, GLfloat *)
			glGetColorTableParameterfv;
	void		function(GLenum, GLenum, GLint *)
			glGetColorTableParameteriv;
	void		function(GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glColorSubTable;
	void		function(GLenum, GLsizei, GLint, GLint, GLsizei)
			glCopyColorSubTable;
	void		function(GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *)
			glConvolutionFilter1D;
	void		function(GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glConvolutionFilter2D;
	void		function(GLenum, GLenum, GLfloat)
			glConvolutionParameterf;
	void		function(GLenum, GLenum, GLfloat *)
			glConvolutionParameterfv;
	void		function(GLenum, GLenum, GLint)
			glConvolutionParameteri;
	void		function(GLenum, GLenum, GLint *)
			glConvolutionParameteriv;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei)
			glCopyConvolutionFilter1D;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei, GLsizei)
			glCopyConvolutionFilter2D;
	void		function(GLenum, GLenum, GLenum, GLvoid *)
			glGetConvolutionFilter;
	void		function(GLenum, GLenum, GLfloat *)
			glGetConvolutionParameterfv;
	void		function(GLenum, GLenum, GLint *)
			glGetConvolutionParameteriv;
	void		function(GLenum, GLenum, GLenum, GLvoid *, GLvoid *, GLvoid *)
			glGetSeparableFilter;
	void		function(GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *, GLvoid *)
			glSeparableFilter2D;
	void		function(GLenum, GLboolean, GLenum, GLenum, GLvoid *)
			glGetHistogram;
	void		function(GLenum, GLenum, GLfloat *)
			glGetHistogramParameterfv;
	void		function(GLenum, GLenum, GLint *)
			glGetHistogramParameteriv;
	void		function(GLenum, GLboolean, GLenum, GLenum, GLvoid *)
			glGetMinmax;
	void		function(GLenum, GLenum, GLfloat *)
			glGetMinmaxParameterfv;
	void		function(GLenum, GLenum, GLint *)
			glGetMinmaxParameteriv;
	void		function(GLenum, GLsizei, GLenum, GLboolean)
			glHistogram;
	void		function(GLenum, GLenum, GLboolean)
			glMinmax;
	void		function(GLenum)
			glResetHistogram;
	void		function(GLenum)
			glResetMinmax;
	void		function(GLenum, GLint, GLint, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *)
			glTexImage3D;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glTexSubImage3D;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei)
			glCopyTexSubImage3D;
	void		function(GLenum)
			glActiveTexture;
	void		function(GLenum)
			glClientActiveTexture;
	void		function(GLenum, GLdouble)
			glMultiTexCoord1d;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord1dv;
	void		function(GLenum, GLfloat)
			glMultiTexCoord1f;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord1fv;
	void		function(GLenum, GLint)
			glMultiTexCoord1i;
	void		function(GLenum, GLint *)
			glMultiTexCoord1iv;
	void		function(GLenum, GLshort)
			glMultiTexCoord1s;
	void		function(GLenum, GLshort *)
			glMultiTexCoord1sv;
	void		function(GLenum, GLdouble, GLdouble)
			glMultiTexCoord2d;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord2dv;
	void		function(GLenum, GLfloat, GLfloat)
			glMultiTexCoord2f;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord2fv;
	void		function(GLenum, GLint, GLint)
			glMultiTexCoord2i;
	void		function(GLenum, GLint *)
			glMultiTexCoord2iv;
	void		function(GLenum, GLshort, GLshort)
			glMultiTexCoord2s;
	void		function(GLenum, GLshort *)
			glMultiTexCoord2sv;
	void		function(GLenum, GLdouble, GLdouble, GLdouble)
			glMultiTexCoord3d;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord3dv;
	void		function(GLenum, GLfloat, GLfloat, GLfloat)
			glMultiTexCoord3f;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord3fv;
	void		function(GLenum, GLint, GLint, GLint)
			glMultiTexCoord3i;
	void		function(GLenum, GLint *)
			glMultiTexCoord3iv;
	void		function(GLenum, GLshort, GLshort, GLshort)
			glMultiTexCoord3s;
	void		function(GLenum, GLshort *)
			glMultiTexCoord3sv;
	void		function(GLenum, GLdouble, GLdouble, GLdouble, GLdouble)
			glMultiTexCoord4d;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord4dv;
	void		function(GLenum, GLfloat, GLfloat, GLfloat, GLfloat)
			glMultiTexCoord4f;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord4fv;
	void		function(GLenum, GLint, GLint, GLint, GLint)
			glMultiTexCoord4i;
	void		function(GLenum, GLint *)
			glMultiTexCoord4iv;
	void		function(GLenum, GLshort, GLshort, GLshort, GLshort)
			glMultiTexCoord4s;
	void		function(GLenum, GLshort *)
			glMultiTexCoord4sv;
	void		function(GLfloat *)
			glLoadTransposeMatrixf;
	void		function(GLdouble *)
			glLoadTransposeMatrixd;
	void		function(GLfloat *)
			glMultTransposeMatrixf;
	void		function(GLdouble *)
			glMultTransposeMatrixd;
	void		function(GLclampf, GLboolean)
			glSampleCoverage;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage3D;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage2D;
	void		function(GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage1D;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage3D;
	void		function(GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage2D;
	void		function(GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage1D;
	void		function(GLenum, GLint, void *)
			glGetCompressedTexImage;
	void		function(GLenum, GLenum, GLenum, GLenum)
			glBlendFuncSeparate;
	void		function(GLfloat)
			glFogCoordf;
	void		function(GLfloat *)
			glFogCoordfv;
	void		function(GLdouble)
			glFogCoordd;
	void		function(GLdouble *)
			glFogCoorddv;
	void		function(GLenum, GLsizei, GLvoid *)
			glFogCoordPointer;
	void		function(GLenum, GLint *, GLsizei *, GLsizei)
			glMultiDrawArrays;
	void		function(GLenum, GLsizei *, GLenum, GLvoid* *, GLsizei)
			glMultiDrawElements;
	void		function(GLenum, GLfloat)
			glPointParameterf;
	void		function(GLenum, GLfloat *)
			glPointParameterfv;
	void		function(GLenum, GLint)
			glPointParameteri;
	void		function(GLenum, GLint *)
			glPointParameteriv;
	void		function(GLbyte, GLbyte, GLbyte)
			glSecondaryColor3b;
	void		function(GLbyte *)
			glSecondaryColor3bv;
	void		function(GLdouble, GLdouble, GLdouble)
			glSecondaryColor3d;
	void		function(GLdouble *)
			glSecondaryColor3dv;
	void		function(GLfloat, GLfloat, GLfloat)
			glSecondaryColor3f;
	void		function(GLfloat *)
			glSecondaryColor3fv;
	void		function(GLint, GLint, GLint)
			glSecondaryColor3i;
	void		function(GLint *)
			glSecondaryColor3iv;
	void		function(GLshort, GLshort, GLshort)
			glSecondaryColor3s;
	void		function(GLshort *)
			glSecondaryColor3sv;
	void		function(GLubyte, GLubyte, GLubyte)
			glSecondaryColor3ub;
	void		function(GLubyte *)
			glSecondaryColor3ubv;
	void		function(GLuint, GLuint, GLuint)
			glSecondaryColor3ui;
	void		function(GLuint *)
			glSecondaryColor3uiv;
	void		function(GLushort, GLushort, GLushort)
			glSecondaryColor3us;
	void		function(GLushort *)
			glSecondaryColor3usv;
	void		function(GLint, GLenum, GLsizei, GLvoid *)
			glSecondaryColorPointer;
	void		function(GLdouble, GLdouble)
			glWindowPos2d;
	void		function(GLdouble *)
			glWindowPos2dv;
	void		function(GLfloat, GLfloat)
			glWindowPos2f;
	void		function(GLfloat *)
			glWindowPos2fv;
	void		function(GLint, GLint)
			glWindowPos2i;
	void		function(GLint *)
			glWindowPos2iv;
	void		function(GLshort, GLshort)
			glWindowPos2s;
	void		function(GLshort *)
			glWindowPos2sv;
	void		function(GLdouble, GLdouble, GLdouble)
			glWindowPos3d;
	void		function(GLdouble *)
			glWindowPos3dv;
	void		function(GLfloat, GLfloat, GLfloat)
			glWindowPos3f;
	void		function(GLfloat *)
			glWindowPos3fv;
	void		function(GLint, GLint, GLint)
			glWindowPos3i;
	void		function(GLint *)
			glWindowPos3iv;
	void		function(GLshort, GLshort, GLshort)
			glWindowPos3s;
	void		function(GLshort *)
			glWindowPos3sv;
	void		function(GLenum)
			glActiveTextureARB;
	void		function(GLenum)
			glClientActiveTextureARB;
	void		function(GLenum, GLdouble)
			glMultiTexCoord1dARB;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord1dvARB;
	void		function(GLenum, GLfloat)
			glMultiTexCoord1fARB;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord1fvARB;
	void		function(GLenum, GLint)
			glMultiTexCoord1iARB;
	void		function(GLenum, GLint *)
			glMultiTexCoord1ivARB;
	void		function(GLenum, GLshort)
			glMultiTexCoord1sARB;
	void		function(GLenum, GLshort *)
			glMultiTexCoord1svARB;
	void		function(GLenum, GLdouble, GLdouble)
			glMultiTexCoord2dARB;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord2dvARB;
	void		function(GLenum, GLfloat, GLfloat)
			glMultiTexCoord2fARB;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord2fvARB;
	void		function(GLenum, GLint, GLint)
			glMultiTexCoord2iARB;
	void		function(GLenum, GLint *)
			glMultiTexCoord2ivARB;
	void		function(GLenum, GLshort, GLshort)
			glMultiTexCoord2sARB;
	void		function(GLenum, GLshort *)
			glMultiTexCoord2svARB;
	void		function(GLenum, GLdouble, GLdouble, GLdouble)
			glMultiTexCoord3dARB;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord3dvARB;
	void		function(GLenum, GLfloat, GLfloat, GLfloat)
			glMultiTexCoord3fARB;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord3fvARB;
	void		function(GLenum, GLint, GLint, GLint)
			glMultiTexCoord3iARB;
	void		function(GLenum, GLint *)
			glMultiTexCoord3ivARB;
	void		function(GLenum, GLshort, GLshort, GLshort)
			glMultiTexCoord3sARB;
	void		function(GLenum, GLshort *)
			glMultiTexCoord3svARB;
	void		function(GLenum, GLdouble, GLdouble, GLdouble, GLdouble)
			glMultiTexCoord4dARB;
	void		function(GLenum, GLdouble *)
			glMultiTexCoord4dvARB;
	void		function(GLenum, GLfloat, GLfloat, GLfloat, GLfloat)
			glMultiTexCoord4fARB;
	void		function(GLenum, GLfloat *)
			glMultiTexCoord4fvARB;
	void		function(GLenum, GLint, GLint, GLint, GLint)
			glMultiTexCoord4iARB;
	void		function(GLenum, GLint *)
			glMultiTexCoord4ivARB;
	void		function(GLenum, GLshort, GLshort, GLshort, GLshort)
			glMultiTexCoord4sARB;
	void		function(GLenum, GLshort *)
			glMultiTexCoord4svARB;
	void		function(GLfloat *)
			glLoadTransposeMatrixfARB;
	void		function(GLdouble *)
			glLoadTransposeMatrixdARB;
	void		function(GLfloat *)
			glMultTransposeMatrixfARB;
	void		function(GLdouble *)
			glMultTransposeMatrixdARB;
	void		function(GLclampf, GLboolean)
			glSampleCoverageARB;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage3DARB;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage2DARB;
	void		function(GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, GLvoid *)
			glCompressedTexImage1DARB;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage3DARB;
	void		function(GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage2DARB;
	void		function(GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, GLvoid *)
			glCompressedTexSubImage1DARB;
	void		function(GLenum, GLint, void *)
			glGetCompressedTexImageARB;
	void		function(GLenum, GLfloat)
			glPointParameterfARB;
	void		function(GLenum, GLfloat *)
			glPointParameterfvARB;
	void		function(GLint, GLbyte *)
			glWeightbvARB;
	void		function(GLint, GLshort *)
			glWeightsvARB;
	void		function(GLint, GLint *)
			glWeightivARB;
	void		function(GLint, GLfloat *)
			glWeightfvARB;
	void		function(GLint, GLdouble *)
			glWeightdvARB;
	void		function(GLint, GLubyte *)
			glWeightubvARB;
	void		function(GLint, GLushort *)
			glWeightusvARB;
	void		function(GLint, GLuint *)
			glWeightuivARB;
	void		function(GLint, GLenum, GLsizei, GLvoid *)
			glWeightPointerARB;
	void		function(GLint)
			glVertexBlendARB;
	void		function(GLint)
			glCurrentPaletteMatrixARB;
	void		function(GLint, GLubyte *)
			glMatrixIndexubvARB;
	void		function(GLint, GLushort *)
			glMatrixIndexusvARB;
	void		function(GLint, GLuint *)
			glMatrixIndexuivARB;
	void		function(GLint, GLenum, GLsizei, GLvoid *)
			glMatrixIndexPointerARB;
	void		function(GLdouble, GLdouble)
			glWindowPos2dARB;
	void		function(GLdouble *)
			glWindowPos2dvARB;
	void		function(GLfloat, GLfloat)
			glWindowPos2fARB;
	void		function(GLfloat *)
			glWindowPos2fvARB;
	void		function(GLint, GLint)
			glWindowPos2iARB;
	void		function(GLint *)
			glWindowPos2ivARB;
	void		function(GLshort, GLshort)
			glWindowPos2sARB;
	void		function(GLshort *)
			glWindowPos2svARB;
	void		function(GLdouble, GLdouble, GLdouble)
			glWindowPos3dARB;
	void		function(GLdouble *)
			glWindowPos3dvARB;
	void		function(GLfloat, GLfloat, GLfloat)
			glWindowPos3fARB;
	void		function(GLfloat *)
			glWindowPos3fvARB;
	void		function(GLint, GLint, GLint)
			glWindowPos3iARB;
	void		function(GLint *)
			glWindowPos3ivARB;
	void		function(GLshort, GLshort, GLshort)
			glWindowPos3sARB;
	void		function(GLshort *)
			glWindowPos3svARB;
	void		function(GLuint, GLdouble)
			glVertexAttrib1dARB;
	void		function(GLuint, GLdouble *)
			glVertexAttrib1dvARB;
	void		function(GLuint, GLfloat)
			glVertexAttrib1fARB;
	void		function(GLuint, GLfloat *)
			glVertexAttrib1fvARB;
	void		function(GLuint, GLshort)
			glVertexAttrib1sARB;
	void		function(GLuint, GLshort *)
			glVertexAttrib1svARB;
	void		function(GLuint, GLdouble, GLdouble)
			glVertexAttrib2dARB;
	void		function(GLuint, GLdouble *)
			glVertexAttrib2dvARB;
	void		function(GLuint, GLfloat, GLfloat)
			glVertexAttrib2fARB;
	void		function(GLuint, GLfloat *)
			glVertexAttrib2fvARB;
	void		function(GLuint, GLshort, GLshort)
			glVertexAttrib2sARB;
	void		function(GLuint, GLshort *)
			glVertexAttrib2svARB;
	void		function(GLuint, GLdouble, GLdouble, GLdouble)
			glVertexAttrib3dARB;
	void		function(GLuint, GLdouble *)
			glVertexAttrib3dvARB;
	void		function(GLuint, GLfloat, GLfloat, GLfloat)
			glVertexAttrib3fARB;
	void		function(GLuint, GLfloat *)
			glVertexAttrib3fvARB;
	void		function(GLuint, GLshort, GLshort, GLshort)
			glVertexAttrib3sARB;
	void		function(GLuint, GLshort *)
			glVertexAttrib3svARB;
	void		function(GLuint, GLbyte *)
			glVertexAttrib4NbvARB;
	void		function(GLuint, GLint *)
			glVertexAttrib4NivARB;
	void		function(GLuint, GLshort *)
			glVertexAttrib4NsvARB;
	void		function(GLuint, GLubyte, GLubyte, GLubyte, GLubyte)
			glVertexAttrib4NubARB;
	void		function(GLuint, GLubyte *)
			glVertexAttrib4NubvARB;
	void		function(GLuint, GLuint *)
			glVertexAttrib4NuivARB;
	void		function(GLuint, GLushort *)
			glVertexAttrib4NusvARB;
	void		function(GLuint, GLbyte *)
			glVertexAttrib4bvARB;
	void		function(GLuint, GLdouble, GLdouble, GLdouble, GLdouble)
			glVertexAttrib4dARB;
	void		function(GLuint, GLdouble *)
			glVertexAttrib4dvARB;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
			glVertexAttrib4fARB;
	void		function(GLuint, GLfloat *)
			glVertexAttrib4fvARB;
	void		function(GLuint, GLint *)
			glVertexAttrib4ivARB;
	void		function(GLuint, GLshort, GLshort, GLshort, GLshort)
			glVertexAttrib4sARB;
	void		function(GLuint, GLshort *)
			glVertexAttrib4svARB;
	void		function(GLuint, GLubyte *)
			glVertexAttrib4ubvARB;
	void		function(GLuint, GLuint *)
			glVertexAttrib4uivARB;
	void		function(GLuint, GLushort *)
			glVertexAttrib4usvARB;
	void		function(GLuint, GLint, GLenum, GLboolean, GLsizei, GLvoid *)
			glVertexAttribPointerARB;
	void		function(GLuint)
			glEnableVertexAttribArrayARB;
	void		function(GLuint)
			glDisableVertexAttribArrayARB;
	void		function(GLenum, GLenum, GLsizei, GLvoid *)
			glProgramStringARB;
	void		function(GLenum, GLuint)
			glBindProgramARB;
	void		function(GLsizei, GLuint *)
			glDeleteProgramsARB;
	void		function(GLsizei, GLuint *)
			glGenProgramsARB;
	void		function(GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble)
			glProgramEnvParameter4dARB;
	void		function(GLenum, GLuint, GLdouble *)
			glProgramEnvParameter4dvARB;
	void		function(GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
			glProgramEnvParameter4fARB;
	void		function(GLenum, GLuint, GLfloat *)
			glProgramEnvParameter4fvARB;
	void		function(GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble)
			glProgramLocalParameter4dARB;
	void		function(GLenum, GLuint, GLdouble *)
			glProgramLocalParameter4dvARB;
	void		function(GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
			glProgramLocalParameter4fARB;
	void		function(GLenum, GLuint, GLfloat *)
			glProgramLocalParameter4fvARB;
	void		function(GLenum, GLuint, GLdouble *)
			glGetProgramEnvParameterdvARB;
	void		function(GLenum, GLuint, GLfloat *)
			glGetProgramEnvParameterfvARB;
	void		function(GLenum, GLuint, GLdouble *)
			glGetProgramLocalParameterdvARB;
	void		function(GLenum, GLuint, GLfloat *)
			glGetProgramLocalParameterfvARB;
	void		function(GLenum, GLenum, GLint *)
			glGetProgramivARB;
	void		function(GLenum, GLenum, GLvoid *)
			glGetProgramStringARB;
	void		function(GLuint, GLenum, GLdouble *)
			glGetVertexAttribdvARB;
	void		function(GLuint, GLenum, GLfloat *)
			glGetVertexAttribfvARB;
	void		function(GLuint, GLenum, GLint *)
			glGetVertexAttribivARB;
	void		function(GLuint, GLenum, GLvoid* *)
			glGetVertexAttribPointervARB;
	GLboolean		function(GLuint)
			glIsProgramARB;
	void		function(GLclampf, GLclampf, GLclampf, GLclampf)
			glBlendColorEXT;
	void		function(GLfloat, GLfloat)
			glPolygonOffsetEXT;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *)
			glTexImage3DEXT;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glTexSubImage3DEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glGetTexFilterFuncSGIS;
	void		function(GLenum, GLenum, GLsizei, GLfloat *)
			glTexFilterFuncSGIS;
	void		function(GLenum, GLint, GLint, GLsizei, GLenum, GLenum, GLvoid *)
			glTexSubImage1DEXT;
	void		function(GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glTexSubImage2DEXT;
	void		function(GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLint)
			glCopyTexImage1DEXT;
	void		function(GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLsizei, GLint)
			glCopyTexImage2DEXT;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLsizei)
			glCopyTexSubImage1DEXT;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei)
			glCopyTexSubImage2DEXT;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei)
			glCopyTexSubImage3DEXT;
	void		function(GLenum, GLboolean, GLenum, GLenum, GLvoid *)
			glGetHistogramEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glGetHistogramParameterfvEXT;
	void		function(GLenum, GLenum, GLint *)
			glGetHistogramParameterivEXT;
	void		function(GLenum, GLboolean, GLenum, GLenum, GLvoid *)
			glGetMinmaxEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glGetMinmaxParameterfvEXT;
	void		function(GLenum, GLenum, GLint *)
			glGetMinmaxParameterivEXT;
	void		function(GLenum, GLsizei, GLenum, GLboolean)
			glHistogramEXT;
	void		function(GLenum, GLenum, GLboolean)
			glMinmaxEXT;
	void		function(GLenum)
			glResetHistogramEXT;
	void		function(GLenum)
			glResetMinmaxEXT;
	void		function(GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *)
			glConvolutionFilter1DEXT;
	void		function(GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glConvolutionFilter2DEXT;
	void		function(GLenum, GLenum, GLfloat)
			glConvolutionParameterfEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glConvolutionParameterfvEXT;
	void		function(GLenum, GLenum, GLint)
			glConvolutionParameteriEXT;
	void		function(GLenum, GLenum, GLint *)
			glConvolutionParameterivEXT;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei)
			glCopyConvolutionFilter1DEXT;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei, GLsizei)
			glCopyConvolutionFilter2DEXT;
	void		function(GLenum, GLenum, GLenum, GLvoid *)
			glGetConvolutionFilterEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glGetConvolutionParameterfvEXT;
	void		function(GLenum, GLenum, GLint *)
			glGetConvolutionParameterivEXT;
	void		function(GLenum, GLenum, GLenum, GLvoid *, GLvoid *, GLvoid *)
			glGetSeparableFilterEXT;
	void		function(GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *, GLvoid *)
			glSeparableFilter2DEXT;
	void		function(GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *)
			glColorTableSGI;
	void		function(GLenum, GLenum, GLfloat *)
			glColorTableParameterfvSGI;
	void		function(GLenum, GLenum, GLint *)
			glColorTableParameterivSGI;
	void		function(GLenum, GLenum, GLint, GLint, GLsizei)
			glCopyColorTableSGI;
	void		function(GLenum, GLenum, GLenum, GLvoid *)
			glGetColorTableSGI;
	void		function(GLenum, GLenum, GLfloat *)
			glGetColorTableParameterfvSGI;
	void		function(GLenum, GLenum, GLint *)
			glGetColorTableParameterivSGI;
	void		function(GLenum)
			glPixelTexGenSGIX;
	void		function(GLenum, GLint)
			glPixelTexGenParameteriSGIS;
	void		function(GLenum, GLint *)
			glPixelTexGenParameterivSGIS;
	void		function(GLenum, GLfloat)
			glPixelTexGenParameterfSGIS;
	void		function(GLenum, GLfloat *)
			glPixelTexGenParameterfvSGIS;
	void		function(GLenum, GLint *)
			glGetPixelTexGenParameterivSGIS;
	void		function(GLenum, GLfloat *)
			glGetPixelTexGenParameterfvSGIS;
	void		function(GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *)
			glTexImage4DSGIS;
	void		function(GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glTexSubImage4DSGIS;
	GLboolean		function(GLsizei, GLuint *, GLboolean *)
			glAreTexturesResidentEXT;
	void		function(GLenum, GLuint)
			glBindTextureEXT;
	void		function(GLsizei, GLuint *)
			glDeleteTexturesEXT;
	void		function(GLsizei, GLuint *)
			glGenTexturesEXT;
	GLboolean		function(GLuint)
			glIsTextureEXT;
	void		function(GLsizei, GLuint *, GLclampf *)
			glPrioritizeTexturesEXT;
	void		function(GLenum, GLsizei, GLfloat *)
			glDetailTexFuncSGIS;
	void		function(GLenum, GLfloat *)
			glGetDetailTexFuncSGIS;
	void		function(GLenum, GLsizei, GLfloat *)
			glSharpenTexFuncSGIS;
	void		function(GLenum, GLfloat *)
			glGetSharpenTexFuncSGIS;
	void		function(GLclampf, GLboolean)
			glSampleMaskSGIS;
	void		function(GLenum)
			glSamplePatternSGIS;
	void		function(GLint)
			glArrayElementEXT;
	void		function(GLint, GLenum, GLsizei, GLsizei, GLvoid *)
			glColorPointerEXT;
	void		function(GLenum, GLint, GLsizei)
			glDrawArraysEXT;
	void		function(GLsizei, GLsizei, GLboolean *)
			glEdgeFlagPointerEXT;
	void		function(GLenum, GLvoid* *)
			glGetPointervEXT;
	void		function(GLenum, GLsizei, GLsizei, GLvoid *)
			glIndexPointerEXT;
	void		function(GLenum, GLsizei, GLsizei, GLvoid *)
			glNormalPointerEXT;
	void		function(GLint, GLenum, GLsizei, GLsizei, GLvoid *)
			glTexCoordPointerEXT;
	void		function(GLint, GLenum, GLsizei, GLsizei, GLvoid *)
			glVertexPointerEXT;
	void		function(GLenum)
			glBlendEquationEXT;
	void		function(GLenum, GLfloat)
			glSpriteParameterfSGIX;
	void		function(GLenum, GLfloat *)
			glSpriteParameterfvSGIX;
	void		function(GLenum, GLint)
			glSpriteParameteriSGIX;
	void		function(GLenum, GLint *)
			glSpriteParameterivSGIX;
	void		function(GLenum, GLfloat)
			glPointParameterfEXT;
	void		function(GLenum, GLfloat *)
			glPointParameterfvEXT;
	void		function(GLenum, GLfloat)
			glPointParameterfSGIS;
	void		function(GLenum, GLfloat *)
			glPointParameterfvSGIS;
	GLint		function()
			glGetInstrumentsSGIX;
	void		function(GLsizei, GLint *)
			glInstrumentsBufferSGIX;
	GLint		function(GLint *)
			glPollInstrumentsSGIX;
	void		function(GLint)
			glReadInstrumentsSGIX;
	void		function()
			glStartInstrumentsSGIX;
	void		function(GLint)
			glStopInstrumentsSGIX;
	void		function(GLint)
			glFrameZoomSGIX;
	void		function()
			glTagSampleBufferSGIX;
	void		function(GLenum, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, GLdouble *)
			glDeformationMap3dSGIX;
	void		function(GLenum, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, GLfloat *)
			glDeformationMap3fSGIX;
	void		function(GLbitfield)
			glDeformSGIX;
	void		function(GLbitfield)
			glLoadIdentityDeformationMapSGIX;
	void		function(GLdouble *)
			glReferencePlaneSGIX;
	void		function()
			glFlushRasterSGIX;
	void		function(GLsizei, GLfloat *)
			glFogFuncSGIS;
	void		function(GLfloat *)
			glGetFogFuncSGIS;
	void		function(GLenum, GLenum, GLint)
			glImageTransformParameteriHP;
	void		function(GLenum, GLenum, GLfloat)
			glImageTransformParameterfHP;
	void		function(GLenum, GLenum, GLint *)
			glImageTransformParameterivHP;
	void		function(GLenum, GLenum, GLfloat *)
			glImageTransformParameterfvHP;
	void		function(GLenum, GLenum, GLint *)
			glGetImageTransformParameterivHP;
	void		function(GLenum, GLenum, GLfloat *)
			glGetImageTransformParameterfvHP;
	void		function(GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *)
			glColorSubTableEXT;
	void		function(GLenum, GLsizei, GLint, GLint, GLsizei)
			glCopyColorSubTableEXT;
	void		function(GLenum, GLint)
			glHintPGI;
	void		function(GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *)
			glColorTableEXT;
	void		function(GLenum, GLenum, GLenum, GLvoid *)
			glGetColorTableEXT;
	void		function(GLenum, GLenum, GLint *)
			glGetColorTableParameterivEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glGetColorTableParameterfvEXT;
	void		function(GLuint, GLenum, GLfloat *)
			glGetListParameterfvSGIX;
	void		function(GLuint, GLenum, GLint *)
			glGetListParameterivSGIX;
	void		function(GLuint, GLenum, GLfloat)
			glListParameterfSGIX;
	void		function(GLuint, GLenum, GLfloat *)
			glListParameterfvSGIX;
	void		function(GLuint, GLenum, GLint)
			glListParameteriSGIX;
	void		function(GLuint, GLenum, GLint *)
			glListParameterivSGIX;
	void		function(GLenum, GLenum)
			glIndexMaterialEXT;
	void		function(GLenum, GLclampf)
			glIndexFuncEXT;
	void		function(GLint, GLsizei)
			glLockArraysEXT;
	void		function()
			glUnlockArraysEXT;
	void		function(GLenum, GLdouble *)
			glCullParameterdvEXT;
	void		function(GLenum, GLfloat *)
			glCullParameterfvEXT;
	void		function(GLenum, GLenum)
			glFragmentColorMaterialSGIX;
	void		function(GLenum, GLenum, GLfloat)
			glFragmentLightfSGIX;
	void		function(GLenum, GLenum, GLfloat *)
			glFragmentLightfvSGIX;
	void		function(GLenum, GLenum, GLint)
			glFragmentLightiSGIX;
	void		function(GLenum, GLenum, GLint *)
			glFragmentLightivSGIX;
	void		function(GLenum, GLfloat)
			glFragmentLightModelfSGIX;
	void		function(GLenum, GLfloat *)
			glFragmentLightModelfvSGIX;
	void		function(GLenum, GLint)
			glFragmentLightModeliSGIX;
	void		function(GLenum, GLint *)
			glFragmentLightModelivSGIX;
	void		function(GLenum, GLenum, GLfloat)
			glFragmentMaterialfSGIX;
	void		function(GLenum, GLenum, GLfloat *)
			glFragmentMaterialfvSGIX;
	void		function(GLenum, GLenum, GLint)
			glFragmentMaterialiSGIX;
	void		function(GLenum, GLenum, GLint *)
			glFragmentMaterialivSGIX;
	void		function(GLenum, GLenum, GLfloat *)
			glGetFragmentLightfvSGIX;
	void		function(GLenum, GLenum, GLint *)
			glGetFragmentLightivSGIX;
	void		function(GLenum, GLenum, GLfloat *)
			glGetFragmentMaterialfvSGIX;
	void		function(GLenum, GLenum, GLint *)
			glGetFragmentMaterialivSGIX;
	void		function(GLenum, GLint)
			glLightEnviSGIX;
	void		function(GLenum, GLuint, GLuint, GLsizei, GLenum, GLvoid *)
			glDrawRangeElementsEXT;
	void		function(GLenum)
			glApplyTextureEXT;
	void		function(GLenum)
			glTextureLightEXT;
	void		function(GLenum, GLenum)
			glTextureMaterialEXT;
	void		function(GLuint)
			glAsyncMarkerSGIX;
	GLint		function(GLuint *)
			glFinishAsyncSGIX;
	GLint		function(GLuint *)
			glPollAsyncSGIX;
	GLuint		function(GLsizei)
			glGenAsyncMarkersSGIX;
	void		function(GLuint, GLsizei)
			glDeleteAsyncMarkersSGIX;
	GLboolean		function(GLuint)
			glIsAsyncMarkerSGIX;
	void		function(GLint, GLenum, GLvoid* *)
			glVertexPointervINTEL;
	void		function(GLenum, GLvoid* *)
			glNormalPointervINTEL;
	void		function(GLint, GLenum, GLvoid* *)
			glColorPointervINTEL;
	void		function(GLint, GLenum, GLvoid* *)
			glTexCoordPointervINTEL;
	void		function(GLenum, GLenum, GLint)
			glPixelTransformParameteriEXT;
	void		function(GLenum, GLenum, GLfloat)
			glPixelTransformParameterfEXT;
	void		function(GLenum, GLenum, GLint *)
			glPixelTransformParameterivEXT;
	void		function(GLenum, GLenum, GLfloat *)
			glPixelTransformParameterfvEXT;
	void		function(GLbyte, GLbyte, GLbyte)
			glSecondaryColor3bEXT;
	void		function(GLbyte *)
			glSecondaryColor3bvEXT;
	void		function(GLdouble, GLdouble, GLdouble)
			glSecondaryColor3dEXT;
	void		function(GLdouble *)
			glSecondaryColor3dvEXT;
	void		function(GLfloat, GLfloat, GLfloat)
			glSecondaryColor3fEXT;
	void		function(GLfloat *)
			glSecondaryColor3fvEXT;
	void		function(GLint, GLint, GLint)
			glSecondaryColor3iEXT;
	void		function(GLint *)
			glSecondaryColor3ivEXT;
	void		function(GLshort, GLshort, GLshort)
			glSecondaryColor3sEXT;
	void		function(GLshort *)
			glSecondaryColor3svEXT;
	void		function(GLubyte, GLubyte, GLubyte)
			glSecondaryColor3ubEXT;
	void		function(GLubyte *)
			glSecondaryColor3ubvEXT;
	void		function(GLuint, GLuint, GLuint)
			glSecondaryColor3uiEXT;
	void		function(GLuint *)
			glSecondaryColor3uivEXT;
	void		function(GLushort, GLushort, GLushort)
			glSecondaryColor3usEXT;
	void		function(GLushort *)
			glSecondaryColor3usvEXT;
	void		function(GLint, GLenum, GLsizei, GLvoid *)
			glSecondaryColorPointerEXT;
	void		function(GLenum)
			glTextureNormalEXT;
	void		function(GLenum, GLint *, GLsizei *, GLsizei)
			glMultiDrawArraysEXT;
	void		function(GLenum, GLsizei *, GLenum, GLvoid* *, GLsizei)
			glMultiDrawElementsEXT;
	void		function(GLfloat)
			glFogCoordfEXT;
	void		function(GLfloat *)
			glFogCoordfvEXT;
	void		function(GLdouble)
			glFogCoorddEXT;
	void		function(GLdouble *)
			glFogCoorddvEXT;
	void		function(GLenum, GLsizei, GLvoid *)
			glFogCoordPointerEXT;
	void		function(GLbyte, GLbyte, GLbyte)
			glTangent3bEXT;
	void		function(GLbyte *)
			glTangent3bvEXT;
	void		function(GLdouble, GLdouble, GLdouble)
			glTangent3dEXT;
	void		function(GLdouble *)
			glTangent3dvEXT;
	void		function(GLfloat, GLfloat, GLfloat)
			glTangent3fEXT;
	void		function(GLfloat *)
			glTangent3fvEXT;
	void		function(GLint, GLint, GLint)
			glTangent3iEXT;
	void		function(GLint *)
			glTangent3ivEXT;
	void		function(GLshort, GLshort, GLshort)
			glTangent3sEXT;
	void		function(GLshort *)
			glTangent3svEXT;
	void		function(GLbyte, GLbyte, GLbyte)
			glBinormal3bEXT;
	void		function(GLbyte *)
			glBinormal3bvEXT;
	void		function(GLdouble, GLdouble, GLdouble)
			glBinormal3dEXT;
	void		function(GLdouble *)
			glBinormal3dvEXT;
	void		function(GLfloat, GLfloat, GLfloat)
			glBinormal3fEXT;
	void		function(GLfloat *)
			glBinormal3fvEXT;
	void		function(GLint, GLint, GLint)
			glBinormal3iEXT;
	void		function(GLint *)
			glBinormal3ivEXT;
	void		function(GLshort, GLshort, GLshort)
			glBinormal3sEXT;
	void		function(GLshort *)
			glBinormal3svEXT;
	void		function(GLenum, GLsizei, GLvoid *)
			glTangentPointerEXT;
	void		function(GLenum, GLsizei, GLvoid *)
			glBinormalPointerEXT;
	void		function()
			glFinishTextureSUNX;
	void		function(GLbyte)
			glGlobalAlphaFactorbSUN;
	void		function(GLshort)
			glGlobalAlphaFactorsSUN;
	void		function(GLint)
			glGlobalAlphaFactoriSUN;
	void		function(GLfloat)
			glGlobalAlphaFactorfSUN;
	void		function(GLdouble)
			glGlobalAlphaFactordSUN;
	void		function(GLubyte)
			glGlobalAlphaFactorubSUN;
	void		function(GLushort)
			glGlobalAlphaFactorusSUN;
	void		function(GLuint)
			glGlobalAlphaFactoruiSUN;
	void		function(GLuint)
			glReplacementCodeuiSUN;
	void		function(GLushort)
			glReplacementCodeusSUN;
	void		function(GLubyte)
			glReplacementCodeubSUN;
	void		function(GLuint *)
			glReplacementCodeuivSUN;
	void		function(GLushort *)
			glReplacementCodeusvSUN;
	void		function(GLubyte *)
			glReplacementCodeubvSUN;
	void		function(GLenum, GLsizei, GLvoid* *)
			glReplacementCodePointerSUN;
	void		function(GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat)
			glColor4ubVertex2fSUN;
	void		function(GLubyte *, GLfloat *)
			glColor4ubVertex2fvSUN;
	void		function(GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat)
			glColor4ubVertex3fSUN;
	void		function(GLubyte *, GLfloat *)
			glColor4ubVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glColor3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *)
			glColor3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glNormal3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *)
			glNormal3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glColor4fNormal3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *, GLfloat *)
			glColor4fNormal3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord2fVertex3fSUN;
	void		function(GLfloat *, GLfloat *)
			glTexCoord2fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord4fVertex4fSUN;
	void		function(GLfloat *, GLfloat *)
			glTexCoord4fVertex4fvSUN;
	void		function(GLfloat, GLfloat, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat)
			glTexCoord2fColor4ubVertex3fSUN;
	void		function(GLfloat *, GLubyte *, GLfloat *)
			glTexCoord2fColor4ubVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord2fColor3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *, GLfloat *)
			glTexCoord2fColor3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord2fNormal3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *, GLfloat *)
			glTexCoord2fNormal3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord2fColor4fNormal3fVertex3fSUN;
	void		function(GLfloat *, GLfloat *, GLfloat *, GLfloat *)
			glTexCoord2fColor4fNormal3fVertex3fvSUN;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glTexCoord4fColor4fNormal3fVertex4fSUN;
	void		function(GLfloat *, GLfloat *, GLfloat *, GLfloat *)
			glTexCoord4fColor4fNormal3fVertex4fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiVertex3fSUN;
	void		function(GLuint *, GLfloat *)
			glReplacementCodeuiVertex3fvSUN;
	void		function(GLuint, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiColor4ubVertex3fSUN;
	void		function(GLuint *, GLubyte *, GLfloat *)
			glReplacementCodeuiColor4ubVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiColor3fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *)
			glReplacementCodeuiColor3fVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiNormal3fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *)
			glReplacementCodeuiNormal3fVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiColor4fNormal3fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *, GLfloat *)
			glReplacementCodeuiColor4fNormal3fVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiTexCoord2fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *)
			glReplacementCodeuiTexCoord2fVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *, GLfloat *)
			glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat)
			glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN;
	void		function(GLuint *, GLfloat *, GLfloat *, GLfloat *, GLfloat *)
			glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN;
	void		function(GLenum, GLenum, GLenum, GLenum)
			glBlendFuncSeparateEXT;
	void		function(GLenum, GLenum, GLenum, GLenum)
			glBlendFuncSeparateINGR;
	void		function(GLfloat)
			glVertexWeightfEXT;
	void		function(GLfloat *)
			glVertexWeightfvEXT;
	void		function(GLsizei, GLenum, GLsizei, GLvoid *)
			glVertexWeightPointerEXT;
	void		function()
			glFlushVertexArrayRangeNV;
	void		function(GLsizei, GLvoid *)
			glVertexArrayRangeNV;
	void		function(GLenum, GLfloat *)
			glCombinerParameterfvNV;
	void		function(GLenum, GLfloat)
			glCombinerParameterfNV;
	void		function(GLenum, GLint *)
			glCombinerParameterivNV;
	void		function(GLenum, GLint)
			glCombinerParameteriNV;
	void		function(GLenum, GLenum, GLenum, GLenum, GLenum, GLenum)
			glCombinerInputNV;
	void		function(GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLboolean, GLboolean, GLboolean)
			glCombinerOutputNV;
	void		function(GLenum, GLenum, GLenum, GLenum)
			glFinalCombinerInputNV;
	void		function(GLenum, GLenum, GLenum, GLenum, GLfloat *)
			glGetCombinerInputParameterfvNV;
	void		function(GLenum, GLenum, GLenum, GLenum, GLint *)
			glGetCombinerInputParameterivNV;
	void		function(GLenum, GLenum, GLenum, GLfloat *)
			glGetCombinerOutputParameterfvNV;
	void		function(GLenum, GLenum, GLenum, GLint *)
			glGetCombinerOutputParameterivNV;
	void		function(GLenum, GLenum, GLfloat *)
			glGetFinalCombinerInputParameterfvNV;
	void		function(GLenum, GLenum, GLint *)
			glGetFinalCombinerInputParameterivNV;
	void		function()
			glResizeBuffersMESA;
	void		function(GLdouble, GLdouble)
			glWindowPos2dMESA;
	void		function(GLdouble *)
			glWindowPos2dvMESA;
	void		function(GLfloat, GLfloat)
			glWindowPos2fMESA;
	void		function(GLfloat *)
			glWindowPos2fvMESA;
	void		function(GLint, GLint)
			glWindowPos2iMESA;
	void		function(GLint *)
			glWindowPos2ivMESA;
	void		function(GLshort, GLshort)
			glWindowPos2sMESA;
	void		function(GLshort *)
			glWindowPos2svMESA;
	void		function(GLdouble, GLdouble, GLdouble)
			glWindowPos3dMESA;
	void		function(GLdouble *)
			glWindowPos3dvMESA;
	void		function(GLfloat, GLfloat, GLfloat)
			glWindowPos3fMESA;
	void		function(GLfloat *)
			glWindowPos3fvMESA;
	void		function(GLint, GLint, GLint)
			glWindowPos3iMESA;
	void		function(GLint *)
			glWindowPos3ivMESA;
	void		function(GLshort, GLshort, GLshort)
			glWindowPos3sMESA;
	void		function(GLshort *)
			glWindowPos3svMESA;
	void		function(GLdouble, GLdouble, GLdouble, GLdouble)
			glWindowPos4dMESA;
	void		function(GLdouble *)
			glWindowPos4dvMESA;
	void		function(GLfloat, GLfloat, GLfloat, GLfloat)
			glWindowPos4fMESA;
	void		function(GLfloat *)
			glWindowPos4fvMESA;
	void		function(GLint, GLint, GLint, GLint)
			glWindowPos4iMESA;
	void		function(GLint *)
			glWindowPos4ivMESA;
	void		function(GLshort, GLshort, GLshort, GLshort)
			glWindowPos4sMESA;
	void		function(GLshort *)
			glWindowPos4svMESA;
	void		function(GLenum, GLint *, GLsizei *, GLsizei, GLint)
			glMultiModeDrawArraysIBM;
	void		function(GLenum *, GLsizei *, GLenum, GLvoid* *, GLsizei, GLint)
			glMultiModeDrawElementsIBM;
	void		function(GLint, GLenum, GLint, GLvoid* *, GLint)
			glColorPointerListIBM;
	void		function(GLint, GLenum, GLint, GLvoid* *, GLint)
			glSecondaryColorPointerListIBM;
	void		function(GLint, GLboolean* *, GLint)
			glEdgeFlagPointerListIBM;
	void		function(GLenum, GLint, GLvoid* *, GLint)
			glFogCoordPointerListIBM;
	void		function(GLenum, GLint, GLvoid* *, GLint)
			glIndexPointerListIBM;
	void		function(GLenum, GLint, GLvoid* *, GLint)
			glNormalPointerListIBM;
	void		function(GLint, GLenum, GLint, GLvoid* *, GLint)
			glTexCoordPointerListIBM;
	void		function(GLint, GLenum, GLint, GLvoid* *, GLint)
			glVertexPointerListIBM;
	void		function(GLuint)
			glTbufferMask3DFX;
	void		function(GLclampf, GLboolean)
			glSampleMaskEXT;
	void		function(GLenum)
			glSamplePatternEXT;
	void		function(GLboolean, GLboolean, GLboolean, GLboolean)
			glTextureColorMaskSGIS;
	void		function(GLenum, GLvoid *)
			glIglooInterfaceSGIX;
	void		function(GLsizei, GLuint *)
			glDeleteFencesNV;
	void		function(GLsizei, GLuint *)
			glGenFencesNV;
	GLboolean		function(GLuint)
			glIsFenceNV;
	GLboolean		function(GLuint)
			glTestFenceNV;
	void		function(GLuint, GLenum, GLint *)
			glGetFenceivNV;
	void		function(GLuint)
			glFinishFenceNV;
	void		function(GLuint, GLenum)
			glSetFenceNV;
	void		function(GLenum, GLuint, GLenum, GLsizei, GLsizei, GLint, GLint, GLboolean, GLvoid *)
			glMapControlPointsNV;
	void		function(GLenum, GLenum, GLint *)
			glMapParameterivNV;
	void		function(GLenum, GLenum, GLfloat *)
			glMapParameterfvNV;
	void		function(GLenum, GLuint, GLenum, GLsizei, GLsizei, GLboolean, GLvoid *)
			glGetMapControlPointsNV;
	void		function(GLenum, GLenum, GLint *)
			glGetMapParameterivNV;
	void		function(GLenum, GLenum, GLfloat *)
			glGetMapParameterfvNV;
	void		function(GLenum, GLuint, GLenum, GLint *)
			glGetMapAttribParameterivNV;
	void		function(GLenum, GLuint, GLenum, GLfloat *)
			glGetMapAttribParameterfvNV;
	void		function(GLenum, GLenum)
			glEvalMapsNV;
	void		function(GLenum, GLenum, GLfloat *)
			glCombinerStageParameterfvNV;
	void		function(GLenum, GLenum, GLfloat *)
			glGetCombinerStageParameterfvNV;
	GLboolean		function(GLsizei, GLuint *, GLboolean *)
			glAreProgramsResidentNV;
	void		function(GLenum, GLuint)
			glBindProgramNV;
	void		function(GLsizei, GLuint *)
			glDeleteProgramsNV;
	void		function(GLenum, GLuint, GLfloat *)
			glExecuteProgramNV;
	void		function(GLsizei, GLuint *)
			glGenProgramsNV;
	void		function(GLenum, GLuint, GLenum, GLdouble *)
			glGetProgramParameterdvNV;
	void		function(GLenum, GLuint, GLenum, GLfloat *)
			glGetProgramParameterfvNV;
	void		function(GLuint, GLenum, GLint *)
			glGetProgramivNV;
	void		function(GLuint, GLenum, GLubyte *)
			glGetProgramStringNV;
	void		function(GLenum, GLuint, GLenum, GLint *)
			glGetTrackMatrixivNV;
	void		function(GLuint, GLenum, GLdouble *)
			glGetVertexAttribdvNV;
	void		function(GLuint, GLenum, GLfloat *)
			glGetVertexAttribfvNV;
	void		function(GLuint, GLenum, GLint *)
			glGetVertexAttribivNV;
	void		function(GLuint, GLenum, GLvoid* *)
			glGetVertexAttribPointervNV;
	GLboolean		function(GLuint)
			glIsProgramNV;
	void		function(GLenum, GLuint, GLsizei, GLubyte *)
			glLoadProgramNV;
	void		function(GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble)
			glProgramParameter4dNV;
	void		function(GLenum, GLuint, GLdouble *)
			glProgramParameter4dvNV;
	void		function(GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
			glProgramParameter4fNV;
	void		function(GLenum, GLuint, GLfloat *)
			glProgramParameter4fvNV;
	void		function(GLenum, GLuint, GLuint, GLdouble *)
			glProgramParameters4dvNV;
	void		function(GLenum, GLuint, GLuint, GLfloat *)
			glProgramParameters4fvNV;
	void		function(GLsizei, GLuint *)
			glRequestResidentProgramsNV;
	void		function(GLenum, GLuint, GLenum, GLenum)
			glTrackMatrixNV;
	void		function(GLuint, GLint, GLenum, GLsizei, GLvoid *)
			glVertexAttribPointerNV;
	void		function(GLuint, GLdouble)
			glVertexAttrib1dNV;
	void		function(GLuint, GLdouble *)
			glVertexAttrib1dvNV;
	void		function(GLuint, GLfloat)
			glVertexAttrib1fNV;
	void		function(GLuint, GLfloat *)
			glVertexAttrib1fvNV;
	void		function(GLuint, GLshort)
			glVertexAttrib1sNV;
	void		function(GLuint, GLshort *)
			glVertexAttrib1svNV;
	void		function(GLuint, GLdouble, GLdouble)
			glVertexAttrib2dNV;
	void		function(GLuint, GLdouble *)
			glVertexAttrib2dvNV;
	void		function(GLuint, GLfloat, GLfloat)
			glVertexAttrib2fNV;
	void		function(GLuint, GLfloat *)
			glVertexAttrib2fvNV;
	void		function(GLuint, GLshort, GLshort)
			glVertexAttrib2sNV;
	void		function(GLuint, GLshort *)
			glVertexAttrib2svNV;
	void		function(GLuint, GLdouble, GLdouble, GLdouble)
			glVertexAttrib3dNV;
	void		function(GLuint, GLdouble *)
			glVertexAttrib3dvNV;
	void		function(GLuint, GLfloat, GLfloat, GLfloat)
			glVertexAttrib3fNV;
	void		function(GLuint, GLfloat *)
			glVertexAttrib3fvNV;
	void		function(GLuint, GLshort, GLshort, GLshort)
			glVertexAttrib3sNV;
	void		function(GLuint, GLshort *)
			glVertexAttrib3svNV;
	void		function(GLuint, GLdouble, GLdouble, GLdouble, GLdouble)
			glVertexAttrib4dNV;
	void		function(GLuint, GLdouble *)
			glVertexAttrib4dvNV;
	void		function(GLuint, GLfloat, GLfloat, GLfloat, GLfloat)
			glVertexAttrib4fNV;
	void		function(GLuint, GLfloat *)
			glVertexAttrib4fvNV;
	void		function(GLuint, GLshort, GLshort, GLshort, GLshort)
			glVertexAttrib4sNV;
	void		function(GLuint, GLshort *)
			glVertexAttrib4svNV;
	void		function(GLuint, GLubyte, GLubyte, GLubyte, GLubyte)
			glVertexAttrib4ubNV;
	void		function(GLuint, GLubyte *)
			glVertexAttrib4ubvNV;
	void		function(GLuint, GLsizei, GLdouble *)
			glVertexAttribs1dvNV;
	void		function(GLuint, GLsizei, GLfloat *)
			glVertexAttribs1fvNV;
	void		function(GLuint, GLsizei, GLshort *)
			glVertexAttribs1svNV;
	void		function(GLuint, GLsizei, GLdouble *)
			glVertexAttribs2dvNV;
	void		function(GLuint, GLsizei, GLfloat *)
			glVertexAttribs2fvNV;
	void		function(GLuint, GLsizei, GLshort *)
			glVertexAttribs2svNV;
	void		function(GLuint, GLsizei, GLdouble *)
			glVertexAttribs3dvNV;
	void		function(GLuint, GLsizei, GLfloat *)
			glVertexAttribs3fvNV;
	void		function(GLuint, GLsizei, GLshort *)
			glVertexAttribs3svNV;
	void		function(GLuint, GLsizei, GLdouble *)
			glVertexAttribs4dvNV;
	void		function(GLuint, GLsizei, GLfloat *)
			glVertexAttribs4fvNV;
	void		function(GLuint, GLsizei, GLshort *)
			glVertexAttribs4svNV;
	void		function(GLuint, GLsizei, GLubyte *)
			glVertexAttribs4ubvNV;
	void		function(GLenum, GLint *)
			glTexBumpParameterivATI;
	void		function(GLenum, GLfloat *)
			glTexBumpParameterfvATI;
	void		function(GLenum, GLint *)
			glGetTexBumpParameterivATI;
	void		function(GLenum, GLfloat *)
			glGetTexBumpParameterfvATI;
	GLuint		function(GLuint)
			glGenFragmentShadersATI;
	void		function(GLuint)
			glBindFragmentShaderATI;
	void		function(GLuint)
			glDeleteFragmentShaderATI;
	void		function()
			glBeginFragmentShaderATI;
	void		function()
			glEndFragmentShaderATI;
	void		function(GLuint, GLuint, GLenum)
			glPassTexCoordATI;
	void		function(GLuint, GLuint, GLenum)
			glSampleMapATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint)
			glColorFragmentOp1ATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint)
			glColorFragmentOp2ATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint)
			glColorFragmentOp3ATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint)
			glAlphaFragmentOp1ATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint)
			glAlphaFragmentOp2ATI;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint)
			glAlphaFragmentOp3ATI;
	void		function(GLuint, GLfloat *)
			glSetFragmentShaderConstantATI;
	void		function(GLenum, GLint)
			glPNTrianglesiATI;
	void		function(GLenum, GLfloat)
			glPNTrianglesfATI;
	GLuint		function(GLsizei, GLvoid *, GLenum)
			glNewObjectBufferATI;
	GLboolean		function(GLuint)
			glIsObjectBufferATI;
	void		function(GLuint, GLuint, GLsizei, GLvoid *, GLenum)
			glUpdateObjectBufferATI;
	void		function(GLuint, GLenum, GLfloat *)
			glGetObjectBufferfvATI;
	void		function(GLuint, GLenum, GLint *)
			glGetObjectBufferivATI;
	void		function(GLuint)
			glDeleteObjectBufferATI;
	void		function(GLenum, GLint, GLenum, GLsizei, GLuint, GLuint)
			glArrayObjectATI;
	void		function(GLenum, GLenum, GLfloat *)
			glGetArrayObjectfvATI;
	void		function(GLenum, GLenum, GLint *)
			glGetArrayObjectivATI;
	void		function(GLuint, GLenum, GLsizei, GLuint, GLuint)
			glVariantArrayObjectATI;
	void		function(GLuint, GLenum, GLfloat *)
			glGetVariantArrayObjectfvATI;
	void		function(GLuint, GLenum, GLint *)
			glGetVariantArrayObjectivATI;
	void		function()
			glBeginVertexShaderEXT;
	void		function()
			glEndVertexShaderEXT;
	void		function(GLuint)
			glBindVertexShaderEXT;
	GLuint		function(GLuint)
			glGenVertexShadersEXT;
	void		function(GLuint)
			glDeleteVertexShaderEXT;
	void		function(GLenum, GLuint, GLuint)
			glShaderOp1EXT;
	void		function(GLenum, GLuint, GLuint, GLuint)
			glShaderOp2EXT;
	void		function(GLenum, GLuint, GLuint, GLuint, GLuint)
			glShaderOp3EXT;
	void		function(GLuint, GLuint, GLenum, GLenum, GLenum, GLenum)
			glSwizzleEXT;
	void		function(GLuint, GLuint, GLenum, GLenum, GLenum, GLenum)
			glWriteMaskEXT;
	void		function(GLuint, GLuint, GLuint)
			glInsertComponentEXT;
	void		function(GLuint, GLuint, GLuint)
			glExtractComponentEXT;
	GLuint		function(GLenum, GLenum, GLenum, GLuint)
			glGenSymbolsEXT;
	void		function(GLuint, GLenum, void *)
			glSetInvariantEXT;
	void		function(GLuint, GLenum, void *)
			glSetLocalConstantEXT;
	void		function(GLuint, GLbyte *)
			glVariantbvEXT;
	void		function(GLuint, GLshort *)
			glVariantsvEXT;
	void		function(GLuint, GLint *)
			glVariantivEXT;
	void		function(GLuint, GLfloat *)
			glVariantfvEXT;
	void		function(GLuint, GLdouble *)
			glVariantdvEXT;
	void		function(GLuint, GLubyte *)
			glVariantubvEXT;
	void		function(GLuint, GLushort *)
			glVariantusvEXT;
	void		function(GLuint, GLuint *)
			glVariantuivEXT;
	void		function(GLuint, GLenum, GLuint, void *)
			glVariantPointerEXT;
	void		function(GLuint)
			glEnableVariantClientStateEXT;
	void		function(GLuint)
			glDisableVariantClientStateEXT;
	GLuint		function(GLenum, GLenum)
			glBindLightParameterEXT;
	GLuint		function(GLenum, GLenum)
			glBindMaterialParameterEXT;
	GLuint		function(GLenum, GLenum, GLenum)
			glBindTexGenParameterEXT;
	GLuint		function(GLenum, GLenum)
			glBindTextureUnitParameterEXT;
	GLuint		function(GLenum)
			glBindParameterEXT;
	GLboolean		function(GLuint, GLenum)
			glIsVariantEnabledEXT;
	void		function(GLuint, GLenum, GLboolean *)
			glGetVariantBooleanvEXT;
	void		function(GLuint, GLenum, GLint *)
			glGetVariantIntegervEXT;
	void		function(GLuint, GLenum, GLfloat *)
			glGetVariantFloatvEXT;
	void		function(GLuint, GLenum, GLvoid* *)
			glGetVariantPointervEXT;
	void		function(GLuint, GLenum, GLboolean *)
			glGetInvariantBooleanvEXT;
	void		function(GLuint, GLenum, GLint *)
			glGetInvariantIntegervEXT;
	void		function(GLuint, GLenum, GLfloat *)
			glGetInvariantFloatvEXT;
	void		function(GLuint, GLenum, GLboolean *)
			glGetLocalConstantBooleanvEXT;
	void		function(GLuint, GLenum, GLint *)
			glGetLocalConstantIntegervEXT;
	void		function(GLuint, GLenum, GLfloat *)
			glGetLocalConstantFloatvEXT;
	void		function(GLenum, GLshort)
			glVertexStream1sATI;
	void		function(GLenum, GLshort *)
			glVertexStream1svATI;
	void		function(GLenum, GLint)
			glVertexStream1iATI;
	void		function(GLenum, GLint *)
			glVertexStream1ivATI;
	void		function(GLenum, GLfloat)
			glVertexStream1fATI;
	void		function(GLenum, GLfloat *)
			glVertexStream1fvATI;
	void		function(GLenum, GLdouble)
			glVertexStream1dATI;
	void		function(GLenum, GLdouble *)
			glVertexStream1dvATI;
	void		function(GLenum, GLshort, GLshort)
			glVertexStream2sATI;
	void		function(GLenum, GLshort *)
			glVertexStream2svATI;
	void		function(GLenum, GLint, GLint)
			glVertexStream2iATI;
	void		function(GLenum, GLint *)
			glVertexStream2ivATI;
	void		function(GLenum, GLfloat, GLfloat)
			glVertexStream2fATI;
	void		function(GLenum, GLfloat *)
			glVertexStream2fvATI;
	void		function(GLenum, GLdouble, GLdouble)
			glVertexStream2dATI;
	void		function(GLenum, GLdouble *)
			glVertexStream2dvATI;
	void		function(GLenum, GLshort, GLshort, GLshort)
			glVertexStream3sATI;
	void		function(GLenum, GLshort *)
			glVertexStream3svATI;
	void		function(GLenum, GLint, GLint, GLint)
			glVertexStream3iATI;
	void		function(GLenum, GLint *)
			glVertexStream3ivATI;
	void		function(GLenum, GLfloat, GLfloat, GLfloat)
			glVertexStream3fATI;
	void		function(GLenum, GLfloat *)
			glVertexStream3fvATI;
	void		function(GLenum, GLdouble, GLdouble, GLdouble)
			glVertexStream3dATI;
	void		function(GLenum, GLdouble *)
			glVertexStream3dvATI;
	void		function(GLenum, GLshort, GLshort, GLshort, GLshort)
			glVertexStream4sATI;
	void		function(GLenum, GLshort *)
			glVertexStream4svATI;
	void		function(GLenum, GLint, GLint, GLint, GLint)
			glVertexStream4iATI;
	void		function(GLenum, GLint *)
			glVertexStream4ivATI;
	void		function(GLenum, GLfloat, GLfloat, GLfloat, GLfloat)
			glVertexStream4fATI;
	void		function(GLenum, GLfloat *)
			glVertexStream4fvATI;
	void		function(GLenum, GLdouble, GLdouble, GLdouble, GLdouble)
			glVertexStream4dATI;
	void		function(GLenum, GLdouble *)
			glVertexStream4dvATI;
	void		function(GLenum, GLbyte, GLbyte, GLbyte)
			glNormalStream3bATI;
	void		function(GLenum, GLbyte *)
			glNormalStream3bvATI;
	void		function(GLenum, GLshort, GLshort, GLshort)
			glNormalStream3sATI;
	void		function(GLenum, GLshort *)
			glNormalStream3svATI;
	void		function(GLenum, GLint, GLint, GLint)
			glNormalStream3iATI;
	void		function(GLenum, GLint *)
			glNormalStream3ivATI;
	void		function(GLenum, GLfloat, GLfloat, GLfloat)
			glNormalStream3fATI;
	void		function(GLenum, GLfloat *)
			glNormalStream3fvATI;
	void		function(GLenum, GLdouble, GLdouble, GLdouble)
			glNormalStream3dATI;
	void		function(GLenum, GLdouble *)
			glNormalStream3dvATI;
	void		function(GLenum)
			glClientActiveVertexStreamATI;
	void		function(GLenum, GLint)
			glVertexBlendEnviATI;
	void		function(GLenum, GLfloat)
			glVertexBlendEnvfATI;
	void		function(GLenum, GLvoid *)
			glElementPointerATI;
	void		function(GLenum, GLsizei)
			glDrawElementArrayATI;
	void		function(GLenum, GLuint, GLuint, GLsizei)
			glDrawRangeElementArrayATI;
	void		function(GLenum, GLint, GLsizei, GLsizei)
			glDrawMeshArraysSUN;
	void		function(GLsizei, GLuint *)
			glGenOcclusionQueriesNV;
	void		function(GLsizei, GLuint *)
			glDeleteOcclusionQueriesNV;
	GLboolean		function(GLuint)
			glIsOcclusionQueryNV;
	void		function(GLuint)
			glBeginOcclusionQueryNV;
	void		function()
			glEndOcclusionQueryNV;
	void		function(GLuint, GLenum, GLint *)
			glGetOcclusionQueryivNV;
	void		function(GLuint, GLenum, GLuint *)
			glGetOcclusionQueryuivNV;
	void		function(GLenum, GLint)
			glPointParameteriNV;
	void		function(GLenum, GLint *)
			glPointParameterivNV;
	void		function(GLenum)
			glActiveStencilFaceEXT;
	extern		function(GLUnurbs* nurb)
			gluBeginCurve;
	extern		function(GLUtesselator* tess)
			gluBeginPolygon;
	extern		function(GLUnurbs* nurb)
			gluBeginSurface;
	extern		function(GLUnurbs* nurb)
			gluBeginTrim;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild1DMipmapLevels;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data)
			gluBuild1DMipmaps;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild2DMipmapLevels;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data)
			gluBuild2DMipmaps;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data)
			gluBuild3DMipmapLevels;
	extern		function(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data)
			gluBuild3DMipmaps;
	extern		function(GLubyte *extName, GLubyte *extString)
			gluCheckExtension;
	extern		function(GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)
			gluCylinder;
	extern		function(GLUnurbs* nurb)
			gluDeleteNurbsRenderer;
	extern		function(GLUquadric* quad)
			gluDeleteQuadric;
	extern		function(GLUtesselator* tess)
			gluDeleteTess;
	extern		function(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)
			gluDisk;
	extern		function(GLUnurbs* nurb)
			gluEndCurve;
	extern		function(GLUtesselator* tess)
			gluEndPolygon;
	extern		function(GLUnurbs* nurb)
			gluEndSurface;
	extern		function(GLUnurbs* nurb)
			gluEndTrim;
	extern		function(GLenum error)
			gluErrorString;
	extern		function(GLUnurbs* nurb, GLenum property, GLfloat* data)
			gluGetNurbsProperty;
	extern		function(GLenum name)
			gluGetString;
	extern		function(GLUtesselator* tess, GLenum which, GLdouble* data)
			gluGetTessProperty;
	extern		function(GLUnurbs* nurb, GLfloat *model, GLfloat *perspective, GLint *view)
			gluLoadSamplingMatrices;
	extern		function(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)
			gluLookAt;
	extern		function()
			gluNewNurbsRenderer;
	extern		function()
			gluNewQuadric;
	extern		function()
			gluNewTess;
	extern		function(GLUtesselator* tess, GLenum type)
			gluNextContour;
	extern		function(GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc)
			gluNurbsCallback;
	extern		function(GLUnurbs* nurb, GLvoid* userData)
			gluNurbsCallbackData;
	extern		function(GLUnurbs* nurb, GLvoid* userData)
			gluNurbsCallbackDataEXT;
	extern		function(GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type)
			gluNurbsCurve;
	extern		function(GLUnurbs* nurb, GLenum property, GLfloat value)
			gluNurbsProperty;
	extern		function(GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)
			gluNurbsSurface;
	extern		function(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)
			gluOrtho2D;
	extern		function(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)
			gluPartialDisk;
	extern		function(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)
			gluPerspective;
	extern		function(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport)
			gluPickMatrix;
	extern		function(GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)
			gluProject;
	extern		function(GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type)
			gluPwlCurve;
	extern		function(GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc)
			gluQuadricCallback;
	extern		function(GLUquadric* quad, GLenum draw)
			gluQuadricDrawStyle;
	extern		function(GLUquadric* quad, GLenum normal)
			gluQuadricNormals;
	extern		function(GLUquadric* quad, GLenum orientation)
			gluQuadricOrientation;
	extern		function(GLUquadric* quad, GLboolean texture)
			gluQuadricTexture;
	extern		function(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)
			gluScaleImage;
	extern		function(GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)
			gluSphere;
	extern		function(GLUtesselator* tess)
			gluTessBeginContour;
	extern		function(GLUtesselator* tess, GLvoid* data)
			gluTessBeginPolygon;
	extern		function(GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc)
			gluTessCallback;
	extern		function(GLUtesselator* tess)
			gluTessEndContour;
	extern		function(GLUtesselator* tess)
			gluTessEndPolygon;
	extern		function(GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)
			gluTessNormal;
	extern		function(GLUtesselator* tess, GLenum which, GLdouble data)
			gluTessProperty;
	extern		function(GLUtesselator* tess, GLdouble *location, GLvoid* data)
			gluTessVertex;
	extern		function(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)
			gluUnProject;
	extern		function(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble near, GLdouble far, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW)
			gluUnProject4;
}


lib.loader.Symbol[] ooooLinks =
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
	{ "glPushMatrix",  cast(void**)& glPushMatrix },
	{ "glPopMatrix",  cast(void**)& glPopMatrix },
	{ "glLoadIdentity",  cast(void**)& glLoadIdentity },
	{ "glLoadMatrixd",  cast(void**)& glLoadMatrixd },
	{ "glLoadMatrixf",  cast(void**)& glLoadMatrixf },
	{ "glMultMatrixd",  cast(void**)& glMultMatrixd },
	{ "glMultMatrixf",  cast(void**)& glMultMatrixf },
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
	{ "glEdgeFlagPointer",  cast(void**)& glEdgeFlagPointer },
	{ "glGetPointerv",  cast(void**)& glGetPointerv },
	{ "glArrayElement",  cast(void**)& glArrayElement },
	{ "glDrawArrays",  cast(void**)& glDrawArrays },
	{ "glShadeModel",  cast(void**)& glShadeModel },
	{ "glLightf",  cast(void**)& glLightf },
	{ "glLighti",  cast(void**)& glLighti },
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
	{ "glGetPixelMapfv",  cast(void**)& glGetPixelMapfv },
	{ "glGetPixelMapuiv",  cast(void**)& glGetPixelMapuiv },
	{ "glGetPixelMapusv",  cast(void**)& glGetPixelMapusv },
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
	{ "glGenTextures",  cast(void**)& glGenTextures },
	{ "glDeleteTextures",  cast(void**)& glDeleteTextures },
	{ "glBindTexture",  cast(void**)& glBindTexture },
	{ "glIsTexture",  cast(void**)& glIsTexture },
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
	{ "glBlendEquation",  cast(void**)& glBlendEquation },
	{ "glResetHistogram",  cast(void**)& glResetHistogram },
	{ "glResetMinmax",  cast(void**)& glResetMinmax },
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
	{ "glSampleCoverage",  cast(void**)& glSampleCoverage },
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
	{ "glMultiTexCoord4svARB",  cast(void**)& glMultiTexCoord4svARB },
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
	{ "glUnlockArraysEXT",  cast(void**)& glUnlockArraysEXT },
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
	{ "glTracePointerRangeMESA",  cast(void**)& glTracePointerRangeMESA },
	{ "glBlendColor",  cast(void**)& glBlendColor },
	{ "glBlendEquation",  cast(void**)& glBlendEquation },
	{ "glDrawRangeElements",  cast(void**)& glDrawRangeElements },
	{ "glColorTable",  cast(void**)& glColorTable },
	{ "glColorTableParameterfv",  cast(void**)& glColorTableParameterfv },
	{ "glColorTableParameteriv",  cast(void**)& glColorTableParameteriv },
	{ "glCopyColorTable",  cast(void**)& glCopyColorTable },
	{ "glGetColorTable",  cast(void**)& glGetColorTable },
	{ "glGetColorTableParameterfv",  cast(void**)& glGetColorTableParameterfv },
	{ "glGetColorTableParameteriv",  cast(void**)& glGetColorTableParameteriv },
	{ "glColorSubTable",  cast(void**)& glColorSubTable },
	{ "glCopyColorSubTable",  cast(void**)& glCopyColorSubTable },
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
	{ "glGetSeparableFilter",  cast(void**)& glGetSeparableFilter },
	{ "glSeparableFilter2D",  cast(void**)& glSeparableFilter2D },
	{ "glGetHistogram",  cast(void**)& glGetHistogram },
	{ "glGetHistogramParameterfv",  cast(void**)& glGetHistogramParameterfv },
	{ "glGetHistogramParameteriv",  cast(void**)& glGetHistogramParameteriv },
	{ "glGetMinmax",  cast(void**)& glGetMinmax },
	{ "glGetMinmaxParameterfv",  cast(void**)& glGetMinmaxParameterfv },
	{ "glGetMinmaxParameteriv",  cast(void**)& glGetMinmaxParameteriv },
	{ "glHistogram",  cast(void**)& glHistogram },
	{ "glMinmax",  cast(void**)& glMinmax },
	{ "glResetHistogram",  cast(void**)& glResetHistogram },
	{ "glResetMinmax",  cast(void**)& glResetMinmax },
	{ "glTexImage3D",  cast(void**)& glTexImage3D },
	{ "glTexSubImage3D",  cast(void**)& glTexSubImage3D },
	{ "glCopyTexSubImage3D",  cast(void**)& glCopyTexSubImage3D },
	{ "glActiveTexture",  cast(void**)& glActiveTexture },
	{ "glClientActiveTexture",  cast(void**)& glClientActiveTexture },
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
	{ "glLoadTransposeMatrixf",  cast(void**)& glLoadTransposeMatrixf },
	{ "glLoadTransposeMatrixd",  cast(void**)& glLoadTransposeMatrixd },
	{ "glMultTransposeMatrixf",  cast(void**)& glMultTransposeMatrixf },
	{ "glMultTransposeMatrixd",  cast(void**)& glMultTransposeMatrixd },
	{ "glSampleCoverage",  cast(void**)& glSampleCoverage },
	{ "glCompressedTexImage3D",  cast(void**)& glCompressedTexImage3D },
	{ "glCompressedTexImage2D",  cast(void**)& glCompressedTexImage2D },
	{ "glCompressedTexImage1D",  cast(void**)& glCompressedTexImage1D },
	{ "glCompressedTexSubImage3D",  cast(void**)& glCompressedTexSubImage3D },
	{ "glCompressedTexSubImage2D",  cast(void**)& glCompressedTexSubImage2D },
	{ "glCompressedTexSubImage1D",  cast(void**)& glCompressedTexSubImage1D },
	{ "glGetCompressedTexImage",  cast(void**)& glGetCompressedTexImage },
	{ "glBlendFuncSeparate",  cast(void**)& glBlendFuncSeparate },
	{ "glFogCoordf",  cast(void**)& glFogCoordf },
	{ "glFogCoordfv",  cast(void**)& glFogCoordfv },
	{ "glFogCoordd",  cast(void**)& glFogCoordd },
	{ "glFogCoorddv",  cast(void**)& glFogCoorddv },
	{ "glFogCoordPointer",  cast(void**)& glFogCoordPointer },
	{ "glMultiDrawArrays",  cast(void**)& glMultiDrawArrays },
	{ "glMultiDrawElements",  cast(void**)& glMultiDrawElements },
	{ "glPointParameterf",  cast(void**)& glPointParameterf },
	{ "glPointParameterfv",  cast(void**)& glPointParameterfv },
	{ "glPointParameteri",  cast(void**)& glPointParameteri },
	{ "glPointParameteriv",  cast(void**)& glPointParameteriv },
	{ "glSecondaryColor3b",  cast(void**)& glSecondaryColor3b },
	{ "glSecondaryColor3bv",  cast(void**)& glSecondaryColor3bv },
	{ "glSecondaryColor3d",  cast(void**)& glSecondaryColor3d },
	{ "glSecondaryColor3dv",  cast(void**)& glSecondaryColor3dv },
	{ "glSecondaryColor3f",  cast(void**)& glSecondaryColor3f },
	{ "glSecondaryColor3fv",  cast(void**)& glSecondaryColor3fv },
	{ "glSecondaryColor3i",  cast(void**)& glSecondaryColor3i },
	{ "glSecondaryColor3iv",  cast(void**)& glSecondaryColor3iv },
	{ "glSecondaryColor3s",  cast(void**)& glSecondaryColor3s },
	{ "glSecondaryColor3sv",  cast(void**)& glSecondaryColor3sv },
	{ "glSecondaryColor3ub",  cast(void**)& glSecondaryColor3ub },
	{ "glSecondaryColor3ubv",  cast(void**)& glSecondaryColor3ubv },
	{ "glSecondaryColor3ui",  cast(void**)& glSecondaryColor3ui },
	{ "glSecondaryColor3uiv",  cast(void**)& glSecondaryColor3uiv },
	{ "glSecondaryColor3us",  cast(void**)& glSecondaryColor3us },
	{ "glSecondaryColor3usv",  cast(void**)& glSecondaryColor3usv },
	{ "glSecondaryColorPointer",  cast(void**)& glSecondaryColorPointer },
	{ "glWindowPos2d",  cast(void**)& glWindowPos2d },
	{ "glWindowPos2dv",  cast(void**)& glWindowPos2dv },
	{ "glWindowPos2f",  cast(void**)& glWindowPos2f },
	{ "glWindowPos2fv",  cast(void**)& glWindowPos2fv },
	{ "glWindowPos2i",  cast(void**)& glWindowPos2i },
	{ "glWindowPos2iv",  cast(void**)& glWindowPos2iv },
	{ "glWindowPos2s",  cast(void**)& glWindowPos2s },
	{ "glWindowPos2sv",  cast(void**)& glWindowPos2sv },
	{ "glWindowPos3d",  cast(void**)& glWindowPos3d },
	{ "glWindowPos3dv",  cast(void**)& glWindowPos3dv },
	{ "glWindowPos3f",  cast(void**)& glWindowPos3f },
	{ "glWindowPos3fv",  cast(void**)& glWindowPos3fv },
	{ "glWindowPos3i",  cast(void**)& glWindowPos3i },
	{ "glWindowPos3iv",  cast(void**)& glWindowPos3iv },
	{ "glWindowPos3s",  cast(void**)& glWindowPos3s },
	{ "glWindowPos3sv",  cast(void**)& glWindowPos3sv },
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
	{ "glMultiTexCoord4svARB",  cast(void**)& glMultiTexCoord4svARB },
	{ "glLoadTransposeMatrixfARB",  cast(void**)& glLoadTransposeMatrixfARB },
	{ "glLoadTransposeMatrixdARB",  cast(void**)& glLoadTransposeMatrixdARB },
	{ "glMultTransposeMatrixfARB",  cast(void**)& glMultTransposeMatrixfARB },
	{ "glMultTransposeMatrixdARB",  cast(void**)& glMultTransposeMatrixdARB },
	{ "glSampleCoverageARB",  cast(void**)& glSampleCoverageARB },
	{ "glCompressedTexImage3DARB",  cast(void**)& glCompressedTexImage3DARB },
	{ "glCompressedTexImage2DARB",  cast(void**)& glCompressedTexImage2DARB },
	{ "glCompressedTexImage1DARB",  cast(void**)& glCompressedTexImage1DARB },
	{ "glCompressedTexSubImage3DARB",  cast(void**)& glCompressedTexSubImage3DARB },
	{ "glCompressedTexSubImage2DARB",  cast(void**)& glCompressedTexSubImage2DARB },
	{ "glCompressedTexSubImage1DARB",  cast(void**)& glCompressedTexSubImage1DARB },
	{ "glGetCompressedTexImageARB",  cast(void**)& glGetCompressedTexImageARB },
	{ "glPointParameterfARB",  cast(void**)& glPointParameterfARB },
	{ "glPointParameterfvARB",  cast(void**)& glPointParameterfvARB },
	{ "glWeightbvARB",  cast(void**)& glWeightbvARB },
	{ "glWeightsvARB",  cast(void**)& glWeightsvARB },
	{ "glWeightivARB",  cast(void**)& glWeightivARB },
	{ "glWeightfvARB",  cast(void**)& glWeightfvARB },
	{ "glWeightdvARB",  cast(void**)& glWeightdvARB },
	{ "glWeightubvARB",  cast(void**)& glWeightubvARB },
	{ "glWeightusvARB",  cast(void**)& glWeightusvARB },
	{ "glWeightuivARB",  cast(void**)& glWeightuivARB },
	{ "glWeightPointerARB",  cast(void**)& glWeightPointerARB },
	{ "glVertexBlendARB",  cast(void**)& glVertexBlendARB },
	{ "glCurrentPaletteMatrixARB",  cast(void**)& glCurrentPaletteMatrixARB },
	{ "glMatrixIndexubvARB",  cast(void**)& glMatrixIndexubvARB },
	{ "glMatrixIndexusvARB",  cast(void**)& glMatrixIndexusvARB },
	{ "glMatrixIndexuivARB",  cast(void**)& glMatrixIndexuivARB },
	{ "glMatrixIndexPointerARB",  cast(void**)& glMatrixIndexPointerARB },
	{ "glWindowPos2dARB",  cast(void**)& glWindowPos2dARB },
	{ "glWindowPos2dvARB",  cast(void**)& glWindowPos2dvARB },
	{ "glWindowPos2fARB",  cast(void**)& glWindowPos2fARB },
	{ "glWindowPos2fvARB",  cast(void**)& glWindowPos2fvARB },
	{ "glWindowPos2iARB",  cast(void**)& glWindowPos2iARB },
	{ "glWindowPos2ivARB",  cast(void**)& glWindowPos2ivARB },
	{ "glWindowPos2sARB",  cast(void**)& glWindowPos2sARB },
	{ "glWindowPos2svARB",  cast(void**)& glWindowPos2svARB },
	{ "glWindowPos3dARB",  cast(void**)& glWindowPos3dARB },
	{ "glWindowPos3dvARB",  cast(void**)& glWindowPos3dvARB },
	{ "glWindowPos3fARB",  cast(void**)& glWindowPos3fARB },
	{ "glWindowPos3fvARB",  cast(void**)& glWindowPos3fvARB },
	{ "glWindowPos3iARB",  cast(void**)& glWindowPos3iARB },
	{ "glWindowPos3ivARB",  cast(void**)& glWindowPos3ivARB },
	{ "glWindowPos3sARB",  cast(void**)& glWindowPos3sARB },
	{ "glWindowPos3svARB",  cast(void**)& glWindowPos3svARB },
	{ "glVertexAttrib1dARB",  cast(void**)& glVertexAttrib1dARB },
	{ "glVertexAttrib1dvARB",  cast(void**)& glVertexAttrib1dvARB },
	{ "glVertexAttrib1fARB",  cast(void**)& glVertexAttrib1fARB },
	{ "glVertexAttrib1fvARB",  cast(void**)& glVertexAttrib1fvARB },
	{ "glVertexAttrib1sARB",  cast(void**)& glVertexAttrib1sARB },
	{ "glVertexAttrib1svARB",  cast(void**)& glVertexAttrib1svARB },
	{ "glVertexAttrib2dARB",  cast(void**)& glVertexAttrib2dARB },
	{ "glVertexAttrib2dvARB",  cast(void**)& glVertexAttrib2dvARB },
	{ "glVertexAttrib2fARB",  cast(void**)& glVertexAttrib2fARB },
	{ "glVertexAttrib2fvARB",  cast(void**)& glVertexAttrib2fvARB },
	{ "glVertexAttrib2sARB",  cast(void**)& glVertexAttrib2sARB },
	{ "glVertexAttrib2svARB",  cast(void**)& glVertexAttrib2svARB },
	{ "glVertexAttrib3dARB",  cast(void**)& glVertexAttrib3dARB },
	{ "glVertexAttrib3dvARB",  cast(void**)& glVertexAttrib3dvARB },
	{ "glVertexAttrib3fARB",  cast(void**)& glVertexAttrib3fARB },
	{ "glVertexAttrib3fvARB",  cast(void**)& glVertexAttrib3fvARB },
	{ "glVertexAttrib3sARB",  cast(void**)& glVertexAttrib3sARB },
	{ "glVertexAttrib3svARB",  cast(void**)& glVertexAttrib3svARB },
	{ "glVertexAttrib4NbvARB",  cast(void**)& glVertexAttrib4NbvARB },
	{ "glVertexAttrib4NivARB",  cast(void**)& glVertexAttrib4NivARB },
	{ "glVertexAttrib4NsvARB",  cast(void**)& glVertexAttrib4NsvARB },
	{ "glVertexAttrib4NubARB",  cast(void**)& glVertexAttrib4NubARB },
	{ "glVertexAttrib4NubvARB",  cast(void**)& glVertexAttrib4NubvARB },
	{ "glVertexAttrib4NuivARB",  cast(void**)& glVertexAttrib4NuivARB },
	{ "glVertexAttrib4NusvARB",  cast(void**)& glVertexAttrib4NusvARB },
	{ "glVertexAttrib4bvARB",  cast(void**)& glVertexAttrib4bvARB },
	{ "glVertexAttrib4dARB",  cast(void**)& glVertexAttrib4dARB },
	{ "glVertexAttrib4dvARB",  cast(void**)& glVertexAttrib4dvARB },
	{ "glVertexAttrib4fARB",  cast(void**)& glVertexAttrib4fARB },
	{ "glVertexAttrib4fvARB",  cast(void**)& glVertexAttrib4fvARB },
	{ "glVertexAttrib4ivARB",  cast(void**)& glVertexAttrib4ivARB },
	{ "glVertexAttrib4sARB",  cast(void**)& glVertexAttrib4sARB },
	{ "glVertexAttrib4svARB",  cast(void**)& glVertexAttrib4svARB },
	{ "glVertexAttrib4ubvARB",  cast(void**)& glVertexAttrib4ubvARB },
	{ "glVertexAttrib4uivARB",  cast(void**)& glVertexAttrib4uivARB },
	{ "glVertexAttrib4usvARB",  cast(void**)& glVertexAttrib4usvARB },
	{ "glVertexAttribPointerARB",  cast(void**)& glVertexAttribPointerARB },
	{ "glEnableVertexAttribArrayARB",  cast(void**)& glEnableVertexAttribArrayARB },
	{ "glDisableVertexAttribArrayARB",  cast(void**)& glDisableVertexAttribArrayARB },
	{ "glProgramStringARB",  cast(void**)& glProgramStringARB },
	{ "glBindProgramARB",  cast(void**)& glBindProgramARB },
	{ "glDeleteProgramsARB",  cast(void**)& glDeleteProgramsARB },
	{ "glGenProgramsARB",  cast(void**)& glGenProgramsARB },
	{ "glProgramEnvParameter4dARB",  cast(void**)& glProgramEnvParameter4dARB },
	{ "glProgramEnvParameter4dvARB",  cast(void**)& glProgramEnvParameter4dvARB },
	{ "glProgramEnvParameter4fARB",  cast(void**)& glProgramEnvParameter4fARB },
	{ "glProgramEnvParameter4fvARB",  cast(void**)& glProgramEnvParameter4fvARB },
	{ "glProgramLocalParameter4dARB",  cast(void**)& glProgramLocalParameter4dARB },
	{ "glProgramLocalParameter4dvARB",  cast(void**)& glProgramLocalParameter4dvARB },
	{ "glProgramLocalParameter4fARB",  cast(void**)& glProgramLocalParameter4fARB },
	{ "glProgramLocalParameter4fvARB",  cast(void**)& glProgramLocalParameter4fvARB },
	{ "glGetProgramEnvParameterdvARB",  cast(void**)& glGetProgramEnvParameterdvARB },
	{ "glGetProgramEnvParameterfvARB",  cast(void**)& glGetProgramEnvParameterfvARB },
	{ "glGetProgramLocalParameterdvARB",  cast(void**)& glGetProgramLocalParameterdvARB },
	{ "glGetProgramLocalParameterfvARB",  cast(void**)& glGetProgramLocalParameterfvARB },
	{ "glGetProgramivARB",  cast(void**)& glGetProgramivARB },
	{ "glGetProgramStringARB",  cast(void**)& glGetProgramStringARB },
	{ "glGetVertexAttribdvARB",  cast(void**)& glGetVertexAttribdvARB },
	{ "glGetVertexAttribfvARB",  cast(void**)& glGetVertexAttribfvARB },
	{ "glGetVertexAttribivARB",  cast(void**)& glGetVertexAttribivARB },
	{ "glGetVertexAttribPointervARB",  cast(void**)& glGetVertexAttribPointervARB },
	{ "glIsProgramARB",  cast(void**)& glIsProgramARB },
	{ "glBlendColorEXT",  cast(void**)& glBlendColorEXT },
	{ "glPolygonOffsetEXT",  cast(void**)& glPolygonOffsetEXT },
	{ "glTexImage3DEXT",  cast(void**)& glTexImage3DEXT },
	{ "glTexSubImage3DEXT",  cast(void**)& glTexSubImage3DEXT },
	{ "glGetTexFilterFuncSGIS",  cast(void**)& glGetTexFilterFuncSGIS },
	{ "glTexFilterFuncSGIS",  cast(void**)& glTexFilterFuncSGIS },
	{ "glTexSubImage1DEXT",  cast(void**)& glTexSubImage1DEXT },
	{ "glTexSubImage2DEXT",  cast(void**)& glTexSubImage2DEXT },
	{ "glCopyTexImage1DEXT",  cast(void**)& glCopyTexImage1DEXT },
	{ "glCopyTexImage2DEXT",  cast(void**)& glCopyTexImage2DEXT },
	{ "glCopyTexSubImage1DEXT",  cast(void**)& glCopyTexSubImage1DEXT },
	{ "glCopyTexSubImage2DEXT",  cast(void**)& glCopyTexSubImage2DEXT },
	{ "glCopyTexSubImage3DEXT",  cast(void**)& glCopyTexSubImage3DEXT },
	{ "glGetHistogramEXT",  cast(void**)& glGetHistogramEXT },
	{ "glGetHistogramParameterfvEXT",  cast(void**)& glGetHistogramParameterfvEXT },
	{ "glGetHistogramParameterivEXT",  cast(void**)& glGetHistogramParameterivEXT },
	{ "glGetMinmaxEXT",  cast(void**)& glGetMinmaxEXT },
	{ "glGetMinmaxParameterfvEXT",  cast(void**)& glGetMinmaxParameterfvEXT },
	{ "glGetMinmaxParameterivEXT",  cast(void**)& glGetMinmaxParameterivEXT },
	{ "glHistogramEXT",  cast(void**)& glHistogramEXT },
	{ "glMinmaxEXT",  cast(void**)& glMinmaxEXT },
	{ "glResetHistogramEXT",  cast(void**)& glResetHistogramEXT },
	{ "glResetMinmaxEXT",  cast(void**)& glResetMinmaxEXT },
	{ "glConvolutionFilter1DEXT",  cast(void**)& glConvolutionFilter1DEXT },
	{ "glConvolutionFilter2DEXT",  cast(void**)& glConvolutionFilter2DEXT },
	{ "glConvolutionParameterfEXT",  cast(void**)& glConvolutionParameterfEXT },
	{ "glConvolutionParameterfvEXT",  cast(void**)& glConvolutionParameterfvEXT },
	{ "glConvolutionParameteriEXT",  cast(void**)& glConvolutionParameteriEXT },
	{ "glConvolutionParameterivEXT",  cast(void**)& glConvolutionParameterivEXT },
	{ "glCopyConvolutionFilter1DEXT",  cast(void**)& glCopyConvolutionFilter1DEXT },
	{ "glCopyConvolutionFilter2DEXT",  cast(void**)& glCopyConvolutionFilter2DEXT },
	{ "glGetConvolutionFilterEXT",  cast(void**)& glGetConvolutionFilterEXT },
	{ "glGetConvolutionParameterfvEXT",  cast(void**)& glGetConvolutionParameterfvEXT },
	{ "glGetConvolutionParameterivEXT",  cast(void**)& glGetConvolutionParameterivEXT },
	{ "glGetSeparableFilterEXT",  cast(void**)& glGetSeparableFilterEXT },
	{ "glSeparableFilter2DEXT",  cast(void**)& glSeparableFilter2DEXT },
	{ "glColorTableSGI",  cast(void**)& glColorTableSGI },
	{ "glColorTableParameterfvSGI",  cast(void**)& glColorTableParameterfvSGI },
	{ "glColorTableParameterivSGI",  cast(void**)& glColorTableParameterivSGI },
	{ "glCopyColorTableSGI",  cast(void**)& glCopyColorTableSGI },
	{ "glGetColorTableSGI",  cast(void**)& glGetColorTableSGI },
	{ "glGetColorTableParameterfvSGI",  cast(void**)& glGetColorTableParameterfvSGI },
	{ "glGetColorTableParameterivSGI",  cast(void**)& glGetColorTableParameterivSGI },
	{ "glPixelTexGenSGIX",  cast(void**)& glPixelTexGenSGIX },
	{ "glPixelTexGenParameteriSGIS",  cast(void**)& glPixelTexGenParameteriSGIS },
	{ "glPixelTexGenParameterivSGIS",  cast(void**)& glPixelTexGenParameterivSGIS },
	{ "glPixelTexGenParameterfSGIS",  cast(void**)& glPixelTexGenParameterfSGIS },
	{ "glPixelTexGenParameterfvSGIS",  cast(void**)& glPixelTexGenParameterfvSGIS },
	{ "glGetPixelTexGenParameterivSGIS",  cast(void**)& glGetPixelTexGenParameterivSGIS },
	{ "glGetPixelTexGenParameterfvSGIS",  cast(void**)& glGetPixelTexGenParameterfvSGIS },
	{ "glTexImage4DSGIS",  cast(void**)& glTexImage4DSGIS },
	{ "glTexSubImage4DSGIS",  cast(void**)& glTexSubImage4DSGIS },
	{ "glAreTexturesResidentEXT",  cast(void**)& glAreTexturesResidentEXT },
	{ "glBindTextureEXT",  cast(void**)& glBindTextureEXT },
	{ "glDeleteTexturesEXT",  cast(void**)& glDeleteTexturesEXT },
	{ "glGenTexturesEXT",  cast(void**)& glGenTexturesEXT },
	{ "glIsTextureEXT",  cast(void**)& glIsTextureEXT },
	{ "glPrioritizeTexturesEXT",  cast(void**)& glPrioritizeTexturesEXT },
	{ "glDetailTexFuncSGIS",  cast(void**)& glDetailTexFuncSGIS },
	{ "glGetDetailTexFuncSGIS",  cast(void**)& glGetDetailTexFuncSGIS },
	{ "glSharpenTexFuncSGIS",  cast(void**)& glSharpenTexFuncSGIS },
	{ "glGetSharpenTexFuncSGIS",  cast(void**)& glGetSharpenTexFuncSGIS },
	{ "glSampleMaskSGIS",  cast(void**)& glSampleMaskSGIS },
	{ "glSamplePatternSGIS",  cast(void**)& glSamplePatternSGIS },
	{ "glArrayElementEXT",  cast(void**)& glArrayElementEXT },
	{ "glColorPointerEXT",  cast(void**)& glColorPointerEXT },
	{ "glDrawArraysEXT",  cast(void**)& glDrawArraysEXT },
	{ "glEdgeFlagPointerEXT",  cast(void**)& glEdgeFlagPointerEXT },
	{ "glGetPointervEXT",  cast(void**)& glGetPointervEXT },
	{ "glIndexPointerEXT",  cast(void**)& glIndexPointerEXT },
	{ "glNormalPointerEXT",  cast(void**)& glNormalPointerEXT },
	{ "glTexCoordPointerEXT",  cast(void**)& glTexCoordPointerEXT },
	{ "glVertexPointerEXT",  cast(void**)& glVertexPointerEXT },
	{ "glBlendEquationEXT",  cast(void**)& glBlendEquationEXT },
	{ "glSpriteParameterfSGIX",  cast(void**)& glSpriteParameterfSGIX },
	{ "glSpriteParameterfvSGIX",  cast(void**)& glSpriteParameterfvSGIX },
	{ "glSpriteParameteriSGIX",  cast(void**)& glSpriteParameteriSGIX },
	{ "glSpriteParameterivSGIX",  cast(void**)& glSpriteParameterivSGIX },
	{ "glPointParameterfEXT",  cast(void**)& glPointParameterfEXT },
	{ "glPointParameterfvEXT",  cast(void**)& glPointParameterfvEXT },
	{ "glPointParameterfSGIS",  cast(void**)& glPointParameterfSGIS },
	{ "glPointParameterfvSGIS",  cast(void**)& glPointParameterfvSGIS },
	{ "glGetInstrumentsSGIX",  cast(void**)& glGetInstrumentsSGIX },
	{ "glInstrumentsBufferSGIX",  cast(void**)& glInstrumentsBufferSGIX },
	{ "glPollInstrumentsSGIX",  cast(void**)& glPollInstrumentsSGIX },
	{ "glReadInstrumentsSGIX",  cast(void**)& glReadInstrumentsSGIX },
	{ "glStartInstrumentsSGIX",  cast(void**)& glStartInstrumentsSGIX },
	{ "glStopInstrumentsSGIX",  cast(void**)& glStopInstrumentsSGIX },
	{ "glFrameZoomSGIX",  cast(void**)& glFrameZoomSGIX },
	{ "glTagSampleBufferSGIX",  cast(void**)& glTagSampleBufferSGIX },
	{ "glDeformationMap3dSGIX",  cast(void**)& glDeformationMap3dSGIX },
	{ "glDeformationMap3fSGIX",  cast(void**)& glDeformationMap3fSGIX },
	{ "glDeformSGIX",  cast(void**)& glDeformSGIX },
	{ "glLoadIdentityDeformationMapSGIX",  cast(void**)& glLoadIdentityDeformationMapSGIX },
	{ "glReferencePlaneSGIX",  cast(void**)& glReferencePlaneSGIX },
	{ "glFlushRasterSGIX",  cast(void**)& glFlushRasterSGIX },
	{ "glFogFuncSGIS",  cast(void**)& glFogFuncSGIS },
	{ "glGetFogFuncSGIS",  cast(void**)& glGetFogFuncSGIS },
	{ "glImageTransformParameteriHP",  cast(void**)& glImageTransformParameteriHP },
	{ "glImageTransformParameterfHP",  cast(void**)& glImageTransformParameterfHP },
	{ "glImageTransformParameterivHP",  cast(void**)& glImageTransformParameterivHP },
	{ "glImageTransformParameterfvHP",  cast(void**)& glImageTransformParameterfvHP },
	{ "glGetImageTransformParameterivHP",  cast(void**)& glGetImageTransformParameterivHP },
	{ "glGetImageTransformParameterfvHP",  cast(void**)& glGetImageTransformParameterfvHP },
	{ "glColorSubTableEXT",  cast(void**)& glColorSubTableEXT },
	{ "glCopyColorSubTableEXT",  cast(void**)& glCopyColorSubTableEXT },
	{ "glHintPGI",  cast(void**)& glHintPGI },
	{ "glColorTableEXT",  cast(void**)& glColorTableEXT },
	{ "glGetColorTableEXT",  cast(void**)& glGetColorTableEXT },
	{ "glGetColorTableParameterivEXT",  cast(void**)& glGetColorTableParameterivEXT },
	{ "glGetColorTableParameterfvEXT",  cast(void**)& glGetColorTableParameterfvEXT },
	{ "glGetListParameterfvSGIX",  cast(void**)& glGetListParameterfvSGIX },
	{ "glGetListParameterivSGIX",  cast(void**)& glGetListParameterivSGIX },
	{ "glListParameterfSGIX",  cast(void**)& glListParameterfSGIX },
	{ "glListParameterfvSGIX",  cast(void**)& glListParameterfvSGIX },
	{ "glListParameteriSGIX",  cast(void**)& glListParameteriSGIX },
	{ "glListParameterivSGIX",  cast(void**)& glListParameterivSGIX },
	{ "glIndexMaterialEXT",  cast(void**)& glIndexMaterialEXT },
	{ "glIndexFuncEXT",  cast(void**)& glIndexFuncEXT },
	{ "glLockArraysEXT",  cast(void**)& glLockArraysEXT },
	{ "glUnlockArraysEXT",  cast(void**)& glUnlockArraysEXT },
	{ "glCullParameterdvEXT",  cast(void**)& glCullParameterdvEXT },
	{ "glCullParameterfvEXT",  cast(void**)& glCullParameterfvEXT },
	{ "glFragmentColorMaterialSGIX",  cast(void**)& glFragmentColorMaterialSGIX },
	{ "glFragmentLightfSGIX",  cast(void**)& glFragmentLightfSGIX },
	{ "glFragmentLightfvSGIX",  cast(void**)& glFragmentLightfvSGIX },
	{ "glFragmentLightiSGIX",  cast(void**)& glFragmentLightiSGIX },
	{ "glFragmentLightivSGIX",  cast(void**)& glFragmentLightivSGIX },
	{ "glFragmentLightModelfSGIX",  cast(void**)& glFragmentLightModelfSGIX },
	{ "glFragmentLightModelfvSGIX",  cast(void**)& glFragmentLightModelfvSGIX },
	{ "glFragmentLightModeliSGIX",  cast(void**)& glFragmentLightModeliSGIX },
	{ "glFragmentLightModelivSGIX",  cast(void**)& glFragmentLightModelivSGIX },
	{ "glFragmentMaterialfSGIX",  cast(void**)& glFragmentMaterialfSGIX },
	{ "glFragmentMaterialfvSGIX",  cast(void**)& glFragmentMaterialfvSGIX },
	{ "glFragmentMaterialiSGIX",  cast(void**)& glFragmentMaterialiSGIX },
	{ "glFragmentMaterialivSGIX",  cast(void**)& glFragmentMaterialivSGIX },
	{ "glGetFragmentLightfvSGIX",  cast(void**)& glGetFragmentLightfvSGIX },
	{ "glGetFragmentLightivSGIX",  cast(void**)& glGetFragmentLightivSGIX },
	{ "glGetFragmentMaterialfvSGIX",  cast(void**)& glGetFragmentMaterialfvSGIX },
	{ "glGetFragmentMaterialivSGIX",  cast(void**)& glGetFragmentMaterialivSGIX },
	{ "glLightEnviSGIX",  cast(void**)& glLightEnviSGIX },
	{ "glDrawRangeElementsEXT",  cast(void**)& glDrawRangeElementsEXT },
	{ "glApplyTextureEXT",  cast(void**)& glApplyTextureEXT },
	{ "glTextureLightEXT",  cast(void**)& glTextureLightEXT },
	{ "glTextureMaterialEXT",  cast(void**)& glTextureMaterialEXT },
	{ "glAsyncMarkerSGIX",  cast(void**)& glAsyncMarkerSGIX },
	{ "glFinishAsyncSGIX",  cast(void**)& glFinishAsyncSGIX },
	{ "glPollAsyncSGIX",  cast(void**)& glPollAsyncSGIX },
	{ "glGenAsyncMarkersSGIX",  cast(void**)& glGenAsyncMarkersSGIX },
	{ "glDeleteAsyncMarkersSGIX",  cast(void**)& glDeleteAsyncMarkersSGIX },
	{ "glIsAsyncMarkerSGIX",  cast(void**)& glIsAsyncMarkerSGIX },
	{ "glVertexPointervINTEL",  cast(void**)& glVertexPointervINTEL },
	{ "glNormalPointervINTEL",  cast(void**)& glNormalPointervINTEL },
	{ "glColorPointervINTEL",  cast(void**)& glColorPointervINTEL },
	{ "glTexCoordPointervINTEL",  cast(void**)& glTexCoordPointervINTEL },
	{ "glPixelTransformParameteriEXT",  cast(void**)& glPixelTransformParameteriEXT },
	{ "glPixelTransformParameterfEXT",  cast(void**)& glPixelTransformParameterfEXT },
	{ "glPixelTransformParameterivEXT",  cast(void**)& glPixelTransformParameterivEXT },
	{ "glPixelTransformParameterfvEXT",  cast(void**)& glPixelTransformParameterfvEXT },
	{ "glSecondaryColor3bEXT",  cast(void**)& glSecondaryColor3bEXT },
	{ "glSecondaryColor3bvEXT",  cast(void**)& glSecondaryColor3bvEXT },
	{ "glSecondaryColor3dEXT",  cast(void**)& glSecondaryColor3dEXT },
	{ "glSecondaryColor3dvEXT",  cast(void**)& glSecondaryColor3dvEXT },
	{ "glSecondaryColor3fEXT",  cast(void**)& glSecondaryColor3fEXT },
	{ "glSecondaryColor3fvEXT",  cast(void**)& glSecondaryColor3fvEXT },
	{ "glSecondaryColor3iEXT",  cast(void**)& glSecondaryColor3iEXT },
	{ "glSecondaryColor3ivEXT",  cast(void**)& glSecondaryColor3ivEXT },
	{ "glSecondaryColor3sEXT",  cast(void**)& glSecondaryColor3sEXT },
	{ "glSecondaryColor3svEXT",  cast(void**)& glSecondaryColor3svEXT },
	{ "glSecondaryColor3ubEXT",  cast(void**)& glSecondaryColor3ubEXT },
	{ "glSecondaryColor3ubvEXT",  cast(void**)& glSecondaryColor3ubvEXT },
	{ "glSecondaryColor3uiEXT",  cast(void**)& glSecondaryColor3uiEXT },
	{ "glSecondaryColor3uivEXT",  cast(void**)& glSecondaryColor3uivEXT },
	{ "glSecondaryColor3usEXT",  cast(void**)& glSecondaryColor3usEXT },
	{ "glSecondaryColor3usvEXT",  cast(void**)& glSecondaryColor3usvEXT },
	{ "glSecondaryColorPointerEXT",  cast(void**)& glSecondaryColorPointerEXT },
	{ "glTextureNormalEXT",  cast(void**)& glTextureNormalEXT },
	{ "glMultiDrawArraysEXT",  cast(void**)& glMultiDrawArraysEXT },
	{ "glMultiDrawElementsEXT",  cast(void**)& glMultiDrawElementsEXT },
	{ "glFogCoordfEXT",  cast(void**)& glFogCoordfEXT },
	{ "glFogCoordfvEXT",  cast(void**)& glFogCoordfvEXT },
	{ "glFogCoorddEXT",  cast(void**)& glFogCoorddEXT },
	{ "glFogCoorddvEXT",  cast(void**)& glFogCoorddvEXT },
	{ "glFogCoordPointerEXT",  cast(void**)& glFogCoordPointerEXT },
	{ "glTangent3bEXT",  cast(void**)& glTangent3bEXT },
	{ "glTangent3bvEXT",  cast(void**)& glTangent3bvEXT },
	{ "glTangent3dEXT",  cast(void**)& glTangent3dEXT },
	{ "glTangent3dvEXT",  cast(void**)& glTangent3dvEXT },
	{ "glTangent3fEXT",  cast(void**)& glTangent3fEXT },
	{ "glTangent3fvEXT",  cast(void**)& glTangent3fvEXT },
	{ "glTangent3iEXT",  cast(void**)& glTangent3iEXT },
	{ "glTangent3ivEXT",  cast(void**)& glTangent3ivEXT },
	{ "glTangent3sEXT",  cast(void**)& glTangent3sEXT },
	{ "glTangent3svEXT",  cast(void**)& glTangent3svEXT },
	{ "glBinormal3bEXT",  cast(void**)& glBinormal3bEXT },
	{ "glBinormal3bvEXT",  cast(void**)& glBinormal3bvEXT },
	{ "glBinormal3dEXT",  cast(void**)& glBinormal3dEXT },
	{ "glBinormal3dvEXT",  cast(void**)& glBinormal3dvEXT },
	{ "glBinormal3fEXT",  cast(void**)& glBinormal3fEXT },
	{ "glBinormal3fvEXT",  cast(void**)& glBinormal3fvEXT },
	{ "glBinormal3iEXT",  cast(void**)& glBinormal3iEXT },
	{ "glBinormal3ivEXT",  cast(void**)& glBinormal3ivEXT },
	{ "glBinormal3sEXT",  cast(void**)& glBinormal3sEXT },
	{ "glBinormal3svEXT",  cast(void**)& glBinormal3svEXT },
	{ "glTangentPointerEXT",  cast(void**)& glTangentPointerEXT },
	{ "glBinormalPointerEXT",  cast(void**)& glBinormalPointerEXT },
	{ "glFinishTextureSUNX",  cast(void**)& glFinishTextureSUNX },
	{ "glGlobalAlphaFactorbSUN",  cast(void**)& glGlobalAlphaFactorbSUN },
	{ "glGlobalAlphaFactorsSUN",  cast(void**)& glGlobalAlphaFactorsSUN },
	{ "glGlobalAlphaFactoriSUN",  cast(void**)& glGlobalAlphaFactoriSUN },
	{ "glGlobalAlphaFactorfSUN",  cast(void**)& glGlobalAlphaFactorfSUN },
	{ "glGlobalAlphaFactordSUN",  cast(void**)& glGlobalAlphaFactordSUN },
	{ "glGlobalAlphaFactorubSUN",  cast(void**)& glGlobalAlphaFactorubSUN },
	{ "glGlobalAlphaFactorusSUN",  cast(void**)& glGlobalAlphaFactorusSUN },
	{ "glGlobalAlphaFactoruiSUN",  cast(void**)& glGlobalAlphaFactoruiSUN },
	{ "glReplacementCodeuiSUN",  cast(void**)& glReplacementCodeuiSUN },
	{ "glReplacementCodeusSUN",  cast(void**)& glReplacementCodeusSUN },
	{ "glReplacementCodeubSUN",  cast(void**)& glReplacementCodeubSUN },
	{ "glReplacementCodeuivSUN",  cast(void**)& glReplacementCodeuivSUN },
	{ "glReplacementCodeusvSUN",  cast(void**)& glReplacementCodeusvSUN },
	{ "glReplacementCodeubvSUN",  cast(void**)& glReplacementCodeubvSUN },
	{ "glReplacementCodePointerSUN",  cast(void**)& glReplacementCodePointerSUN },
	{ "glColor4ubVertex2fSUN",  cast(void**)& glColor4ubVertex2fSUN },
	{ "glColor4ubVertex2fvSUN",  cast(void**)& glColor4ubVertex2fvSUN },
	{ "glColor4ubVertex3fSUN",  cast(void**)& glColor4ubVertex3fSUN },
	{ "glColor4ubVertex3fvSUN",  cast(void**)& glColor4ubVertex3fvSUN },
	{ "glColor3fVertex3fSUN",  cast(void**)& glColor3fVertex3fSUN },
	{ "glColor3fVertex3fvSUN",  cast(void**)& glColor3fVertex3fvSUN },
	{ "glNormal3fVertex3fSUN",  cast(void**)& glNormal3fVertex3fSUN },
	{ "glNormal3fVertex3fvSUN",  cast(void**)& glNormal3fVertex3fvSUN },
	{ "glColor4fNormal3fVertex3fSUN",  cast(void**)& glColor4fNormal3fVertex3fSUN },
	{ "glColor4fNormal3fVertex3fvSUN",  cast(void**)& glColor4fNormal3fVertex3fvSUN },
	{ "glTexCoord2fVertex3fSUN",  cast(void**)& glTexCoord2fVertex3fSUN },
	{ "glTexCoord2fVertex3fvSUN",  cast(void**)& glTexCoord2fVertex3fvSUN },
	{ "glTexCoord4fVertex4fSUN",  cast(void**)& glTexCoord4fVertex4fSUN },
	{ "glTexCoord4fVertex4fvSUN",  cast(void**)& glTexCoord4fVertex4fvSUN },
	{ "glTexCoord2fColor4ubVertex3fSUN",  cast(void**)& glTexCoord2fColor4ubVertex3fSUN },
	{ "glTexCoord2fColor4ubVertex3fvSUN",  cast(void**)& glTexCoord2fColor4ubVertex3fvSUN },
	{ "glTexCoord2fColor3fVertex3fSUN",  cast(void**)& glTexCoord2fColor3fVertex3fSUN },
	{ "glTexCoord2fColor3fVertex3fvSUN",  cast(void**)& glTexCoord2fColor3fVertex3fvSUN },
	{ "glTexCoord2fNormal3fVertex3fSUN",  cast(void**)& glTexCoord2fNormal3fVertex3fSUN },
	{ "glTexCoord2fNormal3fVertex3fvSUN",  cast(void**)& glTexCoord2fNormal3fVertex3fvSUN },
	{ "glTexCoord2fColor4fNormal3fVertex3fSUN",  cast(void**)& glTexCoord2fColor4fNormal3fVertex3fSUN },
	{ "glTexCoord2fColor4fNormal3fVertex3fvSUN",  cast(void**)& glTexCoord2fColor4fNormal3fVertex3fvSUN },
	{ "glTexCoord4fColor4fNormal3fVertex4fSUN",  cast(void**)& glTexCoord4fColor4fNormal3fVertex4fSUN },
	{ "glTexCoord4fColor4fNormal3fVertex4fvSUN",  cast(void**)& glTexCoord4fColor4fNormal3fVertex4fvSUN },
	{ "glReplacementCodeuiVertex3fSUN",  cast(void**)& glReplacementCodeuiVertex3fSUN },
	{ "glReplacementCodeuiVertex3fvSUN",  cast(void**)& glReplacementCodeuiVertex3fvSUN },
	{ "glReplacementCodeuiColor4ubVertex3fSUN",  cast(void**)& glReplacementCodeuiColor4ubVertex3fSUN },
	{ "glReplacementCodeuiColor4ubVertex3fvSUN",  cast(void**)& glReplacementCodeuiColor4ubVertex3fvSUN },
	{ "glReplacementCodeuiColor3fVertex3fSUN",  cast(void**)& glReplacementCodeuiColor3fVertex3fSUN },
	{ "glReplacementCodeuiColor3fVertex3fvSUN",  cast(void**)& glReplacementCodeuiColor3fVertex3fvSUN },
	{ "glReplacementCodeuiNormal3fVertex3fSUN",  cast(void**)& glReplacementCodeuiNormal3fVertex3fSUN },
	{ "glReplacementCodeuiNormal3fVertex3fvSUN",  cast(void**)& glReplacementCodeuiNormal3fVertex3fvSUN },
	{ "glReplacementCodeuiColor4fNormal3fVertex3fSUN",  cast(void**)& glReplacementCodeuiColor4fNormal3fVertex3fSUN },
	{ "glReplacementCodeuiColor4fNormal3fVertex3fvSUN",  cast(void**)& glReplacementCodeuiColor4fNormal3fVertex3fvSUN },
	{ "glReplacementCodeuiTexCoord2fVertex3fSUN",  cast(void**)& glReplacementCodeuiTexCoord2fVertex3fSUN },
	{ "glReplacementCodeuiTexCoord2fVertex3fvSUN",  cast(void**)& glReplacementCodeuiTexCoord2fVertex3fvSUN },
	{ "glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN",  cast(void**)& glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN },
	{ "glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN",  cast(void**)& glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN },
	{ "glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN",  cast(void**)& glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN },
	{ "glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN",  cast(void**)& glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN },
	{ "glBlendFuncSeparateEXT",  cast(void**)& glBlendFuncSeparateEXT },
	{ "glBlendFuncSeparateINGR",  cast(void**)& glBlendFuncSeparateINGR },
	{ "glVertexWeightfEXT",  cast(void**)& glVertexWeightfEXT },
	{ "glVertexWeightfvEXT",  cast(void**)& glVertexWeightfvEXT },
	{ "glVertexWeightPointerEXT",  cast(void**)& glVertexWeightPointerEXT },
	{ "glFlushVertexArrayRangeNV",  cast(void**)& glFlushVertexArrayRangeNV },
	{ "glVertexArrayRangeNV",  cast(void**)& glVertexArrayRangeNV },
	{ "glCombinerParameterfvNV",  cast(void**)& glCombinerParameterfvNV },
	{ "glCombinerParameterfNV",  cast(void**)& glCombinerParameterfNV },
	{ "glCombinerParameterivNV",  cast(void**)& glCombinerParameterivNV },
	{ "glCombinerParameteriNV",  cast(void**)& glCombinerParameteriNV },
	{ "glCombinerInputNV",  cast(void**)& glCombinerInputNV },
	{ "glCombinerOutputNV",  cast(void**)& glCombinerOutputNV },
	{ "glFinalCombinerInputNV",  cast(void**)& glFinalCombinerInputNV },
	{ "glGetCombinerInputParameterfvNV",  cast(void**)& glGetCombinerInputParameterfvNV },
	{ "glGetCombinerInputParameterivNV",  cast(void**)& glGetCombinerInputParameterivNV },
	{ "glGetCombinerOutputParameterfvNV",  cast(void**)& glGetCombinerOutputParameterfvNV },
	{ "glGetCombinerOutputParameterivNV",  cast(void**)& glGetCombinerOutputParameterivNV },
	{ "glGetFinalCombinerInputParameterfvNV",  cast(void**)& glGetFinalCombinerInputParameterfvNV },
	{ "glGetFinalCombinerInputParameterivNV",  cast(void**)& glGetFinalCombinerInputParameterivNV },
	{ "glResizeBuffersMESA",  cast(void**)& glResizeBuffersMESA },
	{ "glWindowPos2dMESA",  cast(void**)& glWindowPos2dMESA },
	{ "glWindowPos2dvMESA",  cast(void**)& glWindowPos2dvMESA },
	{ "glWindowPos2fMESA",  cast(void**)& glWindowPos2fMESA },
	{ "glWindowPos2fvMESA",  cast(void**)& glWindowPos2fvMESA },
	{ "glWindowPos2iMESA",  cast(void**)& glWindowPos2iMESA },
	{ "glWindowPos2ivMESA",  cast(void**)& glWindowPos2ivMESA },
	{ "glWindowPos2sMESA",  cast(void**)& glWindowPos2sMESA },
	{ "glWindowPos2svMESA",  cast(void**)& glWindowPos2svMESA },
	{ "glWindowPos3dMESA",  cast(void**)& glWindowPos3dMESA },
	{ "glWindowPos3dvMESA",  cast(void**)& glWindowPos3dvMESA },
	{ "glWindowPos3fMESA",  cast(void**)& glWindowPos3fMESA },
	{ "glWindowPos3fvMESA",  cast(void**)& glWindowPos3fvMESA },
	{ "glWindowPos3iMESA",  cast(void**)& glWindowPos3iMESA },
	{ "glWindowPos3ivMESA",  cast(void**)& glWindowPos3ivMESA },
	{ "glWindowPos3sMESA",  cast(void**)& glWindowPos3sMESA },
	{ "glWindowPos3svMESA",  cast(void**)& glWindowPos3svMESA },
	{ "glWindowPos4dMESA",  cast(void**)& glWindowPos4dMESA },
	{ "glWindowPos4dvMESA",  cast(void**)& glWindowPos4dvMESA },
	{ "glWindowPos4fMESA",  cast(void**)& glWindowPos4fMESA },
	{ "glWindowPos4fvMESA",  cast(void**)& glWindowPos4fvMESA },
	{ "glWindowPos4iMESA",  cast(void**)& glWindowPos4iMESA },
	{ "glWindowPos4ivMESA",  cast(void**)& glWindowPos4ivMESA },
	{ "glWindowPos4sMESA",  cast(void**)& glWindowPos4sMESA },
	{ "glWindowPos4svMESA",  cast(void**)& glWindowPos4svMESA },
	{ "glMultiModeDrawArraysIBM",  cast(void**)& glMultiModeDrawArraysIBM },
	{ "glMultiModeDrawElementsIBM",  cast(void**)& glMultiModeDrawElementsIBM },
	{ "glColorPointerListIBM",  cast(void**)& glColorPointerListIBM },
	{ "glSecondaryColorPointerListIBM",  cast(void**)& glSecondaryColorPointerListIBM },
	{ "glEdgeFlagPointerListIBM",  cast(void**)& glEdgeFlagPointerListIBM },
	{ "glFogCoordPointerListIBM",  cast(void**)& glFogCoordPointerListIBM },
	{ "glIndexPointerListIBM",  cast(void**)& glIndexPointerListIBM },
	{ "glNormalPointerListIBM",  cast(void**)& glNormalPointerListIBM },
	{ "glTexCoordPointerListIBM",  cast(void**)& glTexCoordPointerListIBM },
	{ "glVertexPointerListIBM",  cast(void**)& glVertexPointerListIBM },
	{ "glTbufferMask3DFX",  cast(void**)& glTbufferMask3DFX },
	{ "glSampleMaskEXT",  cast(void**)& glSampleMaskEXT },
	{ "glSamplePatternEXT",  cast(void**)& glSamplePatternEXT },
	{ "glTextureColorMaskSGIS",  cast(void**)& glTextureColorMaskSGIS },
	{ "glIglooInterfaceSGIX",  cast(void**)& glIglooInterfaceSGIX },
	{ "glDeleteFencesNV",  cast(void**)& glDeleteFencesNV },
	{ "glGenFencesNV",  cast(void**)& glGenFencesNV },
	{ "glIsFenceNV",  cast(void**)& glIsFenceNV },
	{ "glTestFenceNV",  cast(void**)& glTestFenceNV },
	{ "glGetFenceivNV",  cast(void**)& glGetFenceivNV },
	{ "glFinishFenceNV",  cast(void**)& glFinishFenceNV },
	{ "glSetFenceNV",  cast(void**)& glSetFenceNV },
	{ "glMapControlPointsNV",  cast(void**)& glMapControlPointsNV },
	{ "glMapParameterivNV",  cast(void**)& glMapParameterivNV },
	{ "glMapParameterfvNV",  cast(void**)& glMapParameterfvNV },
	{ "glGetMapControlPointsNV",  cast(void**)& glGetMapControlPointsNV },
	{ "glGetMapParameterivNV",  cast(void**)& glGetMapParameterivNV },
	{ "glGetMapParameterfvNV",  cast(void**)& glGetMapParameterfvNV },
	{ "glGetMapAttribParameterivNV",  cast(void**)& glGetMapAttribParameterivNV },
	{ "glGetMapAttribParameterfvNV",  cast(void**)& glGetMapAttribParameterfvNV },
	{ "glEvalMapsNV",  cast(void**)& glEvalMapsNV },
	{ "glCombinerStageParameterfvNV",  cast(void**)& glCombinerStageParameterfvNV },
	{ "glGetCombinerStageParameterfvNV",  cast(void**)& glGetCombinerStageParameterfvNV },
	{ "glAreProgramsResidentNV",  cast(void**)& glAreProgramsResidentNV },
	{ "glBindProgramNV",  cast(void**)& glBindProgramNV },
	{ "glDeleteProgramsNV",  cast(void**)& glDeleteProgramsNV },
	{ "glExecuteProgramNV",  cast(void**)& glExecuteProgramNV },
	{ "glGenProgramsNV",  cast(void**)& glGenProgramsNV },
	{ "glGetProgramParameterdvNV",  cast(void**)& glGetProgramParameterdvNV },
	{ "glGetProgramParameterfvNV",  cast(void**)& glGetProgramParameterfvNV },
	{ "glGetProgramivNV",  cast(void**)& glGetProgramivNV },
	{ "glGetProgramStringNV",  cast(void**)& glGetProgramStringNV },
	{ "glGetTrackMatrixivNV",  cast(void**)& glGetTrackMatrixivNV },
	{ "glGetVertexAttribdvNV",  cast(void**)& glGetVertexAttribdvNV },
	{ "glGetVertexAttribfvNV",  cast(void**)& glGetVertexAttribfvNV },
	{ "glGetVertexAttribivNV",  cast(void**)& glGetVertexAttribivNV },
	{ "glGetVertexAttribPointervNV",  cast(void**)& glGetVertexAttribPointervNV },
	{ "glIsProgramNV",  cast(void**)& glIsProgramNV },
	{ "glLoadProgramNV",  cast(void**)& glLoadProgramNV },
	{ "glProgramParameter4dNV",  cast(void**)& glProgramParameter4dNV },
	{ "glProgramParameter4dvNV",  cast(void**)& glProgramParameter4dvNV },
	{ "glProgramParameter4fNV",  cast(void**)& glProgramParameter4fNV },
	{ "glProgramParameter4fvNV",  cast(void**)& glProgramParameter4fvNV },
	{ "glProgramParameters4dvNV",  cast(void**)& glProgramParameters4dvNV },
	{ "glProgramParameters4fvNV",  cast(void**)& glProgramParameters4fvNV },
	{ "glRequestResidentProgramsNV",  cast(void**)& glRequestResidentProgramsNV },
	{ "glTrackMatrixNV",  cast(void**)& glTrackMatrixNV },
	{ "glVertexAttribPointerNV",  cast(void**)& glVertexAttribPointerNV },
	{ "glVertexAttrib1dNV",  cast(void**)& glVertexAttrib1dNV },
	{ "glVertexAttrib1dvNV",  cast(void**)& glVertexAttrib1dvNV },
	{ "glVertexAttrib1fNV",  cast(void**)& glVertexAttrib1fNV },
	{ "glVertexAttrib1fvNV",  cast(void**)& glVertexAttrib1fvNV },
	{ "glVertexAttrib1sNV",  cast(void**)& glVertexAttrib1sNV },
	{ "glVertexAttrib1svNV",  cast(void**)& glVertexAttrib1svNV },
	{ "glVertexAttrib2dNV",  cast(void**)& glVertexAttrib2dNV },
	{ "glVertexAttrib2dvNV",  cast(void**)& glVertexAttrib2dvNV },
	{ "glVertexAttrib2fNV",  cast(void**)& glVertexAttrib2fNV },
	{ "glVertexAttrib2fvNV",  cast(void**)& glVertexAttrib2fvNV },
	{ "glVertexAttrib2sNV",  cast(void**)& glVertexAttrib2sNV },
	{ "glVertexAttrib2svNV",  cast(void**)& glVertexAttrib2svNV },
	{ "glVertexAttrib3dNV",  cast(void**)& glVertexAttrib3dNV },
	{ "glVertexAttrib3dvNV",  cast(void**)& glVertexAttrib3dvNV },
	{ "glVertexAttrib3fNV",  cast(void**)& glVertexAttrib3fNV },
	{ "glVertexAttrib3fvNV",  cast(void**)& glVertexAttrib3fvNV },
	{ "glVertexAttrib3sNV",  cast(void**)& glVertexAttrib3sNV },
	{ "glVertexAttrib3svNV",  cast(void**)& glVertexAttrib3svNV },
	{ "glVertexAttrib4dNV",  cast(void**)& glVertexAttrib4dNV },
	{ "glVertexAttrib4dvNV",  cast(void**)& glVertexAttrib4dvNV },
	{ "glVertexAttrib4fNV",  cast(void**)& glVertexAttrib4fNV },
	{ "glVertexAttrib4fvNV",  cast(void**)& glVertexAttrib4fvNV },
	{ "glVertexAttrib4sNV",  cast(void**)& glVertexAttrib4sNV },
	{ "glVertexAttrib4svNV",  cast(void**)& glVertexAttrib4svNV },
	{ "glVertexAttrib4ubNV",  cast(void**)& glVertexAttrib4ubNV },
	{ "glVertexAttrib4ubvNV",  cast(void**)& glVertexAttrib4ubvNV },
	{ "glVertexAttribs1dvNV",  cast(void**)& glVertexAttribs1dvNV },
	{ "glVertexAttribs1fvNV",  cast(void**)& glVertexAttribs1fvNV },
	{ "glVertexAttribs1svNV",  cast(void**)& glVertexAttribs1svNV },
	{ "glVertexAttribs2dvNV",  cast(void**)& glVertexAttribs2dvNV },
	{ "glVertexAttribs2fvNV",  cast(void**)& glVertexAttribs2fvNV },
	{ "glVertexAttribs2svNV",  cast(void**)& glVertexAttribs2svNV },
	{ "glVertexAttribs3dvNV",  cast(void**)& glVertexAttribs3dvNV },
	{ "glVertexAttribs3fvNV",  cast(void**)& glVertexAttribs3fvNV },
	{ "glVertexAttribs3svNV",  cast(void**)& glVertexAttribs3svNV },
	{ "glVertexAttribs4dvNV",  cast(void**)& glVertexAttribs4dvNV },
	{ "glVertexAttribs4fvNV",  cast(void**)& glVertexAttribs4fvNV },
	{ "glVertexAttribs4svNV",  cast(void**)& glVertexAttribs4svNV },
	{ "glVertexAttribs4ubvNV",  cast(void**)& glVertexAttribs4ubvNV },
	{ "glTexBumpParameterivATI",  cast(void**)& glTexBumpParameterivATI },
	{ "glTexBumpParameterfvATI",  cast(void**)& glTexBumpParameterfvATI },
	{ "glGetTexBumpParameterivATI",  cast(void**)& glGetTexBumpParameterivATI },
	{ "glGetTexBumpParameterfvATI",  cast(void**)& glGetTexBumpParameterfvATI },
	{ "glGenFragmentShadersATI",  cast(void**)& glGenFragmentShadersATI },
	{ "glBindFragmentShaderATI",  cast(void**)& glBindFragmentShaderATI },
	{ "glDeleteFragmentShaderATI",  cast(void**)& glDeleteFragmentShaderATI },
	{ "glBeginFragmentShaderATI",  cast(void**)& glBeginFragmentShaderATI },
	{ "glEndFragmentShaderATI",  cast(void**)& glEndFragmentShaderATI },
	{ "glPassTexCoordATI",  cast(void**)& glPassTexCoordATI },
	{ "glSampleMapATI",  cast(void**)& glSampleMapATI },
	{ "glColorFragmentOp1ATI",  cast(void**)& glColorFragmentOp1ATI },
	{ "glColorFragmentOp2ATI",  cast(void**)& glColorFragmentOp2ATI },
	{ "glColorFragmentOp3ATI",  cast(void**)& glColorFragmentOp3ATI },
	{ "glAlphaFragmentOp1ATI",  cast(void**)& glAlphaFragmentOp1ATI },
	{ "glAlphaFragmentOp2ATI",  cast(void**)& glAlphaFragmentOp2ATI },
	{ "glAlphaFragmentOp3ATI",  cast(void**)& glAlphaFragmentOp3ATI },
	{ "glSetFragmentShaderConstantATI",  cast(void**)& glSetFragmentShaderConstantATI },
	{ "glPNTrianglesiATI",  cast(void**)& glPNTrianglesiATI },
	{ "glPNTrianglesfATI",  cast(void**)& glPNTrianglesfATI },
	{ "glNewObjectBufferATI",  cast(void**)& glNewObjectBufferATI },
	{ "glIsObjectBufferATI",  cast(void**)& glIsObjectBufferATI },
	{ "glUpdateObjectBufferATI",  cast(void**)& glUpdateObjectBufferATI },
	{ "glGetObjectBufferfvATI",  cast(void**)& glGetObjectBufferfvATI },
	{ "glGetObjectBufferivATI",  cast(void**)& glGetObjectBufferivATI },
	{ "glDeleteObjectBufferATI",  cast(void**)& glDeleteObjectBufferATI },
	{ "glArrayObjectATI",  cast(void**)& glArrayObjectATI },
	{ "glGetArrayObjectfvATI",  cast(void**)& glGetArrayObjectfvATI },
	{ "glGetArrayObjectivATI",  cast(void**)& glGetArrayObjectivATI },
	{ "glVariantArrayObjectATI",  cast(void**)& glVariantArrayObjectATI },
	{ "glGetVariantArrayObjectfvATI",  cast(void**)& glGetVariantArrayObjectfvATI },
	{ "glGetVariantArrayObjectivATI",  cast(void**)& glGetVariantArrayObjectivATI },
	{ "glBeginVertexShaderEXT",  cast(void**)& glBeginVertexShaderEXT },
	{ "glEndVertexShaderEXT",  cast(void**)& glEndVertexShaderEXT },
	{ "glBindVertexShaderEXT",  cast(void**)& glBindVertexShaderEXT },
	{ "glGenVertexShadersEXT",  cast(void**)& glGenVertexShadersEXT },
	{ "glDeleteVertexShaderEXT",  cast(void**)& glDeleteVertexShaderEXT },
	{ "glShaderOp1EXT",  cast(void**)& glShaderOp1EXT },
	{ "glShaderOp2EXT",  cast(void**)& glShaderOp2EXT },
	{ "glShaderOp3EXT",  cast(void**)& glShaderOp3EXT },
	{ "glSwizzleEXT",  cast(void**)& glSwizzleEXT },
	{ "glWriteMaskEXT",  cast(void**)& glWriteMaskEXT },
	{ "glInsertComponentEXT",  cast(void**)& glInsertComponentEXT },
	{ "glExtractComponentEXT",  cast(void**)& glExtractComponentEXT },
	{ "glGenSymbolsEXT",  cast(void**)& glGenSymbolsEXT },
	{ "glSetInvariantEXT",  cast(void**)& glSetInvariantEXT },
	{ "glSetLocalConstantEXT",  cast(void**)& glSetLocalConstantEXT },
	{ "glVariantbvEXT",  cast(void**)& glVariantbvEXT },
	{ "glVariantsvEXT",  cast(void**)& glVariantsvEXT },
	{ "glVariantivEXT",  cast(void**)& glVariantivEXT },
	{ "glVariantfvEXT",  cast(void**)& glVariantfvEXT },
	{ "glVariantdvEXT",  cast(void**)& glVariantdvEXT },
	{ "glVariantubvEXT",  cast(void**)& glVariantubvEXT },
	{ "glVariantusvEXT",  cast(void**)& glVariantusvEXT },
	{ "glVariantuivEXT",  cast(void**)& glVariantuivEXT },
	{ "glVariantPointerEXT",  cast(void**)& glVariantPointerEXT },
	{ "glEnableVariantClientStateEXT",  cast(void**)& glEnableVariantClientStateEXT },
	{ "glDisableVariantClientStateEXT",  cast(void**)& glDisableVariantClientStateEXT },
	{ "glBindLightParameterEXT",  cast(void**)& glBindLightParameterEXT },
	{ "glBindMaterialParameterEXT",  cast(void**)& glBindMaterialParameterEXT },
	{ "glBindTexGenParameterEXT",  cast(void**)& glBindTexGenParameterEXT },
	{ "glBindTextureUnitParameterEXT",  cast(void**)& glBindTextureUnitParameterEXT },
	{ "glBindParameterEXT",  cast(void**)& glBindParameterEXT },
	{ "glIsVariantEnabledEXT",  cast(void**)& glIsVariantEnabledEXT },
	{ "glGetVariantBooleanvEXT",  cast(void**)& glGetVariantBooleanvEXT },
	{ "glGetVariantIntegervEXT",  cast(void**)& glGetVariantIntegervEXT },
	{ "glGetVariantFloatvEXT",  cast(void**)& glGetVariantFloatvEXT },
	{ "glGetVariantPointervEXT",  cast(void**)& glGetVariantPointervEXT },
	{ "glGetInvariantBooleanvEXT",  cast(void**)& glGetInvariantBooleanvEXT },
	{ "glGetInvariantIntegervEXT",  cast(void**)& glGetInvariantIntegervEXT },
	{ "glGetInvariantFloatvEXT",  cast(void**)& glGetInvariantFloatvEXT },
	{ "glGetLocalConstantBooleanvEXT",  cast(void**)& glGetLocalConstantBooleanvEXT },
	{ "glGetLocalConstantIntegervEXT",  cast(void**)& glGetLocalConstantIntegervEXT },
	{ "glGetLocalConstantFloatvEXT",  cast(void**)& glGetLocalConstantFloatvEXT },
	{ "glVertexStream1sATI",  cast(void**)& glVertexStream1sATI },
	{ "glVertexStream1svATI",  cast(void**)& glVertexStream1svATI },
	{ "glVertexStream1iATI",  cast(void**)& glVertexStream1iATI },
	{ "glVertexStream1ivATI",  cast(void**)& glVertexStream1ivATI },
	{ "glVertexStream1fATI",  cast(void**)& glVertexStream1fATI },
	{ "glVertexStream1fvATI",  cast(void**)& glVertexStream1fvATI },
	{ "glVertexStream1dATI",  cast(void**)& glVertexStream1dATI },
	{ "glVertexStream1dvATI",  cast(void**)& glVertexStream1dvATI },
	{ "glVertexStream2sATI",  cast(void**)& glVertexStream2sATI },
	{ "glVertexStream2svATI",  cast(void**)& glVertexStream2svATI },
	{ "glVertexStream2iATI",  cast(void**)& glVertexStream2iATI },
	{ "glVertexStream2ivATI",  cast(void**)& glVertexStream2ivATI },
	{ "glVertexStream2fATI",  cast(void**)& glVertexStream2fATI },
	{ "glVertexStream2fvATI",  cast(void**)& glVertexStream2fvATI },
	{ "glVertexStream2dATI",  cast(void**)& glVertexStream2dATI },
	{ "glVertexStream2dvATI",  cast(void**)& glVertexStream2dvATI },
	{ "glVertexStream3sATI",  cast(void**)& glVertexStream3sATI },
	{ "glVertexStream3svATI",  cast(void**)& glVertexStream3svATI },
	{ "glVertexStream3iATI",  cast(void**)& glVertexStream3iATI },
	{ "glVertexStream3ivATI",  cast(void**)& glVertexStream3ivATI },
	{ "glVertexStream3fATI",  cast(void**)& glVertexStream3fATI },
	{ "glVertexStream3fvATI",  cast(void**)& glVertexStream3fvATI },
	{ "glVertexStream3dATI",  cast(void**)& glVertexStream3dATI },
	{ "glVertexStream3dvATI",  cast(void**)& glVertexStream3dvATI },
	{ "glVertexStream4sATI",  cast(void**)& glVertexStream4sATI },
	{ "glVertexStream4svATI",  cast(void**)& glVertexStream4svATI },
	{ "glVertexStream4iATI",  cast(void**)& glVertexStream4iATI },
	{ "glVertexStream4ivATI",  cast(void**)& glVertexStream4ivATI },
	{ "glVertexStream4fATI",  cast(void**)& glVertexStream4fATI },
	{ "glVertexStream4fvATI",  cast(void**)& glVertexStream4fvATI },
	{ "glVertexStream4dATI",  cast(void**)& glVertexStream4dATI },
	{ "glVertexStream4dvATI",  cast(void**)& glVertexStream4dvATI },
	{ "glNormalStream3bATI",  cast(void**)& glNormalStream3bATI },
	{ "glNormalStream3bvATI",  cast(void**)& glNormalStream3bvATI },
	{ "glNormalStream3sATI",  cast(void**)& glNormalStream3sATI },
	{ "glNormalStream3svATI",  cast(void**)& glNormalStream3svATI },
	{ "glNormalStream3iATI",  cast(void**)& glNormalStream3iATI },
	{ "glNormalStream3ivATI",  cast(void**)& glNormalStream3ivATI },
	{ "glNormalStream3fATI",  cast(void**)& glNormalStream3fATI },
	{ "glNormalStream3fvATI",  cast(void**)& glNormalStream3fvATI },
	{ "glNormalStream3dATI",  cast(void**)& glNormalStream3dATI },
	{ "glNormalStream3dvATI",  cast(void**)& glNormalStream3dvATI },
	{ "glClientActiveVertexStreamATI",  cast(void**)& glClientActiveVertexStreamATI },
	{ "glVertexBlendEnviATI",  cast(void**)& glVertexBlendEnviATI },
	{ "glVertexBlendEnvfATI",  cast(void**)& glVertexBlendEnvfATI },
	{ "glElementPointerATI",  cast(void**)& glElementPointerATI },
	{ "glDrawElementArrayATI",  cast(void**)& glDrawElementArrayATI },
	{ "glDrawRangeElementArrayATI",  cast(void**)& glDrawRangeElementArrayATI },
	{ "glDrawMeshArraysSUN",  cast(void**)& glDrawMeshArraysSUN },
	{ "glGenOcclusionQueriesNV",  cast(void**)& glGenOcclusionQueriesNV },
	{ "glDeleteOcclusionQueriesNV",  cast(void**)& glDeleteOcclusionQueriesNV },
	{ "glIsOcclusionQueryNV",  cast(void**)& glIsOcclusionQueryNV },
	{ "glBeginOcclusionQueryNV",  cast(void**)& glBeginOcclusionQueryNV },
	{ "glEndOcclusionQueryNV",  cast(void**)& glEndOcclusionQueryNV },
	{ "glGetOcclusionQueryivNV",  cast(void**)& glGetOcclusionQueryivNV },
	{ "glGetOcclusionQueryuivNV",  cast(void**)& glGetOcclusionQueryuivNV },
	{ "glPointParameteriNV",  cast(void**)& glPointParameteriNV },
	{ "glPointParameterivNV",  cast(void**)& glPointParameterivNV },
	{ "glActiveStencilFaceEXT",  cast(void**)& glActiveStencilFaceEXT },
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