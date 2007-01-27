/**
 * main.d
 *
 * A Duit main window that uses the clock widget from clock.d
 *
 * Based on the Gtkmm example by:
 * Jonathon Jongsma
 *
 * and the original GTK+ example by:
 * (c) 2005-2006, Davyd Madeley
 *
 * Authors:
 *   Joonas Kiviharju (D version)
 *   Jonathon Jongsma (C++ version)
 *   Davyd Madeley (C version)
 */

/*
 * from http://www.dsource.org/forums/viewtopic.php?t=1666
 * satelliittipupu wrote:
 * You can use it for Duit demos!
 */

module cairo.main;

private import cairo.clock;

private import gtk.MainWindow;
private import gtk.GtkD;

void main(char[][] args)
{
	GtkD.init(args);
	
	MainWindow win = new MainWindow("Duit Cairo Clock");
	
	win.setDefaultSize( 250, 250 );

	Clock c = new Clock();
	win.add(c);
	c.show();
	win.showAll();

	GtkD.main();
}
