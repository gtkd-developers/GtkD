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

module event.TreeModelListener;

private import def.Types;
private import dui.TreeModel;
private import dui.TreePath;
private import dui.TreeIter;
private import event.Event;

/**
 * Declares the methods for a tree model listener
 * \todo add these to the dispatcher
 */
public:
interface TreeModelListener
{
	void rowChangedCallback(TreeModel treeModel, TreePath path, TreeIter iter);
	void rowInsertedCallback(TreeModel treeModel, TreePath path, TreeIter iter);
	void rowHasChildToggledCallback(TreeModel treeModel, TreePath path, TreeIter iter);
	void rowDeletedCallback(TreeModel treeModel, TreePath path);
	void rowsReorderedCallback(TreeModel treeModel, TreePath path, TreeIter iter, gint * newOrder);
}

public:
class TreeModelAdapter :
		TreeModelListener
{
	void rowChangedCallback(TreeModel treeModel, TreePath path, TreeIter iter){}
	void rowInsertedCallback(TreeModel treeModel, TreePath path, TreeIter iter){}
	void rowHasChildToggledCallback(TreeModel treeModel, TreePath path, TreeIter iter){}
	void rowDeletedCallback(TreeModel treeModel, TreePath path){}
	void rowsReorderedCallback(TreeModel treeModel, TreePath path, TreeIter iter, gint * newOrder){}
}
