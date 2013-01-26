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
 * inFile  = cairo-cairo-t.html
 * outPack = cairo
 * outFile = Context
 * strct   = cairo_t
 * realStrct=
 * ctorStrct=
 * clss    = Context
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- cairo_destroy
 * 	- cairo_create
 * omit signals:
 * imports:
 * 	- cairo.FontFace
 * 	- cairo.FontOption
 * 	- cairo.Matrix
 * 	- cairo.ScaledFont
 * 	- cairo.Surface
 * 	- cairo.Pattern
 * 	- glib.Str
 * 	- gtkc.paths;
 * 	- gtkc.Loader;
 * structWrap:
 * 	- cairo_font_face_t* -> FontFace
 * 	- cairo_font_options_t* -> FontOption
 * 	- cairo_matrix_t* -> Matrix
 * 	- cairo_pattern_t* -> Pattern
 * 	- cairo_scaled_font_t* -> ScaledFont
 * 	- cairo_surface_t* -> Surface
 * 	- cairo_t* -> Context
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Context;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;


private import cairo.FontFace;
private import cairo.FontOption;
private import cairo.Matrix;
private import cairo.ScaledFont;
private import cairo.Surface;
private import cairo.Pattern;
private import glib.Str;
private import gtkc.paths;;
private import gtkc.Loader;;




/**
 * Description
 * cairo_t is the main object used when drawing with cairo. To
 * draw with cairo, you create a cairo_t, set the target surface,
 * and drawing options for the cairo_t, create shapes with
 * functions like cairo_move_to() and cairo_line_to(), and then
 * draw shapes with cairo_stroke() or cairo_fill().
 * cairo_t's can be pushed to a stack via cairo_save().
 * They may then safely be changed, without losing the current state.
 * Use cairo_restore() to restore to the saved state.
 */
public class Context
{
	
