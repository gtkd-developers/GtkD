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
 * inFile  = gst-plugins-base-libs-gstvideooverlay.html
 * outPack = gstinterfaces
 * outFile = VideoOverlay
 * strct   = GstVideoOverlay
 * realStrct=
 * ctorStrct=
 * clss    = VideoOverlay
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_video_overlay_
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

module gstinterfaces.VideoOverlay;

public  import gstreamerc.gstinterfacestypes;

private import gstreamerc.gstinterfaces;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtkc.glibtypes;
private import glib.Str;
private import gstreamer.Element;




/**
 * The GstVideoOverlay interface is used for 2 main purposes :
 *
 * To get a grab on the Window where the video sink element is going to render.
 * This is achieved by either being informed about the Window identifier that
 * the video sink element generated, or by forcing the video sink element to use
 * a specific Window identifier for rendering.
 *
 * To force a redrawing of the latest video frame the video sink element
 * displayed on the Window. Indeed if the GstPipeline is in GST_STATE_PAUSED
 * state, moving the Window around will damage its content. Application
 * developers will want to handle the Expose events themselves and force the
 * video sink element to refresh the Window's content.
 *
 * Using the Window created by the video sink is probably the simplest scenario,
 * in some cases, though, it might not be flexible enough for application
 * developers if they need to catch events such as mouse moves and button
 * clicks.
 *
 * Setting a specific Window identifier on the video sink element is the most
 * flexible solution but it has some issues. Indeed the application needs to set
 * its Window identifier at the right time to avoid internal Window creation
 * from the video sink element. To solve this issue a GstMessage is posted on
 * the bus to inform the application that it should set the Window identifier
 * immediately. Here is an example on how to do that correctly:
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Two basic usage scenarios
 *
 * There are two basic usage scenarios: in the simplest case, the application
 * knows exactly what particular element is used for video output, which is
 * usually the case when the application creates the videosink to use
 * (e.g. xvimagesink, ximagesink, etc.) itself; in this case, the application
 * can just create the videosink element, create and realize the window to
 * render the video on and then call gst_video_overlay_set_window_handle() directly
 * with the XID or native window handle, before starting up the pipeline.
 *
 * In the other and more common case, the application does not know in advance
 * what GStreamer video sink element will be used for video output. This is
 * usually the case when an element such as autovideosink or gconfvideosink
 * is used. In this case, the video sink element itself is created
 * asynchronously from a GStreamer streaming thread some time after the
 * pipeline has been started up. When that happens, however, the video sink
 * will need to know right then whether to render onto an already existing
 * application window or whether to create its own window. This is when it
 * posts a prepare-window-handle message, and that is also why this message needs
 * to be handled in a sync bus handler which will be called from the streaming
 * thread directly (because the video sink will need an answer right then).
 *
 * As response to the prepare-window-handle element message in the bus sync
 * handler, the application may use gst_video_overlay_set_window_handle() to tell
 * the video sink to render onto an existing window surface. At this point the
 * application should already have obtained the window handle / XID, so it
 * just needs to set it. It is generally not advisable to call any GUI toolkit
 * functions or window system functions from the streaming thread in which the
 * prepare-window-handle message is handled, because most GUI toolkits and
 * windowing systems are not thread-safe at all and a lot of care would be
 * required to co-ordinate the toolkit and window system calls of the
 * different threads (Gtk+ users please note: prior to Gtk+ 2.18
 * GDK_WINDOW_XID() was just a simple structure access, so generally fine to do
 * within the bus sync handler; this macro was changed to a function call in
 * Gtk+ 2.18 and later, which is likely to cause problems when called from a
 * sync handler; see below for a better approach without GDK_WINDOW_XID()
 * used in the callback).
 *
 * <hr>
 *
 * GstVideoOverlay and Gtk+
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * GstVideoOverlay and Qt
 *
 * $(DDOC_COMMENT example)
 */
public class VideoOverlay
{
	
