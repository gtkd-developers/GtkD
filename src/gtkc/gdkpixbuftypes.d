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
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

module gtkc.gdkpixbuftypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;
public import gtkc.gdktypes;
public import gtkc.atktypes;

version(Tango)
private import tango.stdc.stdio;
else
private import std.stdio;

/**
 * An enumeration containing three sets of flags for a GdkPixdata struct:
 * one for the used colorspace, one for the width of the samples and one
 * for the encoding of the pixel data.
 * GDK_PIXDATA_COLOR_TYPE_RGB
 * each pixel has red, green and blue samples.
 * GDK_PIXDATA_COLOR_TYPE_RGBA
 * each pixel has red, green and blue samples
 *  and an alpha value.
 * GDK_PIXDATA_COLOR_TYPE_MASK
 * mask for the colortype flags of the enum.
 * GDK_PIXDATA_SAMPLE_WIDTH_8
 * each sample has 8 bits.
 * GDK_PIXDATA_SAMPLE_WIDTH_MASK
 * mask for the sample width flags of the enum.
 * GDK_PIXDATA_ENCODING_RAW
 * the pixel data is in raw form.
 * GDK_PIXDATA_ENCODING_RLE
 * the pixel data is run-length encoded. Runs may
 *  be up to 127 bytes long; their length is stored in a single byte
 *  preceding the pixel data for the run. If a run is constant, its length
 *  byte has the high bit set and the pixel data consists of a single pixel
 *  which must be repeated.
 * GDK_PIXDATA_ENCODING_MASK
 * mask for the encoding flags of the enum.
 */
public enum GdkPixdataType
{
	/+* colorspace + alpha +/
	GDK_PIXDATA_COLOR_TYPE_RGB = 0x01,
	GDK_PIXDATA_COLOR_TYPE_RGBA = 0x02,
	GDK_PIXDATA_COLOR_TYPE_MASK = 0xff,
	/+* width, support 8bits only currently +/
	GDK_PIXDATA_SAMPLE_WIDTH_8 = 0x01 << 16,
	GDK_PIXDATA_SAMPLE_WIDTH_MASK = 0x0f << 16,
	/+* encoding +/
	GDK_PIXDATA_ENCODING_RAW = 0x01 << 24,
	GDK_PIXDATA_ENCODING_RLE = 0x02 << 24,
	GDK_PIXDATA_ENCODING_MASK = 0x0f << 24
}
alias GdkPixdataType PixdataType;

/**
 * An enumeration which is used by gdk_pixdata_to_csource() to
 * determine the form of C source to be generated. The three values
 * GDK_PIXDATA_DUMP_PIXDATA_STREAM, GDK_PIXDATA_DUMP_PIXDATA_STRUCT
 * and GDK_PIXDATA_DUMP_MACROS are mutually exclusive, as are
 * GDK_PIXBUF_DUMP_GTYPES and GDK_PIXBUF_DUMP_CTYPES. The remaining
 * elements are optional flags that can be freely added.
 * GDK_PIXDATA_DUMP_PIXDATA_STREAM
 * Generate pixbuf data stream (a single
 *  string containing a serialized GdkPixdata structure in network byte
 *  order).
 * GDK_PIXDATA_DUMP_PIXDATA_STRUCT
 * Generate GdkPixdata structure (needs
 *  the GdkPixdata structure definition from gdk-pixdata.h).
 * GDK_PIXDATA_DUMP_MACROS
 * Generate *_ROWSTRIDE,
 *  *_WIDTH, *_HEIGHT,
 *  *_BYTES_PER_PIXEL and
 *  *_RLE_PIXEL_DATA or *_PIXEL_DATA
 *  macro definitions for the image.
 * GDK_PIXDATA_DUMP_GTYPES
 * Generate GLib data types instead of
 *  standard C data types.
 * GDK_PIXDATA_DUMP_CTYPES
 * Generate standard C data types instead of
 *  GLib data types.
 * GDK_PIXDATA_DUMP_STATIC
 * Generate static symbols.
 * GDK_PIXDATA_DUMP_CONST
 * Generate const symbols.
 * GDK_PIXDATA_DUMP_RLE_DECODER
 * Provide a *_RUN_LENGTH_DECODE(image_buf, rle_data, size, bpp)
 *  macro definition to decode run-length encoded image data.
 */
public enum GdkPixdataDumpType
{
	/+* type of source to save +/
	GDK_PIXDATA_DUMP_PIXDATA_STREAM = 0,
	GDK_PIXDATA_DUMP_PIXDATA_STRUCT = 1,
	GDK_PIXDATA_DUMP_MACROS = 2,
	/+* type of variables to use +/
	GDK_PIXDATA_DUMP_GTYPES = 0,
	GDK_PIXDATA_DUMP_CTYPES = 1 << 8,
	GDK_PIXDATA_DUMP_STATIC = 1 << 9,
	GDK_PIXDATA_DUMP_CONST = 1 << 10,
	/+* save RLE decoder macro? +/
	GDK_PIXDATA_DUMP_RLE_DECODER = 1 << 16
}
alias GdkPixdataDumpType PixdataDumpType;

