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


module glib.Source;

private import glib.ConstructionException;
private import glib.MainContext;
private import glib.Str;
private import glib.TimeVal;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The `GSource` struct is an opaque data type
 * representing an event source.
 */
public class Source
{
	/** the main Gtk struct */
	protected GSource* gSource;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GSource* getSourceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSource;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSource;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSource* gSource, bool ownedRef = false)
	{
		this.gSource = gSource;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_source_unref(gSource);
	}


	/**
	 * Creates a new #GSource structure. The size is specified to
	 * allow creating structures derived from #GSource that contain
	 * additional data. The size passed in must be at least
	 * `sizeof (GSource)`.
	 *
	 * The source will not initially be associated with any #GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 *
	 * Params:
	 *     sourceFuncs = structure containing functions that implement
	 *         the sources behavior.
	 *     structSize = size of the #GSource structure to create.
	 *
	 * Returns: the newly-created #GSource.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GSourceFuncs* sourceFuncs, uint structSize)
	{
		auto __p = g_source_new(sourceFuncs, structSize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSource*) __p);
	}

	/**
	 * Adds @child_source to @source as a "polled" source; when @source is
	 * added to a #GMainContext, @child_source will be automatically added
	 * with the same priority, when @child_source is triggered, it will
	 * cause @source to dispatch (in addition to calling its own
	 * callback), and when @source is destroyed, it will destroy
	 * @child_source as well. (@source will also still be dispatched if
	 * its own prepare/check functions indicate that it is ready.)
	 *
	 * If you don't need @child_source to do anything on its own when it
	 * triggers, you can call g_source_set_dummy_callback() on it to set a
	 * callback that does nothing (except return %TRUE if appropriate).
	 *
	 * @source will hold a reference on @child_source while @child_source
	 * is attached to it.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * Params:
	 *     childSource = a second #GSource that @source should "poll"
	 *
	 * Since: 2.28
	 */
	public void addChildSource(Source childSource)
	{
		g_source_add_child_source(gSource, (childSource is null) ? null : childSource.getSourceStruct());
	}

	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this source. This is usually combined with g_source_new() to add an
	 * event source. The event source's check function will typically test
	 * the @revents field in the #GPollFD struct and return %TRUE if events need
	 * to be processed.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * Using this API forces the linear scanning of event sources on each
	 * main loop iteration.  Newly-written event sources should try to use
	 * g_source_add_unix_fd() instead of this API.
	 *
	 * Params:
	 *     fd = a #GPollFD structure holding information about a file
	 *         descriptor to watch.
	 */
	public void addPoll(GPollFD* fd)
	{
		g_source_add_poll(gSource, fd);
	}

	/**
	 * Monitors @fd for the IO events in @events.
	 *
	 * The tag returned by this function can be used to remove or modify the
	 * monitoring of the fd using g_source_remove_unix_fd() or
	 * g_source_modify_unix_fd().
	 *
	 * It is not necessary to remove the fd before destroying the source; it
	 * will be cleaned up automatically.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * As the name suggests, this function is not available on Windows.
	 *
	 * Params:
	 *     fd = the fd to monitor
	 *     events = an event mask
	 *
	 * Returns: an opaque tag
	 *
	 * Since: 2.36
	 */
	public void* addUnixFd(int fd, GIOCondition events)
	{
		return g_source_add_unix_fd(gSource, fd, events);
	}

	/**
	 * Adds a #GSource to a @context so that it will be executed within
	 * that context. Remove it by calling g_source_destroy().
	 *
	 * This function is safe to call from any thread, regardless of which thread
	 * the @context is running in.
	 *
	 * Params:
	 *     context = a #GMainContext (if %NULL, the default context will be used)
	 *
	 * Returns: the ID (greater than 0) for the source within the
	 *     #GMainContext.
	 */
	public uint attach(MainContext context)
	{
		return g_source_attach(gSource, (context is null) ? null : context.getMainContextStruct());
	}

	/**
	 * Removes a source from its #GMainContext, if any, and mark it as
	 * destroyed.  The source cannot be subsequently added to another
	 * context. It is safe to call this on sources which have already been
	 * removed from their context.
	 *
	 * This does not unref the #GSource: if you still hold a reference, use
	 * g_source_unref() to drop it.
	 *
	 * This function is safe to call from any thread, regardless of which thread
	 * the #GMainContext is running in.
	 *
	 * If the source is currently attached to a #GMainContext, destroying it
	 * will effectively unset the callback similar to calling g_source_set_callback().
	 * This can mean, that the data's #GDestroyNotify gets called right away.
	 */
	public void destroy()
	{
		g_source_destroy(gSource);
	}

	/**
	 * Checks whether a source is allowed to be called recursively.
	 * see g_source_set_can_recurse().
	 *
	 * Returns: whether recursion is allowed.
	 */
	public bool getCanRecurse()
	{
		return g_source_get_can_recurse(gSource) != 0;
	}

	/**
	 * Gets the #GMainContext with which the source is associated.
	 *
	 * You can call this on a source that has been destroyed, provided
	 * that the #GMainContext it was attached to still exists (in which
	 * case it will return that #GMainContext). In particular, you can
	 * always call this function on the source returned from
	 * g_main_current_source(). But calling this function on a source
	 * whose #GMainContext has been destroyed is an error.
	 *
	 * Returns: the #GMainContext with which the
	 *     source is associated, or %NULL if the context has not
	 *     yet been added to a source.
	 */
	public MainContext getContext()
	{
		auto __p = g_source_get_context(gSource);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * This function ignores @source and is otherwise the same as
	 * g_get_current_time().
	 *
	 * Deprecated: use g_source_get_time() instead
	 *
	 * Params:
	 *     timeval = #GTimeVal structure in which to store current time.
	 */
	public void getCurrentTime(TimeVal timeval)
	{
		g_source_get_current_time(gSource, (timeval is null) ? null : timeval.getTimeValStruct());
	}

	/**
	 * Returns the numeric ID for a particular source. The ID of a source
	 * is a positive integer which is unique within a particular main loop
	 * context. The reverse
	 * mapping from ID to source is done by g_main_context_find_source_by_id().
	 *
	 * You can only call this function while the source is associated to a
	 * #GMainContext instance; calling this function before g_source_attach()
	 * or after g_source_destroy() yields undefined behavior. The ID returned
	 * is unique within the #GMainContext instance passed to g_source_attach().
	 *
	 * Returns: the ID (greater than 0) for the source
	 */
	public uint getId()
	{
		return g_source_get_id(gSource);
	}

	/**
	 * Gets a name for the source, used in debugging and profiling.  The
	 * name may be #NULL if it has never been set with g_source_set_name().
	 *
	 * Returns: the name of the source
	 *
	 * Since: 2.26
	 */
	public string getName()
	{
		return Str.toString(g_source_get_name(gSource));
	}

	/**
	 * Gets the priority of a source.
	 *
	 * Returns: the priority of the source
	 */
	public int getPriority()
	{
		return g_source_get_priority(gSource);
	}

	/**
	 * Gets the "ready time" of @source, as set by
	 * g_source_set_ready_time().
	 *
	 * Any time before the current monotonic time (including 0) is an
	 * indication that the source will fire immediately.
	 *
	 * Returns: the monotonic ready time, -1 for "never"
	 */
	public long getReadyTime()
	{
		return g_source_get_ready_time(gSource);
	}

	/**
	 * Gets the time to be used when checking this source. The advantage of
	 * calling this function over calling g_get_monotonic_time() directly is
	 * that when checking multiple sources, GLib can cache a single value
	 * instead of having to repeatedly get the system monotonic time.
	 *
	 * The time here is the system monotonic time, if available, or some
	 * other reasonable alternative otherwise.  See g_get_monotonic_time().
	 *
	 * Returns: the monotonic time in microseconds
	 *
	 * Since: 2.28
	 */
	public long getTime()
	{
		return g_source_get_time(gSource);
	}

	/**
	 * Returns whether @source has been destroyed.
	 *
	 * This is important when you operate upon your objects
	 * from within idle handlers, but may have freed the object
	 * before the dispatch of your idle handler.
	 *
	 * |[<!-- language="C" -->
	 * static gboolean
	 * idle_callback (gpointer data)
	 * {
	 * SomeWidget *self = data;
	 *
	 * g_mutex_lock (&self->idle_id_mutex);
	 * // do stuff with self
	 * self->idle_id = 0;
	 * g_mutex_unlock (&self->idle_id_mutex);
	 *
	 * return G_SOURCE_REMOVE;
	 * }
	 *
	 * static void
	 * some_widget_do_stuff_later (SomeWidget *self)
	 * {
	 * g_mutex_lock (&self->idle_id_mutex);
	 * self->idle_id = g_idle_add (idle_callback, self);
	 * g_mutex_unlock (&self->idle_id_mutex);
	 * }
	 *
	 * static void
	 * some_widget_init (SomeWidget *self)
	 * {
	 * g_mutex_init (&self->idle_id_mutex);
	 *
	 * // ...
	 * }
	 *
	 * static void
	 * some_widget_finalize (GObject *object)
	 * {
	 * SomeWidget *self = SOME_WIDGET (object);
	 *
	 * if (self->idle_id)
	 * g_source_remove (self->idle_id);
	 *
	 * g_mutex_clear (&self->idle_id_mutex);
	 *
	 * G_OBJECT_CLASS (parent_class)->finalize (object);
	 * }
	 * ]|
	 *
	 * This will fail in a multi-threaded application if the
	 * widget is destroyed before the idle handler fires due
	 * to the use after free in the callback. A solution, to
	 * this particular problem, is to check to if the source
	 * has already been destroy within the callback.
	 *
	 * |[<!-- language="C" -->
	 * static gboolean
	 * idle_callback (gpointer data)
	 * {
	 * SomeWidget *self = data;
	 *
	 * g_mutex_lock (&self->idle_id_mutex);
	 * if (!g_source_is_destroyed (g_main_current_source ()))
	 * {
	 * // do stuff with self
	 * }
	 * g_mutex_unlock (&self->idle_id_mutex);
	 *
	 * return FALSE;
	 * }
	 * ]|
	 *
	 * Calls to this function from a thread other than the one acquired by the
	 * #GMainContext the #GSource is attached to are typically redundant, as the
	 * source could be destroyed immediately after this function returns. However,
	 * once a source is destroyed it cannot be un-destroyed, so this function can be
	 * used for opportunistic checks from any thread.
	 *
	 * Returns: %TRUE if the source has been destroyed
	 *
	 * Since: 2.12
	 */
	public bool isDestroyed()
	{
		return g_source_is_destroyed(gSource) != 0;
	}

	/**
	 * Updates the event mask to watch for the fd identified by @tag.
	 *
	 * @tag is the tag returned from g_source_add_unix_fd().
	 *
	 * If you want to remove a fd, don't set its event mask to zero.
	 * Instead, call g_source_remove_unix_fd().
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * As the name suggests, this function is not available on Windows.
	 *
	 * Params:
	 *     tag = the tag from g_source_add_unix_fd()
	 *     newEvents = the new event mask to watch
	 *
	 * Since: 2.36
	 */
	public void modifyUnixFd(void* tag, GIOCondition newEvents)
	{
		g_source_modify_unix_fd(gSource, tag, newEvents);
	}

	/**
	 * Queries the events reported for the fd corresponding to @tag on
	 * @source during the last poll.
	 *
	 * The return value of this function is only defined when the function
	 * is called from the check or dispatch functions for @source.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * As the name suggests, this function is not available on Windows.
	 *
	 * Params:
	 *     tag = the tag from g_source_add_unix_fd()
	 *
	 * Returns: the conditions reported on the fd
	 *
	 * Since: 2.36
	 */
	public GIOCondition queryUnixFd(void* tag)
	{
		return g_source_query_unix_fd(gSource, tag);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on a source by one.
	 *
	 * Returns: @source
	 */
	public Source ref_()
	{
		auto __p = g_source_ref(gSource);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}

	/**
	 * Detaches @child_source from @source and destroys it.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * Params:
	 *     childSource = a #GSource previously passed to
	 *         g_source_add_child_source().
	 *
	 * Since: 2.28
	 */
	public void removeChildSource(Source childSource)
	{
		g_source_remove_child_source(gSource, (childSource is null) ? null : childSource.getSourceStruct());
	}

	/**
	 * Removes a file descriptor from the set of file descriptors polled for
	 * this source.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * Params:
	 *     fd = a #GPollFD structure previously passed to g_source_add_poll().
	 */
	public void removePoll(GPollFD* fd)
	{
		g_source_remove_poll(gSource, fd);
	}

	/**
	 * Reverses the effect of a previous call to g_source_add_unix_fd().
	 *
	 * You only need to call this if you want to remove an fd from being
	 * watched while keeping the same source around.  In the normal case you
	 * will just want to destroy the source.
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * As the name suggests, this function is not available on Windows.
	 *
	 * Params:
	 *     tag = the tag from g_source_add_unix_fd()
	 *
	 * Since: 2.36
	 */
	public void removeUnixFd(void* tag)
	{
		g_source_remove_unix_fd(gSource, tag);
	}

	/**
	 * Sets the callback function for a source. The callback for a source is
	 * called from the source's dispatch function.
	 *
	 * The exact type of @func depends on the type of source; ie. you
	 * should not count on @func being called with @data as its first
	 * parameter. Cast @func with G_SOURCE_FUNC() to avoid warnings about
	 * incompatible function types.
	 *
	 * See [memory management of sources][mainloop-memory-management] for details
	 * on how to handle memory management of @data.
	 *
	 * Typically, you won't use this function. Instead use functions specific
	 * to the type of source you are using, such as g_idle_add() or g_timeout_add().
	 *
	 * It is safe to call this function multiple times on a source which has already
	 * been attached to a context. The changes will take effect for the next time
	 * the source is dispatched after this call returns.
	 *
	 * Note that g_source_destroy() for a currently attached source has the effect
	 * of also unsetting the callback.
	 *
	 * Params:
	 *     func = a callback function
	 *     data = the data to pass to callback function
	 *     notify = a function to call when @data is no longer in use, or %NULL.
	 */
	public void setCallback(GSourceFunc func, void* data, GDestroyNotify notify)
	{
		g_source_set_callback(gSource, func, data, notify);
	}

	/**
	 * Sets the callback function storing the data as a refcounted callback
	 * "object". This is used internally. Note that calling
	 * g_source_set_callback_indirect() assumes
	 * an initial reference count on @callback_data, and thus
	 * @callback_funcs->unref will eventually be called once more
	 * than @callback_funcs->ref.
	 *
	 * It is safe to call this function multiple times on a source which has already
	 * been attached to a context. The changes will take effect for the next time
	 * the source is dispatched after this call returns.
	 *
	 * Params:
	 *     callbackData = pointer to callback data "object"
	 *     callbackFuncs = functions for reference counting @callback_data
	 *         and getting the callback and data
	 */
	public void setCallbackIndirect(void* callbackData, GSourceCallbackFuncs* callbackFuncs)
	{
		g_source_set_callback_indirect(gSource, callbackData, callbackFuncs);
	}

	/**
	 * Sets whether a source can be called recursively. If @can_recurse is
	 * %TRUE, then while the source is being dispatched then this source
	 * will be processed normally. Otherwise, all processing of this
	 * source is blocked until the dispatch function returns.
	 *
	 * Params:
	 *     canRecurse = whether recursion is allowed for this source
	 */
	public void setCanRecurse(bool canRecurse)
	{
		g_source_set_can_recurse(gSource, canRecurse);
	}

	/**
	 * Set @dispose as dispose function on @source. @dispose will be called once
	 * the reference count of @source reaches 0 but before any of the state of the
	 * source is freed, especially before the finalize function is called.
	 *
	 * This means that at this point @source is still a valid #GSource and it is
	 * allow for the reference count to increase again until @dispose returns.
	 *
	 * The dispose function can be used to clear any "weak" references to the
	 * @source in other data structures in a thread-safe way where it is possible
	 * for another thread to increase the reference count of @source again while
	 * it is being freed.
	 *
	 * The finalize function can not be used for this purpose as at that point
	 * @source is already partially freed and not valid anymore.
	 *
	 * This should only ever be called from #GSource implementations.
	 *
	 * Params:
	 *     dispose = #GSourceDisposeFunc to set on the source
	 *
	 * Since: 2.64
	 */
	public void setDisposeFunction(GSourceDisposeFunc dispose)
	{
		g_source_set_dispose_function(gSource, dispose);
	}

	/**
	 * Sets the source functions (can be used to override
	 * default implementations) of an unattached source.
	 *
	 * Params:
	 *     funcs = the new #GSourceFuncs
	 *
	 * Since: 2.12
	 */
	public void setFuncs(GSourceFuncs* funcs)
	{
		g_source_set_funcs(gSource, funcs);
	}

	/**
	 * Sets a name for the source, used in debugging and profiling.
	 * The name defaults to #NULL.
	 *
	 * The source name should describe in a human-readable way
	 * what the source does. For example, "X11 event queue"
	 * or "GTK+ repaint idle handler" or whatever it is.
	 *
	 * It is permitted to call this function multiple times, but is not
	 * recommended due to the potential performance impact.  For example,
	 * one could change the name in the "check" function of a #GSourceFuncs
	 * to include details like the event type in the source name.
	 *
	 * Use caution if changing the name while another thread may be
	 * accessing it with g_source_get_name(); that function does not copy
	 * the value, and changing the value will free it while the other thread
	 * may be attempting to use it.
	 *
	 * Also see g_source_set_static_name().
	 *
	 * Params:
	 *     name = debug name for the source
	 *
	 * Since: 2.26
	 */
	public void setName(string name)
	{
		g_source_set_name(gSource, Str.toStringz(name));
	}

	/**
	 * Sets the priority of a source. While the main loop is being run, a
	 * source will be dispatched if it is ready to be dispatched and no
	 * sources at a higher (numerically smaller) priority are ready to be
	 * dispatched.
	 *
	 * A child source always has the same priority as its parent.  It is not
	 * permitted to change the priority of a source once it has been added
	 * as a child of another source.
	 *
	 * Params:
	 *     priority = the new priority.
	 */
	public void setPriority(int priority)
	{
		g_source_set_priority(gSource, priority);
	}

	/**
	 * Sets a #GSource to be dispatched when the given monotonic time is
	 * reached (or passed).  If the monotonic time is in the past (as it
	 * always will be if @ready_time is 0) then the source will be
	 * dispatched immediately.
	 *
	 * If @ready_time is -1 then the source is never woken up on the basis
	 * of the passage of time.
	 *
	 * Dispatching the source does not reset the ready time.  You should do
	 * so yourself, from the source dispatch function.
	 *
	 * Note that if you have a pair of sources where the ready time of one
	 * suggests that it will be delivered first but the priority for the
	 * other suggests that it would be delivered first, and the ready time
	 * for both sources is reached during the same main context iteration,
	 * then the order of dispatch is undefined.
	 *
	 * It is a no-op to call this function on a #GSource which has already been
	 * destroyed with g_source_destroy().
	 *
	 * This API is only intended to be used by implementations of #GSource.
	 * Do not call this API on a #GSource that you did not create.
	 *
	 * Params:
	 *     readyTime = the monotonic time at which the source will be ready,
	 *         0 for "immediately", -1 for "never"
	 *
	 * Since: 2.36
	 */
	public void setReadyTime(long readyTime)
	{
		g_source_set_ready_time(gSource, readyTime);
	}

	/**
	 * A variant of g_source_set_name() that does not
	 * duplicate the @name, and can only be used with
	 * string literals.
	 *
	 * Params:
	 *     name = debug name for the source
	 *
	 * Since: 2.70
	 */
	public void setStaticName(string name)
	{
		g_source_set_static_name(gSource, Str.toStringz(name));
	}

	/**
	 * Decreases the reference count of a source by one. If the
	 * resulting reference count is zero the source and associated
	 * memory will be destroyed.
	 */
	public void unref()
	{
		g_source_unref(gSource);
	}

	/**
	 * Removes the source with the given ID from the default main context. You must
	 * use g_source_destroy() for sources added to a non-default main context.
	 *
	 * The ID of a #GSource is given by g_source_get_id(), or will be
	 * returned by the functions g_source_attach(), g_idle_add(),
	 * g_idle_add_full(), g_timeout_add(), g_timeout_add_full(),
	 * g_child_watch_add(), g_child_watch_add_full(), g_io_add_watch(), and
	 * g_io_add_watch_full().
	 *
	 * It is a programmer error to attempt to remove a non-existent source.
	 *
	 * More specifically: source IDs can be reissued after a source has been
	 * destroyed and therefore it is never valid to use this function with a
	 * source ID which may have already been removed.  An example is when
	 * scheduling an idle to run in another thread with g_idle_add(): the
	 * idle may already have run and been removed by the time this function
	 * is called on its (now invalid) source ID.  This source ID may have
	 * been reissued, leading to the operation being performed against the
	 * wrong source.
	 *
	 * Params:
	 *     tag = the ID of the source to remove.
	 *
	 * Returns: %TRUE if the source was found and removed.
	 */
	public static bool remove(uint tag)
	{
		return g_source_remove(tag) != 0;
	}

	/**
	 * Removes a source from the default main loop context given the
	 * source functions and user data. If multiple sources exist with the
	 * same source functions and user data, only one will be destroyed.
	 *
	 * Params:
	 *     funcs = The @source_funcs passed to g_source_new()
	 *     userData = the user data for the callback
	 *
	 * Returns: %TRUE if a source was found and removed.
	 */
	public static bool removeByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		return g_source_remove_by_funcs_user_data(funcs, userData) != 0;
	}

	/**
	 * Removes a source from the default main loop context given the user
	 * data for the callback. If multiple sources exist with the same user
	 * data, only one will be destroyed.
	 *
	 * Params:
	 *     userData = the user_data for the callback.
	 *
	 * Returns: %TRUE if a source was found and removed.
	 */
	public static bool removeByUserData(void* userData)
	{
		return g_source_remove_by_user_data(userData) != 0;
	}

	/**
	 * Sets the name of a source using its ID.
	 *
	 * This is a convenience utility to set source names from the return
	 * value of g_idle_add(), g_timeout_add(), etc.
	 *
	 * It is a programmer error to attempt to set the name of a non-existent
	 * source.
	 *
	 * More specifically: source IDs can be reissued after a source has been
	 * destroyed and therefore it is never valid to use this function with a
	 * source ID which may have already been removed.  An example is when
	 * scheduling an idle to run in another thread with g_idle_add(): the
	 * idle may already have run and been removed by the time this function
	 * is called on its (now invalid) source ID.  This source ID may have
	 * been reissued, leading to the operation being performed against the
	 * wrong source.
	 *
	 * Params:
	 *     tag = a #GSource ID
	 *     name = debug name for the source
	 *
	 * Since: 2.26
	 */
	public static void setNameById(uint tag, string name)
	{
		g_source_set_name_by_id(tag, Str.toStringz(name));
	}
}
