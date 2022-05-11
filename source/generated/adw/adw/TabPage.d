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


module adw.TabPage;

private import adw.c.functions;
public  import adw.c.types;
private import gio.IconIF;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * An auxiliary class used by [class@TabView].
 */
public class TabPage : ObjectG
{
	/** the main Gtk struct */
	protected AdwTabPage* adwTabPage;

	/** Get the main Gtk struct */
	public AdwTabPage* getTabPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwTabPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwTabPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwTabPage* adwTabPage, bool ownedRef = false)
	{
		this.adwTabPage = adwTabPage;
		super(cast(GObject*)adwTabPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_tab_page_get_type();
	}

	/**
	 * Gets the child of @self.
	 *
	 * Returns: the child of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_tab_page_get_child(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the icon of @self.
	 *
	 * Returns: the icon of @self
	 *
	 * Since: 1.0
	 */
	public IconIF getIcon()
	{
		auto __p = adw_tab_page_get_icon(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Gets whether the indicator of @self is activatable.
	 *
	 * Returns: whether the indicator is activatable
	 *
	 * Since: 1.0
	 */
	public bool getIndicatorActivatable()
	{
		return adw_tab_page_get_indicator_activatable(adwTabPage) != 0;
	}

	/**
	 * Gets the indicator icon of @self.
	 *
	 * Returns: the indicator icon of @self
	 *
	 * Since: 1.0
	 */
	public IconIF getIndicatorIcon()
	{
		auto __p = adw_tab_page_get_indicator_icon(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Gets whether @self is loading.
	 *
	 * Returns: whether @self is loading
	 *
	 * Since: 1.0
	 */
	public bool getLoading()
	{
		return adw_tab_page_get_loading(adwTabPage) != 0;
	}

	/**
	 * Gets whether @self needs attention.
	 *
	 * Returns: whether @self needs attention
	 *
	 * Since: 1.0
	 */
	public bool getNeedsAttention()
	{
		return adw_tab_page_get_needs_attention(adwTabPage) != 0;
	}

	/**
	 * Gets the parent page of @self.
	 *
	 * Returns: the parent page
	 *
	 * Since: 1.0
	 */
	public TabPage getParent()
	{
		auto __p = adw_tab_page_get_parent(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Gets whether @self is pinned.
	 *
	 * Returns: whether @self is pinned
	 *
	 * Since: 1.0
	 */
	public bool getPinned()
	{
		return adw_tab_page_get_pinned(adwTabPage) != 0;
	}

	/**
	 * Gets whether @self is selected.
	 *
	 * Returns: whether @self is selected
	 *
	 * Since: 1.0
	 */
	public bool getSelected()
	{
		return adw_tab_page_get_selected(adwTabPage) != 0;
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_tab_page_get_title(adwTabPage));
	}

	/**
	 * Gets the tooltip of @self.
	 *
	 * Returns: the tooltip of @self
	 *
	 * Since: 1.0
	 */
	public string getTooltip()
	{
		return Str.toString(adw_tab_page_get_tooltip(adwTabPage));
	}

	/**
	 * Sets the icon of @self.
	 *
	 * Params:
	 *     icon = the icon of @self
	 *
	 * Since: 1.0
	 */
	public void setIcon(IconIF icon)
	{
		adw_tab_page_set_icon(adwTabPage, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets whether the indicator of @self is activatable.
	 *
	 * Params:
	 *     activatable = whether the indicator is activatable
	 *
	 * Since: 1.0
	 */
	public void setIndicatorActivatable(bool activatable)
	{
		adw_tab_page_set_indicator_activatable(adwTabPage, activatable);
	}

	/**
	 * Sets the indicator icon of @self.
	 *
	 * Params:
	 *     indicatorIcon = the indicator icon of @self
	 *
	 * Since: 1.0
	 */
	public void setIndicatorIcon(IconIF indicatorIcon)
	{
		adw_tab_page_set_indicator_icon(adwTabPage, (indicatorIcon is null) ? null : indicatorIcon.getIconStruct());
	}

	/**
	 * Sets wether @self is loading.
	 *
	 * Params:
	 *     loading = whether @self is loading
	 *
	 * Since: 1.0
	 */
	public void setLoading(bool loading)
	{
		adw_tab_page_set_loading(adwTabPage, loading);
	}

	/**
	 * Sets whether @self needs attention.
	 *
	 * Params:
	 *     needsAttention = whether @self needs attention
	 *
	 * Since: 1.0
	 */
	public void setNeedsAttention(bool needsAttention)
	{
		adw_tab_page_set_needs_attention(adwTabPage, needsAttention);
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = the title of @self
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_tab_page_set_title(adwTabPage, Str.toStringz(title));
	}

	/**
	 * Sets the tooltip of @self.
	 *
	 * Params:
	 *     tooltip = the tooltip of @self
	 *
	 * Since: 1.0
	 */
	public void setTooltip(string tooltip)
	{
		adw_tab_page_set_tooltip(adwTabPage, Str.toStringz(tooltip));
	}
}
