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
 * inFile  = GtkToolbar.html
 * outPack = gtk
 * outFile = Toolbar
 * strct   = GtkToolbar
 * realStrct=
 * ctorStrct=
 * clss    = Toolbar
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * 	- ToolShellIF
 * prefixes:
 * 	- gtk_toolbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_toolbar_set_orientation
 * 	- gtk_toolbar_get_orientation
 * 	- gtk_toolbar_get_icon_size
 * 	- gtk_toolbar_get_relief_style
 * 	- gtk_toolbar_insert
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Button
 * 	- gtk.ToolItem
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * 	- gtk.ToolShellIF
 * 	- gtk.ToolShellT
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- getStyle -> toolbarGetStyle
 * overrides:
 */

module gtk.Toolbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import gtk.Button;
private import gtk.ToolItem;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.ToolShellIF;
private import gtk.ToolShellT;



private import gtk.Container;

/**
 * Description
 * A toolbar is created with a call to gtk_toolbar_new().
 * A toolbar can contain instances of a subclass of GtkToolItem. To add
 * a GtkToolItem to the a toolbar, use gtk_toolbar_insert(). To remove
 * an item from the toolbar use gtk_container_remove(). To add a button
 * to the toolbar, add an instance of GtkToolButton.
 * Toolbar items can be visually grouped by adding instances of
 * GtkSeparatorToolItem to the toolbar. If a GtkSeparatorToolItem has
 * the "expand" property set to TRUE and the "draw" property set to
 * FALSE the effect is to force all following items to the end of the
 * toolbar.
 * Creating a context menu for the toolbar can be done by connecting to
 * the "popup-context-menu" signal.
 */
public class Toolbar : Container, OrientableIF, ToolShellIF
{
	
