/**
 * clock.d
 *
 * A gtkD widget that implements a clock face
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

module clock;

version(Tango) import tango.io.Stdout;
else import std.stdio;

version(Tango) import tango.math.Math;
else import std.math;

version(Tango)
{
	import tango.time.Time;
	import tangoClock = tango.time.WallClock;
}
else version(D_Version2)
{
	import std.datetime;
}
else
{
	import std.date;
}

import glib.Timeout;

import cairo.Context;
import cairo.Surface;

import gtk.Widget;
import gtk.DrawingArea;

class Clock : DrawingArea
{
public:
	this()
	{
		//Attach our expose callback, which will draw the window.
		addOnDraw(&drawCallback);
	}

protected:
	//Override default signal handler:
	bool drawCallback(Context cr, Widget widget)
	{
		if ( m_timeout is null )
		{
			//Create a new timeout that will ask the window to be drawn once every second.
			m_timeout = new Timeout( 1000, &onSecondElapsed, false );
		}

		// This is where we draw on the window

		GtkAllocation size;

		getAllocation(size);

		// scale to unit square and translate (0, 0) to be (0.5, 0.5), i.e. the
		// center of the window
		cr.scale(size.width, size.height);
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

		version(Tango)
		{
			auto time = tangoClock.WallClock.now.time;

			double minutes = time.minutes * PI / 30;
			double hours = time.hours * PI / 6;
			double seconds = time.seconds * PI / 30;
		}
		else version(D_Version2)
		{
			SysTime lNow = std.datetime.Clock.currTime();

			// compute the angles of the indicators of our clock
			double minutes = lNow.minute * PI / 30; 
			double hours = lNow.hour * PI / 6; 
			double seconds= lNow.second * PI / 30; 
		}
		else
		{
			d_time lNow;
			string lNowString;

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
		}

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

		return true;
	}

	bool onSecondElapsed()
	{
		//force our program to redraw the entire clock once per every second.
		GtkAllocation area;
		getAllocation(area);

		queueDrawArea(area.x, area.y, area.width, area.height);
		
		return true;
	}

	double m_radius = 0.40;
	double m_lineWidth = 0.065;

	Timeout m_timeout;
}

