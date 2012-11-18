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
 * inFile  = GtkImage.html
 * outPack = gtk
 * outFile = Image
 * strct   = GtkImage
 * realStrct=
 * ctorStrct=
 * clss    = Image
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_image_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_image_new_from_stock
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gdkpixbuf.PixbufAnimation
 * 	- gtk.IconSet
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkPixbufAnimation* -> PixbufAnimation
 * 	- GtkIconSet* -> IconSet
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Image;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gdkpixbuf.PixbufAnimation;
private import gtk.IconSet;



private import gtk.Misc;

/**
 * Description
 * The GtkImage widget displays an image. Various kinds of object
 * can be displayed as an image; most typically, you would load a
 * GdkPixbuf ("pixel buffer") from a file, and then display that.
 * There's a convenience function to do this, gtk_image_new_from_file(),
 * used as follows:
 * $(DDOC_COMMENT example)
 * If the file isn't loaded successfully, the image will contain a
 * "broken image" icon similar to that used in many web browsers.
 * If you want to handle errors in loading the file yourself,
 * for example by displaying an error message, then load the image with
 * gdk_pixbuf_new_from_file(), then create the GtkImage with
 * gtk_image_new_from_pixbuf().
 * The image file may contain an animation, if so the GtkImage will
 * display an animation (GdkPixbufAnimation) instead of a static image.
 * GtkImage is a subclass of GtkMisc, which implies that you can
 * align it (center, left, right) and add padding to it, using
 * GtkMisc methods.
 * GtkImage is a "no window" widget (has no GdkWindow of its own),
 * so by default does not receive events. If you want to receive events
 * on the image, such as button clicks, place the image inside a
 * GtkEventBox, then connect to the event signals on the event box.
 * $(DDOC_COMMENT example)
 * When handling events on the event box, keep in mind that coordinates
 * in the image may be different from event box coordinates due to
 * the alignment and padding settings on the image (see GtkMisc).
 * The simplest way to solve this is to set the alignment to 0.0
 * (left/top), and set the padding to zero. Then the origin of
 * the image will be the same as the origin of the event box.
 * Sometimes an application will want to avoid depending on external data
 * files, such as image files. GTK+ comes with a program to avoid this,
 * called gdk-pixbuf-csource. This library
 * allows you to convert an image into a C variable declaration, which
 * can then be loaded into a GdkPixbuf using
 * gdk_pixbuf_new_from_inline().
 */
public class Image : Misc
{
	
	/** the main Gtk struct */
	protected GtkImage* gtkImage;
	
	
	public GtkImage* getImageStruct()
	{
		return gtkImage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkImage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkImage* gtkImage)
	{
		super(cast(GtkMisc*)gtkImage);
		this.gtkImage = gtkImage;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkImage = cast(GtkImage*)obj;
	}
	
	/**
	 * Creates a GtkImage displaying a stock icon. Sample stock icon
	 * names are GTK_STOCK_OPEN, GTK_STOCK_EXIT. Sample stock sizes
	 * are GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_SMALL_TOOLBAR. If the stock
	 * icon name isn't known, the image will be empty.
	 * You can register your own stock icon names, see
	 * gtk_icon_factory_add_default() and gtk_icon_factory_add().
	 * Params:
	 *  StockID = a stock icon name
	 *  size = a stock icon size
	 * Returns:
	 *  a new GtkImage displaying the stock icon
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (StockID stockID, GtkIconSize size)
	{
		// GtkWidget* gtk_image_new_from_stock (const gchar *stock_id,  GtkIconSize size);
		auto p = gtk_image_new_from_stock(Str.toStringz(StockDesc[stockID]), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_stock(Str.toStringz(StockDesc[stockID]), size)");
		}
		this(cast(GtkImage*)p);
	}
	
	/**
	 */
	
	/**
	 * Gets the icon set and size being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_ICON_SET (see gtk_image_get_storage_type()).
	 * Params:
	 * iconSet = location to store a
	 * GtkIconSet, or NULL. [out][transfer none][allow-none]
	 * size = location to store a stock
	 * icon size, or NULL. [out][allow-none][type int]
	 */
	public void getIconSet(out IconSet iconSet, out GtkIconSize size)
	{
		// void gtk_image_get_icon_set (GtkImage *image,  GtkIconSet **icon_set,  GtkIconSize *size);
		GtkIconSet* outiconSet = null;
		
		gtk_image_get_icon_set(gtkImage, &outiconSet, &size);
		
		iconSet = ObjectG.getDObject!(IconSet)(outiconSet);
	}
	
