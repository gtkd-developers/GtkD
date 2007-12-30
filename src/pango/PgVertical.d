/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * 	- pango_gravity_get_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module pango.PgVertical;

private import gtkc.pangotypes;

private import gtkc.pango;






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
 * gravity to auto and rotate the layout normally. Pango will make sure that
 * Asian languages take the right form, while other scripts are rotated normally.
 */
public class PgVertical
{
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Finds the gravity that best matches the rotation component
	 * in a PangoMatrix.
	 * Params:
	 * matrix =  a PangoMatrix
	 * Returns: the gravity of matrix, which will never bePANGO_GRAVITY_AUTO, or PANGO_GRAVITY_SOUTH if matrix is NULLSince 1.16
	 */
	public static PangoGravity forMatrix(PangoMatrix* matrix)
	{
		// PangoGravity pango_gravity_get_for_matrix (const PangoMatrix *matrix);
		return pango_gravity_get_for_matrix(matrix);
	}
	
	/**
	 * Based on the script, base gravity, and hint, returns actual gravity
	 * to use in laying out a single PangoItem.
	 * If base_gravity is PANGO_GRAVITY_AUTO, it is first replaced with the
	 * preferred gravity of script. To get the preferred gravity of a script,
	 * pass PANGO_GRAVITY_AUTO and PANGO_GRAVITY_HINT_STRONG in.
	 * Params:
	 * script =  PangoScript to query
	 * baseGravity =  base gravity of the paragraph
	 * hint =  orientation hint
	 * Returns: resolved gravity suitable to use for a run of textSince 1.16
	 */
	public static PangoGravity forScript(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint)
	{
		// PangoGravity pango_gravity_get_for_script (PangoScript script,  PangoGravity base_gravity,  PangoGravityHint hint);
		return pango_gravity_get_for_script(script, baseGravity, hint);
	}
}
