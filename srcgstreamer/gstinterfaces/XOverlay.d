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
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_x_overlay_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtkc.glibtypes
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gstinterfaces.XOverlay;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstinterfacestypes;

private import gstreamerc.gstinterfaces;

private import gstreamer.Element;//By hand.

private import gtkc.glibtypes;
private import glib.Str;




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
		version(noAssert)
		{
			if ( gstXOverlay is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstXOverlay is null on constructor").newline;
				}
				else
				{
					printf("struct gstXOverlay is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstXOverlay !is null, "struct gstXOverlay is null on constructor");
		}
		this.gstXOverlay = gstXOverlay;
	}
	
	public this(Element elem)//Handedited.
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
	 * overlay:
	 *  a GstXOverlay to set the XWindow on.
	 * xwindow_id:
	 *  a XID referencing the XWindow.
	 */
	public void setXwindowId(uint xwindowId)
	{
		// void gst_x_overlay_set_xwindow_id (GstXOverlay *overlay,  gulong xwindow_id);
		gst_x_overlay_set_xwindow_id(gstXOverlay, xwindowId);
	}
	
	/**
	 * This will post a "have-xwindow-id" element message on the bus.
	 * This function should only be used by video overlay plugin developers.
	 * overlay:
	 *  a GstXOverlay which got a XWindow.
	 * xwindow_id:
	 *  a XID referencing the XWindow.
	 */
	public void gotXwindowId(uint xwindowId)
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
	 * overlay:
	 *  a GstXOverlay which does not yet have an XWindow.
	 */
	public void prepareXwindowId()
	{
		// void gst_x_overlay_prepare_xwindow_id (GstXOverlay *overlay);
		gst_x_overlay_prepare_xwindow_id(gstXOverlay);
	}
	
	/**
	 * Tell an overlay that it has been exposed. This will redraw the current frame
	 * in the drawable even if the pipeline is PAUSED.
	 * overlay:
	 *  a GstXOverlay to expose.
	 */
	public void expose()
	{
		// void gst_x_overlay_expose (GstXOverlay *overlay);
		gst_x_overlay_expose(gstXOverlay);
	}
}
