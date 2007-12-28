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
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gdk.Display
 * structWrap:
 * 	- GdkDisplay* -> Display
 * module aliases:
 * local aliases:
 */

module gtk.Plug;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gdk.Display;



private import gtk.Window;

/**
 * Description
 * Together with GtkSocket, GtkPlug provides the ability
 * to embed widgets from one process into another process
 * in a fashion that is transparent to the user. One
 * process creates a GtkSocket widget and, passes the
 * ID of that widgets window to the other process,
 * which then creates a GtkPlug with that window ID.
 * Any widgets contained in the GtkPlug then will appear
 * inside the first applications window.
 * Note
 * The GtkPlug and GtkSocket widgets are currently not available
 * on all platforms supported by GTK+.
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
	protected void* getStruct()
	{
		return cast(void*)gtkPlug;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkPlug* gtkPlug)
	{
		version(noAssert)
		{
			if ( gtkPlug is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkPlug is null on constructor").newline;
				}
				else
				{
					printf("struct gtkPlug is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkPlug !is null, "struct gtkPlug is null on constructor");
		}
		super(cast(GtkWindow*)gtkPlug);
		this.gtkPlug = gtkPlug;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Plug)[] onEmbeddedListeners;
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
	extern(C) static void callBackEmbedded(GtkPlug* plugStruct, Plug plug)
	{
		bool consumed = false;
		
		foreach ( void delegate(Plug) dlg ; plug.onEmbeddedListeners )
		{
			dlg(plug);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Finish the initialization of plug for a given GtkSocket identified by
	 * socket_id. This function will generally only be used by classes deriving from GtkPlug.
	 * Params:
	 * socketId =  the XID of the socket's window.
	 */
	public void construct(GdkNativeWindow socketId)
	{
		// void gtk_plug_construct (GtkPlug *plug,  GdkNativeWindow socket_id);
		gtk_plug_construct(gtkPlug, socketId);
	}
	
	/**
	 * Finish the initialization of plug for a given GtkSocket identified by
	 * socket_id which is currently displayed on display.
	 * This function will generally only be used by classes deriving from GtkPlug.
	 * Since 2.2
	 * Params:
	 * display =  the GdkDisplay associated with socket_id's
	 *  GtkSocket.
	 * socketId =  the XID of the socket's window.
	 */
	public void constructForDisplay(Display display, GdkNativeWindow socketId)
	{
		// void gtk_plug_construct_for_display (GtkPlug *plug,  GdkDisplay *display,  GdkNativeWindow socket_id);
		gtk_plug_construct_for_display(gtkPlug, (display is null) ? null : display.getDisplayStruct(), socketId);
	}
	
	/**
	 * Creates a new plug widget inside the GtkSocket identified
	 * by socket_id. If socket_id is 0, the plug is left "unplugged" and
	 * can later be plugged into a GtkSocket by gtk_socket_add_id().
	 * Params:
	 * socketId =  the window ID of the socket, or 0.
	 */
	public this (GdkNativeWindow socketId)
	{
		// GtkWidget* gtk_plug_new (GdkNativeWindow socket_id);
		this(cast(GtkPlug*)gtk_plug_new(socketId) );
	}
	
	/**
	 * Create a new plug widget inside the GtkSocket identified by socket_id.
	 * Since 2.2
	 * Params:
	 * display =  the GdkDisplay on which socket_id is displayed
	 * socketId =  the XID of the socket's window.
	 */
	public this (Display display, GdkNativeWindow socketId)
	{
		// GtkWidget* gtk_plug_new_for_display (GdkDisplay *display,  GdkNativeWindow socket_id);
		this(cast(GtkPlug*)gtk_plug_new_for_display((display is null) ? null : display.getDisplayStruct(), socketId) );
	}
	
	/**
	 * Gets the window ID of a GtkPlug widget, which can then
	 * be used to embed this window inside another window, for
	 * instance with gtk_socket_add_id().
	 * Returns: the window ID for the plug
	 */
	public GdkNativeWindow getId()
	{
		// GdkNativeWindow gtk_plug_get_id (GtkPlug *plug);
		return gtk_plug_get_id(gtkPlug);
	}
}
