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

module dui.Editable;

private import def.Types;
private import dui.Utils;
private import dui.ObjectG;
//private import string;
private import dui.Widget;

alias GObject GtkEditable;

private import dool.String;

/**
 * The interface class for editable widgets.
 * \todo this should be related with the EditableListener but implementation actualy is separated into
 * EditableListener and EntryListener - still missing editable listener for (for instance) Combo...
 */
public:
interface Editable
{

	public:
	
	void setData(String key, gpointer data);
	
	static ObjectG getObjectG(void * gtkwidget);

	
	void selectRegion(gint start, gint end);
	
	//gboolean gtk_editable_get_selection_bounds(obj(), gint * start, gint * end);
	
	/**
	 * Insert text
	 * @param text the text to insert
	 * @param length the number of chars to insert
	 * @param position the position on the existing to where to insert the new text
	 */
	void insertText(String text, gint length, gint * position);
	
	/**
	 * Deletes text 
	 * @param startPos 
	 * @param endPos
	 */
	void deleteText(gint startPos, gint endPos);
	
	/**
	 * Gets a substring
	 * @param startPos
	 * @param endPos
	 */
	String getChars (gint startPos, gint endPos);
	
	/**
	 * Copies the text content to the clipboard and remove it from the widget
	 * (selected only???)
	 */
	void cutClipboard();
	
	/**
	 * Copies the text content into the clip board (selected only???)
	 */
	void copyClipboard();
	
	/**
	 * Pastes the clipborad contents into the widget
	 */
	void pasteClipboard();
	
	/**
	 * Deletes the selected text
	 */
	void deleteSelection();
	
	/**
	 * sets the cursor position ???
	 * @param position the cursor position
	 */
	void setPosition(int position);
	
	/**
	 * get position
	 * @return the position of the cursor ???
	 */
	gint getPosition();
	
	/**
	 * Sets the editable state
	 * @param isEditable the new editable state - use false to prevent the user to change the
	 * text content
	 */
	void setEditable(bit isEditable);
	
	/**
	 * gets the editable state
	 * @return true if entry is editable
	 */
	bit getEditable();


}
