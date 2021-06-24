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
version (Windows)
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0-0.dll;gstvideo-1.0-0.dll;gstvideo-1.dll"];
else version (OSX)
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0.0.dylib"];
else
	static immutable LIBRARY_GSTINTERFACES = ["libgstvideo-1.0.so.0"];

__gshared extern(C)
{

	// gstinterfaces.VideoOverlay

	GType gst_video_overlay_get_type();
	void gst_video_overlay_install_properties(GObjectClass* oclass, int lastPropId);
	int gst_video_overlay_set_property(GObject* object, int lastPropId, uint propertyId, GValue* value);
	void gst_video_overlay_expose(GstVideoOverlay* overlay);
	void gst_video_overlay_got_window_handle(GstVideoOverlay* overlay, size_t handle);
	void gst_video_overlay_handle_events(GstVideoOverlay* overlay, int handleEvents);
	void gst_video_overlay_prepare_window_handle(GstVideoOverlay* overlay);
	int gst_video_overlay_set_render_rectangle(GstVideoOverlay* overlay, int x, int y, int width, int height);
	void gst_video_overlay_set_window_handle(GstVideoOverlay* overlay, size_t handle);
}