/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

// Adapted from John Reimer's DUI loader modules


module lib.gdkpixbuf;

private import std.stdio;
private import gdkpixbuf.typedefs;
private import lib.Loader;
private import lib.paths;

private Linker gdkpixbuf_Linker;

static this()
{
	gdkpixbuf_Linker = new Linker(libPath ~ importLibs[LIBRARY.GDKPIXBUF] );
	gdkpixbuf_Linker.link(gdkpixbufLinks);
	debug writefln("* Finished static this(): gdkpixbuf");
}

static ~this()
{
	delete gdkpixbuf_Linker;
	debug writefln("* Finished static ~this(): gdkpixbuf");
}

extern(C) 
{	
	// gdkpixbuf.Pixdata
	
	gpointer function(GdkPixdata* pixdata, GdkPixbuf* pixbuf, gboolean useRle)gdk_pixdata_from_pixbuf;
	GdkPixbuf* function(GdkPixdata* pixdata, gboolean copyPixels, GError** error)gdk_pixbuf_from_pixdata;
	guint8* function(GdkPixdata* pixdata, guint* streamLengthP)gdk_pixdata_serialize;
	gboolean function(GdkPixdata* pixdata, guint streamLength, guint8* stream, GError** error)gdk_pixdata_deserialize;
	GString* function(GdkPixdata* pixdata, gchar* name, GdkPixdataDumpType dumpType)gdk_pixdata_to_csource;
	
	// gdkpixbuf.PixbufAnimation
	
	GdkPixbufAnimation* function(char* filename, GError** error)gdk_pixbuf_animation_new_from_file;
	GdkPixbufAnimation* function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_ref;
	void function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_unref;
	int function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_width;
	int function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_height;
	GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime)gdk_pixbuf_animation_get_iter;
	gboolean function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_is_static_image;
	GdkPixbuf* function(GdkPixbufAnimation* animation)gdk_pixbuf_animation_get_static_image;
	gboolean function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime)gdk_pixbuf_animation_iter_advance;
	int function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_get_delay_time;
	gboolean function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_on_currently_loading_frame;
	GdkPixbuf* function(GdkPixbufAnimationIter* iter)gdk_pixbuf_animation_iter_get_pixbuf;
	GdkPixbufSimpleAnim* function(gint width, gint height, gfloat rate)gdk_pixbuf_simple_anim_new;
	void function(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf)gdk_pixbuf_simple_anim_add_frame;
	
	// gdkpixbuf.PixbufLoader
	
	GdkPixbufLoader* function()gdk_pixbuf_loader_new;
	GdkPixbufLoader* function(char* imageType, GError** error)gdk_pixbuf_loader_new_with_type;
	GdkPixbufLoader* function(char* mimeType, GError** error)gdk_pixbuf_loader_new_with_mime_type;
	GdkPixbufFormat* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_format;
	gboolean function(GdkPixbufLoader* loader, guchar* buf, gsize count, GError** error)gdk_pixbuf_loader_write;
	void function(GdkPixbufLoader* loader, int width, int height)gdk_pixbuf_loader_set_size;
	GdkPixbuf* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_pixbuf;
	GdkPixbufAnimation* function(GdkPixbufLoader* loader)gdk_pixbuf_loader_get_animation;
	gboolean function(GdkPixbufLoader* loader, GError** error)gdk_pixbuf_loader_close;
	
	// gdkpixbuf.PixbufFormat
	
	gboolean function(GdkPixbuf* pixbuf, gchar* key, gchar* value)gdk_pixbuf_set_option;
	GSList* function()gdk_pixbuf_get_formats;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_name;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_description;
	gchar** function(GdkPixbufFormat* format)gdk_pixbuf_format_get_mime_types;
	gchar** function(GdkPixbufFormat* format)gdk_pixbuf_format_get_extensions;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_writable;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_scalable;
	gboolean function(GdkPixbufFormat* format)gdk_pixbuf_format_is_disabled;
	void function(GdkPixbufFormat* format, gboolean disabled)gdk_pixbuf_format_set_disabled;
	gchar* function(GdkPixbufFormat* format)gdk_pixbuf_format_get_license;
	GdkPixbufFormat* function(gchar* filename, gint* width, gint* height)gdk_pixbuf_get_file_info;

	// gdk.Pixbuf
	/+
	void function(GdkPixbuf* pixbuf, GdkBitmap* bitmap, int srcX, int srcY, int destX, int destY, int width, int height, int alphaThreshold)gdk_pixbuf_render_threshold_alpha;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, GdkGC* gc, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither)gdk_pixbuf_render_to_drawable;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, int srcX, int srcY, int destX, int destY, int width, int height, GdkPixbufAlphaMode alphaMode, int alphaThreshold, GdkRgbDither dither, int xDither, int yDither)gdk_pixbuf_render_to_drawable_alpha;
	void function(GdkPixbuf* pixbuf, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)gdk_pixbuf_render_pixmap_and_mask;
	void function(GdkPixbuf* pixbuf, GdkColormap* colormap, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold)gdk_pixbuf_render_pixmap_and_mask_for_colormap;
	GdkPixbuf* function(GdkPixbuf* dest, GdkDrawable* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height)gdk_pixbuf_get_from_drawable;
	GdkPixbuf* function(GdkPixbuf* dest, GdkImage* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height)gdk_pixbuf_get_from_image;
	+/
	GType function()gdk_pixbuf_get_type;
	GdkPixbuf* function(guchar* data, GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, gpointer destroyFnData)gdk_pixbuf_new_from_data;
	GdkPixbuf* function(char** data)gdk_pixbuf_new_from_xpm_data;
	GdkPixbuf* function(gint dataLength, guint8* data, gboolean copyPixels, GError** error)gdk_pixbuf_new_from_inline;
	GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height)gdk_pixbuf_new_subpixbuf;
	GdkPixbuf* function(GdkPixbuf* pixbuf)gdk_pixbuf_copy;
	GdkColorspace function(GdkPixbuf* pixbuf)gdk_pixbuf_get_colorspace;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_n_channels;
	gboolean function(GdkPixbuf* pixbuf)gdk_pixbuf_get_has_alpha;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_bits_per_sample;
	guchar* function(GdkPixbuf* pixbuf)gdk_pixbuf_get_pixels;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_width;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_height;
	int function(GdkPixbuf* pixbuf)gdk_pixbuf_get_rowstride;
	gchar* function(GdkPixbuf* pixbuf, gchar* key)gdk_pixbuf_get_option;
	GdkPixbuf* function(char* filename, GError** error)gdk_pixbuf_new_from_file;
	GdkPixbuf* function(char* filename, int width, int height, GError** error)gdk_pixbuf_new_from_file_at_size;
	GdkPixbuf* function(char* filename, int width, int height, gboolean preserveAspectRatio, GError** error)gdk_pixbuf_new_from_file_at_scale;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_savev;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, GError** error, ... )gdk_pixbuf_save;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, GError** error, ... )gdk_pixbuf_save_to_callback;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_save_to_callbackv;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, GError** error, ... )gdk_pixbuf_save_to_buffer;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, char** optionKeys, char** optionValues, GError** error)gdk_pixbuf_save_to_bufferv;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType)gdk_pixbuf_scale_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType)gdk_pixbuf_scale;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, guint32 color1, guint32 color2)gdk_pixbuf_composite_color_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha)gdk_pixbuf_composite;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, guint32 color1, guint32 color2)gdk_pixbuf_composite_color;
	GdkPixbuf* function(GdkPixbuf* src, GdkPixbufRotation angle)gdk_pixbuf_rotate_simple;
	GdkPixbuf* function(GdkPixbuf* src, gboolean horizontal)gdk_pixbuf_flip;
	GdkPixbuf* function(GdkPixbuf* pixbuf, gboolean substituteColor, guchar r, guchar g, guchar b)gdk_pixbuf_add_alpha;
	void function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY)gdk_pixbuf_copy_area;
	void function(GdkPixbuf* src, GdkPixbuf* dest, gfloat saturation, gboolean pixelate)gdk_pixbuf_saturate_and_pixelate;
	void function(GdkPixbuf* pixbuf, guint32 pixel)gdk_pixbuf_fill;
	


}

