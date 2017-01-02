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


module gtk.AppChooserWidget;

private import gio.AppInfo;
private import gio.AppInfoIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;
private import gtk.Box;
private import gtk.Menu;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkAppChooserWidget is a widget for selecting applications.
 * It is the main building block for #GtkAppChooserDialog. Most
 * applications only need to use the latter; but you can use
 * this widget as part of a larger widget if you have special needs.
 * 
 * #GtkAppChooserWidget offers detailed control over what applications
 * are shown, using the
 * #GtkAppChooserWidget:show-default,
 * #GtkAppChooserWidget:show-recommended,
 * #GtkAppChooserWidget:show-fallback,
 * #GtkAppChooserWidget:show-other and
 * #GtkAppChooserWidget:show-all
 * properties. See the #GtkAppChooser documentation for more information
 * about these groups of applications.
 * 
 * To keep track of the selected application, use the
 * #GtkAppChooserWidget::application-selected and #GtkAppChooserWidget::application-activated signals.
 * 
 * # CSS nodes
 * 
 * GtkAppChooserWidget has a single CSS node with name appchooser.
 */
public class AppChooserWidget : Box, AppChooserIF
{
	/** the main Gtk struct */
	protected GtkAppChooserWidget* gtkAppChooserWidget;

	/** Get the main Gtk struct */
	public GtkAppChooserWidget* getAppChooserWidgetStruct()
	{
		return gtkAppChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserWidget;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkAppChooserWidget = cast(GtkAppChooserWidget*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAppChooserWidget* gtkAppChooserWidget, bool ownedRef = false)
	{
		this.gtkAppChooserWidget = gtkAppChooserWidget;
		super(cast(GtkBox*)gtkAppChooserWidget, ownedRef);
	}

	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_app_chooser_widget_get_type();
	}

	/**
	 * Creates a new #GtkAppChooserWidget for applications
	 * that can handle content of the given type.
	 *
	 * Params:
	 *     contentType = the content type to show applications for
	 *
	 * Return: a newly created #GtkAppChooserWidget
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string contentType)
	{
		auto p = gtk_app_chooser_widget_new(Str.toStringz(contentType));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkAppChooserWidget*) p);
	}

	/**
	 * Returns the text that is shown if there are not applications
	 * that can handle the content type.
	 *
	 * Return: the value of #GtkAppChooserWidget:default-text
	 *
	 * Since: 3.0
	 */
	public string getDefaultText()
	{
		return Str.toString(gtk_app_chooser_widget_get_default_text(gtkAppChooserWidget));
	}

	/**
	 * Returns the current value of the #GtkAppChooserWidget:show-all
	 * property.
	 *
	 * Return: the value of #GtkAppChooserWidget:show-all
	 *
	 * Since: 3.0
	 */
	public bool getShowAll()
	{
		return gtk_app_chooser_widget_get_show_all(gtkAppChooserWidget) != 0;
	}

	/**
	 * Returns the current value of the #GtkAppChooserWidget:show-default
	 * property.
	 *
	 * Return: the value of #GtkAppChooserWidget:show-default
	 *
	 * Since: 3.0
	 */
	public bool getShowDefault()
	{
		return gtk_app_chooser_widget_get_show_default(gtkAppChooserWidget) != 0;
	}

	/**
	 * Returns the current value of the #GtkAppChooserWidget:show-fallback
	 * property.
	 *
	 * Return: the value of #GtkAppChooserWidget:show-fallback
	 *
	 * Since: 3.0
	 */
	public bool getShowFallback()
	{
		return gtk_app_chooser_widget_get_show_fallback(gtkAppChooserWidget) != 0;
	}

	/**
	 * Returns the current value of the #GtkAppChooserWidget:show-other
	 * property.
	 *
	 * Return: the value of #GtkAppChooserWidget:show-other
	 *
	 * Since: 3.0
	 */
	public bool getShowOther()
	{
		return gtk_app_chooser_widget_get_show_other(gtkAppChooserWidget) != 0;
	}