	/** the main Gtk struct */
	protected GstVideoOverlay* gstVideoOverlay;
	
	
	public GstVideoOverlay* getVideoOverlayStruct()
	{
		return gstVideoOverlay;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstVideoOverlay;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstVideoOverlay* gstVideoOverlay)
	{
		this.gstVideoOverlay = gstVideoOverlay;
	}
	
	/**
	 * The Element parameter should usually be
	 * your videosink that you want to create your
	 * XOverlay with.
	 */
	public this(Element elem)
	{
		this( cast(GstVideoOverlay*)elem.getElementStruct() );
	}
	
	/**
	 */
	
	/**
	 * This will post a "have-window-handle" element message on the bus.
	 * This function should only be used by video overlay plugin developers.
	 * Params:
	 * handle = a platform-specific handle referencing the window
	 */
	public void gotWindowHandle(guintptr handle)
	{
		// void gst_video_overlay_got_window_handle (GstVideoOverlay *overlay,  guintptr handle);
		gst_video_overlay_got_window_handle(gstVideoOverlay, handle);
	}
	
	/**
	 * This will call the video overlay's set_window_handle method. You
	 * should use this method to tell to an overlay to display video output to a
	 * specific window (e.g. an XWindow on X11). Passing 0 as the handle will
	 * tell the overlay to stop using that window and create an internal one.
	 * Params:
	 * handle = a handle referencing the window.
	 */
	public void setWindowHandle(guintptr handle)
	{
		// void gst_video_overlay_set_window_handle (GstVideoOverlay *overlay,  guintptr handle);
		gst_video_overlay_set_window_handle(gstVideoOverlay, handle);
	}
	
	/**
	 * This will post a "prepare-window-handle" element message on the bus
	 * to give applications an opportunity to call
	 * gst_video_overlay_set_window_handle() before a plugin creates its own
	 * window.
	 * This function should only be used by video overlay plugin developers.
	 */
	public void prepareWindowHandle()
	{
		// void gst_video_overlay_prepare_window_handle  (GstVideoOverlay *overlay);
		gst_video_overlay_prepare_window_handle(gstVideoOverlay);
	}
	
	/**
	 * Tell an overlay that it has been exposed. This will redraw the current frame
	 * in the drawable even if the pipeline is PAUSED.
	 */
	public void expose()
	{
		// void gst_video_overlay_expose (GstVideoOverlay *overlay);
		gst_video_overlay_expose(gstVideoOverlay);
	}
	
	/**
	 * Tell an overlay that it should handle events from the window system. These
	 * events are forwarded upstream as navigation events. In some window system,
	 * events are not propagated in the window hierarchy if a client is listening
	 * for them. This method allows you to disable events handling completely
	 * from the GstVideoOverlay.
	 * Params:
	 * handleEvents = a gboolean indicating if events should be handled or not.
	 */
	public void handleEvents(int handleEvents)
	{
		// void gst_video_overlay_handle_events (GstVideoOverlay *overlay,  gboolean handle_events);
		gst_video_overlay_handle_events(gstVideoOverlay, handleEvents);
	}
	
	/**
	 * Configure a subregion as a video target within the window set by
	 * gst_video_overlay_set_window_handle(). If this is not used or not supported
	 * the video will fill the area of the window set as the overlay to 100%.
	 * By specifying the rectangle, the video can be overlayed to a specific region
	 * of that window only. After setting the new rectangle one should call
	 * gst_video_overlay_expose() to force a redraw. To unset the region pass -1 for
	 * the width and height parameters.
	 * This method is needed for non fullscreen video overlay in UI toolkits that
	 * do not support subwindows.
	 * Params:
	 * x = the horizontal offset of the render area inside the window
	 * y = the vertical offset of the render area inside the window
	 * width = the width of the render area inside the window
	 * height = the height of the render area inside the window
	 * Returns: FALSE if not supported by the sink.
	 */
	public int setRenderRectangle(int x, int y, int width, int height)
	{
		// gboolean gst_video_overlay_set_render_rectangle  (GstVideoOverlay *overlay,  gint x,  gint y,  gint width,  gint height);
		return gst_video_overlay_set_render_rectangle(gstVideoOverlay, x, y, width, height);
	}
}
