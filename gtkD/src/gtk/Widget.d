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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkWidget.html
 * outPack = gtk
 * outFile = Widget
 * strct   = GtkWidget
 * realStrct=
 * ctorStrct=
 * clss    = Widget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_widget_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_widget_ref
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- atk.ObjectAtk
 * 	- gdk.Rectangle
 * 	- gtk.AccelGroup
 * 	- glib.ListG
 * 	- gdk.Event
 * 	- gdk.Window
 * 	- gdk.Colormap
 * 	- gdk.Visual
 * 	- gtk.Style
 * 	- gdk.Bitmap
 * 	- gtk.RcStyle
 * 	- gdk.Color
 * 	- gdk.Pixbuf
 * 	- gtk.Adjustment
 * 	- gdk.Region
 * 	- gobject.Value
 * 	- gtk.Settings
 * 	- gtk.Clipboard
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- lib.gdk
 * 	- gdk.Cursor
 * 	- pango.PgLayout
 * 	- pango.PgContext
 * 	- pango.PgFontDescription
 * 	- gdk.Drawable
 * 	- gtk.Tooltips
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * 	- GList* -> ListG
 * 	- GValue* -> Value
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColor* -> Color
 * 	- GdkColormap* -> Colormap
 * 	- GdkDisplay* -> Display
 * 	- GdkEvent* -> Event
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * 	- GdkWindow* -> Window
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkClipboard* -> Clipboard
 * 	- GtkRcStyle* -> RcStyle
 * 	- GtkSettings* -> Settings
 * 	- GtkStyle* -> Style
 * 	- PangoContext* -> PgContext
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoLayout* -> PgLayout
 * local aliases:
 */

module gtk.Widget;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;
private import atk.ObjectAtk;
private import gdk.Rectangle;
private import gtk.AccelGroup;
private import glib.ListG;
private import gdk.Event;
private import gdk.Window;
private import gdk.Colormap;
private import gdk.Visual;
private import gtk.Style;
private import gdk.Bitmap;
private import gtk.RcStyle;
private import gdk.Color;
private import gdk.Pixbuf;
private import gtk.Adjustment;
private import gdk.Region;
private import gobject.Value;
private import gtk.Settings;
private import gtk.Clipboard;
private import gdk.Display;
private import gdk.Screen;
private import lib.gdk;
private import gdk.Cursor;
private import pango.PgLayout;
private import pango.PgContext;
private import pango.PgFontDescription;
private import gdk.Drawable;
private import gtk.Tooltips;

/**
 * Description
 * GtkWidget introduces style
 * properties - these are basically object properties that are stored
 * not on the object, but in the style object associated to the widget. Style
 * properties are set in resource files.
 * This mechanism is used for configuring such things as the location of the
 * scrollbar arrows through the theme, giving theme authors more control over the
 * look of applications without the need to write a theme engine in C.
 * Use gtk_widget_class_install_style_property() to install style properties for
 * a widget class, gtk_widget_class_find_style_property() or
 * gtk_widget_class_list_style_properties() to get information about existing
 * style properties and gtk_widget_style_get_property(), gtk_widget_style_get() or
 * gtk_widget_style_get_valist() to obtain the value of a style property.
 */
