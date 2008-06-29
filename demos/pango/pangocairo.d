module pangocairo;

import gdk.Drawable;

import gtk.DrawingArea;
import gtk.Main;
import gtk.MainWindow;
import gtk.Widget;

import cairo.Context;
import cairo.ImageSurface;

import pango.PgCairo;
import pango.PgLayout;
import pango.PgFontDescription;

version(Tango)
{
	import tango.io.Stdout;
	import tango.math.Math;
}
else
{
	import std.stdio;
	import std.math;
}

class PangoText : DrawingArea
{
	int m_radius = 150;
	int m_nWords = 10;
	string m_font = "Sans Bold 27";

	public this()
	{
		addOnExpose(&exposeCallback);
	}

	//Override default signal handler:
	protected int exposeCallback(GdkEventExpose* event, Widget widget)
	{
		// This is where we draw on the window
		Drawable dr = getDrawable();
		drawText( new Context(dr) );

		return 1;
	}

	public void drawText (Context cr)
	{
		PgLayout layout;
		PgFontDescription desc;

		// Center coordinates on the middle of the region we are drawing
		cr.translate(m_radius, m_radius);

		// Create a PangoLayout, set the font and text
		layout = PgCairo.createLayout(cr);
	  
		layout.setText("Text");
		desc = PgFontDescription.fromString(m_font);
		layout.setFontDescription(desc);
		desc.free();

		// Draw the layout m_nWords times in a circle
		for (int i = 0; i < m_nWords; i++)
		{
			int width, height;
			double angle = (360. * i) / m_nWords;
			double red;

			cr.save();

			/* Gradient from red at angle == 60 to blue at angle == 240 */
			red   = (1 + cos ((angle - 60) * PI / 180.)) / 2;
			cr.setSourceRgb(red, 0, 1.0 - red);

			cr.rotate(angle * PI / 180.);
		
			/* Inform Pango to re-layout the text with the new transformation */
			PgCairo.updateLayout(cr, layout);
		
			layout.getSize(&width, &height);
			cr.moveTo( -(cast(double)width / PANGO_SCALE) / 2, - m_radius );
			PgCairo.showLayout(cr, layout);

			cr.restore();
		}
	}
}


void main(string[] args)
{
	Main.init(args);
	
	MainWindow win = new MainWindow("gtkD Pango text");
	
	win.setDefaultSize( 300, 300 );

	PangoText p = new PangoText();
	win.add(p);
	p.show();
	win.showAll();

	Main.run();
}
