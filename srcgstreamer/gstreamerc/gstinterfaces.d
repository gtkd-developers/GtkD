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


module gstreamerc.gstinterfaces;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gstreamerc.gstinterfacestypes;
private import gtkc.Loader;
private import gtkc.paths;

private import gtkc.glibtypes;
private import gtkc.gobjecttypes;
private import gtkc.gthreadtypes;
private import glib.Str;


static this()
{

	// gstinterfaces.XOverlay

	Linker.link(gst_x_overlay_set_xwindow_id, "gst_x_overlay_set_xwindow_id", LIBRARY.GSTINTERFACES);
	Linker.link(gst_x_overlay_got_xwindow_id, "gst_x_overlay_got_xwindow_id", LIBRARY.GSTINTERFACES);
	Linker.link(gst_x_overlay_prepare_xwindow_id, "gst_x_overlay_prepare_xwindow_id", LIBRARY.GSTINTERFACES);
	Linker.link(gst_x_overlay_expose, "gst_x_overlay_expose", LIBRARY.GSTINTERFACES);

}

extern(C)
{
	// gstinterfaces.XOverlay
	
	typedef void function(GstXOverlay* overlay, gulong xwindowId) c_gst_x_overlay_set_xwindow_id;
	typedef void function(GstXOverlay* overlay, gulong xwindowId) c_gst_x_overlay_got_xwindow_id;
	typedef void function(GstXOverlay* overlay) c_gst_x_overlay_prepare_xwindow_id;
	typedef void function(GstXOverlay* overlay) c_gst_x_overlay_expose;
	
}

// gstinterfaces.XOverlay

c_gst_x_overlay_set_xwindow_id  gst_x_overlay_set_xwindow_id;
c_gst_x_overlay_got_xwindow_id  gst_x_overlay_got_xwindow_id;
c_gst_x_overlay_prepare_xwindow_id  gst_x_overlay_prepare_xwindow_id;
c_gst_x_overlay_expose  gst_x_overlay_expose;