private import gtk.ObjectGtk;
public class Widget : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkWidget* gtkWidget;
	
	
	public GtkWidget* getWidgetStruct()
	{
		return gtkWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWidget* gtkWidget)
	{
		super(cast(GtkObject*)gtkWidget);
		this.gtkWidget = gtkWidget;
	}
	
	public int getWidth()
	{
		int width;
		gtk_widget_get_size_request(gtkWidget, &width, null);
		return width;
	}
	public int getHeight()
	{
		int height;
		gtk_widget_get_size_request(gtkWidget, null, &height);
		return height;
	}
	
	/**
	 * Gets the drawable for this widget
	 * return:
	 * 		The drawable for this widget
	 */
	Drawable getDrawable()
	{
		
		//		ubyte *p = cast(ubyte*)getStruct();
		//
		//		for ( int i=0 ; i<120 ; i+=4 )
		//		{
			//			printf("(%d) %X %x %x %x %x\n", i,p,*(p+0), *(p+1), *(p+2), *(p+3));
			//			p+=4;
		//		}
		//
		//		int* pt =cast(int*)getStruct();
		//
		//		printf("pt=%X strcut=%X\n", pt, getStruct());
		//		printf("*pt=%X\n", *pt);
		//		pt+=52/4;
		//		printf("pt+52=%X strcut.window=%X\n", pt, getWidgetStruct().window);
		//		printf("*pt+52=%X\n", *pt);
		//
		//		//return new Drawable(cast(GdkDrawable*)(getWidgetStruct().window));
		int* pt =cast(int*)getStruct();
		pt += 52/4;
		return new Drawable(cast(GdkDrawable*)(*pt));
	}
	/**
	 * Gets the Window for this widget
	 * return:
	 * 		The window for this widget
	 */
	Window getWindow()
	{
		
		//		ubyte *p = cast(ubyte*)getStruct();
		//
		//		for ( int i=0 ; i<120 ; i+=4 )
		//		{
			//			printf("(%d) %X %x %x %x %x\n", i,p,*(p+0), *(p+1), *(p+2), *(p+3));
			//			p+=4;
		//		}
		//
		//		int* pt =cast(int*)getStruct();
		//
		//		printf("pt=%X strcut=%X\n", pt, getStruct());
		//		printf("*pt=%X\n", *pt);
		//		pt+=52/4;
		//		printf("pt+52=%X strcut.window=%X\n", pt, getWidgetStruct().window);
		//		printf("*pt+52=%X\n", *pt);
		//
		//		//return new Drawable(cast(GdkDrawable*)(getWidgetStruct().window));
		int* pt =cast(int*)getStruct();
		pt += 52/4;
		return new Window(cast(GdkWindow*)(*pt));
	}
	/**
	 * Sets  the cursor.
	 * @param cursor the new cursor
	 * \bug the cursor changes to the parent widget also
	 */
	void setCursor(Cursor cursor)
	{
		int* pt =cast(int*)getStruct();
		pt += 52/4;
		gdk_window_set_cursor(cast(GdkWindow*)(*pt), cursor.getCursorStruct());
	}
	
	/**
	 * Resets the cursor.
	 * don't know if this is implemented by GTK+. Seems that it's not
	 * \bug does nothing
	 */
	public void resetCursor()
	{
		int* pt =cast(int*)getStruct();
		pt += 52/4;
		gdk_window_set_cursor(cast(GdkWindow*)(*pt), null);
	}
	
	/**
	 * Modifies the font for this widget.
	 * This just calls modifyFont(new PgFontDescription(PgFontDescription.fromString(family ~ " " ~ size)));
	 */
	public void modifyFont(char[] family, int size)
	{
		if ( size < 0 ) size = -size;	// hack to workaround leds bug - TO BE REMOVED
		modifyFont(new PgFontDescription(
		PgFontDescription.fromString(
		family ~ " " ~ std.string.toString(size))));
	}
	
	/**
	 * Sets this widget tooltip
	 * @param tipText the tooltip
	 * @param tipPrivate a private text
	 */
	void setTooltip(char[] tipText, char[] tipPrivate)
	{
		Tooltips tt = new Tooltips();
		tt.setTip(this, tipText, tipPrivate);
	}
	
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Widget)[] onAccelClosuresChangedListeners;
	void addOnAccelClosuresChanged(void delegate(Widget) dlg)
	{
		if ( !("accel-closures-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accel-closures-changed",
			cast(GCallback)&callBackAccelClosuresChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["accel-closures-changed"] = 1;
		}
		onAccelClosuresChangedListeners ~= dlg;
	}
	extern(C) static void callBackAccelClosuresChanged(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onAccelClosuresChangedListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventButton*, Widget)[] onButtonPressListeners;
	void addOnButtonPress(gboolean delegate(GdkEventButton*, Widget) dlg)
	{
		if ( !("button-press-event" in connectedSignals) )
		{
			addEvents(EventMask.BUTTON_PRESS_MASK);
			Signals.connectData(
			getStruct(),
			"button-press-event",
			cast(GCallback)&callBackButtonPress,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["button-press-event"] = 1;
		}
		onButtonPressListeners ~= dlg;
	}
	extern(C) static void callBackButtonPress(GtkWidget* widgetStruct, GdkEventButton* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventButton*, Widget) dlg ; widget.onButtonPressListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventButton*, Widget)[] onButtonReleaseListeners;
	void addOnButtonRelease(gboolean delegate(GdkEventButton*, Widget) dlg)
	{
		if ( !("button-release-event" in connectedSignals) )
		{
			addEvents(EventMask.BUTTON_RELEASE_MASK);
			Signals.connectData(
			getStruct(),
			"button-release-event",
			cast(GCallback)&callBackButtonRelease,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["button-release-event"] = 1;
		}
		onButtonReleaseListeners ~= dlg;
	}
	extern(C) static void callBackButtonRelease(GtkWidget* widgetStruct, GdkEventButton* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventButton*, Widget) dlg ; widget.onButtonReleaseListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(guint, Widget)[] onCanActivateAccelListeners;
	void addOnCanActivateAccel(gboolean delegate(guint, Widget) dlg)
	{
		if ( !("can-activate-accel" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"can-activate-accel",
			cast(GCallback)&callBackCanActivateAccel,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["can-activate-accel"] = 1;
		}
		onCanActivateAccelListeners ~= dlg;
	}
	extern(C) static void callBackCanActivateAccel(GtkWidget* widgetStruct, guint signalId, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(guint, Widget) dlg ; widget.onCanActivateAccelListeners )
		{
			dlg(signalId, widget);
		}
		
		return consumed;
	}
	
	void delegate(GParamSpec*, Widget)[] onChildNotifyListeners;
	void addOnChildNotify(void delegate(GParamSpec*, Widget) dlg)
	{
		if ( !("child-notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"child-notify",
			cast(GCallback)&callBackChildNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["child-notify"] = 1;
		}
		onChildNotifyListeners ~= dlg;
	}
	extern(C) static void callBackChildNotify(GtkWidget* widgetStruct, GParamSpec* pspec, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GParamSpec*, Widget) dlg ; widget.onChildNotifyListeners )
		{
			dlg(pspec, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventClient*, Widget)[] onClientListeners;
	void addOnClient(gboolean delegate(GdkEventClient*, Widget) dlg)
	{
		if ( !("client-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"client-event",
			cast(GCallback)&callBackClient,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["client-event"] = 1;
		}
		onClientListeners ~= dlg;
	}
	extern(C) static void callBackClient(GtkWidget* widgetStruct, GdkEventClient* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventClient*, Widget) dlg ; widget.onClientListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onCompositedChangedListeners;
	void addOnCompositedChanged(void delegate(Widget) dlg)
	{
		if ( !("composited-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"composited-changed",
			cast(GCallback)&callBackCompositedChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["composited-changed"] = 1;
		}
		onCompositedChangedListeners ~= dlg;
	}
	extern(C) static void callBackCompositedChanged(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onCompositedChangedListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventConfigure*, Widget)[] onConfigureListeners;
	void addOnConfigure(gboolean delegate(GdkEventConfigure*, Widget) dlg)
	{
		if ( !("configure-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"configure-event",
			cast(GCallback)&callBackConfigure,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["configure-event"] = 1;
		}
		onConfigureListeners ~= dlg;
	}
	extern(C) static void callBackConfigure(GtkWidget* widgetStruct, GdkEventConfigure* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventConfigure*, Widget) dlg ; widget.onConfigureListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onDeleteListeners;
	void addOnDelete(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("delete-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-event",
			cast(GCallback)&callBackDelete,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["delete-event"] = 1;
		}
		onDeleteListeners ~= dlg;
	}
	extern(C) static void callBackDelete(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onDeleteListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onDestroyListeners;
	void addOnDestroy(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("destroy-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"destroy-event",
			cast(GCallback)&callBackDestroy,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["destroy-event"] = 1;
		}
		onDestroyListeners ~= dlg;
	}
	extern(C) static void callBackDestroy(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onDestroyListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkTextDirection, Widget)[] onDirectionChangedListeners;
	void addOnDirectionChanged(void delegate(GtkTextDirection, Widget) dlg)
	{
		if ( !("direction-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"direction-changed",
			cast(GCallback)&callBackDirectionChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["direction-changed"] = 1;
		}
		onDirectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackDirectionChanged(GtkWidget* widgetStruct, GtkTextDirection arg1, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkTextDirection, Widget) dlg ; widget.onDirectionChangedListeners )
		{
			dlg(arg1, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, Widget)[] onDragBeginListeners;
	void addOnDragBegin(void delegate(GdkDragContext*, Widget) dlg)
	{
		if ( !("drag-begin" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-begin",
			cast(GCallback)&callBackDragBegin,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-begin"] = 1;
		}
		onDragBeginListeners ~= dlg;
	}
	extern(C) static void callBackDragBegin(GtkWidget* widgetStruct, GdkDragContext* dragContext, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, Widget) dlg ; widget.onDragBeginListeners )
		{
			dlg(dragContext, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, Widget)[] onDragDataDeleteListeners;
	void addOnDragDataDelete(void delegate(GdkDragContext*, Widget) dlg)
	{
		if ( !("drag-data-delete" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-delete",
			cast(GCallback)&callBackDragDataDelete,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-data-delete"] = 1;
		}
		onDragDataDeleteListeners ~= dlg;
	}
	extern(C) static void callBackDragDataDelete(GtkWidget* widgetStruct, GdkDragContext* dragContext, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, Widget) dlg ; widget.onDragDataDeleteListeners )
		{
			dlg(dragContext, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, GtkSelectionData*, guint, guint, Widget)[] onDragDataGetListeners;
	void addOnDragDataGet(void delegate(GdkDragContext*, GtkSelectionData*, guint, guint, Widget) dlg)
	{
		if ( !("drag-data-get" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-get",
			cast(GCallback)&callBackDragDataGet,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-data-get"] = 1;
		}
		onDragDataGetListeners ~= dlg;
	}
	extern(C) static void callBackDragDataGet(GtkWidget* widgetStruct, GdkDragContext* dragContext, GtkSelectionData* data, guint info, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, GtkSelectionData*, guint, guint, Widget) dlg ; widget.onDragDataGetListeners )
		{
			dlg(dragContext, data, info, time, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, gint, gint, GtkSelectionData*, guint, guint, Widget)[] onDragDataReceivedListeners;
	void addOnDragDataReceived(void delegate(GdkDragContext*, gint, gint, GtkSelectionData*, guint, guint, Widget) dlg)
	{
		if ( !("drag-data-received" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-data-received",
			cast(GCallback)&callBackDragDataReceived,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-data-received"] = 1;
		}
		onDragDataReceivedListeners ~= dlg;
	}
	extern(C) static void callBackDragDataReceived(GtkWidget* widgetStruct, GdkDragContext* dragContext, gint x, gint y, GtkSelectionData* data, guint info, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, gint, gint, GtkSelectionData*, guint, guint, Widget) dlg ; widget.onDragDataReceivedListeners )
		{
			dlg(dragContext, x, y, data, info, time, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkDragContext*, gint, gint, guint, Widget)[] onDragDropListeners;
	void addOnDragDrop(gboolean delegate(GdkDragContext*, gint, gint, guint, Widget) dlg)
	{
		if ( !("drag-drop" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-drop",
			cast(GCallback)&callBackDragDrop,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-drop"] = 1;
		}
		onDragDropListeners ~= dlg;
	}
	extern(C) static void callBackDragDrop(GtkWidget* widgetStruct, GdkDragContext* dragContext, gint x, gint y, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkDragContext*, gint, gint, guint, Widget) dlg ; widget.onDragDropListeners )
		{
			dlg(dragContext, x, y, time, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, Widget)[] onDragEndListeners;
	void addOnDragEnd(void delegate(GdkDragContext*, Widget) dlg)
	{
		if ( !("drag-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-end",
			cast(GCallback)&callBackDragEnd,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-end"] = 1;
		}
		onDragEndListeners ~= dlg;
	}
	extern(C) static void callBackDragEnd(GtkWidget* widgetStruct, GdkDragContext* dragContext, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, Widget) dlg ; widget.onDragEndListeners )
		{
			dlg(dragContext, widget);
		}
		
		return consumed;
	}
	
	void delegate(GdkDragContext*, guint, Widget)[] onDragLeaveListeners;
	void addOnDragLeave(void delegate(GdkDragContext*, guint, Widget) dlg)
	{
		if ( !("drag-leave" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-leave",
			cast(GCallback)&callBackDragLeave,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-leave"] = 1;
		}
		onDragLeaveListeners ~= dlg;
	}
	extern(C) static void callBackDragLeave(GtkWidget* widgetStruct, GdkDragContext* dragContext, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GdkDragContext*, guint, Widget) dlg ; widget.onDragLeaveListeners )
		{
			dlg(dragContext, time, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkDragContext*, gint, gint, guint, Widget)[] onDragMotionListeners;
	void addOnDragMotion(gboolean delegate(GdkDragContext*, gint, gint, guint, Widget) dlg)
	{
		if ( !("drag-motion" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"drag-motion",
			cast(GCallback)&callBackDragMotion,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["drag-motion"] = 1;
		}
		onDragMotionListeners ~= dlg;
	}
	extern(C) static void callBackDragMotion(GtkWidget* widgetStruct, GdkDragContext* dragContext, gint x, gint y, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkDragContext*, gint, gint, guint, Widget) dlg ; widget.onDragMotionListeners )
		{
			dlg(dragContext, x, y, time, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventCrossing*, Widget)[] onEnterNotifyListeners;
	void addOnEnterNotify(gboolean delegate(GdkEventCrossing*, Widget) dlg)
	{
		if ( !("enter-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"enter-notify-event",
			cast(GCallback)&callBackEnterNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["enter-notify-event"] = 1;
		}
		onEnterNotifyListeners ~= dlg;
	}
	extern(C) static void callBackEnterNotify(GtkWidget* widgetStruct, GdkEventCrossing* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventCrossing*, Widget) dlg ; widget.onEnterNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onListeners;
	void addOn(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static void callBack(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	void delegate(Event, Widget)[] onEventAfterListeners;
	void addOnEventAfter(void delegate(Event, Widget) dlg)
	{
		if ( !("event-after" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event-after",
			cast(GCallback)&callBackEventAfter,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["event-after"] = 1;
		}
		onEventAfterListeners ~= dlg;
	}
	extern(C) static void callBackEventAfter(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Event, Widget) dlg ; widget.onEventAfterListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventExpose*, Widget)[] onExposeListeners;
	void addOnExpose(gboolean delegate(GdkEventExpose*, Widget) dlg)
	{
		if ( !("expose-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"expose-event",
			cast(GCallback)&callBackExpose,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["expose-event"] = 1;
		}
		onExposeListeners ~= dlg;
	}
	extern(C) static void callBackExpose(GtkWidget* widgetStruct, GdkEventExpose* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventExpose*, Widget) dlg ; widget.onExposeListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkDirectionType, Widget)[] onFocusListeners;
	void addOnFocus(gboolean delegate(GtkDirectionType, Widget) dlg)
	{
		if ( !("focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus",
			cast(GCallback)&callBackFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["focus"] = 1;
		}
		onFocusListeners ~= dlg;
	}
	extern(C) static void callBackFocus(GtkWidget* widgetStruct, GtkDirectionType arg1, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkDirectionType, Widget) dlg ; widget.onFocusListeners )
		{
			dlg(arg1, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventFocus*, Widget)[] onFocusInListeners;
	void addOnFocusIn(gboolean delegate(GdkEventFocus*, Widget) dlg)
	{
		if ( !("focus-in-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-in-event",
			cast(GCallback)&callBackFocusIn,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["focus-in-event"] = 1;
		}
		onFocusInListeners ~= dlg;
	}
	extern(C) static void callBackFocusIn(GtkWidget* widgetStruct, GdkEventFocus* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventFocus*, Widget) dlg ; widget.onFocusInListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventFocus*, Widget)[] onFocusOutListeners;
	void addOnFocusOut(gboolean delegate(GdkEventFocus*, Widget) dlg)
	{
		if ( !("focus-out-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-out-event",
			cast(GCallback)&callBackFocusOut,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["focus-out-event"] = 1;
		}
		onFocusOutListeners ~= dlg;
	}
	extern(C) static void callBackFocusOut(GtkWidget* widgetStruct, GdkEventFocus* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventFocus*, Widget) dlg ; widget.onFocusOutListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onGrabBrokenListeners;
	void addOnGrabBroken(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("grab-broken-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-broken-event",
			cast(GCallback)&callBackGrabBroken,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["grab-broken-event"] = 1;
		}
		onGrabBrokenListeners ~= dlg;
	}
	extern(C) static void callBackGrabBroken(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onGrabBrokenListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onGrabFocusListeners;
	void addOnGrabFocus(void delegate(Widget) dlg)
	{
		if ( !("grab-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-focus",
			cast(GCallback)&callBackGrabFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["grab-focus"] = 1;
		}
		onGrabFocusListeners ~= dlg;
	}
	extern(C) static void callBackGrabFocus(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onGrabFocusListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	void delegate(gboolean, Widget)[] onGrabNotifyListeners;
	void addOnGrabNotify(void delegate(gboolean, Widget) dlg)
	{
		if ( !("grab-notify" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"grab-notify",
			cast(GCallback)&callBackGrabNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["grab-notify"] = 1;
		}
		onGrabNotifyListeners ~= dlg;
	}
	extern(C) static void callBackGrabNotify(GtkWidget* widgetStruct, gboolean wasGrabbed, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(gboolean, Widget) dlg ; widget.onGrabNotifyListeners )
		{
			dlg(wasGrabbed, widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onHideListeners;
	void addOnHide(void delegate(Widget) dlg)
	{
		if ( !("hide" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"hide",
			cast(GCallback)&callBackHide,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["hide"] = 1;
		}
		onHideListeners ~= dlg;
	}
	extern(C) static void callBackHide(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onHideListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkWidget*, Widget)[] onHierarchyChangedListeners;
	void addOnHierarchyChanged(void delegate(GtkWidget*, Widget) dlg)
	{
		if ( !("hierarchy-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"hierarchy-changed",
			cast(GCallback)&callBackHierarchyChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["hierarchy-changed"] = 1;
		}
		onHierarchyChangedListeners ~= dlg;
	}
	extern(C) static void callBackHierarchyChanged(GtkWidget* widgetStruct, GtkWidget* widget2, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkWidget*, Widget) dlg ; widget.onHierarchyChangedListeners )
		{
			dlg(widget2, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventKey*, Widget)[] onKeyPressListeners;
	void addOnKeyPress(gboolean delegate(GdkEventKey*, Widget) dlg)
	{
		if ( !("key-press-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"key-press-event",
			cast(GCallback)&callBackKeyPress,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["key-press-event"] = 1;
		}
		onKeyPressListeners ~= dlg;
	}
	extern(C) static void callBackKeyPress(GtkWidget* widgetStruct, GdkEventKey* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventKey*, Widget) dlg ; widget.onKeyPressListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventKey*, Widget)[] onKeyReleaseListeners;
	void addOnKeyRelease(gboolean delegate(GdkEventKey*, Widget) dlg)
	{
		if ( !("key-release-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"key-release-event",
			cast(GCallback)&callBackKeyRelease,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["key-release-event"] = 1;
		}
		onKeyReleaseListeners ~= dlg;
	}
	extern(C) static void callBackKeyRelease(GtkWidget* widgetStruct, GdkEventKey* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventKey*, Widget) dlg ; widget.onKeyReleaseListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkDirectionType, Widget)[] onKeynavFailedListeners;
	void addOnKeynavFailed(gboolean delegate(GtkDirectionType, Widget) dlg)
	{
		if ( !("keynav-failed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"keynav-failed",
			cast(GCallback)&callBackKeynavFailed,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["keynav-failed"] = 1;
		}
		onKeynavFailedListeners ~= dlg;
	}
	extern(C) static void callBackKeynavFailed(GtkWidget* widgetStruct, GtkDirectionType direction, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkDirectionType, Widget) dlg ; widget.onKeynavFailedListeners )
		{
			dlg(direction, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventCrossing*, Widget)[] onLeaveNotifyListeners;
	void addOnLeaveNotify(gboolean delegate(GdkEventCrossing*, Widget) dlg)
	{
		if ( !("leave-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"leave-notify-event",
			cast(GCallback)&callBackLeaveNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["leave-notify-event"] = 1;
		}
		onLeaveNotifyListeners ~= dlg;
	}
	extern(C) static void callBackLeaveNotify(GtkWidget* widgetStruct, GdkEventCrossing* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventCrossing*, Widget) dlg ; widget.onLeaveNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onMapListeners;
	void addOnMap(void delegate(Widget) dlg)
	{
		if ( !("map" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"map",
			cast(GCallback)&callBackMap,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["map"] = 1;
		}
		onMapListeners ~= dlg;
	}
	extern(C) static void callBackMap(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onMapListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onMapEventListeners;
	void addOnMapEvent(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("map-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"map-event",
			cast(GCallback)&callBackMapEvent,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["map-event"] = 1;
		}
		onMapEventListeners ~= dlg;
	}
	extern(C) static void callBackMapEvent(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onMapEventListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(gboolean, Widget)[] onMnemonicActivateListeners;
	void addOnMnemonicActivate(gboolean delegate(gboolean, Widget) dlg)
	{
		if ( !("mnemonic-activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"mnemonic-activate",
			cast(GCallback)&callBackMnemonicActivate,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["mnemonic-activate"] = 1;
		}
		onMnemonicActivateListeners ~= dlg;
	}
	extern(C) static void callBackMnemonicActivate(GtkWidget* widgetStruct, gboolean arg1, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, Widget) dlg ; widget.onMnemonicActivateListeners )
		{
			dlg(arg1, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventMotion*, Widget)[] onMotionNotifyListeners;
	void addOnMotionNotify(gboolean delegate(GdkEventMotion*, Widget) dlg)
	{
		if ( !("motion-notify-event" in connectedSignals) )
		{
			addEvents(EventMask.POINTER_MOTION_MASK);
			Signals.connectData(
			getStruct(),
			"motion-notify-event",
			cast(GCallback)&callBackMotionNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["motion-notify-event"] = 1;
		}
		onMotionNotifyListeners ~= dlg;
	}
	extern(C) static void callBackMotionNotify(GtkWidget* widgetStruct, GdkEventMotion* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventMotion*, Widget) dlg ; widget.onMotionNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventNoExpose*, Widget)[] onNoExposeListeners;
	void addOnNoExpose(gboolean delegate(GdkEventNoExpose*, Widget) dlg)
	{
		if ( !("no-expose-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"no-expose-event",
			cast(GCallback)&callBackNoExpose,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["no-expose-event"] = 1;
		}
		onNoExposeListeners ~= dlg;
	}
	extern(C) static void callBackNoExpose(GtkWidget* widgetStruct, GdkEventNoExpose* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventNoExpose*, Widget) dlg ; widget.onNoExposeListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkObject*, Widget)[] onParentSetListeners;
	void addOnParentSet(void delegate(GtkObject*, Widget) dlg)
	{
		if ( !("parent-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"parent-set",
			cast(GCallback)&callBackParentSet,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["parent-set"] = 1;
		}
		onParentSetListeners ~= dlg;
	}
	extern(C) static void callBackParentSet(GtkWidget* widgetStruct, GtkObject* oldParent, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkObject*, Widget) dlg ; widget.onParentSetListeners )
		{
			dlg(oldParent, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Widget)[] onPopupMenuListeners;
	void addOnPopupMenu(gboolean delegate(Widget) dlg)
	{
		if ( !("popup-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup-menu",
			cast(GCallback)&callBackPopupMenu,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["popup-menu"] = 1;
		}
		onPopupMenuListeners ~= dlg;
	}
	extern(C) static void callBackPopupMenu(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Widget) dlg ; widget.onPopupMenuListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventProperty*, Widget)[] onPropertyNotifyListeners;
	void addOnPropertyNotify(gboolean delegate(GdkEventProperty*, Widget) dlg)
	{
		if ( !("property-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"property-notify-event",
			cast(GCallback)&callBackPropertyNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["property-notify-event"] = 1;
		}
		onPropertyNotifyListeners ~= dlg;
	}
	extern(C) static void callBackPropertyNotify(GtkWidget* widgetStruct, GdkEventProperty* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventProperty*, Widget) dlg ; widget.onPropertyNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventProximity*, Widget)[] onProximityInListeners;
	void addOnProximityIn(gboolean delegate(GdkEventProximity*, Widget) dlg)
	{
		if ( !("proximity-in-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"proximity-in-event",
			cast(GCallback)&callBackProximityIn,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["proximity-in-event"] = 1;
		}
		onProximityInListeners ~= dlg;
	}
	extern(C) static void callBackProximityIn(GtkWidget* widgetStruct, GdkEventProximity* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventProximity*, Widget) dlg ; widget.onProximityInListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventProximity*, Widget)[] onProximityOutListeners;
	void addOnProximityOut(gboolean delegate(GdkEventProximity*, Widget) dlg)
	{
		if ( !("proximity-out-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"proximity-out-event",
			cast(GCallback)&callBackProximityOut,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["proximity-out-event"] = 1;
		}
		onProximityOutListeners ~= dlg;
	}
	extern(C) static void callBackProximityOut(GtkWidget* widgetStruct, GdkEventProximity* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventProximity*, Widget) dlg ; widget.onProximityOutListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onRealizeListeners;
	void addOnRealize(void delegate(Widget) dlg)
	{
		if ( !("realize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"realize",
			cast(GCallback)&callBackRealize,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["realize"] = 1;
		}
		onRealizeListeners ~= dlg;
	}
	extern(C) static void callBackRealize(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onRealizeListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	void delegate(Screen, Widget)[] onScreenChangedListeners;
	void addOnScreenChanged(void delegate(Screen, Widget) dlg)
	{
		if ( !("screen-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"screen-changed",
			cast(GCallback)&callBackScreenChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["screen-changed"] = 1;
		}
		onScreenChangedListeners ~= dlg;
	}
	extern(C) static void callBackScreenChanged(GtkWidget* widgetStruct, GdkScreen* arg1, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Screen, Widget) dlg ; widget.onScreenChangedListeners )
		{
			dlg(new Screen(arg1), widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventScroll*, Widget)[] onScrollListeners;
	void addOnScroll(gboolean delegate(GdkEventScroll*, Widget) dlg)
	{
		if ( !("scroll-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"scroll-event",
			cast(GCallback)&callBackScroll,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["scroll-event"] = 1;
		}
		onScrollListeners ~= dlg;
	}
	extern(C) static void callBackScroll(GtkWidget* widgetStruct, GdkEventScroll* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventScroll*, Widget) dlg ; widget.onScrollListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventSelection*, Widget)[] onSelectionClearListeners;
	void addOnSelectionClear(gboolean delegate(GdkEventSelection*, Widget) dlg)
	{
		if ( !("selection-clear-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-clear-event",
			cast(GCallback)&callBackSelectionClear,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["selection-clear-event"] = 1;
		}
		onSelectionClearListeners ~= dlg;
	}
	extern(C) static void callBackSelectionClear(GtkWidget* widgetStruct, GdkEventSelection* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventSelection*, Widget) dlg ; widget.onSelectionClearListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkSelectionData*, guint, guint, Widget)[] onSelectionGetListeners;
	void addOnSelectionGet(void delegate(GtkSelectionData*, guint, guint, Widget) dlg)
	{
		if ( !("selection-get" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-get",
			cast(GCallback)&callBackSelectionGet,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["selection-get"] = 1;
		}
		onSelectionGetListeners ~= dlg;
	}
	extern(C) static void callBackSelectionGet(GtkWidget* widgetStruct, GtkSelectionData* data, guint info, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkSelectionData*, guint, guint, Widget) dlg ; widget.onSelectionGetListeners )
		{
			dlg(data, info, time, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventSelection*, Widget)[] onSelectionNotifyListeners;
	void addOnSelectionNotify(gboolean delegate(GdkEventSelection*, Widget) dlg)
	{
		if ( !("selection-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-notify-event",
			cast(GCallback)&callBackSelectionNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["selection-notify-event"] = 1;
		}
		onSelectionNotifyListeners ~= dlg;
	}
	extern(C) static void callBackSelectionNotify(GtkWidget* widgetStruct, GdkEventSelection* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventSelection*, Widget) dlg ; widget.onSelectionNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkSelectionData*, guint, Widget)[] onSelectionReceivedListeners;
	void addOnSelectionReceived(void delegate(GtkSelectionData*, guint, Widget) dlg)
	{
		if ( !("selection-received" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-received",
			cast(GCallback)&callBackSelectionReceived,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["selection-received"] = 1;
		}
		onSelectionReceivedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionReceived(GtkWidget* widgetStruct, GtkSelectionData* data, guint time, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkSelectionData*, guint, Widget) dlg ; widget.onSelectionReceivedListeners )
		{
			dlg(data, time, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventSelection*, Widget)[] onSelectionRequestListeners;
	void addOnSelectionRequest(gboolean delegate(GdkEventSelection*, Widget) dlg)
	{
		if ( !("selection-request-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-request-event",
			cast(GCallback)&callBackSelectionRequest,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["selection-request-event"] = 1;
		}
		onSelectionRequestListeners ~= dlg;
	}
	extern(C) static void callBackSelectionRequest(GtkWidget* widgetStruct, GdkEventSelection* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventSelection*, Widget) dlg ; widget.onSelectionRequestListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onShowListeners;
	void addOnShow(void delegate(Widget) dlg)
	{
		if ( !("show" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show",
			cast(GCallback)&callBackShow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["show"] = 1;
		}
		onShowListeners ~= dlg;
	}
	extern(C) static void callBackShow(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onShowListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkWidgetHelpType, Widget)[] onShowHelpListeners;
	void addOnShowHelp(gboolean delegate(GtkWidgetHelpType, Widget) dlg)
	{
		if ( !("show-help" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-help",
			cast(GCallback)&callBackShowHelp,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["show-help"] = 1;
		}
		onShowHelpListeners ~= dlg;
	}
	extern(C) static void callBackShowHelp(GtkWidget* widgetStruct, GtkWidgetHelpType arg1, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkWidgetHelpType, Widget) dlg ; widget.onShowHelpListeners )
		{
			dlg(arg1, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkAllocation*, Widget)[] onSizeAllocateListeners;
	void addOnSizeAllocate(void delegate(GtkAllocation*, Widget) dlg)
	{
		if ( !("size-allocate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-allocate",
			cast(GCallback)&callBackSizeAllocate,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["size-allocate"] = 1;
		}
		onSizeAllocateListeners ~= dlg;
	}
	extern(C) static void callBackSizeAllocate(GtkWidget* widgetStruct, GtkAllocation* allocation, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkAllocation*, Widget) dlg ; widget.onSizeAllocateListeners )
		{
			dlg(allocation, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkRequisition*, Widget)[] onSizeRequestListeners;
	void addOnSizeRequest(void delegate(GtkRequisition*, Widget) dlg)
	{
		if ( !("size-request" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-request",
			cast(GCallback)&callBackSizeRequest,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["size-request"] = 1;
		}
		onSizeRequestListeners ~= dlg;
	}
	extern(C) static void callBackSizeRequest(GtkWidget* widgetStruct, GtkRequisition* requisition, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkRequisition*, Widget) dlg ; widget.onSizeRequestListeners )
		{
			dlg(requisition, widget);
		}
		
		return consumed;
	}
	
	void delegate(GtkStateType, Widget)[] onStateChangedListeners;
	void addOnStateChanged(void delegate(GtkStateType, Widget) dlg)
	{
		if ( !("state-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"state-changed",
			cast(GCallback)&callBackStateChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["state-changed"] = 1;
		}
		onStateChangedListeners ~= dlg;
	}
	extern(C) static void callBackStateChanged(GtkWidget* widgetStruct, GtkStateType state, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkStateType, Widget) dlg ; widget.onStateChangedListeners )
		{
			dlg(state, widget);
		}
		
		return consumed;
	}
	
	void delegate(Style, Widget)[] onStyleSetListeners;
	void addOnStyleSet(void delegate(Style, Widget) dlg)
	{
		if ( !("style-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"style-set",
			cast(GCallback)&callBackStyleSet,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["style-set"] = 1;
		}
		onStyleSetListeners ~= dlg;
	}
	extern(C) static void callBackStyleSet(GtkWidget* widgetStruct, GtkStyle* previousStyle, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Style, Widget) dlg ; widget.onStyleSetListeners )
		{
			dlg(new Style(previousStyle), widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onUnmapListeners;
	void addOnUnmap(void delegate(Widget) dlg)
	{
		if ( !("unmap" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unmap",
			cast(GCallback)&callBackUnmap,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["unmap"] = 1;
		}
		onUnmapListeners ~= dlg;
	}
	extern(C) static void callBackUnmap(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onUnmapListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(Event, Widget)[] onUnmapEventListeners;
	void addOnUnmapEvent(gboolean delegate(Event, Widget) dlg)
	{
		if ( !("unmap-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unmap-event",
			cast(GCallback)&callBackUnmapEvent,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["unmap-event"] = 1;
		}
		onUnmapEventListeners ~= dlg;
	}
	extern(C) static void callBackUnmapEvent(GtkWidget* widgetStruct, GdkEvent* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(Event, Widget) dlg ; widget.onUnmapEventListeners )
		{
			dlg(new Event(event), widget);
		}
		
		return consumed;
	}
	
	void delegate(Widget)[] onUnrealizeListeners;
	void addOnUnrealize(void delegate(Widget) dlg)
	{
		if ( !("unrealize" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unrealize",
			cast(GCallback)&callBackUnrealize,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["unrealize"] = 1;
		}
		onUnrealizeListeners ~= dlg;
	}
	extern(C) static void callBackUnrealize(GtkWidget* widgetStruct, Widget widget)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget) dlg ; widget.onUnrealizeListeners )
		{
			dlg(widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventVisibility*, Widget)[] onVisibilityNotifyListeners;
	void addOnVisibilityNotify(gboolean delegate(GdkEventVisibility*, Widget) dlg)
	{
		if ( !("visibility-notify-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"visibility-notify-event",
			cast(GCallback)&callBackVisibilityNotify,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["visibility-notify-event"] = 1;
		}
		onVisibilityNotifyListeners ~= dlg;
	}
	extern(C) static void callBackVisibilityNotify(GtkWidget* widgetStruct, GdkEventVisibility* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventVisibility*, Widget) dlg ; widget.onVisibilityNotifyListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEventWindowState*, Widget)[] onWindowStateListeners;
	void addOnWindowState(gboolean delegate(GdkEventWindowState*, Widget) dlg)
	{
		if ( !("window-state-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"window-state-event",
			cast(GCallback)&callBackWindowState,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["window-state-event"] = 1;
		}
		onWindowStateListeners ~= dlg;
	}
	extern(C) static void callBackWindowState(GtkWidget* widgetStruct, GdkEventWindowState* event, Widget widget)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEventWindowState*, Widget) dlg ; widget.onWindowStateListeners )
		{
			dlg(event, widget);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * This is a convenience function for creating a widget and setting
	 * its properties in one go. For example you might write:
	 * gtk_widget_new (GTK_TYPE_LABEL, "label", "Hello World", "xalign",
	 * 0.0, NULL) to create a left-aligned label. Equivalent to
	 * g_object_new(), but returns a widget so you don't have to
	 * cast the object yourself.
	 * type:
	 *  type ID of the widget to create
	 * first_property_name:
	 *  name of first property to set
	 * ...:
	 *  value of first property, followed by more properties, NULL-terminated
	 * Returns:
	 *  a new GtkWidget of type widget_type
	 */
	public this (GType type, char[] firstPropertyName, ... )
	{
		// GtkWidget* gtk_widget_new (GType type,  const gchar *first_property_name,  ...);
		this(cast(GtkWidget*)gtk_widget_new(type, Str.toStringz(firstPropertyName)) );
	}
	
	
	/**
	 * Inverse of gtk_widget_ref(). Equivalent to g_object_unref().
	 * widget:
	 *  a GtkWidget
	 */
	public void unref()
	{
		// void gtk_widget_unref (GtkWidget *widget);
		gtk_widget_unref(gtkWidget);
	}
	
	/**
	 * Destroys a widget. Equivalent to gtk_object_destroy(), except that
	 * you don't have to cast the widget to GtkObject. When a widget is
	 * destroyed, it will break any references it holds to other objects.
	 * If the widget is inside a container, the widget will be removed
	 * from the container. If the widget is a toplevel (derived from
	 * GtkWindow), it will be removed from the list of toplevels, and the
	 * reference GTK+ holds to it will be removed. Removing a
	 * widget from its container or the list of toplevels results in the
	 * widget being finalized, unless you've added additional references
	 * to the widget with g_object_ref().
	 * In most cases, only toplevel widgets (windows) require explicit
	 * destruction, because when you destroy a toplevel its children will
	 * be destroyed as well.
	 * widget:
	 *  a GtkWidget
	 */
	public void destroy()
	{
		// void gtk_widget_destroy (GtkWidget *widget);
		gtk_widget_destroy(gtkWidget);
	}
	
	/**
	 * This function sets *widget_pointer to NULL if widget_pointer !=
	 * NULL. It's intended to be used as a callback connected to the
	 * "destroy" signal of a widget. You connect gtk_widget_destroyed()
	 * as a signal handler, and pass the address of your widget variable
	 * as user data. Then when the widget is destroyed, the variable will
	 * be set to NULL. Useful for example to avoid multiple copies
	 * of the same dialog.
	 * widget:
	 *  a GtkWidget
	 * widget_pointer:
	 *  address of a variable that contains widget
	 */
	public void destroyed(GtkWidget** widgetPointer)
	{
		// void gtk_widget_destroyed (GtkWidget *widget,  GtkWidget **widget_pointer);
		gtk_widget_destroyed(gtkWidget, widgetPointer);
	}
	
	/**
	 * Warning
	 * gtk_widget_set is deprecated and should not be used in newly-written code.
	 * Like g_object_set() - there's no reason to use this instead of
	 * g_object_set().
	 * widget:
	 *  a GtkWidget
	 * first_property_name:
	 *  name of first property to set
	 * ...:
	 *  value of first property, followed by more properties, NULL-terminated
	 */
	public void set(char[] firstPropertyName, ... )
	{
		// void gtk_widget_set (GtkWidget *widget,  const gchar *first_property_name,  ...);
		gtk_widget_set(gtkWidget, Str.toStringz(firstPropertyName));
	}
	
	/**
	 * This function is only for use in widget implementations.
	 * Should be called by implementations of the remove method
	 * on GtkContainer, to dissociate a child from the container.
	 * widget:
	 *  a GtkWidget
	 */
	public void unparent()
	{
		// void gtk_widget_unparent (GtkWidget *widget);
		gtk_widget_unparent(gtkWidget);
	}
	
	/**
	 * Flags a widget to be displayed. Any widget that isn't shown will
	 * not appear on the screen. If you want to show all the widgets in a
	 * container, it's easier to call gtk_widget_show_all() on the
	 * container, instead of individually showing the widgets.
	 * Remember that you have to show the containers containing a widget,
	 * in addition to the widget itself, before it will appear onscreen.
	 * When a toplevel container is shown, it is immediately realized and
	 * mapped; other shown widgets are realized and mapped when their
	 * toplevel container is realized and mapped.
	 * widget:
	 *  a GtkWidget
	 */
	public void show()
	{
		// void gtk_widget_show (GtkWidget *widget);
		gtk_widget_show(gtkWidget);
	}
	
	/**
	 * Shows a widget. If the widget is an unmapped toplevel widget
	 * (i.e. a GtkWindow that has not yet been shown), enter the main
	 * loop and wait for the window to actually be mapped. Be careful;
	 * because the main loop is running, anything can happen during
	 * this function.
	 * widget:
	 *  a GtkWidget
	 */
	public void showNow()
	{
		// void gtk_widget_show_now (GtkWidget *widget);
		gtk_widget_show_now(gtkWidget);
	}
	
	/**
	 * Reverses the effects of gtk_widget_show(), causing the widget to be
	 * hidden (invisible to the user).
	 * widget:
	 *  a GtkWidget
	 */
	public void hide()
	{
		// void gtk_widget_hide (GtkWidget *widget);
		gtk_widget_hide(gtkWidget);
	}
	
	/**
	 * Recursively shows a widget, and any child widgets (if the widget is
	 * a container).
	 * widget:
	 *  a GtkWidget
	 */
	public void showAll()
	{
		// void gtk_widget_show_all (GtkWidget *widget);
		gtk_widget_show_all(gtkWidget);
	}
	
	/**
	 * Recursively hides a widget and any child widgets.
	 * widget:
	 *  a GtkWidget
	 */
	public void hideAll()
	{
		// void gtk_widget_hide_all (GtkWidget *widget);
		gtk_widget_hide_all(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations. Causes
	 * a widget to be mapped if it isn't already.
	 * widget:
	 *  a GtkWidget
	 */
	public void map()
	{
		// void gtk_widget_map (GtkWidget *widget);
		gtk_widget_map(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations. Causes
	 * a widget to be unmapped if it's currently mapped.
	 * widget:
	 *  a GtkWidget
	 */
	public void unmap()
	{
		// void gtk_widget_unmap (GtkWidget *widget);
		gtk_widget_unmap(gtkWidget);
	}
	
	/**
	 * Creates the GDK (windowing system) resources associated with a
	 * widget. For example, widget->window will be created when a widget
	 * is realized. Normally realization happens implicitly; if you show
	 * a widget and all its parent containers, then the widget will be
	 * realized and mapped automatically.
	 * Realizing a widget requires all
	 * the widget's parent widgets to be realized; calling
	 * gtk_widget_realize() realizes the widget's parents in addition to
	 * widget itself. If a widget is not yet inside a toplevel window
	 * when you realize it, bad things will happen.
	 * This function is primarily used in widget implementations, and
	 * isn't very useful otherwise. Many times when you think you might
	 * need it, a better approach is to connect to a signal that will be
	 * called after the widget is realized automatically, such as
	 * "expose_event". Or simply g_signal_connect_after() to the
	 * "realize" signal.
	 * widget:
	 *  a GtkWidget
	 */
	public void realize()
	{
		// void gtk_widget_realize (GtkWidget *widget);
		gtk_widget_realize(gtkWidget);
	}
	
	/**
	 * This function is only useful in widget implementations.
	 * Causes a widget to be unrealized (frees all GDK resources
	 * associated with the widget, such as widget->window).
	 * widget:
	 *  a GtkWidget
	 */
	public void unrealize()
	{
		// void gtk_widget_unrealize (GtkWidget *widget);
		gtk_widget_unrealize(gtkWidget);
	}
	
	/**
	 * Equivalent to calling gtk_widget_queue_draw_area() for the
	 * entire area of a widget.
	 * widget:
	 *  a GtkWidget
	 */
	public void queueDraw()
	{
		// void gtk_widget_queue_draw (GtkWidget *widget);
		gtk_widget_queue_draw(gtkWidget);
	}
	
	/**
	 * This function is only for use in widget implementations.
	 * Flags a widget to have its size renegotiated; should
	 * be called when a widget for some reason has a new size request.
	 * For example, when you change the text in a GtkLabel, GtkLabel
	 * queues a resize to ensure there's enough space for the new text.
	 * widget:
	 *  a GtkWidget
	 */
	public void queueResize()
	{
		// void gtk_widget_queue_resize (GtkWidget *widget);
		gtk_widget_queue_resize(gtkWidget);
	}
	
	/**
	 * This function works like gtk_widget_queue_resize(), except that the
	 * widget is not invalidated.
	 * widget:
	 *  a GtkWidget
	 * Since 2.4
	 */
	public void queueResizeNoRedraw()
	{
		// void gtk_widget_queue_resize_no_redraw  (GtkWidget *widget);
		gtk_widget_queue_resize_no_redraw(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_draw is deprecated and should not be used in newly-written code.
	 * In GTK+ 1.2, this function would immediately render the
	 * region area of a widget, by invoking the virtual draw method of a
	 * widget. In GTK+ 2.0, the draw method is gone, and instead
	 * gtk_widget_draw() simply invalidates the specified region of the
	 * widget, then updates the invalid region of the widget immediately.
	 * Usually you don't want to update the region immediately for
	 * performance reasons, so in general gtk_widget_queue_draw_area() is
	 * a better choice if you want to draw a region of a widget.
	 * widget:
	 *  a GtkWidget
	 * area:
	 *  area to draw
	 */
	public void draw(Rectangle area)
	{
		// void gtk_widget_draw (GtkWidget *widget,  GdkRectangle *area);
		gtk_widget_draw(gtkWidget, (area is null) ? null : area.getRectangleStruct());
	}
	
	/**
	 * This function is typically used when implementing a GtkContainer
	 * subclass. Obtains the preferred size of a widget. The container
	 * uses this information to arrange its child widgets and decide what
	 * size allocations to give them with gtk_widget_size_allocate().
	 * You can also call this function from an application, with some
	 * caveats. Most notably, getting a size request requires the widget
	 * to be associated with a screen, because font information may be
	 * needed. Multihead-aware applications should keep this in mind.
	 * Also remember that the size request is not necessarily the size
	 * a widget will actually be allocated.
	 * See also gtk_widget_get_child_requisition().
	 * widget:
	 *  a GtkWidget
	 * requisition:
	 *  a GtkRequisition to be filled in
	 */
	public void sizeRequest(GtkRequisition* requisition)
	{
		// void gtk_widget_size_request (GtkWidget *widget,  GtkRequisition *requisition);
		gtk_widget_size_request(gtkWidget, requisition);
	}
	
	/**
	 * This function is only for use in widget implementations. Obtains
	 * widget->requisition, unless someone has forced a particular
	 * geometry on the widget (e.g. with gtk_widget_set_usize()), in which
	 * case it returns that geometry instead of the widget's requisition.
	 * This function differs from gtk_widget_size_request() in that
	 * it retrieves the last size request value from widget->requisition,
	 * while gtk_widget_size_request() actually calls the "size_request" method
	 * on widget to compute the size request and fill in widget->requisition,
	 * and only then returns widget->requisition.
	 * Because this function does not call the "size_request" method, it
	 * can only be used when you know that widget->requisition is
	 * up-to-date, that is, gtk_widget_size_request() has been called
	 * since the last time a resize was queued. In general, only container
	 * implementations have this information; applications should use
	 * gtk_widget_size_request().
	 * widget:
	 *  a GtkWidget
	 * requisition:
	 *  a GtkRequisition to be filled in
	 */
	public void getChildRequisition(GtkRequisition* requisition)
	{
		// void gtk_widget_get_child_requisition  (GtkWidget *widget,  GtkRequisition *requisition);
		gtk_widget_get_child_requisition(gtkWidget, requisition);
	}
	
	/**
	 * This function is only used by GtkContainer subclasses, to assign a size
	 * and position to their child widgets.
	 * widget:
	 *  a GtkWidget
	 * allocation:
	 *  position and size to be allocated to widget
	 */
	public void sizeAllocate(GtkAllocation* allocation)
	{
		// void gtk_widget_size_allocate (GtkWidget *widget,  GtkAllocation *allocation);
		gtk_widget_size_allocate(gtkWidget, allocation);
	}
	
	/**
	 * Installs an accelerator for this widget in accel_group that causes
	 * accel_signal to be emitted if the accelerator is activated.
	 * The accel_group needs to be added to the widget's toplevel via
	 * gtk_window_add_accel_group(), and the signal must be of type G_RUN_ACTION.
	 * Accelerators added through this function are not user changeable during
	 * runtime. If you want to support accelerators that can be changed by the
	 * user, use gtk_accel_map_add_entry() and gtk_widget_set_accel_path() or
	 * gtk_menu_item_set_accel_path() instead.
	 * widget:
	 *  widget to install an accelerator on
	 * accel_signal:
	 *  widget signal to emit on accelerator activation
	 * accel_group:
	 *  accel group for this widget, added to its toplevel
	 * accel_key:
	 *  GDK keyval of the accelerator
	 * accel_mods:
	 *  modifier key combination of the accelerator
	 * accel_flags:
	 *  flag accelerators, e.g. GTK_ACCEL_VISIBLE
	 */
	public void addAccelerator(char[] accelSignal, AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags)
	{
		// void gtk_widget_add_accelerator (GtkWidget *widget,  const gchar *accel_signal,  GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods,  GtkAccelFlags accel_flags);
		gtk_widget_add_accelerator(gtkWidget, Str.toStringz(accelSignal), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods, accelFlags);
	}
	
	/**
	 * Removes an accelerator from widget, previously installed with
	 * gtk_widget_add_accelerator().
	 * widget:
	 *  widget to install an accelerator on
	 * accel_group:
	 *  accel group for this widget
	 * accel_key:
	 *  GDK keyval of the accelerator
	 * accel_mods:
	 *  modifier key combination of the accelerator
	 * Returns:
	 *  whether an accelerator was installed and could be removed
	 */
	public int removeAccelerator(AccelGroup accelGroup, uint accelKey, GdkModifierType accelMods)
	{
		// gboolean gtk_widget_remove_accelerator (GtkWidget *widget,  GtkAccelGroup *accel_group,  guint accel_key,  GdkModifierType accel_mods);
		return gtk_widget_remove_accelerator(gtkWidget, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), accelKey, accelMods);
	}
	
	/**
	 * Given an accelerator group, accel_group, and an accelerator path,
	 * accel_path, sets up an accelerator in accel_group so whenever the
	 * key binding that is defined for accel_path is pressed, widget
	 * will be activated. This removes any accelerators (for any
	 * accelerator group) installed by previous calls to
	 * gtk_widget_set_accel_path(). Associating accelerators with
	 * paths allows them to be modified by the user and the modifications
	 * to be saved for future use. (See gtk_accel_map_save().)
	 * This function is a low level function that would most likely
	 * be used by a menu creation system like GtkItemFactory. If you
	 * use GtkItemFactory, setting up accelerator paths will be done
	 * automatically.
	 * Even when you you aren't using GtkItemFactory, if you only want to
	 * set up accelerators on menu items gtk_menu_item_set_accel_path()
	 * provides a somewhat more convenient interface.
	 * widget:
	 *  a GtkWidget
	 * accel_path:
	 *  path used to look up the accelerator
	 * accel_group:
	 *  a GtkAccelGroup.
	 */
	public void setAccelPath(char[] accelPath, AccelGroup accelGroup)
	{
		// void gtk_widget_set_accel_path (GtkWidget *widget,  const gchar *accel_path,  GtkAccelGroup *accel_group);
		gtk_widget_set_accel_path(gtkWidget, Str.toStringz(accelPath), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Lists the closures used by widget for accelerator group connections
	 * with gtk_accel_group_connect_by_path() or gtk_accel_group_connect().
	 * The closures can be used to monitor accelerator changes on widget,
	 * by connecting to the ::accel_changed signal of the GtkAccelGroup of a
	 * closure which can be found out with gtk_accel_group_from_accel_closure().
	 * widget:
	 *  widget to list accelerator closures for
	 * Returns:
	 *  a newly allocated GList of closures
	 */
	public ListG listAccelClosures()
	{
		// GList* gtk_widget_list_accel_closures (GtkWidget *widget);
		return new ListG( gtk_widget_list_accel_closures(gtkWidget) );
	}
	
	/**
	 * Determines whether an accelerator that activates the signal
	 * identified by signal_id can currently be activated.
	 * This is done by emitting the GtkWidget::can-activate-accel
	 * signal on widget; if the signal isn't overridden by a
	 * handler or in a derived widget, then the default check is
	 * that the widget must be sensitive, and the widget and all
	 * its ancestors mapped.
	 * widget:
	 *  a GtkWidget
	 * signal_id:
	 *  the ID of a signal installed on widget
	 * Returns:
	 *  TRUE if the accelerator can be activated.
	 * Since 2.4
	 */
	public int canActivateAccel(uint signalId)
	{
		// gboolean gtk_widget_can_activate_accel (GtkWidget *widget,  guint signal_id);
		return gtk_widget_can_activate_accel(gtkWidget, signalId);
	}
	
	/**
	 * Rarely-used function. This function is used to emit
	 * the event signals on a widget (those signals should never
	 * be emitted without using this function to do so).
	 * If you want to synthesize an event though, don't use this function;
	 * instead, use gtk_main_do_event() so the event will behave as if
	 * it were in the event queue. Don't synthesize expose events; instead,
	 * use gdk_window_invalidate_rect() to invalidate a region of the
	 * window.
	 * widget:
	 *  a GtkWidget
	 * event:
	 *  a GdkEvent
	 * Returns:
	 *  return from the event signal emission (TRUE if the event was handled)
	 */
	public int event(Event event)
	{
		// gboolean gtk_widget_event (GtkWidget *widget,  GdkEvent *event);
		return gtk_widget_event(gtkWidget, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * For widgets that can be "activated" (buttons, menu items, etc.)
	 * this function activates them. Activation is what happens when you
	 * press Enter on a widget during key navigation. If widget isn't
	 * activatable, the function returns FALSE.
	 * widget:
	 *  a GtkWidget that's activatable
	 * Returns:
	 *  TRUE if the widget was activatable
	 */
	public int activate()
	{
		// gboolean gtk_widget_activate (GtkWidget *widget);
		return gtk_widget_activate(gtkWidget);
	}
	
	/**
	 * Moves a widget from one GtkContainer to another, handling reference
	 * count issues to avoid destroying the widget.
	 * widget:
	 *  a GtkWidget
	 * new_parent:
	 *  a GtkContainer to move the widget into
	 */
	public void reparent(GtkWidget* newParent)
	{
		// void gtk_widget_reparent (GtkWidget *widget,  GtkWidget *new_parent);
		gtk_widget_reparent(gtkWidget, newParent);
	}
	
	/**
	 * Computes the intersection of a widget's area and area, storing
	 * the intersection in intersection, and returns TRUE if there was
	 * an intersection. intersection may be NULL if you're only
	 * interested in whether there was an intersection.
	 * widget:
	 *  a GtkWidget
	 * area:
	 *  a rectangle
	 * intersection:
	 *  rectangle to store intersection of widget and area
	 * Returns:
	 *  TRUE if there was an intersection
	 */
	public int intersect(Rectangle area, Rectangle intersection)
	{
		// gboolean gtk_widget_intersect (GtkWidget *widget,  GdkRectangle *area,  GdkRectangle *intersection);
		return gtk_widget_intersect(gtkWidget, (area is null) ? null : area.getRectangleStruct(), (intersection is null) ? null : intersection.getRectangleStruct());
	}
	
	/**
	 * Determines if the widget is the focus widget within its
	 * toplevel. (This does not mean that the HAS_FOCUS flag is
	 * necessarily set; HAS_FOCUS will only be set if the
	 * toplevel widget additionally has the global input focus.)
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  TRUE if the widget is the focus widget.
	 */
	public int isFocus()
	{
		// gboolean gtk_widget_is_focus (GtkWidget *widget);
		return gtk_widget_is_focus(gtkWidget);
	}
	
	/**
	 * Causes widget to have the keyboard focus for the GtkWindow it's
	 * inside. widget must be a focusable widget, such as a GtkEntry;
	 * something like GtkFrame won't work. (More precisely, it must have the
	 * GTK_CAN_FOCUS flag set.)
	 * widget:
	 *  a GtkWidget
	 */
	public void grabFocus()
	{
		// void gtk_widget_grab_focus (GtkWidget *widget);
		gtk_widget_grab_focus(gtkWidget);
	}
	
	/**
	 * Causes widget to become the default widget. widget must have the
	 * GTK_CAN_DEFAULT flag set; typically you have to set this flag
	 * yourself by calling GTK_WIDGET_SET_FLAGS (widget,
	 * GTK_CAN_DEFAULT). The default widget is activated when the user
	 * presses Enter in a window. Default widgets must be activatable,
	 * that is, gtk_widget_activate() should affect them.
	 * widget:
	 *  a GtkWidget
	 */
	public void grabDefault()
	{
		// void gtk_widget_grab_default (GtkWidget *widget);
		gtk_widget_grab_default(gtkWidget);
	}
	
	/**
	 * Widgets can be named, which allows you to refer to them from a
	 * gtkrc file. You can apply a style to widgets with a particular name
	 * in the gtkrc file. See the documentation for gtkrc files (on the
	 * same page as the docs for GtkRcStyle).
	 * Note that widget names are separated by periods in paths (see
	 * gtk_widget_path()), so names with embedded periods may cause confusion.
	 * widget:
	 *  a GtkWidget
	 * name:
	 *  name for the widget
	 */
	public void setName(char[] name)
	{
		// void gtk_widget_set_name (GtkWidget *widget,  const gchar *name);
		gtk_widget_set_name(gtkWidget, Str.toStringz(name));
	}
	
	/**
	 * Retrieves the name of a widget. See gtk_widget_set_name() for the
	 * significance of widget names.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  name of the widget. This string is owned by GTK+ and
	 * should not be modified or freed
	 */
	public char[] getName()
	{
		// const gchar* gtk_widget_get_name (GtkWidget *widget);
		return Str.toString(gtk_widget_get_name(gtkWidget) );
	}
	
	/**
	 * This function is for use in widget implementations. Sets the state
	 * of a widget (insensitive, prelighted, etc.) Usually you should set
	 * the state using wrapper functions such as gtk_widget_set_sensitive().
	 * widget:
	 *  a GtkWidget
	 * state:
	 *  new state for widget
	 */
	public void setState(GtkStateType state)
	{
		// void gtk_widget_set_state (GtkWidget *widget,  GtkStateType state);
		gtk_widget_set_state(gtkWidget, state);
	}
	
	/**
	 * Sets the sensitivity of a widget. A widget is sensitive if the user
	 * can interact with it. Insensitive widgets are "grayed out" and the
	 * user can't interact with them. Insensitive widgets are known as
	 * "inactive", "disabled", or "ghosted" in some other toolkits.
	 * widget:
	 *  a GtkWidget
	 * sensitive:
	 *  TRUE to make the widget sensitive
	 */
	public void setSensitive(int sensitive)
	{
		// void gtk_widget_set_sensitive (GtkWidget *widget,  gboolean sensitive);
		gtk_widget_set_sensitive(gtkWidget, sensitive);
	}
	
	/**
	 * This function is useful only when implementing subclasses of GtkContainer.
	 * Sets the container as the parent of widget, and takes care of
	 * some details such as updating the state and style of the child
	 * to reflect its new location. The opposite function is
	 * gtk_widget_unparent().
	 * widget:
	 *  a GtkWidget
	 * parent:
	 *  parent container
	 */
	public void setParent(GtkWidget* parent)
	{
		// void gtk_widget_set_parent (GtkWidget *widget,  GtkWidget *parent);
		gtk_widget_set_parent(gtkWidget, parent);
	}
	
	/**
	 * Sets a non default parent window for widget.
	 * widget:
	 *  a GtkWidget.
	 * parent_window:
	 *  the new parent window.
	 */
	public void setParentWindow(Window parentWindow)
	{
		// void gtk_widget_set_parent_window (GtkWidget *widget,  GdkWindow *parent_window);
		gtk_widget_set_parent_window(gtkWidget, (parentWindow is null) ? null : parentWindow.getWindowStruct());
	}
	
	/**
	 * Gets widget's parent window.
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  the parent window of widget.
	 */
	public Window getParentWindow()
	{
		// GdkWindow* gtk_widget_get_parent_window (GtkWidget *widget);
		return new Window( gtk_widget_get_parent_window(gtkWidget) );
	}
	
	/**
	 * Warning
	 * gtk_widget_set_uposition is deprecated and should not be used in newly-written code.
	 * Sets the position of a widget. The funny "u" in the name comes from
	 * the "user position" hint specified by the X Window System, and
	 * exists for legacy reasons. This function doesn't work if a widget
	 * is inside a container; it's only really useful on GtkWindow.
	 * Don't use this function to center dialogs over the main application
	 * window; most window managers will do the centering on your behalf
	 * if you call gtk_window_set_transient_for(), and it's really not
	 * possible to get the centering to work correctly in all cases from
	 * application code. But if you insist, use gtk_window_set_position()
	 * to set GTK_WIN_POS_CENTER_ON_PARENT, don't do the centering
	 * manually.
	 * Note that although x and y can be individually unset, the position
	 * is not honoured unless both x and y are set.
	 * widget:
	 *  a GtkWidget
	 * x:
	 *  x position; -1 to unset x; -2 to leave x unchanged
	 * y:
	 *  y position; -1 to unset y; -2 to leave y unchanged
	 */
	public void setUposition(int x, int y)
	{
		// void gtk_widget_set_uposition (GtkWidget *widget,  gint x,  gint y);
		gtk_widget_set_uposition(gtkWidget, x, y);
	}
	
	/**
	 * Warning
	 * gtk_widget_set_usize is deprecated and should not be used in newly-written code.
	 * Sets the minimum size of a widget; that is, the widget's size
	 * request will be width by height. You can use this function to
	 * force a widget to be either larger or smaller than it is. The
	 * strange "usize" name dates from the early days of GTK+, and derives
	 * from X Window System terminology. In many cases,
	 * gtk_window_set_default_size() is a better choice for toplevel
	 * windows than this function; setting the default size will still
	 * allow users to shrink the window. Setting the usize will force them
	 * to leave the window at least as large as the usize. When dealing
	 * with window sizes, gtk_window_set_geometry_hints() can be a useful
	 * function as well.
	 * Note the inherent danger of setting any fixed size - themes,
	 * translations into other languages, different fonts, and user action
	 * can all change the appropriate size for a given widget. So, it's
	 * basically impossible to hardcode a size that will always be
	 * correct.
	 * Deprecated: Use gtk_widget_set_size_request() instead.
	 * widget:
	 *  a GtkWidget
	 * width:
	 *  minimum width, or -1 to unset
	 * height:
	 *  minimum height, or -1 to unset
	 */
	public void setUsize(int width, int height)
	{
		// void gtk_widget_set_usize (GtkWidget *widget,  gint width,  gint height);
		gtk_widget_set_usize(gtkWidget, width, height);
	}
	
	/**
	 * Sets the event mask (see GdkEventMask) for a widget. The event
	 * mask determines which events a widget will receive. Keep in mind
	 * that different widgets have different default event masks, and by
	 * changing the event mask you may disrupt a widget's functionality,
	 * so be careful. This function must be called while a widget is
	 * unrealized. Consider gtk_widget_add_events() for widgets that are
	 * already realized, or if you want to preserve the existing event
	 * mask. This function can't be used with GTK_NO_WINDOW widgets;
	 * to get events on those widgets, place them inside a GtkEventBox
	 * and receive events on the event box.
	 * widget:
	 *  a GtkWidget
	 * events:
	 *  event mask
	 */
	public void setEvents(int events)
	{
		// void gtk_widget_set_events (GtkWidget *widget,  gint events);
		gtk_widget_set_events(gtkWidget, events);
	}
	
	/**
	 * Adds the events in the bitfield events to the event mask for
	 * widget. See gtk_widget_set_events() for details.
	 * widget:
	 *  a GtkWidget
	 * events:
	 *  an event mask, see GdkEventMask
	 */
	public void addEvents(int events)
	{
		// void gtk_widget_add_events (GtkWidget *widget,  gint events);
		gtk_widget_add_events(gtkWidget, events);
	}
	
	/**
	 * Sets the extension events mask to mode. See GdkExtensionMode
	 * and gdk_input_set_extension_events().
	 * widget:
	 *  a GtkWidget
	 * mode:
	 *  bitfield of extension events to receive
	 */
	public void setExtensionEvents(GdkExtensionMode mode)
	{
		// void gtk_widget_set_extension_events (GtkWidget *widget,  GdkExtensionMode mode);
		gtk_widget_set_extension_events(gtkWidget, mode);
	}
	
	/**
	 * Retrieves the extension events the widget will receive; see
	 * gdk_input_set_extension_events().
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  extension events for widget
	 */
	public GdkExtensionMode getExtensionEvents()
	{
		// GdkExtensionMode gtk_widget_get_extension_events  (GtkWidget *widget);
		return gtk_widget_get_extension_events(gtkWidget);
	}
	
	/**
	 * This function returns the topmost widget in the container hierarchy
	 * widget is a part of. If widget has no parent widgets, it will be
	 * returned as the topmost widget. No reference will be added to the
	 * returned widget; it should not be unreferenced.
	 * Note the difference in behavior vs. gtk_widget_get_ancestor();
	 * gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)
	 * would return
	 * NULL if widget wasn't inside a toplevel window, and if the
	 * window was inside a GtkWindow-derived widget which was in turn
	 * inside the toplevel GtkWindow. While the second case may
	 * seem unlikely, it actually happens when a GtkPlug is embedded
	 * inside a GtkSocket within the same application.
	 * To reliably find the toplevel GtkWindow, use
	 * gtk_widget_get_toplevel() and check if the TOPLEVEL flags
	 * is set on the result.
	 *  GtkWidget *toplevel = gtk_widget_get_toplevel (widget);
	 *  if (GTK_WIDGET_TOPLEVEL (toplevel))
	 *  {
		 *  [ Perform action on toplevel. ]
	 *  }
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the topmost ancestor of widget, or widget itself if there's no ancestor.
	 */
	public GtkWidget* getToplevel()
	{
		// GtkWidget* gtk_widget_get_toplevel (GtkWidget *widget);
		return gtk_widget_get_toplevel(gtkWidget);
	}
	
	/**
	 * Gets the first ancestor of widget with type widget_type. For example,
	 * gtk_widget_get_ancestor (widget, GTK_TYPE_BOX) gets the
	 * first GtkBox that's
	 * an ancestor of widget. No reference will be added to the returned widget;
	 * it should not be unreferenced. See note about checking for a toplevel
	 * GtkWindow in the docs for gtk_widget_get_toplevel().
	 * Note that unlike gtk_widget_is_ancestor(), gtk_widget_get_ancestor()
	 * considers widget to be an ancestor of itself.
	 * widget:
	 *  a GtkWidget
	 * widget_type:
	 *  ancestor type
	 * Returns:
	 *  the ancestor widget, or NULL if not found
	 */
	public GtkWidget* getAncestor(GType widgetType)
	{
		// GtkWidget* gtk_widget_get_ancestor (GtkWidget *widget,  GType widget_type);
		return gtk_widget_get_ancestor(gtkWidget, widgetType);
	}
	
	/**
	 * Gets the colormap that will be used to render widget. No reference will
	 * be added to the returned colormap; it should not be unreferenced.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the colormap used by widget
	 */
	public Colormap getColormap()
	{
		// GdkColormap* gtk_widget_get_colormap (GtkWidget *widget);
		return new Colormap( gtk_widget_get_colormap(gtkWidget) );
	}
	
	/**
	 * Sets the colormap for the widget to the given value. Widget must not
	 * have been previously realized. This probably should only be used
	 * from an init() function (i.e. from the constructor
	 * for the widget).
	 * widget:
	 *  a GtkWidget
	 * colormap:
	 *  a colormap
	 */
	public void setColormap(Colormap colormap)
	{
		// void gtk_widget_set_colormap (GtkWidget *widget,  GdkColormap *colormap);
		gtk_widget_set_colormap(gtkWidget, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Gets the visual that will be used to render widget.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the visual for widget
	 */
	public Visual getVisual()
	{
		// GdkVisual* gtk_widget_get_visual (GtkWidget *widget);
		return new Visual( gtk_widget_get_visual(gtkWidget) );
	}
	
	/**
	 * Returns the event mask for the widget (a bitfield containing flags
	 * from the GdkEventMask enumeration). These are the events that the widget
	 * will receive.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  event mask for widget
	 */
	public int getEvents()
	{
		// gint gtk_widget_get_events (GtkWidget *widget);
		return gtk_widget_get_events(gtkWidget);
	}
	
	/**
	 * Obtains the location of the mouse pointer in widget coordinates.
	 * Widget coordinates are a bit odd; for historical reasons, they are
	 * defined as widget->window coordinates for widgets that are not
	 * GTK_NO_WINDOW widgets, and are relative to widget->allocation.x,
	 * widget->allocation.y for widgets that are GTK_NO_WINDOW widgets.
	 * widget:
	 *  a GtkWidget
	 * x:
	 *  return location for the X coordinate, or NULL
	 * y:
	 *  return location for the Y coordinate, or NULL
	 */
	public void getPointer(int* x, int* y)
	{
		// void gtk_widget_get_pointer (GtkWidget *widget,  gint *x,  gint *y);
		gtk_widget_get_pointer(gtkWidget, x, y);
	}
	
	/**
	 * Determines whether widget is somewhere inside ancestor, possibly with
	 * intermediate containers.
	 * widget:
	 *  a GtkWidget
	 * ancestor:
	 *  another GtkWidget
	 * Returns:
	 *  TRUE if ancestor contains widget as a child, grandchild, great grandchild, etc.
	 */
	public int isAncestor(GtkWidget* ancestor)
	{
		// gboolean gtk_widget_is_ancestor (GtkWidget *widget,  GtkWidget *ancestor);
		return gtk_widget_is_ancestor(gtkWidget, ancestor);
	}
	
	/**
	 * Translate coordinates relative to src_widget's allocation to coordinates
	 * relative to dest_widget's allocations. In order to perform this
	 * operation, both widgets must be realized, and must share a common
	 * toplevel.
	 * src_widget:
	 *  a GtkWidget
	 * dest_widget:
	 *  a GtkWidget
	 * src_x:
	 *  X position relative to src_widget
	 * src_y:
	 *  Y position relative to src_widget
	 * dest_x:
	 *  location to store X position relative to dest_widget
	 * dest_y:
	 *  location to store Y position relative to dest_widget
	 * Returns:
	 *  FALSE if either widget was not realized, or there
	 *  was no common ancestor. In this case, nothing is stored in
	 *  *dest_x and *dest_y. Otherwise TRUE.
	 */
	public int translateCoordinates(GtkWidget* destWidget, int srcX, int srcY, int* destX, int* destY)
	{
		// gboolean gtk_widget_translate_coordinates  (GtkWidget *src_widget,  GtkWidget *dest_widget,  gint src_x,  gint src_y,  gint *dest_x,  gint *dest_y);
		return gtk_widget_translate_coordinates(gtkWidget, destWidget, srcX, srcY, destX, destY);
	}
	
	/**
	 * Utility function; intended to be connected to the "delete_event"
	 * signal on a GtkWindow. The function calls gtk_widget_hide() on its
	 * argument, then returns TRUE. If connected to "delete_event", the
	 * result is that clicking the close button for a window (on the
	 * window frame, top right corner usually) will hide but not destroy
	 * the window. By default, GTK+ destroys windows when "delete_event"
	 * is received.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  TRUE
	 */
	public int hideOnDelete()
	{
		// gboolean gtk_widget_hide_on_delete (GtkWidget *widget);
		return gtk_widget_hide_on_delete(gtkWidget);
	}
	
	/**
	 * Sets the GtkStyle for a widget (widget->style). You probably don't
	 * want to use this function; it interacts badly with themes, because
	 * themes work by replacing the GtkStyle. Instead, use
	 * gtk_widget_modify_style().
	 * widget:
	 *  a GtkWidget
	 * style:
	 *  a GtkStyle, or NULL to remove the effect of a previous
	 *  gtk_widget_set_style() and go back to the default style
	 */
	public void setStyle(Style style)
	{
		// void gtk_widget_set_style (GtkWidget *widget,  GtkStyle *style);
		gtk_widget_set_style(gtkWidget, (style is null) ? null : style.getStyleStruct());
	}
	
	
	/**
	 * Ensures that widget has a style (widget->style). Not a very useful
	 * function; most of the time, if you want the style, the widget is
	 * realized, and realized widgets are guaranteed to have a style
	 * already.
	 * widget:
	 *  a GtkWidget
	 */
	public void ensureStyle()
	{
		// void gtk_widget_ensure_style (GtkWidget *widget);
		gtk_widget_ensure_style(gtkWidget);
	}
	
	/**
	 * Simply an accessor function that returns widget->style.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the widget's GtkStyle
	 */
	public Style getStyle()
	{
		// GtkStyle* gtk_widget_get_style (GtkWidget *widget);
		return new Style( gtk_widget_get_style(gtkWidget) );
	}
	
	
	/**
	 * Reset the styles of widget and all descendents, so when
	 * they are looked up again, they get the correct values
	 * for the currently loaded RC file settings.
	 * This function is not useful for applications.
	 * widget:
	 * a GtkWidget.
	 */
	public void resetRcStyles()
	{
		// void gtk_widget_reset_rc_styles (GtkWidget *widget);
		gtk_widget_reset_rc_styles(gtkWidget);
	}
	
	/**
	 * Pushes cmap onto a global stack of colormaps; the topmost
	 * colormap on the stack will be used to create all widgets.
	 * Remove cmap with gtk_widget_pop_colormap(). There's little
	 * reason to use this function.
	 * cmap:
	 *  a GdkColormap
	 */
	public static void pushColormap(Colormap cmap)
	{
		// void gtk_widget_push_colormap (GdkColormap *cmap);
		gtk_widget_push_colormap((cmap is null) ? null : cmap.getColormapStruct());
	}
	
	/**
	 * Removes a colormap pushed with gtk_widget_push_colormap().
	 */
	public static void popColormap()
	{
		// void gtk_widget_pop_colormap (void);
		gtk_widget_pop_colormap();
	}
	
	/**
	 * Sets the default colormap to use when creating widgets.
	 * gtk_widget_push_colormap() is a better function to use if
	 * you only want to affect a few widgets, rather than all widgets.
	 * colormap:
	 *  a GdkColormap
	 */
	public static void setDefaultColormap(Colormap colormap)
	{
		// void gtk_widget_set_default_colormap (GdkColormap *colormap);
		gtk_widget_set_default_colormap((colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Returns the default style used by all widgets initially.
	 * Returns:
	 *  the default style. This GtkStyle object is owned by GTK+ and
	 * should not be modified or freed.
	 */
	public static Style getDefaultStyle()
	{
		// GtkStyle* gtk_widget_get_default_style (void);
		return new Style( gtk_widget_get_default_style() );
	}
	
	/**
	 * Obtains the default colormap used to create widgets.
	 * Returns:
	 *  default widget colormap
	 */
	public static Colormap getDefaultColormap()
	{
		// GdkColormap* gtk_widget_get_default_colormap  (void);
		return new Colormap( gtk_widget_get_default_colormap() );
	}
	
	/**
	 * Obtains the visual of the default colormap. Not really useful;
	 * used to be useful before gdk_colormap_get_visual() existed.
	 * Returns:
	 *  visual of the default colormap
	 */
	public static Visual getDefaultVisual()
	{
		// GdkVisual* gtk_widget_get_default_visual (void);
		return new Visual( gtk_widget_get_default_visual() );
	}
	
	/**
	 * Sets the reading direction on a particular widget. This direction
	 * controls the primary direction for widgets containing text,
	 * and also the direction in which the children of a container are
	 * packed. The ability to set the direction is present in order
	 * so that correct localization into languages with right-to-left
	 * reading directions can be done. Generally, applications will
	 * let the default reading direction present, except for containers
	 * where the containers are arranged in an order that is explicitely
	 * visual rather than logical (such as buttons for text justification).
	 * If the direction is set to GTK_TEXT_DIR_NONE, then the value
	 * set by gtk_widget_set_default_direction() will be used.
	 * widget:
	 *  a GtkWidget
	 * dir:
	 *  the new direction
	 */
	public void setDirection(GtkTextDirection dir)
	{
		// void gtk_widget_set_direction (GtkWidget *widget,  GtkTextDirection dir);
		gtk_widget_set_direction(gtkWidget, dir);
	}
	
	
	/**
	 * Gets the reading direction for a particular widget. See
	 * gtk_widget_set_direction().
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the reading direction for the widget.
	 */
	public GtkTextDirection getDirection()
	{
		// GtkTextDirection gtk_widget_get_direction (GtkWidget *widget);
		return gtk_widget_get_direction(gtkWidget);
	}
	
	/**
	 * Sets the default reading direction for widgets where the
	 * direction has not been explicitly set by gtk_widget_set_direction().
	 * dir:
	 *  the new default direction. This cannot be
	 *  GTK_TEXT_DIR_NONE.
	 */
	public static void setDefaultDirection(GtkTextDirection dir)
	{
		// void gtk_widget_set_default_direction  (GtkTextDirection dir);
		gtk_widget_set_default_direction(dir);
	}
	
	/**
	 * Obtains the current default reading direction. See
	 * gtk_widget_set_default_direction().
	 * Returns:
	 *  the current default direction.
	 */
	public static GtkTextDirection getDefaultDirection()
	{
		// GtkTextDirection gtk_widget_get_default_direction  (void);
		return gtk_widget_get_default_direction();
	}
	
	/**
	 * Sets a shape for this widget's GDK window. This allows for
	 * transparent windows etc., see gdk_window_shape_combine_mask()
	 * for more information.
	 * widget:
	 *  a GtkWidget.
	 * shape_mask:
	 *  shape to be added, or NULL to remove an existing shape.
	 * offset_x:
	 *  X position of shape mask with respect to window.
	 * offset_y:
	 *  Y position of shape mask with respect to window.
	 */
	public void shapeCombineMask(Bitmap shapeMask, int offsetX, int offsetY)
	{
		// void gtk_widget_shape_combine_mask (GtkWidget *widget,  GdkBitmap *shape_mask,  gint offset_x,  gint offset_y);
		gtk_widget_shape_combine_mask(gtkWidget, (shapeMask is null) ? null : shapeMask.getBitmapStruct(), offsetX, offsetY);
	}
	
	/**
	 * Sets an input shape for this widget's GDK window. This allows for
	 * windows which react to mouse click in a nonrectangular region, see
	 * gdk_window_input_shape_combine_mask() for more information.
	 * widget:
	 *  a GtkWidget.
	 * shape_mask:
	 *  shape to be added, or NULL to remove an existing shape.
	 * offset_x:
	 *  X position of shape mask with respect to window.
	 * offset_y:
	 *  Y position of shape mask with respect to window.
	 * Since 2.10
	 */
	public void inputShapeCombineMask(Bitmap shapeMask, int offsetX, int offsetY)
	{
		// void gtk_widget_input_shape_combine_mask  (GtkWidget *widget,  GdkBitmap *shape_mask,  gint offset_x,  gint offset_y);
		gtk_widget_input_shape_combine_mask(gtkWidget, (shapeMask is null) ? null : shapeMask.getBitmapStruct(), offsetX, offsetY);
	}
	
	/**
	 * Obtains the full path to widget. The path is simply the name of a
	 * widget and all its parents in the container hierarchy, separated by
	 * periods. The name of a widget comes from
	 * gtk_widget_get_name(). Paths are used to apply styles to a widget
	 * in gtkrc configuration files. Widget names are the type of the
	 * widget by default (e.g. "GtkButton") or can be set to an
	 * application-specific value with gtk_widget_set_name(). By setting
	 * the name of a widget, you allow users or theme authors to apply
	 * styles to that specific widget in their gtkrc
	 * file. path_reversed_p fills in the path in reverse order,
	 * i.e. starting with widget's name instead of starting with the name
	 * of widget's outermost ancestor.
	 * widget:
	 *  a GtkWidget
	 * path_length:
	 *  location to store length of the path, or NULL
	 * path:
	 *  location to store allocated path string, or NULL
	 * path_reversed:
	 *  location to store allocated reverse path string, or NULL
	 */
	public void path(uint* pathLength, char** path, char** pathReversed)
	{
		// void gtk_widget_path (GtkWidget *widget,  guint *path_length,  gchar **path,  gchar **path_reversed);
		gtk_widget_path(gtkWidget, pathLength, path, pathReversed);
	}
	
	/**
	 * Same as gtk_widget_path(), but always uses the name of a widget's type,
	 * never uses a custom name set with gtk_widget_set_name().
	 * widget:
	 *  a GtkWidget
	 * path_length:
	 *  location to store the length of the class path, or NULL
	 * path:
	 *  location to store the class path as an allocated string, or NULL
	 * path_reversed:
	 *  location to store the reverse class path as an allocated string, or NULL
	 */
	public void classPath(uint* pathLength, char** path, char** pathReversed)
	{
		// void gtk_widget_class_path (GtkWidget *widget,  guint *path_length,  gchar **path,  gchar **path_reversed);
		gtk_widget_class_path(gtkWidget, pathLength, path, pathReversed);
	}
	
	/**
	 * Obtains the composite name of a widget.
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  the composite name of widget, or NULL if widget is not
	 *  a composite child. The string should not be freed when it is no
	 *  longer needed.
	 */
	public char[] getCompositeName()
	{
		// gchar* gtk_widget_get_composite_name (GtkWidget *widget);
		return Str.toString(gtk_widget_get_composite_name(gtkWidget) );
	}
	
	/**
	 * Modifies style values on the widget. Modifications made using this
	 * technique take precedence over style values set via an RC file,
	 * however, they will be overriden if a style is explicitely set on
	 * the widget using gtk_widget_set_style(). The GtkRcStyle structure
	 * is designed so each field can either be set or unset, so it is
	 * possible, using this function, to modify some style values and
	 * leave the others unchanged.
	 * Note that modifications made with this function are not cumulative
	 * with previous calls to gtk_widget_modify_style() or with such
	 * functions as gtk_widget_modify_fg(). If you wish to retain
	 * previous values, you must first call gtk_widget_get_modifier_style(),
	 * make your modifications to the returned style, then call
	 * gtk_widget_modify_style() with that style. On the other hand,
	 * if you first call gtk_widget_modify_style(), subsequent calls
	 * to such functions gtk_widget_modify_fg() will have a cumulative
	 * effect with the initial modifications.
	 * widget:
	 *  a GtkWidget
	 * style:
	 *  the GtkRcStyle holding the style modifications
	 */
	public void modifyStyle(RcStyle style)
	{
		// void gtk_widget_modify_style (GtkWidget *widget,  GtkRcStyle *style);
		gtk_widget_modify_style(gtkWidget, (style is null) ? null : style.getRcStyleStruct());
	}
	
	/**
	 * Returns the current modifier style for the widget. (As set by
	 * gtk_widget_modify_style().) If no style has previously set, a new
	 * GtkRcStyle will be created with all values unset, and set as the
	 * modifier style for the widget. If you make changes to this rc
	 * style, you must call gtk_widget_modify_style(), passing in the
	 * returned rc style, to make sure that your changes take effect.
	 * Caution: passing the style back to gtk_widget_modify_style() will
	 * normally end up destroying it, because gtk_widget_modify_style() copies
	 * the passed-in style and sets the copy as the new modifier style,
	 * thus dropping any reference to the old modifier style. Add a reference
	 * to the modifier style if you want to keep it alive.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the modifier style for the widget. This rc style is
	 *  owned by the widget. If you want to keep a pointer to value this
	 *  around, you must add a refcount using g_object_ref().
	 */
	public RcStyle getModifierStyle()
	{
		// GtkRcStyle* gtk_widget_get_modifier_style (GtkWidget *widget);
		return new RcStyle( gtk_widget_get_modifier_style(gtkWidget) );
	}
	
	/**
	 * Sets the foreground color for a widget in a particular state. All
	 * other style values are left untouched. See also
	 * gtk_widget_modify_style().
	 * widget:
	 *  a GtkWidget.
	 * state:
	 *  the state for which to set the foreground color.
	 * color:
	 *  the color to assign (does not need to be allocated),
	 *  or NULL to undo the effect of previous calls to
	 *  of gtk_widget_modify_fg().
	 */
	public void modifyFg(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_fg (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_fg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the background color for a widget in a particular state. All
	 * other style values are left untouched. See also
	 * gtk_widget_modify_style().
	 * Note that "no window" widgets (which have the GTK_NO_WINDOW flag set)
	 * draw on their parent container's window and thus may not draw any background
	 * themselves. This is the case for e.g. GtkLabel. To modify the background
	 * of such widgets, you have to set the background color on their parent; if you want
	 * to set the background of a rectangular area around a label, try placing the
	 * label in a GtkEventBox widget and setting the background color on that.
	 * widget:
	 *  a GtkWidget.
	 * state:
	 *  the state for which to set the background color.
	 * color:
	 *  the color to assign (does not need to be allocated),
	 *  or NULL to undo the effect of previous calls to
	 *  of gtk_widget_modify_bg().
	 */
	public void modifyBg(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_bg (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_bg(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the text color for a widget in a particular state. All other
	 * style values are left untouched. The text color is the foreground
	 * color used along with the base color (see gtk_widget_modify_base())
	 * for widgets such as GtkEntry and GtkTextView. See also
	 * gtk_widget_modify_style().
	 * widget:
	 *  a GtkWidget.
	 * state:
	 *  the state for which to set the text color.
	 * color:
	 *  the color to assign (does not need to be allocated),
	 *  or NULL to undo the effect of previous calls to
	 *  of gtk_widget_modify_text().
	 */
	public void modifyText(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_text (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_text(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the base color for a widget in a particular state.
	 * All other style values are left untouched. The base color
	 * is the background color used along with the text color
	 * (see gtk_widget_modify_text()) for widgets such as GtkEntry
	 * and GtkTextView. See also gtk_widget_modify_style().
	 * Note that "no window" widgets (which have the GTK_NO_WINDOW flag set)
	 * draw on their parent container's window and thus may not draw any background
	 * themselves. This is the case for e.g. GtkLabel. To modify the background
	 * of such widgets, you have to set the base color on their parent; if you want
	 * to set the background of a rectangular area around a label, try placing the
	 * label in a GtkEventBox widget and setting the base color on that.
	 * widget:
	 *  a GtkWidget.
	 * state:
	 *  the state for which to set the base color.
	 * color:
	 *  the color to assign (does not need to be allocated),
	 *  or NULL to undo the effect of previous calls to
	 *  of gtk_widget_modify_base().
	 */
	public void modifyBase(GtkStateType state, Color color)
	{
		// void gtk_widget_modify_base (GtkWidget *widget,  GtkStateType state,  const GdkColor *color);
		gtk_widget_modify_base(gtkWidget, state, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the font to use for a widget. All other style values are left
	 * untouched. See also gtk_widget_modify_style().
	 * widget:
	 *  a GtkWidget
	 * font_desc:
	 *  the font description to use, or NULL to undo
	 *  the effect of previous calls to gtk_widget_modify_font().
	 */
	public void modifyFont(PgFontDescription fontDesc)
	{
		// void gtk_widget_modify_font (GtkWidget *widget,  PangoFontDescription *font_desc);
		gtk_widget_modify_font(gtkWidget, (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Creates a new PangoContext with the appropriate font map,
	 * font description, and base direction for drawing text for
	 * this widget. See also gtk_widget_get_pango_context().
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the new PangoContext
	 */
	public PgContext createPangoContext()
	{
		// PangoContext* gtk_widget_create_pango_context  (GtkWidget *widget);
		return new PgContext( gtk_widget_create_pango_context(gtkWidget) );
	}
	
	/**
	 * Gets a PangoContext with the appropriate font map, font description,
	 * and base direction for this widget. Unlike the context returned
	 * by gtk_widget_create_pango_context(), this context is owned by
	 * the widget (it can be used until the screen for the widget changes
	 * or the widget is removed from its toplevel), and will be updated to
	 * match any changes to the widget's attributes.
	 * If you create and keep a PangoLayout using this context, you must
	 * deal with changes to the context by calling pango_layout_context_changed()
	 * on the layout in response to the ::style-set and ::direction-changed signals
	 * for the widget.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the PangoContext for the widget.
	 */
	public PgContext getPangoContext()
	{
		// PangoContext* gtk_widget_get_pango_context (GtkWidget *widget);
		return new PgContext( gtk_widget_get_pango_context(gtkWidget) );
	}
	
	/**
	 * Creates a new PangoLayout with the appropriate font map,
	 * font description, and base direction for drawing text for
	 * this widget.
	 * If you keep a PangoLayout created in this way around, in order to
	 * notify the layout of changes to the base direction or font of this
	 * widget, you must call pango_layout_context_changed() in response to
	 * the ::style-set and ::direction-changed signals for the widget.
	 * widget:
	 *  a GtkWidget
	 * text:
	 *  text to set on the layout (can be NULL)
	 * Returns:
	 *  the new PangoLayout
	 */
	public PgLayout createPangoLayout(char[] text)
	{
		// PangoLayout* gtk_widget_create_pango_layout (GtkWidget *widget,  const gchar *text);
		return new PgLayout( gtk_widget_create_pango_layout(gtkWidget, Str.toStringz(text)) );
	}
	
	/**
	 * A convenience function that uses the theme engine and RC file
	 * settings for widget to look up stock_id and render it to
	 * a pixbuf. stock_id should be a stock icon ID such as
	 * GTK_STOCK_OPEN or GTK_STOCK_OK. size should be a size
	 * such as GTK_ICON_SIZE_MENU. detail should be a string that
	 * identifies the widget or code doing the rendering, so that
	 * theme engines can special-case rendering for that widget or code.
	 * The pixels in the returned GdkPixbuf are shared with the rest of
	 * the application and should not be modified. The pixbuf should be freed
	 * after use with g_object_unref().
	 * widget:
	 *  a GtkWidget
	 * stock_id:
	 *  a stock ID
	 * size:
	 *  a stock size. A size of (GtkIconSize)-1 means render at
	 *  the size of the source and don't scale (if there are multiple
	 *  source sizes, GTK+ picks one of the available sizes).
	 * detail:
	 *  render detail to pass to theme engine
	 * Returns:
	 *  a new pixbuf, or NULL if the stock ID wasn't known
	 */
	public Pixbuf renderIcon(char[] stockId, GtkIconSize size, char[] detail)
	{
		// GdkPixbuf* gtk_widget_render_icon (GtkWidget *widget,  const gchar *stock_id,  GtkIconSize size,  const gchar *detail);
		return new Pixbuf( gtk_widget_render_icon(gtkWidget, Str.toStringz(stockId), size, Str.toStringz(detail)) );
	}
	
	/**
	 * Cancels the effect of a previous call to gtk_widget_push_composite_child().
	 */
	public static void popCompositeChild()
	{
		// void gtk_widget_pop_composite_child (void);
		gtk_widget_pop_composite_child();
	}
	
	/**
	 * Makes all newly-created widgets as composite children until
	 * the corresponding gtk_widget_pop_composite_child() call.
	 * A composite child is a child that's an implementation detail of the
	 * container it's inside and should not be visible to people using the
	 * container. Composite children aren't treated differently by GTK (but
	 * see gtk_container_foreach() vs. gtk_container_forall()), but e.g. GUI
	 * builders might want to treat them in a different way.
	 * Here is a simple example:
	 *  gtk_widget_push_composite_child ();
	 *  scrolled_window->hscrollbar = gtk_hscrollbar_new (hadjustment);
	 *  gtk_widget_set_composite_name (scrolled_window->hscrollbar, "hscrollbar");
	 *  gtk_widget_pop_composite_child ();
	 *  gtk_widget_set_parent (scrolled_window->hscrollbar,
	 *  GTK_WIDGET (scrolled_window));
	 *  g_object_ref (scrolled_window->hscrollbar);
	 */
	public static void pushCompositeChild()
	{
		// void gtk_widget_push_composite_child (void);
		gtk_widget_push_composite_child();
	}
	
	/**
	 * Warning
	 * gtk_widget_queue_clear is deprecated and should not be used in newly-written code.
	 * This function does the same as gtk_widget_queue_draw().
	 * Deprecated: Use gtk_widget_queue_draw() instead.
	 * widget:
	 *  a GtkWidget
	 */
	public void queueClear()
	{
		// void gtk_widget_queue_clear (GtkWidget *widget);
		gtk_widget_queue_clear(gtkWidget);
	}
	
	/**
	 * Warning
	 * gtk_widget_queue_clear_area is deprecated and should not be used in newly-written code.
	 * This function is no longer different from
	 * gtk_widget_queue_draw_area(), though it once was. Now it just calls
	 * gtk_widget_queue_draw_area(). Originally
	 * gtk_widget_queue_clear_area() would force a redraw of the
	 * background for GTK_NO_WINDOW widgets, and
	 * gtk_widget_queue_draw_area() would not. Now both functions ensure
	 * the background will be redrawn.
	 * Deprecated: Use gtk_widget_queue_draw_area() instead.
	 * widget:
	 *  a GtkWidget
	 * x:
	 *  x coordinate of upper-left corner of rectangle to redraw
	 * y:
	 *  y coordinate of upper-left corner of rectangle to redraw
	 * width:
	 *  width of region to draw
	 * height:
	 *  height of region to draw
	 */
	public void queueClearArea(int x, int y, int width, int height)
	{
		// void gtk_widget_queue_clear_area (GtkWidget *widget,  gint x,  gint y,  gint width,  gint height);
		gtk_widget_queue_clear_area(gtkWidget, x, y, width, height);
	}
	
	/**
	 * Invalidates the rectangular area of widget defined by x, y,
	 * width and height by calling gdk_window_invalidate_rect() on the
	 * widget's window and all its child windows. Once the main loop
	 * becomes idle (after the current batch of events has been processed,
	 * roughly), the window will receive expose events for the union of
	 * all regions that have been invalidated.
	 * Normally you would only use this function in widget
	 * implementations. You might also use it, or
	 * gdk_window_invalidate_rect() directly, to schedule a redraw of a
	 * GtkDrawingArea or some portion thereof.
	 * Frequently you can just call gdk_window_invalidate_rect() or
	 * gdk_window_invalidate_region() instead of this function. Those
	 * functions will invalidate only a single window, instead of the
	 * widget and all its children.
	 * The advantage of adding to the invalidated region compared to
	 * simply drawing immediately is efficiency; using an invalid region
	 * ensures that you only have to redraw one time.
	 * widget:
	 *  a GtkWidget
	 * x:
	 *  x coordinate of upper-left corner of rectangle to redraw
	 * y:
	 *  y coordinate of upper-left corner of rectangle to redraw
	 * width:
	 *  width of region to draw
	 * height:
	 *  height of region to draw
	 */
	public void queueDrawArea(int x, int y, int width, int height)
	{
		// void gtk_widget_queue_draw_area (GtkWidget *widget,  gint x,  gint y,  gint width,  gint height);
		gtk_widget_queue_draw_area(gtkWidget, x, y, width, height);
	}
	
	/**
	 * Recursively resets the shape on this widget and its descendants.
	 * widget:
	 *  a GtkWidget.
	 */
	public void resetShapes()
	{
		// void gtk_widget_reset_shapes (GtkWidget *widget);
		gtk_widget_reset_shapes(gtkWidget);
	}
	
	/**
	 * Sets whether the application intends to draw on the widget in
	 * an ::expose-event handler.
	 * This is a hint to the widget and does not affect the behavior of
	 * the GTK+ core; many widgets ignore this flag entirely. For widgets
	 * that do pay attention to the flag, such as GtkEventBox and GtkWindow,
	 * the effect is to suppress default themed drawing of the widget's
	 * background. (Children of the widget will still be drawn.) The application
	 * is then entirely responsible for drawing the widget background.
	 * Note that the background is still drawn when the widget is mapped.
	 * If this is not suitable (e.g. because you want to make a transparent
	 * window using an RGBA visual), you can work around this by doing:
	 *  gtk_widget_realize (window);
	 *  gdk_window_set_back_pixmap (window->window, NULL, FALSE);
	 *  gtk_widget_show (window);
	 * widget:
	 *  a GtkWidget
	 * app_paintable:
	 *  TRUE if the application will paint on the widget
	 */
	public void setAppPaintable(int appPaintable)
	{
		// void gtk_widget_set_app_paintable (GtkWidget *widget,  gboolean app_paintable);
		gtk_widget_set_app_paintable(gtkWidget, appPaintable);
	}
	
	/**
	 * Widgets are double buffered by default; you can use this function
	 * to turn off the buffering. "Double buffered" simply means that
	 * gdk_window_begin_paint_region() and gdk_window_end_paint() are called
	 * automatically around expose events sent to the
	 * widget. gdk_window_begin_paint() diverts all drawing to a widget's
	 * window to an offscreen buffer, and gdk_window_end_paint() draws the
	 * buffer to the screen. The result is that users see the window
	 * update in one smooth step, and don't see individual graphics
	 * primitives being rendered.
	 * In very simple terms, double buffered widgets don't flicker,
	 * so you would only use this function to turn off double buffering
	 * if you had special needs and really knew what you were doing.
	 * Note: if you turn off double-buffering, you have to handle
	 * expose events, since even the clearing to the background color or
	 * pixmap will not happen automatically (as it is done in
	 * gdk_window_begin_paint()).
	 * widget:
	 *  a GtkWidget
	 * double_buffered:
	 *  TRUE to double-buffer a widget
	 */
	public void setDoubleBuffered(int doubleBuffered)
	{
		// void gtk_widget_set_double_buffered (GtkWidget *widget,  gboolean double_buffered);
		gtk_widget_set_double_buffered(gtkWidget, doubleBuffered);
	}
	
	/**
	 * Sets whether the entire widget is queued for drawing when its size
	 * allocation changes. By default, this setting is TRUE and
	 * the entire widget is redrawn on every size change. If your widget
	 * leaves the upper left unchanged when made bigger, turning this
	 * setting on will improve performance.
	 * Note that for NO_WINDOW widgets setting this flag to FALSE turns
	 * off all allocation on resizing: the widget will not even redraw if
	 * its position changes; this is to allow containers that don't draw
	 * anything to avoid excess invalidations. If you set this flag on a
	 * NO_WINDOW widget that does draw on widget->window,
	 * you are responsible for invalidating both the old and new allocation
	 * of the widget when the widget is moved and responsible for invalidating
	 * regions newly when the widget increases size.
	 * widget:
	 *  a GtkWidget
	 * redraw_on_allocate:
	 *  if TRUE, the entire widget will be redrawn
	 *  when it is allocated to a new size. Otherwise, only the
	 *  new portion of the widget will be redrawn.
	 */
	public void setRedrawOnAllocate(int redrawOnAllocate)
	{
		// void gtk_widget_set_redraw_on_allocate  (GtkWidget *widget,  gboolean redraw_on_allocate);
		gtk_widget_set_redraw_on_allocate(gtkWidget, redrawOnAllocate);
	}
	
	/**
	 * Sets a widgets composite name. The widget must be
	 * a composite child of its parent; see gtk_widget_push_composite_child().
	 * widget:
	 *  a GtkWidget.
	 * name:
	 *  the name to set.
	 */
	public void setCompositeName(char[] name)
	{
		// void gtk_widget_set_composite_name (GtkWidget *widget,  const gchar *name);
		gtk_widget_set_composite_name(gtkWidget, Str.toStringz(name));
	}
	
	/**
	 * For widgets that support scrolling, sets the scroll adjustments and
	 * returns TRUE. For widgets that don't support scrolling, does
	 * nothing and returns FALSE. Widgets that don't support scrolling
	 * can be scrolled by placing them in a GtkViewport, which does
	 * support scrolling.
	 * widget:
	 *  a GtkWidget
	 * hadjustment:
	 *  an adjustment for horizontal scrolling, or NULL
	 * vadjustment:
	 *  an adjustment for vertical scrolling, or NULL
	 * Returns:
	 *  TRUE if the widget supports scrolling
	 */
	public int setScrollAdjustments(Adjustment hadjustment, Adjustment vadjustment)
	{
		// gboolean gtk_widget_set_scroll_adjustments  (GtkWidget *widget,  GtkAdjustment *hadjustment,  GtkAdjustment *vadjustment);
		return gtk_widget_set_scroll_adjustments(gtkWidget, (hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());
	}
	
	/**
	 * widget:
	 * group_cycling:
	 * Returns:
	 */
	public int mnemonicActivate(int groupCycling)
	{
		// gboolean gtk_widget_mnemonic_activate (GtkWidget *widget,  gboolean group_cycling);
		return gtk_widget_mnemonic_activate(gtkWidget, groupCycling);
	}
	
	/**
	 * Installs a style property on a widget class. The parser for the
	 * style property is determined by the value type of pspec.
	 * klass:
	 *  a GtkWidgetClass
	 * pspec:
	 *  the GParamSpec for the property
	 */
	public static void classInstallStyleProperty(GtkWidgetClass* klass, GParamSpec* pspec)
	{
		// void gtk_widget_class_install_style_property  (GtkWidgetClass *klass,  GParamSpec *pspec);
		gtk_widget_class_install_style_property(klass, pspec);
	}
	
	/**
	 * Installs a style property on a widget class.
	 * klass:
	 *  a GtkWidgetClass
	 * pspec:
	 *  the GParamSpec for the style property
	 * parser:
	 *  the parser for the style property
	 */
	public static void classInstallStylePropertyParser(GtkWidgetClass* klass, GParamSpec* pspec, GtkRcPropertyParser parser)
	{
		// void gtk_widget_class_install_style_property_parser  (GtkWidgetClass *klass,  GParamSpec *pspec,  GtkRcPropertyParser parser);
		gtk_widget_class_install_style_property_parser(klass, pspec, parser);
	}
	
	/**
	 * Finds a style property of a widget class by name.
	 * klass:
	 *  a GtkWidgetClass
	 * property_name:
	 *  the name of the style property to find
	 * Returns:
	 *  the GParamSpec of the style property or NULL if class has no
	 *  style property with that name.
	 * Since 2.2
	 */
	public static GParamSpec* classFindStyleProperty(GtkWidgetClass* klass, char[] propertyName)
	{
		// GParamSpec* gtk_widget_class_find_style_property  (GtkWidgetClass *klass,  const gchar *property_name);
		return gtk_widget_class_find_style_property(klass, Str.toStringz(propertyName));
	}
	
	/**
	 * Returns all style properties of a widget class.
	 * klass:
	 *  a GtkWidgetClass
	 * n_properties:
	 *  location to return the number of style properties found
	 * Returns:
	 *  an newly allocated array of GParamSpec*. The array must be freed with g_free().
	 * Since 2.2
	 */
	public static GParamSpec** classListStyleProperties(GtkWidgetClass* klass, uint* nProperties)
	{
		// GParamSpec** gtk_widget_class_list_style_properties  (GtkWidgetClass *klass,  guint *n_properties);
		return gtk_widget_class_list_style_properties(klass, nProperties);
	}
	
	/**
	 * Computes the intersection of a widget's area and region, returning
	 * the intersection. The result may be empty, use gdk_region_empty() to
	 * check.
	 * widget:
	 *  a GtkWidget
	 * region:
	 *  a GdkRegion, in the same coordinate system as
	 *  widget->allocation. That is, relative to widget->window
	 *  for NO_WINDOW widgets; relative to the parent window
	 *  of widget->window for widgets with their own window.
	 * Returns:
	 *  A newly allocated region holding the intersection of widget
	 *  and region. The coordinates of the return value are
	 *  relative to widget->window for NO_WINDOW widgets, and
	 *  relative to the parent window of widget->window for
	 *  widgets with their own window.
	 */
	public Region regionIntersect(Region region)
	{
		// GdkRegion* gtk_widget_region_intersect (GtkWidget *widget,  GdkRegion *region);
		return new Region( gtk_widget_region_intersect(gtkWidget, (region is null) ? null : region.getRegionStruct()) );
	}
	
	/**
	 * Very rarely-used function. This function is used to emit
	 * an expose event signals on a widget. This function is not
	 * normally used directly. The only time it is used is when
	 * propagating an expose event to a child NO_WINDOW widget, and
	 * that is normally done using gtk_container_propagate_expose().
	 * If you want to force an area of a window to be redrawn,
	 * use gdk_window_invalidate_rect() or gdk_window_invalidate_region().
	 * To cause the redraw to be done immediately, follow that call
	 * with a call to gdk_window_process_updates().
	 * widget:
	 *  a GtkWidget
	 * event:
	 *  a expose GdkEvent
	 * Returns:
	 *  return from the event signal emission (TRUE if the event was handled)
	 */
	public int sendExpose(Event event)
	{
		// gint gtk_widget_send_expose (GtkWidget *widget,  GdkEvent *event);
		return gtk_widget_send_expose(gtkWidget, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Gets the values of a multiple style properties of widget.
	 * widget:
	 *  a GtkWidget
	 * first_property_name:
	 *  the name of the first property to get
	 * ...:
	 *  pairs of property names and locations to
	 *  return the property values, starting with the location for
	 *  first_property_name, terminated by NULL.
	 */
	public void styleGet(char[] firstPropertyName, ... )
	{
		// void gtk_widget_style_get (GtkWidget *widget,  const gchar *first_property_name,  ...);
		gtk_widget_style_get(gtkWidget, Str.toStringz(firstPropertyName));
	}
	
	/**
	 * Gets the value of a style property of widget.
	 * widget:
	 *  a GtkWidget
	 * property_name:
	 *  the name of a style property
	 * value:
	 *  location to return the property value
	 */
	public void styleGetProperty(char[] propertyName, Value value)
	{
		// void gtk_widget_style_get_property (GtkWidget *widget,  const gchar *property_name,  GValue *value);
		gtk_widget_style_get_property(gtkWidget, Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Non-vararg variant of gtk_widget_style_get(). Used primarily by language
	 * bindings.
	 * widget:
	 *  a GtkWidget
	 * first_property_name:
	 *  the name of the first property to get
	 * var_args:
	 *  a va_list of pairs of property names and
	 *  locations to return the property values, starting with the location
	 *  for first_property_name.
	 */
	public void styleGetValist(char[] firstPropertyName, void* varArgs)
	{
		// void gtk_widget_style_get_valist (GtkWidget *widget,  const gchar *first_property_name,  va_list var_args);
		gtk_widget_style_get_valist(gtkWidget, Str.toStringz(firstPropertyName), varArgs);
	}
	
	/**
	 * Returns the accessible object that describes the widget to an
	 * assistive technology.
	 * If no accessibility library is loaded (i.e. no ATK implementation library is
	 * loaded via GTK_MODULES or via another application library,
	 * such as libgnome), then this AtkObject instance may be a no-op. Likewise,
	 * if no class-specific AtkObject implementation is available for the widget
	 * instance in question, it will inherit an AtkObject implementation from the
	 * first ancestor class for which such an implementation is defined.
	 * The documentation of the ATK
	 * library contains more information about accessible objects and their uses.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the AtkObject associated with widget
	 */
	public ObjectAtk getAccessible()
	{
		// AtkObject* gtk_widget_get_accessible (GtkWidget *widget);
		return new ObjectAtk( gtk_widget_get_accessible(gtkWidget) );
	}
	
	/**
	 * This function is used by custom widget implementations; if you're
	 * writing an app, you'd use gtk_widget_grab_focus() to move the focus
	 * to a particular widget, and gtk_container_set_focus_chain() to
	 * change the focus tab order. So you may want to investigate those
	 * functions instead.
	 * gtk_widget_child_focus() is called by containers as the user moves
	 * around the window using keyboard shortcuts. direction indicates
	 * what kind of motion is taking place (up, down, left, right, tab
	 * forward, tab backward). gtk_widget_child_focus() invokes the
	 * "focus" signal on GtkWidget; widgets override the default handler
	 * for this signal in order to implement appropriate focus behavior.
	 * The "focus" default handler for a widget should return TRUE if
	 * moving in direction left the focus on a focusable location inside
	 * that widget, and FALSE if moving in direction moved the focus
	 * outside the widget. If returning TRUE, widgets normally
	 * call gtk_widget_grab_focus() to place the focus accordingly;
	 * if returning FALSE, they don't modify the current focus location.
	 * This function replaces gtk_container_focus() from GTK+ 1.2. It was
	 * necessary to check that the child was visible, sensitive, and
	 * focusable before calling
	 * gtk_container_focus(). gtk_widget_child_focus() returns FALSE if
	 * the widget is not currently in a focusable state, so there's no
	 * need for those checks.
	 * widget:
	 *  a GtkWidget
	 * direction:
	 *  direction of focus movement
	 * Returns:
	 *  TRUE if focus ended up inside widget
	 */
	public int childFocus(GtkDirectionType direction)
	{
		// gboolean gtk_widget_child_focus (GtkWidget *widget,  GtkDirectionType direction);
		return gtk_widget_child_focus(gtkWidget, direction);
	}
	
	/**
	 * Emits a "child-notify" signal for the
	 * child property child_property
	 * on widget.
	 * This is the analogue of g_object_notify() for child properties.
	 * widget:
	 *  a GtkWidget
	 * child_property:
	 *  the name of a child property installed on the
	 *  class of widget's parent.
	 */
	public void childNotify(char[] childProperty)
	{
		// void gtk_widget_child_notify (GtkWidget *widget,  const gchar *child_property);
		gtk_widget_child_notify(gtkWidget, Str.toStringz(childProperty));
	}
	
	/**
	 * Stops emission of "child-notify" signals on widget. The signals are
	 * queued until gtk_widget_thaw_child_notify() is called on widget.
	 * This is the analogue of g_object_freeze_notify() for child properties.
	 * widget:
	 *  a GtkWidget
	 */
	public void freezeChildNotify()
	{
		// void gtk_widget_freeze_child_notify (GtkWidget *widget);
		gtk_widget_freeze_child_notify(gtkWidget);
	}
	
	/**
	 * Gets the value set with gtk_widget_set_child_visible().
	 * If you feel a need to use this function, your code probably
	 * needs reorganization.
	 * This function is only useful for container implementations and
	 * never should be called by an application.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  TRUE if the widget is mapped with the parent.
	 */
	public int getChildVisible()
	{
		// gboolean gtk_widget_get_child_visible (GtkWidget *widget);
		return gtk_widget_get_child_visible(gtkWidget);
	}
	
	/**
	 * Returns the parent container of widget.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the parent container of widget, or NULL
	 */
	public GtkWidget* getParent()
	{
		// GtkWidget* gtk_widget_get_parent (GtkWidget *widget);
		return gtk_widget_get_parent(gtkWidget);
	}
	
	/**
	 * Gets the settings object holding the settings (global property
	 * settings, RC file information, etc) used for this widget.
	 * Note that this function can only be called when the GtkWidget
	 * is attached to a toplevel, since the settings object is specific
	 * to a particular GdkScreen.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the relevant GtkSettings object
	 */
	public Settings getSettings()
	{
		// GtkSettings* gtk_widget_get_settings (GtkWidget *widget);
		return new Settings( gtk_widget_get_settings(gtkWidget) );
	}
	
	/**
	 * Returns the clipboard object for the given selection to
	 * be used with widget. widget must have a GdkDisplay
	 * associated with it, so must be attached to a toplevel
	 * window.
	 * widget:
	 *  a GtkWidget
	 * selection:
	 *  a GdkAtom which identifies the clipboard
	 *  to use. GDK_SELECTION_CLIPBOARD gives the
	 *  default clipboard. Another common value
	 *  is GDK_SELECTION_PRIMARY, which gives
	 *  the primary X selection.
	 * Returns:
	 *  the appropriate clipboard object. If no
	 *  clipboard already exists, a new one will
	 *  be created. Once a clipboard object has
	 *  been created, it is persistent for all time.
	 * Since 2.2
	 */
	public Clipboard getClipboard(GdkAtom selection)
	{
		// GtkClipboard* gtk_widget_get_clipboard (GtkWidget *widget,  GdkAtom selection);
		return new Clipboard( gtk_widget_get_clipboard(gtkWidget, selection) );
	}
	
	/**
	 * Get the GdkDisplay for the toplevel window associated with
	 * this widget. This function can only be called after the widget
	 * has been added to a widget hierarchy with a GtkWindow at the top.
	 * In general, you should only create display specific
	 * resources when a widget has been realized, and you should
	 * free those resources when the widget is unrealized.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the GdkDisplay for the toplevel for this widget.
	 * Since 2.2
	 */
	public Display getDisplay()
	{
		// GdkDisplay* gtk_widget_get_display (GtkWidget *widget);
		return new Display( gtk_widget_get_display(gtkWidget) );
	}
	
	/**
	 * Get the root window where this widget is located. This function can
	 * only be called after the widget has been added to a widget
	 * heirarchy with GtkWindow at the top.
	 * The root window is useful for such purposes as creating a popup
	 * GdkWindow associated with the window. In general, you should only
	 * create display specific resources when a widget has been realized,
	 * and you should free those resources when the widget is unrealized.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the GdkWindow root window for the toplevel for this widget.
	 * Since 2.2
	 */
	public Window getRootWindow()
	{
		// GdkWindow* gtk_widget_get_root_window (GtkWidget *widget);
		return new Window( gtk_widget_get_root_window(gtkWidget) );
	}
	
	/**
	 * Get the GdkScreen from the toplevel window associated with
	 * this widget. This function can only be called after the widget
	 * has been added to a widget hierarchy with a GtkWindow
	 * at the top.
	 * In general, you should only create screen specific
	 * resources when a widget has been realized, and you should
	 * free those resources when the widget is unrealized.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the GdkScreen for the toplevel for this widget.
	 * Since 2.2
	 */
	public Screen getScreen()
	{
		// GdkScreen* gtk_widget_get_screen (GtkWidget *widget);
		return new Screen( gtk_widget_get_screen(gtkWidget) );
	}
	
	/**
	 * Checks whether there is a GdkScreen is associated with
	 * this widget. All toplevel widgets have an associated
	 * screen, and all widgets added into a heirarchy with a toplevel
	 * window at the top.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  TRUE if there is a GdkScreen associcated
	 *  with the widget.
	 * Since 2.2
	 */
	public int hasScreen()
	{
		// gboolean gtk_widget_has_screen (GtkWidget *widget);
		return gtk_widget_has_screen(gtkWidget);
	}
	
	/**
	 * Gets the size request that was explicitly set for the widget using
	 * gtk_widget_set_size_request(). A value of -1 stored in width or
	 * height indicates that that dimension has not been set explicitly
	 * and the natural requisition of the widget will be used intead. See
	 * gtk_widget_set_size_request(). To get the size a widget will
	 * actually use, call gtk_widget_size_request() instead of
	 * this function.
	 * widget:
	 *  a GtkWidget
	 * width:
	 *  return location for width, or NULL
	 * height:
	 *  return location for height, or NULL
	 */
	public void getSizeRequest(int* width, int* height)
	{
		// void gtk_widget_get_size_request (GtkWidget *widget,  gint *width,  gint *height);
		gtk_widget_get_size_request(gtkWidget, width, height);
	}
	
	
	
	/**
	 * Sets whether widget should be mapped along with its when its parent
	 * is mapped and widget has been shown with gtk_widget_show().
	 * The child visibility can be set for widget before it is added to
	 * a container with gtk_widget_set_parent(), to avoid mapping
	 * children unnecessary before immediately unmapping them. However
	 * it will be reset to its default state of TRUE when the widget
	 * is removed from a container.
	 * Note that changing the child visibility of a widget does not
	 * queue a resize on the widget. Most of the time, the size of
	 * a widget is computed from all visible children, whether or
	 * not they are mapped. If this is not the case, the container
	 * can queue a resize itself.
	 * This function is only useful for container implementations and
	 * never should be called by an application.
	 * widget:
	 *  a GtkWidget
	 * is_visible:
	 *  if TRUE, widget should be mapped along with its parent.
	 */
	public void setChildVisible(int isVisible)
	{
		// void gtk_widget_set_child_visible (GtkWidget *widget,  gboolean is_visible);
		gtk_widget_set_child_visible(gtkWidget, isVisible);
	}
	
	
	/**
	 * Sets the minimum size of a widget; that is, the widget's size
	 * request will be width by height. You can use this function to
	 * force a widget to be either larger or smaller than it normally
	 * would be.
	 * In most cases, gtk_window_set_default_size() is a better choice for
	 * toplevel windows than this function; setting the default size will
	 * still allow users to shrink the window. Setting the size request
	 * will force them to leave the window at least as large as the size
	 * request. When dealing with window sizes,
	 * gtk_window_set_geometry_hints() can be a useful function as well.
	 * Note the inherent danger of setting any fixed size - themes,
	 * translations into other languages, different fonts, and user action
	 * can all change the appropriate size for a given widget. So, it's
	 * basically impossible to hardcode a size that will always be
	 * correct.
	 * The size request of a widget is the smallest size a widget can
	 * accept while still functioning well and drawing itself correctly.
	 * However in some strange cases a widget may be allocated less than
	 * its requested size, and in many cases a widget may be allocated more
	 * space than it requested.
	 * If the size request in a given direction is -1 (unset), then
	 * the "natural" size request of the widget will be used instead.
	 * Widgets can't actually be allocated a size less than 1 by 1, but
	 * you can pass 0,0 to this function to mean "as small as possible."
	 * widget:
	 *  a GtkWidget
	 * width:
	 *  width widget should request, or -1 to unset
	 * height:
	 *  height widget should request, or -1 to unset
	 */
	public void setSizeRequest(int width, int height)
	{
		// void gtk_widget_set_size_request (GtkWidget *widget,  gint width,  gint height);
		gtk_widget_set_size_request(gtkWidget, width, height);
	}
	
	
	/**
	 * Reverts the effect of a previous call to gtk_widget_freeze_child_notify().
	 * This causes all queued "child-notify" signals on widget to be emitted.
	 * widget:
	 *  a GtkWidget
	 */
	public void thawChildNotify()
	{
		// void gtk_widget_thaw_child_notify (GtkWidget *widget);
		gtk_widget_thaw_child_notify(gtkWidget);
	}
	
	/**
	 * Sets the "no_show_all" property, which determines whether calls to
	 * gtk_widget_show_all() and gtk_widget_hide_all() will affect this widget.
	 * This is mostly for use in constructing widget hierarchies with externally
	 * controlled visibility, see GtkUIManager.
	 * widget:
	 *  a GtkWidget
	 * no_show_all:
	 *  the new value for the "no_show_all" property
	 * Since 2.4
	 */
	public void setNoShowAll(int noShowAll)
	{
		// void gtk_widget_set_no_show_all (GtkWidget *widget,  gboolean no_show_all);
		gtk_widget_set_no_show_all(gtkWidget, noShowAll);
	}
	
	/**
	 * Returns the current value of the "no_show_all" property, which determines
	 * whether calls to gtk_widget_show_all() and gtk_widget_hide_all()
	 * will affect this widget.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the current value of the "no_show_all" property.
	 * Since 2.4
	 */
	public int getNoShowAll()
	{
		// gboolean gtk_widget_get_no_show_all (GtkWidget *widget);
		return gtk_widget_get_no_show_all(gtkWidget);
	}
	
	/**
	 * Returns a newly allocated list of the widgets, normally labels, for
	 * which this widget is a the target of a mnemonic (see for example,
	 * gtk_label_set_mnemonic_widget()).
	 * The widgets in the list are not individually referenced. If you
	 * want to iterate through the list and perform actions involving
	 * callbacks that might destroy the widgets, you
	 * must call g_list_foreach (result,
	 * (GFunc)g_object_ref, NULL) first, and then unref all the
	 * widgets afterwards.
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the list of mnemonic labels; free this list
	 *  with g_list_free() when you are done with it.
	 * Since 2.4
	 */
	public ListG listMnemonicLabels()
	{
		// GList* gtk_widget_list_mnemonic_labels (GtkWidget *widget);
		return new ListG( gtk_widget_list_mnemonic_labels(gtkWidget) );
	}
	
	/**
	 * Adds a widget to the list of mnemonic labels for
	 * this widget. (See gtk_widget_list_mnemonic_labels()). Note the
	 * list of mnemonic labels for the widget is cleared when the
	 * widget is destroyed, so the caller must make sure to update
	 * its internal state at this point as well, by using a connection
	 * to the ::destroy signal or a weak notifier.
	 * widget:
	 *  a GtkWidget
	 * label:
	 *  a GtkWidget that acts as a mnemonic label for widget.
	 * Since 2.4
	 */
	public void addMnemonicLabel(GtkWidget* label)
	{
		// void gtk_widget_add_mnemonic_label (GtkWidget *widget,  GtkWidget *label);
		gtk_widget_add_mnemonic_label(gtkWidget, label);
	}
	
	/**
	 * Removes a widget from the list of mnemonic labels for
	 * this widget. (See gtk_widget_list_mnemonic_labels()). The widget
	 * must have previously been added to the list with
	 * gtk_widget_add_mnemonic_label().
	 * widget:
	 *  a GtkWidget
	 * label:
	 *  a GtkWidget that was previously set as a mnemnic label for
	 *  widget with gtk_widget_add_mnemonic_label().
	 * Since 2.4
	 */
	public void removeMnemonicLabel(GtkWidget* label)
	{
		// void gtk_widget_remove_mnemonic_label  (GtkWidget *widget,  GtkWidget *label);
		gtk_widget_remove_mnemonic_label(gtkWidget, label);
	}
	
	/**
	 * Returns the GtkAction that widget is a proxy for.
	 * See also gtk_action_get_proxies().
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  the action that a widget is a proxy for, or
	 *  NULL, if it is not attached to an action.
	 * Since 2.10
	 */
	public GtkAction* getAction()
	{
		// GtkAction* gtk_widget_get_action (GtkWidget *widget);
		return gtk_widget_get_action(gtkWidget);
	}
	
	/**
	 * Whether widget can rely on having its alpha channel
	 * drawn correctly. On X11 this function returns whether a
	 * compositing manager is running for widget's screen
	 * widget:
	 *  a GtkWidget
	 * Returns:
	 *  TRUE if the widget can rely on its alpha
	 * channel being drawn correctly.
	 * Since 2.10
	 */
	public int isComposited()
	{
		// gboolean gtk_widget_is_composited (GtkWidget *widget);
		return gtk_widget_is_composited(gtkWidget);
	}
	
	/**
	 * Notifies the user about an input-related error on this widget. If
	 * the gtk-error-bell settings property is TRUE, it calls
	 * gdk_window_beep(), otherwise it does nothing.
	 * Note that the effect of gdk_window_beep() can be configured in many
	 * ways, depending on the windowing backend and the desktop environment
	 * or window manager that is used.
	 * widget:
	 *  a GtkWidget
	 * Since 2.12
	 */
	public void errorBell()
	{
		// void gtk_widget_error_bell (GtkWidget *widget);
		gtk_widget_error_bell(gtkWidget);
	}
	
	/**
	 * This function should be called whenever keyboard navigation within
	 * a single widget hits a boundary. The function emits the
	 * "keynav-changed" signal on the widget and its return value should
	 * be interpreted in a way similar to the return value of
	 * gtk_widget_child_focus():
	 * When TRUE is returned, stay in the widget, the failed keyboard
	 * navigation is Ok and/or there is nowhere we can/should move the
	 * focus to.
	 * When FALSE is returned, the caller should continue with keyboard
	 * navigation outside the widget, e.g. by calling
	 * gtk_widget_child_focus() on the widget's toplevel.
	 * The default implementation for the "keynav-failed" signal is to
	 * return TRUE for GTK_DIR_TAB_FORWARD and
	 * GTK_DIR_TAB_BACKWARD. For the other values of GtkDirectionType,
	 * it looks at the "gtk-keynav-cursor-only" settings property and
	 * returns FALSE if the setting is TRUE. This way the entire GUI
	 * becomes cursor-navigatable on input devices such as mobile phones
	 * which only have cursor keys but no tab key.
	 * Whenever the default implementation returns TRUE, it also calls
	 * gtk_widget_error_bell() to notify the user of the failed keyboard
	 * navigation.
	 * A use case for providing an own implementation of keynav-failed (by
	 * either connecting to it or by overriding it) would be a row of
	 * GtkEntry widgets where the user should be able to navigate the
	 * entire row with the cursor keys, as e.g. known from GUIs that
	 * require entering license keys.
	 * widget:
	 *  a GtkWidget
	 * direction:
	 *  direction of focus movement
	 * Returns:
	 *  TRUE if stopping keyboard navigation is fine, FALSE
	 *  if the emitting widget should try to handle the keyboard
	 *  navigation attempt in its parent container(s).
	 * Since 2.12
	 */
	public int keynavFailed(GtkDirectionType direction)
	{
		// gboolean gtk_widget_keynav_failed (GtkWidget *widget,  GtkDirectionType direction);
		return gtk_widget_keynav_failed(gtkWidget, direction);
	}
	
	/**
	 * Copies a GtkRequisition.
	 * requisition:
	 *  a GtkRequisition.
	 * Returns:
	 *  a copy of requisition.
	 */
	public static GtkRequisition* requisitionCopy(GtkRequisition* requisition)
	{
		// GtkRequisition* gtk_requisition_copy (const GtkRequisition *requisition);
		return gtk_requisition_copy(requisition);
	}
	
	/**
	 * Frees a GtkRequisition.
	 * requisition:
	 *  a GtkRequisition.
	 * Property Details
	 * The "app-paintable" property
	 *  "app-paintable" gboolean : Read / Write
	 * Whether the application will paint directly on the widget.
	 * Default value: FALSE
	 */
	public static void requisitionFree(GtkRequisition* requisition)
	{
		// void gtk_requisition_free (GtkRequisition *requisition);
		gtk_requisition_free(requisition);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
