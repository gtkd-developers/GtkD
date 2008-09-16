/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module TestDrawingArea;

//debug = trace;

private import gtk.VBox;
private import gdk.Font;
private import pango.PgContext;
private import pango.PgLayout;
private import gdk.ImageGdk;

version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;

version(Tango) private import tango.math.Math;
else private import std.math;

private import gtk.Widget;
private import gtk.MenuItem;
private import gtk.ComboBox;
private import gtk.Menu;
private import gtk.Adjustment;
private import gtk.HBox;
private import gdk.Pixbuf;
//private import gdk.Point;
private import gdk.Color;
private import gdk.Drawable;
private import gdk.GC;
private import pango.PgFontDescription;

private import gtk.DrawingArea;
private import gtk.Image;
private import gtk.SpinButton;

private import gdk.Event;

private import gdk.Color;

//private import event.Event;


/**
 * This tests the gtkD drawing area widget
 */
class TestDrawingArea : VBox
{

	this()
	{
		debug(Tango) Stdout("TestDrawingArea.this() 1").newline;
		super(false,4);

		debug(Tango) Stdout("TestDrawingArea.this() 2").newline;
		TestDrawing drawingArea = new TestDrawing();

		debug(Tango) Stdout("TestDrawingArea.this() 3").newline;

		ComboBox gcOptions = new ComboBox();
		gcOptions.appendText("GC COPY");
		gcOptions.appendText("GC INVERT");
		gcOptions.appendText("GC XOR");
		gcOptions.appendText("GC CLEAR");
		gcOptions.appendText("GC AND");
		gcOptions.appendText("GC AND_REVERSE");
		gcOptions.appendText("GC AND_INVERT");
		gcOptions.appendText("GC NOOP");
		gcOptions.appendText("GC OR");
		gcOptions.appendText("GC EQUIV");
		gcOptions.appendText("GC OR_REVERSE");
		gcOptions.appendText("GC COPY_INVERT");
		gcOptions.appendText("GC OR_INVERT");
		gcOptions.appendText("GC NAND");
		gcOptions.appendText("GC NOR");
		gcOptions.appendText("GC SET");
		gcOptions.setActive(1);
		gcOptions.addOnChanged(&drawingArea.onCGOptionsChanged);

		debug(Tango) Stdout("TestDrawingArea.this() 4").newline;

		ComboBox primOption = new ComboBox();
		primOption.appendText("Filled Arc");
		primOption.appendText("Arc");
		primOption.appendText("Line");
		primOption.appendText("Point");
		primOption.appendText("Rectangle");
		primOption.appendText("Filled Rectangle");
		primOption.appendText("Text");
		primOption.appendText("Pango text");
		primOption.appendText("Image");
		primOption.appendText("Polygon");
		primOption.setActive(0);
		primOption.addOnChanged(&drawingArea.onPrimOptionChanged);

		debug(Tango) Stdout("TestDrawingArea.this() 5").newline;

		packStart(drawingArea,true,true,0);

		HBox hbox = new HBox(false,4);
		hbox.packStart(gcOptions,false,false,2);
		hbox.packStart(primOption,false,false,2);
		hbox.packStart(drawingArea.spin,false,false,2);
		hbox.packStart(drawingArea.backSpin,false,false,2);

		debug(Tango) Stdout("TestDrawingArea.this() 6").newline;

		packStart(hbox, false, false, 0);

		debug(Tango) Stdout("TestDrawingArea.this() END").newline;
	}


	class TestDrawing : DrawingArea
	{


		GdkFunction gcFunction = GdkFunction.INVERT;
		Color paintColor;
		Color black;

		int width;
		int height;

		bool buttonIsDown;

		string primitiveType;
		PgFontDescription font;
		Image image;
		Pixbuf scaledPixbuf;

		SpinButton spin;
		SpinButton backSpin;
		static GdkPoint[] polygonStar = [
			{0,4},
			{1,1},
			{4,0},
			{1,-1},
			{0,-4},
			{-1,-1},
			{-4,0},
			{-1,1}
			];

		this()
		{
			debug(Tango) Stdout("TestDrawing.this() 1").newline;

			setSizeRequest(333,333);
			width = getWidth();
			height = getHeight();

			debug(Tango) Stdout("TestDrawing.this() 2").newline;

			primitiveType = "Filled Arc";
			font = PgFontDescription.fromString("Courier 48");

			image = new Image("../../../images/gtkDlogo_a_small.png");
			scaledPixbuf = image.getPixbuf();
			if (scaledPixbuf is null)
			{
				version(Tango) Stdout("\nFailed to load image gtkDlogo_a_small.png").newline;
				else printf("\nFailed to load image file gtkDlogo_a_small.png\n");
			}

			paintColor = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
			black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);

			spin = new SpinButton(new Adjustment(30, 1, 400, 1, 10, 10),1,0);
			sizeSpinChanged(spin);
			spin.addOnValueChanged(&sizeSpinChanged);
			backSpin = new SpinButton(new Adjustment(5, 4, 100, 1, 10, 10),1,0);
			backSpin.addOnValueChanged(&backSpinChanged);



