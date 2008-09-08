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
 * inFile  = GtkStatusIcon.html
 * outPack = gtk
 * outFile = StatusIcon
 * strct   = GtkStatusIcon
 * realStrct=
 * ctorStrct=
 * clss    = StatusIcon
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_status_icon_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_status_icon_new_from_stock
 * 	- gtk_status_icon_new_from_file
 * 	- gtk_status_icon_new_from_icon_name
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Pixbuf
 * 	- gdk.Screen
 * 	- gtk.Menu
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkScreen* -> Screen
 * 	- GtkMenu* -> Menu
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.StatusIcon;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Pixbuf;
private import gdk.Screen;
private import gtk.Menu;



private import gobject.ObjectG;

/**
 * Description
 * The "system tray" or notification area is normally used for transient icons
 * that indicate some special state. For example, a system tray icon might
 * appear to tell the user that they have new mail, or have an incoming instant
 * message, or something along those lines. The basic idea is that creating an
 * icon in the notification area is less annoying than popping up a dialog.
 * A GtkStatusIcon object can be used to display an icon in a "system tray".
 * The icon can have a tooltip, and the user can interact with it by
 * activating it or popping up a context menu. Critical information should
 * not solely be displayed in a GtkStatusIcon, since it may not be
 * visible (e.g. when the user doesn't have a notification area on his panel).
 * This can be checked with gtk_status_icon_is_embedded().
 * On X11, the implementation follows the freedesktop.org "System Tray"
 * specification. Implementations of the "tray" side of this specification can
 * be found e.g. in the GNOME and KDE panel applications.
 * Note that a GtkStatusIcon is not a widget, but just
 * a GObject. Making it a widget would be impractical, since the system tray
 * on Win32 doesn't allow to embed arbitrary widgets.
 */
