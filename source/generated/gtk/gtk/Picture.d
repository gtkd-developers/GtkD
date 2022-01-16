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


module gtk.Picture;

private import gdk.PaintableIF;
private import gdkpixbuf.Pixbuf;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkPicture` widget displays a `GdkPaintable`.
 * 
 * ![An example GtkPicture](picture.png)
 * 
 * Many convenience functions are provided to make pictures simple to use.
 * For example, if you want to load an image from a file, and then display
 * it, there’s a convenience function to do this:
 * 
 * ```c
 * GtkWidget *widget = gtk_picture_new_for_filename ("myfile.png");
 * ```
 * 
 * If the file isn’t loaded successfully, the picture will contain a
 * “broken image” icon similar to that used in many web browsers.
 * If you want to handle errors in loading the file yourself,
 * for example by displaying an error message, then load the image with
 * [ctor@Gdk.Texture.new_from_file], then create the `GtkPicture` with
 * [ctor@Gtk.Picture.new_for_paintable].
 * 
 * Sometimes an application will want to avoid depending on external data
 * files, such as image files. See the documentation of `GResource` for details.
 * In this case, [ctor@Gtk.Picture.new_for_resource] and
 * [method@Gtk.Picture.set_resource] should be used.
 * 
 * `GtkPicture` displays an image at its natural size. See [class@Gtk.Image]
 * if you want to display a fixed-size image, such as an icon.
 * 
 * ## Sizing the paintable
 * 
 * You can influence how the paintable is displayed inside the `GtkPicture`.
 * By turning off [property@Gtk.Picture:keep-aspect-ratio] you can allow the
 * paintable to get stretched. [property@Gtk.Picture:can-shrink] can be unset
 * to make sure that paintables are never made smaller than their ideal size -
 * but be careful if you do not know the size of the paintable in use (like
 * when displaying user-loaded images). This can easily cause the picture to
 * grow larger than the screen. And [property@GtkWidget:halign] and
 * [property@GtkWidget:valign] can be used to make sure the paintable doesn't
 * fill all available space but is instead displayed at its original size.
 * 
 * ## CSS nodes
 * 
 * `GtkPicture` has a single CSS node with the name `picture`.
 * 
 * ## Accessibility
 * 
 * `GtkPicture` uses the `GTK_ACCESSIBLE_ROLE_IMG` role.
 */
public class Picture : Widget
{
	/** the main Gtk struct */
	protected GtkPicture* gtkPicture;

	/** Get the main Gtk struct */
	public GtkPicture* getPictureStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPicture;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPicture;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPicture* gtkPicture, bool ownedRef = false)
	{
		this.gtkPicture = gtkPicture;
		super(cast(GtkWidget*)gtkPicture, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_picture_get_type();
	}

	/**
	 * Creates a new empty `GtkPicture` widget.
	 *
	 * Returns: a newly created `GtkPicture` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_picture_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPicture*) __p);
	}

	/**
	 * Creates a new `GtkPicture` displaying the given @file.
	 *
	 * If the file isn’t found or can’t be loaded, the resulting
	 * `GtkPicture` is empty.
	 *
	 * If you need to detect failures to load the file, use
	 * [ctor@Gdk.Texture.new_from_file] to load the file yourself,
	 * then create the `GtkPicture` from the texture.
	 *
	 * Params:
	 *     file = a `GFile`
	 *
	 * Returns: a new `GtkPicture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF file)
	{
		auto __p = gtk_picture_new_for_file((file is null) ? null : file.getFileStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_file");
		}

		this(cast(GtkPicture*) __p);
	}

	/**
	 * Creates a new `GtkPicture` displaying the file @filename.
	 *
	 * This is a utility function that calls [ctor@Gtk.Picture.new_for_file].
	 * See that function for details.
	 *
	 * Params:
	 *     filename = a filename
	 *
	 * Returns: a new `GtkPicture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto __p = gtk_picture_new_for_filename(Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_filename");
		}

		this(cast(GtkPicture*) __p);
	}

	/**
	 * Creates a new `GtkPicture` displaying @paintable.
	 *
	 * The `GtkPicture` will track changes to the @paintable and update
	 * its size and contents in response to it.
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 *
	 * Returns: a new `GtkPicture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(PaintableIF paintable)
	{
		auto __p = gtk_picture_new_for_paintable((paintable is null) ? null : paintable.getPaintableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_paintable");
		}

		this(cast(GtkPicture*) __p);
	}

	/**
	 * Creates a new `GtkPicture` displaying @pixbuf.
	 *
	 * This is a utility function that calls [ctor@Gtk.Picture.new_for_paintable],
	 * See that function for details.
	 *
	 * The pixbuf must not be modified after passing it to this function.
	 *
	 * Params:
	 *     pixbuf = a `GdkPixbuf`
	 *
	 * Returns: a new `GtkPicture`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto __p = gtk_picture_new_for_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_pixbuf");
		}

		this(cast(GtkPicture*) __p);
	}

	/**
	 * Gets the alternative textual description of the picture.
	 *
	 * The returned string will be %NULL if the picture cannot be described textually.
	 *
	 * Returns: the alternative textual description of @self.
	 */
	public string getAlternativeText()
	{
		return Str.toString(gtk_picture_get_alternative_text(gtkPicture));
	}

	/**
	 * Returns whether the `GtkPicture` respects its contents size.
	 *
	 * Returns: %TRUE if the picture can be made smaller than its contents
	 */
	public bool getCanShrink()
	{
		return gtk_picture_get_can_shrink(gtkPicture) != 0;
	}

	/**
	 * Gets the `GFile` currently displayed if @self is displaying a file.
	 *
	 * If @self is not displaying a file, for example when
	 * [method@Gtk.Picture.set_paintable] was used, then %NULL is returned.
	 *
	 * Returns: The `GFile` displayed by @self.
	 */
	public FileIF getFile()
	{
		auto __p = gtk_picture_get_file(gtkPicture);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p);
	}

	/**
	 * Returns whether the `GtkPicture` preserves its contents aspect ratio.
	 *
	 * Returns: %TRUE if the self tries to keep the contents' aspect ratio
	 */
	public bool getKeepAspectRatio()
	{
		return gtk_picture_get_keep_aspect_ratio(gtkPicture) != 0;
	}

	/**
	 * Gets the `GdkPaintable` being displayed by the `GtkPicture`.
	 *
	 * Returns: the displayed paintable
	 */
	public PaintableIF getPaintable()
	{
		auto __p = gtk_picture_get_paintable(gtkPicture);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Sets an alternative textual description for the picture contents.
	 *
	 * It is equivalent to the "alt" attribute for images on websites.
	 *
	 * This text will be made available to accessibility tools.
	 *
	 * If the picture cannot be described textually, set this property to %NULL.
	 *
	 * Params:
	 *     alternativeText = a textual description of the contents
	 */
	public void setAlternativeText(string alternativeText)
	{
		gtk_picture_set_alternative_text(gtkPicture, Str.toStringz(alternativeText));
	}

	/**
	 * If set to %TRUE, the @self can be made smaller than its contents.
	 *
	 * The contents will then be scaled down when rendering.
	 *
	 * If you want to still force a minimum size manually, consider using
	 * [method@Gtk.Widget.set_size_request].
	 *
	 * Also of note is that a similar function for growing does not exist
	 * because the grow behavior can be controlled via
	 * [method@Gtk.Widget.set_halign] and [method@Gtk.Widget.set_valign].
	 *
	 * Params:
	 *     canShrink = if @self can be made smaller than its contents
	 */
	public void setCanShrink(bool canShrink)
	{
		gtk_picture_set_can_shrink(gtkPicture, canShrink);
	}

	/**
	 * Makes @self load and display @file.
	 *
	 * See [ctor@Gtk.Picture.new_for_file] for details.
	 *
	 * Params:
	 *     file = a `GFile`
	 */
	public void setFile(FileIF file)
	{
		gtk_picture_set_file(gtkPicture, (file is null) ? null : file.getFileStruct());
	}

	/**
	 * Makes @self load and display the given @filename.
	 *
	 * This is a utility function that calls [method@Gtk.Picture.set_file].
	 *
	 * Params:
	 *     filename = the filename to play
	 */
	public void setFilename(string filename)
	{
		gtk_picture_set_filename(gtkPicture, Str.toStringz(filename));
	}

	/**
	 * If set to %TRUE, the @self will render its contents according to
	 * their aspect ratio.
	 *
	 * That means that empty space may show up at the top/bottom or
	 * left/right of @self.
	 *
	 * If set to %FALSE or if the contents provide no aspect ratio,
	 * the contents will be stretched over the picture's whole area.
	 *
	 * Params:
	 *     keepAspectRatio = whether to keep aspect ratio
	 */
	public void setKeepAspectRatio(bool keepAspectRatio)
	{
		gtk_picture_set_keep_aspect_ratio(gtkPicture, keepAspectRatio);
	}

	/**
	 * Makes @self display the given @paintable.
	 *
	 * If @paintable is %NULL, nothing will be displayed.
	 *
	 * See [ctor@Gtk.Picture.new_for_paintable] for details.
	 *
	 * Params:
	 *     paintable = a `GdkPaintable`
	 */
	public void setPaintable(PaintableIF paintable)
	{
		gtk_picture_set_paintable(gtkPicture, (paintable is null) ? null : paintable.getPaintableStruct());
	}

	/**
	 * Sets a `GtkPicture` to show a `GdkPixbuf`.
	 *
	 * See [ctor@Gtk.Picture.new_for_pixbuf] for details.
	 *
	 * This is a utility function that calls [method@Gtk.Picture.set_paintable].
	 *
	 * Params:
	 *     pixbuf = a `GdkPixbuf`
	 */
	public void setPixbuf(Pixbuf pixbuf)
	{
		gtk_picture_set_pixbuf(gtkPicture, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Makes @self load and display the resource at the given
	 * @resource_path.
	 *
	 * This is a utility function that calls [method@Gtk.Picture.set_file].
	 *
	 * Params:
	 *     resourcePath = the resource to set
	 */
	public void setResource(string resourcePath)
	{
		gtk_picture_set_resource(gtkPicture, Str.toStringz(resourcePath));
	}
}
