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
private import gobject.ObjectG;
private import gtk.Container;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkHeaderBar is similar to a horizontal #GtkBox. It allows children to
 * be placed at the start or the end. In addition, it allows a title and
 * subtitle to be displayed. The title will be centered with respect to
 * the width of the box, even if the children at either side take up
 * different amounts of space. The height of the titlebar will be
 * set to provide sufficient space for the subtitle, even if none is
 * currently set. If a subtitle is not needed, the space reservation
 * can be turned off with gtk_header_bar_set_has_subtitle().
 * 
 * GtkHeaderBar can add typical window frame controls, such as minimize,
 * maximize and close buttons, or the window icon.
 * 
 * For these reasons, GtkHeaderBar is the natural choice for use as the custom
 * titlebar widget of a #GtkWindow (see gtk_window_set_titlebar()), as it gives
 * features typical of titlebars while allowing the addition of child widgets.
 */
public class HeaderBar : Container
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
		super(cast(GtkContainer*)gtkHeaderBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_header_bar_get_type();
	}

	/**
	 * Creates a new #GtkHeaderBar widget.
	 *
	 * Returns: a new #GtkHeaderBar
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_header_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHeaderBar*) p);
	}

	/**
	 * Retrieves the custom title widget of the header. See
	 * gtk_header_bar_set_custom_title().
	 *
	 * Returns: the custom title widget
	 *     of the header, or %NULL if none has been set explicitly.
	 *
	 * Since: 3.10
	 */
	public Widget getCustomTitle()
	{
		auto p = gtk_header_bar_get_custom_title(gtkHeaderBar);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the decoration layout set with
	 * gtk_header_bar_set_decoration_layout().
	 *
	 * Returns: the decoration layout
	 *
	 * Since: 3.12
	 */
	public string getDecorationLayout()
	{
		return Str.toString(gtk_header_bar_get_decoration_layout(gtkHeaderBar));
	}

	/**
	 * Retrieves whether the header bar reserves space for
	 * a subtitle, regardless if one is currently set or not.
	 *
	 * Returns: %TRUE if the header bar reserves space
	 *     for a subtitle
	 *
	 * Since: 3.12
	 */
	public bool getHasSubtitle()
	{
		return gtk_header_bar_get_has_subtitle(gtkHeaderBar) != 0;
	}

	/**
	 * Returns whether this header bar shows the standard window
	 * decorations.
	 *
	 * Returns: %TRUE if the decorations are shown
	 *
	 * Since: 3.10
	 */
	public bool getShowCloseButton()
	{
		return gtk_header_bar_get_show_close_button(gtkHeaderBar) != 0;
	}

	/**
	 * Retrieves the subtitle of the header. See gtk_header_bar_set_subtitle().
	 *
	 * Returns: the subtitle of the header, or %NULL if none has
	 *     been set explicitly. The returned string is owned by the widget
	 *     and must not be modified or freed.
	 *
	 * Since: 3.10
	 */
	public string getSubtitle()
	{
		return Str.toString(gtk_header_bar_get_subtitle(gtkHeaderBar));
	}

	/**
	 * Retrieves the title of the header. See gtk_header_bar_set_title().
	 *
	 * Returns: the title of the header, or %NULL if none has
	 *     been set explicitly. The returned string is owned by the widget
	 *     and must not be modified or freed.
	 *
	 * Since: 3.10
	 */
	public string getTitle()
	{
		return Str.toString(gtk_header_bar_get_title(gtkHeaderBar));
	}

	/**
	 * Adds @child to @bar, packed with reference to the
	 * end of the @bar.
	 *
	 * Params:
	 *     child = the #GtkWidget to be added to @bar
	 *
	 * Since: 3.10
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
	 *     child = the #GtkWidget to be added to @bar
	 *
	 * Since: 3.10
	 */
	public void packStart(Widget child)
	{
		gtk_header_bar_pack_start(gtkHeaderBar, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets a custom title for the #GtkHeaderBar.
	 *
	 * The title should help a user identify the current view. This
	 * supersedes any title set by gtk_header_bar_set_title() or
	 * gtk_header_bar_set_subtitle(). To achieve the same style as
	 * the builtin title and subtitle, use the “title” and “subtitle”
	 * style classes.
	 *
	 * You should set the custom title to %NULL, for the header title
	 * label to be visible again.
	 *
	 * Params:
	 *     titleWidget = a custom widget to use for a title
	 *
	 * Since: 3.10
	 */
	public void setCustomTitle(Widget titleWidget)
	{
		gtk_header_bar_set_custom_title(gtkHeaderBar, (titleWidget is null) ? null : titleWidget.getWidgetStruct());
	}

	/**
	 * Sets the decoration layout for this header bar, overriding
	 * the #GtkSettings:gtk-decoration-layout setting.
	 *
	 * There can be valid reasons for overriding the setting, such
	 * as a header bar design that does not allow for buttons to take
	 * room on the right, or only offers room for a single close button.
	 * Split header bars are another example for overriding the
	 * setting.
	 *
	 * The format of the string is button names, separated by commas.
	 * A colon separates the buttons that should appear on the left
	 * from those on the right. Recognized button names are minimize,
	 * maximize, close, icon (the window icon) and menu (a menu button
	 * for the fallback app menu).
	 *
	 * For example, “menu:minimize,maximize,close” specifies a menu
	 * on the left, and minimize, maximize and close buttons on the right.
	 *
	 * Params:
	 *     layout = a decoration layout, or %NULL to
	 *         unset the layout
	 *
	 * Since: 3.12
	 */
	public void setDecorationLayout(string layout)
	{
		gtk_header_bar_set_decoration_layout(gtkHeaderBar, Str.toStringz(layout));
	}

	/**
	 * Sets whether the header bar should reserve space
	 * for a subtitle, even if none is currently set.
	 *
	 * Params:
	 *     setting = %TRUE to reserve space for a subtitle
	 *
	 * Since: 3.12
	 */
	public void setHasSubtitle(bool setting)
	{
		gtk_header_bar_set_has_subtitle(gtkHeaderBar, setting);
	}

	/**
	 * Sets whether this header bar shows the standard window decorations,
	 * including close, maximize, and minimize.
	 *
	 * Params:
	 *     setting = %TRUE to show standard window decorations
	 *
	 * Since: 3.10
	 */
	public void setShowCloseButton(bool setting)
	{
		gtk_header_bar_set_show_close_button(gtkHeaderBar, setting);
	}

	/**
	 * Sets the subtitle of the #GtkHeaderBar. The title should give a user
	 * an additional detail to help him identify the current view.
	 *
	 * Note that GtkHeaderBar by default reserves room for the subtitle,
	 * even if none is currently set. If this is not desired, set the
	 * #GtkHeaderBar:has-subtitle property to %FALSE.
	 *
	 * Params:
	 *     subtitle = a subtitle, or %NULL
	 *
	 * Since: 3.10
	 */
	public void setSubtitle(string subtitle)
	{
		gtk_header_bar_set_subtitle(gtkHeaderBar, Str.toStringz(subtitle));
	}

	/**
	 * Sets the title of the #GtkHeaderBar. The title should help a user
	 * identify the current view. A good title should not include the
	 * application name.
	 *
	 * Params:
	 *     title = a title, or %NULL
	 *
	 * Since: 3.10
	 */
	public void setTitle(string title)
	{
		gtk_header_bar_set_title(gtkHeaderBar, Str.toStringz(title));
	}
}
