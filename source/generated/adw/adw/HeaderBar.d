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


module adw.HeaderBar;

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
 * A title bar widget.
 * 
 * <picture>
 * <source srcset="header-bar-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="header-bar.png" alt="header-bar">
 * </picture>
 * 
 * `AdwHeaderBar` is similar to [class@Gtk.HeaderBar], but provides additional
 * features compared to it. Refer to `GtkHeaderBar` for details.
 * 
 * [property@HeaderBar:centering-policy] allows to enforce strict centering of
 * the title widget, this is useful for [class@ViewSwitcherTitle].
 * 
 * [property@HeaderBar:show-start-title-buttons] and
 * [property@HeaderBar:show-end-title-buttons] allow to easily create split
 * header bar layouts using [class@Leaflet], as follows:
 * 
 * ```xml
 * <object class="AdwLeaflet" id="leaflet">
 * <child>
 * <object class="GtkBox">
 * <property name="orientation">vertical</property>
 * <child>
 * <object class="AdwHeaderBar">
 * <binding name="show-end-title-buttons">
 * <lookup name="folded">leaflet</lookup>
 * </binding>
 * </object>
 * </child>
 * <!-- ... -->
 * </object>
 * </child>
 * <!-- ... -->
 * <child>
 * <object class="GtkBox">
 * <property name="orientation">vertical</property>
 * <property name="hexpand">True</property>
 * <child>
 * <object class="AdwHeaderBar">
 * <binding name="show-start-title-buttons">
 * <lookup name="folded">leaflet</lookup>
 * </binding>
 * </object>
 * </child>
 * <!-- ... -->
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * <picture>
 * <source srcset="header-bar-split-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="header-bar-split.png" alt="header-bar-split">
 * </picture>
 * 
 * ## CSS nodes
 * 
 * ```
 * headerbar
 * ╰── windowhandle
 * ╰── box
 * ├── widget
 * │   ╰── box.start
 * │       ├── windowcontrols.start
 * │       ╰── [other children]
 * ├── [Title Widget]
 * ╰── widget
 * ╰── box.end
 * ├── [other children]
 * ╰── windowcontrols.end
 * ```
 * 
 * `AdwHeaderBar`'s CSS node is called `headerbar`. It contains a `windowhandle`
 * subnode, which contains a `box` subnode, which contains two `widget` subnodes
 * at the start and end of the header bar, each of which contains a `box`
 * subnode with the `.start` and `.end` style classes respectively, as well as a
 * center node that represents the title.
 * 
 * Each of the boxes contains a `windowcontrols` subnode, see
 * [class@Gtk.WindowControls] for details, as well as other children.
 * 
 * ## Accessibility
 * 
 * `AdwHeaderBar` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
 *
 * Since: 1.0
 */
public class HeaderBar : Widget
{
	/** the main Gtk struct */
	protected AdwHeaderBar* adwHeaderBar;

	/** Get the main Gtk struct */
	public AdwHeaderBar* getHeaderBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwHeaderBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwHeaderBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwHeaderBar* adwHeaderBar, bool ownedRef = false)
	{
		this.adwHeaderBar = adwHeaderBar;
		super(cast(GtkWidget*)adwHeaderBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_header_bar_get_type();
	}

	/**
	 * Creates a new `AdwHeaderBar`.
	 *
	 * Returns: the newly created `AdwHeaderBar`.
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_header_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwHeaderBar*) __p);
	}

	/**
	 * Gets the policy for aligning the center widget.
	 *
	 * Returns: the centering policy
	 *
	 * Since: 1.0
	 */
	public AdwCenteringPolicy getCenteringPolicy()
	{
		return adw_header_bar_get_centering_policy(adwHeaderBar);
	}

	/**
	 * Gets the decoration layout for @self.
	 *
	 * Returns: the decoration layout
	 *
	 * Since: 1.0
	 */
	public string getDecorationLayout()
	{
		return Str.toString(adw_header_bar_get_decoration_layout(adwHeaderBar));
	}

	/**
	 * Gets whether to show title buttons at the end of @self.
	 *
	 * Returns: `TRUE` if title buttons at the end are shown
	 *
	 * Since: 1.0
	 */
	public bool getShowEndTitleButtons()
	{
		return adw_header_bar_get_show_end_title_buttons(adwHeaderBar) != 0;
	}

	/**
	 * Gets whether to show title buttons at the start of @self.
	 *
	 * Returns: `TRUE` if title buttons at the start are shown
	 *
	 * Since: 1.0
	 */
	public bool getShowStartTitleButtons()
	{
		return adw_header_bar_get_show_start_title_buttons(adwHeaderBar) != 0;
	}

	/**
	 * Gets the title widget widget of @self.
	 *
	 * Returns: the title widget
	 *
	 * Since: 1.0
	 */
	public Widget getTitleWidget()
	{
		auto __p = adw_header_bar_get_title_widget(adwHeaderBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Adds @child to @self, packed with reference to the end of @self.
	 *
	 * Params:
	 *     child = the widget to be added to @self
	 *
	 * Since: 1.0
	 */
	public void packEnd(Widget child)
	{
		adw_header_bar_pack_end(adwHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Adds @child to @self, packed with reference to the start of the @self.
	 *
	 * Params:
	 *     child = the widget to be added to @self
	 *
	 * Since: 1.0
	 */
	public void packStart(Widget child)
	{
		adw_header_bar_pack_start(adwHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes a child from @self.
	 *
	 * The child must have been added with [method@HeaderBar.pack_start],
	 * [method@HeaderBar.pack_end] or [property@HeaderBar:title-widget].
	 *
	 * Params:
	 *     child = the child to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_header_bar_remove(adwHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the policy for aligning the center widget.
	 *
	 * Params:
	 *     centeringPolicy = the centering policy
	 *
	 * Since: 1.0
	 */
	public void setCenteringPolicy(AdwCenteringPolicy centeringPolicy)
	{
		adw_header_bar_set_centering_policy(adwHeaderBar, centeringPolicy);
	}

	/**
	 * Sets the decoration layout for @self.
	 *
	 * Params:
	 *     layout = a decoration layout
	 *
	 * Since: 1.0
	 */
	public void setDecorationLayout(string layout)
	{
		adw_header_bar_set_decoration_layout(adwHeaderBar, Str.toStringz(layout));
	}

	/**
	 * Sets whether to show title buttons at the end of @self.
	 *
	 * Params:
	 *     setting = `TRUE` to show standard title buttons
	 *
	 * Since: 1.0
	 */
	public void setShowEndTitleButtons(bool setting)
	{
		adw_header_bar_set_show_end_title_buttons(adwHeaderBar, setting);
	}

	/**
	 * Sets whether to show title buttons at the start of @self.
	 *
	 * Params:
	 *     setting = `TRUE` to show standard title buttons
	 *
	 * Since: 1.0
	 */
	public void setShowStartTitleButtons(bool setting)
	{
		adw_header_bar_set_show_start_title_buttons(adwHeaderBar, setting);
	}

	/**
	 * Sets the title widget for @self.
	 *
	 * Params:
	 *     titleWidget = a widget to use for a title
	 *
	 * Since: 1.0
	 */
	public void setTitleWidget(Widget titleWidget)
	{
		adw_header_bar_set_title_widget(adwHeaderBar, (titleWidget is null) ? null : titleWidget.getWidgetStruct());
	}
}
