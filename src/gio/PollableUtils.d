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
 * inFile  = gio-gpollableutils.html
 * outPack = gio
 * outFile = PollableUtils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Source
 * 	- gio.Cancellable
 * 	- gio.InputStream
 * 	- gio.OutputStream
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GInputStream* -> InputStream
 * 	- GObject* -> ObjectG
 * 	- GOutputStream* -> OutputStream
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.PollableUtils;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.ObjectG;
private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import gio.Cancellable;
private import gio.InputStream;
private import gio.OutputStream;




/**
 */

/**
 * Utility method for GPollableInputStream and GPollableOutputStream
 * implementations. Creates a new GSource that expects a callback of
 * type GPollableSourceFunc. The new source does not actually do
 * anything on its own; use g_source_add_child_source() to add other
 * sources to it to cause it to trigger.
 * Since 2.28
 * Params:
 * pollableStream = the stream associated with the new source
 * Returns: the new GSource. [transfer full]
 */
public static Source pollableSourceNew(ObjectG pollableStream)
{
	// GSource * g_pollable_source_new (GObject *pollable_stream);
	auto p = g_pollable_source_new((pollableStream is null) ? null : pollableStream.getObjectGStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(Source)(cast(GSource*) p);
}

/**
 * Utility method for GPollableInputStream and GPollableOutputStream
 * implementations. Creates a new GSource, as with
 * g_pollable_source_new(), but also attaching child_source (with a
 * dummy callback), and cancellable, if they are non-NULL.
 * Since 2.34
 * Params:
 * pollableStream = the stream associated with the
 * new source. [type GObject]
 * childSource = optional child source to attach. [allow-none]
 * cancellable = optional GCancellable to attach. [allow-none]
 * Returns: the new GSource. [transfer full]
 */
public static Source pollableSourceNewFull(void* pollableStream, Source childSource, Cancellable cancellable)
{
	// GSource * g_pollable_source_new_full (gpointer pollable_stream,  GSource *child_source,  GCancellable *cancellable);
	auto p = g_pollable_source_new_full(pollableStream, (childSource is null) ? null : childSource.getSourceStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(Source)(cast(GSource*) p);
}

/**
 * Tries to read from stream, as with g_input_stream_read() (if
 * blocking is TRUE) or g_pollable_input_stream_read_nonblocking()
 * (if blocking is FALSE). This can be used to more easily share
 * code between blocking and non-blocking implementations of a method.
 * If blocking is FALSE, then stream must be a
 * GPollableInputStream for which g_pollable_input_stream_can_poll()
 * returns TRUE, or else the behavior is undefined. If blocking is
 * TRUE, then stream does not need to be a GPollableInputStream.
 * Since 2.34
 * Params:
 * stream = a GInputStream
 * buffer = a buffer to read data into
 * blocking = whether to do blocking I/O
 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
 * Returns: the number of bytes read, or -1 on error.
 * Throws: GException on failure.
 */
public static gssize pollableStreamRead(InputStream stream, void[] buffer, int blocking, Cancellable cancellable)
{
	// gssize g_pollable_stream_read (GInputStream *stream,  void *buffer,  gsize count,  gboolean blocking,  GCancellable *cancellable,  GError **error);
	GError* err = null;
	
	auto p = g_pollable_stream_read((stream is null) ? null : stream.getInputStreamStruct(), buffer.ptr, cast(int) buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
	
	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}
	
	return p;
}

/**
 * Tries to write to stream, as with g_output_stream_write() (if
 * blocking is TRUE) or g_pollable_output_stream_write_nonblocking()
 * (if blocking is FALSE). This can be used to more easily share
 * code between blocking and non-blocking implementations of a method.
 * If blocking is FALSE, then stream must be a
 * GPollableOutputStream for which
 * g_pollable_output_stream_can_poll() returns TRUE or else the
 * behavior is undefined. If blocking is TRUE, then stream does not
 * need to be a GPollableOutputStream.
 * Since 2.34
 * Params:
 * stream = a GOutputStream.
 * buffer = the buffer
 * containing the data to write. [array length=count][element-type guint8]
 * blocking = whether to do blocking I/O
 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
 * Returns: the number of bytes written, or -1 on error.
 * Throws: GException on failure.
 */
public static gssize pollableStreamWrite(OutputStream stream, void[] buffer, int blocking, Cancellable cancellable)
{
	// gssize g_pollable_stream_write (GOutputStream *stream,  const void *buffer,  gsize count,  gboolean blocking,  GCancellable *cancellable,  GError **error);
	GError* err = null;
	
	auto p = g_pollable_stream_write((stream is null) ? null : stream.getOutputStreamStruct(), buffer.ptr, cast(int) buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
	
	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}
	
	return p;
}

/**
 * Tries to write count bytes to stream, as with
 * g_output_stream_write_all(), but using g_pollable_stream_write()
 * rather than g_output_stream_write().
 * On a successful write of count bytes, TRUE is returned, and
 * bytes_written is set to count.
 * If there is an error during the operation (including
 * G_IO_ERROR_WOULD_BLOCK in the non-blocking case), FALSE is
 * returned and error is set to indicate the error status,
 * bytes_written is updated to contain the number of bytes written
 * into the stream before the error occurred.
 * As with g_pollable_stream_write(), if blocking is FALSE, then
 * stream must be a GPollableOutputStream for which
 * g_pollable_output_stream_can_poll() returns TRUE or else the
 * behavior is undefined. If blocking is TRUE, then stream does not
 * need to be a GPollableOutputStream.
 * Since 2.34
 * Params:
 * stream = a GOutputStream.
 * buffer = the buffer
 * containing the data to write. [array length=count][element-type guint8]
 * blocking = whether to do blocking I/O
 * bytesWritten = location to store the number of bytes that was
 * written to the stream. [out]
 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
 * Returns: TRUE on success, FALSE if there was an error
 * Throws: GException on failure.
 */
public static int pollableStreamWriteAll(OutputStream stream, void[] buffer, int blocking, out gsize bytesWritten, Cancellable cancellable)
{
	// gboolean g_pollable_stream_write_all (GOutputStream *stream,  const void *buffer,  gsize count,  gboolean blocking,  gsize *bytes_written,  GCancellable *cancellable,  GError **error);
	GError* err = null;
	
	auto p = g_pollable_stream_write_all((stream is null) ? null : stream.getOutputStreamStruct(), buffer.ptr, cast(int) buffer.length, blocking, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
	
	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}
	
	return p;
}

