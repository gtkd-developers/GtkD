/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.Socket;

private import def.Types;
private import def.Constants;
private import dui.Container;
private import lib.gtk;


/****************************
  This module is linux only 
  
  TODO: add version control
  to prevent invalid symbol
  function call on win32.
 ****************************/


/**
 * Container for widgets from other processes.
 */
public:
class Socket :
		Container
{
	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Container for widgets from other processes";}
		char[] author(){return "Antonio";}
	};
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_socket_get_type();
	}
	
	/**
	 * Creates a Socket from and GtkSocket
	 * @param gtkWidget the socket
	 */
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Create a new empty GtkSocket.
	 */
	this()
	{
		this(gtk_socket_new());
	}
	
	/**
	 * 
	 */
	deprecated
	{
		void steal(NativeWindow wid)
		{
			gtk_socket_steal(cast(GtkContainer*)gtkW(), wid);
		}
	};
		
	
	/**
	 * Adds an XEMBED client, such as a GtkPlug, to the GtkSocket.
	 * The client may be in the same process or in a different process.
	 * @param wid
	 */
	void addID(NativeWindow wid)
	{
		gtk_socket_add_id(cast(GtkContainer*)gtkW(), wid);
	}
	
	
	/**
	 * Gets the window ID of a GtkSocket widget
	 * The socket widget can then be used to create a client embedded inside the socket,
	 * for instance with gtk_plug_new().
	 */
	NativeWindow getID()
	{
		return gtk_socket_get_id(cast(GtkContainer*)gtkW());
	}

}