	/**
	 * Returns the current value of the #GtkAppChooserWidget:show-recommended
	 * property.
	 *
	 * Return: the value of #GtkAppChooserWidget:show-recommended
	 *
	 * Since: 3.0
	 */
	public bool getShowRecommended()
	{
		return gtk_app_chooser_widget_get_show_recommended(gtkAppChooserWidget) != 0;
	}

	/**
	 * Sets the text that is shown if there are not applications
	 * that can handle the content type.
	 *
	 * Params:
	 *     text = the new value for #GtkAppChooserWidget:default-text
	 */
	public void setDefaultText(string text)
	{
		gtk_app_chooser_widget_set_default_text(gtkAppChooserWidget, Str.toStringz(text));
	}

	/**
	 * Sets whether the app chooser should show all applications
	 * in a flat list.
	 *
	 * Params:
	 *     setting = the new value for #GtkAppChooserWidget:show-all
	 *
	 * Since: 3.0
	 */
	public void setShowAll(bool setting)
	{
		gtk_app_chooser_widget_set_show_all(gtkAppChooserWidget, setting);
	}

	/**
	 * Sets whether the app chooser should show the default handler
	 * for the content type in a separate section.
	 *
	 * Params:
	 *     setting = the new value for #GtkAppChooserWidget:show-default
	 *
	 * Since: 3.0
	 */
	public void setShowDefault(bool setting)
	{
		gtk_app_chooser_widget_set_show_default(gtkAppChooserWidget, setting);
	}

	/**
	 * Sets whether the app chooser should show related applications
	 * for the content type in a separate section.
	 *
	 * Params:
	 *     setting = the new value for #GtkAppChooserWidget:show-fallback
	 *
	 * Since: 3.0
	 */
	public void setShowFallback(bool setting)
	{
		gtk_app_chooser_widget_set_show_fallback(gtkAppChooserWidget, setting);
	}

	/**
	 * Sets whether the app chooser should show applications
	 * which are unrelated to the content type.
	 *
	 * Params:
	 *     setting = the new value for #GtkAppChooserWidget:show-other
	 *
	 * Since: 3.0
	 */
	public void setShowOther(bool setting)
	{
		gtk_app_chooser_widget_set_show_other(gtkAppChooserWidget, setting);
	}

	/**
	 * Sets whether the app chooser should show recommended applications
	 * for the content type in a separate section.
	 *
	 * Params:
	 *     setting = the new value for #GtkAppChooserWidget:show-recommended
	 *
	 * Since: 3.0
	 */
	public void setShowRecommended(bool setting)
	{
		gtk_app_chooser_widget_set_show_recommended(gtkAppChooserWidget, setting);
	}

