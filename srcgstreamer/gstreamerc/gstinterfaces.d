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


module gstreamerc.gstinterfaces;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gstreamerc.gstinterfacestypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gstinterfaces.VideoOverlay

	Linker.link(gst_video_overlay_got_window_handle, \"gst_video_overlay_got_window_handle\", LIBRARY.GSTINTERFACES);
	Linker.link(gst_video_overlay_set_window_handle, \"gst_video_overlay_set_window_handle\", LIBRARY.GSTINTERFACES);
	Linker.link(gst_video_overlay_prepare_window_handle, \"gst_video_overlay_prepare_window_handle\", LIBRARY.GSTINTERFACES);
	Linker.link(gst_video_overlay_expose, \"gst_video_overlay_expose\", LIBRARY.GSTINTERFACES);
	Linker.link(gst_video_overlay_handle_events, \"gst_video_overlay_handle_events\", LIBRARY.GSTINTERFACES);
	Linker.link(gst_video_overlay_set_render_rectangle, \"gst_video_overlay_set_render_rectangle\", LIBRARY.GSTINTERFACES);
}");

mixin( gshared ~"extern(C)
{
	// gstinterfaces.VideoOverlay

	void function(GstVideoOverlay* overlay, guintptr handle) c_gst_video_overlay_got_window_handle;
	void function(GstVideoOverlay* overlay, guintptr handle) c_gst_video_overlay_set_window_handle;
	void function(GstVideoOverlay* overlay) c_gst_video_overlay_prepare_window_handle;
	void function(GstVideoOverlay* overlay) c_gst_video_overlay_expose;
	void function(GstVideoOverlay* overlay, gboolean handleEvents) c_gst_video_overlay_handle_events;
	gboolean function(GstVideoOverlay* overlay, gint x, gint y, gint width, gint height) c_gst_video_overlay_set_render_rectangle;
}");

// gstinterfaces.VideoOverlay

alias c_gst_video_overlay_got_window_handle  gst_video_overlay_got_window_handle;
alias c_gst_video_overlay_set_window_handle  gst_video_overlay_set_window_handle;
alias c_gst_video_overlay_prepare_window_handle  gst_video_overlay_prepare_window_handle;
alias c_gst_video_overlay_expose  gst_video_overlay_expose;
alias c_gst_video_overlay_handle_events  gst_video_overlay_handle_events;
alias c_gst_video_overlay_set_render_rectangle  gst_video_overlay_set_render_rectangle;
