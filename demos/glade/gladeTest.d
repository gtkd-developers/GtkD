module glade.textGlade;


import glade.Glade;
import gtk.GtkD;
import gtk.Window;
import gtk.Widget;
import gtk.Button;
import gtkc.gtktypes;

import std.stdio;
import std.c.process;

//import gobject.ObjectG;
//import gobject.Type;
/**
 * Usage ./gladeText /path/to/your/glade/file.glade
 * 
 */

int main(char[][] args)
{
	char[] gladefile;

	GtkD.init(args);
 
        if(args.length > 1)
        {
		writefln("Loading %s", args[1]);
		gladefile = args[1];
	}
        else
        {
		writefln("No glade file specified, using default \"gladeTest.glade\"");
		gladefile = "gladeTest.glade";
        }

	Glade g = new Glade(gladefile);

	if(g is null)
	{
	    	writefln("Oops, could not create Glade object, check your glade file ;)");
		exit(1);
	}
    
	Window w = cast(Window)g.getWidget("window1");
 
	if (w !is null) 
	{
		w.setTitle("This is a glade window");
		w.addOnHide( delegate void(Widget aux){ exit(0); } );

		Button b = cast(Button)g.getWidget("button1");
		if(b !is null)
		{
		    b.addOnClicked( delegate void(Button aux){ exit(0); } );
		}
	}
	else
	{
		writefln("No window?");
		exit(1);	
	}
        w.showAll();	

	GtkD.main();
	return 0;
	
}
