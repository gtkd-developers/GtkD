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


module gtk.StatusIcon;

private import gdk.Event;
private import gdk.Screen;
private import gdkpixbuf.Pixbuf;
private import gio.IconIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Menu;
private import gtk.Tooltip;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The “system tray” or notification area is normally used for transient icons
 * that indicate some special state. For example, a system tray icon might
 * appear to tell the user that they have new mail, or have an incoming instant
 * message, or something along those lines. The basic idea is that creating an
 * icon in the notification area is less annoying than popping up a dialog.
 * 
 * A #GtkStatusIcon object can be used to display an icon in a “system tray”.
 * The icon can have a tooltip, and the user can interact with it by
 * activating it or popping up a context menu.
 * 
 * It is very important to notice that status icons depend on the existence
 * of a notification area being available to the user; you should not use status
 * icons as the only way to convey critical information regarding your application,
 * as the notification area may not exist on the user's environment, or may have
 * been removed. You should always check that a status icon has been embedded into
 * a notification area by using gtk_status_icon_is_embedded(), and gracefully
 * recover if the function returns %FALSE.
 * 
 * On X11, the implementation follows the
 * [FreeDesktop System Tray Specification](http://www.freedesktop.org/wiki/Specifications/systemtray-spec).
 * Implementations of the “tray” side of this specification can
 * be found e.g. in the GNOME 2 and KDE panel applications.
 * 
 * Note that a GtkStatusIcon is not a widget, but just a #GObject. Making it a
 * widget would be impractical, since the system tray on Windows doesn’t allow
 * to embed arbitrary widgets.
 * 
 * GtkStatusIcon has been deprecated in 3.14. You should consider using
 * notifications or more modern platform-specific APIs instead. GLib provides
 * the #GNotification API which works well with #GtkApplication on multiple
 * platforms and environments, and should be the preferred mechanism to notify
 * the users of transient status updates. See this [HowDoI](https://wiki.gnome.org/HowDoI/GNotification)
 * for code examples.
 */
public class StatusIcon : ObjectG
{
	/** the main Gtk struct */
	protected GtkStatusIcon* gtkStatusIcon;

	/** Get the main Gtk struct */
	public GtkStatusIcon* getStatusIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStatusIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStatusIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStatusIcon* gtkStatusIcon, bool ownedRef = false)
	{
		this.gtkStatusIcon = gtkStatusIcon;
		super(cast(GObject*)gtkStatusIcon, ownedRef);
	}

	/**
	 * Creates a status icon displaying a stock icon. Sample stock icon
	 * names are StockID.OPEN, StockID.QUIT. You can register your
	 * own stock icon names, see gtk_icon_factory_add_default() and
	 * gtk_icon_factory_add().
	 * Since 2.10
	 * Params:
	 *  stock_id = a stock icon id
	 * Returns:
	 *  a new GtkStatusIcon
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (StockID stockID)
	{
		auto p = gtk_status_icon_new_from_stock(Str.toStringz(stockID));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new_from_stock");
		}
		this(cast(GtkStatusIcon*)p);
	}

	/**
	 * Creates a status icon displaying an icon from the current icon theme.
	 * If the current icon theme is changed, the icon will be updated
	 * appropriately.
	 * Since 2.10
	 * Params:
	 *  iconName =  an icon name
	 *  loadFromFile = treat iconName as a filename and load that image
	 *  with gtk_status_icon_new_from_file.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string iconName, bool loadFromFile = false)
	{
		//TODO: look at a better way to do this.
		GtkStatusIcon* p;

		if(loadFromFile)
		{
			p = cast(GtkStatusIcon*)gtk_status_icon_new_from_file(Str.toStringz(iconName));
		}
		else
		{
			p = cast(GtkStatusIcon*)gtk_status_icon_new_from_icon_name(Str.toStringz(iconName));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new_from_");
		}

		this(p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_status_icon_get_type();
	}

	/**
	 * Creates an empty status icon object.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications
	 *
	 * Returns: a new #GtkStatusIcon
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_status_icon_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStatusIcon*) __p, true);
	}

	/**
	 * Creates a status icon displaying a #GIcon. If the icon is a
	 * themed icon, it will be updated when the theme changes.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications
	 *
	 * Params:
	 *     icon = a #GIcon
	 *
	 * Returns: a new #GtkStatusIcon
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(IconIF icon)
	{
		auto __p = gtk_status_icon_new_from_gicon((icon is null) ? null : icon.getIconStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gicon");
		}

		this(cast(GtkStatusIcon*) __p, true);
	}

	/**
	 * Creates a status icon displaying @pixbuf.
	 *
	 * The image will be scaled down to fit in the available
	 * space in the notification area, if necessary.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf
	 *
	 * Returns: a new #GtkStatusIcon
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Pixbuf pixbuf)
	{
		auto __p = gtk_status_icon_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_pixbuf");
		}

		this(cast(GtkStatusIcon*) __p, true);
	}

	/**
	 * Menu positioning function to use with gtk_menu_popup()
	 * to position @menu aligned to the status icon @user_data.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; notifications do not have menus,
	 * but can have buttons, and actions associated with each button
	 *
	 * Params:
	 *     menu = the #GtkMenu
	 *     x = return location for the x position
	 *     y = return location for the y position
	 *     pushIn = whether the first menu item should be offset
	 *         (pushed in) to be aligned with the menu popup position
	 *         (only useful for GtkOptionMenu).
	 *     userData = the status icon to position the menu on
	 *
	 * Since: 2.10
	 */
	public static void positionMenu(Menu menu, ref int x, ref int y, out bool pushIn, StatusIcon userData)
	{
		int outpushIn;

		gtk_status_icon_position_menu((menu is null) ? null : menu.getMenuStruct(), &x, &y, &outpushIn, (userData is null) ? null : userData.getStatusIconStruct());

		pushIn = (outpushIn == 1);
	}

	/**
	 * Obtains information about the location of the status icon
	 * on screen. This information can be used to e.g. position
	 * popups like notification bubbles.
	 *
	 * See gtk_status_icon_position_menu() for a more convenient
	 * alternative for positioning menus.
	 *
	 * Note that some platforms do not allow GTK+ to provide
	 * this information, and even on platforms that do allow it,
	 * the information is not reliable unless the status icon
	 * is embedded in a notification area, see
	 * gtk_status_icon_is_embedded().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as the platform is responsible for the
	 * presentation of notifications
	 *
	 * Params:
	 *     screen = return location for
	 *         the screen, or %NULL if the information is not needed
	 *     area = return location for the area occupied by
	 *         the status icon, or %NULL
	 *     orientation = return location for the
	 *         orientation of the panel in which the status icon is embedded,
	 *         or %NULL. A panel at the top or bottom of the screen is
	 *         horizontal, a panel at the left or right is vertical.
	 *
	 * Returns: %TRUE if the location information has
	 *     been filled in
	 *
	 * Since: 2.10
	 */
	public bool getGeometry(out Screen screen, out GdkRectangle area, out GtkOrientation orientation)
	{
		GdkScreen* outscreen = null;

		auto __p = gtk_status_icon_get_geometry(gtkStatusIcon, &outscreen, &area, &orientation) != 0;

		screen = ObjectG.getDObject!(Screen)(outscreen);

		return __p;
	}

	/**
	 * Retrieves the #GIcon being displayed by the #GtkStatusIcon.
	 * The storage type of the status icon must be %GTK_IMAGE_EMPTY or
	 * %GTK_IMAGE_GICON (see gtk_status_icon_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned #GIcon.
	 *
	 * If this function fails, @icon is left unchanged;
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: the displayed icon, or %NULL if the image is empty
	 *
	 * Since: 2.14
	 */
	public IconIF getGicon()
	{
		auto __p = gtk_status_icon_get_gicon(gtkStatusIcon);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Returns the current value of the has-tooltip property.
	 * See #GtkStatusIcon:has-tooltip for more information.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: current value of has-tooltip on @status_icon.
	 *
	 * Since: 2.16
	 */
	public bool getHasTooltip()
	{
		return gtk_status_icon_get_has_tooltip(gtkStatusIcon) != 0;
	}

	/**
	 * Gets the name of the icon being displayed by the #GtkStatusIcon.
	 * The storage type of the status icon must be %GTK_IMAGE_EMPTY or
	 * %GTK_IMAGE_ICON_NAME (see gtk_status_icon_get_storage_type()).
	 * The returned string is owned by the #GtkStatusIcon and should not
	 * be freed or modified.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: name of the displayed icon, or %NULL if the image is empty.
	 *
	 * Since: 2.10
	 */
	public string getIconName()
	{
		return Str.toString(gtk_status_icon_get_icon_name(gtkStatusIcon));
	}

	/**
	 * Gets the #GdkPixbuf being displayed by the #GtkStatusIcon.
	 * The storage type of the status icon must be %GTK_IMAGE_EMPTY or
	 * %GTK_IMAGE_PIXBUF (see gtk_status_icon_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned pixbuf.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: the displayed pixbuf,
	 *     or %NULL if the image is empty.
	 *
	 * Since: 2.10
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = gtk_status_icon_get_pixbuf(gtkStatusIcon);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/**
	 * Returns the #GdkScreen associated with @status_icon.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as notifications are managed by the platform
	 *
	 * Returns: a #GdkScreen.
	 *
	 * Since: 2.12
	 */
	public Screen getScreen()
	{
		auto __p = gtk_status_icon_get_screen(gtkStatusIcon);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) __p);
	}

	/**
	 * Gets the size in pixels that is available for the image.
	 * Stock icons and named icons adapt their size automatically
	 * if the size of the notification area changes. For other
	 * storage types, the size-changed signal can be used to
	 * react to size changes.
	 *
	 * Note that the returned size is only meaningful while the
	 * status icon is embedded (see gtk_status_icon_is_embedded()).
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as the representation of a notification
	 * is left to the platform
	 *
	 * Returns: the size that is available for the image
	 *
	 * Since: 2.10
	 */
	public int getSize()
	{
		return gtk_status_icon_get_size(gtkStatusIcon);
	}

	/**
	 * Gets the id of the stock icon being displayed by the #GtkStatusIcon.
	 * The storage type of the status icon must be %GTK_IMAGE_EMPTY or
	 * %GTK_IMAGE_STOCK (see gtk_status_icon_get_storage_type()).
	 * The returned string is owned by the #GtkStatusIcon and should not
	 * be freed or modified.
	 *
	 * Deprecated: Use gtk_status_icon_get_icon_name() instead.
	 *
	 * Returns: stock id of the displayed stock icon,
	 *     or %NULL if the image is empty.
	 *
	 * Since: 2.10
	 */
	public string getStock()
	{
		return Str.toString(gtk_status_icon_get_stock(gtkStatusIcon));
	}

	/**
	 * Gets the type of representation being used by the #GtkStatusIcon
	 * to store image data. If the #GtkStatusIcon has no image data,
	 * the return value will be %GTK_IMAGE_EMPTY.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, and #GNotification only supports #GIcon
	 * instances
	 *
	 * Returns: the image representation being used
	 *
	 * Since: 2.10
	 */
	public GtkImageType getStorageType()
	{
		return gtk_status_icon_get_storage_type(gtkStatusIcon);
	}

	/**
	 * Gets the title of this tray icon. See gtk_status_icon_set_title().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: the title of the status icon
	 *
	 * Since: 2.18
	 */
	public string getTitle()
	{
		return Str.toString(gtk_status_icon_get_title(gtkStatusIcon));
	}

	/**
	 * Gets the contents of the tooltip for @status_icon.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: the tooltip text, or %NULL. You should free the
	 *     returned string with g_free() when done.
	 *
	 * Since: 2.16
	 */
	public string getTooltipMarkup()
	{
		auto retStr = gtk_status_icon_get_tooltip_markup(gtkStatusIcon);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the contents of the tooltip for @status_icon.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: the tooltip text, or %NULL. You should free the
	 *     returned string with g_free() when done.
	 *
	 * Since: 2.16
	 */
	public string getTooltipText()
	{
		auto retStr = gtk_status_icon_get_tooltip_text(gtkStatusIcon);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns whether the status icon is visible or not.
	 * Note that being visible does not guarantee that
	 * the user can actually see the icon, see also
	 * gtk_status_icon_is_embedded().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: %TRUE if the status icon is visible
	 *
	 * Since: 2.10
	 */
	public bool getVisible()
	{
		return gtk_status_icon_get_visible(gtkStatusIcon) != 0;
	}

	/**
	 * This function is only useful on the X11/freedesktop.org platform.
	 *
	 * It returns a window ID for the widget in the underlying
	 * status icon implementation.  This is useful for the Galago
	 * notification service, which can send a window ID in the protocol
	 * in order for the server to position notification windows
	 * pointing to a status icon reliably.
	 *
	 * This function is not intended for other use cases which are
	 * more likely to be met by one of the non-X11 specific methods, such
	 * as gtk_status_icon_position_menu().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: An 32 bit unsigned integer identifier for the
	 *     underlying X11 Window
	 *
	 * Since: 2.14
	 */
	public uint getX11WindowId()
	{
		return gtk_status_icon_get_x11_window_id(gtkStatusIcon);
	}

	/**
	 * Returns whether the status icon is embedded in a notification
	 * area.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Returns: %TRUE if the status icon is embedded in
	 *     a notification area.
	 *
	 * Since: 2.10
	 */
	public bool isEmbedded()
	{
		return gtk_status_icon_is_embedded(gtkStatusIcon) != 0;
	}

	/**
	 * Makes @status_icon display the file @filename.
	 * See gtk_status_icon_new_from_file() for details.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; you can use g_notification_set_icon()
	 * to associate a #GIcon with a notification
	 *
	 * Params:
	 *     filename = a filename
	 *
	 * Since: 2.10
	 */
	public void setFromFile(string filename)
	{
		gtk_status_icon_set_from_file(gtkStatusIcon, Str.toStringz(filename));
	}

	/**
	 * Makes @status_icon display the #GIcon.
	 * See gtk_status_icon_new_from_gicon() for details.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; you can use g_notification_set_icon()
	 * to associate a #GIcon with a notification
	 *
	 * Params:
	 *     icon = a GIcon
	 *
	 * Since: 2.14
	 */
	public void setFromGicon(IconIF icon)
	{
		gtk_status_icon_set_from_gicon(gtkStatusIcon, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Makes @status_icon display the icon named @icon_name from the
	 * current icon theme.
	 * See gtk_status_icon_new_from_icon_name() for details.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; you can use g_notification_set_icon()
	 * to associate a #GIcon with a notification
	 *
	 * Params:
	 *     iconName = an icon name
	 *
	 * Since: 2.10
	 */
	public void setFromIconName(string iconName)
	{
		gtk_status_icon_set_from_icon_name(gtkStatusIcon, Str.toStringz(iconName));
	}

	/**
	 * Makes @status_icon display @pixbuf.
	 * See gtk_status_icon_new_from_pixbuf() for details.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; you can use g_notification_set_icon()
	 * to associate a #GIcon with a notification
	 *
	 * Params:
	 *     pixbuf = a #GdkPixbuf or %NULL
	 *
	 * Since: 2.10
	 */
	public void setFromPixbuf(Pixbuf pixbuf)
	{
		gtk_status_icon_set_from_pixbuf(gtkStatusIcon, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/**
	 * Makes @status_icon display the stock icon with the id @stock_id.
	 * See gtk_status_icon_new_from_stock() for details.
	 *
	 * Deprecated: Use gtk_status_icon_set_from_icon_name() instead.
	 *
	 * Params:
	 *     stockId = a stock icon id
	 *
	 * Since: 2.10
	 */
	public void setFromStock(string stockId)
	{
		gtk_status_icon_set_from_stock(gtkStatusIcon, Str.toStringz(stockId));
	}

	/**
	 * Sets the has-tooltip property on @status_icon to @has_tooltip.
	 * See #GtkStatusIcon:has-tooltip for more information.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, but notifications can display an arbitrary
	 * amount of text using g_notification_set_body()
	 *
	 * Params:
	 *     hasTooltip = whether or not @status_icon has a tooltip
	 *
	 * Since: 2.16
	 */
	public void setHasTooltip(bool hasTooltip)
	{
		gtk_status_icon_set_has_tooltip(gtkStatusIcon, hasTooltip);
	}

	/**
	 * Sets the name of this tray icon.
	 * This should be a string identifying this icon. It is may be
	 * used for sorting the icons in the tray and will not be shown to
	 * the user.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as notifications are associated with a
	 * unique application identifier by #GApplication
	 *
	 * Params:
	 *     name = the name
	 *
	 * Since: 2.20
	 */
	public void setName(string name)
	{
		gtk_status_icon_set_name(gtkStatusIcon, Str.toStringz(name));
	}

	/**
	 * Sets the #GdkScreen where @status_icon is displayed; if
	 * the icon is already mapped, it will be unmapped, and
	 * then remapped on the new screen.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as GTK typically only has one #GdkScreen
	 * and notifications are managed by the platform
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 2.12
	 */
	public void setScreen(Screen screen)
	{
		gtk_status_icon_set_screen(gtkStatusIcon, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Sets the title of this tray icon.
	 * This should be a short, human-readable, localized string
	 * describing the tray icon. It may be used by tools like screen
	 * readers to render the tray icon.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; you should use g_notification_set_title()
	 * and g_notification_set_body() to present text inside your notification
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 2.18
	 */
	public void setTitle(string title)
	{
		gtk_status_icon_set_title(gtkStatusIcon, Str.toStringz(title));
	}

	/**
	 * Sets @markup as the contents of the tooltip, which is marked up with
	 * the [Pango text markup language][PangoMarkupFormat].
	 *
	 * This function will take care of setting #GtkStatusIcon:has-tooltip to %TRUE
	 * and of the default handler for the #GtkStatusIcon::query-tooltip signal.
	 *
	 * See also the #GtkStatusIcon:tooltip-markup property and
	 * gtk_tooltip_set_markup().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Params:
	 *     markup = the contents of the tooltip for @status_icon, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setTooltipMarkup(string markup)
	{
		gtk_status_icon_set_tooltip_markup(gtkStatusIcon, Str.toStringz(markup));
	}

	/**
	 * Sets @text as the contents of the tooltip.
	 *
	 * This function will take care of setting #GtkStatusIcon:has-tooltip to
	 * %TRUE and of the default handler for the #GtkStatusIcon::query-tooltip
	 * signal.
	 *
	 * See also the #GtkStatusIcon:tooltip-text property and
	 * gtk_tooltip_set_text().
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function
	 *
	 * Params:
	 *     text = the contents of the tooltip for @status_icon
	 *
	 * Since: 2.16
	 */
	public void setTooltipText(string text)
	{
		gtk_status_icon_set_tooltip_text(gtkStatusIcon, Str.toStringz(text));
	}

	/**
	 * Shows or hides a status icon.
	 *
	 * Deprecated: Use #GNotification and #GtkApplication to
	 * provide status notifications; there is no direct replacement
	 * for this function, as notifications are managed by the platform
	 *
	 * Params:
	 *     visible = %TRUE to show the status icon, %FALSE to hide it
	 *
	 * Since: 2.10
	 */
	public void setVisible(bool visible)
	{
		gtk_status_icon_set_visible(gtkStatusIcon, visible);
	}

	/**
	 * Gets emitted when the user activates the status icon.
	 * If and how status icons can activated is platform-dependent.
	 *
	 * Unlike most G_SIGNAL_ACTION signals, this signal is meant to
	 * be used by applications and should be wrapped by language bindings.
	 *
	 * Since: 2.10
	 */
	gulong addOnActivate(void delegate(StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::button-press-event signal will be emitted when a button
	 * (typically from a mouse) is pressed.
	 *
	 * Whether this event is emitted is platform-dependent.  Use the ::activate
	 * and ::popup-menu signals in preference.
	 *
	 * Params:
	 *     event = the #GdkEventButton which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked
	 *     for the event. %FALSE to propagate the event further.
	 *
	 * Since: 2.14
	 */
	gulong addOnButtonPress(bool delegate(GdkEventButton*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "button-press-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::button-press-event signal will be emitted when a button
	 * (typically from a mouse) is pressed.
	 *
	 * Whether this event is emitted is platform-dependent.  Use the ::activate
	 * and ::popup-menu signals in preference.
	 *
	 * Params:
	 *     event = the #GdkEventButton which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked
	 *     for the event. %FALSE to propagate the event further.
	 *
	 * Since: 2.14
	 */
	gulong addOnButtonPress(bool delegate(Event, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "button-press-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::button-release-event signal will be emitted when a button
	 * (typically from a mouse) is released.
	 *
	 * Whether this event is emitted is platform-dependent.  Use the ::activate
	 * and ::popup-menu signals in preference.
	 *
	 * Params:
	 *     event = the #GdkEventButton which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked
	 *     for the event. %FALSE to propagate the event further.
	 *
	 * Since: 2.14
	 */
	gulong addOnButtonRelease(bool delegate(GdkEventButton*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "button-release-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::button-release-event signal will be emitted when a button
	 * (typically from a mouse) is released.
	 *
	 * Whether this event is emitted is platform-dependent.  Use the ::activate
	 * and ::popup-menu signals in preference.
	 *
	 * Params:
	 *     event = the #GdkEventButton which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked
	 *     for the event. %FALSE to propagate the event further.
	 *
	 * Since: 2.14
	 */
	gulong addOnButtonRelease(bool delegate(Event, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "button-release-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the user brings up the context menu
	 * of the status icon. Whether status icons can have context
	 * menus and how these are activated is platform-dependent.
	 *
	 * The @button and @activate_time parameters should be
	 * passed as the last to arguments to gtk_menu_popup().
	 *
	 * Unlike most G_SIGNAL_ACTION signals, this signal is meant to
	 * be used by applications and should be wrapped by language bindings.
	 *
	 * Params:
	 *     button = the button that was pressed, or 0 if the
	 *         signal is not emitted in response to a button press event
	 *     activateTime = the timestamp of the event that
	 *         triggered the signal emission
	 *
	 * Since: 2.10
	 */
	gulong addOnPopupMenu(void delegate(uint, uint, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the hover timeout has expired with the
	 * cursor hovering above @status_icon; or emitted when @status_icon got
	 * focus in keyboard mode.
	 *
	 * Using the given coordinates, the signal handler should determine
	 * whether a tooltip should be shown for @status_icon. If this is
	 * the case %TRUE should be returned, %FALSE otherwise. Note that if
	 * @keyboard_mode is %TRUE, the values of @x and @y are undefined and
	 * should not be used.
	 *
	 * The signal handler is free to manipulate @tooltip with the therefore
	 * destined function calls.
	 *
	 * Whether this signal is emitted is platform-dependent.
	 * For plain text tooltips, use #GtkStatusIcon:tooltip-text in preference.
	 *
	 * Params:
	 *     x = the x coordinate of the cursor position where the request has been
	 *         emitted, relative to @status_icon
	 *     y = the y coordinate of the cursor position where the request has been
	 *         emitted, relative to @status_icon
	 *     keyboardMode = %TRUE if the tooltip was trigged using the keyboard
	 *     tooltip = a #GtkTooltip
	 *
	 * Returns: %TRUE if @tooltip should be shown right now, %FALSE otherwise.
	 *
	 * Since: 2.16
	 */
	gulong addOnQueryTooltip(bool delegate(int, int, bool, Tooltip, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-tooltip", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::scroll-event signal is emitted when a button in the 4 to 7
	 * range is pressed. Wheel mice are usually configured to generate
	 * button press events for buttons 4 and 5 when the wheel is turned.
	 *
	 * Whether this event is emitted is platform-dependent.
	 *
	 * Params:
	 *     event = the #GdkEventScroll which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.16
	 */
	gulong addOnScroll(bool delegate(GdkEventScroll*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::scroll-event signal is emitted when a button in the 4 to 7
	 * range is pressed. Wheel mice are usually configured to generate
	 * button press events for buttons 4 and 5 when the wheel is turned.
	 *
	 * Whether this event is emitted is platform-dependent.
	 *
	 * Params:
	 *     event = the #GdkEventScroll which triggered
	 *         this signal
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.16
	 */
	gulong addOnScroll(bool delegate(Event, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll-event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Gets emitted when the size available for the image
	 * changes, e.g. because the notification area got resized.
	 *
	 * Params:
	 *     size = the new size
	 *
	 * Returns: %TRUE if the icon was updated for the new
	 *     size. Otherwise, GTK+ will scale the icon as necessary.
	 *
	 * Since: 2.10
	 */
	gulong addOnSizeChanged(bool delegate(int, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "size-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
