module glade.textGlade;


import glade.Glade;
import gtk.GtkD;
import gtk.Window;
import gtk.Widget;
import gtkc.gtktypes;

import std.stdio;
import std.c.process;


/**
 * Usage ./gladeText /path/to/your/glade/file.glade
 * 
 * ASsumes that you have 
 */

int main(char[][] args)
{
	GtkD.init(args);
 
	writefln("loading %s", args[1]);
	Glade g = new Glade(args[1]);
    
	Widget w = g.getWidget("window1");
	if (w) {
		(new Window(w)).setTitle("This is a glade window");
	}
	writefln("no window?");
	exit(1);
	
	GtkD.main();
	return 0;
	
}