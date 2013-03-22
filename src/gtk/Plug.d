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
 * inFile  = GtkPlug.html
 * outPack = gtk
 * outFile = Plug
 * strct   = GtkPlug
 * realStrct=
 * ctorStrct=
 * clss    = Plug
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_plug_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Display
 * structWrap:
 * 	- GdkDisplay* -> Display
 * module aliases:
 * local aliases:
 * 	- Window -> gulong
 * overrides:
 */

module gtk.Plug;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gdk.Display;



private import gtk.Window;

/**
 * Together with GtkSocket, GtkPlug provides the ability to embed
 * widgets from one process into another process in a fashion that is
 * transparent to the user. One process creates a GtkSocket widget
 * and passes the ID of that widget's window to the other process,
 * which then creates a GtkPlug with that window ID. Any widgets
 * contained in the GtkPlug then will appear inside the first
 * application's window.
 *
 * The communication between a GtkSocket and a GtkPlug follows the
 * XEmbed
 * protocol. This protocol has also been implemented in other toolkits,
 * e.g. Qt, allowing the same level of
 * integration when embedding a Qt widget
 * in GTK+ or vice versa.
 *
 * Note
 *
 * The GtkPlug and GtkSocket widgets are only available when GTK+
 * is compiled for the X11 platform and GDK_WINDOWING_X11 is defined.
 * They can only be used on a GdkX11Display. To use GtkPlug and
 * GtkSocket, you need to include the gtk/gtkx.h
 * header.
 */
public class Plug : Window
{
	
	/** the main Gtk struct */
	protected GtkPlug* gtkPlug;
	
	
	public GtkPlug* getPlugStruct()
	{
		return gtkPlug;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPlug;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPlug* gtkPlug)
	{
		super(cast(GtkWindow*)gtkPlug);
		this.gtkPlug = gtkPlug;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkPlug = cast(GtkPlug*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Plug)[] onEmbeddedListeners;
	/**
	 * Gets emitted when the plug becomes embedded in a socket.
	 * See Also
	 * GtkSocket
	 */
	void addOnEmbedded(void delegate(Plug) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("embedded" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"embedded",
			cast(GCallback)&callBackEmbedded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["embedded"] = 1;
		}
		onEmbeddedListeners ~= dlg;
	}
	extern(C) static void callBackEmbedded(GtkPlug* plugStruct, Plug _plug)
	{
		foreach ( void delegate(Plug) dlg ; _plug.onEmbeddedListeners )
		{
			dlg(_plug);
		}
	}
	
	
	/**
	 * Finish the initialization of plug for a given GtkSocket identified by
	 * socket_id. This function will generally only be used by classes deriving from GtkPlug.
	 * Params:
	 * socketId = the XID of the socket's window.
	 */
	public void construct(gulong socketId)
	{
		// void gtk_plug_construct (GtkPlug *plug,  Window socket_id);
		gtk_plug_construct(gtkPlug, socketId);
	}
	
	/**
	 * Finish the initialization of plug for a given GtkSocket identified by
	 * socket_id which is currently displayed on display.
	 * This function will generally only be used by classes deriving from GtkPlug.
	 * Since 2.2
	 * Params:
	 * display = the GdkDisplay associated with socket_id's
	 * GtkSocket.
	 * socketId = the XID of the socket's window.
	 */
	public void constructForDisplay(Display display, gulong socketId)
	{
		// void gtk_plug_construct_for_display (GtkPlug *plug,  GdkDisplay *display,  Window socket_id);
		gtk_plug_construct_for_display(gtkPlug, (display is null) ? null : display.getDisplayStruct(), socketId);
	}
	
	/**
	 * Creates a new plug widget inside the GtkSocket identified
	 * by socket_id. If socket_id is 0, the plug is left "unplugged" and
	 * can later be plugged into a GtkSocket by gtk_socket_add_id().
	 * Params:
	 * socketId = the window ID of the socket, or 0.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (gulong socketId)
	{
		// GtkWidget * gtk_plug_new (Window socket_id);
		auto p = gtk_plug_new(socketId);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_plug_new(socketId)");
		}
		this(cast(GtkPlug*) p);
	}
	
	/**
	 * Create a new plug widget inside the GtkSocket identified by socket_id.
	 * Since 2.2
	 * Params:
	 * display = the GdkDisplay on which socket_id is displayed
	 * socketId = the XID of the socket's window.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Display display, gulong socketId)
	{
		// GtkWidget * gtk_plug_new_for_display (GdkDisplay *display,  Window socket_id);
		auto p = gtk_plug_new_for_display((display is null) ? null : display.getDisplayStruct(), socketId);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_plug_new_for_display((display is null) ? null : display.getDisplayStruct(), socketId)");
		}
		this(cast(GtkPlug*) p);
	}
	
	/**
	 * Gets the window ID of a GtkPlug widget, which can then
	 * be used to embed this window inside another window, for
	 * instance with gtk_socket_add_id().
	 * Returns: the window ID for the plug
	 */
	public gulong getId()
	{
		// Window gtk_plug_get_id (GtkPlug *plug);
		return gtk_plug_get_id(gtkPlug);
	}
	
	/**
	 * Determines whether the plug is embedded in a socket.
	 * Since 2.14
	 * Returns: TRUE if the plug is embedded in a socket
	 */
	public int getEmbedded()
	{
		// gboolean gtk_plug_get_embedded (GtkPlug *plug);
		return gtk_plug_get_embedded(gtkPlug);
	}
	
	/**
	 * Retrieves the socket the plug is embedded in.
	 * Since 2.14
	 * Returns: the window of the socket, or NULL. [transfer none]
	 */
	public GdkWindow* getSocketWindow()
	{
		// GdkWindow * gtk_plug_get_socket_window (GtkPlug *plug);
		return gtk_plug_get_socket_window(gtkPlug);
	}
}
