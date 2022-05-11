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


module adw.ExpanderRow;

private import adw.PreferencesRow;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * A [class@Gtk.ListBoxRow] used to reveal widgets.
 * 
 * <picture>
 * <source srcset="expander-row-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="expander-row.png" alt="expander-row">
 * </picture>
 * 
 * The `AdwExpanderRow` widget allows the user to reveal or hide widgets below
 * it. It also allows the user to enable the expansion of the row, allowing to
 * disable all that the row contains.
 * 
 * ## AdwExpanderRow as GtkBuildable
 * 
 * The `AdwExpanderRow` implementation of the [iface@Gtk.Buildable] interface
 * supports adding a child as an action widget by specifying “action” as the
 * “type” attribute of a <child> element.
 * 
 * It also supports adding it as a prefix widget by specifying “prefix” as the
 * “type” attribute of a <child> element.
 * 
 * ## CSS nodes
 * 
 * `AdwExpanderRow` has a main CSS node with name `row` and the `.expander`
 * style class. It has the `.empty` style class when it contains no children.
 * 
 * It contains the subnodes `row.header` for its main embedded row,
 * `list.nested` for the list it can expand, and `image.expander-row-arrow` for
 * its arrow.
 *
 * Since: 1.0
 */
public class ExpanderRow : PreferencesRow
{
	/** the main Gtk struct */
	protected AdwExpanderRow* adwExpanderRow;

	/** Get the main Gtk struct */
	public AdwExpanderRow* getExpanderRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwExpanderRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwExpanderRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwExpanderRow* adwExpanderRow, bool ownedRef = false)
	{
		this.adwExpanderRow = adwExpanderRow;
		super(cast(AdwPreferencesRow*)adwExpanderRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_expander_row_get_type();
	}

	/**
	 * Creates a new `AdwExpanderRow`.
	 *
	 * Returns: the newly created `AdwExpanderRow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_expander_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwExpanderRow*) __p);
	}

	/**
	 * Adds an action widget to @self.
	 *
	 * Params:
	 *     widget = a widget
	 *
	 * Since: 1.0
	 */
	public void addAction(Widget widget)
	{
		adw_expander_row_add_action(adwExpanderRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Adds a prefix widget to @self.
	 *
	 * Params:
	 *     widget = a widget
	 *
	 * Since: 1.0
	 */
	public void addPrefix(Widget widget)
	{
		adw_expander_row_add_prefix(adwExpanderRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Adds a widget to @self.
	 *
	 * The widget will appear in the expanding list below @self.
	 *
	 * Params:
	 *     child = a widget
	 *
	 * Since: 1.0
	 */
	public void addRow(Widget child)
	{
		adw_expander_row_add_row(adwExpanderRow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets whether the expansion of @self is enabled.
	 *
	 * Returns: whether the expansion of @self is enabled.
	 *
	 * Since: 1.0
	 */
	public bool getEnableExpansion()
	{
		return adw_expander_row_get_enable_expansion(adwExpanderRow) != 0;
	}

	/**
	 * Gets whether @self is expanded.
	 *
	 * Returns: whether @self is expanded
	 *
	 * Since: 1.0
	 */
	public bool getExpanded()
	{
		return adw_expander_row_get_expanded(adwExpanderRow) != 0;
	}

	/**
	 * Gets the icon name for @self.
	 *
	 * Returns: the icon name for @self
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_expander_row_get_icon_name(adwExpanderRow));
	}

	/**
	 * Gets whether the switch enabling the expansion of @self is visible.
	 *
	 * Returns: whether the switch enabling the expansion is visible
	 *
	 * Since: 1.0
	 */
	public bool getShowEnableSwitch()
	{
		return adw_expander_row_get_show_enable_switch(adwExpanderRow) != 0;
	}

	/**
	 * Gets the subtitle for @self.
	 *
	 * Returns: the subtitle for @self
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(adw_expander_row_get_subtitle(adwExpanderRow));
	}

	/** */
	public void remove(Widget child)
	{
		adw_expander_row_remove(adwExpanderRow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether the expansion of @self is enabled.
	 *
	 * Params:
	 *     enableExpansion = whether to enable the expansion
	 *
	 * Since: 1.0
	 */
	public void setEnableExpansion(bool enableExpansion)
	{
		adw_expander_row_set_enable_expansion(adwExpanderRow, enableExpansion);
	}

	/**
	 * Sets whether @self is expanded.
	 *
	 * Params:
	 *     expanded = whether to expand the row
	 *
	 * Since: 1.0
	 */
	public void setExpanded(bool expanded)
	{
		adw_expander_row_set_expanded(adwExpanderRow, expanded);
	}

	/**
	 * Sets the icon name for @self.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_expander_row_set_icon_name(adwExpanderRow, Str.toStringz(iconName));
	}

	/**
	 * Sets whether the switch enabling the expansion of @self is visible.
	 *
	 * Params:
	 *     showEnableSwitch = whether to show the switch enabling the expansion
	 *
	 * Since: 1.0
	 */
	public void setShowEnableSwitch(bool showEnableSwitch)
	{
		adw_expander_row_set_show_enable_switch(adwExpanderRow, showEnableSwitch);
	}

	/**
	 * Sets the subtitle for @self.
	 *
	 * Params:
	 *     subtitle = the subtitle
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		adw_expander_row_set_subtitle(adwExpanderRow, Str.toStringz(subtitle));
	}
}
