/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
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
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkInfoBar.html
 * outPack = gtk
 * outFile = InfoBar
 * strct   = GtkInfoBar
 * realStrct=
 * ctorStrct=GtkWidget
 * clss    = InfoBar
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_info_bar_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_info_bar_get_action_area
 * 	- gtk_info_bar_get_content_area
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Button
 * 	- gtk.HBox;
 * 	- gtk.VButtonBox
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.InfoBar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Button;
private import gtk.HBox;;
private import gtk.VButtonBox;
private import gtk.Widget;



private import gtk.Box;

/**
 * Description
 * GtkInfoBar is a widget that can be used to show messages to
 * the user without showing a dialog. It is often temporarily shown
 * at the top or bottom of a document. In contrast to GtkDialog, which
 * has a horizontal action area at the bottom, GtkInfoBar has a
 * vertical action area at the side.
 * The API of GtkInfoBar is very similar to GtkDialog, allowing you
 * to add buttons to the action area with gtk_info_bar_add_button() or
 * gtk_info_bar_new_with_buttons(). The sensitivity of action widgets
 * can be controlled with gtk_info_bar_set_response_sensitive().
 * To add widgets to the main content area of a GtkInfoBar, use
 * gtk_info_bar_get_content_area() and add your widgets to the container.
 * Similar to GtkMessageDialog, the contents of a GtkInfoBar can by
 * classified as error message, warning, informational message, etc,
 * by using gtk_info_bar_set_message_type(). GTK+ uses the message type
 * to determine the background color of the message area.
 * $(DDOC_COMMENT example)
 * GtkInfoBar as GtkBuildable
 * The GtkInfoBar implementation of the GtkBuildable interface exposes
 * the content area and action area as internal children with the names
 * "content_area" and "action_area".
 * GtkInfoBar supports a custom <action-widgets> element, which
 * can contain multiple <action-widget> elements. The "response"
 * attribute specifies a numeric response, and the content of the element
 * is the id of widget (which should be a child of the dialogs action_area).
 */
public class InfoBar : Box
{
	
	/** the main Gtk struct */
	protected GtkInfoBar* gtkInfoBar;
	
	
	public GtkInfoBar* getInfoBarStruct()
	{
		return gtkInfoBar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkInfoBar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkInfoBar* gtkInfoBar)
	{
		super(cast(GtkBox*)gtkInfoBar);
		this.gtkInfoBar = gtkInfoBar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkInfoBar = cast(GtkInfoBar*)obj;
	}
	
