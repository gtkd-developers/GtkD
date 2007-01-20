module gtk.DrawRect;

import gdk.Window;
import glib.ListG;
import glib.ListSG;
import glib.Source;


void main(char[][] args)
{
	(new Window(null)).drawRectangle(null, false, 0,0,0,0);
}

