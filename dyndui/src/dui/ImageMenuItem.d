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

module dui.ImageMenuItem;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.AccelGroup;
private import dui.MenuItem;
private import dui.Image;
private import dui.DUIObject;
private import lib.gtk;

/**
 * A menu item with an image
 */
public:
class ImageMenuItem :
		MenuItem
{
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A menu item with an image";}
		char[] author(){return "Antonio";}
	}

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_image_menu_item_get_type();
	}

	
	/**
	 * Gets the item image
	 */
	Image getImage()
	{
		return new Image(gtk_image_menu_item_get_image(gtkW()));
	}

	/**
	 * Creates a new image menu item
	 */
	this()
	{
		this(gtk_image_menu_item_new());
	}


	/**
	 * Creates a new image menu item from the stock images
	 * @param stockID the sotck id
	 * @param accelGroup
	 */
	this(Stock stockID, AccelGroup accelGroup)
	{
		this(gtk_image_menu_item_new_from_stock(cChar(StockDesc[stockID]), accelGroup.obj()));
	}

//	/**
//	 * Creates a new image menu item with a label
//	 * @param label the menu item label text
//	 */
//	this(char [] label)
//	{
//		this(gtk_image_menu_item_new_with_label(cChar(label)));
//	}

	/**
	 * Creates a new image menu item with mnemonic
	 * @param label the menu item text label
	 */
	this(char [] label)
	{
		this(gtk_image_menu_item_new_with_mnemonic(cChar(label)));
	}

	/**
	 * Sets the image for this image menu item
	 */
	void setImage(Image image)
	{
		gtk_image_menu_item_set_image(gtkW(), image.gtkW());
	}

}
