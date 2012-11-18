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
 * 	- gtk.Button
 * 	- gtk.ToolItem
 * 	- gtk.Widget
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * 	- gtk.ToolShellIF
 * 	- gtk.ToolShellT
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * module aliases:
 * local aliases:
 * 	- getStyle -> getToolbarStyle
 * overrides:
 */

module gtk.Toolbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Button;
private import gtk.ToolItem;
private import gtk.Widget;
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
 * GtkSeparatorToolItem to the toolbar. If the GtkToolbar child property
 * "expand" is TRUE and the property "draw" is set to
 * FALSE, the effect is to force all following items to the end of the toolbar.
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
	public void insert(ToolItem toolItem, int pos=-1)
	{
		gtk_toolbar_insert(gtkToolbar, toolItem.getToolItemStruct(), pos);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(gboolean, Toolbar)[] onFocusHomeOrEndListeners;
	/**
	 * A keybinding signal used internally by GTK+. This signal can't
	 * be used in application code
	 * TRUE if the first item should be focused
	 * TRUE if the signal was handled, FALSE if not
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
	extern(C) static gboolean callBackFocusHomeOrEnd(GtkToolbar* toolbarStruct, gboolean focusHome, Toolbar _toolbar)
	{
		foreach ( bool delegate(gboolean, Toolbar) dlg ; _toolbar.onFocusHomeOrEndListeners )
		{
			if ( dlg(focusHome, _toolbar) )
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
	extern(C) static void callBackOrientationChanged(GtkToolbar* toolbarStruct, GtkOrientation orientation, Toolbar _toolbar)
	{
		foreach ( void delegate(GtkOrientation, Toolbar) dlg ; _toolbar.onOrientationChangedListeners )
		{
			dlg(orientation, _toolbar);
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
	extern(C) static gboolean callBackPopupContextMenu(GtkToolbar* toolbarStruct, gint x, gint y, gint button, Toolbar _toolbar)
	{
		foreach ( bool delegate(gint, gint, gint, Toolbar) dlg ; _toolbar.onPopupContextMenuListeners )
		{
			if ( dlg(x, y, button, _toolbar) )
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
	extern(C) static void callBackStyleChanged(GtkToolbar* toolbarStruct, GtkToolbarStyle style, Toolbar _toolbar)
	{
		foreach ( void delegate(GtkToolbarStyle, Toolbar) dlg ; _toolbar.onStyleChangedListeners )
		{
			dlg(style, _toolbar);
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
	 * Returns: The n'th GtkToolItem on toolbar, or NULL if there isn't an n'th item. [transfer none]
	 */
	public ToolItem getNthItem(int n)
	{
		// GtkToolItem * gtk_toolbar_get_nth_item (GtkToolbar *toolbar,  gint n);
		auto p = gtk_toolbar_get_nth_item(gtkToolbar, n);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ToolItem)(cast(GtkToolItem*) p);
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
	 * toolItem = a GtkToolItem, or NULL to turn of highlighting. [allow-none]
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
	 * Returns: the current style of toolbar
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		// GtkToolbarStyle gtk_toolbar_get_style (GtkToolbar *toolbar);
		return gtk_toolbar_get_style(gtkToolbar);
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
	 * This function sets the size of stock icons in the toolbar. You
	 * can call it both before you add the icons and after they've been
	 * added. The size you set will override user preferences for the default
	 * icon size.
	 * This should only be used for special-purpose toolbars, normal
	 * application toolbars should respect the user preferences for the
	 * size of icons.
	 * Params:
	 * iconSize = The GtkIconSize that stock icons in the
	 * toolbar shall have. [type int]
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		// void gtk_toolbar_set_icon_size (GtkToolbar *toolbar,  GtkIconSize icon_size);
		gtk_toolbar_set_icon_size(gtkToolbar, iconSize);
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
