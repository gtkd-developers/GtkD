module DemoCustomList;

import CustomList;

import glib.RandG;
import gtk.Main;
import gtk.ScrolledWindow;
import gtk.MainWindow;
import gtk.TreeView;
import gtk.TreeViewColumn;
import gtk.CellRendererText;
import gtk.ListStore;

class CustomListWindow : MainWindow
{
	this()
	{
		super("GtkD - Custom TreeModel");
		setDefaultSize(200, 400);
		
		ScrolledWindow scrollwin = new ScrolledWindow();
		TreeView view = createViewAndModel();

		scrollwin.add(view);
		add(scrollwin);

		showAll();
	}

	TreeView createViewAndModel()
	{
		TreeViewColumn   col;
		CellRendererText renderer;
		CustomList       customlist;
		TreeView         view;

		customlist = new CustomList();
		fillModel(customlist);
		
		view = new TreeView(customlist);
		
		col = new TreeViewColumn();
		renderer  = new CellRendererText();
		col.packStart(renderer, true);
		col.addAttribute(renderer, "text", CustomListColumn.Name);
		col.setTitle("Name");
		view.appendColumn(col);

		col = new TreeViewColumn();
		renderer  = new CellRendererText();
		col.packStart(renderer, true);
		col.addAttribute(renderer, "text", CustomListColumn.YearBorn);
		col.setTitle("Year Born");
		view.appendColumn(col);

		return view;
	}

	void fillModel (CustomList customlist)
	{
		string[]  firstnames = [ "Joe", "Jane", "William", "Hannibal", "Timothy", "Gargamel" ];
		string[]  surnames   = [ "Grokowich", "Twitch", "Borheimer", "Bork" ];

		foreach (sname; surnames)
		{
			foreach (fname; firstnames)
			{
				customlist.appendRecord(fname ~" "~ sname, 1900 + (RandG.randomInt() % 100));
			}
		}
	}
}

void main (string[] arg)
{
	Main.init(arg);

	new CustomListWindow();

	Main.run();
}
