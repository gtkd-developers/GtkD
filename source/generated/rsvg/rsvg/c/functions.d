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
import linker.Loader;

version (Windows)
	static immutable LIBRARY_RSVG = ["librsvg-2-2.dll;rsvg-2-2.2.dll;rsvg-2.dll"];
else version (OSX)
	static immutable LIBRARY_RSVG = ["librsvg-2.2.dylib"];
else
	static immutable LIBRARY_RSVG = ["librsvg-2.so.2"];

shared static this()
{
	// rsvg.Handle

	Linker.link(rsvg_handle_get_type, "rsvg_handle_get_type", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new, "rsvg_handle_new", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new_from_data, "rsvg_handle_new_from_data", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new_from_file, "rsvg_handle_new_from_file", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new_from_gfile_sync, "rsvg_handle_new_from_gfile_sync", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new_from_stream_sync, "rsvg_handle_new_from_stream_sync", LIBRARY_RSVG);
	Linker.link(rsvg_handle_new_with_flags, "rsvg_handle_new_with_flags", LIBRARY_RSVG);
	Linker.link(rsvg_handle_close, "rsvg_handle_close", LIBRARY_RSVG);
	Linker.link(rsvg_handle_free, "rsvg_handle_free", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_base_uri, "rsvg_handle_get_base_uri", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_desc, "rsvg_handle_get_desc", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_dimensions, "rsvg_handle_get_dimensions", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_dimensions_sub, "rsvg_handle_get_dimensions_sub", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_geometry_for_element, "rsvg_handle_get_geometry_for_element", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_geometry_for_layer, "rsvg_handle_get_geometry_for_layer", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_intrinsic_dimensions, "rsvg_handle_get_intrinsic_dimensions", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_intrinsic_size_in_pixels, "rsvg_handle_get_intrinsic_size_in_pixels", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_metadata, "rsvg_handle_get_metadata", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_pixbuf, "rsvg_handle_get_pixbuf", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_pixbuf_sub, "rsvg_handle_get_pixbuf_sub", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_position_sub, "rsvg_handle_get_position_sub", LIBRARY_RSVG);
	Linker.link(rsvg_handle_get_title, "rsvg_handle_get_title", LIBRARY_RSVG);
	Linker.link(rsvg_handle_has_sub, "rsvg_handle_has_sub", LIBRARY_RSVG);
	Linker.link(rsvg_handle_internal_set_testing, "rsvg_handle_internal_set_testing", LIBRARY_RSVG);
	Linker.link(rsvg_handle_read_stream_sync, "rsvg_handle_read_stream_sync", LIBRARY_RSVG);
	Linker.link(rsvg_handle_render_cairo, "rsvg_handle_render_cairo", LIBRARY_RSVG);
	Linker.link(rsvg_handle_render_cairo_sub, "rsvg_handle_render_cairo_sub", LIBRARY_RSVG);
	Linker.link(rsvg_handle_render_document, "rsvg_handle_render_document", LIBRARY_RSVG);
	Linker.link(rsvg_handle_render_element, "rsvg_handle_render_element", LIBRARY_RSVG);
	Linker.link(rsvg_handle_render_layer, "rsvg_handle_render_layer", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_base_gfile, "rsvg_handle_set_base_gfile", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_base_uri, "rsvg_handle_set_base_uri", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_dpi, "rsvg_handle_set_dpi", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_dpi_x_y, "rsvg_handle_set_dpi_x_y", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_size_callback, "rsvg_handle_set_size_callback", LIBRARY_RSVG);
	Linker.link(rsvg_handle_set_stylesheet, "rsvg_handle_set_stylesheet", LIBRARY_RSVG);
	Linker.link(rsvg_handle_write, "rsvg_handle_write", LIBRARY_RSVG);
	Linker.link(rsvg_cleanup, "rsvg_cleanup", LIBRARY_RSVG);
	Linker.link(rsvg_set_default_dpi, "rsvg_set_default_dpi", LIBRARY_RSVG);
	Linker.link(rsvg_set_default_dpi_x_y, "rsvg_set_default_dpi_x_y", LIBRARY_RSVG);
}

