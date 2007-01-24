/**
 * clock.d
 *
 * A Duit widget that implements a clock face
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
 
module cairo.clock;

import std.stdio;

private import std.math;
private import std.date;

private import gtk.GtkD;

private import gtk.Timeout;

private import cairoLib.Cairo;
private import cairoLib.Surface;
private import cairoLib.cairoLibtypes;

private import gtk.Widget;
private import gdk.Drawable;
private import gdk.Window;
private import gdk.Rectangle;
private import gdk.GdkCairo;
private import gtk.DrawingArea;

class Clock : public DrawingArea
{
    public:
        this()
	{
		//Attach our expose callback, which will draw the window.
		addOnExpose(&exposeCallback);

		//Create a new timeout that will ask the window to be drawn once every second.
		m_timeout = new Timeout( 1000, &onSecondElapsed, false );
	
	}

    protected:
        //Override default signal handler:
        int exposeCallback(GdkEventExpose* event, Widget widget)
	{
		// This is where we draw on the window
		
		Drawable dr = getDrawable();

		int width;
		int height;

		dr.drawableGetSize(&width, &height);

		Cairo cr = GdkCairo.create( dr );
		
		if (event)
		{
			// clip to the area indicated by the expose event so that we only redraw
			// the portion of the window that needs to be redrawn
			cr.rectangle(event.area.x, event.area.y,
				event.area.width, event.area.height);
			cr.clip();
		}
			
		// scale to unit square and translate (0, 0) to be (0.5, 0.5), i.e. the
		// center of the window
		cr.scale(width, height);
		cr.translate(0.5, 0.5);
		cr.setLineWidth(m_lineWidth);
		
		cr.save();
			cr.setSourceRgba(0.3, 0.6, 0.2, 0.9);   // brownish green
			cr.paint();
		cr.restore();
		
		cr.arc(0, 0, m_radius, 0, 2 * PI);
		
		cr.save();
			cr.setSourceRgba(0.0, 0.0, 0.0, 0.8);
			cr.fillPreserve();
		cr.restore();
		
		cr.save();
			cr.setSourceRgba(1.0, 1.0, 1.0, 1.0);
			cr.setLineWidth( m_lineWidth * 1.7);
			cr.strokePreserve();
			cr.clip();
		cr.restore();
		

		//clock ticks

		for (int i = 0; i < 12; i++)
		{
			double inset = 0.07;
			
			cr.save();
				cr.setSourceRgba(1.0, 1.0, 1.0, 1.0);
				cr.setLineWidth( m_lineWidth * 0.25);
				cr.setLineCap(cairo_line_cap_t.ROUND);
			
				if (i % 3 != 0)
				{
					inset *= 1.2;
					cr.setLineWidth( m_lineWidth * 0.5 );
				}
			
				cr.moveTo(
					(m_radius - inset) * cos (i * PI / 6),
					(m_radius - inset) * sin (i * PI / 6));
				cr.lineTo (
					m_radius * cos (i * PI / 6),
					m_radius * sin (i * PI / 6));
				cr.stroke();
			cr.restore(); // stack-pen-size
		}

		
		d_time lNow;
		char[] lNowString;
		
		// Grab the date and time relative to UTC
		lNow = std.date.getUTCtime();
		// Convert this into the local date and time for display.
		lNowString = std.date.toString(lNow);

		Date timeinfo;
		timeinfo.parse(lNowString);
		
		// compute the angles of the indicators of our clock
		double minutes = timeinfo.minute * PI / 30;
		double hours = timeinfo.hour * PI / 6;
		double seconds= timeinfo.second * PI / 30;

		//writefln(timeinfo.hour, ".", timeinfo.minute, ".", timeinfo.second);
		
		cr.save();
			cr.setLineCap(cairo_line_cap_t.ROUND);
			
			// draw the seconds hand
			cr.save();
				cr.setLineWidth(m_lineWidth / 3);
				cr.setSourceRgba(0.7, 0.7, 0.85, 0.8); // blueish gray
				cr.moveTo(0, 0);
				cr.lineTo(sin(seconds) * (m_radius * 0.8), 
					-cos(seconds) * (m_radius * 0.8));
				cr.stroke();
			cr.restore();
			
			// draw the minutes hand
			//cr.setSourceRgba(0.117, 0.337, 0.612, 0.9);   // blue
			cr.setSourceRgba(0.712, 0.337, 0.117, 0.9);   // red
			cr.moveTo(0, 0);
			cr.lineTo(sin(minutes + seconds / 60) * (m_radius * 0.7), 
				-cos(minutes + seconds / 60) * (m_radius * 0.7));
			cr.stroke();
			
			// draw the hours hand
			cr.setSourceRgba(0.337, 0.612, 0.117, 0.9);   // green
			cr.moveTo(0, 0);
			cr.lineTo(sin(hours + minutes / 12.0) * (m_radius * 0.4), 
				-cos(hours + minutes / 12.0) * (m_radius * 0.4));
			cr.stroke();
		cr.restore();
		
		// draw a little dot in the middle
		cr.arc(0, 0, m_lineWidth / 3.0, 0, 2 * PI);
		cr.fill();
	
		delete cr;

		return 1;
	}

	bool onSecondElapsed()
	{
		// force our program to redraw the entire clock.
		
		/*
		Drawable dr = getDrawable();
		Window win = cast(Window); //this combinations crashes for some reason?

		Drawable dr = getDrawable();
		Window win = new Window( cast(Window)dr ); //and this one doesn't even compile, as there's no constructor like this.
		*/

		//So, we need a new function that could be like this:
		//It's the same as getDrawable but it returns a window from GtkWidget.window.
		//We need it for the invalidateRect which isn't found in a GdkDrawable.
		Window win = getWindow();
		
		if(win)
		{

			int width;
			int height;
		
			win.drawableGetSize(&width, &height);
			
			//I think this should be also made possible:
			//width = win.getWidth();
			//height = win.getHeight();
		
			//And there should be a constructor like: Rectangle( int x, int y, int width, int height );
			//because at the moment we have to do this to use a Rectangle, and that it needed for
			//invalidateRect. The easiest way would be a new invalidate( int x, int y, int width, int height)
			//that would do everything that we're doing here. And maybe also invalidateAll();
			GdkRectangle* grect = new GdkRectangle();
	
			grect.x = 0;
			grect.y = 0;
			grect.width = width;
			grect.height = height;
	
			//Rectangle r = new Rectangle(0, 0, width, height);
			Rectangle r = new Rectangle(grect);
	
			win.invalidateRect(r, false);
		}
		else writefln("The Gdk.Window doesn't exist. Something went wrong in clock.d onSecondsElapsed()");
	
		return true;
		
	}

        double m_radius = 0.40;
        double m_lineWidth = 0.065;
	
	Timeout m_timeout;
}



