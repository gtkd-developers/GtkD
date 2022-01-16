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

private import gdk.Display;
private import gdk.MonitorGdk;
private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Application;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.RootIF;
private import gtk.RootT;
private import gtk.ShortcutManagerIF;
private import gtk.ShortcutManagerT;
private import gtk.Widget;
private import gtk.WindowGroup;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkWindow` is a toplevel window which can contain other widgets.
 * 
 * ![An example GtkWindow](window.png)
 * 
 * Windows normally have decorations that are under the control
 * of the windowing system and allow the user to manipulate the window
 * (resize it, move it, close it,...).
 * 
 * # GtkWindow as GtkBuildable
 * 
 * The `GtkWindow` implementation of the [iface@Gtk.Buildable] interface supports
 * setting a child as the titlebar by specifying “titlebar” as the “type”
 * attribute of a <child> element.
 * 
 * # CSS nodes
 * 
 * ```
 * window.background [.csd / .solid-csd / .ssd] [.maximized / .fullscreen / .tiled]
 * ├── <child>
 * ╰── <titlebar child>.titlebar [.default-decoration]
 * ```
 * 
 * `GtkWindow` has a main CSS node with name window and style class .background.
 * 
 * Style classes that are typically used with the main CSS node are .csd (when
 * client-side decorations are in use), .solid-csd (for client-side decorations
 * without invisible borders), .ssd (used by mutter when rendering server-side
 * decorations). GtkWindow also represents window states with the following
 * style classes on the main node: .maximized, .fullscreen, .tiled (when supported,
 * also .tiled-top, .tiled-left, .tiled-right, .tiled-bottom).
 * 
 * `GtkWindow` subclasses often add their own discriminating style classes,
 * such as .dialog, .popup or .tooltip.
 * 
 * Generally, some CSS properties don't make sense on the toplevel window node,
 * such as margins or padding. When client-side decorations without invisible
 * borders are in use (i.e. the .solid-csd style class is added to the
 * main window node), the CSS border of the toplevel window is used for
 * resize drags. In the .csd case, the shadow area outside of the window
 * can be used to resize it.
 * 
 * `GtkWindow` adds the .titlebar and .default-decoration style classes to the
 * widget that is added as a titlebar child.
 * 
 * # Accessibility
 * 
 * `GtkWindow` uses the %GTK_ACCESSIBLE_ROLE_WINDOW role.
 * 
 * # Actions
 * 
 * `GtkWindow` defines a set of built-in actions:
 * - `default.activate`: Activate the default widget.
 * - `window.minimize`: Minimize the window.
 * - `window.toggle-maximized`: Maximize or restore the window.
 * - `window.close`: Close the window.
 */
public class Window : Widget, NativeIF, RootIF, ShortcutManagerIF
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
		super(cast(GtkWidget*)gtkWindow, ownedRef);
	}

	// add the Native capabilities
	mixin NativeT!(GtkWindow);

	// add the Root capabilities
	mixin RootT!(GtkWindow);

	// add the ShortcutManager capabilities
	mixin ShortcutManagerT!(GtkWindow);


	/** */
	public static GType getType()
	{
		return gtk_window_get_type();
	}

	/**
	 * Creates a new `GtkWindow`.
	 *
	 * To get an undecorated window (no window borders), use
	 * [method@Gtk.Window.set_decorated].
	 *
	 * All top-level windows created by gtk_window_new() are stored
	 * in an internal top-level window list. This list can be obtained
	 * from [func@Gtk.Window.list_toplevels]. Due to GTK keeping a
	 * reference to the window internally, gtk_window_new() does not
	 * return a reference to the caller.
	 *
	 * To delete a `GtkWindow`, call [method@Gtk.Window.destroy].
	 *
	 * Returns: a new `GtkWindow`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindow*) __p);
	}

	/**
	 * Returns the fallback icon name for windows.
	 *
	 * The returned string is owned by GTK and should not
	 * be modified. It is only valid until the next call to
	 * [func@Gtk.Window.set_default_icon_name].
	 *
	 * Returns: the fallback icon name for windows
	 */
	public static string getDefaultIconName()
	{
		return Str.toString(gtk_window_get_default_icon_name());
	}

	/**
	 * Returns a list of all existing toplevel windows.
	 *
	 * If you want to iterate through the list and perform actions involving
	 * callbacks that might destroy the widgets or add new ones, be aware that
	 * the list of toplevels will change and emit the "items-changed" signal.
	 *
	 * Returns: the list
	 *     of toplevel widgets
	 */
	public static ListModelIF getToplevels()
	{
		auto __p = gtk_window_get_toplevels();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Returns a list of all existing toplevel windows.
	 *
	 * The widgets in the list are not individually referenced.
	 * If you want to iterate through the list and perform actions
	 * involving callbacks that might destroy the widgets, you must
	 * call `g_list_foreach (result, (GFunc)g_object_ref, NULL)` first,
	 * and then unref all the widgets afterwards.
	 *
	 * Returns: list of
	 *     toplevel widgets
	 */
	public static ListG listToplevels()
	{
		auto __p = gtk_window_list_toplevels();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Sets whether the window should request startup notification.
	 *
	 * By default, after showing the first `GtkWindow`, GTK calls
	 * [method@Gdk.Display.notify_startup_complete]. Call this function
	 * to disable the automatic startup notification. You might do this
	 * if your first window is a splash screen, and you want to delay
	 * notification until after your real main window has been shown,
	 * for example.
	 *
	 * In that example, you would disable startup notification
	 * temporarily, show your splash screen, then re-enable it so that
	 * showing the main window would automatically result in notification.
	 *
	 * Params:
	 *     setting = %TRUE to automatically do startup notification
	 */
	public static void setAutoStartupNotification(bool setting)
	{
		gtk_window_set_auto_startup_notification(setting);
	}

	/**
	 * Sets an icon to be used as fallback.
	 *
	 * The fallback icon is used for windows that
	 * haven't had [method@Gtk.Window.set_icon_name]
	 * called on them.
	 *
	 * Params:
	 *     name = the name of the themed icon
	 */
	public static void setDefaultIconName(string name)
	{
		gtk_window_set_default_icon_name(Str.toStringz(name));
	}

	/**
	 * Opens or closes the [interactive debugger](running.html#interactive-debugging).
	 *
	 * The debugger offers access to the widget hierarchy of the application
	 * and to useful debugging tools.
	 *
	 * Params:
	 *     enable = %TRUE to enable interactive debugging
	 */
	public static void setInteractiveDebugging(bool enable)
	{
		gtk_window_set_interactive_debugging(enable);
	}

	/**
	 * Requests that the window is closed.
	 *
	 * This is similar to what happens when a window manager
	 * close button is clicked.
	 *
	 * This function can be used with close buttons in custom
	 * titlebars.
	 */
	public void close()
	{
		gtk_window_close(gtkWindow);
	}

	/**
	 * Drop the internal reference GTK holds on toplevel windows.
	 */
	public void destroy()
	{
		gtk_window_destroy(gtkWindow);
	}

	/**
	 * Asks to place @window in the fullscreen state.
	 *
	 * Note that you shouldn’t assume the window is definitely fullscreen
	 * afterward, because other entities (e.g. the user or window manager
	 * unfullscreen it again, and not all window managers honor requests
	 * to fullscreen windows.
	 *
	 * You can track the result of this operation via the
	 * [property@Gdk.Toplevel:state] property, or by listening to
	 * notifications of the [property@Gtk.Window:fullscreened] property.
	 */
	public void fullscreen()
	{
		gtk_window_fullscreen(gtkWindow);
	}

	/**
	 * Asks to place @window in the fullscreen state on the given @monitor.
	 *
	 * Note that you shouldn't assume the window is definitely fullscreen
	 * afterward, or that the windowing system allows fullscreen windows on
	 * any given monitor.
	 *
	 * You can track the result of this operation via the
	 * [property@Gdk.Toplevel:state] property, or by listening to
	 * notifications of the [property@Gtk.Window:fullscreened] property.
	 *
	 * Params:
	 *     monitor = which monitor to go fullscreen on
	 */
	public void fullscreenOnMonitor(MonitorGdk monitor)
	{
		gtk_window_fullscreen_on_monitor(gtkWindow, (monitor is null) ? null : monitor.getMonitorGdkStruct());
	}

	/**
	 * Gets the `GtkApplication` associated with the window.
	 *
	 * Returns: a `GtkApplication`
	 */
	public Application getApplication()
	{
		auto __p = gtk_window_get_application(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Application)(cast(GtkApplication*) __p);
	}

	/**
	 * Gets the child widget of @window.
	 *
	 * Returns: the child widget of @window
	 */
	public Widget getChild()
	{
		auto __p = gtk_window_get_child(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the window has been set to have decorations.
	 *
	 * Returns: %TRUE if the window has been set to have decorations
	 */
	public bool getDecorated()
	{
		return gtk_window_get_decorated(gtkWindow) != 0;
	}

	/**
	 * Gets the default size of the window.
	 *
	 * A value of 0 for the width or height indicates that a default
	 * size has not been explicitly set for that dimension, so the
	 * “natural” size of the window will be used.
	 *
	 * Params:
	 *     width = location to store the default width
	 *     height = location to store the default height
	 */
	public void getDefaultSize(out int width, out int height)
	{
		gtk_window_get_default_size(gtkWindow, &width, &height);
	}

	/**
	 * Returns the default widget for @window.
	 *
	 * Returns: the default widget
	 */
	public Widget getDefaultWidget()
	{
		auto __p = gtk_window_get_default_widget(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the window has been set to have a close button.
	 *
	 * Returns: %TRUE if the window has been set to have a close button
	 */
	public bool getDeletable()
	{
		return gtk_window_get_deletable(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window will be destroyed with its transient parent.
	 *
	 * Returns: %TRUE if the window will be destroyed with its transient parent.
	 */
	public bool getDestroyWithParent()
	{
		return gtk_window_get_destroy_with_parent(gtkWindow) != 0;
	}

	/**
	 * Retrieves the current focused widget within the window.
	 *
	 * Note that this is the widget that would have the focus
	 * if the toplevel window focused; if the toplevel window
	 * is not focused then `gtk_widget_has_focus (widget)` will
	 * not be %TRUE for the widget.
	 *
	 * Returns: the currently focused widget
	 */
	public Widget getFocus()
	{
		auto __p = gtk_window_get_focus(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets whether “focus rectangles” are supposed to be visible.
	 *
	 * Returns: %TRUE if “focus rectangles” are supposed to be visible
	 *     in this window.
	 */
	public bool getFocusVisible()
	{
		return gtk_window_get_focus_visible(gtkWindow) != 0;
	}

	/**
	 * Returns the group for @window.
	 *
	 * If the window has no group, then the default group is returned.
	 *
	 * Returns: the `GtkWindowGroup` for a window
	 *     or the default group
	 */
	public WindowGroup getGroup()
	{
		auto __p = gtk_window_get_group(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WindowGroup)(cast(GtkWindowGroup*) __p);
	}

	/**
	 * Returns whether this window reacts to F10 key presses by
	 * activating a menubar it contains.
	 *
	 * Returns: %TRUE if the window handles F10
	 *
	 * Since: 4.2
	 */
	public bool getHandleMenubarAccel()
	{
		return gtk_window_get_handle_menubar_accel(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window will be hidden when the close button is clicked.
	 *
	 * Returns: %TRUE if the window will be hidden
	 */
	public bool getHideOnClose()
	{
		return gtk_window_get_hide_on_close(gtkWindow) != 0;
	}

	/**
	 * Returns the name of the themed icon for the window.
	 *
	 * Returns: the icon name
	 */
	public string getIconName()
	{
		return Str.toString(gtk_window_get_icon_name(gtkWindow));
	}

	/**
	 * Gets whether mnemonics are supposed to be visible.
	 *
	 * Returns: %TRUE if mnemonics are supposed to be visible
	 *     in this window.
	 */
	public bool getMnemonicsVisible()
	{
		return gtk_window_get_mnemonics_visible(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window is modal.
	 *
	 * Returns: %TRUE if the window is set to be modal and
	 *     establishes a grab when shown
	 */
	public bool getModal()
	{
		return gtk_window_get_modal(gtkWindow) != 0;
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
	 * Retrieves the title of the window.
	 *
	 * Returns: the title of the window
	 */
	public string getTitle()
	{
		return Str.toString(gtk_window_get_title(gtkWindow));
	}

	/**
	 * Returns the custom titlebar that has been set with
	 * gtk_window_set_titlebar().
	 *
	 * Returns: the custom titlebar
	 */
	public Widget getTitlebar()
	{
		auto __p = gtk_window_get_titlebar(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Fetches the transient parent for this window.
	 *
	 * Returns: the transient parent for this window
	 */
	public Window getTransientFor()
	{
		auto __p = gtk_window_get_transient_for(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GtkWindow*) __p);
	}

	/**
	 * Returns whether @window has an explicit window group.
	 *
	 * Returns: %TRUE if @window has an explicit window group.
	 */
	public bool hasGroup()
	{
		return gtk_window_has_group(gtkWindow) != 0;
	}

	/**
	 * Returns whether the window is part of the current active toplevel.
	 *
	 * The active toplevel is the window receiving keystrokes.
	 *
	 * The return value is %TRUE if the window is active toplevel itself.
	 * You might use this function if you wanted to draw a widget
	 * differently in an active window from a widget in an inactive window.
	 *
	 * Returns: %TRUE if the window part of the current active window.
	 */
	public bool isActive()
	{
		return gtk_window_is_active(gtkWindow) != 0;
	}

	/**
	 * Retrieves the current fullscreen state of @window.
	 *
	 * Note that since fullscreening is ultimately handled by the window
	 * manager and happens asynchronously to an application request, you
	 * shouldn’t assume the return value of this function changing
	 * immediately (or at all), as an effect of calling
	 * [method@Gtk.Window.fullscreen] or [method@Gtk.Window.unfullscreen].
	 *
	 * If the window isn't yet mapped, the value returned will whether the
	 * initial requested state is fullscreen.
	 *
	 * Returns: whether the window has a fullscreen state.
	 */
	public bool isFullscreen()
	{
		return gtk_window_is_fullscreen(gtkWindow) != 0;
	}

	/**
	 * Retrieves the current maximized state of @window.
	 *
	 * Note that since maximization is ultimately handled by the window
	 * manager and happens asynchronously to an application request, you
	 * shouldn’t assume the return value of this function changing
	 * immediately (or at all), as an effect of calling
	 * [method@Gtk.Window.maximize] or [method@Gtk.Window.unmaximize].
	 *
	 * If the window isn't yet mapped, the value returned will whether the
	 * initial requested state is maximized.
	 *
	 * Returns: whether the window has a maximized state.
	 */
	public bool isMaximized()
	{
		return gtk_window_is_maximized(gtkWindow) != 0;
	}

	/**
	 * Asks to maximize @window, so that it fills the screen.
	 *
	 * Note that you shouldn’t assume the window is definitely maximized
	 * afterward, because other entities (e.g. the user or window manager
	 * could unmaximize it again, and not all window managers support
	 * maximization.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be maximized when it appears onscreen
	 * initially.
	 *
	 * You can track the result of this operation via the
	 * [property@Gdk.Toplevel:state] property, or by listening to
	 * notifications on the [property@Gtk.Window:maximized]
	 * property.
	 */
	public void maximize()
	{
		gtk_window_maximize(gtkWindow);
	}

	/**
	 * Asks to minimize the specified @window.
	 *
	 * Note that you shouldn’t assume the window is definitely minimized
	 * afterward, because the windowing system might not support this
	 * functionality; other entities (e.g. the user or the window manager
	 * could unminimize it again, or there may not be a window manager in
	 * which case minimization isn’t possible, etc.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be minimized before it ever appears
	 * onscreen.
	 *
	 * You can track result of this operation via the
	 * [property@Gdk.Toplevel:state] property.
	 */
	public void minimize()
	{
		gtk_window_minimize(gtkWindow);
	}

	/**
	 * Presents a window to the user.
	 *
	 * This function should not be used as when it is called,
	 * it is too late to gather a valid timestamp to allow focus
	 * stealing prevention to work correctly.
	 */
	public void present()
	{
		gtk_window_present(gtkWindow);
	}

	/**
	 * Presents a window to the user.
	 *
	 * This may mean raising the window in the stacking order,
	 * unminimizing it, moving it to the current desktop, and/or
	 * giving it the keyboard focus, possibly dependent on the user’s
	 * platform, window manager, and preferences.
	 *
	 * If @window is hidden, this function calls [method@Gtk.Widget.show]
	 * as well.
	 *
	 * This function should be used when the user tries to open a window
	 * that’s already open. Say for example the preferences dialog is
	 * currently open, and the user chooses Preferences from the menu
	 * a second time; use [method@Gtk.Window.present] to move the
	 * already-open dialog where the user can see it.
	 *
	 * Presents a window to the user in response to a user interaction.
	 * The timestamp should be gathered when the window was requested
	 * to be shown (when clicking a link for example), rather than once
	 * the window is ready to be shown.
	 *
	 * Params:
	 *     timestamp = the timestamp of the user interaction (typically a
	 *         button or key press event) which triggered this call
	 */
	public void presentWithTime(uint timestamp)
	{
		gtk_window_present_with_time(gtkWindow, timestamp);
	}

	/**
	 * Sets or unsets the `GtkApplication` associated with the window.
	 *
	 * The application will be kept alive for at least as long as it has
	 * any windows associated with it (see g_application_hold() for a way
	 * to keep it alive without windows).
	 *
	 * Normally, the connection between the application and the window will
	 * remain until the window is destroyed, but you can explicitly remove
	 * it by setting the @application to %NULL.
	 *
	 * This is equivalent to calling [method@Gtk.Application.remove_window]
	 * and/or [method@Gtk.Application.add_window] on the old/new applications
	 * as relevant.
	 *
	 * Params:
	 *     application = a `GtkApplication`, or %NULL to unset
	 */
	public void setApplication(Application application)
	{
		gtk_window_set_application(gtkWindow, (application is null) ? null : application.getGtkApplicationStruct());
	}

	/**
	 * Sets the child widget of @window.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_window_set_child(gtkWindow, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether the window should be decorated.
	 *
	 * By default, windows are decorated with a title bar, resize
	 * controls, etc. Some window managers allow GTK to disable these
	 * decorations, creating a borderless window. If you set the decorated
	 * property to %FALSE using this function, GTK will do its best to
	 * convince the window manager not to decorate the window. Depending on
	 * the system, this function may not have any effect when called on a
	 * window that is already visible, so you should call it before calling
	 * [method@Gtk.Widget.show].
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
	 * Sets the default size of a window.
	 *
	 * If the window’s “natural” size (its size request) is larger than
	 * the default, the default will be ignored.
	 *
	 * Unlike [method@Gtk.Widget.set_size_request], which sets a size
	 * request for a widget and thus would keep users from shrinking
	 * the window, this function only sets the initial size, just as
	 * if the user had resized the window themselves. Users can still
	 * shrink the window again as they normally would. Setting a default
	 * size of -1 means to use the “natural” default size (the size request
	 * of the window).
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
	 * [method@Gtk.Window.get_default_size]. Using the window allocation
	 * directly will not work in all circumstances and can lead to growing
	 * or shrinking windows.
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
	 * Sets the default widget.
	 *
	 * The default widget is the widget that is activated when the user
	 * presses Enter in a dialog (for example).
	 *
	 * Params:
	 *     defaultWidget = widget to be the default
	 *         to unset the default widget for the toplevel
	 */
	public void setDefaultWidget(Widget defaultWidget)
	{
		gtk_window_set_default_widget(gtkWindow, (defaultWidget is null) ? null : defaultWidget.getWidgetStruct());
	}

	/**
	 * Sets whether the window should be deletable.
	 *
	 * By default, windows have a close button in the window frame.
	 * Some  window managers allow GTK to disable this button. If you
	 * set the deletable property to %FALSE using this function, GTK
	 * will do its best to convince the window manager not to show a
	 * close button. Depending on the system, this function may not
	 * have any effect when called on a window that is already visible,
	 * so you should call it before calling [method@Gtk.Widget.show].
	 *
	 * On Windows, this function always works, since there’s no window
	 * manager policy involved.
	 *
	 * Params:
	 *     setting = %TRUE to decorate the window as deletable
	 */
	public void setDeletable(bool setting)
	{
		gtk_window_set_deletable(gtkWindow, setting);
	}

	/**
	 * If @setting is %TRUE, then destroying the transient parent of @window
	 * will also destroy @window itself.
	 *
	 * This is useful for dialogs that shouldn’t persist beyond the lifetime
	 * of the main window they are associated with, for example.
	 *
	 * Params:
	 *     setting = whether to destroy @window with its transient parent
	 */
	public void setDestroyWithParent(bool setting)
	{
		gtk_window_set_destroy_with_parent(gtkWindow, setting);
	}

	/**
	 * Sets the `GdkDisplay` where the @window is displayed.
	 *
	 * If the window is already mapped, it will be unmapped,
	 * and then remapped on the new display.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 */
	public void setDisplay(Display display)
	{
		gtk_window_set_display(gtkWindow, (display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Sets the focus widget.
	 *
	 * If @focus is not the current focus widget, and is focusable,
	 * sets it as the focus widget for the window. If @focus is %NULL,
	 * unsets the focus widget for this window. To set the focus to a
	 * particular widget in the toplevel, it is usually more convenient
	 * to use [method@Gtk.Widget.grab_focus] instead of this function.
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
	 * Sets whether “focus rectangles” are supposed to be visible.
	 *
	 * Params:
	 *     setting = the new value
	 */
	public void setFocusVisible(bool setting)
	{
		gtk_window_set_focus_visible(gtkWindow, setting);
	}

	/**
	 * Sets whether this window should react to F10 key presses
	 * by activating a menubar it contains.
	 *
	 * Params:
	 *     handleMenubarAccel = %TRUE to make @window handle F10
	 *
	 * Since: 4.2
	 */
	public void setHandleMenubarAccel(bool handleMenubarAccel)
	{
		gtk_window_set_handle_menubar_accel(gtkWindow, handleMenubarAccel);
	}

	/**
	 * If @setting is %TRUE, then clicking the close button on the window
	 * will not destroy it, but only hide it.
	 *
	 * Params:
	 *     setting = whether to hide the window when it is closed
	 */
	public void setHideOnClose(bool setting)
	{
		gtk_window_set_hide_on_close(gtkWindow, setting);
	}

	/**
	 * Sets the icon for the window from a named themed icon.
	 *
	 * See the docs for [class@Gtk.IconTheme] for more details.
	 * On some platforms, the window icon is not used at all.
	 *
	 * Note that this has nothing to do with the WM_ICON_NAME
	 * property which is mentioned in the ICCCM.
	 *
	 * Params:
	 *     name = the name of the themed icon
	 */
	public void setIconName(string name)
	{
		gtk_window_set_icon_name(gtkWindow, Str.toStringz(name));
	}

	/**
	 * Sets whether mnemonics are supposed to be visible.
	 *
	 * Params:
	 *     setting = the new value
	 */
	public void setMnemonicsVisible(bool setting)
	{
		gtk_window_set_mnemonics_visible(gtkWindow, setting);
	}

	/**
	 * Sets a window modal or non-modal.
	 *
	 * Modal windows prevent interaction with other windows in the same
	 * application. To keep modal dialogs on top of main application windows,
	 * use [method@Gtk.Window.set_transient_for] to make the dialog transient
	 * for the parent; most window managers will then disallow lowering the
	 * dialog below the parent.
	 *
	 * Params:
	 *     modal = whether the window is modal
	 */
	public void setModal(bool modal)
	{
		gtk_window_set_modal(gtkWindow, modal);
	}

	/**
	 * Sets whether the user can resize a window.
	 *
	 * Windows are user resizable by default.
	 *
	 * Params:
	 *     resizable = %TRUE if the user can resize this window
	 */
	public void setResizable(bool resizable)
	{
		gtk_window_set_resizable(gtkWindow, resizable);
	}

	/**
	 * Sets the startup notification ID.
	 *
	 * Startup notification identifiers are used by desktop environment
	 * to track application startup, to provide user feedback and other
	 * features. This function changes the corresponding property on the
	 * underlying `GdkSurface`.
	 *
	 * Normally, startup identifier is managed automatically and you should
	 * only use this function in special cases like transferring focus from
	 * other processes. You should use this function before calling
	 * [method@Gtk.Window.present] or any equivalent function generating
	 * a window map event.
	 *
	 * This function is only useful on X11, not with other GTK targets.
	 *
	 * Params:
	 *     startupId = a string with startup-notification identifier
	 */
	public void setStartupId(string startupId)
	{
		gtk_window_set_startup_id(gtkWindow, Str.toStringz(startupId));
	}

	/**
	 * Sets the title of the `GtkWindow`.
	 *
	 * The title of a window will be displayed in its title bar; on the
	 * X Window System, the title bar is rendered by the window manager
	 * so exactly how the title appears to users may vary according to a
	 * user’s exact configuration. The title should help a user distinguish
	 * this window from other windows they may have open. A good title might
	 * include the application name and current document filename, for example.
	 *
	 * Passing %NULL does the same as setting the title to an empty string.
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
	 * A typical widget used here is [class@Gtk.HeaderBar], as it
	 * provides various features expected of a titlebar while allowing
	 * the addition of child widgets to it.
	 *
	 * If you set a custom titlebar, GTK will do its best to convince
	 * the window manager not to put its own titlebar on the window.
	 * Depending on the system, this function may not work for a window
	 * that is already visible, so you set the titlebar before calling
	 * [method@Gtk.Widget.show].
	 *
	 * Params:
	 *     titlebar = the widget to use as titlebar
	 */
	public void setTitlebar(Widget titlebar)
	{
		gtk_window_set_titlebar(gtkWindow, (titlebar is null) ? null : titlebar.getWidgetStruct());
	}

	/**
	 * Dialog windows should be set transient for the main application
	 * window they were spawned from. This allows window managers to e.g.
	 * keep the dialog on top of the main window, or center the dialog
	 * over the main window. [ctor@Gtk.Dialog.new_with_buttons] and other
	 * convenience functions in GTK will sometimes call
	 * gtk_window_set_transient_for() on your behalf.
	 *
	 * Passing %NULL for @parent unsets the current transient window.
	 *
	 * On Windows, this function puts the child window on top of the parent,
	 * much as the window manager would have done on X.
	 *
	 * Params:
	 *     parent = parent window
	 */
	public void setTransientFor(Window parent)
	{
		gtk_window_set_transient_for(gtkWindow, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * Asks to remove the fullscreen state for @window, and return to
	 * its previous state.
	 *
	 * Note that you shouldn’t assume the window is definitely not
	 * fullscreen afterward, because other entities (e.g. the user or
	 * window manager could fullscreen it again, and not all window
	 * managers honor requests to unfullscreen windows; normally the
	 * window will end up restored to its normal state. Just don’t
	 * write code that crashes if not.
	 *
	 * You can track the result of this operation via the
	 * [property@Gdk.Toplevel:state] property, or by listening to
	 * notifications of the [property@Gtk.Window:fullscreened] property.
	 */
	public void unfullscreen()
	{
		gtk_window_unfullscreen(gtkWindow);
	}

	/**
	 * Asks to unmaximize @window.
	 *
	 * Note that you shouldn’t assume the window is definitely unmaximized
	 * afterward, because other entities (e.g. the user or window manager
	 * maximize it again, and not all window managers honor requests to
	 * unmaximize.
	 *
	 * You can track the result of this operation via the
	 * [property@Gdk.Toplevel:state] property, or by listening to
	 * notifications on the [property@Gtk.Window:maximized] property.
	 */
	public void unmaximize()
	{
		gtk_window_unmaximize(gtkWindow);
	}

	/**
	 * Asks to unminimize the specified @window.
	 *
	 * Note that you shouldn’t assume the window is definitely unminimized
	 * afterward, because the windowing system might not support this
	 * functionality; other entities (e.g. the user or the window manager
	 * could minimize it again, or there may not be a window manager in
	 * which case minimization isn’t possible, etc.
	 *
	 * You can track result of this operation via the
	 * [property@Gdk.Toplevel:state] property.
	 */
	public void unminimize()
	{
		gtk_window_unminimize(gtkWindow);
	}

	/**
	 * Emitted when the user activates the default widget
	 * of @window.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 */
	gulong addOnActivateDefault(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-default", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user activates the currently focused
	 * widget of @window.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 */
	gulong addOnActivateFocus(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user clicks on the close button of the window.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the signal
	 */
	gulong addOnCloseRequest(bool delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the user enables or disables interactive debugging.
	 *
	 * When @toggle is %TRUE, interactive debugging is toggled on or off,
	 * when it is %FALSE, the debugger will be pointed at the widget
	 * under the pointer.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
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
	 * emitted when the set of accelerators or mnemonics that
	 * are associated with @window changes.
	 */
	gulong addOnKeysChanged(void delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "keys-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
