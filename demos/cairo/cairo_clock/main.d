/**
 * main.d
 *
 * A gtkD main window that uses the clock widget from clock.d
 *
 * Based on the Gtkmm example by:
 * Jonathon Jongsma
 *
 * and the original GTK+ example by:
 * (c) 2005-2006, Davyd Madeley
 *
 * Authors:
 *   Jonas Kivi (D version)
 *   Jonathon Jongsma (C++ version)
 *   Davyd Madeley (C version)
 */

module main;

import clock;

import gio.Application : GioApplication = Application;
import gtk.Application;
import gtk.ApplicationWindow;

int main(string[] args)
{
	Application application;

	void activateClock(GioApplication app)
	{
		ApplicationWindow win = new ApplicationWindow(application);

		win.setTitle("gtkD Cairo Clock");
		win.setDefaultSize( 250, 250 );

		Clock c = new Clock();
		win.add(c);
		c.show();
		win.showAll();
	}

	application = new Application("org.gtkd.demo.cairo.clock", GApplicationFlags.FLAGS_NONE);
	application.addOnActivate(&activateClock);
	return application.run(args);
}

