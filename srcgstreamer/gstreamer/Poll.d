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


module gstreamer.Poll;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.PollFD;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * A #GstPoll keeps track of file descriptors much like fd_set (used with
 * select()) or a struct pollfd array (used with poll()). Once created with
 * gst_poll_new(), the set can be used to wait for file descriptors to be
 * readable and/or writable. It is possible to make this wait be controlled
 * by specifying %TRUE for the @controllable flag when creating the set (or
 * later calling gst_poll_set_controllable()).
 * 
 * New file descriptors are added to the set using gst_poll_add_fd(), and
 * removed using gst_poll_remove_fd(). Controlling which file descriptors
 * should be waited for to become readable and/or writable are done using
 * gst_poll_fd_ctl_read() and gst_poll_fd_ctl_write().
 * 
 * Use gst_poll_wait() to wait for the file descriptors to actually become
 * readable and/or writable, or to timeout if no file descriptor is available
 * in time. The wait can be controlled by calling gst_poll_restart() and
 * gst_poll_set_flushing().
 * 
 * Once the file descriptor set has been waited for, one can use
 * gst_poll_fd_has_closed() to see if the file descriptor has been closed,
 * gst_poll_fd_has_error() to see if it has generated an error,
 * gst_poll_fd_can_read() to see if it is possible to read from the file
 * descriptor, and gst_poll_fd_can_write() to see if it is possible to
 * write to it.
 */
public class Poll
{
	/** the main Gtk struct */
	protected GstPoll* gstPoll;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstPoll* getPollStruct()
	{
		return gstPoll;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstPoll;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstPoll* gstPoll, bool ownedRef = false)
	{
		this.gstPoll = gstPoll;
		this.ownedRef = ownedRef;
	}


