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

module ddi.Cursor;

private import def.Types;
private import def.Constants;

private import ddi.Display;

private:
extern (C)
{
GType gdk_cursor_get_type ();

GdkCursor * gdk_cursor_new_for_display (GdkDisplay * display, GdkCursorType cursor_type);
//#ifndef GDK_MULTIHEAD_SAFE
GdkCursor * gdk_cursor_new (GdkCursorType cursor_type);
//#endif
GdkCursor * gdk_cursor_new_from_pixmap (GdkPixmap * source, GdkPixmap * mask, GdkColor * fg, GdkColor * bg, gint x, gint y);
GdkDisplay * gdk_cursor_get_display (GdkCursor * cursor);
GdkCursor * gdk_cursor_ref (GdkCursor * cursor);
void gdk_cursor_unref (GdkCursor * cursor);
}
/**
 * Color
 */
public:
class Cursor
{

	GdkCursor* gdkCursor;
	
	public:
	
	this(GdkCursor* gdkCursor)
	{
		this.gdkCursor = gdkCursor;
	}
	
	GdkCursor* gdkC()
	{
		return gdkCursor;
	}

	/**
	 * Creates a new cursor for the default display
	 * @param cursorType the new cursor type
	 */
	this(CursorType cursorType)
	{
		this(Display.getDefault(), cursorType);
	}
	
	/**
	 * Creates a new cursor for the display and with a types
	 * @param display the display
	 * @param cursorType the cursor type to create
	 */
	this(Display display, CursorType cursorType)
	{
		this(gdk_cursor_new_for_display(cast(GdkDisplay*)display.obj(), cursorType));
	}
	
	//#ifndef GDK_MULTIHEAD_SAFE
	//GdkCursor * gdk_cursor_new (GdkCursorType cursor_type);
	//#endif
	
	/** \todo GdkCursor * gdk_cursor_new_from_pixmap (GdkPixmap * source, GdkPixmap * mask, GdkColor * fg, GdkColor * bg, gint x, gint y); */
	
	/**
	 * Gets the display of this cursor
	 * @return the display of this cursor
	 */
	Display getDisplay()
	{
		return new Display(gdk_cursor_get_display(gdkC()));
	}
	
	//GdkCursor * gdk_cursor_ref (GdkCursor * cursor);
	
	void unref()
	{
		gdk_cursor_unref(gdkC());
	}
	

}
