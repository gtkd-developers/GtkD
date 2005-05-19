module lib.glext;

/* This is a linux specific gl extension loader; for windows, extensions need to be
   provided via another method. */

version(linux):

private
{
	import lib.gl;
	import lib.loader;
	import lib.paths;
}

private static char[][] failedNames;

class FailResponse 
{
	public void onLoadFailure( char[] name )
	{
		writefln("Function ", name, " failed to load." );
		failedNames ~= name;
	}
}

FailResponse response;

private Linker glext_Linker;

// -------------------------------------------------

static this()
{
		response = new FailResponse;
		glext_Linker = new Linker(libPath ~ importLibs[LIBRARY.GLEXT], &(response.onLoadFailure) );
		glext_Linker.link(glextLinks);
}

// -------------------------------------------------
 
static ~this()
{
	delete glext_Linker;
}

// -------------------------------------------------
/* 
 *	isAvailable() checks to see if the symbol loaded 
 *  when the static module constructor was run.
 *  If the symbol failed to load, the name will have
 *  been recorded in the failedNames list;
 *  This is useful for the extensions library
 *  in case some extensions were not available.
 *  I did this because I'm not sure what glext are
 *  guaranteed to be available on a linux system.
 */

public bool isAvailable( char[] extensionName ) 
{
	foreach ( char[] name; failedNames ) 
	{
		if (extensionName == name)
			return true;
	}		
}

// -------------------------------------------------

alias char uchar;

version(Windows)
	extern(Windows):

version(linux)
	extern(C):
/*
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
*/
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


lib.loader.Symbol[] glextLinks =
[
/*
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
*/
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
	{ "glActiveStencilFaceEXT",  cast(void**)& glActiveStencilFaceEXT }
];

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
** Inc. The Original Code is Copyright (c) 1991-2002 Silicon Graphics, Inc.
** Copyright in any portions created by third parties is as indicated
** elsewhere herein. All Rights Reserved.
** 
** Additional Notice Provisions: This software was created using the
** OpenGL(R) version 1.2.1 Sample Implementation published by SGI, but has
** not been independently verified as being compliant with the OpenGL(R)
** version 1.2.1 Specification.
*/

const int WIN32_LEAN_AND_MEAN = 1;

/*************************************************************/

/* Header file version number, required by OpenGL ABI for Linux */
/* glext.h last updated 2002/08/21 */
/* Current version at http://oss.sgi.com/projects/ogl-sample/registry/ */

const int GL_GLEXT_VERSION = 17;

//#ifndef GL_VERSION_1_2
//imported from gl.gl
//const int GL_UNSIGNED_BYTE_3_3_2 = 0x8032;
//const int GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;
//const int GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;
//const int GL_UNSIGNED_INT_8_8_8_8 = 0x8035;
//const int GL_UNSIGNED_INT_10_10_10_2 = 0x8036;
//const int GL_RESCALE_NORMAL = 0x803A;
//const int GL_TEXTURE_BINDING_3D = 0x806A;
//const int GL_PACK_SKIP_IMAGES = 0x806B;
//const int GL_PACK_IMAGE_HEIGHT = 0x806C;
//const int GL_UNPACK_SKIP_IMAGES = 0x806D;
//const int GL_UNPACK_IMAGE_HEIGHT = 0x806E;
//const int GL_TEXTURE_3D = 0x806F;
//const int GL_PROXY_TEXTURE_3D = 0x8070;
//const int GL_TEXTURE_DEPTH = 0x8071;
//const int GL_TEXTURE_WRAP_R = 0x8072;
//const int GL_MAX_3D_TEXTURE_SIZE = 0x8073;
//const int GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;
//const int GL_UNSIGNED_SHORT_5_6_5 = 0x8363;
//const int GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;
//const int GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
//const int GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
//const int GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;
//const int GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;
//const int GL_BGR = 0x80E0;
//const int GL_BGRA = 0x80E1;
//const int GL_MAX_ELEMENTS_VERTICES = 0x80E8;
//const int GL_MAX_ELEMENTS_INDICES = 0x80E9;
//const int GL_CLAMP_TO_EDGE = 0x812F;
//const int GL_TEXTURE_MIN_LOD = 0x813A;
//const int GL_TEXTURE_MAX_LOD = 0x813B;
//const int GL_TEXTURE_BASE_LEVEL = 0x813C;
//const int GL_TEXTURE_MAX_LEVEL = 0x813D;
//const int GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
//const int GL_SINGLE_COLOR = 0x81F9;
//const int GL_SEPARATE_SPECULAR_COLOR = 0x81FA;
//const int GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;
//const int GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
//const int GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
//const int GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
//const int GL_ALIASED_POINT_SIZE_RANGE = 0x846D;
//const int GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;
//#endif

//#ifndef GL_ARB_imaging
/+
const int GL_CONSTANT_COLOR = 0x8001;
const int GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
const int GL_CONSTANT_ALPHA = 0x8003;
const int GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
const int GL_BLEND_COLOR = 0x8005;
const int GL_FUNC_ADD = 0x8006;
const int GL_MIN = 0x8007;
const int GL_MAX = 0x8008;
const int GL_BLEND_EQUATION = 0x8009;
const int GL_FUNC_SUBTRACT = 0x800A;
const int GL_FUNC_REVERSE_SUBTRACT = 0x800B;
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
const int GL_CONSTANT_BORDER = 0x8151;
const int GL_REPLICATE_BORDER = 0x8153;
const int GL_CONVOLUTION_BORDER_COLOR = 0x8154;
//#endif

//#ifndef GL_VERSION_1_3
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
const int GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
const int GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
const int GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
const int GL_TRANSPOSE_COLOR_MATRIX = 0x84E6;
const int GL_MULTISAMPLE = 0x809D;
const int GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
const int GL_SAMPLE_ALPHA_TO_ONE = 0x809F;
const int GL_SAMPLE_COVERAGE = 0x80A0;
const int GL_SAMPLE_BUFFERS = 0x80A8;
const int GL_SAMPLES = 0x80A9;
const int GL_SAMPLE_COVERAGE_VALUE = 0x80AA;
const int GL_SAMPLE_COVERAGE_INVERT = 0x80AB;
const int GL_MULTISAMPLE_BIT = 0x20000000;
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
const int GL_CLAMP_TO_BORDER = 0x812D;
const int GL_CLAMP_TO_BORDER_SGIS = 0x812D;
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
const int GL_DOT3_RGB = 0x86AE;
const int GL_DOT3_RGBA = 0x86AF;
//#endif
+/
//#ifndef GL_VERSION_1_4
const int GL_BLEND_DST_RGB = 0x80C8;
const int GL_BLEND_SRC_RGB = 0x80C9;
const int GL_BLEND_DST_ALPHA = 0x80CA;
const int GL_BLEND_SRC_ALPHA = 0x80CB;
const int GL_POINT_SIZE_MIN = 0x8126;
const int GL_POINT_SIZE_MAX = 0x8127;
const int GL_POINT_FADE_THRESHOLD_SIZE = 0x8128;
const int GL_POINT_DISTANCE_ATTENUATION = 0x8129;
const int GL_GENERATE_MIPMAP = 0x8191;
const int GL_GENERATE_MIPMAP_HINT = 0x8192;
const int GL_DEPTH_COMPONENT16 = 0x81A5;
const int GL_DEPTH_COMPONENT24 = 0x81A6;
const int GL_DEPTH_COMPONENT32 = 0x81A7;
const int GL_MIRRORED_REPEAT = 0x8370;
const int GL_FOG_COORDINATE_SOURCE = 0x8450;
const int GL_FOG_COORDINATE = 0x8451;
const int GL_FRAGMENT_DEPTH = 0x8452;
const int GL_CURRENT_FOG_COORDINATE = 0x8453;
const int GL_FOG_COORDINATE_ARRAY_TYPE = 0x8454;
const int GL_FOG_COORDINATE_ARRAY_STRIDE = 0x8455;
const int GL_FOG_COORDINATE_ARRAY_POINTER = 0x8456;
const int GL_FOG_COORDINATE_ARRAY = 0x8457;
const int GL_COLOR_SUM = 0x8458;
const int GL_CURRENT_SECONDARY_COLOR = 0x8459;
const int GL_SECONDARY_COLOR_ARRAY_SIZE = 0x845A;
const int GL_SECONDARY_COLOR_ARRAY_TYPE = 0x845B;
const int GL_SECONDARY_COLOR_ARRAY_STRIDE = 0x845C;
const int GL_SECONDARY_COLOR_ARRAY_POINTER = 0x845D;
const int GL_SECONDARY_COLOR_ARRAY = 0x845E;
const int GL_MAX_TEXTURE_LOD_BIAS = 0x84FD;
const int GL_TEXTURE_FILTER_CONTROL = 0x8500;
const int GL_TEXTURE_LOD_BIAS = 0x8501;
const int GL_INCR_WRAP = 0x8507;
const int GL_DECR_WRAP = 0x8508;
const int GL_TEXTURE_DEPTH_SIZE = 0x884A;
const int GL_DEPTH_TEXTURE_MODE = 0x884B;
const int GL_TEXTURE_COMPARE_MODE = 0x884C;
const int GL_TEXTURE_COMPARE_FUNC = 0x884D;
const int GL_COMPARE_R_TO_TEXTURE = 0x884E;
//#endif

//#ifndef GL_ARB_multitexture
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
//#endif

//#ifndef GL_ARB_transpose_matrix
const int GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84E3;
const int GL_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4;
const int GL_TRANSPOSE_TEXTURE_MATRIX_ARB = 0x84E5;
const int GL_TRANSPOSE_COLOR_MATRIX_ARB = 0x84E6;
//#endif

//#ifndef GL_ARB_multisample
const int GL_MULTISAMPLE_ARB = 0x809D;
const int GL_SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809E;
const int GL_SAMPLE_ALPHA_TO_ONE_ARB = 0x809F;
const int GL_SAMPLE_COVERAGE_ARB = 0x80A0;
const int GL_SAMPLE_BUFFERS_ARB = 0x80A8;
const int GL_SAMPLES_ARB = 0x80A9;
const int GL_SAMPLE_COVERAGE_VALUE_ARB = 0x80AA;
const int GL_SAMPLE_COVERAGE_INVERT_ARB = 0x80AB;
const int GL_MULTISAMPLE_BIT_ARB = 0x20000000;
//#endif

//#ifndef GL_ARB_texture_env_add
//#endif

//#ifndef GL_ARB_texture_cube_map
const int GL_NORMAL_MAP_ARB = 0x8511;
const int GL_REFLECTION_MAP_ARB = 0x8512;
const int GL_TEXTURE_CUBE_MAP_ARB = 0x8513;
const int GL_TEXTURE_BINDING_CUBE_MAP_ARB = 0x8514;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x8515;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x8516;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x8517;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x8518;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x8519;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x851A;
const int GL_PROXY_TEXTURE_CUBE_MAP_ARB = 0x851B;
const int GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = 0x851C;
//#endif

//#ifndef GL_ARB_texture_compression
const int GL_COMPRESSED_ALPHA_ARB = 0x84E9;
const int GL_COMPRESSED_LUMINANCE_ARB = 0x84EA;
const int GL_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84EB;
const int GL_COMPRESSED_INTENSITY_ARB = 0x84EC;
const int GL_COMPRESSED_RGB_ARB = 0x84ED;
const int GL_COMPRESSED_RGBA_ARB = 0x84EE;
const int GL_TEXTURE_COMPRESSION_HINT_ARB = 0x84EF;
const int GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86A0;
const int GL_TEXTURE_COMPRESSED_ARB = 0x86A1;
const int GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2;
const int GL_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A3;
//#endif

//#ifndef GL_ARB_texture_border_clamp
const int GL_CLAMP_TO_BORDER_ARB = 0x812D;
//#endif

//#ifndef GL_ARB_point_parameters
const int GL_POINT_SIZE_MIN_ARB = 0x8126;
const int GL_POINT_SIZE_MAX_ARB = 0x8127;
const int GL_POINT_FADE_THRESHOLD_SIZE_ARB = 0x8128;
const int GL_POINT_DISTANCE_ATTENUATION_ARB = 0x8129;
//#endif

//#ifndef GL_ARB_vertex_blend
const int GL_MAX_VERTEX_UNITS_ARB = 0x86A4;
const int GL_ACTIVE_VERTEX_UNITS_ARB = 0x86A5;
const int GL_WEIGHT_SUM_UNITY_ARB = 0x86A6;
const int GL_VERTEX_BLEND_ARB = 0x86A7;
const int GL_CURRENT_WEIGHT_ARB = 0x86A8;
const int GL_WEIGHT_ARRAY_TYPE_ARB = 0x86A9;
const int GL_WEIGHT_ARRAY_STRIDE_ARB = 0x86AA;
const int GL_WEIGHT_ARRAY_SIZE_ARB = 0x86AB;
const int GL_WEIGHT_ARRAY_POINTER_ARB = 0x86AC;
const int GL_WEIGHT_ARRAY_ARB = 0x86AD;
const int GL_MODELVIEW0_ARB = 0x1700;
const int GL_MODELVIEW1_ARB = 0x850A;
const int GL_MODELVIEW2_ARB = 0x8722;
const int GL_MODELVIEW3_ARB = 0x8723;
const int GL_MODELVIEW4_ARB = 0x8724;
const int GL_MODELVIEW5_ARB = 0x8725;
const int GL_MODELVIEW6_ARB = 0x8726;
const int GL_MODELVIEW7_ARB = 0x8727;
const int GL_MODELVIEW8_ARB = 0x8728;
const int GL_MODELVIEW9_ARB = 0x8729;
const int GL_MODELVIEW10_ARB = 0x872A;
const int GL_MODELVIEW11_ARB = 0x872B;
const int GL_MODELVIEW12_ARB = 0x872C;
const int GL_MODELVIEW13_ARB = 0x872D;
const int GL_MODELVIEW14_ARB = 0x872E;
const int GL_MODELVIEW15_ARB = 0x872F;
const int GL_MODELVIEW16_ARB = 0x8730;
const int GL_MODELVIEW17_ARB = 0x8731;
const int GL_MODELVIEW18_ARB = 0x8732;
const int GL_MODELVIEW19_ARB = 0x8733;
const int GL_MODELVIEW20_ARB = 0x8734;
const int GL_MODELVIEW21_ARB = 0x8735;
const int GL_MODELVIEW22_ARB = 0x8736;
const int GL_MODELVIEW23_ARB = 0x8737;
const int GL_MODELVIEW24_ARB = 0x8738;
const int GL_MODELVIEW25_ARB = 0x8739;
const int GL_MODELVIEW26_ARB = 0x873A;
const int GL_MODELVIEW27_ARB = 0x873B;
const int GL_MODELVIEW28_ARB = 0x873C;
const int GL_MODELVIEW29_ARB = 0x873D;
const int GL_MODELVIEW30_ARB = 0x873E;
const int GL_MODELVIEW31_ARB = 0x873F;
//#endif

//#ifndef GL_ARB_matrix_palette
const int GL_MATRIX_PALETTE_ARB = 0x8840;
const int GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841;
const int GL_MAX_PALETTE_MATRICES_ARB = 0x8842;
const int GL_CURRENT_PALETTE_MATRIX_ARB = 0x8843;
const int GL_MATRIX_INDEX_ARRAY_ARB = 0x8844;
const int GL_CURRENT_MATRIX_INDEX_ARB = 0x8845;
const int GL_MATRIX_INDEX_ARRAY_SIZE_ARB = 0x8846;
const int GL_MATRIX_INDEX_ARRAY_TYPE_ARB = 0x8847;
const int GL_MATRIX_INDEX_ARRAY_STRIDE_ARB = 0x8848;
const int GL_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849;
//#endif

//#ifndef GL_ARB_texture_env_combine
const int GL_COMBINE_ARB = 0x8570;
const int GL_COMBINE_RGB_ARB = 0x8571;
const int GL_COMBINE_ALPHA_ARB = 0x8572;
const int GL_SOURCE0_RGB_ARB = 0x8580;
const int GL_SOURCE1_RGB_ARB = 0x8581;
const int GL_SOURCE2_RGB_ARB = 0x8582;
const int GL_SOURCE0_ALPHA_ARB = 0x8588;
const int GL_SOURCE1_ALPHA_ARB = 0x8589;
const int GL_SOURCE2_ALPHA_ARB = 0x858A;
const int GL_OPERAND0_RGB_ARB = 0x8590;
const int GL_OPERAND1_RGB_ARB = 0x8591;
const int GL_OPERAND2_RGB_ARB = 0x8592;
const int GL_OPERAND0_ALPHA_ARB = 0x8598;
const int GL_OPERAND1_ALPHA_ARB = 0x8599;
const int GL_OPERAND2_ALPHA_ARB = 0x859A;
const int GL_RGB_SCALE_ARB = 0x8573;
const int GL_ADD_SIGNED_ARB = 0x8574;
const int GL_INTERPOLATE_ARB = 0x8575;
const int GL_SUBTRACT_ARB = 0x84E7;
const int GL_CONSTANT_ARB = 0x8576;
const int GL_PRIMARY_COLOR_ARB = 0x8577;
const int GL_PREVIOUS_ARB = 0x8578;
//#endif

//#ifndef GL_ARB_texture_env_crossbar
//#endif

//#ifndef GL_ARB_texture_env_dot3
const int GL_DOT3_RGB_ARB = 0x86AE;
const int GL_DOT3_RGBA_ARB = 0x86AF;
//#endif

//#ifndef GL_ARB_texture_mirrored_repeat
const int GL_MIRRORED_REPEAT_ARB = 0x8370;
//#endif

//#ifndef GL_ARB_depth_texture
const int GL_DEPTH_COMPONENT16_ARB = 0x81A5;
const int GL_DEPTH_COMPONENT24_ARB = 0x81A6;
const int GL_DEPTH_COMPONENT32_ARB = 0x81A7;
const int GL_TEXTURE_DEPTH_SIZE_ARB = 0x884A;
const int GL_DEPTH_TEXTURE_MODE_ARB = 0x884B;
//#endif

//#ifndef GL_ARB_shadow
const int GL_TEXTURE_COMPARE_MODE_ARB = 0x884C;
const int GL_TEXTURE_COMPARE_FUNC_ARB = 0x884D;
const int GL_COMPARE_R_TO_TEXTURE_ARB = 0x884E;
//#endif

//#ifndef GL_ARB_shadow_ambient
const int GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = 0x80BF;
//#endif

//#ifndef GL_ARB_window_pos
//#endif

//#ifndef GL_ARB_vertex_program
const int GL_VERTEX_PROGRAM_ARB = 0x8620;
const int GL_VERTEX_PROGRAM_POINT_SIZE_ARB = 0x8642;
const int GL_VERTEX_PROGRAM_TWO_SIDE_ARB = 0x8643;
const int GL_COLOR_SUM_ARB = 0x8458;
const int GL_PROGRAM_FORMAT_ASCII_ARB = 0x8875;
const int GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622;
const int GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB = 0x8623;
const int GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624;
const int GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB = 0x8625;
const int GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886A;
const int GL_CURRENT_VERTEX_ATTRIB_ARB = 0x8626;
const int GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645;
const int GL_PROGRAM_LENGTH_ARB = 0x8627;
const int GL_PROGRAM_FORMAT_ARB = 0x8876;
const int GL_PROGRAM_BINDING_ARB = 0x8677;
const int GL_PROGRAM_INSTRUCTIONS_ARB = 0x88A0;
const int GL_MAX_PROGRAM_INSTRUCTIONS_ARB = 0x88A1;
const int GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A2;
const int GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A3;
const int GL_PROGRAM_TEMPORARIES_ARB = 0x88A4;
const int GL_MAX_PROGRAM_TEMPORARIES_ARB = 0x88A5;
const int GL_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A6;
const int GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A7;
const int GL_PROGRAM_PARAMETERS_ARB = 0x88A8;
const int GL_MAX_PROGRAM_PARAMETERS_ARB = 0x88A9;
const int GL_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AA;
const int GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AB;
const int GL_PROGRAM_ATTRIBS_ARB = 0x88AC;
const int GL_MAX_PROGRAM_ATTRIBS_ARB = 0x88AD;
const int GL_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AE;
const int GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AF;
const int GL_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B0;
const int GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B1;
const int GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B2;
const int GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B3;
const int GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88B4;
const int GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88B5;
const int GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88B6;
const int GL_PROGRAM_STRING_ARB = 0x8628;
const int GL_PROGRAM_ERROR_POSITION_ARB = 0x864B;
const int GL_CURRENT_MATRIX_ARB = 0x8641;
const int GL_TRANSPOSE_CURRENT_MATRIX_ARB = 0x88B7;
const int GL_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640;
const int GL_MAX_VERTEX_ATTRIBS_ARB = 0x8869;
const int GL_MAX_PROGRAM_MATRICES_ARB = 0x862F;
const int GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862E;
const int GL_PROGRAM_ERROR_STRING_ARB = 0x8874;
const int GL_MATRIX0_ARB = 0x88C0;
const int GL_MATRIX1_ARB = 0x88C1;
const int GL_MATRIX2_ARB = 0x88C2;
const int GL_MATRIX3_ARB = 0x88C3;
const int GL_MATRIX4_ARB = 0x88C4;
const int GL_MATRIX5_ARB = 0x88C5;
const int GL_MATRIX6_ARB = 0x88C6;
const int GL_MATRIX7_ARB = 0x88C7;
const int GL_MATRIX8_ARB = 0x88C8;
const int GL_MATRIX9_ARB = 0x88C9;
const int GL_MATRIX10_ARB = 0x88CA;
const int GL_MATRIX11_ARB = 0x88CB;
const int GL_MATRIX12_ARB = 0x88CC;
const int GL_MATRIX13_ARB = 0x88CD;
const int GL_MATRIX14_ARB = 0x88CE;
const int GL_MATRIX15_ARB = 0x88CF;
const int GL_MATRIX16_ARB = 0x88D0;
const int GL_MATRIX17_ARB = 0x88D1;
const int GL_MATRIX18_ARB = 0x88D2;
const int GL_MATRIX19_ARB = 0x88D3;
const int GL_MATRIX20_ARB = 0x88D4;
const int GL_MATRIX21_ARB = 0x88D5;
const int GL_MATRIX22_ARB = 0x88D6;
const int GL_MATRIX23_ARB = 0x88D7;
const int GL_MATRIX24_ARB = 0x88D8;
const int GL_MATRIX25_ARB = 0x88D9;
const int GL_MATRIX26_ARB = 0x88DA;
const int GL_MATRIX27_ARB = 0x88DB;
const int GL_MATRIX28_ARB = 0x88DC;
const int GL_MATRIX29_ARB = 0x88DD;
const int GL_MATRIX30_ARB = 0x88DE;
const int GL_MATRIX31_ARB = 0x88DF;
//#endif

//#ifndef GL_EXT_abgr
const int GL_ABGR_EXT = 0x8000;
//#endif

//#ifndef GL_EXT_blend_color
const int GL_CONSTANT_COLOR_EXT = 0x8001;
const int GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002;
const int GL_CONSTANT_ALPHA_EXT = 0x8003;
const int GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004;
const int GL_BLEND_COLOR_EXT = 0x8005;
//#endif

//#ifndef GL_EXT_polygon_offset
const int GL_POLYGON_OFFSET_EXT = 0x8037;
const int GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038;
const int GL_POLYGON_OFFSET_BIAS_EXT = 0x8039;
//#endif

