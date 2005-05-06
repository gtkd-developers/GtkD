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

module test.TestTimeout;

private import dui.VBox;
	
private import dui.DrawingArea;
private import event.Event;
private import event.WidgetListener;
private import event.MenuItemListener;
private import event.IdleListener;
private import dui.Widget;
private import dui.MenuItem;
private import dui.OptionMenu;
private import dui.Menu;
private import event.Dispatcher;

private import ddi.Color;
private import ddi.Drawable;
private import ddi.GC;

private import dool.String;

/**
 * This tests the DUI drawing area widget
 */
class TestTimeout : VBox
{
	this()
	{
		
		debug(1)
		{
			printf("instantiating TestTimeout\n");
		}

		super(false,7);

		TestDrawing drawingArea = new TestDrawing();
		
		OptionMenu gcOptions = new OptionMenu();
		Menu menu = new Menu();
		menu.append(new MenuItem(drawingArea,"GC COPY","GCFuncCOPY"));
		menu.append(new MenuItem(drawingArea,"GC INVERT","GCFuncINVERT"));
		menu.append(new MenuItem(drawingArea,"GC XOR","GCFuncXOR"));
		menu.append(new MenuItem(drawingArea,"GC CLEAR","GCFuncCLEAR"));
		menu.append(new MenuItem(drawingArea,"GC AND","GCFuncAND"));
		menu.append(new MenuItem(drawingArea,"GC AND_REVERSE","GCFuncAND_REVERSE"));
		menu.append(new MenuItem(drawingArea,"GC AND_INVERT","GCFuncAND_INVERT"));
		menu.append(new MenuItem(drawingArea,"GC NOOP","GCFuncNOOP"));
		menu.append(new MenuItem(drawingArea,"GC OR","GCFuncOR"));
		menu.append(new MenuItem(drawingArea,"GC EQUIV","GCFuncEQUIV"));
		menu.append(new MenuItem(drawingArea,"GC OR_REVERSE","GCFuncOR_REVERSE"));
		menu.append(new MenuItem(drawingArea,"GC COPY_INVERT","GCFuncCOPY_INVERT"));
		menu.append(new MenuItem(drawingArea,"GC OR_INVERT","GCFuncOR_INVERT"));
		menu.append(new MenuItem(drawingArea,"GC NAND","GCFuncNAND"));
		menu.append(new MenuItem(drawingArea,"GC NOR","GCFuncNOR"));
		menu.append(new MenuItem(drawingArea,"GC SET","GCFuncSET"));
		gcOptions.setMenu(menu);

		packStart(drawingArea,true,true,0);
		packStart(gcOptions,false,false,0);
	}
	
	class TestDrawing : DrawingArea , 
									ExposeListener , 
									//MouseMotionListener , 
									//MouseButtonListener , 
									MenuItemListener ,
									RealizeListener ,
									ConfigureListener,
									IdleListener
	{

		int gcFunction = 0;
		Color paintColor;
		Color black;

		int x =0;
		int y =0;
		int xi =1;
		int yi =1;
		int totalcount = 0;
		int count = 0;
		int width;
		int height;
		//Color color = new Color();
		Drawable drawable;
		GC gc;


		this()
		{
			setSizeRequest(333,334);

			paintColor = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
			black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);

			Dispatcher dispatcher = Dispatcher.getDispatcher();
			//dispatcher.addMouseButtonListener((MouseButtonListener)this,(Widget)this);
			//dispatcher.addMouseMotionListener(this,this);
			//dispatcher.addExposeListener(this,this);
			dispatcher.addRealizeListener(this,this);
			dispatcher.addConfigureListener(this,this);
		}

		public bit realizeCallback(Widget widget)
		{
			//printf("TestTimeout.realizeCallback\n");
			drawable = getDrawable();
			gc = drawable.getGC();
			Dispatcher.getDispatcher().addIdleListener(this);
			return false;
		}
		
		public bit unrealizeCallback(Widget widget)
		{
			return false;
		}

		/**
		 * This will be called from the expose event call back.
		 * \bug this is called on get or loose focus - review
		 */
		public bit exposeCallback(Widget widget)
		{
			//printf("testWindow.exposed ----------------------------- \n");
			//drawPoins(widget.getDrawable());
			return false;
		}

		public bit noExposeCallback(Widget widget)
		{
			//printf("testWindow.noExposed ----------------------------- \n");
			return false;
		}

		bit configureCallback(Widget widget, EventConfigure e)
		{
			//printf("configureCallback\n");
			width = getWidth();
			height = getHeight();
			//printf("%d %d\n",width,height);
			x = 0;
			y = 0;
			xi = 1;
			yi = 1;
			return false;
		}
		
		bit idleCallback()
		{

			//printf("%d %d\n",width,height);
			drawable.drawPoint(x,y);
			
			if ( x>width || x<0 ) xi = -xi;
			if ( y>height || y<0 ) yi = -yi;
			x += xi;
			y += yi;
			return true;
		}

		void activateItemCallback(MenuItem menuItem, String action)
		{
		}
		void activateCallback(MenuItem menuItem, String action)
		{
			switch(action.toString())
			{
				case "GCFuncCOPY":			gc.setFunction(GC.COPY);		break;
				case "GCFuncINVERT":		gc.setFunction(GC.INVERT);		break;
				case "GCFuncXOR":			gc.setFunction(GC.XOR);			break;
				case "GCFuncCLEAR":			gc.setFunction(GC.CLEAR);		break;
				case "GCFuncAND":			gc.setFunction(GC.AND);			break;
				case "GCFuncAND_REVERSE":	gc.setFunction(GC.AND_REVERSE);	break;
				case "GCFuncAND_INVERT":	gc.setFunction(GC.AND_INVERT);	break;
				case "GCFuncNOOP":			gc.setFunction(GC.NOOP);		break;
				case "GCFuncOR":			gc.setFunction(GC.OR);			break;
				case "GCFuncEQUIV":			gc.setFunction(GC.EQUIV);		break;
				case "GCFuncOR_REVERSE":	gc.setFunction(GC.OR_REVERSE);	break;
				case "GCFuncCOPY_INVERT":	gc.setFunction(GC.COPY_INVERT);	break;
				case "GCFuncOR_INVERT":		gc.setFunction(GC.OR_INVERT);	break;
				case "GCFuncNAND":			gc.setFunction(GC.NAND);		break;
				case "GCFuncNOR":			gc.setFunction(GC.NOR);			break;
				case "GCFuncSET":			gc.setFunction(GC.SET);			break;
					
			}
		}

	}

}