	/**
	 * Add a file descriptor to the file descriptor set.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the file descriptor was successfully added to the set.
	 */
	public bool addFd(PollFD fd)
	{
		return gst_poll_add_fd(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Check if @fd in @set has data to be read.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the descriptor has data to be read.
	 */
	public bool fdCanRead(PollFD fd)
	{
		return gst_poll_fd_can_read(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Check if @fd in @set can be used for writing.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the descriptor can be used for writing.
	 */
	public bool fdCanWrite(PollFD fd)
	{
		return gst_poll_fd_can_write(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Control whether the descriptor @fd in @set will be monitored for
	 * readability.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *     active = a new status.
	 *
	 * Return: %TRUE if the descriptor was successfully updated.
	 */
	public bool fdCtlRead(PollFD fd, bool active)
	{
		return gst_poll_fd_ctl_read(gstPoll, (fd is null) ? null : fd.getPollFDStruct(), active) != 0;
	}

	/**
	 * Control whether the descriptor @fd in @set will be monitored for
	 * writability.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *     active = a new status.
	 *
	 * Return: %TRUE if the descriptor was successfully updated.
	 */
	public bool fdCtlWrite(PollFD fd, bool active)
	{
		return gst_poll_fd_ctl_write(gstPoll, (fd is null) ? null : fd.getPollFDStruct(), active) != 0;
	}

	/**
	 * Check if @fd in @set has closed the connection.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the connection was closed.
	 */
	public bool fdHasClosed(PollFD fd)
	{
		return gst_poll_fd_has_closed(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Check if @fd in @set has an error.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the descriptor has an error.
	 */
	public bool fdHasError(PollFD fd)
	{
		return gst_poll_fd_has_error(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Mark @fd as ignored so that the next call to gst_poll_wait() will yield
	 * the same result for @fd as last time. This function must be called if no
	 * operation (read/write/recv/send/etc.) will be performed on @fd before
	 * the next call to gst_poll_wait().
	 *
	 * The reason why this is needed is because the underlying implementation
	 * might not allow querying the fd more than once between calls to one of
	 * the re-enabling operations.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 */
	public void fdIgnored(PollFD fd)
	{
		gst_poll_fd_ignored(gstPoll, (fd is null) ? null : fd.getPollFDStruct());
	}

	/**
	 * Free a file descriptor set.
	 */
	public void free()
	{
		gst_poll_free(gstPoll);
	}

	/**
	 * Get a GPollFD for the reading part of the control socket. This is useful when
	 * integrating with a GSource and GMainLoop.
	 *
	 * Params:
	 *     fd = a #GPollFD
	 */
	public void getReadGpollfd(GPollFD* fd)
	{
		gst_poll_get_read_gpollfd(gstPoll, fd);
	}

	/**
	 * Read a byte from the control socket of the controllable @set.
	 * This function is mostly useful for timer #GstPoll objects created with
	 * gst_poll_new_timer().
	 *
	 * Return: %TRUE on success. %FALSE when @set is not controllable or when there
	 *     was no byte to read.
	 */
	public bool readControl()
	{
		return gst_poll_read_control(gstPoll) != 0;
	}

	/**
	 * Remove a file descriptor from the file descriptor set.
	 *
	 * Params:
	 *     fd = a file descriptor.
	 *
	 * Return: %TRUE if the file descriptor was successfully removed from the set.
	 */
	public bool removeFd(PollFD fd)
	{
		return gst_poll_remove_fd(gstPoll, (fd is null) ? null : fd.getPollFDStruct()) != 0;
	}

	/**
	 * Restart any gst_poll_wait() that is in progress. This function is typically
	 * used after adding or removing descriptors to @set.
	 *
	 * If @set is not controllable, then this call will have no effect.
	 */
	public void restart()
	{
		gst_poll_restart(gstPoll);
	}

	/**
	 * When @controllable is %TRUE, this function ensures that future calls to
	 * gst_poll_wait() will be affected by gst_poll_restart() and
	 * gst_poll_set_flushing().
	 *
	 * Params:
	 *     controllable = new controllable state.
	 *
	 * Return: %TRUE if the controllability of @set could be updated.
	 */
	public bool setControllable(bool controllable)
	{
		return gst_poll_set_controllable(gstPoll, controllable) != 0;
	}

	/**
	 * When @flushing is %TRUE, this function ensures that current and future calls
	 * to gst_poll_wait() will return -1, with errno set to EBUSY.
	 *
	 * Unsetting the flushing state will restore normal operation of @set.
	 *
	 * Params:
	 *     flushing = new flushing state.
	 */
	public void setFlushing(bool flushing)
	{
		gst_poll_set_flushing(gstPoll, flushing);
	}

	/**
	 * Wait for activity on the file descriptors in @set. This function waits up to
	 * the specified @timeout.  A timeout of #GST_CLOCK_TIME_NONE waits forever.
	 *
	 * For #GstPoll objects created with gst_poll_new(), this function can only be
	 * called from a single thread at a time.  If called from multiple threads,
	 * -1 will be returned with errno set to EPERM.
	 *
	 * This is not true for timer #GstPoll objects created with
	 * gst_poll_new_timer(), where it is allowed to have multiple threads waiting
	 * simultaneously.
	 *
	 * Params:
	 *     timeout = a timeout in nanoseconds.
	 *
	 * Return: The number of #GstPollFD in @set that have activity or 0 when no
	 *     activity was detected after @timeout. If an error occurs, -1 is returned
	 *     and errno is set.
	 */
	public int wait(GstClockTime timeout)
	{
		return gst_poll_wait(gstPoll, timeout);
	}

	/**
	 * Write a byte to the control socket of the controllable @set.
	 * This function is mostly useful for timer #GstPoll objects created with
	 * gst_poll_new_timer().
	 *
	 * It will make any current and future gst_poll_wait() function return with
	 * 1, meaning the control socket is set. After an equal amount of calls to
	 * gst_poll_read_control() have been performed, calls to gst_poll_wait() will
	 * block again until their timeout expired.
	 *
	 * Return: %TRUE on success. %FALSE when @set is not controllable or when the
	 *     byte could not be written.
	 */
	public bool writeControl()
	{
		return gst_poll_write_control(gstPoll) != 0;
	}

	/**
	 * Create a new file descriptor set. If @controllable, it
	 * is possible to restart or flush a call to gst_poll_wait() with
	 * gst_poll_restart() and gst_poll_set_flushing() respectively.
	 *
	 * Free-function: gst_poll_free
	 *
	 * Params:
	 *     controllable = whether it should be possible to control a wait.
	 *
	 * Return: a new #GstPoll, or %NULL in
	 *     case of an error.  Free with gst_poll_free().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool controllable)
	{
		auto p = gst_poll_new(controllable);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstPoll*) p);
	}

	/**
	 * Create a new poll object that can be used for scheduling cancellable
	 * timeouts.
	 *
	 * A timeout is performed with gst_poll_wait(). Multiple timeouts can be
	 * performed from different threads.
	 *
	 * Free-function: gst_poll_free
	 *
	 * Return: a new #GstPoll, or %NULL in
	 *     case of an error.  Free with gst_poll_free().
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_poll_new_timer();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_timer");
		}
		
		this(cast(GstPoll*) p);
	}
}
