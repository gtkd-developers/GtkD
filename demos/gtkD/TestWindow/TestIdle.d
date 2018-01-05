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
private import cairo.ImageSurface;

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

private import std.stdio;

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
			writeln("instantiating TestTimeout");
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
		CairoOperator operator = CairoOperator.OVER;

		int x =0;
		int y =0;
		int xi =1;
		int yi =1;
		int totalcount = 0;
		int count = 0;
		int width;
		int height;
		ImageSurface surface;

		CallType callType = CallType.Timeout;

		this()
		{
			setSizeRequest(333,334);

			addOnMap(&onMap);
			addOnUnmap(&onUnmap);
			addOnSizeAllocate(&onSizeAllocate);
			addOnDraw(&onDraw);
		}

		public void onMap(Widget widget)
		{
			debug(trace) writeln("idle.onMap");
			continueIdleCallback = true;
			x = 0;
			y = 0;
			xi = 1;
			yi = 1;
			resetCallType();
		}

		public void onUnmap(Widget widget)
		{
			debug(trace) writeln("idle.onUnmap");
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

			surface = ImageSurface.create(CairoFormat.ARGB32, width, height);
		}

		void onTimeoutSpinValueChanged(SpinButton spin)
		{
			if ( callType == CallType.Timeout )
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
				case CallType.Idle: mainIdle = new Idle(&idleCallback); break;
				case CallType.Timeout: mainTimeout = new Timeout(timeoutSpin.getValueAsInt(),&idleCallback, true); break;
				default: mainIdle = new Idle(&idleCallback); break;
			}
		}

		bool onDraw(Scoped!Context context, Widget widget)
		{
			//Fill the Widget with the surface we are drawing on.
			context.setSourceSurface(surface, 0, 0);
			context.paint();

			return true;
		}

		bool idleCallback()
		{
			Context context = Context.create(surface);
			context.setLineWidth(1);
			context.setOperator(operator);

			int xf;
			int yf;

			if ( xi<0 )xf = x;	// going back
			else xf = width-x;

			if ( yi<0 )yf = y;	// going up
			else yf = height-y;

			if ( xf<yf ) yf=xf;

			//writefln("%s %s -> %s %s (%s %s)\n",x,y,xf,yf,x+yf*xi, y+yf*yi);
			context.moveTo(x, y);
			context.lineTo(x+yf*xi, y+yf*yi);
			context.stroke();

			x += yf*xi;
			y += yf*yi;

			if ( x>=width || x<=0 ) xi = -xi;
			if ( y>=height || y<=0 ) yi = -yi;

			//Redraw the Widget.
			this.queueDraw();

			return continueIdleCallback;
		}

		void onCallTypeChanged(ComboBoxText comboBoxText)
		{
			debug(trace) writefln("gcOptions = %s", comboBoxText.getActiveText());
			switch ( comboBoxText.getActiveText() )
			{
				case "Idle":    callType = CallType.Idle;    break;
				case "Timeout": callType = CallType.Timeout; break;
				default:        callType = CallType.Timeout; break;
			}
			resetCallType();
		}

		void onOperatorChanged(ComboBoxText comboBoxText)
		{
			debug(trace) writefln("CairoOperator = %s", comboBoxText.getActiveText());
			switch ( comboBoxText.getActiveText() )
			{
				case "CLEAR":          operator = CairoOperator.CLEAR;          break;
				case "SOURCE":         operator = CairoOperator.SOURCE;         break;
				case "OVER":           operator = CairoOperator.OVER;           break;
				case "IN":             operator = CairoOperator.IN;             break;
				case "OUT":            operator = CairoOperator.OUT;            break;
				case "ATOP":           operator = CairoOperator.ATOP;           break;
				case "DEST":           operator = CairoOperator.DEST;           break;
				case "DEST_OVER":      operator = CairoOperator.DEST_OVER;      break;
				case "DEST_IN":        operator = CairoOperator.DEST_IN;        break;
				case "DEST_OUT":       operator = CairoOperator.DEST_OUT;       break;
				case "DEST_ATOP":      operator = CairoOperator.DEST_ATOP;      break;
				case "XOR":            operator = CairoOperator.XOR;            break;
				case "ADD":            operator = CairoOperator.ADD;            break;
				case "SATURATE":       operator = CairoOperator.SATURATE;       break;
				case "MULTIPLY":       operator = CairoOperator.MULTIPLY;       break;
				case "SCREEN":         operator = CairoOperator.SCREEN;         break;
				case "OVERLAY":        operator = CairoOperator.OVERLAY;        break;
				case "DARKEN":         operator = CairoOperator.DARKEN;         break;
				case "LIGHTEN":        operator = CairoOperator.LIGHTEN;        break;
				case "COLOR_DODGE":    operator = CairoOperator.COLOR_DODGE;    break;
				case "COLOR_BURN":     operator = CairoOperator.COLOR_BURN;     break;
				case "HARD_LIGHT":     operator = CairoOperator.HARD_LIGHT;     break;
				case "SOFT_LIGHT":     operator = CairoOperator.SOFT_LIGHT;     break;
				case "DIFFERENCE":     operator = CairoOperator.DIFFERENCE;     break;
				case "EXCLUSION":      operator = CairoOperator.EXCLUSION;      break;
				case "HSL_HUE":        operator = CairoOperator.HSL_HUE;        break;
				case "HSL_SATURATION": operator = CairoOperator.HSL_SATURATION; break;
				case "HSL_COLOR":      operator = CairoOperator.HSL_COLOR;      break;
				case "HSL_LUMINOSITY": operator = CairoOperator.HSL_LUMINOSITY; break;
				default:               operator = CairoOperator.OVER;           break;
			}
		}
	}
}

enum CallType
{
	Idle,
	Timeout,
}

