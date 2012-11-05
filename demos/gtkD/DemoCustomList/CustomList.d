module CustomList;

import glib.RandG;
import gobject.Value;
import gtk.TreeIter;
import gtk.TreePath;
import gtk.TreeModel;

struct CustomRecord
{
  /* data - you can extend this */
  string name;
  uint yearBorn;

  /* admin stuff used by the custom list model */
  uint pos;   /* pos within the array */
}

enum CustomListColumn
{
	Record = 0,
	Name,
	YearBorn,
	NColumns,
}

class CustomList : TreeModel
{
	uint numRows;
	int nColumns;
	int stamp;
	GType[3] columnTypes;
	CustomRecord*[] rows;

	public this()
	{
		nColumns = columnTypes.length;
		columnTypes[0] = GType.POINTER;
		columnTypes[1] = GType.STRING;
		columnTypes[2] = GType.UINT;

		stamp = RandG.randomInt();
	}

	/*
	 * tells the rest of the world whether our tree model
	 * has any special characteristics. In our case,
	 * we have a list model (instead of a tree), and each
	 * tree iter is valid as long as the row in question
	 * exists, as it only contains a pointer to our struct.
	 */
	override GtkTreeModelFlags getFlags()
	{
		return (GtkTreeModelFlags.LIST_ONLY | GtkTreeModelFlags.ITERS_PERSIST);
	}


	/*
	 * tells the rest of the world how many data
	 * columns we export via the tree model interface
	 */

	override int getNColumns()
	{
		return nColumns;
	}

	/*
	 * tells the rest of the world which type of
	 * data an exported model column contains
	 */
	override GType getColumnType(int index)
	{
		if ( index >= nColumns || index < 0 )
			return GType.INVALID;

		return columnTypes[index];
	}

	/*
	 * converts a tree path (physical position) into a
	 * tree iter structure (the content of the iter
	 * fields will only be used internally by our model).
	 * We simply store a pointer to our CustomRecord
	 * structure that represents that row in the tree iter.
	 */
	override int getIter(TreeIter iter, TreePath path)
	{
		CustomRecord* record;
		int[]         indices;
		int           n, depth;

		indices = path.getIndices();
		depth   = path.getDepth();

		/* we do not allow children */
		if (depth != 1)
			return false;//throw new Exception("We only except lists");

		n = indices[0]; /* the n-th top level row */

		if ( n >= numRows || n < 0 )
			return false;

		record = rows[n];

		if ( record is null )
			throw new Exception("Not Exsisting record requested");
		if ( record.pos != n )
			throw new Exception("record.pos != TreePath.getIndices()[0]");

		/* We simply store a pointer to our custom record in the iter */
		iter.stamp     = stamp;
		iter.userData  = record;

		return true;
	}


	/*
	 * converts a tree iter into a tree path (ie. the
	 * physical position of that row in the list).
	 */
	override TreePath getPath(TreeIter iter)
	{
		TreePath path;
		CustomRecord* record;
	  
		if ( iter is null || iter.userData is null || iter.stamp != stamp )
			return null;

		record = cast(CustomRecord*) iter.userData;

		path = new TreePath(record.pos);

		return path;
	}


	/*
	 * Returns a row's exported data columns
	 * (_get_value is what gtk_tree_model_get uses)
	 */

	override Value getValue(TreeIter iter, int column, Value value = null)
	{
		CustomRecord  *record;

		if ( value is null )
			value = new Value();

		if ( iter is null || column >= nColumns || iter.stamp != stamp )
			return null;

		value.init(columnTypes[column]);

		record = cast(CustomRecord*) iter.userData;

		if ( record is null || record.pos >= numRows )
			return null;

		switch(column)
		{
			case CustomListColumn.Record:
				value.setPointer(record);
				break;

			case CustomListColumn.Name:
				value.setString(record.name);
				break;

			case CustomListColumn.YearBorn:
				value.setUint(record.yearBorn);
				break;

			default:
				break;
		}

		return value;
	}