//#ifndef GL_EXT_texture
const int GL_ALPHA4_EXT = 0x803B;
const int GL_ALPHA8_EXT = 0x803C;
const int GL_ALPHA12_EXT = 0x803D;
const int GL_ALPHA16_EXT = 0x803E;
const int GL_LUMINANCE4_EXT = 0x803F;
const int GL_LUMINANCE8_EXT = 0x8040;
const int GL_LUMINANCE12_EXT = 0x8041;
const int GL_LUMINANCE16_EXT = 0x8042;
const int GL_LUMINANCE4_ALPHA4_EXT = 0x8043;
const int GL_LUMINANCE6_ALPHA2_EXT = 0x8044;
const int GL_LUMINANCE8_ALPHA8_EXT = 0x8045;
const int GL_LUMINANCE12_ALPHA4_EXT = 0x8046;
const int GL_LUMINANCE12_ALPHA12_EXT = 0x8047;
const int GL_LUMINANCE16_ALPHA16_EXT = 0x8048;
const int GL_INTENSITY_EXT = 0x8049;
const int GL_INTENSITY4_EXT = 0x804A;
const int GL_INTENSITY8_EXT = 0x804B;
const int GL_INTENSITY12_EXT = 0x804C;
const int GL_INTENSITY16_EXT = 0x804D;
const int GL_RGB2_EXT = 0x804E;
const int GL_RGB4_EXT = 0x804F;
const int GL_RGB5_EXT = 0x8050;
const int GL_RGB8_EXT = 0x8051;
const int GL_RGB10_EXT = 0x8052;
const int GL_RGB12_EXT = 0x8053;
const int GL_RGB16_EXT = 0x8054;
const int GL_RGBA2_EXT = 0x8055;
const int GL_RGBA4_EXT = 0x8056;
const int GL_RGB5_A1_EXT = 0x8057;
const int GL_RGBA8_EXT = 0x8058;
const int GL_RGB10_A2_EXT = 0x8059;
const int GL_RGBA12_EXT = 0x805A;
const int GL_RGBA16_EXT = 0x805B;
const int GL_TEXTURE_RED_SIZE_EXT = 0x805C;
const int GL_TEXTURE_GREEN_SIZE_EXT = 0x805D;
const int GL_TEXTURE_BLUE_SIZE_EXT = 0x805E;
const int GL_TEXTURE_ALPHA_SIZE_EXT = 0x805F;
const int GL_TEXTURE_LUMINANCE_SIZE_EXT = 0x8060;
const int GL_TEXTURE_INTENSITY_SIZE_EXT = 0x8061;
const int GL_REPLACE_EXT = 0x8062;
const int GL_PROXY_TEXTURE_1D_EXT = 0x8063;
const int GL_PROXY_TEXTURE_2D_EXT = 0x8064;
const int GL_TEXTURE_TOO_LARGE_EXT = 0x8065;
//#endif

//#ifndef GL_EXT_texture3D
const int GL_PACK_SKIP_IMAGES_EXT = 0x806B;
const int GL_PACK_IMAGE_HEIGHT_EXT = 0x806C;
const int GL_UNPACK_SKIP_IMAGES_EXT = 0x806D;
const int GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806E;
const int GL_TEXTURE_3D_EXT = 0x806F;
const int GL_PROXY_TEXTURE_3D_EXT = 0x8070;
const int GL_TEXTURE_DEPTH_EXT = 0x8071;
const int GL_TEXTURE_WRAP_R_EXT = 0x8072;
const int GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073;
//#endif

//#ifndef GL_SGIS_texture_filter4
const int GL_FILTER4_SGIS = 0x8146;
const int GL_TEXTURE_FILTER4_SIZE_SGIS = 0x8147;
//#endif

//#ifndef GL_EXT_subtexture
//#endif

//#ifndef GL_EXT_copy_texture
//#endif

//#ifndef GL_EXT_histogram
const int GL_HISTOGRAM_EXT = 0x8024;
const int GL_PROXY_HISTOGRAM_EXT = 0x8025;
const int GL_HISTOGRAM_WIDTH_EXT = 0x8026;
const int GL_HISTOGRAM_FORMAT_EXT = 0x8027;
const int GL_HISTOGRAM_RED_SIZE_EXT = 0x8028;
const int GL_HISTOGRAM_GREEN_SIZE_EXT = 0x8029;
const int GL_HISTOGRAM_BLUE_SIZE_EXT = 0x802A;
const int GL_HISTOGRAM_ALPHA_SIZE_EXT = 0x802B;
const int GL_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C;
const int GL_HISTOGRAM_SINK_EXT = 0x802D;
const int GL_MINMAX_EXT = 0x802E;
const int GL_MINMAX_FORMAT_EXT = 0x802F;
const int GL_MINMAX_SINK_EXT = 0x8030;
const int GL_TABLE_TOO_LARGE_EXT = 0x8031;
//#endif

//#ifndef GL_EXT_convolution
const int GL_CONVOLUTION_1D_EXT = 0x8010;
const int GL_CONVOLUTION_2D_EXT = 0x8011;
const int GL_SEPARABLE_2D_EXT = 0x8012;
const int GL_CONVOLUTION_BORDER_MODE_EXT = 0x8013;
const int GL_CONVOLUTION_FILTER_SCALE_EXT = 0x8014;
const int GL_CONVOLUTION_FILTER_BIAS_EXT = 0x8015;
const int GL_REDUCE_EXT = 0x8016;
const int GL_CONVOLUTION_FORMAT_EXT = 0x8017;
const int GL_CONVOLUTION_WIDTH_EXT = 0x8018;
const int GL_CONVOLUTION_HEIGHT_EXT = 0x8019;
const int GL_MAX_CONVOLUTION_WIDTH_EXT = 0x801A;
const int GL_MAX_CONVOLUTION_HEIGHT_EXT = 0x801B;
const int GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C;
const int GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D;
const int GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E;
const int GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F;
const int GL_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020;
const int GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021;
const int GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022;
const int GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023;
//#endif

//#ifndef GL_SGI_color_matrix
const int GL_COLOR_MATRIX_SGI = 0x80B1;
const int GL_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B2;
const int GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3;
const int GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4;
const int GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5;
const int GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6;
const int GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7;
const int GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8;
const int GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9;
const int GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA;
const int GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB;
//#endif

//#ifndef GL_SGI_color_table
const int GL_COLOR_TABLE_SGI = 0x80D0;
const int GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1;
const int GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2;
const int GL_PROXY_COLOR_TABLE_SGI = 0x80D3;
const int GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4;
const int GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5;
const int GL_COLOR_TABLE_SCALE_SGI = 0x80D6;
const int GL_COLOR_TABLE_BIAS_SGI = 0x80D7;
const int GL_COLOR_TABLE_FORMAT_SGI = 0x80D8;
const int GL_COLOR_TABLE_WIDTH_SGI = 0x80D9;
const int GL_COLOR_TABLE_RED_SIZE_SGI = 0x80DA;
const int GL_COLOR_TABLE_GREEN_SIZE_SGI = 0x80DB;
const int GL_COLOR_TABLE_BLUE_SIZE_SGI = 0x80DC;
const int GL_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80DD;
const int GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE;
const int GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF;
//#endif

//#ifndef GL_SGIS_pixel_texture
const int GL_PIXEL_TEXTURE_SGIS = 0x8353;
const int GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354;
const int GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355;
const int GL_PIXEL_GROUP_COLOR_SGIS = 0x8356;
//#endif

//#ifndef GL_SGIX_pixel_texture
const int GL_PIXEL_TEX_GEN_SGIX = 0x8139;
const int GL_PIXEL_TEX_GEN_MODE_SGIX = 0x832B;
//#endif

//#ifndef GL_SGIS_texture4D
const int GL_PACK_SKIP_VOLUMES_SGIS = 0x8130;
const int GL_PACK_IMAGE_DEPTH_SGIS = 0x8131;
const int GL_UNPACK_SKIP_VOLUMES_SGIS = 0x8132;
const int GL_UNPACK_IMAGE_DEPTH_SGIS = 0x8133;
const int GL_TEXTURE_4D_SGIS = 0x8134;
const int GL_PROXY_TEXTURE_4D_SGIS = 0x8135;
const int GL_TEXTURE_4DSIZE_SGIS = 0x8136;
const int GL_TEXTURE_WRAP_Q_SGIS = 0x8137;
const int GL_MAX_4D_TEXTURE_SIZE_SGIS = 0x8138;
const int GL_TEXTURE_4D_BINDING_SGIS = 0x814F;
//#endif

//#ifndef GL_SGI_texture_color_table
const int GL_TEXTURE_COLOR_TABLE_SGI = 0x80BC;
const int GL_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80BD;
//#endif

//#ifndef GL_EXT_cmyka
const int GL_CMYK_EXT = 0x800C;
const int GL_CMYKA_EXT = 0x800D;
const int GL_PACK_CMYK_HINT_EXT = 0x800E;
const int GL_UNPACK_CMYK_HINT_EXT = 0x800F;
//#endif

//#ifndef GL_EXT_texture_object
const int GL_TEXTURE_PRIORITY_EXT = 0x8066;
const int GL_TEXTURE_RESIDENT_EXT = 0x8067;
const int GL_TEXTURE_1D_BINDING_EXT = 0x8068;
const int GL_TEXTURE_2D_BINDING_EXT = 0x8069;
const int GL_TEXTURE_3D_BINDING_EXT = 0x806A;
//#endif

//#ifndef GL_SGIS_detail_texture
const int GL_DETAIL_TEXTURE_2D_SGIS = 0x8095;
const int GL_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096;
const int GL_LINEAR_DETAIL_SGIS = 0x8097;
const int GL_LINEAR_DETAIL_ALPHA_SGIS = 0x8098;
const int GL_LINEAR_DETAIL_COLOR_SGIS = 0x8099;
const int GL_DETAIL_TEXTURE_LEVEL_SGIS = 0x809A;
const int GL_DETAIL_TEXTURE_MODE_SGIS = 0x809B;
const int GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809C;
//#endif

//#ifndef GL_SGIS_sharpen_texture
const int GL_LINEAR_SHARPEN_SGIS = 0x80AD;
const int GL_LINEAR_SHARPEN_ALPHA_SGIS = 0x80AE;
const int GL_LINEAR_SHARPEN_COLOR_SGIS = 0x80AF;
const int GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80B0;
//#endif

//#ifndef GL_EXT_packed_pixels
const int GL_UNSIGNED_BYTE_3_3_2_EXT = 0x8032;
const int GL_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033;
const int GL_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034;
const int GL_UNSIGNED_INT_8_8_8_8_EXT = 0x8035;
const int GL_UNSIGNED_INT_10_10_10_2_EXT = 0x8036;
//#endif

//#ifndef GL_SGIS_texture_lod
const int GL_TEXTURE_MIN_LOD_SGIS = 0x813A;
const int GL_TEXTURE_MAX_LOD_SGIS = 0x813B;
const int GL_TEXTURE_BASE_LEVEL_SGIS = 0x813C;
const int GL_TEXTURE_MAX_LEVEL_SGIS = 0x813D;
//#endif

//#ifndef GL_SGIS_multisample
const int GL_MULTISAMPLE_SGIS = 0x809D;
const int GL_SAMPLE_ALPHA_TO_MASK_SGIS = 0x809E;
const int GL_SAMPLE_ALPHA_TO_ONE_SGIS = 0x809F;
const int GL_SAMPLE_MASK_SGIS = 0x80A0;
const int GL_1PASS_SGIS = 0x80A1;
const int GL_2PASS_0_SGIS = 0x80A2;
const int GL_2PASS_1_SGIS = 0x80A3;
const int GL_4PASS_0_SGIS = 0x80A4;
const int GL_4PASS_1_SGIS = 0x80A5;
const int GL_4PASS_2_SGIS = 0x80A6;
const int GL_4PASS_3_SGIS = 0x80A7;
const int GL_SAMPLE_BUFFERS_SGIS = 0x80A8;
const int GL_SAMPLES_SGIS = 0x80A9;
const int GL_SAMPLE_MASK_VALUE_SGIS = 0x80AA;
const int GL_SAMPLE_MASK_INVERT_SGIS = 0x80AB;
const int GL_SAMPLE_PATTERN_SGIS = 0x80AC;
//#endif

//#ifndef GL_EXT_rescale_normal
const int GL_RESCALE_NORMAL_EXT = 0x803A;
//#endif

//#ifndef GL_EXT_vertex_array
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
//#endif

//#ifndef GL_EXT_misc_attribute
//#endif

//#ifndef GL_SGIS_generate_mipmap
const int GL_GENERATE_MIPMAP_SGIS = 0x8191;
const int GL_GENERATE_MIPMAP_HINT_SGIS = 0x8192;
//#endif

//#ifndef GL_SGIX_clipmap
const int GL_LINEAR_CLIPMAP_LINEAR_SGIX = 0x8170;
const int GL_TEXTURE_CLIPMAP_CENTER_SGIX = 0x8171;
const int GL_TEXTURE_CLIPMAP_FRAME_SGIX = 0x8172;
const int GL_TEXTURE_CLIPMAP_OFFSET_SGIX = 0x8173;
const int GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8174;
const int GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = 0x8175;
const int GL_TEXTURE_CLIPMAP_DEPTH_SGIX = 0x8176;
const int GL_MAX_CLIPMAP_DEPTH_SGIX = 0x8177;
const int GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8178;
const int GL_NEAREST_CLIPMAP_NEAREST_SGIX = 0x844D;
const int GL_NEAREST_CLIPMAP_LINEAR_SGIX = 0x844E;
const int GL_LINEAR_CLIPMAP_NEAREST_SGIX = 0x844F;
//#endif

//#ifndef GL_SGIX_shadow
const int GL_TEXTURE_COMPARE_SGIX = 0x819A;
const int GL_TEXTURE_COMPARE_OPERATOR_SGIX = 0x819B;
const int GL_TEXTURE_LEQUAL_R_SGIX = 0x819C;
const int GL_TEXTURE_GEQUAL_R_SGIX = 0x819D;
//#endif

//#ifndef GL_SGIS_texture_edge_clamp
const int GL_CLAMP_TO_EDGE_SGIS = 0x812F;
//#endif

//#ifndef GL_EXT_blend_minmax
const int GL_FUNC_ADD_EXT = 0x8006;
const int GL_MIN_EXT = 0x8007;
const int GL_MAX_EXT = 0x8008;
const int GL_BLEND_EQUATION_EXT = 0x8009;
//#endif

//#ifndef GL_EXT_blend_subtract
const int GL_FUNC_SUBTRACT_EXT = 0x800A;
const int GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B;
//#endif

//#ifndef GL_EXT_blend_logic_op
//#endif

//#ifndef GL_SGIX_interlace
const int GL_INTERLACE_SGIX = 0x8094;
//#endif

//#ifndef GL_SGIX_pixel_tiles
const int GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = 0x813E;
const int GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = 0x813F;
const int GL_PIXEL_TILE_WIDTH_SGIX = 0x8140;
const int GL_PIXEL_TILE_HEIGHT_SGIX = 0x8141;
const int GL_PIXEL_TILE_GRID_WIDTH_SGIX = 0x8142;
const int GL_PIXEL_TILE_GRID_HEIGHT_SGIX = 0x8143;
const int GL_PIXEL_TILE_GRID_DEPTH_SGIX = 0x8144;
const int GL_PIXEL_TILE_CACHE_SIZE_SGIX = 0x8145;
//#endif

//#ifndef GL_SGIS_texture_select
const int GL_DUAL_ALPHA4_SGIS = 0x8110;
const int GL_DUAL_ALPHA8_SGIS = 0x8111;
const int GL_DUAL_ALPHA12_SGIS = 0x8112;
const int GL_DUAL_ALPHA16_SGIS = 0x8113;
const int GL_DUAL_LUMINANCE4_SGIS = 0x8114;
const int GL_DUAL_LUMINANCE8_SGIS = 0x8115;
const int GL_DUAL_LUMINANCE12_SGIS = 0x8116;
const int GL_DUAL_LUMINANCE16_SGIS = 0x8117;
const int GL_DUAL_INTENSITY4_SGIS = 0x8118;
const int GL_DUAL_INTENSITY8_SGIS = 0x8119;
const int GL_DUAL_INTENSITY12_SGIS = 0x811A;
const int GL_DUAL_INTENSITY16_SGIS = 0x811B;
const int GL_DUAL_LUMINANCE_ALPHA4_SGIS = 0x811C;
const int GL_DUAL_LUMINANCE_ALPHA8_SGIS = 0x811D;
const int GL_QUAD_ALPHA4_SGIS = 0x811E;
const int GL_QUAD_ALPHA8_SGIS = 0x811F;
const int GL_QUAD_LUMINANCE4_SGIS = 0x8120;
const int GL_QUAD_LUMINANCE8_SGIS = 0x8121;
const int GL_QUAD_INTENSITY4_SGIS = 0x8122;
const int GL_QUAD_INTENSITY8_SGIS = 0x8123;
const int GL_DUAL_TEXTURE_SELECT_SGIS = 0x8124;
const int GL_QUAD_TEXTURE_SELECT_SGIS = 0x8125;
//#endif

//#ifndef GL_SGIX_sprite
const int GL_SPRITE_SGIX = 0x8148;
const int GL_SPRITE_MODE_SGIX = 0x8149;
const int GL_SPRITE_AXIS_SGIX = 0x814A;
const int GL_SPRITE_TRANSLATION_SGIX = 0x814B;
const int GL_SPRITE_AXIAL_SGIX = 0x814C;
const int GL_SPRITE_OBJECT_ALIGNED_SGIX = 0x814D;
const int GL_SPRITE_EYE_ALIGNED_SGIX = 0x814E;
//#endif

//#ifndef GL_SGIX_texture_multi_buffer
const int GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812E;
//#endif

//#ifndef GL_EXT_point_parameters
const int GL_POINT_SIZE_MIN_EXT = 0x8126;
const int GL_POINT_SIZE_MAX_EXT = 0x8127;
const int GL_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128;
const int GL_DISTANCE_ATTENUATION_EXT = 0x8129;
//#endif

//#ifndef GL_SGIS_point_parameters
const int GL_POINT_SIZE_MIN_SGIS = 0x8126;
const int GL_POINT_SIZE_MAX_SGIS = 0x8127;
const int GL_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128;
const int GL_DISTANCE_ATTENUATION_SGIS = 0x8129;
//#endif

//#ifndef GL_SGIX_instruments
const int GL_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180;
const int GL_INSTRUMENT_MEASUREMENTS_SGIX = 0x8181;
//#endif

//#ifndef GL_SGIX_texture_scale_bias
const int GL_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179;
const int GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A;
const int GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B;
const int GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C;
//#endif

//#ifndef GL_SGIX_framezoom
const int GL_FRAMEZOOM_SGIX = 0x818B;
const int GL_FRAMEZOOM_FACTOR_SGIX = 0x818C;
const int GL_MAX_FRAMEZOOM_FACTOR_SGIX = 0x818D;
//#endif

//#ifndef GL_SGIX_tag_sample_buffer
//#endif

//#ifndef GL_FfdMaskSGIX
const int GL_TEXTURE_DEFORMATION_BIT_SGIX = 0x00000001;
const int GL_GEOMETRY_DEFORMATION_BIT_SGIX = 0x00000002;
//#endif

//#ifndef GL_SGIX_polynomial_ffd
const int GL_GEOMETRY_DEFORMATION_SGIX = 0x8194;
const int GL_TEXTURE_DEFORMATION_SGIX = 0x8195;
const int GL_DEFORMATIONS_MASK_SGIX = 0x8196;
const int GL_MAX_DEFORMATION_ORDER_SGIX = 0x8197;
//#endif

//#ifndef GL_SGIX_reference_plane
const int GL_REFERENCE_PLANE_SGIX = 0x817D;
const int GL_REFERENCE_PLANE_EQUATION_SGIX = 0x817E;
//#endif

//#ifndef GL_SGIX_flush_raster
//#endif

//#ifndef GL_SGIX_depth_texture
const int GL_DEPTH_COMPONENT16_SGIX = 0x81A5;
const int GL_DEPTH_COMPONENT24_SGIX = 0x81A6;
const int GL_DEPTH_COMPONENT32_SGIX = 0x81A7;
//#endif

//#ifndef GL_SGIS_fog_function
const int GL_FOG_FUNC_SGIS = 0x812A;
const int GL_FOG_FUNC_POINTS_SGIS = 0x812B;
const int GL_MAX_FOG_FUNC_POINTS_SGIS = 0x812C;
//#endif

//#ifndef GL_SGIX_fog_offset
const int GL_FOG_OFFSET_SGIX = 0x8198;
const int GL_FOG_OFFSET_VALUE_SGIX = 0x8199;
//#endif

//#ifndef GL_HP_image_transform
const int GL_IMAGE_SCALE_X_HP = 0x8155;
const int GL_IMAGE_SCALE_Y_HP = 0x8156;
const int GL_IMAGE_TRANSLATE_X_HP = 0x8157;
const int GL_IMAGE_TRANSLATE_Y_HP = 0x8158;
const int GL_IMAGE_ROTATE_ANGLE_HP = 0x8159;
const int GL_IMAGE_ROTATE_ORIGIN_X_HP = 0x815A;
const int GL_IMAGE_ROTATE_ORIGIN_Y_HP = 0x815B;
const int GL_IMAGE_MAG_FILTER_HP = 0x815C;
const int GL_IMAGE_MIN_FILTER_HP = 0x815D;
const int GL_IMAGE_CUBIC_WEIGHT_HP = 0x815E;
const int GL_CUBIC_HP = 0x815F;
const int GL_AVERAGE_HP = 0x8160;
const int GL_IMAGE_TRANSFORM_2D_HP = 0x8161;
const int GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162;
const int GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163;
//#endif

//#ifndef GL_HP_convolution_border_modes
const int GL_IGNORE_BORDER_HP = 0x8150;
const int GL_CONSTANT_BORDER_HP = 0x8151;
const int GL_REPLICATE_BORDER_HP = 0x8153;
const int GL_CONVOLUTION_BORDER_COLOR_HP = 0x8154;
//#endif

//#ifndef GL_INGR_palette_buffer
//#endif

//#ifndef GL_SGIX_texture_add_env
const int GL_TEXTURE_ENV_BIAS_SGIX = 0x80BE;
//#endif

//#ifndef GL_EXT_color_subtable
//#endif

//#ifndef GL_PGI_vertex_hints
const int GL_VERTEX_DATA_HINT_PGI = 0x1A22A;
const int GL_VERTEX_CONSISTENT_HINT_PGI = 0x1A22B;
const int GL_MATERIAL_SIDE_HINT_PGI = 0x1A22C;
const int GL_MAX_VERTEX_HINT_PGI = 0x1A22D;
const int GL_COLOR3_BIT_PGI = 0x00010000;
const int GL_COLOR4_BIT_PGI = 0x00020000;
const int GL_EDGEFLAG_BIT_PGI = 0x00040000;
const int GL_INDEX_BIT_PGI = 0x00080000;
const int GL_MAT_AMBIENT_BIT_PGI = 0x00100000;
const int GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI = 0x00200000;
const int GL_MAT_DIFFUSE_BIT_PGI = 0x00400000;
const int GL_MAT_EMISSION_BIT_PGI = 0x00800000;
const int GL_MAT_COLOR_INDEXES_BIT_PGI = 0x01000000;
const int GL_MAT_SHININESS_BIT_PGI = 0x02000000;
const int GL_MAT_SPECULAR_BIT_PGI = 0x04000000;
const int GL_NORMAL_BIT_PGI = 0x08000000;
const int GL_TEXCOORD1_BIT_PGI = 0x10000000;
const int GL_TEXCOORD2_BIT_PGI = 0x20000000;
const int GL_TEXCOORD3_BIT_PGI = 0x40000000;
const int GL_TEXCOORD4_BIT_PGI = cast(int)0x80000000;
const int GL_VERTEX23_BIT_PGI = 0x00000004;
const int GL_VERTEX4_BIT_PGI = 0x00000008;
//#endif

