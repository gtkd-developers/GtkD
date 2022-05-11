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


module gtk.AppChooserButton;

private import gio.IconIF;
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
 * The `GtkAppChooserButton` lets the user select an application.
 * 
 * ![An example GtkAppChooserButton](appchooserbutton.png)
 * 
 * Initially, a `GtkAppChooserButton` selects the first application
 * in its list, which will either be the most-recently used application
 * or, if [property@Gtk.AppChooserButton:show-default-item] is %TRUE, the
 * default application.
 * 
 * The list of applications shown in a `GtkAppChooserButton` includes
 * the recommended applications for the given content type. When
 * [property@Gtk.AppChooserButton:show-default-item] is set, the default
 * application is also included. To let the user chooser other applications,
 * you can set the [property@Gtk.AppChooserButton:show-dialog-item] property,
 * which allows to open a full [class@Gtk.AppChooserDialog].
 * 
 * It is possible to add custom items to the list, using
 * [method@Gtk.AppChooserButton.append_custom_item]. These items cause
 * the [signal@Gtk.AppChooserButton::custom-item-activated] signal to be
 * emitted when they are selected.
 * 
 * To track changes in the selected application, use the
 * [signal@Gtk.AppChooserButton::changed] signal.
 * 
 * # CSS nodes
 * 
 * `GtkAppChooserButton` has a single CSS node with the name “appchooserbutton”.
 */
public class AppChooserButton : Widget, AppChooserIF
{
	/** the main Gtk struct */
	protected GtkAppChooserButton* gtkAppChooserButton;

	/** Get the main Gtk struct */
	public GtkAppChooserButton* getAppChooserButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAppChooserButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAppChooserButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAppChooserButton* gtkAppChooserButton, bool ownedRef = false)
	{
		this.gtkAppChooserButton = gtkAppChooserButton;
		super(cast(GtkWidget*)gtkAppChooserButton, ownedRef);
	}

	// add the AppChooser capabilities
	mixin AppChooserT!(GtkAppChooserButton);


	/** */
	public static GType getType()
	{
		return gtk_app_chooser_button_get_type();
	}

	/**
	 * Creates a new `GtkAppChooserButton` for applications
	 * that can handle content of the given type.
	 *
	 * Params:
	 *     contentType = the content type to show applications for
	 *
	 * Returns: a newly created `GtkAppChooserButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string contentType)
	{
		auto __p = gtk_app_chooser_button_new(Str.toStringz(contentType));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAppChooserButton*) __p);
	}

	/**
	 * Appends a custom item to the list of applications that is shown
	 * in the popup.
	 *
	 * The item name must be unique per-widget. Clients can use the
	 * provided name as a detail for the
	 * [signal@Gtk.AppChooserButton::custom-item-activated] signal, to add a
	 * callback for the activation of a particular custom item in the list.
	 *
	 * See also [method@Gtk.AppChooserButton.append_separator].
	 *
	 * Params:
	 *     name = the name of the custom item
	 *     label = the label for the custom item
	 *     icon = the icon for the custom item
	 */
	public void appendCustomItem(string name, string label, IconIF icon)
	{
		gtk_app_chooser_button_append_custom_item(gtkAppChooserButton, Str.toStringz(name), Str.toStringz(label), (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Appends a separator to the list of applications that is shown
	 * in the popup.
	 */
	public void appendSeparator()
	{
		gtk_app_chooser_button_append_separator(gtkAppChooserButton);
	}

	/**
	 * Returns the text to display at the top of the dialog.
	 *
	 * Returns: the text to display at the top of the dialog,
	 *     or %NULL, in which case a default text is displayed
	 */
	public string getHeading()
	{
		return Str.toString(gtk_app_chooser_button_get_heading(gtkAppChooserButton));
	}

	/**
	 * Gets whether the dialog is modal.
	 *
	 * Returns: %TRUE if the dialog is modal
	 */
	public bool getModal()
	{
		return gtk_app_chooser_button_get_modal(gtkAppChooserButton) != 0;
	}

	/**
	 * Returns whether the dropdown menu should show the default
	 * application at the top.
	 *
	 * Returns: the value of [property@Gtk.AppChooserButton:show-default-item]
	 */
	public bool getShowDefaultItem()
	{
		return gtk_app_chooser_button_get_show_default_item(gtkAppChooserButton) != 0;
	}

	/**
	 * Returns whether the dropdown menu shows an item
	 * for a `GtkAppChooserDialog`.
	 *
	 * Returns: the value of [property@Gtk.AppChooserButton:show-dialog-item]
	 */
	public bool getShowDialogItem()
	{
		return gtk_app_chooser_button_get_show_dialog_item(gtkAppChooserButton) != 0;
	}

	/**
	 * Selects a custom item.
	 *
	 * See [method@Gtk.AppChooserButton.append_custom_item].
	 *
	 * Use [method@Gtk.AppChooser.refresh] to bring the selection
	 * to its initial state.
	 *
	 * Params:
	 *     name = the name of the custom item
	 */
	public void setActiveCustomItem(string name)
	{
		gtk_app_chooser_button_set_active_custom_item(gtkAppChooserButton, Str.toStringz(name));
	}

	/**
	 * Sets the text to display at the top of the dialog.
	 *
	 * If the heading is not set, the dialog displays a default text.
	 *
	 * Params:
	 *     heading = a string containing Pango markup
	 */
	public void setHeading(string heading)
	{
		gtk_app_chooser_button_set_heading(gtkAppChooserButton, Str.toStringz(heading));
	}

	/**
	 * Sets whether the dialog should be modal.
	 *
	 * Params:
	 *     modal = %TRUE to make the dialog modal
	 */
	public void setModal(bool modal)
	{
		gtk_app_chooser_button_set_modal(gtkAppChooserButton, modal);
	}

	/**
	 * Sets whether the dropdown menu of this button should show the
	 * default application for the given content type at top.
	 *
	 * Params:
	 *     setting = the new value for [property@Gtk.AppChooserButton:show-default-item]
	 */
	public void setShowDefaultItem(bool setting)
	{
		gtk_app_chooser_button_set_show_default_item(gtkAppChooserButton, setting);
	}

	/**
	 * Sets whether the dropdown menu of this button should show an
	 * entry to trigger a `GtkAppChooserDialog`.
	 *
	 * Params:
	 *     setting = the new value for [property@Gtk.AppChooserButton:show-dialog-item]
	 */
	public void setShowDialogItem(bool setting)
	{
		gtk_app_chooser_button_set_show_dialog_item(gtkAppChooserButton, setting);
	}

	/**
	 * Emitted to when the button is activated.
	 *
	 * The `::activate` signal on `GtkAppChooserButton` is an action signal and
	 * emitting it causes the button to pop up its dialog.
	 *
	 * Since: 4.4
	 */
	gulong addOnActivate(void delegate(AppChooserButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the active application changes.
	 */
	gulong addOnChanged(void delegate(AppChooserButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a custom item is activated.
	 *
	 * Use [method@Gtk.AppChooserButton.append_custom_item],
	 * to add custom items.
	 *
	 * Params:
	 *     itemName = the name of the activated item
	 */
	gulong addOnCustomItemActivated(void delegate(string, AppChooserButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "custom-item-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
