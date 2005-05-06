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

module event.NotebookListener;

private import def.Types;
private import def.Constants;
private import event.Event;
private import dui.Notebook;

struct NotebookPage;

/**
 * notebook Switch page listener
 */
public: interface NotebookSwitchPageListener
{
	void switchPageCallback(Notebook notebook, /*NotebookPage page,*/ guint pageNumber);
}

/**
 * notebook listener
 */
public:
interface NotebookListener : NotebookSwitchPageListener
{
	void changeCurrentPageCallback(Notebook notebook, gint arg1);
	bit focusTabCallback(Notebook notebook, /*GtkNotebookTab arg1*/);
	void moveFocusOutCallback(Notebook notebook, DirectionType direction);
	bit selectPageCallback(Notebook notebook, bit arg1);

}