//#ifndef GL_PGI_misc_hints
const int GL_PREFER_DOUBLEBUFFER_HINT_PGI = 0x1A1F8;
const int GL_CONSERVE_MEMORY_HINT_PGI = 0x1A1FD;
const int GL_RECLAIM_MEMORY_HINT_PGI = 0x1A1FE;
const int GL_NATIVE_GRAPHICS_HANDLE_PGI = 0x1A202;
const int GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = 0x1A203;
const int GL_NATIVE_GRAPHICS_END_HINT_PGI = 0x1A204;
const int GL_ALWAYS_FAST_HINT_PGI = 0x1A20C;
const int GL_ALWAYS_SOFT_HINT_PGI = 0x1A20D;
const int GL_ALLOW_DRAW_OBJ_HINT_PGI = 0x1A20E;
const int GL_ALLOW_DRAW_WIN_HINT_PGI = 0x1A20F;
const int GL_ALLOW_DRAW_FRG_HINT_PGI = 0x1A210;
const int GL_ALLOW_DRAW_MEM_HINT_PGI = 0x1A211;
const int GL_STRICT_DEPTHFUNC_HINT_PGI = 0x1A216;
const int GL_STRICT_LIGHTING_HINT_PGI = 0x1A217;
const int GL_STRICT_SCISSOR_HINT_PGI = 0x1A218;
const int GL_FULL_STIPPLE_HINT_PGI = 0x1A219;
const int GL_CLIP_NEAR_HINT_PGI = 0x1A220;
const int GL_CLIP_FAR_HINT_PGI = 0x1A221;
const int GL_WIDE_LINE_HINT_PGI = 0x1A222;
const int GL_BACK_NORMALS_HINT_PGI = 0x1A223;
//#endif

//#ifndef GL_EXT_paletted_texture
const int GL_COLOR_INDEX1_EXT = 0x80E2;
const int GL_COLOR_INDEX2_EXT = 0x80E3;
const int GL_COLOR_INDEX4_EXT = 0x80E4;
const int GL_COLOR_INDEX8_EXT = 0x80E5;
const int GL_COLOR_INDEX12_EXT = 0x80E6;
const int GL_COLOR_INDEX16_EXT = 0x80E7;
const int GL_TEXTURE_INDEX_SIZE_EXT = 0x80ED;
//#endif

//#ifndef GL_EXT_clip_volume_hint
const int GL_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80F0;
//#endif

//#ifndef GL_SGIX_list_priority
const int GL_LIST_PRIORITY_SGIX = 0x8182;
//#endif

//#ifndef GL_SGIX_ir_instrument1
const int GL_IR_INSTRUMENT1_SGIX = 0x817F;
//#endif

//#ifndef GL_SGIX_calligraphic_fragment
const int GL_CALLIGRAPHIC_FRAGMENT_SGIX = 0x8183;
//#endif

//#ifndef GL_SGIX_texture_lod_bias
const int GL_TEXTURE_LOD_BIAS_S_SGIX = 0x818E;
const int GL_TEXTURE_LOD_BIAS_T_SGIX = 0x818F;
const int GL_TEXTURE_LOD_BIAS_R_SGIX = 0x8190;
//#endif

//#ifndef GL_SGIX_shadow_ambient
const int GL_SHADOW_AMBIENT_SGIX = 0x80BF;
//#endif

//#ifndef GL_EXT_index_texture
//#endif

//#ifndef GL_EXT_index_material
const int GL_INDEX_MATERIAL_EXT = 0x81B8;
const int GL_INDEX_MATERIAL_PARAMETER_EXT = 0x81B9;
const int GL_INDEX_MATERIAL_FACE_EXT = 0x81BA;
//#endif

//#ifndef GL_EXT_index_func
const int GL_INDEX_TEST_EXT = 0x81B5;
const int GL_INDEX_TEST_FUNC_EXT = 0x81B6;
const int GL_INDEX_TEST_REF_EXT = 0x81B7;
//#endif

//#ifndef GL_EXT_index_array_formats
const int GL_IUI_V2F_EXT = 0x81AD;
const int GL_IUI_V3F_EXT = 0x81AE;
const int GL_IUI_N3F_V2F_EXT = 0x81AF;
const int GL_IUI_N3F_V3F_EXT = 0x81B0;
const int GL_T2F_IUI_V2F_EXT = 0x81B1;
const int GL_T2F_IUI_V3F_EXT = 0x81B2;
const int GL_T2F_IUI_N3F_V2F_EXT = 0x81B3;
const int GL_T2F_IUI_N3F_V3F_EXT = 0x81B4;
//#endif

//#ifndef GL_EXT_compiled_vertex_array
const int GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8;
const int GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9;
//#endif

//#ifndef GL_EXT_cull_vertex
const int GL_CULL_VERTEX_EXT = 0x81AA;
const int GL_CULL_VERTEX_EYE_POSITION_EXT = 0x81AB;
const int GL_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC;
//#endif

//#ifndef GL_SGIX_ycrcb
const int GL_YCRCB_422_SGIX = 0x81BB;
const int GL_YCRCB_444_SGIX = 0x81BC;
//#endif

//#ifndef GL_SGIX_fragment_lighting
const int GL_FRAGMENT_LIGHTING_SGIX = 0x8400;
const int GL_FRAGMENT_COLOR_MATERIAL_SGIX = 0x8401;
const int GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402;
const int GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403;
const int GL_MAX_FRAGMENT_LIGHTS_SGIX = 0x8404;
const int GL_MAX_ACTIVE_LIGHTS_SGIX = 0x8405;
const int GL_CURRENT_RASTER_NORMAL_SGIX = 0x8406;
const int GL_LIGHT_ENV_MODE_SGIX = 0x8407;
const int GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408;
const int GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409;
const int GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840A;
const int GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840B;
const int GL_FRAGMENT_LIGHT0_SGIX = 0x840C;
const int GL_FRAGMENT_LIGHT1_SGIX = 0x840D;
const int GL_FRAGMENT_LIGHT2_SGIX = 0x840E;
const int GL_FRAGMENT_LIGHT3_SGIX = 0x840F;
const int GL_FRAGMENT_LIGHT4_SGIX = 0x8410;
const int GL_FRAGMENT_LIGHT5_SGIX = 0x8411;
const int GL_FRAGMENT_LIGHT6_SGIX = 0x8412;
const int GL_FRAGMENT_LIGHT7_SGIX = 0x8413;
//#endif

//#ifndef GL_IBM_rasterpos_clip
const int GL_RASTER_POSITION_UNCLIPPED_IBM = 0x19262;
//#endif

//#ifndef GL_HP_texture_lighting
const int GL_TEXTURE_LIGHTING_MODE_HP = 0x8167;
const int GL_TEXTURE_POST_SPECULAR_HP = 0x8168;
const int GL_TEXTURE_PRE_SPECULAR_HP = 0x8169;
//#endif

//#ifndef GL_EXT_draw_range_elements
const int GL_MAX_ELEMENTS_VERTICES_EXT = 0x80E8;
const int GL_MAX_ELEMENTS_INDICES_EXT = 0x80E9;
//#endif

//#ifndef GL_WIN_phong_shading
const int GL_PHONG_WIN = 0x80EA;
const int GL_PHONG_HINT_WIN = 0x80EB;
//#endif

//#ifndef GL_WIN_specular_fog
const int GL_FOG_SPECULAR_TEXTURE_WIN = 0x80EC;
//#endif

//#ifndef GL_EXT_light_texture
const int GL_FRAGMENT_MATERIAL_EXT = 0x8349;
const int GL_FRAGMENT_NORMAL_EXT = 0x834A;
const int GL_FRAGMENT_COLOR_EXT = 0x834C;
const int GL_ATTENUATION_EXT = 0x834D;
const int GL_SHADOW_ATTENUATION_EXT = 0x834E;
const int GL_TEXTURE_APPLICATION_MODE_EXT = 0x834F;
const int GL_TEXTURE_LIGHT_EXT = 0x8350;
const int GL_TEXTURE_MATERIAL_FACE_EXT = 0x8351;
const int GL_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352;
/* reuse GL_FRAGMENT_DEPTH_EXT */
//#endif

//#ifndef GL_SGIX_blend_alpha_minmax
const int GL_ALPHA_MIN_SGIX = 0x8320;
const int GL_ALPHA_MAX_SGIX = 0x8321;
//#endif

//#ifndef GL_SGIX_impact_pixel_texture
const int GL_PIXEL_TEX_GEN_Q_CEILING_SGIX = 0x8184;
const int GL_PIXEL_TEX_GEN_Q_ROUND_SGIX = 0x8185;
const int GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX = 0x8186;
const int GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX = 0x8187;
const int GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX = 0x8188;
const int GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX = 0x8189;
const int GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX = 0x818A;
//#endif

//#ifndef GL_EXT_bgra
const int GL_BGR_EXT = 0x80E0;
const int GL_BGRA_EXT = 0x80E1;
//#endif

//#ifndef GL_SGIX_async
const int GL_ASYNC_MARKER_SGIX = 0x8329;
//#endif

//#ifndef GL_SGIX_async_pixel
const int GL_ASYNC_TEX_IMAGE_SGIX = 0x835C;
const int GL_ASYNC_DRAW_PIXELS_SGIX = 0x835D;
const int GL_ASYNC_READ_PIXELS_SGIX = 0x835E;
const int GL_MAX_ASYNC_TEX_IMAGE_SGIX = 0x835F;
const int GL_MAX_ASYNC_DRAW_PIXELS_SGIX = 0x8360;
const int GL_MAX_ASYNC_READ_PIXELS_SGIX = 0x8361;
//#endif

//#ifndef GL_SGIX_async_histogram
const int GL_ASYNC_HISTOGRAM_SGIX = 0x832C;
const int GL_MAX_ASYNC_HISTOGRAM_SGIX = 0x832D;
//#endif

//#ifndef GL_INTEL_texture_scissor
//#endif

//#ifndef GL_INTEL_parallel_arrays
const int GL_PARALLEL_ARRAYS_INTEL = 0x83F4;
const int GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F5;
const int GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F6;
const int GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F7;
const int GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F8;
//#endif

//#ifndef GL_HP_occlusion_test
const int GL_OCCLUSION_TEST_HP = 0x8165;
const int GL_OCCLUSION_TEST_RESULT_HP = 0x8166;
//#endif

//#ifndef GL_EXT_pixel_transform
const int GL_PIXEL_TRANSFORM_2D_EXT = 0x8330;
const int GL_PIXEL_MAG_FILTER_EXT = 0x8331;
const int GL_PIXEL_MIN_FILTER_EXT = 0x8332;
const int GL_PIXEL_CUBIC_WEIGHT_EXT = 0x8333;
const int GL_CUBIC_EXT = 0x8334;
const int GL_AVERAGE_EXT = 0x8335;
const int GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336;
const int GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337;
const int GL_PIXEL_TRANSFORM_2D_MATRIX_EXT = 0x8338;
//#endif

//#ifndef GL_EXT_pixel_transform_color_table
//#endif

//#ifndef GL_EXT_shared_texture_palette
const int GL_SHARED_TEXTURE_PALETTE_EXT = 0x81FB;
//#endif

//#ifndef GL_EXT_separate_specular_color
const int GL_LIGHT_MODEL_COLOR_CONTROL_EXT = 0x81F8;
const int GL_SINGLE_COLOR_EXT = 0x81F9;
const int GL_SEPARATE_SPECULAR_COLOR_EXT = 0x81FA;
//#endif

//#ifndef GL_EXT_secondary_color
const int GL_COLOR_SUM_EXT = 0x8458;
const int GL_CURRENT_SECONDARY_COLOR_EXT = 0x8459;
const int GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845A;
const int GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845B;
const int GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845C;
const int GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845D;
const int GL_SECONDARY_COLOR_ARRAY_EXT = 0x845E;
//#endif

//#ifndef GL_EXT_texture_perturb_normal
const int GL_PERTURB_EXT = 0x85AE;
const int GL_TEXTURE_NORMAL_EXT = 0x85AF;
//#endif

//#ifndef GL_EXT_multi_draw_arrays
//#endif

//#ifndef GL_EXT_fog_coord
const int GL_FOG_COORDINATE_SOURCE_EXT = 0x8450;
const int GL_FOG_COORDINATE_EXT = 0x8451;
const int GL_FRAGMENT_DEPTH_EXT = 0x8452;
const int GL_CURRENT_FOG_COORDINATE_EXT = 0x8453;
const int GL_FOG_COORDINATE_ARRAY_TYPE_EXT = 0x8454;
const int GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455;
const int GL_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456;
const int GL_FOG_COORDINATE_ARRAY_EXT = 0x8457;
//#endif

//#ifndef GL_REND_screen_coordinates
const int GL_SCREEN_COORDINATES_REND = 0x8490;
const int GL_INVERTED_SCREEN_W_REND = 0x8491;
//#endif

//#ifndef GL_EXT_coordinate_frame
const int GL_TANGENT_ARRAY_EXT = 0x8439;
const int GL_BINORMAL_ARRAY_EXT = 0x843A;
const int GL_CURRENT_TANGENT_EXT = 0x843B;
const int GL_CURRENT_BINORMAL_EXT = 0x843C;
const int GL_TANGENT_ARRAY_TYPE_EXT = 0x843E;
const int GL_TANGENT_ARRAY_STRIDE_EXT = 0x843F;
const int GL_BINORMAL_ARRAY_TYPE_EXT = 0x8440;
const int GL_BINORMAL_ARRAY_STRIDE_EXT = 0x8441;
const int GL_TANGENT_ARRAY_POINTER_EXT = 0x8442;
const int GL_BINORMAL_ARRAY_POINTER_EXT = 0x8443;
const int GL_MAP1_TANGENT_EXT = 0x8444;
const int GL_MAP2_TANGENT_EXT = 0x8445;
const int GL_MAP1_BINORMAL_EXT = 0x8446;
const int GL_MAP2_BINORMAL_EXT = 0x8447;
//#endif

//#ifndef GL_EXT_texture_env_combine
const int GL_COMBINE_EXT = 0x8570;
const int GL_COMBINE_RGB_EXT = 0x8571;
const int GL_COMBINE_ALPHA_EXT = 0x8572;
const int GL_RGB_SCALE_EXT = 0x8573;
const int GL_ADD_SIGNED_EXT = 0x8574;
const int GL_INTERPOLATE_EXT = 0x8575;
const int GL_CONSTANT_EXT = 0x8576;
const int GL_PRIMARY_COLOR_EXT = 0x8577;
const int GL_PREVIOUS_EXT = 0x8578;
const int GL_SOURCE0_RGB_EXT = 0x8580;
const int GL_SOURCE1_RGB_EXT = 0x8581;
const int GL_SOURCE2_RGB_EXT = 0x8582;
const int GL_SOURCE0_ALPHA_EXT = 0x8588;
const int GL_SOURCE1_ALPHA_EXT = 0x8589;
const int GL_SOURCE2_ALPHA_EXT = 0x858A;
const int GL_OPERAND0_RGB_EXT = 0x8590;
const int GL_OPERAND1_RGB_EXT = 0x8591;
const int GL_OPERAND2_RGB_EXT = 0x8592;
const int GL_OPERAND0_ALPHA_EXT = 0x8598;
const int GL_OPERAND1_ALPHA_EXT = 0x8599;
const int GL_OPERAND2_ALPHA_EXT = 0x859A;
//#endif

//#ifndef GL_APPLE_specular_vector
const int GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85B0;
//#endif

//#ifndef GL_APPLE_transform_hint
const int GL_TRANSFORM_HINT_APPLE = 0x85B1;
//#endif

//#ifndef GL_SGIX_fog_scale
const int GL_FOG_SCALE_SGIX = 0x81FC;
const int GL_FOG_SCALE_VALUE_SGIX = 0x81FD;
//#endif

//#ifndef GL_SUNX_constant_data
const int GL_UNPACK_CONSTANT_DATA_SUNX = 0x81D5;
const int GL_TEXTURE_CONSTANT_DATA_SUNX = 0x81D6;
//#endif

//#ifndef GL_SUN_global_alpha
const int GL_GLOBAL_ALPHA_SUN = 0x81D9;
const int GL_GLOBAL_ALPHA_FACTOR_SUN = 0x81DA;
//#endif

//#ifndef GL_SUN_triangle_list
const int GL_RESTART_SUN = 0x0001;
const int GL_REPLACE_MIDDLE_SUN = 0x0002;
const int GL_REPLACE_OLDEST_SUN = 0x0003;
const int GL_TRIANGLE_LIST_SUN = 0x81D7;
const int GL_REPLACEMENT_CODE_SUN = 0x81D8;
const int GL_REPLACEMENT_CODE_ARRAY_SUN = 0x85C0;
const int GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85C1;
const int GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85C2;
const int GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85C3;
const int GL_R1UI_V3F_SUN = 0x85C4;
const int GL_R1UI_C4UB_V3F_SUN = 0x85C5;
const int GL_R1UI_C3F_V3F_SUN = 0x85C6;
const int GL_R1UI_N3F_V3F_SUN = 0x85C7;
const int GL_R1UI_C4F_N3F_V3F_SUN = 0x85C8;
const int GL_R1UI_T2F_V3F_SUN = 0x85C9;
const int GL_R1UI_T2F_N3F_V3F_SUN = 0x85CA;
const int GL_R1UI_T2F_C4F_N3F_V3F_SUN = 0x85CB;
//#endif

//#ifndef GL_SUN_vertex
//#endif

//#ifndef GL_EXT_blend_func_separate
const int GL_BLEND_DST_RGB_EXT = 0x80C8;
const int GL_BLEND_SRC_RGB_EXT = 0x80C9;
const int GL_BLEND_DST_ALPHA_EXT = 0x80CA;
const int GL_BLEND_SRC_ALPHA_EXT = 0x80CB;
//#endif

//#ifndef GL_INGR_color_clamp
const int GL_RED_MIN_CLAMP_INGR = 0x8560;
const int GL_GREEN_MIN_CLAMP_INGR = 0x8561;
const int GL_BLUE_MIN_CLAMP_INGR = 0x8562;
const int GL_ALPHA_MIN_CLAMP_INGR = 0x8563;
const int GL_RED_MAX_CLAMP_INGR = 0x8564;
const int GL_GREEN_MAX_CLAMP_INGR = 0x8565;
const int GL_BLUE_MAX_CLAMP_INGR = 0x8566;
const int GL_ALPHA_MAX_CLAMP_INGR = 0x8567;
//#endif

//#ifndef GL_INGR_interlace_read
const int GL_INTERLACE_READ_INGR = 0x8568;
//#endif

//#ifndef GL_EXT_stencil_wrap
const int GL_INCR_WRAP_EXT = 0x8507;
const int GL_DECR_WRAP_EXT = 0x8508;
//#endif

//#ifndef GL_EXT_422_pixels
const int GL_422_EXT = 0x80CC;
const int GL_422_REV_EXT = 0x80CD;
const int GL_422_AVERAGE_EXT = 0x80CE;
const int GL_422_REV_AVERAGE_EXT = 0x80CF;
//#endif

//#ifndef GL_NV_texgen_reflection
const int GL_NORMAL_MAP_NV = 0x8511;
const int GL_REFLECTION_MAP_NV = 0x8512;
//#endif

//#ifndef GL_EXT_texture_cube_map
const int GL_NORMAL_MAP_EXT = 0x8511;
const int GL_REFLECTION_MAP_EXT = 0x8512;
const int GL_TEXTURE_CUBE_MAP_EXT = 0x8513;
const int GL_TEXTURE_BINDING_CUBE_MAP_EXT = 0x8514;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = 0x8515;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = 0x8516;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = 0x8517;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = 0x8518;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = 0x8519;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = 0x851A;
const int GL_PROXY_TEXTURE_CUBE_MAP_EXT = 0x851B;
const int GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = 0x851C;
//#endif

//#ifndef GL_SUN_convolution_border_modes
const int GL_WRAP_BORDER_SUN = 0x81D4;
//#endif

//#ifndef GL_EXT_texture_env_add
//#endif

//#ifndef GL_EXT_texture_lod_bias
const int GL_MAX_TEXTURE_LOD_BIAS_EXT = 0x84FD;
const int GL_TEXTURE_FILTER_CONTROL_EXT = 0x8500;
const int GL_TEXTURE_LOD_BIAS_EXT = 0x8501;
//#endif

//#ifndef GL_EXT_texture_filter_anisotropic
const int GL_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;
const int GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;
//#endif

//#ifndef GL_EXT_vertex_weighting
const int GL_MODELVIEW0_STACK_DEPTH_EXT = GL_MODELVIEW_STACK_DEPTH;
const int GL_MODELVIEW1_STACK_DEPTH_EXT = 0x8502;
const int GL_MODELVIEW0_MATRIX_EXT = GL_MODELVIEW_MATRIX;
const int GL_MODELVIEW1_MATRIX_EXT = 0x8506;
const int GL_VERTEX_WEIGHTING_EXT = 0x8509;
const int GL_MODELVIEW0_EXT = GL_MODELVIEW;
const int GL_MODELVIEW1_EXT = 0x850A;
const int GL_CURRENT_VERTEX_WEIGHT_EXT = 0x850B;
const int GL_VERTEX_WEIGHT_ARRAY_EXT = 0x850C;
const int GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 0x850D;
const int GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 0x850E;
const int GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 0x850F;
const int GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510;
//#endif

//#ifndef GL_NV_light_max_exponent
const int GL_MAX_SHININESS_NV = 0x8504;
const int GL_MAX_SPOT_EXPONENT_NV = 0x8505;
//#endif

//#ifndef GL_NV_vertex_array_range
const int GL_VERTEX_ARRAY_RANGE_NV = 0x851D;
const int GL_VERTEX_ARRAY_RANGE_LENGTH_NV = 0x851E;
const int GL_VERTEX_ARRAY_RANGE_VALID_NV = 0x851F;
const int GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520;
const int GL_VERTEX_ARRAY_RANGE_POINTER_NV = 0x8521;
//#endif

//#ifndef GL_NV_register_combiners
const int GL_REGISTER_COMBINERS_NV = 0x8522;
const int GL_VARIABLE_A_NV = 0x8523;
const int GL_VARIABLE_B_NV = 0x8524;
const int GL_VARIABLE_C_NV = 0x8525;
const int GL_VARIABLE_D_NV = 0x8526;
const int GL_VARIABLE_E_NV = 0x8527;
const int GL_VARIABLE_F_NV = 0x8528;
const int GL_VARIABLE_G_NV = 0x8529;
const int GL_CONSTANT_COLOR0_NV = 0x852A;
const int GL_CONSTANT_COLOR1_NV = 0x852B;
const int GL_PRIMARY_COLOR_NV = 0x852C;
const int GL_SECONDARY_COLOR_NV = 0x852D;
const int GL_SPARE0_NV = 0x852E;
const int GL_SPARE1_NV = 0x852F;
const int GL_DISCARD_NV = 0x8530;
const int GL_E_TIMES_F_NV = 0x8531;
const int GL_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532;
const int GL_UNSIGNED_IDENTITY_NV = 0x8536;
const int GL_UNSIGNED_INVERT_NV = 0x8537;
const int GL_EXPAND_NORMAL_NV = 0x8538;
const int GL_EXPAND_NEGATE_NV = 0x8539;
const int GL_HALF_BIAS_NORMAL_NV = 0x853A;
const int GL_HALF_BIAS_NEGATE_NV = 0x853B;
const int GL_SIGNED_IDENTITY_NV = 0x853C;
const int GL_SIGNED_NEGATE_NV = 0x853D;
const int GL_SCALE_BY_TWO_NV = 0x853E;
const int GL_SCALE_BY_FOUR_NV = 0x853F;
const int GL_SCALE_BY_ONE_HALF_NV = 0x8540;
const int GL_BIAS_BY_NEGATIVE_ONE_HALF_NV = 0x8541;
const int GL_COMBINER_INPUT_NV = 0x8542;
const int GL_COMBINER_MAPPING_NV = 0x8543;
const int GL_COMBINER_COMPONENT_USAGE_NV = 0x8544;
const int GL_COMBINER_AB_DOT_PRODUCT_NV = 0x8545;
const int GL_COMBINER_CD_DOT_PRODUCT_NV = 0x8546;
const int GL_COMBINER_MUX_SUM_NV = 0x8547;
const int GL_COMBINER_SCALE_NV = 0x8548;
const int GL_COMBINER_BIAS_NV = 0x8549;
const int GL_COMBINER_AB_OUTPUT_NV = 0x854A;
const int GL_COMBINER_CD_OUTPUT_NV = 0x854B;
const int GL_COMBINER_SUM_OUTPUT_NV = 0x854C;
const int GL_MAX_GENERAL_COMBINERS_NV = 0x854D;
const int GL_NUM_GENERAL_COMBINERS_NV = 0x854E;
const int GL_COLOR_SUM_CLAMP_NV = 0x854F;
const int GL_COMBINER0_NV = 0x8550;
const int GL_COMBINER1_NV = 0x8551;
const int GL_COMBINER2_NV = 0x8552;
const int GL_COMBINER3_NV = 0x8553;
const int GL_COMBINER4_NV = 0x8554;
const int GL_COMBINER5_NV = 0x8555;
const int GL_COMBINER6_NV = 0x8556;
const int GL_COMBINER7_NV = 0x8557;
/* reuse GL_TEXTURE0_ARB */
/* reuse GL_TEXTURE1_ARB */
/* reuse GL_ZERO */
/* reuse GL_NONE */
/* reuse GL_FOG */
//#endif

