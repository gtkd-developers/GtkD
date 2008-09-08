module gtk.DrawRect;

import gtk.Main;
import gtk.MainWindow;
import gtk.Widget;
import gdk.GC;
import gdk.Drawable;
import gdk.Color;

void main (string[] args)
{
	Main.init(args);
	MainWindow window = new MainWindow("Gtkd draw rect example");
	
	window.addOnHide(
		delegate void (in Widget whatever)
		{
			Main.exit(0);
		}
	);

	window.addOnExpose(
		delegate bool (GdkEventExpose * whatever_II, in Widget widget)
		{
			Drawable da = widget.getDrawable();
			da.drawRectangle(	gcFgColor(da, 0, 255, 255), true,
								0, 0, window.getHeight(), window.getWidth()
			);
			return true;
		}
	);

	window.showAll();
	Main.run();
}

GC gcFgColor (in Drawable da, int r, int g, int b)
{
	if (r<0) r=0;	if (r>255) r=255;
	if (g<0) r=0;	if (g>255) g=255;
	if (b<0) r=0;	if (b>255) b=255;

	GC rt = new GC(da);
	rt.setRgbFgColor( new Color(cast(ubyte)r, cast(ubyte)g, cast(ubyte)b) );

	return rt;
}
