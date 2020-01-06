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


module gio.UnixInputStream;

private import gio.FileDescriptorBasedIF;
private import gio.FileDescriptorBasedT;
private import gio.InputStream;
private import gio.PollableInputStreamIF;
private import gio.PollableInputStreamT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * #GUnixInputStream implements #GInputStream for reading from a UNIX
 * file descriptor, including asynchronous operations. (If the file
 * descriptor refers to a socket or pipe, this will use poll() to do
 * asynchronous I/O. If it refers to a regular file, it will fall back
 * to doing asynchronous I/O in another thread.)
 * 
 * Note that `<gio/gunixinputstream.h>` belongs to the UNIX-specific GIO
 * interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
 * file when using it.
 */
public class UnixInputStream : InputStream, FileDescriptorBasedIF, PollableInputStreamIF
{
	/** the main Gtk struct */
	protected GUnixInputStream* gUnixInputStream;

	/** Get the main Gtk struct */
	public GUnixInputStream* getUnixInputStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixInputStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixInputStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixInputStream* gUnixInputStream, bool ownedRef = false)
	{
		this.gUnixInputStream = gUnixInputStream;
		super(cast(GInputStream*)gUnixInputStream, ownedRef);
	}

	// add the FileDescriptorBased capabilities
	mixin FileDescriptorBasedT!(GUnixInputStream);

	// add the PollableInputStream capabilities
	mixin PollableInputStreamT!(GUnixInputStream);


	/** */
	public static GType getType()
	{
		return g_unix_input_stream_get_type();
	}

	/**
	 * Creates a new #GUnixInputStream for the given @fd.
	 *
	 * If @close_fd is %TRUE, the file descriptor will be closed
	 * when the stream is closed.
	 *
	 * Params:
	 *     fd = a UNIX file descriptor
	 *     closeFd = %TRUE to close the file descriptor when done
	 *
	 * Returns: a new #GUnixInputStream
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd, bool closeFd)
	{
		auto __p = g_unix_input_stream_new(fd, closeFd);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GUnixInputStream*) __p, true);
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
		return g_unix_input_stream_get_close_fd(gUnixInputStream) != 0;
	}

	/**
	 * Return the UNIX file descriptor that the stream reads from.
	 *
	 * Returns: The file descriptor of @stream
	 *
	 * Since: 2.20
	 */
	public int getFd()
	{
		return g_unix_input_stream_get_fd(gUnixInputStream);
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
		g_unix_input_stream_set_close_fd(gUnixInputStream, closeFd);
	}
}