//#ifndef GL_NV_fog_distance
const int GL_FOG_DISTANCE_MODE_NV = 0x855A;
const int GL_EYE_RADIAL_NV = 0x855B;
const int GL_EYE_PLANE_ABSOLUTE_NV = 0x855C;
/* reuse GL_EYE_PLANE */
//#endif

//#ifndef GL_NV_texgen_emboss
const int GL_EMBOSS_LIGHT_NV = 0x855D;
const int GL_EMBOSS_CONSTANT_NV = 0x855E;
const int GL_EMBOSS_MAP_NV = 0x855F;
//#endif

//#ifndef GL_NV_blend_square
//#endif

//#ifndef GL_NV_texture_env_combine4
const int GL_COMBINE4_NV = 0x8503;
const int GL_SOURCE3_RGB_NV = 0x8583;
const int GL_SOURCE3_ALPHA_NV = 0x858B;
const int GL_OPERAND3_RGB_NV = 0x8593;
const int GL_OPERAND3_ALPHA_NV = 0x859B;
//#endif

//#ifndef GL_MESA_resize_buffers
//#endif

//#ifndef GL_MESA_window_pos
//#endif

//#ifndef GL_EXT_texture_compression_s3tc
const int GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;
const int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;
const int GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;
const int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;
//#endif

//#ifndef GL_IBM_cull_vertex
const int GL_CULL_VERTEX_IBM = 103050;
//#endif

//#ifndef GL_IBM_multimode_draw_arrays
//#endif

//#ifndef GL_IBM_vertex_array_lists
const int GL_VERTEX_ARRAY_LIST_IBM = 103070;
const int GL_NORMAL_ARRAY_LIST_IBM = 103071;
const int GL_COLOR_ARRAY_LIST_IBM = 103072;
const int GL_INDEX_ARRAY_LIST_IBM = 103073;
const int GL_TEXTURE_COORD_ARRAY_LIST_IBM = 103074;
const int GL_EDGE_FLAG_ARRAY_LIST_IBM = 103075;
const int GL_FOG_COORDINATE_ARRAY_LIST_IBM = 103076;
const int GL_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077;
const int GL_VERTEX_ARRAY_LIST_STRIDE_IBM = 103080;
const int GL_NORMAL_ARRAY_LIST_STRIDE_IBM = 103081;
const int GL_COLOR_ARRAY_LIST_STRIDE_IBM = 103082;
const int GL_INDEX_ARRAY_LIST_STRIDE_IBM = 103083;
const int GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084;
const int GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085;
const int GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086;
const int GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087;
//#endif

//#ifndef GL_SGIX_subsample
const int GL_PACK_SUBSAMPLE_RATE_SGIX = 0x85A0;
const int GL_UNPACK_SUBSAMPLE_RATE_SGIX = 0x85A1;
const int GL_PIXEL_SUBSAMPLE_4444_SGIX = 0x85A2;
const int GL_PIXEL_SUBSAMPLE_2424_SGIX = 0x85A3;
const int GL_PIXEL_SUBSAMPLE_4242_SGIX = 0x85A4;
//#endif

//#ifndef GL_SGIX_ycrcb_subsample
//#endif

//#ifndef GL_SGIX_ycrcba
const int GL_YCRCB_SGIX = 0x8318;
const int GL_YCRCBA_SGIX = 0x8319;
//#endif

//#ifndef GL_SGI_depth_pass_instrument
const int GL_DEPTH_PASS_INSTRUMENT_SGIX = 0x8310;
const int GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX = 0x8311;
const int GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX = 0x8312;
//#endif

//#ifndef GL_3DFX_texture_compression_FXT1
const int GL_COMPRESSED_RGB_FXT1_3DFX = 0x86B0;
const int GL_COMPRESSED_RGBA_FXT1_3DFX = 0x86B1;
//#endif

//#ifndef GL_3DFX_multisample
const int GL_MULTISAMPLE_3DFX = 0x86B2;
const int GL_SAMPLE_BUFFERS_3DFX = 0x86B3;
const int GL_SAMPLES_3DFX = 0x86B4;
const int GL_MULTISAMPLE_BIT_3DFX = 0x20000000;
//#endif

//#ifndef GL_3DFX_tbuffer
//#endif

//#ifndef GL_EXT_multisample
const int GL_MULTISAMPLE_EXT = 0x809D;
const int GL_SAMPLE_ALPHA_TO_MASK_EXT = 0x809E;
const int GL_SAMPLE_ALPHA_TO_ONE_EXT = 0x809F;
const int GL_SAMPLE_MASK_EXT = 0x80A0;
const int GL_1PASS_EXT = 0x80A1;
const int GL_2PASS_0_EXT = 0x80A2;
const int GL_2PASS_1_EXT = 0x80A3;
const int GL_4PASS_0_EXT = 0x80A4;
const int GL_4PASS_1_EXT = 0x80A5;
const int GL_4PASS_2_EXT = 0x80A6;
const int GL_4PASS_3_EXT = 0x80A7;
const int GL_SAMPLE_BUFFERS_EXT = 0x80A8;
const int GL_SAMPLES_EXT = 0x80A9;
const int GL_SAMPLE_MASK_VALUE_EXT = 0x80AA;
const int GL_SAMPLE_MASK_INVERT_EXT = 0x80AB;
const int GL_SAMPLE_PATTERN_EXT = 0x80AC;
const int GL_MULTISAMPLE_BIT_EXT = 0x20000000;
//#endif

//#ifndef GL_SGIX_vertex_preclip
const int GL_VERTEX_PRECLIP_SGIX = 0x83EE;
const int GL_VERTEX_PRECLIP_HINT_SGIX = 0x83EF;
//#endif

//#ifndef GL_SGIX_convolution_accuracy
const int GL_CONVOLUTION_HINT_SGIX = 0x8316;
//#endif

//#ifndef GL_SGIX_resample
const int GL_PACK_RESAMPLE_SGIX = 0x842C;
const int GL_UNPACK_RESAMPLE_SGIX = 0x842D;
const int GL_RESAMPLE_REPLICATE_SGIX = 0x842E;
const int GL_RESAMPLE_ZERO_FILL_SGIX = 0x842F;
const int GL_RESAMPLE_DECIMATE_SGIX = 0x8430;
//#endif

//#ifndef GL_SGIS_point_line_texgen
const int GL_EYE_DISTANCE_TO_POINT_SGIS = 0x81F0;
const int GL_OBJECT_DISTANCE_TO_POINT_SGIS = 0x81F1;
const int GL_EYE_DISTANCE_TO_LINE_SGIS = 0x81F2;
const int GL_OBJECT_DISTANCE_TO_LINE_SGIS = 0x81F3;
const int GL_EYE_POINT_SGIS = 0x81F4;
const int GL_OBJECT_POINT_SGIS = 0x81F5;
const int GL_EYE_LINE_SGIS = 0x81F6;
const int GL_OBJECT_LINE_SGIS = 0x81F7;
//#endif

//#ifndef GL_SGIS_texture_color_mask
const int GL_TEXTURE_COLOR_WRITEMASK_SGIS = 0x81EF;
//#endif

//#ifndef GL_EXT_texture_env_dot3
const int GL_DOT3_RGB_EXT = 0x8740;
const int GL_DOT3_RGBA_EXT = 0x8741;
//#endif

//#ifndef GL_ATI_texture_mirror_once
const int GL_MIRROR_CLAMP_ATI = 0x8742;
const int GL_MIRROR_CLAMP_TO_EDGE_ATI = 0x8743;
//#endif

//#ifndef GL_NV_fence
const int GL_ALL_COMPLETED_NV = 0x84F2;
const int GL_FENCE_STATUS_NV = 0x84F3;
const int GL_FENCE_CONDITION_NV = 0x84F4;
//#endif

//#ifndef GL_IBM_texture_mirrored_repeat
const int GL_MIRRORED_REPEAT_IBM = 0x8370;
//#endif

//#ifndef GL_NV_evaluators
const int GL_EVAL_2D_NV = 0x86C0;
const int GL_EVAL_TRIANGULAR_2D_NV = 0x86C1;
const int GL_MAP_TESSELLATION_NV = 0x86C2;
const int GL_MAP_ATTRIB_U_ORDER_NV = 0x86C3;
const int GL_MAP_ATTRIB_V_ORDER_NV = 0x86C4;
const int GL_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C5;
const int GL_EVAL_VERTEX_ATTRIB0_NV = 0x86C6;
const int GL_EVAL_VERTEX_ATTRIB1_NV = 0x86C7;
const int GL_EVAL_VERTEX_ATTRIB2_NV = 0x86C8;
const int GL_EVAL_VERTEX_ATTRIB3_NV = 0x86C9;
const int GL_EVAL_VERTEX_ATTRIB4_NV = 0x86CA;
const int GL_EVAL_VERTEX_ATTRIB5_NV = 0x86CB;
const int GL_EVAL_VERTEX_ATTRIB6_NV = 0x86CC;
const int GL_EVAL_VERTEX_ATTRIB7_NV = 0x86CD;
const int GL_EVAL_VERTEX_ATTRIB8_NV = 0x86CE;
const int GL_EVAL_VERTEX_ATTRIB9_NV = 0x86CF;
const int GL_EVAL_VERTEX_ATTRIB10_NV = 0x86D0;
const int GL_EVAL_VERTEX_ATTRIB11_NV = 0x86D1;
const int GL_EVAL_VERTEX_ATTRIB12_NV = 0x86D2;
const int GL_EVAL_VERTEX_ATTRIB13_NV = 0x86D3;
const int GL_EVAL_VERTEX_ATTRIB14_NV = 0x86D4;
const int GL_EVAL_VERTEX_ATTRIB15_NV = 0x86D5;
const int GL_MAX_MAP_TESSELLATION_NV = 0x86D6;
const int GL_MAX_RATIONAL_EVAL_ORDER_NV = 0x86D7;
//#endif

//#ifndef GL_NV_packed_depth_stencil
const int GL_DEPTH_STENCIL_NV = 0x84F9;
const int GL_UNSIGNED_INT_24_8_NV = 0x84FA;
//#endif

//#ifndef GL_NV_register_combiners2
const int GL_PER_STAGE_CONSTANTS_NV = 0x8535;
//#endif

//#ifndef GL_NV_texture_compression_vtc
//#endif

//#ifndef GL_NV_texture_rectangle
const int GL_TEXTURE_RECTANGLE_NV = 0x84F5;
const int GL_TEXTURE_BINDING_RECTANGLE_NV = 0x84F6;
const int GL_PROXY_TEXTURE_RECTANGLE_NV = 0x84F7;
const int GL_MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84F8;
//#endif

//#ifndef GL_NV_texture_shader
const int GL_OFFSET_TEXTURE_RECTANGLE_NV = 0x864C;
const int GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 0x864D;
const int GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 0x864E;
const int GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 0x86D9;
const int GL_UNSIGNED_INT_S8_S8_8_8_NV = 0x86DA;
const int GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = 0x86DB;
const int GL_DSDT_MAG_INTENSITY_NV = 0x86DC;
const int GL_SHADER_CONSISTENT_NV = 0x86DD;
const int GL_TEXTURE_SHADER_NV = 0x86DE;
const int GL_SHADER_OPERATION_NV = 0x86DF;
const int GL_CULL_MODES_NV = 0x86E0;
const int GL_OFFSET_TEXTURE_MATRIX_NV = 0x86E1;
const int GL_OFFSET_TEXTURE_SCALE_NV = 0x86E2;
const int GL_OFFSET_TEXTURE_BIAS_NV = 0x86E3;
const int GL_OFFSET_TEXTURE_2D_MATRIX_NV = GL_OFFSET_TEXTURE_MATRIX_NV;
const int GL_OFFSET_TEXTURE_2D_SCALE_NV = GL_OFFSET_TEXTURE_SCALE_NV;
const int GL_OFFSET_TEXTURE_2D_BIAS_NV = GL_OFFSET_TEXTURE_BIAS_NV;
const int GL_PREVIOUS_TEXTURE_INPUT_NV = 0x86E4;
const int GL_CONST_EYE_NV = 0x86E5;
const int GL_PASS_THROUGH_NV = 0x86E6;
const int GL_CULL_FRAGMENT_NV = 0x86E7;
const int GL_OFFSET_TEXTURE_2D_NV = 0x86E8;
const int GL_DEPENDENT_AR_TEXTURE_2D_NV = 0x86E9;
const int GL_DEPENDENT_GB_TEXTURE_2D_NV = 0x86EA;
const int GL_DOT_PRODUCT_NV = 0x86EC;
const int GL_DOT_PRODUCT_DEPTH_REPLACE_NV = 0x86ED;
const int GL_DOT_PRODUCT_TEXTURE_2D_NV = 0x86EE;
const int GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 0x86F0;
const int GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 0x86F1;
const int GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 0x86F2;
const int GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 0x86F3;
const int GL_HILO_NV = 0x86F4;
const int GL_DSDT_NV = 0x86F5;
const int GL_DSDT_MAG_NV = 0x86F6;
const int GL_DSDT_MAG_VIB_NV = 0x86F7;
const int GL_HILO16_NV = 0x86F8;
const int GL_SIGNED_HILO_NV = 0x86F9;
const int GL_SIGNED_HILO16_NV = 0x86FA;
const int GL_SIGNED_RGBA_NV = 0x86FB;
const int GL_SIGNED_RGBA8_NV = 0x86FC;
const int GL_SIGNED_RGB_NV = 0x86FE;
const int GL_SIGNED_RGB8_NV = 0x86FF;
const int GL_SIGNED_LUMINANCE_NV = 0x8701;
const int GL_SIGNED_LUMINANCE8_NV = 0x8702;
const int GL_SIGNED_LUMINANCE_ALPHA_NV = 0x8703;
const int GL_SIGNED_LUMINANCE8_ALPHA8_NV = 0x8704;
const int GL_SIGNED_ALPHA_NV = 0x8705;
const int GL_SIGNED_ALPHA8_NV = 0x8706;
const int GL_SIGNED_INTENSITY_NV = 0x8707;
const int GL_SIGNED_INTENSITY8_NV = 0x8708;
const int GL_DSDT8_NV = 0x8709;
const int GL_DSDT8_MAG8_NV = 0x870A;
const int GL_DSDT8_MAG8_INTENSITY8_NV = 0x870B;
const int GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = 0x870C;
const int GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 0x870D;
const int GL_HI_SCALE_NV = 0x870E;
const int GL_LO_SCALE_NV = 0x870F;
const int GL_DS_SCALE_NV = 0x8710;
const int GL_DT_SCALE_NV = 0x8711;
const int GL_MAGNITUDE_SCALE_NV = 0x8712;
const int GL_VIBRANCE_SCALE_NV = 0x8713;
const int GL_HI_BIAS_NV = 0x8714;
const int GL_LO_BIAS_NV = 0x8715;
const int GL_DS_BIAS_NV = 0x8716;
const int GL_DT_BIAS_NV = 0x8717;
const int GL_MAGNITUDE_BIAS_NV = 0x8718;
const int GL_VIBRANCE_BIAS_NV = 0x8719;
const int GL_TEXTURE_BORDER_VALUES_NV = 0x871A;
const int GL_TEXTURE_HI_SIZE_NV = 0x871B;
const int GL_TEXTURE_LO_SIZE_NV = 0x871C;
const int GL_TEXTURE_DS_SIZE_NV = 0x871D;
const int GL_TEXTURE_DT_SIZE_NV = 0x871E;
const int GL_TEXTURE_MAG_SIZE_NV = 0x871F;
//#endif

//#ifndef GL_NV_texture_shader2
const int GL_DOT_PRODUCT_TEXTURE_3D_NV = 0x86EF;
//#endif

//#ifndef GL_NV_vertex_array_range2
const int GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533;
//#endif

//#ifndef GL_NV_vertex_program
const int GL_VERTEX_PROGRAM_NV = 0x8620;
const int GL_VERTEX_STATE_PROGRAM_NV = 0x8621;
const int GL_ATTRIB_ARRAY_SIZE_NV = 0x8623;
const int GL_ATTRIB_ARRAY_STRIDE_NV = 0x8624;
const int GL_ATTRIB_ARRAY_TYPE_NV = 0x8625;
const int GL_CURRENT_ATTRIB_NV = 0x8626;
const int GL_PROGRAM_LENGTH_NV = 0x8627;
const int GL_PROGRAM_STRING_NV = 0x8628;
const int GL_MODELVIEW_PROJECTION_NV = 0x8629;
const int GL_IDENTITY_NV = 0x862A;
const int GL_INVERSE_NV = 0x862B;
const int GL_TRANSPOSE_NV = 0x862C;
const int GL_INVERSE_TRANSPOSE_NV = 0x862D;
const int GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E;
const int GL_MAX_TRACK_MATRICES_NV = 0x862F;
const int GL_MATRIX0_NV = 0x8630;
const int GL_MATRIX1_NV = 0x8631;
const int GL_MATRIX2_NV = 0x8632;
const int GL_MATRIX3_NV = 0x8633;
const int GL_MATRIX4_NV = 0x8634;
const int GL_MATRIX5_NV = 0x8635;
const int GL_MATRIX6_NV = 0x8636;
const int GL_MATRIX7_NV = 0x8637;
const int GL_CURRENT_MATRIX_STACK_DEPTH_NV = 0x8640;
const int GL_CURRENT_MATRIX_NV = 0x8641;
const int GL_VERTEX_PROGRAM_POINT_SIZE_NV = 0x8642;
const int GL_VERTEX_PROGRAM_TWO_SIDE_NV = 0x8643;
const int GL_PROGRAM_PARAMETER_NV = 0x8644;
const int GL_ATTRIB_ARRAY_POINTER_NV = 0x8645;
const int GL_PROGRAM_TARGET_NV = 0x8646;
const int GL_PROGRAM_RESIDENT_NV = 0x8647;
const int GL_TRACK_MATRIX_NV = 0x8648;
const int GL_TRACK_MATRIX_TRANSFORM_NV = 0x8649;
const int GL_VERTEX_PROGRAM_BINDING_NV = 0x864A;
const int GL_PROGRAM_ERROR_POSITION_NV = 0x864B;
const int GL_VERTEX_ATTRIB_ARRAY0_NV = 0x8650;
const int GL_VERTEX_ATTRIB_ARRAY1_NV = 0x8651;
const int GL_VERTEX_ATTRIB_ARRAY2_NV = 0x8652;
const int GL_VERTEX_ATTRIB_ARRAY3_NV = 0x8653;
const int GL_VERTEX_ATTRIB_ARRAY4_NV = 0x8654;
const int GL_VERTEX_ATTRIB_ARRAY5_NV = 0x8655;
const int GL_VERTEX_ATTRIB_ARRAY6_NV = 0x8656;
const int GL_VERTEX_ATTRIB_ARRAY7_NV = 0x8657;
const int GL_VERTEX_ATTRIB_ARRAY8_NV = 0x8658;
const int GL_VERTEX_ATTRIB_ARRAY9_NV = 0x8659;
const int GL_VERTEX_ATTRIB_ARRAY10_NV = 0x865A;
const int GL_VERTEX_ATTRIB_ARRAY11_NV = 0x865B;
const int GL_VERTEX_ATTRIB_ARRAY12_NV = 0x865C;
const int GL_VERTEX_ATTRIB_ARRAY13_NV = 0x865D;
const int GL_VERTEX_ATTRIB_ARRAY14_NV = 0x865E;
const int GL_VERTEX_ATTRIB_ARRAY15_NV = 0x865F;
const int GL_MAP1_VERTEX_ATTRIB0_4_NV = 0x8660;
const int GL_MAP1_VERTEX_ATTRIB1_4_NV = 0x8661;
const int GL_MAP1_VERTEX_ATTRIB2_4_NV = 0x8662;
const int GL_MAP1_VERTEX_ATTRIB3_4_NV = 0x8663;
const int GL_MAP1_VERTEX_ATTRIB4_4_NV = 0x8664;
const int GL_MAP1_VERTEX_ATTRIB5_4_NV = 0x8665;
const int GL_MAP1_VERTEX_ATTRIB6_4_NV = 0x8666;
const int GL_MAP1_VERTEX_ATTRIB7_4_NV = 0x8667;
const int GL_MAP1_VERTEX_ATTRIB8_4_NV = 0x8668;
const int GL_MAP1_VERTEX_ATTRIB9_4_NV = 0x8669;
const int GL_MAP1_VERTEX_ATTRIB10_4_NV = 0x866A;
const int GL_MAP1_VERTEX_ATTRIB11_4_NV = 0x866B;
const int GL_MAP1_VERTEX_ATTRIB12_4_NV = 0x866C;
const int GL_MAP1_VERTEX_ATTRIB13_4_NV = 0x866D;
const int GL_MAP1_VERTEX_ATTRIB14_4_NV = 0x866E;
const int GL_MAP1_VERTEX_ATTRIB15_4_NV = 0x866F;
const int GL_MAP2_VERTEX_ATTRIB0_4_NV = 0x8670;
const int GL_MAP2_VERTEX_ATTRIB1_4_NV = 0x8671;
const int GL_MAP2_VERTEX_ATTRIB2_4_NV = 0x8672;
const int GL_MAP2_VERTEX_ATTRIB3_4_NV = 0x8673;
const int GL_MAP2_VERTEX_ATTRIB4_4_NV = 0x8674;
const int GL_MAP2_VERTEX_ATTRIB5_4_NV = 0x8675;
const int GL_MAP2_VERTEX_ATTRIB6_4_NV = 0x8676;
const int GL_MAP2_VERTEX_ATTRIB7_4_NV = 0x8677;
const int GL_MAP2_VERTEX_ATTRIB8_4_NV = 0x8678;
const int GL_MAP2_VERTEX_ATTRIB9_4_NV = 0x8679;
const int GL_MAP2_VERTEX_ATTRIB10_4_NV = 0x867A;
const int GL_MAP2_VERTEX_ATTRIB11_4_NV = 0x867B;
const int GL_MAP2_VERTEX_ATTRIB12_4_NV = 0x867C;
const int GL_MAP2_VERTEX_ATTRIB13_4_NV = 0x867D;
const int GL_MAP2_VERTEX_ATTRIB14_4_NV = 0x867E;
const int GL_MAP2_VERTEX_ATTRIB15_4_NV = 0x867F;
//#endif

//#ifndef GL_SGIX_texture_coordinate_clamp
const int GL_TEXTURE_MAX_CLAMP_S_SGIX = 0x8369;
const int GL_TEXTURE_MAX_CLAMP_T_SGIX = 0x836A;
const int GL_TEXTURE_MAX_CLAMP_R_SGIX = 0x836B;
//#endif

//#ifndef GL_SGIX_scalebias_hint
const int GL_SCALEBIAS_HINT_SGIX = 0x8322;
//#endif

//#ifndef GL_OML_interlace
const int GL_INTERLACE_OML = 0x8980;
const int GL_INTERLACE_READ_OML = 0x8981;
//#endif

//#ifndef GL_OML_subsample
const int GL_FORMAT_SUBSAMPLE_24_24_OML = 0x8982;
const int GL_FORMAT_SUBSAMPLE_244_244_OML = 0x8983;
//#endif

//#ifndef GL_OML_resample
const int GL_PACK_RESAMPLE_OML = 0x8984;
const int GL_UNPACK_RESAMPLE_OML = 0x8985;
const int GL_RESAMPLE_REPLICATE_OML = 0x8986;
const int GL_RESAMPLE_ZERO_FILL_OML = 0x8987;
const int GL_RESAMPLE_AVERAGE_OML = 0x8988;
const int GL_RESAMPLE_DECIMATE_OML = 0x8989;
//#endif

