/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gtkc.gdkpixbuf;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gdkpixbuftypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gdkpixbuf.Pixdata

	Linker.link(gdk_pixdata_from_pixbuf, "gdk_pixdata_from_pixbuf", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_from_pixdata, "gdk_pixbuf_from_pixdata", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_serialize, "gdk_pixdata_serialize", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_deserialize, "gdk_pixdata_deserialize", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_to_csource, "gdk_pixdata_to_csource", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufAnimation

	Linker.link(gdk_pixbuf_animation_new_from_file, "gdk_pixbuf_animation_new_from_file", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_ref, "gdk_pixbuf_animation_ref", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_unref, "gdk_pixbuf_animation_unref", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_width, "gdk_pixbuf_animation_get_width", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_height, "gdk_pixbuf_animation_get_height", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_iter, "gdk_pixbuf_animation_get_iter", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_is_static_image, "gdk_pixbuf_animation_is_static_image", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_static_image, "gdk_pixbuf_animation_get_static_image", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufAnimationIter

	Linker.link(gdk_pixbuf_animation_iter_advance, "gdk_pixbuf_animation_iter_advance", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_delay_time, "gdk_pixbuf_animation_iter_get_delay_time", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_on_currently_loading_frame, "gdk_pixbuf_animation_iter_on_currently_loading_frame", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_pixbuf, "gdk_pixbuf_animation_iter_get_pixbuf", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufSimpleAnimation

	Linker.link(gdk_pixbuf_simple_anim_new, "gdk_pixbuf_simple_anim_new", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_add_frame, "gdk_pixbuf_simple_anim_add_frame", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufLoader

	Linker.link(gdk_pixbuf_loader_new, "gdk_pixbuf_loader_new", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_type, "gdk_pixbuf_loader_new_with_type", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_mime_type, "gdk_pixbuf_loader_new_with_mime_type", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_format, "gdk_pixbuf_loader_get_format", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_write, "gdk_pixbuf_loader_write", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_set_size, "gdk_pixbuf_loader_set_size", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_pixbuf, "gdk_pixbuf_loader_get_pixbuf", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_animation, "gdk_pixbuf_loader_get_animation", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_close, "gdk_pixbuf_loader_close", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufFormat

	Linker.link(gdk_pixbuf_set_option, "gdk_pixbuf_set_option", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_formats, "gdk_pixbuf_get_formats", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_name, "gdk_pixbuf_format_get_name", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_description, "gdk_pixbuf_format_get_description", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_mime_types, "gdk_pixbuf_format_get_mime_types", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_extensions, "gdk_pixbuf_format_get_extensions", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_writable, "gdk_pixbuf_format_is_writable", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_scalable, "gdk_pixbuf_format_is_scalable", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_disabled, "gdk_pixbuf_format_is_disabled", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_set_disabled, "gdk_pixbuf_format_set_disabled", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_license, "gdk_pixbuf_format_get_license", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_file_info, "gdk_pixbuf_get_file_info", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
}

extern(C)
{
	
	// gdkpixbuf.Pixdata
	
	typedef gpointer function(GdkPixdata* pixdata, GdkPixbuf* pixbuf, gboolean useRle) c_gdk_pixdata_from_pixbuf;
	typedef GdkPixbuf* function(GdkPixdata* pixdata, gboolean copyPixels, GError** error) c_gdk_pixbuf_from_pixdata;
	typedef guint8* function(GdkPixdata* pixdata, guint* streamLengthP) c_gdk_pixdata_serialize;
	typedef gboolean function(GdkPixdata* pixdata, guint streamLength, guint8* stream, GError** error) c_gdk_pixdata_deserialize;
	typedef GString* function(GdkPixdata* pixdata, gchar* name, GdkPixdataDumpType dumpType) c_gdk_pixdata_to_csource;
	
	// gdkpixbuf.PixbufAnimation
	
	typedef GdkPixbufAnimation* function(char* filename, GError** error) c_gdk_pixbuf_animation_new_from_file;
	typedef GdkPixbufAnimation* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_ref;
	typedef void function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_unref;
	typedef int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_width;
	typedef int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_height;
	typedef GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime) c_gdk_pixbuf_animation_get_iter;
	typedef gboolean function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_is_static_image;
	typedef GdkPixbuf* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_static_image;
	
	// gdkpixbuf.PixbufAnimationIter
	
	typedef gboolean function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime) c_gdk_pixbuf_animation_iter_advance;
	typedef int function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_delay_time;
	typedef gboolean function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_on_currently_loading_frame;
	typedef GdkPixbuf* function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_pixbuf;
	
	// gdkpixbuf.PixbufSimpleAnimation
	
	typedef GdkPixbufSimpleAnim* function(gint width, gint height, gfloat rate) c_gdk_pixbuf_simple_anim_new;
	typedef void function(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf) c_gdk_pixbuf_simple_anim_add_frame;
	
	// gdkpixbuf.PixbufLoader
	
	typedef GdkPixbufLoader* function() c_gdk_pixbuf_loader_new;
	typedef GdkPixbufLoader* function(char* imageType, GError** error) c_gdk_pixbuf_loader_new_with_type;
	typedef GdkPixbufLoader* function(char* mimeType, GError** error) c_gdk_pixbuf_loader_new_with_mime_type;
	typedef GdkPixbufFormat* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_format;
	typedef gboolean function(GdkPixbufLoader* loader, guchar* buf, gsize count, GError** error) c_gdk_pixbuf_loader_write;
	typedef void function(GdkPixbufLoader* loader, int width, int height) c_gdk_pixbuf_loader_set_size;
	typedef GdkPixbuf* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_pixbuf;
	typedef GdkPixbufAnimation* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_animation;
	typedef gboolean function(GdkPixbufLoader* loader, GError** error) c_gdk_pixbuf_loader_close;
	
	// gdkpixbuf.PixbufFormat
	
	typedef gboolean function(GdkPixbuf* pixbuf, gchar* key, gchar* value) c_gdk_pixbuf_set_option;
	typedef GSList* function() c_gdk_pixbuf_get_formats;
	typedef gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_name;
	typedef gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_description;
	typedef gchar** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_mime_types;
	typedef gchar** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_extensions;
	typedef gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_writable;
	typedef gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_scalable;
	typedef gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_disabled;
	typedef void function(GdkPixbufFormat* format, gboolean disabled) c_gdk_pixbuf_format_set_disabled;
	typedef gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_license;
	typedef GdkPixbufFormat* function(gchar* filename, gint* width, gint* height) c_gdk_pixbuf_get_file_info;
}

// gdkpixbuf.Pixdata

c_gdk_pixdata_from_pixbuf  gdk_pixdata_from_pixbuf;
c_gdk_pixbuf_from_pixdata  gdk_pixbuf_from_pixdata;
c_gdk_pixdata_serialize  gdk_pixdata_serialize;
c_gdk_pixdata_deserialize  gdk_pixdata_deserialize;
c_gdk_pixdata_to_csource  gdk_pixdata_to_csource;

// gdkpixbuf.PixbufAnimation

c_gdk_pixbuf_animation_new_from_file  gdk_pixbuf_animation_new_from_file;
c_gdk_pixbuf_animation_ref  gdk_pixbuf_animation_ref;
c_gdk_pixbuf_animation_unref  gdk_pixbuf_animation_unref;
c_gdk_pixbuf_animation_get_width  gdk_pixbuf_animation_get_width;
c_gdk_pixbuf_animation_get_height  gdk_pixbuf_animation_get_height;
c_gdk_pixbuf_animation_get_iter  gdk_pixbuf_animation_get_iter;
c_gdk_pixbuf_animation_is_static_image  gdk_pixbuf_animation_is_static_image;
c_gdk_pixbuf_animation_get_static_image  gdk_pixbuf_animation_get_static_image;

// gdkpixbuf.PixbufAnimationIter

c_gdk_pixbuf_animation_iter_advance  gdk_pixbuf_animation_iter_advance;
c_gdk_pixbuf_animation_iter_get_delay_time  gdk_pixbuf_animation_iter_get_delay_time;
c_gdk_pixbuf_animation_iter_on_currently_loading_frame  gdk_pixbuf_animation_iter_on_currently_loading_frame;
c_gdk_pixbuf_animation_iter_get_pixbuf  gdk_pixbuf_animation_iter_get_pixbuf;

// gdkpixbuf.PixbufSimpleAnimation

c_gdk_pixbuf_simple_anim_new  gdk_pixbuf_simple_anim_new;
c_gdk_pixbuf_simple_anim_add_frame  gdk_pixbuf_simple_anim_add_frame;

// gdkpixbuf.PixbufLoader

c_gdk_pixbuf_loader_new  gdk_pixbuf_loader_new;
c_gdk_pixbuf_loader_new_with_type  gdk_pixbuf_loader_new_with_type;
c_gdk_pixbuf_loader_new_with_mime_type  gdk_pixbuf_loader_new_with_mime_type;
c_gdk_pixbuf_loader_get_format  gdk_pixbuf_loader_get_format;
c_gdk_pixbuf_loader_write  gdk_pixbuf_loader_write;
c_gdk_pixbuf_loader_set_size  gdk_pixbuf_loader_set_size;
c_gdk_pixbuf_loader_get_pixbuf  gdk_pixbuf_loader_get_pixbuf;
c_gdk_pixbuf_loader_get_animation  gdk_pixbuf_loader_get_animation;
c_gdk_pixbuf_loader_close  gdk_pixbuf_loader_close;

// gdkpixbuf.PixbufFormat

c_gdk_pixbuf_set_option  gdk_pixbuf_set_option;
c_gdk_pixbuf_get_formats  gdk_pixbuf_get_formats;
c_gdk_pixbuf_format_get_name  gdk_pixbuf_format_get_name;
c_gdk_pixbuf_format_get_description  gdk_pixbuf_format_get_description;
c_gdk_pixbuf_format_get_mime_types  gdk_pixbuf_format_get_mime_types;
c_gdk_pixbuf_format_get_extensions  gdk_pixbuf_format_get_extensions;
c_gdk_pixbuf_format_is_writable  gdk_pixbuf_format_is_writable;
c_gdk_pixbuf_format_is_scalable  gdk_pixbuf_format_is_scalable;
c_gdk_pixbuf_format_is_disabled  gdk_pixbuf_format_is_disabled;
c_gdk_pixbuf_format_set_disabled  gdk_pixbuf_format_set_disabled;
c_gdk_pixbuf_format_get_license  gdk_pixbuf_format_get_license;
c_gdk_pixbuf_get_file_info  gdk_pixbuf_get_file_info;
