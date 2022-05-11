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


module gsk.c.types;

public import cairo.c.types;
public import gdk.c.types;
public import glib.c.types;
public import gobject.c.types;
public import graphene.c.types;
public import pango.c.types;


/**
 * The blend modes available for render nodes.
 *
 * The implementation of each blend mode is deferred to the
 * rendering pipeline.
 *
 * See <https://www.w3.org/TR/compositing-1/#blending> for more information
 * on blending and blend modes.
 */
public enum GskBlendMode
{
	/**
	 * The default blend mode, which specifies no blending
	 */
	DEFAULT = 0,
	/**
	 * The source color is multiplied by the destination
	 * and replaces the destination
	 */
	MULTIPLY = 1,
	/**
	 * Multiplies the complements of the destination and source
	 * color values, then complements the result.
	 */
	SCREEN = 2,
	/**
	 * Multiplies or screens the colors, depending on the
	 * destination color value. This is the inverse of hard-list
	 */
	OVERLAY = 3,
	/**
	 * Selects the darker of the destination and source colors
	 */
	DARKEN = 4,
	/**
	 * Selects the lighter of the destination and source colors
	 */
	LIGHTEN = 5,
	/**
	 * Brightens the destination color to reflect the source color
	 */
	COLOR_DODGE = 6,
	/**
	 * Darkens the destination color to reflect the source color
	 */
	COLOR_BURN = 7,
	/**
	 * Multiplies or screens the colors, depending on the source color value
	 */
	HARD_LIGHT = 8,
	/**
	 * Darkens or lightens the colors, depending on the source color value
	 */
	SOFT_LIGHT = 9,
	/**
	 * Subtracts the darker of the two constituent colors from the lighter color
	 */
	DIFFERENCE = 10,
	/**
	 * Produces an effect similar to that of the difference mode but lower in contrast
	 */
	EXCLUSION = 11,
	/**
	 * Creates a color with the hue and saturation of the source color and the luminosity of the destination color
	 */
	COLOR = 12,
	/**
	 * Creates a color with the hue of the source color and the saturation and luminosity of the destination color
	 */
	HUE = 13,
	/**
	 * Creates a color with the saturation of the source color and the hue and luminosity of the destination color
	 */
	SATURATION = 14,
	/**
	 * Creates a color with the luminosity of the source color and the hue and saturation of the destination color
	 */
	LUMINOSITY = 15,
}
alias GskBlendMode BlendMode;

/**
 * The corner indices used by `GskRoundedRect`.
 */
public enum GskCorner
{
	/**
	 * The top left corner
	 */
	TOP_LEFT = 0,
	/**
	 * The top right corner
	 */
	TOP_RIGHT = 1,
	/**
	 * The bottom right corner
	 */
	BOTTOM_RIGHT = 2,
	/**
	 * The bottom left corner
	 */
	BOTTOM_LEFT = 3,
}
alias GskCorner Corner;

/**
 * This defines the types of the uniforms that `GskGLShaders`
 * declare.
 *
 * It defines both what the type is called in the GLSL shader
 * code, and what the corresponding C type is on the Gtk side.
 */
public enum GskGLUniformType
{
	/**
	 * No type, used for uninitialized or unspecified values.
	 */
	NONE = 0,
	/**
	 * A float uniform
	 */
	FLOAT = 1,
	/**
	 * A GLSL int / gint32 uniform
	 */
	INT = 2,
	/**
	 * A GLSL uint / guint32 uniform
	 */
	UINT = 3,
	/**
	 * A GLSL bool / gboolean uniform
	 */
	BOOL = 4,
	/**
	 * A GLSL vec2 / graphene_vec2_t uniform
	 */
	VEC2 = 5,
	/**
	 * A GLSL vec3 / graphene_vec3_t uniform
	 */
	VEC3 = 6,
	/**
	 * A GLSL vec4 / graphene_vec4_t uniform
	 */
	VEC4 = 7,
}
alias GskGLUniformType GLUniformType;

/**
 * The type of a node determines what the node is rendering.
 */
