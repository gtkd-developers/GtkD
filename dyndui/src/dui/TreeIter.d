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

module dui.TreeIter;


private import dui.Utils;
private import def.Types;
private import dui.TreeModel;
private import dui.TreePath;
private import ddi.Value;
private import lib.gtk;

/**
 * A TreeIter error.
 * thrown<br>
 * - trying to access a method that requires a tree model and the tree model was never set
 */
class TreeIterError : Error
{
	
	private import dool.String;
	this(String method, String message)
	{
		super((new String("TreeIter.")~method~" : "~message).toString());
	}
}

/**
 * A representation of a tree or list row.
 * I would say that someone forgot to create a 
 * proper object TreeIter.
 * Anyway GTK+ claims to be object oriented but it only 
 * has inherintance.
 */

// moved out ------------------------
	private import dool.String;
// ----------------------------------

public
class TreeIter
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A representation of a tree or list row";}
		char[] author(){return "Antonio";}
	}

    protected:
    GtkTreeIter* iter;
	/**
	 * this will be set only when the iter
	 * is created from the model.
	 */
	GtkTreeModel *gtkTreeModel; 

	public:
	void setModel(GtkTreeModel *gtkTreeModel)
	{
		this.gtkTreeModel = gtkTreeModel;
	}
       
	void setModel(TreeModel treeModel)
	{
		this.gtkTreeModel = treeModel.model();
	}
	   
    this(GtkTreeIter *iter)
    {
    	this.iter = iter;
    }
    
    public:
    
    /**
     * creates a new tree iteractor.
     * used TreeView.createIter and TreeView.append() to create iteractor for a tree or list
     */
    this()
    {
    	iter = new GtkTreeIter;
    }
    
    /**
     * Gets the GtkTreeIter
     * @return GtkTreeIter
     */
    GtkTreeIter* getIter()
    {
    	return iter;
    }
    
	GtkTreeIter* gtkI()
	{
		return iter;
	}
    /**
     * debuging only
     */
    void dump()
    {
    	printf("TreeIter @%X\n",iter);
		printf("\tstamp\t%d\n",iter.stamp);
		printf("\tuser1\t%X\n",iter.user_data);
		printf("\tuser2\t%X\n",iter.user_data2);
		printf("\tuser3\t%X\n",iter.user_data3);
    }


	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////
	/// from TreeModel. these and others make more sense here then in the model...
	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////
	
	
	/**
	 * Get Value
	 * @param iter
	 * @param column
	 * @param value
	 */
	void getValue(gint column, Value value)
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getValue"),new String("Tree model not set"));
		}
		gtk_tree_model_get_value(gtkTreeModel, iter, column, value.getV());
	}

	/**
	 * Get the value of a column as a string
	 * @para column the column number
	 * @return a string representing the value of the column
	 */
	String getValueString(gint column)
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getValueString"),new String("Tree model not set"));
		}
		Value value = new Value();
		gtk_tree_model_get_value(gtkTreeModel, iter, column, value.getV());
		return value.getString();
	}

	/**
	 * Get the value of a column as an int
	 * @para column the column number
	 * @return a string representing the value of the column
	 */
	int getValueInt(gint column)
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getValueInt"),new String("Tree model not set"));
		}
		Value value = new Value();
		gtk_tree_model_get_value(gtkTreeModel, iter, column, value.getV());
		return value.getInt();
	}

	/**
	 * Gets the parent of this iter
	 * @param child
	 * @return the parent iter or null if can't get parent or an error occured
	 */
	TreeIter getParent()
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getParent"),new String("Tree model not set"));
		}
		TreeIter parent = new TreeIter();
		bit gotParent = gtk_tree_model_iter_parent(gtkTreeModel, parent.getIter(), getIter()) == 0 ? false : true;
		if ( !gotParent )
		{
			return null;
		}
		parent.setModel(gtkTreeModel);
		return parent;
	}

	this(TreeModel treeModel, TreePath treePath)
	{
		this();
		setModel(treeModel);
		if ( gtk_tree_model_get_iter_from_string(
				treeModel.model(),
				getIter(), cChar(treePath.toString())) )
		{
			// ???
		}
	}
	
	TreeIter getGrandParent()
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getGrandParent"),new String("Tree model not set"));
		}
		TreePath tp = new TreePath(
			gtk_tree_model_get_path(gtkTreeModel, getIter())
		);
		int pos = (new String(tp.toString())).find(':');
		if ( pos == -1 )
		{
			return this;
		}
		
		TreeIter grandParent = new TreeIter();
		if ( gtk_tree_model_get_iter_from_string(gtkTreeModel, grandParent.getIter(), cChar(tp.toString()[0..pos])) )
		{
			grandParent.setModel(gtkTreeModel);
			return grandParent;
		}
		return null;
	}

	TreePath getTreePath()
	{
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getTreePath"),new String("Tree model not set"));
		}
		return new TreePath(gtk_tree_model_get_path(gtkTreeModel, getIter()));
	}

	/**
	 * This return the path visible to the user.
	 */
	String getVisiblePath(char[] separator)
	{
		return getVisiblePath(new String(separator));
	}
	String getVisiblePath(String separator)
	{
		String vPath = new String("");
		if ( gtkTreeModel === null )
		{
			throw new TreeIterError(new String("getVisiblePath"),new String("Tree model not set"));
		}

		vPath.set(getValueString(0));
		TreeIter parent = getParent();
		while ( parent !== null )
		{
			vPath.set(parent.getValueString(0) ~ separator ~ vPath);
			parent = parent.getParent();
		}
		
		return vPath;
	}
	
	
}

