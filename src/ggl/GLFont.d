/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ggl.GLFont;

private import ggl.Types;

private:
extern(C)
{
	PangoFont * gdk_gl_font_use_pango_font(PangoFontDescription * font_desc, int first, int count, int list_base);
	PangoFont * gdk_gl_font_use_pango_font_for_display(GdkDisplay * display, PangoFontDescription * font_desc, int first, int count, int list_base);
};

/**
 * Functions for font rendering in OpenGL
 */
public:
class GLFont
{

	this()
	{
	}

	public:

	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Font";
	}


}
