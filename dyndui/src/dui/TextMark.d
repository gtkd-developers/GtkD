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

module dui.TextMark;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.TextBuffer;
private import dui.TextChildAnchor;
private import dui.TextTag;
private import lib.gtk;

/**
 * Text Mark
 */

// moved out --------------------------
	private import dool.String;
// ------------------------------------


public:
class TextMark : ObjectG
{	
	public:
	
	debug(status)
	{
		int complete(){	return ST_ALMOST;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "Text Mark";}
		char[] author(){return "Antonio";}
	}

	GtkTextMark* gtkM()
	{
		return cast(GtkTextMark*)gObject;
	}
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_text_mark_get_type();
	}


	/**
	 * Creates a text mark from a GtkTextIter
	 * @param gtkTextMark the gtk text mark
	 */
	this(GtkTextMark * gtkTextMark)
	{
		super(cast(GdkObject *) gtkTextMark);
	}

	public:

	/**
	 * Sets the visibility of mark.
	 * the insertion point is normally visible, i.e. you can see it as a vertical bar.
	 * Also, the text widget uses a visible mark to indicate where a drop will occur when
	 * dragging-and-dropping text. Most other marks are not visible.
	 * Marks are not visible by default.
	 * @param setting of mark
	 */
	void setVisible(bit setting)
	{
		gtk_text_mark_set_visible(gtkM(), setting);
	}
	
	/**
	 * Returns true if the mark is visible.
	 * @return true if the mark is visible (i.e. a cursor is displayed for it)
	 */
	bit getVisible()
	{
		return gtk_text_mark_get_visible(gtkM()) == 0 ? false : true;
	}

	/**
	 * Returns the mark name; returns null for anonymous marks.
	 * @return the mark name or null
	 */
	String getName()
	{
		return String.newz(gtk_text_mark_get_name(gtkM()));
	}
	
	/**
	 * Returns true if the mark has been removed from its buffer with gtk_text_buffer_delete_mark().
	 * Marks can't be used once deleted.
	 * @return true if the mark has been removed from its buffer with gtk_text_buffer_delete_mark()
	 */
	bit getDeleted()
	{
		return gtk_text_mark_get_deleted(gtkM()) == 0 ? false : true;
	}
	
	/**
	 * Gets the buffer this mark is located inside, or null if the mark is deleted.
	 * @return the buffer this mark is located inside, or null if the mark is deleted.
	 */
	TextBuffer getBuffer()
	{
		return new TextBuffer(gtk_text_mark_get_buffer(gtkM()));
	}
	
	/**
	 * Determines whether the mark has left gravity.
	 * @return true if the mark has left gravity, false otherwise
	 */
	bit getLeftGravity()
	{
		return gtk_text_mark_get_left_gravity(gtkM()) == 0 ? false : true;
	}


}
