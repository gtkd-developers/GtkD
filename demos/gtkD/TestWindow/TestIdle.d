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

module TestIdle;

//debug = trace

private import gtk.VBox;
private import gtk.HBox;
private import gtk.Box;

private import gtk.DrawingArea;
private import gdk.Event;
private import gtk.Widget;
private import gtk.ComboBox;

private import gdk.Color;
private import gdk.Drawable;
private import gdk.GC;

private import gtk.SpinButton;
private import gtk.Adjustment;

version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;

private import gtk.Idle;
private import gtk.Timeout;


/**
 * This tests the gtkD drawing area widget
 */
class TestIdle : VBox
{

	SpinButton timeoutSpin;

	this()
	{

		debug(1)
		{
			printf("instantiating TestTimeout\n");
		}

		super(false,7);

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

		ComboBox callType = new ComboBox();
		callType.appendText("Idle");
		callType.appendText("Timeout");
		callType.setActive(1);
		callType.addOnChanged(&drawingArea.onCallTypeChanged);

		timeoutSpin = new SpinButton(new Adjustment(200.0, 1.0, 1000.0, 1.0, 100.0, 0),1,0);
		timeoutSpin.addOnValueChanged(&drawingArea.onTimeoutSpinValueChanged);
		Box controlBox = new HBox(false, 7);

		controlBox.packStart(gcOptions, false, false, 2);
		controlBox.packStart(callType, false, false, 2);
		controlBox.packStart(timeoutSpin, false, false, 2);

		packStart(drawingArea,true,true,0);
		packStart(controlBox,false,false,0);
	}

	class TestDrawing : DrawingArea
	{

		Idle mainIdle;
		Timeout mainTimeout;

		bool continueIdleCallback;
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

		int callType = 1;	// ue 0 for Idle 1 for Timeout

		this()
		{
			setSizeRequest(333,334);

			paintColor = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
			black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);

			addOnRealize(&onRealize);
			//addOnExpose(&exposeCallback);
			addOnMap(&onMap);
			addOnUnmap(&onUnmap);
			//addOnMotionNotify(&onMotionNotify);
			addOnSizeAllocate(&onSizeAllocate);
			//addOnButtonPress(&onButtonPress);
			//addOnButtonRelease(&onButtonRelease);

		}

		public void onRealize(Widget widget)
		{
			//printf("TestTimeout.realizeCallback\n");
			drawable = getWindow();
			gc = new GC(drawable);
			gc.setFunction(GdkFunction.INVERT);
			//return false;
		}

		public void onMap(Widget widget)
		{
			debug(trace) version(Tango) Stdout("idle.onMap").newline;
			else writefln("idle.onMap");
			continueIdleCallback = true;
			x = 0;
			y = 0;
			xi = 1;
			yi = 1;
			resetCallType();
		}

		public void onUnmap(Widget widget)
		{
			debug(trace) version(Tango) Stdout("idle.onUnmap").newline;
			else writefln("idle.onUnmap");
			continueIdleCallback = false;
		}

		void onSizeAllocate(GtkAllocation* allocation, Widget widget)
		{
			width = allocation.width;
			height = allocation.height;
			x = 0;
			y = 0;
			xi = 1;
			yi = 1;
		}

		void onTimeoutSpinValueChanged(SpinButton spin)
		{
			if ( callType == 1 )
			{
				resetCallType();
			}
		}

		void resetCallType()
		{
			if ( mainIdle !is null )
			{
				mainIdle.stop();
			}
			if ( mainTimeout !is null )
			{
				mainTimeout.stop();
			}
			switch ( callType )
			{
				case 0: mainIdle = new Idle(&idleCallback); break;
				case 1: mainTimeout = new Timeout(timeoutSpin.getValueAsInt(),&idleCallback, true); break;
				default: mainIdle = new Idle(&idleCallback); break;
			}
		}

		/**
		 * This will be called from the expose event call back.
		 * \bug this is called on get or loose focus - review
		 */
//		public bit exposeCallback(Widget widget)
//		{
//			//printf("testWindow.exposed ----------------------------- \n");
//			//drawPoins(widget.getDrawable());
//			return false;
//		}

		bool idleCallback()
		{

			//printf("%d %d\n",width,height);
			//drawable.drawPoint(gc,x,y);

			int xf;
			int yf;

			if ( xi<0 )xf = x;	// going back
			else xf = width-x;

			if ( yi<0 )yf = y;	// going up
			else yf = height-y;

			if ( xf<yf ) yf=xf;

			//writefln("%s %s -> %s %s (%s %s)\n",x,y,xf,yf,x+yf*xi, y+yf*yi);
			drawable.drawLine(gc,x,y, x+yf*xi, y+yf*yi);

			x += yf*xi;
			y += yf*yi;

			if ( x>=width || x<=0 ) xi = -xi;
			if ( y>=height || y<=0 ) yi = -yi;

			return continueIdleCallback;
		}

		void onCallTypeChanged(ComboBox comboBox)
		{
			debug(trace) version(Tango) Stdout.format("gcOptions = {}", comboBox.getActiveText()).newline;
			else writefln("gcOptions = %s", comboBox.getActiveText());
			switch ( comboBox.getActiveText() )
			{
				case "Idle": callType = 0; break;
				case "Timeout": callType = 1; break;
				default: callType = 0; break;
			}
			resetCallType();
		}

		void onCGOptionsChanged(ComboBox comboBox)
		{
			debug(trace) version(Tango) Stdout.format("gcOptions = {}", comboBox.getActiveText()).newline;
			else writefln("gcOptions = %s", comboBox.getActiveText());
			switch ( comboBox.getActiveText() )
			{
				case "GC COPY":			gc.setFunction(GdkFunction.COPY);		break;
				case "GC INVERT":		gc.setFunction(GdkFunction.INVERT);		break;
				case "GC XOR":			gc.setFunction(GdkFunction.XOR);		break;
				case "GC CLEAR":		gc.setFunction(GdkFunction.CLEAR);		break;
				case "GC AND":			gc.setFunction(GdkFunction.AND);		break;
				case "GC AND_REVERSE":	gc.setFunction(GdkFunction.AND_REVERSE);break;
				case "GC AND_INVERT":	gc.setFunction(GdkFunction.AND_INVERT);	break;
				case "GC NOOP":			gc.setFunction(GdkFunction.NOOP);		break;
				case "GC OR":			gc.setFunction(GdkFunction.OR);			break;
				case "GC EQUIV":		gc.setFunction(GdkFunction.EQUIV);		break;
				case "GC OR_REVERSE":	gc.setFunction(GdkFunction.OR_REVERSE);	break;
				case "GC COPY_INVERT":	gc.setFunction(GdkFunction.COPY_INVERT);break;
				case "GC OR_INVERT":	gc.setFunction(GdkFunction.OR_INVERT);	break;
				case "GC NAND":			gc.setFunction(GdkFunction.NAND);		break;
				case "GC NOR":			gc.setFunction(GdkFunction.NOR);		break;
				case "GC SET":			gc.setFunction(GdkFunction.SET);		break;
				default:				gc.setFunction(GdkFunction.INVERT);		break;
			}
		}

	}

}
