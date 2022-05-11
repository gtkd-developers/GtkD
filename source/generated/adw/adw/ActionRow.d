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


module adw.ActionRow;

private import adw.PreferencesRow;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import std.algorithm;


/**
 * A [class@Gtk.ListBoxRow] used to present actions.
 * 
 * <picture>
 * <source srcset="action-row-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="action-row.png" alt="action-row">
 * </picture>
 * 
 * The `AdwActionRow` widget can have a title, a subtitle and an icon. The row
 * can receive additional widgets at its end, or prefix widgets at its start.
 * 
 * It is convenient to present a preference and its related actions.
 * 
 * `AdwActionRow` is unactivatable by default, giving it an activatable widget
 * will automatically make it activatable, but unsetting it won't change the
 * row's activatability.
 * 
 * ## AdwActionRow as GtkBuildable
 * 
 * The `AdwActionRow` implementation of the [iface@Gtk.Buildable] interface
 * supports adding a child at its end by specifying “suffix” or omitting the
 * “type” attribute of a <child> element.
 * 
 * It also supports adding a child as a prefix widget by specifying “prefix” as
 * the “type” attribute of a <child> element.
 * 
 * ## CSS nodes
 * 
 * `AdwActionRow` has a main CSS node with name `row`.
 * 
 * It contains the subnode `box.header` for its main horizontal box, and
 * `box.title` for the vertical box containing the title and subtitle labels.
 * 
 * It contains subnodes `label.title` and `label.subtitle` representing
 * respectively the title label and subtitle label.
 *
 * Since: 1.0
 */
public class ActionRow : PreferencesRow
{
	/** the main Gtk struct */
	protected AdwActionRow* adwActionRow;

	/** Get the main Gtk struct */
	public AdwActionRow* getActionRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwActionRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwActionRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwActionRow* adwActionRow, bool ownedRef = false)
	{
		this.adwActionRow = adwActionRow;
		super(cast(AdwPreferencesRow*)adwActionRow, ownedRef);
	}

	/**
	 * Activates @self.
	 *
	 * Since: 1.0
	 */
	public override bool activate()
	{
		adw_action_row_activate(adwActionRow);
		return true;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return adw_action_row_get_type();
	}

	/**
	 * Creates a new `AdwActionRow`.
	 *
	 * Returns: the newly created `AdwActionRow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_action_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwActionRow*) __p);
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
		adw_action_row_add_prefix(adwActionRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Adds a suffix widget to @self.
	 *
	 * Params:
	 *     widget = a widget
	 *
	 * Since: 1.0
	 */
	public void addSuffix(Widget widget)
	{
		adw_action_row_add_suffix(adwActionRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets the widget activated when @self is activated.
	 *
	 * Returns: the activatable widget for @self
	 *
	 * Since: 1.0
	 */
	public Widget getActivatableWidget()
	{
		auto __p = adw_action_row_get_activatable_widget(adwActionRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
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
		return Str.toString(adw_action_row_get_icon_name(adwActionRow));
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
		return Str.toString(adw_action_row_get_subtitle(adwActionRow));
	}

	/**
	 * Gets the number of lines at the end of which the subtitle label will be
	 * ellipsized.
	 *
	 * If the value is 0, the number of lines won't be limited.
	 *
	 * Returns: the number of lines at the end of which the subtitle label will be
	 *     ellipsized
	 *
	 * Since: 1.0
	 */
	public int getSubtitleLines()
	{
		return adw_action_row_get_subtitle_lines(adwActionRow);
	}

	/**
	 * Gets the number of lines at the end of which the title label will be
	 * ellipsized.
	 *
	 * If the value is 0, the number of lines won't be limited.
	 *
	 * Returns: the number of lines at the end of which the title label will be
	 *     ellipsized
	 *
	 * Since: 1.0
	 */
	public int getTitleLines()
	{
		return adw_action_row_get_title_lines(adwActionRow);
	}

	/**
	 * Removes a child from @self.
	 *
	 * Params:
	 *     widget = the child to be removed
	 *
	 * Since: 1.0
	 */
	public void remove(Widget widget)
	{
		adw_action_row_remove(adwActionRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets the widget to activate when @self is activated.
	 *
	 * Params:
	 *     widget = the target widget
	 *
	 * Since: 1.0
	 */
	public void setActivatableWidget(Widget widget)
	{
		adw_action_row_set_activatable_widget(adwActionRow, (widget is null) ? null : widget.getWidgetStruct());
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
		adw_action_row_set_icon_name(adwActionRow, Str.toStringz(iconName));
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
		adw_action_row_set_subtitle(adwActionRow, Str.toStringz(subtitle));
	}

	/**
	 * Sets the number of lines at the end of which the subtitle label will be
	 * ellipsized.
	 *
	 * If the value is 0, the number of lines won't be limited.
	 *
	 * Params:
	 *     subtitleLines = the number of lines at the end of which the subtitle label will be ellipsized
	 *
	 * Since: 1.0
	 */
	public void setSubtitleLines(int subtitleLines)
	{
		adw_action_row_set_subtitle_lines(adwActionRow, subtitleLines);
	}

	/**
	 * Sets the number of lines at the end of which the title label will be
	 * ellipsized.
	 *
	 * If the value is 0, the number of lines won't be limited.
	 *
	 * Params:
	 *     titleLines = the number of lines at the end of which the title label will be ellipsized
	 *
	 * Since: 1.0
	 */
	public void setTitleLines(int titleLines)
	{
		adw_action_row_set_title_lines(adwActionRow, titleLines);
	}

	/**
	 * This signal is emitted after the row has been activated.
	 *
	 * Since: 1.0
	 */
	gulong addOnActivated(void delegate(ActionRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