	/** */
	public this(string[] buttonsText, ResponseType[] responses)
	{
		this();
		
		for ( int i=0 ; i<buttonsText.length && i<responses.length ; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}
	
	/** */
	public this(StockID[] stockIDs, ResponseType[] responses)
	{
		this();
		
		for ( int i=0 ; i<stockIDs.length && i<responses.length ; i++)
		{
			addButton(stockIDs[i], responses[i]);
		}
	}
	
	/** */
	public Button addButton(StockID stockID, int responseId)
	{
		auto p = gtk_info_bar_add_button(gtkInfoBar, Str.toStringz(StockDesc[stockID]), responseId);
		
		if ( p is null )
		{
			return null;
		}
		
		return new Button(cast(GtkButton*)p);
	}
	
	/** */
	public void addButtons(string[] buttonsText, ResponseType[] responses)
	{
		for ( int i=0 ; i<buttonsText.length && i<responses.length ; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}
	
	/** */
	public void addButtons(StockID[] stockIDs, ResponseType[] responses)
	{
		for ( int i=0 ; i<stockIDs.length && i<responses.length ; i++)
		{
			addButton(stockIDs[i], responses[i]);
		}
	}
	
	/**
	 * Returns the action area of info_bar.
	 * Since 2.18
	 * Returns: the action area.
	 */
	public VButtonBox getActionArea()
	{
		// GtkWidget * gtk_info_bar_get_action_area (GtkInfoBar *info_bar);
		auto p = gtk_info_bar_get_action_area(gtkInfoBar);
		if(p is null)
		{
			return null;
		}
		return new VButtonBox(cast(GtkVButtonBox*) p);
	}
	
	/**
	 * Returns the content area of info_bar.
	 * Since 2.18
	 * Returns: the content area.
	 */
	public HBox getContentArea()
	{
		// GtkWidget * gtk_info_bar_get_content_area (GtkInfoBar *info_bar);
		auto p = gtk_info_bar_get_content_area(gtkInfoBar);
		if(p is null)
		{
			return null;
		}
		return new HBox(cast(GtkHBox*) p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(InfoBar)[] onCloseListeners;
	/**
	 * The ::close signal is a
	 * keybinding signal
	 * which gets emitted when the user uses a keybinding to dismiss
	 * the info bar.
	 * The default binding for this signal is the Escape key.
	 * Since 2.18
	 */
	void addOnClose(void delegate(InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("close" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"close",
			cast(GCallback)&callBackClose,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["close"] = 1;
		}
		onCloseListeners ~= dlg;
	}
	extern(C) static void callBackClose(GtkInfoBar* arg0Struct, InfoBar _infoBar)
	{
		foreach ( void delegate(InfoBar) dlg ; _infoBar.onCloseListeners )
		{
			dlg(_infoBar);
		}
	}
	
	void delegate(gint, InfoBar)[] onResponseListeners;
	/**
	 * Emitted when an action widget is clicked or the application programmer
	 * calls gtk_dialog_response(). The response_id depends on which action
	 * widget was clicked.
	 * Since 2.18
	 * See Also
	 * GtkStatusbar, GtkMessageDialog
	 */
	void addOnResponse(void delegate(gint, InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("response" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"response",
			cast(GCallback)&callBackResponse,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["response"] = 1;
		}
		onResponseListeners ~= dlg;
	}
	extern(C) static void callBackResponse(GtkInfoBar* infoBarStruct, gint responseId, InfoBar _infoBar)
	{
		foreach ( void delegate(gint, InfoBar) dlg ; _infoBar.onResponseListeners )
		{
			dlg(responseId, _infoBar);
		}
	}
	
	
	/**
	 * Creates a new GtkInfoBar object.
	 * Since 2.18
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_info_bar_new (void);
		auto p = gtk_info_bar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_info_bar_new()");
		}
		this(cast(GtkInfoBar*) p);
	}
	
	/**
	 * Add an activatable widget to the action area of a GtkInfoBar,
	 * connecting a signal handler that will emit the "response"
	 * signal on the message area when the widget is activated. The widget
	 * is appended to the end of the message areas action area.
	 * Since 2.18
	 * Params:
	 * child = an activatable widget
	 * responseId = response ID for child
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		// void gtk_info_bar_add_action_widget (GtkInfoBar *info_bar,  GtkWidget *child,  gint response_id);
		gtk_info_bar_add_action_widget(gtkInfoBar, (child is null) ? null : child.getWidgetStruct(), responseId);
	}
	
	/**
	 * Adds a button with the given text (or a stock button, if button_text
	 * is a stock ID) and sets things up so that clicking the button will emit
	 * the "response" signal with the given response_id. The button is appended
	 * to the end of the info bars's action area. The button widget is
	 * returned, but usually you don't need it.
	 * Since 2.18
	 * Params:
	 * buttonText = text of button, or stock ID
	 * responseId = response ID for the button
	 * Returns: the GtkButton widget that was added. [transfer none]
	 */
	public Widget addButton(string buttonText, int responseId)
	{
		// GtkWidget * gtk_info_bar_add_button (GtkInfoBar *info_bar,  const gchar *button_text,  gint response_id);
		auto p = gtk_info_bar_add_button(gtkInfoBar, Str.toStringz(buttonText), responseId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Calls gtk_widget_set_sensitive (widget, setting) for each
	 * widget in the info bars's action area with the given response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
	 * Since 2.18
	 * Params:
	 * responseId = a response ID
	 * setting = TRUE for sensitive
	 */
	public void setResponseSensitive(int responseId, int setting)
	{
		// void gtk_info_bar_set_response_sensitive (GtkInfoBar *info_bar,  gint response_id,  gboolean setting);
		gtk_info_bar_set_response_sensitive(gtkInfoBar, responseId, setting);
	}
	
	/**
	 * Sets the last widget in the info bar's action area with
	 * the given response_id as the default widget for the dialog.
	 * Pressing "Enter" normally activates the default widget.
	 * Note that this function currently requires info_bar to
	 * be added to a widget hierarchy.
	 * Since 2.18
	 * Params:
	 * responseId = a response ID
	 */
	public void setDefaultResponse(int responseId)
	{
		// void gtk_info_bar_set_default_response (GtkInfoBar *info_bar,  gint response_id);
		gtk_info_bar_set_default_response(gtkInfoBar, responseId);
	}
	
	/**
	 * Emits the 'response' signal with the given response_id.
	 * Since 2.18
	 * Params:
	 * responseId = a response ID
	 */
	public void response(int responseId)
	{
		// void gtk_info_bar_response (GtkInfoBar *info_bar,  gint response_id);
		gtk_info_bar_response(gtkInfoBar, responseId);
	}
	
	/**
	 * Sets the message type of the message area.
	 * GTK+ uses this type to determine what color to use
	 * when drawing the message area.
	 * Since 2.18
	 * Params:
	 * messageType = a GtkMessageType
	 */
	public void setMessageType(GtkMessageType messageType)
	{
		// void gtk_info_bar_set_message_type (GtkInfoBar *info_bar,  GtkMessageType message_type);
		gtk_info_bar_set_message_type(gtkInfoBar, messageType);
	}
	
	/**
	 * Returns the message type of the message area.
	 * Since 2.18
	 * Returns: the message type of the message area.
	 */
	public GtkMessageType getMessageType()
	{
		// GtkMessageType gtk_info_bar_get_message_type (GtkInfoBar *info_bar);
		return gtk_info_bar_get_message_type(gtkInfoBar);
	}
}
