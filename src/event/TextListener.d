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

module event.TextListener;

private import def.Types;
private import def.Constants;
private import dui.TextBuffer;
private import dui.TextTag;
private import event.Event;


public:
interface TextChangedListener
{
	void textChangedCallback(TextBuffer textBuffer);
	//"changed" void user_function (GtkTextBuffer * textbuffer, gpointer user_data);
};

public:
interface TextListener 
{
	//void applyTagCallback(TextBuffer * textbuffer, TextTag * arg1, TextIter * arg2, TextIter * arg3, gpointer user_data);
	void beginUserActionCallback(TextBuffer * textbuffer, gpointer user_data);
	//void deleteRangeCallback(TextBuffer * textbuffer, TextIter * arg1, TextIter * arg2, gpointer user_data);
	void endUserActionCallback(TextBuffer * textbuffer, gpointer user_data);
	//void insertChildAnchorCallback(TextBuffer * textbuffer, TextIter * arg1, TextChildAnchor * arg2, gpointer user_data);
	//void insertPixbufCallback(TextBuffer * textbuffer, TextIter * arg1, GdkPixbuf * arg2, gpointer user_data);
	//void insertTextCallback(TextBuffer * textbuffer, TextIter * arg1, gchar * arg2, gint arg3, gpointer user_data);
	//void markDeletedCallback(TextBuffer * textbuffer, TextMark * arg1, gpointer user_data);
	//void markSetCallback(TextBuffer * textbuffer, TextIter * arg1, TextMark * arg2, gpointer user_data);
	void modifiedChangedCallback(TextBuffer * textbuffer, gpointer user_data);
	//void removeTagCallback(TextBuffer * textbuffer, TextTag * arg1, TextIter * arg2, TextIter * arg3, gpointer user_data);
	
//	void applyTagCallback(GtkTextBuffer * textbuffer, GtkTextTag * arg1, GtkTextIter * arg2, GtkTextIter * arg3, gpointer user_data);
//	void beginUserActionCallback(GtkTextBuffer * textbuffer, gpointer user_data);
//	void deleteRangeCallback(GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextIter * arg2, gpointer user_data);
//	void endUserActionCallback(GtkTextBuffer * textbuffer, gpointer user_data);
//	void insertChildAnchorCallback(GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextChildAnchor * arg2, gpointer user_data);
//	void insertPixbufCallback(GtkTextBuffer * textbuffer, GtkTextIter * arg1, GdkPixbuf * arg2, gpointer user_data);
//	void insertTextCallback(GtkTextBuffer * textbuffer, GtkTextIter * arg1, gchar * arg2, gint arg3, gpointer user_data);
//	void markDeletedCallback(GtkTextBuffer * textbuffer, GtkTextMark * arg1, gpointer user_data);
//	void markSetCallback(GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextMark * arg2, gpointer user_data);
//	void modifiedChangedCallback(GtkTextBuffer * textbuffer, gpointer user_data);
//	void removeTagCallback(GtkTextBuffer * textbuffer, GtkTextTag * arg1, GtkTextIter * arg2, GtkTextIter * arg3, gpointer user_data);
	
	//"apply-tag" void user_function (GtkTextBuffer * textbuffer, GtkTextTag * arg1, GtkTextIter * arg2, GtkTextIter * arg3, gpointer user_data);
	//"begin-user-action" void user_function (GtkTextBuffer * textbuffer, gpointer user_data);
	//"delete-range" void user_function (GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextIter * arg2, gpointer user_data);
	//"end-user-action" void user_function (GtkTextBuffer * textbuffer, gpointer user_data);
	//"insert-child-anchor" void user_function (GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextChildAnchor * arg2, gpointer user_data);
	//"insert-pixbuf" void user_function (GtkTextBuffer * textbuffer, GtkTextIter * arg1, GdkPixbuf * arg2, gpointer user_data);
	//"insert-text" void user_function (GtkTextBuffer * textbuffer, GtkTextIter * arg1, gchar * arg2, gint arg3, gpointer user_data);
	//"mark-deleted" void user_function (GtkTextBuffer * textbuffer, GtkTextMark * arg1, gpointer user_data);
	//"mark-set" void user_function (GtkTextBuffer * textbuffer, GtkTextIter * arg1, GtkTextMark * arg2, gpointer user_data);
	//"modified-changed" void user_function (GtkTextBuffer * textbuffer, gpointer user_data);
	//"remove-tag" void user_function (GtkTextBuffer * textbuffer, GtkTextTag * arg1, GtkTextIter * arg2, GtkTextIter * arg3, gpointer user_data);
}
