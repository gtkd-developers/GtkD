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

module dui.Image;

private import dui.Misc;

private import def.Types;
private import def.Constants;
private import dui.Utils;

alias GtkMisc GtkImage;

alias void GdkPixbufAnimation;
alias void GtkIconSet;

alias int GtkImageType;

private:

extern(C)
{
	GType gtk_image_get_type();
	GtkWidget * gtk_image_new();
	GtkWidget * gtk_image_new_from_pixmap(GdkPixmap * pixmap, GdkBitmap * mask);
	GtkWidget * gtk_image_new_from_image(GdkImage * image, GdkBitmap * mask);
	GtkWidget * gtk_image_new_from_file(gchar * filename);
	GtkWidget * gtk_image_new_from_pixbuf(GdkPixbuf * pixbuf);
	GtkWidget * gtk_image_new_from_stock(gchar * stock_id, IconSize size);
	GtkWidget * gtk_image_new_from_icon_set(GtkIconSet * icon_set, IconSize size);
	GtkWidget * gtk_image_new_from_animation(GdkPixbufAnimation * animation);

	void gtk_image_set_from_pixmap(GtkImage * image, GdkPixmap * pixmap, GdkBitmap * mask);
	void gtk_image_set_from_image(GtkImage * image, GdkImage * gdk_image, GdkBitmap * mask);
	void gtk_image_set_from_file(GtkImage * image, gchar * filename);
	void gtk_image_set_from_pixbuf(GtkImage * image, GdkPixbuf * pixbuf);
	void gtk_image_set_from_stock(GtkImage * image, gchar * stock_id, IconSize size);
	void gtk_image_set_from_icon_set(GtkImage * image, GtkIconSet * icon_set, IconSize size);
	void gtk_image_set_from_animation(GtkImage * image, GdkPixbufAnimation * animation);

	GtkImageType gtk_image_get_storage_type(GtkImage * image);

	void gtk_image_get_pixmap(GtkImage * image, GdkPixmap * * pixmap, GdkBitmap * * mask);
	void gtk_image_get_image(GtkImage * image, GdkImage * * gdk_image, GdkBitmap * * mask);
	GdkPixbuf * gtk_image_get_pixbuf(GtkImage * image);
	void gtk_image_get_stock(GtkImage * image, gchar * * stock_id, IconSize * size);
	void gtk_image_get_icon_set(GtkImage * image, GtkIconSet * * icon_set, IconSize * size);
	GdkPixbufAnimation * gtk_image_get_animation(GtkImage * image);
}

/**
 * A widget to load, contain and display an image.
 */
public:
class Image : Misc
{
	
