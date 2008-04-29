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

import gtk.MainWindow;
import gtk.Main;

void main(string[] args)
{
	Main.init(args);
	
	MainWindow win = new MainWindow("gtkD Cairo Clock");
	
	win.setDefaultSize( 250, 250 );

	Clock c = new Clock();
	win.add(c);
	c.show();
	win.showAll();

	Main.run();
}

