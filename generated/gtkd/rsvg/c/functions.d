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


module rsvg.c.functions;

import std.stdio;
import rsvg.c.types;
version (Windows)
	static immutable LIBRARY_RSVG = ["librsvg-2-2.dll;rsvg-2-2.2.dll;rsvg-2.dll"];
else version (OSX)
	static immutable LIBRARY_RSVG = ["librsvg-2.2.dylib"];
else
	static immutable LIBRARY_RSVG = ["librsvg-2.so.2"];

__gshared extern(C)
{

	// rsvg.Handle

	GType rsvg_handle_get_type();
	RsvgHandle* rsvg_handle_new();
	RsvgHandle* rsvg_handle_new_from_data(ubyte* data, size_t dataLen, GError** err);
	RsvgHandle* rsvg_handle_new_from_file(const(char)* filename, GError** err);
	RsvgHandle* rsvg_handle_new_from_gfile_sync(GFile* file, RsvgHandleFlags flags, GCancellable* cancellable, GError** err);
	RsvgHandle* rsvg_handle_new_from_stream_sync(GInputStream* inputStream, GFile* baseFile, RsvgHandleFlags flags, GCancellable* cancellable, GError** err);
	RsvgHandle* rsvg_handle_new_with_flags(RsvgHandleFlags flags);
	int rsvg_handle_close(RsvgHandle* handle, GError** err);
	const(char)* rsvg_handle_get_base_uri(RsvgHandle* handle);
	void rsvg_handle_get_dimensions(RsvgHandle* handle, RsvgDimensionData* dimensionData);
	int rsvg_handle_get_dimensions_sub(RsvgHandle* handle, RsvgDimensionData* dimensionData, const(char)* id);
	int rsvg_handle_get_geometry_for_element(RsvgHandle* handle, const(char)* id, RsvgRectangle* outInkRect, RsvgRectangle* outLogicalRect, GError** err);
	int rsvg_handle_get_geometry_for_layer(RsvgHandle* handle, const(char)* id, RsvgRectangle* viewport, RsvgRectangle* outInkRect, RsvgRectangle* outLogicalRect, GError** err);
	void rsvg_handle_get_intrinsic_dimensions(RsvgHandle* handle, int* outHasWidth, RsvgLength* outWidth, int* outHasHeight, RsvgLength* outHeight, int* outHasViewbox, RsvgRectangle* outViewbox);
	GdkPixbuf* rsvg_handle_get_pixbuf(RsvgHandle* handle);
	GdkPixbuf* rsvg_handle_get_pixbuf_sub(RsvgHandle* handle, const(char)* id);
	int rsvg_handle_get_position_sub(RsvgHandle* handle, RsvgPositionData* positionData, const(char)* id);
	int rsvg_handle_has_sub(RsvgHandle* handle, const(char)* id);
	void rsvg_handle_internal_set_testing(RsvgHandle* handle, int testing);
	int rsvg_handle_read_stream_sync(RsvgHandle* handle, GInputStream* stream, GCancellable* cancellable, GError** err);
	int rsvg_handle_render_cairo(RsvgHandle* handle, cairo_t* cr);
	int rsvg_handle_render_cairo_sub(RsvgHandle* handle, cairo_t* cr, const(char)* id);
	int rsvg_handle_render_document(RsvgHandle* handle, cairo_t* cr, RsvgRectangle* viewport, GError** err);
	int rsvg_handle_render_element(RsvgHandle* handle, cairo_t* cr, const(char)* id, RsvgRectangle* elementViewport, GError** err);
	int rsvg_handle_render_layer(RsvgHandle* handle, cairo_t* cr, const(char)* id, RsvgRectangle* viewport, GError** err);
	void rsvg_handle_set_base_gfile(RsvgHandle* handle, GFile* baseFile);
	void rsvg_handle_set_base_uri(RsvgHandle* handle, const(char)* baseUri);
	void rsvg_handle_set_dpi(RsvgHandle* handle, double dpi);
	void rsvg_handle_set_dpi_x_y(RsvgHandle* handle, double dpiX, double dpiY);
	int rsvg_handle_set_stylesheet(RsvgHandle* handle, ubyte* css, size_t cssLen, GError** err);
	int rsvg_handle_write(RsvgHandle* handle, char* buf, size_t count, GError** err);
	void rsvg_cleanup();
	void rsvg_set_default_dpi(double dpi);
	void rsvg_set_default_dpi_x_y(double dpiX, double dpiY);
}