	/**
	 * Gets the GdkPixbuf being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_PIXBUF (see gtk_image_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned pixbuf.
	 * Returns: the displayed pixbuf, or NULL if the image is empty. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_image_get_pixbuf (GtkImage *image);
		auto p = gtk_image_get_pixbuf(gtkImage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Gets the stock icon name and size being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_STOCK (see gtk_image_get_storage_type()).
	 * The returned string is owned by the GtkImage and should not
	 * be freed.
	 * Params:
	 * stockId = place to store a
	 * stock icon name, or NULL. [out][transfer none][allow-none]
	 * size = place to store a stock icon
	 * size, or NULL. [out][allow-none][type int]
	 */
	public void getStock(out string stockId, out GtkIconSize size)
	{
		// void gtk_image_get_stock (GtkImage *image,  gchar **stock_id,  GtkIconSize *size);
		char* outstockId = null;
		
		gtk_image_get_stock(gtkImage, &outstockId, &size);
		
		stockId = Str.toString(outstockId);
	}
	
	/**
	 * Gets the GdkPixbufAnimation being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_ANIMATION (see gtk_image_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned animation.
	 * Returns: the displayed animation, or NULL if the image is empty. [transfer none]
	 */
	public PixbufAnimation getAnimation()
	{
		// GdkPixbufAnimation * gtk_image_get_animation (GtkImage *image);
		auto p = gtk_image_get_animation(gtkImage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PixbufAnimation)(cast(GdkPixbufAnimation*) p);
	}
	
	/**
	 * Gets the icon name and size being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_ICON_NAME (see gtk_image_get_storage_type()).
	 * The returned string is owned by the GtkImage and should not
	 * be freed.
	 * Since 2.6
	 * Params:
	 * iconName = place to store an
	 * icon name, or NULL. [out][transfer none][allow-none]
	 * size = place to store an icon size,
	 * or NULL. [out][allow-none][type int]
	 */
	public void getIconName(out string iconName, out GtkIconSize size)
	{
		// void gtk_image_get_icon_name (GtkImage *image,  const gchar **icon_name,  GtkIconSize *size);
		char* outiconName = null;
		
		gtk_image_get_icon_name(gtkImage, &outiconName, &size);
		
		iconName = Str.toString(outiconName);
	}
	
	/**
	 * Gets the GIcon and size being displayed by the GtkImage.
	 * The storage type of the image must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_GICON (see gtk_image_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned GIcon.
	 * Since 2.14
	 * Params:
	 * gicon = place to store a
	 * GIcon, or NULL. [out][transfer none][allow-none]
	 * size = place to store an icon size,
	 * or NULL. [out][allow-none][type int]
	 */
	public void getGicon(out IconIF gicon, out GtkIconSize size)
	{
		// void gtk_image_get_gicon (GtkImage *image,  GIcon **gicon,  GtkIconSize *size);
		GIcon* outgicon = null;
		
		gtk_image_get_gicon(gtkImage, &outgicon, &size);
		
		gicon = ObjectG.getDObject!(Icon)(outgicon);
	}
	
	/**
	 * Gets the type of representation being used by the GtkImage
	 * to store image data. If the GtkImage has no image data,
	 * the return value will be GTK_IMAGE_EMPTY.
	 * Returns: image representation being used
	 */
	public GtkImageType getStorageType()
	{
		// GtkImageType gtk_image_get_storage_type (GtkImage *image);
		return gtk_image_get_storage_type(gtkImage);
	}
	
