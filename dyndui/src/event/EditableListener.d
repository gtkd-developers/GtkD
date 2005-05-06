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

module event.EditableListener;

private import dui.Editable;
private import event.Event;
private import dool.String;

/**
 * Declares the methods for a editable changed listener
 */
public:
interface EditableChangedListener
{
	void changedCallback(Editable editable);
};

/**
 * Declares the methods for a editable listener
 */
public:
interface EditableListener : EditableChangedListener
{
	
	void deleteTextCallback(Editable editable, int startPos, int endPos);
	void insertTextCallback(Editable editable, String newText, int newTextLength, int position);

};

/**
 * Editable Adapter
 */
public:
class EditableAdapter : EditableListener
{
	void changedCallback(Editable editable)
	{
		printf("EditableAdapter.changedCallback\n");
	}
	void deleteTextCallback(Editable editable, int startPos, int endPos)
	{
		printf("EditableAdapter.deleteTextCallback start %d, end %d\n",startPos,endPos);
	}
	void insertTextCallback(Editable editable, String newText, int newTextLength, int position)
	{
		printf("EditableAdapter.insertTextCallback lenth %d, position %d\ntext:\n%.*s\n",
				newTextLength,position,newText.toString());
	}
}
