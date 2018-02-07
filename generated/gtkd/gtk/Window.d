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


module gtk.Window;

private import gdk.Screen;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.Application;
private import gtk.Bin;
private import gtk.Widget;
private import gtk.WindowGroup;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkWindow is a toplevel window which can contain other widgets.
 * Windows normally have decorations that are under the control
 * of the windowing system and allow the user to manipulate the window
 * (resize it, move it, close it,...).
 * 
 * # GtkWindow as GtkBuildable
 * 
 * The GtkWindow implementation of the GtkBuildable interface supports a
 * custom <accel-groups> element, which supports any number of <group>
 * elements representing the #GtkAccelGroup objects you want to add to
 * your window (synonymous with gtk_window_add_accel_group().
 * 
 * It also supports the <initial-focus> element, whose name property names
 * the widget to receive the focus when the window is mapped.
 * 
 * An example of a UI definition fragment with accel groups:
 * |[
 * <object class="GtkWindow">
 * <accel-groups>
 * <group name="accelgroup1"/>
 * </accel-groups>
 * <initial-focus name="thunderclap"/>
 * </object>
 * 
 * ...
 * 
 * <object class="GtkAccelGroup" id="accelgroup1"/>
 * ]|
 * 
 * The GtkWindow implementation of the GtkBuildable interface supports
 * setting a child as the titlebar by specifying “titlebar” as the “type”
 * attribute of a <child> element.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * window.background
 * ├── decoration
 * ├── <titlebar child>.titlebar [.default-decoration]
 * ╰── <child>
 * ]|
 * 
 * GtkWindow has a main CSS node with name window and style class .background,
 * and a subnode with name decoration.
 * 
 * Style classes that are typically used with the main CSS node are .csd (when
 * client-side decorations are in use), .solid-csd (for client-side decorations
 * without invisible borders), .ssd (used by mutter when rendering server-side
 * decorations). GtkWindow also represents window states with the following
 * style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
 * types of window often add their own discriminating style classes, such as
 * .popup or .tooltip.
 * 
 * GtkWindow adds the .titlebar and .default-decoration style classes to the
 * widget that is added as a titlebar child.
 */
public class Window : Bin
{
	/** the main Gtk struct */
	protected GtkWindow* gtkWindow;