Symbol[] gdkpixbufLinks = 
[

	{ "gdk_pixdata_from_pixbuf",  cast(void**)& gdk_pixdata_from_pixbuf},
	{ "gdk_pixbuf_from_pixdata",  cast(void**)& gdk_pixbuf_from_pixdata},
	{ "gdk_pixdata_serialize",  cast(void**)& gdk_pixdata_serialize},
	{ "gdk_pixdata_deserialize",  cast(void**)& gdk_pixdata_deserialize},
	{ "gdk_pixdata_to_csource",  cast(void**)& gdk_pixdata_to_csource},
	{ "gdk_pixbuf_animation_new_from_file",  cast(void**)& gdk_pixbuf_animation_new_from_file},
	{ "gdk_pixbuf_animation_ref",  cast(void**)& gdk_pixbuf_animation_ref},
	{ "gdk_pixbuf_animation_unref",  cast(void**)& gdk_pixbuf_animation_unref},
	{ "gdk_pixbuf_animation_get_width",  cast(void**)& gdk_pixbuf_animation_get_width},
	{ "gdk_pixbuf_animation_get_height",  cast(void**)& gdk_pixbuf_animation_get_height},
	{ "gdk_pixbuf_animation_get_iter",  cast(void**)& gdk_pixbuf_animation_get_iter},
	{ "gdk_pixbuf_animation_is_static_image",  cast(void**)& gdk_pixbuf_animation_is_static_image},
	{ "gdk_pixbuf_animation_get_static_image",  cast(void**)& gdk_pixbuf_animation_get_static_image},
	{ "gdk_pixbuf_animation_iter_advance",  cast(void**)& gdk_pixbuf_animation_iter_advance},
	{ "gdk_pixbuf_animation_iter_get_delay_time",  cast(void**)& gdk_pixbuf_animation_iter_get_delay_time},
	{ "gdk_pixbuf_animation_iter_on_currently_loading_frame",  cast(void**)& gdk_pixbuf_animation_iter_on_currently_loading_frame},
	{ "gdk_pixbuf_animation_iter_get_pixbuf",  cast(void**)& gdk_pixbuf_animation_iter_get_pixbuf},
	{ "gdk_pixbuf_simple_anim_new",  cast(void**)& gdk_pixbuf_simple_anim_new},
	{ "gdk_pixbuf_simple_anim_add_frame",  cast(void**)& gdk_pixbuf_simple_anim_add_frame},
	{ "gdk_pixbuf_loader_new",  cast(void**)& gdk_pixbuf_loader_new},
	{ "gdk_pixbuf_loader_new_with_type",  cast(void**)& gdk_pixbuf_loader_new_with_type},
	{ "gdk_pixbuf_loader_new_with_mime_type",  cast(void**)& gdk_pixbuf_loader_new_with_mime_type},
	{ "gdk_pixbuf_loader_get_format",  cast(void**)& gdk_pixbuf_loader_get_format},
	{ "gdk_pixbuf_loader_write",  cast(void**)& gdk_pixbuf_loader_write},
	{ "gdk_pixbuf_loader_set_size",  cast(void**)& gdk_pixbuf_loader_set_size},
	{ "gdk_pixbuf_loader_get_pixbuf",  cast(void**)& gdk_pixbuf_loader_get_pixbuf},
	{ "gdk_pixbuf_loader_get_animation",  cast(void**)& gdk_pixbuf_loader_get_animation},
	{ "gdk_pixbuf_loader_close",  cast(void**)& gdk_pixbuf_loader_close},
	{ "gdk_pixbuf_set_option",  cast(void**)& gdk_pixbuf_set_option},
	{ "gdk_pixbuf_get_formats",  cast(void**)& gdk_pixbuf_get_formats},
	{ "gdk_pixbuf_format_get_name",  cast(void**)& gdk_pixbuf_format_get_name},
	{ "gdk_pixbuf_format_get_description",  cast(void**)& gdk_pixbuf_format_get_description},
	{ "gdk_pixbuf_format_get_mime_types",  cast(void**)& gdk_pixbuf_format_get_mime_types},
	{ "gdk_pixbuf_format_get_extensions",  cast(void**)& gdk_pixbuf_format_get_extensions},
	{ "gdk_pixbuf_format_is_writable",  cast(void**)& gdk_pixbuf_format_is_writable},
	{ "gdk_pixbuf_format_is_scalable",  cast(void**)& gdk_pixbuf_format_is_scalable},
	{ "gdk_pixbuf_format_is_disabled",  cast(void**)& gdk_pixbuf_format_is_disabled},
	{ "gdk_pixbuf_format_set_disabled",  cast(void**)& gdk_pixbuf_format_set_disabled},
	{ "gdk_pixbuf_format_get_license",  cast(void**)& gdk_pixbuf_format_get_license},
	{ "gdk_pixbuf_get_file_info",  cast(void**)& gdk_pixbuf_get_file_info},
	
	/+
	{ "gdk_pixbuf_render_threshold_alpha",  cast(void**)& gdk_pixbuf_render_threshold_alpha},
	{ "gdk_pixbuf_render_to_drawable",  cast(void**)& gdk_pixbuf_render_to_drawable},
	{ "gdk_pixbuf_render_to_drawable_alpha",  cast(void**)& gdk_pixbuf_render_to_drawable_alpha},
	{ "gdk_pixbuf_render_pixmap_and_mask",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask},
	{ "gdk_pixbuf_render_pixmap_and_mask_for_colormap",  cast(void**)& gdk_pixbuf_render_pixmap_and_mask_for_colormap},
	{ "gdk_pixbuf_get_from_drawable",  cast(void**)& gdk_pixbuf_get_from_drawable},
	{ "gdk_pixbuf_get_from_image",  cast(void**)& gdk_pixbuf_get_from_image},
	+/
	
	{ "gdk_pixbuf_get_type",  cast(void**)& gdk_pixbuf_get_type},
	{ "gdk_pixbuf_new_from_data",  cast(void**)& gdk_pixbuf_new_from_data},
	{ "gdk_pixbuf_new_from_xpm_data",  cast(void**)& gdk_pixbuf_new_from_xpm_data},
	{ "gdk_pixbuf_new_from_inline",  cast(void**)& gdk_pixbuf_new_from_inline},
	{ "gdk_pixbuf_new_subpixbuf",  cast(void**)& gdk_pixbuf_new_subpixbuf},
	{ "gdk_pixbuf_copy",  cast(void**)& gdk_pixbuf_copy},
	{ "gdk_pixbuf_get_colorspace",  cast(void**)& gdk_pixbuf_get_colorspace},
	{ "gdk_pixbuf_get_n_channels",  cast(void**)& gdk_pixbuf_get_n_channels},
	{ "gdk_pixbuf_get_has_alpha",  cast(void**)& gdk_pixbuf_get_has_alpha},
	{ "gdk_pixbuf_get_bits_per_sample",  cast(void**)& gdk_pixbuf_get_bits_per_sample},
	{ "gdk_pixbuf_get_pixels",  cast(void**)& gdk_pixbuf_get_pixels},
	{ "gdk_pixbuf_get_width",  cast(void**)& gdk_pixbuf_get_width},
	{ "gdk_pixbuf_get_height",  cast(void**)& gdk_pixbuf_get_height},
	{ "gdk_pixbuf_get_rowstride",  cast(void**)& gdk_pixbuf_get_rowstride},
	{ "gdk_pixbuf_get_option",  cast(void**)& gdk_pixbuf_get_option},
	{ "gdk_pixbuf_new_from_file",  cast(void**)& gdk_pixbuf_new_from_file},
	{ "gdk_pixbuf_new_from_file_at_size",  cast(void**)& gdk_pixbuf_new_from_file_at_size},
	{ "gdk_pixbuf_new_from_file_at_scale",  cast(void**)& gdk_pixbuf_new_from_file_at_scale},
	{ "gdk_pixbuf_savev",  cast(void**)& gdk_pixbuf_savev},
	{ "gdk_pixbuf_save",  cast(void**)& gdk_pixbuf_save},
	{ "gdk_pixbuf_save_to_callback",  cast(void**)& gdk_pixbuf_save_to_callback},
	{ "gdk_pixbuf_save_to_callbackv",  cast(void**)& gdk_pixbuf_save_to_callbackv},
	{ "gdk_pixbuf_save_to_buffer",  cast(void**)& gdk_pixbuf_save_to_buffer},
	{ "gdk_pixbuf_save_to_bufferv",  cast(void**)& gdk_pixbuf_save_to_bufferv},
	{ "gdk_pixbuf_scale_simple",  cast(void**)& gdk_pixbuf_scale_simple},
	{ "gdk_pixbuf_scale",  cast(void**)& gdk_pixbuf_scale},
	{ "gdk_pixbuf_composite_color_simple",  cast(void**)& gdk_pixbuf_composite_color_simple},
	{ "gdk_pixbuf_composite",  cast(void**)& gdk_pixbuf_composite},
	{ "gdk_pixbuf_composite_color",  cast(void**)& gdk_pixbuf_composite_color},
	{ "gdk_pixbuf_rotate_simple",  cast(void**)& gdk_pixbuf_rotate_simple},
	{ "gdk_pixbuf_flip",  cast(void**)& gdk_pixbuf_flip},
	{ "gdk_pixbuf_add_alpha",  cast(void**)& gdk_pixbuf_add_alpha},
	{ "gdk_pixbuf_copy_area",  cast(void**)& gdk_pixbuf_copy_area},
	{ "gdk_pixbuf_saturate_and_pixelate",  cast(void**)& gdk_pixbuf_saturate_and_pixelate},
	{ "gdk_pixbuf_fill",  cast(void**)& gdk_pixbuf_fill},
	


];