	/**
	 * Creates a new GtkImage displaying the file filename. If the file
	 * isn't found or can't be loaded, the resulting GtkImage will
	 * display a "broken image" icon. This function never returns NULL,
	 * it always returns a valid GtkImage widget.
	 * If the file contains an animation, the image will contain an
	 * animation.
	 * If you need to detect failures to load the file, use
	 * gdk_pixbuf_new_from_file() to load the file yourself, then create
	 * the GtkImage from the pixbuf. (Or for animations, use
	 * gdk_pixbuf_animation_new_from_file()).
	 * The storage type (gtk_image_get_storage_type()) of the returned
	 * image is not defined, it will be whatever is appropriate for
	 * displaying the file.
	 * Params:
	 * filename = a filename. [type filename]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string filename)
	{
		// GtkWidget * gtk_image_new_from_file (const gchar *filename);
		auto p = gtk_image_new_from_file(Str.toStringz(filename));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_file(Str.toStringz(filename))");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Creates a GtkImage displaying an icon set. Sample stock sizes are
	 * GTK_ICON_SIZE_MENU, GTK_ICON_SIZE_SMALL_TOOLBAR. Instead of using
	 * this function, usually it's better to create a GtkIconFactory, put
	 * your icon sets in the icon factory, add the icon factory to the
	 * list of default factories with gtk_icon_factory_add_default(), and
	 * then use gtk_image_new_from_stock(). This will allow themes to
	 * override the icon you ship with your application.
	 * The GtkImage does not assume a reference to the
	 * icon set; you still need to unref it if you own references.
	 * GtkImage will add its own reference rather than adopting yours.
	 * Params:
	 * iconSet = a GtkIconSet
	 * size = a stock icon size. [type int]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconSet iconSet, GtkIconSize size)
	{
		// GtkWidget * gtk_image_new_from_icon_set (GtkIconSet *icon_set,  GtkIconSize size);
		auto p = gtk_image_new_from_icon_set((iconSet is null) ? null : iconSet.getIconSetStruct(), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_icon_set((iconSet is null) ? null : iconSet.getIconSetStruct(), size)");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Creates a new GtkImage displaying pixbuf.
	 * The GtkImage does not assume a reference to the
	 * pixbuf; you still need to unref it if you own references.
	 * GtkImage will add its own reference rather than adopting yours.
	 * Note that this function just creates an GtkImage from the pixbuf. The
	 * GtkImage created will not react to state changes. Should you want that,
	 * you should use gtk_image_new_from_icon_set().
	 * Params:
	 * pixbuf = a GdkPixbuf, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkWidget * gtk_image_new_from_pixbuf (GdkPixbuf *pixbuf);
		auto p = gtk_image_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Creates a GtkImage displaying the given animation.
	 * The GtkImage does not assume a reference to the
	 * animation; you still need to unref it if you own references.
	 * GtkImage will add its own reference rather than adopting yours.
	 * Note that the animation frames are shown using a timeout with
	 * G_PRIORITY_DEFAULT. When using animations to indicate busyness,
	 * keep in mind that the animation will only be shown if the main loop
	 * is not busy with something that has a higher priority.
	 * Params:
	 * animation = an animation
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (PixbufAnimation animation)
	{
		// GtkWidget * gtk_image_new_from_animation (GdkPixbufAnimation *animation);
		auto p = gtk_image_new_from_animation((animation is null) ? null : animation.getPixbufAnimationStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_animation((animation is null) ? null : animation.getPixbufAnimationStruct())");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Creates a GtkImage displaying an icon from the current icon theme.
	 * If the icon name isn't known, a "broken image" icon will be
	 * displayed instead. If the current icon theme is changed, the icon
	 * will be updated appropriately.
	 * Since 2.6
	 * Params:
	 * iconName = an icon name
	 * size = a stock icon size. [type int]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string iconName, GtkIconSize size)
	{
		// GtkWidget * gtk_image_new_from_icon_name (const gchar *icon_name,  GtkIconSize size);
		auto p = gtk_image_new_from_icon_name(Str.toStringz(iconName), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_icon_name(Str.toStringz(iconName), size)");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Creates a GtkImage displaying an icon from the current icon theme.
	 * If the icon name isn't known, a "broken image" icon will be
	 * displayed instead. If the current icon theme is changed, the icon
	 * will be updated appropriately.
	 * Since 2.14
	 * Params:
	 * icon = an icon
	 * size = a stock icon size. [type int]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconIF icon, GtkIconSize size)
	{
		// GtkWidget * gtk_image_new_from_gicon (GIcon *icon,  GtkIconSize size);
		auto p = gtk_image_new_from_gicon((icon is null) ? null : icon.getIconTStruct(), size);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new_from_gicon((icon is null) ? null : icon.getIconTStruct(), size)");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * See gtk_image_new_from_file() for details.
	 * Params:
	 * filename = a filename or NULL. [type filename][allow-none]
	 */
	public void setFromFile(string filename)
	{
		// void gtk_image_set_from_file (GtkImage *image,  const gchar *filename);
		gtk_image_set_from_file(gtkImage, Str.toStringz(filename));
	}
	
