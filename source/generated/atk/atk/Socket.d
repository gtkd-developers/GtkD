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


module atk.Socket;

private import atk.ComponentIF;
private import atk.ComponentT;
private import atk.ObjectAtk;
private import atk.c.functions;
public  import atk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * Together with #AtkPlug, #AtkSocket provides the ability to embed
 * accessibles from one process into another in a fashion that is
 * transparent to assistive technologies. #AtkSocket works as the
 * container of #AtkPlug, embedding it using the method
 * atk_socket_embed(). Any accessible contained in the #AtkPlug will
 * appear to the assistive technologies as being inside the
 * application that created the #AtkSocket.
 * 
 * The communication between a #AtkSocket and a #AtkPlug is done by
 * the IPC layer of the accessibility framework, normally implemented
 * by the D-Bus based implementation of AT-SPI (at-spi2). If that is
 * the case, at-spi-atk2 is the responsible to implement the abstract
 * methods atk_plug_get_id() and atk_socket_embed(), so an ATK
 * implementor shouldn't reimplement them. The process that contains
 * the #AtkPlug is responsible to send the ID returned by
 * atk_plug_id() to the process that contains the #AtkSocket, so it
 * could call the method atk_socket_embed() in order to embed it.
 * 
 * For the same reasons, an implementor doesn't need to implement
 * atk_object_get_n_accessible_children() and
 * atk_object_ref_accessible_child(). All the logic related to those
 * functions will be implemented by the IPC layer.
 */
public class Socket : ObjectAtk, ComponentIF
{
	/** the main Gtk struct */
	protected AtkSocket* atkSocket;

	/** Get the main Gtk struct */
	public AtkSocket* getSocketStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return atkSocket;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)atkSocket;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AtkSocket* atkSocket, bool ownedRef = false)
	{
		this.atkSocket = atkSocket;
		super(cast(AtkObject*)atkSocket, ownedRef);
	}

	// add the Component capabilities
	mixin ComponentT!(AtkSocket);


	/** */
	public static GType getType()
	{
		return atk_socket_get_type();
	}

	/**
	 * Creates a new #AtkSocket.
	 *
	 * Returns: the newly created #AtkSocket instance
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = atk_socket_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AtkSocket*) __p, true);
	}

	/**
	 * Embeds the children of an #AtkPlug as the children of the
	 * #AtkSocket. The plug may be in the same process or in a different
	 * process.
	 *
	 * The class item used by this function should be filled in by the IPC
	 * layer (usually at-spi2-atk). The implementor of the AtkSocket
	 * should call this function and pass the id for the plug as returned
	 * by atk_plug_get_id().  It is the responsibility of the application
	 * to pass the plug id on to the process implementing the #AtkSocket
	 * as needed.
	 *
	 * Params:
	 *     plugId = the ID of an #AtkPlug
	 *
	 * Since: 1.30
	 */
	public void embed(string plugId)
	{
		atk_socket_embed(atkSocket, Str.toStringz(plugId));
	}

	/**
	 * Determines whether or not the socket has an embedded plug.
	 *
	 * Returns: TRUE if a plug is embedded in the socket
	 *
	 * Since: 1.30
	 */
	public bool isOccupied()
	{
		return atk_socket_is_occupied(atkSocket) != 0;
	}
}
