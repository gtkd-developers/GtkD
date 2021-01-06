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


module atk.EditableTextT;

public  import atk.c.functions;
public  import atk.c.types;
public  import glib.Str;


/**
 * #AtkEditableText should be implemented by UI components which
 * contain text which the user can edit, via the #AtkObject
 * corresponding to that component (see #AtkObject).
 * 
 * #AtkEditableText is a subclass of #AtkText, and as such, an object
 * which implements #AtkEditableText is by definition an #AtkText
 * implementor as well.
 * 
 * See also: #AtkText
 */
public template EditableTextT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkEditableText* getEditableTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(AtkEditableText*)getStruct();
	}


	/**
	 * Copy text from @start_pos up to, but not including @end_pos
	 * to the clipboard.
	 *
	 * Params:
	 *     startPos = start position
	 *     endPos = end position
	 */
	public void copyText(int startPos, int endPos)
	{
		atk_editable_text_copy_text(getEditableTextStruct(), startPos, endPos);
	}

	/**
	 * Copy text from @start_pos up to, but not including @end_pos
	 * to the clipboard and then delete from the widget.
	 *
	 * Params:
	 *     startPos = start position
	 *     endPos = end position
	 */
	public void cutText(int startPos, int endPos)
	{
		atk_editable_text_cut_text(getEditableTextStruct(), startPos, endPos);
	}

	/**
	 * Delete text @start_pos up to, but not including @end_pos.
	 *
	 * Params:
	 *     startPos = start position
	 *     endPos = end position
	 */
	public void deleteText(int startPos, int endPos)
	{
		atk_editable_text_delete_text(getEditableTextStruct(), startPos, endPos);
	}

	/**
	 * Insert text at a given position.
	 *
	 * Params:
	 *     string_ = the text to insert
	 *     length = the length of text to insert, in bytes
	 *     position = The caller initializes this to
	 *         the position at which to insert the text. After the call it
	 *         points at the position after the newly inserted text.
	 */
	public void insertText(string string_, int length, int* position)
	{
		atk_editable_text_insert_text(getEditableTextStruct(), Str.toStringz(string_), length, position);
	}

	/**
	 * Paste text from clipboard to specified @position.
	 *
	 * Params:
	 *     position = position to paste
	 */
	public void pasteText(int position)
	{
		atk_editable_text_paste_text(getEditableTextStruct(), position);
	}

	/**
	 * Sets the attributes for a specified range. See the ATK_ATTRIBUTE
	 * macros (such as #ATK_ATTRIBUTE_LEFT_MARGIN) for examples of attributes
	 * that can be set. Note that other attributes that do not have corresponding
	 * ATK_ATTRIBUTE macros may also be set for certain text widgets.
	 *
	 * Params:
	 *     attribSet = an #AtkAttributeSet
	 *     startOffset = start of range in which to set attributes
	 *     endOffset = end of range in which to set attributes
	 *
	 * Returns: %TRUE if attributes successfully set for the specified
	 *     range, otherwise %FALSE
	 */
	public bool setRunAttributes(AtkAttributeSet* attribSet, int startOffset, int endOffset)
	{
		return atk_editable_text_set_run_attributes(getEditableTextStruct(), attribSet, startOffset, endOffset) != 0;
	}

	/**
	 * Set text contents of @text.
	 *
	 * Params:
	 *     string_ = string to set for text contents of @text
	 */
	public void setTextContents(string string_)
	{
		atk_editable_text_set_text_contents(getEditableTextStruct(), Str.toStringz(string_));
	}
}
