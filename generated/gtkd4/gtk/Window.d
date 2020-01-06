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
private import gdk.MonitorG;
private import gio.ListModelIF;
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
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.RootIF;
private import gtk.RootT;
private import gtk.Widget;
private import gtk.WindowGroup;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A GtkWindow is a toplevel window which can contain other widgets.
 * Windows normally have decorations that are under the control
 * of the windowing system and allow the user to manipulate the window
 * (resize it, move it, close it,...).
 * 
 * # GtkWindow as GtkBuildable
 * 
 * The GtkWindow implementation of the #GtkBuildable interface supports a
 * custom <accel-groups> element, which supports any number of <group>
 * elements representing the #GtkAccelGroup objects you want to add to
 * your window (synonymous with gtk_window_add_accel_group().
 * 
 * An example of a UI definition fragment with accel groups:
 * |[
 * <object class="GtkWindow">
 * <accel-groups>
 * <group name="accelgroup1"/>
 * </accel-groups>
 * </object>
 * 
 * ...
 * 
 * <object class="GtkAccelGroup" id="accelgroup1"/>
 * ]|
 * 
 * The GtkWindow implementation of the #GtkBuildable interface supports
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
public class Window : Bin, NativeIF, RootIF
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

	// add the Native capabilities
	mixin NativeT!(GtkWindow);

	// add the Root capabilities
	mixin RootT!(GtkWindow);

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
		auto __p = gtk_window_new(type);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindow*) __p);
	}

	/**
	 * Returns the fallback icon name for windows that has been set
	 * with gtk_window_set_default_icon_name(). The returned
	 * string is owned by GTK+ and should not be modified. It
	 * is only valid until the next call to
	 * gtk_window_set_default_icon_name().
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
	 * Returns: the list of toplevel widgets
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
		auto __p = gtk_window_list_toplevels();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
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
	 */
	public static void setAutoStartupNotification(bool setting)
	{
		gtk_window_set_auto_startup_notification(setting);
	}

	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them from a named
	 * themed icon, see gtk_window_set_icon_name().
	 *
	 * Params:
	 *     name = the name of the themed icon
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
	 */
	public static void setInteractiveDebugging(bool enable)
	{
		gtk_window_set_interactive_debugging(enable);
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
	 * window movement grips.
	 *
	 * Params:
	 *     button = mouse button that initiated the drag
	 *     x = X position where the user clicked to initiate the drag, in window coordinates
	 *     y = Y position where the user clicked to initiate the drag
	 *     timestamp = timestamp from the click event that initiated the drag
	 */
	public void beginMoveDrag(int button, int x, int y, uint timestamp)
	{
		gtk_window_begin_move_drag(gtkWindow, button, x, y, timestamp);
	}

	/**
	 * Starts resizing a window. This function is used if an application
	 * has window resizing controls.
	 *
	 * Params:
	 *     edge = position of the resize control
	 *     button = mouse button that initiated the drag
	 *     x = X position where the user clicked to initiate the drag, in window coordinates
	 *     y = Y position where the user clicked to initiate the drag
	 *     timestamp = timestamp from the click event that initiated the drag
	 */
	public void beginResizeDrag(GdkSurfaceEdge edge, int button, int x, int y, uint timestamp)
	{
		gtk_window_begin_resize_drag(gtkWindow, edge, button, x, y, timestamp);
	}

	/**
	 * Requests that the window is closed, similar to what happens
	 * when a window manager close button is clicked.
	 *
	 * This function can be used with close buttons in custom
	 * titlebars.
	 */
	public void close()
	{
		gtk_window_close(gtkWindow);
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
	 * You can track iconification via the #GdkSurface::state property
	 */
	public void fullscreen()
	{
		gtk_window_fullscreen(gtkWindow);
	}

	/**
	 * Asks to place @window in the fullscreen state. Note that you shouldn't assume
	 * the window is definitely full screen afterward.
	 *
	 * You can track iconification via the #GdkSurface::state property
	 *
	 * Params:
	 *     monitor = which monitor to go fullscreen on
	 */
	public void fullscreenOnMonitor(MonitorG monitor)
	{
		gtk_window_fullscreen_on_monitor(gtkWindow, (monitor is null) ? null : monitor.getMonitorGStruct());
	}

	/**
	 * Gets the value set by gtk_window_set_accept_focus().
	 *
	 * Returns: %TRUE if window should receive the input focus
	 */
	public bool getAcceptFocus()
	{
		return gtk_window_get_accept_focus(gtkWindow) != 0;
	}

	/**
	 * Gets the #GtkApplication associated with the window (if any).
	 *
	 * Returns: a #GtkApplication, or %NULL
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
	 * Fetches the attach widget for this window. See
	 * gtk_window_set_attached_to().
	 *
	 * Returns: the widget where the window
	 *     is attached, or %NULL if the window is not attached to any widget.
	 */
	public Widget getAttachedTo()
	{
		auto __p = gtk_window_get_attached_to(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
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
	 * Returns whether the window has been set to have a close button
	 * via gtk_window_set_deletable().
	 *
	 * Returns: %TRUE if the window has been set to have a close button
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
		auto __p = gtk_window_get_focus(gtkWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the value set by gtk_window_set_focus_on_map().
	 *
	 * Returns: %TRUE if window should receive the input focus when
	 *     mapped.
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
	 */
	public bool getFocusVisible()
	{
		return gtk_window_get_focus_visible(gtkWindow) != 0;
	}

	/**
	 * Returns the group for @window or the default group, if
	 * @window is %NULL or if @window does not have an explicit
	 * window group.
	 *
	 * Returns: the #GtkWindowGroup for a window or the default group
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
	 * Returns whether the window will be hidden when the close button is clicked.
	 *
	 * Returns: %TRUE if the window will be hidden
	 */
	public bool getHideOnClose()
	{
		return gtk_window_get_hide_on_close(gtkWindow) != 0;
	}

	/**
	 * Returns the name of the themed icon for the window,
	 * see gtk_window_set_icon_name().
	 *
	 * Returns: the icon name or %NULL if the window has
	 *     no themed icon
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
	 * Gets the value set by gtk_window_set_resizable().
	 *
	 * Returns: %TRUE if the user can resize the window
	 */
	public bool getResizable()
	{
		return gtk_window_get_resizable(gtkWindow) != 0;
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
	 * GtkWindow *window = GTK_WINDOW (gtk_window_new (GTK_WINDOW_TOPLEVEL));
	 * int width = 500;
	 * int height = 300;
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
	 * on_size_allocate (GtkWidget *widget,
	 * const GtkAllocation *allocation,
	 * int baseline)
	 * {
	 * int new_width, new_height;
	 *
	 * gtk_window_get_size (GTK_WINDOW (widget), &new_width, &new_height);
	 *
	 * // ...
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
	 * Fetches the transient parent for this window. See
	 * gtk_window_set_transient_for().
	 *
	 * Returns: the transient parent for this
	 *     window, or %NULL if no transient parent has been set.
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
	 * Gets the type hint for this window. See gtk_window_set_type_hint().
	 *
	 * Returns: the type hint for @window.
	 */
	public GdkSurfaceTypeHint getTypeHint()
	{
		return gtk_window_get_type_hint(gtkWindow);
	}

	/**
	 * Gets the type of the window. See #GtkWindowType.
	 *
	 * Returns: the type of the window
	 */
	public GtkWindowType getWindowType()
	{
		return gtk_window_get_window_type(gtkWindow);
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
	 * (That is, the toplevel window receiving keystrokes.)
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
	 * Retrieves the current maximized state of @window.
	 *
	 * Note that since maximization is ultimately handled by the window
	 * manager and happens asynchronously to an application request, you
	 * shouldn’t assume the return value of this function changing
	 * immediately (or at all), as an effect of calling
	 * gtk_window_maximize() or gtk_window_unmaximize().
	 *
	 * Returns: whether the window has a maximized state.
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
	 * You can track the result of this operation via the #GdkSurface:state
	 * property, or by listening to notifications on the #GtkWindow:is-maximized
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
	 * functionality; other entities (e.g. the user or the [window manager][gtk-X11-arch])
	 * could unminimize it again, or there may not be a window manager in
	 * which case minimization isn’t possible, etc.
	 *
	 * It’s permitted to call this function before showing a window,
	 * in which case the window will be minimized before it ever appears
	 * onscreen.
	 *
	 * You can track result of this operation via the #GdkSurface:state
	 * property.
	 */
	public void minimize()
	{
		gtk_window_minimize(gtkWindow);
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
	 * Presents a window to the user. This function should not be used
	 * as when it is called, it is too late to gather a valid timestamp
	 * to allow focus stealing prevention to work correctly.
	 */
	public void present()
	{
		gtk_window_present(gtkWindow);
	}

	/**
	 * Presents a window to the user. This may mean raising the window
	 * in the stacking order, unminimizing it, moving it to the current
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
	 * Presents a window to the user in response to a user interaction. The
	 * timestamp should be gathered when the window was requested to be shown
	 * (when clicking a link for example), rather than once the window is
	 * ready to be shown.
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
	 * Windows may set a hint asking the desktop environment not to receive
	 * the input focus. This function sets this hint.
	 *
	 * Params:
	 *     setting = %TRUE to let this window receive input focus
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
	 * Sets the default size of a window. If the window’s “natural” size
	 * (its size request) is larger than the default, the default will be
	 * ignored.
	 *
	 * Unlike gtk_widget_set_size_request(), which sets a size request for
	 * a widget and thus would keep users from shrinking the window, this
	 * function only sets the initial size, just as if the user had
	 * resized the window themselves. Users can still shrink the window
	 * again as they normally would. Setting a default size of -1 means to
	 * use the “natural” default size (the size request of the window).
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
	 * The default widget is the widget that’s activated when the user
	 * presses Enter in a dialog (for example). This function sets or
	 * unsets the default widget for a #GtkWindow.
	 *
	 * Params:
	 *     defaultWidget = widget to be the default, or %NULL
	 *         to unset the default widget for the toplevel
	 */
	public void setDefaultWidget(Widget defaultWidget)
	{
		gtk_window_set_default_widget(gtkWindow, (defaultWidget is null) ? null : defaultWidget.getWidgetStruct());
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
	 * Sets the #GdkDisplay where the @window is displayed; if
	 * the window is already mapped, it will be unmapped, and
	 * then remapped on the new display.
	 *
	 * Params:
	 *     display = a #GdkDisplay.
	 */
	public void setDisplay(Display display)
	{
		gtk_window_set_display(gtkWindow, (display is null) ? null : display.getDisplayStruct());
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
	 */
	public void setFocusVisible(bool setting)
	{
		gtk_window_set_focus_visible(gtkWindow, setting);
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
	 */
	public void setHasUserRefCount(bool setting)
	{
		gtk_window_set_has_user_ref_count(gtkWindow, setting);
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
	 * See the docs for #GtkIconTheme for more details.
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
	 * You can track iconification via the #GdkSurface::state property
	 *
	 * Note that, according to the
	 * [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
	 * the above state is mainly meant for user preferences and should not
	 * be used by applications e.g. for drawing attention to their
	 * dialogs.
	 *
	 * Params:
	 *     setting = whether to keep @window above other windows
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
	 * You can track iconification via the #GdkSurface::state property
	 *
	 * Note that, according to the
	 * [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
	 * the above state is mainly meant for user preferences and should not
	 * be used by applications e.g. for drawing attention to their
	 * dialogs.
	 *
	 * Params:
	 *     setting = whether to keep @window below other windows
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
	 * Startup notification identifiers are used by desktop environment to
	 * track application startup, to provide user feedback and other
	 * features. This function changes the corresponding property on the
	 * underlying GdkSurface. Normally, startup identifier is managed
	 * automatically and you should only use this function in special cases
	 * like transferring focus from other processes. You should use this
	 * function before calling gtk_window_present() or any equivalent
	 * function generating a window map event.
	 *
	 * This function is only useful on X11, not with other GTK+ targets.
	 *
	 * Params:
	 *     startupId = a string with startup-notification identifier
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
	 * This function can also be used to attach a new
	 * #GTK_WINDOW_POPUP to a #GTK_WINDOW_TOPLEVEL parent already mapped
	 * on screen so that the #GTK_WINDOW_POPUP will be
	 * positioned relative to the #GTK_WINDOW_TOPLEVEL surface.
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
	public void setTypeHint(GdkSurfaceTypeHint hint)
	{
		gtk_window_set_type_hint(gtkWindow, hint);
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
	 * You can track result of this operation via the #GdkSurface:state
	 * property.
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
	 * You can track iconification via the #GdkSurface::state property
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
	 * You can track the result of this operation via the #GdkSurface:state
	 * property, or by listening to notifications on the #GtkWindow:is-maximized
	 * property.
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
	 * functionality; other entities (e.g. the user or the [window manager][gtk-X11-arch])
	 * could minimize it again, or there may not be a window manager in
	 * which case minimization isn’t possible, etc.
	 *
	 * You can track result of this operation via the #GdkSurface:state
	 * property.
	 */
	public void unminimize()
	{
		gtk_window_unminimize(gtkWindow);
	}

	/**
	 * Asks to unstick @window, which means that it will appear on only
	 * one of the user’s desktops. Note that you shouldn’t assume the
	 * window is definitely unstuck afterward, because other entities
	 * (e.g. the user or [window manager][gtk-X11-arch]) could
	 * stick it again. But normally the window will
	 * end up stuck. Just don’t write code that crashes if not.
	 *
	 * You can track result of this operation via the #GdkSurface:state
	 * property.
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
	 * The ::close-request signal is emitted when the user clicks on the close
	 * button of the window.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the signal
	 */
	gulong addOnCloseRequest(bool delegate(Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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
	 * the gtk_show_uri_on_window() call. If timestamp is not known you can take
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
	 * Throws: GException on failure.
	 */
	public static bool showUriOnWindow(Window parent, string uri, uint timestamp)
	{
		GError* err = null;

		auto __p = gtk_show_uri_on_window((parent is null) ? null : parent.getWindowStruct(), Str.toStringz(uri), timestamp, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
