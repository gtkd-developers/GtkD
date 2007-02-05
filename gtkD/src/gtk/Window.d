/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkWindow.html
 * outPack = gtk
 * outFile = Window
 * strct   = GtkWindow
 * realStrct=
 * ctorStrct=
 * clss    = Window
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_window_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.AccelGroup
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gdk.Screen
 * 	- glib.ListG
 * 	- gdk.Pixbuf
 * 	- gtk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GdkScreen* -> Screen
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.Window;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.AccelGroup;
private import gtk.Widget;
private import gtk.Window;
private import gdk.Screen;
private import glib.ListG;
private import gdk.Pixbuf;
private import gtk.Window;



/**
 * Description
 */
private import gtk.Bin;
public class Window : Bin
{
	
	/** the main Gtk struct */
	protected GtkWindow* gtkWindow;
	
	
	public GtkWindow* getWindowStruct()
	{
		return gtkWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWindow* gtkWindow)
	{
		super(cast(GtkBin*)gtkWindow);
		this.gtkWindow = gtkWindow;
	}
	
	/**
	 * Creates a top level window with a title
	 * Params:
	 * 		title:	The Window title
	 */
	public this(char[] title)
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
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Window)[] onActivateDefaultListeners;
	void addOnActivateDefault(void delegate(Window) dlg)
	{
		if ( !("activate-default" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-default",
			cast(GCallback)&callBackActivateDefault,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["activate-default"] = 1;
		}
		onActivateDefaultListeners ~= dlg;
	}
	extern(C) static void callBackActivateDefault(GtkWindow* windowStruct, Window window)
	{
		bit consumed = false;
		
		foreach ( void delegate(Window) dlg ; window.onActivateDefaultListeners )
		{
			dlg(window);
		}
		
		return consumed;
	}
	
	void delegate(Window)[] onActivateFocusListeners;
	void addOnActivateFocus(void delegate(Window) dlg)
	{
		if ( !("activate-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-focus",
			cast(GCallback)&callBackActivateFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["activate-focus"] = 1;
		}
		onActivateFocusListeners ~= dlg;
	}
	extern(C) static void callBackActivateFocus(GtkWindow* windowStruct, Window window)
	{
		bit consumed = false;
		
		foreach ( void delegate(Window) dlg ; window.onActivateFocusListeners )
		{
			dlg(window);
		}
		
		return consumed;
	}
	
	gboolean delegate(GdkEvent*, Window)[] onFrameListeners;
	void addOnFrame(gboolean delegate(GdkEvent*, Window) dlg)
	{
		if ( !("frame-event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"frame-event",
			cast(GCallback)&callBackFrame,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["frame-event"] = 1;
		}
		onFrameListeners ~= dlg;
	}
	extern(C) static void callBackFrame(GtkWindow* windowStruct, GdkEvent* event, Window window)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GdkEvent*, Window) dlg ; window.onFrameListeners )
		{
			dlg(event, window);
		}
		
		return consumed;
	}
	
	void delegate(Window)[] onKeysChangedListeners;
	void addOnKeysChanged(void delegate(Window) dlg)
	{
		if ( !("keys-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"keys-changed",
			cast(GCallback)&callBackKeysChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["keys-changed"] = 1;
		}
		onKeysChangedListeners ~= dlg;
	}
	extern(C) static void callBackKeysChanged(GtkWindow* windowStruct, Window window)
	{
		bit consumed = false;
		
		foreach ( void delegate(Window) dlg ; window.onKeysChangedListeners )
		{
			dlg(window);
		}
		
		return consumed;
	}
	
	void delegate(GtkDirectionType, Window)[] onMoveFocusListeners;
	void addOnMoveFocus(void delegate(GtkDirectionType, Window) dlg)
	{
		if ( !("move-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-focus",
			cast(GCallback)&callBackMoveFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["move-focus"] = 1;
		}
		onMoveFocusListeners ~= dlg;
	}
	extern(C) static void callBackMoveFocus(GtkWindow* windowStruct, GtkDirectionType arg1, Window window)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkDirectionType, Window) dlg ; window.onMoveFocusListeners )
		{
			dlg(arg1, window);
		}
		
		return consumed;
	}
	
	void delegate(Widget, Window)[] onSetFocusListeners;
	void addOnSetFocus(void delegate(Widget, Window) dlg)
	{
		if ( !("set-focus" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-focus",
			cast(GCallback)&callBackSetFocus,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["set-focus"] = 1;
		}
		onSetFocusListeners ~= dlg;
	}
	extern(C) static void callBackSetFocus(GtkWindow* windowStruct, GtkWidget* widget, Window window)
	{
		bit consumed = false;
		
		foreach ( void delegate(Widget, Window) dlg ; window.onSetFocusListeners )
		{
			dlg(new Widget(widget), window);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkWindow, which is a toplevel window that can
	 * contain other widgets. Nearly always, the type of the window should
	 * be GTK_WINDOW_TOPLEVEL. If you're implementing something like a
	 * popup menu from scratch (which is a bad idea, just use GtkMenu),
	 * you might use GTK_WINDOW_POPUP. GTK_WINDOW_POPUP is not for
	 * dialogs, though in some other toolkits dialogs are called "popups".
	 * In GTK+, GTK_WINDOW_POPUP means a pop-up menu or pop-up tooltip.
	 * On X11, popup windows are not controlled by the window manager.
	 * If you simply want an undecorated window (no window borders), use
	 * gtk_window_set_decorated(), don't use GTK_WINDOW_POPUP.
	 * type:
	 *  type of window
	 * Returns:
	 *  a new GtkWindow.
	 */
	public this (GtkWindowType type)
	{
		// GtkWidget* gtk_window_new (GtkWindowType type);
		this(cast(GtkWindow*)gtk_window_new(type) );
	}
	
	/**
	 * Sets the title of the GtkWindow. The title of a window will be
	 * displayed in its title bar; on the X Window System, the title bar
	 * is rendered by the window
	 * manager, so exactly how the title appears to users may vary
	 * according to a user's exact configuration. The title should help a
	 * user distinguish this window from other windows they may have
	 * open. A good title might include the application name and current
	 * document filename, for example.
	 * window:
	 *  a GtkWindow
	 * title:
	 *  title of the window
	 */
	public void setTitle(char[] title)
	{
		// void gtk_window_set_title (GtkWindow *window,  const gchar *title);
		gtk_window_set_title(gtkWindow, Str.toStringz(title));
	}
	
	/**
	 * Don't use this function. It sets the X Window System "class" and
	 * "name" hints for a window. According to the ICCCM, you should
	 * always set these to the same value for all windows in an
	 * application, and GTK+ sets them to that value by default, so calling
	 * this function is sort of pointless. However, you may want to call
	 * gtk_window_set_role() on each window in your application, for the
	 * benefit of the session manager. Setting the role allows the window
	 * manager to restore window positions when loading a saved session.
	 * window:
	 *  a GtkWindow
	 * wmclass_name:
	 *  window name hint
	 * wmclass_class:
	 *  window class hint
	 */
	public void setWmclass(char[] wmclassName, char[] wmclassClass)
	{
		// void gtk_window_set_wmclass (GtkWindow *window,  const gchar *wmclass_name,  const gchar *wmclass_class);
		gtk_window_set_wmclass(gtkWindow, Str.toStringz(wmclassName), Str.toStringz(wmclassClass));
	}
	
	/**
	 * Warning
	 * gtk_window_set_policy is deprecated and should not be used in newly-written code. Use gtk_window_set_resizable() instead.
	 * Changes how a toplevel window deals with its size request and user resize
	 * attempts. There are really only two reasonable ways to call this function:
	 * gtk_window_set_policy (GTK_WINDOW (window), FALSE, TRUE, FALSE)
	 * means that the window is user-resizable.
	 * gtk_window_set_policy (GTK_WINDOW (window), FALSE, FALSE, TRUE)
	 * means that the window's size is program-controlled, and should simply match
	 * the current size request of the window's children.
	 * The first policy is the default, that is, by default windows are designed to
	 * be resized by users.
	 * The basic ugly truth of this function is that it should be simply:
	 *  void gtk_window_set_resizable (GtkWindow* window, gboolean setting);
	 * ...which is why GTK+ 2.0 introduces gtk_window_set_resizable(), which you
	 * should use instead of gtk_window_set_policy().
	 * If set to TRUE, the allow_grow parameter allows the user to expand the window
	 * beyond the size request of its child widgets. If allow_grow is TRUE, be sure to
	 * check that your child widgets work properly as the window is resized.
	 * A toplevel window will always change size to ensure its child widgets receive
	 * their requested size. This means that if you add child widgets, the toplevel
	 * window will expand to contain them. However, normally the toplevel will not
	 * shrink to fit the size request of its children if it's too large; the
	 * auto_shrink parameter causes the window to shrink when child widgets have too
	 * much space. auto_shrink is normally used with the second of the two window
	 * policies mentioned above. That is, set auto_shrink to TRUE if you want the
	 * window to have a fixed, always-optimal size determined by your program.
	 * Note that auto_shrink doesn't do anything if allow_shrink and allow_grow are
	 * both set to FALSE.
	 * Neither of the two suggested window policies set the allow_shrink parameter to
	 * TRUE. If allow_shrink is TRUE, the user can shrink the window so that its
	 * children do not receive their full size request; this is basically a bad thing,
	 * because most widgets will look wrong if this happens. Furthermore GTK+ has a
	 * tendency to re-expand the window if size is recalculated for any reason. The
	 * upshot is that allow_shrink should always be set to FALSE.
	 * Sometimes when you think you want to use allow_shrink, the real problem is that
	 * some specific child widget is requesting too much space, so the user can't
	 * shrink the window sufficiently. Perhaps you are calling gtk_widget_set_size_request()
	 * on a child widget, and forcing its size request to be too large. Instead of
	 * setting the child's usize, consider using gtk_window_set_default_size() so that
	 * the child gets a larger allocation than it requests.
	 * window:
	 * the window
	 * allow_shrink:
	 * whether the user can shrink the window below its size request
	 * allow_grow:
	 * whether the user can grow the window larger than its size request
	 * auto_shrink:
	 * whether the window automatically snaps back to its size request
	 *  if it's larger
	 */
	public void setPolicy(int allowShrink, int allowGrow, int autoShrink)
	{
		// void gtk_window_set_policy (GtkWindow *window,  gint allow_shrink,  gint allow_grow,  gint auto_shrink);
		gtk_window_set_policy(gtkWindow, allowShrink, allowGrow, autoShrink);
	}
	
	/**
	 * Sets whether the user can resize a window. Windows are user resizable
	 * by default.
	 * window:
	 *  a GtkWindow
	 * resizable:
	 *  TRUE if the user can resize this window
	 */
	public void setResizable(int resizable)
	{
		// void gtk_window_set_resizable (GtkWindow *window,  gboolean resizable);
		gtk_window_set_resizable(gtkWindow, resizable);
	}
	
	/**
	 * Gets the value set by gtk_window_set_resizable().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the user can resize the window
	 */
	public int getResizable()
	{
		// gboolean gtk_window_get_resizable (GtkWindow *window);
		return gtk_window_get_resizable(gtkWindow);
	}
	
	/**
	 * Associate accel_group with window, such that calling
	 * gtk_accel_groups_activate() on window will activate accelerators
	 * in accel_group.
	 * window:
	 *  window to attach accelerator group to
	 * accel_group:
	 *  a GtkAccelGroup
	 */
	public void addAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_window_add_accel_group (GtkWindow *window,  GtkAccelGroup *accel_group);
		gtk_window_add_accel_group(gtkWindow, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Reverses the effects of gtk_window_add_accel_group().
	 * window:
	 *  a GtkWindow
	 * accel_group:
	 *  a GtkAccelGroup
	 */
	public void removeAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_window_remove_accel_group (GtkWindow *window,  GtkAccelGroup *accel_group);
		gtk_window_remove_accel_group(gtkWindow, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	
	/**
	 * Activates the current focused widget within the window.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if a widget got activated.
	 */
	public int activateFocus()
	{
		// gboolean gtk_window_activate_focus (GtkWindow *window);
		return gtk_window_activate_focus(gtkWindow);
	}
	
	/**
	 * Activates the default widget for the window, unless the current
	 * focused widget has been configured to receive the default action
	 * (see GTK_RECEIVES_DEFAULT in GtkWidgetFlags), in which case the
	 * focused widget is activated.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if a widget got activated.
	 */
	public int activateDefault()
	{
		// gboolean gtk_window_activate_default (GtkWindow *window);
		return gtk_window_activate_default(gtkWindow);
	}
	
	/**
	 * Sets a window modal or non-modal. Modal windows prevent interaction
	 * with other windows in the same application. To keep modal dialogs
	 * on top of main application windows, use
	 * gtk_window_set_transient_for() to make the dialog transient for the
	 * parent; most window managers
	 * will then disallow lowering the dialog below the parent.
	 * window:
	 *  a GtkWindow
	 * modal:
	 *  whether the window is modal
	 */
	public void setModal(int modal)
	{
		// void gtk_window_set_modal (GtkWindow *window,  gboolean modal);
		gtk_window_set_modal(gtkWindow, modal);
	}
	
	/**
	 * Sets the default size of a window. If the window's "natural" size
	 * (its size request) is larger than the default, the default will be
	 * ignored. More generally, if the default size does not obey the
	 * geometry hints for the window (gtk_window_set_geometry_hints() can
	 * be used to set these explicitly), the default size will be clamped
	 * to the nearest permitted size.
	 * Unlike gtk_widget_set_size_request(), which sets a size request for
	 * a widget and thus would keep users from shrinking the window, this
	 * function only sets the initial size, just as if the user had
	 * resized the window themselves. Users can still shrink the window
	 * again as they normally would. Setting a default size of -1 means to
	 * use the "natural" default size (the size request of the window).
	 * For more control over a window's initial size and how resizing works,
	 * investigate gtk_window_set_geometry_hints().
	 * For some uses, gtk_window_resize() is a more appropriate function.
	 * gtk_window_resize() changes the current size of the window, rather
	 * than the size to be used on initial display. gtk_window_resize() always
	 * affects the window itself, not the geometry widget.
	 * The default size of a window only affects the first time a window is
	 * shown; if a window is hidden and re-shown, it will remember the size
	 * it had prior to hiding, rather than using the default size.
	 * Windows can't actually be 0x0 in size, they must be at least 1x1, but
	 * passing 0 for width and height is OK, resulting in a 1x1 default size.
	 * window:
	 *  a GtkWindow
	 * width:
	 *  width in pixels, or -1 to unset the default width
	 * height:
	 *  height in pixels, or -1 to unset the default height
	 */
	public void setDefaultSize(int width, int height)
	{
		// void gtk_window_set_default_size (GtkWindow *window,  gint width,  gint height);
		gtk_window_set_default_size(gtkWindow, width, height);
	}
	
	/**
	 * This function sets up hints about how a window can be resized by
	 * the user. You can set a minimum and maximum size; allowed resize
	 * increments (e.g. for xterm, you can only resize by the size of a
	 * character); aspect ratios; and more. See the GdkGeometry struct.
	 * window:
	 *  a GtkWindow
	 * geometry_widget:
	 *  widget the geometry hints will be applied to
	 * geometry:
	 *  struct containing geometry information
	 * geom_mask:
	 *  mask indicating which struct fields should be paid attention to
	 */
	public void setGeometryHints(Widget geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask)
	{
		// void gtk_window_set_geometry_hints (GtkWindow *window,  GtkWidget *geometry_widget,  GdkGeometry *geometry,  GdkWindowHints geom_mask);
		gtk_window_set_geometry_hints(gtkWindow, (geometryWidget is null) ? null : geometryWidget.getWidgetStruct(), geometry, geomMask);
	}
	
	/**
	 * Window gravity defines the meaning of coordinates passed to
	 * gtk_window_move(). See gtk_window_move() and GdkGravity for
	 * more details.
	 * The default window gravity is GDK_GRAVITY_NORTH_WEST which will
	 * typically "do what you mean."
	 * window:
	 *  a GtkWindow
	 * gravity:
	 *  window gravity
	 */
	public void setGravity(GdkGravity gravity)
	{
		// void gtk_window_set_gravity (GtkWindow *window,  GdkGravity gravity);
		gtk_window_set_gravity(gtkWindow, gravity);
	}
	
	/**
	 * Gets the value set by gtk_window_set_gravity().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  window gravity
	 */
	public GdkGravity getGravity()
	{
		// GdkGravity gtk_window_get_gravity (GtkWindow *window);
		return gtk_window_get_gravity(gtkWindow);
	}
	
	/**
	 * Sets a position constraint for this window. If the old or new
	 * constraint is GTK_WIN_POS_CENTER_ALWAYS, this will also cause
	 * the window to be repositioned to satisfy the new constraint.
	 * window:
	 *  a GtkWindow.
	 * position:
	 *  a position constraint.
	 */
	public void setPosition(GtkWindowPosition position)
	{
		// void gtk_window_set_position (GtkWindow *window,  GtkWindowPosition position);
		gtk_window_set_position(gtkWindow, position);
	}
	
	/**
	 * Dialog windows should be set transient for the main application
	 * window they were spawned from. This allows window managers to e.g. keep the
	 * dialog on top of the main window, or center the dialog over the
	 * main window. gtk_dialog_new_with_buttons() and other convenience
	 * functions in GTK+ will sometimes call
	 * gtk_window_set_transient_for() on your behalf.
	 * On Windows, this function will and put the child window
	 * on top of the parent, much as the window manager would have
	 * done on X.
	 * window:
	 *  a GtkWindow
	 * parent:
	 *  parent window
	 */
	public void setTransientFor(Window parent)
	{
		// void gtk_window_set_transient_for (GtkWindow *window,  GtkWindow *parent);
		gtk_window_set_transient_for(gtkWindow, (parent is null) ? null : parent.getWindowStruct());
	}
	
	/**
	 * If setting is TRUE, then destroying the transient parent of window
	 * will also destroy window itself. This is useful for dialogs that
	 * shouldn't persist beyond the lifetime of the main window they're
	 * associated with, for example.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  whether to destroy window with its transient parent
	 */
	public void setDestroyWithParent(int setting)
	{
		// void gtk_window_set_destroy_with_parent  (GtkWindow *window,  gboolean setting);
		gtk_window_set_destroy_with_parent(gtkWindow, setting);
	}
	
	/**
	 * Sets the GdkScreen where the window is displayed; if
	 * the window is already mapped, it will be unmapped, and
	 * then remapped on the new screen.
	 * window:
	 *  a GtkWindow.
	 * screen:
	 *  a GdkScreen.
	 * Since 2.2
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_window_set_screen (GtkWindow *window,  GdkScreen *screen);
		gtk_window_set_screen(gtkWindow, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the GdkScreen associated with window.
	 * window:
	 *  a GtkWindow.
	 * Returns:
	 *  a GdkScreen.
	 * Since 2.2
	 */
	public Screen getScreen()
	{
		// GdkScreen* gtk_window_get_screen (GtkWindow *window);
		return new Screen( gtk_window_get_screen(gtkWindow) );
	}
	
	/**
	 * Returns whether the window is part of the current active toplevel.
	 * (That is, the toplevel window receiving keystrokes.)
	 * The return value is TRUE if the window is active toplevel
	 * itself, but also if it is, say, a GtkPlug embedded in the active toplevel.
	 * You might use this function if you wanted to draw a widget
	 * differently in an active window from a widget in an inactive window.
	 * See gtk_window_has_toplevel_focus()
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the window part of the current active window.
	 * Since 2.4
	 */
	public int isActive()
	{
		// gboolean gtk_window_is_active (GtkWindow *window);
		return gtk_window_is_active(gtkWindow);
	}
	
	/**
	 * Returns whether the input focus is within this GtkWindow.
	 * For real toplevel windows, this is identical to gtk_window_is_active(),
	 * but for embedded windows, like GtkPlug, the results will differ.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the input focus is within this GtkWindow
	 * Since 2.4
	 */
	public int hasToplevelFocus()
	{
		// gboolean gtk_window_has_toplevel_focus (GtkWindow *window);
		return gtk_window_has_toplevel_focus(gtkWindow);
	}
	
	/**
	 * Returns a list of all existing toplevel windows. The widgets
	 * in the list are not individually referenced. If you want
	 * to iterate through the list and perform actions involving
	 * callbacks that might destroy the widgets, you must call
	 * g_list_foreach (result, (GFunc)g_object_ref, NULL) first, and
	 * then unref all the widgets afterwards.
	 * Returns:
	 *  list of toplevel widgets
	 */
	public static ListG listToplevels()
	{
		// GList* gtk_window_list_toplevels (void);
		return new ListG( gtk_window_list_toplevels() );
	}
	
	/**
	 * Adds a mnemonic to this window.
	 * window:
	 *  a GtkWindow
	 * keyval:
	 *  the mnemonic
	 * target:
	 *  the widget that gets activated by the mnemonic
	 */
	public void addMnemonic(uint keyval, Widget target)
	{
		// void gtk_window_add_mnemonic (GtkWindow *window,  guint keyval,  GtkWidget *target);
		gtk_window_add_mnemonic(gtkWindow, keyval, (target is null) ? null : target.getWidgetStruct());
	}
	
	/**
	 * Removes a mnemonic from this window.
	 * window:
	 *  a GtkWindow
	 * keyval:
	 *  the mnemonic
	 * target:
	 *  the widget that gets activated by the mnemonic
	 */
	public void removeMnemonic(uint keyval, Widget target)
	{
		// void gtk_window_remove_mnemonic (GtkWindow *window,  guint keyval,  GtkWidget *target);
		gtk_window_remove_mnemonic(gtkWindow, keyval, (target is null) ? null : target.getWidgetStruct());
	}
	
	/**
	 * Activates the targets associated with the mnemonic.
	 * window:
	 *  a GtkWindow
	 * keyval:
	 *  the mnemonic
	 * modifier:
	 *  the modifiers
	 * Returns:
	 *  TRUE if the activation is done.
	 */
	public int mnemonicActivate(uint keyval, GdkModifierType modifier)
	{
		// gboolean gtk_window_mnemonic_activate (GtkWindow *window,  guint keyval,  GdkModifierType modifier);
		return gtk_window_mnemonic_activate(gtkWindow, keyval, modifier);
	}
	
	/**
	 * Activates mnemonics and accelerators for this GtkWindow. This is normally
	 * called by the default ::key_press_event handler for toplevel windows,
	 * however in some cases it may be useful to call this directly when
	 * overriding the standard key handling for a toplevel window.
	 * window:
	 *  a GtkWindow
	 * event:
	 *  a GdkEventKey
	 * Returns:
	 *  TRUE if a mnemonic or accelerator was found and activated.
	 */
	public int activateKey(GdkEventKey* event)
	{
		// gboolean gtk_window_activate_key (GtkWindow *window,  GdkEventKey *event);
		return gtk_window_activate_key(gtkWindow, event);
	}
	
	/**
	 * Propagate a key press or release event to the focus widget and
	 * up the focus container chain until a widget handles event.
	 * This is normally called by the default ::key_press_event and
	 * ::key_release_event handlers for toplevel windows,
	 * however in some cases it may be useful to call this directly when
	 * overriding the standard key handling for a toplevel window.
	 * window:
	 *  a GtkWindow
	 * event:
	 *  a GdkEventKey
	 * Returns:
	 *  TRUE if a widget in the focus chain handled the event.
	 */
	public int propagateKeyEvent(GdkEventKey* event)
	{
		// gboolean gtk_window_propagate_key_event (GtkWindow *window,  GdkEventKey *event);
		return gtk_window_propagate_key_event(gtkWindow, event);
	}
	
	/**
	 * Retrieves the current focused widget within the window.
	 * Note that this is the widget that would have the focus
	 * if the toplevel window focused; if the toplevel window
	 * is not focused then GTK_WIDGET_HAS_FOCUS (widget) will
	 * not be TRUE for the widget.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the currently focused widget, or NULL if there is none.
	 */
	public Widget getFocus()
	{
		// GtkWidget* gtk_window_get_focus (GtkWindow *window);
		return new Widget( gtk_window_get_focus(gtkWindow) );
	}
	
	/**
	 * If focus is not the current focus widget, and is focusable, sets
	 * it as the focus widget for the window. If focus is NULL, unsets
	 * the focus widget for this window. To set the focus to a particular
	 * widget in the toplevel, it is usually more convenient to use
	 * gtk_widget_grab_focus() instead of this function.
	 * window:
	 *  a GtkWindow
	 * focus:
	 *  widget to be the new focus widget, or NULL to unset
	 *  any focus widget for the toplevel window.
	 */
	public void setFocus(Widget focus)
	{
		// void gtk_window_set_focus (GtkWindow *window,  GtkWidget *focus);
		gtk_window_set_focus(gtkWindow, (focus is null) ? null : focus.getWidgetStruct());
	}
	
	/**
	 * The default widget is the widget that's activated when the user
	 * presses Enter in a dialog (for example). This function sets or
	 * unsets the default widget for a GtkWindow about. When setting
	 * (rather than unsetting) the default widget it's generally easier to
	 * call gtk_widget_grab_focus() on the widget. Before making a widget
	 * the default widget, you must set the GTK_CAN_DEFAULT flag on the
	 * widget you'd like to make the default using GTK_WIDGET_SET_FLAGS().
	 * window:
	 *  a GtkWindow
	 * default_widget:
	 *  widget to be the default, or NULL to unset the
	 *  default widget for the toplevel.
	 */
	public void setDefault(Widget defaultWidget)
	{
		// void gtk_window_set_default (GtkWindow *window,  GtkWidget *default_widget);
		gtk_window_set_default(gtkWindow, (defaultWidget is null) ? null : defaultWidget.getWidgetStruct());
	}
	
	/**
	 * Presents a window to the user. This may mean raising the window
	 * in the stacking order, deiconifying it, moving it to the current
	 * desktop, and/or giving it the keyboard focus, possibly dependent
	 * on the user's platform, window manager, and preferences.
	 * If window is hidden, this function calls gtk_widget_show()
	 * as well.
	 * This function should be used when the user tries to open a window
	 * that's already open. Say for example the preferences dialog is
	 * currently open, and the user chooses Preferences from the menu
	 * a second time; use gtk_window_present() to move the already-open dialog
	 * where the user can see it.
	 * If you are calling this function in response to a user interaction,
	 * it is preferable to use gtk_window_present_with_time().
	 * window:
	 *  a GtkWindow
	 */
	public void present()
	{
		// void gtk_window_present (GtkWindow *window);
		gtk_window_present(gtkWindow);
	}
	
	/**
	 * Presents a window to the user in response to a user interaction.
	 * If you need to present a window without a timestamp, use
	 * gtk_window_present(). See gtk_window_present() for details.
	 * window:
	 *  a GtkWindow
	 * timestamp:
	 *  the timestamp of the user interaction (typically a
	 *  button or key press event) which triggered this call
	 * Since 2.8
	 */
	public void presentWithTime(uint timestamp)
	{
		// void gtk_window_present_with_time (GtkWindow *window,  guint32 timestamp);
		gtk_window_present_with_time(gtkWindow, timestamp);
	}
	
	/**
	 * Asks to iconify (i.e. minimize) the specified window. Note that
	 * you shouldn't assume the window is definitely iconified afterward,
	 * because other entities (e.g. the user or window manager) could deiconify it
	 * again, or there may not be a window manager in which case
	 * iconification isn't possible, etc. But normally the window will end
	 * up iconified. Just don't write code that crashes if not.
	 * It's permitted to call this function before showing a window,
	 * in which case the window will be iconified before it ever appears
	 * onscreen.
	 * You can track iconification via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void iconify()
	{
		// void gtk_window_iconify (GtkWindow *window);
		gtk_window_iconify(gtkWindow);
	}
	
	/**
	 * Asks to deiconify (i.e. unminimize) the specified window. Note
	 * that you shouldn't assume the window is definitely deiconified
	 * afterward, because other entities (e.g. the user or window manager) could iconify it
	 * again before your code which assumes deiconification gets to run.
	 * You can track iconification via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void deiconify()
	{
		// void gtk_window_deiconify (GtkWindow *window);
		gtk_window_deiconify(gtkWindow);
	}
	
	/**
	 * Asks to stick window, which means that it will appear on all user
	 * desktops. Note that you shouldn't assume the window is definitely
	 * stuck afterward, because other entities (e.g. the user or window manager) could unstick it
	 * again, and some window managers do not support sticking
	 * windows. But normally the window will end up stuck. Just don't
	 * write code that crashes if not.
	 * It's permitted to call this function before showing a window.
	 * You can track stickiness via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void stick()
	{
		// void gtk_window_stick (GtkWindow *window);
		gtk_window_stick(gtkWindow);
	}
	
	/**
	 * Asks to unstick window, which means that it will appear on only
	 * one of the user's desktops. Note that you shouldn't assume the
	 * window is definitely unstuck afterward, because other entities
	 * (e.g. the user or window
	 * manager) could stick it again. But normally the window will
	 * end up stuck. Just don't write code that crashes if not.
	 * You can track stickiness via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void unstick()
	{
		// void gtk_window_unstick (GtkWindow *window);
		gtk_window_unstick(gtkWindow);
	}
	
	/**
	 * Asks to maximize window, so that it becomes full-screen. Note that
	 * you shouldn't assume the window is definitely maximized afterward,
	 * because other entities (e.g. the user or window manager) could unmaximize it
	 * again, and not all window managers support maximization. But
	 * normally the window will end up maximized. Just don't write code
	 * that crashes if not.
	 * It's permitted to call this function before showing a window,
	 * in which case the window will be maximized when it appears onscreen
	 * initially.
	 * You can track maximization via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void maximize()
	{
		// void gtk_window_maximize (GtkWindow *window);
		gtk_window_maximize(gtkWindow);
	}
	
	/**
	 * Asks to unmaximize window. Note that you shouldn't assume the
	 * window is definitely unmaximized afterward, because other entities
	 * (e.g. the user or window
	 * manager) could maximize it again, and not all window
	 * managers honor requests to unmaximize. But normally the window will
	 * end up unmaximized. Just don't write code that crashes if not.
	 * You can track maximization via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 */
	public void unmaximize()
	{
		// void gtk_window_unmaximize (GtkWindow *window);
		gtk_window_unmaximize(gtkWindow);
	}
	
	/**
	 * Asks to place window in the fullscreen state. Note that you
	 * shouldn't assume the window is definitely full screen afterward,
	 * because other entities (e.g. the user or window manager) could unfullscreen it
	 * again, and not all window managers honor requests to fullscreen
	 * windows. But normally the window will end up fullscreen. Just
	 * don't write code that crashes if not.
	 * You can track the fullscreen state via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 * Since 2.2
	 */
	public void fullscreen()
	{
		// void gtk_window_fullscreen (GtkWindow *window);
		gtk_window_fullscreen(gtkWindow);
	}
	
	/**
	 * Asks to toggle off the fullscreen state for window. Note that you
	 * shouldn't assume the window is definitely not full screen
	 * afterward, because other entities (e.g. the user or window manager) could fullscreen it
	 * again, and not all window managers honor requests to unfullscreen
	 * windows. But normally the window will end up restored to its normal
	 * state. Just don't write code that crashes if not.
	 * You can track the fullscreen state via the "window_state_event" signal
	 * on GtkWidget.
	 * window:
	 *  a GtkWindow
	 * Since 2.2
	 */
	public void unfullscreen()
	{
		// void gtk_window_unfullscreen (GtkWindow *window);
		gtk_window_unfullscreen(gtkWindow);
	}
	
	/**
	 * Asks to keep window above, so that it stays on top. Note that
	 * you shouldn't assume the window is definitely above afterward,
	 * because other entities (e.g. the user or window manager) could not keep it above,
	 * and not all window managers support keeping windows above. But
	 * normally the window will end kept above. Just don't write code
	 * that crashes if not.
	 * It's permitted to call this function before showing a window,
	 * in which case the window will be kept above when it appears onscreen
	 * initially.
	 * You can track the above state via the "window_state_event" signal
	 * on GtkWidget.
	 * Note that, according to the Extended Window
	 * Manager Hints specification, the above state is mainly meant
	 * for user preferences and should not be used by applications e.g. for
	 * drawing attention to their dialogs.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  whether to keep window above other windows
	 * Since 2.4
	 */
	public void setKeepAbove(int setting)
	{
		// void gtk_window_set_keep_above (GtkWindow *window,  gboolean setting);
		gtk_window_set_keep_above(gtkWindow, setting);
	}
	
	/**
	 * Asks to keep window below, so that it stays in bottom. Note that
	 * you shouldn't assume the window is definitely below afterward,
	 * because other entities (e.g. the user or window manager) could not keep it below,
	 * and not all window managers support putting windows below. But
	 * normally the window will be kept below. Just don't write code
	 * that crashes if not.
	 * It's permitted to call this function before showing a window,
	 * in which case the window will be kept below when it appears onscreen
	 * initially.
	 * You can track the below state via the "window_state_event" signal
	 * on GtkWidget.
	 * Note that, according to the Extended Window
	 * Manager Hints specification, the above state is mainly meant
	 * for user preferences and should not be used by applications e.g. for
	 * drawing attention to their dialogs.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  whether to keep window below other windows
	 * Since 2.4
	 */
	public void setKeepBelow(int setting)
	{
		// void gtk_window_set_keep_below (GtkWindow *window,  gboolean setting);
		gtk_window_set_keep_below(gtkWindow, setting);
	}
	
	/**
	 * Starts resizing a window. This function is used if an application
	 * has window resizing controls. When GDK can support it, the resize
	 * will be done using the standard mechanism for the window manager or windowing
	 * system. Otherwise, GDK will try to emulate window resizing,
	 * potentially not all that well, depending on the windowing system.
	 * window:
	 *  a GtkWindow
	 * edge:
	 *  position of the resize control
	 * button:
	 *  mouse button that initiated the drag
	 * root_x:
	 *  X position where the user clicked to initiate the drag, in root window coordinates
	 * root_y:
	 *  Y position where the user clicked to initiate the drag
	 * timestamp:
	 *  timestamp from the click event that initiated the drag
	 */
	public void beginResizeDrag(GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp)
	{
		// void gtk_window_begin_resize_drag (GtkWindow *window,  GdkWindowEdge edge,  gint button,  gint root_x,  gint root_y,  guint32 timestamp);
		gtk_window_begin_resize_drag(gtkWindow, edge, button, rootX, rootY, timestamp);
	}
	
	/**
	 * Starts moving a window. This function is used if an application has
	 * window movement grips. When GDK can support it, the window movement
	 * will be done using the standard mechanism for the window manager or windowing
	 * system. Otherwise, GDK will try to emulate window movement,
	 * potentially not all that well, depending on the windowing system.
	 * window:
	 *  a GtkWindow
	 * button:
	 *  mouse button that initiated the drag
	 * root_x:
	 *  X position where the user clicked to initiate the drag, in root window coordinates
	 * root_y:
	 *  Y position where the user clicked to initiate the drag
	 * timestamp:
	 *  timestamp from the click event that initiated the drag
	 */
	public void beginMoveDrag(int button, int rootX, int rootY, uint timestamp)
	{
		// void gtk_window_begin_move_drag (GtkWindow *window,  gint button,  gint root_x,  gint root_y,  guint32 timestamp);
		gtk_window_begin_move_drag(gtkWindow, button, rootX, rootY, timestamp);
	}
	
	/**
	 * By default, windows are decorated with a title bar, resize
	 * controls, etc. Some window
	 * managers allow GTK+ to disable these decorations, creating a
	 * borderless window. If you set the decorated property to FALSE
	 * using this function, GTK+ will do its best to convince the window
	 * manager not to decorate the window. Depending on the system, this
	 * function may not have any effect when called on a window that is
	 * already visible, so you should call it before calling gtk_window_show().
	 * On Windows, this function always works, since there's no window manager
	 * policy involved.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to decorate the window
	 */
	public void setDecorated(int setting)
	{
		// void gtk_window_set_decorated (GtkWindow *window,  gboolean setting);
		gtk_window_set_decorated(gtkWindow, setting);
	}
	
	/**
	 * By default, windows have a close button in the window frame. Some
	 * window managers allow GTK+ to
	 * disable this button. If you set the deletable property to FALSE
	 * using this function, GTK+ will do its best to convince the window
	 * manager not to show a close button. Depending on the system, this
	 * function may not have any effect when called on a window that is
	 * already visible, so you should call it before calling gtk_window_show().
	 * On Windows, this function always works, since there's no window manager
	 * policy involved.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to decorate the window as deletable
	 * Since 2.10
	 */
	public void setDeletable(int setting)
	{
		// void gtk_window_set_deletable (GtkWindow *window,  gboolean setting);
		gtk_window_set_deletable(gtkWindow, setting);
	}
	
	/**
	 * (Note: this is a special-purpose function intended for the framebuffer
	 *  port; see gtk_window_set_has_frame(). It will have no effect on the
	 *  window border drawn by the window manager, which is the normal
	 *  case when using the X Window system.)
	 * For windows with frames (see gtk_window_set_has_frame()) this function
	 * can be used to change the size of the frame border.
	 * window:
	 *  a GtkWindow that has a frame
	 * left:
	 *  The width of the left border
	 * top:
	 *  The height of the top border
	 * right:
	 *  The width of the right border
	 * bottom:
	 *  The height of the bottom border
	 */
	public void setFrameDimensions(int left, int top, int right, int bottom)
	{
		// void gtk_window_set_frame_dimensions (GtkWindow *window,  gint left,  gint top,  gint right,  gint bottom);
		gtk_window_set_frame_dimensions(gtkWindow, left, top, right, bottom);
	}
	
	/**
	 * (Note: this is a special-purpose function for the framebuffer port,
	 *  that causes GTK+ to draw its own window border. For most applications,
	 *  you want gtk_window_set_decorated() instead, which tells the window
	 *  manager whether to draw the window border.)
	 * If this function is called on a window with setting of TRUE, before
	 * it is realized or showed, it will have a "frame" window around
	 * window->window, accessible in window->frame. Using the signal
	 * frame_event you can receive all events targeted at the frame.
	 * This function is used by the linux-fb port to implement managed
	 * windows, but it could conceivably be used by X-programs that
	 * want to do their own window decorations.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  a boolean
	 */
	public void setHasFrame(int setting)
	{
		// void gtk_window_set_has_frame (GtkWindow *window,  gboolean setting);
		gtk_window_set_has_frame(gtkWindow, setting);
	}
	
	/**
	 * Sets the mnemonic modifier for this window.
	 * window:
	 *  a GtkWindow
	 * modifier:
	 *  the modifier mask used to activate
	 *  mnemonics on this window.
	 */
	public void setMnemonicModifier(GdkModifierType modifier)
	{
		// void gtk_window_set_mnemonic_modifier  (GtkWindow *window,  GdkModifierType modifier);
		gtk_window_set_mnemonic_modifier(gtkWindow, modifier);
	}
	
	/**
	 * This function is only useful on X11, not with other GTK+ targets.
	 * In combination with the window title, the window role allows a
	 * window manager to identify "the
	 * same" window when an application is restarted. So for example you
	 * might set the "toolbox" role on your app's toolbox window, so that
	 * when the user restarts their session, the window manager can put
	 * the toolbox back in the same place.
	 * If a window already has a unique title, you don't need to set the
	 * role, since the WM can use the title to identify the window when
	 * restoring the session.
	 * window:
	 *  a GtkWindow
	 * role:
	 *  unique identifier for the window to be used when restoring a session
	 */
	public void setRole(char[] role)
	{
		// void gtk_window_set_role (GtkWindow *window,  const gchar *role);
		gtk_window_set_role(gtkWindow, Str.toStringz(role));
	}
	
	/**
	 * By setting the type hint for the window, you allow the window
	 * manager to decorate and handle the window in a way which is
	 * suitable to the function of the window in your application.
	 * This function should be called before the window becomes visible.
	 * gtk_dialog_new_with_buttons() and other convenience functions in GTK+
	 * will sometimes call gtk_window_set_type_hint() on your behalf.
	 * window:
	 *  a GtkWindow
	 * hint:
	 *  the window type
	 */
	public void setTypeHint(GdkWindowTypeHint hint)
	{
		// void gtk_window_set_type_hint (GtkWindow *window,  GdkWindowTypeHint hint);
		gtk_window_set_type_hint(gtkWindow, hint);
	}
	
	/**
	 * Windows may set a hint asking the desktop environment not to display
	 * the window in the task bar. This function sets this hint.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to keep this window from appearing in the task bar
	 * Since 2.2
	 */
	public void setSkipTaskbarHint(int setting)
	{
		// void gtk_window_set_skip_taskbar_hint  (GtkWindow *window,  gboolean setting);
		gtk_window_set_skip_taskbar_hint(gtkWindow, setting);
	}
	
	/**
	 * Windows may set a hint asking the desktop environment not to display
	 * the window in the pager. This function sets this hint.
	 * (A "pager" is any desktop navigation tool such as a workspace
	 * switcher that displays a thumbnail representation of the windows
	 * on the screen.)
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to keep this window from appearing in the pager
	 * Since 2.2
	 */
	public void setSkipPagerHint(int setting)
	{
		// void gtk_window_set_skip_pager_hint (GtkWindow *window,  gboolean setting);
		gtk_window_set_skip_pager_hint(gtkWindow, setting);
	}
	
	/**
	 * Windows may set a hint asking the desktop environment to draw
	 * the users attention to the window. This function sets this hint.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to mark this window as urgent
	 * Since 2.8
	 */
	public void setUrgencyHint(int setting)
	{
		// void gtk_window_set_urgency_hint (GtkWindow *window,  gboolean setting);
		gtk_window_set_urgency_hint(gtkWindow, setting);
	}
	
	/**
	 * Windows may set a hint asking the desktop environment not to receive
	 * the input focus. This function sets this hint.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to let this window receive input focus
	 * Since 2.4
	 */
	public void setAcceptFocus(int setting)
	{
		// void gtk_window_set_accept_focus (GtkWindow *window,  gboolean setting);
		gtk_window_set_accept_focus(gtkWindow, setting);
	}
	
	/**
	 * Windows may set a hint asking the desktop environment not to receive
	 * the input focus when the window is mapped. This function sets this
	 * hint.
	 * window:
	 *  a GtkWindow
	 * setting:
	 *  TRUE to let this window receive input focus on map
	 * Since 2.6
	 */
	public void setFocusOnMap(int setting)
	{
		// void gtk_window_set_focus_on_map (GtkWindow *window,  gboolean setting);
		gtk_window_set_focus_on_map(gtkWindow, setting);
	}
	
	/**
	 * Returns whether the window has been set to have decorations
	 * such as a title bar via gtk_window_set_decorated().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the window has been set to have decorations
	 */
	public int getDecorated()
	{
		// gboolean gtk_window_get_decorated (GtkWindow *window);
		return gtk_window_get_decorated(gtkWindow);
	}
	
	/**
	 * Returns whether the window has been set to have a close button
	 * via gtk_window_set_deletable().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the window has been set to have a close button
	 * Since 2.10
	 */
	public int getDeletable()
	{
		// gboolean gtk_window_get_deletable (GtkWindow *window);
		return gtk_window_get_deletable(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_default_icon_list().
	 * The list is a copy and should be freed with g_list_free(),
	 * but the pixbufs in the list have not had their reference count
	 * incremented.
	 * Returns:
	 *  copy of default icon list
	 */
	public static ListG getDefaultIconList()
	{
		// GList* gtk_window_get_default_icon_list  (void);
		return new ListG( gtk_window_get_default_icon_list() );
	}
	
	/**
	 * Gets the default size of the window. A value of -1 for the width or
	 * height indicates that a default size has not been explicitly set
	 * for that dimension, so the "natural" size of the window will be
	 * used.
	 * window:
	 *  a GtkWindow
	 * width:
	 *  location to store the default width, or NULL
	 * height:
	 *  location to store the default height, or NULL
	 */
	public void getDefaultSize(int* width, int* height)
	{
		// void gtk_window_get_default_size (GtkWindow *window,  gint *width,  gint *height);
		gtk_window_get_default_size(gtkWindow, width, height);
	}
	
	/**
	 * Returns whether the window will be destroyed with its transient parent. See
	 * gtk_window_set_destroy_with_parent().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the window will be destroyed with its transient parent.
	 */
	public int getDestroyWithParent()
	{
		// gboolean gtk_window_get_destroy_with_parent  (GtkWindow *window);
		return gtk_window_get_destroy_with_parent(gtkWindow);
	}
	
	/**
	 * (Note: this is a special-purpose function intended for the
	 *  framebuffer port; see gtk_window_set_has_frame(). It will not
	 *  return the size of the window border drawn by the window manager, which is the normal
	 *  case when using a windowing system. See
	 *  gdk_window_get_frame_extents() to get the standard window border
	 *  extents.)
	 * Retrieves the dimensions of the frame window for this toplevel.
	 * See gtk_window_set_has_frame(), gtk_window_set_frame_dimensions().
	 * window:
	 *  a GtkWindow
	 * left:
	 *  location to store the width of the frame at the left, or NULL
	 * top:
	 *  location to store the height of the frame at the top, or NULL
	 * right:
	 *  location to store the width of the frame at the returns, or NULL
	 * bottom:
	 *  location to store the height of the frame at the bottom, or NULL
	 */
	public void getFrameDimensions(int* left, int* top, int* right, int* bottom)
	{
		// void gtk_window_get_frame_dimensions (GtkWindow *window,  gint *left,  gint *top,  gint *right,  gint *bottom);
		gtk_window_get_frame_dimensions(gtkWindow, left, top, right, bottom);
	}
	
	/**
	 * Accessor for whether the window has a frame window exterior to
	 * window->window. Gets the value set by gtk_window_set_has_frame().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if a frame has been added to the window
	 *  via gtk_window_set_has_frame().
	 */
	public int getHasFrame()
	{
		// gboolean gtk_window_get_has_frame (GtkWindow *window);
		return gtk_window_get_has_frame(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_icon() (or if you've
	 * called gtk_window_set_icon_list(), gets the first icon in
	 * the icon list).
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  icon for window
	 */
	public Pixbuf getIcon()
	{
		// GdkPixbuf* gtk_window_get_icon (GtkWindow *window);
		return new Pixbuf( gtk_window_get_icon(gtkWindow) );
	}
	
	/**
	 * Retrieves the list of icons set by gtk_window_set_icon_list().
	 * The list is copied, but the reference count on each
	 * member won't be incremented.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  copy of window's icon list
	 */
	public ListG getIconList()
	{
		// GList* gtk_window_get_icon_list (GtkWindow *window);
		return new ListG( gtk_window_get_icon_list(gtkWindow) );
	}
	
	/**
	 * Returns the name of the themed icon for the window,
	 * see gtk_window_set_icon_name().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the icon name or NULL if the window has
	 * no themed icon
	 * Since 2.6
	 */
	public char[] getIconName()
	{
		// gchar* gtk_window_get_icon_name (GtkWindow *window);
		return Str.toString(gtk_window_get_icon_name(gtkWindow) );
	}
	
	/**
	 * Returns the mnemonic modifier for this window. See
	 * gtk_window_set_mnemonic_modifier().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the modifier mask used to activate
	 *  mnemonics on this window.
	 */
	public GdkModifierType getMnemonicModifier()
	{
		// GdkModifierType gtk_window_get_mnemonic_modifier  (GtkWindow *window);
		return gtk_window_get_mnemonic_modifier(gtkWindow);
	}
	
	/**
	 * Returns whether the window is modal. See gtk_window_set_modal().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if the window is set to be modal and
	 *  establishes a grab when shown
	 */
	public int getModal()
	{
		// gboolean gtk_window_get_modal (GtkWindow *window);
		return gtk_window_get_modal(gtkWindow);
	}
	
	/**
	 * This function returns the position you need to pass to
	 * gtk_window_move() to keep window in its current position. This
	 * means that the meaning of the returned value varies with window
	 * gravity. See gtk_window_move() for more details.
	 * If you haven't changed the window gravity, its gravity will be
	 * GDK_GRAVITY_NORTH_WEST. This means that gtk_window_get_position()
	 * gets the position of the top-left corner of the window manager
	 * frame for the window. gtk_window_move() sets the position of this
	 * same top-left corner.
	 * gtk_window_get_position() is not 100% reliable because the X Window System
	 * does not specify a way to obtain the geometry of the
	 * decorations placed on a window by the window manager.
	 * Thus GTK+ is using a "best guess" that works with most
	 * window managers.
	 * Moreover, nearly all window managers are historically broken with
	 * respect to their handling of window gravity. So moving a window to
	 * its current position as returned by gtk_window_get_position() tends
	 * to result in moving the window slightly. Window managers are
	 * slowly getting better over time.
	 * If a window has gravity GDK_GRAVITY_STATIC the window manager
	 * frame is not relevant, and thus gtk_window_get_position() will
	 * always produce accurate results. However you can't use static
	 * gravity to do things like place a window in a corner of the screen,
	 * because static gravity ignores the window manager decorations.
	 * If you are saving and restoring your application's window
	 * positions, you should know that it's impossible for applications to
	 * do this without getting it somewhat wrong because applications do
	 * not have sufficient knowledge of window manager state. The Correct
	 * Mechanism is to support the session management protocol (see the
	 * "GnomeClient" object in the GNOME libraries for example) and allow
	 * the window manager to save your window sizes and positions.
	 * window:
	 *  a GtkWindow
	 * root_x:
	 *  return location for X coordinate of gravity-determined reference p\oint
	 * root_y:
	 *  return location for Y coordinate of gravity-determined reference p\oint
	 */
	public void getPosition(int* rootX, int* rootY)
	{
		// void gtk_window_get_position (GtkWindow *window,  gint *root_x,  gint *root_y);
		gtk_window_get_position(gtkWindow, rootX, rootY);
	}
	
	/**
	 * Returns the role of the window. See gtk_window_set_role() for
	 * further explanation.
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the role of the window if set, or NULL. The
	 *  returned is owned by the widget and must not be modified
	 *  or freed.
	 */
	public char[] getRole()
	{
		// const gchar* gtk_window_get_role (GtkWindow *window);
		return Str.toString(gtk_window_get_role(gtkWindow) );
	}
	
	/**
	 * Obtains the current size of window. If window is not onscreen,
	 * it returns the size GTK+ will suggest to the window manager for the initial window
	 * size (but this is not reliably the same as the size the window
	 * manager will actually select). The size obtained by
	 * gtk_window_get_size() is the last size received in a
	 * GdkEventConfigure, that is, GTK+ uses its locally-stored size,
	 * rather than querying the X server for the size. As a result, if you
	 * call gtk_window_resize() then immediately call
	 * gtk_window_get_size(), the size won't have taken effect yet. After
	 * the window manager processes the resize request, GTK+ receives
	 * notification that the size has changed via a configure event, and
	 * the size of the window gets updated.
	 * Note 1: Nearly any use of this function creates a race condition,
	 * because the size of the window may change between the time that you
	 * get the size and the time that you perform some action assuming
	 * that size is the current size. To avoid race conditions, connect to
	 * "configure_event" on the window and adjust your size-dependent
	 * state to match the size delivered in the GdkEventConfigure.
	 * Note 2: The returned size does not include the
	 * size of the window manager decorations (aka the window frame or
	 * border). Those are not drawn by GTK+ and GTK+ has no reliable
	 * method of determining their size.
	 * Note 3: If you are getting a window size in order to position
	 * the window onscreen, there may be a better way. The preferred
	 * way is to simply set the window's semantic type with
	 * gtk_window_set_type_hint(), which allows the window manager to
	 * e.g. center dialogs. Also, if you set the transient parent of
	 * dialogs with gtk_window_set_transient_for() window managers
	 * will often center the dialog over its parent window. It's
	 * much preferred to let the window manager handle these
	 * things rather than doing it yourself, because all apps will
	 * behave consistently and according to user prefs if the window
	 * manager handles it. Also, the window manager can take the size
	 * of the window decorations/border into account, while your
	 * application cannot.
	 * In any case, if you insist on application-specified window
	 * positioning, there's still a better way than
	 * doing it yourself - gtk_window_set_position() will frequently
	 * handle the details for you.
	 * window:
	 *  a GtkWindow
	 * width:
	 *  return location for width, or NULL
	 * height:
	 *  return location for height, or NULL
	 */
	public void getSize(int* width, int* height)
	{
		// void gtk_window_get_size (GtkWindow *window,  gint *width,  gint *height);
		gtk_window_get_size(gtkWindow, width, height);
	}
	
	/**
	 * Retrieves the title of the window. See gtk_window_set_title().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the title of the window, or NULL if none has
	 *  been set explicitely. The returned string is owned by the widget
	 *  and must not be modified or freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_window_get_title (GtkWindow *window);
		return Str.toString(gtk_window_get_title(gtkWindow) );
	}
	
	/**
	 * Fetches the transient parent for this window. See
	 * gtk_window_set_transient_for().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the transient parent for this window, or NULL
	 *  if no transient parent has been set.
	 */
	public Window getTransientFor()
	{
		// GtkWindow* gtk_window_get_transient_for (GtkWindow *window);
		return new Window( gtk_window_get_transient_for(gtkWindow) );
	}
	
	/**
	 * Gets the type hint for this window. See gtk_window_set_type_hint().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  the type hint for window.
	 */
	public GdkWindowTypeHint getTypeHint()
	{
		// GdkWindowTypeHint gtk_window_get_type_hint (GtkWindow *window);
		return gtk_window_get_type_hint(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_skip_taskbar_hint()
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if window shouldn't be in taskbar
	 * Since 2.2
	 */
	public int getSkipTaskbarHint()
	{
		// gboolean gtk_window_get_skip_taskbar_hint  (GtkWindow *window);
		return gtk_window_get_skip_taskbar_hint(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_skip_pager_hint().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if window shouldn't be in pager
	 * Since 2.2
	 */
	public int getSkipPagerHint()
	{
		// gboolean gtk_window_get_skip_pager_hint (GtkWindow *window);
		return gtk_window_get_skip_pager_hint(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_urgency_hint()
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if window is urgent
	 * Since 2.8
	 */
	public int getUrgencyHint()
	{
		// gboolean gtk_window_get_urgency_hint (GtkWindow *window);
		return gtk_window_get_urgency_hint(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_accept_focus().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if window should receive the input focus
	 * Since 2.4
	 */
	public int getAcceptFocus()
	{
		// gboolean gtk_window_get_accept_focus (GtkWindow *window);
		return gtk_window_get_accept_focus(gtkWindow);
	}
	
	/**
	 * Gets the value set by gtk_window_set_focus_on_map().
	 * window:
	 *  a GtkWindow
	 * Returns:
	 *  TRUE if window should receive the input focus when
	 * mapped.
	 * Since 2.6
	 */
	public int getFocusOnMap()
	{
		// gboolean gtk_window_get_focus_on_map (GtkWindow *window);
		return gtk_window_get_focus_on_map(gtkWindow);
	}
	
	/**
	 * Returns the group for window or the default group, if
	 * window is NULL or if window does not have an explicit
	 * window group.
	 * window:
	 *  a GtkWindow, or NULL
	 * Returns:
	 *  the GtkWindowGroup for a window or the default group
	 * Since 2.10
	 */
	public GtkWindowGroup* getGroup()
	{
		// GtkWindowGroup* gtk_window_get_group (GtkWindow *window);
		return gtk_window_get_group(gtkWindow);
	}
	
	/**
	 * Asks the window manager to move
	 * window to the given position. Window managers are free to ignore
	 * this; most window managers ignore requests for initial window
	 * positions (instead using a user-defined placement algorithm) and
	 * honor requests after the window has already been shown.
	 * Note: the position is the position of the gravity-determined
	 * reference point for the window. The gravity determines two things:
	 * first, the location of the reference point in root window
	 * coordinates; and second, which point on the window is positioned at
	 * the reference point.
	 * By default the gravity is GDK_GRAVITY_NORTH_WEST, so the reference
	 * point is simply the x, y supplied to gtk_window_move(). The
	 * top-left corner of the window decorations (aka window frame or
	 * border) will be placed at x, y. Therefore, to position a window
	 * at the top left of the screen, you want to use the default gravity
	 * (which is GDK_GRAVITY_NORTH_WEST) and move the window to 0,0.
	 * To position a window at the bottom right corner of the screen, you
	 * would set GDK_GRAVITY_SOUTH_EAST, which means that the reference
	 * point is at x + the window width and y + the window height, and
	 * the bottom-right corner of the window border will be placed at that
	 * reference point. So, to place a window in the bottom right corner
	 * you would first set gravity to south east, then write:
	 * gtk_window_move (window, gdk_screen_width() - window_width,
	 * gdk_screen_height() - window_height) (note that this
	 * example does not take multi-head scenarios into account).
	 * The Extended Window Manager Hints specification at
	 * http://www.freedesktop.org/Standards/wm-spec has a
	 * nice table of gravities in the "implementation notes" section.
	 * The gtk_window_get_position() documentation may also be relevant.
	 * window:
	 *  a GtkWindow
	 * x:
	 *  X coordinate to move window to
	 * y:
	 *  Y coordinate to move window to
	 */
	public void move(int x, int y)
	{
		// void gtk_window_move (GtkWindow *window,  gint x,  gint y);
		gtk_window_move(gtkWindow, x, y);
	}
	
	/**
	 * Parses a standard X Window System geometry string - see the
	 * manual page for X (type 'man X') for details on this.
	 * gtk_window_parse_geometry() does work on all GTK+ ports
	 * including Win32 but is primarily intended for an X environment.
	 * If either a size or a position can be extracted from the
	 * geometry string, gtk_window_parse_geometry() returns TRUE
	 * and calls gtk_window_set_default_size() and/or gtk_window_move()
	 * to resize/move the window.
	 * If gtk_window_parse_geometry() returns TRUE, it will also
	 * set the GDK_HINT_USER_POS and/or GDK_HINT_USER_SIZE hints
	 * indicating to the window manager that the size/position of
	 * the window was user-specified. This causes most window
	 * managers to honor the geometry.
	 * Note that for gtk_window_parse_geometry() to work as expected, it has
	 * to be called when the window has its "final" size, i.e. after calling
	 * gtk_widget_show_all() on the contents and gtk_window_set_geometry_hints()
	 * on the window.
	 * include <gtk/gtk.h>
	 * static void
	 * fill_with_content (GtkWidget *vbox)
	 * {
		 *  /+* fill with content... +/
	 * }
	 * int
	 * main (int argc, char *argv[])
	 * {
		 *  GtkWidget *window, *vbox;
		 *  GdkGeometry size_hints = {
			 *  100, 50, 0, 0, 100, 50, 10, 10, 0.0, 0.0, GDK_GRAVITY_NORTH_WEST
		 *  };
		 *  gtk_init (argc, argv);
		 *  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
		 *  vbox = gtk_vbox_new (FALSE, 0);
		 *  gtk_container_add (GTK_CONTAINER (window), vbox);
		 *  fill_with_content (vbox);
		 *  gtk_widget_show_all (vbox);
		 *  gtk_window_set_geometry_hints (GTK_WINDOW (window),
		 * 	 			 window,
		 * 				 size_hints,
		 * 				 GDK_HINT_MIN_SIZE |
		 * 				 GDK_HINT_BASE_SIZE |
		 * 				 GDK_HINT_RESIZE_INC);
		 *  if (argc > 1)
		 *  {
			 *  if (!gtk_window_parse_geometry (GTK_WINDOW (window), argv[1]))
			 *  fprintf (stderr, "Failed to parse '%s'\n", argv[1]);
		 *  }
		 *  gtk_widget_show_all (window);
		 *  gtk_main();
		 *  return 0;
	 * }
	 * window:
	 *  a GtkWindow
	 * geometry:
	 *  geometry string
	 * Returns:
	 *  TRUE if string was parsed successfully
	 */
	public int parseGeometry(char[] geometry)
	{
		// gboolean gtk_window_parse_geometry (GtkWindow *window,  const gchar *geometry);
		return gtk_window_parse_geometry(gtkWindow, Str.toStringz(geometry));
	}
	
	/**
	 * Hides window, then reshows it, resetting the
	 * default size and position of the window. Used
	 * by GUI builders only.
	 * window:
	 *  a GtkWindow
	 */
	public void reshowWithInitialSize()
	{
		// void gtk_window_reshow_with_initial_size  (GtkWindow *window);
		gtk_window_reshow_with_initial_size(gtkWindow);
	}
	
	/**
	 * Resizes the window as if the user had done so, obeying geometry
	 * constraints. The default geometry constraint is that windows may
	 * not be smaller than their size request; to override this
	 * constraint, call gtk_widget_set_size_request() to set the window's
	 * request to a smaller value.
	 * If gtk_window_resize() is called before showing a window for the
	 * first time, it overrides any default size set with
	 * gtk_window_set_default_size().
	 * Windows may not be resized smaller than 1 by 1 pixels.
	 * window:
	 *  a GtkWindow
	 * width:
	 *  width in pixels to resize the window to
	 * height:
	 *  height in pixels to resize the window to
	 */
	public void resize(int width, int height)
	{
		// void gtk_window_resize (GtkWindow *window,  gint width,  gint height);
		gtk_window_resize(gtkWindow, width, height);
	}
	
	/**
	 * Sets an icon list to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them to set up a
	 * window-specific icon list. This function allows you to set up the
	 * icon for all windows in your app at once.
	 * See gtk_window_set_icon_list() for more details.
	 * list:
	 *  a list of GdkPixbuf
	 */
	public static void setDefaultIconList(ListG list)
	{
		// void gtk_window_set_default_icon_list  (GList *list);
		gtk_window_set_default_icon_list((list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon() called on them from a pixbuf.
	 * icon:
	 *  the icon
	 * Since 2.4
	 */
	public static void setDefaultIcon(Pixbuf icon)
	{
		// void gtk_window_set_default_icon (GdkPixbuf *icon);
		gtk_window_set_default_icon((icon is null) ? null : icon.getPixbufStruct());
	}
	
	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them from a file
	 * on disk. Warns on failure if err is NULL.
	 * filename:
	 *  location of icon file
	 * err:
	 *  location to store error, or NULL.
	 * Returns:
	 *  TRUE if setting the icon succeeded.
	 * Since 2.2
	 */
	public static int setDefaultIconFromFile(char[] filename, GError** err)
	{
		// gboolean gtk_window_set_default_icon_from_file  (const gchar *filename,  GError **err);
		return gtk_window_set_default_icon_from_file(Str.toStringz(filename), err);
	}
	
	/**
	 * Sets an icon to be used as fallback for windows that haven't
	 * had gtk_window_set_icon_list() called on them from a named
	 * themed icon, see gtk_window_set_icon_name().
	 * name:
	 *  the name of the themed icon
	 * Since 2.6
	 */
	public static void setDefaultIconName(char[] name)
	{
		// void gtk_window_set_default_icon_name  (const gchar *name);
		gtk_window_set_default_icon_name(Str.toStringz(name));
	}
	
	/**
	 * Sets up the icon representing a GtkWindow. This icon is used when
	 * the window is minimized (also known as iconified). Some window
	 * managers or desktop environments may also place it in the window
	 * frame, or display it in other contexts.
	 * The icon should be provided in whatever size it was naturally
	 * drawn; that is, don't scale the image before passing it to
	 * GTK+. Scaling is postponed until the last minute, when the desired
	 * final size is known, to allow best quality.
	 * If you have your icon hand-drawn in multiple sizes, use
	 * gtk_window_set_icon_list(). Then the best size will be used.
	 * This function is equivalent to calling gtk_window_set_icon_list()
	 * with a 1-element list.
	 * See also gtk_window_set_default_icon_list() to set the icon
	 * for all windows in your application in one go.
	 * window:
	 *  a GtkWindow
	 * icon:
	 *  icon image, or NULL
	 */
	public void setIcon(Pixbuf icon)
	{
		// void gtk_window_set_icon (GtkWindow *window,  GdkPixbuf *icon);
		gtk_window_set_icon(gtkWindow, (icon is null) ? null : icon.getPixbufStruct());
	}
	
	/**
	 * Sets up the icon representing a GtkWindow. The icon is used when
	 * the window is minimized (also known as iconified). Some window
	 * managers or desktop environments may also place it in the window
	 * frame, or display it in other contexts.
	 * gtk_window_set_icon_list() allows you to pass in the same icon in
	 * several hand-drawn sizes. The list should contain the natural sizes
	 * your icon is available in; that is, don't scale the image before
	 * passing it to GTK+. Scaling is postponed until the last minute,
	 * when the desired final size is known, to allow best quality.
	 * By passing several sizes, you may improve the final image quality
	 * of the icon, by reducing or eliminating automatic image scaling.
	 * Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
	 * larger images (64x64, 128x128) if you have them.
	 * See also gtk_window_set_default_icon_list() to set the icon
	 * for all windows in your application in one go.
	 * Note that transient windows (those who have been set transient for another
	 * window using gtk_window_set_transient_for()) will inherit their
	 * icon from their transient parent. So there's no need to explicitly
	 * set the icon on transient windows.
	 * window:
	 *  a GtkWindow
	 * list:
	 *  list of GdkPixbuf
	 */
	public void setIconList(ListG list)
	{
		// void gtk_window_set_icon_list (GtkWindow *window,  GList *list);
		gtk_window_set_icon_list(gtkWindow, (list is null) ? null : list.getListGStruct());
	}
	
	/**
	 * Sets the icon for window.
	 * Warns on failure if err is NULL.
	 * This function is equivalent to calling gtk_window_set_icon()
	 * with a pixbuf created by loading the image from filename.
	 * window:
	 *  a GtkWindow
	 * filename:
	 *  location of icon file
	 * err:
	 *  location to store error, or NULL.
	 * Returns:
	 *  TRUE if setting the icon succeeded.
	 * Since 2.2
	 */
	public int setIconFromFile(char[] filename, GError** err)
	{
		// gboolean gtk_window_set_icon_from_file (GtkWindow *window,  const gchar *filename,  GError **err);
		return gtk_window_set_icon_from_file(gtkWindow, Str.toStringz(filename), err);
	}
	
	/**
	 * Sets the icon for the window from a named themed icon. See
	 * the docs for GtkIconTheme for more details.
	 * Note that this has nothing to do with the WM_ICON_NAME
	 * property which is mentioned in the ICCCM.
	 * window:
	 *  a GtkWindow
	 * name:
	 *  the name of the themed icon
	 * Since 2.6
	 */
	public void setIconName(char[] name)
	{
		// void gtk_window_set_icon_name (GtkWindow *window,  const gchar *name);
		gtk_window_set_icon_name(gtkWindow, Str.toStringz(name));
	}
	
	/**
	 * By default, after showing the first GtkWindow, GTK+ calls
	 * gdk_notify_startup_complete(). Call this function to disable
	 * the automatic startup notification. You might do this if your
	 * first window is a splash screen, and you want to delay notification
	 * until after your real main window has been shown, for example.
	 * In that example, you would disable startup notification
	 * temporarily, show your splash screen, then re-enable it so that
	 * showing the main window would automatically result in notification.
	 * setting:
	 *  TRUE to automatically do startup notification
	 * Since 2.2
	 */
	public static void setAutoStartupNotification(int setting)
	{
		// void gtk_window_set_auto_startup_notification  (gboolean setting);
		gtk_window_set_auto_startup_notification(setting);
	}
	
	/**
	 * window:
	 */
	public void decoratedWindowInit()
	{
		// void gtk_decorated_window_init (GtkWindow *window);
		gtk_decorated_window_init(gtkWindow);
	}
	
	/**
	 * window:
	 */
	public void decoratedWindowCalculateFrameSize()
	{
		// void gtk_decorated_window_calculate_frame_size  (GtkWindow *window);
		gtk_decorated_window_calculate_frame_size(gtkWindow);
	}
	
	/**
	 * window:
	 * title:
	 */
	public void decoratedWindowSetTitle(char[] title)
	{
		// void gtk_decorated_window_set_title (GtkWindow *window,  const gchar *title);
		gtk_decorated_window_set_title(gtkWindow, Str.toStringz(title));
	}
	
	/**
	 * window:
	 * x:
	 * y:
	 * width:
	 * height:
	 * Property Details
	 * The "accept-focus" property
	 *  "accept-focus" gboolean : Read / Write
	 * TRUE if the window should receive the input focus.
	 * Default value: TRUE
	 */
	public void decoratedWindowMoveResizeWindow(int x, int y, int width, int height)
	{
		// void gtk_decorated_window_move_resize_window  (GtkWindow *window,  gint x,  gint y,  gint width,  gint height);
		gtk_decorated_window_move_resize_window(gtkWindow, x, y, width, height);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
