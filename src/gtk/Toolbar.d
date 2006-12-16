/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
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
 * prefixes:
 * 	- gtk_toolbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_toolbar_get_style
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Button
 * 	- gtk.ToolItem
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Toolbar;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;
private import gtk.Widget;
private import gtk.Button;
private import gtk.ToolItem;

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
 * the GtkToolbar::popup-context-menu signal.
 */
private import gtk.Container;
public class Toolbar : Container
{
	
	/** the main Gtk struct */
	protected GtkToolbar* gtkToolbar;
	
	
	public GtkToolbar* getToolbarStruct()
	{
		return gtkToolbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkToolbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolbar* gtkToolbar)
	{
		super(cast(GtkContainer*)gtkToolbar);
		this.gtkToolbar = gtkToolbar;
	}
	
	/**
	 * Retrieves whether the toolbar has text, icons, or both . See
	 * gtk_toolbar_set_style().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  the current style of toolbar
	 */
	public GtkToolbarStyle toolbarGetStyle()
	{
		// GtkToolbarStyle gtk_toolbar_get_style (GtkToolbar *toolbar);
		return gtk_toolbar_get_style(gtkToolbar);
	}
	
	public void insert (ToolItem toolItem, int pos=-1)
	{
		gtk_toolbar_insert(gtkToolbar, toolItem.getToolItemStruct(), pos);
	}
	
	public Widget insertStock(StockID stockId, char[] tooltipText, char[] tooltipPrivateText, GtkSignalFunc callback, void* userData, int position)
	{
		return insertStock(getId(stockId), tooltipText, tooltipPrivateText, callback, userData, position);
	}
	
	public Widget insertStock(char[] stockId, char[] tooltipText, char[] tooltipPrivateText, int position)
	{
		return insertStock(stockId, tooltipText, tooltipPrivateText, null, null, position);
	}
	
	public Widget insertStock(StockID stockId, char[] tooltipText, char[] tooltipPrivateText, int position)
	{
		return insertStock(getId(stockId), tooltipText, tooltipPrivateText, null, null, position);
	}
	
	Button insertButton(StockID stockID,
	char[] tooltipText, char[] tooltipPrivateText,
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
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.gdktypes;
	int[char[]] connectedSignals;
	
	gboolean delegate(gboolean, Toolbar)[] onFocusHomeOrEndListeners;
	void addOnFocusHomeOrEnd(gboolean delegate(gboolean, Toolbar) dlg)
	{
		if ( !("focus-home-or-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"focus-home-or-end",
			cast(GCallback)&callBackFocusHomeOrEnd,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["focus-home-or-end"] = 1;
		}
		onFocusHomeOrEndListeners ~= dlg;
	}
	extern(C) static void callBackFocusHomeOrEnd(GtkToolbar* toolbarStruct, gboolean focusHome, Toolbar toolbar)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, Toolbar) dlg ; toolbar.onFocusHomeOrEndListeners )
		{
			dlg(focusHome, toolbar);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkDirectionType, Toolbar)[] onMoveFocusListeners;
	void addOnMoveFocus(gboolean delegate(GtkDirectionType, Toolbar) dlg)
	{
		if ( !("move-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus",
			cast(GCallback)&callBackMoveFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["move-focus"] = 1;
		}
		onMoveFocusListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocus(GtkToolbar* toolbarStruct, GtkDirectionType dir, Toolbar toolbar)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkDirectionType, Toolbar) dlg ; toolbar.onMoveFocusListeners )
		{
			dlg(dir, toolbar);
		}
		
