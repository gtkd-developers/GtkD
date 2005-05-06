/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module test.TestDrawingArea;

private import std.math;
private import dui.VBox;

private import dui.Widget;
private import dui.MenuItem;
private import dui.OptionMenu;
private import dui.Menu;
private import dui.Adjustment;
private import dui.HBox;
private import ddi.Pixbuf;
private import ddi.Color;
private import ddi.Drawable;
private import ddi.GC;
private import dango.Font;	

private import dui.DrawingArea;
private import dui.Image;
private import dui.SpinButton;

private import event.Event;
private import def.Types;

private import dool.String;
/**
 * This tests the DUI drawing area widget
 */
class TestDrawingArea : VBox
{
	debug(status)
	{
		int complete(){return 100;}
		char[] gtkName(){return "";}
		char[] description(){return "";}
		char[] author(){return "Antonio";}
	}

	this()
	{
		
		//debug(1)
		//{
		//	printf("instantiating TestDrawing\n");
		//}

		super(false,4);

		TestDrawing drawingArea = new TestDrawing();
		
		OptionMenu gcOptions = new OptionMenu();
		Menu menu = new Menu();
		menu.append(new MenuItem("GC COPY",&drawingArea.gcToCOPY));
		menu.append(new MenuItem("GC INVERT",&drawingArea.gcToINVERT));
		menu.append(new MenuItem("GC XOR",&drawingArea.gcToXOR));
		menu.append(new MenuItem("GC CLEAR",&drawingArea.gcToCLEAR));
		menu.append(new MenuItem("GC AND",&drawingArea.gcToAND));
		menu.append(new MenuItem("GC AND_REVERSE",&drawingArea.gcToAND_REVERSE));
		menu.append(new MenuItem("GC AND_INVERT",&drawingArea.gcToAND_INVERT));
		menu.append(new MenuItem("GC NOOP",&drawingArea.gcToNOOP));
		menu.append(new MenuItem("GC OR",&drawingArea.gcToOR));
		menu.append(new MenuItem("GC EQUIV",&drawingArea.gcToEQUIV));
		menu.append(new MenuItem("GC OR_REVERSE",&drawingArea.gcToOR_REVERSE));
		menu.append(new MenuItem("GC COPY_INVERT",&drawingArea.gcToCOPY_INVERT));
		menu.append(new MenuItem("GC OR_INVERT",&drawingArea.gcToOR_INVERT));
		menu.append(new MenuItem("GC NAND",&drawingArea.gcToNAND));
		menu.append(new MenuItem("GC NOR",&drawingArea.gcToNOR));
		menu.append(new MenuItem("GC SET",&drawingArea.gcToSET));
		gcOptions.setMenu(menu);

		OptionMenu primOption = new OptionMenu();
		menu = new Menu();
		menu.append(new MenuItem("Filled Arc", &drawingArea.primitive, "Filled Arc"));
		menu.append(new MenuItem("Arc", &drawingArea.primitive, "Arc"));
		menu.append(new MenuItem("Line", &drawingArea.primitive, "Line"));
		menu.append(new MenuItem("Point", &drawingArea.primitive, "Point"));
		menu.append(new MenuItem("Rectangle", &drawingArea.primitive, "Rectangle"));
		menu.append(new MenuItem("Filled Rectangle", &drawingArea.primitive, "Filled Rectangle"));
		menu.append(new MenuItem("Text", &drawingArea.primitive, "Text"));
		menu.append(new MenuItem("Pango text", &drawingArea.primitive, "Pango text"));
		menu.append(new MenuItem("Image", &drawingArea.primitive, "Image"));
		menu.append(new MenuItem("Polygon", &drawingArea.primitive, "Polygon"));
		primOption.setMenu(menu);

		drawingArea.spin = new SpinButton(new Adjustment(30, 1, 400, 1, 10, 10),1,0);
		drawingArea.backSpin = new SpinButton(new Adjustment(5, 4, 100, 1, 10, 10),1,0);
		drawingArea.backSpin.addOnChanged(&drawingArea.backSpinChanged);

		//table.attach(new Label("Sping this:"),0,1,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);
		//table.attach(spin,1,2,0,1,AttachOptions.FILL,AttachOptions.FILL,4,4);

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

		int gcFunction = 0;
		Color paintColor;
		Color black;

		String primitiveType;
		Font font;
		Image image;
		
		SpinButton spin;
		SpinButton backSpin;
		static Point[] polygonStar = [
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

			primitiveType = new String("Filled Arc");
			font = new Font("Courier 48");
			image = new Image("screenShots/d3_small.gif");
			paintColor = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
			black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);

			addOnExpose(&exposeCallback);
			addOnMap(&mapCallback);
			addOnMotionNotify(&motionNotifyCallback);
			addOnMouseButtonPress(&mouseButtonPress);
		}