	private import dui.DUIObject;
	private import dui.Widget;
	private import ddi.Pixbuf;
	private import ddi.Pixmap;
	private import ddi.Bitmap;
	
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A widget to load, contain and display an image";}
		char[] author(){return "Antonio";}
	}
	
	package:
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
		return gtk_image_get_type();
	}

	/**
	 * creates a new image
	 */
	this()
	{
		this(gtk_image_new());
	}

	/**
	 * creates a new image from a pixmap and a mask
	 */
	this(Pixmap pixmap, Bitmap mask)
	{
		this(gtk_image_new_from_pixmap(pixmap.gdkP(), mask.gdkB()));
	}

	/**
	 * creates a new image from and image and a mask
	 */
	this(Image image, Bitmap mask, bit dummy)
	{
		this(gtk_image_new_from_image(cast(GdkImage*)image.gtkW(), mask.gdkB()));
	}

	/**
	 * Creates a new image from a file
	 * @param filename  
	 */
	this(char [] filename)
	{
		this(new String(filename));
	}
	this(String filename)
	{
		this(gtk_image_new_from_file(filename.toStringz()));
	}

	/**
	 * creates a new image from a pixbuf
	 */
	this(Pixbuf pixbuf)
	{
		this(gtk_image_new_from_pixbuf(pixbuf.gdkP()));
	}

	/**
	 * creates a new image from the stock of images (same as the stock of buttons...)
	 * @param stockID the stockID
	 * @param size the icon size
	 */
	this(Stock stockID,IconSize size)
	{
		this(gtk_image_new_from_stock(String.stringz(StockDesc[stockID]),size));
	}

	/**
	 * Creates a new Image from and icon set with a size
	 * @param icon_set
	 * @param size
	 */
	this(GtkIconSet * icon_set, IconSize size)
	{
		this(gtk_image_new_from_icon_set(icon_set, size));
	}

	/**
	 * Create a new Image from an animation
	 * @param animation
	 * @param dummy not used
	 */
	this(GdkPixbufAnimation * animation, bit dummy)
	{
		this(gtk_image_new_from_animation(animation));
	}

	/**
	 * Sets this image from a pixmap and a mask
	 * @param pixmap
	 * @param mask
	 */
	void setFromPixmap(Pixmap pixmap, Bitmap mask)
	{
		gtk_image_set_from_pixmap(gtkW(), pixmap.gdkP(), mask.gdkB());
	}

	/**
	 * setFromImage
	 * @param gdk_image
	 * @param mask
	 */
	void setFromImage(GdkImage* gdk_image, Bitmap mask)
	{
		gtk_image_set_from_image(gtkW(), gdk_image, mask.gdkB());
	}

	/**
	 * setFromFile
	 * @param filename
	 */
	void setFromFile(char[] filename)
	{
		setFromFile(new String(filename));
	}
	void setFromFile(String filename)
	{
		gtk_image_set_from_file(cast(GtkImage*)gtkW(), filename.toString());
	}

	/**
	 * setFromPixbuf
	 * @param pixbuf
	 */
	void setFromPixbuf(Pixbuf pixbuf)
	{
		gtk_image_set_from_pixbuf(cast(GtkImage*)gtkW(), pixbuf.gdkP());
	}

	/**
	 * setFromStock
	 * @param stockID
	 * @param size
	 */
	void setFromStock(Stock stockID, IconSize size)
	{
		gtk_image_set_from_stock(cast(GtkImage*)gtkW(), cChar(StockDesc[stockID]), size);
	}

	/**
	 * setFromIconSet
	 * @param icon_set
	 * @param size
	 */
	void setFromIconSet(GtkIconSet * icon_set, IconSize size)
	{
		gtk_image_set_from_icon_set(cast(GtkImage*)gtkW(), icon_set, size);
	}

	/**
	 * setFromAnimation
	 * @param animation
	 */
	void setFromAnimation(GdkPixbufAnimation * animation)
	{
		gtk_image_set_from_animation(cast(GtkImage*)gtkW(), animation);
	}

	/**
	 * getStorageType
	 * @return 
	 */
	GtkImageType getStorageType()
	{
		return gtk_image_get_storage_type(cast(GtkImage*)gtkW());
	}

	/**
	 * getPixmap
	 * @param pixmap
	 * @param mask
	 */
	void getPixmap(GdkPixmap * * pixmap, GdkBitmap * * mask)
	{
		gtk_image_get_pixmap(cast(GtkImage*)gtkW(), pixmap, mask);
	}

	/**
	 * getImage
	 * @param gdk_image
	 * @param mask
	 */
	void getImage(GdkImage * * gdk_image, GdkBitmap * * mask)
	{
		gtk_image_get_image(cast(GtkImage*)gtkW(), gdk_image, mask);
	}

	private import std.stdio;
	
	/**
	 * 
	 * @return 
	 * \todo what's up with this? never gets called! is DMD broken?
	 */
	Pixbuf getPixbuf()
	{
		writefln("Image.getPixbuf!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		printf("Image.getPixbuf entry\n" );
		GdkPixbuf* gPix = gtk_image_get_pixbuf(cast(GtkImage*)gtkW());
		printf("Image.getPixbuf gPix = 0x%X\n", gPix);
		Pixbuf pix  = new Pixbuf(gPix);
		printf("Image.getPixbuf pix = 0x%X\n", pix);
		return pix;
		//return new Pixbuf(gtk_image_get_pixbuf(cast(GtkImage*)gtkW()));
	}

	/**
	 * 
	 * @param stock_id
	 * @param size
	 */
	void getStock(gchar * * stock_id, IconSize * size)
	{
		gtk_image_get_stock(cast(GtkImage*)gtkW(), stock_id, size);
	}

	/**
	 * getIconSet
	 * @param icon_set
	 * @param size
	 */
	void getIconSet(GtkIconSet * * icon_set, IconSize * size)
	{
		gtk_image_get_icon_set(cast(GtkImage*)gtkW(), icon_set, size);
	}

	/**
	 * getAnimation
	 * @return 
	 */
	GdkPixbufAnimation * getAnimation()
	{
		return gtk_image_get_animation(cast(GtkImage*)gtkW());
	}
}
