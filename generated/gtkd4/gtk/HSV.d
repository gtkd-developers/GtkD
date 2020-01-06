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


module gtk.HSV;

private import gtk.c.functions;
public  import gtk.c.types;


/** */
public struct HSV
{

	/**
	 * Converts a color from RGB space to HSV.
	 *
	 * Input values must be in the [0.0, 1.0] range;
	 * output values will be in the same range.
	 *
	 * Params:
	 *     r = Red
	 *     g = Green
	 *     b = Blue
	 *     h = Return value for the hue component
	 *     s = Return value for the saturation component
	 *     v = Return value for the value component
	 */
	public static void rgbToHsv(float r, float g, float b, out float h, out float s, out float v)
	{
		gtk_rgb_to_hsv(r, g, b, &h, &s, &v);
	}
}
