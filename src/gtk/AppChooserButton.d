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
 * inFile  = GtkAppChooserButton.html
 * outPack = gtk
 * outFile = AppChooserButton
 * strct   = GtkAppChooserButton
 * realStrct=
 * ctorStrct=
 * clss    = AppChooserButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AppChooserIF
 * prefixes:
 * 	- gtk_app_chooser_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.IconIF
 * 	- gtk.AppChooserIF
 * 	- gtk.AppChooserT
 * structWrap:
 * 	- GIcon* -> IconIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.AppChooserButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.IconIF;
private import gtk.AppChooserIF;
private import gtk.AppChooserT;



private import gtk.ComboBox;

/**
 * The GtkAppChooserButton is a widget that lets the user select
 * an application. It implements the GtkAppChooser interface.
 *
 * Initially, a GtkAppChooserButton selects the first application
 * in its list, which will either be the most-recently used application
 * or, if "show-default-item" is TRUE, the
 * default application.
 *
 * The list of applications shown in a GtkAppChooserButton includes
 * the recommended applications for the given content type. When
 * "show-default-item" is set, the default application
 * is also included. To let the user chooser other applications,
 * you can set the "show-dialog-item" property,
 * which allows to open a full GtkAppChooserDialog.
 *
 * It is possible to add custom items to the list, using
 * gtk_app_chooser_button_append_custom_item(). These items cause
 * the "custom-item-activated" signal to be
 * emitted when they are selected.
 *
 * To track changes in the selected application, use the
 * "changed" signal.
 */
public class AppChooserButton : ComboBox, AppChooserIF
{
	
