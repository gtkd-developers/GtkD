module DemoCustomList;

import CustomList : CustomList, CustomListColumn;

import gio.Application : GioApplication = Application;
import glib.RandG;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.CellRendererText;
import gtk.ListStore;
import gtk.ScrolledWindow;
import gtk.TreeView;
import gtk.TreeViewColumn;

class CustomListWindow : ApplicationWindow
{
	this(Application application)
	{
		super(application);
		setTitle("GtkD - Custom TreeModel");
		setDefaultSize(300, 400);
		
		ScrolledWindow scrollwin = new ScrolledWindow();
		TreeView view = createViewAndModel();

		scrollwin.setChild(view);
		setChild(scrollwin);

		show();
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
		col.addAttribute(renderer, "text", 0);
		col.setTitle("Name");
		view.appendColumn(col);

		col = new TreeViewColumn();
		renderer  = new CellRendererText();
		col.packStart(renderer, true);
		col.addAttribute(renderer, "text", 1);
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

int main (string[] args)
{
	auto application = new Application("org.gtkd.demo.customlist", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app) { new CustomListWindow(application); });
	return application.run(args);
}