//#ifndef GL_NV_copy_depth_to_color
const int GL_DEPTH_STENCIL_TO_RGBA_NV = 0x886E;
const int GL_DEPTH_STENCIL_TO_BGRA_NV = 0x886F;
//#endif

//#ifndef GL_ATI_envmap_bumpmap
const int GL_BUMP_ROT_MATRIX_ATI = 0x8775;
const int GL_BUMP_ROT_MATRIX_SIZE_ATI = 0x8776;
const int GL_BUMP_NUM_TEX_UNITS_ATI = 0x8777;
const int GL_BUMP_TEX_UNITS_ATI = 0x8778;
const int GL_DUDV_ATI = 0x8779;
const int GL_DU8DV8_ATI = 0x877A;
const int GL_BUMP_ENVMAP_ATI = 0x877B;
const int GL_BUMP_TARGET_ATI = 0x877C;
//#endif

//#ifndef GL_ATI_fragment_shader
const int GL_FRAGMENT_SHADER_ATI = 0x8920;
const int GL_REG_0_ATI = 0x8921;
const int GL_REG_1_ATI = 0x8922;
const int GL_REG_2_ATI = 0x8923;
const int GL_REG_3_ATI = 0x8924;
const int GL_REG_4_ATI = 0x8925;
const int GL_REG_5_ATI = 0x8926;
const int GL_REG_6_ATI = 0x8927;
const int GL_REG_7_ATI = 0x8928;
const int GL_REG_8_ATI = 0x8929;
const int GL_REG_9_ATI = 0x892A;
const int GL_REG_10_ATI = 0x892B;
const int GL_REG_11_ATI = 0x892C;
const int GL_REG_12_ATI = 0x892D;
const int GL_REG_13_ATI = 0x892E;
const int GL_REG_14_ATI = 0x892F;
const int GL_REG_15_ATI = 0x8930;
const int GL_REG_16_ATI = 0x8931;
const int GL_REG_17_ATI = 0x8932;
const int GL_REG_18_ATI = 0x8933;
const int GL_REG_19_ATI = 0x8934;
const int GL_REG_20_ATI = 0x8935;
const int GL_REG_21_ATI = 0x8936;
const int GL_REG_22_ATI = 0x8937;
const int GL_REG_23_ATI = 0x8938;
const int GL_REG_24_ATI = 0x8939;
const int GL_REG_25_ATI = 0x893A;
const int GL_REG_26_ATI = 0x893B;
const int GL_REG_27_ATI = 0x893C;
const int GL_REG_28_ATI = 0x893D;
const int GL_REG_29_ATI = 0x893E;
const int GL_REG_30_ATI = 0x893F;
const int GL_REG_31_ATI = 0x8940;
const int GL_CON_0_ATI = 0x8941;
const int GL_CON_1_ATI = 0x8942;
const int GL_CON_2_ATI = 0x8943;
const int GL_CON_3_ATI = 0x8944;
const int GL_CON_4_ATI = 0x8945;
const int GL_CON_5_ATI = 0x8946;
const int GL_CON_6_ATI = 0x8947;
const int GL_CON_7_ATI = 0x8948;
const int GL_CON_8_ATI = 0x8949;
const int GL_CON_9_ATI = 0x894A;
const int GL_CON_10_ATI = 0x894B;
const int GL_CON_11_ATI = 0x894C;
const int GL_CON_12_ATI = 0x894D;
const int GL_CON_13_ATI = 0x894E;
const int GL_CON_14_ATI = 0x894F;
const int GL_CON_15_ATI = 0x8950;
const int GL_CON_16_ATI = 0x8951;
const int GL_CON_17_ATI = 0x8952;
const int GL_CON_18_ATI = 0x8953;
const int GL_CON_19_ATI = 0x8954;
const int GL_CON_20_ATI = 0x8955;
const int GL_CON_21_ATI = 0x8956;
const int GL_CON_22_ATI = 0x8957;
const int GL_CON_23_ATI = 0x8958;
const int GL_CON_24_ATI = 0x8959;
const int GL_CON_25_ATI = 0x895A;
const int GL_CON_26_ATI = 0x895B;
const int GL_CON_27_ATI = 0x895C;
const int GL_CON_28_ATI = 0x895D;
const int GL_CON_29_ATI = 0x895E;
const int GL_CON_30_ATI = 0x895F;
const int GL_CON_31_ATI = 0x8960;
const int GL_MOV_ATI = 0x8961;
const int GL_ADD_ATI = 0x8963;
const int GL_MUL_ATI = 0x8964;
const int GL_SUB_ATI = 0x8965;
const int GL_DOT3_ATI = 0x8966;
const int GL_DOT4_ATI = 0x8967;
const int GL_MAD_ATI = 0x8968;
const int GL_LERP_ATI = 0x8969;
const int GL_CND_ATI = 0x896A;
const int GL_CND0_ATI = 0x896B;
const int GL_DOT2_ADD_ATI = 0x896C;
const int GL_SECONDARY_INTERPOLATOR_ATI = 0x896D;
const int GL_NUM_FRAGMENT_REGISTERS_ATI = 0x896E;
const int GL_NUM_FRAGMENT_CONSTANTS_ATI = 0x896F;
const int GL_NUM_PASSES_ATI = 0x8970;
const int GL_NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971;
const int GL_NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972;
const int GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973;
const int GL_NUM_LOOPBACK_COMPONENTS_ATI = 0x8974;
const int GL_COLOR_ALPHA_PAIRING_ATI = 0x8975;
const int GL_SWIZZLE_STR_ATI = 0x8976;
const int GL_SWIZZLE_STQ_ATI = 0x8977;
const int GL_SWIZZLE_STR_DR_ATI = 0x8978;
const int GL_SWIZZLE_STQ_DQ_ATI = 0x8979;
const int GL_SWIZZLE_STRQ_ATI = 0x897A;
const int GL_SWIZZLE_STRQ_DQ_ATI = 0x897B;
const int GL_RED_BIT_ATI = 0x00000001;
const int GL_GREEN_BIT_ATI = 0x00000002;
const int GL_BLUE_BIT_ATI = 0x00000004;
const int GL_2X_BIT_ATI = 0x00000001;
const int GL_4X_BIT_ATI = 0x00000002;
const int GL_8X_BIT_ATI = 0x00000004;
const int GL_HALF_BIT_ATI = 0x00000008;
const int GL_QUARTER_BIT_ATI = 0x00000010;
const int GL_EIGHTH_BIT_ATI = 0x00000020;
const int GL_SATURATE_BIT_ATI = 0x00000040;
const int GL_COMP_BIT_ATI = 0x00000002;
const int GL_NEGATE_BIT_ATI = 0x00000004;
const int GL_BIAS_BIT_ATI = 0x00000008;
//#endif

//#ifndef GL_ATI_pn_triangles
const int GL_PN_TRIANGLES_ATI = 0x87F0;
const int GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1;
const int GL_PN_TRIANGLES_POINT_MODE_ATI = 0x87F2;
const int GL_PN_TRIANGLES_NORMAL_MODE_ATI = 0x87F3;
const int GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4;
const int GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5;
const int GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6;
const int GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7;
const int GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8;
//#endif

//#ifndef GL_ATI_vertex_array_object
const int GL_STATIC_ATI = 0x8760;
const int GL_DYNAMIC_ATI = 0x8761;
const int GL_PRESERVE_ATI = 0x8762;
const int GL_DISCARD_ATI = 0x8763;
const int GL_OBJECT_BUFFER_SIZE_ATI = 0x8764;
const int GL_OBJECT_BUFFER_USAGE_ATI = 0x8765;
const int GL_ARRAY_OBJECT_BUFFER_ATI = 0x8766;
const int GL_ARRAY_OBJECT_OFFSET_ATI = 0x8767;
//#endif

//#ifndef GL_EXT_vertex_shader
const int GL_VERTEX_SHADER_EXT = 0x8780;
const int GL_VERTEX_SHADER_BINDING_EXT = 0x8781;
const int GL_OP_INDEX_EXT = 0x8782;
const int GL_OP_NEGATE_EXT = 0x8783;
const int GL_OP_DOT3_EXT = 0x8784;
const int GL_OP_DOT4_EXT = 0x8785;
const int GL_OP_MUL_EXT = 0x8786;
const int GL_OP_ADD_EXT = 0x8787;
const int GL_OP_MADD_EXT = 0x8788;
const int GL_OP_FRAC_EXT = 0x8789;
const int GL_OP_MAX_EXT = 0x878A;
const int GL_OP_MIN_EXT = 0x878B;
const int GL_OP_SET_GE_EXT = 0x878C;
const int GL_OP_SET_LT_EXT = 0x878D;
const int GL_OP_CLAMP_EXT = 0x878E;
const int GL_OP_FLOOR_EXT = 0x878F;
const int GL_OP_ROUND_EXT = 0x8790;
const int GL_OP_EXP_BASE_2_EXT = 0x8791;
const int GL_OP_LOG_BASE_2_EXT = 0x8792;
const int GL_OP_POWER_EXT = 0x8793;
const int GL_OP_RECIP_EXT = 0x8794;
const int GL_OP_RECIP_SQRT_EXT = 0x8795;
const int GL_OP_SUB_EXT = 0x8796;
const int GL_OP_CROSS_PRODUCT_EXT = 0x8797;
const int GL_OP_MULTIPLY_MATRIX_EXT = 0x8798;
const int GL_OP_MOV_EXT = 0x8799;
const int GL_OUTPUT_VERTEX_EXT = 0x879A;
const int GL_OUTPUT_COLOR0_EXT = 0x879B;
const int GL_OUTPUT_COLOR1_EXT = 0x879C;
const int GL_OUTPUT_TEXTURE_COORD0_EXT = 0x879D;
const int GL_OUTPUT_TEXTURE_COORD1_EXT = 0x879E;
const int GL_OUTPUT_TEXTURE_COORD2_EXT = 0x879F;
const int GL_OUTPUT_TEXTURE_COORD3_EXT = 0x87A0;
const int GL_OUTPUT_TEXTURE_COORD4_EXT = 0x87A1;
const int GL_OUTPUT_TEXTURE_COORD5_EXT = 0x87A2;
const int GL_OUTPUT_TEXTURE_COORD6_EXT = 0x87A3;
const int GL_OUTPUT_TEXTURE_COORD7_EXT = 0x87A4;
const int GL_OUTPUT_TEXTURE_COORD8_EXT = 0x87A5;
const int GL_OUTPUT_TEXTURE_COORD9_EXT = 0x87A6;
const int GL_OUTPUT_TEXTURE_COORD10_EXT = 0x87A7;
const int GL_OUTPUT_TEXTURE_COORD11_EXT = 0x87A8;
const int GL_OUTPUT_TEXTURE_COORD12_EXT = 0x87A9;
const int GL_OUTPUT_TEXTURE_COORD13_EXT = 0x87AA;
const int GL_OUTPUT_TEXTURE_COORD14_EXT = 0x87AB;
const int GL_OUTPUT_TEXTURE_COORD15_EXT = 0x87AC;
const int GL_OUTPUT_TEXTURE_COORD16_EXT = 0x87AD;
const int GL_OUTPUT_TEXTURE_COORD17_EXT = 0x87AE;
const int GL_OUTPUT_TEXTURE_COORD18_EXT = 0x87AF;
const int GL_OUTPUT_TEXTURE_COORD19_EXT = 0x87B0;
const int GL_OUTPUT_TEXTURE_COORD20_EXT = 0x87B1;
const int GL_OUTPUT_TEXTURE_COORD21_EXT = 0x87B2;
const int GL_OUTPUT_TEXTURE_COORD22_EXT = 0x87B3;
const int GL_OUTPUT_TEXTURE_COORD23_EXT = 0x87B4;
const int GL_OUTPUT_TEXTURE_COORD24_EXT = 0x87B5;
const int GL_OUTPUT_TEXTURE_COORD25_EXT = 0x87B6;
const int GL_OUTPUT_TEXTURE_COORD26_EXT = 0x87B7;
const int GL_OUTPUT_TEXTURE_COORD27_EXT = 0x87B8;
const int GL_OUTPUT_TEXTURE_COORD28_EXT = 0x87B9;
const int GL_OUTPUT_TEXTURE_COORD29_EXT = 0x87BA;
const int GL_OUTPUT_TEXTURE_COORD30_EXT = 0x87BB;
const int GL_OUTPUT_TEXTURE_COORD31_EXT = 0x87BC;
const int GL_OUTPUT_FOG_EXT = 0x87BD;
const int GL_SCALAR_EXT = 0x87BE;
const int GL_VECTOR_EXT = 0x87BF;
const int GL_MATRIX_EXT = 0x87C0;
const int GL_VARIANT_EXT = 0x87C1;
const int GL_INVARIANT_EXT = 0x87C2;
const int GL_LOCAL_CONSTANT_EXT = 0x87C3;
const int GL_LOCAL_EXT = 0x87C4;
const int GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87C5;
const int GL_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87C6;
const int GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87C7;
const int GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87C8;
const int GL_MAX_VERTEX_SHADER_LOCALS_EXT = 0x87C9;
const int GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CA;
const int GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87CB;
const int GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87CC;
const int GL_MAX_OPTIMIZED_VERTEX_SHADER_INARIANTS_EXT = 0x87CD;
const int GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87CE;
const int GL_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CF;
const int GL_VERTEX_SHADER_VARIANTS_EXT = 0x87D0;
const int GL_VERTEX_SHADER_INVARIANTS_EXT = 0x87D1;
const int GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87D2;
const int GL_VERTEX_SHADER_LOCALS_EXT = 0x87D3;
const int GL_VERTEX_SHADER_OPTIMIZED_EXT = 0x87D4;
const int GL_X_EXT = 0x87D5;
const int GL_Y_EXT = 0x87D6;
const int GL_Z_EXT = 0x87D7;
const int GL_W_EXT = 0x87D8;
const int GL_NEGATIVE_X_EXT = 0x87D9;
const int GL_NEGATIVE_Y_EXT = 0x87DA;
const int GL_NEGATIVE_Z_EXT = 0x87DB;
const int GL_NEGATIVE_W_EXT = 0x87DC;
const int GL_ZERO_EXT = 0x87DD;
const int GL_ONE_EXT = 0x87DE;
const int GL_NEGATIVE_ONE_EXT = 0x87DF;
const int GL_NORMALIZED_RANGE_EXT = 0x87E0;
const int GL_FULL_RANGE_EXT = 0x87E1;
const int GL_CURRENT_VERTEX_EXT = 0x87E2;
const int GL_MVP_MATRIX_EXT = 0x87E3;
const int GL_VARIANT_VALUE_EXT = 0x87E4;
const int GL_VARIANT_DATATYPE_EXT = 0x87E5;
const int GL_VARIANT_ARRAY_STRIDE_EXT = 0x87E6;
const int GL_VARIANT_ARRAY_TYPE_EXT = 0x87E7;
const int GL_VARIANT_ARRAY_EXT = 0x87E8;
const int GL_VARIANT_ARRAY_POINTER_EXT = 0x87E9;
const int GL_INVARIANT_VALUE_EXT = 0x87EA;
const int GL_INVARIANT_DATATYPE_EXT = 0x87EB;
const int GL_LOCAL_CONSTANT_VALUE_EXT = 0x87EC;
const int GL_LOCAL_CONSTANT_DATATYPE_EXT = 0x87ED;
//#endif

//#ifndef GL_ATI_vertex_streams
const int GL_MAX_VERTEX_STREAMS_ATI = 0x876B;
const int GL_VERTEX_STREAM0_ATI = 0x876C;
const int GL_VERTEX_STREAM1_ATI = 0x876D;
const int GL_VERTEX_STREAM2_ATI = 0x876E;
const int GL_VERTEX_STREAM3_ATI = 0x876F;
const int GL_VERTEX_STREAM4_ATI = 0x8770;
const int GL_VERTEX_STREAM5_ATI = 0x8771;
const int GL_VERTEX_STREAM6_ATI = 0x8772;
const int GL_VERTEX_STREAM7_ATI = 0x8773;
const int GL_VERTEX_SOURCE_ATI = 0x8774;
//#endif

//#ifndef GL_ATI_element_array
const int GL_ELEMENT_ARRAY_ATI = 0x8768;
const int GL_ELEMENT_ARRAY_TYPE_ATI = 0x8769;
const int GL_ELEMENT_ARRAY_POINTER_ATI = 0x876A;
//#endif

//#ifndef GL_SUN_mesh_array
const int GL_QUAD_MESH_SUN = 0x8614;
const int GL_TRIANGLE_MESH_SUN = 0x8615;
//#endif

//#ifndef GL_SUN_slice_accum
const int GL_SLICE_ACCUM_SUN = 0x85CC;
//#endif

//#ifndef GL_NV_multisample_filter_hint
const int GL_MULTISAMPLE_FILTER_HINT_NV = 0x8534;
//#endif

//#ifndef GL_NV_depth_clamp
const int GL_DEPTH_CLAMP_NV = 0x864F;
//#endif

//#ifndef GL_NV_occlusion_query
const int GL_PIXEL_COUNTER_BITS_NV = 0x8864;
const int GL_CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865;
const int GL_PIXEL_COUNT_NV = 0x8866;
const int GL_PIXEL_COUNT_AVAILABLE_NV = 0x8867;
//#endif

//#ifndef GL_NV_point_sprite
const int GL_POINT_SPRITE_NV = 0x8861;
const int GL_COORD_REPLACE_NV = 0x8862;
const int GL_POINT_SPRITE_R_MODE_NV = 0x8863;
//#endif

//#ifndef GL_NV_texture_shader3
const int GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = 0x8850;
const int GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = 0x8851;
const int GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8852;
const int GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = 0x8853;
const int GL_OFFSET_HILO_TEXTURE_2D_NV = 0x8854;
const int GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = 0x8855;
const int GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = 0x8856;
const int GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8857;
const int GL_DEPENDENT_HILO_TEXTURE_2D_NV = 0x8858;
const int GL_DEPENDENT_RGB_TEXTURE_3D_NV = 0x8859;
const int GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = 0x885A;
const int GL_DOT_PRODUCT_PASS_THROUGH_NV = 0x885B;
const int GL_DOT_PRODUCT_TEXTURE_1D_NV = 0x885C;
const int GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = 0x885D;
const int GL_HILO8_NV = 0x885E;
const int GL_SIGNED_HILO8_NV = 0x885F;
const int GL_FORCE_BLUE_TO_ONE_NV = 0x8860;
//#endif

//#ifndef GL_NV_vertex_program1_1
//#endif

//#ifndef GL_EXT_shadow_funcs
//#endif

//#ifndef GL_EXT_stencil_two_side
const int GL_STENCIL_TEST_TWO_SIDE_EXT = 0x8910;
const int GL_ACTIVE_STENCIL_FACE_EXT = 0x8911;
//#endif


/*************************************************************/

