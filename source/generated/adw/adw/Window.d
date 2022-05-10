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


module adw.Window;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.RootIF;
private import gtk.RootT;
private import gtk.ShortcutManagerIF;
private import gtk.ShortcutManagerT;
private import gtk.Widget;
private import gtk.Window : DGtkWindow = Window;


/**
 * A freeform window.
 * 
 * <picture>
 * <source srcset="window-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="window.png" alt="window">
 * </picture>
 * 
 * The `AdwWindow` widget is a subclass of [class@Gtk.Window] which has no
 * titlebar area. It means [class@Gtk.HeaderBar] can be used as follows:
 * 
 * ```xml
 * <object class="AdwWindow">
 * <property name="content">
 * <object class="GtkBox">
 * <property name="orientation">vertical</property>
 * <child>
 * <object class="GtkHeaderBar"/>
 * </child>
 * <child>
 * <!-- ... -->
 * </child>
 * </object>
 * </property>
 * </object>
 * ```
 * 
 * Using [method@Gtk.Window.get_titlebar] and [method@Gtk.Window.set_titlebar]
 * is not supported and will result in a crash.
 *
 * Since: 1.0
 */
public class Window : DGtkWindow
{
	/** the main Gtk struct */
	protected AdwWindow* adwWindow;

	/** Get the main Gtk struct */
	public AdwWindow* getAdwWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwWindow* adwWindow, bool ownedRef = false)
	{
		this.adwWindow = adwWindow;
		super(cast(GtkWindow*)adwWindow, ownedRef);
	}

	/**
	 * You should use `setContent(Widget)` instead
	 */
	override void setChild(Widget child)
	{
		setContent(child);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return adw_window_get_type();
	}

	/**
	 * Creates a new `AdwWindow`.
	 *
	 * Returns: the newly created `AdwWindow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwWindow*) __p);
	}

	/**
	 * Gets the content widget of @self.
	 *
	 * This method should always be used instead of [method@Gtk.Window.get_child].
	 *
	 * Returns: the content widget of @self
	 *
	 * Since: 1.0
	 */
	public Widget getContent()
	{
		auto __p = adw_window_get_content(adwWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the content widget of @self.
	 *
	 * This method should always be used instead of [method@Gtk.Window.set_child].
	 *
	 * Params:
	 *     content = the content widget
	 *
	 * Since: 1.0
	 */
	public void setContent(Widget content)
	{
		adw_window_set_content(adwWindow, (content is null) ? null : content.getWidgetStruct());
	}
}
