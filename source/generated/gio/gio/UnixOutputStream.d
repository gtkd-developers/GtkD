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


module gio.UnixOutputStream;

private import gio.FileDescriptorBasedIF;
private import gio.FileDescriptorBasedT;
private import gio.OutputStream;
private import gio.PollableOutputStreamIF;
private import gio.PollableOutputStreamT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GUnixOutputStream implements #GOutputStream for writing to a UNIX
 * file descriptor, including asynchronous operations. (If the file
 * descriptor refers to a socket or pipe, this will use poll() to do
 * asynchronous I/O. If it refers to a regular file, it will fall back
 * to doing asynchronous I/O in another thread.)
 * 
 * Note that `<gio/gunixoutputstream.h>` belongs to the UNIX-specific GIO
 * interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
 * when using it.
 */
public class UnixOutputStream : OutputStream, FileDescriptorBasedIF, PollableOutputStreamIF
{
	/** the main Gtk struct */
	protected GUnixOutputStream* gUnixOutputStream;

	/** Get the main Gtk struct */
	public GUnixOutputStream* getUnixOutputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixOutputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixOutputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixOutputStream* gUnixOutputStream, bool ownedRef = false)
	{
		this.gUnixOutputStream = gUnixOutputStream;
		super(cast(GOutputStream*)gUnixOutputStream, ownedRef);
	}

	// add the FileDescriptorBased capabilities
	mixin FileDescriptorBasedT!(GUnixOutputStream);

	// add the PollableOutputStream capabilities
	mixin PollableOutputStreamT!(GUnixOutputStream);


	/** */
	public static GType getType()
	{
		return g_unix_output_stream_get_type();
	}

	/**
	 * Creates a new #GUnixOutputStream for the given @fd.
	 *
	 * If @close_fd, is %TRUE, the file descriptor will be closed when
	 * the output stream is destroyed.
	 *
	 * Params:
	 *     fd = a UNIX file descriptor
	 *     closeFd = %TRUE to close the file descriptor when done
	 *
	 * Returns: a new #GOutputStream
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd, bool closeFd)
	{
		auto __p = g_unix_output_stream_new(fd, closeFd);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GUnixOutputStream*) __p, true);
	}

	/**
	 * Returns whether the file descriptor of @stream will be
	 * closed when the stream is closed.
	 *
	 * Returns: %TRUE if the file descriptor is closed when done
	 *
	 * Since: 2.20
	 */
	public bool getCloseFd()
	{
		return g_unix_output_stream_get_close_fd(gUnixOutputStream) != 0;
	}

	/**
	 * Return the UNIX file descriptor that the stream writes to.
	 *
	 * Returns: The file descriptor of @stream
	 *
	 * Since: 2.20
	 */
	public int getFd()
	{
		return g_unix_output_stream_get_fd(gUnixOutputStream);
	}

	/**
	 * Sets whether the file descriptor of @stream shall be closed
	 * when the stream is closed.
	 *
	 * Params:
	 *     closeFd = %TRUE to close the file descriptor when done
	 *
	 * Since: 2.20
	 */
	public void setCloseFd(bool closeFd)
	{
		g_unix_output_stream_set_close_fd(gUnixOutputStream, closeFd);
	}
}
