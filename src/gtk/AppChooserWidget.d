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
 * inFile  = GtkAppChooserWidget.html
 * outPack = gtk
 * outFile = AppChooserWidget
 * strct   = GtkAppChooserWidget
 * realStrct=
 * ctorStrct=
 * clss    = AppChooserWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AppChooserIF
 * prefixes:
 * 	- gtk_app_chooser_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.AppInfo
 * 	- gtk.Menu
 * 	- gtk.AppChooserIF
 * 	- gtk.AppChooserT
 * structWrap:
 * 	- GAppInfo* -> AppInfo
 * 	- GtkMenu* -> Menu
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AppChooserWidget;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.AppInfo;
private import gtk.Menu;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;



private import gtk.Box;

/**
 * GtkAppChooserWidget is a widget for selecting applications.
 * It is the main building block for GtkAppChooserDialog. Most
 * applications only need to use the latter; but you can use
 * this widget as part of a larger widget if you have special needs.
 *
 * GtkAppChooserWidget offers detailed control over what applications
 * are shown, using the
 * "show-default",
 * "show-recommended",
 * "show-fallback",
 * "show-other" and
 * "show-all"
 * properties. See the GtkAppChooser documentation for more information
 * about these groups of applications.
 *
 * To keep track of the selected application, use the
 * "application-selected" and "application-activated" signals.
 */
public class AppChooserWidget : Box, AppChooserIF
{
	
