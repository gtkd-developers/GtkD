module text_image;

version(Tango) import tango.io.Stdout;
else import std.stdio;

version(Tango) import tango.math.Math;
else import std.math;

import gtk.Main;
import gtk.MainWindow;

import cairo.FontOption;
import cairo.Context;
import cairo.Surface;
import cairo.ImageSurface;

import gtk.Widget;
import gtk.DrawingArea;

class CairoText : DrawingArea
{
public:
	this()
	{
		//doesn't work, and isn't even the desired API:
		//image = cast(ImageSurface) ImageSurface.createFromPng("gtkD_logo.png");
		image = ImageSurface.createFromPng("gtkD_logo.png");
	
		//Attach our expose callback, which will draw the window.
		addOnDraw(&drawCallback);
	}

protected:
	//Override default signal handler:
	bool drawCallback(Context cr, Widget widget)
	{
		// This is where we draw on the window
		cr.translate(10, 10);
		cr.setLineWidth(m_lineWidth);

		cr.save();
			cr.setSourceRgba(0.1, 0.2, 0.1, 1.0);
			cr.paint();
		cr.restore();

		cr.rectangle( 0.0, 0.0, 230.0, 230.0 );

		cr.save();
			cr.setSourceRgba(0.3, 0.6, 0.3, 0.8);
			cr.fillPreserve();
		cr.restore();

		cr.save();
			cr.setSourceRgba(1.0, 1.0, 1.0, 1.0);
			cr.setLineWidth( m_lineWidth * 1.7);
			cr.strokePreserve();
			cr.clip();
		cr.restore();
		
		//FontOption isn't necessary to get
		//text drawn with Cairo
		
		//gtkD API isn't ready here...
		FontOption font_options = FontOption.create();
		font_options.setHintStyle(cairo_hint_style_t.NONE);
		font_options.setHintMetrics(cairo_hint_metrics_t.OFF);
		font_options.setAntialias(cairo_antialias_t.GRAY);

		cr.setFontOptions(font_options);

		//Text rendering
		cr.save();

			cr.moveTo(75.0, 75.0);
			cr.setSourceRgba(1.0, 1.0, 1.0, 0.5);
			
			for( int i = 0; i < 10; i++ )
			{
				cr.save();
					cr.rotate(2.0 * PI * i / 10);
					cr.showText("Cairo");
				cr.restore();
			}
		
			cr.moveTo(30.0, 100.0);
			cr.selectFontFace("Bitstream Vera Sans", cairo_font_slant_t.NORMAL,
						cairo_font_weight_t.NORMAL);
			cr.setFontSize(12);
			cr.setSourceRgb(0.0, 0.0, 0.0);
			cr.showText("You can draw an image");
			cr.moveTo(30.0, 115.0);
			cr.showText("and write some simple text");
			
			cr.moveTo(30.0, 140.0);
			cr.selectFontFace("Bitstream Vera Sans", cairo_font_slant_t.ITALIC,
						cairo_font_weight_t.BOLD);
			cr.setFontSize(22);
			cr.setSourceRgb(1.0, 1.0, 1.0);
			cr.showText("with Cairo.");
			
			cr.selectFontFace("Bitstream Vera Sans", cairo_font_slant_t.NORMAL,
						cairo_font_weight_t.NORMAL);
			cr.setFontSize(12);
				
		cr.restore();
		
		//Image rendering
		
		cr.save();
			
			cr.setSourceSurface( image, 0, 0 );
			cr.paint();
			//delete image;
		cr.restore();

		return true;
	}

	double m_radius = 100.0;
	double m_lineWidth = 1.0;
	
	//ImageSurface image; //doesn't work with createFromPng.
	Surface image;
}


void main(string[] args)
{
	Main.init(args);
	
	MainWindow win = new MainWindow("gtkD Cairo text & image");
	
	win.setDefaultSize( 250, 250 );

	CairoText c = new CairoText();
	win.add(c);
	c.show();
	win.showAll();

	Main.run();
}