public enum GskRenderNodeType
{
	/**
	 * Error type. No node will ever have this type.
	 */
	NOT_A_RENDER_NODE = 0,
	/**
	 * A node containing a stack of children
	 */
	CONTAINER_NODE = 1,
	/**
	 * A node drawing a `cairo_surface_t`
	 */
	CAIRO_NODE = 2,
	/**
	 * A node drawing a single color rectangle
	 */
	COLOR_NODE = 3,
	/**
	 * A node drawing a linear gradient
	 */
	LINEAR_GRADIENT_NODE = 4,
	/**
	 * A node drawing a repeating linear gradient
	 */
	REPEATING_LINEAR_GRADIENT_NODE = 5,
	/**
	 * A node drawing a radial gradient
	 */
	RADIAL_GRADIENT_NODE = 6,
	/**
	 * A node drawing a repeating radial gradient
	 */
	REPEATING_RADIAL_GRADIENT_NODE = 7,
	/**
	 * A node drawing a conic gradient
	 */
	CONIC_GRADIENT_NODE = 8,
	/**
	 * A node stroking a border around an area
	 */
	BORDER_NODE = 9,
	/**
	 * A node drawing a `GdkTexture`
	 */
	TEXTURE_NODE = 10,
	/**
	 * A node drawing an inset shadow
	 */
	INSET_SHADOW_NODE = 11,
	/**
	 * A node drawing an outset shadow
	 */
	OUTSET_SHADOW_NODE = 12,
	/**
	 * A node that renders its child after applying a matrix transform
	 */
	TRANSFORM_NODE = 13,
	/**
	 * A node that changes the opacity of its child
	 */
	OPACITY_NODE = 14,
	/**
	 * A node that applies a color matrix to every pixel
	 */
	COLOR_MATRIX_NODE = 15,
	/**
	 * A node that repeats the child's contents
	 */
	REPEAT_NODE = 16,
	/**
	 * A node that clips its child to a rectangular area
	 */
	CLIP_NODE = 17,
	/**
	 * A node that clips its child to a rounded rectangle
	 */
	ROUNDED_CLIP_NODE = 18,
	/**
	 * A node that draws a shadow below its child
	 */
	SHADOW_NODE = 19,
	/**
	 * A node that blends two children together
	 */
	BLEND_NODE = 20,
	/**
	 * A node that cross-fades between two children
	 */
	CROSS_FADE_NODE = 21,
	/**
	 * A node containing a glyph string
	 */
	TEXT_NODE = 22,
	/**
	 * A node that applies a blur
	 */
	BLUR_NODE = 23,
	/**
	 * Debug information that does not affect the rendering
	 */
	DEBUG_NODE = 24,
	/**
	 * A node that uses OpenGL fragment shaders to render
	 */
	GL_SHADER_NODE = 25,
}
alias GskRenderNodeType RenderNodeType;

/**
 * The filters used when scaling texture data.
 *
 * The actual implementation of each filter is deferred to the
 * rendering pipeline.
 */
public enum GskScalingFilter
{
	/**
	 * linear interpolation filter
	 */
	LINEAR = 0,
	/**
	 * nearest neighbor interpolation filter
	 */
	NEAREST = 1,
	/**
	 * linear interpolation along each axis,
	 * plus mipmap generation, with linear interpolation along the mipmap
	 * levels
	 */
	TRILINEAR = 2,
}
alias GskScalingFilter ScalingFilter;

/**
 * Errors that can happen during (de)serialization.
 */
public enum GskSerializationError
{
	/**
	 * The format can not be identified
	 */
	UNSUPPORTED_FORMAT = 0,
	/**
	 * The version of the data is not
	 * understood
	 */
	UNSUPPORTED_VERSION = 1,
	/**
	 * The given data may not exist in
	 * a proper serialization
	 */
	INVALID_DATA = 2,
}
alias GskSerializationError SerializationError;

/**
 * The categories of matrices relevant for GSK and GTK.
 *
 * Note that any category includes matrices of all later categories.
 * So if you want to for example check if a matrix is a 2D matrix,
 * `category >= GSK_TRANSFORM_CATEGORY_2D` is the way to do this.
 *
 * Also keep in mind that rounding errors may cause matrices to not
 * conform to their categories. Otherwise, matrix operations done via
 * multiplication will not worsen categories. So for the matrix
 * multiplication `C = A * B`, `category(C) = MIN (category(A), category(B))`.
 */