		public void drawPrimitive(Drawable d, int x, int y)
		{
			int width = spin.getValueAsInt();
			int height = width * 3 / 4;
			switch ( primitiveType.toString() )
			{
				case "Arc":
					d.drawArc(false,x-width/2,y-width/2,width,width,0,64*360);
					break;
					
				case "Filled Arc":
					d.drawArc(true,x-width/4,y-width/4,width/2,width/2,0,64*360);
					break;

				case "Line":
					d.drawLine(x, y, x+width, y);
					break;
					
				case "Point":
					d.drawPoint(x, y);
					break;
					
				case "Rectangle":
					d.drawRectangle(false, x-width/2, y-width/4, width, height);
					break;
					
				case "Filled Rectangle":
					d.drawRectangle(true, x-width/2, y-width/4, width, height);
					break;
					
				case "Text":
					//font = new Font(new String("Courier ")~width);
					d.drawString(new Font(new String("Courier ")~width), x, y, "DUI toolkit");
					break;
				
				case "Pango Text":
					break;
				
				case "Image":
//	printf("TestDrawing.drawPrimitive 1\n" );
//	printf("TestDrawing.drawPrimitive image = 0x%X\n" , image);
//	printf("TestDrawing.drawPrimitive 2\n" );
//					Pixbuf p;
//	printf("TestDrawing.drawPrimitive 2 0x%X\n", p );
//					p = image.getPixbuf();
//	printf("TestDrawing.drawPrimitive 2 0x%X\n", p );
//	printf("TestDrawing.drawPrimitive 2 %d\n", (p===null));
//					Pixbuf pixbuf = p.trimTo(height , width);
//	printf("TestDrawing.drawPrimitive 3\n" );
//					Image i = new Image(pixbuf);
//	printf("TestDrawing.drawPrimitive 4\n" );
//					d.drawImage(i, x, y);
//	printf("TestDrawing.drawPrimitive 5\n" );


						d.drawImage(image, x, y);
					break;
				
				case "Polygon":
					Point[] pol1;
					pol1.length = polygonStar.length;
					for ( int scale = 10 ; scale<= 300; scale+=15)
					{
						foreach(int i , inout Point p ; polygonStar)
						{
							pol1[i].x = p.x*scale/2+x;
							pol1[i].y = p.y*scale/2+y;
						}
						d.drawPolygon(true , pol1);
					}
					break;
				
				default:
					d.drawArc(true,x-2,y-2,4,4,0,64*360);
					break;
			}
		}
		
		public bit mouseButtonPress(Widget widget, EventButton event)
		{
			if ( event.button() == 1 )
			{
				Drawable d = getDrawable();
				GC gc = d.getGC();
				gc.setForeground(new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0));
				gc.setFunction(gcFunction);
				
				drawPrimitive(d, event.getX(), event.getY());

				gc.setForeground(black);
				gc.setFunction(GC.COPY);
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
		public bit exposeCallback(Widget widget, EventExpose event)
		{
			//printf("testWindow.exposed ----------------------------- \n");
			drawPoins(widget.getDrawable());
			return true;
		}
		public bit noExposeCallback(Widget widget)
		{
			//printf("testWindow.noExposed ----------------------------- \n");
			return true;
		}


		public bit motionNotifyCallback(Widget widget, EventMotion event)
		{
			//printf("testWindow.mouseMoved ----------------------------- \n");
			if ( event.testState(ModifierType.BUTTON1_MASK) )
			{
				Drawable d = getDrawable();
				GC gc = d.getGC();
				gc.setForeground(paintColor);
				gc.setFunction(gcFunction);
				
				drawPrimitive(d, event.getX(), event.getY());
				//d.drawPoint(event.getX(),event.getY());
				//d.drawArc(true,event.getX()-2,event.getY()-2,4,4,0,64*360);
				//d.drawRectangle(true,event.getX()-2,event.getY()-2,4,4);
				
				gc.setForeground(black);
				gc.setFunction(GC.COPY);
			}
			return true;
		}

		public bit mouseButtonReleaseCallback(Widget widget, EventButton event)
		{
			//printf("testWindow.buttonReleased ----------------------------- \n");
			return true;
		}

		public void backSpinChanged()
		{
			drawPoins(getDrawable());
		}
		
		private void drawPoins(Drawable d)
		{
			int square = backSpin.getValueAsInt();
			int totalcount = 0;
			int count = 0;
			Color color = new Color();
			GC gc = d.getGC();
			int width;
			int height;
			int x =0;
			int y =0;
			width = getWidth();
			height = getHeight();
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
					d.drawRectangle(true,x,y,square,square);
				}
				else
				{
					d.drawPoint(x,y);
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


		void gcToCOPY(MenuItem item)
		{
			gcFunction = GC.COPY;
		}
		void gcToINVERT(MenuItem item)
		{
			gcFunction = GC.INVERT;
		}
		void gcToXOR(MenuItem item)
		{
			gcFunction = GC.XOR;
		}
		void gcToCLEAR(MenuItem item)
		{
			gcFunction = GC.CLEAR;
		}
		void gcToAND(MenuItem item)
		{
			gcFunction = GC.AND;
		}
		void gcToAND_REVERSE(MenuItem item)
		{
			gcFunction = GC.AND_REVERSE;
		}
		void gcToAND_INVERT(MenuItem item)
		{
			gcFunction = GC.AND_INVERT;
		}
		void gcToNOOP(MenuItem item)
		{
			gcFunction = GC.NOOP;
		}
		void gcToOR(MenuItem item)
		{
			gcFunction = GC.OR;
		}
		void gcToEQUIV(MenuItem item)
		{
			gcFunction = GC.EQUIV;
		}
		void gcToOR_REVERSE(MenuItem item)
		{
			gcFunction = GC.OR_REVERSE;
		}
		void gcToCOPY_INVERT(MenuItem item)
		{
			gcFunction = GC.COPY_INVERT;
		}
		void gcToOR_INVERT(MenuItem item)
		{
			gcFunction = GC.OR_INVERT;
		}
		void gcToNAND(MenuItem item)
		{
			gcFunction = GC.NAND;
		}
		void gcToNOR(MenuItem item)
		{
			gcFunction = GC.NOR;
		}
		void gcToSET(MenuItem item)
		{
			gcFunction = GC.SET;
		}

		void primitive(MenuItem item)
		{
			printf("TestDrawing.primitive item command = %.*s\n", item.getActionCommand().toString());
			primitiveType.set(item.getActionCommand().dup);
		}
		
	}

}
