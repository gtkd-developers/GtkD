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


module gtk.Socket;

private import gdk.Window;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Container;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Together with #GtkPlug, #GtkSocket provides the ability to embed
 * widgets from one process into another process in a fashion that
 * is transparent to the user. One process creates a #GtkSocket widget
 * and passes that widget’s window ID to the other process, which then
 * creates a #GtkPlug with that window ID. Any widgets contained in the
 * #GtkPlug then will appear inside the first application’s window.
 * 
 * The socket’s window ID is obtained by using gtk_socket_get_id().
 * Before using this function, the socket must have been realized,
 * and for hence, have been added to its parent.
 * 
 * ## Obtaining the window ID of a socket.
 * 
 * |[<!-- language="C" -->
 * GtkWidget *socket = gtk_socket_new ();
 * gtk_widget_show (socket);
 * gtk_container_add (GTK_CONTAINER (parent), socket);
 * 
 * // The following call is only necessary if one of
 * // the ancestors of the socket is not yet visible.
 * gtk_widget_realize (socket);
 * g_print ("The ID of the sockets window is %#x\n",
 * gtk_socket_get_id (socket));
 * ]|
 * 
 * Note that if you pass the window ID of the socket to another
 * process that will create a plug in the socket, you must make
 * sure that the socket widget is not destroyed until that plug
 * is created. Violating this rule will cause unpredictable
 * consequences, the most likely consequence being that the plug
 * will appear as a separate toplevel window. You can check if
 * the plug has been created by using gtk_socket_get_plug_window().
 * If it returns a non-%NULL value, then the plug has been
 * successfully created inside of the socket.
 * 
 * When GTK+ is notified that the embedded window has been destroyed,
 * then it will destroy the socket as well. You should always,
 * therefore, be prepared for your sockets to be destroyed at any
 * time when the main event loop is running. To prevent this from
 * happening, you can connect to the #GtkSocket::plug-removed signal.
 * 
 * The communication between a #GtkSocket and a #GtkPlug follows the
 * [XEmbed Protocol](http://www.freedesktop.org/Standards/xembed-spec).
 * This protocol has also been implemented in other toolkits, e.g. Qt,
 * allowing the same level of integration when embedding a Qt widget
 * in GTK or vice versa.
 * 
 * The #GtkPlug and #GtkSocket widgets are only available when GTK+
 * is compiled for the X11 platform and %GDK_WINDOWING_X11 is defined.
 * They can only be used on a #GdkX11Display. To use #GtkPlug and
 * #GtkSocket, you need to include the `gtk/gtkx.h` header.
 */
public class Socket : Container
{
	/** the main Gtk struct */
	protected GtkSocket* gtkSocket;

	/** Get the main Gtk struct */
	public GtkSocket* getSocketStruct()
	{
		return gtkSocket;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSocket;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkSocket = cast(GtkSocket*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSocket* gtkSocket, bool ownedRef = false)
	{
		this.gtkSocket = gtkSocket;
		super(cast(GtkContainer*)gtkSocket, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_socket_get_type();
	}

	/**
	 * Create a new empty #GtkSocket.
	 *
	 * Return: the new #GtkSocket.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_socket_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkSocket*) p);
	}

	/**
	 * Adds an XEMBED client, such as a #GtkPlug, to the #GtkSocket.  The
	 * client may be in the same process or in a different process.
	 *
	 * To embed a #GtkPlug in a #GtkSocket, you can either create the
	 * #GtkPlug with `gtk_plug_new (0)`, call
	 * gtk_plug_get_id() to get the window ID of the plug, and then pass that to the
	 * gtk_socket_add_id(), or you can call gtk_socket_get_id() to get the
	 * window ID for the socket, and call gtk_plug_new() passing in that
	 * ID.
	 *
	 * The #GtkSocket must have already be added into a toplevel window
	 * before you can make this call.
	 *
	 * Params:
	 *     window = the Window of a client participating in the XEMBED protocol.
	 */
	public void addId(ulong window)
	{
		gtk_socket_add_id(gtkSocket, window);
	}

	/**
	 * Gets the window ID of a #GtkSocket widget, which can then
	 * be used to create a client embedded inside the socket, for
	 * instance with gtk_plug_new().
	 *
	 * The #GtkSocket must have already be added into a toplevel window
	 * before you can make this call.
	 *
	 * Return: the window ID for the socket
	 */
	public ulong getId()
	{
		return gtk_socket_get_id(gtkSocket);
	}

	/**
	 * Retrieves the window of the plug. Use this to check if the plug has
	 * been created inside of the socket.
	 *
	 * Return: the window of the plug if
	 *     available, or %NULL
	 *
	 * Since: 2.14
	 */
	public Window getPlugWindow()
	{
		auto p = gtk_socket_get_plug_window(gtkSocket);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	protected class OnPlugAddedDelegateWrapper
	{
		void delegate(Socket) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Socket) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPlugAddedDelegateWrapper[] onPlugAddedListeners;

	/**
	 * This signal is emitted when a client is successfully
	 * added to the socket.
	 */
	gulong addOnPlugAdded(void delegate(Socket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPlugAddedListeners ~= new OnPlugAddedDelegateWrapper(dlg, 0, connectFlags);
		onPlugAddedListeners[onPlugAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"plug-added",
			cast(GCallback)&callBackPlugAdded,
			cast(void*)onPlugAddedListeners[onPlugAddedListeners.length - 1],
			cast(GClosureNotify)&callBackPlugAddedDestroy,
			connectFlags);
		return onPlugAddedListeners[onPlugAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPlugAdded(GtkSocket* socketStruct,OnPlugAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPlugAddedDestroy(OnPlugAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPlugAdded(wrapper);
	}

	protected void internalRemoveOnPlugAdded(OnPlugAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onPlugAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPlugAddedListeners[index] = null;
				onPlugAddedListeners = std.algorithm.remove(onPlugAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnPlugRemovedDelegateWrapper
	{
		bool delegate(Socket) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(Socket) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPlugRemovedDelegateWrapper[] onPlugRemovedListeners;

	/**
	 * This signal is emitted when a client is removed from the socket.
	 * The default action is to destroy the #GtkSocket widget, so if you
	 * want to reuse it you must add a signal handler that returns %TRUE.
	 *
	 * Return: %TRUE to stop other handlers from being invoked.
	 */
	gulong addOnPlugRemoved(bool delegate(Socket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPlugRemovedListeners ~= new OnPlugRemovedDelegateWrapper(dlg, 0, connectFlags);
		onPlugRemovedListeners[onPlugRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"plug-removed",
			cast(GCallback)&callBackPlugRemoved,
			cast(void*)onPlugRemovedListeners[onPlugRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackPlugRemovedDestroy,
			connectFlags);
		return onPlugRemovedListeners[onPlugRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackPlugRemoved(GtkSocket* socketStruct,OnPlugRemovedDelegateWrapper wrapper)
	{
		return wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackPlugRemovedDestroy(OnPlugRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPlugRemoved(wrapper);
	}

	protected void internalRemoveOnPlugRemoved(OnPlugRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onPlugRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPlugRemovedListeners[index] = null;
				onPlugRemovedListeners = std.algorithm.remove(onPlugRemovedListeners, index);
				break;
			}
		}
	}
	
}
