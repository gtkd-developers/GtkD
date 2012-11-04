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
 * inFile  = pango-Vertical-Text.html
 * outPack = pango
 * outFile = PgVertical
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgVertical
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- pango.PgMatrix
 * structWrap:
 * 	- PangoMatrix* -> PgMatrix
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgVertical;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import pango.PgMatrix;




/**
 * Description
 * Since 1.16, Pango is able to correctly lay vertical text out. In fact, it can
 * set layouts of mixed vertical and non-vertical text. This section describes
 * the types used for setting vertical text parameters.
 * The way this is implemented is through the concept of
 * gravity. Gravity of normal Latin text is south. A
 * gravity value of east means that glyphs will be rotated ninety degrees
 * counterclockwise. So, to render vertical text one needs to set the gravity
 * and rotate the layout using the matrix machinery already in place. This has
 * the huge advantage that most algorithms working on a PangoLayout do not need
 * any change as the assumption that lines run in the X direction and stack in
 * the Y direction holds even for vertical text layouts.
 * Applications should only need to set base gravity on PangoContext in use, and
 * let Pango decide the gravity assigned to each run of text. This automatically
 * handles text with mixed scripts. A very common use is to set the context base
 * gravity to auto using pango_context_set_base_gravity()
 * and rotate the layout normally. Pango will make sure that
 * Asian languages take the right form, while other scripts are rotated normally.
 * The correct way to set gravity on a layout is to set it on the context
 * associated with it using pango_context_set_base_gravity(). The context
 * of a layout can be accessed using pango_layout_get_context(). The currently
 * set base gravity of the context can be accessed using
 * pango_context_get_base_gravity() and the resolved
 * gravity of it using pango_context_get_gravity(). The resolved gravity is
 * the same as the base gravity for the most part, except that if the base
 * gravity is set to PANGO_GRAVITY_AUTO, the resolved gravity will depend
 * on the current matrix set on context, and is derived using
 * pango_gravity_get_for_matrix().
 * The next thing an application may want to set on the context is the
 * gravity hint. A PangoGravityHint instructs how
 * different scripts should react to the set base gravity.
 * Font descriptions have a gravity property too, that can be set using
 * pango_font_description_set_gravity() and accessed using
 * pango_font_description_get_gravity(). However, those are rarely useful
 * from application code and are mainly used by PangoLayout internally.
 * Last but not least, one can create PangoAttributes for gravity
 * and gravity hint using pango_attr_gravity_new() and
 * pango_attr_gravity_hint_new().
 */
public class PgVertical
{
	
	/**
	 */
	
	/**
	 * Finds the gravity that best matches the rotation component
	 * in a PangoMatrix.
	 * Since 1.16
	 * Params:
	 * matrix = a PangoMatrix
	 * Returns: the gravity of matrix, which will never be PANGO_GRAVITY_AUTO, or PANGO_GRAVITY_SOUTH if matrix is NULL
	 */
	public static PangoGravity gravityGetForMatrix(PgMatrix matrix)
	{
		// PangoGravity pango_gravity_get_for_matrix (const PangoMatrix *matrix);
		return pango_gravity_get_for_matrix((matrix is null) ? null : matrix.getPgMatrixStruct());
	}
	
	/**
	 * Based on the script, base gravity, and hint, returns actual gravity
	 * to use in laying out a single PangoItem.
	 * If base_gravity is PANGO_GRAVITY_AUTO, it is first replaced with the
	 * preferred gravity of script. To get the preferred gravity of a script,
	 * pass PANGO_GRAVITY_AUTO and PANGO_GRAVITY_HINT_STRONG in.
	 * Since 1.16
	 * Params:
	 * script = PangoScript to query
	 * baseGravity = base gravity of the paragraph
	 * hint = orientation hint
	 * Returns: resolved gravity suitable to use for a run of text with script.
	 */
	public static PangoGravity gravityGetForScript(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint)
	{
		// PangoGravity pango_gravity_get_for_script (PangoScript script,  PangoGravity base_gravity,  PangoGravityHint hint);
		return pango_gravity_get_for_script(script, baseGravity, hint);
	}
	
	/**
	 * Based on the script, East Asian width, base gravity, and hint,
	 * returns actual gravity to use in laying out a single character
	 * or PangoItem.
	 * This function is similar to pango_gravity_get_for_script() except
	 * that this function makes a distinction between narrow/half-width and
	 * wide/full-width characters also. Wide/full-width characters always
	 * stand <emph>upright</emph>, that is, they always take the base gravity,
	 * whereas narrow/full-width characters are always rotated in vertical
	 * context.
	 * If base_gravity is PANGO_GRAVITY_AUTO, it is first replaced with the
	 * preferred gravity of script.
	 * Since 1.26
	 * Params:
	 * script = PangoScript to query
	 * wide = TRUE for wide characters as returned by g_unichar_iswide()
	 * baseGravity = base gravity of the paragraph
	 * hint = orientation hint
	 * Returns: resolved gravity suitable to use for a run of text with script and wide.
	 */
	public static PangoGravity gravityGetForScriptAndWidth(PangoScript script, int wide, PangoGravity baseGravity, PangoGravityHint hint)
	{
		// PangoGravity pango_gravity_get_for_script_and_width  (PangoScript script,  gboolean wide,  PangoGravity base_gravity,  PangoGravityHint hint);
		return pango_gravity_get_for_script_and_width(script, wide, baseGravity, hint);
	}
	
	/**
	 * Converts a PangoGravity value to its natural rotation in radians.
	 * gravity should not be PANGO_GRAVITY_AUTO.
	 * Note that pango_matrix_rotate() takes angle in degrees, not radians.
	 * So, to call pango_matrix_rotate() with the output of this function
	 * you should multiply it by (180. / G_PI).
	 * Since 1.16
	 * Params:
	 * gravity = gravity to query
	 * Returns: the rotation value corresponding to gravity.
	 */
	public static double gravityToRotation(PangoGravity gravity)
	{
		// double pango_gravity_to_rotation (PangoGravity gravity);
		return pango_gravity_to_rotation(gravity);
	}
}
