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
 * inFile  = GUnixOutputStream.html
 * outPack = gio
 * outFile = UnixOutputStream
 * strct   = GUnixOutputStream
 * realStrct=
 * ctorStrct=GOutputStream
 * clss    = UnixOutputStream
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- PollableOutputStreamIF
 * prefixes:
 * 	- g_unix_output_stream_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.PollableOutputStreamT
 * 	- gio.PollableOutputStreamIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixOutputStream;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.PollableOutputStreamT;
private import gio.PollableOutputStreamIF;



private import gio.OutputStream;

/**
 * GUnixOutputStream implements GOutputStream for writing to a UNIX
 * file descriptor, including asynchronous operations. (If the file
 * descriptor refers to a socket or pipe, this will use poll() to do
 * asynchronous I/O. If it refers to a regular file, it will fall back
 * to doing asynchronous I/O in another thread.)
 *
 * Note that <gio/gunixoutputstream.h> belongs
 * to the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public class UnixOutputStream : OutputStream, PollableOutputStreamIF
{
	
	/** the main Gtk struct */
	protected GUnixOutputStream* gUnixOutputStream;
	
	
	public GUnixOutputStream* getUnixOutputStreamStruct()
	{
		return gUnixOutputStream;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixOutputStream;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixOutputStream* gUnixOutputStream)
	{
		super(cast(GOutputStream*)gUnixOutputStream);
		this.gUnixOutputStream = gUnixOutputStream;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gUnixOutputStream = cast(GUnixOutputStream*)obj;
	}
	
	// add the PollableOutputStream capabilities
	mixin PollableOutputStreamT!(GUnixOutputStream);
	
	/**
	 */
	
	/**
	 * Creates a new GUnixOutputStream for the given fd.
	 * If close_fd, is TRUE, the file descriptor will be closed when
	 * the output stream is destroyed.
	 * Params:
	 * fd = a UNIX file descriptor
	 * closeFd = TRUE to close the file descriptor when done
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int fd, int closeFd)
	{
		// GOutputStream * g_unix_output_stream_new (gint fd,  gboolean close_fd);
		auto p = g_unix_output_stream_new(fd, closeFd);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_output_stream_new(fd, closeFd)");
		}
		this(cast(GUnixOutputStream*) p);
	}
	
	/**
	 * Sets whether the file descriptor of stream shall be closed
	 * when the stream is closed.
	 * Since 2.20
	 * Params:
	 * closeFd = TRUE to close the file descriptor when done
	 */
	public void setCloseFd(int closeFd)
	{
		// void g_unix_output_stream_set_close_fd (GUnixOutputStream *stream,  gboolean close_fd);
		g_unix_output_stream_set_close_fd(gUnixOutputStream, closeFd);
	}
	
	/**
	 * Returns whether the file descriptor of stream will be
	 * closed when the stream is closed.
	 * Since 2.20
	 * Returns: TRUE if the file descriptor is closed when done
	 */
	public int getCloseFd()
	{
		// gboolean g_unix_output_stream_get_close_fd (GUnixOutputStream *stream);
		return g_unix_output_stream_get_close_fd(gUnixOutputStream);
	}
	
	/**
	 * Return the UNIX file descriptor that the stream writes to.
	 * Since 2.20
	 * Returns: The file descriptor of stream
	 */
	public int getFd()
	{
		// gint g_unix_output_stream_get_fd (GUnixOutputStream *stream);
		return g_unix_output_stream_get_fd(gUnixOutputStream);
	}
}
