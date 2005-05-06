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

module dui.ItemFactory;

private import def.Types;
private import def.Constants;
private import dui.ObjectG;
private import dui.AccelGroup;
private import lib.gtk;

/**
 * Factory to create menus and items - not implemented yet
 */
public:
class ItemFactory :
		ObjectG
{
	debug(status)
	{
		int complete(){return ST_NOT_YET;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Factory to create menus and items";}
		char[] author(){return "Antonio";}
	}
	

	protected:
	this(GObject * obj)
	{
		super(obj);
	}

	//void (*GtkPrintFunc)(gpointer func_data, gchar * str);
	//gchar * (*GtkTranslateFunc)(gchar * path, gpointer func_data);
	//void (*GtkItemFactoryCallback)();
	//void (*GtkItemFactoryCallback1)(gpointer callback_data, guint callback_action, GtkWidget * widget);
	//void (*GtkItemFactoryCallback2)(GtkWidget * widget, gpointer callback_data, guint callback_action);
	//struct GtkItemFactoryEntry;
	//struct GtkItemFactoryItem;
	/+
	GtkItemFactory * gtk_item_factory_new(GType container_type, gchar * path, GtkAccelGroup * accel_group);
	void gtk_item_factory_construct(GtkItemFactory * ifactory, GType container_type, gchar * path, GtkAccelGroup * accel_group);
	void gtk_item_factory_add_foreign(GtkWidget * accel_widget, gchar * full_path, GtkAccelGroup * accel_group, guint keyval, GdkModifierType modifiers);
	GtkItemFactory * gtk_item_factory_from_widget(GtkWidget * widget);
	gchar * gtk_item_factory_path_from_widget(GtkWidget * widget);
	GtkWidget * gtk_item_factory_get_item(GtkItemFactory * ifactory, gchar * path);
	GtkWidget * gtk_item_factory_get_widget(GtkItemFactory * ifactory, gchar * path);
	GtkWidget * gtk_item_factory_get_widget_by_action(GtkItemFactory * ifactory, guint action);
	GtkWidget * gtk_item_factory_get_item_by_action(GtkItemFactory * ifactory, guint action);
	void gtk_item_factory_create_item(GtkItemFactory * ifactory, GtkItemFactoryEntry * entry, gpointer callback_data, guint callback_type);
	void gtk_item_factory_create_items(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries, gpointer callback_data);
	void gtk_item_factory_create_items_ac(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries, gpointer callback_data, guint callback_type);
	void gtk_item_factory_delete_item(GtkItemFactory * ifactory, gchar * path);
	void gtk_item_factory_delete_entry(GtkItemFactory * ifactory, GtkItemFactoryEntry * entry);
	void gtk_item_factory_delete_entries(GtkItemFactory * ifactory, guint n_entries, GtkItemFactoryEntry * entries);
	void gtk_item_factory_popup(GtkItemFactory * ifactory, guint x, guint y, guint mouse_button, guint32 time_);
	void gtk_item_factory_popup_with_data(GtkItemFactory * ifactory, gpointer popup_data, GtkDestroyNotify destroy, guint x, guint y, guint mouse_button, guint32 time_);
	gpointer gtk_item_factory_popup_data(GtkItemFactory * ifactory);
	gpointer gtk_item_factory_popup_data_from_widget(GtkWidget * widget);
	GtkItemFactory * gtk_item_factory_from_path(gchar * path);
	void gtk_item_factory_create_menu_entries(guint n_entries, GtkMenuEntry * entries);
	void gtk_item_factories_path_delete(gchar * ifactory_path, gchar * path);
	void gtk_item_factory_set_translate_func(GtkItemFactory * ifactory, GtkTranslateFunc func, gpointer data, GtkDestroyNotify notify);
	+/
}