//#ifndef GL_VERSION_1_2
// const int GL_VERSION_1_2 = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLBLENDCOLORPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
alias  void (* PFNGLBLENDEQUATIONPROC) (GLenum mode);
alias  void (* PFNGLDRAWRANGEELEMENTSPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);
alias  void (* PFNGLCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias  void (* PFNGLCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLCOPYCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLGETCOLORTABLEPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
alias  void (* PFNGLGETCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
alias  void (* PFNGLCOPYCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLCONVOLUTIONPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat params);
alias  void (* PFNGLCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLCONVOLUTIONPARAMETERIPROC) (GLenum target, GLenum pname, GLint params);
alias  void (* PFNGLCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLCOPYCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLCOPYCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias  void (* PFNGLGETCONVOLUTIONFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLGETCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETSEPARABLEFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
alias  void (* PFNGLSEPARABLEFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);
alias  void (* PFNGLGETHISTOGRAMPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias  void (* PFNGLGETHISTOGRAMPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETHISTOGRAMPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETMINMAXPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias  void (* PFNGLGETMINMAXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETMINMAXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLHISTOGRAMPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias  void (* PFNGLMINMAXPROC) (GLenum target, GLenum internalformat, GLboolean sink);
alias  void (* PFNGLRESETHISTOGRAMPROC) (GLenum target);
alias  void (* PFNGLRESETMINMAXPROC) (GLenum target);
alias  void (* PFNGLTEXIMAGE3DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias  void (* PFNGLTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);
alias  void (* PFNGLCOPYTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
//#endif

//#ifndef GL_VERSION_1_3
//const int GL_VERSION_1_3 = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLACTIVETEXTUREPROC) (GLenum texture);
alias  void (* PFNGLCLIENTACTIVETEXTUREPROC) (GLenum texture);
alias  void (* PFNGLMULTITEXCOORD1DPROC) (GLenum target, GLdouble s);
alias  void (* PFNGLMULTITEXCOORD1DVPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD1FPROC) (GLenum target, GLfloat s);
alias  void (* PFNGLMULTITEXCOORD1FVPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD1IPROC) (GLenum target, GLint s);
alias  void (* PFNGLMULTITEXCOORD1IVPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD1SPROC) (GLenum target, GLshort s);
alias  void (* PFNGLMULTITEXCOORD1SVPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD2DPROC) (GLenum target, GLdouble s, GLdouble t);
alias  void (* PFNGLMULTITEXCOORD2DVPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD2FPROC) (GLenum target, GLfloat s, GLfloat t);
alias  void (* PFNGLMULTITEXCOORD2FVPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD2IPROC) (GLenum target, GLint s, GLint t);
alias  void (* PFNGLMULTITEXCOORD2IVPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD2SPROC) (GLenum target, GLshort s, GLshort t);
alias  void (* PFNGLMULTITEXCOORD2SVPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD3DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias  void (* PFNGLMULTITEXCOORD3DVPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD3FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias  void (* PFNGLMULTITEXCOORD3FVPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD3IPROC) (GLenum target, GLint s, GLint t, GLint r);
alias  void (* PFNGLMULTITEXCOORD3IVPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD3SPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias  void (* PFNGLMULTITEXCOORD3SVPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLMULTITEXCOORD4DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias  void (* PFNGLMULTITEXCOORD4DVPROC) (GLenum target, GLdouble *v);
alias  void (* PFNGLMULTITEXCOORD4FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias  void (* PFNGLMULTITEXCOORD4FVPROC) (GLenum target, GLfloat *v);
alias  void (* PFNGLMULTITEXCOORD4IPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias  void (* PFNGLMULTITEXCOORD4IVPROC) (GLenum target, GLint *v);
alias  void (* PFNGLMULTITEXCOORD4SPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias  void (* PFNGLMULTITEXCOORD4SVPROC) (GLenum target, GLshort *v);
alias  void (* PFNGLLOADTRANSPOSEMATRIXFPROC) (GLfloat *m);
alias  void (* PFNGLLOADTRANSPOSEMATRIXDPROC) (GLdouble *m);
alias  void (* PFNGLMULTTRANSPOSEMATRIXFPROC) (GLfloat *m);
alias  void (* PFNGLMULTTRANSPOSEMATRIXDPROC) (GLdouble *m);
alias  void (* PFNGLSAMPLECOVERAGEPROC) (GLclampf value, GLboolean invert);
alias  void (* PFNGLCOMPRESSEDTEXIMAGE3DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, void *img);
//#endif

//#ifndef GL_VERSION_1_4
const int GL_VERSION_1_4 = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLBLENDFUNCSEPARATEPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
alias  void (* PFNGLFOGCOORDFPROC) (GLfloat coord);
alias  void (* PFNGLFOGCOORDFVPROC) (GLfloat *coord);
alias  void (* PFNGLFOGCOORDDPROC) (GLdouble coord);
alias  void (* PFNGLFOGCOORDDVPROC) (GLdouble *coord);
alias  void (* PFNGLFOGCOORDPOINTERPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLMULTIDRAWARRAYSPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
alias  void (* PFNGLMULTIDRAWELEMENTSPROC) (GLenum mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount);
alias  void (* PFNGLPOINTPARAMETERFPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLPOINTPARAMETERFVPROC) (GLenum pname, GLfloat *params);
alias  void (* PFNGLPOINTPARAMETERIPROC) (GLenum pname, GLint param);
alias  void (* PFNGLPOINTPARAMETERIVPROC) (GLenum pname, GLint *params);
alias  void (* PFNGLSECONDARYCOLOR3BPROC) (GLbyte red, GLbyte green, GLbyte blue);
alias  void (* PFNGLSECONDARYCOLOR3BVPROC) (GLbyte *v);
alias  void (* PFNGLSECONDARYCOLOR3DPROC) (GLdouble red, GLdouble green, GLdouble blue);
alias  void (* PFNGLSECONDARYCOLOR3DVPROC) (GLdouble *v);
alias  void (* PFNGLSECONDARYCOLOR3FPROC) (GLfloat red, GLfloat green, GLfloat blue);
alias  void (* PFNGLSECONDARYCOLOR3FVPROC) (GLfloat *v);
alias  void (* PFNGLSECONDARYCOLOR3IPROC) (GLint red, GLint green, GLint blue);
alias  void (* PFNGLSECONDARYCOLOR3IVPROC) (GLint *v);
alias  void (* PFNGLSECONDARYCOLOR3SPROC) (GLshort red, GLshort green, GLshort blue);
alias  void (* PFNGLSECONDARYCOLOR3SVPROC) (GLshort *v);
alias  void (* PFNGLSECONDARYCOLOR3UBPROC) (GLubyte red, GLubyte green, GLubyte blue);
alias  void (* PFNGLSECONDARYCOLOR3UBVPROC) (GLubyte *v);
alias  void (* PFNGLSECONDARYCOLOR3UIPROC) (GLuint red, GLuint green, GLuint blue);
alias  void (* PFNGLSECONDARYCOLOR3UIVPROC) (GLuint *v);
alias  void (* PFNGLSECONDARYCOLOR3USPROC) (GLushort red, GLushort green, GLushort blue);
alias  void (* PFNGLSECONDARYCOLOR3USVPROC) (GLushort *v);
alias  void (* PFNGLSECONDARYCOLORPOINTERPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLWINDOWPOS2DPROC) (GLdouble x, GLdouble y);
alias  void (* PFNGLWINDOWPOS2DVPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS2FPROC) (GLfloat x, GLfloat y);
alias  void (* PFNGLWINDOWPOS2FVPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS2IPROC) (GLint x, GLint y);
alias  void (* PFNGLWINDOWPOS2IVPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS2SPROC) (GLshort x, GLshort y);
alias  void (* PFNGLWINDOWPOS2SVPROC) (GLshort *v);
alias  void (* PFNGLWINDOWPOS3DPROC) (GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLWINDOWPOS3DVPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS3FPROC) (GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLWINDOWPOS3FVPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS3IPROC) (GLint x, GLint y, GLint z);
alias  void (* PFNGLWINDOWPOS3IVPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS3SPROC) (GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLWINDOWPOS3SVPROC) (GLshort *v);
//#endif

//#ifndef GL_ARB_multitexture
const int GL_ARB_multitexture = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
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
//#endif

//#ifndef GL_ARB_transpose_matrix
const int GL_ARB_transpose_matrix = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLLOADTRANSPOSEMATRIXFARBPROC) (GLfloat *m);
alias  void (* PFNGLLOADTRANSPOSEMATRIXDARBPROC) (GLdouble *m);
alias  void (* PFNGLMULTTRANSPOSEMATRIXFARBPROC) (GLfloat *m);
alias  void (* PFNGLMULTTRANSPOSEMATRIXDARBPROC) (GLdouble *m);
//#endif

//#ifndef GL_ARB_multisample
const int GL_ARB_multisample = 1;

alias  void (* PFNGLSAMPLECOVERAGEARBPROC) (GLclampf value, GLboolean invert);
//#endif

//#ifndef GL_ARB_texture_env_add
const int GL_ARB_texture_env_add = 1;
//#endif

//#ifndef GL_ARB_texture_cube_map
const int GL_ARB_texture_cube_map = 1;
//#endif

//#ifndef GL_ARB_texture_compression
const int GL_ARB_texture_compression = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLCOMPRESSEDTEXIMAGE3DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXIMAGE2DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXIMAGE1DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);
alias  void (* PFNGLGETCOMPRESSEDTEXIMAGEARBPROC) (GLenum target, GLint level, void *img);
//#endif

//#ifndef GL_ARB_texture_border_clamp
const int GL_ARB_texture_border_clamp = 1;
//#endif

//#ifndef GL_ARB_point_parameters
const int GL_ARB_point_parameters = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLPOINTPARAMETERFARBPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLPOINTPARAMETERFVARBPROC) (GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_ARB_vertex_blend
const int GL_ARB_vertex_blend = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLWEIGHTBVARBPROC) (GLint size, GLbyte *weights);
alias  void (* PFNGLWEIGHTSVARBPROC) (GLint size, GLshort *weights);
alias  void (* PFNGLWEIGHTIVARBPROC) (GLint size, GLint *weights);
alias  void (* PFNGLWEIGHTFVARBPROC) (GLint size, GLfloat *weights);
alias  void (* PFNGLWEIGHTDVARBPROC) (GLint size, GLdouble *weights);
alias  void (* PFNGLWEIGHTUBVARBPROC) (GLint size, GLubyte *weights);
alias  void (* PFNGLWEIGHTUSVARBPROC) (GLint size, GLushort *weights);
alias  void (* PFNGLWEIGHTUIVARBPROC) (GLint size, GLuint *weights);
alias  void (* PFNGLWEIGHTPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLVERTEXBLENDARBPROC) (GLint count);
//#endif

//#ifndef GL_ARB_matrix_palette
const int GL_ARB_matrix_palette = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLCURRENTPALETTEMATRIXARBPROC) (GLint index);
alias  void (* PFNGLMATRIXINDEXUBVARBPROC) (GLint size, GLubyte *indices);
alias  void (* PFNGLMATRIXINDEXUSVARBPROC) (GLint size, GLushort *indices);
alias  void (* PFNGLMATRIXINDEXUIVARBPROC) (GLint size, GLuint *indices);
alias  void (* PFNGLMATRIXINDEXPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
//#endif

//#ifndef GL_ARB_texture_env_combine
const int GL_ARB_texture_env_combine = 1;
//#endif

//#ifndef GL_ARB_texture_env_crossbar
const int GL_ARB_texture_env_crossbar = 1;
//#endif

//#ifndef GL_ARB_texture_env_dot3
const int GL_ARB_texture_env_dot3 = 1;
//#endif

//#ifndef GL_ARB_texture_mirror_repeat
const int GL_ARB_texture_mirror_repeat = 1;
//#endif

//#ifndef GL_ARB_depth_texture
const int GL_ARB_depth_texture = 1;
//#endif

//#ifndef GL_ARB_shadow
const int GL_ARB_shadow = 1;
//#endif

//#ifndef GL_ARB_shadow_ambient
const int GL_ARB_shadow_ambient = 1;
//#endif

//#ifndef GL_ARB_window_pos
const int GL_ARB_window_pos = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLWINDOWPOS2DARBPROC) (GLdouble x, GLdouble y);
alias  void (* PFNGLWINDOWPOS2DVARBPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS2FARBPROC) (GLfloat x, GLfloat y);
alias  void (* PFNGLWINDOWPOS2FVARBPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS2IARBPROC) (GLint x, GLint y);
alias  void (* PFNGLWINDOWPOS2IVARBPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS2SARBPROC) (GLshort x, GLshort y);
alias  void (* PFNGLWINDOWPOS2SVARBPROC) (GLshort *v);
alias  void (* PFNGLWINDOWPOS3DARBPROC) (GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLWINDOWPOS3DVARBPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS3FARBPROC) (GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLWINDOWPOS3FVARBPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS3IARBPROC) (GLint x, GLint y, GLint z);
alias  void (* PFNGLWINDOWPOS3IVARBPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS3SARBPROC) (GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLWINDOWPOS3SVARBPROC) (GLshort *v);
//#endif

//#ifndef GL_ARB_vertex_program
const int GL_ARB_vertex_program = 1;
//#ifdef GL_GLEXT_PROTOTYPES

//#endif /* GL_GLEXT_PROTOTYPES */
alias  void (* PFNGLVERTEXATTRIB1DARBPROC) (GLuint index, GLdouble x);
alias  void (* PFNGLVERTEXATTRIB1DVARBPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB1FARBPROC) (GLuint index, GLfloat x);
alias  void (* PFNGLVERTEXATTRIB1FVARBPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB1SARBPROC) (GLuint index, GLshort x);
alias  void (* PFNGLVERTEXATTRIB1SVARBPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB2DARBPROC) (GLuint index, GLdouble x, GLdouble y);
alias  void (* PFNGLVERTEXATTRIB2DVARBPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB2FARBPROC) (GLuint index, GLfloat x, GLfloat y);
alias  void (* PFNGLVERTEXATTRIB2FVARBPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB2SARBPROC) (GLuint index, GLshort x, GLshort y);
alias  void (* PFNGLVERTEXATTRIB2SVARBPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB3DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLVERTEXATTRIB3DVARBPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB3FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLVERTEXATTRIB3FVARBPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB3SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLVERTEXATTRIB3SVARBPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB4NBVARBPROC) (GLuint index, GLbyte *v);
alias  void (* PFNGLVERTEXATTRIB4NIVARBPROC) (GLuint index, GLint *v);
alias  void (* PFNGLVERTEXATTRIB4NSVARBPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB4NUBARBPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias  void (* PFNGLVERTEXATTRIB4NUBVARBPROC) (GLuint index, GLubyte *v);
alias  void (* PFNGLVERTEXATTRIB4NUIVARBPROC) (GLuint index, GLuint *v);
alias  void (* PFNGLVERTEXATTRIB4NUSVARBPROC) (GLuint index, GLushort *v);
alias  void (* PFNGLVERTEXATTRIB4BVARBPROC) (GLuint index, GLbyte *v);
alias  void (* PFNGLVERTEXATTRIB4DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLVERTEXATTRIB4DVARBPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB4FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLVERTEXATTRIB4FVARBPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB4IVARBPROC) (GLuint index, GLint *v);
alias  void (* PFNGLVERTEXATTRIB4SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias  void (* PFNGLVERTEXATTRIB4SVARBPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB4UBVARBPROC) (GLuint index, GLubyte *v);
alias  void (* PFNGLVERTEXATTRIB4UIVARBPROC) (GLuint index, GLuint *v);
alias  void (* PFNGLVERTEXATTRIB4USVARBPROC) (GLuint index, GLushort *v);
alias  void (* PFNGLVERTEXATTRIBPOINTERARBPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLENABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
alias  void (* PFNGLDISABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
alias  void (* PFNGLPROGRAMSTRINGARBPROC) (GLenum target, GLenum format, GLsizei len, GLvoid *string);
alias  void (* PFNGLBINDPROGRAMARBPROC) (GLenum target, GLuint program);
alias  void (* PFNGLDELETEPROGRAMSARBPROC) (GLsizei n, GLuint *programs);
alias  void (* PFNGLGENPROGRAMSARBPROC) (GLsizei n, GLuint *programs);
alias  void (* PFNGLPROGRAMENVPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLPROGRAMENVPARAMETER4DVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias  void (* PFNGLPROGRAMENVPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLPROGRAMENVPARAMETER4FVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias  void (* PFNGLPROGRAMLOCALPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLPROGRAMLOCALPARAMETER4DVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias  void (* PFNGLPROGRAMLOCALPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLPROGRAMLOCALPARAMETER4FVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias  void (* PFNGLGETPROGRAMENVPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias  void (* PFNGLGETPROGRAMENVPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias  void (* PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias  void (* PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias  void (* PFNGLGETPROGRAMIVARBPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETPROGRAMSTRINGARBPROC) (GLenum target, GLenum pname, GLvoid *string);
alias  void (* PFNGLGETVERTEXATTRIBDVARBPROC) (GLuint index, GLenum pname, GLdouble *params);
alias  void (* PFNGLGETVERTEXATTRIBFVARBPROC) (GLuint index, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETVERTEXATTRIBIVARBPROC) (GLuint index, GLenum pname, GLint *params);
alias  void (* PFNGLGETVERTEXATTRIBPOINTERVARBPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
alias  GLboolean (* PFNGLISPROGRAMARBPROC) (GLuint program);
//#endif

//#ifndef GL_EXT_abgr
const int GL_EXT_abgr = 1;
//#endif

//#ifndef GL_EXT_blend_color
const int GL_EXT_blend_color = 1;

alias  void (* PFNGLBLENDCOLOREXTPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
//#endif

//#ifndef GL_EXT_polygon_offset
const int GL_EXT_polygon_offset = 1;

alias  void (* PFNGLPOLYGONOFFSETEXTPROC) (GLfloat factor, GLfloat bias);
//#endif

//#ifndef GL_EXT_texture
const int GL_EXT_texture = 1;
//#endif

//#ifndef GL_EXT_texture3D
const int GL_EXT_texture3D = 1;

alias  void (* PFNGLTEXIMAGE3DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias  void (* PFNGLTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);
//#endif

//#ifndef GL_SGIS_texture_filter4
const int GL_SGIS_texture_filter4 = 1;

alias  void (* PFNGLGETTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLfloat *weights);
alias  void (* PFNGLTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLsizei n, GLfloat *weights);
//#endif

//#ifndef GL_EXT_subtexture
const int GL_EXT_subtexture = 1;

alias  void (* PFNGLTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);
alias  void (* PFNGLTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
//#endif

//#ifndef GL_EXT_copy_texture
const int GL_EXT_copy_texture = 1;

alias  void (* PFNGLCOPYTEXIMAGE1DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias  void (* PFNGLCOPYTEXIMAGE2DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias  void (* PFNGLCOPYTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLCOPYTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias  void (* PFNGLCOPYTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
//#endif

//#ifndef GL_EXT_histogram
const int GL_EXT_histogram = 1;

alias  void (* PFNGLGETHISTOGRAMEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias  void (* PFNGLGETHISTOGRAMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETHISTOGRAMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETMINMAXEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias  void (* PFNGLGETMINMAXPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETMINMAXPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLHISTOGRAMEXTPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias  void (* PFNGLMINMAXEXTPROC) (GLenum target, GLenum internalformat, GLboolean sink);
alias  void (* PFNGLRESETHISTOGRAMEXTPROC) (GLenum target);
alias  void (* PFNGLRESETMINMAXEXTPROC) (GLenum target);
//#endif

//#ifndef GL_EXT_convolution
const int GL_EXT_convolution = 1;

alias  void (* PFNGLCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLCONVOLUTIONPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat params);
alias  void (* PFNGLCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLCONVOLUTIONPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint params);
alias  void (* PFNGLCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias  void (* PFNGLGETCONVOLUTIONFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
alias  void (* PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETSEPARABLEFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
alias  void (* PFNGLSEPARABLEFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);
//#endif

//#ifndef GL_EXT_color_matrix
const int GL_EXT_color_matrix = 1;

const int GL_SGI_color_table = 1;

alias  void (* PFNGLCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias  void (* PFNGLCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLCOPYCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias  void (* PFNGLGETCOLORTABLESGIPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
alias  void (* PFNGLGETCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);
//#endif

//#ifndef GL_SGIX_pixel_texture
const int GL_SGIX_pixel_texture = 1;

alias  void (* PFNGLPIXELTEXGENSGIXPROC) (GLenum mode);
//#endif

//#ifndef GL_SGIS_pixel_texture
const int GL_SGIS_pixel_texture = 1;

alias  void (* PFNGLPIXELTEXGENPARAMETERISGISPROC) (GLenum pname, GLint param);
alias  void (* PFNGLPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
alias  void (* PFNGLPIXELTEXGENPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
alias  void (* PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
alias  void (* PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_SGIS_texture4D
const int GL_SGIS_texture4D = 1;

alias  void (* PFNGLTEXIMAGE4DSGISPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias  void (* PFNGLTEXSUBIMAGE4DSGISPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, GLvoid *pixels);
//#endif

//#ifndef GL_SGI_texture_color_table
const int GL_SGI_texture_color_table = 1;
//#endif

//#ifndef GL_EXT_cmyka
const int GL_EXT_cmyka = 1;
//#endif

//#ifndef GL_EXT_texture_object
const int GL_EXT_texture_object = 1;

alias  GLboolean (* PFNGLARETEXTURESRESIDENTEXTPROC) (GLsizei n, GLuint *textures, GLboolean *residences);
alias  void (* PFNGLBINDTEXTUREEXTPROC) (GLenum target, GLuint texture);
alias  void (* PFNGLDELETETEXTURESEXTPROC) (GLsizei n, GLuint *textures);
alias  void (* PFNGLGENTEXTURESEXTPROC) (GLsizei n, GLuint *textures);
alias  GLboolean (* PFNGLISTEXTUREEXTPROC) (GLuint texture);
alias  void (* PFNGLPRIORITIZETEXTURESEXTPROC) (GLsizei n, GLuint *textures, GLclampf *priorities);
//#endif

//#ifndef GL_SGIS_detail_texture
const int GL_SGIS_detail_texture = 1;

alias  void (* PFNGLDETAILTEXFUNCSGISPROC) (GLenum target, GLsizei n, GLfloat *points);
alias  void (* PFNGLGETDETAILTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
//#endif

//#ifndef GL_SGIS_sharpen_texture
const int GL_SGIS_sharpen_texture = 1;

alias  void (* PFNGLSHARPENTEXFUNCSGISPROC) (GLenum target, GLsizei n, GLfloat *points);
alias  void (* PFNGLGETSHARPENTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
//#endif

//#ifndef GL_EXT_packed_pixels
const int GL_EXT_packed_pixels = 1;
//#endif

//#ifndef GL_SGIS_texture_lod
const int GL_SGIS_texture_lod = 1;
//#endif

//#ifndef GL_SGIS_multisample
const int GL_SGIS_multisample = 1;

alias  void (* PFNGLSAMPLEMASKSGISPROC) (GLclampf value, GLboolean invert);
alias  void (* PFNGLSAMPLEPATTERNSGISPROC) (GLenum pattern);
//#endif

//#ifndef GL_EXT_rescale_normal
const int GL_EXT_rescale_normal = 1;
//#endif

//#ifndef GL_EXT_vertex_array
const int GL_EXT_vertex_array = 1;

alias  void (* PFNGLARRAYELEMENTEXTPROC) (GLint i);
alias  void (* PFNGLCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias  void (* PFNGLDRAWARRAYSEXTPROC) (GLenum mode, GLint first, GLsizei count);
alias  void (* PFNGLEDGEFLAGPOINTEREXTPROC) (GLsizei stride, GLsizei count, GLboolean *pointer);
alias  void (* PFNGLGETPOINTERVEXTPROC) (GLenum pname, GLvoid* *params);
alias  void (* PFNGLINDEXPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias  void (* PFNGLNORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias  void (* PFNGLTEXCOORDPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias  void (* PFNGLVERTEXPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
//#endif

//#ifndef GL_EXT_misc_attribute
const int GL_EXT_misc_attribute = 1;
//#endif

//#ifndef GL_SGIS_generate_mipmap
const int GL_SGIS_generate_mipmap = 1;
//#endif

//#ifndef GL_SGIX_clipmap
const int GL_SGIX_clipmap = 1;
//#endif

//#ifndef GL_SGIX_shadow
const int GL_SGIX_shadow = 1;
//#endif

//#ifndef GL_SGIS_texture_edge_clamp
const int GL_SGIS_texture_edge_clamp = 1;
//#endif

//#ifndef GL_SGIS_texture_border_clamp
const int GL_SGIS_texture_border_clamp = 1;
//#endif

//#ifndef GL_EXT_blend_minmax
const int GL_EXT_blend_minmax = 1;

alias  void (* PFNGLBLENDEQUATIONEXTPROC) (GLenum mode);
//#endif

//#ifndef GL_EXT_blend_subtract
const int GL_EXT_blend_subtract = 1;
//#endif

//#ifndef GL_EXT_blend_logic_op
const int GL_EXT_blend_logic_op = 1;
//#endif

//#ifndef GL_SGIX_interlace
const int GL_SGIX_interlace = 1;
//#endif

//#ifndef GL_SGIX_pixel_tiles
const int GL_SGIX_pixel_tiles = 1;
//#endif

//#ifndef GL_SGIX_texture_select
const int GL_SGIX_texture_select = 1;
//#endif

//#ifndef GL_SGIX_sprite
const int GL_SGIX_sprite = 1;

alias  void (* PFNGLSPRITEPARAMETERFSGIXPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLSPRITEPARAMETERFVSGIXPROC) (GLenum pname, GLfloat *params);
alias  void (* PFNGLSPRITEPARAMETERISGIXPROC) (GLenum pname, GLint param);
alias  void (* PFNGLSPRITEPARAMETERIVSGIXPROC) (GLenum pname, GLint *params);
//#endif

//#ifndef GL_SGIX_texture_multi_buffer
const int GL_SGIX_texture_multi_buffer = 1;
//#endif

//#ifndef GL_EXT_point_parameters
const int GL_EXT_point_parameters = 1;

alias  void (* PFNGLPOINTPARAMETERFEXTPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLPOINTPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_SGIS_point_parameters
const int GL_SGIS_point_parameters = 1;

alias  void (* PFNGLPOINTPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLPOINTPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_SGIX_instruments
const int GL_SGIX_instruments = 1;

alias  GLint (* PFNGLGETINSTRUMENTSSGIXPROC) ();
alias  void (* PFNGLINSTRUMENTSBUFFERSGIXPROC) (GLsizei size, GLint *buffer);
alias  GLint (* PFNGLPOLLINSTRUMENTSSGIXPROC) (GLint *marker_p);
alias  void (* PFNGLREADINSTRUMENTSSGIXPROC) (GLint marker);
alias  void (* PFNGLSTARTINSTRUMENTSSGIXPROC) ();
alias  void (* PFNGLSTOPINSTRUMENTSSGIXPROC) (GLint marker);
//#endif

//#ifndef GL_SGIX_texture_scale_bias
const int GL_SGIX_texture_scale_bias = 1;
//#endif

//#ifndef GL_SGIX_framezoom
const int GL_SGIX_framezoom = 1;

alias  void (* PFNGLFRAMEZOOMSGIXPROC) (GLint factor);
//#endif

//#ifndef GL_SGIX_tag_sample_buffer
const int GL_SGIX_tag_sample_buffer = 1;

alias  void (* PFNGLTAGSAMPLEBUFFERSGIXPROC) ();
//#endif

//#ifndef GL_SGIX_polynomial_ffd
const int GL_SGIX_polynomial_ffd = 1;

alias  void (* PFNGLDEFORMATIONMAP3DSGIXPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, GLdouble *points);
alias  void (* PFNGLDEFORMATIONMAP3FSGIXPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, GLfloat *points);
alias  void (* PFNGLDEFORMSGIXPROC) (GLbitfield mask);
alias  void (* PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC) (GLbitfield mask);
//#endif

//#ifndef GL_SGIX_reference_plane
const int GL_SGIX_reference_plane = 1;

alias  void (* PFNGLREFERENCEPLANESGIXPROC) (GLdouble *equation);
//#endif

//#ifndef GL_SGIX_flush_raster
const int GL_SGIX_flush_raster = 1;

alias  void (* PFNGLFLUSHRASTERSGIXPROC) ();
//#endif

//#ifndef GL_SGIX_depth_texture
const int GL_SGIX_depth_texture = 1;
//#endif

//#ifndef GL_SGIS_fog_function
const int GL_SGIS_fog_function = 1;

alias  void (* PFNGLFOGFUNCSGISPROC) (GLsizei n, GLfloat *points);
alias  void (* PFNGLGETFOGFUNCSGISPROC) (GLfloat *points);
//#endif

//#ifndef GL_SGIX_fog_offset
const int GL_SGIX_fog_offset = 1;
//#endif

//#ifndef GL_HP_image_transform
const int GL_HP_image_transform = 1;

alias  void (* PFNGLIMAGETRANSFORMPARAMETERIHPPROC) (GLenum target, GLenum pname, GLint param);
alias  void (* PFNGLIMAGETRANSFORMPARAMETERFHPPROC) (GLenum target, GLenum pname, GLfloat param);
alias  void (* PFNGLIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_HP_convolution_border_modes
const int GL_HP_convolution_border_modes = 1;
//#endif

//#ifndef GL_SGIX_texture_add_env
const int GL_SGIX_texture_add_env = 1;
//#endif

//#ifndef GL_EXT_color_subtable
const int GL_EXT_color_subtable = 1;

alias  void (* PFNGLCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
alias  void (* PFNGLCOPYCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
//#endif

//#ifndef GL_PGI_vertex_hints
const int GL_PGI_vertex_hints = 1;
//#endif

//#ifndef GL_PGI_misc_hints
const int GL_PGI_misc_hints = 1;

alias  void (* PFNGLHINTPGIPROC) (GLenum target, GLint mode);
//#endif

//#ifndef GL_EXT_paletted_texture
const int GL_EXT_paletted_texture = 1;

alias  void (* PFNGLCOLORTABLEEXTPROC) (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias  void (* PFNGLGETCOLORTABLEEXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *data);
alias  void (* PFNGLGETCOLORTABLEPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETCOLORTABLEPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_EXT_clip_volume_hint
const int GL_EXT_clip_volume_hint = 1;
//#endif

//#ifndef GL_SGIX_list_priority
const int GL_SGIX_list_priority = 1;

alias  void (* PFNGLGETLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
alias  void (* PFNGLLISTPARAMETERFSGIXPROC) (GLuint list, GLenum pname, GLfloat param);
alias  void (* PFNGLLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
alias  void (* PFNGLLISTPARAMETERISGIXPROC) (GLuint list, GLenum pname, GLint param);
alias  void (* PFNGLLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
//#endif

//#ifndef GL_SGIX_ir_instrument1
const int GL_SGIX_ir_instrument1 = 1;
//#endif

//#ifndef GL_SGIX_calligraphic_fragment
const int GL_SGIX_calligraphic_fragment = 1;
//#endif

//#ifndef GL_SGIX_texture_lod_bias
const int GL_SGIX_texture_lod_bias = 1;
//#endif

//#ifndef GL_SGIX_shadow_ambient
const int GL_SGIX_shadow_ambient = 1;
//#endif

//#ifndef GL_EXT_index_texture
const int GL_EXT_index_texture = 1;
//#endif

//#ifndef GL_EXT_index_material
const int GL_EXT_index_material = 1;

alias  void (* PFNGLINDEXMATERIALEXTPROC) (GLenum face, GLenum mode);
//#endif

//#ifndef GL_EXT_index_func
const int GL_EXT_index_func = 1;

alias  void (* PFNGLINDEXFUNCEXTPROC) (GLenum func, GLclampf ref);
//#endif

//#ifndef GL_EXT_index_array_formats
const int GL_EXT_index_array_formats = 1;
//#endif

//#ifndef GL_EXT_compiled_vertex_array
const int GL_EXT_compiled_vertex_array = 1;

alias  void (* PFNGLLOCKARRAYSEXTPROC) (GLint first, GLsizei count);
alias  void (* PFNGLUNLOCKARRAYSEXTPROC) ();
//#endif

//#ifndef GL_EXT_cull_vertex
const int GL_EXT_cull_vertex = 1;

alias  void (* PFNGLCULLPARAMETERDVEXTPROC) (GLenum pname, GLdouble *params);
alias  void (* PFNGLCULLPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_SGIX_ycrcb
const int GL_SGIX_ycrcb = 1;
//#endif

//#ifndef GL_SGIX_fragment_lighting
const int GL_SGIX_fragment_lighting = 1;

alias  void (* PFNGLFRAGMENTCOLORMATERIALSGIXPROC) (GLenum face, GLenum mode);
alias  void (* PFNGLFRAGMENTLIGHTFSGIXPROC) (GLenum light, GLenum pname, GLfloat param);
alias  void (* PFNGLFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, GLfloat *params);
alias  void (* PFNGLFRAGMENTLIGHTISGIXPROC) (GLenum light, GLenum pname, GLint param);
alias  void (* PFNGLFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, GLint *params);
alias  void (* PFNGLFRAGMENTLIGHTMODELFSGIXPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLFRAGMENTLIGHTMODELFVSGIXPROC) (GLenum pname, GLfloat *params);
alias  void (* PFNGLFRAGMENTLIGHTMODELISGIXPROC) (GLenum pname, GLint param);
alias  void (* PFNGLFRAGMENTLIGHTMODELIVSGIXPROC) (GLenum pname, GLint *params);
alias  void (* PFNGLFRAGMENTMATERIALFSGIXPROC) (GLenum face, GLenum pname, GLfloat param);
alias  void (* PFNGLFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, GLfloat *params);
alias  void (* PFNGLFRAGMENTMATERIALISGIXPROC) (GLenum face, GLenum pname, GLint param);
alias  void (* PFNGLFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, GLint *params);
alias  void (* PFNGLGETFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, GLint *params);
alias  void (* PFNGLGETFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, GLint *params);
alias  void (* PFNGLLIGHTENVISGIXPROC) (GLenum pname, GLint param);
//#endif

//#ifndef GL_IBM_rasterpos_clip
const int GL_IBM_rasterpos_clip = 1;
//#endif

//#ifndef GL_HP_texture_lighting
const int GL_HP_texture_lighting = 1;
//#endif

//#ifndef GL_EXT_draw_range_elements
const int GL_EXT_draw_range_elements = 1;

alias  void (* PFNGLDRAWRANGEELEMENTSEXTPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);
//#endif

//#ifndef GL_WIN_phong_shading
const int GL_WIN_phong_shading = 1;
//#endif

//#ifndef GL_WIN_specular_fog
const int GL_WIN_specular_fog = 1;
//#endif

//#ifndef GL_EXT_light_texture
const int GL_EXT_light_texture = 1;

alias  void (* PFNGLAPPLYTEXTUREEXTPROC) (GLenum mode);
alias  void (* PFNGLTEXTURELIGHTEXTPROC) (GLenum pname);
alias  void (* PFNGLTEXTUREMATERIALEXTPROC) (GLenum face, GLenum mode);
//#endif

//#ifndef GL_SGIX_blend_alpha_minmax
const int GL_SGIX_blend_alpha_minmax = 1;
//#endif

//#ifndef GL_EXT_bgra
const int GL_EXT_bgra = 1;
//#endif

//#ifndef GL_SGIX_async
const int GL_SGIX_async = 1;

alias  void (* PFNGLASYNCMARKERSGIXPROC) (GLuint marker);
alias  GLint (* PFNGLFINISHASYNCSGIXPROC) (GLuint *markerp);
alias  GLint (* PFNGLPOLLASYNCSGIXPROC) (GLuint *markerp);
alias  GLuint (* PFNGLGENASYNCMARKERSSGIXPROC) (GLsizei range);
alias  void (* PFNGLDELETEASYNCMARKERSSGIXPROC) (GLuint marker, GLsizei range);
alias  GLboolean (* PFNGLISASYNCMARKERSGIXPROC) (GLuint marker);
//#endif

//#ifndef GL_SGIX_async_pixel
const int GL_SGIX_async_pixel = 1;
//#endif

//#ifndef GL_SGIX_async_histogram
const int GL_SGIX_async_histogram = 1;
//#endif

//#ifndef GL_INTEL_parallel_arrays
const int GL_INTEL_parallel_arrays = 1;

alias  void (* PFNGLVERTEXPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
alias  void (* PFNGLNORMALPOINTERVINTELPROC) (GLenum type, GLvoid* *pointer);
alias  void (* PFNGLCOLORPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
alias  void (* PFNGLTEXCOORDPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
//#endif

//#ifndef GL_HP_occlusion_test
const int GL_HP_occlusion_test = 1;
//#endif

//#ifndef GL_EXT_pixel_transform
const int GL_EXT_pixel_transform = 1;

alias  void (* PFNGLPIXELTRANSFORMPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint param);
alias  void (* PFNGLPIXELTRANSFORMPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat param);
alias  void (* PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_EXT_pixel_transform_color_table
const int GL_EXT_pixel_transform_color_table = 1;
//#endif

//#ifndef GL_EXT_shared_texture_palette
const int GL_EXT_shared_texture_palette = 1;
//#endif

//#ifndef GL_EXT_separate_specular_color
const int GL_EXT_separate_specular_color = 1;
//#endif

//#ifndef GL_EXT_secondary_color
const int GL_EXT_secondary_color = 1;

alias  void (* PFNGLSECONDARYCOLOR3BEXTPROC) (GLbyte red, GLbyte green, GLbyte blue);
alias  void (* PFNGLSECONDARYCOLOR3BVEXTPROC) (GLbyte *v);
alias  void (* PFNGLSECONDARYCOLOR3DEXTPROC) (GLdouble red, GLdouble green, GLdouble blue);
alias  void (* PFNGLSECONDARYCOLOR3DVEXTPROC) (GLdouble *v);
alias  void (* PFNGLSECONDARYCOLOR3FEXTPROC) (GLfloat red, GLfloat green, GLfloat blue);
alias  void (* PFNGLSECONDARYCOLOR3FVEXTPROC) (GLfloat *v);
alias  void (* PFNGLSECONDARYCOLOR3IEXTPROC) (GLint red, GLint green, GLint blue);
alias  void (* PFNGLSECONDARYCOLOR3IVEXTPROC) (GLint *v);
alias  void (* PFNGLSECONDARYCOLOR3SEXTPROC) (GLshort red, GLshort green, GLshort blue);
alias  void (* PFNGLSECONDARYCOLOR3SVEXTPROC) (GLshort *v);
alias  void (* PFNGLSECONDARYCOLOR3UBEXTPROC) (GLubyte red, GLubyte green, GLubyte blue);
alias  void (* PFNGLSECONDARYCOLOR3UBVEXTPROC) (GLubyte *v);
alias  void (* PFNGLSECONDARYCOLOR3UIEXTPROC) (GLuint red, GLuint green, GLuint blue);
alias  void (* PFNGLSECONDARYCOLOR3UIVEXTPROC) (GLuint *v);
alias  void (* PFNGLSECONDARYCOLOR3USEXTPROC) (GLushort red, GLushort green, GLushort blue);
alias  void (* PFNGLSECONDARYCOLOR3USVEXTPROC) (GLushort *v);
alias  void (* PFNGLSECONDARYCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
//#endif

//#ifndef GL_EXT_texture_perturb_normal
const int GL_EXT_texture_perturb_normal = 1;

alias  void (* PFNGLTEXTURENORMALEXTPROC) (GLenum mode);
//#endif

//#ifndef GL_EXT_multi_draw_arrays
const int GL_EXT_multi_draw_arrays = 1;

alias  void (* PFNGLMULTIDRAWARRAYSEXTPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
alias  void (* PFNGLMULTIDRAWELEMENTSEXTPROC) (GLenum mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount);
//#endif

//#ifndef GL_EXT_fog_coord
const int GL_EXT_fog_coord = 1;

alias  void (* PFNGLFOGCOORDFEXTPROC) (GLfloat coord);
alias  void (* PFNGLFOGCOORDFVEXTPROC) (GLfloat *coord);
alias  void (* PFNGLFOGCOORDDEXTPROC) (GLdouble coord);
alias  void (* PFNGLFOGCOORDDVEXTPROC) (GLdouble *coord);
alias  void (* PFNGLFOGCOORDPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
//#endif

//#ifndef GL_REND_screen_coordinates
const int GL_REND_screen_coordinates = 1;
//#endif

//#ifndef GL_EXT_coordinate_frame
const int GL_EXT_coordinate_frame = 1;

alias  void (* PFNGLTANGENT3BEXTPROC) (GLbyte tx, GLbyte ty, GLbyte tz);
alias  void (* PFNGLTANGENT3BVEXTPROC) (GLbyte *v);
alias  void (* PFNGLTANGENT3DEXTPROC) (GLdouble tx, GLdouble ty, GLdouble tz);
alias  void (* PFNGLTANGENT3DVEXTPROC) (GLdouble *v);
alias  void (* PFNGLTANGENT3FEXTPROC) (GLfloat tx, GLfloat ty, GLfloat tz);
alias  void (* PFNGLTANGENT3FVEXTPROC) (GLfloat *v);
alias  void (* PFNGLTANGENT3IEXTPROC) (GLint tx, GLint ty, GLint tz);
alias  void (* PFNGLTANGENT3IVEXTPROC) (GLint *v);
alias  void (* PFNGLTANGENT3SEXTPROC) (GLshort tx, GLshort ty, GLshort tz);
alias  void (* PFNGLTANGENT3SVEXTPROC) (GLshort *v);
alias  void (* PFNGLBINORMAL3BEXTPROC) (GLbyte bx, GLbyte by, GLbyte bz);
alias  void (* PFNGLBINORMAL3BVEXTPROC) (GLbyte *v);
alias  void (* PFNGLBINORMAL3DEXTPROC) (GLdouble bx, GLdouble by, GLdouble bz);
alias  void (* PFNGLBINORMAL3DVEXTPROC) (GLdouble *v);
alias  void (* PFNGLBINORMAL3FEXTPROC) (GLfloat bx, GLfloat by, GLfloat bz);
alias  void (* PFNGLBINORMAL3FVEXTPROC) (GLfloat *v);
alias  void (* PFNGLBINORMAL3IEXTPROC) (GLint bx, GLint by, GLint bz);
alias  void (* PFNGLBINORMAL3IVEXTPROC) (GLint *v);
alias  void (* PFNGLBINORMAL3SEXTPROC) (GLshort bx, GLshort by, GLshort bz);
alias  void (* PFNGLBINORMAL3SVEXTPROC) (GLshort *v);
alias  void (* PFNGLTANGENTPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLBINORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
//#endif

//#ifndef GL_EXT_texture_env_combine
const int GL_EXT_texture_env_combine = 1;
//#endif

//#ifndef GL_APPLE_specular_vector
const int GL_APPLE_specular_vector = 1;
//#endif

//#ifndef GL_APPLE_transform_hint
const int GL_APPLE_transform_hint = 1;
//#endif

//#ifndef GL_SGIX_fog_scale
const int GL_SGIX_fog_scale = 1;
//#endif

//#ifndef GL_SUNX_constant_data
const int GL_SUNX_constant_data = 1;

alias  void (* PFNGLFINISHTEXTURESUNXPROC) ();
//#endif

//#ifndef GL_SUN_global_alpha
const int GL_SUN_global_alpha = 1;

alias  void (* PFNGLGLOBALALPHAFACTORBSUNPROC) (GLbyte factor);
alias  void (* PFNGLGLOBALALPHAFACTORSSUNPROC) (GLshort factor);
alias  void (* PFNGLGLOBALALPHAFACTORISUNPROC) (GLint factor);
alias  void (* PFNGLGLOBALALPHAFACTORFSUNPROC) (GLfloat factor);
alias  void (* PFNGLGLOBALALPHAFACTORDSUNPROC) (GLdouble factor);
alias  void (* PFNGLGLOBALALPHAFACTORUBSUNPROC) (GLubyte factor);
alias  void (* PFNGLGLOBALALPHAFACTORUSSUNPROC) (GLushort factor);
alias  void (* PFNGLGLOBALALPHAFACTORUISUNPROC) (GLuint factor);
//#endif

//#ifndef GL_SUN_triangle_list
const int GL_SUN_triangle_list = 1;

alias  void (* PFNGLREPLACEMENTCODEUISUNPROC) (GLuint code);
alias  void (* PFNGLREPLACEMENTCODEUSSUNPROC) (GLushort code);
alias  void (* PFNGLREPLACEMENTCODEUBSUNPROC) (GLubyte code);
alias  void (* PFNGLREPLACEMENTCODEUIVSUNPROC) (GLuint *code);
alias  void (* PFNGLREPLACEMENTCODEUSVSUNPROC) (GLushort *code);
alias  void (* PFNGLREPLACEMENTCODEUBVSUNPROC) (GLubyte *code);
alias  void (* PFNGLREPLACEMENTCODEPOINTERSUNPROC) (GLenum type, GLsizei stride, GLvoid* *pointer);
//#endif

//#ifndef GL_SUN_vertex
const int GL_SUN_vertex = 1;

alias  void (* PFNGLCOLOR4UBVERTEX2FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
alias  void (* PFNGLCOLOR4UBVERTEX2FVSUNPROC) (GLubyte *c, GLfloat *v);
alias  void (* PFNGLCOLOR4UBVERTEX3FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLCOLOR4UBVERTEX3FVSUNPROC) (GLubyte *c, GLfloat *v);
alias  void (* PFNGLCOLOR3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLCOLOR3FVERTEX3FVSUNPROC) (GLfloat *c, GLfloat *v);
alias  void (* PFNGLNORMAL3FVERTEX3FSUNPROC) (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLNORMAL3FVERTEX3FVSUNPROC) (GLfloat *n, GLfloat *v);
alias  void (* PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *c, GLfloat *n, GLfloat *v);
alias  void (* PFNGLTEXCOORD2FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLTEXCOORD2FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *v);
alias  void (* PFNGLTEXCOORD4FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLTEXCOORD4FVERTEX4FVSUNPROC) (GLfloat *tc, GLfloat *v);
alias  void (* PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC) (GLfloat *tc, GLubyte *c, GLfloat *v);
alias  void (* PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *v);
alias  void (* PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *n, GLfloat *v);
alias  void (* PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
alias  void (* PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC) (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC) (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC) (GLuint *rc, GLubyte *c, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *c, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *n, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *c, GLfloat *n, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *n, GLfloat *v);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
//#endif

//#ifndef GL_EXT_blend_func_separate
const int GL_EXT_blend_func_separate = 1;

alias  void (* PFNGLBLENDFUNCSEPARATEEXTPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
//#endif

//#ifndef GL_INGR_blend_func_separate
const int GL_INGR_blend_func_separate = 1;

alias  void (* PFNGLBLENDFUNCSEPARATEINGRPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
//#endif

//#ifndef GL_INGR_color_clamp
const int GL_INGR_color_clamp = 1;
//#endif

//#ifndef GL_INGR_interlace_read
const int GL_INGR_interlace_read = 1;
//#endif

//#ifndef GL_EXT_stencil_wrap
const int GL_EXT_stencil_wrap = 1;
//#endif

//#ifndef GL_EXT_422_pixels
const int GL_EXT_422_pixels = 1;
//#endif

//#ifndef GL_NV_texgen_reflection
const int GL_NV_texgen_reflection = 1;
//#endif

//#ifndef GL_SUN_convolution_border_modes
const int GL_SUN_convolution_border_modes = 1;
//#endif

//#ifndef GL_EXT_texture_env_add
const int GL_EXT_texture_env_add = 1;
//#endif

//#ifndef GL_EXT_texture_lod_bias
const int GL_EXT_texture_lod_bias = 1;
//#endif

//#ifndef GL_EXT_texture_filter_anisotropic
const int GL_EXT_texture_filter_anisotropic = 1;
//#endif

//#ifndef GL_EXT_vertex_weighting
const int GL_EXT_vertex_weighting = 1;

alias  void (* PFNGLVERTEXWEIGHTFEXTPROC) (GLfloat weight);
alias  void (* PFNGLVERTEXWEIGHTFVEXTPROC) (GLfloat *weight);
alias  void (* PFNGLVERTEXWEIGHTPOINTEREXTPROC) (GLsizei size, GLenum type, GLsizei stride, GLvoid *pointer);
//#endif

//#ifndef GL_NV_light_max_exponent
const int GL_NV_light_max_exponent = 1;
//#endif

//#ifndef GL_NV_vertex_array_range
const int GL_NV_vertex_array_range = 1;

alias  void (* PFNGLFLUSHVERTEXARRAYRANGENVPROC) ();
alias  void (* PFNGLVERTEXARRAYRANGENVPROC) (GLsizei length, GLvoid *pointer);
//#endif

//#ifndef GL_NV_register_combiners
const int GL_NV_register_combiners = 1;

alias  void (* PFNGLCOMBINERPARAMETERFVNVPROC) (GLenum pname, GLfloat *params);
alias  void (* PFNGLCOMBINERPARAMETERFNVPROC) (GLenum pname, GLfloat param);
alias  void (* PFNGLCOMBINERPARAMETERIVNVPROC) (GLenum pname, GLint *params);
alias  void (* PFNGLCOMBINERPARAMETERINVPROC) (GLenum pname, GLint param);
alias  void (* PFNGLCOMBINERINPUTNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias  void (* PFNGLCOMBINEROUTPUTNVPROC) (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
alias  void (* PFNGLFINALCOMBINERINPUTNVPROC) (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias  void (* PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint *params);
alias  void (* PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLint *params);
alias  void (* PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC) (GLenum variable, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC) (GLenum variable, GLenum pname, GLint *params);
//#endif

//#ifndef GL_NV_fog_distance
const int GL_NV_fog_distance = 1;
//#endif

//#ifndef GL_NV_texgen_emboss
const int GL_NV_texgen_emboss = 1;
//#endif

//#ifndef GL_NV_blend_square
const int GL_NV_blend_square = 1;
//#endif

//#ifndef GL_NV_texture_env_combine4
const int GL_NV_texture_env_combine4 = 1;
//#endif

//#ifndef GL_MESA_resize_buffers
const int GL_MESA_resize_buffers = 1;

alias  void (* PFNGLRESIZEBUFFERSMESAPROC) ();
//#endif

//#ifndef GL_MESA_window_pos
const int GL_MESA_window_pos = 1;

alias  void (* PFNGLWINDOWPOS2DMESAPROC) (GLdouble x, GLdouble y);
alias  void (* PFNGLWINDOWPOS2DVMESAPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS2FMESAPROC) (GLfloat x, GLfloat y);
alias  void (* PFNGLWINDOWPOS2FVMESAPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS2IMESAPROC) (GLint x, GLint y);
alias  void (* PFNGLWINDOWPOS2IVMESAPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS2SMESAPROC) (GLshort x, GLshort y);
alias  void (* PFNGLWINDOWPOS2SVMESAPROC) (GLshort *v);
alias  void (* PFNGLWINDOWPOS3DMESAPROC) (GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLWINDOWPOS3DVMESAPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS3FMESAPROC) (GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLWINDOWPOS3FVMESAPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS3IMESAPROC) (GLint x, GLint y, GLint z);
alias  void (* PFNGLWINDOWPOS3IVMESAPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS3SMESAPROC) (GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLWINDOWPOS3SVMESAPROC) (GLshort *v);
alias  void (* PFNGLWINDOWPOS4DMESAPROC) (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLWINDOWPOS4DVMESAPROC) (GLdouble *v);
alias  void (* PFNGLWINDOWPOS4FMESAPROC) (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLWINDOWPOS4FVMESAPROC) (GLfloat *v);
alias  void (* PFNGLWINDOWPOS4IMESAPROC) (GLint x, GLint y, GLint z, GLint w);
alias  void (* PFNGLWINDOWPOS4IVMESAPROC) (GLint *v);
alias  void (* PFNGLWINDOWPOS4SMESAPROC) (GLshort x, GLshort y, GLshort z, GLshort w);
alias  void (* PFNGLWINDOWPOS4SVMESAPROC) (GLshort *v);
//#endif

//#ifndef GL_IBM_cull_vertex
const int GL_IBM_cull_vertex = 1;
//#endif

//#ifndef GL_IBM_multimode_draw_arrays
const int GL_IBM_multimode_draw_arrays = 1;

alias  void (* PFNGLMULTIMODEDRAWARRAYSIBMPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount, GLint modestride);
alias  void (* PFNGLMULTIMODEDRAWELEMENTSIBMPROC) (GLenum *mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount, GLint modestride);
//#endif

//#ifndef GL_IBM_vertex_array_lists
const int GL_IBM_vertex_array_lists = 1;

alias  void (* PFNGLCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLSECONDARYCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLEDGEFLAGPOINTERLISTIBMPROC) (GLint stride, GLboolean* *pointer, GLint ptrstride);
alias  void (* PFNGLFOGCOORDPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLINDEXPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLNORMALPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLTEXCOORDPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias  void (* PFNGLVERTEXPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
//#endif

//#ifndef GL_SGIX_subsample
const int GL_SGIX_subsample = 1;
//#endif

//#ifndef GL_SGIX_ycrcba
const int GL_SGIX_ycrcba = 1;
//#endif

//#ifndef GL_SGIX_ycrcb_subsample
const int GL_SGIX_ycrcb_subsample = 1;
//#endif

//#ifndef GL_SGIX_depth_pass_instrument
const int GL_SGIX_depth_pass_instrument = 1;
//#endif

//#ifndef GL_3DFX_texture_compression_FXT1
const int GL_3DFX_texture_compression_FXT1 = 1;
//#endif

//#ifndef GL_3DFX_multisample
const int GL_3DFX_multisample = 1;
//#endif

//#ifndef GL_3DFX_tbuffer
const int GL_3DFX_tbuffer = 1;

alias  void (* PFNGLTBUFFERMASK3DFXPROC) (GLuint mask);
//#endif

//#ifndef GL_EXT_multisample
const int GL_EXT_multisample = 1;

alias  void (* PFNGLSAMPLEMASKEXTPROC) (GLclampf value, GLboolean invert);
alias  void (* PFNGLSAMPLEPATTERNEXTPROC) (GLenum pattern);
//#endif

//#ifndef GL_SGIX_vertex_preclip
const int GL_SGIX_vertex_preclip = 1;
//#endif

//#ifndef GL_SGIX_convolution_accuracy
const int GL_SGIX_convolution_accuracy = 1;
//#endif

//#ifndef GL_SGIX_resample
const int GL_SGIX_resample = 1;
//#endif

//#ifndef GL_SGIS_point_line_texgen
const int GL_SGIS_point_line_texgen = 1;
//#endif

//#ifndef GL_SGIS_texture_color_mask
const int GL_SGIS_texture_color_mask = 1;

alias  void (* PFNGLTEXTURECOLORMASKSGISPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
//#endif

//#ifndef GL_SGIX_igloo_interface
const int GL_SGIX_igloo_interface = 1;

alias  void (* PFNGLIGLOOINTERFACESGIXPROC) (GLenum pname, GLvoid *params);
//#endif

//#ifndef GL_EXT_texture_env_dot3
const int GL_EXT_texture_env_dot3 = 1;
//#endif

//#ifndef GL_ATI_texture_mirror_once
const int GL_ATI_texture_mirror_once = 1;
//#endif

//#ifndef GL_NV_fence
const int GL_NV_fence = 1;

alias  void (* PFNGLDELETEFENCESNVPROC) (GLsizei n, GLuint *fences);
alias  void (* PFNGLGENFENCESNVPROC) (GLsizei n, GLuint *fences);
alias  GLboolean (* PFNGLISFENCENVPROC) (GLuint fence);
alias  GLboolean (* PFNGLTESTFENCENVPROC) (GLuint fence);
alias  void (* PFNGLGETFENCEIVNVPROC) (GLuint fence, GLenum pname, GLint *params);
alias  void (* PFNGLFINISHFENCENVPROC) (GLuint fence);
alias  void (* PFNGLSETFENCENVPROC) (GLuint fence, GLenum condition);
//#endif

//#ifndef GL_NV_evaluators
const int GL_NV_evaluators = 1;

alias  void (* PFNGLMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, GLvoid *points);
alias  void (* PFNGLMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points);
alias  void (* PFNGLGETMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
alias  void (* PFNGLGETMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETMAPATTRIBPARAMETERIVNVPROC) (GLenum target, GLuint index, GLenum pname, GLint *params);
alias  void (* PFNGLGETMAPATTRIBPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
alias  void (* PFNGLEVALMAPSNVPROC) (GLenum target, GLenum mode);
//#endif

//#ifndef GL_NV_packed_depth_stencil
const int GL_NV_packed_depth_stencil = 1;
//#endif

//#ifndef GL_NV_register_combiners2
const int GL_NV_register_combiners2 = 1;

alias  void (* PFNGLCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
//#endif

//#ifndef GL_NV_texture_compression_vtc
const int GL_NV_texture_compression_vtc = 1;
//#endif

//#ifndef GL_NV_texture_rectangle
const int GL_NV_texture_rectangle = 1;
//#endif

//#ifndef GL_NV_texture_shader
const int GL_NV_texture_shader = 1;
//#endif

//#ifndef GL_NV_texture_shader2
const int GL_NV_texture_shader2 = 1;
//#endif

//#ifndef GL_NV_vertex_array_range2
const int GL_NV_vertex_array_range2 = 1;
//#endif

//#ifndef GL_NV_vertex_program
const int GL_NV_vertex_program = 1;

alias  GLboolean (* PFNGLAREPROGRAMSRESIDENTNVPROC) (GLsizei n, GLuint *programs, GLboolean *residences);
alias  void (* PFNGLBINDPROGRAMNVPROC) (GLenum target, GLuint id);
alias  void (* PFNGLDELETEPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias  void (* PFNGLEXECUTEPROGRAMNVPROC) (GLenum target, GLuint id, GLfloat *params);
alias  void (* PFNGLGENPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias  void (* PFNGLGETPROGRAMPARAMETERDVNVPROC) (GLenum target, GLuint index, GLenum pname, GLdouble *params);
alias  void (* PFNGLGETPROGRAMPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETPROGRAMIVNVPROC) (GLuint id, GLenum pname, GLint *params);
alias  void (* PFNGLGETPROGRAMSTRINGNVPROC) (GLuint id, GLenum pname, GLubyte *program);
alias  void (* PFNGLGETTRACKMATRIXIVNVPROC) (GLenum target, GLuint address, GLenum pname, GLint *params);
alias  void (* PFNGLGETVERTEXATTRIBDVNVPROC) (GLuint index, GLenum pname, GLdouble *params);
alias  void (* PFNGLGETVERTEXATTRIBFVNVPROC) (GLuint index, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETVERTEXATTRIBIVNVPROC) (GLuint index, GLenum pname, GLint *params);
alias  void (* PFNGLGETVERTEXATTRIBPOINTERVNVPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
alias  GLboolean (* PFNGLISPROGRAMNVPROC) (GLuint id);
alias  void (* PFNGLLOADPROGRAMNVPROC) (GLenum target, GLuint id, GLsizei len, GLubyte *program);
alias  void (* PFNGLPROGRAMPARAMETER4DNVPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLPROGRAMPARAMETER4DVNVPROC) (GLenum target, GLuint index, GLdouble *v);
alias  void (* PFNGLPROGRAMPARAMETER4FNVPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLPROGRAMPARAMETER4FVNVPROC) (GLenum target, GLuint index, GLfloat *v);
alias  void (* PFNGLPROGRAMPARAMETERS4DVNVPROC) (GLenum target, GLuint index, GLuint count, GLdouble *v);
alias  void (* PFNGLPROGRAMPARAMETERS4FVNVPROC) (GLenum target, GLuint index, GLuint count, GLfloat *v);
alias  void (* PFNGLREQUESTRESIDENTPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias  void (* PFNGLTRACKMATRIXNVPROC) (GLenum target, GLuint address, GLenum matrix, GLenum transform);
alias  void (* PFNGLVERTEXATTRIBPOINTERNVPROC) (GLuint index, GLint fsize, GLenum type, GLsizei stride, GLvoid *pointer);
alias  void (* PFNGLVERTEXATTRIB1DNVPROC) (GLuint index, GLdouble x);
alias  void (* PFNGLVERTEXATTRIB1DVNVPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB1FNVPROC) (GLuint index, GLfloat x);
alias  void (* PFNGLVERTEXATTRIB1FVNVPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB1SNVPROC) (GLuint index, GLshort x);
alias  void (* PFNGLVERTEXATTRIB1SVNVPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB2DNVPROC) (GLuint index, GLdouble x, GLdouble y);
alias  void (* PFNGLVERTEXATTRIB2DVNVPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB2FNVPROC) (GLuint index, GLfloat x, GLfloat y);
alias  void (* PFNGLVERTEXATTRIB2FVNVPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB2SNVPROC) (GLuint index, GLshort x, GLshort y);
alias  void (* PFNGLVERTEXATTRIB2SVNVPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB3DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLVERTEXATTRIB3DVNVPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB3FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLVERTEXATTRIB3FVNVPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB3SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLVERTEXATTRIB3SVNVPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB4DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLVERTEXATTRIB4DVNVPROC) (GLuint index, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIB4FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLVERTEXATTRIB4FVNVPROC) (GLuint index, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIB4SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias  void (* PFNGLVERTEXATTRIB4SVNVPROC) (GLuint index, GLshort *v);
alias  void (* PFNGLVERTEXATTRIB4UBNVPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias  void (* PFNGLVERTEXATTRIB4UBVNVPROC) (GLuint index, GLubyte *v);
alias  void (* PFNGLVERTEXATTRIBS1DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIBS1FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIBS1SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias  void (* PFNGLVERTEXATTRIBS2DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIBS2FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIBS2SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias  void (* PFNGLVERTEXATTRIBS3DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIBS3FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIBS3SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias  void (* PFNGLVERTEXATTRIBS4DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias  void (* PFNGLVERTEXATTRIBS4FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias  void (* PFNGLVERTEXATTRIBS4SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias  void (* PFNGLVERTEXATTRIBS4UBVNVPROC) (GLuint index, GLsizei count, GLubyte *v);
//#endif

//#ifndef GL_SGIX_texture_coordinate_clamp
const int GL_SGIX_texture_coordinate_clamp = 1;
//#endif

//#ifndef GL_SGIX_scalebias_hint
const int GL_SGIX_scalebias_hint = 1;
//#endif

//#ifndef GL_OML_interlace
const int GL_OML_interlace = 1;
//#endif

//#ifndef GL_OML_subsample
const int GL_OML_subsample = 1;
//#endif

//#ifndef GL_OML_resample
const int GL_OML_resample = 1;
//#endif

//#ifndef GL_NV_copy_depth_to_color
const int GL_NV_copy_depth_to_color = 1;
//#endif

//#ifndef GL_ATI_envmap_bumpmap
const int GL_ATI_envmap_bumpmap = 1;

alias  void (* PFNGLTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
alias  void (* PFNGLTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);
alias  void (* PFNGLGETTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
alias  void (* PFNGLGETTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);
//#endif

//#ifndef GL_ATI_fragment_shader
const int GL_ATI_fragment_shader = 1;

alias  GLuint (* PFNGLGENFRAGMENTSHADERSATIPROC) (GLuint range);
alias  void (* PFNGLBINDFRAGMENTSHADERATIPROC) (GLuint id);
alias  void (* PFNGLDELETEFRAGMENTSHADERATIPROC) (GLuint id);
alias  void (* PFNGLBEGINFRAGMENTSHADERATIPROC) ();
alias  void (* PFNGLENDFRAGMENTSHADERATIPROC) ();
alias  void (* PFNGLPASSTEXCOORDATIPROC) (GLuint dst, GLuint coord, GLenum swizzle);
alias  void (* PFNGLSAMPLEMAPATIPROC) (GLuint dst, GLuint interp, GLenum swizzle);
alias  void (* PFNGLCOLORFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias  void (* PFNGLCOLORFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias  void (* PFNGLCOLORFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias  void (* PFNGLALPHAFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias  void (* PFNGLALPHAFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias  void (* PFNGLALPHAFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias  void (* PFNGLSETFRAGMENTSHADERCONSTANTATIPROC) (GLuint dst, GLfloat *value);
//#endif

//#ifndef GL_ATI_pn_triangles
const int GL_ATI_pn_triangles = 1;

alias  void (* PFNGLPNTRIANGLESIATIPROC) (GLenum pname, GLint param);
alias  void (* PFNGLPNTRIANGLESFATIPROC) (GLenum pname, GLfloat param);
//#endif

//#ifndef GL_ATI_vertex_array_object
const int GL_ATI_vertex_array_object = 1;

alias  GLuint (* PFNGLNEWOBJECTBUFFERATIPROC) (GLsizei size, GLvoid *pointer, GLenum usage);
alias  GLboolean (* PFNGLISOBJECTBUFFERATIPROC) (GLuint buffer);
alias  void (* PFNGLUPDATEOBJECTBUFFERATIPROC) (GLuint buffer, GLuint offset, GLsizei size, GLvoid *pointer, GLenum preserve);
alias  void (* PFNGLGETOBJECTBUFFERFVATIPROC) (GLuint buffer, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETOBJECTBUFFERIVATIPROC) (GLuint buffer, GLenum pname, GLint *params);
alias  void (* PFNGLDELETEOBJECTBUFFERATIPROC) (GLuint buffer);
alias  void (* PFNGLARRAYOBJECTATIPROC) (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias  void (* PFNGLGETARRAYOBJECTFVATIPROC) (GLenum array, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETARRAYOBJECTIVATIPROC) (GLenum array, GLenum pname, GLint *params);
alias  void (* PFNGLVARIANTARRAYOBJECTATIPROC) (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias  void (* PFNGLGETVARIANTARRAYOBJECTFVATIPROC) (GLuint id, GLenum pname, GLfloat *params);
alias  void (* PFNGLGETVARIANTARRAYOBJECTIVATIPROC) (GLuint id, GLenum pname, GLint *params);
//#endif

//#ifndef GL_EXT_vertex_shader
const int GL_EXT_vertex_shader = 1;

alias  void (* PFNGLBEGINVERTEXSHADEREXTPROC) ();
alias  void (* PFNGLENDVERTEXSHADEREXTPROC) ();
alias  void (* PFNGLBINDVERTEXSHADEREXTPROC) (GLuint id);
alias  GLuint (* PFNGLGENVERTEXSHADERSEXTPROC) (GLuint range);
alias  void (* PFNGLDELETEVERTEXSHADEREXTPROC) (GLuint id);
alias  void (* PFNGLSHADEROP1EXTPROC) (GLenum op, GLuint res, GLuint arg1);
alias  void (* PFNGLSHADEROP2EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
alias  void (* PFNGLSHADEROP3EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
alias  void (* PFNGLSWIZZLEEXTPROC) (GLuint res, GLuint inn, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias  void (* PFNGLWRITEMASKEXTPROC) (GLuint res, GLuint inn, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias  void (* PFNGLINSERTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
alias  void (* PFNGLEXTRACTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
alias  GLuint (* PFNGLGENSYMBOLSEXTPROC) (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
alias  void (* PFNGLSETINVARIANTEXTPROC) (GLuint id, GLenum type, void *addr);
alias  void (* PFNGLSETLOCALCONSTANTEXTPROC) (GLuint id, GLenum type, void *addr);
alias  void (* PFNGLVARIANTBVEXTPROC) (GLuint id, GLbyte *addr);
alias  void (* PFNGLVARIANTSVEXTPROC) (GLuint id, GLshort *addr);
alias  void (* PFNGLVARIANTIVEXTPROC) (GLuint id, GLint *addr);
alias  void (* PFNGLVARIANTFVEXTPROC) (GLuint id, GLfloat *addr);
alias  void (* PFNGLVARIANTDVEXTPROC) (GLuint id, GLdouble *addr);
alias  void (* PFNGLVARIANTUBVEXTPROC) (GLuint id, GLubyte *addr);
alias  void (* PFNGLVARIANTUSVEXTPROC) (GLuint id, GLushort *addr);
alias  void (* PFNGLVARIANTUIVEXTPROC) (GLuint id, GLuint *addr);
alias  void (* PFNGLVARIANTPOINTEREXTPROC) (GLuint id, GLenum type, GLuint stride, void *addr);
alias  void (* PFNGLENABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
alias  void (* PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
alias  GLuint (* PFNGLBINDLIGHTPARAMETEREXTPROC) (GLenum light, GLenum value);
alias  GLuint (* PFNGLBINDMATERIALPARAMETEREXTPROC) (GLenum face, GLenum value);
alias  GLuint (* PFNGLBINDTEXGENPARAMETEREXTPROC) (GLenum unit, GLenum coord, GLenum value);
alias  GLuint (* PFNGLBINDTEXTUREUNITPARAMETEREXTPROC) (GLenum unit, GLenum value);
alias  GLuint (* PFNGLBINDPARAMETEREXTPROC) (GLenum value);
alias  GLboolean (* PFNGLISVARIANTENABLEDEXTPROC) (GLuint id, GLenum cap);
alias  void (* PFNGLGETVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias  void (* PFNGLGETVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias  void (* PFNGLGETVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
alias  void (* PFNGLGETVARIANTPOINTERVEXTPROC) (GLuint id, GLenum value, GLvoid* *data);
alias  void (* PFNGLGETINVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias  void (* PFNGLGETINVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias  void (* PFNGLGETINVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
alias  void (* PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias  void (* PFNGLGETLOCALCONSTANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias  void (* PFNGLGETLOCALCONSTANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
//#endif

//#ifndef GL_ATI_vertex_streams
const int GL_ATI_vertex_streams = 1;

alias  void (* PFNGLVERTEXSTREAM1SATIPROC) (GLenum stream, GLshort x);
alias  void (* PFNGLVERTEXSTREAM1SVATIPROC) (GLenum stream, GLshort *coords);
alias  void (* PFNGLVERTEXSTREAM1IATIPROC) (GLenum stream, GLint x);
alias  void (* PFNGLVERTEXSTREAM1IVATIPROC) (GLenum stream, GLint *coords);
alias  void (* PFNGLVERTEXSTREAM1FATIPROC) (GLenum stream, GLfloat x);
alias  void (* PFNGLVERTEXSTREAM1FVATIPROC) (GLenum stream, GLfloat *coords);
alias  void (* PFNGLVERTEXSTREAM1DATIPROC) (GLenum stream, GLdouble x);
alias  void (* PFNGLVERTEXSTREAM1DVATIPROC) (GLenum stream, GLdouble *coords);
alias  void (* PFNGLVERTEXSTREAM2SATIPROC) (GLenum stream, GLshort x, GLshort y);
alias  void (* PFNGLVERTEXSTREAM2SVATIPROC) (GLenum stream, GLshort *coords);
alias  void (* PFNGLVERTEXSTREAM2IATIPROC) (GLenum stream, GLint x, GLint y);
alias  void (* PFNGLVERTEXSTREAM2IVATIPROC) (GLenum stream, GLint *coords);
alias  void (* PFNGLVERTEXSTREAM2FATIPROC) (GLenum stream, GLfloat x, GLfloat y);
alias  void (* PFNGLVERTEXSTREAM2FVATIPROC) (GLenum stream, GLfloat *coords);
alias  void (* PFNGLVERTEXSTREAM2DATIPROC) (GLenum stream, GLdouble x, GLdouble y);
alias  void (* PFNGLVERTEXSTREAM2DVATIPROC) (GLenum stream, GLdouble *coords);
alias  void (* PFNGLVERTEXSTREAM3SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z);
alias  void (* PFNGLVERTEXSTREAM3SVATIPROC) (GLenum stream, GLshort *coords);
alias  void (* PFNGLVERTEXSTREAM3IATIPROC) (GLenum stream, GLint x, GLint y, GLint z);
alias  void (* PFNGLVERTEXSTREAM3IVATIPROC) (GLenum stream, GLint *coords);
alias  void (* PFNGLVERTEXSTREAM3FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
alias  void (* PFNGLVERTEXSTREAM3FVATIPROC) (GLenum stream, GLfloat *coords);
alias  void (* PFNGLVERTEXSTREAM3DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
alias  void (* PFNGLVERTEXSTREAM3DVATIPROC) (GLenum stream, GLdouble *coords);
alias  void (* PFNGLVERTEXSTREAM4SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
alias  void (* PFNGLVERTEXSTREAM4SVATIPROC) (GLenum stream, GLshort *coords);
alias  void (* PFNGLVERTEXSTREAM4IATIPROC) (GLenum stream, GLint x, GLint y, GLint z, GLint w);
alias  void (* PFNGLVERTEXSTREAM4IVATIPROC) (GLenum stream, GLint *coords);
alias  void (* PFNGLVERTEXSTREAM4FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias  void (* PFNGLVERTEXSTREAM4FVATIPROC) (GLenum stream, GLfloat *coords);
alias  void (* PFNGLVERTEXSTREAM4DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias  void (* PFNGLVERTEXSTREAM4DVATIPROC) (GLenum stream, GLdouble *coords);
alias  void (* PFNGLNORMALSTREAM3BATIPROC) (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
alias  void (* PFNGLNORMALSTREAM3BVATIPROC) (GLenum stream, GLbyte *coords);
alias  void (* PFNGLNORMALSTREAM3SATIPROC) (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
alias  void (* PFNGLNORMALSTREAM3SVATIPROC) (GLenum stream, GLshort *coords);
alias  void (* PFNGLNORMALSTREAM3IATIPROC) (GLenum stream, GLint nx, GLint ny, GLint nz);
alias  void (* PFNGLNORMALSTREAM3IVATIPROC) (GLenum stream, GLint *coords);
alias  void (* PFNGLNORMALSTREAM3FATIPROC) (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
alias  void (* PFNGLNORMALSTREAM3FVATIPROC) (GLenum stream, GLfloat *coords);
alias  void (* PFNGLNORMALSTREAM3DATIPROC) (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
alias  void (* PFNGLNORMALSTREAM3DVATIPROC) (GLenum stream, GLdouble *coords);
alias  void (* PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC) (GLenum stream);
alias  void (* PFNGLVERTEXBLENDENVIATIPROC) (GLenum pname, GLint param);
alias  void (* PFNGLVERTEXBLENDENVFATIPROC) (GLenum pname, GLfloat param);
//#endif

//#ifndef GL_ATI_element_array
const int GL_ATI_element_array = 1;

alias  void (* PFNGLELEMENTPOINTERATIPROC) (GLenum type, GLvoid *pointer);
alias  void (* PFNGLDRAWELEMENTARRAYATIPROC) (GLenum mode, GLsizei count);
alias  void (* PFNGLDRAWRANGEELEMENTARRAYATIPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count);
//#endif

//#ifndef GL_SUN_mesh_array
const int GL_SUN_mesh_array = 1;

alias  void (* PFNGLDRAWMESHARRAYSSUNPROC) (GLenum mode, GLint first, GLsizei count, GLsizei width);
//#endif

//#ifndef GL_SUN_slice_accum
const int GL_SUN_slice_accum = 1;
//#endif

//#ifndef GL_NV_multisample_filter_hint
const int GL_NV_multisample_filter_hint = 1;
//#endif

//#ifndef GL_NV_depth_clamp
const int GL_NV_depth_clamp = 1;
//#endif

//#ifndef GL_NV_occlusion_query
const int GL_NV_occlusion_query = 1;

alias  void (* PFNGLGENOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
alias  void (* PFNGLDELETEOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
alias  GLboolean (* PFNGLISOCCLUSIONQUERYNVPROC) (GLuint id);
alias  void (* PFNGLBEGINOCCLUSIONQUERYNVPROC) (GLuint id);
alias  void (* PFNGLENDOCCLUSIONQUERYNVPROC) ();
alias  void (* PFNGLGETOCCLUSIONQUERYIVNVPROC) (GLuint id, GLenum pname, GLint *params);
alias  void (* PFNGLGETOCCLUSIONQUERYUIVNVPROC) (GLuint id, GLenum pname, GLuint *params);
//#endif

//#ifndef GL_NV_point_sprite
const int GL_NV_point_sprite = 1;

alias  void (* PFNGLPOINTPARAMETERINVPROC) (GLenum pname, GLint param);
alias  void (* PFNGLPOINTPARAMETERIVNVPROC) (GLenum pname, GLint *params);
//#endif

//#ifndef GL_NV_texture_shader3
const int GL_NV_texture_shader3 = 1;
//#endif

//#ifndef GL_NV_vertex_program1_1
const int GL_NV_vertex_program1_1 = 1;
//#endif

//#ifndef GL_EXT_shadow_funcs
const int GL_EXT_shadow_funcs = 1;
//#endif

//#ifndef GL_EXT_stencil_two_side
const int GL_EXT_stencil_two_side = 1;

alias  void (* PFNGLACTIVESTENCILFACEEXTPROC) (GLenum face);
//#endif

