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

/*
 * This module was heavally inspired and adapted from
 * Andy Friezen's dfbth GUI toolkit. See Andy's D page at
 * http://www.ikagames.com/andy/d/
 */
 

module event.EventHandler;

private:

alias void * GClosureNotify;


private import def.Types;
private import def.Constants;

extern(C)
{
	gulong g_signal_connect_data(gpointer instnce, 
								gchar * detailed_signal, 
								GCallback c_handler, 
								gpointer data, 
								GClosureNotify destroy_data, 
								GConnectFlags connect_flags);
	void gdk_threads_enter();
	void gdk_flush();
	void gdk_threads_leave();
	void* g_object_connect(gpointer instnce, gchar * sinalDesc, ... );
}


private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.Widget;
private import event.Event;
private import dool.String;

private static void connect(Widget widget, String signal, void * handler, gpointer data, ConnectFlags flags = ConnectFlags.NONE)
{
	g_signal_connect_data(cast(void *) widget.obj(), signal.toStringz(), handler, data, null, flags);
}

/**
 * connects a signal to an GObject
 */
protected:

//debug = debugEvent;

class EventHandler0(TWidget)
{
	


	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias void delegate() OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandler0.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate() dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandler0.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			if ( eventMask != EventMask.NONE )
			{
				widget.addEvents(eventMask);
			}
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, EventHandler0 eventHandler)
		{
			debug(debugEvent)
			{
				printf("EventHandler.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			//printf("EventHandler0.eventCallback 2\n");
			TWidget widget = eventHandler.widget;
			//printf("EventHandler0.eventCallback 3\n");
			foreach(void delegate() doEvent ; eventHandler.onEventDlg )
			{
			//printf("EventHandler0.eventCallback 4\n");
				doEvent();
			//printf("EventHandler0.eventCallback 5\n");
			}
			//gdk_flush();
			//printf("EventHandler0.eventCallback 6\n");
			//gdk_threads_leave();
			return true;
		}
	}

}

