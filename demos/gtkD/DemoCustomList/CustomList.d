module CustomList;

import glib.RandG;
import gobject.ObjectG;
import gobject.Value;
import gtk.TreeIter;
import gtk.TreePath;
import gtk.TreeModelIF;
import gtk.TreeModelT;
import gtk.Implement;
import gtk.ListStore;

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

class CustomList : ListStore
{
	GType[2] columnTypes;

	//mixin ImplementInterface!(GObject, GtkTreeModelIface);
	//mixin TreeModelT!(GtkTreeModel);

	public this()
	{
		columnTypes[0] = GType.STRING;
		columnTypes[1] = GType.UINT;

		super(columnTypes);
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
		TreeIter iter; append(iter);
		setValue(iter, 0, name);
		setValue(iter, 1, yearBorn);
	}
}
