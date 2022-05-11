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


module gtk.MediaStream;

private import gdk.PaintableIF;
private import gdk.PaintableT;
private import gdk.Surface;
private import glib.ErrorG;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMediaStream` is the integration point for media playback inside GTK.
 * 
 * GTK provides an implementation of the `GtkMediaStream` interface that
 * is called [class@Gtk.MediaFile].
 * 
 * Apart from application-facing API for stream playback, `GtkMediaStream`
 * has a number of APIs that are only useful for implementations and should
 * not be used in applications:
 * [method@Gtk.MediaStream.prepared],
 * [method@Gtk.MediaStream.unprepared],
 * [method@Gtk.MediaStream.update],
 * [method@Gtk.MediaStream.ended],
 * [method@Gtk.MediaStream.seek_success],
 * [method@Gtk.MediaStream.seek_failed],
 * [method@Gtk.MediaStream.gerror],
 * [method@Gtk.MediaStream.error],
 * [method@Gtk.MediaStream.error_valist].
 */
public class MediaStream : ObjectG, PaintableIF
{
	/** the main Gtk struct */
	protected GtkMediaStream* gtkMediaStream;

	/** Get the main Gtk struct */
	public GtkMediaStream* getMediaStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMediaStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMediaStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMediaStream* gtkMediaStream, bool ownedRef = false)
	{
		this.gtkMediaStream = gtkMediaStream;
		super(cast(GObject*)gtkMediaStream, ownedRef);
	}

	// add the Paintable capabilities
	mixin PaintableT!(GtkMediaStream);


	/** */
	public static GType getType()
	{
		return gtk_media_stream_get_type();
	}

	/**
	 * Pauses the media stream and marks it as ended.
	 *
	 * This is a hint only, calls to [method@Gtk.MediaStream.play]
	 * may still happen.
	 *
	 * The media stream must be prepared when this function is called.
	 *
	 * Deprecated: Use [method@Gtk.MediaStream.stream_ended] instead
	 */
	public void ended()
	{
		gtk_media_stream_ended(gtkMediaStream);
	}

	/**
	 * Sets @self into an error state using a printf()-style format string.
	 *
	 * This is a utility function that calls [method@Gtk.MediaStream.gerror].
	 * See that function for details.
	 *
	 * Params:
	 *     domain = error domain
	 *     code = error code
	 *     format = printf()-style format for error message
	 *     args = `va_list` of parameters for the message format
	 */
	public void errorValist(GQuark domain, int code, string format, void* args)
	{
		gtk_media_stream_error_valist(gtkMediaStream, domain, code, Str.toStringz(format), args);
	}

	/**
	 * Sets @self into an error state.
	 *
	 * This will pause the stream (you can check for an error
	 * via [method@Gtk.MediaStream.get_error] in your
	 * GtkMediaStream.pause() implementation), abort pending
	 * seeks and mark the stream as prepared.
	 *
	 * if the stream is already in an error state, this call
	 * will be ignored and the existing error will be retained.
	 *
	 * To unset an error, the stream must be reset via a call to
	 * [method@Gtk.MediaStream.unprepared].
	 *
	 * Params:
	 *     error = the `GError` to set
	 */
	public void gerror(ErrorG error)
	{
		gtk_media_stream_gerror(gtkMediaStream, (error is null) ? null : error.getErrorGStruct(true));
	}

	/**
	 * Gets the duration of the stream.
	 *
	 * If the duration is not known, 0 will be returned.
	 *
	 * Returns: the duration of the stream or 0 if not known.
	 */
	public long getDuration()
	{
		return gtk_media_stream_get_duration(gtkMediaStream);
	}

	/**
	 * Returns whether the streams playback is finished.
	 *
	 * Returns: %TRUE if playback is finished
	 */
	public bool getEnded()
	{
		return gtk_media_stream_get_ended(gtkMediaStream) != 0;
	}

	/**
	 * If the stream is in an error state, returns the `GError`
	 * explaining that state.
	 *
	 * Any type of error can be reported here depending on the
	 * implementation of the media stream.
	 *
	 * A media stream in an error cannot be operated on, calls
	 * like [method@Gtk.MediaStream.play] or
	 * [method@Gtk.MediaStream.seek] will not have any effect.
	 *
	 * `GtkMediaStream` itself does not provide a way to unset
	 * an error, but implementations may provide options. For example,
	 * a [class@Gtk.MediaFile] will unset errors when a new source is
	 * set, e.g. with [method@Gtk.MediaFile.set_file].
	 *
	 * Returns: %NULL if not in an
	 *     error state or the `GError` of the stream
	 */
	public ErrorG getError()
	{
		auto __p = gtk_media_stream_get_error(gtkMediaStream);

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p);
	}

	/**
	 * Returns whether the stream is set to loop.
	 *
	 * See [method@Gtk.MediaStream.set_loop] for details.
	 *
	 * Returns: %TRUE if the stream should loop
	 */
	public bool getLoop()
	{
		return gtk_media_stream_get_loop(gtkMediaStream) != 0;
	}

	/**
	 * Returns whether the audio for the stream is muted.
	 *
	 * See [method@Gtk.MediaStream.set_muted] for details.
	 *
	 * Returns: %TRUE if the stream is muted
	 */
	public bool getMuted()
	{
		return gtk_media_stream_get_muted(gtkMediaStream) != 0;
	}

	/**
	 * Return whether the stream is currently playing.
	 *
	 * Returns: %TRUE if the stream is playing
	 */
	public bool getPlaying()
	{
		return gtk_media_stream_get_playing(gtkMediaStream) != 0;
	}

	/**
	 * Returns the current presentation timestamp in microseconds.
	 *
	 * Returns: the timestamp in microseconds
	 */
	public long getTimestamp()
	{
		return gtk_media_stream_get_timestamp(gtkMediaStream);
	}

	/**
	 * Returns the volume of the audio for the stream.
	 *
	 * See [method@Gtk.MediaStream.set_volume] for details.
	 *
	 * Returns: volume of the stream from 0.0 to 1.0
	 */
	public double getVolume()
	{
		return gtk_media_stream_get_volume(gtkMediaStream);
	}

	/**
	 * Returns whether the stream has audio.
	 *
	 * Returns: %TRUE if the stream has audio
	 */
	public bool hasAudio()
	{
		return gtk_media_stream_has_audio(gtkMediaStream) != 0;
	}

	/**
	 * Returns whether the stream has video.
	 *
	 * Returns: %TRUE if the stream has video
	 */
	public bool hasVideo()
	{
		return gtk_media_stream_has_video(gtkMediaStream) != 0;
	}

	/**
	 * Returns whether the stream has finished initializing.
	 *
	 * At this point the existence of audio and video is known.
	 *
	 * Returns: %TRUE if the stream is prepared
	 */
	public bool isPrepared()
	{
		return gtk_media_stream_is_prepared(gtkMediaStream) != 0;
	}

	/**
	 * Checks if a stream may be seekable.
	 *
	 * This is meant to be a hint. Streams may not allow seeking even if
	 * this function returns %TRUE. However, if this function returns
	 * %FALSE, streams are guaranteed to not be seekable and user interfaces
	 * may hide controls that allow seeking.
	 *
	 * It is allowed to call [method@Gtk.MediaStream.seek] on a non-seekable
	 * stream, though it will not do anything.
	 *
	 * Returns: %TRUE if the stream may support seeking
	 */
	public bool isSeekable()
	{
		return gtk_media_stream_is_seekable(gtkMediaStream) != 0;
	}

	/**
	 * Checks if there is currently a seek operation going on.
	 *
	 * Returns: %TRUE if a seek operation is ongoing.
	 */
	public bool isSeeking()
	{
		return gtk_media_stream_is_seeking(gtkMediaStream) != 0;
	}

	/**
	 * Pauses playback of the stream.
	 *
	 * If the stream is not playing, do nothing.
	 */
	public void pause()
	{
		gtk_media_stream_pause(gtkMediaStream);
	}

	/**
	 * Starts playing the stream.
	 *
	 * If the stream is in error or already playing, do nothing.
	 */
	public void play()
	{
		gtk_media_stream_play(gtkMediaStream);
	}

	/**
	 * Same as gtk_media_stream_stream_prepared().
	 *
	 * Deprecated: Use [method@Gtk.MediaStream.stream_prepared] instead.
	 *
	 * Params:
	 *     hasAudio = %TRUE if the stream should advertise audio support
	 *     hasVideo = %TRUE if the stream should advertise video support
	 *     seekable = %TRUE if the stream should advertise seekability
	 *     duration = The duration of the stream or 0 if unknown
	 */
	public void prepared(bool hasAudio, bool hasVideo, bool seekable, long duration)
	{
		gtk_media_stream_prepared(gtkMediaStream, hasAudio, hasVideo, seekable, duration);
	}

	/**
	 * Called by users to attach the media stream to a `GdkSurface` they manage.
	 *
	 * The stream can then access the resources of @surface for its
	 * rendering purposes. In particular, media streams might want to
	 * create a `GdkGLContext` or sync to the `GdkFrameClock`.
	 *
	 * Whoever calls this function is responsible for calling
	 * [method@Gtk.MediaStream.unrealize] before either the stream
	 * or @surface get destroyed.
	 *
	 * Multiple calls to this function may happen from different
	 * users of the video, even with the same @surface. Each of these
	 * calls must be followed by its own call to
	 * [method@Gtk.MediaStream.unrealize].
	 *
	 * It is not required to call this function to make a media stream work.
	 *
	 * Params:
	 *     surface = a `GdkSurface`
	 */
	public void realize(Surface surface)
	{
		gtk_media_stream_realize(gtkMediaStream, (surface is null) ? null : surface.getSurfaceStruct());
	}

	/**
	 * Start a seek operation on @self to @timestamp.
	 *
	 * If @timestamp is out of range, it will be clamped.
	 *
	 * Seek operations may not finish instantly. While a
	 * seek operation is in process, the [property@Gtk.MediaStream:seeking]
	 * property will be set.
	 *
	 * When calling gtk_media_stream_seek() during an
	 * ongoing seek operation, the new seek will override
	 * any pending seek.
	 *
	 * Params:
	 *     timestamp = timestamp to seek to.
	 */
	public void seek(long timestamp)
	{
		gtk_media_stream_seek(gtkMediaStream, timestamp);
	}

	/**
	 * Ends a seek operation started via GtkMediaStream.seek() as a failure.
	 *
	 * This will not cause an error on the stream and will assume that
	 * playback continues as if no seek had happened.
	 *
	 * See [method@Gtk.MediaStream.seek_success] for the other way of
	 * ending a seek.
	 */
	public void seekFailed()
	{
		gtk_media_stream_seek_failed(gtkMediaStream);
	}

	/**
	 * Ends a seek operation started via GtkMediaStream.seek() successfully.
	 *
	 * This function will unset the GtkMediaStream:ended property
	 * if it was set.
	 *
	 * See [method@Gtk.MediaStream.seek_failed] for the other way of
	 * ending a seek.
	 */
	public void seekSuccess()
	{
		gtk_media_stream_seek_success(gtkMediaStream);
	}

	/**
	 * Sets whether the stream should loop.
	 *
	 * In this case, it will attempt to restart playback
	 * from the beginning instead of stopping at the end.
	 *
	 * Not all streams may support looping, in particular
	 * non-seekable streams. Those streams will ignore the
	 * loop setting and just end.
	 *
	 * Params:
	 *     loop = %TRUE if the stream should loop
	 */
	public void setLoop(bool loop)
	{
		gtk_media_stream_set_loop(gtkMediaStream, loop);
	}

	/**
	 * Sets whether the audio stream should be muted.
	 *
	 * Muting a stream will cause no audio to be played, but it
	 * does not modify the volume. This means that muting and
	 * then unmuting the stream will restore the volume settings.
	 *
	 * If the stream has no audio, calling this function will
	 * still work but it will not have an audible effect.
	 *
	 * Params:
	 *     muted = %TRUE if the stream should be muted
	 */
	public void setMuted(bool muted)
	{
		gtk_media_stream_set_muted(gtkMediaStream, muted);
	}

	/**
	 * Starts or pauses playback of the stream.
	 *
	 * Params:
	 *     playing = whether to start or pause playback
	 */
	public void setPlaying(bool playing)
	{
		gtk_media_stream_set_playing(gtkMediaStream, playing);
	}

	/**
	 * Sets the volume of the audio stream.
	 *
	 * This function call will work even if the stream is muted.
	 *
	 * The given @volume should range from 0.0 for silence to 1.0
	 * for as loud as possible. Values outside of this range will
	 * be clamped to the nearest value.
	 *
	 * If the stream has no audio or is muted, calling this function
	 * will still work but it will not have an immediate audible effect.
	 * When the stream is unmuted, the new volume setting will take effect.
	 *
	 * Params:
	 *     volume = New volume of the stream from 0.0 to 1.0
	 */
	public void setVolume(double volume)
	{
		gtk_media_stream_set_volume(gtkMediaStream, volume);
	}

	/**
	 * Pauses the media stream and marks it as ended.
	 *
	 * This is a hint only, calls to [method@Gtk.MediaStream.play]
	 * may still happen.
	 *
	 * The media stream must be prepared when this function is called.
	 *
	 * Since: 4.4
	 */
	public void streamEnded()
	{
		gtk_media_stream_stream_ended(gtkMediaStream);
	}

	/**
	 * Called by `GtkMediaStream` implementations to advertise the stream
	 * being ready to play and providing details about the stream.
	 *
	 * Note that the arguments are hints. If the stream implementation
	 * cannot determine the correct values, it is better to err on the
	 * side of caution and return %TRUE. User interfaces will use those
	 * values to determine what controls to show.
	 *
	 * This function may not be called again until the stream has been
	 * reset via [method@Gtk.MediaStream.stream_unprepared].
	 *
	 * Params:
	 *     hasAudio = %TRUE if the stream should advertise audio support
	 *     hasVideo = %TRUE if the stream should advertise video support
	 *     seekable = %TRUE if the stream should advertise seekability
	 *     duration = The duration of the stream or 0 if unknown
	 *
	 * Since: 4.4
	 */
	public void streamPrepared(bool hasAudio, bool hasVideo, bool seekable, long duration)
	{
		gtk_media_stream_stream_prepared(gtkMediaStream, hasAudio, hasVideo, seekable, duration);
	}

	/**
	 * Resets a given media stream implementation.
	 *
	 * [method@Gtk.MediaStream.stream_prepared] can then be called again.
	 *
	 * This function will also reset any error state the stream was in.
	 *
	 * Since: 4.4
	 */
	public void streamUnprepared()
	{
		gtk_media_stream_stream_unprepared(gtkMediaStream);
	}

	/**
	 * Same as gtk_media_stream_stream_unprepared().
	 *
	 * Deprecated: Use [method@Gtk.MediaStream.stream_unprepared] instead.
	 */
	public void unprepared()
	{
		gtk_media_stream_unprepared(gtkMediaStream);
	}

	/**
	 * Undoes a previous call to gtk_media_stream_realize().
	 *
	 * This causes the stream to release all resources it had
	 * allocated from @surface.
	 *
	 * Params:
	 *     surface = the `GdkSurface` the stream was realized with
	 */
	public void unrealize(Surface surface)
	{
		gtk_media_stream_unrealize(gtkMediaStream, (surface is null) ? null : surface.getSurfaceStruct());
	}

	/**
	 * Media stream implementations should regularly call this
	 * function to update the timestamp reported by the stream.
	 *
	 * It is up to implementations to call this at the frequency
	 * they deem appropriate.
	 *
	 * The media stream must be prepared when this function is called.
	 *
	 * Params:
	 *     timestamp = the new timestamp
	 */
	public void update(long timestamp)
	{
		gtk_media_stream_update(gtkMediaStream, timestamp);
	}
}
