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

module event.EntryListener;

private import def.Types;
private import def.Constants;
private import dui.Entry;
private import dui.Menu;
private import event.Event;
private import dool.String;

/**
 * Listen to changes to an entry 
 */
public:
interface EntryChangeListener
{
	void changedCallback(Entry entry);
	//"changed" void user_function (GtkEditable * editable, gpointer user_data);
}

/**
 * Declares the methods for a entry listener
 */
public:
interface EntryInsertListener //:		EntryChangeListener
{

	void deleteTextCallback(Entry entry, int startPos, int endPos);
	void insertTextCallback(Entry entry, String newText, int newTextLength, int position);

	//"delete-text" void user_function (GtkEditable * editable, gint start_pos, gint end_pos, gpointer user_data);
	//"insert-text" void user_function (GtkEditable * editable, gchar * new_text, gint new_text_length, gint * position, gpointer user_data);
}


/**
 * Listen to the enter key
 */
public:
interface EntryActivateListener
{
	bit activateCallback(Entry entry, String action);
}

/**
 * Listen to all event of an entry
 */
public:
interface EntryListener : EntryActivateListener //:		EntryChangeListener, EntryInsertListener
{
	void copyClipboardCallback(Entry entry);
	void cutClipboardCallback(Entry entry);
	void deleteFromCursorCallback(Entry entry, DeleteType arg1, gint arg2);
	void insertAtCursorCallback(Entry entry, String arg1);
	void moveCursorCallback(Entry entry, MovementStep arg1, gint arg2, gboolean arg3);
	void pasteClipboardCallback(Entry entry);
	void populatePopupCallback(Entry entry, Menu arg1);
	void toggleOverwriteCallback(Entry entry);

	//"activate" void user_function (GtkEntry * entry, gpointer user_data);
	//"copy-clipboard" void user_function (GtkEntry * entry, gpointer user_data);
	//"cut-clipboard" void user_function (GtkEntry * entry, gpointer user_data);
	//"delete-from-cursor" void user_function (GtkEntry * entry, GtkDeleteType arg1, gint arg2, gpointer user_data);
	//"insert-at-cursor" void user_function (GtkEntry * entry, gchar * arg1, gpointer user_data);
	//"move-cursor" void user_function (GtkEntry * entry, GtkMovementStep arg1, gint arg2, gboolean arg3, gpointer user_data);
	//"paste-clipboard" void user_function (GtkEntry * entry, gpointer user_data);
	//"populate-popup" void user_function (GtkEntry * entry, GtkMenu * arg1, gpointer user_data);
	//"toggle-overwrite" void user_function (GtkEntry * entry, gpointer user_data);
}

/**
 * Provides default noop action for the entry insert listener callbacks
 */
public class EntryInsertAdapter : EntryInsertListener
{
	void changedCallback(Entry entry)
	{
		debug(events) printf("EntryInsertAdapter.changedCallback\n");
	}
	void deleteTextCallback(Entry entry, int startPos, int endPos)
	{
		debug(events) printf("EntryInsertAdapter.deleteTextCallback start %d, end %d\n",startPos, endPos);
	}
	void insertTextCallback(Entry entry, String newText, int newTextLength, int position)
	{
		debug(events) printf("EntryInsertAdapter.insertTextCallback lenth %d, position %d\ntext:\n%.*s\n", newTextLength, position, newText);
	}
}

/**
 * Provides default noop actions for all the entry callbacks
 */
public:
class EntryAdapter : EntryInsertAdapter,
		EntryListener
{

	bit activateCallback(Entry entry, String action)
	{
		debug(events) printf("EntryAdapter.activateCallback \n");
		return false;
	}
	void copyClipboardCallback(Entry entry)
	{
		debug(events) printf("EntryAdapter.copyClipboardCallback \n");
	}

	void cutClipboardCallback(Entry entry)
	{
		debug(events) printf("EntryAdapter.cutClipboardCallback \n");
	}

	void deleteFromCursorCallback(Entry entry, DeleteType arg1, gint arg2)
	{
		debug(events) printf("EntryAdapter.deleteFromCursorCallback \n");
	}

	void insertAtCursorCallback(Entry entry, String arg1)
	{
		debug(events) printf("EntryAdapter.insertAtCursorCallback \n");
	}

	void moveCursorCallback(Entry entry, MovementStep arg1, gint arg2, gboolean arg3)
	{
		debug(events) printf("EntryAdapter.moveCursorCallback \n");
	}

	void pasteClipboardCallback(Entry entry)
	{
		debug(events) printf("EntryAdapter.pasteClipboardCallback \n");
	}

	void populatePopupCallback(Entry entry, Menu arg1)
	{
		debug(events) printf("EntryAdapter.populatePopupCallback \n");
	}

	void toggleOverwriteCallback(Entry entry)
	{
		debug(events) printf("EntryAdapter.toggleOverwriteCallback \n");
	}

}