	/** the main Gtk struct */
	protected GtkAppChooserButton* gtkAppChooserButton;
	
	
	public GtkAppChooserButton* getAppChooserButtonStruct()
	{
		return gtkAppChooserButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAppChooserButton* gtkAppChooserButton)
	{
		super(cast(GtkComboBox*)gtkAppChooserButton);
		this.gtkAppChooserButton = gtkAppChooserButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAppChooserButton = cast(GtkAppChooserButton*)obj;
	}
	
	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserButton);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, AppChooserButton)[] onCustomItemActivatedListeners;
	/**
	 * Emitted when a custom item, previously added with
	 * gtk_app_chooser_button_append_custom_item(), is activated from the
	 * dropdown menu.
	 */
	void addOnCustomItemActivated(void delegate(string, AppChooserButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("custom-item-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"custom-item-activated",
			cast(GCallback)&callBackCustomItemActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["custom-item-activated"] = 1;
		}
		onCustomItemActivatedListeners ~= dlg;
	}
	extern(C) static void callBackCustomItemActivated(GtkAppChooserButton* selfStruct, gchar* itemName, AppChooserButton _appChooserButton)
	{
		foreach ( void delegate(string, AppChooserButton) dlg ; _appChooserButton.onCustomItemActivatedListeners )
		{
			dlg(Str.toString(itemName), _appChooserButton);
		}
	}
	
	
	/**
	 * Creates a new GtkAppChooserButton for applications
	 * that can handle content of the given type.
	 * Params:
	 * contentType = the content type to show applications for
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string contentType)
	{
		// GtkWidget * gtk_app_chooser_button_new (const gchar *content_type);
		auto p = gtk_app_chooser_button_new(Str.toStringz(contentType));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_app_chooser_button_new(Str.toStringz(contentType))");
		}
		this(cast(GtkAppChooserButton*) p);
	}
	
	/**
	 * Appends a custom item to the list of applications that is shown
	 * in the popup; the item name must be unique per-widget.
	 * Clients can use the provided name as a detail for the
	 * "custom-item-activated" signal, to add a
	 * callback for the activation of a particular custom item in the list.
	 * See also gtk_app_chooser_button_append_separator().
	 * Params:
	 * name = the name of the custom item
	 * label = the label for the custom item
	 * icon = the icon for the custom item
	 * Since 3.0
	 */
	public void appendCustomItem(string name, string label, IconIF icon)
	{
		// void gtk_app_chooser_button_append_custom_item  (GtkAppChooserButton *self,  const gchar *name,  const gchar *label,  GIcon *icon);
		gtk_app_chooser_button_append_custom_item(gtkAppChooserButton, Str.toStringz(name), Str.toStringz(label), (icon is null) ? null : icon.getIconTStruct());
	}
	
	/**
	 * Appends a separator to the list of applications that is shown
	 * in the popup.
	 */
	public void appendSeparator()
	{
		// void gtk_app_chooser_button_append_separator  (GtkAppChooserButton *self);
		gtk_app_chooser_button_append_separator(gtkAppChooserButton);
	}
	
	/**
	 * Selects a custom item previously added with
	 * gtk_app_chooser_button_append_custom_item().
	 * Use gtk_app_chooser_refresh() to bring the selection
	 * to its initial state.
	 * Params:
	 * name = the name of the custom item
	 * Since 3.0
	 */
	public void setActiveCustomItem(string name)
	{
		// void gtk_app_chooser_button_set_active_custom_item  (GtkAppChooserButton *self,  const gchar *name);
		gtk_app_chooser_button_set_active_custom_item(gtkAppChooserButton, Str.toStringz(name));
	}
	
	/**
	 * Returns the current value of the "show-default-item"
	 * property.
	 * Returns: the value of "show-default-item" Since 3.2
	 */
	public int getShowDefaultItem()
	{
		// gboolean gtk_app_chooser_button_get_show_default_item  (GtkAppChooserButton *self);
		return gtk_app_chooser_button_get_show_default_item(gtkAppChooserButton);
	}
	
	/**
	 * Sets whether the dropdown menu of this button should show the
	 * default application for the given content type at top.
	 * Params:
	 * setting = the new value for "show-default-item"
	 * Since 3.2
	 */
	public void setShowDefaultItem(int setting)
	{
		// void gtk_app_chooser_button_set_show_default_item  (GtkAppChooserButton *self,  gboolean setting);
		gtk_app_chooser_button_set_show_default_item(gtkAppChooserButton, setting);
	}
	
	/**
	 * Returns the current value of the "show-dialog-item"
	 * property.
	 * Returns: the value of "show-dialog-item" Since 3.0
	 */
	public int getShowDialogItem()
	{
		// gboolean gtk_app_chooser_button_get_show_dialog_item  (GtkAppChooserButton *self);
		return gtk_app_chooser_button_get_show_dialog_item(gtkAppChooserButton);
	}
	
	/**
	 * Sets whether the dropdown menu of this button should show an
	 * entry to trigger a GtkAppChooserDialog.
	 * Params:
	 * setting = the new value for "show-dialog-item"
	 * Since 3.0
	 */
	public void setShowDialogItem(int setting)
	{
		// void gtk_app_chooser_button_set_show_dialog_item  (GtkAppChooserButton *self,  gboolean setting);
		gtk_app_chooser_button_set_show_dialog_item(gtkAppChooserButton, setting);
	}
	
	/**
	 * Returns the text to display at the top of the dialog.
	 * Returns: the text to display at the top of the dialog, or NULL, in which case a default text is displayed
	 */
	public string getHeading()
	{
		// const gchar * gtk_app_chooser_button_get_heading (GtkAppChooserButton *self);
		return Str.toString(gtk_app_chooser_button_get_heading(gtkAppChooserButton));
	}
	
	/**
	 * Sets the text to display at the top of the dialog.
	 * If the heading is not set, the dialog displays a default text.
	 * Params:
	 * heading = a string containing Pango markup
	 */
	public void setHeading(string heading)
	{
		// void gtk_app_chooser_button_set_heading (GtkAppChooserButton *self,  const gchar *heading);
		gtk_app_chooser_button_set_heading(gtkAppChooserButton, Str.toStringz(heading));
	}
}