class EventHandler(TWidget)
{



	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias void delegate(TWidget widget) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandler.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate(TWidget) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandler.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, EventHandler eventHandler)
		{
			debug(debugEvent)
			{
				printf("EventHandler.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			TWidget widget = eventHandler.widget;
			foreach(void delegate(TWidget) doEvent ; eventHandler.onEventDlg )
			{
				doEvent(widget);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}

}


class EventHandler(TWidget, TEvent)
{

	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias bit delegate(TWidget widget, TEvent tEvent) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("\n\n\n\n\n\n\n\n\n\nEventHandler.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(bit delegate(TWidget, TEvent) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandler.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			debug(debugEvent)
			{
				printf("EventHandler.opAddAssign connecting %X %s\n", eventMask, signal.toStringz());
			}
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, GdkEvent * event, EventHandler eventHandler)
		{
			debug(debugEvent)
			{
				printf("EventHandler.callback signal = %s\n" , eventHandler.signal.toStringz());
				printf("EventHandler.callback eventHandler = %X\n" , eventHandler);
				printf("EventHandler.callback eventHandler.onEventDlg = %X\n" , eventHandler.onEventDlg);
				printf("EventHandler.callback eventHandler.onEventDlg.length = %X\n" , eventHandler.onEventDlg.length);
			}
			//gdk_threads_enter();
			TEvent dEvent = new TEvent(event);
			TWidget widget = eventHandler.widget;
			bit consume = false;
			foreach(bit delegate(TWidget, TEvent) doEvent ; eventHandler.onEventDlg )
			{
				if ( doEvent(widget, dEvent) )
				{
					consume = true;
				}
			}
			//gdk_flush();
			//gdk_threads_leave();
			return consume;
		}
	}
}

class EventHandlerR(TWidget, TEvent)
{

	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias bit delegate(TWidget widget, TEvent tEvent) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandlerR.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(bit delegate(TWidget, TEvent) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandlerR.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, GdkEvent * event, EventHandlerR eventHandler)
		{
			debug(debugEvent)
			{
				printf("EventHandlerR.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			TEvent dEvent = new TEvent(event);
			TWidget widget = eventHandler.widget;
			foreach(bit delegate(TWidget, TEvent) doEvent ; eventHandler.onEventDlg )
			{
				doEvent(widget, dEvent);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return false;
		}
	}
}

class EventHandlerAfter(TWidget, TEvent)
{

	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias bit delegate(TWidget widget, TEvent tEvent) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandlerAfter.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
		//printf("EnvetHanddlerAfter.this 2\n" );
	}
	
	public void opAddAssign(bit delegate(TWidget, TEvent) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandlerAfter.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			//printf("EnvetHanddlerAfter.opAddAssign 2\n" );
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this, ConnectFlags.AFTER);
			connected = true;
		}
		//printf("EnvetHanddlerAfter.opAddAssign 3\n" );
		onEventDlg ~= dlg;
		//printf("EnvetHanddlerAfter.opAddAssign 5 this = %X\n", this );
	}
	
	/**
	 * Callback 
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, GdkEvent * event, EventHandlerAfter eventHandlerAfter)
		{
			debug(debugEvent)
			{
				printf("EventHandlerAfter.callback signal = %s\n" , eventHandlerAfter.signal.toStringz());
			}
			//gdk_threads_enter();
			TEvent dEvent = new TEvent(event);
			TWidget widget = eventHandlerAfter.widget;
			foreach(bit delegate(TWidget, TEvent) doEvent ; eventHandlerAfter.onEventDlg )
			{
				doEvent(widget, dEvent);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}
}


/*
 * This is a hack, DrawingArea seems to swap event and Data on the callback ???
 */
class EventHandlerAfterR(TWidget, TEvent)
{

	TWidget widget;
	EventMask eventMask;
	String signal;

	bit connected = false;

	alias bit delegate(TWidget widget, TEvent tEvent) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandlerAfterR.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(bit delegate(TWidget, TEvent) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandlerAfterR.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this, ConnectFlags.AFTER);
			connected = true;
		}
		onEventDlg ~= dlg;
		//printf("EnvetHanddlerAfterR.opAddAssign 5 this = %X\n", this );
	}
	
	/**
	 * Callback 
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, EventHandlerAfterR eventHandler, GdkEvent * event)
		{
			debug(debugEvent)
			{
				printf("EventHandlerAfterR.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			TEvent dEvent = new TEvent(event);
			TWidget widget = eventHandler.widget;
			foreach(bit delegate(TWidget, TEvent) doEvent ; eventHandler.onEventDlg )
			{
				doEvent(widget, dEvent);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}
}


class EventHandler1(TWidget, T)
{


	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias void delegate(TWidget widget, T t) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandler1.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate(TWidget, T) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandler1.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, T t, EventHandler1 eventHandler1)
		{
			debug(debugEvent)
			{
				printf("EventHandler1.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			TWidget widget = eventHandler1.widget;
			foreach(void delegate(TWidget, T) doEvent ; eventHandler1.onEventDlg )
			{
				doEvent(widget, t);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}
}


class EventHandler11(TWidget, T)
{

	
	TWidget widget;
	EventMask eventMask;
	String signal;
	
	bit connected = false;

	alias void delegate(TWidget widget, T t) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TWidget widget, EventMask eventMask, String signal)
	{
		debug(debugEvent)
		{
			printf("EventHandler11.this signal = %s\n" , signal.toStringz());
		}
		this.widget = widget;
		this.eventMask = eventMask;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate(TWidget, T) dlg)
	{
		debug(debugEvent)
		{
			printf("EventHandler11.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			widget.addEvents(eventMask);
			connect(widget, signal, &eventCallback, this);
			connected = true;
		}
		onEventDlg ~= dlg;
	}
	
	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit eventCallback(GtkWidget * gtkwidget, void* dummy, T t, EventHandler11 eventHandler)
		{
			debug(debugEvent)
			{
				printf("EventHandler11.callback signal = %s\n" , eventHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			TWidget widget = eventHandler.widget;
			foreach(void delegate(TWidget, T) doEvent ; eventHandler.onEventDlg )
			{
				doEvent(widget, t);
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}
}
				

class SignalHandler(TObject)
{

	
	TObject obj;
	String signal;
	
	bit connected = false;

	alias void delegate() OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TObject obj, String signal)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.this signal = %s\n" , signal.toStringz());
		}
		this.obj = obj;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate() dlg)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			//connect(obj, signal, &signalCallback, this);
			g_object_connect(obj.gtk() , (new String("signal::")~signal).toStringz(),&signalCallback,this,null);
			connected = true;
		}
		onEventDlg ~= dlg;
	}

	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit signalCallback(GObject * gObj, SignalHandler signalHandler)
		{
			debug(debugEvent)
			{
				printf("SignalHandler.callback signal = %s\n" , signalHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			//printf("EventHandler0.eventCallback 2\n");
			TObject obj = signalHandler.obj;
			printf("SignalHandler.signalCallback number of handlers = %d\n", signalHandler.onEventDlg.length);
			foreach(void delegate() doEvent ; signalHandler.onEventDlg )
			{
				printf("\tSignalHandler0.signalCallback 4\n");
				doEvent();
			//printf("EventHandler0.eventCallback 5\n");
			}
			//gdk_flush();
			printf("SignalHandler.signalCallback 6\n");
			//gdk_threads_leave();
			return true;
		}
	}

}


class SignalHandler(TObject, Targ1, Targ2, Targ3)
{


	TObject obj;
	String signal;
	
	bit connected = false;

	alias void delegate(Targ1, Targ2, Targ3) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TObject obj, String signal)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.this signal = %s\n" , signal.toStringz());
		}
		this.obj = obj;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate(Targ1, Targ2, Targ3) dlg)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			//connect(obj, signal, &signalCallback, this);
			g_object_connect(obj.gtk() , (new String("signal::")~signal).toStringz(),&signalCallback,this,null);
			connected = true;
		}
		onEventDlg ~= dlg;
	}

	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit signalCallback(GObject * gObj, Targ1 a1, Targ2 a2, Targ3 a3, SignalHandler signalHandler)
		{
			debug(debugEvent)
			{
				printf("SignalHandler.callback signal = %s\n" , signalHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			//printf("EventHandler0.eventCallback 2\n");
			TObject obj = signalHandler.obj;
			foreach(void delegate(Targ1, Targ2, Targ3) doEvent ; signalHandler.onEventDlg )
			{
				doEvent(a1, a2, a3);
			//printf("EventHandler0.eventCallback 5\n");
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}

}


class SignalHandler(TObject, Targ1)
{


	TObject obj;
	String signal;
	
	bit connected = false;

	alias void delegate(Targ1) OnEventDlg;
	OnEventDlg[] onEventDlg;
	public this(TObject obj, String signal)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.this signal = %s\n" , signal.toStringz());
		}
		this.obj = obj;
		this.signal = signal;
	}
	
	public void opAddAssign(void delegate(Targ1) dlg)
	{
		debug(debugEvent)
		{
			printf("SignalHandler.opAddAssign signal = %s\n" , signal.toStringz());
		}
		if ( !connected )
		{
			//connect(obj, signal, &signalCallback, this);
			g_object_connect(obj.gtk() , (new String("signal::")~signal).toStringz(),&signalCallback,this,null);
			connected = true;
		}
		onEventDlg ~= dlg;
	}

	/**
	 * Callback for button pressed events
	 * @param event the GdkEvent
	 * @param gtkwidget the gtkwidget that generated the event
	 * @param data our data set to the listener
	 */
	extern (C)
	{
		static bit signalCallback(GObject * gObj, Targ1 a1, SignalHandler signalHandler)
		{
			debug(debugEvent)
			{
				printf("SignalHandler.callback signal = %s\n" , signalHandler.signal.toStringz());
			}
			//gdk_threads_enter();
			//printf("EventHandler0.eventCallback 2\n");
			TObject obj = signalHandler.obj;
			foreach(void delegate(Targ1) doEvent ; signalHandler.onEventDlg )
			{
				doEvent(a1);
			//printf("EventHandler0.eventCallback 5\n");
			}
			//gdk_flush();
			//gdk_threads_leave();
			return true;
		}
	}

}