	/** Get the main Gtk struct */
	public GtkWindow* getWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWindow* gtkWindow, bool ownedRef = false)
	{
		this.gtkWindow = gtkWindow;
		super(cast(GtkBin*)gtkWindow, ownedRef);
	}

	/**
	 * Creates a top level window with a title
	 * Params:
	 * 		title = The Window title
	 */
	public this(string title)
	{
		this(GtkWindowType.TOPLEVEL);
		setTitle(title);
	}

	/**
	 * Move the window to an absolute position.
	 * just calls move(int, int).
	 * convinience because GdkEvent structs return the position coords as doubles
	 */
	public void move(double x, double y)
	{
		move(cast(int)x, cast(int)y);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_window_get_type();
	}

	/**
	 * Creates a new #GtkWindow, which is a toplevel window that can
	 * contain other widgets. Nearly always, the type of the window should
	 * be #GTK_WINDOW_TOPLEVEL. If you’re implementing something like a
	 * popup menu from scratch (which is a bad idea, just use #GtkMenu),
	 * you might use #GTK_WINDOW_POPUP. #GTK_WINDOW_POPUP is not for
	 * dialogs, though in some other toolkits dialogs are called “popups”.
	 * In GTK+, #GTK_WINDOW_POPUP means a pop-up menu or pop-up tooltip.
	 * On X11, popup windows are not controlled by the
	 * [window manager][gtk-X11-arch].
	 *
	 * If you simply want an undecorated window (no window borders), use
	 * gtk_window_set_decorated(), don’t use #GTK_WINDOW_POPUP.
	 *
	 * All top-level windows created by gtk_window_new() are stored in
	 * an internal top-level window list.  This list can be obtained from
	 * gtk_window_list_toplevels().  Due to Gtk+ keeping a reference to
	 * the window internally, gtk_window_new() does not return a reference
	 * to the caller.
	 *
	 * To delete a #GtkWindow, call gtk_widget_destroy().
	 *
	 * Params:
	 *     type = type of window
	 *
	 * Returns: a new #GtkWindow.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkWindowType type)
	{
		auto p = gtk_window_new(type);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindow*) p);
	}

	/**
	 * Gets the value set by gtk_window_set_default_icon_list().
	 * The list is a copy and should be freed with g_list_free(),
	 * but the pixbufs in the list have not had their reference count
	 * incremented.
	 *
	 * Returns: copy of default icon list
	 */
	public static ListG getDefaultIconList()
	{
		auto p = gtk_window_get_default_icon_list();

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the fallback icon name for windows that has been set
	 * with gtk_window_set_default_icon_name(). The returned
	 * string is owned by GTK+ and should not be modified. It
	 * is only valid until the next call to
	 * gtk_window_set_default_icon_name().
	 *
	 * Returns: the fallback icon name for windows
	 *
	 * Since: 2.16
	 */
	public static string getDefaultIconName()
	{
		return Str.toString(gtk_window_get_default_icon_name());
	}

	/**
	 * Returns a list of all existing toplevel windows. The widgets
	 * in the list are not individually referenced. If you want
	 * to iterate through the list and perform actions involving
	 * callbacks that might destroy the widgets, you must call
	 * `g_list_foreach (result, (GFunc)g_object_ref, NULL)` first, and
	 * then unref all the widgets afterwards.
	 *
	 * Returns: list of toplevel widgets
	 */
	public static ListG listToplevels()
	{
		auto p = gtk_window_list_toplevels();

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * By default, after showing the first #GtkWindow, GTK+ calls
	 * gdk_notify_startup_complete().  Call this function to disable
	 * the automatic startup notification. You might do this if your
	 * first window is a splash screen, and you want to delay notification
	 * until after your real main window has been shown, for example.
	 *
	 * In that example, you would disable startup notification
	 * temporarily, show your splash screen, then re-enable it so that
	 * showing the main window would automatically result in notification.
	 *
	 * Params:
	 *     setting = %TRUE to automatically do startup notification
	 *
	 * Since: 2.2
	 */
	public static void setAutoStartupNotification(bool setting)
	{
		gtk_window_set_auto_startup_notification(setting);
	}

	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon() called on them from a pixbuf.
	 *
	 * Params:
	 *     icon = the icon
	 *
	 * Since: 2.4
	 */
	public static void setDefaultIcon(Pixbuf icon)
	{
		gtk_window_set_default_icon((icon is null) ? null : icon.getPixbufStruct());
	}

	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them from a file
	 * on disk. Warns on failure if @err is %NULL.
	 *
	 * Params:
	 *     filename = location of icon file
	 *
	 * Returns: %TRUE if setting the icon succeeded.
	 *
	 * Since: 2.2
	 *
	 * Throws: GException on failure.
	 */
	public static bool setDefaultIconFromFile(string filename)
	{
		GError* err = null;

		auto p = gtk_window_set_default_icon_from_file(Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Sets an icon list to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them to set up a
	 * window-specific icon list. This function allows you to set up the
	 * icon for all windows in your app at once.
	 *
	 * See gtk_window_set_icon_list() for more details.
	 *
	 * Params:
	 *     list = a list of #GdkPixbuf
	 */
	public static void setDefaultIconList(ListG list)
	{
		gtk_window_set_default_icon_list((list is null) ? null : list.getListGStruct());
	}

	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them from a named
	 * themed icon, see gtk_window_set_icon_name().
	 *
	 * Params:
	 *     name = the name of the themed icon
	 *
	 * Since: 2.6
	 */
	public static void setDefaultIconName(string name)
	{
		gtk_window_set_default_icon_name(Str.toStringz(name));
	}

	/**
	 * Opens or closes the [interactive debugger][interactive-debugging],
	 * which offers access to the widget hierarchy of the application
	 * and to useful debugging tools.
	 *
	 * Params:
	 *     enable = %TRUE to enable interactive debugging
	 *
	 * Since: 3.14
	 */
	public static void setInteractiveDebugging(bool enable)
	{
		gtk_window_set_interactive_debugging(enable);
	}

	/**
	 * Activates the default widget for the window, unless the current
	 * focused widget has been configured to receive the default action
	 * (see gtk_widget_set_receives_default()), in which case the
	 * focused widget is activated.
	 *
	 * Returns: %TRUE if a widget got activated.
	 */
	public bool activateDefault()
	{
		return gtk_window_activate_default(gtkWindow) != 0;
	}

	/**
	 * Activates the current focused widget within the window.
	 *
	 * Returns: %TRUE if a widget got activated.
	 */
	public bool activateFocus()
	{
		return gtk_window_activate_focus(gtkWindow) != 0;
	}

	/**
	 * Activates mnemonics and accelerators for this #GtkWindow. This is normally
	 * called by the default ::key_press_event handler for toplevel windows,
	 * however in some cases it may be useful to call this directly when
	 * overriding the standard key handling for a toplevel window.
	 *
	 * Params:
	 *     event = a #GdkEventKey
	 *
	 * Returns: %TRUE if a mnemonic or accelerator was found and activated.
	 *
	 * Since: 2.4
	 */
	public bool activateKey(GdkEventKey* event)
	{
		return gtk_window_activate_key(gtkWindow, event) != 0;
	}

	/**
	 * Associate @accel_group with @window, such that calling
	 * gtk_accel_groups_activate() on @window will activate accelerators
	 * in @accel_group.
	 *
	 * Params:
	 *     accelGroup = a #GtkAccelGroup
	 */
	public void addAccelGroup(AccelGroup accelGroup)
	{
		gtk_window_add_accel_group(gtkWindow, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}

	/**
	 * Adds a mnemonic to this window.
	 *
	 * Params:
	 *     keyval = the mnemonic
	 *     target = the widget that gets activated by the mnemonic
	 */
	public void addMnemonic(uint keyval, Widget target)
	{
		gtk_window_add_mnemonic(gtkWindow, keyval, (target is null) ? null : target.getWidgetStruct());
	}

	/**
	 * Starts moving a window. This function is used if an application has
	 * window movement grips. When GDK can support it, the window movement
	 * will be done using the standard mechanism for the
	 * [window manager][gtk-X11-arch] or windowing
	 * system. Otherwise, GDK will try to emulate window movement,
	 * potentially not all that well, depending on the windowing system.
	 *
	 * Params:
	 *     button = mouse button that initiated the drag
	 *     rootX = X position where the user clicked to initiate the drag, in root window coordinates
	 *     rootY = Y position where the user clicked to initiate the drag
	 *     timestamp = timestamp from the click event that initiated the drag
	 */
	public void beginMoveDrag(int button, int rootX, int rootY, uint timestamp)
	{
		gtk_window_begin_move_drag(gtkWindow, button, rootX, rootY, timestamp);
	}

	/**
	 * Starts resizing a window. This function is used if an application
	 * has window resizing controls. When GDK can support it, the resize
	 * will be done using the standard mechanism for the
	 * [window manager][gtk-X11-arch] or windowing
	 * system. Otherwise, GDK will try to emulate window resizing,
	 * potentially not all that well, depending on the windowing system.
	 *
	 * Params:
	 *     edge = position of the resize control
	 *     button = mouse button that initiated the drag
	 *     rootX = X position where the user clicked to initiate the drag, in root window coordinates
	 *     rootY = Y position where the user clicked to initiate the drag
	 *     timestamp = timestamp from the click event that initiated the drag
	 */
	public void beginResizeDrag(GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp)
	{
		gtk_window_begin_resize_drag(gtkWindow, edge, button, rootX, rootY, timestamp);
	}

	/**
	 * Requests that the window is closed, similar to what happens
	 * when a window manager close button is clicked.
	 *
	 * This function can be used with close buttons in custom
	 * titlebars.
	 *
	 * Since: 3.10
	 */
	public void close()
	{
		gtk_window_close(gtkWindow);
	}

	/**
	 * Asks to deiconify (i.e. unminimize) the specified @window. Note
	 * that you shouldn’t assume the window is definitely deiconified
	 * afterward, because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch])) could iconify it
	 * again before your code which assumes deiconification gets to run.
	 *
	 * You can track iconification via the “window-state-event” signal
	 * on #GtkWidget.
	 */
	public void deiconify()
	{
		gtk_window_deiconify(gtkWindow);
	}

	/**
	 * Asks to place @window in the fullscreen state. Note that you
	 * shouldn’t assume the window is definitely full screen afterward,
	 * because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could unfullscreen it
	 * again, and not all window managers honor requests to fullscreen
	 * windows. But normally the window will end up fullscreen. Just
	 * don’t write code that crashes if not.
	 *
	 * You can track the fullscreen state via the “window-state-event” signal
	 * on #GtkWidget.
	 *
	 * Since: 2.2
	 */
	public void fullscreen()
	{
		gtk_window_fullscreen(gtkWindow);
	}

	/**
	 * Asks to place @window in the fullscreen state. Note that you shouldn't assume
	 * the window is definitely full screen afterward.
	 *
	 * You can track the fullscreen state via the "window-state-event" signal
	 * on #GtkWidget.
	 *
	 * Params:
	 *     screen = a #GdkScreen to draw to
	 *     monitor = which monitor to go fullscreen on
	 *
	 * Since: 3.18
	 */
	public void fullscreenOnMonitor(Screen screen, int monitor)
	{
		gtk_window_fullscreen_on_monitor(gtkWindow, (screen is null) ? null : screen.getScreenStruct(), monitor);
	}

	/**
	 * Gets the value set by gtk_window_set_accept_focus().
	 *
	 * Returns: %TRUE if window should receive the input focus
	 *
	 * Since: 2.4
	 */
	public bool getAcceptFocus()
	{
		return gtk_window_get_accept_focus(gtkWindow) != 0;
	}

	/**
	 * Gets the #GtkApplication associated with the window (if any).
	 *
	 * Returns: a #GtkApplication, or %NULL
	 *
	 * Since: 3.0
	 */
	public Application getApplication()
	{
		auto p = gtk_window_get_application(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Application)(cast(GtkApplication*) p);
	}

	/**
	 * Fetches the attach widget for this window. See
	 * gtk_window_set_attached_to().
	 *
	 * Returns: the widget where the window
	 *     is attached, or %NULL if the window is not attached to any widget.
	 *
	 * Since: 3.4
	 */
	public Widget getAttachedTo()
	{
		auto p = gtk_window_get_attached_to(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether the window has been set to have decorations
	 * such as a title bar via gtk_window_set_decorated().
	 *
	 * Returns: %TRUE if the window has been set to have decorations
	 */
	public bool getDecorated()
	{
		return gtk_window_get_decorated(gtkWindow) != 0;
	}

	/**
	 * Gets the default size of the window. A value of -1 for the width or
	 * height indicates that a default size has not been explicitly set
	 * for that dimension, so the “natural” size of the window will be
	 * used.
	 *
	 * Params:
	 *     width = location to store the default width, or %NULL
	 *     height = location to store the default height, or %NULL
	 */
	public void getDefaultSize(out int width, out int height)
	{
		gtk_window_get_default_size(gtkWindow, &width, &height);
	}

	/**
	 * Returns the default widget for @window. See
	 * gtk_window_set_default() for more details.
	 *
	 * Returns: the default widget, or %NULL
	 *     if there is none.
	 *
	 * Since: 2.14
	 */
	public Widget getDefaultWidget()
	{
		auto p = gtk_window_get_default_widget(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns whether the window has been set to have a close button
	 * via gtk_window_set_deletable().
	 *
	 * Returns: %TRUE if the window has been set to have a close button
	 *
	 * Since: 2.10
	 */
	public bool getDeletable()
	{
		return gtk_window_get_deletable(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window will be destroyed with its transient parent. See
	 * gtk_window_set_destroy_with_parent ().
	 *
	 * Returns: %TRUE if the window will be destroyed with its transient parent.
	 */
	public bool getDestroyWithParent()
	{
		return gtk_window_get_destroy_with_parent(gtkWindow) != 0;
	}

	/**
	 * Retrieves the current focused widget within the window.
	 * Note that this is the widget that would have the focus
	 * if the toplevel window focused; if the toplevel window
	 * is not focused then  `gtk_widget_has_focus (widget)` will
	 * not be %TRUE for the widget.
	 *
	 * Returns: the currently focused widget,
	 *     or %NULL if there is none.
	 */
	public Widget getFocus()
	{
		auto p = gtk_window_get_focus(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the value set by gtk_window_set_focus_on_map().
	 *
	 * Returns: %TRUE if window should receive the input focus when
	 *     mapped.
	 *
	 * Since: 2.6
	 */
	public bool getFocusOnMap()
	{
		return gtk_window_get_focus_on_map(gtkWindow) != 0;
	}

	/**
	 * Gets the value of the #GtkWindow:focus-visible property.
	 *
	 * Returns: %TRUE if “focus rectangles” are supposed to be visible
	 *     in this window.
	 *
	 * Since: 3.2
	 */
	public bool getFocusVisible()
	{
		return gtk_window_get_focus_visible(gtkWindow) != 0;
	}

	/**
	 * Gets the value set by gtk_window_set_gravity().
	 *
	 * Returns: window gravity
	 */
	public GdkGravity getGravity()
	{
		return gtk_window_get_gravity(gtkWindow);
	}

	/**
	 * Returns the group for @window or the default group, if
	 * @window is %NULL or if @window does not have an explicit
	 * window group.
	 *
	 * Returns: the #GtkWindowGroup for a window or the default group
	 *
	 * Since: 2.10
	 */
	public WindowGroup getGroup()
	{
		auto p = gtk_window_get_group(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WindowGroup)(cast(GtkWindowGroup*) p);
	}

	/**
	 * Determines whether the window may have a resize grip.
	 *
	 * Deprecated: Resize grips have been removed.
	 *
	 * Returns: %TRUE if the window has a resize grip
	 *
	 * Since: 3.0
	 */
	public bool getHasResizeGrip()
	{
		return gtk_window_get_has_resize_grip(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window has requested to have its titlebar hidden
	 * when maximized. See gtk_window_set_hide_titlebar_when_maximized ().
	 *
	 * Returns: %TRUE if the window has requested to have its titlebar
	 *     hidden when maximized
	 *
	 * Since: 3.4
	 */
	public bool getHideTitlebarWhenMaximized()
	{
		return gtk_window_get_hide_titlebar_when_maximized(gtkWindow) != 0;
	}

	/**
	 * Gets the value set by gtk_window_set_icon() (or if you've
	 * called gtk_window_set_icon_list(), gets the first icon in
	 * the icon list).
	 *
	 * Returns: icon for window or %NULL if none
	 */
	public Pixbuf getIcon()
	{
		auto p = gtk_window_get_icon(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) p);
	}

	/**
	 * Retrieves the list of icons set by gtk_window_set_icon_list().
	 * The list is copied, but the reference count on each
	 * member won’t be incremented.
	 *
	 * Returns: copy of window’s icon list
	 */
	public ListG getIconList()
	{
		auto p = gtk_window_get_icon_list(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the name of the themed icon for the window,
	 * see gtk_window_set_icon_name().
	 *
	 * Returns: the icon name or %NULL if the window has
	 *     no themed icon
	 *
	 * Since: 2.6
	 */
	public string getIconName()
	{
		return Str.toString(gtk_window_get_icon_name(gtkWindow));
	}

	/**
	 * Returns the mnemonic modifier for this window. See
	 * gtk_window_set_mnemonic_modifier().
	 *
	 * Returns: the modifier mask used to activate
	 *     mnemonics on this window.
	 */
	public GdkModifierType getMnemonicModifier()
	{
		return gtk_window_get_mnemonic_modifier(gtkWindow);
	}

	/**
	 * Gets the value of the #GtkWindow:mnemonics-visible property.
	 *
	 * Returns: %TRUE if mnemonics are supposed to be visible
	 *     in this window.
	 *
	 * Since: 2.20
	 */
	public bool getMnemonicsVisible()
	{
		return gtk_window_get_mnemonics_visible(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window is modal. See gtk_window_set_modal().
	 *
	 * Returns: %TRUE if the window is set to be modal and
	 *     establishes a grab when shown
	 */
	public bool getModal()
	{
		return gtk_window_get_modal(gtkWindow) != 0;
	}

	/**
	 * Fetches the requested opacity for this window. See
	 * gtk_window_set_opacity().
	 *
	 * Deprecated: Use gtk_widget_get_opacity instead.
	 *
	 * Returns: the requested opacity for this window.
	 *
	 * Since: 2.12
	 */
	public override double getOpacity()
	{
		return gtk_window_get_opacity(gtkWindow);
	}

	/**
	 * This function returns the position you need to pass to
	 * gtk_window_move() to keep @window in its current position.
	 * This means that the meaning of the returned value varies with
	 * window gravity. See gtk_window_move() for more details.
	 *
	 * The reliability of this function depends on the windowing system
	 * currently in use. Some windowing systems, such as Wayland, do not
	 * support a global coordinate system, and thus the position of the
	 * window will always be (0, 0). Others, like X11, do not have a reliable
	 * way to obtain the geometry of the decorations of a window if they are
	 * provided by the window manager. Additionally, on X11, window manager
	 * have been known to mismanage window gravity, which result in windows
	 * moving even if you use the coordinates of the current position as
	 * returned by this function.
	 *
	 * If you haven’t changed the window gravity, its gravity will be
	 * #GDK_GRAVITY_NORTH_WEST. This means that gtk_window_get_position()
	 * gets the position of the top-left corner of the window manager
	 * frame for the window. gtk_window_move() sets the position of this
	 * same top-left corner.
	 *
	 * If a window has gravity #GDK_GRAVITY_STATIC the window manager
	 * frame is not relevant, and thus gtk_window_get_position() will
	 * always produce accurate results. However you can’t use static
	 * gravity to do things like place a window in a corner of the screen,
	 * because static gravity ignores the window manager decorations.
	 *
	 * Ideally, this function should return appropriate values if the
	 * window has client side decorations, assuming that the windowing
	 * system supports global coordinates.
	 *
	 * In practice, saving the window position should not be left to
	 * applications, as they lack enough knowledge of the windowing
	 * system and the window manager state to effectively do so. The
	 * appropriate way to implement saving the window position is to
	 * use a platform-specific protocol, wherever that is available.
	 *
	 * Params:
	 *     rootX = return location for X coordinate of
	 *         gravity-determined reference point, or %NULL
	 *     rootY = return location for Y coordinate of
	 *         gravity-determined reference point, or %NULL
	 */
	public void getPosition(out int rootX, out int rootY)
	{
		gtk_window_get_position(gtkWindow, &rootX, &rootY);
	}

	/**
	 * Gets the value set by gtk_window_set_resizable().
	 *
	 * Returns: %TRUE if the user can resize the window
	 */
	public bool getResizable()
	{
		return gtk_window_get_resizable(gtkWindow) != 0;
	}

	/**
	 * If a window has a resize grip, this will retrieve the grip
	 * position, width and height into the specified #GdkRectangle.
	 *
	 * Deprecated: Resize grips have been removed.
	 *
	 * Params:
	 *     rect = a pointer to a #GdkRectangle which we should store
	 *         the resize grip area
	 *
	 * Returns: %TRUE if the resize grip’s area was retrieved
	 *
	 * Since: 3.0
	 */
	public bool getResizeGripArea(out GdkRectangle rect)
	{
		return gtk_window_get_resize_grip_area(gtkWindow, &rect) != 0;
	}

	/**
	 * Returns the role of the window. See gtk_window_set_role() for
	 * further explanation.
	 *
	 * Returns: the role of the window if set, or %NULL. The
	 *     returned is owned by the widget and must not be modified or freed.
	 */
	public string getRole()
	{
		return Str.toString(gtk_window_get_role(gtkWindow));
	}

	/**
	 * Returns the #GdkScreen associated with @window.
	 *
	 * Returns: a #GdkScreen.
	 *
	 * Since: 2.2
	 */
	public override Screen getScreen()
	{
		auto p = gtk_window_get_screen(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Obtains the current size of @window.
	 *
	 * If @window is not visible on screen, this function return the size GTK+
	 * will suggest to the [window manager][gtk-X11-arch] for the initial window
	 * size (but this is not reliably the same as the size the window manager
	 * will actually select). See: gtk_window_set_default_size().
	 *
	 * Depending on the windowing system and the window manager constraints,
	 * the size returned by this function may not match the size set using
	 * gtk_window_resize(); additionally, since gtk_window_resize() may be
	 * implemented as an asynchronous operation, GTK+ cannot guarantee in any
	 * way that this code:
	 *
	 * |[<!-- language="C" -->
	 * // width and height are set elsewhere
	 * gtk_window_resize (window, width, height);
	 *
	 * int new_width, new_height;
	 * gtk_window_get_size (window, &new_width, &new_height);
	 * ]|
	 *
	 * will result in `new_width` and `new_height` matching `width` and
	 * `height`, respectively.
	 *
	 * This function will return the logical size of the #GtkWindow,
	 * excluding the widgets used in client side decorations; there is,
	 * however, no guarantee that the result will be completely accurate
	 * because client side decoration may include widgets that depend on
	 * the user preferences and that may not be visibile at the time you
	 * call this function.
	 *
	 * The dimensions returned by this function are suitable for being
	 * stored across sessions; use gtk_window_set_default_size() to
	 * restore them when before showing the window.
	 *
	 * To avoid potential race conditions, you should only call this
	 * function in response to a size change notification, for instance
	 * inside a handler for the #GtkWidget::size-allocate signal, or
	 * inside a handler for the #GtkWidget::configure-event signal:
	 *
	 * |[<!-- language="C" -->
	 * static void
	 * on_size_allocate (GtkWidget *widget, GtkAllocation *allocation)
	 * {
	 * int new_width, new_height;
	 *
	 * gtk_window_get_size (GTK_WINDOW (widget), &new_width, &new_height);
	 *
	 * ...
	 * }
	 * ]|
	 *
	 * Note that, if you connect to the #GtkWidget::size-allocate signal,
	 * you should not use the dimensions of the #GtkAllocation passed to
	 * the signal handler, as the allocation may contain client side
	 * decorations added by GTK+, depending on the windowing system in
	 * use.
	 *
	 * If you are getting a window size in order to position the window
	 * on the screen, you should, instead, simply set the window’s semantic
	 * type with gtk_window_set_type_hint(), which allows the window manager
	 * to e.g. center dialogs. Also, if you set the transient parent of
	 * dialogs with gtk_window_set_transient_for() window managers will
	 * often center the dialog over its parent window. It's much preferred
	 * to let the window manager handle these cases rather than doing it
	 * yourself, because all apps will behave consistently and according to
	 * user or system preferences, if the window manager handles it. Also,
	 * the window manager can take into account the size of the window
	 * decorations and border that it may add, and of which GTK+ has no
	 * knowledge. Additionally, positioning windows in global screen coordinates
	 * may not be allowed by the windowing system. For more information,
	 * see: gtk_window_set_position().
	 *
	 * Params:
	 *     width = return location for width, or %NULL
	 *     height = return location for height, or %NULL
	 */
	public void getSize(out int width, out int height)
	{
		gtk_window_get_size(gtkWindow, &width, &height);
	}

	/**
	 * Gets the value set by gtk_window_set_skip_pager_hint().
	 *
	 * Returns: %TRUE if window shouldn’t be in pager
	 *
	 * Since: 2.2
	 */
	public bool getSkipPagerHint()
	{
		return gtk_window_get_skip_pager_hint(gtkWindow) != 0;
	}

	/**
	 * Gets the value set by gtk_window_set_skip_taskbar_hint()
	 *
	 * Returns: %TRUE if window shouldn’t be in taskbar
	 *
	 * Since: 2.2
	 */
	public bool getSkipTaskbarHint()
	{
		return gtk_window_get_skip_taskbar_hint(gtkWindow) != 0;
	}

	/**
	 * Retrieves the title of the window. See gtk_window_set_title().
	 *
	 * Returns: the title of the window, or %NULL if none has
	 *     been set explicitly. The returned string is owned by the widget
	 *     and must not be modified or freed.
	 */
	public string getTitle()
	{
		return Str.toString(gtk_window_get_title(gtkWindow));
	}

	/**
	 * Returns the custom titlebar that has been set with
	 * gtk_window_set_titlebar().
	 *
	 * Returns: the custom titlebar, or %NULL
	 *
	 * Since: 3.16
	 */
	public Widget getTitlebar()
	{
		auto p = gtk_window_get_titlebar(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Fetches the transient parent for this window. See
	 * gtk_window_set_transient_for().
	 *
	 * Returns: the transient parent for this
	 *     window, or %NULL if no transient parent has been set.
	 */
	public Window getTransientFor()
	{
		auto p = gtk_window_get_transient_for(gtkWindow);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GtkWindow*) p);
	}

	/**
	 * Gets the type hint for this window. See gtk_window_set_type_hint().
	 *
	 * Returns: the type hint for @window.
	 */
	public GdkWindowTypeHint getTypeHint()
	{
		return gtk_window_get_type_hint(gtkWindow);
	}

	/**
	 * Gets the value set by gtk_window_set_urgency_hint()
	 *
	 * Returns: %TRUE if window is urgent
	 *
	 * Since: 2.8
	 */
	public bool getUrgencyHint()
	{
		return gtk_window_get_urgency_hint(gtkWindow) != 0;
	}

	/**
	 * Gets the type of the window. See #GtkWindowType.
	 *
	 * Returns: the type of the window
	 *
	 * Since: 2.20
	 */
	public GtkWindowType getWindowType()
	{
		return gtk_window_get_window_type(gtkWindow);
	}

	/**
	 * Returns whether @window has an explicit window group.
	 *
	 * Returns: %TRUE if @window has an explicit window group.
	 *
	 *     Since 2.22
	 */
	public bool hasGroup()
	{
		return gtk_window_has_group(gtkWindow) != 0;
	}

	/**
	 * Returns whether the input focus is within this GtkWindow.
	 * For real toplevel windows, this is identical to gtk_window_is_active(),
	 * but for embedded windows, like #GtkPlug, the results will differ.
	 *
	 * Returns: %TRUE if the input focus is within this GtkWindow
	 *
	 * Since: 2.4
	 */
	public bool hasToplevelFocus()
	{
		return gtk_window_has_toplevel_focus(gtkWindow) != 0;
	}

	/**
	 * Asks to iconify (i.e. minimize) the specified @window. Note that
	 * you shouldn’t assume the window is definitely iconified afterward,
	 * because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could deiconify it
	 * again, or there may not be a window manager in which case
	 * iconification isn’t possible, etc. But normally the window will end
	 * up iconified. Just don’t write code that crashes if not.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be iconified before it ever appears
	 * onscreen.
	 *
	 * You can track iconification via the “window-state-event” signal
	 * on #GtkWidget.
	 */
	public void iconify()
	{
		gtk_window_iconify(gtkWindow);
	}

	/**
	 * Returns whether the window is part of the current active toplevel.
	 * (That is, the toplevel window receiving keystrokes.)
	 * The return value is %TRUE if the window is active toplevel
	 * itself, but also if it is, say, a #GtkPlug embedded in the active toplevel.
	 * You might use this function if you wanted to draw a widget
	 * differently in an active window from a widget in an inactive window.
	 * See gtk_window_has_toplevel_focus()
	 *
	 * Returns: %TRUE if the window part of the current active window.
	 *
	 * Since: 2.4
	 */
	public bool isActive()
	{
		return gtk_window_is_active(gtkWindow) != 0;
	}

	/**
	 * Retrieves the current maximized state of @window.
	 *
	 * Note that since maximization is ultimately handled by the window
	 * manager and happens asynchronously to an application request, you
	 * shouldn’t assume the return value of this function changing
	 * immediately (or at all), as an effect of calling
	 * gtk_window_maximize() or gtk_window_unmaximize().
	 *
	 * Returns: whether the window has a maximized state.
	 *
	 * Since: 3.12
	 */
	public bool isMaximized()
	{
		return gtk_window_is_maximized(gtkWindow) != 0;
	}

	/**
	 * Asks to maximize @window, so that it becomes full-screen. Note that
	 * you shouldn’t assume the window is definitely maximized afterward,
	 * because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could unmaximize it
	 * again, and not all window managers support maximization. But
	 * normally the window will end up maximized. Just don’t write code
	 * that crashes if not.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be maximized when it appears onscreen
	 * initially.
	 *
	 * You can track maximization via the “window-state-event” signal
	 * on #GtkWidget, or by listening to notifications on the
	 * #GtkWindow:is-maximized property.
	 */
	public void maximize()
	{
		gtk_window_maximize(gtkWindow);
	}

	/**
	 * Activates the targets associated with the mnemonic.
	 *
	 * Params:
	 *     keyval = the mnemonic
	 *     modifier = the modifiers
	 *
	 * Returns: %TRUE if the activation is done.
	 */
	public bool mnemonicActivate(uint keyval, GdkModifierType modifier)
	{
		return gtk_window_mnemonic_activate(gtkWindow, keyval, modifier) != 0;
	}

	/**
	 * Asks the [window manager][gtk-X11-arch] to move
	 * @window to the given position.  Window managers are free to ignore
	 * this; most window managers ignore requests for initial window
	 * positions (instead using a user-defined placement algorithm) and
	 * honor requests after the window has already been shown.
	 *
	 * Note: the position is the position of the gravity-determined
	 * reference point for the window. The gravity determines two things:
	 * first, the location of the reference point in root window
	 * coordinates; and second, which point on the window is positioned at
	 * the reference point.
	 *
	 * By default the gravity is #GDK_GRAVITY_NORTH_WEST, so the reference
	 * point is simply the @x, @y supplied to gtk_window_move(). The
	 * top-left corner of the window decorations (aka window frame or
	 * border) will be placed at @x, @y.  Therefore, to position a window
	 * at the top left of the screen, you want to use the default gravity
	 * (which is #GDK_GRAVITY_NORTH_WEST) and move the window to 0,0.
	 *
	 * To position a window at the bottom right corner of the screen, you
	 * would set #GDK_GRAVITY_SOUTH_EAST, which means that the reference
	 * point is at @x + the window width and @y + the window height, and
	 * the bottom-right corner of the window border will be placed at that
	 * reference point. So, to place a window in the bottom right corner
	 * you would first set gravity to south east, then write:
	 * `gtk_window_move (window, gdk_screen_width () - window_width,
	 * gdk_screen_height () - window_height)` (note that this
	 * example does not take multi-head scenarios into account).
	 *
	 * The [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec)
	 * has a nice table of gravities in the “implementation notes” section.
	 *
	 * The gtk_window_get_position() documentation may also be relevant.
	 *
	 * Params:
	 *     x = X coordinate to move window to
	 *     y = Y coordinate to move window to
	 */
	public void move(int x, int y)
	{
		gtk_window_move(gtkWindow, x, y);
	}

	/**
	 * Parses a standard X Window System geometry string - see the
	 * manual page for X (type “man X”) for details on this.
	 * gtk_window_parse_geometry() does work on all GTK+ ports
	 * including Win32 but is primarily intended for an X environment.
	 *
	 * If either a size or a position can be extracted from the
	 * geometry string, gtk_window_parse_geometry() returns %TRUE
	 * and calls gtk_window_set_default_size() and/or gtk_window_move()
	 * to resize/move the window.
	 *
	 * If gtk_window_parse_geometry() returns %TRUE, it will also
	 * set the #GDK_HINT_USER_POS and/or #GDK_HINT_USER_SIZE hints
	 * indicating to the window manager that the size/position of
	 * the window was user-specified. This causes most window
	 * managers to honor the geometry.
	 *
	 * Note that for gtk_window_parse_geometry() to work as expected, it has
	 * to be called when the window has its “final” size, i.e. after calling
	 * gtk_widget_show_all() on the contents and gtk_window_set_geometry_hints()
	 * on the window.
	 * |[<!-- language="C" -->
	 * #include <gtk/gtk.h>
	 *
	 * static void
	 * fill_with_content (GtkWidget *vbox)
	 * {
	 * // fill with content...
	 * }
	 *
	 * int
	 * main (int argc, char *argv[])
	 * {
	 * GtkWidget *window, *vbox;
	 * GdkGeometry size_hints = {
	 * 100, 50, 0, 0, 100, 50, 10,
	 * 10, 0.0, 0.0, GDK_GRAVITY_NORTH_WEST
	 * };
	 *
	 * gtk_init (&argc, &argv);
	 *
	 * window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 * vbox = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
	 *
	 * gtk_container_add (GTK_CONTAINER (window), vbox);
	 * fill_with_content (vbox);
	 * gtk_widget_show_all (vbox);
	 *
	 * gtk_window_set_geometry_hints (GTK_WINDOW (window),
	 * NULL,
	 * &size_hints,
	 * GDK_HINT_MIN_SIZE |
	 * GDK_HINT_BASE_SIZE |
	 * GDK_HINT_RESIZE_INC);
	 *
	 * if (argc > 1)
	 * {
	 * gboolean res;
	 * res = gtk_window_parse_geometry (GTK_WINDOW (window),
	 * argv[1]);
	 * if (! res)
	 * fprintf (stderr,
	 * "Failed to parse “%s”\n",
	 * argv[1]);
	 * }
	 *
	 * gtk_widget_show_all (window);
	 * gtk_main ();
	 *
	 * return 0;
	 * }
	 * ]|
	 *
	 * Deprecated: Geometry handling in GTK is deprecated.
	 *
	 * Params:
	 *     geometry = geometry string
	 *
	 * Returns: %TRUE if string was parsed successfully
	 */
	public bool parseGeometry(string geometry)
	{
		return gtk_window_parse_geometry(gtkWindow, Str.toStringz(geometry)) != 0;
	}

	/**
	 * Presents a window to the user. This may mean raising the window
	 * in the stacking order, deiconifying it, moving it to the current
	 * desktop, and/or giving it the keyboard focus, possibly dependent
	 * on the user’s platform, window manager, and preferences.
	 *
	 * If @window is hidden, this function calls gtk_widget_show()
	 * as well.
	 *
	 * This function should be used when the user tries to open a window
	 * that’s already open. Say for example the preferences dialog is
	 * currently open, and the user chooses Preferences from the menu
	 * a second time; use gtk_window_present() to move the already-open dialog
	 * where the user can see it.
	 *
	 * If you are calling this function in response to a user interaction,
	 * it is preferable to use gtk_window_present_with_time().
	 */
	public void present()
	{
		gtk_window_present(gtkWindow);
	}

	/**
	 * Presents a window to the user in response to a user interaction.
	 * If you need to present a window without a timestamp, use
	 * gtk_window_present(). See gtk_window_present() for details.
	 *
	 * Params:
	 *     timestamp = the timestamp of the user interaction (typically a
	 *         button or key press event) which triggered this call
	 *
	 * Since: 2.8
	 */
	public void presentWithTime(uint timestamp)
	{
		gtk_window_present_with_time(gtkWindow, timestamp);
	}

	/**
	 * Propagate a key press or release event to the focus widget and
	 * up the focus container chain until a widget handles @event.
	 * This is normally called by the default ::key_press_event and
	 * ::key_release_event handlers for toplevel windows,
	 * however in some cases it may be useful to call this directly when
	 * overriding the standard key handling for a toplevel window.
	 *
	 * Params:
	 *     event = a #GdkEventKey
	 *
	 * Returns: %TRUE if a widget in the focus chain handled the event.
	 *
	 * Since: 2.4
	 */
	public bool propagateKeyEvent(GdkEventKey* event)
	{
		return gtk_window_propagate_key_event(gtkWindow, event) != 0;
	}

	/**
	 * Reverses the effects of gtk_window_add_accel_group().
	 *
	 * Params:
	 *     accelGroup = a #GtkAccelGroup
	 */
	public void removeAccelGroup(AccelGroup accelGroup)
	{
		gtk_window_remove_accel_group(gtkWindow, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}

	/**
	 * Removes a mnemonic from this window.
	 *
	 * Params:
	 *     keyval = the mnemonic
	 *     target = the widget that gets activated by the mnemonic
	 */
	public void removeMnemonic(uint keyval, Widget target)
	{
		gtk_window_remove_mnemonic(gtkWindow, keyval, (target is null) ? null : target.getWidgetStruct());
	}

	/**
	 * Hides @window, then reshows it, resetting the
	 * default size and position of the window. Used
	 * by GUI builders only.
	 *
	 * Deprecated: GUI builders can call gtk_widget_hide(),
	 * gtk_widget_unrealize() and then gtk_widget_show() on @window
	 * themselves, if they still need this functionality.
	 */
	public void reshowWithInitialSize()
	{
		gtk_window_reshow_with_initial_size(gtkWindow);
	}

	/**
	 * Resizes the window as if the user had done so, obeying geometry
	 * constraints. The default geometry constraint is that windows may
	 * not be smaller than their size request; to override this
	 * constraint, call gtk_widget_set_size_request() to set the window's
	 * request to a smaller value.
	 *
	 * If gtk_window_resize() is called before showing a window for the
	 * first time, it overrides any default size set with
	 * gtk_window_set_default_size().
	 *
	 * Windows may not be resized smaller than 1 by 1 pixels.
	 *
	 * When using client side decorations, GTK+ will do its best to adjust
	 * the given size so that the resulting window size matches the
	 * requested size without the title bar, borders and shadows added for
	 * the client side decorations, but there is no guarantee that the
	 * result will be totally accurate because these widgets added for
	 * client side decorations depend on the theme and may not be realized
	 * or visible at the time gtk_window_resize() is issued.
	 *
	 * If the GtkWindow has a titlebar widget (see gtk_window_set_titlebar()), then
	 * typically, gtk_window_resize() will compensate for the height of the titlebar
	 * widget only if the height is known when the resulting GtkWindow configuration
	 * is issued.
	 * For example, if new widgets are added after the GtkWindow configuration
	 * and cause the titlebar widget to grow in height, this will result in a
	 * window content smaller that specified by gtk_window_resize() and not
	 * a larger window.
	 *
	 * Params:
	 *     width = width in pixels to resize the window to
	 *     height = height in pixels to resize the window to
	 */
	public void resize(int width, int height)
	{
		gtk_window_resize(gtkWindow, width, height);
	}

	/**
	 * Determines whether a resize grip is visible for the specified window.
	 *
	 * Deprecated: Resize grips have been removed.
	 *
	 * Returns: %TRUE if a resize grip exists and is visible
	 *
	 * Since: 3.0
	 */
	public bool resizeGripIsVisible()
	{
		return gtk_window_resize_grip_is_visible(gtkWindow) != 0;
	}

	/**
	 * Like gtk_window_resize(), but @width and @height are interpreted
	 * in terms of the base size and increment set with
	 * gtk_window_set_geometry_hints.
	 *
	 * Deprecated: This function does nothing. Use
	 * gtk_window_resize() and compute the geometry yourself.
	 *
	 * Params:
	 *     width = width in resize increments to resize the window to
	 *     height = height in resize increments to resize the window to
	 *
	 * Since: 3.0
	 */
	public void resizeToGeometry(int width, int height)
	{
		gtk_window_resize_to_geometry(gtkWindow, width, height);
	}

	/**
	 * Windows may set a hint asking the desktop environment not to receive
	 * the input focus. This function sets this hint.
	 *
	 * Params:
	 *     setting = %TRUE to let this window receive input focus
	 *
	 * Since: 2.4
	 */
	public void setAcceptFocus(bool setting)
	{
		gtk_window_set_accept_focus(gtkWindow, setting);
	}

	/**
	 * Sets or unsets the #GtkApplication associated with the window.
	 *
	 * The application will be kept alive for at least as long as it has any windows
	 * associated with it (see g_application_hold() for a way to keep it alive
	 * without windows).
	 *
	 * Normally, the connection between the application and the window will remain
	 * until the window is destroyed, but you can explicitly remove it by setting
	 * the @application to %NULL.
	 *
	 * This is equivalent to calling gtk_application_remove_window() and/or
	 * gtk_application_add_window() on the old/new applications as relevant.
	 *
	 * Params:
	 *     application = a #GtkApplication, or %NULL to unset
	 *
	 * Since: 3.0
	 */
	public void setApplication(Application application)
	{
		gtk_window_set_application(gtkWindow, (application is null) ? null : application.getGtkApplicationStruct());
	}

	/**
	 * Marks @window as attached to @attach_widget. This creates a logical binding
	 * between the window and the widget it belongs to, which is used by GTK+ to
	 * propagate information such as styling or accessibility to @window as if it
	 * was a children of @attach_widget.
	 *
	 * Examples of places where specifying this relation is useful are for instance
	 * a #GtkMenu created by a #GtkComboBox, a completion popup window
	 * created by #GtkEntry or a typeahead search entry created by #GtkTreeView.
	 *
	 * Note that this function should not be confused with
	 * gtk_window_set_transient_for(), which specifies a window manager relation
	 * between two toplevels instead.
	 *
	 * Passing %NULL for @attach_widget detaches the window.
	 *
	 * Params:
	 *     attachWidget = a #GtkWidget, or %NULL
	 *
	 * Since: 3.4
	 */
	public void setAttachedTo(Widget attachWidget)
	{
		gtk_window_set_attached_to(gtkWindow, (attachWidget is null) ? null : attachWidget.getWidgetStruct());
	}

	/**
	 * By default, windows are decorated with a title bar, resize
	 * controls, etc.  Some [window managers][gtk-X11-arch]
	 * allow GTK+ to disable these decorations, creating a
	 * borderless window. If you set the decorated property to %FALSE
	 * using this function, GTK+ will do its best to convince the window
	 * manager not to decorate the window. Depending on the system, this
	 * function may not have any effect when called on a window that is
	 * already visible, so you should call it before calling gtk_widget_show().
	 *
	 * On Windows, this function always works, since there’s no window manager
	 * policy involved.
	 *
	 * Params:
	 *     setting = %TRUE to decorate the window
	 */
	public void setDecorated(bool setting)
	{
		gtk_window_set_decorated(gtkWindow, setting);
	}

	/**
	 * The default widget is the widget that’s activated when the user
	 * presses Enter in a dialog (for example). This function sets or
	 * unsets the default widget for a #GtkWindow. When setting (rather
	 * than unsetting) the default widget it’s generally easier to call
	 * gtk_widget_grab_default() on the widget. Before making a widget
	 * the default widget, you must call gtk_widget_set_can_default() on
	 * the widget you’d like to make the default.
	 *
	 * Params:
	 *     defaultWidget = widget to be the default, or %NULL
	 *         to unset the default widget for the toplevel
	 */
	public void setDefault(Widget defaultWidget)
	{
		gtk_window_set_default(gtkWindow, (defaultWidget is null) ? null : defaultWidget.getWidgetStruct());
	}

	/**
	 * Like gtk_window_set_default_size(), but @width and @height are interpreted
	 * in terms of the base size and increment set with
	 * gtk_window_set_geometry_hints.
	 *
	 * Deprecated: This function does nothing. If you want to set a default
	 * size, use gtk_window_set_default_size() instead.
	 *
	 * Params:
	 *     width = width in resize increments, or -1 to unset the default width
	 *     height = height in resize increments, or -1 to unset the default height
	 *
	 * Since: 3.0
	 */
	public void setDefaultGeometry(int width, int height)
	{
		gtk_window_set_default_geometry(gtkWindow, width, height);
	}

	/**
	 * Sets the default size of a window. If the window’s “natural” size
	 * (its size request) is larger than the default, the default will be
	 * ignored. More generally, if the default size does not obey the
	 * geometry hints for the window (gtk_window_set_geometry_hints() can
	 * be used to set these explicitly), the default size will be clamped
	 * to the nearest permitted size.
	 *
	 * Unlike gtk_widget_set_size_request(), which sets a size request for
	 * a widget and thus would keep users from shrinking the window, this
	 * function only sets the initial size, just as if the user had
	 * resized the window themselves. Users can still shrink the window
	 * again as they normally would. Setting a default size of -1 means to
	 * use the “natural” default size (the size request of the window).
	 *
	 * For more control over a window’s initial size and how resizing works,
	 * investigate gtk_window_set_geometry_hints().
	 *
	 * For some uses, gtk_window_resize() is a more appropriate function.
	 * gtk_window_resize() changes the current size of the window, rather
	 * than the size to be used on initial display. gtk_window_resize() always
	 * affects the window itself, not the geometry widget.
	 *
	 * The default size of a window only affects the first time a window is
	 * shown; if a window is hidden and re-shown, it will remember the size
	 * it had prior to hiding, rather than using the default size.
	 *
	 * Windows can’t actually be 0x0 in size, they must be at least 1x1, but
	 * passing 0 for @width and @height is OK, resulting in a 1x1 default size.
	 *
	 * If you use this function to reestablish a previously saved window size,
	 * note that the appropriate size to save is the one returned by
	 * gtk_window_get_size(). Using the window allocation directly will not
	 * work in all circumstances and can lead to growing or shrinking windows.
	 *
	 * Params:
	 *     width = width in pixels, or -1 to unset the default width
	 *     height = height in pixels, or -1 to unset the default height
	 */
	public void setDefaultSize(int width, int height)
	{
		gtk_window_set_default_size(gtkWindow, width, height);
	}

	/**
	 * By default, windows have a close button in the window frame. Some
	 * [window managers][gtk-X11-arch] allow GTK+ to
	 * disable this button. If you set the deletable property to %FALSE
	 * using this function, GTK+ will do its best to convince the window
	 * manager not to show a close button. Depending on the system, this
	 * function may not have any effect when called on a window that is
	 * already visible, so you should call it before calling gtk_widget_show().
	 *
	 * On Windows, this function always works, since there’s no window manager
	 * policy involved.
	 *
	 * Params:
	 *     setting = %TRUE to decorate the window as deletable
	 *
	 * Since: 2.10
	 */
	public void setDeletable(bool setting)
	{
		gtk_window_set_deletable(gtkWindow, setting);
	}

	/**
	 * If @setting is %TRUE, then destroying the transient parent of @window
	 * will also destroy @window itself. This is useful for dialogs that
	 * shouldn’t persist beyond the lifetime of the main window they're
	 * associated with, for example.
	 *
	 * Params:
	 *     setting = whether to destroy @window with its transient parent
	 */
	public void setDestroyWithParent(bool setting)
	{
		gtk_window_set_destroy_with_parent(gtkWindow, setting);
	}

	/**
	 * If @focus is not the current focus widget, and is focusable, sets
	 * it as the focus widget for the window. If @focus is %NULL, unsets
	 * the focus widget for this window. To set the focus to a particular
	 * widget in the toplevel, it is usually more convenient to use
	 * gtk_widget_grab_focus() instead of this function.
	 *
	 * Params:
	 *     focus = widget to be the new focus widget, or %NULL to unset
	 *         any focus widget for the toplevel window.
	 */
	public void setFocus(Widget focus)
	{
		gtk_window_set_focus(gtkWindow, (focus is null) ? null : focus.getWidgetStruct());
	}

	/**
	 * Windows may set a hint asking the desktop environment not to receive
	 * the input focus when the window is mapped.  This function sets this
	 * hint.
	 *
	 * Params:
	 *     setting = %TRUE to let this window receive input focus on map
	 *
	 * Since: 2.6
	 */
	public void setFocusOnMap(bool setting)
	{
		gtk_window_set_focus_on_map(gtkWindow, setting);
	}

	/**
	 * Sets the #GtkWindow:focus-visible property.
	 *
	 * Params:
	 *     setting = the new value
	 *
	 * Since: 3.2
	 */
	public void setFocusVisible(bool setting)
	{
		gtk_window_set_focus_visible(gtkWindow, setting);
	}

	/**
	 * This function sets up hints about how a window can be resized by
	 * the user.  You can set a minimum and maximum size; allowed resize
	 * increments (e.g. for xterm, you can only resize by the size of a
	 * character); aspect ratios; and more. See the #GdkGeometry struct.
	 *
	 * Params:
	 *     geometryWidget = widget the geometry hints used to be applied to
	 *         or %NULL. Since 3.20 this argument is ignored and GTK behaves as if %NULL was
	 *         set.
	 *     geometry = struct containing geometry information or %NULL
	 *     geomMask = mask indicating which struct fields should be paid attention to
	 */
	public void setGeometryHints(Widget geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask)
	{
		gtk_window_set_geometry_hints(gtkWindow, (geometryWidget is null) ? null : geometryWidget.getWidgetStruct(), geometry, geomMask);
	}

	/**
	 * Window gravity defines the meaning of coordinates passed to
	 * gtk_window_move(). See gtk_window_move() and #GdkGravity for
	 * more details.
	 *
	 * The default window gravity is #GDK_GRAVITY_NORTH_WEST which will
	 * typically “do what you mean.”
	 *
	 * Params:
	 *     gravity = window gravity
	 */
	public void setGravity(GdkGravity gravity)
	{
		gtk_window_set_gravity(gtkWindow, gravity);
	}

	/**
	 * Sets whether @window has a corner resize grip.
	 *
	 * Note that the resize grip is only shown if the window
	 * is actually resizable and not maximized. Use
	 * gtk_window_resize_grip_is_visible() to find out if the
	 * resize grip is currently shown.
	 *
	 * Deprecated: Resize grips have been removed.
	 *
	 * Params:
	 *     value = %TRUE to allow a resize grip
	 *
	 * Since: 3.0
	 */
	public void setHasResizeGrip(bool value)
	{
		gtk_window_set_has_resize_grip(gtkWindow, value);
	}

	/**
	 * Tells GTK+ whether to drop its extra reference to the window
	 * when gtk_widget_destroy() is called.
	 *
	 * This function is only exported for the benefit of language
	 * bindings which may need to keep the window alive until their
	 * wrapper object is garbage collected. There is no justification
	 * for ever calling this function in an application.
	 *
	 * Params:
	 *     setting = the new value
	 *
	 * Since: 3.0
	 */
	public void setHasUserRefCount(bool setting)
	{
		gtk_window_set_has_user_ref_count(gtkWindow, setting);
	}

	/**
	 * If @setting is %TRUE, then @window will request that it’s titlebar
	 * should be hidden when maximized.
	 * This is useful for windows that don’t convey any information other
	 * than the application name in the titlebar, to put the available
	 * screen space to better use. If the underlying window system does not
	 * support the request, the setting will not have any effect.
	 *
	 * Note that custom titlebars set with gtk_window_set_titlebar() are
	 * not affected by this. The application is in full control of their
	 * content and visibility anyway.
	 *
	 * Params:
	 *     setting = whether to hide the titlebar when @window is maximized
	 *
	 * Since: 3.4
	 */
	public void setHideTitlebarWhenMaximized(bool setting)
	{
		gtk_window_set_hide_titlebar_when_maximized(gtkWindow, setting);
	}

	/**
	 * Sets up the icon representing a #GtkWindow. This icon is used when
	 * the window is minimized (also known as iconified).  Some window
	 * managers or desktop environments may also place it in the window
	 * frame, or display it in other contexts. On others, the icon is not
	 * used at all, so your mileage may vary.
	 *
	 * The icon should be provided in whatever size it was naturally
	 * drawn; that is, don’t scale the image before passing it to
	 * GTK+. Scaling is postponed until the last minute, when the desired
	 * final size is known, to allow best quality.
	 *
	 * If you have your icon hand-drawn in multiple sizes, use
	 * gtk_window_set_icon_list(). Then the best size will be used.
	 *
	 * This function is equivalent to calling gtk_window_set_icon_list()
	 * with a 1-element list.
	 *
	 * See also gtk_window_set_default_icon_list() to set the icon
	 * for all windows in your application in one go.
	 *
	 * Params:
	 *     icon = icon image, or %NULL
	 */
	public void setIcon(Pixbuf icon)
	{
		gtk_window_set_icon(gtkWindow, (icon is null) ? null : icon.getPixbufStruct());
	}

	/**
	 * Sets the icon for @window.
	 * Warns on failure if @err is %NULL.
	 *
	 * This function is equivalent to calling gtk_window_set_icon()
	 * with a pixbuf created by loading the image from @filename.
	 *
	 * Params:
	 *     filename = location of icon file
	 *
	 * Returns: %TRUE if setting the icon succeeded.
	 *
	 * Since: 2.2
	 *
	 * Throws: GException on failure.
	 */
	public bool setIconFromFile(string filename)
	{
		GError* err = null;

		auto p = gtk_window_set_icon_from_file(gtkWindow, Str.toStringz(filename), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Sets up the icon representing a #GtkWindow. The icon is used when
	 * the window is minimized (also known as iconified).  Some window
	 * managers or desktop environments may also place it in the window
	 * frame, or display it in other contexts. On others, the icon is not
	 * used at all, so your mileage may vary.
	 *
	 * gtk_window_set_icon_list() allows you to pass in the same icon in
	 * several hand-drawn sizes. The list should contain the natural sizes
	 * your icon is available in; that is, don’t scale the image before
	 * passing it to GTK+. Scaling is postponed until the last minute,
	 * when the desired final size is known, to allow best quality.
	 *
	 * By passing several sizes, you may improve the final image quality
	 * of the icon, by reducing or eliminating automatic image scaling.
	 *
	 * Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
	 * larger images (64x64, 128x128) if you have them.
	 *
	 * See also gtk_window_set_default_icon_list() to set the icon
	 * for all windows in your application in one go.
	 *
	 * Note that transient windows (those who have been set transient for another
	 * window using gtk_window_set_transient_for()) will inherit their
	 * icon from their transient parent. So there’s no need to explicitly
	 * set the icon on transient windows.
	 *
	 * Params:
	 *     list = list of #GdkPixbuf
	 */
	public void setIconList(ListG list)
	{
		gtk_window_set_icon_list(gtkWindow, (list is null) ? null : list.getListGStruct());
	}

	/**
	 * Sets the icon for the window from a named themed icon.
	 * See the docs for #GtkIconTheme for more details.
	 * On some platforms, the window icon is not used at all.
	 *
	 * Note that this has nothing to do with the WM_ICON_NAME
	 * property which is mentioned in the ICCCM.
	 *
	 * Params:
	 *     name = the name of the themed icon
	 *
	 * Since: 2.6
	 */
	public void setIconName(string name)
	{
		gtk_window_set_icon_name(gtkWindow, Str.toStringz(name));
	}

	/**
	 * Asks to keep @window above, so that it stays on top. Note that
	 * you shouldn’t assume the window is definitely above afterward,
	 * because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could not keep it above,
	 * and not all window managers support keeping windows above. But
	 * normally the window will end kept above. Just don’t write code
	 * that crashes if not.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be kept above when it appears onscreen
	 * initially.
	 *
	 * You can track the above state via the “window-state-event” signal
	 * on #GtkWidget.
	 *
	 * Note that, according to the
	 * [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
	 * the above state is mainly meant for user preferences and should not
	 * be used by applications e.g. for drawing attention to their
	 * dialogs.
	 *
	 * Params:
	 *     setting = whether to keep @window above other windows
	 *
	 * Since: 2.4
	 */
	public void setKeepAbove(bool setting)
	{
		gtk_window_set_keep_above(gtkWindow, setting);
	}

	/**
	 * Asks to keep @window below, so that it stays in bottom. Note that
	 * you shouldn’t assume the window is definitely below afterward,
	 * because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could not keep it below,
	 * and not all window managers support putting windows below. But
	 * normally the window will be kept below. Just don’t write code
	 * that crashes if not.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be kept below when it appears onscreen
	 * initially.
	 *
	 * You can track the below state via the “window-state-event” signal
	 * on #GtkWidget.
	 *
	 * Note that, according to the
	 * [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
	 * the above state is mainly meant for user preferences and should not
	 * be used by applications e.g. for drawing attention to their
	 * dialogs.
	 *
	 * Params:
	 *     setting = whether to keep @window below other windows
	 *
	 * Since: 2.4
	 */
	public void setKeepBelow(bool setting)
	{
		gtk_window_set_keep_below(gtkWindow, setting);
	}

	/**
	 * Sets the mnemonic modifier for this window.
	 *
	 * Params:
	 *     modifier = the modifier mask used to activate
	 *         mnemonics on this window.
	 */
	public void setMnemonicModifier(GdkModifierType modifier)
	{
		gtk_window_set_mnemonic_modifier(gtkWindow, modifier);
	}

	/**
	 * Sets the #GtkWindow:mnemonics-visible property.
	 *
	 * Params:
	 *     setting = the new value
	 *
	 * Since: 2.20
	 */
	public void setMnemonicsVisible(bool setting)
	{
		gtk_window_set_mnemonics_visible(gtkWindow, setting);
	}

	/**
	 * Sets a window modal or non-modal. Modal windows prevent interaction
	 * with other windows in the same application. To keep modal dialogs
	 * on top of main application windows, use
	 * gtk_window_set_transient_for() to make the dialog transient for the
	 * parent; most [window managers][gtk-X11-arch]
	 * will then disallow lowering the dialog below the parent.
	 *
	 * Params:
	 *     modal = whether the window is modal
	 */
	public void setModal(bool modal)
	{
		gtk_window_set_modal(gtkWindow, modal);
	}

	/**
	 * Request the windowing system to make @window partially transparent,
	 * with opacity 0 being fully transparent and 1 fully opaque. (Values
	 * of the opacity parameter are clamped to the [0,1] range.) On X11
	 * this has any effect only on X screens with a compositing manager
	 * running. See gtk_widget_is_composited(). On Windows it should work
	 * always.
	 *
	 * Note that setting a window’s opacity after the window has been
	 * shown causes it to flicker once on Windows.
	 *
	 * Deprecated: Use gtk_widget_set_opacity instead.
	 *
	 * Params:
	 *     opacity = desired opacity, between 0 and 1
	 *
	 * Since: 2.12
	 */
	public override void setOpacity(double opacity)
	{
		gtk_window_set_opacity(gtkWindow, opacity);
	}

	/**
	 * Sets a position constraint for this window. If the old or new
	 * constraint is %GTK_WIN_POS_CENTER_ALWAYS, this will also cause
	 * the window to be repositioned to satisfy the new constraint.
	 *
	 * Params:
	 *     position = a position constraint.
	 */
	public void setPosition(GtkWindowPosition position)
	{
		gtk_window_set_position(gtkWindow, position);
	}

	/**
	 * Sets whether the user can resize a window. Windows are user resizable
	 * by default.
	 *
	 * Params:
	 *     resizable = %TRUE if the user can resize this window
	 */
	public void setResizable(bool resizable)
	{
		gtk_window_set_resizable(gtkWindow, resizable);
	}

	/**
	 * This function is only useful on X11, not with other GTK+ targets.
	 *
	 * In combination with the window title, the window role allows a
	 * [window manager][gtk-X11-arch] to identify "the
	 * same" window when an application is restarted. So for example you
	 * might set the “toolbox” role on your app’s toolbox window, so that
	 * when the user restarts their session, the window manager can put
	 * the toolbox back in the same place.
	 *
	 * If a window already has a unique title, you don’t need to set the
	 * role, since the WM can use the title to identify the window when
	 * restoring the session.
	 *
	 * Params:
	 *     role = unique identifier for the window to be used when restoring a session
	 */
	public void setRole(string role)
	{
		gtk_window_set_role(gtkWindow, Str.toStringz(role));
	}

	/**
	 * Sets the #GdkScreen where the @window is displayed; if
	 * the window is already mapped, it will be unmapped, and
	 * then remapped on the new screen.
	 *
	 * Params:
	 *     screen = a #GdkScreen.
	 *
	 * Since: 2.2
	 */
	public void setScreen(Screen screen)
	{
		gtk_window_set_screen(gtkWindow, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Windows may set a hint asking the desktop environment not to display
	 * the window in the pager. This function sets this hint.
	 * (A "pager" is any desktop navigation tool such as a workspace
	 * switcher that displays a thumbnail representation of the windows
	 * on the screen.)
	 *
	 * Params:
	 *     setting = %TRUE to keep this window from appearing in the pager
	 *
	 * Since: 2.2
	 */
	public void setSkipPagerHint(bool setting)
	{
		gtk_window_set_skip_pager_hint(gtkWindow, setting);
	}

	/**
	 * Windows may set a hint asking the desktop environment not to display
	 * the window in the task bar. This function sets this hint.
	 *
	 * Params:
	 *     setting = %TRUE to keep this window from appearing in the task bar
	 *
	 * Since: 2.2
	 */
	public void setSkipTaskbarHint(bool setting)
	{
		gtk_window_set_skip_taskbar_hint(gtkWindow, setting);
	}

	/**
	 * Startup notification identifiers are used by desktop environment to
	 * track application startup, to provide user feedback and other
	 * features. This function changes the corresponding property on the
	 * underlying GdkWindow. Normally, startup identifier is managed
	 * automatically and you should only use this function in special cases
	 * like transferring focus from other processes. You should use this
	 * function before calling gtk_window_present() or any equivalent
	 * function generating a window map event.
	 *
	 * This function is only useful on X11, not with other GTK+ targets.
	 *
	 * Params:
	 *     startupId = a string with startup-notification identifier
	 *
	 * Since: 2.12
	 */
	public void setStartupId(string startupId)
	{
		gtk_window_set_startup_id(gtkWindow, Str.toStringz(startupId));
	}

	/**
	 * Sets the title of the #GtkWindow. The title of a window will be
	 * displayed in its title bar; on the X Window System, the title bar
	 * is rendered by the [window manager][gtk-X11-arch],
	 * so exactly how the title appears to users may vary
	 * according to a user’s exact configuration. The title should help a
	 * user distinguish this window from other windows they may have
	 * open. A good title might include the application name and current
	 * document filename, for example.
	 *
	 * Params:
	 *     title = title of the window
	 */
	public void setTitle(string title)
	{
		gtk_window_set_title(gtkWindow, Str.toStringz(title));
	}

	/**
	 * Sets a custom titlebar for @window.
	 *
	 * A typical widget used here is #GtkHeaderBar, as it provides various features
	 * expected of a titlebar while allowing the addition of child widgets to it.
	 *
	 * If you set a custom titlebar, GTK+ will do its best to convince
	 * the window manager not to put its own titlebar on the window.
	 * Depending on the system, this function may not work for a window
	 * that is already visible, so you set the titlebar before calling
	 * gtk_widget_show().
	 *
	 * Params:
	 *     titlebar = the widget to use as titlebar
	 *
	 * Since: 3.10
	 */
	public void setTitlebar(Widget titlebar)
	{
		gtk_window_set_titlebar(gtkWindow, (titlebar is null) ? null : titlebar.getWidgetStruct());
	}

	/**
	 * Dialog windows should be set transient for the main application
	 * window they were spawned from. This allows
	 * [window managers][gtk-X11-arch] to e.g. keep the
	 * dialog on top of the main window, or center the dialog over the
	 * main window. gtk_dialog_new_with_buttons() and other convenience
	 * functions in GTK+ will sometimes call
	 * gtk_window_set_transient_for() on your behalf.
	 *
	 * Passing %NULL for @parent unsets the current transient window.
	 *
	 * On Wayland, this function can also be used to attach a new
	 * #GTK_WINDOW_POPUP to a #GTK_WINDOW_TOPLEVEL parent already mapped
	 * on screen so that the #GTK_WINDOW_POPUP will be created as a
	 * subsurface-based window #GDK_WINDOW_SUBSURFACE which can be
	 * positioned at will relatively to the #GTK_WINDOW_TOPLEVEL surface.
	 *
	 * On Windows, this function puts the child window on top of the parent,
	 * much as the window manager would have done on X.
	 *
	 * Params:
	 *     parent = parent window, or %NULL
	 */
	public void setTransientFor(Window parent)
	{
		gtk_window_set_transient_for(gtkWindow, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * By setting the type hint for the window, you allow the window
	 * manager to decorate and handle the window in a way which is
	 * suitable to the function of the window in your application.
	 *
	 * This function should be called before the window becomes visible.
	 *
	 * gtk_dialog_new_with_buttons() and other convenience functions in GTK+
	 * will sometimes call gtk_window_set_type_hint() on your behalf.
	 *
	 * Params:
	 *     hint = the window type
	 */
	public void setTypeHint(GdkWindowTypeHint hint)
	{
		gtk_window_set_type_hint(gtkWindow, hint);
	}

	/**
	 * Windows may set a hint asking the desktop environment to draw
	 * the users attention to the window. This function sets this hint.
	 *
	 * Params:
	 *     setting = %TRUE to mark this window as urgent
	 *
	 * Since: 2.8
	 */
	public void setUrgencyHint(bool setting)
	{
		gtk_window_set_urgency_hint(gtkWindow, setting);
	}

	/**
	 * Don’t use this function. It sets the X Window System “class” and
	 * “name” hints for a window.  According to the ICCCM, you should
	 * always set these to the same value for all windows in an
	 * application, and GTK+ sets them to that value by default, so calling
	 * this function is sort of pointless. However, you may want to call
	 * gtk_window_set_role() on each window in your application, for the
	 * benefit of the session manager. Setting the role allows the window
	 * manager to restore window positions when loading a saved session.
	 *
	 * Params:
	 *     wmclassName = window name hint
	 *     wmclassClass = window class hint
	 */
	public void setWmclass(string wmclassName, string wmclassClass)
	{
		gtk_window_set_wmclass(gtkWindow, Str.toStringz(wmclassName), Str.toStringz(wmclassClass));
	}

	/**
	 * Asks to stick @window, which means that it will appear on all user
	 * desktops. Note that you shouldn’t assume the window is definitely
	 * stuck afterward, because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch] could unstick it
	 * again, and some window managers do not support sticking
	 * windows. But normally the window will end up stuck. Just don't
	 * write code that crashes if not.
	 *
	 * It’s permitted to call this function before showing a window.
	 *
	 * You can track stickiness via the “window-state-event” signal
	 * on #GtkWidget.
	 */
	public void stick()
	{
		gtk_window_stick(gtkWindow);
	}

	/**
	 * Asks to toggle off the fullscreen state for @window. Note that you
	 * shouldn’t assume the window is definitely not full screen
	 * afterward, because other entities (e.g. the user or
	 * [window manager][gtk-X11-arch]) could fullscreen it
	 * again, and not all window managers honor requests to unfullscreen
	 * windows. But normally the window will end up restored to its normal
	 * state. Just don’t write code that crashes if not.
	 *
	 * You can track the fullscreen state via the “window-state-event” signal
	 * on #GtkWidget.
	 *
	 * Since: 2.2
	 */
	public void unfullscreen()
	{
		gtk_window_unfullscreen(gtkWindow);
	}

	/**
	 * Asks to unmaximize @window. Note that you shouldn’t assume the
	 * window is definitely unmaximized afterward, because other entities
	 * (e.g. the user or [window manager][gtk-X11-arch])
	 * could maximize it again, and not all window
	 * managers honor requests to unmaximize. But normally the window will
	 * end up unmaximized. Just don’t write code that crashes if not.
	 *
	 * You can track maximization via the “window-state-event” signal
	 * on #GtkWidget.
	 */
	public void unmaximize()
	{
		gtk_window_unmaximize(gtkWindow);
	}

	/**
	 * Asks to unstick @window, which means that it will appear on only
	 * one of the user’s desktops. Note that you shouldn’t assume the
	 * window is definitely unstuck afterward, because other entities
	 * (e.g. the user or [window manager][gtk-X11-arch]) could
	 * stick it again. But normally the window will
	 * end up stuck. Just don’t write code that crashes if not.
	 *
	 * You can track stickiness via the “window-state-event” signal
	 * on #GtkWidget.
	 */
	public void unstick()
	{
		gtk_window_unstick(gtkWindow);
	}

	/**
	 * The ::activate-default signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user activates the default widget
	 * of @window.
	 */
	gulong addOnActivateDefault(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-default", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::activate-focus signal is a
	 * [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user activates the currently
	 * focused widget of @window.
	 */
	gulong addOnActivateFocus(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::enable-debugging signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user enables or disables interactive
	 * debugging. When @toggle is %TRUE, interactive debugging is toggled
	 * on or off, when it is %FALSE, the debugger will be pointed at the
	 * widget under the pointer.
	 *
	 * The default bindings for this signal are Ctrl-Shift-I
	 * and Ctrl-Shift-D.
	 *
	 * Params:
	 *     toggle = toggle the debugger
	 *
	 * Returns: %TRUE if the key binding was handled
	 */
	gulong addOnEnableDebugging(bool delegate(bool, Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enable-debugging", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::keys-changed signal gets emitted when the set of accelerators
	 * or mnemonics that are associated with @window changes.
	 */
	gulong addOnKeysChanged(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "keys-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSetFocus(void delegate(Widget, Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "set-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This is a convenience function for launching the default application
	 * to show the uri. The uri must be of a form understood by GIO (i.e. you
	 * need to install gvfs to get support for uri schemes such as http://
	 * or ftp://, as only local files are handled by GIO itself).
	 * Typical examples are
	 * - `file:///home/gnome/pict.jpg`
	 * - `http://www.gnome.org`
	 * - `mailto:me@gnome.org`
	 *
	 * Ideally the timestamp is taken from the event triggering
	 * the gtk_show_uri() call. If timestamp is not known you can take
	 * %GDK_CURRENT_TIME.
	 *
	 * This is the recommended call to be used as it passes information
	 * necessary for sandbox helpers to parent their dialogs properly.
	 *
	 * Params:
	 *     parent = parent window
	 *     uri = the uri to show
	 *     timestamp = a timestamp to prevent focus stealing
	 *
	 * Returns: %TRUE on success, %FALSE on error
	 *
	 * Since: 3.22
	 *
	 * Throws: GException on failure.
	 */
	public static bool showUriOnWindow(Window parent, string uri, uint timestamp)
	{
		GError* err = null;

		auto p = gtk_show_uri_on_window((parent is null) ? null : parent.getWindowStruct(), Str.toStringz(uri), timestamp, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}
}
