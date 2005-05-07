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

module test.TestAspectFrame;

private import dui.AspectFrame;

private import test.TestDrawingArea;

/**
 * This tests the DUI aspect frame
 */
class TestAspectFrame : AspectFrame
{
	this()
	{
		// char[] label, gfloat xalign, gfloat yalign, gfloat ratio, bit obeyChild)
		super("Aspect 3x1", .5, .5, 3.0, false);
		add(new TestDrawingArea());
	}
}
