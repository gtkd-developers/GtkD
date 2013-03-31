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


module gtkc.gdkpixbuf;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gdkpixbuftypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gdkpixbuf.Pixdata

	Linker.link(gdk_pixdata_from_pixbuf, \"gdk_pixdata_from_pixbuf\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_from_pixdata, \"gdk_pixbuf_from_pixdata\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_serialize, \"gdk_pixdata_serialize\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_deserialize, \"gdk_pixdata_deserialize\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixdata_to_csource, \"gdk_pixdata_to_csource\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufAnimation

	Linker.link(gdk_pixbuf_animation_new_from_file, \"gdk_pixbuf_animation_new_from_file\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_resource, \"gdk_pixbuf_animation_new_from_resource\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream, \"gdk_pixbuf_animation_new_from_stream\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream_async, \"gdk_pixbuf_animation_new_from_stream_async\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream_finish, \"gdk_pixbuf_animation_new_from_stream_finish\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_ref, \"gdk_pixbuf_animation_ref\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_unref, \"gdk_pixbuf_animation_unref\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_width, \"gdk_pixbuf_animation_get_width\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_height, \"gdk_pixbuf_animation_get_height\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_iter, \"gdk_pixbuf_animation_get_iter\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_is_static_image, \"gdk_pixbuf_animation_is_static_image\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_static_image, \"gdk_pixbuf_animation_get_static_image\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufAnimationIter

	Linker.link(gdk_pixbuf_animation_iter_advance, \"gdk_pixbuf_animation_iter_advance\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_delay_time, \"gdk_pixbuf_animation_iter_get_delay_time\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_on_currently_loading_frame, \"gdk_pixbuf_animation_iter_on_currently_loading_frame\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_pixbuf, \"gdk_pixbuf_animation_iter_get_pixbuf\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufSimpleAnimation

	Linker.link(gdk_pixbuf_simple_anim_new, \"gdk_pixbuf_simple_anim_new\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_add_frame, \"gdk_pixbuf_simple_anim_add_frame\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_set_loop, \"gdk_pixbuf_simple_anim_set_loop\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_get_loop, \"gdk_pixbuf_simple_anim_get_loop\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufLoader

	Linker.link(gdk_pixbuf_loader_new, \"gdk_pixbuf_loader_new\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_type, \"gdk_pixbuf_loader_new_with_type\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_mime_type, \"gdk_pixbuf_loader_new_with_mime_type\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_format, \"gdk_pixbuf_loader_get_format\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_write, \"gdk_pixbuf_loader_write\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_set_size, \"gdk_pixbuf_loader_set_size\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_pixbuf, \"gdk_pixbuf_loader_get_pixbuf\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_animation, \"gdk_pixbuf_loader_get_animation\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_close, \"gdk_pixbuf_loader_close\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);

	// gdkpixbuf.PixbufFormat

	Linker.link(gdk_pixbuf_set_option, \"gdk_pixbuf_set_option\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_formats, \"gdk_pixbuf_get_formats\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_copy, \"gdk_pixbuf_format_copy\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_free, \"gdk_pixbuf_format_free\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_name, \"gdk_pixbuf_format_get_name\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_description, \"gdk_pixbuf_format_get_description\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_mime_types, \"gdk_pixbuf_format_get_mime_types\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_extensions, \"gdk_pixbuf_format_get_extensions\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_writable, \"gdk_pixbuf_format_is_writable\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_scalable, \"gdk_pixbuf_format_is_scalable\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_disabled, \"gdk_pixbuf_format_is_disabled\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_set_disabled, \"gdk_pixbuf_format_set_disabled\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_license, \"gdk_pixbuf_format_get_license\", LIBRARY.GDKPIXBUF, LIBRARY.GDKPIXBUF);
}");

mixin( gshared ~"extern(C)
{
	// gdkpixbuf.Pixdata

	gpointer function(GdkPixdata* pixdata, GdkPixbuf* pixbuf, gboolean useRle) c_gdk_pixdata_from_pixbuf;
	GdkPixbuf* function(GdkPixdata* pixdata, gboolean copyPixels, GError** error) c_gdk_pixbuf_from_pixdata;
	guint8* function(GdkPixdata* pixdata, guint* streamLengthP) c_gdk_pixdata_serialize;
	gboolean function(GdkPixdata* pixdata, guint streamLength, guint8* stream, GError** error) c_gdk_pixdata_deserialize;
	GString* function(GdkPixdata* pixdata, gchar* name, GdkPixdataDumpType dumpType) c_gdk_pixdata_to_csource;

	// gdkpixbuf.PixbufAnimation

	GdkPixbufAnimation* function(char* filename, GError** error) c_gdk_pixbuf_animation_new_from_file;
	GdkPixbufAnimation* function(char* resourcePath, GError** error) c_gdk_pixbuf_animation_new_from_resource;
	GdkPixbufAnimation* function(GInputStream* stream, GCancellable* cancellable, GError** error) c_gdk_pixbuf_animation_new_from_stream;
	void function(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_animation_new_from_stream_async;
	GdkPixbufAnimation* function(GAsyncResult* asyncResult, GError** error) c_gdk_pixbuf_animation_new_from_stream_finish;
	GdkPixbufAnimation* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_ref;
	void function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_unref;
	int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_width;
	int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_height;
	GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime) c_gdk_pixbuf_animation_get_iter;
	gboolean function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_is_static_image;
	GdkPixbuf* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_static_image;

	// gdkpixbuf.PixbufAnimationIter

	gboolean function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime) c_gdk_pixbuf_animation_iter_advance;
	int function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_delay_time;
	gboolean function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_on_currently_loading_frame;
	GdkPixbuf* function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_pixbuf;

	// gdkpixbuf.PixbufSimpleAnimation

	GdkPixbufSimpleAnim* function(gint width, gint height, gfloat rate) c_gdk_pixbuf_simple_anim_new;
	void function(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf) c_gdk_pixbuf_simple_anim_add_frame;
	void function(GdkPixbufSimpleAnim* animation, gboolean loop) c_gdk_pixbuf_simple_anim_set_loop;
	gboolean function(GdkPixbufSimpleAnim* animation) c_gdk_pixbuf_simple_anim_get_loop;

	// gdkpixbuf.PixbufLoader

	GdkPixbufLoader* function() c_gdk_pixbuf_loader_new;
	GdkPixbufLoader* function(char* imageType, GError** error) c_gdk_pixbuf_loader_new_with_type;
	GdkPixbufLoader* function(char* mimeType, GError** error) c_gdk_pixbuf_loader_new_with_mime_type;
	GdkPixbufFormat* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_format;
	gboolean function(GdkPixbufLoader* loader, guchar* buf, gsize count, GError** error) c_gdk_pixbuf_loader_write;
	void function(GdkPixbufLoader* loader, int width, int height) c_gdk_pixbuf_loader_set_size;
	GdkPixbuf* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_pixbuf;
	GdkPixbufAnimation* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_animation;
	gboolean function(GdkPixbufLoader* loader, GError** error) c_gdk_pixbuf_loader_close;

	// gdkpixbuf.PixbufFormat

	gboolean function(GdkPixbuf* pixbuf, gchar* key, gchar* value) c_gdk_pixbuf_set_option;
	GSList* function() c_gdk_pixbuf_get_formats;
	GdkPixbufFormat* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_copy;
	void function(GdkPixbufFormat* format) c_gdk_pixbuf_format_free;
	gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_name;
	gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_description;
	gchar** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_mime_types;
	gchar** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_extensions;
	gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_writable;
	gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_scalable;
	gboolean function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_disabled;
	void function(GdkPixbufFormat* format, gboolean disabled) c_gdk_pixbuf_format_set_disabled;
	gchar* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_license;
}");

// gdkpixbuf.Pixdata

alias c_gdk_pixdata_from_pixbuf  gdk_pixdata_from_pixbuf;
alias c_gdk_pixbuf_from_pixdata  gdk_pixbuf_from_pixdata;
alias c_gdk_pixdata_serialize  gdk_pixdata_serialize;
alias c_gdk_pixdata_deserialize  gdk_pixdata_deserialize;
alias c_gdk_pixdata_to_csource  gdk_pixdata_to_csource;

// gdkpixbuf.PixbufAnimation

alias c_gdk_pixbuf_animation_new_from_file  gdk_pixbuf_animation_new_from_file;
alias c_gdk_pixbuf_animation_new_from_resource  gdk_pixbuf_animation_new_from_resource;
alias c_gdk_pixbuf_animation_new_from_stream  gdk_pixbuf_animation_new_from_stream;
alias c_gdk_pixbuf_animation_new_from_stream_async  gdk_pixbuf_animation_new_from_stream_async;
alias c_gdk_pixbuf_animation_new_from_stream_finish  gdk_pixbuf_animation_new_from_stream_finish;
alias c_gdk_pixbuf_animation_ref  gdk_pixbuf_animation_ref;
alias c_gdk_pixbuf_animation_unref  gdk_pixbuf_animation_unref;
alias c_gdk_pixbuf_animation_get_width  gdk_pixbuf_animation_get_width;
alias c_gdk_pixbuf_animation_get_height  gdk_pixbuf_animation_get_height;
alias c_gdk_pixbuf_animation_get_iter  gdk_pixbuf_animation_get_iter;
alias c_gdk_pixbuf_animation_is_static_image  gdk_pixbuf_animation_is_static_image;
alias c_gdk_pixbuf_animation_get_static_image  gdk_pixbuf_animation_get_static_image;

// gdkpixbuf.PixbufAnimationIter

alias c_gdk_pixbuf_animation_iter_advance  gdk_pixbuf_animation_iter_advance;
alias c_gdk_pixbuf_animation_iter_get_delay_time  gdk_pixbuf_animation_iter_get_delay_time;
alias c_gdk_pixbuf_animation_iter_on_currently_loading_frame  gdk_pixbuf_animation_iter_on_currently_loading_frame;
alias c_gdk_pixbuf_animation_iter_get_pixbuf  gdk_pixbuf_animation_iter_get_pixbuf;

// gdkpixbuf.PixbufSimpleAnimation

alias c_gdk_pixbuf_simple_anim_new  gdk_pixbuf_simple_anim_new;
alias c_gdk_pixbuf_simple_anim_add_frame  gdk_pixbuf_simple_anim_add_frame;
alias c_gdk_pixbuf_simple_anim_set_loop  gdk_pixbuf_simple_anim_set_loop;
alias c_gdk_pixbuf_simple_anim_get_loop  gdk_pixbuf_simple_anim_get_loop;

// gdkpixbuf.PixbufLoader

alias c_gdk_pixbuf_loader_new  gdk_pixbuf_loader_new;
alias c_gdk_pixbuf_loader_new_with_type  gdk_pixbuf_loader_new_with_type;
alias c_gdk_pixbuf_loader_new_with_mime_type  gdk_pixbuf_loader_new_with_mime_type;
alias c_gdk_pixbuf_loader_get_format  gdk_pixbuf_loader_get_format;
alias c_gdk_pixbuf_loader_write  gdk_pixbuf_loader_write;
alias c_gdk_pixbuf_loader_set_size  gdk_pixbuf_loader_set_size;
alias c_gdk_pixbuf_loader_get_pixbuf  gdk_pixbuf_loader_get_pixbuf;
alias c_gdk_pixbuf_loader_get_animation  gdk_pixbuf_loader_get_animation;
alias c_gdk_pixbuf_loader_close  gdk_pixbuf_loader_close;

// gdkpixbuf.PixbufFormat

alias c_gdk_pixbuf_set_option  gdk_pixbuf_set_option;
alias c_gdk_pixbuf_get_formats  gdk_pixbuf_get_formats;
alias c_gdk_pixbuf_format_copy  gdk_pixbuf_format_copy;
alias c_gdk_pixbuf_format_free  gdk_pixbuf_format_free;
alias c_gdk_pixbuf_format_get_name  gdk_pixbuf_format_get_name;
alias c_gdk_pixbuf_format_get_description  gdk_pixbuf_format_get_description;
alias c_gdk_pixbuf_format_get_mime_types  gdk_pixbuf_format_get_mime_types;
alias c_gdk_pixbuf_format_get_extensions  gdk_pixbuf_format_get_extensions;
alias c_gdk_pixbuf_format_is_writable  gdk_pixbuf_format_is_writable;
alias c_gdk_pixbuf_format_is_scalable  gdk_pixbuf_format_is_scalable;
alias c_gdk_pixbuf_format_is_disabled  gdk_pixbuf_format_is_disabled;
alias c_gdk_pixbuf_format_set_disabled  gdk_pixbuf_format_set_disabled;
alias c_gdk_pixbuf_format_get_license  gdk_pixbuf_format_get_license;