public enum GskTransformCategory
{
	/**
	 * The category of the matrix has not been
	 * determined.
	 */
	UNKNOWN = 0,
	/**
	 * Analyzing the matrix concluded that it does
	 * not fit in any other category.
	 */
	ANY = 1,
	/**
	 * The matrix is a 3D matrix. This means that
	 * the w column (the last column) has the values (0, 0, 0, 1).
	 */
	_3D = 2,
	/**
	 * The matrix is a 2D matrix. This is equivalent
	 * to graphene_matrix_is_2d() returning %TRUE. In particular, this
	 * means that Cairo can deal with the matrix.
	 */
	_2D = 3,
	/**
	 * The matrix is a combination of 2D scale
	 * and 2D translation operations. In particular, this means that any
	 * rectangle can be transformed exactly using this matrix.
	 */
	_2D_AFFINE = 4,
	/**
	 * The matrix is a 2D translation.
	 */
	_2D_TRANSLATE = 5,
	/**
	 * The matrix is the identity matrix.
	 */
	IDENTITY = 6,
}
alias GskTransformCategory TransformCategory;

struct GskBlendNode;

struct GskBlurNode;

struct GskBorderNode;

struct GskBroadwayRenderer;

struct GskBroadwayRendererClass;

struct GskCairoNode;

struct GskCairoRenderer;

struct GskCairoRendererClass;

struct GskClipNode;

struct GskColorMatrixNode;

struct GskColorNode;

/**
 * A color stop in a gradient node.
 */
struct GskColorStop
{
	/**
	 * the offset of the color stop
	 */
	float offset;
	/**
	 * the color at the given offset
	 */
	GdkRGBA color;
}

struct GskConicGradientNode;

struct GskContainerNode;

struct GskCrossFadeNode;

struct GskDebugNode;

struct GskGLRenderer;

struct GskGLRendererClass;

struct GskGLShader;

struct GskGLShaderClass
{
	GObjectClass parentClass;
}

struct GskGLShaderNode;

struct GskInsetShadowNode;

struct GskLinearGradientNode;

struct GskNglRenderer;

struct GskOpacityNode;

struct GskOutsetShadowNode;

/**
 * A location in a parse buffer.
 */
struct GskParseLocation
{
	/**
	 * the offset of the location in the parse buffer, as bytes
	 */
	size_t bytes;
	/**
	 * the offset of the location in the parse buffer, as characters
	 */
	size_t chars;
	/**
	 * the line of the location in the parse buffer
	 */
	size_t lines;
	/**
	 * the position in the line, as bytes
	 */
	size_t lineBytes;
	/**
	 * the position in the line, as characters
	 */
	size_t lineChars;
}

struct GskRadialGradientNode;

struct GskRenderNode;

struct GskRenderer;

struct GskRendererClass;

struct GskRepeatNode;

struct GskRepeatingLinearGradientNode;

struct GskRepeatingRadialGradientNode;

struct GskRoundedClipNode;

struct GskRoundedRect
{
	/**
	 * the bounds of the rectangle
	 */
	graphene_rect_t bounds;
	/**
	 * the size of the 4 rounded corners
	 */
	graphene_size_t[4] corner;
}

struct GskShaderArgsBuilder;

/**
 * The shadow parameters in a shadow node.
 */
struct GskShadow
{
	/**
	 * the color of the shadow
	 */
	GdkRGBA color;
	/**
	 * the horizontal offset of the shadow
	 */
	float dx;
	/**
	 * the vertical offset of the shadow
	 */
	float dy;
	/**
	 * the radius of the shadow
	 */
	float radius;
}

struct GskShadowNode;

struct GskTextNode;

struct GskTextureNode;

struct GskTransform;

struct GskTransformNode;

/**
 * Type of callback that is called when an error occurs
 * during node deserialization.
 *
 * Params:
 *     start = start of the error location
 *     end = end of the error location
 *     error = the error
 *     userData = user data
 */
public alias extern(C) void function(GskParseLocation* start, GskParseLocation* end, GError* error, void* userData) GskParseErrorFunc;