	/** the main Gtk struct */
	protected GtkAppChooserWidget* gtkAppChooserWidget;
	
	
	public GtkAppChooserWidget* getAppChooserWidgetStruct()
	{
		return gtkAppChooserWidget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserWidget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAppChooserWidget* gtkAppChooserWidget)
	{
		super(cast(GtkBox*)gtkAppChooserWidget);
		this.gtkAppChooserWidget = gtkAppChooserWidget;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAppChooserWidget = cast(GtkAppChooserWidget*)obj;
	}
	
	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserWidget);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(AppInfo, AppChooserWidget)[] onApplicationActivatedListeners;
	/**
	 * Emitted when an application item is activated from the widget's list.
	 * This usually happens when the user double clicks an item, or an item
	 * is selected and the user presses one of the keys Space, Shift+Space,
	 * Return or Enter.
	 */
	void addOnApplicationActivated(void delegate(AppInfo, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("application-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"application-activated",
			cast(GCallback)&callBackApplicationActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["application-activated"] = 1;
		}
		onApplicationActivatedListeners ~= dlg;
	}
	extern(C) static void callBackApplicationActivated(GtkAppChooserWidget* selfStruct, GAppInfo* application, AppChooserWidget _appChooserWidget)
	{
		foreach ( void delegate(AppInfo, AppChooserWidget) dlg ; _appChooserWidget.onApplicationActivatedListeners )
		{
			dlg(ObjectG.getDObject!(AppInfo)(application), _appChooserWidget);
		}
	}
	
	void delegate(AppInfo, AppChooserWidget)[] onApplicationSelectedListeners;
	/**
	 * Emitted when an application item is selected from the widget's list.
	 */
	void addOnApplicationSelected(void delegate(AppInfo, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("application-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"application-selected",
			cast(GCallback)&callBackApplicationSelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["application-selected"] = 1;
		}
		onApplicationSelectedListeners ~= dlg;
	}
	extern(C) static void callBackApplicationSelected(GtkAppChooserWidget* selfStruct, GAppInfo* application, AppChooserWidget _appChooserWidget)
	{
		foreach ( void delegate(AppInfo, AppChooserWidget) dlg ; _appChooserWidget.onApplicationSelectedListeners )
		{
			dlg(ObjectG.getDObject!(AppInfo)(application), _appChooserWidget);
		}
	}
	
	void delegate(Menu, AppInfo, AppChooserWidget)[] onPopulatePopupListeners;
	/**
	 * Emitted when a context menu is about to popup over an application item.
	 * Clients can insert menu items into the provided GtkMenu object in the
	 * callback of this signal; the context menu will be shown over the item
	 * if at least one item has been added to the menu.
	 */
	void addOnPopulatePopup(void delegate(Menu, AppInfo, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("populate-popup" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"populate-popup",
			cast(GCallback)&callBackPopulatePopup,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["populate-popup"] = 1;
		}
		onPopulatePopupListeners ~= dlg;
	}
	extern(C) static void callBackPopulatePopup(GtkAppChooserWidget* selfStruct, GtkMenu* menu, GAppInfo* application, AppChooserWidget _appChooserWidget)
	{
		foreach ( void delegate(Menu, AppInfo, AppChooserWidget) dlg ; _appChooserWidget.onPopulatePopupListeners )
		{
			dlg(ObjectG.getDObject!(Menu)(menu), ObjectG.getDObject!(AppInfo)(application), _appChooserWidget);
		}
	}
	
	
	/**
	 * Creates a new GtkAppChooserWidget for applications
	 * that can handle content of the given type.
	 * Params:
	 * contentType = the content type to show applications for
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string contentType)
	{
		// GtkWidget * gtk_app_chooser_widget_new (const gchar *content_type);
		auto p = gtk_app_chooser_widget_new(Str.toStringz(contentType));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_app_chooser_widget_new(Str.toStringz(contentType))");
		}
		this(cast(GtkAppChooserWidget*) p);
	}
	
	/**
	 * Sets whether the app chooser should show the default handler
	 * for the content type in a separate section.
	 * Params:
	 * setting = the new value for "show-default"
	 * Since 3.0
	 */
	public void setShowDefault(int setting)
	{
		// void gtk_app_chooser_widget_set_show_default  (GtkAppChooserWidget *self,  gboolean setting);
		gtk_app_chooser_widget_set_show_default(gtkAppChooserWidget, setting);
	}
	
	/**
	 * Returns the current value of the "show-default"
	 * property.
	 * Returns: the value of "show-default" Since 3.0
	 */
	public int getShowDefault()
	{
		// gboolean gtk_app_chooser_widget_get_show_default  (GtkAppChooserWidget *self);
		return gtk_app_chooser_widget_get_show_default(gtkAppChooserWidget);
	}
	
	/**
	 * Sets whether the app chooser should show recommended applications
	 * for the content type in a separate section.
	 * Params:
	 * setting = the new value for "show-recommended"
	 * Since 3.0
	 */
	public void setShowRecommended(int setting)
	{
		// void gtk_app_chooser_widget_set_show_recommended  (GtkAppChooserWidget *self,  gboolean setting);
		gtk_app_chooser_widget_set_show_recommended(gtkAppChooserWidget, setting);
	}
	
	/**
	 * Returns the current value of the "show-recommended"
	 * property.
	 * Returns: the value of "show-recommended" Since 3.0
	 */
	public int getShowRecommended()
	{
		// gboolean gtk_app_chooser_widget_get_show_recommended  (GtkAppChooserWidget *self);
		return gtk_app_chooser_widget_get_show_recommended(gtkAppChooserWidget);
	}
	
	/**
	 * Sets whether the app chooser should show related applications
	 * for the content type in a separate section.
	 * Params:
	 * setting = the new value for "show-fallback"
	 * Since 3.0
	 */
	public void setShowFallback(int setting)
	{
		// void gtk_app_chooser_widget_set_show_fallback  (GtkAppChooserWidget *self,  gboolean setting);
		gtk_app_chooser_widget_set_show_fallback(gtkAppChooserWidget, setting);
	}
	
	/**
	 * Returns the current value of the "show-fallback"
	 * property.
	 * Returns: the value of "show-fallback" Since 3.0
	 */
	public int getShowFallback()
	{
		// gboolean gtk_app_chooser_widget_get_show_fallback  (GtkAppChooserWidget *self);
		return gtk_app_chooser_widget_get_show_fallback(gtkAppChooserWidget);
	}
	
	/**
	 * Sets whether the app chooser should show applications
	 * which are unrelated to the content type.
	 * Params:
	 * setting = the new value for "show-other"
	 * Since 3.0
	 */
	public void setShowOther(int setting)
	{
		// void gtk_app_chooser_widget_set_show_other  (GtkAppChooserWidget *self,  gboolean setting);
		gtk_app_chooser_widget_set_show_other(gtkAppChooserWidget, setting);
	}
	
	/**
	 * Returns the current value of the "show-other"
	 * property.
	 * Returns: the value of "show-other" Since 3.0
	 */
	public int getShowOther()
	{
		// gboolean gtk_app_chooser_widget_get_show_other  (GtkAppChooserWidget *self);
		return gtk_app_chooser_widget_get_show_other(gtkAppChooserWidget);
	}
	
	/**
	 * Sets whether the app chooser should show all applications
	 * in a flat list.
	 * Params:
	 * setting = the new value for "show-all"
	 * Since 3.0
	 */
	public void setShowAll(int setting)
	{
		// void gtk_app_chooser_widget_set_show_all (GtkAppChooserWidget *self,  gboolean setting);
		gtk_app_chooser_widget_set_show_all(gtkAppChooserWidget, setting);
	}
	
	/**
	 * Returns the current value of the "show-all"
	 * property.
	 * Returns: the value of "show-all" Since 3.0
	 */
	public int getShowAll()
	{
		// gboolean gtk_app_chooser_widget_get_show_all (GtkAppChooserWidget *self);
		return gtk_app_chooser_widget_get_show_all(gtkAppChooserWidget);
	}
	
	/**
	 * Sets the text that is shown if there are not applications
	 * that can handle the content type.
	 * Params:
	 * text = the new value for "default-text"
	 */
	public void setDefaultText(string text)
	{
		// void gtk_app_chooser_widget_set_default_text  (GtkAppChooserWidget *self,  const gchar *text);
		gtk_app_chooser_widget_set_default_text(gtkAppChooserWidget, Str.toStringz(text));
	}
	
	/**
	 * Returns the text that is shown if there are not applications
	 * that can handle the content type.
	 * Returns: the value of "default-text" Since 3.0
	 */
	public string getDefaultText()
	{
		// const gchar * gtk_app_chooser_widget_get_default_text  (GtkAppChooserWidget *self);
		return Str.toString(gtk_app_chooser_widget_get_default_text(gtkAppChooserWidget));
	}
}
