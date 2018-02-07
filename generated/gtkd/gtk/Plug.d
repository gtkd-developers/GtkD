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


module gtk.Plug;

private import gdk.Display;
private import gdk.Window : GdkWin = Window;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * Together with #GtkSocket, #GtkPlug provides the ability to embed
 * widgets from one process into another process in a fashion that is
 * transparent to the user. One process creates a #GtkSocket widget
 * and passes the ID of that widget’s window to the other process,
 * which then creates a #GtkPlug with that window ID. Any widgets
 * contained in the #GtkPlug then will appear inside the first
 * application’s window.
 * 
 * The communication between a #GtkSocket and a #GtkPlug follows the
 * [XEmbed Protocol](http://www.freedesktop.org/Standards/xembed-spec).
 * This protocol has also been implemented in other toolkits, e.g. Qt,
 * allowing the same level of integration when embedding a Qt widget
 * in GTK+ or vice versa.
 * 
 * The #GtkPlug and #GtkSocket widgets are only available when GTK+
 * is compiled for the X11 platform and %GDK_WINDOWING_X11 is defined.
 * They can only be used on a #GdkX11Display. To use #GtkPlug and
 * #GtkSocket, you need to include the `gtk/gtkx.h` header.
 */
public class Plug : Window
{
	/** the main Gtk struct */
	protected GtkPlug* gtkPlug;

	/** Get the main Gtk struct */
	public GtkPlug* getPlugStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPlug;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPlug;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPlug* gtkPlug, bool ownedRef = false)
	{
		this.gtkPlug = gtkPlug;
		super(cast(GtkWindow*)gtkPlug, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_plug_get_type();
	}

	/**
	 * Creates a new plug widget inside the #GtkSocket identified
	 * by @socket_id. If @socket_id is 0, the plug is left “unplugged” and
	 * can later be plugged into a #GtkSocket by  gtk_socket_add_id().
	 *
	 * Params:
	 *     socketId = the window ID of the socket, or 0.
	 *
	 * Returns: the new #GtkPlug widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ulong socketId)
	{
		auto p = gtk_plug_new(socketId);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPlug*) p);
	}

	/**
	 * Create a new plug widget inside the #GtkSocket identified by socket_id.
	 *
	 * Params:
	 *     display = the #GdkDisplay on which @socket_id is displayed
	 *     socketId = the XID of the socket’s window.
	 *
	 * Returns: the new #GtkPlug widget.
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, ulong socketId)
	{
		auto p = gtk_plug_new_for_display((display is null) ? null : display.getDisplayStruct(), socketId);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_display");
		}

		this(cast(GtkPlug*) p);
	}

	/**
	 * Finish the initialization of @plug for a given #GtkSocket identified by
	 * @socket_id. This function will generally only be used by classes deriving from #GtkPlug.
	 *
	 * Params:
	 *     socketId = the XID of the socket’s window.
	 */
	public void construct(ulong socketId)
	{
		gtk_plug_construct(gtkPlug, socketId);
	}

	/**
	 * Finish the initialization of @plug for a given #GtkSocket identified by
	 * @socket_id which is currently displayed on @display.
	 * This function will generally only be used by classes deriving from #GtkPlug.
	 *
	 * Params:
	 *     display = the #GdkDisplay associated with @socket_id’s
	 *         #GtkSocket.
	 *     socketId = the XID of the socket’s window.
	 *
	 * Since: 2.2
	 */
	public void constructForDisplay(Display display, ulong socketId)
	{
		gtk_plug_construct_for_display(gtkPlug, (display is null) ? null : display.getDisplayStruct(), socketId);
	}

	/**
	 * Determines whether the plug is embedded in a socket.
	 *
	 * Returns: %TRUE if the plug is embedded in a socket
	 *
	 * Since: 2.14
	 */
	public bool getEmbedded()
	{
		return gtk_plug_get_embedded(gtkPlug) != 0;
	}

	/**
	 * Gets the window ID of a #GtkPlug widget, which can then
	 * be used to embed this window inside another window, for
	 * instance with gtk_socket_add_id().
	 *
	 * Returns: the window ID for the plug
	 */
	public ulong getId()
	{
		return gtk_plug_get_id(gtkPlug);
	}

	/**
	 * Retrieves the socket the plug is embedded in.
	 *
	 * Returns: the window of the socket, or %NULL
	 *
	 * Since: 2.14
	 */
	public GdkWin getSocketWindow()
	{
		auto p = gtk_plug_get_socket_window(gtkPlug);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GdkWin)(cast(GdkWindow*) p);
	}

	/**
	 * Gets emitted when the plug becomes embedded in a socket.
	 */
	gulong addOnEmbedded(void delegate(Plug) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "embedded", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
