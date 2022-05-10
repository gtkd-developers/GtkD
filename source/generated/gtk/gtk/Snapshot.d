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


module gtk.Snapshot;

private import cairo.Context;
private import gdk.PaintableIF;
private import gdk.RGBA;
private import gdk.Snapshot : DGdkSnapshot = Snapshot;
private import gdk.Texture;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import graphene.Matrix;
private import graphene.Point;
private import graphene.Point3D;
private import graphene.Rect;
private import graphene.Size;
private import graphene.Vec3;
private import graphene.Vec4;
private import gsk.GLShader;
private import gsk.RenderNode;
private import gsk.RoundedRect;
private import gsk.Transform;
private import gtk.StyleContext;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgLayout;


/**
 * `GtkSnapshot` assists in creating [class@Gsk.RenderNode]s for widgets.
 * 
 * It functions in a similar way to a cairo context, and maintains a stack
 * of render nodes and their associated transformations.
 * 
 * The node at the top of the stack is the one that `gtk_snapshot_append_…()`
 * functions operate on. Use the `gtk_snapshot_push_…()` functions and
 * [method@Snapshot.pop] to change the current node.
 * 
 * The typical way to obtain a `GtkSnapshot` object is as an argument to
 * the [vfunc@Gtk.Widget.snapshot] vfunc. If you need to create your own
 * `GtkSnapshot`, use [ctor@Gtk.Snapshot.new].
 */
public class Snapshot : DGdkSnapshot
{
	/** the main Gtk struct */
	protected GtkSnapshot* gtkSnapshot;

