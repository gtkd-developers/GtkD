/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

module TestIdle;

//debug = trace

private import cairo.Context;

private import gtk.VBox;
private import gtk.HBox;
private import gtk.Box;

private import gtk.DrawingArea;
private import gdk.Event;
private import gtk.Widget;
private import gtk.ComboBox;
private import gtk.ComboBoxText;

private import gdk.Color;
private import gdk.Cairo;

private import gtk.SpinButton;
private import gtk.Adjustment;

version(Tango) private import tango.io.Stdout;
version(Tango) private import tango.stdc.stdio;
else private import std.stdio;

private import glib.Idle;
private import glib.Timeout;


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

		ComboBoxText operators = new ComboBoxText();
		operators.appendText("CLEAR");
		operators.appendText("SOURCE");
		operators.appendText("OVER");
		operators.appendText("IN");
		operators.appendText("OUT");
		operators.appendText("ATOP");
		operators.appendText("DEST");
		operators.appendText("DEST_OVER");
		operators.appendText("DEST_IN");
		operators.appendText("DEST_OUT");
		operators.appendText("DEST_ATOP");
		operators.appendText("XOR");
		operators.appendText("ADD");
		operators.appendText("SATURATE");
		operators.appendText("MULTIPLY");
		operators.appendText("SCREEN");
		operators.appendText("OVERLAY");
		operators.appendText("DARKEN");
		operators.appendText("LIGHTEN");
		operators.appendText("COLOR_DODGE");
		operators.appendText("COLOR_BURN");
		operators.appendText("HARD_LIGHT");
		operators.appendText("SOFT_LIGHT");
		operators.appendText("DIFFERENCE");
		operators.appendText("EXCLUSION");
		operators.appendText("HSL_HUE");
		operators.appendText("HSL_SATURATION");
		operators.appendText("HSL_COLOR");
		operators.appendText("HSL_LUMINOSITY");
		operators.setActive(2);
		operators.addOnChanged(&drawingArea.onOperatorChanged);

		ComboBoxText callType = new ComboBoxText();
		callType.appendText("Idle");
		callType.appendText("Timeout");
		callType.setActive(1);
		callType.addOnChanged(&drawingArea.onCallTypeChanged);

		timeoutSpin = new SpinButton(new Adjustment(200.0, 1.0, 1000.0, 1.0, 100.0, 0),1,0);
		timeoutSpin.addOnValueChanged(&drawingArea.onTimeoutSpinValueChanged);
		Box controlBox = new HBox(false, 7);

		controlBox.packStart(operators, false, false, 2);
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
		Context context;

		int callType = 1;	// ue 0 for Idle 1 for Timeout

		this()
		{
			setSizeRequest(333,334);

			paintColor = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);
			black = new Color(cast(ubyte)0,cast(ubyte)0,cast(ubyte)0);

			addOnRealize(&onRealize);
			addOnMap(&onMap);
			addOnUnmap(&onUnmap);
			addOnSizeAllocate(&onSizeAllocate);

		}

		public void onRealize(Widget widget)
		{
			context = getWindow().createContext;
			context.moveTo(0, 0);
			context.setOperator(CairoOperator.OVER);
//			gc.setFunction(GdkFunction.INVERT);
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
			context.lineTo(x+yf*xi, y+yf*yi);
			//drawable.drawLine(gc,x,y, x+yf*xi, y+yf*yi);

			x += yf*xi;
			y += yf*yi;

			if ( x>=width || x<=0 ) xi = -xi;
			if ( y>=height || y<=0 ) yi = -yi;

			return continueIdleCallback;
		}

		void onCallTypeChanged(ComboBox comboBox)
		{
			ComboBoxText comboBoxText = cast(ComboBoxText)comboBox;

			debug(trace) version(Tango) Stdout.format("gcOptions = {}", comboBoxText.getActiveText()).newline;
			else writefln("gcOptions = %s", comboBoxText.getActiveText());
			switch ( comboBoxText.getActiveText() )
			{
				case "Idle": callType = 0; break;
				case "Timeout": callType = 1; break;
				default: callType = 0; break;
			}
			resetCallType();
		}

		void onOperatorChanged(ComboBox comboBox)
		{
			ComboBoxText comboBoxText = cast(ComboBoxText)comboBox;

			debug(trace) version(Tango) Stdout.format("gcOptions = {}", comboBoxText.getActiveText()).newline;
			else writefln("gcOptions = %s", comboBoxText.getActiveText());
			switch ( comboBoxText.getActiveText() )
			{
				case "CLEAR":          context.setOperator(CairoOperator.CLEAR);          break;
				case "SOURCE":         context.setOperator(CairoOperator.SOURCE);         break;
				case "OVER":           context.setOperator(CairoOperator.OVER);           break;
				case "IN":             context.setOperator(CairoOperator.IN);             break;
				case "OUT":            context.setOperator(CairoOperator.OUT);            break;
				case "ATOP":           context.setOperator(CairoOperator.ATOP);           break;
				case "DEST":           context.setOperator(CairoOperator.DEST);           break;
				case "DEST_OVER":      context.setOperator(CairoOperator.DEST_OVER);      break;
				case "DEST_IN":        context.setOperator(CairoOperator.DEST_IN);        break;
				case "DEST_OUT":       context.setOperator(CairoOperator.DEST_OUT);       break;
				case "DEST_ATOP":      context.setOperator(CairoOperator.DEST_ATOP);      break;
				case "XOR":            context.setOperator(CairoOperator.XOR);            break;
				case "ADD":            context.setOperator(CairoOperator.ADD);            break;
				case "SATURATE":       context.setOperator(CairoOperator.SATURATE);       break;
				case "MULTIPLY":       context.setOperator(CairoOperator.MULTIPLY);       break;
				case "SCREEN":         context.setOperator(CairoOperator.SCREEN);         break;
				case "OVERLAY":        context.setOperator(CairoOperator.OVERLAY);        break;
				case "DARKEN":         context.setOperator(CairoOperator.DARKEN);         break;
				case "LIGHTEN":        context.setOperator(CairoOperator.LIGHTEN);        break;
				case "COLOR_DODGE":    context.setOperator(CairoOperator.COLOR_DODGE);    break;
				case "COLOR_BURN":     context.setOperator(CairoOperator.COLOR_BURN);     break;
				case "HARD_LIGHT":     context.setOperator(CairoOperator.HARD_LIGHT);     break;
				case "SOFT_LIGHT":     context.setOperator(CairoOperator.SOFT_LIGHT);     break;
				case "DIFFERENCE":     context.setOperator(CairoOperator.DIFFERENCE);     break;
				case "EXCLUSION":      context.setOperator(CairoOperator.EXCLUSION);      break;
				case "HSL_HUE":        context.setOperator(CairoOperator.HSL_HUE);        break;
				case "HSL_SATURATION": context.setOperator(CairoOperator.HSL_SATURATION); break;
				case "HSL_COLOR":      context.setOperator(CairoOperator.HSL_COLOR);      break;
				case "HSL_LUMINOSITY": context.setOperator(CairoOperator.HSL_LUMINOSITY); break;
				default:               context.setOperator(CairoOperator.OVER);           break;
			}
		}

	}

}