	/** the main Gtk struct */
	protected GtkToolbar* gtkToolbar;
	
	
	public GtkToolbar* getToolbarStruct()
	{
		return gtkToolbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolbar* gtkToolbar)
	{
		if(gtkToolbar is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkToolbar);
		if( ptr !is null )
		{
			this = cast(Toolbar)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkToolbar);
		this.gtkToolbar = gtkToolbar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToolbar = cast(GtkToolbar*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkToolbar);
	
	// add the ToolShell capabilities
	mixin ToolShellT!(GtkToolbar);
	
	/**
	 * Insert a GtkToolItem into the toolbar at position pos.
	 * If pos is 0 the item is prepended to the start of the toolbar. If pos is negative, the item is appended to the end of the toolbar.
	 * Since 2.4
	 * Params:
	 * toolItem  = a GtkToolItem
	 * pos = the position of the new item
	 */
	public void insert (ToolItem toolItem, int pos=-1)
	{
		gtk_toolbar_insert(gtkToolbar, toolItem.getToolItemStruct(), pos);
	}
	
	/** */
	public Widget insertStock(StockID stockId, string tooltipText, string tooltipPrivateText, GCallback callback, void* userData, int position)
	{
		return insertStock(getId(stockId), tooltipText, tooltipPrivateText, callback, userData, position);
	}
	
	/** */
	public Widget insertStock(string stockId, string tooltipText, string tooltipPrivateText, int position)
	{
		return insertStock(stockId, tooltipText, tooltipPrivateText, null, null, position);
	}
	
	/** */
	public Widget insertStock(StockID stockId, string tooltipText, string tooltipPrivateText, int position)
	{
		return insertStock(getId(stockId), tooltipText, tooltipPrivateText, null, null, position);
	}
	
	/** */
	Button insertButton(StockID stockID,
	string tooltipText, string tooltipPrivateText,
	gint position)
	{
		Button button = new Button(
		cast(GtkButton*)gtk_toolbar_insert_stock(
		gtkToolbar,
		Str.toStringz(StockDesc[stockID]),
		Str.toStringz(tooltipText),
		Str.toStringz(tooltipPrivateText),
		null, null,
		position)
		);
		return button;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	bool delegate(gboolean, Toolbar)[] onFocusHomeOrEndListeners;
	/**
	 * A keybinding signal used internally by GTK+. This signal can't
	 * be used in application code
	 * TRUE if the first item should be focused
	 */
	void addOnFocusHomeOrEnd(bool delegate(gboolean, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("focus-home-or-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-home-or-end",
			cast(GCallback)&callBackFocusHomeOrEnd,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["focus-home-or-end"] = 1;
		}
		onFocusHomeOrEndListeners ~= dlg;
	}
	extern(C) static gboolean callBackFocusHomeOrEnd(GtkToolbar* toolbarStruct, gboolean focusHome, Toolbar toolbar)
	{
		foreach ( bool delegate(gboolean, Toolbar) dlg ; toolbar.onFocusHomeOrEndListeners )
		{
			if ( dlg(focusHome, toolbar) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkOrientation, Toolbar)[] onOrientationChangedListeners;
	/**
	 * Emitted when the orientation of the toolbar changes.
	 */
	void addOnOrientationChanged(void delegate(GtkOrientation, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("orientation-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"orientation-changed",
			cast(GCallback)&callBackOrientationChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["orientation-changed"] = 1;
		}
		onOrientationChangedListeners ~= dlg;
	}
	extern(C) static void callBackOrientationChanged(GtkToolbar* toolbarStruct, GtkOrientation orientation, Toolbar toolbar)
	{
		foreach ( void delegate(GtkOrientation, Toolbar) dlg ; toolbar.onOrientationChangedListeners )
		{
			dlg(orientation, toolbar);
		}
	}
	
	bool delegate(gint, gint, gint, Toolbar)[] onPopupContextMenuListeners;
	/**
	 * Emitted when the user right-clicks the toolbar or uses the
	 * keybinding to display a popup menu.
	 * Application developers should handle this signal if they want
	 * to display a context menu on the toolbar. The context-menu should
	 * appear at the coordinates given by x and y. The mouse button
	 * number is given by the button parameter. If the menu was popped
	 * up using the keybaord, button is -1.
	 */
	void addOnPopupContextMenu(bool delegate(gint, gint, gint, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("popup-context-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup-context-menu",
			cast(GCallback)&callBackPopupContextMenu,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["popup-context-menu"] = 1;
		}
		onPopupContextMenuListeners ~= dlg;
	}
	extern(C) static gboolean callBackPopupContextMenu(GtkToolbar* toolbarStruct, gint x, gint y, gint button, Toolbar toolbar)
	{
		foreach ( bool delegate(gint, gint, gint, Toolbar) dlg ; toolbar.onPopupContextMenuListeners )
		{
			if ( dlg(x, y, button, toolbar) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(GtkToolbarStyle, Toolbar)[] onStyleChangedListeners;
	/**
	 * Emitted when the style of the toolbar changes.
	 * See Also
	 * GtkToolItem
	 * Base class of widgets that can be added to a toolbar.
	 */
	void addOnStyleChanged(void delegate(GtkToolbarStyle, Toolbar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("style-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"style-changed",
			cast(GCallback)&callBackStyleChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["style-changed"] = 1;
		}
		onStyleChangedListeners ~= dlg;
	}
	extern(C) static void callBackStyleChanged(GtkToolbar* toolbarStruct, GtkToolbarStyle style, Toolbar toolbar)
	{
		foreach ( void delegate(GtkToolbarStyle, Toolbar) dlg ; toolbar.onStyleChangedListeners )
		{
			dlg(style, toolbar);
		}
	}
	
	
	/**
	 * Creates a new toolbar.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_toolbar_new (void);
		auto p = gtk_toolbar_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_toolbar_new()");
		}
		this(cast(GtkToolbar*) p);
	}
	
	/**
	 * Returns the position of item on the toolbar, starting from 0.
	 * It is an error if item is not a child of the toolbar.
	 * Since 2.4
	 * Params:
	 * item = a GtkToolItem that is a child of toolbar
	 * Returns: the position of item on the toolbar.
	 */
	public int getItemIndex(ToolItem item)
	{
		// gint gtk_toolbar_get_item_index (GtkToolbar *toolbar,  GtkToolItem *item);
		return gtk_toolbar_get_item_index(gtkToolbar, (item is null) ? null : item.getToolItemStruct());
	}
	
	/**
	 * Returns the number of items on the toolbar.
	 * Since 2.4
	 * Returns: the number of items on the toolbar
	 */
	public int getNItems()
	{
		// gint gtk_toolbar_get_n_items (GtkToolbar *toolbar);
		return gtk_toolbar_get_n_items(gtkToolbar);
	}
	
	/**
	 * Returns the n'th item on toolbar, or NULL if the
	 * toolbar does not contain an n'th item.
	 * Since 2.4
	 * Params:
	 * n = A position on the toolbar
	 * Returns: The n'th GtkToolItem on toolbar, or NULL if thereisn't an n'th item.
	 */
	public ToolItem getNthItem(int n)
	{
		// GtkToolItem * gtk_toolbar_get_nth_item (GtkToolbar *toolbar,  gint n);
		auto p = gtk_toolbar_get_nth_item(gtkToolbar, n);
		if(p is null)
		{
			return null;
		}
		return new ToolItem(cast(GtkToolItem*) p);
	}
	
	/**
	 * Returns the position corresponding to the indicated point on
	 * Since 2.4
	 * Params:
	 * x = x coordinate of a point on the toolbar
	 * y = y coordinate of a point on the toolbar
	 * Returns: The position corresponding to the point (x, y) on the toolbar.
	 */
	public int getDropIndex(int x, int y)
	{
		// gint gtk_toolbar_get_drop_index (GtkToolbar *toolbar,  gint x,  gint y);
		return gtk_toolbar_get_drop_index(gtkToolbar, x, y);
	}
	
	/**
	 * Highlights toolbar to give an idea of what it would look like
	 * if item was added to toolbar at the position indicated by index_.
	 * If item is NULL, highlighting is turned off. In that case index_
	 * is ignored.
	 * The tool_item passed to this function must not be part of any widget
	 * hierarchy. When an item is set as drop highlight item it can not
	 * added to any widget hierarchy or used as highlight item for another
	 * toolbar.
	 * Since 2.4
	 * Params:
	 * toolItem = a GtkToolItem, or NULL to turn of highlighting. allow-none.
	 * index = a position on toolbar
	 */
	public void setDropHighlightItem(ToolItem toolItem, int index)
	{
		// void gtk_toolbar_set_drop_highlight_item (GtkToolbar *toolbar,  GtkToolItem *tool_item,  gint index_);
		gtk_toolbar_set_drop_highlight_item(gtkToolbar, (toolItem is null) ? null : toolItem.getToolItemStruct(), index);
	}
	
	/**
	 * Sets whether to show an overflow menu when
	 * toolbar doesn't have room for all items on it. If TRUE,
	 * items that there are not room are available through an
	 * overflow menu.
	 * Since 2.4
	 * Params:
	 * showArrow = Whether to show an overflow menu
	 */
	public void setShowArrow(int showArrow)
	{
		// void gtk_toolbar_set_show_arrow (GtkToolbar *toolbar,  gboolean show_arrow);
		gtk_toolbar_set_show_arrow(gtkToolbar, showArrow);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_set_tooltips has been deprecated since version 2.14 and should not be used in newly-written code. The toolkit-wide "gtk-enable-tooltips" property
	 * is now used instead.
	 * Sets if the tooltips of a toolbar should be active or not.
	 * Params:
	 * enable = set to FALSE to disable the tooltips, or TRUE to enable them.
	 */
	public void setTooltips(int enable)
	{
		// void gtk_toolbar_set_tooltips (GtkToolbar *toolbar,  gboolean enable);
		gtk_toolbar_set_tooltips(gtkToolbar, enable);
	}
	
	/**
	 * Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
	 * user preferences will be used to determine the icon size.
	 */
	public void unsetIconSize()
	{
		// void gtk_toolbar_unset_icon_size (GtkToolbar *toolbar);
		gtk_toolbar_unset_icon_size(gtkToolbar);
	}
	
	/**
	 * Returns whether the toolbar has an overflow menu.
	 * See gtk_toolbar_set_show_arrow().
	 * Since 2.4
	 * Returns: TRUE if the toolbar has an overflow menu.
	 */
	public int getShowArrow()
	{
		// gboolean gtk_toolbar_get_show_arrow (GtkToolbar *toolbar);
		return gtk_toolbar_get_show_arrow(gtkToolbar);
	}
	
	/**
	 * Retrieves whether the toolbar has text, icons, or both . See
	 * gtk_toolbar_set_style().
	 * Params:
	 * toolbar = a GtkToolbar
	 * Returns: the current style of toolbar
	 */
	public GtkToolbarStyle toolbarGetStyle()
	{
		// GtkToolbarStyle gtk_toolbar_get_style (GtkToolbar *toolbar);
		return gtk_toolbar_get_style(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_get_tooltips has been deprecated since version 2.14 and should not be used in newly-written code. The toolkit-wide "gtk-enable-tooltips" property
	 * is now used instead.
	 * Retrieves whether tooltips are enabled. See
	 * gtk_toolbar_set_tooltips().
	 * Returns: TRUE if tooltips are enabled
	 */
	public int getTooltips()
	{
		// gboolean gtk_toolbar_get_tooltips (GtkToolbar *toolbar);
		return gtk_toolbar_get_tooltips(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_item has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a new item into the toolbar. You must specify the position
	 * in the toolbar where it will be inserted.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * text = give your toolbar button a label.
	 * tooltipText = a string that appears when the user holds the mouse over this item.
	 * tooltipPrivateText = use with GtkTipsQuery.
	 * icon = a GtkWidget that should be used as the button's icon.
	 * callback = the function to be executed when the button is pressed.
	 * userData = a pointer to any data you wish to be passed to the callback.
	 * Returns: the new toolbar item as a GtkWidget.
	 */
	public Widget appendItem(string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_append_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data);
		auto p = gtk_toolbar_append_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_item has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a new button to the beginning (top or left edges) of the given toolbar.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * text = give your toolbar button a label.
	 * tooltipText = a string that appears when the user holds the mouse over this item.
	 * tooltipPrivateText = use with GtkTipsQuery.
	 * icon = a GtkWidget that should be used as the button's icon.
	 * callback = the function to be executed when the button is pressed.
	 * userData = a pointer to any data you wish to be passed to the callback.
	 * Returns: the new toolbar item as a GtkWidget.
	 */
	public Widget prependItem(string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_prepend_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data);
		auto p = gtk_toolbar_prepend_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_item has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a new item into the toolbar. You must specify the position in the
	 * toolbar where it will be inserted.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * text = give your toolbar button a label.
	 * tooltipText = a string that appears when the user holds the mouse over this item.
	 * tooltipPrivateText = use with GtkTipsQuery.
	 * icon = a GtkWidget that should be used as the button's icon.
	 * callback = the function to be executed when the button is pressed.
	 * userData = a pointer to any data you wish to be passed to the callback.
	 * position = the number of widgets to insert this item after.
	 * Returns: the new toolbar item as a GtkWidget.
	 */
	public Widget insertItem(string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data,  gint position);
		auto p = gtk_toolbar_insert_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData, position);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_space has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a new space to the end of the toolbar.
	 */
	public void appendSpace()
	{
		// void gtk_toolbar_append_space (GtkToolbar *toolbar);
		gtk_toolbar_append_space(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_space has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a new space to the beginning of the toolbar.
	 */
	public void prependSpace()
	{
		// void gtk_toolbar_prepend_space (GtkToolbar *toolbar);
		gtk_toolbar_prepend_space(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_space has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a new space in the toolbar at the specified position.
	 * Params:
	 * position = the number of widgets after which a space should be inserted.
	 */
	public void insertSpace(int position)
	{
		// void gtk_toolbar_insert_space (GtkToolbar *toolbar,  gint position);
		gtk_toolbar_insert_space(gtkToolbar, position);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_element has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a new element to the end of a toolbar.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * type = a value of type GtkToolbarChildType that determines what widget will be.
	 * widget = a GtkWidget, or NULL.. allow-none.
	 * text = the element's label.
	 * tooltipText = the element's tooltip.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.
	 * icon = a GtkWidget that provides pictorial representation of the element's function.
	 * callback = the function to be executed when the button is pressed.
	 * userData = any data you wish to pass to the callback.
	 * Returns: the new toolbar element as a GtkWidget.
	 */
	public Widget appendElement(GtkToolbarChildType type, Widget widget, string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_append_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data);
		auto p = gtk_toolbar_append_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_element has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a new element to the beginning of a toolbar.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * type = a value of type GtkToolbarChildType that determines what widget will be.
	 * widget = a GtkWidget, or NULL. allow-none.
	 * text = the element's label.
	 * tooltipText = the element's tooltip.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.
	 * icon = a GtkWidget that provides pictorial representation of the element's function.
	 * callback = the function to be executed when the button is pressed.
	 * userData = any data you wish to pass to the callback.
	 * Returns: the new toolbar element as a GtkWidget.
	 */
	public Widget prependElement(GtkToolbarChildType type, Widget widget, string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_prepend_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data);
		auto p = gtk_toolbar_prepend_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_element has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a new element in the toolbar at the given position.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * type = a value of type GtkToolbarChildType that determines what widget
	 *  will be.
	 * widget = a GtkWidget, or NULL. . allow-none.
	 * text = the element's label.
	 * tooltipText = the element's tooltip.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.
	 * icon = a GtkWidget that provides pictorial representation of the element's function.
	 * callback = the function to be executed when the button is pressed.
	 * userData = any data you wish to pass to the callback.
	 * position = the number of widgets to insert this element after.
	 * Returns: the new toolbar element as a GtkWidget.
	 */
	public Widget insertElement(GtkToolbarChildType type, Widget widget, string text, string tooltipText, string tooltipPrivateText, Widget icon, GCallback callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GCallback callback,  gpointer user_data,  gint position);
		auto p = gtk_toolbar_insert_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData, position);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_widget has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a widget to the end of the given toolbar.
	 * Params:
	 * widget = a GtkWidget to add to the toolbar.
	 * tooltipText = the element's tooltip.. allow-none.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.. allow-none.
	 */
	public void appendWidget(Widget widget, string tooltipText, string tooltipPrivateText)
	{
		// void gtk_toolbar_append_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text);
		gtk_toolbar_append_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText));
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_widget has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Adds a widget to the beginning of the given toolbar.
	 * Params:
	 * widget = a GtkWidget to add to the toolbar.
	 * tooltipText = the element's tooltip.. allow-none.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.. allow-none.
	 */
	public void prependWidget(Widget widget, string tooltipText, string tooltipPrivateText)
	{
		// void gtk_toolbar_prepend_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text);
		gtk_toolbar_prepend_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText));
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_widget has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a widget in the toolbar at the given position.
	 * Params:
	 * widget = a GtkWidget to add to the toolbar.
	 * tooltipText = the element's tooltip.. allow-none.
	 * tooltipPrivateText = used for context-sensitive help about this toolbar element.. allow-none.
	 * position = the number of widgets to insert this widget after.
	 */
	public void insertWidget(Widget widget, string tooltipText, string tooltipPrivateText, int position)
	{
		// void gtk_toolbar_insert_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text,  gint position);
		gtk_toolbar_insert_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), position);
	}
	
	/**
	 * Alters the view of toolbar to display either icons only, text only, or both.
	 * Params:
	 * style = the new style for toolbar.
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		// void gtk_toolbar_set_style (GtkToolbar *toolbar,  GtkToolbarStyle style);
		gtk_toolbar_set_style(gtkToolbar, style);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_stock has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Inserts a stock item at the specified position of the toolbar. If
	 * stock_id is not a known stock item ID, it's inserted verbatim,
	 * except that underscores used to mark mnemonics are removed.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use G_CALLBACK() to cast the function to GCallback.
	 * Params:
	 * stockId = The id of the stock item you want to insert
	 * tooltipText = The text in the tooltip of the toolbar button
	 * tooltipPrivateText = The private text of the tooltip
	 * callback = The callback called when the toolbar button is clicked.
	 * userData = user data passed to callback
	 * position = The position the button shall be inserted at.
	 *  -1 means at the end.
	 * Returns: the inserted widget
	 */
	public Widget insertStock(string stockId, string tooltipText, string tooltipPrivateText, GCallback callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_stock (GtkToolbar *toolbar,  const gchar *stock_id,  const char *tooltip_text,  const char *tooltip_private_text,  GCallback callback,  gpointer user_data,  gint position);
		auto p = gtk_toolbar_insert_stock(gtkToolbar, Str.toStringz(stockId), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), callback, userData, position);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * This function sets the size of stock icons in the toolbar. You
	 * can call it both before you add the icons and after they've been
	 * added. The size you set will override user preferences for the default
	 * icon size.
	 * This should only be used for special-purpose toolbars, normal
	 * application toolbars should respect the user preferences for the
	 * size of icons.
	 * Params:
	 * iconSize = The GtkIconSize that stock icons in the
	 *  toolbar shall have.. type int
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		// void gtk_toolbar_set_icon_size (GtkToolbar *toolbar,  GtkIconSize icon_size);
		gtk_toolbar_set_icon_size(gtkToolbar, iconSize);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_remove_space has been deprecated since version 2.4 and should not be used in newly-written code. Use gtk_toolbar_insert() instead.
	 * Removes a space from the specified position.
	 * Params:
	 * position = the index of the space to remove.
	 */
	public void removeSpace(int position)
	{
		// void gtk_toolbar_remove_space (GtkToolbar *toolbar,  gint position);
		gtk_toolbar_remove_space(gtkToolbar, position);
	}
	
	/**
	 * Unsets a toolbar style set with gtk_toolbar_set_style(), so that
	 * user preferences will be used to determine the toolbar style.
	 */
	public void unsetStyle()
	{
		// void gtk_toolbar_unset_style (GtkToolbar *toolbar);
		gtk_toolbar_unset_style(gtkToolbar);
	}
}