		return consumed;
	}
	
	void delegate(GtkOrientation, Toolbar)[] onOrientationChangedListeners;
	void addOnOrientationChanged(void delegate(GtkOrientation, Toolbar) dlg)
	{
		if ( !("orientation-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"orientation-changed",
			cast(GCallback)&callBackOrientationChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["orientation-changed"] = 1;
		}
		onOrientationChangedListeners ~= dlg;
	}
	extern(C) static void callBackOrientationChanged(GtkToolbar* toolbarStruct, GtkOrientation orientation, Toolbar toolbar)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkOrientation, Toolbar) dlg ; toolbar.onOrientationChangedListeners )
		{
			dlg(orientation, toolbar);
		}
		
		return consumed;
	}
	
	gboolean delegate(gint, gint, gint, Toolbar)[] onPopupContextMenuListeners;
	void addOnPopupContextMenu(gboolean delegate(gint, gint, gint, Toolbar) dlg)
	{
		if ( !("popup-context-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"popup-context-menu",
			cast(GCallback)&callBackPopupContextMenu,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["popup-context-menu"] = 1;
		}
		onPopupContextMenuListeners ~= dlg;
	}
	extern(C) static void callBackPopupContextMenu(GtkToolbar* toolbarStruct, gint x, gint y, gint button, Toolbar toolbar)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gint, gint, gint, Toolbar) dlg ; toolbar.onPopupContextMenuListeners )
		{
			dlg(x, y, button, toolbar);
		}
		
		return consumed;
	}
	
	void delegate(GtkToolbarStyle, Toolbar)[] onStyleChangedListeners;
	void addOnStyleChanged(void delegate(GtkToolbarStyle, Toolbar) dlg)
	{
		if ( !("style-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"style-changed",
			cast(GCallback)&callBackStyleChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["style-changed"] = 1;
		}
		onStyleChangedListeners ~= dlg;
	}
	extern(C) static void callBackStyleChanged(GtkToolbar* toolbarStruct, GtkToolbarStyle style, Toolbar toolbar)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkToolbarStyle, Toolbar) dlg ; toolbar.onStyleChangedListeners )
		{
			dlg(style, toolbar);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	/**
	 * Creates a new toolbar.
	 * Returns:
	 *  the newly-created toolbar.
	 */
	public this ()
	{
		// GtkWidget* gtk_toolbar_new (void);
		this(cast(GtkToolbar*)gtk_toolbar_new() );
	}
	
	/**
	 * Insert a GtkToolItem into the toolbar at position pos. If pos is
	 * 0 the item is prepended to the start of the toolbar. If pos is
	 * negative, the item is appended to the end of the toolbar.
	 * toolbar:
	 *  a GtkToolbar
	 * item:
	 *  a GtkToolItem
	 * pos:
	 *  the position of the new item
	 * Since 2.4
	 */
	public void insert(GtkToolItem* item, int pos)
	{
		// void gtk_toolbar_insert (GtkToolbar *toolbar,  GtkToolItem *item,  gint pos);
		gtk_toolbar_insert(gtkToolbar, item, pos);
	}
	
	/**
	 * Returns the position of item on the toolbar, starting from 0.
	 * It is an error if item is not a child of the toolbar.
	 * toolbar:
	 *  a GtkToolbar
	 * item:
	 *  a GtkToolItem that is a child of toolbar
	 * Returns:
	 *  the position of item on the toolbar.
	 * Since 2.4
	 */
	public int getItemIndex(GtkToolItem* item)
	{
		// gint gtk_toolbar_get_item_index (GtkToolbar *toolbar,  GtkToolItem *item);
		return gtk_toolbar_get_item_index(gtkToolbar, item);
	}
	
	/**
	 * Returns the number of items on the toolbar.
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  the number of items on the toolbar
	 * Since 2.4
	 */
	public int getNItems()
	{
		// gint gtk_toolbar_get_n_items (GtkToolbar *toolbar);
		return gtk_toolbar_get_n_items(gtkToolbar);
	}
	
	/**
	 * Returns the n'th item on toolbar, or NULL if the
	 * toolbar does not contain an n'th item.
	 * toolbar:
	 *  a GtkToolbar
	 * n:
	 *  A position on the toolbar
	 * Returns:
	 *  The n'th GtkToolItem on toolbar, or NULL if there
	 * isn't an n'th item.
	 * Since 2.4
	 */
	public GtkToolItem* getNthItem(int n)
	{
		// GtkToolItem* gtk_toolbar_get_nth_item (GtkToolbar *toolbar,  gint n);
		return gtk_toolbar_get_nth_item(gtkToolbar, n);
	}
	
	/**
	 * Returns the position corresponding to the indicated point on
	 * toolbar. This is useful when dragging items to the toolbar:
	 * this function returns the position a new item should be
	 * inserted.
	 * x and y are in toolbar coordinates.
	 * toolbar:
	 *  a GtkToolbar
	 * x:
	 *  x coordinate of a point on the toolbar
	 * y:
	 *  y coordinate of a point on the toolbar
	 * Returns:
	 *  The position corresponding to the point (x, y) on the toolbar.
	 * Since 2.4
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
	 * toolbar:
	 *  a GtkToolbar
	 * tool_item:
	 *  a GtkToolItem, or NULL to turn of highlighting
	 * index_:
	 *  a position on toolbar
	 * Since 2.4
	 */
	public void setDropHighlightItem(GtkToolItem* toolItem, int index)
	{
		// void gtk_toolbar_set_drop_highlight_item  (GtkToolbar *toolbar,  GtkToolItem *tool_item,  gint index_);
		gtk_toolbar_set_drop_highlight_item(gtkToolbar, toolItem, index);
	}
	
	/**
	 * Sets whether to show an overflow menu when
	 * toolbar doesn't have room for all items on it. If TRUE,
	 * items that there are not room are available through an
	 * overflow menu.
	 * toolbar:
	 *  a GtkToolbar
	 * show_arrow:
	 *  Whether to show an overflow menu
	 * Since 2.4
	 */
	public void setShowArrow(int showArrow)
	{
		// void gtk_toolbar_set_show_arrow (GtkToolbar *toolbar,  gboolean show_arrow);
		gtk_toolbar_set_show_arrow(gtkToolbar, showArrow);
	}
	
	/**
	 * Sets whether a toolbar should appear horizontally or vertically.
	 * toolbar:
	 *  a GtkToolbar.
	 * orientation:
	 *  a new GtkOrientation.
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		// void gtk_toolbar_set_orientation (GtkToolbar *toolbar,  GtkOrientation orientation);
		gtk_toolbar_set_orientation(gtkToolbar, orientation);
	}
	
	/**
	 * Sets if the tooltips of a toolbar should be active or not.
	 * toolbar:
	 *  a GtkToolbar.
	 * enable:
	 *  set to FALSE to disable the tooltips, or TRUE to enable them.
	 */
	public void setTooltips(int enable)
	{
		// void gtk_toolbar_set_tooltips (GtkToolbar *toolbar,  gboolean enable);
		gtk_toolbar_set_tooltips(gtkToolbar, enable);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_unset_icon_size is deprecated and should not be used in newly-written code.
	 * Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
	 * user preferences will be used to determine the icon size.
	 * toolbar:
	 *  a GtkToolbar
	 */
	public void unsetIconSize()
	{
		// void gtk_toolbar_unset_icon_size (GtkToolbar *toolbar);
		gtk_toolbar_unset_icon_size(gtkToolbar);
	}
	
	/**
	 * Returns whether the toolbar has an overflow menu.
	 * See gtk_toolbar_set_show_arrow().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  TRUE if the toolbar has an overflow menu.
	 * Since 2.4
	 */
	public int getShowArrow()
	{
		// gboolean gtk_toolbar_get_show_arrow (GtkToolbar *toolbar);
		return gtk_toolbar_get_show_arrow(gtkToolbar);
	}
	
	/**
	 * Retrieves the current orientation of the toolbar. See
	 * gtk_toolbar_set_orientation().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  the orientation
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_toolbar_get_orientation (GtkToolbar *toolbar);
		return gtk_toolbar_get_orientation(gtkToolbar);
	}
	
	
	/**
	 * Retrieves the icon size for the toolbar. See gtk_toolbar_set_icon_size().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  the current icon size for the icons on the toolbar.
	 */
	public GtkIconSize getIconSize()
	{
		// GtkIconSize gtk_toolbar_get_icon_size (GtkToolbar *toolbar);
		return gtk_toolbar_get_icon_size(gtkToolbar);
	}
	
	/**
	 * Retrieves whether tooltips are enabled. See
	 * gtk_toolbar_set_tooltips().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  TRUE if tooltips are enabled
	 */
	public int getTooltips()
	{
		// gboolean gtk_toolbar_get_tooltips (GtkToolbar *toolbar);
		return gtk_toolbar_get_tooltips(gtkToolbar);
	}
	
	/**
	 * Returns the relief style of buttons on toolbar. See
	 * gtk_button_set_relief().
	 * toolbar:
	 *  a GtkToolbar
	 * Returns:
	 *  The relief style of buttons on toolbar.
	 * Since 2.4
	 */
	public GtkReliefStyle getReliefStyle()
	{
		// GtkReliefStyle gtk_toolbar_get_relief_style (GtkToolbar *toolbar);
		return gtk_toolbar_get_relief_style(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_item is deprecated and should not be used in newly-written code.
	 * Inserts a new item into the toolbar. You must specify the position
	 * in the toolbar where it will be inserted.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * text:
	 *  give your toolbar button a label.
	 * tooltip_text:
	 *  a string that appears when the user holds the mouse over this item.
	 * tooltip_private_text:
	 *  use with GtkTipsQuery.
	 * icon:
	 *  a GtkWidget that should be used as the button's icon.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  a pointer to any data you wish to be passed to the callback.
	 * Returns:
	 *  the new toolbar item as a GtkWidget.
	 */
	public Widget appendItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_append_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data);
		return new Widget( gtk_toolbar_append_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_item is deprecated and should not be used in newly-written code.
	 * Adds a new button to the beginning (top or left edges) of the given toolbar.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * text:
	 *  give your toolbar button a label.
	 * tooltip_text:
	 *  a string that appears when the user holds the mouse over this item.
	 * tooltip_private_text:
	 *  use with GtkTipsQuery.
	 * icon:
	 *  a GtkWidget that should be used as the button's icon.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  a pointer to any data you wish to be passed to the callback.
	 * Returns:
	 *  the new toolbar item as a GtkWidget.
	 */
	public Widget prependItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_prepend_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data);
		return new Widget( gtk_toolbar_prepend_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_item is deprecated and should not be used in newly-written code.
	 * Inserts a new item into the toolbar. You must specify the position in the
	 * toolbar where it will be inserted.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * text:
	 *  give your toolbar button a label.
	 * tooltip_text:
	 *  a string that appears when the user holds the mouse over this item.
	 * tooltip_private_text:
	 *  use with GtkTipsQuery.
	 * icon:
	 *  a GtkWidget that should be used as the button's icon.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  a pointer to any data you wish to be passed to the callback.
	 * position:
	 *  the number of widgets to insert this item after.
	 * Returns:
	 *  the new toolbar item as a GtkWidget.
	 */
	public Widget insertItem(char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_item (GtkToolbar *toolbar,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data,  gint position);
		return new Widget( gtk_toolbar_insert_item(gtkToolbar, Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData, position) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_space is deprecated and should not be used in newly-written code.
	 * Adds a new space to the end of the toolbar.
	 * toolbar:
	 *  a GtkToolbar.
	 */
	public void appendSpace()
	{
		// void gtk_toolbar_append_space (GtkToolbar *toolbar);
		gtk_toolbar_append_space(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_space is deprecated and should not be used in newly-written code.
	 * Adds a new space to the beginning of the toolbar.
	 * toolbar:
	 *  a GtkToolbar.
	 */
	public void prependSpace()
	{
		// void gtk_toolbar_prepend_space (GtkToolbar *toolbar);
		gtk_toolbar_prepend_space(gtkToolbar);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_space is deprecated and should not be used in newly-written code.
	 * Inserts a new space in the toolbar at the specified position.
	 * toolbar:
	 *  a GtkToolbar
	 * position:
	 *  the number of widgets after which a space should be inserted.
	 */
	public void insertSpace(int position)
	{
		// void gtk_toolbar_insert_space (GtkToolbar *toolbar,  gint position);
		gtk_toolbar_insert_space(gtkToolbar, position);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_element is deprecated and should not be used in newly-written code.
	 * Adds a new element to the end of a toolbar.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * type:
	 *  a value of type GtkToolbarChildType that determines what widget will be.
	 * widget:
	 *  a GtkWidget, or NULL.
	 * text:
	 *  the element's label.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 * icon:
	 *  a GtkWidget that provides pictorial representation of the element's function.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  any data you wish to pass to the callback.
	 * Returns:
	 *  the new toolbar element as a GtkWidget.
	 */
	public Widget appendElement(GtkToolbarChildType type, Widget widget, char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_append_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data);
		return new Widget( gtk_toolbar_append_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_element is deprecated and should not be used in newly-written code.
	 * Adds a new element to the beginning of a toolbar.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * type:
	 *  a value of type GtkToolbarChildType that determines what widget will be.
	 * widget:
	 *  a GtkWidget, or NULL
	 * text:
	 *  the element's label.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 * icon:
	 *  a GtkWidget that provides pictorial representation of the element's function.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  any data you wish to pass to the callback.
	 * Returns:
	 *  the new toolbar element as a GtkWidget.
	 */
	public Widget prependElement(GtkToolbarChildType type, Widget widget, char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData)
	{
		// GtkWidget* gtk_toolbar_prepend_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data);
		return new Widget( gtk_toolbar_prepend_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_element is deprecated and should not be used in newly-written code.
	 * Inserts a new element in the toolbar at the given position.
	 * If type == GTK_TOOLBAR_CHILD_WIDGET, widget is used as the new element.
	 * If type == GTK_TOOLBAR_CHILD_RADIOBUTTON, widget is used to determine
	 * the radio group for the new element. In all other cases, widget must
	 * be NULL.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  a GtkToolbar.
	 * type:
	 *  a value of type GtkToolbarChildType that determines what widget
	 *  will be.
	 * widget:
	 *  a GtkWidget, or NULL.
	 * text:
	 *  the element's label.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 * icon:
	 *  a GtkWidget that provides pictorial representation of the element's function.
	 * callback:
	 *  the function to be executed when the button is pressed.
	 * user_data:
	 *  any data you wish to pass to the callback.
	 * position:
	 *  the number of widgets to insert this element after.
	 * Returns:
	 *  the new toolbar element as a GtkWidget.
	 */
	public Widget insertElement(GtkToolbarChildType type, Widget widget, char[] text, char[] tooltipText, char[] tooltipPrivateText, Widget icon, GtkSignalFunc callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_element (GtkToolbar *toolbar,  GtkToolbarChildType type,  GtkWidget *widget,  const char *text,  const char *tooltip_text,  const char *tooltip_private_text,  GtkWidget *icon,  GtkSignalFunc callback,  gpointer user_data,  gint position);
		return new Widget( gtk_toolbar_insert_element(gtkToolbar, type, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(text), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), (icon is null) ? null : icon.getWidgetStruct(), callback, userData, position) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_append_widget is deprecated and should not be used in newly-written code.
	 * Adds a widget to the end of the given toolbar.
	 * toolbar:
	 *  a GtkToolbar.
	 * widget:
	 *  a GtkWidget to add to the toolbar.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 */
	public void appendWidget(Widget widget, char[] tooltipText, char[] tooltipPrivateText)
	{
		// void gtk_toolbar_append_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text);
		gtk_toolbar_append_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText));
	}
	
	/**
	 * Warning
	 * gtk_toolbar_prepend_widget is deprecated and should not be used in newly-written code.
	 * Adds a widget to the beginning of the given toolbar.
	 * toolbar:
	 *  a GtkToolbar.
	 * widget:
	 *  a GtkWidget to add to the toolbar.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 */
	public void prependWidget(Widget widget, char[] tooltipText, char[] tooltipPrivateText)
	{
		// void gtk_toolbar_prepend_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text);
		gtk_toolbar_prepend_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText));
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_widget is deprecated and should not be used in newly-written code.
	 * Inserts a widget in the toolbar at the given position.
	 * toolbar:
	 *  a GtkToolbar.
	 * widget:
	 *  a GtkWidget to add to the toolbar.
	 * tooltip_text:
	 *  the element's tooltip.
	 * tooltip_private_text:
	 *  used for context-sensitive help about this toolbar element.
	 * position:
	 *  the number of widgets to insert this widget after.
	 */
	public void insertWidget(Widget widget, char[] tooltipText, char[] tooltipPrivateText, int position)
	{
		// void gtk_toolbar_insert_widget (GtkToolbar *toolbar,  GtkWidget *widget,  const char *tooltip_text,  const char *tooltip_private_text,  gint position);
		gtk_toolbar_insert_widget(gtkToolbar, (widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), position);
	}
	
	/**
	 * Alters the view of toolbar to display either icons only, text only, or both.
	 * toolbar:
	 *  a GtkToolbar.
	 * style:
	 *  the new style for toolbar.
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		// void gtk_toolbar_set_style (GtkToolbar *toolbar,  GtkToolbarStyle style);
		gtk_toolbar_set_style(gtkToolbar, style);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_insert_stock is deprecated and should not be used in newly-written code.
	 * Inserts a stock item at the specified position of the toolbar. If
	 * stock_id is not a known stock item ID, it's inserted verbatim,
	 * except that underscores used to mark mnemonics are removed.
	 * callback must be a pointer to a function taking a GtkWidget and a gpointer as
	 * arguments. Use the GTK_SIGNAL_FUNC() to cast the function to GtkSignalFunc.
	 * toolbar:
	 *  A GtkToolbar
	 * stock_id:
	 *  The id of the stock item you want to insert
	 * tooltip_text:
	 *  The text in the tooltip of the toolbar button
	 * tooltip_private_text:
	 *  The private text of the tooltip
	 * callback:
	 *  The callback called when the toolbar button is clicked.
	 * user_data:
	 *  user data passed to callback
	 * position:
	 *  The position the button shall be inserted at.
	 *  -1 means at the end.
	 * Returns:
	 *  the inserted widget
	 */
	public Widget insertStock(char[] stockId, char[] tooltipText, char[] tooltipPrivateText, GtkSignalFunc callback, void* userData, int position)
	{
		// GtkWidget* gtk_toolbar_insert_stock (GtkToolbar *toolbar,  const gchar *stock_id,  const char *tooltip_text,  const char *tooltip_private_text,  GtkSignalFunc callback,  gpointer user_data,  gint position);
		return new Widget( gtk_toolbar_insert_stock(gtkToolbar, Str.toStringz(stockId), Str.toStringz(tooltipText), Str.toStringz(tooltipPrivateText), callback, userData, position) );
	}
	
	/**
	 * Warning
	 * gtk_toolbar_set_icon_size is deprecated and should not be used in newly-written code.
	 * This function sets the size of stock icons in the toolbar. You
	 * can call it both before you add the icons and after they've been
	 * added. The size you set will override user preferences for the default
	 * icon size.
	 * This should only be used for special-purpose toolbars, normal
	 * application toolbars should respect the user preferences for the
	 * size of icons.
	 * toolbar:
	 *  A GtkToolbar
	 * icon_size:
	 *  The GtkIconSize that stock icons in the toolbar shall have.
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		// void gtk_toolbar_set_icon_size (GtkToolbar *toolbar,  GtkIconSize icon_size);
		gtk_toolbar_set_icon_size(gtkToolbar, iconSize);
	}
	
	/**
	 * Warning
	 * gtk_toolbar_remove_space is deprecated and should not be used in newly-written code.
	 * Removes a space from the specified position.
	 * toolbar:
	 *  a GtkToolbar.
	 * position:
	 *  the index of the space to remove.
	 */
	public void removeSpace(int position)
	{
		// void gtk_toolbar_remove_space (GtkToolbar *toolbar,  gint position);
		gtk_toolbar_remove_space(gtkToolbar, position);
	}
	
	/**
	 * Unsets a toolbar style set with gtk_toolbar_set_style(), so that
	 * user preferences will be used to determine the toolbar style.
	 * toolbar:
	 *  a GtkToolbar
	 * Property Details
	 * The "icon-size" property
	 *  "icon-size" GtkIconSize : Read / Write
	 * The size of the icons in a toolbar is normally determined by
	 * the toolbar-icon-size setting. When this property is set, it
	 * overrides the setting.
	 * This should only be used for special-purpose toolbars, normal
	 * application toolbars should respect the user preferences for the
	 * size of icons.
	 * Default value: GTK_ICON_SIZE_LARGE_TOOLBAR
	 * Since 2.10
	 */
	public void unsetStyle()
	{
		// void gtk_toolbar_unset_style (GtkToolbar *toolbar);
		gtk_toolbar_unset_style(gtkToolbar);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
