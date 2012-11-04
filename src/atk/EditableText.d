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

/*
 * Conversion parameters:
 * inFile  = AtkEditableText.html
 * outPack = atk
 * outFile = EditableText
 * strct   = AtkEditableText
 * realStrct=
 * ctorStrct=
 * clss    = EditableText
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_editable_text_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.EditableText;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;




/**
 * Description
 * AtkEditableText should be implemented by UI components which contain
 * text which the user can edit, via the AtkObject corresponding to that
 * component (see AtkObject).
 * AtkEditableText is a subclass of AtkText, and as such, an object which
 * implements AtkEditableText is by definition an AtkText implementor as well.
 */
public class EditableText
{
	
	/** the main Gtk struct */
	protected AtkEditableText* atkEditableText;
	
	
	public AtkEditableText* getEditableTextStruct()
	{
		return atkEditableText;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkEditableText;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkEditableText* atkEditableText)
	{
		this.atkEditableText = atkEditableText;
	}
	
	/**
	 */
	
	/**
	 * Sets the attributes for a specified range. See the ATK_ATTRIBUTE
	 * macros (such as ATK_ATTRIBUTE_LEFT_MARGIN) for examples of attributes
	 * that can be set. Note that other attributes that do not have corresponding
	 * ATK_ATTRIBUTE macros may also be set for certain text widgets.
	 * Params:
	 * attribSet = an AtkAttributeSet
	 * startOffset = start of range in which to set attributes
	 * endOffset = end of range in which to set attributes
	 * Returns: TRUE if attributes successfully set for the specified range, otherwise FALSE
	 */
	public int setRunAttributes(AtkAttributeSet* attribSet, int startOffset, int endOffset)
	{
		// gboolean atk_editable_text_set_run_attributes  (AtkEditableText *text,  AtkAttributeSet *attrib_set,  gint start_offset,  gint end_offset);
		return atk_editable_text_set_run_attributes(atkEditableText, attribSet, startOffset, endOffset);
	}
	
	/**
	 * Set text contents of text.
	 * Params:
	 * string = string to set for text contents of text
	 */
	public void setTextContents(string string)
	{
		// void atk_editable_text_set_text_contents (AtkEditableText *text,  const gchar *string);
		atk_editable_text_set_text_contents(atkEditableText, Str.toStringz(string));
	}
	
	/**
	 * Insert text at a given position.
	 * Params:
	 * string = the text to insert
	 * length = the length of text to insert, in bytes
	 * position = The caller initializes this to
	 * the position at which to insert the text. After the call it
	 * points at the position after the newly inserted text.
	 */
	public void insertText(string string, int length, ref int position)
	{
		// void atk_editable_text_insert_text (AtkEditableText *text,  const gchar *string,  gint length,  gint *position);
		atk_editable_text_insert_text(atkEditableText, Str.toStringz(string), length, &position);
	}
	
	/**
	 * Copy text from start_pos up to, but not including end_pos
	 * to the clipboard.
	 * Params:
	 * startPos = start position
	 * endPos = end position
	 */
	public void copyText(int startPos, int endPos)
	{
		// void atk_editable_text_copy_text (AtkEditableText *text,  gint start_pos,  gint end_pos);
		atk_editable_text_copy_text(atkEditableText, startPos, endPos);
	}
	
	/**
	 * Copy text from start_pos up to, but not including end_pos
	 * to the clipboard and then delete from the widget.
	 * Params:
	 * startPos = start position
	 * endPos = end position
	 */
	public void cutText(int startPos, int endPos)
	{
		// void atk_editable_text_cut_text (AtkEditableText *text,  gint start_pos,  gint end_pos);
		atk_editable_text_cut_text(atkEditableText, startPos, endPos);
	}
	
	/**
	 * Delete text start_pos up to, but not including end_pos.
	 * Params:
	 * startPos = start position
	 * endPos = end position
	 */
	public void deleteText(int startPos, int endPos)
	{
		// void atk_editable_text_delete_text (AtkEditableText *text,  gint start_pos,  gint end_pos);
		atk_editable_text_delete_text(atkEditableText, startPos, endPos);
	}
	
	/**
	 * Paste text from clipboard to specified position.
	 * Params:
	 * position = position to paste
	 */
	public void pasteText(int position)
	{
		// void atk_editable_text_paste_text (AtkEditableText *text,  gint position);
		atk_editable_text_paste_text(atkEditableText, position);
	}
}
