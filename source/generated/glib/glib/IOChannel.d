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


module glib.IOChannel;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * A data structure representing an IO Channel. The fields should be
 * considered private and should only be accessed with the following
 * functions.
 */
public class IOChannel
{
	/** the main Gtk struct */
	protected GIOChannel* gIOChannel;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GIOChannel* getIOChannelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gIOChannel;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gIOChannel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOChannel* gIOChannel, bool ownedRef = false)
	{
		this.gIOChannel = gIOChannel;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_io_channel_unref(gIOChannel);
	}


	/**
	 * Open a file @filename as a #GIOChannel using mode @mode. This
	 * channel will be closed when the last reference to it is dropped,
	 * so there is no need to call g_io_channel_close() (though doing
	 * so will not cause problems, as long as no attempt is made to
	 * access the channel after it is closed).
	 *
	 * Params:
	 *     filename = A string containing the name of a file
	 *     mode = One of "r", "w", "a", "r+", "w+", "a+". These have
	 *         the same meaning as in fopen()
	 *
	 * Returns: A #GIOChannel on success, %NULL on failure.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, string mode)
	{
		GError* err = null;

		auto __p = g_io_channel_new_file(Str.toStringz(filename), Str.toStringz(mode), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_file");
		}

		this(cast(GIOChannel*) __p);
	}

	/**
	 * Creates a new #GIOChannel given a file descriptor. On UNIX systems
	 * this works for plain files, pipes, and sockets.
	 *
	 * The returned #GIOChannel has a reference count of 1.
	 *
	 * The default encoding for #GIOChannel is UTF-8. If your application
	 * is reading output from a command using via pipe, you may need to set
	 * the encoding to the encoding of the current locale (see
	 * g_get_charset()) with the g_io_channel_set_encoding() function.
	 * By default, the fd passed will not be closed when the final reference
	 * to the #GIOChannel data structure is dropped.
	 *
	 * If you want to read raw binary data without interpretation, then
	 * call the g_io_channel_set_encoding() function with %NULL for the
	 * encoding argument.
	 *
	 * This function is available in GLib on Windows, too, but you should
	 * avoid using it on Windows. The domain of file descriptors and
	 * sockets overlap. There is no way for GLib to know which one you mean
	 * in case the argument you pass to this function happens to be both a
	 * valid file descriptor and socket. If that happens a warning is
	 * issued, and GLib assumes that it is the file descriptor you mean.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Returns: a new #GIOChannel.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd)
	{
		auto __p = g_io_channel_unix_new(fd);

		if(__p is null)
		{
			throw new ConstructionException("null returned by unix_new");
		}

		this(cast(GIOChannel*) __p);
	}

	/**
	 * Close an IO channel. Any pending data to be written will be
	 * flushed, ignoring errors. The channel will not be freed until the
	 * last reference is dropped using g_io_channel_unref().
	 *
	 * Deprecated: Use g_io_channel_shutdown() instead.
	 */
	public void close()
	{
		g_io_channel_close(gIOChannel);
	}

	/**
	 * Flushes the write buffer for the GIOChannel.
	 *
	 * Returns: the status of the operation: One of
	 *     %G_IO_STATUS_NORMAL, %G_IO_STATUS_AGAIN, or
	 *     %G_IO_STATUS_ERROR.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus flush()
	{
		GError* err = null;

		auto __p = g_io_channel_flush(gIOChannel, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This function returns a #GIOCondition depending on whether there
	 * is data to be read/space to write data in the internal buffers in
	 * the #GIOChannel. Only the flags %G_IO_IN and %G_IO_OUT may be set.
	 *
	 * Returns: A #GIOCondition
	 */
	public GIOCondition getBufferCondition()
	{
		return g_io_channel_get_buffer_condition(gIOChannel);
	}

	/**
	 * Gets the buffer size.
	 *
	 * Returns: the size of the buffer.
	 */
	public size_t getBufferSize()
	{
		return g_io_channel_get_buffer_size(gIOChannel);
	}

	/**
	 * Returns whether @channel is buffered.
	 *
	 * Returns: %TRUE if the @channel is buffered.
	 */
	public bool getBuffered()
	{
		return g_io_channel_get_buffered(gIOChannel) != 0;
	}

	/**
	 * Returns whether the file/socket/whatever associated with @channel
	 * will be closed when @channel receives its final unref and is
	 * destroyed. The default value of this is %TRUE for channels created
	 * by g_io_channel_new_file (), and %FALSE for all other channels.
	 *
	 * Returns: %TRUE if the channel will be closed, %FALSE otherwise.
	 */
	public bool getCloseOnUnref()
	{
		return g_io_channel_get_close_on_unref(gIOChannel) != 0;
	}

	/**
	 * Gets the encoding for the input/output of the channel.
	 * The internal encoding is always UTF-8. The encoding %NULL
	 * makes the channel safe for binary data.
	 *
	 * Returns: A string containing the encoding, this string is
	 *     owned by GLib and must not be freed.
	 */
	public string getEncoding()
	{
		return Str.toString(g_io_channel_get_encoding(gIOChannel));
	}

	/**
	 * Gets the current flags for a #GIOChannel, including read-only
	 * flags such as %G_IO_FLAG_IS_READABLE.
	 *
	 * The values of the flags %G_IO_FLAG_IS_READABLE and %G_IO_FLAG_IS_WRITABLE
	 * are cached for internal use by the channel when it is created.
	 * If they should change at some later point (e.g. partial shutdown
	 * of a socket with the UNIX shutdown() function), the user
	 * should immediately call g_io_channel_get_flags() to update
	 * the internal values of these flags.
	 *
	 * Returns: the flags which are set on the channel
	 */
	public GIOFlags getFlags()
	{
		return g_io_channel_get_flags(gIOChannel);
	}

	/**
	 * This returns the string that #GIOChannel uses to determine
	 * where in the file a line break occurs. A value of %NULL
	 * indicates autodetection.
	 *
	 * Params:
	 *     length = a location to return the length of the line terminator
	 *
	 * Returns: The line termination string. This value
	 *     is owned by GLib and must not be freed.
	 */
	public string getLineTerm(int* length)
	{
		return Str.toString(g_io_channel_get_line_term(gIOChannel, length));
	}

	/**
	 * Initializes a #GIOChannel struct.
	 *
	 * This is called by each of the above functions when creating a
	 * #GIOChannel, and so is not often needed by the application
	 * programmer (unless you are creating a new type of #GIOChannel).
	 */
	public void init()
	{
		g_io_channel_init(gIOChannel);
	}

	/**
	 * Reads data from a #GIOChannel.
	 *
	 * Deprecated: Use g_io_channel_read_chars() instead.
	 *
	 * Params:
	 *     buf = a buffer to read the data into (which should be at least
	 *         count bytes long)
	 *     count = the number of bytes to read from the #GIOChannel
	 *     bytesRead = returns the number of bytes actually read
	 *
	 * Returns: %G_IO_ERROR_NONE if the operation was successful.
	 */
	public GIOError read(string buf, size_t count, size_t* bytesRead)
	{
		return g_io_channel_read(gIOChannel, Str.toStringz(buf), count, bytesRead);
	}

	/**
	 * Replacement for g_io_channel_read() with the new API.
	 *
	 * Params:
	 *     buf = a buffer to read data into
	 *     bytesRead = The number of bytes read. This may be
	 *         zero even on success if count < 6 and the channel's encoding
	 *         is non-%NULL. This indicates that the next UTF-8 character is
	 *         too wide for the buffer.
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus readChars(out char[] buf, out size_t bytesRead)
	{
		GError* err = null;

		auto __p = g_io_channel_read_chars(gIOChannel, buf.ptr, cast(size_t)buf.length, &bytesRead, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads a line, including the terminating character(s),
	 * from a #GIOChannel into a newly-allocated string.
	 * @str_return will contain allocated memory if the return
	 * is %G_IO_STATUS_NORMAL.
	 *
	 * Params:
	 *     strReturn = The line read from the #GIOChannel, including the
	 *         line terminator. This data should be freed with g_free()
	 *         when no longer needed. This is a nul-terminated string.
	 *         If a @length of zero is returned, this will be %NULL instead.
	 *     terminatorPos = location to store position of line terminator, or %NULL
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus readLine(out string strReturn, out size_t terminatorPos)
	{
		char* outstrReturn = null;
		size_t length;
		GError* err = null;

		auto __p = g_io_channel_read_line(gIOChannel, &outstrReturn, &length, &terminatorPos, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		strReturn = Str.toString(outstrReturn, length);

		return __p;
	}

	/**
	 * Reads a line from a #GIOChannel, using a #GString as a buffer.
	 *
	 * Params:
	 *     buffer = a #GString into which the line will be written.
	 *         If @buffer already contains data, the old data will
	 *         be overwritten.
	 *     terminatorPos = location to store position of line terminator, or %NULL
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus readLineString(StringG buffer, out size_t terminatorPos)
	{
		GError* err = null;

		auto __p = g_io_channel_read_line_string(gIOChannel, (buffer is null) ? null : buffer.getStringGStruct(), &terminatorPos, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Reads all the remaining data from the file.
	 *
	 * Params:
	 *     strReturn = Location to
	 *         store a pointer to a string holding the remaining data in the
	 *         #GIOChannel. This data should be freed with g_free() when no
	 *         longer needed. This data is terminated by an extra nul
	 *         character, but there may be other nuls in the intervening data.
	 *
	 * Returns: %G_IO_STATUS_NORMAL on success.
	 *     This function never returns %G_IO_STATUS_EOF.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus readToEnd(out string strReturn)
	{
		char* outstrReturn = null;
		size_t length;
		GError* err = null;

		auto __p = g_io_channel_read_to_end(gIOChannel, &outstrReturn, &length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		strReturn = Str.toString(outstrReturn, length);

		return __p;
	}

	/**
	 * Reads a Unicode character from @channel.
	 * This function cannot be called on a channel with %NULL encoding.
	 *
	 * Params:
	 *     thechar = a location to return a character
	 *
	 * Returns: a #GIOStatus
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus readUnichar(out dchar thechar)
	{
		GError* err = null;

		auto __p = g_io_channel_read_unichar(gIOChannel, &thechar, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	alias doref = ref_;
	/**
	 * Increments the reference count of a #GIOChannel.
	 *
	 * Returns: the @channel that was passed in (since 2.6)
	 */
	public IOChannel ref_()
	{
		auto __p = g_io_channel_ref(gIOChannel);

		if(__p is null)
		{
			return null;
		}

		return new IOChannel(cast(GIOChannel*) __p, true);
	}

	/**
	 * Sets the current position in the #GIOChannel, similar to the standard
	 * library function fseek().
	 *
	 * Deprecated: Use g_io_channel_seek_position() instead.
	 *
	 * Params:
	 *     offset = an offset, in bytes, which is added to the position specified
	 *         by @type
	 *     type = the position in the file, which can be %G_SEEK_CUR (the current
	 *         position), %G_SEEK_SET (the start of the file), or %G_SEEK_END
	 *         (the end of the file)
	 *
	 * Returns: %G_IO_ERROR_NONE if the operation was successful.
	 */
	public GIOError seek(long offset, GSeekType type)
	{
		return g_io_channel_seek(gIOChannel, offset, type);
	}

	/**
	 * Replacement for g_io_channel_seek() with the new API.
	 *
	 * Params:
	 *     offset = The offset in bytes from the position specified by @type
	 *     type = a #GSeekType. The type %G_SEEK_CUR is only allowed in those
	 *         cases where a call to g_io_channel_set_encoding ()
	 *         is allowed. See the documentation for
	 *         g_io_channel_set_encoding () for details.
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus seekPosition(long offset, GSeekType type)
	{
		GError* err = null;

		auto __p = g_io_channel_seek_position(gIOChannel, offset, type, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the buffer size.
	 *
	 * Params:
	 *     size = the size of the buffer, or 0 to let GLib pick a good size
	 */
	public void setBufferSize(size_t size)
	{
		g_io_channel_set_buffer_size(gIOChannel, size);
	}

	/**
	 * The buffering state can only be set if the channel's encoding
	 * is %NULL. For any other encoding, the channel must be buffered.
	 *
	 * A buffered channel can only be set unbuffered if the channel's
	 * internal buffers have been flushed. Newly created channels or
	 * channels which have returned %G_IO_STATUS_EOF
	 * not require such a flush. For write-only channels, a call to
	 * g_io_channel_flush () is sufficient. For all other channels,
	 * the buffers may be flushed by a call to g_io_channel_seek_position ().
	 * This includes the possibility of seeking with seek type %G_SEEK_CUR
	 * and an offset of zero. Note that this means that socket-based
	 * channels cannot be set unbuffered once they have had data
	 * read from them.
	 *
	 * On unbuffered channels, it is safe to mix read and write
	 * calls from the new and old APIs, if this is necessary for
	 * maintaining old code.
	 *
	 * The default state of the channel is buffered.
	 *
	 * Params:
	 *     buffered = whether to set the channel buffered or unbuffered
	 */
	public void setBuffered(bool buffered)
	{
		g_io_channel_set_buffered(gIOChannel, buffered);
	}

	/**
	 * Whether to close the channel on the final unref of the #GIOChannel
	 * data structure. The default value of this is %TRUE for channels
	 * created by g_io_channel_new_file (), and %FALSE for all other channels.
	 *
	 * Setting this flag to %TRUE for a channel you have already closed
	 * can cause problems when the final reference to the #GIOChannel is dropped.
	 *
	 * Params:
	 *     doClose = Whether to close the channel on the final unref of
	 *         the GIOChannel data structure.
	 */
	public void setCloseOnUnref(bool doClose)
	{
		g_io_channel_set_close_on_unref(gIOChannel, doClose);
	}

	/**
	 * Sets the encoding for the input/output of the channel.
	 * The internal encoding is always UTF-8. The default encoding
	 * for the external file is UTF-8.
	 *
	 * The encoding %NULL is safe to use with binary data.
	 *
	 * The encoding can only be set if one of the following conditions
	 * is true:
	 *
	 * - The channel was just created, and has not been written to or read from yet.
	 *
	 * - The channel is write-only.
	 *
	 * - The channel is a file, and the file pointer was just repositioned
	 * by a call to g_io_channel_seek_position(). (This flushes all the
	 * internal buffers.)
	 *
	 * - The current encoding is %NULL or UTF-8.
	 *
	 * - One of the (new API) read functions has just returned %G_IO_STATUS_EOF
	 * (or, in the case of g_io_channel_read_to_end(), %G_IO_STATUS_NORMAL).
	 *
	 * -  One of the functions g_io_channel_read_chars() or
	 * g_io_channel_read_unichar() has returned %G_IO_STATUS_AGAIN or
	 * %G_IO_STATUS_ERROR. This may be useful in the case of
	 * %G_CONVERT_ERROR_ILLEGAL_SEQUENCE.
	 * Returning one of these statuses from g_io_channel_read_line(),
	 * g_io_channel_read_line_string(), or g_io_channel_read_to_end()
	 * does not guarantee that the encoding can be changed.
	 *
	 * Channels which do not meet one of the above conditions cannot call
	 * g_io_channel_seek_position() with an offset of %G_SEEK_CUR, and, if
	 * they are "seekable", cannot call g_io_channel_write_chars() after
	 * calling one of the API "read" functions.
	 *
	 * Params:
	 *     encoding = the encoding type
	 *
	 * Returns: %G_IO_STATUS_NORMAL if the encoding was successfully set
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus setEncoding(string encoding)
	{
		GError* err = null;

		auto __p = g_io_channel_set_encoding(gIOChannel, Str.toStringz(encoding), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the (writeable) flags in @channel to (@flags & %G_IO_FLAG_SET_MASK).
	 *
	 * Params:
	 *     flags = the flags to set on the IO channel
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus setFlags(GIOFlags flags)
	{
		GError* err = null;

		auto __p = g_io_channel_set_flags(gIOChannel, flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This sets the string that #GIOChannel uses to determine
	 * where in the file a line break occurs.
	 *
	 * Params:
	 *     lineTerm = The line termination string. Use %NULL for
	 *         autodetect.  Autodetection breaks on "\n", "\r\n", "\r", "\0",
	 *         and the Unicode paragraph separator. Autodetection should not be
	 *         used for anything other than file-based channels.
	 *     length = The length of the termination string. If -1 is passed, the
	 *         string is assumed to be nul-terminated. This option allows
	 *         termination strings with embedded nuls.
	 */
	public void setLineTerm(string lineTerm, int length)
	{
		g_io_channel_set_line_term(gIOChannel, Str.toStringz(lineTerm), length);
	}

	/**
	 * Close an IO channel. Any pending data to be written will be
	 * flushed if @flush is %TRUE. The channel will not be freed until the
	 * last reference is dropped using g_io_channel_unref().
	 *
	 * Params:
	 *     flush = if %TRUE, flush pending
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus shutdown(bool flush)
	{
		GError* err = null;

		auto __p = g_io_channel_shutdown(gIOChannel, flush, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Returns the file descriptor of the #GIOChannel.
	 *
	 * On Windows this function returns the file descriptor or socket of
	 * the #GIOChannel.
	 *
	 * Returns: the file descriptor of the #GIOChannel.
	 */
	public int unixGetFd()
	{
		return g_io_channel_unix_get_fd(gIOChannel);
	}

	/**
	 * Decrements the reference count of a #GIOChannel.
	 */
	public void unref()
	{
		g_io_channel_unref(gIOChannel);
	}

	/**
	 * Writes data to a #GIOChannel.
	 *
	 * Deprecated: Use g_io_channel_write_chars() instead.
	 *
	 * Params:
	 *     buf = the buffer containing the data to write
	 *     count = the number of bytes to write
	 *     bytesWritten = the number of bytes actually written
	 *
	 * Returns: %G_IO_ERROR_NONE if the operation was successful.
	 */
	public GIOError write(string buf, size_t count, size_t* bytesWritten)
	{
		return g_io_channel_write(gIOChannel, Str.toStringz(buf), count, bytesWritten);
	}

	/**
	 * Replacement for g_io_channel_write() with the new API.
	 *
	 * On seekable channels with encodings other than %NULL or UTF-8, generic
	 * mixing of reading and writing is not allowed. A call to g_io_channel_write_chars ()
	 * may only be made on a channel from which data has been read in the
	 * cases described in the documentation for g_io_channel_set_encoding ().
	 *
	 * Params:
	 *     buf = a buffer to write data from
	 *     bytesWritten = The number of bytes written. This can be nonzero
	 *         even if the return value is not %G_IO_STATUS_NORMAL.
	 *         If the return value is %G_IO_STATUS_NORMAL and the
	 *         channel is blocking, this will always be equal
	 *         to @count if @count >= 0.
	 *
	 * Returns: the status of the operation.
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus writeChars(string buf, out size_t bytesWritten)
	{
		GError* err = null;

		auto __p = g_io_channel_write_chars(gIOChannel, Str.toStringz(buf), cast(ptrdiff_t)buf.length, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Writes a Unicode character to @channel.
	 * This function cannot be called on a channel with %NULL encoding.
	 *
	 * Params:
	 *     thechar = a character
	 *
	 * Returns: a #GIOStatus
	 *
	 * Throws: GException on failure.
	 */
	public GIOStatus writeUnichar(dchar thechar)
	{
		GError* err = null;

		auto __p = g_io_channel_write_unichar(gIOChannel, thechar, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Converts an `errno` error number to a #GIOChannelError.
	 *
	 * Params:
	 *     en = an `errno` error number, e.g. `EINVAL`
	 *
	 * Returns: a #GIOChannelError error number, e.g.
	 *     %G_IO_CHANNEL_ERROR_INVAL.
	 */
	public static GIOChannelError errorFromErrno(int en)
	{
		return g_io_channel_error_from_errno(en);
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_io_channel_error_quark();
	}

	/**
	 * Adds the #GIOChannel into the default main loop context
	 * with the default priority.
	 *
	 * Params:
	 *     channel = a #GIOChannel
	 *     condition = the condition to watch for
	 *     func = the function to call when the condition is satisfied
	 *     userData = user data to pass to @func
	 *
	 * Returns: the event source id
	 */
	public static uint ioAddWatch(IOChannel channel, GIOCondition condition, GIOFunc func, void* userData)
	{
		return g_io_add_watch((channel is null) ? null : channel.getIOChannelStruct(), condition, func, userData);
	}

	/**
	 * Adds the #GIOChannel into the default main loop context
	 * with the given priority.
	 *
	 * This internally creates a main loop source using g_io_create_watch()
	 * and attaches it to the main loop context with g_source_attach().
	 * You can do these steps manually if you need greater control.
	 *
	 * Params:
	 *     channel = a #GIOChannel
	 *     priority = the priority of the #GIOChannel source
	 *     condition = the condition to watch for
	 *     func = the function to call when the condition is satisfied
	 *     userData = user data to pass to @func
	 *     notify = the function to call when the source is removed
	 *
	 * Returns: the event source id
	 */
	public static uint ioAddWatchFull(IOChannel channel, int priority, GIOCondition condition, GIOFunc func, void* userData, GDestroyNotify notify)
	{
		return g_io_add_watch_full((channel is null) ? null : channel.getIOChannelStruct(), priority, condition, func, userData, notify);
	}

	/**
	 * Creates a #GSource that's dispatched when @condition is met for the
	 * given @channel. For example, if condition is %G_IO_IN, the source will
	 * be dispatched when there's data available for reading.
	 *
	 * The callback function invoked by the #GSource should be added with
	 * g_source_set_callback(), but it has type #GIOFunc (not #GSourceFunc).
	 *
	 * g_io_add_watch() is a simpler interface to this same functionality, for
	 * the case where you want to add the source to the default main loop context
	 * at the default priority.
	 *
	 * On Windows, polling a #GSource created to watch a channel for a socket
	 * puts the socket in non-blocking mode. This is a side-effect of the
	 * implementation and unavoidable.
	 *
	 * Params:
	 *     channel = a #GIOChannel to watch
	 *     condition = conditions to watch for
	 *
	 * Returns: a new #GSource
	 */
	public static Source ioCreateWatch(IOChannel channel, GIOCondition condition)
	{
		auto __p = g_io_create_watch((channel is null) ? null : channel.getIOChannelStruct(), condition);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}
}