	/** Get the main Gtk struct */
	public GtkSnapshot* getGtkSnapshotStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSnapshot;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSnapshot;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSnapshot* gtkSnapshot, bool ownedRef = false)
	{
		this.gtkSnapshot = gtkSnapshot;
		super(cast(GdkSnapshot*)gtkSnapshot, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_snapshot_get_type();
	}

	/**
	 * Creates a new `GtkSnapshot`.
	 *
	 * Returns: a newly-allocated `GtkSnapshot`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_snapshot_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSnapshot*) __p, true);
	}

	/**
	 * Appends a stroked border rectangle inside the given @outline.
	 *
	 * The four sides of the border can have different widths and colors.
	 *
	 * Params:
	 *     outline = the outline of the border
	 *     borderWidth = the stroke width of the border on
	 *         the top, right, bottom and left side respectively.
	 *     borderColor = the color used on the top, right,
	 *         bottom and left side.
	 */
	public void appendBorder(RoundedRect outline, float[4] borderWidth, RGBA[4] borderColor)
	{
		GdkRGBA[] borderColorArray = new GdkRGBA[borderColor.length];
		for ( int i = 0; i < borderColor.length; i++ )
		{
			borderColorArray[i] = *(borderColor[i].getRGBAStruct());
		}

		gtk_snapshot_append_border(gtkSnapshot, (outline is null) ? null : outline.getRoundedRectStruct(), borderWidth.ptr, borderColorArray.ptr);
	}

	/**
	 * Creates a new [class@Gsk.CairoNode] and appends it to the current
	 * render node of @snapshot, without changing the current node.
	 *
	 * Params:
	 *     bounds = the bounds for the new node
	 *
	 * Returns: a `cairo_t` suitable for drawing the contents of
	 *     the newly created render node
	 */
	public Context appendCairo(Rect bounds)
	{
		auto __p = gtk_snapshot_append_cairo(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct());

		if(__p is null)
		{
			return null;
		}

		return new Context(cast(cairo_t*) __p);
	}

	/**
	 * Creates a new render node drawing the @color into the
	 * given @bounds and appends it to the current render node
	 * of @snapshot.
	 *
	 * You should try to avoid calling this function if
	 * @color is transparent.
	 *
	 * Params:
	 *     color = the color to draw
	 *     bounds = the bounds for the new node
	 */
	public void appendColor(RGBA color, Rect bounds)
	{
		gtk_snapshot_append_color(gtkSnapshot, (color is null) ? null : color.getRGBAStruct(), (bounds is null) ? null : bounds.getRectStruct());
	}

	/**
	 * Appends a conic gradient node with the given stops to @snapshot.
	 *
	 * Params:
	 *     bounds = the rectangle to render the gradient into
	 *     center = the center point of the conic gradient
	 *     rotation = the clockwise rotation in degrees of the starting angle.
	 *         0 means the starting angle is the top.
	 *     stops = the color stops defining the gradient
	 */
	public void appendConicGradient(Rect bounds, Point center, float rotation, GskColorStop[] stops)
	{
		gtk_snapshot_append_conic_gradient(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), rotation, stops.ptr, cast(size_t)stops.length);
	}

	/**
	 * Appends an inset shadow into the box given by @outline.
	 *
	 * Params:
	 *     outline = outline of the region surrounded by shadow
	 *     color = color of the shadow
	 *     dx = horizontal offset of shadow
	 *     dy = vertical offset of shadow
	 *     spread = how far the shadow spreads towards the inside
	 *     blurRadius = how much blur to apply to the shadow
	 */
	public void appendInsetShadow(RoundedRect outline, RGBA color, float dx, float dy, float spread, float blurRadius)
	{
		gtk_snapshot_append_inset_shadow(gtkSnapshot, (outline is null) ? null : outline.getRoundedRectStruct(), (color is null) ? null : color.getRGBAStruct(), dx, dy, spread, blurRadius);
	}

	/** */
	public void appendLayout(PgLayout layout, RGBA color)
	{
		gtk_snapshot_append_layout(gtkSnapshot, (layout is null) ? null : layout.getPgLayoutStruct(), (color is null) ? null : color.getRGBAStruct());
	}

	/**
	 * Appends a linear gradient node with the given stops to @snapshot.
	 *
	 * Params:
	 *     bounds = the rectangle to render the linear gradient into
	 *     startPoint = the point at which the linear gradient will begin
	 *     endPoint = the point at which the linear gradient will finish
	 *     stops = the color stops defining the gradient
	 */
	public void appendLinearGradient(Rect bounds, Point startPoint, Point endPoint, GskColorStop[] stops)
	{
		gtk_snapshot_append_linear_gradient(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (startPoint is null) ? null : startPoint.getPointStruct(), (endPoint is null) ? null : endPoint.getPointStruct(), stops.ptr, cast(size_t)stops.length);
	}

	/**
	 * Appends @node to the current render node of @snapshot,
	 * without changing the current node.
	 *
	 * If @snapshot does not have a current node yet, @node
	 * will become the initial node.
	 *
	 * Params:
	 *     node = a `GskRenderNode`
	 */
	public void appendNode(RenderNode node)
	{
		gtk_snapshot_append_node(gtkSnapshot, (node is null) ? null : node.getRenderNodeStruct());
	}

	/**
	 * Appends an outset shadow node around the box given by @outline.
	 *
	 * Params:
	 *     outline = outline of the region surrounded by shadow
	 *     color = color of the shadow
	 *     dx = horizontal offset of shadow
	 *     dy = vertical offset of shadow
	 *     spread = how far the shadow spreads towards the outside
	 *     blurRadius = how much blur to apply to the shadow
	 */
	public void appendOutsetShadow(RoundedRect outline, RGBA color, float dx, float dy, float spread, float blurRadius)
	{
		gtk_snapshot_append_outset_shadow(gtkSnapshot, (outline is null) ? null : outline.getRoundedRectStruct(), (color is null) ? null : color.getRGBAStruct(), dx, dy, spread, blurRadius);
	}

	/**
	 * Appends a radial gradient node with the given stops to @snapshot.
	 *
	 * Params:
	 *     bounds = the rectangle to render the readial gradient into
	 *     center = the center point for the radial gradient
	 *     hradius = the horizontal radius
	 *     vradius = the vertical radius
	 *     start = the start position (on the horizontal axis)
	 *     end = the end position (on the horizontal axis)
	 *     stops = the color stops defining the gradient
	 */
	public void appendRadialGradient(Rect bounds, Point center, float hradius, float vradius, float start, float end, GskColorStop[] stops)
	{
		gtk_snapshot_append_radial_gradient(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), hradius, vradius, start, end, stops.ptr, cast(size_t)stops.length);
	}

	/**
	 * Appends a repeating linear gradient node with the given stops to @snapshot.
	 *
	 * Params:
	 *     bounds = the rectangle to render the linear gradient into
	 *     startPoint = the point at which the linear gradient will begin
	 *     endPoint = the point at which the linear gradient will finish
	 *     stops = the color stops defining the gradient
	 */
	public void appendRepeatingLinearGradient(Rect bounds, Point startPoint, Point endPoint, GskColorStop[] stops)
	{
		gtk_snapshot_append_repeating_linear_gradient(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (startPoint is null) ? null : startPoint.getPointStruct(), (endPoint is null) ? null : endPoint.getPointStruct(), stops.ptr, cast(size_t)stops.length);
	}

	/**
	 * Appends a repeating radial gradient node with the given stops to @snapshot.
	 *
	 * Params:
	 *     bounds = the rectangle to render the readial gradient into
	 *     center = the center point for the radial gradient
	 *     hradius = the horizontal radius
	 *     vradius = the vertical radius
	 *     start = the start position (on the horizontal axis)
	 *     end = the end position (on the horizontal axis)
	 *     stops = the color stops defining the gradient
	 */
	public void appendRepeatingRadialGradient(Rect bounds, Point center, float hradius, float vradius, float start, float end, GskColorStop[] stops)
	{
		gtk_snapshot_append_repeating_radial_gradient(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (center is null) ? null : center.getPointStruct(), hradius, vradius, start, end, stops.ptr, cast(size_t)stops.length);
	}

	/**
	 * Creates a new render node drawing the @texture
	 * into the given @bounds and appends it to the
	 * current render node of @snapshot.
	 *
	 * Params:
	 *     texture = the texture to render
	 *     bounds = the bounds for the new node
	 */
	public void appendTexture(Texture texture, Rect bounds)
	{
		gtk_snapshot_append_texture(gtkSnapshot, (texture is null) ? null : texture.getTextureStruct(), (bounds is null) ? null : bounds.getRectStruct());
	}

	/**
	 * Returns the node that was constructed by @snapshot
	 * and frees @snapshot.
	 *
	 * Returns: a newly-created [class@Gsk.RenderNode]
	 */
	public RenderNode freeToNode()
	{
		auto __p = gtk_snapshot_free_to_node(gtkSnapshot);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/**
	 * Returns a paintable for the node that was
	 * constructed by @snapshot and frees @snapshot.
	 *
	 * Params:
	 *     size = The size of the resulting paintable
	 *         or %NULL to use the bounds of the snapshot
	 *
	 * Returns: a newly-created [iface@Gdk.Paintable]
	 */
	public PaintableIF freeToPaintable(Size size)
	{
		auto __p = gtk_snapshot_free_to_paintable(gtkSnapshot, (size is null) ? null : size.getSizeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}

	/**
	 * Removes the top element from the stack of render nodes and
	 * adds it to the nearest [class@Gsk.GLShaderNode] below it.
	 *
	 * This must be called the same number of times as the number
	 * of textures is needed for the shader in
	 * [method@Gtk.Snapshot.push_gl_shader].
	 */
	public void glShaderPopTexture()
	{
		gtk_snapshot_gl_shader_pop_texture(gtkSnapshot);
	}

	/**
	 * Applies a perspective projection transform.
	 *
	 * See [method@Gsk.Transform.perspective] for a discussion on the details.
	 *
	 * Params:
	 *     depth = distance of the z=0 plane
	 */
	public void perspective(float depth)
	{
		gtk_snapshot_perspective(gtkSnapshot, depth);
	}

	/**
	 * Removes the top element from the stack of render nodes,
	 * and appends it to the node underneath it.
	 */
	public void pop()
	{
		gtk_snapshot_pop(gtkSnapshot);
	}

	/**
	 * Blends together two images with the given blend mode.
	 *
	 * Until the first call to [method@Gtk.Snapshot.pop], the
	 * bottom image for the blend operation will be recorded.
	 * After that call, the top image to be blended will be
	 * recorded until the second call to [method@Gtk.Snapshot.pop].
	 *
	 * Calling this function requires two subsequent calls
	 * to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     blendMode = blend mode to use
	 */
	public void pushBlend(GskBlendMode blendMode)
	{
		gtk_snapshot_push_blend(gtkSnapshot, blendMode);
	}

	/**
	 * Blurs an image.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     radius = the blur radius to use. Must be positive
	 */
	public void pushBlur(double radius)
	{
		gtk_snapshot_push_blur(gtkSnapshot, radius);
	}

	/**
	 * Clips an image to a rectangle.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     bounds = the rectangle to clip to
	 */
	public void pushClip(Rect bounds)
	{
		gtk_snapshot_push_clip(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct());
	}

	/**
	 * Modifies the colors of an image by applying an affine transformation
	 * in RGB space.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     colorMatrix = the color matrix to use
	 *     colorOffset = the color offset to use
	 */
	public void pushColorMatrix(Matrix colorMatrix, Vec4 colorOffset)
	{
		gtk_snapshot_push_color_matrix(gtkSnapshot, (colorMatrix is null) ? null : colorMatrix.getMatrixStruct(), (colorOffset is null) ? null : colorOffset.getVec4Struct());
	}

	/**
	 * Snapshots a cross-fade operation between two images with the
	 * given @progress.
	 *
	 * Until the first call to [method@Gtk.Snapshot.pop], the start image
	 * will be snapshot. After that call, the end image will be recorded
	 * until the second call to [method@Gtk.Snapshot.pop].
	 *
	 * Calling this function requires two subsequent calls
	 * to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     progress = progress between 0.0 and 1.0
	 */
	public void pushCrossFade(double progress)
	{
		gtk_snapshot_push_cross_fade(gtkSnapshot, progress);
	}

	/**
	 * Push a [class@Gsk.GLShaderNode].
	 *
	 * The node uses the given [class@Gsk.GLShader] and uniform values
	 * Additionally this takes a list of @n_children other nodes
	 * which will be passed to the [class@Gsk.GLShaderNode].
	 *
	 * The @take_args argument is a block of data to use for uniform
	 * arguments, as per types and offsets defined by the @shader.
	 * Normally this is generated by [method@Gsk.GLShader.format_args]
	 * or [struct@Gsk.ShaderArgsBuilder].
	 *
	 * The snapshotter takes ownership of @take_args, so the caller should
	 * not free it after this.
	 *
	 * If the renderer doesn't support GL shaders, or if there is any
	 * problem when compiling the shader, then the node will draw pink.
	 * You should use [method@Gsk.GLShader.compile] to ensure the @shader
	 * will work for the renderer before using it.
	 *
	 * If the shader requires textures (see [method@Gsk.GLShader.get_n_textures]),
	 * then it is expected that you call [method@Gtk.Snapshot.gl_shader_pop_texture]
	 * the number of times that are required. Each of these calls will generate
	 * a node that is added as a child to the `GskGLShaderNode`, which in turn
	 * will render these offscreen and pass as a texture to the shader.
	 *
	 * Once all textures (if any) are pop:ed, you must call the regular
	 * [method@Gtk.Snapshot.pop].
	 *
	 * If you want to use pre-existing textures as input to the shader rather
	 * than rendering new ones, use [method@Gtk.Snapshot.append_texture] to
	 * push a texture node. These will be used directly rather than being
	 * re-rendered.
	 *
	 * For details on how to write shaders, see [class@Gsk.GLShader].
	 *
	 * Params:
	 *     shader = The code to run
	 *     bounds = the rectangle to render into
	 *     takeArgs = Data block with arguments for the shader.
	 */
	public void pushGlShader(GLShader shader, Rect bounds, Bytes takeArgs)
	{
		gtk_snapshot_push_gl_shader(gtkSnapshot, (shader is null) ? null : shader.getGLShaderStruct(), (bounds is null) ? null : bounds.getRectStruct(), (takeArgs is null) ? null : takeArgs.getBytesStruct(true));
	}

	/**
	 * Modifies the opacity of an image.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     opacity = the opacity to use
	 */
	public void pushOpacity(double opacity)
	{
		gtk_snapshot_push_opacity(gtkSnapshot, opacity);
	}

	/**
	 * Creates a node that repeats the child node.
	 *
	 * The child is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     bounds = the bounds within which to repeat
	 *     childBounds = the bounds of the child or %NULL
	 *         to use the full size of the collected child node
	 */
	public void pushRepeat(Rect bounds, Rect childBounds)
	{
		gtk_snapshot_push_repeat(gtkSnapshot, (bounds is null) ? null : bounds.getRectStruct(), (childBounds is null) ? null : childBounds.getRectStruct());
	}

	/**
	 * Clips an image to a rounded rectangle.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     bounds = the rounded rectangle to clip to
	 */
	public void pushRoundedClip(RoundedRect bounds)
	{
		gtk_snapshot_push_rounded_clip(gtkSnapshot, (bounds is null) ? null : bounds.getRoundedRectStruct());
	}

	/**
	 * Applies a shadow to an image.
	 *
	 * The image is recorded until the next call to [method@Gtk.Snapshot.pop].
	 *
	 * Params:
	 *     shadow = the first shadow specification
	 */
	public void pushShadow(GskShadow[] shadow)
	{
		gtk_snapshot_push_shadow(gtkSnapshot, shadow.ptr, cast(size_t)shadow.length);
	}

	/**
	 * Creates a render node for the CSS background according to @context,
	 * and appends it to the current node of @snapshot, without changing
	 * the current node.
	 *
	 * Params:
	 *     context = the style context that defines the background
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 */
	public void renderBackground(StyleContext context, double x, double y, double width, double height)
	{
		gtk_snapshot_render_background(gtkSnapshot, (context is null) ? null : context.getStyleContextStruct(), x, y, width, height);
	}

	/**
	 * Creates a render node for the focus outline according to @context,
	 * and appends it to the current node of @snapshot, without changing
	 * the current node.
	 *
	 * Params:
	 *     context = the style context that defines the focus ring
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 */
	public void renderFocus(StyleContext context, double x, double y, double width, double height)
	{
		gtk_snapshot_render_focus(gtkSnapshot, (context is null) ? null : context.getStyleContextStruct(), x, y, width, height);
	}

	/**
	 * Creates a render node for the CSS border according to @context,
	 * and appends it to the current node of @snapshot, without changing
	 * the current node.
	 *
	 * Params:
	 *     context = the style context that defines the frame
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     width = rectangle width
	 *     height = rectangle height
	 */
	public void renderFrame(StyleContext context, double x, double y, double width, double height)
	{
		gtk_snapshot_render_frame(gtkSnapshot, (context is null) ? null : context.getStyleContextStruct(), x, y, width, height);
	}

	/**
	 * Draws a text caret using @snapshot at the specified index of @layout.
	 *
	 * Params:
	 *     context = a `GtkStyleContext`
	 *     x = X origin
	 *     y = Y origin
	 *     layout = the `PangoLayout` of the text
	 *     index = the index in the `PangoLayout`
	 *     direction = the `PangoDirection` of the text
	 */
	public void renderInsertionCursor(StyleContext context, double x, double y, PgLayout layout, int index, PangoDirection direction)
	{
		gtk_snapshot_render_insertion_cursor(gtkSnapshot, (context is null) ? null : context.getStyleContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct(), index, direction);
	}

	/**
	 * Creates a render node for rendering @layout according to the style
	 * information in @context, and appends it to the current node of @snapshot,
	 * without changing the current node.
	 *
	 * Params:
	 *     context = the style context that defines the text
	 *     x = X origin of the rectangle
	 *     y = Y origin of the rectangle
	 *     layout = the `PangoLayout` to render
	 */
	public void renderLayout(StyleContext context, double x, double y, PgLayout layout)
	{
		gtk_snapshot_render_layout(gtkSnapshot, (context is null) ? null : context.getStyleContextStruct(), x, y, (layout is null) ? null : layout.getPgLayoutStruct());
	}

	/**
	 * Restores @snapshot to the state saved by a preceding call to
	 * [method@Snapshot.save] and removes that state from the stack of
	 * saved states.
	 */
	public void restore()
	{
		gtk_snapshot_restore(gtkSnapshot);
	}

	/**
	 * Rotates @@snapshot's coordinate system by @angle degrees in 2D space -
	 * or in 3D speak, rotates around the Z axis.
	 *
	 * To rotate around other axes, use [method@Gsk.Transform.rotate_3d].
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees (clockwise)
	 */
	public void rotate(float angle)
	{
		gtk_snapshot_rotate(gtkSnapshot, angle);
	}

	/**
	 * Rotates @snapshot's coordinate system by @angle degrees around @axis.
	 *
	 * For a rotation in 2D space, use [method@Gsk.Transform.rotate].
	 *
	 * Params:
	 *     angle = the rotation angle, in degrees (clockwise)
	 *     axis = The rotation axis
	 */
	public void rotate3d(float angle, Vec3 axis)
	{
		gtk_snapshot_rotate_3d(gtkSnapshot, angle, (axis is null) ? null : axis.getVec3Struct());
	}

	/**
	 * Makes a copy of the current state of @snapshot and saves it
	 * on an internal stack.
	 *
	 * When [method@Gtk.Snapshot.restore] is called, @snapshot will
	 * be restored to the saved state. Multiple calls to
	 * [method@Snapshot.save] and [class@Snapshot.restore] can be nested;
	 * each call to `gtk_snapshot_restore()` restores the state from
	 * the matching paired `gtk_snapshot_save()`.
	 *
	 * It is necessary to clear all saved states with corresponding
	 * calls to `gtk_snapshot_restore()`.
	 */
	public void save()
	{
		gtk_snapshot_save(gtkSnapshot);
	}

	/**
	 * Scales @snapshot's coordinate system in 2-dimensional space by
	 * the given factors.
	 *
	 * Use [method@Gtk.Snapshot.scale_3d] to scale in all 3 dimensions.
	 *
	 * Params:
	 *     factorX = scaling factor on the X axis
	 *     factorY = scaling factor on the Y axis
	 */
	public void scale(float factorX, float factorY)
	{
		gtk_snapshot_scale(gtkSnapshot, factorX, factorY);
	}

	/**
	 * Scales @snapshot's coordinate system by the given factors.
	 *
	 * Params:
	 *     factorX = scaling factor on the X axis
	 *     factorY = scaling factor on the Y axis
	 *     factorZ = scaling factor on the Z axis
	 */
	public void scale3d(float factorX, float factorY, float factorZ)
	{
		gtk_snapshot_scale_3d(gtkSnapshot, factorX, factorY, factorZ);
	}

	/**
	 * Returns the render node that was constructed
	 * by @snapshot.
	 *
	 * After calling this function, it is no longer possible to
	 * add more nodes to @snapshot. The only function that should
	 * be called after this is [method@GObject.Object.unref].
	 *
	 * Returns: the constructed `GskRenderNode`
	 */
	public RenderNode toNode()
	{
		auto __p = gtk_snapshot_to_node(gtkSnapshot);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RenderNode)(cast(GskRenderNode*) __p, true);
	}

	/**
	 * Returns a paintable encapsulating the render node
	 * that was constructed by @snapshot.
	 *
	 * After calling this function, it is no longer possible to
	 * add more nodes to @snapshot. The only function that should
	 * be called after this is [method@GObject.Object.unref].
	 *
	 * Params:
	 *     size = The size of the resulting paintable
	 *         or %NULL to use the bounds of the snapshot
	 *
	 * Returns: a new `GdkPaintable`
	 */
	public PaintableIF toPaintable(Size size)
	{
		auto __p = gtk_snapshot_to_paintable(gtkSnapshot, (size is null) ? null : size.getSizeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}

	/**
	 * Transforms @snapshot's coordinate system with the given @transform.
	 *
	 * Params:
	 *     transform = the transform to apply
	 */
	public void transform(Transform transform)
	{
		gtk_snapshot_transform(gtkSnapshot, (transform is null) ? null : transform.getTransformStruct());
	}

	/**
	 * Transforms @snapshot's coordinate system with the given @matrix.
	 *
	 * Params:
	 *     matrix = the matrix to multiply the transform with
	 */
	public void transformMatrix(Matrix matrix)
	{
		gtk_snapshot_transform_matrix(gtkSnapshot, (matrix is null) ? null : matrix.getMatrixStruct());
	}

	/**
	 * Translates @snapshot's coordinate system by @point in 2-dimensional space.
	 *
	 * Params:
	 *     point = the point to translate the snapshot by
	 */
	public void translate(Point point)
	{
		gtk_snapshot_translate(gtkSnapshot, (point is null) ? null : point.getPointStruct());
	}

	/**
	 * Translates @snapshot's coordinate system by @point.
	 *
	 * Params:
	 *     point = the point to translate the snapshot by
	 */
	public void translate3d(Point3D point)
	{
		gtk_snapshot_translate_3d(gtkSnapshot, (point is null) ? null : point.getPoint3DStruct());
	}
}
