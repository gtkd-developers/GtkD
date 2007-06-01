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
 * inFile  = GtkItemFactory.html
 * outPack = gtk
 * outFile = ItemFactory
 * strct   = GtkItemFactory
 * realStrct=
 * ctorStrct=
 * clss    = ItemFactory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_item_factory_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * 	- gtk_item_factory_create_menu_entries
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.AccelGroup
 * 	- gtk.Widget
 * 	- gtk.ItemFactory
 * structWrap:
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkItemFactory* -> ItemFactory
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.ItemFactory;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.AccelGroup;
private import gtk.Widget;
private import gtk.ItemFactory;




/**
 * Description
 * As of GTK+ 2.4, GtkItemFactory has been deprecated in favour of GtkUIManager.
 */
private import gtk.ObjectGtk;
public class ItemFactory : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkItemFactory* gtkItemFactory;
	
	
	public GtkItemFactory* getItemFactoryStruct()
	{
		return gtkItemFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkItemFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkItemFactory* gtkItemFactory)
	{
		assert(gtkItemFactory !is null, "struct gtkItemFactory is null on constructor");
		super(cast(GtkObject*)gtkItemFactory);
		this.gtkItemFactory = gtkItemFactory;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	/**
	 * Warning
	 * gtk_item_factory_new has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Creates a new GtkItemFactory.
	 * Beware that the returned object does not have a floating reference.
	 * container_type:
	 *  the kind of menu to create; can be
	 *  GTK_TYPE_MENU_BAR, GTK_TYPE_MENU or GTK_TYPE_OPTION_MENU
	 * path:
	 *  the factory path of the new item factory, a string of the form
	 *  "<name>"
	 * accel_group:
	 *  a GtkAccelGroup to which the accelerators for the
	 *  menu items will be added, or NULL to create a new one
	 * Returns:
	 *  a new GtkItemFactory
	 */
	public this (GType containerType, char[] path, AccelGroup accelGroup)
	{
		// GtkItemFactory* gtk_item_factory_new (GType container_type,  const gchar *path,  GtkAccelGroup *accel_group);
		this(cast(GtkItemFactory*)gtk_item_factory_new(containerType, Str.toStringz(path), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct()) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_construct has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Initializes an item factory.
	 * ifactory:
	 *  a GtkItemFactory
	 * container_type:
	 *  the kind of menu to create; can be
	 *  GTK_TYPE_MENU_BAR, GTK_TYPE_MENU or GTK_TYPE_OPTION_MENU
	 * path:
	 *  the factory path of ifactory, a string of the form
	 *  "<name>"
	 * accel_group:
	 *  a GtkAccelGroup to which the accelerators for the
	 *  menu items will be added, or NULL to create a new one
	 */
	public void construct(GType containerType, char[] path, AccelGroup accelGroup)
	{
		// void gtk_item_factory_construct (GtkItemFactory *ifactory,  GType container_type,  const gchar *path,  GtkAccelGroup *accel_group);
		gtk_item_factory_construct(gtkItemFactory, containerType, Str.toStringz(path), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Warning
	 * gtk_item_factory_add_foreign has been deprecated since version 2.4 and should not be used in newly-written code. The recommended API for this purpose are the functions
	 * gtk_menu_item_set_accel_path() and gtk_widget_set_accel_path(); don't
	 * use gtk_item_factory_add_foreign() in new code, since it is likely to
	 * be removed in the future.
	 * Installs an accelerator for accel_widget in accel_group, that causes
	 * the ::activate signal to be emitted if the accelerator is activated.
	 * This function can be used to make widgets participate in the accel
	 * saving/restoring functionality provided by gtk_accel_map_save() and
	 * gtk_accel_map_load(), even if they haven't been created by an item
	 * factory.
	 * accel_widget:
	 *  widget to install an accelerator on
	 * full_path:
	 * 	 the full path for the accel_widget
	 * accel_group:
	 *  the accelerator group to install the accelerator in
	 * keyval:
	 *  key value of the accelerator
	 * modifiers:
	 *  modifier combination of the accelerator
	 */
	public static void addForeign(Widget accelWidget, char[] fullPath, AccelGroup accelGroup, uint keyval, GdkModifierType modifiers)
	{
		// void gtk_item_factory_add_foreign (GtkWidget *accel_widget,  const gchar *full_path,  GtkAccelGroup *accel_group,  guint keyval,  GdkModifierType modifiers);
		gtk_item_factory_add_foreign((accelWidget is null) ? null : accelWidget.getWidgetStruct(), Str.toStringz(fullPath), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct(), keyval, modifiers);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_from_widget is deprecated and should not be used in newly-written code. 2.4
	 * Obtains the item factory from which a widget was created.
	 * widget:
	 *  a widget
	 * Returns:
	 *  the item factory from which widget was created, or NULL
	 */
	public static ItemFactory fromWidget(Widget widget)
	{
		// GtkItemFactory* gtk_item_factory_from_widget (GtkWidget *widget);
		return new ItemFactory( gtk_item_factory_from_widget((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_path_from_widget has been deprecated since version 2.4 and should not be used in newly-written code.
	 * If widget has been created by an item factory, returns the full path
	 * to it. (The full path of a widget is the concatenation of the factory
	 * path specified in gtk_item_factory_new() with the path specified in the
	 * GtkItemFactoryEntry from which the widget was created.)
	 * widget:
	 *  a widget
	 * Returns:
	 *  the full path to widget if it has been created by an item
	 *  factory, NULL otherwise. This value is owned by GTK+ and must not be
	 *  modified or freed.
	 */
	public static char[] pathFromWidget(Widget widget)
	{
		// const gchar* gtk_item_factory_path_from_widget (GtkWidget *widget);
		return Str.toString(gtk_item_factory_path_from_widget((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_get_item has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the menu item which corresponds to path.
	 * If the widget corresponding to path is a menu item which opens a
	 * submenu, then the item is returned. If you are interested in the submenu,
	 * use gtk_item_factory_get_widget() instead.
	 * ifactory:
	 *  a GtkItemFactory
	 * path:
	 *  the path to the menu item
	 * Returns:
	 *  the menu item for the given path, or NULL if path doesn't
	 *  lead to a menu item
	 */
	public Widget getItem(char[] path)
	{
		// GtkWidget* gtk_item_factory_get_item (GtkItemFactory *ifactory,  const gchar *path);
		return new Widget( gtk_item_factory_get_item(gtkItemFactory, Str.toStringz(path)) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_get_widget has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the widget which corresponds to path.
	 * If the widget corresponding to path is a menu item which opens a
	 * submenu, then the submenu is returned. If you are interested in the menu
	 * item, use gtk_item_factory_get_item() instead.
	 * ifactory:
	 *  a GtkItemFactory
	 * path:
	 *  the path to the widget
	 * Returns:
	 *  the widget for the given path, or NULL if path doesn't lead
	 *  to a widget
	 */
	public Widget getWidget(char[] path)
	{
		// GtkWidget* gtk_item_factory_get_widget (GtkItemFactory *ifactory,  const gchar *path);
		return new Widget( gtk_item_factory_get_widget(gtkItemFactory, Str.toStringz(path)) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_get_widget_by_action has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the widget which was constructed from the GtkItemFactoryEntry
	 * with the given action.
	 * If there are multiple items with the same action, the result is
	 * undefined.
	 * ifactory:
	 *  a GtkItemFactory
	 * action:
	 *  an action as specified in the callback_action field
	 *  of GtkItemFactoryEntry
	 * Returns:
	 *  the widget which corresponds to the given action, or NULL
	 *  if no widget was found
	 */
	public Widget getWidgetByAction(uint action)
	{
		// GtkWidget* gtk_item_factory_get_widget_by_action  (GtkItemFactory *ifactory,  guint action);
		return new Widget( gtk_item_factory_get_widget_by_action(gtkItemFactory, action) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_get_item_by_action has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the menu item which was constructed from the first
	 * GtkItemFactoryEntry with the given action.
	 * ifactory:
	 *  a GtkItemFactory
	 * action:
	 *  an action as specified in the callback_action field
	 *  of GtkItemFactoryEntry
	 * Returns:
	 *  the menu item which corresponds to the given action, or NULL
	 *  if no menu item was found
	 */
	public Widget getItemByAction(uint action)
	{
		// GtkWidget* gtk_item_factory_get_item_by_action (GtkItemFactory *ifactory,  guint action);
		return new Widget( gtk_item_factory_get_item_by_action(gtkItemFactory, action) );
	}
	
	/**
	 * Warning
	 * gtk_item_factory_create_item has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Creates an item for entry.
	 * ifactory:
	 *  a GtkItemFactory
	 * entry:
	 *  the GtkItemFactoryEntry to create an item for
	 * callback_data:
	 *  data passed to the callback function of entry
	 * callback_type:
	 *  1 if the callback function of entry is of type
	 *  GtkItemFactoryCallback1, 2 if it is of type GtkItemFactoryCallback2
	 */
	public void createItem(GtkItemFactoryEntry* entry, void* callbackData, uint callbackType)
	{
		// void gtk_item_factory_create_item (GtkItemFactory *ifactory,  GtkItemFactoryEntry *entry,  gpointer callback_data,  guint callback_type);
		gtk_item_factory_create_item(gtkItemFactory, entry, callbackData, callbackType);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_create_items has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Creates the menu items from the entries.
	 * ifactory:
	 *  a GtkItemFactory
	 * n_entries:
	 *  the length of entries
	 * entries:
	 *  an array of GtkItemFactoryEntrys whose callback members
	 *  must by of type GtkItemFactoryCallback1
	 * callback_data:
	 *  data passed to the callback functions of all entries
	 */
	public void createItems(uint nEntries, GtkItemFactoryEntry* entries, void* callbackData)
	{
		// void gtk_item_factory_create_items (GtkItemFactory *ifactory,  guint n_entries,  GtkItemFactoryEntry *entries,  gpointer callback_data);
		gtk_item_factory_create_items(gtkItemFactory, nEntries, entries, callbackData);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_create_items_ac has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Creates the menu items from the entries.
	 * ifactory:
	 *  a GtkItemFactory
	 * n_entries:
	 *  the length of entries
	 * entries:
	 *  an array of GtkItemFactoryEntrys
	 * callback_data:
	 *  data passed to the callback functions of all entries
	 * callback_type:
	 *  1 if the callback functions in entries are of type
	 *  GtkItemFactoryCallback1, 2 if they are of type GtkItemFactoryCallback2
	 */
	public void createItemsAc(uint nEntries, GtkItemFactoryEntry* entries, void* callbackData, uint callbackType)
	{
		// void gtk_item_factory_create_items_ac (GtkItemFactory *ifactory,  guint n_entries,  GtkItemFactoryEntry *entries,  gpointer callback_data,  guint callback_type);
		gtk_item_factory_create_items_ac(gtkItemFactory, nEntries, entries, callbackData, callbackType);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_delete_item has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Deletes the menu item which was created for path by the given
	 * item factory.
	 * ifactory:
	 *  a GtkItemFactory
	 * path:
	 *  a path
	 */
	public void deleteItem(char[] path)
	{
		// void gtk_item_factory_delete_item (GtkItemFactory *ifactory,  const gchar *path);
		gtk_item_factory_delete_item(gtkItemFactory, Str.toStringz(path));
	}
	
	/**
	 * Warning
	 * gtk_item_factory_delete_entry has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Deletes the menu item which was created from entry by the given
	 * item factory.
	 * ifactory:
	 *  a GtkItemFactory
	 * entry:
	 *  a GtkItemFactoryEntry
	 */
	public void deleteEntry(GtkItemFactoryEntry* entry)
	{
		// void gtk_item_factory_delete_entry (GtkItemFactory *ifactory,  GtkItemFactoryEntry *entry);
		gtk_item_factory_delete_entry(gtkItemFactory, entry);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_delete_entries has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Deletes the menu items which were created from the entries by the given
	 * item factory.
	 * ifactory:
	 *  a GtkItemFactory
	 * n_entries:
	 *  the length of entries
	 * entries:
	 *  an array of GtkItemFactoryEntrys
	 */
	public void deleteEntries(uint nEntries, GtkItemFactoryEntry* entries)
	{
		// void gtk_item_factory_delete_entries (GtkItemFactory *ifactory,  guint n_entries,  GtkItemFactoryEntry *entries);
		gtk_item_factory_delete_entries(gtkItemFactory, nEntries, entries);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_popup has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Pops up the menu constructed from the item factory at (x, y).
	 * The mouse_button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other than
	 * a mouse button press, such as a mouse button release or a keypress,
	 * mouse_button should be 0.
	 * The time_ parameter should be the time stamp of the event that
	 * initiated the popup. If such an event is not available, use
	 * gtk_get_current_event_time() instead.
	 * The operation of the mouse_button and the time_ parameter is the same
	 * as the button and activation_time parameters for gtk_menu_popup().
	 * ifactory:
	 *  a GtkItemFactory of type GTK_TYPE_MENU (see gtk_item_factory_new())
	 * x:
	 *  the x position
	 * y:
	 *  the y position
	 * mouse_button:
	 *  the mouse button which was pressed to initiate the popup
	 * time_:
	 *  the time at which the activation event occurred
	 */
	public void popup(uint x, uint y, uint mouseButton, uint time)
	{
		// void gtk_item_factory_popup (GtkItemFactory *ifactory,  guint x,  guint y,  guint mouse_button,  guint32 time_);
		gtk_item_factory_popup(gtkItemFactory, x, y, mouseButton, time);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_popup_with_data has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Pops up the menu constructed from the item factory at (x, y). Callbacks
	 * can access the popup_data while the menu is posted via
	 * gtk_item_factory_popup_data() and gtk_item_factory_popup_data_from_widget().
	 * The mouse_button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other than
	 * a mouse button press, such as a mouse button release or a keypress,
	 * mouse_button should be 0.
	 * The time_ parameter should be the time stamp of the event that
	 * initiated the popup. If such an event is not available, use
	 * gtk_get_current_event_time() instead.
	 * The operation of the mouse_button and the time_ parameters is the same
	 * as the button and activation_time parameters for gtk_menu_popup().
	 * ifactory:
	 *  a GtkItemFactory of type GTK_TYPE_MENU (see gtk_item_factory_new())
	 * popup_data:
	 *  data available for callbacks while the menu is posted
	 * destroy:
	 *  a GtkDestroyNotify function to be called on popup_data when
	 *  the menu is unposted
	 * x:
	 *  the x position
	 * y:
	 *  the y position
	 * mouse_button:
	 *  the mouse button which was pressed to initiate the popup
	 * time_:
	 *  the time at which the activation event occurred
	 */
	public void popupWithData(void* popupData, GtkDestroyNotify destroy, uint x, uint y, uint mouseButton, uint time)
	{
		// void gtk_item_factory_popup_with_data (GtkItemFactory *ifactory,  gpointer popup_data,  GtkDestroyNotify destroy,  guint x,  guint y,  guint mouse_button,  guint32 time_);
		gtk_item_factory_popup_with_data(gtkItemFactory, popupData, destroy, x, y, mouseButton, time);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_popup_data has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the popup_data which was passed to
	 * gtk_item_factory_popup_with_data(). This data is available until the menu
	 * is popped down again.
	 * ifactory:
	 *  a GtkItemFactory
	 * Returns:
	 *  popup_data associated with ifactory
	 */
	public void* popupData()
	{
		// gpointer gtk_item_factory_popup_data (GtkItemFactory *ifactory);
		return gtk_item_factory_popup_data(gtkItemFactory);
	}
	
	/**
	 * Warning
	 * gtk_item_factory_popup_data_from_widget has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Obtains the popup_data which was passed to
	 * gtk_item_factory_popup_with_data(). This data is available until the menu
	 * is popped down again.
	 * widget:
	 *  a widget
	 * Returns:
	 *  popup_data associated with the item factory from
	 *  which widget was created, or NULL if widget wasn't created
	 *  by an item factory
	 */
	public static void* popupDataFromWidget(Widget widget)
	{
		// gpointer gtk_item_factory_popup_data_from_widget  (GtkWidget *widget);
		return gtk_item_factory_popup_data_from_widget((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Warning
	 * gtk_item_factory_from_path has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Finds an item factory which has been constructed using the
	 * "<name>" prefix of path as the path argument
	 * for gtk_item_factory_new().
	 * path:
	 *  a string starting with a factory path of the form
	 *  "<name>"
	 * Returns:
	 *  the GtkItemFactory created for the given factory path, or NULL
	 */
	public static ItemFactory fromPath(char[] path)
	{
		// GtkItemFactory* gtk_item_factory_from_path (const gchar *path);
		return new ItemFactory( gtk_item_factory_from_path(Str.toStringz(path)) );
	}
	
	
	/**
	 * Warning
	 * gtk_item_factories_path_delete has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Deletes all widgets constructed from the specified path.
	 * ifactory_path:
	 *  a factory path to prepend to path. May be NULL if path
	 *  starts with a factory path
	 * path:
	 *  a path
	 */
	public static void itemFactoriesPathDelete(char[] ifactoryPath, char[] path)
	{
		// void gtk_item_factories_path_delete (const gchar *ifactory_path,  const gchar *path);
		gtk_item_factories_path_delete(Str.toStringz(ifactoryPath), Str.toStringz(path));
	}
	
	/**
	 * Warning
	 * gtk_item_factory_set_translate_func has been deprecated since version 2.4 and should not be used in newly-written code.
	 * Sets a function to be used for translating the path elements before they
	 * are displayed.
	 * ifactory:
	 *  a GtkItemFactory
	 * func:
	 *  the GtkTranslateFunc function to be used to translate path elements
	 * data:
	 *  data to pass to func and notify
	 * notify:
	 *  a GtkDestroyNotify function to be called when ifactory is
	 *  destroyed and when the translation function is changed again
	 */
	public void setTranslateFunc(GtkTranslateFunc func, void* data, GtkDestroyNotify notify)
	{
		// void gtk_item_factory_set_translate_func (GtkItemFactory *ifactory,  GtkTranslateFunc func,  gpointer data,  GtkDestroyNotify notify);
		gtk_item_factory_set_translate_func(gtkItemFactory, func, data, notify);
	}
}
