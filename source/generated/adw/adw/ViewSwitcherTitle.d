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


module adw.ViewSwitcherTitle;

private import adw.ViewStack;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Widget;


/**
 * A view switcher title.
 * 
 * <picture>
 * <source srcset="view-switcher-title-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="view-switcher-title.png" alt="view-switcher-title">
 * </picture>
 * 
 * A widget letting you switch between multiple views contained by a
 * [class@ViewStack] via an [class@ViewSwitcher].
 * 
 * It is designed to be used as the title widget of a [class@HeaderBar], and
 * will display the window's title when the window is too narrow to fit the view
 * switcher e.g. on mobile phones, or if there are less than two views.
 * 
 * In order to center the title in narrow windows, the header bar should have
 * [property@HeaderBar:centering-policy] set to
 * `ADW_CENTERING_POLICY_STRICT`.
 * 
 * `AdwViewSwitcherTitle` is intended to be used together with
 * [class@ViewSwitcherBar].
 * 
 * A common use case is to bind the [property@ViewSwitcherBar:reveal] property
 * to [property@ViewSwitcherTitle:title-visible] to automatically reveal the
 * view switcher bar when the title label is displayed in place of the view
 * switcher, as follows:
 * 
 * ```xml
 * <object class="GtkWindow">
 * <child type="titlebar">
 * <object class="AdwHeaderBar">
 * <property name="centering-policy">strict</property>
 * <child type="title">
 * <object class="AdwViewSwitcherTitle" id="title">
 * <property name="stack">stack</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * <child>
 * <object class="GtkBox">
 * <property name="orientation">vertical</property>
 * <child>
 * <object class="AdwViewStack" id="stack"/>
 * </child>
 * <child>
 * <object class="AdwViewSwitcherBar">
 * <property name="stack">stack</property>
 * <binding name="reveal">
 * <lookup name="title-visible">title</lookup>
 * </binding>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * ## CSS nodes
 * 
 * `AdwViewSwitcherTitle` has a single CSS node with name `viewswitchertitle`.
 *
 * Since: 1.0
 */
public class ViewSwitcherTitle : Widget
{
	/** the main Gtk struct */
	protected AdwViewSwitcherTitle* adwViewSwitcherTitle;

	/** Get the main Gtk struct */
	public AdwViewSwitcherTitle* getViewSwitcherTitleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewSwitcherTitle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewSwitcherTitle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewSwitcherTitle* adwViewSwitcherTitle, bool ownedRef = false)
	{
		this.adwViewSwitcherTitle = adwViewSwitcherTitle;
		super(cast(GtkWidget*)adwViewSwitcherTitle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_switcher_title_get_type();
	}

	/**
	 * Creates a new `AdwViewSwitcherTitle`.
	 *
	 * Returns: the newly created `AdwViewSwitcherTitle`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_view_switcher_title_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwViewSwitcherTitle*) __p);
	}

	/**
	 * Gets the stack controlled by @self.
	 *
	 * Returns: the stack
	 *
	 * Since: 1.0
	 */
	public ViewStack getStack()
	{
		auto __p = adw_view_switcher_title_get_stack(adwViewSwitcherTitle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ViewStack)(cast(AdwViewStack*) __p);
	}

	/**
	 * Gets the subtitle of @self.
	 *
	 * Returns: the subtitle
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(adw_view_switcher_title_get_subtitle(adwViewSwitcherTitle));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_view_switcher_title_get_title(adwViewSwitcherTitle));
	}

	/**
	 * Gets whether the title of @self is currently visible.
	 *
	 * Returns: whether the title of @self is currently visible
	 *
	 * Since: 1.0
	 */
	public bool getTitleVisible()
	{
		return adw_view_switcher_title_get_title_visible(adwViewSwitcherTitle) != 0;
	}

	/**
	 * Gets whether @self's view switcher is enabled.
	 *
	 * Returns: whether the view switcher is enabled
	 *
	 * Since: 1.0
	 */
	public bool getViewSwitcherEnabled()
	{
		return adw_view_switcher_title_get_view_switcher_enabled(adwViewSwitcherTitle) != 0;
	}

	/**
	 * Sets the stack controlled by @self.
	 *
	 * Params:
	 *     stack = a stack
	 *
	 * Since: 1.0
	 */
	public void setStack(ViewStack stack)
	{
		adw_view_switcher_title_set_stack(adwViewSwitcherTitle, (stack is null) ? null : stack.getViewStackStruct());
	}

	/**
	 * Sets the subtitle of @self.
	 *
	 * Params:
	 *     subtitle = a subtitle
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		adw_view_switcher_title_set_subtitle(adwViewSwitcherTitle, Str.toStringz(subtitle));
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = a title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_view_switcher_title_set_title(adwViewSwitcherTitle, Str.toStringz(title));
	}

	/**
	 * Sets whether @self's view switcher is enabled.
	 *
	 * Params:
	 *     enabled = whether the view switcher is enabled
	 *
	 * Since: 1.0
	 */
	public void setViewSwitcherEnabled(bool enabled)
	{
		adw_view_switcher_title_set_view_switcher_enabled(adwViewSwitcherTitle, enabled);
	}
}
