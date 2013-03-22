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
 * inFile  = GUnixFDMessage.html
 * outPack = gio
 * outFile = UnixFDMessage
 * strct   = GUnixFDMessage
 * realStrct=
 * ctorStrct=GSocketControlMessage
 * clss    = UnixFDMessage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_fd_message_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.UnixFDList
 * structWrap:
 * 	- GUnixFDList* -> UnixFDList
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixFDMessage;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.UnixFDList;



private import gio.SocketControlMessage;

/**
 * This GSocketControlMessage contains a GUnixFDList.
 * It may be sent using g_socket_send_message() and received using
 * g_socket_receive_message() over UNIX sockets (ie: sockets in the
 * G_SOCKET_ADDRESS_UNIX family). The file descriptors are copied
 * between processes by the kernel.
 *
 * For an easier way to send and receive file descriptors over
 * stream-oriented UNIX sockets, see g_unix_connection_send_fd() and
 * g_unix_connection_receive_fd().
 *
 * Note that <gio/gunixfdmessage.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public class UnixFDMessage : SocketControlMessage
{
	
	/** the main Gtk struct */
	protected GUnixFDMessage* gUnixFDMessage;
	
	
	public GUnixFDMessage* getUnixFDMessageStruct()
	{
		return gUnixFDMessage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixFDMessage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixFDMessage* gUnixFDMessage)
	{
		super(cast(GSocketControlMessage*)gUnixFDMessage);
		this.gUnixFDMessage = gUnixFDMessage;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gUnixFDMessage = cast(GUnixFDMessage*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GUnixFDMessage containing list.
	 * Since 2.24
	 * Params:
	 * fdList = a GUnixFDList
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (UnixFDList fdList)
	{
		// GSocketControlMessage * g_unix_fd_message_new_with_fd_list  (GUnixFDList *fd_list);
		auto p = g_unix_fd_message_new_with_fd_list((fdList is null) ? null : fdList.getUnixFDListStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_fd_message_new_with_fd_list((fdList is null) ? null : fdList.getUnixFDListStruct())");
		}
		this(cast(GUnixFDMessage*) p);
	}
	
	/**
	 * Creates a new GUnixFDMessage containing an empty file descriptor
	 * list.
	 * Since 2.22
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSocketControlMessage * g_unix_fd_message_new (void);
		auto p = g_unix_fd_message_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_fd_message_new()");
		}
		this(cast(GUnixFDMessage*) p);
	}
	
	/**
	 * Gets the GUnixFDList contained in message. This function does not
	 * return a reference to the caller, but the returned list is valid for
	 * the lifetime of message.
	 * Since 2.24
	 * Returns: the GUnixFDList from message. [transfer none]
	 */
	public UnixFDList getFdList()
	{
		// GUnixFDList * g_unix_fd_message_get_fd_list (GUnixFDMessage *message);
		auto p = g_unix_fd_message_get_fd_list(gUnixFDMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(UnixFDList)(cast(GUnixFDList*) p);
	}
	
	/**
	 * Adds a file descriptor to message.
	 * The file descriptor is duplicated using dup(). You keep your copy
	 * of the descriptor and the copy contained in message will be closed
	 * when message is finalized.
	 * A possible cause of failure is exceeding the per-process or
	 * system-wide file descriptor limit.
	 * Since 2.22
	 * Params:
	 * fd = a valid open file descriptor
	 * Returns: TRUE in case of success, else FALSE (and error is set)
	 * Throws: GException on failure.
	 */
	public int appendFd(int fd)
	{
		// gboolean g_unix_fd_message_append_fd (GUnixFDMessage *message,  gint fd,  GError **error);
		GError* err = null;
		
		auto p = g_unix_fd_message_append_fd(gUnixFDMessage, fd, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the array of file descriptors that is contained in this
	 * object.
	 * After this call, the descriptors are no longer contained in
	 * message. Further calls will return an empty list (unless more
	 * descriptors have been added).
	 * The return result of this function must be freed with g_free().
	 * The caller is also responsible for closing all of the file
	 * descriptors.
	 * If length is non-NULL then it is set to the number of file
	 * descriptors in the returned array. The returned array is also
	 * terminated with -1.
	 * This function never returns NULL. In case there are no file
	 * descriptors contained in message, an empty array is returned.
	 * Since 2.22
	 * Returns: an array of file descriptors. [array length=length][transfer full]
	 */
	public int[] stealFds()
	{
		// gint * g_unix_fd_message_steal_fds (GUnixFDMessage *message,  gint *length);
		int length;
		auto p = g_unix_fd_message_steal_fds(gUnixFDMessage, &length);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
}
