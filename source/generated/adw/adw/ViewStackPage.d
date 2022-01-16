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


module adw.ViewStackPage;

private import adw.c.functions;
public  import adw.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * An auxiliary class used by [class@ViewStack].
 *
 * Since: 1.0
 */
public class ViewStackPage : ObjectG
{
	/** the main Gtk struct */
	protected AdwViewStackPage* adwViewStackPage;

	/** Get the main Gtk struct */
	public AdwViewStackPage* getViewStackPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewStackPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewStackPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewStackPage* adwViewStackPage, bool ownedRef = false)
	{
		this.adwViewStackPage = adwViewStackPage;
		super(cast(GObject*)adwViewStackPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_stack_page_get_type();
	}

	/**
	 * Gets the badge number for this page.
	 *
	 * Returns: the badge number for this page
	 *
	 * Since: 1.0
	 */
	public uint getBadgeNumber()
	{
		return adw_view_stack_page_get_badge_number(adwViewStackPage);
	}

	/**
	 * Gets the stack child to which @self belongs.
	 *
	 * Returns: the child to which @self belongs
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_view_stack_page_get_child(adwViewStackPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the icon name of the page.
	 *
	 * Returns: the icon name of the page
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_view_stack_page_get_icon_name(adwViewStackPage));
	}

	/**
	 * Gets the name of the page.
	 *
	 * Returns: the name of the page
	 *
	 * Since: 1.0
	 */
	public string getName()
	{
		return Str.toString(adw_view_stack_page_get_name(adwViewStackPage));
	}

	/**
	 * Gets whether the page is marked as “needs attention”.
	 *
	 * Returns: whether the page needs attention
	 *
	 * Since: 1.0
	 */
	public bool getNeedsAttention()
	{
		return adw_view_stack_page_get_needs_attention(adwViewStackPage) != 0;
	}

	/**
	 * Gets the page title.
	 *
	 * Returns: the page title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_view_stack_page_get_title(adwViewStackPage));
	}

	/**
	 * Gets whether underlines in the page title indicate mnemonics.
	 *
	 * Returns: whether underlines in the page title indicate mnemonics
	 *
	 * Since: 1.0
	 */
	public bool getUseUnderline()
	{
		return adw_view_stack_page_get_use_underline(adwViewStackPage) != 0;
	}

	/**
	 * Gets whether @self is visible in its `AdwViewStack`.
	 *
	 * This is independent from the [property@Gtk.Widget:visible]
	 * property of its widget.
	 *
	 * Returns: whether @self is visible
	 *
	 * Since: 1.0
	 */
	public bool getVisible()
	{
		return adw_view_stack_page_get_visible(adwViewStackPage) != 0;
	}

	/**
	 * Sets the badge number for this page.
	 *
	 * Params:
	 *     badgeNumber = the new value to set
	 *
	 * Since: 1.0
	 */
	public void setBadgeNumber(uint badgeNumber)
	{
		adw_view_stack_page_set_badge_number(adwViewStackPage, badgeNumber);
	}

	/**
	 * Sets the icon name of the page.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_view_stack_page_set_icon_name(adwViewStackPage, Str.toStringz(iconName));
	}

	/**
	 * Sets the name of the page.
	 *
	 * Params:
	 *     name = the page name
	 *
	 * Since: 1.0
	 */
	public void setName(string name)
	{
		adw_view_stack_page_set_name(adwViewStackPage, Str.toStringz(name));
	}

	/**
	 * Sets whether the page is marked as “needs attention”.
	 *
	 * Params:
	 *     needsAttention = the new value to set
	 *
	 * Since: 1.0
	 */
	public void setNeedsAttention(bool needsAttention)
	{
		adw_view_stack_page_set_needs_attention(adwViewStackPage, needsAttention);
	}

	/**
	 * Sets the page title.
	 *
	 * Params:
	 *     title = the page title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_view_stack_page_set_title(adwViewStackPage, Str.toStringz(title));
	}

	/**
	 * Sets whether underlines in the page title indicate mnemonics.
	 *
	 * Params:
	 *     useUnderline = the new value to set
	 *
	 * Since: 1.0
	 */
	public void setUseUnderline(bool useUnderline)
	{
		adw_view_stack_page_set_use_underline(adwViewStackPage, useUnderline);
	}

	/**
	 * Sets whether @page is visible in its `AdwViewStack`.
	 *
	 * Params:
	 *     visible = whether @self is visible
	 *
	 * Since: 1.0
	 */
	public void setVisible(bool visible)
	{
		adw_view_stack_page_set_visible(adwViewStackPage, visible);
	}
}
