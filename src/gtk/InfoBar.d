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


module gtk.InfoBar;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Box;
private import gtk.Button;
private import gtk.HBox;
private import gtk.VButtonBox;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkInfoBar is a widget that can be used to show messages to
 * the user without showing a dialog. It is often temporarily shown
 * at the top or bottom of a document. In contrast to #GtkDialog, which
 * has a action area at the bottom, #GtkInfoBar has an action area
 * at the side.
 * 
 * The API of #GtkInfoBar is very similar to #GtkDialog, allowing you
 * to add buttons to the action area with gtk_info_bar_add_button() or
 * gtk_info_bar_new_with_buttons(). The sensitivity of action widgets
 * can be controlled with gtk_info_bar_set_response_sensitive().
 * To add widgets to the main content area of a #GtkInfoBar, use
 * gtk_info_bar_get_content_area() and add your widgets to the container.
 * 
 * Similar to #GtkMessageDialog, the contents of a #GtkInfoBar can by
 * classified as error message, warning, informational message, etc,
 * by using gtk_info_bar_set_message_type(). GTK+ may use the message type
 * to determine how the message is displayed.
 * 
 * A simple example for using a GtkInfoBar:
 * |[<!-- language="C" -->
 * // set up info bar
 * GtkWidget *widget;
 * GtkInfoBar *bar;
 * 
 * widget = gtk_info_bar_new ();
 * bar = GTK_INFO_BAR (bar);
 * 
 * gtk_widget_set_no_show_all (widget, TRUE);
 * message_label = gtk_label_new ("");
 * gtk_widget_show (message_label);
 * content_area = gtk_info_bar_get_content_area (bar);
 * gtk_container_add (GTK_CONTAINER (content_area),
 * message_label);
 * gtk_info_bar_add_button (bar,
 * _("_OK"),
 * GTK_RESPONSE_OK);
 * g_signal_connect (bar,
 * "response",
 * G_CALLBACK (gtk_widget_hide),
 * NULL);
 * gtk_grid_attach (GTK_GRID (grid),
 * widget,
 * 0, 2, 1, 1);
 * 
 * ...
 * 
 * // show an error message
 * gtk_label_set_text (GTK_LABEL (message_label), message);
 * gtk_info_bar_set_message_type (bar,
 * GTK_MESSAGE_ERROR);
 * gtk_widget_show (bar);
 * ]|
 * 
 * # GtkInfoBar as GtkBuildable
 * 
 * The GtkInfoBar implementation of the GtkBuildable interface exposes
 * the content area and action area as internal children with the names
 * “content_area” and “action_area”.
 * 
 * GtkInfoBar supports a custom <action-widgets> element, which can contain
 * multiple <action-widget> elements. The “response” attribute specifies a
 * numeric response, and the content of the element is the id of widget
 * (which should be a child of the dialogs @action_area).
 * 
 * # CSS nodes
 * 
 * GtkInfoBar has a single CSS node with name infobar. The node may get
 * one of the style classes .info, .warning, .error or .question, depending
 * on the message type.
 */
public class InfoBar : Box
{
	/** the main Gtk struct */
	protected GtkInfoBar* gtkInfoBar;