public enum GdkPixbufFormatFlags
{
	WRITABLE = 1 << 0,
	SCALABLE = 1 << 1,
	THREADSAFE = 1 << 2
}
alias GdkPixbufFormatFlags PixbufFormatFlags;


/**
 * Main Gtk struct.
 * A GdkPixdata contains pixbuf information in a form suitable for
 * serialization and streaming.
 * guint32  magic;
 * magic number. A valid GdkPixdata structure must have
 */
public struct GdkPixdata
{
	uint magic; /+* GDK_PIXBUF_MAGIC_NUMBER +/
	int length; /+* <1 to disable length checks, otherwise:
	 * GDK_PIXDATA_HEADER_LENGTH + pixelData length
	+/
	uint pixdataType; /+* GdkPixdataType +/
	uint rowstride;
	uint width;
	uint height;
	ubyte *pixelData;
}


/**
 * Main Gtk struct.
 */
public struct GdkPixbufAnimation{}


public struct GdkPixbufAnimationIter{}


public struct GdkPixbufSimpleAnim{}


/**
 * Main Gtk struct.
 */
public struct GdkPixbufLoader{}


/**
 * Main Gtk struct.
 */
public struct GdkPixbufFormat
{
	char *name;
	GdkPixbufModulePattern *signature;
	char *domain;
	char *description;
	char **mimeTypes;
	char **extensions;
	uint flags;
	int disabled;
	char *license;
}


public struct GdkPixbufModulePattern
{
	char *prefix;
	char *mask;
	int relevance;
}


public struct GdkPixbufModule
{
	char *moduleName;
	char *modulePath;
	GModule *modul;
	GdkPixbufFormat *info;
	extern(C) GdkPixbuf * function(FILE *f,GError **error)  load;
	extern(C) GdkPixbuf * function( char **data)  loadXpmData;
	/+* Incremental loading +/
	extern(C) void*  function(GdkPixbufModuleSizeFunc sizeFunc,GdkPixbufModulePreparedFunc prepareFunc,GdkPixbufModuleUpdatedFunc updateFunc,void* userData,GError **error)  beginLoad;
	extern(C) int  function(void* context,GError **error)  stopLoad;
	extern(C) int  function(void* context,char *buf,uint size,GError **error)  loadIncrement;
	/+* Animation loading +/
	extern(C) GdkPixbufAnimation * function(FILE *f,GError **error)  loadAnimation;
	/+* Saving +/
	extern(C) int  function(FILE *f,GdkPixbuf *pixbuf,char **paramKeys,char **paramValues,GError **error)  save;
	extern(C) int  function(GdkPixbufSaveFunc saveFunc,void* userData,GdkPixbuf *pixbuf,char **optionKeys,char **optionValues,GError **error) saveToCallback;
}


public struct GdkPixbufAnimationClass
{
	GObjectClass parentClass;
	extern(C) int  function(GdkPixbufAnimation *anim) isStaticImage;
	extern(C) GdkPixbuf*  function(GdkPixbufAnimation *anim) getStaticImage;
	extern(C) void  function(GdkPixbufAnimation *anim,int *width,int *height) getSize;
	extern(C) GdkPixbufAnimationIter*  function(GdkPixbufAnimation *anim,GTimeVal *startTime) getIter;
}


public struct GdkPixbufAnimationIterClass
{
	GObjectClass parentClass;
	extern(C) int  function(GdkPixbufAnimationIter *iter) getDelayTime;
	extern(C) GdkPixbuf*  function(GdkPixbufAnimationIter *iter) getPixbuf;
	extern(C) int  function(GdkPixbufAnimationIter *iter) onCurrentlyLoadingFrame;
	extern(C) int  function(GdkPixbufAnimationIter *iter,GTimeVal *currentTime) advance;
}


/*
 * module  :
 */
// void (*GdkPixbufModuleFillVtableFunc) (GdkPixbufModule *module);
public alias extern(C) void  function (GdkPixbufModule*) GdkPixbufModuleFillVtableFunc;

/*
 * info  :
 */
// void (*GdkPixbufModuleFillInfoFunc) (GdkPixbufFormat *info);
public alias extern(C) void  function (GdkPixbufFormat*) GdkPixbufModuleFillInfoFunc;

/*
 * width  :
 * height  :
 * user_data  :
 */
// void (*GdkPixbufModuleSizeFunc) (gint *width,  gint *height,  gpointer user_data);
public alias extern(C) void  function (gint*, gint*, void*) GdkPixbufModuleSizeFunc;

/*
 * pixbuf  :
 * anim  :
 * user_data  :
 */
// void (*GdkPixbufModulePreparedFunc) (GdkPixbuf *pixbuf,  GdkPixbufAnimation *anim,  gpointer user_data);
public alias extern(C) void  function (GdkPixbuf*, GdkPixbufAnimation*, void*) GdkPixbufModulePreparedFunc;

/*
 * pixbuf  :
 * x  :
 * y  :
 * width  :
 * height  :
 * user_data  :
 */
// void (*GdkPixbufModuleUpdatedFunc) (GdkPixbuf *pixbuf,  int x,  int y,  int width,  int height,  gpointer user_data);
public alias extern(C) void  function (GdkPixbuf*, int, int, int, int, void*) GdkPixbufModuleUpdatedFunc;
