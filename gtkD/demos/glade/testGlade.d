module glade.textGlade;


import glade.Glade;
import gtk.GtkD;
import gtk.Window;
import gtk.Widget;
import gtkc.gtktypes;

import std.stdio;
import std.c.process;

import gobject.ObjectG;
import gobject.Type;
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
	 
 
	if (w && cast(Window)w ) {
		(cast(Window)w).setTitle("This is a glade window");
		//uint t = g_type_from_instance(w);
		//writefln("wintype=%d %s", t , Type.name(cast(GType)t));
	} else {
		writefln("no window?");
		exit(1);
		
	}
	
	
	GtkD.main();
	return 0;
	
}