	/** Get the main Gtk struct */
	public GtkInfoBar* getInfoBarStruct()
	{
		return gtkInfoBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkInfoBar;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkInfoBar = cast(GtkInfoBar*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkInfoBar* gtkInfoBar, bool ownedRef = false)
	{
		this.gtkInfoBar = gtkInfoBar;
		super(cast(GtkBox*)gtkInfoBar, ownedRef);
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
		auto p = gtk_info_bar_add_button(gtkInfoBar, Str.toStringz(stockID), responseId);
		
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

	/** */
	public static GType getType()
	{
		return gtk_info_bar_get_type();
	}

	/**
	 * Creates a new #GtkInfoBar object.
	 *
	 * Return: a new #GtkInfoBar object
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_info_bar_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkInfoBar*) p);
	}

	/**
	 * Add an activatable widget to the action area of a #GtkInfoBar,
	 * connecting a signal handler that will emit the #GtkInfoBar::response
	 * signal on the message area when the widget is activated. The widget
	 * is appended to the end of the message areas action area.
	 *
	 * Params:
	 *     child = an activatable widget
	 *     responseId = response ID for @child
	 *
	 * Since: 2.18
	 */
	public void addActionWidget(Widget child, int responseId)
	{
		gtk_info_bar_add_action_widget(gtkInfoBar, (child is null) ? null : child.getWidgetStruct(), responseId);
	}

	/**
	 * Adds a button with the given text and sets things up so that
	 * clicking the button will emit the “response” signal with the given
	 * response_id. The button is appended to the end of the info bars's
	 * action area. The button widget is returned, but usually you don't
	 * need it.
	 *
	 * Params:
	 *     buttonText = text of button
	 *     responseId = response ID for the button
	 *
	 * Return: the #GtkButton widget
	 *     that was added
	 *
	 * Since: 2.18
	 */
	public Button addButton(string buttonText, int responseId)
	{
		auto p = gtk_info_bar_add_button(gtkInfoBar, Str.toStringz(buttonText), responseId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Button)(cast(GtkButton*) p);
	}

	/**
	 * Returns the message type of the message area.
	 *
	 * Return: the message type of the message area.
	 *
	 * Since: 2.18
	 */
	public GtkMessageType getMessageType()
	{
		return gtk_info_bar_get_message_type(gtkInfoBar);
	}

	/**
	 * Returns whether the widget will display a standard close button.
	 *
	 * Return: %TRUE if the widget displays standard close button
	 *
	 * Since: 3.10
	 */
	public bool getShowCloseButton()
	{
		return gtk_info_bar_get_show_close_button(gtkInfoBar) != 0;
	}

	/**
	 * Emits the “response” signal with the given @response_id.
	 *
	 * Params:
	 *     responseId = a response ID
	 *
	 * Since: 2.18
	 */
	public void response(int responseId)
	{
		gtk_info_bar_response(gtkInfoBar, responseId);
	}

	/**
	 * Sets the last widget in the info bar’s action area with
	 * the given response_id as the default widget for the dialog.
	 * Pressing “Enter” normally activates the default widget.
	 *
	 * Note that this function currently requires @info_bar to
	 * be added to a widget hierarchy.
	 *
	 * Params:
	 *     responseId = a response ID
	 *
	 * Since: 2.18
	 */
	public void setDefaultResponse(int responseId)
	{
		gtk_info_bar_set_default_response(gtkInfoBar, responseId);
	}

	/**
	 * Sets the message type of the message area.
	 *
	 * GTK+ uses this type to determine how the message is displayed.
	 *
	 * Params:
	 *     messageType = a #GtkMessageType
	 *
	 * Since: 2.18
	 */
	public void setMessageType(GtkMessageType messageType)
	{
		gtk_info_bar_set_message_type(gtkInfoBar, messageType);
	}

	/**
	 * Calls gtk_widget_set_sensitive (widget, setting) for each
	 * widget in the info bars’s action area with the given response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
	 *
	 * Params:
	 *     responseId = a response ID
	 *     setting = TRUE for sensitive
	 *
	 * Since: 2.18
	 */
	public void setResponseSensitive(int responseId, bool setting)
	{
		gtk_info_bar_set_response_sensitive(gtkInfoBar, responseId, setting);
	}

	/**
	 * If true, a standard close button is shown. When clicked it emits
	 * the response %GTK_RESPONSE_CLOSE.
	 *
	 * Params:
	 *     setting = %TRUE to include a close button
	 *
	 * Since: 3.10
	 */
	public void setShowCloseButton(bool setting)
	{
		gtk_info_bar_set_show_close_button(gtkInfoBar, setting);
	}

	protected class OnCloseDelegateWrapper
	{
		void delegate(InfoBar) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(InfoBar) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnCloseDelegateWrapper[] onCloseListeners;

	/**
	 * The ::close signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user uses a keybinding to dismiss
	 * the info bar.
	 *
	 * The default binding for this signal is the Escape key.
	 *
	 * Since: 2.18
	 */
	gulong addOnClose(void delegate(InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onCloseListeners ~= new OnCloseDelegateWrapper(dlg, 0, connectFlags);
		onCloseListeners[onCloseListeners.length - 1].handlerId = Signals.connectData(
			this,
			"close",
			cast(GCallback)&callBackClose,
			cast(void*)onCloseListeners[onCloseListeners.length - 1],
			cast(GClosureNotify)&callBackCloseDestroy,
			connectFlags);
		return onCloseListeners[onCloseListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackClose(GtkInfoBar* infobarStruct,OnCloseDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackCloseDestroy(OnCloseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnClose(wrapper);
	}

	protected void internalRemoveOnClose(OnCloseDelegateWrapper source)
	{
		foreach(index, wrapper; onCloseListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onCloseListeners[index] = null;
				onCloseListeners = std.algorithm.remove(onCloseListeners, index);
				break;
			}
		}
	}
	

	protected class OnResponseDelegateWrapper
	{
		void delegate(int, InfoBar) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, InfoBar) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnResponseDelegateWrapper[] onResponseListeners;

	/**
	 * Emitted when an action widget is clicked or the application programmer
	 * calls gtk_dialog_response(). The @response_id depends on which action
	 * widget was clicked.
	 *
	 * Params:
	 *     responseId = the response ID
	 *
	 * Since: 2.18
	 */
	gulong addOnResponse(void delegate(int, InfoBar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onResponseListeners ~= new OnResponseDelegateWrapper(dlg, 0, connectFlags);
		onResponseListeners[onResponseListeners.length - 1].handlerId = Signals.connectData(
			this,
			"response",
			cast(GCallback)&callBackResponse,
			cast(void*)onResponseListeners[onResponseListeners.length - 1],
			cast(GClosureNotify)&callBackResponseDestroy,
			connectFlags);
		return onResponseListeners[onResponseListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackResponse(GtkInfoBar* infobarStruct, int responseId,OnResponseDelegateWrapper wrapper)
	{
		wrapper.dlg(responseId, wrapper.outer);
	}
	
	extern(C) static void callBackResponseDestroy(OnResponseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnResponse(wrapper);
	}

	protected void internalRemoveOnResponse(OnResponseDelegateWrapper source)
	{
		foreach(index, wrapper; onResponseListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onResponseListeners[index] = null;
				onResponseListeners = std.algorithm.remove(onResponseListeners, index);
				break;
			}
		}
	}
	
}
