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

private import gio.AppInfoIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkAppChooserWidget` is a widget for selecting applications.
 * 
 * It is the main building block for [class@Gtk.AppChooserDialog].
 * Most applications only need to use the latter; but you can use
 * this widget as part of a larger widget if you have special needs.
 * 
 * `GtkAppChooserWidget` offers detailed control over what applications
 * are shown, using the
 * [property@Gtk.AppChooserWidget:show-default],
 * [property@Gtk.AppChooserWidget:show-recommended],
 * [property@Gtk.AppChooserWidget:show-fallback],
 * [property@Gtk.AppChooserWidget:show-other] and
 * [property@Gtk.AppChooserWidget:show-all] properties. See the
 * [iface@Gtk.AppChooser] documentation for more information about these
 * groups of applications.
 * 
 * To keep track of the selected application, use the
 * [signal@Gtk.AppChooserWidget::application-selected] and
 * [signal@Gtk.AppChooserWidget::application-activated] signals.
 * 
 * # CSS nodes
 * 
 * `GtkAppChooserWidget` has a single CSS node with name appchooser.
 */
public class AppChooserWidget : Widget, AppChooserIF
{
	/** the main Gtk struct */
	protected GtkAppChooserWidget* gtkAppChooserWidget;

	/** Get the main Gtk struct */
	public GtkAppChooserWidget* getAppChooserWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAppChooserWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAppChooserWidget* gtkAppChooserWidget, bool ownedRef = false)
	{
		this.gtkAppChooserWidget = gtkAppChooserWidget;
		super(cast(GtkWidget*)gtkAppChooserWidget, ownedRef);
	}

	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserWidget);


	/** */
	public static GType getType()
	{
		return gtk_app_chooser_widget_get_type();
	}

	/**
	 * Creates a new `GtkAppChooserWidget` for applications
	 * that can handle content of the given type.
	 *
	 * Params:
	 *     contentType = the content type to show applications for
	 *
	 * Returns: a newly created `GtkAppChooserWidget`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string contentType)
	{
		auto __p = gtk_app_chooser_widget_new(Str.toStringz(contentType));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAppChooserWidget*) __p);
	}

	/**
	 * Returns the text that is shown if there are not applications
	 * that can handle the content type.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:default-text]
	 */
	public string getDefaultText()
	{
		return Str.toString(gtk_app_chooser_widget_get_default_text(gtkAppChooserWidget));
	}

	/**
	 * Gets whether the app chooser should show all applications
	 * in a flat list.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:show-all]
	 */
	public bool getShowAll()
	{
		return gtk_app_chooser_widget_get_show_all(gtkAppChooserWidget) != 0;
	}

	/**
	 * Gets whether the app chooser should show the default handler
	 * for the content type in a separate section.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:show-default]
	 */
	public bool getShowDefault()
	{
		return gtk_app_chooser_widget_get_show_default(gtkAppChooserWidget) != 0;
	}

	/**
	 * Gets whether the app chooser should show related applications
	 * for the content type in a separate section.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:show-fallback]
	 */
	public bool getShowFallback()
	{
		return gtk_app_chooser_widget_get_show_fallback(gtkAppChooserWidget) != 0;
	}

	/**
	 * Gets whether the app chooser should show applications
	 * which are unrelated to the content type.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:show-other]
	 */
	public bool getShowOther()
	{
		return gtk_app_chooser_widget_get_show_other(gtkAppChooserWidget) != 0;
	}

	/**
	 * Gets whether the app chooser should show recommended applications
	 * for the content type in a separate section.
	 *
	 * Returns: the value of [property@Gtk.AppChooserWidget:show-recommended]
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
	 *     text = the new value for [property@Gtk.AppChooserWidget:default-text]
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
	 *     setting = the new value for [property@Gtk.AppChooserWidget:show-all]
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
	 *     setting = the new value for [property@Gtk.AppChooserWidget:show-default]
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
	 *     setting = the new value for [property@Gtk.AppChooserWidget:show-fallback]
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
	 *     setting = the new value for [property@Gtk.AppChooserWidget:show-other]
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
	 *     setting = the new value for [property@Gtk.AppChooserWidget:show-recommended]
	 */
	public void setShowRecommended(bool setting)
	{
		gtk_app_chooser_widget_set_show_recommended(gtkAppChooserWidget, setting);
	}

	/**
	 * Emitted when an application item is activated from the widget's list.
	 *
	 * This usually happens when the user double clicks an item, or an item
	 * is selected and the user presses one of the keys Space, Shift+Space,
	 * Return or Enter.
	 *
	 * Params:
	 *     application = the activated `GAppInfo`
	 */
	gulong addOnApplicationActivated(void delegate(AppInfoIF, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "application-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an application item is selected from the widget's list.
	 *
	 * Params:
	 *     application = the selected `GAppInfo`
	 */
	gulong addOnApplicationSelected(void delegate(AppInfoIF, AppChooserWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "application-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
