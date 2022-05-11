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


module gtk.GLArea;

private import gdk.GLContext;
private import glib.ConstructionException;
private import glib.ErrorG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGLArea` is a widget that allows drawing with OpenGL.
 * 
 * ![An example GtkGLArea](glarea.png)
 * 
 * `GtkGLArea` sets up its own [class@Gdk.GLContext], and creates a custom
 * GL framebuffer that the widget will do GL rendering onto. It also ensures
 * that this framebuffer is the default GL rendering target when rendering.
 * 
 * In order to draw, you have to connect to the [signal@Gtk.GLArea::render]
 * signal, or subclass `GtkGLArea` and override the GtkGLAreaClass.render
 * virtual function.
 * 
 * The `GtkGLArea` widget ensures that the `GdkGLContext` is associated with
 * the widget's drawing area, and it is kept updated when the size and
 * position of the drawing area changes.
 * 
 * ## Drawing with GtkGLArea
 * 
 * The simplest way to draw using OpenGL commands in a `GtkGLArea` is to
 * create a widget instance and connect to the [signal@Gtk.GLArea::render] signal:
 * 
 * The `render()` function will be called when the `GtkGLArea` is ready
 * for you to draw its content:
 * 
 * ```c
 * static gboolean
 * render (GtkGLArea *area, GdkGLContext *context)
 * {
 * // inside this function it's safe to use GL; the given
 * // GdkGLContext has been made current to the drawable
 * // surface used by the `GtkGLArea` and the viewport has
 * // already been set to be the size of the allocation
 * 
 * // we can start by clearing the buffer
 * glClearColor (0, 0, 0, 0);
 * glClear (GL_COLOR_BUFFER_BIT);
 * 
 * // draw your object
 * // draw_an_object ();
 * 
 * // we completed our drawing; the draw commands will be
 * // flushed at the end of the signal emission chain, and
 * // the buffers will be drawn on the window
 * return TRUE;
 * }
 * 
 * void setup_glarea (void)
 * {
 * // create a GtkGLArea instance
 * GtkWidget *gl_area = gtk_gl_area_new ();
 * 
 * // connect to the "render" signal
 * g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
 * }
 * ```
 * 
 * If you need to initialize OpenGL state, e.g. buffer objects or
 * shaders, you should use the [signal@Gtk.Widget::realize] signal;
 * you can use the [signal@Gtk.Widget::unrealize] signal to clean up.
 * Since the `GdkGLContext` creation and initialization may fail, you
 * will need to check for errors, using [method@Gtk.GLArea.get_error].
 * 
 * An example of how to safely initialize the GL state is:
 * 
 * ```c
 * static void
 * on_realize (GtkGLarea *area)
 * {
 * // We need to make the context current if we want to
 * // call GL API
 * gtk_gl_area_make_current (area);
 * 
 * // If there were errors during the initialization or
 * // when trying to make the context current, this
 * // function will return a GError for you to catch
 * if (gtk_gl_area_get_error (area) != NULL)
 * return;
 * 
 * // You can also use gtk_gl_area_set_error() in order
 * // to show eventual initialization errors on the
 * // GtkGLArea widget itself
 * GError *internal_error = NULL;
 * init_buffer_objects (&error);
 * if (error != NULL)
 * {
 * gtk_gl_area_set_error (area, error);
 * g_error_free (error);
 * return;
 * }
 * 
 * init_shaders (&error);
 * if (error != NULL)
 * {
 * gtk_gl_area_set_error (area, error);
 * g_error_free (error);
 * return;
 * }
 * }
 * ```
 * 
 * If you need to change the options for creating the `GdkGLContext`
 * you should use the [signal@Gtk.GLArea::create-context] signal.
 */
public class GLArea : Widget
{
	/** the main Gtk struct */
	protected GtkGLArea* gtkGLArea;

	/** Get the main Gtk struct */
	public GtkGLArea* getGLAreaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGLArea;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGLArea;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGLArea* gtkGLArea, bool ownedRef = false)
	{
		this.gtkGLArea = gtkGLArea;
		super(cast(GtkWidget*)gtkGLArea, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gl_area_get_type();
	}

	/**
	 * Creates a new `GtkGLArea` widget.
	 *
	 * Returns: a new `GtkGLArea`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gl_area_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGLArea*) __p);
	}

	/**
	 * Binds buffers to the framebuffer.
	 *
	 * Ensures that the @area framebuffer object is made the current draw
	 * and read target, and that all the required buffers for the @area
	 * are created and bound to the framebuffer.
	 *
	 * This function is automatically called before emitting the
	 * [signal@Gtk.GLArea::render] signal, and doesn't normally need to be
	 * called by application code.
	 */
	public void attachBuffers()
	{
		gtk_gl_area_attach_buffers(gtkGLArea);
	}

	/**
	 * Returns whether the area is in auto render mode or not.
	 *
	 * Returns: %TRUE if the @area is auto rendering, %FALSE otherwise
	 */
	public bool getAutoRender()
	{
		return gtk_gl_area_get_auto_render(gtkGLArea) != 0;
	}

	/**
	 * Retrieves the `GdkGLContext` used by @area.
	 *
	 * Returns: the `GdkGLContext`
	 */
	public GLContext getContext()
	{
		auto __p = gtk_gl_area_get_context(gtkGLArea);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) __p);
	}

	/**
	 * Gets the current error set on the @area.
	 *
	 * Returns: the `GError`
	 */
	public ErrorG getError()
	{
		auto __p = gtk_gl_area_get_error(gtkGLArea);

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p);
	}

	/**
	 * Returns whether the area has a depth buffer.
	 *
	 * Returns: %TRUE if the @area has a depth buffer, %FALSE otherwise
	 */
	public bool getHasDepthBuffer()
	{
		return gtk_gl_area_get_has_depth_buffer(gtkGLArea) != 0;
	}

	/**
	 * Returns whether the area has a stencil buffer.
	 *
	 * Returns: %TRUE if the @area has a stencil buffer, %FALSE otherwise
	 */
	public bool getHasStencilBuffer()
	{
		return gtk_gl_area_get_has_stencil_buffer(gtkGLArea) != 0;
	}

	/**
	 * Retrieves the required version of OpenGL.
	 *
	 * See [method@Gtk.GLArea.set_required_version].
	 *
	 * Params:
	 *     major = return location for the required major version
	 *     minor = return location for the required minor version
	 */
	public void getRequiredVersion(out int major, out int minor)
	{
		gtk_gl_area_get_required_version(gtkGLArea, &major, &minor);
	}

	/**
	 * Returns whether the `GtkGLArea` should use OpenGL ES.
	 *
	 * See [method@Gtk.GLArea.set_use_es].
	 *
	 * Returns: %TRUE if the `GtkGLArea` should create an OpenGL ES context
	 *     and %FALSE otherwise
	 */
	public bool getUseEs()
	{
		return gtk_gl_area_get_use_es(gtkGLArea) != 0;
	}

	/**
	 * Ensures that the `GdkGLContext` used by @area is associated with
	 * the `GtkGLArea`.
	 *
	 * This function is automatically called before emitting the
	 * [signal@Gtk.GLArea::render] signal, and doesn't normally need
	 * to be called by application code.
	 */
	public void makeCurrent()
	{
		gtk_gl_area_make_current(gtkGLArea);
	}

	/**
	 * Marks the currently rendered data (if any) as invalid, and queues
	 * a redraw of the widget.
	 *
	 * This ensures that the [signal@Gtk.GLArea::render] signal
	 * is emitted during the draw.
	 *
	 * This is only needed when [method@Gtk.GLArea.set_auto_render] has
	 * been called with a %FALSE value. The default behaviour is to
	 * emit [signal@Gtk.GLArea::render] on each draw.
	 */
	public void queueRender()
	{
		gtk_gl_area_queue_render(gtkGLArea);
	}

	/**
	 * Sets whether the `GtkGLArea` is in auto render mode.
	 *
	 * If @auto_render is %TRUE the [signal@Gtk.GLArea::render] signal will
	 * be emitted every time the widget draws. This is the default and is
	 * useful if drawing the widget is faster.
	 *
	 * If @auto_render is %FALSE the data from previous rendering is kept
	 * around and will be used for drawing the widget the next time,
	 * unless the window is resized. In order to force a rendering
	 * [method@Gtk.GLArea.queue_render] must be called. This mode is
	 * useful when the scene changes seldom, but takes a long time to redraw.
	 *
	 * Params:
	 *     autoRender = a boolean
	 */
	public void setAutoRender(bool autoRender)
	{
		gtk_gl_area_set_auto_render(gtkGLArea, autoRender);
	}

	/**
	 * Sets an error on the area which will be shown instead of the
	 * GL rendering.
	 *
	 * This is useful in the [signal@Gtk.GLArea::create-context]
	 * signal if GL context creation fails.
	 *
	 * Params:
	 *     error = a new `GError`, or %NULL to unset the error
	 */
	public void setError(ErrorG error)
	{
		gtk_gl_area_set_error(gtkGLArea, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Sets whether the `GtkGLArea` should use a depth buffer.
	 *
	 * If @has_depth_buffer is %TRUE the widget will allocate and
	 * enable a depth buffer for the target framebuffer. Otherwise
	 * there will be none.
	 *
	 * Params:
	 *     hasDepthBuffer = %TRUE to add a depth buffer
	 */
	public void setHasDepthBuffer(bool hasDepthBuffer)
	{
		gtk_gl_area_set_has_depth_buffer(gtkGLArea, hasDepthBuffer);
	}

	/**
	 * Sets whether the `GtkGLArea` should use a stencil buffer.
	 *
	 * If @has_stencil_buffer is %TRUE the widget will allocate and
	 * enable a stencil buffer for the target framebuffer. Otherwise
	 * there will be none.
	 *
	 * Params:
	 *     hasStencilBuffer = %TRUE to add a stencil buffer
	 */
	public void setHasStencilBuffer(bool hasStencilBuffer)
	{
		gtk_gl_area_set_has_stencil_buffer(gtkGLArea, hasStencilBuffer);
	}

	/**
	 * Sets the required version of OpenGL to be used when creating
	 * the context for the widget.
	 *
	 * This function must be called before the area has been realized.
	 *
	 * Params:
	 *     major = the major version
	 *     minor = the minor version
	 */
	public void setRequiredVersion(int major, int minor)
	{
		gtk_gl_area_set_required_version(gtkGLArea, major, minor);
	}

	/**
	 * Sets whether the @area should create an OpenGL or an OpenGL ES context.
	 *
	 * You should check the capabilities of the `GdkGLContext` before drawing
	 * with either API.
	 *
	 * Params:
	 *     useEs = whether to use OpenGL or OpenGL ES
	 */
	public void setUseEs(bool useEs)
	{
		gtk_gl_area_set_use_es(gtkGLArea, useEs);
	}

	/**
	 * Emitted when the widget is being realized.
	 *
	 * This allows you to override how the GL context is created.
	 * This is useful when you want to reuse an existing GL context,
	 * or if you want to try creating different kinds of GL options.
	 *
	 * If context creation fails then the signal handler can use
	 * [method@Gtk.GLArea.set_error] to register a more detailed error
	 * of how the construction failed.
	 *
	 * Returns: a newly created `GdkGLContext`;
	 *     the `GtkGLArea` widget will take ownership of the returned value.
	 */
	gulong addOnCreateContext(GLContext delegate(GLArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-context", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted every time the contents of the `GtkGLArea` should be redrawn.
	 *
	 * The @context is bound to the @area prior to emitting this function,
	 * and the buffers are painted to the window once the emission terminates.
	 *
	 * Params:
	 *     context = the `GdkGLContext` used by @area
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnRender(bool delegate(GLContext, GLArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "render", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted once when the widget is realized, and then each time the widget
	 * is changed while realized.
	 *
	 * This is useful in order to keep GL state up to date with the widget size,
	 * like for instance camera properties which may depend on the width/height
	 * ratio.
	 *
	 * The GL context for the area is guaranteed to be current when this signal
	 * is emitted.
	 *
	 * The default handler sets up the GL viewport.
	 *
	 * Params:
	 *     width = the width of the viewport
	 *     height = the height of the viewport
	 */
	gulong addOnResize(void delegate(int, int, GLArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "resize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
