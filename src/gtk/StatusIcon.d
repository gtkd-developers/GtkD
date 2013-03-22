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
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_status_icon_new_from_stock
 * 	- gtk_status_icon_new_from_file
 * 	- gtk_status_icon_new_from_icon_name
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.Icon
 * 	- gio.IconIF
 * 	- gdk.Pixbuf
 * 	- gdk.Screen
 * 	- gtk.Menu
 * 	- gtk.Tooltip
 * structWrap:
 * 	- GIcon* -> IconIF
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkScreen* -> Screen
 * 	- GtkMenu* -> Menu
 * 	- GtkTooltip* -> Tooltip
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.StatusIcon;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.Icon;
private import gio.IconIF;
private import gdk.Pixbuf;
private import gdk.Screen;
private import gtk.Menu;
private import gtk.Tooltip;



private import gobject.ObjectG;

/**
 * The "system tray" or notification area is normally used for transient icons
 * that indicate some special state. For example, a system tray icon might
 * appear to tell the user that they have new mail, or have an incoming instant
 * message, or something along those lines. The basic idea is that creating an
 * icon in the notification area is less annoying than popping up a dialog.
 *
 * A GtkStatusIcon object can be used to display an icon in a "system tray".
 * The icon can have a tooltip, and the user can interact with it by
 * activating it or popping up a context menu. Critical information should
 * not solely be displayed in a GtkStatusIcon, since it may not be
 * visible (e.g. when the user doesn't have a notification area on his panel).
 * This can be checked with gtk_status_icon_is_embedded().
 *
 * On X11, the implementation follows the freedesktop.org "System Tray"
 * specification.
 * Implementations of the "tray" side of this specification can
 * be found e.g. in the GNOME 2 and KDE panel applications.
 *
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
		super(cast(GObject*)gtkStatusIcon);
		this.gtkStatusIcon = gtkStatusIcon;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkStatusIcon = cast(GtkStatusIcon*)obj;
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
	int[string] connectedSignals;
	
	void delegate(StatusIcon)[] onActivateListeners;
	/**
	 * Gets emitted when the user activates the status icon.
	 * If and how status icons can activated is platform-dependent.
	 * Unlike most G_SIGNAL_ACTION signals, this signal is meant to
	 * be used by applications and should be wrapped by language bindings.
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
	extern(C) static void callBackActivate(GtkStatusIcon* statusIconStruct, StatusIcon _statusIcon)
	{
		foreach ( void delegate(StatusIcon) dlg ; _statusIcon.onActivateListeners )
		{
			dlg(_statusIcon);
		}
	}
	
	bool delegate(GdkEvent*, StatusIcon)[] onButtonPressListeners;
	/**
	 * The ::button-press-event signal will be emitted when a button
	 * (typically from a mouse) is pressed.
	 * Whether this event is emitted is platform-dependent. Use the ::activate
	 * and ::popup-menu signals in preference.
	 * TRUE to stop other handlers from being invoked
	 * for the event. FALSE to propagate the event further.
	 * Since 2.14
	 */
	void addOnButtonPress(bool delegate(GdkEvent*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("button-press-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"button-press-event",
			cast(GCallback)&callBackButtonPress,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["button-press-event"] = 1;
		}
		onButtonPressListeners ~= dlg;
	}
	extern(C) static gboolean callBackButtonPress(GtkStatusIcon* statusIconStruct, GdkEvent* event, StatusIcon _statusIcon)
	{
		foreach ( bool delegate(GdkEvent*, StatusIcon) dlg ; _statusIcon.onButtonPressListeners )
		{
			if ( dlg(event, _statusIcon) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(GdkEvent*, StatusIcon)[] onButtonReleaseListeners;
	/**
	 * The ::button-release-event signal will be emitted when a button
	 * (typically from a mouse) is released.
	 * Whether this event is emitted is platform-dependent. Use the ::activate
	 * and ::popup-menu signals in preference.
	 * TRUE to stop other handlers from being invoked
	 * for the event. FALSE to propagate the event further.
	 * Since 2.14
	 */
	void addOnButtonRelease(bool delegate(GdkEvent*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("button-release-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"button-release-event",
			cast(GCallback)&callBackButtonRelease,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["button-release-event"] = 1;
		}
		onButtonReleaseListeners ~= dlg;
	}
	extern(C) static gboolean callBackButtonRelease(GtkStatusIcon* statusIconStruct, GdkEvent* event, StatusIcon _statusIcon)
	{
		foreach ( bool delegate(GdkEvent*, StatusIcon) dlg ; _statusIcon.onButtonReleaseListeners )
		{
			if ( dlg(event, _statusIcon) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(guint, guint, StatusIcon)[] onPopupMenuListeners;
	/**
	 * Gets emitted when the user brings up the context menu
	 * of the status icon. Whether status icons can have context
	 * menus and how these are activated is platform-dependent.
	 * The button and activate_time parameters should be
	 * passed as the last to arguments to gtk_menu_popup().
	 * Unlike most G_SIGNAL_ACTION signals, this signal is meant to
	 * be used by applications and should be wrapped by language bindings.
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
	extern(C) static void callBackPopupMenu(GtkStatusIcon* statusIconStruct, guint button, guint activateTime, StatusIcon _statusIcon)
	{
		foreach ( void delegate(guint, guint, StatusIcon) dlg ; _statusIcon.onPopupMenuListeners )
		{
			dlg(button, activateTime, _statusIcon);
		}
	}
	
	bool delegate(gint, gint, gboolean, Tooltip, StatusIcon)[] onQueryTooltipListeners;
	/**
	 * Emitted when the "gtk-tooltip-timeout" has expired with the
	 * cursor hovering above status_icon; or emitted when status_icon got
	 * focus in keyboard mode.
	 * Using the given coordinates, the signal handler should determine
	 * whether a tooltip should be shown for status_icon. If this is
	 * the case TRUE should be returned, FALSE otherwise. Note that if
	 * keyboard_mode is TRUE, the values of x and y are undefined and
	 * should not be used.
	 * The signal handler is free to manipulate tooltip with the therefore
	 * destined function calls.
	 * Whether this signal is emitted is platform-dependent.
	 * For plain text tooltips, use "tooltip-text" in preference.
	 * TRUE if the tooltip was trigged using the keyboard
	 * TRUE if tooltip should be shown right now, FALSE otherwise.
	 * Since 2.16
	 */
	void addOnQueryTooltip(bool delegate(gint, gint, gboolean, Tooltip, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("query-tooltip" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"query-tooltip",
			cast(GCallback)&callBackQueryTooltip,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["query-tooltip"] = 1;
		}
		onQueryTooltipListeners ~= dlg;
	}
	extern(C) static gboolean callBackQueryTooltip(GtkStatusIcon* statusIconStruct, gint x, gint y, gboolean keyboardMode, GtkTooltip* tooltip, StatusIcon _statusIcon)
	{
		foreach ( bool delegate(gint, gint, gboolean, Tooltip, StatusIcon) dlg ; _statusIcon.onQueryTooltipListeners )
		{
			if ( dlg(x, y, keyboardMode, ObjectG.getDObject!(Tooltip)(tooltip), _statusIcon) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(GdkEvent*, StatusIcon)[] onScrollListeners;
	/**
	 * The ::scroll-event signal is emitted when a button in the 4 to 7
	 * range is pressed. Wheel mice are usually configured to generate
	 * button press events for buttons 4 and 5 when the wheel is turned.
	 * Whether this event is emitted is platform-dependent.
	 * TRUE to stop other handlers from being invoked for the event.
	 * FALSE to propagate the event further.
	 * Since 2.16
	 */
	void addOnScroll(bool delegate(GdkEvent*, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("scroll-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"scroll-event",
			cast(GCallback)&callBackScroll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["scroll-event"] = 1;
		}
		onScrollListeners ~= dlg;
	}
	extern(C) static gboolean callBackScroll(GtkStatusIcon* statusIconStruct, GdkEvent* event, StatusIcon _statusIcon)
	{
		foreach ( bool delegate(GdkEvent*, StatusIcon) dlg ; _statusIcon.onScrollListeners )
		{
			if ( dlg(event, _statusIcon) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gint, StatusIcon)[] onSizeChangedListeners;
	/**
	 * Gets emitted when the size available for the image
	 * changes, e.g. because the notification area got resized.
	 * TRUE if the icon was updated for the new
	 * size. Otherwise, GTK+ will scale the icon as necessary.
	 * Since 2.10
	 */
	void addOnSizeChanged(bool delegate(gint, StatusIcon) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackSizeChanged(GtkStatusIcon* statusIconStruct, gint size, StatusIcon _statusIcon)
	{
		foreach ( bool delegate(gint, StatusIcon) dlg ; _statusIcon.onSizeChangedListeners )
		{
			if ( dlg(size, _statusIcon) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates an empty status icon object.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkStatusIcon * gtk_status_icon_new (void);
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
	 * pixbuf = a GdkPixbuf
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Pixbuf pixbuf)
	{
		// GtkStatusIcon * gtk_status_icon_new_from_pixbuf (GdkPixbuf *pixbuf);
		auto p = gtk_status_icon_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct())");
		}
		this(cast(GtkStatusIcon*) p);
	}
	
	/**
	 * Creates a status icon displaying a GIcon. If the icon is a
	 * themed icon, it will be updated when the theme changes.
	 * Since 2.14
	 * Params:
	 * icon = a GIcon
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IconIF icon)
	{
		// GtkStatusIcon * gtk_status_icon_new_from_gicon (GIcon *icon);
		auto p = gtk_status_icon_new_from_gicon((icon is null) ? null : icon.getIconTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_status_icon_new_from_gicon((icon is null) ? null : icon.getIconTStruct())");
		}
		this(cast(GtkStatusIcon*) p);
	}
	
	/**
	 * Makes status_icon display pixbuf.
	 * See gtk_status_icon_new_from_pixbuf() for details.
	 * Since 2.10
	 * Params:
	 * pixbuf = a GdkPixbuf or NULL. [allow-none]
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
	 * filename = a filename. [type filename]
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
	 * stockId = a stock icon id
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
	 * iconName = an icon name
	 */
	public void setFromIconName(string iconName)
	{
		// void gtk_status_icon_set_from_icon_name (GtkStatusIcon *status_icon,  const gchar *icon_name);
		gtk_status_icon_set_from_icon_name(gtkStatusIcon, Str.toStringz(iconName));
	}
	
	/**
	 * Makes status_icon display the GIcon.
	 * See gtk_status_icon_new_from_gicon() for details.
	 * Since 2.14
	 * Params:
	 * icon = a GIcon
	 */
	public void setFromGicon(IconIF icon)
	{
		// void gtk_status_icon_set_from_gicon (GtkStatusIcon *status_icon,  GIcon *icon);
		gtk_status_icon_set_from_gicon(gtkStatusIcon, (icon is null) ? null : icon.getIconTStruct());
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
	 * Returns: the displayed pixbuf, or NULL if the image is empty. [transfer none]
	 */
	public Pixbuf getPixbuf()
	{
		// GdkPixbuf * gtk_status_icon_get_pixbuf (GtkStatusIcon *status_icon);
		auto p = gtk_status_icon_get_pixbuf(gtkStatusIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
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
		// const gchar * gtk_status_icon_get_stock (GtkStatusIcon *status_icon);
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
		// const gchar * gtk_status_icon_get_icon_name (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_icon_name(gtkStatusIcon));
	}
	
	/**
	 * Retrieves the GIcon being displayed by the GtkStatusIcon.
	 * The storage type of the status icon must be GTK_IMAGE_EMPTY or
	 * GTK_IMAGE_GICON (see gtk_status_icon_get_storage_type()).
	 * The caller of this function does not own a reference to the
	 * returned GIcon.
	 * If this function fails, icon is left unchanged;
	 * Since 2.14
	 * Returns: the displayed icon, or NULL if the image is empty. [transfer none]
	 */
	public IconIF getGicon()
	{
		// GIcon * gtk_status_icon_get_gicon (GtkStatusIcon *status_icon);
		auto p = gtk_status_icon_get_gicon(gtkStatusIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
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
	 * screen = a GdkScreen
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_status_icon_set_screen (GtkStatusIcon *status_icon,  GdkScreen *screen);
		gtk_status_icon_set_screen(gtkStatusIcon, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen associated with status_icon.
	 * Since 2.12
	 * Returns: a GdkScreen. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gtk_status_icon_get_screen (GtkStatusIcon *status_icon);
		auto p = gtk_status_icon_get_screen(gtkStatusIcon);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * Sets text as the contents of the tooltip.
	 * This function will take care of setting "has-tooltip" to
	 * TRUE and of the default handler for the "query-tooltip"
	 * signal.
	 * See also the "tooltip-text" property and
	 * gtk_tooltip_set_text().
	 * Since 2.16
	 * Params:
	 * text = the contents of the tooltip for status_icon
	 */
	public void setTooltipText(string text)
	{
		// void gtk_status_icon_set_tooltip_text (GtkStatusIcon *status_icon,  const gchar *text);
		gtk_status_icon_set_tooltip_text(gtkStatusIcon, Str.toStringz(text));
	}
	
	/**
	 * Gets the contents of the tooltip for status_icon.
	 * Since 2.16
	 * Returns: the tooltip text, or NULL. You should free the returned string with g_free() when done.
	 */
	public string getTooltipText()
	{
		// gchar * gtk_status_icon_get_tooltip_text (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_tooltip_text(gtkStatusIcon));
	}
	
	/**
	 * Sets markup as the contents of the tooltip, which is marked up with
	 *  the Pango text markup language.
	 * This function will take care of setting "has-tooltip" to TRUE
	 * and of the default handler for the "query-tooltip" signal.
	 * See also the "tooltip-markup" property and
	 * gtk_tooltip_set_markup().
	 * Since 2.16
	 * Params:
	 * markup = the contents of the tooltip for status_icon, or NULL. [allow-none]
	 */
	public void setTooltipMarkup(string markup)
	{
		// void gtk_status_icon_set_tooltip_markup (GtkStatusIcon *status_icon,  const gchar *markup);
		gtk_status_icon_set_tooltip_markup(gtkStatusIcon, Str.toStringz(markup));
	}
	
	/**
	 * Gets the contents of the tooltip for status_icon.
	 * Since 2.16
	 * Returns: the tooltip text, or NULL. You should free the returned string with g_free() when done.
	 */
	public string getTooltipMarkup()
	{
		// gchar * gtk_status_icon_get_tooltip_markup (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_tooltip_markup(gtkStatusIcon));
	}
	
	/**
	 * Sets the has-tooltip property on status_icon to has_tooltip.
	 * See "has-tooltip" for more information.
	 * Since 2.16
	 * Params:
	 * hasTooltip = whether or not status_icon has a tooltip
	 */
	public void setHasTooltip(int hasTooltip)
	{
		// void gtk_status_icon_set_has_tooltip (GtkStatusIcon *status_icon,  gboolean has_tooltip);
		gtk_status_icon_set_has_tooltip(gtkStatusIcon, hasTooltip);
	}
	
	/**
	 * Returns the current value of the has-tooltip property.
	 * See "has-tooltip" for more information.
	 * Since 2.16
	 * Returns: current value of has-tooltip on status_icon.
	 */
	public int getHasTooltip()
	{
		// gboolean gtk_status_icon_get_has_tooltip (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_has_tooltip(gtkStatusIcon);
	}
	
	/**
	 * Sets the title of this tray icon.
	 * This should be a short, human-readable, localized string
	 * describing the tray icon. It may be used by tools like screen
	 * readers to render the tray icon.
	 * Since 2.18
	 * Params:
	 * title = the title
	 */
	public void setTitle(string title)
	{
		// void gtk_status_icon_set_title (GtkStatusIcon *status_icon,  const gchar *title);
		gtk_status_icon_set_title(gtkStatusIcon, Str.toStringz(title));
	}
	
	/**
	 * Gets the title of this tray icon. See gtk_status_icon_set_title().
	 * Since 2.18
	 * Returns: the title of the status icon
	 */
	public string getTitle()
	{
		// const gchar * gtk_status_icon_get_title (GtkStatusIcon *status_icon);
		return Str.toString(gtk_status_icon_get_title(gtkStatusIcon));
	}
	
	/**
	 * Sets the name of this tray icon.
	 * This should be a string identifying this icon. It is may be
	 * used for sorting the icons in the tray and will not be shown to
	 * the user.
	 * Since 2.20
	 * Params:
	 * name = the name
	 */
	public void setName(string name)
	{
		// void gtk_status_icon_set_name (GtkStatusIcon *status_icon,  const gchar *name);
		gtk_status_icon_set_name(gtkStatusIcon, Str.toStringz(name));
	}
	
	/**
	 * Shows or hides a status icon.
	 * Since 2.10
	 * Params:
	 * visible = TRUE to show the status icon, FALSE to hide it
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
	 * menu = the GtkMenu
	 * x = return location for the x position. [out]
	 * y = return location for the y position. [out]
	 * pushIn = whether the first menu item should be offset
	 * (pushed in) to be aligned with the menu popup position
	 * (only useful for GtkOptionMenu). [out]
	 * userData = the status icon to position the menu on. [type GtkStatusIcon]
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
	 * screen = return location for
	 * the screen, or NULL if the information is not needed. [out][transfer none][allow-none]
	 * area = return location for the area occupied by
	 * the status icon, or NULL. [out][allow-none]
	 * orientation = return location for the
	 * orientation of the panel in which the status icon is embedded,
	 * or NULL. A panel at the top or bottom of the screen is
	 * horizontal, a panel at the left or right is vertical. [out][allow-none]
	 * Returns: TRUE if the location information has been filled in
	 */
	public int getGeometry(out Screen screen, out Rectangle area, out GtkOrientation orientation)
	{
		// gboolean gtk_status_icon_get_geometry (GtkStatusIcon *status_icon,  GdkScreen **screen,  GdkRectangle *area,  GtkOrientation *orientation);
		GdkScreen* outscreen = null;
		
		auto p = gtk_status_icon_get_geometry(gtkStatusIcon, &outscreen, &area, &orientation);
		
		screen = ObjectG.getDObject!(Screen)(outscreen);
		return p;
	}
	
	/**
	 * This function is only useful on the X11/freedesktop.org platform.
	 * It returns a window ID for the widget in the underlying
	 * status icon implementation. This is useful for the Galago
	 * notification service, which can send a window ID in the protocol
	 * in order for the server to position notification windows
	 * pointing to a status icon reliably.
	 * This function is not intended for other use cases which are
	 * more likely to be met by one of the non-X11 specific methods, such
	 * as gtk_status_icon_position_menu().
	 * Since 2.14
	 * Returns: An 32 bit unsigned integer identifier for the underlying X11 Window
	 */
	public uint getX11_WindowId()
	{
		// guint32 gtk_status_icon_get_x11_window_id (GtkStatusIcon *status_icon);
		return gtk_status_icon_get_x11_window_id(gtkStatusIcon);
	}
}
