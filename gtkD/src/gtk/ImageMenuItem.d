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
 * inFile  = GtkImageMenuItem.html
 * outPack = gtk
 * outFile = ImageMenuItem
 * strct   = GtkImageMenuItem
 * realStrct=
 * ctorStrct=
 * clss    = ImageMenuItem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_image_menu_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_image_menu_item_new_with_label
 * 	- gtk_image_menu_item_new_with_mnemonic
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.AccelGroup
 * structWrap:
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.ImageMenuItem;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.Widget;
private import gtk.AccelGroup;



/**
 * Description
 * A GtkImageMenuItem is a menu item which has an icon next to the text label.
 * Note that the user can disable display of menu icons, so make sure to still
 * fill in the text label.
 */
private import gtk.MenuItem;
public class ImageMenuItem : MenuItem
{
	
	/** the main Gtk struct */
	protected GtkImageMenuItem* gtkImageMenuItem;
	
	
	public GtkImageMenuItem* getImageMenuItemStruct()
	{
		return gtkImageMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkImageMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkImageMenuItem* gtkImageMenuItem)
	{
		super(cast(GtkMenuItem*)gtkImageMenuItem);
		this.gtkImageMenuItem = gtkImageMenuItem;
	}
	
	/**
	 * Creates a new GtkImageMenuItem containing a label.
	 * If mnemonic it true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the menu item.
	 * label:
	 *  the text of the menu item.
	 * Returns:
	 *  a new GtkImageMenuItem.
	 */
	public this (char[] label, bool mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_image_menu_item_new_with_mnemonic  (const gchar *label);
			this(cast(GtkImageMenuItem*)gtk_image_menu_item_new_with_mnemonic(Str.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_image_menu_item_new_with_label  (const gchar *label);
			this(cast(GtkImageMenuItem*)gtk_image_menu_item_new_with_label(Str.toStringz(label)) );
		}
	}
	
	/**
	 */
	
	
	/**
	 * Sets the image of image_menu_item to the given widget.
	 * Note that it depends on the show-menu-images setting whether
	 * the image will be displayed or not.
	 * image_menu_item:
	 *  a GtkImageMenuItem.
	 * image:
	 *  a widget to set as the image for the menu item.
	 */
	public void setImage(Widget image)
	{
		// void gtk_image_menu_item_set_image (GtkImageMenuItem *image_menu_item,  GtkWidget *image);
		gtk_image_menu_item_set_image(gtkImageMenuItem, (image is null) ? null : image.getWidgetStruct());
	}
	
	/**
	 * Gets the widget that is currently set as the image of image_menu_item.
	 * See gtk_image_menu_item_set_image().
	 * image_menu_item:
	 *  a GtkImageMenuItem.
	 * Returns:
	 *  the widget set as image of image_menu_item.
	 */
	public Widget getImage()
	{
		// GtkWidget* gtk_image_menu_item_get_image (GtkImageMenuItem *image_menu_item);
		return new Widget( gtk_image_menu_item_get_image(gtkImageMenuItem) );
	}
	
	/**
	 * Creates a new GtkImageMenuItem with an empty label.
	 * Returns:
	 *  a new GtkImageMenuItem.
	 */
	public this ()
	{
		// GtkWidget* gtk_image_menu_item_new (void);
		this(cast(GtkImageMenuItem*)gtk_image_menu_item_new() );
	}
	
	/**
	 * Creates a new GtkImageMenuItem containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK
	 * and GTK_STOCK_APPLY.
	 * If you want this menu item to have changeable accelerators, then pass in
	 * NULL for accel_group. Next call gtk_menu_item_set_accel_path() with an
	 * appropriate path for the menu item, use gtk_stock_lookup() to look up the
	 * standard accelerator for the stock item, and if one is found, call
	 * gtk_accel_map_add_entry() to register it.
	 * stock_id:
	 *  the name of the stock item.
	 * accel_group:
	 *  the GtkAccelGroup to add the menu items accelerator to,
	 *  or NULL.
	 * Returns:
	 *  a new GtkImageMenuItem.
	 */
	public this (char[] stockId, AccelGroup accelGroup)
	{
		// GtkWidget* gtk_image_menu_item_new_from_stock (const gchar *stock_id,  GtkAccelGroup *accel_group);
		this(cast(GtkImageMenuItem*)gtk_image_menu_item_new_from_stock(Str.toStringz(stockId), (accelGroup is null) ? null : accelGroup.getAccelGroupStruct()) );
	}
	
	
}
