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


module pango.PgVertical;

private import pango.PgMatrix;
private import pango.c.functions;
public  import pango.c.types;


/** */
public struct PgVertical
{

	/**
	 * Finds the gravity that best matches the rotation component
	 * in a `PangoMatrix`.
	 *
	 * Params:
	 *     matrix = a `PangoMatrix`
	 *
	 * Returns: the gravity of @matrix, which will never be
	 *     %PANGO_GRAVITY_AUTO, or %PANGO_GRAVITY_SOUTH if @matrix is %NULL
	 *
	 * Since: 1.16
	 */
	public static PangoGravity gravityGetForMatrix(PgMatrix matrix)
	{
		return pango_gravity_get_for_matrix((matrix is null) ? null : matrix.getPgMatrixStruct());
	}

	/**
	 * Returns the gravity to use in laying out a `PangoItem`.
	 *
	 * The gravity is determined based on the script, base gravity, and hint.
	 *
	 * If @base_gravity is %PANGO_GRAVITY_AUTO, it is first replaced with the
	 * preferred gravity of @script.  To get the preferred gravity of a script,
	 * pass %PANGO_GRAVITY_AUTO and %PANGO_GRAVITY_HINT_STRONG in.
	 *
	 * Params:
	 *     script = `PangoScript` to query
	 *     baseGravity = base gravity of the paragraph
	 *     hint = orientation hint
	 *
	 * Returns: resolved gravity suitable to use for a run of text
	 *     with @script
	 *
	 * Since: 1.16
	 */
	public static PangoGravity gravityGetForScript(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint)
	{
		return pango_gravity_get_for_script(script, baseGravity, hint);
	}

	/**
	 * Returns the gravity to use in laying out a single character
	 * or `PangoItem`.
	 *
	 * The gravity is determined based on the script, East Asian width,
	 * base gravity, and hint,
	 *
	 * This function is similar to [func@Pango.Gravity.get_for_script] except
	 * that this function makes a distinction between narrow/half-width and
	 * wide/full-width characters also. Wide/full-width characters always
	 * stand *upright*, that is, they always take the base gravity,
	 * whereas narrow/full-width characters are always rotated in vertical
	 * context.
	 *
	 * If @base_gravity is %PANGO_GRAVITY_AUTO, it is first replaced with the
	 * preferred gravity of @script.
	 *
	 * Params:
	 *     script = `PangoScript` to query
	 *     wide = %TRUE for wide characters as returned by g_unichar_iswide()
	 *     baseGravity = base gravity of the paragraph
	 *     hint = orientation hint
	 *
	 * Returns: resolved gravity suitable to use for a run of text
	 *     with @script and @wide.
	 *
	 * Since: 1.26
	 */
	public static PangoGravity gravityGetForScriptAndWidth(PangoScript script, bool wide, PangoGravity baseGravity, PangoGravityHint hint)
	{
		return pango_gravity_get_for_script_and_width(script, wide, baseGravity, hint);
	}

	/**
	 * Converts a `PangoGravity` value to its natural rotation in radians.
	 *
	 * Note that [method@Pango.Matrix.rotate] takes angle in degrees, not radians.
	 * So, to call [method@Pango.Matrix,rotate] with the output of this function
	 * you should multiply it by (180. / G_PI).
	 *
	 * Params:
	 *     gravity = gravity to query, should not be %PANGO_GRAVITY_AUTO
	 *
	 * Returns: the rotation value corresponding to @gravity.
	 *
	 * Since: 1.16
	 */
	public static double gravityToRotation(PangoGravity gravity)
	{
		return pango_gravity_to_rotation(gravity);
	}
}