	/** the main Gtk struct */
	protected cairo_t* cairo;
	
	
	public cairo_t* getContextStruct()
	{
		return cairo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo;
	}
	
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_t* cairo, bool ownedRef = false)
	{
		this.cairo = cairo;
		
		if ( !ownedRef )
		{
			cairo_reference(this.cairo);
		}
	}
	
	~this ()
	{
		if ( Linker.isLoaded(LIBRARY.CAIRO) &&
		cairo !is null &&
		cairo_get_reference_count(cairo) > 0 )
		{
			cairo_destroy(cairo);
		}
	}
	
	/**
	 * Allocates an array of cairo_glyph_t's.
	 * This function is only useful in implementations of
	 * cairo_user_scaled_font_text_to_glyphs_func_t where the user
	 * needs to allocate an array of glyphs that cairo will free.
	 * For all other uses, user can use their own allocation method
	 * for glyphs.
	 * This function returns NULL if num_glyphs is not positive,
	 * or if out of memory. That means, the NULL return value
	 * signals out-of-memory only if num_glyphs was positive.
	 * Since 1.8
	 * Params:
	 * numGlyphs =  number of glyphs to allocate
	 * Returns: the newly allocated array of glyphs that should be freed using cairo_glyph_free()
	 */
	public static cairo_glyph_t[] glyphAllocate(int numGlyphs)
	{
		// cairo_glyph_t* cairo_glyph_allocate (int num_glyphs);
		return cairo_glyph_allocate(numGlyphs)[0 .. numGlyphs];
	}
	
	/**
	 * Allocates an array of cairo_text_cluster_t's.
	 * This function is only useful in implementations of
	 * cairo_user_scaled_font_text_to_glyphs_func_t where the user
	 * needs to allocate an array of text clusters that cairo will free.
	 * For all other uses, user can use their own allocation method
	 * for text clusters.
	 * This function returns NULL if num_clusters is not positive,
	 * or if out of memory. That means, the NULL return value
	 * signals out-of-memory only if num_clusters was positive.
	 * Since 1.8
	 * Params:
	 * numClusters =  number of text_clusters to allocate
	 * Returns: the newly allocated array of text clusters that should be freed using cairo_text_cluster_free()
	 */
	public static cairo_text_cluster_t[] textClusterAllocate(int numClusters)
	{
		// cairo_text_cluster_t* cairo_text_cluster_allocate (int num_clusters);
		return cairo_text_cluster_allocate(numClusters)[0 .. numClusters];
	}
	
	/**
	 * Decreases the reference count on cr by one. If the result
	 * is zero, then cr and all associated resources are freed.
	 * See cairo_reference().
	 */
	public void destroy()
	{
		uint refCount = cairo_get_reference_count(cairo);
		
		// void cairo_destroy (cairo_t *cr);
		cairo_destroy(cairo);
		
		//if refCount is 1 the actual refCount after cairo_destroy is 0.
		if ( refCount == 1 )
		cairo = null;
	}
	
	/**
	 * Creates a new context with all graphics state parameters set to
	 * default values and with target as a target surface.
	 *
	 * Since 1.0
	 * Params:
	 *     target = target surface for the context
	 *
	 * Returns:
	 *    a newly allocated context. This function never returns null.
	 *    If memory cannot be allocated, a special context will be returned
	 *    on which status() returns CairoStatus.NO_MEMORY.
	 *    If you attempt to target a surface which does not support writing
	 *    (such as cairo_mime_surface_t) then a CairoStatus.WRITE_ERROR will
	 *    be raised. You can use this object normally, but no drawing will
	 *    be done.
	 */
	public static Context create(Surface target)
	{
		// cairo_t * cairo_create (cairo_surface_t *target);
		auto p = cairo_create((target is null) ? null : target.getSurfaceStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Context(cast(cairo_t*) p, true);
	}
	
	/**
	 * Description
	 * Paths are the most basic drawing tools and are primarily used to implicitly
	 * generate simple masks.
	 */
	
	/**
	 * Description
	 * The current transformation matrix, ctm, is a
	 * two-dimensional affine transformation that maps all coordinates and other
	 * drawing instruments from the user space into the
	 * surface's canonical coordinate system, also known as the device
	 * space.
	 */
	
	/**
	 * Description
	 * The functions with text in their name form cairo's
	 * toy text API. The toy API takes UTF-8 encoded
	 * text and is limited in its functionality to rendering simple
	 * left-to-right text with no advanced features. That means for example
	 * that most complex scripts like Hebrew, Arabic, and Indic scripts are
	 * out of question. No kerning or correct positioning of diacritical marks
	 * either. The font selection is pretty limited too and doesn't handle the
	 * case that the selected font does not cover the characters in the text.
	 * This set of functions are really that, a toy text API, for testing and
	 * demonstration purposes. Any serious application should avoid them.
	 * The functions with glyphs in their name form cairo's
	 * low-level text API. The low-level API relies on
	 * the user to convert text to a set of glyph indexes and positions. This
	 * is a very hard problem and is best handled by external libraries, like
	 * the pangocairo that is part of the Pango text layout and rendering library.
	 * Pango is available from http://www.pango.org/.
	 */
	
	/**
	 * Increases the reference count on cr by one. This prevents
	 * cr from being destroyed until a matching call to cairo_destroy()
	 * is made.
	 * The number of references to a cairo_t can be get using
	 * cairo_get_reference_count().
	 * Since 1.0
	 * Returns: the referenced cairo_t.
	 */
	public Context reference()
	{
		// cairo_t * cairo_reference (cairo_t *cr);
		auto p = cairo_reference(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new Context(cast(cairo_t*) p);
	}
	
	/**
	 * Checks whether an error has previously occurred for this context.
	 * Since 1.0
	 * Returns: the current status of this context, see cairo_status_t
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_status (cairo_t *cr);
		return cairo_status(cairo);
	}
	
	/**
	 * Makes a copy of the current state of cr and saves it
	 * on an internal stack of saved states for cr. When
	 * cairo_restore() is called, cr will be restored to
	 * the saved state. Multiple calls to cairo_save() and
	 * cairo_restore() can be nested; each call to cairo_restore()
	 * restores the state from the matching paired cairo_save().
	 * It isn't necessary to clear all saved states before
	 * a cairo_t is freed. If the reference count of a cairo_t
	 * drops to zero in response to a call to cairo_destroy(),
	 * any saved states will be freed along with the cairo_t.
	 * Since 1.0
	 */
	public void save()
	{
		// void cairo_save (cairo_t *cr);
		cairo_save(cairo);
	}
	
	/**
	 * Restores cr to the state saved by a preceding call to
	 * cairo_save() and removes that state from the stack of
	 * saved states.
	 * Since 1.0
	 */
	public void restore()
	{
		// void cairo_restore (cairo_t *cr);
		cairo_restore(cairo);
	}
	
	/**
	 * Gets the target surface for the cairo context as passed to
	 * cairo_create().
	 * This function will always return a valid pointer, but the result
	 * can be a "nil" surface if cr is already in an error state,
	 * (ie. cairo_status() != CAIRO_STATUS_SUCCESS).
	 * A nil surface is indicated by cairo_surface_status()
	 * != CAIRO_STATUS_SUCCESS.
	 * Since 1.0
	 * Returns: the target surface. This object is owned by cairo. To keep a reference to it, you must call cairo_surface_reference().
	 */
	public Surface getTarget()
	{
		// cairo_surface_t * cairo_get_target (cairo_t *cr);
		auto p = cairo_get_target(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Temporarily redirects drawing to an intermediate surface known as a
	 * group. The redirection lasts until the group is completed by a call
	 * to cairo_pop_group() or cairo_pop_group_to_source(). These calls
	 * provide the result of any drawing to the group as a pattern,
	 * (either as an explicit object, or set as the source pattern).
	 * This group functionality can be convenient for performing
	 * intermediate compositing. One common use of a group is to render
	 * objects as opaque within the group, (so that they occlude each
	 * other), and then blend the result with translucence onto the
	 * destination.
	 * Groups can be nested arbitrarily deep by making balanced calls to
	 * cairo_push_group()/cairo_pop_group(). Each call pushes/pops the new
	 * target group onto/from a stack.
	 * The cairo_push_group() function calls cairo_save() so that any
	 * changes to the graphics state will not be visible outside the
	 * group, (the pop_group functions call cairo_restore()).
	 * By default the intermediate group will have a content type of
	 * CAIRO_CONTENT_COLOR_ALPHA. Other content types can be chosen for
	 * the group by using cairo_push_group_with_content() instead.
	 * As an example, here is how one might fill and stroke a path with
	 * translucence, but without any portion of the fill being visible
	 * Since 1.2
	 */
	public void pushGroup()
	{
		// void cairo_push_group (cairo_t *cr);
		cairo_push_group(cairo);
	}
	
	/**
	 * Temporarily redirects drawing to an intermediate surface known as a
	 * group. The redirection lasts until the group is completed by a call
	 * to cairo_pop_group() or cairo_pop_group_to_source(). These calls
	 * provide the result of any drawing to the group as a pattern,
	 * (either as an explicit object, or set as the source pattern).
	 * The group will have a content type of content. The ability to
	 * control this content type is the only distinction between this
	 * function and cairo_push_group() which you should see for a more
	 * detailed description of group rendering.
	 * Since 1.2
	 * Params:
	 * content = a cairo_content_t indicating the type of group that
	 * will be created
	 */
	public void pushGroupWithContent(cairo_content_t content)
	{
		// void cairo_push_group_with_content (cairo_t *cr,  cairo_content_t content);
		cairo_push_group_with_content(cairo, content);
	}
	
	/**
	 * Terminates the redirection begun by a call to cairo_push_group() or
	 * cairo_push_group_with_content() and returns a new pattern
	 * containing the results of all drawing operations performed to the
	 * group.
	 * The cairo_pop_group() function calls cairo_restore(), (balancing a
	 * call to cairo_save() by the push_group function), so that any
	 * changes to the graphics state will not be visible outside the
	 * group.
	 * Since 1.2
	 * Returns: a newly created (surface) pattern containing the results of all drawing operations performed to the group. The caller owns the returned object and should call cairo_pattern_destroy() when finished with it.
	 */
	public Pattern popGroup()
	{
		// cairo_pattern_t * cairo_pop_group (cairo_t *cr);
		auto p = cairo_pop_group(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Terminates the redirection begun by a call to cairo_push_group() or
	 * cairo_push_group_with_content() and installs the resulting pattern
	 * as the source pattern in the given cairo context.
	 * The behavior of this function is equivalent to the sequence of
	 * Since 1.2
	 */
	public void popGroupToSource()
	{
		// void cairo_pop_group_to_source (cairo_t *cr);
		cairo_pop_group_to_source(cairo);
	}
	
	/**
	 * Gets the current destination surface for the context. This is either
	 * the original target surface as passed to cairo_create() or the target
	 * surface for the current group as started by the most recent call to
	 * cairo_push_group() or cairo_push_group_with_content().
	 * This function will always return a valid pointer, but the result
	 * can be a "nil" surface if cr is already in an error state,
	 * (ie. cairo_status() != CAIRO_STATUS_SUCCESS).
	 * A nil surface is indicated by cairo_surface_status()
	 * != CAIRO_STATUS_SUCCESS.
	 * Since 1.2
	 * Returns: the target surface. This object is owned by cairo. To keep a reference to it, you must call cairo_surface_reference().
	 */
	public Surface getGroupTarget()
	{
		// cairo_surface_t * cairo_get_group_target (cairo_t *cr);
		auto p = cairo_get_group_target(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}
	
	/**
	 * Sets the source pattern within cr to an opaque color. This opaque
	 * color will then be used for any subsequent drawing operation until
	 * a new source pattern is set.
	 * The color components are floating point numbers in the range 0 to
	 * 1. If the values passed in are outside that range, they will be
	 * clamped.
	 * The default source pattern is opaque black, (that is, it is
	 * equivalent to cairo_set_source_rgb(cr, 0.0, 0.0, 0.0)).
	 * Since 1.0
	 * Params:
	 * red = red component of color
	 * green = green component of color
	 * blue = blue component of color
	 */
	public void setSourceRgb(double red, double green, double blue)
	{
		// void cairo_set_source_rgb (cairo_t *cr,  double red,  double green,  double blue);
		cairo_set_source_rgb(cairo, red, green, blue);
	}
	
	/**
	 * Sets the source pattern within cr to a translucent color. This
	 * color will then be used for any subsequent drawing operation until
	 * a new source pattern is set.
	 * The color and alpha components are floating point numbers in the
	 * range 0 to 1. If the values passed in are outside that range, they
	 * will be clamped.
	 * The default source pattern is opaque black, (that is, it is
	 * equivalent to cairo_set_source_rgba(cr, 0.0, 0.0, 0.0, 1.0)).
	 * Since 1.0
	 * Params:
	 * red = red component of color
	 * green = green component of color
	 * blue = blue component of color
	 * alpha = alpha component of color
	 */
	public void setSourceRgba(double red, double green, double blue, double alpha)
	{
		// void cairo_set_source_rgba (cairo_t *cr,  double red,  double green,  double blue,  double alpha);
		cairo_set_source_rgba(cairo, red, green, blue, alpha);
	}
	
	/**
	 * Sets the source pattern within cr to source. This pattern
	 * will then be used for any subsequent drawing operation until a new
	 * source pattern is set.
	 * Note: The pattern's transformation matrix will be locked to the
	 * user space in effect at the time of cairo_set_source(). This means
	 * that further modifications of the current transformation matrix
	 * will not affect the source pattern. See cairo_pattern_set_matrix().
	 * The default source pattern is a solid pattern that is opaque black,
	 * (that is, it is equivalent to cairo_set_source_rgb(cr, 0.0, 0.0,
	 * 0.0)).
	 * Since 1.0
	 * Params:
	 * source = a cairo_pattern_t to be used as the source for
	 * subsequent drawing operations.
	 */
	public void setSource(Pattern source)
	{
		// void cairo_set_source (cairo_t *cr,  cairo_pattern_t *source);
		cairo_set_source(cairo, (source is null) ? null : source.getPatternStruct());
	}
	
	/**
	 * This is a convenience function for creating a pattern from surface
	 * and setting it as the source in cr with cairo_set_source().
	 * The x and y parameters give the user-space coordinate at which
	 * the surface origin should appear. (The surface origin is its
	 * upper-left corner before any transformation has been applied.) The
	 * x and y parameters are negated and then set as translation values
	 * in the pattern matrix.
	 * Other than the initial translation pattern matrix, as described
	 * above, all other pattern attributes, (such as its extend mode), are
	 * set to the default values as in cairo_pattern_create_for_surface().
	 * The resulting pattern can be queried with cairo_get_source() so
	 * that these attributes can be modified if desired, (eg. to create a
	 * repeating pattern with cairo_pattern_set_extend()).
	 * Since 1.0
	 * Params:
	 * surface = a surface to be used to set the source pattern
	 * x = User-space X coordinate for surface origin
	 * y = User-space Y coordinate for surface origin
	 */
	public void setSourceSurface(Surface surface, double x, double y)
	{
		// void cairo_set_source_surface (cairo_t *cr,  cairo_surface_t *surface,  double x,  double y);
		cairo_set_source_surface(cairo, (surface is null) ? null : surface.getSurfaceStruct(), x, y);
	}
	
	/**
	 * Gets the current source pattern for cr.
	 * Since 1.0
	 * Returns: the current source pattern. This object is owned by cairo. To keep a reference to it, you must call cairo_pattern_reference().
	 */
	public Pattern getSource()
	{
		// cairo_pattern_t * cairo_get_source (cairo_t *cr);
		auto p = cairo_get_source(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Set the antialiasing mode of the rasterizer used for drawing shapes.
	 * This value is a hint, and a particular backend may or may not support
	 * a particular value. At the current time, no backend supports
	 * CAIRO_ANTIALIAS_SUBPIXEL when drawing shapes.
	 * Note that this option does not affect text rendering, instead see
	 * cairo_font_options_set_antialias().
	 * Since 1.0
	 * Params:
	 * antialias = the new antialiasing mode
	 */
	public void setAntialias(cairo_antialias_t antialias)
	{
		// void cairo_set_antialias (cairo_t *cr,  cairo_antialias_t antialias);
		cairo_set_antialias(cairo, antialias);
	}
	
	/**
	 * Gets the current shape antialiasing mode, as set by
	 * cairo_set_antialias().
	 * Since 1.0
	 * Returns: the current shape antialiasing mode.
	 */
	public cairo_antialias_t getAntialias()
	{
		// cairo_antialias_t cairo_get_antialias (cairo_t *cr);
		return cairo_get_antialias(cairo);
	}
	
	/**
	 * Sets the dash pattern to be used by cairo_stroke(). A dash pattern
	 * is specified by dashes, an array of positive values. Each value
	 * provides the length of alternate "on" and "off" portions of the
	 * stroke. The offset specifies an offset into the pattern at which
	 * the stroke begins.
	 * Each "on" segment will have caps applied as if the segment were a
	 * separate sub-path. In particular, it is valid to use an "on" length
	 * of 0.0 with CAIRO_LINE_CAP_ROUND or CAIRO_LINE_CAP_SQUARE in order
	 * to distributed dots or squares along a path.
	 * Note: The length values are in user-space units as evaluated at the
	 * time of stroking. This is not necessarily the same as the user
	 * space at the time of cairo_set_dash().
	 * If num_dashes is 0 dashing is disabled.
	 * If num_dashes is 1 a symmetric pattern is assumed with alternating
	 * on and off portions of the size specified by the single value in
	 * dashes.
	 * If any value in dashes is negative, or if all values are 0, then
	 * cr will be put into an error state with a status of
	 * CAIRO_STATUS_INVALID_DASH.
	 * Since 1.0
	 * Params:
	 * dashes = an array specifying alternate lengths of on and off stroke portions
	 * offset = an offset into the dash pattern at which the stroke should start
	 */
	public void setDash(double[] dashes, double offset)
	{
		// void cairo_set_dash (cairo_t *cr,  const double *dashes,  int num_dashes,  double offset);
		cairo_set_dash(cairo, dashes.ptr, cast(int) dashes.length, offset);
	}
	
	/**
	 * This function returns the length of the dash array in cr (0 if dashing
	 * is not currently in effect).
	 * See also cairo_set_dash() and cairo_get_dash().
	 * Since 1.4
	 * Returns: the length of the dash array, or 0 if no dash array set.
	 */
	public int getDashCount()
	{
		// int cairo_get_dash_count (cairo_t *cr);
		return cairo_get_dash_count(cairo);
	}
	
	/**
	 * Gets the current dash array. If not NULL, dashes should be big
	 * enough to hold at least the number of values returned by
	 * cairo_get_dash_count().
	 * Since 1.4
	 * Params:
	 * dashes = return value for the dash array, or NULL
	 * offset = return value for the current dash offset, or NULL
	 */
	public void getDash(double* dashes, double* offset)
	{
		// void cairo_get_dash (cairo_t *cr,  double *dashes,  double *offset);
		cairo_get_dash(cairo, dashes, offset);
	}
	
	/**
	 * Set the current fill rule within the cairo context. The fill rule
	 * is used to determine which regions are inside or outside a complex
	 * (potentially self-intersecting) path. The current fill rule affects
	 * both cairo_fill() and cairo_clip(). See cairo_fill_rule_t for details
	 * on the semantics of each available fill rule.
	 * The default fill rule is CAIRO_FILL_RULE_WINDING.
	 * Since 1.0
	 * Params:
	 * fillRule = a fill rule, specified as a cairo_fill_rule_t
	 */
	public void setFillRule(cairo_fill_rule_t fillRule)
	{
		// void cairo_set_fill_rule (cairo_t *cr,  cairo_fill_rule_t fill_rule);
		cairo_set_fill_rule(cairo, fillRule);
	}
	
	/**
	 * Gets the current fill rule, as set by cairo_set_fill_rule().
	 * Since 1.0
	 * Returns: the current fill rule.
	 */
	public cairo_fill_rule_t getFillRule()
	{
		// cairo_fill_rule_t cairo_get_fill_rule (cairo_t *cr);
		return cairo_get_fill_rule(cairo);
	}
	
	/**
	 * Sets the current line cap style within the cairo context. See
	 * cairo_line_cap_t for details about how the available line cap
	 * styles are drawn.
	 * As with the other stroke parameters, the current line cap style is
	 * examined by cairo_stroke(), cairo_stroke_extents(), and
	 * cairo_stroke_to_path(), but does not have any effect during path
	 * construction.
	 * The default line cap style is CAIRO_LINE_CAP_BUTT.
	 * Since 1.0
	 * Params:
	 * lineCap = a line cap style
	 */
	public void setLineCap(cairo_line_cap_t lineCap)
	{
		// void cairo_set_line_cap (cairo_t *cr,  cairo_line_cap_t line_cap);
		cairo_set_line_cap(cairo, lineCap);
	}
	
	/**
	 * Gets the current line cap style, as set by cairo_set_line_cap().
	 * Since 1.0
	 * Returns: the current line cap style.
	 */
	public cairo_line_cap_t getLineCap()
	{
		// cairo_line_cap_t cairo_get_line_cap (cairo_t *cr);
		return cairo_get_line_cap(cairo);
	}
	
	/**
	 * Sets the current line join style within the cairo context. See
	 * cairo_line_join_t for details about how the available line join
	 * styles are drawn.
	 * As with the other stroke parameters, the current line join style is
	 * examined by cairo_stroke(), cairo_stroke_extents(), and
	 * cairo_stroke_to_path(), but does not have any effect during path
	 * construction.
	 * The default line join style is CAIRO_LINE_JOIN_MITER.
	 * Since 1.0
	 * Params:
	 * lineJoin = a line join style
	 */
	public void setLineJoin(cairo_line_join_t lineJoin)
	{
		// void cairo_set_line_join (cairo_t *cr,  cairo_line_join_t line_join);
		cairo_set_line_join(cairo, lineJoin);
	}
	
	/**
	 * Gets the current line join style, as set by cairo_set_line_join().
	 * Since 1.0
	 * Returns: the current line join style.
	 */
	public cairo_line_join_t getLineJoin()
	{
		// cairo_line_join_t cairo_get_line_join (cairo_t *cr);
		return cairo_get_line_join(cairo);
	}
	
	/**
	 * Sets the current line width within the cairo context. The line
	 * width value specifies the diameter of a pen that is circular in
	 * user space, (though device-space pen may be an ellipse in general
	 * due to scaling/shear/rotation of the CTM).
	 * Note: When the description above refers to user space and CTM it
	 * refers to the user space and CTM in effect at the time of the
	 * stroking operation, not the user space and CTM in effect at the
	 * time of the call to cairo_set_line_width(). The simplest usage
	 * makes both of these spaces identical. That is, if there is no
	 * change to the CTM between a call to cairo_set_line_width() and the
	 * stroking operation, then one can just pass user-space values to
	 * cairo_set_line_width() and ignore this note.
	 * As with the other stroke parameters, the current line width is
	 * examined by cairo_stroke(), cairo_stroke_extents(), and
	 * cairo_stroke_to_path(), but does not have any effect during path
	 * construction.
	 * The default line width value is 2.0.
	 * Since 1.0
	 * Params:
	 * width = a line width
	 */
	public void setLineWidth(double width)
	{
		// void cairo_set_line_width (cairo_t *cr,  double width);
		cairo_set_line_width(cairo, width);
	}
	
	/**
	 * This function returns the current line width value exactly as set by
	 * cairo_set_line_width(). Note that the value is unchanged even if
	 * the CTM has changed between the calls to cairo_set_line_width() and
	 * cairo_get_line_width().
	 * Since 1.0
	 * Returns: the current line width.
	 */
	public double getLineWidth()
	{
		// double cairo_get_line_width (cairo_t *cr);
		return cairo_get_line_width(cairo);
	}
	
	/**
	 * Sets the current miter limit within the cairo context.
	 * If the current line join style is set to CAIRO_LINE_JOIN_MITER
	 * (see cairo_set_line_join()), the miter limit is used to determine
	 * whether the lines should be joined with a bevel instead of a miter.
	 * Cairo divides the length of the miter by the line width.
	 * If the result is greater than the miter limit, the style is
	 * converted to a bevel.
	 * As with the other stroke parameters, the current line miter limit is
	 * examined by cairo_stroke(), cairo_stroke_extents(), and
	 * cairo_stroke_to_path(), but does not have any effect during path
	 * construction.
	 * The default miter limit value is 10.0, which will convert joins
	 * with interior angles less than 11 degrees to bevels instead of
	 * miters. For reference, a miter limit of 2.0 makes the miter cutoff
	 * at 60 degrees, and a miter limit of 1.414 makes the cutoff at 90
	 * degrees.
	 * A miter limit for a desired angle can be computed as: miter limit =
	 * 1/sin(angle/2)
	 * Since 1.0
	 * Params:
	 * limit = miter limit to set
	 */
	public void setMiterLimit(double limit)
	{
		// void cairo_set_miter_limit (cairo_t *cr,  double limit);
		cairo_set_miter_limit(cairo, limit);
	}
	
	/**
	 * Gets the current miter limit, as set by cairo_set_miter_limit().
	 * Since 1.0
	 * Returns: the current miter limit.
	 */
	public double getMiterLimit()
	{
		// double cairo_get_miter_limit (cairo_t *cr);
		return cairo_get_miter_limit(cairo);
	}
	
	/**
	 * Sets the compositing operator to be used for all drawing
	 * operations. See cairo_operator_t for details on the semantics of
	 * each available compositing operator.
	 * The default operator is CAIRO_OPERATOR_OVER.
	 * Since 1.0
	 * Params:
	 * op = a compositing operator, specified as a cairo_operator_t
	 */
	public void setOperator(cairo_operator_t op)
	{
		// void cairo_set_operator (cairo_t *cr,  cairo_operator_t op);
		cairo_set_operator(cairo, op);
	}
	
	/**
	 * Gets the current compositing operator for a cairo context.
	 * Since 1.0
	 * Returns: the current compositing operator.
	 */
	public cairo_operator_t getOperator()
	{
		// cairo_operator_t cairo_get_operator (cairo_t *cr);
		return cairo_get_operator(cairo);
	}
	
	/**
	 * Sets the tolerance used when converting paths into trapezoids.
	 * Curved segments of the path will be subdivided until the maximum
	 * deviation between the original path and the polygonal approximation
	 * is less than tolerance. The default value is 0.1. A larger
	 * value will give better performance, a smaller value, better
	 * appearance. (Reducing the value from the default value of 0.1
	 * is unlikely to improve appearance significantly.) The accuracy of paths
	 * within Cairo is limited by the precision of its internal arithmetic, and
	 * the prescribed tolerance is restricted to the smallest
	 * representable internal value.
	 * Since 1.0
	 * Params:
	 * tolerance = the tolerance, in device units (typically pixels)
	 */
	public void setTolerance(double tolerance)
	{
		// void cairo_set_tolerance (cairo_t *cr,  double tolerance);
		cairo_set_tolerance(cairo, tolerance);
	}
	
	/**
	 * Gets the current tolerance value, as set by cairo_set_tolerance().
	 * Since 1.0
	 * Returns: the current tolerance value.
	 */
	public double getTolerance()
	{
		// double cairo_get_tolerance (cairo_t *cr);
		return cairo_get_tolerance(cairo);
	}
	
	/**
	 * Establishes a new clip region by intersecting the current clip
	 * region with the current path as it would be filled by cairo_fill()
	 * and according to the current fill rule (see cairo_set_fill_rule()).
	 * After cairo_clip(), the current path will be cleared from the cairo
	 * context.
	 * The current clip region affects all drawing operations by
	 * effectively masking out any changes to the surface that are outside
	 * the current clip region.
	 * Calling cairo_clip() can only make the clip region smaller, never
	 * larger. But the current clip is part of the graphics state, so a
	 * temporary restriction of the clip region can be achieved by
	 * calling cairo_clip() within a cairo_save()/cairo_restore()
	 * pair. The only other means of increasing the size of the clip
	 * region is cairo_reset_clip().
	 * Since 1.0
	 */
	public void clip()
	{
		// void cairo_clip (cairo_t *cr);
		cairo_clip(cairo);
	}
	
	/**
	 * Establishes a new clip region by intersecting the current clip
	 * region with the current path as it would be filled by cairo_fill()
	 * and according to the current fill rule (see cairo_set_fill_rule()).
	 * Unlike cairo_clip(), cairo_clip_preserve() preserves the path within
	 * the cairo context.
	 * The current clip region affects all drawing operations by
	 * effectively masking out any changes to the surface that are outside
	 * the current clip region.
	 * Calling cairo_clip_preserve() can only make the clip region smaller, never
	 * larger. But the current clip is part of the graphics state, so a
	 * temporary restriction of the clip region can be achieved by
	 * calling cairo_clip_preserve() within a cairo_save()/cairo_restore()
	 * pair. The only other means of increasing the size of the clip
	 * region is cairo_reset_clip().
	 * Since 1.0
	 */
	public void clipPreserve()
	{
		// void cairo_clip_preserve (cairo_t *cr);
		cairo_clip_preserve(cairo);
	}
	
	/**
	 * Computes a bounding box in user coordinates covering the area inside the
	 * current clip.
	 * Since 1.4
	 * Params:
	 * x1 = left of the resulting extents
	 * y1 = top of the resulting extents
	 * x2 = right of the resulting extents
	 * y2 = bottom of the resulting extents
	 */
	public void clipExtents(out double x1, out double y1, out double x2, out double y2)
	{
		// void cairo_clip_extents (cairo_t *cr,  double *x1,  double *y1,  double *x2,  double *y2);
		cairo_clip_extents(cairo, &x1, &y1, &x2, &y2);
	}
	
	/**
	 * Tests whether the given point is inside the area that would be
	 * visible through the current clip, i.e. the area that would be filled by
	 * a cairo_paint() operation.
	 * See cairo_clip(), and cairo_clip_preserve().
	 * Since 1.10
	 * Params:
	 * x = X coordinate of the point to test
	 * y = Y coordinate of the point to test
	 * Returns: A non-zero value if the point is inside, or zero if outside.
	 */
	public cairo_bool_t inClip(double x, double y)
	{
		// cairo_bool_t cairo_in_clip (cairo_t *cr,  double x,  double y);
		return cairo_in_clip(cairo, x, y);
	}
	
	/**
	 * Reset the current clip region to its original, unrestricted
	 * state. That is, set the clip region to an infinitely large shape
	 * containing the target surface. Equivalently, if infinity is too
	 * hard to grasp, one can imagine the clip region being reset to the
	 * exact bounds of the target surface.
	 * Note that code meant to be reusable should not call
	 * cairo_reset_clip() as it will cause results unexpected by
	 * higher-level code which calls cairo_clip(). Consider using
	 * cairo_save() and cairo_restore() around cairo_clip() as a more
	 * robust means of temporarily restricting the clip region.
	 * Since 1.0
	 */
	public void resetClip()
	{
		// void cairo_reset_clip (cairo_t *cr);
		cairo_reset_clip(cairo);
	}
	
	/**
	 * Unconditionally frees rectangle_list and all associated
	 * references. After this call, the rectangle_list pointer must not
	 * be dereferenced.
	 * Since 1.4
	 * Params:
	 * rectangleList = a rectangle list, as obtained from cairo_copy_clip_rectangle_list()
	 */
	public static void rectangleListDestroy(cairo_rectangle_list_t* rectangleList)
	{
		// void cairo_rectangle_list_destroy (cairo_rectangle_list_t *rectangle_list);
		cairo_rectangle_list_destroy(rectangleList);
	}
	
	/**
	 * Gets the current clip region as a list of rectangles in user coordinates.
	 * Never returns NULL.
	 * The status in the list may be CAIRO_STATUS_CLIP_NOT_REPRESENTABLE to
	 * indicate that the clip region cannot be represented as a list of
	 * user-space rectangles. The status may have other values to indicate
	 * other errors.
	 * Since 1.4
	 * Returns: the current clip region as a list of rectangles in user coordinates, which should be destroyed using cairo_rectangle_list_destroy().
	 */
	public cairo_rectangle_list_t* copyClipRectangleList()
	{
		// cairo_rectangle_list_t * cairo_copy_clip_rectangle_list (cairo_t *cr);
		return cairo_copy_clip_rectangle_list(cairo);
	}
	
	/**
	 * A drawing operator that fills the current path according to the
	 * current fill rule, (each sub-path is implicitly closed before being
	 * filled). After cairo_fill(), the current path will be cleared from
	 * the cairo context. See cairo_set_fill_rule() and
	 * cairo_fill_preserve().
	 * Since 1.0
	 */
	public void fill()
	{
		// void cairo_fill (cairo_t *cr);
		cairo_fill(cairo);
	}
	
	/**
	 * A drawing operator that fills the current path according to the
	 * current fill rule, (each sub-path is implicitly closed before being
	 * filled). Unlike cairo_fill(), cairo_fill_preserve() preserves the
	 * path within the cairo context.
	 * See cairo_set_fill_rule() and cairo_fill().
	 * Since 1.0
	 */
	public void fillPreserve()
	{
		// void cairo_fill_preserve (cairo_t *cr);
		cairo_fill_preserve(cairo);
	}
	
	/**
	 * Computes a bounding box in user coordinates covering the area that
	 * would be affected, (the "inked" area), by a cairo_fill() operation
	 * given the current path and fill parameters. If the current path is
	 * empty, returns an empty rectangle ((0,0), (0,0)). Surface
	 * dimensions and clipping are not taken into account.
	 * Contrast with cairo_path_extents(), which is similar, but returns
	 * non-zero extents for some paths with no inked area, (such as a
	 * simple line segment).
	 * Note that cairo_fill_extents() must necessarily do more work to
	 * compute the precise inked areas in light of the fill rule, so
	 * cairo_path_extents() may be more desirable for sake of performance
	 * if the non-inked path extents are desired.
	 * See cairo_fill(), cairo_set_fill_rule() and cairo_fill_preserve().
	 * Since 1.0
	 * Params:
	 * x1 = left of the resulting extents
	 * y1 = top of the resulting extents
	 * x2 = right of the resulting extents
	 * y2 = bottom of the resulting extents
	 */
	public void fillExtents(out double x1, out double y1, out double x2, out double y2)
	{
		// void cairo_fill_extents (cairo_t *cr,  double *x1,  double *y1,  double *x2,  double *y2);
		cairo_fill_extents(cairo, &x1, &y1, &x2, &y2);
	}
	
	/**
	 * Tests whether the given point is inside the area that would be
	 * affected by a cairo_fill() operation given the current path and
	 * filling parameters. Surface dimensions and clipping are not taken
	 * into account.
	 * See cairo_fill(), cairo_set_fill_rule() and cairo_fill_preserve().
	 * Since 1.0
	 * Params:
	 * x = X coordinate of the point to test
	 * y = Y coordinate of the point to test
	 * Returns: A non-zero value if the point is inside, or zero if outside.
	 */
	public cairo_bool_t inFill(double x, double y)
	{
		// cairo_bool_t cairo_in_fill (cairo_t *cr,  double x,  double y);
		return cairo_in_fill(cairo, x, y);
	}
	
	/**
	 * A drawing operator that paints the current source
	 * using the alpha channel of pattern as a mask. (Opaque
	 * areas of pattern are painted with the source, transparent
	 * areas are not painted.)
	 * Since 1.0
	 * Params:
	 * pattern = a cairo_pattern_t
	 */
	public void mask(Pattern pattern)
	{
		// void cairo_mask (cairo_t *cr,  cairo_pattern_t *pattern);
		cairo_mask(cairo, (pattern is null) ? null : pattern.getPatternStruct());
	}
	
	/**
	 * A drawing operator that paints the current source
	 * using the alpha channel of surface as a mask. (Opaque
	 * areas of surface are painted with the source, transparent
	 * areas are not painted.)
	 * Since 1.0
	 * Params:
	 * surface = a cairo_surface_t
	 * surfaceX = X coordinate at which to place the origin of surface
	 * surfaceY = Y coordinate at which to place the origin of surface
	 */
	public void maskSurface(Surface surface, double surfaceX, double surfaceY)
	{
		// void cairo_mask_surface (cairo_t *cr,  cairo_surface_t *surface,  double surface_x,  double surface_y);
		cairo_mask_surface(cairo, (surface is null) ? null : surface.getSurfaceStruct(), surfaceX, surfaceY);
	}
	
	/**
	 * A drawing operator that paints the current source everywhere within
	 * the current clip region.
	 * Since 1.0
	 */
	public void paint()
	{
		// void cairo_paint (cairo_t *cr);
		cairo_paint(cairo);
	}
	
	/**
	 * A drawing operator that paints the current source everywhere within
	 * the current clip region using a mask of constant alpha value
	 * alpha. The effect is similar to cairo_paint(), but the drawing
	 * is faded out using the alpha value.
	 * Since 1.0
	 * Params:
	 * alpha = alpha value, between 0 (transparent) and 1 (opaque)
	 */
	public void paintWithAlpha(double alpha)
	{
		// void cairo_paint_with_alpha (cairo_t *cr,  double alpha);
		cairo_paint_with_alpha(cairo, alpha);
	}
	
	/**
	 * A drawing operator that strokes the current path according to the
	 * current line width, line join, line cap, and dash settings. After
	 * cairo_stroke(), the current path will be cleared from the cairo
	 * context. See cairo_set_line_width(), cairo_set_line_join(),
	 * cairo_set_line_cap(), cairo_set_dash(), and
	 * cairo_stroke_preserve().
	 * Note: Degenerate segments and sub-paths are treated specially and
	 * provide a useful result. These can result in two different
	 * Since 1.0
	 */
	public void stroke()
	{
		// void cairo_stroke (cairo_t *cr);
		cairo_stroke(cairo);
	}
	
	/**
	 * A drawing operator that strokes the current path according to the
	 * current line width, line join, line cap, and dash settings. Unlike
	 * cairo_stroke(), cairo_stroke_preserve() preserves the path within the
	 * cairo context.
	 * See cairo_set_line_width(), cairo_set_line_join(),
	 * cairo_set_line_cap(), cairo_set_dash(), and
	 * cairo_stroke_preserve().
	 * Since 1.0
	 */
	public void strokePreserve()
	{
		// void cairo_stroke_preserve (cairo_t *cr);
		cairo_stroke_preserve(cairo);
	}
	
	/**
	 * Computes a bounding box in user coordinates covering the area that
	 * would be affected, (the "inked" area), by a cairo_stroke()
	 * operation given the current path and stroke parameters.
	 * If the current path is empty, returns an empty rectangle ((0,0), (0,0)).
	 * Surface dimensions and clipping are not taken into account.
	 * Note that if the line width is set to exactly zero, then
	 * cairo_stroke_extents() will return an empty rectangle. Contrast with
	 * cairo_path_extents() which can be used to compute the non-empty
	 * bounds as the line width approaches zero.
	 * Note that cairo_stroke_extents() must necessarily do more work to
	 * compute the precise inked areas in light of the stroke parameters,
	 * so cairo_path_extents() may be more desirable for sake of
	 * performance if non-inked path extents are desired.
	 * See cairo_stroke(), cairo_set_line_width(), cairo_set_line_join(),
	 * cairo_set_line_cap(), cairo_set_dash(), and
	 * cairo_stroke_preserve().
	 * Since 1.0
	 * Params:
	 * x1 = left of the resulting extents
	 * y1 = top of the resulting extents
	 * x2 = right of the resulting extents
	 * y2 = bottom of the resulting extents
	 */
	public void strokeExtents(out double x1, out double y1, out double x2, out double y2)
	{
		// void cairo_stroke_extents (cairo_t *cr,  double *x1,  double *y1,  double *x2,  double *y2);
		cairo_stroke_extents(cairo, &x1, &y1, &x2, &y2);
	}
	
	/**
	 * Tests whether the given point is inside the area that would be
	 * affected by a cairo_stroke() operation given the current path and
	 * stroking parameters. Surface dimensions and clipping are not taken
	 * into account.
	 * See cairo_stroke(), cairo_set_line_width(), cairo_set_line_join(),
	 * cairo_set_line_cap(), cairo_set_dash(), and
	 * cairo_stroke_preserve().
	 * Since 1.0
	 * Params:
	 * x = X coordinate of the point to test
	 * y = Y coordinate of the point to test
	 * Returns: A non-zero value if the point is inside, or zero if outside.
	 */
	public cairo_bool_t inStroke(double x, double y)
	{
		// cairo_bool_t cairo_in_stroke (cairo_t *cr,  double x,  double y);
		return cairo_in_stroke(cairo, x, y);
	}
	
	/**
	 * Emits the current page for backends that support multiple pages, but
	 * doesn't clear it, so, the contents of the current page will be retained
	 * for the next page too. Use cairo_show_page() if you want to get an
	 * empty page after the emission.
	 * This is a convenience function that simply calls
	 * cairo_surface_copy_page() on cr's target.
	 * Since 1.0
	 */
	public void copyPage()
	{
		// void cairo_copy_page (cairo_t *cr);
		cairo_copy_page(cairo);
	}
	
	/**
	 * Emits and clears the current page for backends that support multiple
	 * pages. Use cairo_copy_page() if you don't want to clear the page.
	 * This is a convenience function that simply calls
	 * cairo_surface_show_page() on cr's target.
	 * Since 1.0
	 */
	public void showPage()
	{
		// void cairo_show_page (cairo_t *cr);
		cairo_show_page(cairo);
	}
	
	/**
	 * Returns the current reference count of cr.
	 * Since 1.4
	 * Returns: the current reference count of cr. If the object is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_get_reference_count (cairo_t *cr);
		return cairo_get_reference_count(cairo);
	}
	
	/**
	 * Attach user data to cr. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.4
	 * Params:
	 * key = the address of a cairo_user_data_key_t to attach the user data to
	 * userData = the user data to attach to the cairo_t
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * cairo_t is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_set_user_data (cairo_t *cr,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_set_user_data(cairo, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to cr using the specified
	 * key. If no user data has been attached with the given key this
	 * function returns NULL.
	 * Since 1.4
	 * Params:
	 * key = the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void * cairo_get_user_data (cairo_t *cr,  const cairo_user_data_key_t *key);
		return cairo_get_user_data(cairo, key);
	}
	
	/**
	 * Creates a copy of the current path and returns it to the user as a
	 * cairo_path_t. See cairo_path_data_t for hints on how to iterate
	 * over the returned data structure.
	 * This function will always return a valid pointer, but the result
	 * will have no data (data==NULL and
	 * num_data==0), if either of the following
	 * Since 1.0
	 * Returns: the copy of the current path. The caller owns the returned object and should call cairo_path_destroy() when finished with it.
	 */
	public cairo_path_t* copyPath()
	{
		// cairo_path_t * cairo_copy_path (cairo_t *cr);
		return cairo_copy_path(cairo);
	}
	
	/**
	 * Gets a flattened copy of the current path and returns it to the
	 * user as a cairo_path_t. See cairo_path_data_t for hints on
	 * how to iterate over the returned data structure.
	 * This function is like cairo_copy_path() except that any curves
	 * in the path will be approximated with piecewise-linear
	 * approximations, (accurate to within the current tolerance
	 * value). That is, the result is guaranteed to not have any elements
	 * of type CAIRO_PATH_CURVE_TO which will instead be replaced by a
	 * series of CAIRO_PATH_LINE_TO elements.
	 * This function will always return a valid pointer, but the result
	 * will have no data (data==NULL and
	 * num_data==0), if either of the following
	 * Since 1.0
	 * Returns: the copy of the current path. The caller owns the returned object and should call cairo_path_destroy() when finished with it.
	 */
	public cairo_path_t* copyPathFlat()
	{
		// cairo_path_t * cairo_copy_path_flat (cairo_t *cr);
		return cairo_copy_path_flat(cairo);
	}
	
	/**
	 * Immediately releases all memory associated with path. After a call
	 * to cairo_path_destroy() the path pointer is no longer valid and
	 * should not be used further.
	 * Note: cairo_path_destroy() should only be called with a
	 * pointer to a cairo_path_t returned by a cairo function. Any path
	 * that is created manually (ie. outside of cairo) should be destroyed
	 * manually as well.
	 * Since 1.0
	 * Params:
	 * path = a path previously returned by either cairo_copy_path() or
	 * cairo_copy_path_flat().
	 */
	public static void pathDestroy(cairo_path_t* path)
	{
		// void cairo_path_destroy (cairo_path_t *path);
		cairo_path_destroy(path);
	}
	
	/**
	 * Append the path onto the current path. The path may be either the
	 * return value from one of cairo_copy_path() or
	 * cairo_copy_path_flat() or it may be constructed manually. See
	 * cairo_path_t for details on how the path data structure should be
	 * initialized, and note that path->status must be
	 * initialized to CAIRO_STATUS_SUCCESS.
	 * Since 1.0
	 * Params:
	 * path = path to be appended
	 */
	public void appendPath(cairo_path_t* path)
	{
		// void cairo_append_path (cairo_t *cr,  const cairo_path_t *path);
		cairo_append_path(cairo, path);
	}
	
	/**
	 * Returns whether a current point is defined on the current path.
	 * See cairo_get_current_point() for details on the current point.
	 * Since 1.6
	 * Returns: whether a current point is defined.
	 */
	public cairo_bool_t hasCurrentPoint()
	{
		// cairo_bool_t cairo_has_current_point (cairo_t *cr);
		return cairo_has_current_point(cairo);
	}
	
	/**
	 * Gets the current point of the current path, which is
	 * conceptually the final point reached by the path so far.
	 * The current point is returned in the user-space coordinate
	 * system. If there is no defined current point or if cr is in an
	 * error status, x and y will both be set to 0.0. It is possible to
	 * check this in advance with cairo_has_current_point().
	 * Most path construction functions alter the current point. See the
	 * Since 1.0
	 * Params:
	 * x = return value for X coordinate of the current point
	 * y = return value for Y coordinate of the current point
	 */
	public void getCurrentPoint(out double x, out double y)
	{
		// void cairo_get_current_point (cairo_t *cr,  double *x,  double *y);
		cairo_get_current_point(cairo, &x, &y);
	}
	
	/**
	 * Clears the current path. After this call there will be no path and
	 * no current point.
	 * Since 1.0
	 */
	public void newPath()
	{
		// void cairo_new_path (cairo_t *cr);
		cairo_new_path(cairo);
	}
	
	/**
	 * Begin a new sub-path. Note that the existing path is not
	 * affected. After this call there will be no current point.
	 * In many cases, this call is not needed since new sub-paths are
	 * frequently started with cairo_move_to().
	 * A call to cairo_new_sub_path() is particularly useful when
	 * beginning a new sub-path with one of the cairo_arc() calls. This
	 * makes things easier as it is no longer necessary to manually
	 * compute the arc's initial coordinates for a call to
	 * cairo_move_to().
	 * Since 1.2
	 */
	public void newSubPath()
	{
		// void cairo_new_sub_path (cairo_t *cr);
		cairo_new_sub_path(cairo);
	}
	
	/**
	 * Adds a line segment to the path from the current point to the
	 * beginning of the current sub-path, (the most recent point passed to
	 * cairo_move_to()), and closes this sub-path. After this call the
	 * current point will be at the joined endpoint of the sub-path.
	 * The behavior of cairo_close_path() is distinct from simply calling
	 * cairo_line_to() with the equivalent coordinate in the case of
	 * stroking. When a closed sub-path is stroked, there are no caps on
	 * the ends of the sub-path. Instead, there is a line join connecting
	 * the final and initial segments of the sub-path.
	 * If there is no current point before the call to cairo_close_path(),
	 * this function will have no effect.
	 * Note: As of cairo version 1.2.4 any call to cairo_close_path() will
	 * place an explicit MOVE_TO element into the path immediately after
	 * the CLOSE_PATH element, (which can be seen in cairo_copy_path() for
	 * example). This can simplify path processing in some cases as it may
	 * not be necessary to save the "last move_to point" during processing
	 * as the MOVE_TO immediately after the CLOSE_PATH will provide that
	 * point.
	 * Since 1.0
	 */
	public void closePath()
	{
		// void cairo_close_path (cairo_t *cr);
		cairo_close_path(cairo);
	}
	
	/**
	 * Adds a circular arc of the given radius to the current path. The
	 * arc is centered at (xc, yc), begins at angle1 and proceeds in
	 * the direction of increasing angles to end at angle2. If angle2 is
	 * less than angle1 it will be progressively increased by
	 * 2*M_PI until it is greater than angle1.
	 * If there is a current point, an initial line segment will be added
	 * to the path to connect the current point to the beginning of the
	 * arc. If this initial line is undesired, it can be avoided by
	 * calling cairo_new_sub_path() before calling cairo_arc().
	 * Angles are measured in radians. An angle of 0.0 is in the direction
	 * of the positive X axis (in user space). An angle of
	 * M_PI/2.0 radians (90 degrees) is in the
	 * direction of the positive Y axis (in user space). Angles increase
	 * in the direction from the positive X axis toward the positive Y
	 * axis. So with the default transformation matrix, angles increase in
	 * a clockwise direction.
	 * (To convert from degrees to radians, use degrees * (M_PI /
	 * 180.).)
	 * This function gives the arc in the direction of increasing angles;
	 * see cairo_arc_negative() to get the arc in the direction of
	 * decreasing angles.
	 * The arc is circular in user space. To achieve an elliptical arc,
	 * you can scale the current transformation matrix by different
	 * amounts in the X and Y directions. For example, to draw an ellipse
	 * Since 1.0
	 * Params:
	 * xc = X position of the center of the arc
	 * yc = Y position of the center of the arc
	 * radius = the radius of the arc
	 * angle1 = the start angle, in radians
	 * angle2 = the end angle, in radians
	 */
	public void arc(double xc, double yc, double radius, double angle1, double angle2)
	{
		// void cairo_arc (cairo_t *cr,  double xc,  double yc,  double radius,  double angle1,  double angle2);
		cairo_arc(cairo, xc, yc, radius, angle1, angle2);
	}
	
	/**
	 * Adds a circular arc of the given radius to the current path. The
	 * arc is centered at (xc, yc), begins at angle1 and proceeds in
	 * the direction of decreasing angles to end at angle2. If angle2 is
	 * greater than angle1 it will be progressively decreased by
	 * 2*M_PI until it is less than angle1.
	 * See cairo_arc() for more details. This function differs only in the
	 * direction of the arc between the two angles.
	 * Since 1.0
	 * Params:
	 * xc = X position of the center of the arc
	 * yc = Y position of the center of the arc
	 * radius = the radius of the arc
	 * angle1 = the start angle, in radians
	 * angle2 = the end angle, in radians
	 */
	public void arcNegative(double xc, double yc, double radius, double angle1, double angle2)
	{
		// void cairo_arc_negative (cairo_t *cr,  double xc,  double yc,  double radius,  double angle1,  double angle2);
		cairo_arc_negative(cairo, xc, yc, radius, angle1, angle2);
	}
	
	/**
	 * Adds a cubic Bézier spline to the path from the current point to
	 * position (x3, y3) in user-space coordinates, using (x1, y1) and
	 * (x2, y2) as the control points. After this call the current point
	 * will be (x3, y3).
	 * If there is no current point before the call to cairo_curve_to()
	 * this function will behave as if preceded by a call to
	 * cairo_move_to(cr, x1, y1).
	 * Since 1.0
	 * Params:
	 * x1 = the X coordinate of the first control point
	 * y1 = the Y coordinate of the first control point
	 * x2 = the X coordinate of the second control point
	 * y2 = the Y coordinate of the second control point
	 * x3 = the X coordinate of the end of the curve
	 * y3 = the Y coordinate of the end of the curve
	 */
	public void curveTo(double x1, double y1, double x2, double y2, double x3, double y3)
	{
		// void cairo_curve_to (cairo_t *cr,  double x1,  double y1,  double x2,  double y2,  double x3,  double y3);
		cairo_curve_to(cairo, x1, y1, x2, y2, x3, y3);
	}
	
	/**
	 * Adds a line to the path from the current point to position (x, y)
	 * in user-space coordinates. After this call the current point
	 * will be (x, y).
	 * If there is no current point before the call to cairo_line_to()
	 * this function will behave as cairo_move_to(cr, x, y).
	 * Since 1.0
	 * Params:
	 * x = the X coordinate of the end of the new line
	 * y = the Y coordinate of the end of the new line
	 */
	public void lineTo(double x, double y)
	{
		// void cairo_line_to (cairo_t *cr,  double x,  double y);
		cairo_line_to(cairo, x, y);
	}
	
	/**
	 * Begin a new sub-path. After this call the current point will be (x,
	 * y).
	 * Since 1.0
	 * Params:
	 * x = the X coordinate of the new position
	 * y = the Y coordinate of the new position
	 */
	public void moveTo(double x, double y)
	{
		// void cairo_move_to (cairo_t *cr,  double x,  double y);
		cairo_move_to(cairo, x, y);
	}
	
	/**
	 * Adds a closed sub-path rectangle of the given size to the current
	 * path at position (x, y) in user-space coordinates.
	 * Since 1.0
	 * Params:
	 * x = the X coordinate of the top left corner of the rectangle
	 * y = the Y coordinate to the top left corner of the rectangle
	 * width = the width of the rectangle
	 * height = the height of the rectangle
	 */
	public void rectangle(double x, double y, double width, double height)
	{
		// void cairo_rectangle (cairo_t *cr,  double x,  double y,  double width,  double height);
		cairo_rectangle(cairo, x, y, width, height);
	}
	
	/**
	 * Adds closed paths for the glyphs to the current path. The generated
	 * path if filled, achieves an effect similar to that of
	 * cairo_show_glyphs().
	 * Since 1.0
	 * Params:
	 * glyphs = array of glyphs to show
	 * numGlyphs = number of glyphs to show
	 */
	public void glyphPath(cairo_glyph_t* glyphs, int numGlyphs)
	{
		// void cairo_glyph_path (cairo_t *cr,  const cairo_glyph_t *glyphs,  int num_glyphs);
		cairo_glyph_path(cairo, glyphs, numGlyphs);
	}
	
	/**
	 * Adds closed paths for text to the current path. The generated
	 * path if filled, achieves an effect similar to that of
	 * cairo_show_text().
	 * Text conversion and positioning is done similar to cairo_show_text().
	 * Like cairo_show_text(), After this call the current point is
	 * moved to the origin of where the next glyph would be placed in
	 * this same progression. That is, the current point will be at
	 * the origin of the final glyph offset by its advance values.
	 * This allows for chaining multiple calls to to cairo_text_path()
	 * without having to set current point in between.
	 * Note: The cairo_text_path() function call is part of what the cairo
	 * designers call the "toy" text API. It is convenient for short demos
	 * and simple programs, but it is not expected to be adequate for
	 * serious text-using applications. See cairo_glyph_path() for the
	 * "real" text path API in cairo.
	 * Since 1.0
	 * Params:
	 * utf8 = a NUL-terminated string of text encoded in UTF-8, or NULL
	 */
	public void textPath(string utf8)
	{
		// void cairo_text_path (cairo_t *cr,  const char *utf8);
		cairo_text_path(cairo, Str.toStringz(utf8));
	}
	
	/**
	 * Relative-coordinate version of cairo_curve_to(). All offsets are
	 * relative to the current point. Adds a cubic Bézier spline to the
	 * path from the current point to a point offset from the current
	 * point by (dx3, dy3), using points offset by (dx1, dy1) and
	 * (dx2, dy2) as the control points. After this call the current
	 * point will be offset by (dx3, dy3).
	 * Given a current point of (x, y), cairo_rel_curve_to(cr, dx1,
	 * dy1, dx2, dy2, dx3, dy3) is logically equivalent to
	 * cairo_curve_to(cr, x+dx1, y+dy1, x+dx2, y+dy2, x+dx3, y+dy3).
	 * It is an error to call this function with no current point. Doing
	 * so will cause cr to shutdown with a status of
	 * CAIRO_STATUS_NO_CURRENT_POINT.
	 * Since 1.0
	 * Params:
	 * dx1 = the X offset to the first control point
	 * dy1 = the Y offset to the first control point
	 * dx2 = the X offset to the second control point
	 * dy2 = the Y offset to the second control point
	 * dx3 = the X offset to the end of the curve
	 * dy3 = the Y offset to the end of the curve
	 */
	public void relCurveTo(double dx1, double dy1, double dx2, double dy2, double dx3, double dy3)
	{
		// void cairo_rel_curve_to (cairo_t *cr,  double dx1,  double dy1,  double dx2,  double dy2,  double dx3,  double dy3);
		cairo_rel_curve_to(cairo, dx1, dy1, dx2, dy2, dx3, dy3);
	}
	
	/**
	 * Relative-coordinate version of cairo_line_to(). Adds a line to the
	 * path from the current point to a point that is offset from the
	 * current point by (dx, dy) in user space. After this call the
	 * current point will be offset by (dx, dy).
	 * Given a current point of (x, y), cairo_rel_line_to(cr, dx, dy)
	 * is logically equivalent to cairo_line_to(cr, x + dx, y + dy).
	 * It is an error to call this function with no current point. Doing
	 * so will cause cr to shutdown with a status of
	 * CAIRO_STATUS_NO_CURRENT_POINT.
	 * Since 1.0
	 * Params:
	 * dx = the X offset to the end of the new line
	 * dy = the Y offset to the end of the new line
	 */
	public void relLineTo(double dx, double dy)
	{
		// void cairo_rel_line_to (cairo_t *cr,  double dx,  double dy);
		cairo_rel_line_to(cairo, dx, dy);
	}
	
	/**
	 * Begin a new sub-path. After this call the current point will offset
	 * by (x, y).
	 * Given a current point of (x, y), cairo_rel_move_to(cr, dx, dy)
	 * is logically equivalent to cairo_move_to(cr, x + dx, y + dy).
	 * It is an error to call this function with no current point. Doing
	 * so will cause cr to shutdown with a status of
	 * CAIRO_STATUS_NO_CURRENT_POINT.
	 * Since 1.0
	 * Params:
	 * dx = the X offset
	 * dy = the Y offset
	 */
	public void relMoveTo(double dx, double dy)
	{
		// void cairo_rel_move_to (cairo_t *cr,  double dx,  double dy);
		cairo_rel_move_to(cairo, dx, dy);
	}
	
	/**
	 * Computes a bounding box in user-space coordinates covering the
	 * points on the current path. If the current path is empty, returns
	 * an empty rectangle ((0,0), (0,0)). Stroke parameters, fill rule,
	 * surface dimensions and clipping are not taken into account.
	 * Contrast with cairo_fill_extents() and cairo_stroke_extents() which
	 * return the extents of only the area that would be "inked" by
	 * the corresponding drawing operations.
	 * The result of cairo_path_extents() is defined as equivalent to the
	 * limit of cairo_stroke_extents() with CAIRO_LINE_CAP_ROUND as the
	 * line width approaches 0.0, (but never reaching the empty-rectangle
	 * returned by cairo_stroke_extents() for a line width of 0.0).
	 * Specifically, this means that zero-area sub-paths such as
	 * cairo_move_to();cairo_line_to() segments, (even degenerate cases
	 * where the coordinates to both calls are identical), will be
	 * considered as contributing to the extents. However, a lone
	 * cairo_move_to() will not contribute to the results of
	 * cairo_path_extents().
	 * Since 1.6
	 * Params:
	 * x1 = left of the resulting extents
	 * y1 = top of the resulting extents
	 * x2 = right of the resulting extents
	 * y2 = bottom of the resulting extents
	 */
	public void pathExtents(out double x1, out double y1, out double x2, out double y2)
	{
		// void cairo_path_extents (cairo_t *cr,  double *x1,  double *y1,  double *x2,  double *y2);
		cairo_path_extents(cairo, &x1, &y1, &x2, &y2);
	}
	
	/**
	 * Modifies the current transformation matrix (CTM) by translating the
	 * user-space origin by (tx, ty). This offset is interpreted as a
	 * user-space coordinate according to the CTM in place before the new
	 * call to cairo_translate(). In other words, the translation of the
	 * user-space origin takes place after any existing transformation.
	 * Since 1.0
	 * Params:
	 * tx = amount to translate in the X direction
	 * ty = amount to translate in the Y direction
	 */
	public void translate(double tx, double ty)
	{
		// void cairo_translate (cairo_t *cr,  double tx,  double ty);
		cairo_translate(cairo, tx, ty);
	}
	
	/**
	 * Modifies the current transformation matrix (CTM) by scaling the X
	 * and Y user-space axes by sx and sy respectively. The scaling of
	 * the axes takes place after any existing transformation of user
	 * space.
	 * Since 1.0
	 * Params:
	 * sx = scale factor for the X dimension
	 * sy = scale factor for the Y dimension
	 */
	public void scale(double sx, double sy)
	{
		// void cairo_scale (cairo_t *cr,  double sx,  double sy);
		cairo_scale(cairo, sx, sy);
	}
	
	/**
	 * Modifies the current transformation matrix (CTM) by rotating the
	 * user-space axes by angle radians. The rotation of the axes takes
	 * places after any existing transformation of user space. The
	 * rotation direction for positive angles is from the positive X axis
	 * toward the positive Y axis.
	 * Since 1.0
	 * Params:
	 * angle = angle (in radians) by which the user-space axes will be
	 * rotated
	 */
	public void rotate(double angle)
	{
		// void cairo_rotate (cairo_t *cr,  double angle);
		cairo_rotate(cairo, angle);
	}
	
	/**
	 * Modifies the current transformation matrix (CTM) by applying
	 * matrix as an additional transformation. The new transformation of
	 * user space takes place after any existing transformation.
	 * Since 1.0
	 * Params:
	 * matrix = a transformation to be applied to the user-space axes
	 */
	public void transform(Matrix matrix)
	{
		// void cairo_transform (cairo_t *cr,  const cairo_matrix_t *matrix);
		cairo_transform(cairo, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Modifies the current transformation matrix (CTM) by setting it
	 * equal to matrix.
	 * Since 1.0
	 * Params:
	 * matrix = a transformation matrix from user space to device space
	 */
	public void setMatrix(Matrix matrix)
	{
		// void cairo_set_matrix (cairo_t *cr,  const cairo_matrix_t *matrix);
		cairo_set_matrix(cairo, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Stores the current transformation matrix (CTM) into matrix.
	 * Since 1.0
	 * Params:
	 * matrix = return value for the matrix
	 */
	public void getMatrix(Matrix matrix)
	{
		// void cairo_get_matrix (cairo_t *cr,  cairo_matrix_t *matrix);
		cairo_get_matrix(cairo, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Resets the current transformation matrix (CTM) by setting it equal
	 * to the identity matrix. That is, the user-space and device-space
	 * axes will be aligned and one user-space unit will transform to one
	 * device-space unit.
	 * Since 1.0
	 */
	public void identityMatrix()
	{
		// void cairo_identity_matrix (cairo_t *cr);
		cairo_identity_matrix(cairo);
	}
	
	/**
	 * Transform a coordinate from user space to device space by
	 * multiplying the given point by the current transformation matrix
	 * (CTM).
	 * Since 1.0
	 * Params:
	 * x = X value of coordinate (in/out parameter)
	 * y = Y value of coordinate (in/out parameter)
	 */
	public void userToDevice(ref double x, ref double y)
	{
		// void cairo_user_to_device (cairo_t *cr,  double *x,  double *y);
		cairo_user_to_device(cairo, &x, &y);
	}
	
	/**
	 * Transform a distance vector from user space to device space. This
	 * function is similar to cairo_user_to_device() except that the
	 * translation components of the CTM will be ignored when transforming
	 * (dx,dy).
	 * Since 1.0
	 * Params:
	 * dx = X component of a distance vector (in/out parameter)
	 * dy = Y component of a distance vector (in/out parameter)
	 */
	public void userToDeviceDistance(ref double dx, ref double dy)
	{
		// void cairo_user_to_device_distance (cairo_t *cr,  double *dx,  double *dy);
		cairo_user_to_device_distance(cairo, &dx, &dy);
	}
	
	/**
	 * Transform a coordinate from device space to user space by
	 * multiplying the given point by the inverse of the current
	 * transformation matrix (CTM).
	 * Since 1.0
	 * Params:
	 * x = X value of coordinate (in/out parameter)
	 * y = Y value of coordinate (in/out parameter)
	 */
	public void deviceToUser(ref double x, ref double y)
	{
		// void cairo_device_to_user (cairo_t *cr,  double *x,  double *y);
		cairo_device_to_user(cairo, &x, &y);
	}
	
	/**
	 * Transform a distance vector from device space to user space. This
	 * function is similar to cairo_device_to_user() except that the
	 * translation components of the inverse CTM will be ignored when
	 * transforming (dx,dy).
	 * Since 1.0
	 * Params:
	 * dx = X component of a distance vector (in/out parameter)
	 * dy = Y component of a distance vector (in/out parameter)
	 */
	public void deviceToUserDistance(ref double dx, ref double dy)
	{
		// void cairo_device_to_user_distance (cairo_t *cr,  double *dx,  double *dy);
		cairo_device_to_user_distance(cairo, &dx, &dy);
	}
	
	/**
	 * Note: The cairo_select_font_face() function call is part of what
	 * the cairo designers call the "toy" text API. It is convenient for
	 * short demos and simple programs, but it is not expected to be
	 * adequate for serious text-using applications.
	 * Selects a family and style of font from a simplified description as
	 * a family name, slant and weight. Cairo provides no operation to
	 * list available family names on the system (this is a "toy",
	 * remember), but the standard CSS2 generic family names, ("serif",
	 * "sans-serif", "cursive", "fantasy", "monospace"), are likely to
	 * work as expected.
	 * If family starts with the string "cairo:", or if no native font
	 * backends are compiled in, cairo will use an internal font family.
	 * The internal font family recognizes many modifiers in the family
	 * string, most notably, it recognizes the string "monospace". That is,
	 * the family name "cairo:monospace" will use the monospace version of
	 * the internal font family.
	 * For "real" font selection, see the font-backend-specific
	 * font_face_create functions for the font backend you are using. (For
	 * example, if you are using the freetype-based cairo-ft font backend,
	 * see cairo_ft_font_face_create_for_ft_face() or
	 * cairo_ft_font_face_create_for_pattern().) The resulting font face
	 * could then be used with cairo_scaled_font_create() and
	 * cairo_set_scaled_font().
	 * Similarly, when using the "real" font support, you can call
	 * directly into the underlying font system, (such as fontconfig or
	 * freetype), for operations such as listing available fonts, etc.
	 * It is expected that most applications will need to use a more
	 * comprehensive font handling and text layout library, (for example,
	 * pango), in conjunction with cairo.
	 * If text is drawn without a call to cairo_select_font_face(), (nor
	 * cairo_set_font_face() nor cairo_set_scaled_font()), the default
	 * family is platform-specific, but is essentially "sans-serif".
	 * Default slant is CAIRO_FONT_SLANT_NORMAL, and default weight is
	 * CAIRO_FONT_WEIGHT_NORMAL.
	 * This function is equivalent to a call to cairo_toy_font_face_create()
	 * followed by cairo_set_font_face().
	 * Since 1.0
	 * Params:
	 * family = a font family name, encoded in UTF-8
	 * slant = the slant for the font
	 * weight = the weight for the font
	 */
	public void selectFontFace(string family, cairo_font_slant_t slant, cairo_font_weight_t weight)
	{
		// void cairo_select_font_face (cairo_t *cr,  const char *family,  cairo_font_slant_t slant,  cairo_font_weight_t weight);
		cairo_select_font_face(cairo, Str.toStringz(family), slant, weight);
	}
	
	/**
	 * Sets the current font matrix to a scale by a factor of size, replacing
	 * any font matrix previously set with cairo_set_font_size() or
	 * cairo_set_font_matrix(). This results in a font size of size user space
	 * units. (More precisely, this matrix will result in the font's
	 * em-square being a size by size square in user space.)
	 * If text is drawn without a call to cairo_set_font_size(), (nor
	 * cairo_set_font_matrix() nor cairo_set_scaled_font()), the default
	 * font size is 10.0.
	 * Since 1.0
	 * Params:
	 * size = the new font size, in user space units
	 */
	public void setFontSize(double size)
	{
		// void cairo_set_font_size (cairo_t *cr,  double size);
		cairo_set_font_size(cairo, size);
	}
	
	/**
	 * Sets the current font matrix to matrix. The font matrix gives a
	 * transformation from the design space of the font (in this space,
	 * the em-square is 1 unit by 1 unit) to user space. Normally, a
	 * simple scale is used (see cairo_set_font_size()), but a more
	 * complex font matrix can be used to shear the font
	 * or stretch it unequally along the two axes
	 * Since 1.0
	 * Params:
	 * matrix = a cairo_matrix_t describing a transform to be applied to
	 * the current font.
	 */
	public void setFontMatrix(Matrix matrix)
	{
		// void cairo_set_font_matrix (cairo_t *cr,  const cairo_matrix_t *matrix);
		cairo_set_font_matrix(cairo, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Stores the current font matrix into matrix. See
	 * cairo_set_font_matrix().
	 * Since 1.0
	 * Params:
	 * matrix = return value for the matrix
	 */
	public void getFontMatrix(Matrix matrix)
	{
		// void cairo_get_font_matrix (cairo_t *cr,  cairo_matrix_t *matrix);
		cairo_get_font_matrix(cairo, (matrix is null) ? null : matrix.getMatrixStruct());
	}
	
	/**
	 * Sets a set of custom font rendering options for the cairo_t.
	 * Rendering options are derived by merging these options with the
	 * options derived from underlying surface; if the value in options
	 * has a default value (like CAIRO_ANTIALIAS_DEFAULT), then the value
	 * from the surface is used.
	 * Since 1.0
	 * Params:
	 * options = font options to use
	 */
	public void setFontOptions(FontOption options)
	{
		// void cairo_set_font_options (cairo_t *cr,  const cairo_font_options_t *options);
		cairo_set_font_options(cairo, (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * Retrieves font rendering options set via cairo_set_font_options.
	 * Note that the returned options do not include any options derived
	 * from the underlying surface; they are literally the options
	 * passed to cairo_set_font_options().
	 * Since 1.0
	 * Params:
	 * options = a cairo_font_options_t object into which to store
	 * the retrieved options. All existing values are overwritten
	 */
	public void getFontOptions(FontOption options)
	{
		// void cairo_get_font_options (cairo_t *cr,  cairo_font_options_t *options);
		cairo_get_font_options(cairo, (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * Replaces the current cairo_font_face_t object in the cairo_t with
	 * font_face. The replaced font face in the cairo_t will be
	 * destroyed if there are no other references to it.
	 * Since 1.0
	 * Params:
	 * fontFace = a cairo_font_face_t, or NULL to restore to the default font
	 */
	public void setFontFace(FontFace fontFace)
	{
		// void cairo_set_font_face (cairo_t *cr,  cairo_font_face_t *font_face);
		cairo_set_font_face(cairo, (fontFace is null) ? null : fontFace.getFontFaceStruct());
	}
	
	/**
	 * Gets the current font face for a cairo_t.
	 * Since 1.0
	 * Returns: the current font face. This object is owned by cairo. To keep a reference to it, you must call cairo_font_face_reference(). This function never returns NULL. If memory cannot be allocated, a special "nil" cairo_font_face_t object will be returned on which cairo_font_face_status() returns CAIRO_STATUS_NO_MEMORY. Using this nil object will cause its error state to propagate to other objects it is passed to, (for example, calling cairo_set_font_face() with a nil font will trigger an error that will shutdown the cairo_t object).
	 */
	public FontFace getFontFace()
	{
		// cairo_font_face_t * cairo_get_font_face (cairo_t *cr);
		auto p = cairo_get_font_face(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new FontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Replaces the current font face, font matrix, and font options in
	 * the cairo_t with those of the cairo_scaled_font_t. Except for
	 * some translation, the current CTM of the cairo_t should be the
	 * same as that of the cairo_scaled_font_t, which can be accessed
	 * using cairo_scaled_font_get_ctm().
	 * Since 1.2
	 * Params:
	 * scaledFont = a cairo_scaled_font_t
	 */
	public void setScaledFont(ScaledFont scaledFont)
	{
		// void cairo_set_scaled_font (cairo_t *cr,  const cairo_scaled_font_t *scaled_font);
		cairo_set_scaled_font(cairo, (scaledFont is null) ? null : scaledFont.getScaledFontStruct());
	}
	
	/**
	 * Gets the current scaled font for a cairo_t.
	 * Since 1.4
	 * Returns: the current scaled font. This object is owned by cairo. To keep a reference to it, you must call cairo_scaled_font_reference(). This function never returns NULL. If memory cannot be allocated, a special "nil" cairo_scaled_font_t object will be returned on which cairo_scaled_font_status() returns CAIRO_STATUS_NO_MEMORY. Using this nil object will cause its error state to propagate to other objects it is passed to, (for example, calling cairo_set_scaled_font() with a nil font will trigger an error that will shutdown the cairo_t object).
	 */
	public ScaledFont getScaledFont()
	{
		// cairo_scaled_font_t * cairo_get_scaled_font (cairo_t *cr);
		auto p = cairo_get_scaled_font(cairo);
		
		if(p is null)
		{
			return null;
		}
		
		return new ScaledFont(cast(cairo_scaled_font_t*) p);
	}
	
	/**
	 * A drawing operator that generates the shape from a string of UTF-8
	 * characters, rendered according to the current font_face, font_size
	 * (font_matrix), and font_options.
	 * This function first computes a set of glyphs for the string of
	 * text. The first glyph is placed so that its origin is at the
	 * current point. The origin of each subsequent glyph is offset from
	 * that of the previous glyph by the advance values of the previous
	 * glyph.
	 * After this call the current point is moved to the origin of where
	 * the next glyph would be placed in this same progression. That is,
	 * the current point will be at the origin of the final glyph offset
	 * by its advance values. This allows for easy display of a single
	 * logical string with multiple calls to cairo_show_text().
	 * Note: The cairo_show_text() function call is part of what the cairo
	 * designers call the "toy" text API. It is convenient for short demos
	 * and simple programs, but it is not expected to be adequate for
	 * serious text-using applications. See cairo_show_glyphs() for the
	 * "real" text display API in cairo.
	 * Since 1.0
	 * Params:
	 * utf8 = a NUL-terminated string of text encoded in UTF-8, or NULL
	 */
	public void showText(string utf8)
	{
		// void cairo_show_text (cairo_t *cr,  const char *utf8);
		cairo_show_text(cairo, Str.toStringz(utf8));
	}
	
	/**
	 * A drawing operator that generates the shape from an array of glyphs,
	 * rendered according to the current font face, font size
	 * (font matrix), and font options.
	 * Since 1.0
	 * Params:
	 * glyphs = array of glyphs to show
	 */
	public void showGlyphs(cairo_glyph_t[] glyphs)
	{
		// void cairo_show_glyphs (cairo_t *cr,  const cairo_glyph_t *glyphs,  int num_glyphs);
		cairo_show_glyphs(cairo, glyphs.ptr, cast(int) glyphs.length);
	}
	
	/**
	 * This operation has rendering effects similar to cairo_show_glyphs()
	 * but, if the target surface supports it, uses the provided text and
	 * cluster mapping to embed the text for the glyphs shown in the output.
	 * If the target does not support the extended attributes, this function
	 * acts like the basic cairo_show_glyphs() as if it had been passed
	 * glyphs and num_glyphs.
	 * The mapping between utf8 and glyphs is provided by an array of
	 * clusters. Each cluster covers a number of
	 * text bytes and glyphs, and neighboring clusters cover neighboring
	 * areas of utf8 and glyphs. The clusters should collectively cover utf8
	 * and glyphs in entirety.
	 * The first cluster always covers bytes from the beginning of utf8.
	 * If cluster_flags do not have the CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
	 * set, the first cluster also covers the beginning
	 * of glyphs, otherwise it covers the end of the glyphs array and
	 * following clusters move backward.
	 * See cairo_text_cluster_t for constraints on valid clusters.
	 * Since 1.8
	 * Params:
	 * utf8 = a string of text encoded in UTF-8
	 * utf8_Len = length of utf8 in bytes, or -1 if it is NUL-terminated
	 * glyphs = array of glyphs to show
	 * clusters = array of cluster mapping information
	 * clusterFlags = cluster mapping flags
	 */
	public void showTextGlyphs(string utf8, int utf8_Len, cairo_glyph_t[] glyphs, cairo_text_cluster_t[] clusters, cairo_text_cluster_flags_t clusterFlags)
	{
		// void cairo_show_text_glyphs (cairo_t *cr,  const char *utf8,  int utf8_len,  const cairo_glyph_t *glyphs,  int num_glyphs,  const cairo_text_cluster_t *clusters,  int num_clusters,  cairo_text_cluster_flags_t cluster_flags);
		cairo_show_text_glyphs(cairo, Str.toStringz(utf8), utf8_Len, glyphs.ptr, cast(int) glyphs.length, clusters.ptr, cast(int) clusters.length, clusterFlags);
	}
	
	/**
	 * Gets the font extents for the currently selected font.
	 * Since 1.0
	 * Params:
	 * extents = a cairo_font_extents_t object into which the results
	 * will be stored.
	 */
	public void fontExtents(cairo_font_extents_t* extents)
	{
		// void cairo_font_extents (cairo_t *cr,  cairo_font_extents_t *extents);
		cairo_font_extents(cairo, extents);
	}
	
	/**
	 * Gets the extents for a string of text. The extents describe a
	 * user-space rectangle that encloses the "inked" portion of the text,
	 * (as it would be drawn by cairo_show_text()). Additionally, the
	 * x_advance and y_advance values indicate the amount by which the
	 * current point would be advanced by cairo_show_text().
	 * Note that whitespace characters do not directly contribute to the
	 * size of the rectangle (extents.width and extents.height). They do
	 * contribute indirectly by changing the position of non-whitespace
	 * characters. In particular, trailing whitespace characters are
	 * likely to not affect the size of the rectangle, though they will
	 * affect the x_advance and y_advance values.
	 * Since 1.0
	 * Params:
	 * utf8 = a NUL-terminated string of text encoded in UTF-8, or NULL
	 * extents = a cairo_text_extents_t object into which the results
	 * will be stored
	 */
	public void textExtents(string utf8, cairo_text_extents_t* extents)
	{
		// void cairo_text_extents (cairo_t *cr,  const char *utf8,  cairo_text_extents_t *extents);
		cairo_text_extents(cairo, Str.toStringz(utf8), extents);
	}
	
	/**
	 * Gets the extents for an array of glyphs. The extents describe a
	 * user-space rectangle that encloses the "inked" portion of the
	 * glyphs, (as they would be drawn by cairo_show_glyphs()).
	 * Additionally, the x_advance and y_advance values indicate the
	 * amount by which the current point would be advanced by
	 * cairo_show_glyphs().
	 * Note that whitespace glyphs do not contribute to the size of the
	 * rectangle (extents.width and extents.height).
	 * Since 1.0
	 * Params:
	 * glyphs = an array of cairo_glyph_t objects
	 * extents = a cairo_text_extents_t object into which the results
	 * will be stored
	 */
	public void glyphExtents(cairo_glyph_t[] glyphs, cairo_text_extents_t* extents)
	{
		// void cairo_glyph_extents (cairo_t *cr,  const cairo_glyph_t *glyphs,  int num_glyphs,  cairo_text_extents_t *extents);
		cairo_glyph_extents(cairo, glyphs.ptr, cast(int) glyphs.length, extents);
	}
	
	/**
	 * Creates a font face from a triplet of family, slant, and weight.
	 * These font faces are used in implementation of the the cairo_t "toy"
	 * font API.
	 * If family is the zero-length string "", the platform-specific default
	 * family is assumed. The default family then can be queried using
	 * cairo_toy_font_face_get_family().
	 * The cairo_select_font_face() function uses this to create font faces.
	 * See that function for limitations and other details of toy font faces.
	 * Since 1.8
	 * Params:
	 * family = a font family name, encoded in UTF-8
	 * slant = the slant for the font
	 * weight = the weight for the font
	 * Returns: a newly created cairo_font_face_t. Free with cairo_font_face_destroy() when you are done using it.
	 */
	public static FontFace toyFontFaceCreate(string family, cairo_font_slant_t slant, cairo_font_weight_t weight)
	{
		// cairo_font_face_t * cairo_toy_font_face_create (const char *family,  cairo_font_slant_t slant,  cairo_font_weight_t weight);
		auto p = cairo_toy_font_face_create(Str.toStringz(family), slant, weight);
		
		if(p is null)
		{
			return null;
		}
		
		return new FontFace(cast(cairo_font_face_t*) p);
	}
	
	/**
	 * Gets the familly name of a toy font.
	 * Since 1.8
	 * Params:
	 * fontFace = A toy font face
	 * Returns: The family name. This string is owned by the font face and remains valid as long as the font face is alive (referenced).
	 */
	public static string toyFontFaceGetFamily(FontFace fontFace)
	{
		// const char * cairo_toy_font_face_get_family (cairo_font_face_t *font_face);
		return Str.toString(cairo_toy_font_face_get_family((fontFace is null) ? null : fontFace.getFontFaceStruct()));
	}
	
	/**
	 * Gets the slant a toy font.
	 * Since 1.8
	 * Params:
	 * fontFace = A toy font face
	 * Returns: The slant value
	 */
	public static cairo_font_slant_t toyFontFaceGetSlant(FontFace fontFace)
	{
		// cairo_font_slant_t cairo_toy_font_face_get_slant (cairo_font_face_t *font_face);
		return cairo_toy_font_face_get_slant((fontFace is null) ? null : fontFace.getFontFaceStruct());
	}
	
	/**
	 * Gets the weight a toy font.
	 * Since 1.8
	 * Params:
	 * fontFace = A toy font face
	 * Returns: The weight value
	 */
	public static cairo_font_weight_t toyFontFaceGetWeight(FontFace fontFace)
	{
		// cairo_font_weight_t cairo_toy_font_face_get_weight (cairo_font_face_t *font_face);
		return cairo_toy_font_face_get_weight((fontFace is null) ? null : fontFace.getFontFaceStruct());
	}
	
	/**
	 * Frees an array of cairo_glyph_t's allocated using cairo_glyph_allocate().
	 * This function is only useful to free glyph array returned
	 * by cairo_scaled_font_text_to_glyphs() where cairo returns
	 * an array of glyphs that the user will free.
	 * For all other uses, user can use their own allocation method
	 * for glyphs.
	 * Since 1.8
	 * Params:
	 * glyphs = array of glyphs to free, or NULL
	 */
	public static void glyphFree(cairo_glyph_t[] glyphs)
	{
		// void cairo_glyph_free (cairo_glyph_t *glyphs);
		cairo_glyph_free(glyphs.ptr);
	}
	
	/**
	 * Frees an array of cairo_text_cluster's allocated using cairo_text_cluster_allocate().
	 * This function is only useful to free text cluster array returned
	 * by cairo_scaled_font_text_to_glyphs() where cairo returns
	 * an array of text clusters that the user will free.
	 * For all other uses, user can use their own allocation method
	 * for text clusters.
	 * Since 1.8
	 * Params:
	 * clusters = array of text clusters to free, or NULL
	 */
	public static void textClusterFree(cairo_text_cluster_t[] clusters)
	{
		// void cairo_text_cluster_free (cairo_text_cluster_t *clusters);
		cairo_text_cluster_free(clusters.ptr);
	}
}