	/**
	 * See gtk_image_new_from_icon_set() for details.
	 * Params:
	 * iconSet = a GtkIconSet
	 * size = a stock icon size. [type int]
	 */
	public void setFromIconSet(IconSet iconSet, GtkIconSize size)
	{
		// void gtk_image_set_from_icon_set (GtkImage *image,  GtkIconSet *icon_set,  GtkIconSize size);
		gtk_image_set_from_icon_set(gtkImage, (iconSet is null) ? null : iconSet.getIconSetStruct(), size);
	}
	
	/**
	 * See gtk_image_new_from_pixbuf() for details.
	 * Params:
	 * pixbuf = a GdkPixbuf or NULL. [allow-none]
	 */
	public void setFromPixbuf(Pixbuf pixbuf)
	{
		// void gtk_image_set_from_pixbuf (GtkImage *image,  GdkPixbuf *pixbuf);
		gtk_image_set_from_pixbuf(gtkImage, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * See gtk_image_new_from_stock() for details.
	 * Params:
	 * stockId = a stock icon name
	 * size = a stock icon size. [type int]
	 */
	public void setFromStock(string stockId, GtkIconSize size)
	{
		// void gtk_image_set_from_stock (GtkImage *image,  const gchar *stock_id,  GtkIconSize size);
		gtk_image_set_from_stock(gtkImage, Str.toStringz(stockId), size);
	}
	
	/**
	 * Causes the GtkImage to display the given animation (or display
	 * nothing, if you set the animation to NULL).
	 * Params:
	 * animation = the GdkPixbufAnimation
	 */
	public void setFromAnimation(PixbufAnimation animation)
	{
		// void gtk_image_set_from_animation (GtkImage *image,  GdkPixbufAnimation *animation);
		gtk_image_set_from_animation(gtkImage, (animation is null) ? null : animation.getPixbufAnimationStruct());
	}
	
	/**
	 * See gtk_image_new_from_icon_name() for details.
	 * Since 2.6
	 * Params:
	 * iconName = an icon name
	 * size = an icon size. [type int]
	 */
	public void setFromIconName(string iconName, GtkIconSize size)
	{
		// void gtk_image_set_from_icon_name (GtkImage *image,  const gchar *icon_name,  GtkIconSize size);
		gtk_image_set_from_icon_name(gtkImage, Str.toStringz(iconName), size);
	}
	
	/**
	 * See gtk_image_new_from_gicon() for details.
	 * Since 2.14
	 * Params:
	 * icon = an icon
	 * size = an icon size. [type int]
	 */
	public void setFromGicon(IconIF icon, GtkIconSize size)
	{
		// void gtk_image_set_from_gicon (GtkImage *image,  GIcon *icon,  GtkIconSize size);
		gtk_image_set_from_gicon(gtkImage, (icon is null) ? null : icon.getIconTStruct(), size);
	}
	
	/**
	 * See gtk_image_new_from_resource() for details.
	 * Params:
	 * resourcePath = a resource path or NULL. [allow-none]
	 */
	public void setFromResource(string resourcePath)
	{
		// void gtk_image_set_from_resource (GtkImage *image,  const gchar *resource_path);
		gtk_image_set_from_resource(gtkImage, Str.toStringz(resourcePath));
	}
	
	/**
	 * Resets the image to be empty.
	 * Since 2.8
	 */
	public void clear()
	{
		// void gtk_image_clear (GtkImage *image);
		gtk_image_clear(gtkImage);
	}
	
	/**
	 * Creates a new empty GtkImage widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_image_new (void);
		auto p = gtk_image_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_image_new()");
		}
		this(cast(GtkImage*) p);
	}
	
	/**
	 * Sets the pixel size to use for named icons. If the pixel size is set
	 * to a value != -1, it is used instead of the icon size set by
	 * gtk_image_set_from_icon_name().
	 * Since 2.6
	 * Params:
	 * pixelSize = the new pixel size
	 */
	public void setPixelSize(int pixelSize)
	{
		// void gtk_image_set_pixel_size (GtkImage *image,  gint pixel_size);
		gtk_image_set_pixel_size(gtkImage, pixelSize);
	}
	
	/**
	 * Gets the pixel size used for named icons.
	 * Since 2.6
	 * Returns: the pixel size used for named icons.
	 */
	public int getPixelSize()
	{
		// gint gtk_image_get_pixel_size (GtkImage *image);
		return gtk_image_get_pixel_size(gtkImage);
	}
}
