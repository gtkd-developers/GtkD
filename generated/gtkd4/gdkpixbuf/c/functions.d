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
version (Windows)
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0-0.dll;gdk_pixbuf-2.0-0.dll;gdk_pixbuf-2.dll"];
else version (OSX)
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0.0.dylib"];
else
	static immutable LIBRARY_GDKPIXBUF = ["libgdk_pixbuf-2.0.so.0"];

__gshared extern(C)
{

	// gdkpixbuf.Pixbuf

	GType gdk_pixbuf_get_type();
	GdkPixbuf* gdk_pixbuf_new(GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height);
	GdkPixbuf* gdk_pixbuf_new_from_bytes(GBytes* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride);
	GdkPixbuf* gdk_pixbuf_new_from_data(char* data, GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData);
	GdkPixbuf* gdk_pixbuf_new_from_file(char* filename, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_file_at_scale(char* filename, int width, int height, int preserveAspectRatio, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_file_at_size(char* filename, int width, int height, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_inline(int dataLength, ubyte* data, int copyPixels, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_resource(const(char)* resourcePath, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_resource_at_scale(const(char)* resourcePath, int width, int height, int preserveAspectRatio, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_stream(GInputStream* stream, GCancellable* cancellable, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_stream_at_scale(GInputStream* stream, int width, int height, int preserveAspectRatio, GCancellable* cancellable, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_stream_finish(GAsyncResult* asyncResult, GError** err);
	GdkPixbuf* gdk_pixbuf_new_from_xpm_data(char** data);
	int gdk_pixbuf_calculate_rowstride(GdkColorspace colorspace, int hasAlpha, int bitsPerSample, int width, int height);
	GdkPixbufFormat* gdk_pixbuf_get_file_info(char* filename, int* width, int* height);
	void gdk_pixbuf_get_file_info_async(char* filename, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GdkPixbufFormat* gdk_pixbuf_get_file_info_finish(GAsyncResult* asyncResult, int* width, int* height, GError** err);
	GSList* gdk_pixbuf_get_formats();
	int gdk_pixbuf_init_modules(const(char)* path, GError** err);
	void gdk_pixbuf_new_from_stream_async(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	void gdk_pixbuf_new_from_stream_at_scale_async(GInputStream* stream, int width, int height, int preserveAspectRatio, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gdk_pixbuf_save_to_stream_finish(GAsyncResult* asyncResult, GError** err);
	GdkPixbuf* gdk_pixbuf_add_alpha(GdkPixbuf* pixbuf, int substituteColor, char r, char g, char b);
	GdkPixbuf* gdk_pixbuf_apply_embedded_orientation(GdkPixbuf* src);
	void gdk_pixbuf_composite(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha);
	void gdk_pixbuf_composite_color(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, uint color1, uint color2);
	GdkPixbuf* gdk_pixbuf_composite_color_simple(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, uint color1, uint color2);
	GdkPixbuf* gdk_pixbuf_copy(GdkPixbuf* pixbuf);
	void gdk_pixbuf_copy_area(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY);
	int gdk_pixbuf_copy_options(GdkPixbuf* srcPixbuf, GdkPixbuf* destPixbuf);
	void gdk_pixbuf_fill(GdkPixbuf* pixbuf, uint pixel);
	GdkPixbuf* gdk_pixbuf_flip(GdkPixbuf* src, int horizontal);
	int gdk_pixbuf_get_bits_per_sample(GdkPixbuf* pixbuf);
	size_t gdk_pixbuf_get_byte_length(GdkPixbuf* pixbuf);
	GdkColorspace gdk_pixbuf_get_colorspace(GdkPixbuf* pixbuf);
	int gdk_pixbuf_get_has_alpha(GdkPixbuf* pixbuf);
	int gdk_pixbuf_get_height(GdkPixbuf* pixbuf);
	int gdk_pixbuf_get_n_channels(GdkPixbuf* pixbuf);
	const(char)* gdk_pixbuf_get_option(GdkPixbuf* pixbuf, const(char)* key);
	GHashTable* gdk_pixbuf_get_options(GdkPixbuf* pixbuf);
	char* gdk_pixbuf_get_pixels(GdkPixbuf* pixbuf);
	char* gdk_pixbuf_get_pixels_with_length(GdkPixbuf* pixbuf, uint* length);
	int gdk_pixbuf_get_rowstride(GdkPixbuf* pixbuf);
	int gdk_pixbuf_get_width(GdkPixbuf* pixbuf);
	GdkPixbuf* gdk_pixbuf_new_subpixbuf(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height);
	GBytes* gdk_pixbuf_read_pixel_bytes(GdkPixbuf* pixbuf);
	ubyte* gdk_pixbuf_read_pixels(GdkPixbuf* pixbuf);
	GdkPixbuf* gdk_pixbuf_ref(GdkPixbuf* pixbuf);
	int gdk_pixbuf_remove_option(GdkPixbuf* pixbuf, const(char)* key);
	GdkPixbuf* gdk_pixbuf_rotate_simple(GdkPixbuf* src, GdkPixbufRotation angle);
	void gdk_pixbuf_saturate_and_pixelate(GdkPixbuf* src, GdkPixbuf* dest, float saturation, int pixelate);
	int gdk_pixbuf_save(GdkPixbuf* pixbuf, char* filename, const(char)* type, GError** error, ... );
	int gdk_pixbuf_save_to_buffer(GdkPixbuf* pixbuf, char** buffer, size_t* bufferSize, const(char)* type, GError** error, ... );
	int gdk_pixbuf_save_to_bufferv(GdkPixbuf* pixbuf, char** buffer, size_t* bufferSize, const(char)* type, char** optionKeys, char** optionValues, GError** err);
	int gdk_pixbuf_save_to_callback(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, const(char)* type, GError** error, ... );
	int gdk_pixbuf_save_to_callbackv(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, const(char)* type, char** optionKeys, char** optionValues, GError** err);
	int gdk_pixbuf_save_to_stream(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, GCancellable* cancellable, GError** error, ... );
	void gdk_pixbuf_save_to_stream_async(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... );
	int gdk_pixbuf_save_to_streamv(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, char** optionKeys, char** optionValues, GCancellable* cancellable, GError** err);
	void gdk_pixbuf_save_to_streamv_async(GdkPixbuf* pixbuf, GOutputStream* stream, const(char)* type, char** optionKeys, char** optionValues, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gdk_pixbuf_savev(GdkPixbuf* pixbuf, char* filename, const(char)* type, char** optionKeys, char** optionValues, GError** err);
	void gdk_pixbuf_scale(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType);
	GdkPixbuf* gdk_pixbuf_scale_simple(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType);
	int gdk_pixbuf_set_option(GdkPixbuf* pixbuf, const(char)* key, const(char)* value);
	void gdk_pixbuf_unref(GdkPixbuf* pixbuf);
	GdkPixbuf* gdk_pixbuf_from_pixdata(GdkPixdata* pixdata, int copyPixels, GError** err);

	// gdkpixbuf.PixbufAnimation

	GType gdk_pixbuf_animation_get_type();
	GdkPixbufAnimation* gdk_pixbuf_animation_new_from_file(char* filename, GError** err);
	GdkPixbufAnimation* gdk_pixbuf_animation_new_from_resource(const(char)* resourcePath, GError** err);
	GdkPixbufAnimation* gdk_pixbuf_animation_new_from_stream(GInputStream* stream, GCancellable* cancellable, GError** err);
	GdkPixbufAnimation* gdk_pixbuf_animation_new_from_stream_finish(GAsyncResult* asyncResult, GError** err);
	void gdk_pixbuf_animation_new_from_stream_async(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gdk_pixbuf_animation_get_height(GdkPixbufAnimation* animation);
	GdkPixbufAnimationIter* gdk_pixbuf_animation_get_iter(GdkPixbufAnimation* animation, GTimeVal* startTime);
	GdkPixbuf* gdk_pixbuf_animation_get_static_image(GdkPixbufAnimation* animation);
	int gdk_pixbuf_animation_get_width(GdkPixbufAnimation* animation);
	int gdk_pixbuf_animation_is_static_image(GdkPixbufAnimation* animation);
	GdkPixbufAnimation* gdk_pixbuf_animation_ref(GdkPixbufAnimation* animation);
	void gdk_pixbuf_animation_unref(GdkPixbufAnimation* animation);

	// gdkpixbuf.PixbufAnimationIter

	GType gdk_pixbuf_animation_iter_get_type();
	int gdk_pixbuf_animation_iter_advance(GdkPixbufAnimationIter* iter, GTimeVal* currentTime);
	int gdk_pixbuf_animation_iter_get_delay_time(GdkPixbufAnimationIter* iter);
	GdkPixbuf* gdk_pixbuf_animation_iter_get_pixbuf(GdkPixbufAnimationIter* iter);
	int gdk_pixbuf_animation_iter_on_currently_loading_frame(GdkPixbufAnimationIter* iter);

	// gdkpixbuf.PixbufFormat

	GType gdk_pixbuf_format_get_type();
	GdkPixbufFormat* gdk_pixbuf_format_copy(GdkPixbufFormat* format);
	void gdk_pixbuf_format_free(GdkPixbufFormat* format);
	char* gdk_pixbuf_format_get_description(GdkPixbufFormat* format);
	char** gdk_pixbuf_format_get_extensions(GdkPixbufFormat* format);
	char* gdk_pixbuf_format_get_license(GdkPixbufFormat* format);
	char** gdk_pixbuf_format_get_mime_types(GdkPixbufFormat* format);
	char* gdk_pixbuf_format_get_name(GdkPixbufFormat* format);
	int gdk_pixbuf_format_is_disabled(GdkPixbufFormat* format);
	int gdk_pixbuf_format_is_save_option_supported(GdkPixbufFormat* format, const(char)* optionKey);
	int gdk_pixbuf_format_is_scalable(GdkPixbufFormat* format);
	int gdk_pixbuf_format_is_writable(GdkPixbufFormat* format);
	void gdk_pixbuf_format_set_disabled(GdkPixbufFormat* format, int disabled);

	// gdkpixbuf.PixbufLoader

	GType gdk_pixbuf_loader_get_type();
	GdkPixbufLoader* gdk_pixbuf_loader_new();
	GdkPixbufLoader* gdk_pixbuf_loader_new_with_mime_type(const(char)* mimeType, GError** err);
	GdkPixbufLoader* gdk_pixbuf_loader_new_with_type(const(char)* imageType, GError** err);
	int gdk_pixbuf_loader_close(GdkPixbufLoader* loader, GError** err);
	GdkPixbufAnimation* gdk_pixbuf_loader_get_animation(GdkPixbufLoader* loader);
	GdkPixbufFormat* gdk_pixbuf_loader_get_format(GdkPixbufLoader* loader);
	GdkPixbuf* gdk_pixbuf_loader_get_pixbuf(GdkPixbufLoader* loader);
	void gdk_pixbuf_loader_set_size(GdkPixbufLoader* loader, int width, int height);
	int gdk_pixbuf_loader_write(GdkPixbufLoader* loader, char* buf, size_t count, GError** err);
	int gdk_pixbuf_loader_write_bytes(GdkPixbufLoader* loader, GBytes* buffer, GError** err);

	// gdkpixbuf.PixbufSimpleAnimation

	GType gdk_pixbuf_simple_anim_get_type();
	GdkPixbufSimpleAnim* gdk_pixbuf_simple_anim_new(int width, int height, float rate);
	void gdk_pixbuf_simple_anim_add_frame(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf);
	int gdk_pixbuf_simple_anim_get_loop(GdkPixbufSimpleAnim* animation);
	void gdk_pixbuf_simple_anim_set_loop(GdkPixbufSimpleAnim* animation, int loop);

	// gdkpixbuf.PixbufSimpleAnimationIter

	GType gdk_pixbuf_simple_anim_iter_get_type();

	// gdkpixbuf.Pixdata

	int gdk_pixdata_deserialize(GdkPixdata* pixdata, uint streamLength, ubyte* stream, GError** err);
	void* gdk_pixdata_from_pixbuf(GdkPixdata* pixdata, GdkPixbuf* pixbuf, int useRle);
	ubyte* gdk_pixdata_serialize(GdkPixdata* pixdata, uint* streamLengthP);
	GString* gdk_pixdata_to_csource(GdkPixdata* pixdata, const(char)* name, GdkPixdataDumpType dumpType);
}