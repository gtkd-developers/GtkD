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


module gstinterfaces.c.functions;

import std.stdio;
import gstinterfaces.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0-0.dll"];
else version (OSX)
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0.so.0"];

shared static this()
{
	// gstinterfaces.VideoOverlay

	Linker.link(gst_video_overlay_get_type, "gst_video_overlay_get_type", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_install_properties, "gst_video_overlay_install_properties", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_set_property, "gst_video_overlay_set_property", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_expose, "gst_video_overlay_expose", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_got_window_handle, "gst_video_overlay_got_window_handle", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_handle_events, "gst_video_overlay_handle_events", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_prepare_window_handle, "gst_video_overlay_prepare_window_handle", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_set_render_rectangle, "gst_video_overlay_set_render_rectangle", LIBRARY_GSTINTERFACES);
	Linker.link(gst_video_overlay_set_window_handle, "gst_video_overlay_set_window_handle", LIBRARY_GSTINTERFACES);
}

__gshared extern(C)
{

	// gstinterfaces.VideoOverlay

	GType function() c_gst_video_overlay_get_type;
	void function(GObjectClass* oclass, int lastPropId) c_gst_video_overlay_install_properties;
	int function(GObject* object, int lastPropId, uint propertyId, GValue* value) c_gst_video_overlay_set_property;
	void function(GstVideoOverlay* overlay) c_gst_video_overlay_expose;
	void function(GstVideoOverlay* overlay, size_t handle) c_gst_video_overlay_got_window_handle;
	void function(GstVideoOverlay* overlay, int handleEvents) c_gst_video_overlay_handle_events;
	void function(GstVideoOverlay* overlay) c_gst_video_overlay_prepare_window_handle;
	int function(GstVideoOverlay* overlay, int x, int y, int width, int height) c_gst_video_overlay_set_render_rectangle;
	void function(GstVideoOverlay* overlay, size_t handle) c_gst_video_overlay_set_window_handle;
}


// gstinterfaces.VideoOverlay

alias c_gst_video_overlay_get_type gst_video_overlay_get_type;
alias c_gst_video_overlay_install_properties gst_video_overlay_install_properties;
alias c_gst_video_overlay_set_property gst_video_overlay_set_property;
alias c_gst_video_overlay_expose gst_video_overlay_expose;
alias c_gst_video_overlay_got_window_handle gst_video_overlay_got_window_handle;
alias c_gst_video_overlay_handle_events gst_video_overlay_handle_events;
alias c_gst_video_overlay_prepare_window_handle gst_video_overlay_prepare_window_handle;
alias c_gst_video_overlay_set_render_rectangle gst_video_overlay_set_render_rectangle;
alias c_gst_video_overlay_set_window_handle gst_video_overlay_set_window_handle;
