module glade.textGlade;


import glade.Glade;
import gtk.Main;
import gtk.Window;
import gtk.Widget;
import gtk.Button;
import gtkc.gtktypes;

version(Tango){
    import tango.stdc.stdlib : exit;
    import tango.io.Stdout;
    import tango.text.Util;

    void writefln( string frm, ... ){
        string frm2 = substitute( frm, "%s", "{}" );
        Stdout( Stdout.layout.convert( _arguments, _argptr, frm2 )).newline;
    }
}
else{
    import std.stdio;
    import std.c.process;
}

//import gobject.ObjectG;
//import gobject.Type;
/**
 * Usage ./gladeText /path/to/your/glade/file.glade
 *
 */

int main(string[] args)
{
	string gladefile;

	Main.init(args);

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

	Main.run();
	return 0;

}
