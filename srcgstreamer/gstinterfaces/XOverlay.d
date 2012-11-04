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

/*
 * Conversion parameters:
 * inFile  = gst-plugins-base-libs-gstxoverlay.html
 * outPack = gstinterfaces
 * outFile = XOverlay
 * strct   = GstXOverlay
 * realStrct=
 * ctorStrct=
 * clss    = XOverlay
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_x_overlay_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtkc.glibtypes
 * 	- glib.Str
 * 	- gstreamer.Element
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstinterfaces.XOverlay;

public  import gstreamerc.gstinterfacestypes;

private import gstreamerc.gstinterfaces;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtkc.glibtypes;
private import glib.Str;
private import gstreamer.Element;




/**
 * Description
 * The XOverlay interface is used for 2 main purposes :
 * To get a grab on the Window where the video sink element is going to render.
 * This is achieved by either being informed about the Window identifier that
 * the video sink element generated, or by forcing the video sink element to use
 * a specific Window identifier for rendering.
 * To force a redrawing of the latest video frame the video sink element
 * displayed on the Window. Indeed if the GstPipeline is in GST_STATE_PAUSED
 * state, moving the Window around will damage its content. Application
 * developers will want to handle the Expose events themselves and force the
 * video sink element to refresh the Window's content.
 * Using the Window created by the video sink is probably the simplest scenario,
 * in some cases, though, it might not be flexible enough for application
 * developers if they need to catch events such as mouse moves and button
 * clicks.
 * Setting a specific Window identifier on the video sink element is the most
 * flexible solution but it has some issues. Indeed the application needs to set
 * its Window identifier at the right time to avoid internal Window creation
 * from the video sink element. To solve this issue a GstMessage is posted on
 * the bus to inform the application that it should set the Window identifier
 * immediately. Here is an example on how to do that correctly:
 * static GstBusSyncReply
 * create_window (GstBus * bus, GstMessage * message, GstPipeline * pipeline)
 * {
	 *  // ignore anything but 'prepare-xwindow-id' element messages
	 *  if (GST_MESSAGE_TYPE (message) != GST_MESSAGE_ELEMENT)
	 *  return GST_BUS_PASS;
	 *  if (!gst_structure_has_name (message->structure, "prepare-xwindow-id"))
	 *  return GST_BUS_PASS;
	 *  win = XCreateSimpleWindow (disp, root, 0, 0, 320, 240, 0, 0, 0);
	 *  XSetWindowBackgroundPixmap (disp, win, None);
	 *  XMapRaised (disp, win);
	 *  XSync (disp, FALSE);
	 *  gst_x_overlay_set_xwindow_id (GST_X_OVERLAY (GST_MESSAGE_SRC (message)),
	 *  win);
	 *  gst_message_unref (message);
	 *  return GST_BUS_DROP;
 * }
 * ...
 * int
 * main (int argc, char **argv)
 * {
	 * ...
	 *  bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
	 *  gst_bus_set_sync_handler (bus, (GstBusSyncHandler) create_window, pipeline);
	 * ...
 * }
 */
public class XOverlay
{
	
	/** the main Gtk struct */
	protected GstXOverlay* gstXOverlay;
	
	
	public GstXOverlay* getXOverlayStruct()
	{
		return gstXOverlay;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstXOverlay;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstXOverlay* gstXOverlay)
	{
		this.gstXOverlay = gstXOverlay;
	}
	
	/**
	 * The Element parameter should usually be
	 * your videosink that you want to create your
	 * XOverlay with.
	 */
	public this(Element elem)
	{
		this( cast(GstXOverlay*)elem.getElementStruct() );
	}
	
	/**
	 */
	
	/**
	 * This will call the video overlay's set_xwindow_id method. You should
	 * use this method to tell to a XOverlay to display video output to a
	 * specific XWindow. Passing 0 as the xwindow_id will tell the overlay to
	 * stop using that window and create an internal one.
	 * Params:
	 * xwindowId = a XID referencing the XWindow.
	 */
	public void setXwindowId(gulong xwindowId)
	{
		// void gst_x_overlay_set_xwindow_id (GstXOverlay *overlay,  gulong xwindow_id);
		gst_x_overlay_set_xwindow_id(gstXOverlay, xwindowId);
	}
	
	/**
	 * This will post a "have-xwindow-id" element message on the bus.
	 * This function should only be used by video overlay plugin developers.
	 * Params:
	 * xwindowId = a XID referencing the XWindow.
	 */
	public void gotXwindowId(gulong xwindowId)
	{
		// void gst_x_overlay_got_xwindow_id (GstXOverlay *overlay,  gulong xwindow_id);
		gst_x_overlay_got_xwindow_id(gstXOverlay, xwindowId);
	}
	
	/**
	 * This will post a "prepare-xwindow-id" element message on the bus
	 * to give applications an opportunity to call
	 * gst_x_overlay_set_xwindow_id() before a plugin creates its own
	 * window.
	 * This function should only be used by video overlay plugin developers.
	 */
	public void prepareXwindowId()
	{
		// void gst_x_overlay_prepare_xwindow_id (GstXOverlay *overlay);
		gst_x_overlay_prepare_xwindow_id(gstXOverlay);
	}
	
	/**
	 * Tell an overlay that it has been exposed. This will redraw the current frame
	 * in the drawable even if the pipeline is PAUSED.
	 */
	public void expose()
	{
		// void gst_x_overlay_expose (GstXOverlay *overlay);
		gst_x_overlay_expose(gstXOverlay);
	}
	
	/**
	 * Tell an overlay that it should handle events from the window system. These
	 * events are forwared upstream as navigation events. In some window system,
	 * events are not propagated in the window hierarchy if a client is listening
	 * for them. This method allows you to disable events handling completely
	 * from the XOverlay.
	 * Params:
	 * handleEvents = a gboolean indicating if events should be handled or not.
	 */
	public void handleEvents(int handleEvents)
	{
		// void gst_x_overlay_handle_events (GstXOverlay *overlay,  gboolean handle_events);
		gst_x_overlay_handle_events(gstXOverlay, handleEvents);
	}
}
