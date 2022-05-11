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


module gio.UnixFDMessage;

private import gio.SocketControlMessage;
private import gio.UnixFDList;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * This #GSocketControlMessage contains a #GUnixFDList.
 * It may be sent using g_socket_send_message() and received using
 * g_socket_receive_message() over UNIX sockets (ie: sockets in the
 * %G_SOCKET_FAMILY_UNIX family). The file descriptors are copied
 * between processes by the kernel.
 * 
 * For an easier way to send and receive file descriptors over
 * stream-oriented UNIX sockets, see g_unix_connection_send_fd() and
 * g_unix_connection_receive_fd().
 * 
 * Note that `<gio/gunixfdmessage.h>` belongs to the UNIX-specific GIO
 * interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
 * file when using it.
 */
public class UnixFDMessage : SocketControlMessage
{
	/** the main Gtk struct */
	protected GUnixFDMessage* gUnixFDMessage;

	/** Get the main Gtk struct */
	public GUnixFDMessage* getUnixFDMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixFDMessage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixFDMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixFDMessage* gUnixFDMessage, bool ownedRef = false)
	{
		this.gUnixFDMessage = gUnixFDMessage;
		super(cast(GSocketControlMessage*)gUnixFDMessage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_unix_fd_message_get_type();
	}

	/**
	 * Creates a new #GUnixFDMessage containing an empty file descriptor
	 * list.
	 *
	 * Returns: a new #GUnixFDMessage
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_unix_fd_message_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GUnixFDMessage*) __p, true);
	}

	/**
	 * Creates a new #GUnixFDMessage containing @list.
	 *
	 * Params:
	 *     fdList = a #GUnixFDList
	 *
	 * Returns: a new #GUnixFDMessage
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(UnixFDList fdList)
	{
		auto __p = g_unix_fd_message_new_with_fd_list((fdList is null) ? null : fdList.getUnixFDListStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_fd_list");
		}

		this(cast(GUnixFDMessage*) __p, true);
	}

	/**
	 * Adds a file descriptor to @message.
	 *
	 * The file descriptor is duplicated using dup(). You keep your copy
	 * of the descriptor and the copy contained in @message will be closed
	 * when @message is finalized.
	 *
	 * A possible cause of failure is exceeding the per-process or
	 * system-wide file descriptor limit.
	 *
	 * Params:
	 *     fd = a valid open file descriptor
	 *
	 * Returns: %TRUE in case of success, else %FALSE (and @error is set)
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool appendFd(int fd)
	{
		GError* err = null;

		auto __p = g_unix_fd_message_append_fd(gUnixFDMessage, fd, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the #GUnixFDList contained in @message.  This function does not
	 * return a reference to the caller, but the returned list is valid for
	 * the lifetime of @message.
	 *
	 * Returns: the #GUnixFDList from @message
	 *
	 * Since: 2.24
	 */
	public UnixFDList getFdList()
	{
		auto __p = g_unix_fd_message_get_fd_list(gUnixFDMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixFDList)(cast(GUnixFDList*) __p);
	}

	/**
	 * Returns the array of file descriptors that is contained in this
	 * object.
	 *
	 * After this call, the descriptors are no longer contained in
	 * @message. Further calls will return an empty list (unless more
	 * descriptors have been added).
	 *
	 * The return result of this function must be freed with g_free().
	 * The caller is also responsible for closing all of the file
	 * descriptors.
	 *
	 * If @length is non-%NULL then it is set to the number of file
	 * descriptors in the returned array. The returned array is also
	 * terminated with -1.
	 *
	 * This function never returns %NULL. In case there are no file
	 * descriptors contained in @message, an empty array is returned.
	 *
	 * Returns: an array of file
	 *     descriptors
	 *
	 * Since: 2.22
	 */
	public int[] stealFds()
	{
		int length;

		auto __p = g_unix_fd_message_steal_fds(gUnixFDMessage, &length);

		return __p[0 .. length];
	}
}
