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


module gtk.HeaderBar;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkHeaderBar` is a widget for creating custom title bars for windows.
 * 
 * ![An example GtkHeaderBar](headerbar.png)
 * 
 * `GtkHeaderBar` is similar to a horizontal `GtkCenterBox`. It allows
 * children to be placed at the start or the end. In addition, it allows
 * the window title to be displayed. The title will be centered with respect
 * to the width of the box, even if the children at either side take up
 * different amounts of space.
 * 
 * `GtkHeaderBar` can add typical window frame controls, such as minimize,
 * maximize and close buttons, or the window icon.
 * 
 * For these reasons, `GtkHeaderBar` is the natural choice for use as the
 * custom titlebar widget of a `GtkWindow` (see [method@Gtk.Window.set_titlebar]),
 * as it gives features typical of titlebars while allowing the addition of
 * child widgets.
 * 
 * ## GtkHeaderBar as GtkBuildable
 * 
 * The `GtkHeaderBar` implementation of the `GtkBuildable` interface supports
 * adding children at the start or end sides by specifying “start” or “end” as
 * the “type” attribute of a <child> element, or setting the title widget by
 * specifying “title” value.
 * 
 * By default the `GtkHeaderBar` uses a `GtkLabel` displaying the title of the
 * window it is contained in as the title widget, equivalent to the following
 * UI definition:
 * 
 * ```xml
 * <object class="GtkHeaderBar">
 * <property name="title-widget">
 * <object class="GtkLabel">
 * <property name="label" translatable="yes">Label</property>
 * <property name="single-line-mode">True</property>
 * <property name="ellipsize">end</property>
 * <property name="width-chars">5</property>
 * <style>
 * <class name="title"/>
 * </style>
 * </object>
 * </property>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * headerbar
 * ╰── windowhandle
 * ╰── box
 * ├── box.start
 * │   ├── windowcontrols.start
 * │   ╰── [other children]
 * ├── [Title Widget]
 * ╰── box.end
 * ├── [other children]
 * ╰── windowcontrols.end
 * ```
 * 
 * A `GtkHeaderBar`'s CSS node is called `headerbar`. It contains a `windowhandle`
 * subnode, which contains a `box` subnode, which contains two `box` subnodes at
 * the start and end of the header bar, as well as a center node that represents
 * the title.
 * 
 * Each of the boxes contains a `windowcontrols` subnode, see
 * [class@Gtk.WindowControls] for details, as well as other children.
 * 
 * # Accessibility
 * 
 * `GtkHeaderBar` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class HeaderBar : Widget
{
	/** the main Gtk struct */
	protected GtkHeaderBar* gtkHeaderBar;

	/** Get the main Gtk struct */
	public GtkHeaderBar* getHeaderBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHeaderBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHeaderBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHeaderBar* gtkHeaderBar, bool ownedRef = false)
	{
		this.gtkHeaderBar = gtkHeaderBar;
		super(cast(GtkWidget*)gtkHeaderBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_header_bar_get_type();
	}

	/**
	 * Creates a new `GtkHeaderBar` widget.
	 *
	 * Returns: a new `GtkHeaderBar`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_header_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHeaderBar*) __p);
	}

	/**
	 * Gets the decoration layout of the `GtkHeaderBar`.
	 *
	 * Returns: the decoration layout
	 */
	public string getDecorationLayout()
	{
		return Str.toString(gtk_header_bar_get_decoration_layout(gtkHeaderBar));
	}

	/**
	 * Returns whether this header bar shows the standard window
	 * title buttons.
	 *
	 * Returns: %TRUE if title buttons are shown
	 */
	public bool getShowTitleButtons()
	{
		return gtk_header_bar_get_show_title_buttons(gtkHeaderBar) != 0;
	}

	/**
	 * Retrieves the title widget of the header.
	 *
	 * See [method@Gtk.HeaderBar.set_title_widget].
	 *
	 * Returns: the title widget of the header
	 */
	public Widget getTitleWidget()
	{
		auto __p = gtk_header_bar_get_title_widget(gtkHeaderBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Adds @child to @bar, packed with reference to the
	 * end of the @bar.
	 *
	 * Params:
	 *     child = the `GtkWidget` to be added to @bar
	 */
	public void packEnd(Widget child)
	{
		gtk_header_bar_pack_end(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Adds @child to @bar, packed with reference to the
	 * start of the @bar.
	 *
	 * Params:
	 *     child = the `GtkWidget` to be added to @bar
	 */
	public void packStart(Widget child)
	{
		gtk_header_bar_pack_start(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes a child from the `GtkHeaderBar`.
	 *
	 * The child must have been added with
	 * [method@Gtk.HeaderBar.pack_start],
	 * [method@Gtk.HeaderBar.pack_end] or
	 * [method@Gtk.HeaderBar.set_title_widget].
	 *
	 * Params:
	 *     child = the child to remove
	 */
	public void remove(Widget child)
	{
		gtk_header_bar_remove(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the decoration layout for this header bar.
	 *
	 * This property overrides the
	 * [property@Gtk.Settings:gtk-decoration-layout] setting.
	 *
	 * There can be valid reasons for overriding the setting, such
	 * as a header bar design that does not allow for buttons to take
	 * room on the right, or only offers room for a single close button.
	 * Split header bars are another example for overriding the setting.
	 *
	 * The format of the string is button names, separated by commas.
	 * A colon separates the buttons that should appear on the left
	 * from those on the right. Recognized button names are minimize,
	 * maximize, close and icon (the window icon).
	 *
	 * For example, “icon:minimize,maximize,close” specifies a icon
	 * on the left, and minimize, maximize and close buttons on the right.
	 *
	 * Params:
	 *     layout = a decoration layout, or %NULL to unset the layout
	 */
	public void setDecorationLayout(string layout)
	{
		gtk_header_bar_set_decoration_layout(gtkHeaderBar, Str.toStringz(layout));
	}

	/**
	 * Sets whether this header bar shows the standard window
	 * title buttons.
	 *
	 * Params:
	 *     setting = %TRUE to show standard title buttons
	 */
	public void setShowTitleButtons(bool setting)
	{
		gtk_header_bar_set_show_title_buttons(gtkHeaderBar, setting);
	}

	/**
	 * Sets the title for the `GtkHeaderBar`.
	 *
	 * When set to %NULL, the headerbar will display the title of
	 * the window it is contained in.
	 *
	 * The title should help a user identify the current view.
	 * To achieve the same style as the builtin title, use the
	 * “title” style class.
	 *
	 * You should set the title widget to %NULL, for the window
	 * title label to be visible again.
	 *
	 * Params:
	 *     titleWidget = a widget to use for a title
	 */
	public void setTitleWidget(Widget titleWidget)
	{
		gtk_header_bar_set_title_widget(gtkHeaderBar, (titleWidget is null) ? null : titleWidget.getWidgetStruct());
	}
}
