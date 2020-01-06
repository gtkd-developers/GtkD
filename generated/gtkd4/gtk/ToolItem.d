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


module gtk.ToolItem;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Bin;
private import gtk.SizeGroup;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * #GtkToolItems are widgets that can appear on a toolbar. To
 * create a toolbar item that contain something else than a button, use
 * gtk_tool_item_new(). Use gtk_container_add() to add a child
 * widget to the tool item.
 * 
 * For toolbar items that contain buttons, see the #GtkToolButton,
 * #GtkToggleToolButton and #GtkRadioToolButton classes.
 * 
 * See the #GtkToolbar class for a description of the toolbar widget, and
 * #GtkToolShell for a description of the tool shell interface.
 */
public class ToolItem : Bin
{
	/** the main Gtk struct */
	protected GtkToolItem* gtkToolItem;

	/** Get the main Gtk struct */
	public GtkToolItem* getToolItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToolItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToolItem* gtkToolItem, bool ownedRef = false)
	{
		this.gtkToolItem = gtkToolItem;
		super(cast(GtkBin*)gtkToolItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_tool_item_get_type();
	}

	/**
	 * Creates a new #GtkToolItem
	 *
	 * Returns: the new #GtkToolItem
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_tool_item_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolItem*) __p);
	}

	/**
	 * Returns the ellipsize mode used for @tool_item. Custom subclasses of
	 * #GtkToolItem should call this function to find out how text should
	 * be ellipsized.
	 *
	 * Returns: a #PangoEllipsizeMode indicating how text in @tool_item
	 *     should be ellipsized.
	 */
	public PangoEllipsizeMode getEllipsizeMode()
	{
		return gtk_tool_item_get_ellipsize_mode(gtkToolItem);
	}

	/**
	 * Returns whether @tool_item is allocated extra space.
	 * See gtk_tool_item_set_expand().
	 *
	 * Returns: %TRUE if @tool_item is allocated extra space.
	 */
	public bool getExpand()
	{
		return gtk_tool_item_get_expand(gtkToolItem) != 0;
	}

	/**
	 * Returns whether @tool_item is the same size as other homogeneous
	 * items. See gtk_tool_item_set_homogeneous().
	 *
	 * Returns: %TRUE if the item is the same size as other homogeneous
	 *     items.
	 */
	public bool getHomogeneous()
	{
		return gtk_tool_item_get_homogeneous(gtkToolItem) != 0;
	}

	/**
	 * Returns whether @tool_item is considered important. See
	 * gtk_tool_item_set_is_important()
	 *
	 * Returns: %TRUE if @tool_item is considered important.
	 */
	public bool getIsImportant()
	{
		return gtk_tool_item_get_is_important(gtkToolItem) != 0;
	}

	/**
	 * Returns the orientation used for @tool_item. Custom subclasses of
	 * #GtkToolItem should call this function to find out what size icons
	 * they should use.
	 *
	 * Returns: a #GtkOrientation indicating the orientation
	 *     used for @tool_item
	 */
	public GtkOrientation getOrientation()
	{
		return gtk_tool_item_get_orientation(gtkToolItem);
	}

	/**
	 * Gets the label that is used for @tool_item in the overflow menu.
	 *
	 * Returns: the overflow menu label for @tool_item
	 */
	public string getOverflowText()
	{
		return Str.toString(gtk_tool_item_get_overflow_text(gtkToolItem));
	}

	/**
	 * Returns the text alignment used for @tool_item. Custom subclasses of
	 * #GtkToolItem should call this function to find out how text should
	 * be aligned.
	 *
	 * Returns: a #gfloat indicating the horizontal text alignment
	 *     used for @tool_item
	 */
	public float getTextAlignment()
	{
		return gtk_tool_item_get_text_alignment(gtkToolItem);
	}

	/**
	 * Returns the text orientation used for @tool_item. Custom subclasses of
	 * #GtkToolItem should call this function to find out how text should
	 * be orientated.
	 *
	 * Returns: a #GtkOrientation indicating the text orientation
	 *     used for @tool_item
	 */
	public GtkOrientation getTextOrientation()
	{
		return gtk_tool_item_get_text_orientation(gtkToolItem);
	}

	/**
	 * Returns the size group used for labels in @tool_item.
	 * Custom subclasses of #GtkToolItem should call this function
	 * and use the size group for labels.
	 *
	 * Returns: a #GtkSizeGroup
	 */
	public SizeGroup getTextSizeGroup()
	{
		auto __p = gtk_tool_item_get_text_size_group(gtkToolItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SizeGroup)(cast(GtkSizeGroup*) __p);
	}

	/**
	 * Returns the toolbar style used for @tool_item. Custom subclasses of
	 * #GtkToolItem should call this function in the handler of the
	 * GtkToolItem::toolbar_reconfigured signal to find out in what style
	 * the toolbar is displayed and change themselves accordingly
	 *
	 * Possibilities are:
	 * - %GTK_TOOLBAR_BOTH, meaning the tool item should show
	 * both an icon and a label, stacked vertically
	 * - %GTK_TOOLBAR_ICONS, meaning the toolbar shows only icons
	 * - %GTK_TOOLBAR_TEXT, meaning the tool item should only show text
	 * - %GTK_TOOLBAR_BOTH_HORIZ, meaning the tool item should show
	 * both an icon and a label, arranged horizontally
	 *
	 * Returns: A #GtkToolbarStyle indicating the toolbar style used
	 *     for @tool_item.
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		return gtk_tool_item_get_toolbar_style(gtkToolItem);
	}

	/**
	 * Returns whether the @tool_item is visible on toolbars that are
	 * docked horizontally.
	 *
	 * Returns: %TRUE if @tool_item is visible on toolbars that are
	 *     docked horizontally.
	 */
	public bool getVisibleHorizontal()
	{
		return gtk_tool_item_get_visible_horizontal(gtkToolItem) != 0;
	}

	/**
	 * Returns whether @tool_item is visible when the toolbar is docked vertically.
	 * See gtk_tool_item_set_visible_vertical().
	 *
	 * Returns: Whether @tool_item is visible when the toolbar is docked vertically
	 */
	public bool getVisibleVertical()
	{
		return gtk_tool_item_get_visible_vertical(gtkToolItem) != 0;
	}

	/**
	 * Calling this function signals to the toolbar that the
	 * overflow menu item for @tool_item has changed. If the
	 * overflow menu is visible when this function it called,
	 * the menu will be rebuilt.
	 *
	 * The function must be called when the tool item changes what it
	 * will do in response to the #GtkToolItem::create-menu-proxy signal.
	 */
	public void rebuildMenu()
	{
		gtk_tool_item_rebuild_menu(gtkToolItem);
	}

	/**
	 * Sets whether @tool_item is allocated extra space when there
	 * is more room on the toolbar then needed for the items. The
	 * effect is that the item gets bigger when the toolbar gets bigger
	 * and smaller when the toolbar gets smaller.
	 *
	 * Params:
	 *     expand = Whether @tool_item is allocated extra space
	 */
	public void setExpand(bool expand)
	{
		gtk_tool_item_set_expand(gtkToolItem, expand);
	}

	/**
	 * Sets whether @tool_item is to be allocated the same size as other
	 * homogeneous items. The effect is that all homogeneous items will have
	 * the same width as the widest of the items.
	 *
	 * Params:
	 *     homogeneous = whether @tool_item is the same size as other homogeneous items
	 */
	public void setHomogeneous(bool homogeneous)
	{
		gtk_tool_item_set_homogeneous(gtkToolItem, homogeneous);
	}

	/**
	 * Sets whether @tool_item should be considered important. The #GtkToolButton
	 * class uses this property to determine whether to show or hide its label
	 * when the toolbar style is %GTK_TOOLBAR_BOTH_HORIZ. The result is that
	 * only tool buttons with the “is_important” property set have labels, an
	 * effect known as “priority text”
	 *
	 * Params:
	 *     isImportant = whether the tool item should be considered important
	 */
	public void setIsImportant(bool isImportant)
	{
		gtk_tool_item_set_is_important(gtkToolItem, isImportant);
	}

	/**
	 * Sets the label to use for @tool_item in the overflow menu.
	 *
	 * Params:
	 *     overflowText = Label to use in the overflow menu
	 */
	public void setOverflowText(string overflowText)
	{
		gtk_tool_item_set_overflow_text(gtkToolItem, Str.toStringz(overflowText));
	}

	/**
	 * Sets the markup text to be displayed as tooltip on the item.
	 * See gtk_widget_set_tooltip_markup().
	 *
	 * Params:
	 *     markup = markup text to be used as tooltip for @tool_item
	 */
	public override void setTooltipMarkup(string markup)
	{
		gtk_tool_item_set_tooltip_markup(gtkToolItem, Str.toStringz(markup));
	}

	/**
	 * Sets the text to be displayed as tooltip on the item.
	 * See gtk_widget_set_tooltip_text().
	 *
	 * Params:
	 *     text = text to be used as tooltip for @tool_item
	 */
	public override void setTooltipText(string text)
	{
		gtk_tool_item_set_tooltip_text(gtkToolItem, Str.toStringz(text));
	}

	/**
	 * Sets whether @tool_item is visible when the toolbar is docked horizontally.
	 *
	 * Params:
	 *     visibleHorizontal = Whether @tool_item is visible when in horizontal mode
	 */
	public void setVisibleHorizontal(bool visibleHorizontal)
	{
		gtk_tool_item_set_visible_horizontal(gtkToolItem, visibleHorizontal);
	}

	/**
	 * Sets whether @tool_item is visible when the toolbar is docked
	 * vertically. Some tool items, such as text entries, are too wide to be
	 * useful on a vertically docked toolbar. If @visible_vertical is %FALSE
	 * @tool_item will not appear on toolbars that are docked vertically.
	 *
	 * Params:
	 *     visibleVertical = whether @tool_item is visible when the toolbar
	 *         is in vertical mode
	 */
	public void setVisibleVertical(bool visibleVertical)
	{
		gtk_tool_item_set_visible_vertical(gtkToolItem, visibleVertical);
	}

	/**
	 * Emits the signal #GtkToolItem::toolbar_reconfigured on @tool_item.
	 * #GtkToolbar and other #GtkToolShell implementations use this function
	 * to notify children, when some aspect of their configuration changes.
	 */
	public void toolbarReconfigured()
	{
		gtk_tool_item_toolbar_reconfigured(gtkToolItem);
	}

	/**
	 * This signal is emitted when some property of the toolbar that the
	 * item is a child of changes. For custom subclasses of #GtkToolItem,
	 * the default handler of this signal use the functions
	 * - gtk_tool_shell_get_orientation()
	 * - gtk_tool_shell_get_style()
	 * - gtk_tool_shell_get_icon_size()
	 * to find out what the toolbar should look like and change
	 * themselves accordingly.
	 */
	gulong addOnToolbarReconfigured(void delegate(ToolItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toolbar-reconfigured", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