	protected class OnApplicationActivatedDelegateWrapper
	{
		void delegate(AppInfoIF, AppChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(AppInfoIF, AppChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnApplicationActivatedDelegateWrapper[] onApplicationActivatedListeners;

	/**
	 * Emitted when an application item is activated from the widget's list.
	 *
	 * This usually happens when the user double clicks an item, or an item
	 * is selected and the user presses one of the keys Space, Shift+Space,
	 * Return or Enter.
	 *
	 * Params:
	 *     application = the activated #GAppInfo
	 */
	gulong addOnApplicationActivated(void delegate(AppInfoIF, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onApplicationActivatedListeners ~= new OnApplicationActivatedDelegateWrapper(dlg, 0, connectFlags);
		onApplicationActivatedListeners[onApplicationActivatedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"application-activated",
			cast(GCallback)&callBackApplicationActivated,
			cast(void*)onApplicationActivatedListeners[onApplicationActivatedListeners.length - 1],
			cast(GClosureNotify)&callBackApplicationActivatedDestroy,
			connectFlags);
		return onApplicationActivatedListeners[onApplicationActivatedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackApplicationActivated(GtkAppChooserWidget* appchooserwidgetStruct, GAppInfo* application,OnApplicationActivatedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(AppInfo, AppInfoIF)(application), wrapper.outer);
	}
	
	extern(C) static void callBackApplicationActivatedDestroy(OnApplicationActivatedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnApplicationActivated(wrapper);
	}

	protected void internalRemoveOnApplicationActivated(OnApplicationActivatedDelegateWrapper source)
	{
		foreach(index, wrapper; onApplicationActivatedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onApplicationActivatedListeners[index] = null;
				onApplicationActivatedListeners = std.algorithm.remove(onApplicationActivatedListeners, index);
				break;
			}
		}
	}
	

	protected class OnApplicationSelectedDelegateWrapper
	{
		void delegate(AppInfoIF, AppChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(AppInfoIF, AppChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnApplicationSelectedDelegateWrapper[] onApplicationSelectedListeners;

	/**
	 * Emitted when an application item is selected from the widget's list.
	 *
	 * Params:
	 *     application = the selected #GAppInfo
	 */
	gulong addOnApplicationSelected(void delegate(AppInfoIF, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onApplicationSelectedListeners ~= new OnApplicationSelectedDelegateWrapper(dlg, 0, connectFlags);
		onApplicationSelectedListeners[onApplicationSelectedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"application-selected",
			cast(GCallback)&callBackApplicationSelected,
			cast(void*)onApplicationSelectedListeners[onApplicationSelectedListeners.length - 1],
			cast(GClosureNotify)&callBackApplicationSelectedDestroy,
			connectFlags);
		return onApplicationSelectedListeners[onApplicationSelectedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackApplicationSelected(GtkAppChooserWidget* appchooserwidgetStruct, GAppInfo* application,OnApplicationSelectedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(AppInfo, AppInfoIF)(application), wrapper.outer);
	}
	
	extern(C) static void callBackApplicationSelectedDestroy(OnApplicationSelectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnApplicationSelected(wrapper);
	}

	protected void internalRemoveOnApplicationSelected(OnApplicationSelectedDelegateWrapper source)
	{
		foreach(index, wrapper; onApplicationSelectedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onApplicationSelectedListeners[index] = null;
				onApplicationSelectedListeners = std.algorithm.remove(onApplicationSelectedListeners, index);
				break;
			}
		}
	}
	

	protected class OnPopulatePopupDelegateWrapper
	{
		void delegate(Menu, AppInfoIF, AppChooserWidget) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Menu, AppInfoIF, AppChooserWidget) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPopulatePopupDelegateWrapper[] onPopulatePopupListeners;

	/**
	 * Emitted when a context menu is about to popup over an application item.
	 * Clients can insert menu items into the provided #GtkMenu object in the
	 * callback of this signal; the context menu will be shown over the item
	 * if at least one item has been added to the menu.
	 *
	 * Params:
	 *     menu = the #GtkMenu to populate
	 *     application = the current #GAppInfo
	 */
	gulong addOnPopulatePopup(void delegate(Menu, AppInfoIF, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPopulatePopupListeners ~= new OnPopulatePopupDelegateWrapper(dlg, 0, connectFlags);
		onPopulatePopupListeners[onPopulatePopupListeners.length - 1].handlerId = Signals.connectData(
			this,
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)onPopulatePopupListeners[onPopulatePopupListeners.length - 1],
			cast(GClosureNotify)&callBackPopulatePopupDestroy,
			connectFlags);
		return onPopulatePopupListeners[onPopulatePopupListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPopulatePopup(GtkAppChooserWidget* appchooserwidgetStruct, GtkMenu* menu, GAppInfo* application,OnPopulatePopupDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Menu)(menu), ObjectG.getDObject!(AppInfo, AppInfoIF)(application), wrapper.outer);
	}
	
	extern(C) static void callBackPopulatePopupDestroy(OnPopulatePopupDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPopulatePopup(wrapper);
	}

	protected void internalRemoveOnPopulatePopup(OnPopulatePopupDelegateWrapper source)
	{
		foreach(index, wrapper; onPopulatePopupListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPopulatePopupListeners[index] = null;
				onPopulatePopupListeners = std.algorithm.remove(onPopulatePopupListeners, index);
				break;
			}
		}
	}
	
}