__gshared extern(C)
{

	// rsvg.Handle

	GType function() c_rsvg_handle_get_type;
	RsvgHandle* function() c_rsvg_handle_new;
	RsvgHandle* function(ubyte* data, size_t dataLen, GError** err) c_rsvg_handle_new_from_data;
	RsvgHandle* function(const(char)* filename, GError** err) c_rsvg_handle_new_from_file;
	RsvgHandle* function(GFile* file, RsvgHandleFlags flags, GCancellable* cancellable, GError** err) c_rsvg_handle_new_from_gfile_sync;
	RsvgHandle* function(GInputStream* inputStream, GFile* baseFile, RsvgHandleFlags flags, GCancellable* cancellable, GError** err) c_rsvg_handle_new_from_stream_sync;
	RsvgHandle* function(RsvgHandleFlags flags) c_rsvg_handle_new_with_flags;
	int function(RsvgHandle* handle, GError** err) c_rsvg_handle_close;
	void function(RsvgHandle* handle) c_rsvg_handle_free;
	const(char)* function(RsvgHandle* handle) c_rsvg_handle_get_base_uri;
	const(char)* function(RsvgHandle* handle) c_rsvg_handle_get_desc;
	void function(RsvgHandle* handle, RsvgDimensionData* dimensionData) c_rsvg_handle_get_dimensions;
	int function(RsvgHandle* handle, RsvgDimensionData* dimensionData, const(char)* id) c_rsvg_handle_get_dimensions_sub;
	int function(RsvgHandle* handle, const(char)* id, RsvgRectangle* outInkRect, RsvgRectangle* outLogicalRect, GError** err) c_rsvg_handle_get_geometry_for_element;
	int function(RsvgHandle* handle, const(char)* id, RsvgRectangle* viewport, RsvgRectangle* outInkRect, RsvgRectangle* outLogicalRect, GError** err) c_rsvg_handle_get_geometry_for_layer;
	void function(RsvgHandle* handle, int* outHasWidth, RsvgLength* outWidth, int* outHasHeight, RsvgLength* outHeight, int* outHasViewbox, RsvgRectangle* outViewbox) c_rsvg_handle_get_intrinsic_dimensions;
	int function(RsvgHandle* handle, double* outWidth, double* outHeight) c_rsvg_handle_get_intrinsic_size_in_pixels;
	const(char)* function(RsvgHandle* handle) c_rsvg_handle_get_metadata;
	GdkPixbuf* function(RsvgHandle* handle) c_rsvg_handle_get_pixbuf;
	GdkPixbuf* function(RsvgHandle* handle, const(char)* id) c_rsvg_handle_get_pixbuf_sub;
	int function(RsvgHandle* handle, RsvgPositionData* positionData, const(char)* id) c_rsvg_handle_get_position_sub;
	const(char)* function(RsvgHandle* handle) c_rsvg_handle_get_title;
	int function(RsvgHandle* handle, const(char)* id) c_rsvg_handle_has_sub;
	void function(RsvgHandle* handle, int testing) c_rsvg_handle_internal_set_testing;
	int function(RsvgHandle* handle, GInputStream* stream, GCancellable* cancellable, GError** err) c_rsvg_handle_read_stream_sync;
	int function(RsvgHandle* handle, cairo_t* cr) c_rsvg_handle_render_cairo;
	int function(RsvgHandle* handle, cairo_t* cr, const(char)* id) c_rsvg_handle_render_cairo_sub;
	int function(RsvgHandle* handle, cairo_t* cr, RsvgRectangle* viewport, GError** err) c_rsvg_handle_render_document;
	int function(RsvgHandle* handle, cairo_t* cr, const(char)* id, RsvgRectangle* elementViewport, GError** err) c_rsvg_handle_render_element;
	int function(RsvgHandle* handle, cairo_t* cr, const(char)* id, RsvgRectangle* viewport, GError** err) c_rsvg_handle_render_layer;
	void function(RsvgHandle* handle, GFile* baseFile) c_rsvg_handle_set_base_gfile;
	void function(RsvgHandle* handle, const(char)* baseUri) c_rsvg_handle_set_base_uri;
	void function(RsvgHandle* handle, double dpi) c_rsvg_handle_set_dpi;
	void function(RsvgHandle* handle, double dpiX, double dpiY) c_rsvg_handle_set_dpi_x_y;
	void function(RsvgHandle* handle, RsvgSizeFunc sizeFunc, void* userData, GDestroyNotify userDataDestroy) c_rsvg_handle_set_size_callback;
	int function(RsvgHandle* handle, ubyte* css, size_t cssLen, GError** err) c_rsvg_handle_set_stylesheet;
	int function(RsvgHandle* handle, char* buf, size_t count, GError** err) c_rsvg_handle_write;
	void function() c_rsvg_cleanup;
	void function(double dpi) c_rsvg_set_default_dpi;
	void function(double dpiX, double dpiY) c_rsvg_set_default_dpi_x_y;
}