	/*
	 * Takes an iter structure and sets it to point
	 * to the next row.
	 */
	override int iterNext(TreeIter iter)
	{
		CustomRecord* record, nextrecord;
	  
		if ( iter is null || iter.userData is null || iter.stamp != stamp )
			return false;

		record = cast(CustomRecord*) iter.userData;

		/* Is this the last record in the list? */
		if ( (record.pos + 1) >= numRows)
			return false;

		nextrecord = rows[(record.pos + 1)];

		if ( nextrecord is null || nextrecord.pos != record.pos + 1 )
			throw new Exception("Invalid next record");

		iter.stamp     = stamp;
		iter.userData  = nextrecord;

		return true;
	}


	/*
	 * Returns TRUE or FALSE depending on whether
	 * the row specified by 'parent' has any children.
	 * If it has children, then 'iter' is set to
	 * point to the first child. Special case: if
	 * 'parent' is NULL, then the first top-level
	 * row should be returned if it exists.
	 */

	override int iterChildren(TreeIter iter, TreeIter parent)
	{
		/* this is a list, nodes have no children */
		if ( parent !is null )
			return false;

		/* No rows => no first row */
		if ( numRows == 0 )
			return false;

		/* Set iter to first item in list */
		iter.stamp     = stamp;
		iter.userData  = rows[0];

		return true;
	}


	/*
	 * Returns TRUE or FALSE depending on whether
	 * the row specified by 'iter' has any children.
	 * We only have a list and thus no children.
	 */
	override int iterHasChild(TreeIter iter)
	{
		return false;
	}


	/*
	 * Returns the number of children the row
	 * specified by 'iter' has. This is usually 0,
	 * as we only have a list and thus do not have
	 * any children to any rows. A special case is
	 * when 'iter' is NULL, in which case we need
	 * to return the number of top-level nodes,
	 * ie. the number of rows in our list.
	 */
	override int iterNChildren(TreeIter iter)
	{
		/* special case: if iter == NULL, return number of top-level rows */
		if ( iter is null )
			return numRows;

		return 0; /* otherwise, this is easy again for a list */
	}


	/*
	 * If the row specified by 'parent' has any
	 * children, set 'iter' to the n-th child and
	 * return TRUE if it exists, otherwise FALSE.
	 * A special case is when 'parent' is NULL, in
	 * which case we need to set 'iter' to the n-th
	 * row if it exists.
	 */
	override int iterNthChild(TreeIter iter, TreeIter parent, int n)
	{
		CustomRecord  *record;

		/* a list has only top-level rows */
		if( parent is null )
			return false;

		if( n >= numRows )
			return false;

		record = rows[n];

		if ( record == null || record.pos != n )
			throw new Exception("Invalid record");

		iter.stamp     = stamp;
		iter.userData  = record;

		return true;
	}


	/*
	 * Point 'iter' to the parent node of 'child'. As
	 * we have a list and thus no children and no
	 * parents of children, we can just return FALSE.
	 */
	override int iterParent(TreeIter iter, TreeIter child)
	{
		return false;
	}

	/*
	 * Empty lists are boring. This function can
	 * be used in your own code to add rows to the
	 * list. Note how we emit the "row-inserted"
	 * signal after we have appended the row
	 * internally, so the tree view and other
	 * interested objects know about the new row.
	 */
	void appendRecord(string name, uint yearBorn)
	{
		TreeIter      iter;
		TreePath      path;
		CustomRecord* newrecord;
		uint          pos;

		if ( name is null )
			return;

		pos = numRows;
		numRows++;

		newrecord = new CustomRecord;

		newrecord.name = name;
		newrecord.yearBorn = yearBorn;

		rows ~= newrecord;
		newrecord.pos = pos;

		/* inform the tree view and other interested objects
		 *  (e.g. tree row references) that we have inserted
		 *  a new row, and where it was inserted */

		path = new TreePath(pos);

		iter = new TreeIter();
		getIter(iter, path);

		rowInserted(path, iter);
	}
}
