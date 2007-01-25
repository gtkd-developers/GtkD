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

module gtkD.TestDrawingArea;

private import gtk.VBox;
private import gdk.Font;
private import pango.PgContext;
private import pango.PgLayout;
private import gdk.ImageGdk;
		
private import std.stdio;

private import std.math;

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

//private import event.Event;

	
/**
 * This tests the gtkD drawing area widget
 */
class TestDrawingArea : VBox
{

	this()
	{
		super(false,4);

		TestDrawing drawingArea = new TestDrawing();
		
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

		packStart(drawingArea,true,true,0);
		
		HBox hbox = new HBox(false,4);
		hbox.packStart(gcOptions,false,false,2);
		hbox.packStart(primOption,false,false,2);
		hbox.packStart(drawingArea.spin,false,false,2);
		hbox.packStart(drawingArea.backSpin,false,false,2);
		
		
		packStart(hbox, false, false, 0);
	}

	
	class TestDrawing : DrawingArea
	{

		private import gdk.Color;
		
		GdkFunction gcFunction = GdkFunction.INVERT;
		Color paintColor;
		Color black;

		int width;
		int height;
		
		bool buttonIsDown;
		
		char[] primitiveType;
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
			setSizeRequest(333,333);
			width = getWidth();
			height = getHeight();

			primitiveType = "Filled Arc";
			font = new PgFontDescription(PgFontDescription.fromString("Courier 48"));
			image = new Image("images\\gtkDIcon.xpm");
			scaledPixbuf = image.getPixbuf();
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

private import gtkc.gtktypes;		
		void onSizeAllocate(GtkAllocation* allocation, Widget widget)
		{
			width = allocation.width;
			height = allocation.height;
		}
		
		private import gdk.Event;
		
		public int onButtonPress(GdkEventButton* event, Widget widget)
		{
			writefln("button DOWN");
			if ( event.button == 1 )
			{
				writefln("Button 1 down");
				buttonIsDown = true;
				Drawable d = getDrawable();
				GC gc = new GC(d);
				gc.setForeground(new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0));
				gc.setFunction(gcFunction);
				
				drawPrimitive(gc, d, cast(int)event.x, cast(int)event.y); //event.getX(), event.getY());

				gc.setForeground(black);
				gc.setFunction(GdkFunction.COPY);
			}
			return false;
		}

		public int onButtonRelease(GdkEventButton* event, Widget widget)
		{
			writefln("button UP");
			if ( event.button == 1 )
			{
				writefln("Button 1 UP");
				buttonIsDown = false;
			}
			return false;
		}


		public bit mapCallback(Widget d, Event event)
		{
			//printf("MAP CALLBACK\n");
			return false;
		}
		
		/**
		 * This will be called from the expose event call back.
		 * \bug this is called on get or loose focus - review
		 */
		public int exposeCallback(GdkEventExpose* event, Widget widget)
		{
			//printf("testWindow.exposed ----------------------------- \n");
			drawPoints(getDrawable());
			return 1;
		}
		public bit noExposeCallback(Widget widget)
		{
			//printf("testWindow.noExposed ----------------------------- \n");
			return true;
		}


		public int onMotionNotify(GdkEventMotion* event, Widget widget)
		{
			//printf("testWindow.mouseMoved ----------------------------- \n");
			if ( buttonIsDown )
			{
				Drawable d = getDrawable();
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

		public bit mouseButtonReleaseCallback(Widget widget, GdkEventButton event)
		{
			//printf("testWindow.buttonReleased ----------------------------- \n");
			return true;
		}

		static int backSpinCount = 0;
		
		public void backSpinChanged(SpinButton spinButton)
		{
			
			writefln("backSpinChanged - entry %s", ++backSpinCount);
			drawPoints(getDrawable());
			GC gc = new GC(getDrawable());
			writefln("backSpinChanged - exit");
		}

		public void sizeSpinChanged(SpinButton spinButton)
		{
			int width = spinButton.getValueAsInt();
			scaledPixbuf = image.getPixbuf();
			
			float ww = width * scaledPixbuf.getWidth() / 30;
			float hh = width * scaledPixbuf.getHeight() / 30;
			
			scaledPixbuf = scaledPixbuf.scaleSimple(cast(int)ww, cast(int)hh, GdkInterpType.HYPER);
		}
					

		
		public void drawPrimitive(GC gc, Drawable d, int x, int y)
		{
			int width = spin.getValueAsInt();
			int height = width * 3 / 4;
			//writefln("primitiveType = %s", primitiveType);
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
					writefln("Text font = %s", font);
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
					scaledPixbuf.renderToDrawable(d.getDrawableStruct(), gc.getGCStruct(), 
						0, 0, x, y, 
						scaledPixbuf.getWidth(), scaledPixbuf.getHeight(), 
						GdkRgbDither.NONE, 0, 0
						);
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

			writefln("w,h = %s %s",width ,height);

			writefln("w,h = %s %s",width ,height);
			
			float dx = 256.0 / width;
			float dy = 256.0 / height ;
			float xx;
			float yy;
			while ( x < width || y <height )
			{
				xx = x * dx;
				yy = y * dy;
				color.set8(	cast(byte)xx,
							cast(byte)yy,
							cast(byte)(sqrt((xx*xx)+(yy*yy))));
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
			writefln("gcOptions = %s", comboBox.getActiveText());
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