// rsvg.Handle

alias c_rsvg_handle_get_type rsvg_handle_get_type;
alias c_rsvg_handle_new rsvg_handle_new;
alias c_rsvg_handle_new_from_data rsvg_handle_new_from_data;
alias c_rsvg_handle_new_from_file rsvg_handle_new_from_file;
alias c_rsvg_handle_new_from_gfile_sync rsvg_handle_new_from_gfile_sync;
alias c_rsvg_handle_new_from_stream_sync rsvg_handle_new_from_stream_sync;
alias c_rsvg_handle_new_with_flags rsvg_handle_new_with_flags;
alias c_rsvg_handle_close rsvg_handle_close;
alias c_rsvg_handle_free rsvg_handle_free;
alias c_rsvg_handle_get_base_uri rsvg_handle_get_base_uri;
alias c_rsvg_handle_get_desc rsvg_handle_get_desc;
alias c_rsvg_handle_get_dimensions rsvg_handle_get_dimensions;
alias c_rsvg_handle_get_dimensions_sub rsvg_handle_get_dimensions_sub;
alias c_rsvg_handle_get_geometry_for_element rsvg_handle_get_geometry_for_element;
alias c_rsvg_handle_get_geometry_for_layer rsvg_handle_get_geometry_for_layer;
alias c_rsvg_handle_get_intrinsic_dimensions rsvg_handle_get_intrinsic_dimensions;
alias c_rsvg_handle_get_intrinsic_size_in_pixels rsvg_handle_get_intrinsic_size_in_pixels;
alias c_rsvg_handle_get_metadata rsvg_handle_get_metadata;
alias c_rsvg_handle_get_pixbuf rsvg_handle_get_pixbuf;
alias c_rsvg_handle_get_pixbuf_sub rsvg_handle_get_pixbuf_sub;
alias c_rsvg_handle_get_position_sub rsvg_handle_get_position_sub;
alias c_rsvg_handle_get_title rsvg_handle_get_title;
alias c_rsvg_handle_has_sub rsvg_handle_has_sub;
alias c_rsvg_handle_internal_set_testing rsvg_handle_internal_set_testing;
alias c_rsvg_handle_read_stream_sync rsvg_handle_read_stream_sync;
alias c_rsvg_handle_render_cairo rsvg_handle_render_cairo;
alias c_rsvg_handle_render_cairo_sub rsvg_handle_render_cairo_sub;
alias c_rsvg_handle_render_document rsvg_handle_render_document;
alias c_rsvg_handle_render_element rsvg_handle_render_element;
alias c_rsvg_handle_render_layer rsvg_handle_render_layer;
alias c_rsvg_handle_set_base_gfile rsvg_handle_set_base_gfile;
alias c_rsvg_handle_set_base_uri rsvg_handle_set_base_uri;
alias c_rsvg_handle_set_dpi rsvg_handle_set_dpi;
alias c_rsvg_handle_set_dpi_x_y rsvg_handle_set_dpi_x_y;
alias c_rsvg_handle_set_size_callback rsvg_handle_set_size_callback;
alias c_rsvg_handle_set_stylesheet rsvg_handle_set_stylesheet;
alias c_rsvg_handle_write rsvg_handle_write;
alias c_rsvg_cleanup rsvg_cleanup;
alias c_rsvg_set_default_dpi rsvg_set_default_dpi;
alias c_rsvg_set_default_dpi_x_y rsvg_set_default_dpi_x_y;
