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
module cairo.RectangleInt;

/**
    A data structure for holding a rectangle with integer coordinates.
*/
struct RectangleInt {
    /**
        X coordinate of the left side of the rectangle
    */
    int x;

    /**
        Y coordinate of the the top side of the rectangle
    */
    int y;

    /**
        width of the rectangle
    */
    int width;
    
    /**
        height of the rectangle
    */
    int height;
}