			addOnExpose(&exposeCallback);
//			addOnMap(&mapCallback);
			addOnMotionNotify(&onMotionNotify);
			addOnSizeAllocate(&onSizeAllocate);
			addOnButtonPress(&onButtonPress);
			addOnButtonRelease(&onButtonRelease);
		}

		void onSizeAllocate(GtkAllocation* allocation, Widget widget)
		{
			width = allocation.width;
			height = allocation.height;
		}


		public bool onButtonPress(GdkEventButton* event, Widget widget)
		{
			debug(trace) version(Tango) Stdout("button DOWN").newline;
			else writefln("button DOWN");
			if ( event.button == 1 )
			{
				debug(trace) version(Tango) Stdout("Button 1 down").newline;
				else writefln("Button 1 down");
				buttonIsDown = true;
				Drawable d = getWindow();
				GC gc = new GC(d);
				gc.setForeground(new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0));
				gc.setFunction(gcFunction);

				drawPrimitive(gc, d, cast(int)event.x, cast(int)event.y); //event.getX(), event.getY());

				gc.setForeground(black);
				gc.setFunction(GdkFunction.COPY);
			}
			return false;
		}

		public bool onButtonRelease(GdkEventButton* event, Widget widget)
		{
			debug(trace) version(Tango) Stdout("button UP").newline;
			else writefln("button UP");
			if ( event.button == 1 )
			{
				debug(trace) version(Tango) Stdout("button 1 UP").newline;
				else writefln("Button 1 UP");
				buttonIsDown = false;
			}
			return false;
		}


		public bool mapCallback(Widget d, Event event)
		{
			//printf("MAP CALLBACK\n");
			return false;
		}

		/**
		 * This will be called from the expose event call back.
		 * \bug this is called on get or loose focus - review
		 */
		public bool exposeCallback(GdkEventExpose* event, Widget widget)
		{
			//printf("testWindow.exposed ----------------------------- \n");
			drawPoints(getWindow());
			return true;
		}
		public bool noExposeCallback(Widget widget)
		{
			//printf("testWindow.noExposed ----------------------------- \n");
			return true;
		}


		public bool onMotionNotify(GdkEventMotion* event, Widget widget)
		{
			//printf("testWindow.mouseMoved ----------------------------- \n");
			if ( buttonIsDown )
			{
				Drawable d = getWindow();
				GC gc = new GC(d);
				gc.setForeground(paintColor);
				gc.setFunction(gcFunction);

				drawPrimitive(gc, d, cast(int)event.x, cast(int)event.y);
				//d.drawPoint(event.getX(),event.getY());
				//d.drawArc(true,event.getX()-2,event.getY()-2,4,4,0,64*360);
				//d.drawRectangle(true,event.getX()-2,event.getY()-2,4,4);

				gc.setForeground(black);
				gc.setFunction(GdkFunction.COPY);
			}
			return true;
		}

		public bool mouseButtonReleaseCallback(Widget widget, GdkEventButton event)
		{
			//printf("testWindow.buttonReleased ----------------------------- \n");
			return true;
		}

		static int backSpinCount = 0;

		public void backSpinChanged(SpinButton spinButton)
		{

			debug(trace) version(Tango) Stdout.format("backSpinChanged - entry {}", ++backSpinCount).newline;
			else writefln("backSpinChanged - entry %s", ++backSpinCount);
			drawPoints(getWindow());
			GC gc = new GC(getWindow());
			debug(trace) version(Tango) Stdout("backSpinChanged - exit").newline;
			else writefln("backSpinChanged - exit");
		}

		public void sizeSpinChanged(SpinButton spinButton)
		{
			if ( !(scaledPixbuf is null))
			{
				int width = spinButton.getValueAsInt();
				scaledPixbuf = image.getPixbuf();

				float ww = width * scaledPixbuf.getWidth() / 30;
				float hh = width * scaledPixbuf.getHeight() / 30;

				scaledPixbuf = scaledPixbuf.scaleSimple(cast(int)ww, cast(int)hh, GdkInterpType.HYPER);
			}
		}



		public void drawPrimitive(GC gc, Drawable d, int x, int y)
		{
			int width = spin.getValueAsInt();
			int height = width * 3 / 4;
			debug(trace) version(Tango) Stdout.format("primitiveType = {}", primitiveType).newline;
			else writefln("primitiveType = %s", primitiveType);
			switch ( primitiveType )
			{
				case "Arc":
					d.drawArc(gc, false,x-width/2,y-width/2,width,width,0,64*360);
					break;

				case "Filled Arc":
					d.drawArc(gc, true,x-width/4,y-width/4,width/2,width/2,0,64*360);
					break;

				case "Line":
					d.drawLine(gc, x, y, x+width, y);
					break;

				case "Point":
					d.drawPoint(gc, x, y);
					break;

				case "Rectangle":
					d.drawRectangle(gc, false, x-width/2, y-width/4, width, height);
					break;

				case "Filled Rectangle":
					d.drawRectangle(gc, true, x-width/2, y-width/4, width, height);
					break;

				case "Text":
					Font font = new Font("FreeMono 12");
					debug(trace) version(Tango) Stdout.format("Text font = {}", font).newline;
					else writefln("Text font = %s", font);
					d.drawString( font, gc,x, y, "gtkD toolkit");
					break;

				case "Pango text":
					//PgContext pc = getPangoContext();
					//PgLayout l = new PgLayout(pc);
					PgLayout l = createPangoLayout("GtkD with D");
					//l.setText("GtkD with D");
					//PgFontDescription fd = l.getFontDescription();
					PgFontDescription fd = new PgFontDescription("Sans", width);
					l.setFontDescription(fd);

					d.drawLayout(gc, x,y,l);
					break;

				case "Image":
					if ( !(scaledPixbuf is null))
					{
						scaledPixbuf.renderToDrawable( d, gc,
						//d.getDrawableStruct(), gc.getGCStruct(),
							0, 0, x, y,
							scaledPixbuf.getWidth(), scaledPixbuf.getHeight(),
							GdkRgbDither.NONE, 0, 0
							);
					}
					break;

				case "Polygon":
					GdkPoint[] pol1;
					pol1.length = polygonStar.length;
					for ( int scale = 10 ; scale<= 300; scale+=15)
					{
						foreach(int i , inout GdkPoint p ; polygonStar)
						{
							pol1[i].x = p.x*scale/2+x;
							pol1[i].y = p.y*scale/2+y;
						}
						d.drawPolygon(gc, true , pol1);
					}
					break;

				default:
					d.drawArc(gc, true,x-2,y-2,4,4,0,64*360);
					break;
			}
		}

		private void drawPoints(Drawable d)
		{
			int square = backSpin.getValueAsInt();
			int totalcount = 0;
			int count = 0;
			Color color = new Color();
			GC gc = new GC(d);
			int width = this.width;
			int height = this.height;
			int x = 0;
			int y = 0;

			debug(trace) version(Tango) Stdout.format("w,h = {} {}",width ,height).newline;
			else writefln("w,h = %s %s",width ,height);

			debug(trace) version(Tango) Stdout.format("w,h = {} {}",width ,height).newline;
			else writefln("w,h = %s %s",width ,height);

			float dx = 256.0 / width;
			float dy = 256.0 / height ;
			float xx;
			float yy;
			while ( x < width || y <height )
			{
				xx = x * dx;
				yy = y * dy;
				color.set8(	cast(ubyte)xx,
							cast(ubyte)yy,
							cast(ubyte)(sqrt((xx*xx)+(yy*yy))));
				gc.setForeground(color);
				if ( square > 1 )
				{
					//d.drawPoint(gc, x,y);
					d.drawRectangle(gc, true,x,y,square,square);
					//d.foo();
					//d.drawArc(gc, 1, 10, 10, 100, 100, 45, 60);
				}
				else
				{
					d.drawPoint(gc, x,y);
				}
				x +=square;
				if  ( x > width)
				{
					if ( y>height)
					{
						//y=0;
					}
					else
					{
						x = 0;
						y+=square;
					}
				}
				++totalcount;
			}
			gc.setForeground(black);
			delete color;
		}

		void onCGOptionsChanged(ComboBox comboBox)
		{
			debug(trace) version(Tango) Stdout.format("gcOptions = {}", comboBox.getActiveText()).newline;
			else writefln("gcOptions = %s", comboBox.getActiveText());
			switch ( comboBox.getActiveText() )
			{
				case "GC COPY": gcFunction = GdkFunction.COPY; break;
				case "GC INVERT": gcFunction = GdkFunction.INVERT; break;
				case "GC XOR": gcFunction = GdkFunction.XOR; break;
				case "GC CLEAR": gcFunction = GdkFunction.CLEAR; break;
				case "GC AND": gcFunction = GdkFunction.AND; break;
				case "GC AND_REVERSE": gcFunction = GdkFunction.AND_REVERSE; break;
				case "GC AND_INVERT": gcFunction = GdkFunction.AND_INVERT; break;
				case "GC NOOP": gcFunction = GdkFunction.NOOP; break;
				case "GC OR": gcFunction = GdkFunction.OR; break;
				case "GC EQUIV": gcFunction = GdkFunction.EQUIV; break;
				case "GC OR_REVERSE": gcFunction = GdkFunction.OR_REVERSE; break;
				case "GC COPY_INVERT": gcFunction = GdkFunction.COPY_INVERT; break;
				case "GC OR_INVERT": gcFunction = GdkFunction.OR_INVERT; break;
				case "GC NAND": gcFunction = GdkFunction.NAND; break;
				case "GC NOR": gcFunction = GdkFunction.NOR; break;
				case "GC SET": gcFunction = GdkFunction.SET; break;
				default: gcFunction = GdkFunction.INVERT; break;
			}
		}

		void onPrimOptionChanged(ComboBox comboBox)
		{
			primitiveType = comboBox.getActiveText();
		}

//
//		void primitive(MenuItem item)
//		{
//			printf("TestDrawing.primitive item command = %.*s\n", item.getActionCommand().toString());
//			primitiveType.set(item.getActionCommand().dup);
//		}

	}

}

