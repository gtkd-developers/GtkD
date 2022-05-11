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


module adw.Avatar;

private import adw.c.functions;
public  import adw.c.types;
private import gdk.PaintableIF;
private import gdk.Texture;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * A widget displaying an image, with a generated fallback.
 * 
 * <picture>
 * <source srcset="avatar-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="avatar.png" alt="avatar">
 * </picture>
 * 
 * `AdwAvatar` is a widget that shows a round avatar.
 * 
 * `AdwAvatar` generates an avatar with the initials of  the
 * [property@Avatar:text] on top of a colored background.
 * 
 * The color is picked based on the hash of the [property@Avatar:text].
 * 
 * If [property@Avatar:show-initials] is set to `FALSE`,
 * [property@Avatar:icon-name] or `avatar-default-symbolic` is shown instead of
 * the initials.
 * 
 * Use [property@Avatar:custom-image] to set a custom image.
 * 
 * ## CSS nodes
 * 
 * `AdwAvatar` has a single CSS node with name `avatar`.
 *
 * Since: 1.0
 */
public class Avatar : Widget
{
	/** the main Gtk struct */
	protected AdwAvatar* adwAvatar;

	/** Get the main Gtk struct */
	public AdwAvatar* getAvatarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwAvatar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwAvatar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwAvatar* adwAvatar, bool ownedRef = false)
	{
		this.adwAvatar = adwAvatar;
		super(cast(GtkWidget*)adwAvatar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_avatar_get_type();
	}

	/**
	 * Creates a new `AdwAvatar`.
	 *
	 * Params:
	 *     size = The size of the avatar
	 *     text = the text used to get the initials and color
	 *     showInitials = whether to use initials instead of an icon as fallback
	 *
	 * Returns: the newly created `AdwAvatar`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int size, string text, bool showInitials)
	{
		auto __p = adw_avatar_new(size, Str.toStringz(text), showInitials);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwAvatar*) __p);
	}

	/**
	 * Renders @self into a [class@Gdk.Texture] at @scale_factor.
	 *
	 * This can be used to export the fallback avatar.
	 *
	 * Params:
	 *     scaleFactor = The scale factor
	 *
	 * Returns: the texture
	 *
	 * Since: 1.0
	 */
	public Texture drawToTexture(int scaleFactor)
	{
		auto __p = adw_avatar_draw_to_texture(adwAvatar, scaleFactor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Texture)(cast(GdkTexture*) __p, true);
	}

	/**
	 * Gets the custom image paintable.
	 *
	 * Returns: the custom image
	 *
	 * Since: 1.0
	 */
	public PaintableIF getCustomImage()
	{
		auto __p = adw_avatar_get_custom_image(adwAvatar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p);
	}

	/**
	 * Gets the name of an icon to use as a fallback.
	 *
	 * Returns: the icon name
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_avatar_get_icon_name(adwAvatar));
	}

	/**
	 * Gets whether initials are used instead of an icon on the fallback avatar.
	 *
	 * Returns: whether initials are used instead of an icon as fallback
	 *
	 * Since: 1.0
	 */
	public bool getShowInitials()
	{
		return adw_avatar_get_show_initials(adwAvatar) != 0;
	}

	/**
	 * Gets the size of the avatar.
	 *
	 * Returns: the size of the avatar
	 *
	 * Since: 1.0
	 */
	public int getSize()
	{
		return adw_avatar_get_size(adwAvatar);
	}

	/**
	 * Gets the text used to generate the fallback initials and color.
	 *
	 * Returns: the text used to generate the fallback initials and
	 *     color
	 *
	 * Since: 1.0
	 */
	public string getText()
	{
		return Str.toString(adw_avatar_get_text(adwAvatar));
	}

	/**
	 * Sets the custom image paintable.
	 *
	 * Params:
	 *     customImage = a custom image
	 *
	 * Since: 1.0
	 */
	public void setCustomImage(PaintableIF customImage)
	{
		adw_avatar_set_custom_image(adwAvatar, (customImage is null) ? null : customImage.getPaintableStruct());
	}

	/**
	 * Sets the name of an icon to use as a fallback.
	 *
	 * If no name is set, `avatar-default-symbolic` will be used.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_avatar_set_icon_name(adwAvatar, Str.toStringz(iconName));
	}

	/**
	 * Sets whether to use initials instead of an icon on the fallback avatar.
	 *
	 * Params:
	 *     showInitials = whether to use initials instead of an icon as fallback
	 *
	 * Since: 1.0
	 */
	public void setShowInitials(bool showInitials)
	{
		adw_avatar_set_show_initials(adwAvatar, showInitials);
	}

	/**
	 * Sets the size of the avatar.
	 *
	 * Params:
	 *     size = The size of the avatar
	 *
	 * Since: 1.0
	 */
	public void setSize(int size)
	{
		adw_avatar_set_size(adwAvatar, size);
	}

	/**
	 * Sets the text used to generate the fallback initials and color.
	 *
	 * Params:
	 *     text = the text used to get the initials and color
	 *
	 * Since: 1.0
	 */
	public void setText(string text)
	{
		adw_avatar_set_text(adwAvatar, Str.toStringz(text));
	}
}
