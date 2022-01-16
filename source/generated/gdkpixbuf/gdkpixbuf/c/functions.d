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


module gdkpixbuf.c.functions;

import std.stdio;
import gdkpixbuf.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0-0.dll;gdk_pixbuf-2.0-0.dll;gdk_pixbuf-2.dll"];
else version (OSX)
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0.0.dylib"];
else
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0.so.0"];

shared static this()
{
	// gdkpixbuf.Pixbuf

	Linker.link(gdk_pixbuf_get_type, "gdk_pixbuf_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new, "gdk_pixbuf_new", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_bytes, "gdk_pixbuf_new_from_bytes", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_data, "gdk_pixbuf_new_from_data", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file, "gdk_pixbuf_new_from_file", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_scale, "gdk_pixbuf_new_from_file_at_scale", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_size, "gdk_pixbuf_new_from_file_at_size", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_inline, "gdk_pixbuf_new_from_inline", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_resource, "gdk_pixbuf_new_from_resource", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_resource_at_scale, "gdk_pixbuf_new_from_resource_at_scale", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream, "gdk_pixbuf_new_from_stream", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_at_scale, "gdk_pixbuf_new_from_stream_at_scale", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_finish, "gdk_pixbuf_new_from_stream_finish", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_xpm_data, "gdk_pixbuf_new_from_xpm_data", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_calculate_rowstride, "gdk_pixbuf_calculate_rowstride", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_file_info, "gdk_pixbuf_get_file_info", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_file_info_async, "gdk_pixbuf_get_file_info_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_file_info_finish, "gdk_pixbuf_get_file_info_finish", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_formats, "gdk_pixbuf_get_formats", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_init_modules, "gdk_pixbuf_init_modules", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_async, "gdk_pixbuf_new_from_stream_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_at_scale_async, "gdk_pixbuf_new_from_stream_at_scale_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream_finish, "gdk_pixbuf_save_to_stream_finish", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_add_alpha, "gdk_pixbuf_add_alpha", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_apply_embedded_orientation, "gdk_pixbuf_apply_embedded_orientation", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite, "gdk_pixbuf_composite", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color, "gdk_pixbuf_composite_color", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color_simple, "gdk_pixbuf_composite_color_simple", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy, "gdk_pixbuf_copy", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy_area, "gdk_pixbuf_copy_area", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy_options, "gdk_pixbuf_copy_options", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_fill, "gdk_pixbuf_fill", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_flip, "gdk_pixbuf_flip", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_bits_per_sample, "gdk_pixbuf_get_bits_per_sample", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_byte_length, "gdk_pixbuf_get_byte_length", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_colorspace, "gdk_pixbuf_get_colorspace", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_has_alpha, "gdk_pixbuf_get_has_alpha", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_height, "gdk_pixbuf_get_height", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_n_channels, "gdk_pixbuf_get_n_channels", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_option, "gdk_pixbuf_get_option", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_options, "gdk_pixbuf_get_options", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_pixels, "gdk_pixbuf_get_pixels", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_pixels_with_length, "gdk_pixbuf_get_pixels_with_length", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_rowstride, "gdk_pixbuf_get_rowstride", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_width, "gdk_pixbuf_get_width", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_subpixbuf, "gdk_pixbuf_new_subpixbuf", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_read_pixel_bytes, "gdk_pixbuf_read_pixel_bytes", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_read_pixels, "gdk_pixbuf_read_pixels", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_ref, "gdk_pixbuf_ref", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_remove_option, "gdk_pixbuf_remove_option", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_rotate_simple, "gdk_pixbuf_rotate_simple", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_saturate_and_pixelate, "gdk_pixbuf_saturate_and_pixelate", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save, "gdk_pixbuf_save", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_buffer, "gdk_pixbuf_save_to_buffer", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_bufferv, "gdk_pixbuf_save_to_bufferv", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callback, "gdk_pixbuf_save_to_callback", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callbackv, "gdk_pixbuf_save_to_callbackv", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream, "gdk_pixbuf_save_to_stream", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream_async, "gdk_pixbuf_save_to_stream_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_streamv, "gdk_pixbuf_save_to_streamv", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_streamv_async, "gdk_pixbuf_save_to_streamv_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_savev, "gdk_pixbuf_savev", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale, "gdk_pixbuf_scale", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale_simple, "gdk_pixbuf_scale_simple", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_set_option, "gdk_pixbuf_set_option", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_unref, "gdk_pixbuf_unref", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufAnimation

	Linker.link(gdk_pixbuf_animation_get_type, "gdk_pixbuf_animation_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_file, "gdk_pixbuf_animation_new_from_file", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_resource, "gdk_pixbuf_animation_new_from_resource", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream, "gdk_pixbuf_animation_new_from_stream", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream_finish, "gdk_pixbuf_animation_new_from_stream_finish", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_new_from_stream_async, "gdk_pixbuf_animation_new_from_stream_async", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_height, "gdk_pixbuf_animation_get_height", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_iter, "gdk_pixbuf_animation_get_iter", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_static_image, "gdk_pixbuf_animation_get_static_image", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_get_width, "gdk_pixbuf_animation_get_width", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_is_static_image, "gdk_pixbuf_animation_is_static_image", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_ref, "gdk_pixbuf_animation_ref", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_unref, "gdk_pixbuf_animation_unref", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufAnimationIter

	Linker.link(gdk_pixbuf_animation_iter_get_type, "gdk_pixbuf_animation_iter_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_advance, "gdk_pixbuf_animation_iter_advance", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_delay_time, "gdk_pixbuf_animation_iter_get_delay_time", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_get_pixbuf, "gdk_pixbuf_animation_iter_get_pixbuf", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_animation_iter_on_currently_loading_frame, "gdk_pixbuf_animation_iter_on_currently_loading_frame", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufFormat

	Linker.link(gdk_pixbuf_format_get_type, "gdk_pixbuf_format_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_copy, "gdk_pixbuf_format_copy", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_free, "gdk_pixbuf_format_free", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_description, "gdk_pixbuf_format_get_description", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_extensions, "gdk_pixbuf_format_get_extensions", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_license, "gdk_pixbuf_format_get_license", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_mime_types, "gdk_pixbuf_format_get_mime_types", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_get_name, "gdk_pixbuf_format_get_name", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_disabled, "gdk_pixbuf_format_is_disabled", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_save_option_supported, "gdk_pixbuf_format_is_save_option_supported", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_scalable, "gdk_pixbuf_format_is_scalable", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_is_writable, "gdk_pixbuf_format_is_writable", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_format_set_disabled, "gdk_pixbuf_format_set_disabled", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufLoader

	Linker.link(gdk_pixbuf_loader_get_type, "gdk_pixbuf_loader_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new, "gdk_pixbuf_loader_new", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_mime_type, "gdk_pixbuf_loader_new_with_mime_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_new_with_type, "gdk_pixbuf_loader_new_with_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_close, "gdk_pixbuf_loader_close", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_animation, "gdk_pixbuf_loader_get_animation", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_format, "gdk_pixbuf_loader_get_format", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_get_pixbuf, "gdk_pixbuf_loader_get_pixbuf", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_set_size, "gdk_pixbuf_loader_set_size", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_write, "gdk_pixbuf_loader_write", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_loader_write_bytes, "gdk_pixbuf_loader_write_bytes", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufNonAnim

	Linker.link(gdk_pixbuf_non_anim_get_type, "gdk_pixbuf_non_anim_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_non_anim_new, "gdk_pixbuf_non_anim_new", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufSimpleAnimation

	Linker.link(gdk_pixbuf_simple_anim_get_type, "gdk_pixbuf_simple_anim_get_type", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_new, "gdk_pixbuf_simple_anim_new", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_add_frame, "gdk_pixbuf_simple_anim_add_frame", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_get_loop, "gdk_pixbuf_simple_anim_get_loop", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixbuf_simple_anim_set_loop, "gdk_pixbuf_simple_anim_set_loop", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.PixbufSimpleAnimationIter

	Linker.link(gdk_pixbuf_simple_anim_iter_get_type, "gdk_pixbuf_simple_anim_iter_get_type", LIBRARY_GDKPIXBUF);

	// gdkpixbuf.Pixdata

	Linker.link(gdk_pixdata_deserialize, "gdk_pixdata_deserialize", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixdata_from_pixbuf, "gdk_pixdata_from_pixbuf", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixdata_serialize, "gdk_pixdata_serialize", LIBRARY_GDKPIXBUF);
	Linker.link(gdk_pixdata_to_csource, "gdk_pixdata_to_csource", LIBRARY_GDKPIXBUF);
}

__gshared extern(C)
{

	// gdkpixbuf.Pixbuf

	GType function() c_gdk_pixbuf_get_type;
	GdkPixbuf* function(GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height) c_gdk_pixbuf_new;
	GdkPixbuf* function(GBytes* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride) c_gdk_pixbuf_new_from_bytes;
	GdkPixbuf* function(char* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData) c_gdk_pixbuf_new_from_data;
	GdkPixbuf* function(char* filename, GError** err) c_gdk_pixbuf_new_from_file;
	GdkPixbuf* function(char* filename, int width, int height, int preserveAspectRatio, GError** err) c_gdk_pixbuf_new_from_file_at_scale;
	GdkPixbuf* function(char* filename, int width, int height, GError** err) c_gdk_pixbuf_new_from_file_at_size;
	GdkPixbuf* function(int dataLength, ubyte* data, int copyPixels, GError** err) c_gdk_pixbuf_new_from_inline;
	GdkPixbuf* function(const(char)* resourcePath, GError** err) c_gdk_pixbuf_new_from_resource;
	GdkPixbuf* function(const(char)* resourcePath, int width, int height, int preserveAspectRatio, GError** err) c_gdk_pixbuf_new_from_resource_at_scale;
	GdkPixbuf* function(GInputStream* stream, GCancellable* cancellable, GError** err) c_gdk_pixbuf_new_from_stream;
	GdkPixbuf* function(GInputStream* stream, int width, int height, int preserveAspectRatio, GCancellable* cancellable, GError** err) c_gdk_pixbuf_new_from_stream_at_scale;
	GdkPixbuf* function(GAsyncResult* asyncResult, GError** err) c_gdk_pixbuf_new_from_stream_finish;
	GdkPixbuf* function(char** data) c_gdk_pixbuf_new_from_xpm_data;
	int function(GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height) c_gdk_pixbuf_calculate_rowstride;
	GdkPixbufFormat* function(char* filename, int* width, int* height) c_gdk_pixbuf_get_file_info;
	void function(char* filename, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_get_file_info_async;
	GdkPixbufFormat* function(GAsyncResult* asyncResult, int* width, int* height, GError** err) c_gdk_pixbuf_get_file_info_finish;
	GSList* function() c_gdk_pixbuf_get_formats;
	int function(const(char)* path, GError** err) c_gdk_pixbuf_init_modules;
	void function(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_new_from_stream_async;
	void function(GInputStream* stream, int width, int height, int preserveAspectRatio, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_new_from_stream_at_scale_async;
	int function(GAsyncResult* asyncResult, GError** err) c_gdk_pixbuf_save_to_stream_finish;
	GdkPixbuf* function(GdkPixbuf* pixbuf, int substituteColor, char r, char g, char b) c_gdk_pixbuf_add_alpha;
	GdkPixbuf* function(GdkPixbuf* src) c_gdk_pixbuf_apply_embedded_orientation;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha) c_gdk_pixbuf_composite;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, uint color1, uint color2) c_gdk_pixbuf_composite_color;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, uint color1, uint color2) c_gdk_pixbuf_composite_color_simple;
	GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_copy;
	void function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY) c_gdk_pixbuf_copy_area;
	int function(GdkPixbuf* srcPixbuf, GdkPixbuf* destPixbuf) c_gdk_pixbuf_copy_options;
	void function(GdkPixbuf* pixbuf, uint pixel) c_gdk_pixbuf_fill;
	GdkPixbuf* function(GdkPixbuf* src, int horizontal) c_gdk_pixbuf_flip;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_bits_per_sample;
	size_t function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_byte_length;
	GdkColorspace function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_colorspace;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_has_alpha;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_height;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_n_channels;
	const(char)* function(GdkPixbuf* pixbuf, const(char)* key) c_gdk_pixbuf_get_option;
	GHashTable* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_options;
	char* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_pixels;
	char* function(GdkPixbuf* pixbuf, uint* length) c_gdk_pixbuf_get_pixels_with_length;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_rowstride;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_width;
	GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height) c_gdk_pixbuf_new_subpixbuf;
	GBytes* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_read_pixel_bytes;
	ubyte* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_read_pixels;
	GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_ref;
	int function(GdkPixbuf* pixbuf, const(char)* key) c_gdk_pixbuf_remove_option;
	GdkPixbuf* function(GdkPixbuf* src, GdkPixbufRotation angle) c_gdk_pixbuf_rotate_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, float saturation, int pixelate) c_gdk_pixbuf_saturate_and_pixelate;
	int function(GdkPixbuf* pixbuf, char* filename, const(char)* type, GError** error, ... ) c_gdk_pixbuf_save;
	int function(GdkPixbuf* pixbuf, char** buffer, size_t* bufferSize, const(char)* type, GError** error, ... ) c_gdk_pixbuf_save_to_buffer;
	int function(GdkPixbuf* pixbuf, char** buffer, size_t* bufferSize, const(char)* type, char** optionKeys, char** optionValues, GError** err) c_gdk_pixbuf_save_to_bufferv;
	int function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, const(char)* type, GError** error, ... ) c_gdk_pixbuf_save_to_callback;
	int function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, const(char)* type, char** optionKeys, char** optionValues, GError** err) c_gdk_pixbuf_save_to_callbackv;
	int function(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, GCancellable* cancellable, GError** error, ... ) c_gdk_pixbuf_save_to_stream;
	void function(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... ) c_gdk_pixbuf_save_to_stream_async;
	int function(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, char** optionKeys, char** optionValues, GCancellable* cancellable, GError** err) c_gdk_pixbuf_save_to_streamv;
	void function(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, char** optionKeys, char** optionValues, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_save_to_streamv_async;
	int function(GdkPixbuf* pixbuf, char* filename, const(char)* type, char** optionKeys, char** optionValues, GError** err) c_gdk_pixbuf_savev;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType) c_gdk_pixbuf_scale;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType) c_gdk_pixbuf_scale_simple;
	int function(GdkPixbuf* pixbuf, const(char)* key, const(char)* value) c_gdk_pixbuf_set_option;
	void function(GdkPixbuf* pixbuf) c_gdk_pixbuf_unref;

	// gdkpixbuf.PixbufAnimation

	GType function() c_gdk_pixbuf_animation_get_type;
	GdkPixbufAnimation* function(char* filename, GError** err) c_gdk_pixbuf_animation_new_from_file;
	GdkPixbufAnimation* function(const(char)* resourcePath, GError** err) c_gdk_pixbuf_animation_new_from_resource;
	GdkPixbufAnimation* function(GInputStream* stream, GCancellable* cancellable, GError** err) c_gdk_pixbuf_animation_new_from_stream;
	GdkPixbufAnimation* function(GAsyncResult* asyncResult, GError** err) c_gdk_pixbuf_animation_new_from_stream_finish;
	void function(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_animation_new_from_stream_async;
	int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_height;
	GdkPixbufAnimationIter* function(GdkPixbufAnimation* animation, GTimeVal* startTime) c_gdk_pixbuf_animation_get_iter;
	GdkPixbuf* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_static_image;
	int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_get_width;
	int function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_is_static_image;
	GdkPixbufAnimation* function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_ref;
	void function(GdkPixbufAnimation* animation) c_gdk_pixbuf_animation_unref;

	// gdkpixbuf.PixbufAnimationIter

	GType function() c_gdk_pixbuf_animation_iter_get_type;
	int function(GdkPixbufAnimationIter* iter, GTimeVal* currentTime) c_gdk_pixbuf_animation_iter_advance;
	int function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_delay_time;
	GdkPixbuf* function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_get_pixbuf;
	int function(GdkPixbufAnimationIter* iter) c_gdk_pixbuf_animation_iter_on_currently_loading_frame;

	// gdkpixbuf.PixbufFormat

	GType function() c_gdk_pixbuf_format_get_type;
	GdkPixbufFormat* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_copy;
	void function(GdkPixbufFormat* format) c_gdk_pixbuf_format_free;
	char* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_description;
	char** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_extensions;
	char* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_license;
	char** function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_mime_types;
	char* function(GdkPixbufFormat* format) c_gdk_pixbuf_format_get_name;
	int function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_disabled;
	int function(GdkPixbufFormat* format, const(char)* optionKey) c_gdk_pixbuf_format_is_save_option_supported;
	int function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_scalable;
	int function(GdkPixbufFormat* format) c_gdk_pixbuf_format_is_writable;
	void function(GdkPixbufFormat* format, int disabled) c_gdk_pixbuf_format_set_disabled;

	// gdkpixbuf.PixbufLoader

	GType function() c_gdk_pixbuf_loader_get_type;
	GdkPixbufLoader* function() c_gdk_pixbuf_loader_new;
	GdkPixbufLoader* function(const(char)* mimeType, GError** err) c_gdk_pixbuf_loader_new_with_mime_type;
	GdkPixbufLoader* function(const(char)* imageType, GError** err) c_gdk_pixbuf_loader_new_with_type;
	int function(GdkPixbufLoader* loader, GError** err) c_gdk_pixbuf_loader_close;
	GdkPixbufAnimation* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_animation;
	GdkPixbufFormat* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_format;
	GdkPixbuf* function(GdkPixbufLoader* loader) c_gdk_pixbuf_loader_get_pixbuf;
	void function(GdkPixbufLoader* loader, int width, int height) c_gdk_pixbuf_loader_set_size;
	int function(GdkPixbufLoader* loader, char* buf, size_t count, GError** err) c_gdk_pixbuf_loader_write;
	int function(GdkPixbufLoader* loader, GBytes* buffer, GError** err) c_gdk_pixbuf_loader_write_bytes;

	// gdkpixbuf.PixbufNonAnim

	GType function() c_gdk_pixbuf_non_anim_get_type;
	GdkPixbufAnimation* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_non_anim_new;

	// gdkpixbuf.PixbufSimpleAnimation

	GType function() c_gdk_pixbuf_simple_anim_get_type;
	GdkPixbufSimpleAnim* function(int width, int height, float rate) c_gdk_pixbuf_simple_anim_new;
	void function(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf) c_gdk_pixbuf_simple_anim_add_frame;
	int function(GdkPixbufSimpleAnim* animation) c_gdk_pixbuf_simple_anim_get_loop;
	void function(GdkPixbufSimpleAnim* animation, int loop) c_gdk_pixbuf_simple_anim_set_loop;

	// gdkpixbuf.PixbufSimpleAnimationIter

	GType function() c_gdk_pixbuf_simple_anim_iter_get_type;

	// gdkpixbuf.Pixdata

	int function(GdkPixdata* pixdata, uint streamLength, ubyte* stream, GError** err) c_gdk_pixdata_deserialize;
	void* function(GdkPixdata* pixdata, GdkPixbuf* pixbuf, int useRle) c_gdk_pixdata_from_pixbuf;
	ubyte* function(GdkPixdata* pixdata, uint* streamLengthP) c_gdk_pixdata_serialize;
	GString* function(GdkPixdata* pixdata, const(char)* name, GdkPixdataDumpType dumpType) c_gdk_pixdata_to_csource;
}


// gdkpixbuf.Pixbuf

alias c_gdk_pixbuf_get_type gdk_pixbuf_get_type;
alias c_gdk_pixbuf_new gdk_pixbuf_new;
alias c_gdk_pixbuf_new_from_bytes gdk_pixbuf_new_from_bytes;
alias c_gdk_pixbuf_new_from_data gdk_pixbuf_new_from_data;
alias c_gdk_pixbuf_new_from_file gdk_pixbuf_new_from_file;
alias c_gdk_pixbuf_new_from_file_at_scale gdk_pixbuf_new_from_file_at_scale;
alias c_gdk_pixbuf_new_from_file_at_size gdk_pixbuf_new_from_file_at_size;
alias c_gdk_pixbuf_new_from_inline gdk_pixbuf_new_from_inline;
alias c_gdk_pixbuf_new_from_resource gdk_pixbuf_new_from_resource;
alias c_gdk_pixbuf_new_from_resource_at_scale gdk_pixbuf_new_from_resource_at_scale;
alias c_gdk_pixbuf_new_from_stream gdk_pixbuf_new_from_stream;
alias c_gdk_pixbuf_new_from_stream_at_scale gdk_pixbuf_new_from_stream_at_scale;
alias c_gdk_pixbuf_new_from_stream_finish gdk_pixbuf_new_from_stream_finish;
alias c_gdk_pixbuf_new_from_xpm_data gdk_pixbuf_new_from_xpm_data;
alias c_gdk_pixbuf_calculate_rowstride gdk_pixbuf_calculate_rowstride;
alias c_gdk_pixbuf_get_file_info gdk_pixbuf_get_file_info;
alias c_gdk_pixbuf_get_file_info_async gdk_pixbuf_get_file_info_async;
alias c_gdk_pixbuf_get_file_info_finish gdk_pixbuf_get_file_info_finish;
alias c_gdk_pixbuf_get_formats gdk_pixbuf_get_formats;
alias c_gdk_pixbuf_init_modules gdk_pixbuf_init_modules;
alias c_gdk_pixbuf_new_from_stream_async gdk_pixbuf_new_from_stream_async;
alias c_gdk_pixbuf_new_from_stream_at_scale_async gdk_pixbuf_new_from_stream_at_scale_async;
alias c_gdk_pixbuf_save_to_stream_finish gdk_pixbuf_save_to_stream_finish;
alias c_gdk_pixbuf_add_alpha gdk_pixbuf_add_alpha;
alias c_gdk_pixbuf_apply_embedded_orientation gdk_pixbuf_apply_embedded_orientation;
alias c_gdk_pixbuf_composite gdk_pixbuf_composite;
alias c_gdk_pixbuf_composite_color gdk_pixbuf_composite_color;
alias c_gdk_pixbuf_composite_color_simple gdk_pixbuf_composite_color_simple;
alias c_gdk_pixbuf_copy gdk_pixbuf_copy;
alias c_gdk_pixbuf_copy_area gdk_pixbuf_copy_area;
alias c_gdk_pixbuf_copy_options gdk_pixbuf_copy_options;
alias c_gdk_pixbuf_fill gdk_pixbuf_fill;
alias c_gdk_pixbuf_flip gdk_pixbuf_flip;
alias c_gdk_pixbuf_get_bits_per_sample gdk_pixbuf_get_bits_per_sample;
alias c_gdk_pixbuf_get_byte_length gdk_pixbuf_get_byte_length;
alias c_gdk_pixbuf_get_colorspace gdk_pixbuf_get_colorspace;
alias c_gdk_pixbuf_get_has_alpha gdk_pixbuf_get_has_alpha;
alias c_gdk_pixbuf_get_height gdk_pixbuf_get_height;
alias c_gdk_pixbuf_get_n_channels gdk_pixbuf_get_n_channels;
alias c_gdk_pixbuf_get_option gdk_pixbuf_get_option;
alias c_gdk_pixbuf_get_options gdk_pixbuf_get_options;
alias c_gdk_pixbuf_get_pixels gdk_pixbuf_get_pixels;
alias c_gdk_pixbuf_get_pixels_with_length gdk_pixbuf_get_pixels_with_length;
alias c_gdk_pixbuf_get_rowstride gdk_pixbuf_get_rowstride;
alias c_gdk_pixbuf_get_width gdk_pixbuf_get_width;
alias c_gdk_pixbuf_new_subpixbuf gdk_pixbuf_new_subpixbuf;
alias c_gdk_pixbuf_read_pixel_bytes gdk_pixbuf_read_pixel_bytes;
alias c_gdk_pixbuf_read_pixels gdk_pixbuf_read_pixels;
alias c_gdk_pixbuf_ref gdk_pixbuf_ref;
alias c_gdk_pixbuf_remove_option gdk_pixbuf_remove_option;
alias c_gdk_pixbuf_rotate_simple gdk_pixbuf_rotate_simple;
alias c_gdk_pixbuf_saturate_and_pixelate gdk_pixbuf_saturate_and_pixelate;
alias c_gdk_pixbuf_save gdk_pixbuf_save;
alias c_gdk_pixbuf_save_to_buffer gdk_pixbuf_save_to_buffer;
alias c_gdk_pixbuf_save_to_bufferv gdk_pixbuf_save_to_bufferv;
alias c_gdk_pixbuf_save_to_callback gdk_pixbuf_save_to_callback;
alias c_gdk_pixbuf_save_to_callbackv gdk_pixbuf_save_to_callbackv;
alias c_gdk_pixbuf_save_to_stream gdk_pixbuf_save_to_stream;
alias c_gdk_pixbuf_save_to_stream_async gdk_pixbuf_save_to_stream_async;
alias c_gdk_pixbuf_save_to_streamv gdk_pixbuf_save_to_streamv;
alias c_gdk_pixbuf_save_to_streamv_async gdk_pixbuf_save_to_streamv_async;
alias c_gdk_pixbuf_savev gdk_pixbuf_savev;
alias c_gdk_pixbuf_scale gdk_pixbuf_scale;
alias c_gdk_pixbuf_scale_simple gdk_pixbuf_scale_simple;
alias c_gdk_pixbuf_set_option gdk_pixbuf_set_option;
alias c_gdk_pixbuf_unref gdk_pixbuf_unref;

// gdkpixbuf.PixbufAnimation

alias c_gdk_pixbuf_animation_get_type gdk_pixbuf_animation_get_type;
alias c_gdk_pixbuf_animation_new_from_file gdk_pixbuf_animation_new_from_file;
alias c_gdk_pixbuf_animation_new_from_resource gdk_pixbuf_animation_new_from_resource;
alias c_gdk_pixbuf_animation_new_from_stream gdk_pixbuf_animation_new_from_stream;
alias c_gdk_pixbuf_animation_new_from_stream_finish gdk_pixbuf_animation_new_from_stream_finish;
alias c_gdk_pixbuf_animation_new_from_stream_async gdk_pixbuf_animation_new_from_stream_async;
alias c_gdk_pixbuf_animation_get_height gdk_pixbuf_animation_get_height;
alias c_gdk_pixbuf_animation_get_iter gdk_pixbuf_animation_get_iter;
alias c_gdk_pixbuf_animation_get_static_image gdk_pixbuf_animation_get_static_image;
alias c_gdk_pixbuf_animation_get_width gdk_pixbuf_animation_get_width;
alias c_gdk_pixbuf_animation_is_static_image gdk_pixbuf_animation_is_static_image;
alias c_gdk_pixbuf_animation_ref gdk_pixbuf_animation_ref;
alias c_gdk_pixbuf_animation_unref gdk_pixbuf_animation_unref;

// gdkpixbuf.PixbufAnimationIter

alias c_gdk_pixbuf_animation_iter_get_type gdk_pixbuf_animation_iter_get_type;
alias c_gdk_pixbuf_animation_iter_advance gdk_pixbuf_animation_iter_advance;
alias c_gdk_pixbuf_animation_iter_get_delay_time gdk_pixbuf_animation_iter_get_delay_time;
alias c_gdk_pixbuf_animation_iter_get_pixbuf gdk_pixbuf_animation_iter_get_pixbuf;
alias c_gdk_pixbuf_animation_iter_on_currently_loading_frame gdk_pixbuf_animation_iter_on_currently_loading_frame;

// gdkpixbuf.PixbufFormat

alias c_gdk_pixbuf_format_get_type gdk_pixbuf_format_get_type;
alias c_gdk_pixbuf_format_copy gdk_pixbuf_format_copy;
alias c_gdk_pixbuf_format_free gdk_pixbuf_format_free;
alias c_gdk_pixbuf_format_get_description gdk_pixbuf_format_get_description;
alias c_gdk_pixbuf_format_get_extensions gdk_pixbuf_format_get_extensions;
alias c_gdk_pixbuf_format_get_license gdk_pixbuf_format_get_license;
alias c_gdk_pixbuf_format_get_mime_types gdk_pixbuf_format_get_mime_types;
alias c_gdk_pixbuf_format_get_name gdk_pixbuf_format_get_name;
alias c_gdk_pixbuf_format_is_disabled gdk_pixbuf_format_is_disabled;
alias c_gdk_pixbuf_format_is_save_option_supported gdk_pixbuf_format_is_save_option_supported;
alias c_gdk_pixbuf_format_is_scalable gdk_pixbuf_format_is_scalable;
alias c_gdk_pixbuf_format_is_writable gdk_pixbuf_format_is_writable;
alias c_gdk_pixbuf_format_set_disabled gdk_pixbuf_format_set_disabled;

// gdkpixbuf.PixbufLoader

alias c_gdk_pixbuf_loader_get_type gdk_pixbuf_loader_get_type;
alias c_gdk_pixbuf_loader_new gdk_pixbuf_loader_new;
alias c_gdk_pixbuf_loader_new_with_mime_type gdk_pixbuf_loader_new_with_mime_type;
alias c_gdk_pixbuf_loader_new_with_type gdk_pixbuf_loader_new_with_type;
alias c_gdk_pixbuf_loader_close gdk_pixbuf_loader_close;
alias c_gdk_pixbuf_loader_get_animation gdk_pixbuf_loader_get_animation;
alias c_gdk_pixbuf_loader_get_format gdk_pixbuf_loader_get_format;
alias c_gdk_pixbuf_loader_get_pixbuf gdk_pixbuf_loader_get_pixbuf;
alias c_gdk_pixbuf_loader_set_size gdk_pixbuf_loader_set_size;
alias c_gdk_pixbuf_loader_write gdk_pixbuf_loader_write;
alias c_gdk_pixbuf_loader_write_bytes gdk_pixbuf_loader_write_bytes;

// gdkpixbuf.PixbufNonAnim

alias c_gdk_pixbuf_non_anim_get_type gdk_pixbuf_non_anim_get_type;
alias c_gdk_pixbuf_non_anim_new gdk_pixbuf_non_anim_new;

// gdkpixbuf.PixbufSimpleAnimation

alias c_gdk_pixbuf_simple_anim_get_type gdk_pixbuf_simple_anim_get_type;
alias c_gdk_pixbuf_simple_anim_new gdk_pixbuf_simple_anim_new;
alias c_gdk_pixbuf_simple_anim_add_frame gdk_pixbuf_simple_anim_add_frame;
alias c_gdk_pixbuf_simple_anim_get_loop gdk_pixbuf_simple_anim_get_loop;
alias c_gdk_pixbuf_simple_anim_set_loop gdk_pixbuf_simple_anim_set_loop;

// gdkpixbuf.PixbufSimpleAnimationIter

alias c_gdk_pixbuf_simple_anim_iter_get_type gdk_pixbuf_simple_anim_iter_get_type;

// gdkpixbuf.Pixdata

alias c_gdk_pixdata_deserialize gdk_pixdata_deserialize;
alias c_gdk_pixdata_from_pixbuf gdk_pixdata_from_pixbuf;
alias c_gdk_pixdata_serialize gdk_pixdata_serialize;
alias c_gdk_pixdata_to_csource gdk_pixdata_to_csource;