public class StatusIcon : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkStatusIcon* gtkStatusIcon;
	
	
	public GtkStatusIcon* getStatusIconStruct()
	{
		return gtkStatusIcon;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStatusIcon;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStatusIcon* gtkStatusIcon)
	{
		if(gtkStatusIcon is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkStatusIcon);
		if( ptr !is null )
		{
			this = cast(StatusIcon)ptr;
			return;
		}
		super(cast(GObject*)gtkStatusIcon);
		this.gtkStatusIcon = gtkStatusIcon;
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
		// GtkStatusIcon* gtk_status_icon_new_from_stock (const gchar *stock_id);
		auto p = gtk_status_icon_new_from_stock(Str.toStringz(StockDesc[stockID]));
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
			// GtkStatusIcon* gtk_status_icon_new_from_file (const gchar *filename);
			p = cast(GtkStatusIcon*)gtk_status_icon_new_from_file(Str.toStringz(iconName));
		}
		else
		{
			// GtkStatusIcon* gtk_status_icon_new_from_icon_name (const gchar *icon_name);
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
	int[char[]] connectedSignals;
	
	void delegate(StatusIcon)[] onActivateListeners;
	/**
	 * Gets emitted when the user activates the status icon.
	 * If and how status icons can activated is platform-dependent.
	 * Since 2.10
	 */
	void addOnActivate(void delegate(StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkStatusIcon* statusIconStruct, StatusIcon statusIcon)
	{
		foreach ( void delegate(StatusIcon) dlg ; statusIcon.onActivateListeners )
		{
			dlg(statusIcon);
		}
	}
	
	void delegate(guint, guint, StatusIcon)[] onPopupMenuListeners;
	/**
	 * Gets emitted when the user brings up the context menu
	 * of the status icon. Whether status icons can have context
	 * menus and how these are activated is platform-dependent.
	 * The button and activate_timeout parameters should be
	 * passed as the last to arguments to gtk_menu_popup().
	 * Since 2.10
	 */
	void addOnPopupMenu(void delegate(guint, guint, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popup-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup-menu",
			cast(GCallback)&callBackPopupMenu,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popup-menu"] = 1;
		}
		onPopupMenuListeners ~= dlg;
	}
	extern(C) static void callBackPopupMenu(GtkStatusIcon* statusIconStruct, guint button, guint activateTime, StatusIcon statusIcon)
	{
		foreach ( void delegate(guint, guint, StatusIcon) dlg ; statusIcon.onPopupMenuListeners )
		{
			dlg(button, activateTime, statusIcon);
		}
	}
	
	gboolean delegate(gint, StatusIcon)[] onSizeChangedListeners;
	/**
	 * Gets emitted when the size available for the image
	 * changes, e.g. because the notification area got resized.
	 * Since 2.10
	 */
	void addOnSizeChanged(gboolean delegate(gint, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("size-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-changed",
			cast(GCallback)&callBackSizeChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["size-changed"] = 1;
		}
		onSizeChangedListeners ~= dlg;
	}
	extern(C) static gboolean callBackSizeChanged(GtkStatusIcon* statusIconStruct, gint size, StatusIcon statusIcon)
	{
		foreach ( gboolean delegate(gint, StatusIcon) dlg ; statusIcon.onSizeChangedListeners )
		{
			if ( dlg(size, statusIcon) )
			{
				return true;
			}
		}
		
		return false;
	}
	
	
	/**
	 * Creates an empty status icon object.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkStatusIcon* gtk_status_icon_new (void);
		auto p = gtk_status_icon_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new()");
		}
		this(cast(GtkStatusIcon*) p);
	}
	
	/**
	 * Creates a status icon displaying pixbuf.
	 * The image will be scaled down to fit in the available
	 * space in the notification area, if necessary.
	 * Since 2.10
	 * Params:
	 * pixbuf =  a GdkPixbuf
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkStatusIcon* gtk_status_icon_new_from_pixbuf (GdkPixbuf *pixbuf);
		auto p = gtk_status_icon_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkStatusIcon*) p);
	}
	
	/**
	 * Makes status_icon display pixbuf.
	 * See gtk_status_icon_new_from_pixbuf() for details.
	 * Since 2.10
	 * Params:
	 * pixbuf =  a GdkPixbuf or NULL
	 */
	public void setFromPixbuf(Pixbuf pixbuf)
	{
		// void gtk_status_icon_set_from_pixbuf (GtkStatusIcon *status_icon,  GdkPixbuf *pixbuf);
		gtk_status_icon_set_from_pixbuf(gtkStatusIcon, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
	
	/**
	 * Makes status_icon display the file filename.
	 * See gtk_status_icon_new_from_file() for details.
	 * Since 2.10
	 * Params:
	 * filename =  a filename
	 */
	public void setFromFile(string filename)
	{
		// void gtk_status_icon_set_from_file (GtkStatusIcon *status_icon,  const gchar *filename);
		gtk_status_icon_set_from_file(gtkStatusIcon, Str.toStringz(filename));
	}
	
	/**
	 * Makes status_icon display the stock icon with the id stock_id.
	 * See gtk_status_icon_new_from_stock() for details.
	 * Since 2.10
	 * Params:
	 * stockId =  a stock icon id
	 */
	public void setFromStock(string stockId)
	{
		// void gtk_status_icon_set_from_stock (GtkStatusIcon *status_icon,  const gchar *stock_id);
		gtk_status_icon_set_from_stock(gtkStatusIcon, Str.toStringz(stockId));
	}
	
	/**
	 * Makes status_icon display the icon named icon_name from the
	 * current icon theme.
	 * See gtk_status_icon_new_from_icon_name() for details.
	 * Since 2.10
	 * Params:
	 * iconName =  an icon name
	 */
	public void setFromIconName(string iconName)
	{
		// void gtk_status_icon_set_from_icon_name (GtkStatusIcon *status_icon,  const gchar *icon_name);
		gtk_status_icon_set_from_icon_name(gtkStatusIcon, Str.toStringz(iconName));
	}
	
	/**
	 * Gets the type of representation being used by the GtkStatusIcon
	 * to store image data. If the GtkStatusIcon has no image data,
	 * the return value will be GTK_IMAGE_EMPTY.
	 * Since 2.10
	 * Returns: the image representation being used
	 */
	public GtkImageType getStorageType()
	{
		// GtkImageType gtk_status_icon_get_storage_type (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_storage_type(gtkStatusIcon);
	}
	
	/**
	 * Gets the GdkPixbuf being displayed by the GtkStatusIcon.
	 * The storage type of the status icon must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_PIXBUF (see gtk_status_icon_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned pixbuf.
	 * Since 2.10
	 * Returns: the displayed pixbuf, or NULL if the image is empty.
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf* gtk_status_icon_get_pixbuf (GtkStatusIcon *status_icon);
		auto p = gtk_status_icon_get_pixbuf(gtkStatusIcon);
		if(p is null)
		{
			return null;
		}
		return new Pixbuf(cast(GdkPixbuf*) p);
	}
	
	/**
	 * Gets the id of the stock icon being displayed by the GtkStatusIcon.
	 * The storage type of the status icon must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_STOCK (see gtk_status_icon_get_storage_type()).
	 * The returned string is owned by the GtkStatusIcon and should not
	 * be freed or modified.
	 * Since 2.10
	 * Returns: stock id of the displayed stock icon, or NULL if the image is empty.
	 */
	public string getStock()
	{
		// const gchar* gtk_status_icon_get_stock (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_stock(gtkStatusIcon));
	}
	
	/**
	 * Gets the name of the icon being displayed by the GtkStatusIcon.
	 * The storage type of the status icon must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_ICON_NAME (see gtk_status_icon_get_storage_type()).
	 * The returned string is owned by the GtkStatusIcon and should not
	 * be freed or modified.
	 * Since 2.10
	 * Returns: name of the displayed icon, or NULL if the image is empty.
	 */
	public string getIconName()
	{
		// const gchar* gtk_status_icon_get_icon_name (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_icon_name(gtkStatusIcon));
	}
	
	/**
	 * Gets the size in pixels that is available for the image.
	 * Stock icons and named icons adapt their size automatically
	 * if the size of the notification area changes. For other
	 * storage types, the size-changed signal can be used to
	 * react to size changes.
	 * Note that the returned size is only meaningful while the
	 * status icon is embedded (see gtk_status_icon_is_embedded()).
	 * Since 2.10
	 * Returns: the size that is available for the image
	 */
	public int getSize()
	{
		// gint gtk_status_icon_get_size (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_size(gtkStatusIcon);
	}
	
	/**
	 * Sets the GdkScreen where status_icon is displayed; if
	 * the icon is already mapped, it will be unmapped, and
	 * then remapped on the new screen.
	 * Since 2.12
	 * Params:
	 * screen =  a GdkScreen
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_status_icon_set_screen (GtkStatusIcon *status_icon,  GdkScreen *screen);
		gtk_status_icon_set_screen(gtkStatusIcon, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen associated with status_icon.
	 * Since 2.12
	 * Returns: a GdkScreen.
	 */
	public Screen getScreen()
	{
		// GdkScreen* gtk_status_icon_get_screen (GtkStatusIcon *status_icon);
		auto p = gtk_status_icon_get_screen(gtkStatusIcon);
		if(p is null)
		{
			return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Sets the tooltip of the status icon.
	 * Since 2.10
	 * Params:
	 * tooltipText =  the tooltip text, or NULL
	 */
	public void setTooltip(string tooltipText)
	{
		// void gtk_status_icon_set_tooltip (GtkStatusIcon *status_icon,  const gchar *tooltip_text);
		gtk_status_icon_set_tooltip(gtkStatusIcon, Str.toStringz(tooltipText));
	}
	
	/**
	 * Shows or hides a status icon.
	 * Since 2.10
	 * Params:
	 * visible =  TRUE to show the status icon, FALSE to hide it
	 */
	public void setVisible(int visible)
	{
		// void gtk_status_icon_set_visible (GtkStatusIcon *status_icon,  gboolean visible);
		gtk_status_icon_set_visible(gtkStatusIcon, visible);
	}
	
	/**
	 * Returns whether the status icon is visible or not.
	 * Note that being visible does not guarantee that
	 * the user can actually see the icon, see also
	 * gtk_status_icon_is_embedded().
	 * Since 2.10
	 * Returns: TRUE if the status icon is visible
	 */
	public int getVisible()
	{
		// gboolean gtk_status_icon_get_visible (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_visible(gtkStatusIcon);
	}
	
	/**
	 * Makes the status icon start or stop blinking.
	 * Note that blinking user interface elements may be problematic
	 * for some users, and thus may be turned off, in which case
	 * this setting has no effect.
	 * Since 2.10
	 * Params:
	 * blinking =  TRUE to turn blinking on, FALSE to turn it off
	 */
	public void setBlinking(int blinking)
	{
		// void gtk_status_icon_set_blinking (GtkStatusIcon *status_icon,  gboolean blinking);
		gtk_status_icon_set_blinking(gtkStatusIcon, blinking);
	}
	
	/**
	 * Returns whether the icon is blinking, see
	 * gtk_status_icon_set_blinking().
	 * Since 2.10
	 * Returns: TRUE if the icon is blinking
	 */
	public int getBlinking()
	{
		// gboolean gtk_status_icon_get_blinking (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_blinking(gtkStatusIcon);
	}
	
	/**
	 * Returns whether the status icon is embedded in a notification
	 * area.
	 * Since 2.10
	 * Returns: TRUE if the status icon is embedded in a notification area.
	 */
	public int isEmbedded()
	{
		// gboolean gtk_status_icon_is_embedded (GtkStatusIcon *status_icon);
		return gtk_status_icon_is_embedded(gtkStatusIcon);
	}
	
	/**
	 * Menu positioning function to use with gtk_menu_popup()
	 * to position menu aligned to the status icon user_data.
	 * Since 2.10
	 * Params:
	 * menu =  the GtkMenu
	 * x =  return location for the x position
	 * y =  return location for the y position
	 * pushIn =  whether the first menu item should be offset (pushed in) to be
	 *  aligned with the menu popup position (only useful for GtkOptionMenu).
	 * userData =  the status icon to position the menu on
	 */
	public static void positionMenu(Menu menu, out int x, out int y, out int pushIn, void* userData)
	{
		// void gtk_status_icon_position_menu (GtkMenu *menu,  gint *x,  gint *y,  gboolean *push_in,  gpointer user_data);
		gtk_status_icon_position_menu((menu is null) ? null : menu.getMenuStruct(), &x, &y, &pushIn, userData);
	}
	
	/**
	 * Obtains information about the location of the status icon
	 * on screen. This information can be used to e.g. position
	 * popups like notification bubbles.
	 * See gtk_status_icon_position_menu() for a more convenient
	 * alternative for positioning menus.
	 * Note that some platforms do not allow GTK+ to provide
	 * this information, and even on platforms that do allow it,
	 * the information is not reliable unless the status icon
	 * is embedded in a notification area, see
	 * gtk_status_icon_is_embedded().
	 * Since 2.10
	 * Params:
	 * screen =  return location for the screen, or NULL if the
	 *  information is not needed
	 * area =  return location for the area occupied by the status
	 *  icon, or NULL
	 * orientation =  return location for the orientation of the panel
	 *  in which the status icon is embedded, or NULL. A panel
	 *  at the top or bottom of the screen is horizontal, a panel
	 *  at the left or right is vertical.
	 * Returns: TRUE if the location information has  been filled in
	 */
	public int getGeometry(out Screen screen, out GdkRectangle area, out GtkOrientation orientation)
	{
		// gboolean gtk_status_icon_get_geometry (GtkStatusIcon *status_icon,  GdkScreen **screen,  GdkRectangle *area,  GtkOrientation *orientation);
		GdkScreen* outscreen = null;
		
		auto p = gtk_status_icon_get_geometry(gtkStatusIcon, &outscreen, &area, &orientation);
		
		screen = new Screen(outscreen);
		return p;
	}
}
