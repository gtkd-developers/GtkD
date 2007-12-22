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

// Adapted from John Reimer's DUI loader modules


module gstreamerc.gstinterfaces;

version(Tango) private import tango.stdc.stdio;
else private import std.stdio;
private import gstreamerc.gstinterfacestypes;
private import gtkc.Loader;
private import gtkc.paths;

private import gtkc.glibtypes;

private Linker gstinterfaces_Linker;

static this()
{
 gstinterfaces_Linker = new Linker(libPath ~ importLibs[LIBRARY.GSTINTERFACES] );
 gstinterfaces_Linker.link(gstinterfacesLinks);
 debug writefln("* Finished static this(): gstinterfaces");
}

static ~this()
{
 delete gstinterfaces_Linker;
 debug writefln("* Finished static ~this(): gstinterfaces");
}

extern(C) 
{
	// gstinterfaces.GstXOverlay
	
	void function(GstXOverlay* overlay, gulong xwindowId)gst_x_overlay_set_xwindow_id;
	void function(GstXOverlay* overlay, gulong xwindowId)gst_x_overlay_got_xwindow_id;
	void function(GstXOverlay* overlay)gst_x_overlay_prepare_xwindow_id;
	void function(GstXOverlay* overlay)gst_x_overlay_expose;

}

Symbol[] gstinterfacesLinks = 
[
	{ "gst_x_overlay_set_xwindow_id",  cast(void**)& gst_x_overlay_set_xwindow_id},
	{ "gst_x_overlay_got_xwindow_id",  cast(void**)& gst_x_overlay_got_xwindow_id},
	{ "gst_x_overlay_prepare_xwindow_id",  cast(void**)& gst_x_overlay_prepare_xwindow_id},
	{ "gst_x_overlay_expose",  cast(void**)& gst_x_overlay_expose},
	
];
