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
 * inFile  = GtkSocket.html
 * outPack = gtk
 * outFile = Socket
 * strct   = GtkSocket
 * realStrct=
 * ctorStrct=
 * clss    = Socket
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_socket_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Socket;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.Container;

/**
 * Description
 * Together with GtkPlug, GtkSocket provides the ability
 * to embed widgets from one process into another process
 * in a fashion that is transparent to the user. One
 * process creates a GtkSocket widget and, passes the
 * that widget's window ID to the other process,
 * which then creates a GtkPlug with that window ID.
 * Any widgets contained in the GtkPlug then will appear
 * inside the first applications window.
 * The socket's window ID is obtained by using
 * gtk_socket_get_id(). Before using this function,
 * the socket must have been realized, and for hence,
 * have been added to its parent.
 * Example48.Obtaining the window ID of a socket.
 * GtkWidget *socket = gtk_socket_new ();
 * gtk_widget_show (socket);
 * gtk_container_add (GTK_CONTAINER (parent), socket);
 * /+* The following call is only necessary if one of
 *  * the ancestors of the socket is not yet visible.
 *  +/
 * gtk_widget_realize (socket);
 * g_print ("The ID of the sockets window is %x\n",
 *  gtk_socket_get_id (socket));
 * Note that if you pass the window ID of the socket to another
 * process that will create a plug in the socket, you
 * must make sure that the socket widget is not destroyed
 * until that plug is created. Violating this rule will
 * cause unpredictable consequences, the most likely
 * consequence being that the plug will appear as a
 * separate toplevel window. You can check if the plug
 * has been created by examining the
 * plug_window field of the
 * GtkSocket structure. If this field is non-NULL,
 * then the plug has been successfully created inside
 * of the socket.
 * When GTK+ is notified that the embedded window has been
 * destroyed, then it will destroy the socket as well. You
 * should always, therefore, be prepared for your sockets
 * to be destroyed at any time when the main event loop
 * is running. To prevent this from happening, you can
 * connect to the "plug-removed" signal.
 * The communication between a GtkSocket and a GtkPlug follows the
 * XEmbed
 * protocol. This protocol has also been implemented in other toolkits, e.g.
 * Qt, allowing the same level of integration
 * when embedding a Qt widget in GTK or vice versa.
 * A socket can also be used to swallow arbitrary
 * pre-existing top-level windows using gtk_socket_steal(),
 * though the integration when this is done will not be as close
 * as between a GtkPlug and a GtkSocket.
 * Note
 * The GtkPlug and GtkSocket widgets are currently not available
 * on all platforms supported by GTK+.
 */
public class Socket : Container
{
	
	/** the main Gtk struct */
	protected GtkSocket* gtkSocket;
	
	
	public GtkSocket* getSocketStruct()
	{
		return gtkSocket;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSocket;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSocket* gtkSocket)
	{
		if(gtkSocket is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkSocket);
		if( ptr !is null )
		{
			this = cast(Socket)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkSocket);
		this.gtkSocket = gtkSocket;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Socket)[] onPlugAddedListeners;
	/**
	 * This signal is emitted when a client is successfully
	 * added to the socket.
	 */
	void addOnPlugAdded(void delegate(Socket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("plug-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"plug-added",
			cast(GCallback)&callBackPlugAdded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["plug-added"] = 1;
		}
		onPlugAddedListeners ~= dlg;
	}
	extern(C) static void callBackPlugAdded(GtkSocket* socketStruct, Socket socket)
	{
		foreach ( void delegate(Socket) dlg ; socket.onPlugAddedListeners )
		{
			dlg(socket);
		}
	}
	
	bool delegate(Socket)[] onPlugRemovedListeners;
	/**
	 * This signal is emitted when a client is removed from the socket.
	 * The default action is to destroy the GtkSocket widget, so if you
	 * want to reuse it you must add a signal handler that returns TRUE.
	 * See Also
	 * GtkPlug
	 * the widget that plugs into a GtkSocket.
	 * XEmbed
	 * the XEmbed Protocol Specification.
	 */
	void addOnPlugRemoved(bool delegate(Socket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("plug-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"plug-removed",
			cast(GCallback)&callBackPlugRemoved,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["plug-removed"] = 1;
		}
		onPlugRemovedListeners ~= dlg;
	}
	extern(C) static gboolean callBackPlugRemoved(GtkSocket* socketStruct, Socket socket)
	{
		foreach ( bool delegate(Socket) dlg ; socket.onPlugRemovedListeners )
		{
			if ( dlg(socket) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Create a new empty GtkSocket.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_socket_new (void);
		auto p = gtk_socket_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_socket_new()");
		}
		this(cast(GtkSocket*) p);
	}
	
	/**
	 * Warning
	 * gtk_socket_steal is deprecated and should not be used in newly-written code.
	 * Reparents a pre-existing toplevel window into a GtkSocket. This is
	 * meant to embed clients that do not know about embedding into a
	 * GtkSocket, however doing so is inherently unreliable, and using
	 * this function is not recommended.
	 * The GtkSocket must have already be added into a toplevel window
	 *  before you can make this call.
	 * Params:
	 * wid =  the window ID of an existing toplevel window.
	 */
	public void steal(GdkNativeWindow wid)
	{
		// void gtk_socket_steal (GtkSocket *socket_,  GdkNativeWindow wid);
		gtk_socket_steal(gtkSocket, wid);
	}
	
	/**
	 * Adds an XEMBED client, such as a GtkPlug, to the GtkSocket. The
	 * client may be in the same process or in a different process.
	 * To embed a GtkPlug in a GtkSocket, you can either create the
	 * GtkPlug with gtk_plug_new (0), call
	 * gtk_plug_get_id() to get the window ID of the plug, and then pass that to the
	 * gtk_socket_add_id(), or you can call gtk_socket_get_id() to get the
	 * window ID for the socket, and call gtk_plug_new() passing in that
	 * ID.
	 * The GtkSocket must have already be added into a toplevel window
	 *  before you can make this call.
	 * Params:
	 * windowId =  the window ID of a client participating in the XEMBED protocol.
	 */
	public void addId(GdkNativeWindow windowId)
	{
		// void gtk_socket_add_id (GtkSocket *socket_,  GdkNativeWindow window_id);
		gtk_socket_add_id(gtkSocket, windowId);
	}
	
	/**
	 * Gets the window ID of a GtkSocket widget, which can then
	 * be used to create a client embedded inside the socket, for
	 * instance with gtk_plug_new().
	 * The GtkSocket must have already be added into a toplevel window
	 * before you can make this call.
	 * Returns: the window ID for the socketSignal DetailsThe "plug-added" signalvoid user_function (GtkSocket *socket_, gpointer user_data) : Run LastThis signal is emitted when a client is successfullyadded to the socket.
	 */
	public GdkNativeWindow getId()
	{
		// GdkNativeWindow gtk_socket_get_id (GtkSocket *socket_);
		return gtk_socket_get_id(gtkSocket);
	}
}
