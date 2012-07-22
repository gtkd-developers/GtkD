module gtk.PopupMenu;

import gtk.Main;
import gtk.EventBox;
import gtk.MainWindow;
import gtk.Menu;
import gtk.Label;
import gtk.ImageMenuItem;
import gtk.Widget;
import gtk.AccelGroup;
import gdk.Event;

class ExampleWindow : MainWindow
{
	Menu menu;

	this()
	{
		super("GtkD: Popup Menu");
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

void main(string[] arg)
{
	Main.init(arg);

	new ExampleWindow();

	Main.run();
}
