module gtk.PopupMenu;

import gio.Menu;
import gio.MenuItem;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.GestureClick;
import gtk.Label;
import gtk.PopoverMenu;
import std.conv;

class PopupMenuDemo : ApplicationWindow
{
	Menu menu;
	PopoverMenu popupMenu;
	GestureClick gesture;

	this(Application application)
	{
		super(application);
		setTitle("GtkD: Popup Menu");
		setDefaultSize(200, 200);

		setChild( new Label("Right click") );

		gesture = new GestureClick();
		gesture.setButton(3);
		gesture.addOnPressed(&onButtonPress);
		addController(gesture);
		
		menu = new Menu();
		menu.append("Cut", null);
		menu.append("Copy", null);
		menu.append("Paste", null);
		menu.append("Delete", null);

		popupMenu = new PopoverMenu(menu);
		popupMenu.setParent(this);
		popupMenu.setHasArrow(false);

		show();
	}

	public void onButtonPress(int nPress, double x, double y, GestureClick _)
	{
		GdkRectangle pos = GdkRectangle(to!int(x), to!int(y), 1, 1);

		popupMenu.setPointingTo(&pos);
		popupMenu.popup();
	}
}

int main(string[] args)
{
	auto application = new Application("org.gtkd.demo.popupmenu", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(_) { new PopupMenuDemo(application); });
	return application.run(args);
}
