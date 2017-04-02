module gtk.PopupMenu;

import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;
import gtk.EventBox;
import gtk.Menu;
import gtk.Label;
import gtk.ImageMenuItem;
import gtk.Widget;
import gtk.AccelGroup;
import gdk.Event;

class PopupMenuDemo : ApplicationWindow
{
	Menu menu;

	this(Application application)
	{
		super(application);
		setTitle("GtkD: Popup Menu");
		setDefaultSize(200, 200);

		auto eventBox = new EventBox();
		eventBox.add( new Label("Right click") );
		eventBox.addOnButtonPress(&onButtonPress);
		add(eventBox);

		menu = new Menu();
		menu.append( new ImageMenuItem(StockID.CUT, cast(AccelGroup)null) );
		menu.append( new ImageMenuItem(StockID.COPY, cast(AccelGroup)null) );
		menu.append( new ImageMenuItem(StockID.PASTE, cast(AccelGroup)null) );
		menu.append( new ImageMenuItem(StockID.DELETE, cast(AccelGroup)null) );
		menu.attachToWidget(eventBox, null);

		showAll();
	}

	public bool onButtonPress(Event event, Widget widget)
	{
		if ( event.type == EventType.BUTTON_PRESS )
		{
			GdkEventButton* buttonEvent = event.button;

			if ( buttonEvent.button == 3)
			{
				menu.showAll();
				menu.popup(buttonEvent.button, buttonEvent.time);

				return true;
			}
		}
		return false;
	}
}

int main(string[] args)
{
	auto application = new Application("org.gtkd.demo.popupmenu", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(delegate void(GioApplication app) { new PopupMenuDemo(application); });
	return application.run(args);
}
