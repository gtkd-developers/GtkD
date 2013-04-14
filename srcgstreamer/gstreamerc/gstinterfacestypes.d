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

module gstreamerc.gstinterfacestypes;

public import gtkc.glibtypes;
public import gtkc.gobjecttypes;

/**
 * Main Gtk struct.
 * Opaque GstVideoOverlay interface structure
 */
public struct GstVideoOverlay{}


/**
 * GstVideoOverlay interface
 * GTypeInterface iface;
 * parent interface type.
 * expose ()
 * virtual method to handle expose events
 * handle_events ()
 * virtual method to handle events
 * set_render_rectangle ()
 * virtual method to set the render rectangle
 * set_window_handle ()
 * virtual method to configure the window handle
 */
public struct GstVideoOverlayInterface
{
	GTypeInterface iface;
	/+* virtual functions +/
	extern(C) void function(GstVideoOverlay* overlay) expose;
	extern(C) void function(GstVideoOverlay* overlay, int handleEvents) handleEvents;
	extern(C) void function(GstVideoOverlay* overlay, int x, int y, int width, int height) setRenderRectangle;
	extern(C) void function(GstVideoOverlay* overlay, guintptr handle) setWindowHandle;
}

